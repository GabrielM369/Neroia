import * as functions from "firebase-functions/v1";
import * as admin from "firebase-admin";
import axios, {AxiosError} from "axios";
import {defineString} from "firebase-functions/params";
import {getFirestore} from "firebase-admin/firestore";

admin.initializeApp({
  projectId: "neroia-gmbh",
});
const db = getFirestore("neroia-db");
db.settings({ignoreUndefinedProperties: true});


const ticketmasterKey = defineString("TICKETMASTER_API_KEY");
const ticketmasterUrl = defineString("TICKETMASTER_API_URL");

interface TicketmasterEvent {
    id: string;
    name: string;
    url: string;
    status?: { code?: string };
    dates?: {
        dateTime?: string; // From dates.start.dateTime
        start?: string;
        timezone?: string;
    };
    images: Array<{
        url: string;
        ratio?: string;
        width?: number;
        height?: number;
    }>;
    _embedded?: {
        venues?: Array<{
            id: string;
            name: string;
            city?: { name?: string };
            state?: { name?: string };
            country?: { name?: string };
            address?: { line1?: string };
            location?: {
                latitude: string;
                longitude: string;
            };
        }>;
    };
    priceRanges?: Array<{
        type?: string;
        currency?: string;
        min?: number;
        max?: number;
    }>;
    classifications?: Array<{
        segment?: { name?: string };
        genre?: { name?: string };
        subGenre?: { name?: string };
    }>;
}

interface EventData {
    id: string;
    name: string;
    description?: string;
    imageUrls: Array<string>;
    status?: string;
    start: admin.firestore.Timestamp;
    end?: admin.firestore.Timestamp;
    venues: Array<{
        id: string;
        name: string;
        city?: string;
        state?: string;
        country?: string;
        address?: string;
        location?: admin.firestore.GeoPoint;
    }>;
    prices: Array<{
        type?: string;
        currency?: string;
        min?: number;
        max?: number;
    }>;
    classifications: Array<{
        segment?: string;
        genre?: string;
        subGenre?: string;
    }>;
    lastUpdated: admin.firestore.FieldValue;
}

const fetchFromTicketmaster = async (
  keyword: string | undefined,
  geoPoint: string,
  nrResults: number,
  radius: number
): Promise<void> => {
  const logPrefix = "fetchTicketmasterEvents:";
  functions.logger.info(`${logPrefix} Function started at ${new Date().toISOString()}`);

  try {
    functions.logger.info(`${logPrefix} Fetching data from Ticketmaster API`);

    const response = await axios.get(ticketmasterUrl.value(), {
      params: {
        apikey: ticketmasterKey.value(),
        size: nrResults,
        keyword: keyword,
        geoPoint: geoPoint,
        radius: radius,
        sort: "date,asc",
        startDateTime: new Date().toISOString().slice(0, 19) + "Z",
      },
    });

    const events: TicketmasterEvent[] = response.data?._embedded?.events || [];
    functions.logger.info(`${logPrefix} Retrieved ${events.length} events from Ticketmaster`);

    if (events.length === 0) {
      functions.logger.info(`${logPrefix} No events found to process`);
      return;
    }

    const batch = db.batch();
    const eventsCollection = db.collection("events");

    events.forEach((event) => {
      const eventData: EventData = {
        id: event.id,
        name: event.name,
        status: event.status?.code,
        start: admin.firestore.Timestamp.fromDate(new Date(event.dates?.dateTime || new Date().toISOString())),
        end: undefined,
        imageUrls: event.images?.map((image) => image.url) || [],
        venues: event._embedded?.venues?.map((venue) => ({
          id: venue.id,
          name: venue.name,
          city: venue.city?.name,
          state: venue.state?.name,
          country: venue.country?.name,
          address: venue.address?.line1,
          location: venue.location ? new admin.firestore.GeoPoint(
            parseFloat(venue.location.latitude),
            parseFloat(venue.location.longitude)
          ) : undefined,
        })) || [],
        prices: event.priceRanges?.map((price) => ({
          type: price.type,
          currency: price.currency,
          min: price.min,
          max: price.max,
        })) || [],
        classifications: event.classifications?.map((classification) => ({
          segment: classification.segment?.name,
          genre: classification.genre?.name,
          subGenre: classification.subGenre?.name,
        })) || [],
        lastUpdated: admin.firestore.FieldValue.serverTimestamp(),
      };

      functions.logger.info(`${logPrefix} Processing event: ${event.name} (${event.id})`);
      functions.logger.info(`${logPrefix} ${eventData}`);

      functions.logger.info(`Processing document: events/${event.id}`);
      const docRef = eventsCollection.doc(event.id);
      batch.set(docRef, eventData, {merge: true});
    });

    await batch.commit();
    functions.logger.info(`${logPrefix} Successfully stored ${events.length} events in Firestore`);
  } catch (error) {
    functions.logger.error(`${logPrefix} Error processing events:`, error);

    const err = error as AxiosError;
    functions.logger.error(`${logPrefix} Error processing events:`, err);

    if (axios.isAxiosError(err)) {
      functions.logger.error(`${logPrefix} Error data:`, err.response?.data);
      functions.logger.error(`${logPrefix} Error status:`, err.response?.status);
      functions.logger.error(`${logPrefix} Error headers:`, err.response?.headers);
    } else {
      functions.logger.error(`${logPrefix} Error message:`, err);
    }

    throw err;
  }
};

export const fetchTicketmasterEvents = functions.pubsub
  .schedule("*/10 * * * *")
  .timeZone("Europe/Berlin")
  .onRun(async () => {
    if (Math.random() < 0.3) return null;

    const delay = Math.floor(Math.random() * 300_001);
    await new Promise((resolve) => setTimeout(resolve, delay));

    // const keywords = ["music", "concert", "festival", "sports", "theater"];
    // const randomIndex = Math.floor(Math.random() * keywords.length);

    await fetchFromTicketmaster(
      undefined,
      "48.1351,11.5820",
      100,
      1000
    );

    return null;
  });

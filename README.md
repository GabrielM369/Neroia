# Neroia Flutter App

Neroia is a smart event meetup platform designed to be offered as a company benefit, encouraging employees to connect, network, and participate in events. The app serves as a social catalyst within organizations, helping employees build stronger relationships through shared experiences and activities.

## Overview

Neroia transforms company culture by making it easy for employees to discover, join, and organize events with colleagues. The platform is designed to break down departmental silos, encourage cross-team collaboration, and enhance workplace relationships through meaningful in-person interactions.

# Setup

To set up the Neroia app on your local machine, follow these steps:

```bash
dart run flutter_launcher_icons

dart run flutter_native_splash:create
```

### Key Features

- **Event Discovery**: Browse different categories of events happening within your organization
- **Event Creation**: Easily create and host your own events for colleagues
- **AI Integration**: Have AI help you find the perfect Event for you
- **Notifications**: Receive alerts about upcoming events and friend activities

## Project Setup

```
├──┬─ lib/
│  ├──┬─ core/                      # Core functionality, utilities, and 
│  │  ├──── constants/              # Constants
│  │  ├──┬─ logging
│  │  │  ├──── logger/              # Logger
│  │  │  └──── sentry/              # Sentry
│  │  │
│  │  ├──┬─ datasources/            # Data sources
│  │  │  ├──── remote/              # Remote data sources
│  │  │  └──── local/               # Local data sources
│  │  │
│  │  ├──── theme/                  # Theme
│  │  ├──── localizations/          # Translations
│  │  ├──── widgets/                # Shared Widgets
│  │  └──── extensions/             # Shared Extensions
│  │     
│  ├──┬─ features/                  # Feature modules
│  │  ├──┬─ tracking/               # Tracking
│  │  │  ├──── consent/             # Tracking consent
│  │  │  └──── analytics/           # Analytics
│  │  └──┬─ feature_name/           # Feature name
│  │     ├──┬─ data/                # Data layer
│  │     │  ├──── models/           # Data models
│  │     │  └──── repositories/     # Data repositories
│  │     │
│  │     ├──┬─ domain/              # Domain layer
│  │     │  └──── entities/         # Domain entities
│  │     │
│  │     │                          # the individual components of the feature
│  │     ├──┬─ presentation/        # Presentation layer
│  │     │  ├──┬─ component_a/      # if the feature has multiple parts
│  │     │  │  ├──── component_a.dart     
│  │     │  │  └──── component_a_notifier.dart
│  │     │  │
│  │     │  ├──── component_b.dart  # if the feature has only one component
│  │     │  │
│  │     │  └──── widgets/          # Shared Widgets
│  │     │
│  │     └──── feature_name.dart    # Feature entry point
│  │
│  └──── presentation/              # Presentation of the App
│  │  │  ├──── pages/               # Pages
│  │  │  └──── sheets/              # Sheets
│
├──┬─ integration_test/             # Integration Test files
│  └──┬── patrol/                   # Patrol test files
│     └── flows/                    # Flows test files
│
├──┬─ test/                         
│  └──── # mirror the lib structure for the test files
│
└── main.dart                       # Application entry point
```
### Prerequisites

Before setting up the Neroia app, ensure you have the following installed:

- Flutter SDK (latest stable version)
- Dart SDK (latest stable version)
- Android Studio or VS Code
- Android SDK (for Android development)
- Xcode (for iOS development, macOS only)
- Git

You can verify your Flutter installation by running:

### Deploy Firebase Functions

```bash
firebase deploy --only functions --project neroia-gmbh
firebase functions:config:set \
  ticketmasterKey="TICKETMASTER_API_KEY" \
  ticketmasterUrl="TICKETMASTER_API_URL" \
  --project neroia-gmbh
```
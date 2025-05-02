#!/bin/bash

# Change to the project root directory (one level up from this script's location)
cd "$(dirname "$0")/.."

# Set the base l10n directory
BASE_DIR="./lib/core/localizations/l10n"
GENERATED_DIR="./lib/core/localizations/generated"


# Check if the base directory exists
if [ ! -d "$BASE_DIR" ]; then
  echo "Error: Directory $BASE_DIR does not exist."
  exit 1
fi

# Iterate over each subfolder in the l10n directory
for SUBFOLDER in "$BASE_DIR"/*; do
  if [ -d "$SUBFOLDER" ]; then
    # Extract the subfolder name
    SUBFOLDER_NAME=$(basename "$SUBFOLDER")

    # Capitalize the first letter of the subfolder name (workaround for older Bash versions)
    CAPITALIZED_NAME=$(echo "$SUBFOLDER_NAME" | awk -F'_' '{for (i=1; i<=NF; i++) $i=toupper(substr($i,1,1))tolower(substr($i,2)); printf "%s", $0; if (i<NF) printf ""}')
    OUTPUT_NAME=$(echo "$CAPITALIZED_NAME" | tr -d ' ')

    echo "Processing subfolder: $SUBFOLDER_NAME"
    echo "Capitalized name: $CAPITALIZED_NAME"
    echo "ARB directory: $BASE_DIR/$SUBFOLDER_NAME"

    # Check if the ARB file exists
    if [ ! -f "$BASE_DIR/$SUBFOLDER_NAME/${SUBFOLDER_NAME}_de.arb" ]; then
      echo "Error: Missing ARB file: $BASE_DIR/$SUBFOLDER_NAME/${SUBFOLDER_NAME}_de.arb"
      continue
    fi

    # Construct the command
    COMMAND="flutter gen-l10n \
      --arb-dir $BASE_DIR/$SUBFOLDER_NAME \
      --template-arb-file ${SUBFOLDER_NAME}_de.arb \
      --output-dir $GENERATED_DIR \
      --output-localization-file ${SUBFOLDER_NAME}_localizations.dart \
      --output-class ${OUTPUT_NAME}Localizations \
      --untranslated-messages-file ${BASE_DIR}/${SUBFOLDER_NAME}_untranslated.txt \
      --no-synthetic-package"



    # Execute the command
    echo "Executing command for $SUBFOLDER_NAME..."
    eval "$COMMAND"

    # Check if the localization file was created
#    if [ ! -f "$BASE_DIR/$SUBFOLDER_NAME/${SUBFOLDER_NAME}_localizations.dart" ]; then
#      echo "Error: Localization file was not created for $SUBFOLDER_NAME"
#      exit 1
#    fi
  fi
done

echo "Localization generation completed successfully."

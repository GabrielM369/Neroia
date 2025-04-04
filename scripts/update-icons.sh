#!/bin/bash

# this script is used to update the icons for the android and ios apps
# because the flutter_launcher_icons plugin is not working as expected
# and only produces ugly icons with a lot of artifacts while scaling down

# Check if ImageMagick is installed
if ! command -v magick &> /dev/null; then
    echo "ImageMagick is not installed. Installing via Homebrew..."
    brew install imagemagick
fi

# Check if optipng is installed
if ! command -v optipng &> /dev/null; then
    echo "Warning: optipng is not installed. You can install it via Homebrew: brew install optipng"
fi

# Function to optimize PNG images using optipng
optimize_png() {
    if command -v optipng &> /dev/null; then
        optipng -o7 "$1" > /dev/null 2>&1
        echo "Optimized $1"
    fi
}

# Source icon path
ICON="assets/icon.png"

# Check if source icon exists
if [ ! -f "$ICON" ]; then
    echo "Error: $ICON not found!"
    exit 1
fi

echo "Generating icons from $ICON..."

# Android icons
ANDROID_MIPMAP="android/app/src/main/res"
mkdir -p "${ANDROID_MIPMAP}/mipmap-hdpi"
mkdir -p "${ANDROID_MIPMAP}/mipmap-mdpi"
mkdir -p "${ANDROID_MIPMAP}/mipmap-xhdpi"
mkdir -p "${ANDROID_MIPMAP}/mipmap-xxhdpi"
mkdir -p "${ANDROID_MIPMAP}/mipmap-xxxhdpi"
# Android icon sizes
declare -a android_sizes=(
    # Format: "type:dpi:size"
    "launcher_icon:hdpi:72"
    "launcher_icon:mdpi:48"
    "launcher_icon:xhdpi:96"
    "launcher_icon:xxhdpi:144"
    "launcher_icon:xxxhdpi:192"
    "launcher_icon_round:hdpi:65"
    "launcher_icon_round:mdpi:43"
    "launcher_icon_round:xhdpi:86"
    "launcher_icon_round:xxhdpi:130"
    "launcher_icon_round:xxxhdpi:173"
)

# Generate Android icons
for size in "${android_sizes[@]}"; do
    IFS=':' read -r icon_type dpi pixels <<< "$size"
    echo "Generating ${icon_type} for ${dpi} (${pixels} pixels)"
    magick "$ICON" -resize "${pixels}x${pixels}" \
        -filter Lanczos \
        -quality 100 \
        -define png:compression-level=9 \
        -strip \
        -define png:exclude-chunk=all \
        "${ANDROID_MIPMAP}/mipmap-${dpi}/${icon_type}.png"
    optimize_png "${ANDROID_MIPMAP}/mipmap-${dpi}/${icon_type}.png"
done

# iOS icons
IOS_PATH="ios/Runner/Assets.xcassets/AppIcon.appiconset"
mkdir -p "$IOS_PATH"

# iOS icon sizes
declare -a ios_sizes=(
    "20x20@1x:20"
    "20x20@2x:40"
    "20x20@3x:60"
    "29x29@1x:29"
    "29x29@2x:58"
    "29x29@3x:87"
    "40x40@1x:40"
    "40x40@2x:80"
    "40x40@3x:120"
    "50x50@1x:50"
    "50x50@2x:100"
    "57x57@1x:57"
    "57x57@2x:114"
    "60x60@2x:120"
    "60x60@3x:180"
    "72x72@1x:72"
    "72x72@2x:144"
    "76x76@1x:76"
    "76x76@2x:152"
    "83.5x83.5@2x:167"
    "1024x1024@1x:1024"
)

for size in "${ios_sizes[@]}"; do
    name="${size%%:*}"
    pixels="${size##*:}"
    echo "Generating Icon-App-$name.png ($pixels pixels)"
    magick "$ICON" -resize "${pixels}x${pixels}" -filter Lanczos -quality 100 -define png:compression-level=9 -strip -define png:exclude-chunk=all "$IOS_PATH/Icon-App-$name.png"
    optimize_png "$IOS_PATH/Icon-App-$name.png"
done

echo "Icon generation complete!"

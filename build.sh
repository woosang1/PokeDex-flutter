#!/bin/bash

# Pokemon Pokedex Flutter App Build Script
# This script helps build and run the Pokemon Pokedex app

set -e

echo "🎮 Pokemon Pokedex Flutter App Build Script"
echo "=========================================="

# Check if Flutter is installed
if ! command -v flutter &> /dev/null; then
    echo "❌ Flutter is not installed. Please install Flutter first."
    echo "   Visit: https://flutter.dev/docs/get-started/install"
    exit 1
fi

echo "✅ Flutter found: $(flutter --version | head -n 1)"

# Check Flutter doctor
echo ""
echo "🔍 Checking Flutter environment..."
flutter doctor

# Get dependencies
echo ""
echo "📦 Getting Flutter dependencies..."
flutter pub get

# Generate code (if needed)
echo ""
echo "🔧 Generating code..."
flutter packages pub run build_runner build --delete-conflicting-outputs

# Analyze code
echo ""
echo "🔍 Analyzing code..."
flutter analyze

# Run tests
echo ""
echo "🧪 Running tests..."
flutter test

# Build for different platforms
echo ""
echo "🏗️ Building app..."

# Build APK for Android
if flutter devices | grep -q "android"; then
    echo "📱 Building Android APK..."
    flutter build apk --release
    echo "✅ Android APK built successfully!"
else
    echo "⚠️  No Android device/emulator found. Skipping Android build."
fi

# Build for iOS (if on macOS)
if [[ "$OSTYPE" == "darwin"* ]]; then
    if flutter devices | grep -q "ios"; then
        echo "🍎 Building iOS app..."
        flutter build ios --release --no-codesign
        echo "✅ iOS app built successfully!"
    else
        echo "⚠️  No iOS device/simulator found. Skipping iOS build."
    fi
fi

# Build for Web
echo "🌐 Building Web app..."
flutter build web --release
echo "✅ Web app built successfully!"

echo ""
echo "🎉 Build completed successfully!"
echo ""
echo "📱 To run the app:"
echo "   flutter run"
echo ""
echo "📦 Built files location:"
echo "   Android APK: build/app/outputs/flutter-apk/"
echo "   iOS: build/ios/iphoneos/Runner.app"
echo "   Web: build/web/"
echo ""
echo "🚀 Happy coding with Pokemon Pokedex!"

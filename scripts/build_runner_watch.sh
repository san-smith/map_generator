#!/usr/bin/env bash

echo "build_runner watch "

flutter pub get
flutter pub run build_runner watch --delete-conflicting-outputs

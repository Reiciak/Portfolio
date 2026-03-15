# Portfolio Flutter Project - Makefile
# Usage: make <target>

.PHONY: run-chrome run-linux run-windows build-web build-linux build-windows create get clean help

# ─── Run ──────────────────────────────────────────────

## Run the app on Chrome
run-chrome:
	flutter run -d chrome

## Run the app on Linux
run-linux:
	flutter run -d linux

## Run the app on Windows
run-windows:
	flutter run -d windows

# ─── Build ────────────────────────────────────────────

## Build for web
build-web:
	flutter build web

## Build for Linux
build-linux:
	flutter build linux

## Build for Windows
build-windows:
	flutter build windows

# ─── Setup ────────────────────────────────────────────

## Create a new Flutter project (flutter create .)
create:
	flutter create .

## Get dependencies (flutter pub get)
get:
	flutter pub get

# ─── Utility ──────────────────────────────────────────

## Clean build artifacts
clean:
	flutter clean

## Show available targets
help:
	@echo "Available targets:"
	@echo "  run-chrome    - Run the app on Chrome"
	@echo "  run-linux     - Run the app on Linux"
	@echo "  run-windows   - Run the app on Windows"
	@echo "  build-web     - Build for web"
	@echo "  build-linux   - Build for Linux"
	@echo "  build-windows - Build for Windows"
	@echo "  create        - Create Flutter project (flutter create .)"
	@echo "  get           - Get dependencies (flutter pub get)"
	@echo "  clean         - Clean build artifacts"
	@echo "  help          - Show this help message"

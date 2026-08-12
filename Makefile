PROJECT := InputAutoSwitcher.xcodeproj
SCHEME := InputAutoSwitcher
DESTINATION := platform=macOS,arch=$(shell uname -m)
DERIVED_DATA := .build/DerivedData

.PHONY: setup format-check build test analyze verify

setup:
	xcodegen generate

format-check:
	swiftformat InputAutoSwitcher InputAutoSwitcherTests --lint

build: setup
	xcodebuild \
		-project $(PROJECT) \
		-scheme $(SCHEME) \
		-destination '$(DESTINATION)' \
		-derivedDataPath $(DERIVED_DATA) \
		CODE_SIGNING_ALLOWED=NO \
		build

test: setup
	xcodebuild \
		-project $(PROJECT) \
		-scheme $(SCHEME) \
		-destination '$(DESTINATION)' \
		-derivedDataPath $(DERIVED_DATA) \
		CODE_SIGNING_ALLOWED=NO \
		test

analyze: setup
	xcodebuild \
		-project $(PROJECT) \
		-scheme $(SCHEME) \
		-destination '$(DESTINATION)' \
		-derivedDataPath $(DERIVED_DATA) \
		CODE_SIGNING_ALLOWED=NO \
		analyze

verify: format-check test analyze

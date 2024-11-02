FVM := $(shell which fvm)
FLUTTER := $(FVM) flutter
DART := $(FVM) dart

.PHONY: pub-get
pub-get:
	$(FLUTTER) pub get


.PHONY: analyze
analyze:
	$(FLUTTER) analyze

.PHONY: format
format:
	$(FLUTTER) format lib/

.PHONY: build-runner
build-runner:
	$(DART) run build_runner build --delete-conflicting-outputs

.PHONY: build-runner-watch
build-runner-watch:
	$(DART) run build_runner clean
	$(DART) run build_runner watch --delete-conflicting-outputs
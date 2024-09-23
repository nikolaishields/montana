# Makefile for Montana Website Project

# Variables
BROWSER := chromium
ZIPNAME := nshie15_UCM1-TASK2.zip
MAIN_PAGE := index.html

all: open zip

open:
	@echo "Opening website in Chromium..."
	@$(BROWSER) $(MAIN_PAGE) || (echo "Error: Chromium not found. Please install Chromium or modify the BROWSER variable."; exit 1)

zip:
	@echo "Zipping website contents..."
	@zip -r $(ZIPNAME) . -x ".*" "*/.*" "$(ZIPNAME)" "Makefile"
	@echo "Website zipped as $(ZIPNAME)"

clean:
	@echo "Cleaning up..."
	@rm -f $(ZIPNAME)
	@git clean -fdx
	@echo "Cleanup complete"

help:
	@echo "Available targets:"
	@echo "  make open  - Open the website in Chromium"
	@echo "  make zip   - Create a zip file of the website"
	@echo "  make clean - Remove the zip file and run git clean"
	@echo "  make all   - Open the website and create a zip file (default)"
	@echo "  make help  - Show this help message"

.PHONY: all open zip clean help

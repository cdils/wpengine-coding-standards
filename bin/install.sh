#!/bin/bash
echo -e "Hello Word\n"
VENDOR_BIN := ./vendor/bin

@ $(VENDOR_BIN)/phpcs --config-set default_standard WP-Engine
@ $(VENDOR_BIN)/phpcs --config-set show_progress 1 > /dev/null 2>&1
@ $(VENDOR_BIN)/phpcs --config-set colors 1 > /dev/null 2>&1
@ $(VENDOR_BIN)/phpcs -i; echo "\n"
@echo "USAGE: wpecs [--strict] [phpcs-options] <path>\n"
@echo "For assistance getting started try 'wpecs -h'\n"
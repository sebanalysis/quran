#!/bin/bash
# Download the Quran translations from tanzil.net

wget --recursive --no-parent --no-clobber --html-extension --convert-links --domains tanzil.net --no-directories --accept 'en.*' --reject '1.html' --directory-prefix=quran https://tanzil.net/trans/

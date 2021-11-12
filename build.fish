#!/usr/bin/env fish

# build book
fish explain-things-simply.fish > book.md

# convert to html
pandoc --self-contained -s book.md -c ~/Software/rabid-reader/themes/tufte.css --metadata title="Technology Simply Explained" -o book.pdf

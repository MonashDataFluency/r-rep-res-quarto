#!/bin/sh

mv docs _site
make site
mv _site docs

quarto render slideshow/slideshow.qmd
mv slideshow/slideshow.html docs
mv slideshow/slideshow_files docs

rm -rf docs/slideshow
rm -rf docs/build.sh


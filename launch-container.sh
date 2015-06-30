#!/bin/sh

docker run --rm -v $(pwd):/srv/jekyll -it -p 4000:4000 jekyll/jekyll bash
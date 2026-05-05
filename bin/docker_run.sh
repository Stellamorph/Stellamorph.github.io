FILE=Gemfile.lock
if [ -f "$FILE" ]; then
    rm $FILE
fi
docker build -t "stellamorph:latest" . && \
docker run --rm -v "$PWD:/srv/jekyll/" -p "8080:8080" \
    -it stellamorph:latest bundler exec jekyll serve --config _config_local.yml --trace --future --watch --port=8080 --host=0.0.0.0

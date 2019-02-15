FILE="/usr/local/bin/jumblemacs"

if [ ! -f "$FILE" ]; then
    echo "no installation found~"
    exit 1
fi
rm "$FILE"


#!/bin/bash

RANDOM_NUMBER=$((RANDOM % 1000))
RANDOM_TEXT=$(openssl rand -base64 12 | tr -dc 'a-zA-Z0-9')
RANDOM_QUOTE=$(shuf -n 1 quotes.txt)

echo "# Daily Random Quote" > README.md
echo "" >> README.md
echo "**Today's Quote:**" >> README.md
echo "> $RANDOM_QUOTE" >> README.md
echo "" >> README.md
echo "---" >> README.md
echo "" >> README.md
echo "**Random Number:** $RANDOM_NUMBER" >> README.md
echo "**Random Text:** $RANDOM_TEXT" >> README.md

git add README.md

git commit -m "Update README with random quote: $RANDOM_QUOTE"

git push origin main
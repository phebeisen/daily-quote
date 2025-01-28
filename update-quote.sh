#!/bin/bash

# Generate a random number or text
RANDOM_NUMBER=$((RANDOM % 1000))
RANDOM_TEXT=$(openssl rand -base64 12 | tr -dc 'a-zA-Z0-9')
RANDOM_QUOTE=$(shuf -n 1 quotes.txt)

# Update the README.md file with the random quote
echo "# Daily Random Quote" > README.md
echo "" >> README.md
echo "**Today's Quote:**" >> README.md
echo "> $RANDOM_QUOTE" >> README.md
echo "" >> README.md
echo "---" >> README.md
echo "" >> README.md
echo "**Random Number:** $RANDOM_NUMBER" >> README.md
echo "**Random Text:** $RANDOM_TEXT" >> README.md

# Add the files to the staging area
git add README.md random.txt

# Commit the change
git commit -m "Update README with random quote: $RANDOM_QUOTE"

# Push the change to GitHub
git push origin main
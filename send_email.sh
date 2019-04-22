#!/bin/sh

# Load config
source config.cfg

SUBJECT="Docker Alert!"
TO=email
MESSAGE="/tmp/message.txt"

echo "Container stop running!" >> $MESSAGE
echo "Time: `date`" >> $MESSAGE

/usr/bin/mail -s "$SUBJECT" "$TO" < $MESSAGE

rm $MESSAGE

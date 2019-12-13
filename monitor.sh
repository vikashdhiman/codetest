#!/bin/bash

# This is monitoring script to monitor the URLs.

Host_URL="test.example.com"

check_http -h $Host_URL -c 10 -w 5 -s 10 -t 60 -S "Test domain"

# Nagios plugin need to install and then it will check the provided URL for its availbility. If the webpage is not accessible/
# it will trigger a alert that website is down.

exit.

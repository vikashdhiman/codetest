#!/bin/bash

# This is test script to print few things:

echo "The hostname of machine is: $(hostname)";

date="date -d 'yyyy:mm:ddd-hh:mm'"

echo "Today is: $date";

log="cat /var/log/httpd/error.log"

echo "Error logs of apche are: /n $log"

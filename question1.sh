#!/bin/sh -e
$(pwd)/tcp lo 80 &
sleep 1
$(pwd)/send
sleep 5

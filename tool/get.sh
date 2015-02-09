#!/bin/bash

wget http://www.cs.utoronto.ca/~radford/csc120/slink
for i in {1..36}; do
	wget http://www.cs.utoronto.ca/~radford/csc120/blink$i
	sleep 1s
done
wget http://www.cs.utoronto.ca/~radford/csc120/options.r

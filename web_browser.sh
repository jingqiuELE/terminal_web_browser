#!/bin/bash
curl $1 | ./unhtml.pl | ./fmt.awk

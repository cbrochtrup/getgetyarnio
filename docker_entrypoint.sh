#!/usr/bin/env bash

output_file="$(bash words_to_video.sh $@)"
cat $output_file

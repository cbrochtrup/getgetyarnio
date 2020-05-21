#!/usr/bin/env bash
# Input is assumed to be a list of mp4 files `a.mp4 b.mp4 ...`

vid_dims=$(ffprobe -v error -show_entries stream=width,height -of csv=p=0:s=x $1 | tr 'x' ':')
# TODO: find a way to avoid these temp files
for vid in $@; do
  ffmpeg -y -i $vid -filter:v scale=$vid_dims -c:a copy ${vid%.mp4}_tmp.mp4
done
outfile="$(echo $@ | sed 's/.mp4 /_/g')"
ffmpeg -y -f concat -safe 0 -i <(for w in $@; do echo "file $PWD/${w%.mp4}_tmp.mp4"; done) -c copy "$outfile"
echo $outfile
#!/usr/bin/env bash

for word in $@; do
  ./download_clip.sh $word
done

video_args=$(for w in $@; do echo $w.mp4; done)
output_file=$(./make_video.sh $video_args)

for w in $video_args; do
  rm $w ${w%.*}_tmp.mp4;
done

echo "$output_file"
#!/usr/bin/env bash

for word in $@; do
  ./download_clip.sh $word
done

video_args=$(for w in $@; do echo $w.mp4; done)
./make_video.sh $video_args

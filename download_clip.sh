#!/usr/bin/env bash

wget -O $1.mp4 \
  https://y.yarn.co$(curl https://getyarn.io/yarn-find?text=$1 | grep -A 1 clip-wrap | grep yarn-clip | cut -d\" -f2 | shuf | head -1 | sed 's#yarn-clip/##g').mp4

#!/bin/bash

mkdir Shrinked


for f in *.mp4; do
	output="Shrinked/$f"
	ffmpeg -i $f -vcodec libx265 -crf 28 $output
done
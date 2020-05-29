ffmpeg -f v4l2 -video_size 1280x720 -framerate 20 -i /dev/video2 -c:v libx264 -crf 0 -preset ultrafast -c:a flac "$HOME/recordings/webcam-$(date '+%y%m%d-%H%M-%S').mkv" &


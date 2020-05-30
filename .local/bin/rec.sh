#/bin/bash

# This promgram prompts the user for a type of recording, then either starts it or kills it.

printHelp() {
    echo "$(basename "$0") [-h] action -- Program to manage audio, screencapture and video recording.
    -h      : show the user this guide, then gracefully exit
The differents actions are :
    audio   : record and audio file in flac format
    srec    : record the screen without computer audio
    scast   : record both the screen and computer audio
    kill    : kill any current recording if any
Note : If anything is already being recorded, the program is gonna prompt the user to kill first the current recording before starting another one.
Exits code :
    1 : Another recordings is already happening, please kill it first.
    2 : The user is trying to kill a recording that does not exist."
}

writeInfo(){
    echo "$1,$2,$(date),$(whoami)" > /tmp/recInfo.csv
}

killRecording(){
    recordingPID=$(cut -d "," -f 1 /tmp/recInfo.csv)
    kill -15 $recordingPID
    rm -f /tmp/recInfo.csv
    sleep 3 && kill -0 $recordingPID && kill -9 $recordingPId &
    exit 0
}

screencast(){
    ffmpeg -y \
	-f x11grab \
	-framerate 60 \
	-s "$(xdpyinfo | grep dimensions | awk '{print $2;}')" \
	-i "$DISPLAY" \
	-f alsa -i default \
	-r 30 \
 	-c:v h264 -crf 0 -preset ultrafast -c:a aac \
	"$HOME/media/recordings/screencast-$(date '+%y%m%d-%H%M-%S').mp4" &
    writeInfo $! 🎙+⏺
}

audio() { \
	ffmpeg \
	-f alsa -i default \
	-c:a flac \
	"$HOME/media/recordings/audio-$(date '+%y%m%d-%H%M-%S').flac" &
	writeInfo $! 🎙
}

video() { ffmpeg \
	-f x11grab \
	-s "$(xdpyinfo | grep dimensions | awk '{print $2;}')" \
	-i "$DISPLAY" \
 	-c:v libx264 -qp 0 -r 30 \
	"$HOME/media/recordings/screenrec-$(date '+%y%m%d-%H%M-%S').mkv" &
	writeInfo $! ⏺️
	}

promptToKill(){
    [ $(printf "Yes\\nNo" | dmenu -i -p "Kill current recording ?") = "Yes" ] && killRecording
}

type="$(printf "screencast\\nvideo\\naudio\\nkill" | dmenu -i -p "What type of recording do you want ot start ?")"

echo "$type"
test=[ -f "/tmp/recInfo.csv" ]
echo $test

case "$type" in
    screencast) ([ -f "/tmp/recInfo.csv" ] && (promptToKill || exit 1)) ; screencast;;
	audio) ([ -f "/tmp/recInfo.csv" ] && (promptToKill || exit 1)) ; audio;;
	video) ([ -f "/tmp/recInfo.csv" ] && (promptToKill || exit 1)) ; video;;
    kill) (([ -f "/tmp/recInfo.csv" ] && promptToKill) || exit 2);;
esac

exit 0




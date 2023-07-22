#!/usr/bin/env sh

case "$SENDER" in
  "mouse.clicked") 
    if [ $MODIFIER = "shift" ]; then
      open "https://www.lichess.org/"
    elif [ $MODIFIER = "alt" ]; then
      open "https://lichess.org/@/sketchyboi"
    elif [ $MODIFIER = "cmd" ]; then
      open "https://lichess.org/@/sketchyboi"
    else
      open ~/Applications/Chrome\ Apps.localized/chat.app
    fi
esac


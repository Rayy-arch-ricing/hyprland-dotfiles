#!/bin/bash

status=$(playerctl status 2>/dev/null)

case "$status" in
  Playing)
    icon="▶"
    ;;
  Paused)
    icon="⏸"
    ;;
  *)
    echo " Nada tocando"
    exit
    ;;
esac

artist=$(playerctl metadata artist 2>/dev/null)
title=$(playerctl metadata title 2>/dev/null)

echo "$icon ${artist:-?} - ${title:-?}"

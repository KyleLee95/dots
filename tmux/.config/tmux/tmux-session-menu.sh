#!/usr/bin/env bash

# See https://qmacro.org/autodidactics/2021/08/12/session-switching-with-the-tmux-menu/

tmux list-sessions -F '#S' |
	awk 'BEGIN {ORS=" "} {print $1, NR, "\"switch-client -t", $1 "\""}' |
	xargs tmux display-menu -T "Switch-session"

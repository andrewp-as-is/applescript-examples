#!/usr/bin/env bash

set -x
sh -c "osascript -e \"tell application \\\"Finder\\\" to properties\""
sh -c "osascript -e \"tell application \\\"Terminal\\\" to do shell script \\\"cd /\\\" \""


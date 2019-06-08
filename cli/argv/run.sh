#!/usr/bin/env bash
{ set +x; } 2>/dev/null

f="${BASH_SOURCE[0]%/*}"/run.applescript
( set -x; osascript "$f" arg1 arg2 )

#!/usr/bin/env bash
{ set +x; } 2>/dev/null

! [ -x "${BASH_SOURCE[0]}" ] && ( set -x; chmod +x "${BASH_SOURCE[0]}" )

if [ -t 1 ] && [ -e ~/.command/config.sh ]; then
	{ set -x; . ~/.command/config.sh; { set +x; } 2>/dev/null; }
fi

{ set -x; cd "${BASH_SOURCE[0]%/*}"; { set +x; } 2>/dev/null; }

if [ -e .git ]; then
	echo "SKIP: .git exists"
	[ -e "${BASH_SOURCE[0]}" ] && ( set -x; rm "${BASH_SOURCE[0]}" )
	exit 0
fi
( set -x; git init ) || exit $?
( set -x; git add -A ) || exit $?
( set -x; git commit -q -m init ) || exit $?
[ -e "${BASH_SOURCE[0]}" ] && ( set -x; rm "${BASH_SOURCE[0]}" )
:

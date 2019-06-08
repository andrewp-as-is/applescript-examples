#!/usr/bin/osascript

do shell script "
python <<EOF
from os.path import join, basename,dirname,expanduser
from githubmarkdown import temphtml
from chrome import chrome
path= expanduser(\"~/git/PyMan/README.md\")
title=join(basename(dirname(path)), basename(path))
for w in chrome.windows:
	for t in w.tabs:
		if t.title==title:
			t.reload()
			t.active=True
chrome.open(path)
EOF
"
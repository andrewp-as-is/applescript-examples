#!/usr/bin/osascript

set _posix_file to "/usr/local/bin/" as POSIX file
log _posix_file
log class of _posix_file

log ""

set _posix_path to POSIX path of _posix_file
log _posix_path
log class of _posix_path

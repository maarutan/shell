#!/usr/bin/env zsh
# ┌─┐┌┐ ┌┐ ┬─┐┌─┐┬  ┬┬┌─┐┌┬┐┬┌─┐┌┐┌
# ├─┤├┴┐├┴┐├┬┘├┤ └┐┌┘│├─┤ │ ││ ││││
# ┴ ┴└─┘└─┘┴└─└─┘ └┘ ┴┴ ┴ ┴ ┴└─┘┘└┘
#--------------------------------------------
# (c) maarutan   https://github.com/maarutan


CURRENT_DIR="${0:A:h}"

ABBR_USER_ABBREVIATIONS_FILE="$CURRENT_DIR/abbreviations.zsh"
ABBR_DEFAULT_BINDINGS=1
ABBR_SET_EXPANSION_CURSOR=1


# [Bug report] Zsh-abbr >=v6.2.0
# hangs on _abbr_init:dependencies when dangling zsh-job-queue jobs are present in $JOB_QUEUE_TMPDIR/zsh-abb
# JOB_QUEUE_TMPDIR = "$JOB_QUEUE_TMPDIR"

rm -rf "${JOB_QUEUE_TMPDIR:-/tmp}/zsh-abbr" 2>/dev/null || true
rm -rf "${JOB_QUEUE_TMPDIR:-/tmp}/zsh-job-queue/zsh-abbr" 2>/dev/null || true

mkdir -p "${JOB_QUEUE_TMPDIR:-/tmp}/zsh-abbr"
touch "${JOB_QUEUE_TMPDIR:-/tmp}/zsh-abbr/regular-user-abbreviations"
touch "${JOB_QUEUE_TMPDIR:-/tmp}/zsh-abbr/global-user-abbreviations"


#!/usr/bin/env bash
#
# list_users.sh - Will extract the users from /etc/passwd
#
# Site:       https://www.linkedin.com/in/mateusrissi/
# Autor:      Mateus Rissi
# Manutenção: Mateus Rissi
#
# ------------------------------------------------------------------------ #
#  This script will extract the users from /etc/passwd with the options to
#  turn them uppercase and to put them into alphabetical order.
#
#  Examples:
#      $ ./list_users.sh -s -m
#      -s flag will put them into alphabetical order and -m will turn them
#      uppercase.
# ------------------------------------------------------------------------ #
# History:
#
#   v1.0 22/11/2019, Mateus:
#       - Start
#       - Funcionalities
# ------------------------------------------------------------------------ #
# Tested on:
#   bash 4.4.20
# ------------------------------------------------------------------------ #

# ------------------------------- VARIABLES ------------------------------ #
USERS="$(cat /etc/passwd | cut -d : -f 1)"
HELP_MESSAGE="
    $(basename $0) - [OPTIONS]

    -h - Help menu
    -v - Version
    -s - Put output into alphabetical order
    -u - Convert output to uppercase
"

VERSION="v1.0.0"
# ------------------------------------------------------------------------ #

# ------------------------------- EXEC ----------------------------------- #
case "${1}" in
    -h) echo "${HELP_MESSAGE}" && exit 0 ;;
    -v) echo "${VERSION}" && exit 0      ;;
    -s) echo "${USERS}" | sort && exit 0 ;;
    -u) echo "${USERS^^}" && exit 0      ;;
     *) echo "${USERS}" && exit 0        ;;
esac
# ------------------------------------------------------------------------ #
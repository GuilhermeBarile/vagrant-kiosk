#!/bin/sh
#
# Copyright (C) 2013 Canonical Ltd
# Author: Gunnar Hjalmarsson <gunnarhj@ubuntu.com>
#
# This program is free software: you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, version 3 of the License.
#
# See http://www.gnu.org/copyleft/gpl.html the full text of the license.

# This script is run via autostart at the launch of a guest session.

export TEXTDOMAINDIR=/usr/share/locale-langpack
export TEXTDOMAIN=lightdm

# disable screen locking
gsettings set org.gnome.desktop.lockdown disable-lock-screen true

touch $HOME/test

# run possible local startup commands
test -f /etc/guest-session/auto.sh && . /etc/guest-session/auto.sh
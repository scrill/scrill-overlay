# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils git-2 linux-mod

DESCRIPTION="Linux kernel support for the Lenovo SL series ThinkPads"
HOMEPAGE="http://github.com/tadzik/lenovo-sl-laptop"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

EGIT_REPO_URI="http://github.com/tadzik/lenovo-sl-laptop.git"
EGIT_BRANCH="master"

CONFIG_CHECK="HWMON BACKLIGHT_CLASS_DEVICE"
MODULE_NAMES="${PN}(acpi)"
BUILD_TARGETS="module"

src_install() {
	linux-mod_src_install
	dodoc README
}

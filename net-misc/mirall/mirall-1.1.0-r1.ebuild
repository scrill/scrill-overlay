# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit cmake-utils

DESCRIPTION="Synchronization of your folders with another computers"
HOMEPAGE="http://owncloud.org/"
SRC_URI="http://download.owncloud.com/download/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=net-misc/csync-0.60.0[webdav]
	x11-libs/qt-core:4
	x11-libs/qt-gui:4
	x11-libs/qt-test:4
"
DEPEND="${RDEPEND}"

src_prepare() {
	# Yay for fcked detection.
	export CSYNC_DIR="${EPREFIX}/usr/include/ocsync/"
}

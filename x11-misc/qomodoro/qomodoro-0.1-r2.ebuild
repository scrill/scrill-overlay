# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit qt4-r2

DESCRIPTION="Cross-platform pomodoro timer written in C++ using Qt4"
HOMEPAGE="http://sourceforge.net/p/qomodoro/"
SRC_URI="mirror://sourceforge/project/${PN}/releases/${PV}/${P}-src.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DOCS="LICENSE"

DEPEND="dev-qt/qtgui:4"
RDEPEND="${DEPEND}"
RESTRICT="mirror"

S=${WORKDIR}/${P}

src_compile() {
	eqmake4
	emake || die "Make failed"
}

src_install() {
	dobin ${PN}
	mv "${S}"/img/logo.png "${S}"/img/${PN}.png
	doicon "${S}"/img/${PN}.png || die "Failed to install icon"
	make_desktop_entry ${PN} ${PN} ${PN} "Application;Utility"
}

# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
inherit eutils

DESCRIPTION="An integrated toolset for developing puppet modules and manifests"
HOMEPAGE="http://cloudsmith.github.com/geppetto"
SRC_URI="x86?   ( https://github.com/downloads/cloudsmith/geppetto/geppetto-linux.gtk.x86-${PV}-R201109210752.zip )
	 amd64? ( https://github.com/downloads/cloudsmith/geppetto/geppetto-linux.gtk.x86_64-${PV}-R201109210752.zip )"

S="${WORKDIR}/${PN}"

LICENSE="Apache-2.0 EPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND="app-arch/unzip"
RDEPEND="virtual/jre"
RESTRICT="mirror"

src_unpack() {
	unpack ${A}
}

src_install() {
	mv "${S}/icon.xpm" "${S}/${PN}.xpm"
	dodir /opt/${PN}
	insinto /opt/${PN}
	doins -r configuration
	doins -r features
	doins -r p2
	doins -r plugins
	doins artifacts.xml
	doins geppetto.ini
	doins libcairo-swt.so
	doicon ${PN}.xpm
	exeinto /opt/${PN}
	doexe geppetto
	make_desktop_entry /opt/${PN}/${PN} Geppetto /usr/share/pixmaps/${PN}.xpm "IDE;Development"
}

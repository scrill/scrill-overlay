# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit desktop eutils

DESCRIPTION="Application for BLHeli firmware flashing and configuration"
HOMEPAGE="https://github.com/blheli-configurator/blheli-configurator"
SRC_URI="https://github.com/blheli-configurator/blheli-configurator/releases/download/1.1.0/BLHeli-Configurator_linux64_1.1.0.zip"
LICENSE="GPL-3"
RESTRICT="mirror test"

SLOT="0"
KEYWORDS="-* ~amd64"
IUSE=""

DEPEND="app-arch/unzip"
RDEPEND=""
QA_PREBUILT="*"
S=${WORKDIR}

SRC_APPDIR="${S}/BLHeli Configurator"
DST_APPDIR="/opt/blheli-configurator"

src_unpack() {
	unzip "${DISTDIR}/${A}" -d "${S}"
}

src_install() {
	dodir ${DST_APPDIR}
	cp -a "${SRC_APPDIR}"/* "${D}${DST_APPDIR}"/ || die

	domenu "${FILESDIR}"/blheli-configurator.desktop
}

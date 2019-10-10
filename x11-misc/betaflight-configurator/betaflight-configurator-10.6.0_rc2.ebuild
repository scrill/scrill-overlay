# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit desktop eutils

DESCRIPTION="Crossplatform configuration tool for the Betaflight flight control system"
HOMEPAGE="https://github.com/betaflight/betaflight-configurator"
SRC_URI="https://github.com/betaflight/betaflight-configurator/releases/download/10.6.0-RC2/betaflight-configurator_10.6.0-RC2_linux64.zip"
LICENSE="GPL-3"
RESTRICT="mirror test"

SLOT="0"
KEYWORDS="-* ~amd64"
IUSE=""

DEPEND="app-arch/unzip"
RDEPEND=""
QA_PREBUILT="*"
S=${WORKDIR}

SRC_APPDIR="${S}/Betaflight Configurator"
DST_APPDIR="/opt/betaflight/betaflight-configurator"

src_unpack() {
	unzip "${DISTDIR}/${A}" -d "${S}"
}

src_install() {
	dodir ${DST_APPDIR}
	cp -a "${SRC_APPDIR}"/* "${D}${DST_APPDIR}"/ || die

	doicon "${SRC_APPDIR}"/icon/bf_icon_128.png
	local res
	for res in 16 32 256 512; do
		doicon -s $res "${SRC_APPDIR}"/icon/bf_icon_128.png
	done
	domenu "${SRC_APPDIR}"/betaflight-configurator.desktop
}

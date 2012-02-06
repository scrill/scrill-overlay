# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

DESCRIPTION="Kolobok smile pack for net-im/qutim"
HOMEPAGE="http://www.qutim.org"
LICENSE="GPL-2"

SRC_URI="http://kolobok.us/content_files/downloads/messengers/qutim/kolobok_midi_for_qutim.zip"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT="mirror"

DEPEND="<net-im/qutim-0.3"
RDEPEND=""

src_prepare() {
	sed -i 's/Kolobok Midi series dark skin/kolobok_dark_skin/' 'Kolobok Midi series dark skin/emoticons.xml'
	sed -i 's/Kolobok Midi series light skin/kolobok_light_skin/' 'Kolobok Midi series light skin/emoticons.xml'
}

src_install()
{
	local SHAREDIR="usr/share/qutim"
	dodir ${SHAREDIR}
	dodir ${SHAREDIR}/emoticons
	dodir ${SHAREDIR}/emoticons/kolobok_dark_skin
	dodir ${SHAREDIR}/emoticons/kolobok_light_skin
	insinto ${SHAREDIR}/emoticons/kolobok_dark_skin
	cd "${WORKDIR}/Kolobok Midi series dark skin"
	doins * || die
	insinto ${SHAREDIR}/emoticons/kolobok_light_skin
	cd "${WORKDIR}/Kolobok Midi series light skin"
	doins * || die
}

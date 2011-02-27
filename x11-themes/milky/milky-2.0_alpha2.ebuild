# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Icon theme for KDE 4 designed by Banu Önal (gray)."
HOMEPAGE="http://kde-look.org/content/show.php/Milky?content=133124"
SRC_URI="http://cekirdek.pardus.org.tr/~gokcen/files/milky/${PN}-2.0-alpha2.tar.bz2"

LICENSE="CCPL-Attribution-3.0"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd"
IUSE=""

RESTRICT="strip binchecks"

DEPEND=""
RDEPEND=${DEPEND}

src_unpack() {
    unpack ${A}
    sed -i 's/Name=Milky/Name=Milky-Alpha2/' ${WORKDIR}/milky/index.theme || die
}

src_install() {
	cd milky
	dodoc author readme.txt thanks.to
	rm author license.txt readme.txt thanks.to

	cd ${WORKDIR}
	dodir /usr/share/icons/milky-alpha2
	insinto /usr/share/icons/milky-alpha2
	doins -r milky/*
}

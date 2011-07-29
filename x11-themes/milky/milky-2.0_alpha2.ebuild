# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Icon theme for KDE 4 designed by Banu Önal"
HOMEPAGE="http://kde-look.org/content/show.php/Milky?content=133124"
SRC_URI="http://cekirdek.pardus.org.tr/~gokcen/files/milky/${PN}-2.0-alpha2.tar.bz2"

LICENSE="CCPL-Attribution-3.0"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd"
IUSE=""

RESTRICT="strip binchecks"

DEPEND=""
RDEPEND=${DEPEND}

src_install() {
  cd milky
  dodoc author readme.txt thanks.to
  rm author license.txt readme.txt thanks.to

  cd ${WORKDIR}
  insinto /usr/share/icons
  doins -r milky
}

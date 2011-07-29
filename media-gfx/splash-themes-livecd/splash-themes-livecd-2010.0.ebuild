# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit eutils

DESCRIPTION="Gentoo theme for gensplash consoles"
HOMEPAGE="http://www.gentoo.org/"
SRC_URI="http://cloud.github.com/downloads/Scrill/scrill-overlay/gentoo-livecd-${PV}.tar.gz"

SLOT=${PV}
LICENSE="as-is"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="binchecks strip"

DEPEND=">=media-gfx/splashutils-1.4.1"

pkg_setup() {
  if ! built_with_use media-gfx/splashutils mng
  then
    ewarn "MNG support is missing from splashutils.  You will not see the"
    ewarn "service icons as services are starting."
  fi
}

src_install() {
  dodir /etc/splash/gentoo-livecd-${PV}
  cd ${WORKDIR}/gentoo-livecd-${PV}
  insinto /etc/splash/gentoo-livecd-${PV}
  doins -r * || die
}

# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MY_P="${PV/_beta1/-beta}"

EAPI="2"

inherit eutils qt4-r2

DESCRIPTION="Jabbin is a social application that combines VoIP, Instant Messaging and Social Networking."
HOMEPAGE="http://www.jabbin.com/"
SRC_URI="http://jabbin.svn.sourceforge.net/viewvc/jabbin/tags/${MY_P}.tar.gz
         -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND=">=x11-libs/qt-gui-4.4
   >=x11-libs/qt-core-4.4
   >=app-crypt/qca-2.0
   media-libs/speex
   || ( media-libs/phonon x11-libs/qt-phonon )"

RDEPEND="${DEPEND}"

S="${WORKDIR}/${MY_P}"

src_prepare() {
   cd "${S}"
   epatch "${FILESDIR}"/jabbin-vsprintf-fix.patch || die "epatch failed"

   #prevent strip
   echo "QMAKE_STRIP = echo" >> src/src.pro

   # it uses the debug flags anyway so better removing it and use the global CXXFLAGS
   sed -i 's/unix:debug:.*//' third-party/libjingle-0.4.0/libjingle-0.4.0.pro || die "sed failed"

   # make executable the configure script
   chmod +x configure
}

src_configure() {
   cd "${S}"/third-party/libjingle-0.4.0
   eqmake4
   cd "${S}"/third-party/jrtplib
   eqmake4
   cd "${S}"
   ./configure --prefix=/usr --disable-bundled-qca || die "./configure failed"
}

src_compile() {
   cd "${S}"/third-party/libjingle-0.4.0
   emake || die "emake failed"
   cd "${S}"/third-party/jrtplib
   emake || die "emake failed"
   cd "${S}"
   emake || die "emake failed"
}

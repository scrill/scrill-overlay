# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"
PYTHON_DEPEND="2"

inherit distutils

DESCRIPTION="A small note taking program for the terminal"
HOMEPAGE="http://sourceforge.net/projects/tnote/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT="mirror"
DEPEND="app-arch/unzip"
RDEPEND=""

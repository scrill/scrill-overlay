# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_2,3_3} pypy2_0 )

inherit distutils-r1

DESCRIPTION="ReST document generation tools for botocore"
HOMEPAGE="https://github.com/boto/bcdoc https://pypi.python.org/pypi/bcdoc"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-python/six-1.1.0
	>=dev-python/docutils-0.10"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/nose[${PYTHON_USEDEP}] )"

RESTRICT="test"

DOCS=( README.rst )

python_test() {
	nosetests || die "Tests fail with ${EPYTHON}"
}

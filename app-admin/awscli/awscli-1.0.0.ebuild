# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_2,3_3} pypy2_0 )

inherit distutils-r1 eutils

DESCRIPTION="Universal Command Line Environment for AWS"
HOMEPAGE="https://github.com/aws/aws-cli https://pypi.python.org/pypi/awscli"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-python/botocore-0.16.0
	<=dev-python/botocore-0.17.0
	>=dev-python/bcdoc-0.9.0
	<dev-python/bcdoc-0.10.0
	>=dev-python/six-1.1.0
	=dev-python/colorama-0.2.5
	virtual/python-argparse
	>=dev-python/docutils-0.10
	=dev-python/rsa-3.1.1"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/nose[${PYTHON_USEDEP}] )"

RESTRICT="test"

DOCS=( README.rst )

src_prepare() {
	epatch "${FILESDIR}/${P}-fix-bin-file.patch"
}

python_test() {
	nosetests || die "Tests fail with ${EPYTHON}"
}

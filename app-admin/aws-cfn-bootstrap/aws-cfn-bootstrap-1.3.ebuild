# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils eutils

DESCRIPTION="Bootstrap scripts for AWS CloudFormation"
HOMEPAGE="http://aws.amazon.com/developertools/4026240853893296"
SRC_URI="https://s3.amazonaws.com/cloudformation-examples/${P}.tar.gz"

LICENSE="Amazon"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/setuptools
	dev-python/simplejson
	dev-python/python-daemon"
RDEPEND=$DEPEND

src_install() {
	distutils_src_install
	rm -rf "${D}/usr/init"
	dodir /etc/cfn
	insinto /etc/cfn
	doins "${FILESDIR}/cfn-hup.conf.example"
	newinitd "${FILESDIR}/cfn-hup.init" cfn-hup || die
}

# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
USE_RUBY="ruby18 ree18"

RUBY_FAKEGEM_TASK_DOC="docs"
RUBY_FAKEGEM_DOCDIR="doc"
RUBY_FAKEGEM_EXTRADOC="README.rdoc"

inherit ruby-fakegem

DESCRIPTION="Client library for Amazon's Simple Email Service's REST API"
HOMEPAGE="https://github.com/drewblas/aws-ses"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RESTRICT="test"

ruby_add_rdepend "
	dev-ruby/xml-simple
	dev-ruby/builder
	dev-ruby/mime-types
	dev-ruby/mail"

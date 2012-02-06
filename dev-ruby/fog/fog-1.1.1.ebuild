# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
USE_RUBY="ruby18"

RUBY_FAKEGEM_TASK_DOC="docs"
RUBY_FAKEGEM_DOCDIR="doc"
RUBY_FAKEGEM_EXTRADOC="README.rdoc"

inherit ruby-fakegem

DESCRIPTION="The Ruby cloud services library"
HOMEPAGE="http://fog.io/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RESTRICT="mirror test"

ruby_add_rdepend "
	dev-ruby/builder
	>=dev-ruby/excon-0.7.4
	>=dev-ruby/formatador-0.2.0
	>=dev-ruby/multi_json-1.0.3
	dev-ruby/mime-types
	>=dev-ruby/net-scp-1.0.4
	>=dev-ruby/net-ssh-2.1.3
	>dev-ruby/nokogiri-1.5.0
	dev-ruby/ruby-hmac"

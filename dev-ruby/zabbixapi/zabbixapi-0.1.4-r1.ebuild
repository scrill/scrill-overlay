# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
USE_RUBY="ruby18 ree18"

RUBY_FAKEGEM_TASK_DOC="docs"
RUBY_FAKEGEM_DOCDIR="doc"
RUBY_FAKEGEM_EXTRADOC="README.rdoc"

inherit ruby-fakegem

DESCRIPTION="Ruby module for work with Zabbix API"
HOMEPAGE="http://github.com/verm666/RubyZabbixApi"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RESTRICT="test"

ruby_add_rdepend 'dev-ruby/json'

all_ruby_prepare() {
	epatch "${FILESDIR}/${P}-templates.patch"
}

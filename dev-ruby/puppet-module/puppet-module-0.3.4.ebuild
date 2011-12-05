# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
USE_RUBY="ruby18"

RUBY_FAKEGEM_EXTRADOC="README.markdown"

inherit ruby-fakegem

DESCRIPTION="The Puppet Module Tool creates, installs and searches for Puppet modules"
HOMEPAGE="https://github.com/puppetlabs/puppet-module-tool"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RESTRICT="mirror"

ruby_add_rdepend "app-admin/puppet"

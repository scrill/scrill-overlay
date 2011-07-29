# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
# jruby failed to install
USE_RUBY="ruby18 ruby19 ree18"
RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_TEST="spec"
RUBY_FAKEGEM_EXTRADOC="CHANGELOG README* TODO"
RUBY_FAKEGEM_BINWRAP="facter"

inherit ruby-fakegem

DESCRIPTION="A cross-platform Ruby library for retrieving facts from operating systems"
HOMEPAGE="http://www.puppetlabs.com/puppet/related-projects/facter/"

LICENSE="GPL-2"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~hppa ~ppc ~ppc64 ~sparc ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~x86-solaris"

RUBY_PATCHES=("${P}-freebsd-spec.patch" "${P}-ec2.patch" )

ruby_add_bdepend "test? (
    dev-ruby/mocha
    dev-ruby/rspec:0
  )"

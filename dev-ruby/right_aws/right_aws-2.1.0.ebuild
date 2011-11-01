# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
USE_RUBY="ruby18 ree18 ruby19 jruby"

RUBY_FAKEGEM_TASK_DOC="docs"
RUBY_FAKEGEM_DOCDIR="doc"
RUBY_FAKEGEM_EXTRADOC="README.txt History.txt"

inherit ruby-fakegem

DESCRIPTION="A robust, fast, and secure interface to Amazon EC2, EBS, S3, SQS, SDB, and CloudFront"
HOMEPAGE="http://www.rightscale.com/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RESTRICT="test"

ruby_add_rdepend '>=dev-ruby/right_http_connection-1.3.0 dev-ruby/uuidtools'

all_ruby_prepare() {
	sed -i -e '/rcovtask/s:^:#:' Rakefile || die
}

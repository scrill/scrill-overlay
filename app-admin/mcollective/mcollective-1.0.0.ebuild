# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2

inherit eutils

DESCRIPTION="Common elements of the Marionette Collective management suite."
HOMEPAGE="http://code.google.com/p/mcollective"
SRC_URI="http://puppetlabs.com/downloads/mcollective/${P}.tgz"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="-client +server"

DEPEND=">=dev-ruby/stomp-1.1
        >=dev-lang/ruby-1.8"

RDEPEND="${DEPEND}"

src_unpack() {
	unpack ${A}
	cd "${S}"
	epatch ${FILESDIR}/${P}.patch

	if has_version "<sys-apps/baselayout-2.0.0"; then
		# change /usr/bin/env back to /usr/bin/ruby
		einfo "Baselayout-1 detected - patching mcollectived"
		sed -i -e 's@#!/usr/bin/env ruby@#!/usr/bin/ruby@' mcollectived.rb
	fi
}

src_install() {
	if ! use server && ! use client; then
		die "Please specify one or both of client and server USE flag."
	fi

	dodir /etc/mcollective
	fperms 755 /etc/mcollective

	siteruby=$(ruby -r rbconfig -e 'print Config::CONFIG["sitelibdir"]')
	dodir ${siteruby}/mcollective
	dodir ${siteruby}/mcollective/connector
	dodir ${siteruby}/mcollective/facts
	dodir ${siteruby}/mcollective/registration
	dodir ${siteruby}/mcollective/rpc
	dodir ${siteruby}/mcollective/security
	dodir ${siteruby}/mcollective/logger
	
	insinto ${siteruby}
	cd ${S}/lib
	doins *.rb
	
	insinto ${siteruby}/mcollective
	cd ${S}/lib/mcollective
	doins *.rb
	
	insinto ${siteruby}/mcollective/connector
	cd ${S}/lib/mcollective/connector
	doins *.rb
	
	insinto ${siteruby}/mcollective/facts
	cd ${S}/lib/mcollective/facts
	doins *.rb
	
	insinto ${siteruby}/mcollective/registration
	cd ${S}/lib/mcollective/registration
	doins *.rb
	
	insinto ${siteruby}/mcollective/rpc
	cd ${S}/lib/mcollective/rpc
	doins *.rb
	
	insinto ${siteruby}/mcollective/logger
	cd ${S}/lib/mcollective/logger
	doins *.rb
	
	insinto ${siteruby}/mcollective/security
	cd ${S}/lib/mcollective/security
	doins *.rb

	dodir /usr/share/mcollective
	dodir /usr/share/mcollective/mcollective
	dodir /usr/share/mcollective/mcollective/agent
	dodir /usr/share/mcollective/mcollective/audit
	dodir /usr/share/mcollective/mcollective/connector
	dodir /usr/share/mcollective/mcollective/facts
	dodir /usr/share/mcollective/mcollective/registration
	dodir /usr/share/mcollective/mcollective/security

	insinto /usr/share/mcollective/mcollective/agent
	cd ${S}/plugins/mcollective/agent
	doins *.rb
	doins *.ddl

	insinto /usr/share/mcollective/mcollective/audit
	cd ${S}/plugins/mcollective/audit
	doins *.rb

	insinto /usr/share/mcollective/mcollective/connector
	cd ${S}/plugins/mcollective/connector
	doins *.rb

	insinto /usr/share/mcollective/mcollective/facts
	cd ${S}/plugins/mcollective/facts
	doins *.rb

	insinto /usr/share/mcollective/mcollective/registration
	cd ${S}/plugins/mcollective/registration
	doins *.rb

	insinto /usr/share/mcollective/mcollective/security
	cd ${S}/plugins/mcollective/security
	doins *.rb

	cd ${S}
	dodoc COPYING
	
	insinto /etc/mcollective
	doins etc/facts.yaml.dist

	if use server; then
		insinto /etc/mcollective
		doins etc/server.cfg.dist
		fperms 0640 /etc/mcollective/server.cfg.dist
		doins etc/facts.yaml.dist
		newsbin mcollectived.rb mcollectived
		newinitd ${FILESDIR}/mcollectived.init mcollectived
		newconfd ${FILESDIR}/mcollectived.conf mcollectived
	fi

	if use client; then
		insinto /etc/mcollective
		doins etc/client.cfg.dist
		dosbin mc-call-agent
		dosbin mc-controller
		dosbin mc-facts
		dosbin mc-find-hosts
		dosbin mc-inventory
		dosbin mc-ping
		dosbin mc-rpc
	fi
}

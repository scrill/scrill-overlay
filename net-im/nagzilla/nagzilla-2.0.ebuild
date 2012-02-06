# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit eutils

DESCRIPTION="Jabber Relay Bot - for monitoring and any other sort of alert needs you have"
HOMEPAGE="http://code.google.com/p/nagzilla/"
LICENSE="GPL-2"

SRC_URI="http://nagzilla.googlecode.com/files/${P}.tgz"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="server"

RESTRICT="mirror"

RDEPEND="dev-perl/Config-Simple
	dev-perl/Log-LogLite
	dev-perl/Net-Jabber"
DEPEND=$RDEPEND

pkg_setup() {
	if use server; then
		enewgroup nagzilla
		enewuser nagzilla -1 -1 /dev/null nagzilla
	fi
}

src_install()
{
	# client config
	dodir /etc/nagzillac
	insinto /etc/nagzillac
	doins nagzillac.cfg || die
	# bin
	newbin nagzillac2.pl nagzillac

	if use server; then
		# server config
		dodir /etc/nagzillad
		insinto /etc/nagzillad
		doins nagzillad.cfg || die
		# sbin
		newsbin nagzillad.pl nagzillad
		# init.d
		newinitd "${FILESDIR}/nagzillad.init" nagzillad || die
		# logdir
		diropts -m 0770 -o nagzilla -g nagzilla
		dodir /var/log/nagzilla
		# logrotate
		insinto /etc/logrotate.d
		doins nagzillad
	fi
}

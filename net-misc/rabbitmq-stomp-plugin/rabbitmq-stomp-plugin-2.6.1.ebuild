# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit eutils

DESCRIPTION="RabbitMQ STOMP plugin."
HOMEPAGE="http://www.rabbitmq.com/plugins.html#rabbitmq-stomp"

AMQPCLIENT_URI="http://www.rabbitmq.com/releases/plugins/v${PV}/amqp_client-${PV}.ez"
RABBITSTOMP_URI="http://www.rabbitmq.com/releases/plugins/v${PV}/rabbitmq_stomp-${PV}.ez"
SRC_URI="${AMQPCLIENT_URI} ${RABBITSTOMP_URI}"

LICENSE="MPL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=net-misc/rabbitmq-server-${PV}"
DEPEND="${RDEPEND}"
RESTRICT="mirror"

src_unpack() {
	cp "${DISTDIR}/amqp_client-${PV}.ez" "${WORKDIR}/"
	cp "${DISTDIR}/rabbitmq_stomp-${PV}.ez" "${WORKDIR}/"
}

src_install() {
	local PLUGINDIR="/usr/$(get_libdir)/erlang/lib/rabbitmq_server-${PV}/plugins"
	dodir ${PLUGINDIR}
	insinto ${PLUGINDIR}
	doins amqp_client-${PV}.ez || die
	doins rabbitmq_stomp-${PV}.ez || die
}

pkg_postinst() {
	elog
	elog "Please add the following line to your '/etc/rabbitmq/rabbitmq-env.conf' file:"
	elog
	elog "  SERVER_START_ARGS='-rabbit_stomp tcp_listeners [{\"0.0.0.0\",61613}]'"
	elog
	elog "and restart RabbitMQ server."
	elog
}

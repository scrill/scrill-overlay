# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit eutils

DESCRIPTION="RabbitMQ STOMP plugin"
HOMEPAGE="http://www.rabbitmq.com/plugins.html#rabbitmq-stomp"

AMQPCLIENT_URI="http://www.rabbitmq.com/releases/plugins/v${PV}/amqp_client-${PV}.ez"
RABBITSTOMP_URI="http://www.rabbitmq.com/releases/plugins/v${PV}/rabbit_stomp-${PV}.ez"
SRC_URI="${AMQPCLIENT_URI} ${RABBITSTOMP_URI}"

LICENSE="MPL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=net-misc/rabbitmq-server-${PV}"
DEPEND="${RDEPEND}"
RESTRICT="mirror"

src_unpack() {
    cp ${DISTDIR}/*-${PV}.ez ${WORKDIR}/
}

src_install() {
    local PLUGINDIR="/usr/$(get_libdir)/erlang/lib/rabbitmq-server-${PV}/plugins"
    dodir ${PLUGINDIR}
    insinto ${PLUGINDIR}
    doins *-${PV}.ez || die
}

pkg_postinst() {
    elog
    elog "Please add the following line to your '/etc/rabbitmq/rabbitmq.conf' file:"
    elog
    elog "  SERVER_START_ARGS='-rabbit_stomp listeners [{\"0.0.0.0\",61613}]'"
    elog
    elog "and restart RabbitMQ server."
    elog
}

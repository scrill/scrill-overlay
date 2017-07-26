# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit rpm

DESCRIPTION="Online meetings, video conferencing, and screen sharing for teams of any size"
HOMEPAGE="https://www.bluejeans.com"
SRC_URI="https://swdl.bluejeans.com/desktop/linux/1.28/1.28.9/bluejeans-1.28.9.x86_64.rpm"

LICENSE="BlueJeans"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

S="${WORKDIR}"

src_unpack() {
  rpm_src_unpack ${A}
}

src_install() {
  insinto /opt
  doins -r opt/bluejeans

  local res
  for res in 16 24 32 256; do
    newicon -s ${res} opt/bluejeans/icons/hicolor/${res}x${res}/apps/bluejeans.png ${PN}.png
  done

  dobin opt/bluejeans/bluejeans
  domenu opt/bluejeans/bluejeans.desktop
}

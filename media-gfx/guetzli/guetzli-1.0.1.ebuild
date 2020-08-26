# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Perceptual JPEG encoder"
HOMEPAGE="https://github.com/google/guetzli"

SRC_URI="https://github.com/google/${PN}/archive/v${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"

RDEPEND="
	media-libs/libpng
"
DEPEND="${RDEPEND}"

src_install() {
	dobin bin/Release/guetzli
}

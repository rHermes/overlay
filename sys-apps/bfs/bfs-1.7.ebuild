# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A breadth-first version of the UNIX find command"
HOMEPAGE="https://tavianator.com/projects/bfs.html"

SRC_URI="https://github.com/tavianator/${PN}/archive/${PV}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"

RDEPEND="
	virtual/acl
	sys-libs/libcap
"
DEPEND="${RDEPEND}"

IUSE="test"

PATCHES=(
	"${FILESDIR}/disable-deep-tests.patch"
)

src_compile() {
	emake release
}

src_test() {
	emake TEST_FLAGS="--noclean" check
}

# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Simple random password generator"
HOMEPAGE="https://github.com/devHeadset/randpass"
SRC_URI="https://raw.githubusercontent.com/devHeadset/cGentoo/refs/heads/main/app-admin/randPass/randpass.tar.gz"


LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""


src_compile() {
    cargo build --release
}

# i hope this is right lmao
src_install() {
    dosbin target/release/randpass
}

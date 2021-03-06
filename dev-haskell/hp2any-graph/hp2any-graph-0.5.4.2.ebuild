# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.2.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

DESCRIPTION="Real-time heap graphing utility and profile stream server with a reusable graphing module"
HOMEPAGE="http://www.haskell.org/haskellwiki/Hp2any"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="serveronly"

RDEPEND="dev-haskell/hp2any-core:=[profile?]
	dev-haskell/network:=[profile?]
	>=dev-haskell/parseargs-0.1.3.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	!serveronly? ( dev-haskell/glut:=[profile?]
			dev-haskell/opengl:=[profile?]
			media-libs/freeglut )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-ghc-7.10.patch
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag serveronly serveronly)
}

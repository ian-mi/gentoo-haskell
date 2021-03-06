# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit eutils haskell-cabal

DESCRIPTION="Binary and Hashable instances for TypeRep"
HOMEPAGE="http://hackage.haskell.org/package/concrete-typerep"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/binary:=[profile?]
	<dev-haskell/hashable-1.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.9.2
	test? ( >=dev-haskell/quickcheck-2.4
		dev-haskell/test-framework
		dev-haskell/test-framework-quickcheck2 )
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-ghc-7.10.patch
}

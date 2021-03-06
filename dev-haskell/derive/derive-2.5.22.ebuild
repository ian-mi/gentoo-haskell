# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.3

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A program and library to derive instances for data types"
HOMEPAGE="https://github.com/ndmitchell/derive#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/haskell-src-exts-1.16:=[profile?] <dev-haskell/haskell-src-exts-1.17:=[profile?]
	dev-haskell/syb:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?]
	>=dev-haskell/uniplate-1.5:=[profile?] <dev-haskell/uniplate-1.7:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

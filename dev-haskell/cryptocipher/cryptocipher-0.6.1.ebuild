# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Symmetrical block and stream ciphers."
HOMEPAGE="http://github.com/vincenthz/hs-crypto-cipher"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cipher-aes-0.2.3:=[profile?]
	dev-haskell/cipher-blowfish:=[profile?]
	dev-haskell/cipher-camellia:=[profile?]
	dev-haskell/cipher-des:=[profile?]
	dev-haskell/cipher-rc4:=[profile?]
	dev-haskell/crypto-cipher-types:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Networking-related facilities"
HOMEPAGE="http://hackage.haskell.org/cgi-bin/hackage-scripts/package/network"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.6.1
		 dev-haskell/parsec"

DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

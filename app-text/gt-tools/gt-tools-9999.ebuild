# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999
#hackport: flags: gui:gtk

CABAL_FEATURES="bin"
inherit git-2 haskell-cabal

DESCRIPTION="Console and GUI interface for Google Translate service"
HOMEPAGE="http://github.com/styx/gtc"
EGIT_REPO_URI="git://github.com/styx/gtc.git"

S=${WORKDIR}/gtc

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="gtk"

RDEPEND="gtk? ( x11-libs/gtk+:2 )"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	dev-haskell/extensible-exceptions
	dev-haskell/haskeline
	dev-haskell/http
	dev-haskell/json
	dev-haskell/mtl
	dev-haskell/url
	>=dev-haskell/utf8-string-0.3.6
	>=dev-lang/ghc-7.4.1
	gtk? ( dev-haskell/glade
		>=dev-haskell/gtk-0.13
		dev-haskell/text )
"

src_configure() {
	cabal_src_configure $(cabal_flag gtk gui)
}

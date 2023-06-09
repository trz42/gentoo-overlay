# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7,8,9,10,11} )

inherit distutils-r1

#DISTUTILS_USE_SETUPTOOLS=pyproject.toml

DESCRIPTION="A library to query system architecture"
HOMEPAGE="https://github.com/archspec/archspec"
SRC_URI="https://github.com/${PN}/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
# The tarball from GitHub does not contain the archspec microarchitectures data file,
# which is part of the archspec-json repository. So, we need to download that tarball as well.
ARCHSPEC_JSON="${PN}-json-${PV}.tar.gz"
SRC_URI+=" https://github.com/${PN}/${PN}-json/archive/v${PV}.tar.gz -> ${ARCHSPEC_JSON}"

LICENSE="|| ( Apache-2.0 MIT )"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~ppc ~riscv ~sparc ~x86"
IUSE=""

#DEPEND="dev-python/pyproject2setuppy[${PYTHON_USEDEP}]
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	>dev-python/six-1.13[${PYTHON_USEDEP}]
	=dev-python/click-8.1.3[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
BDEPEND=""

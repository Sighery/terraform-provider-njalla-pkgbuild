# Maintainer: Sighery
pkgname=terraform-provider-njalla
pkgver=0.2.0
pkgrel=1
pkgdesc="Unofficial Terraform Njalla provider plugin"
url='https://github.com/Sighery/terraform-provider-njalla'
arch=('x86_64')
license=('MIT')
makedepends=('go')
source=(
	"$pkgname-$pkgver.tar.gz::$url/archive/v$pkgver.tar.gz"
)
sha256sums=('da601acdbec95dcc0445dae9013247f98536aa83e4aead86c46a8b01ec8efe59')

build() {
	export CGO_LDFLAGS="${LDFLAGS}"
	export GOFLAGS="-trimpath"

	cd $pkgname-$pkgver
	go build -o "${pkgname}_v${pkgver}"
}

package() {
	cd $pkgname-$pkgver

	install -Dm755 "${pkgname}_v${pkgver}" "$pkgdir/usr/bin/${pkgname}_v${pkgver}"

	# MIT license needs to be installed separately
	install -Dm644 LICENSE $pkgdir/usr/share/licenses/$pkgname/LICENSE
}

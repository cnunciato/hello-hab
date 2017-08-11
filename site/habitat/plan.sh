pkg_name="hello-hab-site"
pkg_origin="cnunciato"
pkg_version="0.1.0"
pkg_maintainer="Chris Nunciato <chris@nunciato.org>"

do_build() {
  return 0
}

do_install() {
  mkdir -p "${pkg_prefix}/dist"
  cp -v index.html "${pkg_prefix}/dist/"
}

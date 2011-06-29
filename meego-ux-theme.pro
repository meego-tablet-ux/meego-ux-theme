TEMPLATE = subdirs

themefiles.files += 1024-600-10
themefiles.path += $$INSTALL_ROOT/usr/share/themes/

INSTALLS += themefiles

VERSION = 0.2.14
PROJECT_NAME = meego-ux-theme

dist.commands += rm -fR $${PROJECT_NAME}-$${VERSION} &&
dist.commands += git clone . $${PROJECT_NAME}-$${VERSION} &&
dist.commands += rm -fR $${PROJECT_NAME}-$${VERSION}/.git &&
dist.commands += tar jcpvf $${PROJECT_NAME}-$${VERSION}.tar.bz2 $${PROJECT_NAME}-$${VERSION}
QMAKE_EXTRA_TARGETS += dist

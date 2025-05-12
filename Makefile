PORTNAME=	wireguard-amnezia-kmod
PORTVERSION=	1.0.2
CATEGORIES=	net net-vpn

MAINTAINER=	vova@zote.me
COMMENT=	WireGuard implementation with Amnezia support
WWW=		httpsk://github.com/vgrebenschikov/wireguard-amnezia-kmod

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/COPYING

USE_GITHUB=	yes
GH_ACCOUNT=	vgrebenschikov

USES=		kmod
KMODDIR=	/boot/modules
PLIST_FILES=	${KMODDIR}/if_wg.ko

DISTVERSIONPREFIX=	v

.include <bsd.port.mk>

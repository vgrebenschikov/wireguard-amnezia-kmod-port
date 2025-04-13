PORTNAME=	wireguard-amnezia-kmod
PORTVERSION=	1.0.0
CATEGORIES=	net net-vpn

MAINTAINER=	vova@zote.me
COMMENT=	WireGuard implementation with Amnezia support
WWW=		https://github.com/vgrebenschikov/wireguard-amnezia-kmod

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/COPYING

USE_GITHUB=	yes
GH_ACCOUNT=	vgrebenschikov
GH_PROJECT=	wireguard-amnezia-kmod
GH_TAGNAME=	v${PORTVERSION}

USES=		kmod
KMODDIR=	/boot/modules
PLIST_FILES=	${KMODDIR}/if_wg.ko

.include <bsd.port.mk>

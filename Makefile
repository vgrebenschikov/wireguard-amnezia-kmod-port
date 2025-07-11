PORTNAME=	wireguard-amnezia-kmod
PORTVERSION=	1.0.3
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

do-install:
	@${MKDIR} ${STAGEDIR}${KMODDIR}
	${INSTALL} -m 444 ${WRKSRC}/if_wg.ko ${STAGEDIR}${KMODDIR}

.include <bsd.port.mk>

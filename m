Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BBCBC1B494D
	for <lists+cake@lfdr.de>; Wed, 22 Apr 2020 17:58:53 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 82AA23CB38;
	Wed, 22 Apr 2020 11:58:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587571132;
	bh=IR+KerNkO1+zCH3seqnwOmvFaWyhvBrFJc7ZCoEwHl4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=aR2fF+N95Xud/wCd2HTDozr/vi9ywYkEMD/ACJvfsA7PBVeVzSORiQAN4u0fDPrcS
	 7QzVlRsGw/VRbni7zqO84zV+v+BoqLBBtHjmiAXvjoKxtjfILnWBoJw5YgmIitmMdc
	 oPQ2pxpNsQQtuFIkuG52q9SJKcGEkPem558si0eaYyuYl3dP75WTGF/xQ2DI97Dc5M
	 FagMmRLYXgLXlfhDSeNyHN/jhniMDJiW/f4/9A+oGR+C9nEfwPzmX2JYGmU4439EbV
	 QrfBCFfIcPhty4/1/IqNY/XcKOfZgHEhh/wLe/7oKgyQjEXOioxumQi6c2mwl9g15x
	 6oOfLgE/HGgiw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-eopbgr80059.outbound.protection.outlook.com [40.107.8.59])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5FE913B29E
 for <cake@lists.bufferbloat.net>; Wed, 22 Apr 2020 11:58:51 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C7F7USMcL5Pj/9PxM8PR/0C/WrVf9F1XrDwaprxR4wT2S1iYlKL0i3vya38IaRdNVTKIvvjeMKyCXh8X3lhHOTqLpSqwchKzoZfppaHfv51E9GxF7Jia7gP6KAtnWPCIkBNtvf9SVumtCSL+/wbaGq1Z44TVxAbMiJCicYFJt+IcUpgEBW5c9KO/akQIGxYHE8qaPyzHEkid4q1VJA0V66UVo6hZl2B23rFJ01j4BYhkVA3C4V6DbIaKp+0ue4Fx+QEKmIZW0kPnN7e40ZA8Rglfs2soJTTLDO0DuxCAtct5Hh5zTi8tOvOwx2R3k8WCHlQFDzIPHj1PclmrvFxGlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y8zN/3b/Q8r92J3Yt/Wl5y9kTSME8rcJlig9GdovE0s=;
 b=jkujowlDo/GFvnaex0gZ3fMZ2EuCBj1DVPwziDHoGB4BKAzBoVqqelMj/HL5OvwYhRUemOL7+zLv0Cz876PnXF0wfFkvDhQZfLyzbbMWYhlFePWQPFzCUY42VfyWijIzN6obtlo9sET0sErtq390htR3AZgQ2sMcaSzYQj/zLt5/G1684mntNgICYDS8fiYvY860yGKBNZa9WhmtbibUihgn1Ghx2bKIS4XVJ6GVH87xf6nZAT5lnHU8iE7UHgtSdsMwzywLgvu1bpO6zA+1oEOSerX4OzJqu0J8r70us7+xRoRxAxEiC0WYoIXeLq+YQ3V+XCwVF1fReyIAwVJeRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y8zN/3b/Q8r92J3Yt/Wl5y9kTSME8rcJlig9GdovE0s=;
 b=eGT7eQLjX4iTLB40g5LcO1DBZkCtevqkFRwubDwHE3h3ZqHc8mjuyFlHwNl404PAUBpbIJJ5JovBsj43lnOv8JgSocqR8sKmk5pCBzFK0GHT6q3EXLszggj+MePUQ0IQZYWJWhW43+QtLc8fTK6jYmw3hAXE0b50L8ZjBeIOkmY=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB3807.eurprd03.prod.outlook.com (2603:10a6:803:67::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Wed, 22 Apr
 2020 15:58:49 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32%4]) with mapi id 15.20.2921.030; Wed, 22 Apr 2020
 15:58:48 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Cake List <cake@lists.bufferbloat.net>
Thread-Topic: DSCP ramblings
Thread-Index: AQHWGL7pYLom/V2kdU2rGX7OdJMk5Q==
Date: Wed, 22 Apr 2020 15:58:48 +0000
Message-ID: <F7A06AF9-12CF-42BB-8935-29F784CE882F@darbyshire-bryant.me.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5460d839-d2f9-4522-ab01-08d7e6d60baa
x-ms-traffictypediagnostic: VI1PR03MB3807:
x-microsoft-antispam-prvs: <VI1PR03MB3807AFC51920AF3A0902A753A5D20@VI1PR03MB3807.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03818C953D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(346002)(39830400003)(396003)(136003)(366004)(376002)(81156014)(66556008)(6916009)(8676002)(66446008)(66476007)(66946007)(64756008)(66616009)(33656002)(76116006)(91956017)(36756003)(6506007)(2906002)(966005)(71200400001)(3480700007)(316002)(6486002)(2616005)(6512007)(5660300002)(7116003)(99936003)(8936002)(86362001)(508600001)(186003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h9qwT1jSBPFtyPK70M9o9mlSvc9b2WHnAawzOMlLkH3eZJYWSoFQ1DCAvKB7vOVgKi0d+kD2h4yC/ShntIo6v0gp+wiinHYDpQCoD+PhP3xF74PekLHv6Rp/emIjJss16PddKS63qlnhn89XNY6ur08+H17efmq9Z/WaQE1cMsrtXOuC60qAja/OibqO8o5nzI5yoFoDCi0LhHsTEIbYw0wopuQSBt1mwCgPRIGLP2O8L/wdFZn1nc3K12kYjDCq/eDoroRFIyrgdMWkGUPY6eBFkUpT4McxcT1LmpTi2+SLFoJVUbCcNpCFkkYiO7lmu+H+FDtz0Os945pJHoRVkeFpfpvZ3wO1jgWjvcAkvWvMoIjsoOzjRIjvyJw+U8xMdorYog7I81CdI66yYII1b7tUTyAIGfmHzcjk4+QVLbxYwNdZ9zUhpDVUZRabX9uhupfgEzxybG/xUVI87FwjOEyRqtJbx2L8h9G87IF2zWQ+wX5/Oxg/VJ78jAbX8bonF3Ve/oWa3vajn4za8RZ9Rg==
x-ms-exchange-antispam-messagedata: nvkM7dnSIuk9zWiqNNyTOBibcOvsnjUne5KMkSoMPhz93BgPVqSMmwQ4i4GCUXh9SZTtb5PaLqCGdZTj1C7sPdolezGSgHTORVb4JwEm5Zo7wLyqbKGZQXDk99WLPDVoeZx+1LZb2dmUZng+l3CMK/N9s49Bw70eUxnspTvnwlSAwXW1dlXVDDftdcWk7XFo
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 5460d839-d2f9-4522-ab01-08d7e6d60baa
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2020 15:58:48.7989 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s4HdQ3/pOx1KFbGn2DHoJoKPL7gh0IMke4rKwQP0VHMMmb8WARLY+TxTHlnY8Qps2QrE/oRMdI1YXQmBIXKk3W9jUnhGdMMLq3d/JlPdq2s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB3807
Subject: [Cake] DSCP ramblings
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7003785573223938386=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7003785573223938386==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_BE5AB9D1-A44A-4C59-8FE2-796B214521DE";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_BE5AB9D1-A44A-4C59-8FE2-796B214521DE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

During these strange times of lockdown I=E2=80=99ve been trying to keep =
myself occupied/entertained/sane(???) by =E2=80=98fiddling with stuff=E2=80=
=99 and improving my coding.  This started with an idea of learning =
Python which was great until the on-line bit of it ran out and someone =
posted an idea on the Openwrt forum about graphing Cake stats.

That had nothing to do with Python and involved (new to me) technologies =
such as =E2=80=98collectd=E2=80=99, =E2=80=98JSON=E2=80=99, a bit of =
javascript and my usual level of cobbling something together in =
=E2=80=98ash=E2=80=99=E2=80=A6. So that course was well spent :-)

Anyway, data was collected and graphs produced in a very small =
household.  What=E2=80=99s immediately apparent from those graphs and =
cake in =E2=80=98diffserv4=E2=80=99 mode is that very, very few =
applications are using DSCP at all.  Most things are to port 443.

I was also a little surprised to see that my DNS over foo proxies such =
as stubby & https-dns-proxy don=E2=80=99t use DSCP coding.  It surprised =
me even more to see RFC recommendations that DNS be treated as =E2=80=98Be=
st Effort=E2=80=99.  Now in the days of udp only and no dnssec (with =
fallback to tcp) this may be good enough, but I wonder if this is =
realistic these days?

So putting aside the discussion of what codepoint should be used, I then =
wondered how hard it would be to actually set a dscp in these =
applications.  And this is where I had another surprise.  For example =
https-dns-proxy uses libcurl.  libcurl has no standard =E2=80=98in-library=
=E2=80=99 method for setting a socket=E2=80=99s dscp.  I cobbled a =
workaround in the application =
https://github.com/aarond10/https_dns_proxy/pull/83 - it works.

Next I attacked stubby, which uses getdns.  getdns doesn=E2=80=99t even =
have a callback or parameters passing so you can set a dscp on the =
socket from a client application, pure =E2=80=98hack the library=E2=80=99 =
stuff.

To be blunt and on a small sample of 2 libraries/applications, it seems =
that DSCP is completely ignored.  Applications signalling =E2=80=99this =
is/isnt latency sensitive/bulk=E2=80=99 isn=E2=80=99t going to happen if =
it isn=E2=80=99t easy to do.

Apple should be marking facetime calls as being =E2=80=98video =
conference=E2=80=99 or whatever.  BBC iplayer Radio apps should be =
marking =E2=80=98audio streaming=E2=80=99. But every f*ing thing is CS0 =
port 443.  And I=E2=80=99m wondering how much of this is because library =
support is simply missing.  Maybe gaming apps are better? (I don=E2=80=99t=
 game)

Right, I=E2=80=99m off for a lie down.  Sorry for the rant.


Hack for getdns/stubby

diff --git a/src/stub.c b/src/stub.c
index 2547d10f..7e47aba5 100644
--- a/src/stub.c
+++ b/src/stub.c
@@ -52,6 +52,7 @@
 #include "platform.h"
 #include "general.h"
 #include "pubkey-pinning.h"
+#include <netinet/ip.h>

 /* WSA TODO:
  * STUB_TCP_RETRY added to deal with edge triggered event loops (versus
@@ -381,6 +382,9 @@ tcp_connect(getdns_upstream *upstream, =
getdns_transport_list_t transport)
 # else
        static const int  enable =3D 1;
 # endif
+#endif
+#if defined(IP_TOS)
+       int dscp =3D IPTOS_CLASS_CS4;
 #endif
        int fd =3D -1;

@@ -390,6 +394,12 @@ tcp_connect(getdns_upstream *upstream, =
getdns_transport_list_t transport)
                   __FUNC__, (void*)upstream);
        if ((fd =3D socket(upstream->addr.ss_family, SOCK_STREAM, =
IPPROTO_TCP)) =3D=3D -1)
                return -1;
+#if defined(IP_TOS)
+       if (upstream->addr.ss_family =3D=3D AF_INET6)
+               (void)setsockopt(fd, IPPROTO_IPV6, IP_TOS, &dscp, =
sizeof(dscp));
+       else if (upstream->addr.ss_family =3D=3D AF_INET)
+               (void)setsockopt(fd, IPPROTO_IP, IP_TOS, &dscp, =
sizeof(dscp));
+#endif


Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_BE5AB9D1-A44A-4C59-8FE2-796B214521DE
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl6gabgACgkQs6I4m53i
M0pgdBAA1Hjdb+uLj+05fT8PoNVh4Rs7GUQ/IIMR4ONjiKTT80dQD1FavD2qMd6g
oRmtM1b0r/EkmO7QGR/Dc6Fnoo8I968q0DwtuIUw3cz4KbeX/FWOMs8AH6qhP6Pt
ilBn9TuAt4e9FiYD54jAmg7uoV8rvNsEfzAlj/VW9F6Wn9GxCb4M7b0bTjl1U5Nw
MALJKX75Q5Kgsh0zYXUbZqh8uyBNTGbGmHk4v3iD6/dhYE4t13DdHVaySWH7d2+7
jevLqOfOcvVDLlGaGORjXTu8Sad8WCGcBygwM0BbdelE1uDxO5RUKhaOheVsKC9V
mLkrFeHTiyvTXsQo/QwffOy5W/q3gBEanXgB4QcUmWRCd3mj9MeMkKMF4ViHpFIB
5gfxTryGW/Qrx4sqR06HAmtkBPicX/VAQ+soheE1/9BvajhvZD8sHY+Qzn7EpriH
47CRD5/0MNMGEKilz6YIyjNOE5pa6encmRdwabQg6Uvdycuoxfpp8I4J+kQIhZD5
CldmNJr5mAx2aJk+Nr6qgzIBqC7f/1mNbjyXuS6ql2imcLkwViLgpvi1QmgyFFhD
Ms6tmWEuAL5QX1WnuWhisPq6YgIf1OQgXEQJW2G83gb3zHuGDwV9PZiVTTNfOmxZ
6S/kPiZQm2LsRKzxxjlOBJ+8iiNGzADtNGSTXrYsg+xq7BnUB/w=
=9v4Z
-----END PGP SIGNATURE-----

--Apple-Mail=_BE5AB9D1-A44A-4C59-8FE2-796B214521DE--

--===============7003785573223938386==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7003785573223938386==--

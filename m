Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 822D3B9F21
	for <lists+cake@lfdr.de>; Sat, 21 Sep 2019 19:14:53 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AF4F33CB3A;
	Sat, 21 Sep 2019 13:14:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1569086089;
	bh=JJsOM97y0X+cBoLngPlLrZRIN/qS9x7hfqnA/4wn2fs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=G51ZMtx0b5etyic6JHXUOqZeoXiayp0I5R4F7qquqlG53i+/P+Ci5XSacfKhGIlfY
	 QFE8UOLdH0j7iobg02NcZX/G4izj7K3oEsDXs3uaY+DOcdg3OqFN1ejHfHdkPA2+Oj
	 noxLyW3SPMJrKFNd7HIYFrOT9avMMzVAOLTc5oYxUxWqjfVqe5+eXpgs2dW5auEuFa
	 FW+D++WzPHAr42UtPghP0eBJf3Bb7EGAWE4jMC1i0xUUHhDco1UM+IESoTy77mq+OD
	 h6NeQsSNLdroebOq2sYtgqMmWrveK84qNj3nq+mH3qVG9ddyf4e/SuYuItRq0KdTgI
	 JM7KQ5LDlgmAQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr130077.outbound.protection.outlook.com [40.107.13.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8020B3CB37
 for <cake@lists.bufferbloat.net>; Sat, 21 Sep 2019 13:14:47 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QIbrpodvOSgLnc3lm6xzpl03OP1EmJxW0P0BebQNMbxHBs9xQ960CtadxVA1Ko9UyvXFdR2dHircJJT0lysbB09Vtsgsk0mbO8uWzKs/XKvPCv7V0QRl5x4oPkLlSmjAwS0F8XlzCZ4/f/bObc1fiPfC3gQhTdczQLmbcKhxy0Sl1IHil2HbaBhyu39LhISm/veOlIMFL/TFqb6kZpUKzy7ilLAxBkizDKo+tc+bcsRZKWWNNAqov3AM57Sn186qqbTC0NW2AMrLuhqEstLlsnSDjEgEyL4RzNJeCz/fl5d+1A4jpqvWlu0syhhlrmNaD7xAL9thKRsxl7a6EFb0Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BFXxjDVVGkUum4ZlR0x31qxJFAsAEcu8sHJ4aq+nYS4=;
 b=X+cyMZzVXY97EceKjZiU2rTF3ISw8lwoQFMoSrZV3Yzxvq1e+auA3ldMSflChTc125kzcwRF2n2AKtoJyDJ5zsdh6H/MzHmws6/4h9p+ucz0lt/7CD4A1puSyhoGcZoMA3qsdjeDcTb9qXzPJRaQ17BJKGEqIVoyZEuSdW+Brg/DvzbZeeAt57YEoIFAHDJIEIr8RBoEUc9WxBAzhwO5o8Z/C86LbFxdgaxlQe0nAan01TMdUBAuV0iRck/DUN48bsxESNgxKuEzG1bAYeGrEhA/xznUHTdSHEqV7YA3yywNweQl4+G7t+FLN6sQVVzsk3iFsks5hUVSucsnsIOZNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BFXxjDVVGkUum4ZlR0x31qxJFAsAEcu8sHJ4aq+nYS4=;
 b=aY+RcA1TVrqp9j4JpAyqBZQhLnFEwDbkNhCe0omEo6mHRLewEcpffnOX6Yrgsq3u6GInGJQ5oMYuQA+tfp7Hlap6xAjP3l9ATLgMp2jlka3GuLqrcb4Z4ClTc8HUk4Lb7NiHO3A/Hvko2vy+ChU77Y4E9R3vkbswznWvQVZk1Zs=
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com (10.171.106.21) by
 VI1PR0302MB3182.eurprd03.prod.outlook.com (52.134.11.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.18; Sat, 21 Sep 2019 17:14:44 +0000
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::21f0:745c:9024:8541]) by VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::21f0:745c:9024:8541%6]) with mapi id 15.20.2284.023; Sat, 21 Sep 2019
 17:14:44 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Cake List <cake@lists.bufferbloat.net>
Thread-Topic: A CAKE success story
Thread-Index: AQHVcKAPuNGs8VGWckSEnoDSsbhwpw==
Date: Sat, 21 Sep 2019 17:14:43 +0000
Message-ID: <DC405D03-7901-486D-BCA7-7A0553A502F6@darbyshire-bryant.me.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [193.240.142.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cfec0428-6a55-444e-ea20-08d73eb73254
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600167)(711020)(4605104)(1401327)(2017052603328)(49563074)(7193020);
 SRVR:VI1PR0302MB3182; 
x-ms-traffictypediagnostic: VI1PR0302MB3182:
x-microsoft-antispam-prvs: <VI1PR0302MB3182F28E3C028B2D76FFE117A58B0@VI1PR0302MB3182.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0167DB5752
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(39830400003)(346002)(396003)(136003)(199004)(189003)(53754006)(26005)(3480700005)(8676002)(81166006)(102836004)(256004)(6116002)(5660300002)(316002)(66066001)(86362001)(33656002)(8936002)(3846002)(186003)(2906002)(6436002)(25786009)(81156014)(14444005)(99286004)(2616005)(486006)(99936001)(64756008)(71190400001)(305945005)(76116006)(66556008)(14454004)(7736002)(508600001)(6506007)(6486002)(66446008)(36756003)(71200400001)(91956017)(66946007)(6916009)(66616009)(6512007)(476003)(45080400002)(66476007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB3182;
 H:VI1PR0302MB2750.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pmuBjVWu1hoROdoawBdOggdFyTCzVhcMxO3Lm33gbIFB21eRAxnpAssaxqQTqN229Z+ivFtVQ6IztO77kl7eQ1MDfYT07F9s9hRySfI2JYIi73yIUicUL5HTmVMzxQTT/HWhs58AROdtrmIXJxjbgRbW/JxilM9DnL6oARRXsC7KSjZ6rqbptFQz/8G1NJihb90r0LMfExPeSwN8SZoC/e9vXiY9MQBH34m8xLAWjJmDafHaeOg0hjAq5iQ51kHZcc4ONWfoB3plc0SqPw5BbJSUeBWzYeH02pbutFghCBb/UCoUPojN/4xKWEiHZnStM/sho1MzRxtL4fnIZqUTMDxHtvzMp+3TRj4ISCdavKSBTm9Gyghx7oCjLWtvI7aN6sSNJHC3aUAsNFxehGLGqVS+g6sVHhywtuvdAbYtv9U=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: cfec0428-6a55-444e-ea20-08d73eb73254
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2019 17:14:43.7339 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ObzvGpb15rPFXkTkyr7IiaWB8VXcHNfMmMArIBLNencp/DBlEsOeip5Yy8FNlzcpxa9HUcMs9aj9d5Ov5XiaN2RSqm+G0LrrCc45+9fBUjc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB3182
Subject: [Cake] A CAKE success story
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
Content-Type: multipart/mixed; boundary="===============0119706241766619741=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0119706241766619741==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_566672BC-1261-432E-8D62-4094162A415B";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_566672BC-1261-432E-8D62-4094162A415B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi All,

Never afraid of sharing my mistakes if nothing else to help prevent =
others from falling in to the same trap I offer the following lesson/s =
:-)

As you know I=E2=80=99ve been working on a convoluted scheme to store & =
subsequently restore DSCP values to/from firewall marks.  Linux 5.3 =
features =E2=80=98act_ctinfo=E2=80=99 for the restore side of things, =
the store being an out of tree =E2=80=98hack=E2=80=99.  I=E2=80=99ve a =
cobbled together sqm-script that combines the ingredients in a suitable =
manner. act_ctinfo is a tc filter and perhaps surprisingly I used an =
instance of this DSCP restoration on both the ingress path AND the =
egress.  The egress path is there as an =E2=80=98optimisation=E2=80=99 =
e.g. we go through iptables once, decide on a DSCP value, store it and =
then that value is applied to all subsequent packets for the connection =
on both ingress and egress paths.  The point is to exercise CAKE=E2=80=99s=
 diffserv capabilities a bit more often.

I use CAKE=E2=80=99s diffserv4 profile, mainly so that I have somewhere =
to de-prioritise to rather than trying to prioritise everything up, in =
other words I try to put the unimportant stuff in bulk and let =
everything else stay in best effort (or video or voice if it=E2=80=99s =
easy to do). An example of de-prioritising is MS Onedrive.  But I =
encountered a strange issue, namely that on my 80mbit down/20mbit up =
with onedrive uploads going I could only get about half bandwidth in the =
download direction from onedrive.  Traffic in other tins was fine, but a =
onedrive up & down in =E2=80=98bulk=E2=80=99 would be less performant.

Fiddling around proved it was something to do with the tc filter =
invocation, especially on the egress side - even if I got =
=E2=80=98act_ctinfo=E2=80=99 to do nothing performance still dropped =
off.  Another symptom was cake=E2=80=99s stats only showed a single =
=E2=80=98bulk=E2=80=99 flow, even though there were at least 5 flows.

In a demonstration of what happens when you cargo cult existing code, =
this was my =E2=80=98egress=E2=80=99 tc filter invocation:

$TC filter add dev $IFACE protocol all prio 10 u32 match u32 0 0 flowid =
1:1 action \
        ctinfo dscp 0xfc000000 0x02000000

And this is what it should have been:

$TC filter add dev $IFACE protocol all prio 10 u32 match u32 0 0 action =
\
        ctinfo dscp 0xfc000000 0x02000000

I haven=E2=80=99t delved into the tc man page yet, but I suspect =
=E2=80=98flowid 1:1=E2=80=99 overrides all the flow ids, so cake was =
doing the right thing and basically ignoring flow isolation - yikes!

There=E2=80=99s a similar incantation used on the ingress side of things =
in a few of the sqm-scripts - I suspect they=E2=80=99re harmless in this =
case because it=E2=80=99s part of the IFB redirection and effectively =
gets ignored.  I removed the =E2=80=98flowid=E2=80=99 on my ingress path =
as well :-)


This nasty has been lurking in my setup for a while now and I always =
felt there was something occasionally odd going on, it=E2=80=99s now =
fixed!


Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_566672BC-1261-432E-8D62-4094162A415B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl2GWoMACgkQs6I4m53i
M0rUKRAArs+CDchpXocw682XSPIh4MBuXkjmXpEPnMvDQwO2SyXe6j72J/XjACbO
ebTGi/l40SfGj9/zQtoTO+8t8F3fSRG6Po2WUUSbIb83tQe31J/Z67FFsQ2STqDT
lqJ+I65oQECr+0arnMf2Ju4KEkweYD9o2fBvtEiVXbzA8byRUA+Swz+2QjuNtJgQ
N2r7DdM8Li7VGBJH3DGCd6Titdjh/TDIYivMVZu8w5ODt570vbrvjMdjhtqIEeVA
j1P7panhu6YewMqDObcZB6BcOt4Y8DLGlbpGaY8TYXBIr1NKmdxfZhdBN/mxpbOS
GH1rmzY4GrErLkQOM06U3zv1dE3bWhfXROxa9fSY/DNh6pz4eC0yIYGqX5uneaa/
s5lOgxvJPY5eYs9pMhM/LsFUZpQ9XBHAuhiaaVJ+WDWD+A/cRBy5ZKhhFy5UxPQE
XQ3LrpRN5qzULtHai5wNgEhQkDFSinpsJcZ8arQU/C7o7jHz1mUZb6ugBpGr1yhy
Z9dsVvzyaBmgWVbAB82KHNRYTVqhsli/F1nh0GhKbqx2DulIkJLjxDBtuLQ9CEKt
CFeZPjPG3F14KhrkmbCl5zQrteO/oTIxiOeK1HNpTPt1AJypciUCoj1ds/enC4ec
QHIGc/6LCZAdgocEhVzA4bxJVnce0sHMWJ3uC0wENVoE11EmrBE=
=NiZ0
-----END PGP SIGNATURE-----

--Apple-Mail=_566672BC-1261-432E-8D62-4094162A415B--

--===============0119706241766619741==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0119706241766619741==--

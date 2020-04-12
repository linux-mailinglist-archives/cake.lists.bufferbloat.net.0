Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E62C21A5D76
	for <lists+cake@lfdr.de>; Sun, 12 Apr 2020 10:23:47 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2E3843CB38;
	Sun, 12 Apr 2020 04:23:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1586679826;
	bh=RUDM+Gk74ONkVnJVuJF33hbmeXRb7C8WrJNTkp0yDsQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TUWfTosIeNYVRZqBRoIh9mvqqWtx4xmCetO2yVwkHQaEF9PYThch9lfF7BmzlkBfr
	 W/Ur61E29aEixK1cEBzBshzNtWFB17ZBhSO9O47h20uzStuFEB+di9QCviN0n5M74A
	 zONcT+pD/X1EQpqvH83D/2R3n83nOD7zlxC8kz4oP9uHqcJLsEs3rWngVQM3wy1Qdg
	 gLmKudyGhTdlqxhouaZQLOvhWcbayi5ON8QmeO2rvf5hJrlEsBYIeI4tazCboijiKv
	 es4jRXGB2bkst6A2ljjDMLtHB98Enj1g9L1hGB1kAMJlzhVJfa64/2cyqLuBscxm4H
	 GMfnBlvUQZnAg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr10041.outbound.protection.outlook.com [40.107.1.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CFE113B29E
 for <cake@lists.bufferbloat.net>; Sun, 12 Apr 2020 04:23:44 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lLF08AJc4qi8ittrhuJFaaLBKuL1XOr8g8QZ41qPP/2kryXdg4jTTvTyLZzqx9kovUYMRTapG2CpBiMfP8RZYD90WYTApvnpsy5BiB6wqIhf9DZpTY2fhMNxmun35+EYrCgcH/n+0wVtVQkpNbQujPuo3PKRWrypb4UQd/KS2lH/Eg/x6RGB0Feu9zI5QsFymg2HXSHZtEOgvURWHnOc9GJQnupdSF/VBFF+17BhOHrgPWje1tNiv4FAtfYbKJiJnrD5Bddc+fayBwAgyL+cb+8GaqNLdntwGImpK9JP/opnEPs5WZYOmgfU3rIU66M4Zk1nbDGnhJfRdzng8mqMfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8DKHjhC7ZHGPbe7v++NGxi4OyHDwdbdS5YkCPkEP5Eg=;
 b=n1KZGU8IkO7p8HzXGqwtrxj9JfVlyvtydFQSws4SXc4Vy0aWusmnM3p238cdSzwyiUgsDVYXfqVGikJZCRDN3oYG7AVJeQTHh9Xq37f+66wDh1W8j6sMZq95oc4pNvFXcmdiPLLBDb1pTtmSpPF9/G9TxN/LLb/GG3KdnOBMjVZbZJNPCqeoVuYrrfZQqEyvKGfqOCcdL9zowh1U9VX1FYzoIDEPRwtZ03Z9QmGkyNROC3bv6PNix3O6c8LkSDMmGL7VDWrkl+BRFyBDcWl+ljjtwYeGJlHZmgpXZp9EzfbAQS3bm6PDXsWDCVTUlQnXbOogOcYWWxP/5e01cBfIFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8DKHjhC7ZHGPbe7v++NGxi4OyHDwdbdS5YkCPkEP5Eg=;
 b=f2Mq1W5iY47zSasI+scu/ScirR7qZmHlZNP5czfKmJ0GWQaiUxkIePuZrpyf0c8juDXgB7VEdRYobcf4cFppbLjVSFgN9LRaVsZiVETC4FxV6Cxkorn5KmH9ixv1761rOZE0o26Um26E/iWvJ2hjvMVh+DHnEaNmOGAmJwZZ6GA=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB4543.eurprd03.prod.outlook.com (2603:10a6:803:61::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.16; Sun, 12 Apr
 2020 08:23:43 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32%4]) with mapi id 15.20.2900.028; Sun, 12 Apr 2020
 08:23:42 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Jonathan Morton <chromatix99@gmail.com>
Thread-Topic: [Cake] Thinking about ingress shaping & cake
Thread-Index: AQHWDzo/gMHXi5MwAUO3KH6SKw8kfqhyZleAgALCjYA=
Date: Sun, 12 Apr 2020 08:23:42 +0000
Message-ID: <F8BBD54C-8DF3-47A7-AE3D-560DD1A34449@darbyshire-bryant.me.uk>
References: <7BD9FB5D-7577-477A-9FF0-7BF90043C27B@darbyshire-bryant.me.uk>
 <B37EB18D-CA01-464B-8924-7864FE9A327E@gmail.com>
In-Reply-To: <B37EB18D-CA01-464B-8924-7864FE9A327E@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9ccebb9d-e08a-4ef0-0596-08d7debacfd9
x-ms-traffictypediagnostic: VI1PR03MB4543:
x-microsoft-antispam-prvs: <VI1PR03MB45439F326697CD870B4BB166A5DC0@VI1PR03MB4543.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0371762FE7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(396003)(136003)(366004)(376002)(346002)(39830400003)(91956017)(66946007)(76116006)(66446008)(66476007)(66616009)(64756008)(8676002)(81156014)(186003)(66556008)(86362001)(6506007)(8936002)(53546011)(6916009)(316002)(36756003)(508600001)(33656002)(71200400001)(2616005)(6512007)(5660300002)(6486002)(4326008)(2906002)(99936003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kASbm91fdL3WKJXw0YjskPbRiD6+/H+OY7rkjueHZyY5+VxHJmBIWjRrKGLZjAZnd463bt97MOM5t0NByEqkU827D2U2sQaVpp9mFlGNj7R7L+Y6t9J20mVxxP56BoTkYUDW0WqfZM0vKNDeY3/1URi3xDbJ3mBlptOdBjgMpqv6ia507ssma0tryRV+Zx9Is60txSLG/UGwyRZwhYf1inEPC9pzq4ePKHYelnc3c+VnBNlXGGswP34isXcrO3eYBKxBfiwrSqHeXP0t0XRLFSHHgxPSrj22v0atsnTFUtK4M1QZhmB7itszfJqf9vINJ0cEw2EZrE5rlOQY4EhyYX6lozVh/b1FmfemINEpDNb0A3svkGdL0DVYHNFwh0Gq6fPvaIdJHJQiVojv1ENbvpYeoyaS4+gF/R6w7UwJu1ubOtW7FN9PWqxMr7ZiVsrl
x-ms-exchange-antispam-messagedata: 4g8KAWaPWa8ftGgrU+BmAoN51tOYgbO7jeeTgaZ7QLQdwIggguZFYQX5vwr2VLJxh3NHoLPaStq8rwQa+pzqqs7o5aTciVQQS3YTPPe/Y+kxxfo1orn8849ScQf0nGCn2uYCzx8KqMDjjUDCRnjddrdG+lvlHjysTT9KE35j/+yHTNqi9dg1ms/sIDRfAf+2
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ccebb9d-e08a-4ef0-0596-08d7debacfd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2020 08:23:42.6135 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NhLK9FqSUxI6IIeOUVfnQak8zPE46VwTjypZ9OutBmWu88EpSVMV52YGL6RgT/6jy4jIXL5CDJNAy3PNBuXh6M/u53CcH/Anvo1N4km+i+A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB4543
Subject: Re: [Cake] Thinking about ingress shaping & cake
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============6396753343330607803=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6396753343330607803==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_5EBA7805-A5D5-4869-9C92-6CF62C216CB4";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_5EBA7805-A5D5-4869-9C92-6CF62C216CB4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 10 Apr 2020, at 15:14, Jonathan Morton <chromatix99@gmail.com> =
wrote:
>=20
>=20
> No.  If the dequeue rate is never less than the enqueue rate, then the =
backlog remains at zero pretty much all the time.  There are some =
short-term effects which can result in transient queuing of a small =
number of packets, but these will all drain out promptly.
>=20
> For Cake to actually gain control of the bottleneck queue, it needs to =
*become* the bottleneck - which, when downstream of the nominal =
bottleneck, can only be achieved by shaping to a slower rate.  I would =
try 79Mbit for your case.
>=20
> - Jonathan Morton
>=20

Thanks for correcting my erroneous thinking Jonathan!  As I was typing =
it I was thinking =E2=80=9Chow does that actually work?=E2=80=9D  I =
should have thought more.  I typically run ingress rate as 97.5% of =
modem sync rate (78000 of 80000) which is gives me a little wiggle room =
when the modem doesn=E2=80=99t quite make the 80000 target (often =
79500ish). Egress is easy, 99.5% of 20000 ie. 19900, all is wonderful.

I=E2=80=99m wondering what the relationship between actual incoming rate =
vs shaped rate and latency peaks is?  My brain can=E2=80=99t compute =
that but I suspect is related to the rtt of the flow/s and hence how =
quickly the signalling manages to control the incoming rate.

I guess ultimately we=E2=80=99re dependent on the upstream (ISP) shaper =
configuration, ie if that=E2=80=99s a large buffer and we=E2=80=99ve an =
unresponsive flow incoming then no matter what we do, we=E2=80=99re =
stuffed, that flow will fill the buffer & induce latency on other flows.


Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_5EBA7805-A5D5-4869-9C92-6CF62C216CB4
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl6S0A0ACgkQs6I4m53i
M0pSsg//VWZE+jgipJuAbh8pWZHoIQw1V4aTfw2HXJ6kBakFZxvicj/8YO94RZ3l
mcY3DI21to9IvSw0KMdioZubTkT7nnZFTmgYABpPdlbRQZlnK0f3UZw6vAz+HeKh
+DuZxsi/3VpFys2wTw5GEyhHquzoKWxZhSu6/6FRkINtF5rujes7elkWvRGunO1A
8NTGSY3fw1XxAeES92TCRVW0+4oeARHSTUHSEm7Gg15IaMihkubFjEkgjn1bcZeG
Iyy4gGKvXAFIBBqInNOelaw6oS/I6Z94Qdgvdih+FrWYqsa1akTM6iQkbzfaS+Zu
QBRi5XW+u8+kx8/iwX5vRWSff1UUFMJCBzwJgQF2papiDegBIVmwgSTlYIKfWiLp
nYurG9OffxGgaU7hqXuLR1ZB4QOavPtL72DD05UUvS86EKkuRYrqKMdhI7U6YUm7
SxqhIHLFUk1G0rvCYY67e/0LVU1SxwUQOPiA60NlperwCj5os7ldRMKBhCnMaiGD
frvjrJvPxI+mouKZ5z6TwWatnzDSTbiKDRFyb7ORfkM04ZA+qMkRQnKoGqmwdmJm
JkgAlpM54H/RXxzGiiM5RHbtJTcOBYCdsjFsA8jyqrqQIFqPFEK+DIOoMs5h5J3k
vasN8AQ4s0BxgV+EoKfdPCU7Cz8oLXckLvpzM0zFwTPbbpYj2kM=
=9Hr+
-----END PGP SIGNATURE-----

--Apple-Mail=_5EBA7805-A5D5-4869-9C92-6CF62C216CB4--

--===============6396753343330607803==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6396753343330607803==--

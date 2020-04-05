Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E5619EDBE
	for <lists+cake@lfdr.de>; Sun,  5 Apr 2020 21:56:49 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 31A583CB39;
	Sun,  5 Apr 2020 15:56:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1586116608;
	bh=1wY5/IfOSilhmUYwNTN/p4VhP+5F0ibP7UIxgijBN8o=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TXTukdFGH7W6emC/DHsBLz42sW7wnjBXfLQZHnLDFv8kvojBhqAJemSR5XehMQNhb
	 p1bI9mTr02WW3Y3PUZJe6mpQglOGD351MppnM1znc7JDTVKd8zJi3yaYLCGvkYNS8L
	 k30yf2zqnBsag5CGrvUZqCtgUg3tXxXWTlT96OBUjZVWfiD6JIiv8FRNdeKzR9qbEN
	 +bakQx+gIChik1OvBfO/jVkHKiFsvQTWG/62Q96VvcqdYGNL3hjJheZFiERHnxWYlk
	 MFxA9Tc9V9L8xxiyvvIKXE35aCAnrepPycDbfKv5IA+I4UY11uDpboMaEAUkxBb8Pb
	 Hhj8N1XCMk66g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2081.outbound.protection.outlook.com [40.107.20.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 97D553B29E
 for <cake@lists.bufferbloat.net>; Sun,  5 Apr 2020 15:56:46 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TqMPcggx0SQhR6nz+gdlTygZ8WwCuRKsVmTZaQtngPHvGQDpp+2hhwWiLE8iK3hpiYoyRX5OrdW/iNLJ4L0lUt2UwTub/d2mRezBhKF5Qs1N+/rjeHkEnwlBGX3VenS0HcSdghSlNM+w385ob5b/D8Cu1OH5JBKj2X3tVtrHXIgnvecoBlm841BHto/1kiGmQ3WI1rQylZt2h8dzede+zR/kkPvFAizhQc4wmgKMCmixxqkLMxD5eJwkhjf4KYZLZh4f3C7eY3IlD1O0efLzGwZbokCwDQRYoTCMGWtvEBHm4YNJEoiIid9IIh9PCEc+phglQF3uw5eylUZWDuUjqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3dPehvc9tpRu4Qt2XGTHTNi1E3r3SRc1sdkuINZG56A=;
 b=MtJWw/pP1aWw0bK8f1qvNShkXy75/DksVksfQttthoHA/8yamv59gEHvCed5ottUv87eBBhTjtiRhQAe7r/PKsJOy5VJHVtAIEnNrEejCK5xLmYnEccqBl5MWRDrzXLyFL8Fukus1gQQYCe3zh3G540vnq5Wu5ylNenU4taDWoB7WXBrBQGoJwEzcyeaKi9BNixrAUlOSu+9UEgcLY+S6T1kCuVRpv+xV2SPyMbCHbo/M4f4jRg6QaTWJDhEB+qjmtomX3AygidEfDS/CzXFnL17fTKzwrGi+0u6Ki2aMN3QcL9iswXPRCkETE6eHBxUWKvZZhcVXKbOmf1BM4XnLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3dPehvc9tpRu4Qt2XGTHTNi1E3r3SRc1sdkuINZG56A=;
 b=Q1nF0Z3ZTL3+qH02RUaUJ9UgKRpJqMiykJGHxu9cokSIfhSbA6lZ4utnFE2qSnqwPuu/bvDh30H1vuWS16HyBtnstDUWCewKrNzb5wOO93ST/98tWcGtdrYxQPrOrlMvZzLpQnR0DnibUC/upxAAvCchJmuznWpzS8M6ek2oDO4=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB4912.eurprd03.prod.outlook.com (2603:10a6:803:be::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Sun, 5 Apr
 2020 19:56:43 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32%4]) with mapi id 15.20.2878.021; Sun, 5 Apr 2020
 19:56:43 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Dave Taht <dave.taht@gmail.com>
Thread-Topic: [Cake] cake and nat in openwrt... on by default?
Thread-Index: AQHWCwEujspAfIL/Ak21duOCA3q/XKhqKZsAgAB8ggCAAEyHAA==
Date: Sun, 5 Apr 2020 19:56:43 +0000
Message-ID: <656F3146-1B43-41DC-963C-21770747E4AC@darbyshire-bryant.me.uk>
References: <CAA93jw62J_psLswMnisU4c3j9J=Q-HTDRO5F2q_+YRFqV+MtKw@mail.gmail.com>
 <FFAECE22-C1E8-4CA8-8ACF-8C49BEBE3DA8@darbyshire-bryant.me.uk>
 <CAA93jw5qkWxsA__+69em0BRT32-Ze42NH7VorsCW1TE_JAio3Q@mail.gmail.com>
In-Reply-To: <CAA93jw5qkWxsA__+69em0BRT32-Ze42NH7VorsCW1TE_JAio3Q@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fd70160a-cfec-4f0d-fb14-08d7d99b771e
x-ms-traffictypediagnostic: VI1PR03MB4912:
x-microsoft-antispam-prvs: <VI1PR03MB4912B106491D0B457D3B2252A5C50@VI1PR03MB4912.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03648EFF89
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(366004)(136003)(376002)(39830400003)(396003)(346002)(6486002)(66946007)(66446008)(66556008)(91956017)(76116006)(64756008)(66616009)(66476007)(6506007)(53546011)(6512007)(316002)(8676002)(8936002)(4744005)(81166006)(81156014)(71200400001)(2906002)(36756003)(33656002)(99936003)(6916009)(186003)(2616005)(5660300002)(508600001)(4326008)(86362001)(163963001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yJKtHSGPs+xFsUahBn5DGckmPv1aHkzBBToWVN2PLn05m4X+8lsHul924nSJtNoFvD9rkLwgW8guifTntI3Prk6Js9oDI8MEmjHdFO2PnFmGdtrci+/F4r9IZCY5Qi9aC1jHf8xT1X3WsJQ2Sjw8BSPDlOR+JzDi45aDKm6+/Pdvx6Quw9RAY6Wp0Rh1BJ9ot9fTizFG/2wuzCEWKVKbn2buFCkaxt99yAxKyU4PX2UZUetwj/3nqSfpAjqPpUjKMkC4csg0g/dQN+VtjIyo3ZtCYWkgdcJJOEexRwfgQXeKVgBUWNmGnCFQ4ABy37GhRm+pvwQBNuyI9DhVbZWcPFtyqk1jllFN1QXOahLCpEB9AOcUH1glmns8U3LKkIopre2qyG4qH8vcEgsstNJcOK/Bs7PVZk67NiSnviLuK7eaKUcm8kqeo1KYmNrvL2N5i9TPniTBvt6xuhs1dwhoqLIqLnjp+lgrmWvvzrDdz4qfB5NZQkevdhcgkeEN3f+q
x-ms-exchange-antispam-messagedata: Pq1ir16fznmah24oaY0EwUsKTdIn5shPJjo9P9iP0j7Q6U2a4i6tPIanF6lRKJnSb4e3s4GlFPUmxJVKkyGAF0dR9Yj+kcpAF5fqanQmQstzgUqW8cuj78oDQj7pWZ6/thy7LS8ga/MVWf34fRq5o85z+pCOLglRSFME7jvOzPDfWbU8DClRU8jm9GkgRflb
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: fd70160a-cfec-4f0d-fb14-08d7d99b771e
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2020 19:56:43.6222 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DQ2ndmssc+S9I5ZwQGkUOx8jnKXJ817oEwqWDAL3uQJLCYFCw5N7ozSGexM/FbPi9bYU2EUDJQ8592LcG2Ovdsuu49t0o/caZAz8p1uLLfI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB4912
Subject: Re: [Cake] cake and nat in openwrt... on by default?
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
Content-Type: multipart/mixed; boundary="===============7518458718285348406=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7518458718285348406==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_6968B6DC-FAD0-4A5D-B319-3B575816ADEC";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_6968B6DC-FAD0-4A5D-B319-3B575816ADEC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 5 Apr 2020, at 16:22, Dave Taht <dave.taht@gmail.com> wrote:
>=20
>>=20
>=20
> I'd still be willing to bet, then, that the majority of instances were
> not turning nat mode on, when
> they should have been.

If memory serves, at the time there was a lot of concern about cpu usage =
and (I felt) that every line, every potential instruction and cache hit =
was being scrutinised.  NAT lookup by default was deemed too much.  Cake =
ended up being =E2=80=98cpu heavy=E2=80=99 though I=E2=80=99ve yet to =
see a better combination of shaper, aqm, flow fairness, host fairness, =
DSCP awareness and ack filtering in one overall package, let alone one =
that did it in less cpu.

Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_6968B6DC-FAD0-4A5D-B319-3B575816ADEC
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl6KN/oACgkQs6I4m53i
M0rNbBAAjU+e3wpXtvD7zvwXpWJeSqhWvBOtFOQxEALd5uJRV7ADaEAvxEP1yy63
zDGfQxA+a64RJ6C0VUoEcoXR/NSgkHBmO5mXq8nWWqElniCBPUCbWdv0ThS1AnWt
bkgQ0bGJtmeMditYIOwmtsQWrXAnVJtSZ9Q5zVf7XYMwMZvmZxOIV6Wy7utdYTgn
zxHhUfus1k92JEI/P8IJ6GD1vv3pu4yHvb3whaaAJ89h3seOFlb1gGf2M7gX8bdb
S8dJDhdxrh7wCcfhrXegaHDbYyuQqgh6a996+W4NbOwK4TxnPwiQ524Zj/uMtaiE
JacUJ1Vvu9i7pOwbT8qEWUxG3X/Y3mEx119OVb3GROe2mEsfSBYguasiYgheeFZG
qndSdeNdCB7uDYb4JNHU1LAxHvbaEVQPgo3fYtKt83ji4QP5A7d8pjzWM+lt0qYH
ome8OvmLNQgO8RkTJCmgn1LT/qqdRUHGw8MBCf4Z15iw6jO8Be0UbYI52XMBUIuN
IHE1EJHiCSiPlCiI1WgAPAY2n6pRyhGp8Yd0tVepawKhbLBLoOyr0D1jydCZSCrZ
FSs328NY8FcPL0fgMCmW3dL8LpJUgGLi6UdwPrf8rwcCoyl3f3oCVipiV9fiZlc1
e58nCbsgr95zsbCqj5EGw3eJd4AqaOrxRGVyOVXVK1E7ZBSJjnY=
=tfLx
-----END PGP SIGNATURE-----

--Apple-Mail=_6968B6DC-FAD0-4A5D-B319-3B575816ADEC--

--===============7518458718285348406==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7518458718285348406==--

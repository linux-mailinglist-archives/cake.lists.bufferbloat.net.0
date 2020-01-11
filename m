Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFA31387C7
	for <lists+cake@lfdr.de>; Sun, 12 Jan 2020 20:02:19 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 467B43CB38;
	Sun, 12 Jan 2020 14:02:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1578855738;
	bh=N0unbcASIiAjhmThfp+hpFkIP4YF+BJW3SSPtLi/XC8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=onM1tIewlH0z3659bSfK7j59nrFva61jL3MM0D2/zY5h9JkHT2zOOU5q6kCcP54Ki
	 FpD9jDwktMZedw4o8PSDmq1anyvhx5HAP7P1SG6KKZxrt2Lu2rlVyJcckrZhI9+CB+
	 /revIjGQB2T+dp507eAtjFD1DFuxp77taEChHxEOVZY62Y6xReIaEuOjnmxsZUt1d5
	 HT9EXrEDHHWY1H7sVZfI0r+3yHnRvQHemLkCgZkc6Bzb+vgcV6iPQjp9t+8nArnmfE
	 tQDb6fFXEb2HUl+xd8ULt6zfusHRIQeCLteWtFsM99LH5lsELVEySW53zZHRH1W8rx
	 j2NGb7dQCEyXw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-eopbgr80077.outbound.protection.outlook.com [40.107.8.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1DBE83B29E
 for <cake@lists.bufferbloat.net>; Sat, 11 Jan 2020 16:20:58 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H7LHRRkrvYstn3RxARaSq7PJVK0IEyacpm//0zSVz3vJtAC8B+RM7I2UISMHljbPUufmyD3cY1BuLLc6fZprwrCJCgryAO47Io+4SblW1jjZD1/jWi8LhCdeWMhK0ABr59KkBnk3HAP7LtRmUk21K1wXGZY/xwgTiNbcgdxym2kNXhnsP4blqayFUGgVnyvSqZeMzzy/xV0g4zapk58oGKBOJUxV2V0KJKqphvtiHZo0gE1kyfmFyNJmiwAWSry7b8Zga9XotHsULJ+28bIeZISXHyhLZNCKCVVUslwkT42dlyLEh+xHEsUvDPNhGW3zCgYBrIkgGXn4wljHa64hsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+1rzS/M8SGQTSBx1yIms6Of3k604zT4vPoUxaBSCQaw=;
 b=ZfXuvGFMhA23fuhfqK56Q6f80UOcmnu0V1/NYFQ1mPYEjiIy/HIH6vtRB11mDX2GC9KyU7eQMj00kD528WtzHWOKjnkBCsTGh8wkrssebdq5r0uqr3wEWWToQjH82vhis4eFR4zeFGJk0UqL9SOXaudAk1Vmgd2EN35VCf7DuC/LoJ/PunILvYQhW7iPv1Gf08xujUxQtfmVBnD11brHi6Hqnux/yi1XS3fyiVN+k+6RXkkQZf85+/EMhx99IlcUKF/mExl0HJccuAWKV+3W9h0WILWpQWu8yXAuLn+76H1a3R+eSEpfgxqv17ZB1WTj6cPXPffQm9cY6wz0iXQeHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+1rzS/M8SGQTSBx1yIms6Of3k604zT4vPoUxaBSCQaw=;
 b=Sv2+UFW8nY4AU1h9V8yfJStZbclaDEBJgg7b+OVW0Hz2pV68WhhLfYXhBVp+cVOjcFqIcZVdQ+tByEyACBfZD6y/HYsBlyHmMx8ObTSPlvqQVCAiN+tjdiS4Uvm1VtvrvcfaebwJWVrnek/Y9RCZTHsKeE4sp+9lBeducgYSfFs=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (20.177.50.76) by
 VI1PR03MB4064.eurprd03.prod.outlook.com (20.177.55.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.13; Sat, 11 Jan 2020 21:20:54 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::e88c:a98c:f344:61f9]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::e88c:a98c:f344:61f9%5]) with mapi id 15.20.2623.014; Sat, 11 Jan 2020
 21:20:54 +0000
From: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: Dave Taht <dave.taht@gmail.com>
Thread-Topic: [Cake] Patch "sch_cake: avoid possible divide by zero in
 cake_enqueue()" has been added to the 4.19-stable tree
Thread-Index: AQHVyFfbYhQ8qWSP0kqsYSQUQOB1j6fl7h0AgAALMQA=
Date: Sat, 11 Jan 2020 21:20:54 +0000
Message-ID: <13E6E54B-BCF8-44C7-9E0F-55127DB9A42C@darbyshire-bryant.me.uk>
References: <1578730684729@kroah.com>
 <CAA93jw6Hb0fHbqOMfc_6WvjSu2=JQ1xx__NvuUQEM=s6XBTrGA@mail.gmail.com>
In-Reply-To: <CAA93jw6Hb0fHbqOMfc_6WvjSu2=JQ1xx__NvuUQEM=s6XBTrGA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ldir@darbyshire-bryant.me.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4b6aa7be-9402-4bed-016b-08d796dc2495
x-ms-traffictypediagnostic: VI1PR03MB4064:
x-microsoft-antispam-prvs: <VI1PR03MB4064891217E5F590F13CE24BC93B0@VI1PR03MB4064.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0279B3DD0D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(346002)(39830400003)(396003)(366004)(199004)(189003)(81156014)(316002)(2616005)(2906002)(508600001)(54906003)(36756003)(8676002)(81166006)(4326008)(6512007)(6486002)(91956017)(66616009)(66476007)(64756008)(186003)(66556008)(71200400001)(76116006)(8936002)(66946007)(86362001)(33656002)(53546011)(66446008)(6916009)(6506007)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR03MB4064;
 H:VI1PR03MB4575.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dUiIrb1aco7crjW6mQNJK5E2oAqhL92ZqXIxENkOCJxU/iL15oeolMw9Cnjioq4vO/DHfclHQDIevcjAAXVnX93FsgrxM1xdsRTePZiYPWki3XU+xq9JaHtwx1WmkMa9x1Fjl0opepaYZvtXhyPXWFNDA9DjQiPlXvjSOn4KeIjuuuXCieUQ/kM7ArXuFjsqEPBrdtQW3gbWfK8VXdT0wV9ljv8gPqgc31A5NNKLXKLV17SXa/zRnr3G5pPkWVVHj5xdLefsnwEtU5IQ96Wq5l2vbaDq0zL3qYTG10aYbWadOHpyeanRg12lKjQaeGUvSgKk6dpkxUmqMP/TUYB+Y5c859CZrQ/sFPdDNiaUvwHrGTciulZPs4J05EuC6AxQaLaHi9p86PYV7J4KZvRDQSGgYTykX+euuQivW0YHIEhjsvoxkPPzD9J8Gy571UFM
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b6aa7be-9402-4bed-016b-08d796dc2495
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2020 21:20:54.4402 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R28GAQ1YJ+LCnxOp4M/v9rDPzwrXPWmKd9AbBiD17S4EOjl9D7sCX7oR4P10YmtuTsavXXZT9N0WcBOATTGTI+iAVWEp57LxNtYrBx3vVh0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB4064
X-Mailman-Approved-At: Sun, 12 Jan 2020 14:02:17 -0500
Subject: Re: [Cake] Patch "sch_cake: avoid possible divide by zero in
 cake_enqueue()" has been added to the 4.19-stable tree
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
Content-Type: multipart/mixed; boundary="===============4544082855017730075=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4544082855017730075==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_CEFDE719-69CC-468B-ABF4-1E868E6D3B84";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_CEFDE719-69CC-468B-ABF4-1E868E6D3B84
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 11 Jan 2020, at 20:40, Dave Taht <dave.taht@gmail.com> wrote:
>=20
> did this make it into openwrt already?

It=E2=80=99s complicated and it depends what you mean by openwrt.

First off, the fix relates to auto-bandwith mode or whatever it=E2=80=99s =
called and I don=E2=80=99t think many people use it.  Nonetheless:

Is the fix in =E2=80=99net-next=E2=80=99: yes
Is the fix in 4.19 stable: In the queue for 4.19.95

Is openwrt on 4.19.95: No
Does openwrt use the in-tree version of Cake?: No

Is the fix in the Out-Of-Tree cake git repo: Yes

Has the openwrt CAKE package been bumped to follow cake git repo?: =
master, yes, as of 2020/01/11 (earlier today)

OpenWrt 19.07 has just been released, its concept of cake package has =
not been bumped.  Neither has 18.06.


It is worth noting that until yesterday/recently the out of tree cake =
repo had residue in it from some experimental stuff (SCE & updating =
conntrack marks) and did not represent upstream in-tree CAKE anyway.  =
That situation was corrected AFAIK completely this morning.

Ideally I would like openwrt to use the in-tree CAKE, with =E2=80=98featur=
e backports=E2=80=99 from later kernels as backport patches.  =
Unfortunately some targets in openwrt are still on 4.14 kernels so there =
is no in-tree CAKE to use.  Dropping CAKE from pre 4.19 kernels caused a =
bit of an outcry when I did it, so the next idea was to have a choice of =
cake kernel module for K4.19 targets, in-tree & out-of-tree CAKE.  =
Unfortunately that exposed a weakness in package dependency selection, =
so that idea hasn=E2=80=99t flown either.  I=E2=80=99m afraid enthusiasm =
levels then dropped.



--Apple-Mail=_CEFDE719-69CC-468B-ABF4-1E868E6D3B84
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl4aPDIACgkQs6I4m53i
M0qbKw/9GCVjo4G2P2afARuS8oQwrkz49rwltihIT3R+dm/aP5c/yfIOvW/joHsP
PVqYTo/F002zKgm/pm1THh/l1EWEHBDDQM+9T53WTBbglUYemeHUcTW0ImsJm/04
dev0s0dOurul+O0Bi5np9rwl7UNavuUftXGv/fEHrUpndmMtY3bSDI77p4bqVl6A
LUpY3Bz3bvlQd4Q6+GR6dTtu3Qrq65vJLcxYobt/UbJEh/hhuxveD+xoa4Hj/FDQ
aJ5IqxzqYCLa4L0TkAMrCIABCA0AdZSfIznT5GM7g6UB1ZpLlmbNM5uH4e3CbSGs
hVvQyJMdMmO2tRMx9T9K7zmpHCdO5iGiWnbDf4J0c6VBH/CDVVrhYGWHEL04e33Q
Xbylf3DfcxEDj+8bZ2ZGIOtPTUW8d6m1CSJXd2cevfm1mG0Zx8qScoHc2LtujyAO
0M+3W+LvcwTNcwvMr+M52+IkjXbbQsWvzFq20CgfcEehLjLQbL0Zmg8sZxyJC/tZ
yBzW0a2gv+eckwUap6EToh2Vs5QslZjJVs3zJc8h5UNYYQC1T2+fRQk8IJ5hecP+
znvgbK8n29/huwKoWAo9fw6Q/TYBWbqqPikewuBkKFr6HyQ3ctgft/86KunwAkhJ
qSHuk1ZlTYTrSJVvbOoZJ1ZVAyKrIitnadqzb/zEUzGKK8Xs/ks=
=sb4g
-----END PGP SIGNATURE-----

--Apple-Mail=_CEFDE719-69CC-468B-ABF4-1E868E6D3B84--

--===============4544082855017730075==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4544082855017730075==--

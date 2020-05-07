Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7D01C8409
	for <lists+cake@lfdr.de>; Thu,  7 May 2020 09:58:07 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F01733CB41;
	Thu,  7 May 2020 03:58:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588838285;
	bh=8sV6o9zny4mqdPVCDq4iO+7KCDknecQAESQufB9iYpU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AwB1+g4dU53iI4xlN4IsH+PmSW7ZtGf1fCblGHxDr2dsZF741YkwBm5AbjNUOLqpo
	 K4s9qKzVp07t0DjkRHzSTfHso89twRxcAp+eZ8N+wfBVHzcNMVJGXugIkFQVFGeRBG
	 CpfRa3mQ529EQwQ+dd0WvCVXIS1zkYsabY7+/cpBtX0sd1A3I8Sf1jcxfmJLaIThLS
	 j9OUy1Bre3IQrQkpiDdc/Qr2ge79wwSjtrCI612qlMpuwYNR3L4QtlhRWQeA2FEYxQ
	 86E1FSM6lKd5WZvbZCOEhGu4yqYcEk7EXz2uSr2jSxti58XvLQdpbxF2jLAYS3Eqqx
	 mugcjoFJpsPOA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-eopbgr150040.outbound.protection.outlook.com [40.107.15.40])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 29C153B29D
 for <cake@lists.bufferbloat.net>; Thu,  7 May 2020 03:58:04 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hGDbGNJpUKNKghPTjhlSp0Nrjm4tCuaskCtBjKJY2rB4hrQEBSGZmgId6OejUl1OI+yOJ3UI+Y55Rotj105LFhu778beZjpYCPjsbhCq3zOCgoxaIfp2DTyFU17QfBND1STo3rXpd4pKqR1oPQjeowyS6NY5ew5t7fDWEfjqFAzs5wQOOWBd9EiGXiIjEQl4baA9bEYD60gVbGsOpmYip6re3eIuiLHa/kawzcy33ARpguOGMqXjlQwj6gGOau9k3sfQw7jz2sT/XsDpttraayE+yY6hcG5g50ZjFIqn+QKNrOSPgMKNnb8TlZ2gnGnHMCaZUcDbaPIJyuEKBLL7sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vv6TAHFwUoeh3mYrpkSpU87frZ+wetPyz5GJiW9jrxk=;
 b=XmtleVk7HP7OGg4vxnSX7E6MAUirPV4zsiwH6OjMgY0i3j43SBBYVhmg/7971QSRfj0k6Y468cTilRnB5V+zI7mlUxQWbCPJa5+qGEQ8QlTe9/7RUbHyd8/9JSGlLZJ8HqPeb7TUZwf6rKxRHL8Rol/9f+t10Vx8reIwwWtcGL5OSCw5aZdZNnnq2qHMkYw03SZd5foMpd0XGz22RCV5hq7XLZ6zIrWickeE/D53flmyzX9hUg93U3w3Ty7GNJBMbFPCOR3p6bYQzAalBrg5UiYdT5+sBZMKsuRqs1bGMN6vXOVtck7LYTzzyU+4yPETJ7Lj5QNo/Xq+bxztBldjjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vv6TAHFwUoeh3mYrpkSpU87frZ+wetPyz5GJiW9jrxk=;
 b=CpR4PHLym+Sew1kUwj2ivXZuwyekKSLx5AFtlFrFFcEIfStTmdTKQhxohU0tRXSqZEhfCMnC85ZvMV35hoFGj6JhoLVK001vcsTHDVWDJDzKWdxwqNhVsrJmOxrHqHEZuhx25w1MbqfYM5TJIdrm6hta+PMaOtKWeV+06+/qqNs=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB3949.eurprd03.prod.outlook.com (2603:10a6:803:71::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Thu, 7 May
 2020 07:58:01 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2%4]) with mapi id 15.20.2958.033; Thu, 7 May 2020
 07:58:01 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Cake List <cake@lists.bufferbloat.net>
Thread-Topic: Latency target curiosity
Thread-Index: AQHWJEU7sq64Q1yK5UiIgHZOmOytvw==
Date: Thu, 7 May 2020 07:58:01 +0000
Message-ID: <E8AAEA5E-98A9-48A7-86F3-BE4621B4074B@darbyshire-bryant.me.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
authentication-results: lists.bufferbloat.net; dkim=none (message not signed)
 header.d=none; lists.bufferbloat.net;
 dmarc=none action=none
 header.from=darbyshire-bryant.me.uk;
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f01fcef-faec-4a83-dad6-08d7f25c5db0
x-ms-traffictypediagnostic: VI1PR03MB3949:
x-microsoft-antispam-prvs: <VI1PR03MB39490B06CE8F01533DCDA0FBA5A50@VI1PR03MB3949.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1107;
x-forefront-prvs: 03965EFC76
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PJW41pZ7fSX36omfqHFgKfHwKxDkCiiDtTBdcBrB3Wx1B0z1nCGWjrsVkmukih90DaR0Qy0Mibq6rqLvICUPIqpc4Hwc0OIa8w2sg4GmR4PVFKFQ+O3ag/BYwOW+6K33H7oMkw1WnHeBp/0x6ggADWeuVZOMQ0k0NWzPpie+u9kjKilz7IzpSrITrCtPiCURtkT6QdRsvt69xGLXLvrJMCKVTmKzMQqLOUUnLxIpd9Q+yHre9pBhEy2Ypah8mVs6gPKKemXvRvw2kTnEl+86C/jglXlnJwTppKp0oV8IoP/AbjCviSTnVGUp7A1+wNun68pREWO13CBq51+hhXjs2Ng6LlP94wO5Kr2zCCX2IAyXlVft5NQdcwQ3oHzq5+jI40UDWnW42vZTIZnVRFRWN+JwWnzC+g4IgDfZBOGszO7RaT+ZyLNvTI9avpGCqdAAXco1Z/pWUZ5wHDHvumE5m60wrwzglsd4zynqGagN6w5hKXrANXC5E1Zts3h0HBRSkhMPbur5QFufzM4Bp/JIZA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(376002)(39830400003)(366004)(396003)(136003)(33430700001)(7116003)(66556008)(45080400002)(6916009)(6512007)(33440700001)(2906002)(33656002)(186003)(83290400001)(83310400001)(83300400001)(83320400001)(71200400001)(4744005)(83280400001)(2616005)(99936003)(6506007)(508600001)(91956017)(8936002)(76116006)(8676002)(66616009)(66446008)(64756008)(66946007)(86362001)(66476007)(6486002)(5660300002)(3480700007)(36756003)(316002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: b7UZgNFJeSfhYkZx4bYKWDHevwWwPoGd9mmy4bfAKjk/OEk2B+s8vh1ff+B2BMofXXLpMTboqjyW519Yeha08YdZNn+dnJmGyv/jsLooz0oUKtoYJoqFH6vXRZb3r30o1/GalwI8vi1tP/q9aLYluarYqGEasGWvNXC6Zkej1Sqf81R8pWoBzdd63bdc9NEcWoha1qVI47GOke3TrnsZVOTKVp8w5a12khCeFwUXD1mzZ+aJF3khgLhJcWKBIWfEbhe3ogwFDuaFev4lDKtFmJXoMqpLBg6vJJVGuPamg4RMNOgT7qQbWS6qVhR2OE8xsg0Puhi4aPVnEo/Nl8WF9JHTGfDD3AmUuzjMOP1aeslEvmf3krc3aDr8NSX/XH+E4Vom89m+fwuuM7ahVgGC49lVZ/S8pJDUqeJgSLObLzCF8ReaTRnzQ/dsfmlvCLLiP/yIvDkeywmCvJh84lyp8VvTiq+QUR0SC98p4umg6ixwSsghv5JJ8V5eQwvej2ls83bo0f6kjVmGuiV4aJyKcrJ4geGKz5TD5xc4B2oHYg0xcPbpU2DKJoJ0T1J4GABWORBy4aXIv2x3PKHAS55ffAiLynFo9R6UztS4hTgt6yT4adTzGqcag1Jxk3wLs4cVvxZuJvrdU/q318OzZSg9fmuWUBo6RhTr+2DZmNXjVkv5C5nwTNpFo3frVGuZoVfsBkV/vHXM4WJZmIG4lXG+pOw8PNPSlYxPL6Me0mZuM33XgEks3usZib77RZ7zKQNT8Y03KdwCr+/+V+MTV2HwcSG3NY8+WIy86rN0zH66w7Vkgf2yMP9bNsMx6FCxLdVcSHVYwWknVUXrp44luBu9NQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f01fcef-faec-4a83-dad6-08d7f25c5db0
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2020 07:58:01.8599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oEx+HfBWDeODJYRnX3JeDP/tUkeTx4wmT6VZREOoq63LAaWKrzO82rr2J5H6wQAe7r0HKw8KcNwx5NXQgbl9xxouHhhXHnoVjIOVWRyUAYE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB3949
Subject: [Cake] Latency target curiosity
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
Content-Type: multipart/mixed; boundary="===============5178875218971247025=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5178875218971247025==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_BB413CAD-01EE-4BF6-8D86-AFDB67EC3C8D";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_BB413CAD-01EE-4BF6-8D86-AFDB67EC3C8D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi All,

As some of you are aware, I=E2=80=99ve been working on =E2=80=99near =
live=E2=80=99 graphing of Cake=E2=80=99s stats under Openwrt, basically =
taking the output of =E2=80=99tc -s -j qdisc foo=E2=80=99 and putting in =
relevant graphs.

A curiosity has arisen:  I use diffserv4 mode on a 20Mbit egress link.  =
Bulk tin has =E2=80=98capacity=E2=80=99 threshold of 1.2Mbit and because =
it=E2=80=99s a slow =E2=80=99tin', the default target & interval values =
get overridden to 14.6ms and 109.6ms respectively.  The 3 other tins are =
5ms & 100ms defaults.

I have a backup job that bulk uploads 5 simultaneous flows to Onedrive.  =
The sparse_delay, average_delay & peak_delay figures settle on 32, 38 & =
43 ms respectively with around 9 drops per second on that tin.

I=E2=80=99m curious as to why the reported delays are over double the =
target latency?

Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_BB413CAD-01EE-4BF6-8D86-AFDB67EC3C8D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl6zv4gACgkQs6I4m53i
M0qtkg/+LJ1iG8Zv6uDOdtJq/j8HHDObV/tM6chwDKbXgpFhful+GVHBl1pBKbVd
EgePpfTX8pDdB1TinmSbM8kqJLi9oc/Fn1u5loSTNlVOFHV4kCRkfvoiksqRhW/W
osV5vJ+HyzTJ758pRCDjw3Ov8BEdNuy7tL+sVZzaxAvpvlDHnLeQo0IqwPUaxeP0
M+9XUqF7EENqwDdBQgYqpGklUMAFkFfJHOM9V8gGHiUnE53+kuFG0cJQ9MHTa+79
UCtg7HVxrrYnCcgLF5hVdGjayBm3unEQ5YMW0mnE0Q3yTSG5vyr1BuZSn8xx1lFB
qqS62bcpOJdKGhEHbXJ4WpCn3uvt6C8izIQ+BYTxucZnXDWa3HbD6WbRz1ULSuGw
Nk2nY5uRxZW9Lsb5708LmbN1hP6E25EJY0Y4Z/sYH18khHEWe4f35LMx3r3cS4Uj
oOHp5rwNWp8ITKQUzJp8ViH92PpL3hBx2T7AbaQuwJxs1AKnqWJCajbOZ61b01Xy
uWPlmscmKkFpwd0qSP09D/gXQV5jkPjsaUKLVPOF4bJUb/ja+yRIyF+tUz69n4pT
UIuNvw1aSLHTQZiqVoo0R7d+SwzXC5MCRW2VWLB/pW9HwLy+GxpsTscQfmV7uVs6
49RJjVJl/KURca3kFty3yxg8BaCubbMwa+Uynu1gRMMDxZM8Hao=
=moG1
-----END PGP SIGNATURE-----

--Apple-Mail=_BB413CAD-01EE-4BF6-8D86-AFDB67EC3C8D--

--===============5178875218971247025==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5178875218971247025==--

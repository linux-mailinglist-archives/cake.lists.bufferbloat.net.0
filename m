Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F143ADA329
	for <lists+cake@lfdr.de>; Sun, 15 Jun 2025 21:24:00 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2AF6B3CB54;
	Sun, 15 Jun 2025 15:23:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1750015432;
	bh=lC9ns6JrYmzN3/ZF3uz/KL/1Zuwez3x1h4O9rGLB/eM=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=AKjMWW+f27t2cWJqxAnoWzrLqYroErZVAtsTTTpnp1ZY/uzrITtHFZvkCJGxsX/Se
	 j373Cyq9nqAqiNTvNe65wEUJSaKnQxrf1ASA1PXRT1cUZT8A+CbVpXBvqSxP6Kqu+3
	 60DzbCs7sjuUn68O9VkY82c/J1oufD9TtXJVMq1UnymjkLSyWl7phd8SkjQGerGrrT
	 Vezf978oWbIBRC4gfj8Fs/Vb8PqrW4Kwt2WgSI4MrcYjGjyePHvAx/OI03FKWut4Ov
	 Hc1IxqBpr2l853p3fXeth+ZaMQpx2lNl/zCl2lXqsdsO8bqmFC2LvnPnYfTauAWmpf
	 TmB1L7rCts2PQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from tuna.sandelman.ca (tuna.sandelman.ca [209.87.249.19])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8057C3B29D;
 Sun, 15 Jun 2025 15:23:50 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by tuna.sandelman.ca (Postfix) with ESMTP id 928AF1800D;
 Sun, 15 Jun 2025 15:23:49 -0400 (EDT)
Received: from tuna.sandelman.ca ([127.0.0.1])
 by localhost (localhost [127.0.0.1]) (amavis, port 10024) with LMTP
 id uhCCNXgmmgd4; Sun, 15 Jun 2025 15:23:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sandelman.ca;
 s=mail; t=1750015427;
 bh=7DnNYEVYwweESRZ9QZmylTS+mct59w8fQKMtdCY7cSk=;
 h=From:To:cc:Subject:In-Reply-To:References:Date:From;
 b=ho2D70oS65fsdaNSPY6iic+dw49cDpqwz1La6sKafjk+h+jAnxmosmm9cnpYN7iT0
 LRPqR5D7hbKROfbmZIl70T9rD0QqJSuhJPq2IycTQcO4NdzY0EIUtpkbzY4CSYW33B
 DfCgdPjuGVQ0PjNv+M2IlX1awvalKsfqbTjDINxYrSTJ6qQbSotiu3vG0UPUYGTzoy
 pfnLEwa4DlVeax0OQLGcp32FbTZDQzQYcX0pJRxl1enQNPOKkZBkFmJ86QRkY/mcf4
 zRDYJ/nrsyfNjsG1H5JLQl4SCTlT+96yc1n0n0vU0tIq65JAWPSeEJNDAu+sgNbZHC
 +EljuT+SdbM+g==
Received: from sandelman.ca (unknown [IPv6:2607:f0b0:f:2:b241:6fff:fe09:a92b])
 by tuna.sandelman.ca (Postfix) with ESMTP id E0D6D1800C;
 Sun, 15 Jun 2025 15:23:47 -0400 (EDT)
Received: from obiwan.sandelman.ca (obiwan.sandelman.ca [127.0.0.1])
 by sandelman.ca (Postfix) with ESMTP id 872971B8;
 Sun, 15 Jun 2025 15:23:29 -0400 (EDT)
To: Frantisek Borsik <frantisek.borsik@gmail.com>
In-Reply-To: <CAJUtOOjCYQDdULwY8g0qLgHmBq=0rVCZeYEiokd4kOiip0ED5w@mail.gmail.com>
References: <CAJUtOOjCYQDdULwY8g0qLgHmBq=0rVCZeYEiokd4kOiip0ED5w@mail.gmail.com>
X-Mailer: MH-E 8.6+git; nmh 1.8+dev; GNU Emacs 28.2
X-Face: $\n1pF)h^`}$H>Hk{L"x@)JS7<%Az}5RyS@k9X%29-lHB$Ti.V>2bi.~ehC0;
 <'$9xN5Ub#
 z!G,p`nR&p7Fz@^UXIn156S8.~^@MJ*mMsD7=QFeq%AL4m<nPbLgmtKK-5dC@#:k
MIME-Version: 1.0
Date: Sun, 15 Jun 2025 15:23:29 -0400
Message-ID: <21465.1750015409@obiwan.sandelman.ca>
Subject: Re: [Cake] [Bloat] Announcing the LibreQoS Bufferbloat Test Platform
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
From: Michael Richardson via Cake <cake@lists.bufferbloat.net>
Reply-To: Michael Richardson <mcr@sandelman.ca>
Cc: Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, bloat <bloat@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat-ietf@lists.bufferbloat.net,
 =?us-ascii?Q?=3D=3FUTF-8=3FQ=3FRobert=5FChac=3DC3=3DB3n=3F=3D?=
 <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============5668031141311847290=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5668031141311847290==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain


Hi, thanks for this.
I've share it with multiple ISP (suppliers), and maybe there is a reason to
deploy it within CREDIL's R&D datacenter.

>   - Grading methodology for latency under load in complex multi-user
>   scenarios

Perhaps, it would be good to have a RIPE BCOP as a result for the criteria?

>We believe that widespread ISP deployment of proper bufferbloat
>testing infrastructure will ultimately benefit the entire internet
>ecosystem.

I'm reading the README.md from the git repo. Wow. Amazing job!
I'm not seeing a CLI option to run the client test, but I see lots of API
end-points, so I'm guessing that there might be one, or it might easy to do
this.

--
]               Never tell me the odds!                 | ipv6 mesh networks [
]   Michael Richardson, Sandelman Software Works        |    IoT architect   [
]     mcr@sandelman.ca  http://www.sandelman.ca/        |   ruby on rails    [





--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQFFBAEBCgAvFiEEbsyLEzg/qUTA43uogItw+93Q3WUFAmhPHbERHG1jckBzYW5k
ZWxtYW4uY2EACgkQgItw+93Q3WVbAQf9HdUAUmRbP9Byn5bv+CRgF9howg6OceMV
xRTwOqeOsB0s4Y+JaKJVfvhdYW6HAbGfGd+QeUOLhrV29HRcu/2PUUgcvs1CJYyq
OPP/Vdcj9CNYzlJ0ffb3qrVGEEvT4aRuvbjIPW30QbDYmxOCCMGTz8phfA0duDK0
DtW9vjLnH0TbvM/PtA9X+/If+Yfn8l3CnKzdJOQCFno/EkhfpqPoM2LZ471onRoC
Pi1yq9WrqlDvIAVnmGDCVv8rxvb4RoJAHYRHjMv8Yl1bGiT1s9NLqXgc1gTJFcse
mO2uTWiN5xCxF5Y3E0isq+/mv1ay/YvV2HdLlrHIc/Z8sA4QZhtlGA==
=n4vP
-----END PGP SIGNATURE-----
--=-=-=--

--===============5668031141311847290==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5668031141311847290==--

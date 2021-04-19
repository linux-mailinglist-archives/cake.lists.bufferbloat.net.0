Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A923C364CE3
	for <lists+cake@lfdr.de>; Mon, 19 Apr 2021 23:10:54 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0827A3CB46;
	Mon, 19 Apr 2021 17:10:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1618866649;
	bh=O6ykRJtMQubf6FIqsRdt6TricdNgSdaw7CEMr9IOL6Q=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Mn+KpPRxIJhYNodlV0C0t2KPT+T78CgL+yxhtGfsrSwbsoubr1dNPQgvGzkHcRGYW
	 D6t0YbKqY32um5K4+zcDiChC8QqbjJCMYddj+/8vwgkRqavsEom9qFAFBHTHzmpG/v
	 2qUO3SkvcNrEHJQ2PL4AqDZ+GyIJnkw8H4/iLT58uo5QB3uQTBSEW0ee9N+zp0lXvN
	 fvXA/pqejfcgUXY46v98crPGx9lYEroKEmkDc9kmKGPoHhRNA7mt9FNsttMd3IWvFA
	 /aO9lp+AK+MfkTNWExKfdVNBmFImv6H4m7HolSTiYiqJ8ateM82fS2GUONvDLwaysS
	 aHs8E5cj8bP2g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from tuna.sandelman.ca (tuna.sandelman.ca [209.87.249.19])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8D5BC3B2A4;
 Mon, 19 Apr 2021 17:10:47 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by tuna.sandelman.ca (Postfix) with ESMTP id 6C4843907D;
 Mon, 19 Apr 2021 17:18:22 -0400 (EDT)
Received: from tuna.sandelman.ca ([127.0.0.1])
 by localhost (localhost [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id 4560ywOYkuO0; Mon, 19 Apr 2021 17:18:18 -0400 (EDT)
Received: from sandelman.ca (obiwan.sandelman.ca [209.87.249.21])
 by tuna.sandelman.ca (Postfix) with ESMTP id 80E1538FEF;
 Mon, 19 Apr 2021 17:18:18 -0400 (EDT)
Received: from localhost (localhost [IPv6:::1])
 by sandelman.ca (Postfix) with ESMTP id BAF0C4F3;
 Mon, 19 Apr 2021 17:10:42 -0400 (EDT)
From: Michael Richardson <mcr@sandelman.ca>
To: David Lang <david@lang.hm>
In-Reply-To: <nycvar.QRO.7.76.6.2104191057361.18176@qynat-yncgbc>
References: <CAA93jw5FEe90Dw3_tGubna=_Urzbq6dYMMrifGV7bMuhL2nXKg@mail.gmail.com>
 <nycvar.QRO.7.76.6.2104191057361.18176@qynat-yncgbc>
X-Mailer: MH-E 8.6+git; nmh 1.7+dev; GNU Emacs 26.1
X-Face: $\n1pF)h^`}$H>Hk{L"x@)JS7<%Az}5RyS@k9X%29-lHB$Ti.V>2bi.~ehC0;
 <'$9xN5Ub#
 z!G,p`nR&p7Fz@^UXIn156S8.~^@MJ*mMsD7=QFeq%AL4m<nPbLgmtKK-5dC@#:k
MIME-Version: 1.0
Date: Mon, 19 Apr 2021 17:10:42 -0400
Message-ID: <10241.1618866642@localhost>
Subject: Re: [Cake] [Bloat] starlink testing
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
Cc: Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============6173998259930936818=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6173998259930936818==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain


David Lang <david@lang.hm> wrote:
    > are you able to sniff between the router and the dish? I'm curious how much
    > of the smarts is in the dish vs the router. My hope is that the router is
    > just a conventional router with the satellite network smarts in the dish.

No.
See the teardowns, such as: https://www.youtube.com/watch?v=QudtSo5tpLk
It's a huge synthetic antenna.  It's openwrt though.


--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEbsyLEzg/qUTA43uogItw+93Q3WUFAmB98dIACgkQgItw+93Q
3WWqDwf/YqpTA1YrajbbK+gzamPRluqyCa9rQyQNlMksa1MlGvo+T60MvQZUZQC3
Wr4JPXKL8Hmj0IeeJsz6lo19QRmnJf19eFWJDboEovAIQZmOAxBaWOwmZJvii6rQ
OOpko2QCkuq/UF0fLzAc9OT94kEJVfc4/riLQo8mi7+iSkCYa+EaFzvuR5Gy+dG/
qMn7YN7demaEARpKJNzpwjl+AZ4JwsWCXa2Us3hK1ydcJgQmZJyYDJ+L0b5jkpoO
7RL75OCYENFp1QI4La6+slMfwZ61ckjcdm9rakd6eglAXdNKEW99ksDZIqf0JkOp
nAQbGoZJsWBdZ+ZtC90AdU3erp81sA==
=E0ud
-----END PGP SIGNATURE-----
--=-=-=--

--===============6173998259930936818==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6173998259930936818==--

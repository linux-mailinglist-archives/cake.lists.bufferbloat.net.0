Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7333B1C21BE
	for <lists+cake@lfdr.de>; Sat,  2 May 2020 01:59:15 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AD26C3CB4E;
	Fri,  1 May 2020 19:59:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588377549;
	bh=P8Iy/P0qz/STCuuYOkJq2GCxS8shjprOV0xAXU7SyW8=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G+67x1zB1httO82gJfpwKFWqgYAb9w7F64KKwAlKIyzp8aNIEtOQ6VoWahbM6KQKP
	 yeqo1d3PvHhzDzNwfLWxmj3/Vv9zAsZ9nHk/vsC8eOUJcMTx9J7QtJVY2dJvXfdX12
	 lgGa7qH/4dst5mIRRtgrmjI/t1ViSxK1V5KSF3F7wsb1qLqc5w3atHw2AOnYQe2bac
	 3lcZMGHTc6Xkyoa+0IsV6Kko5JFWWe9fOgUzHJREAZehzT6s5a27tM0jjnr/ezHKXd
	 gMsj9cgekgD84C2PkiQt7P21kUYH0eede1ZaAuaLPSxdoivybZMWo3CVcQQ2RfE3ut
	 cfKgS3Qe94txQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from tuna.sandelman.ca (tuna.sandelman.ca
 [IPv6:2607:f0b0:f:3:216:3eff:fe7c:d1f3])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DC3ED3CB35;
 Fri,  1 May 2020 19:59:07 -0400 (EDT)
Received: from sandelman.ca (obiwan.sandelman.ca [IPv6:2607:f0b0:f:2::247])
 by tuna.sandelman.ca (Postfix) with ESMTP id C24F338983;
 Fri,  1 May 2020 19:57:11 -0400 (EDT)
Received: from localhost (localhost [IPv6:::1])
 by sandelman.ca (Postfix) with ESMTP id 0F762440;
 Fri,  1 May 2020 19:59:07 -0400 (EDT)
From: Michael Richardson <mcr@sandelman.ca>
To: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
In-Reply-To: <mailman.191.1588369068.24343.bloat@lists.bufferbloat.net>
References: <CAA93jw5HbGBcy6uW0dLbjtLmp_g4SLdK8Ny7G8UvbX_d+H1yXg@mail.gmail.com>
 <05410663-5E50-4CF5-8ADE-3BBB985E32B1@gmx.de>
 <CADN=VJnPTGuABtVSyjNqfdvD_W5rC0sRbWeqN=-3pzfxh+_NkQ@mail.gmail.com>
 <8F8579BB-3B58-4E20-8827-3F09506E0D74@gmx.de>
 <mailman.191.1588369068.24343.bloat@lists.bufferbloat.net>
X-Mailer: MH-E 8.6; nmh 1.7+dev; GNU Emacs 25.1.1
X-Face: $\n1pF)h^`}$H>Hk{L"x@)JS7<%Az}5RyS@k9X%29-lHB$Ti.V>2bi.~ehC0;
 <'$9xN5Ub#
 z!G,p`nR&p7Fz@^UXIn156S8.~^@MJ*mMsD7=QFeq%AL4m<nPbLgmtKK-5dC@#:k
MIME-Version: 1.0
Date: Fri, 01 May 2020 19:59:07 -0400
Message-ID: <17660.1588377547@localhost>
Subject: Re: [Cake] [Bloat]  dslreports is no longer free
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
Content-Type: multipart/mixed; boundary="===============7702395587272114426=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7702395587272114426==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain


Given QUIC uses UDP and does congestion control essentially within the
browser, it seems that maybe one could built latency under load measuring
into the QUIC infrastructure in the browser.

Maybe we don't have to create JS tools like fast.com to get good and
regular measurements of bufferbloat.  Maybe it could be a part of
browsers.   Maybe web site designers could ask for the current
"latency-under-load" value from the browser DOM.

--
]               Never tell me the odds!                 | ipv6 mesh networks [
]   Michael Richardson, Sandelman Software Works        |    IoT architect   [
]     mcr@sandelman.ca  http://www.sandelman.ca/        |   ruby on rails    [


--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEbsyLEzg/qUTA43uogItw+93Q3WUFAl6st8oACgkQgItw+93Q
3WXpbwgArbRn/3A55C/J5XF6TMECTaoCK2J+4yMKH/ainkW6TEl+kD6/ps8PrIdF
gnM7+UJS3fOacG8rmungEi7aB8hOiKbz4APVjrKw+a/sNoF2DzZywL6pNFYD7YPP
Z70dmFvG0krUea4EhcQMB/7Gm7VWBRhp1XRwO0nrfk/OmLEuCyRsjP+pityUGLZG
TTfmZAlCYPIHZY743vQiwpCis6KitCUxIKmAye9QNpt1sgi46imLfGGlAIY10T4S
C2BNvs4EIz2s/piqE4byCLkbvxrCjiv946937VGlOTFBcYNCVAsioaBxIlzfujpM
HmmTS6UAYeBvWEDOcdnE21beWWf0sg==
=qj8Z
-----END PGP SIGNATURE-----
--=-=-=--

--===============7702395587272114426==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7702395587272114426==--

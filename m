Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FDF1C2055
	for <lists+cake@lfdr.de>; Sat,  2 May 2020 00:07:28 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B15533CB58;
	Fri,  1 May 2020 18:07:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588370841;
	bh=1BJGd7iohpYd6IsdSEYjQLrg4lptDDz6ipSVzTSYDzY=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J7/iLuVWNmQt/CNICrM5hJ6NYD/iuJ58gpVKKqbNk8DyG4AyHTGd2xY4JElttLIZ9
	 3zRfsfkf6u39nryMcTTI9zNNydEACPgg4uwA0QUEuyx1pDss7Zqgso7+35ezQbGvkT
	 ColIHlWwp8PhlhvjcYBmvhZZ4pGjUFowXafenEP5nospyMfwzQuMh93xCLZlZXco4W
	 Rb3Ci/iBfNBlK/7pGzttlCm/HHLjHbXkxNcaYfrHZ9bGyBVXspNErn7Ji7itpERqRk
	 A+oGYEdR8a1PJ2XWf3Y4p2pNtcQeEifi1MCd9VRAahU5ykXFtbE8D6luiOlGuHf0VJ
	 Nzzdl51TijPcg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from tuna.sandelman.ca (tuna.sandelman.ca [209.87.249.19])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C24393CB35;
 Fri,  1 May 2020 18:07:20 -0400 (EDT)
Received: from sandelman.ca (obiwan.sandelman.ca [IPv6:2607:f0b0:f:2::247])
 by tuna.sandelman.ca (Postfix) with ESMTP id C37DA38983;
 Fri,  1 May 2020 18:05:24 -0400 (EDT)
Received: from localhost (localhost [IPv6:::1])
 by sandelman.ca (Postfix) with ESMTP id 0B015B6F;
 Fri,  1 May 2020 18:07:20 -0400 (EDT)
From: Michael Richardson <mcr@sandelman.ca>
To: Sergey Fedorov <sfedorov@netflix.com>, Sebastian Moeller <moeller0@gmx.de>,
 Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
In-Reply-To: <mailman.170.1588363787.24343.bloat@lists.bufferbloat.net>
References: <CAA93jw5HbGBcy6uW0dLbjtLmp_g4SLdK8Ny7G8UvbX_d+H1yXg@mail.gmail.com>
 <05410663-5E50-4CF5-8ADE-3BBB985E32B1@gmx.de>
 <mailman.170.1588363787.24343.bloat@lists.bufferbloat.net>
X-Mailer: MH-E 8.6; nmh 1.7+dev; GNU Emacs 25.1.1
X-Face: $\n1pF)h^`}$H>Hk{L"x@)JS7<%Az}5RyS@k9X%29-lHB$Ti.V>2bi.~ehC0;
 <'$9xN5Ub#
 z!G,p`nR&p7Fz@^UXIn156S8.~^@MJ*mMsD7=QFeq%AL4m<nPbLgmtKK-5dC@#:k
MIME-Version: 1.0
Date: Fri, 01 May 2020 18:07:20 -0400
Message-ID: <24457.1588370840@localhost>
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
Content-Type: multipart/mixed; boundary="===============2923430812927717339=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2923430812927717339==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain


{Do I need all the lists?}

Sergey Fedorov via Bloat <bloat@lists.bufferbloat.net> wrote:
    > Just a note that I have a plan to separate the loaded latency into
    > upload/download. It's not great UX now they way it's implemented.
    > The timeline view is a bit more nuanced, in the spirit of the simplistic
    > UX, but I've been thinking on a good way to show that for super users as
    > well.
    > Two latency numbers - that's more user friendly, we want the general user
    > to understand the meaning. And latency under load is much easier than
    > bufferbloat.

    > As a side note, if our backend is decent, I'm curious what are the backends
    > for the speed tests that exist that are great :)

Does it find/use my nearest Netflix cache?

As others asked, it would be great if we could put the settings into a URL,
and having the "latency under upload" is probably the most important number
that people trying to videoconference need to know.

(it's also the thing that they can mostly directly/cheaply fix)

    > SERGEY FEDOROV
    > Director of Engineering
    > sfedorov@netflix.com
    > 121 Albright Way | Los Gatos, CA 95032

Very happy that you are looped in here.

--
]               Never tell me the odds!                 | ipv6 mesh networks [
]   Michael Richardson, Sandelman Software Works        |    IoT architect   [
]     mcr@sandelman.ca  http://www.sandelman.ca/        |   ruby on rails    [


--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEbsyLEzg/qUTA43uogItw+93Q3WUFAl6snZcACgkQgItw+93Q
3WVzwQgAjUvjQlvVIZIc1HJVvYMxcCpw2LDagdNAjBhjFvqWTih331mmrXASeD+A
0aEtlwKSM2BcmDlhKQHJ8S4Me2UMEI/mk/X8eTFx0eabD5Ls/RFY5O95Mxe4IQrQ
5FDuevnX4PMIn7Epp8KWAGy+U4SmB2pHT1y4qeW9ZU7z8RTyHBMcw+kBfoRD3FSw
eZp1xBr5zKSOlihPws1DbtnsjifUearbXubk94VLwxiAMLr4avVJVE8QZm56Y/6e
f+DO1C45NbJAlc+6HaxrfV8m4IZhy+ZXDPv40wn7tdU5ajPsfGls1dPX1yZimvRg
QycdXFe1nybmC5TqHfZ6nqSigdk4NA==
=g96L
-----END PGP SIGNATURE-----
--=-=-=--

--===============2923430812927717339==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2923430812927717339==--

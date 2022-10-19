Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAF48B6572
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1CFCE3CB5D;
	Mon, 29 Apr 2024 18:18:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429133;
	bh=HmtpR5E0fAYBW7rV0kGAnnG4WMSy1D1+bl1PoD3raBw=;
	h=To:In-reply-to:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=bg9hbCKLeanN+3+4MW+iG98uSujDU28ZYfyoH1gkdnLQ7nqOONNpBedYbZh7Fa3Ha
	 ASSkowk8nMv6vICRNrpkyp8VQ5r0BqPEnI1V2CRULUbhaLnhLlUiulWC8dxL3SS0kk
	 yiHlAUe7dczPHZf1jc+YHEwe1zQRJmhNBi+zYJVJGy0psLnAfYJIO/PqylqZ6kiYmC
	 2bW+tV/nRCL9OsogzRIm5HQlxDM+b361NMBV23vjPK5Ptv2YEdJeblpnLcUUervJTF
	 GZow7k5/1Pnurc8pU5C/GRkA+RVIklSMwJY88e5euzEWauSGfESYf8FH41dCz6Ndeh
	 JESAZEIkD9bYQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from relay.sandelman.ca (relay.cooperix.net [176.58.120.209])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AC69D3B29D;
 Wed, 19 Oct 2022 17:46:59 -0400 (EDT)
Received: from dyas.sandelman.ca (unknown [208.94.110.98])
 by relay.sandelman.ca (Postfix) with ESMTPS id 67A291F479;
 Wed, 19 Oct 2022 21:46:58 +0000 (UTC)
Received: by dyas.sandelman.ca (Postfix, from userid 1000)
 id 153C9A18CB; Wed, 19 Oct 2022 17:46:56 -0400 (EDT)
Received: from dyas (localhost [127.0.0.1])
 by dyas.sandelman.ca (Postfix) with ESMTP id 12330A0197;
 Wed, 19 Oct 2022 17:46:56 -0400 (EDT)
To: Stuart Cheshire <cheshire@apple.com>,
 =?us-ascii?Q?=3D=3Futf-8=3FQ=3FD?= =?us-ascii?Q?ave=5FT=3DC3=3DA4ht=3F=3D?=
 <dave.taht@gmail.com>, Rpm <rpm@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
In-reply-to: <BD3CEB48-E45E-49DB-AAFC-80C539BB4169@apple.com>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <938D9D45-DADA-4291-BD8A-84E4257CEE49@apple.com>
 <CAA93jw4KOkgdfT2LunCtPYPjXL+=OtTrouJgPjM7U1bHKtErnw@mail.gmail.com>
 <BD3CEB48-E45E-49DB-AAFC-80C539BB4169@apple.com>
Comments: In-reply-to Stuart Cheshire via Bloat <bloat@lists.bufferbloat.net>
 message dated "Wed, 19 Oct 2022 13:44:18 -0700."
X-Mailer: MH-E 8.6+git; nmh 1.7+dev; GNU Emacs 26.3
MIME-Version: 1.0
Date: Wed, 19 Oct 2022 17:46:56 -0400
Message-ID: <372838.1666216016@dyas>
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: Re: [Cake] [Bloat] [Make-wifi-fast] The most wonderful video ever
	about bufferbloat
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
Reply-To: Michael Richardson <mcr+ietf@sandelman.ca>
Content-Type: multipart/mixed; boundary="===============8544681044941817175=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8544681044941817175==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


Stuart Cheshire via Bloat <bloat@lists.bufferbloat.net> wrote:
    >> I think the person with the cheetos pulling out a gun and shooting
    >> everyone in front of him (AQM) would not go down well.

    > Which is why starting with a bad analogy (people waiting in a grocery
    > store) inevitably leads to bad conclusions.

    > If we want to struggle to make the grocery store analogy work, perhaps
    > we show people checking some grocery store app on their smartphone
    > before they leave home, and if they see that a long line is beginning
    > to form they wait until later, when the line is shorter. The challenge
    > is not how to deal with a long queue when it=E2=80=99s there, it is h=
ow to
    > avoid a long queue in the first place.

Maybe if we regard the entire grocery store as the "pipe", then we would
realize that the trick to reducing checkout lines is to move the constraint
from exiting, to entering the store :-)

Then the different times you are in the store because you have different
amounts of shopping to do, etc. and you get txt messages from spouse to
remember to pick up X, and that somehow is an analogy to the various
"PowerBoost" cable and LTE/5G systems that provide for inconsistent
bandwidth.

(There are various pushes to actually do this, as the experience from COVID
was that having fewer people in the store pleased many people.)


=2D-
Michael Richardson <mcr+IETF@sandelman.ca>, Sandelman Software Works
 -=3D IPv6 IoT consulting =3D-




--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEERK+9HEcJHTJ9UqTMlUzhVv38QpAFAmNQcE8ACgkQlUzhVv38
QpBfzgf7BERzizHjizsXgij3MNeG06kCWHv6BeWd+VXjB5progrYrZuQzmaVWLxm
G24ZloDH5/nTbGbytGrV5sRcqPTZGYbDeaLxPBiPCe/IvsVfd+owvUID3PswsA1d
eOCujdkBSVOozFyKRIKiwmHxapsQ2QaA3qmSRhi64lfY13hsq1wVgz3ZDCXdBuT0
CglMA2B1QcMSJFYhVM5y7glPVUTOCY1JBemrAKElRl2pflwc3JOqYKr2cD1Ppl4+
ctv8ACA3tZAOE5D+acbz2lydYSd61PU1R+ISVq7BzwjNq1ef/ilhNDlsCiVDgjvs
T6U8cNrUtKP1kiQrTNIspec0gp1nqQ==
=6Qhq
-----END PGP SIGNATURE-----
--=-=-=--

--===============8544681044941817175==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8544681044941817175==--

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C986A49E691
	for <lists+cake@lfdr.de>; Thu, 27 Jan 2022 16:47:31 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 294E83CB45;
	Thu, 27 Jan 2022 10:47:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1643298450;
	bh=6pGxLs/8PZYWPrSi4Sr67ogIsT0ewEsRkyGQL2f0Mgw=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=invqYD6sfsbRv7veyOt4u+Nc7dI0d8KLIym87Sxszt0m2wfYHoJworyHYN+ZDKHsX
	 n8U73K42Mz69UaR/8Ax/h/Gj0vcIF8yAgCpuUujGAvCkFDgNqgguH1BImVjYQMm8P3
	 WAiT4zK3HcVt1R8RIRlIndp6BfeYfGGFL8zJJwqTEa4tXMwR3liuLlv37NW24bdkYZ
	 ann9KTMOV7MCeyVGhmmd8A1/mS7VvHDurdBkskjyJTnZApT1XInYwcJAYVYgHbpEr4
	 6aDI+pZCKhkkY9Rartxl3/gTxh6sUe0UpUE4eMpiuBQPj07WHv7M6+6UxNmdfHxGwX
	 YBPNKSeCXboTw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mr85p00im-hyfv06021401.me.com (mr85p00im-hyfv06021401.me.com
 [17.58.23.190])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C8DF93B29E
 for <cake@lists.bufferbloat.net>; Thu, 27 Jan 2022 04:00:19 -0500 (EST)
Received: from smtpclient.apple (97e56e08.skybroadband.com [151.229.110.8])
 by mr85p00im-hyfv06021401.me.com (Postfix) with ESMTPSA id BE37B3038A54;
 Thu, 27 Jan 2022 09:00:17 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
In-Reply-To: <87r18w3wvq.fsf@toke.dk>
Date: Thu, 27 Jan 2022 09:00:14 +0000
Message-Id: <177DD195-A9B2-4502-8DA8-7CC659EBBF3B@darbyshire-bryant.me.uk>
References: <20220125060410.2691029-1-matt@codeconstruct.com.au>
 <87r18w3wvq.fsf@toke.dk>
To: =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
X-Mailer: Apple Mail (2.3693.40.0.1.81)
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.425,18.0.572,17.0.605.474.0000000_definitions?=
 =?UTF-8?Q?=3D2022-01-14=5F01:2022-01-14=5F01,2020-02-14=5F11,2020-01-23?=
 =?UTF-8?Q?=5F02_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxlogscore=999
 adultscore=0 malwarescore=0 spamscore=0 mlxscore=0 phishscore=0
 suspectscore=0 clxscore=1030 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2009150000 definitions=main-2201270053
X-Mailman-Approved-At: Thu, 27 Jan 2022 10:47:28 -0500
Subject: Re: [Cake] [PATCH net] sch_cake: diffserv8 CS1 should be bulk
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
From: Kevin 'ldir' Darbyshire-Bryant via Cake <cake@lists.bufferbloat.net>
Reply-To: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Cc: cake@lists.bufferbloat.net, Jakub Kicinski <kuba@kernel.org>,
 Matt Johnston <matt@codeconstruct.com.au>,
 "David S . Miller" <davem@davemloft.net>, netdev@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2498884220950338855=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============2498884220950338855==
Content-Type: multipart/signed;
	boundary="Apple-Mail=_23930681-77CB-4129-A6DC-7F40F4DFE44C";
	protocol="application/pgp-signature";
	micalg=pgp-sha256


--Apple-Mail=_23930681-77CB-4129-A6DC-7F40F4DFE44C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 25 Jan 2022, at 10:58, Toke H=C3=B8iland-J=C3=B8rgensen =
<toke@redhat.com> wrote:
>=20
> Matt Johnston <matt@codeconstruct.com.au> writes:
>=20
>> The CS1 priority (index 0x08) was changed from 0 to 1 when LE (index
>> 0x01) was added. This looks unintentional, it doesn't match the
>> docs and CS1 shouldn't be the same tin as AF1x
>=20
> Hmm, Kevin, any comments?
>=20
> -Toke
>=20

I=E2=80=99ll have to find my thinking head & time machine :-)
This would be a lot easier if we had =E2=80=98diffserv9=E2=80=99, LE =
could have simply
been added as the =E2=80=98if you=E2=80=99ve really nothing better to =
do=E2=80=99 class that it
is.  And it=E2=80=99s why I=E2=80=99ve personally argued for a =
diffserv5: lowest;low;normal;high;highest
moving on.

I think I screwed up when LE was added to diffserv8 - Matt the CS1 =
change from 0 to 1 IS intentional
and IIRC I tried to bump everything else up 1 to compensate.. I may have =
missed some things though.


Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_23930681-77CB-4129-A6DC-7F40F4DFE44C
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAmHyXx4ACgkQs6I4m53i
M0qLmg//Zn/zu6gDtBF+S98hlUO6x5Ab3gXpbZ4GuC2X2VdZG3vi/zdPs4Lc4CD4
V0kQKky9cyHqm0q4UjpvKIXMWQKlhi9JLHNWCXHK04tWKoivnyWmu3xDur5Pxeb6
U8j9lF2iQiPCXS9VsLcD7kpl3SKpx0Bdm2vLVFFNBQ2mhFMORJ3dW6PwxW8JY3eW
mPmjTOfJ0txLuAw2VwPvRo0gCGIquuMzMGuJfXzkUs2gnY9qrBXfOZu1TuCDIlP4
DWtyDAx/zY20cicd6twp68Qyda6sLN1RQdMtbYBmRx/+opCnnBtYznbwaXCnH2vf
5UKprnKURu/1NaXbzqMDA9BVUAs2JNGVI7cl7OmpWQLyEDcpisecnBdH4c8H/Vll
8/0cga+dmgTP1bn6P7e31LdJYP+TlEswFRK7EDbSvtjw/eAmw47UlsJdupS7NhN6
mFS81F7xoOkn0WuHh71vnK7M1vJ1vRAb80/IsOVACHT9teeFXKDf7AGKw361vNRj
5z/K3XA3M7XR/Al2PBZqP8JueLETz2r0ztrXoWi4Uv5cXmZalRWBLN6kd7typg9s
HdAoPc76N5MvGM/NP4naBtWLpIqllSlYIQ62QcxNGHzDTCPaawqw2jS8dvl5XNtd
Tqlpc7URkR3VFz0YP2G3C5EsIC+kJlc7SYCCKUODZ0rvv4YjahI=
=LwXr
-----END PGP SIGNATURE-----

--Apple-Mail=_23930681-77CB-4129-A6DC-7F40F4DFE44C--

--===============2498884220950338855==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2498884220950338855==--

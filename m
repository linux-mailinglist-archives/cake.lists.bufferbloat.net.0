Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id EF73E5BCD1
	for <lists+cake@lfdr.de>; Mon,  1 Jul 2019 15:24:33 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9AAB33CB3D;
	Mon,  1 Jul 2019 09:24:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1561987472;
	bh=n+MLI2YQiKD19xDXOcxSRHHmbFxKCWQF9lUrTTN0Jfw=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X1lzM0xtLzAUrGBXVgyszxc0wbjlU75KybuTONnfiPC3G8clvQ5aJGPaQV89wJqKu
	 sTktdCgsRcoYpa+ZCW/Fh1ii9nVoDZCGVrMb3YY4tiQ9ygZIUmBQGmvLlXcp4p9RDN
	 pDTbOQfGmm5a8UIg9cvnIqF+uvcF0gIfobO5tPOZEl4ofnOYvIAGcLHhDGfikPxEeT
	 smzCZfnT3xEPVGxR+fH9n9IFME296SIYVy5cG9Gsi3azXa6zd921t7nj+VPVN5V7q6
	 uQU4sluIbpV1/YEZx05Vok32GAp89kzYQR5FChORm6cFDca9/kMDf0W5ONfSF1RWNK
	 StGf5MHD2az2w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp6-g21.free.fr (smtp6-g21.free.fr [212.27.42.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AD0A13CB37
 for <cake@lists.bufferbloat.net>; Mon,  1 Jul 2019 09:13:23 -0400 (EDT)
Received: from eos (unknown [213.61.153.180]) (Authenticated sender: albeu)
 by smtp6-g21.free.fr (Postfix) with ESMTPSA id 93D137802E5;
 Mon,  1 Jul 2019 13:13:17 +0000 (UTC)
Date: Mon, 1 Jul 2019 15:13:16 +0200
From: Alban <albeu@free.fr>
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@toke.dk>
Message-ID: <20190701151316.2f037eea@eos>
In-Reply-To: <87tvc654he.fsf@toke.dk>
References: <20190701135251.08defe75@eos>
	<87tvc654he.fsf@toke.dk>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 01 Jul 2019 09:24:31 -0400
Subject: Re: [Cake] Recommendations for using cake in complex setup
 (wireguard + vlan + bond)
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
Cc: cake@lists.bufferbloat.net, Alban <albeu@free.fr>
Content-Type: multipart/mixed; boundary="===============4585986048179659041=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4585986048179659041==
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/R3Jr2h7CStzFC3R.jdT06EI"; protocol="application/pgp-signature"

--Sig_/R3Jr2h7CStzFC3R.jdT06EI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, 01 Jul 2019 14:22:37 +0200
Toke H=C3=B8iland-J=C3=B8rgensen <toke@toke.dk> wrote:

> Alban <albeu@free.fr> writes:
>=20
> > Hi everybody,
> >
> > I am setting a new router with a non trivial setup and I really
> > like to get some recommendations on how to best use cake. First of
> > all the router is using VLAN on top of 2 bonded gigabit Ethernet
> > interface:
> >
> >                         +--> VLAN1 (LAN)
> >  eth0 <--+              |
> >          +---> bond0 <--+--> VLAN2 (WAN1)
> >  eth1 <--+              |
> >                         +--> VLAN3 (WAN2)
> >
> > The bond is using LACP, but mainly for redundancy and not for the
> > increased bandwidth. Both WAN VLAN are going to ISP provided
> > FritzBox connected to 50/10Mbit VDSL2 lines. =20
>=20
> What are the physical interfaces connected to? How is the traffic
> getting to the FritzBoxes?

I should have mentioned that the above diagram depict the logical
interfaces inside the router. The router only physical connection
is via the bond to a switch stack, the logical separation of LAN and
WAN is done using VLANs.

The physical interfaces (eth0/1) are gigabit Ethernet, one FritzBox is
directly connected to the same switch, the second one is connected via
yet another switches as it is not in the same physical location. Like
this:

             (VLAN1)      (VLAN1)
             clients      clients
                |            |
             +-----+      +-----+
  Router <-->| SW1 |<---->| SW2 |
             +--+--+      +--+--+
                |            |
               FB1          FB2
             (VLAN2)      (VLAN3)

Alban

--Sig_/R3Jr2h7CStzFC3R.jdT06EI
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE0W61GceYqNjiMSkodJSaS524LbwFAl0aBuwACgkQdJSaS524
LbwVJBAArtJRG27bfzo3Jcqw+H8P+bRRtXx2LoNSbrpWJcGpk32sw8rwyV4r4pNw
Wq2DCfeAttEqY21gs5mAgjk1gXqcRG3MDDpk5YqiV2FO/b0LoVGrTKBKduzzeH42
Zx7qglkDpHjGFgh6pPEDNkhJMyzcX0wzZZoQb2n3SPP8P5FlJA0sbzwjwlYqnYdl
cKDGdHKO1Fm1ZckZLeakgct2HW+E8oq4zjw/0Na2g/+FNFdcWHy5xtxVVEz1LO9b
b37M9RJTSI2LRIMLusHoD/efBXkMHy4aMkEVW8lGFZqHAzEAgC3Pm/rsWpyX7tj7
zy5OLD07aDRXQnB46vFVeMtvJz74399oOct5m9EOTjlGN5GviFhe1zaCKS74kR5A
47Wz6iaY2qoKSN7ln1VTxzUSh0UowdMHqMW1GC5YSmZO/43vKuQE9iGgGhgp8Z9d
U4Yx0C7uBkJoDC65bqU+G6yncxGgmfAEU9+0S9u9xTnCBUWtnSyfX8010muY6xmi
K8ejlnRs4APsC394WRft9AjySDPyomL3zdeWAjca64QqZeyb80CkldgD8+Wx+OOf
F1i1cc6ogCDt753sFPoXTFRspfKn0gjtbMR7g4Y8GyiSoIYMFFCi67rKsk9LL1z1
G5cqJ/qv4x7FFP7R76DXGIJbFz1F2U+qeHxO7oFFcwFGt3Dzls4=
=M6z5
-----END PGP SIGNATURE-----

--Sig_/R3Jr2h7CStzFC3R.jdT06EI--

--===============4585986048179659041==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4585986048179659041==--

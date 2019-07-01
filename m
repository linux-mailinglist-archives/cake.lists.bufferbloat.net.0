Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA6E5BB4B
	for <lists+cake@lfdr.de>; Mon,  1 Jul 2019 14:13:32 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 02F203CB3A;
	Mon,  1 Jul 2019 08:13:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1561983211;
	bh=6wFv5VTZgHCzJO/k0ob+edDx3jS4/csvGoF3mEDVaBQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=nifjH7/RZOYVegBiu82HXoS6Fks9sm58GCwB+8iGst29BQRr3BSlALzpZL/7uTd9Y
	 T15EWQZwR00IQEF4u+NOPvjYNlfgIPm0y7ZuCKquuYyCbmVxRTQSa3vNbtdrnrr2Hh
	 tlPZ8EAU/rIHvuCytQIxo4xt4hMvi2SHvVz37gr76tBHsa2Bn7VFt8AjD5UfIUsmZk
	 S6irZE49HxCeP0KCKI3gEbN5wHb6AYpB3wZ5RuGVWBO1HfvvPPUJ8137ypTXTh/XOa
	 iEB76ZlEavEQEk1YlnOjtHpWiLLleO+XmBnI671Ro6QkjvRkHII2rwlQe4ulIP2zMQ
	 3253PiuUdMeyQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp6-g21.free.fr (smtp6-g21.free.fr [212.27.42.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6FB083B2A4
 for <cake@lists.bufferbloat.net>; Mon,  1 Jul 2019 07:52:57 -0400 (EDT)
Received: from eos (unknown [213.61.153.180]) (Authenticated sender: albeu)
 by smtp6-g21.free.fr (Postfix) with ESMTPSA id A95DA7802C2;
 Mon,  1 Jul 2019 11:52:53 +0000 (UTC)
Date: Mon, 1 Jul 2019 13:52:51 +0200
From: Alban <albeu@free.fr>
To: cake@lists.bufferbloat.net
Message-ID: <20190701135251.08defe75@eos>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 01 Jul 2019 08:13:29 -0400
Subject: [Cake] Recommendations for using cake in complex setup (wireguard +
 vlan + bond)
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
Cc: Alban <albeu@free.fr>
Content-Type: multipart/mixed; boundary="===============0221317501601334909=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0221317501601334909==
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/qzol4EptnSofl3Z2O6RP+Tm"; protocol="application/pgp-signature"

--Sig_/qzol4EptnSofl3Z2O6RP+Tm
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi everybody,

I am setting a new router with a non trivial setup and I really like to
get some recommendations on how to best use cake. First of all the
router is using VLAN on top of 2 bonded gigabit Ethernet interface:

                        +--> VLAN1 (LAN)
 eth0 <--+              |
         +---> bond0 <--+--> VLAN2 (WAN1)
 eth1 <--+              |
                        +--> VLAN3 (WAN2)

The bond is using LACP, but mainly for redundancy and not for the
increased bandwidth. Both WAN VLAN are going to ISP provided FritzBox
connected to 50/10Mbit VDSL2 lines.

As far as i understand I should use cake on the WAN VLAN interfaces.
But what about the bond and physical Ethernet interface? Per default
the Ethernet interfaces use the fq_codel qdisc, should I replace it
with noqueue if cake is running on the VLAN interface? Any other
recommendation regarding queuing in general with such layering of
interfaces?

But there is one more component, on each WAN interface there is a
wireguard tunnel which is used to encrypt most of the traffic going out
on the interface. Unlike unencrypted IP in IP tunnel the kernel flow
dissector is not able to distinguish the flows, so all the encrypted
traffic is just one big flow for cake. Ideally I would like to achieve a
setup where cake can handle the encrypted traffic just like unencrypted
traffic.

Looking at the wireguard code it seems that the incoming skb get
encrypted/encapsulated and resent again while still using the same skb.
This give me the hope that it might be possible to classify the traffic
entering the wireguard tunnel and somehow pass this information down to
the cake instance running on the lower device.

I have seen that cake can use classifier and that the tin can be passed
via fw mark, however I'm unsure if that would really be useful/usable in
this case. Any suggestion would be welcome, from what can be done with
the current code, up to what kind of changes would be needed to achieve
the ideal case.

Alban

--Sig_/qzol4EptnSofl3Z2O6RP+Tm
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE0W61GceYqNjiMSkodJSaS524LbwFAl0Z9BMACgkQdJSaS524
LbxOjw//Wx99k2o6H4pLIQUuE2RM6yMg6YSYD33n4K1dKW22g4wlqhv/4H2FMogD
TiOHyrezktoLYhqDLdeQuoTTsIUyS64YsLSeN1f5BrUr429BTiOKGG5mU6C0ZdsD
0vYuDi/4IPS2WIwiIMhPFki/prxrALAGbShQXeM5ccVsUTey8gpPrtaEMHi7j7fV
GaOzi1FEqyNmRyldf3OF2ML6JfduUypFCzAY5EB+GKavckjpahk7za4lapwfNVni
cEZO24IQnN+JLxOxrrbSVE247N9nbURwuudmG6c3fWN+fIzqapia7guw7w7afW25
8Gk1OIYGS0xMm9CuZkHIYGNfBTBQ+UaUrenzu/t+wYC9JXmSApngzeOWh95nsxjy
r3MmNXOfw0ZNbgUQ9TIMsbbSpo9VidqpllN0Dtf3OjlURV7whqFmn3YG36lthj3p
f7gfXfHU3pkINEIV8N1vEc38vao67KMOznnr+9/4cxVrvt7b6y9v1xt0eoejJ5y/
HR7sJp/oOqT34gS9af9F+Rk1mJZGOU7Io84tqmgtA98TozAPSHaLrH+uhLxTiwUs
g8IOxeS7+qGJXgsJtsG6JocDccOAQn7BgTM3rGLFTRm/rg3MD6auwaI8WjsQ2z3j
M62MTs27SIwWmrl2S2F7y+37WBnpaLWvK3DcGYZwgxzrrinE3W8=
=Hi1o
-----END PGP SIGNATURE-----

--Sig_/qzol4EptnSofl3Z2O6RP+Tm--

--===============0221317501601334909==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0221317501601334909==--

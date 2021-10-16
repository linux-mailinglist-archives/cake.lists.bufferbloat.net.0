Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CE74318D6
	for <lists+cake@lfdr.de>; Mon, 18 Oct 2021 14:18:37 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 155EF3CB5F;
	Mon, 18 Oct 2021 08:18:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634559514;
	bh=4+PMcyNWfNcpwYxwOy4it7q0VYGvXCmeb4pRYPd8WPQ=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=D5BraP8Wd9UB6NyCVsTmxMqUQAB1AH+nP08SKcDm42Mqap+5HNNZbUYd3030a14yI
	 wgxS7WS5N5uMNqS/7cPlWibyI1KvYJlq7h5QJxCNu0N/8givPblsLPpO38oeVcupzJ
	 Sk4CbKIwxNgX+RL7EJ26meWKVE3viONHe7Y8ok9MrnnWv+yEbAUSVOVicjzuoRxMWf
	 1i1bJrVdDIAsdMQR3bSdLKBi2VKCQPJI4e0Te04oBle8MBQ1Zuv4Pmh8BU6NO81prm
	 YUW48NPpmZ7MY5sXfidrlephDd9dWKZo1CsMoptWc6yqqlzynC19m1M/vygPxQb4P8
	 +eXFyIykNCVuQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from tuna.sandelman.ca (tuna.sandelman.ca [209.87.249.19])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 459AE3B29D;
 Sat, 16 Oct 2021 19:57:04 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by tuna.sandelman.ca (Postfix) with ESMTP id 5509718286;
 Sat, 16 Oct 2021 19:57:30 -0400 (EDT)
Received: from tuna.sandelman.ca ([127.0.0.1])
 by localhost (localhost [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id 7XCpD_S5AJ8s; Sat, 16 Oct 2021 19:57:30 -0400 (EDT)
Received: from sandelman.ca (obiwan.sandelman.ca [IPv6:2607:f0b0:f:2::247])
 by tuna.sandelman.ca (Postfix) with ESMTP id F330118050;
 Sat, 16 Oct 2021 19:57:29 -0400 (EDT)
Received: from localhost (localhost [IPv6:::1])
 by sandelman.ca (Postfix) with ESMTP id 3C7011C6;
 Sat, 16 Oct 2021 19:57:03 -0400 (EDT)
From: Michael Richardson <mcr+ietf@sandelman.ca>
To: Dave Taht <dave.taht@gmail.com>
In-Reply-To: <CAA93jw7kwCc9HmfA7X4BzSCS+9UgngXj31d3gb7Aw=XQtQHZMA@mail.gmail.com>
References: <CAA93jw43C7CB-4Jv7h9NvvzjROdO5p2rVbPSZnmSJf0JAaCyaQ@mail.gmail.com>
 <CBBD435B-5A6F-408D-B17C-B28F326B49AC@gmx.de>
 <CAA93jw48afWujaJm8Sn+J-uEHb7iKLx57p7e5d=Qw9QyX=Csqg@mail.gmail.com>
 <87sfx31dt5.fsf@toke.dk>
 <CAA93jw43kC8a4_8YL3dobgvpkLO5UPbOm8yeFvwhh0dgV9eiuw@mail.gmail.com>
 <87pms71cmr.fsf@toke.dk>
 <CAA93jw7VVX_6UxyqczSZ3YoDRo9QvRZTqWqY9+0PC=rOB7FjeQ@mail.gmail.com>
 <CAA93jw7kwCc9HmfA7X4BzSCS+9UgngXj31d3gb7Aw=XQtQHZMA@mail.gmail.com>
X-Mailer: MH-E 8.6+git; nmh 1.7+dev; GNU Emacs 26.1
X-Face: $\n1pF)h^`}$H>Hk{L"x@)JS7<%Az}5RyS@k9X%29-lHB$Ti.V>2bi.~ehC0;
 <'$9xN5Ub#
 z!G,p`nR&p7Fz@^UXIn156S8.~^@MJ*mMsD7=QFeq%AL4m<nPbLgmtKK-5dC@#:k
MIME-Version: 1.0
Date: Sat, 16 Oct 2021 19:57:03 -0400
Message-ID: <8788.1634428623@localhost>
X-Mailman-Approved-At: Mon, 18 Oct 2021 08:18:32 -0400
Subject: Re: [Cake] [Ecn-sane]  l4s kernel submission
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============6485950859867674709=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6485950859867674709==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


Dave Taht <dave.taht@gmail.com> wrote:
    > What happens when a GSO packet is marked? Do all the packets get the
    > marking, or just the first?

Having done no work in this area for over a decade.... I think that the GSO
marking is in the skb (which is a Linux-ism, obviously), which goes down in=
to
the device-specific driver, who then loads the single packet into the device
queue, and marks the packet for GSO in a device-specific way in the ring
descriptor.

The device does the Segment Offload.  There is no marking relevant in the
packet itself. There aren't multiple skb's for the packet.

So I think that the answer is "mu"

=2D-
Michael Richardson <mcr+IETF@sandelman.ca>   . o O ( IPv6 I=C3=B8T consulti=
ng )
           Sandelman Software Works Inc, Ottawa and Worldwide





--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEbsyLEzg/qUTA43uogItw+93Q3WUFAmFrZs4ACgkQgItw+93Q
3WUL9Qf+IEB2shpXpB5TsjRPhhLnoj2AgccAqL8u5x8cATn8Zt4IF77ONgVQYCnW
Fkj1li6KVnf2vwXPM3zISU11/L187RM7D5II1KNBsDLLdjuAdHuB6/MRvNtSR6AY
0yssUR/ud5VjWv0eJxCkGI0IC1ZRb/MsP14C5OTAXsD2LyJitfoagLQs/+vhSQEQ
+vWFs5ShRdrU+thQwExfUnyakLTF1R0RthBQ2k9LXx9YzC5dcgTiCyns8dVkG7iy
MSA9Ocj2W2onqwAfJjHaPy5QXbjmFQNoBFeGCqQbdiXffuf0bczT8HLkP3Kzv4I+
WBnj5dGDoa0a1QRmpR8P5CsDI+gspQ==
=Zyqe
-----END PGP SIGNATURE-----
--=-=-=--

--===============6485950859867674709==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6485950859867674709==--

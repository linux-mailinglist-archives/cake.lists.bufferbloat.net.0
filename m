Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FF21F5261
	for <lists+cake@lfdr.de>; Wed, 10 Jun 2020 12:33:52 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 25D743CB4B;
	Wed, 10 Jun 2020 06:33:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1591785227;
	bh=mqOimPYSaKTqAKTqSOPweY4ec21gxRXODKaREt7XU1c=;
	h=To:In-Reply-To:References:List-Id:List-Post:From:List-Subscribe:
	 List-Unsubscribe:List-Archive:Reply-To:List-Help:Subject:From;
	b=KqbMtyA+pJhqWeQ9nhyBOmnslewT1V7tlt+jOhInrfI2asUxJf74Q4BEyKYYsSpZM
	 osqnEsqzMX/Gs4obagjqHygcVK62kygvcH/YGuXo/aCcnHFdR41f9kFlfZQtQqdvbB
	 PJaszYGChDXjBdQPknlKAqt9CqUUrKu0jMH6DDMJa+MaAlU+jU5gNjZvCyqJI/QqY1
	 eChtg5KV2OQrZq3CpOhLywdvKdQzhIh6Hd25If9nmzrt97sPMqsTD58phLZrwJUdIa
	 Szr2srVVSHKyeumGDpMlUMAH/mQoRnHbBox36Sg2rJYsiK3Y4Ubqfevql0LvSwAitv
	 rALkCENwU1NsA==
To: Dave Taht <dave.taht@gmail.com>, bloat <bloat@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
In-Reply-To: <CAA93jw6Z_5U0KCC8e0VhVyPkba4O7PtNayur-TjDvO+QJ=6=tA@mail.gmail.com>
References: <CALGR9oZ9u=huobnQig0mMPS=-Fu7Mu3q8GHLTBOxd2W5u0h_kw@mail.gmail.com>
 <CALGR9oZ-MzUh6JZrM7w97i=64OEZ3JzjzhVir2RBTWm210Fw7w@mail.gmail.com>
 <CAA93jw6Z_5U0KCC8e0VhVyPkba4O7PtNayur-TjDvO+QJ=6=tA@mail.gmail.com>
MIME-Version: 1.0
Message-ID: <mailman.528.1591785226.24343.cake@lists.bufferbloat.net>
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Precedence: list
X-Mailman-Version: 2.1.20
X-BeenThere: cake@lists.bufferbloat.net
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
Subject: Re: [Cake] [Ecn-sane] Fwd: [tsvwg] Fwd: Working Group Last Call:
	QUIC protocol drafts
Content-Type: multipart/mixed; boundary="===============1216143690500999048=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1216143690500999048==
Content-Type: message/rfc822
Content-Disposition: inline

Return-Path: <toke@toke.dk>
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	(using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by lists.bufferbloat.net (Postfix) with ESMTPS id 7A1883B2A4;
	Wed, 10 Jun 2020 06:33:45 -0400 (EDT)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1591785223; bh=mo1aiOs81LkKW2g9IQO2qAfKUqQ0pwagv107plyT4LI=;
	h=From:To:Subject:In-Reply-To:References:Date:From;
	b=go/t68VX3Y2ZrBwjq9uZHB02PrB6VMp8z332XpmqXBLjIhnFyUZSN9Cog+aMR5afq
	 2KPxMuqz+uZaxzDchPF7mtd966az3u7a0FRemYSkXFly+s0BTONg2rDNERLaHKEuG2
	 mx/EJ6AvCL6u66t9WwHBv4KKCOKqyVNt28FoXH4Wj8oig5iSVg6amwml+VXtq2p0HR
	 ngqg18YVSJilI6Psxlnf/hIDcpNiwIp/sDb9CSAHrUwanEYWixNLG/Qf6Y8woMJZXG
	 XeqWufMj8+78zcNOQfaqYwiR+zKnjUgTJfIrJXY/ZXiFJAbV/TFTHxibd3Slofo0U3
	 hr/ajmvpZDsPQ==
To: Dave Taht <dave.taht@gmail.com>, bloat <bloat@lists.bufferbloat.net>, ECN-Sane <ecn-sane@lists.bufferbloat.net>, Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>, cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Subject: Re: [Ecn-sane] Fwd: [tsvwg] Fwd: Working Group Last Call: QUIC protocol drafts
In-Reply-To: <CAA93jw6Z_5U0KCC8e0VhVyPkba4O7PtNayur-TjDvO+QJ=6=tA@mail.gmail.com>
References: <CALGR9oZ9u=huobnQig0mMPS=-Fu7Mu3q8GHLTBOxd2W5u0h_kw@mail.gmail.com> <CALGR9oZ-MzUh6JZrM7w97i=64OEZ3JzjzhVir2RBTWm210Fw7w@mail.gmail.com> <CAA93jw6Z_5U0KCC8e0VhVyPkba4O7PtNayur-TjDvO+QJ=6=tA@mail.gmail.com>
Date: Wed, 10 Jun 2020 12:33:42 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87a71b8b21.fsf@toke.dk>
MIME-Version: 1.0
Content-Type: text/plain

Dave Taht <dave.taht@gmail.com> writes:

> I am happy to see quic in last call. there are a ton of interoperble
> implementations now.

And in related news, this RFC of pacing from userspace was posted on
netdev yesterday:

https://lore.kernel.org/netdev/20200609140934.110785-1-willemdebruijn.kernel@gmail.com/T/

-Toke

--===============1216143690500999048==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1216143690500999048==--

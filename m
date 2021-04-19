Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B077B364963
	for <lists+cake@lfdr.de>; Mon, 19 Apr 2021 20:00:51 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A90263CB39;
	Mon, 19 Apr 2021 14:00:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1618855247;
	bh=xCUpKerRSymStECYGgjwtdxrzGCj9I18iZya1SQDrog=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IdaaEjkXQucvX3gteGMuVf0Ft7bcvauO/NdVwcmB6N0I6K3Ib0t/BFIN93kXH/DVj
	 xABP5M9ubZj/pL3GOrAam+lLkawFe0nSY2u9bgfQh3MQUQrOP0sD/LjoMLDvFbFUv0
	 +k5b2toHAtOSwnpS87EJ+jsgyNNMoAqz6g+rnnfajL5fNEnY0l3tURwrtCU0ttQf6h
	 5Jzs06B2D2WCEs2S35vw6BoOmaObiJulSpNbxtd2U90/kTWCaophhMIopf88TRDRzt
	 QQBXTDKpq0xRP/HpC6M7i1DUVn4nsBm3sqQxRvpIa8rUHyLzbezwJ2/4+B13ap7XB8
	 88iefR8INqlbA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.lang.hm (unknown [66.167.227.145])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8DF033B2A4;
 Mon, 19 Apr 2021 14:00:46 -0400 (EDT)
Received: from dlang-laptop (unknown [10.2.0.162])
 by mail.lang.hm (Postfix) with ESMTP id 74CCAF449E;
 Mon, 19 Apr 2021 11:00:45 -0700 (PDT)
Date: Mon, 19 Apr 2021 11:00:45 -0700 (PDT)
From: David Lang <david@lang.hm>
X-X-Sender: dlang@dlang-laptop
To: Dave Taht <dave.taht@gmail.com>
In-Reply-To: <CAA93jw5FEe90Dw3_tGubna=_Urzbq6dYMMrifGV7bMuhL2nXKg@mail.gmail.com>
Message-ID: <nycvar.QRO.7.76.6.2104191057361.18176@qynat-yncgbc>
References: <CAA93jw5FEe90Dw3_tGubna=_Urzbq6dYMMrifGV7bMuhL2nXKg@mail.gmail.com>
User-Agent: Alpine 2.21.1 (DEB 209 2017-03-23)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323328-1370529025-1618855245=:18176"
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
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1370529025-1618855245=:18176
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

are you able to sniff between the router and the dish? I'm curious how much of 
the smarts is in the dish vs the router. My hope is that the router is just a 
conventional router with the satellite network smarts in the dish.

David Lang


On Mon, 19 Apr 2021, Dave Taht wrote:

> Date: Mon, 19 Apr 2021 06:56:33 -0700
> From: Dave Taht <dave.taht@gmail.com>
> To: bloat <bloat@lists.bufferbloat.net>,
>     Cake List <cake@lists.bufferbloat.net>
> Subject: [Bloat] starlink testing
> 
> I find myself in front of a starlink terminal this morning, and have
> been doing various tests. The behavior of their network is like
> nothing I've ever seen before, appearing to re-adjust the available
> bandwidth on a 10sec interval, and... yes... they have bufferbloat...
> bad.
>
> Still running quite the large battery of tests at the moment. They are
> behind a large cgnat, and
> no ipv6 is available, either. I can make available some tests and
> packet caps if anyone wants a look.
>
> If anyone would like to drop in on me and help talk me
> down^H^H^H^H^H^H^H strategize on how
> best to tell 'em about things like fq_codel and cake, I can be found
> over here (any login you want, no password) from 7AM PDT through 9AM.
>
> https://tun.taht.net:8443/group/bufferbloat
>
>
>
> --
> "For a successful technology, reality must take precedence over public
> relations, for Mother Nature cannot be fooled" - Richard Feynman
>
> dave@taht.net <Dave Täht> CTO, TekLibre, LLC Tel: 1-831-435-0729
> _______________________________________________
> Bloat mailing list
> Bloat@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/bloat
--8323328-1370529025-1618855245=:18176
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--8323328-1370529025-1618855245=:18176--

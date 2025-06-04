Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EA8ACDE71
	for <lists+cake@lfdr.de>; Wed,  4 Jun 2025 15:03:39 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AA72D3CB39;
	Wed,  4 Jun 2025 09:03:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749042218;
	bh=grMTbPmq/RPbjErZ6cP1o/jedXTMUCliwdg7h8aEeDk=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=hhnq0tz0VlRJUjZNH2etQd6e7J24R51rYezGT+D1i1OBAIpVRUxll7JPCi/s/oLiP
	 0wHPtrTa45dJXBQxGJBm5m0TOYPFjJtnsi2/AHdTD9SvIZtz4f9GHyEBRJT0wBhmbw
	 bh5d5uEUEPQSC0LpHKMjKu5oo0lfYF8J6yIT0T3Fpr6EFkMss853qi26xik77how0D
	 S7G6k0QrsE96GpM6+bGk2RsEYzmYZrQw4s76NheSvkYDRlgzxQPzFL0RMQfY8hLWS4
	 hgUaVFXQpJKWUSU6wWS7fDiWnGxMpwGBe8MMR+Wr5V5PQJn8Mpv0UktX+G+d6Aw4WH
	 D6k1F1VBRy2FA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E89263B2A4
 for <cake@lists.bufferbloat.net>; Wed,  4 Jun 2025 09:03:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1749042216; bh=9UGgehnQkfVDUwye2Fdm9jBPR0Ho4WLpkzyZaCxD3VA=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=cY5Vw2UqWTbRud7WKUk8emw2kbCSSHZBqeF4QBmmyNncZf49Qs0Z6/vphzXPlVfK+
 lVJ90itWCFiq8ftw9wyJbAdve90WWXXiKZhKW5Yo1SsBU+N+a1OQy0qGh3LE8HdEYu
 p3I5BBsLaXEFq/f3saTvWWxNlWXIkIFUN48xCmeIbpEL4q7+sWSE9wzjamKi7HmM+p
 O9wEQwvBeEfqaYo7Yxm2uGJy+cX3srxS4zwdt8VVSINFTUWX78F0S0yT2YW5rJMBaN
 i6+2l3IxxIkvV9ROc1euiivD0y0UXAG0DsyIP6W8cKkgrD/ne9AvBVSsgyGhYoxVT1
 WaCDN9hlSDyVg==
To: Loganaden Velvindron <loganaden@gmail.com>, Frantisek Borsik
 <frantisek.borsik@gmail.com>
In-Reply-To: <CAOp4FwRaMQsJ645_wgophQoKDvYonopMuMK2Q6W7+c002jT01g@mail.gmail.com>
References: <CAJUtOOjqhArk0_b2mOVT1M14Jf68Kvq54cf7KHE9Dma5C=Gz8Q@mail.gmail.com>
 <CAOp4FwRaMQsJ645_wgophQoKDvYonopMuMK2Q6W7+c002jT01g@mail.gmail.com>
Date: Wed, 04 Jun 2025 15:03:36 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87frgfwtef.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] MQ-CAKE: Scaling software rate limiting across CPU cores
 (Netdevconf 0x19 - 2025)
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

TG9nYW5hZGVuIFZlbHZpbmRyb24gdmlhIENha2UgPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0
PiB3cml0ZXM6Cgo+IFRoZSBleGNoYW5nZSBiZXR3ZWVuIEVyaWMgRHVtYXpldCBhbmQgVG9rZSB3
YXMgdmVyeQo+IGludGVyZXN0aW5nIDotRAoKSGFoLCB5dXAsIGFsd2F5cyBmdW4gdG8gYXJndWUg
d2l0aCBFcmljIDspCgotVG9rZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApo
dHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

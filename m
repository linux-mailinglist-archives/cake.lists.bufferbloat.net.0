Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F68420A649
	for <lists+cake@lfdr.de>; Thu, 25 Jun 2020 22:00:57 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EDEDD3CB38;
	Thu, 25 Jun 2020 16:00:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593115255;
	bh=6fss4jydDKPp9DuZrygxX1oM1QEp0hVala6k/PpRuyc=;
	h=Date:To:From:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fTGmUcUMPNfFyQT2BZRqaK9HduVpJZW0vrczR7v/9AwcCfOkfPbk9/3MiTy10jRk/
	 d0X1EcrYoDieS/AGejTaM8Lnx4fAYlLW7wIpsICtH2znbI5YpNH3Oo/93KRfhtOw+B
	 BVS9RmfNTlYDy1OHz4KxiIpqXEF7frMdVxQTDMi/egxwDbMb910+oYdRjx7YMX7lzo
	 8Fg8yKzfNG5iUoVWUv92Y4VttTfMiqAAhFx6SRT0ripVWOapIaEG6KSaJHfnv/Zik5
	 D/gAcMyhT7jv2BTHmDEXriG82KNEDqDI0uq/QAtJOxAyqo68APUGy9WtjLi4FngwQt
	 WcQxV3k4B8h0Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CD5463B29D
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 16:00:54 -0400 (EDT)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 7E0FE13FAD9DB;
 Thu, 25 Jun 2020 13:00:53 -0700 (PDT)
Date: Thu, 25 Jun 2020 13:00:52 -0700 (PDT)
Message-Id: <20200625.130052.925991356126527167.davem@davemloft.net>
To: toke@redhat.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <87k0zuj50u.fsf@toke.dk>
References: <159308610390.190211.17831843954243284203.stgit@toke.dk>
 <20200625.122945.321093402617646704.davem@davemloft.net>
 <87k0zuj50u.fsf@toke.dk>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 25 Jun 2020 13:00:53 -0700 (PDT)
Subject: Re: [Cake] [PATCH net-next 1/5] sch_cake: fix IP protocol handling
 in the presence of VLAN tags
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
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CkRhdGU6IFRo
dSwgMjUgSnVuIDIwMjAgMjE6NTM6NTMgKzAyMDAKCj4gSSB0aGluayBpdCBkZXBlbmRzIGEgbGl0
dGxlIG9uIHRoZSB1c2UgY2FzZTsgc29tZSBjYWxsZXJzIGFjdHVhbGx5IGNhcmUKPiBhYm91dCB0
aGUgVkxBTiB0YWdzIHRoZW1zZWx2ZXMgYW5kIGhhbmRsZSB0aGF0IHNwZWNpYWxseSAoZS5nLiwK
PiBhY3RfY3N1bSkuIFdoZXJlYXMgb3RoZXJzIChlLmcuLCBzY2hfZHNtYXJrKSBwcm9iYWJseSB3
aWxsIGhhdmUgdGhlIHNhbWUKPiBpc3N1ZS4gSSBndWVzcyBJIGNhbiB0cnlpbmcgZ29pbmcgdGhy
b3VnaCB0aGVtIGFsbCBhbmQgZmlndXJpbmcgb3V0IGlmCj4gdGhlcmUncyBhIG1vcmUgZ2VuZXJp
YyBzb2x1dGlvbi4KClRoYXQgbWFrZXMgc2Vuc2UuCgo+IEknbGwgc3BsaXQgb3V0IHRoZSBkaWZm
c2VydiBwYXJzaW5nIGZpeGVzIGFuZCBzZW5kIHRob3NlIGZvciB5b3VyIG5ldAo+IHRyZWUgc3Ry
YWlnaHQgYXdheSwgdGhlbiBjaXJjbGUgYmFjayB0byB0aGlzIG9uZS4uLgoKR3JlYXQsIHRoYW5r
IHlvdS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2Fr
ZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5i
dWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

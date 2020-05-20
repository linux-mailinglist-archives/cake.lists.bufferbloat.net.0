Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD041DBC82
	for <lists+cake@lfdr.de>; Wed, 20 May 2020 20:17:24 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 29C693CB38;
	Wed, 20 May 2020 14:17:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1589998643;
	bh=rhO6H1GILaCm6AnaXsUU7li5P+ul4fi5OumHQ5TXnIQ=;
	h=Date:To:From:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J1epSxX2MQOPMPhTl8KFNAtGS/8J6qzsK0HEibzEyXxWCggjbBMW0eu2dr5WztBRP
	 adxk+EPdE1lLnuUm8xEHBAvhrfLFatTFFdacVLpWgChGqBHzqPUHX7Gfh/W6Ur67w6
	 J31qf8kf2saAiFTnVVLg0wXmuo2HMieHjA+7tb2+rpnLtnWVAh/xkUWhCP0zGgW82V
	 wQ6Tx587daNCHGjxD62aoRf5ZSmubSL5MkOoNnBV0qI74pelJMLY+zGrcne5lxaS9z
	 QVttswcqLMjLyQ+AkyeoEd8YvGkShm00zDpZC03cutBpkYqfKdy50aIvczoadBWFz3
	 9n1OjO3UPDvKw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5C0AE3B29E
 for <cake@lists.bufferbloat.net>; Wed, 20 May 2020 14:17:21 -0400 (EDT)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 8029D12995B49;
 Wed, 20 May 2020 11:17:18 -0700 (PDT)
Date: Wed, 20 May 2020 11:17:17 -0700 (PDT)
Message-Id: <20200520.111717.835995575109387492.davem@davemloft.net>
To: a@unstable.cc
From: David Miller <davem@davemloft.net>
In-Reply-To: <2a6a8d4b-cb78-f717-5ede-29a921c5cb05@unstable.cc>
References: <20200519091333.20923-1-a@unstable.cc>
 <20200519.154019.1247104207621510920.davem@davemloft.net>
 <2a6a8d4b-cb78-f717-5ede-29a921c5cb05@unstable.cc>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 20 May 2020 11:17:18 -0700 (PDT)
Subject: Re: [Cake] [PATCH] net/sch_generic.h: use sizeof_member() and get
 rid of unused variable
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org, jhs@mojatatu.com,
 cake@lists.bufferbloat.net, xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogQW50b25pbyBRdWFydHVsbGkgPGFAdW5zdGFibGUuY2M+CkRhdGU6IFdlZCwgMjAgTWF5
IDIwMjAgMTA6Mzk6MzMgKzAyMDAKCj4gSSBkb24ndCB0aGluayBpdCdzIEJVSUxEX0JVR19PTigp
J3MgZmF1bHQsIGJlY2F1c2UgcWNiLT5kYXRhIGlzIHBhc3NlZAo+IHRvIHNpemVvZigpIGZpcnN0
Lgo+IAo+IE15IGJlc3QgZ3Vlc3MgaXMgdGhhdCBnY2MgaXMgc29tZXdoYXQgb3B0aW1pemluZyB0
aGUgc2l6ZW9mKGdjYi0+ZGF0YSkKPiBhbmQgdGh1cyBsZWF2aW5nIHRoZSBnY2IgdmFyaWFibGUg
dW51c2VkLgoKSWYgeW91IHJlbW92ZSB0aGUgYXJndW1lbnQgZnJvbSB0aGUgZnVuY3Rpb24gYnV0
IGxlYXZlIHRoZSBCVUlMRF9CVUdfT04oKQpjYWxscyB0aGUgc2FtZSwgdGhlIGNvbXBpbGF0aW9u
IHdpbGwgZmFpbC4KCkFueSBzdWNoIG9wdGltaXphdGlvbiBpcyB0aGVyZWZvcmUgdW5yZWFzb25h
YmxlLgoKVGhlIHZhcmlhYmxlIGlzIHVzZWQgb3RoZXJ3aXNlIGNvbXBpbGF0aW9uIHdvdWxkIG5v
dCBmYWlsIHdoZW4geW91CnJlbW92ZSBpdCByaWdodD8KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZm
ZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

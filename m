Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8571C217B3B
	for <lists+cake@lfdr.de>; Wed,  8 Jul 2020 00:49:15 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0A1A93CB42;
	Tue,  7 Jul 2020 18:49:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1594162154;
	bh=QYdM+ocggkocJGVK1lbdtbsQExidWklYbafJYha5oDs=;
	h=Date:To:From:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RcBJeDtwmljghII4zmHTKlj3AuehtqZtGx2d0ADPqAatLKiS39XeGjHBGlHxwkT1k
	 NPbBfKfZZFeEggOPam2PRDoKH7B+LRLp9GbmwJ7Hg7t5onp0CnaqEOWxOL4W80bq64
	 eZOL3Sqh7YKBL9oErpgCM6hOcimSC3XaNG0rSgXlXb+vR4dU58nXkqmwmO3e0QecUU
	 r5zf7eSImlyiM9a6I5Wm/w6CfGiPjXQ3XQplcU/bkehVX0BwY8fm+k+U+1K9OR4Ugv
	 OP8vkKpml1LBwGvN31WMzW2VkOyEpGcQCBWMDQ3xz5uEPPEhMyF4QtDojSLaVMK54k
	 aMFV6HH9AP3Eg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4995C3B29E
 for <cake@lists.bufferbloat.net>; Tue,  7 Jul 2020 18:49:13 -0400 (EDT)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B24BA120F19EC;
 Tue,  7 Jul 2020 15:49:10 -0700 (PDT)
Date: Tue, 07 Jul 2020 15:49:10 -0700 (PDT)
Message-Id: <20200707.154910.182089612829642491.davem@davemloft.net>
To: toke@redhat.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200707110325.86731-1-toke@redhat.com>
References: <20200707110325.86731-1-toke@redhat.com>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 07 Jul 2020 15:49:11 -0700 (PDT)
Subject: Re: [Cake] [PATCH net v2] vlan: consolidate VLAN parsing code and
 limit max parsing depth
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
Cc: dcaratti@redhat.com, jiri@resnulli.us, daniel@iogearbox.net,
 netdev@vger.kernel.org, toshiaki.makita1@gmail.com, jhs@mojatatu.com,
 cake@lists.bufferbloat.net, xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CkRhdGU6IFR1
ZSwgIDcgSnVsIDIwMjAgMTM6MDM6MjUgKzAyMDAKCj4gVG9zaGlha2kgcG9pbnRlZCBvdXQgdGhh
dCB3ZSBub3cgaGF2ZSB0d28gdmVyeSBzaW1pbGFyIGZ1bmN0aW9ucyB0byBleHRyYWN0Cj4gdGhl
IEwzIHByb3RvY29sIG51bWJlciBpbiB0aGUgcHJlc2VuY2Ugb2YgVkxBTiB0YWdzLiBBbmQgRGFu
aWVsIHBvaW50ZWQgb3V0Cj4gdGhhdCB0aGUgdW5ib3VuZGVkIHBhcnNpbmcgbG9vcCBtYWtlcyBp
dCBwb3NzaWJsZSBmb3IgbWFsaWNpb3VzbHkgY3JhZnRlZAo+IHBhY2tldHMgdG8gbG9vcCB0aHJv
dWdoIHBvdGVudGlhbGx5IGh1bmRyZWRzIG9mIHRhZ3MuCj4gCj4gRml4IGJvdGggb2YgdGhlc2Ug
aXNzdWVzIGJ5IGNvbnNvbGlkYXRpbmcgdGhlIHR3byBwYXJzaW5nIGZ1bmN0aW9ucyBhbmQKPiBs
aW1pdGluZyB0aGUgVkxBTiB0YWcgcGFyc2luZyB0byBhIG1heCBkZXB0aCBvZiA4IHRhZ3MuIEFz
IHBhcnQgb2YgdGhpcywKPiBzd2l0Y2ggb3ZlciBfX3ZsYW5fZ2V0X3Byb3RvY29sKCkgdG8gdXNl
IHNrYl9oZWFkZXJfcG9pbnRlcigpIGluc3RlYWQgb2YKPiBwc2tiX21heV9wdWxsKCksIHRvIGF2
b2lkIHRoZSBwb3NzaWJsZSBzaWRlIGVmZmVjdHMgb2YgdGhlIGxhdHRlciBhbmQga2VlcAo+IHRo
ZSBza2IgcG9pbnRlciAnY29uc3QnIHRocm91Z2ggYWxsIHRoZSBwYXJzaW5nIGZ1bmN0aW9ucy4K
PiAKPiB2MjoKPiAtIFVzZSBsaW1pdCBvZiA4IHRhZ3MgaW5zdGVhZCBvZiAzMiAobWF0Y2hpbmcg
WE1JVF9SRUNVUlNJT05fTElNSVQpCj4gCj4gUmVwb3J0ZWQtYnk6IFRvc2hpYWtpIE1ha2l0YSA8
dG9zaGlha2kubWFraXRhMUBnbWFpbC5jb20+Cj4gUmVwb3J0ZWQtYnk6IERhbmllbCBCb3JrbWFu
biA8ZGFuaWVsQGlvZ2VhcmJveC5uZXQ+Cj4gRml4ZXM6IGQ3YmYyZWJlYmMyYiAoInNjaGVkOiBj
b25zaXN0ZW50bHkgaGFuZGxlIGxheWVyMyBoZWFkZXIgYWNjZXNzZXMgaW4gdGhlIHByZXNlbmNl
IG9mIFZMQU5zIikKPiBTaWduZWQtb2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRv
a2VAcmVkaGF0LmNvbT4KCkFwcGxpZWQsIHRoYW5rIHlvdS4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Fr
ZQo=

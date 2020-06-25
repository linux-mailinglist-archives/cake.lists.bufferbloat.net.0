Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C729420A5D5
	for <lists+cake@lfdr.de>; Thu, 25 Jun 2020 21:29:49 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 50C623CB38;
	Thu, 25 Jun 2020 15:29:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593113388;
	bh=z4OgJegj4fptz4Wo9MPs1R4GfqOSwq8ArUViad3UN+I=;
	h=Date:To:From:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jIy7gyWAHkGc9IYpBIA3H4Zs0rSJq7R3Ug1Imt/67tkZ2X0A6IpTMB4UCLBWJyNsE
	 ewoVH1QE12uut+j2GQebJJrVPRg8KuJXXlTN6+ecABKwD6bdr83ci0jdslwmPzbAZq
	 kE35EHQSz1AFWMhjj1QhxuMoLh01ul/qSf8+Ir6iNlLbxSFGQfTHL1DcOOVAIAy/Gn
	 3A5qCd03wK9C6yYj/ysjMCRAEmfqyCy/H+wbOxIUNEX98lml3mY8ghCIJ+QgpN2O6l
	 wh1YdQuuJR5KmHtiyDTc4ltawTmDmdUV7q9yM4r5pbSYbkyvqWgLYJgaVJSRGe+ZEk
	 8xLVGou4C2uMw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 523EB3B29D
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 15:29:47 -0400 (EDT)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 42D89129D591D;
 Thu, 25 Jun 2020 12:29:46 -0700 (PDT)
Date: Thu, 25 Jun 2020 12:29:45 -0700 (PDT)
Message-Id: <20200625.122945.321093402617646704.davem@davemloft.net>
To: toke@redhat.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <159308610390.190211.17831843954243284203.stgit@toke.dk>
References: <159308610282.190211.9431406149182757758.stgit@toke.dk>
 <159308610390.190211.17831843954243284203.stgit@toke.dk>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 25 Jun 2020 12:29:46 -0700 (PDT)
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
dSwgMjUgSnVuIDIwMjAgMTM6NTU6MDMgKzAyMDAKCj4gRnJvbTogSWx5YSBQb25ldGF5ZXYgPGku
cG9uZXRhZXZAbmRtc3lzdGVtcy5jb20+Cj4gCj4gQ0FLRSB3YXMgdXNpbmcgdGhlIHJldHVybiB2
YWx1ZSBvZiB0Y19za2JfcHJvdG9jb2woKSBhbmQgZXhwZWN0aW5nIGl0IHRvIGJlCj4gdGhlIElQ
IHByb3RvY29sIHR5cGUuIFRoaXMgY2FuIGZhaWwgaW4gdGhlIHByZXNlbmNlIG9mIFFpblEgVkxB
TiB0YWdzLAo+IG1ha2luZyBDQUtFIHVuYWJsZSB0byBoYW5kbGUgRUNOIG1hcmtpbmcgYW5kIGRp
ZmZzZXJ2IHBhcnNpbmcgaW4gdGhpcyBjYXNlLgo+IEZpeCB0aGlzIGJ5IGltcGxlbWVudGluZyBv
dXIgb3duIHZlcnNpb24gb2YgdGNfc2tiX3Byb3RvY29sKCksIHdoaWNoIHdpbGwKPiB1c2Ugc2ti
LT5wcm90b2NvbCBkaXJlY3RseSwgYnV0IGFsc28gcGFyc2UgYW5kIHNraXAgb3ZlciBhbnkgVkxB
TiB0YWdzIGFuZAo+IHJldHVybiB0aGUgaW5uZXIgcHJvdG9jb2wgbnVtYmVyIGluc3RlYWQuCj4g
Cj4gQWxzbyBmaXggQ0UgbWFya2luZyBieSBpbXBsZW1lbnRpbmcgYSB2ZXJzaW9uIG9mIElORVRf
RUNOX3NldF9jZSgpIHRoYXQKPiB1c2VzIHRoZSBzYW1lIHBhcnNpbmcgcm91dGluZS4KPiAKPiBG
aXhlczogZWE4MjUxMTUxOGY0ICgic2NoX2Nha2U6IEFkZCBOQVQgYXdhcmVuZXNzIHRvIHBhY2tl
dCBjbGFzc2lmaWVyIikKPiBGaXhlczogYjIxMDBjYzU2ZmNhICgic2NoX2Nha2U6IFVzZSB0Y19z
a2JfcHJvdG9jb2woKSBoZWxwZXIgZm9yIGdldHRpbmcgcGFja2V0IHByb3RvY29sIikKPiBGaXhl
czogMDQ2ZjZmZDVkYWVmICgic2NoZWQ6IEFkZCBDb21tb24gQXBwbGljYXRpb25zIEtlcHQgRW5o
YW5jZWQgKGNha2UpIHFkaXNjIikKPiBTaWduZWQtb2ZmLWJ5OiBJbHlhIFBvbmV0YXlldiA8aS5w
b25ldGFldkBuZG1zeXN0ZW1zLmNvbT4KPiBbIHNxdWFzaCBvcmlnaW5hbCB0d28gcGF0Y2hlcywg
cmV3cml0ZSBjb21taXQgbWVzc2FnZSBdCj4gU2lnbmVkLW9mZi1ieTogVG9rZSBIw7hpbGFuZC1K
w7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CgpGaXJzdCwgdGhpcyBpcyBhIGJ1ZyBmaXggYW5k
IHNob3VsZCBwcm9iYWJseSBiZSBzdGVlcmVkIHRvICduZXQnLgoKQWxzbywgb3RoZXIgdXNlcnMg
b2YgdGNfc2tiX3Byb3RvY29sKCkgYXJlIGFsbW9zdCBjZXJ0YWlubHkgaGl0dGluZyBhCnNpbWls
YXIgcHJvYmxlbSBhcmVuJ3QgdGhleT8gIE1heWJlIGZpeCB0aGlzIGdlbmVyaWNhbGx5LgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo=

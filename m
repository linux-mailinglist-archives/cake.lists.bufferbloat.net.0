Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2E933325E
	for <lists+cake@lfdr.de>; Wed, 10 Mar 2021 01:31:15 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1657A3CB39;
	Tue,  9 Mar 2021 19:31:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1615336274;
	bh=+IhFlp+f6z257eQ8VBwAOdMD3k6MuhcwxPh49NirwPs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bFDflsnpSUXgNqiG3AjB7HGyMmy+2PJ3wVv57PdwMhtQYbJ6t0+BZMNmiUH5AxhXw
	 TGtTyhuQdcXlGWy77ybJ7gQTvNKwH2M1YMkuDVQ5b6oka//xp1No76YPFj6QbNdjkc
	 A4GRMHVk++vfK1PlLQEPR/hoZw8fQGsmUf62Iv37di7k6PXFzRF4HuUW8TJ2MkDm8b
	 SiTACvhZSU3MCtQHZOumQjYOYTZ4K/Jwh0W5J3pnARcyYIdlws36s5Yw8Sh+rUgb3j
	 kdYm2GP2f1hdKFHnIfkc7x9Ch9RLaeIDTBiyX70mJG1iVC7Xqy9ti3GdY1qcpfFY5v
	 9Z2geZ2hPfXRQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 052133B2A4
 for <cake@lists.bufferbloat.net>; Tue,  9 Mar 2021 19:31:12 -0500 (EST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id BE63B5C00DE;
 Tue,  9 Mar 2021 19:31:12 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 09 Mar 2021 19:31:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 message-id:subject:from:to:cc:date:in-reply-to:references
 :content-type:mime-version:content-transfer-encoding; s=fm2; bh=
 CVbCQTiTjdTKRnn3QeErTmERjjJecnoJZIzK2t3NGjE=; b=Gy8/i+wt7nctFHg6
 a3z4fddLZCRdB2th4+ivvm3gCwVj4g2NmgUreGYopfUPoXmqcEuXW7V9nr7rUdL4
 CtnOxaRN1kkA7p0NbEpFN85yoaMQhU+r1BrUWjkAZgG/VM/wIsPnTGEENv7FZw1I
 HHqbh+ugZzGTzcGi1/qpg2JJREVCYbJxUO8Ezxmq7QTjnFXXNgeyBOTOUcZiMWy/
 F8t7n21AGl4TwcXuElmpW88pYmBHunVru/lu7pWtdUQTrtSzbrMQ7uU3IApkh5CJ
 NmQFpoYlL3PeGWm98lKzLYzwtBqMvfj+AESr2MenYwQshjvTKsFL00LbkcoC4/yq
 /6TgZw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=CVbCQTiTjdTKRnn3QeErTmERjjJecnoJZIzK2t3NG
 jE=; b=rSDGXDf8QlFBoNcryI/1ymx46rWGKB2HqXIgMfDmaXLacN8SsgCVWKGC8
 wxtftqSrfmR3iiYaKd3MlNTm10PFD+Bjl3NsMKyalNgJwC6ObrnH3COHxnd19fDf
 eyV17FHRNvBX+k0+Z1WDYH8K+FI0Te7mvIH/2Butorqz0lGfsURMdfRfT1/mwrKQ
 9vw2vw9i3Ka7nXS5giHu5Rpx55ce6oPiYR08bktOgDbxI3GhgjCCo0k9hBi2IwwW
 C7sVxMYSlwAj/BgttcbBMTKcfwn4oauvOyjpIkMQ+A4NCvA3CVFgAFO6zqae0C+r
 63mxOmHCih2w9HsWXwDvznJSJ1Mpg==
X-ME-Sender: <xms:UBNIYP2VeNLID-WcDD-JyBBOsEk8FLMvvT8b5ETbT-y7o9QANrW9Fg>
 <xme:UBNIYJdJlL1mjt9doPej01EMN7pbZ_eDwVjCrb8GILQVA7HAmOpxVzZJYLE-uxfMJ
 iA_N6mZdDYGa3-_Uw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledruddujedguddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepkffuhffvffgjfhgtfggggfesthekredttderjeenucfhrhhomheppfhilhhs
 ucetnhgurhgvrghsucfuvhgvvgcuoehmvgeslhhotghhnhgrihhrrdhnvghtqeenucggtf
 frrghtthgvrhhnpeejvefhleetvdfhueetiedvkeeggeevleelkefgtdffkefhueelffff
 udelveeivdenucfkphepudekhedrudejhedrheeirdefudenucevlhhushhtvghrufhiii
 gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmvgeslhhotghhnhgrihhrrdhnvght
X-ME-Proxy: <xmx:UBNIYJQFJujuO28JyLjYWX2AArUiKE64aWqlFd01lLQxyBx-LXQ_9g>
 <xmx:UBNIYMmfDvG4Gr8MW7ZVjulrWwx5hM7D9ONy4ypeK5YPy_sKqyPmnQ>
 <xmx:UBNIYNqJvWfOLfLAzGKYIcoirakzNW7jnlwheuYbVxsui7o9zcqELg>
 <xmx:UBNIYFmle8nB2Foq0u9fFpYY2Tbr5t_lgp5OwI4HDSBFnmuxZr7kpw>
Received: from [10.1.100.229] (gate.stokkdalen.net [185.175.56.31])
 by mail.messagingengine.com (Postfix) with ESMTPA id 738E0240064;
 Tue,  9 Mar 2021 19:31:11 -0500 (EST)
Message-ID: <59bb446ac8791ead9d3ce9a0f1bfff3e7d6f58d8.camel@lochnair.net>
From: Nils Andreas Svee <me@lochnair.net>
To: Jonathan Morton <chromatix99@gmail.com>, Dave Taht <dave.taht@gmail.com>
Date: Wed, 10 Mar 2021 01:31:07 +0100
In-Reply-To: <9AADDAFC-ECCE-4023-BB68-C5CC729EC521@gmail.com>
References: <5407860ac65c4059838e7952ae162f9d@telenor.no>
 <CAA93jw6Z1af9T=qf5kjwnhu+_4V6JnKXrUciXAuL1sEpkBCWWg@mail.gmail.com>
 <9AADDAFC-ECCE-4023-BB68-C5CC729EC521@gmail.com>
User-Agent: Evolution 3.38.4 
MIME-Version: 1.0
Subject: Re: [Cake] STEAM tcp algo from CDN?
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
Cc: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= via Cake
 <cake@lists.bufferbloat.net>, Taraldsen Erik <erik.taraldsen@telenor.no>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gV2VkLCAyMDIxLTAzLTEwIGF0IDAxOjE0ICswMjAwLCBKb25hdGhhbiBNb3J0b24gd3JvdGU6
Cj4gPiBPbiA5IE1hciwgMjAyMSwgYXQgMTA6MjAgcG0sIERhdmUgVGFodCA8ZGF2ZS50YWh0QGdt
YWlsLmNvbT4gd3JvdGU6Cj4gPiAKPiA+IDEwLTIwIGZsb3dzLCBjdWJpYywgbGFzdCBJIGxvb2tl
ZC4gSXQncyB1Z2x5Lgo+IAo+IEkgY2FuJ3QgY29uZmlybSBDVUJJQyBmcm9tIGhlcmUsIGJ1dCBp
dCBzZWVtcyB0byBiZSA0LTggZmxvd3MgaW4KPiBwYXJhbGxlbCBub3cuwqAgTGF0ZW5jeSB0byB0
aGUgbmF0aW9uYWwgQ0ROIGlzIGFib3V0IDIybXMgb3ZlciBMVEUsIHNvCj4gaXQncyBoYXJkIHRv
IGRpc3Rpbmd1aXNoIENVQklDIGZyb20gYW55dGhpbmcgZWxzZSBpbiBwYXJ0aWN1bGFyOyBpbgo+
IHRoaXMgcmFuZ2UgaXQgd291bGQgbG9vayBhIGxvdCBsaWtlIE5ld1Jlbm8uwqAgSXQgc2VlbXMg
dG8gc2h1dCBkb3duCj4gZWFjaCBmbG93IGFuZCBzdGFydCBhIGZyZXNoIG9uZSBhZnRlciBhYm91
dCBhIG1pbnV0ZS4KU2VlaW5nIHNvbWV3aGVyZSBiZXR3ZWVuIDgtMTYgaGVyZSBJIGJlbGlldmUu
IElJUkMgSSd2ZSBzZWVuIHlvdQptZW50aW9uIGJlaW5nIGxvY2F0ZWQgaW4gRmlubGFuZCwgaWYg
c28gd2UncmUgcHJvYmFibHkgb24gdGhlIHNhbWUKZGF0YWNlbnRlciBpbiBTdG9ja2hvbG0uCgpU
aGUgZmxvd3MgYXJlIHByb2JhYmx5IG5vdCBsYXN0aW5nIGxvbmcgYmVjYXVzZSB0aGUgZG93bmxv
YWRzIGFyZSBzcGxpdAppbnRvIGNodW5rcywgd2hpY2ggYWNjb3JkaW5nIHRvIG15IGxvZ3MgYXJl
IGF0IG1vc3QgMSBNQi4gUGF0Y2hlcyBzZWVtCnRvIHdvcmsgZGlmZmVyZW50bHksIHRob3NlIGNh
biBiZSBtdWNoIGxhcmdlciAobG9ncyBzaG93cyB0aGUgbGFyZ2VzdApvbmUgdGhlIHBhc3QgbW9u
dGhzIHdhcyAxMzcgTUIsIGRlcGVuZHMgb24gdGhlIGdhbWUgSSBhc3N1bWUpLgoKLS0gCkJlc3Qg
UmVnYXJkcywKTmlscwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6
Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

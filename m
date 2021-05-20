Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8FB38B408
	for <lists+cake@lfdr.de>; Thu, 20 May 2021 18:08:09 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 978833CB40;
	Thu, 20 May 2021 12:07:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1621526872;
	bh=m6K+KDeqwfvFdomnsIWtq5PEAh4D4vorJcA8DtKkMxM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=YzXtuJjeaW8THEYcZ/DsU2Vua6hpoIAr+0Bpsz0M5PVhKE4fZ4RToZRzu07VrVHy4
	 U07cOXY7A+f3LAzXvxT0q3u6K/X/mF4KgEe9gT0bt7aoiT+BmgHQn2oy9TSmo3ox+I
	 mUry9X5QPFWz6p1TVo7PXd9goKq1oTq59Nvi4qhYlAkZPe5QEsW0kjsqeniH4tDxvE
	 LTKIJou2ewIY5CZ/Sr+3yUyk4xoH66SzrSurx1rolZLUXTUADJI3GCPyICNrBax36U
	 M2G0vhJP43DxmKKYpeisRS9xJuyJqXv7KtnyDbBcH7rgGd+pyRd6I1wtL9/OmRuC/K
	 w8kuD6J+47YQw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
 [64.147.123.20])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BAAF13B29E
 for <cake@lists.bufferbloat.net>; Thu, 20 May 2021 12:07:50 -0400 (EDT)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id C860F1676
 for <cake@lists.bufferbloat.net>; Thu, 20 May 2021 12:07:49 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 20 May 2021 12:07:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 message-id:subject:from:to:date:content-type:mime-version
 :content-transfer-encoding; s=fm3; bh=MbX5bGwZ37ns66YpRGSRp6Waqg
 fgfa58wNpvGo9u/qY=; b=Se62zJRLY6h1YvLuP82AOJsd+baTQx+AqtOhg61rXO
 m7vwMHXvQ3ElBUzfn19qbLq0dNPoK2xFQH1dqoR2/qIgrcJx+oKw9wwKGBHPmhIH
 s8KUGo51zcgtQlrqcsWAlrM4zyROndlYS1XXj8MZ+wp3ec3BNYrbzR9pCJsQ/7Pu
 F1tj5LPlTF6w8aW+wtVllr2Ck8I/i0UupF4djhk2MQ5uJ4tZqRF0BoVfc7RZCAz9
 yNpC9erpu7Jc8Uq6L4S80yCLfP9/oIrx0DEeizBwhRm2sSE3J61odXwpxQLjItyx
 2gBmXmPZXtngSW/EG7/XTDGbsB7gpgulE/BrykgOyD9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-transfer-encoding:content-type
 :date:from:message-id:mime-version:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=MbX5bG
 wZ37ns66YpRGSRp6Waqgfgfa58wNpvGo9u/qY=; b=X5tge3ffhf88ru3RoPHLh2
 4BwYQmqdwhCQ4/j4RV2GHXjeaFLxR0aaNqxAsV0CBZ+psyhjTdGZ4dkrs/+dfjR5
 psQO8Sz0xmy4+5xVbOVBKXD/LtboZNaZICQIlfW0ZfaeNsiAf/gnji8dylHigFtj
 kFwDIA/VliTne2K2Qb9tVZuQwpZiRbIqjiBjz8KhTsqBgxzUONgllTGHnAw8cCPv
 0N7BSWnZyJLd4FyNRT0bibRBmB42ehmNcEj+IsU/tUq1qNVgLkwQCvxxA6n/b9l4
 sAEbXW1vZsHZzdjSrxPy31CApon/+jQzB8CzFnlzzYmL8Q0UrtHUAQRoE2Kx6MAA
 ==
X-ME-Sender: <xms:VYmmYBpPv-MdJpGH0kCSvC4rsYbQB6rsEqsbSnDxbnNfEstWT2_fdA>
 <xme:VYmmYDomdJnp-Re2vspZS57I9tbydlBg3wxcKHKT_BnQuaS_O8fR-uUk_Ar_a_1DZ
 4pBN54BxhvIYqA9VQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdejuddgleekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepkffuhffvffgtfggggfesthejredttderjeenucfhrhhomheppfhilhhsucet
 nhgurhgvrghsucfuvhgvvgcuoehmvgeslhhotghhnhgrihhrrdhnvghtqeenucggtffrrg
 htthgvrhhnpeetleeghfdvueejjeelvddtffevhfdtgfffgefhkeefleevvdetheettddv
 kedtfeenucfkphepudekhedrudejhedrheeirddvheefnecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgvsehlohgthhhnrghirhdrnhgvth
X-ME-Proxy: <xmx:VYmmYOO6pDEQsljiVWRWeuc3KxZNAKcAyvqqwEmy8_3wQyHE_oMRXQ>
 <xmx:VYmmYM7wMosPYIri8ncaOVBjqiVsnkwxDOWi2sVmvJngX6umS-DkYA>
 <xmx:VYmmYA5gNecQliMOrKCYz2V7c1rHNGFEGaAyXa5OVv6Mq3Po_BySRg>
 <xmx:VYmmYCHD3E4EG8ck-yYn_YAukex48_e98r9L9jNCR5Bd-FTltmb58g>
Received: from [192.168.137.61] (gate.sveet.no [185.175.56.253])
 by mail.messagingengine.com (Postfix) with ESMTPA
 for <cake@lists.bufferbloat.net>; Thu, 20 May 2021 12:07:48 -0400 (EDT)
Message-ID: <91d484ec338c58f622c25285bf4ff8658fde4a03.camel@lochnair.net>
From: Nils Andreas Svee <me@lochnair.net>
To: CAKE list <cake@lists.bufferbloat.net>
Date: Thu, 20 May 2021 18:07:43 +0200
User-Agent: Evolution 3.40.1 
MIME-Version: 1.0
Subject: [Cake] CAKE host isolation modes with NAT - two routers
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgZm9sa3MKCkN1cnJlbnRseSBteSBzZXR1cCBsb29rcyBzb21ldGhpbmcgbGlrZSB0aGlzOiBM
QU4gPC0+IEVkZ2VSb3V0ZXIgPC0+CldpcmVHdWFyZCA8LT4gVlBTIDwtPiBJbnRlcm5ldC4KCkNB
S0UgZm9yIHVwc3RyZWFtIGlzIHJ1bm5pbmcgb24gdGhlIEVkZ2VSb3V0ZXIgYW5kIGRvd25zdHJl
YW0gb24gdGhlClZQUy4KClRoZSBwdWJsaWMgSVBzIGFyZSBhbGwgb24gdGhlIFZQUyBwZXIgdG9k
YXksIHNvIHRoYXQgdGhlIGhvc3QgaXNvbGF0aW9uCmNhbiBkbyBpdHMgam9iIHdpdGggTkFUIGVu
YWJsZWQuCgpJZGVhbGx5IEknZCBsaWtlIHRvIHJvdXRlIHRoZSBwdWJsaWMgSVBzIHRvIGVhY2gg
ZW5kcG9pbnQgYW5kIGhhbmRsZQpOQVQtaW5nIHRoZXJlLCBidXQgdGhlbiBJJ2Qgb2J2aW91c2x5
IGxvc2UgdGhlIGFiaWxpdHkgdG8gZG8gcHJvcGVyCmhvc3QgaXNvbGF0aW9uLgoKTm93LCBJJ3Zl
IGJlZW4gdG95aW5nIHdpdGggdGhlIGlkZWEgb2YgdXNpbmcgYW4gdXNlcnNwYWNlIGFwcGxpY2F0
aW9uCnRvIGV4dHJhY3QgY29ubnRyYWNrIGluZm9ybWF0aW9uLCB0byBsZXQgdGhlIFZQUyBrbm93
IHdoaWNoIGhvc3QgaGFzaAppdCBzaG91bGQgdXNlLgoKSSBtaWdodCBiZSB3YXkgb2YgaGVyZSwg
YnV0IEknbSB0aGlua2luZyBvZiB1c2luZyBORlFVRVVFIHRvIG1hcmsgbmV3CmZsb3dzIGJhc2Vk
IG9uIGluZm9ybWF0aW9uIGZyb20gdGhlIEVkZ2VSb3V0ZXIsIGFuZCBsZXQgdGMgZmlsdGVycyBz
ZXQKdGhlIGhvc3QgaGFzaCBiYXNlZCBvbiB0aGF0IG1hcmsuIEZvciBwZXJmb3JtYW5jZSBwdXJw
b3NlcyBvbmx5IHNlbmQKdW5tYXJrZWQgZmxvd3MgdG8gTkZRVUVVRS4KCkkgcmVhbGlzZSB0aGlz
IGlzIGtpbmRhIG92ZXJraWxsLCBidXQgaXQgbWlnaHQgd2UgYSBmdW4gd2Vla2VuZApwcm9qZWN0
LgoKLS0gCkJlc3QgUmVnYXJkcywKTmlscwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

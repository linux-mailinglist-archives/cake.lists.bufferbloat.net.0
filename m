Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E5845A242
	for <lists+cake@lfdr.de>; Tue, 23 Nov 2021 13:12:14 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 930B23CB39;
	Tue, 23 Nov 2021 07:12:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1637669532;
	bh=7zBEFQZd65IuwW3dqPs6s05s7HTJO2Ne8kAipsPPRW4=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=oxJphfHSKskqtphvrf9nfdCNq4vs4dWEqNnZBLraqSVgHIfrCa+TgX429eiPt+09H
	 64/PFa57U2gl02NJDaj/EK0oBJ2OvEgxhvFw9f2gzgVYxuoIkDJsIJDuhbUiaI/Ove
	 AWNvgj2dWiRzQzFUl4ucOZB1hfCt9PXVCDpt4PNG1wkd5kWwn7gR7gNyCYMc9UmryM
	 ex0pQreIkgdurx4cbTXT2qVbq5c4JOLcV9k9qvt2tfeap8Zx6lLmIZiwraeRV9G0jt
	 bhbLWaT91kF7Br7Mqieg3GufOAyrDngelmaJJu/8cfbU/v93yZ02tFR2fhcm/yugIT
	 yzCx120WoeQ1A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 138CF3B29D
 for <cake@lists.bufferbloat.net>; Tue, 23 Nov 2021 07:12:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1637669527; bh=7P2pXodKLBqHfgR8t3LKtY0nO7+UcmUn4Zx4MdcLtT8=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=SOgZyE8Pf0KkVQfaARFQPsfwdVkjfM83v4GYOqoT8cc50/l+teFAKq9mgv+fuPQkj
 fHsRUwPh/FfBFFt5WxDM5Ok8vDR1NZ4dPxl1bcG9xWIR+S2efSQr8lYWLfLKnnyaGt
 7o3LYM8a/Vi01y1TW7ewmFJc0+PxrQnGuqainCTPI6T5Io1IBrBmYL/zlMS7Emam1T
 b4QpXy0U65BvDkxcutaXgYc1x4rqRC4DOqDaE5zr6cneQkiDyUb1QzZQ55M+pzucPD
 dGLtsGOkbmEDxhbhN5HQpu/Gp5f20BrKNJUlH5A5YExTat4Wn1tvLfoDT27DIVBdQJ
 /9yJPRQ47PlOg==
To: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <3F51069A-D50B-4C09-AF16-FB9AA9E8D59C@gmx.de>
References: <CAA93jw4hrZmUma-xE6stRQZkyo84m4wYV+mbK6AoPeAJ1y0nqg@mail.gmail.com>
 <67BC6CC2-F088-4C0D-8433-A09F4AC452FE@gmx.de>
 <CAA93jw61GaPrLNmZn+ZuaA59UUo7SSb0DSSSrLH7rVSRqj92Xw@mail.gmail.com>
 <CAA93jw6HbLjK8JRbq23cnmq5=Q2uQ6aUYRF81LjAiEx3HK5Dxg@mail.gmail.com>
 <BFE5D61E-ED29-4AA3-816C-A8F0947EFDD7@gmx.de> <87czmrcg0f.fsf@toke.dk>
 <3F51069A-D50B-4C09-AF16-FB9AA9E8D59C@gmx.de>
Date: Tue, 23 Nov 2021 13:12:07 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <877dczcbqg.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] tossing acks into the background queue
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

Pj4gQW5kIGVpdGhlciB3YXksIENBS0UgaXMgc3RpbGwgZ29pbmcgdG8gYmUgbGltaXRlZCBieSBi
ZWluZyBzaW5nbGUgY29yZQo+PiBvbmx5LCBhbmQgZml4aW5nIHRoYXQgcmVxdWlyZXMgc29tZSBz
ZXJpb3VzIHN1cmdlcnkgdGhhdCBJIHNlZW0gdG8KPj4gcmVjYWxsIGxvb2tpbmcgaW50byBhbmQg
Z2l2aW5nIHVwIGF0IHNvbWUgcG9pbnQgOigKPgo+IAlUaGF0IGlzIHNhZCwgYW5kIHByZXR0eSBt
dWNoIHJ1bGVzIG91dCB0aGF0IEkgY291bGQgbWFrZSBzb21lCj4gCXByb2dyZXNzIGluIHRoYXQg
ZGlyZWN0aW9uLiBUaGUgbmV4dCBsZXZlbCBpcyBzaGFwaW5nIGF0IH4xR2JwcywKPiAJZXZlbiB0
aG91Z2ggZmFzdGVyIGFjY2VzcyBsaW5rcyBiZWNvbWUgYXZhaWxhYmxlLCBsaWtlIDguNS8xMAo+
IAlHYnBzIChYR1MtUE9OIGlzIG5vbWluYWxseSAxMEcsIGJ1dCBhZnRlciBGRUMgb25seSB+OC41
IEdicHMKPiAJYWN0dWFsbHkgYXJlIHVzYWJsZSkgb3IgZm9yIGEgbHVja3kgZmV3IGV2ZW4gMjUg
R2JwcyAuLi4KCll1cC4gRldJVyBteSBob3BlIGlzIHRoYXQgd2UnbGwgYmUgYWJsZSB0byBkbyBz
b21ldGhpbmcgYWJvdXQgdGhpcyB1c2luZwpYRFAsIGV2ZW50dWFsbHkuLi4gOikKCi1Ub2tlCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGlu
ZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxv
YXQubmV0L2xpc3RpbmZvL2Nha2UK

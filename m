Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1342B3E08DA
	for <lists+cake@lfdr.de>; Wed,  4 Aug 2021 21:29:22 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AF1B23CB41;
	Wed,  4 Aug 2021 15:29:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628105360;
	bh=24tK+sp/3TCL1oRDgFZsYLSsE7FIG/u3Ytk0YiA6dkI=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=T19fAdRXQoJaS9MXFiwi9qHsxUCFO6OT/s7FNdpErXGBYz3PW8/0AE/YYp9sFFQkK
	 dqBMUqfRKEZEzPFefdc6RdobRRnJUFGfRsgwRkRrvpUk7w4ou3KnJF2VxesAHbKkT0
	 U9UcvKwAwy7MMUSa5QypwuHVpcG2/PJ+RQR0P7QfzQeYux8CQI1CcganjquH/XukwS
	 eljTtiKTaICf8HGx64gJUE+AM65HZQofXiSPA7/VkbYz4k58hPOhXTL3IXJoYsI+X9
	 UEEWqFCMgLPKQ8SZ+wVXtnTPa7A2/yeD1te2PYJGRbMEFv+u96fAWEwxud+Q4h/uvi
	 zxQsEkBUaw4lg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B56043CB38
 for <cake@lists.bufferbloat.net>; Wed,  4 Aug 2021 15:29:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1628105358; bh=ss851UZ09rGyCKXq1cs4p/HhsDTz60pt6jH7j9f10bo=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=EGtfUO0OKmvrx9iFoafNwwzBO/LvMMkk/g7iTl5ttHzbvKzVSBxdPGQ4ykwGrBNRn
 PaastyN39nDog5ghRtr4UZR5KAgiSiQQd/1yJxEw22zxMkXQp0xlAlUnnqzsVRoxM7
 asZWSEb7mG+yC5E1NegR3LcmZxfLsKjvkpJGzjVGTyN9Jl43lN4F9dJyIrQKFVcDTl
 84GwP0ySPJxmwb4aRwc79r2GnmErbsHc6YWuCaQa4SBwHJSe8b7vC2LC1trZQr4kkZ
 aWfsd+htIhhqxUhw7gITFax7yps0aw6TdZon99dxcwQ8hp8FweqtQiGPX2Rjhrd43G
 3zMOyXwKKDGNg==
To: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAJq5cE0zdmfOqC+SSNHpb4JEZfXTKQh1EbzxoWLvwkkr27QO=Q@mail.gmail.com>
References: <ae9f4679222f4eb3daa0e092446cb56da2fb85f6.camel@heistp.net>
 <3ebc0a3ccdcfa67a48c5ad764ce3389782633fef.camel@heistp.net>
 <87r1f95und.fsf@toke.dk>
 <CAJq5cE0zdmfOqC+SSNHpb4JEZfXTKQh1EbzxoWLvwkkr27QO=Q@mail.gmail.com>
Date: Wed, 04 Aug 2021 21:29:16 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87o8ad57qr.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] cake srchost/dsthost stopped working?
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

Sm9uYXRoYW4gTW9ydG9uIDxjaHJvbWF0aXg5OUBnbWFpbC5jb20+IHdyaXRlczoKCj4gT24gV2Vk
LCA0IEF1ZyAyMDIxIGF0IDE0OjE0LCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gdmlhIENha2UK
PiA8Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+Pgo+PiBQZXRlIEhlaXN0IDxw
ZXRlQGhlaXN0cC5uZXQ+IHdyaXRlczoKPj4KPj4gPiBPbmUgbW9yZSB0aXAsIHJldmVydGluZyB0
aGlzIGNvbW1pdCBzZWVtcyB0byBmaXggaXQ6Cj4+ID4KPj4gPiBodHRwczovL2dpdGh1Yi5jb20v
dG9ydmFsZHMvbGludXgvY29tbWl0L2IwYzE5ZWQ2MDg4YWI0MWRkMmE3MjdiNjA1OTRiNzI5N2Mx
NWQ2Y2UKPj4KPj4gQWgsIEkgdGhpbmsgSSBzZWUgd2hhdCB0aGUgcHJvYmxlbSBpczsgY291bGQg
eW91IHBsZWFzZSB0cnkgdGhlIHBhdGNoCj4+IGJlbG93Pwo+Pgo+PiAtVG9rZQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvbmV0L3NjaGVkL3NjaF9jYWtlLmMgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYwo+PiBp
bmRleCA5NTE1NDI4NDNjYWIuLmE4M2M0ZDQzMjZkYSAxMDA2NDQKPj4gLS0tIGEvbmV0L3NjaGVk
L3NjaF9jYWtlLmMKPj4gKysrIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMKPj4gQEAgLTcyMCw3ICs3
MjAsNyBAQCBzdGF0aWMgdTMyIGNha2VfaGFzaChzdHJ1Y3QgY2FrZV90aW5fZGF0YSAqcSwgY29u
c3Qgc3RydWN0IHNrX2J1ZmYgKnNrYiwKPj4gIHNraXBfaGFzaDoKPj4gICAgICAgICBpZiAoZmxv
d19vdmVycmlkZSkKPj4gICAgICAgICAgICAgICAgIGZsb3dfaGFzaCA9IGZsb3dfb3ZlcnJpZGUg
LSAxOwo+PiAtICAgICAgIGVsc2UgaWYgKHVzZV9za2JoYXNoKQo+PiArICAgICAgIGVsc2UgaWYg
KHVzZV9za2JoYXNoICYmIGZsb3dfbW9kZSAmIENBS0VfRkxPV19GTE9XUykKPj4gICAgICAgICAg
ICAgICAgIGZsb3dfaGFzaCA9IHNrYi0+aGFzaDsKPj4gICAgICAgICBpZiAoaG9zdF9vdmVycmlk
ZSkgewo+PiAgICAgICAgICAgICAgICAgZHN0aG9zdF9oYXNoID0gaG9zdF9vdmVycmlkZSAtIDE7
Cj4KPiBHb29kIGNhdGNoIC0gSSB3YXMgZ29pbmcgdG8gaGF2ZSB0byB3YWRlIGluIGFuZCByZW1p
bmQgbXlzZWxmIGhvdyB0aGlzCj4gbHVtcCBvZiBjb2RlIHdvcmtlZC4gIEJ1dCBzaG91bGRuJ3Qg
dGhlIG1hc2tpbmcgb3BlcmF0aW9uIGJlIGluCj4gYnJhY2tldHMsIHRvIG1ha2UgdGhlIHByZWNl
ZGVuY2UgZXhwbGljaXQ/CgpXZWxsLCBzZWVpbmcgYXMgSSBpbnRyb2R1Y2VkIHRoZSBidWcsIEkg
dGhpbmsgaXQncyBvbmx5IGZhaXIgdGhhdCBJIGZpeAppdCBhcyB3ZWxsIDspCgpJIGRvbid0IG1p
bmQgYWRkaW5nIHBhcmVudGhlc2lzOyBjYW4gZG8gc28gd2hlbiBzdWJtaXR0aW5nIGEgcGF0Y2gs
CmFmdGVyIFBldGUgY29uZmlybXMgdGhhdCB0aGlzIGZpeGVzIHRoZSBpc3N1ZS4uLgoKLVRva2UK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

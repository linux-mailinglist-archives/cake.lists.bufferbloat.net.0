Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A64EA7B1D23
	for <lists+cake@lfdr.de>; Thu, 28 Sep 2023 14:56:58 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A623D3CB39;
	Thu, 28 Sep 2023 08:56:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1695905817;
	bh=nwyyg1FAgLx0kCgGwBLtEbZBkql1YfRKw+uiu+0fT0I=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=I2yCc90XpgjZovWJo4H/BuW10cuRd7+yfLYSX2bAbUIuADWEY8KxOJ9WAqJ/TtWl7
	 2gzBU0HUUSoTWFQJu1/+bRlb4mNbk631aL0fvlSYQfmTZM9zYmdcg5FtvVYIGoFPAr
	 irVBIufnPrYwKNqkg1m8jxLxNTMdjdM/3s59kFQz0LcwxgSaH8Ch849ZbOlOS5NZaQ
	 B1Ld2y5pgeCFudAPztpXr/5W364cOKqFlWM7NgSO0EpSLV0tTE0QtxJSmu2H3/ngEq
	 GIzmYJyKPpOPR76eUHn+FgeMYfqUQ+u5wqeC0EyVJDCz7zoAdducyKlAFkow8U+gds
	 GO6w9qgMzVoDg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.lang.hm (unknown [66.167.227.145])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7D1723B29D
 for <cake@lists.bufferbloat.net>; Thu, 28 Sep 2023 08:56:55 -0400 (EDT)
Received: from dlang-mobile (unknown [10.2.2.69])
 by mail.lang.hm (Postfix) with ESMTP id 2207C1AEF9F;
 Thu, 28 Sep 2023 05:56:54 -0700 (PDT)
Date: Thu, 28 Sep 2023 05:56:54 -0700 (PDT)
To: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <79EC8CB2-0912-4D66-9FA3-990E9C38C281@gmail.com>
Message-ID: <72s68436-36rr-0683-n0o7-5o1o610n5q36@ynat.uz>
References: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
 <CANypexR5p7Lekzk7+ktfEWjFXJP2zRHC_BgGWRRzKc5QdaxubA@mail.gmail.com>
 <1695068690.78066946@apps.rackspace.com>
 <A1F18F7E-2A27-4F13-87B1-D55594FB69F7@gmail.com>
 <6D098714-69DC-41D9-A7DC-E94FD9C77625@gmail.com>
 <B892D72D-0198-454B-BC15-170B22829351@gmx.de>
 <79EC8CB2-0912-4D66-9FA3-990E9C38C281@gmail.com>
MIME-Version: 1.0
Subject: Re: [Cake] some comprehensive arm64 w/cake results
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
From: David Lang via Cake <cake@lists.bufferbloat.net>
Reply-To: David Lang <david@lang.hm>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVGh1LCAyOCBTZXAgMjAyMywgSm9uYXRoYW4gTW9ydG9uIHZpYSBDYWtlIHdyb3RlOgoKPj4g
T24gMjggU2VwLCAyMDIzLCBhdCAzOjE1IHBtLCBTZWJhc3RpYW4gTW9lbGxlciA8bW9lbGxlcjBA
Z214LmRlPiB3cm90ZToKPj4gCj4+IFRoaXMgcHJvbWlzZXMgZXZlbiBiZXR0ZXIgcGVyZm9ybWFu
Y2UgZm9yIGxvYWRzIGxpa2UgY2FrZSB0aGFuIHRoZSBhbHJlYWR5IHByZXR0eSBuaWZ0eSBwaTRC
Cj4KPiBXZWxsLCBpbmNyZWFzZWQgY29tcHV0aW5nIHBlcmZvcm1hbmNlIGlzIGFsd2F5cyB3ZWxj
b21lIC0gYnV0IGFzIEkndmUgc2FpZCBiZWZvcmUsIGluIG1vc3QgY2FzZXMgSSBkb24ndCB0aGlu
ayBDUFUgcGVyZm9ybWFuY2UgaXMgdGhlIGxpbWl0aW5nIGZhY3RvciBmb3IgQ0FLRS4KPgo+IFdo
ZW4gdGhlIENQVSBsb2FkIGdvZXMgdXAgYXMgbmV0d29ya2luZyB0aHJvdWdocHV0IHJlYWNoZXMg
dGhlIHBoeXNpY2FsIGxpbWl0IG9mIHRoZSBpbnRlcmZhY2UgKG9yIHRoZSBJL08gc3Vic3lzdGVt
KSwgd2hhdCB5b3UncmUgc2VlaW5nIGlzIHRoZSBDUFUganVzdCBzcGlubmluZyBpdHMgd2hlZWxz
IHdoaWxlIHdhaXRpbmcgZm9yIGEgbXV0ZXggdG8gdW5ibG9jay4gIFNwaW5uaW5nIGZhc3RlciBk
b2Vzbid0IG1ha2UgdGhlIG11dGV4IHVuYmxvY2sgc29vbmVyIQoKYnV0IGEgZmFzdGVyIEkvTyBz
eXN0ZW0gc2hvdWxkIGhlbHAuCgpEYXZpZCBMYW5nCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVy
YmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

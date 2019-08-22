Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 545C898B40
	for <lists+cake@lfdr.de>; Thu, 22 Aug 2019 08:12:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CF86E3CB38;
	Thu, 22 Aug 2019 02:11:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566454319;
	bh=wEVT5BgW5wFgUGJSJtExus6VK3p2a6S7t0Mb44V+A+g=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QkmAdLFO2vGLn2623IvMcxDhkGLDhIoIZqzUBpFnLntw8XdKcdCZeMRW4LwDTFUlb
	 dPVeSeec+A36KXQ592wbfMpvk+pLLMl8r+XPefCyKGSzrTMEwhyjDZBrc0K2l5R65R
	 tcTZ3UAWRhVL9Vk8RXbAzR4bD0vqKQuN9Q+rBTNO72Cp61zB78HEeENZyASu6kOtqW
	 NvkBMtzcOfEh+NyTD7cns57a7G8mo0F49BvI7VpaZtKXP6QVMADl4X85dSXkA5zIQX
	 HvfDyq85cDJAEpxFNC/jGw6vRGeM11E5L1Ko3LYYgtr9bmmuNIKVkEYD7E0REswNwl
	 qOhhHPVu6x2ug==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from uplift.swm.pp.se (ipv6.swm.pp.se [IPv6:2a00:801::f])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2C6F63CB35;
 Thu, 22 Aug 2019 02:11:58 -0400 (EDT)
Received: by uplift.swm.pp.se (Postfix, from userid 501)
 id 7D079B0; Thu, 22 Aug 2019 08:11:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=swm.pp.se; s=mail;
 t=1566454316; bh=ag+OcIKwMNjTuW0/R1F4WDFS9tlbXzGWrh3Xp7+zGXE=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=pFLKsgisSX4mrGTfREF+03IXd5zIHvLoMuJgErNgCrUOuifdzkmUi0L99WlI9j7e3
 ycGuk+/M23ppGMKkhwtF0qu8yH8inhY8RLT9WY8oawmPR81kr1ryOxJ1XcoA7VZL7g
 dz6cKxt2phGl0lS8zEUt9R8xda+A5V1kmIcefGdY=
Received: from localhost (localhost [127.0.0.1])
 by uplift.swm.pp.se (Postfix) with ESMTP id 7B0869F;
 Thu, 22 Aug 2019 08:11:56 +0200 (CEST)
Date: Thu, 22 Aug 2019 08:11:56 +0200 (CEST)
From: Mikael Abrahamsson <swmike@swm.pp.se>
To: Dave Taht <dave@taht.net>
In-Reply-To: <87pnkyea04.fsf@taht.net>
Message-ID: <alpine.DEB.2.20.1908220801280.21548@uplift.swm.pp.se>
References: <CAA93jw6Fe8x2s=W3Vp6h0WoN7Q8ia4CddL6e4kA+GQNn87LiUw@mail.gmail.com>
 <CAA93jw5fW4XbgT_VFYJGep+qQ2WTYEF0my5_XQ-VADOBq8TMvA@mail.gmail.com>
 <30EA2270-684E-48BC-8B57-43F4D8485BE8@darbyshire-bryant.me.uk>
 <87pnkyea04.fsf@taht.net>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
Organization: People's Front Against WWW
MIME-Version: 1.0
Subject: Re: [Cake] [Cerowrt-devel]
 https://tools.ietf.org/html/draft-ietf-tsvwg-le-phb-06 is in last call
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gV2VkLCAyMSBBdWcgMjAxOSwgRGF2ZSBUYWh0IHdyb3RlOgoKPiBLZXZpbiBEYXJieXNoaXJl
LUJyeWFudCA8a2V2aW5AZGFyYnlzaGlyZS1icnlhbnQubWUudWs+IHdyaXRlczoKPgo+PiBNYXli
ZSBhdHRhY2hlZCBwYXRjaCBpcyBtb3JlIGNvbXByZWhlbnNpdmU/Cj4KPiBZZXAhIHdoeSB3YXMg
ZGlmZnNlcnY4IDUgaW4gdGhlIGZpcnN0IHBsYWNlPwoKImRpZmZzZXJ2ZTggaXMgNSI/IEkgZG9u
J3QgdW5kZXJzdGFuZC4gRG8geW91IG1lYW4gMDAxMDAwPwoKaHR0cHM6Ly90b29scy5pZXRmLm9y
Zy9odG1sL3JmYzM2NjIKCjMuMi4gIFBIQiBjb25maWd1cmF0aW9uCgogICAgRWl0aGVyIGEgQ2xh
c3MgU2VsZWN0b3IgKENTKSBQSEIgW1JGQzI0NzRdLCBhbiBFeHBlcmltZW50YWwvTG9jYWwgVXNl
CiAgICAoRVhQL0xVKSBQSEIgW1JGQzI0NzRdLCBvciBhbiBBc3N1cmVkIEZvcndhcmRpbmcgKEFG
KSBQSEIgW1JGQzI1OTddCiAgICBtYXkgYmUgdXNlZCBhcyB0aGUgUEhCIGZvciB0aGUgTEUgdHJh
ZmZpYyBhZ2dyZWdhdGUuICBUaGlzIGRvY3VtZW50CiAgICBkb2VzIG5vdCBzcGVjaWZ5IHRoZSBl
eGFjdCBEU0NQIHRvIHVzZSBpbnNpZGUgYSBkb21haW4sIGJ1dCBpbnN0ZWFkCiAgICBzcGVjaWZp
ZXMgdGhlIG5lY2Vzc2FyeSBwcm9wZXJ0aWVzIG9mIHRoZSBQSEIgc2VsZWN0ZWQgYnkgdGhlIERT
Q1AuCiAgICBJZiBhIENTIFBIQiBpcyB1c2VkLCBDbGFzcyBTZWxlY3RvciAxIChEU0NQPTAwMTAw
MCkgaXMgc3VnZ2VzdGVkLgoKU28gQ1MxIGlzIHRoZSBvcmlnaW5hbCBQSEIgZm9yIExFLiBIb3dl
dmVyLCBpdCBoYXMgcHJvYmxlbXMgYW5kIHdhcyBuZXZlciAKcmVhbGx5IGRlcGxveWVkIGFuZCBJ
IHdhcyBvbmUgd2hvIHB1c2hlZCBmb3IgYSBzcGVjaWZpYyBjb2RlcG9pbnQgd2l0aGluIAowMDB4
eHggZm9yIExFLCB0aGF0IG1pZ2h0IGhhdmUgYSBjaGFuY2UgdG8gYmUgZGVwbG95ZWQgaW50ZXJu
ZXQtd2lkZS4gCjAwMDAwMSBzZWVtcyBhcyBnb29kIGFzIGFueS4KCi0tIApNaWthZWwgQWJyYWhh
bXNzb24gICAgZW1haWw6IHN3bWlrZUBzd20ucHAuc2UKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZm
ZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

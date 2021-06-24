Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F9E3B326D
	for <lists+cake@lfdr.de>; Thu, 24 Jun 2021 17:21:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 389023CB5A;
	Thu, 24 Jun 2021 11:21:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1624548067;
	bh=cjWsFnxkIgqRe0oqnQhqG0GM/GikKg9LcwthBSViiDM=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=G87B15qyLDeNemVZBbELjyp14Ofzfw1hiYK/xhvV1A8IP9jIZ3+P8FIKiuaD/70HS
	 Y1RDUJSUH1ceM5ypPfxggN+cRJXfkaWkYS5JG8ZhR23xQ33DCjtKRG1ocEasMfZ0KG
	 9npbNQhEogo9KEYNytm9zX/Dz1+FlovhVCIMoxyhI7QULh8HSB3Djv1yWZYmzkGkIq
	 uVHHnybZjOrq2A7RAhWqP9e58gH+MHIHgkS3Ufm3OaOiSC+cfucQlNT40OBo2vgePJ
	 k6MQm+UHyf1W9eNsH/yJlxIsvCWhgg0C3GDfTy9jSoYrGmBR2EUQuomF7PiktDaWt6
	 YkUbE9NY3iVIQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BA7113B2A4
 for <cake@lists.bufferbloat.net>; Thu, 24 Jun 2021 11:21:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1624548055; bh=3NF3YSCJdiHJp7a+f9E+0BneF1SjXokapR/euXWdp8k=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=dn1Zhc7BtolFB/4ut3p/u4GiFmcO125lVAyHAnD4MfW/aM0vc/Fa45Ic+7W47zzLY
 swfyHq56KiukZc80csDyN5mpRq+mhhDs8VR+szMUDxI2GbK3N++jWLkTVLqPQe8TOu
 AAD+I78J0ATrIyt1N4T67oaJmZ2Z2Hw1i65ehY8296GnN7IYbiodCyFtjRG8aZHbGm
 b3VfO8tDCVR6PX6jT9pUML4/jID1Balk2TyuJGtMrxvsEhIA0RRzx7gN8TZTgp5POd
 hIkO8pjrabk7grMLQhkQZ9o8kYVXIcAR0BbznetC3ja7UhIa5TaLpze80jt3VfmD5m
 7p1P7R7VzEd0g==
To: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <0341E253-B8CB-4976-ABC1-553C070E77F3@gmx.de>
References: <3d529e0b78ef8ea54021d8f8e93285e9a474cba1.camel@heistp.net>
 <87h7hnmkhc.fsf@toke.dk> <0341E253-B8CB-4976-ABC1-553C070E77F3@gmx.de>
Date: Thu, 24 Jun 2021 17:20:52 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87bl7vmgq3.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] Cake memory usage after 1TB
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

U2ViYXN0aWFuIE1vZWxsZXIgPG1vZWxsZXIwQGdteC5kZT4gd3JpdGVzOgoKPj4gT24gSnVuIDI0
LCAyMDIxLCBhdCAxNTo1OSwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHRva2UuZGs+
IHdyb3RlOgo+PiAKPj4gUGV0ZSBIZWlzdCA8cGV0ZUBoZWlzdHAubmV0PiB3cml0ZXM6Cj4+IAo+
Pj4gSSdtIHVzaW5nIENha2Ugb24gYW4gRWRnZVJvdXRlci1YIGF0IGEgc2l0ZSB0aGF0IGRvZXMg
YXJvdW5kIDUwLQo+Pj4gMTAwR0IvZGF5LCBhbmQgd2UncmUgcXVpdGUgaGFwcHkgd2l0aCBpdCBz
byBmYXIuIEVncmVzcyBhbmQgaW5ncmVzcwo+Pj4gc3RhdHMgYXJlIGJlbG93IGFmdGVyIH4xVEIg
ZG93bmxvYWQgYW5kIH4xMDBHQiB1cGxvYWQuCj4+PiAKPj4+IEkgdXNlICJtZW1saW1pdCA4TSIs
IGFuZCBub3RpY2VkIHRoYXQgaXQncyByZXBvcnRpbmcgODM4OTY5NiBieXRlcyB1c2VkCj4+PiBv
biBlZ3Jlc3MsIHdoaWNoIGlzIGF0IHRoZSBtYXhpbXVtIChzbGlnaHRseSBvdmVyIGFjdHVhbGx5
KS4gQXJvdW5kIDZNCj4+PiBpcyB1c2VkIG9uIGluZ3Jlc3MuIFNob3VsZCBJIHRoZW4gcmFpc2Ug
dGhlc2UgbGltaXRzLCBvciBpcyBpdCBub3JtYWwKPj4+IGZvciBpdCB0byBzZXR0bGUgaW4gYXJv
dW5kIHRoZSBtYXhpbXVtIG92ZXIgdGltZT8KPj4gCj4+IFRoYXQgc3RhdCBpcyB0aGUgbWF4aW11
bSBtZW1vcnkgZXZlciB1c2VkLCBub3QgdGhlIGN1cnJlbnQgdXNhZ2UgKHRoYXQKPj4gaXMgcmVw
b3J0ZWQgYnkgImJhY2tsb2cgMGIgMHAiKS4gU28gaWYgeW91ciBxdWV1ZSBldmVyIG92ZXJmbG93
cyBpdCdsbAo+PiBiZSBhdCBpdHMgbWF4aW11bS4KPgo+IAlJcyB0aGVyZSBhbiBlYXN5IHdheSB0
byByZXNldCB0aGF0LCBzaG9ydCBvZiB0ZWFyaW5nIGRvd24gdGhlCj4gCXFkaXNjIHNldC11cCBh
bmQgYnVpbGRpbmcgaXQgdXAgYWdhaW4/CgpOb3BlLCAnZnJhaWQgbm90IDopCgotVG9rZQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcg
bGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldC9saXN0aW5mby9jYWtlCg==

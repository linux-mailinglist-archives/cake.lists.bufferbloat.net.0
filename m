Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CF93E1760
	for <lists+cake@lfdr.de>; Thu,  5 Aug 2021 16:56:19 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A8D303CB41;
	Thu,  5 Aug 2021 10:56:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628175377;
	bh=YzHbOorbIM/yKb1VMZpypLZW1iarjbogPQavRngL7Dg=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=TgaN0RyaZLjsdAGCn/vdbBOdSE/wiihoCH7qDRI0io8LPlPSuLGDPdiHfJkD3GGDA
	 2zWBPozDglGlhOB0c2BRjdrQRHITIY8o79vXoP4/0l2EkjtgWPFLAYbCNxFjEd2Zg7
	 7IRdm88u9OuJNnTKVYo7VI1Rj87/BvuY+JvAvxHJW7NtRLfE+WHXX1BI8T43imkLtT
	 X3tZCW2sjpUyisKy+LrraZbRlzUpfo7H5+j/AzcZ8OCY/b/rvlAEvUCyySbPrW9+At
	 hO7XFFs47dMpsWEEneHOQybclCgWrkC46k1EAuaZj8n0rCgNdcPu5rYLbIcr4L6kce
	 lG6ngNUDP7Vvg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 314153B29D
 for <cake@lists.bufferbloat.net>; Thu,  5 Aug 2021 10:56:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1628175374; bh=2+mMMfb8dRe+KaUQcj5gacLKXAdzNi5+n47PrTLHjlc=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=aVMVF7GFqVcLt6Uu2/WlO6XAmyj3E7aV+T50WhdQ1k6lWMeb5/JslLl/HcXkV+kR9
 anKEwQP67WMnQoFjpOwDtuS5zTTliShkcRDBxIs7ZfAYKmJCe6gjZwtvy9ecJsZoi3
 E8ALjzal4UM4XaDw055F/pcrwQdAT1XetdaeFKXsytOMR/bxQXvpNdRmK4kc8z2J3N
 D9bOCSo/I99Kp6tbd/d3yFe7M1t1RhJK3jy7+U3JNJksNf6H+i/XhfVX23lucweQQj
 R8CX3aX/poO1i/TtJR5Vub86uJNo37UWY6LqeHram6LWv5vm8W28I4vV62qdV7trQG
 woohh7y361PfQ==
To: Pete Heist <pete@heistp.net>
In-Reply-To: <fb6cb1e5015b0e28ebf13869eb329acc0a2b79e2.camel@heistp.net>
References: <ae9f4679222f4eb3daa0e092446cb56da2fb85f6.camel@heistp.net>
 <3ebc0a3ccdcfa67a48c5ad764ce3389782633fef.camel@heistp.net>
 <87r1f95und.fsf@toke.dk>
 <5964374bee9979ee9f1b4b86d32b002722d628fc.camel@heistp.net>
 <37822e2cebd977f2c5c0758b48a191f2644d7589.camel@heistp.net>
 <fb6cb1e5015b0e28ebf13869eb329acc0a2b79e2.camel@heistp.net>
Date: Thu, 05 Aug 2021 16:56:12 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87im0k54ab.fsf@toke.dk>
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

UGV0ZSBIZWlzdCA8cGV0ZUBoZWlzdHAubmV0PiB3cml0ZXM6Cgo+IEFzIGZvciB0cmlwbGUtaXNv
bGF0ZSwgSSBhZGRlZCBhIHRlc3QgSm9uIHN1Z2dlc3RlZDoKPgo+ICJJIHdvdWxkIHJlY29tbWVu
ZCBhIFcgY29uZmlndXJhdGlvbiBvZiBmbG93cwo+Cj4gb25lIG9mIHRoZSB0aHJlZSBob3N0cyBz
ZW5kcyB0byBvciBmcm9tIGJvdGggb2YgdGhlIHR3byBob3N0cywgd2hpbGUKPiB0aGUgb3RoZXIg
dHdvIHNlbmQgdG8gb3IgZnJvbSBvbmx5IG9uZSBlYWNoCj4KPiB0aGlzIHNob3VsZCByZXN1bHQg
aW4gdGhlIHR3byBob3N0cyBnZXR0aW5nIGVxdWFsIHRocm91Z2hwdXQgZWFjaCwgYW5kCj4gZXF1
YWwgdGhyb3VnaHB1dCBpbiBlYWNoIG9mIHRoZWlyIHR3byBmbG93cyIKPgo+IFRoaXMgaXMgdGhl
IGxhc3QgdGVzdCBpbiB0aGUgb3V0cHV0LCBhbmQgSSB0aGluayB0aGUgYmVoYXZpb3IgbG9va3MK
PiBjb3JyZWN0IGZvciBib3RoIHRoZSB1bnBhdGNoZWQgYW5kIHBhdGNoZWQgdmVyc2lvbnM6Cj4K
PiBodHRwczovL3d3dy5oZWlzdHAubmV0L2Rvd25sb2Fkcy9jYWtlLWhvc3RmYWlyL2Nha2UtaG9z
dGZhaXItdW5wYXRjaGVkLnR4dAo+Cj4gaHR0cHM6Ly93d3cuaGVpc3RwLm5ldC9kb3dubG9hZHMv
Y2FrZS1ob3N0ZmFpci9jYWtlLWhvc3RmYWlyLXBhdGNoZWQudHh0Cj4KPiBUaGFua3MgZ3V5cywg
YW5kIHRoYXQsIEkgYmVsaWV2ZSwgaXMgZmluYWxseSBpdCBmb3Igbm93Li4uIDopCgpBd2Vzb21l
LCB0aGFuayB5b3UgYm90aCEgSSdsbCBzZW5kIGEgcHJvcGVyIHBhdGNoIHVwc3RyZWFtIDopCgot
VG9rZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtl
IG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

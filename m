Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id F08E54789F2
	for <lists+cake@lfdr.de>; Fri, 17 Dec 2021 12:33:12 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1B78F3CB44;
	Fri, 17 Dec 2021 06:33:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1639740791;
	bh=V2S6kpZgd8+Q4gCyspsYrPXULWNHNJt5KZTaRdrJaio=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=EL53wl9+mzjoXIwJenxuCKEhayuzmMWUms6KI0Mdl2yzRl6iE9x9beOfZfuBZl2MW
	 gVbIe9TY2QYuY2ex9vTK8Toe2u7un7W26ZJZPM4AfOVXyrE4RKEyWRed+HbiAGYIYf
	 vVGKnLBzNn3xcb8ixJQkPUopgSCftO1O8uc71AdVYei/klrjoEEi+qbkr7/9qGoAna
	 6evPeX3XZCLt8wMc9qfVjl9CjpckfqlZ165wXh5KiZCOdHQie6bA9iYCwihSk2oezR
	 ygDJOLBOZKZ4deBswnq8YNsvbK1YesJVeV1NT4I0/A/OPckloTdArsgoDFOlKrYQRI
	 4H0cFr+I3kreA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9E4563B29D;
 Fri, 17 Dec 2021 06:33:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1639740788; bh=ViF9tkmOOqgXEGoyiCU0cZx7wncnXWlKGhGiv2jLKY0=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=lK87xlUu5dtFq9ZXDhfWkm2apy8qPZnpRLtvKRLojDx6ffSaSNvwQLvQVvWafJj69
 S0SAwRpg8Zgh3smmTo2LSXTMBM3Qka5AHSuoe2ZefrjjLeJ+ZSDZRttnYWq8G4YmqE
 0zTIEeYr2AFu9ArOzFemwcDbWvABDMk7xCzXA+12BMNtSXzZvHxIy8PFSjvHvJez3S
 YAdsfr4JknjQzy1oTmGNOWiNjBoy53Aw4QeObdoD7PPpRj80k4j1ezcEU3hRxILTBc
 bJhjx5h297HY0tCQlOIdj6ZBHlevavTxjJrCUl6IEAGcnIe62/67cN/kKkdQQwGHMK
 I9s5smcOPQWAA==
To: Sebastian Moeller <moeller0@gmx.de>, Joel =?utf-8?Q?Wir=C4=81mu?= Pauling
 <joel@aenertia.net>
In-Reply-To: <D1CBC326-1ABB-4636-8B83-AE5970277200@gmx.de>
References: <CAA93jw6i0G_QyBbmC_0U-UUc4y3kZnb_vdvGpo1WE6m9pfDDWQ@mail.gmail.com>
 <1639678615.275317887@apps.rackspace.com>
 <CAKiAkGRDwkH0yW0buxdUGyktE9XCT9RjospS=mbs_TfXWKh5Sg@mail.gmail.com>
 <1639690165.936410589@apps.rackspace.com>
 <4927o62q-qq3-p947-qopq-89rppp637497@ynat.uz>
 <CAKiAkGREZKh7XEYehM6v3DKp94eLrV1b86dM=cSCNtYwARBCgA@mail.gmail.com>
 <7F1B6B98-2DE2-41A3-B47F-30B46E2736FB@gmx.de>
 <CAKiAkGTzP5V9cocHptqfBqbLkbEw8-4k68bU2RxA3ZOuOvG18w@mail.gmail.com>
 <CAKiAkGQJbVhJLO1ewgFYOv3uHBFVFuGgGOEgQE9j1nAkmPUuzA@mail.gmail.com>
 <D1CBC326-1ABB-4636-8B83-AE5970277200@gmx.de>
Date: Fri, 17 Dec 2021 12:33:08 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <874k77cvpn.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [Cerowrt-devel] 10gige and 2.5gige
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

U2ViYXN0aWFuIE1vZWxsZXIgPG1vZWxsZXIwQGdteC5kZT4gd3JpdGVzOgoKPiBNbW1oLCBJIGd1
ZXNzIG91ciBhcHByb2FjaCBhdCB0cmFmZmljIHNoYXBpbmcgZG9lcyBub3Qgc2NhbGUgd2VsbCBh
dCB0aG9zZSBzcGVlZHMuIE1heWJlIHRoaXMgY291bGQgYmUgZml4ZWQgd2l0aCBsYXJnZXIgYmF0
Y2hpbmc/Cj4KPiBJIHRoaW5rIGl0IG1pZ2h0IGJlIHdvcnRoIHRyeWluZyB0byBzd2l0Y2ggdG8g
c2ltcGxlLnFvcy9mcV9jb2RlbCBhbmQKPiBzZXQgYSBzb21ld2hhdCBsYXJnZXIgYnVyc3QvcXVh
bnR1bSBkdXJhdGlvbiBpbiBkZWZhdWx0cy5zaCwgdGhlbgo+IGRpc2FibGUgQlFMIG9uIHRoZSBO
SUMgYW5kIGNvbmZpZ3VyZSBhIGJlZWZ5IHR4cXVldWVsZW4gb24gdGhlCj4gaW50ZXJmYWNlLiBU
aGlzIG1pZ2h0IGhlbHAgbWFraW5nIFNRTSBsaW1wIGFsb25nIHRvIGhpZ2hlciByYXRlcy4gSWYK
PiB0aGF0IHdvdWxkIGFjdHVhbGx5IHdvcmssIHdlIGNvdWxkIHRyeSB0byBzZWUgd2hldGhlciB3
ZSBjYW4gbWFrZSBjYWtlCj4gbGVhcm4gY29hcnNlciBiYXRjaGluZyAoImJ1cnN0cyIgYW5kL29y
IHF1YW50dW0pIGF0IGhpZ2ggcmF0ZXMgKGJ1dCBJCj4gZGlkIG5vdCBjaGVjayB3aGF0IGNha2Ug
ZG9lcyBpbnRlcm5hbGx5LCBpdCBtaWdodCBhbHJlYWR5IGRvIHRoaXMsCj4gQGpvbmF0aGFuPyku
Li4uCgpJIGZlYXIgdGhlIHByb2JsZW0gaXMgcmF0aGVyIHRoZSBsYWNrIG9mIG11bHRpdGhyZWFk
aW5nLiBJIGhhdmUgYSBmYWlybHkKYmVlZnkgOC1jb3JlIEFSTSBib3ggZm9yIG15IG1haW4gcm91
dGVyIHRoZXNlIGRheXMsIGFuZCBldmVuIHRoYXQgY2FuJ3QKZm9yd2FyZCBhdCBhIGdpZ2FiaXQg
b24gYSBzaW5nbGUgY29yZS4gVGhlcmUgd2FzIGEgYnVnIGluIHRoZSBIVwpjb25maWd1cmF0aW9u
IHNvIGFsbCB0cmFmZmljIHdhcyBzZW50IHRvIGEgc2luZ2xlIGNvcmUsIHdoaWNoIHJlc3VsdGVk
CmluIDUwK21zIG9mIGJsb2F0IGFuZCB0cmFmZmljIGNhcHBpbmcgb3V0IHdheSBzaG9ydCBvZiBh
IGdpZ2FiaXQuIE5vdwp0aGF0IGl0J3MgZml4ZWQgYW5kIHRyYWZmaWMgaXMgbWl4ZWQgb3ZlciBh
bGwgZWlnaHQgY29yZXMgSSBoYXZlIHNtb290aApzYWlsaW5nIGFuZCBubyBibG9hdC4gVGhhbmtm
dWxseSBJIGRvbid0IG5lZWQgdG8gc2hhcGUsIHNvIEknbSBqdXN0CnJ1bm5pbmcgc3RyYWlnaHQg
bXErZnFfY29kZWwgb24gdGhlIHBoeXNpY2FsIGludGVyZmFjZS4uLi4KCi1Ub2tlCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0
CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0
L2xpc3RpbmZvL2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D38D323102A
	for <lists+cake@lfdr.de>; Tue, 28 Jul 2020 18:56:18 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C58213CB38;
	Tue, 28 Jul 2020 12:56:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595955377;
	bh=cJphvXS6m1851sliObRPEltdy+bCJFNWNCXSr6r9bpA=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=epi5ba3uHuVUle+kY3585Ita70yn62h3xlGplbSVpwGzM9OwFHmgL3RAqrwN363u5
	 80zn1qIhe4i6FMoxK+H54EWY6zdgMIzz816CFAVNRrCEN4CPCY5cPhQkDvg5t0+lPV
	 YAaZAjyCILIoE50L3Lt4qSsFgrGhVZFu21yJeTliOsuz1Xv5Vpimbf/YwS0rdngenD
	 SdLquLkUq2fbBpwCMpii8woNeHgC/pZ2IfMSaUqzfS1OIpGxXKGcgWrk/q0v7LGmw2
	 yVWJOpZKtr5z5IfKzURsNYzRrfKU+9pxMgtfC1M50VhMpcumFEul2whuO6N9kRZX+u
	 8ldxLyBhZfDjg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BBAED3B29E
 for <cake@lists.bufferbloat.net>; Tue, 28 Jul 2020 12:56:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1595955374; bh=WViOEr32eVyfiLBDyEChCKToOfszkAb+WznAKe0wmDA=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=oUJl7v5Ga7S9CElEli9/sftmFalkPAGfrTtoh+3tX51XVA7NysE51cfv+0BvVbc/4
 K0z1ouN+WsabFYhg5mgrvPPZ5xAWen0quvARRNZ+psXvAbwJNcrJ+nSfIMy8sN+zXn
 gaU/KJu6YKgeCbWkbWmB3TJHJvWE2cKs1jd35a0kewuYleHy9On2bPS2kGE3zFcOS8
 /Ine2NAXIseLP12u0CTLVOH2R1Oh4/jDhL+IPZRNtPAcjYOkZs4E7OjMFWlTd8G/lE
 aHdBr3Gu2kl7An08/cGp2v1fnOgb7zwqXfERnPqUW1a+7LfqZjcQF2LOy8BPw+sp5G
 zpdtKGr4wpiBQ==
To: Jim Geo <dim.geo@gmail.com>, Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAD9MmSeeEYgcaQ6K1Y=mNrJ2yGDCNiL=X-Z21ZOg5SJLgSiwvQ@mail.gmail.com>
References: <CAD9MmSc54e2NaVnqAVSw8Nk2MbdFr0OFXtT4RC2TUKuDcg0_PA@mail.gmail.com>
 <6B18F76E-A466-42A7-ACF7-52D5E6CD3572@gmail.com>
 <CAD9MmSeeEYgcaQ6K1Y=mNrJ2yGDCNiL=X-Z21ZOg5SJLgSiwvQ@mail.gmail.com>
Date: Tue, 28 Jul 2020 18:56:13 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87pn8f4lzm.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] Cake, low speed ADSL & fwmark
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
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SmltIEdlbyA8ZGltLmdlb0BnbWFpbC5jb20+IHdyaXRlczoKCj4+Cj4+ID4gT24gMjggSnVsLCAy
MDIwLCBhdCAxMjo0MSBhbSwgSmltIEdlbyA8ZGltLmdlb0BnbWFpbC5jb20+IHdyb3RlOgo+PiA+
Cj4+ID4gVGhhbmsgeW91IGZvciBhbGwgdGhlIGVmZm9ydHMgeW91IGhhdmUgZG9uZSB0byBtYWtl
IGludGVybmV0IHVzYWJsZS4KPj4gPgo+PiA+IEkgY3VycmVudGx5IHVzZSBodGIgJiBmcV9jb2Rl
bCBpbiBteSBsb3cgc3BlZWQgQURTTCA2TWJwcyBkb3dubGluay8xIE1icHMgdXBsaW5rLiBJIHVz
ZSBmd21hcmsgdG8gY29udHJvbCBib3RoIHVwbGluayBhbmQgZG93bmxpbmsgd2l0aCBnb29kIHJl
c3VsdHMgaW4gdGVybXMgb2YgYmFuZHdpZHRoIGFsbG9jYXRpb24uIFN0cmVhbWluZyB2aWRlbyBp
cyBjaG9wcGluZyBidWxrIHRyYWZmaWMgc3VjY2Vzc2Z1bGx5Lgo+PiA+Cj4+ID4gSXMgc2V0dGlu
ZyB1cCBjYWtlIHdvcnRoIHRoZSBlZmZvcnQgYXQgc3VjaCBsb3cgc3BlZWRzPyBXb3VsZCBpdCBy
ZWR1Y2UgbGF0ZW5jeT8KPj4KPj4gQ2FrZSBoYXMgYSBiZXR0ZXItcXVhbGl0eSBzaGFwZXIgdGhh
biBIVEIgZG9lcywgYW5kIGEgbW9yZSBzb3BoaXN0aWNhdGVkIGZsb3ctaXNvbGF0aW9uIHNjaGVt
ZSB0aGFuIGZxX2NvZGVsIGRvZXMuICBUaGVzZSB0ZW5kIHRvIG1hdHRlciBtb3JlIGF0IGxvdyBz
cGVlZHMsIG5vdCBsZXNzLiAgSXQncyBhbHNvIGdlbmVyYWxseSBlYXNpZXIgdG8gc2V0IHVwIHRo
YW4gYSBjb21wb3VuZCBxZGlzYyBzY2hlbWUuCj4+Cj4+ID4gUmVnYXJkaW5nIGZ3bWFyayBjYW4g
eW91IHBsZWFzZSBlbGFib3JhdGUgbW9yZSBvbiB0aGUgY2FsY3VsYXRpb25zIHBlcmZvcm1lZD8g
TWFuIHBhZ2UgaXMgbm90IHRoYXQgaGVscGZ1bC4KPj4gPgo+PiA+IE15IHVuZGVyc3RhbmRpbmcg
aXMgdGhpczoKPj4gPgo+PiA+IEkgdXNlIDEsMiwzLDQgYXMgbWFya3Mgb2YgdHJhZmZpYy4KPj4g
PiBJZiBJIHNldCB0aGUgbWFzayB0byAweGZmZmZmZlsuLl0gdGhlIG1hcmtzIHdpbGwgcmVtYWlu
IHVuY2hhbmdlZC4gVGhlbiByaWdodCBzaGlmdGluZyB3aWxsIG9jY3VyIGZvciB0aGUgdW5zZXQg
Yml0cywgc28gdGhleSB3aWxsIGxhbmQgb24gdGlucwo+PiA+IDEsMSwzLDEKPj4gPgo+PiA+IENh
biB5b3UgcGxlYXNlIGNvcnJlY3QgbWU/IElmIGxvZ2ljYWwgYW5kIHBlcmZvcm1lZCBiZXR3ZWVu
IG1hc2sgYW5kIG1hcmsgdmFsdWU/Cj4+Cj4+IFNpbmNlIHRoZXJlJ3Mgb25seSBhIGZldyAidGlu
cyIgYXQgYSB0aW1lIHVzZWQgaW4gQ2FrZSwgYW5kIHRoZSBmd21hcmsgaXMgYSBkaXJlY3QgbWFw
cGluZyBpbnRvIHRob3NlIHRpbnMsIGEgbmFycm93IG1hc2sgaXMgcHJvYmFibHkgc2FmZXIgdG8g
dXNlIHRoYW4gYSB3aWRlIG9uZS4gIFRoZSByZWFzb24gZm9yIHRoZSBtYXNrIGlzIHNvIHlvdSBj
YW4gZW5jb2RlIHNldmVyYWwgdmFsdWVzIGludG8gZGlmZmVyZW50IHBhcnRzIG9mIHRoZSBtYXJr
IHZhbHVlLiAgVGhlIHNoaWZ0IGlzIHNpbXBseSB0byBtb3ZlIHRoZSBmaWVsZCBjb3ZlcmVkIGJ5
IHRoZSBtYXNrIHRvIHRoZSBsb3cgZW5kIG9mIHRoZSB3b3JkLCBzbyB0aGF0IGl0IGlzIHVzZWZ1
bCB0byBDYWtlLgo+Pgo+PiBGb3IgeW91ciB1c2UgY2FzZSwgYSBtYXNrIG9mIDB4RiB3aWxsIGJl
IGNvbXBsZXRlbHkgc3VmZmljaWVudC4gIEl0IHdvdWxkIGFsbG93IHlvdSB0byBzcGVjaWZ5IG1h
cmsgdmFsdWVzIG9mIDEtMTUsIHRvIG1hcCBkaXJlY3RseSBpbiB0aGUgZmlyc3QgMTUgdGlucyB1
c2VkIGJ5IENha2UsIG9yIGEgbWFyayB2YWx1ZSBvZiAwIHRvIGZhbGwgYmFjayB0byBDYWtlJ3Mg
ZGVmYXVsdCBEaWZmc2VydiBoYW5kbGluZy4gIE5vbmUgb2YgQ2FrZSdzIHRpbiBzZXR1cHMgdXNl
IG1vcmUgdGhhbiA4IHRpbnMsIGFuZCBtb3N0IHVzZSBmZXdlci4KPj4KPj4gIC0gSm9uYXRoYW4g
TW9ydG9uCj4+Cj4KPiBUaGFua3MgZm9yIHRoZSBpbmZvISBJJ3ZlIG5vdGljZWQgdGhhdCBieSB1
c2luZyAweEYsIG1hcmtzIDEtNCBiZWNvbWUKPiB0aW5zIDAtMy4gVGluIDAgaXMgc3BlY2lhbD8g
SSBhc3N1bWVkIGl0J3MgZm9yIGJ1bGsgdHJhZmZpYy4gSSB1c2UKPiBkaWZmc2VydjguCgpOYWgs
IGl0J3MganVzdCB0aGF0IHRoZSBmd21hcmsgdXNlcyAxLWluZGV4ZWQgdGluIG51bWJlcnMgKGJl
Y2F1c2UgYQptYXJrIG9mIDAgaXMgdGhlIHNhbWUgYXMgJ3Vuc2V0JykuCgpUaGUgY29kZSBpbiBj
YWtlX3NlbGVjdF90aW4oKSB0aGF0IGhhbmRsZXMgdGhlIG1hcmsgaXMgbGl0ZXJhbGx5IGp1c3Qg
dGhpczoKCgllbHNlIGlmIChtYXJrICYmIG1hcmsgPD0gcS0+dGluX2NudCkKCQl0aW4gPSBxLT50
aW5fb3JkZXJbbWFyayAtIDFdOwoKLVRva2UKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

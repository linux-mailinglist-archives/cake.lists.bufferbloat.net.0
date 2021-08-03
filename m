Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A35153DE498
	for <lists+cake@lfdr.de>; Tue,  3 Aug 2021 05:12:18 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3DCC93CB44;
	Mon,  2 Aug 2021 23:12:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1627960334;
	bh=UO1Nz0vLNHndaN+7opHIKFMfjlOfxH80xNunVfJoan4=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U0f1vm6KXlyPxXCxO/4RiKc2HYAAvSP/vr3SzHcqPwx1MAqo84rLri/0oOYENSONQ
	 1G1yKV5QIyrJtPs4FWEwXNBiR7yK7FoMlU1Z85k/vZc7NiINGpubVPf4vC2PwSCrKL
	 kDmbiE6wiQEV81NhEz2MiQ/XOyeiUBb/lk/5eU7HxjaZNwnWOrsEnjHuNUKDOCc0d6
	 ZynMDsss+l7xJXtZAyI8VmHhQruhd5MefGknl03Hos8F0a6ayJ0hj/G1MkVrnAhCRX
	 73JZAsVK5iwuAcD65wQesz3gGjZUK0g46DS2Ge98XvW7HSkA6/aYY/+K38xM1jamGy
	 emugNFvS6XBVQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.lang.hm (unknown [66.167.227.145])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 525E83B29D;
 Mon,  2 Aug 2021 23:12:13 -0400 (EDT)
Received: from dlang-laptop (unknown [10.2.0.162])
 by mail.lang.hm (Postfix) with ESMTP id 5F98B10010D;
 Mon,  2 Aug 2021 20:12:12 -0700 (PDT)
Date: Mon, 2 Aug 2021 20:12:12 -0700 (PDT)
From: David Lang <david@lang.hm>
X-X-Sender: dlang@dlang-laptop
To: Bob McMahon <bob.mcmahon@broadcom.com>
In-Reply-To: <CAHb6Lvp851pVCt+zUv1PZgpHafCG4RPXEwMn6=CJFXhVf9fK8w@mail.gmail.com>
Message-ID: <nycvar.QRO.7.76.6.2108022007460.810590@qynat-yncgbc>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <CAHb6LvqsZFDDkC1qjr9ccXNjFtq1qnAevQpccNFydP4BOVVL1Q@mail.gmail.com>
 <nycvar.QRO.7.76.6.2108021607160.810590@qynat-yncgbc>
 <e9302d22-8a4a-a74b-658d-c5d4c1c88987@candelatech.com>
 <CAHb6Lvp851pVCt+zUv1PZgpHafCG4RPXEwMn6=CJFXhVf9fK8w@mail.gmail.com>
User-Agent: Alpine 2.21.1 (DEB 209 2017-03-23)
MIME-Version: 1.0
Subject: Re: [Cake] [Make-wifi-fast] [Starlink] [Cerowrt-devel] Due Aug 2:
 Internet Quality workshop CFP for the internet architecture board
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
Cc: starlink@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>, Cake List <cake@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBndWVzcyBpdCBkZXBlbmRzIG9uIHdoYXQgeW91IGFyZSBpbnRlbmRpbmcgdG8gdGVzdC4gSWYg
eW91IGFyZSBub3QgZ29pbmcgdG8gCnRpbmtlciB3aXRoIGFueSBvZiB0aGUgb3Zlci10aGUtYWly
IHNldHRpbmdzIChpbmNsdWRpbmcgdGhlIG51bWJlciBvZiBwYWNrZXRzIAp0cmFuc21pdHRlZCBp
biBvbmUgYWdncmVnYXRlKSwgdGhlIGRldGFpbHMgb2Ygd2hhdCBoYXBwZW4gb3ZlciB0aGUgYWly
IGRvbid0IAptYXR0ZXIgbXVjaC4KCkJ1dCBpZiB5b3UgYXJlIGdvaW5nIHRvIGJlIGRvaW5nIGFu
eSB0aW5rZXJpbmcgd2l0aCB3aGF0IGlzIGdldHRpbmcgc2VudCwgYW5kIAp5b3UgaWdub3JlIHRo
ZSBoaWRkZW4gdHJhbnNtaXR0ZXIgdHlwZSBwcm9ibGVtcywgeW91IHdpbGwgY3JlYXRlIGEgc29s
dXRpb24gdGhhdCAKc2VlbXMgdG8gd29yayByZWFsbHkgd2VsbCBpbiB0aGUgbGFiIGFuZCBmYWxs
cyBvbiBpdCdzIGZhY2Ugb3V0IGluIHRoZSB3aWxkIAp3aGVyZSBzcGVjdHJ1bSBvdmVybG9hZCBh
bmQgaGlkZGVuIHRyYW5zbWl0dGVycyBhcmUgdGhlIG5vcm0gKGF0IGxlYXN0IGluIHVyYmFuIAph
cmVhcyksIG5vdCByYXJlIGNvcm5lciBjYXNlcy4KCnlvdSBkb24ndCBuZWVkIHRvIGluY2x1ZGUg
dGhlbSBpbiBldmVyeSB0ZXN0LCBidXQgeW91IG5lZWQgdG8gaGF2ZSBhIHdheSB0byAKY29uZmln
dXJlIHlvdXIgbGFiIHRvIGluY2x1ZGUgdGhlbSBiZWZvcmUgeW91IGNvbnNpZGVyIGFueSBzZXR0
aW5ncy9hbGdvcml0aG0gCnJlYWR5IHRvIHRyeSBpbiB0aGUgd2lsZC4KCkRhdmlkIExhbmcKCk9u
IE1vbiwgMiBBdWcgMjAyMSwgQm9iIE1jTWFob24gd3JvdGU6Cgo+IFdlIGZpbmQgZm91ciBub2Rl
cywgYSBwcmltYXJ5IEJTUyBhbmQgYW4gYWRqdW5jdCBvbmUgcXVpdGUgZ29vZCBmb3IgbG90cyBv
Zgo+IHRlc3RpbmcuICBUaGUgc2l4IG5vZGVzIGFsbG93cyBmb3IgYSBwcmltYXJ5IEJTUyBhbmQg
dHdvIGFkamFjZW50IG9uZXMuIFdlCj4gd2FudCB0byBtaW5pbWl6ZSBjb21wbGV4aXR5IHRvIG5l
Y2Vzc2FyeSBhbmQgc3VmZmljaWVudC4KPgo+IFRoZSBjaGFsbGVuZ2Ugd2UgZmluZCBpcyBoYXZp
bmcgdmFyaWFiaWxpdHkgKGUuZy4gbW9udGVjYXJsb3MpIHRoYXQncwo+IHJlcHJvZHVjaWJsZSBh
bmQgaGFzIHJlbGV2YW50IGluZm9ybWF0aW9uLiBCYXNpY2FsbHksIHRoZSBkaXN0YW5jZSBtYXRy
aWNlcwo+IGhhdmUgaC1tYXRyaWNlcyBhcyB0aGVpciBlbGVtZW50cy4gT3VyIGNoaXBzIGNhbiBw
cm92aWRlIHRoZXNlIGgtbWF0cmljZXMuCj4KPiBUaGUgcGFydHMgZm9yIHNvbGlkIHN0YXRlIHBy
b2dyYW1tYWJsZSBhdHRlbnVhdG9ycyBhbmQgcGhhc2Ugc2hpZnRlcnMKPiBhcmVuJ3QgdmVyeSBl
eHBlbnNpdmUuIEEgZGV2aWNlIHRoYXQgc3VwcG9ydHMgYSBmaXZlIGJyYW5jaCB0cmVlIGFuZCAy
eDIKPiBNSU1PIHNlZW1zIGEgdmVyeSBnb29kIHN0YXJ0aW5nIHBvaW50Lgo+Cj4gQm9iCj4KPiBP
biBNb24sIEF1ZyAyLCAyMDIxIGF0IDQ6NTUgUE0gQmVuIEdyZWVhciA8Z3JlZWFyYkBjYW5kZWxh
dGVjaC5jb20+IHdyb3RlOgo+Cj4+IE9uIDgvMi8yMSA0OjE2IFBNLCBEYXZpZCBMYW5nIHdyb3Rl
Ogo+Pj4gSWYgeW91IGFyZSBnb2luZyB0byBzZXR1cCBhIHRlc3QgZW52aXJvbm1lbnQgZm9yIHdp
ZmksIHlvdSBuZWVkIHRvCj4+IGluY2x1ZGUgdGhlIGFiaWxpdHkgdG8gbWFrZSBhIGZlIGNhc2Vz
IHRoYXQgb25seSBoYXBwZW4gd2l0aCBSRiwgbm90IHdpdGgKPj4gd2lyZWQgbmV0d29ya3MgYW5k
Cj4+PiBhcmUgY29tbW9ubHkgb3Zlcmxvb2tlZAo+Pj4KPj4+IDEuIHN0YXRpb24gQSBjYW4gaGVh
ciBzdGF0aW9uIEIgYW5kIEMgYnV0IHRoZXkgY2Fubm90IGhlYXIgZWFjaCBvdGhlcgo+Pj4gMi4g
c3RhdGlvbiBBIGNhbiBoZWFyIHN0YXRpb24gQiBidXQgc3RhdGlvbiBCIGNhbm5vdCBoZWFyIHN0
YXRpb24gQSAzLgo+PiBzdGF0aW9uIEEgY2FuIGhlYXIgdGhhdCBzdGF0aW9uIEIgaXMgdHJhbnNt
aXR0aW5nLCBidXQgbm90IHdpdGggYSBzdHJvbmcKPj4gZW5vdWdoIHNpZ25hbCB0bwo+Pj4gZGVj
b2RlIHRoZSBzaWduYWwgKHllcyBpbiB0aGVvcnkgeW91IGNhbiB3b3JrIGFyb3VuZCBpbnRlcmZl
cmVuY2UsIGJ1dAo+PiBpbiBwcmFjdGljZSBpbnRlcmZlcmVuY2UgaXMgc3RpbGwgYSByZWFsIHRo
aW5nKQo+Pj4KPj4+IERhdmlkIExhbmcKPj4+Cj4+Cj4+IFRvIGFkZCB0byB0aGlzLCBJIHRoaW5r
IHlvdSBuZWVkIGxvdHMgb2YgZGlmZmVyZW50IHN0YXRpb24gZGV2aWNlcywKPj4gZGlmZmVyZW50
IGNhcGFiaWxpdGllcyAoL24sIC9hYywgL2F4LCBldGMpCj4+IGRpZmZlcmVudCBudW1iZXJzIG9m
IHNwYXRpYWwgc3RyZWFtcywgYW5kIGRpZmZlcmVudCBkaXN0YW5jZXMgZnJvbSB0aGUKPj4gQVAu
ICBGcm9tIGRvd25sb2FkIHF1ZXVlaW5nIHBlcnNwZWN0aXZlLCBjaGFuZ2luZwo+PiB0aGUgY2Fw
YWJpbGl0aWVzIG1heSBiZSBzdWZmaWNpZW50IHdoaWxlIGtlZXBpbmcgYWxsIHN0YXRpb25zIGF0
IHNhbWUKPj4gZGlzdGFuY2UuICBUaGlzIGFzc3VtZXMgeW91IGFyZSBub3QKPj4gYWN0dWFsbHkg
dGVzdGluZyB0aGUgd2lmaSByYXRlLWN0cmwgYWxnLiBpdHNlbGYsIHNvIGRpZmZlcmVudCB0aHJv
dWdocHV0Cj4+IGxldmVscyBmb3IgZGlmZmVyZW50IHN0YXRpb25zIHdvdWxkIGJlIGVub3VnaC4K
Pj4KPj4gU28sIGEgZ29vZCBzdGF0aW9uIGVtdWxhdG9yIHNldHVwIChhbmQvb3IgcGlsZSBvZiBy
ZWFsIHN0YXRpb25zKSBhbmQgYSBmZXcKPj4gUkYgY2hhbWJlcnMgYW5kCj4+IHByb2dyYW1tYWJs
ZSBhdHRlbnVhdG9ycyBhbmQgeW91IGNhbiB0ZXN0IHRoYXQgc2V0dXAuLi4KPj4KPj4gIEZyb20g
dXBsb2FkIHBlcnNwZWN0aXZlLCBJIGd1ZXNzIHNhbWUgc2V0dXAgd291bGQgZG8gdGhlIGpvYi4K
Pj4gUXVldWluZy9mYWlybmVzcyBtaWdodCBkZXBlbmQgYSBiaXQgbW9yZSBvbiB0aGUKPj4gc3Rh
dGlvbiBkZXZpY2VzLCBlbXVsYXRlZCBvciBvdGhlcndpc2UsIGJ1dCBJIGd1ZXNzIGEgY2xldmVy
IEFQIGNvdWxkCj4+IGVuZm9yY2UgZmFpcm5lc3MgaW4gdXBzdHJlYW0gZGlyZWN0aW9uCj4+IHRv
byBieSBpbXBsZW1lbnRpbmcgcGVyLXN0YSBxdWV1ZXMuCj4+Cj4+IFRoYW5rcywKPj4gQmVuCj4+
Cj4+IC0tCj4+IEJlbiBHcmVlYXIgPGdyZWVhcmJAY2FuZGVsYXRlY2guY29tPgo+PiBDYW5kZWxh
IFRlY2hub2xvZ2llcyBJbmMgIGh0dHA6Ly93d3cuY2FuZGVsYXRlY2guY29tCj4+Cj4KPgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcg
bGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldC9saXN0aW5mby9jYWtlCg==

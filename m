Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C62603DE497
	for <lists+cake@lfdr.de>; Tue,  3 Aug 2021 05:06:25 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 120973CB40;
	Mon,  2 Aug 2021 23:06:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1627959984;
	bh=RTuz3+j+B3cRQH/0RpyMTgS5RyLXSoH91knMNRc0lQ0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WO1ZLHz93ZWCd+pRz6sCSHCdDfRGsEDhI1vbVPd4ceffkCVHB7TWcRFFI4Pldflau
	 LTM2+0mkBCNuckcMipzHYgQ4CuQ82ChpXKDqKe+lr3sLO2FKYMwg+hSBAk/Y86hpeW
	 d1h+GPIeJoIHrkP+e3ZoG/x53q+c8MfBRh2ZrrgIvXIXwNpuV+xbwhlrEM0av3IXw6
	 NrKycb6FtksfQLv9B7Zy3IS6rBUaY4UxCavv3bdzLcdKleCJfVzHaA6GXjtBkqjHpY
	 dc0NV/Gw7u2yIhgfamJd3pZCBf5wZ0AegxvanAaLjDZLLh99yD73SNLKjprUeP1Eo7
	 WkGxqAfjJYjiw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.lang.hm (unknown [66.167.227.145])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 381E73B29D;
 Mon,  2 Aug 2021 23:06:22 -0400 (EDT)
Received: from dlang-laptop (unknown [10.2.0.162])
 by mail.lang.hm (Postfix) with ESMTP id CAD44100109;
 Mon,  2 Aug 2021 20:06:20 -0700 (PDT)
Date: Mon, 2 Aug 2021 20:06:20 -0700 (PDT)
From: David Lang <david@lang.hm>
X-X-Sender: dlang@dlang-laptop
To: Bob McMahon <bob.mcmahon@broadcom.com>
In-Reply-To: <CAHb6LvpK48u+8coP1pWJVjva_jYaQa-bGuArAGnf8ku-=xoSBw@mail.gmail.com>
Message-ID: <nycvar.QRO.7.76.6.2108022004170.810590@qynat-yncgbc>
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
 <CAHb6LvpK48u+8coP1pWJVjva_jYaQa-bGuArAGnf8ku-=xoSBw@mail.gmail.com>
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

dGhhdCBtYXRyaXggY2Fubm90IGNyZWF0ZSBhc3ltbWV0cmljIHBhdGhzIChhdCBsZWFzdCwgbm90
IHVubGVzcyB5b3UgYXJlIGFsc28gCnRpbmtlcmluZyB3aXRoIHBvd2VyIHNldHRpbmdzIG9uIHRo
ZSBub2RlcyksIGFuZCB3aWxsIGhhdmUgdHJvdWJsZSBtYWtpbmcgaGlkZGVuIAp0cmFuc21pdHRl
cnMgKHN0YXRpb24gQSBjYW4gaGVhciBzdGF0aW9uIEIgYW5kIEMgYnV0IEIgYW5kIEMgY2Fubm90
IHRlbGwgdGhlIApvdGhlciBleGlzdHMpIGFzIGEgbm9kZSBjYW4gaGVhciB0aGF0IHNvbWV0aGlu
ZyBpcyB0cmFuc21pdHRpbmcgYXQgbXVjaCBsb3dlciAKcG93ZXIgbGV2ZWxzIHRoYW4gaXQgY24g
ZGVjb2RlIHRoZSBzaWduYWwuCgpEYXZpZCBMYW5nCgpPbiBNb24sIDIgQXVnIDIwMjEsIEJvYiBN
Y01haG9uIHdyb3RlOgoKPiBPbiBNb24sIEF1ZyAyLCAyMDIxIGF0IDQ6MTYgUE0gRGF2aWQgTGFu
ZyA8ZGF2aWRAbGFuZy5obT4gd3JvdGU6Cj4KPj4gSWYgeW91IGFyZSBnb2luZyB0byBzZXR1cCBh
IHRlc3QgZW52aXJvbm1lbnQgZm9yIHdpZmksIHlvdSBuZWVkIHRvIGluY2x1ZGUKPj4gdGhlCj4+
IGFiaWxpdHkgdG8gbWFrZSBhIGZlIGNhc2VzIHRoYXQgb25seSBoYXBwZW4gd2l0aCBSRiwgbm90
IHdpdGggd2lyZWQKPj4gbmV0d29ya3MgYW5kCj4+IGFyZSBjb21tb25seSBvdmVybG9va2VkCj4+
Cj4+IDEuIHN0YXRpb24gQSBjYW4gaGVhciBzdGF0aW9uIEIgYW5kIEMgYnV0IHRoZXkgY2Fubm90
IGhlYXIgZWFjaCBvdGhlcgo+PiAyLiBzdGF0aW9uIEEgY2FuIGhlYXIgc3RhdGlvbiBCIGJ1dCBz
dGF0aW9uIEIgY2Fubm90IGhlYXIgc3RhdGlvbiBBCj4+IDMuIHN0YXRpb24gQSBjYW4gaGVhciB0
aGF0IHN0YXRpb24gQiBpcyB0cmFuc21pdHRpbmcsIGJ1dCBub3Qgd2l0aCBhCj4+IHN0cm9uZwo+
PiBlbm91Z2ggc2lnbmFsIHRvIGRlY29kZSB0aGUgc2lnbmFsICh5ZXMgaW4gdGhlb3J5IHlvdSBj
YW4gd29yayBhcm91bmQKPj4gaW50ZXJmZXJlbmNlLCBidXQgaW4gcHJhY3RpY2UgaW50ZXJmZXJl
bmNlIGlzIHN0aWxsIGEgcmVhbCB0aGluZykKPj4KPj4gRGF2aWQgTGFuZwo+Pgo+Pgo+Cj4KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo=

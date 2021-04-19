Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F16364D3D
	for <lists+cake@lfdr.de>; Mon, 19 Apr 2021 23:43:06 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A31A83CB49;
	Mon, 19 Apr 2021 17:43:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1618868581;
	bh=LQ+xSGbi8MGFVEZh35H3RDoJLtCheGXeGayTNo8xyTA=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gpPnn2/gArevwBl9lqOLN5pX8Gb4MzQ5HTnJdjEHiqKMHslQlmm8LSq7LcB6ypf6w
	 i2cObRMOaRnwwvul16ZLXJ37rduoYp4U4lNzYI4tqi9LvHOCcXwSr7BZ1doTt83KCP
	 JS5vqFADVUkbzas30KAUbec/t8pgMggn1BNjGbBFGu2YxZ3J9KvpetCJWXSFSOfu3Y
	 Edr1U+qGfywWFBajoP7ovsllyef40gPFMS1A5hL4v+dvS8Y6QoXCVQOW/4ps6CNs36
	 SRXPDLNWmgLSxh90KKwBu80iyNA+moiuv/q/YKWvIYnLke+gUJwgScS6RuoZLYbcRo
	 pTtiCU9KfX3bg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.lang.hm (unknown [66.167.227.145])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EBA723B2A4;
 Mon, 19 Apr 2021 17:42:59 -0400 (EDT)
Received: from dlang-laptop (unknown [10.2.0.162])
 by mail.lang.hm (Postfix) with ESMTP id 8D6E0F4521;
 Mon, 19 Apr 2021 14:42:58 -0700 (PDT)
Date: Mon, 19 Apr 2021 14:42:58 -0700 (PDT)
From: David Lang <david@lang.hm>
X-X-Sender: dlang@dlang-laptop
To: Michael Richardson <mcr@sandelman.ca>
In-Reply-To: <10241.1618866642@localhost>
Message-ID: <nycvar.QRO.7.76.6.2104191439590.18176@qynat-yncgbc>
References: <CAA93jw5FEe90Dw3_tGubna=_Urzbq6dYMMrifGV7bMuhL2nXKg@mail.gmail.com>
 <nycvar.QRO.7.76.6.2104191057361.18176@qynat-yncgbc>
 <10241.1618866642@localhost>
User-Agent: Alpine 2.21.1 (DEB 209 2017-03-23)
MIME-Version: 1.0
Subject: Re: [Cake] [Bloat] starlink testing
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
Cc: Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSd2ZSB3YXRjaGVkIHRob3NlLCBhbmQgaXQncyBQb0UgY29tbXVuaWNhdGlvbiB0byB0aGUgZGlz
aCwgYW5kIHRoZXJlIGlzIGEgCnByb2Nlc3NvciBvbiB0aGUgZGlzaCB3aXRoIGEgc2VyaWFsIGNv
bnNvbGUuCgpJIGhhdmVuJ3Qgc2VlbiBhbnkgZm9sbG93LXVwcyB3aGVyZSBhbnlvbmUgaGFzIGdv
dHRlbiBhIGxvZ2luIHRvIHRoZSBkaXNoIG9yIGhhcyAKc25pZmZlZCB0aGUgdHJhZmZpYyBiZXR3
ZWVuIHRoZSBkaXNoIGFuZCB0aGUgcm91dGVyLgoKSSBoYXZlbid0IHNlZW4gYW55dGhpbmcgdGhh
dCB3b3VsZCBzaG93IHRoYXQgdGhlIHJvdXRlciBoYXMgKG9yIGRvZXNuJ3QgaGF2ZSkgCmFueSBh
d2FyZW5lc3Mgb2YgdGhlIHNhdGVsbGl0ZSBuZXR3b3JrLgoKVGhhdCdzIHdoeSBJIHdhcyBhc2tp
bmcgYWJvdXQgc25pZmZpbmcgYmV0d2VlbiB0aGUgZGV2aWNlcyB0byBzZWUgd2hhdCdzIApoYXBw
ZW5pbmcgdGhlcmUuCgpEYXZpZCBMYW5nCgpPbiBNb24sIDE5IEFwciAyMDIxLCBNaWNoYWVsIFJp
Y2hhcmRzb24gd3JvdGU6Cgo+IERhdmlkIExhbmcgPGRhdmlkQGxhbmcuaG0+IHdyb3RlOgo+ICAg
ID4gYXJlIHlvdSBhYmxlIHRvIHNuaWZmIGJldHdlZW4gdGhlIHJvdXRlciBhbmQgdGhlIGRpc2g/
IEknbSBjdXJpb3VzIGhvdyBtdWNoCj4gICAgPiBvZiB0aGUgc21hcnRzIGlzIGluIHRoZSBkaXNo
IHZzIHRoZSByb3V0ZXIuIE15IGhvcGUgaXMgdGhhdCB0aGUgcm91dGVyIGlzCj4gICAgPiBqdXN0
IGEgY29udmVudGlvbmFsIHJvdXRlciB3aXRoIHRoZSBzYXRlbGxpdGUgbmV0d29yayBzbWFydHMg
aW4gdGhlIGRpc2guCj4KPiBOby4KPiBTZWUgdGhlIHRlYXJkb3ducywgc3VjaCBhczogaHR0cHM6
Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1RdWR0U281dHBMawo+IEl0J3MgYSBodWdlIHN5bnRo
ZXRpYyBhbnRlbm5hLiAgSXQncyBvcGVud3J0IHRob3VnaC4KPgo+Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlz
dHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZv
L2Nha2UK

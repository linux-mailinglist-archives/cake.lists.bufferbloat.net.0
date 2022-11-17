Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 033AC62DDDD
	for <lists+cake@lfdr.de>; Thu, 17 Nov 2022 15:22:47 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9C1843CB48;
	Thu, 17 Nov 2022 09:22:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1668694964;
	bh=Conx7TVay476LI9WeucLaa3JOczK3k1Y75jiC7pCKVQ=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=oWkhtFGIQqympIr0QNYJThkD1IBnuHwLz0+/i6MjJAETBoZBBOeTGdCpxoLGiCBs3
	 QJuG7WQIIc8sd4O4OTZEGyQukhdd2Z0TP5wCUCTt2+Er1iCi9pk4qzDmmKr25xMQVa
	 MjRBjcCIDcPqtKA//S5ott3M79AiyOrIfCY0noHxtsXVdmFhl+90Lf+34wzk/JhFv1
	 Ig/07hfklr/Npk4y57hfa6d+ydpEspeibMcwPUdLwARolNqdSmhE4hSI4J++1rivDV
	 BveLXR+daFvjFRKGp0oXIBPFgXcvWI4GaiczWPcnKexFLyOnFofuXAVHnqsEOj7+UO
	 qIO/6+bBMzDDg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from vps.slashdirt.org (vps.slashdirt.org [144.91.108.218])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 645883B29D
 for <cake@lists.bufferbloat.net>; Thu, 17 Nov 2022 09:22:43 -0500 (EST)
Received: from smtpclient.apple (tardis.herebedragons.eu [171.22.3.161])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 745AE60113;
 Thu, 17 Nov 2022 15:22:41 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 745AE60113
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1668694962; bh=9yyczLWmA+wiMjPaoIX5NUz97YBR/K5Yjg3d7TH/X0k=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=EqEpoNMpA8t8iofW2AkaLTX0V4doZV0RAgXLimKTDZ+vnpATHR8hNORS5LwaRLULI
 7HamCLgJt45ytEKgGFtJTuZbSslpHecVdT5oyeuJK7snHUFMpQg0Np+baMMoAN3BQv
 OHhz7Kaoa58qOsy21JwOedOEWb5P39a0dd+0F2NQ=
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
In-Reply-To: <F5AFD318-A148-4C42-A401-F1B18BC76628@gmx.de>
Date: Thu, 17 Nov 2022 15:22:40 +0100
Message-Id: <4D5AA477-1547-441F-900C-6DC70C824960@slashdirt.org>
References: <386F2ED9-3D39-4A42-8982-742B5D4B417F@slashdirt.org>
 <F2D11ACD-9A4E-43E5-A7FE-B7CE27581434@gmx.de>
 <4CF53FE3-D26A-4E32-8378-3B27BBB70AEF@slashdirt.org>
 <F5AFD318-A148-4C42-A401-F1B18BC76628@gmx.de>
To: Sebastian Moeller <moeller0@gmx.de>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
Subject: Re: [Cake] Help untangling CAKE settings for FTTH
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
From: Thibaut via Cake <cake@lists.bufferbloat.net>
Reply-To: Thibaut <hacks@slashdirt.org>
Cc: Cake List <cake@lists.bufferbloat.net>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgU2ViYXN0aWFuLAoKPiBMZSAxNyBub3YuIDIwMjIgw6AgMTA6NTAsIFNlYmFzdGlhbiBNb2Vs
bGVyIDxtb2VsbGVyMEBnbXguZGU+IGEgw6ljcml0IDoKPiAKPiBIaSBULgo+IAo+IAo+IHNvIHRh
a2luZyB5b3VyIHByb3Bvc2EgdW5kZXIgY29uc2lkZXJhdGlvbiBJIGNhbmdlZCB0aGUgc2VjdGlv
biB0aGF0IHRocmV3IHlvdSBvZmYgY291cnNlIHRvIHJlYWQ6Cj4gCj4gCj4gCeKAoiBFdGhlcm5l
dCB3aXRoIE92ZXJoZWFkOiBTUU0gY2FuIGFsc28gYWNjb3VudCBmb3IgdGhlIG92ZXJoZWFkIGlt
cG9zZWQgYnkgVkRTTDIgbGlua3MgLSBhZGQgMjIgYnl0ZXMgb2Ygb3ZlcmhlYWQgKG1wdSA2OCku
IENhYmxlIE1vZGVtcyAoRE9DU0lTKSBzZXQgYm90aCB1cC0gYW5kIGRvd25zdHJlYW0gb3Zlcmhl
YWQgdG8gMTggYnl0ZXMgKDYgYnl0ZXMgc291cmNlIE1BQywgNiBieXRlcyBkZXN0aW5hdGlvbiBN
QUMsIDIgYnl0ZXMgZXRoZXItdHlwZSwgNCBieXRlcyBGQ1MpLCB0byBhbGxvdyBmb3IgYSBwb3Nz
aWJsZSA0IGJ5dGUgVkxBTiB0YWcgaXQgaXMgcmVjb21tZW5kZWQgdG8gc2V0IHRoZSBvdmVyaGVh
ZCB0byAxOCArIDQgPSAyMiAobXB1IDY0KS4gRm9yIEZUVEggdGhlIGFuc3dlciBpcyBsZXNzIGNs
ZWFyIGN1dCwgc2luY2UgZGlmZmVyZW50IHVuZGVybGF5aW5nIHRlY2hub2xvZ2llcyBoYXZlIGRp
ZmZlcmVudCByZWxldmFudCBwZXItcGFja2V0LW92ZXJoZWFkczsgaG93ZXZlciB1bmRlcmVzdGlt
YXRpbmcgdGhlIHBlci1wYWNrZXQtb3ZlcmhlYWQgaXMgY29uc2lkZXJhYmx5IHdvcnNlIGZvciBy
ZXNwb25zaXZlbmVzcyB0aGFuIChnZW50bHkpIG92ZXJlc3RpbWF0aW5nIGl0LCBzbyBmb3IgRlRU
SCBzZXQgdGhlIG92ZXJoZWFkIHRvIDQ0IChtcHUgODQpIHVubGVzcyB0aGVyZSBpcyBtb3JlIGRl
dGFpbGVkIGluZm9ybWF0aW9uIGFib3V0IHRoZSB0cnVlIG92ZXJoZWFkIG9uIGEgbGluayBhdmFp
bGFibGUuCj4gCeKAoiBOb25lOiBBbGwgc2hhcGluZyBiZWxvdyB0aGUgcGh5c2ljYWwgZ3Jvc3Mt
cmF0ZSBvZiBhIGxpbmsgcmVxdWlyZXMgY29ycmVjdCBwZXItcGFja2V0IG92ZXJoZWFkIGFjY291
bnRpbmcgdG8gYmUgcHJlY2lzZSwgc28gTm9uZSBpcyBvbmx5IHVzZWZ1bCBpZiBhcHByb3hpbWF0
ZSBzaGFwaW5nIGlzIHN1ZmZpY2llbnQsIHNheSBpZiB5b3Ugd2FudCB0byBjbGFtcCBhIGd1ZXN0
IG5ldHdvcmsgdG8gYXQgYmVzdCB+NTAlIG9mIHRoZSBhdmFpbGFibGUgY2FwYWNpdHkgb3Igc2lt
aWxhciB0YXNrcywgYnV0IGV2ZW4gdGhlbiBjb25maWd1cmluZyBhbiBhcHByb3hpbWF0ZSBjb3Jy
ZWN0IHBlci1wYWNrZXQtb3ZlcmhlYWQgaXMgcmVjb21tZW5kZWQgKG92ZXJoZWFkIDQ0IChtcHUg
ODQpIGlzIGEgZGVjZW50IGRlZmF1bHQgdG8gcGljaykuCj4gCj4gCj4gSSBob3BlIHRoaXMgaXMg
ZXhwbGljaXQgZW5vdWdoLgoKWWVzIHRoaXMgbG9va3MgYSBsb3QgYmV0dGVyLCB0aGFuayB5b3Uu
CgpBbHRob3VnaCBJIG11c3QgY29uZmVzcyB0aGF0IGl0IGNlcnRhaW5seSBmZWVscyBjb3VudGVy
LWludHVpdGl2ZSB0aGF0IGZvciBldGhlcm5ldCAoYW5kIEZUVEgpIHdlIHN1Z2dlc3QgYSBoaWdo
ZXIgb3ZlcmhlYWQgdGhhbiBlLmcuIFZEU0wyL2NhYmxlICh3aGljaCB0aGVtc2VsdmVzIHJ1biBv
ZmYgYW4gZXRoZXJuZXQgaW50ZXJmYWNlKS4KCkkgd291bGQgYWxzbyBsaWtlIHRvIHNlZSBzb21l
IGluZm8gYWJvdXQgcHBwIHZzIGV0aGVybmV0IGludGVyZmFjZSBpbiB0aGVyZSAobWF0Y2hpbmcg
eW91ciBwcmV2aW91cyBlbWFpbCk6IHVubGVzcyB5b3UgYmVhdCBtZSB0byBpdCBJIHdpbGwgYWRk
IGl0LgpJIGFsc28gdGhpbmsgdGhlIMKrIGRldGFpbHMgwrsgcGFnZSBuZWVkcyB0byBiZSByZWZv
cm1hdHRlZCBhIGJpdCwgaXTigJlzIHZlcnkgZGVuc2UgYW5kIHJlbGV2YW50IGluZm8gaXMgYWxs
IG92ZXIgdGhlIHBsYWNlIGFuZCBub3QgdmVyeSB3ZWxsIG9yZ2FuaXplZC4gSeKAmWxsIHRyeSB0
byBnZXQgYXJvdW5kIGltcHJvdmluZyB0aGF0LgoKVGhhbmtzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nh
a2UK

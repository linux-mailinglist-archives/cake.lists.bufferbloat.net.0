Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8B3428477
	for <lists+cake@lfdr.de>; Mon, 11 Oct 2021 03:18:46 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6C7143CB67;
	Sun, 10 Oct 2021 21:18:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1633915122;
	bh=dyVB0VivkWggQQJfIw8A8CqIDlDBLojSmAWVF1lDsoE=;
	h=To:References:In-Reply-To:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=BaVzpvAdmYkLksl0dV7YJhT1ggXhIdf9fOZjCJTxUzi9kdxHfTIHjCeA+J6/qun1W
	 Da5/kItuH4hoN5105/sX/8TiLDOzsLxvLovRrVjrXY1fL8f2UG1tuWBQWANmnuV5ZA
	 6D+r9/iSOb1aJR7k5W7eHzQ+p0nSWx/UJ1eDmOjfvjZw1yjeMiMyJ+3FYhkqRcD1dO
	 +ykjhwmRzqYkwmCBCoIAZ+idEu7xOKBdu7eSvrakIx/2rKcnWS7D8ZPzpf1HCXQw5U
	 4Yt+UGVwHnTyinSrcagE/chzCsUuFiexuNeeVADjrxdIM0H3aLyZchHLSEJCooc2fN
	 ARMLZ9XZu+s/w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from cpanel.tc-mi.net (cpanel.tc-mi.net [198.109.107.12])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 518BA3B29D;
 Sun, 10 Oct 2021 21:18:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=inacomptc.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CuuFm+qwO/J0whvkXy1OP/hrpiLWgrEJF6i4yU4pdu0=; b=yIw08S7dEwBAurdw6iP7TSy3zH
 0LJJx+HPfd7cQ9C6gtXhIBvOKRIWlP90MhdMVMeO2f6vs/8Y9lkWMuN/kRmZD3zKFizoRlLDMLkUP
 TT3OQEaw/9FoyfNtmp90LoBxmWlDKIdH/uMQJNH6QsHFYSkrlS20vcR22Si4A5n4+4XT3Emj1jc9r
 WqcIOunmWpu83GJMiYRracd2gsu+GsOYdhVlkUoGTh80qFUrjoG1sLNY7KTi6AZVJOd3bPQg4hlCc
 ll7jg3WP8oIfjKGcjwBPslHTsuXR/85/4SDR267nmSYp+Wse2aEBzU/ubSdDJQgO1LM3q/aBvapu5
 3F/Xz6bA==;
Received: from 097-083-001-186.res.spectrum.com ([97.83.1.186]:6518
 helo=DESKTOP0D7H4U1) by cpanel.tc-mi.net with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jordan@inacomptc.com>)
 id 1mZjxg-00039s-IN; Sun, 10 Oct 2021 21:18:40 -0400
To: "'Dave Taht'" <dave.taht@gmail.com>
References: <CAA93jw7YkMv-F6cYj2PZ9pGiS1yapO5wpLJWmuje6p0fc54eEA@mail.gmail.com>
 <003001d7bdf0$97282430$c5786c90$@inacomptc.com>
 <CAA93jw5cefvMNe-6+gAWLVVsTYXE6JDpPXvYGrthNa-kjX-ixg@mail.gmail.com>
 <004901d7bdf2$8544e8a0$8fceb9e0$@inacomptc.com>
 <CAA93jw5P+xoKH13fQiwvUM4BxPPsKTSZ+jg9xP0+9LPFH6tVkA@mail.gmail.com>
In-Reply-To: <CAA93jw5P+xoKH13fQiwvUM4BxPPsKTSZ+jg9xP0+9LPFH6tVkA@mail.gmail.com>
Date: Sun, 10 Oct 2021 21:18:40 -0400
Message-ID: <00ce01d7be3d$ed5bfc30$c813f490$@inacomptc.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJoRh1+isobeJQa+Kydtt3dT7fxBgJY5XOFAbYyNIkBKHbDvQJgaKIsqm8vmOA=
Content-Language: en-us
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.tc-mi.net
X-AntiAbuse: Original Domain - lists.bufferbloat.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - inacomptc.com
X-Get-Message-Sender-Via: cpanel.tc-mi.net: authenticated_id:
 jordan@inacomptc.com
X-Authenticated-Sender: cpanel.tc-mi.net: jordan@inacomptc.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: [Cake] [Bloat] some mikrotik comments
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
From: Jordan Szuch via Cake <cake@lists.bufferbloat.net>
Reply-To: Jordan Szuch <jordan@inacomptc.com>
Cc: 'Cake List' <cake@lists.bufferbloat.net>,
 'bloat' <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RG9uZSEgU2hvdWxkIGZpbmUgdGhlIHJlc3VsdHMgaW4gdGhlIHNhbWUgc2hhcmVkIGZvbGRlcnMg
SSBwcm92aWRlZCBlYXJsaWVyIHVuZGVyICJSdW4gIzMiCgotLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQpGcm9tOiBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+IApTZW50OiBTdW5kYXks
IE9jdG9iZXIgMTAsIDIwMjEgOTowNSBQTQpUbzogSm9yZGFuIFN6dWNoIDxqb3JkYW5AaW5hY29t
cHRjLmNvbT4KQ2M6IENha2UgTGlzdCA8Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+OyBibG9h
dCA8YmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0PgpTdWJqZWN0OiBSZTogW0Jsb2F0XSBzb21l
IG1pa3JvdGlrIGNvbW1lbnRzCgpjb3VsZCB5b3UgdHJ5IHRoZSBycnVsIHRlc3QgKHNoYXBlZC91
bnNoYXBlZCkgYXQgdGhpcyBib3g/OgpkYWxsYXMuc3RhcmxpbmsudGFodC5uZXQKCgpPbiBTdW4s
IE9jdCAxMCwgMjAyMSBhdCA5OjE4IEFNIEpvcmRhbiBTenVjaCA8am9yZGFuQGluYWNvbXB0Yy5j
b20+IHdyb3RlOgo+Cj4gT0ssIEknbGwgZ2l2ZSBpdCBhIHNob3QhIFBsZWFzZSBmb3JnaXZlIG1l
IGhlcmUgYXMgSSBoYXZlbid0IHJlYWxseSBydW4gZmxlbnQgYmVmb3JlLiBXb3VsZCBydW5uaW5n
IHNvbWV0aGluZyBsaWtlIHdoYXQncyBsaXN0ZWQgaW4gdGhlIFF1aWNrIFN0YXJ0IGhlcmUgKGh0
dHBzOi8vZmxlbnQub3JnL2ludHJvLmh0bWwjcXVpY2stc3RhcnQpIGJlIHN1ZmZpY2llbnQ/Cj4K
PiBKb3JkYW4KPgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogRGF2ZSBUYWh0
IDxkYXZlLnRhaHRAZ21haWwuY29tPgo+IFNlbnQ6IFN1bmRheSwgT2N0b2JlciAxMCwgMjAyMSAx
MjoxMSBQTQo+IFRvOiBKb3JkYW4gU3p1Y2ggPGpvcmRhbkBpbmFjb21wdGMuY29tPgo+IENjOiBD
YWtlIExpc3QgPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0PjsgYmxvYXQgCj4gPGJsb2F0QGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldD4KPiBTdWJqZWN0OiBSZTogW0Jsb2F0XSBzb21lIG1pa3JvdGlr
IGNvbW1lbnRzCj4KPiBJdCdzIGZsZW50Lm9yZyBycnVsIHRlc3Qgb3V0cHV0IHRoYXQgSSBsb3Zl
Lgo+Cj4gT24gU3VuLCBPY3QgMTAsIDIwMjEgYXQgOTowNSBBTSBKb3JkYW4gU3p1Y2ggdmlhIEJs
b2F0IDxibG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+ID4KPiA+IEhpIERhdmUs
Cj4gPgo+ID4gSW50ZXJlc3RpbmcgdGhhdCB5b3Ugc2hvdWxkIHNlbmQgdGhpcyBvdXQ7IEkgcmVj
ZW50bHkgcGlja2VkIHVwIGEgdW5pdCAodGhpcyBvbmUgc3BlY2lmaWNhbGx5OiBodHRwczovL21p
a3JvdGlrLmNvbS9wcm9kdWN0L2hhcF9hYzIpIHRvIGRvIHNvbWUgdGVzdGluZyBvZiB0aGUgdjcg
ZmlybXdhcmUuIE5vdGhpbmcgc3VwZXIgaGlnaCBlbmQgYnV0IGVub3VnaCB0byBkbyBhIGxpdHRs
ZSB0ZXN0aW5nLiBJIGhhdmUgQ0FLRSBzZXQgdG8gZG8gc29tZSBzaGFwaW5nIGFuZCBzbyBmYXIg
c2VlbXMgZnVuY3Rpb25hbC4gQXQgbGVhc3QgdGhlIGJ1ZmZlcmJsb2F0IHNwZWVkIHRlc3RzIGZy
b20gRFNMUmVwb3J0cyBhbmQgV2F2ZUZvcm0gaW5kaWNhdGUgc29tZSBzaGFwaW5nIGlzIGhhcHBl
bmluZy4gSWYgeW91J2QgbGlrZSBhbnkgaW5mb3JtYXRpb24gYWJvdXQgdGhlIHVuaXQsIHRoZSB2
NyBmaXJtd2FyZSwgb3IgcGFydGljdWxhciB0ZXN0cyBydW4gdGhlbiBJJ2QgYmUgaGFwcHkgdG8g
aGVscCBvdXQuCj4gPgo+ID4gSm9yZGFuCj4gPgo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0KPiA+IEZyb206IEJsb2F0IDxibG9hdC1ib3VuY2VzQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4g
T24gQmVoYWxmIE9mIERhdmUgCj4gPiBUYWh0Cj4gPiBTZW50OiBTdW5kYXksIE9jdG9iZXIgMTAs
IDIwMjEgMTE6MzkgQU0KPiA+IFRvOiBDYWtlIExpc3QgPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQu
bmV0PjsgYmxvYXQgCj4gPiA8YmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0Pgo+ID4gU3ViamVj
dDogW0Jsb2F0XSBzb21lIG1pa3JvdGlrIGNvbW1lbnRzCj4gPgo+ID4gdGhlIHY3IGJldGEgZ2Fp
bmVkIGRvYyBhbmQgbW9yZSBvcyBzdXBwb3J0IGZvciBmcV9jb2RlbCBhbmQgY2FrZSAKPiA+IHJl
Y2VudGx5Cj4gPgo+ID4gaHR0cHM6Ly9mb3J1bS5taWtyb3Rpay5jb20vdmlld3RvcGljLnBocD9w
PTg4NTAwMCNwODg1MDAwCj4gPgo+ID4gYW55b25lIG91dCB0aGVyZSBhY3RpdmVseSB0ZXN0aW5n
IG1pa3JvdGlrPwo+ID4KPiA+IC0tCj4gPiBGaXhpbmcgU3RhcmxpbmsncyBMYXRlbmNpZXM6Cj4g
PiBodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PWM5Z0xvNlhyd2d3Cj4gPgo+ID4gRGF2
ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gPiBCbG9hdCBtYWlsaW5nIGxpc3QKPiA+IEJsb2F0QGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+ID4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vYmxvYXQKPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4gQmxvYXQgbWFpbGluZyBsaXN0Cj4gPiBCbG9hdEBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKPiA+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Jsb2F0
Cj4KPgo+Cj4gLS0KPiBGaXhpbmcgU3RhcmxpbmsncyBMYXRlbmNpZXM6IAo+IGh0dHBzOi8vd3d3
LnlvdXR1YmUuY29tL3dhdGNoP3Y9YzlnTG82WHJ3Z3cKPgo+IERhdmUgVMOkaHQgQ0VPLCBUZWtM
aWJyZSwgTExDCj4KCgotLQpGaXhpbmcgU3RhcmxpbmsncyBMYXRlbmNpZXM6IGh0dHBzOi8vd3d3
LnlvdXR1YmUuY29tL3dhdGNoP3Y9YzlnTG82WHJ3Z3cKCkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJy
ZSwgTExDCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpD
YWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C428B6597
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:41 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2C4E53D56C;
	Mon, 29 Apr 2024 18:18:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429136;
	bh=pgP4RhlBNO8cH7u6B9K7idUKwjDA02olO4AMox5L7p8=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Tu2+GVoT7eiRQ6K/2CC3vsVnHN1iXy3r0jyPHwzAkYWP4tVjMS5Da4zbPYVBQlrIt
	 y7STOvcLMZexE1rIUc5T6G5pEBuWL0DeFG5iepy/ckWRNgW75AAZux0YRT2+TuLVN3
	 uGvLCp+9Hdt/9fkdCOOR96bUVOUus5cET5Ugv7hSMxfvWTm6pDCyL25PDUkHsTMgR3
	 et2WV41hpVM+pVshbKmeD0JgdlhpCMgUivBJfHjAyJ07zb7g1/sGI9dcvi97+smIaY
	 BcTlcxDmrbAHXhApP2q8whOYhr5NjZBHuVL2r7llUUZ/Qjqp7CZwoof4UBRTDqI0lQ
	 Zv9SRocPD7ttw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from bobcat.rjmcmahon.com (bobcat.rjmcmahon.com [45.33.58.123])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 89C073B29D;
 Sun, 12 Mar 2023 22:56:24 -0400 (EDT)
Received: from mail.rjmcmahon.com (bobcat.rjmcmahon.com [45.33.58.123])
 by bobcat.rjmcmahon.com (Postfix) with ESMTPA id B5BB31EEE8;
 Sun, 12 Mar 2023 19:56:23 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 bobcat.rjmcmahon.com B5BB31EEE8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rjmcmahon.com;
 s=bobcat; t=1678676183;
 bh=g7oFRuuwxnHgOJnCjaoxgxGUba0C7y6Y4TWO6IdDD88=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=JQVx/lwu9Jyi/ctcSpdDCaUuZMTOnXkHq/ILrqIEuZ90nr3EQs8206O3WsUncxtvs
 u7AS8pdnm0dPpCwOZh++Pcu29legtrajg9lz/tCEEQXNAMMoS69QCpkz8SvaWoGIaM
 ZcE/zicF3YLDqK2naNDYnAr1zn8moitn/4HFtRD8=
MIME-Version: 1.0
Date: Sun, 12 Mar 2023 19:56:23 -0700
To: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <7E02E03F-F831-49E0-8B37-C1169F939B5A@gmx.de>
References: <CAA93jw7fE2QvQu=85ZPzbnOuZ6EB9yAcebCe87F84L7Bs+UkvQ@mail.gmail.com>
 <AF148E74-DFAA-4D87-9E13-F8C1CF3FBD0E@gmx.de>
 <1de20b8357ea243f9faa1cb2c0295cb5@rjmcmahon.com>
 <7E02E03F-F831-49E0-8B37-C1169F939B5A@gmx.de>
Message-ID: <99b5496444c6acd69947b4a819f89db4@rjmcmahon.com>
X-Sender: rjmcmahon@rjmcmahon.com
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: Re: [Cake] [Rpm] so great to see ISPs that care
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
From: rjmcmahon via Cake <cake@lists.bufferbloat.net>
Reply-To: rjmcmahon <rjmcmahon@rjmcmahon.com>
Cc: Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 Rpm <rpm@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T3VyIGN1cnJlbnQgV2lGaSBkZXNpZ25zLCBhdCBsZWFzdCBpbiByZXNpZGVudGlhbCwgYXJlIGxp
a2UgZ2FyZGVuIGhvc2VzIAphdHRhY2hlZCB0byByZWN0YW5ndWxhciBzcHJpbmtsZXJzIC0gZmxl
eGlibGUgYW5kIHN1Ym9wdGltYWwuIFdoYXQncyAKbmVlZGVkIGlzIGFuIGlycmlnYXRpb24gc3lz
dGVtIGFwcHJvYWNoIHdoZXJlIHBoeXNpY2FsIGRpbWVuc2lvbnMgYW5kIApzcHJheSBwYXR0ZXJu
cyBhcmUgZGVzaWduZWQgaW4gYnkgYSBxdWFsaWZpZWQgZGVzaWduZXIuIChJIHdhcyAxNiB3aGVu
IEkgCmdvdCBteSBUZXhhcyBpcnJpZ2F0aW9uIGxpY2Vuc2UgLSBuZWVkZWQgaXQgZm9yIHN1bW1l
ciB3b3JrLikgV2lGaSAKZGVzaWduZXJzIGNhbiBsZWFybiBmcm9tIGlycmlnYXRpb24sIGUuZyB0
aGluZ3MgbGlrZSBqdXN0IGVub3VnaCBzcHJheSAKb3ZlcmxhcCBhbmQgZG9uJ3Qgc3ByYXkgZG93
biB0aGUgc3RyZWV0LgoKQWxzbywgYnkgZmlyZSBjb2RlIENQRSBzbW9rZSBkZXRlY3RvcnMgY2Fu
IGJlIG5vIGZ1cnRoZXIgdGhhbiAzMCcgZnJvbSBhIApoYWJpdGFibGUgc3BhY2UgYXMgaHVtYW5z
IG5lZWQgdG8gYmUgYWxlcnRlZC4gMjAnIHJhZGl1cyBpcyBiZXR0ZXIuCgpJdCBpcyBzaWxseSB0
aGF0IHdlIGRvbid0IHJlYWxseSB0YWtlIGFkdmFudGFnZSBvZiB0aGlzIGFuZCBkZXNpZ24gYSAK
cHJvcGVyIFdpRmkgbmV0d29yay4gVGhlIGRpc3RhbmNlcywgRU1GIHBhdHRlcm5zLCBhbmQgbG9j
YWwgZGV2aWNlcyBhcmUgCmtub3duIGFoZWFkIG9mIHRpbWUgKGFzIG91ciBwbGFudHMsIHlhcmQs
IG1haW4gcGlwZXMsIGV0Yy4gd2l0aCAKaXJyaWdhdGlvbi4pCgpJIHN0YXJ0ZWQgbXkgY2FyZWVy
IHdvcmtpbmcgb24gYSBuZXR3b3JrIGRlc2lnbiBmb3IgdGhlIEludGVybmF0aW9uYWwgClNwYWNl
IFN0YXRpb24uIFRoZSAqZmlyc3QqIHJlcXVpcmVtZW50IHdhcyB0byBjYXJyeSAibGlmZSBzdXBw
b3J0IHVzZSAKY2FzZXMiIGZvciB0aGUgYXN0cm9uYXV0cy4gTm9uZSBvZiB0aGlzIHN0dWZmIG9m
LCB3ZWxsIGl0J3MganVzdCAKZW50ZXJ0YWlubWVudCBzbyB3ZSBkb24ndCBuZWVkIHRvIHdvcnJ5
IGFib3V0IGRvd250aW1lIGFuZCByZWJvb3RpbmcgYSAKZGV2aWNlIGlzIGp1c3QgZmluZS4gQWxz
bywgbm9uZSBvZiB0aGUgaGFuZCB3YXZpbmcgYXMgRWxvbiBNdXNrIGRvZXMgCmNvbmZsYXRpbmcg
cmVjeWNsaW5nIHdpdGggbGlmZSBzdXBwb3J0LiAKaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0
Y2g/dj1zT3BNclZualllWSZ0PTQ2MTlzCgpJIGJlbGlldmUgc2tpbGxlZCBlbmdpbmVlcnMgbXVz
dCB0YWtlIHRoZSBsZWFkIGhlcmUuIEl0J3Mgbm90IGdvaW5nIHRvIApjb21lIGZyb20gY3VzdG9t
ZXJzIGNvbXBsYWluaW5nLCBub3IgZnJvbSBleGVjIG1hbmFnZW1lbnRzIGxvb2tpbmcgZm9yIAp0
aGUgbmV4dCBpbmNyZW1lbnQuIEFsbCBwcm9ibGVtcyBhcmVuJ3QgYnVmZmVyYmxvYXQgZWl0aGVy
LgoKV2UgYXMgZW5naW5lZXJzIGNhbiBkbyBiZXR0ZXIuIE5vdCBzdXJlIHdoeSBpdCdzIGJlZW4g
c28gaGFyZCB0byBkYXRlIApidXQgaXQgc2VlbXMgdG8gYmUgdGhlIGNhc2UuIE15IGhvcGUgaXMg
d2UgZmlndXJlIGl0IG91dCBzb29uZXIgdGhhbiAKbGF0ZXIuIEkgYWxzbyB0aGluayBtb3N0IElT
UHMgYWN0dWFsbHkgZG8gY2FyZSBkZXNwaXRlLCB0aGUgc3VwcG9zaXRpb24gCmluIHRoZSBzdWJq
ZWN0IGxpbmUuIFJhdGhlciB3ZSBqdXN0IGhhdmVuJ3QgZmlndXJlZCBvdXQgYXMgYSBncm91cCBo
b3cgCnRvIGRvIG91ciBlbmdpbmVlcmluZyBhdCBhIHdvcmxkLWNsYXNzIGxldmVsLgoKU29tZXRp
bWVzIGFuIGluY3JlbWVudCBpcyBvay4gT3RoZXIgdGltZXMgd2UgbmVlZCB0byByZXRoaW5rIG91
ciBkZXNpZ24uIApNYXliZSB3ZSBuZWVkIHRvIGRvIGEgYml0IG1vcmUgb2YgdGhlIGxhdHRlci4K
CkJvYgoKPiBIaSBCb2IsCj4gCj4gCj4+IE9uIE1hciAxMiwgMjAyMywgYXQgMjI6MDIsIHJqbWNt
YWhvbiA8cmptY21haG9uQHJqbWNtYWhvbi5jb20+IHdyb3RlOgo+PiAKPj4gaXBlcmYgMiB1c2Vz
IHJlc3BvbnNlcyBwZXIgc2Vjb25kIGFuZCBhbHNvIHByb3ZpZGVzIHRoZSBib3VuY2UgYmFjayAK
Pj4gdGltZXMgYXMgd2VsbCBhcyBvbmUgd2F5IGRlbGF5cy4KPj4gCj4+IFRoZSBoeXBvdGhlc2lz
IGlzIHRoYXQgbmV0d29yayBlbmdpbmVlcnMgaGF2ZSB0byBmaXggS1BJIGlzc3VlcywgCj4+IGlu
Y2x1ZGluZyBsYXRlbmN5LCBhaGVhZCBvZiBzaGlwcGluZyBwcm9kdWN0cy4KPj4gCj4+IEFza2lu
ZyBjb21wYW5pZXMgdG8gYWN0IG9uIGNvbnN1bWVyIGNvbXBsYWludHMgaXMgd2F5IHRvbyBsYXRl
LiBJdCdzIAo+PiBhbHNvIGV4dHJlbWVseSBjb3N0bHkuIFRob3NlIHJ1bm5pbmcgQW1hem9uIGN1
c3RvbWVyIHNlcnZpY2UgY2FuIAo+PiBleHBsYWluIGhvdyB0aGVzZSBjb25zdW1lciBjYWxscyBh
Ym91dCB0aGVpciBkZXZpY2VzIGNhdXNlIHRoaW5ncyBsaWtlIAo+PiBkZXZpY2UgcmV0dXJucyAo
YXMgdGhhdCdzIGFsbCB0aGUgY2FsbCBzdXBwb3J0IGNhbiBwcm92aWRlLikgVGhpcyAKPj4gd2Fz
dGVzIGVuZXJneSB0byBwaHlzaWNhbGx5IHNoaXAgdGhpbmdzIGJhY2ssIGNhdXNlcyBhIHN0YWNr
IG9mIAo+PiB3b3JraW5nIGl0ZW1zIHRoYXQgbm93IGdvIHRvIGV3YXN0ZSwgZXRjLgo+PiAKPj4g
SXQncyByZWFsbHkgb24gbmV0d29yayBvcGVyYXRvcnMsIHN1cHBsaWVycyBhbmQgZGV2aWNlIG1m
Z3MgdG8gZ2V0IAo+PiBhaGVhZCBvZiB0aGlzIHllYXJzIGJlZm9yZSBjb25zdW1lcnMgZ2V0IHRo
ZWlyIHN0dWZmLgo+IAo+IAlbU01dIEFzIG11Y2ggYXMgSSBsaWtlIHRvIHRpbmtlciwgSSBhZ3Jl
ZSB3aXRoIHlvdSB0byBtYWtlIGFuIGltcGFjdCwKPiBkb2luZyB0aGlzIG9uZSBuZXR3b3JrIGF0
IGEgdGltZSBzY2FsZWQgcG9vcmx5LCBhbmQgYSBqb2luZWQgZWZmb3J0Cj4gc2VlbXMgd2F5IG1v
cmUgZWZmZWN0aXZlIGFuZCB5ZXMgdGhhdCBiZXR0ZXIgc3RhcnRlZCB5ZXN0ZXJkYXkgdGhhbgo+
IHRvZGF5IDspCj4gCj4gCj4+IAo+PiBBcyBhIHNpZGUgbm90ZSwgbWFueSBkZXZpY2VzIHNlbGVj
dCB0aGVpciBXaUZpIGNoYW5zcGVjIChBUCBjaGFubmVsKykgCj4+IGJhc2VkIG9uIHRoZSBzdHJv
bmdlc3QgUlNTSS4gVGhlIG5ldHdvcmsgcGF0aHMgc2hvdWxkIGJlIGJhc2VkIG9uIEtQSXMgCj4+
IGxpa2UgbG93IGxhdGVuY3kuIFN0cm9uZyBzaWduYWwganVzdCBtZWFucyBhbiBBUCBpcyB5ZWxs
aW5nIHRvIGxvdWRseSAKPj4gYW5kIGludGVyZmVyaW5nIHdpdGggdGhlIG5laWdoYm9ycy4gVHJ5
IHRoZSBvcHRpbWFsIEFQIGNoYW5zcGVjIHRoYXQgCj4+IGhhcyAxMGRCIHNlcGFyYXRpb24gcGVy
IHNwYXRpYWwgZGltZW5zaW9uIGFuZCB0aGUgd2hvbGUgYXBhcnRtZW50IAo+PiBjb21wbGV4IHdv
dWxkIGJlIGJldHRlciBmb3IgaXQuCj4gCj4gCVtTTV0gU2lkZW5vdGUsIHdpdGggRFNMIElTUCBh
cmUgYWN0aXZlbHkgb3B0aW1pemluZyB0aGUgcGVyIGxpbmsKPiB0cmFuc21pdCBwb3dlciBpbiBi
b3RoIGRpcmVjdGlvbnMuIFRoZXkgc2VlbSB0byBkbyB0aGlzIHBhcnRpYWxseSB0bwo+IHNhdmUg
ZW5lcmd5L2Nvc3QgYW5kIHBhcnRpYWxseSB0byBvcHRpbWl6ZSBncm91cCB0cmFuc21pc3Npb24g
cmF0ZXMuCj4gRXZlciBzaW5jZSB2ZWN0b3Jpbmcgd2FzIGludHJvZHVjZWQgdG8gZGVhbCB3aXRo
IGNyb3NzdGFsayB0aGUgc2lnbmFsCj4gZmF0ZSBvZiBhbGwgbGlua3MgY29ubmVjdGVkIHRvIGEg
RFNMQU0gYWdhcmUgYSBwYXJ0aWFsIGNvbW1vbiBmYXRlLiBJbgo+IHRoZSBEU0xBTSB0byBDUEUg
ZGlyZWN0aW9uIHRoZSBEU0xBTSB3aWxsICJwcmUtZGlzdG9ydCIgZWFjaCBsaW5lcwo+IHNpZ25h
bCBkeW5hbWljYWxseSBzbyB0aGF0IGFmdGVyIHRoZSB1bmF2b2lkYWJsZSBjcm9zc3RhbGsgaW50
ZXJhY3Rpb24KPiBiZXR3ZWVuIHRoZSBsaW5lcyB0aGUgcmVzdWx0aW5nICJwdWxzZSBzaGFwZXMi
IGFyZSBjbGVhbihlcikgYWdhaW4KPiB3aGVuIHRoZXkgcmVhY2ggdGhlIENQRSAoSSBhbSBzaW1w
bGlmeWluZyBidXQgdGhlIHByaW5jaXBsZSBob2xkcykuIEluCj4gQ1BFIHRvIERTTEFNIGRpcmVj
dGlvbiB0aGF0IGlzIG5vdCBwb3NzaWJsZSAoc2luY2UgdGhlcmUgaXMgbm8gZW50aXR5Cj4gc2Vl
aW5nIGFsbCBjb25jdXJyZW50IHRyYW5zbWlzc2lvbnMgYW5kIGhlbmNlIG5vIHBvc3NpYmlsaXR5
IHRvCj4gY2FsY3VsYXRlIG9yIGFwcGx5IHRoZSBwcmUtZGlzdG9ydGlvbiwgc28gdGhlIG1ldGhv
ZCBvZiBjaG9pY2UgaXMgdG8KPiBzaW1wbHkgdHJ5IHRvIGRlY29kZSBhbGwgbGluZXMgdG9nZXRo
ZXIsIGFuZCB0byBoZWxwIHdpdGggdGhhdCBDUEUKPiB0cmFuc21pdCBwb3dlciBzZWVzIHRvIGJl
IGFkanVzdGVkIHRoYXQgc2lnbmFsIGxldmVsIGF0IHRoZSBEU0xBTSBpcwo+IGVxdWFsaXplZC4g
KEZvciB2ZXJ5IHNob3J0IGxpbmtzIHRoYXQgb2Z0ZW4gcmVzdWx0cyBpbiBsZXNzIHRoYW4KPiBt
YXhpbWFsbHkgcG9zc2libGUgY2FwYWNpdHksIGJ1dCBvdmVyIHRoZSB3aG9sZSBzZXQgb2YgbGlu
a3MgdGhhdAo+IG1ldGhvZCBzZWVtcyB0byBpbmNyZWFzZSB0b3RhbCBjYXBhY2l0eSkuIEkgd291
bGQgZ3Vlc3MgaW4gdGhlb3J5Cj4gdGhlc2UgbWV0aG9kcyBhcmUgYWxzbyBhcHBsaWVkIG9uIFJG
IGxpbmtzIChleGNlcHQgUkYgd2l0aCBpdHMgM0QKPiBwcm9wYWdhdGlvbiBpcyBwcm9iYWJseSB3
YXkgbW9yZSBjaGFsbGVuZ2luZykuCj4gCj4gCj4gCj4+IAo+PiBXZSdyZSBzbyBmb2N1c2VkIG9u
IGJ1ZmZlciBibG9hdCB3ZSdyZSBpZ25vcmluZyBldmVyeXRoaW5nIGVsc2Ugd2hlcmUgCj4+IGlu
Y3JlbWVudGFsIGVuZ2luZWVyaW5nIGhhcyBsZWQgdG8gcG9vciBwcm9kdWN0cyAmIG9mZmVyaW5n
cy4KPj4gCj4+IFtyam1jbWFob25Acnl6ZW4zOTUwIGlwZXJmMi1jb2RlXSQgaXBlcmYgLWMgMTky
LjE2OC4xLjcyIC1pIDEgLWUgCj4+IC0tYm91bmNlYmFjayAtLXRyaXAtdGltZXMKPj4gLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+
IENsaWVudCBjb25uZWN0aW5nIHRvIDE5Mi4xNjguMS43MiwgVENQIHBvcnQgNTAwMSB3aXRoIHBp
ZCAzMTIzODE0ICgxIAo+PiBmbG93cykKPj4gV3JpdGUgYnVmZmVyIHNpemU6ICAxMDAgQnl0ZQo+
PiBCdXJzdGluZzogIDEwMCBCeXRlIHdyaXRlcyAxMCB0aW1lcyBldmVyeSAxLjAwIHNlY29uZChz
KQo+PiBCb3VuY2UtYmFjayB0ZXN0IChzaXplPSAxMDAgQnl0ZSkgKHNlcnZlciBob2xkIHJlcT0w
IHVzZWNzICYgCj4+IHRjcF9xdWlja2FjaykKPj4gVE9TIHNldCB0byAweDAgYW5kIG5vZGVsYXkg
KE5hZ2xlIG9mZikKPj4gVENQIHdpbmRvdyBzaXplOiAxNi4wIEtCeXRlIChkZWZhdWx0KQo+PiBF
dmVudCBiYXNlZCB3cml0ZXMgKHBlbmRpbmcgcXVldWUgd2F0ZXJtYXJrIGF0IDE2Mzg0IGJ5dGVz
KQo+PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPj4gWyAgMV0gbG9jYWwgMTkyLjE2OC4xLjY5JWVucDRzMCBwb3J0IDQxMzM2IGNv
bm5lY3RlZCB3aXRoIDE5Mi4xNjguMS43MiAKPj4gcG9ydCA1MDAxIChwcmVmZXRjaD0xNjM4NCkg
KGJiIHcvcXVpY2thY2sgbGVuL2hvbGQ9MTAwLzApICh0cmlwLXRpbWVzKSAKPj4gKHNvY2s9Mykg
KGljd25kL21zcy9pcnR0PTE0LzE0NDgvMjg0KSAoY3Q9MC4zMyBtcykgb24gMjAyMy0wMy0xMiAK
Pj4gMTQ6MDE6MjQuODIwIChQRFQpCj4+IFsgSURdIEludGVydmFsICAgICAgICBUcmFuc2ZlciAg
ICBCYW5kd2lkdGggICAgICAgICBCQiAKPj4gY250PWF2Zy9taW4vbWF4L3N0ZGV2ICAgICAgICAg
UnRyeSAgQ3duZC9SVFQgICAgUlBTCj4+IFsgIDFdIDAuMDAtMS4wMCBzZWMgIDEuOTUgS0J5dGVz
ICAxNi4wIEtiaXRzL3NlYyAgICAKPj4gMTA9MC4zMTEvMC4yMDkvMC43NTUvMC4xNTkgbXMgICAg
MCAgIDE0Sy8yMDIgdXMgICAgMzIyMCBycHMKPj4gWyAgMV0gMS4wMC0yLjAwIHNlYyAgMS45NSBL
Qnl0ZXMgIDE2LjAgS2JpdHMvc2VjICAgIAo+PiAxMD0wLjI1NC8wLjE4MC8wLjMzNS8wLjA1MSBt
cyAgICAwICAgMTRLLzIxMCB1cyAgICAzOTM0IHJwcwo+PiBbICAxXSAyLjAwLTMuMDAgc2VjICAx
Ljk1IEtCeXRlcyAgMTYuMCBLYml0cy9zZWMgICAgCj4+IDEwPTAuMjY2LzAuMTY4LzAuNDY4LzAu
MDg4IG1zICAgIDAgICAxNEsvMjEwIHVzICAgIDM3NTQgcnBzCj4+IFsgIDFdIDMuMDAtNC4wMCBz
ZWMgIDEuOTUgS0J5dGVzICAxNi4wIEtiaXRzL3NlYyAgICAKPj4gMTA9MC4yOTQvMC4xODQvMC40
NDIvMC4wNzggbXMgICAgMCAgIDE0Sy8yMzMgdXMgICAgMzM5NiBycHMKPj4gWyAgMV0gNC4wMC01
LjAwIHNlYyAgMS45NSBLQnl0ZXMgIDE2LjAgS2JpdHMvc2VjICAgIAo+PiAxMD0wLjI2My8wLjE1
MC8wLjQyNy8wLjA3NyBtcyAgICAwICAgMTRLLzIxNSB1cyAgICAzODAyIHJwcwo+PiBbICAxXSA1
LjAwLTYuMDAgc2VjICAxLjk1IEtCeXRlcyAgMTYuMCBLYml0cy9zZWMgICAgCj4+IDEwPTAuMzI1
LzAuMjM3LzAuNDA5LzAuMDU2IG1zICAgIDAgICAxNEsvMjU4IHVzICAgIDMwNzcgcnBzCj4+IFsg
IDFdIDYuMDAtNy4wMCBzZWMgIDEuOTUgS0J5dGVzICAxNi4wIEtiaXRzL3NlYyAgICAKPj4gMTA9
MC4yNTkvMC4xNjUvMC40MTAvMC4wNzcgbXMgICAgMCAgIDE0Sy8yMTkgdXMgICAgMzg1NyBycHMK
Pj4gWyAgMV0gNy4wMC04LjAwIHNlYyAgMS45NSBLQnl0ZXMgIDE2LjAgS2JpdHMvc2VjICAgIAo+
PiAxMD0wLjI3Ny8wLjE5My8wLjQxNS8wLjA2OCBtcyAgICAwICAgMTRLLzIyNCB1cyAgICAzNjA4
IHJwcwo+PiBbICAxXSA4LjAwLTkuMDAgc2VjICAxLjk1IEtCeXRlcyAgMTYuMCBLYml0cy9zZWMg
ICAgCj4+IDEwPTAuMjkyLzAuMjA2LzAuNDY1LzAuMDcyIG1zICAgIDAgICAxNEsvMjMxIHVzICAg
IDM0MjAgcnBzCj4+IFsgIDFdIDkuMDAtMTAuMDAgc2VjICAxLjk1IEtCeXRlcyAgMTYuMCBLYml0
cy9zZWMgICAgCj4+IDEwPTAuMjU2LzAuMTU3LzAuNDM5LzAuMDgyIG1zICAgIDAgICAxNEsvMjEx
IHVzICAgIDM5MDggcnBzCj4+IFsgIDFdIDAuMDAtMTAuMDEgc2VjICAxOS41IEtCeXRlcyAgMTYu
MCBLYml0cy9zZWMgICAgCj4+IDEwMD0wLjI4MC8wLjE1MC8wLjc1NS8wLjA4NSBtcyAgICAwICAg
MTRLLzEwMzMgdXMgICAgMzU3MyBycHMKPj4gWyAgMV0gMC4wMC0xMC4wMSBzZWMgIE9XRCBEZWxh
eXMgKG1zKSBDbnQ9MTAwIAo+PiBUbz0wLjE2OS8wLjA3NC8wLjMxOC8wLjA1NiBGcm9tPTAuMTA1
LzAuMDU1LzAuMTYyLzAuMDI0IAo+PiBBc3ltbWV0cnk9MC4wNjUvMC4wMDAvMC4xNzIvMC4wNDkg
ICAgMzU3MyBycHMKPj4gWyAgMV0gMC4wMC0xMC4wMSBzZWMgQkI4KGYpLVBERjogCj4+IGJpbih3
PTEwMHVzKTpjbnQoMTAwKT0yOjE0LDM6NTcsNDoyMCw1OjgsODoxIAo+PiAoNS4wMC85NS4wMC85
OS43JT0yLzUvOCxPdXRsaWVycz0wLG9ibC9vYnU9MC8wKQo+PiAKPj4gCj4+IEJvYgo+Pj4gRGF2
ZSwKPj4+IHlvdXIgcHJlc2VudGF0aW9uIHdhcyBhd2Vzb21lLCBJIGZ1bGx5IGFncmVlIHdpdGgg
eW91IDspLiBJIHZlcnkgbXVjaAo+Pj4gbGlrZWQgeW91ciBwcmFjdGljYWwgZnVubmVsIGRlbW9u
c3RyYXRpb24gd2hpY2ggd2FzIGJvaWxlZCBkb3duIHRvIAo+Pj4gdGhlCj4+PiBiYXJlIG1pbmlt
dW0gKEkgb25seSBwYXJ0bHkgYXNrZWQgbXlzZWxmLCB3aWxsIHRoZSBsaXF1aWQgc3BpbGwgaW4g
aW4KPj4+IHlvdXIgbGFwdG9wcyBrZXlib2FyZCwgYW5kIGlmIHNvIGlzIGl0IHdhdGVyLXByb29m
LCBidXQgeW91IGNsZWFybHkKPj4+IGhhZCByZWhlYXJzZWQvdHJpZWQgdGhhdCBiZWZvcmUpLgo+
Pj4gQlRXLCBJIGFsd2F5cyBoYXZlIHRvIHRoaW5rIG9mIHRoaXMKPj4+IGgrK3BzOi8vd3d3Lnlv
dXR1YmUuY29tL3dhdGNoP3Y9Ujd5ZklTbEdMTlUgc29tZWhvdyB3aGVuIHlvdSBwcmVzZW50Cj4+
PiBsaXZlIGZyb20gdGhlIG1hcmluYSA7KQo+Pj4gSSBhbSBzdGlsbCBub3QgdGhyb3VnaCB3YXRj
aGluZyBhbGwgb2YgdGhlIHByZXNlbnRhdGlvbnMgYW5kIHBhbmVscywKPj4+IGJ1dCBjYW4gYWxy
ZWFkeSBzYXksIHRlYW0gTDRTIGNvbnRpbnVlcyB0byBvdmVyLXByb21pc2UgYW5kCj4+PiB1bmRl
ci1kZWxpdmVyLCBidXQgS29lbidzIHByZXNlbnRhdGlvbiBpdHNlbGYgd2FzIGRvbmUgd2VsbCBh
bmQgbWlnaHQKPj4+IChzYWRseSkgY29udmluY2UgcGVvcGxlIHRvIGJ1eS1pbiBpbnRvIEw0KFMp
ID0gMkwyTCA9IHRvbyBsaXR0bGUsIHRvbwo+Pj4gbGF0ZS4KPj4+IFN0dWFydCdzIFJQTSBwcmVz
ZW50YXRpb24gd2FzIGdyZWF0LCBtYWtpbmcgYSBjb252aW5jaW5nIHBvaW50Lgo+Pj4gKEV4Y2Vw
dCBmb3IgcGl0Y2hpbmcgTDRTIGFuZCBMTEQgYXMgInNvbHV0aW9ucyIsIEkgd2lsbCBhY2NlcHQg
dGhlbSAKPj4+IGFzCj4+PiBhIHN0ZXAgaW4gdGhlIHJpZ2h0IGRpcmVjdGlvbiwgYnV0IHdoeSBu
b3QgZ28gaW4gYWxsIHRoZSB3YXkgYW5kCj4+PiBlbWJyYWNlIHByb3BlciBzY2hlZHVsaW5nPykK
Pj4+IEluIGRldGFpbCB0aG91Z2gsIEkgYW0gbm90IGZ1bGx5IGNvbnZpbmNlZCBhYm91dCB0aGUg
ZGVjaXNpb24gb2YKPj4+IHRha2luZyB0aGUgaW52ZXJzZSBvZiBkZWxheSBpbmNyZWFzZSBhcyBz
aW5ndWxhciBtZWFzdXJlIGhlcmUgYXMgSQo+Pj4gY29uc2lkZXIgdGhhdCBhcyBhIGJpdCBvZiBh
IHNxdWFuZGVyZWQgb3Bwb3J0dW5pdHkgYXQgcHVibGljCj4+PiBvdXRyZWFjaC9lZHVjYXRpb24g
YW5kIGFzIGNvbXBhcmluZyBpZGxlIGFuZCB3b3JraW5nIFJQTSBpcwo+Pj4gbm9uLWludHVpdGl2
ZSwgd2hpbGUgaWRsZSBhbmQgd29ya2luZyBSVFQgY2FuIGltbWVkaWF0ZWx5IHN1YnRyYWN0ZWQK
Pj4+IHRvIHNlZSB0aGUgZXh0ZW50IG9mIHRoZSBxdWV1ZWluZyBkYW1hZ2UgaW4gYWN0aW9uYWJs
ZSB0ZXJtcy4KPj4+IFRyeSB0aGUgc2FtZSB3aXRoIFJQTSB2YWx1ZXM6Cj4+PiAxMjMtMTIzNDU2
Nzp+IHVzZXIkIG5ldHdvcmtRdWFsaXR5IC12Cj4+PiA9PT09IFNVTU1BUlkgPT09PQo+Pj4gVXBs
b2FkIGNhcGFjaXR5OiAyMi4yMDggTWJwcwo+Pj4gRG93bmxvYWQgY2FwYWNpdHk6IDg4LjA1NCBN
YnBzCj4+PiBVcGxvYWQgZmxvd3M6IDEyCj4+PiBEb3dubG9hZCBmbG93czogMTIKPj4+IFJlc3Bv
bnNpdmVuZXNzOiBIaWdoICgyNjIyIFJQTSkKPj4+IEJhc2UgUlRUOiAxOAo+Pj4gU3RhcnQ6IDMv
MTIvMjMsIDIxOjAwOjU4Cj4+PiBFbmQ6IDMvMTIvMjMsIDIxOjAxOjA4Cj4+PiBPUyBWZXJzaW9u
OiBWZXJzaW9uIDEyLjYuMyAoQnVpbGQgMjFHNDE5KQo+Pj4gaGVyZSB3ZSBjYW4gZGl2aWRlIDYw
IFtzZWMvbWludXRlXSAqIDEwMDAgW21zL3NlY10gYnkgdGhlIFJQTSBbMS9taW5dCj4+PiB0byBn
ZXQ6IDYwMDAwLzI2MjIgPSAyMi44OCBtcyBsb2FkZWQgZGVsYXkgYW5kIHN1YnRyYWN0IHRoZSBi
YXNlIFJUVAo+Pj4gb2YgMTggZm9yIDYwMDAwLzI2MjIgLSAxOCA9IDQuODggfjVtcyBvZiBsb2Fk
ZWQgZGVsYXkgd2hpY2ggaXMgYQo+Pj4gdXNlZnVsIHF1YW50aXR5IHdoZW4gbWFuYWdpbmcgYSBk
ZWxheSBidWRnZXQgKHRoaXMgdGVzdCB3YXMgcGVyZm9ybWVkCj4+PiBvdmVyIHdpcmVkIGV0aGVy
bmV0IHdpdGggY29tcGV0ZW50IEFRTSBhbmQgdHJhZmZpYyBzaGFwaW5nIG9uIHRoZQo+Pj4gbGlu
aywgc28gbm8gc3VycHJpc2UgYWJvdXQgdGhlIG91dGNvbWUgdGhlcmUpLiBMZXQncyBsb29rIGF0
IHRoZQo+Pj4gcmV2ZXJzZSBhbmQgY29udmVydCB0aGUgYmFzZSBSVFQgaW50byBhIGJhc2UgUlBN
IHNjb3JlIGluc3RlYWQ6Cj4+PiA2MDAwLzE4ID0gMzMzIHJwbSwgd2hhdCBleGFjdGx5IGRvZXMg
dGhlIGRlbHRhIFJQTSBvZiAyNjIyLTMzMyAKPj4+ID1wc3VlZG8KPj4+IDIyODlycG0gbm93IHRl
bGwgdXMgYWJvdXQgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiBpZGxlIGFuZCB3b3JraW5nCj4+PiBj
b25kaXRpb25zPyBbV2VsbCwgc2luY2UgY29udmVyc2lvbiBpcyBub3Qgd2l0Y2hjcmFmdCwgSSB3
aWxsIGJlIGZpbmUKPj4+IGFzIHdpbGwgb3RoZXIgaW50ZXJlc3RlZCBpbiBhY3R1YWwgZXZva2Vk
IGRlbGF5LCBidXQgd2UgY291bGQgaGF2ZQo+Pj4gZ290dGVuIGEgYmV0dGVyIG1lYXN1cmUqXQo+
Pj4gQW5kIGFsbCBmb3IgdGhlIHNvbWV3aGF0IHVuaGVscGZ1bCBjYXIgYW5hbG9neS4uLiAoaXQg
aXMgbm90IHRoYXQgZm9yCj4+PiBpbnRlcm5hbCBjb21idXN0aW9uIGVuZ2luZXMgYmlnZ2VyIGlz
IG5lY2Vzc2FyaWx5IGJldHRlciBmb3IgUlBNLAo+Pj4gZWl0aGVyIGZvciB0b3JxdWUgb3IgZnVl
bCBlZmZpY2llbmN5KS4KPj4+IEkgZ3Vlc3MgdGhhdCBzaGlwIGhhcyBzYWlsZWQgdGhvdWdoIGFu
ZCBSUE0gaXQgaXMKPj4+ICopIFN0dWFydCBub3RlcyB0aGF0IG1pbGxpc2Vjb25kcyBhbmQgSGVy
dHogc291bmQgdG8gc2NpZW5jeSwgYnV0IAo+Pj4gdGhleQo+Pj4gY291bGQgc2ltcGx5IGhhdmUg
Z2l2ZW4gdGhlIGRlbGF5IGluY3JlYXNlIGluIG1pbGxpc2Vjb25kcyBhIAo+Pj4gZmFuY2llcnBz
dWVkbwo+Pj4gbmFtZSB0byBzb2x2ZSB0aGF0IHNwZWNpZmljIHByb2JsZW0uLi4KPj4+PiBPbiBN
YXIgMTIsIDIwMjMsIGF0IDIwOjMxLCBEYXZlIFRhaHQgdmlhIFJwbSAKPj4+PiA8cnBtQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldD4gd3JvdGU6Cj4+Pj4gaHR0cHM6Ly93d3cucmVkZGl0LmNvbS9yL0hv
bWVOZXR3b3JraW5nL2NvbW1lbnRzLzExcG1jOWEvY29tbWVudC9qYnlwajB6Lz9jb250ZXh0PTMK
Pj4+PiAtLQo+Pj4+IENvbWUgSGVja2xlIE1hciA2LTkgYXQ6IGh0dHBzOi8vd3d3LnVuZGVyc3Rh
bmRpbmdsYXRlbmN5LmNvbS8KPj4+PiBEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwo+Pj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gUnBt
IG1haWxpbmcgbGlzdAo+Pj4+IFJwbUBsaXN0cy5idWZmZXJibG9hdC5uZXQKPj4+PiBodHRwczov
L2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9ycG0KPj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBScG0gbWFpbGluZyBsaXN0Cj4+PiBS
cG1AbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4+PiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dC9saXN0aW5mby9ycG0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6
Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

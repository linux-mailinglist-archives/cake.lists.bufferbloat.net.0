Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EE82A43A5
	for <lists+cake@lfdr.de>; Tue,  3 Nov 2020 12:01:03 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 53E2F3CB38;
	Tue,  3 Nov 2020 06:01:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1604401262;
	bh=f976TX4doasCAtOJqqq4TQvaWw93MO6/YFWxTFSK5tc=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=fyKwo8b5XCJk4OkvXsDBrPuEFvux5R5nVYU6asGFd2rkLh+RwLFVycDFTYoC2blLx
	 qhyAcWvrPAiEQiT6NPatboDg/aZqT7TeYQQfqpPsaq9dXH1LO5FsfYDeT9JLLPZIgP
	 ppYFKnxgud490vtYuL5WeR2eJ1rdd+49laP+cEp8hiADlawNPes3jeKBiSqmWCiubP
	 iSo6K8M8pB2sVgN+zQfzmJxksZRLhZ6gtxbyrn724E81twPgkekjywKsPlqdzbw51Q
	 qoDk6DmnB0Vf8kIMb7TOzsuEFoMZUVYWmoKjcx7+1MzzbAlwfIkJ3pWW+REbps75Vs
	 u/zETDEYJzzEg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3BF393B29D
 for <cake@lists.bufferbloat.net>; Tue,  3 Nov 2020 06:01:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1604401257; bh=/Lk/s30gedKMSx9yOTu2H1QrZ+9qJuylaecuFFORt2w=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=m5v+3cbYewHuZQTe90W2w/lWACq5s5VznEngr6LanlGzCxeU4+n+L//pmIdG7xmnJ
 IDciDzY3HJSGLB50Mb0YMXbtHjcWczWGfQADY76qmmkq9vHBfYmiZmtVIU3uhrZvy8
 IrWG8dfUVe24JqnLFX197j3Mrnp+JFfL1IPG5ny0XnbUOT8wkJpEIIxdUKcwhrxaoV
 BtzL8RzyQro8/t9I3XrGjKk7lFraLQ3cfba/YuzKyCnM3FfN/9zZtlHff+r1zLuZxD
 XEVT+z4Bpyv8ceWDcXHylElw8BzOIm38YtDlGXo+ohM5XnMfqZO5C+fvZudvJDg5uI
 YCg576wVQP8NQ==
To: Dean Scarff <dos@scarff.id.au>, cake@lists.bufferbloat.net
In-Reply-To: <e68ac9a6a490fcefb10383342d9c981a@scarff.id.au>
References: <202fa41a446859d714728d90e890d1d2@scarff.id.au>
 <87d00wkk9f.fsf@toke.dk> <e68ac9a6a490fcefb10383342d9c981a@scarff.id.au>
Date: Tue, 03 Nov 2020 12:00:55 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87k0v2k8m0.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] NLA_F_NESTED is missing
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGVhbiBTY2FyZmYgPGRvc0BzY2FyZmYuaWQuYXU+IHdyaXRlczoKCj4gIE9uIE1vbiwgMDIgTm92
IDIwMjAgMTM6Mzc6MDAgKzAxMDAsIFRva2Ugd3JvdGU6Cj4+IERlYW4gU2NhcmZmIDxkb3NAc2Nh
cmZmLmlkLmF1PiB3cml0ZXM6Cj4+Cj4+PiAgSGksCj4+Pgo+Pj4gIEkndmUgYmVlbiBoYXBwaWx5
IHJ1bm5pbmcgdGhlIG91dC1vZi10cmVlIHNjaF9jYWtlIG9uIG15IFJhc3BiZXJyeSAKPj4+IFBp
Cj4+PiAgc2luY2UgMjAxNS4gIEhvd2V2ZXIsIEkgcmVjZW50bHkgdXBncmFkZWQgbXkga2VybmVs
ICh0byA1LjQuNzIgZnJvbQo+Pj4gIFJhc3BiaWFuJ3MgcmFzcGJlcnJ5cGkta2VybmVsIDEuMjAy
MDEwMjItMSksIHdoaWNoIGNvbWVzIHdpdGggdGhlCj4+PiAgc2NoX2Nha2UgaW4gbWFpbmxpbmUu
ICBOb3csIHdoZW4gcnVubmluZzoKPj4+Cj4+PiAgICBzdWRvIC9zYmluL3RjIHFkaXNjIGFkZCBk
ZXYgcHBwMCByb290IGNha2UKPj4+Cj4+PiAgSSBnZXQgdGhlIGVycm9yOgo+Pj4KPj4+ICAgIEVy
cm9yOiBOTEFfRl9ORVNURUQgaXMgbWlzc2luZy4KPj4+Cj4+PiAgSSBnZXQgdGhpcyBlcnJvciB3
aXRoIHRoZSBzY2hfY2FrZSBpbiBtYWlubGluZSwgYW5kIGFsc28gd2l0aCAKPj4+IHNjaF9jYWtl
Cj4+PiAgYnVpbHQgb3V0LW9mLXRyZWUuICBJIGFsc28gZ2V0IHRoZSBlcnJvciB3aXRoIGJvdGgg
RGViaWFuJ3MgCj4+PiBpcHJvdXRlMgo+Pj4gIDUuOS4wLTEgKGJ1aWx0IG15c2VsZiB2aWEgZGVi
aWFuL3J1bGVzKSBhbmQgInRjIiBmcm9tIGR0YWh0J3MgCj4+PiB0Yy1hZHYKPj4+ICByZXBvLgo+
Pj4KPj4+ICBBbnkgaWRlYXMgb24gd2hhdCB0aGlzIGVycm9yIG1lYW5zIGFuZCBob3cgdG8gZml4
IGl0Pwo+Pgo+PiBJIGp1c3QgdHJpZWQgYnVpbGRpbmcgYSA1LjQuNzIga2VybmVsIGFuZCBjb3Vs
ZG4ndCByZXByb2R1Y2UgdGhpcywgc28gCj4+IGl0Cj4+IHNlZW1zIGl0J3MgYSBmYXVsdCB3aXRo
IHRoZSByYXNwYmVycnkgcGkga2VybmVsOyBJIGd1ZXNzIG9wZW5pbmcgYSAKPj4gYnVnCj4+IGFn
YWluc3QgdGhhdCB3b3VsZCBiZSB0aGUgd2F5IHRvIGdvPwo+Pgo+PiBBcyBmb3Igd2hhdCdzIGFj
dHVhbGx5IGNhdXNpbmcgdGhpcywgSSBjb3VsZG4ndCBmaW5kIGFueXRoaW5nIG9idmlvdXMKPj4g
dGhhdCB0b3VjaGVzIHRoaXMgY29kZSBpbiB0aGUgcWRpc2MgbGF5ZXI7IGJ1dCBJIHN1cHBvc2Ug
aXQgaGFzCj4+IHNvbWV0aGluZyB0byBkbyB3aXRoIHRoZSBjb3JlIHFkaXNjIG5ldGxpbmsgcGFy
c2luZyBjb2RlPwo+Pgo+PiAtVG9rZQo+Cj4gIFRoYW5rcyBmb3IgdGhlIGRhdGEgcG9pbnQuCj4K
PiAgRm9yIHRoZSByZWNvcmQsIHRoZSByZWxldmFudCBrZXJuZWwgc291cmNlIGlzOgo+ICBodHRw
czovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zdGFibGUvbGludXgu
Z2l0L3RyZWUvaW5jbHVkZS9uZXQvbmV0bGluay5oP2g9djUuNC43MiNuMTE0Mwo+ICBhbmQgdGhl
IFBpIGJyYW5jaDoKPiAgaHR0cHM6Ly9naXRodWIuY29tL3Jhc3BiZXJyeXBpL2xpbnV4L2Jsb2Iv
cmFzcGJlcnJ5cGkta2VybmVsXzEuMjAyMDEwMjItMS9pbmNsdWRlL25ldC9uZXRsaW5rLmgjTDEx
NDMKPgo+ICBJdCBzZWVtcyB2ZXJ5IHVubGlrZWx5IHRoYXQgdGhlIFBpIGZvbGtzIGFyZSBwYXRj
aGluZyB0aGUgbmV0bGluayAKPiAgc3R1ZmYsIHNvIEkgZG9uJ3QgdGhpbmsgSSdsbCBnZXQgbXVj
aCB0cmFjdGlvbiB0aGVyZSB1bmxlc3MgSSBjYW4gY2FsbCAKPiAgb3V0IHNvbWV0aGluZyBzcGVj
aWZpY2FsbHkgd3Jvbmcgd2l0aCB0aGVpciBwYXRjaHNldC4KCldlbGwsIHNvbWV0aGluZyBvZGQg
aXMgY2VydGFpbmx5IGdvaW5nIG9uLiBUaGUgZXJyb3IgbWVzc2FnZSB5b3UncmUKcXVvdGluZyBj
b21lcyBmb3JtIGEgcGFydCBvZiB0aGUgbmV0bGluayBwYXJzaW5nIGNvZGUgKGluIHRoZSBrZXJu
ZWwpCnRoYXQgc2hvdWxkbid0IGV2ZW4gYmUgaGl0IGJ5IHRoZSBxZGlzYyBhZGRpdGlvbjogTkxB
X0ZfTkVTVEVEIHBhcnNpbmcKaXMgb25seSBlbmFibGVkIGluICdzdHJpY3QnIHZhbGlkYXRpb24g
bW9kZSwgd2hpY2ggaXMgbm90IHVzZWQgZm9yCnFkaXNjcy4KClNvIElESywgbWF5YmUgYSBjb21w
aWxlciBpc3N1ZSBvciBhIGJpdCB0aGF0IGdldHMgc2V0IHdyb25nIHNvbWV3aGVyZT8KQmlzZWN0
aW5nIHRoZSBrZXJuZWwgbWF5IGJlIHRoZSBvbmx5IG9wdGlvbiBoZXJlLCBJIGRvbid0IHRoaW5r
IHlvdSdyZQpnb2luZyB0byBmaW5kIGFueXRoaW5nIGluIHVzZXJzcGFjZS4uLgoKLVRva2UKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9647A323AC7
	for <lists+cake@lfdr.de>; Wed, 24 Feb 2021 11:51:53 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A480E3CB42;
	Wed, 24 Feb 2021 05:51:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614163907;
	bh=0oBD9LcN7xcjEsp6OcPXJEUnpH7biqwQe6RnTfeGtec=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=O1zUV7qHaUU911rb22XBKumkcDRTgLqAHCiTfk7sTSTpqgSTNSIl9eShQLPiLmVMc
	 1GX+vT7pEdDngAO2eLL94eneLhHbFo/8BmLQLocITwnnv+yU0r9g8YUK73Cg9ZKc6/
	 GkMpVVnnECtT3exvjIslTl4jjwGoRXzlsgiXJk/g05tTvytLW7q5lqy+du7gimtpPB
	 Shq/oT6Tl4/tkC0jqJpg8eTN5DGMn3uMBxcRfdDsuQQ3cCcu2ZB2Acf0tyUcaKg4hl
	 0kDuDoVQxkWhJIe86RCxmslBtIwSd7deMO1xDMmSOnSEkPyr9+yNOUeUpsESOcJxmw
	 mpSk1vaf1V9ng==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 45ED03B29E;
 Wed, 24 Feb 2021 05:51:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1614163902; bh=rZ4nA6zxu49aL0beyS+czltZ9DrZLzSxH+W1O9Ax8SI=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=JHpfIUYa+ae/D6K4324oqnYKKhaOLUz438OSDwxqPys2jYVkgibm4S9ouMPezt2JB
 T2QU3g9QgxtAFjG5N5A+4cJez1YnYB+pQ1BJWI0neWltjekxjMnX4wxel4DYDI/6Qe
 bbxIb8EnkD73Ew9hvUHobp8yp67RTOew7gu3dVMfzm89ZX8DMCGVqy88fXcqw5eF3V
 WLGQIE9b8aixShIfFfrVDgoTu7OC0+UV7Zgouc95Yro2g30qOpURq6vT1/vksQdkqH
 IlW7rsFZ5no4cajJsmCeEw/lCB6DtLQ4GRLdG/m2rI9+pkj/+fj4yV/aFrkSX4sA/c
 L/whQ7R8k3c8Q==
To: Dave Taht <dave.taht@gmail.com>, Nils Andreas Svee <me@lochnair.net>
In-Reply-To: <CAA93jw4-wspLUfL_ZJW1BN0uWaEqZGMOVnD3Z1jgrKOJ_r8xLw@mail.gmail.com>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
 <CAA93jw4-wspLUfL_ZJW1BN0uWaEqZGMOVnD3Z1jgrKOJ_r8xLw@mail.gmail.com>
Date: Wed, 24 Feb 2021 11:51:42 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87im6h4u2p.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [Bloat] Fwd: [Galene] Dave on bufferbloat and jitter at
 8pm CET Tuesday 23
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
Cc: Cake <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cml0ZXM6Cgo+IHdvdywgdGhhdCBpcyAo
cHJlZGljdGFibHkpIG1pc2VyYWJsZSwgZXZlbiB3aXRoIGNha2UuIFRoZSBvbmx5Cj4gc29sdXRp
b24gdGhhdCBpcyBnb2luZyB0bwo+IHdvcmsgaXMgdG8gc29tZWhvdyBhY3RpdmVseSBtb25pdG9y
IHlvdXIgbGluayBxdWFsaXR5IGFuZCBhZGp1c3QgY2FrZQo+IHRvIHN1aXQuIE9yIHdlIGNhbiBz
dGFydCB0cnlpbmcgdG8gdXNlIGthdGhpZSdzIHBhc3NpdmUgcGluZyB0b29scy4KCldlIGhhdmUg
YSBQaEQgc3R1ZGVudCB3b3JraW5nIG9uIGEgQlBGLWJhc2VkIGltcGxlbWVudGF0aW9uIG9mIHBw
aW5nOgpodHRwczovL2dpdGh1Yi5jb20veGRwLXByb2plY3QvYnBmLWV4YW1wbGVzL3RyZWUvbWFz
dGVyL3BwaW5nCgpNeSBob3BlIGlzIHRoYXQgdGhpcyBjYW4gZW5kIHVwIGJlaW5nIGFuIGFsd2F5
cy1vbiB0aGluZyB0aGF0IHJ1bnMgb24KdGhlIHJvdXRlciBhbmQgY2FuIGJlIHVzZWQgdG8gYWRq
dXN0IHRoZSBDQUtFIHBhcmFtZXRlcnMgYXMgbGF0ZW5jeQpzcGlrZXMuCgpUaGVyZSBhcmUgc3Rp
bGwgYSBmZXcgcm91Z2ggZWRnZXMgb24gdGhlIGltcGxlbWVudGF0aW9uIChtb3N0IG5vdGFibHkK
dGhlIGRhdGEgb3V0cHV0IGNhbiBiZWNvbWUgcXVpdGUgaGlnaCksIGJ1dCBpdCBzaG91bGQgb3Ro
ZXJ3aXNlIGJlCnVzYWJsZSwgc28gZmVlbCBmcmVlIHRvIHRha2UgaXQgZm9yIGEgc3Bpbi4gTmVl
ZHMgYSBmYWlybHkgcmVjZW50IExMVk0KKDEwKyBJSVJDKSB0byBjb21waWxlIHRoZSBCUEYgcGFy
dHMuCgotVG9rZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

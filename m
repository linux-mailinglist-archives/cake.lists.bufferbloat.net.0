Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1808B657A
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:12 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B36693CBD5;
	Mon, 29 Apr 2024 18:18:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429133;
	bh=pA0wxHpsDggy4zMJEBqDSKtnJvJJxklAJbeREoAIxPc=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=JTizSsd+rB9T4ejrq5LQ3guMX+AxI25ern0D56MLw0XAsyCooESzRbRIwxmQXPG5m
	 oBFEhA/Nw3tWkppQYajm3n/VtwReeMBnOJXzusbUClMsAd/XiKklqNmSwCMjAmEE21
	 ImCimVyiVR+I47PHCxb3i4IZZl9qmO1ybsEGpeVJ0hNz04qu31cIlQajqPyjny/Hwo
	 0lPrSlHF5dfea/mXgn8LADwVl1kZJUffnv3I6RIjV3BzvVSK0xH9fSi0t/0YapJx0B
	 xDi2R1nG/j/dxQxLRbgXFMMJ6dJZHDoGjpG2BZ4qfizfunpm7zRWJwjvUlkdO8gp++
	 RkyjUVR/HwO8A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from bobcat.rjmcmahon.com (bobcat.rjmcmahon.com [45.33.58.123])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AAC6E3B29E;
 Thu,  5 Jan 2023 21:33:45 -0500 (EST)
Received: from mail.rjmcmahon.com (bobcat.rjmcmahon.com [45.33.58.123])
 by bobcat.rjmcmahon.com (Postfix) with ESMTPA id C00CF1B258;
 Thu,  5 Jan 2023 18:33:44 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 bobcat.rjmcmahon.com C00CF1B258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rjmcmahon.com;
 s=bobcat; t=1672972424;
 bh=tUJtwFBklIuvQvzTGcr438ustpJUkHFQfEZnRVEVZOc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HXdDy1RK3J798evZUeJhIKs2JBAJwrZu/h4tkTXZkoo0Rq6NKcfun9waxBYc19U4T
 zHV6QM63lJCHr8M0a96wP0/2lZxMUYIHcHnXsMrF4r5czCLlB27Rrb8feOoESvHFaZ
 93nGUs/KjzIPEDXmYqw9VRPjfAonmp1XmIoor/UY=
MIME-Version: 1.0
Date: Thu, 05 Jan 2023 18:33:44 -0800
To: dickroy@alum.mit.edu
In-Reply-To: <251832186E514080B5F1CF858F09A5ED@SRA6>
References: <CAA93jw4sbPeZ42eTLQzPmg_-viBBtbdQogAMgMNndoEHjY5UNA@mail.gmail.com>
 <845161E4-474C-44A9-92D4-1702748A3DA1@jonathanfoulkes.com>
 <eca6010e810ba85e6ab5d420b6c882db@rjmcmahon.com>
 <305203F9-4875-4A7F-939E-B54E64AA060A@gmx.de>
 <251832186E514080B5F1CF858F09A5ED@SRA6>
Message-ID: <81cbc85adad63301d3693d5f8bf435ac@rjmcmahon.com>
X-Sender: rjmcmahon@rjmcmahon.com
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: Re: [Cake] [Starlink] [Bloat] [Rpm] the grinch meets
 cloudflare'schristmas present
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
Cc: 'Rpm' <rpm@lists.bufferbloat.net>, jf@jonathanfoulkes.com,
 'IETF IPPM WG' <ippm@ietf.org>, 'libreqos' <libreqos@lists.bufferbloat.net>,
 'Cake List' <cake@lists.bufferbloat.net>,
 'bloat' <bloat@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiAKPiBfW1JSXSAuLi4gSU1PLCBhIG1vcmUgdXNlZnVsIGNvbmNlcHQgb2YgbGF0ZW5jeSBpcyB0
aGUKPiBleGNlc3MgdHJhbnNpdCB0aW1lIG92ZXIgdGhlIHRoZW9yZXRpY2FsIG1pbmltdW0gdGhh
dCByZXN1bHRzIGZyb20gYWxsCj4gdGhlIHJlYWwtd29ybGQgImludGVycnVwdGlvbnMiIGluIHRo
ZSB0cmFuc21pc3Npb24gcGF0aChzKSBpbmNsdWRpbmcKPiB0aGluZ3MgbGlrZSByZWdlbmVyYXRp
b24gb2Ygb3B0aWNhbCBzaWduYWxzIGluIGxvbmcgY2FibGVzLCBzd2l0Y2hpbmcKPiBvZiBuZXR3
b3JrIGxheWVyIHByb3RvY29scyBpbiBnYXRld2F5cyAoaGVhZGVyIG1hbmlwdWxhdGlvbiBhYm92
ZQo+IGxheWVyIDQpLCBhbmQgeWVzLCBvZiBjb3Vyc2UsIGJ1ZmZlcmluZyBpbiBzd2l0Y2hlcyBh
bmQgcm91dGVycyBfX0oKPiBUaGVzZSBhcmUgdGhpbmdzIHRoYXQgY2FuIGJlICJtaW5pbWl6ZWQi
IGJ5IGFwcHJvcHJpYXRlIHN5c3RlbSBkZXNpZ24KPiAodGhlIHRvcGljIG9mIHRoZXNlIHRocmVh
ZHMgYWN0dWFsbHkhKS4gICIKCkkgdGhpbmsgdGhpcyBpcyB3b3J0aCByZXBlYXRpbmcuIFRoYW5r
cyBmb3IgcG9pbnRpbmcgaXQgb3V0LiAoSSdtIAp3b25kZXJpbmcgaWYgYmV0dGVyIGlubGluZSBu
ZXR3b3JrIHRlbGVtZXRyeSBjYW4gYWxzbyBoZWxwIGZvcndhcmRpbmcgCnBsYW5lcyB1c2UgdGVj
aCBsaWtlIHNlZ21lbnQgcm91dGluZyB0byBieXBhc3MgYW5kIG1pdGlnYXRlIGFueSAKInRlbXBv
cmFsIGludGVycnVwdGlvbnMuIikKCj4gVGhlIG9ubHkgd2F5IHRvIGRlY3JlYXNlIHRyYW5zaXQg
dGltZSBpcyB0byAiZ28gd2lyZWxlc3MgZXZlcnl3aGVyZSwgCj4gZWxpbWluYXRlIG91ciBhdG1v
c3BoZXJlLAo+IGFuZCB0aGVuIGdldCBwaHlzaWNhbGx5IGNsb3NlciB0byBlYWNoIG90aGVyIiEg
X19KIExpa2UgaXQgb3Igbm90LCB3ZQo+IGxpdmUgaW4gYSBMb3JlbnR6LWlhbiBzcGFjZS10aW1l
IGNvbnRpbnV1bSBhbHNvIGtub3cgYXMgIm91ciB3b3JsZCIKClRoaXMgcmVtaW5kcyBtZSBvZiB0
aGUgc3ByZWFkIG5ldHdvcmtzIGFwcHJvYWNoICh3aG8gdGhlbiBnb3QgYmVhdCBvdXQgCmJ5IG1p
Y3Jvd2F2ZSBmb3IgSEZULikKCmh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL1NwcmVhZF9O
ZXR3b3JrcwoKIkFjY29yZGluZyB0byBhIFdJUkVEIGFydGljbGUsIHRoZSBlc3RpbWF0ZWQgcm91
bmR0cmlwIHRpbWUgZm9yIGFuIApvcmRpbmFyeSBjYWJsZSBpcyAxNC41IG1pbGxpc2Vjb25kcywg
Z2l2aW5nIHVzZXJzIG9mIFNwcmVhZCBOZXR3b3JrcyBhIApzbGlnaHQgYWR2YW50YWdlLiBIb3dl
dmVyLCBiZWNhdXNlIGdsYXNzIGhhcyBhIGhpZ2hlciByZWZyYWN0aXZlIGluZGV4IAp0aGFuIGFp
ciAoYWJvdXQgMS41IGNvbXBhcmVkIHRvIGFib3V0IDEpLCB0aGUgcm91bmR0cmlwIHRpbWUgZm9y
IGZpYmVyIApvcHRpYyBjYWJsZSB0cmFuc21pc3Npb24gaXMgNTAlIG1vcmUgdGhhbiB0aGF0IGZv
ciB0cmFuc21pc3Npb24gdGhyb3VnaCAKdGhlIGFpci4gU29tZSBjb21wYW5pZXMsIHN1Y2ggYXMg
TWNLYXkgQnJvdGhlcnMsIE1ldHJvcmVkZSBhbmQgClRyYWRld29yeCwgYXJlIHVzaW5nIGFpci1i
YXNlZCB0cmFuc21pc3Npb24gdG8gb2ZmZXIgbG93ZXIgZXN0aW1hdGVkIApyb3VuZHRyaXAgdGlt
ZXMgKDguMiBtaWxsaXNlY29uZHMgYW5kIDguNSBtaWxsaXNlY29uZHMgcmVzcGVjdGl2ZWx5KSAK
dGhhdCBhcmUgdmVyeSBjbG9zZSB0byB0aGUgdGhlb3JldGljYWwgbWluaW11bSBwb3NzaWJsZSAo
YWJvdXQgNy45LTggCm1pbGxpc2Vjb25kcykuIgoKQm9iCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

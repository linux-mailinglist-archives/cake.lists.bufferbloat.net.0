Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5A542E401
	for <lists+cake@lfdr.de>; Fri, 15 Oct 2021 00:10:26 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 04A2C3CB59;
	Thu, 14 Oct 2021 18:10:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634249425;
	bh=YWmiMblE7mnkPexam4TfbrQffvNfQe8T714SF1K9wew=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=E5/8hZ4N5SK7m9Ioat5o2zBptkrN1QPXgYOL/1Og2SdbMRDn2EE+FEro98oxKhAhY
	 ohtgvP5RABnFRSDKNxBzHbBCoWIUB4i1u09Jeddn7pLQeUP1M65xbvWN53R2eGCrgU
	 o1XZhy3cgZujktXCBtO74hgXkaKAYk2UucpRz3NZqqlwaLKgEjOgMfnunPCtSSMGHK
	 mv2MGokzZVrdZpcIJErERp88cYKTumGqrkjqlRqY9VLP9gY8oM3nQslKrHi4GANpXp
	 x9RrOeCEi42gNDMRzFr7vxp75gWH6YWCQi9yc/Z88xsSIaqai4URgurYuRJ0w+jOfa
	 vbjdfN/fq63zw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 08F863B29E;
 Thu, 14 Oct 2021 18:10:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1634249421; bh=SqTLX3XsNyhgZtcIWdPxBwl6ujMg2mGDxfCFmw3eKqE=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=dw+YZfx+osB6X+3FAP0rddGtIibFumKfa6O1v7P6N5/o3BtOkyg4BJ63hFNECnfGY
 9l97z/ignJ10PZNtUUEYtfGU29UKqz7rV37iNBgXcAywovvwxSn5EC5JKWu35oyp7X
 4GMQLYshyR5CdD7A0T2XdPs/fi9ZNXconOPfmTaCrzXjQKtCt1T91yedQzJG2+b8Iv
 ooiRde5RZ+fSB8OV00rQjzMeerisCs0KymjIaKCiB1YuhgdgZWK7R+rj0WWpE1quOQ
 UcsRJUoc3FFrCRQNv88lMFNFD3fPMRreYGlRniK5gHfbuJgni+ZRXQeXO+YAT+A1ON
 aBJNx8R08QXyQ==
To: Dave Taht <dave.taht@gmail.com>
In-Reply-To: <CAA93jw43kC8a4_8YL3dobgvpkLO5UPbOm8yeFvwhh0dgV9eiuw@mail.gmail.com>
References: <CAA93jw43C7CB-4Jv7h9NvvzjROdO5p2rVbPSZnmSJf0JAaCyaQ@mail.gmail.com>
 <CBBD435B-5A6F-408D-B17C-B28F326B49AC@gmx.de>
 <CAA93jw48afWujaJm8Sn+J-uEHb7iKLx57p7e5d=Qw9QyX=Csqg@mail.gmail.com>
 <87sfx31dt5.fsf@toke.dk>
 <CAA93jw43kC8a4_8YL3dobgvpkLO5UPbOm8yeFvwhh0dgV9eiuw@mail.gmail.com>
Date: Fri, 15 Oct 2021 00:10:20 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87pms71cmr.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [Ecn-sane]  l4s kernel submission
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cml0ZXM6Cgo+IE9uIFRodSwgT2N0IDE0
LCAyMDIxIGF0IDI6NDQgUE0gVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHRva2UuZGs+
IHdyb3RlOgo+Pgo+PiBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+IHdyaXRlczoKPj4K
Pj4gPiB3ZWlyZGx5IGVub3VnaCwgbXkgZ21haWwgYWNjb3VudCBoYXMgbm90IHJlY2VpdmVkIGFu
eXRoaW5nIGZyb20gbmV0ZGV2Cj4+ID4gc2luY2Ugb2N0IDExLgo+Pgo+PiBZb3UncmUgbm90IGFs
b25lIGluIHRoYXQ6Cj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL25ldGRldi8yMDIxMTAxNDEx
MjcxOC42YWVkN2Y0N0BraWNpbnNraS1mZWRvcmEtcGMxYzBoam4uZGhjcC50aGVmYWNlYm9vay5j
b20vVC8jdAo+Cj4gb2suIE9uZSBvZiB0aGVzZSB5ZWFycyBJJ2xsIGdvIGJhY2sgdG8gcnVubmlu
ZyBteSBvd24gZW1haWwgc2VydmVyCj4gZnVsbCB0aW1lLgoKWW91IGNhbiBhbHNvIHN1YnNjcmli
ZSB0byBMaW51eCBsaXN0cyBieSBpbXBvcnRpbmcgdGhlIG1haWxzIGZyb20gTG9yZSwKYXMgb25l
IG9mIHRoZSByZXBsaWVzIGluIHRoZSB0aHJlYWQgYWJvdmUgcG9pbnRlZCBvdXQuIEJlZW4gbWVh
bmluZyB0bwpzd2l0Y2ggdG8gdGhhdCBteXNlbGYsIGJ1dCBoYXZlbid0IGdvdHRlbiBhcm91bmQg
dG8gaXQgeWV0Li4uCgo+PiA+IHllcywgaSB0aGluayBmcV9jb2RlbCB3aWxsIGJlIGJldHRlciwg
YW5kIGV2ZW4gdGhlIHByb3Bvc2VkCj4+ID4gdG9vLXNoYWxsb3cgdGhyZXNob2xkIHdpbGwgbWFr
ZSBmb3IgbGVzcyBvZiBhIGRlbnQgb24gdGhlIGludGVybmV0Lgo+PiA+Cj4+ID4gc3RpbGwuLi4g
SSBkbyB3aXNoIEknZCBzZWVuIHRoaXMgZWFybGllci4KPj4KPj4gRWFybGllcj8gWW91IGZvcndh
cmRlZCB0aGUgcGF0Y2ggaG91cnMgYWZ0ZXIgaXQgd2FzIHBvc3RlZC4uLgo+Cj4gSSBoYXZlIGEg
ZGFpbHkgc2VhcmNoIGZvciBmcV9jb2RlbCwgYnVmZmVyYmxvYXQsIGV0Yy4gSSBoYXZlIG5vdGlj
ZWQKPiBsYXRlbHkgdGhhdCBzb21lIG1haWxpbmcgbGlzdCB0cmFmZmljIGZyb20gdXMgaXMgYmVp
bmcgaW5kZXhlZCBhZ2Fpbi4KPiBJIHdpc2ggSSBrbmV3IHdoeSBvdXIgbGlzdHMgd2VyZSBub3Qg
aW5kZXhlZCBieSBnb29nbGUuCj4KPiBBbnl3YXksIGxhY2tpbmcgYmVpbmcgb24gdGhhdCB0aHJl
YWQsIGl0J3MgY3VycmVudGx5IGltcG9zc2libGUgdG8KPiByZXBseS4KClRoZSBMb3JlIHBhZ2Ug
Y29udGFpbnMgaW5zdHJ1Y3Rpb25zIGZvciB2YXJpb3VzIHdheXMgb2YgcmVwbHlpbmcgZXZlbgp3
aXRob3V0IGhhdmluZyB0aGUgb3JpZ2luYWwgZW1haWwgbWVzc2FnZSBpbiB5b3VyIG1haWxib3gu
IEl0J3MgYXQgdGhlCmJvdHRvbS4uLiAKCj4gVGhhdCBzYWlkLCB0aGUgbDRzIGZxX2NvZGVsIHBh
dGNoIGlzIGludHJpbnNpY2FsbHkgZmFpciwgd2hpY2ggaXMKPiB2YXN0bHkgc3VwZXJpb3IgdG8g
dGhlIGR1YWxwaSBhcHByb2FjaC4KCll1cCwgSSBhZ3JlZSBpdCdzIGJldHRlciwgYnV0IEkgZG9u
J3QgbGlrZSBiYWtpbmcgaW4gdGhlIEVDVCgxKQpzZW1hbnRpY3MgdG8gVUFQSS4gSSBzdWdnZXN0
ZWQgYSBmaWx0ZXItYmFzZWQgYXBwcm9hY2ggd2hpY2ggSSdtCmN1cnJlbnRseSBkaXNjdXNzaW5n
IHdpdGggRXJpYyBvbiB0aGF0IHRocmVhZCBhcyB5b3UgbWlnaHQgaGF2ZSBub3RpY2VkIDopCgot
VG9rZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtl
IG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

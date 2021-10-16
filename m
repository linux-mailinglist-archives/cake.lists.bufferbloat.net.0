Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E9D4304FC
	for <lists+cake@lfdr.de>; Sat, 16 Oct 2021 23:01:31 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 559093CB5B;
	Sat, 16 Oct 2021 17:01:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634418089;
	bh=AwRVyHmD4DabTK++RsDhXoYTpeOjpTmWR1Hn3RsY9/U=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OYB+Y3w5n6yTCJ394NP0BtM41Rpdd8TNYMLkaHYEOZ9v2Xt21lmZy2XyOQTL22ASm
	 vOg3gjzaNvSQyF6wQqavQPrNw9SV6j/TlMVNbKmXN93eKKw5N9Bqx3FjGy0JodzZrw
	 +e/gmgh6XoNtCK6qtxDfY7jwhyN7ZE+TRdrn/WOwDAXszZHp/tfU/D+NtmljepbHe3
	 mX3JglPo1tNO5Zmzj8tvkKZpzYlK/Iyu4pGmzWS9L1z/NTRPPxs8qiP1iGWLVyVaWl
	 pSsrYFNv8+bVVCFP1PrH9VGAqNNyX0wulc2o9/8yxwOe9Bm/J/NyRhvogqSfMLul2h
	 QlOYE7bHLN0BA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com
 [IPv6:2607:f8b0:4864:20::d32])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4DC283B29D;
 Sat, 16 Oct 2021 17:01:28 -0400 (EDT)
Received: by mail-io1-xd32.google.com with SMTP id d125so11820624iof.5;
 Sat, 16 Oct 2021 14:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=sbRH4BtSY+VU3vp25jFTEdzExJeqpsGUHFGo2j65bsE=;
 b=L8zzoFksKBP+agAvJD+LuIO6l8pX0/RUd8grpZCWX/F7QvY/enrV2XGYlwl2KsVyxI
 tzUTL+Abd5h1Nxx+DUX3WTGpzm1WuyU3CHU1xV4OBdhuffd+Yb0Bc29Eyd0xsybJVzn+
 5T7JSRwIZLMY02mDvCTeVPpOMw5E49dQZtwnO+RFe0RXctDNBi/fCilOsDtdGe9audzm
 7ZqXvvr8PlPd+CJppmu7ooorgNCISbr2TW9EDcRXaP9ut0vnm1QuvJfC5oOf0qLb2zAi
 YBtYALQPwGwthJV+X5LIwnv4BO/pyBG03F0QdM1uRYhcjb8aUf2D0DYPmad0d223IfAE
 IRng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sbRH4BtSY+VU3vp25jFTEdzExJeqpsGUHFGo2j65bsE=;
 b=Wt4I64DuigLO05fXCTL1p1guvbvKnjaslbgF2YwsKEzuh6zcUKcMG8vVDGXQyfJ88K
 Edp4L54i6uynB9SUGA/dXoNA5WnJohxTN9ncc3XMd9i9tHM87RsZVhK0aWoUsVqBq6hJ
 6oClunNHFRI1Nw/opm5Yu/o/WXbyVtpfniPQNJDB/sN5VifQS0jkOJ5L8Nsr1olSKABU
 h/rxI9W2A93L0DIrW5J2TMmK+3A31bnCMht+ZyvEUTSOWaAdXqdS9kzSl5CCo0DFLngh
 +PxYhq8MeXF/hRupuqIRhU5fgemVRANlY2kwpT2Y6+4syWEOqy/GxLu2FsGsEPbuoOnI
 blTQ==
X-Gm-Message-State: AOAM531/1HZoNijV7Mjzj0gwJKHJbe8iRxe6fPPkx2VNg4ml6ZEK4MCx
 a1a+aDrGkGKpUwCHaZ/FPiVb1xSOY6cBxFIaywY=
X-Google-Smtp-Source: ABdhPJzGd14FT/F3VCW06hZiuQ2m1awATQPcVpxKD47sPODEiHCeug1vywqqzlVssYVyFYhD6RJZK04Zme72VwNk0Mc=
X-Received: by 2002:a05:6602:3cb:: with SMTP id
 g11mr8917203iov.204.1634418087496; 
 Sat, 16 Oct 2021 14:01:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw43C7CB-4Jv7h9NvvzjROdO5p2rVbPSZnmSJf0JAaCyaQ@mail.gmail.com>
 <CBBD435B-5A6F-408D-B17C-B28F326B49AC@gmx.de>
 <CAA93jw48afWujaJm8Sn+J-uEHb7iKLx57p7e5d=Qw9QyX=Csqg@mail.gmail.com>
 <87sfx31dt5.fsf@toke.dk>
 <CAA93jw43kC8a4_8YL3dobgvpkLO5UPbOm8yeFvwhh0dgV9eiuw@mail.gmail.com>
 <87pms71cmr.fsf@toke.dk>
 <CAA93jw7VVX_6UxyqczSZ3YoDRo9QvRZTqWqY9+0PC=rOB7FjeQ@mail.gmail.com>
In-Reply-To: <CAA93jw7VVX_6UxyqczSZ3YoDRo9QvRZTqWqY9+0PC=rOB7FjeQ@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sat, 16 Oct 2021 14:01:15 -0700
Message-ID: <CAA93jw7kwCc9HmfA7X4BzSCS+9UgngXj31d3gb7Aw=XQtQHZMA@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

QW4gb3BlbiBxdWVzdGlvbiBmb3IgbWU6CgpXaGF0IGhhcHBlbnMgd2hlbiBhIEdTTyBwYWNrZXQg
aXMgbWFya2VkPyBEbyBhbGwgdGhlIHBhY2tldHMgZ2V0IHRoZQptYXJraW5nLCBvciBqdXN0IHRo
ZSBmaXJzdD8KCk9uIFRodSwgT2N0IDE0LCAyMDIxIGF0IDM6MTcgUE0gRGF2ZSBUYWh0IDxkYXZl
LnRhaHRAZ21haWwuY29tPiB3cm90ZToKPgo+IE9uIFRodSwgT2N0IDE0LCAyMDIxIGF0IDM6MTAg
UE0gVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHRva2UuZGs+IHdyb3RlOgo+ID4KPiA+
IERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JpdGVzOgo+ID4KPiA+ID4gT24gVGh1
LCBPY3QgMTQsIDIwMjEgYXQgMjo0NCBQTSBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VA
dG9rZS5kaz4gd3JvdGU6Cj4gPiA+Pgo+ID4gPj4gRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwu
Y29tPiB3cml0ZXM6Cj4gPiA+Pgo+ID4gPj4gPiB3ZWlyZGx5IGVub3VnaCwgbXkgZ21haWwgYWNj
b3VudCBoYXMgbm90IHJlY2VpdmVkIGFueXRoaW5nIGZyb20gbmV0ZGV2Cj4gPiA+PiA+IHNpbmNl
IG9jdCAxMS4KPiA+ID4+Cj4gPiA+PiBZb3UncmUgbm90IGFsb25lIGluIHRoYXQ6Cj4gPiA+PiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvMjAyMTEwMTQxMTI3MTguNmFlZDdmNDdAa2lj
aW5za2ktZmVkb3JhLXBjMWMwaGpuLmRoY3AudGhlZmFjZWJvb2suY29tL1QvI3QKPiA+ID4KPiA+
ID4gb2suIE9uZSBvZiB0aGVzZSB5ZWFycyBJJ2xsIGdvIGJhY2sgdG8gcnVubmluZyBteSBvd24g
ZW1haWwgc2VydmVyCj4gPiA+IGZ1bGwgdGltZS4KPiA+Cj4gPiBZb3UgY2FuIGFsc28gc3Vic2Ny
aWJlIHRvIExpbnV4IGxpc3RzIGJ5IGltcG9ydGluZyB0aGUgbWFpbHMgZnJvbSBMb3JlLAo+ID4g
YXMgb25lIG9mIHRoZSByZXBsaWVzIGluIHRoZSB0aHJlYWQgYWJvdmUgcG9pbnRlZCBvdXQuIEJl
ZW4gbWVhbmluZyB0bwo+ID4gc3dpdGNoIHRvIHRoYXQgbXlzZWxmLCBidXQgaGF2ZW4ndCBnb3R0
ZW4gYXJvdW5kIHRvIGl0IHlldC4uLgo+Cj4gSSBhdHRlbXB0ZWQgdG8gc3Vic2NyaWJlIGFnYWlu
LCBub3RoaW5nIGhhcHBlbmVkLgo+Cj4gZmlndXJpbmcgb3V0IGxvcmUuLi4gaXMgdG9vIG11Y2gg
d29yayBmb3IgdG9kYXkuIEknZCByYXRoZXIgaGFtbWVyCj4gc21hbGwgdGhpbmdzIGludG8gb2Js
aXZpb24gb24gbXkgYm9hdC4KPgo+IHBsZWFzZSBmZWVsIGZyZWUgdG8gcGFzcyBhbG9uZyBteSBj
b21tZW50cyBhbmQgdGhlIHNjZSB0ZWFtcyBmaW5kaW5ncwo+IGludG8gdGhhdCB0aHJlYWQuCj4K
PiA+Cj4gPiA+PiA+IHllcywgaSB0aGluayBmcV9jb2RlbCB3aWxsIGJlIGJldHRlciwgYW5kIGV2
ZW4gdGhlIHByb3Bvc2VkCj4gPiA+PiA+IHRvby1zaGFsbG93IHRocmVzaG9sZCB3aWxsIG1ha2Ug
Zm9yIGxlc3Mgb2YgYSBkZW50IG9uIHRoZSBpbnRlcm5ldC4KPiA+ID4+ID4KPiA+ID4+ID4gc3Rp
bGwuLi4gSSBkbyB3aXNoIEknZCBzZWVuIHRoaXMgZWFybGllci4KPiA+ID4+Cj4gPiA+PiBFYXJs
aWVyPyBZb3UgZm9yd2FyZGVkIHRoZSBwYXRjaCBob3VycyBhZnRlciBpdCB3YXMgcG9zdGVkLi4u
Cj4gPiA+Cj4gPiA+IEkgaGF2ZSBhIGRhaWx5IHNlYXJjaCBmb3IgZnFfY29kZWwsIGJ1ZmZlcmJs
b2F0LCBldGMuIEkgaGF2ZSBub3RpY2VkCj4gPiA+IGxhdGVseSB0aGF0IHNvbWUgbWFpbGluZyBs
aXN0IHRyYWZmaWMgZnJvbSB1cyBpcyBiZWluZyBpbmRleGVkIGFnYWluLgo+ID4gPiBJIHdpc2gg
SSBrbmV3IHdoeSBvdXIgbGlzdHMgd2VyZSBub3QgaW5kZXhlZCBieSBnb29nbGUuCj4gPiA+Cj4g
PiA+IEFueXdheSwgbGFja2luZyBiZWluZyBvbiB0aGF0IHRocmVhZCwgaXQncyBjdXJyZW50bHkg
aW1wb3NzaWJsZSB0bwo+ID4gPiByZXBseS4KPiA+Cj4gPiBUaGUgTG9yZSBwYWdlIGNvbnRhaW5z
IGluc3RydWN0aW9ucyBmb3IgdmFyaW91cyB3YXlzIG9mIHJlcGx5aW5nIGV2ZW4KPiA+IHdpdGhv
dXQgaGF2aW5nIHRoZSBvcmlnaW5hbCBlbWFpbCBtZXNzYWdlIGluIHlvdXIgbWFpbGJveC4gSXQn
cyBhdCB0aGUKPiA+IGJvdHRvbS4uLgo+ID4KPiA+ID4gVGhhdCBzYWlkLCB0aGUgbDRzIGZxX2Nv
ZGVsIHBhdGNoIGlzIGludHJpbnNpY2FsbHkgZmFpciwgd2hpY2ggaXMKPiA+ID4gdmFzdGx5IHN1
cGVyaW9yIHRvIHRoZSBkdWFscGkgYXBwcm9hY2guCj4gPgo+ID4gWXVwLCBJIGFncmVlIGl0J3Mg
YmV0dGVyLCBidXQgSSBkb24ndCBsaWtlIGJha2luZyBpbiB0aGUgRUNUKDEpCj4gPiBzZW1hbnRp
Y3MgdG8gVUFQSS4gSSBzdWdnZXN0ZWQgYSBmaWx0ZXItYmFzZWQgYXBwcm9hY2ggd2hpY2ggSSdt
Cj4gPiBjdXJyZW50bHkgZGlzY3Vzc2luZyB3aXRoIEVyaWMgb24gdGhhdCB0aHJlYWQgYXMgeW91
IG1pZ2h0IGhhdmUgbm90aWNlZCA6KQo+ID4KPiA+IC1Ub2tlCj4KPgo+Cj4gLS0KPiBGaXhpbmcg
U3RhcmxpbmsncyBMYXRlbmNpZXM6IGh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9Yzln
TG82WHJ3Z3cKPgo+IERhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCgoKCi0tIApGaXhpbmcg
U3RhcmxpbmsncyBMYXRlbmNpZXM6IGh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9Yzln
TG82WHJ3Z3cKCkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlz
dHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZv
L2Nha2UK

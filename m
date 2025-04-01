Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CE38BA7828D
	for <lists+cake@lfdr.de>; Tue,  1 Apr 2025 21:02:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 81F113CB42;
	Tue,  1 Apr 2025 15:02:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1743534127;
	bh=dQ/xxvUcpZh+D1LQRtS8YBzRfynqXlX6sF4yO9Kt4ZQ=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=ROq/PgWIJw0CqG/tdZ/t8FU2TT0dgQ35pZdxocMyWq5puwOfvzXowzcZQypd+RYEx
	 G8tXdbN1MlEV7zmPVKXhW9k+x24Y7IypI09F4Ibza2Kpv2WxYhYyorJnyuelb4XxDC
	 DxgzdPzkAR4HlgOylh9dL8V9aDAss0CNGyMLSxzEuDlfOe68PGO9FTgvTRa/Ink1yz
	 vCVlC4VFT7NcACRloHDAuirvYGqS+eBnGa0fxHWgkOqRDEsOJXQXyVlYW4g4qdDvhD
	 xNik+V8kwc1froSlhqteNv/FZ4aGttxsUICsGcgEN5WNa3KaWRF0TJM9HTn9FgTgxT
	 zpJNJ0twpsmWw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B765E3CB38
 for <cake@lists.bufferbloat.net>; Tue,  1 Apr 2025 15:02:05 -0400 (EDT)
Received: by mail-pl1-x62c.google.com with SMTP id
 d9443c01a7336-225477548e1so106924115ad.0
 for <cake@lists.bufferbloat.net>; Tue, 01 Apr 2025 12:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20230601.gappssmtp.com; s=20230601; t=1743534125;
 x=1744138925; darn=lists.bufferbloat.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=huHgD3LfYmX8PRgmepMJo+/qRafjiKO3cqT+itHN4sM=;
 b=CtaU2+vTaU2NL2vtEg7tOAuuDGYZTzSKEe7R1yjRvgI1bJBONmPhEex0Xt9DRRSAOL
 cxYQzDEWdZ3eBl3nuhCMD1+KORu6fxYZdfEui3HCpui1iOUFPBuz0wZ1xK3FPqsARkL7
 dC0cBfvJKbMY8HRWDNg0hFOlKzO9GD/52+1fBtToGiRnFgQXpXr2IAjfs07H2OV4VyEY
 2xmRrKZTl6UWmBRn/oc3v2A8Pajz7O3pevpNXQ77B87tBe5wrXCmNDAykNEeFH+6X+zf
 l10BMhmEIEF8hOaCGcMGCUsPCxnQ7khvtT5lrfifWGNXIJJY4Wc3r84MZn0+L8QvByk1
 My/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743534125; x=1744138925;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=huHgD3LfYmX8PRgmepMJo+/qRafjiKO3cqT+itHN4sM=;
 b=wRiz5zO4axdIX7UEVYtBeEddDZ9ITVsSX5S7mPMTJ+17RKjZJjdTsxLAfDyosiFfby
 q1FhQHY72SNbGtjkB2e7toIvIHAwLbPFMNNllxmKRzPPgtzls4NXLipHeGTeOMrQZtBd
 Qf8sOSoJb0EtnUmCGzplfg+arCPnyq/CyUkDsvcWi8HRbFJWvfeZfVdj0np33O9Jh+7S
 Qp2Zcwhcj6MxVanx2N72Altl8uS2rE508rbv8NsANAnfV+qXu/AhwKa3kO2moBWHA9Bq
 EZNgv/+6aYjtl+0+bBfzLdS35r3oI2+SYh5aC8fOEog7jyHgg+R3W2eDFAj1dzXMCGGQ
 sWBg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUqmfAXaT9c1quo/DNTKMThGe5iCVuOjeVd4Z5HEyGjaVd+Jw0CQPkvoULgsOIfuuB1Mbw+@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxwPZFvz33G4rOEW38xCrWjdgQo4d1EuwsLEjbturu+ZEwclk51
 9He+0IFtfZ+E4AaYmQA2jr0FKPPqO+sq8kciDKoWSUD7hMgh+pRbcZuSFvwqyj8=
X-Gm-Gg: ASbGncvjx5PjBg7TjJq+Fcr1zZ5DqyjR+HdsjWOaRkfC8psn0M4IiV4gUXfmCrv8gvq
 VkVvbTYNJSwfD6BYzFBj8sBJPbDk2qqQVgkOfB87+A/Rk1KUQYMKpz7QMWit6MBAw5isiAU0VbQ
 Wx/HGeg9a9B2rMNNBHFg7yN+CLdPVtiZINKobb4GChQR6AfqlFVssfdOg9LEUzx8ctZj7CT6JGv
 s9nQL9PY3mw2fBvx7WRqy17bZo5BzmIugwtsjTA3edGt8fjjKgUjUhW3FAGQL0G9gbJ4MG3rQ+t
 Sgn3OTaREyxNWAmC7DIrYhjfsrvLrW6H5t+ah3JoeZMIUnkkMzCkYn38k710UBrq9ZN/KWhjdh7
 wfW7Fs0qCIWF5noad8+Kl
X-Google-Smtp-Source: AGHT+IGMB5ab1LB3+HvMFI8vsCzArsVS44TEIVyu5eHCnzlSvc1pbNcBDXn+Iws0zwkhvGE7u81xsQ==
X-Received: by 2002:a17:903:11c4:b0:223:2aab:462c with SMTP id
 d9443c01a7336-2292f9622d8mr226799275ad.15.1743534124773; 
 Tue, 01 Apr 2025 12:02:04 -0700 (PDT)
Received: from hermes.local (204-195-96-226.wavecable.com. [204.195.96.226])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2291eee0882sm92532265ad.75.2025.04.01.12.02.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Apr 2025 12:02:04 -0700 (PDT)
Date: Tue, 1 Apr 2025 12:02:02 -0700
To: Frantisek Borsik via Bloat <bloat@lists.bufferbloat.net>
Message-ID: <20250401120202.59173c17@hermes.local>
In-Reply-To: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Cake]
	=?utf-8?q?=5BBloat=5D_In_loving_memory_of_Dave_T=C3=A4ht_?=
	=?utf-8?q?=3C3?=
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
From: Stephen Hemminger via Cake <cake@lists.bufferbloat.net>
Reply-To: Stephen Hemminger <stephen@networkplumber.org>
Cc: codel-wireless@lists.bufferbloat.net,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 cerowrt-commits@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 Network Neutrality is back! =?UTF-8?B?TGV0wrRz?= make the technical aspects
 heard this time! <nnagain@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
 cerowrt-devel@lists.bufferbloat.net, Cake List <cake@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net, cerowrt-users@lists.bufferbloat.net,
 Robert =?UTF-8?B?Q2hhY8Ozbg==?= <robert@libreqos.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVHVlLCAxIEFwciAyMDI1IDE5OjI3OjM2ICswMjAwCkZyYW50aXNlayBCb3JzaWsgdmlhIEJs
b2F0IDxibG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgoKPiBIZWxsbyB0byBhbGws
Cj4gCj4gV2XigJlyZSBkZXZhc3RhdGVkIHRvIGFubm91bmNlIHRoYXQgRGF2ZSBUw6RodCBoYXMg
cGFzc2VkIGF3YXkuCj4gPGh0dHBzOi8vbGlicmVxb3MuaW8vMjAyNS8wNC8wMS9pbi1sb3Zpbmct
bWVtb3J5LW9mLWRhdmUvPgo+IAo+IERhdmUgd2FzIGFuIGFtYXppbmcgbWFuLCBoZWxwaW5nIHRo
ZSB3b3JsZCB3aXRoIEZRLUNvRGVsIGFuZCBDQUtFLCBmaWdodGluZwo+IGJ1ZmZlcmJsb2F0IGFu
ZCB0cnlpbmcgdG8gbWFrZSB0aGUgd29ybGQgYSBiZXR0ZXIgcGxhY2UuIEFsd2F5cyB3aWxsaW5n
IHRvCj4gaGVscCwgYW5kIHdpdGhvdXQgaGltIOKAkyBMaWJyZVFvUyAoYW5kIHRoZSBvdGhlciBR
b0Ugc29sdXRpb25zIG91dCB0aGVyZSkKPiB3b3VsZG7igJl0IGV4aXN0Lgo+IAo+IERhdmUgd2Fz
IGFuIGluc3BpcmF0aW9uLCBhbmQgd2UgYWxsIG1pc3MgaGltLiBXZeKAmXJlIHJlYWNoaW5nIG91
dCB0byBmYW1pbHkKPiBhbmQgY2xvc2UgZnJpZW5kcyB0byBzZWUgaWYgdGhlcmXigJlzIGFueXRo
aW5nIHdlIGNhbiBkbyB0byBoZWxwLgo+IAo+IERhdmUgd2FzIGFuIGluc3BpcmF0aW9uIHRvIHVz
LiBEYXZl4oCZcyBjb250cmlidXRpb25zIHRvIExpbnV4LCBGUS1Db0RlbCwgYW5kCj4gQ0FLRSBp
bXByb3ZlZCBpbnRlcm5ldCBjb25uZWN0aXZpdHkgYXJvdW5kIHRoZSB3b3JsZCBmb3IgbWlsbGlv
bnMgb2YKPiBwZW9wbGUuIEJlY2F1c2Ugb2YgaGltLCBtaWxsaW9ucyBvZiBwZW9wbGUgbm93IGhh
dmUgYWNjZXNzIHRvIHJlbGlhYmxlCj4gdmlkZW8gY2FsbHMg4oCTIGFuZCBpbiB0dXJuLCBhY2Nl
c3MgdG8gbG92ZWQgb25lcywgaGVhbHRoY2FyZSwgYW5kIGNvbW11bml0eS4KPiBPbmUgb2YgUm9i
ZXJ04oCZcyBJU1AgY3VzdG9tZXJzIGlzIGEga2luZCBwYXJhcGxlZ2ljIHdvbWFuIHdobyBsaXZl
cyBpbiBhCj4gZmFyLWZsdW5nIHJ1cmFsIENvbG9uaWEgYXJvdW5kIEVsIFBhc28sIFRleGFzLiBI
ZXIgcmVsaWFibGUgYWNjZXNzIHRvIGhlcgo+IGRvY3RvcnMgdGhyb3VnaCB0ZWxlbWVkaWNpbmUs
IGFuZCB0byBoZXIgZmFtaWx5IHRocm91Z2ggRmFjZVRpbWUsIHdhcyBvbmx5Cj4gbWFkZSBwb3Nz
aWJsZSBiZWNhdXNlIG9mIGhpcyBhbGdvcml0aG1zLiBUaGVyZSBhcmUgbWlsbGlvbnMgb2YgY2Fz
ZXMgbGlrZQo+IGhlcnMsIHdoZXJlIERhdmXigJlzIGNvbnRyaWJ1dGlvbnMgaGF2ZSBzaWxlbnRs
eSBlbmFibGVkIGh1bWFuIGNvbm5lY3Rpb24gYW5kCj4gc2FmZXR5LiBFdmVyeXRoaW5nIERhdmUg
Y29udHJpYnV0ZWQgdG8gdGhlIHdvcmxkIG9mIHRlY2hub2xvZ3kgd2FzIGZyZWUgYW5kCj4gb3Bl
biBzb3VyY2UsIGZvciB0aGUgYmV0dGVybWVudCBvZiBodW1hbml0eS4KPiAKPiBEYXZlIGlzIHRo
ZSByZWFzb24gdGhhdCBTdGFybGluayB3YXMgYWJsZSB0byB0YWNrbGUgaXRzIGxhdGVuY3kgaXNz
dWVzIOKAkwo+IGVuYWJsaW5nIGEgZ2VuZXJhdGlvbiBvZiB5b3VuZyBlbnRyZXByZW5ldXJzIGFj
cm9zcyB0aGUgZGV2ZWxvcGluZyB3b3JsZCwKPiBzdWNoIGFzIHRoZXNlIHlvdW5nIGZvbGtzIHBp
Y3R1cmVkIGluIHRoZSBQaGlsbGlwaW5lcywgdG8gc3RhcnQgdGhlaXIgb3duCj4gSVNQcyB0byBl
eHBhbmQgaW50ZXJuZXQgYWNjZXNzIHRvIHRoZWlyIGNvbW11bml0aWVzLiBEYXZlIHN0YXJ0ZWQg
d29yayBvbgo+IEZRLUNvRGVsIGluIHBhcnQgYmVjYXVzZSBvZiBoaXMgb3duIGpvdXJuZXkgd29y
a2luZyB0byBleHBhbmQgaW50ZXJuZXQKPiBhY2Nlc3MgaW4gTmljYXJhZ3VhLCBzbyB3ZSBrbm93
IGhlIHNhdyB0aGF0IGhpcyB3b3JrIGhhZCBjb21lIGZ1bGwtY2lyY2xlCj4gYW5kIGhlbHBlZCBz
byBtYW55Lgo+IAo+IFdl4oCZcmUgaW5jcmVkaWJseSBncmF0ZWZ1bCB0byBoYXZlIERhdmUgYXMg
b3VyIGZyaWVuZCwgbWVudG9yLCBhbmQgYXMKPiBzb21lb25lIHdobyBjb250aW51b3VzbHkgaW5z
cGlyZWQgdXMg4oCTIHNob3dpbmcgdXMgdGhhdCB3ZSBjb3VsZCBkbyBiZXR0ZXIKPiBmb3IgZWFj
aCBvdGhlciBpbiB0aGUgd29ybGQsIGFuZCBsZXZlcmFnZSB0ZWNobm9sb2d5IHRvIG1ha2UgdGhh
dCBoYXBwZW4uCj4gSGUgd2lsbCBiZSBkZWFybHkgbWlzc2VkLgo+IAo+ICpQUzogKkRhdmUgaXMg
Zm9yZXZlciBpbiBvdXIgaGVhcnRzIGFuZCBzb3VscywgaW4gb3VyIHJvdXRlcnMgYW5kLi4uaW4K
PiBwcm9kdWN0aW9uIQo+IAo+ICpodHRwczovL2dpdGh1Yi5jb20vTGlicmVRb0UvTGlicmVRb1Mv
cHVsbC82ODQKPiA8aHR0cHM6Ly9naXRodWIuY29tL0xpYnJlUW9FL0xpYnJlUW9TL3B1bGwvNjg0
PioKPiAKPiBBbGwgdGhlIGJlc3QsCj4gCj4gRnJhbmsKPiAKPiBGcmFudGlzZWsgKEZyYW5rKSBC
b3JzaWsKPiAKPiAKPiAKPiBodHRwczovL3d3dy5saW5rZWRpbi5jb20vaW4vZnJhbnRpc2VrYm9y
c2lrCj4gCj4gU2lnbmFsLCBUZWxlZ3JhbSwgV2hhdHNBcHA6ICs0MjE5MTk0MTY3MTQKPiAKPiBp
TWVzc2FnZSwgbW9iaWxlOiArNDIwNzc1MjMwODg1Cj4gCj4gU2t5cGU6IGNhc2lvYTUzMDJjYQo+
IAo+IGZyYW50aXNlay5ib3JzaWtAZ21haWwuY29tCgpUaGlzIGNvbWVzIGEgc2hvY2ssIGhhZCBu
b3Qgc2VlbiBEYXZlIGluIG92ZXIgYSB5ZWFyLgpIZSB3YXMgc3VjaCBhbiBpbnNwaXJhdGlvbiBh
bmQgYWx3YXlzIG1hZGUgbWUgaGFwcHkgZXZlbiBpbiB0aGUgd29yc3QgdGltZXMuCldoZW4gSSB3
YXMgcmVjb3ZlcmluZyBmcm9tIGNoZW1vdGhlcmFweSBhbmQgc3RlbSBjZWxsIHRyYW5zcGxhbnQg
dHJlYXRtZW50LApEYXZlIGNhbWUgdG8gdmlzaXQgbWUgaW4gdGhlIGhvc3BpdGFsLiBXaGljaCB3
YXMgcXVpdGUgYSBzdXJwcmlzZS4KSSBoYWQgYWx3YXlzIGhvcGVkIHRoYXQgSSBjb3VsZCByZXR1
cm4gdGhlIGZhdm9yIHNvbWUgZGF5LgoKQWxzbywgcmVtZW1iZXIgd2hlbiBUb2tlIGFuZCBJIHZp
c2l0ZWQgaGltIGF0IHRoZSBMb2RnZSBhbmQgd2UgYm90aApicm91Z2h0IGxhcHRvcHMgKGFuZCBu
b3QgdG93ZWxzKS4KCkhlIGFsc28gaW5zcGlyZWQgbWUgdG8ga2VlcCBnb2luZyB3aXRoIHRoZSBC
dWZmZXJibG9hdCB3YXRlciBkZW1vbnN0cmF0aW9ucy4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C7038D1DA
	for <lists+cake@lfdr.de>; Sat, 22 May 2021 01:11:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7EFC43CB39;
	Fri, 21 May 2021 19:11:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1621638667;
	bh=80BTE58W7+WemiFy5xBBwujIP8W/eF6oCdhEHa3khjE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pcX5HLJ86zV7mypnRwB6XzrMGxlZ+sQr5jBQBJroEizEzXmUSMOr7d9UP2z3Fg7yI
	 rayXnZId3n8gCWoqdt0oJCcAuVugNNlSrmUq+4OQTH3GOR+wTuUC1k18ERZNTFDTf2
	 nmOBadGYvxsNcv3xSzSCzXpAuQcQRiy1xAWiEXNrWdLL5+GKZI0/+6cDB9ByxQbKGA
	 AKXctdhQOm+RpgnJKT/EdQSfvgyotBDQOhL3BLiW0bLWiRMWSnXRJCrtv1mFRMafkU
	 lxg/9BYlEVeH4yv4cJqFHQXNnA0UQnjPBEUueJON4FbCbUKxaxos3RixIqI3LzT3xI
	 8JNYX3FIqtUgg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B77B53CB35
 for <cake@lists.bufferbloat.net>; Fri, 21 May 2021 19:11:05 -0400 (EDT)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 9A92E5C00E4;
 Fri, 21 May 2021 19:11:05 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Fri, 21 May 2021 19:11:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 message-id:subject:from:to:date:in-reply-to:references
 :content-type:mime-version:content-transfer-encoding; s=fm3; bh=
 MTUVrnVaH7unvRLFpDg+/Tumr2E/ERSP1SOa0+rbdtY=; b=BbV54lnHKLPxgQHh
 chRPWOVdoDS4C1nk0YShtqgWipZ+8zQAs5+CPvX/1mA5yqYq9kcRZH0iMS47cEnA
 bJI7appiHI4dJHaOtYNpRrDRo97AHswTwqmFfwrL7J3bJ0cwoojAj9mUFbTtubFp
 icF4+VEww0NH79dhF3rAq4SXPpm2Z3Cdt7mfwHsC7mMf3D/mOutr88t8W6FvAxTe
 F3IlFYc+Qgm9/MVA2p0rcJkCJdzOs8Wqx7e51/8drb/5C39tUx0nQcZTDvmz732L
 cM5/H90dm09heQFn9tNjnBJWI1YXKnZlRz16kxLZR3oK/sw8iOnS6AFy/1CR8Ux6
 c+AvlA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; bh=MTUVrnVaH7unvRLFpDg+/Tumr2E/ERSP1SOa0+rbd
 tY=; b=UlJ070sIlAYs5OftSEWr19ZrDBEw5WvxzNaWQnBZRyJ0aSQa17roM3GSg
 vV9ssi8Zrms9h2HTaHCtdXz7VGuz7R44hGIOuyLmWKyS+X/AJZ8S5ea8i3yEY7G9
 zlgrjOHmU35mcDjentfCZWBTAZZLlIKdiLUqYIhL91Ni0ORhqogcNaaMgQGZclBv
 lqGiY596c/5vnz/LeXAVNh0aTdEmQIwdlUOd0zn2RLypXKYUf7VKZ7qe8NK0ggTt
 CrQSw8gMe8LpgRZGk2WPTzX1qSiBKyjlNCPQff0sq7fQohu9cOunl073YoaeedvH
 LA09PFYy6pkntU6r59EGl8qjtYtRQ==
X-ME-Sender: <xms:CD6oYATyGXW0ctFhN6P1DS4k_3FftqatHzvNcIOyKz2DUv4qtR4f5A>
 <xme:CD6oYNy_IQfhYsQQNXrB6LripKFBwxym7Png9PhJCjt_iGqEVy7A4wr0aFgHEP17I
 9agG7gUKyOnJb1z_g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdejgedgudelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepkffuhffvffgjfhgtfggggfesthejredttderjeenucfhrhhomheppfhilhhs
 ucetnhgurhgvrghsucfuvhgvvgcuoehmvgeslhhotghhnhgrihhrrdhnvghtqeenucggtf
 frrghtthgvrhhnpefhudetveehgeeigeeggfdtueefleeuffevteelffejgeehleetieet
 geekudejvdenucffohhmrghinhepghhithhhuhgsrdgtohhmpdgsuhhffhgvrhgslhhorg
 htrdhnvghtnecukfhppedukeehrddujeehrdehiedrvdehfeenucevlhhushhtvghrufhi
 iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmvgeslhhotghhnhgrihhrrdhnvg
 ht
X-ME-Proxy: <xmx:CD6oYN2w7vnAokP5vmk9DlG7qAMnxdbWWh_yC5u_DQYVSRurxU0cwQ>
 <xmx:CD6oYEBIJ9Rb7dd-dO6NSFOvQVq_f67UH5Lnj-k-v3Mc8y3L4Du9ig>
 <xmx:CD6oYJgH5_ari8wuZgSFBvkOViA64mijBASQXRNx-h0NUdRmC0pYbg>
 <xmx:CT6oYDeSE7CB8fWIT0ATDR0IXMr70kkUvgGdbxBatc-ziS9VmuOesA>
Received: from [192.168.137.175] (gate.sveet.no [185.175.56.253])
 by mail.messagingengine.com (Postfix) with ESMTPA;
 Fri, 21 May 2021 19:11:02 -0400 (EDT)
Message-ID: <b5d106b60aaa344b3cd71492fdfea92c14d212c3.camel@lochnair.net>
From: Nils Andreas Svee <me@lochnair.net>
To: John Sager <john@sager.me.uk>, cake@lists.bufferbloat.net
Date: Sat, 22 May 2021 01:10:54 +0200
In-Reply-To: <2BB2622F-69F0-4ED3-9A85-3FF96D618F21@sager.me.uk>
References: <91d484ec338c58f622c25285bf4ff8658fde4a03.camel@lochnair.net>
 <2BB2622F-69F0-4ED3-9A85-3FF96D618F21@sager.me.uk>
User-Agent: Evolution 3.40.1 
MIME-Version: 1.0
Subject: Re: [Cake] CAKE host isolation modes with NAT - two routers
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Rm9yIHRoZSB0aW1lIGJlaW5nIHlvdSBfY2FuXyBzdGlsbCBzZWUgd2hhdCBkb21haW4gYSB1c2Vy
cyBjb25uZWN0aW5nCnRvIG92ZXIgVExTIDEuMyAoYXNzdW1pbmcgRVNOSSBpc24ndCB1c2VkKS4g
SSB3cm90ZSBhIGlwdGFibGVzIG1vZHVsZQpkb2luZyBqdXN0IHRoYXQgYSBmZXcgeWVhcnMgYWdv
IFsxXS4gSSBhbHNvIHRveWVkIHdpdGggYSBuZnF1ZXVlCnZlcnNpb24gYSBjb3VwbGUgeWVhcnMg
YmFjayB3cml0dGVuIGluIEdvIFsyXS4gT2YgY291cnNlLCB3aGVuZXZlciBFU05JCmJlY29tZXMg
dGhlIG5vcm0gdGhleSdyZSBib3RoIHVzZWxlc3MuCgpPbi10b3BpYzogU28gZmFyIEknbSB0aGlu
a2luZyBJJ2xsIGhhdmUgdG8gYWRkIG9uZSB0YyBmaWx0ZXIgcGVyIGhvc3QKdG8gZ2V0IHByb3Bl
ciBpc29sYXRpb24uIE5vdCBzdXJlIGlmIHRoZXJlJ3MgYSBiaWcgZW5vdWdoIHBlcmZvcm1hbmNl
CmltcGFjdCBieSBhZGRpbmcgYSBmaWx0ZXIgcGVyIGhvc3QgYXQgYm9vdCB0aW1lIHRoYXQgSSBz
aG91bGQgYWRkIHRoZXNlCmR5bmFtaWNhbGx5IHdoZW4gbmV3IGhvc3RzIHNob3cgdXAuCgpJIGRv
bid0IGtub3cgdGMgYWxsIHRoYXQgd2VsbCwgYnV0IEkgaW1hZ2luZSB0aGlzJ2xsIGRvIGl0Ogo+
IHRjIGZpbHRlciBhZGQgZGV2IGV0aDAgcGFyZW50IDE6IGhhbmRsZSA8ZndtYXJrPiBmdyBjbGFz
c2lkCjxmd21hcms+OjAKClsxXTogaHR0cHM6Ly9naXRodWIuY29tL0xvY2huYWlyL3h0X3Rscwpb
Ml06IGh0dHBzOi8vZ2l0aHViLmNvbS9Mb2NobmFpci9uZnEtdGxzCgotLSAKQmVzdCBSZWdhcmRz
LApOaWxzCgpPbiBGcmksIDIwMjEtMDUtMjEgYXQgMTY6NTEgKzAxMDAsIEpvaG4gU2FnZXIgd3Jv
dGU6Cj4gSSBkaWQgc29tZXRoaW5nIHNpbWlsYXIgc29tZSB5ZWFycyBhZ28gaW4gYW4gYXR0ZW1w
dCB0byBkaXZpbmUgdmlkZW8KPiBzZXJ2ZXJzIChlZyBZb3VUdWJlKSBmcm9tIHRoZWlyIFRMUyBj
ZXJ0aWZpY2F0ZXMgaW4gSHR0cHMgY29ubmVjdGlvbnMKPiB0byBtYXJrIHRoZSBjb25uZWN0aW9u
IGFwcHJvcHJpYXRlbHkuIFRoZSBuZnF1ZXVlIHN0dWZmIHdvcmtlZAo+IGJlYXV0aWZ1bGx5LCB0
aGUgY2VydCBzdHVmZiBsZXNzIHNvLCBzbyBJIGFiYW5kb25lZCBpdC4gV2l0aCB0aGUgbGF0ZXN0
Cj4gVExTIHZlcnNpb24gdGhlIGNlcnQgc3R1ZmYgaXMgbm8gbG9uZ2VyIHZpc2libGUgYW55d2F5
Lgo+IAo+IFRoZXJlIGlzIGEgUHl0aG9uIGJpbmRpbmcgdG8gbGlibmV0ZmlsdGVyX3F1ZXVlIHdo
aWNoIG1pZ2h0IG1ha2UgaXQKPiBlYXNpZXIgdG8gcGxheSBxdWlja2x5Lgo+IAo+IHJlZ2FyZHMs
Cj4gSm9obgo+IAo+IAo+IE9uIDIwIE1heSAyMDIxIDE3OjA3OjQzIEJTVCwgTmlscyBBbmRyZWFz
IFN2ZWUgPG1lQGxvY2huYWlyLm5ldD4gd3JvdGU6Cj4gPiBIaSBmb2xrcwo+ID4gCj4gPiBDdXJy
ZW50bHkgbXkgc2V0dXAgbG9va3Mgc29tZXRoaW5nIGxpa2UgdGhpczogTEFOIDwtPiBFZGdlUm91
dGVyIDwtPgo+ID4gV2lyZUd1YXJkIDwtPiBWUFMgPC0+IEludGVybmV0Lgo+ID4gCj4gPiBDQUtF
IGZvciB1cHN0cmVhbSBpcyBydW5uaW5nIG9uIHRoZSBFZGdlUm91dGVyIGFuZCBkb3duc3RyZWFt
IG9uIHRoZQo+ID4gVlBTLgo+ID4gCj4gPiBUaGUgcHVibGljIElQcyBhcmUgYWxsIG9uIHRoZSBW
UFMgcGVyIHRvZGF5LCBzbyB0aGF0IHRoZSBob3N0Cj4gPiBpc29sYXRpb24KPiA+IGNhbiBkbyBp
dHMgam9iIHdpdGggTkFUIGVuYWJsZWQuCj4gPiAKPiA+IElkZWFsbHkgSSdkIGxpa2UgdG8gcm91
dGUgdGhlIHB1YmxpYyBJUHMgdG8gZWFjaCBlbmRwb2ludCBhbmQgaGFuZGxlCj4gPiBOQVQtaW5n
IHRoZXJlLCBidXQgdGhlbiBJJ2Qgb2J2aW91c2x5IGxvc2UgdGhlIGFiaWxpdHkgdG8gZG8gcHJv
cGVyCj4gPiBob3N0IGlzb2xhdGlvbi4KPiA+IAo+ID4gTm93LCBJJ3ZlIGJlZW4gdG95aW5nIHdp
dGggdGhlIGlkZWEgb2YgdXNpbmcgYW4gdXNlcnNwYWNlIGFwcGxpY2F0aW9uCj4gPiB0byBleHRy
YWN0IGNvbm50cmFjayBpbmZvcm1hdGlvbiwgdG8gbGV0IHRoZSBWUFMga25vdyB3aGljaCBob3N0
IGhhc2gKPiA+IGl0IHNob3VsZCB1c2UuCj4gPiAKPiA+IEkgbWlnaHQgYmUgd2F5IG9mIGhlcmUs
IGJ1dCBJJ20gdGhpbmtpbmcgb2YgdXNpbmcgTkZRVUVVRSB0byBtYXJrIG5ldwo+ID4gZmxvd3Mg
YmFzZWQgb24gaW5mb3JtYXRpb24gZnJvbSB0aGUgRWRnZVJvdXRlciwgYW5kIGxldCB0YyBmaWx0
ZXJzCj4gPiBzZXQKPiA+IHRoZSBob3N0IGhhc2ggYmFzZWQgb24gdGhhdCBtYXJrLiBGb3IgcGVy
Zm9ybWFuY2UgcHVycG9zZXMgb25seSBzZW5kCj4gPiB1bm1hcmtlZCBmbG93cyB0byBORlFVRVVF
Lgo+ID4gCj4gPiBJIHJlYWxpc2UgdGhpcyBpcyBraW5kYSBvdmVya2lsbCwgYnV0IGl0IG1pZ2h0
IHdlIGEgZnVuIHdlZWtlbmQKPiA+IHByb2plY3QuCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBDYWtlIG1haWxpbmcgbGlzdAo+IENha2VAbGlz
dHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGlu
Zm8vY2FrZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlz
dHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

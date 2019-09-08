Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FA0ACA19
	for <lists+cake@lfdr.de>; Sun,  8 Sep 2019 02:04:14 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1B3263CB67;
	Sat,  7 Sep 2019 20:04:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1567901053;
	bh=5qlGFPCA53RfrAtiRy0h52r5jLmhn4vTTrxLQ3PODWc=;
	h=In-Reply-To:References:Date:From:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oPPiJt6DvIXTluYEW2ZkwH672yAq+NZ3c/twPiRgKXWi45mMNX8Op1wzFTam7Z8rj
	 jm1PrUg0Kob28WZcNafIC0PtTajtdTMbQRSCai91BPmpsId8l/xTuhqo1sIs0OByIu
	 /cJmHzvl+4PStRAT/nfxEPWwr8MtIhST2QgjKg2eouJouP38HCOLQ0X985O1qfBJER
	 FF4K34MY0VTSKdjXiTR2tgk39JyRrUl+nXPT1di/wLjmGbx8UcodHQnlRzlzTZlbu4
	 lOHADtu5ekZ86xjSo5sPIh72en1JPg0G/lQloZOwyKkA6PWSXeOvR+35yHt8DI9BBy
	 9qf7JeAyrdP8w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3B7D63B2A4
 for <cake@lists.bufferbloat.net>; Sat,  7 Sep 2019 20:04:12 -0400 (EDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 27B2320B0D;
 Sat,  7 Sep 2019 20:04:12 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Sat, 07 Sep 2019 20:04:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=althea.net; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=MLX5oeb7oJzek/ZErLh1R4NTKmhktAf
 6vP/NQjGvAYE=; b=cfhHAB5mp0qz4zfVSgIGBt39/MGFFUFUtYQ+E1jXSnK1Aqe
 KuEfg1ArJij2QjTT6NNgCgaMP4svS9U0Plqc1VelJnKidJ36FzIhqx8F4nUIoejx
 WlQ2bfY++lkcYl67EWknnhJHiKHYiuufKl4w4m0KGLYH7t+e3W8rf7DH46/+utwE
 kiflYDUNoDZ964DP2DaB23EHGuchJvKra3g12gKeA5kG65PGV85kBCyfFOKG4zLP
 W+evDRt0Z51JaWBq7R9wbuZeUIEZrnIlJbJvS3XUhXAmySDLNIT99s9hryxwpPaG
 qky74UA03g+rcVe8/ST/W26hdYnMq/lv6R9pddw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=MLX5oe
 b7oJzek/ZErLh1R4NTKmhktAf6vP/NQjGvAYE=; b=PRFIornLFCu8TTNdNVPzuu
 kQ47LTOjUXGSnSsta5b25AapLoneMl8Ym4O847pm0XE4qbcdoQ+QBFr7eExsCF5i
 0UCjN+5AKENyPguP6+0QITpTLRxoPjgGU2AcXY8i0hAWgL0ZxImO3hg0y1QKMycR
 z9YECPc3SGOVX6/8MEURROMAKjrOThNkqG811vgbY98RmyQosF1uF8NTudYqwJhV
 C/XIR8WEip455m2KgN7TSnwtCVUhZ3hBpct7wDCsXkt3nBkW+385JB8ZQscwzScI
 ros0GQ8FneGrnnxZPDWaEEdgdqhEWf0Ak9BW/sAWBUFL23TXHuVf78vOy1hg61aQ
 ==
X-ME-Sender: <xms:e0V0XRA6aJapntUgiWfcdf2N3unGe-PKsdUgYdtACd4SkqPZ9O-a3A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudekvddgvdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvufgtsehttd
 ertderredtnecuhfhrohhmpedflfhushhtihhnucfmihhlphgrthhrihgtkhdfuceojhhu
 shhtihhnsegrlhhthhgvrgdrnhgvtheqnecurfgrrhgrmhepmhgrihhlfhhrohhmpehjuh
 hsthhinhesrghlthhhvggrrdhnvghtnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:e0V0XRJT4dCTne5rGCoZU74_iVBSw1yobxhNxmiLcj1oa9PyHB9M0Q>
 <xmx:e0V0XSLxrUaDagy8tAoJBD6HhEmY9nbJ42Rl3snz162uUSIINgah4Q>
 <xmx:e0V0XfEv0-SVdC91tl1iy5hi3bpFDT21XkSv0AeXvuW_KbXF6CUlVw>
 <xmx:fEV0XdOk1VuLMG_QVawdn-6mi1N0NakSGowDLUUdeNFWjGZNWePDow>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id D77FCE00A3; Sat,  7 Sep 2019 20:04:11 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-188-g385deb1-fmstable-20190905v2
Mime-Version: 1.0
Message-Id: <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
In-Reply-To: <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
 <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
Date: Sat, 07 Sep 2019 20:03:50 -0400
From: "Justin Kilpatrick" <justin@althea.net>
To: "Jonathan Morton" <chromatix99@gmail.com>
Subject: Re: [Cake] Fighting bloat in the face of uncertinty
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
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

U2FkbHkgdGhpcyBpc24ndCBhIGRyaXZlciwgaXRzIGEgcG9pbnQgdG8gcG9pbnQgd2lyZWxlc3Mg
ZGV2aWNlIHRoYXQgb2Z0ZW4gc2VlbXMgZGVzaWduZWQgdG8gaW50cm9kdWNlIGJsb2F0LiBJIGNv
dWxkIHByb2JhYmx5IHNzaCBpbiBhbmQgY29uZmlndXJlIGl0IHRvIGJlaGF2ZSBwcm9wZXJseSBi
dXQgdGhhdCdzIG5vdCB2ZXJ5IHNjYWxhYmxlLiAKClVuZGVyZXN0aW1hdGluZyBsaW5rIGNhcGFj
aXR5IGRyYW1hdGljYWxseSBpc24ndCBhbiBvcHRpb24gYXMgbm8gbWF0dGVyIGhvdyBidXR0ZXJ5
IHNtb290aCB0aGUgZXhwZXJpZW5jZSBwZW9wbGUgc3RpbGwgY3JhdmUgdGhvc2UgaGlnaCBzcGVl
ZHRlc3QgbnVtYmVycy4gCgo+IEluIGZhY3QgSSdtIHVuc3VyZSBhcyB0byB3aHkgY2hhbmdpbmcg
dGhlIEFRTSBwYXJhbWV0ZXJzIHdvdWxkIGN1cmUgaXQuIAo+ICBZb3UgbWF5IGhhdmUgYmVuZWZp
dGVkIGZyb20gYW4gdW5pbnRlbnRpb25hbCBzZWNvbmQtb3JkZXIgZWZmZWN0IHdoaWNoIAo+IHdl
IG5vcm1hbGx5IHRyeSB0byBlbGltaW5hdGUsIHdoZW4gdGhlICd0YXJnZXQnIHBhcmFtZXRlciBn
ZXRzIHRvbyAKPiBjbG9zZSB0byB0aGUgQ1BVIHNjaGVkdWxpbmcgbGF0ZW5jeSBvZiB0aGUga2Vy
bmVsLgoKU28geW91IGJlbGlldmUgdGhhdCBzZXR0aW5nIHRoZSB0YXJnZXQgUlRUIGNsb3NlciB0
byB0aGUgcGF0aCBsYXRlbmN5IHdhcyBub3QgdGhlIG1haW4gY29udHJpYnV0b3IgdG8gcmVkdWNp
bmcgYmxvYXQ/IElzIHRoZXJlIGEgY29uZmlndXJhdGlvbiBJIGNvdWxkIHVzZSB0byBkZW1vbnN0
cmF0ZSB0aGF0IG9uZSB3YXkgb3IgdGhlIG90aGVyPyAKCgotLSAKICBKdXN0aW4gS2lscGF0cmlj
awogIGp1c3RpbkBhbHRoZWEubmV0CgpPbiBTYXQsIFNlcCA3LCAyMDE5LCBhdCA3OjQyIFBNLCBK
b25hdGhhbiBNb3J0b24gd3JvdGU6Cj4gPiBPbiA4IFNlcCwgMjAxOSwgYXQgMjozMSBhbSwgSnVz
dGluIEtpbHBhdHJpY2sgPGp1c3RpbkBhbHRoZWEubmV0PiB3cm90ZToKPiA+IAo+ID4gSWYgSSBz
ZXQgYSB0aHJvdWdocHV0IHRoYXQncyA1MCUgdG9vIGhpZ2ggc2hvdWxkIGl0IHN0aWxsIGhlbHA/
IEluIG15IHRlc3RpbmcgaXQgZGlkbid0IHNlZW0gdG8uCj4gCj4gSW4gdGhhdCBjYXNlIHlvdSB3
b3VsZCBiZSByZWx5aW5nIG9uIGJhY2twcmVzc3VyZSBmcm9tIHRoZSBuZXR3b3JrIAo+IGludGVy
ZmFjZSB0byBjYXVzZSBxdWV1aW5nIHRvIGFjdHVhbGx5IG9jY3VyIGluIENha2UgcmF0aGVyIHRo
YW4gaW4gdGhlIAo+IGRyaXZlciBvciBoYXJkd2FyZSAod2hpY2ggd291bGQgYWxtb3N0IGNlcnRh
aW5seSBiZSBhIGR1bWIgRklGTykuICBJZiAKPiB0aGUgZHJpdmVyIGRvZXNuJ3QgaW1wbGVtZW50
IEJRTCwgdGhhdCB3b3VsZCBlYXNpbHkgZXhwbGFpbiAzMDBtcyBvZiAKPiBibG9hdC4KPiAKPiBJ
biBmYWN0IEknbSB1bnN1cmUgYXMgdG8gd2h5IGNoYW5naW5nIHRoZSBBUU0gcGFyYW1ldGVycyB3
b3VsZCBjdXJlIGl0LiAKPiAgWW91IG1heSBoYXZlIGJlbmVmaXRlZCBmcm9tIGFuIHVuaW50ZW50
aW9uYWwgc2Vjb25kLW9yZGVyIGVmZmVjdCB3aGljaCAKPiB3ZSBub3JtYWxseSB0cnkgdG8gZWxp
bWluYXRlLCB3aGVuIHRoZSAndGFyZ2V0JyBwYXJhbWV0ZXIgZ2V0cyB0b28gCj4gY2xvc2UgdG8g
dGhlIENQVSBzY2hlZHVsaW5nIGxhdGVuY3kgb2YgdGhlIGtlcm5lbC4KPiAKPiBJIGdlbmVyYWxs
eSBmaW5kIGl0J3MgYmV0dGVyIHRvICp1bmRlcmVzdGltYXRlKiB0aGUgYmFuZHdpZHRoIHBhcmFt
ZXRlciAKPiBieSA1MCUgdGhhbiB0aGUgcmV2ZXJzZSwgc2ltcGx5IHRvIGtlZXAgdGhlIHF1ZXVl
IG91dCBvZiB0aGUgZHVtYiAKPiBoYXJkd2FyZS4gIEJ1dCBpZiB5b3Ugd2FudCB0byB0cnkgaW1w
bGVtZW50aW5nIEJRTCBpbiB0aGUgcmVsZXZhbnQgCj4gZHJpdmVycywgZ28gYWhlYWQuCj4gCj4g
IC0gSm9uYXRoYW4gTW9ydG9uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0
dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

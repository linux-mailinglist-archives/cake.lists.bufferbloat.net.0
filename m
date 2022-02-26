Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B514C57EE
	for <lists+cake@lfdr.de>; Sat, 26 Feb 2022 21:10:11 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E507E3CB38;
	Sat, 26 Feb 2022 15:10:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1645906209;
	bh=X91XoA+khoroOE9nbVozapIZKDeXBhf3YdBrKnLyhOM=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=jQlOGMZ0eEFhUL4KYSgR4Op1CNDwLTk9gykys+J6JA5B/EbQ8glP44j/Smg56Vy94
	 kdKQlaTRw6pzI27VSJU3loUH4k2SwHFRTw0pmQpgMKDh/c0DdJlpre0DYuKwBlZntR
	 +ukPTXwbDYwd7/9+Ig3drLFJHdbgxSrBP82hD2kgYpY+8Qz7rV9GiedxuNQgrTQdoU
	 DDn7tDGJmt9kW6CJF5XuuHYd4ne9dj5soKWYOKXn5G+DI3Hfrbc+bM4NR9zvczrQMA
	 k10GW8f2v6G/uYHLCrRcwcaitDAIEzN3ljOOHDu7gLP1DRL29Z4Qy22DRpqyRYZyiJ
	 OfHxTWyofVE7g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C51983B29D
 for <cake@lists.bufferbloat.net>; Sat, 26 Feb 2022 15:10:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1645906206; bh=eVpf4IEB9GQ0yGz6BSng79Ddxfrq0U8jgPuLux4eEN8=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=kKlo7QJOyWjcAvj8Bgl1w/ljVrnNIPDS1/Ykd/NPmE+huNNfm1k/M7RFaysQ49Yz/
 GxCmka4vnBCN/ghYe5p9ZrwHAUW+uUQ+PprD8XkAGidY+DTXCtk2XvXKkK+fKt/2Rh
 c5vt8Yynu1Fu9SD+BJCsZ6MrMTNFrCGJZVvPn1IQyx4AXqSr0iTvtQI2wcK3RtPfnl
 jEwz9a7eQfxKpiLMfr/bhPTfoQRoXhGLFdikMFNoapy1/WbmfvhJ3aEedK0lSGrLic
 65st8FfDhOWH7U1FAXJg+fFQdbsnDal9dBfOsLh1dYNAZ8t3Nwqg6Kfc/6o3/rtv+7
 l/lHq3KhFPS9g==
To: Jim Geo <dim.geo@gmail.com>, cake@lists.bufferbloat.net
In-Reply-To: <CAD9MmSd=Wxu5qQAdFwrNEf4guHt7QMC5zkcd9_kCFAZsuXigQQ@mail.gmail.com>
References: <CAD9MmSd=Wxu5qQAdFwrNEf4guHt7QMC5zkcd9_kCFAZsuXigQQ@mail.gmail.com>
Date: Sat, 26 Feb 2022 21:10:06 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87ilt1v17l.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] cake ingress switch
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

SmltIEdlbyA8ZGltLmdlb0BnbWFpbC5jb20+IHdyaXRlczoKCj4gSGVsbG8sCj4KPiBXYXMgaXQg
dGhlIGZ1bmN0aW9uIG9mIGluZ3Jlc3MgYXJndW1lbnQgaW4gY2FrZT8KPiBDaGVja2luZyBvbmxp
bmUgbWFuIHBhZ2VzLCBJIGNvdWxkbid0IGZpbmQgYW4gZXhwbGFuYXRpb24uCj4gRG9lcyBpdCBt
YWtlIHNlbnNlIHRvIHVzZSBpdCBvbiBhbiBpZmIgZGV2aWNlPyAoc2VuZGluZyBpbmdyZXNzCj4g
dHJhZmZpYyB0aHJvdWdoIGl0KQoKWWVzLCB0aGF0J3MgZXhhY3RseSB3aGF0IGl0J3MgbWVhbnQg
Zm9yLiBUaGUgb3B0aW9uIGNoYW5nZXMgY2FrZSdzCmFjY291bnRpbmcgc28gdGhhdCBwYWNrZXRz
IHRoYXQgYXJlIGRyb3BwZWQgYXJlIGFjY291bnRlZCBhcyBwYXJ0IG9mIHRoZQplZmZlY3RpdmUg
YmFuZHdpZHRoIG9mIHRoZSBsaW5rIChzaW5jZSBvbiBpbmdyZXNzLCBldmVuIGlmIHRoZXkncmUK
ZHJvcHBlZCB0aGV5IGhhdmUgYWxyZWFkeSB0cmF2ZXJzZWQgdGhlIGJvdHRsZW5lY2sgbGluayku
IFRoaXMgc2hvdWxkCmhlbHAga2VlcCB0aGUgYm90dGxlbmVjayB1bmRlciB0aWdodGVyIGNvbnRy
b2wuLi4KCi1Ub2tlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8v
bGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

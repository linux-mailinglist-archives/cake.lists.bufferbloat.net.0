Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 831C6365AE1
	for <lists+cake@lfdr.de>; Tue, 20 Apr 2021 16:10:12 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2ACD23CB4D;
	Tue, 20 Apr 2021 10:10:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1618927805;
	bh=oNYWw5zaxlV7d2UI+Z+5zVTRS2dFPWU1lf03c4gJ998=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bkPRfVymZ82zfVnUgFnCN8TNaWOocWKy7j9L+VeplUKtmdCFZXDpLnyXKjhvbl5dy
	 EiPdYTI1QDT/Yakk0xU0YUZCagN+CSdHzMxBejKCmObW4vITCrpTu6KflRY34vobmF
	 OdXoBSSfLAxqmbg1GYMpnpR/3pOql+Vm4svUqCsMeS4LzuKT3NZdN1t/V8s0KdsqGX
	 qXBpjEnmzQCwwq/tM9WA0cqw2ReIasgJ9HxqRg/nsKg1pfmG2sMy/qBXA8qsFHlA9Y
	 HH7dcsg+B8MFvM/cmhohs1RUv4UkzzMCRj8WPeFhdpW8y3/fbR4D06gj5Nl+4FRuxh
	 A403yCfFDlkhA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from tuna.sandelman.ca (tuna.sandelman.ca
 [IPv6:2607:f0b0:f:3:216:3eff:fe7c:d1f3])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C51863B29D;
 Tue, 20 Apr 2021 10:10:03 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by tuna.sandelman.ca (Postfix) with ESMTP id 100CC390DB;
 Tue, 20 Apr 2021 10:17:41 -0400 (EDT)
Received: from tuna.sandelman.ca ([127.0.0.1])
 by localhost (localhost [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id 8HZevtAIife9; Tue, 20 Apr 2021 10:17:37 -0400 (EDT)
Received: from sandelman.ca (obiwan.sandelman.ca [IPv6:2607:f0b0:f:2::247])
 by tuna.sandelman.ca (Postfix) with ESMTP id 57364390DA;
 Tue, 20 Apr 2021 10:17:37 -0400 (EDT)
Received: from localhost (localhost [IPv6:::1])
 by sandelman.ca (Postfix) with ESMTP id 09170AC;
 Tue, 20 Apr 2021 10:09:59 -0400 (EDT)
From: Michael Richardson <mcr@sandelman.ca>
To: David Lang <david@lang.hm>, Dave Taht <dave.taht@gmail.com>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
In-Reply-To: <nycvar.QRO.7.76.6.2104191439590.18176@qynat-yncgbc>
References: <CAA93jw5FEe90Dw3_tGubna=_Urzbq6dYMMrifGV7bMuhL2nXKg@mail.gmail.com>
 <nycvar.QRO.7.76.6.2104191057361.18176@qynat-yncgbc>
 <10241.1618866642@localhost>
 <nycvar.QRO.7.76.6.2104191439590.18176@qynat-yncgbc>
X-Mailer: MH-E 8.6+git; nmh 1.7+dev; GNU Emacs 26.1
X-Face: $\n1pF)h^`}$H>Hk{L"x@)JS7<%Az}5RyS@k9X%29-lHB$Ti.V>2bi.~ehC0;
 <'$9xN5Ub#
 z!G,p`nR&p7Fz@^UXIn156S8.~^@MJ*mMsD7=QFeq%AL4m<nPbLgmtKK-5dC@#:k
MIME-Version: 1.0
Content-ID: <21912.1618927798.1@localhost>
Date: Tue, 20 Apr 2021 10:09:58 -0400
Message-ID: <21914.1618927798@localhost>
Subject: Re: [Cake] [Bloat] starlink testing
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

RGF2aWQgTGFuZyA8ZGF2aWRAbGFuZy5obT4gd3JvdGU6CiAgICA+IEkgaGF2ZW4ndCBzZWVuIGFu
eSBmb2xsb3ctdXBzIHdoZXJlIGFueW9uZSBoYXMgZ290dGVuIGEgbG9naW4gdG8gdGhlIGRpc2gg
b3IKICAgID4gaGFzIHNuaWZmZWQgdGhlIHRyYWZmaWMgYmV0d2VlbiB0aGUgZGlzaCBhbmQgdGhl
IHJvdXRlci4KClRydWUsIEkgaGF2ZW4ndCBoZWFyZCwgYnV0IEkgaGF2ZW4ndCBiZWVuIGxvb2tp
bmcuCgogICAgPiBJIGhhdmVuJ3Qgc2VlbiBhbnl0aGluZyB0aGF0IHdvdWxkIHNob3cgdGhhdCB0
aGUgcm91dGVyIGhhcyAob3IgZG9lc24ndCBoYXZlKQogICAgPiBhbnkgYXdhcmVuZXNzIG9mIHRo
ZSBzYXRlbGxpdGUgbmV0d29yay4KCldpdGggbXVsdGktaHVuZHJlZCBhbnRlbm5hIHRvIGJlIHN0
ZWVyZWQsIGFuZCBhbiBBTUQ2NCBDUFUgb24gYm9hcmQsIEkgY2FuJ3QKaW1hZ2luZSB0aGF0IHRo
YXQgQ1BVIGlzbid0IGRvaW5nIHNvbWUgc2lnbmlmaWNhbnQgYW1vdW50IG9mIERTUC4KSWYgdGhl
eSBoYWQgb2ZmYm9hcmRlZCBhbGwgdGhlIGFuYWxvZyBwYXJ0cyB0byBhbm90aGVyIERTUCBvciBk
aXNjcmV0ZSBsb2dpYywKdGhlbiBwcm9iYWJseSB0aGV5IHdvdWxkbid0IG5lZWQgYSA2NC1iaXQg
Q1BVIG9uYm9hcmQ6IHRoZXkgY291bGQgaGF2ZSB1c2VkCnNvbWV0aGluZyBzbG93ZXIvY2hlYXBl
ci4gIFdlbGwsIG1heWJlIHRoZXJlIGlzIGZ1dHVyZSBwcm9vZmluZyBpbnZvbHZlZC4KCkknbSB2
ZXJ5IGRpc2FwcG9pbnRlZCB0aGF0ICJTb21ldGhpbmcgc2ltcGxlciB0aGFuIElQdjYiIHR1cm5l
ZCBvdXQgdG8gYmUgIkNHTiIuCgotLQpdICAgICAgICAgICAgICAgTmV2ZXIgdGVsbCBtZSB0aGUg
b2RkcyEgICAgICAgICAgICAgICAgIHwgaXB2NiBtZXNoIG5ldHdvcmtzIFsKXSAgIE1pY2hhZWwg
UmljaGFyZHNvbiwgU2FuZGVsbWFuIFNvZnR3YXJlIFdvcmtzICAgICAgICB8ICAgIElvVCBhcmNo
aXRlY3QgICBbCl0gICAgIG1jckBzYW5kZWxtYW4uY2EgIGh0dHA6Ly93d3cuc2FuZGVsbWFuLmNh
LyAgICAgICAgfCAgIHJ1Ynkgb24gcmFpbHMgICAgWwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZm
ZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

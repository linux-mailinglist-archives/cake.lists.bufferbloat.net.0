Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B351365CCB
	for <lists+cake@lfdr.de>; Tue, 20 Apr 2021 18:03:33 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4E8E33CB4E;
	Tue, 20 Apr 2021 12:03:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1618934612;
	bh=lfWqbJvuyT7qgE9bx8oTXjtpOt4pkkcvlzpVK1BhZ4M=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hFgcXSxRaGJJF2MclJXVxHT22ISeqjCLtGzeAZ615okqMNQ7JguA0RxDgZnbEMaTS
	 cuowZQjHzDJbYjdqXnPMYLQwT39fpVjDdZLPre+rXNwgQwHBw8DrfHF5s8DA3MmCH1
	 xsx5N8mTA8drGTGXH4A0/6iJW4BQFefxhdfiNEUGQyRJ6FT7pfzNUgrwXY2U4PhfVv
	 yjTXmdcygL26eNh3S/cQxNRiMis7NUalofMNmKBTfskWQ7tnG3DUdvek0bLL4H3GUJ
	 kZelCjumPWfynPC81PohmVGVjB1uaaB39GbcpyVUjAt1Vzu/bv3Q1qm7OqcWBpY54H
	 ZWEng2UVMcsoQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from tuna.sandelman.ca (tuna.sandelman.ca
 [IPv6:2607:f0b0:f:3:216:3eff:fe7c:d1f3])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 622A23B29D;
 Tue, 20 Apr 2021 12:03:31 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by tuna.sandelman.ca (Postfix) with ESMTP id 36D67390FF;
 Tue, 20 Apr 2021 12:11:09 -0400 (EDT)
Received: from tuna.sandelman.ca ([127.0.0.1])
 by localhost (localhost [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id uwl994W5HhWA; Tue, 20 Apr 2021 12:11:08 -0400 (EDT)
Received: from sandelman.ca (obiwan.sandelman.ca [209.87.249.21])
 by tuna.sandelman.ca (Postfix) with ESMTP id D63DD390FD;
 Tue, 20 Apr 2021 12:11:08 -0400 (EDT)
Received: from localhost (localhost [IPv6:::1])
 by sandelman.ca (Postfix) with ESMTP id 424A9AC;
 Tue, 20 Apr 2021 12:03:30 -0400 (EDT)
From: Michael Richardson <mcr@sandelman.ca>
To: Dave Taht <dave.taht@gmail.com>
In-Reply-To: <CAA93jw7=wV6hvgKTwVa6mTpLgJnHBuVX74-aSNSXzxHm-MPzaA@mail.gmail.com>
References: <CAA93jw5FEe90Dw3_tGubna=_Urzbq6dYMMrifGV7bMuhL2nXKg@mail.gmail.com>
 <nycvar.QRO.7.76.6.2104191057361.18176@qynat-yncgbc>
 <10241.1618866642@localhost>
 <nycvar.QRO.7.76.6.2104191439590.18176@qynat-yncgbc>
 <21914.1618927798@localhost>
 <CAA93jw7=wV6hvgKTwVa6mTpLgJnHBuVX74-aSNSXzxHm-MPzaA@mail.gmail.com>
X-Mailer: MH-E 8.6+git; nmh 1.7+dev; GNU Emacs 26.1
X-Face: $\n1pF)h^`}$H>Hk{L"x@)JS7<%Az}5RyS@k9X%29-lHB$Ti.V>2bi.~ehC0;
 <'$9xN5Ub#
 z!G,p`nR&p7Fz@^UXIn156S8.~^@MJ*mMsD7=QFeq%AL4m<nPbLgmtKK-5dC@#:k
MIME-Version: 1.0
Content-ID: <22033.1618934610.1@localhost>
Date: Tue, 20 Apr 2021 12:03:30 -0400
Message-ID: <22035.1618934610@localhost>
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
Cc: Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cm90ZToKICAgID4gQXMgbXVjaCBhcyBJ
IGRpc2xpa2UgdGhlIGNnbmF0IEkgZG9uJ3Qgc2VlIGhvdyBzdGFybGluayBoYWQgYW55IG90aGVy
CiAgICA+IGNob2ljZSwgYW5kIHRoZSBsYXllciBiZWxvdyB0aGF0IGlzIGhvcGVmdWxseSBjYXBh
YmxlIG9mIGNhcnJ5aW5nCiAgICA+IGlwdjYgd2VsbC4KCklQdjYgZmlyc3QsIHdpdGggTkFUNjQg
d291bGQgaGF2ZSBiZWVuIHNpZ25pZmljYW50bHkgYmV0dGVyIGFuZCBlYXNpZXIuCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlz
dApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dC9saXN0aW5mby9jYWtlCg==

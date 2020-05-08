Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2041CB2B2
	for <lists+cake@lfdr.de>; Fri,  8 May 2020 17:20:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6502E3CB39;
	Fri,  8 May 2020 11:20:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588951209;
	bh=jjKXhS47im/yMZKcurwUIjORBIlPWb5JIjQCVJht1aI=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aAJ8YPE1HHazRhzCNptfc7hxE6s0tt13Vxb73e9KPWRf32e5AkOpiNZYRvO1z6AeI
	 0HjhBzU91F/SGZLesGdspJX0fUg8nC/GVQ3NgvoNDFNfXZlvMFM9sImbc+SCW7X4YC
	 +QhRZZtgTSzHTjIUt0c/SMZforYEP2SsFqlN16US3wXx15h4IVBfhkpkIFv2snfS20
	 ZQI7R4LEEcz/4C7TUl5ejifhKP020FrlV9BUl5qBd1iqPu/Qt777GSRPZrAOPF4ywX
	 Tcd5waX/EccS4/PlZ18D+9MrbDbgfDp0wPrKBLT26nSZE9G5DooY664fY0ZFqCRTPG
	 MmGPaV0q2FIWQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com
 [IPv6:2a00:1450:4864:20::12d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 893353B29E
 for <cake@lists.bufferbloat.net>; Fri,  8 May 2020 11:20:07 -0400 (EDT)
Received: by mail-lf1-x12d.google.com with SMTP id h26so1714822lfg.6
 for <cake@lists.bufferbloat.net>; Fri, 08 May 2020 08:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=49ThPRfxnkQ5y9rYblKXdOUPzgGU1FKwkBfZekjaJx4=;
 b=QJSW2UD5VU9XChoaMNhVh/K5kofBSLlKVHAsurIgcUYe6/9DLZeLTXjtcpmAdf4MM4
 SbHfaLY6aleiNChoP9QnFgTtEVwCLiZIoxkzsu3+67PLHxJgKX19VTALGII/WVo94mY+
 +bJbx58ARt4lAScUj/T/t+paitLjqGW0OiRkznORQxpGvceywKo/5s8buDXVUbL1ighY
 Fht9B5qu+Gpu1qd+35OG+Zi1Nygprpd6nDY0KQRZP7blhVMGlyHaBEglKqaPiLpXtoJP
 0fmLr/Q208MwgnCVmersDV1STG3xF1Rgy+h4iPgNWB5r/wcmINTsIplXCGS/P2dN6m5R
 IQ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=49ThPRfxnkQ5y9rYblKXdOUPzgGU1FKwkBfZekjaJx4=;
 b=cAjvg3FPpgWq5MtHpSgA4YoxX1BwP0Z7UsUO0aVoH3koNP/HFvNz61oShsxl6SbgtH
 MxN9L6rinasAkOFDqJlvKg0ss63jWQYmexhG/Md3Uh/NefZEgFRULGyqA0s1JvWp5KWm
 7cGkS1my04eG8dE0u3G88pDbyI3tfeoNVStqL+lrOOVYQTVXVDeinz6Wb8GWDGuQg5Au
 Zuiu1jV/ttgijrdY9XC+7mg9/xoUpDorSD/+nIou/xsO1LYFmzuKJPhKq0NiMLSc5Cwm
 W1VID8d+yWCKnIUR7y6iKT5QlYSBMrte+h9cwLLeWjF66HLe24xCLRdIgkOM5xiKUHQv
 ic2A==
X-Gm-Message-State: AOAM530rf+IxP6ZARkHpNlpcMNbPJL0B3+BKBliA29KDB5yz72YoaG+w
 UPkZ7RhU8GGclh8hHvvEc2o=
X-Google-Smtp-Source: ABdhPJwn3dlt6pngieUp9C/IPEVWMt+4Unsrihpnm1WfRfwJREErCXK6mv6HGTVH937pt13C7BqzLQ==
X-Received: by 2002:a19:5518:: with SMTP id n24mr2283876lfe.61.1588951206369; 
 Fri, 08 May 2020 08:20:06 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-235-192-nat-p.elisa-mobile.fi.
 [83.245.235.192])
 by smtp.gmail.com with ESMTPSA id a11sm1436108lji.62.2020.05.08.08.20.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 08 May 2020 08:20:05 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAA93jw5OP3EfedB5zDPZNYdQaH+LkhUiwaLzMDbyvnTpxZdqSw@mail.gmail.com>
Date: Fri, 8 May 2020 18:20:03 +0300
Message-Id: <7FCC9B1F-7F4B-43E8-B557-88B2A845C28B@gmail.com>
References: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
 <C24C4CCB-C30D-452A-9386-5AA533F11CEE@gmail.com> <87wo5okhbo.fsf@toke.dk>
 <CAC8NkTCYBokx0NedyuOKjhZqUMHXAc5tZtObTpdyjkvE4U_zUw@mail.gmail.com>
 <A85845BB-010A-4F39-99F4-C6206F7FEA65@gmx.de>
 <CAC8NkTBRWrhAQneAf6ZacTzWLYyM5TqX6jmD4-fafAD=7iPgfQ@mail.gmail.com>
 <CAA93jw6xZRcUerJ8JuxjtjW2_C+wyAUKRtqDojPj6hLdg1w0Dg@mail.gmail.com>
 <875zd6h3bu.fsf@toke.dk>
 <CAA93jw5OP3EfedB5zDPZNYdQaH+LkhUiwaLzMDbyvnTpxZdqSw@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] Query on ACK
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
Cc: Avakash bhat <avakash261@gmail.com>,
 Vybhav Pai <vybhavpai1999.vp@gmail.com>,
 Shrinidhi Varna <shrinidhivarna.171co145@nitk.edu.in>,
 Cake List <cake@lists.bufferbloat.net>,
 "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Deepak K <deepakkavoor99@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Pj4gVGhlIEFDSyBmaWx0ZXIgcnVucyBvbiBlbnF1ZXVlLCBzbyBpZiBhIHF1ZXVlIGhhcyBvbmx5
IEFDS3MgaW4gaXQsIGl0Cj4+IHdpbGwgbmV2ZXIgYWNjdW11bGF0ZSBhbnl0aGluZyBpbiB0aGUg
Zmlyc3QgcGxhY2UuLi4KPiAKPiBidXQgdGhlIHNpZGUgZWZmZWN0IGlzIHRoYXQgb24gZGVxdWV1
ZSwgaXQgZmxpcHMgaXQgaW50byB0aGUgZmFzdAo+IHF1ZXVlIGRyciByb3RhdGlvbiwgbm90IHRo
ZSBzbG93LCBzbyBpdCBjYW4ndCBhY2N1bXVsYXRlCj4gYXMgbWFueSBhY2tzIGJlZm9yZSBkZWxp
dmVyaW5nIHRoZSBvbmUgaXQgaGFzIGxlZnQuCj4gCj4gT3Igc28gSSB0aG91Z2h0LCB3YXkgYmFj
ayB3aGVuLi4uLgoKVGhlIGFjayBmaWx0ZXIgY29udmVydHMgYSBzdHJlYW0gb2YgYWNrcyB0aGF0
IG1pZ2h0IGJlIHRyZWF0ZWQgYXMgYSBidWxrIGZsb3cgaW50byBhIHNwYXJzZSBmbG93LCB3aGlj
aCBpcyBkZWxpdmVyZWQgcHJvbXB0bHkuICBUaGlzIGlzIGEgZ29vZCB0aGluZzsgYW4gYWNrIHNo
b3VsZCBub3QgYmUgaGVsZCBiYWNrIHNvbGVseSB0byBzZWUgd2hldGhlciBhbm90aGVyIG9uZSB3
aWxsIGFycml2ZS4KCkkgdGhpbmsgb2YgaXQgYXMgYW4gb3B0aW1pc2F0aW9uIHRvIHJlZHVjZSBk
ZWxheSBvZiB0aGUgaW5mb3JtYXRpb24gaW4gdGhlIGFjayBzdHJlYW0sIG5vdCBzb2xlbHkgYXMg
YSB3YXkgdG8gcmVkdWNlIHRoZSBiYW5kd2lkdGggY29uc3VtZWQgYnkgdGhlIGFjayBzdHJlYW07
IHRoZSBsYXR0ZXIgaXMgYSBoYXBweSBzaWRlIGVmZmVjdC4KCiAtIEpvbmF0aGFuIE1vcnRvbgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxp
bmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

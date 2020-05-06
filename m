Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6091A1C79CF
	for <lists+cake@lfdr.de>; Wed,  6 May 2020 21:01:52 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2C3813CB41;
	Wed,  6 May 2020 15:01:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588791711;
	bh=59jUKgoekEhTrJ5Orucr6P+xX48hAON+J1YPPtzClRo=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BeKzTts4ViRrP+zSjaUuJj1+cK+zRpObRX9bxztAjy6EK0dM327qEzURj+dk5BGfh
	 Xvf47j8+85/xcg35FpDOdCcvSTGhJUTJqUBzuYpKJGDDCr0+VHJdeqI6xYqUayMm12
	 cqGNujxMw0/o4IiAowx3LE4vH41uZk68dh2Qv6ptEyyxRHR8zo5WcIIkhKwc4RFirZ
	 rEtNCmH+K2Lg7suMS6u/p+/UqF9zonBJhpN+5DHJajmJEnQeXuEa+fjntFlo8tVbMF
	 H1U6G5uEYiKzu9j0dY+XNALrESB2+nMYyWnZz16urnNRUO8wSuqDrAyC9JjJjsxuN2
	 nTs/uQrZdDXEw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2E5EC3B29D
 for <cake@lists.bufferbloat.net>; Wed,  6 May 2020 15:01:49 -0400 (EDT)
Received: by mail-lj1-x232.google.com with SMTP id a21so3538455ljj.11
 for <cake@lists.bufferbloat.net>; Wed, 06 May 2020 12:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=m396YbKZ0aNyaXw0OzP0br7ZhcenbkzM580nznSRs5M=;
 b=WkLvPpFZk88zFEcBAJJBBWFfGPd5e00EzJpsXhpZSPHk3n4xcBs6NUuzKhc6rOm1ka
 TZu/V/wH6kIlT5LNFxDB8SymyHNot5qBAST6rvL5Ckc+aQ6utkKmW87r+uu2WrJggAG7
 8e+4KPGu0Rq8ZCUZhAOrDd/ZBmDTsNdwmlI6/uj3KuCEc3vL0YINAROXAq4aY74M0pg8
 MPvYwTxMXaTC+NRZP8EVp4rFYjHP/FIPn6kC4ZSyeS1RBoZDXX+Fa2T7d5a45LE05n0r
 DmKIcZLVwHedcw4h4RVzqc4s05WQsF1A6C4DnG5I3TFZal0blDi5GM49m6MBjlRQAohN
 Hpag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=m396YbKZ0aNyaXw0OzP0br7ZhcenbkzM580nznSRs5M=;
 b=lWLHp14oxT1RoxqV55Hlr+xCIVzqtKln91lg4p/KMYSMdTVWrBB51fxzcioc50ey7u
 6TaXj4n6Ax/z66TwSTtkuOPezVl90GgfV5BEuJJg9R4pMTJLV446OnuOP5ClITUWce02
 h8XNQ/IvREmM1Ey+OAUwLMRXrEKK3YDD8lSfsbEnWQh18twT00AOzklqmW7tCqZV26Hi
 MJp3otXIHxHDM5sPLNb28sPJx0xGbWK5scY7Ayj6itwJ8Srl1Ugsu5Fxv6g3kR5j++iM
 kX0KdpCezC7S2MDfbdQKXib6NCPRK7XhjBryTSvZSHR5BJrVMa1VlCymiAVGLAZAyHBT
 Jk9Q==
X-Gm-Message-State: AGi0PuYnBxG4f7NAEHbe/wJ93xzoEsTmXPxNIXy89aK6jKHYPrxnrrM1
 tHMCfJuEPVOwnvZsqcibJXRCVyyx
X-Google-Smtp-Source: APiQypKlvl5/I4sGQboU6f68Ye7gkrKmur257Ubhe6NbPoSjId1CzTqJPhGJ5lV7f+ltsWPoEeNLqg==
X-Received: by 2002:a2e:700a:: with SMTP id l10mr5682797ljc.88.1588791707988; 
 Wed, 06 May 2020 12:01:47 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-235-192-nat-p.elisa-mobile.fi.
 [83.245.235.192])
 by smtp.gmail.com with ESMTPSA id 4sm1828791ljf.79.2020.05.06.12.01.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 May 2020 12:01:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
Date: Wed, 6 May 2020 22:01:45 +0300
Message-Id: <C24C4CCB-C30D-452A-9386-5AA533F11CEE@gmail.com>
References: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
To: Avakash bhat <avakash261@gmail.com>
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
Cc: cake@lists.bufferbloat.net, "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Vybhav Pai <vybhavpai1999.vp@gmail.com>, Deepak K <deepakkavoor99@gmail.com>,
 Shrinidhi Varna <shrinidhivarna.171co145@nitk.edu.in>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiA2IE1heSwgMjAyMCwgYXQgOTo0MyBwbSwgQXZha2FzaCBiaGF0IDxhdmFrYXNoMjYxQGdt
YWlsLmNvbT4gd3JvdGU6Cj4gCj4gV2UgYXJlIHRyeWluZyB0byBpbXBsZW1lbnQgdGhlIEFDSyBm
aWx0ZXJpbmcgbW9kdWxlIG9mIENBS0UgaW4gbnMtMyAoTmV0d29yayBTaW11bGF0b3IpLgoKQWgg
eWVzLiAgU29ycnkgSSBkaWRuJ3QgcmVzcG9uZCB0byB0aGUgaW50cm9kdWN0aW9uIGVhcmxpZXIg
LSB3ZSB3ZXJlIHJpZ2h0IGluIHRoZSBtaWRkbGUgb2YgcHJlcGFyaW5nIGZvciBhbiBJRVRGIHZp
cnR1YWwgbWVldGluZy4gIFRoZSBkZWJyaXMgaXMgc3RpbGwgZmFsbGluZyBmcm9tIG9yYml04oCm
Cgo+IFdlIGhhZCBhIHF1ZXN0aW9uIG9uIHRoZSB3b3JraW5nIG9mIGFjayBmaWx0ZXJpbmcuIAo+
IElmIGFuIGluY29taW5nIGFjayB3aGljaCBjYW4gcmVwbGFjZSBhbiBlbGlnaWJsZSBhY2sgaW4g
dGhlIHF1ZXVlIGlzIGFib3V0IHRvIGJlIGVucXVldWVkLCBkbyB3ZSByZXBsYWNlIHRoZSBhY2sg
aW4gdGhlIHF1ZXVlIHdpdGggdGhlIGluY29taW5nIGFjayAKPiBvciBkbyB3ZSBlbnF1ZXVlIHRo
ZSBhY2sgdG8gdGhlIHRhaWwgb2YgdGhlIHF1ZXVlIGFuZCByZW1vdmUgdGhlIGVsaWdpYmxlIGFj
ayBmcm9tIHRoZSBxdWV1ZT8KClRoYXQgc291bmRzIGxpa2UgYW4gaW1wbGVtZW50YXRpb24gZGV0
YWlsLiAgQnV0IHdoYXQgd2UgZG8gaW4gQ2FrZSBpcyB0byBzaW1wbHkgZW5xdWV1ZSBhbGwgdGhl
IHBhY2tldHMsIGFuZCBkZWFsIHdpdGggZXZlcnl0aGluZyBjb21wbGljYXRlZCBvbiBkZXF1ZXVl
LgoKQXQgdGhhdCBwb2ludCwgd2UgY2hlY2sgd2hldGhlciB0aGUgdHdvIHBhY2tldHMgYXQgdGhl
IGhlYWQgb2YgdGhlIHF1ZXVlIGFyZSBhY2tzIGZvciB0aGUgc2FtZSBmbG93LCBhbmQgaWYgc28s
IHdlIGZ1cnRoZXIgY2hlY2sgd2hldGhlciB0aGUgaW5mb3JtYXRpb24gaW4gdGhlIGZpcnN0IHBh
Y2tldCBpcyByZWR1bmRhbnQgZ2l2ZW4gdGhlIHByZXNlbmNlIG9mIHRoZSBzZWNvbmQgcGFja2V0
LiAgSWYgdGhlcmUgaXMgaW5mb3JtYXRpb24gaW4gdGhlIGZpcnN0IHBhY2tldCB0aGF0IGlzIG5v
dCBhbHNvIHByb3ZpZGVkIGJ5IHRoZSBzZWNvbmQgcGFja2V0LCB0aGUgZmlyc3QgcGFja2V0IGlz
IGRlbGl2ZXJlZC4gIE90aGVyd2lzZSB0aGUgZmlyc3QgcGFja2V0IGlzIGRyb3BwZWQsIGFuZCB0
aGUgc2Vjb25kIHBhY2tldCBtb3ZlcyB0byB0aGUgaGVhZCBvZiB0aGUgcXVldWUuICBUaGlzIHBy
b2Nlc3MgbWF5IHJlcGVhdCBzZXZlcmFsIHRpbWVzIGlmIHRoZXJlIGFyZSBzZXZlcmFsIGNvbnNl
Y3V0aXZlLCByZWR1bmRhbnQgYWNrcyBpbiB0aGUgcXVldWUuCgpUaGUgaW1wb3J0YW50IHBhcnQg
aXMgdGhlIHNldCBvZiBydWxlcyBkZXRlcm1pbmluZyB3aGV0aGVyIHRoZSBhY2sgaXMgcmVkdW5k
YW50LgoKIC0gSm9uYXRoYW4gTW9ydG9uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

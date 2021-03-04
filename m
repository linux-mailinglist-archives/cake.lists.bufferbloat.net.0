Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA9132CE2C
	for <lists+cake@lfdr.de>; Thu,  4 Mar 2021 09:14:28 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 456C33CB38;
	Thu,  4 Mar 2021 03:14:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614845667;
	bh=KNevKDh9Wb2OVWfCkdByVaw8x3wDm3nEa1w5Fk6v54A=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fWq2rmJJRx3iYkLUmmKByGrd4XhGMH7jX6cslXIOH63XSV75aKhzekoGWKDD8V8DV
	 kmbfdNZwPRr1X4s+jujpZHa+WpV1pxxRaBd7ZvNm2eQbAl92DO2EmQYHYRM0uSNdvA
	 yK18koDDC5HEjCD6QfP7Cnt3q374KBS/uVG+Pqj7B7NH8fQxRlJXwfDiK9JfyUSRS8
	 zPf1fJnblvEHoUtIKD7wO5WSFc7KHGtcUbXrMYwqVTeaOefmbY5pSwsO5xDglkYOVc
	 7JLHAAu+JE/FIDpSVeRS8NJXGH2TA6OlnOViaWOPLUF6Zbfuup2ShKBe62eFl6Dy+o
	 51XwafLcZucpQ==
X-Original-To: Cake@lists.bufferbloat.net
Delivered-To: Cake@lists.bufferbloat.net
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2F2803B2A4
 for <Cake@lists.bufferbloat.net>; Thu,  4 Mar 2021 03:14:26 -0500 (EST)
Received: by mail-lj1-x22a.google.com with SMTP id k12so23199003ljg.9
 for <Cake@lists.bufferbloat.net>; Thu, 04 Mar 2021 00:14:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=+295ZKoEF3+D3UMmLo5n3Te2W90jhf3MVWbZoQoiiLA=;
 b=nCoZrYMsvklHyvvLKT2V9KPeCf9CQvcT9B6IyYJXjFGX5clWm0gqYwfXdsFAaQO4rT
 ovjhyXWJxWMcYYydacI3u+GzS0dC2KPUzFV8ITi+JCDNZri4BEoxz5NNnexQxZzp64/m
 R2wWqrQv9jR5Zi/V89ItcczxJzI8+gFjgsdk5W9rYYkBirAENmN8zIWXl8z8qxRvSz2T
 C5FLn+KJbfgg0QNvUNmhtfkXA3570qyTH5bqcG67+nn6dpaFyF0i1OtgTtFHxfMXQ31P
 c/SsJk+sBxN8zc8luq4jpeqnyNC9QzpKE/YIC51YvygowWZR1VmwF/tZKbJ0Z278T+Ar
 Qspg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=+295ZKoEF3+D3UMmLo5n3Te2W90jhf3MVWbZoQoiiLA=;
 b=Jz/FvoxnF6V3LI5ipqFMopQ1ecWGkB/UK/FGGtYWvsrm2Q/kty432trK0ndgParN5s
 PwvO9hjgjZLRB2KeJy8YJ4agi9I+ELm/JCbL50BfEkH6MJ0CeDA3GHAJ/4WUzlz/F+y4
 Or0wagr73NZw1tNbXjY+r5XaW2eLFvFi39oGhHI06TzVfDT6ONkkfS0lKf0HIIeYM1Gm
 9tp3t7bLEGfWbOdC8v6vEb/Y1D/9yqnZ+dPYhM8+LY3xRL0jmBGH6Y+CGIJZCIE7aO3l
 b4qd1U43qo7C4vTj4mUNhygHkzV3ODboCtS9s1lDKs9QobP6szbfAQC3H3pDMObDoHW6
 T5nw==
X-Gm-Message-State: AOAM530RrMCDovS6j4Xsq6qMMFzRbv8cnHMXzbXhLvzULeg6zb3Cpi9W
 x7lVqwpFHRqptQmURUALMKu7PCIqTe0=
X-Google-Smtp-Source: ABdhPJwviQE++ljN7Zf8hJQEuCPuk18ZC+00pAYudpFJbvhGb+H5Jshp+YTk901KYCRWBULWhlgZHw==
X-Received: by 2002:a2e:908f:: with SMTP id l15mr1635582ljg.473.1614845664520; 
 Thu, 04 Mar 2021 00:14:24 -0800 (PST)
Received: from jonathartonsmbp.lan (176-93-29-60.bb.dnainternet.fi.
 [176.93.29.60])
 by smtp.gmail.com with ESMTPSA id w1sm1588539lfu.239.2021.03.04.00.14.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Mar 2021 00:14:23 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.7\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CADmwGqvcnFbAnwqeFEKgYgmBA2CqB=6Gv8zwLbCrR470_ritKQ@mail.gmail.com>
Date: Thu, 4 Mar 2021 10:14:22 +0200
Message-Id: <ABF98FD1-417C-4706-9423-FFE80CD991B6@gmail.com>
References: <CADmwGqvtAg9p_+RHN2bGms=8XLNU698irJ_VVoXjYpZ2v7=Vyw@mail.gmail.com>
 <9C791D21-7FC9-425E-9167-EC7660BF38F9@gmail.com>
 <CAA93jw7RP_xLJetKJqiEBH_bgG6_P=AGExZF9VTYs=3hoJH1vQ@mail.gmail.com>
 <FB137C01-AE54-4E90-A32C-CC0D8DE0F405@gmail.com>
 <CAA93jw59J7+6t-Gm_Q4+mo42BtkaqUct8SdWB1WKiD91akJMxQ@mail.gmail.com>
 <E562AC96-88D9-4EE8-994E-97546EF71A0C@gmail.com>
 <CADmwGqvcnFbAnwqeFEKgYgmBA2CqB=6Gv8zwLbCrR470_ritKQ@mail.gmail.com>
To: Thomas Croghan <tcroghan@lostcreek.tech>
X-Mailer: Apple Mail (2.3445.9.7)
Subject: Re: [Cake] ISP Implementation
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
Cc: Cake List <Cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiA0IE1hciwgMjAyMSwgYXQgODozMSBhbSwgVGhvbWFzIENyb2doYW4gPHRjcm9naGFuQGxv
c3RjcmVlay50ZWNoPiB3cm90ZToKPiAKPiBTbyB0aGlzIHdvdWxkIGJlIHByZWZlcmFibGUgcmln
aHQ/IDxUaGVvcmV0aWNhbGx5IHVubGltaXRlZCBiYW5kd2lkdGg+IC0tIDxDYWtlIEluc3RhbmNl
IExpbWl0aW5nIGJhbmR3aWR0aCBnb2luZyBsZWZ0IHRvIHJpZ2h0PiAtLSA8U29tZSBzb3J0IG9m
IGxpbWl0IHRvIDEwMCBNYnBzPiAtLSA8Q2FrZSBJbnN0YW5jZSBMaW1pdGluZyBiYW5kd2lkdGgg
Z29pbmcgcmlnaHQgdG8gbGVmdD4gLS0gPDEwIHggMjUgTWJwcyBDdXN0b21lcnM+CgpZZXMsIHB1
dHRpbmcgdGhlIENha2UgaW5zdGFuY2VzIGFzc29jaWF0ZWQgd2l0aCB0aGUgYmFja2hhdWwgbGlu
ayB1cHN0cmVhbSBvZiB0aGUgbGluayBpbiBib3RoIGRpcmVjdGlvbnMgbGlrZSB0aGF0IGlzIGJl
dHRlciBmb3IgYSBudW1iZXIgb2YgcmVhc29ucy4gIFlvdSBjYW4gc3RpbGwgaGF2ZSB0aGUgaW5z
dGFuY2VzIG1hbmFnaW5nIGluZGl2aWR1YWwgY3VzdG9tZXJzIG9uIHRoZSByaWdodC1oYW5kIHNp
ZGUsIG9yIGV2ZW4gZnVydGhlciB0byB0aGUgcmlnaHQuCgpJZiB0aGUgY3VzdG9tZXIgbGlua3Mg
YXJlIHBoeXNpY2FsbHkgd2lkZXIgaW4gdGhlIHVwc3RyZWFtIGRpcmVjdGlvbiB0aGFuIGlzIG1h
ZGUgYXZhaWxhYmxlIHRvIHRoZSBjdXN0b21lciwgdGhlbiB0aGVyZSdzIG5vIHByb2JsZW0gaW4g
ZG9pbmcgYWxsIHRoZSBwZXItY3VzdG9tZXIgd29yayBpbiBhbiBhZ2dyZWdhdGVkIHBvc2l0aW9u
LiAgVGhlIGRpZmZlcmVuY2UgKGluIHRoZSBsb25nIHJ1bikgYmV0d2VlbiB0aGUgdHJhZmZpYyB0
cmFuc21pdHRlZCBieSB0aGUgY3VzdG9tZXIgYW5kIHRoYXQgcmVsZWFzZWQgdG8gdHJhdmVyc2Ug
dGhlIGJhY2toYXVsIGlzIGxpbWl0ZWQgdG8gQVFNIGFjdGl2aXR5IG9uIE5vdC1FQ1QgdHJhZmZp
Yywgd2hpY2ggd2lsbCBiZSBzbWFsbCwgdW5sZXNzIHRoZXkgc3RhcnQgZmxvb2RpbmcgaW4gd2hp
Y2ggY2FzZSB0aGUgb3ZlcmxvYWQgcHJvdGVjdGlvbiB3aWxsIGtpY2sgaW4gYW5kIHN0YXJ0IGRy
b3BwaW5nIGEgbG90IG9mIHBhY2tldHMuICBUaGlzIGlzIGFsc28gd2hhdCB5b3UnZCBleHBlY3Qg
dG8gc2VlIHdpdGggYSB3ZWxsLWJlaGF2ZWQgcG9saWNlciBpbiB0aGUgc2FtZSBwb3NpdGlvbi4K
CiAtIEpvbmF0aGFuIE1vcnRvbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApo
dHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

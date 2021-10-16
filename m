Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFB8430112
	for <lists+cake@lfdr.de>; Sat, 16 Oct 2021 10:05:13 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id BDF153CB4E;
	Sat, 16 Oct 2021 04:05:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634371511;
	bh=aGXiT/HEBxq733l/H89a5XNKB0b1G5rAKhWObojfJKc=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M6sxwuQDbcDkkJzFGMk8kvptgYSE8tcKjOOslXl2+GEhhJBqlB8nO0+rnzeK58Us3
	 Gy6KJdfAkzxhSzGLtioguMBj9/xtMzYVBeA2WKfiRDdWPm8maLeft5NZ5t6JaiFCmm
	 qLG0XemyGFen7jGlChq8Tw7wSlanK0P3PphGoWVahf4tYuZvgrcVVIwHPXRQ3BeBit
	 KwOz9VNitt/ORH4YV9gOyPJQ4xM/hawPYTbsMetQ4k6Cq6fwE1HkvcTghKnX+vQn/1
	 sLsPud1oA9EVXrxiJP9IqAq2qci4kSqi03USp6t4f6nJYUw4YUZkPsNEBCUiP1w+wi
	 LgoIHWu8zqxdw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B610C3B2A4;
 Sat, 16 Oct 2021 04:05:09 -0400 (EDT)
Received: by mail-lf1-x12e.google.com with SMTP id x192so16920255lff.12;
 Sat, 16 Oct 2021 01:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=gTFhe/oIBXLZod3YhsrkMBIaCC0ODvdRK3Tkx6Nr6vU=;
 b=BFuBCKqjsXJPPybqcppEE7MWLgQYJhBAMfLTG0J2fY4RS5WV1Wa35XEzMLw9TgOFkP
 wtrIWUPzC6CtzdTSSOKeYmdeWV0hIgk09GOyS4w9wj/lIct7FX8tQyTNjjD6WwsLxrP7
 tJEhUoJ63idLJhJQWEizjPuaAw3a+0W8Kbk//kil03pPoT1BifMdUZEsr4E37sCFaT1g
 J3XYc9gW1j7hyHvlAlj0RzBngcXhXucewSR28+sUK2h68W4KQW7UCiyt0OhXYzQtuXeK
 K5FtokMNUBeppKo8htWaWr6N/dhKQtEW3Ptt7M5c6V3phttqpKFXFBaVh1vt4K2pA9A1
 jPeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=gTFhe/oIBXLZod3YhsrkMBIaCC0ODvdRK3Tkx6Nr6vU=;
 b=zgQUGzMI/gv3kdmvHc4gBXtFCvD5TbevCkfjciC14+cmvjcA5sda65QRO9/UsGY+lv
 qmXswdFsBen8K8bYRX5CZBHZ01/yE7vloPeSrsYEFrKE8f9lQZU57VAR2evp6mohayxW
 hV0RURroHSyZFD1CSNQYW2dQRqhXXkgb9sdNGi3lMVhoGtBohVwX8TY9M0kN7SxifGvi
 b5FQvrU4Nqn1/ikeBLiityJfvYrOrbXfc4hngmONrEUM7GsgTxkTQUIGzhy7M4g88e0O
 rD2kJooBxo4X8zZz0kNRREeHIn3sbzSZWijwunD4Y1N4vJS3P5qAUIxqmxqoJIhirUpD
 33ug==
X-Gm-Message-State: AOAM5314CTQeBEhbdRe5IMKOvJZMP++YKZLr0RXLmvxu0hox66YsSPUm
 8uBe5U2dWqX1KbQDcgD1Lxc=
X-Google-Smtp-Source: ABdhPJy0cFpjm52vxyHCcwpR0IKAq2Ge5xUmCvjRCIaK2y2+1KjddhMmoJ8ckhXfNsLqSEURcYew5g==
X-Received: by 2002:a05:651c:1791:: with SMTP id
 bn17mr17888802ljb.516.1634371507559; 
 Sat, 16 Oct 2021 01:05:07 -0700 (PDT)
Received: from smtpclient.apple (176-93-88-52.bb.dnainternet.fi.
 [176.93.88.52])
 by smtp.gmail.com with ESMTPSA id y35sm711586lfa.16.2021.10.16.01.05.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 16 Oct 2021 01:05:07 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAA93jw7VVX_6UxyqczSZ3YoDRo9QvRZTqWqY9+0PC=rOB7FjeQ@mail.gmail.com>
Date: Sat, 16 Oct 2021 11:04:57 +0300
Message-Id: <95231AF9-DCCA-4D41-9BF4-8F55307F45F6@gmail.com>
References: <CAA93jw43C7CB-4Jv7h9NvvzjROdO5p2rVbPSZnmSJf0JAaCyaQ@mail.gmail.com>
 <CBBD435B-5A6F-408D-B17C-B28F326B49AC@gmx.de>
 <CAA93jw48afWujaJm8Sn+J-uEHb7iKLx57p7e5d=Qw9QyX=Csqg@mail.gmail.com>
 <87sfx31dt5.fsf@toke.dk>
 <CAA93jw43kC8a4_8YL3dobgvpkLO5UPbOm8yeFvwhh0dgV9eiuw@mail.gmail.com>
 <87pms71cmr.fsf@toke.dk>
 <CAA93jw7VVX_6UxyqczSZ3YoDRo9QvRZTqWqY9+0PC=rOB7FjeQ@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
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

PiBPbiAxNSBPY3QsIDIwMjEsIGF0IDE6MTcgYW0sIERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWls
LmNvbT4gd3JvdGU6Cj4gCj4+IFlvdSBjYW4gYWxzbyBzdWJzY3JpYmUgdG8gTGludXggbGlzdHMg
YnkgaW1wb3J0aW5nIHRoZSBtYWlscyBmcm9tIExvcmUsCj4+IGFzIG9uZSBvZiB0aGUgcmVwbGll
cyBpbiB0aGUgdGhyZWFkIGFib3ZlIHBvaW50ZWQgb3V0LiBCZWVuIG1lYW5pbmcgdG8KPj4gc3dp
dGNoIHRvIHRoYXQgbXlzZWxmLCBidXQgaGF2ZW4ndCBnb3R0ZW4gYXJvdW5kIHRvIGl0IHlldC4u
Lgo+IAo+IEkgYXR0ZW1wdGVkIHRvIHN1YnNjcmliZSBhZ2Fpbiwgbm90aGluZyBoYXBwZW5lZC4K
PiAKPiBmaWd1cmluZyBvdXQgbG9yZS4uLiBpcyB0b28gbXVjaCB3b3JrIGZvciB0b2RheS4gSSdk
IHJhdGhlciBoYW1tZXIKPiBzbWFsbCB0aGluZ3MgaW50byBvYmxpdmlvbiBvbiBteSBib2F0Lgo+
IAo+IHBsZWFzZSBmZWVsIGZyZWUgdG8gcGFzcyBhbG9uZyBteSBjb21tZW50cyBhbmQgdGhlIHNj
ZSB0ZWFtcyBmaW5kaW5ncwo+IGludG8gdGhhdCB0aHJlYWQuCgpodHRwczovL2xvcmUua2VybmVs
Lm9yZy9hbGwvMzA4Qzg4QzYtRDQ2NS00RDUwLTgwMzgtNDE2MTE5QTM1MzVDQGdtYWlsLmNvbS8K
CkkgaGF2ZW4ndCB5ZXQgcG9zdGVkIGEgbGluayB0byB0aGUgV0dMQyBPYmplY3Rpb25zIGRvY3Vt
ZW50LiAgSSB3aWxsIGlmIGl0IHNlZW0gcyBuZWNlc3NhcnkgdG8gZG8gc28uCgogLSBKb25hdGhh
biBNb3J0b24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Q2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0
cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

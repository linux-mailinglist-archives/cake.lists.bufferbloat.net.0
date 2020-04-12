Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A45D01A5E2B
	for <lists+cake@lfdr.de>; Sun, 12 Apr 2020 13:02:45 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 67FA53CB38;
	Sun, 12 Apr 2020 07:02:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1586689364;
	bh=jqBWe+CJL66E9RmKC02CG/OT8T8CHdLgrYLZrFot3Cc=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=F1wxPmDI4uVbjWQQLhV7Yv9FzA+o4IZ/GhQIGGORVIZ1WLaTeLa33yjwTZT/v1lHw
	 tenYbrmTiNg4ULX4hLwzuRddM1XEAIueuYkFiXnEfROwYbN0P/PlnaCjEem/FWaMDS
	 v6s6Sxc65Vv7P3I9296f223UtNTG0Ps7AHD/mTX4htJZPZc58LF1wb/h0mr1WAg7ff
	 1+HJUMOue/cN6jFuy0NdcMuEHVsoFDgde7yLwIC9Y2HCGbIJbI47kzy/j7pr3z41sE
	 qRN7V6gkk/lSAjqmSs2ZrTgEqQqaFT88BlO6cRUZwuA9uBcOQ4gCmLHbSusNnWfM3J
	 cBSIkZVyEkrng==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7FF503B29D
 for <cake@lists.bufferbloat.net>; Sun, 12 Apr 2020 07:02:42 -0400 (EDT)
Received: by mail-lj1-x22f.google.com with SMTP id k21so6137422ljh.2
 for <cake@lists.bufferbloat.net>; Sun, 12 Apr 2020 04:02:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=KjrqQX22CMmn1EmCYmV4qdyJZRR3hN0TW3C1UV+BST8=;
 b=lqQpBeLCTYQIvX1pE2ff9A9bNPoYTeBSEZfm1ZBqvzKm7CzW3OXGdhN4vTRjjeZ/yR
 vSReUIDkp4C+/Z3kbqydCvSaX8NJtOYOoESmI6G1Jy7Lm2hKPqAeVwcFME3JapWJWwNn
 50e+LoGetKKL5wcDu0s5KXqIYZW1YKmatG24023LOfCenTvKPpSkpkj01V2QKmhXMx/C
 bbXkmg+InIydioitoW83x1OQahq2fYMXJ1aMImiASqG4r0n3O8L9RCI8M3+gxVCxEQkT
 a5Lj8UBjWnBlGpiJLHyN/d7IoowcY27ZshUC/JxH0WryiyHCbSvafrU5H+uRtmpoNPfi
 4ycg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=KjrqQX22CMmn1EmCYmV4qdyJZRR3hN0TW3C1UV+BST8=;
 b=K7kRp8l18T8J1W2JG/pQgmhpgncz6SLsS9XxKfJOPgZGztQGYax1BTp7Oo+EhfUneQ
 PGXjOXH9wr3REA/+7kXh7QRJ09KGCbxYdsmW7KU/NfvowtztQVkN0lFly0SBeW//lr3g
 7PLXlyO9ure0Oav7Nd0JqBxTUa30gwuHQbemf64QA+wuLKF6vkBO2ToN9yx/bEK/Uc45
 RvU2weurB66dFnStpE4z53cdwHzh9YD80ktEC7qvnq2/21txmMxFiflJ/eoFY17VAOJi
 tcz9JiMvaA8Pf4lAilHgA4KP99y0EwlslzwYQtX+ZAXRX7qAlS76m0IiNc0EU8gWhmb4
 QTwg==
X-Gm-Message-State: AGi0PuZGckLtbRBePSOAVHHfzYGMprJMCVOdsYVDHukxJCTPMYqzKQlp
 DeunybLYRsnq4o9gM5Wf3zM=
X-Google-Smtp-Source: APiQypKNAW1926cqNc+JXIzSwHNcVPZjTU59GaxTBh2dx5xCxH6p0sGTh4lC53FYa3+CApWUQSg40g==
X-Received: by 2002:a2e:81c6:: with SMTP id s6mr3914988ljg.132.1586689361204; 
 Sun, 12 Apr 2020 04:02:41 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-249-104-nat-p.elisa-mobile.fi.
 [83.245.249.104])
 by smtp.gmail.com with ESMTPSA id z9sm7228896lfd.9.2020.04.12.04.02.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 Apr 2020 04:02:40 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <F8BBD54C-8DF3-47A7-AE3D-560DD1A34449@darbyshire-bryant.me.uk>
Date: Sun, 12 Apr 2020 14:02:39 +0300
Message-Id: <43C11592-F4CF-484D-AFB7-037D1C961906@gmail.com>
References: <7BD9FB5D-7577-477A-9FF0-7BF90043C27B@darbyshire-bryant.me.uk>
 <B37EB18D-CA01-464B-8924-7864FE9A327E@gmail.com>
 <F8BBD54C-8DF3-47A7-AE3D-560DD1A34449@darbyshire-bryant.me.uk>
To: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] Thinking about ingress shaping & cake
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAxMiBBcHIsIDIwMjAsIGF0IDExOjIzIGFtLCBLZXZpbiBEYXJieXNoaXJlLUJyeWFudCA8
a2V2aW5AZGFyYnlzaGlyZS1icnlhbnQubWUudWs+IHdyb3RlOgo+IAo+IEnigJltIHdvbmRlcmlu
ZyB3aGF0IHRoZSByZWxhdGlvbnNoaXAgYmV0d2VlbiBhY3R1YWwgaW5jb21pbmcgcmF0ZSB2cyBz
aGFwZWQgcmF0ZSBhbmQgbGF0ZW5jeSBwZWFrcyBpcz8gIE15IGJyYWluIGNhbuKAmXQgY29tcHV0
ZSB0aGF0IGJ1dCBJIHN1c3BlY3QgaXMgcmVsYXRlZCB0byB0aGUgcnR0IG9mIHRoZSBmbG93L3Mg
YW5kIGhlbmNlIGhvdyBxdWlja2x5IHRoZSBzaWduYWxsaW5nIG1hbmFnZXMgdG8gY29udHJvbCB0
aGUgaW5jb21pbmcgcmF0ZS4KClRoZXJlIGFyZSB0d28gaW1wb3J0YW50IGNhc2VzIHRvIGNvbnNp
ZGVyIGhlcmU6ICB0aGUgc2xvdy1zdGFydCBhbmQgY29uZ2VzdGlvbi1hdm9pZGFuY2UgcGhhc2Vz
IG9mIFRDUC4gIEJ1dCBpbiBnZW5lcmFsLCB0aGUgYmlnZ2VyIHRoZSBkaWZmZXJlbmNlIGJldHdl
ZW4gdGhlIGxpbmsgcmF0ZSBhbmQgQ2FrZSdzIHNoYXBlZCByYXRlLCB0aGUgbGVzcyBsYXRlbmN5
IHBlYWtzIHlvdSB3aWxsIG5vdGljZS4KClNsb3ctc3RhcnQgYmFzaWNhbGx5IGRvdWJsZXMgdGhl
IHNlbmQgcmF0ZSBldmVyeSBSVFQgdW50aWwgdGVybWluYXRlZCBieSBhIGNvbmdlc3Rpb24gc2ln
bmFsLiAgSXQncyB0aGVyZWZvcmUgbGlrZWx5IHRoYXQgeW91J2xsIGdldCBhIGZ1bGwgUlRUIG9m
IHF1ZXVlZCBkYXRhIGF0IHRoZSBtb21lbnQgb2Ygc2xvdy1zdGFydCBleGl0LCB3aGljaCB0aGVu
IGhhcyB0byBkcmFpbiAtIGFuZCBtb3N0IG9mIHRoaXMgd2lsbCBvY2N1ciBpbiB0aGUgZHVtYiBG
SUZPIHVwc3RyZWFtIG9mIHlvdS4gIFR5cGljYWwgSW50ZXJuZXQgUlRUcyBhcmUgYWJvdXQgODBt
cy4gIFlvdSBzaG91bGQgZXhwZWN0IGEgc2xvdy1zdGFydCByZWxhdGVkIGxhdGVuY3kgc3Bpa2Ug
ZXZlcnkgdGltZSB5b3Ugc3RhcnQgYSBidWxrIGZsb3csIGFsdGhvdWdoIHNvbWUgb2YgdGhlbSB3
aWxsIGJlIGF2b2lkZWQgYnkgdGhlIEh5U3RhcnQgYWxnb3JpdGhtLCB3aGljaCB1c2VzIGluY3Jl
YXNlcyBpbiBsYXRlbmN5IGFzIGEgY29uZ2VzdGlvbiBzaWduYWwgc3BlY2lmaWNhbGx5IGZvciBn
b3Zlcm5pbmcgc2xvdy1zdGFydCBleGl0LgoKSW4gY29uZ2VzdGlvbiBhdm9pZGFuY2UsIFRDUCB0
eXBpY2FsbHkgYWRkcyBvbmUgc2VnbWVudCB0byB0aGUgY29uZ2VzdGlvbiB3aW5kb3cgcGVyIFJU
VC4gIElmIHlvdSBhc3N1bWUgdGhlIHNoYXBlciBpcyBzYXR1cmF0ZWQsIHlvdSBjYW4gY2FsY3Vs
YXRlIHRoZSBleGNlc3MgYmFuZHdpZHRoIGNhdXNlZCBieSB0aGlzICJSZW5vIGxpbmVhciBncm93
dGgiIGFzIDggYml0cyBwZXIgYnl0ZSAqIDE1MDAgYnl0ZXMgKiBmbG93IGNvdW50IC8gUlRUIHNl
Y29uZHMuICBGb3IgYSBzaW5nbGUgZmxvdyBhdCA4MG1zLCB0aGF0J3MgMTUwIEticHMuICBBdCAy
MG1zIGl0IHdvdWxkIGJlIDYwMCBLYnBzLiAgSWYgdGhhdCBudW1iZXIgdG90YWxzIGxlc3MgdGhh
biB0aGUgbWFyZ2luIHlvdSd2ZSBsZWZ0LCB0aGVuIHRoZSBwZWFrcyBvZiB0aGUgQUlNRCBzYXd0
b290aCBzaG91bGQgbm90IGNvbGxlY3QgaW4gdGhlIGR1bWIgRklGTyBhbmQgd2lsbCBiZSBoYW5k
bGVkIGVudGlyZWx5IGJ5IENha2UuCgogLSBKb25hdGhhbiBNb3J0b24KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBs
aXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGlu
Zm8vY2FrZQo=

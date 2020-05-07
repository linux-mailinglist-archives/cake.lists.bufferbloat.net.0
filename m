Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1997C1C845A
	for <lists+cake@lfdr.de>; Thu,  7 May 2020 10:09:26 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DD7E13CB41;
	Thu,  7 May 2020 04:09:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588838964;
	bh=o5v1w65d3O17T2sJdcYPl3OLWLZTzNaZPetGzbkK4Uo=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q687cnFQiL+Z0oVr46U3sLAGJlsbgemA4XppFT64YMiacZbEVNUsgKs1H8vuOMfen
	 K+MgWOXLAQvRhQu/9SXu97bCSbQn4ycG5RD8jkW2zl0cvFtwXR0CspF8clh7tcwwLJ
	 3wLqGSwZBqqvsMvG6yqbrgEE0+AAfziQJjyNv9XjN5+XujvV908D6EHTUHKbBGWdiS
	 /JgGXdP0y43wRLkEP7eFM2Gg3jbK72lmOQetjKe/68dHnFjuu2W1vt833DGc/gGajH
	 qZM4crmWw/OSORzlwos6XxvHstcHtMjuLG+RYNRj7XPhF4OPdBHpH5QlaKcr4X7ftB
	 87raYuzBXU3pw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B4BA83B29D
 for <cake@lists.bufferbloat.net>; Thu,  7 May 2020 04:09:22 -0400 (EDT)
Received: by mail-lj1-x232.google.com with SMTP id u15so5312769ljd.3
 for <cake@lists.bufferbloat.net>; Thu, 07 May 2020 01:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=1kdPeUtzZ979qjAq3Ise81WDksHwKCRt1onTuTHjX4c=;
 b=HZW2A20h9ttr0lN3ZO6T7RG9fm/YeXAfQ2/+SQ77k6te7OTed1WnXC7K3n6R7K+EMT
 lmC/K+FIdkwVulOxjrbjPa98L74RC8jyjdRGdDSkcy7oAEF+WR1ar5X2Dsena1BsI6de
 tVE3ABBFInR/IguM1SxeNMj2pBEnbIFBJD5lLoJ/FQTKNDs4qmj6iIBiGEH+D1O1mfD0
 dKnnLoF8Nv0CIlVryi81/lhbIfsVJCtuqoAp+3zCcRtGDirAYYo89Aijf04+ecKJeF6H
 WzpwrTQ9jAJhcpTuadBGT9JEgz32as3q6NvI+TYy6IGRBXQVmwJU4zU5CulZbzNlhLLz
 uGGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=1kdPeUtzZ979qjAq3Ise81WDksHwKCRt1onTuTHjX4c=;
 b=lP022i3i6Jl4132LQOiZdi2jKoA9k+Y4NJBoPLQarnoj9kXLGLdrazKDVKFtdSp2K9
 a+GS51VIEqtiPNGfKagEIbmXi6Vuo1FRQ8CAK7uIb+2RBTfTHgWAVqv8wvgQLPSKMl8h
 T4IRfKKnAL7V/PKbxth6LOaZd3wdOOGi+5ZbqcIlaCAB+8uxdNl8ajERaFtSGFtPZvh2
 Wm2d6JMl8OApLZgZSycXK7CFtQidqM3AZZh9fX/GiUfLz+CXU1U/NwpY/GGXKCN8xmZK
 kHREwDZB/RRWn5x45cLg0HIj2FsFRWYXsz519yYMzbGHBI12kxA0zJ7FlX3ykuGQ6hFX
 bLQw==
X-Gm-Message-State: AGi0PuZgPdimZd7eKUpwJHa0ha3SgG15381ha3VFk4vyB+6dBv2ZPXT8
 1A5iMUbVCXeOCUsj11lNEzUp1nau
X-Google-Smtp-Source: APiQypJ206NnFDKlzUMUWCm303b7kToajoqhFllvuLzhcsNCpwlWvs/wlHmn2IabOpWbXqX0eQW2ng==
X-Received: by 2002:a2e:96c2:: with SMTP id d2mr7826045ljj.214.1588838961587; 
 Thu, 07 May 2020 01:09:21 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-235-192-nat-p.elisa-mobile.fi.
 [83.245.235.192])
 by smtp.gmail.com with ESMTPSA id g22sm2800022ljl.17.2020.05.07.01.09.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 May 2020 01:09:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <E8AAEA5E-98A9-48A7-86F3-BE4621B4074B@darbyshire-bryant.me.uk>
Date: Thu, 7 May 2020 11:09:19 +0300
Message-Id: <EEADF1AF-4471-4A94-BB2E-5669A521B1B4@gmail.com>
References: <E8AAEA5E-98A9-48A7-86F3-BE4621B4074B@darbyshire-bryant.me.uk>
To: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] Latency target curiosity
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

PiBPbiA3IE1heSwgMjAyMCwgYXQgMTA6NTggYW0sIEtldmluIERhcmJ5c2hpcmUtQnJ5YW50IDxr
ZXZpbkBkYXJieXNoaXJlLWJyeWFudC5tZS51az4gd3JvdGU6Cj4gCj4gQSBjdXJpb3NpdHkgaGFz
IGFyaXNlbjogIEkgdXNlIGRpZmZzZXJ2NCBtb2RlIG9uIGEgMjBNYml0IGVncmVzcyBsaW5rLiAg
QnVsayB0aW4gaGFzIOKAmGNhcGFjaXR54oCZIHRocmVzaG9sZCBvZiAxLjJNYml0IGFuZCBiZWNh
dXNlIGl04oCZcyBhIHNsb3cg4oCZdGluJywgdGhlIGRlZmF1bHQgdGFyZ2V0ICYgaW50ZXJ2YWwg
dmFsdWVzIGdldCBvdmVycmlkZGVuIHRvIDE0LjZtcyBhbmQgMTA5LjZtcyByZXNwZWN0aXZlbHku
ICBUaGUgMyBvdGhlciB0aW5zIGFyZSA1bXMgJiAxMDBtcyBkZWZhdWx0cy4KPiAKPiBJIGhhdmUg
YSBiYWNrdXAgam9iIHRoYXQgYnVsayB1cGxvYWRzIDUgc2ltdWx0YW5lb3VzIGZsb3dzIHRvIE9u
ZWRyaXZlLiAgVGhlIHNwYXJzZV9kZWxheSwgYXZlcmFnZV9kZWxheSAmIHBlYWtfZGVsYXkgZmln
dXJlcyBzZXR0bGUgb24gMzIsIDM4ICYgNDMgbXMgcmVzcGVjdGl2ZWx5IHdpdGggYXJvdW5kIDkg
ZHJvcHMgcGVyIHNlY29uZCBvbiB0aGF0IHRpbi4KPiAKPiBJ4oCZbSBjdXJpb3VzIGFzIHRvIHdo
eSB0aGUgcmVwb3J0ZWQgZGVsYXlzIGFyZSBvdmVyIGRvdWJsZSB0aGUgdGFyZ2V0IGxhdGVuY3k/
CgpJdCdzIGxpa2VseSB0aGF0IHRoZXJlJ3MgYSBtaW5pbXVtIGN3bmQgaW4geW91ciBzZW5kZXIn
cyBUQ1Agc3RhY2ssIHdoaWNoIG1heSBiZSBhcyBsYXJnZSBhcyA0IHNlZ21lbnRzLiAgSW4gTGlu
dXggaXQgaXMgMiBzZWdtZW50cy4gIE5vIG1hdHRlciBob3cgbXVjaCBjb25nZXN0aW9uIHNpZ25h
bGxpbmcgaXMgYXNzZXJ0ZWQsIHRoZSB2b2x1bWUgb2YgZGF0YSBpbiBmbGlnaHQgKGluY2x1ZGlu
ZyByZXRyYW5zbWlzc2lvbnMgb2YgZHJvcHBlZCBwYWNrZXRzKSB3aWxsIGFsd2F5cyBjb3JyZXNw
b25kIHRvIGF0IGxlYXN0IHRoYXQgbWluaW11bSBwZXIgZmxvdy4gIElmIHRoZSBwYXRoIGlzIHNo
b3J0LCBtb3N0IG9mIHRoYXQgdm9sdW1lIHdpbGwgZXhpc3RzIGluIHF1ZXVlcyBpbnN0ZWFkIG9m
IG9uIHRoZSB3aXJlLgoKRm9ydHVuYXRlbHksIGJhY2t1cHMgYXJlIHVubGlrZWx5IHRvIHN1ZmZl
ciBmcm9tIGEgc21hbGwgYW1vdW50IG9mIGV4dHJhIGxhdGVuY3ksIGFuZCBDYWtlIHdpbGwgaXNv
bGF0ZSB0aGVpciBpbmZsdWVuY2UgZnJvbSBvdGhlciBmbG93cyB0aGF0IG1heSBiZSBtb3JlIHNl
bnNpdGl2ZS4KCiAtIEpvbmF0aGFuIE1vcnRvbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7F96A0781
	for <lists+cake@lfdr.de>; Thu, 23 Feb 2023 12:37:30 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7E66E3CB41;
	Thu, 23 Feb 2023 06:37:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1677152247;
	bh=1vFhNO0VHV+K2Hyv7XvaXyVokmo01mW6+Irq9Zmi4K4=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=lcFDEIhaWnc94tSH7LJ5cjeXgHT1yyJbbDZrPAgXgb6IN8sv/AVyPVlEBO5GA+sm0
	 bZHGwKWOC5SMyxHlcsAZnJYiLSdY8p9sLNk/sEBQrxXK+oEwfrYIQc6/7XBz2AG8of
	 kAu5mcnSTJiSapO7LzmeGNHX40HdiKcg9kfmUQaY8euUGMxfdu8wi3DIJscSzQJiSr
	 peyFzXPRQ4w7dY9jrJdwAJmyqvET3Fq0Pen0SY0RMZRfjdhDGeZvsbFJISW+CJeRrz
	 MNtT4Opdxc6w3qlWMAAdCXWrAtdebcLGUROvsfbysGjkgJzBA8eKN518IULFnePD+0
	 fiA2hBvYQCBdg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 990283B2A4
 for <cake@lists.bufferbloat.net>; Thu, 23 Feb 2023 06:37:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1677152243; bh=YghsvhSreuHS5ACAp6uov6GNPlSpkLd0BSqVRjGANXo=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=KlUFReLjVNbS/a08lYrOUOgPx0hj4jriwU8W+BgBtnFCaSakfy3Vm75OTjCA8N36H
 Qqjkp4w/GOEsX5qp2meCJUU2fTU6i0QGnJmQOoiVMsuXWmP7K627rbfI5Ib4Tl9sFt
 ZWYj54W5tNdZuv73fnKsN72/s7yYoys2dGWmk8KtLvyLYiNvHHSPKpgpYNGgl5xRbN
 FYT+OxZFfvsJmu9esiAUf8HhxXUOf7IzIUgYrvYtk2RDkWpmvTbPt9VGy4fBUKJZNf
 tvV/oPe1QMbLACQCmyyZX7RmwKbI8tCY9v1vORc8Tzd1IR66srEfqIvQqmOMniB9fx
 uuMDwkfUINz7A==
To: Jonathan Morton <chromatix99@gmail.com>, Dave Taht <dave.taht@gmail.com>
In-Reply-To: <E54B293B-A85E-428F-9016-C8E71E82CF13@gmail.com>
References: <CAA93jw6JQjJxaG9Wzpi4S9iW_=M6sD=6hnN6Z54XyJRS8+cyhA@mail.gmail.com>
 <E54B293B-A85E-428F-9016-C8E71E82CF13@gmail.com>
Date: Thu, 23 Feb 2023 12:37:23 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87y1oolij0.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] big tcp
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Sm9uYXRoYW4gTW9ydG9uIHZpYSBDYWtlIDxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3Jp
dGVzOgoKPj4gT24gMjMgRmViLCAyMDIzLCBhdCAzOjM1IGFtLCBEYXZlIFRhaHQgdmlhIENha2Ug
PGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToKPj4gCj4+IGRvZXMgdGhpcyBicmVh
ayBjYWtlPwo+PiAKPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2L2RlODExYmYzLWUy
ZDgtZjcyNy03MmJjLWM4YTc1NGE5ZDkyOUB0ZXNzYXJlcy5uZXQvVC8KPgo+IEl0IGxvb2tzIGxp
a2UgdGhleSd2ZSBpbmNsdWRlZCBwYXRjaGVzICp0byogQ2FrZSB0byBoYW5kbGUgYW50aWNpcGF0
ZWQKPiBicmVha2FnZS4gIFRoaXMgaXMgb25lIG9mIHRoZSBncmVhdCB0aGluZ3MgYWJvdXQgaGF2
aW5nIGl0IHVwc3RyZWFtZWQuCgpZdXAsIGluZGVlZC4gSW4gdGhpcyBjYXNlIHRoZXkgZGlkIHNv
IHdpdGhvdXQgQ2MnaW5nIHRoZSBtYWludGFpbmVyLAp0aG91Z2ggOigKCi1Ub2tlCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0
CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0
L2xpc3RpbmZvL2Nha2UK

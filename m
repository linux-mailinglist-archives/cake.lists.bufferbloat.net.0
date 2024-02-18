Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CD021859728
	for <lists+cake@lfdr.de>; Sun, 18 Feb 2024 14:37:25 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D96A73CB40;
	Sun, 18 Feb 2024 08:37:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1708263443;
	bh=syk4+wM204oZN073+GoIvBSzNbH8GndEgSlEaHsHsiM=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=CebLmAXRJ1NEwGg/WYhFIFE+uYMceX5CMkStp9j0mUroSYho9ItgutFt6FmKA7Aia
	 UfrcrAiEX8STxlvzUxc75deo5KsqpSXwypkqCHHWyTBcIdl2kfLMTV+KHYKYg82gom
	 Ux1xkm7N5/9fG0J5r0SP3/EAimg49grPnPq9Mu2Xo9Jb+QCZZWlp4Gzj1e61k3WQ54
	 +BshWHRORU4F3ViHqTbfWDktYS9Q9RvzwLqH0+IEdrzEJV8h6ydpnrmRoBoWX6vjaQ
	 UOGVfxrnWkbK7mkU4kEKGM7+LfJ70t9/2qTe7cX903Lahjufp+TNdizvcm8aKA+L+t
	 Oegs0rALVYyZg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4589F3B29D
 for <cake@lists.bufferbloat.net>; Sun, 18 Feb 2024 08:37:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1708263440; bh=8beWY+QrDy6/+fh4tUHNOdrE7RoB91XHm/c7LPGud7k=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=GUbtvtS8v2m1TvO7hr0NrnicZY2D4P9ghIfW+pi7QCLfw1B3hKHGAJSUlYPMlANzY
 DvM2Gxik2XBEp7RdjHz0kEp7aEUOwhIfvQO750c3hprddn29gMv3PsWlZHV5tkaOpQ
 SvtvSn2FtdNS+Ym97x1QGm9ByaevP6y78ccQQVQUor0nerm4FMATMaAmUKwT1bbnJQ
 EflF2DXJVMn2fiIGvKZEX0az/ECl3QW43msDcSJ0JrJam8O4mlnAX3Yv27YvGvvXv3
 2plgmdms06JiPegvMPmYBEMGu3+aRySJKXycaL4zp/ZQriLMR3qIoBKtOzXqJTxMs0
 ERQutmhQj2i+g==
To: Dave Taht <dave.taht@gmail.com>, Cake List <cake@lists.bufferbloat.net>
In-Reply-To: <CAA93jw7YeW4wTC2OL4AxeEPBOGL4sKN+e5Dtre_0VZCkOjkbCw@mail.gmail.com>
References: <CAA93jw7YeW4wTC2OL4AxeEPBOGL4sKN+e5Dtre_0VZCkOjkbCw@mail.gmail.com>
Date: Sun, 18 Feb 2024 14:37:19 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <875xyldhbk.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] cake's ack-filter vs GSO
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

RGF2ZSBUYWh0IHZpYSBDYWtlIDxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JpdGVzOgoK
PiBJdCBoYXMgYmVlbiB5ZWFycyBzaW5jZSBJIGxvb2tlZCBhdCBjYWtlJ3MgY29kZS4KPgo+IERv
ZXMgYW55b25lIHJlbWVtYmVyIHdoeSB3ZSBkbyBub3QgYWNrLWZpbHRlciBhIGdzby1zcGxpdD8K
CkJlY2F1c2UgYSBHU08gcGFja2V0IGNhbm5vdCBiZSBhIHB1cmUgQUNLLCBzbyBpdCB3b3VsZG4n
dCBiZSBmaWx0ZXJlZAphbnl3YXkuLi4KCi1Ub2tlCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVy
YmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

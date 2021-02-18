Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C41D31EF43
	for <lists+cake@lfdr.de>; Thu, 18 Feb 2021 20:10:30 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F2E433CB38;
	Thu, 18 Feb 2021 14:10:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1613675429;
	bh=z0uHHKZ+jw1JyMMn8reN7T0P3wMjZrui+op4MahyUNA=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=HlUE+tf9WAWGJNdNb/fDm3K+AsHhcf6KJtnXLPnxfggvc0Rv8uMEP3sXYT1d5QPFK
	 h1u6+LJylhzy2AdC7UDmcLYEwI340g0+nvBh59bnrZfDFD0vE0oaATVH8H6jIpzDxL
	 f0skAxS7JEcgRfZon4SaBCnnMYj0JfvadGIwgHtXUv7qAkP2QaSvOQyYDe53SXGrEk
	 9KLYdlc8pnRKNRI+aoJxzkkhZOs1ynEE7BMgb4uqsR1f6igZXX6fSYJRbLRLDZTZhv
	 TUPyxI+jjuc6vI1bfNetnQFjVBArzQ88b05Cr2CBk4l8JQpH4U302aeVhtcaMJ/1er
	 Pr91dVwuxN3AA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C20413B29D
 for <cake@lists.bufferbloat.net>; Thu, 18 Feb 2021 14:10:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1613675424; bh=Lo8qFEvXR0P8TUqmNPZBxatBwwABPVz/hINbGVxd5io=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=GOA7akWyV8KAtafvcYQo7EQyrxmi8DKW61k5f0F/hTMyscTKVgmDL0Z2yOZMcbIwX
 7uqd7+siXD5TXGZIcyQ80AJbDnYwDrTPApNOXZHFGUE5xvNnTuw94XFjrTzloCjmaQ
 M0OSdnOwjmnlBtNusTepYVLFqLnUD5+xJMS5MIPC7ZLR6mzuYpteIiRo2EYog+o+ru
 PLJYsZPJ05qWNtjvYnpMlByAMdI4cQAZ7m64CYidchF8EIPqyCWHGaH1UKQG4tgMvF
 YyfebOxiKCVN+2XxGsh0ZGINlPRp/UBh4twO5qJJ1GIJ6eyc+7xzGYdjjZ0YymB0rI
 /ANfAiEdqMedw==
To: Peter Lepeska <bizzbyster@gmail.com>, cake@lists.bufferbloat.net
In-Reply-To: <CANmPAYHxP9mdmPMsvR=bi=TSNi9+0HbZGz0r89zOLbe3dAyk-Q@mail.gmail.com>
References: <CANmPAYHxP9mdmPMsvR=bi=TSNi9+0HbZGz0r89zOLbe3dAyk-Q@mail.gmail.com>
Date: Thu, 18 Feb 2021 20:10:23 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87mtw1kx9c.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] Enforcing video quality question
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

UGV0ZXIgTGVwZXNrYSA8Yml6emJ5c3RlckBnbWFpbC5jb20+IHdyaXRlczoKCj4gTm90IHN1cmUg
dGhpcyBpcyB0aGUgcmlnaHQgZm9ydW0gYnV0IEkgYW0gdXNpbmcgQ2FrZSBvbiBteSBPcGVuV1JU
IHJvdXRlcgo+IHNvIEkgdGhvdWdodCBJIHdvdWxkIGNyb3NzLXBvc3QgdGhpcyBxdWVzdGlvbiAo
Cj4gaHR0cHM6Ly9mb3J1bS5vcGVud3J0Lm9yZy90L3VzZS1zcW0tdG8tY29uZmlndXJlLXZpZGVv
LXF1YWxpdHkvODg5ODQpIGhlcmUuCgpDQUtFIGRvZXNuJ3QgaGF2ZSBhbnkgZmFjaWxpdGllcyB0
byBkbyBwZXItZGV2aWNlIHNoYXBpbmcgbGlrZSB5b3UncmUKYXNraW5nLCBuby4gWW91IGNvdWxk
IHVzZSBmd21hcmsgdG8gYWx3YXlzIHB1dCB0cmFmZmljIGludG8gYSBsb3dlcgpwcmlvcml0eSBi
aW4sIGJ1dCB0aGF0IHN0aWxsIG9ubHkgbGltaXRzIGluIHRoZSBhZ2dyZWdhdGUsIGl0J3Mgbm90
IGEKcGVyLWRldmljZSB0aGluZy4KCldoYXQgeW91J2QgbmVlZCBpcyBzb21ldGhpbmcgbGlrZSBh
biBIVEIgcG9saWN5IHRoYXQgcHV0cyBlYWNoIGludGVybmFsCklQIGludG8gaXRzIG93biBiaW4g
YW5kIGNhcHMgdGhlIGJhbmR3aWR0aCBvZiBlYWNoLiBZb3UgY291bGQgd3JpdGUgYQoucW9zIHNj
cmlwdCBhbmQgaW50ZWdyYXRlIGl0IGludG8gc3FtLXNjcmlwdHMsIGJ1dCBJIGRvbid0IHRoaW5r
IHRoZXJlJ3MKYW55dGhpbmcgYWxyZWFkeSBpbiB0aGVyZSB0aGF0IHdvdWxkIGRvIHdoYXQgeW91
IHdhbnQgZWl0aGVyLi4uCgotVG9rZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

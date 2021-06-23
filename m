Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8F43B213B
	for <lists+cake@lfdr.de>; Wed, 23 Jun 2021 21:30:31 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E4BD83CB39;
	Wed, 23 Jun 2021 15:30:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1624476624;
	bh=jlZILpjGGp3Aptzm3cOSKH15GUMtnB4QUIJIRIDS8OE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iM4gGjL3P/diJsQfaaCxWqjbwUh9uklypZtsD4XtiKuvNwwzney3wGjkT3SUJ9srg
	 LLXddF/JW748audMjOjqo5N51l/JNCmZTdfYOj41Pcns/A+rIOclHjfoa8SWJTBfgN
	 Xtf0ntXrGhk5wH7LM8pLn/kXAFd6sfFv3RGkWCy6aqqmKx1o1g7la+SmlHIO5iWt0G
	 GCm+rGBKMycsPfObsYDavXK8lGpZbIagZM7xjOQzNWZfcb+F1X5lfvlRkcg2fe+u/d
	 RT5Eefw/7w7SXqoWYrh6eXQJ9juAyHl/2dzatwr+svnP+2Ow1Sbm8fusLe7D6GedHu
	 74uCwOuYhODVg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com
 [IPv6:2607:f8b0:4864:20::d2d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8B7963B29E;
 Wed, 23 Jun 2021 15:30:23 -0400 (EDT)
Received: by mail-io1-xd2d.google.com with SMTP id s19so4893035ioc.3;
 Wed, 23 Jun 2021 12:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zXTiwba7se1TP6b3tAuhuY1mLBGS64SYl1DtIsSUhSw=;
 b=lmDf2YYM06bHXAybdyH5MaM2Ew+S2KYVtY+rECbGEt23su8LOrM5z7AHSO3Jk7a/Ri
 H2xFonAibQGazms97j+hzxnO7n/WntS0+CXEWHJbOPW8VtspltaLvjD+QuYQIXy/I6dx
 qk/qLceaNd/N5ovwJ4rAPG7DpI54fq7SqKy52D0Gfo2+C7EOhldWlX/ygaxqL6ex0oP4
 1JaDbp6d8alCy3p7mucE3lHf/sSYIt9b7xpn8fhocmVrk895c7n1K/xO0+RNHSWgWEeH
 18EkrtgvG+TfcqdV2kl7Y9WLzPLTHZeTre/nP6HfYqqPoFMgB45dWxqgjz40ozT2cBbD
 ieEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zXTiwba7se1TP6b3tAuhuY1mLBGS64SYl1DtIsSUhSw=;
 b=l5QwCHyhtweyiENE2vMMzXhEsPZp9YJF2X8Ba0ZqnVJGh9gUvHax6HPmG9VdQTvKQR
 i+F8alcja8uEgJAIkzdSLh6+SBBTgEzuazTLT3HNXyR2XUgHO0fFfB7QbKJ8lTYPCC/D
 D7PhLIQVlwI8m/WbT5/P2KibZCHQKH692omTFYc0hkNSFIggzSKwKXJXbVHAAvnOlp0S
 UhU3FM7SWHYQ/h6gOXyNjXsKs5/AmWBl4maPUDN9/wNNTl+QBQGXTjAyp0v5WxS+Xw6d
 MyspQdn8QiKaHZuLUOjhJycTjEfx3n5G9iKCL0/Xp5dfG1utTOVYQS+CH75J8rhSMZ9K
 hZoQ==
X-Gm-Message-State: AOAM533DO/+s851o+SVmAanRyPCK0VvuCKDk12T+5v9mMU1e+fNNCX2Z
 vgPlnrL8dh7q4BR8tX8uNnVgueCvGQxU8D10pUM=
X-Google-Smtp-Source: ABdhPJxC0iLxd3SezHrNqjquEdS1Dk5u+b1YUJPdO/vjRhFpmtVZB41VXLiSt69KOZa78IoUETY9cF5W/xpbX7WEvJM=
X-Received: by 2002:a05:6638:22b8:: with SMTP id
 z24mr1092743jas.45.1624476622996; 
 Wed, 23 Jun 2021 12:30:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw5JR_uawdeK7PtdxwBkkeB4d0DOS9nHBizoPv8EteBPDw@mail.gmail.com>
In-Reply-To: <CAA93jw5JR_uawdeK7PtdxwBkkeB4d0DOS9nHBizoPv8EteBPDw@mail.gmail.com>
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Wed, 23 Jun 2021 15:29:47 -0400
Message-ID: <CAOdf3gpAm5PzEO3RjFYU4NzWNEcdvFOiUhWb=b-8kmBieO3RZQ@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: Re: [Cake] [Cerowrt-devel] access to cmsg from go?
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
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGVsbG8gRGF2ZSwKCkxlIHNhbS4gMTkganVpbiAyMDIxIMOgIDE3OjU5LCBEYXZlIFRhaHQgPGRh
dmUudGFodEBnbWFpbC5jb20+IGEgw6ljcml0IDoKPgo+IGFueW9uZSBoYXZlIGFueSBnb29kIGlk
ZWFzIGhlcmU/IGh0dHBzOi8vZ2l0aHViLmNvbS9nb2xhbmcvZ28vaXNzdWVzLzQ2ODMxCgood2l0
aCB0aGUgbGlzdCBpbiBjYykKClNvbWUgZ29vZ2xpbmcgdGhhdCBtaWdodCAob3Igbm90KSBoZWxw
OgpodHRwczovL2dpdGh1Yi5jb20vZ29vZ2xlL2dvcGFja2V0L2Jsb2IvbWFzdGVyL3BjYXBnby9j
YXB0dXJlLmdvCmh0dHBzOi8vZ2l0aHViLmNvbS9ncmFjaWcvZ29waW5nL2Jsb2IvbWFzdGVyL3Bp
bmdlcnMvaWNtcHY0L2ljbXB2NF9saW51eC5nbyNMMjE3CgpCZXN0CkV0aWVubmUKCj4KPiAtLQo+
IExhdGVzdCBQb2RjYXN0Ogo+IGh0dHBzOi8vd3d3LmxpbmtlZGluLmNvbS9mZWVkL3VwZGF0ZS91
cm46bGk6YWN0aXZpdHk6Njc5MTAxNDI4NDkzNjc4NTkyMC8KPgo+IERhdmUgVMOkaHQgQ1RPLCBU
ZWtMaWJyZSwgTExDCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBDZXJvd3J0LWRldmVsIG1haWxpbmcgbGlzdAo+IENlcm93cnQtZGV2ZWxAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2Vyb3dydC1kZXZlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczov
L2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

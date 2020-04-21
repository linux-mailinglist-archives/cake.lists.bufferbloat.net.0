Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 135B51B32B7
	for <lists+cake@lfdr.de>; Wed, 22 Apr 2020 00:44:15 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DB1FA3CB42;
	Tue, 21 Apr 2020 18:44:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587509053;
	bh=Q8itQOkwt27syV4brTmkFeJ+vn9ekOIiPxyFedZSWnk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B0PrSgvBCypezRJYKM0WuuUx+7Dsht6UQCYIiybif6xL9eSqW3xwcrxjqnbT03h1X
	 UXBnDjcvhZ14EWl18yxvQi2K9S7IYrblUi09z1P21P8OBVWPAdtevznAmbmXUC2FND
	 pGXKgB3Gcb523ml7KprIrmMn02rrSKHwkLZaF3/aivoOvnAsVZJB/XzbPOYh8a/7Z6
	 DXmqgOY42ZrW2J8i9RFlbUDRlhJ7fphnUN9nuCyZ/7cdKdFJyw1whdbtwRuJVGYFZM
	 43lzUkvPGQfE+vO/Nh9uRtz820s7ovP0cqaFHsHTv9OUkGjLnuRFTA2Rb1oJZKxNnk
	 54wOPn0IY8kEg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com
 [IPv6:2607:f8b0:4864:20::133])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3438C3B29D
 for <cake@lists.bufferbloat.net>; Tue, 21 Apr 2020 18:44:13 -0400 (EDT)
Received: by mail-il1-x133.google.com with SMTP id x2so13676243ilp.13
 for <cake@lists.bufferbloat.net>; Tue, 21 Apr 2020 15:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ub1SN4U9fJjfDYJfPxGmCM57d/Lc+BhDLy3QvIy3U+8=;
 b=Izs21m1SY1xoJ79VGM3taEsyUjrNI+dfHZcZBexnWo4RrG/LYRfG40YpNtqMbj9w4Q
 3t0cLDWXagnP9vOevgYkci0FoPA1IG8NQUE8dZ4wfJnHo1EedCcMPu4SS88Wjefm6CE9
 h30JZs/c3WSZcy4RVPmRkNOLrRNphVMlUZgohsJZpn+fDDAJozgrGAP5SOlNXbPz1RiY
 oFZ6k4CbxEkijDwhkjq/EjVVs3wObQeEua70HxzMv+kcQ2GuN+YZ9I7FJkw/1AQ9Uol+
 W5vuJbMvVIU18k9ApNKmv33/pl9fhV8O6QKYPFpj8MfMVGkSJVIm4q13t56R9PiwHHzi
 CloQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ub1SN4U9fJjfDYJfPxGmCM57d/Lc+BhDLy3QvIy3U+8=;
 b=nxLRkUtDdUnAXhZXIHcV5nOM3uRPeingk5AwfB3NbSr5xYyuXnfYvficHzV0+1WqS9
 WUT6uXoKpTgairqleIn6CpzdUz6laiNoLcujM3HAgNJtkwTdSaOnbHjxnHMuP1pOCS/W
 hQDNSMH7iTrNnBuc/5frlvG5eF7Fm/Z0E3+nkmUu3+scTH+DHP87aUKadoFXU4ffaJ0d
 Ap/m+meYE6TUYhoSLe01wwjndqDxPtfZVoMZ8bsq+QaTVrAVP3N6Y9XszyrrCi2jRiKa
 v5UO9z8SrrDnOVbB/jjbSwhtV9Kci2UiV4krMXKHjX2QtzKRDREg7taNWCwdAtqEynVF
 pgfg==
X-Gm-Message-State: AGi0PuYM4BNbBBy0b6eb0bakVwAbabAsE5US89CLD/GZJu93uXENzKBs
 5ph67yKie/SwCxC6NuboVuSeECuZVcpVOPb82zU=
X-Google-Smtp-Source: APiQypJAZL+8b32PcHai2nVndKGNq7eyPJVGQPM17DglVzzawhzaHnfOxCUqknFaTU/KD4kigGyMs3V4TBMUw++82kc=
X-Received: by 2002:a92:8e50:: with SMTP id k16mr24681283ilh.45.1587509052658; 
 Tue, 21 Apr 2020 15:44:12 -0700 (PDT)
MIME-Version: 1.0
References: <d3f45591-7359-47a6-bd0b-f89f9b49c5a7@www.fastmail.com>
 <75FEC2D9-BFC8-4FA2-A972-D11A823C5528@gmail.com>
 <CAA93jw7kfSjuQP2j8uX5-+hs2PBLNZ6c0=tV=PjZE50fQ1oFLw@mail.gmail.com>
 <AAAE0AE6-BA8C-4236-A68D-C5A4CF7DFEDA@slashdirt.org>
 <603DFF79-D0C0-41BD-A2FB-E40B95A9CBB0@gmail.com>
In-Reply-To: <603DFF79-D0C0-41BD-A2FB-E40B95A9CBB0@gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 21 Apr 2020 15:44:01 -0700
Message-ID: <CAA93jw5yvybv+aXH4NLd1r_8xSP2CPwzeh0q6wm1c26jLPBxag@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
Subject: Re: [Cake] Advantages to tightly tuning latency
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

T24gVHVlLCBBcHIgMjEsIDIwMjAgYXQgMzozMyBQTSBKb25hdGhhbiBNb3J0b24gPGNocm9tYXRp
eDk5QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiA+IE9uIDIyIEFwciwgMjAyMCwgYXQgMToyNSBhbSwg
VGhpYmF1dCA8aGFja3NAc2xhc2hkaXJ0Lm9yZz4gd3JvdGU6Cj4gPgo+ID4gTXkgY3VyaW9zaXR5
IGlzIHBpcXVlZC4gQ2FuIHlvdSBlbGFib3JhdGUgb24gdGhpcz8gV2hhdCBkb2VzIGZyZWUuZnIg
ZG8/Cj4KPiBUaGV5J3JlIGEgbGFyZ2UgRnJlbmNoIElTUC4gIFRoZXkgbWFkZSB0aGVpciBvd24g
Q1BFIGRldmljZXMsIGFuZCBkZWJsb2F0ZWQgYm90aCB0aGVtIGFuZCB0aGVpciBuZXR3b3JrIHF1
aXRlIGEgd2hpbGUgYWdvLiAgSW4gdGhhdCBzZW5zZSwgYXQgbGVhc3QsIHRoZXkncmUgYSBtb2Rl
bCBmb3Igb3RoZXJzIHRvIGZvbGxvdyAtIGJ1dCBmZXcgaGF2ZS4KPgo+ICAtIEpvbmF0aGFuIE1v
cnRvbgoKdGhleSBhcmUgb25lIG9mIHRoZSBmZXcgSVNQcyB0aGF0IGluc2lzdGVkIG9uIGdldHRp
bmcgZnVsbCBzb3VyY2UgY29kZQp0byB0aGVpciBEU0wgc3RhY2ssIGFuZCByZXRhaW5lZCB0aGUg
Y2hvcHMgdG8gYmUgYWJsZSB0byBtb2RpZnkgaXQuIEkKcmVhbGx5IGFkbWlyZSB0aGVpciByZXZv
bHV0aW9uIHY2IHByb2R1Y3QuIEZpcnN0IGludHJvZHVjZWQgaW4gMjAxMCwKaXQncyBiZWVuIGNv
bnRpbnVvdXNseSB1cGRhdGVkLCBkaWQgaXB2NiBhdCB0aGUgb3V0c2V0LCBnb3QgZnFfY29kZWwK
d2hlbiBpdCBmaXJzdCBjYW1lIG91dCwgYW5kIHRoZXkgdXBkYXRlIHRoZSBrZXJuZWwgcmVndWxh
cmx5LiBBbGwKa2luZHMgb2YgZ3JlYXQgZmVhdHVyZXMgb24gaXQsIGFuZCBlY24gaXMgZW5hYmxl
ZCBieSBkZWZhdWx0IGZvciB0aG9zZQphbHNvICh0aGluZ3MgbGlrZSBzYW1iYSkuIG92ZXIgMyBt
aWxsaW9uIGJveGVzIG5vdyBJIGhlYXIuLi4uCgp3aXRoIDwxbXMgb2YgZGVsYXkgaW4gdGhlIGRz
bCBkcml2ZXIsIHRoZXkgZG9uJ3QgbmVlZCB0byBzaGFwZSwgdGhleQpqdXN0IHJ1biBhdCBsaW5l
IHJhdGUgdXNpbmcgdGhyZWUgdGllcnMgb2YgRFJSIHRoYXQgbG9vayBhIGxvdCBsaWtlCmNha2Uu
IFRoZXkgc2hhcmVkIHRoZWlyIGNvbmZpZyB3aXRoIG1lLCBhbmQgYmVmb3JlIEkgbG9zdCBoZWFy
dCBmb3IKZnV0dXJlIGludGVybmV0IGRyYWZ0cywgSSdkIHN0dWNrIGl0IGhlcmU6CgpodHRwczov
L2dpdGh1Yi5jb20vZHRhaHQvYnVmZmVyYmxvYXQtcmZjcy9ibG9iL21hc3Rlci9ob21lX2dhdGV3
YXlfcXVldWVfbWFuYWdlbWVudC9taWRkbGUubWtkCgpPY2Nhc2lvbmFsbHkgdGhleSBzaGFyZSBz
b21lIGRhdGEgd2l0aCBtZS4gU29tZXRpbWVzIEkgd2lzaCBJIGxpdmVkIGluCnBhcmlzIGp1c3Qg
c28gSSBjb3VsZCBoYXZlIGdvb2QgaW50ZXJuZXQhICh0aGVpciBmaWJlciBvZmZlcmluZyBpcwpy
ZWFzb25hYmx5IGJ1ZmZlcmVkIChub3QgZnFfY29kZWxlZCkgYW5kIHRoZSB3aWZpLi4uIG1heWJl
IEkgY2FuIGdldAp0aGVtIHRvIHRhbGsgYWJvdXQgd2hhdCB0aGV5IGRpZCkKCldoZW4gZnJlZS5m
ciBzaGlwcGVkIGZxX2NvZGVsIDIgbW9udGhzIGFmdGVyIHdlIGZpbmFsaXplZCBpdCwgSQpmaWd1
cmVkIHRoZSByZXN0IG9mIHRoZSB3b3JsZCB3YXMgb25seSBtb250aHMgYmVoaW5kLiBIb3cgaGFy
ZCBpcyBpdAp0byBhZGQgNTAgbGluZXMgb2YgQlFMIG9yaWVudGVkIGNvZGUgdG8gYSBEU0wgZmly
bXdhcmU/CgoKCgoKLS0gCk1ha2UgTXVzaWMsIE5vdCBXYXIKCkRhdmUgVMOkaHQKQ1RPLCBUZWtM
aWJyZSwgTExDCmh0dHA6Ly93d3cudGVrbGlicmUuY29tClRlbDogMS04MzEtNDM1LTA3MjkKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo=

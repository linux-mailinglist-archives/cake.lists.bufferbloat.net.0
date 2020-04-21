Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD1F1B32FF
	for <lists+cake@lfdr.de>; Wed, 22 Apr 2020 01:19:27 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D981B3CB42;
	Tue, 21 Apr 2020 19:19:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587511165;
	bh=iuqbWRWqAW68C1t1i0JJiWjE+V+WkYrkmu0C3GdZ9/A=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U1s1gMJSIxgV/uP0vg67+lDGm5lDjXc4yQNN9jjLOHSf933rMDiXcINJk7nKL4qK8
	 A8nY9UQXBAgPBVVZqz6WK1vcWiiRnarjGQj2tSk4on8qxUV6/NNKryzozLZm54dkt2
	 j9zMfvAyAiwGn2ATOD2lvFq1ziUScRTfKNkiOqT2uZ7K2GmblQzmm3zwFCy0AAo2A5
	 xBd+L194Y3phrcu1CKiOxEel3EW6axY5jXTGTqVjBhDfwfqJydJMTCqG2yjz2WlyRn
	 vDkWNb6eOYDhnfJdzeGVHm3x8VLajqsKV5S0UmJYh7pjzYsJW+B1dDZK0gJV8TzNfY
	 EtQ1gd/kSlBnQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12b.google.com (mail-il1-x12b.google.com
 [IPv6:2607:f8b0:4864:20::12b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 91C863B29D
 for <cake@lists.bufferbloat.net>; Tue, 21 Apr 2020 19:19:24 -0400 (EDT)
Received: by mail-il1-x12b.google.com with SMTP id c16so84706ilr.3
 for <cake@lists.bufferbloat.net>; Tue, 21 Apr 2020 16:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=AkFsF4bLxFr5J6jrq2dd6etrcyanKDogD2AzIEnHCnU=;
 b=r81g0NZqyl3HnijX79y9LNQpn479bdM8Kgx+8LRLQ53M1FoGhcf/saa4OhMx88ZItK
 uuH6nWm2bgG2lCBGFLsZuq0VImcSH0kKwOJTxC3QcHpvgTsFkR0THffVuvI3lhP0em32
 oe1gASBPLKm1wE7sPX3NLbWtnTL17eo514Eb80UA/ukBwxaAjbZyUkhJ+xldwmbupuJU
 KebPJhY+otPFfNi0OR73Yw2CPsV2EvaYuf30abASGz130MAgzPD7E3VRvno+v/M9FqOA
 8LHNHAar9SC7hlX+qV1gaaP3clAL1XB2yT/Yh43dcjtR9rC12FAB30PvZb58lIXaObcM
 FjbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AkFsF4bLxFr5J6jrq2dd6etrcyanKDogD2AzIEnHCnU=;
 b=OnL45TKh+RRt+GerxYVYhf1Lxj9BTsaQ8VERklZdu/3iosCSYNWN+BopVDxoiGmD9b
 nfbljDnKdcaSWUMgZ201Dkjz1/YDY49xNdjKaIwZMXFCm+tWPFwIf4y15vbNPd0kMNpX
 r//ca5Ft75TCexq2vHV4CtZvwLg4uORoKj0vqf/sC1nWQIhmVRdur/PQI/xsGYvKAL+k
 +Yf5+sOIF348dEOgOV2GnCRC9uRzjd85Wiz6G4bjQbvZYbcJN+7gQlLxNf87F7EYQ75q
 d8nLCPkRx3mK9IY9LKymP2UkiK3ar7PRVvEI0w8ufLu5LSTjGJNHmTHhgkxtXad0NFKv
 lIBA==
X-Gm-Message-State: AGi0PuZuPqImUusplngLJd+Yj2qdL4tukBKJvyRHBBNjTN0olHyTaQ5G
 2tUZuTy2nEn9096PYsUSiAm9DwSyjS7dE8oOwkY=
X-Google-Smtp-Source: APiQypIvariunEwzV1NapaVg+9x/0YUSzFD+55xXz4aw9PYvF7QvdJJaN+n+09l33smwvzeueyZO1qj5EG3sHLGDgn4=
X-Received: by 2002:a92:8e50:: with SMTP id k16mr24807450ilh.45.1587511164104; 
 Tue, 21 Apr 2020 16:19:24 -0700 (PDT)
MIME-Version: 1.0
References: <d3f45591-7359-47a6-bd0b-f89f9b49c5a7@www.fastmail.com>
 <75FEC2D9-BFC8-4FA2-A972-D11A823C5528@gmail.com>
 <CAA93jw7kfSjuQP2j8uX5-+hs2PBLNZ6c0=tV=PjZE50fQ1oFLw@mail.gmail.com>
 <189eb1a9-ea02-452b-92f3-8005f97eb612@www.fastmail.com>
In-Reply-To: <189eb1a9-ea02-452b-92f3-8005f97eb612@www.fastmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 21 Apr 2020 16:19:12 -0700
Message-ID: <CAA93jw7vDAeAfsuD_LY33rWsw2__rPb4iRdoZsejqqBQuT9syQ@mail.gmail.com>
To: Justin Kilpatrick <justin@althea.net>
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

T24gVHVlLCBBcHIgMjEsIDIwMjAgYXQgNDowNyBQTSBKdXN0aW4gS2lscGF0cmljayA8anVzdGlu
QGFsdGhlYS5uZXQ+IHdyb3RlOgo+Cj4gT24gVHVlLCBBcHIgMjEsIDIwMjAsIGF0IDI6NDQgUE0s
IERhdmUgVGFodCB3cm90ZToKPiA+IEl0IGhhcyBhbHdheXMgYmVlbiBteSBkcmVhbSwgdGhhdCBh
dCBsZWFzdCBmb3Igb3V0Ym91bmQsIHRoZXJlIHdvdWxkCj4gPiBiZSBzdWZmaWNpZW50IGJhY2tw
cmVzc3VyZSBmcm9tIHRoZSBkcml2ZXIKPiA+IHRvIG5vdCBoYXZlIHRvIHNoYXBlIGF0IGFsbCwg
b3IgbW9uaXRvciB0aGUgbGluay4gV2UgaGF2ZSB0aGF0IG5vdyBpbgo+ID4gQlFMIGFuZCBBUUwu
IGZyZWUuZnIncyBkc2wgZHJpdmVyICJkb2VzIHRoZSByaWdodCB0aGluZyIgLSBubyBvdGhlcgo+
ID4gZHNsIGRyaXZlciBkb2VzLiBOb3IgdXNiIG5ldHdvcmsgZGV2aWNlcy4gSSBob3BlIG1vcmUg
Zm9sayByb2xsIHVwCj4gPiB0aGVpciBzbGVldmVzIGFuZCB0ZXN0IHRoZSBhdGgxMGsgc29tZSwg
aXQncyBsb29raW5nIGxvdmVseSBmcm9tIGhlcmUuCj4gPgo+ID4gaHR0cHM6Ly9mb3J1bS5vcGVu
d3J0Lm9yZy90L2FxbC1hbmQtdGhlLWF0aDEway1pcy1sb3ZlbHkvCj4gPgo+ID4gbmV4dCB1cCBl
aXRoZXIgdGhlIG5ldyBtZWRpYXRlayBjaGlwIG9yIGludGVsLi4KPgo+IEknbSBjdXJpb3VzIGlm
IHlvdSBoYXZlIGFueSBvcGluaW9ucyBhYm91dCB0aGUgV2lGaSBzdGFja3MgZm9yIHRoZSBNYXJ2
ZWwgQXJtYWRhCgpNYXJ2ZWxsJ3Mgd2lmaSBpcyBjdXJyZW50bHkgIm5vdCBob3JyaWJsZSIsIGJ1
dCBjZXJ0YWlubHkgb3ZlcmJ1ZmZlcmVkLgoKPmFuZCBRdWFsY29tbSBJUFE0MHh4LgoKSSB3YXMg
dW5kZXIgdGhlIGltcHJlc3Npb24gdGhpcyBsb29rZWQgbGlrZSBhbiBhdGgxMGsgdG8gdGhlIHdv
cmxkLiBBbQpJIHdyb25nPyBXaGF0IHByb2R1Y3RzIGlzIGl0IGluIHRoZXNlIGRheXM/Cgo+QW55
IHRyZWVzIEkgc2hvdWxkIGJlIGJhcmtpbmcgdXAgZm9yIGJldHRlciBwZXJmb3JtYW5jZT8gV2Ug
aGF2ZSBoYWQgc29tZSBjb21wbGFpbnRzIGluIGhpZ2hlciBpbnRlcmZlcmVuY2UgYXJlYXMuLi4K
Pgo+IFRoZXNlIGRldmljZXMgaGF2ZSB0aGUgYmVzdCBXaXJlR3VhcmQgcGVyZm9ybWFuY2UgcGVy
IGRvbGxhciBmb3IgQWx0aGVhJ3MgdXNlIGNhc2Ugc28gd2UncmUgZGVwbG95aW5nIHRoZW0gcHJl
dHR5IGhlYXZpbHkuCj4KPiAtLQo+ICAgSnVzdGluIEtpbHBhdHJpY2sKPiAgIGp1c3RpbkBhbHRo
ZWEubmV0CgoKCi0tIApNYWtlIE11c2ljLCBOb3QgV2FyCgpEYXZlIFTDpGh0CkNUTywgVGVrTGli
cmUsIExMQwpodHRwOi8vd3d3LnRla2xpYnJlLmNvbQpUZWw6IDEtODMxLTQzNS0wNzI5Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBs
aXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQu
bmV0L2xpc3RpbmZvL2Nha2UK

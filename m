Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id ED928428277
	for <lists+cake@lfdr.de>; Sun, 10 Oct 2021 18:11:41 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 89EE43CB43;
	Sun, 10 Oct 2021 12:11:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1633882300;
	bh=aA0bu0Zn0tfb195bRG2uic7Wz+bBwEsGr+MfxVz6E0I=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hjKFs+5qsmUSFYAcCubvaU//2hx8LDA+gOS5kHuXLC1V9LAywBY9lskqTtoIiqx7y
	 3W8fxQv14V5c+RcEsAJjz8yF6F98I3VLRyBKey6aB7nGsdP3VdIctRZ8Eay4Bkk+b+
	 ycryovJ0RNgl87UNegDe5qcLUv+bu/Su993c2vOCOWm+HX0zJzqvUvMM5jBwmGXBBy
	 ObP1Z1NSmsrGyEaI+3agg9SZekwoqR/aRV9Q6X1D6G5B6ENE7Vp0rwJuVQ9zvfabFF
	 2aIbTLnyZsQLiUWs+GS4r2ft8UXia27HVJhGTy/N9K5P+WrEVO+CZUyLRoNRqqb8qn
	 2tZ+1DlqYz7xw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com
 [IPv6:2607:f8b0:4864:20::d30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8A8263B29D;
 Sun, 10 Oct 2021 12:11:38 -0400 (EDT)
Received: by mail-io1-xd30.google.com with SMTP id e144so16911521iof.3;
 Sun, 10 Oct 2021 09:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=dAVRs1rGvRiLuRYrwb1lMW3w7fsdpOPI3o6AxvzZ+bc=;
 b=mN6v/KTsOEL8XhCeuG9E5zI48alX2Rq3Xb0G6thbaS1f/bH9/WvtpH3pHIe4gbuoj9
 GgKyt8C4nywavOQP2hvYCx6l8S1Ko7Bp+OzftiOv3Iy4/4/FJ9PuLe/pSL3tmP6HoDq7
 +UnzZXMorjv9LOKehjZJ/2Zx/LOkYfV8d6pSpR1LjSI9IzK/gB+47akc370gYSELz5BR
 UO79o7jR+QKWljDjGLQTPQgdiuD8cG2tTzTm5XfxkrD4otJzpONO6GJfVuxEOA6YxJeP
 hrpufjAeEH4JnqmpaH66zRqJjClu65EQ6qd7clmIvEvoUnlz/VnK9ObgNsRhQBEEsch4
 99TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=dAVRs1rGvRiLuRYrwb1lMW3w7fsdpOPI3o6AxvzZ+bc=;
 b=diTNIBRIBw0DXG5jgI6vDA7Rh90NVxtDdTkIKmXSa/G40uxsXP2sqYe2mqFSpic35y
 MXlL7BwYKNMiODQ6BjlFnHHr02r6cw9y3igyLjbRQq/bxQn4vpZ+T95CrP3fEZFJ/JAH
 EJFUEoPN4/AdqQ5dAjfdJiVPOOo1jEo2FjZySvrnXlSXBuqHEexrPZdEt8/6eG57B09A
 RqiNzDCJmxurL1u1XH5S9YEiDutpDycxUjk8bpqn9rkXhY4RA7YoDlKlQu5X/WCtNPlw
 WaaCxKgd+D7Wbyolr+e2paP3wpMHJ+pd/iHD99ny3bt1SEqjOe1unPKcG9eW932sIK7g
 Go3A==
X-Gm-Message-State: AOAM530zADD51Igj4luJeim2pG1nZOQ3xZXbT+0wXYCGKdBTahdXID9z
 jooXYcQOvwD87AOCpU4nOryIBbhxLhLuFOyNKWpJmLSf
X-Google-Smtp-Source: ABdhPJzH6u8Klglm7YJLCNo3XXAOgWmvXfy68tyGd+VKWjBrjPhQpK479S1DagyXCHvEvD6LYS/gLl0WsZZrcohltEs=
X-Received: by 2002:a05:6638:d43:: with SMTP id
 d3mr15746082jak.60.1633882297540; 
 Sun, 10 Oct 2021 09:11:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7YkMv-F6cYj2PZ9pGiS1yapO5wpLJWmuje6p0fc54eEA@mail.gmail.com>
 <003001d7bdf0$97282430$c5786c90$@inacomptc.com>
In-Reply-To: <003001d7bdf0$97282430$c5786c90$@inacomptc.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 10 Oct 2021 09:11:25 -0700
Message-ID: <CAA93jw5cefvMNe-6+gAWLVVsTYXE6JDpPXvYGrthNa-kjX-ixg@mail.gmail.com>
To: Jordan Szuch <jordan@inacomptc.com>
Subject: Re: [Cake] [Bloat] some mikrotik comments
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
Cc: Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SXQncyBmbGVudC5vcmcgcnJ1bCB0ZXN0IG91dHB1dCB0aGF0IEkgbG92ZS4KCk9uIFN1biwgT2N0
IDEwLCAyMDIxIGF0IDk6MDUgQU0gSm9yZGFuIFN6dWNoIHZpYSBCbG9hdAo8YmxvYXRAbGlzdHMu
YnVmZmVyYmxvYXQubmV0PiB3cm90ZToKPgo+IEhpIERhdmUsCj4KPiBJbnRlcmVzdGluZyB0aGF0
IHlvdSBzaG91bGQgc2VuZCB0aGlzIG91dDsgSSByZWNlbnRseSBwaWNrZWQgdXAgYSB1bml0ICh0
aGlzIG9uZSBzcGVjaWZpY2FsbHk6IGh0dHBzOi8vbWlrcm90aWsuY29tL3Byb2R1Y3QvaGFwX2Fj
MikgdG8gZG8gc29tZSB0ZXN0aW5nIG9mIHRoZSB2NyBmaXJtd2FyZS4gTm90aGluZyBzdXBlciBo
aWdoIGVuZCBidXQgZW5vdWdoIHRvIGRvIGEgbGl0dGxlIHRlc3RpbmcuIEkgaGF2ZSBDQUtFIHNl
dCB0byBkbyBzb21lIHNoYXBpbmcgYW5kIHNvIGZhciBzZWVtcyBmdW5jdGlvbmFsLiBBdCBsZWFz
dCB0aGUgYnVmZmVyYmxvYXQgc3BlZWQgdGVzdHMgZnJvbSBEU0xSZXBvcnRzIGFuZCBXYXZlRm9y
bSBpbmRpY2F0ZSBzb21lIHNoYXBpbmcgaXMgaGFwcGVuaW5nLiBJZiB5b3UnZCBsaWtlIGFueSBp
bmZvcm1hdGlvbiBhYm91dCB0aGUgdW5pdCwgdGhlIHY3IGZpcm13YXJlLCBvciBwYXJ0aWN1bGFy
IHRlc3RzIHJ1biB0aGVuIEknZCBiZSBoYXBweSB0byBoZWxwIG91dC4KPgo+IEpvcmRhbgo+Cj4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiBGcm9tOiBCbG9hdCA8YmxvYXQtYm91bmNlc0Bs
aXN0cy5idWZmZXJibG9hdC5uZXQ+IE9uIEJlaGFsZiBPZiBEYXZlIFRhaHQKPiBTZW50OiBTdW5k
YXksIE9jdG9iZXIgMTAsIDIwMjEgMTE6MzkgQU0KPiBUbzogQ2FrZSBMaXN0IDxjYWtlQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldD47IGJsb2F0IDxibG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+Cj4g
U3ViamVjdDogW0Jsb2F0XSBzb21lIG1pa3JvdGlrIGNvbW1lbnRzCj4KPiB0aGUgdjcgYmV0YSBn
YWluZWQgZG9jIGFuZCBtb3JlIG9zIHN1cHBvcnQgZm9yIGZxX2NvZGVsIGFuZCBjYWtlIHJlY2Vu
dGx5Cj4KPiBodHRwczovL2ZvcnVtLm1pa3JvdGlrLmNvbS92aWV3dG9waWMucGhwP3A9ODg1MDAw
I3A4ODUwMDAKPgo+IGFueW9uZSBvdXQgdGhlcmUgYWN0aXZlbHkgdGVzdGluZyBtaWtyb3Rpaz8K
Pgo+IC0tCj4gRml4aW5nIFN0YXJsaW5rJ3MgTGF0ZW5jaWVzOiBodHRwczovL3d3dy55b3V0dWJl
LmNvbS93YXRjaD92PWM5Z0xvNlhyd2d3Cj4KPiBEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExM
Qwo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxv
YXQgbWFpbGluZyBsaXN0Cj4gQmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9s
aXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vYmxvYXQKPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxvYXQgbWFpbGluZyBsaXN0Cj4gQmxv
YXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQv
bGlzdGluZm8vYmxvYXQKCgoKLS0gCkZpeGluZyBTdGFybGluaydzIExhdGVuY2llczogaHR0cHM6
Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1jOWdMbzZYcndndwoKRGF2ZSBUw6RodCBDRU8sIFRl
a0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9s
aXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

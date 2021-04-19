Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A13B2364578
	for <lists+cake@lfdr.de>; Mon, 19 Apr 2021 15:56:53 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 630D83CB42;
	Mon, 19 Apr 2021 09:56:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1618840607;
	bh=v8wGLCuNzEGPrQjX09cNAgwLGEZhcQPR6UnWc5tfRkU=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=EaeUIu0U6kAUR26OeF4cZzeGVE4QQZwo1hqiiCW2RAAcvOW5dO4b70qOyHNh3i/lR
	 O/PWqZgOkvffzF9NQand+KqEDLC7C3WRBPVnOZ/XhCnQMuDaoVWo8RG/s5ZdX3VRP0
	 jtjhIOfFN17Ok3pVar9FiPtT/me+8OORhdO7RFyILhYhmE7b9AiYbNHc85DnKwCFdo
	 itS3HGSPQ4bpNFBK7LJpvJGz9o1b5hCBitVecCV0Cc9DTeU7z+Bjj7hS/BXcK0UjCq
	 kJ/TOlB9PukNi1WwEeNeFjLagBJShUKXzWJy8j/JO/EzRbKxgnxAXbzu+k/9rFLoXY
	 zlsAZuksqPtFw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com
 [IPv6:2607:f8b0:4864:20::12c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E704C3B2A4;
 Mon, 19 Apr 2021 09:56:45 -0400 (EDT)
Received: by mail-il1-x12c.google.com with SMTP id y10so7278538ilv.0;
 Mon, 19 Apr 2021 06:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=kPmoSx4qbnIZ53W7U3rqYGR4Jg0gwt+6T0tXmnDatnc=;
 b=Vy2b9v3gtt67QfboK/5FhvThdiIJcdI9k5oNlD6Sgt4VrTueP6IAhfv0ySniEOcn7h
 GhOyykPFfqONeR3WWgI+Pno0wopwSpfpOUoBXcSKKDSkkmKsRoqiRns2QXCaxrup+Q2H
 +2OUIm/Hq5pnogzAALgRHMO9tAJlBHPtgBWrSfFG9GVMDWoVCpHUuZMy5i4QF17uPnlD
 51xmphdR45kNYdRMUvmmwgdWKntOeRQYBS9/mY7PG+etLYx5ZqNBBJVworvbPz0TOwZz
 nJR/S1iuVMfn8RL6ciGCvwxl9PFVe7jvqxiLbV1qQZU5QfIa6pDyw+uvGh6Ih0368nPF
 4oVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=kPmoSx4qbnIZ53W7U3rqYGR4Jg0gwt+6T0tXmnDatnc=;
 b=C+TfxPPlI4AHG4BzrA/Wd53UCkQtIl25HhAlZmMx9irdqhc1gfs7jxigzRDwrLLofx
 fI5YTSNeQanLn3poeblIZV8GEaY3mIWj6PdLr1DQDFMe7SENDyjynEe7gbcwEcp2kcIk
 nKPpdVHk2II1DhmedjevSg3QzvWjhlIJgvmDEamkU2Vu+1dBizc3hyyuQ+AQ5Y96c5/K
 jJP0REAKfqI9+kAvBMOR39hM54sryBgfgtbPFt2PB7JVZ3EdsXlghvIEol0OUsRByi1M
 Qg96xRTYJDkSd+0BdfQriLrS1OZw+t0BnlCH1w+TLeRUndaXH5X9ZpmE5Gyk9yoOSsuM
 M7tg==
X-Gm-Message-State: AOAM530oMk6EAWvCw9tAWxFnpylypKvJgZmvyQRiyL+9DoHJtZdnoK6W
 cs8sSEON42Kt8XpiRTFp7o6Hu7THrke4z5AA2AOU9nybRCCsnw==
X-Google-Smtp-Source: ABdhPJwuvnoLfcWzdv6spmjm1IsIXwuAUyExgMY7ivwUoDkl5jMXS33KnheMk1j4aU9sxLYpb1VbSdtO1mdTWuWPg54=
X-Received: by 2002:a05:6e02:d41:: with SMTP id
 h1mr17350541ilj.0.1618840604723; 
 Mon, 19 Apr 2021 06:56:44 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 19 Apr 2021 06:56:33 -0700
Message-ID: <CAA93jw5FEe90Dw3_tGubna=_Urzbq6dYMMrifGV7bMuhL2nXKg@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] starlink testing
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBmaW5kIG15c2VsZiBpbiBmcm9udCBvZiBhIHN0YXJsaW5rIHRlcm1pbmFsIHRoaXMgbW9ybmlu
ZywgYW5kIGhhdmUKYmVlbiBkb2luZyB2YXJpb3VzIHRlc3RzLiBUaGUgYmVoYXZpb3Igb2YgdGhl
aXIgbmV0d29yayBpcyBsaWtlCm5vdGhpbmcgSSd2ZSBldmVyIHNlZW4gYmVmb3JlLCBhcHBlYXJp
bmcgdG8gcmUtYWRqdXN0IHRoZSBhdmFpbGFibGUKYmFuZHdpZHRoIG9uIGEgMTBzZWMgaW50ZXJ2
YWwsIGFuZC4uLiB5ZXMuLi4gdGhleSBoYXZlIGJ1ZmZlcmJsb2F0Li4uCmJhZC4KClN0aWxsIHJ1
bm5pbmcgcXVpdGUgdGhlIGxhcmdlIGJhdHRlcnkgb2YgdGVzdHMgYXQgdGhlIG1vbWVudC4gVGhl
eSBhcmUKYmVoaW5kIGEgbGFyZ2UgY2duYXQsIGFuZApubyBpcHY2IGlzIGF2YWlsYWJsZSwgZWl0
aGVyLiBJIGNhbiBtYWtlIGF2YWlsYWJsZSBzb21lIHRlc3RzIGFuZApwYWNrZXQgY2FwcyBpZiBh
bnlvbmUgd2FudHMgYSBsb29rLgoKSWYgYW55b25lIHdvdWxkIGxpa2UgdG8gZHJvcCBpbiBvbiBt
ZSBhbmQgaGVscCB0YWxrIG1lCmRvd25eSF5IXkheSF5IXkheSCBzdHJhdGVnaXplIG9uIGhvdwpi
ZXN0IHRvIHRlbGwgJ2VtIGFib3V0IHRoaW5ncyBsaWtlIGZxX2NvZGVsIGFuZCBjYWtlLCBJIGNh
biBiZSBmb3VuZApvdmVyIGhlcmUgKGFueSBsb2dpbiB5b3Ugd2FudCwgbm8gcGFzc3dvcmQpIGZy
b20gN0FNIFBEVCB0aHJvdWdoIDlBTS4KCmh0dHBzOi8vdHVuLnRhaHQubmV0Ojg0NDMvZ3JvdXAv
YnVmZmVyYmxvYXQKCgoKLS0KIkZvciBhIHN1Y2Nlc3NmdWwgdGVjaG5vbG9neSwgcmVhbGl0eSBt
dXN0IHRha2UgcHJlY2VkZW5jZSBvdmVyIHB1YmxpYwpyZWxhdGlvbnMsIGZvciBNb3RoZXIgTmF0
dXJlIGNhbm5vdCBiZSBmb29sZWQiIC0gUmljaGFyZCBGZXlubWFuCgpkYXZlQHRhaHQubmV0IDxE
YXZlIFTDpGh0PiBDVE8sIFRla0xpYnJlLCBMTEMgVGVsOiAxLTgzMS00MzUtMDcyOQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlz
dApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dC9saXN0aW5mby9jYWtlCg==

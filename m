Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C51F1ACDE53
	for <lists+cake@lfdr.de>; Wed,  4 Jun 2025 14:53:41 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C575F3CB39;
	Wed,  4 Jun 2025 08:53:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749041620;
	bh=9cgAdLqXf336mX71TGIItx5hyFsxMJXGGn4itAgBUwQ=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=ETSUtFhZrGbFNAXREhSweOO4+W1lVZiDCFLYnBRAfoz9NJ8nsEiaGFqiJ+/IUASgo
	 HrPmn4yzYDY9OX1Nclc2VDIQ5C+/kEVB0y8mhKXsjWL2kPEMM+fRbAE+oaL7NtxP6b
	 w07lVXEz9j+p4f44WIuvewwh9IYGrhy9gkSwe79l3euYxJgnazjaNH+qMEsEiFoJqv
	 BR9iGSyg/j71WlCfjdHyaRj2+ft7I6cLGkWF/v1be+CZJzuC4XSsnYZYuoFsvhiNWC
	 EkinnfTTpORzbIaT6+RTXcOQYc4HYYqjZjvBQImSHGjArwPBNfsd9YwXZJ9oOIG8Rh
	 hQilNl4yQzIOQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B67783B2A4
 for <cake@lists.bufferbloat.net>; Wed,  4 Jun 2025 08:53:38 -0400 (EDT)
Received: by mail-pf1-x435.google.com with SMTP id
 d2e1a72fcca58-7399a2dc13fso8270700b3a.2
 for <cake@lists.bufferbloat.net>; Wed, 04 Jun 2025 05:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749041618; x=1749646418; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Nu0V1OY0gA1RAtJEobhJqAk2nkIvQvOI0iGvtWZKIxk=;
 b=QK0ZAwS/F69DRm8xiLBizhNG5uEGAHhVyjpakdOmAgqpK+7Bnng5Onym89vTQ/ZSyT
 vwZiyN94fYRJfSc1xy0+soUnGn0BqkLTaLr8+ZbWCmQ8/hpVUtFQgBe7TlkI2DgN3fGj
 pHSmQeybXu/QDXvS/AbsBrUAoAZZap2LxUD/LfT5qJ9tR621IZyYPsI/Magdz1m/KXIZ
 GzDa6L25e0tdVHB8vC7w8FfsqFhQD9eksX+Hur0rkx5+5xWvbZrEJMWZ2e1knu4/eIz+
 0fEIGCVRnmjnZdJWRaOcHbSIsw9wcT8LU1tGXi45rNguImMTdbQsG2iSzL0C1f27WN0g
 UZGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749041618; x=1749646418;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Nu0V1OY0gA1RAtJEobhJqAk2nkIvQvOI0iGvtWZKIxk=;
 b=Zq/opE9LJWyA7Na1Yv/ik5gqILH7oZCdO/GMVhN6b3G01LmA4mdMBhL700pR2/vvng
 QCnG340qaN4VjQwgwvVseOh653Tx8t+gmRdFMsPpVKTs2r5CCaP/J0XxQEXu57vb8mjL
 Bzb2Y6laqrJJBlXDCmN3QohpOzAMJERD6ZDjYxW33zzX1WKbBhjXEhUelzwSnfCP4X5L
 VXj5gdzqH0TCnwlP1MqHTCrjp8L8hywQFRb68oy+mGpgJQTp9YsywehSkFS+rLkf53wc
 IdCEWupkMrChEjXoGoQaA9E8dMWEnZgbbFbY/pIUiegWPG/npeV4mTCjwpqRuwhjhDNc
 /g7w==
X-Gm-Message-State: AOJu0YzOTpnT5rCTo5Ad3RFK2KnO85mN/5wxPXdq09dUvsaGIjyesfjY
 BcX5Fh4bsECkJLvMumXWvTxjlgzFKh4LCzvqTVOUX3WSTdl3d8nO30p94gano+QtLieoAPa7Mss
 so7l+qEzM8QuiyCVnWVFSa5Ovdpjsd2dHFTLG
X-Gm-Gg: ASbGncto3+lel7GZQdPVtCUZiF1P1T2zYdZygn5MlnhHhWTJGxR/HvYQpoMkrQeInI+
 uzXG6fDBh0jLL8zycEgAWOdqZCWrejWBInv0O8WO/Fna1WAgqRmZqARVZouorYyYPVP+PC30kWx
 fypYG2aI6Ao3eVVzUeOqaDPCSNUMLG6qxaPble9unnl/vYRwNLRyTykCF2SydWZ0XT3uMc0NjKs
 w2fyM4Ai7g=
X-Google-Smtp-Source: AGHT+IELzmvbunwJpdCHuStNrSRlT0rgZwSoR+2ZHV05LDYWZLAcvwmZ8+X9Ndjap4dYnJZs0WvRG7LKsbkCFG1MAZI=
X-Received: by 2002:a05:6a00:1253:b0:740:a879:4f7b with SMTP id
 d2e1a72fcca58-7480b452fccmr4099263b3a.18.1749041617738; Wed, 04 Jun 2025
 05:53:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOjqhArk0_b2mOVT1M14Jf68Kvq54cf7KHE9Dma5C=Gz8Q@mail.gmail.com>
In-Reply-To: <CAJUtOOjqhArk0_b2mOVT1M14Jf68Kvq54cf7KHE9Dma5C=Gz8Q@mail.gmail.com>
Date: Wed, 4 Jun 2025 16:53:25 +0400
X-Gm-Features: AX0GCFufxnYRdgGiLz8Jt4CQOGVUXdAShf-2MZU-iBaiVvjIQK71sCby3v52IBg
Message-ID: <CAOp4FwRaMQsJ645_wgophQoKDvYonopMuMK2Q6W7+c002jT01g@mail.gmail.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
Subject: Re: [Cake] MQ-CAKE: Scaling software rate limiting across CPU cores
 (Netdevconf 0x19 - 2025)
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
From: Loganaden Velvindron via Cake <cake@lists.bufferbloat.net>
Reply-To: Loganaden Velvindron <loganaden@gmail.com>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGhlIGV4Y2hhbmdlIGJldHdlZW4gRXJpYyBEdW1hemV0IGFuZCBUb2tlIHdhcyB2ZXJ5CmludGVy
ZXN0aW5nIDotRAoKVGhhbmtzIGZvciBzaGFyaW5nICEKCgpPbiBXZWQsIDQgSnVuIDIwMjUgYXQg
MTY6MjAsIEZyYW50aXNlayBCb3JzaWsgdmlhIENha2UKPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQu
bmV0PiB3cm90ZToKPgo+IEhlbGxvIHRvIGFsbCwKPgo+IFJlY29yZGluZzoKPiBodHRwczovL3d3
dy55b3V0dWJlLmNvbS93YXRjaD92PTBUUTRicm1STWVRCj4KPiBTbGlkZXM6Cj4gaHR0cHM6Ly93
d3cubmV0ZGV2Y29uZi5vcmcvMHgxOS9kb2NzL25ldGRldi0weDE5LXBhcGVyMTYtdGFsay1zbGlk
ZXMvbXEtY2FrZS1zbGlkZXMucGRmCj4KPiBQYXBlcjoKPiBodHRwczovL3d3dy5uZXRkZXZjb25m
Lm9yZy8weDE5L2RvY3MvbmV0ZGV2LTB4MTktcGFwZXIxNi10YWxrLXBhcGVyLnBkZgo+Cj4gTmV0
ZGV2Y29uZiBwYWdlIHdpdGggZ2VuZXJhbCBpbmZvOgo+IGh0dHBzOi8vd3d3Lm5ldGRldmNvbmYu
aW5mby8weDE5L3Nlc3Npb25zL3RhbGsvbXEtY2FrZS1zY2FsaW5nLXNvZnR3YXJlLXJhdGUtbGlt
aXRpbmctYWNyb3NzLWNwdS1jb3Jlcy5odG1sCj4KPgo+IEFsbCB0aGUgYmVzdCwKPgo+IEZyYW5r
Cj4KPiBGcmFudGlzZWsgKEZyYW5rKSBCb3JzaWsKPgo+Cj4gSW4gbG92aW5nIG1lbW9yeSBvZiBE
YXZlIFTDpGh0OiAxOTY1LTIwMjUKPgo+IGh0dHBzOi8vbGlicmVxb3MuaW8vMjAyNS8wNC8wMS9p
bi1sb3ZpbmctbWVtb3J5LW9mLWRhdmUvCj4KPgo+IGh0dHBzOi8vd3d3LmxpbmtlZGluLmNvbS9p
bi9mcmFudGlzZWtib3JzaWsKPgo+IFNpZ25hbCwgVGVsZWdyYW0sIFdoYXRzQXBwOiArNDIxOTE5
NDE2NzE0Cj4KPiBpTWVzc2FnZSwgbW9iaWxlOiArNDIwNzc1MjMwODg1Cj4KPiBTa3lwZTogY2Fz
aW9hNTMwMmNhCj4KPiBmcmFudGlzZWsuYm9yc2lrQGdtYWlsLmNvbQo+Cj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBDYWtlIG1haWxpbmcgbGlzdAo+
IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5u
ZXQvbGlzdGluZm8vY2FrZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

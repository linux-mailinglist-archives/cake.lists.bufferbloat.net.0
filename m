Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6BE767181
	for <lists+cake@lfdr.de>; Fri, 28 Jul 2023 18:07:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3851B3CB39;
	Fri, 28 Jul 2023 12:07:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1690560474;
	bh=TvZxBQXwOpEjZewBKZVtU00Ydqg+fboKDeg83p91aVU=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=d+uk+BzpYWY8aHcT+LoBUMudmYxcabk3pDYmLEj/JbnMCKsRKO/8vF4MEHsZVw9ko
	 BlEUCuZYA+FO8I1p48yay63SdPDHs6QPHIz4fWA/v+/Q5kDp2uusfq5LTHLKnz4fSs
	 38pq4CaA6Tkj+ybI2ce1z9vF8iBMIG1lmaGrfU6AVDLyzhonoEbDQPyBPgLQMWMa17
	 LskTGh+08t0cSL95SFPKxHR1McX1DSoVjIIVit3tCj/tYnnCXRvwjb41S1cSHP4QoA
	 +S84fkb1L0TLbIEKzqSfrsqQHBf7YZD9Q9UH5f/V/n+rNxPxitM9XKxOSG6ZgNd5rl
	 D2pyMu6O7HHug==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com
 [IPv6:2607:f8b0:4864:20::52c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 183133B29E
 for <cake@lists.bufferbloat.net>; Fri, 28 Jul 2023 12:07:52 -0400 (EDT)
Received: by mail-pg1-x52c.google.com with SMTP id
 41be03b00d2f7-53482b44007so1272541a12.2
 for <cake@lists.bufferbloat.net>; Fri, 28 Jul 2023 09:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690560470; x=1691165270;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=f7ugkL30AlLffKV3kXl9GWnqzFwaOoZWgQM0ckwriCg=;
 b=QDnbwYp113WmPB4Jxw9zB2KmPwNdvnIhQ3t6ppMGwtWESaQVo8NA2obOk3WLDFBvGn
 QC7MPs3iZlMoVZCpcri3epyu2n+KZeF900K6GrsCnPhETGx7oZvXHL5c3nqmU22nvHiU
 zVTcRLi3BYXWoNpfqGZ06NdMiyCIZ7RplL2GOWzHwv8wyAVHkLTlmbAdr2xBUNVt3LmO
 4Ag2wmTFjFG4ZIZ9B/WWDNAJi2Ip+SgKrE7AttjqGAhG6C4Z7kWcwDnceaGhVbFEVIpk
 IyeseQ7AX/Ra6XEKc1eSkJzsgttfxsB4Bg5Uwzx2dvWQ4yihMplokxGhW1FyCDV8hcHy
 Ez7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690560470; x=1691165270;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=f7ugkL30AlLffKV3kXl9GWnqzFwaOoZWgQM0ckwriCg=;
 b=GGtQDVxH9ELOvoBJjqBy4FNy9GUox81z/JUSOwK/U198VGcHpkcByfF7Hli7hrSxbY
 x+3pS08zh9bnZ16xqgigW7PUH+CapAyaM0HzYPioUXAZQidI4YRypHTxtNbzrx/er1vO
 IEw259WQ4DIXQxxPTL5XYRwkEhGBi/nU15rSUqRl24q312HX99N8cLdXaFwgqdfG3SuQ
 S+TWghV5VWj/D3TqLKAiW+RxnUsuWgGB/IjSCCVgA+8dyL8k6/UeyRcIsLVeSJpkT3tv
 BLKpscjO9qmpABWGbF/uyyzx740s279kmrSkaIOB1DQA+ko+ZSD55tr8CAsVOuTxPr+U
 Y3Sw==
X-Gm-Message-State: ABy/qLZnraaX/Dr5gKOmPMmsjI0jqnAbBSzOCw159BiTJCLZY+RceYVi
 kGRXacnJIjPXE3rrsP66LTHoTLGHikH+I+yccmIQTj6moao=
X-Google-Smtp-Source: APBJJlFMa2aHugb8cffO6Kf5n3ob8NrF4E4UyYZv305WNtLjMudPAM9wRSeGmpvqxruAFPo2WiiNg+bENhyUjux7/4c=
X-Received: by 2002:a17:90b:1917:b0:268:1376:d501 with SMTP id
 mp23-20020a17090b191700b002681376d501mr1651794pjb.5.1690560470367; Fri, 28
 Jul 2023 09:07:50 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 28 Jul 2023 09:07:38 -0700
Message-ID: <CAA93jw5J3=seLV1SsB=o43CSY0+offWOiuqtQt30n5PBy=B-4A@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] cakemq
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBkb24ndCBrbm93IGlmIGl0IGlzIHBvc3NpYmxlIHRvIG11bHRpdGhyZWFkIGNha2Ugb3Igbm90
LiBCdXQgSQpzdGFydGVkIHdyaXRpbmcgdGhlIGlkZWFzIHVwIGhlcmU6CgpodHRwczovL2RvY3Mu
Z29vZ2xlLmNvbS9kb2N1bWVudC9kLzF0VFlCUGVhUmRDTzlBR1RHUUNwb2l1TE9SUXpOX2JHM1RB
a0VvbEpQaDI4L2VkaXQ/dXNwPXNoYXJpbmcKClByZXR0eSBmcmFnbWVudGFyeSwgb3RoZXIgdXNl
IGNhc2VzLCBvdGhlciBmZWF0dXJlcywgb3RoZXIKbWlzLWZlYXR1cmVzLCBhbmQgdGhvdWdodHMg
cmVxdWVzdGVkLgoKLS0gClBvZGNhc3Q6IGh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9
Ynhtb0JyNGNCS2cKRGF2ZSBUw6RodCBDU08sIExpYnJlUW9zCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nh
a2UK

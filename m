Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E227A53E0AE
	for <lists+cake@lfdr.de>; Mon,  6 Jun 2022 07:49:21 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 168A13CB40;
	Mon,  6 Jun 2022 01:49:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1654494560;
	bh=6T7e3Ujrye3ciiSRjpUZWDO4PqIw6ydldJObMyu+mic=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NXQnAuskJCx20otmkdArf0akNhzgxD2CUs2eSTcfLOdOPg7sb7wYZIoHLsGfc9a8m
	 fMyOBnhOmb+bJZyisWTIIShxRYvdEaDGICVoZ4M3eY2lNhd4TDc1vzvVpuAqcftA6S
	 5NiUZTGDwWHJ/2cUCnM1Irz8n+Gi1OHYwElBFMWYf+zVtumDZ4cfrlSlvsRFuaBv8o
	 v3pWodf+2TO/Oug1MTPY2BhtZW7c+RDdv988TCjbapJUv1ryQhQ8UA26qkIf6xy6BY
	 tm+3d5DZxRKqcnjtDq+rudLw1AO5QYQU2J7Woz+qHJo2lQYMJ0PWjo9ph69YTjO4mN
	 OiFi+vPfgiAJA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 262593B2A4
 for <cake@lists.bufferbloat.net>; Mon,  6 Jun 2022 01:49:18 -0400 (EDT)
Received: by mail-ed1-x52c.google.com with SMTP id o10so17334325edi.1
 for <cake@lists.bufferbloat.net>; Sun, 05 Jun 2022 22:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=wtj0m4agvgR/Edu/5zGn1XC5oGMhmLXymEKkB6btYd8=;
 b=Z6VJd8agh5IxX/5v690fzVZSw6RCvz+OZgvqMo+hOSXdRV9FXEY69QsdpVWlybZp4u
 zwquxAEiMw1XtZ+cSgh58ocfWg4eqdM2JYd870RK+yMViUZyBTyRXDpn7UgG10aoUqGq
 3cQZYq+kqpmZOFF2nG5pkPYEyy2E8khPj6E4/dvQL5lUDdmzhU4W8/ATIGcb+7hz/g1m
 kiVBwc45y8YywA+i0H40Nd2xCqroOo5eryFLAWF+Lr6zYWcW6MOVVbUiyvy0almyXYa8
 g1sATRCiiV3+e0zPtcvQC23fTHsk6iMAHrmdpURk8VsMYrmqbCBv1sKeA/7VEYcY1jXv
 YGow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=wtj0m4agvgR/Edu/5zGn1XC5oGMhmLXymEKkB6btYd8=;
 b=oSqAtsH6MEKHnL1og5W0OgyVwMfi9Kz+xTXGQQfVoiT7wY8VWnUJPzJkasiN/9vnrO
 Ogs5vDXar4ZPMInY42erI05/Qe0+dYtNTSmpH76/4LpZrNm/0R1HDwLkqg9ane/wEKqA
 /8H2oK/RwVSqFvB6C7VvYnaGu5RDrX9c5tIgiVKS/W3KuW+PFP+Hb4E33I237eMC/cOV
 DPCiksO12E2FnlFJB0T0BLzTARc54AXHcIBsoYLsnC/Hc9UKual4gEVOlDESIfBVUMzv
 1HMatEV9PwxEKYAc2nWnRtGHWNnzsTiueaakQgPzmBEhMFpf6sFisyC6GGTOe5p3YrBl
 /A+A==
X-Gm-Message-State: AOAM531HlIjUoP9aI691hW7B/sWN71Og7c8sfaVasO0Y98wrcAYQ7GOT
 iOK3wIfc4Wf2KJJ1PWIvPffjJYDSu3Z1y/7y/oVFr8ejGmiZog==
X-Google-Smtp-Source: ABdhPJwM6FeUHrZnrEhU9Wlhk6lgP8FA/39DdoyEU3gOXi+o3Y6CqxDYxA/R/7J+TTsJ9mRzhZ/MvJLWhFgaSCMtMOo=
X-Received: by 2002:a05:6402:1d50:b0:431:6f91:d4a5 with SMTP id
 dz16-20020a0564021d5000b004316f91d4a5mr242968edb.80.1654494556756; Sun, 05
 Jun 2022 22:49:16 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 5 Jun 2022 22:49:03 -0700
Message-ID: <CAA93jw63kSspB6oychamNOQsQBZ=Xa2=3dGraZwEtAMK-giFeA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] just a reminder to myself primarily
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

dGhhdCB0aGlzIGlzIGhvcnJpYmx5LCBob3JyaWJseSBvdXQgb2YgZGF0ZS4KCmh0dHBzOi8vd3d3
LmJ1ZmZlcmJsb2F0Lm5ldC9wcm9qZWN0cy9jb2RlbC93aWtpL0Nha2UvCgotLSAKRlEgV29ybGQg
RG9taW5hdGlvbiBwZW5kaW5nOiBodHRwczovL2Jsb2cuY2Vyb3dydC5vcmcvcG9zdC9zdGF0ZV9v
Zl9mcV9jb2RlbC8KRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBs
aXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGlu
Zm8vY2FrZQo=

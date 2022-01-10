Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CF715489F19
	for <lists+cake@lfdr.de>; Mon, 10 Jan 2022 19:21:23 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8E2023CB46;
	Mon, 10 Jan 2022 13:21:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1641838877;
	bh=MU1UVyFO+u1rEiX4Esq1ENNjSt4Al9WXlZg1ouwObew=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Z6vyQIrsSMME0Kg2Jc9LX2br37OUmGEjAQfIThoCEAR0Q1JGMXz1IB3nRqvZj38N/
	 LUGXbSBSC1ZzcYh4N6ahvYft8//xHNOKUDQQyG5NtsIUlIYApu3OgbaBMRCexAt9nJ
	 NC/347YVwV5Yg/mc4GIDmSAd4iZeHzgUrFvpl0ImHvUvhgAA2F6OhKE1xBv3XxJ5UT
	 FlbsiABYPH4joTQ80wWU7s5ltUBs2M8RmAXPzNNS0+mvroAX2EVQRnKivHRUuAQJtO
	 ov3nhFR6HLlMu/GXQXG8524WmW7d+GBjLZ4v6yJzmZmaIbNIfWH4tAi5CSWoSfGlAf
	 lKmskS09ecLQg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1DEA53B29E;
 Mon, 10 Jan 2022 13:21:16 -0500 (EST)
Received: by mail-ed1-x533.google.com with SMTP id z22so12011987edd.12;
 Mon, 10 Jan 2022 10:21:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=pLzUt6Ii1JKhSdYzGCw7q6K7rERUgevyr+0kOe+32Gk=;
 b=Q/KHSkRe2TCtRkygx3I88vdMVW2OGlMnwocC+FQJOa1QpWtP3dVCL3ZqhveUk/1bV3
 UaMP153F06VIH24wRfN7Gcdl3wNeNmP4WrsbE3RsNHmtD23/YNkccm2e2R/PZIwaTYcV
 cLqLONSog31Jc+IEYRmZLoRNUfrimybcLGnLn5YtXRt8EUIxOn9kkVTjBysQvyFTKphe
 wTfeYVFXk+jpJ66WHvLEEVdjnDnGo7uCm+0WmRBP5bPAU0RGOUZIpwC4z59SuR6G9i4S
 aTd23dVidpg6DI0wo9nhj2brFyQ1JtJ3wQtqwsCZiUpZtogjjZfo/5pPVUtabWqeFbBq
 t72Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=pLzUt6Ii1JKhSdYzGCw7q6K7rERUgevyr+0kOe+32Gk=;
 b=LIORcvbEw8hU0+/7F2l03B+YEYsQjmzRRM8emX4RPAQjBUdQSUfGUJcaRr5k5hXGVL
 RYYpViYhUKviokOf7FGH2Q7Itf+RmcX12Sbuplhi98RnK2PtbImyycHlbNBqqmLyrtVJ
 0e7Exy5dYmteolUVLQ2F+c+3IAgo9Ltz/Pot3wWD8vePeejYJ0gQG4mYyPbmV0VmI1fb
 nHFtOnjtn4mgvuVI+mFW3oSUUPRNgdUK0eCGs8uRc4kZm7OxYVWS92fPj+GzzLLSbmgF
 xCClLw9DLVJc5EHcwGhHLJMZazUD+Db4FE3cY3JBMFQ3hQILAj2yfon47Wmk93/RgQr5
 /WFg==
X-Gm-Message-State: AOAM531Ro2gqCoXFfoOUrGss5gVAaxAmeeglNYyhK5A/1VOizGz4CT1y
 c90rpYjvYDBK6jC3oxS6ox8PUpt5NBoTkGqeNhu4gB5ndMA=
X-Google-Smtp-Source: ABdhPJy421EdnPYdHCa68sSjY29P5KOHLlqUOoQ6wtA4udTdmLI34YiPSKXL0BO29EIFy8qmCAq7UNE4lfsODsY6qqA=
X-Received: by 2002:a05:6402:d07:: with SMTP id
 eb7mr849313edb.183.1641838874159; 
 Mon, 10 Jan 2022 10:21:14 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 10 Jan 2022 10:21:02 -0800
Message-ID: <CAA93jw7B0y3Voj_fTTS1WMPkCi_mn8ckVbKKU10feR7id-Vefw@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Subject: [Cake] cake + mpls?
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

SSBub3RpY2VkIHRoYXQgc29tZXRpbWUgaW4gdGhlIHBhc3QgOCB5ZWFycyB0aGUgZmxvd19kaXNz
ZWN0b3IgZ2FpbmVkCnN1cHBvcnQgZm9yIGRpc3NlY3RpbmcgbXBscyBwYWNrZXRzLiBJIGRvbid0
IGtub3cgaG93IGRlZXAgdGhhdCByYWJiaXQKaG9sZQpnb2VzLgoKT3ZlciBoZXJlIG9uIHRoaXMg
bWlrcm90aWsgdGhlYWQKaHR0cHM6Ly9mb3J1bS5taWtyb3Rpay5jb20vdmlld3RvcGljLnBocD9w
PTkwNDQyMiNwOTA0NDIyIHRoZSBxdWVzdGlvbgp3YXMgYXNrZWQgYWJvdXQgY2FrZSwgdGhlIGV4
cCBiaXRzLCBhbmQgbXBscy4KCkluIGxvb2tpbmcgb3ZlciB0aGlzLCB3b3VsZCB3ZSBzbGFtIGNh
a2Ugb250byB0aGUgdnJmPyBvcj8KCmh0dHBzOi8vYmxvZy5zd2luZXNvbi5tZS9lbi91c2UtbGlu
dXgtYXMtYW4tbXBscy1yb3V0ZXIvCgpJIGhhdmUgcHJlY2lzZWx5IHplcm8gZXhwZXJpZW5jZSB3
aXRoIG1wbHMuIElzIHRoZXJlIGFuIG1wbHMgZXhwZXJ0IGluCnRoZSBob3VzZT8KCi0tIApJIHRy
aWVkIHRvIGJ1aWxkIGEgYmV0dGVyIGZ1dHVyZSwgYSBmZXcgdGltZXM6Cmh0dHBzOi8vd2F5Zm9y
d2FyZC5hcmNoaXZlLm9yZy8/c2l0ZT1odHRwcyUzQSUyRiUyRnd3dy5pY2VpLm9yZwoKRGF2ZSBU
w6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

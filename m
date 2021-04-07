Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB633561D7
	for <lists+cake@lfdr.de>; Wed,  7 Apr 2021 05:22:47 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5AE473CB45;
	Tue,  6 Apr 2021 23:22:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1617765761;
	bh=lqVfixlVB5Z7tEoE+mJC8jBW6Xrtt5fdbrifNYwZ1Pw=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=llSQ6nmfxgcJIKaDFQP23Sg8GX9MAHYoNMhiCpAyKmTbeRwaOoyt+4qQoLXSiqWTk
	 rzaQy5zAiPejqKvFTW4yZEGBXLx/lQAAYP38q/Ih8SW5GFPmOr/Cee5s3ZVNmhwLxp
	 EDU3Hl/sU3+I30mq2E3cBA24qmS+MSGA1HmnALrwMlsK65wqnAq0oQPkZfK+U2nWh5
	 wXCtcDje/cO+zQKuCnFMo0CaWXVcElPTFK+6NM9/KTndbWAvzc0xbUSMhKg44n5a8Q
	 ORLMQVE5RSeyw125/SkUO9oCdBJspghA+GpDq7L/m8+MBpdvA+ScvroHx93ntVGodw
	 5jZ5JQduH0XIA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com
 [IPv6:2607:f8b0:4864:20::12a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D43A63B29E;
 Tue,  6 Apr 2021 23:22:39 -0400 (EDT)
Received: by mail-il1-x12a.google.com with SMTP id t14so15014527ilu.3;
 Tue, 06 Apr 2021 20:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=O5MAsC415v9RZppMIplpR1QbqXHCV4gd+OGayFu9+L4=;
 b=lh5I/5GqfuJ+SeZrQgJncEcsIDY/HjLCDxijFsDRB27XMNMfbzLk081HUv37vK447b
 zvnebmlDKFFWDz7aph+xO3mz4NHtLZCdvOVcquE2GYOwOe9T10HCfvnDAlQmlSEXslfB
 T9sYDVnKB3xY93Zqm7Z01eHPuxOe85d0FSzG/yQw0SW5XeSQaNYfxA4SOnodBS91ZTTR
 lxEK71CU1SNq3m2gaKah2o2xKEqRaHt/3naQPNB9q/Dpycn2nvtL+TTZFr2UNORO//fb
 u7feNCeckMa0aCUur+GWZU36VVVEa4aNfLzGficebi3Q15rd9gYchdhczLIX+jFWiOq8
 j/aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=O5MAsC415v9RZppMIplpR1QbqXHCV4gd+OGayFu9+L4=;
 b=bLMokRRl31f9qXfMK6bvXJtMGXOQWajw7GDD97ocvKuVFTICV8wZ+ANyY4xpqhzZij
 XC+Zg2fc36JYOi6s8NhWRFle5l1TmVcV21zdf6wE1yLNN1qkCHBJYo9KZ1eNotSB5Wva
 iTSfjQANTNiyClqIv3S0Y1z5/m7dpRoIO6ONzNr0VGFIbTxmmaBhN0hDHhY1+8eiOLpk
 j760rjGDnMZpn/Xfk1nJ8YpHLoCyDPU/dGLWeVIfNSYEQ7Ix739TK0ZCQARv6mMqD2s6
 caJC4+T7UVAUnotawIHtDPJ3UWm9qLNhSwjrTCOGYSPSUp+n338D3Rq9+PNWkMDpOuYJ
 xj2Q==
X-Gm-Message-State: AOAM530eM3IhDa/iycTwNnwcH8KoLodvABhry6ddzeyVGFWygEDtjMN7
 n0yZJrwBNUEzKDGJX2xGmdKcwCSElqi3d8/b/KUk8VM2jdSiCw==
X-Google-Smtp-Source: ABdhPJxoXEb+ABonIfXIehkQGZ/HaLl4+4Nyl/5W+AQdz/aO1+h5NX9LkxEaD4SFyuyE4+Fz2Fwh7xgRMQtYUQEC7kw=
X-Received: by 2002:a92:6b0e:: with SMTP id g14mr1150697ilc.246.1617765759030; 
 Tue, 06 Apr 2021 20:22:39 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 6 Apr 2021 20:22:28 -0700
Message-ID: <CAA93jw5dTO_exvS_CRsvdsngoML2fNXOt0ywxJAQAQmo2WJEaA@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Subject: [Cake] caida workshop on Overcoming Measurement Barriers to
 Internet Research (WOMBIR-2)
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

YXByaWwgMTUtMjAKCiBodHRwczovL3d3dy5jYWlkYS5vcmcvd29ya3Nob3BzL3dvbWJpci8yMTA0
LwoKcmVnaXN0cmF0aW9uIGlzIGZyZWUuCgotLSAKIkZvciBhIHN1Y2Nlc3NmdWwgdGVjaG5vbG9n
eSwgcmVhbGl0eSBtdXN0IHRha2UgcHJlY2VkZW5jZSBvdmVyIHB1YmxpYwpyZWxhdGlvbnMsIGZv
ciBNb3RoZXIgTmF0dXJlIGNhbm5vdCBiZSBmb29sZWQiIC0gUmljaGFyZCBGZXlubWFuCgpkYXZl
QHRhaHQubmV0IDxEYXZlIFTDpGh0PiBDVE8sIFRla0xpYnJlLCBMTEMgVGVsOiAxLTgzMS00MzUt
MDcyOQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtl
IG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

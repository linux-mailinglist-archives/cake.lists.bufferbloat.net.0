Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 788EC5A9D80
	for <lists+cake@lfdr.de>; Thu,  1 Sep 2022 18:50:07 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 727213CB48;
	Thu,  1 Sep 2022 12:50:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1662051005;
	bh=0kgoN/eiRXNfAv3euCnZUfPBALTwS3flVskblWN0s3o=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=h3VARZyfzNMJNsdlnH4w9gHd4ZBne6Yppy1jUrpmfM0e+p93eEPpQyA5G4WbPz0XE
	 dd5SbOn8L/KjOonbc7gwc3mXOzbXMDJ8lZXpGgLVD/III1AUeMt2oaK5m5bWnZFnHr
	 JSPWA062LNC5iJZIwgyIoxvXGC3PDZqeNx7Oh9Qnqisd0ZUZHLx8qOsfEIFH7SMzBc
	 0k06ghk1gfi/VjU46A1EAEzvvWvmF1tOrocrMB1mb1BL187n9L3KtfiPr++u+b33qj
	 tXLmYCCooXm0CrLT3174GwlZWwjVq8kx8aCeXUSxtkjmG6CqBotW7qG5dIzoFDPCKv
	 0hfsr1OBsrVuw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EC2553B29E
 for <cake@lists.bufferbloat.net>; Thu,  1 Sep 2022 12:50:03 -0400 (EDT)
Received: by mail-wm1-x32c.google.com with SMTP id s23so9343428wmj.4
 for <cake@lists.bufferbloat.net>; Thu, 01 Sep 2022 09:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date;
 bh=D/8O8vlkVN9fkr1M1IyDZMEdEqVQWVjHnVeyHVssMoA=;
 b=I5DxP/vrwhtCMtlTTGfqjUQWkQjxMxJHCq75oz81IUjsNml73WDhmEUUn1G9wRSaK0
 8QB/eu3zLdoGgDF25nxRTY5ov8QkLaj4iZ9CU4CzVuU5edhBz1byYNowj5jKmTn1S9CL
 GOenFrBstT11k7qB6mV2mxSGQwTVESDlE2SZ5E/w6rmMd4Z6AUmY4pnkPPYt7rGDVw07
 RqxvqKBdPqgDdBHDv+gGoH1lpyaqdoOV387/aqpFVms2aES183u6e8mpmo6i2FR/ZT5f
 CP5JoGk9ZQbdPomdwFyFztoHc6bGWZgUuESOgamo88Jp4AdAkyO1koX8RtXiNJZmDfaZ
 70gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=D/8O8vlkVN9fkr1M1IyDZMEdEqVQWVjHnVeyHVssMoA=;
 b=x2bMpEWvBHb2MMLN1pQFmJbMMPObGvMetSmWnsUHNBdkFunbav28nHWwrykLGKZJ/6
 dt3dEUnzqqBhDhZ5iThJHZ5p44QAsIj5AdLDv7bH5HNGF5i9uc/dmPZTsTH6C2v1Wjw7
 eqeqCUjjk91gppSGs6kCP4XzvwBwgCELjcnUY13a+JbGEvqCIB7Zktv6NkSkmuQUZMGm
 3VT9SWDrWe1YirX2dBzckv70dvr+Q9HI5zV4cphuvfmThhqMUeAi6sOpJmhKOWNjEcdy
 CQ68YURbJ2RbwIekMEe7XlAAkqlty1DOgZ8iI6XVzq+ZAaonBtA9Trf31HciLmHjjD+R
 zelg==
X-Gm-Message-State: ACgBeo11N5V42Imkkq+mz7WDzZFtENzApuNh/lpBiYdJdwpzy5YrGYhm
 R5+hY3/9GAeFjifeA5Y1dPPy7OJTWw3X118K/tYgK2WOBEQ=
X-Google-Smtp-Source: AA6agR7T3CNFnKsrKoJX6HytzLVnEGE/OeZ1MLWfQY5KwB6201WEZixcUxCLSm+jsaJVThie6L8rbMFdul2LwmkfL+o=
X-Received: by 2002:a1c:7418:0:b0:3a6:5e8:148b with SMTP id
 p24-20020a1c7418000000b003a605e8148bmr37142wmc.128.1662051002699; Thu, 01 Sep
 2022 09:50:02 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 1 Sep 2022 09:49:50 -0700
Message-ID: <CAA93jw42bm1HbkoA_PiPfG08CoY15hQRbvLr49sLGxT4xOk0Zw@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] keenetic uses cake
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

aHR0cHM6Ly9jcmFzdC5uZXQvMTQ5MTgyL2VuaGFuY2VkLWdhbWluZy13aXRoLWtlZW5ldGljLwoK
QnV0IHdpdGggZHNjcCBwcmVjZWRlbmNlLCBvaCwgbXkhCgotLSAKRlEgV29ybGQgRG9taW5hdGlv
biBwZW5kaW5nOiBodHRwczovL2Jsb2cuY2Vyb3dydC5vcmcvcG9zdC9zdGF0ZV9vZl9mcV9jb2Rl
bC8KRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZm
ZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

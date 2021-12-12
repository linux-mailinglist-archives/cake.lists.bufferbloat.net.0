Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7E7471CB2
	for <lists+cake@lfdr.de>; Sun, 12 Dec 2021 20:34:22 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 670E43CB40;
	Sun, 12 Dec 2021 14:34:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1639337661;
	bh=w6YzkzFLARDZwS9rz/I62Xm2zlkSnvSO5imqpdFMsHI=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=kP0bEUN28OxphHaR08jF7wrrqHIatn8lK4m7TosZc6RLaK47ADhG+baD3XbMTuB7l
	 pOtowjM77fMa1j75ZW+Go/jJGK73szMinOrDqJnO2haM6932YIcwpW6aWbOWfskqBU
	 hUb6lEkmNxYJUafYAIRbDgTxSKRHycEbOmyPCA5bV7DSRRP4cUYelXe7vc26/mkd/O
	 bu9W/bFEtlonfGedjfEl2Yb2MGpvy3/HrgTgQmitIbuWbwIlyr9eddv0rlj6tIlyEC
	 bafmZoBoYmsi2sFpstDtT4L7pwPfDd7Bp6o0q6GgHkpdJY5QTUsLgYO4V8U2I91IFp
	 inm9MGFUS631Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com
 [IPv6:2607:f8b0:4864:20::d2f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 400703B2A4
 for <cake@lists.bufferbloat.net>; Sun, 12 Dec 2021 14:34:20 -0500 (EST)
Received: by mail-io1-xd2f.google.com with SMTP id x6so16165439iol.13
 for <cake@lists.bufferbloat.net>; Sun, 12 Dec 2021 11:34:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=zCFR7ZcgiuxKX/2Npy4b5RCcRbGDYANZRjomBrH7Hqg=;
 b=U61PepiK5gzCHDuPUy6iI+kg54BiKYUJwaTJ4zbmdRRh8McQYbueGMn3CxKuVaEfWh
 LFF4TylW2fDUpdmoxc28D3s0DvmX8zUBXJ70qdBPAdUNAm7NnRJa4QgHiqh7HEd/BAah
 qDdKT/01UEY1zAkTHO+lpdBJfDXIPfqEqF3ymeFgNzgvqOAQ0DFHlCoZht1CWc5rZQ24
 lenJdVLNgGRqqyDs05YAH26B62tAx9X9z7CozIcGKL6fvw6ypjC/RNxTUNczwwCyZQtZ
 etH2rE7vbotxY0j+m2a7d0WKKL5FTHVRHmcrF70jWf+ooNcWk13Io/Hn1ygL+/Wvh7BJ
 18CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=zCFR7ZcgiuxKX/2Npy4b5RCcRbGDYANZRjomBrH7Hqg=;
 b=UcSacjzEzMJ9j1Fr/Bjd24svlR5BkwGJtwTWPNBwoUdnA6VPWQ+DrJokez9IL19wr6
 6cGhpmo/21W18qc+bQSwb/rjoSVwOtwrz064OS2jR1Rkdv6NQKNb/mgR5s6mUsDpenTg
 zYhc/Op5kY5XGEoE2he7pFsRMuszg8Qm4BkrVSwmT93l9Q+LOwMIylyaiYfq2O/x4OuS
 3AIe2QA60tfZrjIC0rfq3PRqpdXPl7QtXyhZyVFyYd2OZHKKg+s3mwSUJ2z066OtUXGC
 K+XPjeCSiMQBUpuyHnUVcOAANOA86UV7aYSX9VNtkt9lSVebhfvNVnPIRc0lpAJ1FChF
 3S7g==
X-Gm-Message-State: AOAM5319xtu6axNlOhJ7TlAliWfaCwKD6VTATOrw4Hk4Uzr1+g0jdt6m
 ViaYkRdQB/nN4I401LBH0h7xvY+UKZdqdNwtC8ImwluuGyU=
X-Google-Smtp-Source: ABdhPJx2KAKAAdutHJrDdYkQZLtdhnnS+9jmAK7VbuIe71UZngHhCB+ldMsTyMSuYVJdzNAImPkX7L0HYVB2mc4nLMI=
X-Received: by 2002:a05:6602:2e81:: with SMTP id
 m1mr28654375iow.55.1639337659333; 
 Sun, 12 Dec 2021 11:34:19 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 12 Dec 2021 11:34:07 -0800
Message-ID: <CAA93jw5WQ_sXPZSiSyMrBvwu=QZUsXiZxSuR0jJV9iLjqebiYA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] sometimes I worry about cobalt's effectiveness
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

TE9ORyBzdHJpbmcgb2YgdGVzdHMgb24gbWlrcm90aWsgYXQgMTlNYml0IGhlcmU6Cmh0dHBzOi8v
Zm9ydW0ubWlrcm90aWsuY29tL3ZpZXd0b3BpYy5waHA/cD04OTc1NTQjcDg5NzU1NAoKCgoKLS0g
CkkgdHJpZWQgdG8gYnVpbGQgYSBiZXR0ZXIgZnV0dXJlLCBhIGZldyB0aW1lczoKaHR0cHM6Ly93
YXlmb3J3YXJkLmFyY2hpdmUub3JnLz9zaXRlPWh0dHBzJTNBJTJGJTJGd3d3LmljZWkub3JnCgpE
YXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

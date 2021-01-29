Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F90C30888C
	for <lists+cake@lfdr.de>; Fri, 29 Jan 2021 12:50:18 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9A1453CB44;
	Fri, 29 Jan 2021 06:50:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1611921016;
	bh=1QsiRAueXs93pAjOWlA/ma/IXqRwntBvV68dqxBrHI4=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KxlDgBljdk3cAh6Sdg18IIxaOFGEIuxl2CDpHyP8WSkr5fwAOsiKsxX+cPu/c6pdm
	 Q/ewRU7VJyftTsyXFkliulQR+HXR/WERzyVnAY2KEGF3XCfHXP2z3aTkZnunSELpcu
	 BHNODefrF12KBMMHtJqqdorYpxHsSpcjbXTzm1WF3goDPXOckCMuRHCuzMuauY71DC
	 oblaT+GnC+PW69OWxfsWxLkARHZ1VZ3Z9v8pp6spXrShH/02lwJeFRGqwJgCqHQNpu
	 A7QpCm1ZoU5xUC6dmxIz4BZZDDnAcVXhO3Y2Fll1gbm1dzQsnJKvwbRIyr0APzUNwv
	 ry+MiP3UJkLAQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com
 [IPv6:2607:f8b0:4864:20::12f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8586A3B29E
 for <cake@lists.bufferbloat.net>; Fri, 29 Jan 2021 06:50:15 -0500 (EST)
Received: by mail-il1-x12f.google.com with SMTP id y5so8247923ilg.4
 for <cake@lists.bufferbloat.net>; Fri, 29 Jan 2021 03:50:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=gfZSd9AZkSgTOm06zXw4fjNPgkhcO40CCTP0c8vU5Xs=;
 b=WyRiXPsl1iazHXerWGbfZ4wwpoq7VyjNVJCC0bTayOsX5Ox5ly3hzEhwnzkpT2KIki
 P1JyrDV5mtbGXbfRMxx6csrGWWUaPJk3diRUxiutMKIrF9dISqPBuEZM/pvC0YhGoFOi
 II05evc3fq61WECTvvnuAZO6v9dvUbaXIduMv7CalBsyeTovTMgzUsmDlrI9+AuxOiwE
 bPmz9J0CgrDQdHB+dcosBpDz1oSBUe/rIjqjSSfvHkatQ4P1SMf8PCeOvxRAcYiw79pN
 QM/1FMM1t95Mj+4atJ1Toou2CpGbZh+HjsSZR8J2Z7L0oBB7eXVQmk2/kY+/KHk6JsCj
 BLCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=gfZSd9AZkSgTOm06zXw4fjNPgkhcO40CCTP0c8vU5Xs=;
 b=XB6dcnpC7tU55w5J0X+8ktCxG3mzazMA3/Ru3DmURI2btm5PJXvA4j5tXe+1yfbMwU
 tZybGYri/b+Edo43/oZGDPBbP3qYxENpZAKA9mqvTz11B7dqdEmSJmEX2Sx0apUCbpk8
 DwyiyqK19aODMokjwkjJlh0y6NbDKCgAyfzTX8X9etucUJOuuPPStb1/AgvV8u1jMTZI
 7BllSleaqmbYsf2gnNIog8ES+ACM0XqWunY/k0wf4kZ6+Eu5YXOQ8s2R6kkbTZTghP4v
 2nJ4UidQenxBHHc7ZCVMntvtHbXHnIMdozM4EBd9HrUKBTSG067+3NvBkEu7gC7tICT2
 mqhw==
X-Gm-Message-State: AOAM531/u90Y5O5cjXwcnmrznDU8SKNDxrPom3cmDmNK07gcy72UUs+z
 A8+oXiVNNwCOTlCNbPJMvmCruhD4AQ2/W2XFMgOCJAJDw8zdMQ==
X-Google-Smtp-Source: ABdhPJyhIOF6wmH9NDD9VB18qNlmsOMgUTvgxpWdGyohbLvN1amwQVdUnfcqRWnea19sNM/KtAAF/Cdthdhqfm145yQ=
X-Received: by 2002:a92:d44d:: with SMTP id r13mr2670851ilm.0.1611921014553;
 Fri, 29 Jan 2021 03:50:14 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Fri, 29 Jan 2021 03:50:02 -0800
Message-ID: <CAA93jw7LnZQBqfLNtXChkENmMsqDqtJirTLxY+=OWqEhPA52jQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] cake rant on eero
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

aHR0cHM6Ly93d3cucmVkZGl0LmNvbS9yL2Vlcm8vY29tbWVudHMvbDQxcDFhL3NxbV9vZmZpY2lh
bGx5X2RvZXNudF93b3JrX29uX2xvd19iYW5kd2lkdGgvCgoKLS0gCiJGb3IgYSBzdWNjZXNzZnVs
IHRlY2hub2xvZ3ksIHJlYWxpdHkgbXVzdCB0YWtlIHByZWNlZGVuY2Ugb3ZlciBwdWJsaWMKcmVs
YXRpb25zLCBmb3IgTW90aGVyIE5hdHVyZSBjYW5ub3QgYmUgZm9vbGVkIiAtIFJpY2hhcmQgRmV5
bm1hbgoKZGF2ZUB0YWh0Lm5ldCA8RGF2ZSBUw6RodD4gQ1RPLCBUZWtMaWJyZSwgTExDIFRlbDog
MS04MzEtNDM1LTA3MjkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6
Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

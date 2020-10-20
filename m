Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C847C294412
	for <lists+cake@lfdr.de>; Tue, 20 Oct 2020 22:44:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1349B3CB38;
	Tue, 20 Oct 2020 16:44:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1603226649;
	bh=P311YLACdB6qThza/tQsAneNM7JZgZNpMhCfTPsS+8w=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=P9fDG080rpJBnFJ8MMargbt9K4CoHBhZZWZ39OTnA1wGia+HRozNiqzzHrUDCCX6O
	 aR6adq/KiNnpJYvE0pqXhyUrvX/wLmGIAtF9MrIWn9EAQoZagZcxChFW2l69xNknSb
	 amA9NuuwNB1tWzMqExOPOuztjRgcq2GXZ5NioclmOGuJmIrLsdDV+yiuu+9h/dYEB9
	 SNOQmhKpOmnRW8c8eEnGYMNVi4xaUW121JleqguV+tm2TqPfDE8ftMriLX0K5e9qhj
	 V4r4IoV1i3vAVu8ecfckSiu9wi88c6FWeroc7g3gVHPFnQUrJh2dC69O+5uG28+sfP
	 NJlOUL6U0FLkQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com
 [IPv6:2607:f8b0:4864:20::12f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 864B23B29E
 for <cake@lists.bufferbloat.net>; Tue, 20 Oct 2020 16:44:07 -0400 (EDT)
Received: by mail-il1-x12f.google.com with SMTP id l16so189885ilj.9
 for <cake@lists.bufferbloat.net>; Tue, 20 Oct 2020 13:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=5qRng2X58k50JkvwDGNdheX402MI/GaaBAEoY3jnFEU=;
 b=UdxJLUmAJteH51jfYUNg6VfbrQ8cWACZBtvd2hdEdSFYyJ79hIWApetQDkp30T7yaw
 ZisGxvCEhdCL6a8G5zOZB28eEFOVsrHH7Jj6nqkrc8uZRt3gBcx814pHx09XVXFftupa
 FVAH+B5zqaUu8Pw0x+x1l/tEElJ1wUZDW9ej9Uayc7CNMZJfSopGJlahwi459by4ZS0/
 9+UyNR/iD5uBAnwq6/w21DdEerz/VGzkpY/XaMPpfZlw3bboGnfzV29qOIMcg+wbSlFK
 Twn9oWQ59jQIx7erPJzk4zy2e+P/APSldRp79JrgcPyWK6JOCChFXAYaxIU3njuzxX2y
 Ik0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=5qRng2X58k50JkvwDGNdheX402MI/GaaBAEoY3jnFEU=;
 b=WR8QOM0BsEejeeDbvr23jL/SmyyUy5/wTMnPexDgvzsfbrUJDqWBvO/7j9vqNEwwgX
 Gqd9gm4Ud3yzOAWG8CZgZkCQD0gULR1TtH0td9C+KIBk2h+ZjqjMPiaOshBIcvJUbISP
 JES58XZ1VNmuKhmLcAvFYV4EzchIa20VJglXwkRNjoTKgbTdtkeGeW0YowOA76IajB9r
 hbDeeIXxfH1c1/Tx8Ej8dY9k3aNDISdpZrOdBeJ6GcnZeOMEGFB8zhSH7Sp72lKPluk0
 8ZSt2fOLPUZ6VvpEw59oM+EcrqjLU3cR6Pl3x2yNBBcqM9brgeKMY35KoRLiwQHM9mGu
 LyYQ==
X-Gm-Message-State: AOAM533bAVRz30X0Wy5yJ2MvVhANDKSgbybL6gpOQLTwzo/Mwvyn/Blw
 kRAsRb7ma932WPzOqu3rdVqYlpzHY/Xu5bkpF59syLwx4bw=
X-Google-Smtp-Source: ABdhPJxDoAjrMEmxW2Z7oj9d8A+l5lW5vTb6nbHXplOLdF8slQ55hYCdv54dMenRURTvHM6yuYpHWihoodqB+LlA8Eo=
X-Received: by 2002:a92:d808:: with SMTP id y8mr3473214ilm.249.1603226646610; 
 Tue, 20 Oct 2020 13:44:06 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 20 Oct 2020 13:43:55 -0700
Message-ID: <CAA93jw59teHObT7n+kGn9VLL455mJP+38ubzbzTutNUfT4vfZg@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] nice like on cake
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

aHR0cHM6Ly93d3cucmFzcGJlcnJ5cGkub3JnL2ZvcnVtcy92aWV3dG9waWMucGhwP3A9MTc0NDE5
NCNwMTc0NDE5NAoKSC9UIHRvIHRvbSBtb3JyaXMgZm9yIHRoZSBsaW5rLgoKLS0gCiJGb3IgYSBz
dWNjZXNzZnVsIHRlY2hub2xvZ3ksIHJlYWxpdHkgbXVzdCB0YWtlIHByZWNlZGVuY2Ugb3ZlciBw
dWJsaWMKcmVsYXRpb25zLCBmb3IgTW90aGVyIE5hdHVyZSBjYW5ub3QgYmUgZm9vbGVkIiAtIFJp
Y2hhcmQgRmV5bm1hbgoKZGF2ZUB0YWh0Lm5ldCA8RGF2ZSBUw6RodD4gQ1RPLCBUZWtMaWJyZSwg
TExDIFRlbDogMS04MzEtNDM1LTA3MjkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

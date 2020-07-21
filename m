Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B71622283DE
	for <lists+cake@lfdr.de>; Tue, 21 Jul 2020 17:33:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 321873CB38;
	Tue, 21 Jul 2020 11:33:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595345589;
	bh=vkkLhrxPlHsl/c7kqTnMh0M6xx6zjQFj/5LgUA5Rm5g=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XHHESnd7YLUQRMYzixOHkmgEbvpiKfxoKH3vD4Kz6vDXfJ8CRC9CT3awurL+AArnB
	 CmLNDfc4hmhlFateYdv8xLPZuA6SDGWaxvW69O+h8dCWYdfA1/3TiW+OO8LRBqavej
	 bXcHFhPkfeikTaTpxPwNqZaD005Xq5LqmLm3jxlpqKtsFgCvTO5tL8XYgAMvHlnnDi
	 HRcKcwiYTvCedP0WWQwuTxruTNidv33g0z4uOtHJQu6pP7md+pWtPaVOrY3ev7aBlw
	 E9oVt6q7Ph1DpVfZpw4DSlVYNYQ9QQ7LOBov7tASiwvNxW97Qn7aQtPfDp0OCZrg6X
	 09rJiRxpi8nkQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id ACEBE3B2A4
 for <cake@lists.bufferbloat.net>; Tue, 21 Jul 2020 11:33:07 -0400 (EDT)
Received: by mail-wm1-x333.google.com with SMTP id f18so3319434wml.3
 for <cake@lists.bufferbloat.net>; Tue, 21 Jul 2020 08:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ieee.org; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=gUpysIJhoo+v6Bsan/d23iJi9haYMF01G+/dih1fHhU=;
 b=MWl3DrdOBhanKbbVE1jvcpY1A/iQuJl4zCGfyBx1P3TXSkdoo8h8pDb247JS7LnE+m
 3LK+zFA3iOJHaHPgOvRjcClXK/VItBLw/oGJhqKPziyDyFijju9Ity5n40FESTBHdUKe
 W9ybP6nKEyv/rg0T0U5WcZGOpZjSgy/ekvwCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=gUpysIJhoo+v6Bsan/d23iJi9haYMF01G+/dih1fHhU=;
 b=QccKsVNVfad4+U03QC8JWV+RNLgxjGziYM5hNXihKX46sndEq0uiSyYJgiXE4hKGoL
 q0xgBhtz/0Fpf+e+n/vgcBq6Jh576rg+ivf2cNWPU82L6Ib0dcvSWrkcAqlc0zImPmMp
 MMBIcf+LbphqxsBuGA/myboHzB8HWshF9SWHkqFDFd1GTBYOCMLRtfeb11BhMCFm/sRs
 qpmdTrZ1R5B4eripodTPEEH5cdcTVU+w28439q71K942JbKvlYuDbY7PVf5TYb05KUbm
 1zJeHy+M4W9acibSS5J6R0PVhAzjbk3BOFCZxE32rb3ntXNgLzth3bPCGQpRkagcER9B
 o9bg==
X-Gm-Message-State: AOAM530F+CsgHJJkjBj5VC2Cmk8cviI8t8nk0Ou08zP5klKTRATGvtaq
 Kjeu1Tn4DwZCDcZS6QXbLc67Q1A0NiH3Ej8v4Eq8RHmNgb0=
X-Google-Smtp-Source: ABdhPJxitphU/U2fbqzsWJ5xOfyGJ4Hi7ABRcqFUR7aFFFkQT6KXin6sXeAXZNeG6OaPTQy3FTUBoYXH+eapDJgWa9o=
X-Received: by 2002:a1c:4d05:: with SMTP id o5mr4507700wmh.130.1595345585917; 
 Tue, 21 Jul 2020 08:33:05 -0700 (PDT)
MIME-Version: 1.0
From: Luca Muscariello <muscariello@ieee.org>
Date: Tue, 21 Jul 2020 17:32:55 +0200
Message-ID: <CAH8sseTbx=f4EsAw1cF7JiJNWytM+1_DRS98W=fAQtOyPYG1XQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] quantum configuration
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
Content-Type: multipart/mixed; boundary="===============8869046161646849289=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8869046161646849289==
Content-Type: multipart/alternative; boundary="000000000000f175d805aaf556d7"

--000000000000f175d805aaf556d7
Content-Type: text/plain; charset="UTF-8"

Is there a reason why in cake the quantum cannot be configured to a
different value like in fq_codel?

--000000000000f175d805aaf556d7
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div class="gmail_default" style="font-family:monospace">Is there a reason why in cake the quantum cannot be configured to a different value like in fq_codel?</div></div>

--000000000000f175d805aaf556d7--

--===============8869046161646849289==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8869046161646849289==--

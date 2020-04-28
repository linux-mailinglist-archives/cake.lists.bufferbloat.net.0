Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FCF1BC5E2
	for <lists+cake@lfdr.de>; Tue, 28 Apr 2020 18:57:47 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2631F3CB4B;
	Tue, 28 Apr 2020 12:57:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588093060;
	bh=vTlP6eRJp4Ro7N10PvB1P32vFarUYxoz+CrRtCCT8RM=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Idwhly/h1ZSyWv3KA/kslFNGg4nMF5jFtYLUIt9kxHkJPFRmMzu4i9eHSdDBKdW5O
	 bMBN5bpwUmkfuH1EAtdkrrPhCJYTz/0Strz5CkFZy/xsn+3yNn7pUPFrAKmYZjqVSv
	 PinMn91F7zpMCOWO6G1Lg92QHsXkMbaMOv9pWWYX6mwO1aDmOcrZFwvF85U8+2mPTQ
	 DZGF20EAsMRWg7tLaQ1SH0MX9mSWby2xfB6LO4Kw8ZmiUXgwNipD4/WOg4bXCTy7K3
	 RdsqhaWuO+HFR68AgaA+sfzAebv1UGyg61NpWtvou0yrOkN9/nP1BECQuO8wx2gqpa
	 II+Pn+LDdindQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com
 [IPv6:2607:f8b0:4864:20::d35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5E80F3B29E;
 Tue, 28 Apr 2020 12:57:38 -0400 (EDT)
Received: by mail-io1-xd35.google.com with SMTP id k23so8520897ios.5;
 Tue, 28 Apr 2020 09:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=d28oqqLY8MDl6YCW/NV0olrZbVbSWvX/z+/2216t8MI=;
 b=o7pxW1XNOT0qol8LdPL1OjANKcltqhkf0RB6dZ4JQUnsBfYlebx6LCl+e1wL/SKAl8
 qtgcac90KJnvGqLz4sN3BoiNu3YI1u60/1lDiVQ6MCL9WWIEz+v/QxN1ceDDbdIeHJBs
 hB0XQ3UQfdjy9Sl7kBwg+CrQQrAAWFmikKeYlS8bF5CRc2Iffj17SL4dh+8bzyiaky+d
 T26Ik4PzXpvzVC6Br1n7fYlm3St1sfML59AHI7Sq/vkkFHxglshfdoc8jjE7qS9GSRrw
 XzKzo5NylO8lPMiymEd5XZLFgzVjVq++TGQy54j/SsyEoya6TZl/WH6LDXEpRKpgjHw4
 K8YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=d28oqqLY8MDl6YCW/NV0olrZbVbSWvX/z+/2216t8MI=;
 b=GG1/yEq4QLIEAVJq9EU0ZquAtfMp2f6QlF53qDCH8ki9nGPvfHDbxgkAmadN1R0g4I
 bvtrMwkO0r68q9YtJtlKIbZ8IjQ4dwjOjWmrXu5UIezuMLynoZHKM92U3lyeHkqm8qnt
 97CLYYvQCSb8JclNmPoULS+Oo1PGVCobfmI092EXs7Ik5qwP2RT3LmrpWmlQZWXkl0cv
 xIjOu/tPspwuu2v12+1h36eDKN+QDCLhe6MM0/3D5d5IM5pZd0Rc9mpXtHXYYFz0Ogju
 9aq1Y5d+tPGgRVdviTxpRrM11N8PPxdpz7Bur9+7mqYbUz6xSnOj43vDwUioBGqbuYND
 DDBw==
X-Gm-Message-State: AGi0PuYbsq0PSV3vefpzwhEDfJadQHTNKI1m9pdXclcYFjRPe0x1sQAu
 q+Sw+jDZbATr+aA2LCNcwAeoGe4t4xXiODeaQwlYvq18FB8=
X-Google-Smtp-Source: APiQypIjqI1kLNWPIRG2qCkAC+cMihEfF/aAt/sj9Dn9HbFc2/u1hf75bCiJsbm7bV+35mH2d2CordE1SFLr2PriLzA=
X-Received: by 2002:a5d:944c:: with SMTP id x12mr26686397ior.100.1588093057689; 
 Tue, 28 Apr 2020 09:57:37 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 28 Apr 2020 09:57:26 -0700
Message-ID: <CAA93jw5ukwJXQeo_QKort=vYmXJSs93W=x1uvBJ5V+Um=hNjZg@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] intel gives up on home gateways
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

SC9UIHNlYmFzdGlhbjoKCmh0dHBzOi8vaW52ZXN0b3JzLm1heGxpbmVhci5jb20vcHJlc3MtcmVs
ZWFzZXMvZGV0YWlsLzM5NS9tYXhsaW5lYXItdG8tYWNxdWlyZS1pbnRlbHMtaG9tZS1nYXRld2F5
LXBsYXRmb3JtCgpHYXdkIGtub3dzIHdoYXQgdGhpcyBtZWFucy4KCi0tIApNYWtlIE11c2ljLCBO
b3QgV2FyCgpEYXZlIFTDpGh0CkNUTywgVGVrTGlicmUsIExMQwpodHRwOi8vd3d3LnRla2xpYnJl
LmNvbQpUZWw6IDEtODMxLTQzNS0wNzI5Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQu
bmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

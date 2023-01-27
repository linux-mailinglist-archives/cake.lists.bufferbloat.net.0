Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6768C67DB53
	for <lists+cake@lfdr.de>; Fri, 27 Jan 2023 02:36:29 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 676DF3CB42;
	Thu, 26 Jan 2023 20:36:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1674783387;
	bh=uTrMMIyDvNT2fykfHW5cbEjvnNvylRMsn3w38WunW1M=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=PKWYO5mKOwfyPsONGbWYPJtHb65wQ6m9SF2hR5sQl9wmoUxjgFktPgHIrviuAprEe
	 cHpGfCwdtCzPsV9wPnJDPWYFmmiPTYao/GrdMiWmhq08FyrPHxjFOci89Hm7rJ6Mlv
	 u2B9UYydrukrz7qv1oBrAUVqiIlZ3EtDaWbAL01cxk66oVDO6gb0oMMdodwMkiyIOc
	 Pt0Mib4nBs6h4zI/sz09YhKyKnBhaYYdjM279GKqS+ZxICryCiEMV+zH64k3rhugaA
	 xBrtr3ShFhjHzRzxEqPvwRupd9+oTOHz+0gI8qJILLzewvW5YV440nZ+PM3oiCThpF
	 +vd5FtqOV+IEw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2B28D3B29E;
 Thu, 26 Jan 2023 20:36:26 -0500 (EST)
Received: by mail-wm1-x330.google.com with SMTP id k16so2458648wms.2;
 Thu, 26 Jan 2023 17:36:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=6NwOYHRbb67LfqjuhuYehChIJJCL1LU34RpjwskkbY8=;
 b=KZGI4FP/EMHqmlSjYgRmtrnTUJ7dRR6yesqHy4IRgDHjQKCaGmvWhK5O6+DgCX6J7j
 V28EhF8acbhvNlLoKcBLxIa/hgTBcVcI14EyrpdbSuObK68UWNufyv/7Ulouxl75Ebom
 LUcvZBf4WTpACkc1zN4fXfdP1IzFlPIVsWQ7KlVVqoU1lxRZzzYid2tO3qpc4nQ0wP8A
 iRwtGxY3zpbuTiDbTd6hjWochMlOimadbIvP4QX8AhGLvhBcc0fUYQ8X44xVmjHrgUv9
 m6jMcWnE7KyAqAJIMyL5IjRfzYk59YkBnzS8F9eQk+ltsRdYj0MPshGJwzGLErNa4u/h
 yuEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=6NwOYHRbb67LfqjuhuYehChIJJCL1LU34RpjwskkbY8=;
 b=UqJF6uoqBvz2GndQ8ZResMPrMakgbmmcbamaPJPe05A2B20zbHEQ21oUBqn5S+0uWU
 IjzLJz3PPljBU92K3b1s5uzN8RT6aG/RQ4RTeUGus03IcwLRkvBDVWDR6SQJxIc/IQid
 AAzQndNtDWS12EzDpbih/1wWNkVXvTu4pg7K/DI3MfJES/NBIVOp11HzzIxhN320ilgb
 F+K/N2UtVETch110s5p9gPEaL5Q5VzCcQTqS6wQ0NHwTYj83oZ7ESFMBLYmMl1aLWTOh
 6fbHMKWpuwmIKh77L9do8gaqCG9ziHGsBDPh39vrnbjk7cnq2qRjdahFlpYk75LNGRNN
 iMYw==
X-Gm-Message-State: AFqh2kquRkZmmvmc0ooJHcFHyw49MVtVR3Z7QWrZW/ng0M6wTreKJ2bx
 NN8a8j/cK/jxx4J9tKnPdwaUwDp4pqlwkr8XkdWDJF7c8V8=
X-Google-Smtp-Source: AMrXdXtCSTLMnVdxRZL2QJsoaDVhRnGlSXOIvyXmsjR5I1lrOCruLmGnOPQh6OWBJZ7jTSGzyBak5qUoZ6dU0CGIG/U=
X-Received: by 2002:a05:600c:198e:b0:3db:1d99:66f1 with SMTP id
 t14-20020a05600c198e00b003db1d9966f1mr1660038wmq.28.1674783384547; Thu, 26
 Jan 2023 17:36:24 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 26 Jan 2023 17:36:05 -0800
Message-ID: <CAA93jw66AuWdiPNhkyhqFxCo-GtSQp3shm7FEZ9monhGx8t9pA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>
Subject: [Cake] so nice to see cake just work for so many on cpe
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

aHR0cHM6Ly93d3cucmVkZGl0LmNvbS9yL21pa3JvdGlrL2NvbW1lbnRzLzEwaDg2ZnovZXhwZXJp
ZW5jZXNfd2l0aF9jYWtlLwotLSAKVGhpcyBzb25nIGdvZXMgb3V0IHRvIGFsbCB0aGUgZm9sayB0
aGF0IHRob3VnaHQgU3RhZGlhIHdvdWxkIHdvcms6Cmh0dHBzOi8vd3d3LmxpbmtlZGluLmNvbS9w
b3N0cy9kdGFodF90aGUtbXVzaHJvb20tc29uZy1hY3Rpdml0eS02OTgxMzY2NjY1NjA3MzUyMzIw
LUZYdHoKRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Fr
ZQo=

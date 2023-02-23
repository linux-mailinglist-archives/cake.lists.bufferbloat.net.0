Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FC56A00AC
	for <lists+cake@lfdr.de>; Thu, 23 Feb 2023 02:35:48 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6C7C23CB41;
	Wed, 22 Feb 2023 20:35:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1677116146;
	bh=v/QxapljPM+vT9dxq5xcua3mFWlHymgd1+xgoWPifwE=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=WBA3EVEwISC1CbcUoJ4F6bH7NFqI695feo2shKP6My5ldBpZ5uIBm9Mu+Z4/xJR+L
	 H/tcq3JrFxZ8D6s1TKDf4DAepKiB/TUYkX3GcCQSzCCbtlXHxj0XDOkW4I9ekbELng
	 4eh4c3boVewfp2XeWeqErk+6qxKwnlblFRwj7Z9B+p3guaOp/ROcluxPvcuUYBYbWJ
	 z7UUPYyb8/Vdzpmwmf25aOPMDzw3zaa6oh+TwdKokV4vn6HzhR7zusCV42z9VpiVrr
	 BiXEHbPOH+IMa/UozOq1AZmKpKWHCgXRQwV/gNXK3N3BGHKO+ytLGu2ZO8I2h0WE1L
	 GwQprtgjqY1+w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 37EEE3B2A4
 for <cake@lists.bufferbloat.net>; Wed, 22 Feb 2023 20:35:45 -0500 (EST)
Received: by mail-wm1-x332.google.com with SMTP id
 iv11-20020a05600c548b00b003dc52fed235so6759495wmb.1
 for <cake@lists.bufferbloat.net>; Wed, 22 Feb 2023 17:35:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=5LzKVmUD0GM4tu8pTgMgk2fxXriV7MZuLfo0i/+W9tw=;
 b=bXx0UXBBWdjOwjakp2jCmU/pnQFS1sm51ImkGCZ6O+kQxuQG9Lecs3AyN2l5z7/XEe
 YO+rvUldxJ5r6JjNEbpnRezIIcmjACz/wiH6pA8BPX4GhEvpCvXLMVBGY1UpLHddcPYp
 c9HdP6Y7pJZwrsITt6ffXGCy9gC+II5Vb24rU6rw8LzOwrqcXVlcq69s5ONmTuSBWL24
 DH6DP9eFIRcmfJrJSrEF+ZQdZCUcfPIvWZTEDKME35tB+cV9GGTYkifYbBXqjPVUDuPS
 L+QKhZBnwP/8OZrPIrY6B7NwRQdwQzZ/nA39vGwISmapxyoKwe6ALhu9k+0fkOnaogkO
 Xn9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5LzKVmUD0GM4tu8pTgMgk2fxXriV7MZuLfo0i/+W9tw=;
 b=TxlFqkWbEwXRa8f0YxKfTcXv4czYSw7L1M8jfXIfLj3UZkEnJo742DjVUqKTPCEbZl
 tsxHFgWASePNmC0pLrdwL4VIsNmfjY/1MOPWcI2WAB6TSYVXRr/tNuMoRreb7q4hkG/k
 Pp69u8YsImYLsJmstAOLr8SyxX5NDi+9S5yhvgIVBNWCs6/lrtnsrztfAkxJ33SpqplI
 DEuXXf2oAy5kr1xMwObbVGmfbDaBsJcgd7XXWqLt2iVAPx3d5qJEuG+VaqCG7AGtQfbi
 nz5pEEsfAbluzgIXsbTJBboQZGbQm4qyEq+DXvGFLEBo8o0fYKFuyGvnfwPNtFsLhqyU
 tDJA==
X-Gm-Message-State: AO0yUKXBALZmRxZmKXvJKCwDOlmDofbTzAslADItEfnKhRBRUKkotlrx
 w1utZbNvz6SUlLDzO+5Ie/2f6nl0SWE6UfLKx8ZMz6d8w/s=
X-Google-Smtp-Source: AK7set8RaVBNopjXx1zIRyJESXNHGn0Lykt8I7k9AeEDk7onmp4Hnlx42O6BIREP0CwfZG64TDoJHPbjAsKDPgtHnHk=
X-Received: by 2002:a05:600c:8506:b0:3e2:1c73:a1aa with SMTP id
 gw6-20020a05600c850600b003e21c73a1aamr699438wmb.206.1677116143634; Wed, 22
 Feb 2023 17:35:43 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 22 Feb 2023 17:35:31 -0800
Message-ID: <CAA93jw6JQjJxaG9Wzpi4S9iW_=M6sD=6hnN6Z54XyJRS8+cyhA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] big tcp
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

ZG9lcyB0aGlzIGJyZWFrIGNha2U/CgpodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvZGU4
MTFiZjMtZTJkOC1mNzI3LTcyYmMtYzhhNzU0YTlkOTI5QHRlc3NhcmVzLm5ldC9ULwoKLS0gCkEg
cGl0aHkgbm90ZSBvbiBWT1FzIHZzIFNRTTogaHR0cHM6Ly9ibG9nLmNlcm93cnQub3JnL3Bvc3Qv
anVuaXBlci8KRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD5544F8C6
	for <lists+cake@lfdr.de>; Sun, 14 Nov 2021 16:43:37 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EB4963CB41;
	Sun, 14 Nov 2021 10:43:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1636904615;
	bh=foVNbc66051mdFTfWJk29Ivkt5sws1GfCFnhKEcyyzM=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CQP3zUvaq5PMNZRjAFaoeoDB4a2XLLnsMSkgN8qJxNyB+SmLLnFu7c6V74MdIXvnN
	 ozt7Wxuz5ZsFEnqdksHPSUCwJFK8SFP6wunxeSoknmZ2eppEOWbuqGVs5hfyo/YcwT
	 ipG4Ja7Rw7LqpvPBYSHXM2GBgnmXxicBZ02G5oEqM9JHj4CKko53Y5lq37qcZHQhcB
	 wU0NPBW0m9hmbeYXqW2yEFAdWatYPJXOR1gE7uS4HfcbEJ46puUgDaE4J2GVvHDQm3
	 zBn3Gw3kCoR0tLS/KmxVRotrDSBlltku4T2aJYfUSlvl3UjhR46FXcaxbq75pj0w5n
	 IdnYMul5cWamQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com
 [IPv6:2607:f8b0:4864:20::d2c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 887FE3B29E;
 Sun, 14 Nov 2021 10:43:34 -0500 (EST)
Received: by mail-io1-xd2c.google.com with SMTP id k21so17981610ioh.4;
 Sun, 14 Nov 2021 07:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=1dkwGR5PDt6JK9MMNkrG+0b7HjVgD6JDnPlMIQsU/Uw=;
 b=Ysl4w/Cvp+pWtOvkQxmtTDOTZVdOLeknPW7OIT1dGgN0W9/NQrKyWpxPbnG4cl+yxS
 2dWwQuak5Znw/UAfUu4MkD8WcEAHSvP/7Hw8cHQ1DoljpblbbOnaLWMGFyv5+kCGEg3A
 7N2ShXterC5MTlZojbRhxOmcckQ3v2JVos2EgunwUOJviG/CtlPxRzP6NxVMEW3IXoqZ
 zy+Gl+myif2AqtoL9qLLGsDpXtzp0Hel+POr6Vy8+JQDv5dypr5ZQYV7uv83xqecNHM8
 +Hm9uPOeFEO8kVCdLhuMQy0Ku2yI5vb4xcOL18t1kFehos7tuNuuv5KX2VYXwH1ZaaGt
 0gZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=1dkwGR5PDt6JK9MMNkrG+0b7HjVgD6JDnPlMIQsU/Uw=;
 b=lRobQ1yjTry3tk0ViDfoF/Vd4LYCxlso7QwDyd+yjKg/PaS0Z8pZYpsUrNh+WnsmRY
 QyTpMH1A8iDg7/W5M1Fw74mYTevjzUmitTQ9TGdDlBONFAcMJTk3m8gMRQw+6BSmt7VZ
 +HbFDLJ1gpRcmcZ3wPuYrbiSD4WYBG0Gg7Rygt7OBvpFdiYWucL/YE6M2L42ca99ZTuy
 XwzZYQD3Kwok7QEjyazLcBfhlJOlsD2nhP68fCZsgiY+ktX96Mi8mQ+ewJ7atlNdqHPR
 6Hp044p77CJvJut+HsJAjILPf8m0puCWb/yiRov965XaOLtWZJtwgPY226n2vgHZniro
 uVrQ==
X-Gm-Message-State: AOAM531Soapozq0KA4eE7r3cbI96bLmx2VnjtC6bgxuktravaY0b7wbi
 mJfLAITefR2UndvPGCNKZqvcsNQZ9tWFduI6nPcTgxWfi/VbFw==
X-Google-Smtp-Source: ABdhPJz0G0QgmLUs06vL2ONaEIBZEVJQpQUvJR8DN589qqakwu/OJejKC3nBC7DCA80h/VlDciid93nfVv63ziO/nR0=
X-Received: by 2002:a05:6638:160c:: with SMTP id
 x12mr23780117jas.60.1636904613817; 
 Sun, 14 Nov 2021 07:43:33 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw45MXK3mwuanBTS7xzXkifTt2k_JEZEQe4ep1VqSaQ3CQ@mail.gmail.com>
In-Reply-To: <CAA93jw45MXK3mwuanBTS7xzXkifTt2k_JEZEQe4ep1VqSaQ3CQ@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 14 Nov 2021 07:43:21 -0800
Message-ID: <CAA93jw7C3erpXroF8K=mYudGpL94EAEK0xP0-s7iBdGYw9j8Dg@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Subject: Re: [Cake] cross compiling for the udm pro seems possible nowadays
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

QWgsIHNvbWVvbmUncyBhbHJlYWR5IG1hZGUgY2FrZSBhdmFpbGFibGUgZm9yIHRoZSB1ZG0gcHJv
IGhlcmU6Cmh0dHBzOi8vZ2l0aHViLmNvbS9mYWJpYW5pc2hlcmUvdWRtLWtlcm5lbAoKT24gU3Vu
LCBOb3YgMTQsIDIwMjEgYXQgNzozNiBBTSBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+
IHdyb3RlOgo+Cj4gaHR0cHM6Ly9naXRodWIuY29tL3R1c2Mvd2lyZWd1YXJkLWttb2QgaXMgZG9p
bmcgaXQuCj4KPiAtLQo+IEkgdHJpZWQgdG8gYnVpbGQgYSBiZXR0ZXIgZnV0dXJlLCBhIGZldyB0
aW1lczoKPiBodHRwczovL3dheWZvcndhcmQuYXJjaGl2ZS5vcmcvP3NpdGU9aHR0cHMlM0ElMkYl
MkZ3d3cuaWNlaS5vcmcKPgo+IERhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCgoKCi0tIApJ
IHRyaWVkIHRvIGJ1aWxkIGEgYmV0dGVyIGZ1dHVyZSwgYSBmZXcgdGltZXM6Cmh0dHBzOi8vd2F5
Zm9yd2FyZC5hcmNoaXZlLm9yZy8/c2l0ZT1odHRwcyUzQSUyRiUyRnd3dy5pY2VpLm9yZwoKRGF2
ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

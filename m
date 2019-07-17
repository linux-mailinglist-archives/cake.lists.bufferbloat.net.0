Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id D74B36BCCA
	for <lists+cake@lfdr.de>; Wed, 17 Jul 2019 15:13:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C80B33CB43;
	Wed, 17 Jul 2019 09:13:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1563369181;
	bh=y4JyCutuB2UT7Hv2PvmImalxk5Dykmmx+Q/Q2AFUM6A=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IXgO0YQpg1cWvawRo/FEQWC8ZF9BqQv+eHHx+yPHdfJB2muNepofnLFh8oP5+4ecT
	 t9WRg41IVE7OpvAmftXkl3ATJgvQGuhQEV5HavdCM7WeDDUD1JfJ6kXE1nY1dUTyxn
	 fB4FkK5Lkqks07hMf/+RynWGQj6/OawIt75piX3ChjMSthOqn2gur6CpkyanRPxOqb
	 8jovdp0Dx9Zirlz3cS4GxSJ8xM/DLAA0dmGbXpncAgSrv7ZE2Gw+mnKvuMIEqwq4fR
	 2S7x3VI1f4aQp00p95zVl2KNGivafLkFsR96SXlH5dNaqryIG+0TWGff3X0vSvntYN
	 gmSdZYGGJv7ew==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com
 [IPv6:2607:f8b0:4864:20::d32])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4F9EE3CB35;
 Wed, 17 Jul 2019 09:13:00 -0400 (EDT)
Received: by mail-io1-xd32.google.com with SMTP id f4so45626358ioh.6;
 Wed, 17 Jul 2019 06:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=KcUwPBjbppHQ7fOl198YFInFjhNMQEZwj8685TuEKY8=;
 b=MKoVpuUKgB9NC6lIFr/lkBuchJbKDDFXlLUOw1cqLYfIDVnsGM0jHsp0hL9dewkXpf
 9vSYjI3cG+Z95Hl9+JT+/WHH706JQNK3wQLlTiKozGLiRKllssE8U06+1S6EMv8Opl0p
 v/kwLjF8NXeSTly8MNAa070txPMTE49QH79udwrfyT/skl/PZd4ZqkKbeg8f25/h8Zsu
 Q7zIOeHTR1pY9YQ8bQ7+HgtD5khxiCbQU+RosXw+cz9GD6QFcjx8x9qj4szjlAA/M9D6
 1OxUXfhLaaKfhsYdUvryMipDzZK0vpc+oMdDoOYGbxKO5H//6qjXc6ZnsvbI/dehl3WY
 4zIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=KcUwPBjbppHQ7fOl198YFInFjhNMQEZwj8685TuEKY8=;
 b=fo9lIpBLO87scxRuUxN7YBzDgC7HL+l5nRAi32vEN8LlKnXOHE2S2DBlsA3yQuOeH+
 6yK4/QpaD9OCuCJEuitNL5vkSqa+hh0yNNL5W8vMwOjGAxGtUZqqz6wOtbjsXvscDOTs
 OS1yi28wAG9t7nThO7Af/d2MahJn7aURE1vOYZf1LfC/U5BodGuOxBZK2/SZsaPc3L2o
 /oW7GRxROkUxi7rCoKUmbb4Qf6px/6q1K3LizA3pUHUV0kfUpFHhOQzprAKHHgiWCL5b
 2awYx7PK2ffgAmMgTQbCSvsLSSbPkGH+Z7VHOMV4N2ElOJ2i9seYQe5/r4f/Hj8hxRCV
 rO0A==
X-Gm-Message-State: APjAAAW/SE4r5ofzz/D1KuiKX0ExrSTJGTVFBueifp2W6263zYnds+A2
 9VeJkNG+VYSy0BhMViSLLOxfR0HDkBY2Qxwu8qvxwwXk
X-Google-Smtp-Source: APXvYqwUTjANwThUZCWbXkTrQvAQ9s6BC6h9fXQT2h1DX7QKQZh+3i2fxEWJIVlA6GulxMC66tRQtbXA+7+J/+DOVq8=
X-Received: by 2002:a5d:9d42:: with SMTP id k2mr33658410iok.45.1563369179478; 
 Wed, 17 Jul 2019 06:12:59 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 17 Jul 2019 06:12:47 -0700
Message-ID: <CAA93jw7yn2B6LfUP_Q_5cqqJfxMH0T3hSZiH4VMUYg=qSE33_A@mail.gmail.com>
To: ECN-Sane <ecn-sane@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Subject: [Cake] three new internet drafts regarding SCE
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

SUVURiAxMDUgcnVucyBmcm9tIEp1bHkgMjAtMjd0aCBpbiBNb250cmVhbC4KCmh0dHBzOi8vZGF0
YXRyYWNrZXIuaWV0Zi5vcmcvbWVldGluZy8xMDUvYWdlbmRhLwoKdHN2d2cgbWVldHMgdGh1cnNk
YXkgbW9ybmluZyAxMC0xMiwgYW5kIGZyaWRheSAxMjoyMC0KClJlbW90ZSBhdHRlbmRhbmNlIHZp
YSB2aWRlY29uZmVyZW5jaW5nIHRvb2xzIGlzIHN0cmFpZ2h0Zm9yd2FyZC4gVGhlcmUKYXJlIG9m
IGNvdXJzZSBkb3plbnMgb2Ygb3RoZXIgd2cgbWVldGluZ3Mgb2YgcG9zc2libGUgaW50ZXJlc3Qs
IGluIG15CmNhc2UsIEknbSBzdGlsbCB0cmFja2luZyBiYWJlbCdzIHByb2dyZXNzIHRocm91Z2gg
dGhlIGlldGYsIGluCnBhcnRpY3VsYXIsIGFuZCBJIGFsd2F5cyB0cnkgdG8KY2hlY2sgaW4gb24g
aWNjcmcsIGFsc28gaW4gY2FzZSBhbnl0aGluZyBpbnRlcmVzdGluZyBjb21lcyB1cC4KClNpbmNl
IG5vdCBhbGwgbWVtYmVycyBvZiBvdXIgbWFpbGluZyBsaXN0cyBhcmUgb24gdGhlIHJlbGV2YW50
IHRzdndnCm9yIHRjcG13ZyAgbWFpbGluZyBsaXN0cywgaGVyZSBhcmUgc29tZSBkcmFmdHMKZnJv
bSB0aG9zZSB3b3JraW5nIG9uIHRoZSBTQ0UgZnJvbnQgKEknbSBub3QsIGJ1dCBJIGRvIHJlYWQg
dGhpbmdzKQpmb3IgYXFtIGFuZCB0cmFuc3BvcnQgZW5oYW5jZW1lbnRzLgoKaHR0cHM6Ly90b29s
cy5pZXRmLm9yZy9odG1sL2RyYWZ0LWdyaW1lcy10Y3Btd2ctdGNwc2NlLTAwCgpodHRwczovL3Rv
b2xzLmlldGYub3JnL2h0bWwvZHJhZnQtbW9ydG9uLXRzdndnLXNjZS0wMAoKaHR0cHM6Ly90b29s
cy5pZXRmLm9yZy9odG1sL2RyYWZ0LWhlaXN0LXRzdndnLXNjZS1vbmUtYW5kLXR3by1mbG93LXRl
c3RzLTAwCgpJIHdvdWxkIGhhdmUgbGlrZWQgaXQgaWYgdGhlIHRoZSBhY3R1YWwgc2NyaXB0cywg
JiBmbGVudCBkYXRhIGZpbGVzCndlcmUgcHVibGlzaGVkIGFuZCByZWZlcmVuY2VkIGluIHRoaXMg
bGFzdCBkcmFmdC4gKEkgdGhpbmsgdGhlCnBpY3R1cmVzIHdlcmUgcHVibGlzaGVkIG9uIHNvbWUg
b3RoZXIgZW1haWwgdGhyZWFkICg/KSwgYW5kIEkgbG9vawpmb3J3YXJkIHRvIHRoZSBzbGlkZXMp
IE15IG93bgooZXZlbnR1YWwpIGNvbnRyaWJ1dGlvbiB0byB0aGlzIHdvcmsgbWlnaHQgYmUgb24g
dGhlIHdpZmkgZnJvbnQsIGJ1dApuZWl0aGVyIGw0cyBvciBzY2UgYXJlIGJha2VkIGVub3VnaCB5
ZXQgdG8gYm90aGVyIHRyeWluZywKSU1ITy4gTXkgYW5hbHlzaXMgb2YgdGhlIGJhdHRsZW1lc2gg
ZnFfY29kZWwgKyBlY24gb3ZlciB3aWZpIGRhdGEgSQpob3BlIHRvIGZpbmlzaCB0aGlzIHdlZWss
IGJ1dCBJJ2xsIGZpbmQgYW4gb3RoZXIgb3V0bGV0IGZvcgpwdWJsaWNhdGlvbi4gKHNtYWxsZXN0
IHN1YnNldCBvZiBvYnNlcnZhdGlvbnMgaXMgdGhhdCB3ZSBjYW4gcmVkdWNlCnRoZSBjb2RlbCB0
YXJnZXQgdG8gNm1zIG9uIHdpZmkgbmV0d29ya3MgdGhhdCBoYXZlIHBvd2Vyc2F2ZSBkaXNhYmxl
ZCwKYW5kIHRoYXQgc2VyaW91cyA4MDIuMTFlIHF1ZXVlIHVzZSBzdGlsbCBtYXNzaXZlbHkgc3Vj
a3MuIGRldGFpbHMgdG8KY29tZSBsYXRlcikKClRoZXJlIGFyZSBtYW55LCBtYW55LCBtYW55IG90
aGVyIGRyYWZ0cyBpbiBwcm9ncmVzcyBpbiB0c3Z3Zywgb2Ygbm90ZSBtaWdodCBiZToKCmh0dHBz
Oi8vdG9vbHMuaWV0Zi5vcmcvaWQvZHJhZnQtd2hpdGUtdHN2d2ctbGxkLTAwLnR4dAoKaHR0cHM6
Ly90b29scy5pZXRmLm9yZy9pZC9kcmFmdC13aGl0ZS10c3Z3Zy1ucWItMDIudHh0CgpJbiBhZGRp
dGlvbiB0byB0aGUgcGVycGV0dWFsbHkgcmV2aXNlZCBsNHMgcmVsYXRlZCBvbmVzLgoKCgotLSAK
CkRhdmUgVMOkaHQKQ1RPLCBUZWtMaWJyZSwgTExDCmh0dHA6Ly93d3cudGVrbGlicmUuY29tClRl
bDogMS04MzEtMjA1LTk3NDAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0
cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

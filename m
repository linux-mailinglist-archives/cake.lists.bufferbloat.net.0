Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A986C05B3
	for <lists+cake@lfdr.de>; Sun, 19 Mar 2023 22:39:43 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8F3923CB46;
	Sun, 19 Mar 2023 17:39:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1679261980;
	bh=iCwztnIID7TqMSbynIMKHImqLjcV2lDRygg0kxfqeBM=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=JMuHxt3FXV3YhUMnWCTO8h1hKvt5aWGP26ckxIFQn6eBAquEIzBa/WelydgGoVTpe
	 zJwLlnyA0Fsqq43wVB/YxApSiDIFsAGyMtrJRtLNMp51Dd1AfgBiYRhZKoys8bAg8r
	 IZD7Ilf/n0PDZKocb3qPGv03YTyQ52mk1/yTSo4a5cYUXa7DQqfDW6IS/jjO5kPUnr
	 4IIlU6sTYSYz+sGH2sBurRObEX1Fvdo4Yl8gtbwvAFSXeRrDDDkU3mkYqmqYgvdXSw
	 8HP/FHgQqAbWALltL188MlhHfDZvovmVzw6aCwObcJn3ScNuUBPOWqINWa1HNcbJ2b
	 ax45vGrHBRHFA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EE3EF3B29E;
 Sun, 19 Mar 2023 17:39:38 -0400 (EDT)
Received: by mail-wr1-x42c.google.com with SMTP id v25so5213961wra.12;
 Sun, 19 Mar 2023 14:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679261977;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=xIGd7oTB2JheJVK8RIH+LMAGQE4c4xSsEoGmN/FoOr0=;
 b=gQohGz1s8fISQSIk3WEWK68MEe+AOne3aKjZnVcEks5IbqGKheo8KvbpD4OQ8vjQwr
 ApZdeMu6VZIQpnwqkIImyjIGvUUOsZ1Imzwuw2pOtunq9GbUVdxkXDV0aZFCpyJL7oBH
 zeVYK0PcufSOqFpFvkCCikN69dYKODUoyzXwSD3w8/1mpJ6Ayt5l9MKYf7BrZFv4VnJ7
 KBeVfHyST8qX5WvFG4o1GYDnGeAcd3QwkXHIzRbC6Zt3B3jh3nQFCVHgAzwNQgfa+j8s
 iky0qIVHVpClFqywwiZRNfzIIaFCMijLas1lIVEkhdTj0aGyx95U+uhSC8VGcuQjknww
 7+xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679261977;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=xIGd7oTB2JheJVK8RIH+LMAGQE4c4xSsEoGmN/FoOr0=;
 b=1VySxRl5YmgroGZ5pdAvCQuzBNpObc/98DgHB20/Lrca2SHrNKv0Fa3deVfG/7IsoA
 n0YUB6+Pe74DyccLwSGn35XDqaWa+cqRocnvefgDFZrQ444N7A+5Jt0FyODic1k9/y16
 6x7YkjvxnSp2f7fQuvAuU7Vz3qHoczeoLMJDFsh8xkeq8Xp6zLAas24XVBxE6jqI8T1J
 G62eJImyh0MjPU/gwAEloFmYqSw36rPH/0xyrSSSKZeuXDsi1cmEsiav9lJqt1/Vb5IP
 vO+5CLF9Zm283+Y0Dze2wkZa68u8UWE3MfmHDWNnb0Bt/GoAxvBglmhM3GXcgjFCQ+vG
 dXfw==
X-Gm-Message-State: AO0yUKWJPaHFY5K5n1wRO8OCvCat4lkYQ921ARF05NDrblYXA7NhhC6o
 9QljhzQIpsQ8EeiFwD5cUcyTNqaL5kUTHx2PhoZC6a0DTg0=
X-Google-Smtp-Source: AK7set/7Okov2uyyHrh+f1Vx1dxWygTn3RutU+RPKbHx+LyyD8wjDyYjCGzOpo/myi9OD6rTfy+YoNcao0cuUiccGas=
X-Received: by 2002:adf:e107:0:b0:2d7:8d9d:a2b9 with SMTP id
 t7-20020adfe107000000b002d78d9da2b9mr23197wrz.13.1679261976654; Sun, 19 Mar
 2023 14:39:36 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 19 Mar 2023 14:39:19 -0700
Message-ID: <CAA93jw6AEnvGYEpWfsjgs=mecdUjfxBWq51SR5GCa7PYuicYCw@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>
Subject: [Cake] equinix job role in speedy open source packetisation stuff
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

SSBoYXZlIGJlZW4gdmVyeSBpbXByZXNzZWQgd2l0aCBlcXVpbml4J3MgaW5mcmFzdHJ1Y3R1cmUg
aW4gdGhlIGJyaWVmCnRpbWUgdGhleSBoYXZlIGJlZW4gc3VwcG9ydGluZyB0aGUgbGlicmVxb3Mg
cHJvamVjdCB2aWEgdGhlaXIgb3Blbgpzb3VyY2UgcHJvZ3JhbS4gKHRoYW5rIHlvdSBlcXVpbml4
ISkgc28gaWYgeW91IGtub3cgb2YgYW55b25lIHRoYXQKd291bGQgbGlrZSBpbiBvbiB0aGUgaW5z
aWRlLi4uCgpodHRwczovL2VxdWluaXgud2QxLm15d29ya2RheWpvYnMuY29tL0V4dGVybmFsL2pv
Yi9SZW1vdGUtTG9jYXRpb24tLS1Vbml0ZWQtU3RhdGVzLW9mLUFtZXJpY2EvUHJpbmNpcGFsLUVu
Z2luZWVyLS1Qcm9kdWN0LVNvZnR3YXJlX0pSLTEzMzk4OQoKIllvdSBoYXZlIGEgc3Ryb25nIGZl
ZWxpbmcgZm9yIHRoZSBkaXJlY3Rpb24gb2YgYSBjbG91ZC1uYXRpdmUKdmlydHVhbGl6ZWQgY29t
cHV0ZSBhbmQgbmV0d29ya2luZyBwcm9kdWN0LCBoYXZlIGEgZGVlcCBzZW5zZSBmb3IgdGhlCmNv
bW1vbiBjaGFsbGVuZ2VzIGFuZCBwYWluIHBvaW50cyBleHBlcmllbmNlZCBieSB1c2VycyBvZiBz
ZXJ2aWNlcyBpbgp0aGF0IGNhdGVnb3J5LCBhbmQgd291bGQgbG92ZSB0byBidWlsZCBhbiBhbWF6
aW5nIHByb2R1Y3QgdGhhdAphZGRyZXNzZXMgdGhhdCBwYWluIGFuZCBkZWxpZ2h0cyBpdHMgY3Vz
dG9tZXJzLgoKWW91IGJlbGlldmUgZXZlcnkgcGFja2V0IG1hdHRlcnMsIGFuZCBhcyBzdWNoIHlv
dSBhcmUgcGFzc2lvbmF0ZSBhYm91dApPUy1iYXNlZCBuZXR3b3JraW5nIHRlY2hub2xvZ2llcywg
ZnJvbSBhZHZhbmNlZCBwYWNrZXQgcHJvY2Vzc29ycyBsaWtlClZQUCB0byBlQlBGIHRvIFFBVCBv
ZmZsb2Fkcy4gIFlvdSBrbm93IHRoYXQgZWZmaWNpZW5jeSBtYXR0ZXJzIGFuZAp0aGF0IG9wZW4t
c291cmNlIHNvZnR3YXJlIG9wdGltaXplZCBhZ2FpbnN0IHRoZSByaWdodCBoYXJkd2FyZSBjYW4K
cHVzaCA1MEdicHMgcGVyIGNvcmUuCgpZb3UgaGF2ZSBidWlsdCBzaWduaWZpY2FudCBjbG91ZCBh
dXRvbWF0aW9uIGFuZCB3b3JrZWQgd2l0aApkaXN0cmlidXRlZCBzeXN0ZW1zIGF0IGxhcmdlIHNj
YWxlLiAgUnVubmluZyBuZXR3b3JrIHdvcmtsb2FkIHZpYQpzb2Z0d2FyZSBpbiBodW5kcmVkcyBv
ZiBsb2NhdGlvbnMgbWFrZXMgeW91IGV4Y2l0ZWQsIG5vdCBzY2FyZWQuCgpZb3UgYXJlIHBhc3Np
b25hdGUgYWJvdXQgb3Blbi1zb3VyY2UgYW5kIGhhdmUgY3JlYXRlZCwgb3IgYmVlbiBoZWF2aWx5
Cmludm9sdmVkIGluLCBhIHNvZnR3YXJlIGNvbW11bml0eSAiCgoKCgoKLS0gCkNvbWUgSGVja2xl
IE1hciA2LTkgYXQ6IGh0dHBzOi8vd3d3LnVuZGVyc3RhbmRpbmdsYXRlbmN5LmNvbS8KRGF2ZSBU
w6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

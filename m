Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF3F13B637
	for <lists+cake@lfdr.de>; Wed, 15 Jan 2020 00:53:57 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2774E3CB38;
	Tue, 14 Jan 2020 18:53:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1579046036;
	bh=kH+UeDNKNTYj/nZSekhJzvhgDFzrqBHnJP4RztpIQ4c=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=K76TqCdUUjl03Y8957UtnrzNDomHiEkB7iH3PI/h46/YI+3J+JjyO88RcoeKPWyOO
	 0ihj0ezMmnz/pSd1NE2sxCkproLijgyiF/dBNnnOf+4y5zQooNe26BiMHpAXvqsO6B
	 Tmg5PKgouKzXD3Xrb2yXH01QQ90r8GT/zq+kDF4U+YI8IBPy9vwPNkNcvmSoRQrG8H
	 V7kH7knWsTjgAbbjrBmCAJ8tA7/bBy2zv8UlcY9rK3yVuuBv+5jIdd36UibJU7yVKN
	 YOntSkruJt+gqbMbFEvfIF4O8vodDRle7magqmgjFJOBhJrDUJTReFc/6Le23HUp5b
	 wQouY8v4HsJVw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com
 [IPv6:2607:f8b0:4864:20::d31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 894233B29E
 for <cake@lists.bufferbloat.net>; Tue, 14 Jan 2020 18:53:55 -0500 (EST)
Received: by mail-io1-xd31.google.com with SMTP id i7so7439097ioo.5
 for <cake@lists.bufferbloat.net>; Tue, 14 Jan 2020 15:53:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=WcwJyGNOddMOs7JbLKX//EwWJsh+WTj+08wVhzVurJk=;
 b=rcSIMkWOpPvErGG1Fa7OOYUfIhFJx1EffZ61q9QNuKABZXQCnjhANvmJx+cvQL819C
 1GJXqwAS9G2r6kMtOoxiKG8Ga+trmXerJTcQvTir03RhoFY6DxeskLu4PvmFM+7SHUhg
 Jb5qo1U5z32w9SfGryobUss3ZHaBZGoEgBFl30PPg58Ajp/NKUEeaQ/4oMg5KEfuLUWP
 ADUPC457S14dDfpV999ez0ewcXFDYzuy54SnvcnsCkwOq9PeYvdMf9H1WlRYKKHsE2sw
 zBqTu/V4klCdKTenO1ZzBPWUruDBQJLX6JKFkwEojB9eXneDPPorMM8q3Zy0hcd9xBeo
 rgaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=WcwJyGNOddMOs7JbLKX//EwWJsh+WTj+08wVhzVurJk=;
 b=AlS8hAkn8X8EpiTroLM1mX8tcG2urBxofteC9WFQDnOqZkaIcToSM78xKA8oEVg6BC
 ilVemZcczZaDAvd91xQ75QG0HYYBgU2ioq06ZvM+98k7nynOnJt+pW6ZPf562mf87uCN
 NAt9APQmfO+opPcfpUnE5Opz0Bnrml1lc0+3OKcCa3p7cmk48Y5OHzD3OIwp0s9NHU8I
 eN2vvHkJ0ucV8eq1kgALMNmcxj7K8o+PQoaYJmbwywt+WWUcLdmi+9NpuQJSczO3XeRX
 2YNf36n37NorSYQcYF3dzWzrKnBldKVjs5Rl1c5ksFrQ3ORbV7EryqB2rWKovwNU1UoW
 6HMQ==
X-Gm-Message-State: APjAAAXB7haGpElroh7mg7tyObcyWOCsi0YTZwiQPBbuLnfKPF7Vljpk
 rJ4XVDrmyLdD27/wE4vfx2I995Bdn3MmYh2cx8dL1vbXX36stg==
X-Google-Smtp-Source: APXvYqyZVnSi6f64ejRRFxPirwae1aboetbs19LKoZ6t7zm+MEBBmcNSJefc6C+n2kq6tE0Wbi0HpCLd/vrHXDPV6IQ=
X-Received: by 2002:a02:6515:: with SMTP id u21mr20863634jab.82.1579046034801; 
 Tue, 14 Jan 2020 15:53:54 -0800 (PST)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 14 Jan 2020 15:53:43 -0800
Message-ID: <CAA93jw4tZkTghCB23qizyk=w8AKsh912yc05YERDyi8=o4yRLA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Aliquem: a Novel DRR Implementation to Achieve Better
 Latency and Fairness at O(1) Complexity
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

c21hbGxlciBxdWFudGEgbWFkZSBtb3JlIGVmZmljaWVudC4uLgoKaHR0cHM6Ly9pZWVleHBsb3Jl
LmllZWUub3JnL2RvY3VtZW50LzEwMDY1NzYKCi0tIApNYWtlIE11c2ljLCBOb3QgV2FyCgpEYXZl
IFTDpGh0CkNUTywgVGVrTGlicmUsIExMQwpodHRwOi8vd3d3LnRla2xpYnJlLmNvbQpUZWw6IDEt
ODMxLTQzNS0wNzI5Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8v
bGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

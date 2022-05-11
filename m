Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C2719524063
	for <lists+cake@lfdr.de>; Thu, 12 May 2022 00:47:36 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A9A5D3CB42;
	Wed, 11 May 2022 18:47:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1652309250;
	bh=BEz4gn42KvlWZ/0jboyLif/r89kX9SqSTlbzGKURJkQ=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gvwmIZa/W56fRepaGUpBVDo/JRuJC3+TTiN2EWOa85vdAUKA/Xll33I7Qd9qplBQw
	 6ZRO989ab9fRy6wKMiT5WZq2sOq9n45M/j9YENbMKkEonemLXRutjSy7hTQdM2L8xF
	 G8FVzhjpAiVxcK3knwng/lL+xMsxxd0eWbOUHaBpmKRPhTGMqXB+omMvY/bRN1iVb8
	 0X7uPMu4hFwFSMQcOjoShqxH8H99kQatDfyja+BuU7LqIfL4HP0KmRAOn+wzttL1lF
	 HD8652oNV591hz+nVPbjqiP7Cpb0h13DbUkgxL4SaYkWRmRR47ZonWBWO251U1YjNZ
	 K9jRyJEYSdUPQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 018B43B29D;
 Wed, 11 May 2022 18:47:28 -0400 (EDT)
Received: by mail-ej1-x62f.google.com with SMTP id kq17so6825165ejb.4;
 Wed, 11 May 2022 15:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=YY4MnuOKNY9iHevSxladnQev32ZPkEb+mZI6BZUXl6I=;
 b=hBCilasMjpkxTcM6NYmwkI3IcDTNhMBLnTKiWXMc7vCMqc8zMh09cziFNXFug/Glok
 ALYk2d849sHR4ZY93JYKgJvmeaW6MPNAJABfmvRPx4L4nK0DrcNuwV3n8KvoViPVb8kk
 0+bBJ31kmeUFVYS9L33DetltTA+9Jz/3PTUFpo89nSWo2+ERhrzPGfA//suw3+0gGh5Q
 diA5No+lsHGfVDal6uyTG4qdpfbAK+YMrZf8Mnv3nwRzLX6XMhWYXsoZzeykVGVSc4GJ
 Tg4NkgbVKqAlWyL0oULW3DnxW0EHFAFXFwH8zgJdeTTR2FOVZxaYxzKjzZPRAsNmesdd
 A0Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=YY4MnuOKNY9iHevSxladnQev32ZPkEb+mZI6BZUXl6I=;
 b=qtz4lySZ9ZNlhEKmnyse2o9ABE0+g7KeoyMtI+jGYoMQRIFdFdEKqhiqoB2tr3IUi9
 pvT4//TGJAWDPF3bSujLdZOMTaoQDlpcr1Ws9cZqJ3/8/VAr5DHYRg2miUQZX6AfJgw+
 KXQUMUcICcrMnKb8l3PvbPYKEslAq+z/hyIMJ/zWT1dy1OhOQY8RnBZxPZnjiL4h2B/d
 KorybJpomKaPXlw0jQsiP9JXKy4vF8BTQhE0rezHmGOWdy4JPjTuECT+bTtTVCLk6Mi9
 Z/vxuclIQYj/xNBjUwEjo+i1KyGIBWm/nZ1TwqkAbdladmr55BBC6kv7GWF8fp/wxd9h
 +Syw==
X-Gm-Message-State: AOAM5326xRTTTInxpytSt61+ZmBMk57xB0IaXwT7aavNvne4k5HsEIgJ
 nWOGyx33KjfJhDSz3mVwHCyE4OFMe0NBiTl3RQXnyouVU0Y=
X-Google-Smtp-Source: ABdhPJwys2782uAoc0YS7XVJi4Y/i2kcb+wGFIswEhRRKyousoKp4ZaK1ye24Uib/FnTHiFgGDS2zAvfAscRBQaQ84s=
X-Received: by 2002:a17:906:4787:b0:6f4:2f25:f9ff with SMTP id
 cw7-20020a170906478700b006f42f25f9ffmr28150669ejc.116.1652309247605; Wed, 11
 May 2022 15:47:27 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Wed, 11 May 2022 15:47:15 -0700
Message-ID: <CAA93jw5S=9Ef1BpMW4wnKZkeChgDJ48LgUDvJJGLUopRSaNDCg@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] a good survey of what's going on in P4
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

TmljZSB0byBzZWUgY2FrZSBhbmQgZnEtY29kZWwgaW4gdGhlIHNhbWUgcGFyYWdyYXBoLCB0b28u
CgpodHRwOi8vY2Uuc2MuZWR1L2N5YmVyaW5mcmEvZG9jcy9wdWJsaWNhdGlvbnMvVENQLVA0LVN1
cnZleS5wZGYKCi0tIApGUSBXb3JsZCBEb21pbmF0aW9uIHBlbmRpbmc6IGh0dHBzOi8vYmxvZy5j
ZXJvd3J0Lm9yZy9wb3N0L3N0YXRlX29mX2ZxX2NvZGVsLwpEYXZlIFTDpGh0IENFTywgVGVrTGli
cmUsIExMQwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpD
YWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 147B03663E4
	for <lists+cake@lfdr.de>; Wed, 21 Apr 2021 05:11:52 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5890B3CB5F;
	Tue, 20 Apr 2021 23:11:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1618974707;
	bh=tVOGOwmaus/k1buYKnwTcOoWFvfOD6whkg39kKraZ64=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=h7QIyZmcoV1BxkMv1wcXFOkhEkZsDL39sBawbsKK7IVnG8rb5+BH/oS7ry8JTp0PK
	 3C8TZQwWHZsKMpJk951/4kXn36URDupkbDUK0y+av8um5ZDnM4Hg6oyfF+KHcrBc7y
	 V1bDtOfKJgjjHMaUcKP2x/0iJ1xVyBFNBzqHEPXmqc7sMYEHoJhRcQZiE2c5H3ry20
	 pOJM6Bsymz9baW9vT/NtZqywKhj/+RLsdbsobxCGErklzQDp/f3VVx7wpYiG3vp4x+
	 EivxEbWgnT0bVv7EBkiXwQe0L1dcijGd4CcfkAiv+W8bN37ZtZYgUaGGqAqrXmmwtl
	 hDXYaDd2ebnUw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com
 [IPv6:2607:f8b0:4864:20::d2a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 31B093B29D;
 Tue, 20 Apr 2021 23:11:45 -0400 (EDT)
Received: by mail-io1-xd2a.google.com with SMTP id v123so33802809ioe.10;
 Tue, 20 Apr 2021 20:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=/W2H4ttY3aLc+KiL98MNCFsEi8Z6womeLHz2XNXagt8=;
 b=EKexiN6b7WrSTfzdRO2cLn2DLMbyPPNVA0n6t+c2bxZDNowfnixnpGmlGhb5F/1o1f
 EYSzfGdZvbbjhqA/t2oKCHKke6t0A0d++hgjVaPeF371F+gXl/HHEuUujwGPipS/H+Ia
 5dxjTuqpoLj/tD2FFTLX59dBcUGYSIfI13ysuDETyxceXHfNH2vPte9itPOGffSs8VWH
 HYZrM35wmBHRXvYAE+En1kxjfejBlN46u7J7miFGWCvSSy6WkAk/X9atDPd/BwRDgUuV
 FXexNpx3Mhqh/rIXZqEcnF8rSdgjfRmXo+tYc4NVbLnCSGayI98o+E/sf51EtO1B0rFa
 /qQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=/W2H4ttY3aLc+KiL98MNCFsEi8Z6womeLHz2XNXagt8=;
 b=eGltZWf8jg6ZYVhK+SN9j1csxbT+nj+F1xYTWBbn/IjZrv0Mb5udNO5I9LBDASh10w
 SEu+OKxp04mru2Fn7mIbJ51vcgCn6ZWQ8/vrEmwgeb6gmDtg9tW22OgXpaX1785/34cF
 1b6sOEH3mxaTvM/LDhoezl2bTNs5y9HNgSE0rmvy6hlcmxm6kdigUXhzJcSoV/vN67X/
 0NzsTbfn+9rc5lpcavjrVj7PJ73xHU8bOG4fQgbJMx9PNmEd/Yz2rgacvlUpBKVgjwUg
 P4z2HVZ6xbYwyf27LuINoSny5DoPzUAP0IaId5ib6ZUuouIW6VLLcd5rOTEIDazGVUHB
 cNTw==
X-Gm-Message-State: AOAM532UCH94j7t32FngpbkBJo6eh1ui9Nb9z/ERUFkbyfpFopr9Kzx/
 1H7PDX38eTSGnikJs55AN7nGSvrgyEyga+80BpqNhMZE5sj9mg==
X-Google-Smtp-Source: ABdhPJxgnyo9nrpUzpXVf0CpPefelTm4FWlEecDls8oEgkTqktCUF5t3Rru+2BtsyUhLPELr4pBOBlEUk/QCd5qY2qg=
X-Received: by 2002:a02:6d53:: with SMTP id e19mr20102217jaf.128.1618974704332; 
 Tue, 20 Apr 2021 20:11:44 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 20 Apr 2021 20:11:33 -0700
Message-ID: <CAA93jw7YofYeFqS84bYn4zMSHhP_r9bt8VPSa6FYOg=GAajcow@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Subject: [Cake] initial starlink bloat discussion wed 2PM PDT
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

aWYgYW55b25lIHdvdWxkIGxpa2UgdG8gam9pbj8gVXNlIGFueSBsb2dpbiB5b3UgbGlrZSwgbm8g
cGFzc3dvcmQsIGF0CnRoZSBmb2xsb3dpbmcKdmlkZW9jb25mZXJlbmNpbmcgdXJsLiBDaHJvbWUg
d29ya3MgYmVzdC4KCmh0dHBzOi8vdHVuLnRhaHQubmV0Ojg0NDMvZ3JvdXAvYnVmZmVyYmxvYXQK
CgotLSAKIkZvciBhIHN1Y2Nlc3NmdWwgdGVjaG5vbG9neSwgcmVhbGl0eSBtdXN0IHRha2UgcHJl
Y2VkZW5jZSBvdmVyIHB1YmxpYwpyZWxhdGlvbnMsIGZvciBNb3RoZXIgTmF0dXJlIGNhbm5vdCBi
ZSBmb29sZWQiIC0gUmljaGFyZCBGZXlubWFuCgpkYXZlQHRhaHQubmV0IDxEYXZlIFTDpGh0PiBD
VE8sIFRla0xpYnJlLCBMTEMgVGVsOiAxLTgzMS00MzUtMDcyOQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9j
YWtlCg==

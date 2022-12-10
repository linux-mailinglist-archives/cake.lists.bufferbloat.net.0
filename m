Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 62DB26490D7
	for <lists+cake@lfdr.de>; Sat, 10 Dec 2022 22:35:17 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0815B3CB42;
	Sat, 10 Dec 2022 16:35:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1670708115;
	bh=7nhN50uuW7eeLBBhzFknWG47E0UDaLU2c2bUJUKq1U8=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=i2vZbIp77Vb4dYUzNExtLtuw1E8OLrdyY4lHKKXqgLLiQ+/37lz6jD3pRv53bzfpq
	 6pSBfjJFFnknNko6b7hlIz1C600zrDsQmkIlz2nvzZhKSrb59S22NbqNZFyjo1aAeg
	 XQUXx38h6zEeuKhodQoQrxO2P6YPr7Bodaz39YmnPcFt26dm1OLP6VfaUcuHeaGcBC
	 Sqj7BR5AiQPE15XnGbQSwwFIkd/lg0GbARzjAT0/W7k43vL42wB7GE9yPxJj45o1tC
	 m3vtw61es+UHzvqej4G6A6bdS3Hq8N0COI8JmkVuwtijPx0d8N+In69WyJUxQ0uQno
	 +ET5kcLxjVdyQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 07CAD3CB37
 for <cake@lists.bufferbloat.net>; Sat, 10 Dec 2022 16:35:12 -0500 (EST)
Received: by mail-wm1-x335.google.com with SMTP id
 ay8-20020a05600c1e0800b003d0808d2826so7385615wmb.1
 for <cake@lists.bufferbloat.net>; Sat, 10 Dec 2022 13:35:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=dtlQfHVCMl4oivTvnwyGoobxvzF6LVA7x9xznPdBOxM=;
 b=Q1hzqdVI1V/WwErI0ej4AD/AVc9WH8sM2VUoNK5B0JtO4o5BY7xjJA6o0OgcqOcHa4
 ++7uIjTbfqekILDyA1k3d+sSea1BaMaSISWNprHkkG967nJRXzKsQS+jgE/iN7mKuect
 IoRgGp7MmgfKgHo0yfwlJ0viiGWMFkYiEGRzTAJkL7itxaT7SYS5eDFD4uHtGcaoI7d4
 016EEFSDLnrzakD+jtwPfFdD6EQJkiQKRFjvfLmo78EW1Yq/V4v/ydRzA8kzs2GT71fJ
 whYPpjXHc9eN0zIcGULneA6oPgfwTFHhNvf7St0oPe5fA+BoPY2sQkcfAuh7qNKzJOsB
 D8lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=dtlQfHVCMl4oivTvnwyGoobxvzF6LVA7x9xznPdBOxM=;
 b=VEKHq86m8dzwBldN4/v6HEw6w7Qu6gn9a84NVAIrUE7xFhagaqfgyqcaCUFhNfi/kh
 be2ihdY2i9TgV2+/Ura1U5dz1B3EjD63ATaLp0AbJO60dhegPEMFC7D/ArwcqJoQrYD+
 xH/J2uX8+L5NOlGICv2nJ5IGbz8fHvhq0a3+asYnDJnte+YWVgGgcSR2hohJ1mvcGreE
 tRR7xtC+zW/Rvk7CatwMkAu0IoSjgi/pyEjdSHRXrSB96sjlmRLyzEy3yPp3RhK/jqmL
 BHtl5ytUU9zFpyG6c1ORoflmW20WL5Y+eEmnCCH6nSszW7bv3GyjXilwrD4uwR9P5L/v
 DPRA==
X-Gm-Message-State: ANoB5pmnkhk9xVfOVsAwr67pbF1Mj2gbLeYAk3ycNbuVK3h5gT4DmwiX
 Zc0Eyg0ikiwuLskYWlNnkoO2Nb1l7jDjAx6DxE3PA0Gy9NLhtQ==
X-Google-Smtp-Source: AA0mqf5kQHLHtlYKhmiZI4UI4uNF3P2OcGYIuymbz+IiUaTx1Pb5G0+dgVyoBIEIFu9N/b1P+e9DeyujbTMQRvLIiOg=
X-Received: by 2002:a05:600c:1f17:b0:3c6:c796:1071 with SMTP id
 bd23-20020a05600c1f1700b003c6c7961071mr25340873wmb.138.1670708111071; Sat, 10
 Dec 2022 13:35:11 -0800 (PST)
MIME-Version: 1.0
Date: Sat, 10 Dec 2022 13:34:55 -0800
Message-ID: <CAA93jw41pOsz_o8UXqsYTe+N4LbWpWNpw2j9Bpg2fm2A8FUjJQ@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] firewalla finally playing with cake
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

aHR0cHM6Ly9oZWxwLmZpcmV3YWxsYS5jb20vaGMvZW4tdXMvYXJ0aWNsZXMvMTAyMjE5ODU1OTcz
MzEtRmlyZXdhbGxhLUJveC1SZWxlYXNlLTEtOTc1LUFwcC1SZWxlYXNlLTEtNTIKLS0gClRoaXMg
c29uZyBnb2VzIG91dCB0byBhbGwgdGhlIGZvbGsgdGhhdCB0aG91Z2h0IFN0YWRpYSB3b3VsZCB3
b3JrOgpodHRwczovL3d3dy5saW5rZWRpbi5jb20vcG9zdHMvZHRhaHRfdGhlLW11c2hyb29tLXNv
bmctYWN0aXZpdHktNjk4MTM2NjY2NTYwNzM1MjMyMC1GWHR6CkRhdmUgVMOkaHQgQ0VPLCBUZWtM
aWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlz
dHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

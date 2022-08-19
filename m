Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DDB599302
	for <lists+cake@lfdr.de>; Fri, 19 Aug 2022 04:22:28 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1913A3CB39;
	Thu, 18 Aug 2022 22:22:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1660875746;
	bh=OPsV6TzpljmzoOeFUo/mV5sZO/34BKKEB89kFPwSSxQ=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=RZcQf9seeuBHUyb2zenoOSof3cozF3dK4jzEpzB9Fnbbc2LPKNd2eLA860iMfOOX6
	 IAarqtPLKHIeBDfGEcV7u5Pqzw2Ro8C439+80O1RyCdZBCvLDso/S5H25w5OfUEfLw
	 wtfRkCkxd7eLz5rCNjzmQjUshT1p23/OMnprz3MiX6wl+JNcbjoC+mpTVFyskU4LxR
	 9DJ3h3KGSgGjRWz13qGf2I9I9RNbyqda2tsfV1PXghiHFPE0suzmfOuGmSXUvEOcS4
	 SgkAlwvfTrCTpXdZ52oycrDPCkuguHbHNuZ8cDJU4AM5Y6GYDOIyXL3fe6FcYgoRUG
	 Mx3bgztzmgJzg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 75C6D3B29E
 for <cake@lists.bufferbloat.net>; Thu, 18 Aug 2022 22:22:24 -0400 (EDT)
Received: by mail-wr1-x42c.google.com with SMTP id e20so3143717wri.13
 for <cake@lists.bufferbloat.net>; Thu, 18 Aug 2022 19:22:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc;
 bh=JaSbeoFC8vyxyYGrt7TOZ9HFkPx92gnKtOe72GZjfC8=;
 b=jmb9XNO8Y79cR3VQG82m5qzziROKhm3tKxYw/cBN8BnyeR6Xqtk3QNVPOIsD6h/NU0
 2HYd8B9hfAnkqBqRhcJTlb6YKhz5BbPknEbHW1cSavwES6UjjtNdgLjKqnQIPg87SStR
 I5UIHBGaIeI+oBINtOhrvUcpb51nt17nx8NWV34uMplSoYQDGue7NLCo1+OVARBQh/Zc
 2HqfFwiv0VKQ1agKVfa+Ii3NysRdEyGN+RwjRsBouhWN6qyvpggpafzzwEeaZSWncQ/C
 3Rq5IELSrFPbPEDVpK/M/2P1WzxEFpBDRlmjudIrlxI0IONSyCsSiaX/6+rIXbOocvos
 wM8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc;
 bh=JaSbeoFC8vyxyYGrt7TOZ9HFkPx92gnKtOe72GZjfC8=;
 b=mgb64LAcNrLUqXvEHHpWN4bJZ2GZJ3gs7ce98VwMXPiZxHLMuYthjm9uxR1OF3h9I+
 Xyx6uwoJKJzjFPunfrV9Q6PUFLfO7flaVow3U5aBwINJSnGkP8p57Hr+DyYNtOCnr+7i
 /LIoC289tRmi3pETFYLwkJlMPh3nC7s+Z9k4qKXiz9zsnylNgOHIxe/9+sGxMgZgoIPR
 NiGhc0K+8RuayO1U54/a1BON7tBSOsO/2dM4X4amizEA0AQIglcrNGZkslVKVhlhAkmG
 DaBDrGMjA/a8DdMm8LcBG9fyv8cZEuXxN9OSfx6zC7+/O7qhz4GMNANX2sJjC8lKveGf
 qmbQ==
X-Gm-Message-State: ACgBeo18RvfWncLfTBj3IdeZu6vLMRrvlk7U8XUCNo8gQA+Co+0H9y5q
 Y6rUmRMZx3bdi4Iz5xZInORt0Id2y2zF59sAj5v8tQazujE=
X-Google-Smtp-Source: AA6agR6Fa4TPepBBQLEJi7TAwhFlGQ8+SzBZgcohQQKKsv//Ex8odiRobbLqqnWlv4dg/vjYCgegC6DsHSYKBRopPuE=
X-Received: by 2002:adf:dcd0:0:b0:225:1abb:78cb with SMTP id
 x16-20020adfdcd0000000b002251abb78cbmr2888333wrm.5.1660875743164; Thu, 18 Aug
 2022 19:22:23 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 18 Aug 2022 19:22:10 -0700
Message-ID: <CAA93jw4siN05kr0-81zH=fwKgr=Tx7wpXyDNPrAKmHRvcAEs+Q@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] gearbox fpga wfq scheduler
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

YW1vbmcgb3RoZXIgdGhpbmdzIGEgbm9ybWFsaXplZCBmYWlybmVzcyBtZXRyaWMuLi4KCmh0dHBz
Oi8vd3d3LnVzZW5peC5vcmcvc3lzdGVtL2ZpbGVzL25zZGkyMi1wYXBlci1nYW9fcGVpeHVhbi5w
ZGYKLS0gCkZRIFdvcmxkIERvbWluYXRpb24gcGVuZGluZzogaHR0cHM6Ly9ibG9nLmNlcm93cnQu
b3JnL3Bvc3Qvc3RhdGVfb2ZfZnFfY29kZWwvCkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExD
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

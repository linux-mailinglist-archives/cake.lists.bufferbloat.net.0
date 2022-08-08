Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5240458CEB4
	for <lists+cake@lfdr.de>; Mon,  8 Aug 2022 21:45:30 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 386FA3CB39;
	Mon,  8 Aug 2022 15:45:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1659987928;
	bh=dw03nOQAyx+MPh7TXcUZqZB1TxN0aCCAHP3DP1FtIeg=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=caAE5kGrhO96Ee6EAXgwfIr22eJ8HC7XmWk7tNlh7FQyIfY0/YFOVjdN7lM0EAcOa
	 On5kjhT+KMonZDjIRb4mUoc6fMoQzgeRh8Gd5JNMpsMPa7wIwj1jpHw29aHYfL1iRe
	 FK/1JZUMjqxN+m3NCLszD4vgeebSYnuBcHArzx1dz3P8/zJQjaPRGVn1xeemXHOMb1
	 a1IHc6OJXuBZO3YgjiCb7f9gf/8hSY4mAL9OsxWeVwWTUGNLdF5NA2Hdx5+tf3f2wR
	 FaAeokQ7IzuTh3kAs8FqNJGUEaxjxNNzi+BG83f4Emr94tj0x6EdnKLObCpN5v9Pdl
	 +UW1QUhSmGWXA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 743D33B2A4;
 Mon,  8 Aug 2022 15:45:26 -0400 (EDT)
Received: by mail-wr1-x434.google.com with SMTP id j7so12045234wrh.3;
 Mon, 08 Aug 2022 12:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc;
 bh=YOtRQ0Fvg3UO+7hmujt7xH4LjB8KyU1fLp+WpU/FRg8=;
 b=Sw7nQd3twrDbyFicQWlNSPO5GcqrHhHTgjoC6VyS+j5nqaJ36Z+dg1LUwYihi/53a8
 uwqQ2/AnqfbmORfuWETtJzT5nEQE981CDWyiA2BdIhYi9bScvGAHeqxoW98BP22P2vGi
 l7XAf1rjXZsRuNrew7/YNi6THMzrj7QBLvvLtFL+/iwF9D4oZvDyN470dRt0+K++3uOc
 V+wWUsV9beaOKnXqNT3y3zREVuf7SGGrvjp+CrzjiVBE9NnbQq+JvB5ZjRQbaceaByWQ
 uH1CNEp23U+Q2MVUZng69mIRw6m0IpRhELBFwJUYZbrUpySaIJtWpEduCfhN0Fxi8awZ
 YKgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc;
 bh=YOtRQ0Fvg3UO+7hmujt7xH4LjB8KyU1fLp+WpU/FRg8=;
 b=K4YnBq/bwIVYwSF2utkZ3UhsezYhFojQCvMXw3wqHLkIStLJC0FiALrhDSWXVsWvV/
 n9tYbKXCgXykJgZvXT4SwArZOtpGkxrxyVL18wB7DNzmR3vFpPpTUL2LygFidtEm8ZHj
 SDq1NY+oLd3c+UUeZ2KARGXPfWywLuOHjEUIFWt37TgKH27FPq+7p+LJEaI7XCMwhWOs
 BLNoa+1BNr1S4xF2K2hx7oomUAZ95/7/b7WhtRMOpzouLOv1mAtVtFkYhSEVKyFFAk41
 H1s6+/++QtoAb0dKoMeoWnhjCE5I7vfCrHjlEyCdCoAwNUXoXIep0wI12R4fH4avn3fH
 xsxA==
X-Gm-Message-State: ACgBeo01UgbyOoxpQggkWOeojLYYWo0olXl5CvjjWFAbyse83jFFgHrS
 s7fww70HU2EKerqghbw9AcyazS/Ix8Eri8eGu1ZTUy4giTI=
X-Google-Smtp-Source: AA6agR7rCcFLHaH9THtdn+QwXLNMM6hy+MkqBS0eJogOBsWGX4uLvPj2VfO/pi6OWklP6TiZT5qV2DGGzu9hozHK5Vg=
X-Received: by 2002:a5d:488a:0:b0:21e:d477:6555 with SMTP id
 g10-20020a5d488a000000b0021ed4776555mr12360224wrq.380.1659987925112; Mon, 08
 Aug 2022 12:45:25 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 8 Aug 2022 12:45:12 -0700
Message-ID: <CAA93jw7R755rwjZfRCoVcWSdhNrw=PhknD47PP++R+pHzZo2Dw@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] paper: Testbed based analysis of Linux queue disciplines
 over Internet traffic mix
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

VGhpcyBwYXBlciBkZXRhaWxzIHRoZSBtb2RlbGxpbmcgb2YgYSBtaXhlZCB0cmFmZmljIHRlc3Ri
ZWQgZGVzaWduZWQKaW4gYWNjb3JkYW5jZSB3aXRoIFJGQyA3OTgyLCBhbmQgYXR0ZW1wdHMgdG8g
c3R1ZHkgdGhlIHBlcmZvcm1hbmNlIG9mCnBpZS9jb2RlbC9SRUQvZnEtcGllL2ZxLWNvZGVsL2Nh
a2UuIEl0J3MgdmVyeSB0aG9yb3VnaCwgYnV0IG9ubHkgdGVzdHMKMTBNYml0IGFuZCAxMDBNYml0
IGxpbmtzLiBDYWtlIHdpbnMgb24gbW9zdCBvZiB0aGUgYmVuY2htYXJrcywgZnEtcGllCndpbnMg
b24gb3RoZXJzLiBSZWFsbHkgZ3JlYXQgTU9TIGZvciB2b2lwIHRyYWZmaWMgZm9yIGZxLSouCgpo
dHRwczovL3d3dy5zY2llbmNlZGlyZWN0LmNvbS9zY2llbmNlL2FydGljbGUvYWJzL3BpaS9TMTU2
OTE5MFgyMjAwMDg0MwoKSWYgeW91IGRvbid0IGhhdmUgYWNjZXNzIHZpYSB5b3VyIGluc3RpdHV0
aW9uLCBwbHMgZHJvcCBtZSBhIGxpbmUgcHJpdmF0ZWx5LgoKLS0gCkZRIFdvcmxkIERvbWluYXRp
b24gcGVuZGluZzogaHR0cHM6Ly9ibG9nLmNlcm93cnQub3JnL3Bvc3Qvc3RhdGVfb2ZfZnFfY29k
ZWwvCkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

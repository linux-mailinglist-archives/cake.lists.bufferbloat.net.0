Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A1F540E6E
	for <lists+cake@lfdr.de>; Tue,  7 Jun 2022 20:54:52 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 920263CB41;
	Tue,  7 Jun 2022 14:54:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1654628090;
	bh=dqUWCGdRiLjyT6xZNq5gJusTdxQYyjt4gOqZ/6BvY+s=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KFanp9EaizL/tIPma0LAD4KmV3nlpVlEafr6x0P+lhpJ9YItjm7yutIsoZgTouhHA
	 BwOKMmu/sAQunRrK3XmGj3WCuYPXqiUtTmp+YpznCBTx7YRnMsZgo4nht3dHhkEG1Q
	 nRe9yryejQ+uAdsaiWhgFeLcfAYrIlEqdqVjGOr5E97ts0eDl9ZJYk+E4gRzYe0TB0
	 28Xzj7IcOLWSL42upratCenPraaWb2wYclWTsXrJcjAgWjdxWMZs4iwhn0m6FOZFuo
	 4GuxS7QRqDWZZyrjweqiHJnujo0sRiMYRv4KmIx7t90zLBDqXxA+5kvknRAqUY2Ebg
	 FMtyy9cM0q8mw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D33263B29D;
 Tue,  7 Jun 2022 14:54:49 -0400 (EDT)
Received: by mail-ej1-x632.google.com with SMTP id o7so3740866eja.1;
 Tue, 07 Jun 2022 11:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=MF1fs/S9+6wxuRsYhqWnHbuKPhCNJRV0reTEP+y80Mw=;
 b=pcF1qGfVZGqgheGHlPWNO5xSd/bS/MAQM9Ri4hLQtAylywnAXb/Mnb9sig4P4I0HiF
 s3SAJjiwoRmnoeWzq3t7OvEuR1qMKW2qOINXVy/yhSf91RmuCLWnJyioXbt3NbC8mehQ
 R9es3y+5oAnRefqmWMxXJ/09GjwPQm0niB+T+WiEcTHNxX15kbLPDddLfsHPxLs3cTAf
 g5+M1Nw+x2y/HhvbvuiDxwmaxThGl2N4/BkHIs3HPhbqp/UhPjfS6kRVSrYYH5F4zYBm
 cG3bFL134jD7l2CI4gTgYJAXFaQLIEK4TWfKAfY0xZm7U5BjO2GBkPvgBtYKIh9caIJn
 CMkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=MF1fs/S9+6wxuRsYhqWnHbuKPhCNJRV0reTEP+y80Mw=;
 b=SN1vrom5j030yMchSCtwLb/5dpEt9poKvfFEvKdhmqg/JYqEQnQLxGPOJci8zrsdhB
 I0WWYB22Fbc8nQtGbm2ReelZG5cqPsL/eBBs6w7Kn4yy6zGEts5HSxBCTfYvjI+Sr9Cd
 23zfaoX3XhnemqKpKNum//DicV73JpNLAae1GqihgNNPrLV2EP9v3C/oqfU9R3y9rpwg
 mZzDe05KmP9FZFZtVrmViyTLKZ9ddgSPXZy1O++2AwdTSZiTrhA252RA6ZHR08xnoA4p
 DUCaH5xDfDirWyEEvJq9pSKhZ2XFaNzvl82XCV6W5evusVzpUs2dXbX6gtlybJfAUOX2
 ZlAA==
X-Gm-Message-State: AOAM531syFgqRri66eh51S2UdfV4ASEQicnMFSYT1LxYJZ2aGUj0m+sL
 hEa3LxvGvvEuT0F3ggnFEQ1vMVo8bCS4Znmxl4x6fEMpVUc=
X-Google-Smtp-Source: ABdhPJy+FuZEtrra5pFNAcjvbKEY679kljj9nFiDjIJg27AXyMIYHdGVvTxgnQevPYy/zGUjyUvM82zVWP3G45mwiF8=
X-Received: by 2002:a17:907:60cc:b0:6f4:ffba:489 with SMTP id
 hv12-20020a17090760cc00b006f4ffba0489mr28503321ejc.666.1654628088667; Tue, 07
 Jun 2022 11:54:48 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Tue, 7 Jun 2022 11:54:36 -0700
Message-ID: <CAA93jw7m2xawMYnBeiVMSbUZZbFEDj_pJ6KzONRdY1xRU31DpA@mail.gmail.com>
To: Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] has anyone tried openwisp for openwrt yet?
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

aHR0cHM6Ly9mb3J1bS5vcGVud3J0Lm9yZy90L29wZW53aXNwLTIyLTA1LXJlbGVhc2UvMTI3Mzk3
LwoKLS0gCkZRIFdvcmxkIERvbWluYXRpb24gcGVuZGluZzogaHR0cHM6Ly9ibG9nLmNlcm93cnQu
b3JnL3Bvc3Qvc3RhdGVfb2ZfZnFfY29kZWwvCkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExD
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

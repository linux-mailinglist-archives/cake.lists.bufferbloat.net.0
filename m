Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D7E762A12
	for <lists+cake@lfdr.de>; Wed, 26 Jul 2023 06:10:27 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4AEE83CB39;
	Wed, 26 Jul 2023 00:10:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1690344625;
	bh=IHjT7gYajPrVmXcIsCAdgDTsDiMWQuRXpuSkGNcLNms=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=aIo2/z1+2nLi6z/qXROqEdwJYgDX8qyQ4EQe4q+zR3VUHC4L/rWBfhdMTAQgLabQR
	 ZGB2ba8QNc4DcvQF5PmqR8FXVPLAV5rUQdWbBQ1HUlZVaR/jj+sFJ2ra2pfqVLrKeu
	 TneUFrigMqEOGUNbqqjV8a/g49bx1gNJqtG2SYwOQnh4kucNwUEByDO+lOmAgsSAqT
	 KAPMJ04I0Eb4NICegxYYTnJx5VSwVSNS2oidCDaWQReFLdnSd927Fd3Cc1gGfFEtP+
	 CDtVcx0EYL7OnBWbx6SyQv35oUFY+0P6eHdLD7R2CqcEf3pBTHZqbX3wS0WOcR7nEK
	 B//gxCuEYBt4g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8AF343B29E
 for <cake@lists.bufferbloat.net>; Wed, 26 Jul 2023 00:10:23 -0400 (EDT)
Received: by mail-pj1-x1035.google.com with SMTP id
 98e67ed59e1d1-267f8f36a3cso2059017a91.2
 for <cake@lists.bufferbloat.net>; Tue, 25 Jul 2023 21:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1690344622; x=1690949422;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=EOPqdlHmm7AEStsUOS/vm1Kr7QU6Erqmj6+AT0buEWg=;
 b=XVH2yCYRnfPSeqIjWSlQC6vPVpCeWQWwgXHCO4NQ9cG9vyYJ2IzMWwfjzU0p14eB8R
 VCy4pfFBfHhxh+aC6oSJ22z6g0hgmN+s9xzeTAMAOtQdnD006kVYREyFtH/qaXZ8aC4m
 wXKf5RgwlFQW46PdFrqUThu3uawyx52kFMXz668FFwWg+3WKNlAzfD23EG39hzRYc3H5
 3gPEfoBKfQ1Q1b0Yl49K5jSD8+omk+SQXDnTp+14baM1oxVsDU/nXinA+/8TzV6ZO8dg
 zcUipHPIKXC8+SsXfQuZJxoXwvjfF5JTfdzWDSoyemNsBeOr1zWNg3mo0NtDrrKcDOht
 +20Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690344622; x=1690949422;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=EOPqdlHmm7AEStsUOS/vm1Kr7QU6Erqmj6+AT0buEWg=;
 b=g+yb1w9QIPMOsIjQQ0Zpj4XsiOtA46h0vVfUpZ+wrIo4F9XNQ9OS3AvVtOG1d+OEnl
 VKJiJmBWOqMQEcABK/FnNC9vtQFhJWl3eZc1rswUq7DyoiV0brmdR7tu4e5rEludodk4
 ah0vgCitWqwSkILZzSqR3ccbrV8e6Y+EabzXGAvl6NLY2Ha7pr1BZ0RXG0cQQcACUDCN
 Detbm3gbIE0IcQq6R3tBw5sgTTfZ5GxVNfZG0rA88u43bxsylq1Yh9KfHBTEZfpLzn71
 Bn795OWK2gHEI6zDqDZn6+ySbKkNnrLYrb5+l4OM0nHW0KVmnd7hFMYw1SmoCoeQZH+k
 cJ1A==
X-Gm-Message-State: ABy/qLbUN6vrKIpKLKp3P0wGC+9TG2MFj/xK54ao6EgZrM68DSbub4HC
 qg4uvL1CpiF0UH/pNJvg3B9sZ//F8cFlurhSVOGqt7rcK+M=
X-Google-Smtp-Source: APBJJlFR02o0s8iAdF8HK0GqPmXaxOA9v6Yccg1b9imOAgDXiyBQ4qrdAz7Cg3Yve9NPqs2Frq3UrAvwqGor73dyPnQ=
X-Received: by 2002:a17:90a:d50a:b0:263:5702:d4c5 with SMTP id
 t10-20020a17090ad50a00b002635702d4c5mr794242pju.19.1690344621842; Tue, 25 Jul
 2023 21:10:21 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 25 Jul 2023 21:10:10 -0700
Message-ID: <CAA93jw6WNZ8w1FgHY9aFQGdx__MivoOC7t1Q_yTqXLntx5JQjA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] qosify ad - I think
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

ZHluYW1pYyBxb3M6CgpodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PVZ1RldoMVgxLXkw
CgotLSAKUG9kY2FzdDogaHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2ZlZWQvdXBkYXRlL3Vybjps
aTphY3Rpdml0eTo3MDU4NzkzOTEwMjI3MTExOTM3LwpEYXZlIFTDpGh0IENTTywgTGlicmVRb3MK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

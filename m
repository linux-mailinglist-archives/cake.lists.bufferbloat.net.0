Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 106B7425D17
	for <lists+cake@lfdr.de>; Thu,  7 Oct 2021 22:19:31 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8C6F43CB41;
	Thu,  7 Oct 2021 16:19:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1633637969;
	bh=pxUfxQbMUNxNHD1aK8bWCfCBDieab1HhlEAx/6e91AI=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NmZAFU3SOiJnf+OhQ9Qn39BCH7zV0BDwVgiYgAUtZ25eVFKM4rTzCxxImZQ293W1s
	 TTqnAo2Qn9T377S8ZTGdczC9jYvl+Js1RPovXPtLNVNGxs00LiY1veoo46MhQp2pP3
	 n24MI4jaAPWxT1ozPj7xID0KTt5xEVNgMOd5wZmvI7GVXwOZjG3ZujzxFmlQ9Y/aHa
	 aoBuWTRM7cPEd1NNgp0F5Ho9drCYnUpW6fNGnneRegFldd+m9YIw35OiyTbDt7AcgT
	 6BsAqpY9MI2Eq6vWjgrreQuG/2CENdRTjLPOQPmSd7/XVcXaJKy/q1In5+g3NQac1c
	 cvtn22FWWk6tA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com
 [IPv6:2607:f8b0:4864:20::d33])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 20E753CB35
 for <cake@lists.bufferbloat.net>; Thu,  7 Oct 2021 16:19:28 -0400 (EDT)
Received: by mail-io1-xd33.google.com with SMTP id 134so8134429iou.12
 for <cake@lists.bufferbloat.net>; Thu, 07 Oct 2021 13:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=M1W/mBrcwnQpm97M4RtrRdQWEla/S5RvCqX9aaFfD/w=;
 b=Amw3/usnQ5v3ObKIP8zUQVgYam1AzZboogWFlMfBLzJkHNbbeUsb4qGjMsMxkxenF5
 ybXo291GIIiU0yd6FcaaQjmZAlFWmHQJMwiBVhMelqXT1XXm/m8/F8QkRMz8A/p2las6
 vSf991d+C0T53pd8cfNGB8QZgQV/N24MP2zffdEPt+bEtlPkLKjcPG/6bSL4CT5ouANU
 PImG+6DEuqmwnbxcWaDz/YZUyhfboLlm6UD5vhuGQF0aUoSB0kKdWFwvXcqXDfUXaS3n
 Mbwr8c4fuJbwZ+FZqWSAV96ZNWYIi8GHZjsQEhtEDm0qPgof73WPysJIrc8qhFzepWQH
 ui/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=M1W/mBrcwnQpm97M4RtrRdQWEla/S5RvCqX9aaFfD/w=;
 b=vOG7Jw39wmpSEU0ev1HhWtlTmFP/gQQOQNlL8WuEbvmOHrhUtLL+JY4MniikJ7Y1+X
 tmvPDubQzGPsWXVdzNAhEzCo/8KL1zGNJMK18rqwsQk5GnRR0RL6xa1zPcuOP9A6r5S8
 KFZoEQXsjkIvR6mcCOKqCLM1YJHh4j9/du5EK3scN5ye3p6H9qdMcHux+YGco4d0r+IE
 CaYqwtAQ0ghF77uk6B4CiAAdtqFKhXfxCD+FQIXWVx9Vj2azkSScgErYpXWglRRi8U8l
 baTf0h7nYkcVI8zkqqFop2tLnlgK6dsOcTyRiamkot+1PCS/B3LwBvgKA1XrrK1eSod6
 kEAg==
X-Gm-Message-State: AOAM533bSXE9T75IkDc+Z3jBBv1mlQk64ngKrbdZg+Yy8Lo4uyuzKosP
 xdm9c4bme5F/3NqXQeJywirRG9hg7Z8bWU97VkamAI1v
X-Google-Smtp-Source: ABdhPJxvNwYcf4fAJE5roaiDjmI+cEhu8pBMo9Hu9oMkaZGzPsxnsWQggRmS2wbHpup/DRk0WpPCMwL9z4mfdz8IJeM=
X-Received: by 2002:a05:6638:d43:: with SMTP id
 d3mr4701688jak.60.1633637967349; 
 Thu, 07 Oct 2021 13:19:27 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Thu, 7 Oct 2021 13:19:15 -0700
Message-ID: <CAA93jw46yjqyDb3F3HuUDpnhu86cT-D22uuYBmR2gLFK8jTyEA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] slightly negative deficits
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

SSBoYXZlIHNvbWV0aW1lcyB0aG91Z2h0IHRoYXQgYWxsb3dpbmcgdGhlIGRlZmljaXQgdG8gZ28g
bmVnYXRpdmUKKGVpdGhlciBvbmUgcXVhbnR1bSBvciBvbmUgbXR1KSBtaWdodApyZXN1bHQgaW4g
c2xpZ2h0bHkgYmV0dGVyIHNlcnZpY2UgdGltZXMsIG9yIHRjcCwgb3IgYXFtIGJlaGF2aW9yLApn
aXZlbiB0Y3AncyByZXF1aXJlbWVudCBmb3IgdHdvIGJhY2sgdG8gYmFjayBwYWNrZXRzCnRvIHJl
bGVhc2UgYW4gYWNrLgoKc2ltaWxhcmx5LCBzY2FsaW5nIHRvIDIgTVRVIGF0IGhpZ2hlciByYXRl
cyBtaWdodCByZWR1Y2UgY3B1IGxvYWQuCihzY2hfZnEgdXNlcyAybXR1KQoKLS0gCkZpeGluZyBT
dGFybGluaydzIExhdGVuY2llczogaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1jOWdM
bzZYcndndwoKRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=

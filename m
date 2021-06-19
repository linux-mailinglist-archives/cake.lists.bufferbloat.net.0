Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEA33ADBDC
	for <lists+cake@lfdr.de>; Sat, 19 Jun 2021 23:59:20 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 528C33CB46;
	Sat, 19 Jun 2021 17:59:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1624139958;
	bh=rcBNUbjrELgzEQ0LTx1MRdRKZDOJiWe9Y+VqjiaKBn0=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MQXcgeVuWRGK5YWCL+EWYQC/y2gSnmxC92Ke4b9+VISH2JKpGKziE/NCVE0uvg766
	 g1n5ziJ4Y4c2oNwj1Yf+E2yFmee+acSR21DJT5YiRa0tyQ/YM6nDw51s0fM9Lan3qN
	 quaLSW6grkww8eNasEYQFdBHkJxnqfdSMxjL0zXUXQONyIQvMWO5/Y9eiLhXUk+93F
	 LK2/bhtGNDGYydrR+p1wluxMK5w0e3f0Jc08B1zyetwC9Yp96WgJIHcdUom5K80DCa
	 M+3QLanKgviPaRC48xSgUea+skLRpDEIRrSHQ8YACF1lFIIEqzTuqU7/RutG7EPu9J
	 rmSBhjt85lSxA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com
 [IPv6:2607:f8b0:4864:20::12e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0922A3B29D;
 Sat, 19 Jun 2021 17:59:16 -0400 (EDT)
Received: by mail-il1-x12e.google.com with SMTP id j14so769519ila.6;
 Sat, 19 Jun 2021 14:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=laxTDhbvCcxHDLbxQGrnruVmeNPyTuJyzsPg/0aPNp0=;
 b=VnL/0nwP8ORroLPH5xySsX1I8vn3tdeEQ7d18R2LFVL8tIEax8zxQvUw7G32Ia01qh
 1ol5yaoXDU+9R/IMR3Y7iaNC8Otzj5UtELW0Ev0Kc7zfjzK0r5r6mxXppbx05S49emr8
 TsgwPFLB5TW8hKPRQTyEw7a6AHmy8VNxNNR/6dWEkL8LJUXnDz5r0lHxdDR3Oojt0+sn
 LbNzao09Q5SPWOInMHAiO4j1oYCsuKa3j3O1fjnRV5G59GLp2C6HB/QAOWERNG3iR4Ux
 y5IGCVjtl/fjcXXY7Z5zKaTnDOZfxyJPUwNMCbGWMI4RlGj0JNCPyAwAwyKLAmE0NVD+
 /YUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=laxTDhbvCcxHDLbxQGrnruVmeNPyTuJyzsPg/0aPNp0=;
 b=MlQqlVizXUEc4Q55q8OKybK5Pi869H3GcjUESjkPNGsXOkvRg9SQeC/P6HGU9b/DHb
 /jdDXRncA5w75i4vQZB5ZGm85rzQURdGmmpPZEE+wybtOnGgGArQ71rwUEf3hyfwJ/CI
 /MOakWtAUMCYjG1DBXweLleF8/ciIvCPCUH0WqUgDVIIPY+0eDKkclNu+gMWzdVOG/xp
 DsXaTwnNRtqRc2HvQwvLBhuJOloOFrVnx6c4g16smnWCLkWYBurAaxYP5YsI3H9RQ+43
 8yeBAihvG2ZY1u9h6ArEZAwOcymBufPnd8JCwQ0UI9IWh9/VzA0Rf0mK3ifMHvn5fHqx
 WmnQ==
X-Gm-Message-State: AOAM530ZyFUL/xyrgBXHnqPRTId6QOLKxC7JWsrTrRHqIRUh5fm2002/
 h85emuurD7VRWzkqEJgjMpKQVAhhQvZ72ph/0Y53o0w9+f0=
X-Google-Smtp-Source: ABdhPJxTkbBkTPsgIF6ziQKOBnyTo0m6S1KjBkvmXWsu/l43zuHjQWXwbV77uK6LiarP7MMvQWxjo9dWDGzEJqst3nU=
X-Received: by 2002:a92:b74b:: with SMTP id c11mr4021806ilm.246.1624139956177; 
 Sat, 19 Jun 2021 14:59:16 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Sat, 19 Jun 2021 14:59:02 -0700
Message-ID: <CAA93jw5JR_uawdeK7PtdxwBkkeB4d0DOS9nHBizoPv8EteBPDw@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Subject: [Cake] access to cmsg from go?
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

YW55b25lIGhhdmUgYW55IGdvb2QgaWRlYXMgaGVyZT8gaHR0cHM6Ly9naXRodWIuY29tL2dvbGFu
Zy9nby9pc3N1ZXMvNDY4MzEKCi0tIApMYXRlc3QgUG9kY2FzdDoKaHR0cHM6Ly93d3cubGlua2Vk
aW4uY29tL2ZlZWQvdXBkYXRlL3VybjpsaTphY3Rpdml0eTo2NzkxMDE0Mjg0OTM2Nzg1OTIwLwoK
RGF2ZSBUw6RodCBDVE8sIFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

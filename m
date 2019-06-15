Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F44046DAC
	for <lists+cake@lfdr.de>; Sat, 15 Jun 2019 04:04:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B4CE53CB3F;
	Fri, 14 Jun 2019 22:04:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1560564242;
	bh=2wCurcxXScZ9aGEQHN2T84cRODC9KoM8pd/Yoq+cQEw=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=TU6Q23Er1Kb8y2cpwSi6f6UJtLKWKwTWm7JNpXg5XBwSsfRckkJ+XXQ1OPRRC3F0+
	 GZx5jkKyhSgE+3MkywlaMk2nlrijVfTdIN1+Xl55bvgB+vsxa9CiqM69Z0fKDHartF
	 k2GSzHE877viqVld5NFF4QWxikz6Ij8IKT1c+DgNq7a9yDltJAnnlttYRwZOd+hQpO
	 Eq4ebRGUbmYCEgdrr9FhilXThR1ljt2QSQp4rDERAsuHcowJNoBTabCv0lUEhVnq1F
	 NS366/1j1u4lBOy+OsLxNENkqGduR+sF8bcuQNncIloVt2lHAWI3QiCgsC+rAg3NLb
	 5xk2J5ycNLQLg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com
 [IPv6:2607:f8b0:4864:20::d36])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D02623CB38;
 Fri, 14 Jun 2019 22:04:01 -0400 (EDT)
Received: by mail-io1-xd36.google.com with SMTP id d12so1837155iod.5;
 Fri, 14 Jun 2019 19:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=19egAd3jVdg6gZOVcWM6nfvw9RVdbaqewuIgjECFtN8=;
 b=i5rj176e3Ewhyla2uVQACGrDujcSZk+abNcN7XvRG7y5sIS5ogJSduneqp4UBLL8no
 7dEwRgpI1imb8s+c47X41Lo3eD/AgC5d6r7aKJOGJVIC10mvLt3uTa8Z47BRQqWrl0wF
 66steKtKKwUCyJ3BpTuiTtasfsaqKbAoFhn/92FX4K8XfGGMlRF/Tyqw0gnGH/9blxpP
 eV5xCCY+Xlin3xW/+Px1hRZ/zPvMm5bbTmSFk60PXg5uiiKKUsncsrP0UchPl+6h/Aq+
 J5EwstRUFXMMg2/fey+KbaADPiTXJ62v7KmP9iJukzBZm0mtShTCJ9NFIxjRgB5/yYjv
 RSEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=19egAd3jVdg6gZOVcWM6nfvw9RVdbaqewuIgjECFtN8=;
 b=iMOZ756M8yLaVx21IIwAe22qKbf2DNW5j+FrPnkKW/I5X8oLDdYI3QVg+A76X6ClOk
 +UDX/8kWbN4bj/IlEe99jLVvzq2Yyts+xmhWvUVm+0CSb7tGSnVsRGTy05kI03Wz2BL2
 HX+LrDzuOeqg8IkuWozF5T5aef8K51LyF24W8okC/V9qUlfLxgPxuTIjjhWEJAuuZDZd
 Umco5pzJV054frIxR1e31qq6ziNZRJ3l+pSUTwHXvAeL7xHsIUJ+rfdX+YlUW18qL44G
 /yC9e/rmcyZU4q/6UKBhW37//SRWRVLkj9XUTDgk945RmWdPVjS2Ud94FhGWE53IdFFy
 mfoA==
X-Gm-Message-State: APjAAAXCZNcR3eCimg5lM2SMHNIhgVs6dnTC137P6B+10EOYr26CxQVD
 nsSQH0s5NoArioQJwLRsyw+tCQpGGVUPUepk17Tdst7b
X-Google-Smtp-Source: APXvYqyZc1ueq9Ng36cG/GkVxc0LY3I3TNtZpKt4yBykHmBehqzpaULmLXwEbO0Jvo0pphtQa39Pael+zlv7BaoFC9Q=
X-Received: by 2002:a5e:c30f:: with SMTP id a15mr980672iok.246.1560564240921; 
 Fri, 14 Jun 2019 19:04:00 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Fri, 14 Jun 2019 19:03:49 -0700
Message-ID: <CAA93jw4d0FaFxBLCTimtV9xmkaS=OwdAV5d3nK-4QwiL5LinYg@mail.gmail.com>
To: cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] l4sdemo
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

U29tZSBkZW1vIGNvZGUgZm9yIGw0cyBoYXMgbGFuZGVkIGhlcmU6IGh0dHBzOi8vZ2l0aHViLmNv
bS9MNFNUZWFtL2w0c2RlbW8KCkkgZG9uJ3QgaGF2ZSBtdWNoIHNwYXJlIHRpbWUgYXQgdGhlIG1v
bWVudCB0byB0cnkgYWxsIHRoaXMgbmV3IHN0dWZmIG91dC4KCi0tIAoKRGF2ZSBUw6RodApDVE8s
IFRla0xpYnJlLCBMTEMKaHR0cDovL3d3dy50ZWtsaWJyZS5jb20KVGVsOiAxLTgzMS0yMDUtOTc0
MApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1h
aWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

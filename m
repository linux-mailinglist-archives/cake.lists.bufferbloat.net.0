Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 1270C12FE8
	for <lists+cake@lfdr.de>; Fri,  3 May 2019 16:16:40 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D2D203CB39;
	Fri,  3 May 2019 10:16:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1556892998;
	bh=Dh4Sf9kBU23VfpwtyDgw7I0UHIyWAjlFoYwSqIFAp5s=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QVpXp9FzuncNAcvoflh70SJmGgsuN8H1pHNwym808ZiJTvA6KFGjPImGjYPNZiI9Q
	 JWF/P4cM0q5EMH2YcABGf1+c+azTiimHL5Slkv8CZN3rhaD2WFZoPrJ2OKUC1Ix3WT
	 PNJSXnUQhBfyIBufmmk5Ce33n4j50z+LYmbOnYBILBYn5N7OK6DSLjP1DKyCTodosl
	 mHtOHlUgHHiXR9en6yPtOHrXoMs4UA1fR9RHQCLyq9UabHnAjxYU4bzRDkIzHDo6Y1
	 KgoVNcFy4hoOnjZMFgahOiAjVrsqO2VY4r3xZLQCf6gjaOqvl+dT57RToLkGLAGHgV
	 JTN0hY2w/lhpw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5DF663CB35
 for <cake@lists.bufferbloat.net>; Fri,  3 May 2019 10:16:37 -0400 (EDT)
Received: by mail-lf1-x12e.google.com with SMTP id j20so4550989lfh.2
 for <cake@lists.bufferbloat.net>; Fri, 03 May 2019 07:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=oaR16DyScxfMqb3f1y6CxQw9Eyrl6ZHhqQ4JNisbRDI=;
 b=fEQq6u6yhO6AIpbN7pmrdkK8l0AAy2jaBZSnEXhovfWjDB+s/vidPeAH2vvCBZw08t
 udvv606LL2PmuJBlwMldWyZi08caiDyzJSzzYCdRf9zKH9FM3RLKiDOZ3GrxmxOP22K9
 T/pHmp9X2VlEVZvGWleSbSLIC482u2tZmAn+F05z+vuAuawdPCyM/RQfLJpPB9O7YXWM
 HXP5PTrBKhZ5NNCjm6lFQLhyqKGRYOW/R6lrCGnhcAXh4GhPYcbKI+jYmntcMqrl/Udu
 gf4JNVVy+E53zxCUB+9mh4FwrBmzw2VOTFVXFsZx4EvK3FZVhvkdROS93KwOUbW21xqy
 2fsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=oaR16DyScxfMqb3f1y6CxQw9Eyrl6ZHhqQ4JNisbRDI=;
 b=XghCaX5aHS2FPAtILkaI1Ic3B27m5Dhvv7JlaQR1jBOZI5hRxMk5/UhR/dW8sgWrUh
 0C6DiWymYGYTFzGMFUzafOhNgD/Do1FrXvNAo+O6h4KuQva8pRio7GxcjixkpHDSGFzS
 BwlnbK3fgPzB+wPeox7yKSSphtOQ0l0KZlugEhScejmldxnWPqsPDMCu2DQBwaGt+jdo
 qNQiE4wh72p/60Ka55yiJg9UmQ3cYqB1RnYW2ZrXfWlWOf8Wm1LJLsfjCFVz8bMvEXD5
 TRhpGTXF4vHUv95IoaDXKaVgbod7pGiqqR6WmjD7yHAMq8OJT32cSyE+xCYLrvi3bXZY
 6i/g==
X-Gm-Message-State: APjAAAUEwf1TCGLrwnGYlXj/s0lc0lItbPXcXKmhpfNFjRbAWEUUd9AM
 4aox5tjnPnjsK+h/VBsrukgQwF3+
X-Google-Smtp-Source: APXvYqxCb9X3T/6ELnCLcsm+ic0p4I5Xi3kptzbFwLz115jooHDdYKwQ1UfFmV8WcAxu571J708IVQ==
X-Received: by 2002:a19:ee11:: with SMTP id g17mr1544089lfb.5.1556892996250;
 Fri, 03 May 2019 07:16:36 -0700 (PDT)
Received: from jonathartonsmbp.lan (85-76-21-226-nat.elisa-mobile.fi.
 [85.76.21.226])
 by smtp.gmail.com with ESMTPSA id s26sm353694lfp.31.2019.05.03.07.16.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 07:16:35 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <493B2B95-93C5-4CEB-906E-CFF0BF3187E9@darbyshire-bryant.me.uk>
Date: Fri, 3 May 2019 17:16:33 +0300
Message-Id: <069B5A62-314A-4559-8D6C-C67A5D1FE75F@gmail.com>
References: <493B2B95-93C5-4CEB-906E-CFF0BF3187E9@darbyshire-bryant.me.uk>
To: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] Possible conntrack lookup improvements
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAzIE1heSwgMjAxOSwgYXQgNDo1NSBwbSwgS2V2aW4gRGFyYnlzaGlyZS1CcnlhbnQgPGtl
dmluQGRhcmJ5c2hpcmUtYnJ5YW50Lm1lLnVrPiB3cm90ZToKPiAKPiBUd28gcGF0Y2hlcyBhdHRh
Y2hlZCAtIG9uZSBpcyBhIHNpbXBsZSB2YXJpYWJsZSBlbGltaW5hdGlvbiB3aXRoIG5vIGZ1bmN0
aW9uYWwgY2hhbmdlLiAgVGhlIHNlY29uZCBjaGFuZ2VzL3NpbXBsaWZpZXMgdGhlIGNvbm50cmFj
ayB0dXBsZSBsb29rdXAgJiB1c2FnZS4gIEnigJl2ZSBoYWQgYSBwbGF5IGFuZCBJIGRvbuKAmXQg
dGhpbmsgSeKAmXZlIGJyb2tlbiBhbnkgb2YgdGhlIGhvc3QgZmFpcm5lc3MgQlVUIGl0IGNvdWxk
IGRvIHdpdGggc29tZSBtb3JlIHRlc3RpbmcsIHRoYXTigJlzIHdoZXJlIHlvdSBjb21lIGlu4oCm
IAoKTG9va3MgbGlrZSBzb3VuZCBsb2dpYywgYXMgbG9uZyBhcyBpdCBkb2VzIGFjdHVhbGx5IHdv
cmsuICBJdCBjb3VsZCBiZSBhIHVzZWZ1bCBzcGVlZHVwIGZvciB0aG9zZSBzbWFsbCBDUEUgZGV2
aWNlcyB3aGljaCBuZWVkIE5BVCBhbmQgaG9zdC1mYWlybmVzcyB3b3JraW5nLgoKIC0gSm9uYXRo
YW4gTW9ydG9uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlz
dHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

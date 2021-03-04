Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA4332CA94
	for <lists+cake@lfdr.de>; Thu,  4 Mar 2021 03:55:34 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1F2413CB38;
	Wed,  3 Mar 2021 21:55:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614826533;
	bh=W8M+2aRyEDqD81ObphNBDcEoE1/N4GxaXz3kh2TKWmo=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PgvBDIm5pmQAIwuTNIN6Qc66ZtMC77fb+FbebmtowlwWg65FNQMoSlrDa1w9Jboo5
	 MBW0t+QBwSgydcvCK0MYoxPosV1lLU4rMMbw5jhBfYJ0QFv0Zd/qkUYM27M2I0iOZp
	 iKcVaNQtuBlKXFwO0ew0Wtp4GiIbYjJO1XIeByChvmpOEgplUQtzV5oBR2AHR5/psr
	 9i5v7mj35uQW3ymrils+Odf6RbHHRjyPgilGmkHEZw8a06AQeMqx5DdHjgaDsYA50s
	 F6NDqALO4NzgCg7pCZQRXwXVF6y7bMbyu9Vl0sUJ22R1xPMaAmf/moJ7W0fYqBf8Xc
	 w5lnsSKKnInTQ==
X-Original-To: Cake@lists.bufferbloat.net
Delivered-To: Cake@lists.bufferbloat.net
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 794063B2A4
 for <Cake@lists.bufferbloat.net>; Wed,  3 Mar 2021 21:55:32 -0500 (EST)
Received: by mail-lf1-x12b.google.com with SMTP id q25so20436621lfc.8
 for <Cake@lists.bufferbloat.net>; Wed, 03 Mar 2021 18:55:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=n2zKXW4yHgNPOlemyMhtoNaXbG1ZJoAsUYbbJcvUW6Q=;
 b=JVHN0nEbIIz9NHGyrjTWqdKHwtB7UJ7mVCqnK1sWReKnZLdjOAbfbjAdkP8izk7Vc1
 5OWW6I8QgWPmCy1UPd3y6WsdtiLJ0+b8f6jp22+FmsFeakdEYBUXkPO7EgeDAkHVg5zC
 VvhpZIvxTkJAfus+d6qArt2u+XPd5ED5WvyjMkcUa4zc++ei88Ag7hRzTbXGMhMD44sB
 0aClQMe9PPzAnyNAMzW1oyKrJh79IEFyPHZ9uZRP5EfxmnLSJkjpnu4cu/VR3NjQLFBW
 7HEpicebReX8kWTyR+aHxpvVrSUziI7xBhJnina/7S1NhcZp9yq5WPHVDIlsbQYx/XZY
 L+ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=n2zKXW4yHgNPOlemyMhtoNaXbG1ZJoAsUYbbJcvUW6Q=;
 b=egOHHS5rnKaBadx+l14gDUDape2Q7NEh6pORG+ig5FRc+/QZGFd1FLwgHBM9ZwtvQ/
 ev40JWZJM3Mm2vjuONJM9wO3mm+Qbsd7jSMdU/9RxCMnL2WOtiie0TNHiUyR3LtBA2Q+
 EJWd9t8Lg3b6uHHzN2+FYXxHdlqqhTzkf39jcy6FfIU0ZCmBySCpPboTuwHcxKyZXl8U
 H8mILSXz4xnumvw43OJuNWePrlq3pNlBakq5KuSoa6qJXayQdHnNcYGtHJvcYRWM9jVO
 E8RRg7VleAdxB2lIfa1Mo8GWaPXnUnWLJXS1uAW9FHFRjo8imXnT0oIdce0vnFYQtKn9
 X3qA==
X-Gm-Message-State: AOAM532hLkK0wdKXH+afjje8q2xeSVdJ3LrewmCt0CzlBdTWYEMdt3sz
 izTRz+ivqzbqsa3EOoFk9LQ=
X-Google-Smtp-Source: ABdhPJw3EXN44OenZSpNbOvAXdI72J0Rjx0E99qj6IDgOkeRDXqPc921KK7GFmF2XImCF1hi+Is0Eg==
X-Received: by 2002:a19:2393:: with SMTP id j141mr915372lfj.533.1614826531205; 
 Wed, 03 Mar 2021 18:55:31 -0800 (PST)
Received: from jonathartonsmbp.lan (176-93-29-60.bb.dnainternet.fi.
 [176.93.29.60])
 by smtp.gmail.com with ESMTPSA id w12sm2959168lft.281.2021.03.03.18.55.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Mar 2021 18:55:30 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.7\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAA93jw7RP_xLJetKJqiEBH_bgG6_P=AGExZF9VTYs=3hoJH1vQ@mail.gmail.com>
Date: Thu, 4 Mar 2021 04:55:29 +0200
Message-Id: <FB137C01-AE54-4E90-A32C-CC0D8DE0F405@gmail.com>
References: <CADmwGqvtAg9p_+RHN2bGms=8XLNU698irJ_VVoXjYpZ2v7=Vyw@mail.gmail.com>
 <9C791D21-7FC9-425E-9167-EC7660BF38F9@gmail.com>
 <CAA93jw7RP_xLJetKJqiEBH_bgG6_P=AGExZF9VTYs=3hoJH1vQ@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3445.9.7)
Subject: Re: [Cake] ISP Implementation
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
Cc: Cake List <Cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiA0IE1hciwgMjAyMSwgYXQgNDo1MSBhbSwgRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwu
Y29tPiB3cm90ZToKPiAKPiByZWNlbnRseSB0aGVyZSB3YXMgYSB0aHJlYWQgb24gYW5vdGhlciBi
dWZmZXJibG9hdCBsaXN0IGFib3V0IGEgdmVyeQo+IGludGVyZXN0aW5nIElTUCBhcHByb2FjaCB1
c2luZyBtYXNzaXZlbHkgaGFzaGVkIHRjIGZpbHRlcnMgKyBmcV9jb2RlbAo+IG9yIGNha2UgdGhh
dCBoYXMgY29kZSBpbiBnaXRodWIuIEkgY2Fubm90IGZvciB0aGUgbGlmZSBvZiBtZSByZW1lbWJl
cgo+IHRoZSBuYW1lIG9mIHRoZSB0aHJlYWQgb3IgdGhlIGdpdGh1YiByaWdodC4KClRoaXMsIHN1
cmVseT8KCglodHRwczovL2dpdGh1Yi5jb20vcmNoYWMvTGlicmVRb1MvCgogLSBKb25hdGhhbiBN
b3J0b24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2Fr
ZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5i
dWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6813412EB96
	for <lists+cake@lfdr.de>; Thu,  2 Jan 2020 22:58:10 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DD4823CB38;
	Thu,  2 Jan 2020 16:58:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1578002288;
	bh=BVB1HSRJPzfLSC+KMZy4Vqd35yrrvIKOKGWg+noH7x4=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZRfxHy3AU/h3n2iHx4Co976oNzmlyPysp9WTFpAWuGJD2rRyRLqslpSRuQkU61nAX
	 zfu19thKZGl9WMadqYTBvrML80fpeL1ZFXIiA1WxCbTqNr1+OQGHqq8otzcWwtkUzP
	 q6TzbKzAP7KUSOb93dZlN7jFhWdfwByTlk4QE+nx77hJk0dg5rcSqlG1qluNy06bmH
	 s2PQs+5H9ujhzxx16DoKuAj3Hsb1WMIHJcwF5E9ucPLqTvLjYmuosoe0fJBdHMg8NU
	 Ty2P+e+97mFIqtCfVFk3aeu34TmT2UI8KSY6M+Ne7Ob17PChPBAYqK7vKtAGA2cn2V
	 hZL7OF3P4f1aQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com
 [IPv6:2a00:1450:4864:20::142])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9C5FF3B29E
 for <cake@lists.bufferbloat.net>; Thu,  2 Jan 2020 16:58:06 -0500 (EST)
Received: by mail-lf1-x142.google.com with SMTP id b15so30770734lfc.4
 for <cake@lists.bufferbloat.net>; Thu, 02 Jan 2020 13:58:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=35q6Jfi2CC23jXWt4F+Y2RbWyKxhwN9lDjJC7r78ZIs=;
 b=vMMuuA9l9972ihHdc7hjdkhsUVFWoxUnVs30y5dRjb3CjWQx9INuW//pxcQsuPE3lK
 Qs5GuIuqd652A0/gkHUbVATgkvp+BBRr99JZEmO00EZzL5OhL8yhYWuRwYnAJ7B1JKsa
 L+JcjINjfBEmT57PMS2GroCkEB98e8ZJW5a3Sj8ySANKrEra0SoIwIlBU1jMMG1/ASQ5
 FulOqXC4EGJf8f7vUmi1EA3uyutDHPMdRRLljmIKD13XEzZmnicUFeo6fsqXIOZUr2pq
 JtQ+EGKef/UYlcc5aSKTtSUtwKgqjtnOR7mNL7uh6TEakjx0EkK5/P9FBdo+353rQVUc
 MOaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=35q6Jfi2CC23jXWt4F+Y2RbWyKxhwN9lDjJC7r78ZIs=;
 b=cvrX6CRM4JXfMxEhmxkrW4rtF4k8ds2aQKmDEImhGY3/Y5diRp15Zc4dXxDUrhq/mh
 iUMV8mnA7c9Kbuz5PIdTzBA7YeOf5A1mxi+Er5NtxJ/Bmo1XJSLCs7z++dyr6fidR5z8
 rYPA1BdtweflKEiXUxnPofHoPxx4ePxIQgJSSujMEMSD8J2BYiuPIuNwFJIt73RZ2nd+
 s4Q3Og1GiYks8ROovPJ81lGDr1pKv9L7a2mQkOQb0KWVQBiOpeZpEt62rGoKpna8O+2B
 1VcExSpgSdWyP86QIK7Fu9B7yuY0zPMZRyiHFJzQr4tG8sR3iTVDacMHn1nUB2f3agb2
 xDnQ==
X-Gm-Message-State: APjAAAVZHXPDWjopTpEKBahj/LEc4W9cMEDvLcCBADqR22RJUcfOyz+7
 KztgHIIgrrQxtg28C6ijbGQ=
X-Google-Smtp-Source: APXvYqwNwYpvQH3/oHzSQ5p43kTZlE979UrLxObLsg8UQhaOw2EWVmcuqb7E91wSH4HsXr7hSAKeBQ==
X-Received: by 2002:a19:6a06:: with SMTP id u6mr48503903lfu.187.1578002285376; 
 Thu, 02 Jan 2020 13:58:05 -0800 (PST)
Received: from jonathartonsmbp.lan (83-245-229-102-nat-p.elisa-mobile.fi.
 [83.245.229.102])
 by smtp.gmail.com with ESMTPSA id p12sm23687003lfc.43.2020.01.02.13.58.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 Jan 2020 13:58:04 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <20200102092143.8971-1-wenyang@linux.alibaba.com>
Date: Thu, 2 Jan 2020 23:58:02 +0200
Message-Id: <0750BA89-01A1-4126-9BEF-2C6AC607A5BD@gmail.com>
References: <20200102092143.8971-1-wenyang@linux.alibaba.com>
To: Wen Yang <wenyang@linux.alibaba.com>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] [PATCH] sch_cake: avoid possible divide by zero in
 cake_enqueue()
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 cake@lists.bufferbloat.net,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
 Cong Wang <xiyou.wangcong@gmail.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAyIEphbiwgMjAyMCwgYXQgMTE6MjEgYW0sIFdlbiBZYW5nIDx3ZW55YW5nQGxpbnV4LmFs
aWJhYmEuY29tPiB3cm90ZToKPiAKPiBUaGUgdmFyaWFibGVzICd3aW5kb3dfaW50ZXJ2YWwnIGlz
IHU2NCBhbmQgZG9fZGl2KCkKPiB0cnVuY2F0ZXMgaXQgdG8gMzIgYml0cywgd2hpY2ggbWVhbnMg
aXQgY2FuIHRlc3QKPiBub24temVybyBhbmQgYmUgdHJ1bmNhdGVkIHRvIHplcm8gZm9yIGRpdmlz
aW9uLgo+IFRoZSB1bml0IG9mIHdpbmRvd19pbnRlcnZhbCBpcyBuYW5vc2Vjb25kcywKPiBzbyBp
dHMgbG93ZXIgMzItYml0IGlzIHJlbGF0aXZlbHkgZWFzeSB0byBleGNlZWQuCj4gRml4IHRoaXMg
aXNzdWUgYnkgdXNpbmcgZGl2NjRfdTY0KCkgaW5zdGVhZC4KClRoYXQgbWlnaHQgYWN0dWFsbHkg
ZXhwbGFpbiBhIGZldyB0aGluZ3MuICBJIGFwcHJvdmUuCgpIb25lc3RseSB0aGUgKmNvcnJlY3Qq
IGZpeCBpcyBmb3IgdGhlIGNvbXBpbGVyIHRvIGltcGxlbWVudCBkaXZpc2lvbiBpbiBhIHdheSB0
aGF0IGRvZXNuJ3QgcmVxdWlyZSBzdWJzdGl0dXRpbmcgaXQgd2l0aCBmdW5jdGlvbiBjYWxscy4g
IEFzIHRoaXMgc2hvd3MsIGl0J3MgZXJyb3ItcHJvbmUgdG8gZG8gdGhpcyBtYW51YWxseS4KCiAt
IEpvbmF0aGFuIE1vcnRvbgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRw
czovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

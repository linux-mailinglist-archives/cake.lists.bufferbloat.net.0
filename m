Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B68E07406A1
	for <lists+cake@lfdr.de>; Wed, 28 Jun 2023 00:49:39 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3A8B43CB40;
	Tue, 27 Jun 2023 18:49:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1687906177;
	bh=YUNrLCgbFr6pxzwNRFjNKIM4d0X7VTpbwagOHk3thPs=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Lm3UNDAMh/IyzQvMGBRPSl8aEL/QwYDuzjZJiQpNVrBVOdOzJaFuQ7su7TtjWH3Aw
	 smM2vpFHpcNVpUERB3RkzMIYK9upDPLaQRHkxIIofL67ngSGzXra7B7z+fHNLSXn4V
	 3iCfxyFbsmkqWu+DjG/xboEW2MKf7myP4vio1xVJeg0T2a0m+clIMPiCfbYZKT1WcQ
	 Vu/7wOeEb4r2STCor/IYfPuk7iYJGCUrRXYe2RuNvtB6ng+AFqeadWO6At8XWpHV3a
	 aRpqz9xlUsaXLQ6iLYia+wFa6RVQruDb4SChJT8oChVXXCKG98WqFxCHi9M9DdQi3S
	 SwyObc2kiWUMg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 366013CB37
 for <cake@lists.bufferbloat.net>; Tue, 27 Jun 2023 18:49:35 -0400 (EDT)
Received: by mail-pf1-x431.google.com with SMTP id
 d2e1a72fcca58-666e6541c98so4988213b3a.2
 for <cake@lists.bufferbloat.net>; Tue, 27 Jun 2023 15:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20221208.gappssmtp.com; s=20221208; t=1687906174;
 x=1690498174; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=txroIoCJoQGZK9EMfTYT/FKNmH/RRQ18NER9DK2j24o=;
 b=AByW+PcVmry0oyCUHLgZin3eccCuLNSB74iRZCGpZXmGlHrGwnjIRSkACMUHFkgnp6
 hHmOwpJPVG8zh/+Wt7NyRkWvhPmE5LPAhCGJuDxof9Xlz3LfvJnhrTXODlBmbAN0hq+m
 8q2ohJ5UzBf+/eUIFvu2f/++hOba22YO10FOWOqKbfJejlMTB49SEI3+C8joCyah1D5H
 XBkCbVk8qPWnK+i7is6LeV77r3QeIiFRpcusUVMIlmNyJFxadp/2312WCKuDa+rP+o+/
 AavpA+zYN2qL8ya6S0aGfOUw5bM1dt6LUGwb5cwhULFf057z+31oRUqVKkjuB5t0Xnlz
 vIqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687906174; x=1690498174;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=txroIoCJoQGZK9EMfTYT/FKNmH/RRQ18NER9DK2j24o=;
 b=UbyZHf+wGaMp5AhVq8Bxmlkuy8HXsAFVL8RDJRA/OL3BGWICwzZq8zva822inbns4X
 kya9IeEjVBqrczszfzVavx+ZadetnvMMIWVF1uGHOiTmonotZsmY2sUmYhktTMO9dBk1
 59v/U4xpB6nKxtEIaalslBnGgRgfVltHFe8CHkHb85+yt/+DisIGREGByMMULgKiw8Mr
 C7wvCsKgMrekCIBxtcKcJQcuXk8kUK0ly3yDPrlUwNfQPx+qzIK13yyoz0cZDEhMpGV9
 gy2mAVuPIFqkrKo9Ag6I5WQqIIyBxXkk6Q3HwuMM4rhZ6B2tmh8h3ZL4iRpf0Q4LYR89
 LVHw==
X-Gm-Message-State: AC+VfDzhElasXDFuwVBtoY5hTJIjqtqHbaNemOXRWu+y5CeinHPjvuI0
 HOf9ls6AaB3AVZIAookCEbWEXyC1CclSe5fh4lTMfg==
X-Google-Smtp-Source: ACHHUZ5PW+Tib6d8XJAcGgQfykNankiXDiaKW3DCVXWRkkZNSfw5t73EfN/ZA7RmggaFGEXGDUD/eA==
X-Received: by 2002:a05:6a00:17a9:b0:67f:1d30:9e51 with SMTP id
 s41-20020a056a0017a900b0067f1d309e51mr2614415pfg.33.1687906174118; 
 Tue, 27 Jun 2023 15:49:34 -0700 (PDT)
Received: from hermes.local (204-195-120-218.wavecable.com. [204.195.120.218])
 by smtp.gmail.com with ESMTPSA id
 p15-20020a63e64f000000b0051b0e564963sm6353549pgj.49.2023.06.27.15.49.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Jun 2023 15:49:33 -0700 (PDT)
Date: Tue, 27 Jun 2023 15:49:31 -0700
To: David Lang <david@lang.hm>
Message-ID: <20230627154931.71aff7ca@hermes.local>
In-Reply-To: <4np8q9q1-on99-rn94-5s1p-55643oo11037@ynat.uz>
References: <1687837319.447910185@mobile.rackspace.com>
 <4np8q9q1-on99-rn94-5s1p-55643oo11037@ynat.uz>
MIME-Version: 1.0
Subject: Re: [Cake] [Bloat] Two questions re high speed congestion
 management anddatagram protocols
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
From: Stephen Hemminger via Cake <cake@lists.bufferbloat.net>
Reply-To: Stephen Hemminger <stephen@networkplumber.org>
Cc: cake@lists.bufferbloat.net, bloat@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVHVlLCAyNyBKdW4gMjAyMyAxMjo0NzowMSAtMDcwMCAoUERUKQpEYXZpZCBMYW5nIDxkYXZp
ZEBsYW5nLmhtPiB3cm90ZToKCj4gT24gTW9uLCAyNiBKdW4gMjAyMywgRGF2aWQgUC4gUmVlZCB2
aWEgQmxvYXQgd3JvdGU6Cj4gCj4gPiBTb3JyeSBmb3IgdG9wIHBvc3RpbmcsIGJ1dCAuLi4gQmln
Z2VyIHF1ZXN0aW9uOgo+ID4gV2h5IHdvdWxkIERDQ1AgYmUgZGVwcmVjYXRlZCBieSBMaW51eCBr
ZXJuZWw/Cj4gPiBXaG8gbWFrZXMgdGhhdCBkZWNpc2lvbj8gV2hvIGFyZ3VlcyBhZ2FpbnN0IGl0
PyAgCj4gCj4gTGludXMgb3IgdGhlIG5ldHdvcmtpbmcgbWFpbnRhbmVycyBtYWtlIHRoZSBkZWNp
c2lvbi4KPiAKPiBVc3VhbGx5IHRoaW5ncyBnZXQgcHVsbGVkIGZyb20gdGhlIGtlcm5lbCBiZWNh
dXNlIHRoZXJlIGFyZSB1cGRhdGVzIHRoYXQgbmVlZCB0byAKPiBiZSBtYWRlIHRvIHRoZSBjb2Rl
ICh0byBtYXRjaCBjaGFuZ2VzIGVsc2V3aGVyZSBpbiB0aGUga2VybmVsIG9yIGJlY2F1c2Ugb2Yg
Cj4gc2VjdXJpdHkgaXNzdWVzKSBhbmQgdGhlcmUgaXNuJ3QgYSBtYWludGFpbmVyIHdobyB3b3Jr
cyBvbiB0aGUgY29kZSBpbiBhIAo+IHJlc29uYWJsZSB0aW1lLiBUaGlzIG1lYW5zIHRoYXQgdGhl
IG1haW50YWluZXJzIGZvciB0aGUgZ2VuZXJhbCBjb2RlIGFyZWEgKGluIAo+IHRoaXMgY2FzZSBu
ZXR3b3JraW5nIG1haW50YWluZXJzKSB3aWxsIG5lZWQgdG8gZG8gZXh0cmEgd29yayBpbiBhbiBh
cmVhIHRoZXkgCj4gYXJlbid0IHRoYXQgaW50ZXJlc3RlZCBpbiAoYW5kLCBlc3BlY2lhbGx5IGlu
IHRoZSBjYXNlIG9mIGhhcmR3YXJlLCBtYXkgbm90IGhhdmUgCj4gdGhlIGFiaWxpdHkgdG8gdGVz
dCkuIFRoZXkgZG8gc29tZSBvZiBpdCwgZXNwZWNpYWxseSBpZiBpdCdzIGNvbW1vbmx5IHVzZWQs
IGJ1dCAKPiBldmVudHVhbGx5IGVpdGhlciBhbm90aGVyIG1haW50YWluZXIgc3RlcHMgdXAsIG9y
IGl0IGdvZXMgYXdheQo+IAo+IERhdmlkIExhbmcKClNlZSBodHRwczovL3BhdGNod29yay5rZXJu
ZWwub3JnL3Byb2plY3QvbmV0ZGV2YnBmL3BhdGNoLzIwMjMwNjE0MTk0NzA1LjkwNjczLTMta3Vu
aXl1QGFtYXpvbi5jb20vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

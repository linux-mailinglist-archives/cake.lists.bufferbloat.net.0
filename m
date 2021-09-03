Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD04400274
	for <lists+cake@lfdr.de>; Fri,  3 Sep 2021 17:38:27 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D72F33CB41;
	Fri,  3 Sep 2021 11:38:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1630683505;
	bh=IO9wrYptqL+je5gLHQHtcMIVJBgS8yhZ8vyYHxfnhu8=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fVMZmv61Yc5dmjkk1v/+HW+aJ4d7kze1N+NNeTVeg+tcXda18ak/Qt0jAm4EzR0z3
	 F0ApLVc0fNiniEbBLx1CkaeuPWEZu8Z7+g8uG8mChACeNF5HbSrkqeN+FBoTSin0GW
	 CI5IqpgScyY+hMbwxHxLY/N82q22WXFVidbjLsA3+OFqMGoGn7HK5MBiJwMgpkynxf
	 UIE87HURouTdkh9ssPsNqAhILTIuG+I5XskOUry7eZEcXkW+Jqtrduxwe/i8ibqpvX
	 neBuPWyNDBCRZ+chAk8jlJ5ULvQtP0q16JDyHX+vmLcPIRbl09HQe0PKPEj6lP4GuX
	 PRzbKHX7PuNNA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 40B193B29E
 for <cake@lists.bufferbloat.net>; Fri,  3 Sep 2021 11:38:24 -0400 (EDT)
Received: by mail-lf1-x136.google.com with SMTP id f18so12498933lfk.12
 for <cake@lists.bufferbloat.net>; Fri, 03 Sep 2021 08:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=bzqPZmxT395QOJFQiwSb6IbqIGaBIwr/8xCH6sqNK7M=;
 b=mp9DoctFFAltv5PX55MY+K5kNygHrD1lJpIjKHaVTC5BMubtTqu4wFfYed168MHlNX
 PNJO7n5lCE+0TZwdyg63DdI6bAWJagfmW4chkpLaOW2D3Wun7LpTi5k4NHZ7rMlGIjdB
 5mVV0f3FWd7DSs+vvK33O06Ix0OYMz5yxHNlq4+uVZgwUv3s8Yce9BMcYV6oOjBHIm7Y
 U5OKYYD9nEFzh8bFrbXa8QcP/NBUylTDKBEjtn0lBYguEuzwALmtyMvRWRcX76IZF0fK
 Sc0RHsSsis9zQPhwgYETfTU5ewprtUqc0pKnT5d3Ju/+jVvgWibh6nb4cWmxYS32QB2k
 mxIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=bzqPZmxT395QOJFQiwSb6IbqIGaBIwr/8xCH6sqNK7M=;
 b=iellbeY9kZleb51vFXYySxxJUqDHxqol8qyWFNQ2vsJtLWlvnSpqFBGrx0eLzRWqgY
 fE+c4G6lUkC8H/SvL3mIff6wL63zOtyBleryQqeCsbFqJD6Q7JIummyyVN3BaqJGF4sn
 udXhImv0121DowLAm+cpIQftKvkL9w0bRL4c+fN+KXQQCumjwvthAfDztq4omEL/0+vU
 zF1tESorvxl/oQ6nfUbVnMS8i2G/lSVR+LPCIuzp84PjVs3BxGqqQoH9o9xyxEy0BcgX
 C+d2A/mnIw8kh3Ww9hv/ws3FLIm1CWa1Ckns7tVOPhHZ33nEQ/fgOoSyfK3GTqm1yMOi
 LZuA==
X-Gm-Message-State: AOAM533iGpg/eOFDuA9JhPluiN4ZB4sRPo3b4JjzkXFwiHUDZSzzcAty
 5OXWtscXlXzAJikeQIma7uA=
X-Google-Smtp-Source: ABdhPJyiumPZl4oH00opXlULXrCDx27as52rm4kSdLMrUx3hWhW4S6Wi/hRoJ6DisvQmSiONNxpZsg==
X-Received: by 2002:a19:7406:: with SMTP id v6mr828606lfe.669.1630683502924;
 Fri, 03 Sep 2021 08:38:22 -0700 (PDT)
Received: from smtpclient.apple (178-55-70-16.bb.dnainternet.fi.
 [178.55.70.16])
 by smtp.gmail.com with ESMTPSA id i6sm584436lja.112.2021.09.03.08.38.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 Sep 2021 08:38:22 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <CAA93jw7ArNURJ0HyiD-PFXF6LFGWjtxWbe1F30z4MVGSksuZSw@mail.gmail.com>
Date: Fri, 3 Sep 2021 18:38:19 +0300
Message-Id: <448DD4B4-2CBB-40DD-B947-4DCAA7446437@gmail.com>
References: <20210903135710.GH3638@sv.lnf.it>
 <CAA93jw7ArNURJ0HyiD-PFXF6LFGWjtxWbe1F30z4MVGSksuZSw@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Subject: Re: [Cake] Cake: how know 'framing compensation'?
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
Cc: Cake List <cake@lists.bufferbloat.net>, Marco Gaiarin <gaio@sv.lnf.it>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAzIFNlcCwgMjAyMSwgYXQgNjoxNiBwbSwgRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwu
Y29tPiB3cm90ZToKPiAKPiB0aGUgY2FrZSBtYWlsaW5nIGxpc3QgY29udGFpbnMgYW5zd2VycyB0
byB5b3VyIHF1ZXN0aW9ucy4KPiAKPiBPbiBGcmksIFNlcCAzLCAyMDIxIGF0IDc6MDUgQU0gTWFy
Y28gR2FpYXJpbiA8Z2Fpb0Bzdi5sbmYuaXQ+IHdyb3RlOgo+PiAKPj4gCj4+IEknbSB0aGlua2lu
ZyBhYm91dCBnaXZlIENha2UgYSB0cnk6Cj4+IAo+PiAgICAgICAgaHR0cHM6Ly93d3cuYnVmZmVy
YmxvYXQubmV0L3Byb2plY3RzL2NvZGVsL3dpa2kvQ2FrZS8KPj4gCj4+IAo+PiBIb3cgY2FuIGkg
ZGV0ZXJtaW5lIG15ICdmcmFtaW5nIGNvbXBlbnNhdGlvbic/IEknbSB1c2luZyBub3cgYW4KPj4g
d2lyZWxlc3MgbGluaywgdGVybWluYXRpbmcgdGhlIFBQUG9FIGxpbmsgZGlyZWN0bHkgb24gbXkg
bGludXggcm91dGVyLAo+PiB2aWEgUFBQRC9QUFBPRS4KPj4gCj4+IFNvLCBpJ20gc3VyZWx5IHVz
aW5nIFBQUG9FLCBidXQgcHBwb2UtdmNtdXggb3IgcHBwb2UtbGxjc25hcD8gSG93Cj4+IGRldGVy
bWluZSBpdD8KCkluIGdlbmVyYWwsIHlvdSBuZWVkIHRvIHNldCB0aGUgZnJhbWluZyBjb21wZW5z
YXRpb24gYWNjb3JkaW5nIHRvIHRoZSBib3R0bGVuZWNrIGxpbmsuICBJZiB5b3VyIHdpcmVsZXNz
IGxpbmsgaXMgdHlwaWNhbGx5IGZhc3RlciB0aGFuIHlvdXIgQURTTCBsaW5lLCB0aGVuIHRoZSBB
RFNMIGlzIHRoZSByaWdodCBmb2N1cy4KClRoaXMgaXMgcHJvYmFibHkgaGVscGZ1bCB0byBtb3N0
IEFEU0wgdXNlcnMgaW4gZmlndXJpbmcgb3V0IHRoZWlyIGZyYW1pbmcgdHlwZToKCglodHRwczov
L3d3dy5yb3V0ZXJ0ZWNoLm9yZy9ndWlkZXMvaW5mby9zZXR0aW5ncy1ieS1jb3VudHJ5LwoKIC0g
Sm9uYXRoYW4gTW9ydG9uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

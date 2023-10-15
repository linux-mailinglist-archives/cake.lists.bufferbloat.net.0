Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BD17C9BA3
	for <lists+cake@lfdr.de>; Sun, 15 Oct 2023 22:55:38 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id BFCDB3CB46;
	Sun, 15 Oct 2023 16:55:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1697403336;
	bh=FKeDvYhjvrNbGfOtbob8lZ46ocge3BYAP8p/KcNLJ9E=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=Yx8Tod643UXrCwW4FMCbDBWCOPAgGSkwZYmqMLF80JXTtbgJlEtuiT1dECgo3cxv/
	 GbN6AIZxPWDYtgV840p3ijeNQ2RJL3BP9t6KW8jMD0SAblbNCWVRvT+QEOfCqC2mrW
	 HKCQmOCjOrz1Vdphs5zaCjP8WkjxiPHDF6gQmC7VfiWRfYazh3ZjxEVr8jpd1fcruK
	 RqByh44NfGXMQ1a8KpmbHpC9hmzqi365saHRPEQuEvnyiDjGpWqq7RYyFjjkngd+Sz
	 oUGbIBTQ9b2OMpALslMxYEDF/tJXzyIYTCO5eHIMgqNuPKYlaO5JBhDfRnDBf5v4UU
	 QGSTP/d2t0nyA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com
 [IPv6:2607:f8b0:4864:20::236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D5FD03CB39;
 Sun, 15 Oct 2023 16:55:35 -0400 (EDT)
Received: by mail-oi1-x236.google.com with SMTP id
 5614622812f47-3b2b1ae4c21so1665834b6e.0; 
 Sun, 15 Oct 2023 13:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697403334; x=1698008134; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fOJ86j8ul/Nhydy8iNwevAN3Dli1uc+AtcG8sjxabqw=;
 b=X3udiUvLaV5+uWK8OvtHI+zv0Gz6bE2Iy/wZ1kl8/154xG+kSzu/HI4/poqR/49/u7
 eUFIpUT23FAQOmzxU1cMZ3zUmASSTsrtJu/mRMTvVTMNNxJSouo/kirRygkBZc9hXnsC
 1rnhSvaxsoGAyDGxZWTGuE2QXlqpdpL8TlFJRPB2vLoxljdPhzvRDdpx2VWOSWfWbeiQ
 F5EgKGzQXWqWxnrAWM6GNqFJJnF2AstjxTyokKIRnk6nIi3WkhVTHLDJd2TzF/Q385mQ
 t1G31jT7Ebt2vMmj3Q6pGJ06kRBknHfRuBLsYxoQtraVEHAjcwWd0gt63pDZdrMwAt3X
 eHFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697403334; x=1698008134;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=fOJ86j8ul/Nhydy8iNwevAN3Dli1uc+AtcG8sjxabqw=;
 b=I0tI4LFD/WXMu/p7RR6C6bUT688YowsiEGpEkwVfe1H46PLxGsfvLo1Uv26fIGP1Dp
 8hercp7lzXFXyUkhfbrhGEvsic5hPuDpO7XiW8X3xHw9DQJp9sP7n79/TPNLnZOGjBMB
 kzAzpuAWc4ueHOyInoiJnuVquktgdzqu7HSR2n9yv5ycemWKcrQfUxZoLMWTap4/ext+
 6xK9lBe1lZAwsJdzyic1tkrgJHU7GToW9n+a9OzzCyNd08mTu3PW5S7Cjq/e7J3Z6mPv
 IkpWH0MjURiM0ngil8aMRChtaemk4dhEksice7OxasGpVmMNdNiEkndHNuZH4qMw+7NN
 KfBQ==
X-Gm-Message-State: AOJu0Yy8mK0zexRgm1hEaVGN9yrc9HXDsNMoU3qOa8wP3WwoD50vJbbX
 uS2CyxCkVGnnvgF4/KgZGNHzN0cczJa8HxCI+jVuzgYX
X-Google-Smtp-Source: AGHT+IHHAmS2UoCfUWCohQN0ENPEmSMhwdyKeIjDG1qVZ7mkGwED/+e0rPCAz3n8QFHayN32dbdhKAgW5Pz/5mBIZD8=
X-Received: by 2002:a05:6808:1786:b0:3ad:fcd5:3dd6 with SMTP id
 bg6-20020a056808178600b003adfcd53dd6mr45588453oib.13.1697403334625; Sun, 15
 Oct 2023 13:55:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAAGqNkkK7bNpS+zWdJXNAtwTuFyW=on63V__5iANwFXd4ib4aA@mail.gmail.com>
In-Reply-To: <CAAGqNkkK7bNpS+zWdJXNAtwTuFyW=on63V__5iANwFXd4ib4aA@mail.gmail.com>
Date: Sun, 15 Oct 2023 13:55:21 -0700
Message-ID: <CAA93jw62aiwYdnFv-k-xkoTk=qwTy0SMiDj18y3kkVSQ-Fpcww@mail.gmail.com>
To: cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Fwd: [NetDev-People] Cambium cnPilot 190W: New life for old
 hardware, improving reliability & performance with OpenWrt, fq_codel & cake
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

RnJvbSBld2FzdGUgdG8gc29tZXRoaW5nIGdyZWF0LgoKLS0tLS0tLS0tLSBGb3J3YXJkZWQgbWVz
c2FnZSAtLS0tLS0tLS0KRnJvbTogSWduYWNpbyBPY2FtcG8gdmlhIHBlb3BsZSA8cGVvcGxlQG5l
dGRldmNvbmYuaW5mbz4KRGF0ZTogU3VuLCBPY3QgMTUsIDIwMjMgYXQgMTo0N+KAr1BNClN1Ympl
Y3Q6IFtOZXREZXYtUGVvcGxlXSBDYW1iaXVtIGNuUGlsb3QgMTkwVzogTmV3IGxpZmUgZm9yIG9s
ZApoYXJkd2FyZSwgaW1wcm92aW5nIHJlbGlhYmlsaXR5ICYgcGVyZm9ybWFuY2Ugd2l0aCBPcGVu
V3J0LCBmcV9jb2RlbCAmCmNha2UKVG86IDxwZW9wbGVAbmV0ZGV2Y29uZi5pbmZvPgpDYzogSWdu
YWNpbyBPY2FtcG8gPG5hZml1eEBnbWFpbC5jb20+CgoKSGkgdGhlcmUsIEknbSBuZXcgb24gdGhp
cyBkaXN0cmlidXRpb24gbGlzdC4gQnV0IHdhbnRlZCB0byBzaGFyZSB0aGlzCmFydGljbGUgSSBw
b3N0IGFib3V0IGltcHJvdmluZyB0aGUgcmVsaWFiaWxpdHkgYW5kIHBlcmZvcm1hbmNlIG9mIG9s
ZApoYXJkd2FyZSB3aXRoIG5ldyBzb2Z0d2FyZS4gSXQgaGFzIHRvIGRvIHdpdGggTGludXggS2Vy
bmVsLCBGUV9Db2RlbAphbmQgQ2FrZSwgYW5kIGJ1aWxkaW5nIGFuIE9wZW5XcnQgaW1hZ2UuCgpo
dHRwczovL2Jsb2cubmFmaXV4LmNvbS9wb3N0cy9jbnBpbG90X3IxOTB3X29wZW53cnRfYnVmZmVy
YmxvYXRfZnFjb2RlbF9jYWtlLwoKLS0gCklnbmFjaW8gT2NhbXBvCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpwZW9wbGUgbWFpbGluZyBsaXN0IC0tIHBl
b3BsZUBuZXRkZXZjb25mLmluZm8KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBwZW9w
bGUtbGVhdmVAbmV0ZGV2Y29uZi5pbmZvCgoKLS0gCk9jdCAzMDogaHR0cHM6Ly9uZXRkZXZjb25m
LmluZm8vMHgxNy9uZXdzL3RoZS1tYWVzdHJvLWFuZC10aGUtbXVzaWMtYm9mLmh0bWwKRGF2ZSBU
w6RodCBDU08sIExpYnJlUW9zCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0
dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

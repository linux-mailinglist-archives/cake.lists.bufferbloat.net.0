Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D8E74E194
	for <lists+cake@lfdr.de>; Tue, 11 Jul 2023 00:55:12 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 20F603CB40;
	Mon, 10 Jul 2023 18:55:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1689029711;
	bh=61rejPfHjZw7AN6mU+VS6yECuJqxxclf1p6puEIkEYw=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=eWOSkWr7FLM2nDOJ83j5STXc/E3Y7Og1QumqKnqAiiqR7rLya7XKh/J47Wp9OGemo
	 1z7u0xUiGlwtip+/OtsX0xzxoAWywW4YqMXeu4hwhQs+XXOkH7rletnXQUkHz+9Qg7
	 0UsRSIqeWh3BKB8mCcE+cwUAZJSdkg+6oaajn1fDyheQLYKexQbkZ/MVQ9w9SWnyZn
	 zMe4jxST0JM/8CsvwsIrtdGqdhedTKa8W3/nrSJ8DseY8iTc/gGoX0jllL0mqLTc+6
	 a3Vfn/bLASzLuwW2JlAwWeGrhax3XIBJTK3C3cu+OLBmemTUw7eO/RQG3JMpXkjKik
	 heEUqq6hYML5Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9FF533B29E
 for <cake@lists.bufferbloat.net>; Mon, 10 Jul 2023 18:55:09 -0400 (EDT)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-1b8a44ee159so24841515ad.3
 for <cake@lists.bufferbloat.net>; Mon, 10 Jul 2023 15:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20221208.gappssmtp.com; s=20221208; t=1689029708;
 x=1691621708; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vJ2EwK56KiG4MzV1lLMhtPvhOeSphEZ2sRY7Klh/+rw=;
 b=hVfBbNq9rsxwWwJIMSA+406blJIxUZAll0kPrF4jB6FVieeg5bTjmhVOTDVm284r1S
 mMymHpZxEtAbnZZPp/WrtQ9rgV8US65bsf/qvxfWKnthd/vrmfiqgu1MxLloNZ3gxfaw
 Gp8gISMUqJ9jIuvLQvxhkgXPHNsgg4V36ANf7T8cNVwc/lyQ9tdoSXNY99SNSM0wPpm1
 +SwLHljp2NC4XOp1gxWYaFNhAebfo1YOUr5dToKRiluWQwoxF8zZ/XzUTn02/1Zez/1a
 FoIO3lMc7TyzxyeGO6eCVC+GtGfD4Yy1TrtQ/RNRoKNvI6Ml7YkhQPH6snvZ183MPik/
 NT6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689029708; x=1691621708;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=vJ2EwK56KiG4MzV1lLMhtPvhOeSphEZ2sRY7Klh/+rw=;
 b=Xmn+TSB8y978RbLTXar17KJ4frOrIxU441JrxaouNU9GDPvKfMISWv2/62/vUzuLHR
 Hu5LvADcI9J4VG4VVp7WcBT9EYXaIckX9YTmKRouaISRfxYxY/I6F0LGGr8n/HDs7aSt
 YdsYjl5aGFGKg3dFWyU3IkFmPZ+nkGGro1OkH0aoZiwkJvUQp3bCc9TramLrAaNdVygS
 r9AeZvA6k+G+hwIcO+7VppfYpi0qqPuH2xowl/6MKgIIQy+kLHvN9VBYRMqJdshm4qai
 ICECeI/fF2kA1wsqIEF8ty12yMUJya9VtcWX75aapHktXFFBVLbRKkoba5jyr0yHxVx0
 Sllg==
X-Gm-Message-State: ABy/qLYt1pSaZqXxC2ZMUtzwD5cec+DKJ7eEpbT1tvlnxyvp+p6Vm+Bo
 jOcod+k7opJPVlsQhPTBFOfujw==
X-Google-Smtp-Source: APBJJlE/TPIgPCnT6w2RPLd8hqFY4fxfaqGJpJVqxfh4b0nu2p4xKyILHlHltC4Z1cM2Zxa0B1n5LQ==
X-Received: by 2002:a17:902:6b0c:b0:1b8:7e55:7a4e with SMTP id
 o12-20020a1709026b0c00b001b87e557a4emr3818989plk.26.1689029708473; 
 Mon, 10 Jul 2023 15:55:08 -0700 (PDT)
Received: from hermes.local (204-195-120-218.wavecable.com. [204.195.120.218])
 by smtp.gmail.com with ESMTPSA id
 t8-20020a1709028c8800b001b8a3a0c928sm393570plo.181.2023.07.10.15.55.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Jul 2023 15:55:08 -0700 (PDT)
Date: Mon, 10 Jul 2023 15:55:06 -0700
To: Sebastian Moeller <moeller0@gmx.de>
Message-ID: <20230710155506.4b3bb671@hermes.local>
In-Reply-To: <A0010D20-BCC6-41EC-9517-685012F042EE@gmx.de>
References: <1687962752.39077378@mobile.rackspace.com>
 <20230710133540.1cbe20bd@hermes.local>
 <A0010D20-BCC6-41EC-9517-685012F042EE@gmx.de>
MIME-Version: 1.0
Subject: Re: [Cake] [Bloat] Two questions re high speed congestionmanagement
 anddatagram protocols
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
Cc: Dave Taht via Cake <cake@lists.bufferbloat.net>,
 Stephen Hemminger via Bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gTW9uLCAxMCBKdWwgMjAyMyAyMzoyNzo0NiArMDIwMApTZWJhc3RpYW4gTW9lbGxlciA8bW9l
bGxlcjBAZ214LmRlPiB3cm90ZToKCj4gRm9yIHdoYXQgaXQgaXMgd29ydGgsIHRoZSB0c3Ygd29y
a2luZyBncm91cCBpcyBjb25zaWRlcmluZyB3aGV0aGVyIHRvIHByb2Nlc3MgbXAtZGNjcCBvbiB0
aGUgc3RhbmRhcmRzIHRyYWNrLCBidXQgdGhlbiB0aGUgSUVURiBzZWVtcyBub3QgdG8gY2FyZSB0
b28gZGVlcGx5IGFib3V0IG9wZW4tc291cmNlIGxpY2VuY2UgY29tcGxpYW5jZS4gT3IgcmVjZW50
IGtlcm5lbCBpbXBsZW1lbnRhdGlvbnMgb3IgaW1wbGVtZW50YXRpb25zIHRoYXQgaGF2ZSBhIHJl
YWxpc3RpYyBwYXRoIHRvd2FyZHMgbWFpbmxpbmUgaW5jbHVzaW9uLi4uIGJ1dCBJIGRpZ3Jlc3Mu
CgpUaGUgaXNzdWUgaXMgdGhlIE1QLURDQ1AgaW1wbGVtZW50YXRpb24gaXMgZGVyaXZlZCBmcm9t
IHRoZSBleGlzdGluZyBrZXJuZWwgRENDUCB3aGljaCBpcyBHUEwtdjIuCllvdSBjYW4ndCBnbyBy
YW5kb21seSBtaXhpbmcgcHJvcHJpZXRhcnkgY29kZSBhbmQgR1BMIGNvZGUgaW4gdGhlIGtlcm5l
bC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBt
YWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZm
ZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

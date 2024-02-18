Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0A88593B0
	for <lists+cake@lfdr.de>; Sun, 18 Feb 2024 01:31:50 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9E9533CB40;
	Sat, 17 Feb 2024 19:31:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1708216309;
	bh=xqU8YNQLWQNE1UeQ7hXnysad5ll6VA7vpX+EBu3gqDw=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=XdFH915aEi1pos9sm+5i8cwjcx8VaWh6dwd7AMwgKk234xD+HJMA5LVnNikdJSGVH
	 L+GF1lL/UIAbg7sY8w83jLD/dH/1LIAvkVtHs60eI4dxjrYWEKRqc1FxqQF+UsRyGb
	 9NyEX9O2SlhX418qlvjiQHpcAegaKZ5lS1EWGEQ/U56m2XA5PcdSjIDgmkA51LbT/I
	 Sh9OHtf98ZgGP7nCaeH23ulFKtiTtg9TxkVm18LZ/gIcP6qwPvOs2wT454pklZXiT1
	 yHMtWZlCQnA7HoN0lZugAXbCc8LBFGPia0yftna5qnZNt6macY1ThKuhNDO0SqgAbT
	 5mw3HVxSBBXPA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 468583B2A4
 for <cake@lists.bufferbloat.net>; Sat, 17 Feb 2024 19:31:48 -0500 (EST)
Received: by mail-lj1-x236.google.com with SMTP id
 38308e7fff4ca-2d180d6bd32so26378061fa.1
 for <cake@lists.bufferbloat.net>; Sat, 17 Feb 2024 16:31:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708216306; x=1708821106; darn=lists.bufferbloat.net;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=EwxwTPqPMH2W73CVDOngrWiHmg/32q4WOTbHiVu4/+A=;
 b=bO8hXPPNbnmcXmDsgY4gXmlAfHCv1SKjwSPSTtjQInDHOWiDjfYR2RtVDkhkNRY0wC
 J93z9oi7A16Yh9o4WNaLFmPElsIZdhr7rfx7DX/2W/r/VDchumTFOmOBAQWDAnAz+MuY
 UcMSnVy51D0Q2hJi7bfGl+xM49mDMAZ1Ic4VxoBHoKVhuTu9cDinH+DFZn3oa2HLohBp
 wUH3i8BQdgIQSuOi1jY4O6/+ejbak1SRt/U+yZdffAOuE1/97Q8pdinzGqGpuB/l6Ce6
 aNDs1dKv7JhZQO+Y+WIohx6KEYycgAbZ66qvjqU16EQLmSV7h/4P1yio0XwJGf7muYSC
 K5rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708216306; x=1708821106;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=EwxwTPqPMH2W73CVDOngrWiHmg/32q4WOTbHiVu4/+A=;
 b=paj3giLbn0twpzhRqFKEEA60Kzk2bO5QMro+SQOzB/eS7911IhxxpKQLrqOFC5hoTV
 vB2iV5y1Al/GQ33lSFMgTfQ85V58aoKcYq+Bm2eeB1pmxP+2oD1a1+VZkR6hGTAhZptG
 vRETIWI7P9+xeea/mmH8n1Qoy0+66zg/DWBZ+ikHAzIBYunuP9tMMD6dEQvRvss5sWP1
 Eem9V3K/kC5UQfkojle3hDBPzSoyLw12IC+ynfHfQ61QUnmdUDK9jnA+6Op8jd4MBobs
 l1O+adPsuoAuxle8fxGdcagCHfQT+IM2PKwptLvBnjft0OLLcnRdhjmK7jlm9qzQIgsc
 mPbQ==
X-Gm-Message-State: AOJu0YxWY+/vmVQyNJAsFi6/4/hvTB3e3PLxD1ZkKHX0EKuaIsMBQ5aH
 9VoBVIeUGclys8uZliBvzs2fSwz1QK7EYR+Ie80PPNGbp6H4yPi7
X-Google-Smtp-Source: AGHT+IFkKUEHRzjvmh+P+zJKRS4nzMAAAgG/Km+ZNCmIseqfDVP6VLWfuQboMzNi/q13l5behQvUxA==
X-Received: by 2002:a2e:87ce:0:b0:2d0:dfd7:28f4 with SMTP id
 v14-20020a2e87ce000000b002d0dfd728f4mr5395191ljj.41.1708216305809; 
 Sat, 17 Feb 2024 16:31:45 -0800 (PST)
Received: from smtpclient.apple (178-55-39-192.bb.dnainternet.fi.
 [178.55.39.192]) by smtp.gmail.com with ESMTPSA id
 n15-20020a2e720f000000b002cf55fddca7sm489029ljc.49.2024.02.17.16.31.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 17 Feb 2024 16:31:45 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
In-Reply-To: <CAA93jw7YeW4wTC2OL4AxeEPBOGL4sKN+e5Dtre_0VZCkOjkbCw@mail.gmail.com>
Date: Sun, 18 Feb 2024 02:31:44 +0200
Message-Id: <5E544857-711A-4284-9481-C1C711E43F56@gmail.com>
References: <CAA93jw7YeW4wTC2OL4AxeEPBOGL4sKN+e5Dtre_0VZCkOjkbCw@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
Subject: Re: [Cake] cake's ack-filter vs GSO
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
From: Jonathan Morton via Cake <cake@lists.bufferbloat.net>
Reply-To: Jonathan Morton <chromatix99@gmail.com>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAxOCBGZWIsIDIwMjQsIGF0IDI6MDEgYW0sIERhdmUgVGFodCB2aWEgQ2FrZSA8Y2FrZUBs
aXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+IAo+IERvZXMgYW55b25lIHJlbWVtYmVyIHdo
eSB3ZSBkbyBub3QgYWNrLWZpbHRlciBhIGdzby1zcGxpdD8KClRoYXQgbWF5IGFjdHVhbGx5IGJl
IHVuaW50ZW50aW9uYWwuICBUaGUgb3JpZ2luYWwgY29kZSBzZWxmLXJlY3Vyc2VkLCBJSVJDLCBz
byBpbmRpdmlkdWFsIHNlZ21lbnRzIHdvdWxkIHRoZW4gZ28gdGhyb3VnaCB0aGUgbm9uLWdzby1z
cGxpdCBwYXRoLiAgQXQgc29tZSBwb2ludCB3ZSBpbmxpbmVkIGl0IGZvciBlZmZpY2llbmN5LgoK
VGhlIHRoaW5nIHRvIHRyeSBtaWdodCBiZSB0byBjb3B5IHRoZSByZWxldmFudCBjb2RlIChib3Ro
IHRoZSBzZWFyY2ggYW5kIHRoZSBkcm9wKSBpbnRvIHRoZSBnc28tc3BsaXQgcGF0aCBhbmQgc2Vl
IGlmIGFueXRoaW5nIGJyZWFrcywgYW5kIGlmIHRoZSBhY2stZHJvcHBpbmcgc3RhdGlzdGljcyB0
ZW5kIHRvIGluY3JlYXNlLgoKIC0gSm9uYXRoYW4gTW9ydG9uCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nh
a2UK

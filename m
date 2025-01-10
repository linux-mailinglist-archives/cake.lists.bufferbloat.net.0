Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6F9A09BFF
	for <lists+cake@lfdr.de>; Fri, 10 Jan 2025 20:43:50 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 54C8B3CB39;
	Fri, 10 Jan 2025 14:43:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1736538229;
	bh=+gKEjK3tUg7eHvCKJs307O3hIZuL8xbEvS4ns5ARXmM=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=JbxWW5SCAlCwzDhoIY/uRw2wi0hBatMsLxgwJVQhS8oDxm1FW77IMS5LOniu25GWT
	 UGDYE8hitFVvLTBWm0KBcP+1H7zK41rm1vvXWw1C2bc6rV/ExaK3ePPv1IUyHmw8Rj
	 qqwqsqrQC+RwF2ZpDf40fHZ2oyFhcoEAlW1H5Kfvw1kuL9uGw6Vr6RhcRFLXQMPIZY
	 TGmXnJt0wDbTBBud+DLlL+qLnvXAFW/i7LiOSgYRVdDUtCubYlvc4WklNhuGSa7d4y
	 cQOIrjdAjGjY2FIwAU53r0dFMSHwoHyPtgptAA2NTXjPhToOLJF5ESNy6T8icEP8so
	 fanFTxr5Ht7ZA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com
 [IPv6:2001:4860:4864:20::32])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9D4E63B29E
 for <cake@lists.bufferbloat.net>; Fri, 10 Jan 2025 14:43:47 -0500 (EST)
Received: by mail-oa1-x32.google.com with SMTP id
 586e51a60fabf-29e70c9dc72so1234341fac.0
 for <cake@lists.bufferbloat.net>; Fri, 10 Jan 2025 11:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736538227; x=1737143027; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nXEq4/skBlunyYQ+4mCCmYu1uDlZRX8ESoiJQIzfdNE=;
 b=EU0DoENwnZSrzdE+LDDBdCnRk36QjMWSSPWcJmYh/wPSfLAdMuOZltpJPw4+rDvPZW
 LfkE2SfEyBMdjrQV5wepJF2WSqyKtRDBZn5KHS3UeDdGDRkc7cMdmFJZ48iEmgakwiQw
 ZV2sYrxKdEnzZiRmf8Jnhis8qtg2HZND80oCmgUrP9J6K5JH9YvhrETD5sC9d8CKZsM+
 drZfDwr4gZfpjvEiDgUF9gXSbGvVsVuvO5qOEdhXe7rsHWVfuEubk2X2nhpwETXRojLe
 zMGiEsxZlIDyE+wtTHQlvqpD67JURpqvXLxkCpcCgUDKS0de6+SwTNeSK91m/kQSipJx
 74cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736538227; x=1737143027;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nXEq4/skBlunyYQ+4mCCmYu1uDlZRX8ESoiJQIzfdNE=;
 b=U7OCb+xceV4H20uRiubemhhZq/eMfm8sCr63wxkJA27G7cD1DQGTctVlmo2DTQCgSP
 GDoENfvGrI8zi8T6rlfDxE4eWrVNNQLBJVjpPUB0R+OWroDl8nam0b+WVTwanmUpHzse
 zG43Cgq0/EltTqhwueo3nkjKwFAkLPG2N887PxSmXikhyJvtxZuSoFUubFMKFZVoFwLx
 DtgwA6sqXBscI/U7IxOknQqDwfFLBjdRFMtlVsBI/0k90/yWCl5USemVS6rb4vHW+dks
 njcTp80HT5bG4GkB89RoJxsD1sODpT5Tl35w7QknTjQWPxNgzh2SPRIKgRSyXYkaKUrg
 rcAQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWvGIVOuIiTNkw3P0MPoERi88dAfsbv8IGeNhCzlMIjtbuob18ScObbJg/QP1vvFNA7hCVF@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwfU7nIKMI5h3Lhk/ml8RoZvlQo14lEuFYIpvVqnitHcT332I+l
 PMJNzTc59wrg+t2G7o/P4L8HExJfQTjjJFXBNunUZRLcbCO9rhPO4xBt8algCZ7yzG9VcSpdr4M
 VvnzWokTVuSIdfJLcIK9m2TAbew0=
X-Gm-Gg: ASbGncuabmJ26Osva0PpvW83Zs2C0Ztaed9vc/yZtnd7PJemBI8gKGou2o8WNSRSDGU
 MAKW6cyQJfeX5e5bAhJe83wEtjKhQim0QXv5beDMubSzO6ys6uFsoojnSyCOhX42teHVAXFiz
X-Google-Smtp-Source: AGHT+IGH5ZgcT6Itq42IwlqvSz+iG/NjTrsXstroBy367TGycdVvWM3Cil7mS99Rn9oQOSmoMWyTuSyWoDp9GUL3+vI=
X-Received: by 2002:a05:6871:a0c8:b0:29e:4346:7fb9 with SMTP id
 586e51a60fabf-2aa0677967dmr5920671fac.22.1736538227061; Fri, 10 Jan 2025
 11:43:47 -0800 (PST)
MIME-Version: 1.0
References: <20250110155531.300303-1-toke@redhat.com>
 <2FE6B2E2-9A34-47C1-B203-F0C424F00704@gmx.de>
 <CAA93jw54GOfYP56XTh-jjjfAbybNDeYUgUENNA2+aSQbXpS91A@mail.gmail.com>
 <FAD46B40-2142-4254-BA44-C9AD9EEFB924@gmx.de>
 <CAA93jw4mj2RdtqdDT3ug5j8EZSsYujC1V_SjQEcjmCVCUZU+jw@mail.gmail.com>
 <898E9FB0-D92E-4421-8CCD-1B9F4A3D9D5D@gmail.com>
In-Reply-To: <898E9FB0-D92E-4421-8CCD-1B9F4A3D9D5D@gmail.com>
Date: Fri, 10 Jan 2025 11:43:33 -0800
X-Gm-Features: AbW1kvaJxwVDgL4pYSUkzi2js1PyPqy9s06zn9vHgGUP2lHfRfFgSWtzm4eXfe0
Message-ID: <CAA93jw7XUfR7Ww40nh5EZ8U8pMUezhSY6PFLoaGj+pGnzeYZbg@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
Subject: Re: [Cake] [PATCH net-next] sched: sch_cake: Align QoS treatment to
 Windows and Zoom
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
Cc: cake@lists.bufferbloat.net,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

b2ssIEkgY29uY2VkZSBvbiBOUUIuIERvIHdlIGF0IGxlYXN0IGhhdmUgYWdyZWVtZW50IHRoYXQg
Q1M1IGJlbG9uZ3MKaW4gdGhlIFZJIHF1ZXVlLCBub3QgdGhlIFZPIHF1ZXVlLCBvbiBkaWZmc2Vy
djQ/CgpPbiBGcmksIEphbiAxMCwgMjAyNSBhdCA5OjQz4oCvQU0gSm9uYXRoYW4gTW9ydG9uIDxj
aHJvbWF0aXg5OUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gPiBPbiAxMCBKYW4sIDIwMjUsIGF0IDc6
MDcgcG0sIERhdmUgVGFodCB2aWEgQ2FrZSA8Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdy
b3RlOgo+ID4KPiA+IEkgZG8gbm90IHRoaW5rIE5RQiBiZWxvbmdzIGluIFZvaWNlICh3aGljaCBz
aGFyZXMgcHJpb3JpdHkgd2l0aAo+ID4gbmV0Y29udHJvbCwgZXRjKS4gSSBhbHNvIGRvIG5vdCB0
aGluayBpdCBiZWxvbmdzIGluIGJlc3QgZWZmb3J0IGFzIHRoZQo+ID4gaW50ZW50IGlzIHRvIGdl
dCBhIHF1aWNrIHJlc3BvbnNlIHRvIGEgc2hvcnQgZmxvdy4geWVzLCBGUSBzb2x2ZXMgYQo+ID4g
bG90IG9mIHByb2JsZW1zLCBidXQKPgo+IEFzIGZhciBhcyBJJ20gY29uY2VybmVkLCBGUSBpbXBs
ZW1lbnRzIGV2ZXJ5dGhpbmcgdGhhdCBOUUIgd2FudHMuICBJbiBhIHN5c3RlbSBpbXBsZW1lbnRp
bmcgRlEsIHRyZWF0aW5nIE5RQiB0cmFmZmljIGFzIGJlc3QtZWZmb3J0IGlzIHRoZSBSaWdodCBU
aGluZy4KPgo+IEFuZCBJIHNlY29uZCB0aGUgbm90aW9uIHRoYXQgc2xhdmlzaGx5IGNvcHlpbmcg
d3RoZSBicm9rZW4gZGVmYXVsdCBiZWhhdmlvdXIgb2YgV2lGaSByb3V0ZXJzIGlzIHRoZSBXcm9u
ZyBUaGluZy4KPgo+ICAtIEpvbmF0aGFuIE1vcnRvbgo+CgoKLS0gCkRhdmUgVMOkaHQgQ1NPLCBM
aWJyZVFvcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpD
YWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

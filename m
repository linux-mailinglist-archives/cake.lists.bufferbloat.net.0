Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F007A098CE
	for <lists+cake@lfdr.de>; Fri, 10 Jan 2025 18:43:53 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C3D1D3CB39;
	Fri, 10 Jan 2025 12:43:51 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1736531031;
	bh=4246HsQZL7AFCfLwyY8uq/HQRVbo3/RqLA4QuGEbv3U=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=S/z75u8knVJiUBDy27jd8DbpIJp7jyBv9sLn2asC8GDPjKKQ8YQtw0/MRts2qw9Qz
	 /GkkOwrSXkuY42vXEQC9SR8ZOpCK2zEzC6VBlq/a8Ldr10b2IzBLuuk/CGQywAvckw
	 APjY9r2vsDcKZ9HpbG0cd2BHDwJFmdAA6Bxpewgl1afs4nQ5htpbIV42Z/oj+NTqqn
	 M0YWYnJuvPEugjuPvy7rmEFHyoJ7y5OiMMxzwDeYvgrpKQACqG2Xclxt3+u36aGA7C
	 qqJVNYADUwTFRve3F+nJUsIyupeKLSdhbcrLNYcqI7egGTKWjbirI1/sV1TI1jxeIh
	 frB6/WMKdstIQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C78A93B29E
 for <cake@lists.bufferbloat.net>; Fri, 10 Jan 2025 12:43:50 -0500 (EST)
Received: by mail-lj1-x232.google.com with SMTP id
 38308e7fff4ca-30167f4c1e3so20067821fa.3
 for <cake@lists.bufferbloat.net>; Fri, 10 Jan 2025 09:43:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736531029; x=1737135829; darn=lists.bufferbloat.net;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=3gMzREiQHDQLYAA/7c+sCYh5yXDgE7svzZQp1MkmvDA=;
 b=NLIn3b6cDmwsx1Epu+okPPRVMefTtMb0240ZKnXajmVO6gYL2mRowdftQWeWHjTcvZ
 JdX/Vrh8/3OQdZ5fXTQjSFHNpIPOvRDinQd8XWqoVNYU8V5XpjYkdggBtU6exnwq024z
 8lWeLsporouteHG3S4CMgOenZFok5jwaOkE6syz/oieJyj1FkxpltlQCZ1l2pzi1eGqK
 4M7SgnRerPqdwcO9U9xOiHSehrN0o5AObMNK/7iPxSUEHmXSoyZisA3B66jtsCetuH7e
 4Lg4e/oN2AIUy0tkXrqtAiwO68XATux6FPEFJuyjFgHoCZlxjZAIol/oDHYdNJ4BmNPr
 wNOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736531029; x=1737135829;
 h=to:references:message-id:content-transfer-encoding:cc:date
 :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3gMzREiQHDQLYAA/7c+sCYh5yXDgE7svzZQp1MkmvDA=;
 b=ZSzm5skNaLGk3vMfm7NpI3EPVcHJGYGZIdhgUbxzlhzfUgcGqynWlDr+1e45C4Pl97
 EvfT1jFqlQXsXQLgcxSPN8lK9hIYXdaDdKg2h9IZJBiG9I8uMbM0n+kX2QluNJZSRFYD
 9M10i9zZ6qJOOBHL/v2Aiw43zS7NwDqiUKzDl0WQjxl8HMCF4P5FepLxCyAKSz3w/E+1
 NSpCfRdPd8Xl7Z1cFu1W4PPstbIINeh8RxCUDwViHIw5BWL2tmSnwRjoSVzga/iMtcq3
 ZI91yWYks37MBRXVoQG+3ld2RV53IaD6A+wxy//TepKvtMlaAeMcPVlh6baaU7rPZ1b7
 z1Mg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXaoAOL5MzF6cgZDXLdaWPJo9qBHzDVJ2gZBkJO4zrS5z81rfv3vREttYHwPH/Wz/JS1DL2@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YypvGYNiaggNhIMDTZrFIvBOtbzMEBaAne3zuINbXFUO6RfGhHa
 fD6B1BlW0ipMcvwHov4TfuZLvabQC9i3wheUYSv8YO8cWDawRlv1
X-Gm-Gg: ASbGnctmliW/x77+X4tXz9m7ydfgIPe+1/VRtkclUmJvRMXc2goCPN+jEA+E1P5+Toy
 ipduemDPUbvm2VlZnBWUR2VMYSBmE/IJOyv9Zer/PxGOq98DDwuP5dq4G0y9kJRME0Ft1k3SPpy
 gchi1+ClLwOPoliupzxUEUzO8zqP2apvtrYGBbn0G5W7pT9npFhSpqx0iiFMOJqDd0P4hpch5Tc
 COs59ezihtAPkjwbUAIR3TiQ0rfngKNZWkGSZq9TwGsA8DlYPVR8fvFdryo0ilV8ANB5MXNqJoN
 2nXuNG14i8CHCLbq6R8L/FTKYjD48lIS6M0=
X-Google-Smtp-Source: AGHT+IHnLH38vV4cVo/gQkcfFuUqSm55MOfhFIPVQz7am6mR1xjC6/xPyX/a1n2cN8FAaOLWA4YviA==
X-Received: by 2002:a2e:a990:0:b0:302:34d6:eeec with SMTP id
 38308e7fff4ca-305f45312famr36073621fa.2.1736531029095; 
 Fri, 10 Jan 2025 09:43:49 -0800 (PST)
Received: from smtpclient.apple (188-67-132-152.bb.dnainternet.fi.
 [188.67.132.152]) by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-305fefd6b12sm5876551fa.0.2025.01.10.09.43.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 Jan 2025 09:43:47 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
In-Reply-To: <CAA93jw4mj2RdtqdDT3ug5j8EZSsYujC1V_SjQEcjmCVCUZU+jw@mail.gmail.com>
Date: Fri, 10 Jan 2025 19:43:45 +0200
Message-Id: <898E9FB0-D92E-4421-8CCD-1B9F4A3D9D5D@gmail.com>
References: <20250110155531.300303-1-toke@redhat.com>
 <2FE6B2E2-9A34-47C1-B203-F0C424F00704@gmx.de>
 <CAA93jw54GOfYP56XTh-jjjfAbybNDeYUgUENNA2+aSQbXpS91A@mail.gmail.com>
 <FAD46B40-2142-4254-BA44-C9AD9EEFB924@gmx.de>
 <CAA93jw4mj2RdtqdDT3ug5j8EZSsYujC1V_SjQEcjmCVCUZU+jw@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
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
From: Jonathan Morton via Cake <cake@lists.bufferbloat.net>
Reply-To: Jonathan Morton <chromatix99@gmail.com>
Cc: cake@lists.bufferbloat.net,
 =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAxMCBKYW4sIDIwMjUsIGF0IDc6MDcgcG0sIERhdmUgVGFodCB2aWEgQ2FrZSA8Y2FrZUBs
aXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+IAo+IEkgZG8gbm90IHRoaW5rIE5RQiBiZWxv
bmdzIGluIFZvaWNlICh3aGljaCBzaGFyZXMgcHJpb3JpdHkgd2l0aAo+IG5ldGNvbnRyb2wsIGV0
YykuIEkgYWxzbyBkbyBub3QgdGhpbmsgaXQgYmVsb25ncyBpbiBiZXN0IGVmZm9ydCBhcyB0aGUK
PiBpbnRlbnQgaXMgdG8gZ2V0IGEgcXVpY2sgcmVzcG9uc2UgdG8gYSBzaG9ydCBmbG93LiB5ZXMs
IEZRIHNvbHZlcyBhCj4gbG90IG9mIHByb2JsZW1zLCBidXQKCkFzIGZhciBhcyBJJ20gY29uY2Vy
bmVkLCBGUSBpbXBsZW1lbnRzIGV2ZXJ5dGhpbmcgdGhhdCBOUUIgd2FudHMuICBJbiBhIHN5c3Rl
bSBpbXBsZW1lbnRpbmcgRlEsIHRyZWF0aW5nIE5RQiB0cmFmZmljIGFzIGJlc3QtZWZmb3J0IGlz
IHRoZSBSaWdodCBUaGluZy4KCkFuZCBJIHNlY29uZCB0aGUgbm90aW9uIHRoYXQgc2xhdmlzaGx5
IGNvcHlpbmcgd3RoZSBicm9rZW4gZGVmYXVsdCBiZWhhdmlvdXIgb2YgV2lGaSByb3V0ZXJzIGlz
IHRoZSBXcm9uZyBUaGluZy4KCiAtIEpvbmF0aGFuIE1vcnRvbgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=

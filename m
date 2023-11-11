Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 014327E8B18
	for <lists+cake@lfdr.de>; Sat, 11 Nov 2023 15:00:57 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0FF5F3CB41;
	Sat, 11 Nov 2023 09:00:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1699711256;
	bh=rs8j+qlYfRZGXUFZ9dpWP4Zaix+o4XbdNgBNwPxIFlo=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=U/EqpiOi7xjnarZSsjw1G7jKJ3HL5+xvuxDduzjAaeQwUVih2TbGz+1FOL8yAbvcK
	 LtyZSu04gNaFtbKu9VyaaPf5QzaKtUTf6FWnZK/CwjJwGF1qzvLMyH0jQsqUBWPsO/
	 PrvDm9LVq1qJh1gFtJ2QnQg7noybvUSMY2UdAeaK3Q1QqLVFjSZH0CWX+sQIefULde
	 PRkTZHFmb3QmWVVi9JsQKDJilY9AzifUwCouYprtkk8VrC8b3jaUt1RNYqlAPxaa/H
	 qXPfmUQwPBnjs3hBtMcrLHZRcZQxedzs/ORQEoyaoyrQ7T3DD4K5Debf/rNEP09aj5
	 LDct7FHePxvPw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id F1B443B29D;
 Sat, 11 Nov 2023 09:00:54 -0500 (EST)
Received: by mail-pj1-x1031.google.com with SMTP id
 98e67ed59e1d1-28098ebd5aeso2643144a91.0; 
 Sat, 11 Nov 2023 06:00:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1699711253; x=1700316053; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=TUVyZzwvzuGsgVCzb338UXalI929dtXJoooHUp/UdJM=;
 b=H8FHds1tdXVzxCzUM0lU5IUW6HGnMsnMHFd2T/Efza2dgH1QDdE4ZIjC1ywDkyzwr0
 OdWPJE9+PrSY+awm9+CUSh+P7Rt/RkwInG4Us99dKvs3sgrUzqeGn+kKwkTR+GWUEt1+
 Nr4wuHF7Pw1S72qH89pfZ4b5kFla95w0lYgS0vhqUml8Uu/psKxXrrygcbR/BcGrpCTy
 Ve56Taef4gPRU1nvBbtKGVerrherWvk2FQh3U+6sRdJ4I1xG1EDX/DY6zFxUYFd/HMWb
 8Qn8FBlqhFqX1MI8KhfsRDjCFpLhZHdRYHNos5xnt/fRWhN09L9tGUoBtfFHT/tMg6VJ
 hlYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1699711253; x=1700316053;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=TUVyZzwvzuGsgVCzb338UXalI929dtXJoooHUp/UdJM=;
 b=mWbquJLk6JOOZG9uurQvhAA4s0h3AqLJ5CvLZi6bBiF4e4t+XMBudBrvMIaffQNAgk
 x8RE4clzwAEjqMmlmv8FTwqKYwgognOw+HVpY1Dl6+maE0UW65wXsCMrLyk7s29nV9T3
 ogGlh+qFj7PssQ8iupprymec9/oJYMiKspAtlnpKfxu7G/kFRxp3jLnoGgVJwqkp8Yg2
 2HjhtMHUedxqFXcCSfVWp129W6q+6lvwW+ChRSiQsWp/AjCT/KwgJXP48AAYQcEr3GWm
 f0zS3wWVZ4l9JuHrrRzAIbukyihrfdZd4yIzeLNq8U/Wocb0qaE7Wu+DbIsgj8KooCaY
 nmbg==
X-Gm-Message-State: AOJu0Yxz1V/HN2d6vcOUHF1gW1/l47wWUyTsJCZJrp179dJoY8Dui3rS
 YmhJIVcP7BAVuc3qFOKrutA46BIli+HCb6IXvmeCUEtNdGg=
X-Google-Smtp-Source: AGHT+IHPWSKAhbH9Pxq5iaUrc5B4thtUMMHn2YuYMU3zIMaXGBg4Tk0hqopBF8TyeTRCP9wH+uHiWJGa5TRAs/CIwYM=
X-Received: by 2002:a17:90b:1b51:b0:280:1dfc:1302 with SMTP id
 nv17-20020a17090b1b5100b002801dfc1302mr2003793pjb.17.1699711253029; Sat, 11
 Nov 2023 06:00:53 -0800 (PST)
MIME-Version: 1.0
Date: Sat, 11 Nov 2023 09:00:40 -0500
Message-ID: <CAA93jw4MZOm1Lu_HvZ1cd4Q8B24M11_Juz5pSSEDGH0bBtk=Yg@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] end of an era
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

aHR0cHM6Ly93d3cubGlua2VkaW4uY29tL3Bvc3RzL2R0YWh0X251ZGlzdC1yZXNvcnQtaW4tbG9z
LWdhdG9zLW1vdW50YWlucy1vbi1tYXJrZXQtYWN0aXZpdHktNzEyOTEwNTE0MjA4NzM4OTE4NC1V
RjJTCgotLSAKT2N0IDMwOiBodHRwczovL25ldGRldmNvbmYuaW5mby8weDE3L25ld3MvdGhlLW1h
ZXN0cm8tYW5kLXRoZS1tdXNpYy1ib2YuaHRtbApEYXZlIFTDpGh0IENTTywgTGlicmVRb3MKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo=

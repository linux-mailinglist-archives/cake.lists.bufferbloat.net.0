Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8838B65A1
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:22:19 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2588C3CB4B;
	Mon, 29 Apr 2024 18:22:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429338;
	bh=4JyS38QFyZOH9UkUkAnIsAcH5Qb24f3jFrz7Fad0i+A=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=Lv47XREHHpAgZHEWPcm2uMe28zZ6HTP6WFyCf59QKwhXvinXWX2KHT4bJr+UuERwh
	 K0kI7kqREZ3iG7+mCiwM7mKrsj5PIqVBlKqCJ8GGCaK9F3R+2XjJlQExmRWC2UdB5h
	 pz+cbTrZ0ylC07gEvLDQ5oYQn1fRBn9tGABh9GyxX3HfpqpOFWpDY/By/cXVmjXHh4
	 BxY3EfwGORkYDpT20TPAy5qAvy5vW0iWdn3K86YSlJ0x6HtfwWWOW0/LhkEErmvwA+
	 PYaeM4+ipn/CgmcYhcWnN1qfL78RvB20Q4WMPi5EWpwFiR6FBcUwM+hxVqy5AtbXrL
	 5Sfme9BjLjocA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 739043B2A4
 for <cake@lists.bufferbloat.net>; Mon, 29 Apr 2024 18:22:16 -0400 (EDT)
Received: by mail-wm1-x32e.google.com with SMTP id
 5b1f17b1804b1-41b4ff362a8so45783815e9.0
 for <cake@lists.bufferbloat.net>; Mon, 29 Apr 2024 15:22:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1714429335; x=1715034135; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=2b4TGtpwHr1SYEew8nfl5U6EREtz6rbTQKXGq8Is6wA=;
 b=IZZlYUzyKvcPFo3Ve/EfhmWAsnj4GKzeIL7YZiN5HhAhD0VrZBzB6yiY0uCDlElTZW
 rpa0+PiGnmSSiMlOmPnCfpOFUFa/hmzKXlCx3GOlFWAW3tHKVeJsAkOI9LiXniVxIDWf
 IpqLtzHvq2Z6sKAPtRuDd5FPQqGy8yCMYhSF0yMKhBtW7yueexjt7Qlzqo82LehfLcL7
 RyYSlr5vYyJu4+PU7NW8xLjRQ0uPY/Do6c2bCke2EPufg5SW9R0JnnyxeED1+Kr2lgmH
 ayy0e0lol/UMj1eSp40F/6DnVRp39ygj3av4C7GVWxra0/H6kvTiOVPeCVYZvvslD43p
 Kx/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714429335; x=1715034135;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=2b4TGtpwHr1SYEew8nfl5U6EREtz6rbTQKXGq8Is6wA=;
 b=RhyCd/ZjCNKaiZUh8uB4XVQeaCfG0IC0v6tOURdxBr2gBDX7jt+rKTs4wueLIxojWS
 gSfDkYjWmzXYubpBClBxILXMRRhs+rZ8LcRc8yFBBDc5rvZIOdsNPw/DtWymsyD4bhdR
 chUINS14DTbCtYlLATmjXfSIqF3NXpgpfS3mcn+u8fLLBH8B/7mFAExg99/DKUSi+TrV
 T1RXE+VaQaol7mtorAGBnDMzoRpX6q1+CgePlBxxrYQkdiLXkGFL+SaWostX/bgfh+2c
 0GEoZb4fFZXoCjjPw60aeni4/gaE0wyZQvZA1TSM8BhJtoDcCj3WEEvTWb++3BJG12KQ
 oLPg==
X-Gm-Message-State: AOJu0Yx4FYJENxzmfkj0hKimq4fpfeZ+/CWa2Tc4pzjOcu0DZT/BCb3X
 gs9qwnjBKA9+zsktOvaOOTMqTzsMtR/jIY1bO2pyidS9XpKGJuW1wZ4OXE0yq1gZ0TA/xYEiDqm
 2wbSeQMIqjJJvSzj+McFOuli8YbQWGg==
X-Google-Smtp-Source: AGHT+IGxrlEAaIvfb1Ye4sSrg+N/HPyscUl4BZMpKXMke4oPizAD7iLeHKK6U2EZPsljP2DpZhypx4XIZuh76I3SUx8=
X-Received: by 2002:a05:600c:4e8a:b0:418:9dd2:fd04 with SMTP id
 f10-20020a05600c4e8a00b004189dd2fd04mr10319452wmq.13.1714429334682; Mon, 29
 Apr 2024 15:22:14 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 29 Apr 2024 15:22:02 -0700
Message-ID: <CAA93jw77mxDkuOHJLhcy=OOFxPrP6WHDHg_2r5fPU_NiR8W7-g@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] apologies for the email flood
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

aXQgaGFzIGJlZW4gYSBsb25nIHRpbWUgc2luY2UgSSBjbGVhbmVkIG91dCB0aGUgYmFja2xvZyBv
ZiBlbWFpbCBpbgp0aGUgY2FrZSBtYWlsYm94ZXMuCgpJIGFtIGhvcGluZyBhdCBsZWFzdCBzb21l
IG9mIHRoYXQgZGlkIG5vdCB3aW5kIHVwIGluIGEgc3BhbSBmb2xkZXI/ClBhcnRpY3VsYXJseSB0
byBnbWFpbD8KCi0tIApodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PUJWRldTeU1wM3hn
JnQ9MTA5OHMgV2F2ZXMgUG9kY2FzdApEYXZlIFTDpGh0IENTTywgTGlicmVRb3MKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QK
Q2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQv
bGlzdGluZm8vY2FrZQo=

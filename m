Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB5987DC06
	for <lists+cake@lfdr.de>; Sun, 17 Mar 2024 00:48:58 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A8ED13CB41;
	Sat, 16 Mar 2024 19:48:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1710632936;
	bh=AxFpq9VcSg60q8Sf3ES7LZ2XE67t1XQmMkTvaTJCnd4=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=kz6ggFoTwzVZc4k6JH0W4dq93EqTPXvngK1BHRnDifc7LIio23foUhXKtys0TDg6Z
	 iFhJDrb9opMNC3YaM8dZ9jtbrKuS7MPCVK3eYAmi1Ax4t95QTJf+t8MeSFb+B2ulbj
	 dTdZahk1iyU7DQRLoWgndbChmK+WuGx82Xtque2Ue0yx7OBk+g3BUK9UHDWAXQNkr3
	 4FR5B/WdTBoZBAdaxE/3e9luj5tYk6VOQnXAGuThcVq7BVX3uLmD+eKos1f5R73znn
	 tLjr3gEMlLvxqCGSdfLlaqgLw3RONM37T6dUJYwYzprkCAsX1gDg0kfeBoISPYClu/
	 JP4Nb09U6lQqQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com
 [IPv6:2607:f8b0:4864:20::f31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B1B193B2A4
 for <cake@lists.bufferbloat.net>; Sat, 16 Mar 2024 19:48:54 -0400 (EDT)
Received: by mail-qv1-xf31.google.com with SMTP id
 6a1803df08f44-690cbf99143so19026216d6.3
 for <cake@lists.bufferbloat.net>; Sat, 16 Mar 2024 16:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1710632934; x=1711237734; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=mdLFFJMCymisewi9w4+tS0eZgDruRE7AgKKu2f0jpFA=;
 b=IsT3diZ7neyXv+AByBgaDu7jYVQnSWTeicYkPsPB34tNkhu/9IO2R3MVhx1D/wAC0N
 CMbKM2znPw+G6o3FUYDzRCIwNOoEnLs5MTH3s2QTdmE0zmQ3YgYQjTgtzESBt7nBkQNA
 +dyy98vGoxEot2Z82s4IlsTxTzqOsB8pETdqxpXz4u7xm6A0J8ANuqdtp05ERL6Zt56f
 PnDhijqKytuKqX9Y5qR2fxxl6Xc983/C/ZYT39LUYKyF8d8cJ7RJvGuvZdLn5QeCw2G9
 f8V+56P0MAJ5VOL68FunfFzrvEJZJSKKLfyNiQ42gpANEWmpCr0e5nNAiM0+3L7EunpB
 regw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710632934; x=1711237734;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=mdLFFJMCymisewi9w4+tS0eZgDruRE7AgKKu2f0jpFA=;
 b=QwS5H95YUrCXf7UhYhzm31zQyBXSBDyz9JsUgou5AShXp63V5YbcPqfUz9CuosMBd0
 kTTjr8hANdsuMIlIb2ZEv+v0MG8oDDDz3qis99LpWDbZgRULULTnDdTLAjySQp4Hvgqn
 eWbfw0xsJUV3Bsz5teIcIrC9u5Jk0iRg/eaU6FZfHp0yNEjQf9RsPGtE8UyxPA7CzOTL
 2sBIy1My3DXv/c8SnfiiAdcN1LhTmHcSVLQtmehU7gWItjxovjB28G1cYwEys90aAO9D
 qwHGx+eV56/ncWSfsZwif2/RHIXqk+kX1FZ3Rd5d/XK1fkR/I2Uh5xIOGZ/RQFaEEwrs
 uFZw==
X-Gm-Message-State: AOJu0YzTK8+FOJfCqWVENs4ZmV6OQhpftol8hANbKQx+3/uY7i4TcELT
 cmD2clrOWROyeIUBiBW3wVv1fie1d818nXGeqqAsC96PXjFrvnjc04rKwKgZhQ1DZSHQH739ruu
 +uWY7eo8fe94+aF2ZcTEJywI7Hyc7E/hpysI=
X-Google-Smtp-Source: AGHT+IFuvy0ERl4n8xklzdSSZXreS0UlthDpAm06h+owys5lCmv87VpwRltJ019CyxbYHBC59SGvwS8VqF9f81ZBTZw=
X-Received: by 2002:a0c:e608:0:b0:691:1fcc:e26d with SMTP id
 z8-20020a0ce608000000b006911fcce26dmr8967317qvm.31.1710632933784; Sat, 16 Mar
 2024 16:48:53 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 16 Mar 2024 16:48:42 -0700
Message-ID: <CANypexQWCR5mWqrcuKDm+iTyzP8+5AFDGM+ZQ2NbDUJMd-tubA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] irtt update to go 1.22
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
From: dave seddon via Cake <cake@lists.bufferbloat.net>
Reply-To: dave seddon <dave.seddon.ca@gmail.com>
Content-Type: multipart/mixed; boundary="===============3925850515273926083=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3925850515273926083==
Content-Type: multipart/alternative; boundary="0000000000005c04a40613cfc476"

--0000000000005c04a40613cfc476
Content-Type: text/plain; charset="UTF-8"

G'day,

I'm chasing weird latency spikes in my wifi network, so on Dave T's
suggestion, I'm going to try using irtt to debug it.

I noticed irtt hasn't upgraded its Go version for a long time, and Go has
come a long way since 1.12. While I was there I spotted a bunch of lint
errors, so I just hacked in a quick log.Fatal, but these should probably be
real error exit codes.

https://github.com/heistp/irtt/pull/41

-- 
Regards,
Dave Seddon
+1 415 857 5102

--0000000000005c04a40613cfc476
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>G&#39;day,</div><div><br></div><div>I&#39;m chasing w=
eird latency spikes in my wifi network, so on Dave T&#39;s suggestion, I&#3=
9;m going to try using irtt to debug it.<br></div><div><br></div><div>I not=
iced irtt hasn&#39;t upgraded its Go version for a long time, and Go has co=
me a long way since 1.12. While I was there I spotted a bunch of lint error=
s, so I just hacked in a quick log.Fatal, but these should probably be real=
 error exit codes.<br></div><div><br></div><div><a href=3D"https://github.c=
om/heistp/irtt/pull/41">https://github.com/heistp/irtt/pull/41</a></div><br=
><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><=
div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Regards,<br></div>Dave Sedd=
on<br>+1 415 857 5102<br></div></div></div></div></div></div></div>

--0000000000005c04a40613cfc476--

--===============3925850515273926083==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3925850515273926083==--

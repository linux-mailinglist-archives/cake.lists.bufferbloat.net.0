Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CE31EAD007F
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:41:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 50D1F3CB64;
	Fri,  6 Jun 2025 06:40:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749206459;
	bh=+ZOzM6B9WZZ/E8L/CxtSK8wj2+UzOokAYyuHoaFfIYE=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=pirO4e3hvt1e8uwUdF1fvSWWsIoIsJKrbI//XGxWp6WEgc13oFTHM1tePPJjdPsXz
	 WQiKla8ZMdLb1HH25BU0ugEHk6AH7DqvgYbruVEc31q4qZcsnqBgAcPxLs07sMD83k
	 +r9jt8vCcpggXuYgkFHL/NjCFg5ikb6pcO65clIjEp3lv4B4+W2vCY/C0nNKPNA2MA
	 KLMJH8TAihINjmB9amkqqlkLhcjsdIfsdyUX00p0UOg697jzMTs5ilQY2S0ElKPEh7
	 KViAJxQjo3amAks3hJ9tfTrsExrQNZ19peHq6s4281eU3Bus89TvciWMGncscPE2F/
	 +W22quNDZ8f7A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B295A3B2A4
 for <cake@lists.bufferbloat.net>; Wed, 15 Jan 2025 21:57:46 -0500 (EST)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-21644aca3a0so8526775ad.3
 for <cake@lists.bufferbloat.net>; Wed, 15 Jan 2025 18:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736996265; x=1737601065; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=HmnvmJyoBAfZek1Z39Yc/vx8YCwg0GHFfAO/pOoJmSI=;
 b=QuwtKS98nrt9q9cP3rchN++gaEyAkgULBdQTz+TVkUCrxnu79Fo5DKdI5gHuzuLJnC
 ucLbKJ1S9VD9fsA2nROmCCIu/Ngy65KPMKmvzNAsDzwF4s9r0s9WPNwGdafLeBEBsSGx
 jCNW4X1oS61/f4nRmgBKkcYvgnn5Powo3nnvbo/qIEyUCTM/DSUxsSNoJ/NYJ79DO3TE
 sNVLDCTg0dToDiMwKgf4xqNRzTLcq7V/G/sj2nWWhdhS4dEeiaMNdkB575Kw08t7SlBM
 ysEqsHMbrdR5d/NkMT1LcCCquYhE78m0Dj+IAdSA6gqy4zxtvWdwIghK8v3ELpDPwanX
 Tulw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736996265; x=1737601065;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=HmnvmJyoBAfZek1Z39Yc/vx8YCwg0GHFfAO/pOoJmSI=;
 b=OiqCyyjpe4hOE33i4jg+H5gyYKVtm0Dsp0ywFznImVNn1kOZnLGhl2jJkQ4RwDuHRa
 TmBvaqfP59aTnPYCcR9/5rM+5Ven7i0BuHHRVsmnllh0P8pDli252S4rxZtZpRWMdZ6G
 dZHmi5g3W92JOwvAgHv3OOONSNiFLixMpwP4KsE/TBr1uV6BJYuKQbxn5zx7N3QCLGf3
 dbj3XIV5RiGMLVYlzEytC/S7OxWFw3CsW9vAAHQILPmoyFxp6Gbwidz2dabdguVGBlXC
 5S+34j/KF5bHXBIe1QLn6X2rRFdPWn1QZcxpP+1Cgq24XHnzGoNK8nb0OnrCQsRHsdMF
 hg9g==
X-Gm-Message-State: AOJu0YywtdCv8lZM5hEcyyxkoX2Xo9Iz6vpib/P1pA2e7m1n39yJ0UGE
 X08/NwumIcHwU924sWwO/AwEAIiAhz1LnV49p3jRtOpT6jA+CdH/o3G6uix/2FdZM612H7ox233
 jnQUcbzd4HcRa3pOorYjqEzIoSqdjsWw2Lww=
X-Gm-Gg: ASbGncvg0E5yDSm80jotYhfqXHT8VtKClS7LB808nlM0NA7M3yC4tRmfPIQI1b0dM2m
 PQmART2Rh6YwGSi+cmNTW9xfaj2lnfJMsXEHJFg==
X-Google-Smtp-Source: AGHT+IFlVJxMrI9VA+n33KNeI6jaSLDetL/ad8hUTzGmGd6lWUeuT9NhPTs7G8t9LIUt199imjT9eHZVOOif134jysI=
X-Received: by 2002:a17:903:2613:b0:21b:d105:26c9 with SMTP id
 d9443c01a7336-21bd1052a6amr95277495ad.18.1736996255268; Wed, 15 Jan 2025
 18:57:35 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 16 Jan 2025 10:57:24 +0800
X-Gm-Features: AbW1kvYZl9EojppYJZc0NcrLo0Jbzw4tY8VTt5wSSwKiMLMpakB8uNh6HF-wvjQ
Message-ID: <CAPB3MF4ApjawJtr=spCr92rBvPBwBnwGmwR+fsGdPot0pM6_zQ@mail.gmail.com>
To: cake@lists.bufferbloat.net
X-Mailman-Approved-At: Fri, 06 Jun 2025 06:40:58 -0400
Subject: [Cake] CAKE on the bonding interface (master) or the bonded
	interfaces (slaves)?
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
From: cam enih via Cake <cake@lists.bufferbloat.net>
Reply-To: cam enih <nanericwang@gmail.com>
Content-Type: multipart/mixed; boundary="===============1262137571932557096=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1262137571932557096==
Content-Type: multipart/alternative; boundary="000000000000c58999062bc9f420"

--000000000000c58999062bc9f420
Content-Type: text/plain; charset="UTF-8"

Hi CAKE folks,

I'm new to traffic shaping, just a quick question here:

I have this virtual NIC set up and a few physical NICs bonded to it. Shall
I apply the CAKE algorithm on the virtual one or the physical ones, or all
of them? If either can do it, which is the best?

Thanks,
Eric

--000000000000c58999062bc9f420
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi CAKE folks,<div><br></div><div>I&#39;m new to traffic s=
haping, just a quick question here:</div><div><br></div><div>I have this vi=
rtual NIC set up and a few=C2=A0physical=C2=A0NICs bonded to it. Shall I ap=
ply the CAKE algorithm on the virtual one or the physical ones, or all of t=
hem? If either can do it, which is the best?</div><div><br></div><div>Thank=
s,</div><div>Eric</div></div>

--000000000000c58999062bc9f420--

--===============1262137571932557096==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1262137571932557096==--

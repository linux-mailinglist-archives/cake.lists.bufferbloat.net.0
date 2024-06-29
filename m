Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CBF91CF1E
	for <lists+cake@lfdr.de>; Sat, 29 Jun 2024 23:03:40 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A2D773CB45;
	Sat, 29 Jun 2024 17:03:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1719695018;
	bh=aOX/NLVWezhFKBmwSpdpo/ZgygAeXCAUmKJy4jkWNAc=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=HVYhtLGIySNeJJ3PbAiextg9Q0EyFpKpjQx/e7sDIVhTmyebqnuzFyVkrgA0LcbyP
	 kMGTFkYwHS8cJakbYLm/PlkFB1gcMKtcp2p+EF0nw97JbETAGIk0i7Yoe0eLG4y25g
	 MqjZE0egli1JlBK4ycRgqDZBnJGgHS2glbO845rkUHhl3pk/AiGljeiJDVUf4ecCqZ
	 +D82J/PpTK9gn0EQJZ42+QDgRDNUy3/6mCc/wQ00z6YqqMiufEn2J2P7c3Ip0KPuEh
	 LGBn97HqfmC0wEp7PM01wOviA4XndwtREB4dNkAuuW2smNbC8xYyB+06nuhOq9Lay3
	 mJnrxYUtPCcHg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com
 [IPv6:2607:f8b0:4864:20::82f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 877813B2A4;
 Sat, 29 Jun 2024 17:03:36 -0400 (EDT)
Received: by mail-qt1-x82f.google.com with SMTP id
 d75a77b69052e-4464c31a874so8821961cf.2; 
 Sat, 29 Jun 2024 14:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1719695015; x=1720299815; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=dmjlMfqJMwTISo2aWhT2NNDbGPn9enrY+YyTvuhqMVg=;
 b=kxrh2gaeqY3SiZUbPa9rsGxQsVieXYn2P7Vj4oR/JvA9rx7QTvjq24LvfDWDcYZBYz
 Yof9VmJgUa4XEdY/OSayasWfxTunW3dSGfjjCwpQ09w595/4/mopMa2/5ZsC2+JgDDMs
 B1PTYQ5OyGkB47MTuhNTIi5jIZ1vcHM5NhkDc6c6U0IUlq8i6jGHvP1ovmTjrUDrzJlJ
 UY95Mc6LKu8lbczhmBnQW3rhSdIs3oyEZvk7jkngdMg4RbwhHCsojqstQ2uRSHhkvf+P
 J1KGx1eUohfs/4tCDtVv/Y9nwcvkSB5yqq6dJV3yjzrhfndpVYCKF2AsxMtlC+BolUf+
 Bwow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1719695015; x=1720299815;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=dmjlMfqJMwTISo2aWhT2NNDbGPn9enrY+YyTvuhqMVg=;
 b=CdqUdF7k+dVLlw5M94XtfPILjUBsUU8M7WuV5HdnKq6RxS16pSbU8zRy8UjD+5t1Xh
 uzyet+KaPTN0HHsO3oW1/EZj81XHMaZsQV+3rTWN167WCN+4EEIQhx08lkqFwVYCAFoh
 bhDCdZsA46reszFsasdiKsH46+TlalBRuaOmamUodm1Cm9xE0s0WLU+lEnPuSyHETZLC
 HM4auLoHbm9kVzoqXVeLA+7M/dZt4EY6bCxeIjqJnMlWPs1QuM9UczeSc4yqFKubO733
 aN9xMg3tberbbkemenk++V2w6yJdKgL+dChuvIB45Y4zxRh1HuxYqY50w7Y3WKH7DB3q
 t5Kw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVAv7k3T8Zyja8uhEm4jB1PUxuWgWBXTiGrVIV/fy68jI/iPOL9N1nsimlAp/95z+uAbEyTHZMxRm1m5tqnvZk2SQGjgy0/GfPDapQpA2HNb1uRuYgrZ6qsYQZddtC2aag+2ynqwg==
X-Gm-Message-State: AOJu0Yy3mssqI/mfp8y8v0WY493G5VQnadCdkADj4HID+ZSGK7k+c+Y4
 HoRE61+ThEhznlH+ECZD+8LwXj/EOMKJ5EvJjeQyues4hukLwf/q/onEanPe7COVlSXygYV8IcR
 XYJpQt14osazkLJWllhLXa/VLwO4KIBoX
X-Google-Smtp-Source: AGHT+IHZWjJPKsVT4ohL0Jj3hVZjjItfOnEtvqG1NT6FZc4NzVSS4UOcSLtMNJmkoQ/Az5G65JxFiPgrQPV83CIQolQ=
X-Received: by 2002:a05:622a:5d1:b0:444:d668:924d with SMTP id
 d75a77b69052e-44662e0c62bmr23007521cf.40.1719695014755; Sat, 29 Jun 2024
 14:03:34 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 29 Jun 2024 23:02:58 +0200
Message-ID: <CAJUtOOjE7Mrj0wGGpi7s19x_t0QY7trNFfp3fBA_VBoEi9nA7w@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, 
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] FixCapeInternet.com - anybody from Massachusetts willing to
	do this speedtest?
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
From: Frantisek Borsik via Cake <cake@lists.bufferbloat.net>
Reply-To: Frantisek Borsik <frantisek.borsik@gmail.com>
Content-Type: multipart/mixed; boundary="===============0214069883740123268=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0214069883740123268==
Content-Type: multipart/alternative; boundary="0000000000007a0cdc061c0db2ee"

--0000000000007a0cdc061c0db2ee
Content-Type: text/plain; charset="UTF-8"

https://fixcapeinternet.com - needed a VPN to actually open it in good ole
Europe...
found it on LinkedIn:
https://www.linkedin.com/feed/update/urn:li:activity:7211785152438382592/,
apparently, launched like 3 days ago.

Asked them if they test for latency, bufferbloat, jitter (like Ookla,
Waweform) so will see.

But if there is someone from Massachusetts, would be great to see the
results and experience from the test.

All the best,

Frank

Frantisek (Frank) Borsik



https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com

--0000000000007a0cdc061c0db2ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><a href=3D"https://fixcapeinternet.com">https://fixcapeint=
ernet.com</a> - needed a VPN to actually open it in good ole Europe...<div>=
found it on LinkedIn:</div><div><a href=3D"https://www.linkedin.com/feed/up=
date/urn:li:activity:7211785152438382592/">https://www.linkedin.com/feed/up=
date/urn:li:activity:7211785152438382592/</a>, apparently, launched like 3 =
days ago.<br><div><br></div><div>Asked them if they test for latency, buffe=
rbloat, jitter (like Ookla, Waweform) so will see.</div><div><br></div><div=
>But if there is someone from=C2=A0Massachusetts, would be great to see the=
 results and experience from the test.</div><div><br clear=3D"all"><div><di=
v dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature">=
<div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
>All the best,</div><div><br></div><div><p class=3D"MsoNormal" style=3D"col=
or:rgb(34,34,34)">Frank<u></u><u></u></p><p class=3D"MsoNormal" style=3D"co=
lor:rgb(34,34,34)"><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:=
rgb(34,34,34)">Frantisek (Frank) Borsik<u></u><u></u></p><p class=3D"MsoNor=
mal" style=3D"color:rgb(34,34,34)"><u></u>=C2=A0<u></u></p><p class=3D"MsoN=
ormal" style=3D"color:rgb(34,34,34)"><a href=3D"https://www.linkedin.com/in=
/frantisekborsik" style=3D"color:rgb(17,85,204)" target=3D"_blank">https://=
www.linkedin.com/in/frantisekborsik</a><u></u><u></u></p><p class=3D"MsoNor=
mal" style=3D"color:rgb(34,34,34)">Signal, Telegram, WhatsApp: +42191941671=
4=C2=A0<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34=
)">iMessage, mobile: +420775230885<u></u><u></u></p><p class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)">Skype: casioa5302ca<u></u><u></u></p><p class=
=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"mailto:frantisek.bo=
rsik@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">frantisek.=
borsik@gmail.com</a></p></div></div></div></div></div></div></div></div></d=
iv></div></div></div></div></div></div></div>

--0000000000007a0cdc061c0db2ee--

--===============0214069883740123268==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0214069883740123268==--

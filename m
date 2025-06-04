Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A11E5ACDDC3
	for <lists+cake@lfdr.de>; Wed,  4 Jun 2025 14:20:53 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6CCF13CB39;
	Wed,  4 Jun 2025 08:20:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749039652;
	bh=tY7HcYO3QKsTzOPbMuoqOs4dNKKRt/wxCE35u4Ukk00=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=kzmbXE33c6aEJ51waoKOZNPtqxuqpZFY5o2HAbP0p6OhvgnrvTktpzpuAFQT3q9iS
	 ZdRgX1y29QLcViKf4gdRzKlaX19eQTFl8iSmfL/02KBcSNqxQAo0GM8DkWgZhwGUyK
	 XP3kx0wa508e/9k/dGMgTtUUoRvQWyD35fWHzFDNZ/+l3nsuzfY+t7AgMmBpJfM4Ao
	 TO8mszw+4yS7ot6tdaLLZJxNJKiu4aTg+uyfSVekZhmXjhtbi4COmW+TSrks0Q/0Dv
	 WyjjImHSRP2TWZfW3RZHPgStRpdr13f3i/f4PoqGqsAteBSFefUYFoC6goPSPF+NJv
	 oEj/jROB7CMYg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1EF2D3B2A4
 for <cake@lists.bufferbloat.net>; Wed,  4 Jun 2025 08:20:51 -0400 (EDT)
Received: by mail-ej1-x62e.google.com with SMTP id
 a640c23a62f3a-ad891bb0957so1189665766b.3
 for <cake@lists.bufferbloat.net>; Wed, 04 Jun 2025 05:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749039650; x=1749644450; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=2R0RoyLQNoc85fmytGlbTOhAjGvG56Lp51d1E3RTXqg=;
 b=egqlMCLnrCrLAFDmZ3TTagOWgyg4O5PYBUa+M8/rzEkQ5RYYNxTGJrV5bkd44X82ak
 0+fOrNImVbbdOGvnTBQCBj5z0Rrg3Ko9H3pp/ZubZg7nNC3w8qErAoRJDJrzLlE1T+am
 bprxYIPhgb6E+KYVGkaMPsWeYdUvAeYq3nDRX+XGy34bGTa/3d4OmTztJ6ZnXjsfSyPZ
 HeMTLUGFyibLZW+MIJoZA2iyIu5xXH3Y5xR3ts3R+HqGEmJSSGNpLmPDs5H2AucQKyD0
 o7+vRBAtOnQnQ71yvr7hN8xBTeF6Lx5Uqc2Pz4cHJamgBtYfDkE2IumC9etZPq+DnMsl
 JjwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749039650; x=1749644450;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=2R0RoyLQNoc85fmytGlbTOhAjGvG56Lp51d1E3RTXqg=;
 b=dePZfLSt+detSM7UFXsiiPaXCmGsAQMPWtHP4Uv13+8Gm/BxydA3A+pJ0V5QLew23B
 g2kBC/ZZ9sNVCiHzwvsViNQ1hFLRTOMPaIlL/Wr/to/FQ2XKVdmjJiQxYPf4IPAG9c1M
 Z733TmMsQj6el4MAY/UGMu+C/k8wAuf6TuIeROB1y839J5A91fygNjTjXbW/3b3j92x8
 2OVVUA2eJUYow4R+HlE3IKnIsE+liGkvnMc2EJ1t+A4JEqxqp/MszkALnmD3ucNv8tzq
 nn21ONK1I+bYx7bqwIWkBrmgvr8bVFO0DBqIP2YJblsm/QWhpxjULA5kAGBKaUQoiFf0
 N9Kg==
X-Gm-Message-State: AOJu0YyK391Cr/ZpTo3gclJT3dvJPam9U62yArVS8vYvv8RxT6YPdT3E
 pGTTH+WWJb2sifI2bphBkgKnOza1e/3y0fGGAmw4X0jFBRA8Khi4v0vk02Pg/ksJ0KJtsBQw1IH
 yJdVeGoNRwnkVIEmS8EkePCaCd1L+zPiOVCOotxc=
X-Gm-Gg: ASbGnctElXrEPLU9wLaJKIU+HNz2fycV97GCflwFl/5V079mHU+H5HNyqhBCGoWcLpG
 Eqf3CW572VJWDJx5O4aE0Tz6AovVZlehGdUpFbpJX/9wuRDNLB2OdlXdhZoFMuLRozIJf4cTELg
 rMMR4nu0cA7Fe6Ar0Xep7d0RUy8M05/Yh/TOu8M5kxs/TT
X-Google-Smtp-Source: AGHT+IFTnS50OmgmPen5WO2011yal7BqtDwESTCh4OJnBNKyj89/3tnDpnaGMIaoNDrG2SaCUbfb8V6cheGEddq4ou8=
X-Received: by 2002:a17:907:9626:b0:ad8:9d41:371e with SMTP id
 a640c23a62f3a-addf8f52af3mr233800766b.36.1749039649543; Wed, 04 Jun 2025
 05:20:49 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 4 Jun 2025 14:22:32 +0200
X-Gm-Features: AX0GCFsIh1KiOyTUu6qWQ_i5bNUHmIdgkeDGy3L4CCkKKtlrot3GVyF8YmIF3fk
Message-ID: <CAJUtOOjqhArk0_b2mOVT1M14Jf68Kvq54cf7KHE9Dma5C=Gz8Q@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] MQ-CAKE: Scaling software rate limiting across CPU cores
 (Netdevconf 0x19 - 2025)
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
Content-Type: multipart/mixed; boundary="===============1468081105117579618=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1468081105117579618==
Content-Type: multipart/alternative; boundary="0000000000000267860636be07d7"

--0000000000000267860636be07d7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello to all,

Recording:
https://www.youtube.com/watch?v=3D0TQ4brmRMeQ

Slides:
https://www.netdevconf.org/0x19/docs/netdev-0x19-paper16-talk-slides/mq-cak=
e-slides.pdf

Paper:
https://www.netdevconf.org/0x19/docs/netdev-0x19-paper16-talk-paper.pdf

Netdevconf page with general info:
https://www.netdevconf.info/0x19/sessions/talk/mq-cake-scaling-software-rat=
e-limiting-across-cpu-cores.html


All the best,

Frank

Frantisek (Frank) Borsik


*In loving memory of Dave T=C3=A4ht: *1965-2025

https://libreqos.io/2025/04/01/in-loving-memory-of-dave/


https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com

--0000000000000267860636be07d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello to all,</div><div><br></div><div>Recording:</di=
v><div><a href=3D"https://www.youtube.com/watch?v=3D0TQ4brmRMeQ">https://ww=
w.youtube.com/watch?v=3D0TQ4brmRMeQ</a><br></div><div><br></div><div>Slides=
:</div><div><a href=3D"https://www.netdevconf.org/0x19/docs/netdev-0x19-pap=
er16-talk-slides/mq-cake-slides.pdf">https://www.netdevconf.org/0x19/docs/n=
etdev-0x19-paper16-talk-slides/mq-cake-slides.pdf</a><br></div><div><br></d=
iv><div>Paper:</div><div><a href=3D"https://www.netdevconf.org/0x19/docs/ne=
tdev-0x19-paper16-talk-paper.pdf">https://www.netdevconf.org/0x19/docs/netd=
ev-0x19-paper16-talk-paper.pdf</a><br></div><div><br></div><div>Netdevconf =
page with general info:</div><div><a href=3D"https://www.netdevconf.info/0x=
19/sessions/talk/mq-cake-scaling-software-rate-limiting-across-cpu-cores.ht=
ml">https://www.netdevconf.info/0x19/sessions/talk/mq-cake-scaling-software=
-rate-limiting-across-cpu-cores.html</a><br></div><div><br></div><div><br><=
/div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmai=
l_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><=
div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div>All the best,</div><div><br></div><div><p class=3D"MsoNormal"=
 style=3D"color:rgb(34,34,34)">Frank<u></u><u></u></p><p class=3D"MsoNormal=
" style=3D"color:rgb(34,34,34)"><u></u><u></u></p><p class=3D"MsoNormal" st=
yle=3D"color:rgb(34,34,34)">Frantisek (Frank) Borsik<u></u><u></u></p><p cl=
ass=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><br></p><p class=3D"MsoNorm=
al" style=3D"color:rgb(34,34,34)"><b><u></u>In loving memory of Dave T=C3=
=A4ht:=C2=A0</b><span style=3D"color:rgb(32,33,36)">1965-2025</span></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><a href=3D"https:/=
/libreqos.io/2025/04/01/in-loving-memory-of-dave/" target=3D"_blank">https:=
//libreqos.io/2025/04/01/in-loving-memory-of-dave/</a></p><p class=3D"MsoNo=
rmal" style=3D"color:rgb(34,34,34)"><br></p><p class=3D"MsoNormal" style=3D=
"color:rgb(34,34,34)"><a href=3D"https://www.linkedin.com/in/frantisekborsi=
k" style=3D"color:rgb(17,85,204)" target=3D"_blank">https://www.linkedin.co=
m/in/frantisekborsik</a><u></u><u></u></p><p class=3D"MsoNormal" style=3D"c=
olor:rgb(34,34,34)">Signal, Telegram, WhatsApp: +421919416714=C2=A0<u></u><=
u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessage, mo=
bile: +420775230885<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:=
rgb(34,34,34)">Skype: casioa5302ca<u></u><u></u></p><p class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)"><a href=3D"mailto:frantisek.borsik@gmail.com"=
 style=3D"color:rgb(17,85,204)" target=3D"_blank">frantisek.borsik@gmail.co=
m</a></p></div></div></div></div></div></div></div></div></div></div></div>=
</div></div></div>

--0000000000000267860636be07d7--

--===============1468081105117579618==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1468081105117579618==--

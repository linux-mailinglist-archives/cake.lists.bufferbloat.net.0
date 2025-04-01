Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D8BA7817B
	for <lists+cake@lfdr.de>; Tue,  1 Apr 2025 19:26:11 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F149A3CB43;
	Tue,  1 Apr 2025 13:26:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1743528363;
	bh=t7jClOamp6Hsffw83zXNk9KJv5bxg3z0OXvPsFCASeE=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:Cc:From;
	b=iZ318Ko6NlqvuzHsa/EblM/hpZq1iLBvWe3EP5RjhwkHjiJn79VHdmdmeBBCW7Fhp
	 SgP7L0Ke8d4x5qk5fQkfbmn6byzmt5H9fmVHX7JUWistkFxfLpw0+B9ipJ1rAvQVIU
	 RRwKMCCAm2uzH4UfV9yARrWXQi2rFB3IzkRTmkmA0QSGg4VFe9SjJu67Y3g127jFjx
	 u4pNNedLmlL86UTHMh0Xh3RWkqpBosHxeWMEazt9TZuyshVYisxL85gmcnU/U9PYme
	 wu1bZTNEaPHg3kpfWAA5jBl0iI5P4pzx4kCqoVgGGJnI64mjooQMviZ8los/+vOtEh
	 cgms3kccb3lKw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 34ABE3B29D;
 Tue,  1 Apr 2025 13:26:03 -0400 (EDT)
Received: by mail-ej1-x62e.google.com with SMTP id
 a640c23a62f3a-ac2c663a3daso1121129866b.2; 
 Tue, 01 Apr 2025 10:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1743528362; x=1744133162; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=IC6TjtTxyYFKyOaYD9gFRYVT2hqkld/RlT+yu9Cz8AY=;
 b=KgbuVbjCu6JFhtpbn5qF93xxxIec74itVbtdsm/WdwVQrrC7ZcFdbeN91nao+qy+sf
 QCh6ORLoVbFhWHW28io/+4mYH2QGcTUwBTtfFXjQm7gvNZH/fVoIBsZV1mFYQpugSpEY
 /W64Qh4bht8e5jZsBBg9Bb36c7F0p22Ur3qeaJjO0T7JELIi9DA5ao8ZjeAxj/AodnO+
 al9gLEuTViHyz1Fn4BxyCVg2aoxsRKhClhGheDoDeYAWBtwd8a0d/zRy8yBv0/QnU3sQ
 pLLvUyMJxwjWhzGPbKG44eR7uB0oMKIhm3AaCKQ+oyOGR4I9bLR8WkUbjpiYMAU+qPF6
 W7oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743528362; x=1744133162;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=IC6TjtTxyYFKyOaYD9gFRYVT2hqkld/RlT+yu9Cz8AY=;
 b=kNc/WD65QCbSeGV0ocFXLGUz1yJEV22AdCVK+PoljTmfhqAlrSqn8DiXwFToKHoMEz
 npZNflvg8aAdYkbI/Xw0dVLm3M2LdhUNeom+Sho7QJw2EMpLr3Q6u2MNjsiUz0rUcY+X
 GjLYjd7gvVxWcGzZCUzzt3FEzVJH3rH75gztufO7zATg93F6KuSIEZQHs2/0370+H0Ce
 PRIq8RMZNnRNce6GvbFzm+cB2c00d4Eq1Z9h8AWbyzh7XpokfogdvBkCbCLNHZ/0Wd/W
 wVvjInbuoeRQ5bUCZAfEfNpgYCNXnrF3DfL2cDUZWZ8DaSMCMijtknDfTEnFLv20w+aR
 gy+w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUIMXOSTcdgEYudRfNLPoYS7dAxpwcw2ruF90K0NiXNFSftmBZAot8MOyjBtaIpeSCe4qMyWmGu2KeVunuJlqc=@lists.bufferbloat.net,
 AJvYcCUMQafT/x/V9t0Ew9qGyg7NbFIixl4xssFHzhkL7cFvzuy1yk3mILmu8awNfSK336tY0HP3jQ==@lists.bufferbloat.net,
 AJvYcCUfz3HTJrvD4Di+RR/1nQm6Xr0RLyk41hbRhxtrk6DHF1GCyngBDiBbNhnivqVppjNgSMMTE1M=@lists.bufferbloat.net,
 AJvYcCUvdZt+EN/4kCSzY9xlONQZNBeLPD8RH/qi2Oj3sfPgnhpFlzkWPgFKga3oykKhc2/LdI/kDD0xJtUCYMCd+w==@lists.bufferbloat.net,
 AJvYcCWYozWCaU27PiwkaEBoaiJNJZC8XiQKbeUb26WEUqjVIj8jtlOWe6E5mJsHlGm1aSZFVyFsq71zRg==@lists.bufferbloat.net,
 AJvYcCWdTKGmLjdbzTg/NaTTswa7opqXytCg4R7YPsDk8Lqv9lGD93+g45jZBN1Q2G7JHtcvrTWoP85kIwU=@lists.bufferbloat.net,
 AJvYcCWdrEJTm70EE5QbyLJoU8w7QIzNe3t5ohuU772topiBCOyhxPJN3uVgN0MnTSqMe19lrqivr3J59Lf0NErz//M=@lists.bufferbloat.net,
 AJvYcCWrK3DJ0Wer3+pXxl5oh1kJNMe8/WIVk9ZXVd4w5Zc8wmaSaSkwgm32kvK02My3bUvClLLKSjUpj1KYyzkhqdjG@lists.bufferbloat.net,
 AJvYcCWxFFT8vJWL5+nWeNqNACq0ffzRr3ypH45I5xGuzH8stgbD5Ir0WovSQ5ldoDgaxPiJ00HcXt8=@lists.bufferbloat.net,
 AJvYcCX+11JAL7G1tfdIovsRIJcN7X/dgUqyed3xWohDE2340d10jBeuF2g+wcrVMdua+DriY/7trW1EfiYE7pDvcA==@lists.bufferbloat.net,
 AJvYcCXIEA8rqoz1rTmmubiipvsYenOFDpR8xZBhHmZwDbEtM5rk8LpZuWHqpBZCEwAANGowTynZJhAYR1Va@lists.bufferbloat.net,
 AJvYcCXV63oFCpokyWfojV0z0vTssD/PSLboZ69Turt7SGuJCkaglF2ek1LllYS5P37uF1e8TINf@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YypLZ1qt86E2N4q7ONbuV9JMqqlGui4NOi0oXfn+9pcvwvCTgW+
 /OimxzbrcxDLFWukcEAg4iRVX9Yr1EJMpYqleckW9AJMQyMh80fZe0J/BwouDWdPARa1bgQAv1E
 hwT0BK6cNKiG0Pg4vLR0u80J1K3MbMqvK
X-Gm-Gg: ASbGnctS86iMa/2zp0aIbJ5at7WEyy3+tI50fOlyOcVEzk0ZY3sp29T0qoI3kkC3j8+
 g4gkh2LtAZM11aZwDlzdN95XDlqWvV1HedBNbIhIak9F/MMB4Fz/0EKB7AMyYVbpM3mhbK75I7T
 toU7ztdcLa80syjIrkYzA51cGbv7U=
X-Google-Smtp-Source: AGHT+IEdwlA46wucSCs0bF4lsbLzAuhWE740z0Yl2BZ3d8/H6gu32IaafeksWTBuf5fAp4+CysY4zXLxG8YWnJgp+v0=
X-Received: by 2002:a17:906:7955:b0:ac3:bf36:80eb with SMTP id
 a640c23a62f3a-ac738bf2293mr1411501766b.48.1743528361742; Tue, 01 Apr 2025
 10:26:01 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 1 Apr 2025 19:27:36 +0200
X-Gm-Features: AQ5f1Jq38inap_Lh3GmIYa75UzntY1Hg6Yup6jglSz6tU8zuHVRQxGeGYsKcKnc
Message-ID: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
To: libreqos <libreqos@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, 
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>, 
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net, 
 Cake List <cake@lists.bufferbloat.net>, codel@lists.bufferbloat.net, 
 cerowrt-commits@lists.bufferbloat.net, cerowrt-devel@lists.bufferbloat.net, 
 cerowrt-users@lists.bufferbloat.net, codel-wireless@lists.bufferbloat.net, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 =?UTF-8?Q?Network_Neutrality_is_back=21_Let=C2=B4s_make_the_technical_aspect?=
 =?UTF-8?Q?s_heard_this_time=21?= <nnagain@lists.bufferbloat.net>
Subject: [Cake] =?utf-8?q?In_loving_memory_of_Dave_T=C3=A4ht_=3C3?=
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
Cc: Herbert Wolverson <hwolverson@libreqos.io>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============6000556453754078324=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6000556453754078324==
Content-Type: multipart/alternative; boundary="000000000000a860f00631bad4b6"

--000000000000a860f00631bad4b6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello to all,

We=E2=80=99re devastated to announce that Dave T=C3=A4ht has passed away.
<https://libreqos.io/2025/04/01/in-loving-memory-of-dave/>

Dave was an amazing man, helping the world with FQ-CoDel and CAKE, fighting
bufferbloat and trying to make the world a better place. Always willing to
help, and without him =E2=80=93 LibreQoS (and the other QoE solutions out t=
here)
wouldn=E2=80=99t exist.

Dave was an inspiration, and we all miss him. We=E2=80=99re reaching out to=
 family
and close friends to see if there=E2=80=99s anything we can do to help.

Dave was an inspiration to us. Dave=E2=80=99s contributions to Linux, FQ-Co=
Del, and
CAKE improved internet connectivity around the world for millions of
people. Because of him, millions of people now have access to reliable
video calls =E2=80=93 and in turn, access to loved ones, healthcare, and co=
mmunity.
One of Robert=E2=80=99s ISP customers is a kind paraplegic woman who lives =
in a
far-flung rural Colonia around El Paso, Texas. Her reliable access to her
doctors through telemedicine, and to her family through FaceTime, was only
made possible because of his algorithms. There are millions of cases like
hers, where Dave=E2=80=99s contributions have silently enabled human connec=
tion and
safety. Everything Dave contributed to the world of technology was free and
open source, for the betterment of humanity.

Dave is the reason that Starlink was able to tackle its latency issues =E2=
=80=93
enabling a generation of young entrepreneurs across the developing world,
such as these young folks pictured in the Phillipines, to start their own
ISPs to expand internet access to their communities. Dave started work on
FQ-CoDel in part because of his own journey working to expand internet
access in Nicaragua, so we know he saw that his work had come full-circle
and helped so many.

We=E2=80=99re incredibly grateful to have Dave as our friend, mentor, and a=
s
someone who continuously inspired us =E2=80=93 showing us that we could do =
better
for each other in the world, and leverage technology to make that happen.
He will be dearly missed.

*PS: *Dave is forever in our hearts and souls, in our routers and...in
production!

*https://github.com/LibreQoE/LibreQoS/pull/684
<https://github.com/LibreQoE/LibreQoS/pull/684>*

All the best,

Frank

Frantisek (Frank) Borsik



https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com

--000000000000a860f00631bad4b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello to all,</div><div><br></div><div><a href=3D"htt=
ps://libreqos.io/2025/04/01/in-loving-memory-of-dave/">We=E2=80=99re devast=
ated to announce that Dave T=C3=A4ht has passed away.</a><br><br>Dave was a=
n amazing man, helping the world with FQ-CoDel and CAKE, fighting bufferblo=
at and trying to make the world a better place. Always willing to help, and=
 without him =E2=80=93 LibreQoS (and the other QoE solutions out there) wou=
ldn=E2=80=99t exist.<br><br>Dave was an inspiration, and we all miss him. W=
e=E2=80=99re reaching out to family and close friends to see if there=E2=80=
=99s anything we can do to help.<br><br>Dave was an inspiration to us. Dave=
=E2=80=99s contributions to Linux, FQ-CoDel, and CAKE improved internet con=
nectivity around the world for millions of people. Because of him, millions=
 of people now have access to reliable video calls =E2=80=93 and in turn, a=
ccess to loved ones, healthcare, and community. One of Robert=E2=80=99s ISP=
 customers is a kind paraplegic woman who lives in a far-flung rural Coloni=
a around El Paso, Texas. Her reliable access to her doctors through telemed=
icine, and to her family through FaceTime, was only made possible because o=
f his algorithms. There are millions of cases like hers, where Dave=E2=80=
=99s contributions have silently enabled human connection and safety. Every=
thing Dave contributed to the world of technology was free and open source,=
 for the betterment of humanity.<br><br>Dave is the reason that Starlink wa=
s able to tackle its latency issues =E2=80=93 enabling a generation of youn=
g entrepreneurs across the developing world, such as these young folks pict=
ured in the Phillipines, to start their own ISPs to expand internet access =
to their communities. Dave started work on FQ-CoDel in part because of his =
own journey working to expand internet access in Nicaragua, so we know he s=
aw that his work had come full-circle and helped so many.<br><br>We=E2=80=
=99re incredibly grateful to have Dave as our friend, mentor, and as someon=
e who continuously inspired us =E2=80=93 showing us that we could do better=
 for each other in the world, and leverage technology to make that happen. =
He will be dearly missed.<br></div><div><br></div><div><b>PS: </b>Dave is f=
orever in our hearts and souls, in our routers and...in production!</div><d=
iv><b><a href=3D"https://github.com/LibreQoE/LibreQoS/pull/684">https://git=
hub.com/LibreQoE/LibreQoS/pull/684<br></a></b></div><div><br></div><div><di=
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
iv></div></div></div></div></div>

--000000000000a860f00631bad4b6--

--===============6000556453754078324==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6000556453754078324==--

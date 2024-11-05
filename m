Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C08D89BC71E
	for <lists+cake@lfdr.de>; Tue,  5 Nov 2024 08:36:31 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 361693CB46;
	Tue,  5 Nov 2024 02:36:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1730792185;
	bh=ThMrwLP7u7cK/PWQ6RAUAdtjlbQnKfcQPppei4di8hs=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=GQ1YacaElLjViDGxFJKYDjBTZOlgZXgbKb9sQc/Byf/PwALGhiFpxpczRq/r/uVAF
	 p/x+NiKDjrbI4BDP7kHGMPGYFd3zdh4xnUIj7RNQy2N/CyGNVuaOCobMLjlPYsBbbH
	 Q5DcYf6dzZ56f7XdCpX9oM5VyCiLDvL3Wn6IN9DQCxhlkRebFpZXB9a5yDOysbZ0Qo
	 8d2V4M+BX1IVrLJoCyXB86d5CWa8/rydrK6YAZ6fql3Insx3O2cRymv4LfjiBxFT+C
	 G5PThD4UpDrEk61yGZwDmxyxSzFEs1eungiw1f6V5ACmozyp3knds+AO1vIfdEC+cb
	 KVbH2DIoL/5yw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 74A313B2A4;
 Tue,  5 Nov 2024 02:36:23 -0500 (EST)
Received: by mail-ej1-x62b.google.com with SMTP id
 a640c23a62f3a-a9a2209bd7fso899230666b.2; 
 Mon, 04 Nov 2024 23:36:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1730792182; x=1731396982; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=ctyH+pguj0gnwRpkZ45mLT68jhLuKwPyP/mT2j+4aBw=;
 b=EU+W2cAw0+Efjt7CeNq9zyRTCmXtgBVSdjsYLw4lykzZV9nxPKZYIdt303mEd7OLt0
 7ykbaWtMhOJ2d9VSfhuUxIUGtglxSKF3lAJ7tXXy52uok7F9ERg4lreMACgM/mkqLpvz
 pmlk5S1G9uxdJxsQZBlvtqz3cTpJfeWQ7KGtvXBkTRBWlqYW8zaT0NwZOW62GwYBrKqF
 FNX29F8LHoS35+psr3y5B6LRRnc1GhzTE3wpvaNMI1wr8JJ1Hvr9+w9phW12Io1Fr037
 nbFy2NhWl8169VguoQ1sloone8cddE3VlHUrF1ysZpv5CQibMN+tRcD8UQlUbOzleuMI
 O1dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730792182; x=1731396982;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ctyH+pguj0gnwRpkZ45mLT68jhLuKwPyP/mT2j+4aBw=;
 b=psAwVCmrbyFr1Ck6wQzgZ0J8f5Dh2F5kJcPu6+RwsX8bDitQMNyfHVHlS6tyDzwXSm
 fNYfDIIYKbgaMVUzr9s+FQjNh2YKNkLwoxY0t1Tg3B+QQ0e3SipmNlQ8s/gR4AmOM0NQ
 GnXXc7GbgpfDYczJ8VJOMRNl26w2NjLpYBnSd9X1OzB3rHlbL6bK+cqoXjQElAf6iDyX
 CHFizNCG55vsVz4iWq/+owTEaLINvTAh9QmcgwLgziNW3pQ4f6Qd+kTRLxvfMU0QFBRk
 fwPeN+4z0gibbsbjjcfjxHTx+071TxqHxidzWoGVbBG3H3kn3MHt0ucT8R7qLwa5OJsV
 fm2g==
X-Forwarded-Encrypted: i=1;
 AJvYcCUIGU4VQen7pAULN1RNGN3Y77u1TaWKh2w1yVPOLVijf5ZP5beYEpFul/alJHFTEN7e4OY+0E4=@lists.bufferbloat.net,
 AJvYcCVF+F0acfd6WbMoJ0heRwGfeFGxoi4Fgnt7TBZpzBGN3mYUhC78ozKI7ACMYEwLJ+gyHQCQ12R1kYY=@lists.bufferbloat.net,
 AJvYcCVjc5AlEqDGN3UY0BGvqGVdNoFtYkLIp2TsIibvfmWq/55tzNkwpuokJJT6hQ9ei9IAIjel@lists.bufferbloat.net,
 AJvYcCWM+SVUuhgQbRrAxmFN1c3u7p+I5Ag/5xSEx6Psg8QRnngRUU8DAZvVUQhfueTQmAFE8GGaAloaaM206i/dTa0=@lists.bufferbloat.net,
 AJvYcCXU1a1dOwsVL4riSaySXXADIJX1bldKOeXjYKXk3GxAAhMK15zmoFroYPwg3ReofmW/uXLX@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YznDGuDQmlSd9SmMAJy9ZcPJfEd+QIE+sHS7QFli2e0iRGevuSt
 ULc9Mxzco8XbIng6T0hPLN/fyw7Tgk80o0LQYIjbPq98SFgBhVb2l4VgfSqExQemB0Y/2uIHi30
 Um6swmpWiEN2aF7ERe8esA/l9d2UPytYaq0s=
X-Google-Smtp-Source: AGHT+IG4znjFBEqPWSGAqGgaKtcUFdIbuT3old7LtXSSzRGmrYlDzwVx6nkwW6+aCRLoZh3Y64kKms1MjMcKFBXZ1vQ=
X-Received: by 2002:a17:907:1b84:b0:a9a:bbcc:508c with SMTP id
 a640c23a62f3a-a9de5c91a6emr2255504666b.2.1730792181845; Mon, 04 Nov 2024
 23:36:21 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 5 Nov 2024 08:36:04 +0100
Message-ID: <CAJUtOOjSC-P68w=GguxBCuyJHbZRoFcs-QjMCw3-KYZYJbct0A@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, 
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 libreqos <libreqos@lists.bufferbloat.net>
Subject: [Cake] Measuring Network Latency from a Wireless ISP: Variations
 Within and Across Subnets @ ACM Internet Measurement Conference 2024
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
Content-Type: multipart/mixed; boundary="===============0759729789338409733=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0759729789338409733==
Content-Type: multipart/alternative; boundary="0000000000002dd84306262575f9"

--0000000000002dd84306262575f9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello to all,

There was this wonderful paper presented yesterday at ACM Internet
Measurement Conference 2024 in Madrid, Spain, done by Simon Sundberg, Anna
Brunstrom, Simone Ferlin-Reiter, Toke H=C3=B8iland-J=C3=B8rgensen and Rober=
t Chac=C3=B3n.

Read it here:

*https://dl.acm.org/doi/10.1145/3646547.3688438*
<https://dl.acm.org/doi/10.1145/3646547.3688438>

Other accepted papers can be found here:
https://conferences.sigcomm.org/imc/2024/accepted-papers/

Enjoy!

All the best,

Frank

Frantisek (Frank) Borsik



https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com

--0000000000002dd84306262575f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hello to all,</div><div =
dir=3D"ltr"><br></div><div dir=3D"ltr">There was this wonderful paper prese=
nted yesterday at=C2=A0ACM Internet Measurement Conference 2024 in Madrid, =
Spain, done by=C2=A0Simon Sundberg, Anna Brunstrom, Simone Ferlin-Reiter, T=
oke H=C3=B8iland-J=C3=B8rgensen and Robert Chac=C3=B3n.</div><div dir=3D"lt=
r"><br></div><div>Read it here:</div><div><a href=3D"https://dl.acm.org/doi=
/10.1145/3646547.3688438" target=3D"_blank"><b>https://dl.acm.org/doi/10.11=
45/3646547.3688438<br></b></a></div><div><br></div><div>Other accepted pape=
rs can be found here:</div><div><a href=3D"https://conferences.sigcomm.org/=
imc/2024/accepted-papers/" target=3D"_blank">https://conferences.sigcomm.or=
g/imc/2024/accepted-papers/<br></a></div><div><br></div><div dir=3D"ltr">En=
joy!</div><div dir=3D"ltr"><br clear=3D"all"><div><div dir=3D"ltr" class=3D=
"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>=
<div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>All the best,</div><d=
iv><br></div><div><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Fran=
k<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u>=
</u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frantis=
ek (Frank) Borsik<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rg=
b(34,34,34)"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal" style=3D"color:=
rgb(34,34,34)"><a href=3D"https://www.linkedin.com/in/frantisekborsik" styl=
e=3D"color:rgb(17,85,204)" target=3D"_blank">https://www.linkedin.com/in/fr=
antisekborsik</a><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rg=
b(34,34,34)">Signal, Telegram, WhatsApp: +421919416714=C2=A0<u></u><u></u><=
/p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessage, mobile: +=
420775230885<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,=
34,34)">Skype: casioa5302ca<u></u><u></u></p><p class=3D"MsoNormal" style=
=3D"color:rgb(34,34,34)"><a href=3D"mailto:frantisek.borsik@gmail.com" styl=
e=3D"color:rgb(17,85,204)" target=3D"_blank">frantisek.borsik@gmail.com</a>=
</p></div></div></div></div></div></div></div></div></div></div></div></div=
></div></div>
</div>
</div>

--0000000000002dd84306262575f9--

--===============0759729789338409733==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0759729789338409733==--

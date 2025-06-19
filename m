Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4F8AE0E24
	for <lists+cake@lfdr.de>; Thu, 19 Jun 2025 21:43:59 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 326C63CB50;
	Thu, 19 Jun 2025 15:43:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1750362230;
	bh=t6CPAD5RUlamGniAD1ekqLXKw3ghLjapDthiaAdignk=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:Cc:From;
	b=c/Tsft58Q5RfIf4eYAx2UP613qcyZ0bYi8dkfqPAmdj7jTZTUzrV/zPLH50w2vQhb
	 oUcgQWDcyi79nXAgiRUnuLOuh4AYgzRYPc32S06mzgND9a3a/IgPsd6xpb85ykk4WA
	 HymdX6hq/u4y8l4FjDsgpII0VAwuZtjnVXo/tto/DDs45PR383GY7zRhfmSDI/YlbI
	 m5hZz69q8VMBKQx5BCwPps3ggMf7x64t4VL+44dPXU2rdzPgaMO75/OzLBUOXuow22
	 P0dn7X3vlBU755uFoTdPW0qzlHt7GBBOWdZWNSik/GfWbfg+yy/rjb1MoFnz4d9Cbw
	 tw1/muAGZhbUw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B43073B2A4;
 Thu, 19 Jun 2025 15:43:47 -0400 (EDT)
Received: by mail-ej1-x632.google.com with SMTP id
 a640c23a62f3a-ad88d77314bso221642866b.1; 
 Thu, 19 Jun 2025 12:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1750362226; x=1750967026; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=Ttu+8Jr1LCcVqeUknZA2bejDCMHpWVhgd70m9RYIPXc=;
 b=Kp2I2wc9uVfSlw0MJem4piJk/jnJLKiNQeG5QVgU78l8yFxLuBKBiEnn2vynbv9h9k
 dl7Wz5AxZ1U1Fkn72TSL8DcgzDRqqi7VCKSGB7828boWPTewp4NAkzj4/xivWAkori3n
 WIaJG2bn8OPOrFfQPlZ7kf3nIQWzATL8WFUmz2OMsmUBzbHDwJ8kiOGf+upHaz9rCC5/
 0UX1hM3r+f5mbo5vuY8zpPk00iL9gjrnaymSUIBmY0GS2ZdnAOTq28fleoMWr1Epdiyw
 OpBAGBuCK3W5i1d/dqAh0zJygNd0Jva2VFaSjRx0tL+FdGuz8Bx2yF7n6GD16XvNz0Xx
 lUMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750362226; x=1750967026;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Ttu+8Jr1LCcVqeUknZA2bejDCMHpWVhgd70m9RYIPXc=;
 b=s6k1Lb7QUW8M/maOBCc4xGh2Fi5TvKXf4H3lSGkNr10oq1CNmWwi2wBVOcpdBQlV7C
 3heBZawt3PHSTlC/5RDgrgVN+zO9Ehvw95nYPIOrsJHScVhL0yQx5WdvMf6YvcpjBnx3
 hmBe+TRj+YMmF9p4ZJKasCMiW5kkAbf23IjWoSABqkqNP8q2OL3OZ8Dw99JfOsoXNdk6
 SbVeZWBzArz6IbJ79Qd0124vR2oKMC/KYNmnpcJcurJrQ+7YMT8IwK69MIZAuWlu/2Dk
 FtiAqg9WhRhIWvSM+y4WOW1a2d+A6+UHgxQ91kTEUUhj9mLjLrBd4zXtqbjxkkDaW/C+
 EH+w==
X-Forwarded-Encrypted: i=1;
 AJvYcCU4zcCjzjxjkJpf/Q2VORgxKMHI7G5aw97kZChi9acE1zIOXW54UKmDUUj9nKcrSe4nt10loA==@lists.bufferbloat.net,
 AJvYcCUwktvkfkHt5pCyzDaE2g/EfhN0LITFdF62QbblEs0N2i8MB5C/zewOs2nck8va4yMvPi+RZ+d2yQk8@lists.bufferbloat.net,
 AJvYcCVOK3Oha+zG9/kzuefIB207VjlAfrfinE5ZL3uI9lK+ofRpqdh+2BRd0QJ6mTPxl7aDEEPwTMVT5Pg=@lists.bufferbloat.net,
 AJvYcCVfvKP2JGY4ObZzW71PbzO5pIp4xBbkr6VBLNhUHCehDv/Gn5tqHh5QbOr9GzsVWym/VCVS@lists.bufferbloat.net,
 AJvYcCVrLC/kXAvZ+ptM/y2DFCEIWZssAracnEo1n/UMe/45o/6JvVAWsDk3bSU5yuN+92VMUSnKlp4=@lists.bufferbloat.net,
 AJvYcCX2WAqQVBrGNnZDZoOftt9HPq0Kl7k8r1iBuylDfRjlu9+qBbmXQoicnZlFSacpUrVhKof+7do=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwGhcUM+u00NMsBG5aHsPU3JYzHgj+gMjcw66X6bS4sj1ufWIcl
 W5dRSbgdW6mitwLQWwUxYUB3cGK4LlZHbgtUZZKcD7tcKeLjwep6qBe6k7ciKWxHQ6DzcmWHES5
 CsZoI+sZBkKp4tqxqTwUAL/zEyvqg8SB7AP0C
X-Gm-Gg: ASbGncsIjOhQPeZYLv2edhugal3+X4Uy2tW0OMVM3GiyQ2rlLY/1aeUNLknNn/nBTtT
 mF97eBZtmnBKS5+k47OqPw+jhlqrGstdIdI65dSmizrU8NL2YsKr/QT/kl7DykBIZf3MPqb/UNw
 OZ6kdCX88WM/NIp3kECdHA8uiJYnvzAVtbjhggtmtOfoIHqHzEinZjOw/nQKK4hrgCBCRFnMEeY
 WPF
X-Google-Smtp-Source: AGHT+IHUGL+EXZkCtc7ukPxyG9yBaSMATACDxndHiJG9+1fdyLQ/n8vTsgfYT56p/3/oYUWQ16f48q0t03oOjD+SJHs=
X-Received: by 2002:a17:906:6a09:b0:ade:5fb:53bd with SMTP id
 a640c23a62f3a-ae0579bd655mr19331866b.20.1750362226124; Thu, 19 Jun 2025
 12:43:46 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 19 Jun 2025 21:46:16 +0200
X-Gm-Features: AX0GCFuIgaBX3wEUcylKIjUvcSRA1o0ACvx4JVrbdgk__lSC5hKmOigBm9mFP2I
Message-ID: <CAJUtOOh_VSdHr37nmVtTMqBErA5p4dhzpaCS6gGiPowQcms_-Q@mail.gmail.com>
To: libreqos <libreqos@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, 
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>, 
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net, 
 Cake List <cake@lists.bufferbloat.net>, codel@lists.bufferbloat.net, 
 l4s-discuss@ietf.org
Subject: [Cake] Please,
	co-sign Dave Taht's nomination for Jonathan B. Postel Service Award
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
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============3969090831277621044=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3969090831277621044==
Content-Type: multipart/alternative; boundary="000000000000b76bfe0637f1f650"

--000000000000b76bfe0637f1f650
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello to all,

It's my great pleasure to send out this email. Dave's nomination is ready
to be co-signed *HERE
<https://docs.google.com/document/d/1hRtD9xE6H9cJGQaKIXHi_f_HpoRNK4-4-lS1Zw=
YacXU/edit?tab=3Dt.0>*
(Google Docs).

We are also looking for at least 2 (but the more, the better!) people that
would be willing to write us letters of recommendation that are needed to
be attached to the nomination
<https://wp.apps.internetsociety.org/wp/postel-award/nomination-form/>.

I'm please to announce, that Vint Cerf will be a nominal nominator and we
all know that Dave will appreciate it as much as we all do!

Looking forward to see co-signees pouring in, as well as volunteers willing
to write the letter.

*We need to submit it ASAP, the deadline for the nomination is July 11.*

Thank you very much.

PS: In order to learn more about the award, please visit its website
<https://www.internetsociety.org/grants-and-awards/postel-service-award/#ti=
meline>
.

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

--000000000000b76bfe0637f1f650
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello to all,</div><div><br></div><div>It&#39;s my gr=
eat pleasure to send out this email. Dave&#39;s nomination is ready to be c=
o-signed <b><a href=3D"https://docs.google.com/document/d/1hRtD9xE6H9cJGQaK=
IXHi_f_HpoRNK4-4-lS1ZwYacXU/edit?tab=3Dt.0">HERE</a></b> (Google Docs).</di=
v><div><br></div><div>We are also looking for at least 2 (but the more, the=
 better!) people that would be willing to write us letters of recommendatio=
n that are needed to be attached to the <a href=3D"https://wp.apps.internet=
society.org/wp/postel-award/nomination-form/">nomination</a>.=C2=A0</div><d=
iv><br></div><div>I&#39;m please to announce, that Vint Cerf will be a nomi=
nal nominator and we all know that Dave will appreciate it as much as we al=
l do!</div><div><br></div><div>Looking forward to see co-signees pouring in=
, as well as volunteers willing to write the letter.=C2=A0</div><div><br></=
div><div><b>We need to submit it ASAP, the deadline for the nomination is J=
uly 11.</b></div><div><br></div><div>Thank you very much.</div><div><br></d=
iv><div>PS: In order to learn more about the award, please visit its <a hre=
f=3D"https://www.internetsociety.org/grants-and-awards/postel-service-award=
/#timeline">website</a>.</div><div><br></div><div><div dir=3D"ltr" class=3D=
"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>=
<div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>All the best,</div><d=
iv><br></div><div><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Fran=
k<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u>=
</u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frantis=
ek (Frank) Borsik<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rg=
b(34,34,34)"><br></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><=
b><u></u>In loving memory of Dave T=C3=A4ht:=C2=A0</b><span style=3D"color:=
rgb(32,33,36)">1965-2025</span></p><p class=3D"MsoNormal" style=3D"color:rg=
b(34,34,34)"><u></u><a href=3D"https://libreqos.io/2025/04/01/in-loving-mem=
ory-of-dave/" target=3D"_blank">https://libreqos.io/2025/04/01/in-loving-me=
mory-of-dave/</a></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><=
br></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"http=
s://www.linkedin.com/in/frantisekborsik" style=3D"color:rgb(17,85,204)" tar=
get=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a><u></u><u></u=
></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Signal, Telegram,=
 WhatsApp: +421919416714=C2=A0<u></u><u></u></p><p class=3D"MsoNormal" styl=
e=3D"color:rgb(34,34,34)">iMessage, mobile: +420775230885<u></u><u></u></p>=
<p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Skype: casioa5302ca<u>=
</u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=
=3D"mailto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,85,204)" targe=
t=3D"_blank">frantisek.borsik@gmail.com</a></p></div></div></div></div></di=
v></div></div></div></div></div></div></div></div></div>

--000000000000b76bfe0637f1f650--

--===============3969090831277621044==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3969090831277621044==--

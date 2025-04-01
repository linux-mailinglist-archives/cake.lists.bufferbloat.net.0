Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 126D3A78279
	for <lists+cake@lfdr.de>; Tue,  1 Apr 2025 20:53:20 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1AF633CB4D;
	Tue,  1 Apr 2025 14:53:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1743533595;
	bh=r3CSp7K55yJOBGzZA+mSwsgGAXGWVCrBojyA97z4Ym8=;
	h=Date:In-Reply-To:To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=bsccndkOZO0AD08Hp+g9bgvwyze+UHXV40m0i76LouDVaNTNof1kYJ1c4ms9OmakC
	 OmeM8QfolizGJw5i1usBy7IBZ946ac+wqlB5iil6/IDlBFt+XKJm3JQxr3Mpg9s5R/
	 h9mehVaRV14XK6PB3Kq2txoSF5fjhtN5nbOaH6usfD139SGCu2/qo5CuibnuZBhmrX
	 GnIWNFlU/pbdnGbBuXLpA5zsOEzz/eQFI9FTnUvPWgJeuXERqOaap+RQNkpejajhiR
	 Ei78nfrQlUyScJ8+2+A39Fv790e2f7PB9YQordhsZyN7dOqoY/UAyvgzw70XKZ5F2v
	 sKzG+bzAELowg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
 [209.85.214.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 100CA3B29D;
 Tue,  1 Apr 2025 14:53:14 -0400 (EDT)
Received: by mail-pl1-f173.google.com with SMTP id
 d9443c01a7336-22409077c06so158266875ad.1; 
 Tue, 01 Apr 2025 11:53:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743533593; x=1744138393;
 h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=MDI7cgM4QbJsnUFkTjEUDq0FeAcFWs8BlVF9c3vpqcY=;
 b=ie63bf/0rMIoqmfDb7EyK+M7/RwvP/09TS3D160n4DKb6Fsnvd8SPYZAG40+IOHVL/
 1Sckhxu+WZRYKSZp511IEEwEVAztvvyTLgPCrnto+6eMkdQcbULvKqYByxRcu8WyLs2w
 sj8/hH5QLy5x/W7vpfAN+bHoctFKYAT5jZMor7Wo5k5WKb4UkCekKgChWM05TbKLacyK
 Mb7+RJIu/UTN1UWX0xtlxqC3M2HOtTxwf9MMguIbC0dlIPWBvJZoKsXA1HBxPT5OKeFi
 D75Rz/Am1loG05Vq3DlszZat6mxDtlzoXvYxANlbK1CQfjKQcZ1ZYNsx310PRx5u1q+9
 9coQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUlCmDilMQaQweLXytGF6ejKJlG1QyovWEQXcG3n1l0f3SsW+6EON6iN1s8hBsrWjujaTXN@lists.bufferbloat.net,
 AJvYcCVEGsHRc9DE1cgjOy7E2F/y5n2+4AkB6d12DpgWtnld7WXWw0R4CZBByaVKZ7/EtDdeVcJcJV0=@lists.bufferbloat.net,
 AJvYcCVNYQP1h7AZaxQXGtSJ80kw8RIAecIYg/H8WvKDl1L/kT2kw///lXzFjp/dbw1pNgdl1zpzcv+zaxvK0XMTK3E=@lists.bufferbloat.net,
 AJvYcCVX6pTyDeAL2/9NASqFnMIr4u+WIHSweqULujD9+62PKPANa80jrJ4FCPkR9Lq9+6Q5qsA74Q==@lists.bufferbloat.net,
 AJvYcCVk7HOqcylbqGBtM2n87MfLhzlj414mHZj5JD5gplx0zMkiOin5Yuf5PMt2OgEIcsTmrOc9ojQ=@lists.bufferbloat.net,
 AJvYcCW46Mp5F2C7MvI1yLjIkRJp3qKUFqjXA5Gjnhd9ubhT/9kdWwTi9+7GFpnuH9P2YRyK971D+USjI0U=@lists.bufferbloat.net,
 AJvYcCWSWPnLLE6QnFf28HBZ9F+BYleHLNSYvIN612VTQnU46h1SitZv6jBMXVfYTMnagI/g/TJKkdnkP5ZPPy2PN18=@lists.bufferbloat.net,
 AJvYcCWWwUrWBOLGUbOHmkx5nMP2SgPwqDbtflvmstFuBxaZvSK/GutPeE3zpusRNsNJQt5e/9vCG2AVFrke0FHMDw==@lists.bufferbloat.net,
 AJvYcCWZfwrrig6Ht4l4FXIDb6Kn8U4zhOUbyim3Eg/239ymL9+fzAb/Hw3KR2Icd+X09EzRbY/Qye9PUYBhCPQrrg==@lists.bufferbloat.net,
 AJvYcCXT0Y13Lp4hj5WHB4f2N3KEtS5VSmh/LYIjubOTxTulfrzxVS+TtwNf1aAOoLV1kePxLXROB8LxDEOI@lists.bufferbloat.net,
 AJvYcCXkLce6LcaPMZPoHa6TUe9aHYxdzmOXptzdyRQxogE5mhWTCsqL7YpKBInI2fNjAebz/jzSvou1ew==@lists.bufferbloat.net,
 AJvYcCXt7lixfbUcgXaOSoFDm9NcYeR5i6kQGm23Ua10iJNfuXBmEI3r7Y/u3ZRteJ5ggCpC1IgzvzKRwhLhz6JEdzU9@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yz+yS5Wf4GpPN+xmUR/WUPFRNBSSyGsiQNRrLkssesP/OLKMrah
 GPa9jm5dw/YN7qyPAtDPKNNLiLjlmCYNeOtk3A0OgO8NiyJNldKwFdMNpAD7xtI=
X-Gm-Gg: ASbGncvqnLCDwvSQ5p0+vqafOs++uhBodmrSSuoVHOXjIcTAdQmGsCufNhRIIj/h67t
 rm4dbJh3epRwpqUO2yjGVC41axy04uPplEaQ1jq31ZSDwXpCRlkA3T0u0z1DFUuYx+Z62Evb3B9
 HZtByGyLYSFw2rQcaQWr8+la4pShC7JLR2LYGcdRkVAJduFSEqTaKkFuK0bZ4SxBIL0uxT4olDB
 dnu7KpOzcd8IflOJ3yB7l7iUSwtB/jH7TJ1N5e8nhcHVZQWQNpwrZrKdEhgxWHiML/NvW57zcI9
 HA7i+3BNXe6oL+zxaDr33LmyYUbLk08YORfkYazGubbFh4rigm5zsSiCvDLbkSpF2To0Qr4Vaa2
 y8gXiUK4=
X-Google-Smtp-Source: AGHT+IHgbncMGh6iaalktDZUV+Lr7FaxdQYm416TlgkpnYS5fE0vZDTCM+XD+SAIJ/5JxgWV0oFTIg==
X-Received: by 2002:a17:903:2acb:b0:220:f87d:9d5b with SMTP id
 d9443c01a7336-2292f97a130mr251302785ad.24.1743533592972; 
 Tue, 01 Apr 2025 11:53:12 -0700 (PDT)
Received: from smtpclient.apple ([2600:1700:a700:d930:e08b:5c9a:a452:c97])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2291eec533csm93042025ad.36.2025.04.01.11.53.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Apr 2025 11:53:12 -0700 (PDT)
Message-Id: <EBC76E24-9757-460F-8036-A957592DB9E5@superduper.net>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6.1.9\))
Date: Tue, 1 Apr 2025 11:53:00 -0700
In-Reply-To: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
X-Mailer: Apple Mail (2.3731.700.6.1.9)
Subject: Re: [Cake]
 =?utf-8?q?=5BBloat=5D_In_loving_memory_of_Dave_T=C3=A4ht_?=
 =?utf-8?q?=3C3?=
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
From: Simon Barber via Cake <cake@lists.bufferbloat.net>
Reply-To: Simon Barber <simon@superduper.net>
Cc: codel-wireless@lists.bufferbloat.net,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 cerowrt-commits@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 =?utf-8?Q?Network_Neutrality_is_back!_Let=C2=B4s_make_the_technical_as?=
 =?utf-8?Q?pects_heard_this_time!?= <nnagain@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, cerowrt-devel@lists.bufferbloat.net,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net, cerowrt-users@lists.bufferbloat.net,
 =?utf-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============4909361317068035747=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============4909361317068035747==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8F98E2D6-C123-4BCA-95A7-8EF5907BF252"


--Apple-Mail=_8F98E2D6-C123-4BCA-95A7-8EF5907BF252
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Shocking and terrible news indeed. Dave=E2=80=99s unrelenting dedication =
to fixing the internet was inspirational. I=E2=80=99m sad to not have =
the chance to work with him again, and I=E2=80=99ll miss the songs and =
guitar playing.

Simon


> On Apr 1, 2025, at 10:27 AM, Frantisek Borsik via Bloat =
<bloat@lists.bufferbloat.net> wrote:
>=20
> Hello to all,
>=20
> We=E2=80=99re devastated to announce that Dave T=C3=A4ht has passed =
away. <https://libreqos.io/2025/04/01/in-loving-memory-of-dave/>
>=20
> Dave was an amazing man, helping the world with FQ-CoDel and CAKE, =
fighting bufferbloat and trying to make the world a better place. Always =
willing to help, and without him =E2=80=93 LibreQoS (and the other QoE =
solutions out there) wouldn=E2=80=99t exist.
>=20
> Dave was an inspiration, and we all miss him. We=E2=80=99re reaching =
out to family and close friends to see if there=E2=80=99s anything we =
can do to help.
>=20
> Dave was an inspiration to us. Dave=E2=80=99s contributions to Linux, =
FQ-CoDel, and CAKE improved internet connectivity around the world for =
millions of people. Because of him, millions of people now have access =
to reliable video calls =E2=80=93 and in turn, access to loved ones, =
healthcare, and community. One of Robert=E2=80=99s ISP customers is a =
kind paraplegic woman who lives in a far-flung rural Colonia around El =
Paso, Texas. Her reliable access to her doctors through telemedicine, =
and to her family through FaceTime, was only made possible because of =
his algorithms. There are millions of cases like hers, where Dave=E2=80=99=
s contributions have silently enabled human connection and safety. =
Everything Dave contributed to the world of technology was free and open =
source, for the betterment of humanity.
>=20
> Dave is the reason that Starlink was able to tackle its latency issues =
=E2=80=93 enabling a generation of young entrepreneurs across the =
developing world, such as these young folks pictured in the Phillipines, =
to start their own ISPs to expand internet access to their communities. =
Dave started work on FQ-CoDel in part because of his own journey working =
to expand internet access in Nicaragua, so we know he saw that his work =
had come full-circle and helped so many.
>=20
> We=E2=80=99re incredibly grateful to have Dave as our friend, mentor, =
and as someone who continuously inspired us =E2=80=93 showing us that we =
could do better for each other in the world, and leverage technology to =
make that happen. He will be dearly missed.
>=20
> PS: Dave is forever in our hearts and souls, in our routers and...in =
production!
> https://github.com/LibreQoE/LibreQoS/pull/684
>  <https://github.com/LibreQoE/LibreQoS/pull/684>
>=20
> All the best,
>=20
> Frank
>=20
> Frantisek (Frank) Borsik
>=20
> =20
>=20
> https://www.linkedin.com/in/frantisekborsik
>=20
> Signal, Telegram, WhatsApp: +421919416714=20
>=20
> iMessage, mobile: +420775230885
>=20
> Skype: casioa5302ca
>=20
> frantisek.borsik@gmail.com =
<mailto:frantisek.borsik@gmail.com>_______________________________________=
________
> Bloat mailing list
> Bloat@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/bloat


--Apple-Mail=_8F98E2D6-C123-4BCA-95A7-8EF5907BF252
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;">Shocking and =
terrible news indeed. Dave=E2=80=99s unrelenting dedication to fixing =
the internet was inspirational. I=E2=80=99m sad to not have the chance =
to work with him again, and I=E2=80=99ll miss the songs and guitar =
playing.<div><br></div><div>Simon</div><div><br><div><br><blockquote =
type=3D"cite"><div>On Apr 1, 2025, at 10:27 AM, Frantisek Borsik via =
Bloat &lt;bloat@lists.bufferbloat.net&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div><div dir=3D"ltr"><div>Hello to =
all,</div><div><br></div><div><a =
href=3D"https://libreqos.io/2025/04/01/in-loving-memory-of-dave/">We=E2=80=
=99re devastated to announce that Dave T=C3=A4ht has passed =
away.</a><br><br>Dave was an amazing man, helping the world with =
FQ-CoDel and CAKE, fighting bufferbloat and trying to make the world a =
better place. Always willing to help, and without him =E2=80=93 LibreQoS =
(and the other QoE solutions out there) wouldn=E2=80=99t =
exist.<br><br>Dave was an inspiration, and we all miss him. We=E2=80=99re =
reaching out to family and close friends to see if there=E2=80=99s =
anything we can do to help.<br><br>Dave was an inspiration to us. =
Dave=E2=80=99s contributions to Linux, FQ-CoDel, and CAKE improved =
internet connectivity around the world for millions of people. Because =
of him, millions of people now have access to reliable video calls =E2=80=93=
 and in turn, access to loved ones, healthcare, and community. One of =
Robert=E2=80=99s ISP customers is a kind paraplegic woman who lives in a =
far-flung rural Colonia around El Paso, Texas. Her reliable access to =
her doctors through telemedicine, and to her family through FaceTime, =
was only made possible because of his algorithms. There are millions of =
cases like hers, where Dave=E2=80=99s contributions have silently =
enabled human connection and safety. Everything Dave contributed to the =
world of technology was free and open source, for the betterment of =
humanity.<br><br>Dave is the reason that Starlink was able to tackle its =
latency issues =E2=80=93 enabling a generation of young entrepreneurs =
across the developing world, such as these young folks pictured in the =
Phillipines, to start their own ISPs to expand internet access to their =
communities. Dave started work on FQ-CoDel in part because of his own =
journey working to expand internet access in Nicaragua, so we know he =
saw that his work had come full-circle and helped so =
many.<br><br>We=E2=80=99re incredibly grateful to have Dave as our =
friend, mentor, and as someone who continuously inspired us =E2=80=93 =
showing us that we could do better for each other in the world, and =
leverage technology to make that happen. He will be dearly =
missed.<br></div><div><br></div><div><b>PS: </b>Dave is forever in our =
hearts and souls, in our routers and...in production!</div><div><b><a =
href=3D"https://github.com/LibreQoE/LibreQoS/pull/684">https://github.com/=
LibreQoE/LibreQoS/pull/684<br></a></b></div><div><br></div><div><div =
dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div =
dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div =
dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>All the =
best,</div><div><br></div><div><p class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)">Frank<u></u><u></u></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><u></u></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frantisek (Frank) =
Borsik<u></u><u></u></p><p class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)"><u></u>&nbsp;<u></u></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a =
href=3D"https://www.linkedin.com/in/frantisekborsik" =
style=3D"color:rgb(17,85,204)" =
target=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a><u></u><u=
></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Signal, =
Telegram, WhatsApp: +421919416714&nbsp;<u></u><u></u></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessage, mobile: =
+420775230885<u></u><u></u></p><p class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)">Skype: casioa5302ca<u></u><u></u></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a =
href=3D"mailto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,85,204)" =
target=3D"_blank">frantisek.borsik@gmail.com</a></p></div></div></div></di=
v></div></div></div></div></div></div></div></div></div></div>
_______________________________________________<br>Bloat mailing =
list<br>Bloat@lists.bufferbloat.net<br>https://lists.bufferbloat.net/listi=
nfo/bloat<br></div></blockquote></div><br></div></body></html>=

--Apple-Mail=_8F98E2D6-C123-4BCA-95A7-8EF5907BF252--

--===============4909361317068035747==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4909361317068035747==--

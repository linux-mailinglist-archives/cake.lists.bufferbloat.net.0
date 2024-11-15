Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B739CF9CE
	for <lists+cake@lfdr.de>; Fri, 15 Nov 2024 23:30:32 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0E16E3CB4B;
	Fri, 15 Nov 2024 17:30:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1731709825;
	bh=Yap9eA91WFk2g5C/o80NCJo39cslzCbXYwqrQ/tRH30=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=AgprZ/ETmDWncNnZXneh7E7mynCuB2ACXzcCUqSRwg7cruhXT66/j3rTn14tbtoQD
	 4Zt96G76R+Mmbj8Ozc+CPr6OcHvDsos99oSW+qJnWU0CSYHGd3yA5nCNy0fKR9mH48
	 Dmi3V7GgoU7JPn2h0Z0qyvMWOkoHYGRDRuljJpwVEpaUQwUnIE25acZ3bX1D6Q3R5J
	 oVMJZAfq1w67Iw1jgNxJaNtvMXj5v2ogob0cwYjizEUEH6ZmuH34eCU+3XNL3ZDlu+
	 4KqZEdYotg41K+evF5pgoHcge4fQLDb0buuTL4KcQ3cLTB6bT5lUyZxDBOa8xGfW3N
	 t5osuKMBYRO4Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B8B793B29E;
 Fri, 15 Nov 2024 17:30:22 -0500 (EST)
Received: by mail-ed1-x52d.google.com with SMTP id
 4fb4d7f45d1cf-5cf9ef18ae9so953754a12.1; 
 Fri, 15 Nov 2024 14:30:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1731709821; x=1732314621; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=b1TZUYk9UxnPbACuEdoVhvq/GXB1RF+A7voci2Mma80=;
 b=D0n2Y51IH7sN6Y91FpgF3LKAbIzUZHQeKfC76EFnCGHxWNPDNN/Jz0ZJqHIjCHGH14
 xXntQXRcCG2mI4GLKN+0Nk0nGF4lgoJ2vAbZR9SSza+w0Hy8nsW0A8w4Rysxcjm5BYVq
 APTJIyd2ZdIjjPaCmpy03oBu4xDhKOJYLxg/o4AQssunzsKZRWDq2GcKwDaaqvYMZFts
 OX/kbYJCGpsm4fT4KnNXaOVLOEBLLoMetmEO7nigEUS4v3CEJohQWncJYfuxW/jyCzyt
 TwU1RL4klL8LhWB+JdnmAskNFDofrkOXQQNrDZy6SENA17GeReP6DhIu3mYQIE2MvG3F
 +bgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731709821; x=1732314621;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=b1TZUYk9UxnPbACuEdoVhvq/GXB1RF+A7voci2Mma80=;
 b=HDtH43tplGUB4kJMRUw7ZB9/a5j54tqfMpa+ebNmIwWlSpQd1W8sWMgsJBChh8IxTc
 QnAUrq2ztjP1J8RnNKCqfaFgM4ioRlh/HoKFxY/ryZhwCkBN6H0s6SegJ+nTcO60wBpc
 pvfZtqHMUPtV3XS+DTNBgx+zSWTeBFwY04DZZ6SQEfcrEeEo+tiAT/Rl2lsea4q/5JHJ
 kOFMBEr/SqHsOGlYZyNZ5eN6D4DGi8EKGCGSftiZJCfbw8sKV+/9oytCnA97LIhQ4cNl
 9Z9XhW4btBFfHoZ4FiHxOlDiyEIif6xZuIWDtd3E1Oy/26t954P8xKAQRZs3TMIDh04B
 DTlw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUQoj9zgIB8/so9k46/7qBTkn0szz82v01yQMYZykwpQbcuh1Q8YspE4NL8LxFxOkV5BmEgHFHTybM=@lists.bufferbloat.net,
 AJvYcCV4ykrtzNV43LukeK1xfdarvz5L2nIwQ3m0uSMKz2CX+86298k04wPlcVxY7d7L6PUSC/lF@lists.bufferbloat.net,
 AJvYcCVLkS2I5mDQPPxapOCnzFTIqNih0o7nfCj48ZAGxAULYMoILaeRdkm2HS4O7TWV/S/CBBZ7LUE=@lists.bufferbloat.net,
 AJvYcCW8VmK4b+iheEWm8Q81REMpg58Ct2kT6+Aqq3CdkcWhfPiBBbDAT1GHdgWNxnogUeQFebgNSnd3voQ=@lists.bufferbloat.net,
 AJvYcCWWj2fmRUM4Ee3aeW7QaOd6CUJ82/LgYQDTl1Ge+ojROTEuGJ1ENpYw7zQ1hlzCFiQvpWkQUsfPnrgPjpvgH5A=@lists.bufferbloat.net,
 AJvYcCXgYxDDXx3krJcYB5Y6s63J5ea5FAZ4lBK144bPuckAl+fh8ZNZc7mlC2RdXzU1jU5z2vx3@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxBVSZOnanP3HemViytMsrzxtjNknj66znXoR7maemw9Joo2pi0
 CHt8stU6EfeN4x5DrfUcjOcUueTWo8bu0lD/SmZjAmCLSP9Cks8LTVPLrOZUCC764sICQ5FehpT
 tdPJEi/+DBLS9p0rd3Quz5G1qvdrWCplxljU=
X-Google-Smtp-Source: AGHT+IFoS+DKyFgxX66ENBEossiZTdEUfS1haVqQxT4qTfWtzXLWsQl6nkPgeAfkEt0uDxSciYf0ZROb4XF07hVUIvI=
X-Received: by 2002:a17:907:2d8e:b0:a9a:85b5:2aca with SMTP id
 a640c23a62f3a-aa207688bf2mr798836466b.7.1731709821497; Fri, 15 Nov 2024
 14:30:21 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 15 Nov 2024 23:30:36 +0100
Message-ID: <CAJUtOOh3DpsDAJy22KGzBbNKbbiAZD=R6ukmLRaE6ifNrTboEw@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, 
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 libreqos <libreqos@lists.bufferbloat.net>, l4s-discuss@ietf.org, 
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>
Subject: [Cake] Need for Speed: Minimizing the impact of Bufferbloat | Prof.
 Mohit P. Tahiliani | NITK Surathkal
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
Content-Type: multipart/mixed; boundary="===============3195025579261116522=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3195025579261116522==
Content-Type: multipart/alternative; boundary="000000000000c3b8ce0626fb1c4d"

--000000000000c3b8ce0626fb1c4d
Content-Type: text/plain; charset="UTF-8"

Hello to all,

This was perfect:
https://www.youtube.com/live/FaSaGhqMzVc?si=kjAwtVjKRYwvic6N&t=380

Just start after 6 minute mark, there was some problems with mic of the
speaker prior to it.

It touched everything, from Wi-Fi to latency, bufferbloat, jitter, through
Starlink, FQ_CoDel, CAKE, LibreQoS, L4S, CoDel, PIE, Cobalt....


All the best,

Frank

Frantisek (Frank) Borsik



https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com

--000000000000c3b8ce0626fb1c4d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello to all,</div><div><br></div><div>This was perfe=
ct:</div><div><a href=3D"https://www.youtube.com/live/FaSaGhqMzVc?si=3DkjAw=
tVjKRYwvic6N&amp;t=3D380">https://www.youtube.com/live/FaSaGhqMzVc?si=3DkjA=
wtVjKRYwvic6N&amp;t=3D380</a><br></div><div><br></div><div>Just start after=
 6 minute mark, there was some problems with mic of the speaker prior to it=
.</div><div><br></div><div>It touched everything, from Wi-Fi to latency, bu=
fferbloat, jitter, through Starlink, FQ_CoDel, CAKE, LibreQoS, L4S, CoDel, =
PIE, Cobalt....</div><div><br></div><div><br></div><div><div dir=3D"ltr" cl=
ass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"=
><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"l=
tr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>All the best,</=
div><div><br></div><div><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)=
">Frank<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34=
)"><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">F=
rantisek (Frank) Borsik<u></u><u></u></p><p class=3D"MsoNormal" style=3D"co=
lor:rgb(34,34,34)"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal" style=3D"=
color:rgb(34,34,34)"><a href=3D"https://www.linkedin.com/in/frantisekborsik=
" style=3D"color:rgb(17,85,204)" target=3D"_blank">https://www.linkedin.com=
/in/frantisekborsik</a><u></u><u></u></p><p class=3D"MsoNormal" style=3D"co=
lor:rgb(34,34,34)">Signal, Telegram, WhatsApp: +421919416714=C2=A0<u></u><u=
></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessage, mob=
ile: +420775230885<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:r=
gb(34,34,34)">Skype: casioa5302ca<u></u><u></u></p><p class=3D"MsoNormal" s=
tyle=3D"color:rgb(34,34,34)"><a href=3D"mailto:frantisek.borsik@gmail.com" =
style=3D"color:rgb(17,85,204)" target=3D"_blank">frantisek.borsik@gmail.com=
</a></p></div></div></div></div></div></div></div></div></div></div></div><=
/div></div></div>

--000000000000c3b8ce0626fb1c4d--

--===============3195025579261116522==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3195025579261116522==--

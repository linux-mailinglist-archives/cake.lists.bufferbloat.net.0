Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB4CA105F1
	for <lists+cake@lfdr.de>; Tue, 14 Jan 2025 12:51:18 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 93E533CB47;
	Tue, 14 Jan 2025 06:51:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1736855469;
	bh=V5TvTQsSE83ABeweUlQX/4xT80leKy3HsaBJzBlv3KI=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=V+xoZBnqHGvzXQZMc3oq6uTz5boM06bqnUTODokMHDrTrIBJvVHoj9az9To7zx2bZ
	 nqrICi0xZUb7rWJfVVTMFOTdrL/OEoyACAY/a2+96SBpOFLy7i9G6of06gGtDDGaYq
	 K2et5mWV/idWmkVe7Bma19j2djbzTHed7zuvK5Gtm7KG21ZGi1vl2VUdNuqEzYyRbj
	 z4bQOFudB3+9hsn+7hCRirCuxQrabm27DVmYVEZaZn4tIpBHSTRGGn3zsq/QHQNI3J
	 OButstll8QXAu36yTjGr+n3aqPE2JLHDwDPFNmoUu9iCBS4AOlxZjxfl4M5BbQVOwJ
	 Kz1FSitFib3sg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CBC9F3B29D;
 Tue, 14 Jan 2025 06:51:07 -0500 (EST)
Received: by mail-ed1-x52d.google.com with SMTP id
 4fb4d7f45d1cf-5d647d5df90so9062358a12.2; 
 Tue, 14 Jan 2025 03:51:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736855466; x=1737460266; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=5QhmIJT+UF3tXQF7GXradK3wI9idHXrUwxRUPT6mG3k=;
 b=jZvgZkq9TvtCF1r9ZR0QPCNhfJJF3OcSZHXvaQ1sztUIvUh2o26/vePNIyWTfWgCjk
 aS68pEu6S2VSr6ZVb+QGjN5I0gkXLYm6+Gj4SsVfocFQBC/80NQIDGZcYa+zB87IqBZw
 WEp0rMbzScn7VaHh7OyUOl8sxqBOL2eP92nJ4vIaYPZH5AS3oKtRAvln/X+KOJRgBwnU
 ByCmbr/9ZbHw6Ue0qHJjl6Fip9jow2fUj3XdqXhHWrcylbjC7jHcDAkvInf+SYYmOkUq
 6dTdKygUAPdXQ1sH/K8pqqrxC4+w7mS/3ptSBD44ChYqyt9392LjaKMoGEgUHlOFb6r+
 6RwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736855466; x=1737460266;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=5QhmIJT+UF3tXQF7GXradK3wI9idHXrUwxRUPT6mG3k=;
 b=QqFJ4RKLK7SYItiq7vALrIi4qQPL+hK5H3ZsHKGiFCK9o7rWB9iODtCQxge4tGD/g/
 KgylkpeShHipnNCkOBAXKHubFTtoWC4YnMPjhgSPvTUHj34qKffmQpa87N9lkM1aYHJ2
 VlK96CN+FnPCjKML7JoORLzw6whuYDZ85BibmvATs/a8KzRvX9j88PqJlpz+gTBt03ZY
 rU7U8VuyyVVi/VenCU1JhvhNHlAsAexnQuDXzgMKLh+EDwdPRM28KYpZs1XdOYOqrtwj
 ZKF2//jlRoTPbMX41cjKWrVqjTnrOUBEeYCw14llKuKQBnXN90Y3O0zqXGH0h1ccMEdv
 se9w==
X-Forwarded-Encrypted: i=1;
 AJvYcCU59tHiDKCYSkXHpPPQlgPv8bkS57dh2+MFdQpSj270vVVl1iggs55IrBNi37xXBlBrjSQ1fJnJBPE=@lists.bufferbloat.net,
 AJvYcCUKXcaTW1RyeesOcXaGyp/UMXRRb5bBAOMxtfV/1EXeuI6WTTUNz9w20yQc6rgbLzxvAhal@lists.bufferbloat.net,
 AJvYcCUgZ11Cch9oBaJSekxTgC4/nvWxZeXqGSWRVDF3Vw7kXb3M/YynxhC98Uj3zpxvr8CMkbV2lyc=@lists.bufferbloat.net,
 AJvYcCVfWnrXhPYBq78WxT2EA0vLQku65UNkpXQpOvvACe9N+IcyXTpNQ6UkpnQ7u8srmi2x5lWMMAnyE6qudiQjgek=@lists.bufferbloat.net,
 AJvYcCXhYQ9aD8XguwU0fRHudC/hq1diTJ06TPKiuWKFm4axz7b9RkxSoT3OCk9tTjhJ2tpqDzFR@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwaU3mhicasBag2Y28IrXoUhrK9fZLwqvneht08OF2Y2L1SEB6K
 LCN4rV3pmVmpEW2+0SCpQ/CIM1GQh/n2vAS8XcW2bdTzbvNAXMbXPbcA0XVX/AvZjnLCWlHIXn2
 zRnANGrFcTPKPKboSljpajUuzoZd1RCAxadA=
X-Gm-Gg: ASbGncs/SF86yLgBZ47GxT6yRqqMWKCLBcqpT2MPnan0wUJ/tez80z6E/WsyWz8gT9c
 ZbAdka56f8saJd2k/XoFGW8bhTUYq60GllPiFtEA=
X-Google-Smtp-Source: AGHT+IF89GgrsQO5CBF45JzaXE6CSLTI56uhKzCMv2YkE0qA/5kL+Fnf1BWWGm0j4MnKWJFcz1MGnRhkrJFcVgQhayE=
X-Received: by 2002:a17:906:7308:b0:ab2:faed:f180 with SMTP id
 a640c23a62f3a-ab2faedfd79mr1257872366b.33.1736855466261; Tue, 14 Jan 2025
 03:51:06 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 14 Jan 2025 12:51:35 +0100
X-Gm-Features: AbW1kva8QJVuqdrp9I32Nq8gMcuSb_0-r-aGga0PVJYr7V5S0n9Jt7wLQv1Io6c
Message-ID: <CAJUtOOjTUgSoE3t83BU=Y6qmV2riNeh6qRcAOmxQHHi0_EOVRg@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, codel@lists.bufferbloat.net, 
 Cake List <cake@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>, 
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>
Subject: [Cake] "It GPLs Me" has 16 years already :)
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
Content-Type: multipart/mixed; boundary="===============0693669561465856887=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0693669561465856887==
Content-Type: multipart/alternative; boundary="00000000000017c449062ba92dae"

--00000000000017c449062ba92dae
Content-Type: text/plain; charset="UTF-8"

I was thinking about that song this morning and started my quest to find
it, so here you are - just realized that it's 16 years already:

https://www.youtube.com/watch?v=C3DdvdLQh1U

Can't wait for more songs this year, Dave! <3

PS: Here's a bonus - Starlink one, well-known at this point. It also helped
Elon to get FQ-CoDel on board, lol!
https://www.youtube.com/watch?v=wjur0RG-v-I


All the best,

Frank

Frantisek (Frank) Borsik



https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com

--00000000000017c449062ba92dae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I was thinking about that song this morning and start=
ed my quest to find it, so here you are - just realized that it&#39;s 16 ye=
ars already:</div><div><br></div><div><a href=3D"https://www.youtube.com/wa=
tch?v=3DC3DdvdLQh1U">https://www.youtube.com/watch?v=3DC3DdvdLQh1U<br></a><=
/div><div><br></div><div>Can&#39;t wait for more songs this year, Dave! &lt=
;3</div><div><br></div><div>PS: Here&#39;s a bonus - Starlink one, well-kno=
wn at this point. It also helped Elon to get FQ-CoDel on board, lol! <a hre=
f=3D"https://www.youtube.com/watch?v=3Dwjur0RG-v-I">https://www.youtube.com=
/watch?v=3Dwjur0RG-v-I</a></div><div><br></div><div><br></div><div><div dir=
=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>All =
the best,</div><div><br></div><div><p class=3D"MsoNormal" style=3D"color:rg=
b(34,34,34)">Frank<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:r=
gb(34,34,34)"><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(3=
4,34,34)">Frantisek (Frank) Borsik<u></u><u></u></p><p class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal=
" style=3D"color:rgb(34,34,34)"><a href=3D"https://www.linkedin.com/in/fran=
tisekborsik" style=3D"color:rgb(17,85,204)" target=3D"_blank">https://www.l=
inkedin.com/in/frantisekborsik</a><u></u><u></u></p><p class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)">Signal, Telegram, WhatsApp: +421919416714=C2=
=A0<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">i=
Message, mobile: +420775230885<u></u><u></u></p><p class=3D"MsoNormal" styl=
e=3D"color:rgb(34,34,34)">Skype: casioa5302ca<u></u><u></u></p><p class=3D"=
MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"mailto:frantisek.borsik=
@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">frantisek.bors=
ik@gmail.com</a></p></div></div></div></div></div></div></div></div></div><=
/div></div></div></div></div>

--00000000000017c449062ba92dae--

--===============0693669561465856887==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0693669561465856887==--

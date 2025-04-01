Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BC348AD0082
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:41:13 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8E8273CBF2;
	Fri,  6 Jun 2025 06:40:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749206459;
	bh=tCxxWZlM8YgSLNGd45u8HuCEUrpp3UO9PQrMEYz6LyM=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=D58ExIRGmmG9Ie9fWeKcWuWjYsk8qsTxFWtfeK/pCRPgqMJkg2ELnW+TxPPpnH0sz
	 /Fd7p+QQg/Jn0dtV6cax+g2LtArVnBZ2t84oDdFDDc5t4Nx519EhxWwboXQMnA6qM4
	 qFWvkmu0weH2TVQRUf79GowaOyc6rCHq/ev9dEJkWPHH5GjpCzM4HsSGquGUiaOS75
	 HAcmyFq/tumlXBbjkwrxuzH73/p0VGCSnVj1v5TmsHgosJuPPi3Habfh8ST6gOGOH6
	 uWgt3PbY49o//Q7/q31Wu1Y1dCDw7gNUJ5ogrh4enTmGu8xkcbYtmh5XqcMLqJhjDJ
	 uMZHu/528A8bg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9DA523CB46
 for <cake@lists.bufferbloat.net>; Tue,  1 Apr 2025 13:31:21 -0400 (EDT)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-2264c9d0295so15065ad.0
 for <cake@lists.bufferbloat.net>; Tue, 01 Apr 2025 10:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1743528681; x=1744133481;
 darn=lists.bufferbloat.net; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=xQOkNhFC0StKA4ajpHBiypvi3aG8dup1ej2VzHm6uyk=;
 b=MYflPhcC7ucT2+4AQgeur5pPfJX55OH7lv+wGtbvXg4240RkYuu2zQr7RJVSZEnOPW
 hqPxLNYV7ySt1rHJ0ytp1i/DaKXtaB1dScTXtKGG4Nrczc9Lqee639YMTl4yFCWqTbuq
 lhEAps/oZ5vdG+eoV5/p2ZkkhxuHjlh4JWYKVyZC+GtheeagNM8HA5avPQj4B248wU/t
 GjkZlDmYWrv+rozrsUM79sj5RIGWlRuo1Moj8RGZFWWVQ03wAecm66HIYuMPcZ4e+6r4
 QjEsTV09yNeUa2gPBwZuUng7pggRJumcqUbxTfW9xmQe4GwTPyY9yYgoCdPEBNDkoUzP
 6kvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743528681; x=1744133481;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=xQOkNhFC0StKA4ajpHBiypvi3aG8dup1ej2VzHm6uyk=;
 b=Dw64fe9pcJfdbUYylXiiqEyTzhT+zSdz881nrC0V06Zw44RQ334QEgc3aZuLFrHztX
 E5OHlwiBJ4RlPoLm2mRV/n5/sPifO71gJqUIX+30RfwQPzvJ8TwiheOfEH5kxtyzMx2i
 ViPGDH71EXCT1jTTuB4UalYiGIA354SOpNpFk2F/waqJMeveJ0Rdgcyk5EIDCTa4oDnd
 dHrzQLfp4e+yX4dlnKLOVti/Z9qa6KDaeB41sAOs+suuVPYAWj3zE4Yk7LTyaUzO3nVy
 73trs/OsdCsbf2f8PH+x44mDHWJjoST7bHc8SfvU9KiqotQUJFAeKGxPmqHSliD5J5/N
 XlxA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUKtbi9xVUsy7HOATvY50V1gQ1AV+mEcRRNZdgbd2/Yr9Z148Bnrj5Ot9lKNWAQ5Os7C4F+@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzLEpEslrTPzB7gI/EG6fXqSe5Y+Fvh23SRhodEK0gMWxTSejZw
 O6xT/24GNhig/DD2QelT7uT1lqkx0HefoLZMWRAG+1eczCg/iD1Rsk4aRC4PODF6tAZRsWDD5pX
 2EM7G/69uZmwiNH+w70WVt4raRBrtoUVmbJCa
X-Gm-Gg: ASbGnctycDJeKLzgi7dUFvaYnNFnSmEjySA5AfXV2GhmjYLBHDWh6/DqGMJzDkCx3iU
 34yf3loC59jjgUw4Zp7tyfaJM0citHCqBsQT4v/BR26HWuW34rjepzEb3XCw5oegmnay5rxfoO5
 Y2oVo3y+SM+/0yL5GrExeo/fePA5chlBrSMuaRRUbkku+yDHjNBhlgBjP+DrV+
X-Google-Smtp-Source: AGHT+IE4m8TJAovcYXeZQuwj1QrUTrgpIExEvU7stDT03pC12PKvGiTeHMcixuhUqznBfU1wFQRpTpqdGBCs5s8kbX0=
X-Received: by 2002:a17:902:b214:b0:223:2630:6b86 with SMTP id
 d9443c01a7336-2295d0f02d9mr2554145ad.7.1743528680235; Tue, 01 Apr 2025
 10:31:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
In-Reply-To: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
Date: Tue, 1 Apr 2025 13:31:08 -0400
X-Gm-Features: AQ5f1Jq9AgCTWcBqz8G17f4E5Y9oI98UcpAYISFhbB1Bkk8otD4Wx0KhXHfOxXM
Message-ID: <CAHxHggemafY9UP6Zm3oXVWWX5Wd+ffauot5MCN-6Gv-pOx3=Sg@mail.gmail.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
X-Mailman-Approved-At: Fri, 06 Jun 2025 06:40:58 -0400
Subject: Re: [Cake]
	=?utf-8?q?=5BStarlink=5D_In_loving_memory_of_Dave_T=C3=A4h?=
	=?utf-8?q?t_=3C3?=
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
From: Vint Cerf via Cake <cake@lists.bufferbloat.net>
Reply-To: Vint Cerf <vint@google.com>
Cc: codel-wireless@lists.bufferbloat.net,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 cerowrt-commits@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 =?UTF-8?Q?Network_Neutrality_is_back=21_Let=C2=B4s_make_the_technical_aspect?=
 =?UTF-8?Q?s_heard_this_time=21?= <nnagain@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, cerowrt-devel@lists.bufferbloat.net,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net, cerowrt-users@lists.bufferbloat.net,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============6885901934126087620=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6885901934126087620==
Content-Type: multipart/alternative; boundary="000000000000a4b46b0631bae7fc"

--000000000000a4b46b0631bae7fc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OMG - that is truly terrible news! I could not say better than Frank
already has how much Dave's work has helped to improve our experience of
the Internet. I can't think of anyone more dedicated to the proposition
that performance counts and should be pursued with determination and
vigor.  I've known Dave for many years and greatly valued his counsel and
technical skills - to say nothing of his healthy sense of humor. I will
miss him but will be always grateful to have known him.

vint cerf


On Tue, Apr 1, 2025 at 1:26=E2=80=AFPM Frantisek Borsik via Starlink <
starlink@lists.bufferbloat.net> wrote:

> Hello to all,
>
> We=E2=80=99re devastated to announce that Dave T=C3=A4ht has passed away.
> <https://libreqos.io/2025/04/01/in-loving-memory-of-dave/>
>
> Dave was an amazing man, helping the world with FQ-CoDel and CAKE,
> fighting bufferbloat and trying to make the world a better place. Always
> willing to help, and without him =E2=80=93 LibreQoS (and the other QoE so=
lutions
> out there) wouldn=E2=80=99t exist.
>
> Dave was an inspiration, and we all miss him. We=E2=80=99re reaching out =
to family
> and close friends to see if there=E2=80=99s anything we can do to help.
>
> Dave was an inspiration to us. Dave=E2=80=99s contributions to Linux, FQ-=
CoDel,
> and CAKE improved internet connectivity around the world for millions of
> people. Because of him, millions of people now have access to reliable
> video calls =E2=80=93 and in turn, access to loved ones, healthcare, and =
community.
> One of Robert=E2=80=99s ISP customers is a kind paraplegic woman who live=
s in a
> far-flung rural Colonia around El Paso, Texas. Her reliable access to her
> doctors through telemedicine, and to her family through FaceTime, was onl=
y
> made possible because of his algorithms. There are millions of cases like
> hers, where Dave=E2=80=99s contributions have silently enabled human conn=
ection and
> safety. Everything Dave contributed to the world of technology was free a=
nd
> open source, for the betterment of humanity.
>
> Dave is the reason that Starlink was able to tackle its latency issues =
=E2=80=93
> enabling a generation of young entrepreneurs across the developing world,
> such as these young folks pictured in the Phillipines, to start their own
> ISPs to expand internet access to their communities. Dave started work on
> FQ-CoDel in part because of his own journey working to expand internet
> access in Nicaragua, so we know he saw that his work had come full-circle
> and helped so many.
>
> We=E2=80=99re incredibly grateful to have Dave as our friend, mentor, and=
 as
> someone who continuously inspired us =E2=80=93 showing us that we could d=
o better
> for each other in the world, and leverage technology to make that happen.
> He will be dearly missed.
>
> *PS: *Dave is forever in our hearts and souls, in our routers and...in
> production!
>
> *https://github.com/LibreQoE/LibreQoS/pull/684
> <https://github.com/LibreQoE/LibreQoS/pull/684>*
>
> All the best,
>
> Frank
>
> Frantisek (Frank) Borsik
>
>
>
> https://www.linkedin.com/in/frantisekborsik
>
> Signal, Telegram, WhatsApp: +421919416714 <+421%20919%20416%20714>
>
> iMessage, mobile: +420775230885 <+420%20775%20230%20885>
>
> Skype: casioa5302ca
>
> frantisek.borsik@gmail.com
> _______________________________________________
> Starlink mailing list
> Starlink@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/starlink
>


--=20
Please send any postal/overnight deliveries to:
Vint Cerf
Google, LLC
1900 Reston Metro Plaza, 16th Floor
Reston, VA 20190
+1 (571) 213 1346


until further notice

--000000000000a4b46b0631bae7fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">OMG - that is truly terrible news! I could not say better =
than Frank already has how much Dave&#39;s work has helped to improve our e=
xperience of the Internet. I can&#39;t think of anyone more dedicated to th=
e proposition that performance counts and should be pursued with determinat=
ion and vigor.=C2=A0 I&#39;ve known Dave for many years and greatly valued =
his counsel and technical skills - to say nothing of his healthy sense of h=
umor. I will miss him but will be always grateful to have known him.<div><b=
r></div><div>vint cerf</div><div><br></div></div><br><div class=3D"gmail_qu=
ote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Ap=
r 1, 2025 at 1:26=E2=80=AFPM Frantisek Borsik via Starlink &lt;<a href=3D"m=
ailto:starlink@lists.bufferbloat.net">starlink@lists.bufferbloat.net</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div>Hello to all,</div><div><br></div><div><a href=3D"https://li=
breqos.io/2025/04/01/in-loving-memory-of-dave/" target=3D"_blank">We=E2=80=
=99re devastated to announce that Dave T=C3=A4ht has passed away.</a><br><b=
r>Dave was an amazing man, helping the world with FQ-CoDel and CAKE, fighti=
ng bufferbloat and trying to make the world a better place. Always willing =
to help, and without him =E2=80=93 LibreQoS (and the other QoE solutions ou=
t there) wouldn=E2=80=99t exist.<br><br>Dave was an inspiration, and we all=
 miss him. We=E2=80=99re reaching out to family and close friends to see if=
 there=E2=80=99s anything we can do to help.<br><br>Dave was an inspiration=
 to us. Dave=E2=80=99s contributions to Linux, FQ-CoDel, and CAKE improved =
internet connectivity around the world for millions of people. Because of h=
im, millions of people now have access to reliable video calls =E2=80=93 an=
d in turn, access to loved ones, healthcare, and community. One of Robert=
=E2=80=99s ISP customers is a kind paraplegic woman who lives in a far-flun=
g rural Colonia around El Paso, Texas. Her reliable access to her doctors t=
hrough telemedicine, and to her family through FaceTime, was only made poss=
ible because of his algorithms. There are millions of cases like hers, wher=
e Dave=E2=80=99s contributions have silently enabled human connection and s=
afety. Everything Dave contributed to the world of technology was free and =
open source, for the betterment of humanity.<br><br>Dave is the reason that=
 Starlink was able to tackle its latency issues =E2=80=93 enabling a genera=
tion of young entrepreneurs across the developing world, such as these youn=
g folks pictured in the Phillipines, to start their own ISPs to expand inte=
rnet access to their communities. Dave started work on FQ-CoDel in part bec=
ause of his own journey working to expand internet access in Nicaragua, so =
we know he saw that his work had come full-circle and helped so many.<br><b=
r>We=E2=80=99re incredibly grateful to have Dave as our friend, mentor, and=
 as someone who continuously inspired us =E2=80=93 showing us that we could=
 do better for each other in the world, and leverage technology to make tha=
t happen. He will be dearly missed.<br></div><div><br></div><div><b>PS: </b=
>Dave is forever in our hearts and souls, in our routers and...in productio=
n!</div><div><b><a href=3D"https://github.com/LibreQoE/LibreQoS/pull/684" t=
arget=3D"_blank">https://github.com/LibreQoE/LibreQoS/pull/684<br></a></b><=
/div><div><br></div><div><div dir=3D"ltr" class=3D"gmail_signature"><div di=
r=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>All th=
e best,</div><div><br></div><div><p class=3D"MsoNormal" style=3D"color:rgb(=
34,34,34)">Frank<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb=
(34,34,34)"><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,=
34,34)">Frantisek (Frank) Borsik<u></u><u></u></p><p class=3D"MsoNormal" st=
yle=3D"color:rgb(34,34,34)"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)"><a href=3D"https://www.linkedin.com/in/franti=
sekborsik" style=3D"color:rgb(17,85,204)" target=3D"_blank">https://www.lin=
kedin.com/in/frantisekborsik</a><u></u><u></u></p><p class=3D"MsoNormal" st=
yle=3D"color:rgb(34,34,34)">Signal, Telegram, WhatsApp: <a href=3D"tel:+421=
%20919%20416%20714" value=3D"+421919416714" target=3D"_blank">+421919416714=
</a>=C2=A0<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34=
,34)">iMessage, mobile: <a href=3D"tel:+420%20775%20230%20885" value=3D"+42=
0775230885" target=3D"_blank">+420775230885</a><u></u><u></u></p><p class=
=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Skype: casioa5302ca<u></u><u><=
/u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"mail=
to:frantisek.borsik@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_bl=
ank">frantisek.borsik@gmail.com</a></p></div></div></div></div></div></div>=
</div></div></div></div></div></div></div></div>
_______________________________________________<br>
Starlink mailing list<br>
<a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starlin=
k@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/starlink" rel=3D"noreferr=
er" target=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink</a><b=
r>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature"><div dir=3D"ltr"><div>Please send any postal/overnight deliveries=
 to:</div><div><div>Vint Cerf</div><div>Google, LLC</div><div>1900 Reston M=
etro Plaza, 16th Floor</div><div>Reston, VA 20190</div><div>+1 (571) 213 13=
46<br></div><div><br style=3D"color:rgb(34,34,34)"></div></div><div><br></d=
iv><div>until further notice</div><div><br></div><div><br></div><div><br></=
div></div></div>

--000000000000a4b46b0631bae7fc--

--===============6885901934126087620==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6885901934126087620==--

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E0674A97F96
	for <lists+cake@lfdr.de>; Wed, 23 Apr 2025 08:50:38 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D916C3CB51;
	Wed, 23 Apr 2025 02:50:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1745391022;
	bh=6z2AR6HMDAzte/2bhuViIOQJ4oRNWylTIOC5bqCzRUg=;
	h=References:In-Reply-To:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=QrqAt4cUgNPiYqHvguQezGt8jDVNFw4tRMq8Zt1H0r/EFGDVcDlZTmGZOmA5Cmj4I
	 bbhrcAFvy3/UED0sOZ0IBNUhzLfqXsMoMvu9XeUKVn2k7qhOISGFttkMsBs6d4iumv
	 W5XWwufpjC1Y/sOOYFtygpYkLCN6W9ipwkMeVAQ6tX93xy02cEtF8i4wG3xmIwTTY5
	 pOIQ4VzguwGJbLBo1vCsdN2v03WEdw5OV3Rkd7tnXk3KAHAVE9kZnMM0g0xSvviHQr
	 jPFxYJObrRgPK2i4AGcz2wiF3H2hZvh29IjA8vV05Ocy61BRBaBnbHJgflNMdoY8pu
	 EKWM+wJ7SlK4w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6AC313CB46
 for <cake@lists.bufferbloat.net>; Wed, 23 Apr 2025 02:50:20 -0400 (EDT)
Received: by mail-ej1-x630.google.com with SMTP id
 a640c23a62f3a-ace333d5f7bso204140166b.3
 for <cake@lists.bufferbloat.net>; Tue, 22 Apr 2025 23:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1745391019; x=1745995819; darn=lists.bufferbloat.net;
 h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=A+a7majTz0gjQTB/+eQAGHDhQlVZVZB+JbmNgZ55yvI=;
 b=LONL4dRwMoSV62wtZshn7Kb7JoSHZCJYskRBF6K0zgW9UqiWeZVE6o5QacSJg72h8b
 cLV6iWQsVuvsdD4jQamjM5k1icT1DhWeyvWYgHn02BU31jSMs1q54p4qMQkT/0JYiTXS
 jINo/t6HeebyuzkvRJY/CN6D0oegrNpIO5RQu2KSY8zIPZs6yWEvxfAeE69iLyG996Uc
 Qqx4lbWS6jbKGa173kOaAQ/l90zBNdjA1h+1aAFvBT4US8BCPh0U+mXVNf9A5J4UYkk2
 jKZi9FnufYlMwDQEe81mkip1C8hmvIXxQPhoTMricn08UmMnfVvK//byzHWFDocShFEM
 TlLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745391019; x=1745995819;
 h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=A+a7majTz0gjQTB/+eQAGHDhQlVZVZB+JbmNgZ55yvI=;
 b=LOzXZQGkG6Iem4D+aoXKczYPKp0p+7eADU9sNr3LeoMHaEsPDgbjcBcP1JLb8A1LoE
 xLlbMcClJbipsUEsg0zuCJnjrTpgwVFv/oJ1ri+7N4FDE48fXd4D346FJRdHVeXgBhM0
 GYJ/MGK6NWCj7s0hbJnRp+bo1HRhUN4juCcctLf/RavdBHoRTxj+30Hr9Wwp/lCaw/+O
 YpldMQhaQHV+PVo/sctFEbB/jvBmZUpd1mEoAnkO9hDDg3JRaioOQYEz7zJmApke+LPo
 vKmSIubScYfBk566S0+T6wA4ApI9FA0+pu2I8K07s57Z1tlXkDZLaowGRnL2u2TjatSr
 SJhg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX7TnLTEKWdgV8A3jf5cWRdTvM9FPGRualkEZ1wyNeN6kiHoWwooYg1FOq2IgJzseez7w4g@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YyVjjQ/Xr2jZmLsSTSXfhljIzLGOx+G1/p2EBCanePmA1I/r/2B
 Hpydixglirfjb8EwEMDC+nHr586PmvDTYzGuPNSbwIBZvcHBGPD9uUS8CIbjZs1X2c0Fn0/3Uzf
 FBFMmdcybqD7XIdOI+dNLb2bJ1Qc=
X-Gm-Gg: ASbGncupVch3VzZ8ust+P1t1aUSEQsmiL60CqCTb74XUxMVcBvtbIqm4P2O4VPl/7lj
 WwLreKwNdKM/jY+pA4SncPVI9gcjt/CJhi5oBTYG6FHqut6yBuM48h6GMcNSLeeOT+EUddJ/Bqp
 z4ElxhGBLNTkfjqgqRIO5bbEo=
X-Received: by 2002:a17:907:720a:b0:aca:c699:8d3a with SMTP id
 a640c23a62f3a-acb74b3610bmt1388561266b.22.1745391018904; Tue, 22 Apr 2025
 23:50:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <014po62q-r99p-71np-52r1-n84n9np63nqr@ynat.uz> <87plhvlyoc.fsf@toke.dk>
 <976DC4FC-44CA-4C7E-90E0-DE39B57F01E1@comcast.com>
 <8DA2934A-43D1-4700-8F32-CA424C3FAE8D@comcast.com>
 <1743623511.52759201@apps.rackspace.com>
 <CAOp4FwR71iS-mijozYr7zzuAhajJeqjzw1bGo1eicNWST76erA@mail.gmail.com>
 <CAHxHggcgJT=3SE8FJVnGduE0C0c1hFKu6fHLdnFL2BW5dE1+bw@mail.gmail.com>
 <CAOp4FwQ=ZLVw9VfO7wLi=J2-FsvCxdpT=NTVWzkOw=DPzNxPYg@mail.gmail.com>
 <CAJUtOOiGKOLbtQtrTp-5BTZFUg_rwYKt-BzftjerZTg23QuD=A@mail.gmail.com>
 <CAHxHggdaaxEorCDGqdvFFcuZNv==rfR_1pUMH513fFq5-jO2kA@mail.gmail.com>
 <CAOp4FwS14HN931zyDKw74GByj5=zHbH_xr5ZfGZv4dL-QPAiHw@mail.gmail.com>
 <1B0111B7-7648-4729-952A-243BDC4D4DDC@comcast.com>
In-Reply-To: <1B0111B7-7648-4729-952A-243BDC4D4DDC@comcast.com>
Date: Wed, 23 Apr 2025 08:49:53 +0200
X-Gm-Features: ATxdqUEpl18xB7UVIPZlrEWkzlC8A4Fjx_R5GPtnTZJoTAyzLtQPobmeizNha6E
Message-ID: <CAJUtOOjOC_2psmo=6y0Cgypo7Wwkx+0+j2uDmQUwKhT3ApkCcA@mail.gmail.com>
Subject: Re: [Cake]
	=?utf-8?q?=5BEXTERNAL=5D_Re=3A_=5BMake-wifi-fast=5D__=5BBl?=
	=?utf-8?q?oat=5D_In_loving_memory_of_Dave_T=C3=A4ht_=3C3?=
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
Cc: "cerowrt-users@lists.bufferbloat.net"
 <cerowrt-users@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 "cerowrt-commits@lists.bufferbloat.net"
 <cerowrt-commits@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 =?UTF-8?Q?Network_Neutrality_is_back=21_Let=C2=B4s_make_the_technical_aspect?=
 =?UTF-8?Q?s_heard_this_time=21?= <nnagain@lists.bufferbloat.net>,
 "codel-wireless@lists.bufferbloat.net" <codel-wireless@lists.bufferbloat.net>,
 "cerowrt-devel@lists.bufferbloat.net" <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 "bloat-ietf@lists.bufferbloat.net" <bloat-ietf@lists.bufferbloat.net>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============0921303838750272062=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0921303838750272062==
Content-Type: multipart/alternative; boundary="000000000000aea34606336c83db"

--000000000000aea34606336c83db
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you very much, Larry, for writing this:
https://circleid.com/posts/remembering-dave-taht

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


On Tue, Apr 22, 2025 at 4:04=E2=80=AFPM Livingood, Jason <
jason_livingood@comcast.com> wrote:

> > ISOC has opened a nomination for the Johnathan Postel award, but the
> page is password protected ...
>
> Worked for me w/o a password:
> https://wp.apps.internetsociety.org/wp/postel-award/nomination-form/
>
>
>

--000000000000aea34606336c83db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you very much, Larry, for writing this:=C2=A0<a=
 href=3D"https://circleid.com/posts/remembering-dave-taht">https://circleid=
.com/posts/remembering-dave-taht</a></div><div><br></div><div><div dir=3D"l=
tr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div =
dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>All the=
 best,</div><div><br></div><div><p class=3D"MsoNormal" style=3D"color:rgb(3=
4,34,34)">Frank<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(=
34,34,34)"><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,3=
4,34)">Frantisek (Frank) Borsik<u></u><u></u></p><p class=3D"MsoNormal" sty=
le=3D"color:rgb(34,34,34)"><br></p><p class=3D"MsoNormal" style=3D"color:rg=
b(34,34,34)"><b><u></u>In loving memory of Dave T=C3=A4ht:=C2=A0</b><span s=
tyle=3D"color:rgb(32,33,36)">1965-2025</span></p><p class=3D"MsoNormal" sty=
le=3D"color:rgb(34,34,34)"><u></u><a href=3D"https://libreqos.io/2025/04/01=
/in-loving-memory-of-dave/" target=3D"_blank">https://libreqos.io/2025/04/0=
1/in-loving-memory-of-dave/</a></p><p class=3D"MsoNormal" style=3D"color:rg=
b(34,34,34)"><br></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><=
a href=3D"https://www.linkedin.com/in/frantisekborsik" style=3D"color:rgb(1=
7,85,204)" target=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a=
><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Sig=
nal, Telegram, WhatsApp: +421919416714=C2=A0<u></u><u></u></p><p class=3D"M=
soNormal" style=3D"color:rgb(34,34,34)">iMessage, mobile: +420775230885<u><=
/u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Skype: c=
asioa5302ca<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,3=
4,34)"><a href=3D"mailto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,=
85,204)" target=3D"_blank">frantisek.borsik@gmail.com</a></p></div></div></=
div></div></div></div></div></div></div></div></div></div></div><br></div><=
br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Apr 22, 2025 at 4:04=E2=80=AFPM Livingood, Jason &l=
t;<a href=3D"mailto:jason_livingood@comcast.com">jason_livingood@comcast.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-lef=
t-color:rgb(204,204,204);padding-left:1ex">&gt; ISOC has opened a nominatio=
n for the Johnathan Postel award, but the<br>
page is password protected ...<br>
<br>
Worked for me w/o a password: <a href=3D"https://wp.apps.internetsociety.or=
g/wp/postel-award/nomination-form/" rel=3D"noreferrer" target=3D"_blank">ht=
tps://wp.apps.internetsociety.org/wp/postel-award/nomination-form/</a><br>
<br>
<br>
</blockquote></div>

--000000000000aea34606336c83db--

--===============0921303838750272062==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0921303838750272062==--

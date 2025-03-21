Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 22248A6B60C
	for <lists+cake@lfdr.de>; Fri, 21 Mar 2025 09:27:01 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 94F473CB40;
	Fri, 21 Mar 2025 04:26:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1742545619;
	bh=tax2I4jeylF6x5sRXpnkZNVk3r9A/hxVQFh/MWS1TKc=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=jleCz2sfBFnxNfzpei9oEnjq4AOhdf2vNSrFlg59os086q4fV6f9r7G3EMs8ykFv0
	 EDqGsBTBByMTFPDd+yKH5LLdp58MPKgMToLVC0SgESaKvU8X7h2eoFK4ZKMpQ3oxPO
	 CS9z7w4/63pVxBVz8qr/r2hbi1nkGKlQzTmYmcIN3paHLz1rsDixTGwZdKcA0vrlar
	 Em99vUvPG/sUyh8VVnsiVJPpqxuDL+WWlmADsjwG5k24/4LaLOQ1emTpeKQJf+59iL
	 f90o9ixXF9ZuybL69BDNQ/hGjMvEb31LBjn59MZ3/GH47QPtGGeuuF9xc+/j7rx731
	 JhpsGOchkOyRg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 71AE73B29D
 for <cake@lists.bufferbloat.net>; Fri, 21 Mar 2025 04:26:57 -0400 (EDT)
Received: by mail-ej1-x62f.google.com with SMTP id
 a640c23a62f3a-ac345bd8e13so301613366b.0
 for <cake@lists.bufferbloat.net>; Fri, 21 Mar 2025 01:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1742545616; x=1743150416; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=AZHEJckTKFmwcoFgtoTukbI/8x5gs2+v4o6+Dwbhlko=;
 b=Kwg2JJeAsUj95pa9Yq7BRneknIqVP90KDzRrw7f4eH9/leWaLt8C7L2iUWSeq39isL
 lHmEgfGBjhDLp7e+fCFIxuBSerI3YgRi7VZDtdWaxlDqgHnv9wOH84ahZD0Vjht9Cs2c
 raC3ANIMpD91z2wq73LkFaN647FfY/jakFqC2OBci6HCjt1U4MZA1qMXrTDTNvpDuibc
 afsUSyhrk2bH27M4g260Xi6S1eMbyhNs7ywpuosLPFbUHED4vQut2WsZ7cL2CGNZTjq0
 yOMvVRhwVExeWGFAjS4on2rqLbj2QbVg8QXO5uxrGAwwC0C79ui665jEuzg4Ib6zzV7V
 ID6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742545616; x=1743150416;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=AZHEJckTKFmwcoFgtoTukbI/8x5gs2+v4o6+Dwbhlko=;
 b=iKJ/zQLYmZej/A3OIpQhP6JpXHlBfHg4bONeVxxJXgEU5+FU+IvxWC0Lq2da5nxrYi
 AalKvlLAdW8sBtx0khmpVTskQefhegRGYPXC81pIMYCFniR51B/5iMzqYyPCBDaLsFhe
 CgNIVvv05LiLAeGqOcAJMK7KITjMSnGMtLgowbykQyNq+OMXqI1xdMiXuxjGG/ZVbWEG
 CFaWpPol3z/5hxGdBIqorHX5Vg6/01SFDEIyKd9CtPevTFtoQuddBuCBDf6ax+IrSBTv
 NSRFsX2uCvF2T3XAXazF7VI6uj4lSf9qZ+6k2/fQ/EqpFNHt7Fls7WFw4D2tRsPSzzw+
 v5/g==
X-Gm-Message-State: AOJu0YyBj2BeI9BiJyURId8irRgnZLBha78bs4NPFxIXL07jO18e9SZk
 h0WqUGscW8pLfR1V7Ws9UVSrX66y9tODt+Rul5hmv/qimMBzFDwdXS5a5qdqxEj0oEzxhG6LGrX
 SMqM1k9523M246MzbUshAEF7h+fc=
X-Gm-Gg: ASbGncs98c6qYT4grCn+BHV0W16OwB63T27b/UvMCcZ05XQeq01ucKCSipHBHfemeWF
 /MSYAt7zD1feDZwkjewraGA70kPypj/7Fby//x+x4l//MkET4d6kzsYKOc0ld0LV2qIdZKFJbPd
 04CnHzKqO0IJVDnbbBrtu7KbLk2I8=
X-Google-Smtp-Source: AGHT+IGtkZkzowTaUooYFGCXJJDdJqbmSv2IItLEj8IIAxHAewgvSeXy3vX+sFXi0QOjx1RDjaG+COaAbUv11YyBEAc=
X-Received: by 2002:a17:907:8692:b0:ac2:a1fd:551e with SMTP id
 a640c23a62f3a-ac3f2560055mr173121566b.55.1742545615812; Fri, 21 Mar 2025
 01:26:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOh3DEL==w8uYTkPEyhZpgYbLx5xbyLJtXCCpNUE+SQyJg@mail.gmail.com>
 <7FBEC0CA-162E-48A2-81D6-97CDD2F63EEC@gmail.com>
In-Reply-To: <7FBEC0CA-162E-48A2-81D6-97CDD2F63EEC@gmail.com>
Date: Fri, 21 Mar 2025 09:27:56 +0100
X-Gm-Features: AQ5f1Jq7tJ3MsPMXr91gWNSw0gryI2wQRnIAhzqjD2EkHPH6P2VrYQescJqcZVM
Message-ID: <CAJUtOOj1+US-u-aB=8=dCFnoi1pCmzjojSUY-46mL7_Uq3fV8A@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>, jordan@inacomptc.com, 
 Jeff Hansen <x@jeffhansen.com>, contact@daryllswer.com
Subject: Re: [Cake] CAKE is going to be deployed on Alta Labs any day now!
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============6697031979887468901=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6697031979887468901==
Content-Type: multipart/alternative; boundary="0000000000006f7fa70630d604a1"

--0000000000006f7fa70630d604a1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Happy to see that! Thanks, guys.

Adding Jeff <https://www.linkedin.com/in/jeff-hansen-6794021/>, Alta Labs
CTO - Darryl <https://x.com/DaryllSwer/status/1902486684476047544> has a
suggestion how to push this further: "Maybe they can add both FQ_CoDel and
CAKE with BQL support? How's hardware-offloading of FQ_CoDel looking on
these =E2=80=9Cprosumer=E2=80=9D equipment these days? I haven't kept up ov=
er a year on
this topic."

All the best,

Frank

Frantisek (Frank) Borsik



https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com


On Fri, Mar 21, 2025 at 3:44=E2=80=AFAM Jonathan Morton <chromatix99@gmail.=
com>
wrote:

> > On 19 Mar, 2025, at 12:01 am, Frantisek Borsik via Cake <
> cake@lists.bufferbloat.net> wrote:
> >
> > Should be pushed through production in day or two and they will be
> talking about it on https://streamyard.com/watch/ubYm2AffWkYi this
> Wednesday,  March 19, at 1PM EST / 12PM CST / 11AM MST / 10AM PST
>
> I joined the stream, and was able to ask about the throughput they were
> getting with CAKE on their hardware.  This is just for the "Route 10"
> rather than their APs, and they reported getting about 2.5Gbps throughput
> with CAKE enabled. They do correctly note that the hardware-accelerated
> forwarding path is disabled for the interface where CAKE is turned on.
>
> Supporting 2.5Gbps is pretty good I think, and should be sufficient to
> handle all practical Internet subscriptions that are likely to require
> bufferbloat mitigation.  For comparison, on the same call they claimed
> about 800Mbps throughput for acting as a WireGuard tunnel endpoint.
>
>  - Jonathan Morton

--0000000000006f7fa70630d604a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Happy to see that! Thanks, guys.</div><div><br></div>=
<div>Adding <a href=3D"https://www.linkedin.com/in/jeff-hansen-6794021/" ta=
rget=3D"_blank">Jeff</a>, Alta Labs CTO - <a href=3D"https://x.com/DaryllSw=
er/status/1902486684476047544" target=3D"_blank">Darryl</a> has a suggestio=
n how to push this further: &quot;Maybe they can add both FQ_CoDel and CAKE=
 with BQL support? How&#39;s hardware-offloading of FQ_CoDel looking on the=
se =E2=80=9Cprosumer=E2=80=9D equipment these days? I haven&#39;t kept up o=
ver a year on this topic.&quot;</div><div><br></div><div><div dir=3D"ltr" c=
lass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr=
"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"=
ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>All the best,<=
/div><div><br></div><div><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34=
)">Frank<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,3=
4)"><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">=
Frantisek (Frank) Borsik<u></u><u></u></p><p class=3D"MsoNormal" style=3D"c=
olor:rgb(34,34,34)"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal" style=3D=
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
</div></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Mar 21, 2025 at 3:44=E2=80=AFAM Jonathan Morton &lt=
;<a href=3D"mailto:chromatix99@gmail.com" target=3D"_blank">chromatix99@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;borde=
r-left-color:rgb(204,204,204);padding-left:1ex">&gt; On 19 Mar, 2025, at 12=
:01 am, Frantisek Borsik via Cake &lt;<a href=3D"mailto:cake@lists.bufferbl=
oat.net" target=3D"_blank">cake@lists.bufferbloat.net</a>&gt; wrote:<br>
&gt; <br>
&gt; Should be pushed through production in day or two and they will be tal=
king about it on <a href=3D"https://streamyard.com/watch/ubYm2AffWkYi" rel=
=3D"noreferrer" target=3D"_blank">https://streamyard.com/watch/ubYm2AffWkYi=
</a> this Wednesday,=C2=A0 March 19, at 1PM EST / 12PM CST / 11AM MST / 10A=
M PST<br>
<br>
I joined the stream, and was able to ask about the throughput they were get=
ting with CAKE on their hardware.=C2=A0 This is just for the &quot;Route 10=
&quot; rather than their APs, and they reported getting about 2.5Gbps throu=
ghput with CAKE enabled. They do correctly note that the hardware-accelerat=
ed forwarding path is disabled for the interface where CAKE is turned on.<b=
r>
<br>
Supporting 2.5Gbps is pretty good I think, and should be sufficient to hand=
le all practical Internet subscriptions that are likely to require bufferbl=
oat mitigation.=C2=A0 For comparison, on the same call they claimed about 8=
00Mbps throughput for acting as a WireGuard tunnel endpoint.<br>
<br>
=C2=A0- Jonathan Morton</blockquote></div>

--0000000000006f7fa70630d604a1--

--===============6697031979887468901==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6697031979887468901==--

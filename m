Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BCC9D403F
	for <lists+cake@lfdr.de>; Wed, 20 Nov 2024 17:40:31 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 14E4C3CB58;
	Wed, 20 Nov 2024 11:40:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1732120816;
	bh=mz6MAxgDWbPIJLr2Id0t8eegvgtqxPo19mCYsG3KENA=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=VbHij4FWNbz6KW5fBZ4tyGBfMBEbS8CrHWSWCkEO1hpoGJVHPM8Vo4DyAyasrOqcT
	 TzKOPWlzweV6m4hbojUXi58bNtdQuIWD51hOxLDNXCXhWKl5h1RCgegrzWFApQbccm
	 egD+zpHPzDhOPiLnUDYvYlQdcs5JjdMdyQBZc+UqoWEbvgRytvblJUCAN/Gmk+7zgY
	 d4NKm3vsFsTksMoPuP4OfVjDJxJKC8aLBC3BshzfzOE7vnjyKAla73yd6h5BMFqCpk
	 HJJcpOb9njxZJIRACfMn52XwQI4ZS/C50AQLDlXA9vVTOXmzU9dO9TCf/CdSVa790Q
	 rEUyY0IXIizpA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3F6733CB39;
 Wed, 20 Nov 2024 11:40:13 -0500 (EST)
Received: by mail-ej1-x632.google.com with SMTP id
 a640c23a62f3a-a9e71401844so721535066b.3; 
 Wed, 20 Nov 2024 08:40:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1732120812; x=1732725612; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=x8XilgBEvRrCLDiQcHRp6qA1WNaOYzl0N07ExSAAGbQ=;
 b=Dnp+O6SUy8m46jazKQ2SqHopl86nINHZUyQRSzNE3+9p+ZsdnFeg1H5DOlJqbkXYDb
 HlRtOJQxRvuRJrwwuxUTjn2HtpCZR++2CbqfCrGmm1Bb3eIRt6xN/DT3GLTBhTjRBuD6
 mVpvB2AjDni2yNB1Gh9FDOxw1xBz02iiUIIZo4jAfAtkz9U7FvMUrMG2o/kSeDCha2bH
 xHJhL8ahmycOaKr9PDfryDwfYRADQzwjfQvnjwRP7rVyLZx4U+sO/hTceNYkFNuEMJIA
 PJr5/ZT/ruFqd/7raSVBDUP661WTgk6FX+wRDXjCBfeGVKc2AA2YAiqOjQvuTDFOIgci
 T2Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732120812; x=1732725612;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=x8XilgBEvRrCLDiQcHRp6qA1WNaOYzl0N07ExSAAGbQ=;
 b=mkrBMq88Isqv/lwSr3JEV7Ad6KHRchHo629HUB2kCDsurcHnEqTG5z5Y8XmpcZ/1LM
 UHeaGKgQS+gG7HaF1jQVyfcLMnqepOHE+DKdaM+kOvCkHzg5wuB4e5rH5Bk8jhEf3rYR
 rofhZiut3PnVS2XoIfAh8VqnXluC2h+30CQG6H+o5BTR+PypsjY8ej6mC7vMQOVApZRo
 oYRrj4wpp2+cIfMi1xUljqW92JofgTHBAPgzrXqgA9HMXVO94p1MdPfSTQlkTM6UBS0L
 wWVySchoqavZbDot59oX3bEWq/fLdS7bOgHoJ4Mq88P58Za4aAP2DIWvZz/x1EBbhnAs
 UPxA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU97L8HJ2tkvwKbQXDdQui/AuEgev79Y7C6NVc3Kqan6RbbZNS78Iy7ppZkofNN4QpbC/kp+Nv0HUE=@lists.bufferbloat.net,
 AJvYcCUDeDD7coWe6unZck1mj3FtJemgm/UhV0DqQFYYVk0wMUvqS/D1XUMthoXpq7S2RseBUnsDu7QryqE=@lists.bufferbloat.net,
 AJvYcCUk9OpLLjlZlfrDF/6FuYBy8946qcpVeYP5F9vWE41HzeUhQ3XhV5CZJmgwQHCDbI2tMmM6wCI=@lists.bufferbloat.net,
 AJvYcCUy+I6gzZrXmp9SM1D7hy7WdHmoF6uCXxBLaAQtYId2Ja6SZpQ/KxtHFri5bUZ2ezfspK4+uA==@lists.bufferbloat.net,
 AJvYcCWA47YxczDyszyAgumo+mpAPnBzQCsBbl8EiOi7Htqs6X4JnJk473QafNDoQPaTOZCGCb/e@lists.bufferbloat.net,
 AJvYcCWGoxKoYJ4DyCl+wGh6nTjsaTdihb1PEOvCK+LprsPbOG6ze+ZY3b1tENWRA+T6ppblO2QVfrhMawNQPpVzxnw=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxE+PRGQUcqZTEaJCxt5xtMPGovbljoSeGJNwn2Gpu/R+1OdibV
 KSrqFjFQfU4IQoLmy5BgA6xTSf/kRQ6xLdDfQ7PkkkHRxiSYN6l9gv3v4cxdBmIOAfNDSEj8qi5
 Hw1yGEYNc3nO6z0vEuKTpN2L2bcPD9anz
X-Google-Smtp-Source: AGHT+IHs1Mi//TH+pmwuwDhf4x72Zo10BXQI/gL6psLGF77X4guvMbHlqOaMs5UG8jcdL4Pu2+RRWqoZ7BQb4LPSCs4=
X-Received: by 2002:a17:907:25cd:b0:a99:caf5:c897 with SMTP id
 a640c23a62f3a-aa4dd552169mr327087366b.20.1732120811792; Wed, 20 Nov 2024
 08:40:11 -0800 (PST)
MIME-Version: 1.0
References: <B5C591F0-DC26-4152-B5E7-4BB0E4539BEC@icann.org>
In-Reply-To: <B5C591F0-DC26-4152-B5E7-4BB0E4539BEC@icann.org>
Date: Wed, 20 Nov 2024 17:39:43 +0100
Message-ID: <CAJUtOOhfTj8efKBSYZmAZ2CkSa+wrhNRnYBsZF0Lr2vfMS6KNA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, 
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, 
 libreqos <libreqos@lists.bufferbloat.net>, codel@lists.bufferbloat.net, 
 l4s-discuss@ietf.org
Subject: [Cake] Fwd: [safnog] Webinar 25 Nov. 2024 - Internet Measurement
 Webinar: Causes and Consequences of Major Internet Outages in Africa in
 2024
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
Content-Type: multipart/mixed; boundary="===============6403542762962796610=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6403542762962796610==
Content-Type: multipart/alternative; boundary="000000000000b1f24d06275acde3"

--000000000000b1f24d06275acde3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello to all,

If you are interested in the topic of Internet in Africa by any chance,
here is an interesting webinar on it.

November 25 @ from 10:00 to 12:00 UTC

All the best,

Frank

Frantisek (Frank) Borsik



https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com


---------- Forwarded message ---------
From: Yazid Akanho <yazid.akanho@icann.org>
Date: Wed, Nov 20, 2024 at 8:49=E2=80=AFAM
Subject: [safnog] Webinar 25 Nov. 2024 - Internet Measurement Webinar:
Causes and Consequences of Major Internet Outages in Africa in 2024
To: safnog@lists.safnog.org <safnog@lists.safnog.org>


Please see French version below,

Voir texte en Fran=C3=A7ais plus bas.



Dear,



AUDA, ICANN and ISOC are hosting a *free webinar on* *25 November 2025 from
10:00 to 12:00 UTC* to help community members use Internet monitoring tools
to evaluate the state of Internet resilience. African ICT decision-makers,
telecommunication regulators, telecommunication and Internet service
providers, and technical community members are encouraged to join.



During the webinar, participants will learn about:

   - The causes and impact of the 14 March 2024 subsea outage incident and
   how to avoid similar scenarios using Internet Society=E2=80=99s Pulse da=
ta.
   - The limitations of the current African Internet measurement
   infrastructure. Despite several past initiatives, there is still a low
   number of Internet measurement platforms, usage, deployment, and
   capabilities in Africa, and unfortunately, this footprint is decreasing.
   For example, only 240 of the 12,000+ connected RIPE Atlas probes worldwi=
de
   are in Africa.
   - Increasing Internet measurement infrastructure in Africa to support
   the resilience of the Internet on the continent.



- Event page:
https://pulse.internetsociety.org/blog/webinar-causes-and-consequences-of-m=
ajor-internet-outages-in-africa-in-2024-and-how-to-mitigate-them

- Registration link:
https://icann.zoom.us/webinar/register/WN_B2v7t5fgQUmON5EzZJntWQ#/registrat=
ion
<https://urldefense.com/v3/__https:/icann.zoom.us/webinar/register/WN_B2v7t=
5fgQUmON5EzZJntWQ*/registration__;Iw!!PtGJab4!-pCW2Lk8KYmaf2n-oKajfj-e9AnND=
3QJrvbh8NbMIP4RJ62yx4K5Ek7df8AjFeC8nZ0lb_0lFK0w8RT7LBbxFmB5Zupo8A$>



Languages available: AR - Arabic, FR - French, PT =E2=80=93 Portuguese, EN =
=E2=80=93 English



Looking forward to seeing you attend and contribute to this session.






Tr=C3=A8s cher,



AUDA, ICANN et ISOC organisent un *webinaire gratuit le 25 novembre 2025 de
10h00 =C3=A0 12h00 UTC* pour accompagner les membres de la communaut=C3=A9 =
=C3=A0 utiliser
les outils de supervision Internet pour =C3=A9valuer l'=C3=A9tat de la r=C3=
=A9silience
d'Internet. Les d=C3=A9cideurs africains des TIC, les r=C3=A9gulateurs des
t=C3=A9l=C3=A9communications, les fournisseurs de services de t=C3=A9l=C3=
=A9communication et
d'Internet et les membres de la communaut=C3=A9 technique sont encourag=C3=
=A9s =C3=A0 y
participer.



Au cours du webinaire, les participants d=C3=A9couvriront :

   - les causes et impacts de de l=E2=80=99incident des c=C3=A2bles sous-ma=
rins du 14
   mars 2024 et comment =C3=A9viter des sc=C3=A9narios similaires en utilis=
ant les
   donn=C3=A9es Pulse de l'Internet Society.
   - les limites de l'infrastructure de mesure Internet africaine actuelle.
   Malgr=C3=A9 plusieurs initiatives pass=C3=A9es, le nombre de plateformes=
 de mesure
   Internet, d'utilisation, de d=C3=A9ploiement et de capacit=C3=A9s en Afr=
ique reste
   faible et, malheureusement, cette empreinte diminue. Par exemple, seules
   240 des plus de 12.000 sondes RIPE Atlas connect=C3=A9es dans le monde s=
e
   trouvent en Afrique.
   - l'augmentation de l'infrastructure de mesure Internet en Afrique pour
   soutenir la r=C3=A9silience d'Internet sur le continent.



- Page de l'=C3=A9v=C3=A9nement :
https://pulse.internetsociety.org/blog/webinar-causes-and-consequences-of-m=
ajor-internet-outages-in-africa-in-2024-and-how-to-mitigate-them

- Lien d'inscription :
https://icann.zoom.us/webinar/register/WN_B2v7t5fgQUmON5EzZJntWQ#/registrat=
ion



Langues disponibles durant le webinaire : AR - Arabe, FR - Fran=C3=A7ais, P=
T -
Portugais, EN - Anglais



Au plaisir de vous voir participer et contribuer =C3=A0 cette session.



--=20

Yazid
_______________________________________________
safnog mailing list
safnog@lists.safnog.org
http://lists.safnog.org/listinfo/safnog

--000000000000b1f24d06275acde3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello to all,</div><div><br></div><div>If you are int=
erested in the topic of Internet in Africa by any chance, here is an intere=
sting webinar on it.</div><div><br></div><div>November 25=C2=A0@=C2=A0from =
10:00 to 12:00 UTC </div><div><br></div><div><div dir=3D"ltr" class=3D"gmai=
l_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div =
dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>All the best,</div><div><b=
r></div><div><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frank<u><=
/u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><=
u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frantisek (F=
rank) Borsik<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,=
34,34)"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(3=
4,34,34)"><a href=3D"https://www.linkedin.com/in/frantisekborsik" style=3D"=
color:rgb(17,85,204)" target=3D"_blank">https://www.linkedin.com/in/frantis=
ekborsik</a><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,=
34,34)">Signal, Telegram, WhatsApp: +421919416714=C2=A0<u></u><u></u></p><p=
 class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessage, mobile: +42077=
5230885<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34=
)">Skype: casioa5302ca<u></u><u></u></p><p class=3D"MsoNormal" style=3D"col=
or:rgb(34,34,34)"><a href=3D"mailto:frantisek.borsik@gmail.com" style=3D"co=
lor:rgb(17,85,204)" target=3D"_blank">frantisek.borsik@gmail.com</a></p></d=
iv></div></div></div></div></div></div></div></div></div></div></div></div>=
<br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">--=
-------- Forwarded message ---------<br>From: <strong class=3D"gmail_sender=
name" dir=3D"auto">Yazid Akanho</strong> <span dir=3D"auto">&lt;<a href=3D"=
mailto:yazid.akanho@icann.org">yazid.akanho@icann.org</a>&gt;</span><br>Dat=
e: Wed, Nov 20, 2024 at 8:49=E2=80=AFAM<br>Subject: [safnog] Webinar 25 Nov=
. 2024 - Internet Measurement Webinar: Causes and Consequences of Major Int=
ernet Outages in Africa in 2024<br>To: <a href=3D"mailto:safnog@lists.safno=
g.org">safnog@lists.safnog.org</a> &lt;<a href=3D"mailto:safnog@lists.safno=
g.org">safnog@lists.safnog.org</a>&gt;<br></div><br><br><div class=3D"msg-6=
89756259443809049">





<div lang=3D"en-BJ" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:b=
reak-word">
<div class=3D"m_-689756259443809049WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Please see French version below=
,=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"FR">Voir texte en Fran=C3=A7ais plus b=
as.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"FR">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Dear,=C2=A0</span><u></u><u></u=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">AUDA, ICANN and ISOC are hostin=
g a=C2=A0<b>free webinar on</b>=C2=A0<b>25 November 2025 from 10:00 to 12:0=
0 UTC</b>=C2=A0to help community members use Internet monitoring tools to e=
valuate the state of Internet resilience. African ICT
 decision-makers, telecommunication regulators, telecommunication and Inter=
net service providers, and technical community members are encouraged to jo=
in.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">During the webinar, participant=
s will learn about:</span><u></u><u></u></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoNormal"><span lang=3D"EN-US">The causes and impact of the 1=
4 March 2024 subsea outage incident and how to avoid similar scenarios usin=
g Internet Society=E2=80=99s Pulse data.</span><u></u><u></u></li><li class=
=3D"MsoNormal"><span lang=3D"EN-US">The limitations of the current African =
Internet measurement infrastructure. Despite several past initiatives, ther=
e is still a low number of Internet measurement platforms, usage, deploymen=
t,
 and capabilities in Africa, and unfortunately, this footprint is decreasin=
g. For example, only 240 of the 12,000+ connected RIPE Atlas probes worldwi=
de are in Africa.</span><u></u><u></u></li><li class=3D"MsoNormal"><span la=
ng=3D"EN-US">Increasing Internet measurement infrastructure in Africa to su=
pport the resilience of the Internet on the continent.</span><u></u><u></u>=
</li></ul>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal">-=C2=A0<span lang=3D"EN-US">E</span>vent page:=C2=A0=
<a href=3D"https://pulse.internetsociety.org/blog/webinar-causes-and-conseq=
uences-of-major-internet-outages-in-africa-in-2024-and-how-to-mitigate-them=
" title=3D"https://pulse.internetsociety.org/blog/webinar-causes-and-conseq=
uences-of-major-internet-outages-in-africa-in-2024-and-how-to-mitigate-them=
" target=3D"_blank">https://pulse.internetsociety.org/blog/webinar-causes-a=
nd-consequences-of-major-internet-outages-in-africa-in-2024-and-how-to-miti=
gate-them</a><u></u><u></u></p>
<p class=3D"MsoNormal">-=C2=A0<span lang=3D"EN-US">Registration link</span>=
:=C2=A0<a href=3D"https://urldefense.com/v3/__https:/icann.zoom.us/webinar/=
register/WN_B2v7t5fgQUmON5EzZJntWQ*/registration__;Iw!!PtGJab4!-pCW2Lk8KYma=
f2n-oKajfj-e9AnND3QJrvbh8NbMIP4RJ62yx4K5Ek7df8AjFeC8nZ0lb_0lFK0w8RT7LBbxFmB=
5Zupo8A$" title=3D"https://urldefense.com/v3/__https:/icann.zoom.us/webinar=
/register/WN_B2v7t5fgQUmON5EzZJntWQ*/registration__;Iw!!PtGJab4!-pCW2Lk8KYm=
af2n-oKajfj-e9AnND3QJrvbh8NbMIP4RJ62yx4K5Ek7df8AjFeC8nZ0lb_0lFK0w8RT7LBbxFm=
B5Zupo8A$" target=3D"_blank">https://icann.zoom.us/webinar/register/WN_B2v7=
t5fgQUmON5EzZJntWQ#/registration</a><u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Languages available: AR - Arabi=
c, FR - French, PT =E2=80=93 Portuguese, EN =E2=80=93 English</span><u></u>=
<u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Looking forward to seeing you a=
ttend and contribute to this session.</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><br>
</span><span lang=3D"FR">Tr=C3=A8s cher,</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"FR">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"FR">AUDA, ICANN et ISOC organisent un=
=C2=A0<b>webinaire gratuit le 25 novembre 2025 de 10h00 =C3=A0 12h00 UTC</b=
>=C2=A0pour accompagner les membres de la communaut=C3=A9 =C3=A0 utiliser l=
es outils de supervision Internet pour =C3=A9valuer l&#39;=C3=A9tat de la r=
=C3=A9silience
 d&#39;Internet. Les d=C3=A9cideurs africains des TIC, les r=C3=A9gulateurs=
 des t=C3=A9l=C3=A9communications, les fournisseurs de services de t=C3=A9l=
=C3=A9communication et d&#39;Internet et les membres de la communaut=C3=A9 =
technique sont encourag=C3=A9s =C3=A0 y participer.</span><u></u><u></u></p=
>
<p class=3D"MsoNormal"><span lang=3D"FR">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"FR">Au cours du webinaire, les partici=
pants d=C3=A9couvriront :</span><u></u><u></u></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoNormal"><span lang=3D"FR">les causes et impacts de de l=E2=
=80=99incident des c=C3=A2bles sous-marins du 14 mars 2024 et comment =C3=
=A9viter des sc=C3=A9narios similaires en utilisant les donn=C3=A9es Pulse =
de l&#39;Internet Society.</span><u></u><u></u></li><li class=3D"MsoNormal"=
><span lang=3D"FR">les limites de l&#39;infrastructure de mesure Internet a=
fricaine actuelle. Malgr=C3=A9 plusieurs initiatives pass=C3=A9es, le nombr=
e de plateformes de mesure Internet, d&#39;utilisation, de d=C3=A9ploiement=
 et
 de capacit=C3=A9s en Afrique reste faible et, malheureusement, cette empre=
inte diminue. Par exemple, seules 240 des plus de 12.000 sondes RIPE Atlas =
connect=C3=A9es dans le monde se trouvent en Afrique.</span><u></u><u></u><=
/li><li class=3D"MsoNormal"><span lang=3D"FR">l&#39;augmentation de l&#39;i=
nfrastructure de mesure Internet en Afrique pour soutenir la r=C3=A9silienc=
e d&#39;Internet sur le continent.</span><u></u><u></u></li></ul>
<p class=3D"MsoNormal"><span lang=3D"FR">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"FR">- Page de l&#39;=C3=A9v=C3=A9nemen=
t :=C2=A0<a href=3D"https://pulse.internetsociety.org/blog/webinar-causes-a=
nd-consequences-of-major-internet-outages-in-africa-in-2024-and-how-to-miti=
gate-them" title=3D"https://pulse.internetsociety.org/blog/webinar-causes-a=
nd-consequences-of-major-internet-outages-in-africa-in-2024-and-how-to-miti=
gate-them" target=3D"_blank">https://pulse.internetsociety.org/blog/webinar=
-causes-and-consequences-of-major-internet-outages-in-africa-in-2024-and-ho=
w-to-mitigate-them</a></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"FR">- Lien d&#39;inscription :=C2=A0<a=
 href=3D"https://icann.zoom.us/webinar/register/WN_B2v7t5fgQUmON5EzZJntWQ#/=
registration" title=3D"https://icann.zoom.us/webinar/register/WN_B2v7t5fgQU=
mON5EzZJntWQ#/registration" target=3D"_blank">https://icann.zoom.us/webinar=
/register/WN_B2v7t5fgQUmON5EzZJntWQ#/registration</a></span><u></u><u></u><=
/p>
<p class=3D"MsoNormal"><span lang=3D"FR">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"FR">Langues disponibles durant le webi=
naire : AR - Arabe, FR - Fran=C3=A7ais, PT - Portugais, EN - Anglais</span>=
<u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"FR">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"FR">Au plaisir de vous voir participer=
 et contribuer =C3=A0 cette session.</span><u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">--=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Yazid</span><span lang=3D"FR"><=
u></u><u></u></span></p>
</div>
</div>

_______________________________________________<br>
safnog mailing list<br>
<a href=3D"mailto:safnog@lists.safnog.org" target=3D"_blank">safnog@lists.s=
afnog.org</a><br>
<a href=3D"http://lists.safnog.org/listinfo/safnog" rel=3D"noreferrer" targ=
et=3D"_blank">http://lists.safnog.org/listinfo/safnog</a><br>
</div></div></div>

--000000000000b1f24d06275acde3--

--===============6403542762962796610==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6403542762962796610==--

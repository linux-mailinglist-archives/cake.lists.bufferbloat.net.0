Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 984D6A796A2
	for <lists+cake@lfdr.de>; Wed,  2 Apr 2025 22:33:54 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5D5993CB55;
	Wed,  2 Apr 2025 16:33:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1743626033;
	bh=clgfB3uqQLNWhAtUolM6BQFtal95P8GL7vrWhlIUyZY=;
	h=Date:In-Reply-To:To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=goO0+rNZwP7f4no/Oiwuy3mx9IPko++Vc2H6MWFAuvCPCLzIK0b2ExA9FVX3ACRlK
	 IQHxUb9LAFyG8SHaTIp3CQSCeB1UHGOFbYG/O7sl9NXTswjeB5rEjpXPs5crgerJQj
	 48h3ZiA+qPdhlofxvauMWBBamoYTDifqy/+WkS0j/nWH7asrBen0uNu4CZvagGFmMe
	 Kj3s9SjdCVivTGunfCJrwoxjd6EMB1LiaMiGWIX1PIK58iP63vDJFMgbzfIWBBkCiv
	 eEvEEIN6HkdWO+TvQ8sLa8B8f3kp9qXjO26yJ3WT+gB7BRzgVRNR6SjMMsPVlPSNwy
	 BCrLkwuMlIR2A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from sender4-op-o12.zoho.com (sender4-op-o12.zoho.com
 [136.143.188.12])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4C7143B2A4;
 Wed,  2 Apr 2025 16:33:51 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; t=1743626029; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=DdWfoeYdevjB2ujQB2mBGkT9SHn8aVr2Boqa3wjCQXw2LiHDnyIhpKlf07dgJkc8AQlnozWOfxNO1pyjc8f2E1yw7Xx0tC2+Jg9t/WZvU+tQ9LkPjTSdjDcDfLzbOZUipLVqplUdG0NjcAy5vHnv5Ack4IirBDVPvqXr6qELC/o=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1743626029;
 h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=SmOmeZNC4nQu4NtfdqkFRvA86UmPzpbpRobUQkZThZo=; 
 b=G9LvqQQz2BDOtpUGagJpmAW3YVZjEkwW0OMqw7upWurQn9jjzFwlBRaDtZg+ElJhTtK3VCVi18Ef5fDbZPjFBY8ifRSHH6nBhLUYOdq3v71t0D+lN7vRjHKSSVteFYfIWO5q+WZlWQoB5qyXWIRdJoojS+D1bjVQ2glqYC9teyo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=jonathanfoulkes.com;
 spf=pass  smtp.mailfrom=jf@jonathanfoulkes.com;
 dmarc=pass header.from=<jf@jonathanfoulkes.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1743626029; 
 s=zoho; d=jonathanfoulkes.com; i=jf@jonathanfoulkes.com;
 h=From:From:Message-Id:Message-Id:Content-Type:Mime-Version:Subject:Subject:Date:Date:In-Reply-To:Cc:Cc:To:To:References:Reply-To;
 bh=SmOmeZNC4nQu4NtfdqkFRvA86UmPzpbpRobUQkZThZo=;
 b=UDvNhL557x1+G9p4GKu2uEJj4v42TgaabnPLEhvkXbWd0rQAT0ckIScE14t8FlSf
 2ww9NtQ7YW+NomRgjyBKRNiDR1a05H/BaDSa91QCx3w9HfJsIvcusJrKXUAuGu4Kzbh
 MF7OA9XqvCZXj+pY/Y25BJKCD+hPczYv6Z5oNz9A=
Received: by mx.zohomail.com with SMTPS id 1743626027425804.0062128366021;
 Wed, 2 Apr 2025 13:33:47 -0700 (PDT)
Message-Id: <9DDEC1EC-DC08-477F-A70D-5E2B8F9962EC@jonathanfoulkes.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Date: Wed, 2 Apr 2025 16:33:34 -0400
In-Reply-To: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-ZohoMailClient: External
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
From: jf--- via Cake <cake@lists.bufferbloat.net>
Reply-To: jf@jonathanfoulkes.com
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
Content-Type: multipart/mixed; boundary="===============8503081759216063758=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============8503081759216063758==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8F485093-70A9-4EA5-BEAB-B4DA874926FF"


--Apple-Mail=_8F485093-70A9-4EA5-BEAB-B4DA874926FF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

This is such sad news; I will deeply miss Dave and all his outstanding =
contributions.

I first met Dave around 2016 as I was beginning to mature the concepts =
in the IQrouter. Dave was a great sounding board for ideas and a great =
mentor who constantly encouraged us.
I returned the favor by supporting his work and giving what feedback I =
could over the years, sharing data gathered via our deployments to help =
him and others refine the designs of the lower-level QoS components.

His efforts to educate the rest of us and key players in our field will =
be remembered for the fruits they had and continue to have.

I=E2=80=99ll resurrect the Apple title =E2=80=98Evangelist=E2=80=99 and =
apply it to Dave, one of our tireless Evangelists who worked to improve =
the internet for all.

R.I.P Dave, I miss you.

Jonathan Foulkes


> On Apr 1, 2025, at 1:27=E2=80=AFPM, Frantisek Borsik via Bloat =
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


--Apple-Mail=_8F485093-70A9-4EA5-BEAB-B4DA874926FF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;"><div =
dir=3D"auto" style=3D"overflow-wrap: break-word; -webkit-nbsp-mode: =
space; line-break: after-white-space;">This is such sad news; I will =
deeply miss Dave and all his outstanding contributions.</div><div =
dir=3D"auto" style=3D"overflow-wrap: break-word; -webkit-nbsp-mode: =
space; line-break: after-white-space;"><br></div><div dir=3D"auto" =
style=3D"overflow-wrap: break-word; -webkit-nbsp-mode: space; =
line-break: after-white-space;">I first met Dave around 2016 as I was =
beginning to mature the concepts in the IQrouter. Dave was&nbsp;a great =
sounding board for ideas&nbsp;and a great mentor who constantly =
encouraged us.</div><div dir=3D"auto" style=3D"overflow-wrap: =
break-word; -webkit-nbsp-mode: space; line-break: after-white-space;">I =
returned the favor by supporting his work and giving what feedback I =
could over the years, sharing&nbsp;data gathered via our deployments to =
help him and others refine the designs of the lower-level QoS =
components.<br =
id=3D"lineBreakAtBeginningOfMessage"><div><br></div><div>His efforts to =
educate the rest of us and key players in our field will be remembered =
for the fruits they had&nbsp;and continue to =
have.</div><div><br></div><div>I=E2=80=99ll resurrect the Apple title =
=E2=80=98Evangelist=E2=80=99&nbsp;and apply it to Dave, one of our =
tireless Evangelists who worked to improve the internet for =
all.</div><div><br></div><div>R.I.P Dave, I miss =
you.</div><div><br></div><div>Jonathan =
Foulkes</div><div><br></div><div><br><blockquote type=3D"cite"><div>On =
Apr 1, 2025, at 1:27=E2=80=AFPM, Frantisek Borsik via Bloat =
&lt;bloat@lists.bufferbloat.net&gt; wrote:</div><br =
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

--Apple-Mail=_8F485093-70A9-4EA5-BEAB-B4DA874926FF--

--===============8503081759216063758==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8503081759216063758==--

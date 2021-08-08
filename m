Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA6D3E38F4
	for <lists+cake@lfdr.de>; Sun,  8 Aug 2021 07:15:50 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 00F243CB43;
	Sun,  8 Aug 2021 01:15:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628399749;
	bh=EVdnI/VRjagyZBJh5mzjbXR9hh99NEH64kjjB56PdOs=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=K+LOZeFMZx3Yzmo5ihNZTUNVh3L3NxK25LUKVAAhNQCJZ2w6l6XXhz3HY5TXpp7v6
	 Aa9kf2iVGAZxoRecNGyhrjRYNzdeZ/3rcKpigzCgZfgwQSwYlJMnlwp30KbR8Xaza3
	 qjSHodxWVv4vFTTPB5atzdX9vz+Us/zryFLOiv73jiYIgqWH94kBSuFMItWuiEO4OJ
	 scVxWifUyzQXEDB6PcvqMLalL3GloWk8xaPz5UfIeazaJaVSUxrdp60RSly5pEZTcF
	 GbEabWx3/BV7RiYr/2Hubi4B+y1LEksNfnf/CCxVLiWyQ8Ek5XgIKQn1GljebGwJ3D
	 WG/0rWgQKvE1g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 460283B2A4
 for <cake@lists.bufferbloat.net>; Sun,  8 Aug 2021 01:15:47 -0400 (EDT)
Received: by mail-ej1-x62d.google.com with SMTP id hs10so23036472ejc.0
 for <cake@lists.bufferbloat.net>; Sat, 07 Aug 2021 22:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8Y1FhusJcbjLrVwOafIUsCwGTHvT7E2qozBtOg/Sot8=;
 b=Z4gjBXZ6Kk6B7zVCIvEjMxYfwoH1AKtWSy3Eb6TFBlN/RsYWz5yg+hgXryVMiBtVgB
 3SeJZD0fPNfPg/C6FYhDoelZeBsEtpxzbG/F354kSkChH00un4gmvaJ5DyXgAjxxApx6
 VXU2gc/eYRaiWK9NMurERCbOi5HrZyhBFSI8o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8Y1FhusJcbjLrVwOafIUsCwGTHvT7E2qozBtOg/Sot8=;
 b=qNGMEWqp+UXM/kTK6ITZPs7WwIfJ0QqgOGapB7VIcdf2GIEEuYet5V48HMdJAkbe0g
 RBCPLoXHvucXKl+orh/8b71BtZJubjXq/rd8molCxjajL9Rpkyh4B2dyYUauDTpluLjp
 6Ccn8fFKnZSVN22TZNy4NlHdiarEc/RI8XNAiNleO8uIXptJUJA2u5n7+bz3j/Vk77fK
 5SAXlAi2wtSKdpC0SRO/1zs5ZMeXeoXB/dcbsA3zprYce42+vs0ADcrXvhLEWrrT+AYT
 blDaC1VS/7ykbAdMjla44eo43CuVXVOhSTI8CVsrFSMjUrnEEq9axkhPF8oHhwR4YoJ5
 YhAA==
X-Gm-Message-State: AOAM531uoJ/AkVc5Z1xZJppnLUCgxZBCTQxB+aOozQz6aB4UR2Du+xfH
 0NX4LdXB6GlA6ihdFnt3wK1vSIU188SGQA8dxS8+KWrJwRMVrkc+CrYwTG6fazopXZJopkWuOSY
 p4BVFl2dkQODngyrXat+DemRxDlGp
X-Google-Smtp-Source: ABdhPJwDS2cNoh+zWRT4fwPwXTHXYcoYe7uLNlvckA6RjqCmulBSFYvdd1nwXG4ffXH56ptBcpG+v8FysL4LkJZU/wc=
X-Received: by 2002:a17:906:4e85:: with SMTP id
 v5mr16654917eju.159.1628399746128; 
 Sat, 07 Aug 2021 22:15:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <CAHb6LvqsZFDDkC1qjr9ccXNjFtq1qnAevQpccNFydP4BOVVL1Q@mail.gmail.com>
 <nycvar.QRO.7.76.6.2108021607160.810590@qynat-yncgbc>
 <8677F5C4-1893-4A61-A13C-3C8BE17CB789@cs.ucla.edu>
 <CAHb6LvpQP_jCiHeNJAD9qt+wB-HqUAW7N6aGJ+6-PXg+KE5Z2Q@mail.gmail.com>
 <4F6EFB347C08475A9F53B24E0D8BEAE2@SRA6>
In-Reply-To: <4F6EFB347C08475A9F53B24E0D8BEAE2@SRA6>
Date: Sat, 7 Aug 2021 22:15:35 -0700
Message-ID: <CAHb6LvqUctN5SMcqgZNh5u7=nJhtWOuXEmh59PPYag2g+xVrtw@mail.gmail.com>
To: dickroy@alum.mit.edu
Subject: Re: [Cake] [Starlink] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2:
 Internet Quality workshop CFP for the internet architecture board
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
From: Bob McMahon via Cake <cake@lists.bufferbloat.net>
Reply-To: Bob McMahon <bob.mcmahon@broadcom.com>
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>, starlink@lists.bufferbloat.net,
 codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============2974380185499048642=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2974380185499048642==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000007052f305c9055cef"

--0000000000007052f305c9055cef
Content-Type: multipart/alternative; boundary="0000000000006bdf1005c9055cd8"

--0000000000006bdf1005c9055cd8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

We have hundreds of test rigs in multiple labs all over geography. Each rig
is shielded from the others using things like RF enclosures. We want
reproducibility in the RF paths/channels as well as variability. Most have
built fixed rigs using conducted equipment. This is far from anything real.
A butler matrix produces great condition numbers but that makes it too easy
for MIMO rate selection algorithms.

Our real world test is using a real house that has been rented. Not cheap
nor scalable.

There is quite a gap between the two. A RF path device that supports both
variable range and variable mixing is a step towards closing the gap.

Bob

On Sat, Aug 7, 2021 at 10:07 PM Dick Roy <dickroy@alum.mit.edu> wrote:

>
>
>
> ------------------------------
>
> *From:* Starlink [mailto:starlink-bounces@lists.bufferbloat.net] *On
> Behalf Of *Bob McMahon
> *Sent:* Monday, August 2, 2021 6:24 PM
> *To:* Leonard Kleinrock
> *Cc:* starlink@lists.bufferbloat.net; Make-Wifi-fast; Cake List;
> codel@lists.bufferbloat.net; cerowrt-devel; bloat
> *Subject:* Re: [Starlink] [Cake] [Make-wifi-fast] [Cerowrt-devel] Due Aug
> 2: Internet Quality workshop CFP for the internet architecture board
>
>
>
> I found the following talk relevant to distances between all the nodes.
> https://www.youtube.com/watch?v=3DPNoUcQTCxiM
>
> Distance is an abstract idea but applies to energy into a node as well as
> phylogenetic trees. It's the same problem, i.e. fitting a distance matrix
> using some sort of tree. I've found the five branch tree works well for
> four nodes.
>
> *[RR] These trees are means for approximating a higher dimensional
> real-world problem with a lower dimensional structure.  You may be doing
> this to save hardware when trying to cable up some complex test scenarios=
,
> however I=E2=80=99m wondering why?  Why not just put the STAs in the lab =
and turn
> them on rather than cabling them?*
>
>
>
> Bob
>
>
>
> On Mon, Aug 2, 2021 at 5:37 PM Leonard Kleinrock <lk@cs.ucla.edu> wrote:
>
> These cases are what my student, Fouad Tobagi and I called the Hidden
> Terminal Problem (with the Busy Tone solution) back in 1975.
>
> Len
>
>
> > On Aug 2, 2021, at 4:16 PM, David Lang <david@lang.hm> wrote:
> >
> > If you are going to setup a test environment for wifi, you need to
> include the ability to make a fe cases that only happen with RF, not with
> wired networks and are commonly overlooked
> >
> > 1. station A can hear station B and C but they cannot hear each other
> > 2. station A can hear station B but station B cannot hear station A 3.
> station A can hear that station B is transmitting, but not with a strong
> enough signal to decode the signal (yes in theory you can work around
> interference, but in practice interference is still a real thing)
> >
> > David Lang
> >
>
>
> This electronic communication and the information and any files
> transmitted with it, or attached to it, are confidential and are intended
> solely for the use of the individual or entity to whom it is addressed an=
d
> may contain information that is confidential, legally privileged, protect=
ed
> by privacy laws, or otherwise restricted from disclosure to anyone else. =
If
> you are not the intended recipient or the person responsible for deliveri=
ng
> the e-mail to the intended recipient, you are hereby notified that any us=
e,
> copying, distributing, dissemination, forwarding, printing, or copying of
> this e-mail is strictly prohibited. If you received this e-mail in error,
> please return the e-mail to the sender, delete it from your computer, and
> destroy any printed copy of it.
>

--=20
This electronic communication and the information and any files transmitted=
=20
with it, or attached to it, are confidential and are intended solely for=20
the use of the individual or entity to whom it is addressed and may contain=
=20
information that is confidential, legally privileged, protected by privacy=
=20
laws, or otherwise restricted from disclosure to anyone else. If you are=20
not the intended recipient or the person responsible for delivering the=20
e-mail to the intended recipient, you are hereby notified that any use,=20
copying, distributing, dissemination, forwarding, printing, or copying of=
=20
this e-mail is strictly prohibited. If you received this e-mail in error,=
=20
please return the e-mail to the sender, delete it from your computer, and=
=20
destroy any printed copy of it.

--0000000000006bdf1005c9055cd8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">We have hundreds of test rigs in multiple labs all over ge=
ography. Each rig is shielded from the others using things like RF enclosur=
es. We want reproducibility in the RF paths/channels as well as variability=
. Most have built fixed rigs using conducted equipment. This is far from an=
ything=C2=A0real. A butler matrix produces great condition numbers but that=
 makes it too easy for MIMO rate selection algorithms.<br><br>Our real worl=
d test is using a real house that has been rented. Not cheap nor scalable.<=
br><br>There is quite=C2=A0a gap between the two. A RF path device that sup=
ports both variable range and variable mixing is a step towards closing the=
 gap.<br><br>Bob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Aug 7, 2021 at 10:07 PM Dick Roy &lt;<a href=3D"mai=
lto:dickroy@alum.mit.edu">dickroy@alum.mit.edu</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">









<div lang=3D"EN-US">

<div class=3D"gmail-m_2644358729133911847Section1">

<p class=3D"MsoNormal"><font size=3D"2" color=3D"navy" face=3D"Arial"><span=
 style=3D"font-size:10pt;font-family:Arial;color:navy"><u></u>=C2=A0<u></u>=
</span></font></p>

<p class=3D"MsoNormal"><font size=3D"2" color=3D"navy" face=3D"Arial"><span=
 style=3D"font-size:10pt;font-family:Arial;color:navy"><u></u>=C2=A0<u></u>=
</span></font></p>

<div>

<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><font=
 size=3D"3" face=3D"Times New Roman"><span style=3D"font-size:12pt">

<hr size=3D"3" width=3D"100%" align=3D"center">

</span></font></div>

<p class=3D"MsoNormal"><b><font size=3D"2" face=3D"Tahoma"><span style=3D"f=
ont-size:10pt;font-family:Tahoma;font-weight:bold">From:</span></font></b><=
font size=3D"2" face=3D"Tahoma"><span style=3D"font-size:10pt;font-family:T=
ahoma"> Starlink
[mailto:<a href=3D"mailto:starlink-bounces@lists.bufferbloat.net" target=3D=
"_blank">starlink-bounces@lists.bufferbloat.net</a>] <b><span style=3D"font=
-weight:bold">On Behalf Of </span></b>Bob McMahon<br>
<b><span style=3D"font-weight:bold">Sent:</span></b> Monday, August 2, 2021=
 6:24
PM<br>
<b><span style=3D"font-weight:bold">To:</span></b> Leonard Kleinrock<br>
<b><span style=3D"font-weight:bold">Cc:</span></b> <a href=3D"mailto:starli=
nk@lists.bufferbloat.net" target=3D"_blank">starlink@lists.bufferbloat.net<=
/a>;
Make-Wifi-fast; Cake List; <a href=3D"mailto:codel@lists.bufferbloat.net" t=
arget=3D"_blank">codel@lists.bufferbloat.net</a>; cerowrt-devel; bloat<br>
<b><span style=3D"font-weight:bold">Subject:</span></b> Re: [Starlink] [Cak=
e]
[Make-wifi-fast] [Cerowrt-devel] Due Aug 2: Internet Quality workshop CFP f=
or
the internet architecture board</span></font><u></u><u></u></p>

</div>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt"><u></u>=C2=A0<u></u></span></font></p>

<div>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt">I found the following talk relevant to distances betwe=
en all the
nodes.=C2=A0=C2=A0<a href=3D"https://www.youtube.com/watch?v=3DPNoUcQTCxiM"=
 target=3D"_blank">https://www.youtube.com/watch?v=3DPNoUcQTCxiM</a>
<br>
<br>
Distance is an abstract idea but applies to energy into a node as well as
phylogenetic trees. It&#39;s the same problem, i.e. fitting a distance matr=
ix using
some sort of tree. I&#39;ve found the five branch tree works well for four =
nodes.<font color=3D"navy"><span style=3D"color:navy"><u></u><u></u></span>=
</font></span></font></p>

<p class=3D"MsoNormal"><b><i><font size=3D"2" color=3D"navy" face=3D"Arial"=
><span style=3D"font-size:10pt;font-family:Arial;color:navy;font-weight:bol=
d;font-style:italic">[RR] These trees are means for approximating a higher
dimensional real-world problem with a lower dimensional structure.=C2=A0 Yo=
u may be
doing this to save hardware when trying to cable up some complex test scena=
rios,
however I=E2=80=99m wondering why?=C2=A0 Why not just put the STAs in the l=
ab and turn them
on rather than cabling them?<u></u><u></u></span></font></i></b></p>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt"><br>
<br>
Bob=C2=A0<u></u><u></u></span></font></p>

</div>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt"><u></u>=C2=A0<u></u></span></font></p>

<div>

<div>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt">On Mon, Aug 2, 2021 at 5:37 PM Leonard Kleinrock &lt;<=
a href=3D"mailto:lk@cs.ucla.edu" target=3D"_blank">lk@cs.ucla.edu</a>&gt; w=
rote:<u></u><u></u></span></font></p>

</div>

<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:4=
.8pt;margin-right:0in">

<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><font size=3D"3" face=
=3D"Times New Roman"><span style=3D"font-size:12pt">These cases are what my
student, Fouad Tobagi and I called the Hidden Terminal Problem (with the Bu=
sy
Tone solution) back in 1975.<br>
<br>
Len <br>
<br>
<br>
&gt; On Aug 2, 2021, at 4:16 PM, David Lang &lt;<a href=3D"mailto:david@lan=
g.hm" target=3D"_blank">david@lang.hm</a>&gt; wrote:<br>
&gt; <br>
&gt; If you are going to setup a test environment for wifi, you need to inc=
lude
the ability to make a fe cases that only happen with RF, not with wired
networks and are commonly overlooked<br>
&gt; <br>
&gt; 1. station A can hear station B and C but they cannot hear each other<=
br>
&gt; 2. station A can hear station B but station B cannot hear station A 3.
station A can hear that station B is transmitting, but not with a strong en=
ough
signal to decode the signal (yes in theory you can work around interference=
,
but in practice interference is still a real thing)<br>
&gt; <br>
&gt; David Lang<br>
&gt; <u></u><u></u></span></font></p>

</blockquote>

</div>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt"><br>
</span></font><font size=3D"2"><span style=3D"font-size:10pt;background:whi=
te">This
electronic communication and the information and any files transmitted with=
 it,
or attached to it, are confidential and are intended solely for the use of =
the
individual or entity to whom it is addressed and may contain information th=
at
is confidential, legally privileged, protected by privacy laws, or otherwis=
e
restricted from disclosure to anyone else. If you are not the intended
recipient or the person responsible for delivering the e-mail to the intend=
ed
recipient, you are hereby notified that any use, copying, distributing,
dissemination, forwarding, printing, or copying of this e-mail is strictly
prohibited. If you received this e-mail in error, please return the e-mail =
to
the sender, delete it from your computer, and destroy any printed copy of i=
t.</span></font><u></u><u></u></p>

</div>

</div>


</blockquote></div>

<br>
<span style=3D"background-color:rgb(255,255,255)"><font size=3D"2">This ele=
ctronic communication and the information and any files transmitted with it=
, or attached to it, are confidential and are intended solely for the use o=
f the individual or entity to whom it is addressed and may contain informat=
ion that is confidential, legally privileged, protected by privacy laws, or=
 otherwise restricted from disclosure to anyone else. If you are not the in=
tended recipient or the person responsible for delivering the e-mail to the=
 intended recipient, you are hereby notified that any use, copying, distrib=
uting, dissemination, forwarding, printing, or copying of this e-mail is st=
rictly prohibited. If you received this e-mail in error, please return the =
e-mail to the sender, delete it from your computer, and destroy any printed=
 copy of it.</font></span>
--0000000000006bdf1005c9055cd8--

--0000000000007052f305c9055cef
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
DrPV5EPUikwiGMDmkX8o6roGiUwyqAp8dMZKJZ/vS/aWEELV+gm21Btr7eqdAWyqm09McVpkM4th
v/FOYcj8DeJr8MXmHW53gN2fv0BzQjqAdrdCBPNRAgMBAAGjggHZMIIB1TAOBgNVHQ8BAf8EBAMC
BaAwgaMGCCsGAQUFBwEBBIGWMIGTME4GCCsGAQUFBzAChkJodHRwOi8vc2VjdXJlLmdsb2JhbHNp
Z24uY29tL2NhY2VydC9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcnQwQQYIKwYBBQUHMAGG
NWh0dHA6Ly9vY3NwLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwME0G
A1UdIARGMEQwQgYKKwYBBAGgMgEoCjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxz
aWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMEkGA1UdHwRCMEAwPqA8oDqGOGh0dHA6Ly9j
cmwuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3JsMCMGA1UdEQQc
MBqBGGJvYi5tY21haG9uQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSME
GDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUpyXYr5rh8cZzkns+zXmMG1YkBk4w
DQYJKoZIhvcNAQELBQADggEBACfauRPak93nzbpn8UXqRZqg6iUZch/UfGj9flerMl4TlK5jWulz
Y+rRg+iWkjiLk3O+kKu6GI8TLXB2rsoTnrHYij96Uad5/Ut3Q5F4S0ILgOWVU38l0VZIGGG0CzG1
eLUgN2zjLg++xJuzqijuKQCJb/3+il2MTJ8dcDaXuYcjg7Vt6+EtCBS1SGMVhOTH4Fp50yGWj8ZA
bPF1uuJM+dGLJLheUizCr5J/OBEdENg+DSmrqoZ+kZd76iRaF2CkhboR2394Ft8lFlKQiU0q8lnR
9/kdZ0F0iCcUfhaLaGYWujW7N0LZ+rQuTfuPGLx9zZNeNMWSZi/Pc8vdCO7EnlIxggJtMIICaQIB
ATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhH
bG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwYS+5PXokx35blu9EwDQYJ
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIHc+2u6OF0cmajD54oYfd+xqPa2TfrYmQleO
HR2kwNtQMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDgwODA1
MTU0NlowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQBtkiZNoJAQ5FpDChKFRN+05bp2cWp0wYKM6j3nWbdvUJMUpkeMK/2w
NrLu34ehRB8nSI1XXksUbnunyYAz+YIXwQFowGoGYR0Jnv172vDgQ2T+nGT6Fqs7evQe9+nnfSdd
As8Nun68n2K6UEnR/Lkx+Az76Zme+9fbB7F92J9WnCunZ7y+vvkxQb7ioab88azpF0E0orn+8sVq
1II6I48u7VZmQR75bD/K81NsozEKw2tARubgiO6vC8Cdz+XtmpVJ0ACKiMDdSj9WelMWnVzv8oFT
ciOQXbb3zeyqbbv548rc9fqfXRrIszjiGDU8fCU7g32P6sQavBMMeR8QcbyR
--0000000000007052f305c9055cef--

--===============2974380185499048642==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2974380185499048642==--

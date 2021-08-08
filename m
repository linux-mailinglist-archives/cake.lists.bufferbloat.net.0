Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CF73E3C3C
	for <lists+cake@lfdr.de>; Sun,  8 Aug 2021 20:36:58 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 57B793CB45;
	Sun,  8 Aug 2021 14:36:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628447812;
	bh=OeWHa3YX3iDr4B/9NUp+YMDq+K27NeDZpzyDbg1dYO0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PuYm7HVdC+Tcq8LUwl0F4xxFQyi11vdtFWIHVk3JrzIHaRV3OAoht953qrbzMtdIc
	 asUgZvauX7vq2z1Gn7uYDCMY7LXhz+0/khgo2ZIoZHdASHJIrfT0jHXZCaaDY0w2eP
	 wu4wjcWfea2Fq4VadhUBUGYy43Cap3OyJCrFkElxgSwYrT5UM5R+ZB0PUU0tgQD27J
	 cejQnDFMkZM0ouT0dlmaJ8IAZEqTBUAtjfyyhtC0yXBCgH3KQ+M9c6GH7xFxG8Qn3n
	 oW9srM8GcCWpZwixwYUJ6fWlFXjJn8PEvDEakWeiCpN6v44LeFOH8Vu2prMm6X+LR8
	 QtPBDTPVvy1Lw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CAA843CB35;
 Sun,  8 Aug 2021 14:36:50 -0400 (EDT)
Received: by mail-ej1-x632.google.com with SMTP id e19so24913409ejs.9;
 Sun, 08 Aug 2021 11:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U693s65721Y7UAwI4CMKCFGK6+nMAb7u9RTto0Wfeyc=;
 b=Zhv6sYxX691cSMa1CIIEEpiWhyqSl8vL3VGRYXvdsycDl5UpL4hBAbYVTxdvWImfaC
 cTSzSgwBldZaSJ7jYXYsB0bVijdYG/sNJbmap5oCpsolmQ6Y2jhKSlniphwxUaW0Qere
 ULlSYCF7BRK2/J6K9oeXSMFPMaSRw3yVji0iR6vtsqTEWVsZWyVnJczPasEvgXQNoaPx
 9gft3f7k3dgMNAEyk1HU167fJCpZgCvcHGzd8s6yYlzOh4xWh8bqNfBEwoPjzK4e0Zq4
 5C6LVxIUbKUsyTBzde87ALgRmX9ByBczEsWvVWHFIKCID9rpEdX5u89CLYJFQ1zWgbPs
 7Slg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U693s65721Y7UAwI4CMKCFGK6+nMAb7u9RTto0Wfeyc=;
 b=oMYjudxVooJ5MrfE9SF0lGAM/v+AWCB0BRIOezuFHdGt7WKWh3s3FjqBDf1f5G/+eO
 iVXzUZblLhdWHzuJ5fe69aqU1JJ6hHASHChXVZNGhE+gB8LSp+dcn12ezA/e1MEUyALC
 qt7lbXUCd5/7j7zgYVraB+yMLBvhv/CbxS5W4UFeJeEyiY9mIgQl+w1xcuM6exynyVUw
 /UVT+SOXnAIlij2FCrMFpkenu7W+ZyAVsAh/78VZo0TgXxrqMEJiZ/bYvT8B3etE5Vib
 a9lscdHlC1CIUMdxCu/qvsZcQK56Ld/ASTyyc/rWSt96sucRjr601zu1SBnZcMxRZCnO
 7kuQ==
X-Gm-Message-State: AOAM530jWHROsgh1hgREHuO0YiQEcyXwhKnR4PTVQ09IMxLi/neK72vR
 HuwQLNIVok5seOVg/WMdkUMwgKs7tsKmDP3GV+c=
X-Google-Smtp-Source: ABdhPJw0mPE79r/7llUQtxR1MU9J5FE2su1aWa4TnIEmbADWOrhJsyIG4zZDMOR9uxI5d0/ltxPs59FfWaz9//9gXVo=
X-Received: by 2002:a17:906:30d8:: with SMTP id
 b24mr19032914ejb.358.1628447809758; 
 Sun, 08 Aug 2021 11:36:49 -0700 (PDT)
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
 <CAHb6LvqUctN5SMcqgZNh5u7=nJhtWOuXEmh59PPYag2g+xVrtw@mail.gmail.com>
In-Reply-To: <CAHb6LvqUctN5SMcqgZNh5u7=nJhtWOuXEmh59PPYag2g+xVrtw@mail.gmail.com>
From: Aaron Wood <woody77@gmail.com>
Date: Sun, 8 Aug 2021 11:36:38 -0700
Message-ID: <CALQXh-Oukro8cvM-tEfowdiBXJuMff8MfuvQ9qsChbaORnWWpg@mail.gmail.com>
To: Bob McMahon <bob.mcmahon@broadcom.com>
Subject: Re: [Cake] [Make-wifi-fast] [Starlink] [Cerowrt-devel] Due Aug 2:
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
Cc: starlink@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>, Cake List <cake@lists.bufferbloat.net>,
 codel <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, dickroy@alum.mit.edu
Content-Type: multipart/mixed; boundary="===============2900379861305829426=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2900379861305829426==
Content-Type: multipart/alternative; boundary="0000000000003c6ac805c9108d61"

--0000000000003c6ac805c9108d61
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

My own experiments with this, in the past (5+ years ago), was that you
absolutely had to use cabled setups for repeatability, but then didn't have
enough randomness in the variability to really test anything that was
problematic.  We could create hidden nodes, or arbitrary meshes of devices,
but they were always static.

We used N-way RF splitters and either direct coax in lieu of antennas, or
isolation boxes with an antenna attached to a bulkhead fitting, with coax
on the outside.  One other problem we ran into was that unshielded radio
front-ends could "hear" each other without isolation boxes.

I really wanted both variable attenuators, and points where I could inject
RF noise, so that instead of broad-band attenuation, maybe we could just
swamp the communications with other noise (which is also a common thing we
were running into with both our 900Mhz (ZWave) and 2.4GHz (wifi) radios.

Less common, but something I still see, is that a moving station has
continual issues staying in proper MIMO phase(s) with the AP.  Or I think
that's what's happening.  Slow, continual movement of the two, relative to
each other, and the packet rate drops through the floor until they stop
having relative motion.  And I assume that also applies to time-varying
path-loss and path-distance (multipath reflections).

On Sat, Aug 7, 2021 at 10:15 PM Bob McMahon via Make-wifi-fast <
make-wifi-fast@lists.bufferbloat.net> wrote:

> We have hundreds of test rigs in multiple labs all over geography. Each
> rig is shielded from the others using things like RF enclosures. We want
> reproducibility in the RF paths/channels as well as variability. Most hav=
e
> built fixed rigs using conducted equipment. This is far from anything rea=
l.
> A butler matrix produces great condition numbers but that makes it too ea=
sy
> for MIMO rate selection algorithms.
>
> Our real world test is using a real house that has been rented. Not cheap
> nor scalable.
>
> There is quite a gap between the two. A RF path device that supports both
> variable range and variable mixing is a step towards closing the gap.
>
> Bob
>
> On Sat, Aug 7, 2021 at 10:07 PM Dick Roy <dickroy@alum.mit.edu> wrote:
>
>>
>>
>>
>> ------------------------------
>>
>> *From:* Starlink [mailto:starlink-bounces@lists.bufferbloat.net] *On
>> Behalf Of *Bob McMahon
>> *Sent:* Monday, August 2, 2021 6:24 PM
>> *To:* Leonard Kleinrock
>> *Cc:* starlink@lists.bufferbloat.net; Make-Wifi-fast; Cake List;
>> codel@lists.bufferbloat.net; cerowrt-devel; bloat
>> *Subject:* Re: [Starlink] [Cake] [Make-wifi-fast] [Cerowrt-devel] Due
>> Aug 2: Internet Quality workshop CFP for the internet architecture board
>>
>>
>>
>> I found the following talk relevant to distances between all the nodes.
>> https://www.youtube.com/watch?v=3DPNoUcQTCxiM
>>
>> Distance is an abstract idea but applies to energy into a node as well a=
s
>> phylogenetic trees. It's the same problem, i.e. fitting a distance matri=
x
>> using some sort of tree. I've found the five branch tree works well for
>> four nodes.
>>
>> *[RR] These trees are means for approximating a higher dimensional
>> real-world problem with a lower dimensional structure.  You may be doing
>> this to save hardware when trying to cable up some complex test scenario=
s,
>> however I=E2=80=99m wondering why?  Why not just put the STAs in the lab=
 and turn
>> them on rather than cabling them?*
>>
>>
>>
>> Bob
>>
>>
>>
>> On Mon, Aug 2, 2021 at 5:37 PM Leonard Kleinrock <lk@cs.ucla.edu> wrote:
>>
>> These cases are what my student, Fouad Tobagi and I called the Hidden
>> Terminal Problem (with the Busy Tone solution) back in 1975.
>>
>> Len
>>
>>
>> > On Aug 2, 2021, at 4:16 PM, David Lang <david@lang.hm> wrote:
>> >
>> > If you are going to setup a test environment for wifi, you need to
>> include the ability to make a fe cases that only happen with RF, not wit=
h
>> wired networks and are commonly overlooked
>> >
>> > 1. station A can hear station B and C but they cannot hear each other
>> > 2. station A can hear station B but station B cannot hear station A 3.
>> station A can hear that station B is transmitting, but not with a strong
>> enough signal to decode the signal (yes in theory you can work around
>> interference, but in practice interference is still a real thing)
>> >
>> > David Lang
>> >
>>
>>
>> This electronic communication and the information and any files
>> transmitted with it, or attached to it, are confidential and are intende=
d
>> solely for the use of the individual or entity to whom it is addressed a=
nd
>> may contain information that is confidential, legally privileged, protec=
ted
>> by privacy laws, or otherwise restricted from disclosure to anyone else.=
 If
>> you are not the intended recipient or the person responsible for deliver=
ing
>> the e-mail to the intended recipient, you are hereby notified that any u=
se,
>> copying, distributing, dissemination, forwarding, printing, or copying o=
f
>> this e-mail is strictly prohibited. If you received this e-mail in error=
,
>> please return the e-mail to the sender, delete it from your computer, an=
d
>> destroy any printed copy of it.
>>
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
> _______________________________________________
> Make-wifi-fast mailing list
> Make-wifi-fast@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/make-wifi-fast

--0000000000003c6ac805c9108d61
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">My own experiments with this, in the past (5+ years ago), =
was that you absolutely had to use cabled setups for repeatability, but the=
n didn&#39;t have enough randomness in the variability to really test anyth=
ing that was problematic.=C2=A0 We could create hidden nodes, or arbitrary =
meshes of devices, but they were always static.<div><br></div><div>We used =
N-way RF splitters and either direct coax in lieu of antennas, or isolation=
 boxes with an antenna attached to a bulkhead fitting, with coax on the out=
side.=C2=A0 One other problem we ran into was that unshielded radio front-e=
nds could &quot;hear&quot; each other without isolation boxes.</div><div><b=
r></div><div>I really wanted both variable attenuators, and points where I =
could inject RF noise, so that instead of broad-band attenuation, maybe we =
could just swamp the communications with other noise (which is also a commo=
n thing we were running into with both our 900Mhz (ZWave) and 2.4GHz (wifi)=
 radios.</div><div><br></div><div>Less common, but something I still see, i=
s that a moving station has continual issues staying in proper MIMO phase(s=
) with the AP.=C2=A0 Or I think that&#39;s what&#39;s happening.=C2=A0 Slow=
, continual movement of the two, relative to each other, and the packet rat=
e drops through the floor until they stop having relative motion.=C2=A0 And=
 I assume that also applies to time-varying path-loss and path-distance (mu=
ltipath reflections).</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Sat, Aug 7, 2021 at 10:15 PM Bob McMahon via =
Make-wifi-fast &lt;<a href=3D"mailto:make-wifi-fast@lists.bufferbloat.net">=
make-wifi-fast@lists.bufferbloat.net</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px=
;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr">We have hundreds of test rigs in multiple labs all over=
 geography. Each rig is shielded from the others using things like RF enclo=
sures. We want reproducibility in the RF paths/channels as well as variabil=
ity. Most have built fixed rigs using conducted equipment. This is far from=
 anything=C2=A0real. A butler matrix produces great condition numbers but t=
hat makes it too easy for MIMO rate selection algorithms.<br><br>Our real w=
orld test is using a real house that has been rented. Not cheap nor scalabl=
e.<br><br>There is quite=C2=A0a gap between the two. A RF path device that =
supports both variable range and variable mixing is a step towards closing =
the gap.<br><br>Bob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Sat, Aug 7, 2021 at 10:07 PM Dick Roy &lt;<a href=3D"=
mailto:dickroy@alum.mit.edu" target=3D"_blank">dickroy@alum.mit.edu</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:r=
gb(204,204,204);padding-left:1ex">









<div lang=3D"EN-US">

<div>

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

<blockquote style=3D"border-style:none none none solid;border-left-width:1p=
t;border-left-color:rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:4.=
8pt;margin-right:0in">

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
</span></font><font size=3D"2"><span style=3D"font-size:10pt;background-col=
or:white;background-position:initial initial;background-repeat:initial init=
ial">This
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
 copy of it.</font></span>_______________________________________________<b=
r>
Make-wifi-fast mailing list<br>
<a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">M=
ake-wifi-fast@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" rel=3D"no=
referrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/make-wif=
i-fast</a></blockquote></div>

--0000000000003c6ac805c9108d61--

--===============2900379861305829426==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2900379861305829426==--

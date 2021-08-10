Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 710B53E7DF7
	for <lists+cake@lfdr.de>; Tue, 10 Aug 2021 19:07:04 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 130793CB40;
	Tue, 10 Aug 2021 13:07:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628615222;
	bh=Oi//SsPRQk4X4Y8/iOnoarulsEeuV2Hx6IiHkGgANIA=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=HMkvvnRCuJCBEDGE9c2Th4pfsLQeGZWwGiF0qAWRlivvmB/JHs6JW/A7IOilLTshm
	 u4pVcIoEcKUBjlkwx+EHQFgARN6K4SW/Kre3HAHWuJWRsOhmxyVkHpMFQgn77uOJv3
	 AoVbnp+5ygUnacCcY0Bj85/S+IMuxOIb/ndKKW+in+EK61V2rwYrXrcdWC74HC72Ej
	 oPjVIffDmdkp4bvPsLnCiT1nkVziA+vxH9Smq9jhFrh8Rn0DkPLMHjTuZbwupA1dIj
	 xaON/dPP28xw0mL/XmXfpkoGwoIZkH0AF79j/vzh3t8CuCF+RgeZa/+ZJ1Yecxi3TQ
	 Cz5kmBaHDt4Dg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D63313CB38
 for <cake@lists.bufferbloat.net>; Tue, 10 Aug 2021 13:07:00 -0400 (EDT)
Received: by mail-ej1-x62f.google.com with SMTP id gs8so36657579ejc.13
 for <cake@lists.bufferbloat.net>; Tue, 10 Aug 2021 10:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OSTIik8s1W6sanu+Y5/vXPMBdb4CP/0gCP+uwYNs3U8=;
 b=HcqaVopyppkUt+fT6tc7wMPyz3eulGB9d8Vjzb9gGgmZgLKoOrBAKpm0SNt1DceVd1
 xsMl08BBuqVq94EK5yUKOi/2/WsEi41VHvnoWcIcFWfuZZ1ci19SYnABrtNuKAKk10NB
 bTIKe3WhTd4TtKBsqUZk7ynnnDEnUv08r2ANw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OSTIik8s1W6sanu+Y5/vXPMBdb4CP/0gCP+uwYNs3U8=;
 b=JMtp7AEgh3W+mAfpvuuRQJ211mUa1lqGu5x0hT6D6wqv5Rbhyblsmv0ZS97G1Tkhvh
 Gs3N6DcNhiXasbswvGT2M2Lcbu1cHiGYbgVSMtk8uuyKVFbl4/q+BMxKUxPJwVAmF/QG
 JDg1vyqKQudmSxcLFx6qiuYFOaJJ0bFf8aqJheSvttuJRo6iCbRhLBoIEbAkZXlmkDe5
 sfEWlb6rCk5DnwFR69LWTcTOuWms8D8lV/csFPosl0A+Nrdg2fLmtOhX/Xm85K6fWzfM
 Tbc2ZSBizOTDs7eXTj9zXmdznB/EOt76Ntsw/xVuJDil6PTxY1yJa7a6TFSBhqoF0AnJ
 PIAQ==
X-Gm-Message-State: AOAM531kWKMKnzK4VWluhL70gr+PgpDatG677kLcMna3dJIogqyj4e1t
 qiP0QgUCoswTm3RafKN/P/dWnMLp4uuJESBri6wNCRj9TKT5GBnfDdYVvcXIXyQV9Oba7wZZVz0
 5o+NaaD0dm1p/ruptbu1By7jvRwF+
X-Google-Smtp-Source: ABdhPJzsshWP3RR3VZ1NYrrvIhfJf5+bKhRxKYLMESI2WFZqXm6HIGid2DOT3GnIUl917Jbe9PETlGRhcFUoJeZGsIM=
X-Received: by 2002:a17:906:1cc9:: with SMTP id
 i9mr9223403ejh.345.1628615218493; 
 Tue, 10 Aug 2021 10:06:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAHb6LvqfRxKU0BW04ypRcPDpCcWymnS6qzb3gneQSbBrAbRhHQ@mail.gmail.com>
 <202108101410.17AEAR4w075939@gndrsh.dnsmgr.net>
 <5AF5551E2A7041168E7071FDA0F6B8EC@SRA6>
In-Reply-To: <5AF5551E2A7041168E7071FDA0F6B8EC@SRA6>
Date: Tue, 10 Aug 2021 10:06:47 -0700
Message-ID: <CAHb6LvpAmUKgsMAoZGrbAvS01DF=yWyJj56ox+FrDM_tEc=0Ng@mail.gmail.com>
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
Cc: starlink@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, codel <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>,
 "Rodney W. Grimes" <starlink@gndrsh.dnsmgr.net>
Content-Type: multipart/mixed; boundary="===============7343521462315695583=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7343521462315695583==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000a8808305c9378713"

--000000000000a8808305c9378713
Content-Type: multipart/alternative; boundary="00000000000094453605c93787ca"

--00000000000094453605c93787ca
Content-Type: text/plain; charset="UTF-8"

The slides show that for WiFi every transmission produces a complex
frequency response, aka the h-matrix. This is valid for that one
transmission only.  The slides show an amplitude plot for a 3 radio device
hence the 9 elements per the h-matrix. It's assumed that the WiFi STA/AP is
stationary such that doppler effects aren't a consideration. WiFi isn't a
car trying to connect to a cell tower.  The plot doesn't show the phase
effects but they are included as the output of the channel estimate is a
complex frequency response. Each RX produces the h-matrix ahead of the MAC.
These may not be symmetric in the real world but that's ok as
transmission and reception is one way only, i.e. the treating them as
repcripocol and the matrix as hollows symmetric isn't going to be a "test
blocker" as the goal is to be able to use software and programmable devices
to change them in near real time. The current approach used by many using
butler matrices to produce off-diagonal effects  is woefully inadequate.
And we're paying about $2.5K per each butler.

Bob


On Tue, Aug 10, 2021 at 9:13 AM Dick Roy <dickroy@alum.mit.edu> wrote:

> Well, I hesitate to drag this out, however Maxwell's equations and the
> invariance of the laws of physics ensure that all path loss matrices are
> reciprocal.  What that means is that at any for any given set of fixed
> boundary conditions (nothing moving/changing!), the propagation loss
> between
> any two points in the domain is the same in both directions. The
> "multipathing" in one direction is the same in the other because the
> two-parameter (angle1,angle2) scattering cross sections of all objects
> (remember they are fixed here) are independent of the ordering of the
> angles.
>
> Very importantly, path loss is NOT the same as the link loss (aka link
> budget) which involves tx power and rx noise figure (and in the case of
> smart antennas, there is a link per spatial stream and how those links are
> managed/controlled really matters, but let's just keep it simple for this
> discussion) and these generally are different on both ends of a link for a
> variety of reasons. The other very important issue is that of the
> ""measurement plane", or "where tx power and rx noise figure are being
> measured/referenced to and how well the interface at that plane is
> "matched".  We generally assume that the matching is perfect, however it
> never is. All of these effects contribute to the link loss which determines
> the strength of the signal coming out of the receiver (not the receive
> antenna, the receiver) for a given signal strength coming out of the
> transmitter (not the transmit antenna, the tx output port).
>
> In the real world, things change.  Sources and sinks move as do many of the
> objects around them.  This creates a time-varying RF environment, and now
> the path loss matrix is a function of time and a few others things, so it
> matters WHEN something is transmitted, and WHEN it is received, and the two
> WHEN's are generally separated by "the speed of light" which is a ft/ns
> roughly. As important is the fact that it's no longer really a path loss
> matrix containing a single scalar because among other things, the time
> varying environment induces change in the transmitted waveform on its way
> to
> the receiver most commonly referred to as the Doppler effect which means
> there is a frequency translation/shift for each (multi-)path of which there
> are in general an uncountably infinite number because this is a continuous
> world in which we live (the space quantization experiment being conducted
> in
> the central US aside:^)). As a consequence of these physical laws, the
> entries in the path loss matrix become complex functions of a number of
> variables including time. These functions are quite often characterized in
> terms of Doppler and delay-spread, terms used to describe in just a few
> parameters the amount of "distortion" a complex function causes.
>
> Hope this helps ... probably a bit more than you really wanted to know as
> queuing theorists, but ...
>
> -----Original Message-----
> From: Starlink [mailto:starlink-bounces@lists.bufferbloat.net] On Behalf
> Of
> Rodney W. Grimes
> Sent: Tuesday, August 10, 2021 7:10 AM
> To: Bob McMahon
> Cc: Cake List; Make-Wifi-fast; starlink@lists.bufferbloat.net;
> codel@lists.bufferbloat.net; cerowrt-devel; bloat
> Subject: Re: [Starlink] [Cake] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2:
> Internet Quality workshop CFP for the internet architecture board
>
> > The distance matrix defines signal attenuations/loss between pairs.  It's
> > straightforward to create a distance matrix that has hidden nodes because
> > all "signal  loss" between pairs is defined.  Let's say a 120dB
> attenuation
> > path will cause a node to be hidden as an example.
> >
> >      A    B     C    D
> > A   -   35   120   65
> > B         -      65   65
> > C               -       65
> > D                         -
> >
> > So in the above, AC are hidden from each other but nobody else is. It
> does
> > assume symmetry between pairs but that's typically true.
>
> That is not correct, symmetry in the RF world, especially wifi, is rare
> due to topology issues.  A high transmitter, A,  and a low receiver, B,
> has a good path A - > B, but a very weak path B -> A.   Multipathing
> is another major issue that causes assymtry.
>
> >
> > The RF device takes these distance matrices as settings and calculates
> the
> > five branch tree values (as demonstrated in the video). There are
> > limitations to solutions though but I've found those not to be an issue
> to
> > date. I've been able to produce hidden nodes quite readily. Add the phase
> > shifters and spatial stream powers can also be affected, but this isn't
> > shown in this simple example.
> >
> > Bob
> >
> > On Mon, Aug 2, 2021 at 8:12 PM David Lang <david@lang.hm> wrote:
> >
> > > I guess it depends on what you are intending to test. If you are not
> going
> > > to
> > > tinker with any of the over-the-air settings (including the number of
> > > packets
> > > transmitted in one aggregate), the details of what happen over the air
> > > don't
> > > matter much.
> > >
> > > But if you are going to be doing any tinkering with what is getting
> sent,
> > > and
> > > you ignore the hidden transmitter type problems, you will create a
> > > solution that
> > > seems to work really well in the lab and falls on it's face out in the
> > > wild
> > > where spectrum overload and hidden transmitters are the norm (at least
> in
> > > urban
> > > areas), not rare corner cases.
> > >
> > > you don't need to include them in every test, but you need to have a
> way
> > > to
> > > configure your lab to include them before you consider any
> > > settings/algorithm
> > > ready to try in the wild.
> > >
> > > David Lang
> > >
> > > On Mon, 2 Aug 2021, Bob McMahon wrote:
> > >
> > > > We find four nodes, a primary BSS and an adjunct one quite good for
> lots
> > > of
> > > > testing.  The six nodes allows for a primary BSS and two adjacent
> ones.
> > > We
> > > > want to minimize complexity to necessary and sufficient.
> > > >
> > > > The challenge we find is having variability (e.g. montecarlos) that's
> > > > reproducible and has relevant information. Basically, the distance
> > > matrices
> > > > have h-matrices as their elements. Our chips can provide these
> > > h-matrices.
> > > >
> > > > The parts for solid state programmable attenuators and phase shifters
> > > > aren't very expensive. A device that supports a five branch tree and
> 2x2
> > > > MIMO seems a very good starting point.
> > > >
> > > > Bob
> > > >
> > > > On Mon, Aug 2, 2021 at 4:55 PM Ben Greear <greearb@candelatech.com>
> > > wrote:
> > > >
> > > >> On 8/2/21 4:16 PM, David Lang wrote:
> > > >>> If you are going to setup a test environment for wifi, you need to
> > > >> include the ability to make a fe cases that only happen with RF, not
> > > with
> > > >> wired networks and
> > > >>> are commonly overlooked
> > > >>>
> > > >>> 1. station A can hear station B and C but they cannot hear each
> other
> > > >>> 2. station A can hear station B but station B cannot hear station A
> 3.
> > > >> station A can hear that station B is transmitting, but not with a
> strong
> > > >> enough signal to
> > > >>> decode the signal (yes in theory you can work around interference,
> but
> > > >> in practice interference is still a real thing)
> > > >>>
> > > >>> David Lang
> > > >>>
> > > >>
> > > >> To add to this, I think you need lots of different station devices,
> > > >> different capabilities (/n, /ac, /ax, etc)
> > > >> different numbers of spatial streams, and different distances from
> the
> > > >> AP.  From download queueing perspective, changing
> > > >> the capabilities may be sufficient while keeping all stations at
> same
> > > >> distance.  This assumes you are not
> > > >> actually testing the wifi rate-ctrl alg. itself, so different
> throughput
> > > >> levels for different stations would be enough.
> > > >>
> > > >> So, a good station emulator setup (and/or pile of real stations) and
> a
> > > few
> > > >> RF chambers and
> > > >> programmable attenuators and you can test that setup...
> > > >>
> > > >>  From upload perspective, I guess same setup would do the job.
> > > >> Queuing/fairness might depend a bit more on the
> > > >> station devices, emulated or otherwise, but I guess a clever AP
> could
> > > >> enforce fairness in upstream direction
> > > >> too by implementing per-sta queues.
> > > >>
> > > >> Thanks,
> > > >> Ben
> > > >>
> > > >> --
> > > >> Ben Greear <greearb@candelatech.com>
> > > >> Candela Technologies Inc  http://www.candelatech.com
> > > >>
> > > >
> > > >
> > >
> >
> > --
> > This electronic communication and the information and any files
> transmitted
> > with it, or attached to it, are confidential and are intended solely for
> > the use of the individual or entity to whom it is addressed and may
> contain
> > information that is confidential, legally privileged, protected by
> privacy
>
> > laws, or otherwise restricted from disclosure to anyone else. If you are
> > not the intended recipient or the person responsible for delivering the
> > e-mail to the intended recipient, you are hereby notified that any use,
> > copying, distributing, dissemination, forwarding, printing, or copying
> of
> > this e-mail is strictly prohibited. If you received this e-mail in
> error,
> > please return the e-mail to the sender, delete it from your computer,
> and
> > destroy any printed copy of it.
>
> [ Charset UTF-8 unsupported, converting... ]
> > _______________________________________________
> > Starlink mailing list
> > Starlink@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/starlink
> >
> _______________________________________________
> Starlink mailing list
> Starlink@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/starlink
>
>

-- 
This electronic communication and the information and any files transmitted 
with it, or attached to it, are confidential and are intended solely for 
the use of the individual or entity to whom it is addressed and may contain 
information that is confidential, legally privileged, protected by privacy 
laws, or otherwise restricted from disclosure to anyone else. If you are 
not the intended recipient or the person responsible for delivering the 
e-mail to the intended recipient, you are hereby notified that any use, 
copying, distributing, dissemination, forwarding, printing, or copying of 
this e-mail is strictly prohibited. If you received this e-mail in error, 
please return the e-mail to the sender, delete it from your computer, and 
destroy any printed copy of it.

--00000000000094453605c93787ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The slides show that for WiFi every transmission produces =
a complex frequency=C2=A0response, aka the h-matrix. This is valid for that=
 one transmission only.=C2=A0 The slides show an amplitude plot for a 3 rad=
io device hence the 9 elements per the h-matrix. It&#39;s assumed that the =
WiFi STA/AP is stationary such that doppler effects aren&#39;t a considerat=
ion. WiFi isn&#39;t a car trying to connect to a cell tower.=C2=A0 The plot=
 doesn&#39;t show the phase effects but they are included as the output of =
the channel estimate is a complex frequency response. Each RX produces the =
h-matrix ahead of the MAC. These may not be symmetric in the real world but=
 that&#39;s ok as transmission=C2=A0and reception is one way only, i.e. the=
 treating them as repcripocol and the matrix as hollows symmetric isn&#39;t=
 going to be a &quot;test blocker&quot; as the goal is to be able to use so=
ftware and programmable devices to change them in near real time. The curre=
nt approach used by many using butler matrices to produce off-diagonal=C2=
=A0effects=C2=A0 is woefully inadequate. And we&#39;re paying about $2.5K p=
er each butler.<br><span id=3D"gmail-docs-internal-guid-c23f4170-7fff-947a-=
4651-888888f0a88e"><img width=3D"535px;" height=3D"401px;" src=3D"https://l=
h3.googleusercontent.com/WqWMFHFPo3ltkxkpoyvgPxgdFxmnZpVvpw0NcCTFhGiOTjolvK=
bP4NugcE-vw1Q3vk9Z7R04YA1k3kQMvyiR5RhcHOjbXbsRMfjLBY-RYML2tFxovzMpTwww5UZiu=
0Xgxzhi8fFru_g"><br></span>Bob<br><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 10, 2021 at 9:13 AM Dick =
Roy &lt;<a href=3D"mailto:dickroy@alum.mit.edu">dickroy@alum.mit.edu</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Well, I=
 hesitate to drag this out, however Maxwell&#39;s equations and the<br>
invariance of the laws of physics ensure that all path loss matrices are<br=
>
reciprocal.=C2=A0 What that means is that at any for any given set of fixed=
<br>
boundary conditions (nothing moving/changing!), the propagation loss betwee=
n<br>
any two points in the domain is the same in both directions. The<br>
&quot;multipathing&quot; in one direction is the same in the other because =
the<br>
two-parameter (angle1,angle2) scattering cross sections of all objects<br>
(remember they are fixed here) are independent of the ordering of the<br>
angles.=C2=A0 <br>
<br>
Very importantly, path loss is NOT the same as the link loss (aka link<br>
budget) which involves tx power and rx noise figure (and in the case of<br>
smart antennas, there is a link per spatial stream and how those links are<=
br>
managed/controlled really matters, but let&#39;s just keep it simple for th=
is<br>
discussion) and these generally are different on both ends of a link for a<=
br>
variety of reasons. The other very important issue is that of the<br>
&quot;&quot;measurement plane&quot;, or &quot;where tx power and rx noise f=
igure are being<br>
measured/referenced to and how well the interface at that plane is<br>
&quot;matched&quot;.=C2=A0 We generally assume that the matching is perfect=
, however it<br>
never is. All of these effects contribute to the link loss which determines=
<br>
the strength of the signal coming out of the receiver (not the receive<br>
antenna, the receiver) for a given signal strength coming out of the<br>
transmitter (not the transmit antenna, the tx output port).=C2=A0 =C2=A0<br=
>
<br>
In the real world, things change.=C2=A0 Sources and sinks move as do many o=
f the<br>
objects around them.=C2=A0 This creates a time-varying RF environment, and =
now<br>
the path loss matrix is a function of time and a few others things, so it<b=
r>
matters WHEN something is transmitted, and WHEN it is received, and the two=
<br>
WHEN&#39;s are generally separated by &quot;the speed of light&quot; which =
is a ft/ns<br>
roughly. As important is the fact that it&#39;s no longer really a path los=
s<br>
matrix containing a single scalar because among other things, the time<br>
varying environment induces change in the transmitted waveform on its way t=
o<br>
the receiver most commonly referred to as the Doppler effect which means<br=
>
there is a frequency translation/shift for each (multi-)path of which there=
<br>
are in general an uncountably infinite number because this is a continuous<=
br>
world in which we live (the space quantization experiment being conducted i=
n<br>
the central US aside:^)). As a consequence of these physical laws, the<br>
entries in the path loss matrix become complex functions of a number of<br>
variables including time. These functions are quite often characterized in<=
br>
terms of Doppler and delay-spread, terms used to describe in just a few<br>
parameters the amount of &quot;distortion&quot; a complex function causes. =
<br>
<br>
Hope this helps ... probably a bit more than you really wanted to know as<b=
r>
queuing theorists, but ...<br>
<br>
-----Original Message-----<br>
From: Starlink [mailto:<a href=3D"mailto:starlink-bounces@lists.bufferbloat=
.net" target=3D"_blank">starlink-bounces@lists.bufferbloat.net</a>] On Beha=
lf Of<br>
Rodney W. Grimes<br>
Sent: Tuesday, August 10, 2021 7:10 AM<br>
To: Bob McMahon<br>
Cc: Cake List; Make-Wifi-fast; <a href=3D"mailto:starlink@lists.bufferbloat=
.net" target=3D"_blank">starlink@lists.bufferbloat.net</a>;<br>
<a href=3D"mailto:codel@lists.bufferbloat.net" target=3D"_blank">codel@list=
s.bufferbloat.net</a>; cerowrt-devel; bloat<br>
Subject: Re: [Starlink] [Cake] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2:<=
br>
Internet Quality workshop CFP for the internet architecture board<br>
<br>
&gt; The distance matrix defines signal attenuations/loss between pairs.=C2=
=A0 It&#39;s<br>
&gt; straightforward to create a distance matrix that has hidden nodes beca=
use<br>
&gt; all &quot;signal=C2=A0 loss&quot; between pairs is defined.=C2=A0 Let&=
#39;s say a 120dB<br>
attenuation<br>
&gt; path will cause a node to be hidden as an example.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 A=C2=A0 =C2=A0 B=C2=A0 =C2=A0 =C2=A0C=C2=A0 =C2=A0=
 D<br>
&gt; A=C2=A0 =C2=A0-=C2=A0 =C2=A035=C2=A0 =C2=A0120=C2=A0 =C2=A065<br>
&gt; B=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 65=C2=A0 =C2=
=A065<br>
&gt; C=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0=
 =C2=A0 =C2=A065<br>
&gt; D=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0-<br>
&gt; <br>
&gt; So in the above, AC are hidden from each other but nobody else is. It =
does<br>
&gt; assume symmetry between pairs but that&#39;s typically true.<br>
<br>
That is not correct, symmetry in the RF world, especially wifi, is rare<br>
due to topology issues.=C2=A0 A high transmitter, A,=C2=A0 and a low receiv=
er, B,<br>
has a good path A - &gt; B, but a very weak path B -&gt; A.=C2=A0 =C2=A0Mul=
tipathing<br>
is another major issue that causes assymtry.<br>
<br>
&gt; <br>
&gt; The RF device takes these distance matrices as settings and calculates=
 the<br>
&gt; five branch tree values (as demonstrated in the video). There are<br>
&gt; limitations to solutions though but I&#39;ve found those not to be an =
issue to<br>
&gt; date. I&#39;ve been able to produce hidden nodes quite readily. Add th=
e phase<br>
&gt; shifters and spatial stream powers can also be affected, but this isn&=
#39;t<br>
&gt; shown in this simple example.<br>
&gt; <br>
&gt; Bob<br>
&gt; <br>
&gt; On Mon, Aug 2, 2021 at 8:12 PM David Lang &lt;<a href=3D"mailto:david@=
lang.hm" target=3D"_blank">david@lang.hm</a>&gt; wrote:<br>
&gt; <br>
&gt; &gt; I guess it depends on what you are intending to test. If you are =
not<br>
going<br>
&gt; &gt; to<br>
&gt; &gt; tinker with any of the over-the-air settings (including the numbe=
r of<br>
&gt; &gt; packets<br>
&gt; &gt; transmitted in one aggregate), the details of what happen over th=
e air<br>
&gt; &gt; don&#39;t<br>
&gt; &gt; matter much.<br>
&gt; &gt;<br>
&gt; &gt; But if you are going to be doing any tinkering with what is getti=
ng<br>
sent,<br>
&gt; &gt; and<br>
&gt; &gt; you ignore the hidden transmitter type problems, you will create =
a<br>
&gt; &gt; solution that<br>
&gt; &gt; seems to work really well in the lab and falls on it&#39;s face o=
ut in the<br>
&gt; &gt; wild<br>
&gt; &gt; where spectrum overload and hidden transmitters are the norm (at =
least<br>
in<br>
&gt; &gt; urban<br>
&gt; &gt; areas), not rare corner cases.<br>
&gt; &gt;<br>
&gt; &gt; you don&#39;t need to include them in every test, but you need to=
 have a way<br>
&gt; &gt; to<br>
&gt; &gt; configure your lab to include them before you consider any<br>
&gt; &gt; settings/algorithm<br>
&gt; &gt; ready to try in the wild.<br>
&gt; &gt;<br>
&gt; &gt; David Lang<br>
&gt; &gt;<br>
&gt; &gt; On Mon, 2 Aug 2021, Bob McMahon wrote:<br>
&gt; &gt;<br>
&gt; &gt; &gt; We find four nodes, a primary BSS and an adjunct one quite g=
ood for<br>
lots<br>
&gt; &gt; of<br>
&gt; &gt; &gt; testing.=C2=A0 The six nodes allows for a primary BSS and tw=
o adjacent<br>
ones.<br>
&gt; &gt; We<br>
&gt; &gt; &gt; want to minimize complexity to necessary and sufficient.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; The challenge we find is having variability (e.g. montecarlo=
s) that&#39;s<br>
&gt; &gt; &gt; reproducible and has relevant information. Basically, the di=
stance<br>
&gt; &gt; matrices<br>
&gt; &gt; &gt; have h-matrices as their elements. Our chips can provide the=
se<br>
&gt; &gt; h-matrices.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; The parts for solid state programmable attenuators and phase=
 shifters<br>
&gt; &gt; &gt; aren&#39;t very expensive. A device that supports a five bra=
nch tree and<br>
2x2<br>
&gt; &gt; &gt; MIMO seems a very good starting point.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Bob<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; On Mon, Aug 2, 2021 at 4:55 PM Ben Greear &lt;<a href=3D"mai=
lto:greearb@candelatech.com" target=3D"_blank">greearb@candelatech.com</a>&=
gt;<br>
&gt; &gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;&gt; On 8/2/21 4:16 PM, David Lang wrote:<br>
&gt; &gt; &gt;&gt;&gt; If you are going to setup a test environment for wif=
i, you need to<br>
&gt; &gt; &gt;&gt; include the ability to make a fe cases that only happen =
with RF, not<br>
&gt; &gt; with<br>
&gt; &gt; &gt;&gt; wired networks and<br>
&gt; &gt; &gt;&gt;&gt; are commonly overlooked<br>
&gt; &gt; &gt;&gt;&gt;<br>
&gt; &gt; &gt;&gt;&gt; 1. station A can hear station B and C but they canno=
t hear each<br>
other<br>
&gt; &gt; &gt;&gt;&gt; 2. station A can hear station B but station B cannot=
 hear station A<br>
3.<br>
&gt; &gt; &gt;&gt; station A can hear that station B is transmitting, but n=
ot with a<br>
strong<br>
&gt; &gt; &gt;&gt; enough signal to<br>
&gt; &gt; &gt;&gt;&gt; decode the signal (yes in theory you can work around=
 interference,<br>
but<br>
&gt; &gt; &gt;&gt; in practice interference is still a real thing)<br>
&gt; &gt; &gt;&gt;&gt;<br>
&gt; &gt; &gt;&gt;&gt; David Lang<br>
&gt; &gt; &gt;&gt;&gt;<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; To add to this, I think you need lots of different stati=
on devices,<br>
&gt; &gt; &gt;&gt; different capabilities (/n, /ac, /ax, etc)<br>
&gt; &gt; &gt;&gt; different numbers of spatial streams, and different dist=
ances from<br>
the<br>
&gt; &gt; &gt;&gt; AP.=C2=A0 From download queueing perspective, changing<b=
r>
&gt; &gt; &gt;&gt; the capabilities may be sufficient while keeping all sta=
tions at same<br>
&gt; &gt; &gt;&gt; distance.=C2=A0 This assumes you are not<br>
&gt; &gt; &gt;&gt; actually testing the wifi rate-ctrl alg. itself, so diff=
erent<br>
throughput<br>
&gt; &gt; &gt;&gt; levels for different stations would be enough.<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; So, a good station emulator setup (and/or pile of real s=
tations) and<br>
a<br>
&gt; &gt; few<br>
&gt; &gt; &gt;&gt; RF chambers and<br>
&gt; &gt; &gt;&gt; programmable attenuators and you can test that setup...<=
br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 From upload perspective, I guess same setup would =
do the job.<br>
&gt; &gt; &gt;&gt; Queuing/fairness might depend a bit more on the<br>
&gt; &gt; &gt;&gt; station devices, emulated or otherwise, but I guess a cl=
ever AP could<br>
&gt; &gt; &gt;&gt; enforce fairness in upstream direction<br>
&gt; &gt; &gt;&gt; too by implementing per-sta queues.<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; Thanks,<br>
&gt; &gt; &gt;&gt; Ben<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; --<br>
&gt; &gt; &gt;&gt; Ben Greear &lt;<a href=3D"mailto:greearb@candelatech.com=
" target=3D"_blank">greearb@candelatech.com</a>&gt;<br>
&gt; &gt; &gt;&gt; Candela Technologies Inc=C2=A0 <a href=3D"http://www.can=
delatech.com" rel=3D"noreferrer" target=3D"_blank">http://www.candelatech.c=
om</a><br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; <br>
&gt; -- <br>
&gt; This electronic communication and the information and any files<br>
transmitted <br>
&gt; with it, or attached to it, are confidential and are intended solely f=
or <br>
&gt; the use of the individual or entity to whom it is addressed and may<br=
>
contain <br>
&gt; information that is confidential, legally privileged, protected by pri=
vacy<br>
<br>
&gt; laws, or otherwise restricted from disclosure to anyone else. If you a=
re <br>
&gt; not the intended recipient or the person responsible for delivering th=
e <br>
&gt; e-mail to the intended recipient, you are hereby notified that any use=
, <br>
&gt; copying, distributing, dissemination, forwarding, printing, or copying=
 of <br>
&gt; this e-mail is strictly prohibited. If you received this e-mail in err=
or, <br>
&gt; please return the e-mail to the sender, delete it from your computer, =
and <br>
&gt; destroy any printed copy of it.<br>
<br>
[ Charset UTF-8 unsupported, converting... ]<br>
&gt; _______________________________________________<br>
&gt; Starlink mailing list<br>
&gt; <a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">St=
arlink@lists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/starlink" rel=3D"nor=
eferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink<=
/a><br>
&gt; <br>
_______________________________________________<br>
Starlink mailing list<br>
<a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starlin=
k@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/starlink" rel=3D"noreferr=
er" target=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink</a><b=
r>
<br>
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
--00000000000094453605c93787ca--

--000000000000a8808305c9378713
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIQagYJKoZIhvcNAQcCoIIQWzCCEFcCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
gg3BMIIFDTCCA/WgAwIBAgIQeEqpED+lv77edQixNJMdADANBgkqhkiG9w0BAQsFADBMMSAwHgYD
VQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UE
AxMKR2xvYmFsU2lnbjAeFw0yMDA5MTYwMDAwMDBaFw0yODA5MTYwMDAwMDBaMFsxCzAJBgNVBAYT
AkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBS
MyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
vbCmXCcsbZ/a0fRIQMBxp4gJnnyeneFYpEtNydrZZ+GeKSMdHiDgXD1UnRSIudKo+moQ6YlCOu4t
rVWO/EiXfYnK7zeop26ry1RpKtogB7/O115zultAz64ydQYLe+a1e/czkALg3sgTcOOcFZTXk38e
aqsXsipoX1vsNurqPtnC27TWsA7pk4uKXscFjkeUE8JZu9BDKaswZygxBOPBQBwrA5+20Wxlk6k1
e6EKaaNaNZUy30q3ArEf30ZDpXyfCtiXnupjSK8WU2cK4qsEtj09JS4+mhi0CTCrCnXAzum3tgcH
cHRg0prcSzzEUDQWoFxyuqwiwhHu3sPQNmFOMwIDAQABo4IB2jCCAdYwDgYDVR0PAQH/BAQDAgGG
MGAGA1UdJQRZMFcGCCsGAQUFBwMCBggrBgEFBQcDBAYKKwYBBAGCNxQCAgYKKwYBBAGCNwoDBAYJ
KwYBBAGCNxUGBgorBgEEAYI3CgMMBggrBgEFBQcDBwYIKwYBBQUHAxEwEgYDVR0TAQH/BAgwBgEB
/wIBADAdBgNVHQ4EFgQUljPR5lgXWzR1ioFWZNW+SN6hj88wHwYDVR0jBBgwFoAUj/BLf6guRSSu
TVD6Y5qL3uLdG7wwegYIKwYBBQUHAQEEbjBsMC0GCCsGAQUFBzABhiFodHRwOi8vb2NzcC5nbG9i
YWxzaWduLmNvbS9yb290cjMwOwYIKwYBBQUHMAKGL2h0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5j
b20vY2FjZXJ0L3Jvb3QtcjMuY3J0MDYGA1UdHwQvMC0wK6ApoCeGJWh0dHA6Ly9jcmwuZ2xvYmFs
c2lnbi5jb20vcm9vdC1yMy5jcmwwWgYDVR0gBFMwUTALBgkrBgEEAaAyASgwQgYKKwYBBAGgMgEo
CjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzAN
BgkqhkiG9w0BAQsFAAOCAQEAdAXk/XCnDeAOd9nNEUvWPxblOQ/5o/q6OIeTYvoEvUUi2qHUOtbf
jBGdTptFsXXe4RgjVF9b6DuizgYfy+cILmvi5hfk3Iq8MAZsgtW+A/otQsJvK2wRatLE61RbzkX8
9/OXEZ1zT7t/q2RiJqzpvV8NChxIj+P7WTtepPm9AIj0Keue+gS2qvzAZAY34ZZeRHgA7g5O4TPJ
/oTd+4rgiU++wLDlcZYd/slFkaT3xg4qWDepEMjT4T1qFOQIL+ijUArYS4owpPg9NISTKa1qqKWJ
jFoyms0d0GwOniIIbBvhI2MJ7BSY9MYtWVT5jJO3tsVHwj4cp92CSFuGwunFMzCCA18wggJHoAMC
AQICCwQAAAAAASFYUwiiMA0GCSqGSIb3DQEBCwUAMEwxIDAeBgNVBAsTF0dsb2JhbFNpZ24gUm9v
dCBDQSAtIFIzMRMwEQYDVQQKEwpHbG9iYWxTaWduMRMwEQYDVQQDEwpHbG9iYWxTaWduMB4XDTA5
MDMxODEwMDAwMFoXDTI5MDMxODEwMDAwMFowTDEgMB4GA1UECxMXR2xvYmFsU2lnbiBSb290IENB
IC0gUjMxEzARBgNVBAoTCkdsb2JhbFNpZ24xEzARBgNVBAMTCkdsb2JhbFNpZ24wggEiMA0GCSqG
SIb3DQEBAQUAA4IBDwAwggEKAoIBAQDMJXaQeQZ4Ihb1wIO2hMoonv0FdhHFrYhy/EYCQ8eyip0E
XyTLLkvhYIJG4VKrDIFHcGzdZNHr9SyjD4I9DCuul9e2FIYQebs7E4B3jAjhSdJqYi8fXvqWaN+J
J5U4nwbXPsnLJlkNc96wyOkmDoMVxu9bi9IEYMpJpij2aTv2y8gokeWdimFXN6x0FNx04Druci8u
nPvQu7/1PQDhBjPogiuuU6Y6FnOM3UEOIDrAtKeh6bJPkC4yYOlXy7kEkmho5TgmYHWyn3f/kRTv
riBJ/K1AFUjRAjFhGV64l++td7dkmnq/X8ET75ti+w1s4FRpFqkD2m7pg5NxdsZphYIXAgMBAAGj
QjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBSP8Et/qC5FJK5N
UPpjmove4t0bvDANBgkqhkiG9w0BAQsFAAOCAQEAS0DbwFCq/sgM7/eWVEVJu5YACUGssxOGhigH
M8pr5nS5ugAtrqQK0/Xx8Q+Kv3NnSoPHRHt44K9ubG8DKY4zOUXDjuS5V2yq/BKW7FPGLeQkbLmU
Y/vcU2hnVj6DuM81IcPJaP7O2sJTqsyQiunwXUaMld16WCgaLx3ezQA3QY/tRG3XUyiXfvNnBB4V
14qWtNPeTCekTBtzc3b0F5nCH3oO4y0IrQocLP88q1UOD5F+NuvDV0m+4S4tfGCLw0FREyOdzvcy
a5QBqJnnLDMfOjsl0oZAzjsshnjJYS8Uuu7bVW/fhO4FCU29KNhyztNiUGUe65KXgzHZs7XKR1g/
XzCCBUkwggQxoAMCAQICDBhL7k9eiTHfluW70TANBgkqhkiG9w0BAQsFADBbMQswCQYDVQQGEwJC
RTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBHQ0MgUjMg
UGVyc29uYWxTaWduIDIgQ0EgMjAyMDAeFw0yMTAyMjIwNDQyMDRaFw0yMjA5MDEwODA5NDlaMIGM
MQswCQYDVQQGEwJJTjESMBAGA1UECBMJS2FybmF0YWthMRIwEAYDVQQHEwlCYW5nYWxvcmUxFjAU
BgNVBAoTDUJyb2FkY29tIEluYy4xFDASBgNVBAMTC0JvYiBNY01haG9uMScwJQYJKoZIhvcNAQkB
Fhhib2IubWNtYWhvbkBicm9hZGNvbS5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
AQDyY95HWFm48WhKUyFbAS9JxiDqBHBdAbgjx4iF46lkqZdVkIJ8pGfcXoGd10Vp9yL5VQevDAt/
A/Jh22uhSgKR9Almeux9xWGhG8cyZwcCwYrsMt84FqCgEQidT+7YGNdd9oKrjU7mFC7pAnnw+cGI
d3NFryurgnNPwfEK0X7HwRsga5pM+Zelr/ZM8MkphE1hCvTuPGakNylOFhP+wKL8Bmhsq5tNIInw
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIDhA3kTUYnm5j+3vafEQ5iFlQx6am7H/CpBd
79xRlekkMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDgxMDE3
MDY1OVowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQBYT/MTPyeUON3WnHy5Qym5kdAFwHcRWk26nlElzwf7wHiX5mxPIbW5
RnCTCA1z3xtg97aeWVcKFZlZMZKJTx1NIkTK0doBURNWXj7x8nTmn7N9jhhyza3hAKB4/mf+Lo4F
KUNEin5ZI9MrlfnTheMFounzwbn/k0u6dE3GyDuJBkhAZqEO8b6VWfrtDYfK9QsfgSKwrHFa55z9
So0phWiTbQ/HNIqqLcZ+oHTkLNEaamiYML3/R7UZXaHqN5CXKbpoMP0Ak0/6oHcrlko1cZ24zjbU
wn4jaFGQiP8IJUUPuAwOuvzyOpPI5DpFdxEr1SLmoE9AG7olehUirHAfe6IA
--000000000000a8808305c9378713--

--===============7343521462315695583==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7343521462315695583==--

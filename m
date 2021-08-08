Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A803A3E38C4
	for <lists+cake@lfdr.de>; Sun,  8 Aug 2021 07:04:49 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 807233CB40;
	Sun,  8 Aug 2021 01:04:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628399088;
	bh=ZNvuzmdmJ1ZNXKbr++I3IKiabVOqGv03ko87a3ZrjTM=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=jSwwRV1mdp0fBxIw7A+Sh+bLfUsgS5f76ZB6QqoacO9N+3hkz3+wlaZBUXBJyhasw
	 7wufsUu56/MoVZLeNsjavVIO+ogzHpBthW+YsjbHKcPtdFQSFfEqZ0vsFL//fjLPvX
	 jU1JcDwoMs9s/oWlJvUf1NkPcp+7FxavhuEn6J7J0mxbHyy37NBCrFBUdMt9six2zC
	 VcOqXTmiQrxgiYyW1DaMEU6dh0P4xEIGYPVUptsQC2MW0TZ/7PSD8/pVuhisQ045ht
	 TBxVOb2EwfoccAu2QNH2lq40OlF56uchbhDhRk97v+BLoMl2E2xT2kkNVAw6ocIbG8
	 9ZWnLESzsQMyQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9948A3CB38
 for <cake@lists.bufferbloat.net>; Sun,  8 Aug 2021 01:04:47 -0400 (EDT)
Received: by mail-ed1-x532.google.com with SMTP id by4so693731edb.0
 for <cake@lists.bufferbloat.net>; Sat, 07 Aug 2021 22:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EhK5MEN7yFi0eohW8CWgW/pJU5agfCPSuqr2GCaHpKY=;
 b=geubK0oJHr0EJ0IqkP3epr5mktnpyB/WYBaOOybvLeZpWRalrM6MXPx8dkKdsWH75f
 Ak3k5+WHeoAwNH8CZFF6bklQtKI44pq6DBURW5Y71Un8azFr3lA0vaQpLP1mddbTwzR5
 szzno86UkRFh3wfYcgWv4z+eW/1OruFisYxUw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EhK5MEN7yFi0eohW8CWgW/pJU5agfCPSuqr2GCaHpKY=;
 b=SKCNZfhnDrgbJBWukI6EutZF6DodoN87i35c/UhPyQW8SQu5x3e0giS40j4sgpEbR+
 4aoRxvoGJReHZfhBx9Q8qZxMKdLjPeLmtJ3gzIv9dS0pOSbsqF1J7xXnOAzfXz6j1JA1
 +q7KWNnL1ZDaBteBTvaTPMSXL3AJw9Eu5VbabYofzWSLMw/7mU2eqfpT/kdmksHEaAdS
 27f9UumQcfqta0tsv25PDrGUEFB1MlgcHwtj454B/6F3lr8MP30WrTbnv76OquCiA7b/
 CNR0ziGFyV2nnF54NoCa8IAx33QNHSVzjFMtQYFMF9UDqut27hrh2ne/GaLXVdF10sxM
 tfWQ==
X-Gm-Message-State: AOAM5337V8OCsUqMWS6EYqZJxRPMXGgdKU6LtOS0mFf6C6r2SXqk+BK5
 DTVSr0tdMICmquCce+Ybwx0a32ktF95PRXsjEmKM+WBqXRQ4LWJkf1+GPLgLZdYtB7W/cbY3vbO
 TVzhp5IqIzOr/Ot0pcJuj7V3YH7fv
X-Google-Smtp-Source: ABdhPJyklXXVMfJ4o3zQlWkIJ9UGMJAraiSkt9wzmcFcTHln4m3BmDDttRO1et+9bQFq/ItDnV8371shdCtwhV5xCjs=
X-Received: by 2002:aa7:c795:: with SMTP id n21mr22099635eds.182.1628399085957; 
 Sat, 07 Aug 2021 22:04:45 -0700 (PDT)
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
 <e9302d22-8a4a-a74b-658d-c5d4c1c88987@candelatech.com>
 <CAHb6Lvp851pVCt+zUv1PZgpHafCG4RPXEwMn6=CJFXhVf9fK8w@mail.gmail.com>
 <nycvar.QRO.7.76.6.2108022007460.810590@qynat-yncgbc>
 <CAHb6LvqfRxKU0BW04ypRcPDpCcWymnS6qzb3gneQSbBrAbRhHQ@mail.gmail.com>
 <nycvar.QRO.7.76.6.2108022127410.810590@qynat-yncgbc>
 <ECAAA0D844EC45589043A40B8D5AE4BF@SRA6>
In-Reply-To: <ECAAA0D844EC45589043A40B8D5AE4BF@SRA6>
Date: Sat, 7 Aug 2021 22:04:35 -0700
Message-ID: <CAHb6LvrmGt+VVrCnSh5mzdg-DP6yLqLujuFcFXo=2Mdg7HCxcw@mail.gmail.com>
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
 starlink@lists.bufferbloat.net, codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============5427178572246596495=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5427178572246596495==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="00000000000016bc5b05c905353e"

--00000000000016bc5b05c905353e
Content-Type: multipart/alternative; boundary="0000000000001281de05c90535c5"

--0000000000001281de05c90535c5
Content-Type: text/plain; charset="UTF-8"

The four nodes being connected per a five branch tree using variable
attenuators on the branches can produce hidden nodes quite readily. The
solutions for the attenuations are straight forward per being given the
desired distance matrices.

The challenging part is supporting distance matrices that have h-matrices
as the elements. The solid state variable phase shifters combined with
chips that can dump the h-matrix works fairly well per running monte carlos
and grabbing such a distance matrix. Mapping these distance matrices,
matrices with h-matrices as the elements, to "real world" conditions is not
so easy. But having the ability to do so at a reasonable price and in a
reproducible way is very worthwhile to automated testing systems.

Bob

On Sat, Aug 7, 2021 at 9:35 PM Dick Roy <dickroy@alum.mit.edu> wrote:

>
>
> -----Original Message-----
> From: Starlink [mailto:starlink-bounces@lists.bufferbloat.net] On Behalf
> Of
> David Lang
> Sent: Monday, August 2, 2021 9:31 PM
> To: Bob McMahon
> Cc: starlink@lists.bufferbloat.net; Make-Wifi-fast; Cake List;
> codel@lists.bufferbloat.net; cerowrt-devel; bloat
> Subject: Re: [Starlink] [Cake] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2:
> Internet Quality workshop CFP for the internet architecture board
>
> symmetry is not always (or usually) true.
> [RR] There is a big difference between "symmetric RF channels" and
> "balanced
> RF links".  Be careful not to confuse the two.
>
> stations are commonly heard at much
> larger distances than they can talk, mobile devices have much less
> transmit
> power (becuase they are operating on batteries) than fixed stations, and
> when
> you adjust the transmit power on a station, you don't adjust it's receive
> sensitivity.
>
> [RR] Not quite true. Rx sensitivity is a function of MCS (the modulation
> and
> coding scheme) and those levels can be adjusted, both up and down, by
> changing the MCS.  This is in fact one of the major tools that needs to be
> integrated into wireless systems today.  It's generally overlooked, though
> not always! Starlink should be doing this if they are not already BTW!
>
> David Lang
>
>   On Mon, 2 Aug 2021, Bob McMahon wrote:
>
> > Date: Mon, 2 Aug 2021 20:23:06 -0700
> > From: Bob McMahon <bob.mcmahon@broadcom.com>
> > To: David Lang <david@lang.hm>
> > Cc: Ben Greear <greearb@candelatech.com>,
> >     Luca Muscariello <muscariello@ieee.org>,
> >     Cake List <cake@lists.bufferbloat.net>,
> >     Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
> >     Leonard Kleinrock <lk@cs.ucla.edu>, starlink@lists.bufferbloat.net,
> >     codel@lists.bufferbloat.net,
> >     cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
> >     bloat <bloat@lists.bufferbloat.net>
> > Subject: Re: [Cake] [Make-wifi-fast] [Starlink] [Cerowrt-devel] Due Aug
> 2:
> >     Internet Quality workshop CFP for the internet architecture board
> >
> > The distance matrix defines signal attenuations/loss between pairs.  It's
> > straightforward to create a distance matrix that has hidden nodes because
> > all "signal  loss" between pairs is defined.  Let's say a 120dB
> attenuation
> > path will cause a node to be hidden as an example.
> >
> >     A    B     C    D
> > A   -   35   120   65
> > B         -      65   65
> > C               -       65
> > D                         -
> >
> > So in the above, AC are hidden from each other but nobody else is. It
> does
> > assume symmetry between pairs but that's typically true.
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
> >> I guess it depends on what you are intending to test. If you are not
> going
> >> to
> >> tinker with any of the over-the-air settings (including the number of
> >> packets
> >> transmitted in one aggregate), the details of what happen over the air
> >> don't
> >> matter much.
> >>
> >> But if you are going to be doing any tinkering with what is getting
> sent,
> >> and
> >> you ignore the hidden transmitter type problems, you will create a
> >> solution that
> >> seems to work really well in the lab and falls on it's face out in the
> >> wild
> >> where spectrum overload and hidden transmitters are the norm (at least
> in
> >> urban
> >> areas), not rare corner cases.
> >>
> >> you don't need to include them in every test, but you need to have a way
> >> to
> >> configure your lab to include them before you consider any
> >> settings/algorithm
> >> ready to try in the wild.
> >>
> >> David Lang
> >>
> >> On Mon, 2 Aug 2021, Bob McMahon wrote:
> >>
> >>> We find four nodes, a primary BSS and an adjunct one quite good for
> lots
> >> of
> >>> testing.  The six nodes allows for a primary BSS and two adjacent ones.
> >> We
> >>> want to minimize complexity to necessary and sufficient.
> >>>
> >>> The challenge we find is having variability (e.g. montecarlos) that's
> >>> reproducible and has relevant information. Basically, the distance
> >> matrices
> >>> have h-matrices as their elements. Our chips can provide these
> >> h-matrices.
> >>>
> >>> The parts for solid state programmable attenuators and phase shifters
> >>> aren't very expensive. A device that supports a five branch tree and
> 2x2
> >>> MIMO seems a very good starting point.
> >>>
> >>> Bob
> >>>
> >>> On Mon, Aug 2, 2021 at 4:55 PM Ben Greear <greearb@candelatech.com>
> >> wrote:
> >>>
> >>>> On 8/2/21 4:16 PM, David Lang wrote:
> >>>>> If you are going to setup a test environment for wifi, you need to
> >>>> include the ability to make a fe cases that only happen with RF, not
> >> with
> >>>> wired networks and
> >>>>> are commonly overlooked
> >>>>>
> >>>>> 1. station A can hear station B and C but they cannot hear each other
> >>>>> 2. station A can hear station B but station B cannot hear station A
> 3.
> >>>> station A can hear that station B is transmitting, but not with a
> strong
> >>>> enough signal to
> >>>>> decode the signal (yes in theory you can work around interference,
> but
> >>>> in practice interference is still a real thing)
> >>>>>
> >>>>> David Lang
> >>>>>
> >>>>
> >>>> To add to this, I think you need lots of different station devices,
> >>>> different capabilities (/n, /ac, /ax, etc)
> >>>> different numbers of spatial streams, and different distances from the
> >>>> AP.  From download queueing perspective, changing
> >>>> the capabilities may be sufficient while keeping all stations at same
> >>>> distance.  This assumes you are not
> >>>> actually testing the wifi rate-ctrl alg. itself, so different
> throughput
> >>>> levels for different stations would be enough.
> >>>>
> >>>> So, a good station emulator setup (and/or pile of real stations) and a
> >> few
> >>>> RF chambers and
> >>>> programmable attenuators and you can test that setup...
> >>>>
> >>>>  From upload perspective, I guess same setup would do the job.
> >>>> Queuing/fairness might depend a bit more on the
> >>>> station devices, emulated or otherwise, but I guess a clever AP could
> >>>> enforce fairness in upstream direction
> >>>> too by implementing per-sta queues.
> >>>>
> >>>> Thanks,
> >>>> Ben
> >>>>
> >>>> --
> >>>> Ben Greear <greearb@candelatech.com>
> >>>> Candela Technologies Inc  http://www.candelatech.com
> >>>>
> >>>
> >>>
> >>
> >
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

--0000000000001281de05c90535c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The four nodes being connected per a five branch tree usin=
g variable attenuators on the branches can produce hidden nodes quite readi=
ly. The solutions for the attenuations are straight forward per being given=
 the desired distance matrices.<br><br>The challenging=C2=A0part is support=
ing distance matrices that have h-matrices as the elements. The solid state=
 variable phase shifters combined=C2=A0with chips that can dump the h-matri=
x works fairly=C2=A0well per running=C2=A0monte carlos and grabbing such a =
distance matrix. Mapping these distance matrices, matrices with h-matrices =
as the elements, to &quot;real world&quot;=C2=A0conditions is not so easy. =
But having the ability to do so at a reasonable=C2=A0price and in a reprodu=
cible way is very worthwhile to automated=C2=A0testing=C2=A0systems.<br><br=
>Bob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Sat, Aug 7, 2021 at 9:35 PM Dick Roy &lt;<a href=3D"mailto:dickroy@a=
lum.mit.edu">dickroy@alum.mit.edu</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><br>
<br>
-----Original Message-----<br>
From: Starlink [mailto:<a href=3D"mailto:starlink-bounces@lists.bufferbloat=
.net" target=3D"_blank">starlink-bounces@lists.bufferbloat.net</a>] On Beha=
lf Of<br>
David Lang<br>
Sent: Monday, August 2, 2021 9:31 PM<br>
To: Bob McMahon<br>
Cc: <a href=3D"mailto:starlink@lists.bufferbloat.net" target=3D"_blank">sta=
rlink@lists.bufferbloat.net</a>; Make-Wifi-fast; Cake List;<br>
<a href=3D"mailto:codel@lists.bufferbloat.net" target=3D"_blank">codel@list=
s.bufferbloat.net</a>; cerowrt-devel; bloat<br>
Subject: Re: [Starlink] [Cake] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2:<=
br>
Internet Quality workshop CFP for the internet architecture board<br>
<br>
symmetry is not always (or usually) true. <br>
[RR] There is a big difference between &quot;symmetric RF channels&quot; an=
d &quot;balanced<br>
RF links&quot;.=C2=A0 Be careful not to confuse the two.<br>
<br>
stations are commonly heard at much <br>
larger distances than they can talk, mobile devices have much less transmit=
 <br>
power (becuase they are operating on batteries) than fixed stations, and<br=
>
when <br>
you adjust the transmit power on a station, you don&#39;t adjust it&#39;s r=
eceive <br>
sensitivity.<br>
<br>
[RR] Not quite true. Rx sensitivity is a function of MCS (the modulation an=
d<br>
coding scheme) and those levels can be adjusted, both up and down, by<br>
changing the MCS.=C2=A0 This is in fact one of the major tools that needs t=
o be<br>
integrated into wireless systems today.=C2=A0 It&#39;s generally overlooked=
, though<br>
not always! Starlink should be doing this if they are not already BTW!<br>
<br>
David Lang<br>
<br>
=C2=A0 On Mon, 2 Aug 2021, Bob McMahon wrote:<br>
<br>
&gt; Date: Mon, 2 Aug 2021 20:23:06 -0700<br>
&gt; From: Bob McMahon &lt;<a href=3D"mailto:bob.mcmahon@broadcom.com" targ=
et=3D"_blank">bob.mcmahon@broadcom.com</a>&gt;<br>
&gt; To: David Lang &lt;<a href=3D"mailto:david@lang.hm" target=3D"_blank">=
david@lang.hm</a>&gt;<br>
&gt; Cc: Ben Greear &lt;<a href=3D"mailto:greearb@candelatech.com" target=
=3D"_blank">greearb@candelatech.com</a>&gt;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Luca Muscariello &lt;<a href=3D"mailto:muscariello@=
ieee.org" target=3D"_blank">muscariello@ieee.org</a>&gt;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Cake List &lt;<a href=3D"mailto:cake@lists.bufferbl=
oat.net" target=3D"_blank">cake@lists.bufferbloat.net</a>&gt;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Make-Wifi-fast &lt;<a href=3D"mailto:make-wifi-fast=
@lists.bufferbloat.net" target=3D"_blank">make-wifi-fast@lists.bufferbloat.=
net</a>&gt;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Leonard Kleinrock &lt;<a href=3D"mailto:lk@cs.ucla.=
edu" target=3D"_blank">lk@cs.ucla.edu</a>&gt;, <a href=3D"mailto:starlink@l=
ists.bufferbloat.net" target=3D"_blank">starlink@lists.bufferbloat.net</a>,=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:codel@lists.bufferbloat.net" targ=
et=3D"_blank">codel@lists.bufferbloat.net</a>,<br>
&gt;=C2=A0 =C2=A0 =C2=A0cerowrt-devel &lt;<a href=3D"mailto:cerowrt-devel@l=
ists.bufferbloat.net" target=3D"_blank">cerowrt-devel@lists.bufferbloat.net=
</a>&gt;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0bloat &lt;<a href=3D"mailto:bloat@lists.bufferbloat=
.net" target=3D"_blank">bloat@lists.bufferbloat.net</a>&gt;<br>
&gt; Subject: Re: [Cake] [Make-wifi-fast] [Starlink] [Cerowrt-devel] Due Au=
g 2:<br>
&gt;=C2=A0 =C2=A0 =C2=A0Internet Quality workshop CFP for the internet arch=
itecture board<br>
&gt; <br>
&gt; The distance matrix defines signal attenuations/loss between pairs.=C2=
=A0 It&#39;s<br>
&gt; straightforward to create a distance matrix that has hidden nodes beca=
use<br>
&gt; all &quot;signal=C2=A0 loss&quot; between pairs is defined.=C2=A0 Let&=
#39;s say a 120dB<br>
attenuation<br>
&gt; path will cause a node to be hidden as an example.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0A=C2=A0 =C2=A0 B=C2=A0 =C2=A0 =C2=A0C=C2=A0 =C2=A0 =
D<br>
&gt; A=C2=A0 =C2=A0-=C2=A0 =C2=A035=C2=A0 =C2=A0120=C2=A0 =C2=A065<br>
&gt; B=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 65=C2=A0 =C2=
=A065<br>
&gt; C=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0=
 =C2=A0 =C2=A065<br>
&gt; D=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0-<br>
&gt;<br>
&gt; So in the above, AC are hidden from each other but nobody else is. It =
does<br>
&gt; assume symmetry between pairs but that&#39;s typically true.<br>
&gt;<br>
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
&gt;<br>
&gt; Bob<br>
&gt;<br>
&gt; On Mon, Aug 2, 2021 at 8:12 PM David Lang &lt;<a href=3D"mailto:david@=
lang.hm" target=3D"_blank">david@lang.hm</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; I guess it depends on what you are intending to test. If you are n=
ot<br>
going<br>
&gt;&gt; to<br>
&gt;&gt; tinker with any of the over-the-air settings (including the number=
 of<br>
&gt;&gt; packets<br>
&gt;&gt; transmitted in one aggregate), the details of what happen over the=
 air<br>
&gt;&gt; don&#39;t<br>
&gt;&gt; matter much.<br>
&gt;&gt;<br>
&gt;&gt; But if you are going to be doing any tinkering with what is gettin=
g sent,<br>
&gt;&gt; and<br>
&gt;&gt; you ignore the hidden transmitter type problems, you will create a=
<br>
&gt;&gt; solution that<br>
&gt;&gt; seems to work really well in the lab and falls on it&#39;s face ou=
t in the<br>
&gt;&gt; wild<br>
&gt;&gt; where spectrum overload and hidden transmitters are the norm (at l=
east in<br>
&gt;&gt; urban<br>
&gt;&gt; areas), not rare corner cases.<br>
&gt;&gt;<br>
&gt;&gt; you don&#39;t need to include them in every test, but you need to =
have a way<br>
&gt;&gt; to<br>
&gt;&gt; configure your lab to include them before you consider any<br>
&gt;&gt; settings/algorithm<br>
&gt;&gt; ready to try in the wild.<br>
&gt;&gt;<br>
&gt;&gt; David Lang<br>
&gt;&gt;<br>
&gt;&gt; On Mon, 2 Aug 2021, Bob McMahon wrote:<br>
&gt;&gt;<br>
&gt;&gt;&gt; We find four nodes, a primary BSS and an adjunct one quite goo=
d for lots<br>
&gt;&gt; of<br>
&gt;&gt;&gt; testing.=C2=A0 The six nodes allows for a primary BSS and two =
adjacent ones.<br>
&gt;&gt; We<br>
&gt;&gt;&gt; want to minimize complexity to necessary and sufficient.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; The challenge we find is having variability (e.g. montecarlos)=
 that&#39;s<br>
&gt;&gt;&gt; reproducible and has relevant information. Basically, the dist=
ance<br>
&gt;&gt; matrices<br>
&gt;&gt;&gt; have h-matrices as their elements. Our chips can provide these=
<br>
&gt;&gt; h-matrices.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; The parts for solid state programmable attenuators and phase s=
hifters<br>
&gt;&gt;&gt; aren&#39;t very expensive. A device that supports a five branc=
h tree and 2x2<br>
&gt;&gt;&gt; MIMO seems a very good starting point.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Bob<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Mon, Aug 2, 2021 at 4:55 PM Ben Greear &lt;<a href=3D"mailt=
o:greearb@candelatech.com" target=3D"_blank">greearb@candelatech.com</a>&gt=
;<br>
&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On 8/2/21 4:16 PM, David Lang wrote:<br>
&gt;&gt;&gt;&gt;&gt; If you are going to setup a test environment for wifi,=
 you need to<br>
&gt;&gt;&gt;&gt; include the ability to make a fe cases that only happen wi=
th RF, not<br>
&gt;&gt; with<br>
&gt;&gt;&gt;&gt; wired networks and<br>
&gt;&gt;&gt;&gt;&gt; are commonly overlooked<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; 1. station A can hear station B and C but they cannot =
hear each other<br>
&gt;&gt;&gt;&gt;&gt; 2. station A can hear station B but station B cannot h=
ear station A 3.<br>
&gt;&gt;&gt;&gt; station A can hear that station B is transmitting, but not=
 with a<br>
strong<br>
&gt;&gt;&gt;&gt; enough signal to<br>
&gt;&gt;&gt;&gt;&gt; decode the signal (yes in theory you can work around i=
nterference, but<br>
&gt;&gt;&gt;&gt; in practice interference is still a real thing)<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; David Lang<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; To add to this, I think you need lots of different station=
 devices,<br>
&gt;&gt;&gt;&gt; different capabilities (/n, /ac, /ax, etc)<br>
&gt;&gt;&gt;&gt; different numbers of spatial streams, and different distan=
ces from the<br>
&gt;&gt;&gt;&gt; AP.=C2=A0 From download queueing perspective, changing<br>
&gt;&gt;&gt;&gt; the capabilities may be sufficient while keeping all stati=
ons at same<br>
&gt;&gt;&gt;&gt; distance.=C2=A0 This assumes you are not<br>
&gt;&gt;&gt;&gt; actually testing the wifi rate-ctrl alg. itself, so differ=
ent<br>
throughput<br>
&gt;&gt;&gt;&gt; levels for different stations would be enough.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; So, a good station emulator setup (and/or pile of real sta=
tions) and a<br>
&gt;&gt; few<br>
&gt;&gt;&gt;&gt; RF chambers and<br>
&gt;&gt;&gt;&gt; programmable attenuators and you can test that setup...<br=
>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;=C2=A0 From upload perspective, I guess same setup would do=
 the job.<br>
&gt;&gt;&gt;&gt; Queuing/fairness might depend a bit more on the<br>
&gt;&gt;&gt;&gt; station devices, emulated or otherwise, but I guess a clev=
er AP could<br>
&gt;&gt;&gt;&gt; enforce fairness in upstream direction<br>
&gt;&gt;&gt;&gt; too by implementing per-sta queues.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Thanks,<br>
&gt;&gt;&gt;&gt; Ben<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt; Ben Greear &lt;<a href=3D"mailto:greearb@candelatech.com" =
target=3D"_blank">greearb@candelatech.com</a>&gt;<br>
&gt;&gt;&gt;&gt; Candela Technologies Inc=C2=A0 <a href=3D"http://www.cande=
latech.com" rel=3D"noreferrer" target=3D"_blank">http://www.candelatech.com=
</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
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
--0000000000001281de05c90535c5--

--00000000000016bc5b05c905353e
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEINKvPcRqV3YYYomuD7u5xXaUxUIdbJjlotKA
Z6lGwODKMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDgwODA1
MDQ0NlowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQCwYfZnGvvTDo+lMcPApiN9YlzQ2d5D2jId8e7//SvkiH92GWcEy91A
/pnqbJTxDexrYGAZbXCjfZIWIIINGPdSrLiBBso3UIxbtzW3iA3XP4Z0eGFK9vKDZJsStMCuOqhX
CXtoecUObb6pqaQLSq697q60vsK+EJk/EZxMad7v0lR8Hvuylv5qRgE7cVmwQfGCBu6AD0xIRASe
CYF1NBSL1rOleepBuZ35XAeXYVFG92ehh86DRT8bY+0GwUxN7Jcp8ipG6MBfm7Mzxf4X7WZ1kXEX
m0pUIiFxN3/bfulc7dqJjug3WbRvxR/OQ/gfGo3Z8sKuTCWidOV1O7wLE8OY
--00000000000016bc5b05c905353e--

--===============5427178572246596495==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5427178572246596495==--

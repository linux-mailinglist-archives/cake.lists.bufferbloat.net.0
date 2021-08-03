Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D1C3DF207
	for <lists+cake@lfdr.de>; Tue,  3 Aug 2021 18:02:04 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6C5B33CB54;
	Tue,  3 Aug 2021 12:01:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628006515;
	bh=wxt20P40Tn9tSg2jw7RU96smydHxpX2CVB1SN7Idy3A=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=BHPDJCDGi2tUbG8/mkNXiC+hJ3wnPMux33+ngjYFaUWDEAQA55GaUKk3lZqsRZGj/
	 2XGHMpWKH5zK1DXpcG90tqGIQyHpVjGBz26TaBo5LmikVbeoJDNjP3f3Or2MA/4juE
	 fMerPwOM72ROFAPwjYVEkEBCjtA/JDCZrretOXOycwguZSVZMr6xCoFaN3Sjclz19x
	 nmrMYMBDnjPtuUtJQ4dG2HxVdkk2KWUEJW6NIxaWJ2dFxaLwHfDKa4fJDQPhxSCEvp
	 W8OTos1t1Lnnm+DaEkegH/+ILEI5JBLTSCl/LuS/GYFWXoU/FyFElYmiEmbu4D7CZP
	 V/W2EO6jDpJsg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9566C3CB40
 for <cake@lists.bufferbloat.net>; Tue,  3 Aug 2021 12:01:53 -0400 (EDT)
Received: by mail-ej1-x62e.google.com with SMTP id x11so36204321ejj.8
 for <cake@lists.bufferbloat.net>; Tue, 03 Aug 2021 09:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Zma5XZYWwNQAaVF+tD0PuG9SfN6LYaR2dxBAPqARyrc=;
 b=Tmy0D+mr+fHTJGIwG8iMoGrRMcVIrJojMHEMcepYt3EuY7NHsC27rCEB2ERJ+Ef8PO
 kbR5EJ8aqhZB38PGO1CFNEuWSnWXGenjgm6jJvho0lHtLXCxkVE4rVLKhbLcA+bKZZ9F
 DDsdkAJqmTuKyey6EwuDcViCh6zbpmwchKKAY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zma5XZYWwNQAaVF+tD0PuG9SfN6LYaR2dxBAPqARyrc=;
 b=faksUD9qMBhctjFw1r4TZ8hHG+cuUU3wm81brGfCO0M6XPsEI8bHhARMqNSXjyo03d
 wnEGC5wxyVi9ijyXrVdVvHk7DrwVNbNmm8sShaJMRLSt24kn9H6L5GW0wDaMTXtrZLW3
 4XkCNjoVSFAHZhHL6/85xgfokbUP3zJ2vs0fsCjxRQyDzdGa19llqwQ1hGBAPxLpbiW+
 a/gFXbnBcWrlUZBpu0KDlmy8D1kQu9lFPD0WEXLF597fQ77rXtBGQ1LyWPs8KcJgv07+
 2pOD9ZRw5z3vdpGTP7Pnp1RM7Go4YTQpb81OFPcOELdh+lkou3P/2CUqRNebUIDnKeBp
 4CFA==
X-Gm-Message-State: AOAM5317RfCLHOpvimVMQgG5tMPBvhx/7HIeDPDgopIx4qi0JZJ7pTYg
 xdGXvDpNHyLBBvpGKJgiW4PWkJqPUvAAdexUcO2s50HqWta5NjsRAu97ZTOFRNaeH/kDHFMPwAp
 RfcfSh6jnSDK2Gb37MRcx7kQkQ3tj
X-Google-Smtp-Source: ABdhPJwcDj0iVl7bByGnJ8NcmqnT/ud3mouS4JdD/ad1TDnUfl1Xd//V4rnvsmMP4ZS1Zt0xlYeSd16UpeWy4ROv0tg=
X-Received: by 2002:a17:906:a04f:: with SMTP id
 bg15mr21718333ejb.417.1628006511930; 
 Tue, 03 Aug 2021 09:01:51 -0700 (PDT)
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
 <CAHb6LvpcawqCvgt5MmhXADYG=oaY5rbdaC=7ETwOVzpHXak2kQ@mail.gmail.com>
 <nycvar.QRO.7.76.6.2108022140240.810590@qynat-yncgbc>
In-Reply-To: <nycvar.QRO.7.76.6.2108022140240.810590@qynat-yncgbc>
Date: Tue, 3 Aug 2021 09:01:41 -0700
Message-ID: <CAHb6Lvpa+OoJBQNA99M9Nnxc0MBhKQp2NkcmhZg6PmNi-uEZKw@mail.gmail.com>
To: David Lang <david@lang.hm>
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
From: Bob McMahon via Cake <cake@lists.bufferbloat.net>
Reply-To: Bob McMahon <bob.mcmahon@broadcom.com>
Cc: starlink@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>, Cake List <cake@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: multipart/mixed; boundary="===============9010566807599193399=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============9010566807599193399==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000dcc78105c8a9cdcd"

--000000000000dcc78105c8a9cdcd
Content-Type: multipart/alternative; boundary="000000000000d6469305c8a9cda4"

--000000000000d6469305c8a9cda4
Content-Type: text/plain; charset="UTF-8"

Another thing to keep in mind is we're using a poor man's version of
emulating "passive channels" so the device transmit powers can provide
power asymmetry. The distance matrix is about the h-matrices (as shown
early in the slides.)  Even with that though, the h-matrix elements aren't
likely symmetric but it's a reasonable starting point to assume they are.
Also being able to switch them in near realtime allows for some forms of
transmit and receive asymmetry in the emulated channels as well.

Bob

On Mon, Aug 2, 2021 at 9:44 PM David Lang <david@lang.hm> wrote:

> I agree that we don't want to make perfect the enemy of better.
>
> A lot of the issues I'm calling out can be simulated/enhanced with
> different
> power levels.
>
> over wifi distances, I don't think time delays are going to be noticable
> (we're
> talking 10s to low 100s of feet, not miles)
>
> David Lang
>
> On Mon, 2 Aug 2021, Bob McMahon wrote:
>
> > fair enough, but for this "RF emulator device" being able to support
> > distance matrices, even hollow symmetric ones, is much better than what's
> > typically done. The variable solid state phase shifters are 0-360 so
> don't
> > provide real time delays either.
> >
> > This is another "something is better than nothing" type proposal. I think
> > it can be deployed at a relatively low cost which allows for more
> > standardized, automated test rigs and much less human interactions and
> > human errors.
> >
> > Bob
> >
> > On Mon, Aug 2, 2021 at 9:30 PM David Lang <david@lang.hm> wrote:
> >
> >> symmetry is not always (or usually) true. stations are commonly heard at
> >> much
> >> larger distances than they can talk, mobile devices have much less
> >> transmit
> >> power (becuase they are operating on batteries) than fixed stations, and
> >> when
> >> you adjust the transmit power on a station, you don't adjust it's
> receive
> >> sensitivity.
> >>
> >> David Lang
> >>
> >>   On Mon, 2 Aug 2021, Bob McMahon wrote:
> >>
> >>> Date: Mon, 2 Aug 2021 20:23:06 -0700
> >>> From: Bob McMahon <bob.mcmahon@broadcom.com>
> >>> To: David Lang <david@lang.hm>
> >>> Cc: Ben Greear <greearb@candelatech.com>,
> >>>     Luca Muscariello <muscariello@ieee.org>,
> >>>     Cake List <cake@lists.bufferbloat.net>,
> >>>     Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
> >>>     Leonard Kleinrock <lk@cs.ucla.edu>, starlink@lists.bufferbloat.net
> ,
> >>>     codel@lists.bufferbloat.net,
> >>>     cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
> >>>     bloat <bloat@lists.bufferbloat.net>
> >>> Subject: Re: [Cake] [Make-wifi-fast] [Starlink] [Cerowrt-devel] Due Aug
> >> 2:
> >>>     Internet Quality workshop CFP for the internet architecture board
> >>>
> >>> The distance matrix defines signal attenuations/loss between pairs.
> It's
> >>> straightforward to create a distance matrix that has hidden nodes
> because
> >>> all "signal  loss" between pairs is defined.  Let's say a 120dB
> >> attenuation
> >>> path will cause a node to be hidden as an example.
> >>>
> >>>     A    B     C    D
> >>> A   -   35   120   65
> >>> B         -      65   65
> >>> C               -       65
> >>> D                         -
> >>>
> >>> So in the above, AC are hidden from each other but nobody else is. It
> >> does
> >>> assume symmetry between pairs but that's typically true.
> >>>
> >>> The RF device takes these distance matrices as settings and calculates
> >> the
> >>> five branch tree values (as demonstrated in the video). There are
> >>> limitations to solutions though but I've found those not to be an issue
> >> to
> >>> date. I've been able to produce hidden nodes quite readily. Add the
> phase
> >>> shifters and spatial stream powers can also be affected, but this isn't
> >>> shown in this simple example.
> >>>
> >>> Bob
> >>>
> >>> On Mon, Aug 2, 2021 at 8:12 PM David Lang <david@lang.hm> wrote:
> >>>
> >>>> I guess it depends on what you are intending to test. If you are not
> >> going
> >>>> to
> >>>> tinker with any of the over-the-air settings (including the number of
> >>>> packets
> >>>> transmitted in one aggregate), the details of what happen over the air
> >>>> don't
> >>>> matter much.
> >>>>
> >>>> But if you are going to be doing any tinkering with what is getting
> >> sent,
> >>>> and
> >>>> you ignore the hidden transmitter type problems, you will create a
> >>>> solution that
> >>>> seems to work really well in the lab and falls on it's face out in the
> >>>> wild
> >>>> where spectrum overload and hidden transmitters are the norm (at least
> >> in
> >>>> urban
> >>>> areas), not rare corner cases.
> >>>>
> >>>> you don't need to include them in every test, but you need to have a
> way
> >>>> to
> >>>> configure your lab to include them before you consider any
> >>>> settings/algorithm
> >>>> ready to try in the wild.
> >>>>
> >>>> David Lang
> >>>>
> >>>> On Mon, 2 Aug 2021, Bob McMahon wrote:
> >>>>
> >>>>> We find four nodes, a primary BSS and an adjunct one quite good for
> >> lots
> >>>> of
> >>>>> testing.  The six nodes allows for a primary BSS and two adjacent
> ones.
> >>>> We
> >>>>> want to minimize complexity to necessary and sufficient.
> >>>>>
> >>>>> The challenge we find is having variability (e.g. montecarlos) that's
> >>>>> reproducible and has relevant information. Basically, the distance
> >>>> matrices
> >>>>> have h-matrices as their elements. Our chips can provide these
> >>>> h-matrices.
> >>>>>
> >>>>> The parts for solid state programmable attenuators and phase shifters
> >>>>> aren't very expensive. A device that supports a five branch tree and
> >> 2x2
> >>>>> MIMO seems a very good starting point.
> >>>>>
> >>>>> Bob
> >>>>>
> >>>>> On Mon, Aug 2, 2021 at 4:55 PM Ben Greear <greearb@candelatech.com>
> >>>> wrote:
> >>>>>
> >>>>>> On 8/2/21 4:16 PM, David Lang wrote:
> >>>>>>> If you are going to setup a test environment for wifi, you need to
> >>>>>> include the ability to make a fe cases that only happen with RF, not
> >>>> with
> >>>>>> wired networks and
> >>>>>>> are commonly overlooked
> >>>>>>>
> >>>>>>> 1. station A can hear station B and C but they cannot hear each
> other
> >>>>>>> 2. station A can hear station B but station B cannot hear station A
> >> 3.
> >>>>>> station A can hear that station B is transmitting, but not with a
> >> strong
> >>>>>> enough signal to
> >>>>>>> decode the signal (yes in theory you can work around interference,
> >> but
> >>>>>> in practice interference is still a real thing)
> >>>>>>>
> >>>>>>> David Lang
> >>>>>>>
> >>>>>>
> >>>>>> To add to this, I think you need lots of different station devices,
> >>>>>> different capabilities (/n, /ac, /ax, etc)
> >>>>>> different numbers of spatial streams, and different distances from
> the
> >>>>>> AP.  From download queueing perspective, changing
> >>>>>> the capabilities may be sufficient while keeping all stations at
> same
> >>>>>> distance.  This assumes you are not
> >>>>>> actually testing the wifi rate-ctrl alg. itself, so different
> >> throughput
> >>>>>> levels for different stations would be enough.
> >>>>>>
> >>>>>> So, a good station emulator setup (and/or pile of real stations)
> and a
> >>>> few
> >>>>>> RF chambers and
> >>>>>> programmable attenuators and you can test that setup...
> >>>>>>
> >>>>>>  From upload perspective, I guess same setup would do the job.
> >>>>>> Queuing/fairness might depend a bit more on the
> >>>>>> station devices, emulated or otherwise, but I guess a clever AP
> could
> >>>>>> enforce fairness in upstream direction
> >>>>>> too by implementing per-sta queues.
> >>>>>>
> >>>>>> Thanks,
> >>>>>> Ben
> >>>>>>
> >>>>>> --
> >>>>>> Ben Greear <greearb@candelatech.com>
> >>>>>> Candela Technologies Inc  http://www.candelatech.com
> >>>>>>
> >>>>>
> >>>>>
> >>>>
> >>>
> >>>
> >>
> >
> >
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

--000000000000d6469305c8a9cda4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Another thing to keep in mind is we&#39;re using a poor ma=
n&#39;s version of emulating &quot;passive channels&quot; so the device tra=
nsmit powers can provide power asymmetry. The distance matrix is about the =
h-matrices (as shown early in the slides.)=C2=A0 Even with that though, the=
 h-matrix elements aren&#39;t likely symmetric but it&#39;s a reasonable st=
arting point to assume they are. Also being able to switch them in near rea=
ltime=C2=A0allows for some forms of transmit=C2=A0and receive asymmetry in =
the emulated channels as well.<br><br>Bob</div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 2, 2021 at 9:44 PM Dav=
id Lang &lt;<a href=3D"mailto:david@lang.hm">david@lang.hm</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">I agree that we d=
on&#39;t want to make perfect the enemy of better.<br>
<br>
A lot of the issues I&#39;m calling out can be simulated/enhanced with diff=
erent <br>
power levels.<br>
<br>
over wifi distances, I don&#39;t think time delays are going to be noticabl=
e (we&#39;re <br>
talking 10s to low 100s of feet, not miles)<br>
<br>
David Lang<br>
<br>
On Mon, 2 Aug 2021, Bob McMahon wrote:<br>
<br>
&gt; fair enough, but for this &quot;RF emulator device&quot; being able to=
 support<br>
&gt; distance matrices, even hollow symmetric ones, is much better than wha=
t&#39;s<br>
&gt; typically done. The variable solid state phase shifters are 0-360 so d=
on&#39;t<br>
&gt; provide real time delays either.<br>
&gt;<br>
&gt; This is another &quot;something is better than nothing&quot; type prop=
osal. I think<br>
&gt; it can be deployed at a relatively low cost which allows for more<br>
&gt; standardized, automated test rigs and much less human interactions and=
<br>
&gt; human errors.<br>
&gt;<br>
&gt; Bob<br>
&gt;<br>
&gt; On Mon, Aug 2, 2021 at 9:30 PM David Lang &lt;<a href=3D"mailto:david@=
lang.hm" target=3D"_blank">david@lang.hm</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; symmetry is not always (or usually) true. stations are commonly he=
ard at<br>
&gt;&gt; much<br>
&gt;&gt; larger distances than they can talk, mobile devices have much less=
<br>
&gt;&gt; transmit<br>
&gt;&gt; power (becuase they are operating on batteries) than fixed station=
s, and<br>
&gt;&gt; when<br>
&gt;&gt; you adjust the transmit power on a station, you don&#39;t adjust i=
t&#39;s receive<br>
&gt;&gt; sensitivity.<br>
&gt;&gt;<br>
&gt;&gt; David Lang<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0On Mon, 2 Aug 2021, Bob McMahon wrote:<br>
&gt;&gt;<br>
&gt;&gt;&gt; Date: Mon, 2 Aug 2021 20:23:06 -0700<br>
&gt;&gt;&gt; From: Bob McMahon &lt;<a href=3D"mailto:bob.mcmahon@broadcom.c=
om" target=3D"_blank">bob.mcmahon@broadcom.com</a>&gt;<br>
&gt;&gt;&gt; To: David Lang &lt;<a href=3D"mailto:david@lang.hm" target=3D"=
_blank">david@lang.hm</a>&gt;<br>
&gt;&gt;&gt; Cc: Ben Greear &lt;<a href=3D"mailto:greearb@candelatech.com" =
target=3D"_blank">greearb@candelatech.com</a>&gt;,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Luca Muscariello &lt;<a href=3D"mailto:musc=
ariello@ieee.org" target=3D"_blank">muscariello@ieee.org</a>&gt;,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Cake List &lt;<a href=3D"mailto:cake@lists.=
bufferbloat.net" target=3D"_blank">cake@lists.bufferbloat.net</a>&gt;,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Make-Wifi-fast &lt;<a href=3D"mailto:make-w=
ifi-fast@lists.bufferbloat.net" target=3D"_blank">make-wifi-fast@lists.buff=
erbloat.net</a>&gt;,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Leonard Kleinrock &lt;<a href=3D"mailto:lk@=
cs.ucla.edu" target=3D"_blank">lk@cs.ucla.edu</a>&gt;, <a href=3D"mailto:st=
arlink@lists.bufferbloat.net" target=3D"_blank">starlink@lists.bufferbloat.=
net</a>,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:codel@lists.bufferbloat.n=
et" target=3D"_blank">codel@lists.bufferbloat.net</a>,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0cerowrt-devel &lt;<a href=3D"mailto:cerowrt=
-devel@lists.bufferbloat.net" target=3D"_blank">cerowrt-devel@lists.bufferb=
loat.net</a>&gt;,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0bloat &lt;<a href=3D"mailto:bloat@lists.buf=
ferbloat.net" target=3D"_blank">bloat@lists.bufferbloat.net</a>&gt;<br>
&gt;&gt;&gt; Subject: Re: [Cake] [Make-wifi-fast] [Starlink] [Cerowrt-devel=
] Due Aug<br>
&gt;&gt; 2:<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0Internet Quality workshop CFP for the inter=
net architecture board<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; The distance matrix defines signal attenuations/loss between p=
airs.=C2=A0 It&#39;s<br>
&gt;&gt;&gt; straightforward to create a distance matrix that has hidden no=
des because<br>
&gt;&gt;&gt; all &quot;signal=C2=A0 loss&quot; between pairs is defined.=C2=
=A0 Let&#39;s say a 120dB<br>
&gt;&gt; attenuation<br>
&gt;&gt;&gt; path will cause a node to be hidden as an example.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0A=C2=A0 =C2=A0 B=C2=A0 =C2=A0 =C2=A0C=C2=A0=
 =C2=A0 D<br>
&gt;&gt;&gt; A=C2=A0 =C2=A0-=C2=A0 =C2=A035=C2=A0 =C2=A0120=C2=A0 =C2=A065<=
br>
&gt;&gt;&gt; B=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 65=C2=
=A0 =C2=A065<br>
&gt;&gt;&gt; C=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-=C2=
=A0 =C2=A0 =C2=A0 =C2=A065<br>
&gt;&gt;&gt; D=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; So in the above, AC are hidden from each other but nobody else=
 is. It<br>
&gt;&gt; does<br>
&gt;&gt;&gt; assume symmetry between pairs but that&#39;s typically true.<b=
r>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; The RF device takes these distance matrices as settings and ca=
lculates<br>
&gt;&gt; the<br>
&gt;&gt;&gt; five branch tree values (as demonstrated in the video). There =
are<br>
&gt;&gt;&gt; limitations to solutions though but I&#39;ve found those not t=
o be an issue<br>
&gt;&gt; to<br>
&gt;&gt;&gt; date. I&#39;ve been able to produce hidden nodes quite readily=
. Add the phase<br>
&gt;&gt;&gt; shifters and spatial stream powers can also be affected, but t=
his isn&#39;t<br>
&gt;&gt;&gt; shown in this simple example.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Bob<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Mon, Aug 2, 2021 at 8:12 PM David Lang &lt;<a href=3D"mailt=
o:david@lang.hm" target=3D"_blank">david@lang.hm</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; I guess it depends on what you are intending to test. If y=
ou are not<br>
&gt;&gt; going<br>
&gt;&gt;&gt;&gt; to<br>
&gt;&gt;&gt;&gt; tinker with any of the over-the-air settings (including th=
e number of<br>
&gt;&gt;&gt;&gt; packets<br>
&gt;&gt;&gt;&gt; transmitted in one aggregate), the details of what happen =
over the air<br>
&gt;&gt;&gt;&gt; don&#39;t<br>
&gt;&gt;&gt;&gt; matter much.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; But if you are going to be doing any tinkering with what i=
s getting<br>
&gt;&gt; sent,<br>
&gt;&gt;&gt;&gt; and<br>
&gt;&gt;&gt;&gt; you ignore the hidden transmitter type problems, you will =
create a<br>
&gt;&gt;&gt;&gt; solution that<br>
&gt;&gt;&gt;&gt; seems to work really well in the lab and falls on it&#39;s=
 face out in the<br>
&gt;&gt;&gt;&gt; wild<br>
&gt;&gt;&gt;&gt; where spectrum overload and hidden transmitters are the no=
rm (at least<br>
&gt;&gt; in<br>
&gt;&gt;&gt;&gt; urban<br>
&gt;&gt;&gt;&gt; areas), not rare corner cases.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; you don&#39;t need to include them in every test, but you =
need to have a way<br>
&gt;&gt;&gt;&gt; to<br>
&gt;&gt;&gt;&gt; configure your lab to include them before you consider any=
<br>
&gt;&gt;&gt;&gt; settings/algorithm<br>
&gt;&gt;&gt;&gt; ready to try in the wild.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; David Lang<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On Mon, 2 Aug 2021, Bob McMahon wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; We find four nodes, a primary BSS and an adjunct one q=
uite good for<br>
&gt;&gt; lots<br>
&gt;&gt;&gt;&gt; of<br>
&gt;&gt;&gt;&gt;&gt; testing.=C2=A0 The six nodes allows for a primary BSS =
and two adjacent ones.<br>
&gt;&gt;&gt;&gt; We<br>
&gt;&gt;&gt;&gt;&gt; want to minimize complexity to necessary and sufficien=
t.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; The challenge we find is having variability (e.g. mont=
ecarlos) that&#39;s<br>
&gt;&gt;&gt;&gt;&gt; reproducible and has relevant information. Basically, =
the distance<br>
&gt;&gt;&gt;&gt; matrices<br>
&gt;&gt;&gt;&gt;&gt; have h-matrices as their elements. Our chips can provi=
de these<br>
&gt;&gt;&gt;&gt; h-matrices.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; The parts for solid state programmable attenuators and=
 phase shifters<br>
&gt;&gt;&gt;&gt;&gt; aren&#39;t very expensive. A device that supports a fi=
ve branch tree and<br>
&gt;&gt; 2x2<br>
&gt;&gt;&gt;&gt;&gt; MIMO seems a very good starting point.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Bob<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; On Mon, Aug 2, 2021 at 4:55 PM Ben Greear &lt;<a href=
=3D"mailto:greearb@candelatech.com" target=3D"_blank">greearb@candelatech.c=
om</a>&gt;<br>
&gt;&gt;&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; On 8/2/21 4:16 PM, David Lang wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; If you are going to setup a test environment f=
or wifi, you need to<br>
&gt;&gt;&gt;&gt;&gt;&gt; include the ability to make a fe cases that only h=
appen with RF, not<br>
&gt;&gt;&gt;&gt; with<br>
&gt;&gt;&gt;&gt;&gt;&gt; wired networks and<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; are commonly overlooked<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1. station A can hear station B and C but they=
 cannot hear each other<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; 2. station A can hear station B but station B =
cannot hear station A<br>
&gt;&gt; 3.<br>
&gt;&gt;&gt;&gt;&gt;&gt; station A can hear that station B is transmitting,=
 but not with a<br>
&gt;&gt; strong<br>
&gt;&gt;&gt;&gt;&gt;&gt; enough signal to<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; decode the signal (yes in theory you can work =
around interference,<br>
&gt;&gt; but<br>
&gt;&gt;&gt;&gt;&gt;&gt; in practice interference is still a real thing)<br=
>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; David Lang<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; To add to this, I think you need lots of different=
 station devices,<br>
&gt;&gt;&gt;&gt;&gt;&gt; different capabilities (/n, /ac, /ax, etc)<br>
&gt;&gt;&gt;&gt;&gt;&gt; different numbers of spatial streams, and differen=
t distances from the<br>
&gt;&gt;&gt;&gt;&gt;&gt; AP.=C2=A0 From download queueing perspective, chan=
ging<br>
&gt;&gt;&gt;&gt;&gt;&gt; the capabilities may be sufficient while keeping a=
ll stations at same<br>
&gt;&gt;&gt;&gt;&gt;&gt; distance.=C2=A0 This assumes you are not<br>
&gt;&gt;&gt;&gt;&gt;&gt; actually testing the wifi rate-ctrl alg. itself, s=
o different<br>
&gt;&gt; throughput<br>
&gt;&gt;&gt;&gt;&gt;&gt; levels for different stations would be enough.<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; So, a good station emulator setup (and/or pile of =
real stations) and a<br>
&gt;&gt;&gt;&gt; few<br>
&gt;&gt;&gt;&gt;&gt;&gt; RF chambers and<br>
&gt;&gt;&gt;&gt;&gt;&gt; programmable attenuators and you can test that set=
up...<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 From upload perspective, I guess same setup =
would do the job.<br>
&gt;&gt;&gt;&gt;&gt;&gt; Queuing/fairness might depend a bit more on the<br=
>
&gt;&gt;&gt;&gt;&gt;&gt; station devices, emulated or otherwise, but I gues=
s a clever AP could<br>
&gt;&gt;&gt;&gt;&gt;&gt; enforce fairness in upstream direction<br>
&gt;&gt;&gt;&gt;&gt;&gt; too by implementing per-sta queues.<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Thanks,<br>
&gt;&gt;&gt;&gt;&gt;&gt; Ben<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt;&gt;&gt; Ben Greear &lt;<a href=3D"mailto:greearb@candelate=
ch.com" target=3D"_blank">greearb@candelatech.com</a>&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Candela Technologies Inc=C2=A0 <a href=3D"http://w=
ww.candelatech.com" rel=3D"noreferrer" target=3D"_blank">http://www.candela=
tech.com</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
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
--000000000000d6469305c8a9cda4--

--000000000000dcc78105c8a9cdcd
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIIjNcfKQ9tcFrOWfveOaMt+DUK7z7xJRIKVL
ADuGGICxMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDgwMzE2
MDE1MlowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQAyVVsKxnYGBezFO4McPA7ZWSgDddhlW6SpchXaj/AD4psZV8QrlV7p
IJ7HXNfKnng+7amFmn41siViUnKJMNAspyN13REYl5qhI8iXCWyuobaGcKeEvhTrkSocT9x6kjRT
a08ExPT9NXaqYAP8oP+j6C2tnrWPHGY4NSuhEjtB5j2tULG9adPzXseDBjIUtFvCwuR+eVVSR4kE
2pgaf8K2fBMWbtYedh8uz/Ho9cz8k7R93gHwz794UnoyJQNc7h3WJrP/KRUYeu7e2G9KclTJud+8
7ByLjQp03fSim37CEYoq7c7hK4tL/L93OR5/haTp7Uxx1e2e1s744ANae5xI
--000000000000dcc78105c8a9cdcd--

--===============9010566807599193399==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============9010566807599193399==--

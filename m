Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 301643E838D
	for <lists+cake@lfdr.de>; Tue, 10 Aug 2021 21:21:18 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5EC473CB40;
	Tue, 10 Aug 2021 15:21:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628623276;
	bh=2Ltxip4VT3bZZCy1JL0rzSv8GtMWWde3b88hjWDO5gU=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=mRxAV9tPWCkce8BMMGCp7pM24gix2PbFp9E5ryS9Q5luxs5cTSs9u0Z+6EM67iQ+N
	 xd+8/v0rjMZr9gJswjeh/FP2XSOjw5Z27JVvDjKBo0yw6hEs3AvaGQ2Asq67t3af3l
	 sVEFNvmJVsr7VqPuXGUSXIag+hEwNR2S1Ya5AORYeB9y15QCDG5jnF7bUBK5WfdxhC
	 xudNib9f1fG+YNEBMSgcrLeSby9m5N/OrumFIttvfPHZpXvKOKcVxrtu4PPPoBDQNz
	 +Xu0cKvPE0x/2S9zHzzM6TRbU7PbKxk9OcOXu6NkjMY8vXfruxq/A9RawHbyDgo0cl
	 QwAMWc6XWiPWA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 927813CB37
 for <cake@lists.bufferbloat.net>; Tue, 10 Aug 2021 15:21:14 -0400 (EDT)
Received: by mail-ej1-x629.google.com with SMTP id oz16so21239656ejc.7
 for <cake@lists.bufferbloat.net>; Tue, 10 Aug 2021 12:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=21WNl86p9H0loS/GqSopiP9wlnnfWqCSLL3CXcmmx/c=;
 b=PXUOkIfuHkdKavqi2rk1s90xE37DyjACEL3p0EBjKg9skpOj5uQ8jwg9qVdRbf8K+e
 Sf3e2FnAcxyRMekbYAJmL6NVp+MZo34X7zbZDs6hw5z4aiWvyImIPhS9KMblrvES4HYN
 Y5UBwKZlFwb0pyS8QK0WSftXge0egDJwIcN7o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=21WNl86p9H0loS/GqSopiP9wlnnfWqCSLL3CXcmmx/c=;
 b=c6Z5hQiitzc41gIMUkZMy2Nf7EOxUUP9tANPIJoPJCEKQjY620TF8XeT8vrSgvvZaP
 1Td8gPgRWdoGjUerDROp4EiYpDNw7T5HA3HbAnzqHOFwnOuSXki00HN7R44TzI2xSCOR
 ktm8nkz3Dlfb/BW34btmBG/EcP34/u4JQGpnaMEnL8Nabib3Q8lmluLrgKiySYglCvon
 ST5KN2df9HbDArJPKMP+dG8dJ5aSfM1AmNU25mH7eY0Kg7zJzZa4SkP+x9/lZV1CvebJ
 S+FEciXQ+ZBUa7fCr/Hj5BfGA54v/V4cVmCpt9E//0jLxHu+rtO4a7Tk5sX8P7yTZ6t4
 cjSA==
X-Gm-Message-State: AOAM532NWtcVuMGx1cuiqBqjF/A6h0G7bCIwRVOKaBKomwsAgr8X4YRk
 slT+/wnF7xFQpTolurqOI+qEfr7W7fFu31AddeBsS7+rhOA4LA2GdNkw8DVk4Bytl2nJrnf68Hk
 x85XfTZnZNnLQLTa7hbLKvlpQzZeh
X-Google-Smtp-Source: ABdhPJy7G0fodo1ePC5PV/oNzzgB8fcT4UpMtUNXIWXTkHoLnpciXrN/lrbBndD6ceVKc2NVW4ez2pb47GVYVLxEeTg=
X-Received: by 2002:a17:906:a04f:: with SMTP id
 bg15mr45595ejb.417.1628623273066; 
 Tue, 10 Aug 2021 12:21:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAHb6LvqfRxKU0BW04ypRcPDpCcWymnS6qzb3gneQSbBrAbRhHQ@mail.gmail.com>
 <202108101410.17AEAR4w075939@gndrsh.dnsmgr.net>
 <5AF5551E2A7041168E7071FDA0F6B8EC@SRA6>
 <CAHb6LvpAmUKgsMAoZGrbAvS01DF=yWyJj56ox+FrDM_tEc=0Ng@mail.gmail.com>
 <03CA2CDA3EC5415DA229F835BE039994@SRA6>
In-Reply-To: <03CA2CDA3EC5415DA229F835BE039994@SRA6>
Date: Tue, 10 Aug 2021 12:21:00 -0700
Message-ID: <CAHb6LvoiVZq91m-C3iJFC95fYLPHCY3zQo6O0XTUDAJquu5KbQ@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============8465821427963854104=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8465821427963854104==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000b2fc2a05c939676c"

--000000000000b2fc2a05c939676c
Content-Type: multipart/alternative; boundary="000000000000aaaccb05c93967e4"

--000000000000aaaccb05c93967e4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This amplitude only channel estimate shown was taken from radios connected
using conducted equipment or cables. It illustrates how non-ideal conducted
equipment based testing is, i.e. our signal processing and MCS rate
selection engineers aren't being sufficiently challenged!

The cost of $2.5K for a butler matrix is just one component. Each antenna
is connected to a programmable attenuator. Then the shielded cabling. Then
one of these per engineer and tens to low hundreds per each automated test
engineer. This doesn't include the cost of programmers to write the code.
The expenses grow quickly. Hence the idea to amortize a better design
across the industry (if viable.)

Modeling the distance matrix (suggestions for a better name?) and realizing
D1 path loss using a five branch tree and programmable attenuators has
proven to work for testing things like hidden nodes and for TX op
arbitrations. The next missing piece is to realize the mixing, the h(n,n)
below with programmability and at a reasonable price. That's where the
programmable phase shifters come in. Our chips will dump their chan
estimates relatively quickly so we can run monte carlos and calibrate the
equipment, producing the spatial stream eigen values or condition numbers
as well. Early prototyping showed that phase shifters will affect spatial
stream powers per the algorithms and this should work. Being able to affect
both the path loss and mixing within 10 ms of a command seems a reasonable
ask if using solid state parts. No need for roombas.


[image: CodeCogsEqn (2).png]

Of course, all of these RF effects affect network availability and, hence,
queueing too. We've done a lot of work with iperf 2 around latencies to
help qualify that. That's released as open source.

Complex indeed,

Bob

On Tue, Aug 10, 2021 at 11:11 AM Dick Roy <dickroy@alum.mit.edu> wrote:

> To add a bit more, as is easily seen below, the amplitudes of each of the
> transfer functions between the three transmit and three receive antennas
> are extremely similar.  This is to be expected, of course, since the
> =E2=80=9Caperture=E2=80=9D of each array is very small compared to the di=
stance between
> them.  What is much more interesting and revealing is the relative phases=
.
> Obviously this requires coherent receivers, and ultimately if you want to
> control the spatial distribution of power (aka SDMA (or MIMO in some
> circles) coherent transmitters. It turns out that just knowing the
> amplitude of the transfer functions is not really all that useful for
> anything other than detecting a broken solder joint:^)))
>
>
>
> Also, do not forget that depending how these experiments were conducted,
> the estimates are either of the RF channel itself (aka path loss),or of t=
he
> RF channel in combination with the transfer functions of the transmitters
> and//or receivers.  What this means is the CALIBRATION is CRUCIAL!  Those
> who do not calibrate, are doomed to fail!!!!   I suspect that it is in
> calibration where the major difference in performance between vendors=E2=
=80=99=E2=80=99
> products can be found :^))))
>
>
>
> It=E2=80=99s complicated =E2=80=A6
>
>
> ------------------------------
>
> *From:* Bob McMahon [mailto:bob.mcmahon@broadcom.com]
> *Sent:* Tuesday, August 10, 2021 10:07 AM
> *To:* dickroy@alum.mit.edu
> *Cc:* Rodney W. Grimes; Cake List; Make-Wifi-fast;
> starlink@lists.bufferbloat.net; codel; cerowrt-devel; bloat
> *Subject:* Re: [Starlink] [Cake] [Make-wifi-fast] [Cerowrt-devel] Due Aug
> 2: Internet Quality workshop CFP for the internet architecture board
>
>
>
> The slides show that for WiFi every transmission produces a complex
> frequency response, aka the h-matrix. This is valid for that one
> transmission only.  The slides show an amplitude plot for a 3 radio devic=
e
> hence the 9 elements per the h-matrix. It's assumed that the WiFi STA/AP =
is
> stationary such that doppler effects aren't a consideration. WiFi isn't a
> car trying to connect to a cell tower.  The plot doesn't show the phase
> effects but they are included as the output of the channel estimate is a
> complex frequency response. Each RX produces the h-matrix ahead of the MA=
C.
> These may not be symmetric in the real world but that's ok as
> transmission and reception is one way only, i.e. the treating them as
> repcripocol and the matrix as hollows symmetric isn't going to be a "test
> blocker" as the goal is to be able to use software and programmable devic=
es
> to change them in near real time. The current approach used by many using
> butler matrices to produce off-diagonal effects  is woefully inadequate.
> And we're paying about $2.5K per each butler.
>
> Bob
>
>
>
> On Tue, Aug 10, 2021 at 9:13 AM Dick Roy <dickroy@alum.mit.edu> wrote:
>
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
> smart antennas, there is a link per spatial stream and how those links ar=
e
> managed/controlled really matters, but let's just keep it simple for this
> discussion) and these generally are different on both ends of a link for =
a
> variety of reasons. The other very important issue is that of the
> ""measurement plane", or "where tx power and rx noise figure are being
> measured/referenced to and how well the interface at that plane is
> "matched".  We generally assume that the matching is perfect, however it
> never is. All of these effects contribute to the link loss which determin=
es
> the strength of the signal coming out of the receiver (not the receive
> antenna, the receiver) for a given signal strength coming out of the
> transmitter (not the transmit antenna, the tx output port).
>
> In the real world, things change.  Sources and sinks move as do many of t=
he
> objects around them.  This creates a time-varying RF environment, and now
> the path loss matrix is a function of time and a few others things, so it
> matters WHEN something is transmitted, and WHEN it is received, and the t=
wo
> WHEN's are generally separated by "the speed of light" which is a ft/ns
> roughly. As important is the fact that it's no longer really a path loss
> matrix containing a single scalar because among other things, the time
> varying environment induces change in the transmitted waveform on its way
> to
> the receiver most commonly referred to as the Doppler effect which means
> there is a frequency translation/shift for each (multi-)path of which the=
re
> are in general an uncountably infinite number because this is a continuou=
s
> world in which we live (the space quantization experiment being conducted
> in
> the central US aside:^)). As a consequence of these physical laws, the
> entries in the path loss matrix become complex functions of a number of
> variables including time. These functions are quite often characterized i=
n
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
> Subject: Re: [Starlink] [Cake] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2=
:
> Internet Quality workshop CFP for the internet architecture board
>
> > The distance matrix defines signal attenuations/loss between pairs.  It=
's
> > straightforward to create a distance matrix that has hidden nodes becau=
se
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
> > date. I've been able to produce hidden nodes quite readily. Add the pha=
se
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
> > > transmitted in one aggregate), the details of what happen over the ai=
r
> > > don't
> > > matter much.
> > >
> > > But if you are going to be doing any tinkering with what is getting
> sent,
> > > and
> > > you ignore the hidden transmitter type problems, you will create a
> > > solution that
> > > seems to work really well in the lab and falls on it's face out in th=
e
> > > wild
> > > where spectrum overload and hidden transmitters are the norm (at leas=
t
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
> > > > The challenge we find is having variability (e.g. montecarlos) that=
's
> > > > reproducible and has relevant information. Basically, the distance
> > > matrices
> > > > have h-matrices as their elements. Our chips can provide these
> > > h-matrices.
> > > >
> > > > The parts for solid state programmable attenuators and phase shifte=
rs
> > > > aren't very expensive. A device that supports a five branch tree an=
d
> 2x2
> > > > MIMO seems a very good starting point.
> > > >
> > > > Bob
> > > >
> > > > On Mon, Aug 2, 2021 at 4:55 PM Ben Greear <greearb@candelatech.com>
> > > wrote:
> > > >
> > > >> On 8/2/21 4:16 PM, David Lang wrote:
> > > >>> If you are going to setup a test environment for wifi, you need t=
o
> > > >> include the ability to make a fe cases that only happen with RF, n=
ot
> > > with
> > > >> wired networks and
> > > >>> are commonly overlooked
> > > >>>
> > > >>> 1. station A can hear station B and C but they cannot hear each
> other
> > > >>> 2. station A can hear station B but station B cannot hear station=
 A
> 3.
> > > >> station A can hear that station B is transmitting, but not with a
> strong
> > > >> enough signal to
> > > >>> decode the signal (yes in theory you can work around interference=
,
> but
> > > >> in practice interference is still a real thing)
> > > >>>
> > > >>> David Lang
> > > >>>
> > > >>
> > > >> To add to this, I think you need lots of different station devices=
,
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
> > > >> So, a good station emulator setup (and/or pile of real stations) a=
nd
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
> > with it, or attached to it, are confidential and are intended solely fo=
r
> > the use of the individual or entity to whom it is addressed and may
> contain
> > information that is confidential, legally privileged, protected by
> privacy
>
> > laws, or otherwise restricted from disclosure to anyone else. If you ar=
e
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

--000000000000aaaccb05c93967e4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This amplitude only channel estimate shown was taken from =
radios connected using conducted equipment or cables. It illustrates how no=
n-ideal conducted equipment based testing is, i.e. our signal processing an=
d MCS rate selection engineers aren&#39;t being sufficiently challenged!<br=
><br>The cost of $2.5K for a butler matrix is just one component. Each ante=
nna is connected to a programmable attenuator. Then the shielded cabling. T=
hen one of these per engineer and tens to low hundreds per each automated t=
est engineer. This doesn&#39;t include the cost of programmers to write the=
 code. The=C2=A0expenses grow quickly. Hence the idea to amortize a better =
design across the industry (if viable.)=C2=A0<br><br>Modeling the distance =
matrix (suggestions for a better name?) and realizing D1 path loss using a =
five branch tree=C2=A0and programmable attenuators has proven to work for t=
esting things like hidden nodes and for TX op arbitrations. The next missin=
g piece is to realize the mixing, the h(n,n) below with programmability and=
 at a reasonable price. That&#39;s where the programmable=C2=A0phase shifte=
rs come in. Our chips will dump their chan estimates relatively quickly so =
we can run monte carlos and calibrate the equipment, producing the spatial =
stream eigen values or condition numbers as well. Early prototyping showed =
that phase shifters will affect spatial stream powers per the algorithms an=
d this should work. Being able to affect both the path loss and mixing with=
in 10 ms of a command seems a reasonable ask if using solid state parts. No=
 need for roombas.<br><br>=C2=A0<br><span id=3D"gmail-docs-internal-guid-60=
93be35-7fff-d623-ce80-989d0c9ced32"><img width=3D"624px;" height=3D"127px;"=
 src=3D"https://lh4.googleusercontent.com/SgberCoevZhLxFlOyM7YIaslA2xepHoU2=
4ShoBBZe0mxshu-waj5uMWdoz3yloAPhDFit3hFV_SRRlWNjIjnXINqTM_xIuFQlM0IEBpEgNMt=
LZtRzKXWIfD_4g2SI8_tH0fy-nzPknw" alt=3D"CodeCogsEqn (2).png"></span><br><br=
><div>Of course, all of these RF effects affect network availability and, h=
ence, queueing too. We&#39;ve done a lot of work with iperf 2 around latenc=
ies to help qualify that. That&#39;s released as open source.<br><br>Comple=
x indeed,</div><div><br></div><div>Bob</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 10, 2021 at 11:11 A=
M Dick Roy &lt;<a href=3D"mailto:dickroy@alum.mit.edu">dickroy@alum.mit.edu=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">




<u></u>
<u></u>
<u></u>
<u></u>





<div lang=3D"EN-US">

<div class=3D"gmail-m_-2322868340610693853Section1">

<p class=3D"MsoNormal"><font size=3D"2" color=3D"navy" face=3D"Arial"><span=
 style=3D"font-size:10pt;font-family:Arial;color:navy">To add a bit more, a=
s is easily seen
below, the amplitudes of each of the transfer functions between the three
transmit and three receive antennas are extremely similar.=C2=A0 This is to=
 be
expected, of course, since the =E2=80=9Caperture=E2=80=9D of each array is =
very
small compared to the distance between them.=C2=A0 What is much more
interesting and revealing is the relative phases.=C2=A0 Obviously this requ=
ires
coherent receivers, and ultimately if you want to control the spatial
distribution of power (aka SDMA (or MIMO in some circles) coherent
transmitters. It turns out that just knowing the amplitude of the transfer =
functions
is not really all that useful for anything other than detecting a broken so=
lder
joint:^)))<u></u><u></u></span></font></p>

<p class=3D"MsoNormal"><font size=3D"2" color=3D"navy" face=3D"Arial"><span=
 style=3D"font-size:10pt;font-family:Arial;color:navy"><u></u>=C2=A0<u></u>=
</span></font></p>

<p class=3D"MsoNormal"><font size=3D"2" color=3D"navy" face=3D"Arial"><span=
 style=3D"font-size:10pt;font-family:Arial;color:navy">Also, do not forget =
that depending how
these experiments were conducted, the estimates are either of the RF channe=
l itself
(aka path loss),or of the RF channel in combination with the transfer funct=
ions
of the transmitters and//or receivers.=C2=A0 What this means is the CALIBRA=
TION
is CRUCIAL!=C2=A0 Those who do not calibrate, are doomed to fail!!!! =C2=A0=
=C2=A0I
suspect that it is in calibration where the major difference in performance
between vendors=E2=80=99=E2=80=99 products can be found :^))))<u></u><u></u=
></span></font></p>

<p class=3D"MsoNormal"><font size=3D"2" color=3D"navy" face=3D"Arial"><span=
 style=3D"font-size:10pt;font-family:Arial;color:navy"><u></u>=C2=A0<u></u>=
</span></font></p>

<p class=3D"MsoNormal"><font size=3D"2" color=3D"navy" face=3D"Arial"><span=
 style=3D"font-size:10pt;font-family:Arial;color:navy">It=E2=80=99s complic=
ated =E2=80=A6 <u></u><u></u></span></font></p>

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
ahoma"> Bob McMahon
[mailto:<a href=3D"mailto:bob.mcmahon@broadcom.com" target=3D"_blank">bob.m=
cmahon@broadcom.com</a>] <br>
<b><span style=3D"font-weight:bold">Sent:</span></b> Tuesday, August 10, 20=
21
10:07 AM<br>
<b><span style=3D"font-weight:bold">To:</span></b> <u></u><a href=3D"mailto=
:dickroy@alum.mit.edu" target=3D"_blank">dickroy@alum.mit.edu</a><u></u><br=
>
<b><span style=3D"font-weight:bold">Cc:</span></b> Rodney W. Grimes; Cake L=
ist;
Make-Wifi-fast; <a href=3D"mailto:starlink@lists.bufferbloat.net" target=3D=
"_blank">starlink@lists.bufferbloat.net</a>; codel; cerowrt-devel; bloat<br=
>
<b><span style=3D"font-weight:bold">Subject:</span></b> Re: [Starlink] [Cak=
e]
[Make-wifi-fast] [Cerowrt-devel] Due Aug 2: Internet Quality workshop CFP f=
or
the internet architecture board</span></font><u></u><u></u></p>

</div>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt"><u></u>=C2=A0<u></u></span></font></p>

<div>

<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><font size=3D"3" face=
=3D"Times New Roman"><span style=3D"font-size:12pt">The slides show that fo=
r
WiFi every transmission produces a complex frequency=C2=A0response, aka the
h-matrix. This is valid for that one transmission only.=C2=A0 The slides sh=
ow
an amplitude plot for a 3 radio device hence the 9 elements per the h-matri=
x.
It&#39;s assumed that the WiFi STA/AP is stationary such that doppler effec=
ts
aren&#39;t a consideration. WiFi isn&#39;t a car trying to connect to a cel=
l
tower.=C2=A0 The plot doesn&#39;t show the phase effects but they are inclu=
ded as
the output of the channel estimate is a complex frequency response. Each RX
produces the h-matrix ahead of the MAC. These may not be symmetric in the r=
eal
world but that&#39;s ok as transmission=C2=A0and reception is one way only,=
 i.e.
the treating them as repcripocol and the matrix as hollows symmetric isn&#3=
9;t
going to be a &quot;test blocker&quot; as the goal is to be able to use
software and programmable devices to change them in near real time. The cur=
rent
approach used by many using butler matrices to produce
off-diagonal=C2=A0effects=C2=A0 is woefully inadequate. And we&#39;re payin=
g about
$2.5K per each butler.<br>
<span id=3D"gmail-m_-2322868340610693853gmail-docs-internal-guid-c23f4170-7=
fff-947a-4651-888888f0a88e"><img width=3D"1200" height=3D"900" id=3D"gmail-=
m_-2322868340610693853_x0000_i1025" src=3D"https://lh3.googleusercontent.co=
m/WqWMFHFPo3ltkxkpoyvgPxgdFxmnZpVvpw0NcCTFhGiOTjolvKbP4NugcE-vw1Q3vk9Z7R04Y=
A1k3kQMvyiR5RhcHOjbXbsRMfjLBY-RYML2tFxovzMpTwww5UZiu0Xgxzhi8fFru_g"><br>
</span>Bob<u></u><u></u></span></font></p>

</div>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt"><u></u>=C2=A0<u></u></span></font></p>

<div>

<div>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt">On Tue, Aug 10, 2021 at 9:13 AM Dick <u></u><u></u>Roy=
<u></u><u></u> &lt;<a href=3D"mailto:dickroy@alum.mit.edu" target=3D"_blank=
">dickroy@alum.mit.edu</a>&gt;
wrote:<u></u><u></u></span></font></p>

</div>

<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:4=
.8pt;margin-right:0in">

<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><font size=3D"3" face=
=3D"Times New Roman"><span style=3D"font-size:12pt">Well, I hesitate to dra=
g
this out, however Maxwell&#39;s equations and the<br>
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
&quot;&quot;measurement plane&quot;, or &quot;where tx power and rx noise
figure are being<br>
measured/referenced to and how well the interface at that plane is<br>
&quot;matched&quot;.=C2=A0 We generally assume that the matching is perfect=
,
however it<br>
never is. All of these effects contribute to the link loss which determines=
<br>
the strength of the signal coming out of the receiver (not the receive<br>
antenna, the receiver) for a given signal strength coming out of the<br>
transmitter (not the transmit antenna, the tx output port).=C2=A0 =C2=A0<br=
>
<br>
In the real world, things change.=C2=A0 Sources and sinks move as do many o=
f
the<br>
objects around them.=C2=A0 This creates a time-varying RF environment, and =
now<br>
the path loss matrix is a function of time and a few others things, so it<b=
r>
matters WHEN something is transmitted, and WHEN it is received, and the two=
<br>
WHEN&#39;s are generally separated by &quot;the speed of light&quot; which =
is a
ft/ns<br>
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
the central <u></u><u></u>US<u></u><u></u>
aside:^)). As a consequence of these physical laws, the<br>
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
s.bufferbloat.net</a>;
cerowrt-devel; bloat<br>
Subject: Re: [Starlink] [Cake] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2:<=
br>
Internet Quality workshop CFP for the internet architecture board<br>
<br>
&gt; The distance matrix defines signal attenuations/loss between pairs.=C2=
=A0
It&#39;s<br>
&gt; straightforward to create a distance matrix that has hidden nodes beca=
use<br>
&gt; all &quot;signal=C2=A0 loss&quot; between pairs is defined.=C2=A0 Let&=
#39;s
say a 120dB<br>
attenuation<br>
&gt; path will cause a node to be hidden as an example.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 A=C2=A0 =C2=A0 B=C2=A0 =C2=A0 =C2=A0C=C2=A0 =C2=A0=
 D<br>
&gt; A=C2=A0 =C2=A0-=C2=A0 =C2=A035=C2=A0 =C2=A0120=C2=A0 =C2=A065<br>
&gt; B=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 65=C2=A0 =C2=
=A065<br>
&gt; C=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0
=C2=A0 =C2=A065<br>
&gt; D=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
=C2=A0 =C2=A0 =C2=A0-<br>
&gt; <br>
&gt; So in the above, AC are hidden from each other but nobody else is. It =
does<br>
&gt; assume symmetry between pairs but that&#39;s typically true.<br>
<br>
That is not correct, symmetry in the RF world, especially wifi, is rare<br>
due to topology issues.=C2=A0 A high transmitter, A,=C2=A0 and a low receiv=
er,
B,<br>
has a good path A - &gt; B, but a very weak path B -&gt; A.=C2=A0
=C2=A0Multipathing<br>
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
e
air<br>
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
ut in
the<br>
&gt; &gt; wild<br>
&gt; &gt; where spectrum overload and hidden transmitters are the norm (at
least<br>
in<br>
&gt; &gt; urban<br>
&gt; &gt; areas), not rare corner cases.<br>
&gt; &gt;<br>
&gt; &gt; you don&#39;t need to include them in every test, but you need to=
 have a
way<br>
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
ood
for<br>
lots<br>
&gt; &gt; of<br>
&gt; &gt; &gt; testing.=C2=A0 The six nodes allows for a primary BSS and tw=
o
adjacent<br>
ones.<br>
&gt; &gt; We<br>
&gt; &gt; &gt; want to minimize complexity to necessary and sufficient.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; The challenge we find is having variability (e.g. montecarlo=
s)
that&#39;s<br>
&gt; &gt; &gt; reproducible and has relevant information. Basically, the
distance<br>
&gt; &gt; matrices<br>
&gt; &gt; &gt; have h-matrices as their elements. Our chips can provide the=
se<br>
&gt; &gt; h-matrices.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; The parts for solid state programmable attenuators and phase
shifters<br>
&gt; &gt; &gt; aren&#39;t very expensive. A device that supports a five bra=
nch tree
and<br>
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
i,
you need to<br>
&gt; &gt; &gt;&gt; include the ability to make a fe cases that only happen =
with
RF, not<br>
&gt; &gt; with<br>
&gt; &gt; &gt;&gt; wired networks and<br>
&gt; &gt; &gt;&gt;&gt; are commonly overlooked<br>
&gt; &gt; &gt;&gt;&gt;<br>
&gt; &gt; &gt;&gt;&gt; 1. station A can hear station B and C but they canno=
t
hear each<br>
other<br>
&gt; &gt; &gt;&gt;&gt; 2. station A can hear station B but station B cannot
hear station A<br>
3.<br>
&gt; &gt; &gt;&gt; station A can hear that station B is transmitting, but n=
ot
with a<br>
strong<br>
&gt; &gt; &gt;&gt; enough signal to<br>
&gt; &gt; &gt;&gt;&gt; decode the signal (yes in theory you can work around
interference,<br>
but<br>
&gt; &gt; &gt;&gt; in practice interference is still a real thing)<br>
&gt; &gt; &gt;&gt;&gt;<br>
&gt; &gt; &gt;&gt;&gt; David Lang<br>
&gt; &gt; &gt;&gt;&gt;<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; To add to this, I think you need lots of different stati=
on
devices,<br>
&gt; &gt; &gt;&gt; different capabilities (/n, /ac, /ax, etc)<br>
&gt; &gt; &gt;&gt; different numbers of spatial streams, and different dist=
ances
from<br>
the<br>
&gt; &gt; &gt;&gt; AP.=C2=A0 From download queueing perspective, changing<b=
r>
&gt; &gt; &gt;&gt; the capabilities may be sufficient while keeping all
stations at same<br>
&gt; &gt; &gt;&gt; distance.=C2=A0 This assumes you are not<br>
&gt; &gt; &gt;&gt; actually testing the wifi rate-ctrl alg. itself, so diff=
erent<br>
throughput<br>
&gt; &gt; &gt;&gt; levels for different stations would be enough.<br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt; So, a good station emulator setup (and/or pile of real
stations) and<br>
a<br>
&gt; &gt; few<br>
&gt; &gt; &gt;&gt; RF chambers and<br>
&gt; &gt; &gt;&gt; programmable attenuators and you can test that setup...<=
br>
&gt; &gt; &gt;&gt;<br>
&gt; &gt; &gt;&gt;=C2=A0 From upload perspective, I guess same setup would =
do
the job.<br>
&gt; &gt; &gt;&gt; Queuing/fairness might depend a bit more on the<br>
&gt; &gt; &gt;&gt; station devices, emulated or otherwise, but I guess a cl=
ever
AP could<br>
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
delatech.com" target=3D"_blank">http://www.candelatech.com</a><br>
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
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/starlink" target=3D"=
_blank">https://lists.bufferbloat.net/listinfo/starlink</a><br>
&gt; <br>
_______________________________________________<br>
Starlink mailing list<br>
<a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starlin=
k@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/starlink" target=3D"_blan=
k">https://lists.bufferbloat.net/listinfo/starlink</a><u></u><u></u></span>=
</font></p>

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
--000000000000aaaccb05c93967e4--

--000000000000b2fc2a05c939676c
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIFqefVAQ2275jItSeiweWBHYDLZXAYyQXZsW
lQbCKGNBMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDgxMDE5
MjExM1owaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQBo3i6VLtqpDkx3ezq6ucyt1wnqPh7eExUA6kk9XOtOTIHhqnFGmLDv
eF1UZYDMKhhcQ9D/rBlq6ne+IXgF9cCWQAag0Ux2wJCmsZh+UlIIWwO30+PCPQ6k8hG4m4yvF3Q9
cWQT6cdp3cs3vxwnWaWmWxhvwXkPK46iyKw/ipcn/dcofFM1EPMwX4iAdz3YkdWk+wxr0yAu96Sg
s/tpIKJ9qXpBKyyKZsiL7zMwfnefgCb7HzHoq6Xd3eu6fnfTsAOTJYy9nqGNGEPcnOtlpXKTJutt
BevxNb/uIRvrPI9K7lFkFfj3a/OBDVtrCsC5OkC0jafxNXk7CritDishnaUA
--000000000000b2fc2a05c939676c--

--===============8465821427963854104==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8465821427963854104==--

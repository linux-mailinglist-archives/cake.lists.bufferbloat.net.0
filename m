Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE32400152
	for <lists+cake@lfdr.de>; Fri,  3 Sep 2021 16:36:23 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A33163CB49;
	Fri,  3 Sep 2021 10:36:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1630679774;
	bh=79UN3zhPQz9ExHx186NElabH+/XVl3LMjYSeParFq5s=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=T1iSQ7/jf8e8zWbWoMuycjVME2o4ZJcuK6MRHqDjDHAv5oMJZrPckWAwY7W5rVe1S
	 QKjR6PA3TBPAGdSqn3RBO7zdZQdUN5Nu1E2952GX20X17DmTCtW5PQiPfa1KrDQyNN
	 RUWdupb8kXLSSDJDyyd2nEAGr9RSEP/eXa9QiashEHpy/5DE4GXcdz4jCwKZs8u50I
	 DFjA5/Dj64LiuLLsMFFGpa2Owzw4+Cu5QqwlDepOfTQ1pPALkhxF7zu9e1qZGbo0Ka
	 0NusYkJZM3SXymag6/dkYTGcAWEYr3OpFKBloQTBc6pyciA4TJPMdtrb8TshqzC3vM
	 HAQWND4QO10BA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4CF8C3CB37
 for <cake@lists.bufferbloat.net>; Fri,  3 Sep 2021 10:36:12 -0400 (EDT)
Received: by mail-wr1-x435.google.com with SMTP id v10so8539865wrd.4
 for <cake@lists.bufferbloat.net>; Fri, 03 Sep 2021 07:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L3tuW/3LvI4EUCsO8AxFlnqvWLRp04CyBXeeq9y3t7Q=;
 b=r/mgVWgsiWp+YoDmw+1aBbEEg2isj4d9VNBEVt53avgSKV/5SQk66khGJT1AEFf+DJ
 NRsvP6PwXn1Ha9bVzaH0ajBzzP3yb0DMqzewQqF5CfKWYgE/4I75QijIll76FZKCYH+r
 R543IbEvkjYW2/GNNS6oBBo0euKPh6zXL5fdQBMKfi+GgnsRMgTG3u5IXuVJLoeVqJKf
 Xlw0p0/WoJBD5SlFNW+bvqFZ60Nhory4+8DeD/rjIniEY0NSK/c952DJ/zhpzFIvs1NG
 dE3J5zqm8Qe9ZwIQW11mZHEJH0gVEBbiWg8ti4Aeb9pFdrlNI6hBAAUO5I2rWVp+6RqC
 3E8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L3tuW/3LvI4EUCsO8AxFlnqvWLRp04CyBXeeq9y3t7Q=;
 b=lyxK9hl3e995Lit3O9wBaClElk1mj4mGKnnUVQTZg9qvRGPKaY+kgUUBUuAqIC0B2d
 8Z6Oqt/BVW0w0pL91OamONWeju4oRzFlvuAgnoekroLh9m3FMOaXXprjvXouZmrnX2SP
 gtEF6YQpG47IDLjZAP24nfa4rkUc7Ck/7OmiqUFByH1SCtDn/5KnFkn0RBaXTL9SpLG3
 vVjPZcwLCAoaVE/ymsTlZldnzdukT8+ApjJCRs2Q53bxcPuoVnpUDytw/fte7L07Ibrn
 EV9eO7sj0aOzyG0BBj7jRQKXHTmknlIE7hQxRiYIUk8II2XgEj+n4ZxmZ5tAE+fveOZH
 qxeQ==
X-Gm-Message-State: AOAM532D8nf5IHo4M7mDPkOBQNyq254dQlvAOpzhc4DavUSx6mFnfc5L
 qHPWmeprziJ9Ncfyo9gpMflqLucFlKAS9BNbS663Jw==
X-Google-Smtp-Source: ABdhPJyKDeXHHqXooZZyrYCXXLjyVCJ52XgIGIhGymBTSm8acngJmTZuz0b7yIXkvK69oWGlFhm0I9nNwg66gf2SJrY=
X-Received: by 2002:adf:fb44:: with SMTP id c4mr4486831wrs.179.1630679770929; 
 Fri, 03 Sep 2021 07:36:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAHb6LvqfRxKU0BW04ypRcPDpCcWymnS6qzb3gneQSbBrAbRhHQ@mail.gmail.com>
 <202108101410.17AEAR4w075939@gndrsh.dnsmgr.net>
 <5AF5551E2A7041168E7071FDA0F6B8EC@SRA6>
 <CAHb6LvpAmUKgsMAoZGrbAvS01DF=yWyJj56ox+FrDM_tEc=0Ng@mail.gmail.com>
 <03CA2CDA3EC5415DA229F835BE039994@SRA6>
 <1630604193.476312238@apps.rackspace.com>
In-Reply-To: <1630604193.476312238@apps.rackspace.com>
Date: Fri, 3 Sep 2021 07:35:57 -0700
Message-ID: <CAH56bmCMQnrkhCJ6m7cs=y=tt=OmH1UKKsKm88fgzFc7d5YxMQ@mail.gmail.com>
To: "David P. Reed" <dpreed@deepplum.com>
Subject: Re: [Cake] [Bloat] [Starlink] [Make-wifi-fast] [Cerowrt-devel] Due
 Aug 2: Internet Quality workshop CFP for the internet architecture board
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
From: Matt Mathis via Cake <cake@lists.bufferbloat.net>
Reply-To: Matt Mathis <mattmathis@google.com>
Cc: starlink@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Bob McMahon <bob.mcmahon@broadcom.com>, Cake List <cake@lists.bufferbloat.net>,
 codel <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, dickroy@alum.mit.edu,
 "Rodney W. Grimes" <starlink@gndrsh.dnsmgr.net>
Content-Type: multipart/mixed; boundary="===============3802544523679697682=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3802544523679697682==
Content-Type: multipart/alternative; boundary="0000000000007dd4dc05cb18382a"

--0000000000007dd4dc05cb18382a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I am very wary of a generalization of this problem: software engineers who
believe that they can code around arbitrary idosynchronies of network
hardware.  They often succeed, but generally at a severe performance
penalty.

How much do we know about the actual hardware?   As far as I understand the
math, some of the prime calculations used in Machine Learning are
isomorphic to multidimensional correlators and convolutions, which are
the same computations as needed to do phased array beam steering.   One can
imagine scenarios where Tesla (plans to) substantially overbuild the
computational HW by recycling some ML technology, and then beefing up the
SW over time as they better understand reality.

Also note that the problem really only needs to be solved in areas where
they will eventually have high density.   Most of the early deployment will
never have this problem.

Thanks,
--MM--
The best way to predict the future is to create it.  - Alan Kay

We must not tolerate intolerance;
       however our response must be carefully measured:
            too strong would be hypocritical and risks spiraling out of
control;
            too weak risks being mistaken for tacit approval.


On Thu, Sep 2, 2021 at 10:36 AM David P. Reed <dpreed@deepplum.com> wrote:

> I just want to thank Dick Roy for backing up the arguments I've been
> making about physical RF communications for many years, and clarifying
> terminology here. I'm not the expert - Dick is an expert with real
> practical and theoretical experience - but what I've found over the years
> is that many who consider themselves "experts" say things that are actual=
ly
> nonsense about radio systems.
>
>
>
> It seems to me that Starlink is based on a propagation model that is quit=
e
> simplistic, and probably far enough from correct that what seems "obvious=
"
> will turn out not to be true. That doesn't stop Musk and cronies from
> asserting these things as absolute truths (backed by actual professors,
> especially professors of Economics like Coase, but also CS professors,
> network protocol experts, etc. who aren't physicists or practicing RF
> engineers).
>
>
>
> The fact is that we don't really know how to build a scalable LEO system.
> Models can be useful, but a model can be a trap that causes even engineer=
s
> to be cocky. Or as the saying goes, a Clear View doesn't mean a Short
> Distance.
>
>
>
> If there are 40 satellites serving 10,000 ground terminals simultaneously=
,
> exactly what is the propagation environment like? I can tell you one thin=
g:
> if the phased array is digitized at some sample rate and some equalizatio=
n
> and some quantization, the propagation REALLY matters in serving those
> 10,000 ground terminals scattered randomly on terrain that is not optical=
ly
> flat and not fully absorbent.
>
>
>
> So how will Starlink scale? I think we literally don't know. And the
> modeling matters.
>
>
>
> Recently a real propagation expert (Ted Rapaport and his students) did a
> study of how well 70 GHz RF signals propagate in an urban environment -
> Brooklyn.  The standard model would say that coverage would be terrible!
> Why? Because supposedly 70 GHz is like visible light - line of sight is
> required or nothing works.
>
>
>
> But in fact, Ted, whom I've known from being on the FCC Technological
> Advisory Committee (TAC) together when it was actually populated with
> engineers and scientists, not lobbyists, discovered that scattering and
> diffraction at 70 GHz in an urban environment significantly expands
> coverage of a single transmitter. Remarkably so. Enough that "cellular
> architecture" doesn't make sense in that propagation environment.
>
>
>
> So all the professional experts are starting from the wrong place, and
> amateurs perhaps even more so.
>
>
>
> I hope Starlink views itself as a "research project". I'm afraid it
> doesn't - partly driven by Musk, but equally driven by the FCC itself,
> which demands that before a system is deployed that the entire plan be
> shown to work (which would require a "model" that is actually unknowable
> because something like this has never been tried). This is a problem with
> today's regulation of spectrum - experiments are barred, both by law, and
> by competitors who can claim your system will destroy theirs and not work=
.
>
>
>
> But it is also a problem when "fans" start setting expectations way too
> high. Like claiming that Starlink will eliminate any need for fiber. We
> don't know that at all!
>
>
>
>
>
>
>
>
>
>
>
>
>
>
>
> On Tuesday, August 10, 2021 2:11pm, "Dick Roy" <dickroy@alum.mit.edu>
> said:
>
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
> _______________________________________________
> Bloat mailing list
> Bloat@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/bloat
>

--0000000000007dd4dc05cb18382a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am very wary of a generalization of this problem: softwa=
re=C2=A0engineers who believe that they can code around arbitrary idosynchr=
onies of network hardware.=C2=A0 They often succeed, but generally at a sev=
ere=C2=A0performance penalty.<div><br></div><div>How much do we know about =
the actual hardware?=C2=A0 =C2=A0As far as I understand=C2=A0the math, some=
 of the prime calculations=C2=A0used in Machine Learning are isomorphic to =
multidimensional correlators=C2=A0and convolutions, which are the=C2=A0same=
 computations as needed to do phased array beam steering.=C2=A0 =C2=A0One c=
an imagine scenarios where Tesla (plans to) substantially overbuild the com=
putational HW by recycling=C2=A0some ML technology, and then beefing up the=
 SW over time as they better understand reality.</div><div><br></div><div>A=
lso note that the problem really only needs to be solved in areas where the=
y will eventually have high density.=C2=A0 =C2=A0Most of the early deployme=
nt=C2=A0will never have this problem.</div><div><div><br></div><div><div><d=
iv dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"=
><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Thanks,<=
/div>--MM--<br>The best way to predict the future is to create it. =C2=A0- =
Alan Kay<br><br>We must not tolerate intolerance;</div><div dir=3D"ltr">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0however our response must be carefully measured:=C2=
=A0</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 too strong would be=
 hypocritical and risks spiraling out of control;</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 too weak risks being mistaken for tacit approva=
l.</div></div></div></div></div></div></div><br></div></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 2, =
2021 at 10:36 AM David P. Reed &lt;<a href=3D"mailto:dpreed@deepplum.com">d=
preed@deepplum.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><font face=3D"arial" size=3D"2"><p style=3D"margin:0px;pa=
dding:0px;font-family:arial;font-size:10pt">I just want to thank Dick Roy f=
or backing up the arguments I&#39;ve been making about physical RF communic=
ations for many years, and clarifying terminology here. I&#39;m not the exp=
ert - Dick is an expert with real practical and theoretical experience - bu=
t what I&#39;ve found over the years is that many who consider themselves &=
quot;experts&quot; say things that are actually nonsense about radio system=
s.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">It see=
ms to me that Starlink is based on a propagation model that is quite simpli=
stic, and probably far enough from correct that what seems &quot;obvious&qu=
ot; will turn out not to be true. That doesn&#39;t stop Musk and cronies fr=
om asserting these things as absolute truths (backed by actual professors, =
especially professors of Economics like Coase, but also CS professors, netw=
ork protocol experts, etc. who aren&#39;t physicists or practicing RF engin=
eers).</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">The fa=
ct is that we don&#39;t really know how to build a scalable LEO system. Mod=
els can be useful, but a model can be a trap that causes even engineers to =
be cocky. Or as the saying goes, a Clear View doesn&#39;t mean a Short Dist=
ance.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">If the=
re are 40 satellites serving 10,000 ground terminals simultaneously, exactl=
y what is the propagation environment like? I can tell you one thing: if th=
e phased array is digitized at some sample rate and some equalization and s=
ome quantization, the propagation REALLY matters in serving those 10,000 gr=
ound terminals scattered randomly on terrain that is not optically flat and=
 not fully absorbent.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">So how=
 will Starlink scale? I think we literally don&#39;t know. And the modeling=
 matters.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">Recent=
ly a real propagation expert (Ted Rapaport and his students) did a study of=
 how well 70 GHz RF signals propagate in an urban environment - Brooklyn.=
=C2=A0 The standard model would say that coverage would be terrible! Why? B=
ecause supposedly 70 GHz is like visible light - line of sight is required =
or nothing works.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">But in=
 fact, Ted, whom I&#39;ve known from being on the FCC Technological Advisor=
y Committee (TAC) together when it was actually populated with engineers an=
d scientists, not lobbyists, discovered that scattering and diffraction at =
70 GHz in an urban environment significantly expands coverage of a single t=
ransmitter. Remarkably so. Enough that &quot;cellular architecture&quot; do=
esn&#39;t make sense in that propagation environment.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">So all=
 the professional experts are starting from the wrong place, and amateurs p=
erhaps even more so.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">I hope=
 Starlink views itself as a &quot;research project&quot;. I&#39;m afraid it=
 doesn&#39;t - partly driven by Musk, but equally driven by the FCC itself,=
 which demands that before a system is deployed that the entire plan be sho=
wn to work (which would require a &quot;model&quot; that is actually unknow=
able because something like this has never been tried). This is a problem w=
ith today&#39;s regulation of spectrum - experiments are barred, both by la=
w, and by competitors who can claim your system will destroy theirs and not=
 work.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">But it=
 is also a problem when &quot;fans&quot; start setting expectations way too=
 high. Like claiming that Starlink will eliminate any need for fiber. We do=
n&#39;t know that at all!</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">On Tue=
sday, August 10, 2021 2:11pm, &quot;Dick Roy&quot; &lt;<a href=3D"mailto:di=
ckroy@alum.mit.edu" target=3D"_blank">dickroy@alum.mit.edu</a>&gt; said:<br=
><br></p>

<div id=3D"gmail-m_-4720968264339527894SafeStyles1630602673">
<div>
<p class=3D"MsoNormal" style=3D"margin:0px;padding:0px;font-family:arial;fo=
nt-size:10pt"><span style=3D"color:navy;font-family:Arial;font-size:small">=
<span style=3D"font-size:10pt;font-family:Arial;color:navy">To add a bit mo=
re, as is easily seen below, the amplitudes of each of the transfer functio=
ns between the three transmit and three receive antennas are extremely simi=
lar.=C2=A0 This is to be expected, of course, since the =E2=80=9Caperture=
=E2=80=9D of each array is very small compared to the distance between them=
.=C2=A0 What is much more interesting and revealing is the relative phases.=
=C2=A0 Obviously this requires coherent receivers, and ultimately if you wa=
nt to control the spatial distribution of power (aka SDMA (or MIMO in some =
circles) coherent transmitters. It turns out that just knowing the amplitud=
e of the transfer functions is not really all that useful for anything othe=
r than detecting a broken solder joint:^)))</span></span></p>
<p class=3D"MsoNormal" style=3D"margin:0px;padding:0px;font-family:arial;fo=
nt-size:10pt"><span style=3D"color:navy;font-family:Arial;font-size:small">=
<span style=3D"font-size:10pt;font-family:Arial;color:navy">=C2=A0</span></=
span></p>
<p class=3D"MsoNormal" style=3D"margin:0px;padding:0px;font-family:arial;fo=
nt-size:10pt"><span style=3D"color:navy;font-family:Arial;font-size:small">=
<span style=3D"font-size:10pt;font-family:Arial;color:navy">Also, do not fo=
rget that depending how these experiments were conducted, the estimates are=
 either of the RF channel itself (aka path loss),or of the RF channel in co=
mbination with the transfer functions of the transmitters and//or receivers=
.=C2=A0 What this means is the CALIBRATION is CRUCIAL!=C2=A0 Those who do n=
ot calibrate, are doomed to fail!!!! =C2=A0=C2=A0I suspect that it is in ca=
libration where the major difference in performance between vendors=E2=80=
=99=E2=80=99 products can be found :^))))</span></span></p>
<p class=3D"MsoNormal" style=3D"margin:0px;padding:0px;font-family:arial;fo=
nt-size:10pt"><span style=3D"color:navy;font-family:Arial;font-size:small">=
<span style=3D"font-size:10pt;font-family:Arial;color:navy">=C2=A0</span></=
span></p>
<p class=3D"MsoNormal" style=3D"margin:0px;padding:0px;font-family:arial;fo=
nt-size:10pt"><span style=3D"color:navy;font-family:Arial;font-size:small">=
<span style=3D"font-size:10pt;font-family:Arial;color:navy">It=E2=80=99s co=
mplicated =E2=80=A6 </span></span></p>
<p class=3D"MsoNormal" style=3D"margin:0px;padding:0px;font-family:arial;fo=
nt-size:10pt"><span style=3D"color:navy;font-family:Arial;font-size:small">=
<span style=3D"font-size:10pt;font-family:Arial;color:navy">=C2=A0</span></=
span></p>
<div>
<div class=3D"MsoNormal" style=3D"text-align:center" align=3D"center"><hr a=
lign=3D"center" size=3D"3"></div>
<p class=3D"MsoNormal" style=3D"margin:0px;padding:0px;font-family:arial;fo=
nt-size:10pt"><strong><span style=3D"font-family:Tahoma;font-size:small"><s=
pan style=3D"font-size:10pt;font-family:Tahoma;font-weight:bold">From:</spa=
n></span></strong><span style=3D"font-family:Tahoma;font-size:small"><span =
style=3D"font-size:10pt;font-family:Tahoma"> Bob McMahon [mailto:<a href=3D=
"mailto:bob.mcmahon@broadcom.com" target=3D"_blank">bob.mcmahon@broadcom.co=
m</a>] <br><strong><span style=3D"font-weight:bold">Sent:</span></strong> T=
uesday, August 10, 2021 10:07 AM<br><strong><span style=3D"font-weight:bold=
">To:</span></strong> <a href=3D"mailto:dickroy@alum.mit.edu" target=3D"_bl=
ank">dickroy@alum.mit.edu</a><br><strong><span style=3D"font-weight:bold">C=
c:</span></strong> Rodney W. Grimes; Cake List; Make-Wifi-fast; <a href=3D"=
mailto:starlink@lists.bufferbloat.net" target=3D"_blank">starlink@lists.buf=
ferbloat.net</a>; codel; cerowrt-devel; bloat<br><strong><span style=3D"fon=
t-weight:bold">Subject:</span></strong> Re: [Starlink] [Cake] [Make-wifi-fa=
st] [Cerowrt-devel] Due Aug 2: Internet Quality workshop CFP for the intern=
et architecture board</span></span></p>
</div>
<p class=3D"MsoNormal" style=3D"margin:0px;padding:0px;font-family:arial;fo=
nt-size:10pt"><span style=3D"font-family:&quot;Times New Roman&quot;;font-s=
ize:medium"><span style=3D"font-size:12pt">=C2=A0</span></span></p>
<div>
<p class=3D"MsoNormal" style=3D"margin:0px 0px 12pt;padding:0px"><span styl=
e=3D"font-family:&quot;Times New Roman&quot;;font-size:medium"><span style=
=3D"font-size:12pt">The slides show that for WiFi every transmission produc=
es a complex frequency=C2=A0response, aka the h-matrix. This is valid for t=
hat one transmission only.=C2=A0 The slides show an amplitude plot for a 3 =
radio device hence the 9 elements per the h-matrix. It&#39;s assumed that t=
he WiFi STA/AP is stationary such that doppler effects aren&#39;t a conside=
ration. WiFi isn&#39;t a car trying to connect to a cell tower.=C2=A0 The p=
lot doesn&#39;t show the phase effects but they are included as the output =
of the channel estimate is a complex frequency response. Each RX produces t=
he h-matrix ahead of the MAC. These may not be symmetric in the real world =
but that&#39;s ok as transmission=C2=A0and reception is one way only, i.e. =
the treating them as repcripocol and the matrix as hollows symmetric isn&#3=
9;t going to be a &quot;test blocker&quot; as the goal is to be able to use=
 software and programmable devices to change them in near real time. The cu=
rrent approach used by many using butler matrices to produce off-diagonal=
=C2=A0effects=C2=A0 is woefully inadequate. And we&#39;re paying about $2.5=
K per each butler.<br><span id=3D"gmail-m_-4720968264339527894gmail-docs-in=
ternal-guid-c23f4170-7fff-947a-4651-888888f0a88e"><img id=3D"gmail-m_-47209=
68264339527894_x0000_i1025" src=3D"https://lh3.googleusercontent.com/WqWMFH=
FPo3ltkxkpoyvgPxgdFxmnZpVvpw0NcCTFhGiOTjolvKbP4NugcE-vw1Q3vk9Z7R04YA1k3kQMv=
yiR5RhcHOjbXbsRMfjLBY-RYML2tFxovzMpTwww5UZiu0Xgxzhi8fFru_g" alt=3D"" width=
=3D"1200" height=3D"900"><br></span>Bob</span></span></p>
</div>
<p class=3D"MsoNormal" style=3D"margin:0px;padding:0px;font-family:arial;fo=
nt-size:10pt"><span style=3D"font-family:&quot;Times New Roman&quot;;font-s=
ize:medium"><span style=3D"font-size:12pt">=C2=A0</span></span></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin:0px;padding:0px;font-family:arial;fo=
nt-size:10pt"><span style=3D"font-family:&quot;Times New Roman&quot;;font-s=
ize:medium"><span style=3D"font-size:12pt">On Tue, Aug 10, 2021 at 9:13 AM =
Dick Roy &lt;<a href=3D"mailto:dickroy@alum.mit.edu" target=3D"_blank">dick=
roy@alum.mit.edu</a>&gt; wrote:</span></span></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0in 0in 0in 6pt;margin-left:4=
.8pt;margin-right:0in">
<p class=3D"MsoNormal" style=3D"margin:0px 0px 12pt;padding:0px"><span styl=
e=3D"font-family:&quot;Times New Roman&quot;;font-size:medium"><span style=
=3D"font-size:12pt">Well, I hesitate to drag this out, however Maxwell&#39;=
s equations and the<br> invariance of the laws of physics ensure that all p=
ath loss matrices are<br> reciprocal.=C2=A0 What that means is that at any =
for any given set of fixed<br> boundary conditions (nothing moving/changing=
!), the propagation loss between<br> any two points in the domain is the sa=
me in both directions. The<br> &quot;multipathing&quot; in one direction is=
 the same in the other because the<br> two-parameter (angle1,angle2) scatte=
ring cross sections of all objects<br> (remember they are fixed here) are i=
ndependent of the ordering of the<br> angles.=C2=A0 <br><br> Very important=
ly, path loss is NOT the same as the link loss (aka link<br> budget) which =
involves tx power and rx noise figure (and in the case of<br> smart antenna=
s, there is a link per spatial stream and how those links are<br> managed/c=
ontrolled really matters, but let&#39;s just keep it simple for this<br> di=
scussion) and these generally are different on both ends of a link for a<br=
> variety of reasons. The other very important issue is that of the<br> &qu=
ot;&quot;measurement plane&quot;, or &quot;where tx power and rx noise figu=
re are being<br> measured/referenced to and how well the interface at that =
plane is<br> &quot;matched&quot;.=C2=A0 We generally assume that the matchi=
ng is perfect, however it<br> never is. All of these effects contribute to =
the link loss which determines<br> the strength of the signal coming out of=
 the receiver (not the receive<br> antenna, the receiver) for a given signa=
l strength coming out of the<br> transmitter (not the transmit antenna, the=
 tx output port).=C2=A0 =C2=A0<br><br> In the real world, things change.=C2=
=A0 Sources and sinks move as do many of the<br> objects around them.=C2=A0=
 This creates a time-varying RF environment, and now<br> the path loss matr=
ix is a function of time and a few others things, so it<br> matters WHEN so=
mething is transmitted, and WHEN it is received, and the two<br> WHEN&#39;s=
 are generally separated by &quot;the speed of light&quot; which is a ft/ns=
<br> roughly. As important is the fact that it&#39;s no longer really a pat=
h loss<br> matrix containing a single scalar because among other things, th=
e time<br> varying environment induces change in the transmitted waveform o=
n its way to<br> the receiver most commonly referred to as the Doppler effe=
ct which means<br> there is a frequency translation/shift for each (multi-)=
path of which there<br> are in general an uncountably infinite number becau=
se this is a continuous<br> world in which we live (the space quantization =
experiment being conducted in<br> the central US aside:^)). As a consequenc=
e of these physical laws, the<br> entries in the path loss matrix become co=
mplex functions of a number of<br> variables including time. These function=
s are quite often characterized in<br> terms of Doppler and delay-spread, t=
erms used to describe in just a few<br> parameters the amount of &quot;dist=
ortion&quot; a complex function causes. <br><br> Hope this helps ... probab=
ly a bit more than you really wanted to know as<br> queuing theorists, but =
...<br><br> -----Original Message-----<br> From: Starlink [mailto:<a href=
=3D"mailto:starlink-bounces@lists.bufferbloat.net" target=3D"_blank">starli=
nk-bounces@lists.bufferbloat.net</a>] On Behalf Of<br> Rodney W. Grimes<br>=
 Sent: Tuesday, August 10, 2021 7:10 AM<br> To: Bob McMahon<br> Cc: Cake Li=
st; Make-Wifi-fast; <a href=3D"mailto:starlink@lists.bufferbloat.net" targe=
t=3D"_blank">starlink@lists.bufferbloat.net</a>;<br><a href=3D"mailto:codel=
@lists.bufferbloat.net" target=3D"_blank">codel@lists.bufferbloat.net</a>; =
cerowrt-devel; bloat<br> Subject: Re: [Starlink] [Cake] [Make-wifi-fast] [C=
erowrt-devel] Due Aug 2:<br> Internet Quality workshop CFP for the internet=
 architecture board<br><br> &gt; The distance matrix defines signal attenua=
tions/loss between pairs.=C2=A0 It&#39;s<br> &gt; straightforward to create=
 a distance matrix that has hidden nodes because<br> &gt; all &quot;signal=
=C2=A0 loss&quot; between pairs is defined.=C2=A0 Let&#39;s say a 120dB<br>=
 attenuation<br> &gt; path will cause a node to be hidden as an example.<br=
> &gt; <br> &gt;=C2=A0 =C2=A0 =C2=A0 A=C2=A0 =C2=A0 B=C2=A0 =C2=A0 =C2=A0C=
=C2=A0 =C2=A0 D<br> &gt; A=C2=A0 =C2=A0-=C2=A0 =C2=A035=C2=A0 =C2=A0120=C2=
=A0 =C2=A065<br> &gt; B=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=
=A0 65=C2=A0 =C2=A065<br> &gt; C=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A065<br> &gt; D=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-<br> =
&gt; <br> &gt; So in the above, AC are hidden from each other but nobody el=
se is. It does<br> &gt; assume symmetry between pairs but that&#39;s typica=
lly true.<br><br> That is not correct, symmetry in the RF world, especially=
 wifi, is rare<br> due to topology issues.=C2=A0 A high transmitter, A,=C2=
=A0 and a low receiver, B,<br> has a good path A - &gt; B, but a very weak =
path B -&gt; A.=C2=A0 =C2=A0Multipathing<br> is another major issue that ca=
uses assymtry.<br><br> &gt; <br> &gt; The RF device takes these distance ma=
trices as settings and calculates the<br> &gt; five branch tree values (as =
demonstrated in the video). There are<br> &gt; limitations to solutions tho=
ugh but I&#39;ve found those not to be an issue to<br> &gt; date. I&#39;ve =
been able to produce hidden nodes quite readily. Add the phase<br> &gt; shi=
fters and spatial stream powers can also be affected, but this isn&#39;t<br=
> &gt; shown in this simple example.<br> &gt; <br> &gt; Bob<br> &gt; <br> &=
gt; On Mon, Aug 2, 2021 at 8:12 PM David Lang &lt;<a href=3D"mailto:david@l=
ang.hm" target=3D"_blank">david@lang.hm</a>&gt; wrote:<br> &gt; <br> &gt; &=
gt; I guess it depends on what you are intending to test. If you are not<br=
> going<br> &gt; &gt; to<br> &gt; &gt; tinker with any of the over-the-air =
settings (including the number of<br> &gt; &gt; packets<br> &gt; &gt; trans=
mitted in one aggregate), the details of what happen over the air<br> &gt; =
&gt; don&#39;t<br> &gt; &gt; matter much.<br> &gt; &gt;<br> &gt; &gt; But i=
f you are going to be doing any tinkering with what is getting<br> sent,<br=
> &gt; &gt; and<br> &gt; &gt; you ignore the hidden transmitter type proble=
ms, you will create a<br> &gt; &gt; solution that<br> &gt; &gt; seems to wo=
rk really well in the lab and falls on it&#39;s face out in the<br> &gt; &g=
t; wild<br> &gt; &gt; where spectrum overload and hidden transmitters are t=
he norm (at least<br> in<br> &gt; &gt; urban<br> &gt; &gt; areas), not rare=
 corner cases.<br> &gt; &gt;<br> &gt; &gt; you don&#39;t need to include th=
em in every test, but you need to have a way<br> &gt; &gt; to<br> &gt; &gt;=
 configure your lab to include them before you consider any<br> &gt; &gt; s=
ettings/algorithm<br> &gt; &gt; ready to try in the wild.<br> &gt; &gt;<br>=
 &gt; &gt; David Lang<br> &gt; &gt;<br> &gt; &gt; On Mon, 2 Aug 2021, Bob M=
cMahon wrote:<br> &gt; &gt;<br> &gt; &gt; &gt; We find four nodes, a primar=
y BSS and an adjunct one quite good for<br> lots<br> &gt; &gt; of<br> &gt; =
&gt; &gt; testing.=C2=A0 The six nodes allows for a primary BSS and two adj=
acent<br> ones.<br> &gt; &gt; We<br> &gt; &gt; &gt; want to minimize comple=
xity to necessary and sufficient.<br> &gt; &gt; &gt;<br> &gt; &gt; &gt; The=
 challenge we find is having variability (e.g. montecarlos) that&#39;s<br> =
&gt; &gt; &gt; reproducible and has relevant information. Basically, the di=
stance<br> &gt; &gt; matrices<br> &gt; &gt; &gt; have h-matrices as their e=
lements. Our chips can provide these<br> &gt; &gt; h-matrices.<br> &gt; &gt=
; &gt;<br> &gt; &gt; &gt; The parts for solid state programmable attenuator=
s and phase shifters<br> &gt; &gt; &gt; aren&#39;t very expensive. A device=
 that supports a five branch tree and<br> 2x2<br> &gt; &gt; &gt; MIMO seems=
 a very good starting point.<br> &gt; &gt; &gt;<br> &gt; &gt; &gt; Bob<br> =
&gt; &gt; &gt;<br> &gt; &gt; &gt; On Mon, Aug 2, 2021 at 4:55 PM Ben Greear=
 &lt;<a href=3D"mailto:greearb@candelatech.com" target=3D"_blank">greearb@c=
andelatech.com</a>&gt;<br> &gt; &gt; wrote:<br> &gt; &gt; &gt;<br> &gt; &gt=
; &gt;&gt; On 8/2/21 4:16 PM, David Lang wrote:<br> &gt; &gt; &gt;&gt;&gt; =
If you are going to setup a test environment for wifi, you need to<br> &gt;=
 &gt; &gt;&gt; include the ability to make a fe cases that only happen with=
 RF, not<br> &gt; &gt; with<br> &gt; &gt; &gt;&gt; wired networks and<br> &=
gt; &gt; &gt;&gt;&gt; are commonly overlooked<br> &gt; &gt; &gt;&gt;&gt;<br=
> &gt; &gt; &gt;&gt;&gt; 1. station A can hear station B and C but they can=
not hear each<br> other<br> &gt; &gt; &gt;&gt;&gt; 2. station A can hear st=
ation B but station B cannot hear station A<br> 3.<br> &gt; &gt; &gt;&gt; s=
tation A can hear that station B is transmitting, but not with a<br> strong=
<br> &gt; &gt; &gt;&gt; enough signal to<br> &gt; &gt; &gt;&gt;&gt; decode =
the signal (yes in theory you can work around interference,<br> but<br> &gt=
; &gt; &gt;&gt; in practice interference is still a real thing)<br> &gt; &g=
t; &gt;&gt;&gt;<br> &gt; &gt; &gt;&gt;&gt; David Lang<br> &gt; &gt; &gt;&gt=
;&gt;<br> &gt; &gt; &gt;&gt;<br> &gt; &gt; &gt;&gt; To add to this, I think=
 you need lots of different station devices,<br> &gt; &gt; &gt;&gt; differe=
nt capabilities (/n, /ac, /ax, etc)<br> &gt; &gt; &gt;&gt; different number=
s of spatial streams, and different distances from<br> the<br> &gt; &gt; &g=
t;&gt; AP.=C2=A0 From download queueing perspective, changing<br> &gt; &gt;=
 &gt;&gt; the capabilities may be sufficient while keeping all stations at =
same<br> &gt; &gt; &gt;&gt; distance.=C2=A0 This assumes you are not<br> &g=
t; &gt; &gt;&gt; actually testing the wifi rate-ctrl alg. itself, so differ=
ent<br> throughput<br> &gt; &gt; &gt;&gt; levels for different stations wou=
ld be enough.<br> &gt; &gt; &gt;&gt;<br> &gt; &gt; &gt;&gt; So, a good stat=
ion emulator setup (and/or pile of real stations) and<br> a<br> &gt; &gt; f=
ew<br> &gt; &gt; &gt;&gt; RF chambers and<br> &gt; &gt; &gt;&gt; programmab=
le attenuators and you can test that setup...<br> &gt; &gt; &gt;&gt;<br> &g=
t; &gt; &gt;&gt;=C2=A0 From upload perspective, I guess same setup would do=
 the job.<br> &gt; &gt; &gt;&gt; Queuing/fairness might depend a bit more o=
n the<br> &gt; &gt; &gt;&gt; station devices, emulated or otherwise, but I =
guess a clever AP could<br> &gt; &gt; &gt;&gt; enforce fairness in upstream=
 direction<br> &gt; &gt; &gt;&gt; too by implementing per-sta queues.<br> &=
gt; &gt; &gt;&gt;<br> &gt; &gt; &gt;&gt; Thanks,<br> &gt; &gt; &gt;&gt; Ben=
<br> &gt; &gt; &gt;&gt;<br> &gt; &gt; &gt;&gt; --<br> &gt; &gt; &gt;&gt; Be=
n Greear &lt;<a href=3D"mailto:greearb@candelatech.com" target=3D"_blank">g=
reearb@candelatech.com</a>&gt;<br> &gt; &gt; &gt;&gt; Candela Technologies =
Inc=C2=A0 <a href=3D"http://www.candelatech.com" target=3D"_blank">http://w=
ww.candelatech.com</a><br> &gt; &gt; &gt;&gt;<br> &gt; &gt; &gt;<br> &gt; &=
gt; &gt;<br> &gt; &gt;<br> &gt; <br> &gt; -- <br> &gt; This electronic comm=
unication and the information and any files<br> transmitted <br> &gt; with =
it, or attached to it, are confidential and are intended solely for <br> &g=
t; the use of the individual or entity to whom it is addressed and may<br> =
contain <br> &gt; information that is confidential, legally privileged, pro=
tected by privacy<br><br> &gt; laws, or otherwise restricted from disclosur=
e to anyone else. If you are <br> &gt; not the intended recipient or the pe=
rson responsible for delivering the <br> &gt; e-mail to the intended recipi=
ent, you are hereby notified that any use, <br> &gt; copying, distributing,=
 dissemination, forwarding, printing, or copying of <br> &gt; this e-mail i=
s strictly prohibited. If you received this e-mail in error, <br> &gt; plea=
se return the e-mail to the sender, delete it from your computer, and <br> =
&gt; destroy any printed copy of it.<br><br> [ Charset UTF-8 unsupported, c=
onverting... ]<br> &gt; _______________________________________________<br>=
 &gt; Starlink mailing list<br> &gt; <a href=3D"mailto:Starlink@lists.buffe=
rbloat.net" target=3D"_blank">Starlink@lists.bufferbloat.net</a><br> &gt; <=
a href=3D"https://lists.bufferbloat.net/listinfo/starlink" target=3D"_blank=
">https://lists.bufferbloat.net/listinfo/starlink</a><br> &gt; <br> _______=
________________________________________<br> Starlink mailing list<br><a hr=
ef=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starlink@lis=
ts.bufferbloat.net</a><br><a href=3D"https://lists.bufferbloat.net/listinfo=
/starlink" target=3D"_blank">https://lists.bufferbloat.net/listinfo/starlin=
k</a></span></span></p>
</blockquote>
</div>
<p class=3D"MsoNormal" style=3D"margin:0px;padding:0px;font-family:arial;fo=
nt-size:10pt"><span style=3D"font-family:&quot;Times New Roman&quot;;font-s=
ize:medium"><span style=3D"font-size:12pt"><br></span></span><span style=3D=
"font-size:small"><span style=3D"font-size:10pt;background:white">This elec=
tronic communication and the information and any files transmitted with it,=
 or attached to it, are confidential and are intended solely for the use of=
 the individual or entity to whom it is addressed and may contain informati=
on that is confidential, legally privileged, protected by privacy laws, or =
otherwise restricted from disclosure to anyone else. If you are not the int=
ended recipient or the person responsible for delivering the e-mail to the =
intended recipient, you are hereby notified that any use, copying, distribu=
ting, dissemination, forwarding, printing, or copying of this e-mail is str=
ictly prohibited. If you received this e-mail in error, please return the e=
-mail to the sender, delete it from your computer, and destroy any printed =
copy of it.</span></span></p>
</div>
</div></font>_______________________________________________<br>
Bloat mailing list<br>
<a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">Bloat@list=
s.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a><br>
</blockquote></div>

--0000000000007dd4dc05cb18382a--

--===============3802544523679697682==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3802544523679697682==--

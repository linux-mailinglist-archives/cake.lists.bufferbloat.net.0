Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5063BF027
	for <lists+cake@lfdr.de>; Wed,  7 Jul 2021 21:20:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8E9D23CBC4;
	Wed,  7 Jul 2021 15:19:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1625685597;
	bh=LZnCNQeo1YwkezsiHNIy5xBt5flo5rM0qtPvpim/tvg=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=ZoTFHOPsZos4+RA0i/hcRxoYOMjp1kbDza0frj2ZRSImU+ofqV1+M+r7DvkD4liQK
	 iQw4txVnexngUYog2izr++DuHxAuCrkH6rfeuQ59dlED/2tiPhvIFS+DGo97hxvQOp
	 7BaeffM2FM9Wed3sg+jujj3UA/RoJnWG6oHDp5jL5gNXM2YORkuKwJjeAY2JbYQZqP
	 zEGVWWMd43p2mfMv+B03klPi5EpGB+QgF9cKR1K5sm5/Zw1ziuNgA+eR+IVBBtM2W2
	 vikSnSLCKJDyRgCDH5gYucCoA5rif+DWUoFhuiZS9EXF3JPgVhwtTqIwb5xemNaqPc
	 rN4m0H+MFV1sA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EFA773CB45
 for <cake@lists.bufferbloat.net>; Wed,  7 Jul 2021 15:19:55 -0400 (EDT)
Received: by mail-ed1-x533.google.com with SMTP id m1so4855132edq.8
 for <cake@lists.bufferbloat.net>; Wed, 07 Jul 2021 12:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QAQlqXh/xGuzdSNLEd7DZbFRoYQRfKmrq61qvRyzB4w=;
 b=FImwMMyBVWgH+gUMz6mPGgE7o13cgjND5j+ZpOBrRunORbwt5fwBS3qlEAI1OJGfnM
 GN8CyZn/pWLLG+MJWdfvbgOGZrn5clQhQw1XoMGXWtvQsDLfScbIPHMuzfwXgLa10Rhk
 i3okJYoY7TSeOIvwwqRb+Wxo8mzoDJHIMXis8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QAQlqXh/xGuzdSNLEd7DZbFRoYQRfKmrq61qvRyzB4w=;
 b=tdioYcCkaauNl05+UF5FBFln6Z7KIHHcq6ABdvh2WIHyEUDhzb1yNRlqqNO7IVkGSL
 BDdR7Mgsus7d+lnCoHvpNuiaePHTI8OM3pQyV63ZMKMExzX+VJK3LfjWAyDzXd9bg+60
 2yyVn0hKbemntcv/CUwYO563ZZR/8daCJTdnwG5GHuJIbUMZkoqOz1/KUASvz78Kvr/l
 IyelSL3gkScp9zWR+x4RQb+IXNldNv+utS2si66Meq9VVXVh3VihHKaYWaYAeHQemRUH
 5KhsRuJCcDjLZdpiengthYmHKabx59SSfnBjxsTAZGtqCX260TwDOMowcS5jY9UM0LP9
 YHgg==
X-Gm-Message-State: AOAM533LOM6ux67briVxzXvprTPfrhSpeys244txefAQlL2ygqW8YHC3
 w9ZXcoLEP3xLzoh5AlnAJuFcGGwMMkRkPySP2iNXOB7D2ew+yDpr2pYwcepx9xXxguie9MjdPJ0
 5kUmDP7clS+7ZA2awXzpd3ois6qw9
X-Google-Smtp-Source: ABdhPJzTIHepsDmIY172TZTEUoIYjrFAKOT2Bia4xki1wGCQVCL6nJ5orI2YKwS9RfJXgHriaq+36o6/GUGW7QFZ3XM=
X-Received: by 2002:aa7:dd53:: with SMTP id o19mr32926733edw.259.1625685594683; 
 Wed, 07 Jul 2021 12:19:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <CAHb6LvqSkcGZBZ+iHY-g0vSunqe1sFHmvoFXGjWSoYvtwHeHaA@mail.gmail.com>
 <3acebcdb-b422-5a4b-cad2-d50f71de357e@candelatech.com>
 <CAHb6LvodW0WNeHAfRHLB6NhDT6+maWVnoR14+setpzCWnwiPTQ@mail.gmail.com>
 <4dc67b76-81f2-a37a-f58c-1a16d37cd5e5@candelatech.com>
In-Reply-To: <4dc67b76-81f2-a37a-f58c-1a16d37cd5e5@candelatech.com>
Date: Wed, 7 Jul 2021 12:19:43 -0700
Message-ID: <CAHb6LvrSp-b3_6c6BbaFYQh0kZ6ns29eNNdW6nFBBh2eVf_WOQ@mail.gmail.com>
To: Ben Greear <greearb@candelatech.com>
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
Content-Type: multipart/mixed; boundary="===============6447109965868853317=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6447109965868853317==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="00000000000069c71905c68d6c54"

--00000000000069c71905c68d6c54
Content-Type: multipart/alternative; boundary="0000000000006375e605c68d6c9c"

--0000000000006375e605c68d6c9c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I can't speak for others. I've been successful in early prototyping using
one for simplistic off-diagonal h-matrix testing, i.e. varying the h-matrix
condition numbers. I see this as a small step in the right direction for
conductive, automated, and reproducible testing.

Developing a system that supports multiple RF channels to test against
seems hard. Then add to that causing the energy states per "peer RF
traffic" makes the challenge even more difficult.

Bob



On Wed, Jul 7, 2021 at 6:36 AM Ben Greear <greearb@candelatech.com> wrote:

> Thanks for the clarification.  There are vendors that make these, but we
> have not tried
> integrating our software control with any of them.  To date, not many of
> our customers
> have been interested in this, so it did not seem worth the effort.
>
> Do you see this as being useful for normal AP vendors/users, or mostly
> just radio manufacturers such
> as BCM?
>
> In case someone has one of these that has a sane API, I'd consider adding
> automation support
> to drive it while running throughput or RvR or whatever other types of
> tests seem interesting.
>
> Thanks,
> Ben
>
> On 7/6/21 3:05 PM, Bob McMahon wrote:
> > Sorry, I should have been more clear. Not a fixed butler matrix but a
> device with solid state, programmable, phase shifters, 0 - 360 degrees.
> It's a way to
> > create multiple phy channels and affect and vary the off diagonal
> elements of a MIMO H-matrix using conducted parts. Then automation softwa=
re
> can have more
> > robust RF MIMO test scenarios that are reproducible.
> >
> >
> https://web.stanford.edu/~dntse/Chapters_PDF/Fundamentals_Wireless_Commun=
ication_chapter7.pdf
> > <
> https://web.stanford.edu/~dntse/Chapters_PDF/Fundamentals_Wireless_Commun=
ication_chapter7.pdf
> >
> >
> > Bob
> >
> > On Tue, Jul 6, 2021 at 2:24 PM Ben Greear <greearb@candelatech.com
> <mailto:greearb@candelatech.com>> wrote:
> >
> >     We tried adding in an external butler matrix in the past, but could
> not notice any useful difference.  Possibly
> >     we didn't have the right use case.
> >
> >     Typically we are competitive on price for full testing solutions,
> but you can get stand-alone attenuators
> >     cheaper from specialized vendors.  Happy to discuss pricing offlist
> if you wish.
> >
> >     Thanks,
> >     Ben
> >
> >     On 7/6/21 1:43 PM, Bob McMahon wrote:
> >      > The four part attenuator part would be more interesting to me if
> it also had a solid state phase shifters.  This allows for testing 2x2 MI=
MO
> testing per
> >      > affecting the spatial stream eigen vectors/values.
> >      >
> >      > Bob
> >      >
> >      > PS. The price per port isn't competitive. Probably a good idea t=
o
> survey the market competition.
> >      >
> >      > On Tue, Jul 6, 2021 at 6:46 AM Ben Greear <
> greearb@candelatech.com <mailto:greearb@candelatech.com> <mailto:
> greearb@candelatech.com
> >     <mailto:greearb@candelatech.com>>> wrote:
> >      >
> >      >     Hello,
> >      >
> >      >     I am interested to hear wish lists for network testing
> features.  We make test equipment, supporting lots
> >      >     of wifi stations and a distributed architecture, with
> built-in udp, tcp, ipv6, http, ... protocols,
> >      >     and open to creating/improving some of our automated tests.
> >      >
> >      >     I know Dave has some test scripts already, so I'm not
> necessarily looking to reimplement that,
> >      >     but more fishing for other/new ideas.
> >      >
> >      >     Thanks,
> >      >     Ben
> >      >
> >      >     On 7/2/21 4:28 PM, Bob McMahon wrote:
> >      >      > I think we need the language of math here. It seems like
> the network power metric, introduced by Kleinrock and Jaffe in the late
> 70s, is something
> >     useful.
> >      >      > Effective end/end queue depths per Little's law also seem=
s
> useful. Both are available in iperf 2 from a test perspective. Repurposin=
g
> test
> >     techniques to
> >      >     actual
> >      >      > traffic could be useful. Hence the question around what
> exact telemetry is useful to apps making socket write() and read() calls.
> >      >      >
> >      >      > Bob
> >      >      >
> >      >      > On Fri, Jul 2, 2021 at 10:07 AM Dave Taht <
> dave.taht@gmail.com <mailto:dave.taht@gmail.com> <mailto:
> dave.taht@gmail.com
> >     <mailto:dave.taht@gmail.com>> <mailto:dave.taht@gmail.com <mailto:
> dave.taht@gmail.com> <mailto:dave.taht@gmail.com <mailto:
> dave.taht@gmail.com>>>> wrote:
> >      >      >
> >      >      >     In terms of trying to find "Quality" I have tried to
> encourage folk to
> >      >      >     both read "zen and the art of motorcycle
> maintenance"[0], and Deming's
> >      >      >     work on "total quality management".
> >      >      >
> >      >      >     My own slice at this network, computer and lifestyle
> "issue" is aiming
> >      >      >     for "imperceptible latency" in all things. [1].
> There's a lot of
> >      >      >     fallout from that in terms of not just addressing
> queuing delay, but
> >      >      >     caching, prefetching, and learning more about what a
> user really needs
> >      >      >     (as opposed to wants) to know via intelligent agents.
> >      >      >
> >      >      >     [0] If you want to get depressed, read Pirsig's
> successor to "zen...",
> >      >      >     lila, which is in part about what happens when an
> engineer hits an
> >      >      >     insoluble problem.
> >      >      >     [1]
> https://www.internetsociety.org/events/latency2013/ <
> https://www.internetsociety.org/events/latency2013/>
> >     <https://www.internetsociety.org/events/latency2013/ <
> https://www.internetsociety.org/events/latency2013/>>
> >      >      >
> >      >      >
> >      >      >
> >      >      >     On Thu, Jul 1, 2021 at 6:16 PM David P. Reed <
> dpreed@deepplum.com <mailto:dpreed@deepplum.com> <mailto:
> dpreed@deepplum.com
> >     <mailto:dpreed@deepplum.com>> <mailto:dpreed@deepplum.com <mailto:
> dpreed@deepplum.com>
> >      >     <mailto:dpreed@deepplum.com <mailto:dpreed@deepplum.com>>>>
> wrote:
> >      >      >      >
> >      >      >      > Well, nice that the folks doing the conference  ar=
e
> willing to consider that quality of user experience has little to do with
> signalling
> >     rate at the
> >      >      >     physical layer or throughput of FTP transfers.
> >      >      >      >
> >      >      >      >
> >      >      >      >
> >      >      >      > But honestly, the fact that they call the problem
> "network quality" suggests that they REALLY, REALLY don't understand the
> Internet isn't the
> >      >     hardware or
> >      >      >     the routers or even the routing algorithms *to its
> users*.
> >      >      >      >
> >      >      >      >
> >      >      >      >
> >      >      >      > By ignoring the diversity of applications now and
> in the future, and the fact that we DON'T KNOW what will be coming up, th=
is
> conference will
> >      >     likely fall
> >      >      >     into the usual trap that net-heads fall into -
> optimizing for some imaginary reality that doesn't exist, and in fact wil=
l
> probably never be
> >     what users
> >      >      >     actually will do given the chance.
> >      >      >      >
> >      >      >      >
> >      >      >      >
> >      >      >      > I saw this issue in 1976 in the group developing
> the original Internet protocols - a desire to put *into the network*
> special tricks to
> >     optimize ASR33
> >      >      >     logins to remote computers from terminal concentrator=
s
> (aka remote login), bulk file transfers between file systems on different
> time-sharing
> >      >     systems, and
> >      >      >     "sessions" (virtual circuits) that required logins.
> And then trying to exploit underlying "multicast" by building it into the
> IP layer,
> >     because someone
> >      >      >     thought that TV broadcast would be the dominant
> application.
> >      >      >      >
> >      >      >      >
> >      >      >      >
> >      >      >      > Frankly, to think of "quality" as something that
> can be "provided" by "the network" misses the entire point of "end-to-end
> argument in
> >     system design".
> >      >      >     Quality is not a property defined or created by The
> Network. If you want to talk about Quality, you need to talk about users =
-
> all the users
> >     at all
> >      >     times,
> >      >      >     now and into the future, and that's something you
> can't do if you don't bother to include current and future users talking
> about what they might
> >      >     expect to
> >      >      >     experience that they don't experience.
> >      >      >      >
> >      >      >      >
> >      >      >      >
> >      >      >      > There was much fighting back in 1976 that basicall=
y
> involved "network experts" saying that the network was the place to "solv=
e"
> such issues as
> >      >     quality,
> >      >      >     so applications could avoid having to solve such
> issues.
> >      >      >      >
> >      >      >      >
> >      >      >      >
> >      >      >      > What some of us managed to do was to argue that yo=
u
> can't "solve" such issues. All you can do is provide a framework that
> enables different
> >     uses to
> >      >      >     *cooperate* in some way.
> >      >      >      >
> >      >      >      >
> >      >      >      >
> >      >      >      > Which is why the Internet drops packets rather tha=
n
> queueing them, and why diffserv cannot work.
> >      >      >      >
> >      >      >      > (I know the latter is conftroversial, but at the
> moment, ALL of diffserv attempts to talk about end-to-end applicaiton
> specific metrics, but
> >      >     never, ever
> >      >      >     explains what the diffserv control points actually do
> w.r.t. what the IP layer can actually control. So it is meaningless -
> another violation
> >     of the
> >      >      >     so-called end-to-end principle).
> >      >      >      >
> >      >      >      >
> >      >      >      >
> >      >      >      > Networks are about getting packets from here to
> there, multiplexing the underlying resources. That's it. Quality is a who=
le
> different thing.
> >      >     Quality can
> >      >      >     be improved by end-to-end approaches, if the
> underlying network provides some kind of thing that actually creates a wa=
y
> for end-to-end
> >     applications to
> >      >      >     affect queueing and routing decisions, and more
> importantly getting "telemetry" from the network regarding what is actual=
ly
> going on with the
> >     other
> >      >      >     end-to-end users sharing the infrastructure.
> >      >      >      >
> >      >      >      >
> >      >      >      >
> >      >      >      > This conference won't talk about it this way. So
> don't waste your time.
> >      >      >      >
> >      >      >      >
> >      >      >      >
> >      >      >      >
> >      >      >      >
> >      >      >      >
> >      >      >      >
> >      >      >      > On Wednesday, June 30, 2021 8:12pm, "Dave Taht" <
> dave.taht@gmail.com <mailto:dave.taht@gmail.com> <mailto:
> dave.taht@gmail.com
> >     <mailto:dave.taht@gmail.com>> <mailto:dave.taht@gmail.com <mailto:
> dave.taht@gmail.com>
> >      >     <mailto:dave.taht@gmail.com <mailto:dave.taht@gmail.com>>>>
> said:
> >      >      >      >
> >      >      >      > > The program committee members are *amazing*.
> Perhaps, finally, we can
> >      >      >      > > move the bar for the internet's quality metrics
> past endless, blind
> >      >      >      > > repetitions of speedtest.
> >      >      >      > >
> >      >      >      > > For complete details, please see:
> >      >      >      > >
> https://www.iab.org/activities/workshops/network-quality/ <
> https://www.iab.org/activities/workshops/network-quality/>
> >     <https://www.iab.org/activities/workshops/network-quality/ <
> https://www.iab.org/activities/workshops/network-quality/>>
> >      >      >      > >
> >      >      >      > > Submissions Due: Monday 2nd August 2021, midnigh=
t
> AOE (Anywhere On Earth)
> >      >      >      > > Invitations Issued by: Monday 16th August 2021
> >      >      >      > >
> >      >      >      > > Workshop Date: This will be a virtual workshop,
> spread over three days:
> >      >      >      > >
> >      >      >      > > 1400-1800 UTC Tue 14th September 2021
> >      >      >      > > 1400-1800 UTC Wed 15th September 2021
> >      >      >      > > 1400-1800 UTC Thu 16th September 2021
> >      >      >      > >
> >      >      >      > > Workshop co-chairs: Wes Hardaker, Evgeny Khorov,
> Omer Shapira
> >      >      >      > >
> >      >      >      > > The Program Committee members:
> >      >      >      > >
> >      >      >      > > Jari Arkko, Olivier Bonaventure, Vint Cerf,
> Stuart Cheshire, Sam
> >      >      >      > > Crowford, Nick Feamster, Jim Gettys, Toke
> Hoiland-Jorgensen, Geoff
> >      >      >      > > Huston, Cullen Jennings, Katarzyna Kosek-Szott,
> Mirja Kuehlewind,
> >      >      >      > > Jason Livingood, Matt Mathias, Randall Meyer,
> Kathleen Nichols,
> >      >      >      > > Christoph Paasch, Tommy Pauly, Greg White, Keith
> Winstein.
> >      >      >      > >
> >      >      >      > > Send Submissions to:
> network-quality-workshop-pc@iab.org <mailto:
> network-quality-workshop-pc@iab.org>
> >     <mailto:network-quality-workshop-pc@iab.org <mailto:
> network-quality-workshop-pc@iab.org>>
> >      >     <mailto:network-quality-workshop-pc@iab.org <mailto:
> network-quality-workshop-pc@iab.org> <mailto:
> network-quality-workshop-pc@iab.org
> >     <mailto:network-quality-workshop-pc@iab.org>>>.
> >      >      >      > >
> >      >      >      > > Position papers from academia, industry, the ope=
n
> source community and
> >      >      >      > > others that focus on measurements, experiences,
> observations and
> >      >      >      > > advice for the future are welcome. Papers that
> reflect experience
> >      >      >      > > based on deployed services are especially
> welcome. The organizers
> >      >      >      > > understand that specific actions taken by
> operators are unlikely to be
> >      >      >      > > discussed in detail, so papers discussing genera=
l
> categories of
> >      >      >      > > actions and issues without naming specific
> technologies, products, or
> >      >      >      > > other players in the ecosystem are expected.
> Papers should not focus
> >      >      >      > > on specific protocol solutions.
> >      >      >      > >
> >      >      >      > > The workshop will be by invitation only. Those
> wishing to attend
> >      >      >      > > should submit a position paper to the address
> above; it may take the
> >      >      >      > > form of an Internet-Draft.
> >      >      >      > >
> >      >      >      > > All inputs submitted and considered relevant wil=
l
> be published on the
> >      >      >      > > workshop website. The organisers will decide who=
m
> to invite based on
> >      >      >      > > the submissions received. Sessions will be
> organized according to
> >      >      >      > > content, and not every accepted submission or
> invited attendee will
> >      >      >      > > have an opportunity to present as the intent is
> to foster discussion
> >      >      >      > > and not simply to have a sequence of
> presentations.
> >      >      >      > >
> >      >      >      > > Position papers from those not planning to atten=
d
> the virtual sessions
> >      >      >      > > themselves are also encouraged. A workshop repor=
t
> will be published
> >      >      >      > > afterwards.
> >      >      >      > >
> >      >      >      > > Overview:
> >      >      >      > >
> >      >      >      > > "We believe that one of the major factors behind
> this lack of progress
> >      >      >      > > is the popular perception that throughput is the
> often sole measure of
> >      >      >      > > the quality of Internet connectivity. With such
> narrow focus, people
> >      >      >      > > don=E2=80=99t consider questions such as:
> >      >      >      > >
> >      >      >      > > What is the latency under typical working
> conditions?
> >      >      >      > > How reliable is the connectivity across longer
> time periods?
> >      >      >      > > Does the network allow the use of a broad range
> of protocols?
> >      >      >      > > What services can be run by clients of the
> network?
> >      >      >      > > What kind of IPv4, NAT or IPv6 connectivity is
> offered, and are there firewalls?
> >      >      >      > > What security mechanisms are available for local
> services, such as DNS?
> >      >      >      > > To what degree are the privacy, confidentiality,
> integrity and
> >      >      >      > > authenticity of user communications guarded?
> >      >      >      > >
> >      >      >      > > Improving these aspects of network quality will
> likely depend on
> >      >      >      > > measurement and exposing metrics to all involved
> parties, including to
> >      >      >      > > end users in a meaningful way. Such measurements
> and exposure of the
> >      >      >      > > right metrics will allow service providers and
> network operators to
> >      >      >      > > focus on the aspects that impacts the users=E2=
=80=99
> experience most and at
> >      >      >      > > the same time empowers users to choose the
> Internet service that will
> >      >      >      > > give them the best experience."
> >      >      >      > >
> >      >      >      > >
> >      >      >      > > --
> >      >      >      > > Latest Podcast:
> >      >      >      > >
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/
> >     <
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/=
>
> >      >     <
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/
> <https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920=
/
> >>
> >      >      >      > >
> >      >      >      > > Dave T=C3=A4ht CTO, TekLibre, LLC
> >      >      >      > > _______________________________________________
> >      >      >      > > Cerowrt-devel mailing list
> >      >      >      > > Cerowrt-devel@lists.bufferbloat.net <mailto:
> Cerowrt-devel@lists.bufferbloat.net> <mailto:
> Cerowrt-devel@lists.bufferbloat.net
> >     <mailto:Cerowrt-devel@lists.bufferbloat.net>> <mailto:
> Cerowrt-devel@lists.bufferbloat.net <mailto:
> Cerowrt-devel@lists.bufferbloat.net>
> >      >     <mailto:Cerowrt-devel@lists.bufferbloat.net <mailto:
> Cerowrt-devel@lists.bufferbloat.net>>>
> >      >      >      > >
> https://lists.bufferbloat.net/listinfo/cerowrt-devel <
> https://lists.bufferbloat.net/listinfo/cerowrt-devel>
> >     <https://lists.bufferbloat.net/listinfo/cerowrt-devel <
> https://lists.bufferbloat.net/listinfo/cerowrt-devel>>
> >      >      >      > >
> >      >      >
> >      >      >
> >      >      >
> >      >      >     --
> >      >      >     Latest Podcast:
> >      >      >
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/
> >     <
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/=
>
> <https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920=
/
> >     <
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/
> >>
> >      >      >
> >      >      >     Dave T=C3=A4ht CTO, TekLibre, LLC
> >      >      >     _______________________________________________
> >      >      >     Make-wifi-fast mailing list
> >      >      > Make-wifi-fast@lists.bufferbloat.net <mailto:
> Make-wifi-fast@lists.bufferbloat.net> <mailto:
> Make-wifi-fast@lists.bufferbloat.net
> >     <mailto:Make-wifi-fast@lists.bufferbloat.net>> <mailto:
> Make-wifi-fast@lists.bufferbloat.net <mailto:
> Make-wifi-fast@lists.bufferbloat.net>
> >      >     <mailto:Make-wifi-fast@lists.bufferbloat.net <mailto:
> Make-wifi-fast@lists.bufferbloat.net>>>
> >      >      > https://lists.bufferbloat.net/listinfo/make-wifi-fast <
> https://lists.bufferbloat.net/listinfo/make-wifi-fast>
> >     <https://lists.bufferbloat.net/listinfo/make-wifi-fast <
> https://lists.bufferbloat.net/listinfo/make-wifi-fast>>
> >      >      >
> >      >      >
> >      >      > This electronic communication and the information and any
> files transmitted with it, or attached to it, are confidential and are
> intended solely
> >     for the
> >      >     use of
> >      >      > the individual or entity to whom it is addressed and may
> contain information that is confidential, legally privileged, protected b=
y
> privacy laws, or
> >      >     otherwise
> >      >      > restricted from disclosure to anyone else. If you are not
> the intended recipient or the person responsible for delivering the e-mai=
l
> to the intended
> >      >     recipient,
> >      >      > you are hereby notified that any use, copying,
> distributing, dissemination, forwarding, printing, or copying of this
> e-mail is strictly
> >     prohibited. If you
> >      >      > received this e-mail in error, please return the e-mail t=
o
> the sender, delete it from your computer, and destroy any printed copy of
> it.
> >      >      >
> >      >      > _______________________________________________
> >      >      > Starlink mailing list
> >      >      > Starlink@lists.bufferbloat.net <mailto:
> Starlink@lists.bufferbloat.net> <mailto:Starlink@lists.bufferbloat.net
> <mailto:Starlink@lists.bufferbloat.net>>
> >      >      > https://lists.bufferbloat.net/listinfo/starlink <
> https://lists.bufferbloat.net/listinfo/starlink>
> >      >      >
> >      >
> >      >
> >      >     --
> >      >     Ben Greear <greearb@candelatech.com <mailto:
> greearb@candelatech.com> <mailto:greearb@candelatech.com <mailto:
> greearb@candelatech.com>>>
> >      >     Candela Technologies Inc http://www.candelatech.com <
> http://www.candelatech.com>
> >      >
> >      >
> >      > This electronic communication and the information and any files
> transmitted with it, or attached to it, are confidential and are intended
> solely for the
> >     use of
> >      > the individual or entity to whom it is addressed and may contain
> information that is confidential, legally privileged, protected by privac=
y
> laws, or
> >     otherwise
> >      > restricted from disclosure to anyone else. If you are not the
> intended recipient or the person responsible for delivering the e-mail to
> the intended
> >     recipient,
> >      > you are hereby notified that any use, copying, distributing,
> dissemination, forwarding, printing, or copying of this e-mail is strictl=
y
> prohibited. If you
> >      > received this e-mail in error, please return the e-mail to the
> sender, delete it from your computer, and destroy any printed copy of it.
> >
> >
> >     --
> >     Ben Greear <greearb@candelatech.com <mailto:greearb@candelatech.com
> >>
> >     Candela Technologies Inc http://www.candelatech.com <
> http://www.candelatech.com>
> >
> >
> > This electronic communication and the information and any files
> transmitted with it, or attached to it, are confidential and are intended
> solely for the use of
> > the individual or entity to whom it is addressed and may contain
> information that is confidential, legally privileged, protected by privac=
y
> laws, or otherwise
> > restricted from disclosure to anyone else. If you are not the intended
> recipient or the person responsible for delivering the e-mail to the
> intended recipient,
> > you are hereby notified that any use, copying, distributing,
> dissemination, forwarding, printing, or copying of this e-mail is strictl=
y
> prohibited. If you
> > received this e-mail in error, please return the e-mail to the sender,
> delete it from your computer, and destroy any printed copy of it.
>
>
> --
> Ben Greear <greearb@candelatech.com>
> Candela Technologies Inc  http://www.candelatech.com
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

--0000000000006375e605c68d6c9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I can&#39;t speak for others. I&#39;ve been successful in =
early prototyping using one for simplistic off-diagonal h-matrix testing, i=
.e. varying the h-matrix condition=C2=A0numbers. I see this as a small step=
 in the right direction for conductive, automated, and reproducible testing=
.<br><br>Developing a system that supports multiple RF channels to test aga=
inst seems hard. Then add to that causing the energy states per &quot;peer =
RF traffic&quot; makes the challenge even more difficult.=C2=A0<br><br>Bob<=
br><br><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Wed, Jul 7, 2021 at 6:36 AM Ben Greear &lt;<a href=3D"mailto:=
greearb@candelatech.com">greearb@candelatech.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">Thanks for the clarificatio=
n.=C2=A0 There are vendors that make these, but we have not tried<br>
integrating our software control with any of them.=C2=A0 To date, not many =
of our customers<br>
have been interested in this, so it did not seem worth the effort.<br>
<br>
Do you see this as being useful for normal AP vendors/users, or mostly just=
 radio manufacturers such<br>
as BCM?<br>
<br>
In case someone has one of these that has a sane API, I&#39;d consider addi=
ng automation support<br>
to drive it while running throughput or RvR or whatever other types of test=
s seem interesting.<br>
<br>
Thanks,<br>
Ben<br>
<br>
On 7/6/21 3:05 PM, Bob McMahon wrote:<br>
&gt; Sorry, I should have=C2=A0been more clear. Not a fixed butler matrix b=
ut a device with solid state, programmable, phase shifters, 0 - 360 degrees=
. It&#39;s a way to <br>
&gt; create multiple phy channels and affect and vary the off diagonal elem=
ents of a MIMO H-matrix using conducted parts. Then automation=C2=A0softwar=
e can have more <br>
&gt; robust=C2=A0RF MIMO test scenarios that are reproducible.<br>
&gt; <br>
&gt; <a href=3D"https://web.stanford.edu/~dntse/Chapters_PDF/Fundamentals_W=
ireless_Communication_chapter7.pdf" rel=3D"noreferrer" target=3D"_blank">ht=
tps://web.stanford.edu/~dntse/Chapters_PDF/Fundamentals_Wireless_Communicat=
ion_chapter7.pdf</a> <br>
&gt; &lt;<a href=3D"https://web.stanford.edu/~dntse/Chapters_PDF/Fundamenta=
ls_Wireless_Communication_chapter7.pdf" rel=3D"noreferrer" target=3D"_blank=
">https://web.stanford.edu/~dntse/Chapters_PDF/Fundamentals_Wireless_Commun=
ication_chapter7.pdf</a>&gt;<br>
&gt; <br>
&gt; Bob<br>
&gt; <br>
&gt; On Tue, Jul 6, 2021 at 2:24 PM Ben Greear &lt;<a href=3D"mailto:greear=
b@candelatech.com" target=3D"_blank">greearb@candelatech.com</a> &lt;mailto=
:<a href=3D"mailto:greearb@candelatech.com" target=3D"_blank">greearb@cande=
latech.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0We tried adding in an external butler matrix in the=
 past, but could not notice any useful difference.=C2=A0 Possibly<br>
&gt;=C2=A0 =C2=A0 =C2=A0we didn&#39;t have the right use case.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Typically we are competitive on price for full test=
ing solutions, but you can get stand-alone attenuators<br>
&gt;=C2=A0 =C2=A0 =C2=A0cheaper from specialized vendors.=C2=A0 Happy to di=
scuss pricing offlist if you wish.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Thanks,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Ben<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 7/6/21 1:43 PM, Bob McMahon wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; The four part attenuator part would be more i=
nteresting to me if it also had a solid=C2=A0state phase shifters.=C2=A0 Th=
is allows for testing 2x2 MIMO testing per<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; affecting the spatial stream eigen vectors/va=
lues.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Bob<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; PS. The price per port isn&#39;t competitive.=
 Probably a good idea to survey the market competition.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Tue, Jul 6, 2021 at 6:46 AM Ben Greear &lt=
;<a href=3D"mailto:greearb@candelatech.com" target=3D"_blank">greearb@cande=
latech.com</a> &lt;mailto:<a href=3D"mailto:greearb@candelatech.com" target=
=3D"_blank">greearb@candelatech.com</a>&gt; &lt;mailto:<a href=3D"mailto:gr=
eearb@candelatech.com" target=3D"_blank">greearb@candelatech.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:greearb@candelatech.co=
m" target=3D"_blank">greearb@candelatech.com</a>&gt;&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Hello,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0I am interested to hear wi=
sh lists for network testing features.=C2=A0 We make test equipment, suppor=
ting lots<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0of wifi stations and a dis=
tributed architecture, with built-in udp, tcp, ipv6, http, ... protocols,<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0and open to creating/impro=
ving some of our automated tests.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0I know Dave has some test =
scripts already, so I&#39;m not necessarily looking to reimplement that,<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0but more fishing for other=
/new ideas.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Thanks,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Ben<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0On 7/2/21 4:28 PM, Bob McM=
ahon wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I think we need the =
language=C2=A0of math here. It seems like the network power metric, introdu=
ced by Kleinrock and=C2=A0Jaffe in the late 70s, is something<br>
&gt;=C2=A0 =C2=A0 =C2=A0useful.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Effective end/end qu=
eue depths per Little&#39;s law also seems useful. Both are available in ip=
erf 2 from a test perspective. Repurposing test<br>
&gt;=C2=A0 =C2=A0 =C2=A0techniques to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0actual<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; traffic could be use=
ful. Hence=C2=A0the question around what exact telemetry is useful to apps =
making socket write() and read() calls.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Bob<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Fri, Jul 2, 2021 =
at 10:07 AM Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com" target=3D"=
_blank">dave.taht@gmail.com</a> &lt;mailto:<a href=3D"mailto:dave.taht@gmai=
l.com" target=3D"_blank">dave.taht@gmail.com</a>&gt; &lt;mailto:<a href=3D"=
mailto:dave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:dave.taht@gmail.com" t=
arget=3D"_blank">dave.taht@gmail.com</a>&gt;&gt; &lt;mailto:<a href=3D"mail=
to:dave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a> &lt;mailt=
o:<a href=3D"mailto:dave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.=
com</a>&gt; &lt;mailto:<a href=3D"mailto:dave.taht@gmail.com" target=3D"_bl=
ank">dave.taht@gmail.com</a> &lt;mailto:<a href=3D"mailto:dave.taht@gmail.c=
om" target=3D"_blank">dave.taht@gmail.com</a>&gt;&gt;&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0I=
n terms of trying to find &quot;Quality&quot; I have tried to encourage fol=
k to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0b=
oth read &quot;zen and the art of motorcycle maintenance&quot;[0], and Demi=
ng&#39;s<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0w=
ork on &quot;total quality management&quot;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0M=
y own slice at this network, computer and lifestyle &quot;issue&quot; is ai=
ming<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0f=
or &quot;imperceptible latency&quot; in all things. [1]. There&#39;s a lot =
of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0f=
allout from that in terms of not just addressing queuing delay, but<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0c=
aching, prefetching, and learning more about what a user really needs<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0(=
as opposed to wants) to know via intelligent agents.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0[=
0] If you want to get depressed, read Pirsig&#39;s successor to &quot;zen..=
.&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0l=
ila, which is in part about what happens when an engineer hits an<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0i=
nsoluble problem.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0[=
1] <a href=3D"https://www.internetsociety.org/events/latency2013/" rel=3D"n=
oreferrer" target=3D"_blank">https://www.internetsociety.org/events/latency=
2013/</a> &lt;<a href=3D"https://www.internetsociety.org/events/latency2013=
/" rel=3D"noreferrer" target=3D"_blank">https://www.internetsociety.org/eve=
nts/latency2013/</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://www.internetsociety.org/even=
ts/latency2013/" rel=3D"noreferrer" target=3D"_blank">https://www.internets=
ociety.org/events/latency2013/</a> &lt;<a href=3D"https://www.internetsocie=
ty.org/events/latency2013/" rel=3D"noreferrer" target=3D"_blank">https://ww=
w.internetsociety.org/events/latency2013/</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0O=
n Thu, Jul 1, 2021 at 6:16 PM David P. Reed &lt;<a href=3D"mailto:dpreed@de=
epplum.com" target=3D"_blank">dpreed@deepplum.com</a> &lt;mailto:<a href=3D=
"mailto:dpreed@deepplum.com" target=3D"_blank">dpreed@deepplum.com</a>&gt; =
&lt;mailto:<a href=3D"mailto:dpreed@deepplum.com" target=3D"_blank">dpreed@=
deepplum.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:dpreed@deepplum.com" t=
arget=3D"_blank">dpreed@deepplum.com</a>&gt;&gt; &lt;mailto:<a href=3D"mail=
to:dpreed@deepplum.com" target=3D"_blank">dpreed@deepplum.com</a> &lt;mailt=
o:<a href=3D"mailto:dpreed@deepplum.com" target=3D"_blank">dpreed@deepplum.=
com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mail=
to:dpreed@deepplum.com" target=3D"_blank">dpreed@deepplum.com</a> &lt;mailt=
o:<a href=3D"mailto:dpreed@deepplum.com" target=3D"_blank">dpreed@deepplum.=
com</a>&gt;&gt;&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; Well, nice that the folks doing the conference=C2=A0 are willing to co=
nsider that quality of user experience has little to do with signalling<br>
&gt;=C2=A0 =C2=A0 =C2=A0rate at the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0p=
hysical layer or throughput of FTP transfers.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; But honestly, the fact that they call the problem &quot;network qualit=
y&quot; suggests that they REALLY, REALLY don&#39;t understand the Internet=
 isn&#39;t the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0hardware or<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0t=
he routers or even the routing algorithms *to its users*.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; By ignoring the diversity of applications now and in the future, and t=
he fact that we DON&#39;T KNOW what will be coming up, this conference will=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0likely fall<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0i=
nto the usual trap that net-heads fall into - optimizing for some imaginary=
 reality that doesn&#39;t exist, and in fact will probably never be<br>
&gt;=C2=A0 =C2=A0 =C2=A0what users<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0a=
ctually will do given the chance.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; I saw this issue in 1976 in the group developing the original Internet=
 protocols - a desire to put *into the network* special tricks to<br>
&gt;=C2=A0 =C2=A0 =C2=A0optimize ASR33<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0l=
ogins to remote computers from terminal concentrators (aka remote login), b=
ulk file transfers between file systems on different time-sharing<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0systems, and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0&=
quot;sessions&quot; (virtual circuits) that required logins. And then tryin=
g to exploit underlying &quot;multicast&quot; by building it into the IP la=
yer,<br>
&gt;=C2=A0 =C2=A0 =C2=A0because someone<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0t=
hought that TV broadcast would be the dominant application.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; Frankly, to think of &quot;quality&quot; as something that can be &quo=
t;provided&quot; by &quot;the network&quot; misses the entire point of &quo=
t;end-to-end argument in<br>
&gt;=C2=A0 =C2=A0 =C2=A0system design&quot;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Q=
uality is not a property defined or created by The Network. If you want to =
talk about Quality, you need to talk about users - all the users<br>
&gt;=C2=A0 =C2=A0 =C2=A0at all<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0times,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0n=
ow and into the future, and that&#39;s something you can&#39;t do if you do=
n&#39;t bother to include current and future users talking about what they =
might<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0expect to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0e=
xperience that they don&#39;t experience.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; There was much fighting back in 1976 that basically involved &quot;net=
work experts&quot; saying that the network was the place to &quot;solve&quo=
t; such issues as<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0quality,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0s=
o applications could avoid having to solve such issues.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; What some of us managed to do was to argue that you can&#39;t &quot;so=
lve&quot; such issues. All you can do is provide a framework that enables d=
ifferent<br>
&gt;=C2=A0 =C2=A0 =C2=A0uses to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0*=
cooperate* in some way.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; Which is why the Internet drops packets rather than queueing them, and=
 why diffserv cannot work.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; (I know the latter is conftroversial, but at the moment, ALL of diffse=
rv attempts to talk about end-to-end applicaiton specific metrics, but<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0never, ever<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0e=
xplains what the diffserv control points actually do w.r.t. what the IP lay=
er can actually control. So it is meaningless - another violation<br>
&gt;=C2=A0 =C2=A0 =C2=A0of the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0s=
o-called end-to-end principle).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; Networks are about getting packets from here to there, multiplexing th=
e underlying resources. That&#39;s it. Quality is a whole different thing.<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Quality can<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0b=
e improved by end-to-end approaches, if the underlying network provides som=
e kind of thing that actually creates a way for end-to-end<br>
&gt;=C2=A0 =C2=A0 =C2=A0applications to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0a=
ffect queueing and routing decisions, and more importantly getting &quot;te=
lemetry&quot; from the network regarding what is actually going on with the=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0other<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0e=
nd-to-end users sharing the infrastructure.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; This conference won&#39;t talk about it this way. So don&#39;t waste y=
our time.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; On Wednesday, June 30, 2021 8:12pm, &quot;Dave Taht&quot; &lt;<a href=
=3D"mailto:dave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a> &=
lt;mailto:<a href=3D"mailto:dave.taht@gmail.com" target=3D"_blank">dave.tah=
t@gmail.com</a>&gt; &lt;mailto:<a href=3D"mailto:dave.taht@gmail.com" targe=
t=3D"_blank">dave.taht@gmail.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:dave.taht@gmail.com" t=
arget=3D"_blank">dave.taht@gmail.com</a>&gt;&gt; &lt;mailto:<a href=3D"mail=
to:dave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a> &lt;mailt=
o:<a href=3D"mailto:dave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.=
com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mail=
to:dave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a> &lt;mailt=
o:<a href=3D"mailto:dave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.=
com</a>&gt;&gt;&gt;&gt; said:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; The program committee members are *amazing*. Perhaps, finally, we=
 can<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; move the bar for the internet&#39;s quality metrics past endless,=
 blind<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; repetitions of speedtest.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; For complete details, please see:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; <a href=3D"https://www.iab.org/activities/workshops/network-quali=
ty/" rel=3D"noreferrer" target=3D"_blank">https://www.iab.org/activities/wo=
rkshops/network-quality/</a> &lt;<a href=3D"https://www.iab.org/activities/=
workshops/network-quality/" rel=3D"noreferrer" target=3D"_blank">https://ww=
w.iab.org/activities/workshops/network-quality/</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://www.iab.org/activities/works=
hops/network-quality/" rel=3D"noreferrer" target=3D"_blank">https://www.iab=
.org/activities/workshops/network-quality/</a> &lt;<a href=3D"https://www.i=
ab.org/activities/workshops/network-quality/" rel=3D"noreferrer" target=3D"=
_blank">https://www.iab.org/activities/workshops/network-quality/</a>&gt;&g=
t;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; Submissions Due: Monday 2nd August 2021, midnight AOE (Anywhere O=
n Earth)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; Invitations Issued by: Monday 16th August 2021<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; Workshop Date: This will be a virtual workshop, spread over three=
 days:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; 1400-1800 UTC Tue 14th September 2021<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; 1400-1800 UTC Wed 15th September 2021<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; 1400-1800 UTC Thu 16th September 2021<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; Workshop co-chairs: Wes Hardaker, Evgeny Khorov, Omer Shapira<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; The Program Committee members:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; Jari Arkko, Olivier Bonaventure, Vint Cerf, Stuart Cheshire, Sam<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; Crowford, Nick Feamster, Jim Gettys, Toke Hoiland-Jorgensen, Geof=
f<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; Huston, Cullen Jennings, Katarzyna Kosek-Szott, Mirja Kuehlewind,=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; Jason Livingood, Matt Mathias, Randall Meyer, Kathleen Nichols,<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; Christoph Paasch, Tommy Pauly, Greg White, Keith Winstein.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; Send Submissions to: <a href=3D"mailto:network-quality-workshop-p=
c@iab.org" target=3D"_blank">network-quality-workshop-pc@iab.org</a> &lt;ma=
ilto:<a href=3D"mailto:network-quality-workshop-pc@iab.org" target=3D"_blan=
k">network-quality-workshop-pc@iab.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:network-quality-worksh=
op-pc@iab.org" target=3D"_blank">network-quality-workshop-pc@iab.org</a> &l=
t;mailto:<a href=3D"mailto:network-quality-workshop-pc@iab.org" target=3D"_=
blank">network-quality-workshop-pc@iab.org</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mail=
to:network-quality-workshop-pc@iab.org" target=3D"_blank">network-quality-w=
orkshop-pc@iab.org</a> &lt;mailto:<a href=3D"mailto:network-quality-worksho=
p-pc@iab.org" target=3D"_blank">network-quality-workshop-pc@iab.org</a>&gt;=
 &lt;mailto:<a href=3D"mailto:network-quality-workshop-pc@iab.org" target=
=3D"_blank">network-quality-workshop-pc@iab.org</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:network-quality-worksh=
op-pc@iab.org" target=3D"_blank">network-quality-workshop-pc@iab.org</a>&gt=
;&gt;&gt;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; Position papers from academia, industry, the open source communit=
y and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; others that focus on measurements, experiences, observations and<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; advice for the future are welcome. Papers that reflect experience=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; based on deployed services are especially welcome. The organizers=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; understand that specific actions taken by operators are unlikely =
to be<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; discussed in detail, so papers discussing general categories of<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; actions and issues without naming specific technologies, products=
, or<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; other players in the ecosystem are expected. Papers should not fo=
cus<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; on specific protocol solutions.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; The workshop will be by invitation only. Those wishing to attend<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; should submit a position paper to the address above; it may take =
the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; form of an Internet-Draft.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; All inputs submitted and considered relevant will be published on=
 the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; workshop website. The organisers will decide whom to invite based=
 on<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; the submissions received. Sessions will be organized according to=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; content, and not every accepted submission or invited attendee wi=
ll<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; have an opportunity to present as the intent is to foster discuss=
ion<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; and not simply to have a sequence of presentations.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; Position papers from those not planning to attend the virtual ses=
sions<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; themselves are also encouraged. A workshop report will be publish=
ed<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; afterwards.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; Overview:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; &quot;We believe that one of the major factors behind this lack o=
f progress<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; is the popular perception that throughput is the often sole measu=
re of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; the quality of Internet connectivity. With such narrow focus, peo=
ple<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; don=E2=80=99t consider questions such as:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; What is the latency under typical working conditions?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; How reliable is the connectivity across longer time periods?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; Does the network allow the use of a broad range of protocols?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; What services can be run by clients of the network?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; What kind of IPv4, NAT or IPv6 connectivity is offered, and are t=
here firewalls?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; What security mechanisms are available for local services, such a=
s DNS?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; To what degree are the privacy, confidentiality, integrity and<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; authenticity of user communications guarded?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; Improving these aspects of network quality will likely depend on<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; measurement and exposing metrics to all involved parties, includi=
ng to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; end users in a meaningful way. Such measurements and exposure of =
the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; right metrics will allow service providers and network operators =
to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; focus on the aspects that impacts the users=E2=80=99 experience m=
ost and at<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; the same time empowers users to choose the Internet service that =
will<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; give them the best experience.&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; Latest Podcast:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; <a href=3D"https://www.linkedin.com/feed/update/urn:li:activity:6=
791014284936785920/" rel=3D"noreferrer" target=3D"_blank">https://www.linke=
din.com/feed/update/urn:li:activity:6791014284936785920/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://www.linkedin.com/feed/update=
/urn:li:activity:6791014284936785920/" rel=3D"noreferrer" target=3D"_blank"=
>https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/<=
/a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://www=
.linkedin.com/feed/update/urn:li:activity:6791014284936785920/" rel=3D"nore=
ferrer" target=3D"_blank">https://www.linkedin.com/feed/update/urn:li:activ=
ity:6791014284936785920/</a> &lt;<a href=3D"https://www.linkedin.com/feed/u=
pdate/urn:li:activity:6791014284936785920/" rel=3D"noreferrer" target=3D"_b=
lank">https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785=
920/</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; Dave T=C3=A4ht CTO, TekLibre, LLC<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; _______________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; Cerowrt-devel mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; <a href=3D"mailto:Cerowrt-devel@lists.bufferbloat.net" target=3D"=
_blank">Cerowrt-devel@lists.bufferbloat.net</a> &lt;mailto:<a href=3D"mailt=
o:Cerowrt-devel@lists.bufferbloat.net" target=3D"_blank">Cerowrt-devel@list=
s.bufferbloat.net</a>&gt; &lt;mailto:<a href=3D"mailto:Cerowrt-devel@lists.=
bufferbloat.net" target=3D"_blank">Cerowrt-devel@lists.bufferbloat.net</a><=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:Cerowrt-devel@lists.bu=
fferbloat.net" target=3D"_blank">Cerowrt-devel@lists.bufferbloat.net</a>&gt=
;&gt; &lt;mailto:<a href=3D"mailto:Cerowrt-devel@lists.bufferbloat.net" tar=
get=3D"_blank">Cerowrt-devel@lists.bufferbloat.net</a> &lt;mailto:<a href=
=3D"mailto:Cerowrt-devel@lists.bufferbloat.net" target=3D"_blank">Cerowrt-d=
evel@lists.bufferbloat.net</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mail=
to:Cerowrt-devel@lists.bufferbloat.net" target=3D"_blank">Cerowrt-devel@lis=
ts.bufferbloat.net</a> &lt;mailto:<a href=3D"mailto:Cerowrt-devel@lists.buf=
ferbloat.net" target=3D"_blank">Cerowrt-devel@lists.bufferbloat.net</a>&gt;=
&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cerowrt-devel" =
rel=3D"noreferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo=
/cerowrt-devel</a> &lt;<a href=3D"https://lists.bufferbloat.net/listinfo/ce=
rowrt-devel" rel=3D"noreferrer" target=3D"_blank">https://lists.bufferbloat=
.net/listinfo/cerowrt-devel</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://lists.bufferbloat.net/listin=
fo/cerowrt-devel" rel=3D"noreferrer" target=3D"_blank">https://lists.buffer=
bloat.net/listinfo/cerowrt-devel</a> &lt;<a href=3D"https://lists.bufferblo=
at.net/listinfo/cerowrt-devel" rel=3D"noreferrer" target=3D"_blank">https:/=
/lists.bufferbloat.net/listinfo/cerowrt-devel</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =
&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0-=
-<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0L=
atest Podcast:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"https://w=
ww.linkedin.com/feed/update/urn:li:activity:6791014284936785920/" rel=3D"no=
referrer" target=3D"_blank">https://www.linkedin.com/feed/update/urn:li:act=
ivity:6791014284936785920/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://www.linkedin.com/feed/update=
/urn:li:activity:6791014284936785920/" rel=3D"noreferrer" target=3D"_blank"=
>https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/<=
/a>&gt; &lt;<a href=3D"https://www.linkedin.com/feed/update/urn:li:activity=
:6791014284936785920/" rel=3D"noreferrer" target=3D"_blank">https://www.lin=
kedin.com/feed/update/urn:li:activity:6791014284936785920/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://www.linkedin.com/feed/update=
/urn:li:activity:6791014284936785920/" rel=3D"noreferrer" target=3D"_blank"=
>https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/<=
/a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0D=
ave T=C3=A4ht CTO, TekLibre, LLC<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0_=
______________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0M=
ake-wifi-fast mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"mailto:Ma=
ke-wifi-fast@lists.bufferbloat.net" target=3D"_blank">Make-wifi-fast@lists.=
bufferbloat.net</a> &lt;mailto:<a href=3D"mailto:Make-wifi-fast@lists.buffe=
rbloat.net" target=3D"_blank">Make-wifi-fast@lists.bufferbloat.net</a>&gt; =
&lt;mailto:<a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=
=3D"_blank">Make-wifi-fast@lists.bufferbloat.net</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:Make-wifi-fast@lists.b=
ufferbloat.net" target=3D"_blank">Make-wifi-fast@lists.bufferbloat.net</a>&=
gt;&gt; &lt;mailto:<a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" =
target=3D"_blank">Make-wifi-fast@lists.bufferbloat.net</a> &lt;mailto:<a hr=
ef=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">Make-w=
ifi-fast@lists.bufferbloat.net</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mail=
to:Make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">Make-wifi-fast@l=
ists.bufferbloat.net</a> &lt;mailto:<a href=3D"mailto:Make-wifi-fast@lists.=
bufferbloat.net" target=3D"_blank">Make-wifi-fast@lists.bufferbloat.net</a>=
&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"https://l=
ists.bufferbloat.net/listinfo/make-wifi-fast" rel=3D"noreferrer" target=3D"=
_blank">https://lists.bufferbloat.net/listinfo/make-wifi-fast</a> &lt;<a hr=
ef=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" rel=3D"norefer=
rer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/make-wifi-fas=
t</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://lists.bufferbloat.net/listin=
fo/make-wifi-fast" rel=3D"noreferrer" target=3D"_blank">https://lists.buffe=
rbloat.net/listinfo/make-wifi-fast</a> &lt;<a href=3D"https://lists.bufferb=
loat.net/listinfo/make-wifi-fast" rel=3D"noreferrer" target=3D"_blank">http=
s://lists.bufferbloat.net/listinfo/make-wifi-fast</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; This electronic comm=
unication and the information and any files transmitted with it, or attache=
d to it, are confidential and are intended solely<br>
&gt;=C2=A0 =C2=A0 =C2=A0for the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0use of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; the individual or en=
tity to whom it is addressed and may contain information that is confidenti=
al, legally privileged, protected by privacy laws, or<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0otherwise<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; restricted from disc=
losure to anyone else. If you are not the intended recipient or the person =
responsible for delivering the e-mail to the intended<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0recipient,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; you are hereby notif=
ied that any use, copying, distributing, dissemination, forwarding, printin=
g, or copying of this e-mail is strictly<br>
&gt;=C2=A0 =C2=A0 =C2=A0prohibited. If you<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; received this e-mail=
 in error, please return the e-mail to the sender, delete it from your comp=
uter, and destroy any printed copy of it.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; ____________________=
___________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Starlink mailing lis=
t<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"mailto:St=
arlink@lists.bufferbloat.net" target=3D"_blank">Starlink@lists.bufferbloat.=
net</a> &lt;mailto:<a href=3D"mailto:Starlink@lists.bufferbloat.net" target=
=3D"_blank">Starlink@lists.bufferbloat.net</a>&gt; &lt;mailto:<a href=3D"ma=
ilto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starlink@lists.buffe=
rbloat.net</a> &lt;mailto:<a href=3D"mailto:Starlink@lists.bufferbloat.net"=
 target=3D"_blank">Starlink@lists.bufferbloat.net</a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"https://l=
ists.bufferbloat.net/listinfo/starlink" rel=3D"noreferrer" target=3D"_blank=
">https://lists.bufferbloat.net/listinfo/starlink</a> &lt;<a href=3D"https:=
//lists.bufferbloat.net/listinfo/starlink" rel=3D"noreferrer" target=3D"_bl=
ank">https://lists.bufferbloat.net/listinfo/starlink</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Ben Greear &lt;<a href=3D"=
mailto:greearb@candelatech.com" target=3D"_blank">greearb@candelatech.com</=
a> &lt;mailto:<a href=3D"mailto:greearb@candelatech.com" target=3D"_blank">=
greearb@candelatech.com</a>&gt; &lt;mailto:<a href=3D"mailto:greearb@candel=
atech.com" target=3D"_blank">greearb@candelatech.com</a> &lt;mailto:<a href=
=3D"mailto:greearb@candelatech.com" target=3D"_blank">greearb@candelatech.c=
om</a>&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Candela Technologies Inc <=
a href=3D"http://www.candelatech.com" rel=3D"noreferrer" target=3D"_blank">=
http://www.candelatech.com</a> &lt;<a href=3D"http://www.candelatech.com" r=
el=3D"noreferrer" target=3D"_blank">http://www.candelatech.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; This electronic communication and the informa=
tion and any files transmitted with it, or attached to it, are confidential=
 and are intended solely for the<br>
&gt;=C2=A0 =C2=A0 =C2=A0use of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; the individual or entity to whom it is addres=
sed and may contain information that is confidential, legally privileged, p=
rotected by privacy laws, or<br>
&gt;=C2=A0 =C2=A0 =C2=A0otherwise<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; restricted from disclosure to anyone else. If=
 you are not the intended recipient or the person responsible for deliverin=
g the e-mail to the intended<br>
&gt;=C2=A0 =C2=A0 =C2=A0recipient,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; you are hereby notified that any use, copying=
, distributing, dissemination, forwarding, printing, or copying of this e-m=
ail is strictly prohibited. If you<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; received this e-mail in error, please return =
the e-mail to the sender, delete it from your computer, and destroy any pri=
nted copy of it.<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-- <br>
&gt;=C2=A0 =C2=A0 =C2=A0Ben Greear &lt;<a href=3D"mailto:greearb@candelatec=
h.com" target=3D"_blank">greearb@candelatech.com</a> &lt;mailto:<a href=3D"=
mailto:greearb@candelatech.com" target=3D"_blank">greearb@candelatech.com</=
a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Candela Technologies Inc <a href=3D"http://www.cand=
elatech.com" rel=3D"noreferrer" target=3D"_blank">http://www.candelatech.co=
m</a> &lt;<a href=3D"http://www.candelatech.com" rel=3D"noreferrer" target=
=3D"_blank">http://www.candelatech.com</a>&gt;<br>
&gt; <br>
&gt; <br>
&gt; This electronic communication and the information and any files transm=
itted with it, or attached to it, are confidential and are intended solely =
for the use of <br>
&gt; the individual or entity to whom it is addressed and may contain infor=
mation that is confidential, legally privileged, protected by privacy laws,=
 or otherwise <br>
&gt; restricted from disclosure to anyone else. If you are not the intended=
 recipient or the person responsible for delivering the e-mail to the inten=
ded recipient, <br>
&gt; you are hereby notified that any use, copying, distributing, dissemina=
tion, forwarding, printing, or copying of this e-mail is strictly prohibite=
d. If you <br>
&gt; received this e-mail in error, please return the e-mail to the sender,=
 delete it from your computer, and destroy any printed copy of it.<br>
<br>
<br>
-- <br>
Ben Greear &lt;<a href=3D"mailto:greearb@candelatech.com" target=3D"_blank"=
>greearb@candelatech.com</a>&gt;<br>
Candela Technologies Inc=C2=A0 <a href=3D"http://www.candelatech.com" rel=
=3D"noreferrer" target=3D"_blank">http://www.candelatech.com</a><br>
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
--0000000000006375e605c68d6c9c--

--00000000000069c71905c68d6c54
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIPnPQSqpJAqdmMNbZsQj+NKESB2UpiAQoeTX
jk88pLU4MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDcwNzE5
MTk1NVowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQCxtUCoPoA5sO3codmnMG8FPIgZ6j63Oi8W6Gor+5ju9Jy0lS+miT22
iD/aGDFbYF/Tk491kInf3oNehFG8jmnXJwb4Lz1QSalgDTp7m/gstbH8SyfRGmT6uGFLn+mcRPh+
F+zC72uDDMzODkKGlkb/ZFQIf3+OsDBAnx3WljeVHDYEPRx6fPi+/+Rj4tLM1yt/KxmNSar8T7FO
KopaJBPHjgIZHoILGjt+5LuYgajrVz3HkSs111mcXqJ9TH24MrNFMOxmJ9eJWJq7Kc0H45MY8WGs
1kVoOlWxIR5CnImABSgEDDdO4jQ75hSr2/TegCZSHfUJjouu1HafZ8lCdGC2
--00000000000069c71905c68d6c54--

--===============6447109965868853317==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6447109965868853317==--

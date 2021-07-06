Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E363BDF41
	for <lists+cake@lfdr.de>; Wed,  7 Jul 2021 00:05:27 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1EB063CB62;
	Tue,  6 Jul 2021 18:05:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1625609125;
	bh=hD2uvQR8zMQ+uxBU+uupratHXK1/a2VGbQSvHTcqDmw=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Q6quJ4B8rHrYyJhYzZZ1lqtrCJ9zE/slJVg5AtNqKXCzlbpkqgPPgTwZTx2zkektf
	 0DzUDO5OUYDgJLgVAeLacSKLA9Z0pMNLerorDe3jMZrChDcrNB5v7PvOW4+CARJSlS
	 hswINUpo19xOlWsQcG+X/C60S8notCI1O/4BJH8r/DxAZeaPwvrR+TKhYdijjDAAZe
	 Ez3e2QLfljKPrRp1jtd84P8HhkN1pRT8xEhiujh02Zhj+hKXi9OOvTIhtAb+PRtNr8
	 41/QZRJefrnAjIt1VKhGTBA+jOUvYdd1cGxoD9im2S89lGKI9OhZDlZ2q6IcDFU9fl
	 UdnQ6vudF7n6w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2D6733CB59
 for <cake@lists.bufferbloat.net>; Tue,  6 Jul 2021 18:05:23 -0400 (EDT)
Received: by mail-ed1-x533.google.com with SMTP id k17so682180edq.2
 for <cake@lists.bufferbloat.net>; Tue, 06 Jul 2021 15:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gQZsLxLUE1TwEvuQvy1JaIhGNPgFqgkRSHqd0qPxqHc=;
 b=PNOcZE8hgIsoW+/RfhwgloKwk/E5jv71baT7DDhpyBw7offP3KYwGI2eA7tbZ6U70C
 eo8nrugk2cVsKpxxKS6i7ddS0Xl492Y4J+1felVwGFuFyJsbFTuzgwpH/W6Pmq4Upqno
 i3G4+Pj8Qz09OF2g7YZstnvYHBaBiPj9/4N78=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gQZsLxLUE1TwEvuQvy1JaIhGNPgFqgkRSHqd0qPxqHc=;
 b=DNemmqFdZm94XV5N57CaVZv32wf1amjydDqeMkC4rjhLqZBkE8vY2NTLbY0A8vpmZm
 s1tEOFHp9L5LmPDVfj5pNe1+W+IJN1EpliG1SYn2reTdDgFx9643SePJM+NUDVJQxzYp
 4pho6F5L7cjWT9+ASzHJp6y2fb6Oy1fynkvVx7xR25pen3Yby0RigZ3EWqgvorAiRnSU
 MTT3ITT7iEZBg4hGlwZTCXzEvHmLddsni8DvImibbnLOSKjQkG004ZMG3XkkbU6Rh6GZ
 oI8sI0xE93Uf77c5Mn9zIa6+Lj9mA9IBnHgbyQeiwvPYY7qDG3bN5XvGMeenEaGNmm0O
 yxng==
X-Gm-Message-State: AOAM531O1ouYUCpQ/H+/0bMG+IvrmbNJVvN7PAOAYagG2UrH6oJut4UR
 7gXgfI1Ptrkj6nznvalIymM+Cnk02Zu+ZSmlVcDYrpWZ0FkyNnzw9Y6mUZZ67XRH/FnxwtLCXkb
 n0TLcHhAoKZvEBMotIaAmNHR7WrpM
X-Google-Smtp-Source: ABdhPJw0JEplJpQPderN4/Zs8rqn/G4lzGOo2r5gDGi6TwMA7RbxUfoa8Tj2/UM+hxhC9jipShl0W9KBmkSPohXZ1I8=
X-Received: by 2002:aa7:d4d9:: with SMTP id t25mr8593988edr.370.1625609122005; 
 Tue, 06 Jul 2021 15:05:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <CAHb6LvqSkcGZBZ+iHY-g0vSunqe1sFHmvoFXGjWSoYvtwHeHaA@mail.gmail.com>
 <3acebcdb-b422-5a4b-cad2-d50f71de357e@candelatech.com>
In-Reply-To: <3acebcdb-b422-5a4b-cad2-d50f71de357e@candelatech.com>
Date: Tue, 6 Jul 2021 15:05:11 -0700
Message-ID: <CAHb6LvodW0WNeHAfRHLB6NhDT6+maWVnoR14+setpzCWnwiPTQ@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============1619495690646762160=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1619495690646762160==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="00000000000047ce0f05c67b9e2a"

--00000000000047ce0f05c67b9e2a
Content-Type: multipart/alternative; boundary="00000000000043443905c67b9e5f"

--00000000000043443905c67b9e5f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry, I should have been more clear. Not a fixed butler matrix but a
device with solid state, programmable, phase shifters, 0 - 360 degrees.
It's a way to create multiple phy channels and affect and vary the off
diagonal elements of a MIMO H-matrix using conducted parts. Then
automation software can have more robust RF MIMO test scenarios that are
reproducible.

https://web.stanford.edu/~dntse/Chapters_PDF/Fundamentals_Wireless_Communic=
ation_chapter7.pdf

Bob

On Tue, Jul 6, 2021 at 2:24 PM Ben Greear <greearb@candelatech.com> wrote:

> We tried adding in an external butler matrix in the past, but could not
> notice any useful difference.  Possibly
> we didn't have the right use case.
>
> Typically we are competitive on price for full testing solutions, but you
> can get stand-alone attenuators
> cheaper from specialized vendors.  Happy to discuss pricing offlist if yo=
u
> wish.
>
> Thanks,
> Ben
>
> On 7/6/21 1:43 PM, Bob McMahon wrote:
> > The four part attenuator part would be more interesting to me if it als=
o
> had a solid state phase shifters.  This allows for testing 2x2 MIMO testi=
ng
> per
> > affecting the spatial stream eigen vectors/values.
> >
> > Bob
> >
> > PS. The price per port isn't competitive. Probably a good idea to surve=
y
> the market competition.
> >
> > On Tue, Jul 6, 2021 at 6:46 AM Ben Greear <greearb@candelatech.com
> <mailto:greearb@candelatech.com>> wrote:
> >
> >     Hello,
> >
> >     I am interested to hear wish lists for network testing features.  W=
e
> make test equipment, supporting lots
> >     of wifi stations and a distributed architecture, with built-in udp,
> tcp, ipv6, http, ... protocols,
> >     and open to creating/improving some of our automated tests.
> >
> >     I know Dave has some test scripts already, so I'm not necessarily
> looking to reimplement that,
> >     but more fishing for other/new ideas.
> >
> >     Thanks,
> >     Ben
> >
> >     On 7/2/21 4:28 PM, Bob McMahon wrote:
> >      > I think we need the language of math here. It seems like the
> network power metric, introduced by Kleinrock and Jaffe in the late 70s, =
is
> something useful.
> >      > Effective end/end queue depths per Little's law also seems
> useful. Both are available in iperf 2 from a test perspective. Repurposin=
g
> test techniques to
> >     actual
> >      > traffic could be useful. Hence the question around what exact
> telemetry is useful to apps making socket write() and read() calls.
> >      >
> >      > Bob
> >      >
> >      > On Fri, Jul 2, 2021 at 10:07 AM Dave Taht <dave.taht@gmail.com
> <mailto:dave.taht@gmail.com> <mailto:dave.taht@gmail.com <mailto:
> dave.taht@gmail.com>>> wrote:
> >      >
> >      >     In terms of trying to find "Quality" I have tried to
> encourage folk to
> >      >     both read "zen and the art of motorcycle maintenance"[0], an=
d
> Deming's
> >      >     work on "total quality management".
> >      >
> >      >     My own slice at this network, computer and lifestyle "issue"
> is aiming
> >      >     for "imperceptible latency" in all things. [1]. There's a lo=
t
> of
> >      >     fallout from that in terms of not just addressing queuing
> delay, but
> >      >     caching, prefetching, and learning more about what a user
> really needs
> >      >     (as opposed to wants) to know via intelligent agents.
> >      >
> >      >     [0] If you want to get depressed, read Pirsig's successor to
> "zen...",
> >      >     lila, which is in part about what happens when an engineer
> hits an
> >      >     insoluble problem.
> >      >     [1] https://www.internetsociety.org/events/latency2013/ <
> https://www.internetsociety.org/events/latency2013/>
> >      >
> >      >
> >      >
> >      >     On Thu, Jul 1, 2021 at 6:16 PM David P. Reed <
> dpreed@deepplum.com <mailto:dpreed@deepplum.com> <mailto:
> dpreed@deepplum.com
> >     <mailto:dpreed@deepplum.com>>> wrote:
> >      >      >
> >      >      > Well, nice that the folks doing the conference  are
> willing to consider that quality of user experience has little to do with
> signalling rate at the
> >      >     physical layer or throughput of FTP transfers.
> >      >      >
> >      >      >
> >      >      >
> >      >      > But honestly, the fact that they call the problem "networ=
k
> quality" suggests that they REALLY, REALLY don't understand the Internet
> isn't the
> >     hardware or
> >      >     the routers or even the routing algorithms *to its users*.
> >      >      >
> >      >      >
> >      >      >
> >      >      > By ignoring the diversity of applications now and in the
> future, and the fact that we DON'T KNOW what will be coming up, this
> conference will
> >     likely fall
> >      >     into the usual trap that net-heads fall into - optimizing fo=
r
> some imaginary reality that doesn't exist, and in fact will probably neve=
r
> be what users
> >      >     actually will do given the chance.
> >      >      >
> >      >      >
> >      >      >
> >      >      > I saw this issue in 1976 in the group developing the
> original Internet protocols - a desire to put *into the network* special
> tricks to optimize ASR33
> >      >     logins to remote computers from terminal concentrators (aka
> remote login), bulk file transfers between file systems on different
> time-sharing
> >     systems, and
> >      >     "sessions" (virtual circuits) that required logins. And then
> trying to exploit underlying "multicast" by building it into the IP layer=
,
> because someone
> >      >     thought that TV broadcast would be the dominant application.
> >      >      >
> >      >      >
> >      >      >
> >      >      > Frankly, to think of "quality" as something that can be
> "provided" by "the network" misses the entire point of "end-to-end argume=
nt
> in system design".
> >      >     Quality is not a property defined or created by The Network.
> If you want to talk about Quality, you need to talk about users - all the
> users at all
> >     times,
> >      >     now and into the future, and that's something you can't do i=
f
> you don't bother to include current and future users talking about what
> they might
> >     expect to
> >      >     experience that they don't experience.
> >      >      >
> >      >      >
> >      >      >
> >      >      > There was much fighting back in 1976 that basically
> involved "network experts" saying that the network was the place to "solv=
e"
> such issues as
> >     quality,
> >      >     so applications could avoid having to solve such issues.
> >      >      >
> >      >      >
> >      >      >
> >      >      > What some of us managed to do was to argue that you can't
> "solve" such issues. All you can do is provide a framework that enables
> different uses to
> >      >     *cooperate* in some way.
> >      >      >
> >      >      >
> >      >      >
> >      >      > Which is why the Internet drops packets rather than
> queueing them, and why diffserv cannot work.
> >      >      >
> >      >      > (I know the latter is conftroversial, but at the moment,
> ALL of diffserv attempts to talk about end-to-end applicaiton specific
> metrics, but
> >     never, ever
> >      >     explains what the diffserv control points actually do w.r.t.
> what the IP layer can actually control. So it is meaningless - another
> violation of the
> >      >     so-called end-to-end principle).
> >      >      >
> >      >      >
> >      >      >
> >      >      > Networks are about getting packets from here to there,
> multiplexing the underlying resources. That's it. Quality is a whole
> different thing.
> >     Quality can
> >      >     be improved by end-to-end approaches, if the underlying
> network provides some kind of thing that actually creates a way for
> end-to-end applications to
> >      >     affect queueing and routing decisions, and more importantly
> getting "telemetry" from the network regarding what is actually going on
> with the other
> >      >     end-to-end users sharing the infrastructure.
> >      >      >
> >      >      >
> >      >      >
> >      >      > This conference won't talk about it this way. So don't
> waste your time.
> >      >      >
> >      >      >
> >      >      >
> >      >      >
> >      >      >
> >      >      >
> >      >      >
> >      >      > On Wednesday, June 30, 2021 8:12pm, "Dave Taht" <
> dave.taht@gmail.com <mailto:dave.taht@gmail.com> <mailto:
> dave.taht@gmail.com
> >     <mailto:dave.taht@gmail.com>>> said:
> >      >      >
> >      >      > > The program committee members are *amazing*. Perhaps,
> finally, we can
> >      >      > > move the bar for the internet's quality metrics past
> endless, blind
> >      >      > > repetitions of speedtest.
> >      >      > >
> >      >      > > For complete details, please see:
> >      >      > >
> https://www.iab.org/activities/workshops/network-quality/ <
> https://www.iab.org/activities/workshops/network-quality/>
> >      >      > >
> >      >      > > Submissions Due: Monday 2nd August 2021, midnight AOE
> (Anywhere On Earth)
> >      >      > > Invitations Issued by: Monday 16th August 2021
> >      >      > >
> >      >      > > Workshop Date: This will be a virtual workshop, spread
> over three days:
> >      >      > >
> >      >      > > 1400-1800 UTC Tue 14th September 2021
> >      >      > > 1400-1800 UTC Wed 15th September 2021
> >      >      > > 1400-1800 UTC Thu 16th September 2021
> >      >      > >
> >      >      > > Workshop co-chairs: Wes Hardaker, Evgeny Khorov, Omer
> Shapira
> >      >      > >
> >      >      > > The Program Committee members:
> >      >      > >
> >      >      > > Jari Arkko, Olivier Bonaventure, Vint Cerf, Stuart
> Cheshire, Sam
> >      >      > > Crowford, Nick Feamster, Jim Gettys, Toke
> Hoiland-Jorgensen, Geoff
> >      >      > > Huston, Cullen Jennings, Katarzyna Kosek-Szott, Mirja
> Kuehlewind,
> >      >      > > Jason Livingood, Matt Mathias, Randall Meyer, Kathleen
> Nichols,
> >      >      > > Christoph Paasch, Tommy Pauly, Greg White, Keith
> Winstein.
> >      >      > >
> >      >      > > Send Submissions to: network-quality-workshop-pc@iab.or=
g
> <mailto:network-quality-workshop-pc@iab.org>
> >     <mailto:network-quality-workshop-pc@iab.org <mailto:
> network-quality-workshop-pc@iab.org>>.
> >      >      > >
> >      >      > > Position papers from academia, industry, the open sourc=
e
> community and
> >      >      > > others that focus on measurements, experiences,
> observations and
> >      >      > > advice for the future are welcome. Papers that reflect
> experience
> >      >      > > based on deployed services are especially welcome. The
> organizers
> >      >      > > understand that specific actions taken by operators are
> unlikely to be
> >      >      > > discussed in detail, so papers discussing general
> categories of
> >      >      > > actions and issues without naming specific technologies=
,
> products, or
> >      >      > > other players in the ecosystem are expected. Papers
> should not focus
> >      >      > > on specific protocol solutions.
> >      >      > >
> >      >      > > The workshop will be by invitation only. Those wishing
> to attend
> >      >      > > should submit a position paper to the address above; it
> may take the
> >      >      > > form of an Internet-Draft.
> >      >      > >
> >      >      > > All inputs submitted and considered relevant will be
> published on the
> >      >      > > workshop website. The organisers will decide whom to
> invite based on
> >      >      > > the submissions received. Sessions will be organized
> according to
> >      >      > > content, and not every accepted submission or invited
> attendee will
> >      >      > > have an opportunity to present as the intent is to
> foster discussion
> >      >      > > and not simply to have a sequence of presentations.
> >      >      > >
> >      >      > > Position papers from those not planning to attend the
> virtual sessions
> >      >      > > themselves are also encouraged. A workshop report will
> be published
> >      >      > > afterwards.
> >      >      > >
> >      >      > > Overview:
> >      >      > >
> >      >      > > "We believe that one of the major factors behind this
> lack of progress
> >      >      > > is the popular perception that throughput is the often
> sole measure of
> >      >      > > the quality of Internet connectivity. With such narrow
> focus, people
> >      >      > > don=E2=80=99t consider questions such as:
> >      >      > >
> >      >      > > What is the latency under typical working conditions?
> >      >      > > How reliable is the connectivity across longer time
> periods?
> >      >      > > Does the network allow the use of a broad range of
> protocols?
> >      >      > > What services can be run by clients of the network?
> >      >      > > What kind of IPv4, NAT or IPv6 connectivity is offered,
> and are there firewalls?
> >      >      > > What security mechanisms are available for local
> services, such as DNS?
> >      >      > > To what degree are the privacy, confidentiality,
> integrity and
> >      >      > > authenticity of user communications guarded?
> >      >      > >
> >      >      > > Improving these aspects of network quality will likely
> depend on
> >      >      > > measurement and exposing metrics to all involved
> parties, including to
> >      >      > > end users in a meaningful way. Such measurements and
> exposure of the
> >      >      > > right metrics will allow service providers and network
> operators to
> >      >      > > focus on the aspects that impacts the users=E2=80=99 ex=
perience
> most and at
> >      >      > > the same time empowers users to choose the Internet
> service that will
> >      >      > > give them the best experience."
> >      >      > >
> >      >      > >
> >      >      > > --
> >      >      > > Latest Podcast:
> >      >      > >
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/
> >     <
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/=
>
> >      >      > >
> >      >      > > Dave T=C3=A4ht CTO, TekLibre, LLC
> >      >      > > _______________________________________________
> >      >      > > Cerowrt-devel mailing list
> >      >      > > Cerowrt-devel@lists.bufferbloat.net <mailto:
> Cerowrt-devel@lists.bufferbloat.net> <mailto:
> Cerowrt-devel@lists.bufferbloat.net
> >     <mailto:Cerowrt-devel@lists.bufferbloat.net>>
> >      >      > > https://lists.bufferbloat.net/listinfo/cerowrt-devel <
> https://lists.bufferbloat.net/listinfo/cerowrt-devel>
> >      >      > >
> >      >
> >      >
> >      >
> >      >     --
> >      >     Latest Podcast:
> >      >
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/
> <https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920=
/
> >
> >      >
> >      >     Dave T=C3=A4ht CTO, TekLibre, LLC
> >      >     _______________________________________________
> >      >     Make-wifi-fast mailing list
> >      > Make-wifi-fast@lists.bufferbloat.net <mailto:
> Make-wifi-fast@lists.bufferbloat.net> <mailto:
> Make-wifi-fast@lists.bufferbloat.net
> >     <mailto:Make-wifi-fast@lists.bufferbloat.net>>
> >      > https://lists.bufferbloat.net/listinfo/make-wifi-fast <
> https://lists.bufferbloat.net/listinfo/make-wifi-fast>
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
> >      >
> >      > _______________________________________________
> >      > Starlink mailing list
> >      > Starlink@lists.bufferbloat.net <mailto:
> Starlink@lists.bufferbloat.net>
> >      > https://lists.bufferbloat.net/listinfo/starlink
> >      >
> >
> >
> >     --
> >     Ben Greear <greearb@candelatech.com <mailto:greearb@candelatech.com
> >>
> >     Candela Technologies Inc http://www.candelatech.com
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

--00000000000043443905c67b9e5f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry, I should have=C2=A0been more clear. Not a fixed but=
ler matrix but a device with solid state, programmable, phase shifters, 0 -=
 360 degrees. It&#39;s a way to create multiple phy channels and affect and=
 vary the off diagonal elements of a MIMO H-matrix using conducted parts. T=
hen automation=C2=A0software can have more robust=C2=A0RF MIMO test scenari=
os that are reproducible.<br><br><a href=3D"https://web.stanford.edu/~dntse=
/Chapters_PDF/Fundamentals_Wireless_Communication_chapter7.pdf">https://web=
.stanford.edu/~dntse/Chapters_PDF/Fundamentals_Wireless_Communication_chapt=
er7.pdf</a><br><br>Bob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Tue, Jul 6, 2021 at 2:24 PM Ben Greear &lt;<a href=
=3D"mailto:greearb@candelatech.com" target=3D"_blank">greearb@candelatech.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">We tried adding in an external butler matrix in the past, but could not n=
otice any useful difference.=C2=A0 Possibly<br>
we didn&#39;t have the right use case.<br>
<br>
Typically we are competitive on price for full testing solutions, but you c=
an get stand-alone attenuators<br>
cheaper from specialized vendors.=C2=A0 Happy to discuss pricing offlist if=
 you wish.<br>
<br>
Thanks,<br>
Ben<br>
<br>
On 7/6/21 1:43 PM, Bob McMahon wrote:<br>
&gt; The four part attenuator part would be more interesting to me if it al=
so had a solid=C2=A0state phase shifters.=C2=A0 This allows for testing 2x2=
 MIMO testing per <br>
&gt; affecting the spatial stream eigen vectors/values.<br>
&gt; <br>
&gt; Bob<br>
&gt; <br>
&gt; PS. The price per port isn&#39;t competitive. Probably a good idea to =
survey the market competition.<br>
&gt; <br>
&gt; On Tue, Jul 6, 2021 at 6:46 AM Ben Greear &lt;<a href=3D"mailto:greear=
b@candelatech.com" target=3D"_blank">greearb@candelatech.com</a> &lt;mailto=
:<a href=3D"mailto:greearb@candelatech.com" target=3D"_blank">greearb@cande=
latech.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Hello,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I am interested to hear wish lists for network test=
ing features.=C2=A0 We make test equipment, supporting lots<br>
&gt;=C2=A0 =C2=A0 =C2=A0of wifi stations and a distributed architecture, wi=
th built-in udp, tcp, ipv6, http, ... protocols,<br>
&gt;=C2=A0 =C2=A0 =C2=A0and open to creating/improving some of our automate=
d tests.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I know Dave has some test scripts already, so I&#39=
;m not necessarily looking to reimplement that,<br>
&gt;=C2=A0 =C2=A0 =C2=A0but more fishing for other/new ideas.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Thanks,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Ben<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 7/2/21 4:28 PM, Bob McMahon wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; I think we need the language=C2=A0of math her=
e. It seems like the network power metric, introduced by Kleinrock and=C2=
=A0Jaffe in the late 70s, is something useful.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Effective end/end queue depths per Little&#39=
;s law also seems useful. Both are available in iperf 2 from a test perspec=
tive. Repurposing test techniques to<br>
&gt;=C2=A0 =C2=A0 =C2=A0actual<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; traffic could be useful. Hence=C2=A0the quest=
ion around what exact telemetry is useful to apps making socket write() and=
 read() calls.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Bob<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Fri, Jul 2, 2021 at 10:07 AM Dave Taht &lt=
;<a href=3D"mailto:dave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.c=
om</a> &lt;mailto:<a href=3D"mailto:dave.taht@gmail.com" target=3D"_blank">=
dave.taht@gmail.com</a>&gt; &lt;mailto:<a href=3D"mailto:dave.taht@gmail.co=
m" target=3D"_blank">dave.taht@gmail.com</a> &lt;mailto:<a href=3D"mailto:d=
ave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a>&gt;&gt;&gt; w=
rote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0In terms of trying to find=
 &quot;Quality&quot; I have tried to encourage folk to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0both read &quot;zen and th=
e art of motorcycle maintenance&quot;[0], and Deming&#39;s<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0work on &quot;total qualit=
y management&quot;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0My own slice at this netwo=
rk, computer and lifestyle &quot;issue&quot; is aiming<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0for &quot;imperceptible la=
tency&quot; in all things. [1]. There&#39;s a lot of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0fallout from that in terms=
 of not just addressing queuing delay, but<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0caching, prefetching, and =
learning more about what a user really needs<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0(as opposed to wants) to k=
now via intelligent agents.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0[0] If you want to get dep=
ressed, read Pirsig&#39;s successor to &quot;zen...&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0lila, which is in part abo=
ut what happens when an engineer hits an<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0insoluble problem.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0[1] <a href=3D"https://www=
.internetsociety.org/events/latency2013/" rel=3D"noreferrer" target=3D"_bla=
nk">https://www.internetsociety.org/events/latency2013/</a> &lt;<a href=3D"=
https://www.internetsociety.org/events/latency2013/" rel=3D"noreferrer" tar=
get=3D"_blank">https://www.internetsociety.org/events/latency2013/</a>&gt;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0On Thu, Jul 1, 2021 at 6:1=
6 PM David P. Reed &lt;<a href=3D"mailto:dpreed@deepplum.com" target=3D"_bl=
ank">dpreed@deepplum.com</a> &lt;mailto:<a href=3D"mailto:dpreed@deepplum.c=
om" target=3D"_blank">dpreed@deepplum.com</a>&gt; &lt;mailto:<a href=3D"mai=
lto:dpreed@deepplum.com" target=3D"_blank">dpreed@deepplum.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:dpreed@deepplum.com" t=
arget=3D"_blank">dpreed@deepplum.com</a>&gt;&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Well, nice that the =
folks doing the conference=C2=A0 are willing to consider that quality of us=
er experience has little to do with signalling rate at the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0physical layer or throughp=
ut of FTP transfers.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; But honestly, the fa=
ct that they call the problem &quot;network quality&quot; suggests that the=
y REALLY, REALLY don&#39;t understand the Internet isn&#39;t the<br>
&gt;=C2=A0 =C2=A0 =C2=A0hardware or<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0the routers or even the ro=
uting algorithms *to its users*.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; By ignoring the dive=
rsity of applications now and in the future, and the fact that we DON&#39;T=
 KNOW what will be coming up, this conference will<br>
&gt;=C2=A0 =C2=A0 =C2=A0likely fall<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0into the usual trap that n=
et-heads fall into - optimizing for some imaginary reality that doesn&#39;t=
 exist, and in fact will probably never be what users<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0actually will do given the=
 chance.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I saw this issue in =
1976 in the group developing the original Internet protocols - a desire to =
put *into the network* special tricks to optimize ASR33<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0logins to remote computers=
 from terminal concentrators (aka remote login), bulk file transfers betwee=
n file systems on different time-sharing<br>
&gt;=C2=A0 =C2=A0 =C2=A0systems, and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0&quot;sessions&quot; (virt=
ual circuits) that required logins. And then trying to exploit underlying &=
quot;multicast&quot; by building it into the IP layer, because someone<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0thought that TV broadcast =
would be the dominant application.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Frankly, to think of=
 &quot;quality&quot; as something that can be &quot;provided&quot; by &quot=
;the network&quot; misses the entire point of &quot;end-to-end argument in =
system design&quot;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Quality is not a property =
defined or created by The Network. If you want to talk about Quality, you n=
eed to talk about users - all the users at all<br>
&gt;=C2=A0 =C2=A0 =C2=A0times,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0now and into the future, a=
nd that&#39;s something you can&#39;t do if you don&#39;t bother to include=
 current and future users talking about what they might<br>
&gt;=C2=A0 =C2=A0 =C2=A0expect to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0experience that they don&#=
39;t experience.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; There was much fight=
ing back in 1976 that basically involved &quot;network experts&quot; saying=
 that the network was the place to &quot;solve&quot; such issues as<br>
&gt;=C2=A0 =C2=A0 =C2=A0quality,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0so applications could avoi=
d having to solve such issues.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; What some of us mana=
ged to do was to argue that you can&#39;t &quot;solve&quot; such issues. Al=
l you can do is provide a framework that enables different uses to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0*cooperate* in some way.<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Which is why the Int=
ernet drops packets rather than queueing them, and why diffserv cannot work=
.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; (I know the latter i=
s conftroversial, but at the moment, ALL of diffserv attempts to talk about=
 end-to-end applicaiton specific metrics, but<br>
&gt;=C2=A0 =C2=A0 =C2=A0never, ever<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0explains what the diffserv=
 control points actually do w.r.t. what the IP layer can actually control. =
So it is meaningless - another violation of the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0so-called end-to-end princ=
iple).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Networks are about g=
etting packets from here to there, multiplexing the underlying resources. T=
hat&#39;s it. Quality is a whole different thing.<br>
&gt;=C2=A0 =C2=A0 =C2=A0Quality can<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0be improved by end-to-end =
approaches, if the underlying network provides some kind of thing that actu=
ally creates a way for end-to-end applications to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0affect queueing and routin=
g decisions, and more importantly getting &quot;telemetry&quot; from the ne=
twork regarding what is actually going on with the other<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0end-to-end users sharing t=
he infrastructure.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; This conference won&=
#39;t talk about it this way. So don&#39;t waste your time.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Wednesday, June 3=
0, 2021 8:12pm, &quot;Dave Taht&quot; &lt;<a href=3D"mailto:dave.taht@gmail=
.com" target=3D"_blank">dave.taht@gmail.com</a> &lt;mailto:<a href=3D"mailt=
o:dave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a>&gt; &lt;ma=
ilto:<a href=3D"mailto:dave.taht@gmail.com" target=3D"_blank">dave.taht@gma=
il.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:dave.taht@gmail.com" t=
arget=3D"_blank">dave.taht@gmail.com</a>&gt;&gt;&gt; said:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; The program com=
mittee members are *amazing*. Perhaps, finally, we can<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; move the bar fo=
r the internet&#39;s quality metrics past endless, blind<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; repetitions of =
speedtest.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; For complete de=
tails, please see:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; <a href=3D"http=
s://www.iab.org/activities/workshops/network-quality/" rel=3D"noreferrer" t=
arget=3D"_blank">https://www.iab.org/activities/workshops/network-quality/<=
/a> &lt;<a href=3D"https://www.iab.org/activities/workshops/network-quality=
/" rel=3D"noreferrer" target=3D"_blank">https://www.iab.org/activities/work=
shops/network-quality/</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Submissions Due=
: Monday 2nd August 2021, midnight AOE (Anywhere On Earth)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Invitations Iss=
ued by: Monday 16th August 2021<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Workshop Date: =
This will be a virtual workshop, spread over three days:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; 1400-1800 UTC T=
ue 14th September 2021<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; 1400-1800 UTC W=
ed 15th September 2021<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; 1400-1800 UTC T=
hu 16th September 2021<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Workshop co-cha=
irs: Wes Hardaker, Evgeny Khorov, Omer Shapira<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; The Program Com=
mittee members:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Jari Arkko, Oli=
vier Bonaventure, Vint Cerf, Stuart Cheshire, Sam<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Crowford, Nick =
Feamster, Jim Gettys, Toke Hoiland-Jorgensen, Geoff<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Huston, Cullen =
Jennings, Katarzyna Kosek-Szott, Mirja Kuehlewind,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Jason Livingood=
, Matt Mathias, Randall Meyer, Kathleen Nichols,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Christoph Paasc=
h, Tommy Pauly, Greg White, Keith Winstein.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Send Submission=
s to: <a href=3D"mailto:network-quality-workshop-pc@iab.org" target=3D"_bla=
nk">network-quality-workshop-pc@iab.org</a> &lt;mailto:<a href=3D"mailto:ne=
twork-quality-workshop-pc@iab.org" target=3D"_blank">network-quality-worksh=
op-pc@iab.org</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:network-quality-worksh=
op-pc@iab.org" target=3D"_blank">network-quality-workshop-pc@iab.org</a> &l=
t;mailto:<a href=3D"mailto:network-quality-workshop-pc@iab.org" target=3D"_=
blank">network-quality-workshop-pc@iab.org</a>&gt;&gt;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Position papers=
 from academia, industry, the open source community and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; others that foc=
us on measurements, experiences, observations and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; advice for the =
future are welcome. Papers that reflect experience<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; based on deploy=
ed services are especially welcome. The organizers<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; understand that=
 specific actions taken by operators are unlikely to be<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; discussed in de=
tail, so papers discussing general categories of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; actions and iss=
ues without naming specific technologies, products, or<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; other players i=
n the ecosystem are expected. Papers should not focus<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; on specific pro=
tocol solutions.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; The workshop wi=
ll be by invitation only. Those wishing to attend<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; should submit a=
 position paper to the address above; it may take the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; form of an Inte=
rnet-Draft.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; All inputs subm=
itted and considered relevant will be published on the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; workshop websit=
e. The organisers will decide whom to invite based on<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; the submissions=
 received. Sessions will be organized according to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; content, and no=
t every accepted submission or invited attendee will<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; have an opportu=
nity to present as the intent is to foster discussion<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; and not simply =
to have a sequence of presentations.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Position papers=
 from those not planning to attend the virtual sessions<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; themselves are =
also encouraged. A workshop report will be published<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; afterwards.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Overview:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &quot;We believ=
e that one of the major factors behind this lack of progress<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; is the popular =
perception that throughput is the often sole measure of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; the quality of =
Internet connectivity. With such narrow focus, people<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; don=E2=80=99t c=
onsider questions such as:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; What is the lat=
ency under typical working conditions?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; How reliable is=
 the connectivity across longer time periods?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Does the networ=
k allow the use of a broad range of protocols?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; What services c=
an be run by clients of the network?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; What kind of IP=
v4, NAT or IPv6 connectivity is offered, and are there firewalls?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; What security m=
echanisms are available for local services, such as DNS?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; To what degree =
are the privacy, confidentiality, integrity and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; authenticity of=
 user communications guarded?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Improving these=
 aspects of network quality will likely depend on<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; measurement and=
 exposing metrics to all involved parties, including to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; end users in a =
meaningful way. Such measurements and exposure of the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; right metrics w=
ill allow service providers and network operators to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; focus on the as=
pects that impacts the users=E2=80=99 experience most and at<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; the same time e=
mpowers users to choose the Internet service that will<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; give them the b=
est experience.&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Latest Podcast:=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; <a href=3D"http=
s://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/" rel=
=3D"noreferrer" target=3D"_blank">https://www.linkedin.com/feed/update/urn:=
li:activity:6791014284936785920/</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;<a href=3D"https://www.linkedin.com/feed/update=
/urn:li:activity:6791014284936785920/" rel=3D"noreferrer" target=3D"_blank"=
>https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/<=
/a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Dave T=C3=A4ht =
CTO, TekLibre, LLC<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; _______________=
________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Cerowrt-devel m=
ailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; <a href=3D"mail=
to:Cerowrt-devel@lists.bufferbloat.net" target=3D"_blank">Cerowrt-devel@lis=
ts.bufferbloat.net</a> &lt;mailto:<a href=3D"mailto:Cerowrt-devel@lists.buf=
ferbloat.net" target=3D"_blank">Cerowrt-devel@lists.bufferbloat.net</a>&gt;=
 &lt;mailto:<a href=3D"mailto:Cerowrt-devel@lists.bufferbloat.net" target=
=3D"_blank">Cerowrt-devel@lists.bufferbloat.net</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:Cerowrt-devel@lists.bu=
fferbloat.net" target=3D"_blank">Cerowrt-devel@lists.bufferbloat.net</a>&gt=
;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; <a href=3D"http=
s://lists.bufferbloat.net/listinfo/cerowrt-devel" rel=3D"noreferrer" target=
=3D"_blank">https://lists.bufferbloat.net/listinfo/cerowrt-devel</a> &lt;<a=
 href=3D"https://lists.bufferbloat.net/listinfo/cerowrt-devel" rel=3D"noref=
errer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cerowrt-dev=
el</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Latest Podcast:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"https://www.linkedin.com/feed/upda=
te/urn:li:activity:6791014284936785920/" rel=3D"noreferrer" target=3D"_blan=
k">https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920=
/</a> &lt;<a href=3D"https://www.linkedin.com/feed/update/urn:li:activity:6=
791014284936785920/" rel=3D"noreferrer" target=3D"_blank">https://www.linke=
din.com/feed/update/urn:li:activity:6791014284936785920/</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Dave T=C3=A4ht CTO, TekLib=
re, LLC<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0__________________________=
_____________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Make-wifi-fast mailing lis=
t<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"mailto:Make-wifi-fast@lists.buffer=
bloat.net" target=3D"_blank">Make-wifi-fast@lists.bufferbloat.net</a> &lt;m=
ailto:<a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_bl=
ank">Make-wifi-fast@lists.bufferbloat.net</a>&gt; &lt;mailto:<a href=3D"mai=
lto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">Make-wifi-fast@=
lists.bufferbloat.net</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:Make-wifi-fast@lists.b=
ufferbloat.net" target=3D"_blank">Make-wifi-fast@lists.bufferbloat.net</a>&=
gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"https://lists.bufferbloat.net/list=
info/make-wifi-fast" rel=3D"noreferrer" target=3D"_blank">https://lists.buf=
ferbloat.net/listinfo/make-wifi-fast</a> &lt;<a href=3D"https://lists.buffe=
rbloat.net/listinfo/make-wifi-fast" rel=3D"noreferrer" target=3D"_blank">ht=
tps://lists.bufferbloat.net/listinfo/make-wifi-fast</a>&gt;<br>
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
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; _____________________________________________=
__<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Starlink mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"mailto:Starlink@lists.bufferbloat.=
net" target=3D"_blank">Starlink@lists.bufferbloat.net</a> &lt;mailto:<a hre=
f=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starlink@list=
s.bufferbloat.net</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"https://lists.bufferbloat.net/list=
info/starlink" rel=3D"noreferrer" target=3D"_blank">https://lists.bufferblo=
at.net/listinfo/starlink</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-- <br>
&gt;=C2=A0 =C2=A0 =C2=A0Ben Greear &lt;<a href=3D"mailto:greearb@candelatec=
h.com" target=3D"_blank">greearb@candelatech.com</a> &lt;mailto:<a href=3D"=
mailto:greearb@candelatech.com" target=3D"_blank">greearb@candelatech.com</=
a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Candela Technologies Inc <a href=3D"http://www.cand=
elatech.com" rel=3D"noreferrer" target=3D"_blank">http://www.candelatech.co=
m</a><br>
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
--00000000000043443905c67b9e5f--

--00000000000047ce0f05c67b9e2a
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIK9B3rlM+G/lfcofwReNLG/Mb59rYdukUMdq
aNtahfN1MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDcwNjIy
MDUyMlowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQAwXN81gB7dwrXRV2/aQ9i8pbGwkcCMDs/U7SmK2/2HYgPzuVuoUj+R
9LLjjrjTFj5Lr+RZpbRl3laH4R4VyDQmnFjYV+N7/1lNqwuIaMh7x88Tl5S1uQuysNE4r9yixXK8
8YXinMfWy/Y3Z10h6c8omqcHtmT2nJEL5Gt1REbv2tjkEZH0iI9ylbu508/jopGl4MltWJcSg+mb
b1Fv/f8m+/1rFViuhL62aVTumM9aue7ByeoGODhdw94AnzdflW6V9Ki7VJ7qftPB1Dh3UQfeqY+G
GXt8IsOKoIMHp82fxci82TYPcm3dfWGu0MqHmMG2L2WCmzrU1C15zU90gjuM
--00000000000047ce0f05c67b9e2a--

--===============1619495690646762160==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1619495690646762160==--

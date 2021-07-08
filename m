Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAF43C1B96
	for <lists+cake@lfdr.de>; Fri,  9 Jul 2021 00:51:40 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D0AD93CB4D;
	Thu,  8 Jul 2021 18:51:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1625784698;
	bh=vQML85Cy+pQzbQeNTcOYT6vPI1Vhwnh30myNZHUS0kY=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=KLjcYoF80KG3JogoEtqX0FMQ2A4lIzJ3yy7RidtpmT6f9WF+SW6CIH55DYo8bS8JP
	 WSCsPAoMuaLAgZ0EKZUr2jV1dfKt+PanirwFq+tNq1XOMbPoYAJcA+L8UqD3STNfeB
	 yO7sHM2owqr+KVCk/4asIoPiLPXyn9xfVUY7684DLSn+qK9t9nTqTzWIcMAYhvGExQ
	 gmk1dnVHk+WuWPhO45tquqK8W3JJdLZ3iL25Fnlv73A9BQomkTN71e5Vdf8KJBOqST
	 JueFJOAaQD5S9MlxHY/6ce05bokUjzo5fk6CKZ8GKHthhELe/arQZ5yjw9iAd+ZWQ+
	 9sGn0i+51psgw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 113A93B2A4
 for <cake@lists.bufferbloat.net>; Thu,  8 Jul 2021 18:51:37 -0400 (EDT)
Received: by mail-ej1-x634.google.com with SMTP id bu12so12591957ejb.0
 for <cake@lists.bufferbloat.net>; Thu, 08 Jul 2021 15:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Max/3sCHfXXelE1LCBCX2s+0y5uec0+WR1gs0E14YnI=;
 b=hZkhYrVCn/8xTeXIM7SyiJvsY8ONqIHoZ42GjuYDXGDHnLmcel4qZalNhPQ7q631Be
 pz95z3r1HeresmW+mdk66pgX8ZWwYMk74rRTy+nKOUGNbTSOvisBObLF3SvdzWm+0pVr
 NUZxdc7CF0/e0vWFoU6dToZkl56FEHTBqbcKY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Max/3sCHfXXelE1LCBCX2s+0y5uec0+WR1gs0E14YnI=;
 b=pjWNa+LHa440npwJeZM0GH6o+NWy5yAV/arRlu42pYhLK+WgEjK30+tQmvRxhzDQ9a
 7XwM69xUcC89Sjdu3uld5otwm5eKD6zT5MiAVWCREzSE7y74i9qCHfDJ9YL9E5ukHYaS
 4/zX2OI3tv4UZiTYweiI9eoSFH3/dLZBxF2vu/zufrcMSwRUWaD8l6IuQ3HrPB8J2Jah
 tTtERsAVH1+OtCDxn0Uv6r+KwO7s7itSGaPHj643aw0AbqVvQK6z2amptU8fy6oFY2CO
 LPXPduEVdJLPZwvBMsDW2JEDQ13j18GcxMlezK+QHiZcG256JUwpZoPR+jy/UKEl2cK0
 xuIQ==
X-Gm-Message-State: AOAM531Uzih/q6y+VvAZ+yypWIuTvOqTbLpA8imcT827eJI8naIzplOr
 tHkC7VszXiVCUfWpbi/u4tJHAWIP8IvQxUWOoBvG3R37U4DRvGr0xeK9dt/6y1E3/fAnZfgRWP8
 4GcyRYA4Xfnkws0PnSDCJZZ8TPBIH
X-Google-Smtp-Source: ABdhPJy3lMMdQlaGVovHuqrT1bhes9KNmCjcyKi1qFMDyzbllEYVPFELyXwGf0I51ydVFpCRg0U43PYcY1HvjrK7uk8=
X-Received: by 2002:a17:906:7950:: with SMTP id
 l16mr21969832ejo.400.1625784695323; 
 Thu, 08 Jul 2021 15:51:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
In-Reply-To: <1625773080.94974089@apps.rackspace.com>
Date: Thu, 8 Jul 2021 15:51:24 -0700
Message-ID: <CAHb6LvoMd_8yKias33FSpVN=s+YMoWPdyo566J+W5Ru0JU4cAQ@mail.gmail.com>
To: "David P. Reed" <dpreed@deepplum.com>
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
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: multipart/mixed; boundary="===============4916025739165148340=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4916025739165148340==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000004752e105c6a47f6a"

--0000000000004752e105c6a47f6a
Content-Type: multipart/alternative; boundary="000000000000401a4105c6a47f7b"

--000000000000401a4105c6a47f7b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks very much for this response. I need to dig in a bit more for sure.

iperf 2 will give every UDP packet's OWD (if the clocks are sync'd) and
will also provide TCP write to read latencies, both supported in histogram
forms. So that's raw samples so to speak. I'm hooking up some units across
geography including across the Pacific (sync'd to GPS atomic time) to see
how "fractal" these distributions look, at least anecdotally.

On top of all the "spherical cow queueing theory" (which made me laugh,)
we've got bluetooth sometimes sharing the radio. So the transport latency
of TCP writes can be all over the map so-to-speak. And bluetooth traffic is
also highly correlated.

Bob




On Thu, Jul 8, 2021 at 12:38 PM David P. Reed <dpreed@deepplum.com> wrote:

> I will tell you flat out that the arrival time distribution assumption
> made by Little's Lemma that allows "estimation of queue depth" is totally
> unreasonable on ANY Internet in practice.
>
>
>
> The assumption is a Poisson Arrival Process. In reality, traffic arrivals
> in real internet applications are extremely far from Poisson, and, of
> course, using TCP windowing, become highly intercorrelated with crossing
> traffic that shares the same queue.
>
>
>
> So, as I've tried to tell many, many net-heads (people who ignore
> applications layer behavior, like the people that think latency doesn't
> matter to end users, only throughput), end-to-end packet arrival times on=
 a
> practical network are incredibly far from Poisson - and they are more lik=
e
> fractal probability distributions, very irregular at all scales of time.
>
>
>
> So, the idea that iperf can estimate queue depth by Little's Lemma by jus=
t
> measuring saturation of capacity of a path is bogus.The less Poisson, the
> worse the estimate gets, by a huge factor.
>
>
>
>
>
> Where does the Poisson assumption come from?  Well, like many theorems, i=
t
> is the simplest tractable closed form solution - it creates a simplified
> view, by being a "single-parameter" distribution (the parameter is called
> lambda for a Poisson distribution).  And the analysis of a simple queue
> with poisson arrival distribution and a static, fixed service time is the
> first interesting Queueing Theory example in most textbooks. It is
> suggestive of an interesting phenomenon, but it does NOT characterize any
> real system.
>
>
>
> It's the queueing theory equivalent of "First, we assume a spherical
> cow...". in doing an example in a freshman physics class.
>
>
>
> Unfortunately, most networking engineers understand neither queuing theor=
y
> nor application networking usage in interactive applications. Which makes
> them arrogant. They assume all distributions are poisson!
>
>
>
>
>
> On Tuesday, July 6, 2021 9:46am, "Ben Greear" <greearb@candelatech.com>
> said:
>
> > Hello,
> >
> > I am interested to hear wish lists for network testing features. We mak=
e
> test
> > equipment, supporting lots
> > of wifi stations and a distributed architecture, with built-in udp, tcp=
,
> ipv6,
> > http, ... protocols,
> > and open to creating/improving some of our automated tests.
> >
> > I know Dave has some test scripts already, so I'm not necessarily
> looking to
> > reimplement that,
> > but more fishing for other/new ideas.
> >
> > Thanks,
> > Ben
> >
> > On 7/2/21 4:28 PM, Bob McMahon wrote:
> > > I think we need the language of math here. It seems like the network
> > power metric, introduced by Kleinrock and Jaffe in the late 70s, is
> something
> > useful.
> > > Effective end/end queue depths per Little's law also seems useful.
> Both are
> > available in iperf 2 from a test perspective. Repurposing test
> techniques to
> > actual
> > > traffic could be useful. Hence the question around what exact telemet=
ry
> > is useful to apps making socket write() and read() calls.
> > >
> > > Bob
> > >
> > > On Fri, Jul 2, 2021 at 10:07 AM Dave Taht <dave.taht@gmail.com
> > <mailto:dave.taht@gmail.com>> wrote:
> > >
> > > In terms of trying to find "Quality" I have tried to encourage folk t=
o
> > > both read "zen and the art of motorcycle maintenance"[0], and Deming'=
s
> > > work on "total quality management".
> > >
> > > My own slice at this network, computer and lifestyle "issue" is aimin=
g
> > > for "imperceptible latency" in all things. [1]. There's a lot of
> > > fallout from that in terms of not just addressing queuing delay, but
> > > caching, prefetching, and learning more about what a user really need=
s
> > > (as opposed to wants) to know via intelligent agents.
> > >
> > > [0] If you want to get depressed, read Pirsig's successor to "zen..."=
,
> > > lila, which is in part about what happens when an engineer hits an
> > > insoluble problem.
> > > [1] https://www.internetsociety.org/events/latency2013/
> > <https://www.internetsociety.org/events/latency2013/>
> > >
> > >
> > >
> > > On Thu, Jul 1, 2021 at 6:16 PM David P. Reed <dpreed@deepplum.com
> > <mailto:dpreed@deepplum.com>> wrote:
> > > >
> > > > Well, nice that the folks doing the conference  are willing to
> > consider that quality of user experience has little to do with
> signalling rate at
> > the
> > > physical layer or throughput of FTP transfers.
> > > >
> > > >
> > > >
> > > > But honestly, the fact that they call the problem "network quality"
> > suggests that they REALLY, REALLY don't understand the Internet isn't
> the hardware
> > or
> > > the routers or even the routing algorithms *to its users*.
> > > >
> > > >
> > > >
> > > > By ignoring the diversity of applications now and in the future,
> > and the fact that we DON'T KNOW what will be coming up, this conference
> will
> > likely fall
> > > into the usual trap that net-heads fall into - optimizing for some
> > imaginary reality that doesn't exist, and in fact will probably never b=
e
> what
> > users
> > > actually will do given the chance.
> > > >
> > > >
> > > >
> > > > I saw this issue in 1976 in the group developing the original
> > Internet protocols - a desire to put *into the network* special tricks
> to optimize
> > ASR33
> > > logins to remote computers from terminal concentrators (aka remote
> > login), bulk file transfers between file systems on different
> time-sharing
> > systems, and
> > > "sessions" (virtual circuits) that required logins. And then trying t=
o
> > exploit underlying "multicast" by building it into the IP layer, becaus=
e
> someone
> > > thought that TV broadcast would be the dominant application.
> > > >
> > > >
> > > >
> > > > Frankly, to think of "quality" as something that can be "provided"
> > by "the network" misses the entire point of "end-to-end argument in
> system
> > design".
> > > Quality is not a property defined or created by The Network. If you
> want
> > to talk about Quality, you need to talk about users - all the users at
> all times,
> > > now and into the future, and that's something you can't do if you don=
't
> > bother to include current and future users talking about what they migh=
t
> expect
> > to
> > > experience that they don't experience.
> > > >
> > > >
> > > >
> > > > There was much fighting back in 1976 that basically involved
> > "network experts" saying that the network was the place to "solve" such
> issues as
> > quality,
> > > so applications could avoid having to solve such issues.
> > > >
> > > >
> > > >
> > > > What some of us managed to do was to argue that you can't "solve"
> > such issues. All you can do is provide a framework that enables
> different uses to
> > > *cooperate* in some way.
> > > >
> > > >
> > > >
> > > > Which is why the Internet drops packets rather than queueing them,
> > and why diffserv cannot work.
> > > >
> > > > (I know the latter is conftroversial, but at the moment, ALL of
> > diffserv attempts to talk about end-to-end applicaiton specific metrics=
,
> but
> > never, ever
> > > explains what the diffserv control points actually do w.r.t. what the
> IP
> > layer can actually control. So it is meaningless - another violation of
> the
> > > so-called end-to-end principle).
> > > >
> > > >
> > > >
> > > > Networks are about getting packets from here to there, multiplexing
> > the underlying resources. That's it. Quality is a whole different thing=
.
> Quality
> > can
> > > be improved by end-to-end approaches, if the underlying network
> provides
> > some kind of thing that actually creates a way for end-to-end
> applications to
> > > affect queueing and routing decisions, and more importantly getting
> > "telemetry" from the network regarding what is actually going on with
> the other
> > > end-to-end users sharing the infrastructure.
> > > >
> > > >
> > > >
> > > > This conference won't talk about it this way. So don't waste your
> > time.
> > > >
> > > >
> > > >
> > > >
> > > >
> > > >
> > > >
> > > > On Wednesday, June 30, 2021 8:12pm, "Dave Taht"
> > <dave.taht@gmail.com <mailto:dave.taht@gmail.com>> said:
> > > >
> > > > > The program committee members are *amazing*. Perhaps, finally,
> > we can
> > > > > move the bar for the internet's quality metrics past endless,
> > blind
> > > > > repetitions of speedtest.
> > > > >
> > > > > For complete details, please see:
> > > > > https://www.iab.org/activities/workshops/network-quality/
> > <https://www.iab.org/activities/workshops/network-quality/>
> > > > >
> > > > > Submissions Due: Monday 2nd August 2021, midnight AOE
> > (Anywhere On Earth)
> > > > > Invitations Issued by: Monday 16th August 2021
> > > > >
> > > > > Workshop Date: This will be a virtual workshop, spread over
> > three days:
> > > > >
> > > > > 1400-1800 UTC Tue 14th September 2021
> > > > > 1400-1800 UTC Wed 15th September 2021
> > > > > 1400-1800 UTC Thu 16th September 2021
> > > > >
> > > > > Workshop co-chairs: Wes Hardaker, Evgeny Khorov, Omer Shapira
> > > > >
> > > > > The Program Committee members:
> > > > >
> > > > > Jari Arkko, Olivier Bonaventure, Vint Cerf, Stuart Cheshire,
> > Sam
> > > > > Crowford, Nick Feamster, Jim Gettys, Toke Hoiland-Jorgensen,
> > Geoff
> > > > > Huston, Cullen Jennings, Katarzyna Kosek-Szott, Mirja
> > Kuehlewind,
> > > > > Jason Livingood, Matt Mathias, Randall Meyer, Kathleen
> > Nichols,
> > > > > Christoph Paasch, Tommy Pauly, Greg White, Keith Winstein.
> > > > >
> > > > > Send Submissions to: network-quality-workshop-pc@iab.org
> > <mailto:network-quality-workshop-pc@iab.org>.
> > > > >
> > > > > Position papers from academia, industry, the open source
> > community and
> > > > > others that focus on measurements, experiences, observations
> > and
> > > > > advice for the future are welcome. Papers that reflect
> > experience
> > > > > based on deployed services are especially welcome. The
> > organizers
> > > > > understand that specific actions taken by operators are
> > unlikely to be
> > > > > discussed in detail, so papers discussing general categories
> > of
> > > > > actions and issues without naming specific technologies,
> > products, or
> > > > > other players in the ecosystem are expected. Papers should not
> > focus
> > > > > on specific protocol solutions.
> > > > >
> > > > > The workshop will be by invitation only. Those wishing to
> > attend
> > > > > should submit a position paper to the address above; it may
> > take the
> > > > > form of an Internet-Draft.
> > > > >
> > > > > All inputs submitted and considered relevant will be published
> > on the
> > > > > workshop website. The organisers will decide whom to invite
> > based on
> > > > > the submissions received. Sessions will be organized according
> > to
> > > > > content, and not every accepted submission or invited attendee
> > will
> > > > > have an opportunity to present as the intent is to foster
> > discussion
> > > > > and not simply to have a sequence of presentations.
> > > > >
> > > > > Position papers from those not planning to attend the virtual
> > sessions
> > > > > themselves are also encouraged. A workshop report will be
> > published
> > > > > afterwards.
> > > > >
> > > > > Overview:
> > > > >
> > > > > "We believe that one of the major factors behind this lack of
> > progress
> > > > > is the popular perception that throughput is the often sole
> > measure of
> > > > > the quality of Internet connectivity. With such narrow focus,
> > people
> > > > > don=E2=80=99t consider questions such as:
> > > > >
> > > > > What is the latency under typical working conditions?
> > > > > How reliable is the connectivity across longer time periods?
> > > > > Does the network allow the use of a broad range of protocols?
> > > > > What services can be run by clients of the network?
> > > > > What kind of IPv4, NAT or IPv6 connectivity is offered, and
> > are there firewalls?
> > > > > What security mechanisms are available for local services,
> > such as DNS?
> > > > > To what degree are the privacy, confidentiality, integrity
> > and
> > > > > authenticity of user communications guarded?
> > > > >
> > > > > Improving these aspects of network quality will likely depend
> > on
> > > > > measurement and exposing metrics to all involved parties,
> > including to
> > > > > end users in a meaningful way. Such measurements and exposure
> > of the
> > > > > right metrics will allow service providers and network
> > operators to
> > > > > focus on the aspects that impacts the users=E2=80=99 experience
> > most and at
> > > > > the same time empowers users to choose the Internet service
> > that will
> > > > > give them the best experience."
> > > > >
> > > > >
> > > > > --
> > > > > Latest Podcast:
> > > > >
> >
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/
> > <
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/=
>
> > > > >
> > > > > Dave T=C3=A4ht CTO, TekLibre, LLC
> > > > > _______________________________________________
> > > > > Cerowrt-devel mailing list
> > > > > Cerowrt-devel@lists.bufferbloat.net
> > <mailto:Cerowrt-devel@lists.bufferbloat.net>
> > > > > https://lists.bufferbloat.net/listinfo/cerowrt-devel
> > <https://lists.bufferbloat.net/listinfo/cerowrt-devel>
> > > > >
> > >
> > >
> > >
> > > --
> > > Latest Podcast:
> > >
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/
> > <
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/=
>
> > >
> > > Dave T=C3=A4ht CTO, TekLibre, LLC
> > > _______________________________________________
> > > Make-wifi-fast mailing list
> > > Make-wifi-fast@lists.bufferbloat.net
> > <mailto:Make-wifi-fast@lists.bufferbloat.net>
> > > https://lists.bufferbloat.net/listinfo/make-wifi-fast
> > <https://lists.bufferbloat.net/listinfo/make-wifi-fast>
> > >
> > >
> > > This electronic communication and the information and any files
> transmitted
> > with it, or attached to it, are confidential and are intended solely fo=
r
> the use
> > of
> > > the individual or entity to whom it is addressed and may contain
> information
> > that is confidential, legally privileged, protected by privacy laws, or
> otherwise
> > > restricted from disclosure to anyone else. If you are not the intende=
d
> > recipient or the person responsible for delivering the e-mail to the
> intended
> > recipient,
> > > you are hereby notified that any use, copying, distributing,
> dissemination,
> > forwarding, printing, or copying of this e-mail is strictly prohibited.
> If you
> > > received this e-mail in error, please return the e-mail to the sender=
,
> delete
> > it from your computer, and destroy any printed copy of it.
> > >
> > > _______________________________________________
> > > Starlink mailing list
> > > Starlink@lists.bufferbloat.net
> > > https://lists.bufferbloat.net/listinfo/starlink
> > >
> >
> >
> > --
> > Ben Greear <greearb@candelatech.com>
> > Candela Technologies Inc http://www.candelatech.com
> >
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

--000000000000401a4105c6a47f7b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks very much for this response. I need to dig in a bit=
 more for sure.<br><br>iperf 2 will give every UDP packet&#39;s OWD (if the=
 clocks are sync&#39;d) and will also provide TCP write to read latencies, =
both supported in histogram forms. So that&#39;s raw samples so to speak. I=
&#39;m hooking up some units across geography including across the Pacific =
(sync&#39;d to GPS atomic time) to see how &quot;fractal&quot; these distri=
butions look, at least anecdotally.<br><br>On top of all the &quot;spherica=
l cow queueing theory&quot; (which made me laugh,) we&#39;ve got bluetooth =
sometimes sharing the radio. So the transport latency of TCP=C2=A0writes ca=
n be all over the map so-to-speak. And bluetooth traffic is also highly cor=
related.<br><br>Bob<br><br><br><br></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 8, 2021 at 12:38 PM David P.=
 Reed &lt;<a href=3D"mailto:dpreed@deepplum.com">dpreed@deepplum.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><font f=
ace=3D"arial" size=3D"2"><p style=3D"margin:0px;padding:0px;font-family:ari=
al;font-size:10pt">I will tell you flat out that the arrival time distribut=
ion assumption made by Little&#39;s Lemma that allows &quot;estimation of q=
ueue depth&quot; is totally unreasonable on ANY Internet in practice.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">The as=
sumption is a Poisson Arrival Process. In reality, traffic arrivals in real=
 internet applications are extremely far from Poisson, and, of course, usin=
g TCP windowing, become highly intercorrelated with crossing traffic that s=
hares the same queue.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">So, as=
 I&#39;ve tried to tell many, many net-heads (people who ignore application=
s layer behavior, like the people that think latency doesn&#39;t matter to =
end users, only throughput), end-to-end packet arrival times on a practical=
 network are incredibly far from Poisson - and they are more like fractal p=
robability distributions, very irregular at all scales of time.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">So, th=
e idea that iperf can estimate queue depth by Little&#39;s Lemma by just me=
asuring saturation of capacity of a path is bogus.The less Poisson, the wor=
se the estimate gets, by a huge factor.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">Where =
does the Poisson assumption come from?=C2=A0 Well, like many theorems, it i=
s the simplest tractable closed form solution - it creates a simplified vie=
w, by being a &quot;single-parameter&quot; distribution (the parameter is c=
alled lambda for a Poisson distribution).=C2=A0 And the analysis of a simpl=
e queue with poisson arrival distribution and a static, fixed service time =
is the first interesting Queueing Theory example in most textbooks. It is s=
uggestive of an interesting phenomenon, but it does NOT characterize any re=
al system.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">It&#39=
;s the queueing theory equivalent of &quot;First, we assume a spherical cow=
...&quot;. in doing an example in a freshman physics class.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">Unfort=
unately, most networking engineers understand neither queuing theory nor ap=
plication networking usage in interactive applications. Which makes them ar=
rogant. They assume all distributions are poisson!</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">On Tue=
sday, July 6, 2021 9:46am, &quot;Ben Greear&quot; &lt;<a href=3D"mailto:gre=
earb@candelatech.com" target=3D"_blank">greearb@candelatech.com</a>&gt; sai=
d:<br><br></p>
<div id=3D"gmail-m_-496242774304560963SafeStyles1625772289">
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">&gt; H=
ello,<br>&gt; <br>&gt; I am interested to hear wish lists for network testi=
ng features. We make test<br>&gt; equipment, supporting lots<br>&gt; of wif=
i stations and a distributed architecture, with built-in udp, tcp, ipv6,<br=
>&gt; http, ... protocols,<br>&gt; and open to creating/improving some of o=
ur automated tests.<br>&gt; <br>&gt; I know Dave has some test scripts alre=
ady, so I&#39;m not necessarily looking to<br>&gt; reimplement that,<br>&gt=
; but more fishing for other/new ideas.<br>&gt; <br>&gt; Thanks,<br>&gt; Be=
n<br>&gt; <br>&gt; On 7/2/21 4:28 PM, Bob McMahon wrote:<br>&gt; &gt; I thi=
nk we need the language=C2=A0of math here. It seems like the network<br>&gt=
; power metric, introduced by Kleinrock and=C2=A0Jaffe in the late 70s, is =
something<br>&gt; useful.<br>&gt; &gt; Effective end/end queue depths per L=
ittle&#39;s law also seems useful. Both are<br>&gt; available in iperf 2 fr=
om a test perspective. Repurposing test techniques to<br>&gt; actual<br>&gt=
; &gt; traffic could be useful. Hence=C2=A0the question around what exact t=
elemetry<br>&gt; is useful to apps making socket write() and read() calls.<=
br>&gt; &gt;<br>&gt; &gt; Bob<br>&gt; &gt;<br>&gt; &gt; On Fri, Jul 2, 2021=
 at 10:07 AM Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com" target=3D=
"_blank">dave.taht@gmail.com</a><br>&gt; &lt;mailto:<a href=3D"mailto:dave.=
taht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a>&gt;&gt; wrote:<br=
>&gt; &gt;<br>&gt; &gt; In terms of trying to find &quot;Quality&quot; I ha=
ve tried to encourage folk to<br>&gt; &gt; both read &quot;zen and the art =
of motorcycle maintenance&quot;[0], and Deming&#39;s<br>&gt; &gt; work on &=
quot;total quality management&quot;.<br>&gt; &gt;<br>&gt; &gt; My own slice=
 at this network, computer and lifestyle &quot;issue&quot; is aiming<br>&gt=
; &gt; for &quot;imperceptible latency&quot; in all things. [1]. There&#39;=
s a lot of<br>&gt; &gt; fallout from that in terms of not just addressing q=
ueuing delay, but<br>&gt; &gt; caching, prefetching, and learning more abou=
t what a user really needs<br>&gt; &gt; (as opposed to wants) to know via i=
ntelligent agents.<br>&gt; &gt;<br>&gt; &gt; [0] If you want to get depress=
ed, read Pirsig&#39;s successor to &quot;zen...&quot;,<br>&gt; &gt; lila, w=
hich is in part about what happens when an engineer hits an<br>&gt; &gt; in=
soluble problem.<br>&gt; &gt; [1] <a href=3D"https://www.internetsociety.or=
g/events/latency2013/" target=3D"_blank">https://www.internetsociety.org/ev=
ents/latency2013/</a><br>&gt; &lt;<a href=3D"https://www.internetsociety.or=
g/events/latency2013/" target=3D"_blank">https://www.internetsociety.org/ev=
ents/latency2013/</a>&gt;<br>&gt; &gt;<br>&gt; &gt;<br>&gt; &gt;<br>&gt; &g=
t; On Thu, Jul 1, 2021 at 6:16 PM David P. Reed &lt;<a href=3D"mailto:dpree=
d@deepplum.com" target=3D"_blank">dpreed@deepplum.com</a><br>&gt; &lt;mailt=
o:<a href=3D"mailto:dpreed@deepplum.com" target=3D"_blank">dpreed@deepplum.=
com</a>&gt;&gt; wrote:<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; Well, nice that =
the folks doing the conference=C2=A0 are willing to<br>&gt; consider that q=
uality of user experience has little to do with signalling rate at<br>&gt; =
the<br>&gt; &gt; physical layer or throughput of FTP transfers.<br>&gt; &gt=
; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; But honestly, =
the fact that they call the problem &quot;network quality&quot;<br>&gt; sug=
gests that they REALLY, REALLY don&#39;t understand the Internet isn&#39;t =
the hardware<br>&gt; or<br>&gt; &gt; the routers or even the routing algori=
thms *to its users*.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<=
br>&gt; &gt; &gt; By ignoring the diversity of applications now and in the =
future,<br>&gt; and the fact that we DON&#39;T KNOW what will be coming up,=
 this conference will<br>&gt; likely fall<br>&gt; &gt; into the usual trap =
that net-heads fall into - optimizing for some<br>&gt; imaginary reality th=
at doesn&#39;t exist, and in fact will probably never be what<br>&gt; users=
<br>&gt; &gt; actually will do given the chance.<br>&gt; &gt; &gt;<br>&gt; =
&gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; I saw this issue in 1976 in t=
he group developing the original<br>&gt; Internet protocols - a desire to p=
ut *into the network* special tricks to optimize<br>&gt; ASR33<br>&gt; &gt;=
 logins to remote computers from terminal concentrators (aka remote<br>&gt;=
 login), bulk file transfers between file systems on different time-sharing=
<br>&gt; systems, and<br>&gt; &gt; &quot;sessions&quot; (virtual circuits) =
that required logins. And then trying to<br>&gt; exploit underlying &quot;m=
ulticast&quot; by building it into the IP layer, because someone<br>&gt; &g=
t; thought that TV broadcast would be the dominant application.<br>&gt; &gt=
; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; Frankly, to th=
ink of &quot;quality&quot; as something that can be &quot;provided&quot;<br=
>&gt; by &quot;the network&quot; misses the entire point of &quot;end-to-en=
d argument in system<br>&gt; design&quot;.<br>&gt; &gt; Quality is not a pr=
operty defined or created by The Network. If you want<br>&gt; to talk about=
 Quality, you need to talk about users - all the users at all times,<br>&gt=
; &gt; now and into the future, and that&#39;s something you can&#39;t do i=
f you don&#39;t<br>&gt; bother to include current and future users talking =
about what they might expect<br>&gt; to<br>&gt; &gt; experience that they d=
on&#39;t experience.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<=
br>&gt; &gt; &gt; There was much fighting back in 1976 that basically invol=
ved<br>&gt; &quot;network experts&quot; saying that the network was the pla=
ce to &quot;solve&quot; such issues as<br>&gt; quality,<br>&gt; &gt; so app=
lications could avoid having to solve such issues.<br>&gt; &gt; &gt;<br>&gt=
; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; What some of us managed to =
do was to argue that you can&#39;t &quot;solve&quot;<br>&gt; such issues. A=
ll you can do is provide a framework that enables different uses to<br>&gt;=
 &gt; *cooperate* in some way.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; =
&gt; &gt;<br>&gt; &gt; &gt; Which is why the Internet drops packets rather =
than queueing them,<br>&gt; and why diffserv cannot work.<br>&gt; &gt; &gt;=
<br>&gt; &gt; &gt; (I know the latter is conftroversial, but at the moment,=
 ALL of<br>&gt; diffserv attempts to talk about end-to-end applicaiton spec=
ific metrics, but<br>&gt; never, ever<br>&gt; &gt; explains what the diffse=
rv control points actually do w.r.t. what the IP<br>&gt; layer can actually=
 control. So it is meaningless - another violation of the<br>&gt; &gt; so-c=
alled end-to-end principle).<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &g=
t; &gt;<br>&gt; &gt; &gt; Networks are about getting packets from here to t=
here, multiplexing<br>&gt; the underlying resources. That&#39;s it. Quality=
 is a whole different thing. Quality<br>&gt; can<br>&gt; &gt; be improved b=
y end-to-end approaches, if the underlying network provides<br>&gt; some ki=
nd of thing that actually creates a way for end-to-end applications to<br>&=
gt; &gt; affect queueing and routing decisions, and more importantly gettin=
g<br>&gt; &quot;telemetry&quot; from the network regarding what is actually=
 going on with the other<br>&gt; &gt; end-to-end users sharing the infrastr=
ucture.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; =
&gt; This conference won&#39;t talk about it this way. So don&#39;t waste y=
our<br>&gt; time.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>=
&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt=
; &gt; &gt; On Wednesday, June 30, 2021 8:12pm, &quot;Dave Taht&quot;<br>&g=
t; &lt;<a href=3D"mailto:dave.taht@gmail.com" target=3D"_blank">dave.taht@g=
mail.com</a> &lt;mailto:<a href=3D"mailto:dave.taht@gmail.com" target=3D"_b=
lank">dave.taht@gmail.com</a>&gt;&gt; said:<br>&gt; &gt; &gt;<br>&gt; &gt; =
&gt; &gt; The program committee members are *amazing*. Perhaps, finally,<br=
>&gt; we can<br>&gt; &gt; &gt; &gt; move the bar for the internet&#39;s qua=
lity metrics past endless,<br>&gt; blind<br>&gt; &gt; &gt; &gt; repetitions=
 of speedtest.<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; For complete d=
etails, please see:<br>&gt; &gt; &gt; &gt; <a href=3D"https://www.iab.org/a=
ctivities/workshops/network-quality/" target=3D"_blank">https://www.iab.org=
/activities/workshops/network-quality/</a><br>&gt; &lt;<a href=3D"https://w=
ww.iab.org/activities/workshops/network-quality/" target=3D"_blank">https:/=
/www.iab.org/activities/workshops/network-quality/</a>&gt;<br>&gt; &gt; &gt=
; &gt;<br>&gt; &gt; &gt; &gt; Submissions Due: Monday 2nd August 2021, midn=
ight AOE<br>&gt; (Anywhere On Earth)<br>&gt; &gt; &gt; &gt; Invitations Iss=
ued by: Monday 16th August 2021<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &g=
t; Workshop Date: This will be a virtual workshop, spread over<br>&gt; thre=
e days:<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; 1400-1800 UTC Tue 14t=
h September 2021<br>&gt; &gt; &gt; &gt; 1400-1800 UTC Wed 15th September 20=
21<br>&gt; &gt; &gt; &gt; 1400-1800 UTC Thu 16th September 2021<br>&gt; &gt=
; &gt; &gt;<br>&gt; &gt; &gt; &gt; Workshop co-chairs: Wes Hardaker, Evgeny=
 Khorov, Omer Shapira<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; The Pro=
gram Committee members:<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Jari =
Arkko, Olivier Bonaventure, Vint Cerf, Stuart Cheshire,<br>&gt; Sam<br>&gt;=
 &gt; &gt; &gt; Crowford, Nick Feamster, Jim Gettys, Toke Hoiland-Jorgensen=
,<br>&gt; Geoff<br>&gt; &gt; &gt; &gt; Huston, Cullen Jennings, Katarzyna K=
osek-Szott, Mirja<br>&gt; Kuehlewind,<br>&gt; &gt; &gt; &gt; Jason Livingoo=
d, Matt Mathias, Randall Meyer, Kathleen<br>&gt; Nichols,<br>&gt; &gt; &gt;=
 &gt; Christoph Paasch, Tommy Pauly, Greg White, Keith Winstein.<br>&gt; &g=
t; &gt; &gt;<br>&gt; &gt; &gt; &gt; Send Submissions to: <a href=3D"mailto:=
network-quality-workshop-pc@iab.org" target=3D"_blank">network-quality-work=
shop-pc@iab.org</a><br>&gt; &lt;mailto:<a href=3D"mailto:network-quality-wo=
rkshop-pc@iab.org" target=3D"_blank">network-quality-workshop-pc@iab.org</a=
>&gt;.<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Position papers from a=
cademia, industry, the open source<br>&gt; community and<br>&gt; &gt; &gt; =
&gt; others that focus on measurements, experiences, observations<br>&gt; a=
nd<br>&gt; &gt; &gt; &gt; advice for the future are welcome. Papers that re=
flect<br>&gt; experience<br>&gt; &gt; &gt; &gt; based on deployed services =
are especially welcome. The<br>&gt; organizers<br>&gt; &gt; &gt; &gt; under=
stand that specific actions taken by operators are<br>&gt; unlikely to be<b=
r>&gt; &gt; &gt; &gt; discussed in detail, so papers discussing general cat=
egories<br>&gt; of<br>&gt; &gt; &gt; &gt; actions and issues without naming=
 specific technologies,<br>&gt; products, or<br>&gt; &gt; &gt; &gt; other p=
layers in the ecosystem are expected. Papers should not<br>&gt; focus<br>&g=
t; &gt; &gt; &gt; on specific protocol solutions.<br>&gt; &gt; &gt; &gt;<br=
>&gt; &gt; &gt; &gt; The workshop will be by invitation only. Those wishing=
 to<br>&gt; attend<br>&gt; &gt; &gt; &gt; should submit a position paper to=
 the address above; it may<br>&gt; take the<br>&gt; &gt; &gt; &gt; form of =
an Internet-Draft.<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; All inputs=
 submitted and considered relevant will be published<br>&gt; on the<br>&gt;=
 &gt; &gt; &gt; workshop website. The organisers will decide whom to invite=
<br>&gt; based on<br>&gt; &gt; &gt; &gt; the submissions received. Sessions=
 will be organized according<br>&gt; to<br>&gt; &gt; &gt; &gt; content, and=
 not every accepted submission or invited attendee<br>&gt; will<br>&gt; &gt=
; &gt; &gt; have an opportunity to present as the intent is to foster<br>&g=
t; discussion<br>&gt; &gt; &gt; &gt; and not simply to have a sequence of p=
resentations.<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Position papers=
 from those not planning to attend the virtual<br>&gt; sessions<br>&gt; &gt=
; &gt; &gt; themselves are also encouraged. A workshop report will be<br>&g=
t; published<br>&gt; &gt; &gt; &gt; afterwards.<br>&gt; &gt; &gt; &gt;<br>&=
gt; &gt; &gt; &gt; Overview:<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; =
&quot;We believe that one of the major factors behind this lack of<br>&gt; =
progress<br>&gt; &gt; &gt; &gt; is the popular perception that throughput i=
s the often sole<br>&gt; measure of<br>&gt; &gt; &gt; &gt; the quality of I=
nternet connectivity. With such narrow focus,<br>&gt; people<br>&gt; &gt; &=
gt; &gt; don=E2=80=99t consider questions such as:<br>&gt; &gt; &gt; &gt;<b=
r>&gt; &gt; &gt; &gt; What is the latency under typical working conditions?=
<br>&gt; &gt; &gt; &gt; How reliable is the connectivity across longer time=
 periods?<br>&gt; &gt; &gt; &gt; Does the network allow the use of a broad =
range of protocols?<br>&gt; &gt; &gt; &gt; What services can be run by clie=
nts of the network?<br>&gt; &gt; &gt; &gt; What kind of IPv4, NAT or IPv6 c=
onnectivity is offered, and<br>&gt; are there firewalls?<br>&gt; &gt; &gt; =
&gt; What security mechanisms are available for local services,<br>&gt; suc=
h as DNS?<br>&gt; &gt; &gt; &gt; To what degree are the privacy, confidenti=
ality, integrity<br>&gt; and<br>&gt; &gt; &gt; &gt; authenticity of user co=
mmunications guarded?<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Improvi=
ng these aspects of network quality will likely depend<br>&gt; on<br>&gt; &=
gt; &gt; &gt; measurement and exposing metrics to all involved parties,<br>=
&gt; including to<br>&gt; &gt; &gt; &gt; end users in a meaningful way. Suc=
h measurements and exposure<br>&gt; of the<br>&gt; &gt; &gt; &gt; right met=
rics will allow service providers and network<br>&gt; operators to<br>&gt; =
&gt; &gt; &gt; focus on the aspects that impacts the users=E2=80=99 experie=
nce<br>&gt; most and at<br>&gt; &gt; &gt; &gt; the same time empowers users=
 to choose the Internet service<br>&gt; that will<br>&gt; &gt; &gt; &gt; gi=
ve them the best experience.&quot;<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt;=
 &gt;<br>&gt; &gt; &gt; &gt; --<br>&gt; &gt; &gt; &gt; Latest Podcast:<br>&=
gt; &gt; &gt; &gt;<br>&gt; <a href=3D"https://www.linkedin.com/feed/update/=
urn:li:activity:6791014284936785920/" target=3D"_blank">https://www.linkedi=
n.com/feed/update/urn:li:activity:6791014284936785920/</a><br>&gt; &lt;<a h=
ref=3D"https://www.linkedin.com/feed/update/urn:li:activity:679101428493678=
5920/" target=3D"_blank">https://www.linkedin.com/feed/update/urn:li:activi=
ty:6791014284936785920/</a>&gt;<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &g=
t; Dave T=C3=A4ht CTO, TekLibre, LLC<br>&gt; &gt; &gt; &gt; _______________=
________________________________<br>&gt; &gt; &gt; &gt; Cerowrt-devel maili=
ng list<br>&gt; &gt; &gt; &gt; <a href=3D"mailto:Cerowrt-devel@lists.buffer=
bloat.net" target=3D"_blank">Cerowrt-devel@lists.bufferbloat.net</a><br>&gt=
; &lt;mailto:<a href=3D"mailto:Cerowrt-devel@lists.bufferbloat.net" target=
=3D"_blank">Cerowrt-devel@lists.bufferbloat.net</a>&gt;<br>&gt; &gt; &gt; &=
gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cerowrt-devel" target=
=3D"_blank">https://lists.bufferbloat.net/listinfo/cerowrt-devel</a><br>&gt=
; &lt;<a href=3D"https://lists.bufferbloat.net/listinfo/cerowrt-devel" targ=
et=3D"_blank">https://lists.bufferbloat.net/listinfo/cerowrt-devel</a>&gt;<=
br>&gt; &gt; &gt; &gt;<br>&gt; &gt;<br>&gt; &gt;<br>&gt; &gt;<br>&gt; &gt; =
--<br>&gt; &gt; Latest Podcast:<br>&gt; &gt; <a href=3D"https://www.linkedi=
n.com/feed/update/urn:li:activity:6791014284936785920/" target=3D"_blank">h=
ttps://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/</a=
><br>&gt; &lt;<a href=3D"https://www.linkedin.com/feed/update/urn:li:activi=
ty:6791014284936785920/" target=3D"_blank">https://www.linkedin.com/feed/up=
date/urn:li:activity:6791014284936785920/</a>&gt;<br>&gt; &gt;<br>&gt; &gt;=
 Dave T=C3=A4ht CTO, TekLibre, LLC<br>&gt; &gt; ___________________________=
____________________<br>&gt; &gt; Make-wifi-fast mailing list<br>&gt; &gt; =
<a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">M=
ake-wifi-fast@lists.bufferbloat.net</a><br>&gt; &lt;mailto:<a href=3D"mailt=
o:Make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">Make-wifi-fast@li=
sts.bufferbloat.net</a>&gt;<br>&gt; &gt; <a href=3D"https://lists.bufferblo=
at.net/listinfo/make-wifi-fast" target=3D"_blank">https://lists.bufferbloat=
.net/listinfo/make-wifi-fast</a><br>&gt; &lt;<a href=3D"https://lists.buffe=
rbloat.net/listinfo/make-wifi-fast" target=3D"_blank">https://lists.bufferb=
loat.net/listinfo/make-wifi-fast</a>&gt;<br>&gt; &gt;<br>&gt; &gt;<br>&gt; =
&gt; This electronic communication and the information and any files transm=
itted<br>&gt; with it, or attached to it, are confidential and are intended=
 solely for the use<br>&gt; of<br>&gt; &gt; the individual or entity to who=
m it is addressed and may contain information<br>&gt; that is confidential,=
 legally privileged, protected by privacy laws, or otherwise<br>&gt; &gt; r=
estricted from disclosure to anyone else. If you are not the intended<br>&g=
t; recipient or the person responsible for delivering the e-mail to the int=
ended<br>&gt; recipient,<br>&gt; &gt; you are hereby notified that any use,=
 copying, distributing, dissemination,<br>&gt; forwarding, printing, or cop=
ying of this e-mail is strictly prohibited. If you<br>&gt; &gt; received th=
is e-mail in error, please return the e-mail to the sender, delete<br>&gt; =
it from your computer, and destroy any printed copy of it.<br>&gt; &gt;<br>=
&gt; &gt; _______________________________________________<br>&gt; &gt; Star=
link mailing list<br>&gt; &gt; <a href=3D"mailto:Starlink@lists.bufferbloat=
.net" target=3D"_blank">Starlink@lists.bufferbloat.net</a><br>&gt; &gt; <a =
href=3D"https://lists.bufferbloat.net/listinfo/starlink" target=3D"_blank">=
https://lists.bufferbloat.net/listinfo/starlink</a><br>&gt; &gt;<br>&gt; <b=
r>&gt; <br>&gt; --<br>&gt; Ben Greear &lt;<a href=3D"mailto:greearb@candela=
tech.com" target=3D"_blank">greearb@candelatech.com</a>&gt;<br>&gt; Candela=
 Technologies Inc <a href=3D"http://www.candelatech.com" target=3D"_blank">=
http://www.candelatech.com</a><br>&gt; </p>
</div></font></blockquote></div>

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
--000000000000401a4105c6a47f7b--

--0000000000004752e105c6a47f6a
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIEoCLFqz1wUYdezpKRsU6wCHlvjLjFojQtK9
BHQUHJjFMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDcwODIy
NTEzNVowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQCx9gakX6DPVcwEZShtmL5MQOmaLXWrNQz4BtVv1zLDOGRKr/yQmt6c
4foQlIsoYzWUAT1TBTWlsPcFPcXBWML7LQaLIcQKTfCkzDYfm2Kahf7aJbU4rXWLNTL4aRXhlEYt
HHa1fYEVUOFo4HIiTYoEF7+ZZo89MeXD+hZztb02ZONZ5TQz2Xc1HIIrt/YpAUw8JK1WAsplwGlO
6nF61aZqSpTa2ZGQoHyORGyEZICzMWySDZoC1BCe7mmqmnpLtUgiZAye/ioDIjf4NETQtftn97gY
JYICX1yJDu8bdIvEdoGGDzpDhZkTOleYjTQFHkUBJdGZPmWjxWIcNFABI7Tr
--0000000000004752e105c6a47f6a--

--===============4916025739165148340==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4916025739165148340==--

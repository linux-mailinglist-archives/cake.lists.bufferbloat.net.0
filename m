Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6873C220D
	for <lists+cake@lfdr.de>; Fri,  9 Jul 2021 12:05:27 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DCDD73CB63;
	Fri,  9 Jul 2021 06:05:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1625825124;
	bh=FPfPLBNXP+FYF5nGswocMYV9BRKPuxxaNekD/ZhD8GE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZCHcyOkaq4WNJws8g6WXuCK7Be6h0vO8KW68B+3HaJJEJgOMksuxM78LZHkIoN0x9
	 VXTDtssPn/m7ZeIq+HdbgRBRX+XAhtSz4iR7tFqS/5uoLWxFnQcUL0byOf2PO0fFnH
	 OevF/6KPKTvEMBLbNYQGpghtpSIqEYKH2WkSAu1YBElK/KV22yTLhuqq3Hyjbv/Nkx
	 OrbJ7zUK3aHD3oUM2M+Q4uRADJa+qqTTubDusr9GD9HC/xmvLfneZvIlpJc4ctBQbQ
	 jZxBN0+W8S/hYlj4RGtNbo7E1WLpxJTRaA6zc1koOUXbDVYl6vIRydvU97queMcZUP
	 leBbHMUpQQlvA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AF9533CB4D
 for <cake@lists.bufferbloat.net>; Fri,  9 Jul 2021 06:05:23 -0400 (EDT)
Received: by mail-wr1-x429.google.com with SMTP id g16so1491252wrw.5
 for <cake@lists.bufferbloat.net>; Fri, 09 Jul 2021 03:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ieee.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1lEyrO8+stXZYUSXvFHkbPEVqqhQ6kUVgLdoM7QTsEY=;
 b=coKlhwCeqUTi3de19mJ48bCnnyWmby+Pt1TEE1QZFFy3KTNkS+0/yRtxpEu65NrqYp
 pP/uYDCHKQyaLL0OutEDLQW6LNYVp+Lqi9T5mez3XpQjJJQWcUwP5wL5aEEemweRpbvo
 RhrCFCkx4+yoMSbrtDxnWzIGY5WGAmyXIHKE0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1lEyrO8+stXZYUSXvFHkbPEVqqhQ6kUVgLdoM7QTsEY=;
 b=f8tW1sbeH4gvosQmsYkVn0DAvirfkJUtQxDjv/UsMz2a8pJabjOmAE+iVVF2c6ywo1
 asP89Gr3yZ9hs+y/A5ctBgTffa3ncQWfWksT4yjI2Ydq9rg9yJc/ZnR4MlDZkXFhJaSL
 DMxROj3cUArybSadPEhXwdANvAJIQm5FYi8/1U9jhHEKUkvm8NHfY+b7hXq8VzARaVks
 doGP5l/kX966DM3dbtN65Pizg8OMyEdFFTQzR5LZ36F4aE4LK0H1mFxHgBcVvlocmilI
 2WqRGH4dmwSyBwWh2K75sewboxsmZYActMWHJrMsWz3PDZhKV9M7Z1YRGKdwOaKcks6Y
 c8JA==
X-Gm-Message-State: AOAM532uzWqKIX9UzWAkisEjDdUD8djDr/2jRzHGDFQBlFnzKgnPUrN8
 TC3UqNLaR2NID60847BMTvY8/GnSx89/QK0sh2mnpQ==
X-Google-Smtp-Source: ABdhPJwEYofd+qLZVPEGZQX8pxu1wLljHpEJW9SNc4dTWUSg5nZAPkJ4LMSTDBKYAQB9e2z/rDdS1t/+Svcbi6LhFG8=
X-Received: by 2002:a5d:400c:: with SMTP id n12mr953525wrp.257.1625825122475; 
 Fri, 09 Jul 2021 03:05:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
In-Reply-To: <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
From: Luca Muscariello <muscariello@ieee.org>
Date: Fri, 9 Jul 2021 12:05:11 +0200
Message-ID: <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
To: Leonard Kleinrock <lk@cs.ucla.edu>
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Bob McMahon <bob.mcmahon@broadcom.com>, starlink@lists.bufferbloat.net,
 codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: multipart/mixed; boundary="===============2274829014171602214=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2274829014171602214==
Content-Type: multipart/alternative; boundary="000000000000e4cd8505c6ade81b"

--000000000000e4cd8505c6ade81b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For those who might be interested in Little's law
there is a nice paper by John Little on the occasion
of the 50th anniversary  of the result.

https://www.informs.org/Blogs/Operations-Research-Forum/Little-s-Law-as-Vie=
wed-on-its-50th-Anniversary

https://www.informs.org/content/download/255808/2414681/file/little_paper.p=
df

Nice read.
Luca

P.S.
Who has not a copy of L. Kleinrock's books? I do have and am not ready to
lend them!

On Fri, Jul 9, 2021 at 11:01 AM Leonard Kleinrock <lk@cs.ucla.edu> wrote:

> David,
>
> I totally appreciate  your attention to when and when not analytical
> modeling works. Let me clarify a few things from your note.
>
> First, Little's law (also known as Little=E2=80=99s lemma or, as I use in=
 my book,
> Little=E2=80=99s result) does not assume Poisson arrivals -  it is good f=
or *any*
> arrival process and any service process and is an equality between time
> averages.  It states that the time average of the number in a system (for=
 a
> sample path *w)* is equal to the average arrival rate to the system
> multiplied by the time-averaged time in the system for that sample path.
> This is often written as   NTimeAvg =3D=CE=BB=C2=B7TTimeAvg .  Moreover, =
if the
> system is also ergodic, then the time average equals the ensemble average
> and we often write it as N =CC=84 =3D =CE=BB T =CC=84 .  In any case, thi=
s requires
> neither Poisson arrivals nor exponential service times.
>
> Queueing theorists often do study the case of Poisson arrivals.  True, it
> makes the analysis easier, yet there is a better reason it is often used,
> and that is because the sum of a large number of independent stationary
> renewal processes approaches a Poisson process.  So nature often gives us
> Poisson arrivals.
>
> Best,
> Len
>
>
>
> On Jul 8, 2021, at 12:38 PM, David P. Reed <dpreed@deepplum.com> wrote:
>
> I will tell you flat out that the arrival time distribution assumption
> made by Little's Lemma that allows "estimation of queue depth" is totally
> unreasonable on ANY Internet in practice.
>
>
> The assumption is a Poisson Arrival Process. In reality, traffic arrivals
> in real internet applications are extremely far from Poisson, and, of
> course, using TCP windowing, become highly intercorrelated with crossing
> traffic that shares the same queue.
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
> So, the idea that iperf can estimate queue depth by Little's Lemma by jus=
t
> measuring saturation of capacity of a path is bogus.The less Poisson, the
> worse the estimate gets, by a huge factor.
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
> It's the queueing theory equivalent of "First, we assume a spherical
> cow...". in doing an example in a freshman physics class.
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
> > <mailto:dave.taht@gmail.com <dave.taht@gmail.com>>> wrote:
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
> > <mailto:dpreed@deepplum.com <dpreed@deepplum.com>>> wrote:
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
> > <dave.taht@gmail.com <mailto:dave.taht@gmail.com <dave.taht@gmail.com>>=
>
> said:
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
> > <mailto:network-quality-workshop-pc@iab.org
> <network-quality-workshop-pc@iab.org>>.
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
> > <mailto:Cerowrt-devel@lists.bufferbloat.net
> <Cerowrt-devel@lists.bufferbloat.net>>
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
> > <mailto:Make-wifi-fast@lists.bufferbloat.net
> <Make-wifi-fast@lists.bufferbloat.net>>
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
> _______________________________________________
> Starlink mailing list
> Starlink@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/starlink
>
>
> _______________________________________________
> Make-wifi-fast mailing list
> Make-wifi-fast@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/make-wifi-fast

--000000000000e4cd8505c6ade81b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div cl=
ass=3D"gmail_default" style=3D"font-family:monospace">For those who might b=
e interested in Little&#39;s law</div><div class=3D"gmail_default" style=3D=
"font-family:monospace">there is a nice paper by John Little on the occasio=
n=C2=A0</div><div class=3D"gmail_default" style=3D"font-family:monospace">o=
f the 50th anniversary=C2=A0 of the result.</div><div class=3D"gmail_defaul=
t" style=3D"font-family:monospace"><br></div><div class=3D"gmail_default" s=
tyle=3D"font-family:monospace"><a href=3D"https://www.informs.org/Blogs/Ope=
rations-Research-Forum/Little-s-Law-as-Viewed-on-its-50th-Anniversary">http=
s://www.informs.org/Blogs/Operations-Research-Forum/Little-s-Law-as-Viewed-=
on-its-50th-Anniversary</a><br></div><div class=3D"gmail_default" style=3D"=
font-family:monospace"><br></div><div class=3D"gmail_default"><font face=3D=
"monospace"><a href=3D"https://www.informs.org/content/download/255808/2414=
681/file/little_paper.pdf">https://www.informs.org/content/download/255808/=
2414681/file/little_paper.pdf</a></font><br></div><div class=3D"gmail_defau=
lt"><font face=3D"monospace"><br></font></div><div class=3D"gmail_default">=
<font face=3D"monospace">Nice read.=C2=A0</font></div><div class=3D"gmail_d=
efault"><font face=3D"monospace">Luca=C2=A0</font></div><div class=3D"gmail=
_default"><font face=3D"monospace"><br></font></div><div class=3D"gmail_def=
ault"><font face=3D"monospace">P.S.=C2=A0</font></div><div class=3D"gmail_d=
efault"><font face=3D"monospace">Who has not a copy of L. Kleinrock&#39;s b=
ooks? I do have and am not ready to lend them!</font></div><div class=3D"gm=
ail_default"><br></div></div><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Fri, Jul 9, 2021 at 11:01 AM Leonard Kleinrock &lt;<a=
 href=3D"mailto:lk@cs.ucla.edu">lk@cs.ucla.edu</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div style=3D"overflow-wrap: =
break-word;">David,<div><br></div><div>I totally appreciate =C2=A0your atte=
ntion to when and when not analytical modeling works. Let me clarify a few =
things from your note.</div><div><br></div><div>First, Little&#39;s law (al=
so known as Little=E2=80=99s lemma or, as I use in my book, Little=E2=80=99=
s result) does not assume Poisson arrivals - =C2=A0it is good for <b>any</b=
> arrival process and any service process and is an equality between time a=
verages.=C2=A0 It states that the time average of the number in a system (f=
or a sample path <i>w)</i><font face=3D"Symbol">=C2=A0</font>is equal to th=
e average arrival rate to the system multiplied by the time-averaged time i=
n the system for that sample path.=C2=A0 This is often written as =C2=A0=C2=
=A0<span style=3D"font-size:11pt;font-family:CMMI10;vertical-align:-6pt">N<=
/span><span style=3D"font-size:8pt;font-family:CMMI8">TimeAvg </span><span =
style=3D"font-size:11pt;font-family:CMR10;vertical-align:-6pt">=3D</span><s=
pan style=3D"font-size:11pt;font-family:CMMI10;vertical-align:-6pt">=CE=BB<=
/span><span style=3D"font-size:11pt;font-family:CMSY10;vertical-align:-6pt"=
>=C2=B7</span><span style=3D"font-size:11pt;font-family:CMMI10;vertical-ali=
gn:-6pt">T</span><span style=3D"font-size:8pt;font-family:CMMI8">TimeAvg . =
</span>=C2=A0Moreover, if the system is also ergodic, then the time average=
 equals the ensemble average and we often write it as=C2=A0<span style=3D"f=
ont-size:17pt;font-family:Fe">N</span><span style=3D"font-size:17pt;font-fa=
mily:Fg;vertical-align:4pt"> =CC=84 </span><span style=3D"font-size:17pt;fo=
nt-family:Fg">=3D </span><span style=3D"font-size:17pt;font-family:Fe">=CE=
=BB T</span><span style=3D"font-size:17pt;font-family:Fg;vertical-align:4pt=
"> =CC=84 .</span><span style=3D"vertical-align:4pt"> =C2=A0In any case, th=
is requires neither Poisson arrivals nor exponential service times. =C2=A0<=
/span></div><div><span style=3D"vertical-align:4pt"><br></span></div><div>Q=
ueueing theorists often do study the case of Poisson arrivals.=C2=A0 True, =
it makes the analysis easier, yet there is a better reason it is often used=
, and that is because the sum of a large number of independent stationary r=
enewal processes approaches a Poisson process.=C2=A0 So nature often gives =
us Poisson arrivals. =C2=A0</div><div><br></div><div>Best,</div><div>Len</d=
iv><div><br></div><div><br></div><div><br></div><div><div><blockquote type=
=3D"cite"><div>On Jul 8, 2021, at 12:38 PM, David P. Reed &lt;<a href=3D"ma=
ilto:dpreed@deepplum.com" target=3D"_blank">dpreed@deepplum.com</a>&gt; wro=
te:</div><br><div><font face=3D"arial" size=3D"2"><div style=3D"margin:0px;=
padding:0px;font-family:arial;font-size:10pt">I will tell you flat out that=
 the arrival time distribution assumption made by Little&#39;s Lemma that a=
llows &quot;estimation of queue depth&quot; is totally unreasonable on ANY =
Internet in practice.</div><p style=3D"margin:0px;padding:0px;font-family:a=
rial;font-size:10pt">=C2=A0</p><div style=3D"margin:0px;padding:0px;font-fa=
mily:arial;font-size:10pt">The assumption is a Poisson Arrival Process. In =
reality, traffic arrivals in real internet applications are extremely far f=
rom Poisson, and, of course, using TCP windowing, become highly intercorrel=
ated with crossing traffic that shares the same queue.</div><p style=3D"mar=
gin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</p><div style=
=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">So, as I&#39;v=
e tried to tell many, many net-heads (people who ignore applications layer =
behavior, like the people that think latency doesn&#39;t matter to end user=
s, only throughput), end-to-end packet arrival times on a practical network=
 are incredibly far from Poisson - and they are more like fractal probabili=
ty distributions, very irregular at all scales of time.</div><p style=3D"ma=
rgin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</p><div style=
=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">So, the idea t=
hat iperf can estimate queue depth by Little&#39;s Lemma by just measuring =
saturation of capacity of a path is bogus.The less Poisson, the worse the e=
stimate gets, by a huge factor.</div><p style=3D"margin:0px;padding:0px;fon=
t-family:arial;font-size:10pt">=C2=A0</p><p style=3D"margin:0px;padding:0px=
;font-family:arial;font-size:10pt">=C2=A0</p><div style=3D"margin:0px;paddi=
ng:0px;font-family:arial;font-size:10pt">Where does the Poisson assumption =
come from?=C2=A0 Well, like many theorems, it is the simplest tractable clo=
sed form solution - it creates a simplified view, by being a &quot;single-p=
arameter&quot; distribution (the parameter is called lambda for a Poisson d=
istribution).=C2=A0 And the analysis of a simple queue with poisson arrival=
 distribution and a static, fixed service time is the first interesting Que=
ueing Theory example in most textbooks. It is suggestive of an interesting =
phenomenon, but it does NOT characterize any real system.</div><p style=3D"=
margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</p><div sty=
le=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">It&#39;s the=
 queueing theory equivalent of &quot;First, we assume a spherical cow...&qu=
ot;. in doing an example in a freshman physics class.</div><p style=3D"marg=
in:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</p><div style=
=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">Unfortunately,=
 most networking engineers understand neither queuing theory nor applicatio=
n networking usage in interactive applications. Which makes them arrogant. =
They assume all distributions are poisson!</div><p style=3D"margin:0px;padd=
ing:0px;font-family:arial;font-size:10pt">=C2=A0</p><p style=3D"margin:0px;=
padding:0px;font-family:arial;font-size:10pt">=C2=A0</p><div style=3D"margi=
n:0px;padding:0px;font-family:arial;font-size:10pt">On Tuesday, July 6, 202=
1 9:46am, &quot;Ben Greear&quot; &lt;<a href=3D"mailto:greearb@candelatech.=
com" target=3D"_blank">greearb@candelatech.com</a>&gt; said:<br><br></div>
<div id=3D"gmail-m_272466165573362254SafeStyles1625772289"><div style=3D"ma=
rgin:0px;padding:0px;font-family:arial;font-size:10pt">&gt; Hello,<br>&gt; =
<br>&gt; I am interested to hear wish lists for network testing features. W=
e make test<br>&gt; equipment, supporting lots<br>&gt; of wifi stations and=
 a distributed architecture, with built-in udp, tcp, ipv6,<br>&gt; http, ..=
. protocols,<br>&gt; and open to creating/improving some of our automated t=
ests.<br>&gt; <br>&gt; I know Dave has some test scripts already, so I&#39;=
m not necessarily looking to<br>&gt; reimplement that,<br>&gt; but more fis=
hing for other/new ideas.<br>&gt; <br>&gt; Thanks,<br>&gt; Ben<br>&gt; <br>=
&gt; On 7/2/21 4:28 PM, Bob McMahon wrote:<br>&gt; &gt; I think we need the=
 language=C2=A0of math here. It seems like the network<br>&gt; power metric=
, introduced by Kleinrock and=C2=A0Jaffe in the late 70s, is something<br>&=
gt; useful.<br>&gt; &gt; Effective end/end queue depths per Little&#39;s la=
w also seems useful. Both are<br>&gt; available in iperf 2 from a test pers=
pective. Repurposing test techniques to<br>&gt; actual<br>&gt; &gt; traffic=
 could be useful. Hence=C2=A0the question around what exact telemetry<br>&g=
t; is useful to apps making socket write() and read() calls.<br>&gt; &gt;<b=
r>&gt; &gt; Bob<br>&gt; &gt;<br>&gt; &gt; On Fri, Jul 2, 2021 at 10:07 AM D=
ave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com" target=3D"_blank">dave.=
taht@gmail.com</a><br>&gt; &lt;<a href=3D"mailto:dave.taht@gmail.com" targe=
t=3D"_blank">mailto:dave.taht@gmail.com</a>&gt;&gt; wrote:<br>&gt; &gt;<br>=
&gt; &gt; In terms of trying to find &quot;Quality&quot; I have tried to en=
courage folk to<br>&gt; &gt; both read &quot;zen and the art of motorcycle =
maintenance&quot;[0], and Deming&#39;s<br>&gt; &gt; work on &quot;total qua=
lity management&quot;.<br>&gt; &gt;<br>&gt; &gt; My own slice at this netwo=
rk, computer and lifestyle &quot;issue&quot; is aiming<br>&gt; &gt; for &qu=
ot;imperceptible latency&quot; in all things. [1]. There&#39;s a lot of<br>=
&gt; &gt; fallout from that in terms of not just addressing queuing delay, =
but<br>&gt; &gt; caching, prefetching, and learning more about what a user =
really needs<br>&gt; &gt; (as opposed to wants) to know via intelligent age=
nts.<br>&gt; &gt;<br>&gt; &gt; [0] If you want to get depressed, read Pirsi=
g&#39;s successor to &quot;zen...&quot;,<br>&gt; &gt; lila, which is in par=
t about what happens when an engineer hits an<br>&gt; &gt; insoluble proble=
m.<br>&gt; &gt; [1] <a href=3D"https://www.internetsociety.org/events/laten=
cy2013/" target=3D"_blank">https://www.internetsociety.org/events/latency20=
13/</a><br>&gt; &lt;<a href=3D"https://www.internetsociety.org/events/laten=
cy2013/" target=3D"_blank">https://www.internetsociety.org/events/latency20=
13/</a>&gt;<br>&gt; &gt;<br>&gt; &gt;<br>&gt; &gt;<br>&gt; &gt; On Thu, Jul=
 1, 2021 at 6:16 PM David P. Reed &lt;<a href=3D"mailto:dpreed@deepplum.com=
" target=3D"_blank">dpreed@deepplum.com</a><br>&gt; &lt;<a href=3D"mailto:d=
preed@deepplum.com" target=3D"_blank">mailto:dpreed@deepplum.com</a>&gt;&gt=
; wrote:<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; Well, nice that the folks doin=
g the conference=C2=A0 are willing to<br>&gt; consider that quality of user=
 experience has little to do with signalling rate at<br>&gt; the<br>&gt; &g=
t; physical layer or throughput of FTP transfers.<br>&gt; &gt; &gt;<br>&gt;=
 &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; But honestly, the fact that =
they call the problem &quot;network quality&quot;<br>&gt; suggests that the=
y REALLY, REALLY don&#39;t understand the Internet isn&#39;t the hardware<b=
r>&gt; or<br>&gt; &gt; the routers or even the routing algorithms *to its u=
sers*.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &=
gt; By ignoring the diversity of applications now and in the future,<br>&gt=
; and the fact that we DON&#39;T KNOW what will be coming up, this conferen=
ce will<br>&gt; likely fall<br>&gt; &gt; into the usual trap that net-heads=
 fall into - optimizing for some<br>&gt; imaginary reality that doesn&#39;t=
 exist, and in fact will probably never be what<br>&gt; users<br>&gt; &gt; =
actually will do given the chance.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&=
gt; &gt; &gt;<br>&gt; &gt; &gt; I saw this issue in 1976 in the group devel=
oping the original<br>&gt; Internet protocols - a desire to put *into the n=
etwork* special tricks to optimize<br>&gt; ASR33<br>&gt; &gt; logins to rem=
ote computers from terminal concentrators (aka remote<br>&gt; login), bulk =
file transfers between file systems on different time-sharing<br>&gt; syste=
ms, and<br>&gt; &gt; &quot;sessions&quot; (virtual circuits) that required =
logins. And then trying to<br>&gt; exploit underlying &quot;multicast&quot;=
 by building it into the IP layer, because someone<br>&gt; &gt; thought tha=
t TV broadcast would be the dominant application.<br>&gt; &gt; &gt;<br>&gt;=
 &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; Frankly, to think of &quot;q=
uality&quot; as something that can be &quot;provided&quot;<br>&gt; by &quot=
;the network&quot; misses the entire point of &quot;end-to-end argument in =
system<br>&gt; design&quot;.<br>&gt; &gt; Quality is not a property defined=
 or created by The Network. If you want<br>&gt; to talk about Quality, you =
need to talk about users - all the users at all times,<br>&gt; &gt; now and=
 into the future, and that&#39;s something you can&#39;t do if you don&#39;=
t<br>&gt; bother to include current and future users talking about what the=
y might expect<br>&gt; to<br>&gt; &gt; experience that they don&#39;t exper=
ience.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &=
gt; There was much fighting back in 1976 that basically involved<br>&gt; &q=
uot;network experts&quot; saying that the network was the place to &quot;so=
lve&quot; such issues as<br>&gt; quality,<br>&gt; &gt; so applications coul=
d avoid having to solve such issues.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br=
>&gt; &gt; &gt;<br>&gt; &gt; &gt; What some of us managed to do was to argu=
e that you can&#39;t &quot;solve&quot;<br>&gt; such issues. All you can do =
is provide a framework that enables different uses to<br>&gt; &gt; *coopera=
te* in some way.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&=
gt; &gt; &gt; Which is why the Internet drops packets rather than queueing =
them,<br>&gt; and why diffserv cannot work.<br>&gt; &gt; &gt;<br>&gt; &gt; =
&gt; (I know the latter is conftroversial, but at the moment, ALL of<br>&gt=
; diffserv attempts to talk about end-to-end applicaiton specific metrics, =
but<br>&gt; never, ever<br>&gt; &gt; explains what the diffserv control poi=
nts actually do w.r.t. what the IP<br>&gt; layer can actually control. So i=
t is meaningless - another violation of the<br>&gt; &gt; so-called end-to-e=
nd principle).<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt=
; &gt; &gt; Networks are about getting packets from here to there, multiple=
xing<br>&gt; the underlying resources. That&#39;s it. Quality is a whole di=
fferent thing. Quality<br>&gt; can<br>&gt; &gt; be improved by end-to-end a=
pproaches, if the underlying network provides<br>&gt; some kind of thing th=
at actually creates a way for end-to-end applications to<br>&gt; &gt; affec=
t queueing and routing decisions, and more importantly getting<br>&gt; &quo=
t;telemetry&quot; from the network regarding what is actually going on with=
 the other<br>&gt; &gt; end-to-end users sharing the infrastructure.<br>&gt=
; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; This conf=
erence won&#39;t talk about it this way. So don&#39;t waste your<br>&gt; ti=
me.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;=
<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; On=
 Wednesday, June 30, 2021 8:12pm, &quot;Dave Taht&quot;<br>&gt; &lt;<a href=
=3D"mailto:dave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a> &=
lt;<a href=3D"mailto:dave.taht@gmail.com" target=3D"_blank">mailto:dave.tah=
t@gmail.com</a>&gt;&gt; said:<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; The =
program committee members are *amazing*. Perhaps, finally,<br>&gt; we can<b=
r>&gt; &gt; &gt; &gt; move the bar for the internet&#39;s quality metrics p=
ast endless,<br>&gt; blind<br>&gt; &gt; &gt; &gt; repetitions of speedtest.=
<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; For complete details, please=
 see:<br>&gt; &gt; &gt; &gt; <a href=3D"https://www.iab.org/activities/work=
shops/network-quality/" target=3D"_blank">https://www.iab.org/activities/wo=
rkshops/network-quality/</a><br>&gt; &lt;<a href=3D"https://www.iab.org/act=
ivities/workshops/network-quality/" target=3D"_blank">https://www.iab.org/a=
ctivities/workshops/network-quality/</a>&gt;<br>&gt; &gt; &gt; &gt;<br>&gt;=
 &gt; &gt; &gt; Submissions Due: Monday 2nd August 2021, midnight AOE<br>&g=
t; (Anywhere On Earth)<br>&gt; &gt; &gt; &gt; Invitations Issued by: Monday=
 16th August 2021<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Workshop Da=
te: This will be a virtual workshop, spread over<br>&gt; three days:<br>&gt=
; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; 1400-1800 UTC Tue 14th September 20=
21<br>&gt; &gt; &gt; &gt; 1400-1800 UTC Wed 15th September 2021<br>&gt; &gt=
; &gt; &gt; 1400-1800 UTC Thu 16th September 2021<br>&gt; &gt; &gt; &gt;<br=
>&gt; &gt; &gt; &gt; Workshop co-chairs: Wes Hardaker, Evgeny Khorov, Omer =
Shapira<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; The Program Committee=
 members:<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Jari Arkko, Olivier=
 Bonaventure, Vint Cerf, Stuart Cheshire,<br>&gt; Sam<br>&gt; &gt; &gt; &gt=
; Crowford, Nick Feamster, Jim Gettys, Toke Hoiland-Jorgensen,<br>&gt; Geof=
f<br>&gt; &gt; &gt; &gt; Huston, Cullen Jennings, Katarzyna Kosek-Szott, Mi=
rja<br>&gt; Kuehlewind,<br>&gt; &gt; &gt; &gt; Jason Livingood, Matt Mathia=
s, Randall Meyer, Kathleen<br>&gt; Nichols,<br>&gt; &gt; &gt; &gt; Christop=
h Paasch, Tommy Pauly, Greg White, Keith Winstein.<br>&gt; &gt; &gt; &gt;<b=
r>&gt; &gt; &gt; &gt; Send Submissions to: <a href=3D"mailto:network-qualit=
y-workshop-pc@iab.org" target=3D"_blank">network-quality-workshop-pc@iab.or=
g</a><br>&gt; &lt;<a href=3D"mailto:network-quality-workshop-pc@iab.org" ta=
rget=3D"_blank">mailto:network-quality-workshop-pc@iab.org</a>&gt;.<br>&gt;=
 &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Position papers from academia, indus=
try, the open source<br>&gt; community and<br>&gt; &gt; &gt; &gt; others th=
at focus on measurements, experiences, observations<br>&gt; and<br>&gt; &gt=
; &gt; &gt; advice for the future are welcome. Papers that reflect<br>&gt; =
experience<br>&gt; &gt; &gt; &gt; based on deployed services are especially=
 welcome. The<br>&gt; organizers<br>&gt; &gt; &gt; &gt; understand that spe=
cific actions taken by operators are<br>&gt; unlikely to be<br>&gt; &gt; &g=
t; &gt; discussed in detail, so papers discussing general categories<br>&gt=
; of<br>&gt; &gt; &gt; &gt; actions and issues without naming specific tech=
nologies,<br>&gt; products, or<br>&gt; &gt; &gt; &gt; other players in the =
ecosystem are expected. Papers should not<br>&gt; focus<br>&gt; &gt; &gt; &=
gt; on specific protocol solutions.<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt=
; &gt; The workshop will be by invitation only. Those wishing to<br>&gt; at=
tend<br>&gt; &gt; &gt; &gt; should submit a position paper to the address a=
bove; it may<br>&gt; take the<br>&gt; &gt; &gt; &gt; form of an Internet-Dr=
aft.<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; All inputs submitted and=
 considered relevant will be published<br>&gt; on the<br>&gt; &gt; &gt; &gt=
; workshop website. The organisers will decide whom to invite<br>&gt; based=
 on<br>&gt; &gt; &gt; &gt; the submissions received. Sessions will be organ=
ized according<br>&gt; to<br>&gt; &gt; &gt; &gt; content, and not every acc=
epted submission or invited attendee<br>&gt; will<br>&gt; &gt; &gt; &gt; ha=
ve an opportunity to present as the intent is to foster<br>&gt; discussion<=
br>&gt; &gt; &gt; &gt; and not simply to have a sequence of presentations.<=
br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Position papers from those no=
t planning to attend the virtual<br>&gt; sessions<br>&gt; &gt; &gt; &gt; th=
emselves are also encouraged. A workshop report will be<br>&gt; published<b=
r>&gt; &gt; &gt; &gt; afterwards.<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; =
&gt; Overview:<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; &quot;We belie=
ve that one of the major factors behind this lack of<br>&gt; progress<br>&g=
t; &gt; &gt; &gt; is the popular perception that throughput is the often so=
le<br>&gt; measure of<br>&gt; &gt; &gt; &gt; the quality of Internet connec=
tivity. With such narrow focus,<br>&gt; people<br>&gt; &gt; &gt; &gt; don=
=E2=80=99t consider questions such as:<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; =
&gt; &gt; What is the latency under typical working conditions?<br>&gt; &gt=
; &gt; &gt; How reliable is the connectivity across longer time periods?<br=
>&gt; &gt; &gt; &gt; Does the network allow the use of a broad range of pro=
tocols?<br>&gt; &gt; &gt; &gt; What services can be run by clients of the n=
etwork?<br>&gt; &gt; &gt; &gt; What kind of IPv4, NAT or IPv6 connectivity =
is offered, and<br>&gt; are there firewalls?<br>&gt; &gt; &gt; &gt; What se=
curity mechanisms are available for local services,<br>&gt; such as DNS?<br=
>&gt; &gt; &gt; &gt; To what degree are the privacy, confidentiality, integ=
rity<br>&gt; and<br>&gt; &gt; &gt; &gt; authenticity of user communications=
 guarded?<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Improving these asp=
ects of network quality will likely depend<br>&gt; on<br>&gt; &gt; &gt; &gt=
; measurement and exposing metrics to all involved parties,<br>&gt; includi=
ng to<br>&gt; &gt; &gt; &gt; end users in a meaningful way. Such measuremen=
ts and exposure<br>&gt; of the<br>&gt; &gt; &gt; &gt; right metrics will al=
low service providers and network<br>&gt; operators to<br>&gt; &gt; &gt; &g=
t; focus on the aspects that impacts the users=E2=80=99 experience<br>&gt; =
most and at<br>&gt; &gt; &gt; &gt; the same time empowers users to choose t=
he Internet service<br>&gt; that will<br>&gt; &gt; &gt; &gt; give them the =
best experience.&quot;<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt;<br>&gt=
; &gt; &gt; &gt; --<br>&gt; &gt; &gt; &gt; Latest Podcast:<br>&gt; &gt; &gt=
; &gt;<br>&gt; <a href=3D"https://www.linkedin.com/feed/update/urn:li:activ=
ity:6791014284936785920/" target=3D"_blank">https://www.linkedin.com/feed/u=
pdate/urn:li:activity:6791014284936785920/</a><br>&gt; &lt;<a href=3D"https=
://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/" targe=
t=3D"_blank">https://www.linkedin.com/feed/update/urn:li:activity:679101428=
4936785920/</a>&gt;<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Dave T=C3=
=A4ht CTO, TekLibre, LLC<br>&gt; &gt; &gt; &gt; ___________________________=
____________________<br>&gt; &gt; &gt; &gt; Cerowrt-devel mailing list<br>&=
gt; &gt; &gt; &gt; <a href=3D"mailto:Cerowrt-devel@lists.bufferbloat.net" t=
arget=3D"_blank">Cerowrt-devel@lists.bufferbloat.net</a><br>&gt; &lt;<a hre=
f=3D"mailto:Cerowrt-devel@lists.bufferbloat.net" target=3D"_blank">mailto:C=
erowrt-devel@lists.bufferbloat.net</a>&gt;<br>&gt; &gt; &gt; &gt; <a href=
=3D"https://lists.bufferbloat.net/listinfo/cerowrt-devel" target=3D"_blank"=
>https://lists.bufferbloat.net/listinfo/cerowrt-devel</a><br>&gt; &lt;<a hr=
ef=3D"https://lists.bufferbloat.net/listinfo/cerowrt-devel" target=3D"_blan=
k">https://lists.bufferbloat.net/listinfo/cerowrt-devel</a>&gt;<br>&gt; &gt=
; &gt; &gt;<br>&gt; &gt;<br>&gt; &gt;<br>&gt; &gt;<br>&gt; &gt; --<br>&gt; =
&gt; Latest Podcast:<br>&gt; &gt; <a href=3D"https://www.linkedin.com/feed/=
update/urn:li:activity:6791014284936785920/" target=3D"_blank">https://www.=
linkedin.com/feed/update/urn:li:activity:6791014284936785920/</a><br>&gt; &=
lt;<a href=3D"https://www.linkedin.com/feed/update/urn:li:activity:67910142=
84936785920/" target=3D"_blank">https://www.linkedin.com/feed/update/urn:li=
:activity:6791014284936785920/</a>&gt;<br>&gt; &gt;<br>&gt; &gt; Dave T=C3=
=A4ht CTO, TekLibre, LLC<br>&gt; &gt; _____________________________________=
__________<br>&gt; &gt; Make-wifi-fast mailing list<br>&gt; &gt; <a href=3D=
"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">Make-wifi-f=
ast@lists.bufferbloat.net</a><br>&gt; &lt;<a href=3D"mailto:Make-wifi-fast@=
lists.bufferbloat.net" target=3D"_blank">mailto:Make-wifi-fast@lists.buffer=
bloat.net</a>&gt;<br>&gt; &gt; <a href=3D"https://lists.bufferbloat.net/lis=
tinfo/make-wifi-fast" target=3D"_blank">https://lists.bufferbloat.net/listi=
nfo/make-wifi-fast</a><br>&gt; &lt;<a href=3D"https://lists.bufferbloat.net=
/listinfo/make-wifi-fast" target=3D"_blank">https://lists.bufferbloat.net/l=
istinfo/make-wifi-fast</a>&gt;<br>&gt; &gt;<br>&gt; &gt;<br>&gt; &gt; This =
electronic communication and the information and any files transmitted<br>&=
gt; with it, or attached to it, are confidential and are intended solely fo=
r the use<br>&gt; of<br>&gt; &gt; the individual or entity to whom it is ad=
dressed and may contain information<br>&gt; that is confidential, legally p=
rivileged, protected by privacy laws, or otherwise<br>&gt; &gt; restricted =
from disclosure to anyone else. If you are not the intended<br>&gt; recipie=
nt or the person responsible for delivering the e-mail to the intended<br>&=
gt; recipient,<br>&gt; &gt; you are hereby notified that any use, copying, =
distributing, dissemination,<br>&gt; forwarding, printing, or copying of th=
is e-mail is strictly prohibited. If you<br>&gt; &gt; received this e-mail =
in error, please return the e-mail to the sender, delete<br>&gt; it from yo=
ur computer, and destroy any printed copy of it.<br>&gt; &gt;<br>&gt; &gt; =
_______________________________________________<br>&gt; &gt; Starlink maili=
ng list<br>&gt; &gt; <a href=3D"mailto:Starlink@lists.bufferbloat.net" targ=
et=3D"_blank">Starlink@lists.bufferbloat.net</a><br>&gt; &gt; <a href=3D"ht=
tps://lists.bufferbloat.net/listinfo/starlink" target=3D"_blank">https://li=
sts.bufferbloat.net/listinfo/starlink</a><br>&gt; &gt;<br>&gt; <br>&gt; <br=
>&gt; --<br>&gt; Ben Greear &lt;<a href=3D"mailto:greearb@candelatech.com" =
target=3D"_blank">greearb@candelatech.com</a>&gt;<br>&gt; Candela Technolog=
ies Inc <a href=3D"http://www.candelatech.com" target=3D"_blank">http://www=
.candelatech.com</a><br>&gt; </div>
</div></font>_______________________________________________<br>Starlink ma=
iling list<br><a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_=
blank">Starlink@lists.bufferbloat.net</a><br><a href=3D"https://lists.buffe=
rbloat.net/listinfo/starlink" target=3D"_blank">https://lists.bufferbloat.n=
et/listinfo/starlink</a><br></div></blockquote></div><br></div></div>______=
_________________________________________<br>
Make-wifi-fast mailing list<br>
<a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">M=
ake-wifi-fast@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" rel=3D"no=
referrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/make-wif=
i-fast</a></blockquote></div></div></div></div>

--000000000000e4cd8505c6ade81b--

--===============2274829014171602214==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2274829014171602214==--

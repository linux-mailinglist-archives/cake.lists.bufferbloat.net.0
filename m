Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F743C2B92
	for <lists+cake@lfdr.de>; Sat, 10 Jul 2021 01:11:30 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A71673CBCE;
	Fri,  9 Jul 2021 19:11:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1625872289;
	bh=gowj3eOsEKB8x5vOcdISHv6Gwi10gSOcvNRkeFpiNT0=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Et/KbhEo/MMop5OxK0TZqefuRHIzU5uHDfRHsxtpNHKOZGZQtuMIaLjcmPeMO7Me6
	 QMXjMkrNY6Z531Hyq3+pRGSbNCbuDbrH2LmxmDb5xsmxYpPW8DwJDq5pRo24qNWYeq
	 mY4qk2jbhkcXav0Ux3d48AO1UDgCh1K2KyrSZuao2ws8abw2ewA7fFuyOS1SUazdNu
	 abgYX3giq/o6woQon8jKh0+SOEa4ZSbSB26ww97wroHCyOcDeXF7/blWisrldhLJPS
	 Ju8zl8eTTdGqI3VdH+r0Xz9vYXLfkAO5SdS8xXuWsfpvIJqtLDKAbU8DZPhWPg/XhD
	 xsWQ61hfYdMDA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from zimbra.cs.ucla.edu (zimbra.cs.ucla.edu [131.179.128.68])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9F2B13B2A4;
 Fri,  9 Jul 2021 19:01:59 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.cs.ucla.edu (Postfix) with ESMTP id 8BA311600ED;
 Fri,  9 Jul 2021 16:01:58 -0700 (PDT)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
 by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id cb3uF6xYFswL; Fri,  9 Jul 2021 16:01:53 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.cs.ucla.edu (Postfix) with ESMTP id 4FF9F16006F;
 Fri,  9 Jul 2021 16:01:53 -0700 (PDT)
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
 by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id xf_8c04oU3P2; Fri,  9 Jul 2021 16:01:53 -0700 (PDT)
Received: from smtpclient.apple (unknown [172.27.177.54])
 by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id B19121600ED;
 Fri,  9 Jul 2021 16:01:52 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
From: Leonard Kleinrock <lk@cs.ucla.edu>
X-Priority: 3 (Normal)
In-Reply-To: <1625859083.09751240@apps.rackspace.com>
Date: Fri, 9 Jul 2021 16:01:52 -0700
Message-Id: <8C38E940-8B97-4767-A39B-25F043AE0856@cs.ucla.edu>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <1625859083.09751240@apps.rackspace.com>
To: "David P. Reed" <dpreed@deepplum.com>
X-Mailer: Apple Mail (2.3654.100.0.2.22)
X-Mailman-Approved-At: Fri, 09 Jul 2021 19:11:28 -0400
Subject: Re: [Cake] Little's Law mea culpa,
	but not invalidating my main point
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
 Leonard Kleinrock <lk@cs.ucla.edu>, Bob McMahon <bob.mcmahon@broadcom.com>,
 starlink@lists.bufferbloat.net, codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: multipart/mixed; boundary="===============1295384816189688128=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============1295384816189688128==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_422EA467-017F-4539-8634-56F78D0A0508"


--Apple-Mail=_422EA467-017F-4539-8634-56F78D0A0508
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

David,

No question that non-stationarity and instability are what we often see =
in networks.  And, non-stationarity and instability are both topics that =
lead to very complex analytical problems in queueing theory.  You can =
find some results on the transient analysis in the queueing theory =
literature (including the second volume of my Queueing Systems book), =
but they are limited and hard. Nevertheless, the literature does contain =
some works on transient analysis of queueing systems as applied to =
network congestion control - again limited. On the other hand, as you =
said, control theory addresses stability head on and does offer some =
tools as well, but again, it is hairy.=20

Averages are only averages, but they can provide valuable information. =
For sure, latency can and does confound behavior.  But, as you point =
out, it is the proliferation of control protocols that are, in some =
cases, deployed willy-nilly in networks without proper evaluation of =
their behavior that can lead to the nasty cycle of large transient =
latency, frantic repeating of web requests, protocols sending multiple =
copies, lack of awareness of true capacity or queue size or throughput, =
etc, all of which you articulate so well, create the chaos and =
frustration in the network.  Analyzing that is really difficult, and if =
we don=E2=80=99t measure and sense, we have no hope of understanding, =
controlling, or ameliorating such situations. =20

Len

> On Jul 9, 2021, at 12:31 PM, David P. Reed <dpreed@deepplum.com> =
wrote:
>=20
> Len - I admit I made a mistake in challenging Little's Law as being =
based on Poisson processes. It is more general. But it tells you an =
"average" in its base form, and latency averages are not useful for end =
user applications.
> =20
> However, Little's Law does assume something that is not actually valid =
about the kind of distributions seen in the network, and in fact, it is =
NOT true that networks converge on Poisson arrival times.
> =20
> The key issue is well-described in the sandard analysis of the M/M/1 =
queue (e.g. https://en.wikipedia.org/wiki/M/M/1_queue =
<https://en.wikipedia.org/wiki/M/M/1_queue>) , which is done only for =
Poisson processes, and is also limited to "stable" systems. But networks =
are never stable when fully loaded. They get unstable and those =
instabilities persist for a long time in the network. Instability is at =
core the underlying *requirement* of the Internet's usage.
> =20
> So specifically: real networks, even large ones, and certainly the =
Internet today, are not asymptotic limits of sums of stationary =
stochastic arrival processes. Each esternal terminal of any real network =
has a real user there, running a real application, and the network is a =
complex graph. This makes it completely unlike a single queue. Even the =
links within a network carry a relatively small number of application =
flows. There's no ability to apply the Law of Large Numbers to the =
distributions, because any particular path contains only a small number =
of serialized flows with hightly variable rates.
> =20
> Here's an example of what really happens in a real network (I've =
observed this in 5 different cities on ATT's cellular network, back when =
it was running Alcatel Lucent HSPA+ gear in those cities).
> But you can see this on any network where transient overload occurs, =
creating instability.
> =20
> =20
> At 7 AM, the data transmission of the network is roughty stable. =
That's because no links are overloaded within the network. Little's Law =
can tell you by observing the delay and throughput on any path that the =
average delay in the network is X.
> =20
> Continue sampling delay in the network as the day wears on. At about =
10 AM, ping delay starts to soar into the multiple second range. No =
packers are lost. The peak ping time is about 4000 milliseconds - 4 =
seconds in most of the networks. This is in downtown, no radio errors =
are reported, no link errors.
> So it is all queueing delay.=20
> =20
> Now what Little's law doesn't tell you much about average delay, =
because clearly *some* subpiece of the network is fully saturated. But =
what is interesting here is what is happening and where. You can't tell =
what is saturated, and in fact the entire network is quite unstable, =
because the peak is constantly varying and you don't know where the =
throughput is. All the packets are now arriving 4 seconds or so later.
> =20
> Why is the situaton not worse than 4 seconds? Well, there are multiple =
things going on:
> =20
> 1) TCP may be doing a lot of retransmissions (non-Poisson at all, not =
random either. The arrival process is entirely deterministic in each =
source, based on the retransmission timeout) or it may not be.
> =20
> 2) Users are pissed off, because they clicked on a web page, and got =
nothing back. They retry on their screen, or they try another site. =
Meanwhile, the underlying TCP connection remains there, pumping the =
network full of more packets on that old path, which is still backed up =
with packets that haven't been delivered that are sitting in queues. The =
real arrival process is not Poisson at all, its a deterministic, =
repeated retrsnsmission plus a new attempt to connect to a new site.
> =20
> 3) When the users get a web page back eventually, it is filled with =
names of other pieces needed to display that web page, which causes some =
number (often as many as 100) new pages to be fetched, ALL at the same =
time. Certainly not a stochastic process that will just obey the law of =
large numbers.
> =20
> All of these things are the result of initial instability, causing =
queues to build up.
> =20
> So what is the state of the system? is it stable? is it stochastic? Is =
it the sum of enough stochastic stable flows to average out to Poisson?
> =20
> The answer is clearly NO. Control theory (not queuing theory) suggests =
that this system is completely uncontrolled and unstable.
> =20
> So if the system is in this state, what does Little's Lemma tell us? =
What is the meaning of that hightly variable 4 second delay on ping =
packets, in terms of average utilizaton of the network?
> =20
> We don't even know what all the users really might need, if the system =
hadn't become unstable, because some users have given up, and others are =
trying even harder, and new users are arriving.
> =20
> What we do know, because ATT (at my suggestion) reconfigured their =
system after blaming Apple Computer company for "bugs" in the original =
iPhone in public, is that simply *dropping* packets sitting in queues =
more than a couple milliseconds MADE THE USERS HAPPY. Apparently the =
required capacity was there all along!=20
> =20
> So I conclude that the 4 second delay was the largest delay users =
could barely tolerate before deciding the network was DOWN and going =
away. And that the backup was the accumulation of useless packets =
sitting in queues because none of the end systems were receiving =
congestion signals (which for the Internet stack begins with packet =
dropping).
> =20
> I should say that most operators, and especially ATT in this case, do =
not measure end-to-end latency. Instead they use Little's Lemma to query =
routers for their current throughput in bits per second, and calculate =
latency as if Little's Lemma applied. This results in reports to =
management that literally say:
> =20
>   The network is not dropping packets, utilization is near 100% on =
many of our switches and routers.
> =20
> And management responds, Hooray! Because utilization of 100% of their =
hardware is their investors' metric of maximizing profits. The hardware =
they are operating is fully utilized. No waste! And users are happy =
because no packets have been dropped!
> =20
> Hmm... what's wrong with this picture? I can see why Donovan, CTO, =
would accuse Apple of lousy software that was ruining iPhone user =
experience!  His network was operating without ANY problems.
> So it must be Apple!
> =20
> Well, no. The entire problem, as we saw when ATT just changed to =
shorten egress queues and drop packets when the egress queues =
overflowed, was that ATT's network was amplifying instability, not at =
the link level, but at the network level.
> =20
> And queueing theory can help with that, but *intro queueing theory* =
cannot.
> =20
> And a big part of that problem is the pervasive belief that, at the =
network boundary, *Poisson arrival* is a reasonable model for use in all =
cases.
> =20
> =20
> =20
> =20
> =20
> =20
> =20
> =20
> =20
> =20
> On Friday, July 9, 2021 6:05am, "Luca Muscariello" =
<muscariello@ieee.org> said:
>=20
> For those who might be interested in Little's law
> there is a nice paper by John Little on the occasion=20
> of the 50th anniversary  of the result.
> =
https://www.informs.org/Blogs/Operations-Research-Forum/Little-s-Law-as-Vi=
ewed-on-its-50th-Anniversary =
<https://www.informs.org/Blogs/Operations-Research-Forum/Little-s-Law-as-V=
iewed-on-its-50th-Anniversary>
> =
https://www.informs.org/content/download/255808/2414681/file/little_paper.=
pdf =
<https://www.informs.org/content/download/255808/2414681/file/little_paper=
.pdf>
> =20
> Nice read.=20
> Luca=20
> =20
> P.S.=20
> Who has not a copy of L. Kleinrock's books? I do have and am not ready =
to lend them!
> On Fri, Jul 9, 2021 at 11:01 AM Leonard Kleinrock <lk@cs.ucla.edu =
<mailto:lk@cs.ucla.edu>> wrote:
> David,
> I totally appreciate  your attention to when and when not analytical =
modeling works. Let me clarify a few things from your note.
> First, Little's law (also known as Little=E2=80=99s lemma or, as I use =
in my book, Little=E2=80=99s result) does not assume Poisson arrivals -  =
it is good for any arrival process and any service process and is an =
equality between time averages.  It states that the time average of the =
number in a system (for a sample path w) is equal to the average arrival =
rate to the system multiplied by the time-averaged time in the system =
for that sample path.  This is often written as   NTimeAvg =3D=CE=BB=C2=B7=
TTimeAvg .  Moreover, if the system is also ergodic, then the time =
average equals the ensemble average and we often write it as N =CC=84 =3D =
=CE=BB T =CC=84 .  In any case, this requires neither Poisson arrivals =
nor exponential service times. =20
> =20
> Queueing theorists often do study the case of Poisson arrivals.  True, =
it makes the analysis easier, yet there is a better reason it is often =
used, and that is because the sum of a large number of independent =
stationary renewal processes approaches a Poisson process.  So nature =
often gives us Poisson arrivals. =20
> Best,
> Len
> On Jul 8, 2021, at 12:38 PM, David P. Reed <dpreed@deepplum.com =
<mailto:dpreed@deepplum.com>> wrote:
>=20
> I will tell you flat out that the arrival time distribution assumption =
made by Little's Lemma that allows "estimation of queue depth" is =
totally unreasonable on ANY Internet in practice.
> =20
> The assumption is a Poisson Arrival Process. In reality, traffic =
arrivals in real internet applications are extremely far from Poisson, =
and, of course, using TCP windowing, become highly intercorrelated with =
crossing traffic that shares the same queue.
> =20
> So, as I've tried to tell many, many net-heads (people who ignore =
applications layer behavior, like the people that think latency doesn't =
matter to end users, only throughput), end-to-end packet arrival times =
on a practical network are incredibly far from Poisson - and they are =
more like fractal probability distributions, very irregular at all =
scales of time.
> =20
> So, the idea that iperf can estimate queue depth by Little's Lemma by =
just measuring saturation of capacity of a path is bogus.The less =
Poisson, the worse the estimate gets, by a huge factor.
> =20
> =20
> Where does the Poisson assumption come from?  Well, like many =
theorems, it is the simplest tractable closed form solution - it creates =
a simplified view, by being a "single-parameter" distribution (the =
parameter is called lambda for a Poisson distribution).  And the =
analysis of a simple queue with poisson arrival distribution and a =
static, fixed service time is the first interesting Queueing Theory =
example in most textbooks. It is suggestive of an interesting =
phenomenon, but it does NOT characterize any real system.
> =20
> It's the queueing theory equivalent of "First, we assume a spherical =
cow...". in doing an example in a freshman physics class.
> =20
> Unfortunately, most networking engineers understand neither queuing =
theory nor application networking usage in interactive applications. =
Which makes them arrogant. They assume all distributions are poisson!
> =20
> =20
> On Tuesday, July 6, 2021 9:46am, "Ben Greear" <greearb@candelatech.com =
<mailto:greearb@candelatech.com>> said:
>=20
> > Hello,
> >=20
> > I am interested to hear wish lists for network testing features. We =
make test
> > equipment, supporting lots
> > of wifi stations and a distributed architecture, with built-in udp, =
tcp, ipv6,
> > http, ... protocols,
> > and open to creating/improving some of our automated tests.
> >=20
> > I know Dave has some test scripts already, so I'm not necessarily =
looking to
> > reimplement that,
> > but more fishing for other/new ideas.
> >=20
> > Thanks,
> > Ben
> >=20
> > On 7/2/21 4:28 PM, Bob McMahon wrote:
> > > I think we need the language of math here. It seems like the =
network
> > power metric, introduced by Kleinrock and Jaffe in the late 70s, is =
something
> > useful.
> > > Effective end/end queue depths per Little's law also seems useful. =
Both are
> > available in iperf 2 from a test perspective. Repurposing test =
techniques to
> > actual
> > > traffic could be useful. Hence the question around what exact =
telemetry
> > is useful to apps making socket write() and read() calls.
> > >
> > > Bob
> > >
> > > On Fri, Jul 2, 2021 at 10:07 AM Dave Taht <dave.taht@gmail.com =
<mailto:dave.taht@gmail.com>
> > <mailto:dave.taht@gmail.com <mailto:dave.taht@gmail.com>>> wrote:
> > >
> > > In terms of trying to find "Quality" I have tried to encourage =
folk to
> > > both read "zen and the art of motorcycle maintenance"[0], and =
Deming's
> > > work on "total quality management".
> > >
> > > My own slice at this network, computer and lifestyle "issue" is =
aiming
> > > for "imperceptible latency" in all things. [1]. There's a lot of
> > > fallout from that in terms of not just addressing queuing delay, =
but
> > > caching, prefetching, and learning more about what a user really =
needs
> > > (as opposed to wants) to know via intelligent agents.
> > >
> > > [0] If you want to get depressed, read Pirsig's successor to =
"zen...",
> > > lila, which is in part about what happens when an engineer hits an
> > > insoluble problem.
> > > [1] https://www.internetsociety.org/events/latency2013/ =
<https://www.internetsociety.org/events/latency2013/>
> > <https://www.internetsociety.org/events/latency2013/ =
<https://www.internetsociety.org/events/latency2013/>>
> > >
> > >
> > >
> > > On Thu, Jul 1, 2021 at 6:16 PM David P. Reed <dpreed@deepplum.com =
<mailto:dpreed@deepplum.com>
> > <mailto:dpreed@deepplum.com <mailto:dpreed@deepplum.com>>> wrote:
> > > >
> > > > Well, nice that the folks doing the conference  are willing to
> > consider that quality of user experience has little to do with =
signalling rate at
> > the
> > > physical layer or throughput of FTP transfers.
> > > >
> > > >
> > > >
> > > > But honestly, the fact that they call the problem "network =
quality"
> > suggests that they REALLY, REALLY don't understand the Internet =
isn't the hardware
> > or
> > > the routers or even the routing algorithms *to its users*.
> > > >
> > > >
> > > >
> > > > By ignoring the diversity of applications now and in the future,
> > and the fact that we DON'T KNOW what will be coming up, this =
conference will
> > likely fall
> > > into the usual trap that net-heads fall into - optimizing for some
> > imaginary reality that doesn't exist, and in fact will probably =
never be what
> > users
> > > actually will do given the chance.
> > > >
> > > >
> > > >
> > > > I saw this issue in 1976 in the group developing the original
> > Internet protocols - a desire to put *into the network* special =
tricks to optimize
> > ASR33
> > > logins to remote computers from terminal concentrators (aka remote
> > login), bulk file transfers between file systems on different =
time-sharing
> > systems, and
> > > "sessions" (virtual circuits) that required logins. And then =
trying to
> > exploit underlying "multicast" by building it into the IP layer, =
because someone
> > > thought that TV broadcast would be the dominant application.
> > > >
> > > >
> > > >
> > > > Frankly, to think of "quality" as something that can be =
"provided"
> > by "the network" misses the entire point of "end-to-end argument in =
system
> > design".
> > > Quality is not a property defined or created by The Network. If =
you want
> > to talk about Quality, you need to talk about users - all the users =
at all times,
> > > now and into the future, and that's something you can't do if you =
don't
> > bother to include current and future users talking about what they =
might expect
> > to
> > > experience that they don't experience.
> > > >
> > > >
> > > >
> > > > There was much fighting back in 1976 that basically involved
> > "network experts" saying that the network was the place to "solve" =
such issues as
> > quality,
> > > so applications could avoid having to solve such issues.
> > > >
> > > >
> > > >
> > > > What some of us managed to do was to argue that you can't =
"solve"
> > such issues. All you can do is provide a framework that enables =
different uses to
> > > *cooperate* in some way.
> > > >
> > > >
> > > >
> > > > Which is why the Internet drops packets rather than queueing =
them,
> > and why diffserv cannot work.
> > > >
> > > > (I know the latter is conftroversial, but at the moment, ALL of
> > diffserv attempts to talk about end-to-end applicaiton specific =
metrics, but
> > never, ever
> > > explains what the diffserv control points actually do w.r.t. what =
the IP
> > layer can actually control. So it is meaningless - another violation =
of the
> > > so-called end-to-end principle).
> > > >
> > > >
> > > >
> > > > Networks are about getting packets from here to there, =
multiplexing
> > the underlying resources. That's it. Quality is a whole different =
thing. Quality
> > can
> > > be improved by end-to-end approaches, if the underlying network =
provides
> > some kind of thing that actually creates a way for end-to-end =
applications to
> > > affect queueing and routing decisions, and more importantly =
getting
> > "telemetry" from the network regarding what is actually going on =
with the other
> > > end-to-end users sharing the infrastructure.
> > > >
> > > >
> > > >
> > > > This conference won't talk about it this way. So don't waste =
your
> > time.
> > > >
> > > >
> > > >
> > > >
> > > >
> > > >
> > > >
> > > > On Wednesday, June 30, 2021 8:12pm, "Dave Taht"
> > <dave.taht@gmail.com <mailto:dave.taht@gmail.com> =
<mailto:dave.taht@gmail.com <mailto:dave.taht@gmail.com>>> said:
> > > >
> > > > > The program committee members are *amazing*. Perhaps, finally,
> > we can
> > > > > move the bar for the internet's quality metrics past endless,
> > blind
> > > > > repetitions of speedtest.
> > > > >
> > > > > For complete details, please see:
> > > > > https://www.iab.org/activities/workshops/network-quality/ =
<https://www.iab.org/activities/workshops/network-quality/>
> > <https://www.iab.org/activities/workshops/network-quality/ =
<https://www.iab.org/activities/workshops/network-quality/>>
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
> > > > > Send Submissions to: network-quality-workshop-pc@iab.org =
<mailto:network-quality-workshop-pc@iab.org>
> > <mailto:network-quality-workshop-pc@iab.org =
<mailto:network-quality-workshop-pc@iab.org>>.
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
> > > > > focus on the aspects that impacts the users=E2=80=99 =
experience
> > most and at
> > > > > the same time empowers users to choose the Internet service
> > that will
> > > > > give them the best experience."
> > > > >
> > > > >
> > > > > --
> > > > > Latest Podcast:
> > > > >
> > =
https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/ =
<https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/=
>
> > =
<https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/=
 =
<https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/=
>>
> > > > >
> > > > > Dave T=C3=A4ht CTO, TekLibre, LLC
> > > > > _______________________________________________
> > > > > Cerowrt-devel mailing list
> > > > > Cerowrt-devel@lists.bufferbloat.net =
<mailto:Cerowrt-devel@lists.bufferbloat.net>
> > <mailto:Cerowrt-devel@lists.bufferbloat.net =
<mailto:Cerowrt-devel@lists.bufferbloat.net>>
> > > > > https://lists.bufferbloat.net/listinfo/cerowrt-devel =
<https://lists.bufferbloat.net/listinfo/cerowrt-devel>
> > <https://lists.bufferbloat.net/listinfo/cerowrt-devel =
<https://lists.bufferbloat.net/listinfo/cerowrt-devel>>
> > > > >
> > >
> > >
> > >
> > > --
> > > Latest Podcast:
> > > =
https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/ =
<https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/=
>
> > =
<https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/=
 =
<https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/=
>>
> > >
> > > Dave T=C3=A4ht CTO, TekLibre, LLC
> > > _______________________________________________
> > > Make-wifi-fast mailing list
> > > Make-wifi-fast@lists.bufferbloat.net =
<mailto:Make-wifi-fast@lists.bufferbloat.net>
> > <mailto:Make-wifi-fast@lists.bufferbloat.net =
<mailto:Make-wifi-fast@lists.bufferbloat.net>>
> > > https://lists.bufferbloat.net/listinfo/make-wifi-fast =
<https://lists.bufferbloat.net/listinfo/make-wifi-fast>
> > <https://lists.bufferbloat.net/listinfo/make-wifi-fast =
<https://lists.bufferbloat.net/listinfo/make-wifi-fast>>
> > >
> > >
> > > This electronic communication and the information and any files =
transmitted
> > with it, or attached to it, are confidential and are intended solely =
for the use
> > of
> > > the individual or entity to whom it is addressed and may contain =
information
> > that is confidential, legally privileged, protected by privacy laws, =
or otherwise
> > > restricted from disclosure to anyone else. If you are not the =
intended
> > recipient or the person responsible for delivering the e-mail to the =
intended
> > recipient,
> > > you are hereby notified that any use, copying, distributing, =
dissemination,
> > forwarding, printing, or copying of this e-mail is strictly =
prohibited. If you
> > > received this e-mail in error, please return the e-mail to the =
sender, delete
> > it from your computer, and destroy any printed copy of it.
> > >
> > > _______________________________________________
> > > Starlink mailing list
> > > Starlink@lists.bufferbloat.net =
<mailto:Starlink@lists.bufferbloat.net>
> > > https://lists.bufferbloat.net/listinfo/starlink =
<https://lists.bufferbloat.net/listinfo/starlink>
> > >
> >=20
> >=20
> > --
> > Ben Greear <greearb@candelatech.com =
<mailto:greearb@candelatech.com>>
> > Candela Technologies Inc http://www.candelatech.com =
<http://www.candelatech.com/>
> >
> _______________________________________________
> Starlink mailing list
> Starlink@lists.bufferbloat.net <mailto:Starlink@lists.bufferbloat.net>
> https://lists.bufferbloat.net/listinfo/starlink =
<https://lists.bufferbloat.net/listinfo/starlink>_________________________=
______________________
> Make-wifi-fast mailing list
> Make-wifi-fast@lists.bufferbloat.net =
<mailto:Make-wifi-fast@lists.bufferbloat.net>
> https://lists.bufferbloat.net/listinfo/make-wifi-fast =
<https://lists.bufferbloat.net/listinfo/make-wifi-fast>

--Apple-Mail=_422EA467-017F-4539-8634-56F78D0A0508
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">David,<div class=3D""><br class=3D""></div><div class=3D"">No =
question that non-stationarity and instability are what we often see in =
networks. &nbsp;And, non-stationarity and instability are both topics =
that lead to very complex analytical problems in queueing theory. =
&nbsp;You can find some results on the transient analysis in the =
queueing theory literature (including the second volume of my Queueing =
Systems book), but they are limited and hard. Nevertheless, the =
literature does contain some works on transient analysis of queueing =
systems as applied to network congestion control - again =
limited.&nbsp;On the other hand, as you said, control theory addresses =
stability head on and does offer some tools as well, but again, it is =
hairy.&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D"">Averages are only averages, but they can provide valuable =
information. For sure, latency can and does confound behavior. =
&nbsp;But, as you point out, it is the proliferation of control =
protocols that are, in some cases, deployed willy-nilly in networks =
without proper evaluation of their behavior that can lead to the nasty =
cycle of large transient latency, frantic repeating of web requests, =
protocols sending multiple copies, lack of awareness of true capacity or =
queue size or throughput, etc, all of which you articulate so well, =
create the chaos and frustration in the network. &nbsp;Analyzing that is =
really difficult, and if we don=E2=80=99t measure and sense, we have no =
hope of understanding, controlling, or ameliorating such situations. =
&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D"">Len</div><div class=3D""><div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D"">On Jul 9, 2021, at 12:31 PM, =
David P. Reed &lt;<a href=3D"mailto:dpreed@deepplum.com" =
class=3D"">dpreed@deepplum.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><font face=3D"arial" =
size=3D"2" class=3D""><div style=3D"margin: 0px; padding: 0px; =
font-family: arial; font-size: 10pt; overflow-wrap: break-word;" =
class=3D"">Len - I admit I made a mistake in challenging Little's Law as =
being based on Poisson processes. It is more general. But it tells you =
an "average" in its base form, and latency averages are not useful for =
end user applications.</div><p style=3D"margin:0;padding:0;font-family: =
arial; font-size: 10pt; overflow-wrap: break-word;" =
class=3D"">&nbsp;</p><div style=3D"margin: 0px; padding: 0px; =
font-family: arial; font-size: 10pt; overflow-wrap: break-word;" =
class=3D"">However, Little's Law does assume something that is not =
actually valid about the kind of distributions seen in the network, and =
in fact, it is NOT true that networks converge on Poisson arrival =
times.</div><p style=3D"margin:0;padding:0;font-family: arial; =
font-size: 10pt; overflow-wrap: break-word;" class=3D"">&nbsp;</p><div =
style=3D"margin: 0px; padding: 0px; font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">The key issue is well-described =
in the sandard analysis of the M/M/1 queue (e.g. <a =
href=3D"https://en.wikipedia.org/wiki/M/M/1_queue" =
class=3D"">https://en.wikipedia.org/wiki/M/M/1_queue</a>) , which is =
done only for Poisson processes, and is also limited to "stable" =
systems. But networks are never stable when fully loaded. They get =
unstable and those instabilities persist for a long time in the network. =
Instability is at core the underlying *requirement* of the Internet's =
usage.</div><p style=3D"margin:0;padding:0;font-family: arial; =
font-size: 10pt; overflow-wrap: break-word;" class=3D"">&nbsp;</p><div =
style=3D"margin: 0px; padding: 0px; font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">So specifically: real networks, =
even large ones, and certainly the Internet today, are not asymptotic =
limits of sums of stationary stochastic arrival processes. Each esternal =
terminal of any real network has a real user there, running a real =
application, and the network is a complex graph. This makes it =
completely unlike a single queue. Even the links within a network carry =
a relatively small number of application flows. There's no ability to =
apply the Law of Large Numbers to the distributions, because any =
particular path contains only a small number of serialized flows with =
hightly variable rates.</div><p style=3D"margin:0;padding:0;font-family: =
arial; font-size: 10pt; overflow-wrap: break-word;" =
class=3D"">&nbsp;</p><div style=3D"margin: 0px; padding: 0px; =
font-family: arial; font-size: 10pt; overflow-wrap: break-word;" =
class=3D"">Here's an example of what really happens in a real network =
(I've observed this in 5 different cities on ATT's cellular network, =
back when it was running Alcatel Lucent HSPA+ gear in those =
cities).</div><div style=3D"margin: 0px; padding: 0px; font-family: =
arial; font-size: 10pt; overflow-wrap: break-word;" class=3D"">But you =
can see this on any network where transient overload occurs, creating =
instability.</div><p style=3D"margin:0;padding:0;font-family: arial; =
font-size: 10pt; overflow-wrap: break-word;" class=3D"">&nbsp;</p><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><div style=3D"margin: =
0px; padding: 0px; font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;" class=3D"">At 7 AM, the data transmission of the network is =
roughty stable. That's because no links are overloaded within the =
network. Little's Law can tell you by observing the delay and throughput =
on any path that the average delay in the network is X.</div><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><div style=3D"margin: =
0px; padding: 0px; font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;" class=3D"">Continue sampling delay in the network as the =
day wears on. At about 10 AM, ping delay starts to soar into the =
multiple second range. No packers are lost. The peak ping time is about =
4000 milliseconds - 4 seconds in most of the networks. This is in =
downtown, no radio errors are reported, no link errors.</div><div =
style=3D"margin: 0px; padding: 0px; font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">So it is all queueing =
delay.&nbsp;</div><p style=3D"margin:0;padding:0;font-family: arial; =
font-size: 10pt; overflow-wrap: break-word;" class=3D"">&nbsp;</p><div =
style=3D"margin: 0px; padding: 0px; font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">Now what Little's law doesn't =
tell you much about average delay, because clearly *some* subpiece of =
the network is fully saturated. But what is interesting here is what is =
happening and where. You can't tell what is saturated, and in fact the =
entire network is quite unstable, because the peak is constantly varying =
and you don't know where the throughput is. All the packets are now =
arriving 4 seconds or so later.</div><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><div style=3D"margin: =
0px; padding: 0px; font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;" class=3D"">Why is the situaton not worse than 4 seconds? =
Well, there are multiple things going on:</div><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><div style=3D"margin: =
0px; padding: 0px; font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;" class=3D"">1) TCP may be doing a lot of retransmissions =
(non-Poisson at all, not random either. The arrival process is entirely =
deterministic in each source, based on the retransmission timeout) or it =
may not be.</div><p style=3D"margin:0;padding:0;font-family: arial; =
font-size: 10pt; overflow-wrap: break-word;" class=3D"">&nbsp;</p><div =
style=3D"margin: 0px; padding: 0px; font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">2) Users are pissed off, because =
they clicked on a web page, and got nothing back. They retry on their =
screen, or they try another site. Meanwhile, the underlying TCP =
connection remains there, pumping the network full of more packets on =
that old path, which is still backed up with packets that haven't been =
delivered that are sitting in queues. The real arrival process is not =
Poisson at all, its a deterministic, repeated retrsnsmission plus a new =
attempt to connect to a new site.</div><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><div style=3D"margin: =
0px; padding: 0px; font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;" class=3D"">3) When the users get a web page back =
eventually, it is filled with names of other pieces needed to display =
that web page, which causes some number (often as many as 100) new pages =
to be fetched, ALL at the same time. Certainly not a stochastic process =
that will just obey the law of large numbers.</div><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><div style=3D"margin: =
0px; padding: 0px; font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;" class=3D"">All of these things are the result of initial =
instability, causing queues to build up.</div><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><div style=3D"margin: =
0px; padding: 0px; font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;" class=3D"">So what is the state of the system? is it =
stable? is it stochastic? Is it the sum of enough stochastic stable =
flows to average out to Poisson?</div><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><div style=3D"margin: =
0px; padding: 0px; font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;" class=3D"">The answer is clearly NO. Control theory (not =
queuing theory) suggests that this system is completely uncontrolled and =
unstable.</div><p style=3D"margin:0;padding:0;font-family: arial; =
font-size: 10pt; overflow-wrap: break-word;" class=3D"">&nbsp;</p><div =
style=3D"margin: 0px; padding: 0px; font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">So if the system is in this =
state, what does Little's Lemma tell us? What is the meaning of that =
hightly variable 4 second delay on ping packets, in terms of average =
utilizaton of the network?</div><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><div style=3D"margin: =
0px; padding: 0px; font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;" class=3D"">We don't even know what all the users really =
might need, if the system hadn't become unstable, because some users =
have given up, and others are trying even harder, and new users are =
arriving.</div><p style=3D"margin:0;padding:0;font-family: arial; =
font-size: 10pt; overflow-wrap: break-word;" class=3D"">&nbsp;</p><div =
style=3D"margin: 0px; padding: 0px; font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">What we do know, because ATT (at =
my suggestion) reconfigured their system after blaming Apple Computer =
company for "bugs" in the original iPhone in public, is that simply =
*dropping* packets sitting in queues more than a couple milliseconds =
MADE THE USERS HAPPY. Apparently the required capacity was there all =
along!&nbsp;</div><p style=3D"margin:0;padding:0;font-family: arial; =
font-size: 10pt; overflow-wrap: break-word;" class=3D"">&nbsp;</p><div =
style=3D"margin: 0px; padding: 0px; font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">So I conclude that the 4 second =
delay was the largest delay users could barely tolerate before deciding =
the network was DOWN and going away. And that the backup was the =
accumulation of useless packets sitting in queues because none of the =
end systems were receiving congestion signals (which for the Internet =
stack begins with packet dropping).</div><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><div style=3D"margin: =
0px; padding: 0px; font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;" class=3D"">I should say that most operators, and especially =
ATT in this case, do not measure end-to-end latency. Instead they use =
Little's Lemma to query routers for their current throughput in bits per =
second, and calculate latency as if Little's Lemma applied. This results =
in reports to management that literally say:</div><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><div style=3D"margin: =
0px; padding: 0px; font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;" class=3D"">&nbsp; The network is not dropping packets, =
utilization is near 100% on many of our switches and routers.</div><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><div style=3D"margin: =
0px; padding: 0px; font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;" class=3D"">And management responds, Hooray! Because =
utilization of 100% of their hardware is their investors' metric of =
maximizing profits. The hardware they are operating is fully utilized. =
No waste! And users are happy because no packets have been =
dropped!</div><p style=3D"margin:0;padding:0;font-family: arial; =
font-size: 10pt; overflow-wrap: break-word;" class=3D"">&nbsp;</p><div =
style=3D"margin: 0px; padding: 0px; font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">Hmm... what's wrong with this =
picture? I can see why Donovan, CTO, would accuse Apple of lousy =
software that was ruining iPhone user experience!&nbsp; His network was =
operating without ANY problems.</div><div style=3D"margin: 0px; padding: =
0px; font-family: arial; font-size: 10pt; overflow-wrap: break-word;" =
class=3D"">So it must be Apple!</div><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><div style=3D"margin: =
0px; padding: 0px; font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;" class=3D"">Well, no. The entire problem, as we saw when ATT =
just changed to shorten egress queues and drop packets when the egress =
queues overflowed, was that ATT's network was amplifying instability, =
not at the link level, but at the network level.</div><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><div style=3D"margin: =
0px; padding: 0px; font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;" class=3D"">And queueing theory can help with that, but =
*intro queueing theory* cannot.</div><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><div style=3D"margin: =
0px; padding: 0px; font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;" class=3D"">And a big part of that problem is the pervasive =
belief that, at the network boundary, *Poisson arrival* is a reasonable =
model for use in all cases.</div><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;" class=3D"">&nbsp;</p><div style=3D"margin: =
0px; padding: 0px; font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;" class=3D"">On Friday, July 9, 2021 6:05am, "Luca =
Muscariello" &lt;<a href=3D"mailto:muscariello@ieee.org" =
class=3D"">muscariello@ieee.org</a>&gt; said:<br class=3D""><br =
class=3D""></div>
<div id=3D"SafeStyles1625856330" class=3D"">
<div dir=3D"ltr" class=3D"">
<div dir=3D"ltr" class=3D"">
<div dir=3D"ltr" class=3D"">
<div dir=3D"ltr" class=3D"">
<div class=3D"gmail_default" style=3D"font-family: monospace;">For those =
who might be interested in Little's law</div>
<div class=3D"gmail_default" style=3D"font-family: monospace;">there is =
a nice paper by John Little on the occasion&nbsp;</div>
<div class=3D"gmail_default" style=3D"font-family: monospace;">of the =
50th anniversary&nbsp; of the result.</div>
<div class=3D"gmail_default" style=3D"font-family: monospace;"><a =
href=3D"https://www.informs.org/Blogs/Operations-Research-Forum/Little-s-L=
aw-as-Viewed-on-its-50th-Anniversary" =
class=3D"">https://www.informs.org/Blogs/Operations-Research-Forum/Little-=
s-Law-as-Viewed-on-its-50th-Anniversary</a></div>
<div class=3D"gmail_default"><span style=3D"font-family: monospace;" =
class=3D""><a =
href=3D"https://www.informs.org/content/download/255808/2414681/file/littl=
e_paper.pdf" =
class=3D"">https://www.informs.org/content/download/255808/2414681/file/li=
ttle_paper.pdf</a></span></div>
<div class=3D"gmail_default"><span style=3D"font-family: monospace;" =
class=3D"">&nbsp;</span></div>
<div class=3D"gmail_default"><span style=3D"font-family: monospace;" =
class=3D"">Nice read.&nbsp;</span></div>
<div class=3D"gmail_default"><span style=3D"font-family: monospace;" =
class=3D"">Luca&nbsp;</span></div>
<div class=3D"gmail_default"><span style=3D"font-family: monospace;" =
class=3D"">&nbsp;</span></div>
<div class=3D"gmail_default"><span style=3D"font-family: monospace;" =
class=3D"">P.S.&nbsp;</span></div>
<div class=3D"gmail_default"><span style=3D"font-family: monospace;" =
class=3D"">Who has not a copy of L. Kleinrock's books? I do have and am =
not ready to lend them!</span></div>
</div>
<div class=3D"gmail_quote">
<div class=3D"gmail_attr" dir=3D"ltr">On Fri, Jul 9, 2021 at 11:01 AM =
Leonard Kleinrock &lt;<a href=3D"mailto:lk@cs.ucla.edu" =
class=3D"">lk@cs.ucla.edu</a>&gt; wrote:</div>
<blockquote class=3D"gmail_quote" style=3D"margin: 0px 0px 0px 0.8ex; =
border-left: 1px solid #cccccc; padding-left: 1ex;">
<div style=3D"overflow-wrap: break-word;" class=3D"">David,
<div class=3D"">I totally appreciate &nbsp;your attention to when and =
when not analytical modeling works. Let me clarify a few things from =
your note.</div>
<div class=3D"">First, Little's law (also known as Little=E2=80=99s =
lemma or, as I use in my book, Little=E2=80=99s result) does not assume =
Poisson arrivals - &nbsp;it is good for <strong class=3D"">any</strong> =
arrival process and any service process and is an equality between time =
averages.&nbsp; It states that the time average of the number in a =
system (for a sample path <em class=3D"">w)</em><span =
style=3D"font-family: Symbol;" class=3D"">&nbsp;</span>is equal to the =
average arrival rate to the system multiplied by the time-averaged time =
in the system for that sample path.&nbsp; This is often written as =
&nbsp;&nbsp;<span style=3D"font-size: 11pt; font-family: CMMI10; =
vertical-align: -6pt;" class=3D"">N</span><span style=3D"font-size: 8pt; =
font-family: CMMI8;" class=3D"">TimeAvg </span><span style=3D"font-size: =
11pt; font-family: CMR10; vertical-align: -6pt;" class=3D"">=3D</span><spa=
n style=3D"font-size: 11pt; font-family: CMMI10; vertical-align: -6pt;" =
class=3D"">=CE=BB</span><span style=3D"font-size: 11pt; font-family: =
CMSY10; vertical-align: -6pt;" class=3D"">=C2=B7</span><span =
style=3D"font-size: 11pt; font-family: CMMI10; vertical-align: -6pt;" =
class=3D"">T</span><span style=3D"font-size: 8pt; font-family: CMMI8;" =
class=3D"">TimeAvg . </span>&nbsp;Moreover, if the system is also =
ergodic, then the time average equals the ensemble average and we often =
write it as&nbsp;<span style=3D"font-size: 17pt; font-family: Fe;" =
class=3D"">N</span><span style=3D"font-size: 17pt; font-family: Fg; =
vertical-align: 4pt;" class=3D""> =CC=84 </span><span style=3D"font-size: =
17pt; font-family: Fg;" class=3D"">=3D </span><span style=3D"font-size: =
17pt; font-family: Fe;" class=3D"">=CE=BB T</span><span =
style=3D"font-size: 17pt; font-family: Fg; vertical-align: 4pt;" =
class=3D""> =CC=84 .</span><span style=3D"vertical-align: 4pt;" =
class=3D""> &nbsp;In any case, this requires neither Poisson arrivals =
nor exponential service times. &nbsp;</span></div>
<div class=3D""><span style=3D"vertical-align: 4pt;" =
class=3D"">&nbsp;</span></div>
<div class=3D"">Queueing theorists often do study the case of Poisson =
arrivals.&nbsp; True, it makes the analysis easier, yet there is a =
better reason it is often used, and that is because the sum of a large =
number of independent stationary renewal processes approaches a Poisson =
process.&nbsp; So nature often gives us Poisson arrivals. &nbsp;</div>
<div class=3D"">Best,</div>
<div class=3D"">Len</div>
<div class=3D"">
<div class=3D"">
<blockquote class=3D"">
<div class=3D"">On Jul 8, 2021, at 12:38 PM, David P. Reed &lt;<a =
href=3D"mailto:dpreed@deepplum.com" target=3D"_blank" =
class=3D"">dpreed@deepplum.com</a>&gt; wrote:</div>
<br class=3D"">
<div class=3D"">
<div style=3D"margin: 0px; padding: 0px; font-family: arial; font-size: =
10pt;" class=3D"">I will tell you flat out that the arrival time =
distribution assumption made by Little's Lemma that allows "estimation =
of queue depth" is totally unreasonable on ANY Internet in =
practice.</div><p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; =
font-family: arial; font-size: 10pt;" class=3D"">&nbsp;</p>
<div style=3D"margin: 0px; padding: 0px; font-family: arial; font-size: =
10pt;" class=3D"">The assumption is a Poisson Arrival Process. In =
reality, traffic arrivals in real internet applications are extremely =
far from Poisson, and, of course, using TCP windowing, become highly =
intercorrelated with crossing traffic that shares the same =
queue.</div><p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; =
font-family: arial; font-size: 10pt;" class=3D"">&nbsp;</p>
<div style=3D"margin: 0px; padding: 0px; font-family: arial; font-size: =
10pt;" class=3D"">So, as I've tried to tell many, many net-heads (people =
who ignore applications layer behavior, like the people that think =
latency doesn't matter to end users, only throughput), end-to-end packet =
arrival times on a practical network are incredibly far from Poisson - =
and they are more like fractal probability distributions, very irregular =
at all scales of time.</div><p style=3D"margin:0;padding:0;margin: 0px; =
padding: 0px; font-family: arial; font-size: 10pt;" class=3D"">&nbsp;</p>
<div style=3D"margin: 0px; padding: 0px; font-family: arial; font-size: =
10pt;" class=3D"">So, the idea that iperf can estimate queue depth by =
Little's Lemma by just measuring saturation of capacity of a path is =
bogus.The less Poisson, the worse the estimate gets, by a huge =
factor.</div><p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; =
font-family: arial; font-size: 10pt;" class=3D"">&nbsp;</p><p =
style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: =
arial; font-size: 10pt;" class=3D"">&nbsp;</p>
<div style=3D"margin: 0px; padding: 0px; font-family: arial; font-size: =
10pt;" class=3D"">Where does the Poisson assumption come from?&nbsp; =
Well, like many theorems, it is the simplest tractable closed form =
solution - it creates a simplified view, by being a "single-parameter" =
distribution (the parameter is called lambda for a Poisson =
distribution).&nbsp; And the analysis of a simple queue with poisson =
arrival distribution and a static, fixed service time is the first =
interesting Queueing Theory example in most textbooks. It is suggestive =
of an interesting phenomenon, but it does NOT characterize any real =
system.</div><p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; =
font-family: arial; font-size: 10pt;" class=3D"">&nbsp;</p>
<div style=3D"margin: 0px; padding: 0px; font-family: arial; font-size: =
10pt;" class=3D"">It's the queueing theory equivalent of "First, we =
assume a spherical cow...". in doing an example in a freshman physics =
class.</div><p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; =
font-family: arial; font-size: 10pt;" class=3D"">&nbsp;</p>
<div style=3D"margin: 0px; padding: 0px; font-family: arial; font-size: =
10pt;" class=3D"">Unfortunately, most networking engineers understand =
neither queuing theory nor application networking usage in interactive =
applications. Which makes them arrogant. They assume all distributions =
are poisson!</div><p style=3D"margin:0;padding:0;margin: 0px; padding: =
0px; font-family: arial; font-size: 10pt;" class=3D"">&nbsp;</p><p =
style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: =
arial; font-size: 10pt;" class=3D"">&nbsp;</p>
<div style=3D"margin: 0px; padding: 0px; font-family: arial; font-size: =
10pt;" class=3D"">On Tuesday, July 6, 2021 9:46am, "Ben Greear" &lt;<a =
href=3D"mailto:greearb@candelatech.com" target=3D"_blank" =
class=3D"">greearb@candelatech.com</a>&gt; said:<br class=3D""><br =
class=3D""></div>
<div id=3D"gmail-m_272466165573362254SafeStyles1625772289" class=3D"">
<div style=3D"margin: 0px; padding: 0px; font-family: arial; font-size: =
10pt;" class=3D"">&gt; Hello,<br class=3D"">&gt; <br class=3D"">&gt; I =
am interested to hear wish lists for network testing features. We make =
test<br class=3D"">&gt; equipment, supporting lots<br class=3D"">&gt; of =
wifi stations and a distributed architecture, with built-in udp, tcp, =
ipv6,<br class=3D"">&gt; http, ... protocols,<br class=3D"">&gt; and =
open to creating/improving some of our automated tests.<br class=3D"">&gt;=
 <br class=3D"">&gt; I know Dave has some test scripts already, so I'm =
not necessarily looking to<br class=3D"">&gt; reimplement that,<br =
class=3D"">&gt; but more fishing for other/new ideas.<br class=3D"">&gt; =
<br class=3D"">&gt; Thanks,<br class=3D"">&gt; Ben<br class=3D"">&gt; =
<br class=3D"">&gt; On 7/2/21 4:28 PM, Bob McMahon wrote:<br =
class=3D"">&gt; &gt; I think we need the language&nbsp;of math here. It =
seems like the network<br class=3D"">&gt; power metric, introduced by =
Kleinrock and&nbsp;Jaffe in the late 70s, is something<br class=3D"">&gt; =
useful.<br class=3D"">&gt; &gt; Effective end/end queue depths per =
Little's law also seems useful. Both are<br class=3D"">&gt; available in =
iperf 2 from a test perspective. Repurposing test techniques to<br =
class=3D"">&gt; actual<br class=3D"">&gt; &gt; traffic could be useful. =
Hence&nbsp;the question around what exact telemetry<br class=3D"">&gt; =
is useful to apps making socket write() and read() calls.<br =
class=3D"">&gt; &gt;<br class=3D"">&gt; &gt; Bob<br class=3D"">&gt; =
&gt;<br class=3D"">&gt; &gt; On Fri, Jul 2, 2021 at 10:07 AM Dave Taht =
&lt;<a href=3D"mailto:dave.taht@gmail.com" target=3D"_blank" =
class=3D"">dave.taht@gmail.com</a><br class=3D"">&gt; &lt;<a =
href=3D"mailto:dave.taht@gmail.com" target=3D"_blank" =
class=3D"">mailto:dave.taht@gmail.com</a>&gt;&gt; wrote:<br =
class=3D"">&gt; &gt;<br class=3D"">&gt; &gt; In terms of trying to find =
"Quality" I have tried to encourage folk to<br class=3D"">&gt; &gt; both =
read "zen and the art of motorcycle maintenance"[0], and Deming's<br =
class=3D"">&gt; &gt; work on "total quality management".<br =
class=3D"">&gt; &gt;<br class=3D"">&gt; &gt; My own slice at this =
network, computer and lifestyle "issue" is aiming<br class=3D"">&gt; =
&gt; for "imperceptible latency" in all things. [1]. There's a lot of<br =
class=3D"">&gt; &gt; fallout from that in terms of not just addressing =
queuing delay, but<br class=3D"">&gt; &gt; caching, prefetching, and =
learning more about what a user really needs<br class=3D"">&gt; &gt; (as =
opposed to wants) to know via intelligent agents.<br class=3D"">&gt; =
&gt;<br class=3D"">&gt; &gt; [0] If you want to get depressed, read =
Pirsig's successor to "zen...",<br class=3D"">&gt; &gt; lila, which is =
in part about what happens when an engineer hits an<br class=3D"">&gt; =
&gt; insoluble problem.<br class=3D"">&gt; &gt; [1] <a =
href=3D"https://www.internetsociety.org/events/latency2013/" =
target=3D"_blank" =
class=3D"">https://www.internetsociety.org/events/latency2013/</a><br =
class=3D"">&gt; &lt;<a =
href=3D"https://www.internetsociety.org/events/latency2013/" =
target=3D"_blank" =
class=3D"">https://www.internetsociety.org/events/latency2013/</a>&gt;<br =
class=3D"">&gt; &gt;<br class=3D"">&gt; &gt;<br class=3D"">&gt; &gt;<br =
class=3D"">&gt; &gt; On Thu, Jul 1, 2021 at 6:16 PM David P. Reed &lt;<a =
href=3D"mailto:dpreed@deepplum.com" target=3D"_blank" =
class=3D"">dpreed@deepplum.com</a><br class=3D"">&gt; &lt;<a =
href=3D"mailto:dpreed@deepplum.com" target=3D"_blank" =
class=3D"">mailto:dpreed@deepplum.com</a>&gt;&gt; wrote:<br =
class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt; Well, nice that =
the folks doing the conference&nbsp; are willing to<br class=3D"">&gt; =
consider that quality of user experience has little to do with =
signalling rate at<br class=3D"">&gt; the<br class=3D"">&gt; &gt; =
physical layer or throughput of FTP transfers.<br class=3D"">&gt; &gt; =
&gt;<br class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt;<br =
class=3D"">&gt; &gt; &gt; But honestly, the fact that they call the =
problem "network quality"<br class=3D"">&gt; suggests that they REALLY, =
REALLY don't understand the Internet isn't the hardware<br class=3D"">&gt;=
 or<br class=3D"">&gt; &gt; the routers or even the routing algorithms =
*to its users*.<br class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; &gt; =
&gt;<br class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt; By =
ignoring the diversity of applications now and in the future,<br =
class=3D"">&gt; and the fact that we DON'T KNOW what will be coming up, =
this conference will<br class=3D"">&gt; likely fall<br class=3D"">&gt; =
&gt; into the usual trap that net-heads fall into - optimizing for =
some<br class=3D"">&gt; imaginary reality that doesn't exist, and in =
fact will probably never be what<br class=3D"">&gt; users<br =
class=3D"">&gt; &gt; actually will do given the chance.<br class=3D"">&gt;=
 &gt; &gt;<br class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt;<br =
class=3D"">&gt; &gt; &gt; I saw this issue in 1976 in the group =
developing the original<br class=3D"">&gt; Internet protocols - a desire =
to put *into the network* special tricks to optimize<br class=3D"">&gt; =
ASR33<br class=3D"">&gt; &gt; logins to remote computers from terminal =
concentrators (aka remote<br class=3D"">&gt; login), bulk file transfers =
between file systems on different time-sharing<br class=3D"">&gt; =
systems, and<br class=3D"">&gt; &gt; "sessions" (virtual circuits) that =
required logins. And then trying to<br class=3D"">&gt; exploit =
underlying "multicast" by building it into the IP layer, because =
someone<br class=3D"">&gt; &gt; thought that TV broadcast would be the =
dominant application.<br class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; =
&gt; &gt;<br class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt; =
Frankly, to think of "quality" as something that can be "provided"<br =
class=3D"">&gt; by "the network" misses the entire point of "end-to-end =
argument in system<br class=3D"">&gt; design".<br class=3D"">&gt; &gt; =
Quality is not a property defined or created by The Network. If you =
want<br class=3D"">&gt; to talk about Quality, you need to talk about =
users - all the users at all times,<br class=3D"">&gt; &gt; now and into =
the future, and that's something you can't do if you don't<br =
class=3D"">&gt; bother to include current and future users talking about =
what they might expect<br class=3D"">&gt; to<br class=3D"">&gt; &gt; =
experience that they don't experience.<br class=3D"">&gt; &gt; &gt;<br =
class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; =
&gt; &gt; There was much fighting back in 1976 that basically =
involved<br class=3D"">&gt; "network experts" saying that the network =
was the place to "solve" such issues as<br class=3D"">&gt; quality,<br =
class=3D"">&gt; &gt; so applications could avoid having to solve such =
issues.<br class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt;<br =
class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt; What some of us =
managed to do was to argue that you can't "solve"<br class=3D"">&gt; =
such issues. All you can do is provide a framework that enables =
different uses to<br class=3D"">&gt; &gt; *cooperate* in some way.<br =
class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; =
&gt; &gt;<br class=3D"">&gt; &gt; &gt; Which is why the Internet drops =
packets rather than queueing them,<br class=3D"">&gt; and why diffserv =
cannot work.<br class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt; =
(I know the latter is conftroversial, but at the moment, ALL of<br =
class=3D"">&gt; diffserv attempts to talk about end-to-end applicaiton =
specific metrics, but<br class=3D"">&gt; never, ever<br class=3D"">&gt; =
&gt; explains what the diffserv control points actually do w.r.t. what =
the IP<br class=3D"">&gt; layer can actually control. So it is =
meaningless - another violation of the<br class=3D"">&gt; &gt; so-called =
end-to-end principle).<br class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; =
&gt; &gt;<br class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt; =
Networks are about getting packets from here to there, multiplexing<br =
class=3D"">&gt; the underlying resources. That's it. Quality is a whole =
different thing. Quality<br class=3D"">&gt; can<br class=3D"">&gt; &gt; =
be improved by end-to-end approaches, if the underlying network =
provides<br class=3D"">&gt; some kind of thing that actually creates a =
way for end-to-end applications to<br class=3D"">&gt; &gt; affect =
queueing and routing decisions, and more importantly getting<br =
class=3D"">&gt; "telemetry" from the network regarding what is actually =
going on with the other<br class=3D"">&gt; &gt; end-to-end users sharing =
the infrastructure.<br class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; &gt; =
&gt;<br class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt; This =
conference won't talk about it this way. So don't waste your<br =
class=3D"">&gt; time.<br class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; =
&gt; &gt;<br class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt;<br =
class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt;<br class=3D"">&gt; =
&gt; &gt;<br class=3D"">&gt; &gt; &gt; On Wednesday, June 30, 2021 =
8:12pm, "Dave Taht"<br class=3D"">&gt; &lt;<a =
href=3D"mailto:dave.taht@gmail.com" target=3D"_blank" =
class=3D"">dave.taht@gmail.com</a> &lt;<a =
href=3D"mailto:dave.taht@gmail.com" target=3D"_blank" =
class=3D"">mailto:dave.taht@gmail.com</a>&gt;&gt; said:<br class=3D"">&gt;=
 &gt; &gt;<br class=3D"">&gt; &gt; &gt; &gt; The program committee =
members are *amazing*. Perhaps, finally,<br class=3D"">&gt; we can<br =
class=3D"">&gt; &gt; &gt; &gt; move the bar for the internet's quality =
metrics past endless,<br class=3D"">&gt; blind<br class=3D"">&gt; &gt; =
&gt; &gt; repetitions of speedtest.<br class=3D"">&gt; &gt; &gt; &gt;<br =
class=3D"">&gt; &gt; &gt; &gt; For complete details, please see:<br =
class=3D"">&gt; &gt; &gt; &gt; <a =
href=3D"https://www.iab.org/activities/workshops/network-quality/" =
target=3D"_blank" =
class=3D"">https://www.iab.org/activities/workshops/network-quality/</a><b=
r class=3D"">&gt; &lt;<a =
href=3D"https://www.iab.org/activities/workshops/network-quality/" =
target=3D"_blank" =
class=3D"">https://www.iab.org/activities/workshops/network-quality/</a>&g=
t;<br class=3D"">&gt; &gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt; &gt; =
Submissions Due: Monday 2nd August 2021, midnight AOE<br class=3D"">&gt; =
(Anywhere On Earth)<br class=3D"">&gt; &gt; &gt; &gt; Invitations Issued =
by: Monday 16th August 2021<br class=3D"">&gt; &gt; &gt; &gt;<br =
class=3D"">&gt; &gt; &gt; &gt; Workshop Date: This will be a virtual =
workshop, spread over<br class=3D"">&gt; three days:<br class=3D"">&gt; =
&gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt; &gt; 1400-1800 UTC Tue 14th =
September 2021<br class=3D"">&gt; &gt; &gt; &gt; 1400-1800 UTC Wed 15th =
September 2021<br class=3D"">&gt; &gt; &gt; &gt; 1400-1800 UTC Thu 16th =
September 2021<br class=3D"">&gt; &gt; &gt; &gt;<br class=3D"">&gt; &gt; =
&gt; &gt; Workshop co-chairs: Wes Hardaker, Evgeny Khorov, Omer =
Shapira<br class=3D"">&gt; &gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt; =
&gt; The Program Committee members:<br class=3D"">&gt; &gt; &gt; &gt;<br =
class=3D"">&gt; &gt; &gt; &gt; Jari Arkko, Olivier Bonaventure, Vint =
Cerf, Stuart Cheshire,<br class=3D"">&gt; Sam<br class=3D"">&gt; &gt; =
&gt; &gt; Crowford, Nick Feamster, Jim Gettys, Toke =
Hoiland-Jorgensen,<br class=3D"">&gt; Geoff<br class=3D"">&gt; &gt; &gt; =
&gt; Huston, Cullen Jennings, Katarzyna Kosek-Szott, Mirja<br =
class=3D"">&gt; Kuehlewind,<br class=3D"">&gt; &gt; &gt; &gt; Jason =
Livingood, Matt Mathias, Randall Meyer, Kathleen<br class=3D"">&gt; =
Nichols,<br class=3D"">&gt; &gt; &gt; &gt; Christoph Paasch, Tommy =
Pauly, Greg White, Keith Winstein.<br class=3D"">&gt; &gt; &gt; &gt;<br =
class=3D"">&gt; &gt; &gt; &gt; Send Submissions to: <a =
href=3D"mailto:network-quality-workshop-pc@iab.org" target=3D"_blank" =
class=3D"">network-quality-workshop-pc@iab.org</a><br class=3D"">&gt; =
&lt;<a href=3D"mailto:network-quality-workshop-pc@iab.org" =
target=3D"_blank" =
class=3D"">mailto:network-quality-workshop-pc@iab.org</a>&gt;.<br =
class=3D"">&gt; &gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt; &gt; =
Position papers from academia, industry, the open source<br =
class=3D"">&gt; community and<br class=3D"">&gt; &gt; &gt; &gt; others =
that focus on measurements, experiences, observations<br class=3D"">&gt; =
and<br class=3D"">&gt; &gt; &gt; &gt; advice for the future are welcome. =
Papers that reflect<br class=3D"">&gt; experience<br class=3D"">&gt; =
&gt; &gt; &gt; based on deployed services are especially welcome. The<br =
class=3D"">&gt; organizers<br class=3D"">&gt; &gt; &gt; &gt; understand =
that specific actions taken by operators are<br class=3D"">&gt; unlikely =
to be<br class=3D"">&gt; &gt; &gt; &gt; discussed in detail, so papers =
discussing general categories<br class=3D"">&gt; of<br class=3D"">&gt; =
&gt; &gt; &gt; actions and issues without naming specific =
technologies,<br class=3D"">&gt; products, or<br class=3D"">&gt; &gt; =
&gt; &gt; other players in the ecosystem are expected. Papers should =
not<br class=3D"">&gt; focus<br class=3D"">&gt; &gt; &gt; &gt; on =
specific protocol solutions.<br class=3D"">&gt; &gt; &gt; &gt;<br =
class=3D"">&gt; &gt; &gt; &gt; The workshop will be by invitation only. =
Those wishing to<br class=3D"">&gt; attend<br class=3D"">&gt; &gt; &gt; =
&gt; should submit a position paper to the address above; it may<br =
class=3D"">&gt; take the<br class=3D"">&gt; &gt; &gt; &gt; form of an =
Internet-Draft.<br class=3D"">&gt; &gt; &gt; &gt;<br class=3D"">&gt; =
&gt; &gt; &gt; All inputs submitted and considered relevant will be =
published<br class=3D"">&gt; on the<br class=3D"">&gt; &gt; &gt; &gt; =
workshop website. The organisers will decide whom to invite<br =
class=3D"">&gt; based on<br class=3D"">&gt; &gt; &gt; &gt; the =
submissions received. Sessions will be organized according<br =
class=3D"">&gt; to<br class=3D"">&gt; &gt; &gt; &gt; content, and not =
every accepted submission or invited attendee<br class=3D"">&gt; will<br =
class=3D"">&gt; &gt; &gt; &gt; have an opportunity to present as the =
intent is to foster<br class=3D"">&gt; discussion<br class=3D"">&gt; =
&gt; &gt; &gt; and not simply to have a sequence of presentations.<br =
class=3D"">&gt; &gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt; &gt; =
Position papers from those not planning to attend the virtual<br =
class=3D"">&gt; sessions<br class=3D"">&gt; &gt; &gt; &gt; themselves =
are also encouraged. A workshop report will be<br class=3D"">&gt; =
published<br class=3D"">&gt; &gt; &gt; &gt; afterwards.<br class=3D"">&gt;=
 &gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt; &gt; Overview:<br =
class=3D"">&gt; &gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt; &gt; "We =
believe that one of the major factors behind this lack of<br =
class=3D"">&gt; progress<br class=3D"">&gt; &gt; &gt; &gt; is the =
popular perception that throughput is the often sole<br class=3D"">&gt; =
measure of<br class=3D"">&gt; &gt; &gt; &gt; the quality of Internet =
connectivity. With such narrow focus,<br class=3D"">&gt; people<br =
class=3D"">&gt; &gt; &gt; &gt; don=E2=80=99t consider questions such =
as:<br class=3D"">&gt; &gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt; &gt; =
What is the latency under typical working conditions?<br class=3D"">&gt; =
&gt; &gt; &gt; How reliable is the connectivity across longer time =
periods?<br class=3D"">&gt; &gt; &gt; &gt; Does the network allow the =
use of a broad range of protocols?<br class=3D"">&gt; &gt; &gt; &gt; =
What services can be run by clients of the network?<br class=3D"">&gt; =
&gt; &gt; &gt; What kind of IPv4, NAT or IPv6 connectivity is offered, =
and<br class=3D"">&gt; are there firewalls?<br class=3D"">&gt; &gt; &gt; =
&gt; What security mechanisms are available for local services,<br =
class=3D"">&gt; such as DNS?<br class=3D"">&gt; &gt; &gt; &gt; To what =
degree are the privacy, confidentiality, integrity<br class=3D"">&gt; =
and<br class=3D"">&gt; &gt; &gt; &gt; authenticity of user =
communications guarded?<br class=3D"">&gt; &gt; &gt; &gt;<br =
class=3D"">&gt; &gt; &gt; &gt; Improving these aspects of network =
quality will likely depend<br class=3D"">&gt; on<br class=3D"">&gt; &gt; =
&gt; &gt; measurement and exposing metrics to all involved parties,<br =
class=3D"">&gt; including to<br class=3D"">&gt; &gt; &gt; &gt; end users =
in a meaningful way. Such measurements and exposure<br class=3D"">&gt; =
of the<br class=3D"">&gt; &gt; &gt; &gt; right metrics will allow =
service providers and network<br class=3D"">&gt; operators to<br =
class=3D"">&gt; &gt; &gt; &gt; focus on the aspects that impacts the =
users=E2=80=99 experience<br class=3D"">&gt; most and at<br =
class=3D"">&gt; &gt; &gt; &gt; the same time empowers users to choose =
the Internet service<br class=3D"">&gt; that will<br class=3D"">&gt; =
&gt; &gt; &gt; give them the best experience."<br class=3D"">&gt; &gt; =
&gt; &gt;<br class=3D"">&gt; &gt; &gt; &gt;<br class=3D"">&gt; &gt; &gt; =
&gt; --<br class=3D"">&gt; &gt; &gt; &gt; Latest Podcast:<br =
class=3D"">&gt; &gt; &gt; &gt;<br class=3D"">&gt; <a =
href=3D"https://www.linkedin.com/feed/update/urn:li:activity:6791014284936=
785920/" target=3D"_blank" =
class=3D"">https://www.linkedin.com/feed/update/urn:li:activity:6791014284=
936785920/</a><br class=3D"">&gt; &lt;<a =
href=3D"https://www.linkedin.com/feed/update/urn:li:activity:6791014284936=
785920/" target=3D"_blank" =
class=3D"">https://www.linkedin.com/feed/update/urn:li:activity:6791014284=
936785920/</a>&gt;<br class=3D"">&gt; &gt; &gt; &gt;<br class=3D"">&gt; =
&gt; &gt; &gt; Dave T=C3=A4ht CTO, TekLibre, LLC<br class=3D"">&gt; &gt; =
&gt; &gt; _______________________________________________<br =
class=3D"">&gt; &gt; &gt; &gt; Cerowrt-devel mailing list<br =
class=3D"">&gt; &gt; &gt; &gt; <a =
href=3D"mailto:Cerowrt-devel@lists.bufferbloat.net" target=3D"_blank" =
class=3D"">Cerowrt-devel@lists.bufferbloat.net</a><br class=3D"">&gt; =
&lt;<a href=3D"mailto:Cerowrt-devel@lists.bufferbloat.net" =
target=3D"_blank" =
class=3D"">mailto:Cerowrt-devel@lists.bufferbloat.net</a>&gt;<br =
class=3D"">&gt; &gt; &gt; &gt; <a =
href=3D"https://lists.bufferbloat.net/listinfo/cerowrt-devel" =
target=3D"_blank" =
class=3D"">https://lists.bufferbloat.net/listinfo/cerowrt-devel</a><br =
class=3D"">&gt; &lt;<a =
href=3D"https://lists.bufferbloat.net/listinfo/cerowrt-devel" =
target=3D"_blank" =
class=3D"">https://lists.bufferbloat.net/listinfo/cerowrt-devel</a>&gt;<br=
 class=3D"">&gt; &gt; &gt; &gt;<br class=3D"">&gt; &gt;<br class=3D"">&gt;=
 &gt;<br class=3D"">&gt; &gt;<br class=3D"">&gt; &gt; --<br =
class=3D"">&gt; &gt; Latest Podcast:<br class=3D"">&gt; &gt; <a =
href=3D"https://www.linkedin.com/feed/update/urn:li:activity:6791014284936=
785920/" target=3D"_blank" =
class=3D"">https://www.linkedin.com/feed/update/urn:li:activity:6791014284=
936785920/</a><br class=3D"">&gt; &lt;<a =
href=3D"https://www.linkedin.com/feed/update/urn:li:activity:6791014284936=
785920/" target=3D"_blank" =
class=3D"">https://www.linkedin.com/feed/update/urn:li:activity:6791014284=
936785920/</a>&gt;<br class=3D"">&gt; &gt;<br class=3D"">&gt; &gt; Dave =
T=C3=A4ht CTO, TekLibre, LLC<br class=3D"">&gt; &gt; =
_______________________________________________<br class=3D"">&gt; &gt; =
Make-wifi-fast mailing list<br class=3D"">&gt; &gt; <a =
href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_blank" =
class=3D"">Make-wifi-fast@lists.bufferbloat.net</a><br class=3D"">&gt; =
&lt;<a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" =
target=3D"_blank" =
class=3D"">mailto:Make-wifi-fast@lists.bufferbloat.net</a>&gt;<br =
class=3D"">&gt; &gt; <a =
href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" =
target=3D"_blank" =
class=3D"">https://lists.bufferbloat.net/listinfo/make-wifi-fast</a><br =
class=3D"">&gt; &lt;<a =
href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" =
target=3D"_blank" =
class=3D"">https://lists.bufferbloat.net/listinfo/make-wifi-fast</a>&gt;<b=
r class=3D"">&gt; &gt;<br class=3D"">&gt; &gt;<br class=3D"">&gt; &gt; =
This electronic communication and the information and any files =
transmitted<br class=3D"">&gt; with it, or attached to it, are =
confidential and are intended solely for the use<br class=3D"">&gt; =
of<br class=3D"">&gt; &gt; the individual or entity to whom it is =
addressed and may contain information<br class=3D"">&gt; that is =
confidential, legally privileged, protected by privacy laws, or =
otherwise<br class=3D"">&gt; &gt; restricted from disclosure to anyone =
else. If you are not the intended<br class=3D"">&gt; recipient or the =
person responsible for delivering the e-mail to the intended<br =
class=3D"">&gt; recipient,<br class=3D"">&gt; &gt; you are hereby =
notified that any use, copying, distributing, dissemination,<br =
class=3D"">&gt; forwarding, printing, or copying of this e-mail is =
strictly prohibited. If you<br class=3D"">&gt; &gt; received this e-mail =
in error, please return the e-mail to the sender, delete<br =
class=3D"">&gt; it from your computer, and destroy any printed copy of =
it.<br class=3D"">&gt; &gt;<br class=3D"">&gt; &gt; =
_______________________________________________<br class=3D"">&gt; &gt; =
Starlink mailing list<br class=3D"">&gt; &gt; <a =
href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank" =
class=3D"">Starlink@lists.bufferbloat.net</a><br class=3D"">&gt; &gt; <a =
href=3D"https://lists.bufferbloat.net/listinfo/starlink" target=3D"_blank"=
 class=3D"">https://lists.bufferbloat.net/listinfo/starlink</a><br =
class=3D"">&gt; &gt;<br class=3D"">&gt; <br class=3D"">&gt; <br =
class=3D"">&gt; --<br class=3D"">&gt; Ben Greear &lt;<a =
href=3D"mailto:greearb@candelatech.com" target=3D"_blank" =
class=3D"">greearb@candelatech.com</a>&gt;<br class=3D"">&gt; Candela =
Technologies Inc <a href=3D"http://www.candelatech.com/" target=3D"_blank"=
 class=3D"">http://www.candelatech.com</a><br class=3D"">&gt;</div>
</div>
_______________________________________________<br class=3D"">Starlink =
mailing list<br class=3D""><a =
href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank" =
class=3D"">Starlink@lists.bufferbloat.net</a><br class=3D""><a =
href=3D"https://lists.bufferbloat.net/listinfo/starlink" target=3D"_blank"=
 class=3D"">https://lists.bufferbloat.net/listinfo/starlink</a></div>
</blockquote>
</div>
</div>
</div>
_______________________________________________<br class=3D""> =
Make-wifi-fast mailing list<br class=3D""><a =
href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_blank" =
class=3D"">Make-wifi-fast@lists.bufferbloat.net</a><br class=3D""><a =
rel=3D"noreferrer" =
href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" =
target=3D"_blank" =
class=3D"">https://lists.bufferbloat.net/listinfo/make-wifi-fast</a></bloc=
kquote>
</div>
</div>
</div>
</div>
</div></font></div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_422EA467-017F-4539-8634-56F78D0A0508--

--===============1295384816189688128==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1295384816189688128==--

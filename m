Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB093C368A
	for <lists+cake@lfdr.de>; Sat, 10 Jul 2021 21:51:52 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 143903CBC7;
	Sat, 10 Jul 2021 15:51:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1625946675;
	bh=AgATZd3JYlI+LtvQ4M/Fk2PRQolXVXRzubCJM3B6KUs=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=gLlkdt+WmEbkw/53siT21Dz2Okzjrh8clN/dj/fRWsdGCCuHr2Nk+JxQk4q6ikAgE
	 gw4yJsz/QFcLQ2ys+e7tSfTs+4toiCx1xRsWrfZ4nvwXAQJb9B4lD1IBBFynoWYRs5
	 ELJfU6KaBcWqUJZ7XCdn/E4Oec74OephIcTfh9v+f8WxOvpnLcRMYHBm68LzOOzVXD
	 ZEZztDTrD9IBZa4ywdpPBgWJvBeW+WbmLSVUkAlj5PDudOr/y3MWBSlHEicXY1/g5Q
	 myq3XzHKePnmnEK7iYlrGduqm8Zz44nR296yLStlMrWtMFDbzlnEoWiw6fVzrz8kok
	 rSYLBz5iTw5Ig==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 769463CBC7
 for <cake@lists.bufferbloat.net>; Sat, 10 Jul 2021 15:51:13 -0400 (EDT)
Received: by mail-ej1-x629.google.com with SMTP id o5so23777647ejy.7
 for <cake@lists.bufferbloat.net>; Sat, 10 Jul 2021 12:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FLdswf6fahTLjOG8BoP/y6B1SYMw3hHfAfsCk1lYyoU=;
 b=UjCy3ATHjqRKLsaWGQwkqCAl725lZw1RLP7+yZ5W1sMF9onJ3KOlGYmQ4iKORD8U3H
 xCf/NogeveunmmxaNFCd8q3HK3i0VgIWAL3oaKO90nUwnSp5DHEppaDtObJ4Vag8IMDX
 AUjAn9itL0H0HwRspeyX+e5LsmvLGhvUYsOXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FLdswf6fahTLjOG8BoP/y6B1SYMw3hHfAfsCk1lYyoU=;
 b=B+vlCa+jVnE38V8kfghPVozvRTSDzHVWqZJxpmQB3ZbO4sWyTS//K74O7TF1vXdox8
 pbZsISDNkOy7aSvnfcz6zTxPqEPgGgj0CyLUfRIr8+7b0fhswvrOxBPvoDtP9+D8bqhJ
 SyL8+SCJ1PhY7kyJqNceBNWO/qRIDHuq86QgwrVU/a+QEReKfxAR+8cKub5VNFGdDl77
 66wcPhKImYty8Yc7BgKLK7hmr+QFB8KAzYPIlo1UDQFvuFqVPhuiLKY2nXxOgHmOrj12
 Zt9J9iVlKQ82WINh9fXSaqfJszYEAMoqhUsXZmqE5ro2uwRm8yHxNY/CV6i3PBKeDBSM
 9RXg==
X-Gm-Message-State: AOAM533valGjaeH5J4B0NDKTpDOoEL1sanG3129RjP8f7EWpGj+lIXAl
 1jw1SNphQgp8sLM9DDlvcYQ2YDBGeetC3+u44mEo6iE88i1YAd5FQEgdID+6R7q/MYzSSjDcux1
 A1ZDf1yzdKNWPZN8E+l+Dd6UuXDBs
X-Google-Smtp-Source: ABdhPJxw3Nfgjv3yJ58LmCgA/xXLobF5YtkxoB9bZsoBm6o/ZiIJd+KB1CCFMiIl2Ie1usIeK+BJktWI0lx2J1FzwPg=
X-Received: by 2002:a17:907:2bc7:: with SMTP id
 gv7mr45488270ejc.417.1625946672013; 
 Sat, 10 Jul 2021 12:51:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <1625859083.09751240@apps.rackspace.com>
 <8C38E940-8B97-4767-A39B-25F043AE0856@cs.ucla.edu>
In-Reply-To: <8C38E940-8B97-4767-A39B-25F043AE0856@cs.ucla.edu>
Date: Sat, 10 Jul 2021 12:51:00 -0700
Message-ID: <CAHb6Lvocev7NkXcFypZ_UpevAfEuU+0yVS9tgFi+2pUgvyuUyQ@mail.gmail.com>
To: Leonard Kleinrock <lk@cs.ucla.edu>
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
From: Bob McMahon via Cake <cake@lists.bufferbloat.net>
Reply-To: Bob McMahon <bob.mcmahon@broadcom.com>
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 starlink@lists.bufferbloat.net, codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: multipart/mixed; boundary="===============5823390513258707128=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5823390513258707128==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000d7e68f05c6ca35dc"

--000000000000d7e68f05c6ca35dc
Content-Type: multipart/alternative; boundary="000000000000cfe17505c6ca35ba"

--000000000000cfe17505c6ca35ba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

"Analyzing that is really difficult, and if we don=E2=80=99t measure and se=
nse, we
have no hope of understanding, controlling, or ameliorating such
situations."

It is truly a high honor to observe the queueing theory and control theory
discussions to the world class experts here. We simple test guys must
measure things and we'd like those things to be generally useful to all who
can help towards improvements. Hence back to my original question, what
network, or other, telemetry do experts here see as useful towards
measuring active traffic to help with this?

Just some background, and my apologies for the indulgence, but we'd like
our automation rigs to be able to better emulate "real world scenarios" and
use stochastic based regression type signals when something goes wrong
which, for us, is typically a side effect to a driver or firmware code
change and commit. (Humans need machine level support for this.) It's also
very frustrating that modern data centers aren't generally providing GPS
atomic time to servers. (I think part of the idea behind IP packets, etc.
was to mitigate fault domains and the PSTN stratum clocks were a huge weak
point.) I find, today, not having a common clock reference "accurate and
precise enough" is hindering progress towards understanding the complexity
and towards the ameliorating, at least from our attempts to map "bothersome
to machine and/or humans and relevant real world phenomenon" into our
automation environments allowing us to catch things early in the eng life
cycle.

A few of us have pushed over the last five or more years to add one way
delay (OWD) of the test traffic (which is not the same as 1/2 RTT nor an
ICMP ping delay) into iperf 2. That code is available to anyone. The lack
of adoption applied to OWD has been disheartening. One common response has
been, "We don't need that because users can't get their devices sync'd
to the atomic clock anyway." (Also 3 is a larger number than 2 so iperf3
must be better than iperf2 so let us keep using that as our measurement
tool - though I digress  ;) ;)

Bob

PS. One can get a stratum 1 clock with a raspberry pi working in a home for
about $200. I've got one in my home (along with a $2500 OCXO from
spectracom) and the Pi is reasonable.
https://www.satsignal.eu/ntp/Raspberry-Pi-NTP.html

On Fri, Jul 9, 2021 at 4:01 PM Leonard Kleinrock <lk@cs.ucla.edu> wrote:

> David,
>
> No question that non-stationarity and instability are what we often see i=
n
> networks.  And, non-stationarity and instability are both topics that lea=
d
> to very complex analytical problems in queueing theory.  You can find som=
e
> results on the transient analysis in the queueing theory literature
> (including the second volume of my Queueing Systems book), but they are
> limited and hard. Nevertheless, the literature does contain some works on
> transient analysis of queueing systems as applied to network congestion
> control - again limited. On the other hand, as you said, control theory
> addresses stability head on and does offer some tools as well, but again,
> it is hairy.
>
> Averages are only averages, but they can provide valuable information. Fo=
r
> sure, latency can and does confound behavior.  But, as you point out, it =
is
> the proliferation of control protocols that are, in some cases, deployed
> willy-nilly in networks without proper evaluation of their behavior that
> can lead to the nasty cycle of large transient latency, frantic repeating
> of web requests, protocols sending multiple copies, lack of awareness of
> true capacity or queue size or throughput, etc, all of which you articula=
te
> so well, create the chaos and frustration in the network.  Analyzing that
> is really difficult, and if we don=E2=80=99t measure and sense, we have n=
o hope of
> understanding, controlling, or ameliorating such situations.
>
> Len
>
> On Jul 9, 2021, at 12:31 PM, David P. Reed <dpreed@deepplum.com> wrote:
>
> Len - I admit I made a mistake in challenging Little's Law as being based
> on Poisson processes. It is more general. But it tells you an "average" i=
n
> its base form, and latency averages are not useful for end user
> applications.
>
>
> However, Little's Law does assume something that is not actually valid
> about the kind of distributions seen in the network, and in fact, it is N=
OT
> true that networks converge on Poisson arrival times.
>
>
> The key issue is well-described in the sandard analysis of the M/M/1 queu=
e
> (e.g. https://en.wikipedia.org/wiki/M/M/1_queue) , which is done only for
> Poisson processes, and is also limited to "stable" systems. But networks
> are never stable when fully loaded. They get unstable and those
> instabilities persist for a long time in the network. Instability is at
> core the underlying *requirement* of the Internet's usage.
>
>
> So specifically: real networks, even large ones, and certainly the
> Internet today, are not asymptotic limits of sums of stationary stochasti=
c
> arrival processes. Each esternal terminal of any real network has a real
> user there, running a real application, and the network is a complex grap=
h.
> This makes it completely unlike a single queue. Even the links within a
> network carry a relatively small number of application flows. There's no
> ability to apply the Law of Large Numbers to the distributions, because a=
ny
> particular path contains only a small number of serialized flows with
> hightly variable rates.
>
>
> Here's an example of what really happens in a real network (I've observed
> this in 5 different cities on ATT's cellular network, back when it was
> running Alcatel Lucent HSPA+ gear in those cities).
> But you can see this on any network where transient overload occurs,
> creating instability.
>
>
>
>
> At 7 AM, the data transmission of the network is roughty stable. That's
> because no links are overloaded within the network. Little's Law can tell
> you by observing the delay and throughput on any path that the average
> delay in the network is X.
>
>
> Continue sampling delay in the network as the day wears on. At about 10
> AM, ping delay starts to soar into the multiple second range. No packers
> are lost. The peak ping time is about 4000 milliseconds - 4 seconds in mo=
st
> of the networks. This is in downtown, no radio errors are reported, no li=
nk
> errors.
> So it is all queueing delay.
>
>
> Now what Little's law doesn't tell you much about average delay, because
> clearly *some* subpiece of the network is fully saturated. But what is
> interesting here is what is happening and where. You can't tell what is
> saturated, and in fact the entire network is quite unstable, because the
> peak is constantly varying and you don't know where the throughput is. Al=
l
> the packets are now arriving 4 seconds or so later.
>
>
> Why is the situaton not worse than 4 seconds? Well, there are multiple
> things going on:
>
>
> 1) TCP may be doing a lot of retransmissions (non-Poisson at all, not
> random either. The arrival process is entirely deterministic in each
> source, based on the retransmission timeout) or it may not be.
>
>
> 2) Users are pissed off, because they clicked on a web page, and got
> nothing back. They retry on their screen, or they try another site.
> Meanwhile, the underlying TCP connection remains there, pumping the netwo=
rk
> full of more packets on that old path, which is still backed up with
> packets that haven't been delivered that are sitting in queues. The real
> arrival process is not Poisson at all, its a deterministic, repeated
> retrsnsmission plus a new attempt to connect to a new site.
>
>
> 3) When the users get a web page back eventually, it is filled with names
> of other pieces needed to display that web page, which causes some number
> (often as many as 100) new pages to be fetched, ALL at the same time.
> Certainly not a stochastic process that will just obey the law of large
> numbers.
>
>
> All of these things are the result of initial instability, causing queues
> to build up.
>
>
> So what is the state of the system? is it stable? is it stochastic? Is it
> the sum of enough stochastic stable flows to average out to Poisson?
>
>
> The answer is clearly NO. Control theory (not queuing theory) suggests
> that this system is completely uncontrolled and unstable.
>
>
> So if the system is in this state, what does Little's Lemma tell us? What
> is the meaning of that hightly variable 4 second delay on ping packets, i=
n
> terms of average utilizaton of the network?
>
>
> We don't even know what all the users really might need, if the system
> hadn't become unstable, because some users have given up, and others are
> trying even harder, and new users are arriving.
>
>
> What we do know, because ATT (at my suggestion) reconfigured their system
> after blaming Apple Computer company for "bugs" in the original iPhone in
> public, is that simply *dropping* packets sitting in queues more than a
> couple milliseconds MADE THE USERS HAPPY. Apparently the required capacit=
y
> was there all along!
>
>
> So I conclude that the 4 second delay was the largest delay users could
> barely tolerate before deciding the network was DOWN and going away. And
> that the backup was the accumulation of useless packets sitting in queues
> because none of the end systems were receiving congestion signals (which
> for the Internet stack begins with packet dropping).
>
>
> I should say that most operators, and especially ATT in this case, do not
> measure end-to-end latency. Instead they use Little's Lemma to query
> routers for their current throughput in bits per second, and calculate
> latency as if Little's Lemma applied. This results in reports to manageme=
nt
> that literally say:
>
>
>   The network is not dropping packets, utilization is near 100% on many o=
f
> our switches and routers.
>
>
> And management responds, Hooray! Because utilization of 100% of their
> hardware is their investors' metric of maximizing profits. The hardware
> they are operating is fully utilized. No waste! And users are happy becau=
se
> no packets have been dropped!
>
>
> Hmm... what's wrong with this picture? I can see why Donovan, CTO, would
> accuse Apple of lousy software that was ruining iPhone user experience!
> His network was operating without ANY problems.
> So it must be Apple!
>
>
> Well, no. The entire problem, as we saw when ATT just changed to shorten
> egress queues and drop packets when the egress queues overflowed, was tha=
t
> ATT's network was amplifying instability, not at the link level, but at t=
he
> network level.
>
>
> And queueing theory can help with that, but *intro queueing theory* canno=
t.
>
>
> And a big part of that problem is the pervasive belief that, at the
> network boundary, *Poisson arrival* is a reasonable model for use in all
> cases.
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
>
>
>
>
>
> On Friday, July 9, 2021 6:05am, "Luca Muscariello" <muscariello@ieee.org>
> said:
>
> For those who might be interested in Little's law
> there is a nice paper by John Little on the occasion
> of the 50th anniversary  of the result.
>
> https://www.informs.org/Blogs/Operations-Research-Forum/Little-s-Law-as-V=
iewed-on-its-50th-Anniversary
>
> https://www.informs.org/content/download/255808/2414681/file/little_paper=
.pdf
>
> Nice read.
> Luca
>
> P.S.
> Who has not a copy of L. Kleinrock's books? I do have and am not ready to
> lend them!
> On Fri, Jul 9, 2021 at 11:01 AM Leonard Kleinrock <lk@cs.ucla.edu> wrote:
>
>> David,
>> I totally appreciate  your attention to when and when not analytical
>> modeling works. Let me clarify a few things from your note.
>> First, Little's law (also known as Little=E2=80=99s lemma or, as I use i=
n my
>> book, Little=E2=80=99s result) does not assume Poisson arrivals -  it is=
 good for
>> *any* arrival process and any service process and is an equality between
>> time averages.  It states that the time average of the number in a syste=
m
>> (for a sample path *w)* is equal to the average arrival rate to the
>> system multiplied by the time-averaged time in the system for that sampl=
e
>> path.  This is often written as   NTimeAvg =3D=CE=BB=C2=B7TTimeAvg .  Mo=
reover, if
>> the system is also ergodic, then the time average equals the ensemble
>> average and we often write it as N =CC=84 =3D =CE=BB T =CC=84 .  In any =
case, this
>> requires neither Poisson arrivals nor exponential service times.
>>
>> Queueing theorists often do study the case of Poisson arrivals.  True, i=
t
>> makes the analysis easier, yet there is a better reason it is often used=
,
>> and that is because the sum of a large number of independent stationary
>> renewal processes approaches a Poisson process.  So nature often gives u=
s
>> Poisson arrivals.
>> Best,
>> Len
>>
>> On Jul 8, 2021, at 12:38 PM, David P. Reed <dpreed@deepplum.com> wrote:
>>
>> I will tell you flat out that the arrival time distribution assumption
>> made by Little's Lemma that allows "estimation of queue depth" is totall=
y
>> unreasonable on ANY Internet in practice.
>>
>>
>> The assumption is a Poisson Arrival Process. In reality, traffic arrival=
s
>> in real internet applications are extremely far from Poisson, and, of
>> course, using TCP windowing, become highly intercorrelated with crossing
>> traffic that shares the same queue.
>>
>>
>> So, as I've tried to tell many, many net-heads (people who ignore
>> applications layer behavior, like the people that think latency doesn't
>> matter to end users, only throughput), end-to-end packet arrival times o=
n a
>> practical network are incredibly far from Poisson - and they are more li=
ke
>> fractal probability distributions, very irregular at all scales of time.
>>
>>
>> So, the idea that iperf can estimate queue depth by Little's Lemma by
>> just measuring saturation of capacity of a path is bogus.The less Poisso=
n,
>> the worse the estimate gets, by a huge factor.
>>
>>
>>
>>
>> Where does the Poisson assumption come from?  Well, like many theorems,
>> it is the simplest tractable closed form solution - it creates a simplif=
ied
>> view, by being a "single-parameter" distribution (the parameter is calle=
d
>> lambda for a Poisson distribution).  And the analysis of a simple queue
>> with poisson arrival distribution and a static, fixed service time is th=
e
>> first interesting Queueing Theory example in most textbooks. It is
>> suggestive of an interesting phenomenon, but it does NOT characterize an=
y
>> real system.
>>
>>
>> It's the queueing theory equivalent of "First, we assume a spherical
>> cow...". in doing an example in a freshman physics class.
>>
>>
>> Unfortunately, most networking engineers understand neither queuing
>> theory nor application networking usage in interactive applications. Whi=
ch
>> makes them arrogant. They assume all distributions are poisson!
>>
>>
>>
>>
>> On Tuesday, July 6, 2021 9:46am, "Ben Greear" <greearb@candelatech.com>
>> said:
>>
>> > Hello,
>> >
>> > I am interested to hear wish lists for network testing features. We
>> make test
>> > equipment, supporting lots
>> > of wifi stations and a distributed architecture, with built-in udp,
>> tcp, ipv6,
>> > http, ... protocols,
>> > and open to creating/improving some of our automated tests.
>> >
>> > I know Dave has some test scripts already, so I'm not necessarily
>> looking to
>> > reimplement that,
>> > but more fishing for other/new ideas.
>> >
>> > Thanks,
>> > Ben
>> >
>> > On 7/2/21 4:28 PM, Bob McMahon wrote:
>> > > I think we need the language of math here. It seems like the network
>> > power metric, introduced by Kleinrock and Jaffe in the late 70s, is
>> something
>> > useful.
>> > > Effective end/end queue depths per Little's law also seems useful.
>> Both are
>> > available in iperf 2 from a test perspective. Repurposing test
>> techniques to
>> > actual
>> > > traffic could be useful. Hence the question around what exact
>> telemetry
>> > is useful to apps making socket write() and read() calls.
>> > >
>> > > Bob
>> > >
>> > > On Fri, Jul 2, 2021 at 10:07 AM Dave Taht <dave.taht@gmail.com
>> > <mailto:dave.taht@gmail.com <dave.taht@gmail.com>>> wrote:
>> > >
>> > > In terms of trying to find "Quality" I have tried to encourage folk =
to
>> > > both read "zen and the art of motorcycle maintenance"[0], and Deming=
's
>> > > work on "total quality management".
>> > >
>> > > My own slice at this network, computer and lifestyle "issue" is aimi=
ng
>> > > for "imperceptible latency" in all things. [1]. There's a lot of
>> > > fallout from that in terms of not just addressing queuing delay, but
>> > > caching, prefetching, and learning more about what a user really nee=
ds
>> > > (as opposed to wants) to know via intelligent agents.
>> > >
>> > > [0] If you want to get depressed, read Pirsig's successor to "zen...=
",
>> > > lila, which is in part about what happens when an engineer hits an
>> > > insoluble problem.
>> > > [1] https://www.internetsociety.org/events/latency2013/
>> > <https://www.internetsociety.org/events/latency2013/>
>> > >
>> > >
>> > >
>> > > On Thu, Jul 1, 2021 at 6:16 PM David P. Reed <dpreed@deepplum.com
>> > <mailto:dpreed@deepplum.com <dpreed@deepplum.com>>> wrote:
>> > > >
>> > > > Well, nice that the folks doing the conference  are willing to
>> > consider that quality of user experience has little to do with
>> signalling rate at
>> > the
>> > > physical layer or throughput of FTP transfers.
>> > > >
>> > > >
>> > > >
>> > > > But honestly, the fact that they call the problem "network quality=
"
>> > suggests that they REALLY, REALLY don't understand the Internet isn't
>> the hardware
>> > or
>> > > the routers or even the routing algorithms *to its users*.
>> > > >
>> > > >
>> > > >
>> > > > By ignoring the diversity of applications now and in the future,
>> > and the fact that we DON'T KNOW what will be coming up, this conferenc=
e
>> will
>> > likely fall
>> > > into the usual trap that net-heads fall into - optimizing for some
>> > imaginary reality that doesn't exist, and in fact will probably never
>> be what
>> > users
>> > > actually will do given the chance.
>> > > >
>> > > >
>> > > >
>> > > > I saw this issue in 1976 in the group developing the original
>> > Internet protocols - a desire to put *into the network* special tricks
>> to optimize
>> > ASR33
>> > > logins to remote computers from terminal concentrators (aka remote
>> > login), bulk file transfers between file systems on different
>> time-sharing
>> > systems, and
>> > > "sessions" (virtual circuits) that required logins. And then trying =
to
>> > exploit underlying "multicast" by building it into the IP layer,
>> because someone
>> > > thought that TV broadcast would be the dominant application.
>> > > >
>> > > >
>> > > >
>> > > > Frankly, to think of "quality" as something that can be "provided"
>> > by "the network" misses the entire point of "end-to-end argument in
>> system
>> > design".
>> > > Quality is not a property defined or created by The Network. If you
>> want
>> > to talk about Quality, you need to talk about users - all the users at
>> all times,
>> > > now and into the future, and that's something you can't do if you
>> don't
>> > bother to include current and future users talking about what they
>> might expect
>> > to
>> > > experience that they don't experience.
>> > > >
>> > > >
>> > > >
>> > > > There was much fighting back in 1976 that basically involved
>> > "network experts" saying that the network was the place to "solve" suc=
h
>> issues as
>> > quality,
>> > > so applications could avoid having to solve such issues.
>> > > >
>> > > >
>> > > >
>> > > > What some of us managed to do was to argue that you can't "solve"
>> > such issues. All you can do is provide a framework that enables
>> different uses to
>> > > *cooperate* in some way.
>> > > >
>> > > >
>> > > >
>> > > > Which is why the Internet drops packets rather than queueing them,
>> > and why diffserv cannot work.
>> > > >
>> > > > (I know the latter is conftroversial, but at the moment, ALL of
>> > diffserv attempts to talk about end-to-end applicaiton specific
>> metrics, but
>> > never, ever
>> > > explains what the diffserv control points actually do w.r.t. what th=
e
>> IP
>> > layer can actually control. So it is meaningless - another violation o=
f
>> the
>> > > so-called end-to-end principle).
>> > > >
>> > > >
>> > > >
>> > > > Networks are about getting packets from here to there, multiplexin=
g
>> > the underlying resources. That's it. Quality is a whole different
>> thing. Quality
>> > can
>> > > be improved by end-to-end approaches, if the underlying network
>> provides
>> > some kind of thing that actually creates a way for end-to-end
>> applications to
>> > > affect queueing and routing decisions, and more importantly getting
>> > "telemetry" from the network regarding what is actually going on with
>> the other
>> > > end-to-end users sharing the infrastructure.
>> > > >
>> > > >
>> > > >
>> > > > This conference won't talk about it this way. So don't waste your
>> > time.
>> > > >
>> > > >
>> > > >
>> > > >
>> > > >
>> > > >
>> > > >
>> > > > On Wednesday, June 30, 2021 8:12pm, "Dave Taht"
>> > <dave.taht@gmail.com <mailto:dave.taht@gmail.com <dave.taht@gmail.com>=
>>
>> said:
>> > > >
>> > > > > The program committee members are *amazing*. Perhaps, finally,
>> > we can
>> > > > > move the bar for the internet's quality metrics past endless,
>> > blind
>> > > > > repetitions of speedtest.
>> > > > >
>> > > > > For complete details, please see:
>> > > > > https://www.iab.org/activities/workshops/network-quality/
>> > <https://www.iab.org/activities/workshops/network-quality/>
>> > > > >
>> > > > > Submissions Due: Monday 2nd August 2021, midnight AOE
>> > (Anywhere On Earth)
>> > > > > Invitations Issued by: Monday 16th August 2021
>> > > > >
>> > > > > Workshop Date: This will be a virtual workshop, spread over
>> > three days:
>> > > > >
>> > > > > 1400-1800 UTC Tue 14th September 2021
>> > > > > 1400-1800 UTC Wed 15th September 2021
>> > > > > 1400-1800 UTC Thu 16th September 2021
>> > > > >
>> > > > > Workshop co-chairs: Wes Hardaker, Evgeny Khorov, Omer Shapira
>> > > > >
>> > > > > The Program Committee members:
>> > > > >
>> > > > > Jari Arkko, Olivier Bonaventure, Vint Cerf, Stuart Cheshire,
>> > Sam
>> > > > > Crowford, Nick Feamster, Jim Gettys, Toke Hoiland-Jorgensen,
>> > Geoff
>> > > > > Huston, Cullen Jennings, Katarzyna Kosek-Szott, Mirja
>> > Kuehlewind,
>> > > > > Jason Livingood, Matt Mathias, Randall Meyer, Kathleen
>> > Nichols,
>> > > > > Christoph Paasch, Tommy Pauly, Greg White, Keith Winstein.
>> > > > >
>> > > > > Send Submissions to: network-quality-workshop-pc@iab.org
>> > <mailto:network-quality-workshop-pc@iab.org
>> <network-quality-workshop-pc@iab.org>>.
>> > > > >
>> > > > > Position papers from academia, industry, the open source
>> > community and
>> > > > > others that focus on measurements, experiences, observations
>> > and
>> > > > > advice for the future are welcome. Papers that reflect
>> > experience
>> > > > > based on deployed services are especially welcome. The
>> > organizers
>> > > > > understand that specific actions taken by operators are
>> > unlikely to be
>> > > > > discussed in detail, so papers discussing general categories
>> > of
>> > > > > actions and issues without naming specific technologies,
>> > products, or
>> > > > > other players in the ecosystem are expected. Papers should not
>> > focus
>> > > > > on specific protocol solutions.
>> > > > >
>> > > > > The workshop will be by invitation only. Those wishing to
>> > attend
>> > > > > should submit a position paper to the address above; it may
>> > take the
>> > > > > form of an Internet-Draft.
>> > > > >
>> > > > > All inputs submitted and considered relevant will be published
>> > on the
>> > > > > workshop website. The organisers will decide whom to invite
>> > based on
>> > > > > the submissions received. Sessions will be organized according
>> > to
>> > > > > content, and not every accepted submission or invited attendee
>> > will
>> > > > > have an opportunity to present as the intent is to foster
>> > discussion
>> > > > > and not simply to have a sequence of presentations.
>> > > > >
>> > > > > Position papers from those not planning to attend the virtual
>> > sessions
>> > > > > themselves are also encouraged. A workshop report will be
>> > published
>> > > > > afterwards.
>> > > > >
>> > > > > Overview:
>> > > > >
>> > > > > "We believe that one of the major factors behind this lack of
>> > progress
>> > > > > is the popular perception that throughput is the often sole
>> > measure of
>> > > > > the quality of Internet connectivity. With such narrow focus,
>> > people
>> > > > > don=E2=80=99t consider questions such as:
>> > > > >
>> > > > > What is the latency under typical working conditions?
>> > > > > How reliable is the connectivity across longer time periods?
>> > > > > Does the network allow the use of a broad range of protocols?
>> > > > > What services can be run by clients of the network?
>> > > > > What kind of IPv4, NAT or IPv6 connectivity is offered, and
>> > are there firewalls?
>> > > > > What security mechanisms are available for local services,
>> > such as DNS?
>> > > > > To what degree are the privacy, confidentiality, integrity
>> > and
>> > > > > authenticity of user communications guarded?
>> > > > >
>> > > > > Improving these aspects of network quality will likely depend
>> > on
>> > > > > measurement and exposing metrics to all involved parties,
>> > including to
>> > > > > end users in a meaningful way. Such measurements and exposure
>> > of the
>> > > > > right metrics will allow service providers and network
>> > operators to
>> > > > > focus on the aspects that impacts the users=E2=80=99 experience
>> > most and at
>> > > > > the same time empowers users to choose the Internet service
>> > that will
>> > > > > give them the best experience."
>> > > > >
>> > > > >
>> > > > > --
>> > > > > Latest Podcast:
>> > > > >
>> >
>> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920=
/
>> > <
>> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920=
/
>> >
>> > > > >
>> > > > > Dave T=C3=A4ht CTO, TekLibre, LLC
>> > > > > _______________________________________________
>> > > > > Cerowrt-devel mailing list
>> > > > > Cerowrt-devel@lists.bufferbloat.net
>> > <mailto:Cerowrt-devel@lists.bufferbloat.net
>> <Cerowrt-devel@lists.bufferbloat.net>>
>> > > > > https://lists.bufferbloat.net/listinfo/cerowrt-devel
>> > <https://lists.bufferbloat.net/listinfo/cerowrt-devel>
>> > > > >
>> > >
>> > >
>> > >
>> > > --
>> > > Latest Podcast:
>> > >
>> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920=
/
>> > <
>> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920=
/
>> >
>> > >
>> > > Dave T=C3=A4ht CTO, TekLibre, LLC
>> > > _______________________________________________
>> > > Make-wifi-fast mailing list
>> > > Make-wifi-fast@lists.bufferbloat.net
>> > <mailto:Make-wifi-fast@lists.bufferbloat.net
>> <Make-wifi-fast@lists.bufferbloat.net>>
>> > > https://lists.bufferbloat.net/listinfo/make-wifi-fast
>> > <https://lists.bufferbloat.net/listinfo/make-wifi-fast>
>> > >
>> > >
>> > > This electronic communication and the information and any files
>> transmitted
>> > with it, or attached to it, are confidential and are intended solely
>> for the use
>> > of
>> > > the individual or entity to whom it is addressed and may contain
>> information
>> > that is confidential, legally privileged, protected by privacy laws, o=
r
>> otherwise
>> > > restricted from disclosure to anyone else. If you are not the intend=
ed
>> > recipient or the person responsible for delivering the e-mail to the
>> intended
>> > recipient,
>> > > you are hereby notified that any use, copying, distributing,
>> dissemination,
>> > forwarding, printing, or copying of this e-mail is strictly prohibited=
.
>> If you
>> > > received this e-mail in error, please return the e-mail to the
>> sender, delete
>> > it from your computer, and destroy any printed copy of it.
>> > >
>> > > _______________________________________________
>> > > Starlink mailing list
>> > > Starlink@lists.bufferbloat.net
>> > > https://lists.bufferbloat.net/listinfo/starlink
>> > >
>> >
>> >
>> > --
>> > Ben Greear <greearb@candelatech.com>
>> > Candela Technologies Inc http://www.candelatech.com
>> >
>> _______________________________________________
>> Starlink mailing list
>> Starlink@lists.bufferbloat.net
>> https://lists.bufferbloat.net/listinfo/starlink
>>
>> _______________________________________________
>> Make-wifi-fast mailing list
>> Make-wifi-fast@lists.bufferbloat.net
>> https://lists.bufferbloat.net/listinfo/make-wifi-fast
>
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

--000000000000cfe17505c6ca35ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&quot;Analyzing that is really difficult, and if we don=E2=
=80=99t measure and sense, we have no hope of understanding, controlling, o=
r ameliorating such situations.&quot;<br><br>It is truly a high honor to ob=
serve the queueing theory and control=C2=A0theory discussions to the world =
class experts here. We simple test guys must measure things and we&#39;d li=
ke those things to be generally useful to all who can help towards improvem=
ents. Hence back to my original question, what network, or other, telemetry=
 do experts here see as useful=C2=A0towards measuring active traffic to hel=
p with this? <br><br>Just some background, and my apologies for the indulge=
nce, but we&#39;d like our automation rigs to be able to better emulate &qu=
ot;real world scenarios&quot; and use stochastic based regression type sign=
als when something goes wrong which, for us, is typically a side effect to =
a driver or firmware code change and commit. (Humans need machine level sup=
port for this.) It&#39;s also very frustrating that modern data centers are=
n&#39;t generally providing GPS atomic time to servers. (I think part of th=
e idea behind IP packets, etc. was to mitigate fault domains and the PSTN s=
tratum clocks were a huge weak point.) I find, today, not having a common c=
lock reference &quot;accurate and precise enough&quot; is hindering=C2=A0pr=
ogress towards understanding=C2=A0the complexity and towards the ameliorati=
ng, at least from our attempts to map &quot;bothersome to machine and/or hu=
mans and relevant real world=C2=A0phenomenon&quot; into our automation=C2=
=A0environments allowing us to catch things early in the eng life cycle.<br=
><br>A few of us have pushed over the last five or more years to add one wa=
y delay (OWD) of the test traffic (which is not the same as 1/2 RTT nor an =
ICMP ping delay) into iperf 2. That code is available to anyone. The lack o=
f adoption applied to OWD has been disheartening. One common response has b=
een, &quot;We don&#39;t need that because users can&#39;t get their devices=
 sync&#39;d to=C2=A0the atomic clock anyway.&quot; (Also 3 is a larger numb=
er than 2 so iperf3 must be better than iperf2 so let us keep using that as=
 our measurement tool - though I digress=C2=A0 ;) ;)<div><br>Bob<br><br>PS.=
 One can get a stratum=C2=A01 clock with a raspberry pi working in a home f=
or about $200. I&#39;ve got one in my home (along with a $2500 OCXO from sp=
ectracom) and the=C2=A0Pi is=C2=A0reasonable.=C2=A0<a href=3D"https://www.s=
atsignal.eu/ntp/Raspberry-Pi-NTP.html">https://www.satsignal.eu/ntp/Raspber=
ry-Pi-NTP.html</a>=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Jul 9, 2021 at 4:01 PM Leonard Kleinr=
ock &lt;<a href=3D"mailto:lk@cs.ucla.edu">lk@cs.ucla.edu</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div style=3D"overf=
low-wrap: break-word;">David,<div><br></div><div>No question that non-stati=
onarity and instability are what we often see in networks.=C2=A0 And, non-s=
tationarity and instability are both topics that lead to very complex analy=
tical problems in queueing theory.=C2=A0 You can find some results on the t=
ransient analysis in the queueing theory literature (including the second v=
olume of my Queueing Systems book), but they are limited and hard. Neverthe=
less, the literature does contain some works on transient analysis of queue=
ing systems as applied to network congestion control - again limited.=C2=A0=
On the other hand, as you said, control theory addresses stability head on =
and does offer some tools as well, but again, it is hairy.=C2=A0</div><div>=
<br></div><div>Averages are only averages, but they can provide valuable in=
formation. For sure, latency can and does confound behavior.=C2=A0 But, as =
you point out, it is the proliferation of control protocols that are, in so=
me cases, deployed willy-nilly in networks without proper evaluation of the=
ir behavior that can lead to the nasty cycle of large transient latency, fr=
antic repeating of web requests, protocols sending multiple copies, lack of=
 awareness of true capacity or queue size or throughput, etc, all of which =
you articulate so well, create the chaos and frustration in the network.=C2=
=A0 Analyzing that is really difficult, and if we don=E2=80=99t measure and=
 sense, we have no hope of understanding, controlling, or ameliorating such=
 situations. =C2=A0</div><div><br></div><div>Len</div><div><div><br><blockq=
uote type=3D"cite"><div>On Jul 9, 2021, at 12:31 PM, David P. Reed &lt;<a h=
ref=3D"mailto:dpreed@deepplum.com" target=3D"_blank">dpreed@deepplum.com</a=
>&gt; wrote:</div><br><div><font face=3D"arial" size=3D"2"><div style=3D"ma=
rgin:0px;padding:0px;font-family:arial;font-size:10pt">Len - I admit I made=
 a mistake in challenging Little&#39;s Law as being based on Poisson proces=
ses. It is more general. But it tells you an &quot;average&quot; in its bas=
e form, and latency averages are not useful for end user applications.</div=
><p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=
=A0</p><div style=3D"margin:0px;padding:0px;font-family:arial;font-size:10p=
t">However, Little&#39;s Law does assume something that is not actually val=
id about the kind of distributions seen in the network, and in fact, it is =
NOT true that networks converge on Poisson arrival times.</div><p style=3D"=
margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</p><div sty=
le=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">The key issu=
e is well-described in the sandard analysis of the M/M/1 queue (e.g. <a hre=
f=3D"https://en.wikipedia.org/wiki/M/M/1_queue" target=3D"_blank">https://e=
n.wikipedia.org/wiki/M/M/1_queue</a>) , which is done only for Poisson proc=
esses, and is also limited to &quot;stable&quot; systems. But networks are =
never stable when fully loaded. They get unstable and those instabilities p=
ersist for a long time in the network. Instability is at core the underlyin=
g *requirement* of the Internet&#39;s usage.</div><p style=3D"margin:0px;pa=
dding:0px;font-family:arial;font-size:10pt">=C2=A0</p><div style=3D"margin:=
0px;padding:0px;font-family:arial;font-size:10pt">So specifically: real net=
works, even large ones, and certainly the Internet today, are not asymptoti=
c limits of sums of stationary stochastic arrival processes. Each esternal =
terminal of any real network has a real user there, running a real applicat=
ion, and the network is a complex graph. This makes it completely unlike a =
single queue. Even the links within a network carry a relatively small numb=
er of application flows. There&#39;s no ability to apply the Law of Large N=
umbers to the distributions, because any particular path contains only a sm=
all number of serialized flows with hightly variable rates.</div><p style=
=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</p><div=
 style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">Here&#39=
;s an example of what really happens in a real network (I&#39;ve observed t=
his in 5 different cities on ATT&#39;s cellular network, back when it was r=
unning Alcatel Lucent HSPA+ gear in those cities).</div><div style=3D"margi=
n:0px;padding:0px;font-family:arial;font-size:10pt">But you can see this on=
 any network where transient overload occurs, creating instability.</div><p=
 style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</=
p><p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=
=A0</p><div style=3D"margin:0px;padding:0px;font-family:arial;font-size:10p=
t">At 7 AM, the data transmission of the network is roughty stable. That&#3=
9;s because no links are overloaded within the network. Little&#39;s Law ca=
n tell you by observing the delay and throughput on any path that the avera=
ge delay in the network is X.</div><p style=3D"margin:0px;padding:0px;font-=
family:arial;font-size:10pt">=C2=A0</p><div style=3D"margin:0px;padding:0px=
;font-family:arial;font-size:10pt">Continue sampling delay in the network a=
s the day wears on. At about 10 AM, ping delay starts to soar into the mult=
iple second range. No packers are lost. The peak ping time is about 4000 mi=
lliseconds - 4 seconds in most of the networks. This is in downtown, no rad=
io errors are reported, no link errors.</div><div style=3D"margin:0px;paddi=
ng:0px;font-family:arial;font-size:10pt">So it is all queueing delay.=C2=A0=
</div><p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=
=C2=A0</p><div style=3D"margin:0px;padding:0px;font-family:arial;font-size:=
10pt">Now what Little&#39;s law doesn&#39;t tell you much about average del=
ay, because clearly *some* subpiece of the network is fully saturated. But =
what is interesting here is what is happening and where. You can&#39;t tell=
 what is saturated, and in fact the entire network is quite unstable, becau=
se the peak is constantly varying and you don&#39;t know where the throughp=
ut is. All the packets are now arriving 4 seconds or so later.</div><p styl=
e=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</p><di=
v style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">Why is =
the situaton not worse than 4 seconds? Well, there are multiple things goin=
g on:</div><p style=3D"margin:0px;padding:0px;font-family:arial;font-size:1=
0pt">=C2=A0</p><div style=3D"margin:0px;padding:0px;font-family:arial;font-=
size:10pt">1) TCP may be doing a lot of retransmissions (non-Poisson at all=
, not random either. The arrival process is entirely deterministic in each =
source, based on the retransmission timeout) or it may not be.</div><p styl=
e=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</p><di=
v style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">2) User=
s are pissed off, because they clicked on a web page, and got nothing back.=
 They retry on their screen, or they try another site. Meanwhile, the under=
lying TCP connection remains there, pumping the network full of more packet=
s on that old path, which is still backed up with packets that haven&#39;t =
been delivered that are sitting in queues. The real arrival process is not =
Poisson at all, its a deterministic, repeated retrsnsmission plus a new att=
empt to connect to a new site.</div><p style=3D"margin:0px;padding:0px;font=
-family:arial;font-size:10pt">=C2=A0</p><div style=3D"margin:0px;padding:0p=
x;font-family:arial;font-size:10pt">3) When the users get a web page back e=
ventually, it is filled with names of other pieces needed to display that w=
eb page, which causes some number (often as many as 100) new pages to be fe=
tched, ALL at the same time. Certainly not a stochastic process that will j=
ust obey the law of large numbers.</div><p style=3D"margin:0px;padding:0px;=
font-family:arial;font-size:10pt">=C2=A0</p><div style=3D"margin:0px;paddin=
g:0px;font-family:arial;font-size:10pt">All of these things are the result =
of initial instability, causing queues to build up.</div><p style=3D"margin=
:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</p><div style=3D"=
margin:0px;padding:0px;font-family:arial;font-size:10pt">So what is the sta=
te of the system? is it stable? is it stochastic? Is it the sum of enough s=
tochastic stable flows to average out to Poisson?</div><p style=3D"margin:0=
px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</p><div style=3D"ma=
rgin:0px;padding:0px;font-family:arial;font-size:10pt">The answer is clearl=
y NO. Control theory (not queuing theory) suggests that this system is comp=
letely uncontrolled and unstable.</div><p style=3D"margin:0px;padding:0px;f=
ont-family:arial;font-size:10pt">=C2=A0</p><div style=3D"margin:0px;padding=
:0px;font-family:arial;font-size:10pt">So if the system is in this state, w=
hat does Little&#39;s Lemma tell us? What is the meaning of that hightly va=
riable 4 second delay on ping packets, in terms of average utilizaton of th=
e network?</div><p style=3D"margin:0px;padding:0px;font-family:arial;font-s=
ize:10pt">=C2=A0</p><div style=3D"margin:0px;padding:0px;font-family:arial;=
font-size:10pt">We don&#39;t even know what all the users really might need=
, if the system hadn&#39;t become unstable, because some users have given u=
p, and others are trying even harder, and new users are arriving.</div><p s=
tyle=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</p>=
<div style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">What=
 we do know, because ATT (at my suggestion) reconfigured their system after=
 blaming Apple Computer company for &quot;bugs&quot; in the original iPhone=
 in public, is that simply *dropping* packets sitting in queues more than a=
 couple milliseconds MADE THE USERS HAPPY. Apparently the required capacity=
 was there all along!=C2=A0</div><p style=3D"margin:0px;padding:0px;font-fa=
mily:arial;font-size:10pt">=C2=A0</p><div style=3D"margin:0px;padding:0px;f=
ont-family:arial;font-size:10pt">So I conclude that the 4 second delay was =
the largest delay users could barely tolerate before deciding the network w=
as DOWN and going away. And that the backup was the accumulation of useless=
 packets sitting in queues because none of the end systems were receiving c=
ongestion signals (which for the Internet stack begins with packet dropping=
).</div><p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt=
">=C2=A0</p><div style=3D"margin:0px;padding:0px;font-family:arial;font-siz=
e:10pt">I should say that most operators, and especially ATT in this case, =
do not measure end-to-end latency. Instead they use Little&#39;s Lemma to q=
uery routers for their current throughput in bits per second, and calculate=
 latency as if Little&#39;s Lemma applied. This results in reports to manag=
ement that literally say:</div><p style=3D"margin:0px;padding:0px;font-fami=
ly:arial;font-size:10pt">=C2=A0</p><div style=3D"margin:0px;padding:0px;fon=
t-family:arial;font-size:10pt">=C2=A0 The network is not dropping packets, =
utilization is near 100% on many of our switches and routers.</div><p style=
=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</p><div=
 style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">And mana=
gement responds, Hooray! Because utilization of 100% of their hardware is t=
heir investors&#39; metric of maximizing profits. The hardware they are ope=
rating is fully utilized. No waste! And users are happy because no packets =
have been dropped!</div><p style=3D"margin:0px;padding:0px;font-family:aria=
l;font-size:10pt">=C2=A0</p><div style=3D"margin:0px;padding:0px;font-famil=
y:arial;font-size:10pt">Hmm... what&#39;s wrong with this picture? I can se=
e why Donovan, CTO, would accuse Apple of lousy software that was ruining i=
Phone user experience!=C2=A0 His network was operating without ANY problems=
.</div><div style=3D"margin:0px;padding:0px;font-family:arial;font-size:10p=
t">So it must be Apple!</div><p style=3D"margin:0px;padding:0px;font-family=
:arial;font-size:10pt">=C2=A0</p><div style=3D"margin:0px;padding:0px;font-=
family:arial;font-size:10pt">Well, no. The entire problem, as we saw when A=
TT just changed to shorten egress queues and drop packets when the egress q=
ueues overflowed, was that ATT&#39;s network was amplifying instability, no=
t at the link level, but at the network level.</div><p style=3D"margin:0px;=
padding:0px;font-family:arial;font-size:10pt">=C2=A0</p><div style=3D"margi=
n:0px;padding:0px;font-family:arial;font-size:10pt">And queueing theory can=
 help with that, but *intro queueing theory* cannot.</div><p style=3D"margi=
n:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</p><div style=3D=
"margin:0px;padding:0px;font-family:arial;font-size:10pt">And a big part of=
 that problem is the pervasive belief that, at the network boundary, *Poiss=
on arrival* is a reasonable model for use in all cases.</div><p style=3D"ma=
rgin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</p><p style=
=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</p><p s=
tyle=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</p>=
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p><p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=
=C2=A0</p><p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10=
pt">=C2=A0</p><p style=3D"margin:0px;padding:0px;font-family:arial;font-siz=
e:10pt">=C2=A0</p><p style=3D"margin:0px;padding:0px;font-family:arial;font=
-size:10pt">=C2=A0</p><p style=3D"margin:0px;padding:0px;font-family:arial;=
font-size:10pt">=C2=A0</p><p style=3D"margin:0px;padding:0px;font-family:ar=
ial;font-size:10pt">=C2=A0</p><div style=3D"margin:0px;padding:0px;font-fam=
ily:arial;font-size:10pt">On Friday, July 9, 2021 6:05am, &quot;Luca Muscar=
iello&quot; &lt;<a href=3D"mailto:muscariello@ieee.org" target=3D"_blank">m=
uscariello@ieee.org</a>&gt; said:<br><br></div>
<div id=3D"gmail-m_-5774724729815547007SafeStyles1625856330">
<div dir=3D"ltr">
<div dir=3D"ltr">
<div dir=3D"ltr">
<div dir=3D"ltr">
<div class=3D"gmail_default" style=3D"font-family:monospace">For those who =
might be interested in Little&#39;s law</div>
<div class=3D"gmail_default" style=3D"font-family:monospace">there is a nic=
e paper by John Little on the occasion=C2=A0</div>
<div class=3D"gmail_default" style=3D"font-family:monospace">of the 50th an=
niversary=C2=A0 of the result.</div>
<div class=3D"gmail_default" style=3D"font-family:monospace"><a href=3D"htt=
ps://www.informs.org/Blogs/Operations-Research-Forum/Little-s-Law-as-Viewed=
-on-its-50th-Anniversary" target=3D"_blank">https://www.informs.org/Blogs/O=
perations-Research-Forum/Little-s-Law-as-Viewed-on-its-50th-Anniversary</a>=
</div>
<div class=3D"gmail_default"><span style=3D"font-family:monospace"><a href=
=3D"https://www.informs.org/content/download/255808/2414681/file/little_pap=
er.pdf" target=3D"_blank">https://www.informs.org/content/download/255808/2=
414681/file/little_paper.pdf</a></span></div>
<div class=3D"gmail_default"><span style=3D"font-family:monospace">=C2=A0</=
span></div>
<div class=3D"gmail_default"><span style=3D"font-family:monospace">Nice rea=
d.=C2=A0</span></div>
<div class=3D"gmail_default"><span style=3D"font-family:monospace">Luca=C2=
=A0</span></div>
<div class=3D"gmail_default"><span style=3D"font-family:monospace">=C2=A0</=
span></div>
<div class=3D"gmail_default"><span style=3D"font-family:monospace">P.S.=C2=
=A0</span></div>
<div class=3D"gmail_default"><span style=3D"font-family:monospace">Who has =
not a copy of L. Kleinrock&#39;s books? I do have and am not ready to lend =
them!</span></div>
</div>
<div class=3D"gmail_quote">
<div class=3D"gmail_attr" dir=3D"ltr">On Fri, Jul 9, 2021 at 11:01 AM Leona=
rd Kleinrock &lt;<a href=3D"mailto:lk@cs.ucla.edu" target=3D"_blank">lk@cs.=
ucla.edu</a>&gt; wrote:</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div>David,
<div>I totally appreciate =C2=A0your attention to when and when not analyti=
cal modeling works. Let me clarify a few things from your note.</div>
<div>First, Little&#39;s law (also known as Little=E2=80=99s lemma or, as I=
 use in my book, Little=E2=80=99s result) does not assume Poisson arrivals =
- =C2=A0it is good for <strong>any</strong> arrival process and any service=
 process and is an equality between time averages.=C2=A0 It states that the=
 time average of the number in a system (for a sample path <em>w)</em><span=
 style=3D"font-family:Symbol">=C2=A0</span>is equal to the average arrival =
rate to the system multiplied by the time-averaged time in the system for t=
hat sample path.=C2=A0 This is often written as =C2=A0=C2=A0<span style=3D"=
font-size:11pt;font-family:CMMI10;vertical-align:-6pt">N</span><span style=
=3D"font-size:8pt;font-family:CMMI8">TimeAvg </span><span style=3D"font-siz=
e:11pt;font-family:CMR10;vertical-align:-6pt">=3D</span><span style=3D"font=
-size:11pt;font-family:CMMI10;vertical-align:-6pt">=CE=BB</span><span style=
=3D"font-size:11pt;font-family:CMSY10;vertical-align:-6pt">=C2=B7</span><sp=
an style=3D"font-size:11pt;font-family:CMMI10;vertical-align:-6pt">T</span>=
<span style=3D"font-size:8pt;font-family:CMMI8">TimeAvg . </span>=C2=A0More=
over, if the system is also ergodic, then the time average equals the ensem=
ble average and we often write it as=C2=A0<span style=3D"font-size:17pt;fon=
t-family:Fe">N</span><span style=3D"font-size:17pt;font-family:Fg;vertical-=
align:4pt"> =CC=84 </span><span style=3D"font-size:17pt;font-family:Fg">=3D=
 </span><span style=3D"font-size:17pt;font-family:Fe">=CE=BB T</span><span =
style=3D"font-size:17pt;font-family:Fg;vertical-align:4pt"> =CC=84 .</span>=
<span style=3D"vertical-align:4pt"> =C2=A0In any case, this requires neithe=
r Poisson arrivals nor exponential service times. =C2=A0</span></div>
<div><span style=3D"vertical-align:4pt">=C2=A0</span></div>
<div>Queueing theorists often do study the case of Poisson arrivals.=C2=A0 =
True, it makes the analysis easier, yet there is a better reason it is ofte=
n used, and that is because the sum of a large number of independent statio=
nary renewal processes approaches a Poisson process.=C2=A0 So nature often =
gives us Poisson arrivals. =C2=A0</div>
<div>Best,</div>
<div>Len</div>
<div>
<div>
<blockquote>
<div>On Jul 8, 2021, at 12:38 PM, David P. Reed &lt;<a href=3D"mailto:dpree=
d@deepplum.com" target=3D"_blank">dpreed@deepplum.com</a>&gt; wrote:</div>
<br>
<div>
<div style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">I wi=
ll tell you flat out that the arrival time distribution assumption made by =
Little&#39;s Lemma that allows &quot;estimation of queue depth&quot; is tot=
ally unreasonable on ANY Internet in practice.</div><p style=3D"margin:0px;=
padding:0px;font-family:arial;font-size:10pt">=C2=A0</p>
<div style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">The =
assumption is a Poisson Arrival Process. In reality, traffic arrivals in re=
al internet applications are extremely far from Poisson, and, of course, us=
ing TCP windowing, become highly intercorrelated with crossing traffic that=
 shares the same queue.</div><p style=3D"margin:0px;padding:0px;font-family=
:arial;font-size:10pt">=C2=A0</p>
<div style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">So, =
as I&#39;ve tried to tell many, many net-heads (people who ignore applicati=
ons layer behavior, like the people that think latency doesn&#39;t matter t=
o end users, only throughput), end-to-end packet arrival times on a practic=
al network are incredibly far from Poisson - and they are more like fractal=
 probability distributions, very irregular at all scales of time.</div><p s=
tyle=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</p>
<div style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">So, =
the idea that iperf can estimate queue depth by Little&#39;s Lemma by just =
measuring saturation of capacity of a path is bogus.The less Poisson, the w=
orse the estimate gets, by a huge factor.</div><p style=3D"margin:0px;paddi=
ng:0px;font-family:arial;font-size:10pt">=C2=A0</p><p style=3D"margin:0px;p=
adding:0px;font-family:arial;font-size:10pt">=C2=A0</p>
<div style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">Wher=
e does the Poisson assumption come from?=C2=A0 Well, like many theorems, it=
 is the simplest tractable closed form solution - it creates a simplified v=
iew, by being a &quot;single-parameter&quot; distribution (the parameter is=
 called lambda for a Poisson distribution).=C2=A0 And the analysis of a sim=
ple queue with poisson arrival distribution and a static, fixed service tim=
e is the first interesting Queueing Theory example in most textbooks. It is=
 suggestive of an interesting phenomenon, but it does NOT characterize any =
real system.</div><p style=3D"margin:0px;padding:0px;font-family:arial;font=
-size:10pt">=C2=A0</p>
<div style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">It&#=
39;s the queueing theory equivalent of &quot;First, we assume a spherical c=
ow...&quot;. in doing an example in a freshman physics class.</div><p style=
=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</p>
<div style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">Unfo=
rtunately, most networking engineers understand neither queuing theory nor =
application networking usage in interactive applications. Which makes them =
arrogant. They assume all distributions are poisson!</div><p style=3D"margi=
n:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</p><p style=3D"m=
argin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0</p>
<div style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">On T=
uesday, July 6, 2021 9:46am, &quot;Ben Greear&quot; &lt;<a href=3D"mailto:g=
reearb@candelatech.com" target=3D"_blank">greearb@candelatech.com</a>&gt; s=
aid:<br><br></div>
<div id=3D"gmail-m_-5774724729815547007gmail-m_272466165573362254SafeStyles=
1625772289">
<div style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">&gt;=
 Hello,<br>&gt; <br>&gt; I am interested to hear wish lists for network tes=
ting features. We make test<br>&gt; equipment, supporting lots<br>&gt; of w=
ifi stations and a distributed architecture, with built-in udp, tcp, ipv6,<=
br>&gt; http, ... protocols,<br>&gt; and open to creating/improving some of=
 our automated tests.<br>&gt; <br>&gt; I know Dave has some test scripts al=
ready, so I&#39;m not necessarily looking to<br>&gt; reimplement that,<br>&=
gt; but more fishing for other/new ideas.<br>&gt; <br>&gt; Thanks,<br>&gt; =
Ben<br>&gt; <br>&gt; On 7/2/21 4:28 PM, Bob McMahon wrote:<br>&gt; &gt; I t=
hink we need the language=C2=A0of math here. It seems like the network<br>&=
gt; power metric, introduced by Kleinrock and=C2=A0Jaffe in the late 70s, i=
s something<br>&gt; useful.<br>&gt; &gt; Effective end/end queue depths per=
 Little&#39;s law also seems useful. Both are<br>&gt; available in iperf 2 =
from a test perspective. Repurposing test techniques to<br>&gt; actual<br>&=
gt; &gt; traffic could be useful. Hence=C2=A0the question around what exact=
 telemetry<br>&gt; is useful to apps making socket write() and read() calls=
.<br>&gt; &gt;<br>&gt; &gt; Bob<br>&gt; &gt;<br>&gt; &gt; On Fri, Jul 2, 20=
21 at 10:07 AM Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com" target=
=3D"_blank">dave.taht@gmail.com</a><br>&gt; &lt;<a href=3D"mailto:dave.taht=
@gmail.com" target=3D"_blank">mailto:dave.taht@gmail.com</a>&gt;&gt; wrote:=
<br>&gt; &gt;<br>&gt; &gt; In terms of trying to find &quot;Quality&quot; I=
 have tried to encourage folk to<br>&gt; &gt; both read &quot;zen and the a=
rt of motorcycle maintenance&quot;[0], and Deming&#39;s<br>&gt; &gt; work o=
n &quot;total quality management&quot;.<br>&gt; &gt;<br>&gt; &gt; My own sl=
ice at this network, computer and lifestyle &quot;issue&quot; is aiming<br>=
&gt; &gt; for &quot;imperceptible latency&quot; in all things. [1]. There&#=
39;s a lot of<br>&gt; &gt; fallout from that in terms of not just addressin=
g queuing delay, but<br>&gt; &gt; caching, prefetching, and learning more a=
bout what a user really needs<br>&gt; &gt; (as opposed to wants) to know vi=
a intelligent agents.<br>&gt; &gt;<br>&gt; &gt; [0] If you want to get depr=
essed, read Pirsig&#39;s successor to &quot;zen...&quot;,<br>&gt; &gt; lila=
, which is in part about what happens when an engineer hits an<br>&gt; &gt;=
 insoluble problem.<br>&gt; &gt; [1] <a href=3D"https://www.internetsociety=
.org/events/latency2013/" target=3D"_blank">https://www.internetsociety.org=
/events/latency2013/</a><br>&gt; &lt;<a href=3D"https://www.internetsociety=
.org/events/latency2013/" target=3D"_blank">https://www.internetsociety.org=
/events/latency2013/</a>&gt;<br>&gt; &gt;<br>&gt; &gt;<br>&gt; &gt;<br>&gt;=
 &gt; On Thu, Jul 1, 2021 at 6:16 PM David P. Reed &lt;<a href=3D"mailto:dp=
reed@deepplum.com" target=3D"_blank">dpreed@deepplum.com</a><br>&gt; &lt;<a=
 href=3D"mailto:dpreed@deepplum.com" target=3D"_blank">mailto:dpreed@deeppl=
um.com</a>&gt;&gt; wrote:<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; Well, nice th=
at the folks doing the conference=C2=A0 are willing to<br>&gt; consider tha=
t quality of user experience has little to do with signalling rate at<br>&g=
t; the<br>&gt; &gt; physical layer or throughput of FTP transfers.<br>&gt; =
&gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; But honestl=
y, the fact that they call the problem &quot;network quality&quot;<br>&gt; =
suggests that they REALLY, REALLY don&#39;t understand the Internet isn&#39=
;t the hardware<br>&gt; or<br>&gt; &gt; the routers or even the routing alg=
orithms *to its users*.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &g=
t;<br>&gt; &gt; &gt; By ignoring the diversity of applications now and in t=
he future,<br>&gt; and the fact that we DON&#39;T KNOW what will be coming =
up, this conference will<br>&gt; likely fall<br>&gt; &gt; into the usual tr=
ap that net-heads fall into - optimizing for some<br>&gt; imaginary reality=
 that doesn&#39;t exist, and in fact will probably never be what<br>&gt; us=
ers<br>&gt; &gt; actually will do given the chance.<br>&gt; &gt; &gt;<br>&g=
t; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; I saw this issue in 1976 i=
n the group developing the original<br>&gt; Internet protocols - a desire t=
o put *into the network* special tricks to optimize<br>&gt; ASR33<br>&gt; &=
gt; logins to remote computers from terminal concentrators (aka remote<br>&=
gt; login), bulk file transfers between file systems on different time-shar=
ing<br>&gt; systems, and<br>&gt; &gt; &quot;sessions&quot; (virtual circuit=
s) that required logins. And then trying to<br>&gt; exploit underlying &quo=
t;multicast&quot; by building it into the IP layer, because someone<br>&gt;=
 &gt; thought that TV broadcast would be the dominant application.<br>&gt; =
&gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; Frankly, to=
 think of &quot;quality&quot; as something that can be &quot;provided&quot;=
<br>&gt; by &quot;the network&quot; misses the entire point of &quot;end-to=
-end argument in system<br>&gt; design&quot;.<br>&gt; &gt; Quality is not a=
 property defined or created by The Network. If you want<br>&gt; to talk ab=
out Quality, you need to talk about users - all the users at all times,<br>=
&gt; &gt; now and into the future, and that&#39;s something you can&#39;t d=
o if you don&#39;t<br>&gt; bother to include current and future users talki=
ng about what they might expect<br>&gt; to<br>&gt; &gt; experience that the=
y don&#39;t experience.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &g=
t;<br>&gt; &gt; &gt; There was much fighting back in 1976 that basically in=
volved<br>&gt; &quot;network experts&quot; saying that the network was the =
place to &quot;solve&quot; such issues as<br>&gt; quality,<br>&gt; &gt; so =
applications could avoid having to solve such issues.<br>&gt; &gt; &gt;<br>=
&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt; What some of us managed =
to do was to argue that you can&#39;t &quot;solve&quot;<br>&gt; such issues=
. All you can do is provide a framework that enables different uses to<br>&=
gt; &gt; *cooperate* in some way.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&g=
t; &gt; &gt;<br>&gt; &gt; &gt; Which is why the Internet drops packets rath=
er than queueing them,<br>&gt; and why diffserv cannot work.<br>&gt; &gt; &=
gt;<br>&gt; &gt; &gt; (I know the latter is conftroversial, but at the mome=
nt, ALL of<br>&gt; diffserv attempts to talk about end-to-end applicaiton s=
pecific metrics, but<br>&gt; never, ever<br>&gt; &gt; explains what the dif=
fserv control points actually do w.r.t. what the IP<br>&gt; layer can actua=
lly control. So it is meaningless - another violation of the<br>&gt; &gt; s=
o-called end-to-end principle).<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt;=
 &gt; &gt;<br>&gt; &gt; &gt; Networks are about getting packets from here t=
o there, multiplexing<br>&gt; the underlying resources. That&#39;s it. Qual=
ity is a whole different thing. Quality<br>&gt; can<br>&gt; &gt; be improve=
d by end-to-end approaches, if the underlying network provides<br>&gt; some=
 kind of thing that actually creates a way for end-to-end applications to<b=
r>&gt; &gt; affect queueing and routing decisions, and more importantly get=
ting<br>&gt; &quot;telemetry&quot; from the network regarding what is actua=
lly going on with the other<br>&gt; &gt; end-to-end users sharing the infra=
structure.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &g=
t; &gt; This conference won&#39;t talk about it this way. So don&#39;t wast=
e your<br>&gt; time.<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<=
br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>&gt; &gt; &gt;<br>=
&gt; &gt; &gt; On Wednesday, June 30, 2021 8:12pm, &quot;Dave Taht&quot;<br=
>&gt; &lt;<a href=3D"mailto:dave.taht@gmail.com" target=3D"_blank">dave.tah=
t@gmail.com</a> &lt;<a href=3D"mailto:dave.taht@gmail.com" target=3D"_blank=
">mailto:dave.taht@gmail.com</a>&gt;&gt; said:<br>&gt; &gt; &gt;<br>&gt; &g=
t; &gt; &gt; The program committee members are *amazing*. Perhaps, finally,=
<br>&gt; we can<br>&gt; &gt; &gt; &gt; move the bar for the internet&#39;s =
quality metrics past endless,<br>&gt; blind<br>&gt; &gt; &gt; &gt; repetiti=
ons of speedtest.<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; For complet=
e details, please see:<br>&gt; &gt; &gt; &gt; <a href=3D"https://www.iab.or=
g/activities/workshops/network-quality/" target=3D"_blank">https://www.iab.=
org/activities/workshops/network-quality/</a><br>&gt; &lt;<a href=3D"https:=
//www.iab.org/activities/workshops/network-quality/" target=3D"_blank">http=
s://www.iab.org/activities/workshops/network-quality/</a>&gt;<br>&gt; &gt; =
&gt; &gt;<br>&gt; &gt; &gt; &gt; Submissions Due: Monday 2nd August 2021, m=
idnight AOE<br>&gt; (Anywhere On Earth)<br>&gt; &gt; &gt; &gt; Invitations =
Issued by: Monday 16th August 2021<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt;=
 &gt; Workshop Date: This will be a virtual workshop, spread over<br>&gt; t=
hree days:<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; 1400-1800 UTC Tue =
14th September 2021<br>&gt; &gt; &gt; &gt; 1400-1800 UTC Wed 15th September=
 2021<br>&gt; &gt; &gt; &gt; 1400-1800 UTC Thu 16th September 2021<br>&gt; =
&gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Workshop co-chairs: Wes Hardaker, Evg=
eny Khorov, Omer Shapira<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; The =
Program Committee members:<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Ja=
ri Arkko, Olivier Bonaventure, Vint Cerf, Stuart Cheshire,<br>&gt; Sam<br>&=
gt; &gt; &gt; &gt; Crowford, Nick Feamster, Jim Gettys, Toke Hoiland-Jorgen=
sen,<br>&gt; Geoff<br>&gt; &gt; &gt; &gt; Huston, Cullen Jennings, Katarzyn=
a Kosek-Szott, Mirja<br>&gt; Kuehlewind,<br>&gt; &gt; &gt; &gt; Jason Livin=
good, Matt Mathias, Randall Meyer, Kathleen<br>&gt; Nichols,<br>&gt; &gt; &=
gt; &gt; Christoph Paasch, Tommy Pauly, Greg White, Keith Winstein.<br>&gt;=
 &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Send Submissions to: <a href=3D"mail=
to:network-quality-workshop-pc@iab.org" target=3D"_blank">network-quality-w=
orkshop-pc@iab.org</a><br>&gt; &lt;<a href=3D"mailto:network-quality-worksh=
op-pc@iab.org" target=3D"_blank">mailto:network-quality-workshop-pc@iab.org=
</a>&gt;.<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Position papers fro=
m academia, industry, the open source<br>&gt; community and<br>&gt; &gt; &g=
t; &gt; others that focus on measurements, experiences, observations<br>&gt=
; and<br>&gt; &gt; &gt; &gt; advice for the future are welcome. Papers that=
 reflect<br>&gt; experience<br>&gt; &gt; &gt; &gt; based on deployed servic=
es are especially welcome. The<br>&gt; organizers<br>&gt; &gt; &gt; &gt; un=
derstand that specific actions taken by operators are<br>&gt; unlikely to b=
e<br>&gt; &gt; &gt; &gt; discussed in detail, so papers discussing general =
categories<br>&gt; of<br>&gt; &gt; &gt; &gt; actions and issues without nam=
ing specific technologies,<br>&gt; products, or<br>&gt; &gt; &gt; &gt; othe=
r players in the ecosystem are expected. Papers should not<br>&gt; focus<br=
>&gt; &gt; &gt; &gt; on specific protocol solutions.<br>&gt; &gt; &gt; &gt;=
<br>&gt; &gt; &gt; &gt; The workshop will be by invitation only. Those wish=
ing to<br>&gt; attend<br>&gt; &gt; &gt; &gt; should submit a position paper=
 to the address above; it may<br>&gt; take the<br>&gt; &gt; &gt; &gt; form =
of an Internet-Draft.<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; All inp=
uts submitted and considered relevant will be published<br>&gt; on the<br>&=
gt; &gt; &gt; &gt; workshop website. The organisers will decide whom to inv=
ite<br>&gt; based on<br>&gt; &gt; &gt; &gt; the submissions received. Sessi=
ons will be organized according<br>&gt; to<br>&gt; &gt; &gt; &gt; content, =
and not every accepted submission or invited attendee<br>&gt; will<br>&gt; =
&gt; &gt; &gt; have an opportunity to present as the intent is to foster<br=
>&gt; discussion<br>&gt; &gt; &gt; &gt; and not simply to have a sequence o=
f presentations.<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Position pap=
ers from those not planning to attend the virtual<br>&gt; sessions<br>&gt; =
&gt; &gt; &gt; themselves are also encouraged. A workshop report will be<br=
>&gt; published<br>&gt; &gt; &gt; &gt; afterwards.<br>&gt; &gt; &gt; &gt;<b=
r>&gt; &gt; &gt; &gt; Overview:<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &g=
t; &quot;We believe that one of the major factors behind this lack of<br>&g=
t; progress<br>&gt; &gt; &gt; &gt; is the popular perception that throughpu=
t is the often sole<br>&gt; measure of<br>&gt; &gt; &gt; &gt; the quality o=
f Internet connectivity. With such narrow focus,<br>&gt; people<br>&gt; &gt=
; &gt; &gt; don=E2=80=99t consider questions such as:<br>&gt; &gt; &gt; &gt=
;<br>&gt; &gt; &gt; &gt; What is the latency under typical working conditio=
ns?<br>&gt; &gt; &gt; &gt; How reliable is the connectivity across longer t=
ime periods?<br>&gt; &gt; &gt; &gt; Does the network allow the use of a bro=
ad range of protocols?<br>&gt; &gt; &gt; &gt; What services can be run by c=
lients of the network?<br>&gt; &gt; &gt; &gt; What kind of IPv4, NAT or IPv=
6 connectivity is offered, and<br>&gt; are there firewalls?<br>&gt; &gt; &g=
t; &gt; What security mechanisms are available for local services,<br>&gt; =
such as DNS?<br>&gt; &gt; &gt; &gt; To what degree are the privacy, confide=
ntiality, integrity<br>&gt; and<br>&gt; &gt; &gt; &gt; authenticity of user=
 communications guarded?<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt; &gt; Impr=
oving these aspects of network quality will likely depend<br>&gt; on<br>&gt=
; &gt; &gt; &gt; measurement and exposing metrics to all involved parties,<=
br>&gt; including to<br>&gt; &gt; &gt; &gt; end users in a meaningful way. =
Such measurements and exposure<br>&gt; of the<br>&gt; &gt; &gt; &gt; right =
metrics will allow service providers and network<br>&gt; operators to<br>&g=
t; &gt; &gt; &gt; focus on the aspects that impacts the users=E2=80=99 expe=
rience<br>&gt; most and at<br>&gt; &gt; &gt; &gt; the same time empowers us=
ers to choose the Internet service<br>&gt; that will<br>&gt; &gt; &gt; &gt;=
 give them the best experience.&quot;<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &=
gt; &gt;<br>&gt; &gt; &gt; &gt; --<br>&gt; &gt; &gt; &gt; Latest Podcast:<b=
r>&gt; &gt; &gt; &gt;<br>&gt; <a href=3D"https://www.linkedin.com/feed/upda=
te/urn:li:activity:6791014284936785920/" target=3D"_blank">https://www.link=
edin.com/feed/update/urn:li:activity:6791014284936785920/</a><br>&gt; &lt;<=
a href=3D"https://www.linkedin.com/feed/update/urn:li:activity:679101428493=
6785920/" target=3D"_blank">https://www.linkedin.com/feed/update/urn:li:act=
ivity:6791014284936785920/</a>&gt;<br>&gt; &gt; &gt; &gt;<br>&gt; &gt; &gt;=
 &gt; Dave T=C3=A4ht CTO, TekLibre, LLC<br>&gt; &gt; &gt; &gt; ____________=
___________________________________<br>&gt; &gt; &gt; &gt; Cerowrt-devel ma=
iling list<br>&gt; &gt; &gt; &gt; <a href=3D"mailto:Cerowrt-devel@lists.buf=
ferbloat.net" target=3D"_blank">Cerowrt-devel@lists.bufferbloat.net</a><br>=
&gt; &lt;<a href=3D"mailto:Cerowrt-devel@lists.bufferbloat.net" target=3D"_=
blank">mailto:Cerowrt-devel@lists.bufferbloat.net</a>&gt;<br>&gt; &gt; &gt;=
 &gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cerowrt-devel" targ=
et=3D"_blank">https://lists.bufferbloat.net/listinfo/cerowrt-devel</a><br>&=
gt; &lt;<a href=3D"https://lists.bufferbloat.net/listinfo/cerowrt-devel" ta=
rget=3D"_blank">https://lists.bufferbloat.net/listinfo/cerowrt-devel</a>&gt=
;<br>&gt; &gt; &gt; &gt;<br>&gt; &gt;<br>&gt; &gt;<br>&gt; &gt;<br>&gt; &gt=
; --<br>&gt; &gt; Latest Podcast:<br>&gt; &gt; <a href=3D"https://www.linke=
din.com/feed/update/urn:li:activity:6791014284936785920/" target=3D"_blank"=
>https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/<=
/a><br>&gt; &lt;<a href=3D"https://www.linkedin.com/feed/update/urn:li:acti=
vity:6791014284936785920/" target=3D"_blank">https://www.linkedin.com/feed/=
update/urn:li:activity:6791014284936785920/</a>&gt;<br>&gt; &gt;<br>&gt; &g=
t; Dave T=C3=A4ht CTO, TekLibre, LLC<br>&gt; &gt; _________________________=
______________________<br>&gt; &gt; Make-wifi-fast mailing list<br>&gt; &gt=
; <a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_blank"=
>Make-wifi-fast@lists.bufferbloat.net</a><br>&gt; &lt;<a href=3D"mailto:Mak=
e-wifi-fast@lists.bufferbloat.net" target=3D"_blank">mailto:Make-wifi-fast@=
lists.bufferbloat.net</a>&gt;<br>&gt; &gt; <a href=3D"https://lists.bufferb=
loat.net/listinfo/make-wifi-fast" target=3D"_blank">https://lists.bufferblo=
at.net/listinfo/make-wifi-fast</a><br>&gt; &lt;<a href=3D"https://lists.buf=
ferbloat.net/listinfo/make-wifi-fast" target=3D"_blank">https://lists.buffe=
rbloat.net/listinfo/make-wifi-fast</a>&gt;<br>&gt; &gt;<br>&gt; &gt;<br>&gt=
; &gt; This electronic communication and the information and any files tran=
smitted<br>&gt; with it, or attached to it, are confidential and are intend=
ed solely for the use<br>&gt; of<br>&gt; &gt; the individual or entity to w=
hom it is addressed and may contain information<br>&gt; that is confidentia=
l, legally privileged, protected by privacy laws, or otherwise<br>&gt; &gt;=
 restricted from disclosure to anyone else. If you are not the intended<br>=
&gt; recipient or the person responsible for delivering the e-mail to the i=
ntended<br>&gt; recipient,<br>&gt; &gt; you are hereby notified that any us=
e, copying, distributing, dissemination,<br>&gt; forwarding, printing, or c=
opying of this e-mail is strictly prohibited. If you<br>&gt; &gt; received =
this e-mail in error, please return the e-mail to the sender, delete<br>&gt=
; it from your computer, and destroy any printed copy of it.<br>&gt; &gt;<b=
r>&gt; &gt; _______________________________________________<br>&gt; &gt; St=
arlink mailing list<br>&gt; &gt; <a href=3D"mailto:Starlink@lists.bufferblo=
at.net" target=3D"_blank">Starlink@lists.bufferbloat.net</a><br>&gt; &gt; <=
a href=3D"https://lists.bufferbloat.net/listinfo/starlink" target=3D"_blank=
">https://lists.bufferbloat.net/listinfo/starlink</a><br>&gt; &gt;<br>&gt; =
<br>&gt; <br>&gt; --<br>&gt; Ben Greear &lt;<a href=3D"mailto:greearb@cande=
latech.com" target=3D"_blank">greearb@candelatech.com</a>&gt;<br>&gt; Cande=
la Technologies Inc <a href=3D"http://www.candelatech.com/" target=3D"_blan=
k">http://www.candelatech.com</a><br>&gt;</div>
</div>
_______________________________________________<br>Starlink mailing list<br=
><a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starli=
nk@lists.bufferbloat.net</a><br><a href=3D"https://lists.bufferbloat.net/li=
stinfo/starlink" target=3D"_blank">https://lists.bufferbloat.net/listinfo/s=
tarlink</a></div>
</blockquote>
</div>
</div>
</div>
_______________________________________________<br> Make-wifi-fast mailing =
list<br><a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_=
blank">Make-wifi-fast@lists.bufferbloat.net</a><br><a rel=3D"noreferrer" hr=
ef=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" target=3D"_bla=
nk">https://lists.bufferbloat.net/listinfo/make-wifi-fast</a></blockquote>
</div>
</div>
</div>
</div>
</div></font></div></blockquote></div><br></div></div></blockquote></div>

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
--000000000000cfe17505c6ca35ba--

--000000000000d7e68f05c6ca35dc
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIDhyYUvQ9eHlQ1IUHehpwvPZyQTW0LKXtCG3
QNlOeXvGMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDcxMDE5
NTExMlowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQDpk8woTdDNC4R78iXjx6iL3CJTKXegovyfEca+/pEuXkVcghL3SjhB
GjrwZDa1l9e54ZAhQnaev5mzRk6V3AB/JV0MeZeXi2MO6DZqA1xIh03iwQ23tAn88ta5y2IPL3K/
r4k2UiLJdrqvEHC+0WAeUrqwqfx01UTxh+C8AyR3+bPpOhYl8tgkBhU+TULozPVwugfsPRdVj4CV
s1xkbzFN4YXpbmggre5LLosY8f5LyZXwoqmyrdXZSheZtdV07e5YcLx5HkKMmvZ+xHG3AJvDfw7Q
jbEnBF3jJNUJ/bosBV6Jp+Yt3Pj+ObOUD4wdb18uCDrM+xe4TlTnSgw/sy4N
--000000000000d7e68f05c6ca35dc--

--===============5823390513258707128==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5823390513258707128==--

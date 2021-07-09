Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 264E53C29BB
	for <lists+cake@lfdr.de>; Fri,  9 Jul 2021 21:31:39 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2524F3CBCB;
	Fri,  9 Jul 2021 15:31:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1625859085;
	bh=Y82YdEuD2OqrpXBC6Abg1nxWaKypWx9JPoIOqCD3uFk=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PgC+Qu+zBtArEVzgnTn9hh2zsijr6BGZu/wAe49UOC0Z4cEpHEcGQNH4ur2aai1dV
	 LA38oeblIDjUkkcHOsY6++/OqsBCTgXgHALmzYEyB/kMWpyCxotFqcMsgtzB16OcXK
	 aZIt6uKT6IJb15/WJsjo233G2NaYsXaKCLLlUwiDnacGraTKVFsnqDt2IXpbHPlxAj
	 VtwJL93HQnCkIeHCCAz+lS9gKLGCTWHD7yJC8OolzVQYhjv5+H4rU7V1yEb0kewsYl
	 Fsi9yPst7DNOhmxh+H1b7dRVQLG2WZ61MsR2NSVOFn+7uyoGU7ae+uVW8TE0hKYJul
	 MD/NzXD6a73Hg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp99.iad3a.emailsrvr.com (smtp99.iad3a.emailsrvr.com
 [173.203.187.99])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0EE0E3CB35;
 Fri,  9 Jul 2021 15:31:24 -0400 (EDT)
Received: from app36.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp13.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 2E04A50E9;
 Fri,  9 Jul 2021 15:31:23 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app36.wa-webapps.iad3a (Postfix) with ESMTP id 18A7F603D7;
 Fri,  9 Jul 2021 15:31:23 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Fri, 9 Jul 2021 15:31:23 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Fri, 9 Jul 2021 15:31:23 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Luca Muscariello" <muscariello@ieee.org>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com> 
 <1625188609.32718319@apps.rackspace.com> 
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com> 
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com> 
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com> 
 <1625773080.94974089@apps.rackspace.com> 
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu> 
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
X-Client-IP: 209.6.168.128
Message-ID: <1625859083.09751240@apps.rackspace.com>
X-Mailer: webmail/19.0.7-RC
X-Classification-ID: 9a7a9cb8-a0df-4471-b57f-d4e1b4c45cab-1-1
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
Content-Type: multipart/mixed; boundary="===============5931139385894999086=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5931139385894999086==
Content-Type: multipart/alternative;boundary="----=_20210709153123000000_13915"

------=_20210709153123000000_13915
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0ALen - I admit I made a mistake in challenging Little's Law as being base=
d on Poisson processes. It is more general. But it tells you an "average" i=
n its base form, and latency averages are not useful for end user applicati=
ons.=0A =0AHowever, Little's Law does assume something that is not actually=
 valid about the kind of distributions seen in the network, and in fact, it=
 is NOT true that networks converge on Poisson arrival times.=0A =0AThe key=
 issue is well-described in the sandard analysis of the M/M/1 queue (e.g. [=
 https://en.wikipedia.org/wiki/M/M/1_queue ]( https://en.wikipedia.org/wiki=
/M/M/1_queue )) , which is done only for Poisson processes, and is also lim=
ited to "stable" systems. But networks are never stable when fully loaded. =
They get unstable and those instabilities persist for a long time in the ne=
twork. Instability is at core the underlying *requirement* of the Internet'=
s usage.=0A =0ASo specifically: real networks, even large ones, and certain=
ly the Internet today, are not asymptotic limits of sums of stationary stoc=
hastic arrival processes. Each esternal terminal of any real network has a =
real user there, running a real application, and the network is a complex g=
raph. This makes it completely unlike a single queue. Even the links within=
 a network carry a relatively small number of application flows. There's no=
 ability to apply the Law of Large Numbers to the distributions, because an=
y particular path contains only a small number of serialized flows with hig=
htly variable rates.=0A =0AHere's an example of what really happens in a re=
al network (I've observed this in 5 different cities on ATT's cellular netw=
ork, back when it was running Alcatel Lucent HSPA+ gear in those cities).=
=0ABut you can see this on any network where transient overload occurs, cre=
ating instability.=0A =0A =0AAt 7 AM, the data transmission of the network =
is roughty stable. That's because no links are overloaded within the networ=
k. Little's Law can tell you by observing the delay and throughput on any p=
ath that the average delay in the network is X.=0A =0AContinue sampling del=
ay in the network as the day wears on. At about 10 AM, ping delay starts to=
 soar into the multiple second range. No packers are lost. The peak ping ti=
me is about 4000 milliseconds - 4 seconds in most of the networks. This is =
in downtown, no radio errors are reported, no link errors.=0ASo it is all q=
ueueing delay. =0A =0ANow what Little's law doesn't tell you much about ave=
rage delay, because clearly *some* subpiece of the network is fully saturat=
ed. But what is interesting here is what is happening and where. You can't =
tell what is saturated, and in fact the entire network is quite unstable, b=
ecause the peak is constantly varying and you don't know where the throughp=
ut is. All the packets are now arriving 4 seconds or so later.=0A =0AWhy is=
 the situaton not worse than 4 seconds? Well, there are multiple things goi=
ng on:=0A =0A1) TCP may be doing a lot of retransmissions (non-Poisson at a=
ll, not random either. The arrival process is entirely deterministic in eac=
h source, based on the retransmission timeout) or it may not be.=0A =0A2) U=
sers are pissed off, because they clicked on a web page, and got nothing ba=
ck. They retry on their screen, or they try another site. Meanwhile, the un=
derlying TCP connection remains there, pumping the network full of more pac=
kets on that old path, which is still backed up with packets that haven't b=
een delivered that are sitting in queues. The real arrival process is not P=
oisson at all, its a deterministic, repeated retrsnsmission plus a new atte=
mpt to connect to a new site.=0A =0A3) When the users get a web page back e=
ventually, it is filled with names of other pieces needed to display that w=
eb page, which causes some number (often as many as 100) new pages to be fe=
tched, ALL at the same time. Certainly not a stochastic process that will j=
ust obey the law of large numbers.=0A =0AAll of these things are the result=
 of initial instability, causing queues to build up.=0A =0ASo what is the s=
tate of the system? is it stable? is it stochastic? Is it the sum of enough=
 stochastic stable flows to average out to Poisson?=0A =0AThe answer is cle=
arly NO. Control theory (not queuing theory) suggests that this system is c=
ompletely uncontrolled and unstable.=0A =0ASo if the system is in this stat=
e, what does Little's Lemma tell us? What is the meaning of that hightly va=
riable 4 second delay on ping packets, in terms of average utilizaton of th=
e network?=0A =0AWe don't even know what all the users really might need, i=
f the system hadn't become unstable, because some users have given up, and =
others are trying even harder, and new users are arriving.=0A =0AWhat we do=
 know, because ATT (at my suggestion) reconfigured their system after blami=
ng Apple Computer company for "bugs" in the original iPhone in public, is t=
hat simply *dropping* packets sitting in queues more than a couple millisec=
onds MADE THE USERS HAPPY. Apparently the required capacity was there all a=
long! =0A =0ASo I conclude that the 4 second delay was the largest delay us=
ers could barely tolerate before deciding the network was DOWN and going aw=
ay. And that the backup was the accumulation of useless packets sitting in =
queues because none of the end systems were receiving congestion signals (w=
hich for the Internet stack begins with packet dropping).=0A =0AI should sa=
y that most operators, and especially ATT in this case, do not measure end-=
to-end latency. Instead they use Little's Lemma to query routers for their =
current throughput in bits per second, and calculate latency as if Little's=
 Lemma applied. This results in reports to management that literally say:=
=0A =0A  The network is not dropping packets, utilization is near 100% on m=
any of our switches and routers.=0A =0AAnd management responds, Hooray! Bec=
ause utilization of 100% of their hardware is their investors' metric of ma=
ximizing profits. The hardware they are operating is fully utilized. No was=
te! And users are happy because no packets have been dropped!=0A =0AHmm... =
what's wrong with this picture? I can see why Donovan, CTO, would accuse Ap=
ple of lousy software that was ruining iPhone user experience!  His network=
 was operating without ANY problems.=0ASo it must be Apple!=0A =0AWell, no.=
 The entire problem, as we saw when ATT just changed to shorten egress queu=
es and drop packets when the egress queues overflowed, was that ATT's netwo=
rk was amplifying instability, not at the link level, but at the network le=
vel.=0A =0AAnd queueing theory can help with that, but *intro queueing theo=
ry* cannot.=0A =0AAnd a big part of that problem is the pervasive belief th=
at, at the network boundary, *Poisson arrival* is a reasonable model for us=
e in all cases.=0A =0A =0A =0A =0A =0A =0A =0A =0A =0A =0AOn Friday, July 9=
, 2021 6:05am, "Luca Muscariello" <muscariello@ieee.org> said:=0A=0A=0A=0A=
=0A=0A=0A=0AFor those who might be interested in Little's law=0Athere is a =
nice paper by John Little on the occasion =0Aof the 50th anniversary  of th=
e result.=0A[ https://www.informs.org/Blogs/Operations-Research-Forum/Littl=
e-s-Law-as-Viewed-on-its-50th-Anniversary ]( https://www.informs.org/Blogs/=
Operations-Research-Forum/Little-s-Law-as-Viewed-on-its-50th-Anniversary )=
=0A[ https://www.informs.org/content/download/255808/2414681/file/little_pa=
per.pdf ]( https://www.informs.org/content/download/255808/2414681/file/lit=
tle_paper.pdf )=0A =0ANice read. =0ALuca =0A =0AP.S. =0AWho has not a copy =
of L. Kleinrock's books? I do have and am not ready to lend them!=0A=0AOn F=
ri, Jul 9, 2021 at 11:01 AM Leonard Kleinrock <[ lk@cs.ucla.edu ]( mailto:l=
k@cs.ucla.edu )> wrote:=0ADavid,=0AI totally appreciate  your attention to =
when and when not analytical modeling works. Let me clarify a few things fr=
om your note.=0AFirst, Little's law (also known as Little=E2=80=99s lemma o=
r, as I use in my book, Little=E2=80=99s result) does not assume Poisson ar=
rivals -  it is good for any arrival process and any service process and is=
 an equality between time averages.  It states that the time average of the=
 number in a system (for a sample path w) is equal to the average arrival r=
ate to the system multiplied by the time-averaged time in the system for th=
at sample path.  This is often written as   NTimeAvg =3D=CE=BB=C2=B7TTimeAv=
g .  Moreover, if the system is also ergodic, then the time average equals =
the ensemble average and we often write it as N =CC=84 =3D =CE=BB T =CC=84 =
.  In any case, this requires neither Poisson arrivals nor exponential serv=
ice times.  =0A =0AQueueing theorists often do study the case of Poisson ar=
rivals.  True, it makes the analysis easier, yet there is a better reason i=
t is often used, and that is because the sum of a large number of independe=
nt stationary renewal processes approaches a Poisson process.  So nature of=
ten gives us Poisson arrivals.  =0ABest,=0ALen=0A=0A=0AOn Jul 8, 2021, at 1=
2:38 PM, David P. Reed <[ dpreed@deepplum.com ]( mailto:dpreed@deepplum.com=
 )> wrote:=0A=0A=0AI will tell you flat out that the arrival time distribut=
ion assumption made by Little's Lemma that allows "estimation of queue dept=
h" is totally unreasonable on ANY Internet in practice.=0A =0AThe assumptio=
n is a Poisson Arrival Process. In reality, traffic arrivals in real intern=
et applications are extremely far from Poisson, and, of course, using TCP w=
indowing, become highly intercorrelated with crossing traffic that shares t=
he same queue.=0A =0ASo, as I've tried to tell many, many net-heads (people=
 who ignore applications layer behavior, like the people that think latency=
 doesn't matter to end users, only throughput), end-to-end packet arrival t=
imes on a practical network are incredibly far from Poisson - and they are =
more like fractal probability distributions, very irregular at all scales o=
f time.=0A =0ASo, the idea that iperf can estimate queue depth by Little's =
Lemma by just measuring saturation of capacity of a path is bogus.The less =
Poisson, the worse the estimate gets, by a huge factor.=0A =0A =0AWhere doe=
s the Poisson assumption come from?  Well, like many theorems, it is the si=
mplest tractable closed form solution - it creates a simplified view, by be=
ing a "single-parameter" distribution (the parameter is called lambda for a=
 Poisson distribution).  And the analysis of a simple queue with poisson ar=
rival distribution and a static, fixed service time is the first interestin=
g Queueing Theory example in most textbooks. It is suggestive of an interes=
ting phenomenon, but it does NOT characterize any real system.=0A =0AIt's t=
he queueing theory equivalent of "First, we assume a spherical cow...". in =
doing an example in a freshman physics class.=0A =0AUnfortunately, most net=
working engineers understand neither queuing theory nor application network=
ing usage in interactive applications. Which makes them arrogant. They assu=
me all distributions are poisson!=0A =0A =0AOn Tuesday, July 6, 2021 9:46am=
, "Ben Greear" <[ greearb@candelatech.com ]( mailto:greearb@candelatech.com=
 )> said:=0A=0A=0A=0A> Hello,=0A> =0A> I am interested to hear wish lists f=
or network testing features. We make test=0A> equipment, supporting lots=0A=
> of wifi stations and a distributed architecture, with built-in udp, tcp, =
ipv6,=0A> http, ... protocols,=0A> and open to creating/improving some of o=
ur automated tests.=0A> =0A> I know Dave has some test scripts already, so =
I'm not necessarily looking to=0A> reimplement that,=0A> but more fishing f=
or other/new ideas.=0A> =0A> Thanks,=0A> Ben=0A> =0A> On 7/2/21 4:28 PM, Bo=
b McMahon wrote:=0A> > I think we need the language of math here. It seems =
like the network=0A> power metric, introduced by Kleinrock and Jaffe in the=
 late 70s, is something=0A> useful.=0A> > Effective end/end queue depths pe=
r Little's law also seems useful. Both are=0A> available in iperf 2 from a =
test perspective. Repurposing test techniques to=0A> actual=0A> > traffic c=
ould be useful. Hence the question around what exact telemetry=0A> is usefu=
l to apps making socket write() and read() calls.=0A> >=0A> > Bob=0A> >=0A>=
 > On Fri, Jul 2, 2021 at 10:07 AM Dave Taht <[ dave.taht@gmail.com ]( mail=
to:dave.taht@gmail.com )=0A> <[ mailto:dave.taht@gmail.com ]( mailto:dave.t=
aht@gmail.com )>> wrote:=0A> >=0A> > In terms of trying to find "Quality" I=
 have tried to encourage folk to=0A> > both read "zen and the art of motorc=
ycle maintenance"[0], and Deming's=0A> > work on "total quality management"=
.=0A> >=0A> > My own slice at this network, computer and lifestyle "issue" =
is aiming=0A> > for "imperceptible latency" in all things. [1]. There's a l=
ot of=0A> > fallout from that in terms of not just addressing queuing delay=
, but=0A> > caching, prefetching, and learning more about what a user reall=
y needs=0A> > (as opposed to wants) to know via intelligent agents.=0A> >=
=0A> > [0] If you want to get depressed, read Pirsig's successor to "zen...=
",=0A> > lila, which is in part about what happens when an engineer hits an=
=0A> > insoluble problem.=0A> > [1] [ https://www.internetsociety.org/event=
s/latency2013/ ]( https://www.internetsociety.org/events/latency2013/ )=0A>=
 <[ https://www.internetsociety.org/events/latency2013/ ]( https://www.inte=
rnetsociety.org/events/latency2013/ )>=0A> >=0A> >=0A> >=0A> > On Thu, Jul =
1, 2021 at 6:16 PM David P. Reed <[ dpreed@deepplum.com ]( mailto:dpreed@de=
epplum.com )=0A> <[ mailto:dpreed@deepplum.com ]( mailto:dpreed@deepplum.co=
m )>> wrote:=0A> > >=0A> > > Well, nice that the folks doing the conference=
  are willing to=0A> consider that quality of user experience has little to=
 do with signalling rate at=0A> the=0A> > physical layer or throughput of F=
TP transfers.=0A> > >=0A> > >=0A> > >=0A> > > But honestly, the fact that t=
hey call the problem "network quality"=0A> suggests that they REALLY, REALL=
Y don't understand the Internet isn't the hardware=0A> or=0A> > the routers=
 or even the routing algorithms *to its users*.=0A> > >=0A> > >=0A> > >=0A>=
 > > By ignoring the diversity of applications now and in the future,=0A> a=
nd the fact that we DON'T KNOW what will be coming up, this conference will=
=0A> likely fall=0A> > into the usual trap that net-heads fall into - optim=
izing for some=0A> imaginary reality that doesn't exist, and in fact will p=
robably never be what=0A> users=0A> > actually will do given the chance.=0A=
> > >=0A> > >=0A> > >=0A> > > I saw this issue in 1976 in the group develop=
ing the original=0A> Internet protocols - a desire to put *into the network=
* special tricks to optimize=0A> ASR33=0A> > logins to remote computers fro=
m terminal concentrators (aka remote=0A> login), bulk file transfers betwee=
n file systems on different time-sharing=0A> systems, and=0A> > "sessions" =
(virtual circuits) that required logins. And then trying to=0A> exploit und=
erlying "multicast" by building it into the IP layer, because someone=0A> >=
 thought that TV broadcast would be the dominant application.=0A> > >=0A> >=
 >=0A> > >=0A> > > Frankly, to think of "quality" as something that can be =
"provided"=0A> by "the network" misses the entire point of "end-to-end argu=
ment in system=0A> design".=0A> > Quality is not a property defined or crea=
ted by The Network. If you want=0A> to talk about Quality, you need to talk=
 about users - all the users at all times,=0A> > now and into the future, a=
nd that's something you can't do if you don't=0A> bother to include current=
 and future users talking about what they might expect=0A> to=0A> > experie=
nce that they don't experience.=0A> > >=0A> > >=0A> > >=0A> > > There was m=
uch fighting back in 1976 that basically involved=0A> "network experts" say=
ing that the network was the place to "solve" such issues as=0A> quality,=
=0A> > so applications could avoid having to solve such issues.=0A> > >=0A>=
 > >=0A> > >=0A> > > What some of us managed to do was to argue that you ca=
n't "solve"=0A> such issues. All you can do is provide a framework that ena=
bles different uses to=0A> > *cooperate* in some way.=0A> > >=0A> > >=0A> >=
 >=0A> > > Which is why the Internet drops packets rather than queueing the=
m,=0A> and why diffserv cannot work.=0A> > >=0A> > > (I know the latter is =
conftroversial, but at the moment, ALL of=0A> diffserv attempts to talk abo=
ut end-to-end applicaiton specific metrics, but=0A> never, ever=0A> > expla=
ins what the diffserv control points actually do w.r.t. what the IP=0A> lay=
er can actually control. So it is meaningless - another violation of the=0A=
> > so-called end-to-end principle).=0A> > >=0A> > >=0A> > >=0A> > > Networ=
ks are about getting packets from here to there, multiplexing=0A> the under=
lying resources. That's it. Quality is a whole different thing. Quality=0A>=
 can=0A> > be improved by end-to-end approaches, if the underlying network =
provides=0A> some kind of thing that actually creates a way for end-to-end =
applications to=0A> > affect queueing and routing decisions, and more impor=
tantly getting=0A> "telemetry" from the network regarding what is actually =
going on with the other=0A> > end-to-end users sharing the infrastructure.=
=0A> > >=0A> > >=0A> > >=0A> > > This conference won't talk about it this w=
ay. So don't waste your=0A> time.=0A> > >=0A> > >=0A> > >=0A> > >=0A> > >=
=0A> > >=0A> > >=0A> > > On Wednesday, June 30, 2021 8:12pm, "Dave Taht"=0A=
> <[ dave.taht@gmail.com ]( mailto:dave.taht@gmail.com ) <[ mailto:dave.tah=
t@gmail.com ]( mailto:dave.taht@gmail.com )>> said:=0A> > >=0A> > > > The p=
rogram committee members are *amazing*. Perhaps, finally,=0A> we can=0A> > =
> > move the bar for the internet's quality metrics past endless,=0A> blind=
=0A> > > > repetitions of speedtest.=0A> > > >=0A> > > > For complete detai=
ls, please see:=0A> > > > [ https://www.iab.org/activities/workshops/networ=
k-quality/ ]( https://www.iab.org/activities/workshops/network-quality/ )=
=0A> <[ https://www.iab.org/activities/workshops/network-quality/ ]( https:=
//www.iab.org/activities/workshops/network-quality/ )>=0A> > > >=0A> > > > =
Submissions Due: Monday 2nd August 2021, midnight AOE=0A> (Anywhere On Eart=
h)=0A> > > > Invitations Issued by: Monday 16th August 2021=0A> > > >=0A> >=
 > > Workshop Date: This will be a virtual workshop, spread over=0A> three =
days:=0A> > > >=0A> > > > 1400-1800 UTC Tue 14th September 2021=0A> > > > 1=
400-1800 UTC Wed 15th September 2021=0A> > > > 1400-1800 UTC Thu 16th Septe=
mber 2021=0A> > > >=0A> > > > Workshop co-chairs: Wes Hardaker, Evgeny Khor=
ov, Omer Shapira=0A> > > >=0A> > > > The Program Committee members:=0A> > >=
 >=0A> > > > Jari Arkko, Olivier Bonaventure, Vint Cerf, Stuart Cheshire,=
=0A> Sam=0A> > > > Crowford, Nick Feamster, Jim Gettys, Toke Hoiland-Jorgen=
sen,=0A> Geoff=0A> > > > Huston, Cullen Jennings, Katarzyna Kosek-Szott, Mi=
rja=0A> Kuehlewind,=0A> > > > Jason Livingood, Matt Mathias, Randall Meyer,=
 Kathleen=0A> Nichols,=0A> > > > Christoph Paasch, Tommy Pauly, Greg White,=
 Keith Winstein.=0A> > > >=0A> > > > Send Submissions to: [ network-quality=
-workshop-pc@iab.org ]( mailto:network-quality-workshop-pc@iab.org )=0A> <[=
 mailto:network-quality-workshop-pc@iab.org ]( mailto:network-quality-works=
hop-pc@iab.org )>.=0A> > > >=0A> > > > Position papers from academia, indus=
try, the open source=0A> community and=0A> > > > others that focus on measu=
rements, experiences, observations=0A> and=0A> > > > advice for the future =
are welcome. Papers that reflect=0A> experience=0A> > > > based on deployed=
 services are especially welcome. The=0A> organizers=0A> > > > understand t=
hat specific actions taken by operators are=0A> unlikely to be=0A> > > > di=
scussed in detail, so papers discussing general categories=0A> of=0A> > > >=
 actions and issues without naming specific technologies,=0A> products, or=
=0A> > > > other players in the ecosystem are expected. Papers should not=
=0A> focus=0A> > > > on specific protocol solutions.=0A> > > >=0A> > > > Th=
e workshop will be by invitation only. Those wishing to=0A> attend=0A> > > =
> should submit a position paper to the address above; it may=0A> take the=
=0A> > > > form of an Internet-Draft.=0A> > > >=0A> > > > All inputs submit=
ted and considered relevant will be published=0A> on the=0A> > > > workshop=
 website. The organisers will decide whom to invite=0A> based on=0A> > > > =
the submissions received. Sessions will be organized according=0A> to=0A> >=
 > > content, and not every accepted submission or invited attendee=0A> wil=
l=0A> > > > have an opportunity to present as the intent is to foster=0A> d=
iscussion=0A> > > > and not simply to have a sequence of presentations.=0A>=
 > > >=0A> > > > Position papers from those not planning to attend the virt=
ual=0A> sessions=0A> > > > themselves are also encouraged. A workshop repor=
t will be=0A> published=0A> > > > afterwards.=0A> > > >=0A> > > > Overview:=
=0A> > > >=0A> > > > "We believe that one of the major factors behind this =
lack of=0A> progress=0A> > > > is the popular perception that throughput is=
 the often sole=0A> measure of=0A> > > > the quality of Internet connectivi=
ty. With such narrow focus,=0A> people=0A> > > > don=E2=80=99t consider que=
stions such as:=0A> > > >=0A> > > > What is the latency under typical worki=
ng conditions?=0A> > > > How reliable is the connectivity across longer tim=
e periods?=0A> > > > Does the network allow the use of a broad range of pro=
tocols?=0A> > > > What services can be run by clients of the network?=0A> >=
 > > What kind of IPv4, NAT or IPv6 connectivity is offered, and=0A> are th=
ere firewalls?=0A> > > > What security mechanisms are available for local s=
ervices,=0A> such as DNS?=0A> > > > To what degree are the privacy, confide=
ntiality, integrity=0A> and=0A> > > > authenticity of user communications g=
uarded?=0A> > > >=0A> > > > Improving these aspects of network quality will=
 likely depend=0A> on=0A> > > > measurement and exposing metrics to all inv=
olved parties,=0A> including to=0A> > > > end users in a meaningful way. Su=
ch measurements and exposure=0A> of the=0A> > > > right metrics will allow =
service providers and network=0A> operators to=0A> > > > focus on the aspec=
ts that impacts the users=E2=80=99 experience=0A> most and at=0A> > > > the=
 same time empowers users to choose the Internet service=0A> that will=0A> =
> > > give them the best experience."=0A> > > >=0A> > > >=0A> > > > --=0A> =
> > > Latest Podcast:=0A> > > >=0A> [ https://www.linkedin.com/feed/update/=
urn:li:activity:6791014284936785920/ ]( https://www.linkedin.com/feed/updat=
e/urn:li:activity:6791014284936785920/ )=0A> <[ https://www.linkedin.com/fe=
ed/update/urn:li:activity:6791014284936785920/ ]( https://www.linkedin.com/=
feed/update/urn:li:activity:6791014284936785920/ )>=0A> > > >=0A> > > > Dav=
e T=C3=A4ht CTO, TekLibre, LLC=0A> > > > __________________________________=
_____________=0A> > > > Cerowrt-devel mailing list=0A> > > > [ Cerowrt-deve=
l@lists.bufferbloat.net ]( mailto:Cerowrt-devel@lists.bufferbloat.net )=0A>=
 <[ mailto:Cerowrt-devel@lists.bufferbloat.net ]( mailto:Cerowrt-devel@list=
s.bufferbloat.net )>=0A> > > > [ https://lists.bufferbloat.net/listinfo/cer=
owrt-devel ]( https://lists.bufferbloat.net/listinfo/cerowrt-devel )=0A> <[=
 https://lists.bufferbloat.net/listinfo/cerowrt-devel ]( https://lists.buff=
erbloat.net/listinfo/cerowrt-devel )>=0A> > > >=0A> >=0A> >=0A> >=0A> > --=
=0A> > Latest Podcast:=0A> > [ https://www.linkedin.com/feed/update/urn:li:=
activity:6791014284936785920/ ]( https://www.linkedin.com/feed/update/urn:l=
i:activity:6791014284936785920/ )=0A> <[ https://www.linkedin.com/feed/upda=
te/urn:li:activity:6791014284936785920/ ]( https://www.linkedin.com/feed/up=
date/urn:li:activity:6791014284936785920/ )>=0A> >=0A> > Dave T=C3=A4ht CTO=
, TekLibre, LLC=0A> > _______________________________________________=0A> >=
 Make-wifi-fast mailing list=0A> > [ Make-wifi-fast@lists.bufferbloat.net ]=
( mailto:Make-wifi-fast@lists.bufferbloat.net )=0A> <[ mailto:Make-wifi-fas=
t@lists.bufferbloat.net ]( mailto:Make-wifi-fast@lists.bufferbloat.net )>=
=0A> > [ https://lists.bufferbloat.net/listinfo/make-wifi-fast ]( https://l=
ists.bufferbloat.net/listinfo/make-wifi-fast )=0A> <[ https://lists.bufferb=
loat.net/listinfo/make-wifi-fast ]( https://lists.bufferbloat.net/listinfo/=
make-wifi-fast )>=0A> >=0A> >=0A> > This electronic communication and the i=
nformation and any files transmitted=0A> with it, or attached to it, are co=
nfidential and are intended solely for the use=0A> of=0A> > the individual =
or entity to whom it is addressed and may contain information=0A> that is c=
onfidential, legally privileged, protected by privacy laws, or otherwise=0A=
> > restricted from disclosure to anyone else. If you are not the intended=
=0A> recipient or the person responsible for delivering the e-mail to the i=
ntended=0A> recipient,=0A> > you are hereby notified that any use, copying,=
 distributing, dissemination,=0A> forwarding, printing, or copying of this =
e-mail is strictly prohibited. If you=0A> > received this e-mail in error, =
please return the e-mail to the sender, delete=0A> it from your computer, a=
nd destroy any printed copy of it.=0A> >=0A> > ____________________________=
___________________=0A> > Starlink mailing list=0A> > [ Starlink@lists.buff=
erbloat.net ]( mailto:Starlink@lists.bufferbloat.net )=0A> > [ https://list=
s.bufferbloat.net/listinfo/starlink ]( https://lists.bufferbloat.net/listin=
fo/starlink )=0A> >=0A> =0A> =0A> --=0A> Ben Greear <[ greearb@candelatech.=
com ]( mailto:greearb@candelatech.com )>=0A> Candela Technologies Inc [ htt=
p://www.candelatech.com ]( http://www.candelatech.com )=0A>________________=
_______________________________=0AStarlink mailing list=0A[ Starlink@lists.=
bufferbloat.net ]( mailto:Starlink@lists.bufferbloat.net )=0A[ https://list=
s.bufferbloat.net/listinfo/starlink ]( https://lists.bufferbloat.net/listin=
fo/starlink )_______________________________________________=0A Make-wifi-f=
ast mailing list=0A[ Make-wifi-fast@lists.bufferbloat.net ]( mailto:Make-wi=
fi-fast@lists.bufferbloat.net )=0A[ https://lists.bufferbloat.net/listinfo/=
make-wifi-fast ]( https://lists.bufferbloat.net/listinfo/make-wifi-fast )
------=_20210709153123000000_13915
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">Len - I admit I made a=
 mistake in challenging Little's Law as being based on Poisson processes. I=
t is more general. But it tells you an "average" in its base form, and late=
ncy averages are not useful for end user applications.</p>=0A<p style=3D"ma=
rgin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-=
word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font=
-size: 10pt; overflow-wrap: break-word;">However, Little's Law does assume =
something that is not actually valid about the kind of distributions seen i=
n the network, and in fact, it is NOT true that networks converge on Poisso=
n arrival times.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; f=
ont-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin=
:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word=
;">The key issue is well-described in the sandard analysis of the M/M/1 que=
ue (e.g. <a href=3D"https://en.wikipedia.org/wiki/M/M/1_queue">https://en.w=
ikipedia.org/wiki/M/M/1_queue</a>) , which is done only for Poisson process=
es, and is also limited to "stable" systems. But networks are never stable =
when fully loaded. They get unstable and those instabilities persist for a =
long time in the network. Instability is at core the underlying *requiremen=
t* of the Internet's usage.</p>=0A<p style=3D"margin:0;padding:0;font-famil=
y: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p styl=
e=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap:=
 break-word;">So specifically: real networks, even large ones, and certainl=
y the Internet today, are not asymptotic limits of sums of stationary stoch=
astic arrival processes. Each esternal terminal of any real network has a r=
eal user there, running a real application, and the network is a complex gr=
aph. This makes it completely unlike a single queue. Even the links within =
a network carry a relatively small number of application flows. There's no =
ability to apply the Law of Large Numbers to the distributions, because any=
 particular path contains only a small number of serialized flows with high=
tly variable rates.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial=
; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"mar=
gin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-w=
ord;">Here's an example of what really happens in a real network (I've obse=
rved this in 5 different cities on ATT's cellular network, back when it was=
 running Alcatel Lucent HSPA+ gear in those cities).</p>=0A<p style=3D"marg=
in:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-wo=
rd;">But you can see this on any network where transient overload occurs, c=
reating instability.</p>=0A<p style=3D"margin:0;padding:0;font-family: aria=
l; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"ma=
rgin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-=
word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font=
-size: 10pt; overflow-wrap: break-word;">At 7 AM, the data transmission of =
the network is roughty stable. That's because no links are overloaded withi=
n the network. Little's Law can tell you by observing the delay and through=
put on any path that the average delay in the network is X.</p>=0A<p style=
=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial=
; font-size: 10pt; overflow-wrap: break-word;">Continue sampling delay in t=
he network as the day wears on. At about 10 AM, ping delay starts to soar i=
nto the multiple second range. No packers are lost. The peak ping time is a=
bout 4000 milliseconds - 4 seconds in most of the networks. This is in down=
town, no radio errors are reported, no link errors.</p>=0A<p style=3D"margi=
n:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-wor=
d;">So it is all queueing delay.&nbsp;</p>=0A<p style=3D"margin:0;padding:0=
;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p=
>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; ove=
rflow-wrap: break-word;">Now what Little's law doesn't tell you much about =
average delay, because clearly *some* subpiece of the network is fully satu=
rated. But what is interesting here is what is happening and where. You can=
't tell what is saturated, and in fact the entire network is quite unstable=
, because the peak is constantly varying and you don't know where the throu=
ghput is. All the packets are now arriving 4 seconds or so later.</p>=0A<p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-w=
rap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: =
arial; font-size: 10pt; overflow-wrap: break-word;">Why is the situaton not=
 worse than 4 seconds? Well, there are multiple things going on:</p>=0A<p s=
tyle=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wr=
ap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: a=
rial; font-size: 10pt; overflow-wrap: break-word;">1) TCP may be doing a lo=
t of retransmissions (non-Poisson at all, not random either. The arrival pr=
ocess is entirely deterministic in each source, based on the retransmission=
 timeout) or it may not be.</p>=0A<p style=3D"margin:0;padding:0;font-famil=
y: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p styl=
e=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap:=
 break-word;">2) Users are pissed off, because they clicked on a web page, =
and got nothing back. They retry on their screen, or they try another site.=
 Meanwhile, the underlying TCP connection remains there, pumping the networ=
k full of more packets on that old path, which is still backed up with pack=
ets that haven't been delivered that are sitting in queues. The real arriva=
l process is not Poisson at all, its a deterministic, repeated retrsnsmissi=
on plus a new attempt to connect to a new site.</p>=0A<p style=3D"margin:0;=
padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">=
&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: =
10pt; overflow-wrap: break-word;">3) When the users get a web page back eve=
ntually, it is filled with names of other pieces needed to display that web=
 page, which causes some number (often as many as 100) new pages to be fetc=
hed, ALL at the same time. Certainly not a stochastic process that will jus=
t obey the law of large numbers.</p>=0A<p style=3D"margin:0;padding:0;font-=
family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p=
 style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-=
wrap: break-word;">All of these things are the result of initial instabilit=
y, causing queues to build up.</p>=0A<p style=3D"margin:0;padding:0;font-fa=
mily: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p s=
tyle=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wr=
ap: break-word;">So what is the state of the system? is it stable? is it st=
ochastic? Is it the sum of enough stochastic stable flows to average out to=
 Poisson?</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-siz=
e: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padd=
ing:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">The =
answer is clearly NO. Control theory (not queuing theory) suggests that thi=
s system is completely uncontrolled and unstable.</p>=0A<p style=3D"margin:=
0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;=
">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size=
: 10pt; overflow-wrap: break-word;">So if the system is in this state, what=
 does Little's Lemma tell us? What is the meaning of that hightly variable =
4 second delay on ping packets, in terms of average utilizaton of the netwo=
rk?</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10p=
t; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;=
font-family: arial; font-size: 10pt; overflow-wrap: break-word;">We don't e=
ven know what all the users really might need, if the system hadn't become =
unstable, because some users have given up, and others are trying even hard=
er, and new users are arriving.</p>=0A<p style=3D"margin:0;padding:0;font-f=
amily: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-w=
rap: break-word;">What we do know, because ATT (at my suggestion) reconfigu=
red their system after blaming Apple Computer company for "bugs" in the ori=
ginal iPhone in public, is that simply *dropping* packets sitting in queues=
 more than a couple milliseconds MADE THE USERS HAPPY. Apparently the requi=
red capacity was there all along!&nbsp;</p>=0A<p style=3D"margin:0;padding:=
0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</=
p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; ov=
erflow-wrap: break-word;">So I conclude that the 4 second delay was the lar=
gest delay users could barely tolerate before deciding the network was DOWN=
 and going away. And that the backup was the accumulation of useless packet=
s sitting in queues because none of the end systems were receiving congesti=
on signals (which for the Internet stack begins with packet dropping).</p>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; over=
flow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-fa=
mily: arial; font-size: 10pt; overflow-wrap: break-word;">I should say that=
 most operators, and especially ATT in this case, do not measure end-to-end=
 latency. Instead they use Little's Lemma to query routers for their curren=
t throughput in bits per second, and calculate latency as if Little's Lemma=
 applied. This results in reports to management that literally say:</p>=0A<=
p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow=
-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family=
: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp; The network is=
 not dropping packets, utilization is near 100% on many of our switches and=
 routers.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-siz=
e: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padd=
ing:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">And =
management responds, Hooray! Because utilization of 100% of their hardware =
is their investors' metric of maximizing profits. The hardware they are ope=
rating is fully utilized. No waste! And users are happy because no packets =
have been dropped!</p>=0A<p style=3D"margin:0;padding:0;font-family: arial;=
 font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"marg=
in:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-wo=
rd;">Hmm... what's wrong with this picture? I can see why Donovan, CTO, wou=
ld accuse Apple of lousy software that was ruining iPhone user experience!&=
nbsp; His network was operating without ANY problems.</p>=0A<p style=3D"mar=
gin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-w=
ord;">So it must be Apple!</p>=0A<p style=3D"margin:0;padding:0;font-family=
: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=
=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;">Well, no. The entire problem, as we saw when ATT just changed =
to shorten egress queues and drop packets when the egress queues overflowed=
, was that ATT's network was amplifying instability, not at the link level,=
 but at the network level.</p>=0A<p style=3D"margin:0;padding:0;font-family=
: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=
=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;">And queueing theory can help with that, but *intro queueing th=
eory* cannot.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font=
-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;=
padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">=
And a big part of that problem is the pervasive belief that, at the network=
 boundary, *Poisson arrival* is a reasonable model for use in all cases.</p=
>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; ove=
rflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-f=
amily: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-w=
rap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: =
arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=
=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial=
; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"mar=
gin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-w=
ord;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-=
size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;p=
adding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&=
nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 1=
0pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:=
0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">On Frida=
y, July 9, 2021 6:05am, "Luca Muscariello" &lt;muscariello@ieee.org&gt; sai=
d:<br /><br /></p>=0A<div id=3D"SafeStyles1625856330">=0A<div dir=3D"ltr">=
=0A<div dir=3D"ltr">=0A<div dir=3D"ltr">=0A<div dir=3D"ltr">=0A<div class=
=3D"gmail_default" style=3D"font-family: monospace;">For those who might be=
 interested in Little's law</div>=0A<div class=3D"gmail_default" style=3D"f=
ont-family: monospace;">there is a nice paper by John Little on the occasio=
n&nbsp;</div>=0A<div class=3D"gmail_default" style=3D"font-family: monospac=
e;">of the 50th anniversary&nbsp; of the result.</div>=0A<div class=3D"gmai=
l_default" style=3D"font-family: monospace;"><a href=3D"https://www.informs=
.org/Blogs/Operations-Research-Forum/Little-s-Law-as-Viewed-on-its-50th-Ann=
iversary">https://www.informs.org/Blogs/Operations-Research-Forum/Little-s-=
Law-as-Viewed-on-its-50th-Anniversary</a></div>=0A<div class=3D"gmail_defau=
lt"><span style=3D"font-family: monospace;"><a href=3D"https://www.informs.=
org/content/download/255808/2414681/file/little_paper.pdf">https://www.info=
rms.org/content/download/255808/2414681/file/little_paper.pdf</a></span></d=
iv>=0A<div class=3D"gmail_default"><span style=3D"font-family: monospace;">=
&nbsp;</span></div>=0A<div class=3D"gmail_default"><span style=3D"font-fami=
ly: monospace;">Nice read.&nbsp;</span></div>=0A<div class=3D"gmail_default=
"><span style=3D"font-family: monospace;">Luca&nbsp;</span></div>=0A<div cl=
ass=3D"gmail_default"><span style=3D"font-family: monospace;">&nbsp;</span>=
</div>=0A<div class=3D"gmail_default"><span style=3D"font-family: monospace=
;">P.S.&nbsp;</span></div>=0A<div class=3D"gmail_default"><span style=3D"fo=
nt-family: monospace;">Who has not a copy of L. Kleinrock's books? I do hav=
e and am not ready to lend them!</span></div>=0A</div>=0A<div class=3D"gmai=
l_quote">=0A<div class=3D"gmail_attr" dir=3D"ltr">On Fri, Jul 9, 2021 at 11=
:01 AM Leonard Kleinrock &lt;<a href=3D"mailto:lk@cs.ucla.edu">lk@cs.ucla.e=
du</a>&gt; wrote:</div>=0A<blockquote class=3D"gmail_quote" style=3D"margin=
: 0px 0px 0px 0.8ex; border-left: 1px solid #cccccc; padding-left: 1ex;">=
=0A<div style=3D"overflow-wrap: break-word;">David,=0A<div>I totally apprec=
iate &nbsp;your attention to when and when not analytical modeling works. L=
et me clarify a few things from your note.</div>=0A<div>First, Little's law=
 (also known as Little=E2=80=99s lemma or, as I use in my book, Little=E2=
=80=99s result) does not assume Poisson arrivals - &nbsp;it is good for <st=
rong>any</strong> arrival process and any service process and is an equalit=
y between time averages.&nbsp; It states that the time average of the numbe=
r in a system (for a sample path <em>w)</em><span style=3D"font-family: Sym=
bol;">&nbsp;</span>is equal to the average arrival rate to the system multi=
plied by the time-averaged time in the system for that sample path.&nbsp; T=
his is often written as &nbsp;&nbsp;<span style=3D"font-size: 11pt; font-fa=
mily: CMMI10; vertical-align: -6pt;">N</span><span style=3D"font-size: 8pt;=
 font-family: CMMI8;">TimeAvg </span><span style=3D"font-size: 11pt; font-f=
amily: CMR10; vertical-align: -6pt;">=3D</span><span style=3D"font-size: 11=
pt; font-family: CMMI10; vertical-align: -6pt;">=CE=BB</span><span style=3D=
"font-size: 11pt; font-family: CMSY10; vertical-align: -6pt;">=C2=B7</span>=
<span style=3D"font-size: 11pt; font-family: CMMI10; vertical-align: -6pt;"=
>T</span><span style=3D"font-size: 8pt; font-family: CMMI8;">TimeAvg . </sp=
an>&nbsp;Moreover, if the system is also ergodic, then the time average equ=
als the ensemble average and we often write it as&nbsp;<span style=3D"font-=
size: 17pt; font-family: Fe;">N</span><span style=3D"font-size: 17pt; font-=
family: Fg; vertical-align: 4pt;"> =CC=84 </span><span style=3D"font-size: =
17pt; font-family: Fg;">=3D </span><span style=3D"font-size: 17pt; font-fam=
ily: Fe;">=CE=BB T</span><span style=3D"font-size: 17pt; font-family: Fg; v=
ertical-align: 4pt;"> =CC=84 .</span><span style=3D"vertical-align: 4pt;"> =
&nbsp;In any case, this requires neither Poisson arrivals nor exponential s=
ervice times. &nbsp;</span></div>=0A<div><span style=3D"vertical-align: 4pt=
;">&nbsp;</span></div>=0A<div>Queueing theorists often do study the case of=
 Poisson arrivals.&nbsp; True, it makes the analysis easier, yet there is a=
 better reason it is often used, and that is because the sum of a large num=
ber of independent stationary renewal processes approaches a Poisson proces=
s.&nbsp; So nature often gives us Poisson arrivals. &nbsp;</div>=0A<div>Bes=
t,</div>=0A<div>Len</div>=0A<div>=0A<div>=0A<blockquote>=0A<div>On Jul 8, 2=
021, at 12:38 PM, David P. Reed &lt;<a href=3D"mailto:dpreed@deepplum.com" =
target=3D"_blank">dpreed@deepplum.com</a>&gt; wrote:</div>=0A<br />=0A<div>=
=0A<div style=3D"margin: 0px; padding: 0px; font-family: arial; font-size: =
10pt;">I will tell you flat out that the arrival time distribution assumpti=
on made by Little's Lemma that allows "estimation of queue depth" is totall=
y unreasonable on ANY Internet in practice.</div>=0A<p style=3D"margin:0;pa=
dding:0;margin: 0px; padding: 0px; font-family: arial; font-size: 10pt;">&n=
bsp;</p>=0A<div style=3D"margin: 0px; padding: 0px; font-family: arial; fon=
t-size: 10pt;">The assumption is a Poisson Arrival Process. In reality, tra=
ffic arrivals in real internet applications are extremely far from Poisson,=
 and, of course, using TCP windowing, become highly intercorrelated with cr=
ossing traffic that shares the same queue.</div>=0A<p style=3D"margin:0;pad=
ding:0;margin: 0px; padding: 0px; font-family: arial; font-size: 10pt;">&nb=
sp;</p>=0A<div style=3D"margin: 0px; padding: 0px; font-family: arial; font=
-size: 10pt;">So, as I've tried to tell many, many net-heads (people who ig=
nore applications layer behavior, like the people that think latency doesn'=
t matter to end users, only throughput), end-to-end packet arrival times on=
 a practical network are incredibly far from Poisson - and they are more li=
ke fractal probability distributions, very irregular at all scales of time.=
</div>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-fam=
ily: arial; font-size: 10pt;">&nbsp;</p>=0A<div style=3D"margin: 0px; paddi=
ng: 0px; font-family: arial; font-size: 10pt;">So, the idea that iperf can =
estimate queue depth by Little's Lemma by just measuring saturation of capa=
city of a path is bogus.The less Poisson, the worse the estimate gets, by a=
 huge factor.</div>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: =
0px; font-family: arial; font-size: 10pt;">&nbsp;</p>=0A<p style=3D"margin:=
0;padding:0;margin: 0px; padding: 0px; font-family: arial; font-size: 10pt;=
">&nbsp;</p>=0A<div style=3D"margin: 0px; padding: 0px; font-family: arial;=
 font-size: 10pt;">Where does the Poisson assumption come from?&nbsp; Well,=
 like many theorems, it is the simplest tractable closed form solution - it=
 creates a simplified view, by being a "single-parameter" distribution (the=
 parameter is called lambda for a Poisson distribution).&nbsp; And the anal=
ysis of a simple queue with poisson arrival distribution and a static, fixe=
d service time is the first interesting Queueing Theory example in most tex=
tbooks. It is suggestive of an interesting phenomenon, but it does NOT char=
acterize any real system.</div>=0A<p style=3D"margin:0;padding:0;margin: 0p=
x; padding: 0px; font-family: arial; font-size: 10pt;">&nbsp;</p>=0A<div st=
yle=3D"margin: 0px; padding: 0px; font-family: arial; font-size: 10pt;">It'=
s the queueing theory equivalent of "First, we assume a spherical cow...". =
in doing an example in a freshman physics class.</div>=0A<p style=3D"margin=
:0;padding:0;margin: 0px; padding: 0px; font-family: arial; font-size: 10pt=
;">&nbsp;</p>=0A<div style=3D"margin: 0px; padding: 0px; font-family: arial=
; font-size: 10pt;">Unfortunately, most networking engineers understand nei=
ther queuing theory nor application networking usage in interactive applica=
tions. Which makes them arrogant. They assume all distributions are poisson=
!</div>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-fa=
mily: arial; font-size: 10pt;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;=
margin: 0px; padding: 0px; font-family: arial; font-size: 10pt;">&nbsp;</p>=
=0A<div style=3D"margin: 0px; padding: 0px; font-family: arial; font-size: =
10pt;">On Tuesday, July 6, 2021 9:46am, "Ben Greear" &lt;<a href=3D"mailto:=
greearb@candelatech.com" target=3D"_blank">greearb@candelatech.com</a>&gt; =
said:<br /><br /></div>=0A<div id=3D"gmail-m_272466165573362254SafeStyles16=
25772289">=0A<div style=3D"margin: 0px; padding: 0px; font-family: arial; f=
ont-size: 10pt;">&gt; Hello,<br />&gt; <br />&gt; I am interested to hear w=
ish lists for network testing features. We make test<br />&gt; equipment, s=
upporting lots<br />&gt; of wifi stations and a distributed architecture, w=
ith built-in udp, tcp, ipv6,<br />&gt; http, ... protocols,<br />&gt; and o=
pen to creating/improving some of our automated tests.<br />&gt; <br />&gt;=
 I know Dave has some test scripts already, so I'm not necessarily looking =
to<br />&gt; reimplement that,<br />&gt; but more fishing for other/new ide=
as.<br />&gt; <br />&gt; Thanks,<br />&gt; Ben<br />&gt; <br />&gt; On 7/2/=
21 4:28 PM, Bob McMahon wrote:<br />&gt; &gt; I think we need the language&=
nbsp;of math here. It seems like the network<br />&gt; power metric, introd=
uced by Kleinrock and&nbsp;Jaffe in the late 70s, is something<br />&gt; us=
eful.<br />&gt; &gt; Effective end/end queue depths per Little's law also s=
eems useful. Both are<br />&gt; available in iperf 2 from a test perspectiv=
e. Repurposing test techniques to<br />&gt; actual<br />&gt; &gt; traffic c=
ould be useful. Hence&nbsp;the question around what exact telemetry<br />&g=
t; is useful to apps making socket write() and read() calls.<br />&gt; &gt;=
<br />&gt; &gt; Bob<br />&gt; &gt;<br />&gt; &gt; On Fri, Jul 2, 2021 at 10=
:07 AM Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com" target=3D"_blan=
k">dave.taht@gmail.com</a><br />&gt; &lt;<a href=3D"mailto:dave.taht@gmail.=
com" target=3D"_blank">mailto:dave.taht@gmail.com</a>&gt;&gt; wrote:<br />&=
gt; &gt;<br />&gt; &gt; In terms of trying to find "Quality" I have tried t=
o encourage folk to<br />&gt; &gt; both read "zen and the art of motorcycle=
 maintenance"[0], and Deming's<br />&gt; &gt; work on "total quality manage=
ment".<br />&gt; &gt;<br />&gt; &gt; My own slice at this network, computer=
 and lifestyle "issue" is aiming<br />&gt; &gt; for "imperceptible latency"=
 in all things. [1]. There's a lot of<br />&gt; &gt; fallout from that in t=
erms of not just addressing queuing delay, but<br />&gt; &gt; caching, pref=
etching, and learning more about what a user really needs<br />&gt; &gt; (a=
s opposed to wants) to know via intelligent agents.<br />&gt; &gt;<br />&gt=
; &gt; [0] If you want to get depressed, read Pirsig's successor to "zen...=
",<br />&gt; &gt; lila, which is in part about what happens when an enginee=
r hits an<br />&gt; &gt; insoluble problem.<br />&gt; &gt; [1] <a href=3D"h=
ttps://www.internetsociety.org/events/latency2013/" target=3D"_blank">https=
://www.internetsociety.org/events/latency2013/</a><br />&gt; &lt;<a href=3D=
"https://www.internetsociety.org/events/latency2013/" target=3D"_blank">htt=
ps://www.internetsociety.org/events/latency2013/</a>&gt;<br />&gt; &gt;<br =
/>&gt; &gt;<br />&gt; &gt;<br />&gt; &gt; On Thu, Jul 1, 2021 at 6:16 PM Da=
vid P. Reed &lt;<a href=3D"mailto:dpreed@deepplum.com" target=3D"_blank">dp=
reed@deepplum.com</a><br />&gt; &lt;<a href=3D"mailto:dpreed@deepplum.com" =
target=3D"_blank">mailto:dpreed@deepplum.com</a>&gt;&gt; wrote:<br />&gt; &=
gt; &gt;<br />&gt; &gt; &gt; Well, nice that the folks doing the conference=
&nbsp; are willing to<br />&gt; consider that quality of user experience ha=
s little to do with signalling rate at<br />&gt; the<br />&gt; &gt; physica=
l layer or throughput of FTP transfers.<br />&gt; &gt; &gt;<br />&gt; &gt; =
&gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; But honestly, the fact that th=
ey call the problem "network quality"<br />&gt; suggests that they REALLY, =
REALLY don't understand the Internet isn't the hardware<br />&gt; or<br />&=
gt; &gt; the routers or even the routing algorithms *to its users*.<br />&g=
t; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; By=
 ignoring the diversity of applications now and in the future,<br />&gt; an=
d the fact that we DON'T KNOW what will be coming up, this conference will<=
br />&gt; likely fall<br />&gt; &gt; into the usual trap that net-heads fal=
l into - optimizing for some<br />&gt; imaginary reality that doesn't exist=
, and in fact will probably never be what<br />&gt; users<br />&gt; &gt; ac=
tually will do given the chance.<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br=
 />&gt; &gt; &gt;<br />&gt; &gt; &gt; I saw this issue in 1976 in the group=
 developing the original<br />&gt; Internet protocols - a desire to put *in=
to the network* special tricks to optimize<br />&gt; ASR33<br />&gt; &gt; l=
ogins to remote computers from terminal concentrators (aka remote<br />&gt;=
 login), bulk file transfers between file systems on different time-sharing=
<br />&gt; systems, and<br />&gt; &gt; "sessions" (virtual circuits) that r=
equired logins. And then trying to<br />&gt; exploit underlying "multicast"=
 by building it into the IP layer, because someone<br />&gt; &gt; thought t=
hat TV broadcast would be the dominant application.<br />&gt; &gt; &gt;<br =
/>&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; Frankly, to think =
of "quality" as something that can be "provided"<br />&gt; by "the network"=
 misses the entire point of "end-to-end argument in system<br />&gt; design=
".<br />&gt; &gt; Quality is not a property defined or created by The Netwo=
rk. If you want<br />&gt; to talk about Quality, you need to talk about use=
rs - all the users at all times,<br />&gt; &gt; now and into the future, an=
d that's something you can't do if you don't<br />&gt; bother to include cu=
rrent and future users talking about what they might expect<br />&gt; to<br=
 />&gt; &gt; experience that they don't experience.<br />&gt; &gt; &gt;<br =
/>&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; There was much fig=
hting back in 1976 that basically involved<br />&gt; "network experts" sayi=
ng that the network was the place to "solve" such issues as<br />&gt; quali=
ty,<br />&gt; &gt; so applications could avoid having to solve such issues.=
<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt;=
 &gt; What some of us managed to do was to argue that you can't "solve"<br =
/>&gt; such issues. All you can do is provide a framework that enables diff=
erent uses to<br />&gt; &gt; *cooperate* in some way.<br />&gt; &gt; &gt;<b=
r />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; Which is why the=
 Internet drops packets rather than queueing them,<br />&gt; and why diffse=
rv cannot work.<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; (I know the latter =
is conftroversial, but at the moment, ALL of<br />&gt; diffserv attempts to=
 talk about end-to-end applicaiton specific metrics, but<br />&gt; never, e=
ver<br />&gt; &gt; explains what the diffserv control points actually do w.=
r.t. what the IP<br />&gt; layer can actually control. So it is meaningless=
 - another violation of the<br />&gt; &gt; so-called end-to-end principle).=
<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt;=
 &gt; Networks are about getting packets from here to there, multiplexing<b=
r />&gt; the underlying resources. That's it. Quality is a whole different =
thing. Quality<br />&gt; can<br />&gt; &gt; be improved by end-to-end appro=
aches, if the underlying network provides<br />&gt; some kind of thing that=
 actually creates a way for end-to-end applications to<br />&gt; &gt; affec=
t queueing and routing decisions, and more importantly getting<br />&gt; "t=
elemetry" from the network regarding what is actually going on with the oth=
er<br />&gt; &gt; end-to-end users sharing the infrastructure.<br />&gt; &g=
t; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; This co=
nference won't talk about it this way. So don't waste your<br />&gt; time.<=
br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; =
&gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; =
&gt; &gt; On Wednesday, June 30, 2021 8:12pm, "Dave Taht"<br />&gt; &lt;<a =
href=3D"mailto:dave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.com</=
a> &lt;<a href=3D"mailto:dave.taht@gmail.com" target=3D"_blank">mailto:dave=
.taht@gmail.com</a>&gt;&gt; said:<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; &=
gt; The program committee members are *amazing*. Perhaps, finally,<br />&gt=
; we can<br />&gt; &gt; &gt; &gt; move the bar for the internet's quality m=
etrics past endless,<br />&gt; blind<br />&gt; &gt; &gt; &gt; repetitions o=
f speedtest.<br />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; For complete=
 details, please see:<br />&gt; &gt; &gt; &gt; <a href=3D"https://www.iab.o=
rg/activities/workshops/network-quality/" target=3D"_blank">https://www.iab=
.org/activities/workshops/network-quality/</a><br />&gt; &lt;<a href=3D"htt=
ps://www.iab.org/activities/workshops/network-quality/" target=3D"_blank">h=
ttps://www.iab.org/activities/workshops/network-quality/</a>&gt;<br />&gt; =
&gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; Submissions Due: Monday 2nd August =
2021, midnight AOE<br />&gt; (Anywhere On Earth)<br />&gt; &gt; &gt; &gt; I=
nvitations Issued by: Monday 16th August 2021<br />&gt; &gt; &gt; &gt;<br /=
>&gt; &gt; &gt; &gt; Workshop Date: This will be a virtual workshop, spread=
 over<br />&gt; three days:<br />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &g=
t; 1400-1800 UTC Tue 14th September 2021<br />&gt; &gt; &gt; &gt; 1400-1800=
 UTC Wed 15th September 2021<br />&gt; &gt; &gt; &gt; 1400-1800 UTC Thu 16t=
h September 2021<br />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; Workshop=
 co-chairs: Wes Hardaker, Evgeny Khorov, Omer Shapira<br />&gt; &gt; &gt; &=
gt;<br />&gt; &gt; &gt; &gt; The Program Committee members:<br />&gt; &gt; =
&gt; &gt;<br />&gt; &gt; &gt; &gt; Jari Arkko, Olivier Bonaventure, Vint Ce=
rf, Stuart Cheshire,<br />&gt; Sam<br />&gt; &gt; &gt; &gt; Crowford, Nick =
Feamster, Jim Gettys, Toke Hoiland-Jorgensen,<br />&gt; Geoff<br />&gt; &gt=
; &gt; &gt; Huston, Cullen Jennings, Katarzyna Kosek-Szott, Mirja<br />&gt;=
 Kuehlewind,<br />&gt; &gt; &gt; &gt; Jason Livingood, Matt Mathias, Randal=
l Meyer, Kathleen<br />&gt; Nichols,<br />&gt; &gt; &gt; &gt; Christoph Paa=
sch, Tommy Pauly, Greg White, Keith Winstein.<br />&gt; &gt; &gt; &gt;<br /=
>&gt; &gt; &gt; &gt; Send Submissions to: <a href=3D"mailto:network-quality=
-workshop-pc@iab.org" target=3D"_blank">network-quality-workshop-pc@iab.org=
</a><br />&gt; &lt;<a href=3D"mailto:network-quality-workshop-pc@iab.org" t=
arget=3D"_blank">mailto:network-quality-workshop-pc@iab.org</a>&gt;.<br />&=
gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; Position papers from academia, =
industry, the open source<br />&gt; community and<br />&gt; &gt; &gt; &gt; =
others that focus on measurements, experiences, observations<br />&gt; and<=
br />&gt; &gt; &gt; &gt; advice for the future are welcome. Papers that ref=
lect<br />&gt; experience<br />&gt; &gt; &gt; &gt; based on deployed servic=
es are especially welcome. The<br />&gt; organizers<br />&gt; &gt; &gt; &gt=
; understand that specific actions taken by operators are<br />&gt; unlikel=
y to be<br />&gt; &gt; &gt; &gt; discussed in detail, so papers discussing =
general categories<br />&gt; of<br />&gt; &gt; &gt; &gt; actions and issues=
 without naming specific technologies,<br />&gt; products, or<br />&gt; &gt=
; &gt; &gt; other players in the ecosystem are expected. Papers should not<=
br />&gt; focus<br />&gt; &gt; &gt; &gt; on specific protocol solutions.<br=
 />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; The workshop will be by inv=
itation only. Those wishing to<br />&gt; attend<br />&gt; &gt; &gt; &gt; sh=
ould submit a position paper to the address above; it may<br />&gt; take th=
e<br />&gt; &gt; &gt; &gt; form of an Internet-Draft.<br />&gt; &gt; &gt; &=
gt;<br />&gt; &gt; &gt; &gt; All inputs submitted and considered relevant w=
ill be published<br />&gt; on the<br />&gt; &gt; &gt; &gt; workshop website=
. The organisers will decide whom to invite<br />&gt; based on<br />&gt; &g=
t; &gt; &gt; the submissions received. Sessions will be organized according=
<br />&gt; to<br />&gt; &gt; &gt; &gt; content, and not every accepted subm=
ission or invited attendee<br />&gt; will<br />&gt; &gt; &gt; &gt; have an =
opportunity to present as the intent is to foster<br />&gt; discussion<br /=
>&gt; &gt; &gt; &gt; and not simply to have a sequence of presentations.<br=
 />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; Position papers from those =
not planning to attend the virtual<br />&gt; sessions<br />&gt; &gt; &gt; &=
gt; themselves are also encouraged. A workshop report will be<br />&gt; pub=
lished<br />&gt; &gt; &gt; &gt; afterwards.<br />&gt; &gt; &gt; &gt;<br />&=
gt; &gt; &gt; &gt; Overview:<br />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &=
gt; "We believe that one of the major factors behind this lack of<br />&gt;=
 progress<br />&gt; &gt; &gt; &gt; is the popular perception that throughpu=
t is the often sole<br />&gt; measure of<br />&gt; &gt; &gt; &gt; the quali=
ty of Internet connectivity. With such narrow focus,<br />&gt; people<br />=
&gt; &gt; &gt; &gt; don=E2=80=99t consider questions such as:<br />&gt; &gt=
; &gt; &gt;<br />&gt; &gt; &gt; &gt; What is the latency under typical work=
ing conditions?<br />&gt; &gt; &gt; &gt; How reliable is the connectivity a=
cross longer time periods?<br />&gt; &gt; &gt; &gt; Does the network allow =
the use of a broad range of protocols?<br />&gt; &gt; &gt; &gt; What servic=
es can be run by clients of the network?<br />&gt; &gt; &gt; &gt; What kind=
 of IPv4, NAT or IPv6 connectivity is offered, and<br />&gt; are there fire=
walls?<br />&gt; &gt; &gt; &gt; What security mechanisms are available for =
local services,<br />&gt; such as DNS?<br />&gt; &gt; &gt; &gt; To what deg=
ree are the privacy, confidentiality, integrity<br />&gt; and<br />&gt; &gt=
; &gt; &gt; authenticity of user communications guarded?<br />&gt; &gt; &gt=
; &gt;<br />&gt; &gt; &gt; &gt; Improving these aspects of network quality =
will likely depend<br />&gt; on<br />&gt; &gt; &gt; &gt; measurement and ex=
posing metrics to all involved parties,<br />&gt; including to<br />&gt; &g=
t; &gt; &gt; end users in a meaningful way. Such measurements and exposure<=
br />&gt; of the<br />&gt; &gt; &gt; &gt; right metrics will allow service =
providers and network<br />&gt; operators to<br />&gt; &gt; &gt; &gt; focus=
 on the aspects that impacts the users=E2=80=99 experience<br />&gt; most a=
nd at<br />&gt; &gt; &gt; &gt; the same time empowers users to choose the I=
nternet service<br />&gt; that will<br />&gt; &gt; &gt; &gt; give them the =
best experience."<br />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt;<br />&g=
t; &gt; &gt; &gt; --<br />&gt; &gt; &gt; &gt; Latest Podcast:<br />&gt; &gt=
; &gt; &gt;<br />&gt; <a href=3D"https://www.linkedin.com/feed/update/urn:l=
i:activity:6791014284936785920/" target=3D"_blank">https://www.linkedin.com=
/feed/update/urn:li:activity:6791014284936785920/</a><br />&gt; &lt;<a href=
=3D"https://www.linkedin.com/feed/update/urn:li:activity:679101428493678592=
0/" target=3D"_blank">https://www.linkedin.com/feed/update/urn:li:activity:=
6791014284936785920/</a>&gt;<br />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &=
gt; Dave T=C3=A4ht CTO, TekLibre, LLC<br />&gt; &gt; &gt; &gt; ____________=
___________________________________<br />&gt; &gt; &gt; &gt; Cerowrt-devel =
mailing list<br />&gt; &gt; &gt; &gt; <a href=3D"mailto:Cerowrt-devel@lists=
.bufferbloat.net" target=3D"_blank">Cerowrt-devel@lists.bufferbloat.net</a>=
<br />&gt; &lt;<a href=3D"mailto:Cerowrt-devel@lists.bufferbloat.net" targe=
t=3D"_blank">mailto:Cerowrt-devel@lists.bufferbloat.net</a>&gt;<br />&gt; &=
gt; &gt; &gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cerowrt-dev=
el" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cerowrt-devel<=
/a><br />&gt; &lt;<a href=3D"https://lists.bufferbloat.net/listinfo/cerowrt=
-devel" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cerowrt-de=
vel</a>&gt;<br />&gt; &gt; &gt; &gt;<br />&gt; &gt;<br />&gt; &gt;<br />&gt=
; &gt;<br />&gt; &gt; --<br />&gt; &gt; Latest Podcast:<br />&gt; &gt; <a h=
ref=3D"https://www.linkedin.com/feed/update/urn:li:activity:679101428493678=
5920/" target=3D"_blank">https://www.linkedin.com/feed/update/urn:li:activi=
ty:6791014284936785920/</a><br />&gt; &lt;<a href=3D"https://www.linkedin.c=
om/feed/update/urn:li:activity:6791014284936785920/" target=3D"_blank">http=
s://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/</a>&g=
t;<br />&gt; &gt;<br />&gt; &gt; Dave T=C3=A4ht CTO, TekLibre, LLC<br />&gt=
; &gt; _______________________________________________<br />&gt; &gt; Make-=
wifi-fast mailing list<br />&gt; &gt; <a href=3D"mailto:Make-wifi-fast@list=
s.bufferbloat.net" target=3D"_blank">Make-wifi-fast@lists.bufferbloat.net</=
a><br />&gt; &lt;<a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" ta=
rget=3D"_blank">mailto:Make-wifi-fast@lists.bufferbloat.net</a>&gt;<br />&g=
t; &gt; <a href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" t=
arget=3D"_blank">https://lists.bufferbloat.net/listinfo/make-wifi-fast</a><=
br />&gt; &lt;<a href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-f=
ast" target=3D"_blank">https://lists.bufferbloat.net/listinfo/make-wifi-fas=
t</a>&gt;<br />&gt; &gt;<br />&gt; &gt;<br />&gt; &gt; This electronic comm=
unication and the information and any files transmitted<br />&gt; with it, =
or attached to it, are confidential and are intended solely for the use<br =
/>&gt; of<br />&gt; &gt; the individual or entity to whom it is addressed a=
nd may contain information<br />&gt; that is confidential, legally privileg=
ed, protected by privacy laws, or otherwise<br />&gt; &gt; restricted from =
disclosure to anyone else. If you are not the intended<br />&gt; recipient =
or the person responsible for delivering the e-mail to the intended<br />&g=
t; recipient,<br />&gt; &gt; you are hereby notified that any use, copying,=
 distributing, dissemination,<br />&gt; forwarding, printing, or copying of=
 this e-mail is strictly prohibited. If you<br />&gt; &gt; received this e-=
mail in error, please return the e-mail to the sender, delete<br />&gt; it =
from your computer, and destroy any printed copy of it.<br />&gt; &gt;<br /=
>&gt; &gt; _______________________________________________<br />&gt; &gt; S=
tarlink mailing list<br />&gt; &gt; <a href=3D"mailto:Starlink@lists.buffer=
bloat.net" target=3D"_blank">Starlink@lists.bufferbloat.net</a><br />&gt; &=
gt; <a href=3D"https://lists.bufferbloat.net/listinfo/starlink" target=3D"_=
blank">https://lists.bufferbloat.net/listinfo/starlink</a><br />&gt; &gt;<b=
r />&gt; <br />&gt; <br />&gt; --<br />&gt; Ben Greear &lt;<a href=3D"mailt=
o:greearb@candelatech.com" target=3D"_blank">greearb@candelatech.com</a>&gt=
;<br />&gt; Candela Technologies Inc <a href=3D"http://www.candelatech.com"=
 target=3D"_blank">http://www.candelatech.com</a><br />&gt;</div>=0A</div>=
=0A_______________________________________________<br />Starlink mailing li=
st<br /><a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank"=
>Starlink@lists.bufferbloat.net</a><br /><a href=3D"https://lists.bufferblo=
at.net/listinfo/starlink" target=3D"_blank">https://lists.bufferbloat.net/l=
istinfo/starlink</a></div>=0A</blockquote>=0A</div>=0A</div>=0A</div>=0A___=
____________________________________________<br /> Make-wifi-fast mailing l=
ist<br /><a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"=
_blank">Make-wifi-fast@lists.bufferbloat.net</a><br /><a rel=3D"noreferrer"=
 href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" target=3D"_=
blank">https://lists.bufferbloat.net/listinfo/make-wifi-fast</a></blockquot=
e>=0A</div>=0A</div>=0A</div>=0A</div>=0A</div></font>
------=_20210709153123000000_13915--


--===============5931139385894999086==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5931139385894999086==--


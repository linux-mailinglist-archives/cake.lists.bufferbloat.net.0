Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7BE3C19F2
	for <lists+cake@lfdr.de>; Thu,  8 Jul 2021 21:38:12 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 86CB83CB68;
	Thu,  8 Jul 2021 15:38:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1625773083;
	bh=vNvGyOsow4kub0Z+tGHT2HgWyTY15CU422gUykFqn2s=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AtFqLd0ewWFBLZpjXVtVdKKlnJnnCbOmHXiWEJ653BlyZvXrQWT0DPgxh8wRQz3bx
	 8eIQPxbu4tiZ4nuxc6kEwto0F5UDIdofBWFBtpYtzUmrsTju5CfCv5AFMHPSYZQGCL
	 xwEGh8HWox8gaAVxAl+v4R2PtAkWLc6wQiLiOI0do/xOpHjv+bprqicZf6a+DA1tMq
	 GJsbnEwsPityBzuDhfAkB37kXpE1qAe5JHevqudPBn505BHFsKydNmFw3z9ZtA0eFe
	 Pk4vAtsgx2fG5xFoSJ8zukqVgmoaSI9Rb1K6OiO4tT4tP0bOmkV2WUxDP5vpbJyBpI
	 CL48RSq9JhpYQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp118.iad3a.emailsrvr.com (smtp118.iad3a.emailsrvr.com
 [173.203.187.118])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CBD823CB43
 for <cake@lists.bufferbloat.net>; Thu,  8 Jul 2021 15:38:01 -0400 (EDT)
Received: from app57.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp7.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 0825C4C79;
 Thu,  8 Jul 2021 15:38:01 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app57.wa-webapps.iad3a (Postfix) with ESMTP id E87F1E0073;
 Thu,  8 Jul 2021 15:38:00 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Thu, 8 Jul 2021 15:38:00 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Thu, 8 Jul 2021 15:38:00 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Ben Greear" <greearb@candelatech.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com> 
 <1625188609.32718319@apps.rackspace.com> 
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com> 
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com> 
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
X-Client-IP: 209.6.168.128
Message-ID: <1625773080.94974089@apps.rackspace.com>
X-Mailer: webmail/19.0.7-RC
X-Classification-ID: 1b1eeaf1-01b3-441b-a7ed-fd41f9ec24d4-1-1
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Bob McMahon <bob.mcmahon@broadcom.com>, starlink@lists.bufferbloat.net,
 codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============4512829161150788128=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4512829161150788128==
Content-Type: multipart/alternative;boundary="----=_20210708153800000000_10844"

------=_20210708153800000000_10844
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AI will tell you flat out that the arrival time distribution assumption m=
ade by Little's Lemma that allows "estimation of queue depth" is totally un=
reasonable on ANY Internet in practice.=0A =0AThe assumption is a Poisson A=
rrival Process. In reality, traffic arrivals in real internet applications =
are extremely far from Poisson, and, of course, using TCP windowing, become=
 highly intercorrelated with crossing traffic that shares the same queue.=
=0A =0ASo, as I've tried to tell many, many net-heads (people who ignore ap=
plications layer behavior, like the people that think latency doesn't matte=
r to end users, only throughput), end-to-end packet arrival times on a prac=
tical network are incredibly far from Poisson - and they are more like frac=
tal probability distributions, very irregular at all scales of time.=0A =0A=
So, the idea that iperf can estimate queue depth by Little's Lemma by just =
measuring saturation of capacity of a path is bogus.The less Poisson, the w=
orse the estimate gets, by a huge factor.=0A =0A =0AWhere does the Poisson =
assumption come from?  Well, like many theorems, it is the simplest tractab=
le closed form solution - it creates a simplified view, by being a "single-=
parameter" distribution (the parameter is called lambda for a Poisson distr=
ibution).  And the analysis of a simple queue with poisson arrival distribu=
tion and a static, fixed service time is the first interesting Queueing The=
ory example in most textbooks. It is suggestive of an interesting phenomeno=
n, but it does NOT characterize any real system.=0A =0AIt's the queueing th=
eory equivalent of "First, we assume a spherical cow...". in doing an examp=
le in a freshman physics class.=0A =0AUnfortunately, most networking engine=
ers understand neither queuing theory nor application networking usage in i=
nteractive applications. Which makes them arrogant. They assume all distrib=
utions are poisson!=0A =0A =0AOn Tuesday, July 6, 2021 9:46am, "Ben Greear"=
 <greearb@candelatech.com> said:=0A=0A=0A=0A> Hello,=0A> =0A> I am interest=
ed to hear wish lists for network testing features. We make test=0A> equipm=
ent, supporting lots=0A> of wifi stations and a distributed architecture, w=
ith built-in udp, tcp, ipv6,=0A> http, ... protocols,=0A> and open to creat=
ing/improving some of our automated tests.=0A> =0A> I know Dave has some te=
st scripts already, so I'm not necessarily looking to=0A> reimplement that,=
=0A> but more fishing for other/new ideas.=0A> =0A> Thanks,=0A> Ben=0A> =0A=
> On 7/2/21 4:28 PM, Bob McMahon wrote:=0A> > I think we need the language =
of math here. It seems like the network=0A> power metric, introduced by Kle=
inrock and Jaffe in the late 70s, is something=0A> useful.=0A> > Effective =
end/end queue depths per Little's law also seems useful. Both are=0A> avail=
able in iperf 2 from a test perspective. Repurposing test techniques to=0A>=
 actual=0A> > traffic could be useful. Hence the question around what exact=
 telemetry=0A> is useful to apps making socket write() and read() calls.=0A=
> >=0A> > Bob=0A> >=0A> > On Fri, Jul 2, 2021 at 10:07 AM Dave Taht <dave.t=
aht@gmail.com=0A> <mailto:dave.taht@gmail.com>> wrote:=0A> >=0A> > In terms=
 of trying to find "Quality" I have tried to encourage folk to=0A> > both r=
ead "zen and the art of motorcycle maintenance"[0], and Deming's=0A> > work=
 on "total quality management".=0A> >=0A> > My own slice at this network, c=
omputer and lifestyle "issue" is aiming=0A> > for "imperceptible latency" i=
n all things. [1]. There's a lot of=0A> > fallout from that in terms of not=
 just addressing queuing delay, but=0A> > caching, prefetching, and learnin=
g more about what a user really needs=0A> > (as opposed to wants) to know v=
ia intelligent agents.=0A> >=0A> > [0] If you want to get depressed, read P=
irsig's successor to "zen...",=0A> > lila, which is in part about what happ=
ens when an engineer hits an=0A> > insoluble problem.=0A> > [1] https://www=
.internetsociety.org/events/latency2013/=0A> <https://www.internetsociety.o=
rg/events/latency2013/>=0A> >=0A> >=0A> >=0A> > On Thu, Jul 1, 2021 at 6:16=
 PM David P. Reed <dpreed@deepplum.com=0A> <mailto:dpreed@deepplum.com>> wr=
ote:=0A> > >=0A> > > Well, nice that the folks doing the conference  are wi=
lling to=0A> consider that quality of user experience has little to do with=
 signalling rate at=0A> the=0A> > physical layer or throughput of FTP trans=
fers.=0A> > >=0A> > >=0A> > >=0A> > > But honestly, the fact that they call=
 the problem "network quality"=0A> suggests that they REALLY, REALLY don't =
understand the Internet isn't the hardware=0A> or=0A> > the routers or even=
 the routing algorithms *to its users*.=0A> > >=0A> > >=0A> > >=0A> > > By =
ignoring the diversity of applications now and in the future,=0A> and the f=
act that we DON'T KNOW what will be coming up, this conference will=0A> lik=
ely fall=0A> > into the usual trap that net-heads fall into - optimizing fo=
r some=0A> imaginary reality that doesn't exist, and in fact will probably =
never be what=0A> users=0A> > actually will do given the chance.=0A> > >=0A=
> > >=0A> > >=0A> > > I saw this issue in 1976 in the group developing the =
original=0A> Internet protocols - a desire to put *into the network* specia=
l tricks to optimize=0A> ASR33=0A> > logins to remote computers from termin=
al concentrators (aka remote=0A> login), bulk file transfers between file s=
ystems on different time-sharing=0A> systems, and=0A> > "sessions" (virtual=
 circuits) that required logins. And then trying to=0A> exploit underlying =
"multicast" by building it into the IP layer, because someone=0A> > thought=
 that TV broadcast would be the dominant application.=0A> > >=0A> > >=0A> >=
 >=0A> > > Frankly, to think of "quality" as something that can be "provide=
d"=0A> by "the network" misses the entire point of "end-to-end argument in =
system=0A> design".=0A> > Quality is not a property defined or created by T=
he Network. If you want=0A> to talk about Quality, you need to talk about u=
sers - all the users at all times,=0A> > now and into the future, and that'=
s something you can't do if you don't=0A> bother to include current and fut=
ure users talking about what they might expect=0A> to=0A> > experience that=
 they don't experience.=0A> > >=0A> > >=0A> > >=0A> > > There was much figh=
ting back in 1976 that basically involved=0A> "network experts" saying that=
 the network was the place to "solve" such issues as=0A> quality,=0A> > so =
applications could avoid having to solve such issues.=0A> > >=0A> > >=0A> >=
 >=0A> > > What some of us managed to do was to argue that you can't "solve=
"=0A> such issues. All you can do is provide a framework that enables diffe=
rent uses to=0A> > *cooperate* in some way.=0A> > >=0A> > >=0A> > >=0A> > >=
 Which is why the Internet drops packets rather than queueing them,=0A> and=
 why diffserv cannot work.=0A> > >=0A> > > (I know the latter is conftrover=
sial, but at the moment, ALL of=0A> diffserv attempts to talk about end-to-=
end applicaiton specific metrics, but=0A> never, ever=0A> > explains what t=
he diffserv control points actually do w.r.t. what the IP=0A> layer can act=
ually control. So it is meaningless - another violation of the=0A> > so-cal=
led end-to-end principle).=0A> > >=0A> > >=0A> > >=0A> > > Networks are abo=
ut getting packets from here to there, multiplexing=0A> the underlying reso=
urces. That's it. Quality is a whole different thing. Quality=0A> can=0A> >=
 be improved by end-to-end approaches, if the underlying network provides=
=0A> some kind of thing that actually creates a way for end-to-end applicat=
ions to=0A> > affect queueing and routing decisions, and more importantly g=
etting=0A> "telemetry" from the network regarding what is actually going on=
 with the other=0A> > end-to-end users sharing the infrastructure.=0A> > >=
=0A> > >=0A> > >=0A> > > This conference won't talk about it this way. So d=
on't waste your=0A> time.=0A> > >=0A> > >=0A> > >=0A> > >=0A> > >=0A> > >=
=0A> > >=0A> > > On Wednesday, June 30, 2021 8:12pm, "Dave Taht"=0A> <dave.=
taht@gmail.com <mailto:dave.taht@gmail.com>> said:=0A> > >=0A> > > > The pr=
ogram committee members are *amazing*. Perhaps, finally,=0A> we can=0A> > >=
 > move the bar for the internet's quality metrics past endless,=0A> blind=
=0A> > > > repetitions of speedtest.=0A> > > >=0A> > > > For complete detai=
ls, please see:=0A> > > > https://www.iab.org/activities/workshops/network-=
quality/=0A> <https://www.iab.org/activities/workshops/network-quality/>=0A=
> > > >=0A> > > > Submissions Due: Monday 2nd August 2021, midnight AOE=0A>=
 (Anywhere On Earth)=0A> > > > Invitations Issued by: Monday 16th August 20=
21=0A> > > >=0A> > > > Workshop Date: This will be a virtual workshop, spre=
ad over=0A> three days:=0A> > > >=0A> > > > 1400-1800 UTC Tue 14th Septembe=
r 2021=0A> > > > 1400-1800 UTC Wed 15th September 2021=0A> > > > 1400-1800 =
UTC Thu 16th September 2021=0A> > > >=0A> > > > Workshop co-chairs: Wes Har=
daker, Evgeny Khorov, Omer Shapira=0A> > > >=0A> > > > The Program Committe=
e members:=0A> > > >=0A> > > > Jari Arkko, Olivier Bonaventure, Vint Cerf, =
Stuart Cheshire,=0A> Sam=0A> > > > Crowford, Nick Feamster, Jim Gettys, Tok=
e Hoiland-Jorgensen,=0A> Geoff=0A> > > > Huston, Cullen Jennings, Katarzyna=
 Kosek-Szott, Mirja=0A> Kuehlewind,=0A> > > > Jason Livingood, Matt Mathias=
, Randall Meyer, Kathleen=0A> Nichols,=0A> > > > Christoph Paasch, Tommy Pa=
uly, Greg White, Keith Winstein.=0A> > > >=0A> > > > Send Submissions to: n=
etwork-quality-workshop-pc@iab.org=0A> <mailto:network-quality-workshop-pc@=
iab.org>.=0A> > > >=0A> > > > Position papers from academia, industry, the =
open source=0A> community and=0A> > > > others that focus on measurements, =
experiences, observations=0A> and=0A> > > > advice for the future are welco=
me. Papers that reflect=0A> experience=0A> > > > based on deployed services=
 are especially welcome. The=0A> organizers=0A> > > > understand that speci=
fic actions taken by operators are=0A> unlikely to be=0A> > > > discussed i=
n detail, so papers discussing general categories=0A> of=0A> > > > actions =
and issues without naming specific technologies,=0A> products, or=0A> > > >=
 other players in the ecosystem are expected. Papers should not=0A> focus=
=0A> > > > on specific protocol solutions.=0A> > > >=0A> > > > The workshop=
 will be by invitation only. Those wishing to=0A> attend=0A> > > > should s=
ubmit a position paper to the address above; it may=0A> take the=0A> > > > =
form of an Internet-Draft.=0A> > > >=0A> > > > All inputs submitted and con=
sidered relevant will be published=0A> on the=0A> > > > workshop website. T=
he organisers will decide whom to invite=0A> based on=0A> > > > the submiss=
ions received. Sessions will be organized according=0A> to=0A> > > > conten=
t, and not every accepted submission or invited attendee=0A> will=0A> > > >=
 have an opportunity to present as the intent is to foster=0A> discussion=
=0A> > > > and not simply to have a sequence of presentations.=0A> > > >=0A=
> > > > Position papers from those not planning to attend the virtual=0A> s=
essions=0A> > > > themselves are also encouraged. A workshop report will be=
=0A> published=0A> > > > afterwards.=0A> > > >=0A> > > > Overview:=0A> > > =
>=0A> > > > "We believe that one of the major factors behind this lack of=
=0A> progress=0A> > > > is the popular perception that throughput is the of=
ten sole=0A> measure of=0A> > > > the quality of Internet connectivity. Wit=
h such narrow focus,=0A> people=0A> > > > don=E2=80=99t consider questions =
such as:=0A> > > >=0A> > > > What is the latency under typical working cond=
itions?=0A> > > > How reliable is the connectivity across longer time perio=
ds?=0A> > > > Does the network allow the use of a broad range of protocols?=
=0A> > > > What services can be run by clients of the network?=0A> > > > Wh=
at kind of IPv4, NAT or IPv6 connectivity is offered, and=0A> are there fir=
ewalls?=0A> > > > What security mechanisms are available for local services=
,=0A> such as DNS?=0A> > > > To what degree are the privacy, confidentialit=
y, integrity=0A> and=0A> > > > authenticity of user communications guarded?=
=0A> > > >=0A> > > > Improving these aspects of network quality will likely=
 depend=0A> on=0A> > > > measurement and exposing metrics to all involved p=
arties,=0A> including to=0A> > > > end users in a meaningful way. Such meas=
urements and exposure=0A> of the=0A> > > > right metrics will allow service=
 providers and network=0A> operators to=0A> > > > focus on the aspects that=
 impacts the users=E2=80=99 experience=0A> most and at=0A> > > > the same t=
ime empowers users to choose the Internet service=0A> that will=0A> > > > g=
ive them the best experience."=0A> > > >=0A> > > >=0A> > > > --=0A> > > > L=
atest Podcast:=0A> > > >=0A> https://www.linkedin.com/feed/update/urn:li:ac=
tivity:6791014284936785920/=0A> <https://www.linkedin.com/feed/update/urn:l=
i:activity:6791014284936785920/>=0A> > > >=0A> > > > Dave T=C3=A4ht CTO, Te=
kLibre, LLC=0A> > > > _______________________________________________=0A> >=
 > > Cerowrt-devel mailing list=0A> > > > Cerowrt-devel@lists.bufferbloat.n=
et=0A> <mailto:Cerowrt-devel@lists.bufferbloat.net>=0A> > > > https://lists=
.bufferbloat.net/listinfo/cerowrt-devel=0A> <https://lists.bufferbloat.net/=
listinfo/cerowrt-devel>=0A> > > >=0A> >=0A> >=0A> >=0A> > --=0A> > Latest P=
odcast:=0A> > https://www.linkedin.com/feed/update/urn:li:activity:67910142=
84936785920/=0A> <https://www.linkedin.com/feed/update/urn:li:activity:6791=
014284936785920/>=0A> >=0A> > Dave T=C3=A4ht CTO, TekLibre, LLC=0A> > _____=
__________________________________________=0A> > Make-wifi-fast mailing lis=
t=0A> > Make-wifi-fast@lists.bufferbloat.net=0A> <mailto:Make-wifi-fast@lis=
ts.bufferbloat.net>=0A> > https://lists.bufferbloat.net/listinfo/make-wifi-=
fast=0A> <https://lists.bufferbloat.net/listinfo/make-wifi-fast>=0A> >=0A> =
>=0A> > This electronic communication and the information and any files tra=
nsmitted=0A> with it, or attached to it, are confidential and are intended =
solely for the use=0A> of=0A> > the individual or entity to whom it is addr=
essed and may contain information=0A> that is confidential, legally privile=
ged, protected by privacy laws, or otherwise=0A> > restricted from disclosu=
re to anyone else. If you are not the intended=0A> recipient or the person =
responsible for delivering the e-mail to the intended=0A> recipient,=0A> > =
you are hereby notified that any use, copying, distributing, dissemination,=
=0A> forwarding, printing, or copying of this e-mail is strictly prohibited=
. If you=0A> > received this e-mail in error, please return the e-mail to t=
he sender, delete=0A> it from your computer, and destroy any printed copy o=
f it.=0A> >=0A> > _______________________________________________=0A> > Sta=
rlink mailing list=0A> > Starlink@lists.bufferbloat.net=0A> > https://lists=
.bufferbloat.net/listinfo/starlink=0A> >=0A> =0A> =0A> --=0A> Ben Greear <g=
reearb@candelatech.com>=0A> Candela Technologies Inc http://www.candelatech=
.com=0A> 
------=_20210708153800000000_10844
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">I will tell you flat o=
ut that the arrival time distribution assumption made by Little's Lemma tha=
t allows "estimation of queue depth" is totally unreasonable on ANY Interne=
t in practice.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; fon=
t-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0=
;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;"=
>The assumption is a Poisson Arrival Process. In reality, traffic arrivals =
in real internet applications are extremely far from Poisson, and, of cours=
e, using TCP windowing, become highly intercorrelated with crossing traffic=
 that shares the same queue.</p>=0A<p style=3D"margin:0;padding:0;font-fami=
ly: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p sty=
le=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap=
: break-word;">So, as I've tried to tell many, many net-heads (people who i=
gnore applications layer behavior, like the people that think latency doesn=
't matter to end users, only throughput), end-to-end packet arrival times o=
n a practical network are incredibly far from Poisson - and they are more l=
ike fractal probability distributions, very irregular at all scales of time=
.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt;=
 overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;fo=
nt-family: arial; font-size: 10pt; overflow-wrap: break-word;">So, the idea=
 that iperf can estimate queue depth by Little's Lemma by just measuring sa=
turation of capacity of a path is bogus.The less Poisson, the worse the est=
imate gets, by a huge factor.</p>=0A<p style=3D"margin:0;padding:0;font-fam=
ily: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p st=
yle=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wra=
p: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: ar=
ial; font-size: 10pt; overflow-wrap: break-word;">Where does the Poisson as=
sumption come from?&nbsp; Well, like many theorems, it is the simplest trac=
table closed form solution - it creates a simplified view, by being a "sing=
le-parameter" distribution (the parameter is called lambda for a Poisson di=
stribution).&nbsp; And the analysis of a simple queue with poisson arrival =
distribution and a static, fixed service time is the first interesting Queu=
eing Theory example in most textbooks. It is suggestive of an interesting p=
henomenon, but it does NOT characterize any real system.</p>=0A<p style=3D"=
margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: brea=
k-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; fo=
nt-size: 10pt; overflow-wrap: break-word;">It's the queueing theory equival=
ent of "First, we assume a spherical cow...". in doing an example in a fres=
hman physics class.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial=
; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"mar=
gin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-w=
ord;">Unfortunately, most networking engineers understand neither queuing t=
heory nor application networking usage in interactive applications. Which m=
akes them arrogant. They assume all distributions are poisson!</p>=0A<p sty=
le=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap=
: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: ari=
al; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"m=
argin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break=
-word;">On Tuesday, July 6, 2021 9:46am, "Ben Greear" &lt;greearb@candelate=
ch.com&gt; said:<br /><br /></p>=0A<div id=3D"SafeStyles1625772289">=0A<p s=
tyle=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wr=
ap: break-word;">&gt; Hello,<br />&gt; <br />&gt; I am interested to hear w=
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
:07 AM Dave Taht &lt;dave.taht@gmail.com<br />&gt; &lt;mailto:dave.taht@gma=
il.com&gt;&gt; wrote:<br />&gt; &gt;<br />&gt; &gt; In terms of trying to f=
ind "Quality" I have tried to encourage folk to<br />&gt; &gt; both read "z=
en and the art of motorcycle maintenance"[0], and Deming's<br />&gt; &gt; w=
ork on "total quality management".<br />&gt; &gt;<br />&gt; &gt; My own sli=
ce at this network, computer and lifestyle "issue" is aiming<br />&gt; &gt;=
 for "imperceptible latency" in all things. [1]. There's a lot of<br />&gt;=
 &gt; fallout from that in terms of not just addressing queuing delay, but<=
br />&gt; &gt; caching, prefetching, and learning more about what a user re=
ally needs<br />&gt; &gt; (as opposed to wants) to know via intelligent age=
nts.<br />&gt; &gt;<br />&gt; &gt; [0] If you want to get depressed, read P=
irsig's successor to "zen...",<br />&gt; &gt; lila, which is in part about =
what happens when an engineer hits an<br />&gt; &gt; insoluble problem.<br =
/>&gt; &gt; [1] https://www.internetsociety.org/events/latency2013/<br />&g=
t; &lt;https://www.internetsociety.org/events/latency2013/&gt;<br />&gt; &g=
t;<br />&gt; &gt;<br />&gt; &gt;<br />&gt; &gt; On Thu, Jul 1, 2021 at 6:16=
 PM David P. Reed &lt;dpreed@deepplum.com<br />&gt; &lt;mailto:dpreed@deepp=
lum.com&gt;&gt; wrote:<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; Well, nice t=
hat the folks doing the conference&nbsp; are willing to<br />&gt; consider =
that quality of user experience has little to do with signalling rate at<br=
 />&gt; the<br />&gt; &gt; physical layer or throughput of FTP transfers.<b=
r />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &=
gt; But honestly, the fact that they call the problem "network quality"<br =
/>&gt; suggests that they REALLY, REALLY don't understand the Internet isn'=
t the hardware<br />&gt; or<br />&gt; &gt; the routers or even the routing =
algorithms *to its users*.<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt=
; &gt; &gt;<br />&gt; &gt; &gt; By ignoring the diversity of applications n=
ow and in the future,<br />&gt; and the fact that we DON'T KNOW what will b=
e coming up, this conference will<br />&gt; likely fall<br />&gt; &gt; into=
 the usual trap that net-heads fall into - optimizing for some<br />&gt; im=
aginary reality that doesn't exist, and in fact will probably never be what=
<br />&gt; users<br />&gt; &gt; actually will do given the chance.<br />&gt=
; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; I s=
aw this issue in 1976 in the group developing the original<br />&gt; Intern=
et protocols - a desire to put *into the network* special tricks to optimiz=
e<br />&gt; ASR33<br />&gt; &gt; logins to remote computers from terminal c=
oncentrators (aka remote<br />&gt; login), bulk file transfers between file=
 systems on different time-sharing<br />&gt; systems, and<br />&gt; &gt; "s=
essions" (virtual circuits) that required logins. And then trying to<br />&=
gt; exploit underlying "multicast" by building it into the IP layer, becaus=
e someone<br />&gt; &gt; thought that TV broadcast would be the dominant ap=
plication.<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br /=
>&gt; &gt; &gt; Frankly, to think of "quality" as something that can be "pr=
ovided"<br />&gt; by "the network" misses the entire point of "end-to-end a=
rgument in system<br />&gt; design".<br />&gt; &gt; Quality is not a proper=
ty defined or created by The Network. If you want<br />&gt; to talk about Q=
uality, you need to talk about users - all the users at all times,<br />&gt=
; &gt; now and into the future, and that's something you can't do if you do=
n't<br />&gt; bother to include current and future users talking about what=
 they might expect<br />&gt; to<br />&gt; &gt; experience that they don't e=
xperience.<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br /=
>&gt; &gt; &gt; There was much fighting back in 1976 that basically involve=
d<br />&gt; "network experts" saying that the network was the place to "sol=
ve" such issues as<br />&gt; quality,<br />&gt; &gt; so applications could =
avoid having to solve such issues.<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<=
br />&gt; &gt; &gt;<br />&gt; &gt; &gt; What some of us managed to do was t=
o argue that you can't "solve"<br />&gt; such issues. All you can do is pro=
vide a framework that enables different uses to<br />&gt; &gt; *cooperate* =
in some way.<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br=
 />&gt; &gt; &gt; Which is why the Internet drops packets rather than queue=
ing them,<br />&gt; and why diffserv cannot work.<br />&gt; &gt; &gt;<br />=
&gt; &gt; &gt; (I know the latter is conftroversial, but at the moment, ALL=
 of<br />&gt; diffserv attempts to talk about end-to-end applicaiton specif=
ic metrics, but<br />&gt; never, ever<br />&gt; &gt; explains what the diff=
serv control points actually do w.r.t. what the IP<br />&gt; layer can actu=
ally control. So it is meaningless - another violation of the<br />&gt; &gt=
; so-called end-to-end principle).<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<=
br />&gt; &gt; &gt;<br />&gt; &gt; &gt; Networks are about getting packets =
from here to there, multiplexing<br />&gt; the underlying resources. That's=
 it. Quality is a whole different thing. Quality<br />&gt; can<br />&gt; &g=
t; be improved by end-to-end approaches, if the underlying network provides=
<br />&gt; some kind of thing that actually creates a way for end-to-end ap=
plications to<br />&gt; &gt; affect queueing and routing decisions, and mor=
e importantly getting<br />&gt; "telemetry" from the network regarding what=
 is actually going on with the other<br />&gt; &gt; end-to-end users sharin=
g the infrastructure.<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt=
; &gt;<br />&gt; &gt; &gt; This conference won't talk about it this way. So=
 don't waste your<br />&gt; time.<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<b=
r />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &=
gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; On Wednesday, June 30, 2021 8:1=
2pm, "Dave Taht"<br />&gt; &lt;dave.taht@gmail.com &lt;mailto:dave.taht@gma=
il.com&gt;&gt; said:<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; The progr=
am committee members are *amazing*. Perhaps, finally,<br />&gt; we can<br /=
>&gt; &gt; &gt; &gt; move the bar for the internet's quality metrics past e=
ndless,<br />&gt; blind<br />&gt; &gt; &gt; &gt; repetitions of speedtest.<=
br />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; For complete details, ple=
ase see:<br />&gt; &gt; &gt; &gt; https://www.iab.org/activities/workshops/=
network-quality/<br />&gt; &lt;https://www.iab.org/activities/workshops/net=
work-quality/&gt;<br />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; Submiss=
ions Due: Monday 2nd August 2021, midnight AOE<br />&gt; (Anywhere On Earth=
)<br />&gt; &gt; &gt; &gt; Invitations Issued by: Monday 16th August 2021<b=
r />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; Workshop Date: This will b=
e a virtual workshop, spread over<br />&gt; three days:<br />&gt; &gt; &gt;=
 &gt;<br />&gt; &gt; &gt; &gt; 1400-1800 UTC Tue 14th September 2021<br />&=
gt; &gt; &gt; &gt; 1400-1800 UTC Wed 15th September 2021<br />&gt; &gt; &gt=
; &gt; 1400-1800 UTC Thu 16th September 2021<br />&gt; &gt; &gt; &gt;<br />=
&gt; &gt; &gt; &gt; Workshop co-chairs: Wes Hardaker, Evgeny Khorov, Omer S=
hapira<br />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; The Program Commit=
tee members:<br />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; Jari Arkko, =
Olivier Bonaventure, Vint Cerf, Stuart Cheshire,<br />&gt; Sam<br />&gt; &g=
t; &gt; &gt; Crowford, Nick Feamster, Jim Gettys, Toke Hoiland-Jorgensen,<b=
r />&gt; Geoff<br />&gt; &gt; &gt; &gt; Huston, Cullen Jennings, Katarzyna =
Kosek-Szott, Mirja<br />&gt; Kuehlewind,<br />&gt; &gt; &gt; &gt; Jason Liv=
ingood, Matt Mathias, Randall Meyer, Kathleen<br />&gt; Nichols,<br />&gt; =
&gt; &gt; &gt; Christoph Paasch, Tommy Pauly, Greg White, Keith Winstein.<b=
r />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; Send Submissions to: netwo=
rk-quality-workshop-pc@iab.org<br />&gt; &lt;mailto:network-quality-worksho=
p-pc@iab.org&gt;.<br />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; Positio=
n papers from academia, industry, the open source<br />&gt; community and<b=
r />&gt; &gt; &gt; &gt; others that focus on measurements, experiences, obs=
ervations<br />&gt; and<br />&gt; &gt; &gt; &gt; advice for the future are =
welcome. Papers that reflect<br />&gt; experience<br />&gt; &gt; &gt; &gt; =
based on deployed services are especially welcome. The<br />&gt; organizers=
<br />&gt; &gt; &gt; &gt; understand that specific actions taken by operato=
rs are<br />&gt; unlikely to be<br />&gt; &gt; &gt; &gt; discussed in detai=
l, so papers discussing general categories<br />&gt; of<br />&gt; &gt; &gt;=
 &gt; actions and issues without naming specific technologies,<br />&gt; pr=
oducts, or<br />&gt; &gt; &gt; &gt; other players in the ecosystem are expe=
cted. Papers should not<br />&gt; focus<br />&gt; &gt; &gt; &gt; on specifi=
c protocol solutions.<br />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; The=
 workshop will be by invitation only. Those wishing to<br />&gt; attend<br =
/>&gt; &gt; &gt; &gt; should submit a position paper to the address above; =
it may<br />&gt; take the<br />&gt; &gt; &gt; &gt; form of an Internet-Draf=
t.<br />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; All inputs submitted a=
nd considered relevant will be published<br />&gt; on the<br />&gt; &gt; &g=
t; &gt; workshop website. The organisers will decide whom to invite<br />&g=
t; based on<br />&gt; &gt; &gt; &gt; the submissions received. Sessions wil=
l be organized according<br />&gt; to<br />&gt; &gt; &gt; &gt; content, and=
 not every accepted submission or invited attendee<br />&gt; will<br />&gt;=
 &gt; &gt; &gt; have an opportunity to present as the intent is to foster<b=
r />&gt; discussion<br />&gt; &gt; &gt; &gt; and not simply to have a seque=
nce of presentations.<br />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; Pos=
ition papers from those not planning to attend the virtual<br />&gt; sessio=
ns<br />&gt; &gt; &gt; &gt; themselves are also encouraged. A workshop repo=
rt will be<br />&gt; published<br />&gt; &gt; &gt; &gt; afterwards.<br />&g=
t; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; Overview:<br />&gt; &gt; &gt; &g=
t;<br />&gt; &gt; &gt; &gt; "We believe that one of the major factors behin=
d this lack of<br />&gt; progress<br />&gt; &gt; &gt; &gt; is the popular p=
erception that throughput is the often sole<br />&gt; measure of<br />&gt; =
&gt; &gt; &gt; the quality of Internet connectivity. With such narrow focus=
,<br />&gt; people<br />&gt; &gt; &gt; &gt; don=E2=80=99t consider question=
s such as:<br />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; What is the la=
tency under typical working conditions?<br />&gt; &gt; &gt; &gt; How reliab=
le is the connectivity across longer time periods?<br />&gt; &gt; &gt; &gt;=
 Does the network allow the use of a broad range of protocols?<br />&gt; &g=
t; &gt; &gt; What services can be run by clients of the network?<br />&gt; =
&gt; &gt; &gt; What kind of IPv4, NAT or IPv6 connectivity is offered, and<=
br />&gt; are there firewalls?<br />&gt; &gt; &gt; &gt; What security mecha=
nisms are available for local services,<br />&gt; such as DNS?<br />&gt; &g=
t; &gt; &gt; To what degree are the privacy, confidentiality, integrity<br =
/>&gt; and<br />&gt; &gt; &gt; &gt; authenticity of user communications gua=
rded?<br />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; Improving these asp=
ects of network quality will likely depend<br />&gt; on<br />&gt; &gt; &gt;=
 &gt; measurement and exposing metrics to all involved parties,<br />&gt; i=
ncluding to<br />&gt; &gt; &gt; &gt; end users in a meaningful way. Such me=
asurements and exposure<br />&gt; of the<br />&gt; &gt; &gt; &gt; right met=
rics will allow service providers and network<br />&gt; operators to<br />&=
gt; &gt; &gt; &gt; focus on the aspects that impacts the users=E2=80=99 exp=
erience<br />&gt; most and at<br />&gt; &gt; &gt; &gt; the same time empowe=
rs users to choose the Internet service<br />&gt; that will<br />&gt; &gt; =
&gt; &gt; give them the best experience."<br />&gt; &gt; &gt; &gt;<br />&gt=
; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; --<br />&gt; &gt; &gt; &gt; Lates=
t Podcast:<br />&gt; &gt; &gt; &gt;<br />&gt; https://www.linkedin.com/feed=
/update/urn:li:activity:6791014284936785920/<br />&gt; &lt;https://www.link=
edin.com/feed/update/urn:li:activity:6791014284936785920/&gt;<br />&gt; &gt=
; &gt; &gt;<br />&gt; &gt; &gt; &gt; Dave T=C3=A4ht CTO, TekLibre, LLC<br /=
>&gt; &gt; &gt; &gt; _______________________________________________<br />&=
gt; &gt; &gt; &gt; Cerowrt-devel mailing list<br />&gt; &gt; &gt; &gt; Cero=
wrt-devel@lists.bufferbloat.net<br />&gt; &lt;mailto:Cerowrt-devel@lists.bu=
fferbloat.net&gt;<br />&gt; &gt; &gt; &gt; https://lists.bufferbloat.net/li=
stinfo/cerowrt-devel<br />&gt; &lt;https://lists.bufferbloat.net/listinfo/c=
erowrt-devel&gt;<br />&gt; &gt; &gt; &gt;<br />&gt; &gt;<br />&gt; &gt;<br =
/>&gt; &gt;<br />&gt; &gt; --<br />&gt; &gt; Latest Podcast:<br />&gt; &gt;=
 https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/<=
br />&gt; &lt;https://www.linkedin.com/feed/update/urn:li:activity:67910142=
84936785920/&gt;<br />&gt; &gt;<br />&gt; &gt; Dave T=C3=A4ht CTO, TekLibre=
, LLC<br />&gt; &gt; _______________________________________________<br />&=
gt; &gt; Make-wifi-fast mailing list<br />&gt; &gt; Make-wifi-fast@lists.bu=
fferbloat.net<br />&gt; &lt;mailto:Make-wifi-fast@lists.bufferbloat.net&gt;=
<br />&gt; &gt; https://lists.bufferbloat.net/listinfo/make-wifi-fast<br />=
&gt; &lt;https://lists.bufferbloat.net/listinfo/make-wifi-fast&gt;<br />&gt=
; &gt;<br />&gt; &gt;<br />&gt; &gt; This electronic communication and the =
information and any files transmitted<br />&gt; with it, or attached to it,=
 are confidential and are intended solely for the use<br />&gt; of<br />&gt=
; &gt; the individual or entity to whom it is addressed and may contain inf=
ormation<br />&gt; that is confidential, legally privileged, protected by p=
rivacy laws, or otherwise<br />&gt; &gt; restricted from disclosure to anyo=
ne else. If you are not the intended<br />&gt; recipient or the person resp=
onsible for delivering the e-mail to the intended<br />&gt; recipient,<br /=
>&gt; &gt; you are hereby notified that any use, copying, distributing, dis=
semination,<br />&gt; forwarding, printing, or copying of this e-mail is st=
rictly prohibited. If you<br />&gt; &gt; received this e-mail in error, ple=
ase return the e-mail to the sender, delete<br />&gt; it from your computer=
, and destroy any printed copy of it.<br />&gt; &gt;<br />&gt; &gt; _______=
________________________________________<br />&gt; &gt; Starlink mailing li=
st<br />&gt; &gt; Starlink@lists.bufferbloat.net<br />&gt; &gt; https://lis=
ts.bufferbloat.net/listinfo/starlink<br />&gt; &gt;<br />&gt; <br />&gt; <b=
r />&gt; --<br />&gt; Ben Greear &lt;greearb@candelatech.com&gt;<br />&gt; =
Candela Technologies Inc http://www.candelatech.com<br />&gt; </p>=0A</div>=
</font>
------=_20210708153800000000_10844--


--===============4512829161150788128==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4512829161150788128==--


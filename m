Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABDD3BDF1B
	for <lists+cake@lfdr.de>; Tue,  6 Jul 2021 23:45:22 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E71BA3CB60;
	Tue,  6 Jul 2021 17:45:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1625607920;
	bh=MB1RlfE7PLPG5HfrewpLT4fgDOj71KwaY98Qcyjji8E=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=bIcBAOfqCn1KqMnBQt855Y0nP1XqdPep53h9+ZwnGPU1b0pBP0Tq100PppPhWMgWv
	 jxDWiIvjDl4A6F6noUHY3Lwg+8DjyyuwchpNxIc7oSbbbJ/uqk48lyKr3NXrWZUd04
	 DbTjtAqJThkDCIkcgttcK7Vy2xnfh1FM57q33vMy6Q8mO162Fit0IyLpNR9K+SCVuq
	 RGC3/fnP1kQOmzk6pWXx102MFR/EvtFYuHcheA+laBbwzD+9mP66TH3hKc/+Kkuz24
	 tO9ffITMNFFl3bDV1tgL9RuDY8+Z4iK4xWp4ofmJ8K88px8O3I8F2SgNn5AHC70+T0
	 1p1rNSmu9OReQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7129A3CB5B
 for <cake@lists.bufferbloat.net>; Tue,  6 Jul 2021 16:44:07 -0400 (EDT)
Received: by mail-ed1-x532.google.com with SMTP id ch27so377193edb.10
 for <cake@lists.bufferbloat.net>; Tue, 06 Jul 2021 13:44:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QwXMAOg+20yqQV7syseFmkUqUUqvadOr5lbO1SRV1Os=;
 b=HyE7bWWPBjFQ03E3mSG5Mf6tqCrzYsYEfHsxnxfOZZlnqtDN4e1GnYRgZ7/tL/eSwL
 90sCqA4/m4sbYbg6YJznX6eyamn55BaUsVHrINWLX5ivTIVk9kKPgsaKMze7XGnAwHE/
 MQ19JxiG0CXf2tMsh70Es526y1iokqrf/+EIk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QwXMAOg+20yqQV7syseFmkUqUUqvadOr5lbO1SRV1Os=;
 b=aq/Ip9QDs7sd7smYExLgBAfmV1jHcLNyGOtWdTQbCe9UoV6Kmr6myPjewd5Jge+C3z
 lCCPd450S6zgrFzMPzd+RTyvjcfXKK9AJAfopFQB2VXZCf5SO27pQYxp54iaowXvPLZN
 kI1Y2akmC4zboE9+dgz0bXY+us+AHfIihD2m25ZvL70UVhEaNlUtsY45ICF6KNR1+ylg
 EzykRRCEWQphrszA8bSaYDLP0lTvETzGEq70XdwwVHGCctepij0DU8lzr89UKDmsmHLz
 MuDX2BZhwNBEBvjGqJ8Z9tqXyTfLEwWrd6ltFqIB+471aISDq4Wnw0JuqakMYo26Q8zE
 gj6g==
X-Gm-Message-State: AOAM532e/VG4rc+Tr0GYoKcDsqRIQeJX9WSlF2c9MtWT7RaoWjQXKp3O
 zZnirDUpZcUUL2xviem6jPxnRYTzbfvovTXZW0+w0Pk05xGR/cZ+cy4KfX+cs0+wulRAPugMOvb
 zMdpjgsurFA53bZC2NkGwqNAog2qP
X-Google-Smtp-Source: ABdhPJzgsizLYsEL1Q0Je4dMI57YIn9oDbrAQDG9RZREiJGEOs05wrMABhEpJNe/RYls8buuOxKxXih1Q2AnBjrzQsk=
X-Received: by 2002:a05:6402:448:: with SMTP id
 p8mr25031125edw.60.1625604246199; 
 Tue, 06 Jul 2021 13:44:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
In-Reply-To: <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
Date: Tue, 6 Jul 2021 13:43:55 -0700
Message-ID: <CAHb6LvqSkcGZBZ+iHY-g0vSunqe1sFHmvoFXGjWSoYvtwHeHaA@mail.gmail.com>
To: Ben Greear <greearb@candelatech.com>
X-Mailman-Approved-At: Tue, 06 Jul 2021 17:45:19 -0400
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
Content-Type: multipart/mixed; boundary="===============6142464231753213144=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6142464231753213144==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000a9b6d605c67a7b38"

--000000000000a9b6d605c67a7b38
Content-Type: multipart/alternative; boundary="000000000000a42ad305c67a7b2f"

--000000000000a42ad305c67a7b2f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The four part attenuator part would be more interesting to me if it also
had a solid state phase shifters.  This allows for testing 2x2 MIMO testing
per affecting the spatial stream eigen vectors/values.

Bob

PS. The price per port isn't competitive. Probably a good idea to survey
the market competition.

On Tue, Jul 6, 2021 at 6:46 AM Ben Greear <greearb@candelatech.com> wrote:

> Hello,
>
> I am interested to hear wish lists for network testing features.  We make
> test equipment, supporting lots
> of wifi stations and a distributed architecture, with built-in udp, tcp,
> ipv6, http, ... protocols,
> and open to creating/improving some of our automated tests.
>
> I know Dave has some test scripts already, so I'm not necessarily looking
> to reimplement that,
> but more fishing for other/new ideas.
>
> Thanks,
> Ben
>
> On 7/2/21 4:28 PM, Bob McMahon wrote:
> > I think we need the language of math here. It seems like the network
> power metric, introduced by Kleinrock and Jaffe in the late 70s, is
> something useful.
> > Effective end/end queue depths per Little's law also seems useful. Both
> are available in iperf 2 from a test perspective. Repurposing test
> techniques to actual
> > traffic could be useful. Hence the question around what exact telemetry
> is useful to apps making socket write() and read() calls.
> >
> > Bob
> >
> > On Fri, Jul 2, 2021 at 10:07 AM Dave Taht <dave.taht@gmail.com <mailto:
> dave.taht@gmail.com>> wrote:
> >
> >     In terms of trying to find "Quality" I have tried to encourage folk
> to
> >     both read "zen and the art of motorcycle maintenance"[0], and
> Deming's
> >     work on "total quality management".
> >
> >     My own slice at this network, computer and lifestyle "issue" is
> aiming
> >     for "imperceptible latency" in all things. [1]. There's a lot of
> >     fallout from that in terms of not just addressing queuing delay, bu=
t
> >     caching, prefetching, and learning more about what a user really
> needs
> >     (as opposed to wants) to know via intelligent agents.
> >
> >     [0] If you want to get depressed, read Pirsig's successor to
> "zen...",
> >     lila, which is in part about what happens when an engineer hits an
> >     insoluble problem.
> >     [1] https://www.internetsociety.org/events/latency2013/ <
> https://www.internetsociety.org/events/latency2013/>
> >
> >
> >
> >     On Thu, Jul 1, 2021 at 6:16 PM David P. Reed <dpreed@deepplum.com
> <mailto:dpreed@deepplum.com>> wrote:
> >      >
> >      > Well, nice that the folks doing the conference  are willing to
> consider that quality of user experience has little to do with signalling
> rate at the
> >     physical layer or throughput of FTP transfers.
> >      >
> >      >
> >      >
> >      > But honestly, the fact that they call the problem "network
> quality" suggests that they REALLY, REALLY don't understand the Internet
> isn't the hardware or
> >     the routers or even the routing algorithms *to its users*.
> >      >
> >      >
> >      >
> >      > By ignoring the diversity of applications now and in the future,
> and the fact that we DON'T KNOW what will be coming up, this conference
> will likely fall
> >     into the usual trap that net-heads fall into - optimizing for some
> imaginary reality that doesn't exist, and in fact will probably never be
> what users
> >     actually will do given the chance.
> >      >
> >      >
> >      >
> >      > I saw this issue in 1976 in the group developing the original
> Internet protocols - a desire to put *into the network* special tricks to
> optimize ASR33
> >     logins to remote computers from terminal concentrators (aka remote
> login), bulk file transfers between file systems on different time-sharin=
g
> systems, and
> >     "sessions" (virtual circuits) that required logins. And then trying
> to exploit underlying "multicast" by building it into the IP layer, becau=
se
> someone
> >     thought that TV broadcast would be the dominant application.
> >      >
> >      >
> >      >
> >      > Frankly, to think of "quality" as something that can be
> "provided" by "the network" misses the entire point of "end-to-end argume=
nt
> in system design".
> >     Quality is not a property defined or created by The Network. If you
> want to talk about Quality, you need to talk about users - all the users =
at
> all times,
> >     now and into the future, and that's something you can't do if you
> don't bother to include current and future users talking about what they
> might expect to
> >     experience that they don't experience.
> >      >
> >      >
> >      >
> >      > There was much fighting back in 1976 that basically involved
> "network experts" saying that the network was the place to "solve" such
> issues as quality,
> >     so applications could avoid having to solve such issues.
> >      >
> >      >
> >      >
> >      > What some of us managed to do was to argue that you can't "solve=
"
> such issues. All you can do is provide a framework that enables different
> uses to
> >     *cooperate* in some way.
> >      >
> >      >
> >      >
> >      > Which is why the Internet drops packets rather than queueing
> them, and why diffserv cannot work.
> >      >
> >      > (I know the latter is conftroversial, but at the moment, ALL of
> diffserv attempts to talk about end-to-end applicaiton specific metrics,
> but never, ever
> >     explains what the diffserv control points actually do w.r.t. what
> the IP layer can actually control. So it is meaningless - another violati=
on
> of the
> >     so-called end-to-end principle).
> >      >
> >      >
> >      >
> >      > Networks are about getting packets from here to there,
> multiplexing the underlying resources. That's it. Quality is a whole
> different thing. Quality can
> >     be improved by end-to-end approaches, if the underlying network
> provides some kind of thing that actually creates a way for end-to-end
> applications to
> >     affect queueing and routing decisions, and more importantly getting
> "telemetry" from the network regarding what is actually going on with the
> other
> >     end-to-end users sharing the infrastructure.
> >      >
> >      >
> >      >
> >      > This conference won't talk about it this way. So don't waste you=
r
> time.
> >      >
> >      >
> >      >
> >      >
> >      >
> >      >
> >      >
> >      > On Wednesday, June 30, 2021 8:12pm, "Dave Taht" <
> dave.taht@gmail.com <mailto:dave.taht@gmail.com>> said:
> >      >
> >      > > The program committee members are *amazing*. Perhaps, finally,
> we can
> >      > > move the bar for the internet's quality metrics past endless,
> blind
> >      > > repetitions of speedtest.
> >      > >
> >      > > For complete details, please see:
> >      > > https://www.iab.org/activities/workshops/network-quality/ <
> https://www.iab.org/activities/workshops/network-quality/>
> >      > >
> >      > > Submissions Due: Monday 2nd August 2021, midnight AOE (Anywher=
e
> On Earth)
> >      > > Invitations Issued by: Monday 16th August 2021
> >      > >
> >      > > Workshop Date: This will be a virtual workshop, spread over
> three days:
> >      > >
> >      > > 1400-1800 UTC Tue 14th September 2021
> >      > > 1400-1800 UTC Wed 15th September 2021
> >      > > 1400-1800 UTC Thu 16th September 2021
> >      > >
> >      > > Workshop co-chairs: Wes Hardaker, Evgeny Khorov, Omer Shapira
> >      > >
> >      > > The Program Committee members:
> >      > >
> >      > > Jari Arkko, Olivier Bonaventure, Vint Cerf, Stuart Cheshire, S=
am
> >      > > Crowford, Nick Feamster, Jim Gettys, Toke Hoiland-Jorgensen,
> Geoff
> >      > > Huston, Cullen Jennings, Katarzyna Kosek-Szott, Mirja
> Kuehlewind,
> >      > > Jason Livingood, Matt Mathias, Randall Meyer, Kathleen Nichols=
,
> >      > > Christoph Paasch, Tommy Pauly, Greg White, Keith Winstein.
> >      > >
> >      > > Send Submissions to: network-quality-workshop-pc@iab.org
> <mailto:network-quality-workshop-pc@iab.org>.
> >      > >
> >      > > Position papers from academia, industry, the open source
> community and
> >      > > others that focus on measurements, experiences, observations a=
nd
> >      > > advice for the future are welcome. Papers that reflect
> experience
> >      > > based on deployed services are especially welcome. The
> organizers
> >      > > understand that specific actions taken by operators are
> unlikely to be
> >      > > discussed in detail, so papers discussing general categories o=
f
> >      > > actions and issues without naming specific technologies,
> products, or
> >      > > other players in the ecosystem are expected. Papers should not
> focus
> >      > > on specific protocol solutions.
> >      > >
> >      > > The workshop will be by invitation only. Those wishing to atte=
nd
> >      > > should submit a position paper to the address above; it may
> take the
> >      > > form of an Internet-Draft.
> >      > >
> >      > > All inputs submitted and considered relevant will be published
> on the
> >      > > workshop website. The organisers will decide whom to invite
> based on
> >      > > the submissions received. Sessions will be organized according
> to
> >      > > content, and not every accepted submission or invited attendee
> will
> >      > > have an opportunity to present as the intent is to foster
> discussion
> >      > > and not simply to have a sequence of presentations.
> >      > >
> >      > > Position papers from those not planning to attend the virtual
> sessions
> >      > > themselves are also encouraged. A workshop report will be
> published
> >      > > afterwards.
> >      > >
> >      > > Overview:
> >      > >
> >      > > "We believe that one of the major factors behind this lack of
> progress
> >      > > is the popular perception that throughput is the often sole
> measure of
> >      > > the quality of Internet connectivity. With such narrow focus,
> people
> >      > > don=E2=80=99t consider questions such as:
> >      > >
> >      > > What is the latency under typical working conditions?
> >      > > How reliable is the connectivity across longer time periods?
> >      > > Does the network allow the use of a broad range of protocols?
> >      > > What services can be run by clients of the network?
> >      > > What kind of IPv4, NAT or IPv6 connectivity is offered, and ar=
e
> there firewalls?
> >      > > What security mechanisms are available for local services, suc=
h
> as DNS?
> >      > > To what degree are the privacy, confidentiality, integrity and
> >      > > authenticity of user communications guarded?
> >      > >
> >      > > Improving these aspects of network quality will likely depend =
on
> >      > > measurement and exposing metrics to all involved parties,
> including to
> >      > > end users in a meaningful way. Such measurements and exposure
> of the
> >      > > right metrics will allow service providers and network
> operators to
> >      > > focus on the aspects that impacts the users=E2=80=99 experienc=
e most
> and at
> >      > > the same time empowers users to choose the Internet service
> that will
> >      > > give them the best experience."
> >      > >
> >      > >
> >      > > --
> >      > > Latest Podcast:
> >      > >
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/
> <https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920=
/
> >
> >      > >
> >      > > Dave T=C3=A4ht CTO, TekLibre, LLC
> >      > > _______________________________________________
> >      > > Cerowrt-devel mailing list
> >      > > Cerowrt-devel@lists.bufferbloat.net <mailto:
> Cerowrt-devel@lists.bufferbloat.net>
> >      > > https://lists.bufferbloat.net/listinfo/cerowrt-devel <
> https://lists.bufferbloat.net/listinfo/cerowrt-devel>
> >      > >
> >
> >
> >
> >     --
> >     Latest Podcast:
> >
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/
> <https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920=
/
> >
> >
> >     Dave T=C3=A4ht CTO, TekLibre, LLC
> >     _______________________________________________
> >     Make-wifi-fast mailing list
> >     Make-wifi-fast@lists.bufferbloat.net <mailto:
> Make-wifi-fast@lists.bufferbloat.net>
> >     https://lists.bufferbloat.net/listinfo/make-wifi-fast <
> https://lists.bufferbloat.net/listinfo/make-wifi-fast>
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
> >
> > _______________________________________________
> > Starlink mailing list
> > Starlink@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/starlink
> >
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

--000000000000a42ad305c67a7b2f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The four part attenuator part would be more interesting to=
 me if it also had a solid=C2=A0state phase shifters.=C2=A0 This allows for=
 testing 2x2 MIMO testing per affecting the spatial stream eigen vectors/va=
lues.=C2=A0<br><br>Bob<br><br>PS. The price per port isn&#39;t competitive.=
 Probably a good idea to survey the market competition.</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 6, 2021 =
at 6:46 AM Ben Greear &lt;<a href=3D"mailto:greearb@candelatech.com">greear=
b@candelatech.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">Hello,<br>
<br>
I am interested to hear wish lists for network testing features.=C2=A0 We m=
ake test equipment, supporting lots<br>
of wifi stations and a distributed architecture, with built-in udp, tcp, ip=
v6, http, ... protocols,<br>
and open to creating/improving some of our automated tests.<br>
<br>
I know Dave has some test scripts already, so I&#39;m not necessarily looki=
ng to reimplement that,<br>
but more fishing for other/new ideas.<br>
<br>
Thanks,<br>
Ben<br>
<br>
On 7/2/21 4:28 PM, Bob McMahon wrote:<br>
&gt; I think we need the language=C2=A0of math here. It seems like the netw=
ork power metric, introduced by Kleinrock and=C2=A0Jaffe in the late 70s, i=
s something useful. <br>
&gt; Effective end/end queue depths per Little&#39;s law also seems useful.=
 Both are available in iperf 2 from a test perspective. Repurposing test te=
chniques to actual <br>
&gt; traffic could be useful. Hence=C2=A0the question around what exact tel=
emetry is useful to apps making socket write() and read() calls.<br>
&gt; <br>
&gt; Bob<br>
&gt; <br>
&gt; On Fri, Jul 2, 2021 at 10:07 AM Dave Taht &lt;<a href=3D"mailto:dave.t=
aht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a> &lt;mailto:<a href=
=3D"mailto:dave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a>&g=
t;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0In terms of trying to find &quot;Quality&quot; I ha=
ve tried to encourage folk to<br>
&gt;=C2=A0 =C2=A0 =C2=A0both read &quot;zen and the art of motorcycle maint=
enance&quot;[0], and Deming&#39;s<br>
&gt;=C2=A0 =C2=A0 =C2=A0work on &quot;total quality management&quot;.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0My own slice at this network, computer and lifestyl=
e &quot;issue&quot; is aiming<br>
&gt;=C2=A0 =C2=A0 =C2=A0for &quot;imperceptible latency&quot; in all things=
. [1]. There&#39;s a lot of<br>
&gt;=C2=A0 =C2=A0 =C2=A0fallout from that in terms of not just addressing q=
ueuing delay, but<br>
&gt;=C2=A0 =C2=A0 =C2=A0caching, prefetching, and learning more about what =
a user really needs<br>
&gt;=C2=A0 =C2=A0 =C2=A0(as opposed to wants) to know via intelligent agent=
s.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0[0] If you want to get depressed, read Pirsig&#39;s=
 successor to &quot;zen...&quot;,<br>
&gt;=C2=A0 =C2=A0 =C2=A0lila, which is in part about what happens when an e=
ngineer hits an<br>
&gt;=C2=A0 =C2=A0 =C2=A0insoluble problem.<br>
&gt;=C2=A0 =C2=A0 =C2=A0[1] <a href=3D"https://www.internetsociety.org/even=
ts/latency2013/" rel=3D"noreferrer" target=3D"_blank">https://www.internets=
ociety.org/events/latency2013/</a> &lt;<a href=3D"https://www.internetsocie=
ty.org/events/latency2013/" rel=3D"noreferrer" target=3D"_blank">https://ww=
w.internetsociety.org/events/latency2013/</a>&gt;<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On Thu, Jul 1, 2021 at 6:16 PM David P. Reed &lt;<a=
 href=3D"mailto:dpreed@deepplum.com" target=3D"_blank">dpreed@deepplum.com<=
/a> &lt;mailto:<a href=3D"mailto:dpreed@deepplum.com" target=3D"_blank">dpr=
eed@deepplum.com</a>&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Well, nice that the folks doing the conferenc=
e=C2=A0 are willing to consider that quality of user experience has little =
to do with signalling rate at the<br>
&gt;=C2=A0 =C2=A0 =C2=A0physical layer or throughput of FTP transfers.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; But honestly, the fact that they call the pro=
blem &quot;network quality&quot; suggests that they REALLY, REALLY don&#39;=
t understand the Internet isn&#39;t the hardware or<br>
&gt;=C2=A0 =C2=A0 =C2=A0the routers or even the routing algorithms *to its =
users*.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; By ignoring the diversity of applications now=
 and in the future, and the fact that we DON&#39;T KNOW what will be coming=
 up, this conference will likely fall<br>
&gt;=C2=A0 =C2=A0 =C2=A0into the usual trap that net-heads fall into - opti=
mizing for some imaginary reality that doesn&#39;t exist, and in fact will =
probably never be what users<br>
&gt;=C2=A0 =C2=A0 =C2=A0actually will do given the chance.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; I saw this issue in 1976 in the group develop=
ing the original Internet protocols - a desire to put *into the network* sp=
ecial tricks to optimize ASR33<br>
&gt;=C2=A0 =C2=A0 =C2=A0logins to remote computers from terminal concentrat=
ors (aka remote login), bulk file transfers between file systems on differe=
nt time-sharing systems, and<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;sessions&quot; (virtual circuits) that requir=
ed logins. And then trying to exploit underlying &quot;multicast&quot; by b=
uilding it into the IP layer, because someone<br>
&gt;=C2=A0 =C2=A0 =C2=A0thought that TV broadcast would be the dominant app=
lication.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Frankly, to think of &quot;quality&quot; as s=
omething that can be &quot;provided&quot; by &quot;the network&quot; misses=
 the entire point of &quot;end-to-end argument in system design&quot;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0Quality is not a property defined or created by The=
 Network. If you want to talk about Quality, you need to talk about users -=
 all the users at all times,<br>
&gt;=C2=A0 =C2=A0 =C2=A0now and into the future, and that&#39;s something y=
ou can&#39;t do if you don&#39;t bother to include current and future users=
 talking about what they might expect to<br>
&gt;=C2=A0 =C2=A0 =C2=A0experience that they don&#39;t experience.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; There was much fighting back in 1976 that bas=
ically involved &quot;network experts&quot; saying that the network was the=
 place to &quot;solve&quot; such issues as quality,<br>
&gt;=C2=A0 =C2=A0 =C2=A0so applications could avoid having to solve such is=
sues.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; What some of us managed to do was to argue th=
at you can&#39;t &quot;solve&quot; such issues. All you can do is provide a=
 framework that enables different uses to<br>
&gt;=C2=A0 =C2=A0 =C2=A0*cooperate* in some way.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Which is why the Internet drops packets rathe=
r than queueing them, and why diffserv cannot work.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; (I know the latter is conftroversial, but at =
the moment, ALL of diffserv attempts to talk about end-to-end applicaiton s=
pecific metrics, but never, ever<br>
&gt;=C2=A0 =C2=A0 =C2=A0explains what the diffserv control points actually =
do w.r.t. what the IP layer can actually control. So it is meaningless - an=
other violation of the<br>
&gt;=C2=A0 =C2=A0 =C2=A0so-called end-to-end principle).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Networks are about getting packets from here =
to there, multiplexing the underlying resources. That&#39;s it. Quality is =
a whole different thing. Quality can<br>
&gt;=C2=A0 =C2=A0 =C2=A0be improved by end-to-end approaches, if the underl=
ying network provides some kind of thing that actually creates a way for en=
d-to-end applications to<br>
&gt;=C2=A0 =C2=A0 =C2=A0affect queueing and routing decisions, and more imp=
ortantly getting &quot;telemetry&quot; from the network regarding what is a=
ctually going on with the other<br>
&gt;=C2=A0 =C2=A0 =C2=A0end-to-end users sharing the infrastructure.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; This conference won&#39;t talk about it this =
way. So don&#39;t waste your time.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Wednesday, June 30, 2021 8:12pm, &quot;Dav=
e Taht&quot; &lt;<a href=3D"mailto:dave.taht@gmail.com" target=3D"_blank">d=
ave.taht@gmail.com</a> &lt;mailto:<a href=3D"mailto:dave.taht@gmail.com" ta=
rget=3D"_blank">dave.taht@gmail.com</a>&gt;&gt; said:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; The program committee members are *amazi=
ng*. Perhaps, finally, we can<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; move the bar for the internet&#39;s qual=
ity metrics past endless, blind<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; repetitions of speedtest.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; For complete details, please see:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; <a href=3D"https://www.iab.org/activitie=
s/workshops/network-quality/" rel=3D"noreferrer" target=3D"_blank">https://=
www.iab.org/activities/workshops/network-quality/</a> &lt;<a href=3D"https:=
//www.iab.org/activities/workshops/network-quality/" rel=3D"noreferrer" tar=
get=3D"_blank">https://www.iab.org/activities/workshops/network-quality/</a=
>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Submissions Due: Monday 2nd August 2021,=
 midnight AOE (Anywhere On Earth)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Invitations Issued by: Monday 16th Augus=
t 2021<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Workshop Date: This will be a virtual wo=
rkshop, spread over three days:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; 1400-1800 UTC Tue 14th September 2021<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; 1400-1800 UTC Wed 15th September 2021<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; 1400-1800 UTC Thu 16th September 2021<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Workshop co-chairs: Wes Hardaker, Evgeny=
 Khorov, Omer Shapira<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; The Program Committee members:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Jari Arkko, Olivier Bonaventure, Vint Ce=
rf, Stuart Cheshire, Sam<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Crowford, Nick Feamster, Jim Gettys, Tok=
e Hoiland-Jorgensen, Geoff<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Huston, Cullen Jennings, Katarzyna Kosek=
-Szott, Mirja Kuehlewind,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Jason Livingood, Matt Mathias, Randall M=
eyer, Kathleen Nichols,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Christoph Paasch, Tommy Pauly, Greg Whit=
e, Keith Winstein.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Send Submissions to: <a href=3D"mailto:n=
etwork-quality-workshop-pc@iab.org" target=3D"_blank">network-quality-works=
hop-pc@iab.org</a> &lt;mailto:<a href=3D"mailto:network-quality-workshop-pc=
@iab.org" target=3D"_blank">network-quality-workshop-pc@iab.org</a>&gt;.<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Position papers from academia, industry,=
 the open source community and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; others that focus on measurements, exper=
iences, observations and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; advice for the future are welcome. Paper=
s that reflect experience<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; based on deployed services are especiall=
y welcome. The organizers<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; understand that specific actions taken b=
y operators are unlikely to be<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; discussed in detail, so papers discussin=
g general categories of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; actions and issues without naming specif=
ic technologies, products, or<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; other players in the ecosystem are expec=
ted. Papers should not focus<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; on specific protocol solutions.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; The workshop will be by invitation only.=
 Those wishing to attend<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; should submit a position paper to the ad=
dress above; it may take the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; form of an Internet-Draft.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; All inputs submitted and considered rele=
vant will be published on the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; workshop website. The organisers will de=
cide whom to invite based on<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; the submissions received. Sessions will =
be organized according to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; content, and not every accepted submissi=
on or invited attendee will<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; have an opportunity to present as the in=
tent is to foster discussion<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; and not simply to have a sequence of pre=
sentations.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Position papers from those not planning =
to attend the virtual sessions<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; themselves are also encouraged. A worksh=
op report will be published<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; afterwards.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Overview:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; &quot;We believe that one of the major f=
actors behind this lack of progress<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; is the popular perception that throughpu=
t is the often sole measure of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; the quality of Internet connectivity. Wi=
th such narrow focus, people<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; don=E2=80=99t consider questions such as=
:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; What is the latency under typical workin=
g conditions?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; How reliable is the connectivity across =
longer time periods?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Does the network allow the use of a broa=
d range of protocols?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; What services can be run by clients of t=
he network?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; What kind of IPv4, NAT or IPv6 connectiv=
ity is offered, and are there firewalls?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; What security mechanisms are available f=
or local services, such as DNS?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; To what degree are the privacy, confiden=
tiality, integrity and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; authenticity of user communications guar=
ded?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Improving these aspects of network quali=
ty will likely depend on<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; measurement and exposing metrics to all =
involved parties, including to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; end users in a meaningful way. Such meas=
urements and exposure of the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; right metrics will allow service provide=
rs and network operators to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; focus on the aspects that impacts the us=
ers=E2=80=99 experience most and at<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; the same time empowers users to choose t=
he Internet service that will<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; give them the best experience.&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; --<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Latest Podcast:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; <a href=3D"https://www.linkedin.com/feed=
/update/urn:li:activity:6791014284936785920/" rel=3D"noreferrer" target=3D"=
_blank">https://www.linkedin.com/feed/update/urn:li:activity:67910142849367=
85920/</a> &lt;<a href=3D"https://www.linkedin.com/feed/update/urn:li:activ=
ity:6791014284936785920/" rel=3D"noreferrer" target=3D"_blank">https://www.=
linkedin.com/feed/update/urn:li:activity:6791014284936785920/</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Dave T=C3=A4ht CTO, TekLibre, LLC<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; ________________________________________=
_______<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; Cerowrt-devel mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; <a href=3D"mailto:Cerowrt-devel@lists.bu=
fferbloat.net" target=3D"_blank">Cerowrt-devel@lists.bufferbloat.net</a> &l=
t;mailto:<a href=3D"mailto:Cerowrt-devel@lists.bufferbloat.net" target=3D"_=
blank">Cerowrt-devel@lists.bufferbloat.net</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt; <a href=3D"https://lists.bufferbloat.net=
/listinfo/cerowrt-devel" rel=3D"noreferrer" target=3D"_blank">https://lists=
.bufferbloat.net/listinfo/cerowrt-devel</a> &lt;<a href=3D"https://lists.bu=
fferbloat.net/listinfo/cerowrt-devel" rel=3D"noreferrer" target=3D"_blank">=
https://lists.bufferbloat.net/listinfo/cerowrt-devel</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &gt;<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0--<br>
&gt;=C2=A0 =C2=A0 =C2=A0Latest Podcast:<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://www.linkedin.com/feed/update/urn=
:li:activity:6791014284936785920/" rel=3D"noreferrer" target=3D"_blank">htt=
ps://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/</a> =
&lt;<a href=3D"https://www.linkedin.com/feed/update/urn:li:activity:6791014=
284936785920/" rel=3D"noreferrer" target=3D"_blank">https://www.linkedin.co=
m/feed/update/urn:li:activity:6791014284936785920/</a>&gt;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Dave T=C3=A4ht CTO, TekLibre, LLC<br>
&gt;=C2=A0 =C2=A0 =C2=A0_______________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0Make-wifi-fast mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.=
net" target=3D"_blank">Make-wifi-fast@lists.bufferbloat.net</a> &lt;mailto:=
<a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">M=
ake-wifi-fast@lists.bufferbloat.net</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://lists.bufferbloat.net/listinfo/m=
ake-wifi-fast" rel=3D"noreferrer" target=3D"_blank">https://lists.bufferblo=
at.net/listinfo/make-wifi-fast</a> &lt;<a href=3D"https://lists.bufferbloat=
.net/listinfo/make-wifi-fast" rel=3D"noreferrer" target=3D"_blank">https://=
lists.bufferbloat.net/listinfo/make-wifi-fast</a>&gt;<br>
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
&gt; <br>
&gt; _______________________________________________<br>
&gt; Starlink mailing list<br>
&gt; <a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">St=
arlink@lists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/starlink" rel=3D"nor=
eferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink<=
/a><br>
&gt; <br>
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
--000000000000a42ad305c67a7b2f--

--000000000000a9b6d605c67a7b38
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIFNzmGPy8YWDM66G7/wz632OGczQS3m2MMSN
cF5m2JD/MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDcwNjIw
NDQwNlowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQA5rScFiw7Ry4leBGE+/fvZdJRziHAyN2IQd++DELalQubBk0l8WmZd
zARY+RtoLc4OAjHHu1Q6lZ+0FKzlpCmP/EDLjyMzAw0+xZpWbz8DRmJrbCVk/SZKh6kFtOopDW5o
CN1OaO9/yM3k3hPufjHAdL5ThVKh0X+IsyeSOb+uPRq7cJ6yl2EQcrrM5xIlXrhBPm9yjbU/oBOR
Xg0+3kggS8idIw+apH1QSCsqFNWPeCHYKXK8/B9RzHVpCTxOF64Th3GeyTpehB1CUUdwM49XE7iW
WQBHMSONlkG4eRghG/l3k2zbmzOQ5FkFJT3QBuM+hd20JGnV3A9jPSYonOas
--000000000000a9b6d605c67a7b38--

--===============6142464231753213144==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6142464231753213144==--

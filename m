Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5533BBB6A
	for <lists+cake@lfdr.de>; Mon,  5 Jul 2021 12:42:46 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 32A743CB53;
	Mon,  5 Jul 2021 06:42:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1625481764;
	bh=WXGEdy18/XfKnGTTnHW+CX6g0aI+ZqsjYVfRofaNBZQ=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=SgaxLhhf5tk5Q0XJAVAvbaRutSAZqa6d1Qg0PwAIy3xHOMJGddJ4aYRi9TaTLVil5
	 w9Vr7A13AmbOTNTRUVdexJdygyhYbNiwKx/O5OtAL0k08Hp0UBqYWn0zosNWmE7ve5
	 Wn66+ZxL8MlGVOjPNToJIKjY5/XB/PBo5Gt6BOF2o/rZtimdEcrwjR2QSO8xRjE/gs
	 4awWp68WS0BlJiWZh1wuwCrt2pSj3TofCiE7PnDAUAZ2YBDNnvadbga9WLShLGLoV1
	 KBJ/7SXOe6pkO8PRCNV3Yu7b7IJFMzv2BqjjUzS7L2BcQb0oVTnP2F3XRcqInjc4i2
	 XSdg3Pi4yziHw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D0B273CB47
 for <cake@lists.bufferbloat.net>; Fri,  2 Jul 2021 19:29:11 -0400 (EDT)
Received: by mail-ed1-x530.google.com with SMTP id w13so15422155edc.0
 for <cake@lists.bufferbloat.net>; Fri, 02 Jul 2021 16:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yO7kcHuPp7b/RFjLM2N/sA8GspIn38fnidm0dzLU7oY=;
 b=ORYnDyn7373p8OTT0CFal9C5BIKhCN5NBEk4wgszkaHaaEvUB2Sn+QkVIi3gDr9VJB
 5ajAVqUnywZJQH/KC3Dmf3dQcheNSzRyjEg8+UMrcRWh9XaLGefnqSO8le2g+MTiTl4H
 FpslfCdAL2HuK1X2agxtH3u/JLWFY0OAABPOc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yO7kcHuPp7b/RFjLM2N/sA8GspIn38fnidm0dzLU7oY=;
 b=ITWr6MTDHUShsiqutmnfbbADXJ+UPSRCFsN1x2WWnXTi3Ss5ufcJzka0MxFcm6TJ1e
 GBZkcgzzo5YI3ncaShdBhu70seo6K5EVxFhsPvr5dDjiBtddqGuth878RLRNQ8/M4omt
 pPVO/2hKG+2lKPPQ9wz5lnfSGhyfRi2ndu69e5fG0x1c8Lxh3SRILMDHohxeT7QsRPPs
 fA9yL0K1fy2lsg/lPPpribdtvsMoUBL5KayZFgARd3pbMF5vWI6tyE2Kk6fezi2Xy94B
 9QMVO5451gOsXT1V+aL7q0wyV3SigfR3lTvTxDMaK2HMmuj0GDlPOI7ps5k1kQ/SInve
 iU/Q==
X-Gm-Message-State: AOAM532G448Ry2AOEUxg2XS1bwTFC8s3F87MyQ7fOWu0dBA7loo5Adk2
 W6+piKk81UP4RS3atKbNAsgx2inQnxnOtuLoerYQu9V6Z8MNLVdTX8KTEyBCArWMxeAYwu26Xef
 0h6CQcEOguvCYs9TKrKTxGSmVOcB5
X-Google-Smtp-Source: ABdhPJxrkmTOAYkL2ZJwZ6cib8zvbap6/aqpGvFPVyZTgPNtw1CZs7ae/elOrlvM+bpfgIuRn5OuXJIJKO1a7C4QFWc=
X-Received: by 2002:aa7:dd53:: with SMTP id o19mr2270360edw.259.1625268550623; 
 Fri, 02 Jul 2021 16:29:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
In-Reply-To: <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
Date: Fri, 2 Jul 2021 16:28:59 -0700
Message-ID: <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailman-Approved-At: Mon, 05 Jul 2021 06:42:43 -0400
Subject: Re: [Cake] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2: Internet
 Quality workshop CFP for the internet architecture board
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
Cc: starlink@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============0094620577207816809=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0094620577207816809==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000a5346505c62c5245"

--000000000000a5346505c62c5245
Content-Type: multipart/alternative; boundary="000000000000a0361305c62c52ee"

--000000000000a0361305c62c52ee
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I think we need the language of math here. It seems like the network power
metric, introduced by Kleinrock and Jaffe in the late 70s, is something
useful. Effective end/end queue depths per Little's law also seems useful.
Both are available in iperf 2 from a test perspective. Repurposing test
techniques to actual traffic could be useful. Hence the question around
what exact telemetry is useful to apps making socket write() and read()
calls.

Bob

On Fri, Jul 2, 2021 at 10:07 AM Dave Taht <dave.taht@gmail.com> wrote:

> In terms of trying to find "Quality" I have tried to encourage folk to
> both read "zen and the art of motorcycle maintenance"[0], and Deming's
> work on "total quality management".
>
> My own slice at this network, computer and lifestyle "issue" is aiming
> for "imperceptible latency" in all things. [1]. There's a lot of
> fallout from that in terms of not just addressing queuing delay, but
> caching, prefetching, and learning more about what a user really needs
> (as opposed to wants) to know via intelligent agents.
>
> [0] If you want to get depressed, read Pirsig's successor to "zen...",
> lila, which is in part about what happens when an engineer hits an
> insoluble problem.
> [1] https://www.internetsociety.org/events/latency2013/
>
>
>
> On Thu, Jul 1, 2021 at 6:16 PM David P. Reed <dpreed@deepplum.com> wrote:
> >
> > Well, nice that the folks doing the conference  are willing to consider
> that quality of user experience has little to do with signalling rate at
> the physical layer or throughput of FTP transfers.
> >
> >
> >
> > But honestly, the fact that they call the problem "network quality"
> suggests that they REALLY, REALLY don't understand the Internet isn't the
> hardware or the routers or even the routing algorithms *to its users*.
> >
> >
> >
> > By ignoring the diversity of applications now and in the future, and th=
e
> fact that we DON'T KNOW what will be coming up, this conference will like=
ly
> fall into the usual trap that net-heads fall into - optimizing for some
> imaginary reality that doesn't exist, and in fact will probably never be
> what users actually will do given the chance.
> >
> >
> >
> > I saw this issue in 1976 in the group developing the original Internet
> protocols - a desire to put *into the network* special tricks to optimize
> ASR33 logins to remote computers from terminal concentrators (aka remote
> login), bulk file transfers between file systems on different time-sharin=
g
> systems, and "sessions" (virtual circuits) that required logins. And then
> trying to exploit underlying "multicast" by building it into the IP layer=
,
> because someone thought that TV broadcast would be the dominant applicati=
on.
> >
> >
> >
> > Frankly, to think of "quality" as something that can be "provided" by
> "the network" misses the entire point of "end-to-end argument in system
> design". Quality is not a property defined or created by The Network. If
> you want to talk about Quality, you need to talk about users - all the
> users at all times, now and into the future, and that's something you can=
't
> do if you don't bother to include current and future users talking about
> what they might expect to experience that they don't experience.
> >
> >
> >
> > There was much fighting back in 1976 that basically involved "network
> experts" saying that the network was the place to "solve" such issues as
> quality, so applications could avoid having to solve such issues.
> >
> >
> >
> > What some of us managed to do was to argue that you can't "solve" such
> issues. All you can do is provide a framework that enables different uses
> to *cooperate* in some way.
> >
> >
> >
> > Which is why the Internet drops packets rather than queueing them, and
> why diffserv cannot work.
> >
> > (I know the latter is conftroversial, but at the moment, ALL of diffser=
v
> attempts to talk about end-to-end applicaiton specific metrics, but never=
,
> ever explains what the diffserv control points actually do w.r.t. what th=
e
> IP layer can actually control. So it is meaningless - another violation o=
f
> the so-called end-to-end principle).
> >
> >
> >
> > Networks are about getting packets from here to there, multiplexing the
> underlying resources. That's it. Quality is a whole different thing.
> Quality can be improved by end-to-end approaches, if the underlying netwo=
rk
> provides some kind of thing that actually creates a way for end-to-end
> applications to affect queueing and routing decisions, and more important=
ly
> getting "telemetry" from the network regarding what is actually going on
> with the other end-to-end users sharing the infrastructure.
> >
> >
> >
> > This conference won't talk about it this way. So don't waste your time.
> >
> >
> >
> >
> >
> >
> >
> > On Wednesday, June 30, 2021 8:12pm, "Dave Taht" <dave.taht@gmail.com>
> said:
> >
> > > The program committee members are *amazing*. Perhaps, finally, we can
> > > move the bar for the internet's quality metrics past endless, blind
> > > repetitions of speedtest.
> > >
> > > For complete details, please see:
> > > https://www.iab.org/activities/workshops/network-quality/
> > >
> > > Submissions Due: Monday 2nd August 2021, midnight AOE (Anywhere On
> Earth)
> > > Invitations Issued by: Monday 16th August 2021
> > >
> > > Workshop Date: This will be a virtual workshop, spread over three day=
s:
> > >
> > > 1400-1800 UTC Tue 14th September 2021
> > > 1400-1800 UTC Wed 15th September 2021
> > > 1400-1800 UTC Thu 16th September 2021
> > >
> > > Workshop co-chairs: Wes Hardaker, Evgeny Khorov, Omer Shapira
> > >
> > > The Program Committee members:
> > >
> > > Jari Arkko, Olivier Bonaventure, Vint Cerf, Stuart Cheshire, Sam
> > > Crowford, Nick Feamster, Jim Gettys, Toke Hoiland-Jorgensen, Geoff
> > > Huston, Cullen Jennings, Katarzyna Kosek-Szott, Mirja Kuehlewind,
> > > Jason Livingood, Matt Mathias, Randall Meyer, Kathleen Nichols,
> > > Christoph Paasch, Tommy Pauly, Greg White, Keith Winstein.
> > >
> > > Send Submissions to: network-quality-workshop-pc@iab.org.
> > >
> > > Position papers from academia, industry, the open source community an=
d
> > > others that focus on measurements, experiences, observations and
> > > advice for the future are welcome. Papers that reflect experience
> > > based on deployed services are especially welcome. The organizers
> > > understand that specific actions taken by operators are unlikely to b=
e
> > > discussed in detail, so papers discussing general categories of
> > > actions and issues without naming specific technologies, products, or
> > > other players in the ecosystem are expected. Papers should not focus
> > > on specific protocol solutions.
> > >
> > > The workshop will be by invitation only. Those wishing to attend
> > > should submit a position paper to the address above; it may take the
> > > form of an Internet-Draft.
> > >
> > > All inputs submitted and considered relevant will be published on the
> > > workshop website. The organisers will decide whom to invite based on
> > > the submissions received. Sessions will be organized according to
> > > content, and not every accepted submission or invited attendee will
> > > have an opportunity to present as the intent is to foster discussion
> > > and not simply to have a sequence of presentations.
> > >
> > > Position papers from those not planning to attend the virtual session=
s
> > > themselves are also encouraged. A workshop report will be published
> > > afterwards.
> > >
> > > Overview:
> > >
> > > "We believe that one of the major factors behind this lack of progres=
s
> > > is the popular perception that throughput is the often sole measure o=
f
> > > the quality of Internet connectivity. With such narrow focus, people
> > > don=E2=80=99t consider questions such as:
> > >
> > > What is the latency under typical working conditions?
> > > How reliable is the connectivity across longer time periods?
> > > Does the network allow the use of a broad range of protocols?
> > > What services can be run by clients of the network?
> > > What kind of IPv4, NAT or IPv6 connectivity is offered, and are there
> firewalls?
> > > What security mechanisms are available for local services, such as DN=
S?
> > > To what degree are the privacy, confidentiality, integrity and
> > > authenticity of user communications guarded?
> > >
> > > Improving these aspects of network quality will likely depend on
> > > measurement and exposing metrics to all involved parties, including t=
o
> > > end users in a meaningful way. Such measurements and exposure of the
> > > right metrics will allow service providers and network operators to
> > > focus on the aspects that impacts the users=E2=80=99 experience most =
and at
> > > the same time empowers users to choose the Internet service that will
> > > give them the best experience."
> > >
> > >
> > > --
> > > Latest Podcast:
> > >
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/
> > >
> > > Dave T=C3=A4ht CTO, TekLibre, LLC
> > > _______________________________________________
> > > Cerowrt-devel mailing list
> > > Cerowrt-devel@lists.bufferbloat.net
> > > https://lists.bufferbloat.net/listinfo/cerowrt-devel
> > >
>
>
>
> --
> Latest Podcast:
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/
>
> Dave T=C3=A4ht CTO, TekLibre, LLC
> _______________________________________________
> Make-wifi-fast mailing list
> Make-wifi-fast@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/make-wifi-fast

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

--000000000000a0361305c62c52ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I think we need the language=C2=A0of math here. It seems l=
ike the network power metric, introduced by Kleinrock and=C2=A0Jaffe in the=
 late 70s, is something useful. Effective end/end queue depths per Little&#=
39;s law also seems useful. Both are available in iperf 2 from a test persp=
ective. Repurposing test techniques to actual traffic could be useful. Henc=
e=C2=A0the question around what exact telemetry is useful to apps making so=
cket write() and read() calls.<br><br>Bob</div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 2, 2021 at 10:07 AM Da=
ve Taht &lt;<a href=3D"mailto:dave.taht@gmail.com">dave.taht@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">In te=
rms of trying to find &quot;Quality&quot; I have tried to encourage folk to=
<br>
both read &quot;zen and the art of motorcycle maintenance&quot;[0], and Dem=
ing&#39;s<br>
work on &quot;total quality management&quot;.<br>
<br>
My own slice at this network, computer and lifestyle &quot;issue&quot; is a=
iming<br>
for &quot;imperceptible latency&quot; in all things. [1]. There&#39;s a lot=
 of<br>
fallout from that in terms of not just addressing queuing delay, but<br>
caching, prefetching, and learning more about what a user really needs<br>
(as opposed to wants) to know via intelligent agents.<br>
<br>
[0] If you want to get depressed, read Pirsig&#39;s successor to &quot;zen.=
..&quot;,<br>
lila, which is in part about what happens when an engineer hits an<br>
insoluble problem.<br>
[1] <a href=3D"https://www.internetsociety.org/events/latency2013/" rel=3D"=
noreferrer" target=3D"_blank">https://www.internetsociety.org/events/latenc=
y2013/</a><br>
<br>
<br>
<br>
On Thu, Jul 1, 2021 at 6:16 PM David P. Reed &lt;<a href=3D"mailto:dpreed@d=
eepplum.com" target=3D"_blank">dpreed@deepplum.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Well, nice that the folks doing the conference=C2=A0 are willing to co=
nsider that quality of user experience has little to do with signalling rat=
e at the physical layer or throughput of FTP transfers.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; But honestly, the fact that they call the problem &quot;network qualit=
y&quot; suggests that they REALLY, REALLY don&#39;t understand the Internet=
 isn&#39;t the hardware or the routers or even the routing algorithms *to i=
ts users*.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; By ignoring the diversity of applications now and in the future, and t=
he fact that we DON&#39;T KNOW what will be coming up, this conference will=
 likely fall into the usual trap that net-heads fall into - optimizing for =
some imaginary reality that doesn&#39;t exist, and in fact will probably ne=
ver be what users actually will do given the chance.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I saw this issue in 1976 in the group developing the original Internet=
 protocols - a desire to put *into the network* special tricks to optimize =
ASR33 logins to remote computers from terminal concentrators (aka remote lo=
gin), bulk file transfers between file systems on different time-sharing sy=
stems, and &quot;sessions&quot; (virtual circuits) that required logins. An=
d then trying to exploit underlying &quot;multicast&quot; by building it in=
to the IP layer, because someone thought that TV broadcast would be the dom=
inant application.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Frankly, to think of &quot;quality&quot; as something that can be &quo=
t;provided&quot; by &quot;the network&quot; misses the entire point of &quo=
t;end-to-end argument in system design&quot;. Quality is not a property def=
ined or created by The Network. If you want to talk about Quality, you need=
 to talk about users - all the users at all times, now and into the future,=
 and that&#39;s something you can&#39;t do if you don&#39;t bother to inclu=
de current and future users talking about what they might expect to experie=
nce that they don&#39;t experience.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; There was much fighting back in 1976 that basically involved &quot;net=
work experts&quot; saying that the network was the place to &quot;solve&quo=
t; such issues as quality, so applications could avoid having to solve such=
 issues.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; What some of us managed to do was to argue that you can&#39;t &quot;so=
lve&quot; such issues. All you can do is provide a framework that enables d=
ifferent uses to *cooperate* in some way.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Which is why the Internet drops packets rather than queueing them, and=
 why diffserv cannot work.<br>
&gt;<br>
&gt; (I know the latter is conftroversial, but at the moment, ALL of diffse=
rv attempts to talk about end-to-end applicaiton specific metrics, but neve=
r, ever explains what the diffserv control points actually do w.r.t. what t=
he IP layer can actually control. So it is meaningless - another violation =
of the so-called end-to-end principle).<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Networks are about getting packets from here to there, multiplexing th=
e underlying resources. That&#39;s it. Quality is a whole different thing. =
Quality can be improved by end-to-end approaches, if the underlying network=
 provides some kind of thing that actually creates a way for end-to-end app=
lications to affect queueing and routing decisions, and more importantly ge=
tting &quot;telemetry&quot; from the network regarding what is actually goi=
ng on with the other end-to-end users sharing the infrastructure.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; This conference won&#39;t talk about it this way. So don&#39;t waste y=
our time.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Wednesday, June 30, 2021 8:12pm, &quot;Dave Taht&quot; &lt;<a href=
=3D"mailto:dave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a>&g=
t; said:<br>
&gt;<br>
&gt; &gt; The program committee members are *amazing*. Perhaps, finally, we=
 can<br>
&gt; &gt; move the bar for the internet&#39;s quality metrics past endless,=
 blind<br>
&gt; &gt; repetitions of speedtest.<br>
&gt; &gt;<br>
&gt; &gt; For complete details, please see:<br>
&gt; &gt; <a href=3D"https://www.iab.org/activities/workshops/network-quali=
ty/" rel=3D"noreferrer" target=3D"_blank">https://www.iab.org/activities/wo=
rkshops/network-quality/</a><br>
&gt; &gt;<br>
&gt; &gt; Submissions Due: Monday 2nd August 2021, midnight AOE (Anywhere O=
n Earth)<br>
&gt; &gt; Invitations Issued by: Monday 16th August 2021<br>
&gt; &gt;<br>
&gt; &gt; Workshop Date: This will be a virtual workshop, spread over three=
 days:<br>
&gt; &gt;<br>
&gt; &gt; 1400-1800 UTC Tue 14th September 2021<br>
&gt; &gt; 1400-1800 UTC Wed 15th September 2021<br>
&gt; &gt; 1400-1800 UTC Thu 16th September 2021<br>
&gt; &gt;<br>
&gt; &gt; Workshop co-chairs: Wes Hardaker, Evgeny Khorov, Omer Shapira<br>
&gt; &gt;<br>
&gt; &gt; The Program Committee members:<br>
&gt; &gt;<br>
&gt; &gt; Jari Arkko, Olivier Bonaventure, Vint Cerf, Stuart Cheshire, Sam<=
br>
&gt; &gt; Crowford, Nick Feamster, Jim Gettys, Toke Hoiland-Jorgensen, Geof=
f<br>
&gt; &gt; Huston, Cullen Jennings, Katarzyna Kosek-Szott, Mirja Kuehlewind,=
<br>
&gt; &gt; Jason Livingood, Matt Mathias, Randall Meyer, Kathleen Nichols,<b=
r>
&gt; &gt; Christoph Paasch, Tommy Pauly, Greg White, Keith Winstein.<br>
&gt; &gt;<br>
&gt; &gt; Send Submissions to: <a href=3D"mailto:network-quality-workshop-p=
c@iab.org" target=3D"_blank">network-quality-workshop-pc@iab.org</a>.<br>
&gt; &gt;<br>
&gt; &gt; Position papers from academia, industry, the open source communit=
y and<br>
&gt; &gt; others that focus on measurements, experiences, observations and<=
br>
&gt; &gt; advice for the future are welcome. Papers that reflect experience=
<br>
&gt; &gt; based on deployed services are especially welcome. The organizers=
<br>
&gt; &gt; understand that specific actions taken by operators are unlikely =
to be<br>
&gt; &gt; discussed in detail, so papers discussing general categories of<b=
r>
&gt; &gt; actions and issues without naming specific technologies, products=
, or<br>
&gt; &gt; other players in the ecosystem are expected. Papers should not fo=
cus<br>
&gt; &gt; on specific protocol solutions.<br>
&gt; &gt;<br>
&gt; &gt; The workshop will be by invitation only. Those wishing to attend<=
br>
&gt; &gt; should submit a position paper to the address above; it may take =
the<br>
&gt; &gt; form of an Internet-Draft.<br>
&gt; &gt;<br>
&gt; &gt; All inputs submitted and considered relevant will be published on=
 the<br>
&gt; &gt; workshop website. The organisers will decide whom to invite based=
 on<br>
&gt; &gt; the submissions received. Sessions will be organized according to=
<br>
&gt; &gt; content, and not every accepted submission or invited attendee wi=
ll<br>
&gt; &gt; have an opportunity to present as the intent is to foster discuss=
ion<br>
&gt; &gt; and not simply to have a sequence of presentations.<br>
&gt; &gt;<br>
&gt; &gt; Position papers from those not planning to attend the virtual ses=
sions<br>
&gt; &gt; themselves are also encouraged. A workshop report will be publish=
ed<br>
&gt; &gt; afterwards.<br>
&gt; &gt;<br>
&gt; &gt; Overview:<br>
&gt; &gt;<br>
&gt; &gt; &quot;We believe that one of the major factors behind this lack o=
f progress<br>
&gt; &gt; is the popular perception that throughput is the often sole measu=
re of<br>
&gt; &gt; the quality of Internet connectivity. With such narrow focus, peo=
ple<br>
&gt; &gt; don=E2=80=99t consider questions such as:<br>
&gt; &gt;<br>
&gt; &gt; What is the latency under typical working conditions?<br>
&gt; &gt; How reliable is the connectivity across longer time periods?<br>
&gt; &gt; Does the network allow the use of a broad range of protocols?<br>
&gt; &gt; What services can be run by clients of the network?<br>
&gt; &gt; What kind of IPv4, NAT or IPv6 connectivity is offered, and are t=
here firewalls?<br>
&gt; &gt; What security mechanisms are available for local services, such a=
s DNS?<br>
&gt; &gt; To what degree are the privacy, confidentiality, integrity and<br=
>
&gt; &gt; authenticity of user communications guarded?<br>
&gt; &gt;<br>
&gt; &gt; Improving these aspects of network quality will likely depend on<=
br>
&gt; &gt; measurement and exposing metrics to all involved parties, includi=
ng to<br>
&gt; &gt; end users in a meaningful way. Such measurements and exposure of =
the<br>
&gt; &gt; right metrics will allow service providers and network operators =
to<br>
&gt; &gt; focus on the aspects that impacts the users=E2=80=99 experience m=
ost and at<br>
&gt; &gt; the same time empowers users to choose the Internet service that =
will<br>
&gt; &gt; give them the best experience.&quot;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; Latest Podcast:<br>
&gt; &gt; <a href=3D"https://www.linkedin.com/feed/update/urn:li:activity:6=
791014284936785920/" rel=3D"noreferrer" target=3D"_blank">https://www.linke=
din.com/feed/update/urn:li:activity:6791014284936785920/</a><br>
&gt; &gt;<br>
&gt; &gt; Dave T=C3=A4ht CTO, TekLibre, LLC<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; Cerowrt-devel mailing list<br>
&gt; &gt; <a href=3D"mailto:Cerowrt-devel@lists.bufferbloat.net" target=3D"=
_blank">Cerowrt-devel@lists.bufferbloat.net</a><br>
&gt; &gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cerowrt-devel" =
rel=3D"noreferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo=
/cerowrt-devel</a><br>
&gt; &gt;<br>
<br>
<br>
<br>
--<br>
Latest Podcast:<br>
<a href=3D"https://www.linkedin.com/feed/update/urn:li:activity:67910142849=
36785920/" rel=3D"noreferrer" target=3D"_blank">https://www.linkedin.com/fe=
ed/update/urn:li:activity:6791014284936785920/</a><br>
<br>
Dave T=C3=A4ht CTO, TekLibre, LLC<br>
_______________________________________________<br>
Make-wifi-fast mailing list<br>
<a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">M=
ake-wifi-fast@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" rel=3D"no=
referrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/make-wif=
i-fast</a></blockquote></div>

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
--000000000000a0361305c62c52ee--

--000000000000a5346505c62c5245
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIFbjR2wsnX7FE64XYfH4BHOSHarmj7lJjFMd
bxOvyPYgMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDcwMjIz
MjkxMFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQAjyvbZDBJnnFPONPMP6OT135o3h3gdoD+/Pd1C4TubarV5PUrZMNYP
FBDNt8RPEhL9kgK08aXYK0NWLCePzJLsGg1JwAQKkC0sDAGq+GKB62G4sBAqGFibsq+qH3GNzIIw
LaDTIvRikMz95Aicra0UkMbdHxoa8QVIJYF2Hie3jie87wOtxy05HGiFWy6RniYMJRcrXW5Q78qR
kAZb4eGSYuhGHx2+thCL1DNjifNoA+opPd6uiZfubCslYZcflB7uCr0Mt3nkG1woKYDi4pVA3KcO
fd9TZ66vGF8Xx3WQxtIzWepDc4/36K/U8CLxcyP23R77bEDw2H+pebnPAwEp
--000000000000a5346505c62c5245--

--===============0094620577207816809==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0094620577207816809==--

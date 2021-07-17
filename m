Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7CF3CC6CC
	for <lists+cake@lfdr.de>; Sun, 18 Jul 2021 01:30:07 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 592803CBC9;
	Sat, 17 Jul 2021 19:30:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1626564600;
	bh=wqZB90LZ8vh6vanDB4DBCX53TRPw10htpKFTLCN+aOg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Uo6yGWkUn+IJf2VdSGRwftpKiz40pfnHu0WxA2DHhzM4NWOozfjDVwNOkj1kIXn3G
	 nboP59q36A8lnc5TcB4yi7yghnpmUh5s7au0dupmRHg++lpKQDaT2sxME5DXf2WnMw
	 bsnXtp4qeFUhXA+xWHZLMhD791+CgEd8OVC4atuD1D4UTUwFaEvimJtOOc541Ci1XH
	 qxc2+fYRLYgy5xwiJs9QMOWfKILe6mYBtgKAoq7T/4oDXKD34tr5BGNDFoBo6/YXLO
	 /0FPvVqns5M6ij6QL8L1lqZuYjDG0eI/7QPO68Rd3Hm7zyIHlgD+6EcyqRHWqZNkQE
	 GmaaT2LEexzVQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0C56B3B2A4;
 Sat, 17 Jul 2021 19:29:58 -0400 (EDT)
Received: by mail-ed1-x536.google.com with SMTP id h8so17985384eds.4;
 Sat, 17 Jul 2021 16:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uxx51oj8IA51TDnm/tuLu8qZq/qMVxcPTK+n52ouYl8=;
 b=dgcTmLdkVv0eefJ/1axo35U/opLQKeMlKME2RS0i1GwJ8TV8q3Fyc2sblPAB3z9xhl
 XTFY3MX9bt59OsfcuIAgLdmZkhS5ELm6grrJZIEV4Q4yfQD4Q777nwRtySOk+fyZrj+k
 m/s92kgjDiildfx96itl5DFUSje9/C5Q1pP/VS0S+TeM/b2mvZ+X2wgWvtNFKPOGsnMO
 bTOmLUNU04BotebTJdRENn/GLL7JU6m+WWWndNlE3BpJoZyGhmwnrexjjoQjr1KVMMre
 li6G67C2IpC76dtXU+n/DvDRX2XsQNwvDaeDX99KEtJ7QaaR+h/jU1bDd8oPybCc7HcY
 /zsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uxx51oj8IA51TDnm/tuLu8qZq/qMVxcPTK+n52ouYl8=;
 b=kn7Uh3LiUtPk9iDPRX5ZGzdlmC7soLkidmelwXMNQEjaUUo1EnPIs6AWQldTgrWurK
 ah7rDOMgxFd2E+XLZrmDqDt2QDTTXPV3YjjbC1YYFU1uUhIKx3akrLMZ4+rCF/T91XOJ
 t9wmFiIkn5sc3xOvRTflfTnd8tKyGCYtDoEF1WZOo1hQ4/b3/9i6tb5pKfljk4dqOftG
 Um6s6fDwatOZJXOjUYOMKbPoyMbn4AwvzcWdGMk60KZb4BfIqgIwz/Pnn+oXL6kfjFz4
 cEL2xQIO62p4a+4uuR0Fp3M3wwHa6ge+qjPju4AheVq5iVq3CXtxiyJ2zUGbeZeOnCGb
 iaOw==
X-Gm-Message-State: AOAM5330wzWRhVppqlPpLP4VtGDQ6nTB4Wj1JLcRk8+rfvguIXijutR7
 UMgYTFUORFYhJSR9zO3DTG4QtG2WqoiWnnqlRKY=
X-Google-Smtp-Source: ABdhPJz4Nvs8ewtqTy1XkFsUyUKf06kE1fJyuJiT83+J6p2HxAAYspIAwZuKKenVQ4HuczZk24PHi2Yqj7szoYdStGo=
X-Received: by 2002:a50:9f8e:: with SMTP id c14mr24829627edf.283.1626564597843; 
 Sat, 17 Jul 2021 16:29:57 -0700 (PDT)
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
 <EF8D7620-438A-4F65-94D9-B35FDB76FBBD@cable.comcast.com>
 <1626111630.69692379@apps.rackspace.com>
 <CAHb6LvoD+ACc+17WhTVmS8HYnYyboJrCg5zQF8uXtzrmqqKfPA@mail.gmail.com>
 <9c3d61c1-7013-414e-964d-9e83f596e69d@candelatech.com>
 <CAHb6LvpyQtGg3sMF2RV_gMpEcaY32A70VaEwtsnoeq4DHtv7EA@mail.gmail.com>
 <1e8bdf58-2a21-f543-a248-be58bcbddbcf@candelatech.com>
In-Reply-To: <1e8bdf58-2a21-f543-a248-be58bcbddbcf@candelatech.com>
From: Aaron Wood <woody77@gmail.com>
Date: Sat, 17 Jul 2021 16:29:46 -0700
Message-ID: <CALQXh-M13cJg+JqPPGwjckH9WqiDhZgCW=8oZdBS_Bp_CEBMag@mail.gmail.com>
To: Ben Greear <greearb@candelatech.com>
Subject: Re: [Cake] [Bloat] Little's Law mea culpa,
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
 "starlink@lists.bufferbloat.net" <starlink@lists.bufferbloat.net>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============6998107843947061437=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6998107843947061437==
Content-Type: multipart/alternative; boundary="0000000000000f0aa105c75a1540"

--0000000000000f0aa105c75a1540
Content-Type: text/plain; charset="UTF-8"

On Mon, Jul 12, 2021 at 1:32 PM Ben Greear <greearb@candelatech.com> wrote:

> UDP is better for getting actual packet latency, for sure.  TCP is
> typical-user-experience-latency though,
> so it is also useful.
>
> I'm interested in the test and visualization side of this.  If there were
> a way to give engineers
> a good real-time look at a complex real-world network, then they have
> something to go on while trying
> to tune various knobs in their network to improve it.
>

I've always liked the smoke-ping visualization, although a single graph is
only really useful for a single pair of endpoints (or a single segment,
maybe).  But I can see using a repeated set of graphs (Tufte has some
examples), that can represent an overview of pairwise collections of
latency+loss:
https://www.edwardtufte.com/bboard/images/0003Cs-8047.GIF
https://www.edwardtufte.com/tufte/psysvcs_p2

These work for understanding because the tiled graphs are all identically
constructed, and the reader first learns how to read a single tile, and
then learns the pattern of which tiles represent which measurements.

Further, they are opinionated.  In the second link above, the y axis is not
based on the measured data, but standardized expected values, which (I
think) is key to quick readability.  You never need to read the axes.  Much
like setting up gauges such that "nominal" is always at the same indicator
position for all graphs (e.g. straight up).  At a glance, you can see if
things are "correct" or not.

That tiling arrangement wouldn't be great for showing interrelationships
(although it may give you a good historical view of correlated behavior).
One thought is to overlay a network graph diagram (graph of all network
links) with small "sparkline" type graphs.

For a more physical-based network graph, I could see visualizing the queue
depth for each egress port (max value over a time of X, or percentage of
time at max depth).

Taken together, the timewise correlation could be useful (which peers are
having problems communicating, and which ports between them are impacted?).

I think getting good data about queue depth may be the hard part,
especially catching transients and the duty cycle / pulse-width of the load
(and then converting that to a number).  Back when I uncovered the iperf
application-level pacing granularity was too high 5 years ago, I called it
them "millibursts", and maybe dtaht pointed out that link utilization is
always 0% or 100%, and it's just a matter of the PWM of the packet rate
that makes it look like something in between.
https://burntchrome.blogspot.com/2016/09/iperf3-and-microbursts.html



I'll let others try to figure out how build and tune the knobs, but the
> data acquisition and
> visualization is something we might try to accomplish.  I have a feeling
> I'm not the
> first person to think of this, however....probably someone already has
> done such
> a thing.
>
> Thanks,
> Ben
>
> On 7/12/21 1:04 PM, Bob McMahon wrote:
> > I believe end host's TCP stats are insufficient as seen per the "failed"
> congested control mechanisms over the last decades. I think Jaffe pointed
> this out in
> > 1979 though he was using what's been deemed on this thread as "spherical
> cow queueing theory."
> >
> > "Flow control in store-and-forward computer networks is appropriate for
> decentralized execution. A formal description of a class of "decentralized
> flow control
> > algorithms" is given. The feasibility of maximizing power with such
> algorithms is investigated. On the assumption that communication links
> behave like M/M/1
> > servers it is shown that no "decentralized flow control algorithm" can
> maximize network power. Power has been suggested in the literature as a
> network
> > performance objective. It is also shown that no objective based only on
> the users' throughputs and average delay is decentralizable. Finally, a
> restricted class
> > of algorithms cannot even approximate power."
> >
> > https://ieeexplore.ieee.org/document/1095152
> >
> > Did Jaffe make a mistake?
> >
> > Also, it's been observed that latency is non-parametric in it's
> distributions and computing gaussians per the central limit theorem for OWD
> feedback loops
> > aren't effective. How does one design a control loop around things that
> are non-parametric? It also begs the question, what are the feed forward
> knobs that can
> > actually help?
> >
> > Bob
> >
> > On Mon, Jul 12, 2021 at 12:07 PM Ben Greear <greearb@candelatech.com
> <mailto:greearb@candelatech.com>> wrote:
> >
> >     Measuring one or a few links provides a bit of data, but seems like
> if someone is trying to understand
> >     a large and real network, then the OWD between point A and B needs
> to just be input into something much
> >     more grand.  Assuming real-time OWD data exists between 100 to 1000
> endpoint pairs, has anyone found a way
> >     to visualize this in a useful manner?
> >
> >     Also, considering something better than ntp may not really scale to
> 1000+ endpoints, maybe round-trip
> >     time is only viable way to get this type of data.  In that case,
> maybe clever logic could use things
> >     like trace-route to get some idea of how long it takes to get 'onto'
> the internet proper, and so estimate
> >     the last-mile latency.  My assumption is that the last-mile latency
> is where most of the pervasive
> >     assymetric network latencies would exist (or just ping 8.8.8.8 which
> is 20ms from everywhere due to
> >     $magic).
> >
> >     Endpoints could also triangulate a bit if needed, using some anchor
> points in the network
> >     under test.
> >
> >     Thanks,
> >     Ben
> >
> >     On 7/12/21 11:21 AM, Bob McMahon wrote:
> >      > iperf 2 supports OWD and gives full histograms for TCP write to
> read, TCP connect times, latency of packets (with UDP), latency of "frames"
> with
> >      > simulated video traffic (TCP and UDP), xfer times of bursts with
> low duty cycle traffic, and TCP RTT (sampling based.) It also has support
> for sampling (per
> >      > interval reports) down to 100 usecs if configured with
> --enable-fastsampling, otherwise the fastest sampling is 5 ms. We've
> released all this as open source.
> >      >
> >      > OWD only works if the end realtime clocks are synchronized using
> a "machine level" protocol such as IEEE 1588 or PTP. Sadly, *most data
> centers don't
> >     provide
> >      > sufficient level of clock accuracy and the GPS pulse per second *
> to colo and vm customers.
> >      >
> >      > https://iperf2.sourceforge.io/iperf-manpage.html
> >      >
> >      > Bob
> >      >
> >      > On Mon, Jul 12, 2021 at 10:40 AM David P. Reed <
> dpreed@deepplum.com <mailto:dpreed@deepplum.com> <mailto:
> dpreed@deepplum.com
> >     <mailto:dpreed@deepplum.com>>> wrote:
> >      >
> >      >
> >      >     On Monday, July 12, 2021 9:46am, "Livingood, Jason" <
> Jason_Livingood@comcast.com <mailto:Jason_Livingood@comcast.com>
> >     <mailto:Jason_Livingood@comcast.com <mailto:
> Jason_Livingood@comcast.com>>> said:
> >      >
> >      >      > I think latency/delay is becoming seen to be as important
> certainly, if not a more direct proxy for end user QoE. This is all still
> evolving and I
> >     have
> >      >     to say is a super interesting & fun thing to work on. :-)
> >      >
> >      >     If I could manage to sell one idea to the management
> hierarchy of communications industry CEOs (operators, vendors, ...) it is
> this one:
> >      >
> >      >     "It's the end-to-end latency, stupid!"
> >      >
> >      >     And I mean, by end-to-end, latency to complete a task at a
> relevant layer of abstraction.
> >      >
> >      >     At the link level, it's packet send to packet receive
> completion.
> >      >
> >      >     But at the transport level including retransmission buffers,
> it's datagram (or message) origination until the acknowledgement arrives
> for that
> >     message being
> >      >     delivered after whatever number of retransmissions, freeing
> the retransmission buffer.
> >      >
> >      >     At the WWW level, it's mouse click to display update
> corresponding to completion of the request.
> >      >
> >      >     What should be noted is that lower level latencies don't
> directly predict the magnitude of higher-level latencies. But longer lower
> level latencies
> >     almost
> >      >     always amplfify higher level latencies. Often non-linearly.
> >      >
> >      >     Throughput is very, very weakly related to these latencies,
> in contrast.
> >      >
> >      >     The amplification process has to do with the presence of
> queueing. Queueing is ALWAYS bad for latency, and throughput only helps if
> it is in exactly the
> >      >     right place (the so-called input queue of the bottleneck
> process, which is often a link, but not always).
> >      >
> >      >     Can we get that slogan into Harvard Business Review? Can we
> get it taught in Managerial Accounting at HBS? (which does address
> logistics/supply chain
> >     queueing).
> >      >
> >      >
> >      >
> >      >
> >      >
> >      >
> >      >
> >      > This electronic communication and the information and any files
> transmitted with it, or attached to it, are confidential and are intended
> solely for the
> >     use of
> >      > the individual or entity to whom it is addressed and may contain
> information that is confidential, legally privileged, protected by privacy
> laws, or
> >     otherwise
> >      > restricted from disclosure to anyone else. If you are not the
> intended recipient or the person responsible for delivering the e-mail to
> the intended
> >     recipient,
> >      > you are hereby notified that any use, copying, distributing,
> dissemination, forwarding, printing, or copying of this e-mail is strictly
> prohibited. If you
> >      > received this e-mail in error, please return the e-mail to the
> sender, delete it from your computer, and destroy any printed copy of it.
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
> information that is confidential, legally privileged, protected by privacy
> laws, or otherwise
> > restricted from disclosure to anyone else. If you are not the intended
> recipient or the person responsible for delivering the e-mail to the
> intended recipient,
> > you are hereby notified that any use, copying, distributing,
> dissemination, forwarding, printing, or copying of this e-mail is strictly
> prohibited. If you
> > received this e-mail in error, please return the e-mail to the sender,
> delete it from your computer, and destroy any printed copy of it.
>
>
> --
> Ben Greear <greearb@candelatech.com>
> Candela Technologies Inc  http://www.candelatech.com
>
> _______________________________________________
> Bloat mailing list
> Bloat@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/bloat
>

--0000000000000f0aa105c75a1540
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Jul 12, 2021 at 1:32 PM Ben Greea=
r &lt;<a href=3D"mailto:greearb@candelatech.com">greearb@candelatech.com</a=
>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left=
-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex">UDP is be=
tter for getting actual packet latency, for sure.=C2=A0 TCP is typical-user=
-experience-latency though,<br>
so it is also useful.<br>
<br>
I&#39;m interested in the test and visualization side of this.=C2=A0 If the=
re were a way to give engineers<br>
a good real-time look at a complex real-world network, then they have somet=
hing to go on while trying<br>
to tune various knobs in their network to improve it.<br></blockquote><div>=
<br></div><div>I&#39;ve always liked the smoke-ping visualization, although=
 a single graph is only really useful for a single pair of endpoints (or a =
single segment, maybe).=C2=A0 But I can see using a repeated set of graphs =
(Tufte has some examples), that can represent an overview of pairwise colle=
ctions of latency+loss:</div><div><a href=3D"https://www.edwardtufte.com/bb=
oard/images/0003Cs-8047.GIF">https://www.edwardtufte.com/bboard/images/0003=
Cs-8047.GIF</a><br></div><div><a href=3D"https://www.edwardtufte.com/tufte/=
psysvcs_p2">https://www.edwardtufte.com/tufte/psysvcs_p2</a><br></div><div>=
<br></div><div>These work for understanding because the tiled graphs are al=
l identically constructed, and the reader first learns how to read a single=
 tile, and then learns the pattern of which tiles represent which measureme=
nts.</div><div><br></div><div>Further, they are opinionated.=C2=A0 In the s=
econd link above, the y axis is not based on the measured data, but standar=
dized expected values, which (I think) is key to quick readability.=C2=A0 Y=
ou never need to read the axes.=C2=A0 Much like setting up gauges such that=
 &quot;nominal&quot; is always at the same indicator position for all graph=
s (e.g. straight up).=C2=A0 At a glance, you can see if things are &quot;co=
rrect&quot; or not.</div><div><br></div><div>That tiling arrangement wouldn=
&#39;t be great for showing interrelationships (although it may give you a =
good historical view of correlated behavior).=C2=A0 One thought is to overl=
ay a network graph diagram (graph of all network links) with small &quot;sp=
arkline&quot; type graphs.</div><div><br></div><div>For a more physical-bas=
ed network graph, I could see visualizing the queue depth for each egress p=
ort (max value over a time of X, or percentage of time at max depth).</div>=
<div><br></div><div>Taken together, the timewise correlation could be usefu=
l (which peers are having problems communicating, and which ports between t=
hem are impacted?).</div><div><br></div><div>I think getting good data abou=
t queue depth may be the hard part, especially catching transients and the =
duty cycle / pulse-width of the load (and then converting that to a number)=
.=C2=A0 Back when I uncovered the iperf application-level pacing granularit=
y was too high 5 years ago, I called it them &quot;millibursts&quot;, and m=
aybe dtaht pointed out that link utilization is always 0% or 100%, and it&#=
39;s just a matter of the PWM of the packet rate that makes it look like so=
mething in between.</div><div><a href=3D"https://burntchrome.blogspot.com/2=
016/09/iperf3-and-microbursts.html">https://burntchrome.blogspot.com/2016/0=
9/iperf3-and-microbursts.html</a><br></div><div><br></div><div><br></div><d=
iv><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(2=
04,204,204);padding-left:1ex">
I&#39;ll let others try to figure out how build and tune the knobs, but the=
 data acquisition and<br>
visualization is something we might try to accomplish.=C2=A0 I have a feeli=
ng I&#39;m not the<br>
first person to think of this, however....probably someone already has done=
 such<br>
a thing.<br>
<br>
Thanks,<br>
Ben<br>
<br>
On 7/12/21 1:04 PM, Bob McMahon wrote:<br>
&gt; I believe end host&#39;s TCP stats are insufficient as seen per the &q=
uot;failed&quot; congested control mechanisms over the last decades. I thin=
k Jaffe pointed this out in <br>
&gt; 1979 though he was using what&#39;s been deemed on this thread as &quo=
t;spherical cow queueing theory.&quot;<br>
&gt; <br>
&gt; &quot;Flow control in store-and-forward computer networks is appropria=
te for decentralized execution. A formal description of a class of &quot;de=
centralized flow control <br>
&gt; algorithms&quot; is given. The feasibility of maximizing power with su=
ch algorithms is investigated. On the assumption that communication links b=
ehave like M/M/1 <br>
&gt; servers it is shown that no &quot;decentralized flow control algorithm=
&quot; can maximize network power. Power has been suggested in the literatu=
re as a network <br>
&gt; performance objective. It is also shown that no objective based only o=
n the users&#39; throughputs and average delay is decentralizable. Finally,=
 a restricted class <br>
&gt; of algorithms cannot even approximate power.&quot;<br>
&gt; <br>
&gt; <a href=3D"https://ieeexplore.ieee.org/document/1095152" rel=3D"norefe=
rrer" target=3D"_blank">https://ieeexplore.ieee.org/document/1095152</a><br=
>
&gt; <br>
&gt; Did Jaffe make a mistake?<br>
&gt; <br>
&gt; Also, it&#39;s been observed that latency=C2=A0is non-parametric in it=
&#39;s distributions and computing gaussians=C2=A0per the central limit the=
orem for OWD feedback loops <br>
&gt; aren&#39;t effective. How does one design a control loop around things=
 that are non-parametric? It also begs the question, what are the feed forw=
ard knobs that can <br>
&gt; actually help?<br>
&gt; <br>
&gt; Bob<br>
&gt; <br>
&gt; On Mon, Jul 12, 2021 at 12:07 PM Ben Greear &lt;<a href=3D"mailto:gree=
arb@candelatech.com" target=3D"_blank">greearb@candelatech.com</a> &lt;mail=
to:<a href=3D"mailto:greearb@candelatech.com" target=3D"_blank">greearb@can=
delatech.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Measuring one or a few links provides a bit of data=
, but seems like if someone is trying to understand<br>
&gt;=C2=A0 =C2=A0 =C2=A0a large and real network, then the OWD between poin=
t A and B needs to just be input into something much<br>
&gt;=C2=A0 =C2=A0 =C2=A0more grand.=C2=A0 Assuming real-time OWD data exist=
s between 100 to 1000 endpoint pairs, has anyone found a way<br>
&gt;=C2=A0 =C2=A0 =C2=A0to visualize this in a useful manner?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Also, considering something better than ntp may not=
 really scale to 1000+ endpoints, maybe round-trip<br>
&gt;=C2=A0 =C2=A0 =C2=A0time is only viable way to get this type of data.=
=C2=A0 In that case, maybe clever logic could use things<br>
&gt;=C2=A0 =C2=A0 =C2=A0like trace-route to get some idea of how long it ta=
kes to get &#39;onto&#39; the internet proper, and so estimate<br>
&gt;=C2=A0 =C2=A0 =C2=A0the last-mile latency.=C2=A0 My assumption is that =
the last-mile latency is where most of the pervasive<br>
&gt;=C2=A0 =C2=A0 =C2=A0assymetric network latencies would exist (or just p=
ing 8.8.8.8 which is 20ms from everywhere due to<br>
&gt;=C2=A0 =C2=A0 =C2=A0$magic).<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Endpoints could also triangulate a bit if needed, u=
sing some anchor points in the network<br>
&gt;=C2=A0 =C2=A0 =C2=A0under test.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Thanks,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Ben<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 7/12/21 11:21 AM, Bob McMahon wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; iperf 2 supports OWD and gives full histogram=
s for TCP write to read, TCP connect times, latency of packets (with UDP), =
latency of &quot;frames&quot; with<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; simulated=C2=A0video=C2=A0traffic (TCP and UD=
P), xfer times of bursts with low duty cycle traffic, and TCP RTT (sampling=
 based.) It also has support for sampling (per<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; interval reports) down to 100 usecs if config=
ured with --enable-fastsampling, otherwise the fastest sampling is 5 ms. We=
&#39;ve released all this as open source.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; OWD only works if the end realtime clocks are=
 synchronized using a &quot;machine level&quot; protocol such as IEEE 1588 =
or PTP. Sadly, *most data centers don&#39;t<br>
&gt;=C2=A0 =C2=A0 =C2=A0provide<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; sufficient level of clock accuracy and the GP=
S pulse per second * to colo and vm customers.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"https://iperf2.sourceforge.io/iper=
f-manpage.html" rel=3D"noreferrer" target=3D"_blank">https://iperf2.sourcef=
orge.io/iperf-manpage.html</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Bob<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Mon, Jul 12, 2021 at 10:40 AM David P. Ree=
d &lt;<a href=3D"mailto:dpreed@deepplum.com" target=3D"_blank">dpreed@deepp=
lum.com</a> &lt;mailto:<a href=3D"mailto:dpreed@deepplum.com" target=3D"_bl=
ank">dpreed@deepplum.com</a>&gt; &lt;mailto:<a href=3D"mailto:dpreed@deeppl=
um.com" target=3D"_blank">dpreed@deepplum.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:dpreed@deepplum.com" t=
arget=3D"_blank">dpreed@deepplum.com</a>&gt;&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0On Monday, July 12, 2021 9=
:46am, &quot;Livingood, Jason&quot; &lt;<a href=3D"mailto:Jason_Livingood@c=
omcast.com" target=3D"_blank">Jason_Livingood@comcast.com</a> &lt;mailto:<a=
 href=3D"mailto:Jason_Livingood@comcast.com" target=3D"_blank">Jason_Living=
ood@comcast.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:Jason_Livingood@comcas=
t.com" target=3D"_blank">Jason_Livingood@comcast.com</a> &lt;mailto:<a href=
=3D"mailto:Jason_Livingood@comcast.com" target=3D"_blank">Jason_Livingood@c=
omcast.com</a>&gt;&gt;&gt; said:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I think latency/dela=
y is becoming seen to be as important certainly, if not a more direct proxy=
 for end user QoE. This is all still evolving and I<br>
&gt;=C2=A0 =C2=A0 =C2=A0have<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0to say is a super interest=
ing &amp; fun thing to work on. :-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0If I could manage to sell =
one idea to the management hierarchy of communications industry CEOs (opera=
tors, vendors, ...) it is this one:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0&quot;It&#39;s the end-to-=
end latency, stupid!&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0And I mean, by end-to-end,=
 latency to complete a task at a relevant layer of abstraction.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0At the link level, it&#39;=
s packet send to packet receive completion.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0But at the transport level=
 including retransmission buffers, it&#39;s datagram (or message) originati=
on until the acknowledgement arrives for that<br>
&gt;=C2=A0 =C2=A0 =C2=A0message being<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0delivered after whatever n=
umber of retransmissions, freeing the retransmission buffer.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0At the WWW level, it&#39;s=
 mouse click to display update corresponding to completion of the request.<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0What should be noted is th=
at lower level latencies don&#39;t directly predict the magnitude of higher=
-level latencies. But longer lower level latencies<br>
&gt;=C2=A0 =C2=A0 =C2=A0almost<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0always amplfify higher lev=
el latencies. Often non-linearly.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Throughput is very, very w=
eakly related to these latencies, in contrast.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0The amplification process =
has to do with the presence of queueing. Queueing is ALWAYS bad for latency=
, and throughput only helps if it is in exactly the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0right place (the so-called=
 input queue of the bottleneck process, which is often a link, but not alwa=
ys).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Can we get that slogan int=
o Harvard Business Review? Can we get it taught in Managerial Accounting at=
 HBS? (which does address logistics/supply chain<br>
&gt;=C2=A0 =C2=A0 =C2=A0queueing).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
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
_______________________________________________<br>
Bloat mailing list<br>
<a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">Bloat@list=
s.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a><br>
</blockquote></div></div>

--0000000000000f0aa105c75a1540--

--===============6998107843947061437==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6998107843947061437==--

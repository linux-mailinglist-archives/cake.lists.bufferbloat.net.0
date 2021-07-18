Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CE73CCA55
	for <lists+cake@lfdr.de>; Sun, 18 Jul 2021 21:06:47 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DA7CB3CB60;
	Sun, 18 Jul 2021 15:06:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1626635198;
	bh=yL3LSzmhu12CnSb2EWhrHETDLerig0KlLqmMnhgAOVo=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=j7zdbtoxrrXZQ4MI3KHMLckpIRC2s7DPuBXV/PusV0jAlAwDaC1sqNaBw3EVxMxwI
	 Jyvt8MmGQUa3fzCxzTiNf4+2gQX1aaRqh23b79iuuAUub7y6V7dU4ASkACMYAayza6
	 stoFzkGkqhtZ5BXdq10ZN9eDJY3aE1Kz7PNAcXYUo84HjzAoO8IhMb06V9rHn7xCQW
	 oQQcf+PDYNuMCSjQ9pST7tqgyFnZQyamDo++X/IZ6OhRKXEwGAfO+0H+LoYMbam68+
	 CK/b82dR/vKN2tfjmrnL/g5qJE3CUQTsCOurbaRcBa6C1iZl9DNaqcywscZGlEUMvB
	 HgA1G46LdpUqg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 330583CB49
 for <cake@lists.bufferbloat.net>; Sun, 18 Jul 2021 15:06:37 -0400 (EDT)
Received: by mail-ed1-x52b.google.com with SMTP id ec55so20618384edb.1
 for <cake@lists.bufferbloat.net>; Sun, 18 Jul 2021 12:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KnGI0JlsgJ2rdYAKJcKjGXZ8x2ofQ69+90xxvqMdcXk=;
 b=Le0ivhuHe4h4006ofszHEedQB6vEMwROXC33nnqVMSfKu2aW6MjBAX9p38FucuChpY
 AWRd8RkfefoCT81r44TuRWhHbJ0xM83Wip0L0MktWX1JdK1o1p195sGNIS8rZ+qPOXqk
 xwPn0NzqI7CkjW6vy5Bm3IbUK09pp7uuMfris=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KnGI0JlsgJ2rdYAKJcKjGXZ8x2ofQ69+90xxvqMdcXk=;
 b=HMYss7WVAIexzswRz0NEL1C05SFa8jka7Jh6kB2NiHY3lNOS1hlmfIX0Lo/t03voqp
 L0fFUYnDmplKwrnP+mM8vYLHLxvxeyCddhLXwYydzwxI5BxTQenAM3tw5qRgW5devzfq
 vXOX6oJzUtFcSnAxaXL4Zh55Ong2apvbuyNKWpuv6Z4vTzMI6V5tg+/q90rdl64OlB/3
 s9BCAsEJPWd3Alf1jHl2fnscOO0ryYSKgFp1XbZIRr6U2PECeltX5WRUId2I6X18oHqN
 bFpVgXr6inW0KRJYT14iGF1XoLlCDC+8Hcbhh0GzXheJ3pBBJdzNMNXzxNUZCU+uqe46
 rOMA==
X-Gm-Message-State: AOAM530q2YtJgNsDeAEPzU18iROPFg0/p+1aHw1xiovjMl40H4dNbdbZ
 0VCHq02u0Q+9HgRHl76HGoxw78OKShmTks3I5YeuKsFWQjC9QuDOeCVTToQO2xOfqw1AbU7Fu2Y
 UXdLgnY1Po9oB1W7C4oVCreK5I+T9
X-Google-Smtp-Source: ABdhPJz4HLFMlxl8Mbwqz1QAdMI/VlKmlwOtGUEQdzzmHTgSjsa+DM3WQhTpQ7FxPdcSFKNYW3kh+vxG/AwJYWem0Nk=
X-Received: by 2002:a05:6402:1218:: with SMTP id
 c24mr29519827edw.59.1626635195877; 
 Sun, 18 Jul 2021 12:06:35 -0700 (PDT)
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
 <CALQXh-M13cJg+JqPPGwjckH9WqiDhZgCW=8oZdBS_Bp_CEBMag@mail.gmail.com>
In-Reply-To: <CALQXh-M13cJg+JqPPGwjckH9WqiDhZgCW=8oZdBS_Bp_CEBMag@mail.gmail.com>
Date: Sun, 18 Jul 2021 12:06:24 -0700
Message-ID: <CAHb6LvoVNFjcbNr0cNyT+=Vdt-Edj89tKFLvGbRxHt5OWvWZYw@mail.gmail.com>
To: Aaron Wood <woody77@gmail.com>
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
From: Bob McMahon via Cake <cake@lists.bufferbloat.net>
Reply-To: Bob McMahon <bob.mcmahon@broadcom.com>
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>,
 "starlink@lists.bufferbloat.net" <starlink@lists.bufferbloat.net>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: multipart/mixed; boundary="===============9062405819454757381=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============9062405819454757381==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000000da15705c76a859e"

--0000000000000da15705c76a859e
Content-Type: multipart/alternative; boundary="0000000000000826e105c76a85eb"

--0000000000000826e105c76a85eb
Content-Type: text/plain; charset="UTF-8"

Just an FYI,

iperf 2 uses a 4 usec delay for TCP and 100 usec delay for UDP to fill the
token bucket. We thought about providing a knob for this but decided not
to. We figured a busy wait CPU thread wasn't a big deal because of the
trend of many CPU cores. The threaded design works well for this. We also
support fq-pacing and isochronous traffic using clock_nanosleep() to
schedule the writes. We'll probably add Markov chain support but that's not
critical and may not affect actionable engineering. We found isoch as a
useful traffic profile, at least for our WiFi testing. I'm going to add
support for TCP_NOTSENT_LOWAT for select()/write() based transmissions. I'm
doubtful this is very useful as event based scheduling based on times seems
better. We'll probably use it for unit testing WiFi aggregation and see if
it helps there or not. I'll see if it aligns with the OWD measurements.

On queue depth, we use two techniques. The most obvious is to measure the
end to end delay and use rx histograms, getting all the samples without
averaging. The second, internal for us only, is using network telemetry and
mapping all the clock domains to the GPS domain. Any moment in time the
end/end path can be inspected to where every packet is.

Our automated testing is focused around unit tests and used to
statistically monitor code changes (which come at a high rate and apply to
a broad range of chips) - so the requirements can be very different from a
network or service provider.

Agreed that the amount of knobs and reactive components are a challenge.
And one must assume non-linearity which becomes obvious after a few direct
measurements (i.e. no averaging.) The challenge of statistical;y
reproducible is always there. We find Montec Carlo techniques can be useful
only when they are proven to be statistically reproducible.

Bob


On Sat, Jul 17, 2021 at 4:29 PM Aaron Wood <woody77@gmail.com> wrote:

> On Mon, Jul 12, 2021 at 1:32 PM Ben Greear <greearb@candelatech.com>
> wrote:
>
>> UDP is better for getting actual packet latency, for sure.  TCP is
>> typical-user-experience-latency though,
>> so it is also useful.
>>
>> I'm interested in the test and visualization side of this.  If there were
>> a way to give engineers
>> a good real-time look at a complex real-world network, then they have
>> something to go on while trying
>> to tune various knobs in their network to improve it.
>>
>
> I've always liked the smoke-ping visualization, although a single graph is
> only really useful for a single pair of endpoints (or a single segment,
> maybe).  But I can see using a repeated set of graphs (Tufte has some
> examples), that can represent an overview of pairwise collections of
> latency+loss:
> https://www.edwardtufte.com/bboard/images/0003Cs-8047.GIF
> https://www.edwardtufte.com/tufte/psysvcs_p2
>
> These work for understanding because the tiled graphs are all identically
> constructed, and the reader first learns how to read a single tile, and
> then learns the pattern of which tiles represent which measurements.
>
> Further, they are opinionated.  In the second link above, the y axis is
> not based on the measured data, but standardized expected values, which (I
> think) is key to quick readability.  You never need to read the axes.  Much
> like setting up gauges such that "nominal" is always at the same indicator
> position for all graphs (e.g. straight up).  At a glance, you can see if
> things are "correct" or not.
>
> That tiling arrangement wouldn't be great for showing interrelationships
> (although it may give you a good historical view of correlated behavior).
> One thought is to overlay a network graph diagram (graph of all network
> links) with small "sparkline" type graphs.
>
> For a more physical-based network graph, I could see visualizing the queue
> depth for each egress port (max value over a time of X, or percentage of
> time at max depth).
>
> Taken together, the timewise correlation could be useful (which peers are
> having problems communicating, and which ports between them are impacted?).
>
> I think getting good data about queue depth may be the hard part,
> especially catching transients and the duty cycle / pulse-width of the load
> (and then converting that to a number).  Back when I uncovered the iperf
> application-level pacing granularity was too high 5 years ago, I called it
> them "millibursts", and maybe dtaht pointed out that link utilization is
> always 0% or 100%, and it's just a matter of the PWM of the packet rate
> that makes it look like something in between.
> https://burntchrome.blogspot.com/2016/09/iperf3-and-microbursts.html
>
>
>
> I'll let others try to figure out how build and tune the knobs, but the
>> data acquisition and
>> visualization is something we might try to accomplish.  I have a feeling
>> I'm not the
>> first person to think of this, however....probably someone already has
>> done such
>> a thing.
>>
>> Thanks,
>> Ben
>>
>> On 7/12/21 1:04 PM, Bob McMahon wrote:
>> > I believe end host's TCP stats are insufficient as seen per the
>> "failed" congested control mechanisms over the last decades. I think Jaffe
>> pointed this out in
>> > 1979 though he was using what's been deemed on this thread as
>> "spherical cow queueing theory."
>> >
>> > "Flow control in store-and-forward computer networks is appropriate for
>> decentralized execution. A formal description of a class of "decentralized
>> flow control
>> > algorithms" is given. The feasibility of maximizing power with such
>> algorithms is investigated. On the assumption that communication links
>> behave like M/M/1
>> > servers it is shown that no "decentralized flow control algorithm" can
>> maximize network power. Power has been suggested in the literature as a
>> network
>> > performance objective. It is also shown that no objective based only on
>> the users' throughputs and average delay is decentralizable. Finally, a
>> restricted class
>> > of algorithms cannot even approximate power."
>> >
>> > https://ieeexplore.ieee.org/document/1095152
>> >
>> > Did Jaffe make a mistake?
>> >
>> > Also, it's been observed that latency is non-parametric in it's
>> distributions and computing gaussians per the central limit theorem for OWD
>> feedback loops
>> > aren't effective. How does one design a control loop around things that
>> are non-parametric? It also begs the question, what are the feed forward
>> knobs that can
>> > actually help?
>> >
>> > Bob
>> >
>> > On Mon, Jul 12, 2021 at 12:07 PM Ben Greear <greearb@candelatech.com
>> <mailto:greearb@candelatech.com>> wrote:
>> >
>> >     Measuring one or a few links provides a bit of data, but seems like
>> if someone is trying to understand
>> >     a large and real network, then the OWD between point A and B needs
>> to just be input into something much
>> >     more grand.  Assuming real-time OWD data exists between 100 to 1000
>> endpoint pairs, has anyone found a way
>> >     to visualize this in a useful manner?
>> >
>> >     Also, considering something better than ntp may not really scale to
>> 1000+ endpoints, maybe round-trip
>> >     time is only viable way to get this type of data.  In that case,
>> maybe clever logic could use things
>> >     like trace-route to get some idea of how long it takes to get
>> 'onto' the internet proper, and so estimate
>> >     the last-mile latency.  My assumption is that the last-mile latency
>> is where most of the pervasive
>> >     assymetric network latencies would exist (or just ping 8.8.8.8
>> which is 20ms from everywhere due to
>> >     $magic).
>> >
>> >     Endpoints could also triangulate a bit if needed, using some anchor
>> points in the network
>> >     under test.
>> >
>> >     Thanks,
>> >     Ben
>> >
>> >     On 7/12/21 11:21 AM, Bob McMahon wrote:
>> >      > iperf 2 supports OWD and gives full histograms for TCP write to
>> read, TCP connect times, latency of packets (with UDP), latency of "frames"
>> with
>> >      > simulated video traffic (TCP and UDP), xfer times of bursts with
>> low duty cycle traffic, and TCP RTT (sampling based.) It also has support
>> for sampling (per
>> >      > interval reports) down to 100 usecs if configured with
>> --enable-fastsampling, otherwise the fastest sampling is 5 ms. We've
>> released all this as open source.
>> >      >
>> >      > OWD only works if the end realtime clocks are synchronized using
>> a "machine level" protocol such as IEEE 1588 or PTP. Sadly, *most data
>> centers don't
>> >     provide
>> >      > sufficient level of clock accuracy and the GPS pulse per second
>> * to colo and vm customers.
>> >      >
>> >      > https://iperf2.sourceforge.io/iperf-manpage.html
>> >      >
>> >      > Bob
>> >      >
>> >      > On Mon, Jul 12, 2021 at 10:40 AM David P. Reed <
>> dpreed@deepplum.com <mailto:dpreed@deepplum.com> <mailto:
>> dpreed@deepplum.com
>> >     <mailto:dpreed@deepplum.com>>> wrote:
>> >      >
>> >      >
>> >      >     On Monday, July 12, 2021 9:46am, "Livingood, Jason" <
>> Jason_Livingood@comcast.com <mailto:Jason_Livingood@comcast.com>
>> >     <mailto:Jason_Livingood@comcast.com <mailto:
>> Jason_Livingood@comcast.com>>> said:
>> >      >
>> >      >      > I think latency/delay is becoming seen to be as important
>> certainly, if not a more direct proxy for end user QoE. This is all still
>> evolving and I
>> >     have
>> >      >     to say is a super interesting & fun thing to work on. :-)
>> >      >
>> >      >     If I could manage to sell one idea to the management
>> hierarchy of communications industry CEOs (operators, vendors, ...) it is
>> this one:
>> >      >
>> >      >     "It's the end-to-end latency, stupid!"
>> >      >
>> >      >     And I mean, by end-to-end, latency to complete a task at a
>> relevant layer of abstraction.
>> >      >
>> >      >     At the link level, it's packet send to packet receive
>> completion.
>> >      >
>> >      >     But at the transport level including retransmission buffers,
>> it's datagram (or message) origination until the acknowledgement arrives
>> for that
>> >     message being
>> >      >     delivered after whatever number of retransmissions, freeing
>> the retransmission buffer.
>> >      >
>> >      >     At the WWW level, it's mouse click to display update
>> corresponding to completion of the request.
>> >      >
>> >      >     What should be noted is that lower level latencies don't
>> directly predict the magnitude of higher-level latencies. But longer lower
>> level latencies
>> >     almost
>> >      >     always amplfify higher level latencies. Often non-linearly.
>> >      >
>> >      >     Throughput is very, very weakly related to these latencies,
>> in contrast.
>> >      >
>> >      >     The amplification process has to do with the presence of
>> queueing. Queueing is ALWAYS bad for latency, and throughput only helps if
>> it is in exactly the
>> >      >     right place (the so-called input queue of the bottleneck
>> process, which is often a link, but not always).
>> >      >
>> >      >     Can we get that slogan into Harvard Business Review? Can we
>> get it taught in Managerial Accounting at HBS? (which does address
>> logistics/supply chain
>> >     queueing).
>> >      >
>> >      >
>> >      >
>> >      >
>> >      >
>> >      >
>> >      >
>> >      > This electronic communication and the information and any files
>> transmitted with it, or attached to it, are confidential and are intended
>> solely for the
>> >     use of
>> >      > the individual or entity to whom it is addressed and may contain
>> information that is confidential, legally privileged, protected by privacy
>> laws, or
>> >     otherwise
>> >      > restricted from disclosure to anyone else. If you are not the
>> intended recipient or the person responsible for delivering the e-mail to
>> the intended
>> >     recipient,
>> >      > you are hereby notified that any use, copying, distributing,
>> dissemination, forwarding, printing, or copying of this e-mail is strictly
>> prohibited. If you
>> >      > received this e-mail in error, please return the e-mail to the
>> sender, delete it from your computer, and destroy any printed copy of it.
>> >
>> >
>> >     --
>> >     Ben Greear <greearb@candelatech.com <mailto:greearb@candelatech.com
>> >>
>> >     Candela Technologies Inc http://www.candelatech.com
>> >
>> >
>> > This electronic communication and the information and any files
>> transmitted with it, or attached to it, are confidential and are intended
>> solely for the use of
>> > the individual or entity to whom it is addressed and may contain
>> information that is confidential, legally privileged, protected by privacy
>> laws, or otherwise
>> > restricted from disclosure to anyone else. If you are not the intended
>> recipient or the person responsible for delivering the e-mail to the
>> intended recipient,
>> > you are hereby notified that any use, copying, distributing,
>> dissemination, forwarding, printing, or copying of this e-mail is strictly
>> prohibited. If you
>> > received this e-mail in error, please return the e-mail to the sender,
>> delete it from your computer, and destroy any printed copy of it.
>>
>>
>> --
>> Ben Greear <greearb@candelatech.com>
>> Candela Technologies Inc  http://www.candelatech.com
>>
>> _______________________________________________
>> Bloat mailing list
>> Bloat@lists.bufferbloat.net
>> https://lists.bufferbloat.net/listinfo/bloat
>>
>

-- 
This electronic communication and the information and any files transmitted 
with it, or attached to it, are confidential and are intended solely for 
the use of the individual or entity to whom it is addressed and may contain 
information that is confidential, legally privileged, protected by privacy 
laws, or otherwise restricted from disclosure to anyone else. If you are 
not the intended recipient or the person responsible for delivering the 
e-mail to the intended recipient, you are hereby notified that any use, 
copying, distributing, dissemination, forwarding, printing, or copying of 
this e-mail is strictly prohibited. If you received this e-mail in error, 
please return the e-mail to the sender, delete it from your computer, and 
destroy any printed copy of it.

--0000000000000826e105c76a85eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Just an FYI,<br><br>iperf 2 uses a 4 usec delay for TCP an=
d 100 usec delay for UDP=C2=A0to fill the token bucket. We thought about pr=
oviding a knob for this but decided not to. We figured a busy wait CPU thre=
ad wasn&#39;t a big deal because of the trend=C2=A0of many CPU cores. The t=
hreaded=C2=A0design works well for this. We also support fq-pacing and isoc=
hronous traffic using clock_nanosleep() to schedule the writes. We&#39;ll p=
robably=C2=A0add Markov chain support but that&#39;s not critical and may n=
ot affect actionable engineering. We found isoch as a useful traffic profil=
e, at least for our WiFi testing. I&#39;m going to add support for TCP_NOTS=
ENT_LOWAT for select()/write() based transmissions. I&#39;m doubtful this i=
s very useful as event based scheduling based on times seems better. We&#39=
;ll probably use it for unit testing WiFi aggregation and see if it helps t=
here or not. I&#39;ll see if it aligns with the OWD measurements.=C2=A0<br>=
<br>On queue depth, we use two techniques. The most obvious is to measure t=
he end to end delay and use rx histograms, getting all the samples without =
averaging. The second, internal for us only, is using network telemetry and=
 mapping all the clock domains to the GPS domain. Any moment in time the en=
d/end path can be inspected to where every packet is.=C2=A0<br><br>Our auto=
mated testing is focused around unit tests and used to statistically monito=
r code changes (which come at a high rate and apply to a broad range of chi=
ps) - so the requirements can be very different from a network or service p=
rovider.<br><br>Agreed that the amount of knobs and reactive components are=
 a challenge. And one must assume non-linearity which becomes obvious after=
 a few direct measurements (i.e. no averaging.) The challenge of statistica=
l;y reproducible is always there. We find Montec Carlo techniques can be us=
eful only when they are proven to be statistically reproducible.<br><br>Bob=
<br><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Sat, Jul 17, 2021 at 4:29 PM Aaron Wood &lt;<a href=3D"mailto:wo=
ody77@gmail.com">woody77@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On Mon,=
 Jul 12, 2021 at 1:32 PM Ben Greear &lt;<a href=3D"mailto:greearb@candelate=
ch.com" target=3D"_blank">greearb@candelatech.com</a>&gt; wrote:<br></div><=
div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>UDP is better for getting actual packet latency, for sure.=C2=A0 TCP is ty=
pical-user-experience-latency though,<br>
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
oard/images/0003Cs-8047.GIF" target=3D"_blank">https://www.edwardtufte.com/=
bboard/images/0003Cs-8047.GIF</a><br></div><div><a href=3D"https://www.edwa=
rdtufte.com/tufte/psysvcs_p2" target=3D"_blank">https://www.edwardtufte.com=
/tufte/psysvcs_p2</a><br></div><div><br></div><div>These work for understan=
ding because the tiled graphs are all identically constructed, and the read=
er first learns how to read a single tile, and then learns the pattern of w=
hich tiles represent which measurements.</div><div><br></div><div>Further, =
they are opinionated.=C2=A0 In the second link above, the y axis is not bas=
ed on the measured data, but standardized expected values, which (I think) =
is key to quick readability.=C2=A0 You never need to read the axes.=C2=A0 M=
uch like setting up gauges such that &quot;nominal&quot; is always at the s=
ame indicator position for all graphs (e.g. straight up).=C2=A0 At a glance=
, you can see if things are &quot;correct&quot; or not.</div><div><br></div=
><div>That tiling arrangement wouldn&#39;t be great for showing interrelati=
onships (although it may give you a good historical view of correlated beha=
vior).=C2=A0 One thought is to overlay a network graph diagram (graph of al=
l network links) with small &quot;sparkline&quot; type graphs.</div><div><b=
r></div><div>For a more physical-based network graph, I could see visualizi=
ng the queue depth for each egress port (max value over a time of X, or per=
centage of time at max depth).</div><div><br></div><div>Taken together, the=
 timewise correlation could be useful (which peers are having problems comm=
unicating, and which ports between them are impacted?).</div><div><br></div=
><div>I think getting good data about queue depth may be the hard part, esp=
ecially catching transients and the duty cycle / pulse-width of the load (a=
nd then converting that to a number).=C2=A0 Back when I uncovered the iperf=
 application-level pacing granularity was too high 5 years ago, I called it=
 them &quot;millibursts&quot;, and maybe dtaht pointed out that link utiliz=
ation is always 0% or 100%, and it&#39;s just a matter of the PWM of the pa=
cket rate that makes it look like something in between.</div><div><a href=
=3D"https://burntchrome.blogspot.com/2016/09/iperf3-and-microbursts.html" t=
arget=3D"_blank">https://burntchrome.blogspot.com/2016/09/iperf3-and-microb=
ursts.html</a><br></div><div><br></div><div><br></div><div><br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">
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
--0000000000000826e105c76a85eb--

--0000000000000da15705c76a859e
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEILGHZtu8dfz9np8m4TO8OnX12n7vfBxMHG3g
bMAR20jHMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDcxODE5
MDYzNlowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQAkPlcDulhwGXRfF4kBl91chXReRgW5QB41FqGdO/okVi8pqJF6gTvU
MBa3qbHWkB4S4L9MnJGRIBEkTeGLKjj5voL8EI4dEbnTYiVNkut+jC33qKaW6E3enZya4OnD0JqQ
wjAMV6xSc6RGKab6BYdeyM12v62NFFWaiGCkto2Dka13DZk286TGHfnNdNvKKPN9k859isC0PPBZ
X3idaPzNUO8nJbaBbQGe6k6uYwuWx34jZ4gX7EnOd2kGKZ1Pc6rDUBKlpvBYl76RW8dZ7SpD0WeC
V0hJT98m3a574aIQU96TJvM5NK9/tLl+sPn+M8NAQVCrWYCZW4Jv+vo/zotp
--0000000000000da15705c76a859e--

--===============9062405819454757381==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============9062405819454757381==--

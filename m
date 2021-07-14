Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E17453C8B17
	for <lists+cake@lfdr.de>; Wed, 14 Jul 2021 20:38:21 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DD5433CB5B;
	Wed, 14 Jul 2021 14:38:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1626287893;
	bh=V1KXodQlBo41jJg/xdzt7vzzkioU5YagPHcwIUVnUg4=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=ab6WfiaYQUveysf3luH5cN1bt2PItD4utOgMwMRNb8SDozHNFHbhFztwh+dB07aHB
	 JZlZVslQv2rtUAF/E6t0a2pH61b/QTugkOxu20v8eaD6GAPYEk1gGSwJ0UqArInAm4
	 AxIQe3ZF7bl/qSDDNCfIk2ptv8HSY+CblEt1Ufm/A3gXz0QFb9tc/6/L5fZUdnotHf
	 /fNAXSNsDAqmzr/EdhGkWGkYqcfaPKcy2fXt388uejpwRLUkfHrzvFH3HTGELq6yrx
	 OK4Dx34c8Hb8DYNfJiiX9yEwqEHykpcssOF4FPL8XlwTQESgB4bSrT7Cu3V8SW7SFy
	 9vgnduT71Z0JQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 351533CB4D
 for <cake@lists.bufferbloat.net>; Wed, 14 Jul 2021 14:38:11 -0400 (EDT)
Received: by mail-ej1-x634.google.com with SMTP id go30so4873865ejc.8
 for <cake@lists.bufferbloat.net>; Wed, 14 Jul 2021 11:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NIwGl4vPG1B0bmM1mWMG57jvl303ZCkz2hiwd6thMsU=;
 b=WzWF/vAKhLeaQioX2G8jmSLB6XXa9mN3Mx6q/29UOL6Iui2vQvbLDL8NYnBaxIhiUZ
 W11w7aQK3SfKPB20t/XioH4Dq0v1aLqz2Foo827WC1cNKmF5txjOfPABoVDNetF4Wofa
 LfwWvjSw6YOSlRdGemgDA4nfdjLzxQGphXZlI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NIwGl4vPG1B0bmM1mWMG57jvl303ZCkz2hiwd6thMsU=;
 b=KqRSya+0pishytu7eIusoqP2hV7X9mEi9EY/7WVXvud8PbTJt64s3mvHCVg56uFTW4
 k/Ej7SJLacrqiuiBuVmtNzgcdHnlzna3cU89P+KcfQPij1Objb2pLJG9KYmNbNq7deNl
 nX9E8/ZPSFvOOBvEwQeXFnExrOWM/H32ofG6QD3E2rIfBI//7CMJSZpcrTjNBMvbOYL7
 bK2XMS/Bd4dgEzN6b3kMtLKW63nXM/8FRgGU/bUzVCW1XjbS//eWcDPzKa77kPeEqmZ2
 5KNQA/8b1lBUDnJuiQFuV7pG4SMoWr7dAyKEgnHBABMMglFxgrgDmFTqX09ezoz2klna
 6+2g==
X-Gm-Message-State: AOAM531MoxpaExSDjpgm/6rHRcrWwKd2/tCZs95+9g20Axpi7qJ0BrX8
 bWDKNly5guu77w1EmwLWiWm8Br9y3yG9ejjyRxT/kOktaNsMNSIrfYVZ9ilTyTyV/rufN74nA+e
 rfYeW54Lu9Gc2vfCXDob9M9z53qyJ
X-Google-Smtp-Source: ABdhPJyghx3clyxELVNMIGN+dUfBIF57SNWN+HeG74FuRi4qg1jRKrKc3c2tiYn4sPAoL8hWW5Fa2nf3xu4aEESxpfI=
X-Received: by 2002:a17:906:a04f:: with SMTP id
 bg15mr6501928ejb.417.1626287889757; 
 Wed, 14 Jul 2021 11:38:09 -0700 (PDT)
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
 <02c601d777b6$c4ce5a10$4e6b0e30$@rizk.com.de>
 <CAHb6LvqRyuK1Xzt6mNhAteit3qZ3bD0vKSqHqog6ZqgMaiBu9w@mail.gmail.com>
 <1626198543.007132235@apps.rackspace.com>
In-Reply-To: <1626198543.007132235@apps.rackspace.com>
Date: Wed, 14 Jul 2021 11:37:58 -0700
Message-ID: <CAHb6LvoMmU5onHBbXCoqvvbgD=z195WvN2vUyazbcfBBhc0Wyg@mail.gmail.com>
To: "David P. Reed" <dpreed@deepplum.com>
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
 Leonard Kleinrock <lk@cs.ucla.edu>, starlink@lists.bufferbloat.net,
 codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Amr Rizk <amr@rizk.com.de>,
 Ben Greear <greearb@candelatech.com>
Content-Type: multipart/mixed; boundary="===============8847067626132273601=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8847067626132273601==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="00000000000001d9bf05c719a83b"

--00000000000001d9bf05c719a83b
Content-Type: multipart/alternative; boundary="000000000000f977e805c719a711"

--000000000000f977e805c719a711
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for this. I find it both interesting and useful. Learning from those
who came before me reminds me of "standing on the shoulders of giants." I
try to teach my kids that it's not so much us as the giants we choose - so
choose judiciously and, more importantly, be grateful when they provide
their shoulders from which to see.

One challenge I faced with iperf 2 was around flow control's effects on
latency. I find if iperf 2 rate limits on writes then the end/end
latencies, RTT look good because the pipe is basically empty, while rate
limiting reads to the same value fills the window and drives the RTT up.
One might conclude, from a network perspective, the write side is better.
But in reality, the write rate limiting is just pushing the delay into the
application's logic, i.e. the relevant bytes may not be in the pipe but
they aren't at the receiver either, they're stuck somewhere in the "tx
application space."

It wasn't obvious to me how to address this. We added burst measurements
(burst xfer time, and bursts/sec) which, I think, helps.

Bob

On Tue, Jul 13, 2021 at 10:49 AM David P. Reed <dpreed@deepplum.com> wrote:

> Bob -
>
> On Tuesday, July 13, 2021 1:07pm, "Bob McMahon" <bob.mcmahon@broadcom.com=
>
> said:
>
> > "Control at endpoints benefits greatly from even small amounts of
> > information supplied by the network about the degree of congestion
> present
> > on the path."
> >
> > Agreed. The ECN mechanism seems like a shared thermostat in a building.
> > It's basically an on/off where everyone is trying to set the temperatur=
e.
> > It does affect, in a non-linear manner, but still an effect. Better tha=
n
> a
> > thermostat set at infinity or 0 Kelvin for sure.
> >
> > I find the assumption that congestion occurs "in network" as not always
> > true. Taking OWD measurements with read side rate limiting suggests tha=
t
> > equally important to mitigating bufferbloat driven latency using
> congestion
> > signals is to make sure apps read "fast enough" whatever that means. I
> > rarely hear about how important it is for apps to prioritize reads over
> > open sockets. Not sure why that's overlooked and bufferbloat gets all t=
he
> > attention. I'm probably missing something.
>
> In the early days of the Internet protocol and also even ARPANET Host-Hos=
t
> protocol there were those who conflated host-level "flow control" (matchi=
ng
> production rate of data into the network to the destination *process*
> consumption rate of data on a virtual circuit with a source capable of
> variable and unbounded bit rate) with "congestion control" in the network=
.
> The term "congestion control" wasn't even used in the Internetworking
> project when it was discussing design in the late 1970's. I tried to use =
it
> in our working group meetings, and every time I said "congestion" the
> response would be phrased as "flow".
>
> The classic example was printing a file's contents from disk to an ASR33
> terminal on an TIP (Terminal IMP). There was flow control in the end-to-e=
nd
> protocol to avoid overflowing the TTY's limited buffer. But those who gre=
w
> up with ARPANET knew that thare was no way to accumulate queueing in the
> IMP network, because of RFNM's that required permission for each new pack=
et
> to be sent. RFNM's implicitly prevented congestion from being caused by a
> virtual circuit. But a flow control problem remained, because at the high=
er
> level protocol, buffering would overflow at the TIP.
>
> TCP adopted a different end-to-end *flow* control, so it solved the flow
> control problem by creating a Windowing mechanism. But it did not by itse=
lf
> solve the *congestion* control problem, even congestion built up inside t=
he
> network by a wide-open window and a lazy operating system at the receivin=
g
> end that just said, I've got a lot of virtual memory so I'll open the
> window to maximum size.
>
> There was a lot of confusion, because the guys who came from the ARPANET
> environment, with all links being the same speed and RFNM limits on rate,
> couldn't see why the Internet stack was so collapse-prone. I think Multic=
s,
> for example, as a giant virtual memory system caused congestion by openin=
g
> up its window too much.
>
> This is where Van Jacobson discovered that dropped packets were a "good
> enough" congestion signal because of "fate sharing" among the packets tha=
t
> flowed on a bottleneck path, and that windowing (invented for flow contro=
l
> by the receiver to protect itself from overflow if the receiver couldn't
> receive fast enough) could be used to slow down the sender to match the
> rate of senders to the capacity of the internal bottleneck link. An elega=
nt
> "hack" that actually worked really well in practice.
>
> Now we view it as a bug if the receiver opens its window too much, or
> otherwise doesn't translate dropped packets (or other incipient-congestio=
n
> signals) to shut down the source transmission rate as quickly as possible=
.
> Fortunately, the proper state of the internet - the one it should seek as
> its ideal state - is that there is at most one packet waiting for each
> egress link in the bottleneck path. This stable state ensures that the
> window-reduction or slow-down signal encounters no congestion, with high
> probability. [Excursions from one-packet queue occur, but since only
> one-packet waiting is sufficient to fill the bottleneck link to capacity,
> they can't achieve higher throughput in steady state. In practice, noisy
> arrival distributions can reduce throughput, so allowing a small number o=
f
> packets to be waiting on a bottleneck link's queue can slightly increase
> throughput. That's not asymptotically relevant, but as mentioned, the
> Internet is never near asymptotic behavior.]
>
>
> >
> > Bob
> >
> > On Tue, Jul 13, 2021 at 12:15 AM Amr Rizk <amr@rizk.com.de> wrote:
> >
> >> Ben,
> >>
> >> it depends on what one tries to measure. Doing a rate scan using UDP (=
to
> >> measure latency distributions under load) is the best thing that we ha=
ve
> >> but without actually knowing how resources are shared (fair share as i=
n
> >> WiFi, FIFO as nearly everywhere else) it becomes very difficult to
> >> interpret the results or provide a proper argument on latency. You are
> >> right - TCP stats are a proxy for user experience but I believe they a=
re
> >> difficult to reproduce (we are always talking about very short TCP
> flows -
> >> the infinite TCP flow that converges to a steady behavior is purely
> >> academic).
> >>
> >> By the way, Little's law is a strong tool when it comes to averages. T=
o
> be
> >> able to say more (e.g. 1% of the delays is larger than x) one requires
> more
> >> information (e.g. the traffic - On-OFF pattern) see [1].  I am not sur=
e
> >> when does such information readily exist.
> >>
> >> Best
> >> Amr
> >>
> >> [1] https://dl.acm.org/doi/10.1145/3341617.3326146 or if behind a
> paywall
> >> https://www.dcs.warwick.ac.uk/~florin/lib/sigmet19b.pdf
> >>
> >> --------------------------------
> >> Amr Rizk (amr.rizk@uni-due.de)
> >> University of Duisburg-Essen
> >>
> >> -----Urspr=C3=BCngliche Nachricht-----
> >> Von: Bloat <bloat-bounces@lists.bufferbloat.net> Im Auftrag von Ben
> Greear
> >> Gesendet: Montag, 12. Juli 2021 22:32
> >> An: Bob McMahon <bob.mcmahon@broadcom.com>
> >> Cc: starlink@lists.bufferbloat.net; Make-Wifi-fast <
> >> make-wifi-fast@lists.bufferbloat.net>; Leonard Kleinrock <
> lk@cs.ucla.edu>;
> >> David P. Reed <dpreed@deepplum.com>; Cake List <
> cake@lists.bufferbloat.net>;
> >> codel@lists.bufferbloat.net; cerowrt-devel <
> >> cerowrt-devel@lists.bufferbloat.net>; bloat <
> bloat@lists.bufferbloat.net>
> >> Betreff: Re: [Bloat] Little's Law mea culpa, but not invalidating my
> main
> >> point
> >>
> >> UDP is better for getting actual packet latency, for sure.  TCP is
> >> typical-user-experience-latency though, so it is also useful.
> >>
> >> I'm interested in the test and visualization side of this.  If there
> were
> >> a way to give engineers a good real-time look at a complex real-world
> >> network, then they have something to go on while trying to tune variou=
s
> >> knobs in their network to improve it.
> >>
> >> I'll let others try to figure out how build and tune the knobs, but th=
e
> >> data acquisition and visualization is something we might try to
> >> accomplish.  I have a feeling I'm not the first person to think of thi=
s,
> >> however....probably someone already has done such a thing.
> >>
> >> Thanks,
> >> Ben
> >>
> >> On 7/12/21 1:04 PM, Bob McMahon wrote:
> >> > I believe end host's TCP stats are insufficient as seen per the
> >> > "failed" congested control mechanisms over the last decades. I think
> >> > Jaffe pointed this out in
> >> > 1979 though he was using what's been deemed on this thread as
> "spherical
> >> cow queueing theory."
> >> >
> >> > "Flow control in store-and-forward computer networks is appropriate
> >> > for decentralized execution. A formal description of a class of
> >> > "decentralized flow control algorithms" is given. The feasibility of
> >> > maximizing power with such algorithms is investigated. On the
> >> > assumption that communication links behave like M/M/1 servers it is
> >> shown that no "decentralized flow control algorithm" can maximize
> network
> >> power. Power has been suggested in the literature as a network
> performance
> >> objective. It is also shown that no objective based only on the users'
> >> throughputs and average delay is decentralizable. Finally, a restricte=
d
> >> class of algorithms cannot even approximate power."
> >> >
> >> > https://ieeexplore.ieee.org/document/1095152
> >> >
> >> > Did Jaffe make a mistake?
> >> >
> >> > Also, it's been observed that latency is non-parametric in it's
> >> > distributions and computing gaussians per the central limit theorem
> >> > for OWD feedback loops aren't effective. How does one design a contr=
ol
> >> loop around things that are non-parametric? It also begs the question,
> what
> >> are the feed forward knobs that can actually help?
> >> >
> >> > Bob
> >> >
> >> > On Mon, Jul 12, 2021 at 12:07 PM Ben Greear <greearb@candelatech.com
> >> <mailto:greearb@candelatech.com>> wrote:
> >> >
> >> >     Measuring one or a few links provides a bit of data, but seems
> like
> >> if someone is trying to understand
> >> >     a large and real network, then the OWD between point A and B nee=
ds
> >> to just be input into something much
> >> >     more grand.  Assuming real-time OWD data exists between 100 to
> 1000
> >> endpoint pairs, has anyone found a way
> >> >     to visualize this in a useful manner?
> >> >
> >> >     Also, considering something better than ntp may not really scale
> to
> >> 1000+ endpoints, maybe round-trip
> >> >     time is only viable way to get this type of data.  In that case,
> >> maybe clever logic could use things
> >> >     like trace-route to get some idea of how long it takes to get
> 'onto'
> >> the internet proper, and so estimate
> >> >     the last-mile latency.  My assumption is that the last-mile
> latency
> >> is where most of the pervasive
> >> >     assymetric network latencies would exist (or just ping 8.8.8.8
> which
> >> is 20ms from everywhere due to
> >> >     $magic).
> >> >
> >> >     Endpoints could also triangulate a bit if needed, using some
> anchor
> >> points in the network
> >> >     under test.
> >> >
> >> >     Thanks,
> >> >     Ben
> >> >
> >> >     On 7/12/21 11:21 AM, Bob McMahon wrote:
> >> >      > iperf 2 supports OWD and gives full histograms for TCP write =
to
> >> read, TCP connect times, latency of packets (with UDP), latency of
> "frames"
> >> with
> >> >      > simulated video traffic (TCP and UDP), xfer times of bursts
> with
> >> low duty cycle traffic, and TCP RTT (sampling based.) It also has
> support
> >> for sampling (per
> >> >      > interval reports) down to 100 usecs if configured with
> >> --enable-fastsampling, otherwise the fastest sampling is 5 ms. We've
> >> released all this as open source.
> >> >      >
> >> >      > OWD only works if the end realtime clocks are synchronized
> using
> >> a "machine level" protocol such as IEEE 1588 or PTP. Sadly, *most data
> >> centers don't
> >> >     provide
> >> >      > sufficient level of clock accuracy and the GPS pulse per
> second *
> >> to colo and vm customers.
> >> >      >
> >> >      > https://iperf2.sourceforge.io/iperf-manpage.html
> >> >      >
> >> >      > Bob
> >> >      >
> >> >      > On Mon, Jul 12, 2021 at 10:40 AM David P. Reed <
> >> dpreed@deepplum.com <mailto:dpreed@deepplum.com> <mailto:
> >> dpreed@deepplum.com
> >> >     <mailto:dpreed@deepplum.com>>> wrote:
> >> >      >
> >> >      >
> >> >      >     On Monday, July 12, 2021 9:46am, "Livingood, Jason" <
> >> Jason_Livingood@comcast.com <mailto:Jason_Livingood@comcast.com>
> >> >     <mailto:Jason_Livingood@comcast.com <mailto:
> >> Jason_Livingood@comcast.com>>> said:
> >> >      >
> >> >      >      > I think latency/delay is becoming seen to be as
> important
> >> certainly, if not a more direct proxy for end user QoE. This is all
> still
> >> evolving and I
> >> >     have
> >> >      >     to say is a super interesting & fun thing to work on. :-)
> >> >      >
> >> >      >     If I could manage to sell one idea to the management
> >> hierarchy of communications industry CEOs (operators, vendors, ...) it
> is
> >> this one:
> >> >      >
> >> >      >     "It's the end-to-end latency, stupid!"
> >> >      >
> >> >      >     And I mean, by end-to-end, latency to complete a task at =
a
> >> relevant layer of abstraction.
> >> >      >
> >> >      >     At the link level, it's packet send to packet receive
> >> completion.
> >> >      >
> >> >      >     But at the transport level including retransmission
> buffers,
> >> it's datagram (or message) origination until the acknowledgement arriv=
es
> >> for that
> >> >     message being
> >> >      >     delivered after whatever number of retransmissions, freei=
ng
> >> the retransmission buffer.
> >> >      >
> >> >      >     At the WWW level, it's mouse click to display update
> >> corresponding to completion of the request.
> >> >      >
> >> >      >     What should be noted is that lower level latencies don't
> >> directly predict the magnitude of higher-level latencies. But longer
> lower
> >> level latencies
> >> >     almost
> >> >      >     always amplfify higher level latencies. Often non-linearl=
y.
> >> >      >
> >> >      >     Throughput is very, very weakly related to these latencie=
s,
> >> in contrast.
> >> >      >
> >> >      >     The amplification process has to do with the presence of
> >> queueing. Queueing is ALWAYS bad for latency, and throughput only help=
s
> if
> >> it is in exactly the
> >> >      >     right place (the so-called input queue of the bottleneck
> >> process, which is often a link, but not always).
> >> >      >
> >> >      >     Can we get that slogan into Harvard Business Review? Can =
we
> >> get it taught in Managerial Accounting at HBS? (which does address
> >> logistics/supply chain
> >> >     queueing).
> >> >      >
> >> >      >
> >> >      >
> >> >      >
> >> >      >
> >> >      >
> >> >      >
> >> >      > This electronic communication and the information and any fil=
es
> >> transmitted with it, or attached to it, are confidential and are
> intended
> >> solely for the
> >> >     use of
> >> >      > the individual or entity to whom it is addressed and may
> contain
> >> information that is confidential, legally privileged, protected by
> privacy
> >> laws, or
> >> >     otherwise
> >> >      > restricted from disclosure to anyone else. If you are not the
> >> intended recipient or the person responsible for delivering the e-mail
> to
> >> the intended
> >> >     recipient,
> >> >      > you are hereby notified that any use, copying, distributing,
> >> dissemination, forwarding, printing, or copying of this e-mail is
> strictly
> >> prohibited. If you
> >> >      > received this e-mail in error, please return the e-mail to th=
e
> >> sender, delete it from your computer, and destroy any printed copy of
> it.
> >> >
> >> >
> >> >     --
> >> >     Ben Greear <greearb@candelatech.com <mailto:
> greearb@candelatech.com
> >> >>
> >> >     Candela Technologies Inc http://www.candelatech.com
> >> >
> >> >
> >> > This electronic communication and the information and any files
> >> > transmitted with it, or attached to it, are confidential and are
> >> > intended solely for the use of the individual or entity to whom it i=
s
> >> > addressed and may contain information that is confidential, legally
> >> > privileged, protected by privacy laws, or otherwise restricted from
> >> disclosure to anyone else. If you are not the intended recipient or th=
e
> >> person responsible for delivering the e-mail to the intended recipient=
,
> you
> >> are hereby notified that any use, copying, distributing, dissemination=
,
> >> forwarding, printing, or copying of this e-mail is strictly prohibited=
.
> If
> >> you received this e-mail in error, please return the e-mail to the
> sender,
> >> delete it from your computer, and destroy any printed copy of it.
> >>
> >>
> >> --
> >> Ben Greear <greearb@candelatech.com>
> >> Candela Technologies Inc  http://www.candelatech.com
> >>
> >> _______________________________________________
> >> Bloat mailing list
> >> Bloat@lists.bufferbloat.net
> >> https://lists.bufferbloat.net/listinfo/bloat
> >>
> >>
> >
> > --
> > This electronic communication and the information and any files
> transmitted
> > with it, or attached to it, are confidential and are intended solely fo=
r
> > the use of the individual or entity to whom it is addressed and may
> contain
> > information that is confidential, legally privileged, protected by
> privacy
> > laws, or otherwise restricted from disclosure to anyone else. If you ar=
e
> > not the intended recipient or the person responsible for delivering the
> > e-mail to the intended recipient, you are hereby notified that any use,
> > copying, distributing, dissemination, forwarding, printing, or copying =
of
> > this e-mail is strictly prohibited. If you received this e-mail in erro=
r,
> > please return the e-mail to the sender, delete it from your computer, a=
nd
> > destroy any printed copy of it.
> >
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

--000000000000f977e805c719a711
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for this. I find it both interesting and useful. Le=
arning=C2=A0from those who came before me reminds me of &quot;standing on t=
he shoulders=C2=A0of giants.&quot; I try to teach my kids that it&#39;s not=
 so much us as the giants we choose - so choose judiciously=C2=A0and, more =
importantly, be grateful when they provide their shoulders from which to se=
e.=C2=A0<br><br>One challenge I faced with iperf 2 was around flow control&=
#39;s effects on latency. I find if iperf 2 rate limits on writes then the =
end/end latencies, RTT look good because the pipe is basically empty, while=
 rate limiting reads to the same value fills the window and drives the RTT =
up. One might conclude, from a network perspective, the write side is bette=
r.=C2=A0 But in reality, the=C2=A0write rate limiting is just pushing the d=
elay into the application&#39;s logic, i.e. the relevant bytes may not be i=
n the pipe but they aren&#39;t at the receiver=C2=A0either, they&#39;re stu=
ck somewhere in the &quot;tx application space.&quot;<br><br>It wasn&#39;t =
obvious=C2=A0to me how to address this. We added burst measurements (burst =
xfer time, and bursts/sec) which, I think,=C2=A0helps.<br><br>Bob</div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Ju=
l 13, 2021 at 10:49 AM David P. Reed &lt;<a href=3D"mailto:dpreed@deepplum.=
com">dpreed@deepplum.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">Bob -<br>
<br>
On Tuesday, July 13, 2021 1:07pm, &quot;Bob McMahon&quot; &lt;<a href=3D"ma=
ilto:bob.mcmahon@broadcom.com" target=3D"_blank">bob.mcmahon@broadcom.com</=
a>&gt; said:<br>
<br>
&gt; &quot;Control at endpoints benefits greatly from even small amounts of=
<br>
&gt; information supplied by the network about the degree of congestion pre=
sent<br>
&gt; on the path.&quot;<br>
&gt; <br>
&gt; Agreed. The ECN mechanism seems like a shared thermostat in a building=
.<br>
&gt; It&#39;s basically an on/off where everyone is trying to set the tempe=
rature.<br>
&gt; It does affect, in a non-linear manner, but still an effect. Better th=
an a<br>
&gt; thermostat set at infinity or 0 Kelvin for sure.<br>
&gt; <br>
&gt; I find the assumption that congestion occurs &quot;in network&quot; as=
 not always<br>
&gt; true. Taking OWD measurements with read side rate limiting suggests th=
at<br>
&gt; equally important to mitigating bufferbloat driven latency using conge=
stion<br>
&gt; signals is to make sure apps read &quot;fast enough&quot; whatever tha=
t means. I<br>
&gt; rarely hear about how important it is for apps to prioritize reads ove=
r<br>
&gt; open sockets. Not sure why that&#39;s overlooked and bufferbloat gets =
all the<br>
&gt; attention. I&#39;m probably missing something.<br>
<br>
In the early days of the Internet protocol and also even ARPANET Host-Host =
protocol there were those who conflated host-level &quot;flow control&quot;=
 (matching production rate of data into the network to the destination *pro=
cess* consumption rate of data on a virtual circuit with a source capable o=
f variable and unbounded bit rate) with &quot;congestion control&quot; in t=
he network. The term &quot;congestion control&quot; wasn&#39;t even used in=
 the Internetworking project when it was discussing design in the late 1970=
&#39;s. I tried to use it in our working group meetings, and every time I s=
aid &quot;congestion&quot; the response would be phrased as &quot;flow&quot=
;.<br>
<br>
The classic example was printing a file&#39;s contents from disk to an ASR3=
3 terminal on an TIP (Terminal IMP). There was flow control in the end-to-e=
nd protocol to avoid overflowing the TTY&#39;s limited buffer. But those wh=
o grew up with ARPANET knew that thare was no way to accumulate queueing in=
 the IMP network, because of RFNM&#39;s that required permission for each n=
ew packet to be sent. RFNM&#39;s implicitly prevented congestion from being=
 caused by a virtual circuit. But a flow control problem remained, because =
at the higher level protocol, buffering would overflow at the TIP.<br>
<br>
TCP adopted a different end-to-end *flow* control, so it solved the flow co=
ntrol problem by creating a Windowing mechanism. But it did not by itself s=
olve the *congestion* control problem, even congestion built up inside the =
network by a wide-open window and a lazy operating system at the receiving =
end that just said, I&#39;ve got a lot of virtual memory so I&#39;ll open t=
he window to maximum size.<br>
<br>
There was a lot of confusion, because the guys who came from the ARPANET en=
vironment, with all links being the same speed and RFNM limits on rate, cou=
ldn&#39;t see why the Internet stack was so collapse-prone. I think Multics=
, for example, as a giant virtual memory system caused congestion by openin=
g up its window too much.<br>
<br>
This is where Van Jacobson discovered that dropped packets were a &quot;goo=
d enough&quot; congestion signal because of &quot;fate sharing&quot; among =
the packets that flowed on a bottleneck path, and that windowing (invented =
for flow control by the receiver to protect itself from overflow if the rec=
eiver couldn&#39;t receive fast enough) could be used to slow down the send=
er to match the rate of senders to the capacity of the internal bottleneck =
link. An elegant &quot;hack&quot; that actually worked really well in pract=
ice.<br>
<br>
Now we view it as a bug if the receiver opens its window too much, or other=
wise doesn&#39;t translate dropped packets (or other incipient-congestion s=
ignals) to shut down the source transmission rate as quickly as possible. F=
ortunately, the proper state of the internet - the one it should seek as it=
s ideal state - is that there is at most one packet waiting for each egress=
 link in the bottleneck path. This stable state ensures that the window-red=
uction or slow-down signal encounters no congestion, with high probability.=
 [Excursions from one-packet queue occur, but since only one-packet waiting=
 is sufficient to fill the bottleneck link to capacity, they can&#39;t achi=
eve higher throughput in steady state. In practice, noisy arrival distribut=
ions can reduce throughput, so allowing a small number of packets to be wai=
ting on a bottleneck link&#39;s queue can slightly increase throughput. Tha=
t&#39;s not asymptotically relevant, but as mentioned, the Internet is neve=
r near asymptotic behavior.]<br>
<br>
<br>
&gt; <br>
&gt; Bob<br>
&gt; <br>
&gt; On Tue, Jul 13, 2021 at 12:15 AM Amr Rizk &lt;<a href=3D"mailto:amr@ri=
zk.com.de" target=3D"_blank">amr@rizk.com.de</a>&gt; wrote:<br>
&gt; <br>
&gt;&gt; Ben,<br>
&gt;&gt;<br>
&gt;&gt; it depends on what one tries to measure. Doing a rate scan using U=
DP (to<br>
&gt;&gt; measure latency distributions under load) is the best thing that w=
e have<br>
&gt;&gt; but without actually knowing how resources are shared (fair share =
as in<br>
&gt;&gt; WiFi, FIFO as nearly everywhere else) it becomes very difficult to=
<br>
&gt;&gt; interpret the results or provide a proper argument on latency. You=
 are<br>
&gt;&gt; right - TCP stats are a proxy for user experience but I believe th=
ey are<br>
&gt;&gt; difficult to reproduce (we are always talking about very short TCP=
 flows -<br>
&gt;&gt; the infinite TCP flow that converges to a steady behavior is purel=
y<br>
&gt;&gt; academic).<br>
&gt;&gt;<br>
&gt;&gt; By the way, Little&#39;s law is a strong tool when it comes to ave=
rages. To be<br>
&gt;&gt; able to say more (e.g. 1% of the delays is larger than x) one requ=
ires more<br>
&gt;&gt; information (e.g. the traffic - On-OFF pattern) see [1].=C2=A0 I a=
m not sure<br>
&gt;&gt; when does such information readily exist.<br>
&gt;&gt;<br>
&gt;&gt; Best<br>
&gt;&gt; Amr<br>
&gt;&gt;<br>
&gt;&gt; [1] <a href=3D"https://dl.acm.org/doi/10.1145/3341617.3326146" rel=
=3D"noreferrer" target=3D"_blank">https://dl.acm.org/doi/10.1145/3341617.33=
26146</a> or if behind a paywall<br>
&gt;&gt; <a href=3D"https://www.dcs.warwick.ac.uk/~florin/lib/sigmet19b.pdf=
" rel=3D"noreferrer" target=3D"_blank">https://www.dcs.warwick.ac.uk/~flori=
n/lib/sigmet19b.pdf</a><br>
&gt;&gt;<br>
&gt;&gt; --------------------------------<br>
&gt;&gt; Amr Rizk (<a href=3D"mailto:amr.rizk@uni-due.de" target=3D"_blank"=
>amr.rizk@uni-due.de</a>)<br>
&gt;&gt; University of Duisburg-Essen<br>
&gt;&gt;<br>
&gt;&gt; -----Urspr=C3=BCngliche Nachricht-----<br>
&gt;&gt; Von: Bloat &lt;<a href=3D"mailto:bloat-bounces@lists.bufferbloat.n=
et" target=3D"_blank">bloat-bounces@lists.bufferbloat.net</a>&gt; Im Auftra=
g von Ben Greear<br>
&gt;&gt; Gesendet: Montag, 12. Juli 2021 22:32<br>
&gt;&gt; An: Bob McMahon &lt;<a href=3D"mailto:bob.mcmahon@broadcom.com" ta=
rget=3D"_blank">bob.mcmahon@broadcom.com</a>&gt;<br>
&gt;&gt; Cc: <a href=3D"mailto:starlink@lists.bufferbloat.net" target=3D"_b=
lank">starlink@lists.bufferbloat.net</a>; Make-Wifi-fast &lt;<br>
&gt;&gt; <a href=3D"mailto:make-wifi-fast@lists.bufferbloat.net" target=3D"=
_blank">make-wifi-fast@lists.bufferbloat.net</a>&gt;; Leonard Kleinrock &lt=
;<a href=3D"mailto:lk@cs.ucla.edu" target=3D"_blank">lk@cs.ucla.edu</a>&gt;=
;<br>
&gt;&gt; David P. Reed &lt;<a href=3D"mailto:dpreed@deepplum.com" target=3D=
"_blank">dpreed@deepplum.com</a>&gt;; Cake List &lt;<a href=3D"mailto:cake@=
lists.bufferbloat.net" target=3D"_blank">cake@lists.bufferbloat.net</a>&gt;=
;<br>
&gt;&gt; <a href=3D"mailto:codel@lists.bufferbloat.net" target=3D"_blank">c=
odel@lists.bufferbloat.net</a>; cerowrt-devel &lt;<br>
&gt;&gt; <a href=3D"mailto:cerowrt-devel@lists.bufferbloat.net" target=3D"_=
blank">cerowrt-devel@lists.bufferbloat.net</a>&gt;; bloat &lt;<a href=3D"ma=
ilto:bloat@lists.bufferbloat.net" target=3D"_blank">bloat@lists.bufferbloat=
.net</a>&gt;<br>
&gt;&gt; Betreff: Re: [Bloat] Little&#39;s Law mea culpa, but not invalidat=
ing my main<br>
&gt;&gt; point<br>
&gt;&gt;<br>
&gt;&gt; UDP is better for getting actual packet latency, for sure.=C2=A0 T=
CP is<br>
&gt;&gt; typical-user-experience-latency though, so it is also useful.<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m interested in the test and visualization side of this.=C2=
=A0 If there were<br>
&gt;&gt; a way to give engineers a good real-time look at a complex real-wo=
rld<br>
&gt;&gt; network, then they have something to go on while trying to tune va=
rious<br>
&gt;&gt; knobs in their network to improve it.<br>
&gt;&gt;<br>
&gt;&gt; I&#39;ll let others try to figure out how build and tune the knobs=
, but the<br>
&gt;&gt; data acquisition and visualization is something we might try to<br=
>
&gt;&gt; accomplish.=C2=A0 I have a feeling I&#39;m not the first person to=
 think of this,<br>
&gt;&gt; however....probably someone already has done such a thing.<br>
&gt;&gt;<br>
&gt;&gt; Thanks,<br>
&gt;&gt; Ben<br>
&gt;&gt;<br>
&gt;&gt; On 7/12/21 1:04 PM, Bob McMahon wrote:<br>
&gt;&gt; &gt; I believe end host&#39;s TCP stats are insufficient as seen p=
er the<br>
&gt;&gt; &gt; &quot;failed&quot; congested control mechanisms over the last=
 decades. I think<br>
&gt;&gt; &gt; Jaffe pointed this out in<br>
&gt;&gt; &gt; 1979 though he was using what&#39;s been deemed on this threa=
d as &quot;spherical<br>
&gt;&gt; cow queueing theory.&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; &quot;Flow control in store-and-forward computer networks is =
appropriate<br>
&gt;&gt; &gt; for decentralized execution. A formal description of a class =
of<br>
&gt;&gt; &gt; &quot;decentralized flow control algorithms&quot; is given. T=
he feasibility of<br>
&gt;&gt; &gt; maximizing power with such algorithms is investigated. On the=
<br>
&gt;&gt; &gt; assumption that communication links behave like M/M/1 servers=
 it is<br>
&gt;&gt; shown that no &quot;decentralized flow control algorithm&quot; can=
 maximize network<br>
&gt;&gt; power. Power has been suggested in the literature as a network per=
formance<br>
&gt;&gt; objective. It is also shown that no objective based only on the us=
ers&#39;<br>
&gt;&gt; throughputs and average delay is decentralizable. Finally, a restr=
icted<br>
&gt;&gt; class of algorithms cannot even approximate power.&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; <a href=3D"https://ieeexplore.ieee.org/document/1095152" rel=
=3D"noreferrer" target=3D"_blank">https://ieeexplore.ieee.org/document/1095=
152</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Did Jaffe make a mistake?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Also, it&#39;s been observed that latency is non-parametric i=
n it&#39;s<br>
&gt;&gt; &gt; distributions and computing gaussians per the central limit t=
heorem<br>
&gt;&gt; &gt; for OWD feedback loops aren&#39;t effective. How does one des=
ign a control<br>
&gt;&gt; loop around things that are non-parametric? It also begs the quest=
ion, what<br>
&gt;&gt; are the feed forward knobs that can actually help?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Bob<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Mon, Jul 12, 2021 at 12:07 PM Ben Greear &lt;<a href=3D"ma=
ilto:greearb@candelatech.com" target=3D"_blank">greearb@candelatech.com</a>=
<br>
&gt;&gt; &lt;mailto:<a href=3D"mailto:greearb@candelatech.com" target=3D"_b=
lank">greearb@candelatech.com</a>&gt;&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0Measuring one or a few links provides a bi=
t of data, but seems like<br>
&gt;&gt; if someone is trying to understand<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0a large and real network, then the OWD bet=
ween point A and B needs<br>
&gt;&gt; to just be input into something much<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0more grand.=C2=A0 Assuming real-time OWD d=
ata exists between 100 to 1000<br>
&gt;&gt; endpoint pairs, has anyone found a way<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0to visualize this in a useful manner?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0Also, considering something better than nt=
p may not really scale to<br>
&gt;&gt; 1000+ endpoints, maybe round-trip<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0time is only viable way to get this type o=
f data.=C2=A0 In that case,<br>
&gt;&gt; maybe clever logic could use things<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0like trace-route to get some idea of how l=
ong it takes to get &#39;onto&#39;<br>
&gt;&gt; the internet proper, and so estimate<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0the last-mile latency.=C2=A0 My assumption=
 is that the last-mile latency<br>
&gt;&gt; is where most of the pervasive<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0assymetric network latencies would exist (=
or just ping 8.8.8.8 which<br>
&gt;&gt; is 20ms from everywhere due to<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0$magic).<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0Endpoints could also triangulate a bit if =
needed, using some anchor<br>
&gt;&gt; points in the network<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0under test.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0Thanks,<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0Ben<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0On 7/12/21 11:21 AM, Bob McMahon wrote:<br=
>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; iperf 2 supports OWD and gives full =
histograms for TCP write to<br>
&gt;&gt; read, TCP connect times, latency of packets (with UDP), latency of=
 &quot;frames&quot;<br>
&gt;&gt; with<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; simulated video traffic (TCP and UDP=
), xfer times of bursts with<br>
&gt;&gt; low duty cycle traffic, and TCP RTT (sampling based.) It also has =
support<br>
&gt;&gt; for sampling (per<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; interval reports) down to 100 usecs =
if configured with<br>
&gt;&gt; --enable-fastsampling, otherwise the fastest sampling is 5 ms. We&=
#39;ve<br>
&gt;&gt; released all this as open source.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; OWD only works if the end realtime c=
locks are synchronized using<br>
&gt;&gt; a &quot;machine level&quot; protocol such as IEEE 1588 or PTP. Sad=
ly, *most data<br>
&gt;&gt; centers don&#39;t<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0provide<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; sufficient level of clock accuracy a=
nd the GPS pulse per second *<br>
&gt;&gt; to colo and vm customers.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"https://iperf2.sourceforg=
e.io/iperf-manpage.html" rel=3D"noreferrer" target=3D"_blank">https://iperf=
2.sourceforge.io/iperf-manpage.html</a><br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Bob<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Mon, Jul 12, 2021 at 10:40 AM Dav=
id P. Reed &lt;<br>
&gt;&gt; <a href=3D"mailto:dpreed@deepplum.com" target=3D"_blank">dpreed@de=
epplum.com</a> &lt;mailto:<a href=3D"mailto:dpreed@deepplum.com" target=3D"=
_blank">dpreed@deepplum.com</a>&gt; &lt;mailto:<br>
&gt;&gt; <a href=3D"mailto:dpreed@deepplum.com" target=3D"_blank">dpreed@de=
epplum.com</a><br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:dpreed@deeppl=
um.com" target=3D"_blank">dpreed@deepplum.com</a>&gt;&gt;&gt; wrote:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0On Monday, July 1=
2, 2021 9:46am, &quot;Livingood, Jason&quot; &lt;<br>
&gt;&gt; <a href=3D"mailto:Jason_Livingood@comcast.com" target=3D"_blank">J=
ason_Livingood@comcast.com</a> &lt;mailto:<a href=3D"mailto:Jason_Livingood=
@comcast.com" target=3D"_blank">Jason_Livingood@comcast.com</a>&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:Jason_Livingo=
od@comcast.com" target=3D"_blank">Jason_Livingood@comcast.com</a> &lt;mailt=
o:<br>
&gt;&gt; <a href=3D"mailto:Jason_Livingood@comcast.com" target=3D"_blank">J=
ason_Livingood@comcast.com</a>&gt;&gt;&gt; said:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I think lat=
ency/delay is becoming seen to be as important<br>
&gt;&gt; certainly, if not a more direct proxy for end user QoE. This is al=
l still<br>
&gt;&gt; evolving and I<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0have<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0to say is a super=
 interesting &amp; fun thing to work on. :-)<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0If I could manage=
 to sell one idea to the management<br>
&gt;&gt; hierarchy of communications industry CEOs (operators, vendors, ...=
) it is<br>
&gt;&gt; this one:<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0&quot;It&#39;s th=
e end-to-end latency, stupid!&quot;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0And I mean, by en=
d-to-end, latency to complete a task at a<br>
&gt;&gt; relevant layer of abstraction.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0At the link level=
, it&#39;s packet send to packet receive<br>
&gt;&gt; completion.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0But at the transp=
ort level including retransmission buffers,<br>
&gt;&gt; it&#39;s datagram (or message) origination until the acknowledgeme=
nt arrives<br>
&gt;&gt; for that<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0message being<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0delivered after w=
hatever number of retransmissions, freeing<br>
&gt;&gt; the retransmission buffer.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0At the WWW level,=
 it&#39;s mouse click to display update<br>
&gt;&gt; corresponding to completion of the request.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0What should be no=
ted is that lower level latencies don&#39;t<br>
&gt;&gt; directly predict the magnitude of higher-level latencies. But long=
er lower<br>
&gt;&gt; level latencies<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0almost<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0always amplfify h=
igher level latencies. Often non-linearly.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Throughput is ver=
y, very weakly related to these latencies,<br>
&gt;&gt; in contrast.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0The amplification=
 process has to do with the presence of<br>
&gt;&gt; queueing. Queueing is ALWAYS bad for latency, and throughput only =
helps if<br>
&gt;&gt; it is in exactly the<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0right place (the =
so-called input queue of the bottleneck<br>
&gt;&gt; process, which is often a link, but not always).<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Can we get that s=
logan into Harvard Business Review? Can we<br>
&gt;&gt; get it taught in Managerial Accounting at HBS? (which does address=
<br>
&gt;&gt; logistics/supply chain<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0queueing).<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; This electronic communication and th=
e information and any files<br>
&gt;&gt; transmitted with it, or attached to it, are confidential and are i=
ntended<br>
&gt;&gt; solely for the<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0use of<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; the individual or entity to whom it =
is addressed and may contain<br>
&gt;&gt; information that is confidential, legally privileged, protected by=
 privacy<br>
&gt;&gt; laws, or<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0otherwise<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; restricted from disclosure to anyone=
 else. If you are not the<br>
&gt;&gt; intended recipient or the person responsible for delivering the e-=
mail to<br>
&gt;&gt; the intended<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0recipient,<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; you are hereby notified that any use=
, copying, distributing,<br>
&gt;&gt; dissemination, forwarding, printing, or copying of this e-mail is =
strictly<br>
&gt;&gt; prohibited. If you<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 &gt; received this e-mail in error, pleas=
e return the e-mail to the<br>
&gt;&gt; sender, delete it from your computer, and destroy any printed copy=
 of it.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0--<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0Ben Greear &lt;<a href=3D"mailto:greearb@c=
andelatech.com" target=3D"_blank">greearb@candelatech.com</a> &lt;mailto:<a=
 href=3D"mailto:greearb@candelatech.com" target=3D"_blank">greearb@candelat=
ech.com</a><br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0Candela Technologies Inc <a href=3D"http:/=
/www.candelatech.com" rel=3D"noreferrer" target=3D"_blank">http://www.cande=
latech.com</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; This electronic communication and the information and any fil=
es<br>
&gt;&gt; &gt; transmitted with it, or attached to it, are confidential and =
are<br>
&gt;&gt; &gt; intended solely for the use of the individual or entity to wh=
om it is<br>
&gt;&gt; &gt; addressed and may contain information that is confidential, l=
egally<br>
&gt;&gt; &gt; privileged, protected by privacy laws, or otherwise restricte=
d from<br>
&gt;&gt; disclosure to anyone else. If you are not the intended recipient o=
r the<br>
&gt;&gt; person responsible for delivering the e-mail to the intended recip=
ient, you<br>
&gt;&gt; are hereby notified that any use, copying, distributing, dissemina=
tion,<br>
&gt;&gt; forwarding, printing, or copying of this e-mail is strictly prohib=
ited. If<br>
&gt;&gt; you received this e-mail in error, please return the e-mail to the=
 sender,<br>
&gt;&gt; delete it from your computer, and destroy any printed copy of it.<=
br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Ben Greear &lt;<a href=3D"mailto:greearb@candelatech.com" target=
=3D"_blank">greearb@candelatech.com</a>&gt;<br>
&gt;&gt; Candela Technologies Inc=C2=A0 <a href=3D"http://www.candelatech.c=
om" rel=3D"noreferrer" target=3D"_blank">http://www.candelatech.com</a><br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; Bloat mailing list<br>
&gt;&gt; <a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">B=
loat@lists.bufferbloat.net</a><br>
&gt;&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"no=
referrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a=
><br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt; <br>
&gt; --<br>
&gt; This electronic communication and the information and any files transm=
itted<br>
&gt; with it, or attached to it, are confidential and are intended solely f=
or<br>
&gt; the use of the individual or entity to whom it is addressed and may co=
ntain<br>
&gt; information that is confidential, legally privileged, protected by pri=
vacy<br>
&gt; laws, or otherwise restricted from disclosure to anyone else. If you a=
re<br>
&gt; not the intended recipient or the person responsible for delivering th=
e<br>
&gt; e-mail to the intended recipient, you are hereby notified that any use=
,<br>
&gt; copying, distributing, dissemination, forwarding, printing, or copying=
 of<br>
&gt; this e-mail is strictly prohibited. If you received this e-mail in err=
or,<br>
&gt; please return the e-mail to the sender, delete it from your computer, =
and<br>
&gt; destroy any printed copy of it.<br>
&gt; <br>
<br>
<br>
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
--000000000000f977e805c719a711--

--00000000000001d9bf05c719a83b
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIQagYJKoZIhvcNAQcCoIIQWzCCEFcCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
gg3BMIIFDTCCA/WgAwIBAgIQeEqpED+lv77edQixNJMdADANBgkqhkiG9w0BAQsFADBMMSAwHgYD
VQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UE
AxMKR2xvYmFsU2lnbjAeFw0yMDA5MTYwMDAwMDBaFw0yODA5MTYwMDAwMDBaMFsxCzAJBgNVBAYT
AkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBS
MyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
vbCmXCcsbZ/a0fRIQMBxp4gJnnyeneFYpEtNydrZZ+GeKSMdHiDgXD1UnRSIudKo+moQ6YlCOu4t
rVWO/EiXfYnK7zeop26ry1RpKtogB7/O115zultAz64ydQYLe+a1e/czkALg3sgTcOOcFZTXk38e
aqsXsipoX1vsNurqPtnC27TWsA7pk4uKXscFjkeUE8JZu9BDKaswZygxBOPBQBwrA5+20Wxlk6k1
e6EKaaNaNZUy30q3ArEf30ZDpXyfCtiXnupjSK8WU2cK4qsEtj09JS4+mhi0CTCrCnXAzum3tgcH
cHRg0prcSzzEUDQWoFxyuqwiwhHu3sPQNmFOMwIDAQABo4IB2jCCAdYwDgYDVR0PAQH/BAQDAgGG
MGAGA1UdJQRZMFcGCCsGAQUFBwMCBggrBgEFBQcDBAYKKwYBBAGCNxQCAgYKKwYBBAGCNwoDBAYJ
KwYBBAGCNxUGBgorBgEEAYI3CgMMBggrBgEFBQcDBwYIKwYBBQUHAxEwEgYDVR0TAQH/BAgwBgEB
/wIBADAdBgNVHQ4EFgQUljPR5lgXWzR1ioFWZNW+SN6hj88wHwYDVR0jBBgwFoAUj/BLf6guRSSu
TVD6Y5qL3uLdG7wwegYIKwYBBQUHAQEEbjBsMC0GCCsGAQUFBzABhiFodHRwOi8vb2NzcC5nbG9i
YWxzaWduLmNvbS9yb290cjMwOwYIKwYBBQUHMAKGL2h0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5j
b20vY2FjZXJ0L3Jvb3QtcjMuY3J0MDYGA1UdHwQvMC0wK6ApoCeGJWh0dHA6Ly9jcmwuZ2xvYmFs
c2lnbi5jb20vcm9vdC1yMy5jcmwwWgYDVR0gBFMwUTALBgkrBgEEAaAyASgwQgYKKwYBBAGgMgEo
CjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzAN
BgkqhkiG9w0BAQsFAAOCAQEAdAXk/XCnDeAOd9nNEUvWPxblOQ/5o/q6OIeTYvoEvUUi2qHUOtbf
jBGdTptFsXXe4RgjVF9b6DuizgYfy+cILmvi5hfk3Iq8MAZsgtW+A/otQsJvK2wRatLE61RbzkX8
9/OXEZ1zT7t/q2RiJqzpvV8NChxIj+P7WTtepPm9AIj0Keue+gS2qvzAZAY34ZZeRHgA7g5O4TPJ
/oTd+4rgiU++wLDlcZYd/slFkaT3xg4qWDepEMjT4T1qFOQIL+ijUArYS4owpPg9NISTKa1qqKWJ
jFoyms0d0GwOniIIbBvhI2MJ7BSY9MYtWVT5jJO3tsVHwj4cp92CSFuGwunFMzCCA18wggJHoAMC
AQICCwQAAAAAASFYUwiiMA0GCSqGSIb3DQEBCwUAMEwxIDAeBgNVBAsTF0dsb2JhbFNpZ24gUm9v
dCBDQSAtIFIzMRMwEQYDVQQKEwpHbG9iYWxTaWduMRMwEQYDVQQDEwpHbG9iYWxTaWduMB4XDTA5
MDMxODEwMDAwMFoXDTI5MDMxODEwMDAwMFowTDEgMB4GA1UECxMXR2xvYmFsU2lnbiBSb290IENB
IC0gUjMxEzARBgNVBAoTCkdsb2JhbFNpZ24xEzARBgNVBAMTCkdsb2JhbFNpZ24wggEiMA0GCSqG
SIb3DQEBAQUAA4IBDwAwggEKAoIBAQDMJXaQeQZ4Ihb1wIO2hMoonv0FdhHFrYhy/EYCQ8eyip0E
XyTLLkvhYIJG4VKrDIFHcGzdZNHr9SyjD4I9DCuul9e2FIYQebs7E4B3jAjhSdJqYi8fXvqWaN+J
J5U4nwbXPsnLJlkNc96wyOkmDoMVxu9bi9IEYMpJpij2aTv2y8gokeWdimFXN6x0FNx04Druci8u
nPvQu7/1PQDhBjPogiuuU6Y6FnOM3UEOIDrAtKeh6bJPkC4yYOlXy7kEkmho5TgmYHWyn3f/kRTv
riBJ/K1AFUjRAjFhGV64l++td7dkmnq/X8ET75ti+w1s4FRpFqkD2m7pg5NxdsZphYIXAgMBAAGj
QjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBSP8Et/qC5FJK5N
UPpjmove4t0bvDANBgkqhkiG9w0BAQsFAAOCAQEAS0DbwFCq/sgM7/eWVEVJu5YACUGssxOGhigH
M8pr5nS5ugAtrqQK0/Xx8Q+Kv3NnSoPHRHt44K9ubG8DKY4zOUXDjuS5V2yq/BKW7FPGLeQkbLmU
Y/vcU2hnVj6DuM81IcPJaP7O2sJTqsyQiunwXUaMld16WCgaLx3ezQA3QY/tRG3XUyiXfvNnBB4V
14qWtNPeTCekTBtzc3b0F5nCH3oO4y0IrQocLP88q1UOD5F+NuvDV0m+4S4tfGCLw0FREyOdzvcy
a5QBqJnnLDMfOjsl0oZAzjsshnjJYS8Uuu7bVW/fhO4FCU29KNhyztNiUGUe65KXgzHZs7XKR1g/
XzCCBUkwggQxoAMCAQICDBhL7k9eiTHfluW70TANBgkqhkiG9w0BAQsFADBbMQswCQYDVQQGEwJC
RTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBHQ0MgUjMg
UGVyc29uYWxTaWduIDIgQ0EgMjAyMDAeFw0yMTAyMjIwNDQyMDRaFw0yMjA5MDEwODA5NDlaMIGM
MQswCQYDVQQGEwJJTjESMBAGA1UECBMJS2FybmF0YWthMRIwEAYDVQQHEwlCYW5nYWxvcmUxFjAU
BgNVBAoTDUJyb2FkY29tIEluYy4xFDASBgNVBAMTC0JvYiBNY01haG9uMScwJQYJKoZIhvcNAQkB
Fhhib2IubWNtYWhvbkBicm9hZGNvbS5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
AQDyY95HWFm48WhKUyFbAS9JxiDqBHBdAbgjx4iF46lkqZdVkIJ8pGfcXoGd10Vp9yL5VQevDAt/
A/Jh22uhSgKR9Almeux9xWGhG8cyZwcCwYrsMt84FqCgEQidT+7YGNdd9oKrjU7mFC7pAnnw+cGI
d3NFryurgnNPwfEK0X7HwRsga5pM+Zelr/ZM8MkphE1hCvTuPGakNylOFhP+wKL8Bmhsq5tNIInw
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIKvwUOreiJty5ZR/Qatb7JNaoQlbnQDmOh6N
hbEQIHULMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDcxNDE4
MzgxMFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQCg2bXo0577PxhVEtlhI6wpd7mQ4gYx7eyv/3EvG1J17iaERPpv6KCV
4/pSRhmDyhGDRBw2J1G1OEtUbrL6G3dWnqV03qxcjCNJvKGD95HWiNRhmuEoCG6Ywy1VYmeqYTDG
mLvqGf2y8BvEEb33cdZpKQmsKuFsKDILi9W+Pe8dlNCTCrUAw+2UklgQPy+U8lGxQApi5HfTdxKR
QUy9oTJOlwrPd1uvNH/2wHwFOH5njWNC/RIu8CAMQgpfMRB2xrI+BrqI80oxfuKqPYS76OTb1IH6
iMtZzEAhG7Gt3LsF+vvhor/oZmMWYWl40kHM/Gz1TCcvLL0Tp4ETU0kiY2AG
--00000000000001d9bf05c719a83b--

--===============8847067626132273601==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8847067626132273601==--

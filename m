Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BEF3D2799
	for <lists+cake@lfdr.de>; Thu, 22 Jul 2021 18:31:15 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3B5663CB50;
	Thu, 22 Jul 2021 12:31:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1626971463;
	bh=8zvViqzGDu9DDP/hlRfj3JB5xz5I6fZTWTE+6Ee5rqQ=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=eJDEiuoWlzti/y2+n/aIQhMCiqxE5c1c936kHr61bkq60qGLC/jNNp8mhObYFvNMq
	 z2QTFIscptZAWWrN/SUEjW56SpkVT65pfotXYUPe9woY0TGU4Baf8O+wPLJA0eyuV0
	 dWedzbGw2GXKQlu5hqgmQ2aFW0k3G1sYe5857ISCsPMclaRihfq41xJBTvoq7SaKJP
	 APlQ9YJPbbS3iyucJH81t3xmT+VzLsIw4mVw3e+deswkUQNxOkY1ce2YoaMKKUE1t2
	 D9/2HEzT97uQ7/LrUt9NUZhQajJW0USJDaAU4hmgh4eIKiA7q42vA+99Wt8P9o3m0O
	 asu9QleV/ug3A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E6E4C3CB45
 for <cake@lists.bufferbloat.net>; Thu, 22 Jul 2021 12:31:00 -0400 (EDT)
Received: by mail-ed1-x52f.google.com with SMTP id k27so7521437edk.9
 for <cake@lists.bufferbloat.net>; Thu, 22 Jul 2021 09:31:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5Gtfm1q92MxTkOxOBwaaKZNAkzJdqRYcdnIAIKUxopA=;
 b=Kr8S7C5iHdbNx/PqsD3BPi9VwBN0FWnCcrtqZbtKXQezkDo3iKlWzv+REUN6nPMiM9
 Ml52y0tXNa4A2FSxGlvj+s33iwJkjHJuAPqg3aeFBmkkt/KUL9j9ds2F7NBenEDg2CbI
 z0JK1bvKkx0X2aA32u1SINbeIDmJ7EMvgQ7aM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5Gtfm1q92MxTkOxOBwaaKZNAkzJdqRYcdnIAIKUxopA=;
 b=I4IEYgJeQGgHO78KIQsM/HUqPkr6L3yLh4mnLQoScMycvtQZzjf2lWBCew9ubUTYgB
 9vAY/BHf7LUuqT74h7wrcUpxJT9TKPUPfjpLSO31HXHJTHVjfzBh4/wa4xPLPMBDjM/+
 WbuyDEZHy+JhOcA2lQKCNkf2Zf9C+AJtJzmLG/9cM37lvNAg3AoJEdrI1NGcjSS4506f
 KE7+ybvIJoRjU7bg+ke5/V5I1g97zcK8/cfN2yoZrEnStLYnb35zRY7cUZmCMl1Futp6
 iGoyiM6jyRYI6zxNBJvKMTcifSA1OuhJLCqhU7OC4N6I2aAI8Ti2ZyIq+EN8ZorRBuK1
 MxJw==
X-Gm-Message-State: AOAM533FduxPWZVi0YzwTxCFweVs4rFzE79e+CPFyzHCC0ieVIRHj0+u
 JdUrwJ2wT8kciOtn8+Mmu8SbIXGc2un1nHev+pHoC3Z8GfAVWsJQvpPoXfISZULIxrktsan8pSg
 klpLm+dCHAhLUWJuTTaUbSyswXYux
X-Google-Smtp-Source: ABdhPJwR9LwNDrtRZi7f1KS8QlHcHIfPfmH/T+CwyULys5DkLgRqZP7azmdJkIPTJKub74ErkA3xxTpjDlbwuud3Rh0=
X-Received: by 2002:aa7:c545:: with SMTP id s5mr571357edr.182.1626971459378;
 Thu, 22 Jul 2021 09:30:59 -0700 (PDT)
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
 <A5E35F34-A4D5-45B1-8E2D-E2F6DE988A1E@cs.ucla.edu>
In-Reply-To: <A5E35F34-A4D5-45B1-8E2D-E2F6DE988A1E@cs.ucla.edu>
Date: Thu, 22 Jul 2021 09:30:47 -0700
Message-ID: <CAHb6Lvp83m8xOjm0ErpmmeAXcpJOKx_RKS50NSLVcvAhDz+V8Q@mail.gmail.com>
To: Leonard Kleinrock <lk@cs.ucla.edu>
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
 starlink@lists.bufferbloat.net, codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Amr Rizk <amr@rizk.com.de>,
 Ben Greear <greearb@candelatech.com>, Dave Taht <davet@teklibre.net>
Content-Type: multipart/mixed; boundary="===============1676577130499088533=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1676577130499088533==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000ebc27f05c7b8cf78"

--000000000000ebc27f05c7b8cf78
Content-Type: multipart/alternative; boundary="000000000000e5b76e05c7b8cfff"

--000000000000e5b76e05c7b8cfff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for this. I plan to purchase the second volume to go with my copy of
volume 1. There is (always) more to learn and your expertise is very
helpful.

Bob

PS.  As a side note, I've added support for TCP_NOTSENT_LOWAT in iperf 2.1.=
4
<https://iperf2.sourceforge.io/iperf-manpage.html> and it's proving
interesting per WiFi/BT latency testing including helping to mitigate
sender side bloat.
*--tcp-write-prefetch **n*[kmKM]Set TCP_NOTSENT_LOWAT on the socket and use
event based writes per select() on the socket.I'll probably add measuring
the select() delays to see if that correlates to things like RF
arbitrations, etc.


On Wed, Jul 21, 2021 at 4:20 PM Leonard Kleinrock <lk@cs.ucla.edu> wrote:

> Just a few comments following David Reed's insightful comments re the
> history of the ARPANET and its approach to flow control.  I have attached
> some pages from my Volume II which provide an understanding of how we
> addressed flow control and its implementation in the ARPANET.
>
> The early days of the ARPANET design and evaluation involved detailed
> design of what we did call =E2=80=9CFlow Control=E2=80=9D.  In my "Queuei=
ng Systems, Volume
> II: Computer Applications=E2=80=9D, John Wiley, 1976, I documented much o=
f what we
> designed and evaluated for the ARPANET, and focused on performance,
> deadlocks, lockups and degradations due to flow control design.  Aspects =
of
> congestion control were considered, but this 2-volume book was mostly abo=
ut
> understanding congestion.    Of interest are the many deadlocks that we
> discovered in those early days as we evaluated and measured the network
> behavior.  Flow control was designed into that early network, but it had =
a
> certain ad-hoc flavor and I point out the danger of requiring flows to
> depend upon the acquisition of multiple tokens that were allocated from
> different portions of the network at the same time in a distributed
> fashion.  The attached relevant sections of the book address these issues=
;
>  I thought it would be of value to see what we were looking at back then.
>
> On a related topic regarding flow and congestion control (as triggered by
> David=E2=80=99s comment* "**at most one packet waiting for each egress li=
nk in
> the bottleneck path.=E2=80=9D*), in 1978, I published a paper
> <https://www.lk.cs.ucla.edu/data/files/Kleinrock/On%20Flow%20Control%20in=
%20Computer%20Networks.pdf> in
> which I extended the notion of Power (the ratio of throughput to response
> time) that had been introduced by Giessler, et a
> <https://www.sciencedirect.com/science/article/abs/pii/0376507578900284>l
> and I pointed out the amazing properties that emerged when Power is
> optimized, e.g., that one should keep each hop in the pipe =E2=80=9Cjust =
full=E2=80=9D,
> i.e., one message per hop.  As it turns out, and as has been discussed in
> this email chain, Jaffe
> <https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=3D&arnumber=3D1095152> sh=
owed
> in 1981 that this optimization was not decentralizable and so no one
> pursued this optimal operating point (notwithstanding the fact that I
> published other papers on this issue, for example in 1979
> <https://www.lk.cs.ucla.edu/data/files/Kleinrock/Power%20and%20Determinis=
tic%20Rules%20of%20Thumb%20for%20Probabilistic.pdf> and
> in 1981 <https://www.lk.cs.ucla.edu/data/files/Gail/power.pdf>).  So this
> issue of Power lay dormant for decades until Van Jacobsen, et al,
> resurrected the idea with their BBR flow control design in 2016
> <https://queue.acm.org/detail.cfm?id=3D3022184> when they showed that
> indeed one could decentralize power.  Considerable research has since
> followed their paper including another by me in 2018
> <https://www.lk.cs.ucla.edu/data/files/Kleinrock/Internet%20congestion%20=
control%20using%20the%20power%20metric%20LK%20Mod%20aug%202%202018.pdf>.
> (This was not the first time that a publication challenging the merits of=
 a
> new idea negatively impacted that idea for decades - for example, the 198=
8
> book =E2=80=9CPerceptrons=E2=80=9D
> <https://www.amazon.com/Perceptrons-Introduction-Computational-Geometry-E=
xpanded/dp/0262631113/ref=3Dsr_1_2?dchild=3D1&keywords=3Dperceptrons&qid=3D=
1626846378&sr=3D8-2> by
> Minsky and Papert discouraged research into neural networks for many year=
s
> until that idea was proven to have merit.)  But the story is not over as
> much  work has yet to be done to develop the algorithms that can properly
> deal with congestion in the sense that this email chain continues to
> discuss it.
>
> Best,
> Len
>
>
>
>
>
>
>
> On Jul 13, 2021, at 10:49 AM, David P. Reed <dpreed@deepplum.com> wrote:
>
> Bob -
>
> On Tuesday, July 13, 2021 1:07pm, "Bob McMahon" <bob.mcmahon@broadcom.com=
>
> said:
>
> "Control at endpoints benefits greatly from even small amounts of
> information supplied by the network about the degree of congestion presen=
t
> on the path."
>
> Agreed. The ECN mechanism seems like a shared thermostat in a building.
> It's basically an on/off where everyone is trying to set the temperature.
> It does affect, in a non-linear manner, but still an effect. Better than =
a
> thermostat set at infinity or 0 Kelvin for sure.
>
> I find the assumption that congestion occurs "in network" as not always
> true. Taking OWD measurements with read side rate limiting suggests that
> equally important to mitigating bufferbloat driven latency using congesti=
on
> signals is to make sure apps read "fast enough" whatever that means. I
> rarely hear about how important it is for apps to prioritize reads over
> open sockets. Not sure why that's overlooked and bufferbloat gets all the
> attention. I'm probably missing something.
>
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
>
> Bob
>
> On Tue, Jul 13, 2021 at 12:15 AM Amr Rizk <amr@rizk.com.de> wrote:
>
> Ben,
>
> it depends on what one tries to measure. Doing a rate scan using UDP (to
> measure latency distributions under load) is the best thing that we have
> but without actually knowing how resources are shared (fair share as in
> WiFi, FIFO as nearly everywhere else) it becomes very difficult to
> interpret the results or provide a proper argument on latency. You are
> right - TCP stats are a proxy for user experience but I believe they are
> difficult to reproduce (we are always talking about very short TCP flows =
-
> the infinite TCP flow that converges to a steady behavior is purely
> academic).
>
> By the way, Little's law is a strong tool when it comes to averages. To b=
e
> able to say more (e.g. 1% of the delays is larger than x) one requires mo=
re
> information (e.g. the traffic - On-OFF pattern) see [1].  I am not sure
> when does such information readily exist.
>
> Best
> Amr
>
> [1] https://dl.acm.org/doi/10.1145/3341617.3326146 or if behind a paywall
> https://www.dcs.warwick.ac.uk/~florin/lib/sigmet19b.pdf
>
> --------------------------------
> Amr Rizk (amr.rizk@uni-due.de)
> University of Duisburg-Essen
>
> -----Urspr=C3=BCngliche Nachricht-----
> Von: Bloat <bloat-bounces@lists.bufferbloat.net> Im Auftrag von Ben Greea=
r
> Gesendet: Montag, 12. Juli 2021 22:32
> An: Bob McMahon <bob.mcmahon@broadcom.com>
> Cc: starlink@lists.bufferbloat.net; Make-Wifi-fast <
> make-wifi-fast@lists.bufferbloat.net>; Leonard Kleinrock <lk@cs.ucla.edu>=
;
> David P. Reed <dpreed@deepplum.com>; Cake List <cake@lists.bufferbloat.ne=
t
> >;
> codel@lists.bufferbloat.net; cerowrt-devel <
> cerowrt-devel@lists.bufferbloat.net>; bloat <bloat@lists.bufferbloat.net>
> Betreff: Re: [Bloat] Little's Law mea culpa, but not invalidating my main
> point
>
> UDP is better for getting actual packet latency, for sure.  TCP is
> typical-user-experience-latency though, so it is also useful.
>
> I'm interested in the test and visualization side of this.  If there were
> a way to give engineers a good real-time look at a complex real-world
> network, then they have something to go on while trying to tune various
> knobs in their network to improve it.
>
> I'll let others try to figure out how build and tune the knobs, but the
> data acquisition and visualization is something we might try to
> accomplish.  I have a feeling I'm not the first person to think of this,
> however....probably someone already has done such a thing.
>
> Thanks,
> Ben
>
> On 7/12/21 1:04 PM, Bob McMahon wrote:
>
> I believe end host's TCP stats are insufficient as seen per the
> "failed" congested control mechanisms over the last decades. I think
> Jaffe pointed this out in
> 1979 though he was using what's been deemed on this thread as "spherical
>
> cow queueing theory."
>
>
> "Flow control in store-and-forward computer networks is appropriate
> for decentralized execution. A formal description of a class of
> "decentralized flow control algorithms" is given. The feasibility of
> maximizing power with such algorithms is investigated. On the
> assumption that communication links behave like M/M/1 servers it is
>
> shown that no "decentralized flow control algorithm" can maximize network
> power. Power has been suggested in the literature as a network performanc=
e
> objective. It is also shown that no objective based only on the users'
> throughputs and average delay is decentralizable. Finally, a restricted
> class of algorithms cannot even approximate power."
>
>
> https://ieeexplore.ieee.org/document/1095152
>
> Did Jaffe make a mistake?
>
> Also, it's been observed that latency is non-parametric in it's
> distributions and computing gaussians per the central limit theorem
> for OWD feedback loops aren't effective. How does one design a control
>
> loop around things that are non-parametric? It also begs the question, wh=
at
> are the feed forward knobs that can actually help?
>
>
> Bob
>
> On Mon, Jul 12, 2021 at 12:07 PM Ben Greear <greearb@candelatech.com
>
> <mailto:greearb@candelatech.com>> wrote:
>
>
>    Measuring one or a few links provides a bit of data, but seems like
>
> if someone is trying to understand
>
>    a large and real network, then the OWD between point A and B needs
>
> to just be input into something much
>
>    more grand.  Assuming real-time OWD data exists between 100 to 1000
>
> endpoint pairs, has anyone found a way
>
>    to visualize this in a useful manner?
>
>    Also, considering something better than ntp may not really scale to
>
> 1000+ endpoints, maybe round-trip
>
>    time is only viable way to get this type of data.  In that case,
>
> maybe clever logic could use things
>
>    like trace-route to get some idea of how long it takes to get 'onto'
>
> the internet proper, and so estimate
>
>    the last-mile latency.  My assumption is that the last-mile latency
>
> is where most of the pervasive
>
>    assymetric network latencies would exist (or just ping 8.8.8.8 which
>
> is 20ms from everywhere due to
>
>    $magic).
>
>    Endpoints could also triangulate a bit if needed, using some anchor
>
> points in the network
>
>    under test.
>
>    Thanks,
>    Ben
>
>    On 7/12/21 11:21 AM, Bob McMahon wrote:
>
> iperf 2 supports OWD and gives full histograms for TCP write to
>
> read, TCP connect times, latency of packets (with UDP), latency of "frame=
s"
> with
>
> simulated video traffic (TCP and UDP), xfer times of bursts with
>
> low duty cycle traffic, and TCP RTT (sampling based.) It also has support
> for sampling (per
>
> interval reports) down to 100 usecs if configured with
>
> --enable-fastsampling, otherwise the fastest sampling is 5 ms. We've
> released all this as open source.
>
>
> OWD only works if the end realtime clocks are synchronized using
>
> a "machine level" protocol such as IEEE 1588 or PTP. Sadly, *most data
> centers don't
>
>    provide
>
> sufficient level of clock accuracy and the GPS pulse per second *
>
> to colo and vm customers.
>
>
> https://iperf2.sourceforge.io/iperf-manpage.html
>
> Bob
>
> On Mon, Jul 12, 2021 at 10:40 AM David P. Reed <
>
> dpreed@deepplum.com <mailto:dpreed@deepplum.com> <mailto:
> dpreed@deepplum.com
>
>    <mailto:dpreed@deepplum.com>>> wrote:
>
>
>
>    On Monday, July 12, 2021 9:46am, "Livingood, Jason" <
>
> Jason_Livingood@comcast.com <mailto:Jason_Livingood@comcast.com>
>
>    <mailto:Jason_Livingood@comcast.com <mailto:
>
> Jason_Livingood@comcast.com>>> said:
>
>
> I think latency/delay is becoming seen to be as important
>
> certainly, if not a more direct proxy for end user QoE. This is all still
> evolving and I
>
>    have
>
>    to say is a super interesting & fun thing to work on. :-)
>
>    If I could manage to sell one idea to the management
>
> hierarchy of communications industry CEOs (operators, vendors, ...) it is
> this one:
>
>
>    "It's the end-to-end latency, stupid!"
>
>    And I mean, by end-to-end, latency to complete a task at a
>
> relevant layer of abstraction.
>
>
>    At the link level, it's packet send to packet receive
>
> completion.
>
>
>    But at the transport level including retransmission buffers,
>
> it's datagram (or message) origination until the acknowledgement arrives
> for that
>
>    message being
>
>    delivered after whatever number of retransmissions, freeing
>
> the retransmission buffer.
>
>
>    At the WWW level, it's mouse click to display update
>
> corresponding to completion of the request.
>
>
>    What should be noted is that lower level latencies don't
>
> directly predict the magnitude of higher-level latencies. But longer lowe=
r
> level latencies
>
>    almost
>
>    always amplfify higher level latencies. Often non-linearly.
>
>    Throughput is very, very weakly related to these latencies,
>
> in contrast.
>
>
>    The amplification process has to do with the presence of
>
> queueing. Queueing is ALWAYS bad for latency, and throughput only helps i=
f
> it is in exactly the
>
>    right place (the so-called input queue of the bottleneck
>
> process, which is often a link, but not always).
>
>
>    Can we get that slogan into Harvard Business Review? Can we
>
> get it taught in Managerial Accounting at HBS? (which does address
> logistics/supply chain
>
>    queueing).
>
>
>
>
>
>
>
>
> This electronic communication and the information and any files
>
> transmitted with it, or attached to it, are confidential and are intended
> solely for the
>
>    use of
>
> the individual or entity to whom it is addressed and may contain
>
> information that is confidential, legally privileged, protected by privac=
y
> laws, or
>
>    otherwise
>
> restricted from disclosure to anyone else. If you are not the
>
> intended recipient or the person responsible for delivering the e-mail to
> the intended
>
>    recipient,
>
> you are hereby notified that any use, copying, distributing,
>
> dissemination, forwarding, printing, or copying of this e-mail is strictl=
y
> prohibited. If you
>
> received this e-mail in error, please return the e-mail to the
>
> sender, delete it from your computer, and destroy any printed copy of it.
>
>
>
>    --
>    Ben Greear <greearb@candelatech.com <mailto:greearb@candelatech.com
>
>
>    Candela Technologies Inc http://www.candelatech.com
>
>
> This electronic communication and the information and any files
> transmitted with it, or attached to it, are confidential and are
> intended solely for the use of the individual or entity to whom it is
> addressed and may contain information that is confidential, legally
> privileged, protected by privacy laws, or otherwise restricted from
>
> disclosure to anyone else. If you are not the intended recipient or the
> person responsible for delivering the e-mail to the intended recipient, y=
ou
> are hereby notified that any use, copying, distributing, dissemination,
> forwarding, printing, or copying of this e-mail is strictly prohibited. I=
f
> you received this e-mail in error, please return the e-mail to the sender=
,
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
>
>
> --
> This electronic communication and the information and any files transmitt=
ed
> with it, or attached to it, are confidential and are intended solely for
> the use of the individual or entity to whom it is addressed and may conta=
in
> information that is confidential, legally privileged, protected by privac=
y
> laws, or otherwise restricted from disclosure to anyone else. If you are
> not the intended recipient or the person responsible for delivering the
> e-mail to the intended recipient, you are hereby notified that any use,
> copying, distributing, dissemination, forwarding, printing, or copying of
> this e-mail is strictly prohibited. If you received this e-mail in error,
> please return the e-mail to the sender, delete it from your computer, and
> destroy any printed copy of it.
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

--000000000000e5b76e05c7b8cfff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for this. I plan to purchase the second volume to g=
o with my copy of volume 1. There is (always) more to learn and your expert=
ise is very helpful.<br><br>Bob<br><br>PS.=C2=A0 As a side note, I&#39;ve a=
dded support for <a href=3D"https://iperf2.sourceforge.io/iperf-manpage.htm=
l" target=3D"_blank">TCP_NOTSENT_LOWAT in iperf 2.1.4</a> and it&#39;s prov=
ing interesting per WiFi/BT latency testing including helping to mitigate s=
ender side bloat.=C2=A0<br><dl><dt style=3D"color:rgb(0,0,0);font-family:Ti=
mes;font-size:medium"><b>--tcp-write-prefetch=C2=A0</b><i>n</i>[kmKM]</dt><=
dd style=3D"color:rgb(0,0,0);font-family:Times;font-size:medium">Set TCP_NO=
TSENT_LOWAT on the socket and use event based writes per select() on the so=
cket.</dd></dl>I&#39;ll probably add measuring the select() delays to see i=
f that correlates to things like RF arbitrations, etc.<br><br></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 2=
1, 2021 at 4:20 PM Leonard Kleinrock &lt;<a href=3D"mailto:lk@cs.ucla.edu" =
target=3D"_blank">lk@cs.ucla.edu</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div><div dir=3D"auto"><div dir=3D"auto"><=
div dir=3D"auto">Just a few comments following David Reed&#39;s insightful =
comments re the history of the ARPANET and its approach to flow control.=C2=
=A0 I have attached some pages from my Volume II which provide an understan=
ding of how we addressed flow control and its implementation in the ARPANET=
.</div><div dir=3D"auto"><br></div><div dir=3D"auto">The early days of the =
ARPANET design and evaluation involved detailed design of what we did call =
=E2=80=9CFlow Control=E2=80=9D.=C2=A0 In my &quot;Queueing Systems, Volume =
II: Computer Applications=E2=80=9D, John Wiley, 1976, I documented much of =
what we designed and evaluated for the ARPANET, and focused on performance,=
 deadlocks, lockups and degradations due to flow control design.=C2=A0 Aspe=
cts of congestion control were considered, but this 2-volume book was mostl=
y about understanding congestion. =C2=A0 =C2=A0Of interest are the many dea=
dlocks that we discovered in those early days as we evaluated and measured =
the network behavior.=C2=A0 Flow control was designed into that early netwo=
rk, but it had a certain ad-hoc flavor and I point out the danger of requir=
ing flows to depend upon the acquisition of multiple tokens that were alloc=
ated from different portions of the network at the same time in a distribut=
ed fashion.=C2=A0 The attached relevant sections of the book address these =
issues; =C2=A0I thought it would be of value to see what we were looking at=
 back then. =C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">On a =
related topic regarding flow and congestion control (<span style=3D"font-st=
yle:normal">as triggered by David=E2=80=99s comment</span><i> &quot;</i><fo=
nt face=3D"ArialMT"><i>at most one packet waiting for each egress link in t=
he bottleneck path.=E2=80=9D</i>)</font>, in 1978, I published a=C2=A0<a hr=
ef=3D"https://www.lk.cs.ucla.edu/data/files/Kleinrock/On%20Flow%20Control%2=
0in%20Computer%20Networks.pdf" target=3D"_blank">paper</a>=C2=A0in which I =
extended the notion of Power (the ratio of throughput to response time) tha=
t had been introduced by=C2=A0<a href=3D"https://www.sciencedirect.com/scie=
nce/article/abs/pii/0376507578900284" target=3D"_blank">Giessler, et a</a>l=
=C2=A0 and I pointed out the amazing properties that emerged when Power is =
optimized, e.g., that one should keep each hop in the pipe =E2=80=9Cjust fu=
ll=E2=80=9D, i.e., one message per hop.=C2=A0 As it turns out, and as has b=
een discussed in this email chain,=C2=A0<a href=3D"https://ieeexplore.ieee.=
org/stamp/stamp.jsp?tp=3D&amp;arnumber=3D1095152" target=3D"_blank">Jaffe</=
a>=C2=A0showed in 1981 that this optimization was not decentralizable and s=
o no one pursued this optimal operating point (notwithstanding the fact tha=
t I published other papers on this issue, for example in=C2=A0<a href=3D"ht=
tps://www.lk.cs.ucla.edu/data/files/Kleinrock/Power%20and%20Deterministic%2=
0Rules%20of%20Thumb%20for%20Probabilistic.pdf" target=3D"_blank">1979</a>=
=C2=A0and in=C2=A0<a href=3D"https://www.lk.cs.ucla.edu/data/files/Gail/pow=
er.pdf" target=3D"_blank">1981</a>).=C2=A0 So this issue of Power lay dorma=
nt for decades until Van Jacobsen, et al, resurrected the idea with their B=
BR flow control design in=C2=A0<a href=3D"https://queue.acm.org/detail.cfm?=
id=3D3022184" target=3D"_blank">2016</a>=C2=A0when they showed that indeed =
one could decentralize power.=C2=A0 Considerable research has since followe=
d their paper including another by me in=C2=A0<a href=3D"https://www.lk.cs.=
ucla.edu/data/files/Kleinrock/Internet%20congestion%20control%20using%20the=
%20power%20metric%20LK%20Mod%20aug%202%202018.pdf" target=3D"_blank">2018</=
a>. (This was not the first time that a publication challenging the merits =
of a new idea negatively impacted that idea for decades - for example, the =
1988 book=C2=A0<a href=3D"https://www.amazon.com/Perceptrons-Introduction-C=
omputational-Geometry-Expanded/dp/0262631113/ref=3Dsr_1_2?dchild=3D1&amp;ke=
ywords=3Dperceptrons&amp;qid=3D1626846378&amp;sr=3D8-2" target=3D"_blank">=
=E2=80=9CPerceptrons=E2=80=9D</a>=C2=A0by Minsky and Papert discouraged res=
earch into neural networks for many years until that idea was proven to hav=
e merit.) =C2=A0But the story is not over as much =C2=A0work has yet to be =
done to develop the algorithms that can properly deal with congestion in th=
e sense that this email chain continues to discuss it.=C2=A0</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Best,</div><div dir=3D"auto">Len</div=
><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto">=
<br></div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=
=3D"auto"><br></div><div dir=3D"auto"><div><div><br><blockquote type=3D"cit=
e"><div>On Jul 13, 2021, at 10:49 AM, David P. Reed &lt;<a href=3D"mailto:d=
preed@deepplum.com" target=3D"_blank">dpreed@deepplum.com</a>&gt; wrote:</d=
iv><br><div><span style=3D"font-family:ArialMT;font-size:16px;font-style:no=
rmal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text=
-align:start;text-indent:0px;text-transform:none;white-space:normal;word-sp=
acing:0px;text-decoration:none;float:none;display:inline">Bob -</span><br s=
tyle=3D"font-family:ArialMT;font-size:16px;font-style:normal;font-variant-c=
aps:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-deco=
ration:none"><br style=3D"font-family:ArialMT;font-size:16px;font-style:nor=
mal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;white-space:normal;word-spa=
cing:0px;text-decoration:none"><span style=3D"font-family:ArialMT;font-size=
:16px;font-style:normal;font-variant-caps:normal;font-weight:normal;letter-=
spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px;text-decoration:none;float:none;display:inline=
">On Tuesday, July 13, 2021 1:07pm, &quot;Bob McMahon&quot; &lt;</span><a h=
ref=3D"mailto:bob.mcmahon@broadcom.com" style=3D"font-family:ArialMT;font-s=
ize:16px;font-style:normal;font-variant-caps:normal;font-weight:normal;lett=
er-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whit=
e-space:normal;word-spacing:0px" target=3D"_blank">bob.mcmahon@broadcom.com=
</a><span style=3D"font-family:ArialMT;font-size:16px;font-style:normal;fon=
t-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x;text-decoration:none;float:none;display:inline">&gt; said:</span><br styl=
e=3D"font-family:ArialMT;font-size:16px;font-style:normal;font-variant-caps=
:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-inde=
nt:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decorat=
ion:none"><br style=3D"font-family:ArialMT;font-size:16px;font-style:normal=
;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;text-decoration:none"><blockquote type=3D"cite" style=3D"font-family:=
ArialMT;font-size:16px;font-style:normal;font-variant-caps:normal;font-weig=
ht:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;text-decoration:none">&quot;C=
ontrol at endpoints benefits greatly from even small amounts of<br>informat=
ion supplied by the network about the degree of congestion present<br>on th=
e path.&quot;<br><br>Agreed. The ECN mechanism seems like a shared thermost=
at in a building.<br>It&#39;s basically an on/off where everyone is trying =
to set the temperature.<br>It does affect, in a non-linear manner, but stil=
l an effect. Better than a<br>thermostat set at infinity or 0 Kelvin for su=
re.<br><br>I find the assumption that congestion occurs &quot;in network&qu=
ot; as not always<br>true. Taking OWD measurements with read side rate limi=
ting suggests that<br>equally important to mitigating bufferbloat driven la=
tency using congestion<br>signals is to make sure apps read &quot;fast enou=
gh&quot; whatever that means. I<br>rarely hear about how important it is fo=
r apps to prioritize reads over<br>open sockets. Not sure why that&#39;s ov=
erlooked and bufferbloat gets all the<br>attention. I&#39;m probably missin=
g something.<br></blockquote><br style=3D"font-family:ArialMT;font-size:16p=
x;font-style:normal;font-variant-caps:normal;font-weight:normal;letter-spac=
ing:normal;text-align:start;text-indent:0px;text-transform:none;white-space=
:normal;word-spacing:0px;text-decoration:none"><span style=3D"font-family:A=
rialMT;font-size:16px;font-style:normal;font-variant-caps:normal;font-weigh=
t:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;white-space:normal;word-spacing:0px;text-decoration:none;float:non=
e;display:inline">In the early days of the Internet protocol and also even =
ARPANET Host-Host protocol there were those who conflated host-level &quot;=
flow control&quot; (matching production rate of data into the network to th=
e destination *process* consumption rate of data on a virtual circuit with =
a source capable of variable and unbounded bit rate) with &quot;congestion =
control&quot; in the network. The term &quot;congestion control&quot; wasn&=
#39;t even used in the Internetworking project when it was discussing desig=
n in the late 1970&#39;s. I tried to use it in our working group meetings, =
and every time I said &quot;congestion&quot; the response would be phrased =
as &quot;flow&quot;.</span><br style=3D"font-family:ArialMT;font-size:16px;=
font-style:normal;font-variant-caps:normal;font-weight:normal;letter-spacin=
g:normal;text-align:start;text-indent:0px;text-transform:none;white-space:n=
ormal;word-spacing:0px;text-decoration:none"><br style=3D"font-family:Arial=
MT;font-size:16px;font-style:normal;font-variant-caps:normal;font-weight:no=
rmal;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:=
none;white-space:normal;word-spacing:0px;text-decoration:none"><span style=
=3D"font-family:ArialMT;font-size:16px;font-style:normal;font-variant-caps:=
normal;font-weight:normal;letter-spacing:normal;text-align:start;text-inden=
t:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decorati=
on:none;float:none;display:inline">The classic example was printing a file&=
#39;s contents from disk to an ASR33 terminal on an TIP (Terminal IMP). The=
re was flow control in the end-to-end protocol to avoid overflowing the TTY=
&#39;s limited buffer. But those who grew up with ARPANET knew that thare w=
as no way to accumulate queueing in the IMP network, because of RFNM&#39;s =
that required permission for each new packet to be sent. RFNM&#39;s implici=
tly prevented congestion from being caused by a virtual circuit. But a flow=
 control problem remained, because at the higher level protocol, buffering =
would overflow at the TIP.</span><br style=3D"font-family:ArialMT;font-size=
:16px;font-style:normal;font-variant-caps:normal;font-weight:normal;letter-=
spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px;text-decoration:none"><br style=3D"font-family=
:ArialMT;font-size:16px;font-style:normal;font-variant-caps:normal;font-wei=
ght:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;text-decoration:none"><span =
style=3D"font-family:ArialMT;font-size:16px;font-style:normal;font-variant-=
caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-dec=
oration:none;float:none;display:inline">TCP adopted a different end-to-end =
*flow* control, so it solved the flow control problem by creating a Windowi=
ng mechanism. But it did not by itself solve the *congestion* control probl=
em, even congestion built up inside the network by a wide-open window and a=
 lazy operating system at the receiving end that just said, I&#39;ve got a =
lot of virtual memory so I&#39;ll open the window to maximum size.</span><b=
r style=3D"font-family:ArialMT;font-size:16px;font-style:normal;font-varian=
t-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;tex=
t-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none"><br style=3D"font-family:ArialMT;font-size:16px;font-style:=
normal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;text-decoration:none"><span style=3D"font-family:ArialMT;font-s=
ize:16px;font-style:normal;font-variant-caps:normal;font-weight:normal;lett=
er-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whit=
e-space:normal;word-spacing:0px;text-decoration:none;float:none;display:inl=
ine">There was a lot of confusion, because the guys who came from the ARPAN=
ET environment, with all links being the same speed and RFNM limits on rate=
, couldn&#39;t see why the Internet stack was so collapse-prone. I think Mu=
ltics, for example, as a giant virtual memory system caused congestion by o=
pening up its window too much.</span><br style=3D"font-family:ArialMT;font-=
size:16px;font-style:normal;font-variant-caps:normal;font-weight:normal;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;text-decoration:none"><br style=3D"font-fa=
mily:ArialMT;font-size:16px;font-style:normal;font-variant-caps:normal;font=
-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;text-decoration:none"><s=
pan style=3D"font-family:ArialMT;font-size:16px;font-style:normal;font-vari=
ant-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text=
-decoration:none;float:none;display:inline">This is where Van Jacobson disc=
overed that dropped packets were a &quot;good enough&quot; congestion signa=
l because of &quot;fate sharing&quot; among the packets that flowed on a bo=
ttleneck path, and that windowing (invented for flow control by the receive=
r to protect itself from overflow if the receiver couldn&#39;t receive fast=
 enough) could be used to slow down the sender to match the rate of senders=
 to the capacity of the internal bottleneck link. An elegant &quot;hack&quo=
t; that actually worked really well in practice.</span><br style=3D"font-fa=
mily:ArialMT;font-size:16px;font-style:normal;font-variant-caps:normal;font=
-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;text-decoration:none"><b=
r style=3D"font-family:ArialMT;font-size:16px;font-style:normal;font-varian=
t-caps:normal;font-weight:normal;letter-spacing:normal;text-align:start;tex=
t-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none"><span style=3D"font-family:ArialMT;font-size:16px;font-styl=
e:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;white-space:normal;wor=
d-spacing:0px;text-decoration:none;float:none;display:inline">Now we view i=
t as a bug if the receiver opens its window too much, or otherwise doesn&#3=
9;t translate dropped packets (or other incipient-congestion signals) to sh=
ut down the source transmission rate as quickly as possible. Fortunately, t=
he proper state of the internet - the one it should seek as its ideal state=
 - is that there is at most one packet waiting for each egress link in the =
bottleneck path. This stable state ensures that the window-reduction or slo=
w-down signal encounters no congestion, with high probability. [Excursions =
from one-packet queue occur, but since only one-packet waiting is sufficien=
t to fill the bottleneck link to capacity, they can&#39;t achieve higher th=
roughput in steady state. In practice, noisy arrival distributions can redu=
ce throughput, so allowing a small number of packets to be waiting on a bot=
tleneck link&#39;s queue can slightly increase throughput. That&#39;s not a=
symptotically relevant, but as mentioned, the Internet is never near asympt=
otic behavior.]</span><br style=3D"font-family:ArialMT;font-size:16px;font-=
style:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;text-decoration:none"><br style=3D"font-family:ArialMT;fo=
nt-size:16px;font-style:normal;font-variant-caps:normal;font-weight:normal;=
letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;=
white-space:normal;word-spacing:0px;text-decoration:none"><br style=3D"font=
-family:ArialMT;font-size:16px;font-style:normal;font-variant-caps:normal;f=
ont-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;text-decoration:none"=
><blockquote type=3D"cite" style=3D"font-family:ArialMT;font-size:16px;font=
-style:normal;font-variant-caps:normal;font-weight:normal;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:norma=
l;word-spacing:0px;text-decoration:none"><br>Bob<br><br>On Tue, Jul 13, 202=
1 at 12:15 AM Amr Rizk &lt;<a href=3D"mailto:amr@rizk.com.de" target=3D"_bl=
ank">amr@rizk.com.de</a>&gt; wrote:<br><br><blockquote type=3D"cite">Ben,<b=
r><br>it depends on what one tries to measure. Doing a rate scan using UDP =
(to<br>measure latency distributions under load) is the best thing that we =
have<br>but without actually knowing how resources are shared (fair share a=
s in<br>WiFi, FIFO as nearly everywhere else) it becomes very difficult to<=
br>interpret the results or provide a proper argument on latency. You are<b=
r>right - TCP stats are a proxy for user experience but I believe they are<=
br>difficult to reproduce (we are always talking about very short TCP flows=
 -<br>the infinite TCP flow that converges to a steady behavior is purely<b=
r>academic).<br><br>By the way, Little&#39;s law is a strong tool when it c=
omes to averages. To be<br>able to say more (e.g. 1% of the delays is large=
r than x) one requires more<br>information (e.g. the traffic - On-OFF patte=
rn) see [1].=C2=A0 I am not sure<br>when does such information readily exis=
t.<br><br>Best<br>Amr<br><br>[1] <a href=3D"https://dl.acm.org/doi/10.1145/=
3341617.3326146" target=3D"_blank">https://dl.acm.org/doi/10.1145/3341617.3=
326146</a> or if behind a paywall<br><a href=3D"https://www.dcs.warwick.ac.=
uk/~florin/lib/sigmet19b.pdf" target=3D"_blank">https://www.dcs.warwick.ac.=
uk/~florin/lib/sigmet19b.pdf</a><br><br>--------------------------------<br=
>Amr Rizk (<a href=3D"mailto:amr.rizk@uni-due.de" target=3D"_blank">amr.riz=
k@uni-due.de</a>)<br>University of Duisburg-Essen<br><br>-----Urspr=C3=BCng=
liche Nachricht-----<br>Von: Bloat &lt;<a href=3D"mailto:bloat-bounces@list=
s.bufferbloat.net" target=3D"_blank">bloat-bounces@lists.bufferbloat.net</a=
>&gt; Im Auftrag von Ben Greear<br>Gesendet: Montag, 12. Juli 2021 22:32<br=
>An: Bob McMahon &lt;<a href=3D"mailto:bob.mcmahon@broadcom.com" target=3D"=
_blank">bob.mcmahon@broadcom.com</a>&gt;<br>Cc: <a href=3D"mailto:starlink@=
lists.bufferbloat.net" target=3D"_blank">starlink@lists.bufferbloat.net</a>=
; Make-Wifi-fast &lt;<br><a href=3D"mailto:make-wifi-fast@lists.bufferbloat=
.net" target=3D"_blank">make-wifi-fast@lists.bufferbloat.net</a>&gt;; Leona=
rd Kleinrock &lt;<a href=3D"mailto:lk@cs.ucla.edu" target=3D"_blank">lk@cs.=
ucla.edu</a>&gt;;<br>David P. Reed &lt;<a href=3D"mailto:dpreed@deepplum.co=
m" target=3D"_blank">dpreed@deepplum.com</a>&gt;; Cake List &lt;<a href=3D"=
mailto:cake@lists.bufferbloat.net" target=3D"_blank">cake@lists.bufferbloat=
.net</a>&gt;;<br><a href=3D"mailto:codel@lists.bufferbloat.net" target=3D"_=
blank">codel@lists.bufferbloat.net</a>; cerowrt-devel &lt;<br><a href=3D"ma=
ilto:cerowrt-devel@lists.bufferbloat.net" target=3D"_blank">cerowrt-devel@l=
ists.bufferbloat.net</a>&gt;; bloat &lt;<a href=3D"mailto:bloat@lists.buffe=
rbloat.net" target=3D"_blank">bloat@lists.bufferbloat.net</a>&gt;<br>Betref=
f: Re: [Bloat] Little&#39;s Law mea culpa, but not invalidating my main<br>=
point<br><br>UDP is better for getting actual packet latency, for sure.=C2=
=A0 TCP is<br>typical-user-experience-latency though, so it is also useful.=
<br><br>I&#39;m interested in the test and visualization side of this.=C2=
=A0 If there were<br>a way to give engineers a good real-time look at a com=
plex real-world<br>network, then they have something to go on while trying =
to tune various<br>knobs in their network to improve it.<br><br>I&#39;ll le=
t others try to figure out how build and tune the knobs, but the<br>data ac=
quisition and visualization is something we might try to<br>accomplish.=C2=
=A0 I have a feeling I&#39;m not the first person to think of this,<br>howe=
ver....probably someone already has done such a thing.<br><br>Thanks,<br>Be=
n<br><br>On 7/12/21 1:04 PM, Bob McMahon wrote:<br><blockquote type=3D"cite=
">I believe end host&#39;s TCP stats are insufficient as seen per the<br>&q=
uot;failed&quot; congested control mechanisms over the last decades. I thin=
k<br>Jaffe pointed this out in<br>1979 though he was using what&#39;s been =
deemed on this thread as &quot;spherical<br></blockquote>cow queueing theor=
y.&quot;<br><blockquote type=3D"cite"><br>&quot;Flow control in store-and-f=
orward computer networks is appropriate<br>for decentralized execution. A f=
ormal description of a class of<br>&quot;decentralized flow control algorit=
hms&quot; is given. The feasibility of<br>maximizing power with such algori=
thms is investigated. On the<br>assumption that communication links behave =
like M/M/1 servers it is<br></blockquote>shown that no &quot;decentralized =
flow control algorithm&quot; can maximize network<br>power. Power has been =
suggested in the literature as a network performance<br>objective. It is al=
so shown that no objective based only on the users&#39;<br>throughputs and =
average delay is decentralizable. Finally, a restricted<br>class of algorit=
hms cannot even approximate power.&quot;<br><blockquote type=3D"cite"><br><=
a href=3D"https://ieeexplore.ieee.org/document/1095152" target=3D"_blank">h=
ttps://ieeexplore.ieee.org/document/1095152</a><br><br>Did Jaffe make a mis=
take?<br><br>Also, it&#39;s been observed that latency is non-parametric in=
 it&#39;s<br>distributions and computing gaussians per the central limit th=
eorem<br>for OWD feedback loops aren&#39;t effective. How does one design a=
 control<br></blockquote>loop around things that are non-parametric? It als=
o begs the question, what<br>are the feed forward knobs that can actually h=
elp?<br><blockquote type=3D"cite"><br>Bob<br><br>On Mon, Jul 12, 2021 at 12=
:07 PM Ben Greear &lt;<a href=3D"mailto:greearb@candelatech.com" target=3D"=
_blank">greearb@candelatech.com</a><br></blockquote>&lt;mailto:<a href=3D"m=
ailto:greearb@candelatech.com" target=3D"_blank">greearb@candelatech.com</a=
>&gt;&gt; wrote:<br><blockquote type=3D"cite"><br>=C2=A0=C2=A0=C2=A0Measuri=
ng one or a few links provides a bit of data, but seems like<br></blockquot=
e>if someone is trying to understand<br><blockquote type=3D"cite">=C2=A0=C2=
=A0=C2=A0a large and real network, then the OWD between point A and B needs=
<br></blockquote>to just be input into something much<br><blockquote type=
=3D"cite">=C2=A0=C2=A0=C2=A0more grand.=C2=A0 Assuming real-time OWD data e=
xists between 100 to 1000<br></blockquote>endpoint pairs, has anyone found =
a way<br><blockquote type=3D"cite">=C2=A0=C2=A0=C2=A0to visualize this in a=
 useful manner?<br><br>=C2=A0=C2=A0=C2=A0Also, considering something better=
 than ntp may not really scale to<br></blockquote>1000+ endpoints, maybe ro=
und-trip<br><blockquote type=3D"cite">=C2=A0=C2=A0=C2=A0time is only viable=
 way to get this type of data.=C2=A0 In that case,<br></blockquote>maybe cl=
ever logic could use things<br><blockquote type=3D"cite">=C2=A0=C2=A0=C2=A0=
like trace-route to get some idea of how long it takes to get &#39;onto&#39=
;<br></blockquote>the internet proper, and so estimate<br><blockquote type=
=3D"cite">=C2=A0=C2=A0=C2=A0the last-mile latency.=C2=A0 My assumption is t=
hat the last-mile latency<br></blockquote>is where most of the pervasive<br=
><blockquote type=3D"cite">=C2=A0=C2=A0=C2=A0assymetric network latencies w=
ould exist (or just ping 8.8.8.8 which<br></blockquote>is 20ms from everywh=
ere due to<br><blockquote type=3D"cite">=C2=A0=C2=A0=C2=A0$magic).<br><br>=
=C2=A0=C2=A0=C2=A0Endpoints could also triangulate a bit if needed, using s=
ome anchor<br></blockquote>points in the network<br><blockquote type=3D"cit=
e">=C2=A0=C2=A0=C2=A0under test.<br><br>=C2=A0=C2=A0=C2=A0Thanks,<br>=C2=A0=
=C2=A0=C2=A0Ben<br><br>=C2=A0=C2=A0=C2=A0On 7/12/21 11:21 AM, Bob McMahon w=
rote:<br><blockquote type=3D"cite">iperf 2 supports OWD and gives full hist=
ograms for TCP write to<br></blockquote></blockquote>read, TCP connect time=
s, latency of packets (with UDP), latency of &quot;frames&quot;<br>with<br>=
<blockquote type=3D"cite"><blockquote type=3D"cite">simulated video traffic=
 (TCP and UDP), xfer times of bursts with<br></blockquote></blockquote>low =
duty cycle traffic, and TCP RTT (sampling based.) It also has support<br>fo=
r sampling (per<br><blockquote type=3D"cite"><blockquote type=3D"cite">inte=
rval reports) down to 100 usecs if configured with<br></blockquote></blockq=
uote>--enable-fastsampling, otherwise the fastest sampling is 5 ms. We&#39;=
ve<br>released all this as open source.<br><blockquote type=3D"cite"><block=
quote type=3D"cite"><br>OWD only works if the end realtime clocks are synch=
ronized using<br></blockquote></blockquote>a &quot;machine level&quot; prot=
ocol such as IEEE 1588 or PTP. Sadly, *most data<br>centers don&#39;t<br><b=
lockquote type=3D"cite">=C2=A0=C2=A0=C2=A0provide<br><blockquote type=3D"ci=
te">sufficient level of clock accuracy and the GPS pulse per second *<br></=
blockquote></blockquote>to colo and vm customers.<br><blockquote type=3D"ci=
te"><blockquote type=3D"cite"><br><a href=3D"https://iperf2.sourceforge.io/=
iperf-manpage.html" target=3D"_blank">https://iperf2.sourceforge.io/iperf-m=
anpage.html</a><br><br>Bob<br><br>On Mon, Jul 12, 2021 at 10:40 AM David P.=
 Reed &lt;<br></blockquote></blockquote><a href=3D"mailto:dpreed@deepplum.c=
om" target=3D"_blank">dpreed@deepplum.com</a> &lt;mailto:<a href=3D"mailto:=
dpreed@deepplum.com" target=3D"_blank">dpreed@deepplum.com</a>&gt; &lt;mail=
to:<br><a href=3D"mailto:dpreed@deepplum.com" target=3D"_blank">dpreed@deep=
plum.com</a><br><blockquote type=3D"cite">=C2=A0=C2=A0=C2=A0&lt;mailto:<a h=
ref=3D"mailto:dpreed@deepplum.com" target=3D"_blank">dpreed@deepplum.com</a=
>&gt;&gt;&gt; wrote:<br><blockquote type=3D"cite"><br><br>=C2=A0=C2=A0=C2=
=A0On Monday, July 12, 2021 9:46am, &quot;Livingood, Jason&quot; &lt;<br></=
blockquote></blockquote><a href=3D"mailto:Jason_Livingood@comcast.com" targ=
et=3D"_blank">Jason_Livingood@comcast.com</a> &lt;mailto:<a href=3D"mailto:=
Jason_Livingood@comcast.com" target=3D"_blank">Jason_Livingood@comcast.com<=
/a>&gt;<br><blockquote type=3D"cite">=C2=A0=C2=A0=C2=A0&lt;mailto:<a href=
=3D"mailto:Jason_Livingood@comcast.com" target=3D"_blank">Jason_Livingood@c=
omcast.com</a> &lt;mailto:<br></blockquote><a href=3D"mailto:Jason_Livingoo=
d@comcast.com" target=3D"_blank">Jason_Livingood@comcast.com</a>&gt;&gt;&gt=
; said:<br><blockquote type=3D"cite"><blockquote type=3D"cite"><br><blockqu=
ote type=3D"cite">I think latency/delay is becoming seen to be as important=
<br></blockquote></blockquote></blockquote>certainly, if not a more direct =
proxy for end user QoE. This is all still<br>evolving and I<br><blockquote =
type=3D"cite">=C2=A0=C2=A0=C2=A0have<br><blockquote type=3D"cite">=C2=A0=C2=
=A0=C2=A0to say is a super interesting &amp; fun thing to work on. :-)<br><=
br>=C2=A0=C2=A0=C2=A0If I could manage to sell one idea to the management<b=
r></blockquote></blockquote>hierarchy of communications industry CEOs (oper=
ators, vendors, ...) it is<br>this one:<br><blockquote type=3D"cite"><block=
quote type=3D"cite"><br>=C2=A0=C2=A0=C2=A0&quot;It&#39;s the end-to-end lat=
ency, stupid!&quot;<br><br>=C2=A0=C2=A0=C2=A0And I mean, by end-to-end, lat=
ency to complete a task at a<br></blockquote></blockquote>relevant layer of=
 abstraction.<br><blockquote type=3D"cite"><blockquote type=3D"cite"><br>=
=C2=A0=C2=A0=C2=A0At the link level, it&#39;s packet send to packet receive=
<br></blockquote></blockquote>completion.<br><blockquote type=3D"cite"><blo=
ckquote type=3D"cite"><br>=C2=A0=C2=A0=C2=A0But at the transport level incl=
uding retransmission buffers,<br></blockquote></blockquote>it&#39;s datagra=
m (or message) origination until the acknowledgement arrives<br>for that<br=
><blockquote type=3D"cite">=C2=A0=C2=A0=C2=A0message being<br><blockquote t=
ype=3D"cite">=C2=A0=C2=A0=C2=A0delivered after whatever number of retransmi=
ssions, freeing<br></blockquote></blockquote>the retransmission buffer.<br>=
<blockquote type=3D"cite"><blockquote type=3D"cite"><br>=C2=A0=C2=A0=C2=A0A=
t the WWW level, it&#39;s mouse click to display update<br></blockquote></b=
lockquote>corresponding to completion of the request.<br><blockquote type=
=3D"cite"><blockquote type=3D"cite"><br>=C2=A0=C2=A0=C2=A0What should be no=
ted is that lower level latencies don&#39;t<br></blockquote></blockquote>di=
rectly predict the magnitude of higher-level latencies. But longer lower<br=
>level latencies<br><blockquote type=3D"cite">=C2=A0=C2=A0=C2=A0almost<br><=
blockquote type=3D"cite">=C2=A0=C2=A0=C2=A0always amplfify higher level lat=
encies. Often non-linearly.<br><br>=C2=A0=C2=A0=C2=A0Throughput is very, ve=
ry weakly related to these latencies,<br></blockquote></blockquote>in contr=
ast.<br><blockquote type=3D"cite"><blockquote type=3D"cite"><br>=C2=A0=C2=
=A0=C2=A0The amplification process has to do with the presence of<br></bloc=
kquote></blockquote>queueing. Queueing is ALWAYS bad for latency, and throu=
ghput only helps if<br>it is in exactly the<br><blockquote type=3D"cite"><b=
lockquote type=3D"cite">=C2=A0=C2=A0=C2=A0right place (the so-called input =
queue of the bottleneck<br></blockquote></blockquote>process, which is ofte=
n a link, but not always).<br><blockquote type=3D"cite"><blockquote type=3D=
"cite"><br>=C2=A0=C2=A0=C2=A0Can we get that slogan into Harvard Business R=
eview? Can we<br></blockquote></blockquote>get it taught in Managerial Acco=
unting at HBS? (which does address<br>logistics/supply chain<br><blockquote=
 type=3D"cite">=C2=A0=C2=A0=C2=A0queueing).<br><blockquote type=3D"cite"><b=
r><br><br><br><br><br><br>This electronic communication and the information=
 and any files<br></blockquote></blockquote>transmitted with it, or attache=
d to it, are confidential and are intended<br>solely for the<br><blockquote=
 type=3D"cite">=C2=A0=C2=A0=C2=A0use of<br><blockquote type=3D"cite">the in=
dividual or entity to whom it is addressed and may contain<br></blockquote>=
</blockquote>information that is confidential, legally privileged, protecte=
d by privacy<br>laws, or<br><blockquote type=3D"cite">=C2=A0=C2=A0=C2=A0oth=
erwise<br><blockquote type=3D"cite">restricted from disclosure to anyone el=
se. If you are not the<br></blockquote></blockquote>intended recipient or t=
he person responsible for delivering the e-mail to<br>the intended<br><bloc=
kquote type=3D"cite">=C2=A0=C2=A0=C2=A0recipient,<br><blockquote type=3D"ci=
te">you are hereby notified that any use, copying, distributing,<br></block=
quote></blockquote>dissemination, forwarding, printing, or copying of this =
e-mail is strictly<br>prohibited. If you<br><blockquote type=3D"cite"><bloc=
kquote type=3D"cite">received this e-mail in error, please return the e-mai=
l to the<br></blockquote></blockquote>sender, delete it from your computer,=
 and destroy any printed copy of it.<br><blockquote type=3D"cite"><br><br>=
=C2=A0=C2=A0=C2=A0--<br>=C2=A0=C2=A0=C2=A0Ben Greear &lt;<a href=3D"mailto:=
greearb@candelatech.com" target=3D"_blank">greearb@candelatech.com</a> &lt;=
mailto:<a href=3D"mailto:greearb@candelatech.com" target=3D"_blank">greearb=
@candelatech.com</a><br><blockquote type=3D"cite"><br></blockquote>=C2=A0=
=C2=A0=C2=A0Candela Technologies Inc <a href=3D"http://www.candelatech.com"=
 target=3D"_blank">http://www.candelatech.com</a><br><br><br>This electroni=
c communication and the information and any files<br>transmitted with it, o=
r attached to it, are confidential and are<br>intended solely for the use o=
f the individual or entity to whom it is<br>addressed and may contain infor=
mation that is confidential, legally<br>privileged, protected by privacy la=
ws, or otherwise restricted from<br></blockquote>disclosure to anyone else.=
 If you are not the intended recipient or the<br>person responsible for del=
ivering the e-mail to the intended recipient, you<br>are hereby notified th=
at any use, copying, distributing, dissemination,<br>forwarding, printing, =
or copying of this e-mail is strictly prohibited. If<br>you received this e=
-mail in error, please return the e-mail to the sender,<br>delete it from y=
our computer, and destroy any printed copy of it.<br><br><br>--<br>Ben Gree=
ar &lt;<a href=3D"mailto:greearb@candelatech.com" target=3D"_blank">greearb=
@candelatech.com</a>&gt;<br>Candela Technologies Inc =C2=A0<a href=3D"http:=
//www.candelatech.com" target=3D"_blank">http://www.candelatech.com</a><br>=
<br>_______________________________________________<br>Bloat mailing list<b=
r><a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">Bloat@li=
sts.bufferbloat.net</a><br><a href=3D"https://lists.bufferbloat.net/listinf=
o/bloat" target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a>=
<br><br><br></blockquote><br>--<br>This electronic communication and the in=
formation and any files transmitted<br>with it, or attached to it, are conf=
idential and are intended solely for<br>the use of the individual or entity=
 to whom it is addressed and may contain<br>information that is confidentia=
l, legally privileged, protected by privacy<br>laws, or otherwise restricte=
d from disclosure to anyone else. If you are<br>not the intended recipient =
or the person responsible for delivering the<br>e-mail to the intended reci=
pient, you are hereby notified that any use,<br>copying, distributing, diss=
emination, forwarding, printing, or copying of<br>this e-mail is strictly p=
rohibited. If you received this e-mail in error,<br>please return the e-mai=
l to the sender, delete it from your computer, and<br>destroy any printed c=
opy of it.</blockquote></div></blockquote></div></div></div></div></div></d=
iv><div><div dir=3D"auto"><div dir=3D"auto"><div dir=3D"auto"><div></div></=
div></div></div></div></blockquote></div>

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
--000000000000e5b76e05c7b8cfff--

--000000000000ebc27f05c7b8cf78
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEID2Tkit35v0l/1CnFU4XprYKzOyfj2xojwCw
D8Cdx7I6MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDcyMjE2
MzA1OVowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQDRVcIq+rkWCDvEQOmmnlwJXPBCwTy7U1ggGimDF3MgbzoIdyE6UjkF
q7o53I9eZKKoV0cIsn4FU+wdogLabKNFAIpXMUz8ToUWQNpplh069P+gBftbuKdpMnIp3vugCrvc
x+rSn5HYxUb9HFfKQ7Li8idvLhcH8o5o1kNYxJXxQ2M/pQuc+ySjAJe+nxPA0ViRX70dJ1qleTIa
pB8DDGpWkObs4Sk8/3bbCPkrPoE7k1JR8W4bGuRy2i/tOZ0AWqgTO/a34g2dhpoKwEFhkYr+vJN8
IzMCDsFmKQHsNk6wWT5rCo0Uhf3xDuMbOT9IAJlf2tbCvMe0nN6TFudUPmuV
--000000000000ebc27f05c7b8cf78--

--===============1676577130499088533==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1676577130499088533==--

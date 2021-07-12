Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF3B3C650B
	for <lists+cake@lfdr.de>; Mon, 12 Jul 2021 22:37:02 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 008EC3CB5E;
	Mon, 12 Jul 2021 16:36:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1626122215;
	bh=cJIVBlu2HkUmYIWsiPr2P9Vvq3n/LSfhq4+iSNSQ27M=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oxSpbJVweWh9QLygSg5v9+BX512k/ySEpjknPfSjBb4MXgad1MaWgG1q64EhdS61d
	 7xguklcbNZnBDeh2qz0NSaVGgdOCvV5RNi0BAsGF6apuMZ6TCGmExLnGhgcLq42hrM
	 xpJtzdjHQzI3cF3Yk1ln1f7vpRP5KpA3S07DjicgMnY4z9u+3VPGQaydHPrZrJgStG
	 JQUi9G5cYsS+kSDueYnG7eZaDsP9oCZnRB+Eq9ILWh1RiFnUHb9LfMblFieW1Y7EeQ
	 oKJEHVw8AFpeUHxkzv9Qy8Ieft1A03ZzQkhGfDJAouq18JL8DrU5uAcfIGrhNu5t0F
	 gbCOLSOnJCskA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.lang.hm (unknown [66.167.227.145])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id ED2F33CB37;
 Mon, 12 Jul 2021 16:36:52 -0400 (EDT)
Received: from dlang-laptop.local (unknown [10.2.0.162])
 by mail.lang.hm (Postfix) with ESMTP id 08DDDFEB12;
 Mon, 12 Jul 2021 13:36:52 -0700 (PDT)
Date: Mon, 12 Jul 2021 13:36:46 -0700 (PDT)
From: David Lang <david@lang.hm>
X-X-Sender: dlang@dlang-laptop
To: Ben Greear <greearb@candelatech.com>
In-Reply-To: <1e8bdf58-2a21-f543-a248-be58bcbddbcf@candelatech.com>
Message-ID: <nycvar.QRO.7.76.6.2107121334020.1440203@qynat-yncgbc>
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
User-Agent: Alpine 2.21.1 (DEB 209 2017-03-23)
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="8323328-1212618896-1626122212=:1440203"
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
 "starlink@lists.bufferbloat.net" <starlink@lists.bufferbloat.net>, "Livingood,
 Jason" <Jason_Livingood@comcast.com>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1212618896-1626122212=:1440203
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

I have seen some performance tests that do explicit DNS timing tests separate 
from other throughput/latency tests.

Since DNS uses UDP (even if it then falls back to TCP in some cases), UDP 
performance (and especially probability of loss at congested links) is very 
important.

David Lang

On Mon, 12 Jul 2021, Ben Greear wrote:

> UDP is better for getting actual packet latency, for sure.  TCP is 
> typical-user-experience-latency though,
> so it is also useful.
>
> I'm interested in the test and visualization side of this.  If there were a 
> way to give engineers
> a good real-time look at a complex real-world network, then they have 
> something to go on while trying
> to tune various knobs in their network to improve it.
>
> I'll let others try to figure out how build and tune the knobs, but the data 
> acquisition and
> visualization is something we might try to accomplish.  I have a feeling I'm 
> not the
> first person to think of this, however....probably someone already has done 
> such
> a thing.
>
> Thanks,
> Ben
>
> On 7/12/21 1:04 PM, Bob McMahon wrote:
>> I believe end host's TCP stats are insufficient as seen per the "failed" 
> congested control mechanisms over the last decades. I think Jaffe pointed 
> this out in 
>> 1979 though he was using what's been deemed on this thread as "spherical 
> cow queueing theory."
>> 
>> "Flow control in store-and-forward computer networks is appropriate for 
> decentralized execution. A formal description of a class of "decentralized 
> flow control 
>> algorithms" is given. The feasibility of maximizing power with such 
> algorithms is investigated. On the assumption that communication links behave 
> like M/M/1 
>> servers it is shown that no "decentralized flow control algorithm" can 
> maximize network power. Power has been suggested in the literature as a 
> network 
>> performance objective. It is also shown that no objective based only on the 
> users' throughputs and average delay is decentralizable. Finally, a 
> restricted class 
>> of algorithms cannot even approximate power."
>> 
>> https://ieeexplore.ieee.org/document/1095152
>> 
>> Did Jaffe make a mistake?
>> 
>> Also, it's been observed that latency is non-parametric in it's 
> distributions and computing gaussians per the central limit theorem for OWD 
> feedback loops 
>> aren't effective. How does one design a control loop around things that are 
> non-parametric? It also begs the question, what are the feed forward knobs 
> that can 
>> actually help?
>> 
>> Bob
>> 
>> On Mon, Jul 12, 2021 at 12:07 PM Ben Greear <greearb@candelatech.com 
> <mailto:greearb@candelatech.com>> wrote:
>>
>>     Measuring one or a few links provides a bit of data, but seems like if 
> someone is trying to understand
>>     a large and real network, then the OWD between point A and B needs to 
> just be input into something much
>>     more grand.  Assuming real-time OWD data exists between 100 to 1000 
> endpoint pairs, has anyone found a way
>>     to visualize this in a useful manner?
>>
>>     Also, considering something better than ntp may not really scale to 
> 1000+ endpoints, maybe round-trip
>>     time is only viable way to get this type of data.  In that case, maybe 
> clever logic could use things
>>     like trace-route to get some idea of how long it takes to get 'onto' 
> the internet proper, and so estimate
>>     the last-mile latency.  My assumption is that the last-mile latency is 
> where most of the pervasive
>>     assymetric network latencies would exist (or just ping 8.8.8.8 which is 
> 20ms from everywhere due to
>>     $magic).
>>
>>     Endpoints could also triangulate a bit if needed, using some anchor 
> points in the network
>>     under test.
>>
>>     Thanks,
>>     Ben
>>
>>     On 7/12/21 11:21 AM, Bob McMahon wrote:
>>      > iperf 2 supports OWD and gives full histograms for TCP write to 
> read, TCP connect times, latency of packets (with UDP), latency of "frames" 
> with
>>      > simulated video traffic (TCP and UDP), xfer times of bursts with low 
> duty cycle traffic, and TCP RTT (sampling based.) It also has support for 
> sampling (per
>>      > interval reports) down to 100 usecs if configured with 
> --enable-fastsampling, otherwise the fastest sampling is 5 ms. We've released 
> all this as open source.
>>      >
>>      > OWD only works if the end realtime clocks are synchronized using a 
> "machine level" protocol such as IEEE 1588 or PTP. Sadly, *most data centers 
> don't
>>     provide
>>      > sufficient level of clock accuracy and the GPS pulse per second * to 
> colo and vm customers.
>>      >
>>      > https://iperf2.sourceforge.io/iperf-manpage.html
>>      >
>>      > Bob
>>      >
>>      > On Mon, Jul 12, 2021 at 10:40 AM David P. Reed <dpreed@deepplum.com 
> <mailto:dpreed@deepplum.com> <mailto:dpreed@deepplum.com
>>     <mailto:dpreed@deepplum.com>>> wrote:
>>      >
>>      >
>>      >     On Monday, July 12, 2021 9:46am, "Livingood, Jason" 
> <Jason_Livingood@comcast.com <mailto:Jason_Livingood@comcast.com>
>>     <mailto:Jason_Livingood@comcast.com 
> <mailto:Jason_Livingood@comcast.com>>> said:
>>      >
>>      >      > I think latency/delay is becoming seen to be as important 
> certainly, if not a more direct proxy for end user QoE. This is all still 
> evolving and I
>>     have
>>      >     to say is a super interesting & fun thing to work on. :-)
>>      >
>>      >     If I could manage to sell one idea to the management hierarchy 
> of communications industry CEOs (operators, vendors, ...) it is this one:
>>      >
>>      >     "It's the end-to-end latency, stupid!"
>>      >
>>      >     And I mean, by end-to-end, latency to complete a task at a 
> relevant layer of abstraction.
>>      >
>>      >     At the link level, it's packet send to packet receive 
> completion.
>>      >
>>      >     But at the transport level including retransmission buffers, 
> it's datagram (or message) origination until the acknowledgement arrives for 
> that
>>     message being
>>      >     delivered after whatever number of retransmissions, freeing the 
> retransmission buffer.
>>      >
>>      >     At the WWW level, it's mouse click to display update 
> corresponding to completion of the request.
>>      >
>>      >     What should be noted is that lower level latencies don't 
> directly predict the magnitude of higher-level latencies. But longer lower 
> level latencies
>>     almost
>>      >     always amplfify higher level latencies. Often non-linearly.
>>      >
>>      >     Throughput is very, very weakly related to these latencies, in 
> contrast.
>>      >
>>      >     The amplification process has to do with the presence of 
> queueing. Queueing is ALWAYS bad for latency, and throughput only helps if it 
> is in exactly the
>>      >     right place (the so-called input queue of the bottleneck 
> process, which is often a link, but not always).
>>      >
>>      >     Can we get that slogan into Harvard Business Review? Can we get 
> it taught in Managerial Accounting at HBS? (which does address 
> logistics/supply chain
>>     queueing).
>>      >
>>      >
>>      >
>>      >
>>      >
>>      >
>>      >
>>      > This electronic communication and the information and any files 
> transmitted with it, or attached to it, are confidential and are intended 
> solely for the
>>     use of
>>      > the individual or entity to whom it is addressed and may contain 
> information that is confidential, legally privileged, protected by privacy 
> laws, or
>>     otherwise
>>      > restricted from disclosure to anyone else. If you are not the 
> intended recipient or the person responsible for delivering the e-mail to the 
> intended
>>     recipient,
>>      > you are hereby notified that any use, copying, distributing, 
> dissemination, forwarding, printing, or copying of this e-mail is strictly 
> prohibited. If you
>>      > received this e-mail in error, please return the e-mail to the 
> sender, delete it from your computer, and destroy any printed copy of it.
>> 
>>
>>     --
>>     Ben Greear <greearb@candelatech.com <mailto:greearb@candelatech.com>>
>>     Candela Technologies Inc http://www.candelatech.com
>> 
>> 
>> This electronic communication and the information and any files transmitted 
> with it, or attached to it, are confidential and are intended solely for the 
> use of 
>> the individual or entity to whom it is addressed and may contain 
> information that is confidential, legally privileged, protected by privacy 
> laws, or otherwise 
>> restricted from disclosure to anyone else. If you are not the intended 
> recipient or the person responsible for delivering the e-mail to the intended 
> recipient, 
>> you are hereby notified that any use, copying, distributing, dissemination, 
> forwarding, printing, or copying of this e-mail is strictly prohibited. If 
> you 
>> received this e-mail in error, please return the e-mail to the sender, 
> delete it from your computer, and destroy any printed copy of it.
>
>
>
--8323328-1212618896-1626122212=:1440203
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--8323328-1212618896-1626122212=:1440203--

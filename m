Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 730F23C6522
	for <lists+cake@lfdr.de>; Mon, 12 Jul 2021 22:50:54 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5A8273CB56;
	Mon, 12 Jul 2021 16:50:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1626123052;
	bh=IyiDwlo6dQZsJNCesTYdx+vrKO8F2zdKLPGg3nZMmOY=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=D73sq+ftHbh5Zz3ZdLxmE7yQhcpqZpYwyPs83zHcq1222T8rHkpwHpjJIGfLuN3Rr
	 NjyZPfMcktD0HZHWVdwSl9L5o2yjlBkX/GHX6O6UDSnwHGds1PxUOBQ8d699KL48R6
	 S2SJZWMkhTgCQIMNvzeLVeriRt48021CJ6JlR3XbcdcC4LxpI2mOkC2mZcE68Eyk+k
	 zaT78NhbY6DgqnfmKxid0byoxF4RKzgkwue7Z+3X3HW3TLh5IMRDIlTtNZ+j/EkLE/
	 uY9eD4sgAOE2BTKBB1XesCHlAXd8Z+lTsSItjclKatPKKqAbABmu63DROrW/UKjWBu
	 ggr5N5sG2cxqA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 235543CB39
 for <cake@lists.bufferbloat.net>; Mon, 12 Jul 2021 16:50:51 -0400 (EDT)
Received: by mail-ed1-x532.google.com with SMTP id l26so21654094eda.10
 for <cake@lists.bufferbloat.net>; Mon, 12 Jul 2021 13:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fUS0hq6puTHyaJrtpdV8Q18R6rkZq35atWchwrU3Ge8=;
 b=NSo1buWX6K0Ky6iz3DTSzxg/fDiyYYRzumffG1neng3Xsfyv5Scu5j+Pi1soZQu9Zx
 tQCjhpiUgEODPvAZOZ5Rz9Y34L4CC3H8zYSynDMrD5BxLXx/O1kScZ9+DHVk0ljZK330
 tkiilwMm9317ETkvA37tzDxj3Sdn/ptD4Uf2Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fUS0hq6puTHyaJrtpdV8Q18R6rkZq35atWchwrU3Ge8=;
 b=ALuoMTmI4+GCblf9cwg4jifUGpWDJ8KYsLlvjXatTO9X6MEUWno60haIhyeIcgIPWq
 /FJ4Mswq7S005rD4un4Bw+qqj7xo1AcViCHCINWti71bLdLamVR3AX0mRrxQvOd7/pG9
 yKc+g73Y22LaJdjn1wgwrY2Hx72jMn5GrXl0G0SSV5S1L1BZM1lpem75tM+I2c3YqJeM
 stsqnCB6W/MLtm2jdmsRAdyiNAiARetoG9qOfmjsWXcK10rc5u6VY36jZv8dL6NGGlrW
 asZsZwOHpgSqc6bmKjXsq7h3W20sjeftLujqBQZDHGy/9T1BJ8SX7ir9z2oeKSP3TtVG
 EgGQ==
X-Gm-Message-State: AOAM5338f3qQOMWCb/0LaJBnmvF6RcKzMFKBvzjEpaoEWpOrWUrwoG0i
 pofBkG937TjKDFcsliEti8enBySxctjNrvd/cFBaozuw+wluYusMK+SPTejWSYsPkFtafrJHw8T
 VdA7LpTXL7q+cC0FMfEH+Q5um1wXw
X-Google-Smtp-Source: ABdhPJwzJ08+2SMD310h8mypdnCHS2xvrrZ86DMWE/Gzw1wEkQlonJJnVb3tP9O8THwY7vt4Fw7azDFV9kuWZh6eg3o=
X-Received: by 2002:a05:6402:14c7:: with SMTP id
 f7mr947605edx.84.1626123049913; 
 Mon, 12 Jul 2021 13:50:49 -0700 (PDT)
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
 <nycvar.QRO.7.76.6.2107121334020.1440203@qynat-yncgbc>
In-Reply-To: <nycvar.QRO.7.76.6.2107121334020.1440203@qynat-yncgbc>
Date: Mon, 12 Jul 2021 13:50:39 -0700
Message-ID: <CAHb6LvqWf-MzO=6H01y5PmsZDtijJWjuMx7CO4Nv4P6KFR-huw@mail.gmail.com>
To: David Lang <david@lang.hm>
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
 "starlink@lists.bufferbloat.net" <starlink@lists.bufferbloat.net>, "Livingood,
 Jason" <Jason_Livingood@comcast.com>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: multipart/mixed; boundary="===============6022694519253564849=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6022694519253564849==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000c5cd0a05c6f34634"

--000000000000c5cd0a05c6f34634
Content-Type: multipart/alternative; boundary="000000000000c0955e05c6f3468f"

--000000000000c0955e05c6f3468f
Content-Type: text/plain; charset="UTF-8"

Agreed that UDP is important but it's also much easier to test and debug
for WiFi coders. We find it's the connect() and TCP control loop that
challenges WiFi logic systems on end hosts. APs are a whole different story
per things like OFDMA.

Nothing is simple anymore it seems. Reminds me of the standard model
developed over time at CERN. It ain't E=MC**2

Bob

On Mon, Jul 12, 2021 at 1:36 PM David Lang <david@lang.hm> wrote:

> I have seen some performance tests that do explicit DNS timing tests
> separate
> from other throughput/latency tests.
>
> Since DNS uses UDP (even if it then falls back to TCP in some cases), UDP
> performance (and especially probability of loss at congested links) is
> very
> important.
>
> David Lang
>
> On Mon, 12 Jul 2021, Ben Greear wrote:
>
> > UDP is better for getting actual packet latency, for sure.  TCP is
> > typical-user-experience-latency though,
> > so it is also useful.
> >
> > I'm interested in the test and visualization side of this.  If there
> were a
> > way to give engineers
> > a good real-time look at a complex real-world network, then they have
> > something to go on while trying
> > to tune various knobs in their network to improve it.
> >
> > I'll let others try to figure out how build and tune the knobs, but the
> data
> > acquisition and
> > visualization is something we might try to accomplish.  I have a feeling
> I'm
> > not the
> > first person to think of this, however....probably someone already has
> done
> > such
> > a thing.
> >
> > Thanks,
> > Ben
> >
> > On 7/12/21 1:04 PM, Bob McMahon wrote:
> >> I believe end host's TCP stats are insufficient as seen per the
> "failed"
> > congested control mechanisms over the last decades. I think Jaffe
> pointed
> > this out in
> >> 1979 though he was using what's been deemed on this thread as
> "spherical
> > cow queueing theory."
> >>
> >> "Flow control in store-and-forward computer networks is appropriate for
> > decentralized execution. A formal description of a class of
> "decentralized
> > flow control
> >> algorithms" is given. The feasibility of maximizing power with such
> > algorithms is investigated. On the assumption that communication links
> behave
> > like M/M/1
> >> servers it is shown that no "decentralized flow control algorithm" can
> > maximize network power. Power has been suggested in the literature as a
> > network
> >> performance objective. It is also shown that no objective based only on
> the
> > users' throughputs and average delay is decentralizable. Finally, a
> > restricted class
> >> of algorithms cannot even approximate power."
> >>
> >> https://ieeexplore.ieee.org/document/1095152
> >>
> >> Did Jaffe make a mistake?
> >>
> >> Also, it's been observed that latency is non-parametric in it's
> > distributions and computing gaussians per the central limit theorem for
> OWD
> > feedback loops
> >> aren't effective. How does one design a control loop around things that
> are
> > non-parametric? It also begs the question, what are the feed forward
> knobs
> > that can
> >> actually help?
> >>
> >> Bob
> >>
> >> On Mon, Jul 12, 2021 at 12:07 PM Ben Greear <greearb@candelatech.com
> > <mailto:greearb@candelatech.com>> wrote:
> >>
> >>     Measuring one or a few links provides a bit of data, but seems like
> if
> > someone is trying to understand
> >>     a large and real network, then the OWD between point A and B needs
> to
> > just be input into something much
> >>     more grand.  Assuming real-time OWD data exists between 100 to 1000
> > endpoint pairs, has anyone found a way
> >>     to visualize this in a useful manner?
> >>
> >>     Also, considering something better than ntp may not really scale to
> > 1000+ endpoints, maybe round-trip
> >>     time is only viable way to get this type of data.  In that case,
> maybe
> > clever logic could use things
> >>     like trace-route to get some idea of how long it takes to get
> 'onto'
> > the internet proper, and so estimate
> >>     the last-mile latency.  My assumption is that the last-mile latency
> is
> > where most of the pervasive
> >>     assymetric network latencies would exist (or just ping 8.8.8.8
> which is
> > 20ms from everywhere due to
> >>     $magic).
> >>
> >>     Endpoints could also triangulate a bit if needed, using some anchor
> > points in the network
> >>     under test.
> >>
> >>     Thanks,
> >>     Ben
> >>
> >>     On 7/12/21 11:21 AM, Bob McMahon wrote:
> >>      > iperf 2 supports OWD and gives full histograms for TCP write to
> > read, TCP connect times, latency of packets (with UDP), latency of
> "frames"
> > with
> >>      > simulated video traffic (TCP and UDP), xfer times of bursts with
> low
> > duty cycle traffic, and TCP RTT (sampling based.) It also has support
> for
> > sampling (per
> >>      > interval reports) down to 100 usecs if configured with
> > --enable-fastsampling, otherwise the fastest sampling is 5 ms. We've
> released
> > all this as open source.
> >>      >
> >>      > OWD only works if the end realtime clocks are synchronized using
> a
> > "machine level" protocol such as IEEE 1588 or PTP. Sadly, *most data
> centers
> > don't
> >>     provide
> >>      > sufficient level of clock accuracy and the GPS pulse per second
> * to
> > colo and vm customers.
> >>      >
> >>      > https://iperf2.sourceforge.io/iperf-manpage.html
> >>      >
> >>      > Bob
> >>      >
> >>      > On Mon, Jul 12, 2021 at 10:40 AM David P. Reed <
> dpreed@deepplum.com
> > <mailto:dpreed@deepplum.com> <mailto:dpreed@deepplum.com
> >>     <mailto:dpreed@deepplum.com>>> wrote:
> >>      >
> >>      >
> >>      >     On Monday, July 12, 2021 9:46am, "Livingood, Jason"
> > <Jason_Livingood@comcast.com <mailto:Jason_Livingood@comcast.com>
> >>     <mailto:Jason_Livingood@comcast.com
> > <mailto:Jason_Livingood@comcast.com>>> said:
> >>      >
> >>      >      > I think latency/delay is becoming seen to be as important
> > certainly, if not a more direct proxy for end user QoE. This is all
> still
> > evolving and I
> >>     have
> >>      >     to say is a super interesting & fun thing to work on. :-)
> >>      >
> >>      >     If I could manage to sell one idea to the management
> hierarchy
> > of communications industry CEOs (operators, vendors, ...) it is this one:
> >>      >
> >>      >     "It's the end-to-end latency, stupid!"
> >>      >
> >>      >     And I mean, by end-to-end, latency to complete a task at a
> > relevant layer of abstraction.
> >>      >
> >>      >     At the link level, it's packet send to packet receive
> > completion.
> >>      >
> >>      >     But at the transport level including retransmission buffers,
> > it's datagram (or message) origination until the acknowledgement arrives
> for
> > that
> >>     message being
> >>      >     delivered after whatever number of retransmissions, freeing
> the
> > retransmission buffer.
> >>      >
> >>      >     At the WWW level, it's mouse click to display update
> > corresponding to completion of the request.
> >>      >
> >>      >     What should be noted is that lower level latencies don't
> > directly predict the magnitude of higher-level latencies. But longer
> lower
> > level latencies
> >>     almost
> >>      >     always amplfify higher level latencies. Often non-linearly.
> >>      >
> >>      >     Throughput is very, very weakly related to these latencies,
> in
> > contrast.
> >>      >
> >>      >     The amplification process has to do with the presence of
> > queueing. Queueing is ALWAYS bad for latency, and throughput only helps
> if it
> > is in exactly the
> >>      >     right place (the so-called input queue of the bottleneck
> > process, which is often a link, but not always).
> >>      >
> >>      >     Can we get that slogan into Harvard Business Review? Can we
> get
> > it taught in Managerial Accounting at HBS? (which does address
> > logistics/supply chain
> >>     queueing).
> >>      >
> >>      >
> >>      >
> >>      >
> >>      >
> >>      >
> >>      >
> >>      > This electronic communication and the information and any files
> > transmitted with it, or attached to it, are confidential and are
> intended
> > solely for the
> >>     use of
> >>      > the individual or entity to whom it is addressed and may contain
> > information that is confidential, legally privileged, protected by
> privacy
> > laws, or
> >>     otherwise
> >>      > restricted from disclosure to anyone else. If you are not the
> > intended recipient or the person responsible for delivering the e-mail
> to the
> > intended
> >>     recipient,
> >>      > you are hereby notified that any use, copying, distributing,
> > dissemination, forwarding, printing, or copying of this e-mail is
> strictly
> > prohibited. If you
> >>      > received this e-mail in error, please return the e-mail to the
> > sender, delete it from your computer, and destroy any printed copy of it.
> >>
> >>
> >>     --
> >>     Ben Greear <greearb@candelatech.com <mailto:greearb@candelatech.com
> >>
> >>     Candela Technologies Inc http://www.candelatech.com
> >>
> >>
> >> This electronic communication and the information and any files
> transmitted
> > with it, or attached to it, are confidential and are intended solely for
> the
> > use of
> >> the individual or entity to whom it is addressed and may contain
> > information that is confidential, legally privileged, protected by
> privacy
> > laws, or otherwise
> >> restricted from disclosure to anyone else. If you are not the intended
> > recipient or the person responsible for delivering the e-mail to the
> intended
> > recipient,
> >> you are hereby notified that any use, copying, distributing,
> dissemination,
> > forwarding, printing, or copying of this e-mail is strictly prohibited.
> If
> > you
> >> received this e-mail in error, please return the e-mail to the sender,
> > delete it from your computer, and destroy any printed copy of it.
> >
> >
> >

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

--000000000000c0955e05c6f3468f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Agreed that UDP is important but it&#39;s also much easier=
 to test and debug for WiFi coders. We find it&#39;s the connect() and TCP =
control loop that challenges WiFi logic systems on end hosts. APs=C2=A0are=
=C2=A0a whole different story per things like OFDMA.<br><br>Nothing is simp=
le anymore it seems. Reminds me of the standard model developed over time a=
t CERN. It ain&#39;t E=3DMC**2<br><br>Bob</div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jul 12, 2021 at 1:36 PM Da=
vid Lang &lt;<a href=3D"mailto:david@lang.hm">david@lang.hm</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">I have seen some=
 performance tests that do explicit DNS timing tests separate <br>
from other throughput/latency tests.<br>
<br>
Since DNS uses UDP (even if it then falls back to TCP in some cases), UDP <=
br>
performance (and especially probability of loss at congested links) is very=
 <br>
important.<br>
<br>
David Lang<br>
<br>
On Mon, 12 Jul 2021, Ben Greear wrote:<br>
<br>
&gt; UDP is better for getting actual packet latency, for sure.=C2=A0 TCP i=
s <br>
&gt; typical-user-experience-latency though,<br>
&gt; so it is also useful.<br>
&gt;<br>
&gt; I&#39;m interested in the test and visualization side of this.=C2=A0 I=
f there were a <br>
&gt; way to give engineers<br>
&gt; a good real-time look at a complex real-world network, then they have =
<br>
&gt; something to go on while trying<br>
&gt; to tune various knobs in their network to improve it.<br>
&gt;<br>
&gt; I&#39;ll let others try to figure out how build and tune the knobs, bu=
t the data <br>
&gt; acquisition and<br>
&gt; visualization is something we might try to accomplish.=C2=A0 I have a =
feeling I&#39;m <br>
&gt; not the<br>
&gt; first person to think of this, however....probably someone already has=
 done <br>
&gt; such<br>
&gt; a thing.<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Ben<br>
&gt;<br>
&gt; On 7/12/21 1:04 PM, Bob McMahon wrote:<br>
&gt;&gt; I believe end host&#39;s TCP stats are insufficient as seen per th=
e &quot;failed&quot; <br>
&gt; congested control mechanisms over the last decades. I think Jaffe poin=
ted <br>
&gt; this out in <br>
&gt;&gt; 1979 though he was using what&#39;s been deemed on this thread as =
&quot;spherical <br>
&gt; cow queueing theory.&quot;<br>
&gt;&gt; <br>
&gt;&gt; &quot;Flow control in store-and-forward computer networks is appro=
priate for <br>
&gt; decentralized execution. A formal description of a class of &quot;dece=
ntralized <br>
&gt; flow control <br>
&gt;&gt; algorithms&quot; is given. The feasibility of maximizing power wit=
h such <br>
&gt; algorithms is investigated. On the assumption that communication links=
 behave <br>
&gt; like M/M/1 <br>
&gt;&gt; servers it is shown that no &quot;decentralized flow control algor=
ithm&quot; can <br>
&gt; maximize network power. Power has been suggested in the literature as =
a <br>
&gt; network <br>
&gt;&gt; performance objective. It is also shown that no objective based on=
ly on the <br>
&gt; users&#39; throughputs and average delay is decentralizable. Finally, =
a <br>
&gt; restricted class <br>
&gt;&gt; of algorithms cannot even approximate power.&quot;<br>
&gt;&gt; <br>
&gt;&gt; <a href=3D"https://ieeexplore.ieee.org/document/1095152" rel=3D"no=
referrer" target=3D"_blank">https://ieeexplore.ieee.org/document/1095152</a=
><br>
&gt;&gt; <br>
&gt;&gt; Did Jaffe make a mistake?<br>
&gt;&gt; <br>
&gt;&gt; Also, it&#39;s been observed that latency=C2=A0is non-parametric i=
n it&#39;s <br>
&gt; distributions and computing gaussians=C2=A0per the central limit theor=
em for OWD <br>
&gt; feedback loops <br>
&gt;&gt; aren&#39;t effective. How does one design a control loop around th=
ings that are <br>
&gt; non-parametric? It also begs the question, what are the feed forward k=
nobs <br>
&gt; that can <br>
&gt;&gt; actually help?<br>
&gt;&gt; <br>
&gt;&gt; Bob<br>
&gt;&gt; <br>
&gt;&gt; On Mon, Jul 12, 2021 at 12:07 PM Ben Greear &lt;<a href=3D"mailto:=
greearb@candelatech.com" target=3D"_blank">greearb@candelatech.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:greearb@candelatech.com" target=3D"_blank=
">greearb@candelatech.com</a>&gt;&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Measuring one or a few links provides a bit of =
data, but seems like if <br>
&gt; someone is trying to understand<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0a large and real network, then the OWD between =
point A and B needs to <br>
&gt; just be input into something much<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0more grand.=C2=A0 Assuming real-time OWD data e=
xists between 100 to 1000 <br>
&gt; endpoint pairs, has anyone found a way<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0to visualize this in a useful manner?<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Also, considering something better than ntp may=
 not really scale to <br>
&gt; 1000+ endpoints, maybe round-trip<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0time is only viable way to get this type of dat=
a.=C2=A0 In that case, maybe <br>
&gt; clever logic could use things<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0like trace-route to get some idea of how long i=
t takes to get &#39;onto&#39; <br>
&gt; the internet proper, and so estimate<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0the last-mile latency.=C2=A0 My assumption is t=
hat the last-mile latency is <br>
&gt; where most of the pervasive<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0assymetric network latencies would exist (or ju=
st ping 8.8.8.8 which is <br>
&gt; 20ms from everywhere due to<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0$magic).<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Endpoints could also triangulate a bit if neede=
d, using some anchor <br>
&gt; points in the network<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0under test.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Thanks,<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Ben<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0On 7/12/21 11:21 AM, Bob McMahon wrote:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt; iperf 2 supports OWD and gives full histo=
grams for TCP write to <br>
&gt; read, TCP connect times, latency of packets (with UDP), latency of &qu=
ot;frames&quot; <br>
&gt; with<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt; simulated=C2=A0video=C2=A0traffic (TCP an=
d UDP), xfer times of bursts with low <br>
&gt; duty cycle traffic, and TCP RTT (sampling based.) It also has support =
for <br>
&gt; sampling (per<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt; interval reports) down to 100 usecs if co=
nfigured with <br>
&gt; --enable-fastsampling, otherwise the fastest sampling is 5 ms. We&#39;=
ve released <br>
&gt; all this as open source.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt; OWD only works if the end realtime clocks=
 are synchronized using a <br>
&gt; &quot;machine level&quot; protocol such as IEEE 1588 or PTP. Sadly, *m=
ost data centers <br>
&gt; don&#39;t<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0provide<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt; sufficient level of clock accuracy and th=
e GPS pulse per second * to <br>
&gt; colo and vm customers.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"https://iperf2.sourceforge.io/=
iperf-manpage.html" rel=3D"noreferrer" target=3D"_blank">https://iperf2.sou=
rceforge.io/iperf-manpage.html</a><br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Bob<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Mon, Jul 12, 2021 at 10:40 AM David P.=
 Reed &lt;<a href=3D"mailto:dpreed@deepplum.com" target=3D"_blank">dpreed@d=
eepplum.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:dpreed@deepplum.com" target=3D"_blank">dp=
reed@deepplum.com</a>&gt; &lt;mailto:<a href=3D"mailto:dpreed@deepplum.com"=
 target=3D"_blank">dpreed@deepplum.com</a><br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:dpreed@deepplum.co=
m" target=3D"_blank">dpreed@deepplum.com</a>&gt;&gt;&gt; wrote:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0On Monday, July 12, 20=
21 9:46am, &quot;Livingood, Jason&quot; <br>
&gt; &lt;<a href=3D"mailto:Jason_Livingood@comcast.com" target=3D"_blank">J=
ason_Livingood@comcast.com</a> &lt;mailto:<a href=3D"mailto:Jason_Livingood=
@comcast.com" target=3D"_blank">Jason_Livingood@comcast.com</a>&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:Jason_Livingood@co=
mcast.com" target=3D"_blank">Jason_Livingood@comcast.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:Jason_Livingood@comcast.com" target=3D"_b=
lank">Jason_Livingood@comcast.com</a>&gt;&gt;&gt; said:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I think latency/=
delay is becoming seen to be as important <br>
&gt; certainly, if not a more direct proxy for end user QoE. This is all st=
ill <br>
&gt; evolving and I<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0have<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0to say is a super inte=
resting &amp; fun thing to work on. :-)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0If I could manage to s=
ell one idea to the management hierarchy <br>
&gt; of communications industry CEOs (operators, vendors, ...) it is this o=
ne:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0&quot;It&#39;s the end=
-to-end latency, stupid!&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0And I mean, by end-to-=
end, latency to complete a task at a <br>
&gt; relevant layer of abstraction.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0At the link level, it&=
#39;s packet send to packet receive <br>
&gt; completion.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0But at the transport l=
evel including retransmission buffers, <br>
&gt; it&#39;s datagram (or message) origination until the acknowledgement a=
rrives for <br>
&gt; that<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0message being<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0delivered after whatev=
er number of retransmissions, freeing the <br>
&gt; retransmission buffer.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0At the WWW level, it&#=
39;s mouse click to display update <br>
&gt; corresponding to completion of the request.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0What should be noted i=
s that lower level latencies don&#39;t <br>
&gt; directly predict the magnitude of higher-level latencies. But longer l=
ower <br>
&gt; level latencies<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0almost<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0always amplfify higher=
 level latencies. Often non-linearly.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Throughput is very, ve=
ry weakly related to these latencies, in <br>
&gt; contrast.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0The amplification proc=
ess has to do with the presence of <br>
&gt; queueing. Queueing is ALWAYS bad for latency, and throughput only help=
s if it <br>
&gt; is in exactly the<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0right place (the so-ca=
lled input queue of the bottleneck <br>
&gt; process, which is often a link, but not always).<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Can we get that slogan=
 into Harvard Business Review? Can we get <br>
&gt; it taught in Managerial Accounting at HBS? (which does address <br>
&gt; logistics/supply chain<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0queueing).<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt; This electronic communication and the inf=
ormation and any files <br>
&gt; transmitted with it, or attached to it, are confidential and are inten=
ded <br>
&gt; solely for the<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0use of<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt; the individual or entity to whom it is ad=
dressed and may contain <br>
&gt; information that is confidential, legally privileged, protected by pri=
vacy <br>
&gt; laws, or<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0otherwise<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt; restricted from disclosure to anyone else=
. If you are not the <br>
&gt; intended recipient or the person responsible for delivering the e-mail=
 to the <br>
&gt; intended<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0recipient,<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt; you are hereby notified that any use, cop=
ying, distributing, <br>
&gt; dissemination, forwarding, printing, or copying of this e-mail is stri=
ctly <br>
&gt; prohibited. If you<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 &gt; received this e-mail in error, please ret=
urn the e-mail to the <br>
&gt; sender, delete it from your computer, and destroy any printed copy of =
it.<br>
&gt;&gt; <br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0--<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Ben Greear &lt;<a href=3D"mailto:greearb@candel=
atech.com" target=3D"_blank">greearb@candelatech.com</a> &lt;mailto:<a href=
=3D"mailto:greearb@candelatech.com" target=3D"_blank">greearb@candelatech.c=
om</a>&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Candela Technologies Inc <a href=3D"http://www.=
candelatech.com" rel=3D"noreferrer" target=3D"_blank">http://www.candelatec=
h.com</a><br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; This electronic communication and the information and any files tr=
ansmitted <br>
&gt; with it, or attached to it, are confidential and are intended solely f=
or the <br>
&gt; use of <br>
&gt;&gt; the individual or entity to whom it is addressed and may contain <=
br>
&gt; information that is confidential, legally privileged, protected by pri=
vacy <br>
&gt; laws, or otherwise <br>
&gt;&gt; restricted from disclosure to anyone else. If you are not the inte=
nded <br>
&gt; recipient or the person responsible for delivering the e-mail to the i=
ntended <br>
&gt; recipient, <br>
&gt;&gt; you are hereby notified that any use, copying, distributing, disse=
mination, <br>
&gt; forwarding, printing, or copying of this e-mail is strictly prohibited=
. If <br>
&gt; you <br>
&gt;&gt; received this e-mail in error, please return the e-mail to the sen=
der, <br>
&gt; delete it from your computer, and destroy any printed copy of it.<br>
&gt;<br>
&gt;<br>
&gt;</blockquote></div>

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
--000000000000c0955e05c6f3468f--

--000000000000c5cd0a05c6f34634
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIOozTVTNsqK796VW+EcLGKn+o8WMZMWKSIcd
mj3BJqjCMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDcxMjIw
NTA1MFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQAZiYZo05hH9v2bDsUOYH9JoETr39aKXY7LGET5yoAB/Mnmr8szUDhK
eyA4tk7sCF0bD+G+uUh9zZKdKd/fvTRWi8e6vtqoDAf3cX4dGjc3bguZ+aXpEUupBFNFQfVZ+K7W
2h5Cp7WbLqdKx+ima4lwnN4wPaPiOw56ewSfLbSFE4YK0gh2HiKWSSrGm9POab1B3vsWqNfkRrrw
sxtM18sU2RXKKXvzOvJ5FVU/ShoyZQhiqAyncP5SxZAaQWg9/0eqXs94qgQQ9lRi+uF8ny9vpdfg
Lf3HoYT2ZHcJleTiu58Lrrr7jJbxN+5nZ50gOv+wTS2NWJjmzYAk+MGkCq55
--000000000000c5cd0a05c6f34634--

--===============6022694519253564849==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6022694519253564849==--

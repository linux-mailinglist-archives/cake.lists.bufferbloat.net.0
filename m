Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8F35FB9E3
	for <lists+cake@lfdr.de>; Tue, 11 Oct 2022 19:48:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3A3273CB39;
	Tue, 11 Oct 2022 13:48:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665510483;
	bh=9Ew51UqSPv4cKDlLCboCTzX326GLWI7mXh4Na+KwR9g=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=WNXVkb7oBByyPyG2GZX60sjLfYwMhdb9MaaGBNKYAu4K3uw1uZu+Xsv/CAF2V5ZHY
	 eVqURimeIjwUNMn+qOPlkfY2iSR+ACe73Lc+qSRuwhD87rhoCqOysCnqDvAIVC8F/R
	 XtPvEkN6YAp25Ba/Us2H0zvWF9nCB+Nhp1VG9iDmofLS+Yzs/+LY+r0Ol8MgDec8TI
	 Fj+KWyhKSeMHH3XgtFSz6UME4IKIW4tFHC+2nBenEGMv6DIje4NL+NvjCw/hn9gVWP
	 8wZKY5tttYrsNyEGMFTaq4Z60U6PII1UI2C7fTW9eM49WfSlWShSv/46datayN5Kpw
	 YdbRJIHll3Mfw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com
 [IPv6:2a00:1450:4864:20::22b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E6C1B3CB39
 for <cake@lists.bufferbloat.net>; Tue, 11 Oct 2022 13:48:01 -0400 (EDT)
Received: by mail-lj1-x22b.google.com with SMTP id x18so9203734ljm.1
 for <cake@lists.bufferbloat.net>; Tue, 11 Oct 2022 10:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=4bCHoRuSVTcZDIWb8rI21GQFCtok4ONShAC1NdJQ0eU=;
 b=Ced0MmkQbcD8TQsHYHNtnfwY3B5NVtkyIaZN7+e2U6NmoXhy8xT0/7qGD5fTfIvK28
 VSg+M/0pC7xQgo1UtPGQV3ihUchYYhP4R5kt+terRZWi314luiLbo2y0BMBIu2XloiZc
 9zxivt1DMOmhP+4LQ31k12mYUOdYBgipWhMYg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=4bCHoRuSVTcZDIWb8rI21GQFCtok4ONShAC1NdJQ0eU=;
 b=F0QWMAb05rLHIFKB8YBnP3TDmWzpFzEUJotehcCWJbUw+80gAI8eGS3shlGWXaA2Bp
 kN2r2GCGaWQHIaGViLfhKxM5Xq5iJu/SFWR9HhLtz/W9/Eb2Eaph4Nyi78WF0F5KOHyv
 2l5Ud9aZtSIfl552tbG0U6+1Kjz/yF+GGfmOlIsoPSgtBAfY71uhRSMXAzw19GC1hv4D
 04vJGHppUrjvjCDeGbYuEe3smMkZcoVUoLs1pQrr6yogk0uKMuj6AnwBlXqP3N1w9Tg/
 Hq2f2Y5K78jBnGNPo63itLeDTMamgz5fgMUsw8VwbmDLwEaLaUXontjAp38AKu9IZ07v
 awDg==
X-Gm-Message-State: ACrzQf0NHuvTvjN29WDZHWaHBVq+Txfy3mMJtoGmeF6CHjSnVbYcWIg3
 wKVvDz9r4d+i1kO0XUfbZZCkAV4OTtaMw8YGHd1ZUC3Rysiv89L4v3sufTFohZRijFxgKHPwpDH
 KjgTPQS9sGTg2KVdCqZ/NF+CxX6oh
X-Google-Smtp-Source: AMsMyM6y2+wGC8Elp2IiWyJlNXeDrHpf3MIrkbed9EtXytY2IbrfIOa5UC4uVKxYMA1RGnHWNfDscUOXKDWDnBt/lw4=
X-Received: by 2002:a05:651c:1597:b0:26d:ea9f:a42a with SMTP id
 h23-20020a05651c159700b0026dea9fa42amr8670420ljq.107.1665510479359; Tue, 11
 Oct 2022 10:47:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
 <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
 <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no>
 <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de>
 <CAHb6LvqHNv_R2Asn944Kx91Cud5J3XSM-c+PcK8Bz19uaMDynw@mail.gmail.com>
 <q06231q2-n7qn-345s-np6r-p5717713q3po@ynat.uz>
 <CAHb6Lvqbj0MDhWvLaEk8Hbr_vZwDs1NdCj1X9Xvxp+x+Mbs0Vw@mail.gmail.com>
 <ACE51BEA-99AF-4CC9-B2A7-695C8F8B5946@gmx.de>
 <CAHb6Lvpw9SV-Ybqcj+2ucQOiLhC8oR=fqU91MsuPhiwk8XCUpA@mail.gmail.com>
 <C9F3E5F0-490A-4E7A-AE43-4529DD18C590@gmx.de>
In-Reply-To: <C9F3E5F0-490A-4E7A-AE43-4529DD18C590@gmx.de>
Date: Tue, 11 Oct 2022 10:47:46 -0700
Message-ID: <CAHb6Lvq-6t5sJxkMAsC5=PC=0G9gq1jsaXCS5cxQZ9zFPLcitA@mail.gmail.com>
To: Sebastian Moeller <moeller0@gmx.de>
Subject: Re: [Cake] [Bloat] [Make-wifi-fast] The most wonderful video ever
 about bufferbloat
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
 Rpm <rpm@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============5820532858619760731=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5820532858619760731==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000947cec05eac5e0f8"

--000000000000947cec05eac5e0f8
Content-Type: multipart/alternative; boundary="0000000000007e648e05eac5e0f6"

--0000000000007e648e05eac5e0f6
Content-Type: text/plain; charset="UTF-8"

Graphs are on the todo list but not a high priority. Too many
different ways to graph, e.g. gnuplot, matplotlib.  Also, if one wants full
features including one way delays (OWD,) the GPS & pulse per second is
useful. A GPS hat on a raspberry pi
<https://www.satsignal.eu/ntp/Raspberry-Pi-quickstart.html> works for me.
Then one can use Little's law to get the memory size driving bloat.

There is some graph support in the flows python code
<https://sourceforge.net/p/iperf2/code/ci/master/tree/flows/> but not for
bounceback (yet)  It's the e2e latency OWD histogram plots
<https://sourceforge.net/p/iperf2/code/ci/master/tree/flows/flows.py> that
most network engineers are using to date. No real ask for BB plots as once
the clocks are sync'd, engineers tend to gravitate to latency
analysis based upon OWD. What also may be of interest is some form of web
interface into probe devices that could support asks of basic questions
like, when did the network underperform and was WiFi to blame? What was
going on with other RF carriers at this time? One could also use
statistical process controls (SPC) to monitor the non-parametric
distributions to help answer questions about intermittent phenomena. As an
aside, I do notice on some devices that bloat is intermittent so one-shot
tests can miss it per the lack of continuous monitoring.
Bob

On Tue, Oct 11, 2022 at 10:26 AM Sebastian Moeller <moeller0@gmx.de> wrote:

> Hi Bob,
>
> Sweet, thanks! Will go and set this up in my home network, but that will
> take a while. Also any proposal how to convert the output into some graphs
> by any chance?
>
> Regards
> Sebastian
>
> On 11 October 2022 18:58:05 CEST, Bob McMahon <bob.mcmahon@broadcom.com>
> wrote:
>>
>> > Saturate a link in both directions simultaneously with multiple greedy
>> flows while measuring load-dependent latency changes for small isochronous
>> probe flows.
>>
>> This functionality is released in iperf 2.1.8 per the bounceback feature
>> but, unfortunately, OpenWRT doesn't maintain iperf 2 as a package anymore
>> and uses 2.0.13
>> CLIENT SPECIFIC OPTIONS*--bounceback[=**n**]*run a TCP bounceback or rps
>> test with optional number writes in a burst per value of n. The default is
>> ten writes every period and the default period is one second (Note: set
>> size with -l or --len which defaults to 100 bytes)
>> *--bounceback-congest[=up|down|bidir][*,*n**]*request a concurrent
>> working load or TCP stream(s), defaults to full duplex (or bidir) unless
>> the *up* or *down* option is provided. The number of TCP streams
>> defaults to 1 and can be changed via the n value, e.g.
>> *--bounceback-congest=down,4* will use four TCP streams from server to
>> the client as the working load. The IP ToS will be BE (0x0) for working
>> load traffic.*--bounceback-hold **n*request the server to insert a delay
>> of n milliseconds between its read and write (default is no delay)
>> *--bounceback-period[=**n**]*request the client schedule its send(s)
>> every n seconds (default is one second, use zero value for immediate or
>> continuous back to back)*--bounceback-no-quickack*request the server not
>> set the TCP_QUICKACK socket option (disabling TCP ACK delays) during a
>> bounceback test (see NOTES)*--bounceback-txdelay **n*request the client
>> to delay n seconds between the start of the working load and the bounceback
>> traffic (default is no delay)
>>
>> On Tue, Oct 11, 2022 at 12:15 AM Sebastian Moeller <moeller0@gmx.de>
>> wrote:
>>
>>> Hi Bob,
>>>
>>> On 11 October 2022 02:05:40 CEST, Bob McMahon <bob.mcmahon@broadcom.com>
>>> wrote:
>>> >It's too big because it's oversized so it's in the size domain. It's
>>> >basically Little's law's value for the number of items in a queue.
>>> >
>>> >*Number of items in the system = (the rate items enter and leave the
>>> >system) x (the average amount of time items spend in the system)*
>>> >
>>> >
>>> >Which gets driven to the standing queue size when the arrival rate
>>> >exceeds the service rate - so the driving factor isn't the service and
>>> >arrival rates, but *the queue size *when *any service rate is less than
>>> an
>>> >arrival rate.*
>>>
>>> [SM] You could also argue it is the ratio of arrival to service rates,
>>> with the queue size being a measure correlating with how long the system
>>> will tolerate ratios larger than one...
>>>
>>>
>>> >
>>> >In other words, one can find and measure bloat regardless of the
>>> >enter/leave rates (as long as the leave rate is too slow) and the value
>>> of
>>> >memory units found will always be the same.
>>> >
>>> >Things like prioritizations to jump the line are somewhat of hacks at
>>> >reducing the service time for a specialized class of packets but nobody
>>> >really knows which packets should jump.
>>>
>>> [SM] Au contraire most everybody 'knows' it is their packets that should
>>> jump ahead of the rest ;) For intermediate hop queues however that endpoint
>>> perception is not really actionable due to lack of robust and reliable
>>> importance identifiers on packets. In side a 'domain' dscps might work if
>>> treated to strict admission control, but that typically will not help
>>> end2end traffic over the internet. This is BTW why I think FQ is a great
>>> concept, as it mostly results in the desirable outcome of not picking
>>> winners and losers (like arbitrarily starving a flow), but I digress.
>>>
>>> >Also, nobody can define what
>>> >working conditions are so that's another problem with this class of
>>> tests.
>>>
>>> [SM] While real working conditions will be different for each link and
>>> probably vary over time, it seems achievable to come up with a set of
>>> pessimistic assumptions how to model a challenging work condition against
>>> which to test potential remedies, assuming that such remedies will also
>>> work well under less challenging conditions, no?
>>>
>>>
>>> >
>>> >Better maybe just to shrink the queue and eliminate all unneeded
>>> queueing
>>> >delays.
>>>
>>> [SM] The 'unneeded' does a lot of work in that sentence ;). I like
>>> Van's? Description of queues as shock absorbers so queue size will have a
>>> lower acceptable limit assuming users want to achieve 'acceptable'
>>> throughput even with existing bursty senders. (Not all applications are
>>> suited for pacing so some level of burstiness seems unavoidable).
>>>
>>>
>>> > Also, measure the performance per "user conditions" which is going
>>> >to be different for almost every environment (and is correlated to time
>>> and
>>> >space.) So any engineering solution is fundamentally suboptimal.
>>>
>>> [SM] A matter of definition, if the requirement is to cover many user
>>> conditions the optimality measure simply needs to be changed from per
>>> individual condition to over many/all conditions, no?
>>>
>>> >Even
>>> >pacing the source doesn't necessarily do the right thing because that's
>>> >like waiting in the waitlist while at home vs the restaurant lobby.
>>>
>>> [SM] +1.
>>>
>>> > Few
>>> >care about where messages wait (unless the pitch is AQM is the only
>>> >solution that drives to a self-fulfilling prophecy - that's why the
>>> tests
>>> >have to come up with artificial conditions that can't be simply
>>> defined.)
>>>
>>> Hrm, so the RRUL test, while not the end all of bufferbloat/working
>>> conditions tests, is not that complicated:
>>> Saturate a link in both directions simultaneously with multiple greedy
>>> flows while measuring load-dependent latency changes for small isochronous
>>> probe flows.
>>>
>>> Yes, the it would be nice to have additional higher rate probe flows
>>> also bursty ones to emulate on-linev games, and 'pumped' greedy flows to
>>> emulate DASH 'streaming', and a horde of small greedy flows that mostly end
>>> inside the initial window and slow start. But at its core existing RRUL
>>> already gives a useful estimate on how a link behaves under saturating
>>> loads all the while being relatively simple.
>>> The responsiveness under working condition seems similar in that it
>>> tries to saturate a link with an increasing number of greedy flows, in a
>>> sense to create a reasonable bad case that ideally rarely happens.
>>>
>>> Regards
>>>       Sebastian
>>>
>>>
>>> >
>>> >Bob
>>> >
>>> >On Mon, Oct 10, 2022 at 3:57 PM David Lang <david@lang.hm> wrote:
>>> >
>>> >> On Mon, 10 Oct 2022, Bob McMahon via Bloat wrote:
>>> >>
>>> >> > I think conflating bufferbloat with latency misses the subtle point
>>> in
>>> >> that
>>> >> > bufferbloat is a measurement in memory units more than a
>>> measurement in
>>> >> > time units. The first design flaw is a queue that is too big. This
>>> >> youtube
>>> >> > video analogy doesn't help one understand this important point.
>>> >>
>>> >> but the queue is only too big because of the time it takes to empty
>>> the
>>> >> queue,
>>> >> which puts us back into the time domain.
>>> >>
>>> >> David Lang
>>> >>
>>> >> > Another subtle point is that the video assumes AQM as the only
>>> solution
>>> >> and
>>> >> > ignores others, i.e. pacing at the source(s) and/or faster service
>>> >> rates. A
>>> >> > restaurant that let's one call ahead to put their name on the
>>> waitlist
>>> >> > doesn't change the wait time. Just because a transport layer slowed
>>> down
>>> >> > and hasn't congested a downstream queue doesn't mean the e2e latency
>>> >> > performance will meet the gaming needs as an example. The delay is
>>> still
>>> >> > there it's just not manifesting itself in a shared queue that may
>>> or may
>>> >> > not negatively impact others using that shared queue.
>>> >> >
>>> >> > Bob
>>> >> >
>>> >> >
>>> >> >
>>> >> > On Mon, Oct 10, 2022 at 2:40 AM Sebastian Moeller via
>>> Make-wifi-fast <
>>> >> > make-wifi-fast@lists.bufferbloat.net> wrote:
>>> >> >
>>> >> >> Hi Erik,
>>> >> >>
>>> >> >>
>>> >> >>> On Oct 10, 2022, at 11:32, Taraldsen Erik <
>>> erik.taraldsen@telenor.no>
>>> >> >> wrote:
>>> >> >>>
>>> >> >>> On 10/10/2022, 11:09, "Sebastian Moeller" <moeller0@gmx.de>
>>> wrote:
>>> >> >>>
>>> >> >>>    Nice!
>>> >> >>>
>>> >> >>>> On Oct 10, 2022, at 07:52, Taraldsen Erik via Cake <
>>> >> >> cake@lists.bufferbloat.net> wrote:
>>> >> >>>>
>>> >> >>>> It took about 3 hours from the video was release before we got
>>> the
>>> >> >> first request to have SQM on the CPE's  we manage as a ISP.
>>> Finally
>>> >> >> getting some customer response on the issue.
>>> >> >>>
>>> >> >>>       [SM] Will you be able to bump these requests to higher-ups
>>> and at
>>> >> >> least change some perception of customer demand for tighter latency
>>> >> >> performance?
>>> >> >>>
>>> >> >>> That would be the hope.
>>> >> >>
>>> >> >>         [SM} Excellent, hope this plays out as we wish for.
>>> >> >>
>>> >> >>
>>> >> >>>  We actually have fq_codel implemented on the two latest
>>> generations of
>>> >> >> DSL routers.  Use sync rate as input to set the rate.  Works quite
>>> well.
>>> >> >>
>>> >> >>         [SM] Cool, if I might ask what fraction of the sync are you
>>> >> >> setting the traffic shaper for and are you doing fine grained
>>> overhead
>>> >> >> accounting (or simply fold that into a grand "de-rating"-factor)?
>>> >> >>
>>> >> >>
>>> >> >>> There is also a bit of traction around speedtest.net's inclusion
>>> of
>>> >> >> latency under load internally.
>>> >> >>
>>> >> >>         [SM] Yes, although IIUC they are reporting the
>>> interquartile
>>> >> mean
>>> >> >> for the two loaded latency estimates, which is pretty conservative
>>> and
>>> >> only
>>> >> >> really "triggers" for massive consistently elevated latency; so I
>>> expect
>>> >> >> this to be great for detecting really bad cases, but I fear it is
>>> too
>>> >> >> conservative and will make a number of problematic links look OK.
>>> But
>>> >> hey,
>>> >> >> even that is leaps and bounds better than the old only idle latency
>>> >> report.
>>> >> >>
>>> >> >>
>>> >> >>> My hope is that some publication in Norway will pick up on that
>>> score
>>> >> >> and do a test and get some mainstream publicity with the results.
>>> >> >>
>>> >> >>         [SM] Inside the EU the challenge is to get national
>>> regulators
>>> >> and
>>> >> >> the BEREC to start bothering about latency-under-load at all, "some
>>> >> >> mainstream publicity" would probably help here as well.
>>> >> >>
>>> >> >> Regards
>>> >> >>         Sebastian
>>> >> >>
>>> >> >>
>>> >> >>>
>>> >> >>> -Erik
>>> >> >>>
>>> >> >>>
>>> >> >>>
>>> >> >>
>>> >> >> _______________________________________________
>>> >> >> Make-wifi-fast mailing list
>>> >> >> Make-wifi-fast@lists.bufferbloat.net
>>> >> >> https://lists.bufferbloat.net/listinfo/make-wifi-fast
>>> >> >
>>> >> >_______________________________________________
>>> >> Bloat mailing list
>>> >> Bloat@lists.bufferbloat.net
>>> >> https://lists.bufferbloat.net/listinfo/bloat
>>> >>
>>> >
>>>
>>> --
>>> Sent from my Android device with K-9 Mail. Please excuse my brevity.
>>>
>>
>> This electronic communication and the information and any files
>> transmitted with it, or attached to it, are confidential and are intended
>> solely for the use of the individual or entity to whom it is addressed and
>> may contain information that is confidential, legally privileged, protected
>> by privacy laws, or otherwise restricted from disclosure to anyone else. If
>> you are not the intended recipient or the person responsible for delivering
>> the e-mail to the intended recipient, you are hereby notified that any use,
>> copying, distributing, dissemination, forwarding, printing, or copying of
>> this e-mail is strictly prohibited. If you received this e-mail in error,
>> please return the e-mail to the sender, delete it from your computer, and
>> destroy any printed copy of it.
>
> --
> Sent from my Android device with K-9 Mail. Please excuse my brevity.
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

--0000000000007e648e05eac5e0f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div id=3D"gmail-:1qi" class=3D"gmail-Am gmail-aO9 gmail-A=
l editable gmail-LW-avf gmail-tS-tW gmail-tS-tY" aria-label=3D"Message Body=
" role=3D"textbox" aria-multiline=3D"true" tabindex=3D"1" style=3D"directio=
n:ltr;min-height:85px" aria-controls=3D":2zj">Graphs are on the todo list b=
ut not a high priority. Too many different=C2=A0ways to graph, e.g. gnuplot=
, matplotlib.=C2=A0 Also, if one wants full features including one way dela=
ys (OWD,) the GPS &amp; pulse per second is useful. A <a href=3D"https://ww=
w.satsignal.eu/ntp/Raspberry-Pi-quickstart.html">GPS hat on a raspberry pi<=
/a> works=C2=A0for me. Then one can use Little&#39;s law to get the memory =
size driving bloat.<br><br>There is some graph support in the <a href=3D"ht=
tps://sourceforge.net/p/iperf2/code/ci/master/tree/flows/">flows python=C2=
=A0code</a> but not for bounceback (yet)=C2=A0 It&#39;s the e2e latency <a =
href=3D"https://sourceforge.net/p/iperf2/code/ci/master/tree/flows/flows.py=
">OWD histogram plots</a> that most network=C2=A0engineers are using to dat=
e. No real ask for BB plots as once the clocks are sync&#39;d, engineers te=
nd to gravitate=C2=A0to latency analysis=C2=A0based upon OWD. What also may=
 be of interest is some form of web interface into probe devices that could=
 support asks=C2=A0of basic questions like, when did the network underperfo=
rm and was WiFi to blame? What was going on with other RF carriers at this =
time? One=C2=A0could also use statistical=C2=A0process controls (SPC) to mo=
nitor the non-parametric distributions to help answer questions about inter=
mittent phenomena. As an aside, I do notice on some devices that bloat is i=
ntermittent so one-shot tests can miss it per the lack of continuous monito=
ring.</div><div id=3D"gmail-:1qi" class=3D"gmail-Am gmail-aO9 gmail-Al edit=
able gmail-LW-avf gmail-tS-tW gmail-tS-tY" aria-label=3D"Message Body" role=
=3D"textbox" aria-multiline=3D"true" tabindex=3D"1" style=3D"min-height:85p=
x" aria-controls=3D":2zj">Bob</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 11, 2022 at 10:26 AM Sebasti=
an Moeller &lt;<a href=3D"mailto:moeller0@gmx.de">moeller0@gmx.de</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>Hi Bo=
b,<br><br>Sweet, thanks! Will go and set this up in my home network, but th=
at will take a while. Also any proposal how to convert the output into some=
 graphs by any chance?<br><br>Regards<br>        Sebastian<br><br><div clas=
s=3D"gmail_quote">On 11 October 2022 18:58:05 CEST, Bob McMahon &lt;<a href=
=3D"mailto:bob.mcmahon@broadcom.com" target=3D"_blank">bob.mcmahon@broadcom=
.com</a>&gt; wrote:<blockquote class=3D"gmail_quote" style=3D"margin:0pt 0p=
t 0pt 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">&gt; Saturate a link in both directions simultaneously wit=
h multiple greedy flows while measuring load-dependent latency changes for =
small isochronous probe flows.<br><div><br></div><div>This functionality is=
 released in iperf 2.1.8 per the bounceback feature but, unfortunately, Ope=
nWRT doesn&#39;t maintain iperf 2 as a package anymore and uses 2.0.13=C2=
=A0<br><h2 style=3D"color:rgb(0,0,0);font-family:&quot;Times New Roman&quot=
;">CLIENT SPECIFIC OPTIONS</h2><dl compact style=3D"color:rgb(0,0,0);font-f=
amily:&quot;Times New Roman&quot;;font-size:medium"><dt><b>--bounceback[=3D=
</b><i>n</i><b>]</b></dt><dd>run a TCP bounceback or rps test with optional=
 number writes in a burst per value of n. The default is ten writes every p=
eriod and the default period is one second (Note: set size with -l or --len=
 which defaults to 100 bytes)</dd><dt><b>--bounceback-congest[=3Dup|down|bi=
dir][</b>,<i>n</i><b>]</b></dt><dd>request a concurrent working load or TCP=
 stream(s), defaults to full duplex (or bidir) unless the=C2=A0<b>up</b>=C2=
=A0or=C2=A0<b>down</b>=C2=A0option is provided. The number of TCP streams d=
efaults to 1 and can be changed via the n value, e.g.=C2=A0<b>--bounceback-=
congest=3Ddown,4</b>=C2=A0will use four TCP streams from server to the clie=
nt as the working load. The IP ToS will be BE (0x0) for working load traffi=
c.</dd><dt><b>--bounceback-hold=C2=A0</b><i>n</i></dt><dd>request the serve=
r to insert a delay of n milliseconds between its read and write (default i=
s no delay)</dd><dt><b>--bounceback-period[=3D</b><i>n</i><b>]</b></dt><dd>=
request the client schedule its send(s) every n seconds (default is one sec=
ond, use zero value for immediate or continuous back to back)</dd><dt><b>--=
bounceback-no-quickack</b></dt><dd>request the server not set the TCP_QUICK=
ACK socket option (disabling TCP ACK delays) during a bounceback test (see =
NOTES)</dd><dt><b>--bounceback-txdelay=C2=A0</b><i>n</i></dt><dd>request th=
e client to delay n seconds between the start of the working load and the b=
ounceback traffic (default is no delay)</dd></dl></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 11, 2022=
 at 12:15 AM Sebastian Moeller &lt;<a href=3D"mailto:moeller0@gmx.de" targe=
t=3D"_blank">moeller0@gmx.de</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">Hi Bob,<br>
<br>
On 11 October 2022 02:05:40 CEST, Bob McMahon &lt;<a href=3D"mailto:bob.mcm=
ahon@broadcom.com" target=3D"_blank">bob.mcmahon@broadcom.com</a>&gt; wrote=
:<br>
&gt;It&#39;s too big because it&#39;s oversized so it&#39;s in the size dom=
ain. It&#39;s<br>
&gt;basically Little&#39;s law&#39;s value for the number of items in a que=
ue.<br>
&gt;<br>
&gt;*Number of items in the system =3D (the rate items enter and leave the<=
br>
&gt;system) x (the average amount of time items spend in the system)*<br>
&gt;<br>
&gt;<br>
&gt;Which gets driven to the standing queue size when the arrival rate<br>
&gt;exceeds the service rate - so the driving factor isn&#39;t the service =
and<br>
&gt;arrival rates, but *the queue size *when *any service rate is less than=
 an<br>
&gt;arrival rate.*<br>
<br>
[SM] You could also argue it is the ratio of arrival to service rates, with=
 the queue size being a measure correlating with how long the system will t=
olerate ratios larger than one...<br>
<br>
<br>
&gt;<br>
&gt;In other words, one can find and measure bloat regardless of the<br>
&gt;enter/leave rates (as long as the leave rate is too slow) and the value=
 of<br>
&gt;memory units found will always be the same.<br>
&gt;<br>
&gt;Things like prioritizations to jump the line are somewhat of hacks at<b=
r>
&gt;reducing the service time for a specialized class of packets but nobody=
<br>
&gt;really knows which packets should jump. <br>
<br>
[SM] Au contraire most everybody &#39;knows&#39; it is their packets that s=
hould jump ahead of the rest ;) For intermediate hop queues however that en=
dpoint perception is not really actionable due to lack of robust and reliab=
le importance identifiers on packets. In side a &#39;domain&#39; dscps migh=
t work if treated to strict admission control, but that typically will not =
help end2end traffic over the internet. This is BTW why I think FQ is a gre=
at concept, as it mostly results in the desirable outcome of not picking wi=
nners and losers (like arbitrarily starving a flow), but I digress.<br>
<br>
&gt;Also, nobody can define what<br>
&gt;working conditions are so that&#39;s another problem with this class of=
 tests.<br>
<br>
[SM] While real working conditions will be different for each link and prob=
ably vary over time, it seems achievable to come up with a set of pessimist=
ic assumptions how to model a challenging work condition against which to t=
est potential remedies, assuming that such remedies will also work well und=
er less challenging conditions, no?<br>
<br>
<br>
&gt;<br>
&gt;Better maybe just to shrink the queue and eliminate all unneeded queuei=
ng<br>
&gt;delays. <br>
<br>
[SM] The &#39;unneeded&#39; does a lot of work in that sentence ;). I like =
Van&#39;s? Description of queues as shock absorbers so queue size will have=
 a lower acceptable limit assuming users want to achieve &#39;acceptable&#3=
9; throughput even with existing bursty senders. (Not all applications are =
suited for pacing so some level of burstiness seems unavoidable).<br>
<br>
<br>
&gt; Also, measure the performance per &quot;user conditions&quot; which is=
 going<br>
&gt;to be different for almost every environment (and is correlated to time=
 and<br>
&gt;space.) So any engineering solution is fundamentally suboptimal. <br>
<br>
[SM] A matter of definition, if the requirement is to cover many user condi=
tions the optimality measure simply needs to be changed from per individual=
 condition to over many/all conditions, no?<br>
<br>
&gt;Even<br>
&gt;pacing the source doesn&#39;t necessarily do the right thing because th=
at&#39;s<br>
&gt;like waiting in the waitlist while at home vs the restaurant lobby. <br=
>
<br>
[SM] +1.<br>
<br>
&gt; Few<br>
&gt;care about where messages wait (unless the pitch is AQM is the only<br>
&gt;solution that drives to a self-fulfilling prophecy - that&#39;s why the=
 tests<br>
&gt;have to come up with artificial conditions that can&#39;t be simply def=
ined.)<br>
<br>
Hrm, so the RRUL test, while not the end all of bufferbloat/working conditi=
ons tests, is not that complicated:<br>
Saturate a link in both directions simultaneously with multiple greedy flow=
s while measuring load-dependent latency changes for small isochronous prob=
e flows.<br>
<br>
Yes, the it would be nice to have additional higher rate probe flows also b=
ursty ones to emulate on-linev games, and &#39;pumped&#39; greedy flows to =
emulate DASH &#39;streaming&#39;, and a horde of small greedy flows that mo=
stly end inside the initial window and slow start. But at its core existing=
 RRUL already gives a useful estimate on how a link behaves under saturatin=
g loads all the while being relatively simple.<br>
The responsiveness under working condition seems similar in that it tries t=
o saturate a link with an increasing number of greedy flows, in a sense to =
create a reasonable bad case that ideally rarely happens.<br>
<br>
Regards<br>
=C2=A0 =C2=A0 =C2=A0 Sebastian<br>
<br>
<br>
&gt;<br>
&gt;Bob<br>
&gt;<br>
&gt;On Mon, Oct 10, 2022 at 3:57 PM David Lang &lt;<a href=3D"mailto:david@=
lang.hm" target=3D"_blank">david@lang.hm</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; On Mon, 10 Oct 2022, Bob McMahon via Bloat wrote:<br>
&gt;&gt;<br>
&gt;&gt; &gt; I think conflating bufferbloat with latency misses the subtle=
 point in<br>
&gt;&gt; that<br>
&gt;&gt; &gt; bufferbloat is a measurement in memory units more than a meas=
urement in<br>
&gt;&gt; &gt; time units. The first design flaw is a queue that is too big.=
 This<br>
&gt;&gt; youtube<br>
&gt;&gt; &gt; video analogy doesn&#39;t help one understand this important =
point.<br>
&gt;&gt;<br>
&gt;&gt; but the queue is only too big because of the time it takes to empt=
y the<br>
&gt;&gt; queue,<br>
&gt;&gt; which puts us back into the time domain.<br>
&gt;&gt;<br>
&gt;&gt; David Lang<br>
&gt;&gt;<br>
&gt;&gt; &gt; Another subtle point is that the video assumes AQM as the onl=
y solution<br>
&gt;&gt; and<br>
&gt;&gt; &gt; ignores others, i.e. pacing at the source(s) and/or faster se=
rvice<br>
&gt;&gt; rates. A<br>
&gt;&gt; &gt; restaurant that let&#39;s one call ahead to put their name on=
 the waitlist<br>
&gt;&gt; &gt; doesn&#39;t change the wait time. Just because a transport la=
yer slowed down<br>
&gt;&gt; &gt; and hasn&#39;t congested a downstream queue doesn&#39;t mean =
the e2e latency<br>
&gt;&gt; &gt; performance will meet the gaming needs as an example. The del=
ay is still<br>
&gt;&gt; &gt; there it&#39;s just not manifesting itself in a shared queue =
that may or may<br>
&gt;&gt; &gt; not negatively impact others using that shared queue.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Bob<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Mon, Oct 10, 2022 at 2:40 AM Sebastian Moeller via Make-wi=
fi-fast &lt;<br>
&gt;&gt; &gt; <a href=3D"mailto:make-wifi-fast@lists.bufferbloat.net" targe=
t=3D"_blank">make-wifi-fast@lists.bufferbloat.net</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; Hi Erik,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; On Oct 10, 2022, at 11:32, Taraldsen Erik &lt;<a href=
=3D"mailto:erik.taraldsen@telenor.no" target=3D"_blank">erik.taraldsen@tele=
nor.no</a>&gt;<br>
&gt;&gt; &gt;&gt; wrote:<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; On 10/10/2022, 11:09, &quot;Sebastian Moeller&quot; &=
lt;<a href=3D"mailto:moeller0@gmx.de" target=3D"_blank">moeller0@gmx.de</a>=
&gt; wrote:<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 Nice!<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; On Oct 10, 2022, at 07:52, Taraldsen Erik via Cak=
e &lt;<br>
&gt;&gt; &gt;&gt; <a href=3D"mailto:cake@lists.bufferbloat.net" target=3D"_=
blank">cake@lists.bufferbloat.net</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; It took about 3 hours from the video was release =
before we got the<br>
&gt;&gt; &gt;&gt; first request to have SQM on the CPE&#39;s=C2=A0 we manag=
e as a ISP.=C2=A0 Finally<br>
&gt;&gt; &gt;&gt; getting some customer response on the issue.<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0[SM] Will you be able to bu=
mp these requests to higher-ups and at<br>
&gt;&gt; &gt;&gt; least change some perception of customer demand for tight=
er latency<br>
&gt;&gt; &gt;&gt; performance?<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; That would be the hope.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[SM} Excellent, hope thi=
s plays out as we wish for.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;=C2=A0 We actually have fq_codel implemented on the tw=
o latest generations of<br>
&gt;&gt; &gt;&gt; DSL routers.=C2=A0 Use sync rate as input to set the rate=
.=C2=A0 Works quite well.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[SM] Cool, if I might as=
k what fraction of the sync are you<br>
&gt;&gt; &gt;&gt; setting the traffic shaper for and are you doing fine gra=
ined overhead<br>
&gt;&gt; &gt;&gt; accounting (or simply fold that into a grand &quot;de-rat=
ing&quot;-factor)?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; There is also a bit of traction around <a href=3D"htt=
p://speedtest.net" rel=3D"noreferrer" target=3D"_blank">speedtest.net</a>&#=
39;s inclusion of<br>
&gt;&gt; &gt;&gt; latency under load internally.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[SM] Yes, although IIUC =
they are reporting the interquartile<br>
&gt;&gt; mean<br>
&gt;&gt; &gt;&gt; for the two loaded latency estimates, which is pretty con=
servative and<br>
&gt;&gt; only<br>
&gt;&gt; &gt;&gt; really &quot;triggers&quot; for massive consistently elev=
ated latency; so I expect<br>
&gt;&gt; &gt;&gt; this to be great for detecting really bad cases, but I fe=
ar it is too<br>
&gt;&gt; &gt;&gt; conservative and will make a number of problematic links =
look OK. But<br>
&gt;&gt; hey,<br>
&gt;&gt; &gt;&gt; even that is leaps and bounds better than the old only id=
le latency<br>
&gt;&gt; report.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; My hope is that some publication in Norway will pick =
up on that score<br>
&gt;&gt; &gt;&gt; and do a test and get some mainstream publicity with the =
results.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[SM] Inside the EU the c=
hallenge is to get national regulators<br>
&gt;&gt; and<br>
&gt;&gt; &gt;&gt; the BEREC to start bothering about latency-under-load at =
all, &quot;some<br>
&gt;&gt; &gt;&gt; mainstream publicity&quot; would probably help here as we=
ll.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Regards<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Sebastian<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; -Erik<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; _______________________________________________<br>
&gt;&gt; &gt;&gt; Make-wifi-fast mailing list<br>
&gt;&gt; &gt;&gt; <a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" t=
arget=3D"_blank">Make-wifi-fast@lists.bufferbloat.net</a><br>
&gt;&gt; &gt;&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/make-wi=
fi-fast" rel=3D"noreferrer" target=3D"_blank">https://lists.bufferbloat.net=
/listinfo/make-wifi-fast</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;_______________________________________________<br>
&gt;&gt; Bloat mailing list<br>
&gt;&gt; <a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">B=
loat@lists.bufferbloat.net</a><br>
&gt;&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"no=
referrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a=
><br>
&gt;&gt;<br>
&gt;<br>
<br>
-- <br>
Sent from my Android device with K-9 Mail. Please excuse my brevity.<br>
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
 copy of it.</font></span></blockquote></div><div style=3D"white-space:pre-=
wrap"><div>-- <br>Sent from my Android device with K-9 Mail. Please excuse =
my brevity.</div></div></div></blockquote></div>

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
--0000000000007e648e05eac5e0f6--

--000000000000947cec05eac5e0f8
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
XzCCBUkwggQxoAMCAQICDDGs4Qlq5OZK9mcDzTANBgkqhkiG9w0BAQsFADBbMQswCQYDVQQGEwJC
RTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBHQ0MgUjMg
UGVyc29uYWxTaWduIDIgQ0EgMjAyMDAeFw0yMjA5MTAxMzMzNDFaFw0yNTA5MTAxMzMzNDFaMIGM
MQswCQYDVQQGEwJJTjESMBAGA1UECBMJS2FybmF0YWthMRIwEAYDVQQHEwlCYW5nYWxvcmUxFjAU
BgNVBAoTDUJyb2FkY29tIEluYy4xFDASBgNVBAMTC0JvYiBNY01haG9uMScwJQYJKoZIhvcNAQkB
Fhhib2IubWNtYWhvbkBicm9hZGNvbS5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
AQDBfX3nsBFRdO26im8lhOadVadRmV/YWK+U9OoGlTE+2MDsjJwO5p/Q6iaTUropqMRH1E+EIuhe
/OU6a3/btrqzARE77RaVSdz5swXt7M4ciN+z44nIEx36UQIlFLsBFa3is/J/QLFhTUFFf0wLJsUO
wyja+KvygH/E5TyfeXf5T2Y2wjGZx8jQXZMDmNpfANlEBYDfzCNYcAIQNox8FuPpEpuxWvv7jvxV
X5dfkSef9T/DbsDM0PeTVMVyYIQoRSMBIGxVkaqp0MJglvQ2mU4CXcoOGgm6XC8LoLoEvYojXFKC
fRgCOT5xeMR10UPSBQIljKwt7fPhpYVY+jTtOclpAgMBAAGjggHZMIIB1TAOBgNVHQ8BAf8EBAMC
BaAwgaMGCCsGAQUFBwEBBIGWMIGTME4GCCsGAQUFBzAChkJodHRwOi8vc2VjdXJlLmdsb2JhbHNp
Z24uY29tL2NhY2VydC9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcnQwQQYIKwYBBQUHMAGG
NWh0dHA6Ly9vY3NwLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwME0G
A1UdIARGMEQwQgYKKwYBBAGgMgEoCjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxz
aWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMEkGA1UdHwRCMEAwPqA8oDqGOGh0dHA6Ly9j
cmwuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3JsMCMGA1UdEQQc
MBqBGGJvYi5tY21haG9uQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSME
GDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUpG/4RP1YQA/iXGens9pIRe7CQxMw
DQYJKoZIhvcNAQELBQADggEBACfWLy4qJyCnOa3sl4LEDAMU/gmJ6LbclGE5iR4KanAmlAt92gzN
5lSy/iE+wsRrXiHI7YKFgXX1kVK/RqMiPRrw4hq2j8nxoSi/VFiyS3CsfVMGkbY7HBTlBvla/tH+
+2nJprlXbJyz1GdvoJAeam5RvTWotcCGAjZmMa3U3zMkszgXN849xe3dUK1DauUGiInXEwEdXDcA
/0CVjL3EEMj+kNWcLhrSZKwFtxggUyMW3XWRaAeAL9wOtEaXYqlgbtnV0n9FuoV2TNm3h7Mh7rjV
I2zM+IZ3DE+XFK7dcPwte33u75QyySNJ3UMZqi25CO85yl8Bmo7aWRm99N7HGnkxggJtMIICaQIB
ATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhH
bG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwxrOEJauTmSvZnA80wDQYJ
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIJ8aSuvm4eKFJkbr/lKXWFTjoTiUZ3PA+iOp
X4MntmS4MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIyMTAxMTE3
NDgwMFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQBbNEjDaYwYX2EJB39xC+HHh88Hcs92At92LQjySMuUxP22WlKOqCQO
leKkgu3m5n1TX7dnYUW+T2WSE7QqJ4Ps1t/R/e/HZxKPkupEQCzOnksaxNYB5F+9gCIlaXn+Hb96
0cG+l6PZLvdmtU5ZuXpjfZrc38V67y0JV+t3qqpB36i0P4eNbc+EOAQzZfmHb7h0cO7hyNbjlZ/l
2r9rAlpN1lUZMuTBQD8h6d7y6z97oSbyAI8PkMBpKgl+NCfeJ7A3ob6i9m7yzENUaWONc1b2Pzoa
T3HXDzqSbsyeLhid/j+wCedPQwldZ75bRdwPmDuIvj4PbSEf9XqXZaq2mea9
--000000000000947cec05eac5e0f8--

--===============5820532858619760731==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5820532858619760731==--

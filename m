Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 317E38B6581
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:23 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 67F843CBFF;
	Mon, 29 Apr 2024 18:18:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429134;
	bh=zqNGPnD68d9FAPFiNX4v71avp7OMmJOjxwFgvFFXCVw=;
	h=To:References:In-Reply-To:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=LLfK8UbIGPgMtapMDxXo54KOVVILwyHYML2UD6N0crL6cBkWE92yDX6+h/5jWUOdi
	 2W6T0j9k+mfvNsGg5APoSeXJlNCTaZSWsDMhtKvg1IP9VIx3eNaV75wvoraoLCj8bG
	 V595kPoUXIyggO/ht1YE8euN3QKYjg7aIY767DpORrJeEIKnbaivPFzRszDdFFTP00
	 6KlqnB5I+9GVDFJagkyQNbUrWIw2x1waiNyM7aHQ3NqW9hmT12GAozn7236GaKfQJK
	 iA/LeJ8PT9mCUOvvC3spLhgxk2tGbRToL5rsdOayEdkijoo+zw9RMVRnEYnJMFNSmZ
	 IKnBCNVKPBXaA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from bosmailout10.eigbox.net (bosmailout10.eigbox.net [66.96.190.10])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 259AC3B2A4;
 Fri,  6 Jan 2023 19:31:57 -0500 (EST)
Received: from [10.20.15.5] (helo=bosmailscan05.eigbox.net)
 by bosmailout10.eigbox.net with esmtp (Exim)
 id 1pDx7s-0003MM-Ng; Fri, 06 Jan 2023 19:31:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=alum.mit.edu; s=dkim; h=Sender:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=azqI8zO7N8pC12SJu0FgpJk7Sy6GyutSkoKWxykbWjA=; b=RQLcFfInW9Q7rIyBNsOYTxfQNX
 vInV0SlS6P+B0I2vwKEGfWv9kO5Rxq3EQB4R4q6PLCdmHXR+uZmE8SeGWrxeVJ9UIuet5FhKTdDn2
 BcSP2eaLWmSYzD8IbpLCD1PX70iMwrb6h0hTV8JnQwpC4TjDt4Jwv6g5hMOMZwKBg8+6KkeEivunR
 5m79BHe3a/XdjoBNRcAjn/TeM+taL/u7QnTUSiWMS6PQrSx57bMiok8oIsOQJ3KAmeWePrHAQEMSd
 JJ64VRzi+LS7M8lQn6hrFRkOoHblAnpCoqAnJqaUcbR4DOYLYDCtYtpp2uUwEJZKRIGgVdtJLOjoA
 cdR9Pu+A==;
Received: from [10.115.3.32] (helo=bosimpout12)
 by bosmailscan05.eigbox.net with esmtp (Exim)
 id 1pDx7s-0001Ru-6V; Fri, 06 Jan 2023 19:31:56 -0500
Received: from bosauthsmtp19.yourhostingaccount.com ([10.20.18.19])
 by bosimpout12 with 
 id 5cXs2900D0QhFXN01cXv6F; Fri, 06 Jan 2023 19:31:56 -0500
X-Authority-Analysis: v=2.3 cv=d4VuNSrE c=1 sm=1 tr=0
 a=9UqFsMnAB6EOkiq4MrOclQ==:117 a=nIEF4cAZMyOU5h9mcfI6lg==:17
 a=RvmDmJFTN0MA:10 a=6ulraYUaiNAA:10 a=r77TgQKjGQsHNAKrUKIA:9 a=usUTcz4nAAAA:8
 a=8pif782wAAAA:8 a=FP58Ms26AAAA:8 a=kurRqvosAAAA:8 a=uherdBYGAAAA:8
 a=EG7W4yiQAAAA:8 a=8Xp2mhFtJn07sRfyZJYA:9 a=CjuIK1q_8ugA:10 a=7utUOSbz6MoA:10
 a=SSmOFEACAAAA:8 a=8_TnXZ51w0tgx5qDfQ0A:9 a=0zm6xDUN9OosqQ_7:21
 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10
 a=MqnEBYhnR1GEXjMu-uAJ:22 a=kbxRQ_lfPIoQnHsAj2-A:22 a=Ef4yma5cpRUEJWN9UqBm:22
Received: from c-67-180-86-211.hsd1.ca.comcast.net ([67.180.86.211]:63906
 helo=SRA6) by bosauthsmtp19.eigbox.net with esmtpa (Exim)
 id 1pDx7n-00046w-Vn; Fri, 06 Jan 2023 19:31:52 -0500
To: "'rjmcmahon'" <rjmcmahon@rjmcmahon.com>
References: <CAA93jw4sbPeZ42eTLQzPmg_-viBBtbdQogAMgMNndoEHjY5UNA@mail.gmail.com>
 <CH0PR02MB79809552F1D5CEDB832A8590D3FB9@CH0PR02MB7980.namprd02.prod.outlook.com>
 <fa20576f88b9a1880df67417bea48ba6@rjmcmahon.com>
 <89D796E75967416B9723211C183A8396@SRA6>
 <a082b2436e6ba7892d2de8e0dfcc5acd@rjmcmahon.com>
In-Reply-To: <a082b2436e6ba7892d2de8e0dfcc5acd@rjmcmahon.com>
Date: Fri, 6 Jan 2023 16:31:42 -0800
Organization: SRA
Message-ID: <3696AEA5409D4303ABCBC439727A5E40@SRA6>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdkiKObHu2cY2axORaSElG48gpsOtQABYB4w
X-MimeOLE: Produced By Microsoft MimeOLE
X-EN-UserInfo: f809475445fb8041985048e338e1a001:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: dickroy@intellicommunications.com
X-EN-OrigIP: 67.180.86.211
X-EN-OrigHost: c-67-180-86-211.hsd1.ca.comcast.net
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: Re: [Cake] [Starlink] [Rpm] [LibreQoS] the grinch meets
	cloudflare'schristmas present
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
From: Dick Roy via Cake <cake@lists.bufferbloat.net>
Reply-To: dickroy@alum.mit.edu
Cc: 'Rpm' <rpm@lists.bufferbloat.net>, "'MORTON JR., AL'" <acmorton@att.com>,
 'IETF IPPM WG' <ippm@ietf.org>, 'libreqos' <libreqos@lists.bufferbloat.net>,
 'Cake List' <cake@lists.bufferbloat.net>,
 'bloat' <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============0883575002508660138=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

This is a multi-part message in MIME format.

--===============0883575002508660138==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_07C0_01D921EC.61EEF8F0"

This is a multi-part message in MIME format.

------=_NextPart_000_07C0_01D921EC.61EEF8F0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

 

 

-----Original Message-----
From: rjmcmahon [mailto:rjmcmahon@rjmcmahon.com] 
Sent: Friday, January 6, 2023 3:45 PM
To: dickroy@alum.mit.edu
Cc: 'MORTON JR., AL'; 'IETF IPPM WG'; 'libreqos'; 'Cake List'; 'Rpm';
'bloat'
Subject: Re: [Starlink] [Rpm] [LibreQoS] the grinch meets
cloudflare'schristmas present

 

yeah, I'd prefer not to output CLT sample groups at all but the 

histograms aren't really human readable and users constantly ask for 

them. I thought about providing a distance from the gaussian as output 

too but so far few would understand it and nobody I found would act upon 

it. 

[RR] Understandable until such metrics are "actionable", and that's "up to
us to find/define/figure out" it seems to me. Metrics that are not
actionable are write-only memory and good for little but historical
record:-) 

The tool produces the full histograms so no information is really 

missing except for maybe better time series analysis.

[RR] Isn't that in fact what we are trying to extract from the e2e stats we
collect?  i.e., infer the time evolution of the system from its I/O
behavior? As you point out, it's really hard to do without probes in the
guts of the system, nd yes, synchronization is important :-)

 

The open source flows python code also released with iperf 2 does use 

the komogorov-smirnov distances & distance matrices to cluster when the 

number of histograms are just too much. We've analyzed 1M runs to fault 

isolate the "unexpected interruptions" or "bugs" and without statistical 

support it is just not doable. This does require instrumentation of the 

full path with mapping to a common clock domain (e.g. GPS) and not just 

e2e stats. I find an e2e complaint by an end user about "poor speed" as 

useful as telling a pharmacist I have a fever. Not much diagnostically 

is going on. Take an aspirin.

[RR] That's AWESOME!!!!!!!!!!!!!!!!!! I love that analogy!

 

RR

 

https://en.wikipedia.org/wiki/Kolmogorov%E2%80%93Smirnov_test

https://sourceforge.net/p/iperf2/code/ci/master/tree/flows/flows.py

 

Bob

> See below .

> 

> -----Original Message-----

> From: Starlink [mailto:starlink-bounces@lists.bufferbloat.net] On

> Behalf Of rjmcmahon via Starlink

> Sent: Friday, January 6, 2023 12:39 PM

> To: MORTON JR., AL

> Cc: Dave Taht via Starlink; IETF IPPM WG; libreqos; Cake List; Rpm;

> bloat

> Subject: Re: [Starlink] [Rpm] [LibreQoS] the grinch meets

> cloudflare'schristmas present

> 

> Some thoughts are not to use UDP for testing here. Also, these speed

> 

> tests have little to no information for network engineers about what's

> 

> 

> going on. Iperf 2 may better assist network engineers but then I'm

> 

> biased ;)

> 

> Running iperf 2 https://sourceforge.net/projects/iperf2/ with

> 

> --trip-times. Though the sampling and central limit theorem averaging

> is

> 

> hiding the real distributions (use --histograms to get those)

> 

> _[RR] FWIW (IMNBWM __J). If the output/final histograms indicate the

> PDF is NOT Gaussian, then any application of the CLT is

> inappropriate/contra-indicated! The CLT is a "proof under certain

> regularity conditions/assumptions of underlying/constituent PDFs, that

> the resulting PDF (after all the necessary convolutions are performed

> to get to the PDF of the output) will asymptotically approach a

> Gaussian with only a mean and a std. dev. left to specify. _

> 

> Below are 4 parallel TCP streams from my home to one of my servers in

> 

> the cloud. First where TCP is limited per CCA. Second is source side

> 

> write rate limiting. Things to note:

> 

> o) connect times for both at 10-15 ms

> 

> o) multiple TCP retries on a few rites - one case is 4 with 5 writes.

> 

> Source side pacing eliminates retries

> 

> o) Fairness with CCA isn't great but quite good with source side write

> 

> 

> pacing

> 

> o) Queue depth with CCA is about 150 Kbytes about 100K byte with

> source

> 

> side pacing

> 

> o) min write to read is about 80 ms for both

> 

> o) max is 220 ms vs 97 ms

> 

> o) stdev for CCA write/read is 30 ms vs 3 ms

> 

> o) TCP RTT is 20ms w/CCA and 90 ms with ssp - seems odd here as

> 

> TCP_QUICACK and TCP_NODELAY are both enabled.

> 

> [ CT] final connect times (min/avg/max/stdev) =

> 

> 10.326/13.522/14.986/2150.329 ms (tot/err) = 4/0

> 

> [rjmcmahon@ryzen3950 iperf2-code]$ iperf -c *** --hide-ips -e

> 

> --trip-times -i 1 -P 4 -t 10 -w 4m --tcp-quickack -N

> 

> ------------------------------------------------------------

> 

> Client connecting to (**hidden**), TCP port 5001 with pid 107678 (4

> 

> flows)

> 

> Write buffer size: 131072 Byte

> 

> TOS set to 0x0 and nodelay (Nagle off)

> 

> TCP window size: 7.63 MByte (WARNING: requested 3.81 MByte)

> 

> Event based writes (pending queue watermark at 16384 bytes)

> 

> ------------------------------------------------------------

> 

> [  1] local *.*.*.85%enp4s0 port 42480 connected with *.*.*.123 port

> 

> 5001 (prefetch=16384) (trip-times) (sock=3) (qack)

> 

> (icwnd/mss/irtt=14/1448/10534) (ct=10.63 ms) on 2023-01-06 12:17:56

> 

> (PST)

> 

> [  4] local *.*.*.85%enp4s0 port 42488 connected with *.*.*.123 port

> 

> 5001 (prefetch=16384) (trip-times) (sock=5) (qack)

> 

> (icwnd/mss/irtt=14/1448/14023) (ct=14.08 ms) on 2023-01-06 12:17:56

> 

> (PST)

> 

> [  3] local *.*.*.85%enp4s0 port 42502 connected with *.*.*.123 port

> 

> 5001 (prefetch=16384) (trip-times) (sock=6) (qack)

> 

> (icwnd/mss/irtt=14/1448/14642) (ct=14.70 ms) on 2023-01-06 12:17:56

> 

> (PST)

> 

> [  2] local *.*.*.85%enp4s0 port 42484 connected with *.*.*.123 port

> 

> 5001 (prefetch=16384) (trip-times) (sock=4) (qack)

> 

> (icwnd/mss/irtt=14/1448/14728) (ct=14.79 ms) on 2023-01-06 12:17:56

> 

> (PST)

> 

> [ ID] Interval        Transfer    Bandwidth       Write/Err  Rtry

> 

> Cwnd/RTT(var)        NetPwr

> 

> ...

> 

> [  4] 4.00-5.00 sec  1.38 MBytes  11.5 Mbits/sec  11/0         3

> 

> 

> 29K/21088(1142) us  68.37

> 

> [  2] 4.00-5.00 sec  1.62 MBytes  13.6 Mbits/sec  13/0         2

> 

> 

> 31K/19284(612) us  88.36

> 

> [  1] 4.00-5.00 sec   896 KBytes  7.34 Mbits/sec  7/0         5

> 

> 16K/18996(658) us  48.30

> 

> [  3] 4.00-5.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         5

> 

> 18K/18133(208) us  57.83

> 

> [SUM] 4.00-5.00 sec  4.88 MBytes  40.9 Mbits/sec  39/0        15

> 

> [  4] 5.00-6.00 sec  1.25 MBytes  10.5 Mbits/sec  10/0         4

> 

> 

> 29K/14717(489) us  89.06

> 

> [  1] 5.00-6.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         4

> 

> 16K/15874(408) us  66.06

> 

> [  3] 5.00-6.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         4

> 

> 16K/15826(382) us  74.54

> 

> [  2] 5.00-6.00 sec  1.50 MBytes  12.6 Mbits/sec  12/0         6

> 

> 

> 9K/14878(557) us  106

> 

> [SUM] 5.00-6.00 sec  4.88 MBytes  40.9 Mbits/sec  39/0        18

> 

> [  4] 6.00-7.00 sec  1.75 MBytes  14.7 Mbits/sec  14/0         4

> 

> 

> 25K/15472(496) us  119

> 

> [  2] 6.00-7.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         2

> 

> 26K/16417(427) us  63.87

> 

> [  1] 6.00-7.00 sec  1.25 MBytes  10.5 Mbits/sec  10/0         5

> 

> 

> 16K/16268(679) us  80.57

> 

> [  3] 6.00-7.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         6

> 

> 15K/16629(799) us  63.06

> 

> [SUM] 6.00-7.00 sec  5.00 MBytes  41.9 Mbits/sec  40/0        17

> 

> [  4] 7.00-8.00 sec  1.75 MBytes  14.7 Mbits/sec  14/0         4

> 

> 

> 22K/13986(519) us  131

> 

> [  1] 7.00-8.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         4

> 

> 16K/12679(377) us  93.04

> 

> [  3] 7.00-8.00 sec   896 KBytes  7.34 Mbits/sec  7/0         5

> 

> 14K/12971(367) us  70.74

> 

> [  2] 7.00-8.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         6

> 

> 15K/14740(779) us  80.03

> 

> [SUM] 7.00-8.00 sec  4.88 MBytes  40.9 Mbits/sec  39/0        19

> 

> [root@bobcat iperf2-code]# iperf -s -i 1 -e --hide-ips -w 4m

> 

> ------------------------------------------------------------

> 

> Server listening on TCP port 5001 with pid 233615

> 

> Read buffer size:  128 KByte (Dist bin width=16.0 KByte)

> 

> TCP window size: 7.63 MByte (WARNING: requested 3.81 MByte)

> 

> ------------------------------------------------------------

> 

> [  1] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port

> 42480

> 

> (trip-times) (sock=4) (peer 2.1.9-master) (qack)

> 

> (icwnd/mss/irtt=14/1448/11636) on 2023-01-06 12:17:56 (PST)

> 

> [  2] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port

> 42502

> 

> (trip-times) (sock=5) (peer 2.1.9-master) (qack)

> 

> (icwnd/mss/irtt=14/1448/11898) on 2023-01-06 12:17:56 (PST)

> 

> [  3] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port

> 42484

> 

> (trip-times) (sock=6) (peer 2.1.9-master) (qack)

> 

> (icwnd/mss/irtt=14/1448/11938) on 2023-01-06 12:17:56 (PST)

> 

> [  4] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port

> 42488

> 

> (trip-times) (sock=7) (peer 2.1.9-master) (qack)

> 

> (icwnd/mss/irtt=14/1448/11919) on 2023-01-06 12:17:56 (PST)

> 

> [ ID] Interval        Transfer    Bandwidth    Burst Latency

> 

> avg/min/max/stdev (cnt/size) inP NetPwr  Reads=Dist

> 

> ...

> 

> [  2] 4.00-5.00 sec  1.06 MBytes  8.86 Mbits/sec

> 

> 129.819/90.391/186.075/31.346 ms (9/123080)  154 KByte 8.532803

> 

> 467=461:6:0:0:0:0:0:0

> 

> [  3] 4.00-5.00 sec  1.52 MBytes  12.8 Mbits/sec

> 

> 103.552/82.653/169.274/28.382 ms (12/132854)  149 KByte 15.40

> 

> 646=643:1:2:0:0:0:0:0

> 

> [  4] 4.00-5.00 sec  1.39 MBytes  11.6 Mbits/sec

> 

> 107.503/66.843/143.038/24.269 ms (11/132294)  149 KByte 13.54

> 

> 619=617:1:1:0:0:0:0:0

> 

> [  1] 4.00-5.00 sec   988 KBytes  8.10 Mbits/sec

> 

> 141.389/119.961/178.785/18.812 ms (7/144593)  170 KByte 7.158641

> 

> 409=404:5:0:0:0:0:0:0

> 

> [SUM] 4.00-5.00 sec  4.93 MBytes  41.4 Mbits/sec

> 

> 2141=2125:13:3:0:0:0:0:0

> 

> [  4] 5.00-6.00 sec  1.29 MBytes  10.8 Mbits/sec

> 

> 118.943/86.253/176.128/31.248 ms (10/135098)  164 KByte 11.36

> 

> 511=506:2:3:0:0:0:0:0

> 

> [  2] 5.00-6.00 sec  1.09 MBytes  9.17 Mbits/sec

> 

> 139.821/102.418/218.875/40.422 ms (9/127424)  148 KByte 8.202049

> 

> 487=484:2:1:0:0:0:0:0

> 

> [  3] 5.00-6.00 sec  1.51 MBytes  12.6 Mbits/sec

> 

> 102.146/77.085/140.893/18.441 ms (13/121520)  151 KByte 15.47

> 

> 640=636:1:3:0:0:0:0:0

> 

> [  1] 5.00-6.00 sec   981 KBytes  8.04 Mbits/sec

> 

> 161.901/105.582/219.931/36.260 ms (8/125614)  134 KByte 6.206944

> 

> 415=413:2:0:0:0:0:0:0

> 

> [SUM] 5.00-6.00 sec  4.85 MBytes  40.7 Mbits/sec

> 

> 2053=2039:7:7:0:0:0:0:0

> 

> [  4] 6.00-7.00 sec  1.74 MBytes  14.6 Mbits/sec

> 

> 88.846/74.297/101.859/7.118 ms (14/130526)  156 KByte 20.57

> 

> 711=707:3:1:0:0:0:0:0

> 

> [  1] 6.00-7.00 sec  1.22 MBytes  10.2 Mbits/sec

> 

> 120.639/100.257/157.567/21.770 ms (10/127568)  157 KByte 10.57

> 

> 494=488:5:1:0:0:0:0:0

> 

> [  2] 6.00-7.00 sec  1015 KBytes  8.32 Mbits/sec

> 

> 144.632/124.368/171.349/16.597 ms (8/129958)  143 KByte 7.188321

> 

> 408=403:5:0:0:0:0:0:0

> 

> [  3] 6.00-7.00 sec  1.02 MBytes  8.60 Mbits/sec

> 

> 143.516/102.322/173.001/24.089 ms (8/134302)  146 KByte 7.486359

> 

> 484=480:4:0:0:0:0:0:0

> 

> [SUM] 6.00-7.00 sec  4.98 MBytes  41.7 Mbits/sec

> 

> 2097=2078:17:2:0:0:0:0:0

> 

> [  4] 7.00-8.00 sec  1.77 MBytes  14.9 Mbits/sec

> 

> 85.406/65.797/103.418/12.609 ms (14/132595)  153 KByte 21.74

> 

> 692=687:2:3:0:0:0:0:0

> 

> [  2] 7.00-8.00 sec   957 KBytes  7.84 Mbits/sec

> 

> 153.936/131.452/191.464/19.361 ms (7/140042)  160 KByte 6.368199

> 

> 429=425:4:0:0:0:0:0:0

> 

> [  1] 7.00-8.00 sec  1.13 MBytes  9.44 Mbits/sec

> 

> 131.146/109.737/166.774/22.035 ms (9/131124)  146 KByte 8.998528

> 

> 520=516:4:0:0:0:0:0:0

> 

> [  3] 7.00-8.00 sec  1.13 MBytes  9.51 Mbits/sec

> 

> 126.512/88.404/220.175/42.237 ms (9/132089)  172 KByte 9.396784

> 

> 527=524:1:2:0:0:0:0:0

> 

> [SUM] 7.00-8.00 sec  4.96 MBytes  41.6 Mbits/sec

> 

> 2168=2152:11:5:0:0:0:0:0

> 

> With source side rate limiting to 9 mb/s per stream.

> 

> [rjmcmahon@ryzen3950 iperf2-code]$ iperf -c *** --hide-ips -e

> 

> --trip-times -i 1 -P 4 -t 10 -w 4m --tcp-quickack -N -b 9m

> 

> ------------------------------------------------------------

> 

> Client connecting to (**hidden**), TCP port 5001 with pid 108884 (4

> 

> flows)

> 

> Write buffer size: 131072 Byte

> 

> TOS set to 0x0 and nodelay (Nagle off)

> 

> TCP window size: 7.63 MByte (WARNING: requested 3.81 MByte)

> 

> Event based writes (pending queue watermark at 16384 bytes)

> 

> ------------------------------------------------------------

> 

> [  1] local *.*.*.85%enp4s0 port 46448 connected with *.*.*.123 port

> 

> 5001 (prefetch=16384) (trip-times) (sock=3) (qack)

> 

> (icwnd/mss/irtt=14/1448/10666) (ct=10.70 ms) on 2023-01-06 12:27:45

> 

> (PST)

> 

> [  3] local *.*.*.85%enp4s0 port 46460 connected with *.*.*.123 port

> 

> 5001 (prefetch=16384) (trip-times) (sock=6) (qack)

> 

> (icwnd/mss/irtt=14/1448/16499) (ct=16.54 ms) on 2023-01-06 12:27:45

> 

> (PST)

> 

> [  2] local *.*.*.85%enp4s0 port 46454 connected with *.*.*.123 port

> 

> 5001 (prefetch=16384) (trip-times) (sock=4) (qack)

> 

> (icwnd/mss/irtt=14/1448/16580) (ct=16.86 ms) on 2023-01-06 12:27:45

> 

> (PST)

> 

> [  4] local *.*.*.85%enp4s0 port 46458 connected with *.*.*.123 port

> 

> 5001 (prefetch=16384) (trip-times) (sock=5) (qack)

> 

> (icwnd/mss/irtt=14/1448/16802) (ct=16.83 ms) on 2023-01-06 12:27:45

> 

> (PST)

> 

> [ ID] Interval        Transfer    Bandwidth       Write/Err  Rtry

> 

> Cwnd/RTT(var)        NetPwr

> 

> ...

> 

> [  2] 4.00-5.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0

> 

> 134K/88055(12329) us  11.91

> 

> [  4] 4.00-5.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0

> 

> 132K/74867(11755) us  14.01

> 

> [  1] 4.00-5.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0

> 

> 134K/89101(13134) us  11.77

> 

> [  3] 4.00-5.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0

> 

> 131K/91451(11938) us  11.47

> 

> [SUM] 4.00-5.00 sec  4.00 MBytes  33.6 Mbits/sec  32/0         0

> 

> [  2] 5.00-6.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0

> 

> 134K/85135(14580) us  13.86

> 

> [  4] 5.00-6.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0

> 

> 132K/85124(15654) us  13.86

> 

> [  1] 5.00-6.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0

> 

> 134K/91336(11335) us  12.92

> 

> [  3] 5.00-6.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0

> 

> 131K/89185(13499) us  13.23

> 

> [SUM] 5.00-6.00 sec  4.50 MBytes  37.7 Mbits/sec  36/0         0

> 

> [  2] 6.00-7.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0

> 

> 134K/85687(13489) us  13.77

> 

> [  4] 6.00-7.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0

> 

> 132K/82803(13001) us  14.25

> 

> [  1] 6.00-7.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0

> 

> 134K/86869(15186) us  13.58

> 

> [  3] 6.00-7.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0

> 

> 131K/91447(12515) us  12.90

> 

> [SUM] 6.00-7.00 sec  4.50 MBytes  37.7 Mbits/sec  36/0         0

> 

> [  2] 7.00-8.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0

> 

> 134K/81814(13168) us  12.82

> 

> [  4] 7.00-8.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0

> 

> 132K/89008(13283) us  11.78

> 

> [  1] 7.00-8.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0

> 

> 134K/89494(12151) us  11.72

> 

> [  3] 7.00-8.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0

> 

> 131K/91083(12797) us  11.51

> 

> [SUM] 7.00-8.00 sec  4.00 MBytes  33.6 Mbits/sec  32/0         0

> 

> [root@bobcat iperf2-code]# iperf -s -i 1 -e --hide-ips -w 4m

> 

> ------------------------------------------------------------

> 

> Server listening on TCP port 5001 with pid 233981

> 

> Read buffer size:  128 KByte (Dist bin width=16.0 KByte)

> 

> TCP window size: 7.63 MByte (WARNING: requested 3.81 MByte)

> 

> ------------------------------------------------------------

> 

> [  1] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port

> 46448

> 

> (trip-times) (sock=4) (peer 2.1.9-master) (qack)

> 

> (icwnd/mss/irtt=14/1448/11987) on 2023-01-06 12:27:45 (PST)

> 

> [  2] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port

> 46454

> 

> (trip-times) (sock=5) (peer 2.1.9-master) (qack)

> 

> (icwnd/mss/irtt=14/1448/11132) on 2023-01-06 12:27:45 (PST)

> 

> [  3] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port

> 46460

> 

> (trip-times) (sock=6) (peer 2.1.9-master) (qack)

> 

> (icwnd/mss/irtt=14/1448/11097) on 2023-01-06 12:27:45 (PST)

> 

> [  4] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port

> 46458

> 

> (trip-times) (sock=7) (peer 2.1.9-master) (qack)

> 

> (icwnd/mss/irtt=14/1448/17823) on 2023-01-06 12:27:45 (PST)

> 

> [ ID] Interval        Transfer    Bandwidth    Burst Latency

> 

> avg/min/max/stdev (cnt/size) inP NetPwr  Reads=Dist

> 

> [  4] 0.00-1.00 sec  1.09 MBytes  9.15 Mbits/sec

> 

> 93.383/90.103/95.661/2.232 ms (8/143028)  128 KByte 12.25

> 

> 451=451:0:0:0:0:0:0:0

> 

> [  3] 0.00-1.00 sec  1.08 MBytes  9.06 Mbits/sec

> 

> 96.834/95.229/102.645/2.442 ms (8/141580)  131 KByte 11.70

> 

> 472=472:0:0:0:0:0:0:0

> 

> [  1] 0.00-1.00 sec  1.10 MBytes  9.19 Mbits/sec

> 

> 95.183/92.623/97.579/1.431 ms (8/143571)  131 KByte 12.07

> 

> 495=495:0:0:0:0:0:0:0

> 

> [  2] 0.00-1.00 sec  1.09 MBytes  9.15 Mbits/sec

> 

> 89.317/84.865/94.906/3.674 ms (8/143028)  122 KByte 12.81

> 

> 489=489:0:0:0:0:0:0:0

> 

> [ ID] Interval        Transfer    Bandwidth       Reads=Dist

> 

> [SUM] 0.00-1.00 sec  4.36 MBytes  36.6 Mbits/sec

> 

> 1907=1907:0:0:0:0:0:0:0

> 

> [  4] 1.00-2.00 sec  1.07 MBytes  8.95 Mbits/sec

> 

> 92.649/89.987/95.036/1.828 ms (9/124314) 96.5 KByte 12.08

> 

> 492=492:0:0:0:0:0:0:0

> 

> [  3] 1.00-2.00 sec  1.06 MBytes  8.93 Mbits/sec

> 

> 96.305/95.647/96.794/0.432 ms (9/123992)  100 KByte 11.59

> 

> 480=480:0:0:0:0:0:0:0

> 

> [  1] 1.00-2.00 sec  1.06 MBytes  8.89 Mbits/sec

> 

> 92.578/90.866/94.145/1.371 ms (9/123510) 95.8 KByte 12.01

> 

> 513=513:0:0:0:0:0:0:0

> 

> [  2] 1.00-2.00 sec  1.07 MBytes  8.96 Mbits/sec

> 

> 90.767/87.984/94.352/1.944 ms (9/124475) 94.7 KByte 12.34

> 

> 489=489:0:0:0:0:0:0:0

> 

> [SUM] 1.00-2.00 sec  4.26 MBytes  35.7 Mbits/sec

> 

> 1974=1974:0:0:0:0:0:0:0

> 

> [  4] 2.00-3.00 sec  1.09 MBytes  9.13 Mbits/sec

> 

> 93.977/91.795/96.561/1.693 ms (8/142656)  112 KByte 12.14

> 

> 497=497:0:0:0:0:0:0:0

> 

> [  3] 2.00-3.00 sec  1.08 MBytes  9.04 Mbits/sec

> 

> 96.544/95.815/97.798/0.693 ms (8/141208)  114 KByte 11.70

> 

> 503=503:0:0:0:0:0:0:0

> 

> [  1] 2.00-3.00 sec  1.07 MBytes  9.01 Mbits/sec

> 

> 93.970/91.193/96.325/1.796 ms (8/140846)  111 KByte 11.99

> 

> 509=509:0:0:0:0:0:0:0

> 

> [  2] 2.00-3.00 sec  1.08 MBytes  9.10 Mbits/sec

> 

> 92.843/90.216/96.355/2.040 ms (8/142113)  111 KByte 12.25

> 

> 509=509:0:0:0:0:0:0:0

> 

> [SUM] 2.00-3.00 sec  4.32 MBytes  36.3 Mbits/sec

> 

> 2018=2018:0:0:0:0:0:0:0

> 

> [  4] 3.00-4.00 sec  1.06 MBytes  8.86 Mbits/sec

> 

> 93.222/89.063/96.104/2.346 ms (9/123027) 96.1 KByte 11.88

> 

> 487=487:0:0:0:0:0:0:0

> 

> [  3] 3.00-4.00 sec  1.07 MBytes  8.97 Mbits/sec

> 

> 96.277/95.051/97.230/0.767 ms (9/124636)  101 KByte 11.65

> 

> 489=489:0:0:0:0:0:0:0

> 

> [  1] 3.00-4.00 sec  1.08 MBytes  9.02 Mbits/sec

> 

> 93.899/88.732/96.972/2.737 ms (9/125280) 98.6 KByte 12.01

> 

> 493=493:0:0:0:0:0:0:0

> 

> [  2] 3.00-4.00 sec  1.07 MBytes  8.97 Mbits/sec

> 

> 92.490/89.862/95.265/1.796 ms (9/124636) 96.6 KByte 12.13

> 

> 493=493:0:0:0:0:0:0:0

> 

> [SUM] 3.00-4.00 sec  4.27 MBytes  35.8 Mbits/sec

> 

> 1962=1962:0:0:0:0:0:0:0

> 

> [  4] 4.00-5.00 sec  1.07 MBytes  9.00 Mbits/sec

> 

> 92.431/81.888/96.221/4.524 ms (9/124958) 96.8 KByte 12.17

> 

> 498=498:0:0:0:0:0:0:0

> 

> [  1] 4.00-5.00 sec  1.07 MBytes  8.97 Mbits/sec

> 

> 95.018/93.445/96.200/0.957 ms (9/124636) 99.3 KByte 11.81

> 

> 490=490:0:0:0:0:0:0:0

> 

> [  2] 4.00-5.00 sec  1.06 MBytes  8.90 Mbits/sec

> 

> 93.874/86.485/95.672/2.810 ms (9/123671) 97.3 KByte 11.86

> 

> 481=481:0:0:0:0:0:0:0

> 

> [  3] 4.00-5.00 sec  1.08 MBytes  9.09 Mbits/sec

> 

> 95.737/93.881/97.197/0.972 ms (9/126245)  101 KByte 11.87

> 

> 484=484:0:0:0:0:0:0:0

> 

> [SUM] 4.00-5.00 sec  4.29 MBytes  36.0 Mbits/sec

> 

> 1953=1953:0:0:0:0:0:0:0

> 

> [  4] 5.00-6.00 sec  1.09 MBytes  9.13 Mbits/sec

> 

> 92.908/86.844/95.994/3.012 ms (8/142656)  111 KByte 12.28

> 

> 467=467:0:0:0:0:0:0:0

> 

> [  3] 5.00-6.00 sec  1.07 MBytes  8.94 Mbits/sec

> 

> 96.593/95.343/97.660/0.876 ms (8/139760)  113 KByte 11.58

> 

> 478=478:0:0:0:0:0:0:0

> 

> [  1] 5.00-6.00 sec  1.08 MBytes  9.03 Mbits/sec

> 

> 95.021/91.421/97.167/1.893 ms (8/141027)  112 KByte 11.87

> 

> 491=491:0:0:0:0:0:0:0

> 

> [  2] 5.00-6.00 sec  1.08 MBytes  9.06 Mbits/sec

> 

> 92.162/82.720/97.692/5.060 ms (8/141570)  109 KByte 12.29

> 

> 488=488:0:0:0:0:0:0:0

> 

> [SUM] 5.00-6.00 sec  4.31 MBytes  36.2 Mbits/sec

> 

> 1924=1924:0:0:0:0:0:0:0

> 

> [  4] 6.00-7.00 sec  1.04 MBytes  8.70 Mbits/sec

> 

> 92.793/85.343/96.967/3.552 ms (9/120775) 93.9 KByte 11.71

> 

> 485=485:0:0:0:0:0:0:0

> 

> [  2] 6.00-7.00 sec  1.05 MBytes  8.79 Mbits/sec

> 

> 91.679/84.479/96.760/3.975 ms (9/122062) 93.8 KByte 11.98

> 

> 472=472:0:0:0:0:0:0:0

> 

> [  3] 6.00-7.00 sec  1.06 MBytes  8.88 Mbits/sec

> 

> 96.982/95.933/98.371/0.680 ms (9/123349)  100 KByte 11.45

> 

> 477=477:0:0:0:0:0:0:0

> 

> [  1] 6.00-7.00 sec  1.05 MBytes  8.80 Mbits/sec

> 

> 94.342/91.660/96.025/1.660 ms (9/122223) 96.7 KByte 11.66

> 

> 494=494:0:0:0:0:0:0:0

> 

> [SUM] 6.00-7.00 sec  4.19 MBytes  35.2 Mbits/sec

> 

> 1928=1928:0:0:0:0:0:0:0

> 

> [  4] 7.00-8.00 sec  1.10 MBytes  9.25 Mbits/sec

> 

> 92.515/88.182/96.351/2.538 ms (8/144466)  112 KByte 12.49

> 

> 510=510:0:0:0:0:0:0:0

> 

> [  3] 7.00-8.00 sec  1.09 MBytes  9.13 Mbits/sec

> 

> 96.580/95.737/98.977/1.098 ms (8/142656)  115 KByte 11.82

> 

> 480=480:0:0:0:0:0:0:0

> 

> [  1] 7.00-8.00 sec  1.10 MBytes  9.21 Mbits/sec

> 

> 95.269/91.719/97.514/2.126 ms (8/143923)  115 KByte 12.09

> 

> 515=515:0:0:0:0:0:0:0

> 

> [  2] 7.00-8.00 sec  1.11 MBytes  9.29 Mbits/sec

> 

> 90.073/84.700/96.176/4.324 ms (8/145190)  110 KByte 12.90

> 

> 508=508:0:0:0:0:0:0:0

> 

> [SUM] 7.00-8.00 sec  4.40 MBytes  36.9 Mbits/sec

> 

> 2013=2013:0:0:0:0:0:0:0

> 

> Bob

> 

>>> -----Original Message-----

> 

>> 

> 

>>> From: LibreQoS <libreqos-bounces@lists.bufferbloat.net> On Behalf

> Of

> 

>> Dave Taht

> 

>> 

> 

>>> via LibreQoS

> 

>> 

> 

>>> Sent: Wednesday, January 4, 2023 12:26 PM

> 

>> 

> 

>>> Subject: [LibreQoS] the grinch meets cloudflare's christmas present

> 

> 

>> 

> 

>>> 

> 

>> 

> 

>>> Please try the new, the shiny, the really wonderful test here:

> 

>> 

> 

>>> 

> 

>> 

>
https://urldefense.com/v3/__https://speed.cloudflare.com/__;!!BhdT!iZcFJ8WVU
9S

> 

> 

>> [1]

> 

>> 

> 

>>> 

> 

>> 

>
9zz5t456oxkfObrC5Xb9j5AG8UO3DqD5x4GAJkawZr0iGwEUtF0_09U8mCDnAkrJ9QEMHGbCMKVw
$

> 

> 

>> [1]

> 

>> 

> 

>>> 

> 

>> 

> 

>>> I would really appreciate some independent verification of

> 

>> 

> 

>>> measurements using this tool. In my brief experiments it appears -

> 

>> as

> 

>> 

> 

>>> all the commercial tools to date - to dramatically understate the

> 

>> 

> 

>>> bufferbloat, on my LTE, (and my starlink terminal is out being

> 

>> 

> 

>>> hacked^H^H^H^H^H^Hworked on, so I can't measure that)

> 

>> 

> 

>> [acm]

> 

>> 

> 

>> Hi Dave, I made some time to test "cloudflare's christmas present"

> 

>> yesterday.

> 

>> 

> 

>> I'm on DOCSIS 3.1 service with 1Gbps Down. The Upstream has a

> "turbo"

> 

>> mode with 40-50Mbps for the first ~3 sec, then steady-state about

> 

>> 23Mbps.

> 

>> 

> 

>> When I saw the ~620Mbps Downstream measurement, I was ready to

> 

>> complain that even the IP-Layer Capacity was grossly underestimated.

> 

> 

>> In addition, the Latency measurements seem very low (as you

> asserted),

> 

>> although the cloud server was "nearby".

> 

>> 

> 

>> However, I found that Ookla and the ISP-provided measurement were

> also

> 

>> reporting ~600Mbps! So the cloudflare Downstream capacity (or

> 

>> throughput?) measurement was consistent with others. Our UDPST

> server

> 

>> was unreachable, otherwise I would have added that measurement, too.

> 

> 

>> 

> 

>> The Upstream measurement graph seems to illustrate the "turbo"

> 

>> mode, with the dip after attaining 44.5Mbps.

> 

>> 

> 

>> UDPST saturates the uplink and we measure the full 250ms of the

> 

>> Upstream buffer. Cloudflare's latency measurements don't even come

> 

>> close.

> 

>> 

> 

>> Al

> 

>> 

> 

>> 

> 

>> 

> 

>> Links:

> 

>> ------

> 

>> [1]

> 

>> 

>
https://urldefense.com/v3/__https:/speed.cloudflare.com/__;!!BhdT!iZcFJ8WVU9
S9zz5t456oxkfObrC5Xb9j5AG8UO3DqD5x4GAJkawZr0iGwEUtF0_09U8mCDnAkrJ9QEMHGbCMKV
w$

> 

> 

>> _______________________________________________

> 

>> Rpm mailing list

> 

>> Rpm@lists.bufferbloat.net

> 

>> https://lists.bufferbloat.net/listinfo/rpm

> 

> _______________________________________________

> 

> Starlink mailing list

> 

> Starlink@lists.bufferbloat.net

> 

> https://lists.bufferbloat.net/listinfo/starlink


------=_NextPart_000_07C0_01D921EC.61EEF8F0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:st1=3D"urn:schemas-microsoft-com:office:smarttags" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"PersonName"/>
<!--[if !mso]>
<style>
st1\:*{behavior:url(#default#ieooui) }
</style>
<![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman";}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{color:purple;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 77.95pt 1.0in 77.95pt;}
div.Section1
	{page:Section1;}
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DSection1>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>-----Original Message-----<br>
From: rjmcmahon [mailto:rjmcmahon@rjmcmahon.com] <br>
Sent: Friday, January 6, 2023 3:45 PM<br>
To: <st1:PersonName =
w:st=3D"on">dickroy@alum.mit.edu</st1:PersonName><br>
Cc: 'MORTON JR., AL'; 'IETF IPPM WG'; 'libreqos'; 'Cake List'; 'Rpm'; =
'bloat'<br>
Subject: Re: [Starlink] [Rpm] [LibreQoS] the grinch meets =
cloudflare'schristmas
present</span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>yeah, I'd prefer not to output CLT sample groups at all but the =
<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>histograms aren't really human readable and users constantly ask =
for <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>them. I thought about providing a distance from the gaussian as =
output <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>too but so far few would understand it and nobody I found would =
act
upon <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>it. <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><b><i><font size=3D2 face=3D"Courier New"><span
style=3D'font-size:10.0pt;font-weight:bold;font-style:italic'>[RR] =
Understandable
until such metrics are &#8220;actionable&#8221;, and that&#8217;s =
&#8220;up to us to find/define/figure
out&#8221; it seems to me. Metrics that are not actionable are =
write-only memory and
good for little but historical record</span></font></i></b><b><i><font
face=3DWingdings><span =
style=3D'font-family:Wingdings;font-weight:bold;font-style:
italic'>J</span></font> <o:p></o:p></i></b></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>The tool produces the full histograms so no information is =
really <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>missing except for maybe better time series =
analysis.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><b><i><font size=3D2 color=3Dblack =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;color:black;font-weight:bold;font-style:italic'=
>[RR] Isn&#8217;t
that in fact what we are trying to extract from the e2e stats we =
collect? &nbsp;i.e.,
infer the time evolution of the system from its I/O behavior? As you =
point out,
it&#8217;s really hard to do without probes in the guts of the system, =
nd yes, synchronization
is important </span></font></i></b><b><i><font color=3Dblack =
face=3DWingdings><span
style=3D'font-family:Wingdings;color:black;font-weight:bold;font-style:it=
alic'>J</span></font></i></b><font
color=3Dblack><span style=3D'color:black'><o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>The open source flows python code also released with iperf 2 =
does use <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>the komogorov-smirnov distances &amp; distance matrices to =
cluster when
the <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>number of histograms are just too much. We've analyzed 1M runs =
to fault
<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>isolate the &quot;unexpected interruptions&quot; or =
&quot;bugs&quot;
and without statistical <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>support it is just not doable. This does require instrumentation =
of the
<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>full path with mapping to a common clock domain (e.g. GPS) and =
not just
<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>e2e stats. I find an e2e complaint by an end user about =
&quot;poor
speed&quot; as <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>useful as telling a pharmacist I have a fever. Not much =
diagnostically <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>is going on. Take an aspirin.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><b><i><font size=3D2 color=3Dblack =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;color:black;font-weight:bold;font-style:italic'=
>[RR] That&#8217;s
AWESOME!!!!!!!!!!!!!!!!!! I love that =
analogy!<o:p></o:p></span></font></i></b></p>

<p class=3DMsoPlainText><b><i><font size=3D2 color=3Dblack =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;color:black;font-weight:bold;font-style:italic'=
><o:p>&nbsp;</o:p></span></font></i></b></p>

<p class=3DMsoPlainText><b><i><font size=3D2 color=3Dblack =
face=3D"Courier New"><span
style=3D'font-size:10.0pt;color:black;font-weight:bold;font-style:italic'=
>RR</span></font></i></b><font
color=3Dblack><span style=3D'color:black'><o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>https://en.wikipedia.org/wiki/Kolmogorov%E2%80%93Smirnov_test<o:p=
></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>https://sourceforge.net/p/iperf2/code/ci/master/tree/flows/flows.=
py<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>Bob<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; See below &#8230;<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; -----Original Message-----<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; From: Starlink =
[mailto:starlink-bounces@lists.bufferbloat.net] =
On<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Behalf Of rjmcmahon via =
Starlink<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Sent: Friday, January 6, 2023 12:39 =
PM<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; To: MORTON JR., AL<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Cc: Dave Taht via Starlink; IETF IPPM WG; libreqos; Cake =
List;
Rpm;<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; bloat<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Subject: Re: [Starlink] [Rpm] [LibreQoS] the grinch =
meets<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; cloudflare'schristmas present<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Some thoughts are not to use UDP for testing here. Also, =
these
speed<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; tests have little to no information for network engineers =
about
what's<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; going on. Iperf 2 may better assist network engineers but =
then I'm<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; biased ;)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Running iperf 2 https://sourceforge.net/projects/iperf2/ =
with<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; --trip-times. Though the sampling and central limit theorem
averaging<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; is<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; hiding the real distributions (use --histograms to get =
those)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; _[RR] FWIW (IMNBWM __J)&#8230; If the output/final =
histograms indicate
the<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; PDF is NOT Gaussian, then any application of the CLT =
is<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; inappropriate/contra-indicated! The CLT is a &quot;proof =
under
certain<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; regularity conditions/assumptions of underlying/constituent =
PDFs,
that<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; the resulting PDF (after all the necessary convolutions are
performed<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; to get to the PDF of the output) will asymptotically =
approach a<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Gaussian with only a mean and a std. dev. left to specify. =
_<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Below are 4 parallel TCP streams from my home to one of my =
servers
in<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; the cloud. First where TCP is limited per CCA. Second is =
source
side<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; write rate limiting. Things to =
note:<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; o) connect times for both at 10-15 =
ms<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; o) multiple TCP retries on a few rites - one case is 4 with =
5
writes.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Source side pacing eliminates =
retries<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; o) Fairness with CCA isn't great but quite good with source =
side
write<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; pacing<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; o) Queue depth with CCA is about 150 Kbytes about 100K byte =
with<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; source<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; side pacing<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; o) min write to read is about 80 ms for =
both<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; o) max is 220 ms vs 97 ms<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; o) stdev for CCA write/read is 30 ms vs 3 =
ms<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; o) TCP RTT is 20ms w/CCA and 90 ms with ssp - seems odd =
here as<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; TCP_QUICACK and TCP_NODELAY are both =
enabled.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [ CT] final connect times (min/avg/max/stdev) =
=3D<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 10.326/13.522/14.986/2150.329 ms (tot/err) =3D =
4/0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [rjmcmahon@ryzen3950 iperf2-code]$ iperf -c *** --hide-ips =
-e<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; --trip-times -i 1 -P 4 -t 10 -w 4m --tcp-quickack =
-N<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; =
------------------------------------------------------------<o:p></o:p></=
span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Client connecting to (**hidden**), TCP port 5001 with pid =
107678
(4<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; flows)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Write buffer size: 131072 Byte<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; TOS set to 0x0 and nodelay (Nagle =
off)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; TCP window size: 7.63 MByte (WARNING: requested 3.81 =
MByte)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Event based writes (pending queue watermark at 16384 =
bytes)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; =
------------------------------------------------------------<o:p></o:p></=
span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] local *.*.*.85%enp4s0 port 42480 connected with =
*.*.*.123
port<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 5001 (prefetch=3D16384) (trip-times) (sock=3D3) =
(qack)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (icwnd/mss/irtt=3D14/1448/10534) (ct=3D10.63 ms) on =
2023-01-06
12:17:56<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (PST)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] local *.*.*.85%enp4s0 port 42488 connected with =
*.*.*.123
port<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 5001 (prefetch=3D16384) (trip-times) (sock=3D5) =
(qack)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (icwnd/mss/irtt=3D14/1448/14023) (ct=3D14.08 ms) on =
2023-01-06
12:17:56<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (PST)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] local *.*.*.85%enp4s0 port 42502 connected with =
*.*.*.123
port<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 5001 (prefetch=3D16384) (trip-times) (sock=3D6) =
(qack)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (icwnd/mss/irtt=3D14/1448/14642) (ct=3D14.70 ms) on =
2023-01-06
12:17:56<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (PST)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] local *.*.*.85%enp4s0 port 42484 connected with =
*.*.*.123
port<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 5001 (prefetch=3D16384) (trip-times) (sock=3D4) =
(qack)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (icwnd/mss/irtt=3D14/1448/14728) (ct=3D14.79 ms) on =
2023-01-06
12:17:56<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (PST)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [ ID] Interval&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Transfer&nbsp;&nbsp;&nbsp; Bandwidth&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Write/Err&nbsp; Rtry<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Cwnd/RTT(var)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
NetPwr<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; ...<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] 4.00-5.00 sec&nbsp; 1.38 MBytes&nbsp; 11.5 =
Mbits/sec&nbsp; 11/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
3<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 29K/21088(1142) us&nbsp; 68.37<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] 4.00-5.00 sec&nbsp; 1.62 MBytes&nbsp; 13.6 =
Mbits/sec&nbsp; 13/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
2<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 31K/19284(612) us&nbsp; 88.36<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] 4.00-5.00 sec&nbsp;&nbsp; 896 KBytes&nbsp; 7.34 =
Mbits/sec&nbsp; 7/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
5<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 16K/18996(658) us&nbsp; 48.30<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] 4.00-5.00 sec&nbsp; 1.00 MBytes&nbsp; 8.39 =
Mbits/sec&nbsp; 8/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
5<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 18K/18133(208) us&nbsp; 57.83<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [SUM] 4.00-5.00 sec&nbsp; 4.88 MBytes&nbsp; 40.9 =
Mbits/sec&nbsp; 39/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
15<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] 5.00-6.00 sec&nbsp; 1.25 MBytes&nbsp; 10.5 =
Mbits/sec&nbsp; 10/0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4<o:p></o:p></span></font=
></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 29K/14717(489) us&nbsp; 89.06<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] 5.00-6.00 sec&nbsp; 1.00 MBytes&nbsp; 8.39 =
Mbits/sec&nbsp; 8/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
4<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 16K/15874(408) us&nbsp; 66.06<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] 5.00-6.00 sec&nbsp; 1.12 MBytes&nbsp; 9.44 =
Mbits/sec&nbsp; 9/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
4<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 16K/15826(382) us&nbsp; 74.54<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] 5.00-6.00 sec&nbsp; 1.50 MBytes&nbsp; 12.6 =
Mbits/sec&nbsp; 12/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
6<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 9K/14878(557) us&nbsp; 106<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [SUM] 5.00-6.00 sec&nbsp; 4.88 MBytes&nbsp; 40.9 =
Mbits/sec&nbsp; 39/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
18<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] 6.00-7.00 sec&nbsp; 1.75 MBytes&nbsp; 14.7 =
Mbits/sec&nbsp; 14/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
4<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 25K/15472(496) us&nbsp; 119<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] 6.00-7.00 sec&nbsp; 1.00 MBytes&nbsp; 8.39 =
Mbits/sec&nbsp; 8/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
2<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 26K/16417(427) us&nbsp; 63.87<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] 6.00-7.00 sec&nbsp; 1.25 MBytes&nbsp; 10.5 =
Mbits/sec&nbsp; 10/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
5<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 16K/16268(679) us&nbsp; 80.57<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] 6.00-7.00 sec&nbsp; 1.00 MBytes&nbsp; 8.39 =
Mbits/sec&nbsp; 8/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
6<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 15K/16629(799) us&nbsp; 63.06<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [SUM] 6.00-7.00 sec&nbsp; 5.00 MBytes&nbsp; 41.9 =
Mbits/sec&nbsp; 40/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
17<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] 7.00-8.00 sec&nbsp; 1.75 MBytes&nbsp; 14.7 =
Mbits/sec&nbsp; 14/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
4<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 22K/13986(519) us&nbsp; 131<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] 7.00-8.00 sec&nbsp; 1.12 MBytes&nbsp; 9.44 =
Mbits/sec&nbsp; 9/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
4<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 16K/12679(377) us&nbsp; 93.04<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] 7.00-8.00 sec&nbsp;&nbsp; 896 KBytes&nbsp; 7.34 =
Mbits/sec&nbsp; 7/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
5<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 14K/12971(367) us&nbsp; 70.74<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] 7.00-8.00 sec&nbsp; 1.12 MBytes&nbsp; 9.44 =
Mbits/sec&nbsp; 9/0&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 15K/14740(779) us&nbsp; 80.03<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [SUM] 7.00-8.00 sec&nbsp; 4.88 MBytes&nbsp; 40.9 =
Mbits/sec&nbsp; 39/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
19<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [root@bobcat iperf2-code]# iperf -s -i 1 -e --hide-ips -w =
4m<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; =
------------------------------------------------------------<o:p></o:p></=
span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Server listening on TCP port 5001 with pid =
233615<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Read buffer size:&nbsp; 128 KByte (Dist bin width=3D16.0 =
KByte)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; TCP window size: 7.63 MByte (WARNING: requested 3.81 =
MByte)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; =
------------------------------------------------------------<o:p></o:p></=
span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] local *.*.*.123%eth0 port 5001 connected with =
*.*.*.171 port<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 42480<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (trip-times) (sock=3D4) (peer 2.1.9-master) =
(qack)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (icwnd/mss/irtt=3D14/1448/11636) on 2023-01-06 12:17:56 =
(PST)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] local *.*.*.123%eth0 port 5001 connected with =
*.*.*.171 port<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 42502<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (trip-times) (sock=3D5) (peer 2.1.9-master) =
(qack)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (icwnd/mss/irtt=3D14/1448/11898) on 2023-01-06 12:17:56 =
(PST)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] local *.*.*.123%eth0 port 5001 connected with =
*.*.*.171 port<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 42484<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (trip-times) (sock=3D6) (peer 2.1.9-master) =
(qack)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (icwnd/mss/irtt=3D14/1448/11938) on 2023-01-06 12:17:56 =
(PST)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] local *.*.*.123%eth0 port 5001 connected with =
*.*.*.171 port<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 42488<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (trip-times) (sock=3D7) (peer 2.1.9-master) =
(qack)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (icwnd/mss/irtt=3D14/1448/11919) on 2023-01-06 12:17:56 =
(PST)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [ ID] Interval&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Transfer&nbsp;&nbsp;&nbsp; Bandwidth&nbsp;&nbsp;&nbsp; Burst =
Latency<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; avg/min/max/stdev (cnt/size) inP NetPwr&nbsp; =
Reads=3DDist<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; ...<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] 4.00-5.00 sec&nbsp; 1.06 MBytes&nbsp; 8.86 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 129.819/90.391/186.075/31.346 ms (9/123080)&nbsp; 154 KByte =
8.532803<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 467=3D461:6:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] 4.00-5.00 sec&nbsp; 1.52 MBytes&nbsp; 12.8 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 103.552/82.653/169.274/28.382 ms (12/132854)&nbsp; 149 =
KByte 15.40<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 646=3D643:1:2:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] 4.00-5.00 sec&nbsp; 1.39 MBytes&nbsp; 11.6 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 107.503/66.843/143.038/24.269 ms (11/132294)&nbsp; 149 =
KByte 13.54<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 619=3D617:1:1:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] 4.00-5.00 sec&nbsp;&nbsp; 988 KBytes&nbsp; 8.10 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 141.389/119.961/178.785/18.812 ms (7/144593)&nbsp; 170 =
KByte 7.158641<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 409=3D404:5:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [SUM] 4.00-5.00 sec&nbsp; 4.93 MBytes&nbsp; 41.4 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 2141=3D2125:13:3:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] 5.00-6.00 sec&nbsp; 1.29 MBytes&nbsp; 10.8 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 118.943/86.253/176.128/31.248 ms (10/135098)&nbsp; 164 =
KByte 11.36<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 511=3D506:2:3:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] 5.00-6.00 sec&nbsp; 1.09 MBytes&nbsp; 9.17 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 139.821/102.418/218.875/40.422 ms (9/127424)&nbsp; 148 =
KByte 8.202049<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 487=3D484:2:1:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] 5.00-6.00 sec&nbsp; 1.51 MBytes&nbsp; 12.6 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 102.146/77.085/140.893/18.441 ms (13/121520)&nbsp; 151 =
KByte 15.47<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 640=3D636:1:3:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] 5.00-6.00 sec&nbsp;&nbsp; 981 KBytes&nbsp; 8.04 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 161.901/105.582/219.931/36.260 ms (8/125614)&nbsp; 134 =
KByte 6.206944<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 415=3D413:2:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [SUM] 5.00-6.00 sec&nbsp; 4.85 MBytes&nbsp; 40.7 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 2053=3D2039:7:7:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] 6.00-7.00 sec&nbsp; 1.74 MBytes&nbsp; 14.6 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 88.846/74.297/101.859/7.118 ms (14/130526)&nbsp; 156 KByte =
20.57<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 711=3D707:3:1:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] 6.00-7.00 sec&nbsp; 1.22 MBytes&nbsp; 10.2 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 120.639/100.257/157.567/21.770 ms (10/127568)&nbsp; 157 =
KByte 10.57<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 494=3D488:5:1:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] 6.00-7.00 sec&nbsp; 1015 KBytes&nbsp; 8.32 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 144.632/124.368/171.349/16.597 ms (8/129958)&nbsp; 143 =
KByte 7.188321<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 408=3D403:5:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] 6.00-7.00 sec&nbsp; 1.02 MBytes&nbsp; 8.60 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 143.516/102.322/173.001/24.089 ms (8/134302)&nbsp; 146 =
KByte 7.486359<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 484=3D480:4:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [SUM] 6.00-7.00 sec&nbsp; 4.98 MBytes&nbsp; 41.7 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 2097=3D2078:17:2:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] 7.00-8.00 sec&nbsp; 1.77 MBytes&nbsp; 14.9 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 85.406/65.797/103.418/12.609 ms (14/132595)&nbsp; 153 KByte =
21.74<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 692=3D687:2:3:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] 7.00-8.00 sec&nbsp;&nbsp; 957 KBytes&nbsp; 7.84 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 153.936/131.452/191.464/19.361 ms (7/140042)&nbsp; 160 =
KByte 6.368199<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 429=3D425:4:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] 7.00-8.00 sec&nbsp; 1.13 MBytes&nbsp; 9.44 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 131.146/109.737/166.774/22.035 ms (9/131124)&nbsp; 146 =
KByte 8.998528<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 520=3D516:4:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] 7.00-8.00 sec&nbsp; 1.13 MBytes&nbsp; 9.51 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 126.512/88.404/220.175/42.237 ms (9/132089)&nbsp; 172 KByte =
9.396784<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 527=3D524:1:2:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [SUM] 7.00-8.00 sec&nbsp; 4.96 MBytes&nbsp; 41.6 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 2168=3D2152:11:5:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; With source side rate limiting to 9 mb/s per =
stream.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [rjmcmahon@ryzen3950 iperf2-code]$ iperf -c *** --hide-ips =
-e<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; --trip-times -i 1 -P 4 -t 10 -w 4m --tcp-quickack -N -b =
9m<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; =
------------------------------------------------------------<o:p></o:p></=
span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Client connecting to (**hidden**), TCP port 5001 with pid =
108884
(4<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; flows)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Write buffer size: 131072 Byte<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; TOS set to 0x0 and nodelay (Nagle =
off)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; TCP window size: 7.63 MByte (WARNING: requested 3.81 =
MByte)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Event based writes (pending queue watermark at 16384 =
bytes)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; =
------------------------------------------------------------<o:p></o:p></=
span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] local *.*.*.85%enp4s0 port 46448 connected with =
*.*.*.123
port<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 5001 (prefetch=3D16384) (trip-times) (sock=3D3) =
(qack)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (icwnd/mss/irtt=3D14/1448/10666) (ct=3D10.70 ms) on =
2023-01-06
12:27:45<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (PST)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] local *.*.*.85%enp4s0 port 46460 connected with =
*.*.*.123
port<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 5001 (prefetch=3D16384) (trip-times) (sock=3D6) =
(qack)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (icwnd/mss/irtt=3D14/1448/16499) (ct=3D16.54 ms) on =
2023-01-06
12:27:45<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (PST)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] local *.*.*.85%enp4s0 port 46454 connected with =
*.*.*.123
port<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 5001 (prefetch=3D16384) (trip-times) (sock=3D4) =
(qack)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (icwnd/mss/irtt=3D14/1448/16580) (ct=3D16.86 ms) on =
2023-01-06
12:27:45<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (PST)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] local *.*.*.85%enp4s0 port 46458 connected with =
*.*.*.123
port<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 5001 (prefetch=3D16384) (trip-times) (sock=3D5) =
(qack)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (icwnd/mss/irtt=3D14/1448/16802) (ct=3D16.83 ms) on =
2023-01-06
12:27:45<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (PST)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [ ID] Interval&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Transfer&nbsp;&nbsp;&nbsp; Bandwidth&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Write/Err&nbsp; Rtry<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Cwnd/RTT(var)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
NetPwr<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; ...<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] 4.00-5.00 sec&nbsp; 1.00 MBytes&nbsp; 8.39 =
Mbits/sec&nbsp; 8/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 134K/88055(12329) us&nbsp; =
11.91<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] 4.00-5.00 sec&nbsp; 1.00 MBytes&nbsp; 8.39 =
Mbits/sec&nbsp; 8/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 132K/74867(11755) us&nbsp; =
14.01<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] 4.00-5.00 sec&nbsp; 1.00 MBytes&nbsp; 8.39 =
Mbits/sec&nbsp; 8/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 134K/89101(13134) us&nbsp; =
11.77<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] 4.00-5.00 sec&nbsp; 1.00 MBytes&nbsp; 8.39 =
Mbits/sec&nbsp; 8/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 131K/91451(11938) us&nbsp; =
11.47<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [SUM] 4.00-5.00 sec&nbsp; 4.00 MBytes&nbsp; 33.6 =
Mbits/sec&nbsp; 32/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] 5.00-6.00 sec&nbsp; 1.12 MBytes&nbsp; 9.44 =
Mbits/sec&nbsp; 9/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 134K/85135(14580) us&nbsp; =
13.86<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] 5.00-6.00 sec&nbsp; 1.12 MBytes&nbsp; 9.44 =
Mbits/sec&nbsp; 9/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 132K/85124(15654) us&nbsp; =
13.86<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] 5.00-6.00 sec&nbsp; 1.12 MBytes&nbsp; 9.44 =
Mbits/sec&nbsp; 9/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 134K/91336(11335) us&nbsp; =
12.92<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] 5.00-6.00 sec&nbsp; 1.12 MBytes&nbsp; 9.44 =
Mbits/sec&nbsp; 9/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 131K/89185(13499) us&nbsp; =
13.23<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [SUM] 5.00-6.00 sec&nbsp; 4.50 MBytes&nbsp; 37.7 =
Mbits/sec&nbsp; 36/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] 6.00-7.00 sec&nbsp; 1.12 MBytes&nbsp; 9.44 =
Mbits/sec &nbsp;9/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 134K/85687(13489) us&nbsp; =
13.77<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] 6.00-7.00 sec&nbsp; 1.12 MBytes&nbsp; 9.44 =
Mbits/sec&nbsp; 9/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 132K/82803(13001) us&nbsp; =
14.25<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] 6.00-7.00 sec&nbsp; 1.12 MBytes&nbsp; 9.44 =
Mbits/sec&nbsp; 9/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 134K/86869(15186) us&nbsp; =
13.58<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] 6.00-7.00 sec&nbsp; 1.12 MBytes&nbsp; 9.44 =
Mbits/sec&nbsp; 9/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 131K/91447(12515) us&nbsp; =
12.90<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [SUM] 6.00-7.00 sec&nbsp; 4.50 MBytes&nbsp; 37.7 =
Mbits/sec&nbsp; 36/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] 7.00-8.00 sec&nbsp; 1.00 MBytes&nbsp; 8.39 =
Mbits/sec&nbsp; 8/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 134K/81814(13168) us&nbsp; =
12.82<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] 7.00-8.00 sec&nbsp; 1.00 MBytes&nbsp; 8.39 =
Mbits/sec&nbsp; 8/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 132K/89008(13283) us&nbsp; =
11.78<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] 7.00-8.00 sec&nbsp; 1.00 MBytes&nbsp; 8.39 =
Mbits/sec&nbsp; 8/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 134K/89494(12151) us&nbsp; =
11.72<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] 7.00-8.00 sec&nbsp; 1.00 MBytes&nbsp; 8.39 =
Mbits/sec&nbsp; 8/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 131K/91083(12797) us&nbsp; =
11.51<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [SUM] 7.00-8.00 sec&nbsp; 4.00 MBytes&nbsp; 33.6 =
Mbits/sec&nbsp; 32/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [root@bobcat iperf2-code]# iperf -s -i 1 -e --hide-ips -w =
4m<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; =
------------------------------------------------------------<o:p></o:p></=
span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Server listening on TCP port 5001 with pid =
233981<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Read buffer size:&nbsp; 128 KByte (Dist bin width=3D16.0 =
KByte)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; TCP window size: 7.63 MByte (WARNING: requested 3.81 =
MByte)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; =
------------------------------------------------------------<o:p></o:p></=
span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] local *.*.*.123%eth0 port 5001 connected with =
*.*.*.171 port<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 46448<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (trip-times) (sock=3D4) (peer 2.1.9-master) =
(qack)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (icwnd/mss/irtt=3D14/1448/11987) on 2023-01-06 12:27:45 =
(PST)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] local *.*.*.123%eth0 port 5001 connected with =
*.*.*.171 port<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 46454<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (trip-times) (sock=3D5) (peer 2.1.9-master) =
(qack)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (icwnd/mss/irtt=3D14/1448/11132) on 2023-01-06 12:27:45 =
(PST)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] local *.*.*.123%eth0 port 5001 connected with =
*.*.*.171 port<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 46460<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (trip-times) (sock=3D6) (peer 2.1.9-master) =
(qack)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (icwnd/mss/irtt=3D14/1448/11097) on 2023-01-06 12:27:45 =
(PST)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] local *.*.*.123%eth0 port 5001 connected with =
*.*.*.171 port<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 46458<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (trip-times) (sock=3D7) (peer 2.1.9-master) =
(qack)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; (icwnd/mss/irtt=3D14/1448/17823) on 2023-01-06 12:27:45 =
(PST)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [ ID] Interval&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Transfer&nbsp;&nbsp;&nbsp; Bandwidth&nbsp;&nbsp;&nbsp; Burst =
Latency<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; avg/min/max/stdev (cnt/size) inP NetPwr&nbsp; =
Reads=3DDist<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] 0.00-1.00 sec&nbsp; 1.09 MBytes&nbsp; 9.15 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 93.383/90.103/95.661/2.232 ms (8/143028)&nbsp; 128 KByte =
12.25<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 451=3D451:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] 0.00-1.00 sec&nbsp; 1.08 MBytes&nbsp; 9.06 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 96.834/95.229/102.645/2.442 ms (8/141580)&nbsp; 131 KByte =
11.70<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 472=3D472:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] 0.00-1.00 sec&nbsp; 1.10 MBytes&nbsp; 9.19 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 95.183/92.623/97.579/1.431 ms (8/143571)&nbsp; 131 KByte =
12.07<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 495=3D495:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] 0.00-1.00 sec&nbsp; 1.09 MBytes&nbsp; 9.15 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 89.317/84.865/94.906/3.674 ms (8/143028)&nbsp; 122 KByte =
12.81<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 489=3D489:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [ ID] Interval&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Transfer&nbsp;&nbsp;&nbsp; Bandwidth&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Reads=3DDist<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [SUM] 0.00-1.00 sec&nbsp; 4.36 MBytes&nbsp; 36.6 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 1907=3D1907:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] 1.00-2.00 sec&nbsp; 1.07 MBytes&nbsp; 8.95 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 92.649/89.987/95.036/1.828 ms (9/124314) 96.5 KByte =
12.08<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 492=3D492:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] 1.00-2.00 sec&nbsp; 1.06 MBytes&nbsp; 8.93 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 96.305/95.647/96.794/0.432 ms (9/123992)&nbsp; 100 KByte =
11.59<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 480=3D480:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] 1.00-2.00 sec&nbsp; 1.06 MBytes&nbsp; 8.89 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 92.578/90.866/94.145/1.371 ms (9/123510) 95.8 KByte =
12.01<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 513=3D513:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] 1.00-2.00 sec&nbsp; 1.07 MBytes&nbsp; 8.96 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 90.767/87.984/94.352/1.944 ms (9/124475) 94.7 KByte =
12.34<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 489=3D489:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [SUM] 1.00-2.00 sec&nbsp; 4.26 MBytes&nbsp; 35.7 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 1974=3D1974:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] 2.00-3.00 sec&nbsp; 1.09 MBytes&nbsp; 9.13 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 93.977/91.795/96.561/1.693 ms (8/142656)&nbsp; 112 KByte =
12.14<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 497=3D497:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] 2.00-3.00 sec&nbsp; 1.08 MBytes&nbsp; 9.04 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 96.544/95.815/97.798/0.693 ms (8/141208)&nbsp; 114 KByte =
11.70<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 503=3D503:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] 2.00-3.00 sec &nbsp;1.07 MBytes&nbsp; 9.01 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 93.970/91.193/96.325/1.796 ms (8/140846)&nbsp; 111 KByte =
11.99<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 509=3D509:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] 2.00-3.00 sec&nbsp; 1.08 MBytes&nbsp; 9.10 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 92.843/90.216/96.355/2.040 ms (8/142113)&nbsp; 111 KByte =
12.25<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 509=3D509:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [SUM] 2.00-3.00 sec&nbsp; 4.32 MBytes&nbsp; 36.3 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 2018=3D2018:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] 3.00-4.00 sec&nbsp; 1.06 MBytes&nbsp; 8.86 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 93.222/89.063/96.104/2.346 ms (9/123027) 96.1 KByte =
11.88<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 487=3D487:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] 3.00-4.00 sec&nbsp; 1.07 MBytes&nbsp; 8.97 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 96.277/95.051/97.230/0.767 ms (9/124636)&nbsp; 101 KByte =
11.65<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 489=3D489:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] 3.00-4.00 sec&nbsp; 1.08 MBytes&nbsp; 9.02 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 93.899/88.732/96.972/2.737 ms (9/125280) 98.6 KByte =
12.01<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 493=3D493:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] 3.00-4.00 sec&nbsp; 1.07 MBytes&nbsp; 8.97 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 92.490/89.862/95.265/1.796 ms (9/124636) 96.6 KByte =
12.13<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 493=3D493:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [SUM] 3.00-4.00 sec&nbsp; 4.27 MBytes&nbsp; 35.8 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 1962=3D1962:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] 4.00-5.00 sec&nbsp; 1.07 MBytes&nbsp; 9.00 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 92.431/81.888/96.221/4.524 ms (9/124958) 96.8 KByte =
12.17<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 498=3D498:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] 4.00-5.00 sec&nbsp; 1.07 MBytes&nbsp; 8.97 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 95.018/93.445/96.200/0.957 ms (9/124636) 99.3 KByte =
11.81<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 490=3D490:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] 4.00-5.00 sec&nbsp; 1.06 MBytes&nbsp; 8.90 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 93.874/86.485/95.672/2.810 ms (9/123671) 97.3 KByte =
11.86<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 481=3D481:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] 4.00-5.00 sec&nbsp; 1.08 MBytes&nbsp; 9.09 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 95.737/93.881/97.197/0.972 ms (9/126245)&nbsp; 101 KByte =
11.87<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 484=3D484:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [SUM] 4.00-5.00 sec&nbsp; 4.29 MBytes&nbsp; 36.0 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 1953=3D1953:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] 5.00-6.00 sec&nbsp; 1.09 MBytes&nbsp; 9.13 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 92.908/86.844/95.994/3.012 ms (8/142656)&nbsp; 111 KByte =
12.28<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 467=3D467:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] 5.00-6.00 sec&nbsp; 1.07 MBytes&nbsp; 8.94 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 96.593/95.343/97.660/0.876 ms (8/139760)&nbsp; 113 KByte =
11.58<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 478=3D478:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] 5.00-6.00 sec &nbsp;1.08 MBytes&nbsp; 9.03 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 95.021/91.421/97.167/1.893 ms (8/141027)&nbsp; 112 KByte =
11.87<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 491=3D491:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] 5.00-6.00 sec&nbsp; 1.08 MBytes&nbsp; 9.06 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 92.162/82.720/97.692/5.060 ms (8/141570)&nbsp; 109 KByte =
12.29<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 488=3D488:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [SUM] 5.00-6.00 sec&nbsp; 4.31 MBytes&nbsp; 36.2 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 1924=3D1924:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] 6.00-7.00 sec&nbsp; 1.04 MBytes&nbsp; 8.70 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 92.793/85.343/96.967/3.552 ms (9/120775) 93.9 KByte =
11.71<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 485=3D485:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] 6.00-7.00 sec&nbsp; 1.05 MBytes&nbsp; 8.79 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 91.679/84.479/96.760/3.975 ms (9/122062) 93.8 KByte =
11.98<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 472=3D472:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] 6.00-7.00 sec&nbsp; 1.06 MBytes&nbsp; 8.88 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 96.982/95.933/98.371/0.680 ms (9/123349)&nbsp; 100 KByte =
11.45<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 477=3D477:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] 6.00-7.00 sec&nbsp; 1.05 MBytes&nbsp; 8.80 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 94.342/91.660/96.025/1.660 ms (9/122223) 96.7 KByte =
11.66<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 494=3D494:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [SUM] 6.00-7.00 sec&nbsp; 4.19 MBytes&nbsp; 35.2 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 1928=3D1928:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 4] 7.00-8.00 sec&nbsp; 1.10 MBytes&nbsp; 9.25 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 92.515/88.182/96.351/2.538 ms (8/144466)&nbsp; 112 KByte =
12.49<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 510=3D510:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 3] 7.00-8.00 sec&nbsp; 1.09 MBytes&nbsp; 9.13 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 96.580/95.737/98.977/1.098 ms (8/142656)&nbsp; 115 KByte =
11.82<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 480=3D480:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 1] 7.00-8.00 sec&nbsp; 1.10 MBytes&nbsp; 9.21 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 95.269/91.719/97.514/2.126 ms (8/143923)&nbsp; 115 KByte =
12.09<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 515=3D515:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [&nbsp; 2] 7.00-8.00 sec &nbsp;1.11 MBytes&nbsp; 9.29 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 90.073/84.700/96.176/4.324 ms (8/145190)&nbsp; 110 KByte =
12.90<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 508=3D508:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; [SUM] 7.00-8.00 sec&nbsp; 4.40 MBytes&nbsp; 36.9 =
Mbits/sec<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; 2013=3D2013:0:0:0:0:0:0:0<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Bob<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; -----Original =
Message-----<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; From: LibreQoS
&lt;libreqos-bounces@lists.bufferbloat.net&gt; On =
Behalf<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Of<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; Dave Taht<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; via LibreQoS<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; Sent: Wednesday, January 4, 2023 12:26 =
PM<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; Subject: [LibreQoS] the grinch meets cloudflare's
christmas present<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; Please try the new, the shiny, the really wonderful =
test
here:<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;
https://urldefense.com/v3/__https://speed.cloudflare.com/__;!!BhdT!iZcFJ8=
WVU9S<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; [1]<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;
9zz5t456oxkfObrC5Xb9j5AG8UO3DqD5x4GAJkawZr0iGwEUtF0_09U8mCDnAkrJ9QEMHGbCM=
KVw$<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; [1]<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; I would really appreciate some independent =
verification of<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; measurements using this tool. In my brief =
experiments it
appears -<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; as<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; all the commercial tools to date - to dramatically
understate the<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; bufferbloat, on my LTE, (and my starlink terminal =
is out
being<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt;&gt; hacked^H^H^H^H^H^Hworked on, so I can't measure =
that)<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; [acm]<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; Hi Dave, I made some time to test &quot;cloudflare's =
christmas
present&quot;<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; yesterday.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; I'm on DOCSIS 3.1 service with 1Gbps Down. The Upstream =
has a<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; &quot;turbo&quot;<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; mode with 40-50Mbps for the first ~3 sec, then =
steady-state
about<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; 23Mbps.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; When I saw the ~620Mbps Downstream measurement, I was =
ready to<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; complain that even the IP-Layer Capacity was grossly
underestimated.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; In addition, the Latency measurements seem very low (as =
you<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; asserted),<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; although the cloud server was =
&quot;nearby&quot;.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; However, I found that Ookla and the ISP-provided =
measurement
were<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; also<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; reporting ~600Mbps! So the cloudflare Downstream =
capacity (or<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; throughput?) measurement was consistent with others. =
Our UDPST<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; server<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; was unreachable, otherwise I would have added that
measurement, too.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; The Upstream measurement graph seems to illustrate the
&quot;turbo&quot;<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; mode, with the dip after attaining =
44.5Mbps.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; UDPST saturates the uplink and we measure the full =
250ms of
the<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; Upstream buffer. Cloudflare's latency measurements =
don't even
come<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; close.<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; Al<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; Links:<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; ------<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; [1]<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;
https://urldefense.com/v3/__https:/speed.cloudflare.com/__;!!BhdT!iZcFJ8W=
VU9S9zz5t456oxkfObrC5Xb9j5AG8UO3DqD5x4GAJkawZr0iGwEUtF0_09U8mCDnAkrJ9QEMH=
GbCMKVw$<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; =
_______________________________________________<o:p></o:p></span></font><=
/p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; Rpm mailing list<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; Rpm@lists.bufferbloat.net<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt;&gt; =
https://lists.bufferbloat.net/listinfo/rpm<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; =
_______________________________________________<o:p></o:p></span></font><=
/p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Starlink mailing list<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; Starlink@lists.bufferbloat.net<o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; <o:p></o:p></span></font></p>

<p class=3DMsoPlainText><font size=3D2 face=3D"Courier New"><span =
style=3D'font-size:
10.0pt'>&gt; =
https://lists.bufferbloat.net/listinfo/starlink<o:p></o:p></span></font><=
/p>

</div>

</body>

</html>

------=_NextPart_000_07C0_01D921EC.61EEF8F0--


--===============0883575002508660138==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0883575002508660138==--


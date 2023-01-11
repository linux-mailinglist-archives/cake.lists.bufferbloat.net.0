Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E378B6585
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:26 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id BCE3E3CC09;
	Mon, 29 Apr 2024 18:18:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429134;
	bh=u5mAEI5/Ze4AW2ui0Vzcpn6Y0BhLBa+Aa5EDAcafsPk=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=kynkAgYQENon/pSum1M25gepSNasHLf9Sdtuqv07fTIG+1MBaKVmlxyv6Xf5usUKB
	 XKvNQwtC9NXprIAyTyjN5q1Hkc8W6v3aayDy/sYrG8fGPpsoYz01CUfuxUiThB9Iiz
	 kmCBeaYKVLAf0Sv2zQGdtQEWiVAR7qh02u+eDdnRPxve68uVUww7y3CYz8Ru69xYRv
	 RUI2bgYqnlDwkzuyTdXNGmMfcVDtih4Ha51XUUuQ5wGbZhwwFsn3Xj+omC146AGoGA
	 GwjuSRutmAarPdzkRi+XqW2LKeQs20629wXg674F4006cauKCGpDrYU7oexuzrhtfA
	 TbAOHRSJpZJ1w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7BDE93CB47
 for <cake@lists.bufferbloat.net>; Wed, 11 Jan 2023 06:05:42 -0500 (EST)
Received: by mail-ej1-x62c.google.com with SMTP id qk9so35924432ejc.3
 for <cake@lists.bufferbloat.net>; Wed, 11 Jan 2023 03:05:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tp.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=m59OwkbDf7SqTYNbU45nSjuZNfvEKaad3rOGf0cXud8=;
 b=LBq72mkmH/vIPSGq48QsrGKtullbOXwOi/NjiPAlBFgkCMTYBWT1w1aOU0xJpQwoge
 dxYzXioG+j+OduYQu1acVv404cLymmM/YA5aSSUqOG4cVVBlfibMLJodTDbIG4FEs0AD
 rE1V9qSZojWZpGAIq3mWCkdJ4tBF+zQnKcWK0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=m59OwkbDf7SqTYNbU45nSjuZNfvEKaad3rOGf0cXud8=;
 b=XZeMSvNfYpMu+KaNWhZBKdY1gMdUZqNtKTXny8m4BOlPihwGS3S9yP09DNZ3KP1WJj
 xnvkKgEyy9mFmW9fGK11hYqBYUPnRvf4GJVCjAbtdJQjzpbzoPHL3/EF8qSraEhDWobE
 X+oriqBEwuwOGkvXBPfy05YBSsOhXK5ScnRAGEoDZuRWN8ia2gJRf2bk50LBLoZZF88F
 uoKsWmtJRW+taYoTouBaA0qQhmVpZ9FamVwZk42Y6XA54Oc+sV8KDGEbokGoNQPSsoaX
 0l8ART2M/+dt2wZinset0q9OA6RaE6Gs7VytFkGZPBvzmcZNdMTf9m2rdPeedfHDlwUx
 vmTA==
X-Gm-Message-State: AFqh2koZ+qHKIz0DfcBKmFuToG2TFI2p/rRjINBb9QzrFBwbWST85Deh
 UARweJCdQRElCefWrYPwqMnxYK6AFfpNsPGWK7is
X-Google-Smtp-Source: AMrXdXtSOZRuUHWNEA3Says+Zs37AR/lHVg4QmvflS3b0KL/1y+VLDBfBFJNBu6+1JbLxuAUSushxbExPoWF6lM1ntk=
X-Received: by 2002:a17:906:5a0b:b0:84d:3b4a:6ace with SMTP id
 mx11-20020a1709065a0b00b0084d3b4a6acemr791350ejc.641.1673435140964; Wed, 11
 Jan 2023 03:05:40 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw4sbPeZ42eTLQzPmg_-viBBtbdQogAMgMNndoEHjY5UNA@mail.gmail.com>
 <CH0PR02MB79809552F1D5CEDB832A8590D3FB9@CH0PR02MB7980.namprd02.prod.outlook.com>
 <fa20576f88b9a1880df67417bea48ba6@rjmcmahon.com>
 <89D796E75967416B9723211C183A8396@SRA6>
 <a082b2436e6ba7892d2de8e0dfcc5acd@rjmcmahon.com>
 <3696AEA5409D4303ABCBC439727A5E40@SRA6>
 <CAKJdXWBb0VxSSoGAQTe3BXFLXCHd6NSspRnXd1frK2f66SLiUw@mail.gmail.com>
 <CAA93jw6B_9-WE9EEFuac+FAH-2dcULk=_3i_HfhCSVSOxyM7Eg@mail.gmail.com>
In-Reply-To: <CAA93jw6B_9-WE9EEFuac+FAH-2dcULk=_3i_HfhCSVSOxyM7Eg@mail.gmail.com>
Date: Wed, 11 Jan 2023 06:05:29 -0500
Message-ID: <CA+Ld8r8hR8KF35Yv7A3hb1QvC9v9ka2Nh2J=HEm0XhPfvAAcag@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: Re: [Cake] [Bloat] [Rpm] [Starlink] [LibreQoS] the grinch meets
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
From: Jay Moran via Cake <cake@lists.bufferbloat.net>
Reply-To: Jay Moran <jay@tp.org>
Cc: Rpm <rpm@lists.bufferbloat.net>, "MORTON JR., AL" <acmorton@att.com>,
 IETF IPPM WG <ippm@ietf.org>, "Luis A. Cornejo" <luis.a.cornejo@gmail.com>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>,
 dickroy@alum.mit.edu
Content-Type: multipart/mixed; boundary="===============2443069847765318782=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2443069847765318782==
Content-Type: multipart/alternative; boundary="00000000000021e47f05f1fafb8a"

--00000000000021e47f05f1fafb8a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Quick note from reading your blog entry.

Last night, I played with the Cloudflare Speedtest a little. It downloads
25MB and a 50MB (or 100MB, can=E2=80=99t remember) as well on a =E2=80=9Csp=
eedier=E2=80=9D network
after it does the 10MB file.

I was getting 1.2Gbs down and 760Mbs up, 4ms of LUL, and seeing those
larger file sizes. I was trying to screenshot and noticed I had those extra
file sizes I had to scroll down for. I ended up getting distracted and not
taking the shot to send. But, it will do a longer/bigger test under right
conditions.

Network here at the house is AT&T Fiber, 5Gbs up/down - limited to 3.6Gbs
down from Ubiquity UDM SE router/firewall with all IPS/Geo-blocking turned
on. 4.7Gbs non-blocking up. I am building a pfSense box to eliminate the
bottleneck. Couldn=E2=80=99t be happier, good job AS7018.

The machine I was testing from was Win10 wired 10Gbs and gets ~2.2Gbs
up/down for fast.com/speedtest.net. I haven=E2=80=99t take time to test int=
ernally
or try and tune that system, or might be CAT5e cabling issue=E2=80=A6 is fa=
st
enough for me for that system.

Jay

On Wed, Jan 11, 2023 at 12:07 AM Dave Taht via Bloat <
bloat@lists.bufferbloat.net> wrote:

> Dear Luis:
>
> You hit 17 seconds of delay on your test.
>
> I got you beat, today, on my LTE connection, I cracked 182 seconds.
>
> I'd like to thank Verizon for making it possible for me to spew 4000
> words on my kvetches about the current speedtest regimes of speedtest,
> cloudflare, and so on, by making my network connection so lousy today
> that I sat in front of emacs to rant - and y'all for helping tone
> down, a little, this blog entry:
>
> https://blog.cerowrt.org/post/speedtests/
>
> On Tue, Jan 10, 2023 at 9:25 AM Luis A. Cornejo via Rpm
> <rpm@lists.bufferbloat.net> wrote:
> >
> > Here is my VZ HSI
> >
> >
> > No SQMm on
> >
> > On Sat, Jan 7, 2023 at 6:38 PM Dick Roy via Bloat <
> bloat@lists.bufferbloat.net> wrote:
> >>
> >>
> >>
> >>
> >>
> >> -----Original Message-----
> >> From: rjmcmahon [mailto:rjmcmahon@rjmcmahon.com]
> >> Sent: Friday, January 6, 2023 3:45 PM
> >> To: dickroy@alum.mit.edu
> >> Cc: 'MORTON JR., AL'; 'IETF IPPM WG'; 'libreqos'; 'Cake List'; 'Rpm';
> 'bloat'
> >> Subject: Re: [Starlink] [Rpm] [LibreQoS] the grinch meets
> cloudflare'schristmas present
> >>
> >>
> >>
> >> yeah, I'd prefer not to output CLT sample groups at all but the
> >>
> >> histograms aren't really human readable and users constantly ask for
> >>
> >> them. I thought about providing a distance from the gaussian as output
> >>
> >> too but so far few would understand it and nobody I found would act up=
on
> >>
> >> it.
> >>
> >> [RR] Understandable until such metrics are =E2=80=9Cactionable=E2=80=
=9D, and that=E2=80=99s =E2=80=9Cup
> to us to find/define/figure out=E2=80=9D it seems to me. Metrics that are=
 not
> actionable are write-only memory and good for little but historical recor=
dJ
> >>
> >> The tool produces the full histograms so no information is really
> >>
> >> missing except for maybe better time series analysis.
> >>
> >> [RR] Isn=E2=80=99t that in fact what we are trying to extract from the=
 e2e
> stats we collect?  i.e., infer the time evolution of the system from its
> I/O behavior? As you point out, it=E2=80=99s really hard to do without pr=
obes in
> the guts of the system, nd yes, synchronization is important J
> >>
> >>
> >>
> >> The open source flows python code also released with iperf 2 does use
> >>
> >> the komogorov-smirnov distances & distance matrices to cluster when th=
e
> >>
> >> number of histograms are just too much. We've analyzed 1M runs to faul=
t
> >>
> >> isolate the "unexpected interruptions" or "bugs" and without statistic=
al
> >>
> >> support it is just not doable. This does require instrumentation of th=
e
> >>
> >> full path with mapping to a common clock domain (e.g. GPS) and not jus=
t
> >>
> >> e2e stats. I find an e2e complaint by an end user about "poor speed" a=
s
> >>
> >> useful as telling a pharmacist I have a fever. Not much diagnostically
> >>
> >> is going on. Take an aspirin.
> >>
> >> [RR] That=E2=80=99s AWESOME!!!!!!!!!!!!!!!!!! I love that analogy!
> >>
> >>
> >>
> >> RR
> >>
> >>
> >>
> >> https://en.wikipedia.org/wiki/Kolmogorov%E2%80%93Smirnov_test
> >>
> >> https://sourceforge.net/p/iperf2/code/ci/master/tree/flows/flows.py
> >>
> >>
> >>
> >> Bob
> >>
> >> > See below =E2=80=A6
> >>
> >> >
> >>
> >> > -----Original Message-----
> >>
> >> > From: Starlink [mailto:starlink-bounces@lists.bufferbloat.net] On
> >>
> >> > Behalf Of rjmcmahon via Starlink
> >>
> >> > Sent: Friday, January 6, 2023 12:39 PM
> >>
> >> > To: MORTON JR., AL
> >>
> >> > Cc: Dave Taht via Starlink; IETF IPPM WG; libreqos; Cake List; Rpm;
> >>
> >> > bloat
> >>
> >> > Subject: Re: [Starlink] [Rpm] [LibreQoS] the grinch meets
> >>
> >> > cloudflare'schristmas present
> >>
> >> >
> >>
> >> > Some thoughts are not to use UDP for testing here. Also, these speed
> >>
> >> >
> >>
> >> > tests have little to no information for network engineers about what=
's
> >>
> >> >
> >>
> >> >
> >>
> >> > going on. Iperf 2 may better assist network engineers but then I'm
> >>
> >> >
> >>
> >> > biased ;)
> >>
> >> >
> >>
> >> > Running iperf 2 https://sourceforge.net/projects/iperf2/ with
> >>
> >> >
> >>
> >> > --trip-times. Though the sampling and central limit theorem averagin=
g
> >>
> >> > is
> >>
> >> >
> >>
> >> > hiding the real distributions (use --histograms to get those)
> >>
> >> >
> >>
> >> > _[RR] FWIW (IMNBWM __J)=E2=80=A6 If the output/final histograms indi=
cate the
> >>
> >> > PDF is NOT Gaussian, then any application of the CLT is
> >>
> >> > inappropriate/contra-indicated! The CLT is a "proof under certain
> >>
> >> > regularity conditions/assumptions of underlying/constituent PDFs, th=
at
> >>
> >> > the resulting PDF (after all the necessary convolutions are performe=
d
> >>
> >> > to get to the PDF of the output) will asymptotically approach a
> >>
> >> > Gaussian with only a mean and a std. dev. left to specify. _
> >>
> >> >
> >>
> >> > Below are 4 parallel TCP streams from my home to one of my servers i=
n
> >>
> >> >
> >>
> >> > the cloud. First where TCP is limited per CCA. Second is source side
> >>
> >> >
> >>
> >> > write rate limiting. Things to note:
> >>
> >> >
> >>
> >> > o) connect times for both at 10-15 ms
> >>
> >> >
> >>
> >> > o) multiple TCP retries on a few rites - one case is 4 with 5 writes=
.
> >>
> >> >
> >>
> >> > Source side pacing eliminates retries
> >>
> >> >
> >>
> >> > o) Fairness with CCA isn't great but quite good with source side wri=
te
> >>
> >> >
> >>
> >> >
> >>
> >> > pacing
> >>
> >> >
> >>
> >> > o) Queue depth with CCA is about 150 Kbytes about 100K byte with
> >>
> >> > source
> >>
> >> >
> >>
> >> > side pacing
> >>
> >> >
> >>
> >> > o) min write to read is about 80 ms for both
> >>
> >> >
> >>
> >> > o) max is 220 ms vs 97 ms
> >>
> >> >
> >>
> >> > o) stdev for CCA write/read is 30 ms vs 3 ms
> >>
> >> >
> >>
> >> > o) TCP RTT is 20ms w/CCA and 90 ms with ssp - seems odd here as
> >>
> >> >
> >>
> >> > TCP_QUICACK and TCP_NODELAY are both enabled.
> >>
> >> >
> >>
> >> > [ CT] final connect times (min/avg/max/stdev) =3D
> >>
> >> >
> >>
> >> > 10.326/13.522/14.986/2150.329 ms (tot/err) =3D 4/0
> >>
> >> >
> >>
> >> > [rjmcmahon@ryzen3950 iperf2-code]$ iperf -c *** --hide-ips -e
> >>
> >> >
> >>
> >> > --trip-times -i 1 -P 4 -t 10 -w 4m --tcp-quickack -N
> >>
> >> >
> >>
> >> > ------------------------------------------------------------
> >>
> >> >
> >>
> >> > Client connecting to (**hidden**), TCP port 5001 with pid 107678 (4
> >>
> >> >
> >>
> >> > flows)
> >>
> >> >
> >>
> >> > Write buffer size: 131072 Byte
> >>
> >> >
> >>
> >> > TOS set to 0x0 and nodelay (Nagle off)
> >>
> >> >
> >>
> >> > TCP window size: 7.63 MByte (WARNING: requested 3.81 MByte)
> >>
> >> >
> >>
> >> > Event based writes (pending queue watermark at 16384 bytes)
> >>
> >> >
> >>
> >> > ------------------------------------------------------------
> >>
> >> >
> >>
> >> > [  1] local *.*.*.85%enp4s0 port 42480 connected with *.*.*.123 port
> >>
> >> >
> >>
> >> > 5001 (prefetch=3D16384) (trip-times) (sock=3D3) (qack)
> >>
> >> >
> >>
> >> > (icwnd/mss/irtt=3D14/1448/10534) (ct=3D10.63 ms) on 2023-01-06 12:17=
:56
> >>
> >> >
> >>
> >> > (PST)
> >>
> >> >
> >>
> >> > [  4] local *.*.*.85%enp4s0 port 42488 connected with *.*.*.123 port
> >>
> >> >
> >>
> >> > 5001 (prefetch=3D16384) (trip-times) (sock=3D5) (qack)
> >>
> >> >
> >>
> >> > (icwnd/mss/irtt=3D14/1448/14023) (ct=3D14.08 ms) on 2023-01-06 12:17=
:56
> >>
> >> >
> >>
> >> > (PST)
> >>
> >> >
> >>
> >> > [  3] local *.*.*.85%enp4s0 port 42502 connected with *.*.*.123 port
> >>
> >> >
> >>
> >> > 5001 (prefetch=3D16384) (trip-times) (sock=3D6) (qack)
> >>
> >> >
> >>
> >> > (icwnd/mss/irtt=3D14/1448/14642) (ct=3D14.70 ms) on 2023-01-06 12:17=
:56
> >>
> >> >
> >>
> >> > (PST)
> >>
> >> >
> >>
> >> > [  2] local *.*.*.85%enp4s0 port 42484 connected with *.*.*.123 port
> >>
> >> >
> >>
> >> > 5001 (prefetch=3D16384) (trip-times) (sock=3D4) (qack)
> >>
> >> >
> >>
> >> > (icwnd/mss/irtt=3D14/1448/14728) (ct=3D14.79 ms) on 2023-01-06 12:17=
:56
> >>
> >> >
> >>
> >> > (PST)
> >>
> >> >
> >>
> >> > [ ID] Interval        Transfer    Bandwidth       Write/Err  Rtry
> >>
> >> >
> >>
> >> > Cwnd/RTT(var)        NetPwr
> >>
> >> >
> >>
> >> > ...
> >>
> >> >
> >>
> >> > [  4] 4.00-5.00 sec  1.38 MBytes  11.5 Mbits/sec  11/0         3
> >>
> >> >
> >>
> >> >
> >>
> >> > 29K/21088(1142) us  68.37
> >>
> >> >
> >>
> >> > [  2] 4.00-5.00 sec  1.62 MBytes  13.6 Mbits/sec  13/0         2
> >>
> >> >
> >>
> >> >
> >>
> >> > 31K/19284(612) us  88.36
> >>
> >> >
> >>
> >> > [  1] 4.00-5.00 sec   896 KBytes  7.34 Mbits/sec  7/0         5
> >>
> >> >
> >>
> >> > 16K/18996(658) us  48.30
> >>
> >> >
> >>
> >> > [  3] 4.00-5.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         5
> >>
> >> >
> >>
> >> > 18K/18133(208) us  57.83
> >>
> >> >
> >>
> >> > [SUM] 4.00-5.00 sec  4.88 MBytes  40.9 Mbits/sec  39/0        15
> >>
> >> >
> >>
> >> > [  4] 5.00-6.00 sec  1.25 MBytes  10.5 Mbits/sec  10/0         4
> >>
> >> >
> >>
> >> >
> >>
> >> > 29K/14717(489) us  89.06
> >>
> >> >
> >>
> >> > [  1] 5.00-6.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         4
> >>
> >> >
> >>
> >> > 16K/15874(408) us  66.06
> >>
> >> >
> >>
> >> > [  3] 5.00-6.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         4
> >>
> >> >
> >>
> >> > 16K/15826(382) us  74.54
> >>
> >> >
> >>
> >> > [  2] 5.00-6.00 sec  1.50 MBytes  12.6 Mbits/sec  12/0         6
> >>
> >> >
> >>
> >> >
> >>
> >> > 9K/14878(557) us  106
> >>
> >> >
> >>
> >> > [SUM] 5.00-6.00 sec  4.88 MBytes  40.9 Mbits/sec  39/0        18
> >>
> >> >
> >>
> >> > [  4] 6.00-7.00 sec  1.75 MBytes  14.7 Mbits/sec  14/0         4
> >>
> >> >
> >>
> >> >
> >>
> >> > 25K/15472(496) us  119
> >>
> >> >
> >>
> >> > [  2] 6.00-7.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         2
> >>
> >> >
> >>
> >> > 26K/16417(427) us  63.87
> >>
> >> >
> >>
> >> > [  1] 6.00-7.00 sec  1.25 MBytes  10.5 Mbits/sec  10/0         5
> >>
> >> >
> >>
> >> >
> >>
> >> > 16K/16268(679) us  80.57
> >>
> >> >
> >>
> >> > [  3] 6.00-7.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         6
> >>
> >> >
> >>
> >> > 15K/16629(799) us  63.06
> >>
> >> >
> >>
> >> > [SUM] 6.00-7.00 sec  5.00 MBytes  41.9 Mbits/sec  40/0        17
> >>
> >> >
> >>
> >> > [  4] 7.00-8.00 sec  1.75 MBytes  14.7 Mbits/sec  14/0         4
> >>
> >> >
> >>
> >> >
> >>
> >> > 22K/13986(519) us  131
> >>
> >> >
> >>
> >> > [  1] 7.00-8.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         4
> >>
> >> >
> >>
> >> > 16K/12679(377) us  93.04
> >>
> >> >
> >>
> >> > [  3] 7.00-8.00 sec   896 KBytes  7.34 Mbits/sec  7/0         5
> >>
> >> >
> >>
> >> > 14K/12971(367) us  70.74
> >>
> >> >
> >>
> >> > [  2] 7.00-8.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         6
> >>
> >> >
> >>
> >> > 15K/14740(779) us  80.03
> >>
> >> >
> >>
> >> > [SUM] 7.00-8.00 sec  4.88 MBytes  40.9 Mbits/sec  39/0        19
> >>
> >> >
> >>
> >> > [root@bobcat iperf2-code]# iperf -s -i 1 -e --hide-ips -w 4m
> >>
> >> >
> >>
> >> > ------------------------------------------------------------
> >>
> >> >
> >>
> >> > Server listening on TCP port 5001 with pid 233615
> >>
> >> >
> >>
> >> > Read buffer size:  128 KByte (Dist bin width=3D16.0 KByte)
> >>
> >> >
> >>
> >> > TCP window size: 7.63 MByte (WARNING: requested 3.81 MByte)
> >>
> >> >
> >>
> >> > ------------------------------------------------------------
> >>
> >> >
> >>
> >> > [  1] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port
> >>
> >> > 42480
> >>
> >> >
> >>
> >> > (trip-times) (sock=3D4) (peer 2.1.9-master) (qack)
> >>
> >> >
> >>
> >> > (icwnd/mss/irtt=3D14/1448/11636) on 2023-01-06 12:17:56 (PST)
> >>
> >> >
> >>
> >> > [  2] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port
> >>
> >> > 42502
> >>
> >> >
> >>
> >> > (trip-times) (sock=3D5) (peer 2.1.9-master) (qack)
> >>
> >> >
> >>
> >> > (icwnd/mss/irtt=3D14/1448/11898) on 2023-01-06 12:17:56 (PST)
> >>
> >> >
> >>
> >> > [  3] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port
> >>
> >> > 42484
> >>
> >> >
> >>
> >> > (trip-times) (sock=3D6) (peer 2.1.9-master) (qack)
> >>
> >> >
> >>
> >> > (icwnd/mss/irtt=3D14/1448/11938) on 2023-01-06 12:17:56 (PST)
> >>
> >> >
> >>
> >> > [  4] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port
> >>
> >> > 42488
> >>
> >> >
> >>
> >> > (trip-times) (sock=3D7) (peer 2.1.9-master) (qack)
> >>
> >> >
> >>
> >> > (icwnd/mss/irtt=3D14/1448/11919) on 2023-01-06 12:17:56 (PST)
> >>
> >> >
> >>
> >> > [ ID] Interval        Transfer    Bandwidth    Burst Latency
> >>
> >> >
> >>
> >> > avg/min/max/stdev (cnt/size) inP NetPwr  Reads=3DDist
> >>
> >> >
> >>
> >> > ...
> >>
> >> >
> >>
> >> > [  2] 4.00-5.00 sec  1.06 MBytes  8.86 Mbits/sec
> >>
> >> >
> >>
> >> > 129.819/90.391/186.075/31.346 ms (9/123080)  154 KByte 8.532803
> >>
> >> >
> >>
> >> > 467=3D461:6:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  3] 4.00-5.00 sec  1.52 MBytes  12.8 Mbits/sec
> >>
> >> >
> >>
> >> > 103.552/82.653/169.274/28.382 ms (12/132854)  149 KByte 15.40
> >>
> >> >
> >>
> >> > 646=3D643:1:2:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  4] 4.00-5.00 sec  1.39 MBytes  11.6 Mbits/sec
> >>
> >> >
> >>
> >> > 107.503/66.843/143.038/24.269 ms (11/132294)  149 KByte 13.54
> >>
> >> >
> >>
> >> > 619=3D617:1:1:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  1] 4.00-5.00 sec   988 KBytes  8.10 Mbits/sec
> >>
> >> >
> >>
> >> > 141.389/119.961/178.785/18.812 ms (7/144593)  170 KByte 7.158641
> >>
> >> >
> >>
> >> > 409=3D404:5:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [SUM] 4.00-5.00 sec  4.93 MBytes  41.4 Mbits/sec
> >>
> >> >
> >>
> >> > 2141=3D2125:13:3:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  4] 5.00-6.00 sec  1.29 MBytes  10.8 Mbits/sec
> >>
> >> >
> >>
> >> > 118.943/86.253/176.128/31.248 ms (10/135098)  164 KByte 11.36
> >>
> >> >
> >>
> >> > 511=3D506:2:3:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  2] 5.00-6.00 sec  1.09 MBytes  9.17 Mbits/sec
> >>
> >> >
> >>
> >> > 139.821/102.418/218.875/40.422 ms (9/127424)  148 KByte 8.202049
> >>
> >> >
> >>
> >> > 487=3D484:2:1:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  3] 5.00-6.00 sec  1.51 MBytes  12.6 Mbits/sec
> >>
> >> >
> >>
> >> > 102.146/77.085/140.893/18.441 ms (13/121520)  151 KByte 15.47
> >>
> >> >
> >>
> >> > 640=3D636:1:3:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  1] 5.00-6.00 sec   981 KBytes  8.04 Mbits/sec
> >>
> >> >
> >>
> >> > 161.901/105.582/219.931/36.260 ms (8/125614)  134 KByte 6.206944
> >>
> >> >
> >>
> >> > 415=3D413:2:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [SUM] 5.00-6.00 sec  4.85 MBytes  40.7 Mbits/sec
> >>
> >> >
> >>
> >> > 2053=3D2039:7:7:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  4] 6.00-7.00 sec  1.74 MBytes  14.6 Mbits/sec
> >>
> >> >
> >>
> >> > 88.846/74.297/101.859/7.118 ms (14/130526)  156 KByte 20.57
> >>
> >> >
> >>
> >> > 711=3D707:3:1:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  1] 6.00-7.00 sec  1.22 MBytes  10.2 Mbits/sec
> >>
> >> >
> >>
> >> > 120.639/100.257/157.567/21.770 ms (10/127568)  157 KByte 10.57
> >>
> >> >
> >>
> >> > 494=3D488:5:1:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  2] 6.00-7.00 sec  1015 KBytes  8.32 Mbits/sec
> >>
> >> >
> >>
> >> > 144.632/124.368/171.349/16.597 ms (8/129958)  143 KByte 7.188321
> >>
> >> >
> >>
> >> > 408=3D403:5:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  3] 6.00-7.00 sec  1.02 MBytes  8.60 Mbits/sec
> >>
> >> >
> >>
> >> > 143.516/102.322/173.001/24.089 ms (8/134302)  146 KByte 7.486359
> >>
> >> >
> >>
> >> > 484=3D480:4:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [SUM] 6.00-7.00 sec  4.98 MBytes  41.7 Mbits/sec
> >>
> >> >
> >>
> >> > 2097=3D2078:17:2:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  4] 7.00-8.00 sec  1.77 MBytes  14.9 Mbits/sec
> >>
> >> >
> >>
> >> > 85.406/65.797/103.418/12.609 ms (14/132595)  153 KByte 21.74
> >>
> >> >
> >>
> >> > 692=3D687:2:3:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  2] 7.00-8.00 sec   957 KBytes  7.84 Mbits/sec
> >>
> >> >
> >>
> >> > 153.936/131.452/191.464/19.361 ms (7/140042)  160 KByte 6.368199
> >>
> >> >
> >>
> >> > 429=3D425:4:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  1] 7.00-8.00 sec  1.13 MBytes  9.44 Mbits/sec
> >>
> >> >
> >>
> >> > 131.146/109.737/166.774/22.035 ms (9/131124)  146 KByte 8.998528
> >>
> >> >
> >>
> >> > 520=3D516:4:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  3] 7.00-8.00 sec  1.13 MBytes  9.51 Mbits/sec
> >>
> >> >
> >>
> >> > 126.512/88.404/220.175/42.237 ms (9/132089)  172 KByte 9.396784
> >>
> >> >
> >>
> >> > 527=3D524:1:2:0:0:0:0:0
> >>
> >> >
> >>
> >> > [SUM] 7.00-8.00 sec  4.96 MBytes  41.6 Mbits/sec
> >>
> >> >
> >>
> >> > 2168=3D2152:11:5:0:0:0:0:0
> >>
> >> >
> >>
> >> > With source side rate limiting to 9 mb/s per stream.
> >>
> >> >
> >>
> >> > [rjmcmahon@ryzen3950 iperf2-code]$ iperf -c *** --hide-ips -e
> >>
> >> >
> >>
> >> > --trip-times -i 1 -P 4 -t 10 -w 4m --tcp-quickack -N -b 9m
> >>
> >> >
> >>
> >> > ------------------------------------------------------------
> >>
> >> >
> >>
> >> > Client connecting to (**hidden**), TCP port 5001 with pid 108884 (4
> >>
> >> >
> >>
> >> > flows)
> >>
> >> >
> >>
> >> > Write buffer size: 131072 Byte
> >>
> >> >
> >>
> >> > TOS set to 0x0 and nodelay (Nagle off)
> >>
> >> >
> >>
> >> > TCP window size: 7.63 MByte (WARNING: requested 3.81 MByte)
> >>
> >> >
> >>
> >> > Event based writes (pending queue watermark at 16384 bytes)
> >>
> >> >
> >>
> >> > ------------------------------------------------------------
> >>
> >> >
> >>
> >> > [  1] local *.*.*.85%enp4s0 port 46448 connected with *.*.*.123 port
> >>
> >> >
> >>
> >> > 5001 (prefetch=3D16384) (trip-times) (sock=3D3) (qack)
> >>
> >> >
> >>
> >> > (icwnd/mss/irtt=3D14/1448/10666) (ct=3D10.70 ms) on 2023-01-06 12:27=
:45
> >>
> >> >
> >>
> >> > (PST)
> >>
> >> >
> >>
> >> > [  3] local *.*.*.85%enp4s0 port 46460 connected with *.*.*.123 port
> >>
> >> >
> >>
> >> > 5001 (prefetch=3D16384) (trip-times) (sock=3D6) (qack)
> >>
> >> >
> >>
> >> > (icwnd/mss/irtt=3D14/1448/16499) (ct=3D16.54 ms) on 2023-01-06 12:27=
:45
> >>
> >> >
> >>
> >> > (PST)
> >>
> >> >
> >>
> >> > [  2] local *.*.*.85%enp4s0 port 46454 connected with *.*.*.123 port
> >>
> >> >
> >>
> >> > 5001 (prefetch=3D16384) (trip-times) (sock=3D4) (qack)
> >>
> >> >
> >>
> >> > (icwnd/mss/irtt=3D14/1448/16580) (ct=3D16.86 ms) on 2023-01-06 12:27=
:45
> >>
> >> >
> >>
> >> > (PST)
> >>
> >> >
> >>
> >> > [  4] local *.*.*.85%enp4s0 port 46458 connected with *.*.*.123 port
> >>
> >> >
> >>
> >> > 5001 (prefetch=3D16384) (trip-times) (sock=3D5) (qack)
> >>
> >> >
> >>
> >> > (icwnd/mss/irtt=3D14/1448/16802) (ct=3D16.83 ms) on 2023-01-06 12:27=
:45
> >>
> >> >
> >>
> >> > (PST)
> >>
> >> >
> >>
> >> > [ ID] Interval        Transfer    Bandwidth       Write/Err  Rtry
> >>
> >> >
> >>
> >> > Cwnd/RTT(var)        NetPwr
> >>
> >> >
> >>
> >> > ...
> >>
> >> >
> >>
> >> > [  2] 4.00-5.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0
> >>
> >> >
> >>
> >> > 134K/88055(12329) us  11.91
> >>
> >> >
> >>
> >> > [  4] 4.00-5.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0
> >>
> >> >
> >>
> >> > 132K/74867(11755) us  14.01
> >>
> >> >
> >>
> >> > [  1] 4.00-5.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0
> >>
> >> >
> >>
> >> > 134K/89101(13134) us  11.77
> >>
> >> >
> >>
> >> > [  3] 4.00-5.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0
> >>
> >> >
> >>
> >> > 131K/91451(11938) us  11.47
> >>
> >> >
> >>
> >> > [SUM] 4.00-5.00 sec  4.00 MBytes  33.6 Mbits/sec  32/0         0
> >>
> >> >
> >>
> >> > [  2] 5.00-6.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0
> >>
> >> >
> >>
> >> > 134K/85135(14580) us  13.86
> >>
> >> >
> >>
> >> > [  4] 5.00-6.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0
> >>
> >> >
> >>
> >> > 132K/85124(15654) us  13.86
> >>
> >> >
> >>
> >> > [  1] 5.00-6.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0
> >>
> >> >
> >>
> >> > 134K/91336(11335) us  12.92
> >>
> >> >
> >>
> >> > [  3] 5.00-6.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0
> >>
> >> >
> >>
> >> > 131K/89185(13499) us  13.23
> >>
> >> >
> >>
> >> > [SUM] 5.00-6.00 sec  4.50 MBytes  37.7 Mbits/sec  36/0         0
> >>
> >> >
> >>
> >> > [  2] 6.00-7.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0
> >>
> >> >
> >>
> >> > 134K/85687(13489) us  13.77
> >>
> >> >
> >>
> >> > [  4] 6.00-7.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0
> >>
> >> >
> >>
> >> > 132K/82803(13001) us  14.25
> >>
> >> >
> >>
> >> > [  1] 6.00-7.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0
> >>
> >> >
> >>
> >> > 134K/86869(15186) us  13.58
> >>
> >> >
> >>
> >> > [  3] 6.00-7.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0
> >>
> >> >
> >>
> >> > 131K/91447(12515) us  12.90
> >>
> >> >
> >>
> >> > [SUM] 6.00-7.00 sec  4.50 MBytes  37.7 Mbits/sec  36/0         0
> >>
> >> >
> >>
> >> > [  2] 7.00-8.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0
> >>
> >> >
> >>
> >> > 134K/81814(13168) us  12.82
> >>
> >> >
> >>
> >> > [  4] 7.00-8.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0
> >>
> >> >
> >>
> >> > 132K/89008(13283) us  11.78
> >>
> >> >
> >>
> >> > [  1] 7.00-8.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0
> >>
> >> >
> >>
> >> > 134K/89494(12151) us  11.72
> >>
> >> >
> >>
> >> > [  3] 7.00-8.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0
> >>
> >> >
> >>
> >> > 131K/91083(12797) us  11.51
> >>
> >> >
> >>
> >> > [SUM] 7.00-8.00 sec  4.00 MBytes  33.6 Mbits/sec  32/0         0
> >>
> >> >
> >>
> >> > [root@bobcat iperf2-code]# iperf -s -i 1 -e --hide-ips -w 4m
> >>
> >> >
> >>
> >> > ------------------------------------------------------------
> >>
> >> >
> >>
> >> > Server listening on TCP port 5001 with pid 233981
> >>
> >> >
> >>
> >> > Read buffer size:  128 KByte (Dist bin width=3D16.0 KByte)
> >>
> >> >
> >>
> >> > TCP window size: 7.63 MByte (WARNING: requested 3.81 MByte)
> >>
> >> >
> >>
> >> > ------------------------------------------------------------
> >>
> >> >
> >>
> >> > [  1] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port
> >>
> >> > 46448
> >>
> >> >
> >>
> >> > (trip-times) (sock=3D4) (peer 2.1.9-master) (qack)
> >>
> >> >
> >>
> >> > (icwnd/mss/irtt=3D14/1448/11987) on 2023-01-06 12:27:45 (PST)
> >>
> >> >
> >>
> >> > [  2] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port
> >>
> >> > 46454
> >>
> >> >
> >>
> >> > (trip-times) (sock=3D5) (peer 2.1.9-master) (qack)
> >>
> >> >
> >>
> >> > (icwnd/mss/irtt=3D14/1448/11132) on 2023-01-06 12:27:45 (PST)
> >>
> >> >
> >>
> >> > [  3] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port
> >>
> >> > 46460
> >>
> >> >
> >>
> >> > (trip-times) (sock=3D6) (peer 2.1.9-master) (qack)
> >>
> >> >
> >>
> >> > (icwnd/mss/irtt=3D14/1448/11097) on 2023-01-06 12:27:45 (PST)
> >>
> >> >
> >>
> >> > [  4] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port
> >>
> >> > 46458
> >>
> >> >
> >>
> >> > (trip-times) (sock=3D7) (peer 2.1.9-master) (qack)
> >>
> >> >
> >>
> >> > (icwnd/mss/irtt=3D14/1448/17823) on 2023-01-06 12:27:45 (PST)
> >>
> >> >
> >>
> >> > [ ID] Interval        Transfer    Bandwidth    Burst Latency
> >>
> >> >
> >>
> >> > avg/min/max/stdev (cnt/size) inP NetPwr  Reads=3DDist
> >>
> >> >
> >>
> >> > [  4] 0.00-1.00 sec  1.09 MBytes  9.15 Mbits/sec
> >>
> >> >
> >>
> >> > 93.383/90.103/95.661/2.232 ms (8/143028)  128 KByte 12.25
> >>
> >> >
> >>
> >> > 451=3D451:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  3] 0.00-1.00 sec  1.08 MBytes  9.06 Mbits/sec
> >>
> >> >
> >>
> >> > 96.834/95.229/102.645/2.442 ms (8/141580)  131 KByte 11.70
> >>
> >> >
> >>
> >> > 472=3D472:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  1] 0.00-1.00 sec  1.10 MBytes  9.19 Mbits/sec
> >>
> >> >
> >>
> >> > 95.183/92.623/97.579/1.431 ms (8/143571)  131 KByte 12.07
> >>
> >> >
> >>
> >> > 495=3D495:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  2] 0.00-1.00 sec  1.09 MBytes  9.15 Mbits/sec
> >>
> >> >
> >>
> >> > 89.317/84.865/94.906/3.674 ms (8/143028)  122 KByte 12.81
> >>
> >> >
> >>
> >> > 489=3D489:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [ ID] Interval        Transfer    Bandwidth       Reads=3DDist
> >>
> >> >
> >>
> >> > [SUM] 0.00-1.00 sec  4.36 MBytes  36.6 Mbits/sec
> >>
> >> >
> >>
> >> > 1907=3D1907:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  4] 1.00-2.00 sec  1.07 MBytes  8.95 Mbits/sec
> >>
> >> >
> >>
> >> > 92.649/89.987/95.036/1.828 ms (9/124314) 96.5 KByte 12.08
> >>
> >> >
> >>
> >> > 492=3D492:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  3] 1.00-2.00 sec  1.06 MBytes  8.93 Mbits/sec
> >>
> >> >
> >>
> >> > 96.305/95.647/96.794/0.432 ms (9/123992)  100 KByte 11.59
> >>
> >> >
> >>
> >> > 480=3D480:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  1] 1.00-2.00 sec  1.06 MBytes  8.89 Mbits/sec
> >>
> >> >
> >>
> >> > 92.578/90.866/94.145/1.371 ms (9/123510) 95.8 KByte 12.01
> >>
> >> >
> >>
> >> > 513=3D513:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  2] 1.00-2.00 sec  1.07 MBytes  8.96 Mbits/sec
> >>
> >> >
> >>
> >> > 90.767/87.984/94.352/1.944 ms (9/124475) 94.7 KByte 12.34
> >>
> >> >
> >>
> >> > 489=3D489:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [SUM] 1.00-2.00 sec  4.26 MBytes  35.7 Mbits/sec
> >>
> >> >
> >>
> >> > 1974=3D1974:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  4] 2.00-3.00 sec  1.09 MBytes  9.13 Mbits/sec
> >>
> >> >
> >>
> >> > 93.977/91.795/96.561/1.693 ms (8/142656)  112 KByte 12.14
> >>
> >> >
> >>
> >> > 497=3D497:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  3] 2.00-3.00 sec  1.08 MBytes  9.04 Mbits/sec
> >>
> >> >
> >>
> >> > 96.544/95.815/97.798/0.693 ms (8/141208)  114 KByte 11.70
> >>
> >> >
> >>
> >> > 503=3D503:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  1] 2.00-3.00 sec  1.07 MBytes  9.01 Mbits/sec
> >>
> >> >
> >>
> >> > 93.970/91.193/96.325/1.796 ms (8/140846)  111 KByte 11.99
> >>
> >> >
> >>
> >> > 509=3D509:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  2] 2.00-3.00 sec  1.08 MBytes  9.10 Mbits/sec
> >>
> >> >
> >>
> >> > 92.843/90.216/96.355/2.040 ms (8/142113)  111 KByte 12.25
> >>
> >> >
> >>
> >> > 509=3D509:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [SUM] 2.00-3.00 sec  4.32 MBytes  36.3 Mbits/sec
> >>
> >> >
> >>
> >> > 2018=3D2018:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  4] 3.00-4.00 sec  1.06 MBytes  8.86 Mbits/sec
> >>
> >> >
> >>
> >> > 93.222/89.063/96.104/2.346 ms (9/123027) 96.1 KByte 11.88
> >>
> >> >
> >>
> >> > 487=3D487:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  3] 3.00-4.00 sec  1.07 MBytes  8.97 Mbits/sec
> >>
> >> >
> >>
> >> > 96.277/95.051/97.230/0.767 ms (9/124636)  101 KByte 11.65
> >>
> >> >
> >>
> >> > 489=3D489:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  1] 3.00-4.00 sec  1.08 MBytes  9.02 Mbits/sec
> >>
> >> >
> >>
> >> > 93.899/88.732/96.972/2.737 ms (9/125280) 98.6 KByte 12.01
> >>
> >> >
> >>
> >> > 493=3D493:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  2] 3.00-4.00 sec  1.07 MBytes  8.97 Mbits/sec
> >>
> >> >
> >>
> >> > 92.490/89.862/95.265/1.796 ms (9/124636) 96.6 KByte 12.13
> >>
> >> >
> >>
> >> > 493=3D493:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [SUM] 3.00-4.00 sec  4.27 MBytes  35.8 Mbits/sec
> >>
> >> >
> >>
> >> > 1962=3D1962:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  4] 4.00-5.00 sec  1.07 MBytes  9.00 Mbits/sec
> >>
> >> >
> >>
> >> > 92.431/81.888/96.221/4.524 ms (9/124958) 96.8 KByte 12.17
> >>
> >> >
> >>
> >> > 498=3D498:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  1] 4.00-5.00 sec  1.07 MBytes  8.97 Mbits/sec
> >>
> >> >
> >>
> >> > 95.018/93.445/96.200/0.957 ms (9/124636) 99.3 KByte 11.81
> >>
> >> >
> >>
> >> > 490=3D490:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  2] 4.00-5.00 sec  1.06 MBytes  8.90 Mbits/sec
> >>
> >> >
> >>
> >> > 93.874/86.485/95.672/2.810 ms (9/123671) 97.3 KByte 11.86
> >>
> >> >
> >>
> >> > 481=3D481:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  3] 4.00-5.00 sec  1.08 MBytes  9.09 Mbits/sec
> >>
> >> >
> >>
> >> > 95.737/93.881/97.197/0.972 ms (9/126245)  101 KByte 11.87
> >>
> >> >
> >>
> >> > 484=3D484:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [SUM] 4.00-5.00 sec  4.29 MBytes  36.0 Mbits/sec
> >>
> >> >
> >>
> >> > 1953=3D1953:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  4] 5.00-6.00 sec  1.09 MBytes  9.13 Mbits/sec
> >>
> >> >
> >>
> >> > 92.908/86.844/95.994/3.012 ms (8/142656)  111 KByte 12.28
> >>
> >> >
> >>
> >> > 467=3D467:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  3] 5.00-6.00 sec  1.07 MBytes  8.94 Mbits/sec
> >>
> >> >
> >>
> >> > 96.593/95.343/97.660/0.876 ms (8/139760)  113 KByte 11.58
> >>
> >> >
> >>
> >> > 478=3D478:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  1] 5.00-6.00 sec  1.08 MBytes  9.03 Mbits/sec
> >>
> >> >
> >>
> >> > 95.021/91.421/97.167/1.893 ms (8/141027)  112 KByte 11.87
> >>
> >> >
> >>
> >> > 491=3D491:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  2] 5.00-6.00 sec  1.08 MBytes  9.06 Mbits/sec
> >>
> >> >
> >>
> >> > 92.162/82.720/97.692/5.060 ms (8/141570)  109 KByte 12.29
> >>
> >> >
> >>
> >> > 488=3D488:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [SUM] 5.00-6.00 sec  4.31 MBytes  36.2 Mbits/sec
> >>
> >> >
> >>
> >> > 1924=3D1924:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  4] 6.00-7.00 sec  1.04 MBytes  8.70 Mbits/sec
> >>
> >> >
> >>
> >> > 92.793/85.343/96.967/3.552 ms (9/120775) 93.9 KByte 11.71
> >>
> >> >
> >>
> >> > 485=3D485:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  2] 6.00-7.00 sec  1.05 MBytes  8.79 Mbits/sec
> >>
> >> >
> >>
> >> > 91.679/84.479/96.760/3.975 ms (9/122062) 93.8 KByte 11.98
> >>
> >> >
> >>
> >> > 472=3D472:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  3] 6.00-7.00 sec  1.06 MBytes  8.88 Mbits/sec
> >>
> >> >
> >>
> >> > 96.982/95.933/98.371/0.680 ms (9/123349)  100 KByte 11.45
> >>
> >> >
> >>
> >> > 477=3D477:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  1] 6.00-7.00 sec  1.05 MBytes  8.80 Mbits/sec
> >>
> >> >
> >>
> >> > 94.342/91.660/96.025/1.660 ms (9/122223) 96.7 KByte 11.66
> >>
> >> >
> >>
> >> > 494=3D494:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [SUM] 6.00-7.00 sec  4.19 MBytes  35.2 Mbits/sec
> >>
> >> >
> >>
> >> > 1928=3D1928:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  4] 7.00-8.00 sec  1.10 MBytes  9.25 Mbits/sec
> >>
> >> >
> >>
> >> > 92.515/88.182/96.351/2.538 ms (8/144466)  112 KByte 12.49
> >>
> >> >
> >>
> >> > 510=3D510:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  3] 7.00-8.00 sec  1.09 MBytes  9.13 Mbits/sec
> >>
> >> >
> >>
> >> > 96.580/95.737/98.977/1.098 ms (8/142656)  115 KByte 11.82
> >>
> >> >
> >>
> >> > 480=3D480:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  1] 7.00-8.00 sec  1.10 MBytes  9.21 Mbits/sec
> >>
> >> >
> >>
> >> > 95.269/91.719/97.514/2.126 ms (8/143923)  115 KByte 12.09
> >>
> >> >
> >>
> >> > 515=3D515:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [  2] 7.00-8.00 sec  1.11 MBytes  9.29 Mbits/sec
> >>
> >> >
> >>
> >> > 90.073/84.700/96.176/4.324 ms (8/145190)  110 KByte 12.90
> >>
> >> >
> >>
> >> > 508=3D508:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > [SUM] 7.00-8.00 sec  4.40 MBytes  36.9 Mbits/sec
> >>
> >> >
> >>
> >> > 2013=3D2013:0:0:0:0:0:0:0
> >>
> >> >
> >>
> >> > Bob
> >>
> >> >
> >>
> >> >>> -----Original Message-----
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >>> From: LibreQoS <libreqos-bounces@lists.bufferbloat.net> On Behalf
> >>
> >> > Of
> >>
> >> >
> >>
> >> >> Dave Taht
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >>> via LibreQoS
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >>> Sent: Wednesday, January 4, 2023 12:26 PM
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >>> Subject: [LibreQoS] the grinch meets cloudflare's christmas presen=
t
> >>
> >> >
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >>>
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >>> Please try the new, the shiny, the really wonderful test here:
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >>>
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> https://urldefense.com/v3/__https://speed.cloudflare.com/__;!!BhdT!iZcFJ8=
WVU9S
> >>
> >> >
> >>
> >> >
> >>
> >> >> [1]
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >>>
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> 9zz5t456oxkfObrC5Xb9j5AG8UO3DqD5x4GAJkawZr0iGwEUtF0_09U8mCDnAkrJ9QEMHGbCM=
KVw$
> >>
> >> >
> >>
> >> >
> >>
> >> >> [1]
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >>>
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >>> I would really appreciate some independent verification of
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >>> measurements using this tool. In my brief experiments it appears -
> >>
> >> >
> >>
> >> >> as
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >>> all the commercial tools to date - to dramatically understate the
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >>> bufferbloat, on my LTE, (and my starlink terminal is out being
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >>> hacked^H^H^H^H^H^Hworked on, so I can't measure that)
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >> [acm]
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >> Hi Dave, I made some time to test "cloudflare's christmas present"
> >>
> >> >
> >>
> >> >> yesterday.
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >> I'm on DOCSIS 3.1 service with 1Gbps Down. The Upstream has a
> >>
> >> > "turbo"
> >>
> >> >
> >>
> >> >> mode with 40-50Mbps for the first ~3 sec, then steady-state about
> >>
> >> >
> >>
> >> >> 23Mbps.
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >> When I saw the ~620Mbps Downstream measurement, I was ready to
> >>
> >> >
> >>
> >> >> complain that even the IP-Layer Capacity was grossly underestimated=
.
> >>
> >> >
> >>
> >> >
> >>
> >> >> In addition, the Latency measurements seem very low (as you
> >>
> >> > asserted),
> >>
> >> >
> >>
> >> >> although the cloud server was "nearby".
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >> However, I found that Ookla and the ISP-provided measurement were
> >>
> >> > also
> >>
> >> >
> >>
> >> >> reporting ~600Mbps! So the cloudflare Downstream capacity (or
> >>
> >> >
> >>
> >> >> throughput?) measurement was consistent with others. Our UDPST
> >>
> >> > server
> >>
> >> >
> >>
> >> >> was unreachable, otherwise I would have added that measurement, too=
.
> >>
> >> >
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >> The Upstream measurement graph seems to illustrate the "turbo"
> >>
> >> >
> >>
> >> >> mode, with the dip after attaining 44.5Mbps.
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >> UDPST saturates the uplink and we measure the full 250ms of the
> >>
> >> >
> >>
> >> >> Upstream buffer. Cloudflare's latency measurements don't even come
> >>
> >> >
> >>
> >> >> close.
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >> Al
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> >>
> >> >> Links:
> >>
> >> >
> >>
> >> >> ------
> >>
> >> >
> >>
> >> >> [1]
> >>
> >> >
> >>
> >> >>
> >>
> >> >
> https://urldefense.com/v3/__https:/speed.cloudflare.com/__;!!BhdT!iZcFJ8W=
VU9S9zz5t456oxkfObrC5Xb9j5AG8UO3DqD5x4GAJkawZr0iGwEUtF0_09U8mCDnAkrJ9QEMHGb=
CMKVw$
> >>
> >> >
> >>
> >> >
> >>
> >> >> _______________________________________________
> >>
> >> >
> >>
> >> >> Rpm mailing list
> >>
> >> >
> >>
> >> >> Rpm@lists.bufferbloat.net
> >>
> >> >
> >>
> >> >> https://lists.bufferbloat.net/listinfo/rpm
> >>
> >> >
> >>
> >> > _______________________________________________
> >>
> >> >
> >>
> >> > Starlink mailing list
> >>
> >> >
> >>
> >> > Starlink@lists.bufferbloat.net
> >>
> >> >
> >>
> >> > https://lists.bufferbloat.net/listinfo/starlink
> >>
> >> _______________________________________________
> >> Bloat mailing list
> >> Bloat@lists.bufferbloat.net
> >> https://lists.bufferbloat.net/listinfo/bloat
> >
> > _______________________________________________
> > Rpm mailing list
> > Rpm@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/rpm
>
>
>
> --
> This song goes out to all the folk that thought Stadia would work:
>
> https://www.linkedin.com/posts/dtaht_the-mushroom-song-activity-698136666=
5607352320-FXtz
> Dave T=C3=A4ht CEO, TekLibre, LLC
> _______________________________________________
> Bloat mailing list
> Bloat@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/bloat
>
--=20
--=20
Jay Moran
http://linkedin.com/in/jaycmoran

--00000000000021e47f05f1fafb8a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Quick note from reading your blog entry.</div><div dir=3D=
"auto"><br></div><div dir=3D"auto">Last night, I played with the Cloudflare=
 Speedtest a little. It downloads 25MB and a 50MB (or 100MB, can=E2=80=99t =
remember) as well on a =E2=80=9Cspeedier=E2=80=9D network after it does the=
 10MB file.</div><div dir=3D"auto"><br></div><div dir=3D"auto">I was gettin=
g 1.2Gbs down and 760Mbs up, 4ms of LUL, and seeing those larger file sizes=
. I was trying to screenshot and noticed I had those extra file sizes I had=
 to scroll down for. I ended up getting distracted and not taking the shot =
to send. But, it will do a longer/bigger test under right conditions.</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">Network here at the house is =
AT&amp;T Fiber, 5Gbs up/down - limited to 3.6Gbs down from Ubiquity UDM SE =
router/firewall with all IPS/Geo-blocking turned on. 4.7Gbs non-blocking up=
. I am building a pfSense box to eliminate the bottleneck. Couldn=E2=80=99t=
 be happier, good job AS7018.</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">The machine I was testing from was Win10 wired 10Gbs and gets ~2.2Gbs=
 up/down for <a href=3D"http://fast.com/speedtest.net">fast.com/speedtest.n=
et</a>. I haven=E2=80=99t take time to test internally or try and tune that=
 system, or might be CAT5e cabling issue=E2=80=A6 is fast enough for me for=
 that system.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Jay</div><=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Wed, Jan 11, 2023 at 12:07 AM Dave Taht via Bloat &lt;<a href=3D"mailto:bl=
oat@lists.bufferbloat.net">bloat@lists.bufferbloat.net</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-col=
or:rgb(204,204,204)">Dear Luis:<br>
<br>
You hit 17 seconds of delay on your test.<br>
<br>
I got you beat, today, on my LTE connection, I cracked 182 seconds.<br>
<br>
I&#39;d like to thank Verizon for making it possible for me to spew 4000<br=
>
words on my kvetches about the current speedtest regimes of speedtest,<br>
cloudflare, and so on, by making my network connection so lousy today<br>
that I sat in front of emacs to rant - and y&#39;all for helping tone<br>
down, a little, this blog entry:<br>
<br>
<a href=3D"https://blog.cerowrt.org/post/speedtests/" rel=3D"noreferrer" ta=
rget=3D"_blank">https://blog.cerowrt.org/post/speedtests/</a><br>
<br>
On Tue, Jan 10, 2023 at 9:25 AM Luis A. Cornejo via Rpm<br>
&lt;<a href=3D"mailto:rpm@lists.bufferbloat.net" target=3D"_blank">rpm@list=
s.bufferbloat.net</a>&gt; wrote:<br>
&gt;<br>
&gt; Here is my VZ HSI<br>
&gt;<br>
&gt;<br>
&gt; No SQMm on<br>
&gt;<br>
&gt; On Sat, Jan 7, 2023 at 6:38 PM Dick Roy via Bloat &lt;<a href=3D"mailt=
o:bloat@lists.bufferbloat.net" target=3D"_blank">bloat@lists.bufferbloat.ne=
t</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; -----Original Message-----<br>
&gt;&gt; From: rjmcmahon [mailto:<a href=3D"mailto:rjmcmahon@rjmcmahon.com"=
 target=3D"_blank">rjmcmahon@rjmcmahon.com</a>]<br>
&gt;&gt; Sent: Friday, January 6, 2023 3:45 PM<br>
&gt;&gt; To: <a href=3D"mailto:dickroy@alum.mit.edu" target=3D"_blank">dick=
roy@alum.mit.edu</a><br>
&gt;&gt; Cc: &#39;MORTON JR., AL&#39;; &#39;IETF IPPM WG&#39;; &#39;libreqo=
s&#39;; &#39;Cake List&#39;; &#39;Rpm&#39;; &#39;bloat&#39;<br>
&gt;&gt; Subject: Re: [Starlink] [Rpm] [LibreQoS] the grinch meets cloudfla=
re&#39;schristmas present<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; yeah, I&#39;d prefer not to output CLT sample groups at all but th=
e<br>
&gt;&gt;<br>
&gt;&gt; histograms aren&#39;t really human readable and users constantly a=
sk for<br>
&gt;&gt;<br>
&gt;&gt; them. I thought about providing a distance from the gaussian as ou=
tput<br>
&gt;&gt;<br>
&gt;&gt; too but so far few would understand it and nobody I found would ac=
t upon<br>
&gt;&gt;<br>
&gt;&gt; it.<br>
&gt;&gt;<br>
&gt;&gt; [RR] Understandable until such metrics are =E2=80=9Cactionable=E2=
=80=9D, and that=E2=80=99s =E2=80=9Cup to us to find/define/figure out=E2=
=80=9D it seems to me. Metrics that are not actionable are write-only memor=
y and good for little but historical recordJ<br>
&gt;&gt;<br>
&gt;&gt; The tool produces the full histograms so no information is really<=
br>
&gt;&gt;<br>
&gt;&gt; missing except for maybe better time series analysis.<br>
&gt;&gt;<br>
&gt;&gt; [RR] Isn=E2=80=99t that in fact what we are trying to extract from=
 the e2e stats we collect?=C2=A0 i.e., infer the time evolution of the syst=
em from its I/O behavior? As you point out, it=E2=80=99s really hard to do =
without probes in the guts of the system, nd yes, synchronization is import=
ant J<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; The open source flows python code also released with iperf 2 does =
use<br>
&gt;&gt;<br>
&gt;&gt; the komogorov-smirnov distances &amp; distance matrices to cluster=
 when the<br>
&gt;&gt;<br>
&gt;&gt; number of histograms are just too much. We&#39;ve analyzed 1M runs=
 to fault<br>
&gt;&gt;<br>
&gt;&gt; isolate the &quot;unexpected interruptions&quot; or &quot;bugs&quo=
t; and without statistical<br>
&gt;&gt;<br>
&gt;&gt; support it is just not doable. This does require instrumentation o=
f the<br>
&gt;&gt;<br>
&gt;&gt; full path with mapping to a common clock domain (e.g. GPS) and not=
 just<br>
&gt;&gt;<br>
&gt;&gt; e2e stats. I find an e2e complaint by an end user about &quot;poor=
 speed&quot; as<br>
&gt;&gt;<br>
&gt;&gt; useful as telling a pharmacist I have a fever. Not much diagnostic=
ally<br>
&gt;&gt;<br>
&gt;&gt; is going on. Take an aspirin.<br>
&gt;&gt;<br>
&gt;&gt; [RR] That=E2=80=99s AWESOME!!!!!!!!!!!!!!!!!! I love that analogy!=
<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; RR<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://en.wikipedia.org/wiki/Kolmogorov%E2%80%93Smirno=
v_test" rel=3D"noreferrer" target=3D"_blank">https://en.wikipedia.org/wiki/=
Kolmogorov%E2%80%93Smirnov_test</a><br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://sourceforge.net/p/iperf2/code/ci/master/tree/fl=
ows/flows.py" rel=3D"noreferrer" target=3D"_blank">https://sourceforge.net/=
p/iperf2/code/ci/master/tree/flows/flows.py</a><br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Bob<br>
&gt;&gt;<br>
&gt;&gt; &gt; See below =E2=80=A6<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; -----Original Message-----<br>
&gt;&gt;<br>
&gt;&gt; &gt; From: Starlink [mailto:<a href=3D"mailto:starlink-bounces@lis=
ts.bufferbloat.net" target=3D"_blank">starlink-bounces@lists.bufferbloat.ne=
t</a>] On<br>
&gt;&gt;<br>
&gt;&gt; &gt; Behalf Of rjmcmahon via Starlink<br>
&gt;&gt;<br>
&gt;&gt; &gt; Sent: Friday, January 6, 2023 12:39 PM<br>
&gt;&gt;<br>
&gt;&gt; &gt; To: MORTON JR., AL<br>
&gt;&gt;<br>
&gt;&gt; &gt; Cc: Dave Taht via Starlink; IETF IPPM WG; libreqos; Cake List=
; Rpm;<br>
&gt;&gt;<br>
&gt;&gt; &gt; bloat<br>
&gt;&gt;<br>
&gt;&gt; &gt; Subject: Re: [Starlink] [Rpm] [LibreQoS] the grinch meets<br>
&gt;&gt;<br>
&gt;&gt; &gt; cloudflare&#39;schristmas present<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Some thoughts are not to use UDP for testing here. Also, thes=
e speed<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; tests have little to no information for network engineers abo=
ut what&#39;s<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; going on. Iperf 2 may better assist network engineers but the=
n I&#39;m<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; biased ;)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Running iperf 2 <a href=3D"https://sourceforge.net/projects/i=
perf2/" rel=3D"noreferrer" target=3D"_blank">https://sourceforge.net/projec=
ts/iperf2/</a> with<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; --trip-times. Though the sampling and central limit theorem a=
veraging<br>
&gt;&gt;<br>
&gt;&gt; &gt; is<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; hiding the real distributions (use --histograms to get those)=
<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; _[RR] FWIW (IMNBWM __J)=E2=80=A6 If the output/final histogra=
ms indicate the<br>
&gt;&gt;<br>
&gt;&gt; &gt; PDF is NOT Gaussian, then any application of the CLT is<br>
&gt;&gt;<br>
&gt;&gt; &gt; inappropriate/contra-indicated! The CLT is a &quot;proof unde=
r certain<br>
&gt;&gt;<br>
&gt;&gt; &gt; regularity conditions/assumptions of underlying/constituent P=
DFs, that<br>
&gt;&gt;<br>
&gt;&gt; &gt; the resulting PDF (after all the necessary convolutions are p=
erformed<br>
&gt;&gt;<br>
&gt;&gt; &gt; to get to the PDF of the output) will asymptotically approach=
 a<br>
&gt;&gt;<br>
&gt;&gt; &gt; Gaussian with only a mean and a std. dev. left to specify. _<=
br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Below are 4 parallel TCP streams from my home to one of my se=
rvers in<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; the cloud. First where TCP is limited per CCA. Second is sour=
ce side<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; write rate limiting. Things to note:<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; o) connect times for both at 10-15 ms<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; o) multiple TCP retries on a few rites - one case is 4 with 5=
 writes.<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Source side pacing eliminates retries<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; o) Fairness with CCA isn&#39;t great but quite good with sour=
ce side write<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; pacing<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; o) Queue depth with CCA is about 150 Kbytes about 100K byte w=
ith<br>
&gt;&gt;<br>
&gt;&gt; &gt; source<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; side pacing<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; o) min write to read is about 80 ms for both<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; o) max is 220 ms vs 97 ms<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; o) stdev for CCA write/read is 30 ms vs 3 ms<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; o) TCP RTT is 20ms w/CCA and 90 ms with ssp - seems odd here =
as<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; TCP_QUICACK and TCP_NODELAY are both enabled.<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [ CT] final connect times (min/avg/max/stdev) =3D<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 10.326/13.522/14.986/2150.329 ms (tot/err) =3D 4/0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [rjmcmahon@ryzen3950 iperf2-code]$ iperf -c *** --hide-ips -e=
<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; --trip-times -i 1 -P 4 -t 10 -w 4m --tcp-quickack -N<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; ------------------------------------------------------------<=
br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Client connecting to (**hidden**), TCP port 5001 with pid 107=
678 (4<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; flows)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Write buffer size: 131072 Byte<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; TOS set to 0x0 and nodelay (Nagle off)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; TCP window size: 7.63 MByte (WARNING: requested 3.81 MByte)<b=
r>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Event based writes (pending queue watermark at 16384 bytes)<b=
r>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; ------------------------------------------------------------<=
br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] local *.*.*.85%enp4s0 port 42480 connected with *.=
*.*.123 port<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 5001 (prefetch=3D16384) (trip-times) (sock=3D3) (qack)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (icwnd/mss/irtt=3D14/1448/10534) (ct=3D10.63 ms) on 2023-01-0=
6 12:17:56<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (PST)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] local *.*.*.85%enp4s0 port 42488 connected with *.=
*.*.123 port<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 5001 (prefetch=3D16384) (trip-times) (sock=3D5) (qack)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (icwnd/mss/irtt=3D14/1448/14023) (ct=3D14.08 ms) on 2023-01-0=
6 12:17:56<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (PST)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] local *.*.*.85%enp4s0 port 42502 connected with *.=
*.*.123 port<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 5001 (prefetch=3D16384) (trip-times) (sock=3D6) (qack)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (icwnd/mss/irtt=3D14/1448/14642) (ct=3D14.70 ms) on 2023-01-0=
6 12:17:56<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (PST)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] local *.*.*.85%enp4s0 port 42484 connected with *.=
*.*.123 port<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 5001 (prefetch=3D16384) (trip-times) (sock=3D4) (qack)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (icwnd/mss/irtt=3D14/1448/14728) (ct=3D14.79 ms) on 2023-01-0=
6 12:17:56<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (PST)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 Transfer=C2=A0 =C2=
=A0 Bandwidth=C2=A0 =C2=A0 =C2=A0 =C2=A0Write/Err=C2=A0 Rtry<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Cwnd/RTT(var)=C2=A0 =C2=A0 =C2=A0 =C2=A0 NetPwr<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; ...<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] 4.00-5.00 sec=C2=A0 1.38 MBytes=C2=A0 11.5 Mbits/s=
ec=C2=A0 11/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A03<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 29K/21088(1142) us=C2=A0 68.37<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] 4.00-5.00 sec=C2=A0 1.62 MBytes=C2=A0 13.6 Mbits/s=
ec=C2=A0 13/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A02<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 31K/19284(612) us=C2=A0 88.36<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] 4.00-5.00 sec=C2=A0 =C2=A0896 KBytes=C2=A0 7.34 Mb=
its/sec=C2=A0 7/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A05<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 16K/18996(658) us=C2=A0 48.30<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] 4.00-5.00 sec=C2=A0 1.00 MBytes=C2=A0 8.39 Mbits/s=
ec=C2=A0 8/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A05<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 18K/18133(208) us=C2=A0 57.83<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [SUM] 4.00-5.00 sec=C2=A0 4.88 MBytes=C2=A0 40.9 Mbits/sec=C2=
=A0 39/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 15<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] 5.00-6.00 sec=C2=A0 1.25 MBytes=C2=A0 10.5 Mbits/s=
ec=C2=A0 10/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 29K/14717(489) us=C2=A0 89.06<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] 5.00-6.00 sec=C2=A0 1.00 MBytes=C2=A0 8.39 Mbits/s=
ec=C2=A0 8/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 16K/15874(408) us=C2=A0 66.06<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] 5.00-6.00 sec=C2=A0 1.12 MBytes=C2=A0 9.44 Mbits/s=
ec=C2=A0 9/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 16K/15826(382) us=C2=A0 74.54<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] 5.00-6.00 sec=C2=A0 1.50 MBytes=C2=A0 12.6 Mbits/s=
ec=C2=A0 12/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A06<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 9K/14878(557) us=C2=A0 106<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [SUM] 5.00-6.00 sec=C2=A0 4.88 MBytes=C2=A0 40.9 Mbits/sec=C2=
=A0 39/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 18<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] 6.00-7.00 sec=C2=A0 1.75 MBytes=C2=A0 14.7 Mbits/s=
ec=C2=A0 14/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 25K/15472(496) us=C2=A0 119<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] 6.00-7.00 sec=C2=A0 1.00 MBytes=C2=A0 8.39 Mbits/s=
ec=C2=A0 8/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A02<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 26K/16417(427) us=C2=A0 63.87<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] 6.00-7.00 sec=C2=A0 1.25 MBytes=C2=A0 10.5 Mbits/s=
ec=C2=A0 10/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A05<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 16K/16268(679) us=C2=A0 80.57<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] 6.00-7.00 sec=C2=A0 1.00 MBytes=C2=A0 8.39 Mbits/s=
ec=C2=A0 8/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A06<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 15K/16629(799) us=C2=A0 63.06<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [SUM] 6.00-7.00 sec=C2=A0 5.00 MBytes=C2=A0 41.9 Mbits/sec=C2=
=A0 40/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 17<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] 7.00-8.00 sec=C2=A0 1.75 MBytes=C2=A0 14.7 Mbits/s=
ec=C2=A0 14/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 22K/13986(519) us=C2=A0 131<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] 7.00-8.00 sec=C2=A0 1.12 MBytes=C2=A0 9.44 Mbits/s=
ec=C2=A0 9/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 16K/12679(377) us=C2=A0 93.04<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] 7.00-8.00 sec=C2=A0 =C2=A0896 KBytes=C2=A0 7.34 Mb=
its/sec=C2=A0 7/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A05<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 14K/12971(367) us=C2=A0 70.74<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] 7.00-8.00 sec=C2=A0 1.12 MBytes=C2=A0 9.44 Mbits/s=
ec=C2=A0 9/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A06<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 15K/14740(779) us=C2=A0 80.03<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [SUM] 7.00-8.00 sec=C2=A0 4.88 MBytes=C2=A0 40.9 Mbits/sec=C2=
=A0 39/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 19<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [root@bobcat iperf2-code]# iperf -s -i 1 -e --hide-ips -w 4m<=
br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; ------------------------------------------------------------<=
br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Server listening on TCP port 5001 with pid 233615<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Read buffer size:=C2=A0 128 KByte (Dist bin width=3D16.0 KByt=
e)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; TCP window size: 7.63 MByte (WARNING: requested 3.81 MByte)<b=
r>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; ------------------------------------------------------------<=
br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] local *.*.*.123%eth0 port 5001 connected with *.*.=
*.171 port<br>
&gt;&gt;<br>
&gt;&gt; &gt; 42480<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (trip-times) (sock=3D4) (peer 2.1.9-master) (qack)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (icwnd/mss/irtt=3D14/1448/11636) on 2023-01-06 12:17:56 (PST)=
<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] local *.*.*.123%eth0 port 5001 connected with *.*.=
*.171 port<br>
&gt;&gt;<br>
&gt;&gt; &gt; 42502<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (trip-times) (sock=3D5) (peer 2.1.9-master) (qack)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (icwnd/mss/irtt=3D14/1448/11898) on 2023-01-06 12:17:56 (PST)=
<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] local *.*.*.123%eth0 port 5001 connected with *.*.=
*.171 port<br>
&gt;&gt;<br>
&gt;&gt; &gt; 42484<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (trip-times) (sock=3D6) (peer 2.1.9-master) (qack)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (icwnd/mss/irtt=3D14/1448/11938) on 2023-01-06 12:17:56 (PST)=
<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] local *.*.*.123%eth0 port 5001 connected with *.*.=
*.171 port<br>
&gt;&gt;<br>
&gt;&gt; &gt; 42488<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (trip-times) (sock=3D7) (peer 2.1.9-master) (qack)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (icwnd/mss/irtt=3D14/1448/11919) on 2023-01-06 12:17:56 (PST)=
<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 Transfer=C2=A0 =C2=
=A0 Bandwidth=C2=A0 =C2=A0 Burst Latency<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; avg/min/max/stdev (cnt/size) inP NetPwr=C2=A0 Reads=3DDist<br=
>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; ...<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] 4.00-5.00 sec=C2=A0 1.06 MBytes=C2=A0 8.86 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 129.819/90.391/186.075/31.346 ms (9/123080)=C2=A0 154 KByte 8=
.532803<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 467=3D461:6:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] 4.00-5.00 sec=C2=A0 1.52 MBytes=C2=A0 12.8 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 103.552/82.653/169.274/28.382 ms (12/132854)=C2=A0 149 KByte =
15.40<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 646=3D643:1:2:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] 4.00-5.00 sec=C2=A0 1.39 MBytes=C2=A0 11.6 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 107.503/66.843/143.038/24.269 ms (11/132294)=C2=A0 149 KByte =
13.54<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 619=3D617:1:1:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] 4.00-5.00 sec=C2=A0 =C2=A0988 KBytes=C2=A0 8.10 Mb=
its/sec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 141.389/119.961/178.785/18.812 ms (7/144593)=C2=A0 170 KByte =
7.158641<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 409=3D404:5:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [SUM] 4.00-5.00 sec=C2=A0 4.93 MBytes=C2=A0 41.4 Mbits/sec<br=
>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 2141=3D2125:13:3:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] 5.00-6.00 sec=C2=A0 1.29 MBytes=C2=A0 10.8 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 118.943/86.253/176.128/31.248 ms (10/135098)=C2=A0 164 KByte =
11.36<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 511=3D506:2:3:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] 5.00-6.00 sec=C2=A0 1.09 MBytes=C2=A0 9.17 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 139.821/102.418/218.875/40.422 ms (9/127424)=C2=A0 148 KByte =
8.202049<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 487=3D484:2:1:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] 5.00-6.00 sec=C2=A0 1.51 MBytes=C2=A0 12.6 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 102.146/77.085/140.893/18.441 ms (13/121520)=C2=A0 151 KByte =
15.47<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 640=3D636:1:3:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] 5.00-6.00 sec=C2=A0 =C2=A0981 KBytes=C2=A0 8.04 Mb=
its/sec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 161.901/105.582/219.931/36.260 ms (8/125614)=C2=A0 134 KByte =
6.206944<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 415=3D413:2:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [SUM] 5.00-6.00 sec=C2=A0 4.85 MBytes=C2=A0 40.7 Mbits/sec<br=
>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 2053=3D2039:7:7:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] 6.00-7.00 sec=C2=A0 1.74 MBytes=C2=A0 14.6 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 88.846/74.297/101.859/7.118 ms (14/130526)=C2=A0 156 KByte 20=
.57<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 711=3D707:3:1:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] 6.00-7.00 sec=C2=A0 1.22 MBytes=C2=A0 10.2 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 120.639/100.257/157.567/21.770 ms (10/127568)=C2=A0 157 KByte=
 10.57<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 494=3D488:5:1:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] 6.00-7.00 sec=C2=A0 1015 KBytes=C2=A0 8.32 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 144.632/124.368/171.349/16.597 ms (8/129958)=C2=A0 143 KByte =
7.188321<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 408=3D403:5:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] 6.00-7.00 sec=C2=A0 1.02 MBytes=C2=A0 8.60 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 143.516/102.322/173.001/24.089 ms (8/134302)=C2=A0 146 KByte =
7.486359<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 484=3D480:4:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [SUM] 6.00-7.00 sec=C2=A0 4.98 MBytes=C2=A0 41.7 Mbits/sec<br=
>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 2097=3D2078:17:2:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] 7.00-8.00 sec=C2=A0 1.77 MBytes=C2=A0 14.9 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 85.406/65.797/103.418/12.609 ms (14/132595)=C2=A0 153 KByte 2=
1.74<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 692=3D687:2:3:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] 7.00-8.00 sec=C2=A0 =C2=A0957 KBytes=C2=A0 7.84 Mb=
its/sec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 153.936/131.452/191.464/19.361 ms (7/140042)=C2=A0 160 KByte =
6.368199<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 429=3D425:4:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] 7.00-8.00 sec=C2=A0 1.13 MBytes=C2=A0 9.44 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 131.146/109.737/166.774/22.035 ms (9/131124)=C2=A0 146 KByte =
8.998528<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 520=3D516:4:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] 7.00-8.00 sec=C2=A0 1.13 MBytes=C2=A0 9.51 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 126.512/88.404/220.175/42.237 ms (9/132089)=C2=A0 172 KByte 9=
.396784<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 527=3D524:1:2:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [SUM] 7.00-8.00 sec=C2=A0 4.96 MBytes=C2=A0 41.6 Mbits/sec<br=
>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 2168=3D2152:11:5:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; With source side rate limiting to 9 mb/s per stream.<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [rjmcmahon@ryzen3950 iperf2-code]$ iperf -c *** --hide-ips -e=
<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; --trip-times -i 1 -P 4 -t 10 -w 4m --tcp-quickack -N -b 9m<br=
>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; ------------------------------------------------------------<=
br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Client connecting to (**hidden**), TCP port 5001 with pid 108=
884 (4<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; flows)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Write buffer size: 131072 Byte<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; TOS set to 0x0 and nodelay (Nagle off)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; TCP window size: 7.63 MByte (WARNING: requested 3.81 MByte)<b=
r>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Event based writes (pending queue watermark at 16384 bytes)<b=
r>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; ------------------------------------------------------------<=
br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] local *.*.*.85%enp4s0 port 46448 connected with *.=
*.*.123 port<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 5001 (prefetch=3D16384) (trip-times) (sock=3D3) (qack)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (icwnd/mss/irtt=3D14/1448/10666) (ct=3D10.70 ms) on 2023-01-0=
6 12:27:45<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (PST)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] local *.*.*.85%enp4s0 port 46460 connected with *.=
*.*.123 port<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 5001 (prefetch=3D16384) (trip-times) (sock=3D6) (qack)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (icwnd/mss/irtt=3D14/1448/16499) (ct=3D16.54 ms) on 2023-01-0=
6 12:27:45<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (PST)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] local *.*.*.85%enp4s0 port 46454 connected with *.=
*.*.123 port<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 5001 (prefetch=3D16384) (trip-times) (sock=3D4) (qack)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (icwnd/mss/irtt=3D14/1448/16580) (ct=3D16.86 ms) on 2023-01-0=
6 12:27:45<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (PST)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] local *.*.*.85%enp4s0 port 46458 connected with *.=
*.*.123 port<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 5001 (prefetch=3D16384) (trip-times) (sock=3D5) (qack)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (icwnd/mss/irtt=3D14/1448/16802) (ct=3D16.83 ms) on 2023-01-0=
6 12:27:45<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (PST)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 Transfer=C2=A0 =C2=
=A0 Bandwidth=C2=A0 =C2=A0 =C2=A0 =C2=A0Write/Err=C2=A0 Rtry<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Cwnd/RTT(var)=C2=A0 =C2=A0 =C2=A0 =C2=A0 NetPwr<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; ...<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] 4.00-5.00 sec=C2=A0 1.00 MBytes=C2=A0 8.39 Mbits/s=
ec=C2=A0 8/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 134K/88055(12329) us=C2=A0 11.91<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] 4.00-5.00 sec=C2=A0 1.00 MBytes=C2=A0 8.39 Mbits/s=
ec=C2=A0 8/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 132K/74867(11755) us=C2=A0 14.01<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] 4.00-5.00 sec=C2=A0 1.00 MBytes=C2=A0 8.39 Mbits/s=
ec=C2=A0 8/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 134K/89101(13134) us=C2=A0 11.77<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] 4.00-5.00 sec=C2=A0 1.00 MBytes=C2=A0 8.39 Mbits/s=
ec=C2=A0 8/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 131K/91451(11938) us=C2=A0 11.47<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [SUM] 4.00-5.00 sec=C2=A0 4.00 MBytes=C2=A0 33.6 Mbits/sec=C2=
=A0 32/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] 5.00-6.00 sec=C2=A0 1.12 MBytes=C2=A0 9.44 Mbits/s=
ec=C2=A0 9/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 134K/85135(14580) us=C2=A0 13.86<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] 5.00-6.00 sec=C2=A0 1.12 MBytes=C2=A0 9.44 Mbits/s=
ec=C2=A0 9/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 132K/85124(15654) us=C2=A0 13.86<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] 5.00-6.00 sec=C2=A0 1.12 MBytes=C2=A0 9.44 Mbits/s=
ec=C2=A0 9/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 134K/91336(11335) us=C2=A0 12.92<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] 5.00-6.00 sec=C2=A0 1.12 MBytes=C2=A0 9.44 Mbits/s=
ec=C2=A0 9/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 131K/89185(13499) us=C2=A0 13.23<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [SUM] 5.00-6.00 sec=C2=A0 4.50 MBytes=C2=A0 37.7 Mbits/sec=C2=
=A0 36/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] 6.00-7.00 sec=C2=A0 1.12 MBytes=C2=A0 9.44 Mbits/s=
ec=C2=A0 9/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 134K/85687(13489) us=C2=A0 13.77<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] 6.00-7.00 sec=C2=A0 1.12 MBytes=C2=A0 9.44 Mbits/s=
ec=C2=A0 9/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 132K/82803(13001) us=C2=A0 14.25<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] 6.00-7.00 sec=C2=A0 1.12 MBytes=C2=A0 9.44 Mbits/s=
ec=C2=A0 9/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 134K/86869(15186) us=C2=A0 13.58<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] 6.00-7.00 sec=C2=A0 1.12 MBytes=C2=A0 9.44 Mbits/s=
ec=C2=A0 9/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 131K/91447(12515) us=C2=A0 12.90<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [SUM] 6.00-7.00 sec=C2=A0 4.50 MBytes=C2=A0 37.7 Mbits/sec=C2=
=A0 36/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] 7.00-8.00 sec=C2=A0 1.00 MBytes=C2=A0 8.39 Mbits/s=
ec=C2=A0 8/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 134K/81814(13168) us=C2=A0 12.82<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] 7.00-8.00 sec=C2=A0 1.00 MBytes=C2=A0 8.39 Mbits/s=
ec=C2=A0 8/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 132K/89008(13283) us=C2=A0 11.78<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] 7.00-8.00 sec=C2=A0 1.00 MBytes=C2=A0 8.39 Mbits/s=
ec=C2=A0 8/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 134K/89494(12151) us=C2=A0 11.72<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] 7.00-8.00 sec=C2=A0 1.00 MBytes=C2=A0 8.39 Mbits/s=
ec=C2=A0 8/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 131K/91083(12797) us=C2=A0 11.51<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [SUM] 7.00-8.00 sec=C2=A0 4.00 MBytes=C2=A0 33.6 Mbits/sec=C2=
=A0 32/0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [root@bobcat iperf2-code]# iperf -s -i 1 -e --hide-ips -w 4m<=
br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; ------------------------------------------------------------<=
br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Server listening on TCP port 5001 with pid 233981<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Read buffer size:=C2=A0 128 KByte (Dist bin width=3D16.0 KByt=
e)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; TCP window size: 7.63 MByte (WARNING: requested 3.81 MByte)<b=
r>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; ------------------------------------------------------------<=
br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] local *.*.*.123%eth0 port 5001 connected with *.*.=
*.171 port<br>
&gt;&gt;<br>
&gt;&gt; &gt; 46448<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (trip-times) (sock=3D4) (peer 2.1.9-master) (qack)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (icwnd/mss/irtt=3D14/1448/11987) on 2023-01-06 12:27:45 (PST)=
<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] local *.*.*.123%eth0 port 5001 connected with *.*.=
*.171 port<br>
&gt;&gt;<br>
&gt;&gt; &gt; 46454<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (trip-times) (sock=3D5) (peer 2.1.9-master) (qack)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (icwnd/mss/irtt=3D14/1448/11132) on 2023-01-06 12:27:45 (PST)=
<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] local *.*.*.123%eth0 port 5001 connected with *.*.=
*.171 port<br>
&gt;&gt;<br>
&gt;&gt; &gt; 46460<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (trip-times) (sock=3D6) (peer 2.1.9-master) (qack)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (icwnd/mss/irtt=3D14/1448/11097) on 2023-01-06 12:27:45 (PST)=
<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] local *.*.*.123%eth0 port 5001 connected with *.*.=
*.171 port<br>
&gt;&gt;<br>
&gt;&gt; &gt; 46458<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (trip-times) (sock=3D7) (peer 2.1.9-master) (qack)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; (icwnd/mss/irtt=3D14/1448/17823) on 2023-01-06 12:27:45 (PST)=
<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 Transfer=C2=A0 =C2=
=A0 Bandwidth=C2=A0 =C2=A0 Burst Latency<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; avg/min/max/stdev (cnt/size) inP NetPwr=C2=A0 Reads=3DDist<br=
>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] 0.00-1.00 sec=C2=A0 1.09 MBytes=C2=A0 9.15 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 93.383/90.103/95.661/2.232 ms (8/143028)=C2=A0 128 KByte 12.2=
5<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 451=3D451:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] 0.00-1.00 sec=C2=A0 1.08 MBytes=C2=A0 9.06 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 96.834/95.229/102.645/2.442 ms (8/141580)=C2=A0 131 KByte 11.=
70<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 472=3D472:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] 0.00-1.00 sec=C2=A0 1.10 MBytes=C2=A0 9.19 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 95.183/92.623/97.579/1.431 ms (8/143571)=C2=A0 131 KByte 12.0=
7<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 495=3D495:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] 0.00-1.00 sec=C2=A0 1.09 MBytes=C2=A0 9.15 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 89.317/84.865/94.906/3.674 ms (8/143028)=C2=A0 122 KByte 12.8=
1<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 489=3D489:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [ ID] Interval=C2=A0 =C2=A0 =C2=A0 =C2=A0 Transfer=C2=A0 =C2=
=A0 Bandwidth=C2=A0 =C2=A0 =C2=A0 =C2=A0Reads=3DDist<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [SUM] 0.00-1.00 sec=C2=A0 4.36 MBytes=C2=A0 36.6 Mbits/sec<br=
>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 1907=3D1907:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] 1.00-2.00 sec=C2=A0 1.07 MBytes=C2=A0 8.95 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 92.649/89.987/95.036/1.828 ms (9/124314) 96.5 KByte 12.08<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 492=3D492:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] 1.00-2.00 sec=C2=A0 1.06 MBytes=C2=A0 8.93 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 96.305/95.647/96.794/0.432 ms (9/123992)=C2=A0 100 KByte 11.5=
9<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 480=3D480:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] 1.00-2.00 sec=C2=A0 1.06 MBytes=C2=A0 8.89 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 92.578/90.866/94.145/1.371 ms (9/123510) 95.8 KByte 12.01<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 513=3D513:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] 1.00-2.00 sec=C2=A0 1.07 MBytes=C2=A0 8.96 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 90.767/87.984/94.352/1.944 ms (9/124475) 94.7 KByte 12.34<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 489=3D489:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [SUM] 1.00-2.00 sec=C2=A0 4.26 MBytes=C2=A0 35.7 Mbits/sec<br=
>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 1974=3D1974:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] 2.00-3.00 sec=C2=A0 1.09 MBytes=C2=A0 9.13 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 93.977/91.795/96.561/1.693 ms (8/142656)=C2=A0 112 KByte 12.1=
4<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 497=3D497:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] 2.00-3.00 sec=C2=A0 1.08 MBytes=C2=A0 9.04 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 96.544/95.815/97.798/0.693 ms (8/141208)=C2=A0 114 KByte 11.7=
0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 503=3D503:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] 2.00-3.00 sec=C2=A0 1.07 MBytes=C2=A0 9.01 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 93.970/91.193/96.325/1.796 ms (8/140846)=C2=A0 111 KByte 11.9=
9<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 509=3D509:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] 2.00-3.00 sec=C2=A0 1.08 MBytes=C2=A0 9.10 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 92.843/90.216/96.355/2.040 ms (8/142113)=C2=A0 111 KByte 12.2=
5<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 509=3D509:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [SUM] 2.00-3.00 sec=C2=A0 4.32 MBytes=C2=A0 36.3 Mbits/sec<br=
>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 2018=3D2018:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] 3.00-4.00 sec=C2=A0 1.06 MBytes=C2=A0 8.86 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 93.222/89.063/96.104/2.346 ms (9/123027) 96.1 KByte 11.88<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 487=3D487:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] 3.00-4.00 sec=C2=A0 1.07 MBytes=C2=A0 8.97 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 96.277/95.051/97.230/0.767 ms (9/124636)=C2=A0 101 KByte 11.6=
5<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 489=3D489:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] 3.00-4.00 sec=C2=A0 1.08 MBytes=C2=A0 9.02 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 93.899/88.732/96.972/2.737 ms (9/125280) 98.6 KByte 12.01<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 493=3D493:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] 3.00-4.00 sec=C2=A0 1.07 MBytes=C2=A0 8.97 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 92.490/89.862/95.265/1.796 ms (9/124636) 96.6 KByte 12.13<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 493=3D493:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [SUM] 3.00-4.00 sec=C2=A0 4.27 MBytes=C2=A0 35.8 Mbits/sec<br=
>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 1962=3D1962:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] 4.00-5.00 sec=C2=A0 1.07 MBytes=C2=A0 9.00 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 92.431/81.888/96.221/4.524 ms (9/124958) 96.8 KByte 12.17<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 498=3D498:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] 4.00-5.00 sec=C2=A0 1.07 MBytes=C2=A0 8.97 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 95.018/93.445/96.200/0.957 ms (9/124636) 99.3 KByte 11.81<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 490=3D490:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] 4.00-5.00 sec=C2=A0 1.06 MBytes=C2=A0 8.90 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 93.874/86.485/95.672/2.810 ms (9/123671) 97.3 KByte 11.86<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 481=3D481:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] 4.00-5.00 sec=C2=A0 1.08 MBytes=C2=A0 9.09 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 95.737/93.881/97.197/0.972 ms (9/126245)=C2=A0 101 KByte 11.8=
7<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 484=3D484:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [SUM] 4.00-5.00 sec=C2=A0 4.29 MBytes=C2=A0 36.0 Mbits/sec<br=
>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 1953=3D1953:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] 5.00-6.00 sec=C2=A0 1.09 MBytes=C2=A0 9.13 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 92.908/86.844/95.994/3.012 ms (8/142656)=C2=A0 111 KByte 12.2=
8<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 467=3D467:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] 5.00-6.00 sec=C2=A0 1.07 MBytes=C2=A0 8.94 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 96.593/95.343/97.660/0.876 ms (8/139760)=C2=A0 113 KByte 11.5=
8<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 478=3D478:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] 5.00-6.00 sec=C2=A0 1.08 MBytes=C2=A0 9.03 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 95.021/91.421/97.167/1.893 ms (8/141027)=C2=A0 112 KByte 11.8=
7<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 491=3D491:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] 5.00-6.00 sec=C2=A0 1.08 MBytes=C2=A0 9.06 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 92.162/82.720/97.692/5.060 ms (8/141570)=C2=A0 109 KByte 12.2=
9<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 488=3D488:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [SUM] 5.00-6.00 sec=C2=A0 4.31 MBytes=C2=A0 36.2 Mbits/sec<br=
>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 1924=3D1924:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] 6.00-7.00 sec=C2=A0 1.04 MBytes=C2=A0 8.70 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 92.793/85.343/96.967/3.552 ms (9/120775) 93.9 KByte 11.71<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 485=3D485:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] 6.00-7.00 sec=C2=A0 1.05 MBytes=C2=A0 8.79 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 91.679/84.479/96.760/3.975 ms (9/122062) 93.8 KByte 11.98<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 472=3D472:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] 6.00-7.00 sec=C2=A0 1.06 MBytes=C2=A0 8.88 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 96.982/95.933/98.371/0.680 ms (9/123349)=C2=A0 100 KByte 11.4=
5<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 477=3D477:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] 6.00-7.00 sec=C2=A0 1.05 MBytes=C2=A0 8.80 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 94.342/91.660/96.025/1.660 ms (9/122223) 96.7 KByte 11.66<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 494=3D494:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [SUM] 6.00-7.00 sec=C2=A0 4.19 MBytes=C2=A0 35.2 Mbits/sec<br=
>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 1928=3D1928:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 4] 7.00-8.00 sec=C2=A0 1.10 MBytes=C2=A0 9.25 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 92.515/88.182/96.351/2.538 ms (8/144466)=C2=A0 112 KByte 12.4=
9<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 510=3D510:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 3] 7.00-8.00 sec=C2=A0 1.09 MBytes=C2=A0 9.13 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 96.580/95.737/98.977/1.098 ms (8/142656)=C2=A0 115 KByte 11.8=
2<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 480=3D480:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 1] 7.00-8.00 sec=C2=A0 1.10 MBytes=C2=A0 9.21 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 95.269/91.719/97.514/2.126 ms (8/143923)=C2=A0 115 KByte 12.0=
9<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 515=3D515:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [=C2=A0 2] 7.00-8.00 sec=C2=A0 1.11 MBytes=C2=A0 9.29 Mbits/s=
ec<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 90.073/84.700/96.176/4.324 ms (8/145190)=C2=A0 110 KByte 12.9=
0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 508=3D508:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; [SUM] 7.00-8.00 sec=C2=A0 4.40 MBytes=C2=A0 36.9 Mbits/sec<br=
>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 2013=3D2013:0:0:0:0:0:0:0<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Bob<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; -----Original Message-----<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; From: LibreQoS &lt;<a href=3D"mailto:libreqos-bounces=
@lists.bufferbloat.net" target=3D"_blank">libreqos-bounces@lists.bufferbloa=
t.net</a>&gt; On Behalf<br>
&gt;&gt;<br>
&gt;&gt; &gt; Of<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; Dave Taht<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; via LibreQoS<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; Sent: Wednesday, January 4, 2023 12:26 PM<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; Subject: [LibreQoS] the grinch meets cloudflare&#39;s=
 christmas present<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; Please try the new, the shiny, the really wonderful t=
est here:<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; <a href=3D"https://urldefense.com/v3/__https://speed.cloudfla=
re.com/__;!!BhdT!iZcFJ8WVU9S" rel=3D"noreferrer" target=3D"_blank">https://=
urldefense.com/v3/__https://speed.cloudflare.com/__;!!BhdT!iZcFJ8WVU9S</a><=
br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; [1]<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; 9zz5t456oxkfObrC5Xb9j5AG8UO3DqD5x4GAJkawZr0iGwEUtF0_09U8mCDnA=
krJ9QEMHGbCMKVw$<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; [1]<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; I would really appreciate some independent verificati=
on of<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; measurements using this tool. In my brief experiments=
 it appears -<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; as<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; all the commercial tools to date - to dramatically un=
derstate the<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; bufferbloat, on my LTE, (and my starlink terminal is =
out being<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; hacked^H^H^H^H^H^Hworked on, so I can&#39;t measure t=
hat)<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; [acm]<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; Hi Dave, I made some time to test &quot;cloudflare&#39;s =
christmas present&quot;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; yesterday.<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; I&#39;m on DOCSIS 3.1 service with 1Gbps Down. The Upstre=
am has a<br>
&gt;&gt;<br>
&gt;&gt; &gt; &quot;turbo&quot;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; mode with 40-50Mbps for the first ~3 sec, then steady-sta=
te about<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; 23Mbps.<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; When I saw the ~620Mbps Downstream measurement, I was rea=
dy to<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; complain that even the IP-Layer Capacity was grossly unde=
restimated.<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; In addition, the Latency measurements seem very low (as y=
ou<br>
&gt;&gt;<br>
&gt;&gt; &gt; asserted),<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; although the cloud server was &quot;nearby&quot;.<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; However, I found that Ookla and the ISP-provided measurem=
ent were<br>
&gt;&gt;<br>
&gt;&gt; &gt; also<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; reporting ~600Mbps! So the cloudflare Downstream capacity=
 (or<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; throughput?) measurement was consistent with others. Our =
UDPST<br>
&gt;&gt;<br>
&gt;&gt; &gt; server<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; was unreachable, otherwise I would have added that measur=
ement, too.<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; The Upstream measurement graph seems to illustrate the &q=
uot;turbo&quot;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; mode, with the dip after attaining 44.5Mbps.<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; UDPST saturates the uplink and we measure the full 250ms =
of the<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; Upstream buffer. Cloudflare&#39;s latency measurements do=
n&#39;t even come<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; close.<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; Al<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; Links:<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; ------<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; [1]<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; <a href=3D"https://urldefense.com/v3/__https:/speed.cloudflar=
e.com/__;!!BhdT!iZcFJ8WVU9S9zz5t456oxkfObrC5Xb9j5AG8UO3DqD5x4GAJkawZr0iGwEU=
tF0_09U8mCDnAkrJ9QEMHGbCMKVw$" rel=3D"noreferrer" target=3D"_blank">https:/=
/urldefense.com/v3/__https:/speed.cloudflare.com/__;!!BhdT!iZcFJ8WVU9S9zz5t=
456oxkfObrC5Xb9j5AG8UO3DqD5x4GAJkawZr0iGwEUtF0_09U8mCDnAkrJ9QEMHGbCMKVw$</a=
><br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; _______________________________________________<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; Rpm mailing list<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; <a href=3D"mailto:Rpm@lists.bufferbloat.net" target=3D"_b=
lank">Rpm@lists.bufferbloat.net</a><br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/rpm" re=
l=3D"noreferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/r=
pm</a><br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Starlink mailing list<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; <a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_=
blank">Starlink@lists.bufferbloat.net</a><br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; <a href=3D"https://lists.bufferbloat.net/listinfo/starlink" r=
el=3D"noreferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/=
starlink</a><br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; Bloat mailing list<br>
&gt;&gt; <a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">B=
loat@lists.bufferbloat.net</a><br>
&gt;&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"no=
referrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a=
><br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; Rpm mailing list<br>
&gt; <a href=3D"mailto:Rpm@lists.bufferbloat.net" target=3D"_blank">Rpm@lis=
ts.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/rpm" rel=3D"noreferr=
er" target=3D"_blank">https://lists.bufferbloat.net/listinfo/rpm</a><br>
<br>
<br>
<br>
-- <br>
This song goes out to all the folk that thought Stadia would work:<br>
<a href=3D"https://www.linkedin.com/posts/dtaht_the-mushroom-song-activity-=
6981366665607352320-FXtz" rel=3D"noreferrer" target=3D"_blank">https://www.=
linkedin.com/posts/dtaht_the-mushroom-song-activity-6981366665607352320-FXt=
z</a><br>
Dave T=C3=A4ht CEO, TekLibre, LLC<br>
_______________________________________________<br>
Bloat mailing list<br>
<a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">Bloat@list=
s.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a><br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>-- <br>Jay Moran<b=
r><a href=3D"http://linkedin.com/in/jaycmoran" target=3D"_blank">http://lin=
kedin.com/in/jaycmoran</a><br></div></div></div>

--00000000000021e47f05f1fafb8a--

--===============2443069847765318782==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2443069847765318782==--

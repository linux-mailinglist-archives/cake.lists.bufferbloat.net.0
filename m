Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7FA8B6586
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:28 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E52823CB47;
	Mon, 29 Apr 2024 18:18:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429134;
	bh=QNI2IKf+m+15n12wmqMQq7b+v13YlsQCC4FKS/Ds/bU=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=eFjbTACgROlOa8wK8Ep1q3FNmYsBpPjs+EAFwX4edseMoCa0ELkQWq1kWkR7puckO
	 hFEUJcEjtvhDg+K9D7Fix6Ms3hueX5wuoAVn0j84MpZ9uaPQ8aJGcUSb28z5evP9/K
	 tgxgAKeW++XSWiSTMQszDwtJrjNqFI+YLlPyb3w57IsmdS9rICQDFP/9qiUbxwXUDT
	 E8Npx2B29pR0kYqbwv9zIiEACBacFo9fQ2aSsZX1Os2QdcsS76vd0UJ8vhBp1Cjeu/
	 KPSzPoNkiRR8ebckuE7f08ikMpsBvz0dviJS03c5oTbpeAgCmhbXRl3ZVolN8r+n5Y
	 dPVYKmICTFVpQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-vs1-xe36.google.com (mail-vs1-xe36.google.com
 [IPv6:2607:f8b0:4864:20::e36])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5F5CC3B2A4;
 Thu, 12 Jan 2023 11:03:13 -0500 (EST)
Received: by mail-vs1-xe36.google.com with SMTP id 186so14203454vsz.13;
 Thu, 12 Jan 2023 08:03:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=kWxWwQ81mrWZnJjo4Cy6X9HA27CCtZr1Lo9JdDB9qds=;
 b=QLLGgQcVO9b+6oWYGkrVs9AWmFtnrWPtf9YnWbPkbAFD5zoQB0KT+ieMK3UZC3T8yg
 RN422wnEl+oI7fLGpw3AWpgT7L0oUzVUM6Xg8F7mwpb7eTsDCDL0lSGk6w2ykSkNTv8J
 KkWOoKa3rynuVaKGGq5QRy2SIk/U62SswME6Z5LwjcJtJaw2qr26RhGUMm28XsuQxrCY
 2r+7SCAOdQS1zURo3rzF/gqH8XSSEW4PWL70nVGURCAf0DnTWu18AMXLVFCUp1lKU73j
 IuCiYDgnJSGI1yq2y9L1akdY8AU9/6wBVnM3WD42tXz8Z67P5zdlJPizGoh2EYdDPHll
 v85g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=kWxWwQ81mrWZnJjo4Cy6X9HA27CCtZr1Lo9JdDB9qds=;
 b=rmSd1NkFUiHuUxxLg0Z0xHbxTIZlj3fHwidxEWXCxZlr+w0WdV42dbVi+qWdszDVsM
 QSIkRY8qavbvA31r99+yMsKFyNmB8H3SwWmEDCmfaMbxhJsmX76xxtZtywkOFYKSGcGD
 cRkOXcbdLrxhvibDeIYqZuk0uwCVqCWICAEZfCRQJ96OiaP+7wZeIQwNTJTgl/bkA3d/
 KCxa67toEMa8ErIqaxeOdFh5wuJDMO6Kxj7usxaxpuQk7iMLfwklFK7QLyNVCXqOz0c0
 tboEKq5AfOzkBNNo1b4/D9OEDAHFUMnXNtgJv/HW4hQp1q3Y/1kTwr7S/FrDazBi6SqK
 P0iw==
X-Gm-Message-State: AFqh2kpn5OnVGjFPi2IoKWP402+nDk6ppgtpIM6i+IiR2nwC9yQS7dgc
 KFg1C+WNLimFFsnIDWCnxi86DJVmPxrPOM2BbhU=
X-Google-Smtp-Source: AMrXdXttjFJojO/AaSZbLJoaFuo95vdT1GnnS/SVYNGd4EwprgNIwJ54bbkuYwFUqKUjzfi1YBvTWQrywO9veR2Aw8g=
X-Received: by 2002:a67:f44a:0:b0:3ce:c752:6432 with SMTP id
 r10-20020a67f44a000000b003cec7526432mr4617081vsn.23.1673539391608; Thu, 12
 Jan 2023 08:03:11 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw4sbPeZ42eTLQzPmg_-viBBtbdQogAMgMNndoEHjY5UNA@mail.gmail.com>
 <CH0PR02MB79809552F1D5CEDB832A8590D3FB9@CH0PR02MB7980.namprd02.prod.outlook.com>
 <fa20576f88b9a1880df67417bea48ba6@rjmcmahon.com>
 <89D796E75967416B9723211C183A8396@SRA6>
 <a082b2436e6ba7892d2de8e0dfcc5acd@rjmcmahon.com>
 <3696AEA5409D4303ABCBC439727A5E40@SRA6>
 <CAKJdXWBb0VxSSoGAQTe3BXFLXCHd6NSspRnXd1frK2f66SLiUw@mail.gmail.com>
 <CAA93jw6B_9-WE9EEFuac+FAH-2dcULk=_3i_HfhCSVSOxyM7Eg@mail.gmail.com>
 <CA+Ld8r8hR8KF35Yv7A3hb1QvC9v9ka2Nh2J=HEm0XhPfvAAcag@mail.gmail.com>
In-Reply-To: <CA+Ld8r8hR8KF35Yv7A3hb1QvC9v9ka2Nh2J=HEm0XhPfvAAcag@mail.gmail.com>
Date: Thu, 12 Jan 2023 10:01:47 -0600
Message-ID: <CAKJdXWC+aEy1b3vB-FFd+tnfT+Ni5O9bZ+p4kkhj-FzMPVGGcQ@mail.gmail.com>
To: Jay Moran <jay@tp.org>
Content-Type: multipart/mixed; boundary="000000000000f491e805f213409b"
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
From: "Luis A. Cornejo via Cake" <cake@lists.bufferbloat.net>
Reply-To: "Luis A. Cornejo" <luis.a.cornejo@gmail.com>
Cc: Rpm <rpm@lists.bufferbloat.net>, "MORTON JR., AL" <acmorton@att.com>,
 IETF IPPM WG <ippm@ietf.org>, libreqos <libreqos@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>,
 dickroy@alum.mit.edu
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--000000000000f491e805f213409b
Content-Type: multipart/alternative; boundary="000000000000f491e605f2134099"

--000000000000f491e605f2134099
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Here is on Starlink:



On Wed, Jan 11, 2023 at 5:05 AM Jay Moran <jay@tp.org> wrote:

> Quick note from reading your blog entry.
>
> Last night, I played with the Cloudflare Speedtest a little. It downloads
> 25MB and a 50MB (or 100MB, can=E2=80=99t remember) as well on a =E2=80=9C=
speedier=E2=80=9D network
> after it does the 10MB file.
>
> I was getting 1.2Gbs down and 760Mbs up, 4ms of LUL, and seeing those
> larger file sizes. I was trying to screenshot and noticed I had those ext=
ra
> file sizes I had to scroll down for. I ended up getting distracted and no=
t
> taking the shot to send. But, it will do a longer/bigger test under right
> conditions.
>
> Network here at the house is AT&T Fiber, 5Gbs up/down - limited to 3.6Gbs
> down from Ubiquity UDM SE router/firewall with all IPS/Geo-blocking turne=
d
> on. 4.7Gbs non-blocking up. I am building a pfSense box to eliminate the
> bottleneck. Couldn=E2=80=99t be happier, good job AS7018.
>
> The machine I was testing from was Win10 wired 10Gbs and gets ~2.2Gbs
> up/down for fast.com/speedtest.net. I haven=E2=80=99t take time to test
> internally or try and tune that system, or might be CAT5e cabling issue=
=E2=80=A6 is
> fast enough for me for that system.
>
> Jay
>
> On Wed, Jan 11, 2023 at 12:07 AM Dave Taht via Bloat <
> bloat@lists.bufferbloat.net> wrote:
>
>> Dear Luis:
>>
>> You hit 17 seconds of delay on your test.
>>
>> I got you beat, today, on my LTE connection, I cracked 182 seconds.
>>
>> I'd like to thank Verizon for making it possible for me to spew 4000
>> words on my kvetches about the current speedtest regimes of speedtest,
>> cloudflare, and so on, by making my network connection so lousy today
>> that I sat in front of emacs to rant - and y'all for helping tone
>> down, a little, this blog entry:
>>
>> https://blog.cerowrt.org/post/speedtests/
>>
>> On Tue, Jan 10, 2023 at 9:25 AM Luis A. Cornejo via Rpm
>> <rpm@lists.bufferbloat.net> wrote:
>> >
>> > Here is my VZ HSI
>> >
>> >
>> > No SQMm on
>> >
>> > On Sat, Jan 7, 2023 at 6:38 PM Dick Roy via Bloat <
>> bloat@lists.bufferbloat.net> wrote:
>> >>
>> >>
>> >>
>> >>
>> >>
>> >> -----Original Message-----
>> >> From: rjmcmahon [mailto:rjmcmahon@rjmcmahon.com]
>> >> Sent: Friday, January 6, 2023 3:45 PM
>> >> To: dickroy@alum.mit.edu
>> >> Cc: 'MORTON JR., AL'; 'IETF IPPM WG'; 'libreqos'; 'Cake List'; 'Rpm';
>> 'bloat'
>> >> Subject: Re: [Starlink] [Rpm] [LibreQoS] the grinch meets
>> cloudflare'schristmas present
>> >>
>> >>
>> >>
>> >> yeah, I'd prefer not to output CLT sample groups at all but the
>> >>
>> >> histograms aren't really human readable and users constantly ask for
>> >>
>> >> them. I thought about providing a distance from the gaussian as outpu=
t
>> >>
>> >> too but so far few would understand it and nobody I found would act
>> upon
>> >>
>> >> it.
>> >>
>> >> [RR] Understandable until such metrics are =E2=80=9Cactionable=E2=80=
=9D, and that=E2=80=99s
>> =E2=80=9Cup to us to find/define/figure out=E2=80=9D it seems to me. Met=
rics that are not
>> actionable are write-only memory and good for little but historical reco=
rdJ
>> >>
>> >> The tool produces the full histograms so no information is really
>> >>
>> >> missing except for maybe better time series analysis.
>> >>
>> >> [RR] Isn=E2=80=99t that in fact what we are trying to extract from th=
e e2e
>> stats we collect?  i.e., infer the time evolution of the system from its
>> I/O behavior? As you point out, it=E2=80=99s really hard to do without p=
robes in
>> the guts of the system, nd yes, synchronization is important J
>> >>
>> >>
>> >>
>> >> The open source flows python code also released with iperf 2 does use
>> >>
>> >> the komogorov-smirnov distances & distance matrices to cluster when t=
he
>> >>
>> >> number of histograms are just too much. We've analyzed 1M runs to fau=
lt
>> >>
>> >> isolate the "unexpected interruptions" or "bugs" and without
>> statistical
>> >>
>> >> support it is just not doable. This does require instrumentation of t=
he
>> >>
>> >> full path with mapping to a common clock domain (e.g. GPS) and not ju=
st
>> >>
>> >> e2e stats. I find an e2e complaint by an end user about "poor speed" =
as
>> >>
>> >> useful as telling a pharmacist I have a fever. Not much diagnosticall=
y
>> >>
>> >> is going on. Take an aspirin.
>> >>
>> >> [RR] That=E2=80=99s AWESOME!!!!!!!!!!!!!!!!!! I love that analogy!
>> >>
>> >>
>> >>
>> >> RR
>> >>
>> >>
>> >>
>> >> https://en.wikipedia.org/wiki/Kolmogorov%E2%80%93Smirnov_test
>> >>
>> >> https://sourceforge.net/p/iperf2/code/ci/master/tree/flows/flows.py
>> >>
>> >>
>> >>
>> >> Bob
>> >>
>> >> > See below =E2=80=A6
>> >>
>> >> >
>> >>
>> >> > -----Original Message-----
>> >>
>> >> > From: Starlink [mailto:starlink-bounces@lists.bufferbloat.net] On
>> >>
>> >> > Behalf Of rjmcmahon via Starlink
>> >>
>> >> > Sent: Friday, January 6, 2023 12:39 PM
>> >>
>> >> > To: MORTON JR., AL
>> >>
>> >> > Cc: Dave Taht via Starlink; IETF IPPM WG; libreqos; Cake List; Rpm;
>> >>
>> >> > bloat
>> >>
>> >> > Subject: Re: [Starlink] [Rpm] [LibreQoS] the grinch meets
>> >>
>> >> > cloudflare'schristmas present
>> >>
>> >> >
>> >>
>> >> > Some thoughts are not to use UDP for testing here. Also, these spee=
d
>> >>
>> >> >
>> >>
>> >> > tests have little to no information for network engineers about
>> what's
>> >>
>> >> >
>> >>
>> >> >
>> >>
>> >> > going on. Iperf 2 may better assist network engineers but then I'm
>> >>
>> >> >
>> >>
>> >> > biased ;)
>> >>
>> >> >
>> >>
>> >> > Running iperf 2 https://sourceforge.net/projects/iperf2/ with
>> >>
>> >> >
>> >>
>> >> > --trip-times. Though the sampling and central limit theorem averagi=
ng
>> >>
>> >> > is
>> >>
>> >> >
>> >>
>> >> > hiding the real distributions (use --histograms to get those)
>> >>
>> >> >
>> >>
>> >> > _[RR] FWIW (IMNBWM __J)=E2=80=A6 If the output/final histograms ind=
icate the
>> >>
>> >> > PDF is NOT Gaussian, then any application of the CLT is
>> >>
>> >> > inappropriate/contra-indicated! The CLT is a "proof under certain
>> >>
>> >> > regularity conditions/assumptions of underlying/constituent PDFs,
>> that
>> >>
>> >> > the resulting PDF (after all the necessary convolutions are perform=
ed
>> >>
>> >> > to get to the PDF of the output) will asymptotically approach a
>> >>
>> >> > Gaussian with only a mean and a std. dev. left to specify. _
>> >>
>> >> >
>> >>
>> >> > Below are 4 parallel TCP streams from my home to one of my servers =
in
>> >>
>> >> >
>> >>
>> >> > the cloud. First where TCP is limited per CCA. Second is source sid=
e
>> >>
>> >> >
>> >>
>> >> > write rate limiting. Things to note:
>> >>
>> >> >
>> >>
>> >> > o) connect times for both at 10-15 ms
>> >>
>> >> >
>> >>
>> >> > o) multiple TCP retries on a few rites - one case is 4 with 5 write=
s.
>> >>
>> >> >
>> >>
>> >> > Source side pacing eliminates retries
>> >>
>> >> >
>> >>
>> >> > o) Fairness with CCA isn't great but quite good with source side
>> write
>> >>
>> >> >
>> >>
>> >> >
>> >>
>> >> > pacing
>> >>
>> >> >
>> >>
>> >> > o) Queue depth with CCA is about 150 Kbytes about 100K byte with
>> >>
>> >> > source
>> >>
>> >> >
>> >>
>> >> > side pacing
>> >>
>> >> >
>> >>
>> >> > o) min write to read is about 80 ms for both
>> >>
>> >> >
>> >>
>> >> > o) max is 220 ms vs 97 ms
>> >>
>> >> >
>> >>
>> >> > o) stdev for CCA write/read is 30 ms vs 3 ms
>> >>
>> >> >
>> >>
>> >> > o) TCP RTT is 20ms w/CCA and 90 ms with ssp - seems odd here as
>> >>
>> >> >
>> >>
>> >> > TCP_QUICACK and TCP_NODELAY are both enabled.
>> >>
>> >> >
>> >>
>> >> > [ CT] final connect times (min/avg/max/stdev) =3D
>> >>
>> >> >
>> >>
>> >> > 10.326/13.522/14.986/2150.329 ms (tot/err) =3D 4/0
>> >>
>> >> >
>> >>
>> >> > [rjmcmahon@ryzen3950 iperf2-code]$ iperf -c *** --hide-ips -e
>> >>
>> >> >
>> >>
>> >> > --trip-times -i 1 -P 4 -t 10 -w 4m --tcp-quickack -N
>> >>
>> >> >
>> >>
>> >> > ------------------------------------------------------------
>> >>
>> >> >
>> >>
>> >> > Client connecting to (**hidden**), TCP port 5001 with pid 107678 (4
>> >>
>> >> >
>> >>
>> >> > flows)
>> >>
>> >> >
>> >>
>> >> > Write buffer size: 131072 Byte
>> >>
>> >> >
>> >>
>> >> > TOS set to 0x0 and nodelay (Nagle off)
>> >>
>> >> >
>> >>
>> >> > TCP window size: 7.63 MByte (WARNING: requested 3.81 MByte)
>> >>
>> >> >
>> >>
>> >> > Event based writes (pending queue watermark at 16384 bytes)
>> >>
>> >> >
>> >>
>> >> > ------------------------------------------------------------
>> >>
>> >> >
>> >>
>> >> > [  1] local *.*.*.85%enp4s0 port 42480 connected with *.*.*.123 por=
t
>> >>
>> >> >
>> >>
>> >> > 5001 (prefetch=3D16384) (trip-times) (sock=3D3) (qack)
>> >>
>> >> >
>> >>
>> >> > (icwnd/mss/irtt=3D14/1448/10534) (ct=3D10.63 ms) on 2023-01-06 12:1=
7:56
>> >>
>> >> >
>> >>
>> >> > (PST)
>> >>
>> >> >
>> >>
>> >> > [  4] local *.*.*.85%enp4s0 port 42488 connected with *.*.*.123 por=
t
>> >>
>> >> >
>> >>
>> >> > 5001 (prefetch=3D16384) (trip-times) (sock=3D5) (qack)
>> >>
>> >> >
>> >>
>> >> > (icwnd/mss/irtt=3D14/1448/14023) (ct=3D14.08 ms) on 2023-01-06 12:1=
7:56
>> >>
>> >> >
>> >>
>> >> > (PST)
>> >>
>> >> >
>> >>
>> >> > [  3] local *.*.*.85%enp4s0 port 42502 connected with *.*.*.123 por=
t
>> >>
>> >> >
>> >>
>> >> > 5001 (prefetch=3D16384) (trip-times) (sock=3D6) (qack)
>> >>
>> >> >
>> >>
>> >> > (icwnd/mss/irtt=3D14/1448/14642) (ct=3D14.70 ms) on 2023-01-06 12:1=
7:56
>> >>
>> >> >
>> >>
>> >> > (PST)
>> >>
>> >> >
>> >>
>> >> > [  2] local *.*.*.85%enp4s0 port 42484 connected with *.*.*.123 por=
t
>> >>
>> >> >
>> >>
>> >> > 5001 (prefetch=3D16384) (trip-times) (sock=3D4) (qack)
>> >>
>> >> >
>> >>
>> >> > (icwnd/mss/irtt=3D14/1448/14728) (ct=3D14.79 ms) on 2023-01-06 12:1=
7:56
>> >>
>> >> >
>> >>
>> >> > (PST)
>> >>
>> >> >
>> >>
>> >> > [ ID] Interval        Transfer    Bandwidth       Write/Err  Rtry
>> >>
>> >> >
>> >>
>> >> > Cwnd/RTT(var)        NetPwr
>> >>
>> >> >
>> >>
>> >> > ...
>> >>
>> >> >
>> >>
>> >> > [  4] 4.00-5.00 sec  1.38 MBytes  11.5 Mbits/sec  11/0         3
>> >>
>> >> >
>> >>
>> >> >
>> >>
>> >> > 29K/21088(1142) us  68.37
>> >>
>> >> >
>> >>
>> >> > [  2] 4.00-5.00 sec  1.62 MBytes  13.6 Mbits/sec  13/0         2
>> >>
>> >> >
>> >>
>> >> >
>> >>
>> >> > 31K/19284(612) us  88.36
>> >>
>> >> >
>> >>
>> >> > [  1] 4.00-5.00 sec   896 KBytes  7.34 Mbits/sec  7/0         5
>> >>
>> >> >
>> >>
>> >> > 16K/18996(658) us  48.30
>> >>
>> >> >
>> >>
>> >> > [  3] 4.00-5.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         5
>> >>
>> >> >
>> >>
>> >> > 18K/18133(208) us  57.83
>> >>
>> >> >
>> >>
>> >> > [SUM] 4.00-5.00 sec  4.88 MBytes  40.9 Mbits/sec  39/0        15
>> >>
>> >> >
>> >>
>> >> > [  4] 5.00-6.00 sec  1.25 MBytes  10.5 Mbits/sec  10/0         4
>> >>
>> >> >
>> >>
>> >> >
>> >>
>> >> > 29K/14717(489) us  89.06
>> >>
>> >> >
>> >>
>> >> > [  1] 5.00-6.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         4
>> >>
>> >> >
>> >>
>> >> > 16K/15874(408) us  66.06
>> >>
>> >> >
>> >>
>> >> > [  3] 5.00-6.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         4
>> >>
>> >> >
>> >>
>> >> > 16K/15826(382) us  74.54
>> >>
>> >> >
>> >>
>> >> > [  2] 5.00-6.00 sec  1.50 MBytes  12.6 Mbits/sec  12/0         6
>> >>
>> >> >
>> >>
>> >> >
>> >>
>> >> > 9K/14878(557) us  106
>> >>
>> >> >
>> >>
>> >> > [SUM] 5.00-6.00 sec  4.88 MBytes  40.9 Mbits/sec  39/0        18
>> >>
>> >> >
>> >>
>> >> > [  4] 6.00-7.00 sec  1.75 MBytes  14.7 Mbits/sec  14/0         4
>> >>
>> >> >
>> >>
>> >> >
>> >>
>> >> > 25K/15472(496) us  119
>> >>
>> >> >
>> >>
>> >> > [  2] 6.00-7.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         2
>> >>
>> >> >
>> >>
>> >> > 26K/16417(427) us  63.87
>> >>
>> >> >
>> >>
>> >> > [  1] 6.00-7.00 sec  1.25 MBytes  10.5 Mbits/sec  10/0         5
>> >>
>> >> >
>> >>
>> >> >
>> >>
>> >> > 16K/16268(679) us  80.57
>> >>
>> >> >
>> >>
>> >> > [  3] 6.00-7.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         6
>> >>
>> >> >
>> >>
>> >> > 15K/16629(799) us  63.06
>> >>
>> >> >
>> >>
>> >> > [SUM] 6.00-7.00 sec  5.00 MBytes  41.9 Mbits/sec  40/0        17
>> >>
>> >> >
>> >>
>> >> > [  4] 7.00-8.00 sec  1.75 MBytes  14.7 Mbits/sec  14/0         4
>> >>
>> >> >
>> >>
>> >> >
>> >>
>> >> > 22K/13986(519) us  131
>> >>
>> >> >
>> >>
>> >> > [  1] 7.00-8.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         4
>> >>
>> >> >
>> >>
>> >> > 16K/12679(377) us  93.04
>> >>
>> >> >
>> >>
>> >> > [  3] 7.00-8.00 sec   896 KBytes  7.34 Mbits/sec  7/0         5
>> >>
>> >> >
>> >>
>> >> > 14K/12971(367) us  70.74
>> >>
>> >> >
>> >>
>> >> > [  2] 7.00-8.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         6
>> >>
>> >> >
>> >>
>> >> > 15K/14740(779) us  80.03
>> >>
>> >> >
>> >>
>> >> > [SUM] 7.00-8.00 sec  4.88 MBytes  40.9 Mbits/sec  39/0        19
>> >>
>> >> >
>> >>
>> >> > [root@bobcat iperf2-code]# iperf -s -i 1 -e --hide-ips -w 4m
>> >>
>> >> >
>> >>
>> >> > ------------------------------------------------------------
>> >>
>> >> >
>> >>
>> >> > Server listening on TCP port 5001 with pid 233615
>> >>
>> >> >
>> >>
>> >> > Read buffer size:  128 KByte (Dist bin width=3D16.0 KByte)
>> >>
>> >> >
>> >>
>> >> > TCP window size: 7.63 MByte (WARNING: requested 3.81 MByte)
>> >>
>> >> >
>> >>
>> >> > ------------------------------------------------------------
>> >>
>> >> >
>> >>
>> >> > [  1] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port
>> >>
>> >> > 42480
>> >>
>> >> >
>> >>
>> >> > (trip-times) (sock=3D4) (peer 2.1.9-master) (qack)
>> >>
>> >> >
>> >>
>> >> > (icwnd/mss/irtt=3D14/1448/11636) on 2023-01-06 12:17:56 (PST)
>> >>
>> >> >
>> >>
>> >> > [  2] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port
>> >>
>> >> > 42502
>> >>
>> >> >
>> >>
>> >> > (trip-times) (sock=3D5) (peer 2.1.9-master) (qack)
>> >>
>> >> >
>> >>
>> >> > (icwnd/mss/irtt=3D14/1448/11898) on 2023-01-06 12:17:56 (PST)
>> >>
>> >> >
>> >>
>> >> > [  3] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port
>> >>
>> >> > 42484
>> >>
>> >> >
>> >>
>> >> > (trip-times) (sock=3D6) (peer 2.1.9-master) (qack)
>> >>
>> >> >
>> >>
>> >> > (icwnd/mss/irtt=3D14/1448/11938) on 2023-01-06 12:17:56 (PST)
>> >>
>> >> >
>> >>
>> >> > [  4] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port
>> >>
>> >> > 42488
>> >>
>> >> >
>> >>
>> >> > (trip-times) (sock=3D7) (peer 2.1.9-master) (qack)
>> >>
>> >> >
>> >>
>> >> > (icwnd/mss/irtt=3D14/1448/11919) on 2023-01-06 12:17:56 (PST)
>> >>
>> >> >
>> >>
>> >> > [ ID] Interval        Transfer    Bandwidth    Burst Latency
>> >>
>> >> >
>> >>
>> >> > avg/min/max/stdev (cnt/size) inP NetPwr  Reads=3DDist
>> >>
>> >> >
>> >>
>> >> > ...
>> >>
>> >> >
>> >>
>> >> > [  2] 4.00-5.00 sec  1.06 MBytes  8.86 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 129.819/90.391/186.075/31.346 ms (9/123080)  154 KByte 8.532803
>> >>
>> >> >
>> >>
>> >> > 467=3D461:6:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  3] 4.00-5.00 sec  1.52 MBytes  12.8 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 103.552/82.653/169.274/28.382 ms (12/132854)  149 KByte 15.40
>> >>
>> >> >
>> >>
>> >> > 646=3D643:1:2:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  4] 4.00-5.00 sec  1.39 MBytes  11.6 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 107.503/66.843/143.038/24.269 ms (11/132294)  149 KByte 13.54
>> >>
>> >> >
>> >>
>> >> > 619=3D617:1:1:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  1] 4.00-5.00 sec   988 KBytes  8.10 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 141.389/119.961/178.785/18.812 ms (7/144593)  170 KByte 7.158641
>> >>
>> >> >
>> >>
>> >> > 409=3D404:5:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [SUM] 4.00-5.00 sec  4.93 MBytes  41.4 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 2141=3D2125:13:3:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  4] 5.00-6.00 sec  1.29 MBytes  10.8 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 118.943/86.253/176.128/31.248 ms (10/135098)  164 KByte 11.36
>> >>
>> >> >
>> >>
>> >> > 511=3D506:2:3:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  2] 5.00-6.00 sec  1.09 MBytes  9.17 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 139.821/102.418/218.875/40.422 ms (9/127424)  148 KByte 8.202049
>> >>
>> >> >
>> >>
>> >> > 487=3D484:2:1:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  3] 5.00-6.00 sec  1.51 MBytes  12.6 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 102.146/77.085/140.893/18.441 ms (13/121520)  151 KByte 15.47
>> >>
>> >> >
>> >>
>> >> > 640=3D636:1:3:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  1] 5.00-6.00 sec   981 KBytes  8.04 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 161.901/105.582/219.931/36.260 ms (8/125614)  134 KByte 6.206944
>> >>
>> >> >
>> >>
>> >> > 415=3D413:2:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [SUM] 5.00-6.00 sec  4.85 MBytes  40.7 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 2053=3D2039:7:7:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  4] 6.00-7.00 sec  1.74 MBytes  14.6 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 88.846/74.297/101.859/7.118 ms (14/130526)  156 KByte 20.57
>> >>
>> >> >
>> >>
>> >> > 711=3D707:3:1:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  1] 6.00-7.00 sec  1.22 MBytes  10.2 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 120.639/100.257/157.567/21.770 ms (10/127568)  157 KByte 10.57
>> >>
>> >> >
>> >>
>> >> > 494=3D488:5:1:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  2] 6.00-7.00 sec  1015 KBytes  8.32 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 144.632/124.368/171.349/16.597 ms (8/129958)  143 KByte 7.188321
>> >>
>> >> >
>> >>
>> >> > 408=3D403:5:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  3] 6.00-7.00 sec  1.02 MBytes  8.60 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 143.516/102.322/173.001/24.089 ms (8/134302)  146 KByte 7.486359
>> >>
>> >> >
>> >>
>> >> > 484=3D480:4:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [SUM] 6.00-7.00 sec  4.98 MBytes  41.7 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 2097=3D2078:17:2:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  4] 7.00-8.00 sec  1.77 MBytes  14.9 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 85.406/65.797/103.418/12.609 ms (14/132595)  153 KByte 21.74
>> >>
>> >> >
>> >>
>> >> > 692=3D687:2:3:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  2] 7.00-8.00 sec   957 KBytes  7.84 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 153.936/131.452/191.464/19.361 ms (7/140042)  160 KByte 6.368199
>> >>
>> >> >
>> >>
>> >> > 429=3D425:4:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  1] 7.00-8.00 sec  1.13 MBytes  9.44 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 131.146/109.737/166.774/22.035 ms (9/131124)  146 KByte 8.998528
>> >>
>> >> >
>> >>
>> >> > 520=3D516:4:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  3] 7.00-8.00 sec  1.13 MBytes  9.51 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 126.512/88.404/220.175/42.237 ms (9/132089)  172 KByte 9.396784
>> >>
>> >> >
>> >>
>> >> > 527=3D524:1:2:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [SUM] 7.00-8.00 sec  4.96 MBytes  41.6 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 2168=3D2152:11:5:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > With source side rate limiting to 9 mb/s per stream.
>> >>
>> >> >
>> >>
>> >> > [rjmcmahon@ryzen3950 iperf2-code]$ iperf -c *** --hide-ips -e
>> >>
>> >> >
>> >>
>> >> > --trip-times -i 1 -P 4 -t 10 -w 4m --tcp-quickack -N -b 9m
>> >>
>> >> >
>> >>
>> >> > ------------------------------------------------------------
>> >>
>> >> >
>> >>
>> >> > Client connecting to (**hidden**), TCP port 5001 with pid 108884 (4
>> >>
>> >> >
>> >>
>> >> > flows)
>> >>
>> >> >
>> >>
>> >> > Write buffer size: 131072 Byte
>> >>
>> >> >
>> >>
>> >> > TOS set to 0x0 and nodelay (Nagle off)
>> >>
>> >> >
>> >>
>> >> > TCP window size: 7.63 MByte (WARNING: requested 3.81 MByte)
>> >>
>> >> >
>> >>
>> >> > Event based writes (pending queue watermark at 16384 bytes)
>> >>
>> >> >
>> >>
>> >> > ------------------------------------------------------------
>> >>
>> >> >
>> >>
>> >> > [  1] local *.*.*.85%enp4s0 port 46448 connected with *.*.*.123 por=
t
>> >>
>> >> >
>> >>
>> >> > 5001 (prefetch=3D16384) (trip-times) (sock=3D3) (qack)
>> >>
>> >> >
>> >>
>> >> > (icwnd/mss/irtt=3D14/1448/10666) (ct=3D10.70 ms) on 2023-01-06 12:2=
7:45
>> >>
>> >> >
>> >>
>> >> > (PST)
>> >>
>> >> >
>> >>
>> >> > [  3] local *.*.*.85%enp4s0 port 46460 connected with *.*.*.123 por=
t
>> >>
>> >> >
>> >>
>> >> > 5001 (prefetch=3D16384) (trip-times) (sock=3D6) (qack)
>> >>
>> >> >
>> >>
>> >> > (icwnd/mss/irtt=3D14/1448/16499) (ct=3D16.54 ms) on 2023-01-06 12:2=
7:45
>> >>
>> >> >
>> >>
>> >> > (PST)
>> >>
>> >> >
>> >>
>> >> > [  2] local *.*.*.85%enp4s0 port 46454 connected with *.*.*.123 por=
t
>> >>
>> >> >
>> >>
>> >> > 5001 (prefetch=3D16384) (trip-times) (sock=3D4) (qack)
>> >>
>> >> >
>> >>
>> >> > (icwnd/mss/irtt=3D14/1448/16580) (ct=3D16.86 ms) on 2023-01-06 12:2=
7:45
>> >>
>> >> >
>> >>
>> >> > (PST)
>> >>
>> >> >
>> >>
>> >> > [  4] local *.*.*.85%enp4s0 port 46458 connected with *.*.*.123 por=
t
>> >>
>> >> >
>> >>
>> >> > 5001 (prefetch=3D16384) (trip-times) (sock=3D5) (qack)
>> >>
>> >> >
>> >>
>> >> > (icwnd/mss/irtt=3D14/1448/16802) (ct=3D16.83 ms) on 2023-01-06 12:2=
7:45
>> >>
>> >> >
>> >>
>> >> > (PST)
>> >>
>> >> >
>> >>
>> >> > [ ID] Interval        Transfer    Bandwidth       Write/Err  Rtry
>> >>
>> >> >
>> >>
>> >> > Cwnd/RTT(var)        NetPwr
>> >>
>> >> >
>> >>
>> >> > ...
>> >>
>> >> >
>> >>
>> >> > [  2] 4.00-5.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0
>> >>
>> >> >
>> >>
>> >> > 134K/88055(12329) us  11.91
>> >>
>> >> >
>> >>
>> >> > [  4] 4.00-5.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0
>> >>
>> >> >
>> >>
>> >> > 132K/74867(11755) us  14.01
>> >>
>> >> >
>> >>
>> >> > [  1] 4.00-5.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0
>> >>
>> >> >
>> >>
>> >> > 134K/89101(13134) us  11.77
>> >>
>> >> >
>> >>
>> >> > [  3] 4.00-5.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0
>> >>
>> >> >
>> >>
>> >> > 131K/91451(11938) us  11.47
>> >>
>> >> >
>> >>
>> >> > [SUM] 4.00-5.00 sec  4.00 MBytes  33.6 Mbits/sec  32/0         0
>> >>
>> >> >
>> >>
>> >> > [  2] 5.00-6.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0
>> >>
>> >> >
>> >>
>> >> > 134K/85135(14580) us  13.86
>> >>
>> >> >
>> >>
>> >> > [  4] 5.00-6.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0
>> >>
>> >> >
>> >>
>> >> > 132K/85124(15654) us  13.86
>> >>
>> >> >
>> >>
>> >> > [  1] 5.00-6.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0
>> >>
>> >> >
>> >>
>> >> > 134K/91336(11335) us  12.92
>> >>
>> >> >
>> >>
>> >> > [  3] 5.00-6.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0
>> >>
>> >> >
>> >>
>> >> > 131K/89185(13499) us  13.23
>> >>
>> >> >
>> >>
>> >> > [SUM] 5.00-6.00 sec  4.50 MBytes  37.7 Mbits/sec  36/0         0
>> >>
>> >> >
>> >>
>> >> > [  2] 6.00-7.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0
>> >>
>> >> >
>> >>
>> >> > 134K/85687(13489) us  13.77
>> >>
>> >> >
>> >>
>> >> > [  4] 6.00-7.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0
>> >>
>> >> >
>> >>
>> >> > 132K/82803(13001) us  14.25
>> >>
>> >> >
>> >>
>> >> > [  1] 6.00-7.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0
>> >>
>> >> >
>> >>
>> >> > 134K/86869(15186) us  13.58
>> >>
>> >> >
>> >>
>> >> > [  3] 6.00-7.00 sec  1.12 MBytes  9.44 Mbits/sec  9/0         0
>> >>
>> >> >
>> >>
>> >> > 131K/91447(12515) us  12.90
>> >>
>> >> >
>> >>
>> >> > [SUM] 6.00-7.00 sec  4.50 MBytes  37.7 Mbits/sec  36/0         0
>> >>
>> >> >
>> >>
>> >> > [  2] 7.00-8.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0
>> >>
>> >> >
>> >>
>> >> > 134K/81814(13168) us  12.82
>> >>
>> >> >
>> >>
>> >> > [  4] 7.00-8.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0
>> >>
>> >> >
>> >>
>> >> > 132K/89008(13283) us  11.78
>> >>
>> >> >
>> >>
>> >> > [  1] 7.00-8.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0
>> >>
>> >> >
>> >>
>> >> > 134K/89494(12151) us  11.72
>> >>
>> >> >
>> >>
>> >> > [  3] 7.00-8.00 sec  1.00 MBytes  8.39 Mbits/sec  8/0         0
>> >>
>> >> >
>> >>
>> >> > 131K/91083(12797) us  11.51
>> >>
>> >> >
>> >>
>> >> > [SUM] 7.00-8.00 sec  4.00 MBytes  33.6 Mbits/sec  32/0         0
>> >>
>> >> >
>> >>
>> >> > [root@bobcat iperf2-code]# iperf -s -i 1 -e --hide-ips -w 4m
>> >>
>> >> >
>> >>
>> >> > ------------------------------------------------------------
>> >>
>> >> >
>> >>
>> >> > Server listening on TCP port 5001 with pid 233981
>> >>
>> >> >
>> >>
>> >> > Read buffer size:  128 KByte (Dist bin width=3D16.0 KByte)
>> >>
>> >> >
>> >>
>> >> > TCP window size: 7.63 MByte (WARNING: requested 3.81 MByte)
>> >>
>> >> >
>> >>
>> >> > ------------------------------------------------------------
>> >>
>> >> >
>> >>
>> >> > [  1] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port
>> >>
>> >> > 46448
>> >>
>> >> >
>> >>
>> >> > (trip-times) (sock=3D4) (peer 2.1.9-master) (qack)
>> >>
>> >> >
>> >>
>> >> > (icwnd/mss/irtt=3D14/1448/11987) on 2023-01-06 12:27:45 (PST)
>> >>
>> >> >
>> >>
>> >> > [  2] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port
>> >>
>> >> > 46454
>> >>
>> >> >
>> >>
>> >> > (trip-times) (sock=3D5) (peer 2.1.9-master) (qack)
>> >>
>> >> >
>> >>
>> >> > (icwnd/mss/irtt=3D14/1448/11132) on 2023-01-06 12:27:45 (PST)
>> >>
>> >> >
>> >>
>> >> > [  3] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port
>> >>
>> >> > 46460
>> >>
>> >> >
>> >>
>> >> > (trip-times) (sock=3D6) (peer 2.1.9-master) (qack)
>> >>
>> >> >
>> >>
>> >> > (icwnd/mss/irtt=3D14/1448/11097) on 2023-01-06 12:27:45 (PST)
>> >>
>> >> >
>> >>
>> >> > [  4] local *.*.*.123%eth0 port 5001 connected with *.*.*.171 port
>> >>
>> >> > 46458
>> >>
>> >> >
>> >>
>> >> > (trip-times) (sock=3D7) (peer 2.1.9-master) (qack)
>> >>
>> >> >
>> >>
>> >> > (icwnd/mss/irtt=3D14/1448/17823) on 2023-01-06 12:27:45 (PST)
>> >>
>> >> >
>> >>
>> >> > [ ID] Interval        Transfer    Bandwidth    Burst Latency
>> >>
>> >> >
>> >>
>> >> > avg/min/max/stdev (cnt/size) inP NetPwr  Reads=3DDist
>> >>
>> >> >
>> >>
>> >> > [  4] 0.00-1.00 sec  1.09 MBytes  9.15 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 93.383/90.103/95.661/2.232 ms (8/143028)  128 KByte 12.25
>> >>
>> >> >
>> >>
>> >> > 451=3D451:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  3] 0.00-1.00 sec  1.08 MBytes  9.06 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 96.834/95.229/102.645/2.442 ms (8/141580)  131 KByte 11.70
>> >>
>> >> >
>> >>
>> >> > 472=3D472:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  1] 0.00-1.00 sec  1.10 MBytes  9.19 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 95.183/92.623/97.579/1.431 ms (8/143571)  131 KByte 12.07
>> >>
>> >> >
>> >>
>> >> > 495=3D495:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  2] 0.00-1.00 sec  1.09 MBytes  9.15 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 89.317/84.865/94.906/3.674 ms (8/143028)  122 KByte 12.81
>> >>
>> >> >
>> >>
>> >> > 489=3D489:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [ ID] Interval        Transfer    Bandwidth       Reads=3DDist
>> >>
>> >> >
>> >>
>> >> > [SUM] 0.00-1.00 sec  4.36 MBytes  36.6 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 1907=3D1907:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  4] 1.00-2.00 sec  1.07 MBytes  8.95 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 92.649/89.987/95.036/1.828 ms (9/124314) 96.5 KByte 12.08
>> >>
>> >> >
>> >>
>> >> > 492=3D492:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  3] 1.00-2.00 sec  1.06 MBytes  8.93 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 96.305/95.647/96.794/0.432 ms (9/123992)  100 KByte 11.59
>> >>
>> >> >
>> >>
>> >> > 480=3D480:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  1] 1.00-2.00 sec  1.06 MBytes  8.89 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 92.578/90.866/94.145/1.371 ms (9/123510) 95.8 KByte 12.01
>> >>
>> >> >
>> >>
>> >> > 513=3D513:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  2] 1.00-2.00 sec  1.07 MBytes  8.96 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 90.767/87.984/94.352/1.944 ms (9/124475) 94.7 KByte 12.34
>> >>
>> >> >
>> >>
>> >> > 489=3D489:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [SUM] 1.00-2.00 sec  4.26 MBytes  35.7 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 1974=3D1974:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  4] 2.00-3.00 sec  1.09 MBytes  9.13 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 93.977/91.795/96.561/1.693 ms (8/142656)  112 KByte 12.14
>> >>
>> >> >
>> >>
>> >> > 497=3D497:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  3] 2.00-3.00 sec  1.08 MBytes  9.04 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 96.544/95.815/97.798/0.693 ms (8/141208)  114 KByte 11.70
>> >>
>> >> >
>> >>
>> >> > 503=3D503:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  1] 2.00-3.00 sec  1.07 MBytes  9.01 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 93.970/91.193/96.325/1.796 ms (8/140846)  111 KByte 11.99
>> >>
>> >> >
>> >>
>> >> > 509=3D509:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  2] 2.00-3.00 sec  1.08 MBytes  9.10 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 92.843/90.216/96.355/2.040 ms (8/142113)  111 KByte 12.25
>> >>
>> >> >
>> >>
>> >> > 509=3D509:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [SUM] 2.00-3.00 sec  4.32 MBytes  36.3 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 2018=3D2018:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  4] 3.00-4.00 sec  1.06 MBytes  8.86 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 93.222/89.063/96.104/2.346 ms (9/123027) 96.1 KByte 11.88
>> >>
>> >> >
>> >>
>> >> > 487=3D487:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  3] 3.00-4.00 sec  1.07 MBytes  8.97 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 96.277/95.051/97.230/0.767 ms (9/124636)  101 KByte 11.65
>> >>
>> >> >
>> >>
>> >> > 489=3D489:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  1] 3.00-4.00 sec  1.08 MBytes  9.02 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 93.899/88.732/96.972/2.737 ms (9/125280) 98.6 KByte 12.01
>> >>
>> >> >
>> >>
>> >> > 493=3D493:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  2] 3.00-4.00 sec  1.07 MBytes  8.97 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 92.490/89.862/95.265/1.796 ms (9/124636) 96.6 KByte 12.13
>> >>
>> >> >
>> >>
>> >> > 493=3D493:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [SUM] 3.00-4.00 sec  4.27 MBytes  35.8 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 1962=3D1962:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  4] 4.00-5.00 sec  1.07 MBytes  9.00 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 92.431/81.888/96.221/4.524 ms (9/124958) 96.8 KByte 12.17
>> >>
>> >> >
>> >>
>> >> > 498=3D498:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  1] 4.00-5.00 sec  1.07 MBytes  8.97 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 95.018/93.445/96.200/0.957 ms (9/124636) 99.3 KByte 11.81
>> >>
>> >> >
>> >>
>> >> > 490=3D490:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  2] 4.00-5.00 sec  1.06 MBytes  8.90 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 93.874/86.485/95.672/2.810 ms (9/123671) 97.3 KByte 11.86
>> >>
>> >> >
>> >>
>> >> > 481=3D481:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  3] 4.00-5.00 sec  1.08 MBytes  9.09 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 95.737/93.881/97.197/0.972 ms (9/126245)  101 KByte 11.87
>> >>
>> >> >
>> >>
>> >> > 484=3D484:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [SUM] 4.00-5.00 sec  4.29 MBytes  36.0 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 1953=3D1953:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  4] 5.00-6.00 sec  1.09 MBytes  9.13 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 92.908/86.844/95.994/3.012 ms (8/142656)  111 KByte 12.28
>> >>
>> >> >
>> >>
>> >> > 467=3D467:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  3] 5.00-6.00 sec  1.07 MBytes  8.94 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 96.593/95.343/97.660/0.876 ms (8/139760)  113 KByte 11.58
>> >>
>> >> >
>> >>
>> >> > 478=3D478:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  1] 5.00-6.00 sec  1.08 MBytes  9.03 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 95.021/91.421/97.167/1.893 ms (8/141027)  112 KByte 11.87
>> >>
>> >> >
>> >>
>> >> > 491=3D491:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  2] 5.00-6.00 sec  1.08 MBytes  9.06 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 92.162/82.720/97.692/5.060 ms (8/141570)  109 KByte 12.29
>> >>
>> >> >
>> >>
>> >> > 488=3D488:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [SUM] 5.00-6.00 sec  4.31 MBytes  36.2 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 1924=3D1924:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  4] 6.00-7.00 sec  1.04 MBytes  8.70 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 92.793/85.343/96.967/3.552 ms (9/120775) 93.9 KByte 11.71
>> >>
>> >> >
>> >>
>> >> > 485=3D485:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  2] 6.00-7.00 sec  1.05 MBytes  8.79 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 91.679/84.479/96.760/3.975 ms (9/122062) 93.8 KByte 11.98
>> >>
>> >> >
>> >>
>> >> > 472=3D472:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  3] 6.00-7.00 sec  1.06 MBytes  8.88 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 96.982/95.933/98.371/0.680 ms (9/123349)  100 KByte 11.45
>> >>
>> >> >
>> >>
>> >> > 477=3D477:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  1] 6.00-7.00 sec  1.05 MBytes  8.80 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 94.342/91.660/96.025/1.660 ms (9/122223) 96.7 KByte 11.66
>> >>
>> >> >
>> >>
>> >> > 494=3D494:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [SUM] 6.00-7.00 sec  4.19 MBytes  35.2 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 1928=3D1928:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  4] 7.00-8.00 sec  1.10 MBytes  9.25 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 92.515/88.182/96.351/2.538 ms (8/144466)  112 KByte 12.49
>> >>
>> >> >
>> >>
>> >> > 510=3D510:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  3] 7.00-8.00 sec  1.09 MBytes  9.13 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 96.580/95.737/98.977/1.098 ms (8/142656)  115 KByte 11.82
>> >>
>> >> >
>> >>
>> >> > 480=3D480:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  1] 7.00-8.00 sec  1.10 MBytes  9.21 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 95.269/91.719/97.514/2.126 ms (8/143923)  115 KByte 12.09
>> >>
>> >> >
>> >>
>> >> > 515=3D515:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [  2] 7.00-8.00 sec  1.11 MBytes  9.29 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 90.073/84.700/96.176/4.324 ms (8/145190)  110 KByte 12.90
>> >>
>> >> >
>> >>
>> >> > 508=3D508:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > [SUM] 7.00-8.00 sec  4.40 MBytes  36.9 Mbits/sec
>> >>
>> >> >
>> >>
>> >> > 2013=3D2013:0:0:0:0:0:0:0
>> >>
>> >> >
>> >>
>> >> > Bob
>> >>
>> >> >
>> >>
>> >> >>> -----Original Message-----
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >>> From: LibreQoS <libreqos-bounces@lists.bufferbloat.net> On Behalf
>> >>
>> >> > Of
>> >>
>> >> >
>> >>
>> >> >> Dave Taht
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >>> via LibreQoS
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >>> Sent: Wednesday, January 4, 2023 12:26 PM
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >>> Subject: [LibreQoS] the grinch meets cloudflare's christmas prese=
nt
>> >>
>> >> >
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >>>
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >>> Please try the new, the shiny, the really wonderful test here:
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >>>
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> https://urldefense.com/v3/__https://speed.cloudflare.com/__;!!BhdT!iZcFJ=
8WVU9S
>> >>
>> >> >
>> >>
>> >> >
>> >>
>> >> >> [1]
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >>>
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> 9zz5t456oxkfObrC5Xb9j5AG8UO3DqD5x4GAJkawZr0iGwEUtF0_09U8mCDnAkrJ9QEMHGbC=
MKVw$
>> >>
>> >> >
>> >>
>> >> >
>> >>
>> >> >> [1]
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >>>
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >>> I would really appreciate some independent verification of
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >>> measurements using this tool. In my brief experiments it appears =
-
>> >>
>> >> >
>> >>
>> >> >> as
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >>> all the commercial tools to date - to dramatically understate the
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >>> bufferbloat, on my LTE, (and my starlink terminal is out being
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >>> hacked^H^H^H^H^H^Hworked on, so I can't measure that)
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >> [acm]
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >> Hi Dave, I made some time to test "cloudflare's christmas present"
>> >>
>> >> >
>> >>
>> >> >> yesterday.
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >> I'm on DOCSIS 3.1 service with 1Gbps Down. The Upstream has a
>> >>
>> >> > "turbo"
>> >>
>> >> >
>> >>
>> >> >> mode with 40-50Mbps for the first ~3 sec, then steady-state about
>> >>
>> >> >
>> >>
>> >> >> 23Mbps.
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >> When I saw the ~620Mbps Downstream measurement, I was ready to
>> >>
>> >> >
>> >>
>> >> >> complain that even the IP-Layer Capacity was grossly underestimate=
d.
>> >>
>> >> >
>> >>
>> >> >
>> >>
>> >> >> In addition, the Latency measurements seem very low (as you
>> >>
>> >> > asserted),
>> >>
>> >> >
>> >>
>> >> >> although the cloud server was "nearby".
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >> However, I found that Ookla and the ISP-provided measurement were
>> >>
>> >> > also
>> >>
>> >> >
>> >>
>> >> >> reporting ~600Mbps! So the cloudflare Downstream capacity (or
>> >>
>> >> >
>> >>
>> >> >> throughput?) measurement was consistent with others. Our UDPST
>> >>
>> >> > server
>> >>
>> >> >
>> >>
>> >> >> was unreachable, otherwise I would have added that measurement, to=
o.
>> >>
>> >> >
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >> The Upstream measurement graph seems to illustrate the "turbo"
>> >>
>> >> >
>> >>
>> >> >> mode, with the dip after attaining 44.5Mbps.
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >> UDPST saturates the uplink and we measure the full 250ms of the
>> >>
>> >> >
>> >>
>> >> >> Upstream buffer. Cloudflare's latency measurements don't even come
>> >>
>> >> >
>> >>
>> >> >> close.
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >> Al
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> >>
>> >> >> Links:
>> >>
>> >> >
>> >>
>> >> >> ------
>> >>
>> >> >
>> >>
>> >> >> [1]
>> >>
>> >> >
>> >>
>> >> >>
>> >>
>> >> >
>> https://urldefense.com/v3/__https:/speed.cloudflare.com/__;!!BhdT!iZcFJ8=
WVU9S9zz5t456oxkfObrC5Xb9j5AG8UO3DqD5x4GAJkawZr0iGwEUtF0_09U8mCDnAkrJ9QEMHG=
bCMKVw$
>> >>
>> >> >
>> >>
>> >> >
>> >>
>> >> >> _______________________________________________
>> >>
>> >> >
>> >>
>> >> >> Rpm mailing list
>> >>
>> >> >
>> >>
>> >> >> Rpm@lists.bufferbloat.net
>> >>
>> >> >
>> >>
>> >> >> https://lists.bufferbloat.net/listinfo/rpm
>> >>
>> >> >
>> >>
>> >> > _______________________________________________
>> >>
>> >> >
>> >>
>> >> > Starlink mailing list
>> >>
>> >> >
>> >>
>> >> > Starlink@lists.bufferbloat.net
>> >>
>> >> >
>> >>
>> >> > https://lists.bufferbloat.net/listinfo/starlink
>> >>
>> >> _______________________________________________
>> >> Bloat mailing list
>> >> Bloat@lists.bufferbloat.net
>> >> https://lists.bufferbloat.net/listinfo/bloat
>> >
>> > _______________________________________________
>> > Rpm mailing list
>> > Rpm@lists.bufferbloat.net
>> > https://lists.bufferbloat.net/listinfo/rpm
>>
>>
>>
>> --
>> This song goes out to all the folk that thought Stadia would work:
>>
>> https://www.linkedin.com/posts/dtaht_the-mushroom-song-activity-69813666=
65607352320-FXtz
>> Dave T=C3=A4ht CEO, TekLibre, LLC
>> _______________________________________________
>> Bloat mailing list
>> Bloat@lists.bufferbloat.net
>> https://lists.bufferbloat.net/listinfo/bloat
>>
> --
> --
> Jay Moran
> http://linkedin.com/in/jaycmoran
>

--000000000000f491e605f2134099
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Here is on Starlink:</div><div><br></div><div><br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Wed, Jan 11, 2023 at 5:05 AM Jay Moran &lt;<a href=3D"mailto:jay@tp.o=
rg">jay@tp.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"auto">Quick note from reading your blog entry.</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">Last night, I played with =
the Cloudflare Speedtest a little. It downloads 25MB and a 50MB (or 100MB, =
can=E2=80=99t remember) as well on a =E2=80=9Cspeedier=E2=80=9D network aft=
er it does the 10MB file.</div><div dir=3D"auto"><br></div><div dir=3D"auto=
">I was getting 1.2Gbs down and 760Mbs up, 4ms of LUL, and seeing those lar=
ger file sizes. I was trying to screenshot and noticed I had those extra fi=
le sizes I had to scroll down for. I ended up getting distracted and not ta=
king the shot to send. But, it will do a longer/bigger test under right con=
ditions.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Network here at=
 the house is AT&amp;T Fiber, 5Gbs up/down - limited to 3.6Gbs down from Ub=
iquity UDM SE router/firewall with all IPS/Geo-blocking turned on. 4.7Gbs n=
on-blocking up. I am building a pfSense box to eliminate the bottleneck. Co=
uldn=E2=80=99t be happier, good job AS7018.</div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">The machine I was testing from was Win10 wired 10Gbs an=
d gets ~2.2Gbs up/down for <a href=3D"http://fast.com/speedtest.net" target=
=3D"_blank">fast.com/speedtest.net</a>. I haven=E2=80=99t take time to test=
 internally or try and tune that system, or might be CAT5e cabling issue=E2=
=80=A6 is fast enough for me for that system.</div><div dir=3D"auto"><br></=
div><div dir=3D"auto">Jay</div><div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Jan 11, 2023 at 12:07 AM Dave Taht vi=
a Bloat &lt;<a href=3D"mailto:bloat@lists.bufferbloat.net" target=3D"_blank=
">bloat@lists.bufferbloat.net</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">Dear Luis:<br>
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
</blockquote></div></div>-- <br><div dir=3D"ltr"><div dir=3D"ltr"><div>-- <=
br>Jay Moran<br><a href=3D"http://linkedin.com/in/jaycmoran" target=3D"_bla=
nk">http://linkedin.com/in/jaycmoran</a><br></div></div></div>
</blockquote></div>

--000000000000f491e605f2134099--

--000000000000f491e805f213409b
Content-Type: image/jpeg; 
	name="Web capture_12-1-2023_1018_speed.cloudflare.com.jpeg"
Content-Disposition: attachment; 
	filename="Web capture_12-1-2023_1018_speed.cloudflare.com.jpeg"
Content-Transfer-Encoding: base64
Content-ID: <f_lcta3a6g0>
X-Attachment-Id: f_lcta3a6g0

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
mRniShanVESC1h5pJJaSzUvYajISe69zjhbeEqW/UqfUY7FQgtU6dCgVJ+LFlsNFk0l1ltRIXoFs
SZlmXcEnomHNtW7dc+8aQmaxNqkOPDltFMcOM6TCSQ24bJnoa0kESdPLS0SyzyFLbp7rfTP42Up1
qdaJ693O/hCUAACVgAGLum26XeNsVe0a2l9VOrkCRTZZMPrZcNh5tTa9BxBkpCtFR5KSZGR7SPMB
lAHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben86VT34Dp
8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6f
Acwfg4tzH4Ben86VT34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnw
HMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben86VT34Dp8B
zB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAc
wfg4tzH4Ben86VT34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHM
H4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben86VT34Dp8BzB
+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwf
g4tzH4Ben86VT34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4
OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben86VT34Dp8BzB+D
i3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4
tzH4Ben86VT34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OL
cx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben86VT34Dp8BzB+Di3
MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tz
H4Ben86VT34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx
+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben86VT34Dp8BzB+Di3Mf
gF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4
Ben86VT34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+A
Xp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF
6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Be
n86VT34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp
/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6f
zpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben8
6VT34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/O
lU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzp
VPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86V
T34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU
9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVP
fh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT3
4fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+
H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh
+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34f
g4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4
OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+D
i3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4
tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OL
cx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3
MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tz
H4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx
+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3Mf
gF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4
Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+A
Xp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF
6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Be
n86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp
/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6f
zpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben8
6VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/O
lU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzp
VPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben86V
T34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU
9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben86VT34Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVP
fgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+A6fAcwfg4tzH4Ben86VT34fg4tzH4Ben86VT3
4Dp8BzB+Di3MfgF6fzpVPfh+Di3MfgF6fzpVPfgOnwHMH4OLcx+AXp/OlU9+H4OLcx+AXp/OlU9+
A6fAcwfg4tzH4Ben86VT34neDe5NwdwIueVd+H0W4W6jMgLprp1C4Zs9vULcbcMibfcUklaTSO2I
syLMs8jMBuQAAAABSlSo0KM7NmSG2I7CFOuuuKJKG0JLM1KM9hEREZmZhM2zkVQGAtu/rGvK3Tu+
0LxolboRazOp06e1Ji9p8f8AGoUaO17u3Z3RWtS87Qvykpr9kXTSbgpi1raTNpcxuUwpaDyUknGz
NJmRkZGWewwLsyAAAAAwtzXtZtlpp67wuuj0NNWmt06AdRmtxily3M9BhrTMtNxWR5ITmZ5HkQDN
AAoS5sOnta+dLZjtmpKNN1ZITpKMiSWZ90zMiLvmYCuA+EeZZkPoAAAAAAoR5sOWt9uJLZeXGc1T
yW1ko2l6JK0VEXEeipJ5H3DI+6ArgI7euI2H+G1ORWMQ74oNsQHHCaRKrFRZhtKWfEkluqSRn5sx
e2xddr3rRo9x2dcVMrlJlkao86nS25Md4iPIzQ42ZpVtLLYYRnuJm2UsqAAAAAAADC1e9bPt+s0u
3a7dVIp1Vri1NUyFKmttPzlpLSUlltRkpwyLaZJI8iGaDvO4AAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQu7casHrBrEe3b4xVtG3qrLJJx4NUrUaK+8RnkWg24slK
zPZsLjExadafbS8y4lxtZEpKknmSiPiMj7oRN4vBOU2ewAAAAAAABh7pvG0rGpfVy9LnpVBp2tbj
77qUxuMzrVq0UI03DJOkozIiLPMzPIgGYAfEmSiJSTzIyzIx9AAAAAB8MyLaZjAVzEGxLZp8er3H
edDpcGXL3hHkzKg0y07J0zRqUrUoiU5pJUnRI880mWWwBIAHwjIyzIfQAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AB5WhLiTQtJGlRZGR90h6AJi+Uj8wcYcOcW8EsYavuTcGVR4lh7oWYc+EtKzQdAPNJVBLKS/wmjR
y4iIjSRfFG4bgRf1FxhsjcK7nS9EYa0K27QVcFXrsantSpjiUKJpDTaHSNHbLcStZmWZ5ntLLbv/
ABEwDcvzHTDnGZN0lBTYCJyDp28tYc3fKUJ/K6wtXo6HyVZ59wYHHLcw1fEPEWh414V4qTMOsQ6F
CcpSKqimtVGLKgOGZqZfiuGlLmRnmk9IsjyMyPJOUUXpoppnjN/hExTyy8Vq7TVVNPCLe+bTV8Zz
hzRd26mx2tPBLGayapeiXb8wkuGnUtm54sRpCqhDkqJTbjjRpNtLuhsVkWWZ7CLIbjxGxixGo26V
3NljUu6nmKLetOqj9fhk00ZTVtQTcbUozTpJyWWfamQvGdwlbknBK+sN7lv2pVi6sR5ZVWv3c5GQ
h52ek821tsEeihpB/Fa0jyIzLS4ssXaG4nxLiYx4a4y4mbpSTeU/DqPKhMwlW0zBjux3GFtIS2TT
v4tZawzUtWsNeiRdrkJpvrfm/wDG/wAKZifGzPvj/wAsvfMW+kovuQq/uj8ccQL8ui7Md6hHtWyL
+qlJiURilRT3/HbdURMuvaJKShBaBJ0e2PM8zMZj4SP8xwF//wCw0H+zo3Jubdz2vc/Qr0hruxNd
4X3XULmJRQd7b2KSvS1GWsXp6PFp9rn8kh53Su54Xug2LBZRdqaDwIvGBdhmcHfO+yjaf4j8ojV6
Wn8ftssvimJqm+pbq1f2uU3vXM9d7eNnNtYvDdRYl4+boCxrLx6dtC37AjxplNS3SI0l5Dm9Uu6p
Klp2NqPS0jUSj2llkNRYz33i3j3gfuWb4qeJk2i1KvX7Dok0oURs2lVBuQtDdR0T2KWg2zMmz7TN
XEO4bT3MzlsYoYv4jneaZJYqMMsph9T9DqdoRtTma9Yetz+N8VHe841tUtwPLf3O9h4OUnF1VNuL
Dq5kXTRrlTREuITJS844SVxFPZKTk7llrONKTPMs0nTC/Lqa/VFMz74qz8GmJnVVNM8Y+Gr/ALmm
cbt1Bi3SMY6zgfS8Wb1oycO6PDbcqtvWUmsSa7UlMpUpcpKUmhhpWaTyQRbTPIZK/N05uk7qw43N
ku26tLse68QLpet64G5FHJBOGhaGjdNh9OklHxnCIjLYfGNz3buP8VpF4Hihhjuk3rLvetUNij3b
Um7ZZlR6yttGiUlEdTqSjOZ7c0qVlsyyyEhu7clzrrewVkzcWKvPk4SVvq1Jm1hk50utrMk6RLd1
idUZmk8jIlERGREWwWo/REV79aL85v8ACfuFKspmaOFVuWXi03iDUd1Bae6Iws3OtubpGfJ4QUGq
S6xXKhRIinHDQstFxDKEkkloIyJJZ5cZmRiOUndeY0YP4H7oQr4uVu9bmwmuhqgUisyYSGTklKeJ
ptbzTWik9BRmrIssyyLzjqu7dzyu6N0lZm6BK7Uxk2lSJtKOk7x0zk74Mj1mu1haGjlxaCs++Qgz
e4ctypwccqLeN2u1SmYz1dFX1caHvZ6kOIUa2jQ4a1k6pC9FRKNKS7XakyMUi+pae+/OLeF0xERV
P/rb92jdz3uhMcLkxQp2HUrEDEG56ReNHkpk1mt2EqlHb9R1Wbao69Am3WszPLWceinviR/BXW9f
CbHvG7q/ihVK1Al3PU4qqVJjNaJTEuoNyYb35RS3M8jSZ6JdwbrwS3PONNhXHBrGKm6grl+QKLTi
ptMpLFKRSohJIiInJKW3FnJcIiIiUrI+M9o97mzczXTudbiu1iFiqmsWLcFRlVWn24uiNsO02S+4
lSlb7Jw1Olop0dHQSXdIi256xamvLszHjePD+WdUTVRae1E+ExPjaefFoDdv4MVG+N0Rat8SMMo+
Mtv0ukqhVCyI1aKNPhkteZS0NpWlSknlxmZFmMFuTrhw9sHD3dCuYMu3nY9Vj01yvt2NcULQXbrq
GXkpfjuLNWuSvRbzMy2Ehsj0uMb/AN0tuLpWNN703FnDLGKuYW37Bi9T3KzTGlPFJiZmerW2lxtW
ZZ7FEv5yMQujbkF/AHB7Ga/LxxUruJV/3ZasyLUa7UmzbNTDTC9W222a3FFsJBGalqz0Cy0S2Dmi
ZwsCuN2VXjnHv+OcOmbV4tFs86fDf9xvaspOLm64sTATDTdW3dje3cFNqkyFFrVruUiO2y5DfeNv
XE8giWb+W3Zkni2cYoY17sTFW4Mb8QbSs+/bytCm4fKZiUmJbVlnWyq0tTWmvf7miepRppJKSTke
ipR7e5nNzJuQrzxWwHwicvbHasP4cU5MevFZa6QwlZy23VKSg5hGSzYJRZ6tSDyzPJW0brv3cd30
eKdz4oYAboGdhg/fkZli6YaKI1Um5bjKdBt9g1uIOM6STWRqLSPNWZZbc+iuJjE7rzbuyptf463H
e58Odam/dF+/Ob+FuG5ofFTdvYrVSh4Q2qp25cPKteVDerFxzKPa66lVIy2Vm3q2IbhHklSi0jNR
HkkyF5S92njVb+5VxBuGrxKnKui3bjiW7blertAcpi6jFmLQ2xMejqIi1qPxhqSntcyTxZjf2J25
Dq90lYl02BjTXrbxDsGOuHEuqpR01d2dHcI9aiU04pJO6R7S2kRd4yIsribuSJl64C3FhBjLjFcl
71a5Zh1J64JBEycKUlZLZOHGJSkR2m1JSZNkZke0jPIyImX5pmOvwvG74X4LZ3otw/ad/g5rvWx8
arJ3U25kjYsYw9cBMuoTX0SX6W1EfjyDhqNxsjayStri0TNJK74/RwvikORaFuJsVpOJ+GmKOKe6
fmXnNw3dcKPEXbTMNh9hTJtpSWrdMyd25qdWbhqyyyLjHXRFkWQteIw4p76uUzePBW0zia3dEfGN
76AAKLgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPh8W08h9HwyIyyPiET
uH5NYo4G0yi4o4vXpinud6njhQLgqEiVAu61azrpVGM+0KOphtwiJbWZFomSj7QtmQnlV3UCcHty
xgtYmCeI1xVJq7apMoirjfoJyavS4cVZa5puERq05DetbQgjzIyRnkNo3/8AB33u5ftx3buf91Td
WFVNu2UuoVejQ4q5DDspZma1oNEhrRIzMzyUStpnkeWwSqV8H5Z9OwWtDDexb9rNCuexKy5cdEu1
xpEmSipOK0nXHWjNKXG1nlm3mnYlO3YedcO9OFFM7vy5deXhu64tMr4sxVizXGc/m8Yy92dss4ab
srdR44HhDjbBlXHd1RXaFCTVrYu+u2mdHlumoySttxpaNUpSFcWRcXfF7PuTdZ2buVqDuqarj1Va
3M1VCr9TtxNIhsxUU0zIpbemSDWo1IcS4pWactWrLIjyLeze5bxNr2FOINkYqboyr3jXb7inDKov
UtMan0xrIiLe9Pbd0Ens7YyWWl5tuezbbwepVMwKgYHXBJarMCPbqLelPLj6tMlsmNUpRtmpWjmW
3LSPLvjSqbRNUb/y/G1793CGcRE1U09Wd/jERH7y54k7p667ixdxDvOy7gcl4c4XWImpvQWUtmzU
qo+zr20rXomstFGjsSovjHsGhsHt2Rj3U7nsG9X7rvm7W7wqzDFw2y7YTkajUqDIVtehTkJ0nDa7
QiNSjIyNXHxjrXc0bi609z/g1cmEFTryrqYut2T1Tmri71W9Hdb1aWtElrMtFGZErS7uZEQwuEm4
/wAWsMajbluObqy5Z2GloSlv0i2I1LbhSVNEozajSp6HDXIZSR5GjQSRkRZaJFkJp1aK464iI55z
V9be7ciqZmibb7zytER9L++c0GwpuDdH40bqXFm2E471C37Lw+uSImPAi0qK65JbNtK1RTcWnNLZ
lnmrarNWwxK/hOiMtzIkjPP/APFVC/8A2xsbSwZ3PS8JcTsT8RVXYmqFiPVmamUMoOp3hoNE3oae
sVrc8s89FPzD5ustz5K3TWEEnC6FenBV96fEnN1MoJyzaUw4ThETZON7TMuPS2ecV1tWjDyzjVmf
hMTK1OeJXM7pvb3WybdZcS1BQ6viQ0Sj+YiH59QMXN1Pi5hffu61s3GNm2qBadRn9Q7MTSWHYtQh
QFnp77eX+NS44RKI9AyLYXENoYO7j3dMYd4jUO7713c12XtQ6Y6pcugTKc82zNQbakkhSlTFkREa
iVtQfxRSrm4IuZC7osrDzdD1e1sKb4qLlSr9oporEl1S3l5yW4k1SiVGbWkkp0dBWW3M1EeRRXE6
2tTO+Jt3Tfr+CaJiIiKo3TF++LTeOdkfqe6JxZ3Rd/YYYTYUXqvDdF12cd4Vasx4LcyUg0mSN7tI
eI0aOkraZlnkRDO4mXzugcEdyyy1jDjRQqPfD9aKkxq/T6SqbMmRDWZNmzFSWiuYpCTVkSdAi4yz
IyEzxI3HRVCq2XeWBWI8jDO7bGpfUGBUEUxupx3qcZZGy9HcUklnmRGStLj4yPZlGK7uDavXcF6J
YkvHqvyb2oN1qvOJds6GUhDNSWpSnCRCNwkpZPTWZN6Z5KUasz4hNVpiYpyz8Na8W4fltHNWm8at
+HjbO/xaIw5xs3RV5UfH/CC7sR7sZXQLMO4aHWqxR4sGrttm2tZ5tM9qhLiEZFn26dIzzIyIRq2H
b9w73CGDledvpNej3Dd9JKDBqVFhvtUmOb76VtNaxtWkalFpaw+3Iz2GQ6yw13F1btfES98RMRMZ
5t8zcRLc6g10pFIaiHnkpJrY1a9BpvRUZE0aFZcekYitK3A19tYLW/gjcO6BZq1HtK5IVboTh2qh
lcSOwtxa4qjTIzd01OZk4o+1yyyMjyKaJmJpvxov/wCtU38LeKtca0Tb/wA7f+1MW8bvlfvPH3dE
boS/8LsKcYXMM7fwyjsMOSYlLYlyalPdRpZOa4jJLScuNOR7e6NZXduxcdrr3J1sXnbNbi27iBFx
GRZFakx4yFxZLrazJSiQslZIWlSDMiPPPMiMdDYm7ku9KjifV8XsBcc5eGVwXRCRAuElURmqxZyE
Fk24lpxaNU6WZ9uRmfeIuM8fW9wda3WQs3BSy7wk0qPa1ysXPKqU2IUyRU5KVmt1TuS2yJSzP4xZ
kkiIiIyIZ0x+WInjF/mvM+7V6lpmbzMd9vktb362aPYUXtj1h9uyV4DYm4sHflGuG013HGcdpjMN
VPfQ6lKmmybLa32xkWkZnkRd3MdEXnIrVcuNdp06pyKfEhUpVUlKirJD8lRrNDbSVH8VOaVGoy2/
FIjLPMRiZuely91DS90fwsShNOth23Oo+8czWa3Er12v1mzLRy0dA+PjE8vCxm7neZqUGryaTVI7
LkZEtgiVpsLyNbTiT2KQZpI+4ZGRGRkY1veim+/P/wCU28LIiPzTPu+kX8borZU2s0aVbC1VeXOp
9zsupdjS3TdXEkNo09JtR9saDJKiMlGeR6OR7chtMQiycMmrVfjzahWnqpIgsrjwUqb1bMNtZkay
bRmZ5qMizUpSj2EWZFsE3FVgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB8MiPYY+gA+E
RFsIsh9AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAF
NyQw0ei6+2g+8pREPO/YfhbPOEArAKO/YfhbPOEG/YfhbPOEArAKO/YfhbPOEG/YfhbPOEArAKO/
YfhbPOEG/YfhbPOEArAKO/YfhbPOEG/YfhbPOEArAKO/YfhbPOEG/YfhbPOEArAKO/YfhbPOEG/Y
fhbPOEArAKO/YfhbPOEG/YfhbPOEArAKO/YfhbPOEG/YfhbPOEArAKO/YfhbPOEG/YfhbPOEArAK
O/YfhbPOEG/YfhbPOEArAKO/YfhbPOEG/YfhbPOEArAKO/YfhbPOEG/YfhbPOEArAKO/YfhbPOEG
/YfhbPOEArAKO/YfhbPOEG/YfhbPOEArAKO/YfhbPOEG/YfhbPOEArAKO/YfhbPOEG/YfhbPOEAr
AKO/YfhbPOEG/YfhbPOEArAKO/YfhbPOEG/YfhbPOEArAKO/YfhbPOEG/YfhbPOEArAKO/YfhbPO
EG/YfhbPOEArAKO/YfhbPOEG/YfhbPOEArAKO/YfhbPOEG/YfhbPOEArAKO/YfhbPOEG/YfhbPOE
ArAKO/YfhbPOEG/YfhbPOEArAKO/YfhbPOEG/YfhbPOEArAKO/YfhbPOEG/YfhbPOEArAKO/Yfhb
POEG/YfhbPOEArAKO/YfhbPOEG/YfhbPOEArAKO/YfhbPOEG/YfhbPOEArAKO/YfhbPOEG/YfhbP
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
TVlrlPpItI05Z5oPj7bIyz2FkMXHknMrkinLQc2UwtuUhhT5tMNoLRNK16BaRqNZHkWeWw9gkFPY
VCacXNma+XJXrpLh5ESnDSRGZF3C2FkQ68TVw8LU63NRrV4ut1L0B417P7RIa5r9on6xx2dV3sW6
fz9f7sv7itrmv2ifrFs262uctSVkZE3kZ+fMWiN6JJpKW/GQWWRL08/OWRf2Mx6qUKDUILsWpMod
jLT+MSstmRA8tBy456RGREvM8+LiFwS21HoktJ98iMTusjfdhbfpvAaxmajRGmnatW5Cd7b+Uaia
J3RM28y7Y0pQ3nln/hH2NTpUdhUNczXSXXd8urS2TaEqMiIySktiSzLPLzipTKIiktMnJqMiWmE2
pEfXmWiyk8tLRIi2Z5fwLYWwXsJOkS5B8bqsy+YdGNj6+7cwwsHU371dvT0E6ZZKyLP5x6AUpL5M
NaREZqPYki7pjkiLy6dy3ePWVJlBpSZNkZ5+cyM8v/lSYvRYb3NkmnnDM3nHU6RmfER9wX4tV1Ip
Y2t09me02h9braTURGtpZoUnaRkekW0sshi7f37EuSp0hypypUWOw0tG+VaakqVnn23GZZF3RIpL
ZusLQkszyzIvP3Bh5VuwKs+VSTJmQ5uiTa3oz5oUoi4iUnak/wCJGL01fltUzrpnWvSya2FtLU9F
Pj+M33DFRmS0+ktE8ld1J8ZDEU+1qPSZSKgU2XvlPbOvvzFnrdhl+MLPRPIuLZsy2ZDL6mFOSS45
b5JZ5ktosyV58+Iw1dbcnWtvepLTrkVZt5dsZNlt2mZ94ZCnxW6aZHJfYQSU5F+M7v8AEWLVNm6K
VPMrdjNrNZNLPJZ5lx7O6QyUJikO7Go6CWXGhe0y+saRhxTCs13leolxXdjUppf+lZGLGrV6NSZN
OhrZcedqUje7SG8sy7U1Gs8zLYWW35xdLp0FwslRW/4Fl/YW6rfpCnkPqhkbjZGSVGpXa58eW0Xi
3WpN+pkQFiVJZT+TkyWy7yXMiDqUjuTJfOmItCV8Asepiu5Pkl/3w6mvlxVJ8LQLxxxtpBrcWSUk
WZmYwz2nJcORSYbhKI/ypKJCVfwPjIXyaTG0iU8t17LiJxZqIheERJIiSRERbCIL2GNZqcpgiTVY
imthfjE9sn+OXEL9OokIJadBxJ8R7DHsyJRGSizI+MjFmuksEo1xlrjqPb+LPIjPzkGQquU+E6rT
XGbNR93IUTpEbjbW82ouIyWewfNGrR/irbkp/wAxaKvYPpVVCDJMth1gz7qizL6xOfULSNbbdPlP
TqfINt+QZm6taSVpGZ5mf8TF3lWG+1SqM7/mURpP6iF01IYfIjZdSvPbsMVAmZneRERuWO+6kWw6
UZmXdJ5JEY+dU3UbH6bJSf8AkTp/2F+Ai4seq7KdrsWU0XfW1kQqMVODJc1TMhJrPiIyMs/rF0KU
iJHlJJD7SVkXFn3AyFXMu+AsTo0EvyaFNn30KMg6lJ4t+y8v3phkL4BY9Tn0H+JqL6f9R6X9w3vV
Gtrc5DufHrEZZfNkFhfALDfdRa/LQNMuLNtWZmHVGSW1dNeJPGWWWwvOFhIqH+Vd/wBJf3FrO/WH
RPoWqffwR6tqazKfeS2SyNKCMyUky7o8zv1h0T6Fqn38Eb0fpZ1b0iAAF0AAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMZcNaboNLeqK4z8jVFmbTBEpwy7pkRmWeRbc
uPZsEWwovU7qo6ieVKdcacX/AMS8jRS5ms8kpz2nkWWezIX1+YZW9iHvI649NbVANZsqjPaB9tln
nsP5JDG23gra1s11i4Ys+qyZcczNByZBOFxGXyc+JR7Mx4WPHSk9IUV4VMbGMpzzm/Xa3U9rAno2
NAroxKp2s5xllFr5Xv1tF7u6qY/uv2HamBdIvuQUuRPqFbftSps0t1uMwyWihcx9CmW81OaRIUWa
9WZFtEYvnEbFmdud8NMQsNMT6lCtop1Ei1Z6qJJ6vVGQ7U22HWXn0ZNoQRGolKQWa+LYXH0Jjhub
7Hx4co824qxctDqdD17cSpW9VFwJWoeIieYUtOek2vRTmky/wltLbnfVDc/YdTcLKPg7GhSafblD
kQZMRqI6SVkuI+h5vNRkeea0Eau6eZ8Q9q0xh1RG+9/vut1cXjzVGvTPdMfff3sji7az95Yd1ClN
4h3DZOihMlytUKQhmYwhsyWrRWtKiIjIjI9nEZjWe4voN4xcN5d33Zibdt4MXJNclUddxT0yX2Ke
kzSztSlKSNZFpnkX+Ihsu4cJaTcsy55NQuW4yYuqiookmEiee9YzSdPN1hoyNLbqicMlL25klPeE
itO2KZZlsUu0qMThQaRDahR9YZGvVtoJKdIyIszyIs9gtF4mqY6/uf28Wec000z1fxb9/BzJcmJG
Pj8K/wC8LexDgwGbQv0rfgUp2ksOx5MI966W+FmnW6ZG8vRNtaeIs8+5krpxHx1s5d/2lSZ1UvWZ
bhUuob6p9KiKqzUB/SOUUWMRIZkOoJBm2hRGas8jJZ5Ee314IWcukXHRVO1De90V7hFNPXFpFK/F
bEHo7EfiUbNvd2j3W8HKDWK5XLnjV2vUmrVxuGhyZTphNLYOMatWpBGk0n8Y9JKyUlXdSMqKa4im
Kt0Rn79X/dmpaub+/L3a3+1i8Bb8j3lSq3FTiPLuyTR6jvZ4qpb7lFqkHSaQsmZcVbTJkrtjUlZM
tkpBl8YyNR7SEPsDDSm2C7Vqgmt1auVeuPNu1CqVV1tch8m0EhpH4tCEJQhOeRJSW1SjPMzMxMBv
NupemJjeDUG6Yn39Aw+mTbEupmhnBbVIlvtoNUtZEaSQhruJIzMzUfHkWRcZjb401iLuV8P8Sr5V
iJVK3ctOrJsoYJ2mVHUElKU6JZdqZls2Hke0dnR9WDRjxXjzaI7r+GTt0KrCoxoqxptEd1/Bsiyj
uFNtwo92VKDPq7KDbkyYaDQ28ZKMkr0TM9EzTomZcRGZ5bMhoXdSV/GS2MQcJ6hbt8sUez6hfdGo
82nQ2VFKqJvqc1hPPGeRMklBETaS7bSM1HsIhtPB7A2zsEoM6n2jIqLyJ6kKeVNeS4o9A1mW1KU5
nmtW08z4izyIiGVxEwvtzE07bO4nJieC1fiXHB3u4SM5UfS1ZLzI80dueZbM++OfSNTb3wpvTeJ3
Wyvnkyx9nNVcYc3iYm2Vs5jL3ZtM1KvYyUvdm2nQa/fLCrPrtHq7sCgwGFNtoSwlrRdkLUebrpms
+4SUkRZcZmMxuuWrtTbFMqbOM72GVj01ciVdFXpjxorDuSCKJGhFq1kpTjxkRpItJXapSRmobOrG
GFuVvEagYny3JhVi24UyBDSh0iZNuSSdZpJyzM+0LI8yyGrcRtxhZGKFAt+37lxKxJ0LZq8qtwJT
FwmmSmU8vSJRumg1fitqW8stBJmRcYyqtVTTTw8/JnTaM+v/AJ/hd4VV7GCgbkWLcmKD0hN9U+25
Ut1ya0nfBKQlxUdUhGZlrtWTZuEefb6RHtzEOtmvboWtXNh7QpmMTTca/rVmVyoOtUOHraY9GOKZ
JhZtmnRWckiVrydySlWWRmSk7utrCWlW7havCeRctx1yA9EkQnqhWagcuoOtvGrS03lFmoyJZkWZ
bCIi7gr0vCu2aRVbWq8VyYb9o0eTRIBKdI0nHf1Gmayy7ZX/AAzeRll3dm0WmYnGmqf0/wAVfvMc
laLRh00zvzv4W/dzn18cZKhaNtVes1K46VQ0u1ym1e6bWthurvImQZrsdpcmITTym2XG2lOKU00Z
EvZmhOQ6dw+uCNdVlUW4Ilxwq81OhtvJqUNk2mZWZflEoMzNGfyTPZxCFM7nukUqkMUi0r/vK20t
SahJW5Tp7Wb2/JK5DqVodaW3sccVoqJBLIsi0uPOeWbaFFsO2KfaVusLap9MZJhlK1mpZkXGpSj4
1GZmZn3zEZWJ33j7j7szQAAgBSlfmr37tX9hVFKV+avfu1f2AYmx/wBC6B9FxfukiMIagWrTCgwk
KUSNNZEpWalGZmpS1H85mZmJPY/6F0D6Li/dJGFbgINTzkxKXXHs0rJRZlo/Jy7wzxJ3LUwjlDuC
O81SJVUQ6uo1wjcjspIlG2ztUS1F/hTo6OZ98yIZygVlm4KY3VGI7rKHFrRoO5aRGlZpPiMy4yCD
RabSzKQhslPNoWjfDmRrJs1GrR0vklnkRdwiIhfNusraJ9t1CmlJ0iWlRGky7+feGdUxO6E0xMb3
sBglXzaKJe8lV+ITulo/G7XPvaXxf6jNpcQpBOJWk0GWZKI9hl38xWaZjemKondL0AoNToT6jQxM
YcUXGSHCM/6CuG5IAAIAAAAAAAAAAAAFjNfW66iBGWROL2rMj+IkTGYoVaoy0svs0mOqQ+22pZkg
yI9hZkkjMyLSPiLMyLb/ABLA0u4KBUojDkYpMBTijQZTmFNZuZ5Gk1lmjTIyMjSSs/MM7UqhEoEV
tlljfEh9xtpmMhRE46payTnt7hZ5mfEREYwdTKXRrOjWXChFKqjzanFx2nCyhoNRryI+8nPQT3Ty
G1GFGJT+ZlXiTRVkyFTp8tthLZavJ5ZNGeeeRHmKO9GEtlHU0Wig+JXGR57f45ivHl1iZb++a3AT
FlNOEZpSrMlER7Febj4hlHqYh11ThOGnS25Zd0cteHNOVLemvWzlgd5JSebLriD8x55i3ksydNkn
ZWZG4WWScjL5hmZcNUVRbdJJ8R5CzcjrfdjEkyIjeIsz7+RilOtey82tdSJmYhREy9rM+4stuf8A
D+wuE02tPIMjTHQRll2xmRjLRadqHUuqdzNPcIhei1NN85VmrgiDFmnFlyJ6EnviUlCXloURaZJL
JJbe8PiIu9ZG95bWZq2oUsv6bRMBbzoaJjBtqItItqDyzyMXmJnrViYjqR/esfL8in6g3pG/Yp+o
ZOLGYmNGSiNp9s9FxPePv5Dy9TH28zbyWXm4xlNNUNIqpljt6Rv2CfqFekwoi5zqVsIUkmyPIy7u
YvWaWtbZKdWaDP8Aw5cQxNRrSLf3zPbYKUbZJZbjIcSl1089ppI+PaeWQvhU1zKmJVTEM49RKa8X
5qhJ9w0lkMRJpjDLhsmjLLiNJ5ZkLGpXhV2aOUqZTeoalpN5S5biFLJlCiNzRazzUo05kku+oh8u
FmjwqAisFV6pLm1LIoiycUnSUeRF2hFokRcfF/EdE6NXVF5mzGMemJtGauunoUhTaHnEIUWRpIyM
j+sfShGkskyHCMvmFSK261GaafeN1xKCJSzLI1HltMVTMkkZmeREOLWnc67QtVuS4xabui6gtpmW
wy/h/wD1HiOtuY8b7mj2nxEme0vOPZEuYvSPYwk9hd1Ziq5FYd2rbL+GwTeI3otMvMs8yZyP/tki
uZkW0zFjJiNtm1q1KSSnUlkR7C84rFCbM/xjrjhd5StgTEWgi93pUtrSJDebqz4koLMz+YOp1TUa
pSIymUKy0izI1GXfyGapEdpmMa0ISRuK2mXm2e0X40opiM1KqpuwyYdDKlyJD+i4wba9etw9ujl2
xHnxClYiGUWpT97R3WWFoU40h1RKXoKUakmZkRcZGR/xF0uNHOZIp0xht6LUEGZtOJJSFHxKSZHs
PMhijsyXT1KRa9xSaVGcUSlRtWl5pG3M9WSviZ7dnFt4hvFrWYze90pFvKgsSslKI0rLiWnYohTd
qcaPUYtIcUs5Epp11GSdmi3okozPubVp+sXgpuX3sdrp1P2SUHJZL/tEF2yfnLui8ZlR5CdNl5Ky
8x7S/gKotXqZBfVpLjpz75bP47AF0Ai946yj25MlR58lKzQTSC1h5mpRklJEfGR5nxkMsy3VobDb
RKbkE2gkdsZ6R5FxmZ8ZidXK6L52ZIBbRp7Mg9WZG26XG2rYYuRVIAAAAAAA+KSSiyURGXeMfQAW
r1MhvGatVoKP/Eg9E/6ClvSoMbY07WEX+F4s8/4kL8BNyyw6oSmNkynuERf42u2I/Pl3CFdifDkZ
EzIQZn/hPYf1GLgUH4USRnrmEKM+7lkf1hkK4Cw3pNi7YcnWIL/s3dv1GPqKohCibmNKjq76i7U/
4hYXwD4lSVlpJURl3yPMfRAAAAAAADJUMvxzp5f4S/uLad+sOifQtU+/gi6of5V3/SX9xazv1h0T
6Fqn38EdGH+lnVvSIAAXQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKUr81e/dq/sKopSvzV792r+wDE2P+hdA+i4v
3SRYL+Or5zF/Y/6F0D6Li/dJFgv46vnMZYvUtS8rQhxCm3EkpKiNKiPiMjGBjWbTk0CHbtRccmRY
Tmk2lSjSSkkatBCiI+2IiMiyPjyIxnwGUTMblpiJ3rBdAojkLqculRVRdHR1RtFo5fMMQjDq1EKL
ShOutJz0GHJC1NII9uSUGeRF5iISYBMVVRukmmmepAb5tW1qbbr50+ix2qi+aWIGpRk4p8z7Ukn3
OLafcIjMShdxUmC9Ap0qSvfEz8U1oMuOIUtJ6KiNaUmkjJWw8zLIYSrOs06/Ic+vyG0wXIim4Djq
iS2w+R5rzM9mkpOWR+YxhKVT61UcOIKKMp8iqCpT7293SZdPWrcWhRLMthZmnPLbkew9g2iIqiNa
WM1TTM6sNjRZkSc2b0KU0+2lSkGppZKIlEeRlmXdI+MhWGu7PZv+zbej0uoUFipMxzcNOokkT5JN
RmRKz2KPbxkYmNv16LcUFUyM06ypp5yO+y6WS2XUHkpKi7/EfzGQyqo1d25pTXrb8pZMAAUXAAAA
U3n2Y6DcecJCS7pj2pSUJNajIiSWZmfcIYunI6pKXUZSNJJrMmEq4kpLu5d/2CbCrrZtQPKOSozG
e1w/jq+Yu4MdV7IpFWNl8nZUSbG2szIzxodSfz8Si8xkZeYSEBMVTTOSJpiYtLWNsW9edLVUavMq
tQJiKb64i3W0PTnkEWwjRkae4rRIuMzTsLLIXNoVCtR7ngtXXEkNzqpTFKaWv8YZnrDdUlaiIsjS
lZJ0T4tAsjPM8tij4aEKNKlJIzQeaTMuI8stg1nHmqJiWUYMRMTErCuqJNLeTsM1aJEWfH2xcQyA
xzDZTKg++8WkUZeg2k+IjyzzGRGM8GylJYKQypo+M9pH3jEcW+pmRFWk8yJ3PLv7DEmcWTaFOHxJ
IzP+AjRpScqISz7XWkR/UM6v1QvTulJknpJJWXGRGPoFllkXcAXUAAAGPnIVEeKpsJM9EsnkkXxk
9/8AgL5C0uIS4g80qLMj8w9GRGRkZZkewxjEk5SX0tkelEdVkWZ7WzP/AJCd4v5CzbYccLjSkz/o
IDUNedyUuntQVrkS4LhRpREnRYM1lrVq255kn4vnE2rDxMUyQs89qNDZ3NLZn/UCfjUuntOVCQ1H
S2hKVLcWSSJWXFmfnF6KtTOFK6dbJDK9Q6aupOW7Hjsw4hU/f1TmE0Tz7jJKNOqQnRUZqMkrVmkj
PtMsizIzyOucuOSmsradTTo6tGmtKYW0kkaJfjDSoiPM88izItnEI7BjXFcVVOWzOaRMeS6iQ+SV
ETUU3CyZSRlsPQMlZnt7cxsxlhqOw3GZTottJJCE94iLIiGuNOrRFF82eFF6ta2TAC3Sl6ovahhB
m0k+2Mv8R94X78E5Mw4bLitFO15feI+4QzEeMzFbJphskpLvDipw5jOXXNd9zDOQX4zRLUgiTnlk
R8QoiRKSlaTStJGR9wxYu0ptRmbThp7xHtFasPgmK+LBzM/xH75P/MZCPCfkpNTeiREeXbGZCjUq
e+ycfYSiN9JFl38jGahNm1GQlSdFXdIIovvRNVtz1EZUwwlpWWZZ55fOKoANoiym9ZVRpRxykN/l
I6icT/Dj/oLpp1LzSXUH2qyIyHoyIyMj4jFlTTNhb0BR/klZo/0nxCepBV6RFrMNUOSa0Z5Gl1tW
itBkolEaT7m1JH/AYi8KxcdBS1VKe3TlUxpbRTDfNetJKnUpUaCTs2JUZ7T7nEJKLGu0lqu0abR3
1mhExhbJrIszQZlkSi85Ht/gJpm05q1U3jJfEZKIjLiPaAwds1uVVDqEWoQihuwZz0VlClds8y2S
MnSI+Mj0yzy2ZjOBVFpsmmdaLsTctPYnwGjlTWorESUzMdW6RaBpaWSzIzMyyI8uPuDKNuIdQl1t
ZKQsiUlRHmRkfEZGPEqMxNjOxJTSXWXkGhaFFmSknxkPkKHHp8RmDFQaWWEE22k1GrJJcRZntC+V
i2d3yTCjSyLXN5mXEZHkf1kLdVPkMpNUOa6Rp+KhZ5p+YX4CLpWUerRHUFrXCZcLMloc7XIy4+MX
TbzLpaTTqFl30mRg4ww9+VZQvLi0kkYtJNJjuJNyOgmny2oUnZkfzcQZC+FnV6vTqFTnqtVpSY8S
OnSccMjPIs8i2ERmZ5mWwizCNPJat7yk6p8tmR8SvOQt6/b8W4o7cWW+82htRqyb0TJWaTSZKJRG
RlkZ7DLuiYiL/mRN7ZLum1OBWITNRpkpuRHfQlxDiD2GSiIyzLjI8jLYe0XIsqPRqbQYSafSoqGG
UnpGSeNSu6oz7p7C2+YXoibXyTF7ZgAAgAAAAeVoQ4k0uIJRH3DIegAWKqWTStZBfVHV8ktqT/gP
hTZsc9GZCW53lsFpEf8ADuC/ATcWSKtENWg7psKPuOpy/wDIXiVJUWaTIyPukPi223UmhxCVJPjI
yzFkdNUwenT3zZPj0D2oP2BkL8BYFUXY56FQjm3/AO8TtT/5C9bdbeTptLJSe+RhYZWh/lXf9Jf3
FrO/WHRPoWqffwRdUP8AKu/6S/uLWd+sOifQtU+/gjfD/Szq3pEAALoAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFK
V+avfu1f2FUUpX5q9+7V/YBibH/QugfRcX7pIsF/HV85i/sf9C6B9FxfukiwX8dXzmMsXqWpfAAB
iuAAAKE2BCqLBxp8VqQ0fGhxJKL+oqtttstpaaQlCEESUpSWRERdwh6FpV5qabS5U5R5Ew0pf8SL
YJi85Im0ZsBcN5Oxqy3aNuMMS66+ybxIfd1bTDZf41mWZn8xFmMjadEfoVJOPMdQ7MkSHpcp1BbF
uuuGtRlsLYWZEWwthEIfh/YCYteqdz3C/v6rplGjWHxNr0Czy7uzSy7w2SNcS1H5KWeHev8APUAA
DFqAA+GZJI1KMiIuMzAWtWeQzTpCnMzJSDRkXn2f8x7p7amoMdtaclJaSSi8+W3+otkn1RmE5n/w
8c+1/wA6+/8AwGRE9VgAAEAAAAsKfmiXNbWeZm7pls7hlsF+LFjJNXkkfGttBl8xC+EyKMxKlxXE
o48sxGppGTaXC/wKIzErFF2Kw82ptTSMlFlxCk03m60VWiynTZCpEcjVtNOzPvi6FlSV/wDDGwoi
JbKjQou7s4sxei1rZI3gAAIBRmRylRnGdmai7XzH3BWABhZbhyqNpPF+MjuJJxHcNRHlkfm25iNY
sVGqJhwaDT7eXPOpvoS26RpNCHEqIyJRHtLZt0i72XdErqtLefQ45Cc0VuZaaD4lZGQu4U1uUnLR
1bqNimz40jSmrVmKlK6daNVbW9Rm6HS2oSVKW5tW84o81OOHtUZmfn/pkMio9FJqIs8iM8h9FvPe
JiI64fHo5EXfMxSZmqbytEREWhRo6TVFVIX8d9alq+vIv7C+FvAY3tDaZPjJOZ7e6fGLgJTAAAIF
jVPjQv8A4pH9jF8LGqfGhf8AxSP7GL4T1AAAIAWLxE3VmHD2E42pGffPuC+GOm6btWhNII/xZKdU
eezLLITAyIAAgYS4KFOqEuDVKNUW4U+Ca0JW60bja2nMtNKkkZZ/FSZbeNJCygXVUYE6JQrspTse
TINbbU9s0KiyFJyyyyVptmojLYpJFnsIz2CUC3nwmqjDdgvqcS28k0KNtRpVkfHkZbS/gLxVfKpW
ac7wrpUladJCiUR8RkeYw9uVWRVXaqtxRqZjTlx2VZpyMkkWeWRFxHnxmYwWHUyLoVyhUt9tFMpU
lKKfoNGSUsLbJekSjMyX25ud3ubcs8ikFrUqHSKM1FhTClNqWt03yMsnVKUZmrZs4xNVMU3hEVa1
pZYAAZrgAAC0qUUpMczJJaxvt2z7pGQqw5BSoyHy41FtLvH3RWFhF/4Se7DPYh0ta3/zITvgX4AA
gAAAAAAAAAAAAAAAAAMiMsjIjIWTtMb0jciOKjud9HEfzkL0AF1bJzSffblpQoiQWi4k/jbe6XfH
yd+sOifQtU+/gi6of5V3/SX9xazv1h0T6Fqn38EdFH6WdW9IgABdAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApSvz
V792r+wqilK/NXv3av7AMTY/6F0D6Li/dJFgv46vnMX9j/oXQPouL90kWC/jq+cxli9S1L4AAMVw
AAAFpVac3VYLkFx1bZLyMlJyzIyMjLYew9pcR7BdgJibTeCYvlKJKTVKfUlKmTzgPy3EpKWhknIU
lw8kp1jZnpNLPYXaqIj7/cF8zd0FmhwKvVnWmN9tEtRJVxKPLtSLjPb3OMebutmoXIUFuHXX6c3G
e1ruqIjNzIyMuPvZGLNywaVE18tM6YpThmpwlrTkvM81FmSSMiM9pkRkRme0bVVUVU3q3saaa6ar
U7mWo11UWvSH4lPkrN+NkbjTjam1kk+I9FREeQy41lZFRoDOINbgtyGI8lLTUdqPsTmSCzM0lxcR
9zvCfP1Ja1GxT2te4R5Gr/Anb3xnVTETkvRVMxmuZMpmKjTdVx8SS41H3iIWhR5VRPTmkbLGw0sk
e0/9R/8AIVo0BLa98SF654/8R8SfmF2KrviEIbSSEJJKS4iIfQAQAAAAAAAsV5JrLZns0mDIvOeY
vhYzdlQgq4u2WRn/AN3iF8JkAABAx81C4bvVJjMyLY82RfGT3/nIX6FpcQlxCiUlRZkZd0gUklEa
VERkZZGR90WMBRxXl01Znknt2jPupPufwE7xfgACAAAABazICZOTrSjafRtStP8Az75C6FrUZjcS
OozX26iySRcf1Bewxj9ddaM477ZNrI9HWJ2ko/N3h8p5TKwpL7jikxULIyJRnmsyFo1GmVUzaS0b
TZn2ylltGVjpqFOYKG1GS6lOZNrI8u7ntIVpzzlacsmUAY5TNWZSchMonVkeZs6OScu8Ri5iTWpa
T0e1WjYtB8aTF7KrgAHwzJJGZnkRbTMQMfUSXImw4rRFm24UhZn3Els/rmf9BkRYUxJvLeqCi2vq
yRn3EFsIX4mSAAAQAsXf/XDHnYX/AHIXwsX8zq0ck7DJtRmf+XMTAvgABAAAAITY9DrlOqdxtSJc
VdvyJr5wWEnpONmpZm52yTySnTUstEyzIy7mW2WUumQ6NT2aZT2tXHjp0W06RnkWefGe3uiNVCVB
sittOtPtJZuSoIJ1hxZJJpzQUS3k/wCoyb0u5nt4zEvIyMsyPMjGlczOalERGQAAM1wAAAFlVG1E
0mY0X4yMesLzp7pfUL0DIjLIyzIxI8NOoeaQ82eaVkSi+YexjoCyhvLprpmREo1Mmf8AiSfc/gMi
AAACAAAAAAAAAAAAAAAAAGTof5V3/SX9xazv1h0T6Fqn38EXVD/Ku/6S/uLWd+sOifQtU+/gjow/
0s6t6RAAC6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARdzEOgN3y3h8opPVNxnXE
ZN/istHSy0s+PLbxZCUDWlpLjVrGC7aobaVnTY8WEyvLak8lGvb8+Q83pDSMXBrwcPBmImuu034R
EzP0ehoOBh4tGNiYsTMUUXi3GZiI+rZYANRbrBdcYwDuudb1wSqNNhRkSUyYyzQ5khxJqQSi2p0i
IyzLvj2NHwtvi04V7XmIv73JgYe2xKcO9rza7boCD4bTK/Cw/t2LVo82pTUUyNr5bi06Ty9WkzUY
knVaf4ik/bSKYlGzrmi97TZXEp1K5p4MoAxfVaf4ik/bSHVaf4ik/bSKKMoAxfVaf4ik/bSHVaf4
ik/bSAygDF9Vp/iKT9tIdVp/iKT9tIDKAMX1Wn+IpP20h1Wn+IpP20gMoAxfVaf4ik/bSHVaf4ik
/bSAygDF9Vp/iKT9tIdVp/iKT9tIDKAMX1Wn+IpP20h1Wn+IpP20gMoAxfVaf4ik/bSHVaf4ik/b
SAygDF9Vp/iKT9tIdVp/iKT9tIDKAMX1Wn+IpP20h1Wn+IpP20gMoAxfVaf4ik/bSHVaf4ik/bSA
ygDF9Vp/iKT9tIdVp/iKT9tIDKAMX1Wn+IpP20h1Wn+IpP20gMoAxfVaf4ik/bSHVaf4ik/bSAyg
DF9Vp/iKT9tIdVp/iKT9tIDKAMX1Wn+IpP20h1Wn+IpP20gMoAxfVaf4ik/bSHVaf4ik/bSAygDF
9Vp/iKT9tIdVp/iKT9tIDKAMX1Wn+IpP20h1Wn+IpP20gMoAxfVaf4ik/bSHVaf4ik/bSAygDF9V
p/iKT9tIdVp/iKT9tIDKCKYnYk27hNZ02+LoKUqnwjSS0xWtY6o1HkRJIzIvrMiGX6rT/EUn7aRp
Pdk1+UxuernZcpLzW+0sx0rUpJkRm4k/+Q69AwI0nSsPBq3VTEOnQ8KMfSKMKrdMxDdNoXRTL2te
lXdRdbvCsRGpsfWo0F6txJKTpF3DyMZca33ONYTXcCrGqBZaR0OK2vL5aGyQr+qTGyBnpWFGDj14
UdUzHKVNIw4wsavDjqmY8QAAYMQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABSlfmr37tX9hV
FKV+avfu1f2AYmx/0LoH0XF+6SLBfx1fOYv7H/QugfRcX7pIsF/HV85jLF6lqXwAAYrgAAAPK1ob
Sa3FklJcZmfELeTPQ0smGUm88ezQT3Pn7wpN09b6ifqK9YvuNl8RImw+qqanVaMCKuRlxqz0U/WY
17iBctaaq0WKzUypSIZJlLaUnTRILNRaClFt/wAJ5Enae3YNnpSlBElKSIi4iIQ29MPnrtqLNROs
E2UVBpajKjpUgzy4zPjzz2/wIXw9XW/NuZ4kVTT+Vjbety36ZOTULhqULqpKWakGtSEuGStmST48
vm4xsNppplBIaQlKS4iIhoWbY1XoNQZoMypP7zc31JffQtRNKS4RpbSsiL4pLMuPi7gkMnEe5yco
VMt+lvSHEISiea2VG5tToktadmgWekosz25d4b14M1WmmbsaMbVvExZspVw0VEiREcqTDbsVxDTp
LVo6Kllmksz4zPzDIjVMF5qSy/Q4dEiy50xhyPKqLpEqS445sUpORnopSRn3dmRFxjaiE6CEo+SR
EMsXDjDtm1wsScS70AAMWoAAAAAALGq5EUVWW0pKCz7xd0Xwx9bJSoaW0KyWtxKUnlxGMgJ6gAAE
ALSfGW6SJEfY8yeknzl3SFSRNjRS/HOkR9xJbTP+Aob6nyPzWLoJPiW7s/oJi4uIspuW1rEbDLYp
J8aT7xisMI5HmRpyHHZpNFK7VSm0kRaRcXGL3eM3xo79kgtAvHHENJNbiySkuMzPIhZ9VDdMyhQ3
Xyzy0vipP+Jj6mmEtZLmPrkGn4pK2EX8BeERJIkpIiIthEQZCxNVVk9oTSIie6o1EtX8MhVj06Ow
rWGRuOHxrcPMxdAFwIiLiIAAQAs5cFS3ClxV6uQju9xZd4xeAJibDHorDKC0Jza47pcaTSZ5+csu
4LepVmMuObEV0zcdPRLYZZF3T2jMDFR4Uepb4eloJajcNBdzRJJ7A7xcw5kTVIZSer0SJJEftFUp
rKpG9yPb3+5n3hg5NPdpjydBRuR3T0czPalXc/gMlFpq0rS48ZbDz0Rneq9l7U2uyIAAuoCxeMk1
aOpXEppSS+fMXwsal+LeiSD+Kh3I/wCJZEJgXwAAgAAAGPrlCptwQXINSiMvJUlRINxBK0FGWWkX
nGCoF1R6ZGi0C6NZTqhHSUclyEGlqRo7CUhzak8yyPLPPPuCWilKiRZrKo0yM0+0sslIcQSkmXnI
xeKsrSrNOd4VEmSiJSTIyMsyMu6Poidpk7TbgrFsQ31O0qmNx1MpcMzXHccJSjZSfdQSSSZZ8Wll
3BLBFUas2TTN4AABVIAAAtp8UpUcyIvxie2bV3SMfYEkpUZLh/GIsll3j7oj1y1q42q9TKLbVLVJ
W4o3ZTistWhvaRZ93j7pcQ8TV1yE7Nq0nU05ceLrW4KD165BkeRn2pZ5ZmRbC7o2pwaqouznFpib
JYAwlsXTEuSlxaihtbByUmpKHCyPMjyMv4GRkM2MpiYm0tIm+cAAAgAAAAAAAAAAAAAGTof5V3/S
X9xazv1h0T6Fqn38EXVD/Ku/6S/uLWd+sOifQtU+/gjow/0s6t6RAAC6AAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAHlz8mrttHYe3vDS+53YkHNuqoyJjkg5czS0l8Z5LWnM/nyG0rhrd
Op8Cc0ufHTKbiuPEybqdYaSI9ujnnl5xrnc8tKRSJTq05KfbbeV86lLP/mPmukKqcXpjRKYn9OvP
OIjzfRaDTVh9EaVVMfq1I8b+Tbw0huz6lPpu50utcCnKlm+2zHd0Ty1Ta3kEpw++Rf8AMbvGmd2G
6lrc5XmalEnOK0ksz4zN9vYPsujbemYV4v8Amj6vI0D/APlYd4vnH1X2GU2RUsOqFOl09qFHkUyA
uay24a0pUbZGvTMyLI+LSLud0xnXkyy0EolOIQtpkmEERZaO+iyMtmewsu6MvhqsncO7Xc2dvRoa
vrZQJHkXeGGkf9av3z9WOP8A9Wr3ywip06NRJjzks1PRnFIS8ttOZkRltMiIi4j7hEMRJrtXS0ko
dTacYN5RJmuGlslZJSZIzJtST2movikZ5cefHL32GZLSmH0EtC+Mj7o9klJESSSWRcRDFkjTlSqx
pedemnHQjUpWpDRaLZKTmpfbJz4+/wAXdIUJFaq5VCIzFnsrZNDZpU5+LOVmoyUZJ1ajPIi/wqTx
58QlmRBkXeLYAiEmXVpFOfN6oO6Lra17G0Fq9F3LZ2ve488xSk1CoxdOREWklaLjZuqyQlCNeRaZ
noqItndNJ+cTTIu8GRd4BYUKRKlUxp6Y4246eZabZmaVFnsPPRTn85ERDIAAAAAAAAAAAAAAAAAP
hmRbTPIWk2sUmmt62o1SJFR8p55KC+szExTNWUQmKZq3QvAEFrOOmD1AIzqeJFvo0eMkTkOGX8EG
ZiGT92PgLFzKFdEmqqL/AA0+C66Z/wBCHVh6BpWN+jDqn4S6KND0jF/RRM/Bu0BzpL3a9mKz6iWH
d07vacDUZ/aMYiRuybnkZlSME6mnvKlzmkkf8E5mOynoLpCrfh299o+rpp6I0yd9FvfaHUQDkeVu
p8cpmZU/De3YSD4lvz3FqL+BFkMPKx03StQz1NVtempPuIhLdUXzGahvT/Tulz+qaY/9o/a7aOhN
J/xTTHxj9nZ4GpJcai+scNyr63QtSz31i8/Dz4yhQGk/+IjGIlR8Rqnn1XxeuuRnx6qXqf8AwEQ3
p/pur/HjU8pn9m0dBVf4sWPHyd7rkxm/ykhpPzrIhayK9RIqDck1iE0kuM1voLL+o/P92wilnnUb
queaZ8e+Ku8vP6zFseEdluL05VKXJV8p59xR/wBx0U/05gR+vGn4U+ctaehMH/Fiz8I/l3VPxbww
pefVG/6BHy49ZUGk5fWoR2dunMA6fnr8VLfXl+wlpd/8GY4/Zwvslja3bcT/ALydL+4vmbIthj8l
btPTl3d7Iz/sNaf6f0KP1V1T8Ijzax0Nokb6qp5R5ulJe7P3OUMzSq/jdV3madKcz/ilsyGOc3cO
Au3etVrErL9lSH//AKkkNENUCmMZammxm/8AS0Rf8hcFBQRZE0kiLvENo6E6Ojqqn/2jyaR0VoMd
VXOPJuR3dyYTl+bUK7pXe1VIPb9aiFovdz2QZ5RcM8QH+8aaU0Rf1eGp95l8kvqDev8AlEx0N0dH
+Gfm/haOjNCj/DPP+G0HN3DTlfmeDl5ud7WttN//AFmLV3dt1lX5ngTWnO9ramy3/wDSY11vXzBv
XzDSOi+jo/7X+qfNeOj9Cj/t+M+adObtPEFzMo258URdxTtytF/QmRbr3YmLa9rWClNb/wBdeJX9
mxDd6+YN6+YXjo7o+N2DHOrzWjQ9CjdhRznzS1W69xpV+TwjoaP9VXUf9kikrda46q/J4aWwj/VU
XT/sQi+9fMG9T+SJ9A0D2Mc580+iaH7KPHzSNW6u3QSviWFZyP8AVKkH/YxQXuqd0if5OzbGT/qc
lH/9ZDB718wb1P5In0HQY/7NPj5p9F0T2UePmpXfuq91CxTEPogWdSm0yGSckQ2XHHCSayTkZPKU
nRPMszyz72Q2ru4627DwEptMqcmImrVSqQEakl6KHFpzNzRz/wAJH/QxovEaLo2TV3cvyMc3vsGS
v+Q25utWaddGFOGc2fGQ+7LqMFxC1ceitnSWX8dgpOj6PhaZolWFRFMa03t12tMKzg4OHpOj1YdE
R+ad3ws2JuN6PfFAwLpNIvqmsw3Y7rp09KHUrNyEsycbWrRMyI81rLL5JJz25jeAjuHKCbsG3UJL
Ik0uMRF/+rSJEPitOxdvpOJiTFrzP1fK6Zi7bSK65i15lBb6x1wYwvqjNExGxSte2ahIYKSzGqtU
ZjOuNGo0ktKVqIzTpJUWfFmRiV0OvUS5qTFr1u1aJU6dNbJ2NLiPJdaeQfEpKkmZGXnIcNbo3DW+
MUN3jBoVhrslE5nCspLh3ZQyqkXVFVVpPQaMy0XM1JyV3tIu6Ilj9aluYC4b2jgBV8QrrplwqplV
rdOqNFmSqfT5VRWs1HEbZipNxajUeTbeeikiLPjHJE/kiqd8+cx9IuwqpnaatO62fK/1yfpBmQxk
S6LcnV6ba8OuQXqxTWm35kFt9Kn47bmegpaCPNJKyPIz48h+a1YxWTckXDSXug8bb4syhyMLKTVb
dqdDddbKq3ApakyidNsjJ54iS1+JXkW0zPLMVMUaxiAzuj6nXOq9ZYsFFLtF6/JjalQqsqGolEha
ybPNpGsNKniSZGScyzIsxemm9UUz1+cRnzUmbRMz1R924v04zLvi1h1WmVF2SxAqEeQ5Dc1MhLTh
KNpeWeirLiPI+Ix+XVwYkY4zN21U6M3e50ypx7vah0Olyq7NablUHRRoaqEhlTLyHG1OHrjVnpGr
aWgQ6F3CdKs+2MSscbWh3bWZlxxLqfXKplQmOu6mKpRm09kotHNRmotIjzMkl3hWmNamKu6Z5W8/
BFczRVq8JiOd/Lxda0C7LYupVSTbdegVM6ROdpdQKJIS7vWY3lrGHNEz0XE6Sc0ntLMhlcy744V3
NO6awJwjvnG+xMR8R6dQ6/U8Yq/IiQZDbylutuKYbQojQgyyNaFFtPuCAVnEGuIxcqE9zFS9WscW
r9j0+m2Uw5IOmvUI5KEmo4+jqjaOMa1m6Z5kZC1URrxTG6evl558GuNRste3+Hymf2fpTmQZkPzm
tzEA7U3dsuiysUq9ek6tV6Wx1Og1aayujoXmSGX6a61qVMstJSetQotIjSos+M7jcy3+ujbsKp2S
/iVXcQZtXXUCfkRavNNinaJms0y4EhskMEntW0qbVtV3MjEURr6vfE84tl4ssSdnrd1uU9b9BKxW
qVb8ByqVqezDitfGddVkRZ8Rec/MMbQL8tW5pS4FIqqXJSEaw2HG1tOGj5RJWRGafOWwYHEGRBp1
02tV7hPRosZyQS3l/kmJSkZMuOdwi+ORGewlKIQyhVKmVVFuUmlrW9XIdyOSGjJOTrUHSWbrjndJ
taD0Sz2Go05cWyFm8QAAAAAAAAAAAAAAAAAAABSlfmr37tX9hVFKV+avfu1f2AYmx/0LoH0XF+6S
LBfx1fOYv7H/AELoH0XF+6SMXLlR4ukp9wk7TyLun/AZYvUtSqCjKlNQ2jddPzERcaj7xC233Olb
IkbVo/aO+we2oTqn0yJrqXFI+IkiySk++MrW3rvBKrEgs0oZjJV8rtll/wAg6mLd/PJrzufxkkei
k/4EL8AuKMeJHikaWGyTnxnxmf8AEVgAQACmuQw24hlx5tLjmxCVKIjV8xd0VBI8qbQvMloSrMsj
zIYu5KfKmUiSxTUtpeeJJL7bQNbZH2ySVkeRmnMiPI8sxlhj7hOQmhVA4iNN7ezmgnvnomJpmbwi
qMpQK170t2gyHYVYguQJaiUbshwiUbqyV8VKUZ5ESTLLLZx5CWy59XlSIdThTosGgojomvyHmzU4
+lWZ6vRVlqiJORmo8zzMiyLIxE6dHptnxaFdlMjt9S5cRmNUdBOxozSWT3myMjJQkDlyzLklyaVa
1PjSosdSmpE2VmcdSi40IIvj5HsM+LYY2ri860QwonVjVmUoZfZkNpdYcStC0ktJkfGRlmRioNa3
JEu6PLVV0wHI85SSbbk0tZuocUWxKXWVmWZHsLMuIbBprkx6nRXqgyTMpxhCn2yPMkOGktJJfMeZ
DKqjVi7WmvWmy5AAFFwAFGbplEe1fxtA8hIsKpLaUplmOSnnWn0rUhss9hcYrHNqZZZUczzP9unY
PdI3scFtcYu1UW0zLaZ93MXgm/ULHTrS9qWoqP8AKs1Gf1kPO9qpIV/xMxDTeW1LBbT/AImMgAi4
t48CLG2tNFpHxqVtM/4mMLc9UuGkTIcimsxXoLhKbfJ1DmaF7DSrNBKPLYZZEnuiRAJibTeUVReL
QwlDrkG7aatRNKacSei8yrPSbV3DLMizLukeRfMMhS3nHYhJeMzcaUbazPvkYqRIMSCThRGEt65x
Tq9EvjKPjMxbxPxNSlR8tjhE6nvF3D/qE2mZsU3iM1+AAKpAAAAAAAAAABYNnvWqLbPYiSnTL/UX
GL8YqvzY1LYaqkx1LbMZektR9xOW0/4CYzyJZCSw3JYWy4WZKL6j7hihSnnHYug8ojcaUbaj7+Xd
Fm1eNrvJJSa7DTmWZE44SDPYR7CVkZ8ZfWEWoRSUuoRXNdDkq2uII+0UWwyMuMhOrMRnCNaJ3MwA
8tuIdQS21kpJ8RkPQqkFvPY3zDdaIjzNOZZceZC4ASLeDIKTFbdIyNWWSi7yi4yFwMc9/wCjpm+S
/N5B5Od5Ku4f8RkePaEgAAIAWlWqUajUuXV5hmTEJhb7mXHopSZnl59guxGMTIFQqdh1qDS1tpfd
iqLNZZkaC2rLYR7dEjy84tTETMRKKptEzDE4bprVdnS8Q6hPjb1rkRhEeJGQpBM6tSyMnNIs1LSZ
mnS7uathFokJ6I5YlYgzbfp1MaW2ibApsI5cVKTLe5uMkpKTI+LYR7O5kJGLYk3qVw4tSAADNcAA
AYuoNTodSj12mRzkONoUw/H0iSbrRmR9qZ7CURkRlmffIVabHt+46um495SWKrTjNhSHXDStrNJ9
qpKVGkyMlZlxl3RfjCVF+Vb1V4QNGycKQcaNMSvMlII3dHWF3NhLLPPuJHRg4k/pljiUR+pY1qiV
OPWJkCjwF6FVW1IbfZShKGDTkTpKz2EZlkZGRGZ5mXcIX6JcylVZ6hPaycllhuQl0iLTJC1LSRGX
dMjQf1l8wzV0VCVTKJIlwyyeLRSleWZIzMi0j8xCwplKiwNOQ2pb8h8iNyQ6rSW53tve28RbBfG1
YjPerh3vk9Iq0Q1E25rGVmeWitBll8/cF75xTfZRIZUy4WZLLIxZxZaohphz+0MiyQ4fxVF8/fHL
v3OhkB4efYjNm7IdQ2guNSlZEPYjV4WrKud+lkioamLCka59kyzJ0jySf8dA3CLvGrPjIhNMRM2l
FUzEXhnINSp9UaU/TprMltCzbUtpZKIlFxlmXd2i5FCFBh02MiHAjNsMtlklCE5EX/mK4ibXyTF7
ZgD6RGoyIi2mKFZq1u2xC6pXRXoFKjZ6OumSUMIz72ksyIz8wREyKwCnSalQbkglUrarcGpxVHkT
0SQh5sz72kkzLMVDIyPIy2kExMF2Tof5V3/SX9xazv1h0T6Fqn38EXVD/Ku/6S/uLWd+sOifQtU+
/gjfD/Szq3pEAALoAAAEafkFv59C6vVmWkrUnWFqdUSiLSNBdqathd8v4iiia2SWzkVyrx1uvpYS
hw2NIzUWaT2JMsjIXsq3FTKi7JcW0lpeaiNBKJZq0ctpZ5fxyzBFBmGlt159k30SG3DMknomhCTS
RfPkf1gPFMS3V2EvQ7nqCj0SUpGkzpIzLMiURI2D0huO4bhIu+Wo2U6bmTjPap759oLqkUZVMJkj
cQrVRUsHollmZHnmMS3bU+dDNqYppgkIWlpKSMlGZuErtzI+LtS4u+AvUtx1Ntupu+WaHc9BRONZ
Ky73aDxnDKOcvhlK1JK0Dc1jOiSu9noD7GtlTaEJW42g8nSUSNIyI1py2GozPud0eJduTpjDJPOR
Tcjr7RKSWhKk6Oj2xpMjzAVFtx23Esru+WTii0kp1jOZllnxaHeFtGktS0sLYuGqKTIUlKTzZ2GZ
KPaWjmXxDF21bZtdql1GiWoyLRPYTZGR/wBxSYth9BNJdlIybJKT0UmWZElwvr7cvqAV4sRM4lnD
uua8TatFWgto8j7x9oK/UaVyhqX1tdAUreoSqMlZOG2ajSlBGg1HmRcRnpGe35tgzIDF9RpXKGpf
W10A6jSuUNS+troDKAAxfUaVyhqX1tdAOo0rlDUvra6AygAMX1Glcoal9bXQDqNK5Q1L62ugMoAD
F9RpXKGpfW10A6jSuUNS+troDKAAxfUaVyhqX1tdAOo0rlDUvra6AygAMX1Glcoal9bXQDqNK5Q1
L62ugMoADF9RpXKGpfW10A6jSuUNS+troDKAAxfUaVyhqX1tdAOo0rlDUvra6AygAMX1Glcoal9b
XQDqNK5Q1L62ugMoADF9RpXKGpfW10A6jSuUNS+troDKAAxfUaVyhqX1tdAOo0rlDUvra6AygAMX
1Glcoal9bXQDqNK5Q1L62ugMoADF9RpXKGpfW10A6jSuUNS+troDKAAxfUaVyhqX1tdAOo0rlDUv
ra6AygAMX1Glcoal9bXQDqNK5Q1L62ugMoADF9RpXKGpfW10A6jSuUNS+troDKAAxfUaVyhqX1td
AOo0rlDUvra6AygAMX1Glcoal9bXQDqNK5Q1L62ugMoADF9RpXKGpfW10A6jSuUNS+troDKAAxfU
aVyhqX1tdAOo0rlDUvra6AygAMX1Glcoal9bXQDqNK5Q1L62ugMoADF9RpXKGpfW10A6jSuUNS+t
roDKAAxfUaVyhqX1tdAOo0rlDUvra6AygAMX1Glcoal9bXQDqNK5Q1L62ugMoADF9RpXKGpfW10A
6jSuUNS+troDKAAxfUaVyhqX1tdAOo0rlDUvra6AygAMX1Glcoal9bXQDqNK5Q1L62ugMoADF9Rp
XKGpfW10A6jSuUNS+troDKAAxfUaVyhqX1tdAOo0rlDUvra6AygAMX1Glcoal9bXQFCZEKnsKkzL
pnMtoI1GpamiLIizP/AM2OYd0BVpE+9lpaqS3YNCbjrejoXsJal5GWzu5d8eH/UHTHqTQ50mKdab
2iPvg9noLon1zpcaNNWrFrzO/wC7sZVKdJxGqlXuqnXBJS6qUuJEcNWxUdBERaRERH2xZn/EbjwW
pjtLYmRXpa31IZYQZmRERGWlxZENeYdU1ES0IGrbJKnkG8syLjNR8f1ZDbGG7Zodn591Lf8AdQ+R
/pvR4nTKNLr/AF13meGcTL6z+otImNDr0Wj9FFojjlMQnI0Bu4rMq95YA1XqO+hCqI8isyEqcNBO
MMoWbidnGeSsyI9maS7uQ3+Nd7olOlgRiD5raqJ//wAusfrHRuLVg6ZhYlO+Ko+r4XQMScLSsOun
fEx9WTwbbdawjslp9RKcRb1OSoy7plHQJiIlhErSwosxXft+nn//AC6BLRz6T/1q/fP1Y4//AFav
fP1AABiyAAAAB4W602k1uOJSlJZmZnkREIdcGM+FFrEs69iDQoqkfGQc1Cll/wBxJmr+g0w8LExZ
th0zM90XXowq8SbURM+5NAGi6luycHWFG3b7lauJfEk6XTXXEGf+oyLIRudusL3qWabRwWnoI/iP
1WahpCv+6nNRDvw+htNxM9S3vtH1dtHRel1/4Le+0fV0wA5HnYtbpevEaUTrYt1tXGliOqSsvmUo
y/sI/MpWKddMzuTGa43kr42oikRkl5iNBEf9R2UdA1/93Fpj3Xny+rop6Hq/7mJEe68uzZVVpkFJ
qm1COwSSzM3HCTl9Yhldx7wats1Iq+JNAZcTxtFNQtz7KTM/6DlFeDtrzFaVceqlZVx51GoOvGZ/
xMZan4dWdTCIoVs05sy4jNhKlF/EyzHTR0LolP68SqfdER9buinovRqf11zPui3m2/Ud2hgtHUpq
jSK3XnU7NCnUp5WZ+Y1klJ/WI5UN2LXphmVoYGXDJI+JVVlswMvOZduI63TmWUkhplCElxElJERD
3vTzDpo6P6Po/wAEz758rN6dD0Oj/Bf3y8Tt0Nul6uZlTLasihMq8JXIlPJ+Y0mlB/UMFLvDdK1g
zOoYzMQG1cbNNorCMvmWrNQkG9PMG9PMOqmnRsP9GFTHwv8AV0UxgUfow6Y+CDS7avWrkfCLGK+a
iSvjNHVDaaP5kJIshj0YP2drDelw5c1xW1S5U553S+clKy/oNk708wb08w3jSqqf02j3REfRtGkT
G7L3REITDw7s+nmSods01oy/xJjpz+vIZZukRWSImorSMvkpIhIN6eYN6eYRVpNdf6qplE49VW+W
E3nls0R93n5hmt6eYN6eYU2qm0YXeZ97+obzPvf1Ga3p5g3p5hG1Nowu8/N/UN5+b+ozW9PMG9PM
J2ptGF3p5v6hvPzf1Ga3r5g3p5g2ptGF3ofe/qG8/N/UZrevmDenmDam0YXeh97+obz839Rmt6eY
N6eYRtTaMLvQ+9/UN5+b+ozW9PMG9PMJ2ptGF3ofe/qG8/N/UZrenmDenmDam0YXeh97+obz839R
mt6eYDieYNqbRhd6H3v6hvPzf1Ga3p5g3p5hG1Nowu9D739Q3n5v6jNb08wb08wnam0QXEGnm9Y1
faJPxqdIL/5DEqxlmdUcJcCms9LfLkU/n0In/kPFzU3fNuVONo56yI6nL50mMRccrqrhnudkEeZG
b6z+ZDC0jSJiurBr4VT/APGfJpT+arDq4Vf/AIz5OxbCTo2TQU96nRy/2yGeGEslOjZ9FT3oDBf/
ACEM2PgcbPEq98vjsXPEq98qO9Iu+t+73b3xoavW6Baehnno58eWfcHiTToE1xp2ZCYfWyebanGy
UaD75GfELkBmzWLtEoz7TLD9JhuNx/yKFMJNLf8ApIy2fwFVynU903TdgsLN9JIdNTZHppLiJXfI
XIALRVJpS5aJ6qdGOS2RJQ8bSdNJF3CVlmQ9s0+DHkOy2IbDb7/5VxLZEpfznxmLgAGNctu3nX1S
naFT1vLVpqcVGQajVx555Z5i4Ol0w5pVE6fH32RZE/qk6wi72lxi6ANxOe9ZppFKTNOpJpsUpZ8b
5Mp1h7MvjZZ8WwfWKTS4spc6NTYzUhzPTdQ0lK1fOZFmYuwA3qUmNHmMLjS2G3mnCyUhxJKSovOR
izpNu0KhafUajw4Ws2r1DKUaXz5EMiAAAAAAAAAAAAAAAAAAAAAAKUr81e/dq/sKopSvzV792r+w
DE2P+hdA+i4v3SRgnY8SnIfqMtw3DaSpxbrh55ERHnl3tgztj/oXQPouL90kR+54b1QoNUgx/wAr
IjOto/1GkyIZYnUtSwspmkJtxd9Yjy3009xJORachakoQ2r4hKSky1jii27dhZ5ecYi26rZ90y3o
Nht1K264wyUpiJLSaWJbWwyzb0jSZGRltLJRZ5lnkPOLEC4r9sW2nrLpzkxTbpOSGUGgtUpKCLRU
SjItiiMshd2Nal7yboiX/iFvSnIo0A47EdskkZ/i9FS1mWwiyNR5Z90sssgt1F2WbvNg4cNw6XNe
lyScJcWOglrbU2eThHtLYR/WPXC1elqztmtawk6xSdQnYg+JRHpZK4j2JMz2HsESm7+KI5WYsOWt
FTbqm99S2ZqI3iImjPLizyzz84s2GKow7b7aqbP1duPyHXyJpWSEqqDSk6HyvxJK4u5mQziIWvKb
ovenymzepNPqFSaT8dyMyRpSrLPR7YyzV5izMU2r5bffkxmLbrS3YbhNSEahJapak6SUqM1ZFmnb
nxbRCW4Mh6mRWajCqEFbMiQ60SIindNDjumTidE+0dyLLtu4MhKlwaki7pLrkphmVW6fqkuxlKN0
yYTklbZdsaTNJ/0E6sIvLFYlnVbvdc4NvVKm1WiwFy97ojkUlxWmRJQR58WRmZGk+PujKUvFmpQq
wzRbxteVTt8R0nDdLJw5a0EetUkkKVnmo20pR8YszMz71NCX2XjachVVMM6OumtTURjNxxxTmkfa
Z5pSRHkWfcIRp1uPh/Tae/Fo0ifTY1cenuaURaN66+OTJtRkqPSTkSVOmZ5FpH5xtRaqNWWdUTTO
tDYbeKNKNyNGk0OsxZU5zVRY78dKVvLyMzSk9LR0iItqTMj8wqFiLGkymY8Cg1KS3JjyHWnNWSNY
trLNskn2xn8cs8siNGXdGs4dMo9RpkeDQIVROKupRZcucxBcb1CmSMiURK7ZTqv8Rlsz4xL3U1qt
X9Auelw5dJlqguQpLElnSYQylw3EnmWzNZKzPLaSvMKVUU0ytFVUwlFu0eZATNpMphD1Gk5vxScL
JbZOGZrYWg+4RmZ5+fLLYM7Bgw6ZEagwIzceOykkNttpySki7hEMCcW7qbMmSadNj1SJIM3WmZCt
BbSzy7Ulls0eM+LuDN01VRXBaVVm2ESzI9YlgzNBbTyyM9vFl/EVr43TRwsugAWsioxmD0CVrHD2
EhG0zGa66Hw1JT8ZRF85ixJqpSj03Xt7J7iE5Gf8THpNIinteNx3zLWZiRWKbDNRpKS3mXc0iFpP
rCWo7yoLKpS20GoyT8UiIsz28Qujp8I0kjezeRcWweJ0BUimvwIb5xFOtmhLqEkZoMy48j4xMWRN
2Os2otVOjFIbaW0rWuJcQvLNKs9pbDMhnBAqGaKEhmaTqEmzPOkyC08jlFmRJdJPEayVlnltyM8+
IT0XxaNWrLcph160ZgAAyaAAAALCZ+JnxJGRZKM2j/j3RfizqzZrhLUkjNTZksiIuPIxMbxeAPDT
hOtIdSZGSiI9g9iAAAAAAAAAAAGMqaESKhCjKb08lKcUR8Wjll7BkxjSzdrys1bGGC0SL/Me0Wgl
jJ+Hdpz1tOlS0RXWpBSTdilqnFqIlERGotuXbGew+MiGWpdFg0hDqImvPXq03DefW6alZZZmazMx
fgE11TFplWKKYm8QsV09xheuprpNGfxm1fEV/DuD5p1pHbKairL5KDUR/WYvwEXWY2TVZMKO5MmQ
CZYZSa3FqfTklJcZn5h4p9x0+pssyYumuO/+TfLI21fMoj2iHMU7ECPUZ7F1VF6XS3NbvZ+AhJqS
SjIyJbR8aSI1FsPPYQqwKdMoyKeVIrLci2oryYj7DrKkvJNwsiUeeRpyXlkX+YbxgxNN4lhtZvaY
T51pD7SmnCzSssjFpT3ltqVT5Cs3Gvin8pHcMeEPv0497yG3Hmi2tuITpHl3jFOXLgSCJZPOtPI+
IaU9t82XdGMR1NmVAYuPUpbLZKqMZaUGeROEXc75l3Bkm3G3UEttZKSfEZGImLJegMiMsjIAEDD1
q2m6tpKYqk6mrW2tpxcJwmzWRp0SNR5bTTnmk+4Yw/BW9XG0RXb+daZhnnFcZiJ1zpkRknfClGZO
EWe0iJOfHnmJgAvFcwrNESjFKu6Q1UEW/dcIoFSVsaebzOLK87aj2kf+VW0u+YkqHEOoJxpaVpPi
Uk8yMFIQ4RpWglEZZGRlnmQxabfZhQWKfQ31U1lmUmQpLJEZKQSs1N5HxJVxbOLuBOrV3EXp72WA
RWRcdetxuM7c9PjvsyH0RtdBMy1albCUtKz4lKy4j2ZiVCJpmExVEgjV6trjIp1wsRG5btMlJyjv
Om2ytLiiQalqyMk6J6KiUZHlon3xJRTkNMyI7rEhonGnEGhaFFmSkmW0jITRVq1RKKo1osht91K6
SpDinp9Kep02Y2mIUNqQS1RyXpL1jiFH/wBmR8RERn9QqWdfbFyXFVqHDXHdiU9LZxnGknmaeI9I
zVmZ8XEksu+eYvLNdhMUCNatfgSosuY2RvJeLtHHVpzXoGntU9sSsk/MI/VbaYserNvLnmihyXe3
gtEtybM1ccyLR0TI9ii0lZeYdtVNOJDkiqaJuz9x1yplGmHQnWmkU5Te+pSyJZaSjL8UguLSyMjM
z4iMuMxITTHmsaKjbebUWRmR5kfzCLwrUdqkFhirMNQ6cuOSjprHakh0yI83D/xqTlkZnnnxiQ0a
jU+gwEU2mME0w2ZmSS75nmZ/xMcuJqRERS6KNeZvUp5SqYfakp+Nnxf4my/5kL1h9qS2TrKyUk+8
KgsX4C23DkwF6tzI80H8VfzkMt7VfALWNPQ8s2Hkm0+njQru/N3xdCBcQkkbhmfcIfljjteF6Yy7
tRmyagzGqEOnXOzRKbR6k643BNpDxJMnSRmZJXkZrMiM9p5Z7CH6lMO6pwldziMc4Y4bjVN9YnU/
G/C66Wbau6FJZmOKej62M+80ZGlw0lkZK2ER9wxrRKtUOT9yrel6YX7sKRhzG1UWm1atzaXPpUNx
a4bWipw0m0StuijRySZkR5cY/UKYkiezLulmOdMAdx3Fwuvyp4v4gXK3cd31F56Rrm2NUwwt1Rmt
SEnmekeZl5iHQ7zmtcNfc7gVzBSyFD/Ku/6S/uLWd+sOifQtU+/gi6of5V3/AEl/cWs79YdE+hap
9/BF8P8ASrVvSIAAXQAAAAiDmJtBRiC3hzqpKqg43rNYlBG0R6Br0TPPPPRLvZCXjnuw0rRukrgT
JNTitQ+bZrVpGXbN5Zd7ZmQ8PpjT8bQ8TRsPC/7lcUzM8Ov4y9nonQcLS8PSMTFv/bomqLcbxEfC
HQgAA9x4wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAADwbrafjLSXzmLSRXKLEz31VobOXHrH0p/uYzqxcOj9VUR8
V6cOuvKmJlfAI1MxKsKCRm/dlM2cehISv+xmMO7jhhsgzSzXTkqL/CwwtZ/2HLX0noeH+rFpj4w6
aOj9LxP0YVU/CU9Aa4dxzts9kGh3BKPuGmnqJJ/xMWrmMtXdPKnYd1R0j4lOuIbL6jMcs9P9HRux
In3Xn6OqOg+kJ34cx77R9ZbRHL12WuquVa/n6NDJ6W7PKMhJryI9E0qUZZ7M/YNku4lYkyUKKDZE
FgzI8jkTD2fZIYGwqZcMaLUZNzMNtzJ01ySrVnnnpZbR8107pOj9N1YWjUU1WiZmZmmYiPyzG+Y7
30fQmjY/Q1OJpFdVN5imIiKomZ/NE7ondkq2rTpcK3adDnsJakMR0NrQR55GRZcY2BYTeg7N86W/
/qGC1XmMSWy0aLkv5kf8x3dE6PGBjYdMboy8HH0tjzjYNdU9efilI1/ugyzwJxCL/wDxipn/APyz
g2AIHj4k1YG4hpLjO1qqReiuD7fRP/5GH/8A7R9XzOi5Y9Hvj6rzBw88I7JPv27Tv/2ZsSx2Qwwk
1vvttpLjNSiIi+scMYK3huib6wzpBR8Q4dCo8RlMCHvWClUk2WUkhJmpWz/DlxdwSd/B5+trN29c
QLpr6z+Mh6oLbaV3820ZJHu6R0JTh49cY2LEZzlETM7/AIR4vXx+iaaMaqMXEiM53XmfLxdH3NjR
hVZ5qTcV+0WG4n/s1S0Gs/mSR5n/AAIa6qe7JwzJamLQo1z3U8R5ZU2lL0c/9TmgWXnLMQij4QYe
0HI6baVPQov8a2icVn381ZiUNU1llBNssoQlJZESU5ERBToGgYe/Wq98xHhF/qU6JodG+9Xh9L/V
ip+6PxzrxGi0MH6bRWz+JJrtTNzMvO0yRKL6zEdnVHdJ3OZnXcY2KMwv40WhUptGX+l5zNwhOt6e
YN6eYdNFWj4X/SwqY+F/rdvTVg4f/Tw6Y+F/rdquRg5CrKicvG8LtuZXH/6SrDqk5/Mg0ll5hlKZ
hRYNHUTkC0qahwv+1UwS3PtKzP8AqNgb08wb08w2nTcWY1dbJrOlYkxa+TAtUxhgsmY7bZf5UZCp
vT/L/QZrenmDenmGU40zvZTizO9hd6eYN6eb+gzW9PMG9PMI2ptGF3p5g3p5v6DNb08wb08wbU2j
C70839A3p5v6DNb08wb08wbU2jC70/y/0Denm/oM1vTzBvTzBtTaMLvT/L/QN6eb+gzW9PMG9PMG
1Nowu9PN/QN6eb+gzW9PMG9PMG1Nowu9PMG9PN/QZrenmDenmDam0YXenmDenm/oM1vTzBvTzBtT
aMLvTzf0Den+X+gzW9PMG9PMG1Nowu9PN/QN6f5f6DNb08wb08wbU2jC70839A3p/l/oM1vTzBvT
zBtTaMLvTzf0DenmGa3p5g3p5g2ptGF3p5v6BvT/ACjNb08wb08wbU2jC70839A3p5hmt6eYN6eY
NqbRhd6eYN6f5Rmt6eYN6beINqbRhd6eb+gb0839Bmt6eYN6eYNqbRhd6eb+gb0/y/0Ga3p5g3p5
g2ptGAlwdZEfb0fjNqTxd8hrS33GqhbeC9CS4lbtHYq6XEkos0m26pO37Q3O9T9c0to8yJaTSZl3
MyGorL3M1Jsy6oV0x7sq0pcFbq0MPKLQVp55kf17e+Y79Fx8HZ1Ri1WmM4yvebTH7uvR8XCiiraV
WmM4y35TH7uz7RTo2tSE96EyX/yEMuMZbCdG3KYnvRGi/wDlIZMfC4n65975LE/XPvAABRQAAAAA
cmbufdn1bc3It2w8N7bbuHEC8HNXTYayNSWkmrQSo0ltUpSzIiL58xWqqKbRxWppmrc6zAfnZgbu
8d0daeOFAwO3ZOG8e3pV26JUucy0hnQUtRpbzJClIUk1FomZHmR5Zj9EiMjLMu6NJpmIirqlnFUT
M09b6AAKrAAAAAAAAAAAAAAAAAAAAAAAAKUr81e/dq/sKopSvzV792r+wDE2P+hdA+i4v3SRYL+O
r5zF/Y/6F0D6Li/dJF6dIiGZnkvb5xSumatyaZshK6HOgzHKhbFacpbr6tJ9rVJdjvK+UbZ8R+dJ
kY8yKNW61ot3Vcap0VJko4caOUdhwy4tMiNSlln3DVl3yMTjqPD7y/tB1Hh95f2hTUqWvDApQlCS
QhJElJZERFsIh9Gd6jw+8v7QdR4feX9oRs5NaEbdmwmH0RXpTLbrhZoQpZEpRcWwhZPW1R36qmtO
xlnKSpK8yeWSDUkjJKjQR6JqIjyIzLMhJ5dpUGe60/Np7L7jJkba3EEpSDI89hmWzaKsmgRJLWqJ
6Q12yVaTa8lbDzy+Y+Iw2cmswxmksszLbxCyq1DpNdYajVeA1KaZeQ+hLicyJaT2H/y85GZHsMSC
pWpS6oyhmQb6dU6h5Cm3DSpKknmW0vqMu8Zi66jQ/wDP9oTFFUZwTMTlLANMtMoJtptKEFxJSWRD
xKkRY7Sly3UIbMsjNZ5FkJEdGhmWXb/aGOnWNb9TaWzUmHJKFmRmlxw8th59wIw5vma2WTVc5vCx
6Y3CiUKI7IedJsjjtGgtIzy2mjzn3RKbefqcqktIjU8qdGZM47KH21JcJtHapUSTMzyPLZpZH3yE
3jW3SYTKY8SMlltBZJQgiIiFbqPD7y/tC9UTMWUpym6J9S1O7Zsx57PjSR6KfqLiFyxDjRi/EMpS
eWWeW0/nMSPqPD7y/tB1Hh95f2hTUqX1oYIBneo8PvL+0HUeH3l/aEbOTWhggGd6jw+8v7QdR4fe
X9oNnJrQijNDo8ec7UmKbGRKePScdS2RKUfdMz74vhneo8PvL+0HUeH3l/aEzRVO8iYjcwQDO9R4
feX9oOo8PvL+0I2cmtDBAM71Hh95f2g6jw+8v7QbOTWhgh8UklpNKizIyyMhnuo8PvL+0HUeH3l/
aDZya0IpTFG2TsFZ5qjqyLPupPiF8MwVv08pBySJwlqTon22wyFXqPD7y/rCcOTWhggGd6jw+8v7
QdR4feX9oNnJrQwQDO9R4feX9oOo8PvL+0Gzk1oYIBneo8PvL+0HUeH3l/aDZya0MELCnfjJEyQR
bFO6JH8xZH/USzqPD/z/AGhRi25ToiFIa1mS1ms81Z7T4xOzk1oYgBneo8PvL+0HUeH3l/aEbOTW
hggGd6jw+8v7QdR4feX9oNnJrQwQhtRqEZu8pFpTY0hhm5IWrYkkjNtUhBGZGRlxKIsj290hs/qP
D7y/tDH1Wy6HWdQuY05rYqzcjuoWaVtLMstJJ98aYUTRVeVMT89OSNW5VKhOZeh1mmqg1CCpLbzR
uJWSiNJGlxJlsyVt85GRkMvopzz0S+oX9Ps+mU99+WT8qRIkpQh1593SUpKNLRLvbNJX1i/6jw+8
v7QrXh3q/LuWpqmIzYEyJRZGWZCycpyml6+nO6lZnmpB/EV85dwSvqPD7y/tB1Hh95f1iuzqTrQj
MKWqSS0PN6t5o9Fac8/4l5hcjMJt6npkKkkSyWtJJPtthir1Hh95f2g2cmswQDO9R4feX9oOo8Pv
L+0Gzk1oYIBneo8PvL+0HUeH3l/aDZya0IlcEBVTok2noYYeW+wpCUvqNKNIy2GZkR5ZHt4u4FI0
IMKFSJE9D0tuMnSzXmpZJIiNXfMs+6JW5Q4LramnEqNK0mlRaXGRjAO4XWsclidGRKiyozeqZfZf
US0N6Jp0CM89m3PLvkRi0YeVpVmc7wqAMz1Cia1LuseySg06On2p5mW0y7+z+pip1Hh95f2hXZyt
rQ1ziGxX3qMw5buiUiPKbkKWaCVoJQeZnnpFlxdwlH3Mu6L+rUuHe6Ik+lXCqPUqfHM21R3O0Sbu
rUesSkyUZfiyLLSLYZ55ib9R4feX9YsqVZ1Cos+fUqdFNp6oqQp/I8iM0lkWRcRDfCmaItLGunWm
8NYUHEWTULjj0WrtNU91qM63NaUaSSUpKi+IrM8yIiVszPjL5xMmazTJFUeozExC5kdpDzjRHtSh
RmRH/T+pd8hkriw6ta6X2X6zBN1TJGREStElEZkZkeW0+Ih4o+Gtp0Ke7U6dBUiS6k0axThqUlB6
OaCM9uWaEnl3xWvDoqzhNE1xlLyPJLQazbJaTURZmnPaRDNroURbjbmseTqzPtSVsVmWW0Yvrf0P
q+m5CcllLTpZkT5khRGjRyNPdIiLYR8R7RnGFPW0mvgs5UNmWjRcIyUW1K07FJPzGLdqTIhrKPPU
SkqPJDxd3zH5xLOo8PvL+0PDtCgPINt1ClJVsMjMRs5TrQwvGPqXDSrJKzI/MYzDFBgx2iaQbppT
xaS8zFo7aFMdq7dZ10pLzbWp0UvGSFJzUeRp4j2qz/7pCYw5NZZKUpW1SjP5zHwZ3qPD7y/tD4qi
w1JNObhZllmStpCNnJrQsqE+0qU8ylZGtKCMyLuFmKM79YdE+hap9/BGUptHhUvTOKlWa/jKUrMz
GLnfrDon0LVPv4I1pi0WVmbykQAAsgAAABzfh+09F3SFYZelrkLNMkjWrjMs0nl/DiHSA5zspltz
dEVGel3PTlTWiIj2dqhB/wD1H9Q+R/qaP/3GhTHViw+p/pyf/wBvpsT14UujAAB9c+WAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAfAzLvgPoD5pF3yDST8ovrEXgfQHhbzKC0luoS
XfM8hZv1+iRvzirQ28vlvJL+5ilWLRR+qqIXpw6qv0xdfgMC9ftlR/y11UpJ945aM/7iwexXw6j5
627qfs+S5pf2GFXSGiUfqxaY+MN6NC0nE/Rh1T7olLQEFcxvwxQeii6GnVF3G2XFf/SKC8cLK/8A
Zyqcn91BcP8A5DCemej4/wC9T8Jifo3jojT5/wCzVymPq2CA1ueN9HWeUW1ble8/U9SSP+Jh135z
v5ph3XXe9pEhH9zGc9OaBH+O/uiqfpC1PQ2m1f4Le+Yj6y2QA1orE+83tkXC+cjvG9May/oKS73x
Ve/NbLprP7+Yf/IhT17ok/p1p/8ASr94hf1JpUfq1Y/96f2mW0AGrOr2Msj/ANloMX+K15f0IfFK
xjkF290Udgj7iIBmZfxMxWenKP8ADg1z8I/eqF6ehap/VjUR8Z/aJbUAamXRMSpP5ziC43+4ioT/
AHIxTOybne/PcRK07/pNCP7EKT0zjT+jR6vjMR5reqcKP1Y9Pwiqf2htwzIizMUnJkRr8pJaT86i
Ian62bL22Zc9fePzT1pL+gFhTbKvy5z3/wB7LWrP6zFPWunVbsCI99f/ANV/VmhRvx5n3Uf/AGbN
fuGhRizkVeI2X+Z0iGMk4k2FEPKRdtLQfeOQnMQpnCqyGFaZUFhSu+vNX9xko9k2xG/JUCCWXFmw
k/7kKzp/SVX6aaI5z5LU6D0dT+qqueUea/k40YdR8/8A0+h7L9i2tz/wkYslY6Wcv8yjVaWfc1UF
zb9ZELtqiU1n8jT4zf8ApaSX/IXBQ208TaS+YhScfpOrfXTHup85WjA6OpnKiqffVH7Qwy8adbsg
2Bcz3eUqMlCT/iahQdxVvZ7/ANX4ZSTz4jkTm2/+RiRajLuBqBSfT6v1Y8/CmIXtoER+XBj41VT+
6MnfWLckv+HtKjRM/wBvLU5l9kiFJVZxrlbHJlsQyPussOrMvtGJZqT7w+agxnOjY9X6sevnb9mk
Y+j0/pwaOV/rKFLhYtyz/wCIxIQwk+NEemtF/U9o8Ls255e2o4mXKo+6Ud9LJH/AiE51J94fNSfe
FKujqK/11VT76p816dOmj9FNMe6mPJAl4XUeT/6zqlZn9/fE9w8/qMhWYwtsqPxUNtz96pTn/iMx
ONSfeDUn3hEdF6PG+iJ9+f1TPSWP1VzHuy+iMRrLteJlvW34DWXyI6S/5DIIpcNoiJuI0ki7yCIZ
fUn3h81J94a06Dg0fpoiPhDOrTMWv9Vcz8WPKOlOwkERfMPup8xfUL/Un3g1J94bRgwy23esNT5v
6BqfMMhqT7w+ak+8GyNqsNT5hnrVRoLk7OMk/wDMWOp8wy1vo0FP7OMk/wDMdOh4erjRLm0vE1sG
YZkQfHIjPBa/SJBqM7aqfalxn/wzmwTga/3QNQhUzBG+JM+pFAaXQpjBSDTpaC3GlIRs7pmpSS/i
PpdEi+kYcR2o+ry9Fi+PRHfH1c3bklapuCdLJURxne8iQySllkTpaelpJ83bZfOkxuTeogO5YpS4
+BdtGc8paHmnXUGlORNkbqs0efI9IbZ3n5jH0fSeNE6ZiTHGXuafiROlYkxxlhN6hvUZrefmP6h9
3n5jHDtXJtGE3r84b1Ga3nt4j+ofd5+Yw2ptGE3qG9Rmt5+Y/qH3efmMNqbRhN6hvUZrefmP6h93
n5jDam0YTeob1Ga3ns4j+ofd5+Yw2ptGE3r84b1Ga3n5j+ofd5+Yw2ptGE3qG9Rmt5+Y/qH3efmM
NqbRhN6/OG9Rm95+Y/qDefmMNqbRhN6hvUZrefmP6h93n5jDam0YTeob1Ga3nt4j+ofd5+Yw2ptG
E3qG9fnGa3n5j+ofd5+Yw2ptGE3qG9Rmt5+Y/qDefmP6g2ptGF3qG9Rmt5+Y/qDefmP6g2ptGF3q
G9Rmt5+Y/qDefmP6g2ptGF3qG9Rmt5+Y/qA4fmP6g2ptGF3qG9Rm95+Y/qHzefmP6g2ptGF3qG9f
nGa3n5j+oN57eI/qDam0YXeob1Gb3n5jHzefmP6g2ptGF3qG9fnGa3n5j+oN5+Y/qDam0YXeob1G
b3n5jHzeeziP6g2ptGF3qG9fnGb3n5jHzefmP6g2ptGG3qPm9Rm95+Yx83n5j+oNqbRsOgJ0aHAT
3ozZf/KQyAs6OnRpUNPeYQX9CF4PEr/VLyav1SAACqoAAAD8yd0oZz/hXsHoU78bHZZjqaQvalJk
h5RGX/eIj+ch+mw4E+ES3PmMMzEexN1NgNRnKzcNkLQUumspJTrjaHNNK0p41lkakKSW3I9gzmdT
Gw8Sd0Tn8YmFra+HXRG+Yy5xKB/C6mcHFXAGrQVaFQbqUtKFJ+NkT0Qy8/GZjv7E3EV3Dey4tdZo
5VOoT5kGlQoi39Q25KlPIab1juio20EpealElRkRHkRnkR/m/bNrbqLd+7o+wcQMY8IZNhWXYDhO
uNSor0cnVE4S1khL2TilOGhBZ5aJEnj7/wCoVz2pb940F+27mprc6nSCRrGlmZbUqJSVEZZGlRKS
RkZGRkZEZDa00aPFM79aZ+E2+tpUrrjExb0xupiPjn9EEszGl+8aZSEx7ZQ1XJVbqFEqEFMw1tRV
QJDjEx5DurI3GiU2egZoQatNBGSDMyLaQ5PuemVy16DQ7ktOn1+2bbqFTkQs6PAfdqUGloadXHUp
skLe0pMskOOqUk1aLiSXlomY6Kw0l3JOsGgzLvZU1WXYTapiFJ0VE5l/iLuHllmXfzFerP73FU2r
1fj4zH3/ACkwAAJAAAAAAAAAAAAAAAAAAAABSlfmr37tX9hVFKV+avfu1f2AYmx/0LoH0XF+6SMr
LlxYEV2bOktR47CDW666skoQkuMzM9hEMVY/6F0D6Li/dJGkt05cls4l27eW5vRZ143FU5dFakyU
285GaNnWKUbJGtx9tXxmi0iJJloqLP4xEYdCsvNSGkPsOJcbcSSkLSeZKI+IyMuMh7Gmtz7dNIo9
GouCaLJu+3JtvUBh5tFwalZvMpUTatF1t5zSMlmfHls4tg2pcM2TTaDUahDaN1+NFddbQX+JSUmZ
F/EyETNoummNaYhkQHP2FdnUd+zbLxlql71KDcVYZj1KpyX6itTc1b7WkuFqlq1ZERnopJKSUWrL
zixZ3St7MUOPdtRtmjLpNz21VLitpDLjpPtlDShZMy8zMjNbbqTzRlomkyyPMsorqjDiaqureURN
c5dbo8BzdK3QmK9HjvU2rWtbLtblJoz9PTHefKOhue5oaLpqM1Gps9uaciVlxEPtb3TF3W3RV0ms
0amIupu8JFqKfiwJ0yD+KhJmm/qI6VyDI2lpRolxKzMz0SyEzMRNvvfMeExLOnEprmYid37xE/SY
dIANB0DHbEW/FUejWXaMCHXF0t2rVJiuMSoqFtofUylDKVpQ4g3DSaiUtJ6JKLMjEOLdBYkWTKvO
Ncr1PmS5uIa7doBIp02Y3AYRTGpa0uNxkqdcSSCPLRIu3WozyTxTadaaZ+84j915yt3+Uz9IdWgO
d3MdcQb2oEKkWhbMOBXJdFqFRnlV48uIgmmVG2WoS4lDiTcPak1l2pZZkYzlrX7cFpbmSxb53r1V
dZolFfqqn3FKc3sttopLxHxqWlClKLPjMtobovP3dWJvNo7/AAbsAc2XDjXJavqn3PJiRGqZFpty
vUyT1QdTHkMxSjkTjqEEZK0lmZFkk1FkZJIzMTTAbGOt4oS7qpFfiREyLddiauTFp8yCh9qQ0ay/
EyyJ1JpUhZZmREosjLZtOZpmmmKp67+EzH7E1xFWrP3ldt8BxHVapJq97Uql3DSrrumnuXrdjS6Z
SJqkPLS0mNq+N5otBGkrItLZpbCG0LDuq8cIaW2d1UCbTrRrlxVBNJjVaXrZ1Hib2QqMy8slrI9Z
IbkZFpKNJPNJzPITNOrF57vGmKv3XrjUmI4+cx+zowBx3j9j8TtDtCk1fECh2fV4lbturVmEirtx
3nWH6kxkySVqJZtEwanHTyyyLaeRGOwWnEOtIcbWS0KSRpUR5kZH3cw1fya/fMcojzUvF4juu9gA
CqwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAACOzv1h0T6Fqn38ESIR2d+sOifQtU+/ggJEAAAAAtapPRS6bKqTjTjiIjK3lIbTmpRJ
SZmRF3T2CtVUUUzVVuhNNM1TFMb5XQ5rsOHS6FjITxSSbJyp1Jj8a7xETaTLj75mYl0/dK24i1na
rDhON1Qj0WoMlKiJe3LMlEWRkI7hfZltYoszLyr0Be+VVF5RNpdMkkR5HkeXHxj4TpjT8DpbTNGw
dAmK8SidfO8Ra8ddu59v0ToOP0Vomk42nRNGHVGplaZvMT1X3Z72/uqlM8YxeeT7Q6q0vxlF55Pt
EF6zlhd2hJP53F+0Os5h/wB23mj+davaPo/Sek/ZUfPV/sfP+jdGe1r+SP8AenPValeM4nPJ9o+d
V6T40ic+n2iEdZzDziO2WD/7yvaHWcw67tqxT+c1e0PSelPZUfPV/sT6P0Z7Wv5Kf96bHWqOXHVY
fPp9o8nXqIXHV4fPp9ohpYPYdFxWpE/+b2j6WEOHhcVqw/qP2iPSOlfZ4fz1f7DYdF+0r+Wn/el5
3FQS/wDziHz6faPJ3Lb5cdahc+n2iKFhJh8XFasP6j9o9FhPYBcVrQ/smHpHSvs8P5qv9psOjPaV
/LT/ALkmXdlst/Hr0Ev/ANen2igu+LQR8a46eX/8Qn2jBJwssRPxbXhfYFVOGtko+LbMHmw23Sk/
4aOdX+1Gx6M7VfKn/cyS8RLHR8e6aaX/APEJ9oorxQw+R8a7qYX/APEJ9ot04e2ej4ttweaIVU2N
aieK3YHMJ9gna9KT2P8AUrs+juNf+l5PFnDkv/3vpp/M+kx4PF7Dov8A96IZ/MrMXKbOtpPxaBAL
5mE+wVE2tQE/FosMv/1KfYI1+lJ66OU+aYp6Ojqr5x5McrGPDtP/AO8LR/MkzHhWNGHaf/zpSv8A
Sws/+QzCbdo6fi0qKXzNF7BUTRacn4sBgvmQQX6Un/HR8s/7kx6t7FfzR/tR9WN2Hif/AMzkn/ph
un/9Ipqxzw/LYmXUFH3ipz3REoTTYqfixWy+ZJD2URsuJpJfwEavSk/92j5J/wB6b9GR/wBqv54/
2IkeN9oH+RjVd3/TT3f+ZDweNVGP8jbtfd/0wVF/cTHeyfkF9Q+73LuJINn0lO/Gp+T/AOyZxOju
rBq+f/6oUeM7R/kbGuZz/TDL/moeevBPX+Rw2uU/9bCE/wD1Cb6gvkkGo/yhsdPnfj/6YU2uhRuw
f9U/whPXVuNf5HDOsH/rWhP/ADH3rk3yv8hhfKP/AFzW0ia6j/KGp8wj0XTJ36RVyp8l40nQ4/8A
8ennV5oQd/4nL/I4VoLzrqzZf/SPh3hi27+TsOms5/tKjpf2SJxqPMGp8wj0LSZ36TX/AKf9qfTN
Gjdo9H+v/cgaq9jU7+SoluM/vH3VZfUPG/cdHfjO2oyX+Vt9R/1MT/UeYNT5g9AxJ341c/HyhWdN
wv8ADhUR8J/eZQLVY0u/lLmojH7uEpWX1mPJ0bGB342JcZj93SGlZfWYn+p8wanzCvquJ/ViV/PV
+0rx0jbdh0fJTP1hr/gria7+cYsST7+rprKP+Q8KsG7nvznFKvH+70Ef2IbD1PmDU+YR6oweuap9
9dU/un1pi9UUx7qKY/Zrg8Lqi6f/ABOJV3OF3UlP0S+oiH0sIaSv88r9wSu/rai5t+oyGxtT5g1P
mCehtFn9VN/fMz9UR0rpFOdNVvdaPo10nBSwjVpvU6U8rvuTn1f/AFC6awjsBrit1hX+s1L/ALmJ
3qfMGp8wmnobQqd2FTyhM9L6XVvxaucoc1hpYzG1q1KYRl3d6oM/ryF+xaVuxvzeiQm/9LCS/wCQ
kWp8w+6k+8N6ej8CndRHJhOnY07655sSilQkFkiGyReZsh7KDHL4rKC/7pDJanzBqfMNI0aiN0Qp
Ok1TvljyioLiQX1D7vdJcRf0F/qfMGpPvC2wiOpXbTxWOo/6yHzUF/0Qv9T5g1PmE7FG2WOo/wCs
g1Bd7+gvtT5g1J94NibZY6jzf0DUF/0QvtT5g1PmDYm2WOo839A1Bd7+gvtT5g1PmDYm2WOo839A
1Bf9EL7U+YNT5g2RtljqPN/QNR/1kL/U+YfNSfeDYm2WOoLvf0DUF/0Qv9T5h81PmDYm1WOo839A
1Bf9EL7U+YNSfeDYm2WOo839A1Bf9EL7U+YNSfeDZG1WOoLul/QNR/1kL7U+YNSfeDZG1WOo839A
1H/WQvtT5g1PmDYm2WOoLvf0DUf9ZC+1PmDU+YNibZY6gu9/QNR/1kL7U+YNT5g2RtljqPN/QX9J
b0FO+ci/5j5qfMLmGjQNWzjyGuFh6tcSzxcTWomF0MXc9FpVxW/UKLW6dHnQZcdbb0d9sltuJy4l
JPYYygpSS0o7qe+gy/oO+mqaaomHJTM0zEw1/R7cpVv0yPRqHTY8GDERoMR47ZIbbTnnkSS2FtMz
/iLzenmGZ3oXeDehd4dk401TeZzdc4szN5Yben+UN6eYZnehd4N6F3hG0RtGG3p/lDenmGZ3oXeD
ehd4NobRht6f5Q3p/lGZ3oXeDehd4NobRht6f5f6BvT/ACjM70LvBvQu8G0Now29P8ob0/yjM70L
vBvQu8G0Now29P8AKG9P8ozO9C7wb0LvBtDaMNvT/KG9P8ozO9C7wb0LvBtDaMNvT/KG9P8AKMzv
Qu8G9C7wbQ2jDb0/yhvT/KMzvQu8G9C7wbQ2jDb0/wAob0/yjM70LvBvQu8G0Now29P8ob0/yjM7
0LvBvQu8G0Now29P8ob0/wAozO9C7wb0LvBtDaMNvT/KG9PMMzvQu8G9C7wbQ2jDb0/yhvT/ACjM
70LvBvQu8G0Now29P8ob0/yjM70LvBvQu8G0Now29P8AKG9P8ozO9C7wb0L5IbQ2jDb0/wAob08w
zO9C7wb0LvBtDaMNvT/KG9P8ozO9C7wb0LvBtDaMNvT/AChvT/L/AEGZ3oXeDehd4NobRht6f5Q3
p/lGZ3oXeDehd4NobRht6f5Q3p/lGZ3oXeDehd4NobRht6f5Q3p/lGZ3oXeDehd4NobRmKcWjAjp
7zSS/oLgUoydGO2nvIIv6CqOOd7lneAACEAAAAPnGPoAPhERcREQ+gAD5kWWWRZBxD6AAAAAAAAA
AAAAAAAAAAAAAAAAClK/NXv3av7CqKUr81e/dq/sAxNkfoXQPouL90kQC3NzxRLcxrqGNEe46g9K
nImkUBceOltC5W99YZupbJ5ZFvZOilSzJOkrLjE/sf8AQugfRcX7pIwl4YyYfWLWkW5X6pPXVFx0
yziU2jzak62ypRpS44mK04baVGlRJNeWloqyzyPIMJ1haL17CxqKuzt+ak2zhm0zo6Wr0Py2hrdD
R26vT0NLbkNoKSlaTSoiMjLIyMQ6zMXLDv6pSaNblTmdUIrRPuRKhSpdPf1RnlrEtymm1LTns0kk
ZEewTEzIizMJ7xr6kYC4Y0O4kXJT6POS6zJXMjQXKtLdpsSQvPSeYgrcOMy4ZqUem22k81KPPaed
CDueMJ4EqqymaBLcOrQ5NOW0/VZbzMSLIUSn2YjS3DRDbWokmpLBNkegjP4qcpTQsQrBuirTqBbV
8W/VqnTDNM2FBqbL78UyPRMnW0KNSMjIy7Yi27BIBExeLSXmJQyfg/h9UpzVRm0NTkhhEJtC99PF
kmIvTYLIlZdqrb5+7mKFbwUw7r8WoxplLmsLqlY6vvSoNUlRJTc/UoYN5mQy4l1gzaQSDJtSSNJq
IyyUrOcj6FonL74/VWmmKJvTFp+4+jW1R3PGFVSpFMojlHqUeNSmnI7aodbmxXn2XFaTrcl1p1K5
KFmZmtLylkozMzI8zHqbufcL5qqwsqXU4iq3NjVJ9UGtzYhsS2GiZQ/GNp1O9XDaSSFqZ0DWkiJZ
qE/n1CBSobtRqk1iHFYTpOvvuE22gu+pSjIiL5xXSpKkkpJkZGWZGXEZB1/fv+q153NbztzzhTUK
NSqE5RJ7LFGJ5Md6LWJkeUtDx5vIekNuk6+hw/jpcUol/wCIjEshWRbFPspjDyNTElb8enJpTcNb
i1kUVLerJs1KM1H2pZZmefnzGdHwzIizM8iEzutJGUxMNf1LATCirUOm23PtVK6dSKPIoMJhMp5B
NQn0oS4gjSsjNR6tBks+3IyzIyPaMjYeE1k4bSKlNtaFOTLrKY6ahKnVOTOkS9QlSWlOOyHFrWpK
VaOkZmeilKTPJKSKT0+pU6rRUzqVPjTIylKSl6O6lxBmkzJREpJmWZGRkfnIXAmZndP31/VGrEof
TcI7ApFcYuSn0RTVQjTZ1Qbd308rJ+WSCkK0TUZHpatGzLIsthFmYyV7WLamItCVbV50dqp01bzU
g2HDMi1jSyW2rMjI8yUkj/gM4660w0t55xLbbaTUtajySlJbTMzPiIRe18WcK73qK6RZeJdqV+c2
2bq4tLrMaW8lBGRGo0NrMyIjMizyy2kI3/fDdysmZ4/f3dc3bh9Z98wGaZdFEZmR2JcSags1IUT0
Z5DzJ6STIzJK20HlnkeWRkZGZCQkRJIiIsiIUpcuLAiuzZ0lqPHYQp1151ZIQ2hJZmpSj2ERFtMz
FCm1ujVnX9SKtCnb2UlD29n0O6pSkJcSStEzyM0LQoiPjSpJ8RkF8rfEXoAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACOzv1h0T
6Fqn38ESIR2d+sOifQtU+/ggJEAAAD4ZEZGRlmR9wfQARe+LHp9321OoamWW1yWzJpw2iUba+MjL
MRXAa0ritG3Z1IuCnIjKRNWbKiPNTqDIu2Pb9XmIbSAeXX0Ro1WnUafEWrpiYy64ni9KjpXSKNCr
0CZvRVMVZ9Uxw96nqg1YqAPS1YedrSp6r5g1YqAGrBrSp6r5g1YqAGrBrSp6r5g1YqAGrBrSp6oN
WKgBqwa0qer+YNWKgBqwa0qerDVioAasGtKnqvmDVioAasGtKnqg1YqAGrBrSp6r5g1YqAGrBrSp
6oNUKgBqwa0qeq+YNWKgBqwa0qeqDVioAasGtKnqvmDVioAasGtKnqg1XzCoAasGtKnqg1QqAGrB
rSp6sNX8wqAGrBrSp6oNUKgBqwa0qerDVfMKgBqwa0qerDVioAasGtKnqw1fzCoAasGtKnqw1QqA
GrBrSp6sNV8wqAGrBrSp6sNV8wqAGrBrSp6sNV8wqAGrBrSp6sNUKgBqwa0qerDVfMKgBqwa0qer
DVCoAasGtKnqw1XzCoAasGtKnqw1QqAGrBrSp6r5g1XzCoAasGtKnqw1QqAGrBrSp6oNUKgBqwa0
qerDVioAasGtKnqvmHpCNEzHoBMUxBeZB8UWkk098sh9AShQ3skN7EK4Cbym8qG9i/6MN7EK4BeS
8qG9iDexCuAXkvKhvYv+jDexCuAXkvKhvZP/AEYb2IVwC8l5UN7F/wBGG9iFcAvJeVDexBvYhXAL
yXlQ3sX/AEYb2IVwC8l5UN7F/wBGG9iFcAvJeVDexf8ARhvYhXALyXlQ3sX/AEYb2IVwC8l5UN7F
/wBGG9iFcAvJeVDexBvYhXALyXlQ3sQb2IVwC8l5UN7EG9i/6MVwC8l5UN7EG9iFcAvJeVDexBvY
v+jFcAvJeVDexBvYhXALyXlQ3sQb2IVwC8l5UN7EG9i/6MVwC8l5UN7EG9i/6MVwC8l5UN7EG9i/
6MVwC8l5UN7EG9i/6MVwC8l5fElopJPeH0AEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
ABSlfmr37tX9hVFKV+avfu1f2AYmx/0LoH0XF+6SOLLrp9zx8X8R6lbdg3fc5zbgUUio0W/bmozZ
GhhpKY62YLZsmptJEnSIz2Zd4dp2P+hdA+i4v3SRFq3uf8JrgrU64anbCjn1J3XynWZ0hknXMiLS
NKFknPJJbcu4A5UwziXGvdI2JOuK2rqtd1luWhlNavW4a0UlKkdshCag0SEZ5Fmel3OIdwV7e3US
fv1bqY+9nNappJmskaJ5mki2meXFkIbbuAmFNq1+LdFGtfV1OCSijSHZj7xtaRZHok4syLZ5hsAy
IyyPaIqi8TCYmaZvDkG1a7Kw6ZtCFSlWliHTYVMlFa0yjIdg1iIaIy1kiYwS1pdJRJSha82+3/7P
M9mKpmPeNy7Xrsorilk/JoEarMS6kVFeXTZS5jLWgwxDUajYUh1eyQSnEm0Xbmajy66pVl2fQ6jJ
q9FtakwJ0zM5EmNDbbddzPM9JSSI1Znt2jzDsWyqcc44FpUeN1TUlc3VQm0b5UkzUk3Mi7YyMzMs
+6ZiLZzM55W+vnHJniUzVTajKb7+X882nKpdeJ9rYgsYRO3vLqcyvLgzKPVZFPi69ERpRnP1iW2k
NGfapSRkjYTpHxlmNZQt0BjQ7U6jUXJ0xhMrq+wcCaqjlGpu9EPmwuM02o5q3EqZQThP6SVaa1ES
C0SHYjkCC7MaqDsNlcphKkNPKQRrQlXxiJXGRHkWYxqbLs9NUl1xNrUkqjPbNmVLKG3rn0HkRpWv
LNRHkWwz7hC0RF7zwlNcTVTMU5ff3LUOIJV9e5Lqs+5rnlV6pVChsTn5ciOwyZKd1azQlDKEJJCT
MyTmRqy41KPaIu/i3iDFvZUqPeP5ne8K0mrKKJG0X6e4ywapprNs5Ju5OrfJaXCaJCUpNGZKUfS7
1Np8iAdLkQWHYZoJs462yNvQLiTo8WRZFsFodrWyquIuZVv046u23qUTzjI3wlvIy0Scy0iLIz2Z
90Uop1cWMSrOLbvjE/x8VZomYm05/wDPnf4Oc6bjDcsKyK7iRcWMZIluxKmfBYqXDcXS1svm00pg
iJt3NJaJq3wtaDNRHmlJHnrs77xAviOqlXLiRXo7Vr4lW4TEuYmjKlFHkMNLNt9cRg4poJxRrSaC
0u2IlKPakuyeBFm76qE3gpSN8VVs2p7u8m9OUg9hpcPLNZH3jzHhuwrIapyqQ1aFGRBWbZqjJgtk
0erPNvNOWXantLvdwTaZvfhZfEjW/TxcowsVb5i2UTdOvmLZDNHoVYr8d6NTICWKtLanPpTEW2to
06GTadImdW6o3DPTI9okNcxMxjfqV13fHvyRSINryLa1VvIpkRbD2/IzDklt91xpT5lm4ejoLbUk
9LMzLIk9ITLJs6osxI0+1aTJagOm/FQ7DbUlhwzzNaCMu1PPbmXdF67Q6K/vk36TDc34pC5Gkwk9
cpBESDVs7Y0kREWfFkQtiTrVTVTl9yYl64/Lllb6eXixNbQbdm3AR1dyoZxJh6a9Xm3+LV+LLVpS
WSeLbmffMxzjS6ja0zCLc+R7XlU6TdLD1tqYKEptySyyUdvfhr0c1IRqNaS88syPLujqpqBCYZcj
sxGUNPGpTiEoIkrNXxjMu7n3Rh6Dh9YlrS1T7as2iUqStGrU9CgNMrNGeeiZpSR5ZkWwIm03hFnJ
NVxvvG6a5c9B4T1efblbta6llFnR6Y0w0uK2lKN7ojkcpGWksj3yszPYZEQp2zftUsygXLColdq9
KqFcumjxGXqUzAVIPRtinOKSldQzjN7EHma0qM+JJaRkZdfMWNZcaTImR7To7T8s3DkOohNkt03C
yXpGRZq0iIiPPjIto9TLKs+oRlQ51rUmRHW8iQpp2G2pBuoSlCFmRllpJSlKSPjIkkXcFcOJoieM
xEcqpq+k2azNMze3HxiLfRyVIx8xacw7tG9372kMMM0STUaq3TG6SuY+6zIWWnIjyUpJ5k228jTD
W24atIk8acuyYchEqIzKb0tF5tLidJJpPIyzLMj2l8ww8ywrHqDcNmdZ9FkN05ZuREuwWlFHUZ5m
aCMu1PMs9ndGd4thC97wzmM8vvP7h9AAEJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABHZ36w6J9C1T7+CJEI7O/WHRPoWqffwQEiAAAA
AAABZVOsU+kNpcnvmnTPJCENqcWs/wDKhJGo/wCBDGcOaF+yq3qeX7oWiiqc4hWa6YymUgAR/hzQ
v2VW9Ty/dBw5oX7Krep5fuhOzr4I2lPFIAEf4c0L9lVvU8v3QcOaF+yq3qeX7oNnXwNpTxSABH+H
NC/ZVb1PL90HDmhfsqt6nl+6DZ18DaU8UgAR/hzQv2VW9Ty/dBw5oX7Krep5fug2dfA2lPFIAEf4
c0L9lVvU8v3QuYF10WoyUxGXZDTrh5NpkxHo+meRnknWJTpHkRnkW3IjDZ1R1G0pnrZcAEKqeMNi
0uc9T1yqtNdjrU06qm0OdPaQtJ5KQbkdlaNIjIyMs8yMjIwow6sTKmLpqrpo/VKagIB18bF8Guz+
T6v/APbB18bF8Guz+T6v/wDbC/o+N2Z5M/SMLtJ+AgHXxsXwa7P5Pq//ANsHXxsXwa7P5Pq//wBs
Ho+N2Z5G3wu0n4CAdfGxfBrs/k+r/wD2wdfGxfBrs/k+r/8A2wej43ZnkbfC7SfgIB18bF8Guz+T
6v8A/bB18bF8Guz+T6v/APbB6PjdmeRt8LtJ+AgHXxsXwa7P5Pq//wBsHXxsXwa7P5Pq/wD9sHo+
N2Z5HpGF2k/AR217/te8HHY9FmSCkMJJbkaZCfhvpQZ5ErVPoQvRzIy0sss+6JEM6qaqJtVFmlNU
VRemQAAVWAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFKV+avfu1f2FUUpX5q9+7V
/YBibH/QugfRcX7pIiuJuMcCwJ7NCiU4qlVVxeqEhLklEaPBiG5q0vSHV7EEtztEJIjUtRKyI9FR
lKrH/QugfRcX7pI0vjlZkB7E+mVS4pr8K373iUq33qi1lnTavTp7k2lKVpZp0HXJElo8yyNepSfx
tgbGwzxXiYguSqbJph0yqRGkSdSUhD7UiOszJL7LqNi0aRGk+IyMsjIhMKzVY1CpMyszG31sQWFy
HUsNKdcNKSMzJKE5mo8i2EW0xpTc+2pS2borNftuQ9It+hsO21TpbnHOeOUuTNeLLYaSfWaE5bO1
URcQ3upKVpNKiIyMsjI+6Im9siN+aKs4n2bJYtp+HU1Siu0iVSiYaU4p1GhpmtREWaEpL4xqyIjP
I9olWZd8cvpwzuW3jxdl2hAqqZcc0s24hSVEmPFe0XpbcLPIs1KNwy0T+MZEI7T5FWt2orum0KNf
DGHNKuugyNQ9S6gqXpHFkNT3G4i0b6WwS3ImlkgyNSXFJIyLM6RiRMRMddvGY+l80Xve3VePfb7y
dhZl3wzLvjlrDWhXHeeItEqdzUq6WqMidXKiy3ObkxkEevbVFU4lWWXa5mlKsuMyyzIyKQY32JUL
zxNmrkQq7IptPsCY/CKI4+hjqmUpOrMtWZEp4k56JbTyM9gtrTEReN9vheInwvZlRixXebbpmOU2
dC5kLCj1+jXAy/IotSYmNxZT0J5TK9Im32Vmh1s+8pK0mky7hkON7ki4yTL1oEyqrqzM5yn2+5SH
00KpSnm16LZzEm4y4iMwZq0ycKTlsM8s9hD3QLOuizGazDtShXPCm1m+LmoFRJqHKNtpipyNbEqB
KMtFTaEss/jUGZJJ1WkZHpZKZ1pi3XE88svF0TTEU3njHK0zM+DtTMu+Q8PvtxmHJDyskNJNajyz
yIizMcqTKRf79qdV7riXEqhxa9Do1YhMsSXJTlGiJdQbrbbRG64TjuoWo0EajIj4yzFC1LPuW5JV
nwatSrp4KNSLrkUyPMKS04iATrZ05MkjyWk8iM20O5LJJJIyIyMizxcSaKJmnfn9JmOaKIibTP3u
j6+bqG2LmpF4UKJcdBkKegTkabLikGg1FmZcR7S2kYtL2vm3sP6OmtXE++lpx5uMwzHYU+/IfWeS
Gmm0EalrM+IiLMc9bm6jXHbdLVScXqPWn3Hqe0/TJLUGUTLETfJkUVTSCPQdS5oqMzLNSVaXER5b
Xx7hUiZa1O6u2/cE6BHqkeS5MoGsOfSjbzUiW220RuuaKySRpQRqyUZkR5ZHviRqzFt2X37/AN2W
BVViUXq32/ZnaBizZNwRGpDdRdp7z05NMKHU464kpMpSDWhpTThEolKQlSiIy2kWYmGfnHGdQoVx
3K3b9Sr8C5rmtugX/S5cCtTqFJi1R+Nvd5K1vsJbQ+tDbqmkaxbZHltPtczGKpL+JVRxBrVbh2tc
VNdmR7qiz0IplTS4hxOt3olx95RtPGokIU0qOkkZZJzz0SOtH58TZx9xZpX+TD1t/wDzHm62ufE+
0bQq7dCrUuSma60w8lpmK46ZodkIjoPtSPZrHEkfeLMz2EYksybHgQ358leizHaU84ZFnklJGZnl
8xDjevWJd1Dp9ku29QLj32u3rdXUHktSHHt8KrENconFHmZK0NYa0nlkklZkRZi9pNj3dAdpt1t0
26FViqXxeUSoqd3ysupRu1LeqTbPtUsnkwaDyyPSTontIKbzh6079aY5TER9VtWZiao3Rb/460/S
zrG3a/TLpocK4qK+b0GoMpfjrUg0mpB8R5HtIW6rtoSJdWhqmdvQ2UPz1aJ6DJKSaiI1cWlolpGX
GRGk+6Q0ZuT6Ledtx+pOJEKpOVpdJjPwZiozzUVuDmZJi6Cu1adbUR6RH2ytIld3Ynpuip2velm0
BDfCK4b8mwZb7zLjjMeMZNONrdNsyNKd5EwRZqTnmRcZjo0TBjSMejCmbRVvnhHXyzVqnVme7xbZ
LF6xVWK1iKipuqo8haGmDTHWbzrq1khDSWstM3FLMkknLMzMhWoOKNoV6mVGqb6kUxFISS5zNVjr
hvR0KIzStbbhEZJUSVZHxHkeXENDv0av2w1cdi4hWnIqlGkT4FxR5dpxJDRU7Jzt3WSNS1rdadZQ
4baD0zSszSlWWictwlbn3A/ddNqrlUuS1DjMdT6lcdIXEnPO6b6lRlpebQ66hojb0VrRxrPIz25e
/j9E6NhYVeJTMzETExN7/lm3dbWi+cTMd25hFdWtET9/eU9baVIxHs6u2InEqBWWztxUNc8pyyNC
SYQRmpZ57SIiSZjBLx2sRVMtmq05NZqjV201FXpiKfS35Dq4ikoUTq0ISZoLJ1Hxstqhqi37exFL
AGy7do9nRZkeM3Idq9NqE1cB09BxamG9E2lmadIyUaTIs9FJcRmIXbFHq1EwjwyrNaTf1uXfTMP4
dHpsCjQ33mVvkhk0okmhvNpZm02a0PElCczLSMyMx0YfQeiV4ldMV3/PVTEXi9ova9omeq8za1ir
FqiN3HPqdLzcYrJp90tWjJfnFMUthl51MF1UaK6+Ralp54i0Glr0kkSVGRma0l3SHyHjHZU26HbR
acqSJyDkIZW7T3UMSlsEZuoYcNOi6pOSsySZn2p94aLv+3rhnVddvUefdES4bsm0GZVYTNLNVMU6
y5HW/KKaSTS0SG2VEbZrSalJIiSZKzOa1WrIujHC2pNBpl0Jn0STJjVFmo051unRo2gsjfadUWpU
tzNOiba1KyVkok5KIsK+idFpoiqLzeiqd+6YpiYmfy/pmq8R1Zb7m0qtMzlbx3+LdVGrNOuCmR6x
SZBPxZSNNtZFlmXnI9pH5hejWGAByV2zXXVqNUJy56uqnHnmRxd9L0NH/Lx5eYbPHzMxa3uiecXb
9cwAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAR2
d+sOifQtU+/giRCOzv1h0T6Fqn38EBIgAAAAABgIR669qoTpEre0CITWZfE01O6WXz6CfqIZ7Iu8
MBTv03rf/wADA/8AE+JAL4m+PdH0Uo6/e+ZF3gyLvDCXDLmrlQaJT5Bx3Jylm4+n4zbSSzVo5909
heYRSJUXkRXarQn5yXolNbqjjMmSbqJDZrcJTZ5lsVkyeSi7qiF6cGaovdWrF1Zs2NkXeDIu8PEd
9uTHaktHmh1BLT8xlmQjNRrdyrrlRp1GRTiap0Zp8ykIWanDWSj0SMlESfi8eR8YpThzXMxHUtVX
FMXSnIu8GRd4R6NfVCchQJct16Oc9lt4iNhxSG9PiJbiUmlO35RkMo5W6W1HnS3JaSap2e+laJ/i
8kko+5t2GR7MwnDrjfCYrpndK9yLvBkXeGKdumiMz26aqS6p9zRy1cd1aE6XxdJaUmlGf+YyHw7r
oJVIqUc4yfNzUkrUuao3Pka3R0NLuaOlnnsyDUq4GvTxZbIu8MDfnaWdV5KSInYsRyS0rLahxstN
Ci85KSR/wGfGAv8A/Qev/Rsj7sww/wBce8q/TK2xOqEulYZ3XVID6mZUSiTX2XEnkaFpYWaVF5yM
iMZCz4ESm2rSIUGO2yy1BYShCEkREWgXcIYfF/8AVHef/wCj1Q//AGZYz9u/o/TP/g2f/AQ0nLBj
3z9IZU54vwj92QyLvBkXeH0aviRrkxSqVZqCroqNEoNMqMqkwY9Nd1LshyOtTTzzrhFpZa5C0pQW
RZIIzz0hXDw9e8zNohfEr1LREXmWz8i7wZF3hqvCeHe1u3ZcFAv+82qxMltMzadHQ2rSjw0Gbea1
8SlKVxnkR7BPLyrci27Uq9wRWm3XqdCekoQ5noqUhBqIjy25bBONg7LE1Im+7OO8wa9rTrWszGRd
4Mi7w1LZmJd6uVygU29yt9xi4qKusNOU5DrKoSUJQpWuJxayNJkvIlZp2pMSBrGvD+ZFqL9NqUyQ
5T4TlQJnqXLbXKjo43IxKaI5KCM05qZJZFpp+UWdq9FxaKtW1/dyUwtIw8WmKom1+KdZF3gyLvDX
1u432bW7Gpt8y+qNPYqWihqK5TJapK3TTpGhpomtY9kWZ6SEGWRGeeQvpOMWHkejwK4VbfkRqkp1
MdESnSpMgzaPJ0lMNNqdbNtXar00FoK7VWR7BWdHxqZtNM8Ny0Y2HVF4qhM8i7wZF3hr6l41W1V8
RTw7iQaqp5VPZqDMzqbKJlaXNIyI1G0SUFknPSUoiMz0eMshsIUrw68O2vFr5rUYlFczFM3t/wAo
BiQe9Lqw9nR0pQ+9cKoK3CLtjYcgyVrRn3jUy2Zl/lIT8QDFD9IMOP8A9LE//wCvmifjTF/6dHun
6yph/rr9/wC0IXipilQcK7eVWauo3X3DNEWKg8lvLy4i7xd8+4OPbo3UeLNwTXHoVZRSIxn2jERp
Pal3M1qI1Gf8SLzC93WlxTKtio/SnXVHGpTCGWkdwjMtJR/WYkVs7l+FiBZ1tXfbdZRFOXGaOoRn
VaxK1keTikqT8UzyPtT4j2bB+ndDdG9E9CaBhab0nTerF3TMXiMrxFvd1vwX+pemun/6o6Xx+jOh
appowcrRNpqztM37p6uCOWZurcTrdmtnXJrdcg5kTjT7aUuaPd0VpIjz+fMdjWDflBxFtyPclvv6
bLvarbV8dpZcaFF3DIc8bpXC7DXD7D+JNoVvMRqk8+3EbcSoyM05aSlGX+I+1Is/8wwe4vuKXFvC
qW0bqjizYm+NDuE4gy2/UZ/0HJ0v0f0f0z0VV0toGHs5onduvEb9z0P6b6X6X/prp+j+n+lsba04
kRbO80zMZZz9O+7sVa0tpNa1ElKSzMzPIiIcQ7oHd41Kn1iVamDRRibiqU09WXmyd01keR6lJ9rl
/mUR59wu6N97ry7p9m4BXNPpbymZUxtuntuJ2GknlklZ59ztNMv4j8qYsdcyUzEbUklvuJbSajyI
jUeRZn3CHz/9PdF4Wk01aRjxeIyiH6z0lpdeFMYWHk29F3X26JiTt/pxJmOLzzNt1hlbR+bQNGiX
8CHWu5l3ZsfFGoM2RiFGjU64He1iyWe1YmH8nRM+1X5s8j7mXENa4hYY1LCzcr06LRqfaLkiZHkO
XDOccbdfczUgkFGXlmoyNRkeWWRZDjulVOZRqlFq1PeU1JhvIfaWk8jSpJ5kf9B686FofSuDXs6I
ptMxExvyccY+Nolca1V774ftsIxdN1TafNj23bcJqdXpranWmnVmhphojIlPOqIjMkkZkREW1R7C
75XViVxdy2XQ6+5npz4DD68/lKQRn/XMR/C1fViTdN2vpJb02vS4DKzLtkx4a97E382saeV86zHw
1OHqTVNcfp+r3a69bVpp6xzDCpVjJ+6sRrpkuqIjWzTp6qawhXeRvbQc0f8AUtR98zDghelptnMt
S8KjW0tnmqmVx9LqHEd0kP6OtSvvGpSy75Fxi3xivhm3qKdJptZVCrbkulPNIIjSpyOupR2XdBRl
krtVmlREZmRLLPLSLOZUC46Pc0V6bQ5e+o7EhyKp5KFEhTjZ5L0FGWSyJWZaScyzIyz2GNJqxow4
xKv0zNt2WVvNnFOFNc0Rv96nbFywbpphVGGlbS0OLYkMOFk4w8g8ltqLuGRl/wAxlxAmF9RcaHac
wkm49x0FU9SElsOREfQ244fnNElkv+4QnowxqIpmJp3TF22FVNUTE74yAABk0AAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABCLwuqswm6y9RzQzEoDSFS3
jQSnHXlJJZNIzzIskKQozMj+MQzVBqlTVOl0Ktk0uXEQh5D7SdFL7KsyJWj3DIyMj7mwBnQGkY+L
V2Ha1zJeej9W2ai81SFmyRI1BvutIM08SjQcdwz82QzMLHOlNVCk0SoFEXIkbyjSlnObaf18hCTS
bcc+2WjSUkjURllnxHkIidaL/fEmLTZtUBrEsboZTalBXSIrjsGM/JS1FqrUl1BNOpQaZCWyMmFd
sR8asiI+8MxSMSUVJcFpymx850aZKQ7EqCJTCkxzQXauJLJRK0+8WWXEF8rncmwDWRY1slAdrDtv
GzTo1IhVR99yYSdA5STNtoiNOR5GWRqMyIi25D1SsZ2K801CodIizqu9NchkxGqjbsbtGtYpwn0p
MjLRNOzRzzPLZxiZyuRm2WAgdtX1U14WQr0rcdl2Ytg3H0rfbjNpVpmnNS1HooSWW09v8Ri7exVq
l13VRINKgQOp0k6i1NcYnpkINbBt6KmnEoyWnt/NnpebaiL1asIvldtABprEDFev2rekiAc2LEix
HYCI0F1tJuVND6zS6tCj29psLteLujN3veF+MMU1iiWzVYbsiqusvrisNS17ybaWrWlpGTaNJWhk
SzI+MizPYIibxEpnKbNlAND1HGK4nKnRlW3WmJcCXHgPNm9GQnfRPOmh031ZZRzTlkRZpJR5kWkJ
vfOIlbty3ai4zbymaw7Jdg0VlbyHClmSDVvkyTtS2lJKWoj2kSfOQTNo1p+/u5Gc2hsEBoKoYvX0
3TrZlMTYaHZ9Eh1BxOpSaZD7i0pWTp8TDeRmZKM0kZ7M89gnmLN33LQrfplPszUHctemNxIJOJJa
EESTcdWZHxpJtCvrITP5d6IztDYIDQ14Y33JBotg3HQ1MIjVotZV21sko0pRkl5JZ7UmlWl9QzmE
mJ1w33fN0Q5jrKqJHQ0/SSS0SValTjqNJSi+Nnq8yCM/HwJm0X93i26KUr81e/dq/sKopSvzV792
r+wJYmx/0LoH0XF+6SPd3Wlbt923ULRuymN1Ck1Nk2JMdwzIlpPvGRkaVEeRkojIyMiMjIyHix/0
LoH0XF+6SOer33bDNqYgXBY8Sz7fdKgTt4OSKldyIC3F6JmatUcdZkksuPSP4ye/sDpC37fo9q0S
DblvwGoVNprCI8aO2XattpLIi75/Oe0z2mMgOe7G3WMe7L9odjyKVaKlVxx1pt2iXeVSdaUhBqzU
1vZvtTyyz0v4De1blz6fR5s6lU0qhMjsLcYim9qifcJJmlGnkejmezPI8u8ImYiLyRF8l6GRd4ax
o2O1DuMrXboVNU/JrrD0yoMvSCa6jsMZpfU+ZlxodI28tmZkZ5kRCW0PEbD656fHq1t3zb9WgypZ
09iTBqbL7TsoiMzYQtCjSpwiIz0CPSyLiEk5b0hyH0R2XiLh/T3mI8++bfiuypO8mEPVNlCnZGlo
6lBGrtl5nloltz2ZCOX9jFFsW6itZyhOzHVWrVroJ1L5ILRguxWzZy0T2rOUR6Xc0D2HmEZxMx1I
vERMtiZF3gyIamszGi6arX7col84dRreRd8Bc6jyIdb6oJc0EIcU26RsNG2rQcSZGWkR7S2d2c1n
ESwLcr9PtS4b4oFLrdXMip9NmVJliVMzVolqWlqJbmatnake3YG+InilIAGu7rxxsm272oGHsWsU
up16s1VFMkU+PUmjlQCWw66l51kjNZJMmTIsyLPPj2C2k7oXDVGIEexYN10CclEKpyqrPYrDCm6S
uEthK2ZJEZ6pZ744lmky0DzLvOqKuqcuSbb+5s3Ih9EV662F+nSW+uPa+nXnFM0pPVePnUHEq0VI
YLT/ABqiPYZIzPPYLtjECw5NzzLJjXrQXbip7O+JlIRUWVTY7WilWm4wStYhOSknmZEWSi75Ai7P
ZF3gyLvCOUXErDq5IL1Tt2/bdqkONKTAekQqow+03JUokpZUpCjInDUZESDPMzMiyGKxJxGqNmSq
FQbcthNfr9xyXI8GG5NKGzottKddW49oL0SJCTyIkGZmZFs2mUX3d5dOAGjbq3T7dCobdbpdkLqB
QqHJuKuNO1JMc4MOOtSHyaUaFJfdJSHMkZoI8k5qTpbJ7iBiUmzbYp9ap1Ddqs+tSo0CmQFO7210
h8yJCXHDSrVpLPNR6JmWR7DPYJveLxxt8b2+pMW35df7/RNhDbowbwrveoO1K87AodeedJvSKpQ0
SWyUglElZIcI0kvJRlpEWZlkRnkRZROsY1XdAsideEewqMk7eVMRcjVQuQ4zVOOOnSWpDqYzmuSa
czIzSg9nEM8rFOZScGkYr3lZ8qiyU0tFRk0XfBPPR1LIjSypzRSWkWkklHlsPPjyFqa6sKdembTH
DvI/NMU8Vl2MW5x8g9g/y9E6AdjFucssusRYP8vRegLGj4+lwduap3bZNRgVS1pLUWRTaSpVVOS4
60l1pLC0No0jNKi0jUlCUHmalEkjUJbh/iJCvzCq38VUQVwIleoUaulGccJSmG3mEvaBqIiIzIlZ
Z5dwb+laRa+vNsuuevOETTETaY4+G9gOxi3OPkIsH+XovQDsYdzj5B7B/l6J0Bhyx3uun2A9iFc2
GceDDmuwYlAjxq5vh+oyZklMeM24RsITHJTjjWas15EozyPLI5xYF7T7sbqUCv0BFErlFklGnwm5
hS2k6SEuNrbd0UGtKkrLjQkyUSiyyIjOI0vSJi8Yk85JpiIvMI/2MW5x8hFg/wAvRegLmm7nXAai
zmqpRMHbOpk+OZqYmQqNHYkMqyy0m3EJJSFbdikmRkNiAInSseYtNc85LQs6PSKbQKZHo9IiIjQ4
qCbaaRxJSX9/nMXgAMEgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAjs79YdE+hap9/BEiEdnfrDon0LVPv4ICRAAAAAACP079N63/8AAwP/ABPiQCPM
KRCvScuU4lsqhCjIjmo8icU2p3TSR98iWk8uPLPvDP6aflENMSM490fRnRMRe/Fi67SZE8402nvp
ZnQlmtlSyM0KIyyUhWXcMvq4xH2rVqcxo6aunRaVEejIhSnGpK3XHY6VKVqkZ5aJHrFkaj25K+Yy
mmmn5RBpp+UQmnEqpiyJppmb3EpShBIQkiSksiIu4QisizWqrdNSqNVTJOHIjsNIQ1McbQ7o6Wml
aEKIlltLYojLaYlWmn5RBpp+UQrTXVRe3WtVFNVrtfXZbVxVN6ZBjRJLsXRaTAJibveOyhOWklaE
mRrPZszIy+YVaxR7oTAuKjU+kIkprLRmy+b6UobUbJIUlRGeeeadhkWW0uITzTT8og00/KIbRpFc
REWj7sz2VF5m6GLo9cZrzEilQZEMzNopb5SEKjyG0pIjJTZ5mSi4iNJEfnyFlS7NejzkwqlSKhJb
bnHKRJKrOlGy1mmlRs6eWkR9zRyzIbA00/KINNPyiCdIrnq+psqOL0MBf/6D1/6NkfdmM7pp+UQw
F9ONvWvUKU24k5VSjuQ4zWfbOOLSZERFxnlxn3iIzPYRmMcOPzw0qqjVlYYvfqjvP/8AR6of/syx
n7d/R+mf/Bs/+AhjMRaRNr2HlzUKnN6cuoUeZFYTnlpOLZUlJfWZCpY9dpdbtanSafMbcJuOhl1O
eS2nUJJK21pPahaVEZGkyIyMjIyGtr4OXGfpDKJinFvPCP3SAa6lWnftqVyp1TDmXSpVPrUg5sml
VVTjaWJSiycdZdQSjIlmRKUg0mWlmZGWkZDYWtb/AGifrDWt/LT9Yzw66sO9o3rV6le+d3eidmWh
V6ZU6hdd2VRmfXKmlDKt7tmhiKwjallojMzMszMzUe0z7hcQyF/UiZXrJrtFp7SXJM6nvx2UKMiJ
S1IMiIzPYW0xnNa38tP1hrW/lp+sTViV11a87/JNE0YcWiXP5YB1C2bbaolg0SBSmbnt1VEuONFN
LLbUg45pRMSSciNRKM0rNJZqIyPuDK4e4ZSWpLcit2XX6fU4FJfhtTqndcmpsE46hKFkw04+skpP
LPM0pPIk/wAN161v5afrDWt/LT9Y6atOxq4mKt89ed/r9XPh6PgYU0zTP6fd99TnuThleku2rGVO
terG/Z6JFOkwqdX1QH5LSkJSl9p5h1GzNBHoLUWw+LMhc1bDOpUy36U7ZVgXFTa7rJ0xqczcaXpc
GQ84gzKQuQ4spKHCQlS0K1ic0FkWeRjfetb+Wn6w1rfy0/WHp2Llluvx67zx4z9wej4O+/0ayodu
XvSMS4NxVent1JFQt2LTajNjuIQhiU0a1LWaFGRmlRq2aJbO8Q2ePOtb+Wn6w1rfy0/WObExKsW1
43ed/wB22FTRhXtVv7+6I/ZA8UP0gw4//SxP/wDr5on419frrFZvSxqLTn235lOrSqvKaQrSUzFT
EkNaa8vika3kEWeWe3LPI8tgi2LFsOiJ4T9ZThTequY4/tDi3dgWNPpV7t3i0wpUGrNJQtZFsQ6n
ZkfzlkY8YJboS3MKrYdo0yPW5ynFm6mOSWtS0s+M0qzJW3Lu7PMOv7nteiXhRn6DcEFuXDkJyUhZ
cR9wy7xl3xzPc+4pkHMcetK6kJjKPNLMxrNSfNppPaX8B+g9FdO9GdI9HUdGdLzNOpunqmI3Z9T8
Z/qD+k+nOhuma+m/6eiKtpe8dcTO/Lrid7TWMOMNcxbrTc2c0USBEI0xIiVaRNkfGoz7qjyLaNx7
jCxp6ZtUv2WwpuMbW8opqL8oozI1qLzFkRfxPvC9szcXR401uXetx77ZbMlHFitmhK/MpRnnl82Q
6XpNJp1CpzFJpMNqLEjIJDTTackpIu8Qn+of6k6Po6P9VdEx+WcpnqiP3meuVf6N/orpfF6X9fdP
zauM4id8z1TNt0R1QgO6Mw8l4oYN3HaVNRpT3Y5SIaflPNKJaU/97RNP/eH5GyosmDJdhzGHGH2F
m2424k0qQojyMjI+IyMft4OeMd9xpY+L9QduWlS1W/Xntr0hlslNSFd9xGzM/ORkY+Z6C6Xo0G+F
jfpnO/B+t9IaHVpFq6N8OJcSsRrZuTA7DayaVOdcqturnnUWlNKSlBOm3oZKPYr4p8Q19Ylm1i/7
sptpUKKt+VUX0tESSz0EmfbKPvERZmOo4vwcF7rnauXiBSm4hH+VRFWpZl/p0iIvrHUOBe5nsLAy
KqRSULqFZfTov1KSRawy+Sgi2IT838R7WN01oehYE06PVrTN5+M5uHD0HHx8SJxItHk2XbVFZty3
qbQGMtXT4rUYsuI9BJFn/QRWyNXa91XDZsxRtnUJ71cpuZZJcYeJBvJSfdUl43FGXecSffE9GFua
1addEVtqUt6PIjr1kaXHWaHo6/lIUXF5y4j7o+JoxImaoxJyq+vF7ldE5TTvhAMXbFurEthVu1Kx
LWqtGjymZcR6TWpMWShxtRKJRG2wZoPYaT0VbSMy7omNis3ZCgdTLhtygUaLDbbZhMUmW482ltJZ
aOSmmySRERERFmMUteM1GyZjxbcuJlBElLjzzsF9XnWZJcSZ/MkiDqHiTdSDiXbVKdR6cs83Y9HU
4b7qe6hT6jLJJ93RSk/OOiq9WFGHVVTqx3/tf9mFMRGJNcRN57o+ti3tC6MSqneUU1Lp1KgFQojh
l2rj2uNclSD7qc0soz77ahPRa02mwaPBZptNjIYjR0khttBZERC6HLi1xXVlujKHRh0TRGe+QAAZ
NAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABG6rb9TT
UpdSoi4jiKk0ludDmEeqdNJaKVkoszSejkk9hkZEniy21LVtl2hpdkTZKXpTyUNESNLVstI+K2jS
MzMizPaZ/UJAACDFg/a2+okxTs1TkNE9CM3SyPfbi1rMyyyM0m4skn3CM+MXEXDKmQJ0aXT61Vor
LOoN6Ky8lLclTSNFCnDJOnxEWZJUSVZFmRiYgItlY67oBTMHqTSEMohXJXWyiRHIMM0vtpOKytSV
aKDSgs8jSW1WkZlsMzFZ/CelPNtK6u1ZuYlUg35ja2kOyEvkROoWRI0CIySnalKTLLYZGJyAWIyQ
6JhbbkSkyKMTstbMiBDp5qU4WklEVJk0tJkRZK25mfFmRbB8Xhsw5FYJy6q4qoxpSpTNSN1s30Gp
BoUgk6GqJBpPLRJGWZEfHtEyATOeckZIorDmjcDY9ktS5rUSIpK2HycSp5Ckr00qzURkoyP5RHn3
cxQo+GVNo1UiVhis1R2VGfkyFrdW2euN8kE4SyJBERZoSZaOWRl3tgmQBGU3hFupFq7h/AuKtN1W
pVeprjINpSqbriOItbajUlRpNJmk8z26JkR5FnmPMyw3ZLOgxetyRXd9vSidamEoyS4kyNrRWlSD
bLPtSNJmkyIyMhKwEWysnva3TgPZjBRo8CRUocJpmMy/DaeTqpZMKNTZuZpNWekZmZpNOee0Zuo4
ZWtXI8yNckU62mS888wdSSiQcHWJJJpj6ST1aSyLIi7oloBMXixuza06wVmNwolOgyqjCjMwG6bJ
ajrbSmawhemRO9pxmrMzNOiZ5mM/XsMbSuit06s3DT0VFulRHIsaDKbQ7GTpmkzc0FEea8kkRHnx
dwSwBM57yMmtiwEslLCYbbk5uG27MdZioWhLTJSU6K0IIk9qkuNJdwZiycLbcsGQUihuSjMqdHpu
i6pJlq2TUaVbCLtjNZ5n3RMQD7++Za/398AUpX5q9+7V/YVRTkJNbDiE8akKIvqAYix/0LoH0XF+
6SNP2reCMOLkvul3Hh9eEtdQuiVUYsin0B6Ww7Hcba0VJcQRkfEZZdzIbdsh1rgtTIGsTvinxGok
hvPtm3W0ElRGXGW0v4kZHxGM8A0TUrqLETEewioFhXbBbpFSflzJNSoTsNlts2FJLt1kRGZmZFkN
7AADQFRwHqj7eMR0imQqfKvZ+O/DeSpJb6JCEG42vLalKzQaFeZRmI1Lw0xSlXDKxWh4cpgPtXDQ
JjVsonxyektQoz8d+QbhK1JOKTJSSSNWZojIIzLMiLqQBSMOIiI4W8LeWaIi1++Z8XO+FOEt707E
Gl3pd1tRYaW3a5IUg5Dby4xy3W1tpzL/ABaKTJWWzMuM9hjO4wYZXZd+ISa9RYTbsHre3Fb5rN8k
KKZLkQFsoyzzyNMd3tuIsi75DdYC8WpjVjda3wiIj6Qzpwoppqpif1TM85u1fhTgXalgxaJWnW63
MuCDSWYRvVe4J1U3oZtpJ1DBSXnEskak5HqySRkRFxEQ1jjZhhjPeOJdSdoMF47fecoUmMqK7AYY
kJiv6x5EpS2zlrdSeZtkhxLeRkR8as+ngEat7RwaTGVocwPYQYiKvSiUzgXGVFpN7TbkVdBS2dNU
eRFfbLRRnrNalS0JMjLRySnLMQ+bgDitWLToloLw3p8N+1LDqlorqW/mVFVXnVxNW42WkaibXvdx
Z63JRKV85n2eAtEzFNFPVTN4+Fo/aFr2iYjr87/u5cxmwOxGrt2THrZcrrlIuCkQaUtilSaXGahG
yrabi5Ud11KCM9MjYPSJRbCzyMXCsJMRUYlzCp1tym7ffqNQnS250+HJp0gpEZxtTkZw2ynRX3DW
nTJKtUkzdyIyVmfTYCtv38SZu0HgPaGJllS6mqv0KpqpJMQYMGNU3ac9Ob0FGlRpkR0oNyO2g06O
uzd7U9pmeQl+OloquikUl9jD+Vc8qmTt8MdT62ulToajbWnWMSELbUWelorTppzQpRdt8U9mgJqi
KoiJVpjVme9yCvc7X5bdDpdK4FsXW2uhvswo6aghlFu1p191wpyFLMj0kk6gtc3m6WqMy4xum+bS
rFew0atW5LOevGbTG6e4t1qpFT35clvI3JEZ5CkqZeSpOkk9JG0yyUQ2qAVfmvM9ad8xM9WX08nO
NuYHXPEw6TbT9HVHK6L2j1ytxHqgcl2NAQ8l423HlqNT61Gw0hZmpRq1is8xtHGCi3bdFj1m1rQa
eYmSYWkzJTJJlLiiWnSj6RHpJNadItLLLbxiegIqjW393gRFtzS+EFiXHQ6ddmdmtWdRqqltNJtl
EhpxENaWdF1wiaM2m9YvNWSD2/GPaZjI4VWZclq7nqyMLbgt1EioQbNh0aptb8JDLb7UJDa21OIP
SyNRGnSQR5cY2uAtM3iaeNvC/miKbTEx1X8f+HKlv4BNw6bccak7nin21bztFiwHLYjVZpnqxMak
E5vtDrJ/i320p/FPqUl01kk1KRokotl7nzDSp2Ud03LWaRMpUq6Ki28iDOqa6jMZjsspabORKWtZ
vOq0VKMzWrJJoTn2uzcACIym8FUa2/jcAABIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACOzv1h0T6Fqn38ESIRxSkT79iPxFpdbplLmR5KknmSH
H3YykIM+LS0WVmZcZEaTP4xZhIwAAAAABbT6bT6pHOJUoTEplW023myWk/4GMR1v7F5HUb0Fv2CQ
AJiqY3SiaYnfCP8AW/sXkdRvQW/YHW/sXkdRvQW/YJAAnXq4o1aeCP8AW/sXkdRvQW/YHW/sXkdR
vQW/YJAAa9XE1aeCP9b+xeR1G9Bb9gdb+xeR1G9Bb9gkABr1cTVp4I/1v7F5HUb0Fv2B1v7F5HUb
0Fv2CQAGvVxNWngj/W/sXkdRvQW/YL2mWzblFdU/SKFAhOKLI1x46GzMvnIhkwDWqnrTqxwBEq/h
HhZddQVVrmw5turTVlkqRNpjLzhl51KSZiWgIpqqp/TNkTTFW+EA7H7AvyO2Z6kjdAOx+wL8jtme
pI3QE/AX2uJ2p5o2dHCEA7H7AvyO2Z6kjdAOx+wL8jtmepI3QE/ANridqeZs6OEIB2P2Bfkdsz1J
G6Adj9gX5HbM9SRugJ+AbXE7U8zZ0cIQDsfsC/I7ZnqSN0A7H7AvyO2Z6kjdAT8A2uJ2p5mzo4Qg
HY/YF+R2zPUkboB2P2Bfkesz1JG6An4BtcTtTzNnRwhhbZsu0LMjLhWjbFLosdxWktqBEQwhR98y
QREYzQAKTM1TeVoiKYtAAAISAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAxVTt
S2ay9vmr29TprpFlpvxkOKy+cyFn1vbD5G0X0Fv2CQgAj3W9sPkZRfQW/YHW9sPkZRfQW/YJCACP
db2w+RlF9Bb9gdb2w+RlF9Bb9gkIAI91vbD5GUX0Fv2B1vbD5GUX0Fv2CQgAj3W9sPkZRfQW/YHW
9sPkZRfQW/YJCACPdb2w+RlF9Bb9gdb2w+RlF9Bb9gkIAI91vbD5GUX0Fv2B1vbD5GUX0Fv2CQgA
j3W9sPkZRfQW/YHW9sPkZRfQW/YJCACPdb2w+RlF9Bb9gdb2w+RlF9Bb9gkIAI91vbD5GUX0Fv2B
1vbD5GUX0Fv2CQgAj3W9sPkZRfQW/YHW9sPkZRfQW/YJCACPdb2w+RlF9Bb9gdb2w+RlF9Bb9gkI
AI91vbD5GUX0Fv2B1vbD5GUX0Fv2CQgAj3W9sPkZRfQW/YHW9sPkZRfQW/YJCACPdb2w+RlF9Bb9
gdb2w+RlF9Bb9gkIAI91vbD5GUX0Fv2B1vbD5GUX0Fv2CQgAj3W9sPkZRfQW/YHW9sPkZRfQW/YJ
CACPdb2w+RlF9Bb9gdb2w+RlF9Bb9gkIAI91vbD5GUX0Fv2B1vbD5GUX0Fv2CQgAj3W9sPkZRfQW
/YHW9sPkZRfQW/YJCACPdb2w+RlF9Bb9gdb2w+RlF9Bb9gkIAI91vbD5GUX0Fv2B1vbD5GUX0Fv2
CQgAj3W9sPkZRfQW/YHW9sPkZRfQW/YJCACPdb2w+RlF9Bb9gdb2w+RlF9Bb9gkIAI91vbD5GUX0
Fv2B1vbD5GUX0Fv2CQgAj3W9sPkZRfQW/YHW9sPkZRfQW/YJCACPdb2w+RlF9Bb9gdb2w+RlF9Bb
9gkIAI91vbD5GUX0Fv2B1vbD5GUX0Fv2CQgAj3W9sPkZRfQW/YHW9sPkZRfQW/YJCACPdb2w+RlF
9Bb9gdb2w+RlF9Bb9gkIAI91vbD5GUX0Fv2B1vbD5GUX0Fv2CQgAj3W9sPkZRfQW/YHW9sPkZRfQ
W/YJCACPdb2w+RlF9Bb9gdb2w+RlF9Bb9gkIAI91vbD5GUX0Fv2B1vbD5GUX0Fv2CQgAj3W9sPkZ
RfQW/YHW9sPkZRfQW/YJCACPdb2w+RlF9Bb9gzMGnwKZGTDpsNmKwj4rbLZISXzEWwXAAAAAAKUu
XFgRXp06S1HjR21OvPOrJCG0JLNSlKPYRERGZmewiIVRYV+hUi6KFUbZuCAzOpdXiPQJ0V5Obb8d
1BocbUXdSpKjI/MYDC9dXC/ykWt64j9MOurhf5SLW9cR+mNY9gruRvIHafoZB2Cu5G8gdp+hkA2d
11cL/KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8AKRa3riP0w66u
F/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8pFreuI/TDrq4X+Ui1vXEfpjWPYK7kb
yB2n6GQdgruRvIHafoZANnddXC/ykWt64j9MOurhf5SLW9cR+mNY9gruRvIHafoZB2Cu5G8gdp+h
kA2d11cL/KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8AKRa3riP0
w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8pFreuI/TDrq4X+Ui1vXEfpjWPY
K7kbyB2n6GQdgruRvIHafoZANnddXC/ykWt64j9MOurhf5SLW9cR+mNY9gruRvIHafoZB2Cu5G8g
dp+hkA2d11cL/KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8AKRa3
riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8pFreuI/TDrq4X+Ui1vXEfp
jWPYK7kbyB2n6GQdgruRvIHafoZANnddXC/ykWt64j9MOurhf5SLW9cR+mNY9gruRvIHafoZB2Cu
5G8gdp+hkA2d11cL/KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8A
KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8pFreuI/TDrq4X+Ui1v
XEfpjWPYK7kbyB2n6GQdgruRvIHafoZANnddXC/ykWt64j9MOurhf5SLW9cR+mNY9gruRvIHafoZ
B2Cu5G8gdp+hkA2d11cL/KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XV
wv8AKRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8pFreuI/TDrq4X+
Ui1vXEfpjWPYK7kbyB2n6GQdgruRvIHafoZANnddXC/ykWt64j9MOurhf5SLW9cR+mNY9gruRvIH
afoZB2Cu5G8gdp+hkA2d11cL/KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQD
Z3XVwv8AKRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8pFreuI/TDr
q4X+Ui1vXEfpjWPYK7kbyB2n6GQdgruRvIHafoZANnddXC/ykWt64j9MOurhf5SLW9cR+mNY9gru
RvIHafoZB2Cu5G8gdp+hkA2d11cL/KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n
6GQDZ3XVwv8AKRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8pFreuI
/TDrq4X+Ui1vXEfpjWPYK7kbyB2n6GQdgruRvIHafoZANnddXC/ykWt64j9MOurhf5SLW9cR+mNY
9gruRvIHafoZB2Cu5G8gdp+hkA2d11cL/KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kb
yB2n6GQDZ3XVwv8AKRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8pF
reuI/TDrq4X+Ui1vXEfpjWPYK7kbyB2n6GQdgruRvIHafoZANnddXC/ykWt64j9MOurhf5SLW9cR
+mNY9gruRvIHafoZB2Cu5G8gdp+hkA2d11cL/KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHY
K7kbyB2n6GQDZ3XVwv8AKRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVw
v8pFreuI/TDrq4X+Ui1vXEfpjWPYK7kbyB2n6GQdgruRvIHafoZANnddXC/ykWt64j9MOurhf5SL
W9cR+mNY9gruRvIHafoZB2Cu5G8gdp+hkA2d11cL/KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+
hkHYK7kbyB2n6GQDZ3XVwv8AKRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ
3XVwv8pFreuI/TDrq4X+Ui1vXEfpjWPYK7kbyB2n6GQdgruRvIHafoZANnddXC/ykWt64j9MOurh
f5SLW9cR+mNY9gruRvIHafoZB2Cu5G8gdp+hkA2d11cL/KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8
gdp+hkHYK7kbyB2n6GQDZ3XVwv8AKRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6
GQDZ3XVwv8pFreuI/TDrq4X+Ui1vXEfpjWPYK7kbyB2n6GQdgruRvIHafoZANnddXC/ykWt64j9M
Ourhf5SLW9cR+mNY9gruRvIHafoZB2Cu5G8gdp+hkA2d11cL/KRa3riP0w66uF/lItb1xH6Y1j2C
u5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8AKRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kby
B2n6GQDZ3XVwv8pFreuI/TDrq4X+Ui1vXEfpjWPYK7kbyB2n6GQdgruRvIHafoZANnddXC/ykWt6
4j9MOurhf5SLW9cR+mNY9gruRvIHafoZB2Cu5G8gdp+hkA2d11cL/KRa3riP0w66uF/lItb1xH6Y
1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8AKRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK
7kbyB2n6GQDZ3XVwv8pFreuI/TDrq4X+Ui1vXEfpjWPYK7kbyB2n6GQdgruRvIHafoZANnddXC/y
kWt64j9MOurhf5SLW9cR+mNY9gruRvIHafoZB2Cu5G8gdp+hkA2d11cL/KRa3riP0w66uF/lItb1
xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8AKRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+h
kHYK7kbyB2n6GQDZ3XVwv8pFreuI/TDrq4X+Ui1vXEfpjWPYK7kbyB2n6GQdgruRvIHafoZANndd
XC/ykWt64j9MOurhf5SLW9cR+mNY9gruRvIHafoZB2Cu5G8gdp+hkA2d11cL/KRa3riP0w66uF/l
Itb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8AKRa3riP0w66uF/lItb1xH6Y1j2Cu5G8g
dp+hkHYK7kbyB2n6GQDZ3XVwv8pFreuI/TDrq4X+Ui1vXEfpjWPYK7kbyB2n6GQdgruRvIHafoZA
NnddXC/ykWt64j9MOurhf5SLW9cR+mNY9gruRvIHafoZB2Cu5G8gdp+hkA2d11cL/KRa3riP0w66
uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8AKRa3riP0w66uF/lItb1xH6Y1j2Cu
5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8pFreuI/TDrq4X+Ui1vXEfpjWPYK7kbyB2n6GQdgruRvIHa
foZANnddXC/ykWt64j9MOurhf5SLW9cR+mNY9gruRvIHafoZB2Cu5G8gdp+hkA2d11cL/KRa3riP
0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8AKRa3riP0w66uF/lItb1xH6Y1
j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8pFreuI/TDrq4X+Ui1vXEfpjWPYK7kbyB2n6GQdgruR
vIHafoZANnddXC/ykWt64j9MOurhf5SLW9cR+mNY9gruRvIHafoZB2Cu5G8gdp+hkA2d11cL/KRa
3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8AKRa3riP0w66uF/lItb1x
H6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8pFreuI/TDrq4X+Ui1vXEfpjWPYK7kbyB2n6GQd
gruRvIHafoZANnddXC/ykWt64j9MOurhf5SLW9cR+mNY9gruRvIHafoZB2Cu5G8gdp+hkA2d11cL
/KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8AKRa3riP0w66uF/lI
tb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8pFreuI/TDrq4X+Ui1vXEfpjWPYK7kbyB2n
6GQdgruRvIHafoZANnddXC/ykWt64j9MOurhf5SLW9cR+mNY9gruRvIHafoZB2Cu5G8gdp+hkA2d
11cL/KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8AKRa3riP0w66u
F/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8pFreuI/TDrq4X+Ui1vXEfpjWPYK7kb
yB2n6GQdgruRvIHafoZANnddXC/ykWt64j9MOurhf5SLW9cR+mNY9gruRvIHafoZB2Cu5G8gdp+h
kA2d11cL/KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8AKRa3riP0
w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8pFreuI/TDrq4X+Ui1vXEfpjWPY
K7kbyB2n6GQdgruRvIHafoZANnddXC/ykWt64j9MOurhf5SLW9cR+mNY9gruRvIHafoZB2Cu5G8g
dp+hkA2d11cL/KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8AKRa3
riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8pFreuI/TDrq4X+Ui1vXEfp
jWPYK7kbyB2n6GQdgruRvIHafoZANnddXC/ykWt64j9MOurhf5SLW9cR+mNY9gruRvIHafoZB2Cu
5G8gdp+hkA2d11cL/KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8A
KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8pFreuI/TDrq4X+Ui1v
XEfpjWPYK7kbyB2n6GQdgruRvIHafoZANnddXC/ykWt64j9MOurhf5SLW9cR+mNY9gruRvIHafoZ
B2Cu5G8gdp+hkA2d11cL/KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XV
wv8AKRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8pFreuI/TDrq4X+
Ui1vXEfpjWPYK7kbyB2n6GQdgruRvIHafoZANnddXC/ykWt64j9MOurhf5SLW9cR+mNY9gruRvIH
afoZB2Cu5G8gdp+hkA2d11cL/KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQD
Z3XVwv8AKRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8pFreuI/TDr
q4X+Ui1vXEfpjWPYK7kbyB2n6GQdgruRvIHafoZANnddXC/ykWt64j9MOurhf5SLW9cR+mNY9gru
RvIHafoZB2Cu5G8gdp+hkA2d11cL/KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n
6GQDZ3XVwv8AKRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8pFreuI
/TDrq4X+Ui1vXEfpjWPYK7kbyB2n6GQdgruRvIHafoZANnddXC/ykWt64j9MOurhf5SLW9cR+mNY
9gruRvIHafoZB2Cu5G8gdp+hkA2d11cL/KRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kb
yB2n6GQDZ3XVwv8AKRa3riP0w66uF/lItb1xH6Y1j2Cu5G8gdp+hkHYK7kbyB2n6GQDZ3XVwv8pF
reuI/TDrq4X+Ui1vXEfpjWPYK7kbyB2n6GQdgruRvIHafoZANnddXC/ykWt64j9MOurhf5SLW9cR
+mNY9gruRvIHafoZB2Cu5G8gdp+hkA2d11cL/KRa3riP0xf0W9bNuOUuDb120aqSUNm6pmFPafWl
BGRGo0oUZkWaiLPizMu+NRdgtuRvIHafoZCW4abm3AvB2uv3NhjhlQ7cqkqIqA9KgxyQ4uOpaFqb
M+8am0H86SAbKAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAB8AfQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAeXFGlClF3CHoeHizaURd4ZY0zGHVMb7SmN785LL3Tvwj2LiLqufCewsOqpbVu3BU
KOWvStqS4cZe1JJN3ao0KRt7pmOnMEd17Zt/4AScbMRNTZxW+87AuOPKWejBmNKJCkEfGekZlolx
npEOIty9u+8KdzBb+IOHF5WhetTr0m+q3UYpUunMuR3CcWlDaDWt5KiM1Nnnkg8iMss+IZKoYG4w
z9xdUsQ6hYFWXUbixNj4h1a0WWFqlPUonCSbGpyzNWjoOGnRzyI9g1vEU2p/TanOeqZmI+OUzM+5
WY/Ned95y4xETPwztF+921hzuzMDsTzq0e36lWIs6kU5dWXAqlKehypERKTUp1htwiN1JEn/AA98
gru7QwCtvD+y8TKvc0lmhX7MTBo7pxVaanTPI9YjjbJJ/GM+LMsxz3Gv6yt1rutsK7rwDjzajbtj
0mcd0VdVLfiMMNyEEluCo3UJ01noq7UiMuPIzLMxzg9gPd2Jt9YkbmeoUp1dKwTpN01y3nlZ5PTZ
riHYRZEnZ8U8sj4i2BM2mLxbyiYvPxjOPd1pndNuEc5ibRztzfo9iTuusFsKa5cVv3dV6g3LtWlM
Vmqb3grdQzHec0G+2LYajP8Aw8eQtcPN2dgNihiHEwxtSv1BVaqcNc6mnLprsdie0hJKVqHFkROG
Scz2dxKu8Pz7I7mxS3EeOO6UvGnrarF9zqdT2GjRmaY0FDTWaTyI9Fa8zPuZkY6IxSprMHdO7i4o
EBLCG4VWbVqm9Ekp6mt5JPLubT2ecxNFM3tX2tXnTFXhMornK9PCZ5TbxbdwR3TVQuer42ycUZ1H
pFAwyuRdNjzEoNokREpUek8o1HpK2FtIi+YSLCTdjYHYz3QmzbSrNTjVaQwcmCxVqY7C6oNJzNS4
xuERPERFmZp7hkY4nq+H97Yg4bbreh2TS5lQqDeIjM5VOjoM3KhHaWpTjCS/xGpJcW3PLiMTOp4i
2pupsZdzvTdzzTKk5Mw0nHVrqlqpT8NuhRUNISqC6txCUmp021IJKcyMy2H8YypRN4pvwo8abzPM
qi01W41+ExaPjfwdHVrd47nOg3s/ZE64qqbsWplR5FTapLy6YxM0tE2lyiLQJRK7Uyz4xLMZN1Fh
FgZLotLvSqz36ncCVOQKdSoLk6U40ks1PapsjUTZZfGy/wCY/KjGO7EX7h/fp4n1m95WKFIvdx7g
nHp8hik2/CS+lO/FE2jU5KTkWmtZmZmRlx6R9a31eVv4A7tG08c8YUzI9hXJhk3b1MrbcB2YxFqS
Vtum0omkrWlSkIXlkk89Z3iUZWt+SJvneY/060eORNVsSYiMrX/1W+mbdW5K3TFY3Q924rx3Haa/
QbSr7VPociIwttbsdTalGbukZ5qJScuIstuwaqxn3bmKeGG7Vp2CbFKortgtIpT1Ykrjq33HZlvN
Rzc1mmSSInX2v8PEZit8HPVoVw4i7om4KXQ51Jg1G82pEaNNhqiupbU25kpTSiI0Gr42RkR9ttGs
N0DhrOxJ3ZePNKiQVOvN4L74grNJmSZrUiI9Hy7pnpskeziyCr8mJhTMZasTMf8ApEz8f3TaKoxY
v12jnFmxt0du4sTsN91baeCth0uiP23MqNOpdZlymFuOpkSVaRtoUlZEkybyPaR8Y3ziLuzMCMLr
ydsW569UHKhB1XVR2BTXpUalafxd9vII0s7O2PSPYRGfcH50U+Ldd82RgrjzeMH/ANPX1i81NlLZ
bVoky020w3nnmafiK2ZjLXjQ7aw6xgx4s3HrGHFuyX7srz1Uo9GtWHr2Lsp8olE2hvSaWlbhfk8l
rQgsyTnmSsppp1cOmn/Feq/+nLxRVnVNcfpmItzqiZ8PF+ieKm6rwbwhZoa7jrE6e/ckfflMiUWA
7PkSI2RHrkttEZ6vaXbecUC3XmBCsG2cdUXYtVsSJG8mtGKs5a5ngqWMtM3s/wDARZjjLFupMYdX
phBhXiJdOItnYUostTMeU1Tz6s1SSrIk02S5EStSFmkyRq0ZZGZbSPaINhFa2GVQ3Dtw0/E6j4h0
WkW9i1KmNTKFF1tStlxDTZNyZTTpksm0pUpKz0FqI1Z6OZZlFX6apid273a1uaYnOiJ69/xiZ5dT
9B8P91rg1iTb9zXBQKnU4/BCIufV4FRprsSaxHSg16zUOESjSZJPI+7kK1S3VOEFKwotjGiZVJ5W
xd8qNDpbxQlG4tx9SktkpHGkjNJ7T4hxjubbkxVxBbxjsSgYlTcZbRfsuYiDd0q3XqfIXUXGnEoh
E4+knHTIsthnkWeZEWY1TcmOFoXFuOMFMELfaq8m6rTuqkxrmiqo8lDdJU26+SUuvKQTRKWou0Il
KMyJWZEZGL6sTXTTHXqcpmYqUmZiiZ4a3hETH1s/Q6/t2fgjhziBPwurkqvSbmp7cd1yBTaO9LcU
h74qk6sjzIu6fczIUrm3bm59tO9nLGq1yVA5MR5uLUJ0emvO0+nPrPLUyZKSNDSyzLNJns0i741d
hXSmZHwjuL1QfiEpxm0aUhl1Sfi6Rq0iI/4EOPmLVtS0J+KuC+PmLGNFt3DWrxluxLNteCmQzdEW
U4nUyWNNpSFqWZGR6biSySnLaRkWeHOtNEVRviZ/1TFuWa1XXbqtHOL3/Z+kWJ+69wUwju5ixrtq
1TXWZdL6rxY1PprstUljMiLV6sj0lbc8i7hGYirXwhu5dfptErDF4T3YdadJhTyKW8pFOWburSmY
oiyjmas8iUeZkRmNU2zbDNG+EBw6oy4tQdZpOExx2lVRDZyUGg2klrTRmgnCLYrRPLPPLYNJU624
ED4P/dEOxKUlt5/Eqo8TW3RbkxUoIu8RFxZd8xnOJqU605/qn4U16tuWa1P5qopnK9o5038Jd84u
bqnB7BeVT6bdVVqE2o1OPvxiBRqe7Pk73/bKQ0Rmlv8AzHsFG791zgPZOHlsYq1i8Scta75yKfTK
jFYU8hbyiWeSiLanLVrI8y2GWQ4QxUpjGH26Do9/4r4u4gYZWnc2HlJj0q4rZYU6l2QwwjWxHTS0
6ZGeekREku+ZkQvrwsG17f3OW5+p1qxb5kW/WMXGKpHavSIw1UDaeS6alKaZzSlpaiUtOe0yXnxG
Q2mmYnVv/it/qmPpmpTVrRE2/wAN/wDTf65O07J3ZWCWIKLuRbU+tOTLKgrqVRgSKS8zLXGSRnrG
WlESnSPR2ZFtzLvjW+BvwieGWI+F1zYoXzCn2tDoM5xvVuQnVocZU6bcdtpzLJ59eWZoRtSasu5m
LGLA0PhK6siNFJtD+GqUqNKMkqVrEEWeXGOZcJKhg5U9xNc+CGLcO+G6zYt2Sp9dYtummqo0P/jl
aqYonNFCm0K2L0dNScjM05bRnFV/zR1x9KtWfCLrxGdp4xymm/1y+7P0JwX3T+E+O9RqdFsmdU2K
tSEIdlU2r052DKS0v4rpNukSjQfFpd8Tm6bzp1rahh2PImTpZKUxEjJ0nFpT8ZZ9xKU5lmo9hZkO
F9wlfl/1jHes27QsXpmMeHrdGW89ds+3H4D8GXrEkzCN58icdPV5maS7XZmRF3ewL7kHbF1OXTUq
VImUqfRV0tbzDZrVEeJZqTpEWZpQ4R5GviI0JzyLaW+JTERE09cM6ZmZmJ6mftbEGm3NKKnLhyaf
MWzvhlqQRZPtZ5GttRbFkRmWeXFmQlI07h5MfuuRaTcKmvoathmQc2asj1ZqWnQQw2vLJ3Mj0lGn
Mi0UlnnsLcQzXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAB5cUaG1KLjIsx6HlxOmhSO+WQrXfVmyY35tA7kfHW8scaViFNvCPTmnLXvaqW9CKG0psl
Ro7mig15qPNeXGZZfMIJg9u34beBV0Y1Y/PxqdT6HeMq223KVCWrtCcShk1I0jMz2nmeeXmHP+He
6you4PvbF3CvGfDS8lSazeFSuOhS6bDbdZmx5KzUg9Ja0ESctHtk6eRmojIjTkIbf1r3Ha3wYk2t
3lacukyrlxBZuBNNlNGh84703SbJSdiiNSCLLiPIyEa95iqN0xRHxmqmJ+Nrk02iaZ360z8Iirwv
qv0Gwz3XOCeLd5ysP7Qrs5NaaYXJjNT6e7ETOYTxuxjcItaju6RdwyMQzc9bqt67ML8Q8TcaKnRq
JS7LuufR99NNqabTFZ1ZN6WalGpZmvLZxmZERDUB4j2fuj91zg69gnRqs2nDuJMfuqU9R34PUtCm
yQVPeJ1tOSyUWRkWZZp2GY0s1h/e17bjvExNpUKfWVUHGt2u1KjRWlLeqdPZWjWtJQW1eWklzIiP
PV7CM8haJ33y6v8AVTGtymeUs73mPhP+mqbc4jm78wd3W2DON9Yet60KpU4lVajlMRBrFNdgPSI+
X5VpLpFrEF3TLviORt3vucJV5xrNauOqkcypnSI9WVSXypbsvNRatMoy1Zmakmnj4yGhJ2JVC3UG
6Vw0vjczU6bU4uHlFqEmt1FdMehssrcYyZpyzdQklLUsvipzLYeR5bRyRfN0U2+8L6LWrvuG+a1i
jRr+bcrdIdgSY1Is+IuW4k+1S2mO3rVEySc1GrSzy0dpHeiIrrpics8/mmmJ5Rf4pqmYoqnr+n5b
2n45P1XxX3WWDWDt2xLEuysVByty2SkqjU6nuzDiMGeRPP6sj1SOM9I+4RmI/uJMfbp3R2FFTv26
000n49xz6ZGVAaU22uM0aNWoyUoz0jJW0/6DRcrEK1dzfu0MULjxsjVJum4i0iDwVmsUp+emaaGy
QqE2TKFnrDXxJMiLtizMsxLvgrF63c7VyQUF6Gh69as4hh5s21tpM2zJJpPiMuLLzCMH81EzO+3K
da1vfYxZtNMR2o+Mal+V8vgw1Z3bGKNA3dDmAU+lUU7BZlRIT0wo6ilMuyWjNo1OGvRyNwsvi90W
mIm7mxQpG7ht7AG1KXQ12POrrFuy5r0da5DktLbLkpLayWSUmgpLScjSeR5jUWNdlVmu4/7p+56L
BNdStWiUOvUxxSDURSYjqHdhFt+KlXEI3bdu3DUKtuRMUrihGivYg3/cFzVNxpCjQlyW/FNrMz2p
/FNoyIz7h8Yrov5owYr7r9+ta3/5R8IX0mLTixh8Jt3WiZm3hzl3xcu7Z3Ptp349h9VrnmnKhyUw
ptQYpzrtNhSFbCaflJLVtqzyIyM9hmQymMW6xwcwQrMC3LvqNVmVeowjqTUCjUx2fIREzNJPrQ0R
mls1EZEo9mZGPzTjWlZ9vysS8E8dcUsa6FcNYu+W5Hsi2KemQzcMeQ/psyGNY0ba8yyMzW6ktmzi
Mbi3Q9xJou6IpmFeMt0X3buHzeHTEags0eA4c265pmhC4Uh6IhS1LzzI0JNKUqyPNJLzXEzaiJ69
/he3v6k2jaTT1fzaJ/f93Y9X3XmBNHwro+MK7qdlUGvuExTEQ4q3pcp7utIYSWma091OWzIfLU3X
OCl5YeXViTSKzUG6fZLK369DlwHGJ8FCUmsjXHWRLLSSkzT38h+fWHlv4Zv7iSx52Jj2IVoHbN61
JcG4qBD3w5bMrSIknObM9YlGeiR6KFKzLLYZiY4L1jGHFHBrdHWNBu6Viva6LVNm370dt52myKxP
cZdU7HLXETr5o0tDtjPR0EZZEsiO2L+ScWI/w3t4ffV1K4X54w5nrtfnMeXi7oq26Vwqolv2Hc8+
pTUwMR5UeHQVJiKNTrrxEaCWX+AtvGYjNwbtbA63cSaxhI/KuCbdFDmxoUyDAoz0k0KfQSkrzQRl
qyI0kpR5ERqIu6OF6njpZeI9n7lHD6zCq0yoWpdFLjV83KRJZap8ls0p1KnVoJBrPaeSTVs7w6K3
ONDKbu2N1lLTGJMtR0ONGfUn4pLiLMyI/nSgz+YhaqNWapiLxE1274pim3O8qUTMxEVZTMU/CZmY
nlZt+Zu2tz5Cv/revXPN3ymammuVNNOdVS25ZnkTCpZFqyXpdrlnxnkPGIm7cwFwwva4cOrmqlZX
cFsx48qbDg0l6Us2nkIWlaNWR6REl1BqPYREY/OO1rKsuNQK3uf8aMU8c6feUm7JDScPragNvN1D
Tf1jMxk3WtVonkSzUp4siLPiI8uo7DobSd3XujESojkg2MP6RHQ7JbI1mXU+OSszLZmeiWeWzMhS
cqYnumffaLrx/iv1W8aop+k3bupe713NFards0WmXlKfK7HGo8CcmnPbyTIc2IYdfMtBDpnkWgZ5
5mQkWL26zwZwUuFi07wqtSkVh2OUt6HSaa7OciRzPInnyaI9Ug9uRq7w4CVQY1O+DvwbXCpuqecx
Kpshw0t5K0jluZq75cRDMY90qmYbbsTE+4cZsYMScNrevqi06Rb1StaObzVYSzGbZegrMmnPxiVk
eST0SLSzUZEpOc1cKf8AnKJiPGy006szE9/hVa/7u5753WuBWHtIs24biu//ANFX44puiTozC32X
zIiPaaSMyz0iItnGeQwtt7tbBa87Nve7bXerj7tgxd9ValSKU8xPQg0aSDJhRaZkrv5DlCr2Db9t
HuO7eosC7nKId1zZkdm7orLdQbbWhLiNc21mhO3IyLj4hsmmUeRL3eG6EgU+EZrnYbQUIShGROuq
ZbIuLjPuCtc21ojjVEf+sXjmpTM2pmeFMz8atWfNMMIfhC8LrxwWdxcvyNUre1dQTAKEVPecVJed
WZMtRdn/ABKzSWZ6HEeY3Fgruj8LseyqzNh1CeifQ3EIqFNqcFyFMYJaSUhamXCJRIUR7Fd3Ifnn
ZVcwKujcR2jZmJE2/KZUsNbla6qVS2aYpUm1puvVqpMgnCLNnPjU2lwyMiLIlGRHuj4Pi+sSbhxO
vCiKxNdxasOLTGXW76k269TXnKka06UPTfLWu6DZ55GZknZllmWe1FMVTMd0THKEV3oj4zHjMOz7
rvumWq4mIuNInTVMqkHHjpIzbZTnpOuGexCCyPaY+2vfNOuWQ5TziSafPbaTI3tJSRG4yridbMti
0bS2lxCHX9IK2KzcM+sUmRKptxUlERiU0g1JaeSlSTZcUX5NKiVpEs8k56RGZHln5w9mSrtqNr1J
invts25RziTpriTSl+SpCEG00oy/GpLRNZrT2ueiRGZ55ZrNrgAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0XudMarsxVvfFu3rkYgNxrH
ufqPTTjNKQpTGrJWbhmo9JWfdLISTGvdH4X4BJo7d/VCeqdXnXG6dTqZBcmzJJNp0nFpZbI1GlJZ
Zn3MyHC9hbuDCfcpY6Y7W5iPbt4zZNavJcyMujU5l9sm0tkk9I3HmzI8+8RjJboHdPUnFS+MGbyn
1+9MPsE7optSfersKmmmpOT21OtHBdWxrltoWlCC0UbVE5n/AITNGOFNVeDh1R1xF/fq3/ZMRq11
xV1TNvde0fVv3Fvd/wCGVpbneZjnh/FnXF/xiqUxDciOsqjzUnkaJRGWbOXHt49hCXvbs7B2j4X2
xiTccmsxeFROIp1JTSH1VOS40rReNuKRaw0JMjPSyy0cjH58WzbLsjcM7o2g2zbtajN068ymMUyo
MO9UI8PWEpButrzcJWr0VGatvGZmJ7ugrjti9MRMDt0hAxQvG2sKDtiVbj932zCeS/R6i2txKycQ
tlS0JcUZN5k2eloHlmWQ23TVE8aLd0TTMz45fedaZ1qb8Nb42qtHhm7bmbr/AALhYPO45OXLIVa0
aWmBKWmGvfEWSatE2nWTyUhRHxkfEKeG27GwMxWxFPC2067UOrrkRc6GibTnYrU+OnjcjrcIidTk
RmRlsMkmfcHCN+2lY6NxNiDdGH1dxIuSkXZelPkLqd5RGWVVNaHdBciMlsiWppfylpSZmXFsMb9x
fpLcbdv7l9umQkRy4OV9jSab0SSkoREhJmXcI1HkXnMXppia7Tuvb3fkir65K1zq05b4i/8Aqt9G
37l3c+5ztO+12DV7rmFJYmop0qotU91ymxZSuJl2URatC89hkZ7BO7Ox7w3vm5r3tCh1N8qph662
3XGpDBtapLiFLbcQZ/HQpKDMlFsyy744Pwgxkw73PNmXXgJjRhfWLlxEexBfqEK2eo7jrlXaflEt
mWw6aFNLJKc1FpKLMyy2bTLM7uqdeWBmMcPEzDeiyUqxwtF6wpkdBEk2KoRpOI+oizI3CQs0fM2r
aM85ppinfVEW98xExHwnKWk2iqq+Vr8onPwzdzYSYu2bjdZjd+2DIlSKNIfejsPyI5s6021aKlJI
+NOfEfdHJODu7gxSuzdp3ZgPeFMojdmU2uz7fp0yPGUiQUtBPOR0OLNZkZqbjPcSSzMiHV2BWGkL
B7B+1MNYKGyTQqWzGdNsu1W9o5uqL51mo/4j8wLioNw0N7dV40WrTjXX7AxYplepy1oUoj1EiWlw
siMj0SbkLMzLuC9U0UYs9mI/emL/AAiZlFF8TA/8pmLcpm3g6Rs7dw4oXfu41YDx6XQ27AckT48W
ZqFnKeOK2emonNPRy1hGXxe4N5Urdubnqs383h/Buiap5+d1Nj1VVOdKlSJfFqW5eWrUvSzTkR/G
Iy7g4fsjDOv0/GjABrRUzXrsw+r8+S+klEgps0nnCVpHtI83E90QfCC0rAqFm2xgHidiljuxf9Nu
Q2JGGlGgNLYiSG5Knm5STeaS0TOiaXFLN7SLSUZEacjNhU2poor3xeJ75vETyzY1VVTiV1Rum0x7
rT9bRd+j+L+7LwQwTud6z7uqFalVWJEKdNZpFJem7yYPPJb5tkZNkZEZ7e4QyF97rPBHD+0LavWp
3JIqEK8WyeoTNJhOTJU9vIlKW2ygjWaUkZaR5bMxwzunbrcrmNuL+HOMlYviC2m3UsWNbVvQHzRc
7mpUaHXlxkGpw0LLSMlKSkkpUR58QxrtMwwXuSdzleN63pfmH9ZodOqUejX1QIBzINIkKfcSpial
szdLSUhJESEZmaTLSTtGcT/biq/XHKb5e/J0VxbE1I4Tzi3hN3d6N2Fga5g1VcdUV+Yds0J5Mapp
OEtMyG8pxKCbdYPJaVZrTsPuHmJRcePGHdq3XY1l1edKRVMRNYdCQiMpSXdBKFK01f4NjieMfngu
XjLiruDccqTMlyb5pdNmRXaBdBUNdPkV+Iy604/INtZaxzRJKz01Znkk9uwSqr492Bjrul9ys5ho
/U6lAoW+o8+a7SpEZhqWbEfTjEt1CSW4gkkaiRmkiWjtjzGmreuKY7vpM/WGVVU04dVfC/O8RHhL
rC392rgddV/Lw2t+ZXp1bYqrtHkpZo7ymYrzZZqU86RaDaMiPtlHlsMLc3bW57um+2LBpF0TFPzZ
h0+DU3Kc8imTZJbNUzKMtW4rMlFkR8aT7w0NuRrLn1+x907TKA1vauV66K1BiyFZpMnVRzQ0ZH3C
JSiPMhzRgXa2HdatzD3BK+8VseSxAoteS1Iw6ptOaOPSJTD63CkGbzSW0MaOSzUTpqIlmeWW0UwJ
15pirrppmf8A2jPl+/Uvi/lmrV6pqjl5/t1u/b03fG51sOt3NblcrFccqNoS96VdiHRn5Bxz0TUb
hmgjImyyyNZmRZjMW7u1Nz3dd+UbD6gXe/KmXClJ0ucUF1MCY4ac9U3IMiQpwuI0ltI9hjlu3KLH
e7Ol2TT0uuuMz2icW1mpaSp7hkRH3du3Z3RgalRY9LwK3DaKdA1J8IKU+5oIyMluRVrcM/nUozPz
mGDOtqRV16vjf6WTjRNMVTT1X8IifG9nYmJO7MwHwqvF2x7or9Qcnw9WdSdp9NelRqWSz2HKdbI0
skRdselxFtF7iVutsEMKKvbNGu25HydvGA5UaKuHEXJbmMoSlXaG2R5molp0SItuY/PS/qJbWH2N
OOlqY8YtYt2Pwwqi5tIpVqwt8M3bCkI1ZNN5tLSt0zzb0VqQnaRZ555bnKxafa26Y3I1psU+uqp9
Gs6qIjN3Cw0U9hCWmjaRIS1m2l1BZJMknsNInDjXiiJ3zbxiZ8EYsxRrW6r/AFj6t8Vnd2YPngRd
+N9noq9YYtJa4kqmLgOMS2pej2iHm1FpNIM8s1mWRFmYsLI3euFE/A62sWL3Kr0yZXFNQupTNJfc
kyJpsoccTFay0n2k6exxOwyIc+M23Va2nd40Cg0p6RJlokFFistGannN6unooSRdso8siIuM8hHq
1d+5+xE3KOBlwVS9L9tedYcSLR03lbtIcdZtyrtw2krbmJMtYaDPLJTSFEoyyJRGIpm9Gvx1cuF7
39+cLVU2qmjhM5/CJj6v0Cwax2w5x4oUuvYe1SQ+mnyVQ50WXGXGlRHiLPQdaWRKQeRkZZ9wZe6s
QqZbErqeUSTPmIaJ95qORZMNGeRLcUexBGeZFnx5Dlv4Oi9cSbrj33FuC7FX1aVPmsN0G9naGumO
1pZpVr80uFrHNAySWmszPMzLPZkW68QZKrYlXc1VKS+6zcrEddPmoI9WTraNE2XV8TWRkS0mrIj0
lFnnsPSumKZi3XETzZUTM3ieqWxLXvGn3OciM3HkQp0TRORDkp0XEJV8VZdxSTyPJRbDyMZ8a5sS
W9ddzN3ZGp78anw6M3TDfebNtUt/TJSzSRkRqbRlkS+IzWrLMtp7GFFwAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFudPgKMzOEwZntP8A
Fl7BXyLLRyLLiyH0A7hTajx2M9Qw23nx6CSLP6h9JlklqcJpBKXsUoklmfz98ewAUt6xia1G929X
8jQLR+oejZZUpKjaQakfFM0lmn5u8PYAPCGWmzUbbSEms81ZFln848tRo7Bmplhts1cZpSRZiqAC
kcSKZqUcZozX8Y9Au2+fvj65HjupJDrDa0p2kSkkZEKgBbqHhDLTZqU20hJq2maUkWfzhqWdYbuq
RpqLRNWiWZl3sx7ABS3rG0Uo3u3ooPNJaBZEffIHIsV5ZOOx2lqLiUpBGZCqACm4ww8aTdZQs07U
6SSPL5g3vH0VI1Deis81Folko/P3xUALCm0wwwRkyyhsj4ySkiz+oeChQyIyKIz2x5n2hbT74rgA
8E00lw3UtpJaiyNRFtP+I8qixluE8uO2pwuJRpIzL+IqgA8alrWa7VI1hFlpZbcvnHne0YkKb3u3
oKPNSdEsjPvmQqgFhScixnUpS7HbWlOwiUgjIvmH1TDC0pSplBkj4pGku1+YVAAs8alrWa3VI08s
tLLbl848FEikazKM1m58ftC7b5++KwBYU2o7DGZMMttkfHoJIs/qHsyIyyMiMu8PoAPiUpSWSUkR
eYh9AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAABSdiRX1ab0ZpxWWWakEZ/1Gp91BufIW6VwscwxmXE7QmV1CJP30zHJ1RGw4SyTomZFkeWXGNu
gItF4nhMT8Ym8F1CPEYjJLVtIJWWSlEkiNXziohllsjS20hJKPMySkizMewE70RERuU2o8djPUMN
t58egkiz+oed5xO2/wCFa7c81doXbH5++KwAlTcjR3TSp1htZo+KakkeXzD62y0yRpZaQgjPMySW
W0ewAU97sZqVqW81lko9Eu2Lz98fN7R8kFqG8m/idqXa/N3hVABSVFjLcJ5Uds3C4lGgs/rH1bDD
q0uOMtrUj4pqSRmXzCoAWFLe0fQNve7ego8zToFkZ9/IfW2GWUmhllCEnxklJEQqAAophQ07ExWS
yPS2ILj749pZaQtTiGkJUv4yiLIz+cewAUjjRjc1xx2zcL/HoFpfWPuoYJanSZRprLJStEszLzio
AClvWNqya3u3oJPMk6JZEfzA7FjP5a+O25o8Wkkjy+sVQAeFMsqNJqaQZo+Lmku1+bvATLJOG6TS
CWosjVolmZfOPYAKJQ4hEpJRWSJfxi0CyV8/fHtphlgjSyyhsjPMySkiL+g9gA+GlKiyURGXeMCS
lJZJIiLvEPoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAKCoMJajUuGwpR7TM2yMzH04cQ0JbOK0aEHmlJoLIvmIVgC3UKe94/blqG+3+
N2pdt8/fHzekU2tScZrVkeehoFo5/MKoCLQKRxo5tEybDerLiRolkX8B6Nlk1pcNpBqR8VRpLMvm
HsBIpKixluE8qO2bhbSWaCz+saLvTcvysR8e7fxcvnEqo1O3rRlFUaDaRxG0RYk7VIRrzcLt3D0k
msiVnkajIjIsyPfIBGUxVHUb4mni+EREWRCnvWMRLLe7eTm1ZaJdt8/fFUAFPe7Gklepb0kFkk9E
s0l3i7w+b1jE7ryjt6zPPT0S0vrFUAFNUeOtwnVsNqWWwlGkjMv4j4cWKbZMnGa1ZbSRoFkX8BVA
RaB4Swyhs2ktIJB7NEkll9Q8IhxG9HVxWk6J5pyQRZH3yFYBJ3PCGWms9W0lGkeZ6JZZmPJRYyXd
cmO0Th/4yQWl9YqgAp73YLTyZb/GfH7Uu2+fvhvdg0oSbDeTfxC0S7X5u8KgAKTkWM8olux21qLi
NSCMyHpTTSlpcU2k1p4lGW0v4j2ACmlhlKlKSygjX8YySWavn7487ziE2bRRWSQZ5mnQLLP5hWAL
Dw0y0ynQZbShPeSWRD0pKVFkpJGXnIfQAfCIiLIiIi8w+gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAoy5UeDFemynCbYjtqdcWfElCSzM
z+YiFYR3EbZh7dBl4mm/cLAeinXhMQmTBplOZZcLSQiU6snSLuaRJIyI8u53A1t+eB0PnneiJAAC
P62/PBKHzzvRDW354HQ+ed6I+t35aD16OYeM16K5cbMDqm7T0KNTrUXTJBOLy2JI1HkWZkZ7ci2G
MJDxuw0qF4psWJX3V1RyQ5DaWdPkphvSW0mpyO3LNso7jyUpUZtJcNZaC9nankJ/LvZrW354HQ+e
d6Ia2/PA6HzzvRGEPG7DQrx4C8IHTqm+t4mooEk4ZStHS3ucvV73J7IyPVazT2ls2iQ21eFu3e1P
et6oFLRS579MlmTa0auSyrRcR2xFnkossyzI+4ZiLk5KOtvzwOh8870Q1t+eB0PnneiIZJ3TWEES
dUIT1VrmhSZrlPnTU2xVFQYz6FaK0rllHNhJJM9qjXol3TGz2H2ZLLcmO6l1p1JLQtB5pUkyzIyP
ukJjONaNyL52YPW354HQ+ed6Ia2/PA6HzzvRFeXd9vQbng2bKqBIrFSjuyosbVrPWNNmRLVpEWiW
WkWwzI9uwZkIzi8F87I/rb88DofPO9ENbfngdD553oiQACUf1t+eB0PnneiGtvzwOh8870Rdxrno
cu4plpx5xLqsCO3KkR9WotBpwzJCtIy0TzNJ7CPPYMqEZiP62/PA6HzzvRDW354HQ+ed6IkAws28
rcp110yx5lRJutVmJKnQourWeuYjKaS8rSItEtE32thmRnpbCPI8lxR1t+eCUPnneiGtvzwOh887
0ReyLkocWvRbYfqTKKrNZckMRc+3W0gyJS8u4RGoizPvjJhGcXL52R/W354HQ+ed6Ia2/PBKHzzv
RGckSGIkd2XKeQ0yyhTjji1ESUJIszMzPiIiFpQq5Srlo0G4aHMTLp9Sjtyor6SMkutLSSkqLMiP
IyMj2gMdrb88DofPO9ENbfngdD553ojOm60STUbiSJJ5GZnxGPK5MdtxDLj7aXHPiINREavmLuh3
DCa2/PA6HzzvRDW354HQ+ed6IzpvMp0zU6gtWWa8z+KXn7w8uSozJoS7IbQbh5IJSiLSPvF3wGE1
t+eCUPnneiGtvzwOh8870RnkrQrMkqI8jyPI+Ix9AYDW354HQ+ed6Ia2/PA6HzzvREgABH9bfngd
D553ohrb88DofPO9ESAAEf1t+eB0PnneiGtvzwOh8870RIAAR/W354HQ+ed6Ia2/PA6HzzvREgAB
H9bfngdD553ohrb88DofPO9ESAAEf1t+eB0PnneiGtvzwOh8870RIAAR/W354HQ+ed6Ia2/PA6Hz
zvREgABH9bfngdD553ohrb88DofPO9ESAAEf1t+eB0PnneiGtvzwOh8870RIAAR/W354HQ+ed6Ia
2/PA6HzzvREgABH9bfngdD553ohrb88DofPO9ESAAEf1t+eB0PnneiGtvzwOh8870RIAAR/W354H
Q+ed6Ia2/PA6HzzvREgABH9bfngdD553ohrb88DofPO9ESAAEf1t+eB0PnneiGtvzwOh8870RIAA
R/W354HQ+ed6Ia2/PA6HzzvREgABH9bfngdD553ohrb88DofPO9ESAAEf1t+eB0PnneiGtvzwOh8
870RIAAR/W354HQ+ed6Ia2/PA6HzzvREgABH9bfngdD553ohrb88DofPO9ESAAEf1t+eB0PnneiG
tvzwOh8870RIAAR/W354HQ+ed6Ia2/PA6HzzvREgABH9bfngdD553oi+pVUeluvwJ0dLE2KSVOIS
rNKkKz0VpPvHkf8AEjGSEfjfp9UfoeF99JASAUZcpiDEemynCbZjtqdcWfElKSzM/qIVhH8Qv0Cu
X6ImfcrACm3jLSmTBplOZZcLSQiU6snCLuaRJLIjy7ncDW354JQ+ed6IkAAI/rb88EofPO9ENbfn
gdD553oiod72pwvTYRVyMq4FQ1VDeCVGbqY5KJJuKItiSzMi25Z9wR9OOGGa7xRYqa+71UcmnTUO
dT5O8lzCQajjFM1e9zfIkq/FE5p5pMssyMhEfm3E5b2c1t+eB0PnneiGtvzwOh8870RhahjdhpS7
uKyJtfdTU98Nw1qTT5K4jUhws0MOSktmw26ZZGTa3CUeZbNpCQWzeVuXgipLt6olLKkVB+lzDJta
NVKZVouN9sRZ5H3SzI+4Zieq5OW9R1t+eB0PnneiGtvzwSh8870RDJ26awgp02pQ5VVrpIo0tUGo
TUWvVHIMV5JkSyclpjmwkk5lpKNeiRbTMiGz48hiWw3JjOodadSS21oPNKkmWZGR90shEZxrRuO5
g9bfngdD553ohrb88DofPO9ESAeHnm47Lkh5Wi22k1qPLPIiLMzEjBa2/PA6HzzvRDW354HQ+ed6
IvrduGj3ZRIdx0CYUqnVBono7xIUjTQfdyURGXF3SGSAR/W354HQ+ed6Ia2/PA6HzzvREgGFtS8r
cvenSKtbFRKbEizpdOdcJtaNGRGeWy+jJZEfauNrTnxHlmRmW0BR1t+eB0PnneiGtvzwSh8870Re
0K5KHczEiTQakzNZiyXIbq2jzSl5s8loz7pkew8hkwRe6P62/PA6HzzvRDW354HQ+ed6IvatclDo
cymU+q1FqPJrEk4kFpRnpPukhSzSki7yUqPPi2DIqUlCTUtRJSXGZnsBLA62/PA6HzzvRDW354HQ
+ed6IzaZUZTyoyZDZupLNSCUWkRech8XMiIWhtcppKnDNKEmsiNRkeRkXfCMxhdbfnglD553ohrb
88DofPO9EZ5KkKz0FEeR5HkfEY9AI/rb88DofPO9ENbfngdD553oiQAAj+tvzwOh8870Q1t+eB0P
nneiJAACP62/PA6HzzvRDW354HQ+ed6IkAAI/rb88DofPO9ENbfngdD553oiQAAj+tvzwOh8870Q
1t+eB0PnneiJAACP62/PA6HzzvRDW354HQ+ed6IkAAI/rb88DofPO9EfUu31t0olE4tmTzvH9kZ8
AEf1t+eB0PnneiGtvzwOh8870RIAAR/W354HQ+ed6Ia2/PA6HzzvREgABH9bfngdD553ohrb88Do
fPO9ESAAEf1t+eB0PnneiGtvzwOh8870RIAAR/W354HQ+ed6Ia2/PA6HzzvREgABH9bfngdD553o
hrb88DofPO9ESAAEf1t+eB0PnneiGtvzwOh8870RIAAR/W354HQ+ed6Ia2/PA6HzzvREgABH9bfn
gdD553ohrb88DofPO9ESAAEf1t+eB0PnneiGtvzwOh8870RIAAR/W354HQ+ed6Ia2/PA6HzzvREg
ABH9bfngdD553ohrb88DofPO9ESAAEf1t+eB0PnneiGtvzwOh8870RIAAR/W354HQ+ed6Ia2/PA6
HzzvREgABH9bfngdD553ohrb88DofPO9ESAAEf1t+eB0PnneiGtvzwOh8870RIAAR/W354HQ+ed6
Ia2/PA6HzzvREgABH9bfngdD553oi6ptVmLmqpNXjNsTCaN9GqUam3WyMiUaTPbsNREZH3y74ywj
839PqN9EVL76EAkA+KUSSNSjyIizMfRSlfmr37tX9gGDbqty1RtM2hwYBQ3NrS5TqyU4nuLIkkeR
H3PMPutvzwOh8870RVsj9C6B9FxfukjNGeW0BgNbfnglD553ohrb88DofPO9EVLdvS2rrgTqnQak
UqNTZT8KSvVrRq32TycRkoiM8jLjLMj7hmKtpXZQL5tyn3ba08p1JqrCZMSQTa0E62riVorIlF8x
kRhGcXRdba2/PA6HzzvRDW354HQ+ed6IunrooUe5I9ouziTVpUZcxqPq1dsylRJUrSy0SyMyLIzz
2jLCImJi8J7kf1t+eCUPnneiGtvzwOh8870RIBhq7d9u21UaJSq1USjSrimnTqa2ba1a+QTTjxoz
SRkn8W04rNWRdrlnmZEJFDW354HQ+ed6Ia2/PA6HzzvREgGFum8bcsuJEnXLUShszp0amR1G2ten
JkOJbZRkkjMtJaklmews9pkQb5tBPFR1t+eB0PnneiGtvzwSh8870RcV27bftqXSINbqBRn67NKn
U9BtrVrpBtrc0M0kZJ7RtZ5qyLZx8QzAWm1xH9bfngdD553ohrb88DofPO9EXtDuSh3K1KfoVRam
twpTkJ9bRmZIfbPJaM+6ZGfc2DJgI/rb88DofPO9ENbfngdD553oiQAAj+tvzwOh8870Q1t+eB0P
nneiJAKL0uLGI1SJLTRJyzNaySRZ8XGAwutvzwSh8870Q1t+eB0PnneiM0uXEbShbklpCXDIkGpZ
ESjPiy74+uyY7CTU++22kizM1qIiIu/tEXgYTW354HQ+ed6Ia2/PA6HzzvRGZXOhIZTJXLZSyv4r
huEST+Y+IVSWhRmklEZltMs9pCRgdbfngdD553ohrb88DofPO9ESAAEf1t+eB0PnneiGtvzwOh88
70RIAAR/W354HQ+ed6Ia2/PA6HzzvREgABH9bfngdD553ohrb88DofPO9ESAAEf1t+eB0PnneiGt
vzwOh8870RIAAR/W354HQ+ed6Ia2/PA6HzzvREgABH9bfngdD553ohrb88DofPO9ESAAEf1t+eB0
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
JTKgk0tamlJURoJassjLjyPMsyPpa4sGMKrtribluSw6NUamg0GUqRFSpeaTzTmZlty84kZ27Qjq
7Nf6lRuqMaGunsydWWsRGWpKlNEfGSTU2gzLizSXeCI/tRR1xERyiykU2nuvM85v+7jGg35eUK0I
94RqjInV6g2PdDMOU+RvOq3pOcaZWvPa4oktpMzPaZlt4xL6tUWcIpWHdyWnftcqiLupNTer6pNT
cnlIis01ySVRbbcUaWzQ+lpBaskoPfBJMvi5dH0nD6yaEtlyj2vTYimG32mzajpTooecNx1JbOJa
1Goy7pmLC3MIcMbQlT5ts2NR6c/VEG1LWxFQk3kGZmaVbOI8z2cQV50zFMWn81vjMz+60Rnee7wi
I/ZyTbl14j2Tf1oVGKcqOu6LWqtRRT51yvVKVVnGoiXmn1smo2WSU4ewmiLLMy4iIZKfSaXTpu55
xChXzVq1X7iqz9Rktyqo5IbqLx0eY4txDKlGlrVrVo5NEkiJzRMj7XLpm3sCsH7UqUasW5h1QqfO
hOKdjyGIaEuNKUnRUaTyzLNOzZ3B7pmCGEdHuFN2UvDyhxqw3KVNRMbhoJ1D6krSpxKsthmTjhGZ
fKMVqp1t2W/4X6mlFerVec93x4uYsK7lxQnpsHEN+HVIdTuatm1Vpc26d8RZja9ZrIqIO1LSm9Es
tFKTLQPSPaYsazAi3Lhdhti1cV51Zy67gxDo5VCK7U3FR9eVUSlcBMU1atvUE3l2qSX+JM1Geas+
tqXhNhtRbofvWk2VSYtckqUp2c1GSl1Rq+MekRcZ90xZyMDsIpdyLu+Th5QnKy5KbmqmqhoN05Da
kqQ7nl8clISZHx5kQ1w6tTEpr4TE8pjL42ZTF6ZjjFvr5otjwZFduEJnxFeqP/2CYOcajd94KnWV
ipTqnUYlPua+otPbqtRuR7W1eO/PcZUwzT0K1DTaI6csjLTIkkrPTIzHcFUt+i1qRAlVamR5btLk
78hLdQSjjvaKkaxBnxK0VqLMu4oxDywAwXTVnq6WGlv7/kSimuP7yRpHI1pO6zi2K1hErPjz2iaa
rUxTPVM+NvJMxfON9vPzco0tirWha0K1bQj1p+DdmJ9WiVVDdedjOvttEpbcdElxRmzpqIszSZKV
o5Z7RIJ83EBuhVSypNdq9DpzGI9t02HHar5zZ9OYkKYOTEclF2yknpaZEpSlEl7IzyIh09Lwhwyn
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
caabisstlprQ2a1Gk1q1aCNWSUkUYMattb7/ACxH1W0iYxf0/f59b6PlQvStRsbafYja2upcm25N
UWk0dvr0PpQk9LvZGewaZsnFnG3FCvWhbVGual0VFYoVeqlSndT0POoXDqbMZgmkK7XalwyVn5z4
8hui/MJI16XLSrxp931y2a1S470LfdKNg1PxHTI1sLS+24nIzIjJSSJZHtJRDT7G5XqtsYn2K1h/
dlyUG3bVtOuQEVmPKjvS0y5dQiPJZWh9taHkqQmRtW2rI0pPMlklQiiJvN+HjfyZ42cU6nVv8f4R
6uYyVmPWbSv66I0eVVLMg3gxPTFPRZmOwmUdukv8OmSUmZdwzMi4hsCBiBivZdXsKoX1cNNrVMxB
ceiLjMwkxypMneT0xo0OJzNxrRYcQo15mXaqI+POYM7njD9DNDiPomSY1GiVKI4y+4lZT9/pylOS
DMs1LWZqPMjIs1HsyyIrWgbnag0yfTpFxXjcl0w6BGfiUCBV32VNUlt5o2XNBTbaHHl6lRtk4+px
aUmoiUWmvS2qqiaKaeuL+NVU/SYLXm8/eURHKYlqC2t0tfir3td6XOm1q37gdkNTFN0A4tOjKJhx
5CYklwkPSTIm8tPQNCs8yUFdq+Kt5RsE8R7iuGnuUi5b1pc7qM1FS31PbdafUySHS7d0ySaUq0u6
ZmWWQ2PS9ynQoVTs+bUsSLxq0WwZBuW9T5T0VMeIybSmt7qJphKnkatRJzdNa8kl23HnXhbl23od
SthRX7djlCsqrorNvUBb8fedPdSSyJslE0TzrZJcUlKXXF6BbE6IzpiIiI64meWVv3Z4tNVczq7s
ued/2WG6fZudyvYSpt+6nqQ29e0dp9CGEOE6W931FnpdzJJllxbc+4Q19Q90/etdeTeVKmVGdGfu
FdOZtVi0J60HT0yjjG9v9LBoN7RSp4+31ZGej3B0ViRhrT8R41HRJrNQpMygVRqrwJsHVG40+hKk
/FdQtCkmlaiMjSfHsyPIxFIm50osKp6uNe1yotXqt1c4KJcjlTilmvWmZLJrfCWze/G6knSa0jMt
DRM0iacpiOr/AIaV3ndw/efOEJpeM97Fi6/a173M5aWlW1U2BSqjb6941KOpCjZXGqCS0DeVlnoK
WR5kZaJjMbkJi6EWjeL9z3W7W1nfdxstqcjobNvV1F9CtqeMj0SMi4klkRbCEqqOByK1cMao1vEi
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
42TzTnRDhzavjZPNOdENjR9zJ6q0bhPOfNCus7dflmuznGugHWduvyzXZzjXQE14c2r42TzTnRDh
zavjZPNOdENjR9zJ6q0bhPOfNCus7dflmuznGugHWduvyzXZzjXQE14c2r42TzTnRDhzavjZPNOd
ENjR9zJ6q0bhPOfNCus7dflmuznGugHWduvyzXZzjXQE14c2r42TzTnRDhzavjZPNOdENjR9zJ6q
0bhPOfNCus7dflmuznGugHWduvyzXZzjXQE14c2r42TzTnRDhzavjZPNOdENjR9zJ6q0bhPOfNCu
s7dflmuznGugHWduvyzXZzjXQE14c2r42TzTnRDhzavjZPNOdENjR9zJ6q0bhPOfNCus7dflmuzn
GugHWduvyzXZzjXQE14c2r42TzTnRDhzavjZPNOdENjR9zJ6q0bhPOfNCus7dflmuznGugHWduvy
zXZzjXQE14c2r42TzTnRDhzavjZPNOdENjR9zJ6q0bhPOfNCus7dflmuznGugHWduvyzXZzjXQE1
4c2r42TzTnRDhzavjZPNOdENjR9zJ6q0bhPOfNCus7dflmuznGugHWduvyzXZzjXQE14c2r42TzT
nRDhzavjZPNOdENjR9zJ6q0bhPOfNCus7dflmuznGugHWduvyzXZzjXQE14c2r42TzTnRDhzavjZ
PNOdENjR9zJ6q0bhPOfNCus7dflmuznGugHWduvyzXZzjXQE14c2r42TzTnRDhzavjZPNOdENjR9
zJ6q0bhPOfNCus7dflmuznGugHWduvyzXZzjXQE14c2r42TzTnRDhzavjZPNOdENjR9zJ6q0bhPO
fNCus7dflmuznGugHWduvyzXZzjXQE14c2r42TzTnRDhzavjZPNOdENjR9zJ6q0bhPOfNCus7dfl
muznGugHWduvyzXZzjXQE14c2r42TzTnRDhzavjZPNOdENjR9zJ6q0bhPOfNCus7dflmuznGugHW
duvyzXZzjXQE14c2r42TzTnRDhzavjZPNOdENjR9zJ6q0bhPOfNCus7dflmuznGugHWduvyzXZzj
XQE14c2r42TzTnRDhzavjZPNOdENjR9zJ6q0bhPOfNCus7dflmuznGugHWduvyzXZzjXQE14c2r4
2TzTnRDhzavjZPNOdENjR9zJ6q0bhPOfNCus7dflmuznGugHWduvyzXZzjXQE14c2r42TzTnRDhz
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
7BAMNw1sXlbQfT2ekHDWxeVtB9PZ6QzO9Y3g7X2CDesbwdr7BAMNw1sXlbQfT2ekHDWxeVtB9PZ6
QzO9Y3g7X2CDesbwdr7BAMNw1sXlbQfT2ekHDWxeVtB9PZ6QzO9Y3g7X2CDesbwdr7BAMNw1sXlb
QfT2ekHDWxeVtB9PZ6QzO9Y3g7X2CDesbwdr7BAMNw1sXlbQfT2ekHDWxeVtB9PZ6QzO9Y3g7X2C
Desbwdr7BAMNw1sXlbQfT2ekHDWxeVtB9PZ6QzO9Y3g7X2CDesbwdr7BAMNw1sXlbQfT2ekHDWxe
VtB9PZ6QzO9Y3g7X2CDesbwdr7BAMNw1sXlbQfT2ekHDWxeVtB9PZ6QzO9Y3g7X2CDesbwdr7BAM
Nw1sXlbQfT2ekHDWxeVtB9PZ6QzO9Y3g7X2CDesbwdr7BAMNw1sXlbQfT2ekHDWxeVtB9PZ6QzO9
Y3g7X2CDesbwdr7BAMNw1sXlbQfT2ekHDWxeVtB9PZ6QzO9Y3g7X2CDesbwdr7BAMNw1sXlbQfT2
ekHDWxeVtB9PZ6QzO9Y3g7X2CDesbwdr7BAMNw1sXlbQfT2ekHDWxeVtB9PZ6QzO9Y3g7X2CDesb
wdr7BAMNw1sXlbQfT2ekHDWxeVtB9PZ6QzO9Y3g7X2CDesbwdr7BAMNw1sXlbQfT2ekHDWxeVtB9
PZ6QzO9Y3g7X2CDesbwdr7BAMNw1sXlbQfT2ekHDWxeVtB9PZ6QzO9Y3g7X2CDesbwdr7BAMNw1s
XlbQfT2ekHDWxeVtB9PZ6QzO9Y3g7X2CDesbwdr7BAMNw1sXlbQfT2ekHDWxeVtB9PZ6QzO9Y3g7
X2CDesbwdr7BAMNw1sXlbQfT2ekHDWxeVtB9PZ6QzO9Y3g7X2CDesbwdr7BAMNw1sXlbQfT2ekHD
WxeVtB9PZ6QzO9Y3g7X2CDesbwdr7BAMNw1sXlbQfT2ekHDWxeVtB9PZ6QzO9Y3g7X2CDesbwdr7
BAMNw1sXlbQfT2ekHDWxeVtB9PZ6QzO9Y3g7X2CDesbwdr7BAMNw1sXlbQfT2ekHDWxeVtB9PZ6Q
zO9Y3g7X2CDesbwdr7BAMNw1sXlbQfT2ekHDWxeVtB9PZ6QzO9Y3g7X2CDesbwdr7BAMNw1sXlbQ
fT2ekHDWxeVtB9PZ6QzO9Y3g7X2CDesbwdr7BAMNw1sXlbQfT2ekHDWxeVtB9PZ6QzO9Y3g7X2CD
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
5zLtUqbUojLI8sxKsUty9i1Gx2rGO1j4WWBfCr+okRitUW6TJSaTUY7aEJeYcNB6STSRkZZFnlt7
gVZxTn7/AJYt8Oqe9aIzq8OefhnHcheOe6xxvxStTAO88DnKJRKdfNwFDmU+bLdUa6mw5sjPuNEW
lF2EozTtPYO7qy5Xywvmu3KUNqtdRXFTigmrUJkak9PVGrttDSzyz25ZDl7F7cx4wVXCrCeXZlIs
5y98Priar8imQmCptMfWZfjEoJBHo5ZEWeWZ8Y6ofj3FcGHbkWswI8OuVCkmiTGadNbTUlbWSkJW
ZbUkozLPLiDGtODXTTvvP0jd3XujAn+9RVVutH/ynf32t4tJfB2TZlR3IljTJ8t6S+41J0nHVmtS
vx6+Mz2ixxX3R2NVSxwqG5+3MlmWnVq9bFKarNx1O6ZL6IUZDxZtRkJYMlm6ojSrMzyyPLLujn7C
LDr4UnBGwabhpZFHw0Oi0jWJinKf1juipZqPSVo7dpmNy3hgxuiMPccajuh8E6XbVeqd8UCFSrpo
lUlLjNolx29FMpp1JHsIkknRy25mYYk61cVRu/jLxKY1aZp6/wCYv4MBdXwhdVpm56j3/T7IpsG9
iuhNmVOJVJK+pdKqCV6Lj7ziO3OPsNRZGRkR7TPLbLcLd1Vis9hniNfuKVq2TXIllwV1Kn1ewKyU
unVRKWiUuMSHFqebdQrPNSiJJkewu1zVgqBuXMYMPcAalS6NHs2671ui413LclLrkPW0+Ybq9JcZ
tSiM2zQRmSXMj4uIYPc07kDFHDe679xCj25auHCq7bp0Kl2xTpDtSp5yNJLm/H9blpZnmjQ72ffE
TE2riZztym0XiPjey+UTTPVefjF8r8MrM3uX917jbjVdtHRXaNhVVbarsdUhZWpXVnVKERkZtlOY
kLzUZ5aJk2njzPi2CR/Cbz51N3HN4y6dMeivpfpxJcZWaFERy2iPIy28Q1Dh/uNsW6hj5ZeJtw4X
2Fhydqz1TqpVLXmOmut5INCW975EhlJ55mRdwzIdI7tfCC78c9zxXsNrGbiuVioyIK2iku6tvRak
tuLzVkeXapPuCMeIqwqdXf8AyvolUUaTE1Tlk4ytm/7tPcWL3N7dw1DhhPuaDakeXpmiQUKUhEw3
SUe0yJnTTn5w3Ku6nn7n7cL0CrK3nVbmui9ptCpDlcnmzCYdNKFG9KdM80soIjMyIyM9hZlnmN10
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
yrvxY7ikEsnimE2SlaOl+RPIu53Ri8Lqxdt6YjMYgYsYV3pArJuOxaJDeixzp9CjqzI1KWl8zW6s
iLScJOzPIiIh6uCgXVexW3h7CwgXadQot4wa7IrcNDKKc1GizCfcWyslaxS320m0aTSX5ZeZmRbV
OWU9d7eH0z59yJzvP31/XLl3pHgXugqviJcF+W/elKp9MVbFWqCKdIjGtKJNPjynWDWslqV+MQbR
GoyMknrCyIstsMkbqXEObhndV4U6g2/SZ0C/aTatLKotvPMtw5sqIyUiSlLrZqWlEo15JWku1Is+
MzjT2DOLMREObQLfcjyqvelyU2rmtxJGihz5q3Sf2K2lklJ5ceSuIX+I2El1qw/xApLFhS6tDlYn
W7WI9OZS0tU2lxpVOU+pKVKJKiJth3tVGWeiZCcO04tMVbrW5VUZ/GJn3Zp0j8v6Pf8A6asvhMfR
t6xcQcQzxKRh9elZs24m5dLcqTU624j0TemrWlBoebckP6RK0u1USk5GRlkeeZS2/MVrNw7fhQbg
mS1T6ilxyNCgQH5shbbZFpum0ylSybTmkjWZaJGpJZ5mQ1RYtjU+fjRRL5sXCefYFNpNNmRKqcqG
xEOo63R1TZNsrUSiSotLSPLLiLjEgvqNcllY1IxPiWbVLnpVUtcrfW1TCbXIgyG5Lj6VaDiklq3C
cNKjI8yNpGw89lcS8Uxq78/3MPOqbqOHW6atyuYZUq/LwkNtv1yqVOFTolHhSJTstqPLeaQttlBL
cV+LbSpRkWRGZ8RbBObdxkw6uqTFiUS4EvOzKY/V20qZcQZRmXSaeNWkRaKkLUlKkHkpJmWZDnjC
qzcSMOY9lYhV3DSovHDXcUSoUSAppyVB35UnJDTrZGpKFp0ciPtiPJRfMKVdwfxObo8G97dth2PX
bjumsx5sFDqdZTqJWUk24tR56Ok0tqM+pJZ7UqIs8xpiz+e1MZZ872iPjv8AcrGWV+HK15n4bve3
8WP+E6rXpl5N3UhykViDMqUKShhxROxoqTU+vIk5kSSSfGW3uZi0pu6Cw/ulFTg2lU33qpFoz1bi
NTafIjNzIyNmuZU4lJPNkpSCNTZmRaadpZkNHRsDL7gxMXrfbtcm6LS6HU6RYzDSk5SG5yNc4SCM
8kmThqRty2H3hObpw9u2TfWHlRgUB1USk4eXFSJjiDSSWZT6adqWT28atS7lls7U+LYLUxTaKp65
j4Xve/ustT+q09V/jaY+sSklB3SVmsWLaVdvWW4zWK9b0KuzIlLp8mWmG28ylanFk2lZtNEajIlL
PLIuPYJPcuNeHlrt05cqqS56qrE6oRWqTAfqDiouz8eaGELUlvMyLTMiLPZnmNG4X25iDg3DYk1P
DSq15VwWRQaWTUI2VKhTYkTVOMSNNZEls1K2qTpcR7DGCPCXEG0Y1t2hclBuiq0eJZcCnpTa8htk
nqg1IecdjzHjUh0mC02NDQMyy1uZbduc5zl3fvePhaI+JGVMzM7v487uiKnj1hjTqTRqw3XXp7Nw
RjmU9NOhPy3XGC+M6bbSFKQhJ7FKURER7DFvgjirJxOwig4m1JiOk5ZS3NCC2tSFNtPuISaEmalG
ZpQR5bdpnl3hovA208ScIaVadxXHhfVpji7ZkUGVToLjT8inyEzXXEbVrIlNLSou2zz4syG4dzDb
VyWzgbRqHdVv9RKqlU1b1P0kmUfWSnlpSRpzLLRUkZ1a35pjhPwm+Xvm2bOZnXoieOffFvpfJYYc
7qO0Lsw0i4hXFFn0lU6qy6ZFgIpspyTIW084giaa0NY6egjSVopPRPMjyyMSqRj1hkzb1PuNqsyp
bNTkOw40WJT5D81T7RZvNHFQg3krbIu3SaSNPdyHN8DCnEiBR7Kqb9Fu6AqyazX2ZzFGcYRMeamy
VuNSI2mo0rQRGRGR6J7fMM41hEuJaqLjrdm4hOVKfdsm4Yk+nVJo65T1HHYZStxOaW8nUxyJxslG
kiPbpGZmNq9XWnVnL+Y+sZwtF4iPvj9NzaVY3SVusXzh9atDgT58S+SlmUxNOk/8PqSItFRaHaK0
jMlErLRy2kWY2bcNywLcTBKU2689UpjcGKwyklOOOLzPYRmWxKSUoz7iUmfcHPFvW/i4ir4UXZel
GqtVVSahWI8hZoZ34xFk6KYzklKVEjSIknpmkzy2bDG1sRGpLOJGHdUWoihNzJ0XSWeSESnYiyZU
fz6K0F53CLujKZmmLd/7RP8ABVOd6eEfWY/ll+upaisSncKm3nl1qPTOqz5pR+JZZ0tEiUvPYo+P
LvbRi63jtZNv27aNx1IpqG72nxKdSY5NEbzi5CyShSk55JQRGSjPPYRl3TIhpCoYa7oGk37PqD1P
olQaq1CnQHqnTycS+TkqQSUrPTXlpNoUSthZaLZ5bRl8a8JsYptapE6zYFu1KlUypW+xTWHkulJg
xY8plyQrYokaKloJSjIs9FtJFtIWwr1ak19c2n3a0/tZe0TVMRujyj95l0Lb9z0+4l1BiKh5mRS5
Soclh5JJWhZbSPYZ5pMjIyPukMwNW4ctypGLOI1WbMjgqdp8Q1JPtFSWo/43L5tJJGNpCY3R9/fE
m0VTEfeV/DcAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAABZHWqOkzSqrQyMthkb6PaLiPKjS0ayLIaeRnlpNrJRZ/OQ5Kxv3Ej15X5GuXD+rppcKp
ydOrx1rUSWczzU40Xn+T3zHSeHGHtv4YWnDtK3GVJjRU5qWs81uuH8Zaj7pmYCTiPxv0+qP0PC++
kiQCPxv0+qP0PC++kgJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAA+D6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAI7iP+ry6PoWb9wsSIR3Ef9Xl0fQs37hY
CRAAAAAAAAAAAAAAAAAAAAAAAADypZIyz7p5EPQAAAAC1qFMp9VYTGqUNmS0lxDqUOoJREtCiUlR
Z90jIjIxdAA+D6AALWBTKfSmls02EzGbccU8tLSCSSlqPNSjy7pn3RdAPLi0toNauIizMB6AAAAA
AAAAAAAAAHziHxCycQlaeJREZAPQAAAAAAAAAAAAAA8oWSy0k55ZmQ9AAAAAAAAAAAAAPKVpUakl
xpPIwHoAAAAAAAAAAAAAAeSWk3Db7pFn/AegAAAAAAAAAAAAAAEfjfp9UfoeF99JEgEfjfp9Ufoe
F99JASAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHh1erbW5lnopNX1D2KUr81
e/dq/sAjdLpPCelxK9UqtVErnsokobiznYyGkLSSkoJLaizyIyzM8zM8/mFzwKp3ja4PXcr3gq2P
+hdA+i4v3SRmlHkkz7xBOQwHAqneNrg9dyveBwKp3ja4PXcr3g1DSsW8brkpF1XbQaHZpUe2qnUI
ZR5K5KZL7cRR6R6ZK0EqUSTyPLIhMD3ReF0Gg0StV6uOwV1qlM1go7cGRKXGjOFmS3tQ2vVJz0iJ
S9Ej0FZZ6J5RTOtETHXaeeaNaLzHv8JtPil3AqneNrg9dyveBwKp3ja4PXcr3gxdzYyYa2i3AdrV
zt5VOOUuKUOO9MU5HMiMntFhCzS3kZduZEnziOw8fLaRdd7xK5UadCtq1KbRqizVidNZSUz0vGRE
RZ6W1pJJJJGajXkRGeQXsTMRkm3AqneNrg9dyveBwKp3ja4PXcr3gw1cxswwtupxaRXLpRFlSmWp
BJVFfNLDbnxFPqJBpjkeezWmgYugY50Gv46XFglFiyCl0CiwKqqUcZ7VuqkOPkaCWaNDJKWUGStL
JRrMizNKiKYiZm0fdiZiM5+7pbwKp3ja4PXcr3gcCqd42uD13K94MRT8QJU3F6r4aqgNJj02jRqo
mSSj01qdcUk0mXFkWiLq9sV7Aw7kRYd23AUSTMQt1mMzGelPG2n4zhtsoWpLZGZEazIkkZkRnmYj
WiSJuveBVO8bXB67le8DgVTvG1weu5XvBhbixvwttaPAlVa62lNVKNv2OqHGfmZxv2ytQheg3/nV
knYe3YY+3JjbhdaUmJErd1tJcmxUTmzjRnpSERlnkh5xbKFJabVkeitw0pPRVkZ6J5WtJeGZ4FU7
xtcHruV7wOBVO8bXB67le8Fa437kfoJybFdpLs9wkLYXP01xlIPbn+LMjPMuLIxp3DjGfE2u8Ja9
f3Ami23Z9cm0aqSWt8k4e99HNxBqWZERmosiMjP5zFIqiatX76vMmbRE8cvvk25wKp3ja4PXcr3g
cCqd42uD13K94MPT8bML6nb1QumPdTbcClGkpm+Yz0d9k1ZaBGw4hLpmszIkESDNZmRJzMxEb+3U
uHVqWDJvmkSpVTRGqcalOxupstt9l5406OsZU0TqE6CtIjUkiVlkRmYtOWXu8ci+V/vLNsbgVTvG
1weu5XvA4FU7xtcHruV7wXc+5aRS7beuyfIUzTY8Q5rji21EpLRJ0viGWlnl/hyzz2ZZiOyMYrHi
XnbuHkuoKauS5mFyY1MNJKeYbSyp0zfIjMm+1QoizPaZHlmRGZTab2Im8Xjcy/AqneNrg9dyveBw
Kp3ja4PXcr3gjtIxysis3XPtRkqgwqEmUaahIjkiFJOMaSkJaczPM29JOlmRcezPI8sfQt0XYFct
qrXTqKxT4tKhx6jq50PVPSokgj3u+ynSPSS5omSSPJWZZKJOwVvdKZcCqd42uD13K94HAqneNrg9
dyveDD0fF62axbSbkTCqkT/0oxRnYEqOSJbEt15DSULQSjLYayUZkZlokZ7chSpmOOG1ZqV302lX
A3LOxmGn6y+yWmyzpk72qVlsWotSslEnPJRaPGRkU9Uz1R9/vCbSzvAqneNrg9dyveBwKp3ja4PX
cr3gh0TdDWTLtWbdCqbXY64UyLAKmPwyTOfflGjeyWm9LRVrdYg0npEWRnpaOR5e5+6DsmFa1Lud
FPrkpVVfkxm6ZHhkqc07GNZSUuNmoiTqtWvSyUfxe10syziZtlKIz3JdwKp3ja4PXcr3gcCqd42u
D13K94FCvm37inIp9NkOKcegM1Jk1oNKXo7mZEtB93IyMjLjI8s+Ms5AJEf4FU7xtcHruV7wOBVO
8bXB67le8EgABH+BVO8bXB67le8DgVTvG1weu5XvBIAAR/gVTvG1weu5XvA4FU7xtcHruV7wSAAE
f4FU7xtcHruV7wOBVO8bXB67le8EgABH+BVO8bXB67le8DgVTvG1weu5XvBIAAR/gVTvG1weu5Xv
A4FU7xtcHruV7wSAAEf4FU7xtcHruV7wOBVO8bXB67le8EgABH+BVO8bXB67le8DgVTvG1weu5Xv
BIAAR/gVTvG1weu5XvA4FU7xtcHruV7wSAAEf4FU7xtcHruV7wOBVO8bXB67le8EgABH+BVO8bXB
67le8DgVTvG1weu5XvBIAAR/gVTvG1weu5XvA4FU7xtcHruV7wSAAEf4FU7xtcHruV7wOBVO8bXB
67le8EgABH+BVO8bXB67le8DgVTvG1weu5XvBIAAR/gVTvG1weu5XvA4FU7xtcHruV7wSAAEf4FU
7xtcHruV7wOBVO8bXB67le8EgABH+BVO8bXB67le8DgVTvG1weu5XvBIAAR/gVTvG1weu5XvA4FU
7xtcHruV7wSAAEf4FU7xtcHruV7wOBVO8bXB67le8EgABH+BVO8bXB67le8DgVTvG1weu5XvBIAA
R/gVTvG1weu5XvA4FU7xtcHruV7wSAAEf4FU7xtcHruV7wOBVO8bXB67le8EgABH+BVO8bXB67le
8CC49RrhZtxUyRKjzYb0yOchw3HGjZW0haTWe1RHrkGWeZkZK25ZEUgEdnfrDon0LVPv4ICRAAAA
juI/6vLo+hZv3CxIhHcR/wBXl0fQs37hYCRAAAIlf+IMDD5FIk1RpvetTqLcFx5x3VpYJRGemew8
8suLYK8nEzD+JT4lWk3fS24k5Li4zypCdF4kGkl6PfyNSSPvZkMNi3bdwV5m3plu0mNU3qNWWKg5
FkSNSTiEErMiUaVbdveGsHbQvW2r8s6qt2YxVJkp246i/DQ+aI0A5JxzSjXGgyzyJRcRaXbZCsTN
s99/DL+SYz+Hjn/DdkvEOx4B04pl005rqs2l2DpPl/xCFZESk98jzL6xISPMsxz83g/fdFaoTNEj
spnsR0typyJ2jHQSpSn1sqjqQrWIRpaKMjSeQ6AQRkhJKMjMiLPIXytkiL9b0AAISAAAAAAAAAAp
SOJv/WQqilI4m/8AWQqgAAAAAAAAAAAoy/zZz/SKwoy/zZz/AEgKpcQ+j4XEPoAAAAAAAAAAD4fE
YpxfzZn92n+wqHxH8wpxfzZn92n+wCqAAAAAAAAAAAAApRvyZ/6lf3FUUo35M/8AUr+4qgAAAAAA
ACN3XdzdEt+XVaaTUl6O6ljQUrIiWaiLblt2ZiRnlkeY1reFl06TQKnMopKqM9c1L6iadzNJ6RZp
yI8syIu6PN6UxsfCwJnR4jWtPv3dXF6HRuFgYuNTGPM2vH1691mM6693eLKZ9pY8N4q3aSln1Mpm
0/lLEf6lXDyaqXNp6Q8opNw6S/8A8NVLj/Zp6Q+H9YdJdurl/D7P1f0b2Kef8pL117t8WUz7Sw66
93eLKZ9pYjnUm4eTVS5tPSDqTcPJqpc2npB6w6S7dXL+D1f0Z2aef8pH11ru8WUz7SxQg4w3ZNjJ
kJpVNSRqUWRqX3DMv+QwnUm4eTVS5tPSFnSaBc0SClh62akSiUs9jae6ozL/ABecUnpHpTXiIrqt
n1fwvHR3RerMzTTfLr/lKZGL12savOl0w9YskF26y4xV6693eLKZ9pYikyi3K6bJN2zUz0HUqV+L
TxF/EXHUm4eTVS5tPSEx0j0nefz1cv4RPR/RlotTTz/lI+uvdviymfaWHXXu7xZTPtLEc6k3Dyaq
XNp6Qt5zVSpjG+ajRpkVojJOm9oITmfczNQmrpLpGmNarEqiPd/CKejejqptTRTM+/8AlKCxVu3X
mrqZTc9Ei+Mvvj3117t8WUz7SxGEU2vOK027cqKkqQRkZISZGX2hU6k3DyaqXNp6QmOkeke3Vy/g
no/o2N9FPP8AlI+uvdviymfaWMna+JdcqlxQ6PVKfCbal6ZabS1ZpNKc+6IT1JuHk1UubT0hkbYt
ap1K6acVUoE1mGybinVuZIIs05FtI8+MbaPp/SVWNREVTOcb4y359TDSNA6Mpwa51YjKd057sutu
3XNftUfaINc1+1R9ohg+A1t+Buc+57Q4DW34E5z7ntH3OtpXZp5z/tfF6ujdqrlH+5nNc1+1R9oh
SbnRHZbkFt9Cn2kJcWgj2klRmRH9ZH9QxHAa2/A3Ofc9o90e06bQqtKqlPNad9MNMqbUo1EWgpR5
5nt/xf0CKtK1qYmmLdec+UE06Pqzaqb9WUecs4AAOtzAj8b9Pqj9DwvvpIkAj8b9Pqj9DwvvpICQ
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApSvzV792r+wqilK/NXv3av7AMTZH
6F0D6Li/dJGZX8U/mGGsf9C6B9FxfukjNiJi8WHNOFO53pFw067Xr+XesdNSumqOrphXLUYsCVGW
8Zp0oiHksrbWnjI0mSiPbmIvjNblfTel528mmXrAo7tEgxrepVm05MdquaEd5CW5VRZb1zJNur0S
bN5tskEkzJRLUOvR9FYo1YpiOqLcosUxETMzneZnnN3JuDiq5hGzb9xX3ZVxyIdRsKjUppMWlvTH
4cqM0aXo7jSCNTekZkeZkSTy2mMHfGGl+1rGW48d6LbVcbRbMK2arBtaWy2cSqaDclMlo0ESkqlM
trPVGlWSFq/zGOzgFqo1pieuJurFOWr1bnGF5Wle67lxG19bxEjwsRWmpNKp1Jt+BIYlsuxktlFk
PyYjy4ikqzI9NSUpJRmRZkNo4cW1VrM3RtWKpUep7yqmH9uU2FPU0p5pb8J6oG+248lJISsifaPa
SdLS2Fs2b+AWonUm8d6ar1xn3eDQlbuQsP8AdH1u5K3blySKZUrZhRY8qm0WTNbN1DyzUkzZQrRM
iMuMWM6uOW9jNVMW59m3HVLcvGz6bTKauPSH3ZESTGkTVusPR9HWMk6mS0ZKUkk5tmSjLZn0SApT
TNPj4pjK9uv+J/ZxcvDerWBbFArCpOIln3o1SKghmVb1LbrENxp6Q68zAlRlNutq1ZrSZGaUfGUS
V97K33S7zhKpd/aV7WjijOsyFDqHB6iIqlEq8lJKUmNIjrQ6lvUurcIlGbaiS+ZE4oi2deALxNrW
6vv7+iZqmZmZ62JtVytvWxSnblisRqsuEyqcwx+TbfNBaxKePtSVmRbTHLNwYX4g1nCvEaBS4dVp
8vrqO3C2lhhtUiVAalMOqUwh5Km3TUlCjSS0mlRlkZDrwBS359pG/wDmJ/ZW17X6pv4TH7uPlYdM
3xGvW57vexTuSnS6ZToLdSep0Sk1Jh5iQbyH4saPGjuGuOs0uEs9I1aOilKi2HSqsfFW48N74hSn
rku6gUyp0KVRp9Wt1MCsvk0tCpjSmWmm9elBIQpK9USjNa05q0cx2MAtOdu63hNyfzUzTPXfxizV
+Njz9Qwti1GEl9ERNVokyYlaTaUmGmoR1vGtKsjSRNko1EfcI8xa4j2zLmYxYVXBS6Mp1qHUqi5U
ZbTWZNoVTH22zcUXERqUlJZ90yG0qhT4VVgyKZUYzciLKbUy8y4nNLiFFkpJl3SMjMIEKPTYTFPi
INDEZtLTaTUajJKSyLae09hcZi0VWiY438YsiImIt3W+/vg5YYsi6rjePDFm2Z8GVRI90FIqb8NT
cVzfrZtxzaezycNesNRknMy0NuWwUlUm575oVRuOFYFVp6aFbFBprsCZT1MuyJUV83pDDSDP8Yls
iIiUnNKjV2pq2jrQBhGFTEUxwtzi1vpC1X5pmZ67+N/OXPdiUmtXXfbNxPW/VKdRajccy5GimRVx
15MRUxWSdQrak1qeW4RKyP8AFkeQp3Fh3XJd5Y0x6Nb62YtYtehsU80s6LUl5pU5TjaD2Eau2QR/
6yz4x0QA1qiKsKcLqtb4fcIovh1TVHXN/G/1cquRq9XJTmLDFjVpim0av29IcgPUxaJjzMVhTMhx
DB9uvVqeMyyLNRMnokrZn9YhXBbzFOxMl2PWHodVqtzPogMU1bkyO3ONW9VuMl2yNMkpNWZdrre2
0cjy6pAZ4mHTiTerv8b3+slMam7u8LW+kNBWbQatQb7wkoTqFImUm0ar1WQkyImm3Fw9UhZbf+0S
vR2/4F8Y36LFmi0xirSK61EQU+U02w6/xqU2jM0p8xEajPLvmYvhrNU1Zz3+MzKKaYopiindEQAA
CFgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcl7pncl
3Lelxt3phXU3Y8uovpTU4S5KkNZnsN9G3Z/mT3eMto3jghg/S8GbNbt6LNfnzpBk9UJr6zUp97LL
Zn8VJcRF/wAzMxsMAAR2d+sOifQtU+/giRCOzv1h0T6Fqn38EBIgAAAR3Ef9Xl0fQs37hYkQjuI/
6vLo+hZv3CwEiAAAB8yLjH0AAAGnsRcQ7xpEu8anb06MxAsKnMVCTEcYSs6gZoN5xBqPa2WrIiIy
7pmIvF0xEzubhAUoz6ZUduSgjJLqSWWfeMsxVEqxN4vAAACQAAAABrnF2r3lbFMkXNQbniw2YrCU
RaauGl5dRmKUeiyRn22a+0SRJ27TP5ombJiLtgvEZkjIs8lkYqjTF34k3tBl1+p06RGhRLPiwZE6
CtlLhy1Pds4nT40aKcyLLjMWL2Md6MVO7aUmNHdcfmrg2uomdiHm2GXHUPZcZJS7rSPupbcLuEFU
6sTM9X3+yIzmKeP8ecN6gIthbcNSuzDu3rkrCm1TajT2ZD5tp0UmtSSM8i7hZiUi0xabIpnWi8AA
AhIAAAClJSamFpSWZmXEILi1ihT8P6exARVaXDrNVQ6UBVSkoZjo0CzU4s1GWZFmXakeZmZF3zKB
2/ixel9Wra8m3q/TmJr1mpuapymmG3kPPkaUKYSWZkgtYTpKy2pNJFs2iL5TPUm2cRxb6LiH0aLa
x1r7Vag1aVAQugTaBDlHHabzeROkErVJJXyVLTqyz4jUnziZYI3ZdN3WpOl3k5GXVIFcqdMdOM3o
N5R5TjSci+ZBbe6J65p4K3iYirqn7/ZsIAAEgAAAA+CG4rXlUrKthE2iU52dUp0xinxGmkJWrWOq
0dIkqUklZFmeRmWeQiZsmIumR8RjxGI0x2kqLIyQkjL+A05T8RbkriaFZ1Kr77Fdnz5keoSp9OZb
fhpjtk4aNSkzbNR6beRkZlomZjEs433awduT57cZUGMqrsXETbGallCl72N9si2ltLT0S7+QmbQi
Pzbvvub9Aazwevi67wqN2s3QhhtNNqbaILTTeibUZyO26hKj/wASu34xswTMW3ouAACEgAAAAjWJ
Nw1K07Br9y0dll2dTae9JjtvKIkLcSkzSR/OfEXdPIu6NVUbGC636JV2W6lvyUmZToUKVOp285DL
knPTJ2MZFsRlsVlko88jPIRfebrN6xyUTeRll2x8fziqNB13FPEmhuptqI9EqVXpt3tUmQ8qOlG/
oZ012caCSWxDhkgkZl3sxJcPcT67euJFQho1RWw/SG59JI2TQ8stYSFOKM9uRnnkXeLPui0RfOCc
ovLa4AAgAAAHlxBONqbPPJRGR5ecRixsP6ZYbdQbpsyXIKoyN8L3wvS0T7xbPOJSITi3cd0WpapV
y2FwUqZlxW5G+m1LPVOPtoPQyMi0slHx5jCvR8KvEpxqo/NTe08L5S3w8bFpoqwaJ/LVa8cbZwqU
W371iX9Va3U7hTIoUlnRiQtv4pWaduXEWREraXHmJa0kycdMy2GrZ9Q1tfN2Xgq53bYtSpx6cqmW
+uvyXXY6XjfM3TbbZIlfFT+LcNRlt+LxCJv4zXfWKNNveivxoVOoFMplQmQFsJcOWclKVuJ0z2o0
UmZFlxmQjR9Go0eJoovOcznN98/S6MfSKtI1a6oiMoiLRbdH1b5yLvBkQ0ZLxivSHcF40dMaO8S5
nU22DJnYiWmGw84h4y4y0XzcI/ksueYbLwur9TunD2g3DWXG1zp0NDr6m0aKTXtzMi7nEOiIvEVc
bTzYXtNkoyLvBkXeH0AS+ZF3gyLvD6AD5kI/e1k0a/KOVFrWtJgnUvEbS9FRKLz/AMTHq/J9fpVp
VSp2yqGmoRIy3mjloUprtSzPMkmRnsI8tvGI5MrNzVLDui3Yi8YduoOmNz6nLdiodT2zSVbCXsSW
Zn5+IiGWPg4ePhVUYsXpnKYa4OJiYGJTiYc2q6p74TaBAZpyGoUZBpYjsIZbz25JTsIs/mF3l5hp
FrETEuu0yjRW1R6BV27VVclSS7FS4biyUSUM6CviErJSj7pbCFNGOlfZrkSqSqehygTKDDk73Zbz
eRPkErVIJXyVqTqyz4jUnzi9MU0xFNP3a/lLKquZvVPx+NvNvLIu8GRCAYJXTdN2WjNl3k7GcqsC
uVOlvHGb0G8o8pbSci+ZPGNgC0xYuAAAAh8Om38jEKXUZdXYXbS45JZikXbpc2beL/V3e6JgAwx9
Hpx5pmZmNWb5TbnxjubYOPODFURETrRbOL8uEgAA3Ygj8b9Pqj9DwvvpIkAj8b9Pqj9DwvvpICQA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApSvzV792r+wqilK/NXv3av7AMTY/6
F0D6Li/dJGbGEsf9C6B9FxfukjLyVGiO6tJ5GlCjL6gRM2i6oA/NWsbrfHGJV50Vm6zJtmS42gtS
nYRKMi7gtOy+x15Wf7KfYOH0/CjK0vk6v6x0GmZiaauT9NQH5ldl9jtys/2U+wOy+x15Wf7KfYI9
YYXCUfjLQezVyfpqA/MrsvsdeVn+yn2D52X2OvKz/ZT7A9YYXCT8ZaD2auT9NgH5k9l9jrys/wBl
PsDsvsdeVn+yn2B6wwuEn4y0Hs1cn6bAPzK7L7HXlZ/sp9gdl9jrys/2U+wPWGFwk/GWg9mrk/TU
B+ZXZfY7crP9lPsDsvsdeVn+yn2B6wwuEn4y0Hs1cn6agPzK7L7HXlZ/sp9gdl9jrys/2U+wPWGF
wk/GWg9mrk/TUB+ZPZfY68rP9lPsH3svsdeVn+yn2B6wwuEn4y0Hs1cn6agPzK7L7HblZ/sp9gdl
9jrys/2U+wPWGFwk/GWg9mrk/TUB+ZXZfY7crP8AZT7B87L7HXlZ/sp9gesMLhJ+MtB7NXJ+mwD8
yey+x15Wf7KfYHZfY68rP9lPsD1hhcJPxloPZq5P02AfmT2X2OvKz/ZT7B97L7HXlZ/sp9gesMLh
J+MtB7NXJ+moD8yuy+x15Wf7KfYHZfY7crP9lPsD1hhcJPxloPZq5P01AfmV2X2OvKz/AGU+wOy+
x15Wf7KfYHrDC4SfjLQezVyfpqA/MnsvsdeVn+yn2D72X2OvKz/ZT7A9YYXCT8ZaD2auT9NQH5mN
7rrHl5xLTd1aS1qJKS1KNpnxdwSyu4y7ra24s2ZWJ6WkU3R34lt6K85HzPIjcQ2tSklmZbTIW9Oo
te02Xo/q7RMSJmiiqbdz9BwH5ldl9jtys/2U+wOy+x25Wf7KfYI9YYXCVPxloPZq5P01AfmlK3V+
P0RiNIfutskS2zca0SaWZpIzLaSTM0nmR7FZH3eIW/ZfY68rP9lPsD0/D4Smf6x0KN9NXJ+moD82
om6e3R06i1C4YleW5TqWtluW+TTZE0p01E2RlxnpGlXER8Qx3ZfY68rP9lPsCekMOJtMST/WGhRE
TNNWfc/TYB+ZXZfY68rP9lPsDsvsduVn+yn2CPWGFwlH4y0Hs1cn6agPzK7L7HXlZ/sp9gdl9jty
s/2U+wPWGFwk/GWg9mrk/TUB+ZXZfY68rP8AZT7A7L7HXlZ/sp9gesMLhJ+MtB7NXJ+moD8yey+x
15Wf7KfYPvZfY68rP9lPsD1hhcJPxloPZq5P01AfmV2X2OvKz/ZT7A7L7HblZ/sp9gesMLhJ+MtB
7NXJ+moD8yuy+x15Wf7KfYHZfY68rP8AZT7A9YYXCT8ZaD2auT9NQH5k9l9jrys/2U+wOy+x15Wf
7KfYHrDC4SfjLQezVyfpsA/MrsvsdeVn+yn2D52X2OvKz/ZT7A9YYXCT8ZaD2auT9NgH5ldl9jty
s/2U+wOy+x15Wf7KfYHrDC4SfjLQezVyfpqA/MrsvsduVn+yn2B2X2OvKz/ZT7A9YYXCT8ZaD2au
T9NQH5k9l9jrys/2U+wfey+x15Wf7KfYHrDC4SfjLQezVyfpqA/MrsvsdeVn+yn2B2X2OvKz/ZT7
A9YYXCT8ZaD2auT9NQH5ldl9jrys/wBlPsDsvsdeVn+yn2B6wwuEn4y0Hs1cn6agPzK7L7HXlZ/s
p9g+dl9jrys/2U+wPWGFwk/GWg9mrk/TYB+ZXZf47crP9lPsHQO44xuxExSvCu0y8q1v2PDpyX2U
6sk6KzcIs9nmGmHpuHiVRTDq0L+qNE07Hp0fDib1cXWgjs79YdE+hap9/BEiEdnfrDon0LVPv4I6
30iRAAAAjuI/6vLo+hZv3CxIhHcR/wBXl0fQs37hYCRAAAAAAAIHeOEdKvGpTZb9cqcKLWI7MSsw
Yxt6mpsNmZpQ5pINSMyUpJm2pCjSeRmZEWU8AB8SlKEklJEREWREQ+gAAAAAAAAAg144YyLquunX
bGvisUiRS46mIzEdiI+yhSjPSeJMhlzRcNPa6RZHoll3TznI+B3iAXBhBT7iqCpsu5Kq03NajtVe
M0TJN1TUGRoN3tM0nmW3VmjMjyPZsGfpNk0qjtVtqMt1RVya7OdNeiZtLWyhoyRs2Fotlx58ZiQg
ItExY64nrhiLRtqHZ1s021qe867GpcZEVpbpka1JSWRGrIiLPZ3CGXABO9ERaLQAAAkAAAWlRpkG
qR1x5sZt0loUjNSCUaSMsjyzGv1YG0aPQaFQ6HclXpB0Oj9Qd8xdSbkuDkklNOkttSdpoJWkkkqI
88jLMxssAsI1QrAoNu1M6jTUOIT1PjU1uOoyU220xnoZZlnnt4zMVrPs6n2XDnwqdIfdRUKpNqzh
vGRml2S+p5aSyIu1JSzIu7lxmYz4+B13REREWh9AABIAAADA3naMO9KN1JlTJUJxt5uTGlxVEl6M
+2olIcRmRlmRlxGRkfdIxngCYuNeFg5DRFakMXXWGq+1UHKl1dSTBylPOI1a80G2bJoNGSdDV6JZ
JMiIyIxkLbwrt62HaQ9CelOLpMaWxm8pKt8rkuk6865s2rU5mo8sizUezLITMAGCoVoU+361Xa5D
ffW9X5LcqQhZlooUhpDREjIthaKCPbntGdAAAAAAAAAYe7rYp1523ULXqq3kRag0bS1srNDiDzI0
rQouJSVERkffIRNGDNNfi1ZdbuWr1Sq1be+nVXtS0+zqDNTOrS0hLZaKjUfxNuZ6WZDYgCLdZdAq
ZhBSIT8CoTa1UahUoldO4H5z+qS5Mk71cikTiUISgkk05kRISn4ifPnIGbPpse713k046mUunpp2
qLRJomyXp5kWWeefnyGdASi2VgAAEgAAAItiHYzmIFC4Pnc1RozCnW3XVwm2FLc0FpWkj1rayIiU
kj2EX1CUgExdMTbOEFuTCxFxKhyzu6sQaizTV0mXNipYJydFWZKUh1Jtmgu2TmSkJSpOkrRMiUZH
Z1LBC3JjrbMCqVGm0tUeJFm0yMbeomtRstSlw1JNZaJJIu0UnMth5jYwB13VtlZHqVZVKpDlecYc
dWdfmnOe09E9Us47TGTezYWg0njzPMz+YXdp23DtC3KfbNPeedjU5kmG1vGRrURd08iIs9veGWAR
G6wAACUgAADD3ZQX7nt+ZQWK3LpJzGzaXJittLcSg9iiInUKTtLMtqe7syMQ6o4NOVG2LethzEGu
pbtxxLjL294azf0EklonW1MG0rQyI0noZ57eMbJABr+tYTLrrUN6XfNbbqbMN6nS6iy3FQ7OiOKJ
SmXEE1qyLMk5KQlKiy2HtPPN0OwaFb1UXUqchaUnAjU5EdRkbbbTGerMsyzz7bjM+4JKAff3zlEx
f7++DBWhaFPsyHPhU5991FQqs2rOG8ZGZOyn1PLSWRF2pKWZF3cuMzGdAASAAAAAAAAAACPxv0+q
P0PC++kiQCPxv0+qP0PC++kgJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAClK
/NXv3av7CqKUr81e/dq/sAxNj/oXQPouL90kZWX+aPfu1f2GKsf9C6B9FxfukjKy/wA0e/dq/sIn
crX+mX473D/6/qX/AMY9/wCMxjxkLh/9f1L/AOMe/wDGYx4+Zne/B8X9c+8AAEKAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC5pq0N1GK4tRJSl5BqM+4RKLaOkrxvvD2t17EZilFS4UqZ
LjrcnpkOOIq0BK0G60klrNCVnln2pFmRZDmQBrGLNNMUx3+NvJ2aLptWi0zTTETeYnPuiY/fe6/q
d9YaSK5SCmy6Q5Tk1lUijOuz23zgJ3ktDWi0lktQ1rTZM0rUeSkZ5HkZjC2HdsanRpJXXeVHqN0G
/AWuUzUmo5qhoNWky9INpRPFmfbJLMzLLbsHOtCtd+uU+p1BqYw0mmxzfNtR5rdyUkjIi7hFpFtP
+vczL2HBsJkPOVtvU0/NM9ZMGeoXokeRFn2/HlnsG21rqq1oj7vf+Pc9OnpLHqimqKN3lbw6uDes
W7sLa/Kp9nVaoUuFQarSXnXjZWWjEkR6k5IZRpZEZaTRrSWwsyWWwfY+KFlVy0p1TLeDe/iqZ1WC
9ObjpdUs8mM2dUtTppQSNE0mWiae5xjSjWD9YkNOrjT0OqRIJlJJZUaTQZt9uZ59qei4StHvJUfc
EKqcB2mT34DyHUqZWafxrRtqMu4ZpPaWZbRWcaqi023+OcT/AAirpXSMO01URlaL+6nV85+Lo3FC
8KLOwzu2n0y6KW7R5yqGq36Ww8nWR2mk/jk6siI0GRmWZHxmRmOaAAc9c61c18f2ebpmmVaZMTVF
rAAAhxgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOrvg9f0/uf6IR98kcojq74PX9P
7n+iEffJHTon/Wpe3/Tv/wDZ4Xvd4COzv1h0T6Fqn38ESIR2d+sOifQtU+/gj337EkQAAAI7iP8A
q8uj6Fm/cLEiEexDQt2wLmbbSalro81KSLjMzYXkQCQi0q09VLpcupIhvyzisLeKOwnScd0Umeik
u6o8si85i6IyURKSZGRlmRkPoIqiZi0NYdeyZ5Jr09CR0g69kzyTXp6EjpDZ4DHZ4nb8Ieb6Jpn+
Yn5afJrDr2TPJNenoSOkHXsmeSa9PQkdIbPANnidvwg9E0z/ADE/LT5NYdeyZ5Jr09CR0g69kzyT
Xp6EjpDZ4Bs8Tt+EHommf5iflp8msOvZM8k16ehI6QdeyZ5Jr09CR0hs8A2eJ2/CD0TTP8xPy0+T
WHXsmeSa9PQkdIOvZM8k16ehI6Q2eAbPE7fhB6Jpn+Yn5afJrDr2TPJNenoSOkHXsmeSa9PQkdIb
PANnidvwg9E0z/MT8tPk1h17JnkmvT0JHSDr2TPJNenoSOkNngGzxO34QeiaZ/mJ+Wnyaw69kzyT
Xp6EjpB17JnkmvT0JHSGzwDZ4nb8IPRNM/zE/LT5NYdeyZ5Jr09CR0g69kzyTXp6EjpDZ4Bs8Tt+
EHommf5iflp8msOvZM8k16ehI6QdeyZ5Jr09CR0hs8A2eJ2/CD0TTP8AMT8tPk1h17JnkmvT0JHS
Dr2TPJNenoSOkNngGzxO34QeiaZ/mJ+Wnyaw69kzyTXp6EjpB17JnkmvT0JHSGzwDZ4nb8IPRNM/
zE/LT5NYdeyZ5Jr09CR0g69kzyTXp6EjpDZ4Bs8Tt+EHommf5iflp8msOvZM8k16ehI6QdeyZ5Jr
09CR0hs8A2eJ2/CD0TTP8xPy0+TWHXsmeSa9PQkdIOvZM8k16ehI6Q2eAbPE7fhB6Jpn+Yn5afJr
Dr2TPJNenoSOkHXsmeSa9PQkdIbPANnidvwg9E0z/MT8tPk1h17JnkmvT0JHSDr2TPJNenoSOkNn
gGzxO34QeiaZ/mJ+Wnyaw69kzyTXp6EjpB17JnkmvT0JHSGzwDZ4nb8IPRNM/wAxPy0+TWHXsmeS
a9PQkdIOvZM8k16ehI6Q2eAbPE7fhB6Jpn+Yn5afJrDr2TPJNenoSOkHXsmeSa9PQkdIbPANnidv
wg9E0z/MT8tPk1h17JnkmvT0JHSDr2TPJNenoSOkNngGzxO34QeiaZ/mJ+Wnyaw69kzyTXp6EjpB
17JnkmvT0JHSGzwDZ4nb8IPRNM/zE/LT5NYdeyZ5Jr09CR0g69kzyTXp6EjpDZ4Bs8Tt+EHommf5
iflp8msOvZM8k16ehI6QdeyZ5Jr09CR0hs8A2eJ2/CD0TTP8xPy0+TWHXsmeSa9PQkdIOvZM8k16
ehI6Q2eAbPE7fhB6Jpn+Yn5afJrDr2TPJNenoSOkHXsmeSa9PQkdIbPANnidvwg9E0z/ADE/LT5N
YdeyZ5Jr09CR0g69kzyTXp6EjpDZ4Bs8Tt+EHommf5iflp8msOvZM8k16ehI6QdeyZ5Jr09CR0hs
8A2eJ2/CD0TTP8xPy0+TWHXsmeSa9PQkdIOvZM8k16ehI6Q2eAbPE7fhB6Jpn+Yn5afJrDr2TPJN
enoSOkHXsmeSa9PQkdIbPANnidvwg9E0z/MT8tPk1h17JnkmvT0JHSDr2TPJNenoSOkNngGzxO34
QeiaZ/mJ+Wnyaw69kzyTXp6EjpB17JnkmvT0JHSGzwDZ4nb8IPRNM/zE/LT5NYdeyZ5Jr09CR0g6
9kzyTXp6EjpDZ4Bs8Tt+EHommf5iflp8msOvZM8k16ehI6QktlXy/eDktDtoVyi71JBkqosE2Tul
n8XIzzyy2/OQlQCaaK4m81X+ENcHR9JorirExpqjhq0x9AR+N+n1R+h4X30kSAYCMR8PKivLtepM
NOfn10g8v6l9Y1dzPgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApSvzV792r+w
qilK/NXv3av7AMTY/wChdA+i4v3SRlpZGcV4iLMzbVkX8BibH/QugfRcX7pIzYImLxZ+Sddw5vx2
uVFxuz6spKpbykmUVeRkaz8wsettf/I2r+iL9g/XXe0f9g39kg3tH/YN/ZIebPR1M56z4ir+isKq
qZ2s8ofkV1tr/wCRtX9EX7A621/8jav6Iv2D9dd7R/2Df2SDe0f9g39kg9XU9pH4Iwvazyh+RXW2
v/kbV/RF+wOttf8AyNq/oi/YP113tH/YN/ZIN7R/2Df2SD1dT2j8EYXtZ5Q/IrrbX/yNq/oi/YHW
2v8A5G1f0RfsH6672j/sG/skG9o/7Bv7JB6up7R+CML2s8ofkV1tr/5G1f0RfsDrbX/yNq/oi/YP
113tH/YN/ZIN7R/2Df2SD1dT2j8EYXtZ5Q/IrrbX/wAjav6Iv2B1tr/5G1f0RfsH6672j/sG/skG
9o/7Bv7JB6up7R+CML2s8ofkV1tr/wCRtX9EX7A621/8jav6Iv2D9dd7R/2Df2SDe0f9g39kg9XU
9o/BGF7WeUPyK621/wDI2r+iL9gdba/+RtX9EX7B+uu9o/7Bv7JBvaP+wb+yQerqe0fgjC9rPKH5
Fdba/wDkbV/RF+wOttf/ACNq/oi/YP113tH/AGDf2SDe0f8AYN/ZIPV1PaPwRhe1nlD8iuttf/I2
r+iL9gdba/8AkbV/RF+wfrrvaP8AsG/skG9o/wCwb+yQerqe0fgjC9rPKH5Fdba/+RtX9EX7A621
/wDI2r+iL9g/XXe0f9g39kg3tH/YN/ZIPV1PaPwRhe1nlD8iuttf/I2r+iL9gdba/wDkbV/RF+wf
rrvaP+wb+yQb2j/sG/skHq6ntH4Iwvazyh+RXW2v/kbV/RF+wOttf/I2r+iL9g/XXe0f9g39kg3t
H/YN/ZIPV1PaPwRhe1nlD8iuttf/ACNq/oi/YHW2v/kbV/RF+wfrrvaP+wb+yQb2j/sG/skHq6nt
H4Iwvazyh+RXW2v/AJG1f0RfsDrbX/yNq/oi/YP113tH/YN/ZIN7R/2Df2SD1dT2j8EYXtZ5Q/Ir
rbX/AMjav6Iv2B1tr/5G1f0RfsH6672j/sG/skG9o/7Bv7JB6tp7R+CML2s8ofk3SLSxJoqJ6Itl
VNXVCKqI4a4a+1SakqzLz5oIZ11OKDxOIdw4kG1KzOa3vN4ilqNJJ0l7cyPZn2uW0fqPvaP+wb+y
Qb2j/sG/skLRoGruqaU/0dTRFqcaeUPyyhs4tQaxLrkeyagmTL0E/mbui22k0noJLvGSUpM+PIuP
aYxNwWliRcVSVUpNj1NlRoS2TbURzRSlJZEW3Mz/AImP1j3tH/YN/ZIN7R/2Df2SFZ6PibRNW5NX
9IRVTNE482nuh+RXW2v/AJG1f0RfsDrbX/yNq/oi/YP113tH/YN/ZIN7R/2Df2SD1dT2mX4Iwvaz
yh+RXW2v/kbV/RF+wOttf/I2r+iL9g/XXe0f9g39kg3tH/YN/ZIPVtPaPwRhe1nlD8iuttf/ACOq
/oi/YHW2v/kbV/RF+wfrrvaP+wb+yQb2j/sG/skHq2ntH4Iwvazyh+RXW2v/AJHVf0RfsDrbX/yN
q/oi/YP113tH/YN/ZIN7R/2Df2SD1bT2j8EYXtZ5Q/IrrbX/AMjav6Iv2B1tr/5G1f0RfsH6672j
/sG/skG9o/7Bv7JB6up7R+CML2s8ofkV1tr/AORtX9EX7A621/8AI2r+iL9g/XXe0f8AYN/ZIN7R
/wBg39kg9W09o/BGF7WeUPyK621/8jav6Iv2B1tr/wCRtX9EX7B+uu9o/wCwb+yQb2j/ALBv7JB6
tp7R+CML2s8ofkV1tr/5G1f0RfsDrbX/AMjav6Iv2D9dd7R/2Df2SDe0f9g39kg9W09o/BGF7WeU
PyK621/8jav6Iv2B1tr/AORtX9EX7B+uu9o/7Bv7JBvaP+wb+yQerae0fgjC9rPKH5Fdba/+RtX9
EX7A621/8jav6Iv2D9dd7R/2Df2SDe0f9g39kg9XU9o/BGF7WeUPyK621/8AI2r+iL9gdba/+RtX
9EX7B+uu9o/7Bv7JBvaP+wb+yQerqe0fgjC9rPKH5Fdba/8AkbV/RF+wOttf/I2r+iL9g/XXe0f9
g39kg3tH/YN/ZIPVtPaPwRhe1nlD8iuttf8AyNq/oi/YHW2v/kbV/RF+wfrrvaP+wb+yQb2j/sG/
skHq6ntH4Iwvazyh+RXW2v8A5G1f0RfsDrbX/wAjav6Iv2D9dd7R/wBg39kg3tH/AGDf2SD1dT2j
8EYXtZ5Q/IrrbX/yNq/oi/YHW2v/AJG1f0RfsH6672j/ALBv7JBvaP8AsG/skHq6ntH4Iwvazyh+
RXW2v/kbV/RF+wdP7gy1bkoF9XG/W6HNgtu0pCUKkMqQSj1qdhZjtbe0f9g39kh6Q002eaG0pM+8
WQ0wtBjCriuJ3Ozo/wDpTD0DSadIjEmdXqs9iOzv1h0T6Fqn38ESIR2d+sOifQtU+/gjufWpEAAA
D4pKVpNC0kpKiyMj4jIfQAR/gtLjpSxSrpqUCKgsm47aWVpbT3EpNxCjIi4iLPIiyItgcHK5y6q3
MRfdCQAAj/ByucuqtzEX3QcHK5y6q3MRfdCQAAj/AAcrnLqrcxF90HByucuqtzEX3QkAAI/wcrnL
qrcxF90HByucuqtzEX3QkAAI/wAHK5y6q3MRfdBwcrnLqrcxF90JAACP8HK5y6q3MRfdBwcrnLqr
cxF90JAACP8AByucuqtzEX3QcHK5y6q3MRfdCQAAj/ByucuqtzEX3QcHK5y6q3MRfdCQAAj/AAcr
nLqrcxF90HByucuqtzEX3QkAAI/wcrnLqrcxF90HByucuqtzEX3QkAAI/wAHK5y6q3MRfdBwcrnL
qrcxF90JAACP8HK5y6q3MRfdBwcrnLqrcxF90JAACP8AByucuqtzEX3QcHK5y6q3MRfdCQAAj/By
ucuqtzEX3QcHK5y6q3MRfdCQAAj/AAcrnLqrcxF90HByucuqtzEX3QkAAI/wcrnLqrcxF90HByuc
uqtzEX3QkAAI/wAHK5y6q3MRfdBwcrnLqrcxF90JAACP8HK5y6q3MRfdBwcrnLqrcxF90JAACP8A
ByucuqtzEX3QcHK5y6q3MRfdCQAAj/ByucuqtzEX3QcHK5y6q3MRfdCQAAj/AAcrnLqrcxF90HBy
ucuqtzEX3QkAAI/wcrnLqrcxF90HByucuqtzEX3QkAAI/wAHK5y6q3MRfdBwcrnLqrcxF90JAACP
8HK5y6q3MRfdBwcrnLqrcxF90JAACP8AByucuqtzEX3QcHK5y6q3MRfdCQAAj/ByucuqtzEX3QcH
K5y6q3MRfdCQAAj/AAcrnLqrcxF90HByucuqtzEX3QkAAI/wcrnLqrcxF90HByucuqtzEX3QkAAI
/wAHK5y6q3MRfdBwcrnLqrcxF90JAACP8HK5y6q3MRfdBwcrnLqrcxF90JAACP8AByucuqtzEX3Q
cHK5y6q3MRfdCQAAj/ByucuqtzEX3QcHK5y6q3MRfdCQAAj/AAcrnLqrcxF90HByucuqtzEX3QkA
AI/wcrnLqrcxF90HByucuqtzEX3QkAAI/wAHK5y6q3MRfdBwcrnLqrcxF90JAACP8HK5y6q3MRfd
DJUuksUtLhoccfffVpvPunm44rLIjM/MWwiLYRcQvgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAUpX5q9+7V/YVRSlfmr37tX9gGJsf9C6B9FxfukjMrWltClrPJKSMzM+4Qw1kf
oXQPouL90kZpSSURpUWZGWRkBPchXXpwr5c0n0hIdenCvlzSfSEjMcA7M5MU30ZPsDgHZnJim+jJ
9gy/u93i863SHGjxYfr04V8uaT6QkOvThXy5pPpCRmOAdmcmKb6Mn2BwDszkxTfRk+wP7vd4ot0j
xo8WH69OFfLmk+kJDr04V8uaT6QkZjgHZnJim+jJ9gcA7M5MU30ZPsD+73eJbpHjR4sP16cK+XNJ
9ISHXpwr5c0n0hIzHAOzOTFN9GT7A4B2ZyYpvoyfYH93u8S3SPGjxYfr04V8uaT6QkOvThXy5pPp
CRmOAdmcmKb6Mn2BwDszkxTfRk+wP7vd4lukeNHiw/Xpwr5c0n0hIdenCvlzSfSEjMcA7M5MU30Z
PsDgHZnJim+jJ9gf3e7xLdI8aPFh+vThXy5pPpCQ69OFfLmk+kJGY4B2ZyYpvoyfYHAOzOTFN9GT
7A/u93iW6R40eLD9enCvlzSfSEh16cK+XNJ9ISMxwDszkxTfRk+wOAdmcmKb6Mn2B/d7vEt0jxo8
WH69OFfLmk+kJDr04V8uaT6QkZjgHZnJim+jJ9gcA7M5MU30ZPsD+73eJbpHjR4sP16cK+XNJ9IS
HXpwr5c0n0hIzHAOzOTFN9GT7A4B2ZyYpvoyfYH93u8S3SPGjxYfr04V8uaT6QkOvThXy5pPpCRm
OAdmcmKb6Mn2BwDszkxTfRk+wP7vd4lukeNHiw/Xpwr5c0n0hIdenCvlzSfSEjMcA7M5MU30ZPsD
gHZnJim+jJ9gf3e7xLdI8aPFh+vThXy5pPpCQ69OFfLmk+kJGY4B2ZyYpvoyfYHAOzOTFN9GT7A/
u93iW6R40eLD9enCvlzSfSEh16cK+XNJ9ISMxwDszkxTfRk+wOAdmcmKb6Mn2B/d7vEt0jxo8WH6
9OFfLmk+kJDr04V8uaT6QkZjgHZnJim+jJ9gcA7M5MU30ZPsD+73eJbpHjR4sP16cK+XNJ9ISHXp
wr5c0n0hIzHAOzOTFN9GT7A4B2ZyYpvoyfYH93u8S3SPGjxYfr04V8uaT6QkOvThXy5pPpCRmOAd
mcmKb6Mn2BwDszkxTfRk+wP7vd4lukeNHiw/Xpwr5c0n0hIdenCvlzSfSEjMcA7M5MU30ZPsDgHZ
nJim+jJ9gf3e7xLdI8aPFh+vThXy5pPpCQ69OFfLmk+kJGY4B2ZyYpvoyfYHAOzOTFN9GT7A/u93
iW6R40eLD9enCvlzSfSEh16cK+XNJ9ISMxwDszkxTfRk+wOAdmcmKb6Mn2B/d7vEt0jxo8WH69OF
fLmk+kJDr04V8uaT6QkZjgHZnJim+jJ9gcA7M5MU30ZPsD+73eJbpHjR4sP16cK+XNJ9ISHXpwr5
c0n0hIzHAOzOTFN9GT7A4B2ZyYpvoyfYH93u8S3SPGjxYfr04V8uaT6QkOvThXy5pPpCRmOAdmcm
Kb6Mn2BwDszkxTfRk+wP7vd4lukeNHiw/Xpwr5c0n0hIdenCvlzSfSEjMcA7M5MU30ZPsDgHZnJi
m+jJ9gf3e7xLdI8aPFh+vThXy5pPpCQ69OFfLmk+kJGY4B2ZyYpvoyfYHAOzOTFN9GT7A/u93iW6
R40eLD9enCvlzSfSEh16cK+XNJ9ISMxwDszkxTfRk+wOAdmcmKb6Mn2B/d7vEt0jxo8WH69OFfLm
k+kJDr04V8uaT6QkZjgHZnJim+jJ9gcA7M5MU30ZPsD+73eJbpHjR4sP16cK+XNJ9ISHXpwr5c0n
0hIzHAOzOTFN9GT7A4B2ZyYpvoyfYH93u8S3SPGjxYfr04V8uaT6QkOvThXy5pPpCRmOAdmcmKb6
Mn2BwDszkxTfRk+wP7vd4lukeNHiw/Xpwr5c0n0hIdenCvlzSfSEjMcA7M5MU30ZPsDgHZnJim+j
J9gf3e7xLdI8aPFh+vThXy5pPpCQ69OFfLmk+kJGY4B2ZyYpvoyfYHAOzOTFN9GT7A/u93iW6R40
eLD9enCvlzSfSEh16cK+XNJ9ISMxwDszkxTfRk+wOAdmcmKb6Mn2B/d7vEt0jxo8WH69OFfLmk+k
JDr04V8uaT6QkZjgHZnJim+jJ9gcA7M5MU30ZPsD+73eJbpHjR4sP16cK+XNJ9ISMpb2IVlXZNXT
rcuSDUJLbRvKaYdJSiQRkRqyLuZqIv4ipwDszkxTfRk+wXdNtm36M+qVSqNEiPKQbZrZaSlRpMyP
LMu5mRfUJjaXzs0w403XjaTTbrte7JiOzv1h0T6Fqn38ESIR2d+sOifQtU+/gjR3JEAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAPKkktJoUWZKLIx6ABHGIl00SO3TKTGp8yIwWgwb7ymlobL4qDySZHkWzPZsIh633
fXiWj+nOe7EhABHt9314lo/pznuw33fXiWj+nOe7EhABHt9314lo/pznuw33fXiWj+nOe7EhABHt
9314lo/pznuw33fXiWj+nOe7EhABHt9314lo/pznuw33fXiWj+nOe7EhABHt9314lo/pznuw33fX
iWj+nOe7EhABHt9314lo/pznuw33fXiWj+nOe7EhABHt9314lo/pznuw33fXiWj+nOe7EhABHt93
14lo/pznuw33fXiWj+nOe7EhABHt9314lo/pznuw33fXiWj+nOe7EhABHt9314lo/pznuw33fXiW
j+nOe7EhABHt9314lo/pznuw33fXiWj+nOe7EhABHt9314lo/pznuw33fXiWj+nOe7EhABHt9314
lo/pznuw33fXiWj+nOe7EhABHt9314lo/pznuw33fXiWj+nOe7EhABHt9314lo/pznuw33fXiWj+
nOe7EhABHt9314lo/pznuw33fXiWj+nOe7EhABHt9314lo/pznuw33fXiWj+nOe7EhABHt9314lo
/pznuw33fXiWj+nOe7EhABHt9314lo/pznuw33fXiWj+nOe7EhABHt9314lo/pznuw33fXiWj+nO
e7EhABHt9314lo/pznuw33fXiWj+nOe7EhABHt9314lo/pznuw33fXiWj+nOe7EhABHt9314lo/p
znuw33fXiWj+nOe7EhABHt9314lo/pznuw33fXiWj+nOe7EhABHt9314lo/pznuw33fXiWj+nOe7
EhABHt9314lo/pznuw33fXiWj+nOe7EhABHt9314lo/pznuw33fXiWj+nOe7EhABHt9314lo/pzn
uw33fXiWj+nOe7EhABHt9314lo/pznuw33fXiWj+nOe7EhABHt9314lo/pznuw33fXiWj+nOe7Eh
ABHt9314lo/pznuw33fXiWj+nOe7EhABHt9314lo/pznuw33fXiWj+nOe7EhABHt9314lo/pznuw
33fXiWj+nOe7EhABHt9314lo/pznuw33fXiWj+nOe7EhABHt9314lo/pznuxc06mT3Kl1crRs76S
wqMw0yZmhltRpUvtjyNRqNCMz2bEp2cZnmAAAAAAAGLul242LYq71nRYMmvtwJCqUzPWpEZ2YTaj
ZS8pPbJbNeiSjLaRGeW0BlAHMHCj4RvyYYH+vKj0A4UfCN+TDA/15UegA6fAcwcKPhG/Jhgf68qP
QDhR8I35MMD/AF5UegA6fAcwcKPhG/Jhgf68qPQDhR8I35MMD/XlR6ADp8BzBwo+Eb8mGB/ryo9A
OFHwjfkwwP8AXlR6ADp8BzBwo+Eb8mGB/ryo9AOFHwjfkwwP9eVHoAOnwHMHCj4RvyYYH+vKj0A4
UfCN+TDA/wBeVHoAOnwHMHCj4RvyYYH+vKj0A4UfCN+TDA/15UegA6fAcwcKPhG/Jhgf68qPQDhR
8I35MMD/AF5UegA6fAcwcKPhG/Jhgf68qPQDhR8I35MMD/XlR6ADp8BzBwo+Eb8mGB/ryo9AOFHw
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
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA//9k=
--000000000000f491e805f213409b
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--000000000000f491e805f213409b--

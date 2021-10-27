Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F9843C0F5
	for <lists+cake@lfdr.de>; Wed, 27 Oct 2021 05:46:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DF3493CB59;
	Tue, 26 Oct 2021 23:46:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1635306367;
	bh=jdjjdtZI57L6maryvaPFixneDgNsiIeKoLA/BU4dud4=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=nO0dh/WyCYo1gy9nh5gXIV2C6pFVRvrQZBXEVbbp1RDu+aiSZMhgCxcaUxrOqVlgR
	 N9bNqVMsbzGSKHbRh70Srgh27k3Agfvw///eFPjKyBYNvUdTHbZgtolYH3vZSzGOfs
	 MKI1WUGkXyAnhAQzATIRKXwLOtWjToD2dP3FiDwg6kTCKq2XSBLSu5iGEONzWF6d7G
	 B4ynVeiK+JYoHQRhMoJXR2DBMqxjHdxVaDMd1aDE8zUSUI/IO++4VfWdcyCOx0F4Eb
	 pcuL/MqcRG6dw+kOfq4+4WWVdDOeHICwRx3JVLjy+/KqvkyU+ceRWq1ZKbsgxpl4Px
	 N6mlLcPxFAr8w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 101053CB48
 for <cake@lists.bufferbloat.net>; Tue, 26 Oct 2021 23:46:06 -0400 (EDT)
Received: by mail-ed1-x531.google.com with SMTP id w15so4858475edc.9
 for <cake@lists.bufferbloat.net>; Tue, 26 Oct 2021 20:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7espep2DvtncBdQayg+1KP3uk75ISzHia9YG7YIA7TU=;
 b=MQQ9IS22h+0n368dGoEWUZe97tIy6CORzH8lJTzYDY878UfkLeRM242P2bS+aXqqmj
 sLY1bZheC/2jdbZb/+9EjY21cHYLaH8/2sBW4q6IQ6LEnqSKHLsbvI37MxNTdeTTe/9Q
 GpSCxeL0I4NiwkBtQHNo8W2jYg5VM+zTjEyQ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7espep2DvtncBdQayg+1KP3uk75ISzHia9YG7YIA7TU=;
 b=0/lpL79cclJnSKsqGcoerADbrcwz5S2iStVti465KgniGJhm5sm+qt7tSs7eK995gZ
 1IBRKxuVLRDuXBsfL6nldVgGJb5a9B/Hg0BVnonJ0MVHFpNln2DflnF2KXSoJglUpT0j
 n2jwm5n121T4tWndOBzSUoOuCZSMzVXLClb19n1u/9fHJrks4HuE2eYRgPlc2/xCzR/G
 5zSbKYxJKJusbZXYUxawxd+vOpQN8KlbkQJ8C9hLpRiPP1UbS+GAbSLk9du3pL0nek78
 X8qjdj6HLS31uVLhjly29sKTLskAFmir/CjW18XxuYza9Vq7YgiAkhlGxzN7YaI79fFi
 zo5w==
X-Gm-Message-State: AOAM531P2Q30ym1r123X9k/iamfC2z8x1NXg+5uZDWdx3x9xyacjCBOo
 /xUJMFoeWKVuVwib63JyfGW1JAHAxFVmRRnmV2RXAqr6YVPy+F20LZLmHsljI7FSd+7XoDVZdse
 Z0egwzxvhIe2BijvfR3qtBzEM9/ki
X-Google-Smtp-Source: ABdhPJzarU3U9JyiuJqs3/D+WjqSDv/6+YK3tv7mJR/ItINlzDQL3Yohtx/H3cOvD8gXOLx6SNx3sSBlaKqujvxuWC4=
X-Received: by 2002:a17:906:1456:: with SMTP id
 q22mr35024918ejc.291.1635306364180; 
 Tue, 26 Oct 2021 20:46:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAHb6LvosV921NSpYXpzgRScuJDFNemCsUGqLfOm5NsOyt+TOVA@mail.gmail.com>
 <6D6492CF-BD6D-45BF-BD40-FA49166F6DA4@apple.com>
 <34fac143-f1be-9886-4931-65139acaca2e@gmail.com>
In-Reply-To: <34fac143-f1be-9886-4931-65139acaca2e@gmail.com>
Date: Tue, 26 Oct 2021 20:45:52 -0700
Message-ID: <CAHb6LvraLJO8jHJ3RMbTxyrfs+bM05QvGB_JWpOZx9E2nAo89Q@mail.gmail.com>
To: Eric Dumazet <eric.dumazet@gmail.com>
Subject: Re: [Cake] [Bloat] [Make-wifi-fast] TCP_NOTSENT_LOWAT applied to
	e2e TCP msg latency
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
Cc: Stuart Cheshire <cheshire@apple.com>, starlink@lists.bufferbloat.net,
 =?UTF-8?Q?Valdis_Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, codel <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Steve Crocker <steve@shinkuro.com>,
 Christoph Paasch <cpaasch@apple.com>, Vint Cerf <vint@google.com>
Content-Type: multipart/mixed; boundary="===============6059697545887238686=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6059697545887238686==
Content-Type: multipart/alternative; boundary="000000000000f04f3d05cf4d6e1b"

--000000000000f04f3d05cf4d6e1b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is linux. The code flow is burst writes until the burst size, take a
timestamp, call select(), take second timestamp and insert time delta into
histogram, await clock_nanosleep() to schedule the next burst. (actually,
the deltas, inserts into the histogram and user i/o are done in another
thread, i.e. iperf 2's reporter thread.)

I still must be missing something.  Does anything else need to be set to
reduce the skb size? Everything seems to be indicating 4K writes even when
gso_max_size is 2000 (I assume these are units of bytes?) There are ten
writes, ten reads and ten  RTTs for the bursts.  I don't see partial writes
at the app level.

[root@localhost iperf2-code]# ip link set dev eth1 gso_max_size 2000
[root@localhost iperf2-code]# ip -d link sh dev eth1
9: eth1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state
UNKNOWN mode DEFAULT group default qlen 1000
    link/ether 00:90:4c:40:04:59 brd ff:ff:ff:ff:ff:ff promiscuity 0 minmtu
68 maxmtu 1500 addrgenmode eui64 numtxqueues 1 numrxqueues 1 gso_max_size
2000 gso_max_segs 65535
[root@localhost iperf2-code]# uname -r
5.0.9-301.fc30.x86_64


It looks like RTT is being driven by WiFi TXOPs as doubling the write size
increases the aggregation by two but has no significant effect on the RTTs.

4K writes: tot_mpdus 328 tot_ampdus 209 mpduperampdu 2


8k writes:  tot_mpdus 317 tot_ampdus 107 mpduperampdu 3


[root@localhost iperf2-code]# src/iperf -c 192.168.1.1%eth1 --trip-times -i
1 -e --tcp-write-prefetch 4 -l 4K --burst-size=3D40K --histograms
WARN: option of --burst-size without --burst-period defaults --burst-period
to 1 second
------------------------------------------------------------
Client connecting to 192.168.1.1, TCP port 5001 with pid 5145 via eth1 (1
flows)
Write buffer size: 4096 Byte
Bursting: 40.0 KByte every 1.00 seconds
TCP window size: 85.0 KByte (default)
Event based writes (pending queue watermark at 4 bytes)
Enabled select histograms bin-width=3D0.100 ms, bins=3D10000
------------------------------------------------------------
[  1] local 192.168.1.4%eth1 port 45680 connected with 192.168.1.1 port
5001 (MSS=3D1448) (prefetch=3D4) (trip-times) (sock=3D3) (ct=3D5.30 ms) on
2021-10-26 20:25:29 (PDT)
[ ID] Interval        Transfer    Bandwidth       Write/Err  Rtry
Cwnd/RTT        NetPwr
[  1] 0.00-1.00 sec  40.1 KBytes   329 Kbits/sec  11/0          0
14K/10091 us  4
[  1] 0.00-1.00 sec S8-PDF:
bin(w=3D100us):cnt(10)=3D1:1,36:1,40:1,44:1,46:1,48:1,49:1,50:2,52:1
(5.00/95.00/99.7%=3D1/52/52,Outliers=3D0,obl/obu=3D0/0) (5.121
ms/1635305129.152339)
[  1] 1.00-2.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/4990 us  8
[  1] 1.00-2.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,39:1,45:1,49:5,50:=
1
(5.00/95.00/99.7%=3D1/50/50,Outliers=3D0,obl/obu=3D0/0) (4.991
ms/1635305130.153330)
[  1] 2.00-3.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/4904 us  8
[  1] 2.00-3.00 sec S8-PDF:
bin(w=3D100us):cnt(10)=3D1:2,29:1,49:4,50:1,59:1,75:1
(5.00/95.00/99.7%=3D1/75/75,Outliers=3D0,obl/obu=3D0/0) (7.455
ms/1635305131.147353)
[  1] 3.00-4.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/4964 us  8
[  1] 3.00-4.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,49:4,50:2,59:1,65:=
1
(5.00/95.00/99.7%=3D1/65/65,Outliers=3D0,obl/obu=3D0/0) (6.460
ms/1635305132.146338)
[  1] 4.00-5.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/4970 us  8
[  1] 4.00-5.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,49:6,59:1,65:1
(5.00/95.00/99.7%=3D1/65/65,Outliers=3D0,obl/obu=3D0/0) (6.404
ms/1635305133.146335)
[  1] 5.00-6.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/4986 us  8
[  1] 5.00-6.00 sec S8-PDF:
bin(w=3D100us):cnt(10)=3D1:2,48:1,49:1,50:4,59:1,64:1
(5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.395
ms/1635305134.146343)
[  1] 6.00-7.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/5059 us  8
[  1] 6.00-7.00 sec S8-PDF:
bin(w=3D100us):cnt(10)=3D1:2,39:1,49:3,50:2,60:1,85:1
(5.00/95.00/99.7%=3D1/85/85,Outliers=3D0,obl/obu=3D0/0) (8.417
ms/1635305135.148343)
[  1] 7.00-8.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/5407 us  8
[  1] 7.00-8.00 sec S8-PDF:
bin(w=3D100us):cnt(10)=3D1:2,40:1,49:4,50:1,59:1,75:1
(5.00/95.00/99.7%=3D1/75/75,Outliers=3D0,obl/obu=3D0/0) (7.428
ms/1635305136.147343)
[  1] 8.00-9.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/5188 us  8
[  1] 8.00-9.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,40:1,49:3,50:3,64:=
1
(5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.388
ms/1635305137.146284)
[  1] 9.00-10.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/5306 us  8
[  1] 9.00-10.00 sec S8-PDF:
bin(w=3D100us):cnt(10)=3D1:2,39:1,49:2,50:2,51:1,60:1,65:1
(5.00/95.00/99.7%=3D1/65/65,Outliers=3D0,obl/obu=3D0/0) (6.422
ms/1635305138.146316)
[  1] 0.00-10.01 sec   400 KBytes   327 Kbits/sec  102/0          0
14K/5939 us  7
[  1] 0.00-10.01 sec S8(f)-PDF:
bin(w=3D100us):cnt(100)=3D1:19,29:1,36:1,39:3,40:3,44:1,45:1,46:1,48:2,49:3=
3,50:18,51:1,52:1,59:5,60:2,64:2,65:3,75:2,85:1
(5.00/95.00/99.7%=3D1/65/85,Outliers=3D0,obl/obu=3D0/0) (8.417
ms/1635305135.148343)

[root@localhost iperf2-code]# src/iperf -s -i 1 -e -B 192.168.1.1%eth1
------------------------------------------------------------
Server listening on TCP port 5001 with pid 6287
Binding to local address 192.168.1.1 and iface eth1
Read buffer size:  128 KByte (Dist bin width=3D16.0 KByte)
TCP window size:  128 KByte (default)
------------------------------------------------------------
[  1] local 192.168.1.1%eth1 port 5001 connected with 192.168.1.4 port
45680 (MSS=3D1448) (burst-period=3D1.0000s) (trip-times) (sock=3D4) (peer
2.1.4-master) on 2021-10-26 20:25:29 (PDT)
[ ID] Burst (start-end)  Transfer     Bandwidth       XferTime  (DC%)
Reads=3DDist          NetPwr
[  1] 0.0001-0.0500 sec  40.1 KBytes  6.59 Mbits/sec  49.848 ms (5%)
 12=3D12:0:0:0:0:0:0:0  0
[  1] 1.0002-1.0461 sec  40.0 KBytes  7.14 Mbits/sec  45.913 ms (4.6%)
 10=3D10:0:0:0:0:0:0:0  0
[  1] 2.0002-2.0491 sec  40.0 KBytes  6.70 Mbits/sec  48.876 ms (4.9%)
 11=3D11:0:0:0:0:0:0:0  0
[  1] 3.0002-3.0501 sec  40.0 KBytes  6.57 Mbits/sec  49.886 ms (5%)
 10=3D10:0:0:0:0:0:0:0  0
[  1] 4.0002-4.0501 sec  40.0 KBytes  6.57 Mbits/sec  49.887 ms (5%)
 10=3D10:0:0:0:0:0:0:0  0
[  1] 5.0002-5.0501 sec  40.0 KBytes  6.57 Mbits/sec  49.881 ms (5%)
 10=3D10:0:0:0:0:0:0:0  0
[  1] 6.0002-6.0511 sec  40.0 KBytes  6.44 Mbits/sec  50.895 ms (5.1%)
 10=3D10:0:0:0:0:0:0:0  0
[  1] 7.0002-7.0501 sec  40.0 KBytes  6.57 Mbits/sec  49.889 ms (5%)
 10=3D10:0:0:0:0:0:0:0  0
[  1] 8.0002-8.0481 sec  40.0 KBytes  6.84 Mbits/sec  47.901 ms (4.8%)
 11=3D11:0:0:0:0:0:0:0  0
[  1] 9.0002-9.0491 sec  40.0 KBytes  6.70 Mbits/sec  48.872 ms (4.9%)
 10=3D10:0:0:0:0:0:0:0  0
[  1] 0.0000-10.0031 sec   400 KBytes   328 Kbits/sec
104=3D104:0:0:0:0:0:0:0

Bob

On Tue, Oct 26, 2021 at 6:12 PM Eric Dumazet <eric.dumazet@gmail.com> wrote=
:

>
>
> On 10/26/21 4:38 PM, Christoph Paasch wrote:
> > Hi Bob,
> >
> >> On Oct 26, 2021, at 4:23 PM, Bob McMahon <bob.mcmahon@broadcom.com
> <mailto:bob.mcmahon@broadcom.com>> wrote:
> >> I'm confused. I don't see any blocking nor partial writes per the
> write() at the app level with TCP_NOTSENT_LOWAT set at 4 bytes. The burst
> is 40K, the write size is 4K and the watermark is 4 bytes. There are ten
> writes per burst.
> >
> > You are on Linux here, right?
> >
> > AFAICS, Linux will still accept whatever fits in an skb. And that is
> likely more than 4K (with GSO on by default).
>
> This (max payload per skb) can be tuned at the driver level, at least for
> experimental purposes or dedicated devices.
>
> ip link set dev eth0 gso_max_size 8000
>
> To fetch current values :
>
> ip -d link sh dev eth0
>
>
> >
> > However, do you go back to select() after each write() or do you loop
> over the write() calls?
> >
> >
> > Christoph
> >
> >> The S8 histograms are the times waiting on the select().  The first
> value is the bin number (multiplied by 100usec bin width) and second the
> bin count. The worst case time is at the end and is timestamped per unix
> epoch.
> >>
> >> The second run is over a controlled WiFi link where a 99.7% point of
> 4-8ms for a WiFi TX op arbitration win is in the ballpark. The first is 1=
G
> wired and is in the 600 usec range. (No media arbitration there.)
> >>
> >>  [root@localhost iperf2-code]# src/iperf -c 10.19.87.9 --trip-times -i
> 1 -e --tcp-write-prefetch 4 -l 4K --burst-size=3D40K --histograms
> >> WARN: option of --burst-size without --burst-period defaults
> --burst-period to 1 second
> >> ------------------------------------------------------------
> >> Client connecting to 10.19.87.9, TCP port 5001 with pid 2124 (1 flows)
> >> Write buffer size: 4096 Byte
> >> Bursting: 40.0 KByte every 1.00 seconds
> >> TCP window size: 85.0 KByte (default)
> >> Event based writes (pending queue watermark at 4 bytes)
> >> Enabled select histograms bin-width=3D0.100 ms, bins=3D10000
> >> ------------------------------------------------------------
> >> [  1] local 10.19.87.10%eth0 port 33166 connected with 10.19.87.9 port
> 5001 (MSS=3D1448) (prefetch=3D4) (trip-times) (sock=3D3) (ct=3D0.54 ms) o=
n
> 2021-10-26 16:07:33 (PDT)
> >> [ ID] Interval        Transfer    Bandwidth       Write/Err  Rtry
> Cwnd/RTT        NetPwr
> >> [  1] 0.00-1.00 sec  40.1 KBytes   329 Kbits/sec  11/0          0
> 14K/5368 us  8
> >> [  1] 0.00-1.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:1,2:5,3:2,4:1,1=
1:1
> (5.00/95.00/99.7%=3D1/11/11,Outliers=3D0,obl/obu=3D0/0) (1.089
> ms/1635289653.928360)
> >> [  1] 1.00-2.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
> 14K/569 us  72
> >> [  1] 1.00-2.00 sec S8-PDF:
> bin(w=3D100us):cnt(10)=3D1:2,2:1,3:4,4:1,7:1,8:1
> (5.00/95.00/99.7%=3D1/8/8,Outliers=3D0,obl/obu=3D0/0) (0.736 ms/163528965=
4.928088)
> >> [  1] 2.00-3.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
> 14K/312 us  131
> >> [  1] 2.00-3.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,2:2,3:2,5:2,6=
:1
> (5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.548 ms/163528965=
5.927776)
> >> [  1] 3.00-4.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
> 14K/302 us  136
> >> [  1] 3.00-4.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,2:2,3:5,6:1
> (5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.584 ms/163528965=
6.927814)
> >> [  1] 4.00-5.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
> 14K/316 us  130
> >> [  1] 4.00-5.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,3:2,4:2,5:2,6=
:1
> (5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.572 ms/163528965=
7.927810)
> >> [  1] 5.00-6.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
> 14K/253 us  162
> >> [  1] 5.00-6.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,2:2,3:4,5:1
> (5.00/95.00/99.7%=3D1/5/5,Outliers=3D0,obl/obu=3D0/0) (0.417 ms/163528965=
8.927630)
> >> [  1] 6.00-7.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
> 14K/290 us  141
> >> [  1] 6.00-7.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,3:3,4:3,6:1
> (5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.573 ms/163528965=
9.927771)
> >> [  1] 7.00-8.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
> 14K/359 us  114
> >> [  1] 7.00-8.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,3:4,4:3,6:1
> (5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.570 ms/163528966=
0.927753)
> >> [  1] 8.00-9.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
> 14K/349 us  117
> >> [  1] 8.00-9.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,3:5,4:1,7:1
> (5.00/95.00/99.7%=3D1/7/7,Outliers=3D0,obl/obu=3D0/0) (0.608 ms/163528966=
1.927843)
> >> [  1] 9.00-10.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
>   14K/347 us  118
> >> [  1] 9.00-10.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,2:1,3:5,8:1
> (5.00/95.00/99.7%=3D1/8/8,Outliers=3D0,obl/obu=3D0/0) (0.725 ms/163528966=
2.927861)
> >> [  1] 0.00-10.01 sec   400 KBytes   327 Kbits/sec  102/0          0
>   14K/1519 us  27
> >> [  1] 0.00-10.01 sec S8(f)-PDF:
> bin(w=3D100us):cnt(100)=3D1:25,2:13,3:36,4:11,5:5,6:5,7:2,8:2,11:1
> (5.00/95.00/99.7%=3D1/7/11,Outliers=3D0,obl/obu=3D0/0) (1.089
> ms/1635289653.928360)
> >>
> >> [root@localhost iperf2-code]# src/iperf -c 192.168.1.1 --trip-times -i
> 1 -e --tcp-write-prefetch 4 -l 4K --burst-size=3D40K --histograms
> >> WARN: option of --burst-size without --burst-period defaults
> --burst-period to 1 second
> >> ------------------------------------------------------------
> >> Client connecting to 192.168.1.1, TCP port 5001 with pid 2131 (1 flows=
)
> >> Write buffer size: 4096 Byte
> >> Bursting: 40.0 KByte every 1.00 seconds
> >> TCP window size: 85.0 KByte (default)
> >> Event based writes (pending queue watermark at 4 bytes)
> >> Enabled select histograms bin-width=3D0.100 ms, bins=3D10000
> >> ------------------------------------------------------------
> >> [  1] local 192.168.1.4%eth1 port 45518 connected with 192.168.1.1 por=
t
> 5001 (MSS=3D1448) (prefetch=3D4) (trip-times) (sock=3D3) (ct=3D5.48 ms) o=
n
> 2021-10-26 16:07:56 (PDT)
> >> [ ID] Interval        Transfer    Bandwidth       Write/Err  Rtry
> Cwnd/RTT        NetPwr
> >> [  1] 0.00-1.00 sec  40.1 KBytes   329 Kbits/sec  11/0          0
> 14K/10339 us  4
> >> [  1] 0.00-1.00 sec S8-PDF:
> bin(w=3D100us):cnt(10)=3D1:1,40:1,47:1,49:2,50:3,51:1,60:1
> (5.00/95.00/99.7%=3D1/60/60,Outliers=3D0,obl/obu=3D0/0) (5.990
> ms/1635289676.802143)
> >> [  1] 1.00-2.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
> 14K/4853 us  8
> >> [  1] 1.00-2.00 sec S8-PDF:
> bin(w=3D100us):cnt(10)=3D1:2,38:1,39:1,44:1,45:1,49:1,51:1,52:1,60:1
> (5.00/95.00/99.7%=3D1/60/60,Outliers=3D0,obl/obu=3D0/0) (5.937
> ms/1635289677.802274)
> >> [  1] 2.00-3.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
> 14K/4991 us  8
> >> [  1] 2.00-3.00 sec S8-PDF:
> bin(w=3D100us):cnt(10)=3D1:2,48:1,49:2,50:2,51:1,60:1,64:1
> (5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.307
> ms/1635289678.794326)
> >> [  1] 3.00-4.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
> 14K/4610 us  9
> >> [  1] 3.00-4.00 sec S8-PDF:
> bin(w=3D100us):cnt(10)=3D1:2,49:3,50:3,56:1,64:1
> (5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.362
> ms/1635289679.794335)
> >> [  1] 4.00-5.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
> 14K/5028 us  8
> >> [  1] 4.00-5.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,49:6,59:1,64:=
1
> (5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.367
> ms/1635289680.794399)
> >> [  1] 5.00-6.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
> 14K/5113 us  8
> >> [  1] 5.00-6.00 sec S8-PDF:
> bin(w=3D100us):cnt(10)=3D1:2,49:3,50:2,58:1,60:1,65:1
> (5.00/95.00/99.7%=3D1/65/65,Outliers=3D0,obl/obu=3D0/0) (6.442
> ms/1635289681.794392)
> >> [  1] 6.00-7.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
> 14K/5054 us  8
> >> [  1] 6.00-7.00 sec S8-PDF:
> bin(w=3D100us):cnt(10)=3D1:2,39:1,49:3,51:1,60:2,64:1
> (5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.374
> ms/1635289682.794335)
> >> [  1] 7.00-8.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
> 14K/5138 us  8
> >> [  1] 7.00-8.00 sec S8-PDF:
> bin(w=3D100us):cnt(10)=3D1:2,39:2,40:1,49:2,50:1,60:1,64:1
> (5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.396
> ms/1635289683.794338)
> >> [  1] 8.00-9.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
> 14K/5329 us  8
> >> [  1] 8.00-9.00 sec S8-PDF:
> bin(w=3D100us):cnt(10)=3D1:2,38:1,45:2,49:1,50:3,63:1
> (5.00/95.00/99.7%=3D1/63/63,Outliers=3D0,obl/obu=3D0/0) (6.292
> ms/1635289684.794262)
> >> [  1] 9.00-10.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
>   14K/5329 us  8
> >> [  1] 9.00-10.00 sec S8-PDF:
> bin(w=3D100us):cnt(10)=3D1:2,39:1,49:3,50:3,84:1
> (5.00/95.00/99.7%=3D1/84/84,Outliers=3D0,obl/obu=3D0/0) (8.306
> ms/1635289685.796315)
> >> [  1] 0.00-10.01 sec   400 KBytes   327 Kbits/sec  102/0          0
>   14K/6331 us  6
> >> [  1] 0.00-10.01 sec S8(f)-PDF:
> bin(w=3D100us):cnt(100)=3D1:19,38:2,39:5,40:2,44:1,45:3,47:1,48:1,49:26,5=
0:17,51:4,52:1,56:1,58:1,59:1,60:7,63:1,64:5,65:1,84:1
> (5.00/95.00/99.7%=3D1/64/84,Outliers=3D0,obl/obu=3D0/0) (8.306
> ms/1635289685.796315)
> >>
> >> Bob
> >>
> >> On Tue, Oct 26, 2021 at 11:45 AM Christoph Paasch <cpaasch@apple.com
> <mailto:cpaasch@apple.com>> wrote:
> >>
> >>     Hello,
> >>
> >>     > On Oct 25, 2021, at 9:24 PM, Eric Dumazet <eric.dumazet@gmail.co=
m
> <mailto:eric.dumazet@gmail.com>> wrote:
> >>     >
> >>     >
> >>     >
> >>     > On 10/25/21 8:11 PM, Stuart Cheshire via Bloat wrote:
> >>     >> On 21 Oct 2021, at 17:51, Bob McMahon via Make-wifi-fast <
> make-wifi-fast@lists.bufferbloat.net <mailto:
> make-wifi-fast@lists.bufferbloat.net>> wrote:
> >>     >>
> >>     >>> Hi All,
> >>     >>>
> >>     >>> Sorry for the spam. I'm trying to support a meaningful TCP
> message latency w/iperf 2 from the sender side w/o requiring e2e clock
> synchronization. I thought I'd try to use the TCP_NOTSENT_LOWAT event to
> help with this. It seems that this event goes off when the bytes are in
> flight vs have reached the destination network stack. If that's the case,
> then iperf 2 client (sender) may be able to produce the message latency b=
y
> adding the drain time (write start to TCP_NOTSENT_LOWAT) and the sampled
> RTT.
> >>     >>>
> >>     >>> Does this seem reasonable?
> >>     >>
> >>     >> I=E2=80=99m not 100% sure what you=E2=80=99re asking, but I wil=
l try to help.
> >>     >>
> >>     >> When you set TCP_NOTSENT_LOWAT, the TCP implementation won=E2=
=80=99t
> report your endpoint as writable (e.g., via kqueue or epoll) until less
> than that threshold of data remains unsent. It won=E2=80=99t stop you wri=
ting more
> bytes if you want to, up to the socket send buffer size, but it won=E2=80=
=99t *ask*
> you for more data until the TCP_NOTSENT_LOWAT threshold is reached.
> >>     >
> >>     >
> >>     > When I implemented TCP_NOTSENT_LOWAT back in 2013 [1], I made
> sure that sendmsg() would actually
> >>     > stop feeding more bytes in TCP transmit queue if the current
> amount of unsent bytes
> >>     > was above the threshold.
> >>     >
> >>     > So it looks like Apple implementation is different, based on you=
r
> description ?
> >>
> >>     Yes, TCP_NOTSENT_LOWAT only impacts the wakeup on iOS/macOS/...
> >>
> >>     An app can still fill the send-buffer if it does a sendmsg() with =
a
> large buffer or does repeated calls to sendmsg().
> >>
> >>     Fur Apple, the goal of TCP_NOTSENT_LOWAT was to allow an app to
> quickly change the data it "scheduled" to send. And thus allow the app to
> write the smallest "logical unit" it has. If that unit is 512KB large, th=
e
> app is allowed to send that.
> >>     For example, in case of video-streaming one may want to skip ahead
> in the video. In that case the app still needs to transmit the remaining
> parts of the previous frame anyways, before it can send the new video fra=
me.
> >>     That's the reason why the Apple implementation allows one to write
> more than just the lowat threshold.
> >>
> >>
> >>     That being said, I do think that Linux's way allows for an easier
> API because the app does not need to be careful at how much data it sends
> after an epoll/kqueue wakeup. So, the latency-benefits will be easier to
> get.
> >>
> >>
> >>     Christoph
> >>
> >>
> >>
> >>     > [1]
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=
=3Dc9bee3b7fdecb0c1d070c7b54113b3bdfb9a3d36
> <
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=
=3Dc9bee3b7fdecb0c1d070c7b54113b3bdfb9a3d36
> >
> >>     >
> >>     > netperf does not use epoll(), but rather a loop over sendmsg().
> >>     >
> >>     > One of the point of TCP_NOTSENT_LOWAT for Google was to be able
> to considerably increase
> >>     > max number of bytes in transmit queues (3rd column of
> /proc/sys/net/ipv4/tcp_wmem)
> >>     > by 10x, allowing for autotune to increase BDP for big RTT flows,
> this without
> >>     > increasing memory needs for flows with small RTT.
> >>     >
> >>     > In other words, the TCP implementation attempts to keep BDP byte=
s
> in flight + TCP_NOTSENT_LOWAT bytes buffered and ready to go. The BDP of
> bytes in flight is necessary to fill the network pipe and get good
> throughput. The TCP_NOTSENT_LOWAT of bytes buffered and ready to go is
> provided to give the source software some advance notice that the TCP
> implementation will soon be looking for more bytes to send, so that the
> buffer doesn=E2=80=99t run dry, thereby lowering throughput. (The old SO_=
SNDBUF
> option conflates both =E2=80=9Cbytes in flight=E2=80=9D and =E2=80=9Cbyte=
s buffered and ready to
> go=E2=80=9D into the same number.)
> >>     >>
> >>     >> If you wait for the TCP_NOTSENT_LOWAT notification, write a
> chunk of n bytes of data, and then wait for the next TCP_NOTSENT_LOWAT
> notification, that will tell you roughly how long it took n bytes to depa=
rt
> the machine. You won=E2=80=99t know why, though. The bytes could depart t=
he machine
> in response for acks indicating that the same number of bytes have been
> accepted at the receiver. But the bytes can also depart the machine becau=
se
> CWND is growing. Of course, both of those things are usually happening at
> the same time.
> >>     >>
> >>     >> How to use TCP_NOTSENT_LOWAT is explained in this video:
> >>     >>
> >>     >> <https://developer.apple.com/videos/play/wwdc2015/719/?time=3D2=
199
> <https://developer.apple.com/videos/play/wwdc2015/719/?time=3D2199>>
> >>     >>
> >>     >> Later in the same video is a two-minute demo (time offset 42:00
> to time offset 44:00) showing a =E2=80=9Cbefore and after=E2=80=9D demo i=
llustrating the
> dramatic difference this makes for screen sharing responsiveness.
> >>     >>
> >>     >> <https://developer.apple.com/videos/play/wwdc2015/719/?time=3D2=
520
> <https://developer.apple.com/videos/play/wwdc2015/719/?time=3D2520>>
> >>     >>
> >>     >> Stuart Cheshire
> >>     >> _______________________________________________
> >>     >> Bloat mailing list
> >>     >> Bloat@lists.bufferbloat.net <mailto:Bloat@lists.bufferbloat.net=
>
> >>     >> https://lists.bufferbloat.net/listinfo/bloat <
> https://lists.bufferbloat.net/listinfo/bloat>
> >>     >>
> >>     > _______________________________________________
> >>     > Bloat mailing list
> >>     > Bloat@lists.bufferbloat.net <mailto:Bloat@lists.bufferbloat.net>
> >>     > https://lists.bufferbloat.net/listinfo/bloat <
> https://lists.bufferbloat.net/listinfo/bloat>
> >>
> >>
> >> This electronic communication and the information and any files
> transmitted with it, or attached to it, are confidential and are intended
> solely for the use of the individual or entity to whom it is addressed an=
d
> may contain information that is confidential, legally privileged, protect=
ed
> by privacy laws, or otherwise restricted from disclosure to anyone else. =
If
> you are not the intended recipient or the person responsible for deliveri=
ng
> the e-mail to the intended recipient, you are hereby notified that any us=
e,
> copying, distributing, dissemination, forwarding, printing, or copying of
> this e-mail is strictly prohibited. If you received this e-mail in error,
> please return the e-mail to the sender, delete it from your computer, and
> destroy any printed copy of it.
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

--000000000000f04f3d05cf4d6e1b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This is linux. The code=C2=A0flow is burst writes until th=
e burst size, take a timestamp, call select(), take second timestamp and in=
sert time delta into histogram, await clock_nanosleep() to schedule the nex=
t burst. (actually, the deltas, inserts into the histogram and user i/o are=
 done in another thread, i.e. iperf 2&#39;s reporter thread.)<div><div><br>=
</div><div>I still must be missing something.=C2=A0 Does anything else need=
 to be set to reduce the skb size? Everything=C2=A0seems to be indicating 4=
K writes even when gso_max_size is 2000 (I assume these are units of bytes?=
) There are ten writes, ten reads and ten=C2=A0 RTTs for the bursts.=C2=A0 =
I don&#39;t see partial writes at the app level.=C2=A0<br><br></div></div><=
blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"><div><div><p=
 class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-va=
riant-east-asian:normal;font-stretch:normal;font-size:15px;line-height:norm=
al;font-family:Menlo;color:rgb(0,0,0)"><span style=3D"font-family:Arial,Hel=
vetica,sans-serif;font-size:small;color:rgb(34,34,34)">[root@localhost iper=
f2-code]# ip link set dev eth1 gso_max_size 2000</span></p></div></div><div=
><div>[root@localhost iperf2-code]# ip -d link sh dev eth1</div></div><div>=
<div>9: eth1: &lt;BROADCAST,MULTICAST,UP,LOWER_UP&gt; mtu 1500 qdisc fq_cod=
el state UNKNOWN mode DEFAULT group default qlen 1000</div></div><div><div>=
=C2=A0 =C2=A0 link/ether 00:90:4c:40:04:59 brd ff:ff:ff:ff:ff:ff promiscuit=
y 0 minmtu 68 maxmtu 1500 addrgenmode eui64 numtxqueues 1 numrxqueues 1 gso=
_max_size 2000 gso_max_segs 65535 </div></div><div><div>[root@localhost ipe=
rf2-code]# uname -r</div></div><div><div>5.0.9-301.fc30.x86_64</div></div><=
/blockquote><div><div><br>It looks like RTT is being driven by WiFi TXOPs a=
s doubling the write size increases the aggregation by two but has no signi=
ficant effect on the RTTs.</div><div><br></div></div><blockquote style=3D"m=
argin:0 0 0 40px;border:none;padding:0px"><div><div><p class=3D"gmail-p1" s=
tyle=3D"margin:0px;font-variant-numeric:normal;font-variant-east-asian:norm=
al;font-stretch:normal;font-size:15px;line-height:normal;font-family:Menlo;=
color:rgb(0,0,0)"><span class=3D"gmail-s1" style=3D"font-variant-ligatures:=
no-common-ligatures">4K writes: tot_mpdus 328 tot_ampdus 209 mpduperampdu 2=
</span></p></div></div></blockquote><div>





<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:15px;line-height:no=
rmal;font-family:Menlo;color:rgb(0,0,0)"><span class=3D"gmail-s1" style=3D"=
font-variant-ligatures:no-common-ligatures"><br></span></p>





</div><blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"><div>=
<p class=3D"gmail-p1" style=3D"margin:0px;font-variant-numeric:normal;font-=
variant-east-asian:normal;font-stretch:normal;font-size:15px;line-height:no=
rmal;font-family:Menlo;color:rgb(0,0,0)"><span style=3D"font-variant-ligatu=
res:no-common-ligatures">8k writes:=C2=A0 tot_mpdus 317 tot_ampdus 107 mpdu=
perampdu 3</span></p></div></blockquote><div><p class=3D"gmail-p1" style=3D=
"margin:0px;font-variant-numeric:normal;font-variant-east-asian:normal;font=
-stretch:normal;font-size:15px;line-height:normal;font-family:Menlo;color:r=
gb(0,0,0)"><br></p>[root@localhost iperf2-code]# src/iperf -c 192.168.1.1%e=
th1 --trip-times -i 1 -e --tcp-write-prefetch 4 -l 4K --burst-size=3D40K --=
histograms<br>WARN: option of --burst-size without --burst-period defaults =
--burst-period to 1 second<br>---------------------------------------------=
---------------<br>Client connecting to 192.168.1.1, TCP port 5001 with pid=
 5145 via eth1 (1 flows)<br>Write buffer size: 4096 Byte<br>Bursting: 40.0 =
KByte every 1.00 seconds<br>TCP window size: 85.0 KByte (default)<br>Event =
based writes (pending queue watermark at 4 bytes)<br>Enabled select histogr=
ams bin-width=3D0.100 ms, bins=3D10000<br>---------------------------------=
---------------------------<br>[ =C2=A01] local 192.168.1.4%eth1 port 45680=
 connected with 192.168.1.1 port 5001 (MSS=3D1448) (prefetch=3D4) (trip-tim=
es) (sock=3D3) (ct=3D5.30 ms) on 2021-10-26 20:25:29 (PDT)<br>[ ID] Interva=
l =C2=A0 =C2=A0 =C2=A0 =C2=A0Transfer =C2=A0 =C2=A0Bandwidth =C2=A0 =C2=A0 =
=C2=A0 Write/Err =C2=A0Rtry =C2=A0 =C2=A0 Cwnd/RTT =C2=A0 =C2=A0 =C2=A0 =C2=
=A0NetPwr<br>[ =C2=A01] 0.00-1.00 sec =C2=A040.1 KBytes =C2=A0 329 Kbits/se=
c =C2=A011/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/1=
0091 us =C2=A04<br>[ =C2=A01] 0.00-1.00 sec S8-PDF: bin(w=3D100us):cnt(10)=
=3D1:1,36:1,40:1,44:1,46:1,48:1,49:1,50:2,52:1 (5.00/95.00/99.7%=3D1/52/52,=
Outliers=3D0,obl/obu=3D0/0) (5.121 ms/1635305129.152339)<br>[ =C2=A01] 1.00=
-2.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =C2=A010/0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/4990 us =C2=A08<br>[ =C2=A01=
] 1.00-2.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,39:1,45:1,49:5,50:1 (5=
.00/95.00/99.7%=3D1/50/50,Outliers=3D0,obl/obu=3D0/0) (4.991 ms/1635305130.=
153330)<br>[ =C2=A01] 2.00-3.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =
=C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/490=
4 us =C2=A08<br>[ =C2=A01] 2.00-3.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1=
:2,29:1,49:4,50:1,59:1,75:1 (5.00/95.00/99.7%=3D1/75/75,Outliers=3D0,obl/ob=
u=3D0/0) (7.455 ms/1635305131.147353)<br>[ =C2=A01] 3.00-4.00 sec =C2=A040.=
0 KBytes =C2=A0 328 Kbits/sec =C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
0 =C2=A0 =C2=A0 =C2=A0 14K/4964 us =C2=A08<br>[ =C2=A01] 3.00-4.00 sec S8-P=
DF: bin(w=3D100us):cnt(10)=3D1:2,49:4,50:2,59:1,65:1 (5.00/95.00/99.7%=3D1/=
65/65,Outliers=3D0,obl/obu=3D0/0) (6.460 ms/1635305132.146338)<br>[ =C2=A01=
] 4.00-5.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =C2=A010/0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/4970 us =C2=A08<br>[ =
=C2=A01] 4.00-5.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,49:6,59:1,65:1 =
(5.00/95.00/99.7%=3D1/65/65,Outliers=3D0,obl/obu=3D0/0) (6.404 ms/163530513=
3.146335)<br>[ =C2=A01] 5.00-6.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/se=
c =C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/4=
986 us =C2=A08<br>[ =C2=A01] 5.00-6.00 sec S8-PDF: bin(w=3D100us):cnt(10)=
=3D1:2,48:1,49:1,50:4,59:1,64:1 (5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,ob=
l/obu=3D0/0) (6.395 ms/1635305134.146343)<br>[ =C2=A01] 6.00-7.00 sec =C2=
=A040.0 KBytes =C2=A0 328 Kbits/sec =C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/5059 us =C2=A08<br>[ =C2=A01] 6.00-7.00 se=
c S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,39:1,49:3,50:2,60:1,85:1 (5.00/95.00=
/99.7%=3D1/85/85,Outliers=3D0,obl/obu=3D0/0) (8.417 ms/1635305135.148343)<b=
r>[ =C2=A01] 7.00-8.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =C2=A010/=
0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/5407 us =C2=
=A08<br>[ =C2=A01] 7.00-8.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,40:1,=
49:4,50:1,59:1,75:1 (5.00/95.00/99.7%=3D1/75/75,Outliers=3D0,obl/obu=3D0/0)=
 (7.428 ms/1635305136.147343)<br>[ =C2=A01] 8.00-9.00 sec =C2=A040.0 KBytes=
 =C2=A0 328 Kbits/sec =C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0=
 =C2=A0 =C2=A0 14K/5188 us =C2=A08<br>[ =C2=A01] 8.00-9.00 sec S8-PDF: bin(=
w=3D100us):cnt(10)=3D1:2,40:1,49:3,50:3,64:1 (5.00/95.00/99.7%=3D1/64/64,Ou=
tliers=3D0,obl/obu=3D0/0) (6.388 ms/1635305137.146284)<br>[ =C2=A01] 9.00-1=
0.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =C2=A010/0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/5306 us =C2=A08<br>[ =C2=A01=
] 9.00-10.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,39:1,49:2,50:2,51:1,6=
0:1,65:1 (5.00/95.00/99.7%=3D1/65/65,Outliers=3D0,obl/obu=3D0/0) (6.422 ms/=
1635305138.146316)<br>[ =C2=A01] 0.00-10.01 sec =C2=A0 400 KBytes =C2=A0 32=
7 Kbits/sec =C2=A0102/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =
=C2=A0 14K/5939 us =C2=A07<br>[ =C2=A01] 0.00-10.01 sec S8(f)-PDF: bin(w=3D=
100us):cnt(100)=3D1:19,29:1,36:1,39:3,40:3,44:1,45:1,46:1,48:2,49:33,50:18,=
51:1,52:1,59:5,60:2,64:2,65:3,75:2,85:1 (5.00/95.00/99.7%=3D1/65/85,Outlier=
s=3D0,obl/obu=3D0/0) (8.417 ms/1635305135.148343)<br><br>[root@localhost ip=
erf2-code]# src/iperf -s -i 1 -e -B 192.168.1.1%eth1<br>-------------------=
-----------------------------------------<br>Server listening on TCP port 5=
001 with pid 6287<br>Binding to local address 192.168.1.1 and iface eth1<br=
>Read buffer size: =C2=A0128 KByte (Dist bin width=3D16.0 KByte)<br>TCP win=
dow size: =C2=A0128 KByte (default)<br>------------------------------------=
------------------------<br>[ =C2=A01] local 192.168.1.1%eth1 port 5001 con=
nected with 192.168.1.4 port 45680 (MSS=3D1448) (burst-period=3D1.0000s) (t=
rip-times) (sock=3D4) (peer 2.1.4-master) on 2021-10-26 20:25:29 (PDT)<br>[=
 ID] Burst (start-end) =C2=A0Transfer =C2=A0 =C2=A0 Bandwidth =C2=A0 =C2=A0=
 =C2=A0 XferTime =C2=A0(DC%) =C2=A0 =C2=A0 Reads=3DDist =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0NetPwr<br>[ =C2=A01] 0.0001-0.0500 sec =C2=A040.1 KBytes =
=C2=A06.59 Mbits/sec =C2=A049.848 ms (5%) =C2=A0 =C2=A012=3D12:0:0:0:0:0:0:=
0 =C2=A00<br>[ =C2=A01] 1.0002-1.0461 sec =C2=A040.0 KBytes =C2=A07.14 Mbit=
s/sec =C2=A045.913 ms (4.6%) =C2=A0 =C2=A010=3D10:0:0:0:0:0:0:0 =C2=A00<br>=
[ =C2=A01] 2.0002-2.0491 sec =C2=A040.0 KBytes =C2=A06.70 Mbits/sec =C2=A04=
8.876 ms (4.9%) =C2=A0 =C2=A011=3D11:0:0:0:0:0:0:0 =C2=A00<br>[ =C2=A01] 3.=
0002-3.0501 sec =C2=A040.0 KBytes =C2=A06.57 Mbits/sec =C2=A049.886 ms (5%)=
 =C2=A0 =C2=A010=3D10:0:0:0:0:0:0:0 =C2=A00<br>[ =C2=A01] 4.0002-4.0501 sec=
 =C2=A040.0 KBytes =C2=A06.57 Mbits/sec =C2=A049.887 ms (5%) =C2=A0 =C2=A01=
0=3D10:0:0:0:0:0:0:0 =C2=A00<br>[ =C2=A01] 5.0002-5.0501 sec =C2=A040.0 KBy=
tes =C2=A06.57 Mbits/sec =C2=A049.881 ms (5%) =C2=A0 =C2=A010=3D10:0:0:0:0:=
0:0:0 =C2=A00<br>[ =C2=A01] 6.0002-6.0511 sec =C2=A040.0 KBytes =C2=A06.44 =
Mbits/sec =C2=A050.895 ms (5.1%) =C2=A0 =C2=A010=3D10:0:0:0:0:0:0:0 =C2=A00=
<br>[ =C2=A01] 7.0002-7.0501 sec =C2=A040.0 KBytes =C2=A06.57 Mbits/sec =C2=
=A049.889 ms (5%) =C2=A0 =C2=A010=3D10:0:0:0:0:0:0:0 =C2=A00<br>[ =C2=A01] =
8.0002-8.0481 sec =C2=A040.0 KBytes =C2=A06.84 Mbits/sec =C2=A047.901 ms (4=
.8%) =C2=A0 =C2=A011=3D11:0:0:0:0:0:0:0 =C2=A00<br>[ =C2=A01] 9.0002-9.0491=
 sec =C2=A040.0 KBytes =C2=A06.70 Mbits/sec =C2=A048.872 ms (4.9%) =C2=A0 =
=C2=A010=3D10:0:0:0:0:0:0:0 =C2=A00<br>[ =C2=A01] 0.0000-10.0031 sec =C2=A0=
 400 KBytes =C2=A0 328 Kbits/sec =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 104=3D104:0:0:0:0:0:0:0<br><br>Bob</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 26, 2021 at 6:12=
 PM Eric Dumazet &lt;<a href=3D"mailto:eric.dumazet@gmail.com">eric.dumazet=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><br>
<br>
On 10/26/21 4:38 PM, Christoph Paasch wrote:<br>
&gt; Hi Bob,<br>
&gt; <br>
&gt;&gt; On Oct 26, 2021, at 4:23 PM, Bob McMahon &lt;<a href=3D"mailto:bob=
.mcmahon@broadcom.com" target=3D"_blank">bob.mcmahon@broadcom.com</a> &lt;m=
ailto:<a href=3D"mailto:bob.mcmahon@broadcom.com" target=3D"_blank">bob.mcm=
ahon@broadcom.com</a>&gt;&gt; wrote:<br>
&gt;&gt; I&#39;m confused. I don&#39;t see any blocking nor partial writes =
per the write() at the app level with TCP_NOTSENT_LOWAT set at 4 bytes. The=
 burst is 40K, the write size is 4K and the watermark is 4 bytes. There are=
 ten writes per burst.<br>
&gt; <br>
&gt; You are on Linux here, right?<br>
&gt; <br>
&gt; AFAICS, Linux will still accept whatever fits in an skb. And that is l=
ikely more than 4K (with GSO on by default).<br>
<br>
This (max payload per skb) can be tuned at the driver level, at least for e=
xperimental purposes or dedicated devices.<br>
<br>
ip link set dev eth0 gso_max_size 8000<br>
<br>
To fetch current values :<br>
<br>
ip -d link sh dev eth0<br>
<br>
<br>
&gt; <br>
&gt; However, do you go back to select() after each write() or do you loop =
over the write() calls?<br>
&gt; <br>
&gt; <br>
&gt; Christoph<br>
&gt; <br>
&gt;&gt; The S8 histograms are the times waiting on the select().=C2=A0 The=
 first value is the bin number (multiplied by 100usec=C2=A0bin width) and s=
econd the bin count. The worst case time is at the end and is timestamped p=
er unix epoch.<br>
&gt;&gt;<br>
&gt;&gt; The second run is over a controlled WiFi link where a 99.7% point =
of 4-8ms for a WiFi TX op arbitration win is in the ballpark. The first is =
1G wired and is in=C2=A0the=C2=A0600 usec range. (No media=C2=A0arbitration=
=C2=A0there.)<br>
&gt;&gt;<br>
&gt;&gt; =C2=A0[root@localhost iperf2-code]# src/iperf -c 10.19.87.9 --trip=
-times -i 1 -e --tcp-write-prefetch 4 -l 4K --burst-size=3D40K --histograms=
<br>
&gt;&gt; WARN: option of --burst-size without --burst-period defaults --bur=
st-period to 1 second<br>
&gt;&gt; ------------------------------------------------------------<br>
&gt;&gt; Client connecting to 10.19.87.9, TCP port 5001 with pid 2124 (1 fl=
ows)<br>
&gt;&gt; Write buffer size: 4096 Byte<br>
&gt;&gt; Bursting: 40.0 KByte every 1.00 seconds<br>
&gt;&gt; TCP window size: 85.0 KByte (default)<br>
&gt;&gt; Event based writes (pending queue watermark at 4 bytes)<br>
&gt;&gt; Enabled select histograms bin-width=3D0.100 ms, bins=3D10000<br>
&gt;&gt; ------------------------------------------------------------<br>
&gt;&gt; [ =C2=A01] local 10.19.87.10%eth0 port 33166 connected with 10.19.=
87.9 port 5001 (MSS=3D1448) (prefetch=3D4) (trip-times) (sock=3D3) (ct=3D0.=
54 ms) on 2021-10-26 16:07:33 (PDT)<br>
&gt;&gt; [ ID] Interval =C2=A0 =C2=A0 =C2=A0 =C2=A0Transfer =C2=A0 =C2=A0Ba=
ndwidth =C2=A0 =C2=A0 =C2=A0 Write/Err =C2=A0Rtry =C2=A0 =C2=A0 Cwnd/RTT =
=C2=A0 =C2=A0 =C2=A0 =C2=A0NetPwr<br>
&gt;&gt; [ =C2=A01] 0.00-1.00 sec =C2=A040.1 KBytes =C2=A0 329 Kbits/sec =
=C2=A011/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/536=
8 us =C2=A08<br>
&gt;&gt; [ =C2=A01] 0.00-1.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:1,2:5,=
3:2,4:1,11:1 (5.00/95.00/99.7%=3D1/11/11,Outliers=3D0,obl/obu=3D0/0) (1.089=
 ms/1635289653.928360)<br>
&gt;&gt; [ =C2=A01] 1.00-2.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =
=C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/569=
 us =C2=A072<br>
&gt;&gt; [ =C2=A01] 1.00-2.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,2:1,=
3:4,4:1,7:1,8:1 (5.00/95.00/99.7%=3D1/8/8,Outliers=3D0,obl/obu=3D0/0) (0.73=
6 ms/1635289654.928088)<br>
&gt;&gt; [ =C2=A01] 2.00-3.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =
=C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/312=
 us =C2=A0131<br>
&gt;&gt; [ =C2=A01] 2.00-3.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,2:2,=
3:2,5:2,6:1 (5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.548 ms=
/1635289655.927776)<br>
&gt;&gt; [ =C2=A01] 3.00-4.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =
=C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/302=
 us =C2=A0136<br>
&gt;&gt; [ =C2=A01] 3.00-4.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,2:2,=
3:5,6:1 (5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.584 ms/163=
5289656.927814)<br>
&gt;&gt; [ =C2=A01] 4.00-5.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =
=C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/316=
 us =C2=A0130<br>
&gt;&gt; [ =C2=A01] 4.00-5.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,3:2,=
4:2,5:2,6:1 (5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.572 ms=
/1635289657.927810)<br>
&gt;&gt; [ =C2=A01] 5.00-6.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =
=C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/253=
 us =C2=A0162<br>
&gt;&gt; [ =C2=A01] 5.00-6.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,2:2,=
3:4,5:1 (5.00/95.00/99.7%=3D1/5/5,Outliers=3D0,obl/obu=3D0/0) (0.417 ms/163=
5289658.927630)<br>
&gt;&gt; [ =C2=A01] 6.00-7.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =
=C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/290=
 us =C2=A0141<br>
&gt;&gt; [ =C2=A01] 6.00-7.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,3:3,=
4:3,6:1 (5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.573 ms/163=
5289659.927771)<br>
&gt;&gt; [ =C2=A01] 7.00-8.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =
=C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/359=
 us =C2=A0114<br>
&gt;&gt; [ =C2=A01] 7.00-8.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,3:4,=
4:3,6:1 (5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.570 ms/163=
5289660.927753)<br>
&gt;&gt; [ =C2=A01] 8.00-9.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =
=C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/349=
 us =C2=A0117<br>
&gt;&gt; [ =C2=A01] 8.00-9.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,3:5,=
4:1,7:1 (5.00/95.00/99.7%=3D1/7/7,Outliers=3D0,obl/obu=3D0/0) (0.608 ms/163=
5289661.927843)<br>
&gt;&gt; [ =C2=A01] 9.00-10.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =
=C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/347=
 us =C2=A0118<br>
&gt;&gt; [ =C2=A01] 9.00-10.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,2:1=
,3:5,8:1 (5.00/95.00/99.7%=3D1/8/8,Outliers=3D0,obl/obu=3D0/0) (0.725 ms/16=
35289662.927861)<br>
&gt;&gt; [ =C2=A01] 0.00-10.01 sec =C2=A0 400 KBytes =C2=A0 327 Kbits/sec =
=C2=A0102/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/15=
19 us =C2=A027<br>
&gt;&gt; [ =C2=A01] 0.00-10.01 sec S8(f)-PDF: bin(w=3D100us):cnt(100)=3D1:2=
5,2:13,3:36,4:11,5:5,6:5,7:2,8:2,11:1 (5.00/95.00/99.7%=3D1/7/11,Outliers=
=3D0,obl/obu=3D0/0) (1.089 ms/1635289653.928360)<br>
&gt;&gt;<br>
&gt;&gt; [root@localhost iperf2-code]# src/iperf -c 192.168.1.1 --trip-time=
s -i 1 -e --tcp-write-prefetch 4 -l 4K --burst-size=3D40K --histograms<br>
&gt;&gt; WARN: option of --burst-size without --burst-period defaults --bur=
st-period to 1 second<br>
&gt;&gt; ------------------------------------------------------------<br>
&gt;&gt; Client connecting to 192.168.1.1, TCP port 5001 with pid 2131 (1 f=
lows)<br>
&gt;&gt; Write buffer size: 4096 Byte<br>
&gt;&gt; Bursting: 40.0 KByte every 1.00 seconds<br>
&gt;&gt; TCP window size: 85.0 KByte (default)<br>
&gt;&gt; Event based writes (pending queue watermark at 4 bytes)<br>
&gt;&gt; Enabled select histograms bin-width=3D0.100 ms, bins=3D10000<br>
&gt;&gt; ------------------------------------------------------------<br>
&gt;&gt; [ =C2=A01] local 192.168.1.4%eth1 port 45518 connected with 192.16=
8.1.1 port 5001 (MSS=3D1448) (prefetch=3D4) (trip-times) (sock=3D3) (ct=3D5=
.48 ms) on 2021-10-26 16:07:56 (PDT)<br>
&gt;&gt; [ ID] Interval =C2=A0 =C2=A0 =C2=A0 =C2=A0Transfer =C2=A0 =C2=A0Ba=
ndwidth =C2=A0 =C2=A0 =C2=A0 Write/Err =C2=A0Rtry =C2=A0 =C2=A0 Cwnd/RTT =
=C2=A0 =C2=A0 =C2=A0 =C2=A0NetPwr<br>
&gt;&gt; [ =C2=A01] 0.00-1.00 sec =C2=A040.1 KBytes =C2=A0 329 Kbits/sec =
=C2=A011/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/103=
39 us =C2=A04<br>
&gt;&gt; [ =C2=A01] 0.00-1.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:1,40:1=
,47:1,49:2,50:3,51:1,60:1 (5.00/95.00/99.7%=3D1/60/60,Outliers=3D0,obl/obu=
=3D0/0) (5.990 ms/1635289676.802143)<br>
&gt;&gt; [ =C2=A01] 1.00-2.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =
=C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/485=
3 us =C2=A08<br>
&gt;&gt; [ =C2=A01] 1.00-2.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,38:1=
,39:1,44:1,45:1,49:1,51:1,52:1,60:1 (5.00/95.00/99.7%=3D1/60/60,Outliers=3D=
0,obl/obu=3D0/0) (5.937 ms/1635289677.802274)<br>
&gt;&gt; [ =C2=A01] 2.00-3.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =
=C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/499=
1 us =C2=A08<br>
&gt;&gt; [ =C2=A01] 2.00-3.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,48:1=
,49:2,50:2,51:1,60:1,64:1 (5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=
=3D0/0) (6.307 ms/1635289678.794326)<br>
&gt;&gt; [ =C2=A01] 3.00-4.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =
=C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/461=
0 us =C2=A09<br>
&gt;&gt; [ =C2=A01] 3.00-4.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,49:3=
,50:3,56:1,64:1 (5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.=
362 ms/1635289679.794335)<br>
&gt;&gt; [ =C2=A01] 4.00-5.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =
=C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/502=
8 us =C2=A08<br>
&gt;&gt; [ =C2=A01] 4.00-5.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,49:6=
,59:1,64:1 (5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.367 m=
s/1635289680.794399)<br>
&gt;&gt; [ =C2=A01] 5.00-6.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =
=C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/511=
3 us =C2=A08<br>
&gt;&gt; [ =C2=A01] 5.00-6.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,49:3=
,50:2,58:1,60:1,65:1 (5.00/95.00/99.7%=3D1/65/65,Outliers=3D0,obl/obu=3D0/0=
) (6.442 ms/1635289681.794392)<br>
&gt;&gt; [ =C2=A01] 6.00-7.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =
=C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/505=
4 us =C2=A08<br>
&gt;&gt; [ =C2=A01] 6.00-7.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,39:1=
,49:3,51:1,60:2,64:1 (5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0=
) (6.374 ms/1635289682.794335)<br>
&gt;&gt; [ =C2=A01] 7.00-8.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =
=C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/513=
8 us =C2=A08<br>
&gt;&gt; [ =C2=A01] 7.00-8.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,39:2=
,40:1,49:2,50:1,60:1,64:1 (5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=
=3D0/0) (6.396 ms/1635289683.794338)<br>
&gt;&gt; [ =C2=A01] 8.00-9.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =
=C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/532=
9 us =C2=A08<br>
&gt;&gt; [ =C2=A01] 8.00-9.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,38:1=
,45:2,49:1,50:3,63:1 (5.00/95.00/99.7%=3D1/63/63,Outliers=3D0,obl/obu=3D0/0=
) (6.292 ms/1635289684.794262)<br>
&gt;&gt; [ =C2=A01] 9.00-10.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =
=C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/532=
9 us =C2=A08<br>
&gt;&gt; [ =C2=A01] 9.00-10.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,39:=
1,49:3,50:3,84:1 (5.00/95.00/99.7%=3D1/84/84,Outliers=3D0,obl/obu=3D0/0) (8=
.306 ms/1635289685.796315)<br>
&gt;&gt; [ =C2=A01] 0.00-10.01 sec =C2=A0 400 KBytes =C2=A0 327 Kbits/sec =
=C2=A0102/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/63=
31 us =C2=A06<br>
&gt;&gt; [ =C2=A01] 0.00-10.01 sec S8(f)-PDF: bin(w=3D100us):cnt(100)=3D1:1=
9,38:2,39:5,40:2,44:1,45:3,47:1,48:1,49:26,50:17,51:4,52:1,56:1,58:1,59:1,6=
0:7,63:1,64:5,65:1,84:1 (5.00/95.00/99.7%=3D1/64/84,Outliers=3D0,obl/obu=3D=
0/0) (8.306 ms/1635289685.796315)<br>
&gt;&gt;<br>
&gt;&gt; Bob<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Oct 26, 2021 at 11:45 AM Christoph Paasch &lt;<a href=3D"m=
ailto:cpaasch@apple.com" target=3D"_blank">cpaasch@apple.com</a> &lt;mailto=
:<a href=3D"mailto:cpaasch@apple.com" target=3D"_blank">cpaasch@apple.com</=
a>&gt;&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Hello,<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt; On Oct 25, 2021, at 9:24 PM, Eric Dumazet =
&lt;<a href=3D"mailto:eric.dumazet@gmail.com" target=3D"_blank">eric.dumaze=
t@gmail.com</a> &lt;mailto:<a href=3D"mailto:eric.dumazet@gmail.com" target=
=3D"_blank">eric.dumazet@gmail.com</a>&gt;&gt; wrote:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt; On 10/25/21 8:11 PM, Stuart Cheshire via B=
loat wrote:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; On 21 Oct 2021, at 17:51, Bob McMahon =
via Make-wifi-fast &lt;<a href=3D"mailto:make-wifi-fast@lists.bufferbloat.n=
et" target=3D"_blank">make-wifi-fast@lists.bufferbloat.net</a> &lt;mailto:<=
a href=3D"mailto:make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">ma=
ke-wifi-fast@lists.bufferbloat.net</a>&gt;&gt; wrote:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; Hi All,<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; Sorry for the spam. I&#39;m trying=
 to support a meaningful TCP message latency w/iperf 2 from the sender side=
 w/o requiring e2e clock synchronization. I thought I&#39;d try to use the =
TCP_NOTSENT_LOWAT event to help with this. It seems that this event goes of=
f when the bytes are in flight vs have reached the destination network stac=
k. If that&#39;s the case, then iperf 2 client (sender) may be able to prod=
uce the message latency by adding the drain time (write start to TCP_NOTSEN=
T_LOWAT) and the sampled RTT.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; Does this seem reasonable?<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; I=E2=80=99m not 100% sure what you=E2=
=80=99re asking, but I will try to help.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; When you set TCP_NOTSENT_LOWAT, the TC=
P implementation won=E2=80=99t report your endpoint as writable (e.g., via =
kqueue or epoll) until less than that threshold of data remains unsent. It =
won=E2=80=99t stop you writing more bytes if you want to, up to the socket =
send buffer size, but it won=E2=80=99t *ask* you for more data until the TC=
P_NOTSENT_LOWAT threshold is reached.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt; When I implemented TCP_NOTSENT_LOWAT back =
in 2013 [1], I made sure that sendmsg() would actually<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt; stop feeding more bytes in TCP transmit qu=
eue if the current amount of unsent bytes<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt; was above the threshold.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt; So it looks like Apple implementation is d=
ifferent, based on your description ?<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Yes, TCP_NOTSENT_LOWAT only impacts the wakeup =
on iOS/macOS/...<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0An app can still fill the send-buffer if it doe=
s a sendmsg() with a large buffer or does repeated calls to sendmsg().<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Fur Apple, the goal of TCP_NOTSENT_LOWAT was to=
 allow an app to quickly change the data it &quot;scheduled&quot; to send. =
And thus allow the app to write the smallest &quot;logical unit&quot; it ha=
s. If that unit is 512KB large, the app is allowed to send that.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0For example, in case of video-streaming one may=
 want to skip ahead in the video. In that case the app still needs to trans=
mit the remaining parts of the previous frame anyways, before it can send t=
he new video frame.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0That&#39;s the reason why the Apple implementat=
ion allows one to write more than just the lowat threshold.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0That being said, I do think that Linux&#39;s wa=
y allows for an easier API because the app does not need to be careful at h=
ow much data it sends after an epoll/kqueue wakeup. So, the latency-benefit=
s will be easier to get.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Christoph<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt; [1] <a href=3D"https://git.kernel.org/pub/=
scm/linux/kernel/git/netdev/net.git/commit/?id=3Dc9bee3b7fdecb0c1d070c7b541=
13b3bdfb9a3d36" rel=3D"noreferrer" target=3D"_blank">https://git.kernel.org=
/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=3Dc9bee3b7fdecb0c1d070c=
7b54113b3bdfb9a3d36</a> &lt;<a href=3D"https://git.kernel.org/pub/scm/linux=
/kernel/git/netdev/net.git/commit/?id=3Dc9bee3b7fdecb0c1d070c7b54113b3bdfb9=
a3d36" rel=3D"noreferrer" target=3D"_blank">https://git.kernel.org/pub/scm/=
linux/kernel/git/netdev/net.git/commit/?id=3Dc9bee3b7fdecb0c1d070c7b54113b3=
bdfb9a3d36</a>&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt; netperf does not use epoll(), but rather a=
 loop over sendmsg().<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt; One of the point of TCP_NOTSENT_LOWAT for =
Google was to be able to considerably increase<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt; max number of bytes in transmit queues (3r=
d column of /proc/sys/net/ipv4/tcp_wmem)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt; by 10x, allowing for autotune to increase =
BDP for big RTT flows, this without<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt; increasing memory needs for flows with sma=
ll RTT.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt; In other words, the TCP implementation att=
empts to keep BDP bytes in flight + TCP_NOTSENT_LOWAT bytes buffered and re=
ady to go. The BDP of bytes in flight is necessary to fill the network pipe=
 and get good throughput. The TCP_NOTSENT_LOWAT of bytes buffered and ready=
 to go is provided to give the source software some advance notice that the=
 TCP implementation will soon be looking for more bytes to send, so that th=
e buffer doesn=E2=80=99t run dry, thereby lowering throughput. (The old SO_=
SNDBUF option conflates both =E2=80=9Cbytes in flight=E2=80=9D and =E2=80=
=9Cbytes buffered and ready to go=E2=80=9D into the same number.)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; If you wait for the TCP_NOTSENT_LOWAT =
notification, write a chunk of n bytes of data, and then wait for the next =
TCP_NOTSENT_LOWAT notification, that will tell you roughly how long it took=
 n bytes to depart the machine. You won=E2=80=99t know why, though. The byt=
es could depart the machine in response for acks indicating that the same n=
umber of bytes have been accepted at the receiver. But the bytes can also d=
epart the machine because CWND is growing. Of course, both of those things =
are usually happening at the same time.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; How to use TCP_NOTSENT_LOWAT is explai=
ned in this video:<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &lt;<a href=3D"https://developer.apple=
.com/videos/play/wwdc2015/719/?time=3D2199" rel=3D"noreferrer" target=3D"_b=
lank">https://developer.apple.com/videos/play/wwdc2015/719/?time=3D2199</a>=
 &lt;<a href=3D"https://developer.apple.com/videos/play/wwdc2015/719/?time=
=3D2199" rel=3D"noreferrer" target=3D"_blank">https://developer.apple.com/v=
ideos/play/wwdc2015/719/?time=3D2199</a>&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Later in the same video is a two-minut=
e demo (time offset 42:00 to time offset 44:00) showing a =E2=80=9Cbefore a=
nd after=E2=80=9D demo illustrating the dramatic difference this makes for =
screen sharing responsiveness.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; &lt;<a href=3D"https://developer.apple=
.com/videos/play/wwdc2015/719/?time=3D2520" rel=3D"noreferrer" target=3D"_b=
lank">https://developer.apple.com/videos/play/wwdc2015/719/?time=3D2520</a>=
 &lt;<a href=3D"https://developer.apple.com/videos/play/wwdc2015/719/?time=
=3D2520" rel=3D"noreferrer" target=3D"_blank">https://developer.apple.com/v=
ideos/play/wwdc2015/719/?time=3D2520</a>&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Stuart Cheshire<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; ______________________________________=
_________<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Bloat mailing list<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; <a href=3D"mailto:Bloat@lists.bufferbl=
oat.net" target=3D"_blank">Bloat@lists.bufferbloat.net</a> &lt;mailto:<a hr=
ef=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">Bloat@lists.buf=
ferbloat.net</a>&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; <a href=3D"https://lists.bufferbloat.n=
et/listinfo/bloat" rel=3D"noreferrer" target=3D"_blank">https://lists.buffe=
rbloat.net/listinfo/bloat</a> &lt;<a href=3D"https://lists.bufferbloat.net/=
listinfo/bloat" rel=3D"noreferrer" target=3D"_blank">https://lists.bufferbl=
oat.net/listinfo/bloat</a>&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt; __________________________________________=
_____<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt; Bloat mailing list<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt; <a href=3D"mailto:Bloat@lists.bufferbloat.=
net" target=3D"_blank">Bloat@lists.bufferbloat.net</a> &lt;mailto:<a href=
=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">Bloat@lists.buffe=
rbloat.net</a>&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&gt; <a href=3D"https://lists.bufferbloat.net/l=
istinfo/bloat" rel=3D"noreferrer" target=3D"_blank">https://lists.bufferblo=
at.net/listinfo/bloat</a> &lt;<a href=3D"https://lists.bufferbloat.net/list=
info/bloat" rel=3D"noreferrer" target=3D"_blank">https://lists.bufferbloat.=
net/listinfo/bloat</a>&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; This electronic communication and the information and any files tr=
ansmitted with it, or attached to it, are confidential and are intended sol=
ely for the use of the individual or entity to whom it is addressed and may=
 contain information that is confidential, legally privileged, protected by=
 privacy laws, or otherwise restricted from disclosure to anyone else. If y=
ou are not the intended recipient or the person responsible for delivering =
the e-mail to the intended recipient, you are hereby notified that any use,=
 copying, distributing, dissemination, forwarding, printing, or copying of =
this e-mail is strictly prohibited. If you received this e-mail in error, p=
lease return the e-mail to the sender, delete it from your computer, and de=
stroy any printed copy of it.<br>
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
--000000000000f04f3d05cf4d6e1b--

--===============6059697545887238686==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6059697545887238686==--

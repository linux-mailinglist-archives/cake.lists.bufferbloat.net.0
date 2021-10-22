Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EB4436F16
	for <lists+cake@lfdr.de>; Fri, 22 Oct 2021 02:52:03 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5099E3CB56;
	Thu, 21 Oct 2021 20:51:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634863917;
	bh=q2S7TMo6laqYyS3x078IxnBjXhFW2SCO/iRg4M9ehUg=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=WFgaNrp/UNL5pyQrNXUWHwBOmzjCGk425r4hqZKMtY6VTLls0YVp3gtiFpyKEPENB
	 Aemvv6QiMA99JoEIaY4+ZBL4c9PFSVacGVi7mwuPOCJ8hm7V390O5xiFnDS6x7iQgL
	 ZXJexcsmssuEb97rDOLWmPR6Jkbu+1yt+2NdO0UKP/NGD9ha5yN1LjMFllG6dIGaKa
	 U9zXqbWEJi77JJhkiH8MsuWIZaS2vMIdSuMRm8hB5R4TPwCkcKrj6u5L3KH7p2PTVu
	 w2DDna5O+tNtIFLVDGE+Ij8lff8KMB7DUVwptCiTqpB1kaITl0+U+55tkuRV7HFHaC
	 2EGHSSSHk2FsA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 122793CB4C
 for <cake@lists.bufferbloat.net>; Thu, 21 Oct 2021 20:51:54 -0400 (EDT)
Received: by mail-ed1-x52e.google.com with SMTP id g10so279731edj.1
 for <cake@lists.bufferbloat.net>; Thu, 21 Oct 2021 17:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VlOZLYGq3hEETJ3JSgjNDA+S64uIpvGLFhQw5pXyUVA=;
 b=AlIAbrj/BXmKJmj6eqedIs5+QsW4l1+hKUPMl+K996aLf2OULipfb8NqIdLv1AhhJV
 yzizn50oidG57rJjdDoIEmcjof7xwAbc2TL7bNzMkdx08P5c0WO22Z0UfXgaUW0z+V9K
 YUGXuFljN1+ysHDcmAPwKer27sEoq4mIU41HY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VlOZLYGq3hEETJ3JSgjNDA+S64uIpvGLFhQw5pXyUVA=;
 b=cZqA6cG9Kq3cLP+9Mputa1o6MzxVddvgJL1xUM1fZs940NpIHg3gRYXbAiPz+dhVL7
 MNsZSe1OYG1v5KKW8afED8zx4P7pD1NK5cHaOFc2fSyiSSy1YaSM2ByoZHUXwYsJDOxa
 K8U7vaLmK6PDUUHkFKQIqnYNl3ozLTg2d1j3l+wtB/tGgzoSg9LtfTK2XbZZNL8K8EOw
 fzFOtQVZbsbK3RKfZnKV1NLt3QiOhOoaPLV0toZcWwvLoQVXHGzni+IU2FAsiSZhkeX8
 MJBY35+jqQc0m2MNR28kqYnGCbFsAkxEga5ACs5Fajwwk4QMTT+DPpwlPvl4D6S61VJA
 Ijeg==
X-Gm-Message-State: AOAM530tZay7CzxdS9FoK5I67FWTWdEQYjnn5yU+afLAPnadBA6MySF4
 e4WfIt/X51BPM5Nfi8Wmr1ihTocag/m+8SrGMq73mib5xrkht8I8l7U3SJ/OP1OuH5NgdtCgcK1
 Tqfcd1I16ip2LKUEIPCrXZvpmrtnO
X-Google-Smtp-Source: ABdhPJxKm37oDVfu9niAcVF/HIXqOd3rV2gHcQuLIeKjOzvUDPiCuI0NP3FX4vnJb6+iv6NatVBXXsCceBlwAsL4gyQ=
X-Received: by 2002:a05:6402:5209:: with SMTP id
 s9mr12215719edd.250.1634863913558; 
 Thu, 21 Oct 2021 17:51:53 -0700 (PDT)
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
 <CAA93jw5QyH4SqKT07hP+skijfimZ0GU=AgLJtkVOQGzKrAkazg@mail.gmail.com>
 <257851.1632110422@turing-police>
 <CABf5zv+yq_oJ7O7YqVeSbZ2Qns3C4hESzNA2V0zNb0L1Zg-mgw@mail.gmail.com>
 <CAHxHggd-4rZ5Nc4raaoRUjjL17MVh8UsNu_5eL8eiLJ=R_68wA@mail.gmail.com>
 <CAHb6Lvp86iw=DQMN8Z+f7yUJu-5pmVUxsM1_1Jw8RJb2XRcMcg@mail.gmail.com>
 <1632680642.869711321@apps.rackspace.com>
In-Reply-To: <1632680642.869711321@apps.rackspace.com>
Date: Thu, 21 Oct 2021 17:51:42 -0700
Message-ID: <CAHb6Lvp1dxnbuCNiE5FKC-yRyD6HGkb0H1ZQAm_nSxANwJg2pA@mail.gmail.com>
To: "David P. Reed" <dpreed@deepplum.com>
Subject: [Cake] TCP_NOTSENT_LOWAT applied to e2e TCP msg latency
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
 =?UTF-8?Q?Valdis_Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 starlink@lists.bufferbloat.net, codel <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Steve Crocker <steve@shinkuro.com>,
 Vint Cerf <vint@google.com>, Neal Cardwell <ncardwell@google.com>
Content-Type: multipart/mixed; boundary="===============5228470878208383664=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5228470878208383664==
Content-Type: multipart/alternative; boundary="000000000000d33feb05cee66a6a"

--000000000000d33feb05cee66a6a
Content-Type: text/plain; charset="UTF-8"

Hi All,

Sorry for the spam. I'm trying to support a meaningful TCP message latency
w/iperf 2 from the sender side w/o requiring e2e clock synchronization. I
thought I'd try to use the TCP_NOTSENT_LOWAT event to help with this. It
seems that this event goes off when the bytes are in flight vs have reached
the destination network stack. If that's the case, then iperf 2
<https://sourceforge.net/projects/iperf2/>client (sender) may be able to
produce the message latency by adding the drain time (write start to
TCP_NOTSENT_LOWAT) and the sampled RTT.

Does this seem reasonable?

Below are some sample outputs of a 10G wired sending to a 1G wired. These
systems do have e2e clock sync so the server side message latency is
correct. The RTT + Drain does approximately equal the server side e2e msg
latency

First with BBR

[root@ryzen3950 iperf2-code]# iperf -c 192.168.1.156 -i 1 -e --tcp-drain
--realtime -Z bbr --trip-times -l 1M
------------------------------------------------------------
Client connecting to 192.168.1.156, TCP port 5001 with pid 206299 (1 flows)
Write buffer size: 1048576 Byte (drain-enabled)
TCP congestion control set to bbr
TCP window size:  128 KByte (default)
------------------------------------------------------------
[  1] local 192.168.1.133%enp4s0 port 60684 connected with 192.168.1.156
port 5001 (MSS=1448) (trip-times) (sock=3) (ct=0.26 ms) on 2021-10-21
17:44:10 (PDT)
[ ID] Interval        Transfer    Bandwidth       Write/Err  Rtry
Cwnd/RTT        NetPwr  Drain avg/min/max/stdev (cnt)
[  1] 0.00-1.00 sec   112 MBytes   940 Mbits/sec  113/0          0
 263K/1906 us  61616  8.947/8.322/13.465/0.478 ms (112)
[  1] 1.00-2.00 sec   112 MBytes   940 Mbits/sec  112/0          0
 260K/1987 us  59104  8.911/8.229/9.569/0.229 ms (112)
[  1] 2.00-3.00 sec   113 MBytes   948 Mbits/sec  113/0          0
 254K/2087 us  56775  8.910/8.311/9.564/0.221 ms (113)
[  1] 3.00-4.00 sec   112 MBytes   940 Mbits/sec  112/0          0
 263K/1710 us  68679  8.911/8.297/9.618/0.217 ms (112)
[  1] 4.00-5.00 sec   112 MBytes   940 Mbits/sec  112/0          0
 254K/2024 us  58024  8.907/8.470/9.641/0.197 ms (112)
[  1] 5.00-6.00 sec   112 MBytes   940 Mbits/sec  112/0          0
 263K/2124 us  55292  8.911/8.291/9.325/0.198 ms (112)
[  1] 6.00-7.00 sec   113 MBytes   948 Mbits/sec  113/0          0
 265K/2012 us  58891  8.913/8.226/9.569/0.229 ms (113)
[  1] 7.00-8.00 sec   112 MBytes   940 Mbits/sec  112/0          0
 265K/1989 us  59045  8.908/8.313/9.366/0.194 ms (112)
[  1] 8.00-9.00 sec   112 MBytes   940 Mbits/sec  112/0          0
 263K/1999 us  58750  8.908/8.212/9.402/0.211 ms (112)
[  1] 9.00-10.00 sec   112 MBytes   940 Mbits/sec  112/0          0
 5K/242 us  485291  8.947/8.319/12.754/0.414 ms (112)
[  1] 0.00-10.06 sec  1.10 GBytes   937 Mbits/sec  1125/0          0
 5K/242 us  483764  8.950/8.212/45.293/1.120 ms (1123)

[root@localhost rjmcmahon]# iperf -s -e -B 192.168.1.156%enp4s0f0 -i 1
--realtime
------------------------------------------------------------
Server listening on TCP port 5001 with pid 53099
Binding to local address 192.168.1.156 and iface enp4s0f0
Read buffer size:  128 KByte (Dist bin width=16.0 KByte)
TCP window size:  128 KByte (default)
------------------------------------------------------------
[  1] local 192.168.1.156%enp4s0f0 port 5001 connected with 192.168.1.133
port 60684 (MSS=1448) (trip-times) (sock=4) (peer 2.1.4-master) on
2021-10-21 20:44:10 (EDT)
[ ID] Interval        Transfer    Bandwidth    Burst Latency
avg/min/max/stdev (cnt/size) inP NetPwr  Reads=Dist
[  1] 0.00-1.00 sec   112 MBytes   936 Mbits/sec  10.629/9.890/14.998/1.507
ms (111/1053964) 1.20 MByte 11007  4347=412:3927:7:0:1:0:0:0
[  1] 1.00-2.00 sec   112 MBytes   942 Mbits/sec  10.449/9.736/10.740/0.237
ms (112/1050799) 1.18 MByte 11263  4403=465:3938:0:0:0:0:0:0
[  1] 2.00-3.00 sec   112 MBytes   942 Mbits/sec  10.426/9.873/10.698/0.246
ms (113/1041489) 1.16 MByte 11288  4382=420:3962:0:0:0:0:0:0
[  1] 3.00-4.00 sec   112 MBytes   941 Mbits/sec  10.485/9.724/10.716/0.208
ms (112/1050541) 1.18 MByte 11221  4393=446:3946:1:0:0:0:0:0
[  1] 4.00-5.00 sec   112 MBytes   942 Mbits/sec  10.487/9.902/10.736/0.216
ms (112/1050786) 1.18 MByte 11222  4392=448:3944:0:0:0:0:0:0
[  1] 5.00-6.00 sec   112 MBytes   942 Mbits/sec  10.484/9.758/10.748/0.236
ms (112/1050799) 1.18 MByte 11226  4397=456:3940:0:1:0:0:0:0
[  1] 6.00-7.00 sec   112 MBytes   941 Mbits/sec  10.475/9.756/10.753/0.248
ms (112/1050515) 1.18 MByte 11232  4403=473:3930:0:0:0:0:0:0
[  1] 7.00-8.00 sec   112 MBytes   942 Mbits/sec  10.435/9.759/10.757/0.288
ms (113/1041502) 1.16 MByte 11278  4414=480:3934:0:0:0:0:0:0
[  1] 8.00-9.00 sec   112 MBytes   942 Mbits/sec  10.485/9.762/10.759/0.277
ms (112/1050799) 1.18 MByte 11225  4409=470:3939:0:0:0:0:0:0
[  1] 9.00-10.00 sec   112 MBytes   942 Mbits/sec
 10.550/10.000/10.759/0.191 ms (112/1050786) 1.19 MByte 11155
 4399=455:3944:0:0:0:0:0:0
[  1] 0.00-10.05 sec  1.10 GBytes   937 Mbits/sec
 10.524/9.724/45.519/1.173 ms (1123/1048576) 1.18 MByte 11132
 44149=4725:39414:8:1:1:0:0:0

Now with CUBIC

[root@ryzen3950 iperf2-code]# iperf -c 192.168.1.156 -i 1 -e --tcp-drain
--realtime -Z cubic --trip-times -l 1M
------------------------------------------------------------
Client connecting to 192.168.1.156, TCP port 5001 with pid 206487 (1 flows)
Write buffer size: 1048576 Byte (drain-enabled)
TCP congestion control set to cubic
TCP window size: 85.0 KByte (default)
------------------------------------------------------------
[  1] local 192.168.1.133%enp4s0 port 60686 connected with 192.168.1.156
port 5001 (MSS=1448) (trip-times) (sock=3) (ct=0.49 ms) on 2021-10-21
17:47:02 (PDT)
[ ID] Interval        Transfer    Bandwidth       Write/Err  Rtry
Cwnd/RTT        NetPwr  Drain avg/min/max/stdev (cnt)
[  1] 0.00-1.00 sec   113 MBytes   948 Mbits/sec  114/0         66
1527K/13168 us  8998  8.855/4.757/15.949/0.995 ms (113)
[  1] 1.00-2.00 sec   113 MBytes   948 Mbits/sec  113/0          0
1668K/14380 us  8240  8.899/8.450/9.425/0.270 ms (113)
[  1] 2.00-3.00 sec   112 MBytes   940 Mbits/sec  112/0          0
1781K/15335 us  7658  8.904/8.446/9.314/0.258 ms (112)
[  1] 3.00-4.00 sec   112 MBytes   940 Mbits/sec  112/0          0
1867K/16127 us  7282  8.900/8.570/9.313/0.252 ms (112)
[  1] 4.00-5.00 sec   113 MBytes   948 Mbits/sec  113/0          0
1931K/16537 us  7165  8.908/8.330/9.431/0.290 ms (113)
[  1] 5.00-6.00 sec   111 MBytes   931 Mbits/sec  111/0          1
1439K/12342 us  9431  8.945/4.303/18.970/1.091 ms (111)
[  1] 6.00-7.00 sec   113 MBytes   948 Mbits/sec  113/0          0
1515K/12845 us  9225  8.904/8.451/9.432/0.298 ms (113)
[  1] 7.00-8.00 sec   112 MBytes   940 Mbits/sec  112/0          0
1569K/13353 us  8795  8.907/8.569/9.314/0.283 ms (112)
[  1] 8.00-9.00 sec   112 MBytes   940 Mbits/sec  112/0          0
1606K/13718 us  8561  8.909/8.571/9.312/0.275 ms (112)
[  1] 9.00-10.00 sec   113 MBytes   948 Mbits/sec  113/0          0
1630K/13930 us  8506  8.906/8.569/9.316/0.298 ms (113)
[  1] 0.00-10.04 sec  1.10 GBytes   940 Mbits/sec  1127/0         67
1630K/13930 us  8431  8.904/4.303/18.970/0.526 ms (1125)

[root@localhost rjmcmahon]# iperf -s -e -B 192.168.1.156%enp4s0f0 -i 1
--realtime
------------------------------------------------------------
Server listening on TCP port 5001 with pid 53121
Binding to local address 192.168.1.156 and iface enp4s0f0
Read buffer size:  128 KByte (Dist bin width=16.0 KByte)
TCP window size:  128 KByte (default)
------------------------------------------------------------
[  1] local 192.168.1.156%enp4s0f0 port 5001 connected with 192.168.1.133
port 60686 (MSS=1448) (trip-times) (sock=4) (peer 2.1.4-master) on
2021-10-21 20:47:02 (EDT)
[ ID] Interval        Transfer    Bandwidth    Burst Latency
avg/min/max/stdev (cnt/size) inP NetPwr  Reads=Dist
[  1] 0.00-1.00 sec   111 MBytes   935 Mbits/sec
 20.327/10.445/39.920/4.341 ms (111/1053090) 2.33 MByte 5751
 4344=521:3791:7:2:1:9:0:11
[  1] 1.00-2.00 sec   112 MBytes   942 Mbits/sec
 22.492/21.768/23.254/0.397 ms (112/1050799) 2.53 MByte 5233
 4487=594:3893:0:0:0:0:0:0
[  1] 2.00-3.00 sec   112 MBytes   941 Mbits/sec
 23.624/22.987/24.248/0.327 ms (112/1050502) 2.66 MByte 4980
 4462=548:3912:1:1:0:0:0:0
[  1] 3.00-4.00 sec   112 MBytes   941 Mbits/sec
 24.475/23.741/24.971/0.287 ms (113/1041476) 2.73 MByte 4808
 4483=575:3908:0:0:0:0:0:0
[  1] 4.00-5.00 sec   112 MBytes   942 Mbits/sec
 25.146/24.597/25.459/0.254 ms (112/1050799) 2.83 MByte 4680
 4523=642:3880:0:1:0:0:0:0
[  1] 5.00-6.00 sec   112 MBytes   942 Mbits/sec
 21.592/15.549/36.567/2.358 ms (112/1050786) 2.42 MByte 5450
 4373=489:3868:0:1:0:0:1:12
[  1] 6.00-7.00 sec   112 MBytes   941 Mbits/sec
 21.447/20.800/22.024/0.275 ms (112/1050528) 2.41 MByte 5486
 4464=559:3904:0:1:0:0:0:0
[  1] 7.00-8.00 sec   112 MBytes   942 Mbits/sec
 22.021/21.536/22.519/0.216 ms (113/1041502) 2.46 MByte 5344
 4475=557:3918:0:0:0:0:0:0
[  1] 8.00-9.00 sec   112 MBytes   942 Mbits/sec
 22.445/22.023/22.774/0.209 ms (112/1050799) 2.53 MByte 5243
 4407=474:3932:0:1:0:0:0:0
[  1] 9.00-10.00 sec   112 MBytes   941 Mbits/sec
 22.680/22.269/23.024/0.184 ms (112/1050541) 2.55 MByte 5188
 4511=635:3875:1:0:0:0:0:0
[  1] 0.00-10.03 sec  1.10 GBytes   941 Mbits/sec
 22.629/10.445/39.920/2.083 ms (1125/1048576) 2.54 MByte 5197
 44659=5598:39007:9:7:1:9:1:23

Thanks,
Bob

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

--000000000000d33feb05cee66a6a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>Sorry for the spam. I&#39;m try=
ing to support a meaningful TCP message latency w/iperf 2 from the sender s=
ide w/o requiring e2e clock synchronization. I thought I&#39;d try to use t=
he TCP_NOTSENT_LOWAT event to=C2=A0help with this. It seems that this event=
 goes off when the bytes are in flight vs have reached the destination netw=
ork stack. If that&#39;s the case, then <a href=3D"https://sourceforge.net/=
projects/iperf2/">iperf 2 </a>client (sender) may be able to produce the me=
ssage latency by adding the drain time (write start to TCP_NOTSENT_LOWAT) a=
nd the sampled RTT.=C2=A0<br><br>Does this seem reasonable? <br><br>Below a=
re some sample outputs of a 10G wired sending to a 1G wired. These systems =
do have e2e clock sync so the server side message latency is correct. The R=
TT=C2=A0+ Drain does approximately equal the server side e2e msg latency<br=
><br>First with BBR<br><br>[root@ryzen3950 iperf2-code]# iperf -c 192.168.1=
.156 -i 1 -e --tcp-drain --realtime -Z bbr --trip-times -l 1M<br>----------=
--------------------------------------------------<br>Client connecting to =
192.168.1.156, TCP port 5001 with pid 206299 (1 flows)<br>Write buffer size=
: 1048576 Byte (drain-enabled)<br>TCP congestion control set to bbr<br>TCP =
window size: =C2=A0128 KByte (default)<br>---------------------------------=
---------------------------<br>[ =C2=A01] local 192.168.1.133%enp4s0 port 6=
0684 connected with 192.168.1.156 port 5001 (MSS=3D1448) (trip-times) (sock=
=3D3) (ct=3D0.26 ms) on 2021-10-21 17:44:10 (PDT)<br>[ ID] Interval =C2=A0 =
=C2=A0 =C2=A0 =C2=A0Transfer =C2=A0 =C2=A0Bandwidth =C2=A0 =C2=A0 =C2=A0 Wr=
ite/Err =C2=A0Rtry =C2=A0 =C2=A0 Cwnd/RTT =C2=A0 =C2=A0 =C2=A0 =C2=A0NetPwr=
 =C2=A0Drain avg/min/max/stdev (cnt)<br>[ =C2=A01] 0.00-1.00 sec =C2=A0 112=
 MBytes =C2=A0 940 Mbits/sec =C2=A0113/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
0 =C2=A0 =C2=A0 =C2=A0263K/1906 us =C2=A061616 =C2=A08.947/8.322/13.465/0.4=
78 ms (112)<br>[ =C2=A01] 1.00-2.00 sec =C2=A0 112 MBytes =C2=A0 940 Mbits/=
sec =C2=A0112/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0260=
K/1987 us =C2=A059104 =C2=A08.911/8.229/9.569/0.229 ms (112)<br>[ =C2=A01] =
2.00-3.00 sec =C2=A0 113 MBytes =C2=A0 948 Mbits/sec =C2=A0113/0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0254K/2087 us =C2=A056775 =C2=
=A08.910/8.311/9.564/0.221 ms (113)<br>[ =C2=A01] 3.00-4.00 sec =C2=A0 112 =
MBytes =C2=A0 940 Mbits/sec =C2=A0112/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00=
 =C2=A0 =C2=A0 =C2=A0263K/1710 us =C2=A068679 =C2=A08.911/8.297/9.618/0.217=
 ms (112)<br>[ =C2=A01] 4.00-5.00 sec =C2=A0 112 MBytes =C2=A0 940 Mbits/se=
c =C2=A0112/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0254K/=
2024 us =C2=A058024 =C2=A08.907/8.470/9.641/0.197 ms (112)<br>[ =C2=A01] 5.=
00-6.00 sec =C2=A0 112 MBytes =C2=A0 940 Mbits/sec =C2=A0112/0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0263K/2124 us =C2=A055292 =C2=
=A08.911/8.291/9.325/0.198 ms (112)<br>[ =C2=A01] 6.00-7.00 sec =C2=A0 113 =
MBytes =C2=A0 948 Mbits/sec =C2=A0113/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00=
 =C2=A0 =C2=A0 =C2=A0265K/2012 us =C2=A058891 =C2=A08.913/8.226/9.569/0.229=
 ms (113)<br>[ =C2=A01] 7.00-8.00 sec =C2=A0 112 MBytes =C2=A0 940 Mbits/se=
c =C2=A0112/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0265K/=
1989 us =C2=A059045 =C2=A08.908/8.313/9.366/0.194 ms (112)<br>[ =C2=A01] 8.=
00-9.00 sec =C2=A0 112 MBytes =C2=A0 940 Mbits/sec =C2=A0112/0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0263K/1999 us =C2=A058750 =C2=
=A08.908/8.212/9.402/0.211 ms (112)<br>[ =C2=A01] 9.00-10.00 sec =C2=A0 112=
 MBytes =C2=A0 940 Mbits/sec =C2=A0112/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
0 =C2=A0 =C2=A0 =C2=A0 =C2=A05K/242 us =C2=A0485291 =C2=A08.947/8.319/12.75=
4/0.414 ms (112)<br>[ =C2=A01] 0.00-10.06 sec =C2=A01.10 GBytes =C2=A0 937 =
Mbits/sec =C2=A01125/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =
=C2=A0 =C2=A05K/242 us =C2=A0483764 =C2=A08.950/8.212/45.293/1.120 ms (1123=
)<br><br>[root@localhost rjmcmahon]# iperf -s -e -B 192.168.1.156%enp4s0f0 =
-i 1 --realtime<br>--------------------------------------------------------=
----<br>Server listening on TCP port 5001 with pid 53099<br>Binding to loca=
l address 192.168.1.156 and iface enp4s0f0<br>Read buffer size: =C2=A0128 K=
Byte (Dist bin width=3D16.0 KByte)<br>TCP window size: =C2=A0128 KByte (def=
ault)<br>------------------------------------------------------------<br>[ =
=C2=A01] local 192.168.1.156%enp4s0f0 port 5001 connected with 192.168.1.13=
3 port 60684 (MSS=3D1448) (trip-times) (sock=3D4) (peer 2.1.4-master) on 20=
21-10-21 20:44:10 (EDT)<br>[ ID] Interval =C2=A0 =C2=A0 =C2=A0 =C2=A0Transf=
er =C2=A0 =C2=A0Bandwidth =C2=A0 =C2=A0Burst Latency avg/min/max/stdev (cnt=
/size) inP NetPwr =C2=A0Reads=3DDist<br>[ =C2=A01] 0.00-1.00 sec =C2=A0 112=
 MBytes =C2=A0 936 Mbits/sec =C2=A010.629/9.890/14.998/1.507 ms (111/105396=
4) 1.20 MByte 11007 =C2=A04347=3D412:3927:7:0:1:0:0:0<br>[ =C2=A01] 1.00-2.=
00 sec =C2=A0 112 MBytes =C2=A0 942 Mbits/sec =C2=A010.449/9.736/10.740/0.2=
37 ms (112/1050799) 1.18 MByte 11263 =C2=A04403=3D465:3938:0:0:0:0:0:0<br>[=
 =C2=A01] 2.00-3.00 sec =C2=A0 112 MBytes =C2=A0 942 Mbits/sec =C2=A010.426=
/9.873/10.698/0.246 ms (113/1041489) 1.16 MByte 11288 =C2=A04382=3D420:3962=
:0:0:0:0:0:0<br>[ =C2=A01] 3.00-4.00 sec =C2=A0 112 MBytes =C2=A0 941 Mbits=
/sec =C2=A010.485/9.724/10.716/0.208 ms (112/1050541) 1.18 MByte 11221 =C2=
=A04393=3D446:3946:1:0:0:0:0:0<br>[ =C2=A01] 4.00-5.00 sec =C2=A0 112 MByte=
s =C2=A0 942 Mbits/sec =C2=A010.487/9.902/10.736/0.216 ms (112/1050786) 1.1=
8 MByte 11222 =C2=A04392=3D448:3944:0:0:0:0:0:0<br>[ =C2=A01] 5.00-6.00 sec=
 =C2=A0 112 MBytes =C2=A0 942 Mbits/sec =C2=A010.484/9.758/10.748/0.236 ms =
(112/1050799) 1.18 MByte 11226 =C2=A04397=3D456:3940:0:1:0:0:0:0<br>[ =C2=
=A01] 6.00-7.00 sec =C2=A0 112 MBytes =C2=A0 941 Mbits/sec =C2=A010.475/9.7=
56/10.753/0.248 ms (112/1050515) 1.18 MByte 11232 =C2=A04403=3D473:3930:0:0=
:0:0:0:0<br>[ =C2=A01] 7.00-8.00 sec =C2=A0 112 MBytes =C2=A0 942 Mbits/sec=
 =C2=A010.435/9.759/10.757/0.288 ms (113/1041502) 1.16 MByte 11278 =C2=A044=
14=3D480:3934:0:0:0:0:0:0<br>[ =C2=A01] 8.00-9.00 sec =C2=A0 112 MBytes =C2=
=A0 942 Mbits/sec =C2=A010.485/9.762/10.759/0.277 ms (112/1050799) 1.18 MBy=
te 11225 =C2=A04409=3D470:3939:0:0:0:0:0:0<br>[ =C2=A01] 9.00-10.00 sec =C2=
=A0 112 MBytes =C2=A0 942 Mbits/sec =C2=A010.550/10.000/10.759/0.191 ms (11=
2/1050786) 1.19 MByte 11155 =C2=A04399=3D455:3944:0:0:0:0:0:0<br>[ =C2=A01]=
 0.00-10.05 sec =C2=A01.10 GBytes =C2=A0 937 Mbits/sec =C2=A010.524/9.724/4=
5.519/1.173 ms (1123/1048576) 1.18 MByte 11132 =C2=A044149=3D4725:39414:8:1=
:1:0:0:0</div><div><br></div><div>Now with CUBIC<br><br>[root@ryzen3950 ipe=
rf2-code]# iperf -c 192.168.1.156 -i 1 -e --tcp-drain --realtime -Z cubic -=
-trip-times -l 1M<br>------------------------------------------------------=
------<br>Client connecting to 192.168.1.156, TCP port 5001 with pid 206487=
 (1 flows)<br>Write buffer size: 1048576 Byte (drain-enabled)<br>TCP conges=
tion control set to cubic<br>TCP window size: 85.0 KByte (default)<br>-----=
-------------------------------------------------------<br>[ =C2=A01] local=
 192.168.1.133%enp4s0 port 60686 connected with 192.168.1.156 port 5001 (MS=
S=3D1448) (trip-times) (sock=3D3) (ct=3D0.49 ms) on 2021-10-21 17:47:02 (PD=
T)<br>[ ID] Interval =C2=A0 =C2=A0 =C2=A0 =C2=A0Transfer =C2=A0 =C2=A0Bandw=
idth =C2=A0 =C2=A0 =C2=A0 Write/Err =C2=A0Rtry =C2=A0 =C2=A0 Cwnd/RTT =C2=
=A0 =C2=A0 =C2=A0 =C2=A0NetPwr =C2=A0Drain avg/min/max/stdev (cnt)<br>[ =C2=
=A01] 0.00-1.00 sec =C2=A0 113 MBytes =C2=A0 948 Mbits/sec =C2=A0114/0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 66 =C2=A0 =C2=A0 1527K/13168 us =C2=A08998 =C2=A08=
.855/4.757/15.949/0.995 ms (113)<br>[ =C2=A01] 1.00-2.00 sec =C2=A0 113 MBy=
tes =C2=A0 948 Mbits/sec =C2=A0113/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =
=C2=A0 =C2=A0 1668K/14380 us =C2=A08240 =C2=A08.899/8.450/9.425/0.270 ms (1=
13)<br>[ =C2=A01] 2.00-3.00 sec =C2=A0 112 MBytes =C2=A0 940 Mbits/sec =C2=
=A0112/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 1781K/15335 us =
=C2=A07658 =C2=A08.904/8.446/9.314/0.258 ms (112)<br>[ =C2=A01] 3.00-4.00 s=
ec =C2=A0 112 MBytes =C2=A0 940 Mbits/sec =C2=A0112/0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A00 =C2=A0 =C2=A0 1867K/16127 us =C2=A07282 =C2=A08.900/8.570/9.=
313/0.252 ms (112)<br>[ =C2=A01] 4.00-5.00 sec =C2=A0 113 MBytes =C2=A0 948=
 Mbits/sec =C2=A0113/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 19=
31K/16537 us =C2=A07165 =C2=A08.908/8.330/9.431/0.290 ms (113)<br>[ =C2=A01=
] 5.00-6.00 sec =C2=A0 111 MBytes =C2=A0 931 Mbits/sec =C2=A0111/0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A01 =C2=A0 =C2=A0 1439K/12342 us =C2=A09431 =C2=A0=
8.945/4.303/18.970/1.091 ms (111)<br>[ =C2=A01] 6.00-7.00 sec =C2=A0 113 MB=
ytes =C2=A0 948 Mbits/sec =C2=A0113/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =
=C2=A0 =C2=A0 1515K/12845 us =C2=A09225 =C2=A08.904/8.451/9.432/0.298 ms (1=
13)<br>[ =C2=A01] 7.00-8.00 sec =C2=A0 112 MBytes =C2=A0 940 Mbits/sec =C2=
=A0112/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 1569K/13353 us =
=C2=A08795 =C2=A08.907/8.569/9.314/0.283 ms (112)<br>[ =C2=A01] 8.00-9.00 s=
ec =C2=A0 112 MBytes =C2=A0 940 Mbits/sec =C2=A0112/0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A00 =C2=A0 =C2=A0 1606K/13718 us =C2=A08561 =C2=A08.909/8.571/9.=
312/0.275 ms (112)<br>[ =C2=A01] 9.00-10.00 sec =C2=A0 113 MBytes =C2=A0 94=
8 Mbits/sec =C2=A0113/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 1=
630K/13930 us =C2=A08506 =C2=A08.906/8.569/9.316/0.298 ms (113)<br>[ =C2=A0=
1] 0.00-10.04 sec =C2=A01.10 GBytes =C2=A0 940 Mbits/sec =C2=A01127/0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 67 =C2=A0 =C2=A0 1630K/13930 us =C2=A08431 =C2=A08=
.904/4.303/18.970/0.526 ms (1125)</div><div><br></div><div>[root@localhost =
rjmcmahon]# iperf -s -e -B 192.168.1.156%enp4s0f0 -i 1 --realtime<br>------=
------------------------------------------------------<br>Server listening =
on TCP port 5001 with pid 53121<br>Binding to local address 192.168.1.156 a=
nd iface enp4s0f0<br>Read buffer size: =C2=A0128 KByte (Dist bin width=3D16=
.0 KByte)<br>TCP window size: =C2=A0128 KByte (default)<br>----------------=
--------------------------------------------<br>[ =C2=A01] local 192.168.1.=
156%enp4s0f0 port 5001 connected with 192.168.1.133 port 60686 (MSS=3D1448)=
 (trip-times) (sock=3D4) (peer 2.1.4-master) on 2021-10-21 20:47:02 (EDT)<b=
r>[ ID] Interval =C2=A0 =C2=A0 =C2=A0 =C2=A0Transfer =C2=A0 =C2=A0Bandwidth=
 =C2=A0 =C2=A0Burst Latency avg/min/max/stdev (cnt/size) inP NetPwr =C2=A0R=
eads=3DDist<br>[ =C2=A01] 0.00-1.00 sec =C2=A0 111 MBytes =C2=A0 935 Mbits/=
sec =C2=A020.327/10.445/39.920/4.341 ms (111/1053090) 2.33 MByte 5751 =C2=
=A04344=3D521:3791:7:2:1:9:0:11<br>[ =C2=A01] 1.00-2.00 sec =C2=A0 112 MByt=
es =C2=A0 942 Mbits/sec =C2=A022.492/21.768/23.254/0.397 ms (112/1050799) 2=
.53 MByte 5233 =C2=A04487=3D594:3893:0:0:0:0:0:0<br>[ =C2=A01] 2.00-3.00 se=
c =C2=A0 112 MBytes =C2=A0 941 Mbits/sec =C2=A023.624/22.987/24.248/0.327 m=
s (112/1050502) 2.66 MByte 4980 =C2=A04462=3D548:3912:1:1:0:0:0:0<br>[ =C2=
=A01] 3.00-4.00 sec =C2=A0 112 MBytes =C2=A0 941 Mbits/sec =C2=A024.475/23.=
741/24.971/0.287 ms (113/1041476) 2.73 MByte 4808 =C2=A04483=3D575:3908:0:0=
:0:0:0:0<br>[ =C2=A01] 4.00-5.00 sec =C2=A0 112 MBytes =C2=A0 942 Mbits/sec=
 =C2=A025.146/24.597/25.459/0.254 ms (112/1050799) 2.83 MByte 4680 =C2=A045=
23=3D642:3880:0:1:0:0:0:0<br>[ =C2=A01] 5.00-6.00 sec =C2=A0 112 MBytes =C2=
=A0 942 Mbits/sec =C2=A021.592/15.549/36.567/2.358 ms (112/1050786) 2.42 MB=
yte 5450 =C2=A04373=3D489:3868:0:1:0:0:1:12<br>[ =C2=A01] 6.00-7.00 sec =C2=
=A0 112 MBytes =C2=A0 941 Mbits/sec =C2=A021.447/20.800/22.024/0.275 ms (11=
2/1050528) 2.41 MByte 5486 =C2=A04464=3D559:3904:0:1:0:0:0:0<br>[ =C2=A01] =
7.00-8.00 sec =C2=A0 112 MBytes =C2=A0 942 Mbits/sec =C2=A022.021/21.536/22=
.519/0.216 ms (113/1041502) 2.46 MByte 5344 =C2=A04475=3D557:3918:0:0:0:0:0=
:0<br>[ =C2=A01] 8.00-9.00 sec =C2=A0 112 MBytes =C2=A0 942 Mbits/sec =C2=
=A022.445/22.023/22.774/0.209 ms (112/1050799) 2.53 MByte 5243 =C2=A04407=
=3D474:3932:0:1:0:0:0:0<br>[ =C2=A01] 9.00-10.00 sec =C2=A0 112 MBytes =C2=
=A0 941 Mbits/sec =C2=A022.680/22.269/23.024/0.184 ms (112/1050541) 2.55 MB=
yte 5188 =C2=A04511=3D635:3875:1:0:0:0:0:0<br>[ =C2=A01] 0.00-10.03 sec =C2=
=A01.10 GBytes =C2=A0 941 Mbits/sec =C2=A022.629/10.445/39.920/2.083 ms (11=
25/1048576) 2.54 MByte 5197 =C2=A044659=3D5598:39007:9:7:1:9:1:23<br></div>=
<div><br>Thanks,</div><div>Bob<br><br><br></div></div>

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
--000000000000d33feb05cee66a6a--

--===============5228470878208383664==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5228470878208383664==--

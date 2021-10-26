Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1B443BDCD
	for <lists+cake@lfdr.de>; Wed, 27 Oct 2021 01:23:54 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CA9CF3CB59;
	Tue, 26 Oct 2021 19:23:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1635290629;
	bh=iGQHP6MAaamsSG/c59PAwJ1cmDy04XeCF9cRssh2cLA=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=EPcVFchcTHTJghsl+0NGkZkSG0NpvtASgEymKMvoCNpWyPOhQAv3eDVSgtBWvV4Du
	 TVJFAt3Otpl654C3nsaR/LSR9yS9ByivZBh6UY87rWr66uT/iyJtiGAbwHmricBSmo
	 Kit8VLB1TsjCQ6HyWDKE32mvHRgjtWL3Hh2hleQ145cDIlT8di2NfQz/MzJoxIXgfJ
	 1i1yyFhDSsDdmN2AZimfBlhvyj6O6T/sqiBkvZ4vgKnv3lx0l2IMd0F5obli2KZxIM
	 xHTM0de47OQApGxR3Fc09gehK/pXPW7F4jU2fXsw4abC5WbMlQ9XMuAYrFhb0ohmkr
	 2vCN8gBW5LFlw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DE08E3CB41
 for <cake@lists.bufferbloat.net>; Tue, 26 Oct 2021 19:23:47 -0400 (EDT)
Received: by mail-ed1-x52e.google.com with SMTP id z20so2740988edc.13
 for <cake@lists.bufferbloat.net>; Tue, 26 Oct 2021 16:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qx92Tw0X6KxemGtzhMYpT0aQpjnaSdiP8JM6zOC88qM=;
 b=VaqQuv4oa4P0+r60WRSHDSy7mwXrFOhHQcTOA3WCO9J6vWYXIKdRGxcagrJGz+Oht5
 jOnYXsE9+rqDO9GvDyd7ShME2U9gPS4caCiA29SguC45+7bbTgNSnc/F1lXxjqDObMdU
 Mju44u/rq+cDDt2PSZO3HY+4Elpd4DVGmr6J0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qx92Tw0X6KxemGtzhMYpT0aQpjnaSdiP8JM6zOC88qM=;
 b=BJiKbyO2v+f7RgwmDH4AGKagrGjSeBLrKmCqt1O2UZaCXj6RxoXj8IaivxgTfbaj3D
 HFMuO+ztLCK80SlnCbJYbkvOMgztdusM4VsPEsYym6Mxs03j6WKTZ5qH8tQqsEECXco/
 JJtqnxVt6oX9DsTF33NoEhKjFMe7XYuTRPY9D1TWX6IyLH/Fei8QnDiF14O5OU7v2YoW
 hR8+CLeyqC7hadRLizVvR/kXk7rLyaEr8cV4E/PfBjsMiJ9cijWGDnmB4FYulB+Zyiv0
 kfxsMmh6bmd0GodS11aCz/1iLAQan2QsLlzAcnae4qYojvswRChlM00VRFYuBAsPIP9x
 FtOQ==
X-Gm-Message-State: AOAM530rtjKyjpyPCIPOd7uvSsMtVcOFM6Wo6YeAc8Oyz1vFENjeszmP
 /2jsIO6Cj3NYl5qfEcFlB6RQ6tFvxbwQ1ki9bmsjRVk642nXCritHJfvY+RUVO0mJ/RvPARZjNk
 MxdxBSPlq5Va0PkPqyqn60e3CUzlB
X-Google-Smtp-Source: ABdhPJxUbBLLyofvASfcZGAthOzIgMBnpRt7hJTDeJSyJPUzKEq5j6vxO1jA6tn/uTWqBBs5K2evNboEKHxhyETKGuU=
X-Received: by 2002:a17:907:7f14:: with SMTP id
 qf20mr35420105ejc.110.1635290626543; 
 Tue, 26 Oct 2021 16:23:46 -0700 (PDT)
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
 <CAHb6Lvp1dxnbuCNiE5FKC-yRyD6HGkb0H1ZQAm_nSxANwJg2pA@mail.gmail.com>
 <E3373586-EF4C-40DF-885B-0D6134E6EAF1@apple.com>
 <0e29e225-9f55-4392-640a-2d27c4c26116@gmail.com>
 <4BFB5A37-9574-49BE-B083-FBC1F2B0381E@apple.com>
In-Reply-To: <4BFB5A37-9574-49BE-B083-FBC1F2B0381E@apple.com>
Date: Tue, 26 Oct 2021 16:23:35 -0700
Message-ID: <CAHb6LvosV921NSpYXpzgRScuJDFNemCsUGqLfOm5NsOyt+TOVA@mail.gmail.com>
To: Christoph Paasch <cpaasch@apple.com>
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
 Eric Dumazet <eric.dumazet@gmail.com>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, codel <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Steve Crocker <steve@shinkuro.com>,
 Vint Cerf <vint@google.com>
Content-Type: multipart/mixed; boundary="===============2594529432285597845=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2594529432285597845==
Content-Type: multipart/alternative; boundary="000000000000e68dae05cf49c495"

--000000000000e68dae05cf49c495
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm confused. I don't see any blocking nor partial writes per the write()
at the app level with TCP_NOTSENT_LOWAT set at 4 bytes. The burst is 40K,
the write size is 4K and the watermark is 4 bytes. There are ten writes per
burst.

The S8 histograms are the times waiting on the select().  The first value
is the bin number (multiplied by 100usec bin width) and second the bin
count. The worst case time is at the end and is timestamped per unix epoch.

The second run is over a controlled WiFi link where a 99.7% point of 4-8ms
for a WiFi TX op arbitration win is in the ballpark. The first is 1G wired
and is in the 600 usec range. (No media arbitration there.)

 [root@localhost iperf2-code]# src/iperf -c 10.19.87.9 --trip-times -i 1 -e
--tcp-write-prefetch 4 -l 4K --burst-size=3D40K --histograms
WARN: option of --burst-size without --burst-period defaults --burst-period
to 1 second
------------------------------------------------------------
Client connecting to 10.19.87.9, TCP port 5001 with pid 2124 (1 flows)
Write buffer size: 4096 Byte
Bursting: 40.0 KByte every 1.00 seconds
TCP window size: 85.0 KByte (default)
Event based writes (pending queue watermark at 4 bytes)
Enabled select histograms bin-width=3D0.100 ms, bins=3D10000
------------------------------------------------------------
[  1] local 10.19.87.10%eth0 port 33166 connected with 10.19.87.9 port 5001
(MSS=3D1448) (prefetch=3D4) (trip-times) (sock=3D3) (ct=3D0.54 ms) on 2021-=
10-26
16:07:33 (PDT)
[ ID] Interval        Transfer    Bandwidth       Write/Err  Rtry
Cwnd/RTT        NetPwr
[  1] 0.00-1.00 sec  40.1 KBytes   329 Kbits/sec  11/0          0
14K/5368 us  8
[  1] 0.00-1.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:1,2:5,3:2,4:1,11:1
(5.00/95.00/99.7%=3D1/11/11,Outliers=3D0,obl/obu=3D0/0) (1.089
ms/1635289653.928360)
[  1] 1.00-2.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/569 us  72
[  1] 1.00-2.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,2:1,3:4,4:1,7:1,8:=
1
(5.00/95.00/99.7%=3D1/8/8,Outliers=3D0,obl/obu=3D0/0) (0.736 ms/1635289654.=
928088)
[  1] 2.00-3.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/312 us  131
[  1] 2.00-3.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,2:2,3:2,5:2,6:1
(5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.548 ms/1635289655.=
927776)
[  1] 3.00-4.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/302 us  136
[  1] 3.00-4.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,2:2,3:5,6:1
(5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.584 ms/1635289656.=
927814)
[  1] 4.00-5.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/316 us  130
[  1] 4.00-5.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,3:2,4:2,5:2,6:1
(5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.572 ms/1635289657.=
927810)
[  1] 5.00-6.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/253 us  162
[  1] 5.00-6.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,2:2,3:4,5:1
(5.00/95.00/99.7%=3D1/5/5,Outliers=3D0,obl/obu=3D0/0) (0.417 ms/1635289658.=
927630)
[  1] 6.00-7.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/290 us  141
[  1] 6.00-7.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,3:3,4:3,6:1
(5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.573 ms/1635289659.=
927771)
[  1] 7.00-8.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/359 us  114
[  1] 7.00-8.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,3:4,4:3,6:1
(5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.570 ms/1635289660.=
927753)
[  1] 8.00-9.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/349 us  117
[  1] 8.00-9.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,3:5,4:1,7:1
(5.00/95.00/99.7%=3D1/7/7,Outliers=3D0,obl/obu=3D0/0) (0.608 ms/1635289661.=
927843)
[  1] 9.00-10.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/347 us  118
[  1] 9.00-10.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,2:1,3:5,8:1
(5.00/95.00/99.7%=3D1/8/8,Outliers=3D0,obl/obu=3D0/0) (0.725 ms/1635289662.=
927861)
[  1] 0.00-10.01 sec   400 KBytes   327 Kbits/sec  102/0          0
14K/1519 us  27
[  1] 0.00-10.01 sec S8(f)-PDF:
bin(w=3D100us):cnt(100)=3D1:25,2:13,3:36,4:11,5:5,6:5,7:2,8:2,11:1
(5.00/95.00/99.7%=3D1/7/11,Outliers=3D0,obl/obu=3D0/0) (1.089
ms/1635289653.928360)

[root@localhost iperf2-code]# src/iperf -c 192.168.1.1 --trip-times -i 1 -e
--tcp-write-prefetch 4 -l 4K --burst-size=3D40K --histograms
WARN: option of --burst-size without --burst-period defaults --burst-period
to 1 second
------------------------------------------------------------
Client connecting to 192.168.1.1, TCP port 5001 with pid 2131 (1 flows)
Write buffer size: 4096 Byte
Bursting: 40.0 KByte every 1.00 seconds
TCP window size: 85.0 KByte (default)
Event based writes (pending queue watermark at 4 bytes)
Enabled select histograms bin-width=3D0.100 ms, bins=3D10000
------------------------------------------------------------
[  1] local 192.168.1.4%eth1 port 45518 connected with 192.168.1.1 port
5001 (MSS=3D1448) (prefetch=3D4) (trip-times) (sock=3D3) (ct=3D5.48 ms) on
2021-10-26 16:07:56 (PDT)
[ ID] Interval        Transfer    Bandwidth       Write/Err  Rtry
Cwnd/RTT        NetPwr
[  1] 0.00-1.00 sec  40.1 KBytes   329 Kbits/sec  11/0          0
14K/10339 us  4
[  1] 0.00-1.00 sec S8-PDF:
bin(w=3D100us):cnt(10)=3D1:1,40:1,47:1,49:2,50:3,51:1,60:1
(5.00/95.00/99.7%=3D1/60/60,Outliers=3D0,obl/obu=3D0/0) (5.990
ms/1635289676.802143)
[  1] 1.00-2.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/4853 us  8
[  1] 1.00-2.00 sec S8-PDF:
bin(w=3D100us):cnt(10)=3D1:2,38:1,39:1,44:1,45:1,49:1,51:1,52:1,60:1
(5.00/95.00/99.7%=3D1/60/60,Outliers=3D0,obl/obu=3D0/0) (5.937
ms/1635289677.802274)
[  1] 2.00-3.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/4991 us  8
[  1] 2.00-3.00 sec S8-PDF:
bin(w=3D100us):cnt(10)=3D1:2,48:1,49:2,50:2,51:1,60:1,64:1
(5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.307
ms/1635289678.794326)
[  1] 3.00-4.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/4610 us  9
[  1] 3.00-4.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,49:3,50:3,56:1,64:=
1
(5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.362
ms/1635289679.794335)
[  1] 4.00-5.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/5028 us  8
[  1] 4.00-5.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,49:6,59:1,64:1
(5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.367
ms/1635289680.794399)
[  1] 5.00-6.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/5113 us  8
[  1] 5.00-6.00 sec S8-PDF:
bin(w=3D100us):cnt(10)=3D1:2,49:3,50:2,58:1,60:1,65:1
(5.00/95.00/99.7%=3D1/65/65,Outliers=3D0,obl/obu=3D0/0) (6.442
ms/1635289681.794392)
[  1] 6.00-7.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/5054 us  8
[  1] 6.00-7.00 sec S8-PDF:
bin(w=3D100us):cnt(10)=3D1:2,39:1,49:3,51:1,60:2,64:1
(5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.374
ms/1635289682.794335)
[  1] 7.00-8.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/5138 us  8
[  1] 7.00-8.00 sec S8-PDF:
bin(w=3D100us):cnt(10)=3D1:2,39:2,40:1,49:2,50:1,60:1,64:1
(5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.396
ms/1635289683.794338)
[  1] 8.00-9.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/5329 us  8
[  1] 8.00-9.00 sec S8-PDF:
bin(w=3D100us):cnt(10)=3D1:2,38:1,45:2,49:1,50:3,63:1
(5.00/95.00/99.7%=3D1/63/63,Outliers=3D0,obl/obu=3D0/0) (6.292
ms/1635289684.794262)
[  1] 9.00-10.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0
14K/5329 us  8
[  1] 9.00-10.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,39:1,49:3,50:3,84=
:1
(5.00/95.00/99.7%=3D1/84/84,Outliers=3D0,obl/obu=3D0/0) (8.306
ms/1635289685.796315)
[  1] 0.00-10.01 sec   400 KBytes   327 Kbits/sec  102/0          0
14K/6331 us  6
[  1] 0.00-10.01 sec S8(f)-PDF:
bin(w=3D100us):cnt(100)=3D1:19,38:2,39:5,40:2,44:1,45:3,47:1,48:1,49:26,50:=
17,51:4,52:1,56:1,58:1,59:1,60:7,63:1,64:5,65:1,84:1
(5.00/95.00/99.7%=3D1/64/84,Outliers=3D0,obl/obu=3D0/0) (8.306
ms/1635289685.796315)

Bob

On Tue, Oct 26, 2021 at 11:45 AM Christoph Paasch <cpaasch@apple.com> wrote=
:

> Hello,
>
> > On Oct 25, 2021, at 9:24 PM, Eric Dumazet <eric.dumazet@gmail.com>
> wrote:
> >
> >
> >
> > On 10/25/21 8:11 PM, Stuart Cheshire via Bloat wrote:
> >> On 21 Oct 2021, at 17:51, Bob McMahon via Make-wifi-fast <
> make-wifi-fast@lists.bufferbloat.net> wrote:
> >>
> >>> Hi All,
> >>>
> >>> Sorry for the spam. I'm trying to support a meaningful TCP message
> latency w/iperf 2 from the sender side w/o requiring e2e clock
> synchronization. I thought I'd try to use the TCP_NOTSENT_LOWAT event to
> help with this. It seems that this event goes off when the bytes are in
> flight vs have reached the destination network stack. If that's the case,
> then iperf 2 client (sender) may be able to produce the message latency b=
y
> adding the drain time (write start to TCP_NOTSENT_LOWAT) and the sampled
> RTT.
> >>>
> >>> Does this seem reasonable?
> >>
> >> I=E2=80=99m not 100% sure what you=E2=80=99re asking, but I will try t=
o help.
> >>
> >> When you set TCP_NOTSENT_LOWAT, the TCP implementation won=E2=80=99t r=
eport
> your endpoint as writable (e.g., via kqueue or epoll) until less than tha=
t
> threshold of data remains unsent. It won=E2=80=99t stop you writing more =
bytes if
> you want to, up to the socket send buffer size, but it won=E2=80=99t *ask=
* you for
> more data until the TCP_NOTSENT_LOWAT threshold is reached.
> >
> >
> > When I implemented TCP_NOTSENT_LOWAT back in 2013 [1], I made sure that
> sendmsg() would actually
> > stop feeding more bytes in TCP transmit queue if the current amount of
> unsent bytes
> > was above the threshold.
> >
> > So it looks like Apple implementation is different, based on your
> description ?
>
> Yes, TCP_NOTSENT_LOWAT only impacts the wakeup on iOS/macOS/...
>
> An app can still fill the send-buffer if it does a sendmsg() with a large
> buffer or does repeated calls to sendmsg().
>
> Fur Apple, the goal of TCP_NOTSENT_LOWAT was to allow an app to quickly
> change the data it "scheduled" to send. And thus allow the app to write t=
he
> smallest "logical unit" it has. If that unit is 512KB large, the app is
> allowed to send that.
> For example, in case of video-streaming one may want to skip ahead in the
> video. In that case the app still needs to transmit the remaining parts o=
f
> the previous frame anyways, before it can send the new video frame.
> That's the reason why the Apple implementation allows one to write more
> than just the lowat threshold.
>
>
> That being said, I do think that Linux's way allows for an easier API
> because the app does not need to be careful at how much data it sends aft=
er
> an epoll/kqueue wakeup. So, the latency-benefits will be easier to get.
>
>
> Christoph
>
>
>
> > [1]
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=
=3Dc9bee3b7fdecb0c1d070c7b54113b3bdfb9a3d36
> >
> > netperf does not use epoll(), but rather a loop over sendmsg().
> >
> > One of the point of TCP_NOTSENT_LOWAT for Google was to be able to
> considerably increase
> > max number of bytes in transmit queues (3rd column of
> /proc/sys/net/ipv4/tcp_wmem)
> > by 10x, allowing for autotune to increase BDP for big RTT flows, this
> without
> > increasing memory needs for flows with small RTT.
> >
> > In other words, the TCP implementation attempts to keep BDP bytes in
> flight + TCP_NOTSENT_LOWAT bytes buffered and ready to go. The BDP of byt=
es
> in flight is necessary to fill the network pipe and get good throughput.
> The TCP_NOTSENT_LOWAT of bytes buffered and ready to go is provided to gi=
ve
> the source software some advance notice that the TCP implementation will
> soon be looking for more bytes to send, so that the buffer doesn=E2=80=99=
t run dry,
> thereby lowering throughput. (The old SO_SNDBUF option conflates both
> =E2=80=9Cbytes in flight=E2=80=9D and =E2=80=9Cbytes buffered and ready t=
o go=E2=80=9D into the same
> number.)
> >>
> >> If you wait for the TCP_NOTSENT_LOWAT notification, write a chunk of n
> bytes of data, and then wait for the next TCP_NOTSENT_LOWAT notification,
> that will tell you roughly how long it took n bytes to depart the machine=
.
> You won=E2=80=99t know why, though. The bytes could depart the machine in=
 response
> for acks indicating that the same number of bytes have been accepted at t=
he
> receiver. But the bytes can also depart the machine because CWND is
> growing. Of course, both of those things are usually happening at the sam=
e
> time.
> >>
> >> How to use TCP_NOTSENT_LOWAT is explained in this video:
> >>
> >> <https://developer.apple.com/videos/play/wwdc2015/719/?time=3D2199>
> >>
> >> Later in the same video is a two-minute demo (time offset 42:00 to tim=
e
> offset 44:00) showing a =E2=80=9Cbefore and after=E2=80=9D demo illustrat=
ing the dramatic
> difference this makes for screen sharing responsiveness.
> >>
> >> <https://developer.apple.com/videos/play/wwdc2015/719/?time=3D2520>
> >>
> >> Stuart Cheshire
> >> _______________________________________________
> >> Bloat mailing list
> >> Bloat@lists.bufferbloat.net
> >> https://lists.bufferbloat.net/listinfo/bloat
> >>
> > _______________________________________________
> > Bloat mailing list
> > Bloat@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/bloat
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

--000000000000e68dae05cf49c495
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m confused. I don&#39;t see any blocking nor partial=
 writes per the write() at the app level with TCP_NOTSENT_LOWAT set at 4 by=
tes. The burst is 40K, the write size is 4K and the watermark is 4 bytes. T=
here are ten writes per burst.<br><br>The S8 histograms are the times waiti=
ng on the select().=C2=A0 The first value is the bin number (multiplied by =
100usec=C2=A0bin width) and second the bin count. The worst case time is at=
 the end and is timestamped per unix epoch.<div><br><div>The second run is =
over a controlled WiFi link where a 99.7% point of 4-8ms for a WiFi TX op a=
rbitration win is in the ballpark. The first is 1G wired and is in=C2=A0the=
=C2=A0600 usec range. (No media=C2=A0arbitration=C2=A0there.)<br><br>=C2=A0=
[root@localhost iperf2-code]# src/iperf -c 10.19.87.9 --trip-times -i 1 -e =
--tcp-write-prefetch 4 -l 4K --burst-size=3D40K --histograms<br>WARN: optio=
n of --burst-size without --burst-period defaults --burst-period to 1 secon=
d<br>------------------------------------------------------------<br>Client=
 connecting to 10.19.87.9, TCP port 5001 with pid 2124 (1 flows)<br>Write b=
uffer size: 4096 Byte<br>Bursting: 40.0 KByte every 1.00 seconds<br>TCP win=
dow size: 85.0 KByte (default)<br>Event based writes (pending queue waterma=
rk at 4 bytes)<br>Enabled select histograms bin-width=3D0.100 ms, bins=3D10=
000<br>------------------------------------------------------------<br>[ =
=C2=A01] local 10.19.87.10%eth0 port 33166 connected with 10.19.87.9 port 5=
001 (MSS=3D1448) (prefetch=3D4) (trip-times) (sock=3D3) (ct=3D0.54 ms) on 2=
021-10-26 16:07:33 (PDT)<br>[ ID] Interval =C2=A0 =C2=A0 =C2=A0 =C2=A0Trans=
fer =C2=A0 =C2=A0Bandwidth =C2=A0 =C2=A0 =C2=A0 Write/Err =C2=A0Rtry =C2=A0=
 =C2=A0 Cwnd/RTT =C2=A0 =C2=A0 =C2=A0 =C2=A0NetPwr<br>[ =C2=A01] 0.00-1.00 =
sec =C2=A040.1 KBytes =C2=A0 329 Kbits/sec =C2=A011/0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/5368 us =C2=A08<br>[ =C2=A01] 0.00-=
1.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:1,2:5,3:2,4:1,11:1 (5.00/95.00/=
99.7%=3D1/11/11,Outliers=3D0,obl/obu=3D0/0) (1.089 ms/1635289653.928360)<br=
>[ =C2=A01] 1.00-2.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =C2=A010/0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/569 us =C2=A0=
72<br>[ =C2=A01] 1.00-2.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,2:1,3:4=
,4:1,7:1,8:1 (5.00/95.00/99.7%=3D1/8/8,Outliers=3D0,obl/obu=3D0/0) (0.736 m=
s/1635289654.928088)<br>[ =C2=A01] 2.00-3.00 sec =C2=A040.0 KBytes =C2=A0 3=
28 Kbits/sec =C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =
=C2=A0 14K/312 us =C2=A0131<br>[ =C2=A01] 2.00-3.00 sec S8-PDF: bin(w=3D100=
us):cnt(10)=3D1:3,2:2,3:2,5:2,6:1 (5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,ob=
l/obu=3D0/0) (0.548 ms/1635289655.927776)<br>[ =C2=A01] 3.00-4.00 sec =C2=
=A040.0 KBytes =C2=A0 328 Kbits/sec =C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/302 us =C2=A0136<br>[ =C2=A01] 3.00-4.00 s=
ec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,2:2,3:5,6:1 (5.00/95.00/99.7%=3D1/6=
/6,Outliers=3D0,obl/obu=3D0/0) (0.584 ms/1635289656.927814)<br>[ =C2=A01] 4=
.00-5.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =C2=A010/0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/316 us =C2=A0130<br>[ =
=C2=A01] 4.00-5.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,3:2,4:2,5:2,6:1=
 (5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.572 ms/1635289657=
.927810)<br>[ =C2=A01] 5.00-6.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec=
 =C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/25=
3 us =C2=A0162<br>[ =C2=A01] 5.00-6.00 sec S8-PDF: bin(w=3D100us):cnt(10)=
=3D1:3,2:2,3:4,5:1 (5.00/95.00/99.7%=3D1/5/5,Outliers=3D0,obl/obu=3D0/0) (0=
.417 ms/1635289658.927630)<br>[ =C2=A01] 6.00-7.00 sec =C2=A040.0 KBytes =
=C2=A0 328 Kbits/sec =C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =
=C2=A0 =C2=A0 14K/290 us =C2=A0141<br>[ =C2=A01] 6.00-7.00 sec S8-PDF: bin(=
w=3D100us):cnt(10)=3D1:3,3:3,4:3,6:1 (5.00/95.00/99.7%=3D1/6/6,Outliers=3D0=
,obl/obu=3D0/0) (0.573 ms/1635289659.927771)<br>[ =C2=A01] 7.00-8.00 sec =
=C2=A040.0 KBytes =C2=A0 328 Kbits/sec =C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/359 us =C2=A0114<br>[ =C2=A01] 7.00-8.=
00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,3:4,4:3,6:1 (5.00/95.00/99.7%=
=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.570 ms/1635289660.927753)<br>[ =C2=
=A01] 8.00-9.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =C2=A010/0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/349 us =C2=A0117<=
br>[ =C2=A01] 8.00-9.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,3:5,4:1,7:=
1 (5.00/95.00/99.7%=3D1/7/7,Outliers=3D0,obl/obu=3D0/0) (0.608 ms/163528966=
1.927843)<br>[ =C2=A01] 9.00-10.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/s=
ec =C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/=
347 us =C2=A0118<br>[ =C2=A01] 9.00-10.00 sec S8-PDF: bin(w=3D100us):cnt(10=
)=3D1:3,2:1,3:5,8:1 (5.00/95.00/99.7%=3D1/8/8,Outliers=3D0,obl/obu=3D0/0) (=
0.725 ms/1635289662.927861)<br>[ =C2=A01] 0.00-10.01 sec =C2=A0 400 KBytes =
=C2=A0 327 Kbits/sec =C2=A0102/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0=
 =C2=A0 =C2=A0 14K/1519 us =C2=A027<br>[ =C2=A01] 0.00-10.01 sec S8(f)-PDF:=
 bin(w=3D100us):cnt(100)=3D1:25,2:13,3:36,4:11,5:5,6:5,7:2,8:2,11:1 (5.00/9=
5.00/99.7%=3D1/7/11,Outliers=3D0,obl/obu=3D0/0) (1.089 ms/1635289653.928360=
)<br><br>[root@localhost iperf2-code]# src/iperf -c 192.168.1.1 --trip-time=
s -i 1 -e --tcp-write-prefetch 4 -l 4K --burst-size=3D40K --histograms<br>W=
ARN: option of --burst-size without --burst-period defaults --burst-period =
to 1 second<br>------------------------------------------------------------=
<br>Client connecting to 192.168.1.1, TCP port 5001 with pid 2131 (1 flows)=
<br>Write buffer size: 4096 Byte<br>Bursting: 40.0 KByte every 1.00 seconds=
<br>TCP window size: 85.0 KByte (default)<br>Event based writes (pending qu=
eue watermark at 4 bytes)<br>Enabled select histograms bin-width=3D0.100 ms=
, bins=3D10000<br>---------------------------------------------------------=
---<br>[ =C2=A01] local 192.168.1.4%eth1 port 45518 connected with 192.168.=
1.1 port 5001 (MSS=3D1448) (prefetch=3D4) (trip-times) (sock=3D3) (ct=3D5.4=
8 ms) on 2021-10-26 16:07:56 (PDT)<br>[ ID] Interval =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Transfer =C2=A0 =C2=A0Bandwidth =C2=A0 =C2=A0 =C2=A0 Write/Err =C2=A0=
Rtry =C2=A0 =C2=A0 Cwnd/RTT =C2=A0 =C2=A0 =C2=A0 =C2=A0NetPwr<br>[ =C2=A01]=
 0.00-1.00 sec =C2=A040.1 KBytes =C2=A0 329 Kbits/sec =C2=A011/0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/10339 us =C2=A04<br>[ =
=C2=A01] 0.00-1.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:1,40:1,47:1,49:2,=
50:3,51:1,60:1 (5.00/95.00/99.7%=3D1/60/60,Outliers=3D0,obl/obu=3D0/0) (5.9=
90 ms/1635289676.802143)<br>[ =C2=A01] 1.00-2.00 sec =C2=A040.0 KBytes =C2=
=A0 328 Kbits/sec =C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=
=A0 =C2=A0 14K/4853 us =C2=A08<br>[ =C2=A01] 1.00-2.00 sec S8-PDF: bin(w=3D=
100us):cnt(10)=3D1:2,38:1,39:1,44:1,45:1,49:1,51:1,52:1,60:1 (5.00/95.00/99=
.7%=3D1/60/60,Outliers=3D0,obl/obu=3D0/0) (5.937 ms/1635289677.802274)<br>[=
 =C2=A01] 2.00-3.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =C2=A010/0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/4991 us =C2=A0=
8<br>[ =C2=A01] 2.00-3.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,48:1,49:=
2,50:2,51:1,60:1,64:1 (5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/=
0) (6.307 ms/1635289678.794326)<br>[ =C2=A01] 3.00-4.00 sec =C2=A040.0 KByt=
es =C2=A0 328 Kbits/sec =C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=
=A0 =C2=A0 =C2=A0 14K/4610 us =C2=A09<br>[ =C2=A01] 3.00-4.00 sec S8-PDF: b=
in(w=3D100us):cnt(10)=3D1:2,49:3,50:3,56:1,64:1 (5.00/95.00/99.7%=3D1/64/64=
,Outliers=3D0,obl/obu=3D0/0) (6.362 ms/1635289679.794335)<br>[ =C2=A01] 4.0=
0-5.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =C2=A010/0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/5028 us =C2=A08<br>[ =C2=A01=
] 4.00-5.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,49:6,59:1,64:1 (5.00/9=
5.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.367 ms/1635289680.79439=
9)<br>[ =C2=A01] 5.00-6.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =C2=
=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/5113 u=
s =C2=A08<br>[ =C2=A01] 5.00-6.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,=
49:3,50:2,58:1,60:1,65:1 (5.00/95.00/99.7%=3D1/65/65,Outliers=3D0,obl/obu=
=3D0/0) (6.442 ms/1635289681.794392)<br>[ =C2=A01] 6.00-7.00 sec =C2=A040.0=
 KBytes =C2=A0 328 Kbits/sec =C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00=
 =C2=A0 =C2=A0 =C2=A0 14K/5054 us =C2=A08<br>[ =C2=A01] 6.00-7.00 sec S8-PD=
F: bin(w=3D100us):cnt(10)=3D1:2,39:1,49:3,51:1,60:2,64:1 (5.00/95.00/99.7%=
=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.374 ms/1635289682.794335)<br>[ =
=C2=A01] 7.00-8.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =C2=A010/0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/5138 us =C2=A0=
8<br>[ =C2=A01] 7.00-8.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,39:2,40:=
1,49:2,50:1,60:1,64:1 (5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/=
0) (6.396 ms/1635289683.794338)<br>[ =C2=A01] 8.00-9.00 sec =C2=A040.0 KByt=
es =C2=A0 328 Kbits/sec =C2=A010/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=
=A0 =C2=A0 =C2=A0 14K/5329 us =C2=A08<br>[ =C2=A01] 8.00-9.00 sec S8-PDF: b=
in(w=3D100us):cnt(10)=3D1:2,38:1,45:2,49:1,50:3,63:1 (5.00/95.00/99.7%=3D1/=
63/63,Outliers=3D0,obl/obu=3D0/0) (6.292 ms/1635289684.794262)<br>[ =C2=A01=
] 9.00-10.00 sec =C2=A040.0 KBytes =C2=A0 328 Kbits/sec =C2=A010/0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 14K/5329 us =C2=A08<br>[ =
=C2=A01] 9.00-10.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,39:1,49:3,50:3=
,84:1 (5.00/95.00/99.7%=3D1/84/84,Outliers=3D0,obl/obu=3D0/0) (8.306 ms/163=
5289685.796315)<br>[ =C2=A01] 0.00-10.01 sec =C2=A0 400 KBytes =C2=A0 327 K=
bits/sec =C2=A0102/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=
=A0 14K/6331 us =C2=A06<br>[ =C2=A01] 0.00-10.01 sec S8(f)-PDF: bin(w=3D100=
us):cnt(100)=3D1:19,38:2,39:5,40:2,44:1,45:3,47:1,48:1,49:26,50:17,51:4,52:=
1,56:1,58:1,59:1,60:7,63:1,64:5,65:1,84:1 (5.00/95.00/99.7%=3D1/64/84,Outli=
ers=3D0,obl/obu=3D0/0) (8.306 ms/1635289685.796315)<br><br>Bob</div></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Tue, Oct 26, 2021 at 11:45 AM Christoph Paasch &lt;<a href=3D"mailto:cpaa=
sch@apple.com">cpaasch@apple.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Hello,<br>
<br>
&gt; On Oct 25, 2021, at 9:24 PM, Eric Dumazet &lt;<a href=3D"mailto:eric.d=
umazet@gmail.com" target=3D"_blank">eric.dumazet@gmail.com</a>&gt; wrote:<b=
r>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; On 10/25/21 8:11 PM, Stuart Cheshire via Bloat wrote:<br>
&gt;&gt; On 21 Oct 2021, at 17:51, Bob McMahon via Make-wifi-fast &lt;<a hr=
ef=3D"mailto:make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">make-w=
ifi-fast@lists.bufferbloat.net</a>&gt; wrote:<br>
&gt;&gt; <br>
&gt;&gt;&gt; Hi All,<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Sorry for the spam. I&#39;m trying to support a meaningful TCP=
 message latency w/iperf 2 from the sender side w/o requiring e2e clock syn=
chronization. I thought I&#39;d try to use the TCP_NOTSENT_LOWAT event to h=
elp with this. It seems that this event goes off when the bytes are in flig=
ht vs have reached the destination network stack. If that&#39;s the case, t=
hen iperf 2 client (sender) may be able to produce the message latency by a=
dding the drain time (write start to TCP_NOTSENT_LOWAT) and the sampled RTT=
.<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Does this seem reasonable?<br>
&gt;&gt; <br>
&gt;&gt; I=E2=80=99m not 100% sure what you=E2=80=99re asking, but I will t=
ry to help.<br>
&gt;&gt; <br>
&gt;&gt; When you set TCP_NOTSENT_LOWAT, the TCP implementation won=E2=80=
=99t report your endpoint as writable (e.g., via kqueue or epoll) until les=
s than that threshold of data remains unsent. It won=E2=80=99t stop you wri=
ting more bytes if you want to, up to the socket send buffer size, but it w=
on=E2=80=99t *ask* you for more data until the TCP_NOTSENT_LOWAT threshold =
is reached.<br>
&gt; <br>
&gt; <br>
&gt; When I implemented TCP_NOTSENT_LOWAT back in 2013 [1], I made sure tha=
t sendmsg() would actually<br>
&gt; stop feeding more bytes in TCP transmit queue if the current amount of=
 unsent bytes<br>
&gt; was above the threshold.<br>
&gt; <br>
&gt; So it looks like Apple implementation is different, based on your desc=
ription ?<br>
<br>
Yes, TCP_NOTSENT_LOWAT only impacts the wakeup on iOS/macOS/...<br>
<br>
An app can still fill the send-buffer if it does a sendmsg() with a large b=
uffer or does repeated calls to sendmsg().<br>
<br>
Fur Apple, the goal of TCP_NOTSENT_LOWAT was to allow an app to quickly cha=
nge the data it &quot;scheduled&quot; to send. And thus allow the app to wr=
ite the smallest &quot;logical unit&quot; it has. If that unit is 512KB lar=
ge, the app is allowed to send that.<br>
For example, in case of video-streaming one may want to skip ahead in the v=
ideo. In that case the app still needs to transmit the remaining parts of t=
he previous frame anyways, before it can send the new video frame.<br>
That&#39;s the reason why the Apple implementation allows one to write more=
 than just the lowat threshold.<br>
<br>
<br>
That being said, I do think that Linux&#39;s way allows for an easier API b=
ecause the app does not need to be careful at how much data it sends after =
an epoll/kqueue wakeup. So, the latency-benefits will be easier to get.<br>
<br>
<br>
Christoph<br>
<br>
<br>
<br>
&gt; [1] <a href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/netdev/=
net.git/commit/?id=3Dc9bee3b7fdecb0c1d070c7b54113b3bdfb9a3d36" rel=3D"noref=
errer" target=3D"_blank">https://git.kernel.org/pub/scm/linux/kernel/git/ne=
tdev/net.git/commit/?id=3Dc9bee3b7fdecb0c1d070c7b54113b3bdfb9a3d36</a><br>
&gt; <br>
&gt; netperf does not use epoll(), but rather a loop over sendmsg().<br>
&gt; <br>
&gt; One of the point of TCP_NOTSENT_LOWAT for Google was to be able to con=
siderably increase<br>
&gt; max number of bytes in transmit queues (3rd column of /proc/sys/net/ip=
v4/tcp_wmem)<br>
&gt; by 10x, allowing for autotune to increase BDP for big RTT flows, this =
without<br>
&gt; increasing memory needs for flows with small RTT.<br>
&gt; <br>
&gt; In other words, the TCP implementation attempts to keep BDP bytes in f=
light + TCP_NOTSENT_LOWAT bytes buffered and ready to go. The BDP of bytes =
in flight is necessary to fill the network pipe and get good throughput. Th=
e TCP_NOTSENT_LOWAT of bytes buffered and ready to go is provided to give t=
he source software some advance notice that the TCP implementation will soo=
n be looking for more bytes to send, so that the buffer doesn=E2=80=99t run=
 dry, thereby lowering throughput. (The old SO_SNDBUF option conflates both=
 =E2=80=9Cbytes in flight=E2=80=9D and =E2=80=9Cbytes buffered and ready to=
 go=E2=80=9D into the same number.)<br>
&gt;&gt; <br>
&gt;&gt; If you wait for the TCP_NOTSENT_LOWAT notification, write a chunk =
of n bytes of data, and then wait for the next TCP_NOTSENT_LOWAT notificati=
on, that will tell you roughly how long it took n bytes to depart the machi=
ne. You won=E2=80=99t know why, though. The bytes could depart the machine =
in response for acks indicating that the same number of bytes have been acc=
epted at the receiver. But the bytes can also depart the machine because CW=
ND is growing. Of course, both of those things are usually happening at the=
 same time.<br>
&gt;&gt; <br>
&gt;&gt; How to use TCP_NOTSENT_LOWAT is explained in this video:<br>
&gt;&gt; <br>
&gt;&gt; &lt;<a href=3D"https://developer.apple.com/videos/play/wwdc2015/71=
9/?time=3D2199" rel=3D"noreferrer" target=3D"_blank">https://developer.appl=
e.com/videos/play/wwdc2015/719/?time=3D2199</a>&gt;<br>
&gt;&gt; <br>
&gt;&gt; Later in the same video is a two-minute demo (time offset 42:00 to=
 time offset 44:00) showing a =E2=80=9Cbefore and after=E2=80=9D demo illus=
trating the dramatic difference this makes for screen sharing responsivenes=
s.<br>
&gt;&gt; <br>
&gt;&gt; &lt;<a href=3D"https://developer.apple.com/videos/play/wwdc2015/71=
9/?time=3D2520" rel=3D"noreferrer" target=3D"_blank">https://developer.appl=
e.com/videos/play/wwdc2015/719/?time=3D2520</a>&gt;<br>
&gt;&gt; <br>
&gt;&gt; Stuart Cheshire<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; Bloat mailing list<br>
&gt;&gt; <a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">B=
loat@lists.bufferbloat.net</a><br>
&gt;&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"no=
referrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a=
><br>
&gt;&gt; <br>
&gt; _______________________________________________<br>
&gt; Bloat mailing list<br>
&gt; <a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">Bloat=
@lists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"norefe=
rrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a><br=
>
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
--000000000000e68dae05cf49c495--

--===============2594529432285597845==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2594529432285597845==--

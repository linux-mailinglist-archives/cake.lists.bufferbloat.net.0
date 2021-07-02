Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8BC3B9F39
	for <lists+cake@lfdr.de>; Fri,  2 Jul 2021 12:45:20 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0A7BD3CB44;
	Fri,  2 Jul 2021 06:45:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1625222719;
	bh=Nm+ZDW7STTOGo5DO3+A9fyvdC8vVUnpqvgSXyHPGWW0=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=GzzQDGWy6SK03hCBzTMC0+NMUfXeAus3uIpIHgkLGPbuFcy4zKCg6exk8TLs7dprB
	 c0mtN1ymcGwSa1rrkE9rm3ljXM7H8SqaRgErieA2hk/nVvV0u0UHAoImQsm5W6OHKX
	 XHML8d4Fh9DIF7cldCBs/1aFgFAQlaOGEyzIN4u83U6vG2OZSJHQW/wFy4MmcrDV1I
	 JPPzxIZzcuVYu4i8p+6srKWgM6Zhih/HtiOed5cuXvxHDrsR7Z1XVN4PB6vQ4l/sm4
	 Bh5kad9AI0TFSH+oHcBBJL389wIq6hh/uJNvwtK1xbS7UFPEThk6l3hIIlVSKytnqM
	 YDHuZzbaQtEpg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D92573CB41
 for <cake@lists.bufferbloat.net>; Fri,  2 Jul 2021 00:04:30 -0400 (EDT)
Received: by mail-ej1-x630.google.com with SMTP id v20so13983901eji.10
 for <cake@lists.bufferbloat.net>; Thu, 01 Jul 2021 21:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6EtzBdD/QcoDZsnpEW7YHZ6lO0VSHXnX8CEpFUzYlfQ=;
 b=KNoRPlaTPy0hvPgOV7dKvsg00qsrtMZwXS1ppQAH4xk231WVtBU3I1Tn30IGcbCClZ
 1x+L2W9OZq8yzbVuCFYajVwdlurzvxNMFxcilXfcjffssdcJNkPQDWhOAeazqcvGomxU
 wtHHxfD5yxEmgMsxqpG8qP/uEivFNdi2FqCEI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6EtzBdD/QcoDZsnpEW7YHZ6lO0VSHXnX8CEpFUzYlfQ=;
 b=YX1T0mSTLUDyTToVjmPgLaQ4ccX3uduE74teM28AGBd2M5WwtOuuq7HuPlvqFAliQA
 QKGNaU3itU03VYyxh1u5/2K7rtvdn7wizL4ymFQ/g+WuzqXBVdbY8qqrO77wX1efypJj
 NrEhJisp8YnRd54F/Bpo9pQOj+yeNC+bi40zMW/oMQ7ADcseMLknhTNwlDz+wMlVFcN7
 FZoH9AEbgh5pHDM94YUV3hCOXqDx5uSBoeWZRA4SwUoAcrfPrUZuW9RRKfz7h+WWWP12
 PDDAlSBD5wYGITHbPrxn2HlAbWyp+fzWaVG5+1D+qThIqOhvhjiaTRbh624U0RldqtKc
 N/GA==
X-Gm-Message-State: AOAM533U1ydLqmBPL+1bAxf+eF9TqntkHmgqpyWlIdvXJPDLtudl3Q6m
 3YoYWK8qPzoFaYZsM7LveIXSfxraoGCMSgfFMIGK4bzfkC/ZlARbG2iVQsAxi8FzkWcq1xpHRpx
 K9sMn+VJryfV1EJAq8UTHWSxNWjR+
X-Google-Smtp-Source: ABdhPJzwO7z60c6LJnCQr8ZKSEZgSAAjOERKwNH3SIX4W2tFgocrKn62St24XE7+wfa3ExuVmVJDCpiaXzHF4/NKo7Y=
X-Received: by 2002:a17:906:7315:: with SMTP id
 di21mr3204094ejc.511.1625198669509; 
 Thu, 01 Jul 2021 21:04:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
In-Reply-To: <1625188609.32718319@apps.rackspace.com>
Date: Thu, 1 Jul 2021 21:04:18 -0700
Message-ID: <CAHb6Lvo1KBhRo0N-+Wq-YWdknbttOT6Dc_wfH2OVR2ODTbotjQ@mail.gmail.com>
To: "David P. Reed" <dpreed@deepplum.com>
X-Mailman-Approved-At: Fri, 02 Jul 2021 06:45:17 -0400
Subject: Re: [Cake] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2: Internet
 Quality workshop CFP for the internet architecture board
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
Cc: starlink@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============7641247139034215107=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7641247139034215107==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000006a35d905c61c0d48"

--0000000000006a35d905c61c0d48
Content-Type: multipart/alternative; boundary="000000000000633af405c61c0d5b"

--000000000000633af405c61c0d5b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I think even packets are a network construct. End/end protocols don't write
packets.  They mostly make writes() and reads and have no clue about
packets. Except for, of course, UDP which you know everything about being
the original designer.

Agreed the telemetry is most interesting and a huge void. Curious to more
of your thoughts on it, metrics, etc.

Note: iperf 2 has write to read latencies. It requires clock sync. My
systems sync to the GPS atomic as the commonNote/ reference. I think
end/end queue depths can be calculated per Little's law (shown below per
inP.) https://sourceforge.net/projects/iperf2/

[rjmcmahon@rjm-nas ~]$ iperf -s -i 1
------------------------------------------------------------
Server listening on TCP port 5001
TCP window size:  128 KByte (default)
------------------------------------------------------------
[  1] local 192.168.1.94%enp2s0 port 5001 connected with 192.168.1.100 port
59142 (MSS=3D1448) (trip-times) (sock=3D4) (peer 2.1.3-rc) on 2021-07-01
20:57:37 (PDT)
[ ID] Interval        Transfer    Bandwidth    Burst Latency
avg/min/max/stdev (cnt/size) inP NetPwr  Reads=3DDist
[  1] 0.00-1.00 sec   596 MBytes  5.00 Gbits/sec  0.170/0.153/1.492/0.078
ms (4769/131082)  104 KByte 3674521  22841=3D787:18657:2467:623:84:41:66:11=
6
[  1] 1.00-2.00 sec   596 MBytes  5.00 Gbits/sec  0.167/0.156/0.434/0.015
ms (4768/131086)  102 KByte 3742630  23346=3D1307:18975:2171:578:105:53:56:=
101
[  1] 2.00-3.00 sec   596 MBytes  5.00 Gbits/sec  0.168/0.157/1.337/0.033
ms (4769/131046)  103 KByte 3710006  23263=3D1470:18602:2148:725:107:53:60:=
98
[  1] 3.00-4.00 sec   596 MBytes  5.00 Gbits/sec  0.166/0.158/0.241/0.008
ms (4768/131082)  102 KByte 3756478  23960=3D1452:19714:2123:449:79:32:38:7=
3
[  1] 4.00-5.00 sec   596 MBytes  5.00 Gbits/sec  0.166/0.157/0.247/0.008
ms (4769/131061)  102 KByte 3756193  23653=3D1234:19529:2206:439:89:36:44:7=
6
[  1] 5.00-6.00 sec   596 MBytes  5.00 Gbits/sec  0.166/0.158/0.245/0.007
ms (4768/131072)  101 KByte 3758826  23478=3D1081:19356:2284:535:73:35:39:7=
5
[  1] 6.00-7.00 sec   596 MBytes  5.00 Gbits/sec  0.168/0.158/0.283/0.009
ms (4768/131096)  102 KByte 3728988  23477=3D1338:19301:1995:535:104:46:59:=
99
[  1] 7.00-8.00 sec   596 MBytes  5.00 Gbits/sec  0.163/0.150/0.400/0.010
ms (4769/131047) 99.7 KByte 3826119  23496=3D1213:19404:2101:498:83:57:43:9=
7
[  1] 8.00-9.00 sec   596 MBytes  5.00 Gbits/sec  0.158/0.149/0.236/0.008
ms (4768/131082) 96.6 KByte 3951089  23652=3D1328:19498:2074:493:77:41:53:8=
8
[  1] 9.00-10.00 sec   596 MBytes  5.00 Gbits/sec  0.158/0.149/0.235/0.008
ms (4769/131061) 96.4 KByte 3958720  23725=3D1509:19410:2051:463:91:46:47:1=
08
[  1] 0.00-10.00 sec  5.82 GBytes  5.00 Gbits/sec  0.165/0.149/1.492/0.028
ms (47685/131072)  101 KByte 3784172
 234891=3D12719:192446:21620:5338:892:440:505:931

[rjmcmahon@ryzen3950 iperf2-code]$ iperf -c 192.168.1.94 -i 1 --trip-times
-b 5g -e
------------------------------------------------------------
Client connecting to 192.168.1.94, TCP port 5001 with pid 68866 (1 flows)
Write buffer size: 131072 Byte
TCP window size: 85.0 KByte (default)
------------------------------------------------------------
[  1] local 192.168.1.100%enp4s0 port 59142 connected with 192.168.1.94
port 5001 (MSS=3D1448) (trip-times) (sock=3D3) (ct=3D0.33 ms) on 2021-07-01
20:57:37 (PDT)
[ ID] Interval        Transfer    Bandwidth       Write/Err  Rtry
Cwnd/RTT        NetPwr
[  1] 0.00-1.00 sec   596 MBytes  5.00 Gbits/sec  4770/0          5
 295K/111 us  5631373
[  1] 1.00-2.00 sec   596 MBytes  5.00 Gbits/sec  4768/0          0
 295K/120 us  5207927
[  1] 2.00-3.00 sec   596 MBytes  5.00 Gbits/sec  4768/0          0
 306K/110 us  5681375
[  1] 3.00-4.00 sec   596 MBytes  5.00 Gbits/sec  4769/0          0
 306K/107 us  5841891
[  1] 4.00-5.00 sec   596 MBytes  5.00 Gbits/sec  4768/0          0
 306K/110 us  5681375
[  1] 5.00-6.00 sec   596 MBytes  5.00 Gbits/sec  4768/0          0
 306K/109 us  5733498
[  1] 6.00-7.00 sec   596 MBytes  5.00 Gbits/sec  4769/0          0
 306K/115 us  5435499
[  1] 7.00-8.00 sec   596 MBytes  5.00 Gbits/sec  4768/0          0
 306K/111 us  5630192
[  1] 8.00-9.00 sec   596 MBytes  5.00 Gbits/sec  4769/0          0
 306K/110 us  5682567
[  1] 9.00-10.00 sec   596 MBytes  5.00 Gbits/sec  4768/0          0
 306K/109 us  5733498

[rjmcmahon@rjm-nas ~]$ iperf -s -i 1 --histograms=3D10u
------------------------------------------------------------
Server listening on TCP port 5001 with pid 5166
Read buffer size:  128 KByte (Dist bin width=3D16.0 KByte)
Enabled rx-histograms bin-width=3D0.010 ms, bins=3D1000 (clients must use
--trip-times)
TCP window size:  128 KByte (default)
------------------------------------------------------------
[  1] local 192.168.1.94%enp2s0 port 5001 connected with 192.168.1.100 port
59146 (MSS=3D1448) (trip-times) (sock=3D4) (peer 2.1.3-rc) on 2021-07-01
21:01:42 (PDT)
[ ID] Interval        Transfer    Bandwidth    Burst Latency
avg/min/max/stdev (cnt/size) inP NetPwr  Reads=3DDist
[  1] 0.00-1.00 sec   596 MBytes  5.00 Gbits/sec  0.164/0.149/1.832/0.101
ms (4769/131072)  100 KByte 3809846  22370=3D435:17000:3686:1060:77:35:25:5=
2
[  1] 0.00-1.00 sec F8-PDF:
bin(w=3D10us):cnt(4769)=3D15:3,16:4414,17:227,18:49,19:14,20:11,21:6,22:1,2=
3:1,35:1,49:1,55:1,67:1,74:1,85:1,90:2,94:1,95:1,97:1,100:1,103:1,104:1,113=
:1,114:1,115:2,116:1,118:1,119:2,120:1,125:2,126:1,127:1,132:1,133:1,134:1,=
137:2,138:1,140:1,142:2,143:1,144:1,149:1,153:1,157:1,159:1,184:1
(5.00/95.00/99.7%=3D16/17/133,Outliers=3D352,obl/obu=3D0/0) (1.832
ms/1625198502.626723)
[  1] 1.00-2.00 sec   596 MBytes  5.00 Gbits/sec  0.156/0.148/0.235/0.006
ms (4768/131094) 95.0 KByte 4018733  21762=3D498:16581:2918:1512:75:36:56:8=
6
[  1] 1.00-2.00 sec F8-PDF:
bin(w=3D10us):cnt(4768)=3D15:6,16:4304,17:287,18:99,19:36,20:21,21:10,22:3,=
23:1,24:1
(5.00/95.00/99.7%=3D16/17/21,Outliers=3D458,obl/obu=3D0/0) (0.235
ms/1625198503.810735)
[  1] 2.00-3.00 sec   596 MBytes  5.00 Gbits/sec  0.158/0.150/0.515/0.009
ms (4769/131049) 96.2 KByte 3966043  22863=3D528:18422:3099:571:78:36:47:82
[  1] 2.00-3.00 sec F8-PDF:
bin(w=3D10us):cnt(4769)=3D16:4078,17:416,18:182,19:50,20:23,21:9,22:4,23:3,=
24:1,27:1,30:1,52:1
(5.00/95.00/99.7%=3D16/18/21,Outliers=3D0,obl/obu=3D0/0) (0.515
ms/1625198505.144479)
[  1] 3.00-4.00 sec   596 MBytes  5.00 Gbits/sec  0.157/0.149/0.284/0.007
ms (4768/131082) 95.9 KByte 3978135  22766=3D472:18044:3360:646:90:37:51:66
[  1] 3.00-4.00 sec F8-PDF:
bin(w=3D10us):cnt(4768)=3D15:1,16:4183,17:342,18:159,19:37,20:23,21:13,22:4=
,23:3,25:1,27:1,29:1
(5.00/95.00/99.7%=3D16/18/21,Outliers=3D23,obl/obu=3D0/0) (0.284
ms/1625198505.973695)
[  1] 4.00-5.00 sec   596 MBytes  5.00 Gbits/sec  0.157/0.149/0.381/0.008
ms (4769/131061) 95.9 KByte 3978347  22759=3D451:18039:3415:632:57:16:49:10=
0
[  1] 4.00-5.00 sec F8-PDF:
bin(w=3D10us):cnt(4769)=3D15:1,16:4253,17:287,18:150,19:31,20:11,21:15,22:6=
,23:4,24:4,25:1,26:1,27:1,28:2,30:1,39:1
(5.00/95.00/99.7%=3D16/17/23,Outliers=3D36,obl/obu=3D0/0) (0.381
ms/1625198507.119394)
[  1] 5.00-6.00 sec   596 MBytes  5.00 Gbits/sec  0.157/0.151/0.222/0.006
ms (4768/131072) 96.0 KByte 3974720  22661=3D422:17875:3411:723:95:29:44:62
[  1] 5.00-6.00 sec F8-PDF:
bin(w=3D10us):cnt(4768)=3D16:4166,17:405,18:130,19:30,20:21,21:8,22:7,23:1
(5.00/95.00/99.7%=3D16/17/21,Outliers=3D0,obl/obu=3D0/0) (0.222
ms/1625198508.350409)
[  1] 6.00-7.00 sec   596 MBytes  5.00 Gbits/sec  0.158/0.150/0.302/0.008
ms (4768/131082) 96.3 KByte 3962779  22723=3D453:17930:3414:699:93:24:33:77
[  1] 6.00-7.00 sec F8-PDF:
bin(w=3D10us):cnt(4768)=3D16:4179,17:323,18:152,19:50,20:33,21:18,22:6,23:1=
,24:2,26:1,27:1,28:1,31:1
(5.00/95.00/99.7%=3D16/18/21,Outliers=3D0,obl/obu=3D0/0) (0.302
ms/1625198509.416997)
[  1] 7.00-8.00 sec   596 MBytes  5.00 Gbits/sec  0.157/0.150/0.217/0.006
ms (4769/131061) 96.0 KByte 3974060  22923=3D489:18132:3533:568:78:23:36:64
[  1] 7.00-8.00 sec F8-PDF:
bin(w=3D10us):cnt(4769)=3D16:4228,17:317,18:137,19:45,20:21,21:14,22:7
(5.00/95.00/99.7%=3D16/17/21,Outliers=3D0,obl/obu=3D0/0) (0.217
ms/1625198510.34875)
[  1] 8.00-9.00 sec   596 MBytes  5.00 Gbits/sec  0.158/0.150/0.363/0.009
ms (4768/131072) 96.3 KByte 3960477  22677=3D472:17988:3377:533:92:50:64:10=
1
[  1] 8.00-9.00 sec F8-PDF:
bin(w=3D10us):cnt(4768)=3D16:4194,17:253,18:173,19:62,20:32,21:27,22:12,23:=
8,24:3,25:2,28:1,37:1
(5.00/95.00/99.7%=3D16/18/23,Outliers=3D0,obl/obu=3D0/0) (0.363
ms/1625198511.392746)
[  1] 9.00-10.00 sec   596 MBytes  5.00 Gbits/sec  0.156/0.150/0.232/0.005
ms (4768/131082) 95.5 KByte 3993997  23174=3D396:18593:3590:461:50:13:25:46
[  1] 9.00-10.00 sec F8-PDF:
bin(w=3D10us):cnt(4768)=3D16:4378,17:234,18:113,19:21,20:10,21:6,22:4,24:2
(5.00/95.00/99.7%=3D16/17/20,Outliers=3D0,obl/obu=3D0/0) (0.232
ms/1625198512.528385)
[  1] 0.00-10.00 sec  5.82 GBytes  5.00 Gbits/sec  0.158/0.148/1.832/0.033
ms (47685/131072) 96.3 KByte 3961002
 226681=3D4616:178607:33803:7405:785:299:430:736
[  1] 0.00-10.00 sec F8(f)-PDF:
bin(w=3D10us):cnt(47685)=3D15:11,16:42378,17:3091,18:1344,19:376,20:206,21:=
126,22:54,23:22,24:13,25:4,26:2,27:4,28:4,29:1,30:2,31:1,35:1,37:1,39:1,49:=
1,52:1,55:1,67:1,74:1,85:1,90:2,94:1,95:1,97:1,100:1,103:1,104:1,113:1,114:=
1,115:2,116:1,118:1,119:2,120:1,125:2,126:1,127:1,132:1,133:1,134:1,137:2,1=
38:1,140:1,142:2,143:1,144:1,149:1,153:1,157:1,159:1,184:1
(5.00/95.00/99.7%=3D16/17/22,Outliers=3D279,obl/obu=3D0/0) (1.832
ms/1625198502.626723)


[rjmcmahon@ryzen3950 iperf2-code]$ iperf -c 192.168.1.94 -i 1 --trip-times
-b 5g -e
------------------------------------------------------------
Client connecting to 192.168.1.94, TCP port 5001 with pid 69171 (1 flows)
Write buffer size: 131072 Byte
TCP window size: 85.0 KByte (default)
------------------------------------------------------------
[  1] local 192.168.1.100%enp4s0 port 59146 connected with 192.168.1.94
port 5001 (MSS=3D1448) (trip-times) (sock=3D3) (ct=3D0.30 ms) on 2021-07-01
21:01:42 (PDT)
[ ID] Interval        Transfer    Bandwidth       Write/Err  Rtry
Cwnd/RTT        NetPwr
[  1] 0.00-1.00 sec   596 MBytes  5.00 Gbits/sec  4770/0          8
 231K/111 us  5631373
[  1] 1.00-2.00 sec   596 MBytes  5.00 Gbits/sec  4768/0          0
 240K/120 us  5207927
[  1] 2.00-3.00 sec   596 MBytes  5.00 Gbits/sec  4768/0          0
 257K/114 us  5482029
[  1] 3.00-4.00 sec   596 MBytes  5.00 Gbits/sec  4769/0          0
 257K/110 us  5682567
[  1] 4.00-5.00 sec   596 MBytes  5.00 Gbits/sec  4768/0          0
 257K/108 us  5786586
[  1] 5.00-6.00 sec   596 MBytes  5.00 Gbits/sec  4768/0          0
 257K/136 us  4595230
[  1] 6.00-7.00 sec   596 MBytes  5.00 Gbits/sec  4769/0          0
 257K/111 us  5631373
[  1] 7.00-8.00 sec   596 MBytes  5.00 Gbits/sec  4768/0          0
 257K/131 us  4770621
[  1] 8.00-9.00 sec   596 MBytes  5.00 Gbits/sec  4769/0          0
 257K/110 us  5682567
[  1] 9.00-10.00 sec   596 MBytes  5.00 Gbits/sec  4768/0          0
 257K/110 us  5681375
[  1] 0.00-10.01 sec  5.82 GBytes  5.00 Gbits/sec  47687/0          8
 257K/110 us  5676364
[rjmcmahon@ryzen3950 iperf2-code]$

Bob



On Thu, Jul 1, 2021 at 6:16 PM David P. Reed <dpreed@deepplum.com> wrote:

> Well, nice that the folks doing the conference  are willing to consider
> that quality of user experience has little to do with signalling rate at
> the physical layer or throughput of FTP transfers.
>
>
>
> But honestly, the fact that they call the problem "network quality"
> suggests that they REALLY, REALLY don't understand the Internet isn't the
> hardware or the routers or even the routing algorithms *to its users*.
>
>
>
> By ignoring the diversity of applications now and in the future, and the
> fact that we DON'T KNOW what will be coming up, this conference will like=
ly
> fall into the usual trap that net-heads fall into - optimizing for some
> imaginary reality that doesn't exist, and in fact will probably never be
> what users actually will do given the chance.
>
>
>
> I saw this issue in 1976 in the group developing the original Internet
> protocols - a desire to put *into the network* special tricks to optimize
> ASR33 logins to remote computers from terminal concentrators (aka remote
> login), bulk file transfers between file systems on different time-sharin=
g
> systems, and "sessions" (virtual circuits) that required logins. And then
> trying to exploit underlying "multicast" by building it into the IP layer=
,
> because someone thought that TV broadcast would be the dominant applicati=
on.
>
>
>
> Frankly, to think of "quality" as something that can be "provided" by "th=
e
> network" misses the entire point of "end-to-end argument in system design=
".
> Quality is not a property defined or created by The Network. If you want =
to
> talk about Quality, you need to talk about users - all the users at all
> times, now and into the future, and that's something you can't do if you
> don't bother to include current and future users talking about what they
> might expect to experience that they don't experience.
>
>
>
> There was much fighting back in 1976 that basically involved "network
> experts" saying that the network was the place to "solve" such issues as
> quality, so applications could avoid having to solve such issues.
>
>
>
> What some of us managed to do was to argue that you can't "solve" such
> issues. All you can do is provide a framework that enables different uses
> to *cooperate* in some way.
>
>
>
> Which is why the Internet drops packets rather than queueing them, and wh=
y
> diffserv cannot work.
>
> (I know the latter is conftroversial, but at the moment, ALL of diffserv
> attempts to talk about end-to-end applicaiton specific metrics, but never=
,
> ever explains what the diffserv control points actually do w.r.t. what th=
e
> IP layer can actually control. So it is meaningless - another violation o=
f
> the so-called end-to-end principle).
>
>
>
> Networks are about getting packets from here to there, multiplexing the
> underlying resources. That's it. Quality is a whole different thing.
> Quality can be improved by end-to-end approaches, if the underlying netwo=
rk
> provides some kind of thing that actually creates a way for end-to-end
> applications to affect queueing and routing decisions, and more important=
ly
> getting "telemetry" from the network regarding what is actually going on
> with the other end-to-end users sharing the infrastructure.
>
>
>
> This conference won't talk about it this way. So don't waste your time.
>
>
>
>
>
>
>
> On Wednesday, June 30, 2021 8:12pm, "Dave Taht" <dave.taht@gmail.com>
> said:
>
> > The program committee members are *amazing*. Perhaps, finally, we can
> > move the bar for the internet's quality metrics past endless, blind
> > repetitions of speedtest.
> >
> > For complete details, please see:
> > https://www.iab.org/activities/workshops/network-quality/
> >
> > Submissions Due: Monday 2nd August 2021, midnight AOE (Anywhere On Eart=
h)
> > Invitations Issued by: Monday 16th August 2021
> >
> > Workshop Date: This will be a virtual workshop, spread over three days:
> >
> > 1400-1800 UTC Tue 14th September 2021
> > 1400-1800 UTC Wed 15th September 2021
> > 1400-1800 UTC Thu 16th September 2021
> >
> > Workshop co-chairs: Wes Hardaker, Evgeny Khorov, Omer Shapira
> >
> > The Program Committee members:
> >
> > Jari Arkko, Olivier Bonaventure, Vint Cerf, Stuart Cheshire, Sam
> > Crowford, Nick Feamster, Jim Gettys, Toke Hoiland-Jorgensen, Geoff
> > Huston, Cullen Jennings, Katarzyna Kosek-Szott, Mirja Kuehlewind,
> > Jason Livingood, Matt Mathias, Randall Meyer, Kathleen Nichols,
> > Christoph Paasch, Tommy Pauly, Greg White, Keith Winstein.
> >
> > Send Submissions to: network-quality-workshop-pc@iab.org.
> >
> > Position papers from academia, industry, the open source community and
> > others that focus on measurements, experiences, observations and
> > advice for the future are welcome. Papers that reflect experience
> > based on deployed services are especially welcome. The organizers
> > understand that specific actions taken by operators are unlikely to be
> > discussed in detail, so papers discussing general categories of
> > actions and issues without naming specific technologies, products, or
> > other players in the ecosystem are expected. Papers should not focus
> > on specific protocol solutions.
> >
> > The workshop will be by invitation only. Those wishing to attend
> > should submit a position paper to the address above; it may take the
> > form of an Internet-Draft.
> >
> > All inputs submitted and considered relevant will be published on the
> > workshop website. The organisers will decide whom to invite based on
> > the submissions received. Sessions will be organized according to
> > content, and not every accepted submission or invited attendee will
> > have an opportunity to present as the intent is to foster discussion
> > and not simply to have a sequence of presentations.
> >
> > Position papers from those not planning to attend the virtual sessions
> > themselves are also encouraged. A workshop report will be published
> > afterwards.
> >
> > Overview:
> >
> > "We believe that one of the major factors behind this lack of progress
> > is the popular perception that throughput is the often sole measure of
> > the quality of Internet connectivity. With such narrow focus, people
> > don=E2=80=99t consider questions such as:
> >
> > What is the latency under typical working conditions?
> > How reliable is the connectivity across longer time periods?
> > Does the network allow the use of a broad range of protocols?
> > What services can be run by clients of the network?
> > What kind of IPv4, NAT or IPv6 connectivity is offered, and are there
> firewalls?
> > What security mechanisms are available for local services, such as DNS?
> > To what degree are the privacy, confidentiality, integrity and
> > authenticity of user communications guarded?
> >
> > Improving these aspects of network quality will likely depend on
> > measurement and exposing metrics to all involved parties, including to
> > end users in a meaningful way. Such measurements and exposure of the
> > right metrics will allow service providers and network operators to
> > focus on the aspects that impacts the users=E2=80=99 experience most an=
d at
> > the same time empowers users to choose the Internet service that will
> > give them the best experience."
> >
> >
> > --
> > Latest Podcast:
> >
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/
> >
> > Dave T=C3=A4ht CTO, TekLibre, LLC
> > _______________________________________________
> > Cerowrt-devel mailing list
> > Cerowrt-devel@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/cerowrt-devel
> >
> _______________________________________________
> Make-wifi-fast mailing list
> Make-wifi-fast@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/make-wifi-fast

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

--000000000000633af405c61c0d5b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I think even packets are a network construct. End/end prot=
ocols don&#39;t write packets.=C2=A0 They mostly=C2=A0make writes() and rea=
ds=C2=A0and have no clue about packets. Except for, of course, UDP which yo=
u know=C2=A0everything about being the original designer.<br><br>Agreed the=
 telemetry is most interesting and a huge void. Curious to more of your tho=
ughts on it, metrics, etc.<br><br>Note: iperf 2 has write to read latencies=
. It requires clock sync. My systems sync to the GPS atomic as the commonNo=
te/ reference. I think end/end queue depths can be calculated=C2=A0per Litt=
le&#39;s law (shown below per inP.)=C2=A0<a href=3D"https://sourceforge.net=
/projects/iperf2/">https://sourceforge.net/projects/iperf2/</a><br><br>[rjm=
cmahon@rjm-nas ~]$ iperf -s -i 1 <br>--------------------------------------=
----------------------<br>Server listening on TCP port 5001<br>TCP window s=
ize: =C2=A0128 KByte (default)<br>-----------------------------------------=
-------------------<br>[ =C2=A01] local 192.168.1.94%enp2s0 port 5001 conne=
cted with 192.168.1.100 port 59142 (MSS=3D1448) (trip-times) (sock=3D4) (pe=
er 2.1.3-rc) on 2021-07-01 20:57:37 (PDT)<br>[ ID] Interval =C2=A0 =C2=A0 =
=C2=A0 =C2=A0Transfer =C2=A0 =C2=A0Bandwidth =C2=A0 =C2=A0Burst Latency avg=
/min/max/stdev (cnt/size) inP NetPwr =C2=A0Reads=3DDist<br>[ =C2=A01] 0.00-=
1.00 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=A00.170/0.153/1.492/0.0=
78 ms (4769/131082) =C2=A0104 KByte 3674521 =C2=A022841=3D787:18657:2467:62=
3:84:41:66:116<br>[ =C2=A01] 1.00-2.00 sec =C2=A0 596 MBytes =C2=A05.00 Gbi=
ts/sec =C2=A00.167/0.156/0.434/0.015 ms (4768/131086) =C2=A0102 KByte 37426=
30 =C2=A023346=3D1307:18975:2171:578:105:53:56:101<br>[ =C2=A01] 2.00-3.00 =
sec =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=A00.168/0.157/1.337/0.033 ms=
 (4769/131046) =C2=A0103 KByte 3710006 =C2=A023263=3D1470:18602:2148:725:10=
7:53:60:98<br>[ =C2=A01] 3.00-4.00 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/s=
ec =C2=A00.166/0.158/0.241/0.008 ms (4768/131082) =C2=A0102 KByte 3756478 =
=C2=A023960=3D1452:19714:2123:449:79:32:38:73<br>[ =C2=A01] 4.00-5.00 sec =
=C2=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=A00.166/0.157/0.247/0.008 ms (47=
69/131061) =C2=A0102 KByte 3756193 =C2=A023653=3D1234:19529:2206:439:89:36:=
44:76<br>[ =C2=A01] 5.00-6.00 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =
=C2=A00.166/0.158/0.245/0.007 ms (4768/131072) =C2=A0101 KByte 3758826 =C2=
=A023478=3D1081:19356:2284:535:73:35:39:75<br>[ =C2=A01] 6.00-7.00 sec =C2=
=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=A00.168/0.158/0.283/0.009 ms (4768/=
131096) =C2=A0102 KByte 3728988 =C2=A023477=3D1338:19301:1995:535:104:46:59=
:99<br>[ =C2=A01] 7.00-8.00 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=
=A00.163/0.150/0.400/0.010 ms (4769/131047) 99.7 KByte 3826119 =C2=A023496=
=3D1213:19404:2101:498:83:57:43:97<br>[ =C2=A01] 8.00-9.00 sec =C2=A0 596 M=
Bytes =C2=A05.00 Gbits/sec =C2=A00.158/0.149/0.236/0.008 ms (4768/131082) 9=
6.6 KByte 3951089 =C2=A023652=3D1328:19498:2074:493:77:41:53:88<br>[ =C2=A0=
1] 9.00-10.00 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=A00.158/0.149/=
0.235/0.008 ms (4769/131061) 96.4 KByte 3958720 =C2=A023725=3D1509:19410:20=
51:463:91:46:47:108<br>[ =C2=A01] 0.00-10.00 sec =C2=A05.82 GBytes =C2=A05.=
00 Gbits/sec =C2=A00.165/0.149/1.492/0.028 ms (47685/131072) =C2=A0101 KByt=
e 3784172 =C2=A0234891=3D12719:192446:21620:5338:892:440:505:931<br><br>[rj=
mcmahon@ryzen3950 iperf2-code]$ iperf -c 192.168.1.94 -i 1 --trip-times -b =
5g -e<br>------------------------------------------------------------<br>Cl=
ient connecting to 192.168.1.94, TCP port 5001 with pid 68866 (1 flows)<br>=
Write buffer size: 131072 Byte<br>TCP window size: 85.0 KByte (default)<br>=
------------------------------------------------------------<br>[ =C2=A01] =
local 192.168.1.100%enp4s0 port 59142 connected with 192.168.1.94 port 5001=
 (MSS=3D1448) (trip-times) (sock=3D3) (ct=3D0.33 ms) on 2021-07-01 20:57:37=
 (PDT)<br>[ ID] Interval =C2=A0 =C2=A0 =C2=A0 =C2=A0Transfer =C2=A0 =C2=A0B=
andwidth =C2=A0 =C2=A0 =C2=A0 Write/Err =C2=A0Rtry =C2=A0 =C2=A0 Cwnd/RTT =
=C2=A0 =C2=A0 =C2=A0 =C2=A0NetPwr<br>[ =C2=A01] 0.00-1.00 sec =C2=A0 596 MB=
ytes =C2=A05.00 Gbits/sec =C2=A04770/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A05 =
=C2=A0 =C2=A0 =C2=A0295K/111 us =C2=A05631373<br>[ =C2=A01] 1.00-2.00 sec =
=C2=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=A04768/0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0295K/120 us =C2=A05207927<br>[ =C2=A01] =
2.00-3.00 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=A04768/0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0306K/110 us =C2=A05681375<=
br>[ =C2=A01] 3.00-4.00 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=A047=
69/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0306K/107 us =
=C2=A05841891<br>[ =C2=A01] 4.00-5.00 sec =C2=A0 596 MBytes =C2=A05.00 Gbit=
s/sec =C2=A04768/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0=
306K/110 us =C2=A05681375<br>[ =C2=A01] 5.00-6.00 sec =C2=A0 596 MBytes =C2=
=A05.00 Gbits/sec =C2=A04768/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =
=C2=A0 =C2=A0306K/109 us =C2=A05733498<br>[ =C2=A01] 6.00-7.00 sec =C2=A0 5=
96 MBytes =C2=A05.00 Gbits/sec =C2=A04769/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A00 =C2=A0 =C2=A0 =C2=A0306K/115 us =C2=A05435499<br>[ =C2=A01] 7.00-8.00 =
sec =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=A04768/0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0306K/111 us =C2=A05630192<br>[ =C2=
=A01] 8.00-9.00 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=A04769/0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0306K/110 us =C2=A05682=
567<br>[ =C2=A01] 9.00-10.00 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=
=A04768/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0306K/109 =
us =C2=A05733498<br><br>[rjmcmahon@rjm-nas ~]$ iperf -s -i 1 --histograms=
=3D10u<br>------------------------------------------------------------<br>S=
erver listening on TCP port 5001 with pid 5166<br>Read buffer size: =C2=A01=
28 KByte (Dist bin width=3D16.0 KByte)<br>Enabled rx-histograms bin-width=
=3D0.010 ms, bins=3D1000 (clients must use --trip-times)<br>TCP window size=
: =C2=A0128 KByte (default)<br>--------------------------------------------=
----------------<br>[ =C2=A01] local 192.168.1.94%enp2s0 port 5001 connecte=
d with 192.168.1.100 port 59146 (MSS=3D1448) (trip-times) (sock=3D4) (peer =
2.1.3-rc) on 2021-07-01 21:01:42 (PDT)<br>[ ID] Interval =C2=A0 =C2=A0 =C2=
=A0 =C2=A0Transfer =C2=A0 =C2=A0Bandwidth =C2=A0 =C2=A0Burst Latency avg/mi=
n/max/stdev (cnt/size) inP NetPwr =C2=A0Reads=3DDist<br>[ =C2=A01] 0.00-1.0=
0 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=A00.164/0.149/1.832/0.101 =
ms (4769/131072) =C2=A0100 KByte 3809846 =C2=A022370=3D435:17000:3686:1060:=
77:35:25:52<br>[ =C2=A01] 0.00-1.00 sec F8-PDF: bin(w=3D10us):cnt(4769)=3D1=
5:3,16:4414,17:227,18:49,19:14,20:11,21:6,22:1,23:1,35:1,49:1,55:1,67:1,74:=
1,85:1,90:2,94:1,95:1,97:1,100:1,103:1,104:1,113:1,114:1,115:2,116:1,118:1,=
119:2,120:1,125:2,126:1,127:1,132:1,133:1,134:1,137:2,138:1,140:1,142:2,143=
:1,144:1,149:1,153:1,157:1,159:1,184:1 (5.00/95.00/99.7%=3D16/17/133,Outlie=
rs=3D352,obl/obu=3D0/0) (1.832 ms/1625198502.626723)<br>[ =C2=A01] 1.00-2.0=
0 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=A00.156/0.148/0.235/0.006 =
ms (4768/131094) 95.0 KByte 4018733 =C2=A021762=3D498:16581:2918:1512:75:36=
:56:86<br>[ =C2=A01] 1.00-2.00 sec F8-PDF: bin(w=3D10us):cnt(4768)=3D15:6,1=
6:4304,17:287,18:99,19:36,20:21,21:10,22:3,23:1,24:1 (5.00/95.00/99.7%=3D16=
/17/21,Outliers=3D458,obl/obu=3D0/0) (0.235 ms/1625198503.810735)<br>[ =C2=
=A01] 2.00-3.00 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=A00.158/0.15=
0/0.515/0.009 ms (4769/131049) 96.2 KByte 3966043 =C2=A022863=3D528:18422:3=
099:571:78:36:47:82<br>[ =C2=A01] 2.00-3.00 sec F8-PDF: bin(w=3D10us):cnt(4=
769)=3D16:4078,17:416,18:182,19:50,20:23,21:9,22:4,23:3,24:1,27:1,30:1,52:1=
 (5.00/95.00/99.7%=3D16/18/21,Outliers=3D0,obl/obu=3D0/0) (0.515 ms/1625198=
505.144479)<br>[ =C2=A01] 3.00-4.00 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/=
sec =C2=A00.157/0.149/0.284/0.007 ms (4768/131082) 95.9 KByte 3978135 =C2=
=A022766=3D472:18044:3360:646:90:37:51:66<br>[ =C2=A01] 3.00-4.00 sec F8-PD=
F: bin(w=3D10us):cnt(4768)=3D15:1,16:4183,17:342,18:159,19:37,20:23,21:13,2=
2:4,23:3,25:1,27:1,29:1 (5.00/95.00/99.7%=3D16/18/21,Outliers=3D23,obl/obu=
=3D0/0) (0.284 ms/1625198505.973695)<br>[ =C2=A01] 4.00-5.00 sec =C2=A0 596=
 MBytes =C2=A05.00 Gbits/sec =C2=A00.157/0.149/0.381/0.008 ms (4769/131061)=
 95.9 KByte 3978347 =C2=A022759=3D451:18039:3415:632:57:16:49:100<br>[ =C2=
=A01] 4.00-5.00 sec F8-PDF: bin(w=3D10us):cnt(4769)=3D15:1,16:4253,17:287,1=
8:150,19:31,20:11,21:15,22:6,23:4,24:4,25:1,26:1,27:1,28:2,30:1,39:1 (5.00/=
95.00/99.7%=3D16/17/23,Outliers=3D36,obl/obu=3D0/0) (0.381 ms/1625198507.11=
9394)<br>[ =C2=A01] 5.00-6.00 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =
=C2=A00.157/0.151/0.222/0.006 ms (4768/131072) 96.0 KByte 3974720 =C2=A0226=
61=3D422:17875:3411:723:95:29:44:62<br>[ =C2=A01] 5.00-6.00 sec F8-PDF: bin=
(w=3D10us):cnt(4768)=3D16:4166,17:405,18:130,19:30,20:21,21:8,22:7,23:1 (5.=
00/95.00/99.7%=3D16/17/21,Outliers=3D0,obl/obu=3D0/0) (0.222 ms/1625198508.=
350409)<br>[ =C2=A01] 6.00-7.00 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =
=C2=A00.158/0.150/0.302/0.008 ms (4768/131082) 96.3 KByte 3962779 =C2=A0227=
23=3D453:17930:3414:699:93:24:33:77<br>[ =C2=A01] 6.00-7.00 sec F8-PDF: bin=
(w=3D10us):cnt(4768)=3D16:4179,17:323,18:152,19:50,20:33,21:18,22:6,23:1,24=
:2,26:1,27:1,28:1,31:1 (5.00/95.00/99.7%=3D16/18/21,Outliers=3D0,obl/obu=3D=
0/0) (0.302 ms/1625198509.416997)<br>[ =C2=A01] 7.00-8.00 sec =C2=A0 596 MB=
ytes =C2=A05.00 Gbits/sec =C2=A00.157/0.150/0.217/0.006 ms (4769/131061) 96=
.0 KByte 3974060 =C2=A022923=3D489:18132:3533:568:78:23:36:64<br>[ =C2=A01]=
 7.00-8.00 sec F8-PDF: bin(w=3D10us):cnt(4769)=3D16:4228,17:317,18:137,19:4=
5,20:21,21:14,22:7 (5.00/95.00/99.7%=3D16/17/21,Outliers=3D0,obl/obu=3D0/0)=
 (0.217 ms/1625198510.34875)<br>[ =C2=A01] 8.00-9.00 sec =C2=A0 596 MBytes =
=C2=A05.00 Gbits/sec =C2=A00.158/0.150/0.363/0.009 ms (4768/131072) 96.3 KB=
yte 3960477 =C2=A022677=3D472:17988:3377:533:92:50:64:101<br>[ =C2=A01] 8.0=
0-9.00 sec F8-PDF: bin(w=3D10us):cnt(4768)=3D16:4194,17:253,18:173,19:62,20=
:32,21:27,22:12,23:8,24:3,25:2,28:1,37:1 (5.00/95.00/99.7%=3D16/18/23,Outli=
ers=3D0,obl/obu=3D0/0) (0.363 ms/1625198511.392746)<br>[ =C2=A01] 9.00-10.0=
0 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=A00.156/0.150/0.232/0.005 =
ms (4768/131082) 95.5 KByte 3993997 =C2=A023174=3D396:18593:3590:461:50:13:=
25:46<br>[ =C2=A01] 9.00-10.00 sec F8-PDF: bin(w=3D10us):cnt(4768)=3D16:437=
8,17:234,18:113,19:21,20:10,21:6,22:4,24:2 (5.00/95.00/99.7%=3D16/17/20,Out=
liers=3D0,obl/obu=3D0/0) (0.232 ms/1625198512.528385)<br>[ =C2=A01] 0.00-10=
.00 sec =C2=A05.82 GBytes =C2=A05.00 Gbits/sec =C2=A00.158/0.148/1.832/0.03=
3 ms (47685/131072) 96.3 KByte 3961002 =C2=A0226681=3D4616:178607:33803:740=
5:785:299:430:736<br>[ =C2=A01] 0.00-10.00 sec F8(f)-PDF: bin(w=3D10us):cnt=
(47685)=3D15:11,16:42378,17:3091,18:1344,19:376,20:206,21:126,22:54,23:22,2=
4:13,25:4,26:2,27:4,28:4,29:1,30:2,31:1,35:1,37:1,39:1,49:1,52:1,55:1,67:1,=
74:1,85:1,90:2,94:1,95:1,97:1,100:1,103:1,104:1,113:1,114:1,115:2,116:1,118=
:1,119:2,120:1,125:2,126:1,127:1,132:1,133:1,134:1,137:2,138:1,140:1,142:2,=
143:1,144:1,149:1,153:1,157:1,159:1,184:1 (5.00/95.00/99.7%=3D16/17/22,Outl=
iers=3D279,obl/obu=3D0/0) (1.832 ms/1625198502.626723)<br><br><br>[rjmcmaho=
n@ryzen3950 iperf2-code]$ iperf -c 192.168.1.94 -i 1 --trip-times -b 5g -e =
<br>------------------------------------------------------------<br>Client =
connecting to 192.168.1.94, TCP port 5001 with pid 69171 (1 flows)<br>Write=
 buffer size: 131072 Byte<br>TCP window size: 85.0 KByte (default)<br>-----=
-------------------------------------------------------<br>[ =C2=A01] local=
 192.168.1.100%enp4s0 port 59146 connected with 192.168.1.94 port 5001 (MSS=
=3D1448) (trip-times) (sock=3D3) (ct=3D0.30 ms) on 2021-07-01 21:01:42 (PDT=
)<br>[ ID] Interval =C2=A0 =C2=A0 =C2=A0 =C2=A0Transfer =C2=A0 =C2=A0Bandwi=
dth =C2=A0 =C2=A0 =C2=A0 Write/Err =C2=A0Rtry =C2=A0 =C2=A0 Cwnd/RTT =C2=A0=
 =C2=A0 =C2=A0 =C2=A0NetPwr<br>[ =C2=A01] 0.00-1.00 sec =C2=A0 596 MBytes =
=C2=A05.00 Gbits/sec =C2=A04770/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A08 =C2=
=A0 =C2=A0 =C2=A0231K/111 us =C2=A05631373<br>[ =C2=A01] 1.00-2.00 sec =C2=
=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=A04768/0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0240K/120 us =C2=A05207927<br>[ =C2=A01] 2.0=
0-3.00 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=A04768/0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0257K/114 us =C2=A05482029<br>=
[ =C2=A01] 3.00-4.00 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=A04769/=
0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0257K/110 us =C2=
=A05682567<br>[ =C2=A01] 4.00-5.00 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/s=
ec =C2=A04768/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0257=
K/108 us =C2=A05786586<br>[ =C2=A01] 5.00-6.00 sec =C2=A0 596 MBytes =C2=A0=
5.00 Gbits/sec =C2=A04768/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=
=A0 =C2=A0257K/136 us =C2=A04595230<br>[ =C2=A01] 6.00-7.00 sec =C2=A0 596 =
MBytes =C2=A05.00 Gbits/sec =C2=A04769/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
0 =C2=A0 =C2=A0 =C2=A0257K/111 us =C2=A05631373<br>[ =C2=A01] 7.00-8.00 sec=
 =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=A04768/0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0257K/131 us =C2=A04770621<br>[ =C2=A01] =
8.00-9.00 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=A04769/0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0257K/110 us =C2=A05682567<=
br>[ =C2=A01] 9.00-10.00 sec =C2=A0 596 MBytes =C2=A05.00 Gbits/sec =C2=A04=
768/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0257K/110 us =
=C2=A05681375<br>[ =C2=A01] 0.00-10.01 sec =C2=A05.82 GBytes =C2=A05.00 Gbi=
ts/sec =C2=A047687/0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A08 =C2=A0 =C2=A0 =C2=
=A0257K/110 us =C2=A05676364<br>[rjmcmahon@ryzen3950 iperf2-code]$ <br><br>=
Bob=C2=A0<br><br><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, Jul 1, 2021 at 6:16 PM David P. Reed &lt;<a hr=
ef=3D"mailto:dpreed@deepplum.com">dpreed@deepplum.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><font face=3D"arial" s=
ize=3D"2"><p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10=
pt">Well, nice that the folks doing the conference=C2=A0 are willing to con=
sider that quality of user experience has little to do with signalling rate=
 at the physical layer or throughput of FTP transfers.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">But ho=
nestly, the fact that they call the problem &quot;network quality&quot; sug=
gests that they REALLY, REALLY don&#39;t understand the Internet isn&#39;t =
the hardware or the routers or even the routing algorithms *to its users*.<=
/p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">By ign=
oring the diversity of applications now and in the future, and the fact tha=
t we DON&#39;T KNOW what will be coming up, this conference will likely fal=
l into the usual trap that net-heads fall into - optimizing for some imagin=
ary reality that doesn&#39;t exist, and in fact will probably never be what=
 users actually will do given the chance.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">I saw =
this issue in 1976 in the group developing the original Internet protocols =
- a desire to put *into the network* special tricks to optimize ASR33 login=
s to remote computers from terminal concentrators (aka remote login), bulk =
file transfers between file systems on different time-sharing systems, and =
&quot;sessions&quot; (virtual circuits) that required logins. And then tryi=
ng to exploit underlying &quot;multicast&quot; by building it into the IP l=
ayer, because someone thought that TV broadcast would be the dominant appli=
cation.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">Frankl=
y, to think of &quot;quality&quot; as something that can be &quot;provided&=
quot; by &quot;the network&quot; misses the entire point of &quot;end-to-en=
d argument in system design&quot;. Quality is not a property defined or cre=
ated by The Network. If you want to talk about Quality, you need to talk ab=
out users - all the users at all times, now and into the future, and that&#=
39;s something you can&#39;t do if you don&#39;t bother to include current =
and future users talking about what they might expect to experience that th=
ey don&#39;t experience.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">There =
was much fighting back in 1976 that basically involved &quot;network expert=
s&quot; saying that the network was the place to &quot;solve&quot; such iss=
ues as quality, so applications could avoid having to solve such issues.</p=
>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">What s=
ome of us managed to do was to argue that you can&#39;t &quot;solve&quot; s=
uch issues. All you can do is provide a framework that enables different us=
es to *cooperate* in some way.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">Which =
is why the Internet drops packets rather than queueing them, and why diffse=
rv cannot work.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">(I kno=
w the latter is conftroversial, but at the moment, ALL of diffserv attempts=
 to talk about end-to-end applicaiton specific metrics, but never, ever exp=
lains what the diffserv control points actually do w.r.t. what the IP layer=
 can actually control. So it is meaningless - another violation of the so-c=
alled end-to-end principle).</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">Networ=
ks are about getting packets from here to there, multiplexing the underlyin=
g resources. That&#39;s it. Quality is a whole different thing. Quality can=
 be improved by end-to-end approaches, if the underlying network provides s=
ome kind of thing that actually creates a way for end-to-end applications t=
o affect queueing and routing decisions, and more importantly getting &quot=
;telemetry&quot; from the network regarding what is actually going on with =
the other end-to-end users sharing the infrastructure.</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">This c=
onference won&#39;t talk about it this way. So don&#39;t waste your time.</=
p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">=C2=A0=
</p>
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">On Wed=
nesday, June 30, 2021 8:12pm, &quot;Dave Taht&quot; &lt;<a href=3D"mailto:d=
ave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a>&gt; said:<br>=
<br></p>
<div id=3D"gmail-m_-3236536184715428026SafeStyles1625187388">
<p style=3D"margin:0px;padding:0px;font-family:arial;font-size:10pt">&gt; T=
he program committee members are *amazing*. Perhaps, finally, we can<br>&gt=
; move the bar for the internet&#39;s quality metrics past endless, blind<b=
r>&gt; repetitions of speedtest.<br>&gt; <br>&gt; For complete details, ple=
ase see:<br>&gt; <a href=3D"https://www.iab.org/activities/workshops/networ=
k-quality/" target=3D"_blank">https://www.iab.org/activities/workshops/netw=
ork-quality/</a><br>&gt; <br>&gt; Submissions Due: Monday 2nd August 2021, =
midnight AOE (Anywhere On Earth)<br>&gt; Invitations Issued by: Monday 16th=
 August 2021<br>&gt; <br>&gt; Workshop Date: This will be a virtual worksho=
p, spread over three days:<br>&gt; <br>&gt; 1400-1800 UTC Tue 14th Septembe=
r 2021<br>&gt; 1400-1800 UTC Wed 15th September 2021<br>&gt; 1400-1800 UTC =
Thu 16th September 2021<br>&gt; <br>&gt; Workshop co-chairs: Wes Hardaker, =
Evgeny Khorov, Omer Shapira<br>&gt; <br>&gt; The Program Committee members:=
<br>&gt; <br>&gt; Jari Arkko, Olivier Bonaventure, Vint Cerf, Stuart Cheshi=
re, Sam<br>&gt; Crowford, Nick Feamster, Jim Gettys, Toke Hoiland-Jorgensen=
, Geoff<br>&gt; Huston, Cullen Jennings, Katarzyna Kosek-Szott, Mirja Kuehl=
ewind,<br>&gt; Jason Livingood, Matt Mathias, Randall Meyer, Kathleen Nicho=
ls,<br>&gt; Christoph Paasch, Tommy Pauly, Greg White, Keith Winstein.<br>&=
gt; <br>&gt; Send Submissions to: <a href=3D"mailto:network-quality-worksho=
p-pc@iab.org" target=3D"_blank">network-quality-workshop-pc@iab.org</a>.<br=
>&gt; <br>&gt; Position papers from academia, industry, the open source com=
munity and<br>&gt; others that focus on measurements, experiences, observat=
ions and<br>&gt; advice for the future are welcome. Papers that reflect exp=
erience<br>&gt; based on deployed services are especially welcome. The orga=
nizers<br>&gt; understand that specific actions taken by operators are unli=
kely to be<br>&gt; discussed in detail, so papers discussing general catego=
ries of<br>&gt; actions and issues without naming specific technologies, pr=
oducts, or<br>&gt; other players in the ecosystem are expected. Papers shou=
ld not focus<br>&gt; on specific protocol solutions.<br>&gt; <br>&gt; The w=
orkshop will be by invitation only. Those wishing to attend<br>&gt; should =
submit a position paper to the address above; it may take the<br>&gt; form =
of an Internet-Draft.<br>&gt; <br>&gt; All inputs submitted and considered =
relevant will be published on the<br>&gt; workshop website. The organisers =
will decide whom to invite based on<br>&gt; the submissions received. Sessi=
ons will be organized according to<br>&gt; content, and not every accepted =
submission or invited attendee will<br>&gt; have an opportunity to present =
as the intent is to foster discussion<br>&gt; and not simply to have a sequ=
ence of presentations.<br>&gt; <br>&gt; Position papers from those not plan=
ning to attend the virtual sessions<br>&gt; themselves are also encouraged.=
 A workshop report will be published<br>&gt; afterwards.<br>&gt; <br>&gt; O=
verview:<br>&gt; <br>&gt; &quot;We believe that one of the major factors be=
hind this lack of progress<br>&gt; is the popular perception that throughpu=
t is the often sole measure of<br>&gt; the quality of Internet connectivity=
. With such narrow focus, people<br>&gt; don=E2=80=99t consider questions s=
uch as:<br>&gt; <br>&gt; What is the latency under typical working conditio=
ns?<br>&gt; How reliable is the connectivity across longer time periods?<br=
>&gt; Does the network allow the use of a broad range of protocols?<br>&gt;=
 What services can be run by clients of the network?<br>&gt; What kind of I=
Pv4, NAT or IPv6 connectivity is offered, and are there firewalls?<br>&gt; =
What security mechanisms are available for local services, such as DNS?<br>=
&gt; To what degree are the privacy, confidentiality, integrity and<br>&gt;=
 authenticity of user communications guarded?<br>&gt; <br>&gt; Improving th=
ese aspects of network quality will likely depend on<br>&gt; measurement an=
d exposing metrics to all involved parties, including to<br>&gt; end users =
in a meaningful way. Such measurements and exposure of the<br>&gt; right me=
trics will allow service providers and network operators to<br>&gt; focus o=
n the aspects that impacts the users=E2=80=99 experience most and at<br>&gt=
; the same time empowers users to choose the Internet service that will<br>=
&gt; give them the best experience.&quot;<br>&gt; <br>&gt; <br>&gt; --<br>&=
gt; Latest Podcast:<br>&gt; <a href=3D"https://www.linkedin.com/feed/update=
/urn:li:activity:6791014284936785920/" target=3D"_blank">https://www.linked=
in.com/feed/update/urn:li:activity:6791014284936785920/</a><br>&gt; <br>&gt=
; Dave T=C3=A4ht CTO, TekLibre, LLC<br>&gt; _______________________________=
________________<br>&gt; Cerowrt-devel mailing list<br>&gt; <a href=3D"mail=
to:Cerowrt-devel@lists.bufferbloat.net" target=3D"_blank">Cerowrt-devel@lis=
ts.bufferbloat.net</a><br>&gt; <a href=3D"https://lists.bufferbloat.net/lis=
tinfo/cerowrt-devel" target=3D"_blank">https://lists.bufferbloat.net/listin=
fo/cerowrt-devel</a><br>&gt; </p>
</div></font>_______________________________________________<br>
Make-wifi-fast mailing list<br>
<a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">M=
ake-wifi-fast@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" rel=3D"no=
referrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/make-wif=
i-fast</a></blockquote></div>

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
--000000000000633af405c61c0d5b--

--0000000000006a35d905c61c0d48
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
XzCCBUkwggQxoAMCAQICDBhL7k9eiTHfluW70TANBgkqhkiG9w0BAQsFADBbMQswCQYDVQQGEwJC
RTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBHQ0MgUjMg
UGVyc29uYWxTaWduIDIgQ0EgMjAyMDAeFw0yMTAyMjIwNDQyMDRaFw0yMjA5MDEwODA5NDlaMIGM
MQswCQYDVQQGEwJJTjESMBAGA1UECBMJS2FybmF0YWthMRIwEAYDVQQHEwlCYW5nYWxvcmUxFjAU
BgNVBAoTDUJyb2FkY29tIEluYy4xFDASBgNVBAMTC0JvYiBNY01haG9uMScwJQYJKoZIhvcNAQkB
Fhhib2IubWNtYWhvbkBicm9hZGNvbS5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
AQDyY95HWFm48WhKUyFbAS9JxiDqBHBdAbgjx4iF46lkqZdVkIJ8pGfcXoGd10Vp9yL5VQevDAt/
A/Jh22uhSgKR9Almeux9xWGhG8cyZwcCwYrsMt84FqCgEQidT+7YGNdd9oKrjU7mFC7pAnnw+cGI
d3NFryurgnNPwfEK0X7HwRsga5pM+Zelr/ZM8MkphE1hCvTuPGakNylOFhP+wKL8Bmhsq5tNIInw
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIKckdqy955H9GQcyr5iE3MuQY270/IMYtwvb
FYTl95AUMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDcwMjA0
MDQzMFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQAEGjZaZhlGHntWImqOvfXcyKpVLnVCYnTQTFsTUKKOglssDwn9Lhkr
MU/3a40gBHR99lg9CINqWA/oHXng2XT7nygzudTHmVRsZfT36THOgsafn8oDEb9yMQ8uaL0e+6d1
A3VfjlUbchBiuoPQaxA+nPoxAYYFkfGrSEdKtsXvG9GLnVcnzNpgisEcjxx9lpfrRXMjmJ6MTkci
1Aym0TeL5T/bTGf1ZhirJdEmzrlLPjDJ8HFp32sAECZWQhSFABauz57HXQ4blOGnjjsEqZfu04CY
RIBE6lT6oChzKViOqe/6cfy1WCxBIO/kZBQjIYUbdytPrJv3NTC6bknXkPLC
--0000000000006a35d905c61c0d48--

--===============7641247139034215107==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7641247139034215107==--

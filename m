Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BAE63BBB6B
	for <lists+cake@lfdr.de>; Mon,  5 Jul 2021 12:42:48 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 10C953CB49;
	Mon,  5 Jul 2021 06:42:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1625481764;
	bh=wGMzbdfDiCgtCUBameyvMf1VGbcdKOO/Y+R5wCZmDLg=;
	h=From:To:References:In-Reply-To:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=ppYAkjQ4mwbhRdsvs8FAUFFqYBRMPt+mVPiN+TY7Lnt9b1Pb2SN99GDSKq5AyOhsN
	 eXEk+3D+m2WSTjPw0+6IIvMYQ9V+xkcLdGS4pePqOKzDXZEozMJ0b+m7rOIFIUGoHa
	 x6+xW2xNdQihRRRLdBVecfh7HxyB5UK5fyHQU7rIvuNDm5IzpUqhvTQyA5kltb7a/u
	 xbNSVHOVHALhk3JjEK0r3Y1kgbU/QkeKtJW/xUQLdJo17UwlPnWQeNlpsSU8laIwD+
	 mvYtwwR4UoEhY7Oqrh0Qn9C2Pk7eS14uVLouSevogSDKUYAQjJ7oTuaX8ifvUHpw0F
	 JDLCfx/NMUP7Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from bosmailout03.eigbox.net (bosmailout03.eigbox.net [66.96.187.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7890B3CB35;
 Fri,  2 Jul 2021 12:11:32 -0400 (EDT)
Received: from bosmailscan02.eigbox.net ([10.20.15.2])
 by bosmailout03.eigbox.net with esmtp (Exim)
 id 1lzLlL-0005m7-UN; Fri, 02 Jul 2021 12:11:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=alum.mit.edu; s=dkim; h=Sender:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:Cc:To:From:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZNbMQFqidObv2G+93Pvf3xEdqO4C92zxVliPB8fenmc=; b=Xt47+u1cLWqZe8MYolPn/+tYiz
 2aqswUfWAGotnv7ZKHsQLe/jnmAjLcf1b7c/UCsSi1umnU5475H2Xxd98BhcwpEZYZaudIAF5sl2I
 PqwJb1i6rSxTgPqy9EVFkG7bzbj5DzYg7DLYsqRq6klMSZFX53F98QW9lsrwVhhg9UqO8Jwd8cfps
 ge6MoX7pkUdgudzmpkIHp/C7o8X3A4ZBh573mLA/eWPeCVvZUbYId4t6IC7AHofqGMp5QciOCa3r9
 BwLWSx0eUy0g45L0Z0kRV1X65LXSp600IQdM86b/K5qXeDUbNuj9llX6zbnL+3mbiDWWshwqbmNnU
 VMiOZP5Q==;
Received: from [10.115.3.34] (helo=bosimpout04)
 by bosmailscan02.eigbox.net with esmtp (Exim)
 id 1lzLlL-0006OY-L8; Fri, 02 Jul 2021 12:11:31 -0400
Received: from bosauthsmtp07.yourhostingaccount.com ([10.20.18.7])
 by bosimpout04 with 
 id QGBU25004099BUA01GBXxJ; Fri, 02 Jul 2021 12:11:31 -0400
X-Authority-Analysis: v=2.1 cv=TK/LSjVa c=1 sm=1 tr=0
 a=x8qw8EAkfcRkIpZA8Q87Bg==:117 a=x+7tlP9+fMpTIVJEmcsKvw==:17
 a=L9H7d07YOLsA:10 a=9cW_t1CCXrUA:10 a=s5jvgZ67dGcA:10 a=e_q4qTt1xDgA:10
 a=Wo7qeYC63mUA:10 a=r77TgQKjGQsHNAKrUKIA:9 a=kurRqvosAAAA:8 a=FP58Ms26AAAA:8
 a=TRcgf2gIAAAA:8 a=pGLkceISAAAA:8 a=PVlkjBJtAAAA:8 a=jU4qhlNgAAAA:8
 a=yBxTPX1S5TtehZbktSkA:9 a=wPNLvfGTeEIA:10 a=7utUOSbz6MoA:10 a=SSmOFEACAAAA:8
 a=754n_0F8DONwsszEtDQA:9 a=Q5y-TCT357L7FW6n:21 a=gKO2Hq4RSVkA:10
 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10
 a=kbxRQ_lfPIoQnHsAj2-A:22 a=Tuz8d9WoyAmcD3mbu7Kv:22 a=boGXJ1g9TDZA5kD0mADd:22
Received: from c-73-222-32-85.hsd1.ca.comcast.net ([73.222.32.85]:52543
 helo=SRA6) by bosauthsmtp07.eigbox.net with esmtpa (Exim)
 id 1lzLlH-0000HE-PG; Fri, 02 Jul 2021 12:11:28 -0400
From: "Dick Roy" <dickroy@alum.mit.edu>
To: "'Bob McMahon'" <bob.mcmahon@broadcom.com>,
 "'David P. Reed'" <dpreed@deepplum.com>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAHb6Lvo1KBhRo0N-+Wq-YWdknbttOT6Dc_wfH2OVR2ODTbotjQ@mail.gmail.com>
In-Reply-To: <CAHb6Lvo1KBhRo0N-+Wq-YWdknbttOT6Dc_wfH2OVR2ODTbotjQ@mail.gmail.com>
Date: Fri, 2 Jul 2021 09:11:17 -0700
Organization: SRA
Message-ID: <00EC422F7AF542BA91443E6334D78A2C@SRA6>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AddvUyVUD1PQsEm0QVGjQW1sFoSXhgACLZOg
X-MimeOLE: Produced By Microsoft MimeOLE
X-EN-UserInfo: f809475445fb8041985048e338e1a001:931c98230c6409dcc37fa7e93b490c27
X-EN-AuthUser: dickroy@intellicommunications.com
X-EN-OrigIP: 73.222.32.85
X-EN-OrigHost: c-73-222-32-85.hsd1.ca.comcast.net
X-Mailman-Approved-At: Mon, 05 Jul 2021 06:42:43 -0400
Subject: Re: [Cake] [Starlink] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2:
	Internet Quality workshop CFP for the internet architecture board
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
Reply-To: dickroy@alum.mit.edu
Cc: 'Cake List' <cake@lists.bufferbloat.net>,
 'Make-Wifi-fast' <make-wifi-fast@lists.bufferbloat.net>,
 starlink@lists.bufferbloat.net, codel@lists.bufferbloat.net,
 'cerowrt-devel' <cerowrt-devel@lists.bufferbloat.net>,
 'bloat' <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============0976234606352379166=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

This is a multi-part message in MIME format.

--===============0976234606352379166==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_063A_01D76F22.3D650200"

This is a multi-part message in MIME format.

------=_NextPart_000_063A_01D76F22.3D650200
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Some terminology if one cares:

=20

=93Segments=94 are =93transported=94    (Layer 4)

=93Packets=94 are =93networked=94        (Layer 3)

=93Frames=94 are =93=94data linked=94       (Layer 2)

=20

and last but not least =85

=20

=93Streams: flow =93over the air=94     (Layer 1)

=20

  _____ =20

From: Starlink [mailto:starlink-bounces@lists.bufferbloat.net] On Behalf =
Of
Bob McMahon
Sent: Thursday, July 1, 2021 9:04 PM
To: David P. Reed
Cc: starlink@lists.bufferbloat.net; Make-Wifi-fast; Cake List;
codel@lists.bufferbloat.net; cerowrt-devel; bloat
Subject: Re: [Starlink] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2: =
Internet
Quality workshop CFP for the internet architecture board

=20

I think even packets are a network construct. End/end protocols don't =
write
packets.  They mostly make writes() and reads and have no clue about
packets. Except for, of course, UDP which you know everything about =
being
the original designer.

Agreed the telemetry is most interesting and a huge void. Curious to =
more of
your thoughts on it, metrics, etc.

Note: iperf 2 has write to read latencies. It requires clock sync. My
systems sync to the GPS atomic as the commonNote/ reference. I think =
end/end
queue depths can be calculated per Little's law (shown below per inP.)
https://sourceforge.net/projects/iperf2/

[rjmcmahon@rjm-nas ~]$ iperf -s -i 1=20
------------------------------------------------------------
Server listening on TCP port 5001
TCP window size:  128 KByte (default)
------------------------------------------------------------
[  1] local 192.168.1.94%enp2s0 port 5001 connected with 192.168.1.100 =
port
59142 (MSS=3D1448) (trip-times) (sock=3D4) (peer 2.1.3-rc) on 2021-07-01
20:57:37 (PDT)
[ ID] Interval        Transfer    Bandwidth    Burst Latency
avg/min/max/stdev (cnt/size) inP NetPwr  Reads=3DDist
[  1] 0.00-1.00 sec   596 MBytes  5.00 Gbits/sec  =
0.170/0.153/1.492/0.078 ms
(4769/131082)  104 KByte 3674521  =
22841=3D787:18657:2467:623:84:41:66:116
[  1] 1.00-2.00 sec   596 MBytes  5.00 Gbits/sec  =
0.167/0.156/0.434/0.015 ms
(4768/131086)  102 KByte 3742630  =
23346=3D1307:18975:2171:578:105:53:56:101
[  1] 2.00-3.00 sec   596 MBytes  5.00 Gbits/sec  =
0.168/0.157/1.337/0.033 ms
(4769/131046)  103 KByte 3710006  =
23263=3D1470:18602:2148:725:107:53:60:98
[  1] 3.00-4.00 sec   596 MBytes  5.00 Gbits/sec  =
0.166/0.158/0.241/0.008 ms
(4768/131082)  102 KByte 3756478  =
23960=3D1452:19714:2123:449:79:32:38:73
[  1] 4.00-5.00 sec   596 MBytes  5.00 Gbits/sec  =
0.166/0.157/0.247/0.008 ms
(4769/131061)  102 KByte 3756193  =
23653=3D1234:19529:2206:439:89:36:44:76
[  1] 5.00-6.00 sec   596 MBytes  5.00 Gbits/sec  =
0.166/0.158/0.245/0.007 ms
(4768/131072)  101 KByte 3758826  =
23478=3D1081:19356:2284:535:73:35:39:75
[  1] 6.00-7.00 sec   596 MBytes  5.00 Gbits/sec  =
0.168/0.158/0.283/0.009 ms
(4768/131096)  102 KByte 3728988  =
23477=3D1338:19301:1995:535:104:46:59:99
[  1] 7.00-8.00 sec   596 MBytes  5.00 Gbits/sec  =
0.163/0.150/0.400/0.010 ms
(4769/131047) 99.7 KByte 3826119  =
23496=3D1213:19404:2101:498:83:57:43:97
[  1] 8.00-9.00 sec   596 MBytes  5.00 Gbits/sec  =
0.158/0.149/0.236/0.008 ms
(4768/131082) 96.6 KByte 3951089  =
23652=3D1328:19498:2074:493:77:41:53:88
[  1] 9.00-10.00 sec   596 MBytes  5.00 Gbits/sec  =
0.158/0.149/0.235/0.008
ms (4769/131061) 96.4 KByte 3958720  =
23725=3D1509:19410:2051:463:91:46:47:108
[  1] 0.00-10.00 sec  5.82 GBytes  5.00 Gbits/sec  =
0.165/0.149/1.492/0.028
ms (47685/131072)  101 KByte 3784172
234891=3D12719:192446:21620:5338:892:440:505:931

[rjmcmahon@ryzen3950 iperf2-code]$ iperf -c 192.168.1.94 -i 1 =
--trip-times
-b 5g -e
------------------------------------------------------------
Client connecting to 192.168.1.94, TCP port 5001 with pid 68866 (1 =
flows)
Write buffer size: 131072 Byte
TCP window size: 85.0 KByte (default)
------------------------------------------------------------
[  1] local 192.168.1.100%enp4s0 port 59142 connected with 192.168.1.94 =
port
5001 (MSS=3D1448) (trip-times) (sock=3D3) (ct=3D0.33 ms) on 2021-07-01 =
20:57:37
(PDT)
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
Enabled rx-histograms bin-width=3D0.010 ms, bins=3D1000 (clients must =
use
--trip-times)
TCP window size:  128 KByte (default)
------------------------------------------------------------
[  1] local 192.168.1.94%enp2s0 port 5001 connected with 192.168.1.100 =
port
59146 (MSS=3D1448) (trip-times) (sock=3D4) (peer 2.1.3-rc) on 2021-07-01
21:01:42 (PDT)
[ ID] Interval        Transfer    Bandwidth    Burst Latency
avg/min/max/stdev (cnt/size) inP NetPwr  Reads=3DDist
[  1] 0.00-1.00 sec   596 MBytes  5.00 Gbits/sec  =
0.164/0.149/1.832/0.101 ms
(4769/131072)  100 KByte 3809846  =
22370=3D435:17000:3686:1060:77:35:25:52
[  1] 0.00-1.00 sec F8-PDF:
bin(w=3D10us):cnt(4769)=3D15:3,16:4414,17:227,18:49,19:14,20:11,21:6,22:1=
,23:1,3
5:1,49:1,55:1,67:1,74:1,85:1,90:2,94:1,95:1,97:1,100:1,103:1,104:1,113:1,=
114
:1,115:2,116:1,118:1,119:2,120:1,125:2,126:1,127:1,132:1,133:1,134:1,137:=
2,1
38:1,140:1,142:2,143:1,144:1,149:1,153:1,157:1,159:1,184:1
(5.00/95.00/99.7%=3D16/17/133,Outliers=3D352,obl/obu=3D0/0) (1.832
ms/1625198502.626723)
[  1] 1.00-2.00 sec   596 MBytes  5.00 Gbits/sec  =
0.156/0.148/0.235/0.006 ms
(4768/131094) 95.0 KByte 4018733  =
21762=3D498:16581:2918:1512:75:36:56:86
[  1] 1.00-2.00 sec F8-PDF:
bin(w=3D10us):cnt(4768)=3D15:6,16:4304,17:287,18:99,19:36,20:21,21:10,22:=
3,23:1,
24:1 (5.00/95.00/99.7%=3D16/17/21,Outliers=3D458,obl/obu=3D0/0) (0.235
ms/1625198503.810735)
[  1] 2.00-3.00 sec   596 MBytes  5.00 Gbits/sec  =
0.158/0.150/0.515/0.009 ms
(4769/131049) 96.2 KByte 3966043  22863=3D528:18422:3099:571:78:36:47:82
[  1] 2.00-3.00 sec F8-PDF:
bin(w=3D10us):cnt(4769)=3D16:4078,17:416,18:182,19:50,20:23,21:9,22:4,23:=
3,24:1,
27:1,30:1,52:1 (5.00/95.00/99.7%=3D16/18/21,Outliers=3D0,obl/obu=3D0/0) =
(0.515
ms/1625198505.144479)
[  1] 3.00-4.00 sec   596 MBytes  5.00 Gbits/sec  =
0.157/0.149/0.284/0.007 ms
(4768/131082) 95.9 KByte 3978135  22766=3D472:18044:3360:646:90:37:51:66
[  1] 3.00-4.00 sec F8-PDF:
bin(w=3D10us):cnt(4768)=3D15:1,16:4183,17:342,18:159,19:37,20:23,21:13,22=
:4,23:3
,25:1,27:1,29:1 =
(5.00/95.00/99.7%=3D16/18/21,Outliers=3D23,obl/obu=3D0/0) (0.284
ms/1625198505.973695)
[  1] 4.00-5.00 sec   596 MBytes  5.00 Gbits/sec  =
0.157/0.149/0.381/0.008 ms
(4769/131061) 95.9 KByte 3978347  =
22759=3D451:18039:3415:632:57:16:49:100
[  1] 4.00-5.00 sec F8-PDF:
bin(w=3D10us):cnt(4769)=3D15:1,16:4253,17:287,18:150,19:31,20:11,21:15,22=
:6,23:4
,24:4,25:1,26:1,27:1,28:2,30:1,39:1
(5.00/95.00/99.7%=3D16/17/23,Outliers=3D36,obl/obu=3D0/0) (0.381
ms/1625198507.119394)
[  1] 5.00-6.00 sec   596 MBytes  5.00 Gbits/sec  =
0.157/0.151/0.222/0.006 ms
(4768/131072) 96.0 KByte 3974720  22661=3D422:17875:3411:723:95:29:44:62
[  1] 5.00-6.00 sec F8-PDF:
bin(w=3D10us):cnt(4768)=3D16:4166,17:405,18:130,19:30,20:21,21:8,22:7,23:=
1
(5.00/95.00/99.7%=3D16/17/21,Outliers=3D0,obl/obu=3D0/0) (0.222
ms/1625198508.350409)
[  1] 6.00-7.00 sec   596 MBytes  5.00 Gbits/sec  =
0.158/0.150/0.302/0.008 ms
(4768/131082) 96.3 KByte 3962779  22723=3D453:17930:3414:699:93:24:33:77
[  1] 6.00-7.00 sec F8-PDF:
bin(w=3D10us):cnt(4768)=3D16:4179,17:323,18:152,19:50,20:33,21:18,22:6,23=
:1,24:2
,26:1,27:1,28:1,31:1 =
(5.00/95.00/99.7%=3D16/18/21,Outliers=3D0,obl/obu=3D0/0)
(0.302 ms/1625198509.416997)
[  1] 7.00-8.00 sec   596 MBytes  5.00 Gbits/sec  =
0.157/0.150/0.217/0.006 ms
(4769/131061) 96.0 KByte 3974060  22923=3D489:18132:3533:568:78:23:36:64
[  1] 7.00-8.00 sec F8-PDF:
bin(w=3D10us):cnt(4769)=3D16:4228,17:317,18:137,19:45,20:21,21:14,22:7
(5.00/95.00/99.7%=3D16/17/21,Outliers=3D0,obl/obu=3D0/0) (0.217
ms/1625198510.34875)
[  1] 8.00-9.00 sec   596 MBytes  5.00 Gbits/sec  =
0.158/0.150/0.363/0.009 ms
(4768/131072) 96.3 KByte 3960477  =
22677=3D472:17988:3377:533:92:50:64:101
[  1] 8.00-9.00 sec F8-PDF:
bin(w=3D10us):cnt(4768)=3D16:4194,17:253,18:173,19:62,20:32,21:27,22:12,2=
3:8,24:
3,25:2,28:1,37:1 =
(5.00/95.00/99.7%=3D16/18/23,Outliers=3D0,obl/obu=3D0/0) (0.363
ms/1625198511.392746)
[  1] 9.00-10.00 sec   596 MBytes  5.00 Gbits/sec  =
0.156/0.150/0.232/0.005
ms (4768/131082) 95.5 KByte 3993997  =
23174=3D396:18593:3590:461:50:13:25:46
[  1] 9.00-10.00 sec F8-PDF:
bin(w=3D10us):cnt(4768)=3D16:4378,17:234,18:113,19:21,20:10,21:6,22:4,24:=
2
(5.00/95.00/99.7%=3D16/17/20,Outliers=3D0,obl/obu=3D0/0) (0.232
ms/1625198512.528385)
[  1] 0.00-10.00 sec  5.82 GBytes  5.00 Gbits/sec  =
0.158/0.148/1.832/0.033
ms (47685/131072) 96.3 KByte 3961002
226681=3D4616:178607:33803:7405:785:299:430:736
[  1] 0.00-10.00 sec F8(f)-PDF:
bin(w=3D10us):cnt(47685)=3D15:11,16:42378,17:3091,18:1344,19:376,20:206,2=
1:126,2
2:54,23:22,24:13,25:4,26:2,27:4,28:4,29:1,30:2,31:1,35:1,37:1,39:1,49:1,5=
2:1
,55:1,67:1,74:1,85:1,90:2,94:1,95:1,97:1,100:1,103:1,104:1,113:1,114:1,11=
5:2
,116:1,118:1,119:2,120:1,125:2,126:1,127:1,132:1,133:1,134:1,137:2,138:1,=
140
:1,142:2,143:1,144:1,149:1,153:1,157:1,159:1,184:1
(5.00/95.00/99.7%=3D16/17/22,Outliers=3D279,obl/obu=3D0/0) (1.832
ms/1625198502.626723)


[rjmcmahon@ryzen3950 iperf2-code]$ iperf -c 192.168.1.94 -i 1 =
--trip-times
-b 5g -e=20
------------------------------------------------------------
Client connecting to 192.168.1.94, TCP port 5001 with pid 69171 (1 =
flows)
Write buffer size: 131072 Byte
TCP window size: 85.0 KByte (default)
------------------------------------------------------------
[  1] local 192.168.1.100%enp4s0 port 59146 connected with 192.168.1.94 =
port
5001 (MSS=3D1448) (trip-times) (sock=3D3) (ct=3D0.30 ms) on 2021-07-01 =
21:01:42
(PDT)
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
[rjmcmahon@ryzen3950 iperf2-code]$=20

Bob=20



=20

On Thu, Jul 1, 2021 at 6:16 PM David P. Reed <dpreed@deepplum.com> =
wrote:

Well, nice that the folks doing the conference  are willing to consider =
that
quality of user experience has little to do with signalling rate at the
physical layer or throughput of FTP transfers.

=20

But honestly, the fact that they call the problem "network quality" =
suggests
that they REALLY, REALLY don't understand the Internet isn't the =
hardware or
the routers or even the routing algorithms *to its users*.

=20

By ignoring the diversity of applications now and in the future, and the
fact that we DON'T KNOW what will be coming up, this conference will =
likely
fall into the usual trap that net-heads fall into - optimizing for some
imaginary reality that doesn't exist, and in fact will probably never be
what users actually will do given the chance.

=20

I saw this issue in 1976 in the group developing the original Internet
protocols - a desire to put *into the network* special tricks to =
optimize
ASR33 logins to remote computers from terminal concentrators (aka remote
login), bulk file transfers between file systems on different =
time-sharing
systems, and "sessions" (virtual circuits) that required logins. And =
then
trying to exploit underlying "multicast" by building it into the IP =
layer,
because someone thought that TV broadcast would be the dominant =
application.

=20

Frankly, to think of "quality" as something that can be "provided" by =
"the
network" misses the entire point of "end-to-end argument in system =
design".
Quality is not a property defined or created by The Network. If you want =
to
talk about Quality, you need to talk about users - all the users at all
times, now and into the future, and that's something you can't do if you
don't bother to include current and future users talking about what they
might expect to experience that they don't experience.

=20

There was much fighting back in 1976 that basically involved "network
experts" saying that the network was the place to "solve" such issues as
quality, so applications could avoid having to solve such issues.

=20

What some of us managed to do was to argue that you can't "solve" such
issues. All you can do is provide a framework that enables different =
uses to
*cooperate* in some way.

=20

Which is why the Internet drops packets rather than queueing them, and =
why
diffserv cannot work.

(I know the latter is conftroversial, but at the moment, ALL of diffserv
attempts to talk about end-to-end applicaiton specific metrics, but =
never,
ever explains what the diffserv control points actually do w.r.t. what =
the
IP layer can actually control. So it is meaningless - another violation =
of
the so-called end-to-end principle).

=20

Networks are about getting packets from here to there, multiplexing the
underlying resources. That's it. Quality is a whole different thing. =
Quality
can be improved by end-to-end approaches, if the underlying network =
provides
some kind of thing that actually creates a way for end-to-end =
applications
to affect queueing and routing decisions, and more importantly getting
"telemetry" from the network regarding what is actually going on with =
the
other end-to-end users sharing the infrastructure.

=20

This conference won't talk about it this way. So don't waste your time.

=20

=20

=20

On Wednesday, June 30, 2021 8:12pm, "Dave Taht" <dave.taht@gmail.com> =
said:

> The program committee members are *amazing*. Perhaps, finally, we can
> move the bar for the internet's quality metrics past endless, blind
> repetitions of speedtest.
>=20
> For complete details, please see:
> https://www.iab.org/activities/workshops/network-quality/
>=20
> Submissions Due: Monday 2nd August 2021, midnight AOE (Anywhere On =
Earth)
> Invitations Issued by: Monday 16th August 2021
>=20
> Workshop Date: This will be a virtual workshop, spread over three =
days:
>=20
> 1400-1800 UTC Tue 14th September 2021
> 1400-1800 UTC Wed 15th September 2021
> 1400-1800 UTC Thu 16th September 2021
>=20
> Workshop co-chairs: Wes Hardaker, Evgeny Khorov, Omer Shapira
>=20
> The Program Committee members:
>=20
> Jari Arkko, Olivier Bonaventure, Vint Cerf, Stuart Cheshire, Sam
> Crowford, Nick Feamster, Jim Gettys, Toke Hoiland-Jorgensen, Geoff
> Huston, Cullen Jennings, Katarzyna Kosek-Szott, Mirja Kuehlewind,
> Jason Livingood, Matt Mathias, Randall Meyer, Kathleen Nichols,
> Christoph Paasch, Tommy Pauly, Greg White, Keith Winstein.
>=20
> Send Submissions to: network-quality-workshop-pc@iab.org.
>=20
> Position papers from academia, industry, the open source community and
> others that focus on measurements, experiences, observations and
> advice for the future are welcome. Papers that reflect experience
> based on deployed services are especially welcome. The organizers
> understand that specific actions taken by operators are unlikely to be
> discussed in detail, so papers discussing general categories of
> actions and issues without naming specific technologies, products, or
> other players in the ecosystem are expected. Papers should not focus
> on specific protocol solutions.
>=20
> The workshop will be by invitation only. Those wishing to attend
> should submit a position paper to the address above; it may take the
> form of an Internet-Draft.
>=20
> All inputs submitted and considered relevant will be published on the
> workshop website. The organisers will decide whom to invite based on
> the submissions received. Sessions will be organized according to
> content, and not every accepted submission or invited attendee will
> have an opportunity to present as the intent is to foster discussion
> and not simply to have a sequence of presentations.
>=20
> Position papers from those not planning to attend the virtual sessions
> themselves are also encouraged. A workshop report will be published
> afterwards.
>=20
> Overview:
>=20
> "We believe that one of the major factors behind this lack of progress
> is the popular perception that throughput is the often sole measure of
> the quality of Internet connectivity. With such narrow focus, people
> don=92t consider questions such as:
>=20
> What is the latency under typical working conditions?
> How reliable is the connectivity across longer time periods?
> Does the network allow the use of a broad range of protocols?
> What services can be run by clients of the network?
> What kind of IPv4, NAT or IPv6 connectivity is offered, and are there
firewalls?
> What security mechanisms are available for local services, such as =
DNS?
> To what degree are the privacy, confidentiality, integrity and
> authenticity of user communications guarded?
>=20
> Improving these aspects of network quality will likely depend on
> measurement and exposing metrics to all involved parties, including to
> end users in a meaningful way. Such measurements and exposure of the
> right metrics will allow service providers and network operators to
> focus on the aspects that impacts the users=92 experience most and at
> the same time empowers users to choose the Internet service that will
> give them the best experience."
>=20
>=20
> --
> Latest Podcast:
> =
https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/=

>=20
> Dave T=E4ht CTO, TekLibre, LLC
> _______________________________________________
> Cerowrt-devel mailing list
> Cerowrt-devel@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cerowrt-devel
>=20

_______________________________________________
Make-wifi-fast mailing list
Make-wifi-fast@lists.bufferbloat.net
https://lists.bufferbloat.net/listinfo/make-wifi-fast


This electronic communication and the information and any files =
transmitted
with it, or attached to it, are confidential and are intended solely for =
the
use of the individual or entity to whom it is addressed and may contain
information that is confidential, legally privileged, protected by =
privacy
laws, or otherwise restricted from disclosure to anyone else. If you are =
not
the intended recipient or the person responsible for delivering the =
e-mail
to the intended recipient, you are hereby notified that any use, =
copying,
distributing, dissemination, forwarding, printing, or copying of this =
e-mail
is strictly prohibited. If you received this e-mail in error, please =
return
the e-mail to the sender, delete it from your computer, and destroy any
printed copy of it.


------=_NextPart_000_063A_01D76F22.3D650200
Content-Type: text/html;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:st1=3D"urn:schemas-microsoft-com:office:smarttags" =
xmlns=3D"http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; =
charset=3Diso-8859-1">
<meta name=3DGenerator content=3D"Microsoft Word 11 (filtered medium)">
<!--[if !mso]>
<style>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]--><o:SmartTagType
 namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags" =
name=3D"City"/>
<o:SmartTagType =
namespaceuri=3D"urn:schemas-microsoft-com:office:smarttags"
 name=3D"place"/>
<!--[if !mso]>
<style>
st1\:*{behavior:url(#default#ieooui) }
</style>
<![endif]-->
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@MS Mincho";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
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
	{color:blue;
	text-decoration:underline;}
p
	{mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman";}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:Arial;
	color:navy;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.25in 1.0in 1.25in;}
div.Section1
	{page:Section1;}
-->
</style>

</head>

<body lang=3DEN-US link=3Dblue vlink=3Dblue>

<div class=3DSection1>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>Some terminology if one =
cares:<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>&#8220;Segments&#8221; are =
&#8220;transported&#8221;
=A0=A0=A0(Layer 4)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>&#8220;Packets&#8221; are =
&#8220;networked&#8221;=A0=A0=A0=A0=A0=A0=A0
(Layer 3)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>&#8220;Frames&#8221; are =
&#8220;&#8221;data
linked&#8221;=A0=A0=A0=A0=A0=A0 (Layer 2)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>and last but not least =
&#8230;<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'>&#8220;Streams: flow &#8220;over =
the air&#8221;=A0=A0=A0=A0
(Layer 1)<o:p></o:p></span></font></p>

<p class=3DMsoNormal><font size=3D2 color=3Dnavy face=3DArial><span =
style=3D'font-size:
10.0pt;font-family:Arial;color:navy'><o:p>&nbsp;</o:p></span></font></p>

<div>

<div class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><font =
size=3D3
face=3D"Times New Roman"><span style=3D'font-size:12.0pt'>

<hr size=3D3 width=3D"100%" align=3Dcenter tabindex=3D-1>

</span></font></div>

<p class=3DMsoNormal><b><font size=3D2 face=3DTahoma><span =
style=3D'font-size:10.0pt;
font-family:Tahoma;font-weight:bold'>From:</span></font></b><font =
size=3D2
face=3DTahoma><span style=3D'font-size:10.0pt;font-family:Tahoma'> =
Starlink
[mailto:starlink-bounces@lists.bufferbloat.net] <b><span =
style=3D'font-weight:
bold'>On Behalf Of </span></b>Bob McMahon<br>
<b><span style=3D'font-weight:bold'>Sent:</span></b> Thursday, July 1, =
2021 9:04
PM<br>
<b><span style=3D'font-weight:bold'>To:</span></b> David P. Reed<br>
<b><span style=3D'font-weight:bold'>Cc:</span></b> =
starlink@lists.bufferbloat.net;
Make-Wifi-fast; Cake List; codel@lists.bufferbloat.net; cerowrt-devel; =
bloat<br>
<b><span style=3D'font-weight:bold'>Subject:</span></b> Re: [Starlink]
[Make-wifi-fast] [Cerowrt-devel] Due Aug 2: Internet Quality workshop =
CFP for
the internet architecture board</span></font><o:p></o:p></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<div>

<p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><font size=3D3
face=3D"Times New Roman"><span style=3D'font-size:12.0pt'>I think even =
packets are
a network construct. End/end protocols don't write packets.&nbsp; They
mostly&nbsp;make writes() and reads&nbsp;and have no clue about packets. =
Except
for, of course, UDP which you know&nbsp;everything about being the =
original
designer.<br>
<br>
Agreed the telemetry is most interesting and a huge void. Curious to =
more of
your thoughts on it, metrics, etc.<br>
<br>
Note: iperf 2 has write to read latencies. It requires clock sync. My =
systems
sync to the GPS atomic as the commonNote/ reference. I think end/end =
queue
depths can be calculated&nbsp;per Little's law (shown below per =
inP.)&nbsp;<a
href=3D"https://sourceforge.net/projects/iperf2/">https://sourceforge.net=
/projects/iperf2/</a><br>
<br>
[rjmcmahon@rjm-nas ~]$ iperf -s -i 1 <br>
------------------------------------------------------------<br>
Server listening on TCP port 5001<br>
TCP window size: &nbsp;128 KByte (default)<br>
------------------------------------------------------------<br>
[ &nbsp;1] local 192.168.1.94%enp2s0 port 5001 connected with =
192.168.1.100
port 59142 (MSS=3D1448) (trip-times) (sock=3D4) (peer 2.1.3-rc) on =
2021-07-01
20:57:37 (PDT)<br>
[ ID] Interval &nbsp; &nbsp; &nbsp; &nbsp;Transfer &nbsp; =
&nbsp;Bandwidth
&nbsp; &nbsp;Burst Latency avg/min/max/stdev (cnt/size) inP NetPwr
&nbsp;Reads=3DDist<br>
[ &nbsp;1] 0.00-1.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec
&nbsp;0.170/0.153/1.492/0.078 ms (4769/131082) &nbsp;104 KByte 3674521
&nbsp;22841=3D787:18657:2467:623:84:41:66:116<br>
[ &nbsp;1] 1.00-2.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec
&nbsp;0.167/0.156/0.434/0.015 ms (4768/131086) &nbsp;102 KByte 3742630
&nbsp;23346=3D1307:18975:2171:578:105:53:56:101<br>
[ &nbsp;1] 2.00-3.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec
&nbsp;0.168/0.157/1.337/0.033 ms (4769/131046) &nbsp;103 KByte 3710006
&nbsp;23263=3D1470:18602:2148:725:107:53:60:98<br>
[ &nbsp;1] 3.00-4.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec
&nbsp;0.166/0.158/0.241/0.008 ms (4768/131082) &nbsp;102 KByte 3756478
&nbsp;23960=3D1452:19714:2123:449:79:32:38:73<br>
[ &nbsp;1] 4.00-5.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec
&nbsp;0.166/0.157/0.247/0.008 ms (4769/131061) &nbsp;102 KByte 3756193
&nbsp;23653=3D1234:19529:2206:439:89:36:44:76<br>
[ &nbsp;1] 5.00-6.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;0.166/0.158/0.245/0.007
ms (4768/131072) &nbsp;101 KByte 3758826
&nbsp;23478=3D1081:19356:2284:535:73:35:39:75<br>
[ &nbsp;1] 6.00-7.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec
&nbsp;0.168/0.158/0.283/0.009 ms (4768/131096) &nbsp;102 KByte 3728988
&nbsp;23477=3D1338:19301:1995:535:104:46:59:99<br>
[ &nbsp;1] 7.00-8.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec
&nbsp;0.163/0.150/0.400/0.010 ms (4769/131047) 99.7 KByte 3826119
&nbsp;23496=3D1213:19404:2101:498:83:57:43:97<br>
[ &nbsp;1] 8.00-9.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec
&nbsp;0.158/0.149/0.236/0.008 ms (4768/131082) 96.6 KByte 3951089
&nbsp;23652=3D1328:19498:2074:493:77:41:53:88<br>
[ &nbsp;1] 9.00-10.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec
&nbsp;0.158/0.149/0.235/0.008 ms (4769/131061) 96.4 KByte 3958720
&nbsp;23725=3D1509:19410:2051:463:91:46:47:108<br>
[ &nbsp;1] 0.00-10.00 sec &nbsp;5.82 GBytes &nbsp;5.00 Gbits/sec
&nbsp;0.165/0.149/1.492/0.028 ms (47685/131072) &nbsp;101 KByte 3784172
&nbsp;234891=3D12719:192446:21620:5338:892:440:505:931<br>
<br>
[rjmcmahon@ryzen3950 iperf2-code]$ iperf -c 192.168.1.94 -i 1 =
--trip-times -b
5g -e<br>
------------------------------------------------------------<br>
Client connecting to 192.168.1.94, TCP port 5001 with pid 68866 (1 =
flows)<br>
Write buffer size: 131072 Byte<br>
TCP window size: 85.0 KByte (default)<br>
------------------------------------------------------------<br>
[ &nbsp;1] local 192.168.1.100%enp4s0 port 59142 connected with =
192.168.1.94
port 5001 (MSS=3D1448) (trip-times) (sock=3D3) (ct=3D0.33 ms) on =
2021-07-01 20:57:37
(PDT)<br>
[ ID] Interval &nbsp; &nbsp; &nbsp; &nbsp;Transfer &nbsp; =
&nbsp;Bandwidth
&nbsp; &nbsp; &nbsp; Write/Err &nbsp;Rtry &nbsp; &nbsp; Cwnd/RTT &nbsp; =
&nbsp;
&nbsp; &nbsp;NetPwr<br>
[ &nbsp;1] 0.00-1.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;4770/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5 &nbsp; &nbsp; &nbsp;295K/111 us =
&nbsp;5631373<br>
[ &nbsp;1] 1.00-2.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;4768/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 &nbsp; &nbsp; &nbsp;295K/120 us
&nbsp;5207927<br>
[ &nbsp;1] 2.00-3.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;4768/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 &nbsp; &nbsp; &nbsp;306K/110 us
&nbsp;5681375<br>
[ &nbsp;1] 3.00-4.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;4769/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 &nbsp; &nbsp; &nbsp;306K/107 us
&nbsp;5841891<br>
[ &nbsp;1] 4.00-5.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;4768/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 &nbsp; &nbsp; &nbsp;306K/110 us
&nbsp;5681375<br>
[ &nbsp;1] 5.00-6.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;4768/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 &nbsp; &nbsp; &nbsp;306K/109 us
&nbsp;5733498<br>
[ &nbsp;1] 6.00-7.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;4769/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 &nbsp; &nbsp; &nbsp;306K/115 us
&nbsp;5435499<br>
[ &nbsp;1] 7.00-8.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;4768/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 &nbsp; &nbsp; &nbsp;306K/111 us
&nbsp;5630192<br>
[ &nbsp;1] 8.00-9.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;4769/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 &nbsp; &nbsp; &nbsp;306K/110 us
&nbsp;5682567<br>
[ &nbsp;1] 9.00-10.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;4768/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 &nbsp; &nbsp; &nbsp;306K/109 us
&nbsp;5733498<br>
<br>
[rjmcmahon@rjm-nas ~]$ iperf -s -i 1 --histograms=3D10u<br>
------------------------------------------------------------<br>
Server listening on TCP port 5001 with pid 5166<br>
Read buffer size: &nbsp;128 KByte (Dist bin width=3D16.0 KByte)<br>
Enabled rx-histograms bin-width=3D0.010 ms, bins=3D1000 (clients must =
use
--trip-times)<br>
TCP window size: &nbsp;128 KByte (default)<br>
------------------------------------------------------------<br>
[ &nbsp;1] local 192.168.1.94%enp2s0 port 5001 connected with =
192.168.1.100
port 59146 (MSS=3D1448) (trip-times) (sock=3D4) (peer 2.1.3-rc) on =
2021-07-01
21:01:42 (PDT)<br>
[ ID] Interval &nbsp; &nbsp; &nbsp; &nbsp;Transfer &nbsp; =
&nbsp;Bandwidth
&nbsp; &nbsp;Burst Latency avg/min/max/stdev (cnt/size) inP NetPwr
&nbsp;Reads=3DDist<br>
[ &nbsp;1] 0.00-1.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec
&nbsp;0.164/0.149/1.832/0.101 ms (4769/131072) &nbsp;100 KByte 3809846
&nbsp;22370=3D435:17000:3686:1060:77:35:25:52<br>
[ &nbsp;1] 0.00-1.00 sec F8-PDF:
bin(w=3D10us):cnt(4769)=3D15:3,16:4414,17:227,18:49,19:14,20:11,21:6,22:1=
,23:1,35:1,49:1,55:1,67:1,74:1,85:1,90:2,94:1,95:1,97:1,100:1,103:1,104:1=
,113:1,114:1,115:2,116:1,118:1,119:2,120:1,125:2,126:1,127:1,132:1,133:1,=
134:1,137:2,138:1,140:1,142:2,143:1,144:1,149:1,153:1,157:1,159:1,184:1
(5.00/95.00/99.7%=3D16/17/133,Outliers=3D352,obl/obu=3D0/0) (1.832
ms/1625198502.626723)<br>
[ &nbsp;1] 1.00-2.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec
&nbsp;0.156/0.148/0.235/0.006 ms (4768/131094) 95.0 KByte 4018733
&nbsp;21762=3D498:16581:2918:1512:75:36:56:86<br>
[ &nbsp;1] 1.00-2.00 sec F8-PDF:
bin(w=3D10us):cnt(4768)=3D15:6,16:4304,17:287,18:99,19:36,20:21,21:10,22:=
3,23:1,24:1
(5.00/95.00/99.7%=3D16/17/21,Outliers=3D458,obl/obu=3D0/0) (0.235
ms/1625198503.810735)<br>
[ &nbsp;1] 2.00-3.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec
&nbsp;0.158/0.150/0.515/0.009 ms (4769/131049) 96.2 KByte 3966043
&nbsp;22863=3D528:18422:3099:571:78:36:47:82<br>
[ &nbsp;1] 2.00-3.00 sec F8-PDF:
bin(w=3D10us):cnt(4769)=3D16:4078,17:416,18:182,19:50,20:23,21:9,22:4,23:=
3,24:1,27:1,30:1,52:1
(5.00/95.00/99.7%=3D16/18/21,Outliers=3D0,obl/obu=3D0/0) (0.515 =
ms/1625198505.144479)<br>
[ &nbsp;1] 3.00-4.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;0.157/0.149/0.284/0.007
ms (4768/131082) 95.9 KByte 3978135 =
&nbsp;22766=3D472:18044:3360:646:90:37:51:66<br>
[ &nbsp;1] 3.00-4.00 sec F8-PDF:
bin(w=3D10us):cnt(4768)=3D15:1,16:4183,17:342,18:159,19:37,20:23,21:13,22=
:4,23:3,25:1,27:1,29:1
(5.00/95.00/99.7%=3D16/18/21,Outliers=3D23,obl/obu=3D0/0) (0.284
ms/1625198505.973695)<br>
[ &nbsp;1] 4.00-5.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec
&nbsp;0.157/0.149/0.381/0.008 ms (4769/131061) 95.9 KByte 3978347
&nbsp;22759=3D451:18039:3415:632:57:16:49:100<br>
[ &nbsp;1] 4.00-5.00 sec F8-PDF: =
bin(w=3D10us):cnt(4769)=3D15:1,16:4253,17:287,18:150,19:31,20:11,21:15,22=
:6,23:4,24:4,25:1,26:1,27:1,28:2,30:1,39:1
(5.00/95.00/99.7%=3D16/17/23,Outliers=3D36,obl/obu=3D0/0) (0.381
ms/1625198507.119394)<br>
[ &nbsp;1] 5.00-6.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec
&nbsp;0.157/0.151/0.222/0.006 ms (4768/131072) 96.0 KByte 3974720
&nbsp;22661=3D422:17875:3411:723:95:29:44:62<br>
[ &nbsp;1] 5.00-6.00 sec F8-PDF:
bin(w=3D10us):cnt(4768)=3D16:4166,17:405,18:130,19:30,20:21,21:8,22:7,23:=
1
(5.00/95.00/99.7%=3D16/17/21,Outliers=3D0,obl/obu=3D0/0) (0.222 =
ms/1625198508.350409)<br>
[ &nbsp;1] 6.00-7.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec
&nbsp;0.158/0.150/0.302/0.008 ms (4768/131082) 96.3 KByte 3962779
&nbsp;22723=3D453:17930:3414:699:93:24:33:77<br>
[ &nbsp;1] 6.00-7.00 sec F8-PDF:
bin(w=3D10us):cnt(4768)=3D16:4179,17:323,18:152,19:50,20:33,21:18,22:6,23=
:1,24:2,26:1,27:1,28:1,31:1
(5.00/95.00/99.7%=3D16/18/21,Outliers=3D0,obl/obu=3D0/0) (0.302 =
ms/1625198509.416997)<br>
[ &nbsp;1] 7.00-8.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec
&nbsp;0.157/0.150/0.217/0.006 ms (4769/131061) 96.0 KByte 3974060
&nbsp;22923=3D489:18132:3533:568:78:23:36:64<br>
[ &nbsp;1] 7.00-8.00 sec F8-PDF: =
bin(w=3D10us):cnt(4769)=3D16:4228,17:317,18:137,19:45,20:21,21:14,22:7
(5.00/95.00/99.7%=3D16/17/21,Outliers=3D0,obl/obu=3D0/0) (0.217 =
ms/1625198510.34875)<br>
[ &nbsp;1] 8.00-9.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec
&nbsp;0.158/0.150/0.363/0.009 ms (4768/131072) 96.3 KByte 3960477
&nbsp;22677=3D472:17988:3377:533:92:50:64:101<br>
[ &nbsp;1] 8.00-9.00 sec F8-PDF:
bin(w=3D10us):cnt(4768)=3D16:4194,17:253,18:173,19:62,20:32,21:27,22:12,2=
3:8,24:3,25:2,28:1,37:1
(5.00/95.00/99.7%=3D16/18/23,Outliers=3D0,obl/obu=3D0/0) (0.363 =
ms/1625198511.392746)<br>
[ &nbsp;1] 9.00-10.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec
&nbsp;0.156/0.150/0.232/0.005 ms (4768/131082) 95.5 KByte 3993997
&nbsp;23174=3D396:18593:3590:461:50:13:25:46<br>
[ &nbsp;1] 9.00-10.00 sec F8-PDF:
bin(w=3D10us):cnt(4768)=3D16:4378,17:234,18:113,19:21,20:10,21:6,22:4,24:=
2
(5.00/95.00/99.7%=3D16/17/20,Outliers=3D0,obl/obu=3D0/0) (0.232 =
ms/1625198512.528385)<br>
[ &nbsp;1] 0.00-10.00 sec &nbsp;5.82 GBytes &nbsp;5.00 Gbits/sec
&nbsp;0.158/0.148/1.832/0.033 ms (47685/131072) 96.3 KByte 3961002
&nbsp;226681=3D4616:178607:33803:7405:785:299:430:736<br>
[ &nbsp;1] 0.00-10.00 sec F8(f)-PDF: =
bin(w=3D10us):cnt(47685)=3D15:11,16:42378,17:3091,18:1344,19:376,20:206,2=
1:126,22:54,23:22,24:13,25:4,26:2,27:4,28:4,29:1,30:2,31:1,35:1,37:1,39:1=
,49:1,52:1,55:1,67:1,74:1,85:1,90:2,94:1,95:1,97:1,100:1,103:1,104:1,113:=
1,114:1,115:2,116:1,118:1,119:2,120:1,125:2,126:1,127:1,132:1,133:1,134:1=
,137:2,138:1,140:1,142:2,143:1,144:1,149:1,153:1,157:1,159:1,184:1
(5.00/95.00/99.7%=3D16/17/22,Outliers=3D279,obl/obu=3D0/0) (1.832
ms/1625198502.626723)<br>
<br>
<br>
[rjmcmahon@ryzen3950 iperf2-code]$ iperf -c 192.168.1.94 -i 1 =
--trip-times -b
5g -e <br>
------------------------------------------------------------<br>
Client connecting to 192.168.1.94, TCP port 5001 with pid 69171 (1 =
flows)<br>
Write buffer size: 131072 Byte<br>
TCP window size: 85.0 KByte (default)<br>
------------------------------------------------------------<br>
[ &nbsp;1] local 192.168.1.100%enp4s0 port 59146 connected with =
192.168.1.94
port 5001 (MSS=3D1448) (trip-times) (sock=3D3) (ct=3D0.30 ms) on =
2021-07-01 21:01:42
(PDT)<br>
[ ID] Interval &nbsp; &nbsp; &nbsp; &nbsp;Transfer &nbsp; =
&nbsp;Bandwidth
&nbsp; &nbsp; &nbsp; Write/Err &nbsp;Rtry &nbsp; &nbsp; Cwnd/RTT &nbsp; =
&nbsp;
&nbsp; &nbsp;NetPwr<br>
[ &nbsp;1] 0.00-1.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;4770/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8 &nbsp; &nbsp; &nbsp;231K/111 us
&nbsp;5631373<br>
[ &nbsp;1] 1.00-2.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;4768/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 &nbsp; &nbsp; &nbsp;240K/120 us
&nbsp;5207927<br>
[ &nbsp;1] 2.00-3.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;4768/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 &nbsp; &nbsp; &nbsp;257K/114 us
&nbsp;5482029<br>
[ &nbsp;1] 3.00-4.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;4769/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 &nbsp; &nbsp; &nbsp;257K/110 us
&nbsp;5682567<br>
[ &nbsp;1] 4.00-5.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;4768/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 &nbsp; &nbsp; &nbsp;257K/108 us
&nbsp;5786586<br>
[ &nbsp;1] 5.00-6.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;4768/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 &nbsp; &nbsp; &nbsp;257K/136 us
&nbsp;4595230<br>
[ &nbsp;1] 6.00-7.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;4769/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 &nbsp; &nbsp; &nbsp;257K/111 us
&nbsp;5631373<br>
[ &nbsp;1] 7.00-8.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;4768/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 &nbsp; &nbsp; &nbsp;257K/131 us
&nbsp;4770621<br>
[ &nbsp;1] 8.00-9.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;4769/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 &nbsp; &nbsp; &nbsp;257K/110 us
&nbsp;5682567<br>
[ &nbsp;1] 9.00-10.00 sec &nbsp; 596 MBytes &nbsp;5.00 Gbits/sec =
&nbsp;4768/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 &nbsp; &nbsp; &nbsp;257K/110 us
&nbsp;5681375<br>
[ &nbsp;1] 0.00-10.01 sec &nbsp;5.82 GBytes &nbsp;5.00 Gbits/sec =
&nbsp;47687/0
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;8 &nbsp; &nbsp; &nbsp;257K/110 us
&nbsp;5676364<br>
[rjmcmahon@ryzen3950 iperf2-code]$ <br>
<br>
Bob&nbsp;<br>
<br>
<o:p></o:p></span></font></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><o:p>&nbsp;</o:p></span></font></p>

<div>

<div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>On Thu, Jul 1, 2021 at 6:16 PM David P. Reed &lt;<a
href=3D"mailto:dpreed@deepplum.com">dpreed@deepplum.com</a>&gt; =
wrote:<o:p></o:p></span></font></p>

</div>

<blockquote style=3D'border:none;border-left:solid #CCCCCC =
1.0pt;padding:0in 0in 0in 6.0pt;
margin-left:4.8pt;margin-right:0in'>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>Well, nice that the folks =
doing the
conference&nbsp; are willing to consider that quality of user experience =
has
little to do with signalling rate at the physical layer or throughput of =
FTP
transfers.<o:p></o:p></span></font></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>&nbsp;<o:p></o:p></span></fo=
nt></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>But honestly, the fact that =
they
call the problem &quot;network quality&quot; suggests that they REALLY, =
REALLY
don't understand the Internet isn't the hardware or the routers or even =
the
routing algorithms *to its users*.<o:p></o:p></span></font></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>&nbsp;<o:p></o:p></span></fo=
nt></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>By ignoring the diversity =
of
applications now and in the future, and the fact that we DON'T KNOW what =
will
be coming up, this conference will likely fall into the usual trap that =
net-heads
fall into - optimizing for some imaginary reality that doesn't exist, =
and in
fact will probably never be what users actually will do given the =
chance.<o:p></o:p></span></font></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>&nbsp;<o:p></o:p></span></fo=
nt></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>I saw this issue in 1976 in =
the
group developing the original Internet protocols - a desire to put *into =
the
network* special tricks to optimize ASR33 logins to remote computers =
from
terminal concentrators (aka remote login), bulk file transfers between =
file
systems on different time-sharing systems, and &quot;sessions&quot; =
(virtual
circuits) that required logins. And then trying to exploit underlying
&quot;multicast&quot; by building it into the IP layer, because someone =
thought
that TV broadcast would be the dominant =
application.<o:p></o:p></span></font></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>&nbsp;<o:p></o:p></span></fo=
nt></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>Frankly, to think of
&quot;quality&quot; as something that can be &quot;provided&quot; by =
&quot;the
network&quot; misses the entire point of &quot;end-to-end argument in =
system
design&quot;. Quality is not a property defined or created by The =
Network. If
you want to talk about Quality, you need to talk about users - all the =
users at
all times, now and into the future, and that's something you can't do if =
you
don't bother to include current and future users talking about what they =
might
expect to experience that they don't =
experience.<o:p></o:p></span></font></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>&nbsp;<o:p></o:p></span></fo=
nt></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>There was much fighting =
back in 1976
that basically involved &quot;network experts&quot; saying that the =
network was
the place to &quot;solve&quot; such issues as quality, so applications =
could
avoid having to solve such issues.<o:p></o:p></span></font></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>&nbsp;<o:p></o:p></span></fo=
nt></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>What some of us managed to =
do was to
argue that you can't &quot;solve&quot; such issues. All you can do is =
provide a
framework that enables different uses to *cooperate* in some =
way.<o:p></o:p></span></font></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>&nbsp;<o:p></o:p></span></fo=
nt></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>Which is why the Internet =
drops
packets rather than queueing them, and why diffserv cannot =
work.<o:p></o:p></span></font></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>(I know the latter is
conftroversial, but at the moment, ALL of diffserv attempts to talk =
about
end-to-end applicaiton specific metrics, but never, ever explains what =
the
diffserv control points actually do w.r.t. what the IP layer can =
actually
control. So it is meaningless - another violation of the so-called =
end-to-end
principle).<o:p></o:p></span></font></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>&nbsp;<o:p></o:p></span></fo=
nt></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>Networks are about getting =
packets
from here to there, multiplexing the underlying resources. That's it. =
Quality
is a whole different thing. Quality can be improved by end-to-end =
approaches,
if the underlying network provides some kind of thing that actually =
creates a
way for end-to-end applications to affect queueing and routing =
decisions, and
more importantly getting &quot;telemetry&quot; from the network =
regarding what
is actually going on with the other end-to-end users sharing the =
infrastructure.<o:p></o:p></span></font></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>&nbsp;<o:p></o:p></span></fo=
nt></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>This conference won't talk =
about it
this way. So don't waste your time.<o:p></o:p></span></font></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>&nbsp;<o:p></o:p></span></fo=
nt></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>&nbsp;<o:p></o:p></span></fo=
nt></p>

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>&nbsp;<o:p></o:p></span></fo=
nt></p>

<p =
style=3D'mso-margin-top-alt:0in;margin-right:0in;margin-bottom:12.0pt;
margin-left:0in'><font size=3D2 face=3DArial><span =
style=3D'font-size:10.0pt;
font-family:Arial'>On Wednesday, June 30, 2021 8:12pm, &quot;Dave =
Taht&quot;
&lt;<a href=3D"mailto:dave.taht@gmail.com" =
target=3D"_blank">dave.taht@gmail.com</a>&gt;
said:<o:p></o:p></span></font></p>

<div id=3D"gmail-m_-3236536184715428026SafeStyles1625187388">

<p style=3D'margin:0in;margin-bottom:.0001pt'><font size=3D2 =
face=3DArial><span
style=3D'font-size:10.0pt;font-family:Arial'>&gt; The program committee =
members
are *amazing*. Perhaps, finally, we can<br>
&gt; move the bar for the internet's quality metrics past endless, =
blind<br>
&gt; repetitions of speedtest.<br>
&gt; <br>
&gt; For complete details, please see:<br>
&gt; <a =
href=3D"https://www.iab.org/activities/workshops/network-quality/"
target=3D"_blank">https://www.iab.org/activities/workshops/network-qualit=
y/</a><br>
&gt; <br>
&gt; Submissions Due: Monday 2nd August 2021, midnight AOE (Anywhere On =
Earth)<br>
&gt; Invitations Issued by: Monday 16th August 2021<br>
&gt; <br>
&gt; Workshop Date: This will be a virtual workshop, spread over three =
days:<br>
&gt; <br>
&gt; 1400-1800 UTC Tue 14th September 2021<br>
&gt; 1400-1800 UTC Wed 15th September 2021<br>
&gt; 1400-1800 UTC Thu 16th September 2021<br>
&gt; <br>
&gt; Workshop co-chairs: Wes Hardaker, Evgeny Khorov, Omer Shapira<br>
&gt; <br>
&gt; The Program Committee members:<br>
&gt; <br>
&gt; Jari Arkko, Olivier Bonaventure, Vint Cerf, Stuart Cheshire, =
Sam<br>
&gt; Crowford, Nick Feamster, Jim Gettys, Toke Hoiland-Jorgensen, =
Geoff<br>
&gt; Huston, Cullen <st1:City w:st=3D"on"><st1:place =
w:st=3D"on">Jennings</st1:place></st1:City>,
Katarzyna Kosek-Szott, Mirja Kuehlewind,<br>
&gt; Jason Livingood, Matt Mathias, Randall Meyer, Kathleen Nichols,<br>
&gt; Christoph Paasch, Tommy Pauly, Greg White, Keith Winstein.<br>
&gt; <br>
&gt; Send Submissions to: <a =
href=3D"mailto:network-quality-workshop-pc@iab.org"
target=3D"_blank">network-quality-workshop-pc@iab.org</a>.<br>
&gt; <br>
&gt; Position papers from academia, industry, the open source community =
and<br>
&gt; others that focus on measurements, experiences, observations =
and<br>
&gt; advice for the future are welcome. Papers that reflect =
experience<br>
&gt; based on deployed services are especially welcome. The =
organizers<br>
&gt; understand that specific actions taken by operators are unlikely to =
be<br>
&gt; discussed in detail, so papers discussing general categories of<br>
&gt; actions and issues without naming specific technologies, products, =
or<br>
&gt; other players in the ecosystem are expected. Papers should not =
focus<br>
&gt; on specific protocol solutions.<br>
&gt; <br>
&gt; The workshop will be by invitation only. Those wishing to =
attend<br>
&gt; should submit a position paper to the address above; it may take =
the<br>
&gt; form of an Internet-Draft.<br>
&gt; <br>
&gt; All inputs submitted and considered relevant will be published on =
the<br>
&gt; workshop website. The organisers will decide whom to invite based =
on<br>
&gt; the submissions received. Sessions will be organized according =
to<br>
&gt; content, and not every accepted submission or invited attendee =
will<br>
&gt; have an opportunity to present as the intent is to foster =
discussion<br>
&gt; and not simply to have a sequence of presentations.<br>
&gt; <br>
&gt; Position papers from those not planning to attend the virtual =
sessions<br>
&gt; themselves are also encouraged. A workshop report will be =
published<br>
&gt; afterwards.<br>
&gt; <br>
&gt; Overview:<br>
&gt; <br>
&gt; &quot;We believe that one of the major factors behind this lack of
progress<br>
&gt; is the popular perception that throughput is the often sole measure =
of<br>
&gt; the quality of Internet connectivity. With such narrow focus, =
people<br>
&gt; don&#8217;t consider questions such as:<br>
&gt; <br>
&gt; What is the latency under typical working conditions?<br>
&gt; How reliable is the connectivity across longer time periods?<br>
&gt; Does the network allow the use of a broad range of protocols?<br>
&gt; What services can be run by clients of the network?<br>
&gt; What kind of IPv4, NAT or IPv6 connectivity is offered, and are =
there
firewalls?<br>
&gt; What security mechanisms are available for local services, such as =
DNS?<br>
&gt; To what degree are the privacy, confidentiality, integrity and<br>
&gt; authenticity of user communications guarded?<br>
&gt; <br>
&gt; Improving these aspects of network quality will likely depend =
on<br>
&gt; measurement and exposing metrics to all involved parties, including =
to<br>
&gt; end users in a meaningful way. Such measurements and exposure of =
the<br>
&gt; right metrics will allow service providers and network operators =
to<br>
&gt; focus on the aspects that impacts the users&#8217; experience most =
and at<br>
&gt; the same time empowers users to choose the Internet service that =
will<br>
&gt; give them the best experience.&quot;<br>
&gt; <br>
&gt; <br>
&gt; --<br>
&gt; Latest Podcast:<br>
&gt; <a
href=3D"https://www.linkedin.com/feed/update/urn:li:activity:679101428493=
6785920/"
target=3D"_blank">https://www.linkedin.com/feed/update/urn:li:activity:67=
91014284936785920/</a><br>
&gt; <br>
&gt; Dave T=E4ht CTO, TekLibre, LLC<br>
&gt; _______________________________________________<br>
&gt; Cerowrt-devel mailing list<br>
&gt; <a href=3D"mailto:Cerowrt-devel@lists.bufferbloat.net" =
target=3D"_blank">Cerowrt-devel@lists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cerowrt-devel"
target=3D"_blank">https://lists.bufferbloat.net/listinfo/cerowrt-devel</a=
><br>
&gt; <o:p></o:p></span></font></p>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'>_______________________________________________<br>
Make-wifi-fast mailing list<br>
<a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" =
target=3D"_blank">Make-wifi-fast@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" =
target=3D"_blank">https://lists.bufferbloat.net/listinfo/make-wifi-fast</=
a><o:p></o:p></span></font></p>

</blockquote>

</div>

<p class=3DMsoNormal><font size=3D3 face=3D"Times New Roman"><span =
style=3D'font-size:
12.0pt'><br>
</span></font><font size=3D2><span =
style=3D'font-size:10.0pt;background:white'>This
electronic communication and the information and any files transmitted =
with it,
or attached to it, are confidential and are intended solely for the use =
of the
individual or entity to whom it is addressed and may contain information =
that
is confidential, legally privileged, protected by privacy laws, or =
otherwise
restricted from disclosure to anyone else. If you are not the intended
recipient or the person responsible for delivering the e-mail to the =
intended
recipient, you are hereby notified that any use, copying, distributing,
dissemination, forwarding, printing, or copying of this e-mail is =
strictly
prohibited. If you received this e-mail in error, please return the =
e-mail to
the sender, delete it from your computer, and destroy any printed copy =
of it.</span></font><o:p></o:p></p>

</div>

</body>

</html>

------=_NextPart_000_063A_01D76F22.3D650200--


--===============0976234606352379166==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0976234606352379166==--


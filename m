Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CD543C8CC
	for <lists+cake@lfdr.de>; Wed, 27 Oct 2021 13:43:04 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1CBBE3CBC3;
	Wed, 27 Oct 2021 07:43:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1635334982;
	bh=RwE1mfHX9G3gHv1d1nJsarF4u+VnC05+6dz8/YKXIC4=;
	h=Date:In-reply-to:To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=PDxALzCqPGKlC2zix0SdORaExiCnbEBYbVOM74XU9cV9CwG6M2WqMSBNOv+K70aKF
	 n53eXWdCDClroZz+iU/2/kTsk1UFZQ/lJMKoHbwj9CVR69WN/sc1kAbNCa4LxTNWuC
	 dYa9l3iP2kIgPSPNPMRSv04pry+Fyx1VxsSPqw90T60dCJGYIjp53SL+dPvv6KEdBt
	 nv0O313mSPpZ7hA7jeIGWzN4B1VCiw46IfyK5qt8/ZdoV2btDqya2/3ZvjzV6qrwZb
	 NCybHiDqLq3uEkG7F2crURb/LXcZ1lGUZHcPoRORjNXW4U9zuWmvXvEJfOTM+JbxXI
	 oxeCLuvSGd4DQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from rn-mailsvcp-ppex-lapp15.apple.com
 (rn-mailsvcp-ppex-lapp15.rno.apple.com [17.179.253.34])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0031D3CB41;
 Tue, 26 Oct 2021 19:38:22 -0400 (EDT)
Received: from pps.filterd (rn-mailsvcp-ppex-lapp15.rno.apple.com [127.0.0.1])
 by rn-mailsvcp-ppex-lapp15.rno.apple.com (8.16.1.2/8.16.1.2) with
 SMTP id 19QNaohB016325; Tue, 26 Oct 2021 16:38:16 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apple.com;
 h=from : message-id :
 content-type : mime-version : subject : date : in-reply-to : cc : to :
 references; s=20180706; bh=MBESeU41Ec8hGPzc95seTwWgHoXP96QV/0kjYzxIWn8=;
 b=Z+P/ChNvTK2KO1uZsT/Qhw0Hc0ePOxt5sTs1ZORMLMKHITOAze3Tas8IanyevJ4SCbLI
 3NNDLUP03itcK0J00swgu3Kw8gSmgHxR4zNP2P7ZOXi06dWgytwiYicpSqxzoXUK97Gd
 NO24do5ZPH9wZCnrX6u/VfjNLZz78nKH8z9ZnCTxr6CnumEIoq47kuUybwqO+VSNU9G1
 mHzcG0rK7S9nZVo77+aRjtKs9iGYkNHttRibCE8egDtoTtBFjZrWBtFvKVgJGiWJejmj
 TIY37HuarmbL0soMXmL9laeLaPDjyD545Mj54OLwNonTOwWM/sUfvEuUEby43Vmz0A9W eQ== 
Received: from rn-mailsvcp-mta-lapp01.rno.apple.com
 (rn-mailsvcp-mta-lapp01.rno.apple.com [10.225.203.149])
 by rn-mailsvcp-ppex-lapp15.rno.apple.com with ESMTP id 3bx4f3fu01-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Tue, 26 Oct 2021 16:38:16 -0700
Received: from rn-mailsvcp-mmp-lapp02.rno.apple.com
 (rn-mailsvcp-mmp-lapp02.rno.apple.com [17.179.253.15])
 by rn-mailsvcp-mta-lapp01.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.12.20210903 64bit (built Sep 3
 2021)) with ESMTPS id <0R1L00WPZYZRGP70@rn-mailsvcp-mta-lapp01.rno.apple.com>; 
 Tue, 26 Oct 2021 16:38:15 -0700 (PDT)
Received: from process_milters-daemon.rn-mailsvcp-mmp-lapp02.rno.apple.com by
 rn-mailsvcp-mmp-lapp02.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.12.20210903 64bit (built Sep 3
 2021)) id <0R1L00R00YVN1100@rn-mailsvcp-mmp-lapp02.rno.apple.com>; Tue,
 26 Oct 2021 16:38:15 -0700 (PDT)
X-Va-A: 
X-Va-T-CD: 095fc62c348ed25dc0c10f0adec69295
X-Va-E-CD: e6061580a21389ade45530f31e4ff121
X-Va-R-CD: 8bbe4467100e83bb797086b9816f35d5
X-Va-CD: 0
X-Va-ID: 5f56f518-c058-4950-b7de-08656c4dcae9
X-V-A: 
X-V-T-CD: 095fc62c348ed25dc0c10f0adec69295
X-V-E-CD: e6061580a21389ade45530f31e4ff121
X-V-R-CD: 8bbe4467100e83bb797086b9816f35d5
X-V-CD: 0
X-V-ID: 70d5d5ae-7a7f-4278-ab35-bddef9ea2625
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.790
 definitions=2021-10-26_07:2021-10-26,
 2021-10-26 signatures=0
Received: from smtpclient.apple ([17.192.155.152])
 by rn-mailsvcp-mmp-lapp02.rno.apple.com
 (Oracle Communications Messaging Server 8.1.0.12.20210903 64bit (built Sep 3
 2021))
 with ESMTPSA id <0R1L00EFTYZRPH00@rn-mailsvcp-mmp-lapp02.rno.apple.com>; Tue,
 26 Oct 2021 16:38:15 -0700 (PDT)
Message-id: <6D6492CF-BD6D-45BF-BD40-FA49166F6DA4@apple.com>
MIME-version: 1.0 (Mac OS X Mail 15.0 \(3693.20.0.1.32\))
Date: Tue, 26 Oct 2021 16:38:15 -0700
In-reply-to: <CAHb6LvosV921NSpYXpzgRScuJDFNemCsUGqLfOm5NsOyt+TOVA@mail.gmail.com>
To: Bob McMahon <bob.mcmahon@broadcom.com>
References: <CAHb6LvosV921NSpYXpzgRScuJDFNemCsUGqLfOm5NsOyt+TOVA@mail.gmail.com>
X-Mailer: Apple Mail (2.3693.20.0.1.32)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.790
 definitions=2021-10-26_07:2021-10-26,
 2021-10-26 signatures=0
X-Mailman-Approved-At: Wed, 27 Oct 2021 07:43:01 -0400
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
From: Christoph Paasch via Cake <cake@lists.bufferbloat.net>
Reply-To: Christoph Paasch <cpaasch@apple.com>
Cc: Stuart Cheshire <cheshire@apple.com>, starlink@lists.bufferbloat.net,
 =?utf-8?Q?Valdis_Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Eric Dumazet <eric.dumazet@gmail.com>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, codel <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Steve Crocker <steve@shinkuro.com>,
 Vint Cerf <vint@google.com>
Content-Type: multipart/mixed; boundary="===============2022350350660225216=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============2022350350660225216==
Content-type: multipart/alternative;
 boundary="Apple-Mail=_5B6C999B-0D21-421A-A02F-0DD3D50C4B92"


--Apple-Mail=_5B6C999B-0D21-421A-A02F-0DD3D50C4B92
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Bob,

> On Oct 26, 2021, at 4:23 PM, Bob McMahon <bob.mcmahon@broadcom.com> =
wrote:
> I'm confused. I don't see any blocking nor partial writes per the =
write() at the app level with TCP_NOTSENT_LOWAT set at 4 bytes. The =
burst is 40K, the write size is 4K and the watermark is 4 bytes. There =
are ten writes per burst.

You are on Linux here, right?

AFAICS, Linux will still accept whatever fits in an skb. And that is =
likely more than 4K (with GSO on by default).

However, do you go back to select() after each write() or do you loop =
over the write() calls?


Christoph

> The S8 histograms are the times waiting on the select().  The first =
value is the bin number (multiplied by 100usec bin width) and second the =
bin count. The worst case time is at the end and is timestamped per unix =
epoch.
>=20
> The second run is over a controlled WiFi link where a 99.7% point of =
4-8ms for a WiFi TX op arbitration win is in the ballpark. The first is =
1G wired and is in the 600 usec range. (No media arbitration there.)
>=20
>  [root@localhost iperf2-code]# src/iperf -c 10.19.87.9 --trip-times -i =
1 -e --tcp-write-prefetch 4 -l 4K --burst-size=3D40K --histograms
> WARN: option of --burst-size without --burst-period defaults =
--burst-period to 1 second
> ------------------------------------------------------------
> Client connecting to 10.19.87.9, TCP port 5001 with pid 2124 (1 flows)
> Write buffer size: 4096 Byte
> Bursting: 40.0 KByte every 1.00 seconds
> TCP window size: 85.0 KByte (default)
> Event based writes (pending queue watermark at 4 bytes)
> Enabled select histograms bin-width=3D0.100 ms, bins=3D10000
> ------------------------------------------------------------
> [  1] local 10.19.87.10%eth0 port 33166 connected with 10.19.87.9 port =
5001 (MSS=3D1448) (prefetch=3D4) (trip-times) (sock=3D3) (ct=3D0.54 ms) =
on 2021-10-26 16:07:33 (PDT)
> [ ID] Interval        Transfer    Bandwidth       Write/Err  Rtry     =
Cwnd/RTT        NetPwr
> [  1] 0.00-1.00 sec  40.1 KBytes   329 Kbits/sec  11/0          0      =
 14K/5368 us  8
> [  1] 0.00-1.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:1,2:5,3:2,4:1,11:=
1 (5.00/95.00/99.7%=3D1/11/11,Outliers=3D0,obl/obu=3D0/0) (1.089 =
ms/1635289653.928360)
> [  1] 1.00-2.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0      =
 14K/569 us  72
> [  1] 1.00-2.00 sec S8-PDF: =
bin(w=3D100us):cnt(10)=3D1:2,2:1,3:4,4:1,7:1,8:1 =
(5.00/95.00/99.7%=3D1/8/8,Outliers=3D0,obl/obu=3D0/0) (0.736 =
ms/1635289654.928088)
> [  1] 2.00-3.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0      =
 14K/312 us  131
> [  1] 2.00-3.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,2:2,3:2,5:2,6:1=
 (5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.548 =
ms/1635289655.927776)
> [  1] 3.00-4.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0      =
 14K/302 us  136
> [  1] 3.00-4.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,2:2,3:5,6:1 =
(5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.584 =
ms/1635289656.927814)
> [  1] 4.00-5.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0      =
 14K/316 us  130
> [  1] 4.00-5.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,3:2,4:2,5:2,6:1=
 (5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.572 =
ms/1635289657.927810)
> [  1] 5.00-6.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0      =
 14K/253 us  162
> [  1] 5.00-6.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,2:2,3:4,5:1 =
(5.00/95.00/99.7%=3D1/5/5,Outliers=3D0,obl/obu=3D0/0) (0.417 =
ms/1635289658.927630)
> [  1] 6.00-7.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0      =
 14K/290 us  141
> [  1] 6.00-7.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,3:3,4:3,6:1 =
(5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.573 =
ms/1635289659.927771)
> [  1] 7.00-8.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0      =
 14K/359 us  114
> [  1] 7.00-8.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,3:4,4:3,6:1 =
(5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.570 =
ms/1635289660.927753)
> [  1] 8.00-9.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0      =
 14K/349 us  117
> [  1] 8.00-9.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,3:5,4:1,7:1 =
(5.00/95.00/99.7%=3D1/7/7,Outliers=3D0,obl/obu=3D0/0) (0.608 =
ms/1635289661.927843)
> [  1] 9.00-10.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0     =
  14K/347 us  118
> [  1] 9.00-10.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,2:1,3:5,8:1 =
(5.00/95.00/99.7%=3D1/8/8,Outliers=3D0,obl/obu=3D0/0) (0.725 =
ms/1635289662.927861)
> [  1] 0.00-10.01 sec   400 KBytes   327 Kbits/sec  102/0          0    =
   14K/1519 us  27
> [  1] 0.00-10.01 sec S8(f)-PDF: =
bin(w=3D100us):cnt(100)=3D1:25,2:13,3:36,4:11,5:5,6:5,7:2,8:2,11:1 =
(5.00/95.00/99.7%=3D1/7/11,Outliers=3D0,obl/obu=3D0/0) (1.089 =
ms/1635289653.928360)
>=20
> [root@localhost iperf2-code]# src/iperf -c 192.168.1.1 --trip-times -i =
1 -e --tcp-write-prefetch 4 -l 4K --burst-size=3D40K --histograms
> WARN: option of --burst-size without --burst-period defaults =
--burst-period to 1 second
> ------------------------------------------------------------
> Client connecting to 192.168.1.1, TCP port 5001 with pid 2131 (1 =
flows)
> Write buffer size: 4096 Byte
> Bursting: 40.0 KByte every 1.00 seconds
> TCP window size: 85.0 KByte (default)
> Event based writes (pending queue watermark at 4 bytes)
> Enabled select histograms bin-width=3D0.100 ms, bins=3D10000
> ------------------------------------------------------------
> [  1] local 192.168.1.4%eth1 port 45518 connected with 192.168.1.1 =
port 5001 (MSS=3D1448) (prefetch=3D4) (trip-times) (sock=3D3) (ct=3D5.48 =
ms) on 2021-10-26 16:07:56 (PDT)
> [ ID] Interval        Transfer    Bandwidth       Write/Err  Rtry     =
Cwnd/RTT        NetPwr
> [  1] 0.00-1.00 sec  40.1 KBytes   329 Kbits/sec  11/0          0      =
 14K/10339 us  4
> [  1] 0.00-1.00 sec S8-PDF: =
bin(w=3D100us):cnt(10)=3D1:1,40:1,47:1,49:2,50:3,51:1,60:1 =
(5.00/95.00/99.7%=3D1/60/60,Outliers=3D0,obl/obu=3D0/0) (5.990 =
ms/1635289676.802143)
> [  1] 1.00-2.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0      =
 14K/4853 us  8
> [  1] 1.00-2.00 sec S8-PDF: =
bin(w=3D100us):cnt(10)=3D1:2,38:1,39:1,44:1,45:1,49:1,51:1,52:1,60:1 =
(5.00/95.00/99.7%=3D1/60/60,Outliers=3D0,obl/obu=3D0/0) (5.937 =
ms/1635289677.802274)
> [  1] 2.00-3.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0      =
 14K/4991 us  8
> [  1] 2.00-3.00 sec S8-PDF: =
bin(w=3D100us):cnt(10)=3D1:2,48:1,49:2,50:2,51:1,60:1,64:1 =
(5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.307 =
ms/1635289678.794326)
> [  1] 3.00-4.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0      =
 14K/4610 us  9
> [  1] 3.00-4.00 sec S8-PDF: =
bin(w=3D100us):cnt(10)=3D1:2,49:3,50:3,56:1,64:1 =
(5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.362 =
ms/1635289679.794335)
> [  1] 4.00-5.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0      =
 14K/5028 us  8
> [  1] 4.00-5.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,49:6,59:1,64:1 =
(5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.367 =
ms/1635289680.794399)
> [  1] 5.00-6.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0      =
 14K/5113 us  8
> [  1] 5.00-6.00 sec S8-PDF: =
bin(w=3D100us):cnt(10)=3D1:2,49:3,50:2,58:1,60:1,65:1 =
(5.00/95.00/99.7%=3D1/65/65,Outliers=3D0,obl/obu=3D0/0) (6.442 =
ms/1635289681.794392)
> [  1] 6.00-7.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0      =
 14K/5054 us  8
> [  1] 6.00-7.00 sec S8-PDF: =
bin(w=3D100us):cnt(10)=3D1:2,39:1,49:3,51:1,60:2,64:1 =
(5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.374 =
ms/1635289682.794335)
> [  1] 7.00-8.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0      =
 14K/5138 us  8
> [  1] 7.00-8.00 sec S8-PDF: =
bin(w=3D100us):cnt(10)=3D1:2,39:2,40:1,49:2,50:1,60:1,64:1 =
(5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.396 =
ms/1635289683.794338)
> [  1] 8.00-9.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0      =
 14K/5329 us  8
> [  1] 8.00-9.00 sec S8-PDF: =
bin(w=3D100us):cnt(10)=3D1:2,38:1,45:2,49:1,50:3,63:1 =
(5.00/95.00/99.7%=3D1/63/63,Outliers=3D0,obl/obu=3D0/0) (6.292 =
ms/1635289684.794262)
> [  1] 9.00-10.00 sec  40.0 KBytes   328 Kbits/sec  10/0          0     =
  14K/5329 us  8
> [  1] 9.00-10.00 sec S8-PDF: =
bin(w=3D100us):cnt(10)=3D1:2,39:1,49:3,50:3,84:1 =
(5.00/95.00/99.7%=3D1/84/84,Outliers=3D0,obl/obu=3D0/0) (8.306 =
ms/1635289685.796315)
> [  1] 0.00-10.01 sec   400 KBytes   327 Kbits/sec  102/0          0    =
   14K/6331 us  6
> [  1] 0.00-10.01 sec S8(f)-PDF: =
bin(w=3D100us):cnt(100)=3D1:19,38:2,39:5,40:2,44:1,45:3,47:1,48:1,49:26,50=
:17,51:4,52:1,56:1,58:1,59:1,60:7,63:1,64:5,65:1,84:1 =
(5.00/95.00/99.7%=3D1/64/84,Outliers=3D0,obl/obu=3D0/0) (8.306 =
ms/1635289685.796315)
>=20
> Bob
>=20
> On Tue, Oct 26, 2021 at 11:45 AM Christoph Paasch <cpaasch@apple.com =
<mailto:cpaasch@apple.com>> wrote:
> Hello,
>=20
> > On Oct 25, 2021, at 9:24 PM, Eric Dumazet <eric.dumazet@gmail.com =
<mailto:eric.dumazet@gmail.com>> wrote:
> >=20
> >=20
> >=20
> > On 10/25/21 8:11 PM, Stuart Cheshire via Bloat wrote:
> >> On 21 Oct 2021, at 17:51, Bob McMahon via Make-wifi-fast =
<make-wifi-fast@lists.bufferbloat.net =
<mailto:make-wifi-fast@lists.bufferbloat.net>> wrote:
> >>=20
> >>> Hi All,
> >>>=20
> >>> Sorry for the spam. I'm trying to support a meaningful TCP message =
latency w/iperf 2 from the sender side w/o requiring e2e clock =
synchronization. I thought I'd try to use the TCP_NOTSENT_LOWAT event to =
help with this. It seems that this event goes off when the bytes are in =
flight vs have reached the destination network stack. If that's the =
case, then iperf 2 client (sender) may be able to produce the message =
latency by adding the drain time (write start to TCP_NOTSENT_LOWAT) and =
the sampled RTT.
> >>>=20
> >>> Does this seem reasonable?
> >>=20
> >> I=E2=80=99m not 100% sure what you=E2=80=99re asking, but I will =
try to help.
> >>=20
> >> When you set TCP_NOTSENT_LOWAT, the TCP implementation won=E2=80=99t =
report your endpoint as writable (e.g., via kqueue or epoll) until less =
than that threshold of data remains unsent. It won=E2=80=99t stop you =
writing more bytes if you want to, up to the socket send buffer size, =
but it won=E2=80=99t *ask* you for more data until the TCP_NOTSENT_LOWAT =
threshold is reached.
> >=20
> >=20
> > When I implemented TCP_NOTSENT_LOWAT back in 2013 [1], I made sure =
that sendmsg() would actually
> > stop feeding more bytes in TCP transmit queue if the current amount =
of unsent bytes
> > was above the threshold.
> >=20
> > So it looks like Apple implementation is different, based on your =
description ?
>=20
> Yes, TCP_NOTSENT_LOWAT only impacts the wakeup on iOS/macOS/...
>=20
> An app can still fill the send-buffer if it does a sendmsg() with a =
large buffer or does repeated calls to sendmsg().
>=20
> Fur Apple, the goal of TCP_NOTSENT_LOWAT was to allow an app to =
quickly change the data it "scheduled" to send. And thus allow the app =
to write the smallest "logical unit" it has. If that unit is 512KB =
large, the app is allowed to send that.
> For example, in case of video-streaming one may want to skip ahead in =
the video. In that case the app still needs to transmit the remaining =
parts of the previous frame anyways, before it can send the new video =
frame.
> That's the reason why the Apple implementation allows one to write =
more than just the lowat threshold.
>=20
>=20
> That being said, I do think that Linux's way allows for an easier API =
because the app does not need to be careful at how much data it sends =
after an epoll/kqueue wakeup. So, the latency-benefits will be easier to =
get.
>=20
>=20
> Christoph
>=20
>=20
>=20
> > [1] =
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=3D=
c9bee3b7fdecb0c1d070c7b54113b3bdfb9a3d36 =
<https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=
=3Dc9bee3b7fdecb0c1d070c7b54113b3bdfb9a3d36>
> >=20
> > netperf does not use epoll(), but rather a loop over sendmsg().
> >=20
> > One of the point of TCP_NOTSENT_LOWAT for Google was to be able to =
considerably increase
> > max number of bytes in transmit queues (3rd column of =
/proc/sys/net/ipv4/tcp_wmem)
> > by 10x, allowing for autotune to increase BDP for big RTT flows, =
this without
> > increasing memory needs for flows with small RTT.
> >=20
> > In other words, the TCP implementation attempts to keep BDP bytes in =
flight + TCP_NOTSENT_LOWAT bytes buffered and ready to go. The BDP of =
bytes in flight is necessary to fill the network pipe and get good =
throughput. The TCP_NOTSENT_LOWAT of bytes buffered and ready to go is =
provided to give the source software some advance notice that the TCP =
implementation will soon be looking for more bytes to send, so that the =
buffer doesn=E2=80=99t run dry, thereby lowering throughput. (The old =
SO_SNDBUF option conflates both =E2=80=9Cbytes in flight=E2=80=9D and =
=E2=80=9Cbytes buffered and ready to go=E2=80=9D into the same number.)
> >>=20
> >> If you wait for the TCP_NOTSENT_LOWAT notification, write a chunk =
of n bytes of data, and then wait for the next TCP_NOTSENT_LOWAT =
notification, that will tell you roughly how long it took n bytes to =
depart the machine. You won=E2=80=99t know why, though. The bytes could =
depart the machine in response for acks indicating that the same number =
of bytes have been accepted at the receiver. But the bytes can also =
depart the machine because CWND is growing. Of course, both of those =
things are usually happening at the same time.
> >>=20
> >> How to use TCP_NOTSENT_LOWAT is explained in this video:
> >>=20
> >> <https://developer.apple.com/videos/play/wwdc2015/719/?time=3D2199 =
<https://developer.apple.com/videos/play/wwdc2015/719/?time=3D2199>>
> >>=20
> >> Later in the same video is a two-minute demo (time offset 42:00 to =
time offset 44:00) showing a =E2=80=9Cbefore and after=E2=80=9D demo =
illustrating the dramatic difference this makes for screen sharing =
responsiveness.
> >>=20
> >> <https://developer.apple.com/videos/play/wwdc2015/719/?time=3D2520 =
<https://developer.apple.com/videos/play/wwdc2015/719/?time=3D2520>>
> >>=20
> >> Stuart Cheshire
> >> _______________________________________________
> >> Bloat mailing list
> >> Bloat@lists.bufferbloat.net <mailto:Bloat@lists.bufferbloat.net>
> >> https://lists.bufferbloat.net/listinfo/bloat =
<https://lists.bufferbloat.net/listinfo/bloat>
> >>=20
> > _______________________________________________
> > Bloat mailing list
> > Bloat@lists.bufferbloat.net <mailto:Bloat@lists.bufferbloat.net>
> > https://lists.bufferbloat.net/listinfo/bloat =
<https://lists.bufferbloat.net/listinfo/bloat>
>=20
>=20
> This electronic communication and the information and any files =
transmitted with it, or attached to it, are confidential and are =
intended solely for the use of the individual or entity to whom it is =
addressed and may contain information that is confidential, legally =
privileged, protected by privacy laws, or otherwise restricted from =
disclosure to anyone else. If you are not the intended recipient or the =
person responsible for delivering the e-mail to the intended recipient, =
you are hereby notified that any use, copying, distributing, =
dissemination, forwarding, printing, or copying of this e-mail is =
strictly prohibited. If you received this e-mail in error, please return =
the e-mail to the sender, delete it from your computer, and destroy any =
printed copy of it.

--Apple-Mail=_5B6C999B-0D21-421A-A02F-0DD3D50C4B92
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><meta=
 http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8" =
class=3D""><div dir=3D"auto" class=3D""><div dir=3D"ltr" =
class=3D""></div><div dir=3D"ltr" class=3D"">Hi Bob,</div><div dir=3D"ltr"=
 class=3D""><br class=3D""><blockquote type=3D"cite" class=3D"">On Oct =
26, 2021, at 4:23 PM, Bob McMahon &lt;<a =
href=3D"mailto:bob.mcmahon@broadcom.com" =
class=3D"">bob.mcmahon@broadcom.com</a>&gt; wrote:<br =
class=3D""></blockquote></div><blockquote type=3D"cite" class=3D""><div =
dir=3D"ltr" class=3D""><div dir=3D"ltr" class=3D"">I'm confused. I don't =
see any blocking nor partial writes per the write() at the app level =
with TCP_NOTSENT_LOWAT set at 4 bytes. The burst is 40K, the write size =
is 4K and the watermark is 4 bytes. There are ten writes per burst.<br =
class=3D""></div></div></blockquote><div class=3D""><br =
class=3D""></div><div class=3D"">You are on Linux here, right?</div><div =
class=3D""><br class=3D""></div><div class=3D"">AFAICS, Linux will still =
accept whatever fits in an skb. And that is likely more than 4K (with =
GSO on by default).</div><div class=3D""><br class=3D""></div><div =
class=3D"">However, do you go back to select() after each write() or do =
you loop over the write() calls?</div><div class=3D""><br =
class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D"">Christoph</div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div dir=3D"ltr" class=3D""><div dir=3D"ltr" class=3D"">The =
S8 histograms are the times waiting on the select().&nbsp; The first =
value is the bin number (multiplied by 100usec&nbsp;bin width) and =
second the bin count. The worst case time is at the end and is =
timestamped per unix epoch.<div class=3D""><br class=3D""><div =
class=3D"">The second run is over a controlled WiFi link where a 99.7% =
point of 4-8ms for a WiFi TX op arbitration win is in the ballpark. The =
first is 1G wired and is in&nbsp;the&nbsp;600 usec range. (No =
media&nbsp;arbitration&nbsp;there.)<br class=3D""><br =
class=3D"">&nbsp;[root@localhost iperf2-code]# src/iperf -c 10.19.87.9 =
--trip-times -i 1 -e --tcp-write-prefetch 4 -l 4K --burst-size=3D40K =
--histograms<br class=3D"">WARN: option of --burst-size without =
--burst-period defaults --burst-period to 1 second<br =
class=3D"">------------------------------------------------------------<br=
 class=3D"">Client connecting to 10.19.87.9, TCP port 5001 with pid 2124 =
(1 flows)<br class=3D"">Write buffer size: 4096 Byte<br =
class=3D"">Bursting: 40.0 KByte every 1.00 seconds<br class=3D"">TCP =
window size: 85.0 KByte (default)<br class=3D"">Event based writes =
(pending queue watermark at 4 bytes)<br class=3D"">Enabled select =
histograms bin-width=3D0.100 ms, bins=3D10000<br =
class=3D"">------------------------------------------------------------<br=
 class=3D"">[ &nbsp;1] local 10.19.87.10%eth0 port 33166 connected with =
10.19.87.9 port 5001 (MSS=3D1448) (prefetch=3D4) (trip-times) (sock=3D3) =
(ct=3D0.54 ms) on 2021-10-26 16:07:33 (PDT)<br class=3D"">[ ID] Interval =
&nbsp; &nbsp; &nbsp; &nbsp;Transfer &nbsp; &nbsp;Bandwidth &nbsp; &nbsp; =
&nbsp; Write/Err &nbsp;Rtry &nbsp; &nbsp; Cwnd/RTT &nbsp; &nbsp; &nbsp; =
&nbsp;NetPwr<br class=3D"">[ &nbsp;1] 0.00-1.00 sec &nbsp;40.1 KBytes =
&nbsp; 329 Kbits/sec &nbsp;11/0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 =
&nbsp; &nbsp; &nbsp; 14K/5368 us &nbsp;8<br class=3D"">[ &nbsp;1] =
0.00-1.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:1,2:5,3:2,4:1,11:1 =
(5.00/95.00/99.7%=3D1/11/11,Outliers=3D0,obl/obu=3D0/0) (1.089 =
ms/1635289653.928360)<br class=3D"">[ &nbsp;1] 1.00-2.00 sec &nbsp;40.0 =
KBytes &nbsp; 328 Kbits/sec &nbsp;10/0 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0 &nbsp; &nbsp; &nbsp; 14K/569 us &nbsp;72<br class=3D"">[ =
&nbsp;1] 1.00-2.00 sec S8-PDF: =
bin(w=3D100us):cnt(10)=3D1:2,2:1,3:4,4:1,7:1,8:1 =
(5.00/95.00/99.7%=3D1/8/8,Outliers=3D0,obl/obu=3D0/0) (0.736 =
ms/1635289654.928088)<br class=3D"">[ &nbsp;1] 2.00-3.00 sec &nbsp;40.0 =
KBytes &nbsp; 328 Kbits/sec &nbsp;10/0 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0 &nbsp; &nbsp; &nbsp; 14K/312 us &nbsp;131<br class=3D"">[ =
&nbsp;1] 2.00-3.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,2:2,3:2,5:2,6:=
1 (5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.548 =
ms/1635289655.927776)<br class=3D"">[ &nbsp;1] 3.00-4.00 sec &nbsp;40.0 =
KBytes &nbsp; 328 Kbits/sec &nbsp;10/0 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0 &nbsp; &nbsp; &nbsp; 14K/302 us &nbsp;136<br class=3D"">[ =
&nbsp;1] 3.00-4.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,2:2,3:5,6:1 =
(5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.584 =
ms/1635289656.927814)<br class=3D"">[ &nbsp;1] 4.00-5.00 sec &nbsp;40.0 =
KBytes &nbsp; 328 Kbits/sec &nbsp;10/0 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0 &nbsp; &nbsp; &nbsp; 14K/316 us &nbsp;130<br class=3D"">[ =
&nbsp;1] 4.00-5.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,3:2,4:2,5:2,6:=
1 (5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.572 =
ms/1635289657.927810)<br class=3D"">[ &nbsp;1] 5.00-6.00 sec &nbsp;40.0 =
KBytes &nbsp; 328 Kbits/sec &nbsp;10/0 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0 &nbsp; &nbsp; &nbsp; 14K/253 us &nbsp;162<br class=3D"">[ =
&nbsp;1] 5.00-6.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,2:2,3:4,5:1 =
(5.00/95.00/99.7%=3D1/5/5,Outliers=3D0,obl/obu=3D0/0) (0.417 =
ms/1635289658.927630)<br class=3D"">[ &nbsp;1] 6.00-7.00 sec &nbsp;40.0 =
KBytes &nbsp; 328 Kbits/sec &nbsp;10/0 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0 &nbsp; &nbsp; &nbsp; 14K/290 us &nbsp;141<br class=3D"">[ =
&nbsp;1] 6.00-7.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,3:3,4:3,6:1 =
(5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.573 =
ms/1635289659.927771)<br class=3D"">[ &nbsp;1] 7.00-8.00 sec &nbsp;40.0 =
KBytes &nbsp; 328 Kbits/sec &nbsp;10/0 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0 &nbsp; &nbsp; &nbsp; 14K/359 us &nbsp;114<br class=3D"">[ =
&nbsp;1] 7.00-8.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,3:4,4:3,6:1 =
(5.00/95.00/99.7%=3D1/6/6,Outliers=3D0,obl/obu=3D0/0) (0.570 =
ms/1635289660.927753)<br class=3D"">[ &nbsp;1] 8.00-9.00 sec &nbsp;40.0 =
KBytes &nbsp; 328 Kbits/sec &nbsp;10/0 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0 &nbsp; &nbsp; &nbsp; 14K/349 us &nbsp;117<br class=3D"">[ =
&nbsp;1] 8.00-9.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,3:5,4:1,7:1 =
(5.00/95.00/99.7%=3D1/7/7,Outliers=3D0,obl/obu=3D0/0) (0.608 =
ms/1635289661.927843)<br class=3D"">[ &nbsp;1] 9.00-10.00 sec &nbsp;40.0 =
KBytes &nbsp; 328 Kbits/sec &nbsp;10/0 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0 &nbsp; &nbsp; &nbsp; 14K/347 us &nbsp;118<br class=3D"">[ =
&nbsp;1] 9.00-10.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:3,2:1,3:5,8:1 =
(5.00/95.00/99.7%=3D1/8/8,Outliers=3D0,obl/obu=3D0/0) (0.725 =
ms/1635289662.927861)<br class=3D"">[ &nbsp;1] 0.00-10.01 sec &nbsp; 400 =
KBytes &nbsp; 327 Kbits/sec &nbsp;102/0 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0 &nbsp; &nbsp; &nbsp; 14K/1519 us &nbsp;27<br class=3D"">[ =
&nbsp;1] 0.00-10.01 sec S8(f)-PDF: =
bin(w=3D100us):cnt(100)=3D1:25,2:13,3:36,4:11,5:5,6:5,7:2,8:2,11:1 =
(5.00/95.00/99.7%=3D1/7/11,Outliers=3D0,obl/obu=3D0/0) (1.089 =
ms/1635289653.928360)<br class=3D""><br class=3D"">[root@localhost =
iperf2-code]# src/iperf -c 192.168.1.1 --trip-times -i 1 -e =
--tcp-write-prefetch 4 -l 4K --burst-size=3D40K --histograms<br =
class=3D"">WARN: option of --burst-size without --burst-period defaults =
--burst-period to 1 second<br =
class=3D"">------------------------------------------------------------<br=
 class=3D"">Client connecting to 192.168.1.1, TCP port 5001 with pid =
2131 (1 flows)<br class=3D"">Write buffer size: 4096 Byte<br =
class=3D"">Bursting: 40.0 KByte every 1.00 seconds<br class=3D"">TCP =
window size: 85.0 KByte (default)<br class=3D"">Event based writes =
(pending queue watermark at 4 bytes)<br class=3D"">Enabled select =
histograms bin-width=3D0.100 ms, bins=3D10000<br =
class=3D"">------------------------------------------------------------<br=
 class=3D"">[ &nbsp;1] local 192.168.1.4%eth1 port 45518 connected with =
192.168.1.1 port 5001 (MSS=3D1448) (prefetch=3D4) (trip-times) (sock=3D3) =
(ct=3D5.48 ms) on 2021-10-26 16:07:56 (PDT)<br class=3D"">[ ID] Interval =
&nbsp; &nbsp; &nbsp; &nbsp;Transfer &nbsp; &nbsp;Bandwidth &nbsp; &nbsp; =
&nbsp; Write/Err &nbsp;Rtry &nbsp; &nbsp; Cwnd/RTT &nbsp; &nbsp; &nbsp; =
&nbsp;NetPwr<br class=3D"">[ &nbsp;1] 0.00-1.00 sec &nbsp;40.1 KBytes =
&nbsp; 329 Kbits/sec &nbsp;11/0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 =
&nbsp; &nbsp; &nbsp; 14K/10339 us &nbsp;4<br class=3D"">[ &nbsp;1] =
0.00-1.00 sec S8-PDF: =
bin(w=3D100us):cnt(10)=3D1:1,40:1,47:1,49:2,50:3,51:1,60:1 =
(5.00/95.00/99.7%=3D1/60/60,Outliers=3D0,obl/obu=3D0/0) (5.990 =
ms/1635289676.802143)<br class=3D"">[ &nbsp;1] 1.00-2.00 sec &nbsp;40.0 =
KBytes &nbsp; 328 Kbits/sec &nbsp;10/0 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0 &nbsp; &nbsp; &nbsp; 14K/4853 us &nbsp;8<br class=3D"">[ =
&nbsp;1] 1.00-2.00 sec S8-PDF: =
bin(w=3D100us):cnt(10)=3D1:2,38:1,39:1,44:1,45:1,49:1,51:1,52:1,60:1 =
(5.00/95.00/99.7%=3D1/60/60,Outliers=3D0,obl/obu=3D0/0) (5.937 =
ms/1635289677.802274)<br class=3D"">[ &nbsp;1] 2.00-3.00 sec &nbsp;40.0 =
KBytes &nbsp; 328 Kbits/sec &nbsp;10/0 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0 &nbsp; &nbsp; &nbsp; 14K/4991 us &nbsp;8<br class=3D"">[ =
&nbsp;1] 2.00-3.00 sec S8-PDF: =
bin(w=3D100us):cnt(10)=3D1:2,48:1,49:2,50:2,51:1,60:1,64:1 =
(5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.307 =
ms/1635289678.794326)<br class=3D"">[ &nbsp;1] 3.00-4.00 sec &nbsp;40.0 =
KBytes &nbsp; 328 Kbits/sec &nbsp;10/0 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0 &nbsp; &nbsp; &nbsp; 14K/4610 us &nbsp;9<br class=3D"">[ =
&nbsp;1] 3.00-4.00 sec S8-PDF: =
bin(w=3D100us):cnt(10)=3D1:2,49:3,50:3,56:1,64:1 =
(5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.362 =
ms/1635289679.794335)<br class=3D"">[ &nbsp;1] 4.00-5.00 sec &nbsp;40.0 =
KBytes &nbsp; 328 Kbits/sec &nbsp;10/0 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0 &nbsp; &nbsp; &nbsp; 14K/5028 us &nbsp;8<br class=3D"">[ =
&nbsp;1] 4.00-5.00 sec S8-PDF: bin(w=3D100us):cnt(10)=3D1:2,49:6,59:1,64:1=
 (5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.367 =
ms/1635289680.794399)<br class=3D"">[ &nbsp;1] 5.00-6.00 sec &nbsp;40.0 =
KBytes &nbsp; 328 Kbits/sec &nbsp;10/0 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0 &nbsp; &nbsp; &nbsp; 14K/5113 us &nbsp;8<br class=3D"">[ =
&nbsp;1] 5.00-6.00 sec S8-PDF: =
bin(w=3D100us):cnt(10)=3D1:2,49:3,50:2,58:1,60:1,65:1 =
(5.00/95.00/99.7%=3D1/65/65,Outliers=3D0,obl/obu=3D0/0) (6.442 =
ms/1635289681.794392)<br class=3D"">[ &nbsp;1] 6.00-7.00 sec &nbsp;40.0 =
KBytes &nbsp; 328 Kbits/sec &nbsp;10/0 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0 &nbsp; &nbsp; &nbsp; 14K/5054 us &nbsp;8<br class=3D"">[ =
&nbsp;1] 6.00-7.00 sec S8-PDF: =
bin(w=3D100us):cnt(10)=3D1:2,39:1,49:3,51:1,60:2,64:1 =
(5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.374 =
ms/1635289682.794335)<br class=3D"">[ &nbsp;1] 7.00-8.00 sec &nbsp;40.0 =
KBytes &nbsp; 328 Kbits/sec &nbsp;10/0 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0 &nbsp; &nbsp; &nbsp; 14K/5138 us &nbsp;8<br class=3D"">[ =
&nbsp;1] 7.00-8.00 sec S8-PDF: =
bin(w=3D100us):cnt(10)=3D1:2,39:2,40:1,49:2,50:1,60:1,64:1 =
(5.00/95.00/99.7%=3D1/64/64,Outliers=3D0,obl/obu=3D0/0) (6.396 =
ms/1635289683.794338)<br class=3D"">[ &nbsp;1] 8.00-9.00 sec &nbsp;40.0 =
KBytes &nbsp; 328 Kbits/sec &nbsp;10/0 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0 &nbsp; &nbsp; &nbsp; 14K/5329 us &nbsp;8<br class=3D"">[ =
&nbsp;1] 8.00-9.00 sec S8-PDF: =
bin(w=3D100us):cnt(10)=3D1:2,38:1,45:2,49:1,50:3,63:1 =
(5.00/95.00/99.7%=3D1/63/63,Outliers=3D0,obl/obu=3D0/0) (6.292 =
ms/1635289684.794262)<br class=3D"">[ &nbsp;1] 9.00-10.00 sec &nbsp;40.0 =
KBytes &nbsp; 328 Kbits/sec &nbsp;10/0 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0 &nbsp; &nbsp; &nbsp; 14K/5329 us &nbsp;8<br class=3D"">[ =
&nbsp;1] 9.00-10.00 sec S8-PDF: =
bin(w=3D100us):cnt(10)=3D1:2,39:1,49:3,50:3,84:1 =
(5.00/95.00/99.7%=3D1/84/84,Outliers=3D0,obl/obu=3D0/0) (8.306 =
ms/1635289685.796315)<br class=3D"">[ &nbsp;1] 0.00-10.01 sec &nbsp; 400 =
KBytes &nbsp; 327 Kbits/sec &nbsp;102/0 &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;0 &nbsp; &nbsp; &nbsp; 14K/6331 us &nbsp;6<br class=3D"">[ =
&nbsp;1] 0.00-10.01 sec S8(f)-PDF: =
bin(w=3D100us):cnt(100)=3D1:19,38:2,39:5,40:2,44:1,45:3,47:1,48:1,49:26,50=
:17,51:4,52:1,56:1,58:1,59:1,60:7,63:1,64:5,65:1,84:1 =
(5.00/95.00/99.7%=3D1/64/84,Outliers=3D0,obl/obu=3D0/0) (8.306 =
ms/1635289685.796315)<br class=3D""><br =
class=3D"">Bob</div></div></div><br class=3D""><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct =
26, 2021 at 11:45 AM Christoph Paasch &lt;<a =
href=3D"mailto:cpaasch@apple.com" class=3D"">cpaasch@apple.com</a>&gt; =
wrote:<br class=3D""></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">Hello,<br class=3D"">
<br class=3D"">
&gt; On Oct 25, 2021, at 9:24 PM, Eric Dumazet &lt;<a =
href=3D"mailto:eric.dumazet@gmail.com" target=3D"_blank" =
class=3D"">eric.dumazet@gmail.com</a>&gt; wrote:<br class=3D"">
&gt; <br class=3D"">
&gt; <br class=3D"">
&gt; <br class=3D"">
&gt; On 10/25/21 8:11 PM, Stuart Cheshire via Bloat wrote:<br class=3D"">
&gt;&gt; On 21 Oct 2021, at 17:51, Bob McMahon via Make-wifi-fast &lt;<a =
href=3D"mailto:make-wifi-fast@lists.bufferbloat.net" target=3D"_blank" =
class=3D"">make-wifi-fast@lists.bufferbloat.net</a>&gt; wrote:<br =
class=3D"">
&gt;&gt; <br class=3D"">
&gt;&gt;&gt; Hi All,<br class=3D"">
&gt;&gt;&gt; <br class=3D"">
&gt;&gt;&gt; Sorry for the spam. I'm trying to support a meaningful TCP =
message latency w/iperf 2 from the sender side w/o requiring e2e clock =
synchronization. I thought I'd try to use the TCP_NOTSENT_LOWAT event to =
help with this. It seems that this event goes off when the bytes are in =
flight vs have reached the destination network stack. If that's the =
case, then iperf 2 client (sender) may be able to produce the message =
latency by adding the drain time (write start to TCP_NOTSENT_LOWAT) and =
the sampled RTT.<br class=3D"">
&gt;&gt;&gt; <br class=3D"">
&gt;&gt;&gt; Does this seem reasonable?<br class=3D"">
&gt;&gt; <br class=3D"">
&gt;&gt; I=E2=80=99m not 100% sure what you=E2=80=99re asking, but I =
will try to help.<br class=3D"">
&gt;&gt; <br class=3D"">
&gt;&gt; When you set TCP_NOTSENT_LOWAT, the TCP implementation won=E2=80=99=
t report your endpoint as writable (e.g., via kqueue or epoll) until =
less than that threshold of data remains unsent. It won=E2=80=99t stop =
you writing more bytes if you want to, up to the socket send buffer =
size, but it won=E2=80=99t *ask* you for more data until the =
TCP_NOTSENT_LOWAT threshold is reached.<br class=3D"">
&gt; <br class=3D"">
&gt; <br class=3D"">
&gt; When I implemented TCP_NOTSENT_LOWAT back in 2013 [1], I made sure =
that sendmsg() would actually<br class=3D"">
&gt; stop feeding more bytes in TCP transmit queue if the current amount =
of unsent bytes<br class=3D"">
&gt; was above the threshold.<br class=3D"">
&gt; <br class=3D"">
&gt; So it looks like Apple implementation is different, based on your =
description ?<br class=3D"">
<br class=3D"">
Yes, TCP_NOTSENT_LOWAT only impacts the wakeup on iOS/macOS/...<br =
class=3D"">
<br class=3D"">
An app can still fill the send-buffer if it does a sendmsg() with a =
large buffer or does repeated calls to sendmsg().<br class=3D"">
<br class=3D"">
Fur Apple, the goal of TCP_NOTSENT_LOWAT was to allow an app to quickly =
change the data it "scheduled" to send. And thus allow the app to write =
the smallest "logical unit" it has. If that unit is 512KB large, the app =
is allowed to send that.<br class=3D"">
For example, in case of video-streaming one may want to skip ahead in =
the video. In that case the app still needs to transmit the remaining =
parts of the previous frame anyways, before it can send the new video =
frame.<br class=3D"">
That's the reason why the Apple implementation allows one to write more =
than just the lowat threshold.<br class=3D"">
<br class=3D"">
<br class=3D"">
That being said, I do think that Linux's way allows for an easier API =
because the app does not need to be careful at how much data it sends =
after an epoll/kqueue wakeup. So, the latency-benefits will be easier to =
get.<br class=3D"">
<br class=3D"">
<br class=3D"">
Christoph<br class=3D"">
<br class=3D"">
<br class=3D"">
<br class=3D"">
&gt; [1] <a =
href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/com=
mit/?id=3Dc9bee3b7fdecb0c1d070c7b54113b3bdfb9a3d36" rel=3D"noreferrer" =
target=3D"_blank" =
class=3D"">https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/=
commit/?id=3Dc9bee3b7fdecb0c1d070c7b54113b3bdfb9a3d36</a><br class=3D"">
&gt; <br class=3D"">
&gt; netperf does not use epoll(), but rather a loop over sendmsg().<br =
class=3D"">
&gt; <br class=3D"">
&gt; One of the point of TCP_NOTSENT_LOWAT for Google was to be able to =
considerably increase<br class=3D"">
&gt; max number of bytes in transmit queues (3rd column of =
/proc/sys/net/ipv4/tcp_wmem)<br class=3D"">
&gt; by 10x, allowing for autotune to increase BDP for big RTT flows, =
this without<br class=3D"">
&gt; increasing memory needs for flows with small RTT.<br class=3D"">
&gt; <br class=3D"">
&gt; In other words, the TCP implementation attempts to keep BDP bytes =
in flight + TCP_NOTSENT_LOWAT bytes buffered and ready to go. The BDP of =
bytes in flight is necessary to fill the network pipe and get good =
throughput. The TCP_NOTSENT_LOWAT of bytes buffered and ready to go is =
provided to give the source software some advance notice that the TCP =
implementation will soon be looking for more bytes to send, so that the =
buffer doesn=E2=80=99t run dry, thereby lowering throughput. (The old =
SO_SNDBUF option conflates both =E2=80=9Cbytes in flight=E2=80=9D and =
=E2=80=9Cbytes buffered and ready to go=E2=80=9D into the same =
number.)<br class=3D"">
&gt;&gt; <br class=3D"">
&gt;&gt; If you wait for the TCP_NOTSENT_LOWAT notification, write a =
chunk of n bytes of data, and then wait for the next TCP_NOTSENT_LOWAT =
notification, that will tell you roughly how long it took n bytes to =
depart the machine. You won=E2=80=99t know why, though. The bytes could =
depart the machine in response for acks indicating that the same number =
of bytes have been accepted at the receiver. But the bytes can also =
depart the machine because CWND is growing. Of course, both of those =
things are usually happening at the same time.<br class=3D"">
&gt;&gt; <br class=3D"">
&gt;&gt; How to use TCP_NOTSENT_LOWAT is explained in this video:<br =
class=3D"">
&gt;&gt; <br class=3D"">
&gt;&gt; &lt;<a =
href=3D"https://developer.apple.com/videos/play/wwdc2015/719/?time=3D2199"=
 rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://developer.apple.com/videos/play/wwdc2015/719/?time=3D21=
99</a>&gt;<br class=3D"">
&gt;&gt; <br class=3D"">
&gt;&gt; Later in the same video is a two-minute demo (time offset 42:00 =
to time offset 44:00) showing a =E2=80=9Cbefore and after=E2=80=9D demo =
illustrating the dramatic difference this makes for screen sharing =
responsiveness.<br class=3D"">
&gt;&gt; <br class=3D"">
&gt;&gt; &lt;<a =
href=3D"https://developer.apple.com/videos/play/wwdc2015/719/?time=3D2520"=
 rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://developer.apple.com/videos/play/wwdc2015/719/?time=3D25=
20</a>&gt;<br class=3D"">
&gt;&gt; <br class=3D"">
&gt;&gt; Stuart Cheshire<br class=3D"">
&gt;&gt; _______________________________________________<br class=3D"">
&gt;&gt; Bloat mailing list<br class=3D"">
&gt;&gt; <a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank" =
class=3D"">Bloat@lists.bufferbloat.net</a><br class=3D"">
&gt;&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/bloat" =
rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://lists.bufferbloat.net/listinfo/bloat</a><br class=3D"">=

&gt;&gt; <br class=3D"">
&gt; _______________________________________________<br class=3D"">
&gt; Bloat mailing list<br class=3D"">
&gt; <a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank" =
class=3D"">Bloat@lists.bufferbloat.net</a><br class=3D"">
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/bloat" =
rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://lists.bufferbloat.net/listinfo/bloat</a><br class=3D"">=

<br class=3D"">
</blockquote></div>

<br class=3D"">
<span style=3D"background-color:rgb(255,255,255)" class=3D""><font =
size=3D"2" class=3D"">This electronic communication and the information =
and any files transmitted with it, or attached to it, are confidential =
and are intended solely for the use of the individual or entity to whom =
it is addressed and may contain information that is confidential, =
legally privileged, protected by privacy laws, or otherwise restricted =
from disclosure to anyone else. If you are not the intended recipient or =
the person responsible for delivering the e-mail to the intended =
recipient, you are hereby notified that any use, copying, distributing, =
dissemination, forwarding, printing, or copying of this e-mail is =
strictly prohibited. If you received this e-mail in error, please return =
the e-mail to the sender, delete it from your computer, and destroy any =
printed copy of it.</font></span></div></blockquote></div></body></html>=

--Apple-Mail=_5B6C999B-0D21-421A-A02F-0DD3D50C4B92--

--===============2022350350660225216==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2022350350660225216==--

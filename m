Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FACB73CC6C
	for <lists+cake@lfdr.de>; Sat, 24 Jun 2023 20:42:03 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8A1543CB44;
	Sat, 24 Jun 2023 14:41:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1687632114;
	bh=xDHwRbEQ1wVt8AwbDOrRHhb+cXZq0QPH3BXlVo5Dknw=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:Cc:From;
	b=Mr/NzZITrVLKqib8H9122Jo1E3qNU3i+QsbgDZ+rdkj6qY3xoGYVFTvsA6NmGHVHk
	 xSMc0oVs+iV+YgsW56Wg6kUbLB82VHdxgrT8hwuM8MGidnRkip2iuJo5TAT6jRynUJ
	 XLQ2jWyENVoiLDUZY4+445cjcwLQB0fDlIZ7Vfvxn3zgEn7k7+yqSVaHIkTHld6jOY
	 9aSnO3CGzrd3dnneovvkMQt7pMQCuGIrxHETmLcxBDti1pzOscyEk1hObbNfSFNN3x
	 zNTzdxF0KsHRz3ySI9Inqkb2A9cNY+eMuT+XGlAQ3S3EIB9coDMa3w67JMj7hTvF/+
	 an4OlPhTfVGjA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp69.iad3a.emailsrvr.com (smtp69.iad3a.emailsrvr.com
 [173.203.187.69])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D5B963B29D
 for <cake@lists.bufferbloat.net>; Sat, 24 Jun 2023 14:41:52 -0400 (EDT)
Received: from app34.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp9.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 1BED4142A;
 Sat, 24 Jun 2023 14:41:52 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app34.wa-webapps.iad3a (Postfix) with ESMTP id 0494A620E0;
 Sat, 24 Jun 2023 14:41:52 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Sat, 24 Jun 2023 14:41:52 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Sat, 24 Jun 2023 14:41:52 -0400 (EDT)
To: "Cake  List" <cake@lists.bufferbloat.net>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
X-Client-IP: 209.6.168.128
Message-ID: <1687632112.01524513@apps.rackspace.com>
X-Mailer: webmail/19.0.24-RC
X-Classification-ID: e3813393-869b-4ab8-b1b9-8d2e1a06f775-1-1
Subject: [Cake] Two questions re high speed congestion management and
	datagram protocols
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
From: "David P. Reed via Cake" <cake@lists.bufferbloat.net>
Reply-To: "David P. Reed" <dpreed@deepplum.com>
Cc: bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============6505466416770049142=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6505466416770049142==
Content-Type: multipart/alternative;boundary="----=_20230624144152000000_85866"

------=_20230624144152000000_85866
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AI was recently looking at congestion control algorithms - endpoint-based=
 ones - that would deal with very low level, very low latency requirements =
in datacenters that use high speed switch fabrics. (note: congestion contro=
l in such datacenters is a very, very real issue, especially since some lay=
er 2 switches are overbuffered by a huge factor, so they don't signal conge=
stion while building very long queues at 40-400 Gb/sec)=0A =0AI came across=
 this work from MIT CSAIL [ https://ccp-project.github.io/ccp-guide/ ]( htt=
ps://ccp-project.github.io/ccp-guide/ )=0A =0AI also was looking back to DC=
CP as a useful way to get a UDP that handled congestion without engaging th=
e higher layers, and preserving the other flexibility of UDP.=0A =0AAnyone =
here have any experience with looking at the performance of these, especial=
ly w.r.t. Cake, which operates at the IP layer and thus takes direct advant=
age of IP congestion signalling? Does libreqos look like it might help?=0A =
=0A[as the guy most associated with the creation of UDP, this remains an ar=
ea of great interest personally, and is also presumably of relevance to QUI=
C... I don't know if either of these things are supported in systems other =
than Linux, but in server datacenters and my home lab, Linux networking is =
all that matters]=0A =0A- David
------=_20230624144152000000_85866
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">I was recently looking=
 at congestion control algorithms - endpoint-based ones - that would deal w=
ith very low level, very low latency requirements in datacenters that use h=
igh speed switch fabrics. (note: congestion control in such datacenters is =
a very, very real issue, especially since some layer 2 switches are overbuf=
fered by a huge factor, so they don't signal congestion while building very=
 long queues at 40-400 Gb/sec)</p>=0A<p style=3D"margin:0;padding:0;font-fa=
mily: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p s=
tyle=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wr=
ap: break-word;">I came across this work from MIT CSAIL&nbsp;<a href=3D"htt=
ps://ccp-project.github.io/ccp-guide/">https://ccp-project.github.io/ccp-gu=
ide/</a></p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size=
: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;paddi=
ng:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">I als=
o was looking back to DCCP as a useful way to get a UDP that handled conges=
tion without engaging the higher layers, and preserving the other flexibili=
ty of UDP.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-si=
ze: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;pad=
ding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">Any=
one here have any experience with looking at the performance of these, espe=
cially w.r.t. Cake, which operates at the IP layer and thus takes direct ad=
vantage of IP congestion signalling? Does libreqos look like it might help?=
</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;fon=
t-family: arial; font-size: 10pt; overflow-wrap: break-word;">[as the guy m=
ost associated with the creation of UDP, this remains an area of great inte=
rest personally, and is also presumably of relevance to QUIC... I don't kno=
w if either of these things are supported in systems other than Linux, but =
in server datacenters and my home lab, Linux networking is all that matters=
]</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt;=
 overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;fo=
nt-family: arial; font-size: 10pt; overflow-wrap: break-word;">- David</p><=
/font>
------=_20230624144152000000_85866--


--===============6505466416770049142==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6505466416770049142==--


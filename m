Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFB6324101
	for <lists+cake@lfdr.de>; Wed, 24 Feb 2021 17:04:48 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5AA203CB46;
	Wed, 24 Feb 2021 11:04:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614182687;
	bh=AfuCZ4wUupG42wNUlvNadfMgPvO5pZIqFrZ1Ak6EX6E=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bUptC2xPu9qX5XPk1Rb1Ge3MTUZgxhmrXNvFierU07AMbLta+yGgA3E+53cIj+xBm
	 yPDeNqG+GymX3k14APgcYJ+z+nipjijBR+/7qkYOa0rzA3Bc0/wN6RpBhQg3P1phml
	 T7Dn459TxHr0xSPP1gnrD/4DpUTE5wvypuoIbv/K6/bhKDMPDuxRkFpW4DezJ1icyv
	 2vI0yUPApBqRx9l5/oYu3192caU0Gyxqv/ZQGUXX0nazZG6hZBG0FJtPJAAgruBpK8
	 n0DX088XXpKnbKty5B3iNOTh/tTNi+v+UXHOI3eVwVOEULFyIq82WtTAuoMwQqpim+
	 fFWuN6Wingbhg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from tn-mailgw-03.telenor.no (tn-mailgw-03.telenor.no [153.110.76.6])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4C0C03B29D;
 Wed, 24 Feb 2021 10:19:24 -0500 (EST)
IronPort-SDR: wpYy88L/NHWLVqJL3ZjmuoDTyubhV5AB972vbBPZQdObvQZXN7TP5wtTpGZpbLQM3zaQ2hkn2n
 AxClJDeBxupbXNysG1kSOUaAhvDwScNN429dXS2tz9vxij/R2Bgq0gjUNjZ2PVyMFepHZO4YcS
 3qvpvz62BLfoGW/D3XHJbwtrcVszlcj6ZVMv+UM9m8jcL1OYf8/FpRg6V2N89sOMhsqKjJFgcG
 rqljCXjkpVaF4IE9mCXA7XIccZCDkBhET+VbQDw66sB7P1HBuf1VmYAECekOBIKWxVxTB73UwO
 oiM=
X-IronPort-AV: E=Sophos;i="5.81,203,1610409600"; d="scan'208,217";a="74633815"
Received: from tns-sko-24-207.corp.telenor.no ([10.179.59.75])
 by tn-mailgw-03.corp.telenor.no with ESMTP; 24 Feb 2021 15:19:22 +0000
Received: from TNS-SKO-24-212.corp.telenor.no (10.179.59.80) by
 TNS-SKO-24-207.corp.telenor.no (10.179.59.75) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Wed, 24 Feb 2021 16:19:22 +0100
Received: from TNS-SKO-24-200.corp.telenor.no (10.179.59.68) by
 TNS-SKO-24-212.corp.telenor.no (10.179.59.80) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Wed, 24 Feb 2021 16:19:20 +0100
Received: from outlook.telenor.no (10.179.127.60) by
 TNS-SKO-24-200.corp.telenor.no (10.179.59.68) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2 via Frontend Transport; Wed, 24 Feb 2021 16:19:19 +0100
Received: from pwpvn2209ex001.nxvp.net (10.149.139.134) by
 pwpvn2209ex002.nxvp.net (10.149.139.135) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2044.4; Wed, 24 Feb 2021 16:19:19 +0100
Received: from pwpvn2209ex001.nxvp.net ([10.149.139.134]) by
 pwpvn2209ex001.nxvp.net ([10.149.139.134]) with mapi id 15.01.2044.004; Wed,
 24 Feb 2021 16:19:19 +0100
From: Taraldsen Erik <erik.taraldsen@telenor.no>
To: Nils Andreas Svee <me@lochnair.net>, Dave Taht <dave.taht@gmail.com>,
 bloat <bloat@lists.bufferbloat.net>, cerowrt-devel
 <cerowrt-devel@lists.bufferbloat.net>, Make-Wifi-fast
 <make-wifi-fast@lists.bufferbloat.net>,
 =?iso-8859-1?Q?Toke_H=F8iland-J=F8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Thread-Topic: [Bloat] [Cake] Fwd: [Galene] Dave on bufferbloat and jitter at
 8pm CET	Tuesday 23
Thread-Index: AQHXCitBLzSYtS1un0S0VDOTLeEdmapnZz40
Date: Wed, 24 Feb 2021 15:19:19 +0000
Message-ID: <2f30c201fce345658df9f2a5090745cf@telenor.no>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>,
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
In-Reply-To: <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.149.139.228]
x-tm-snts-smtp: BF8B306D66086E099C984ED2DB4BD74475472D4B22579DD6499703C19F6648B32000:8
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 24 Feb 2021 11:04:45 -0500
Subject: Re: [Cake] [Bloat] Fwd: [Galene] Dave on bufferbloat and jitter at
 8pm CET	Tuesday 23
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
Content-Type: multipart/mixed; boundary="===============3431322415800997962=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3431322415800997962==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_2f30c201fce345658df9f2a5090745cftelenorno_"

--_000_2f30c201fce345658df9f2a5090745cftelenorno_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Disclamer: I'm working on the Fixed Wireless products for Telenor (Zyxel NR=
7101 outdoor wall mounted unit).  Not the Mobile Broadband products.  We ar=
e working with Zyxel and Qualcom to try and implement an upstream queue whi=
ch adapts to available radio resources. To much NDA so can't really disclos=
e anything useful.  Lets just say we are aware of the issues and are active=
ly working to try and improve the situation - but don't hold your breath fo=
r a sollution.




What sort of HW are you running your LTE on?


Do you have a subscription with rate limitations?  The PGW (router which en=
forces the limit) is a lot more latency friendly than if you are radio limi=
ted.  So it may be beneficial to have a "slow" subscription rather than "fr=
ee speed" then it comes to latency.  Slow meaning lower subscrption rate th=
an radio rate.


Also would be interesting to see separate tests for upstream and downstream=
, as the issues and implementations are different in each direction.




-Erik



________________________________
Fra: Bloat <bloat-bounces@lists.bufferbloat.net> p=E5 vegne av Nils Andreas=
 Svee <me@lochnair.net>
Sendt: tirsdag 23. februar 2021 22.30.33
Til: Dave Taht; bloat; cerowrt-devel; Make-Wifi-fast; Toke H=F8iland-J=F8rg=
ensen via Cake
Emne: Re: [Bloat] [Cake] Fwd: [Galene] Dave on bufferbloat and jitter at 8p=
m CET Tuesday 23

Thanks for the talk Dave and it was nice meeting you all!

Never really did much in the way of Flent tests after moving from ADSL to T=
elenor's "wireless broadband" aka. 4G. So I ran some after leaving the meet=
ing, with CAKE on or off, and let me tell you - it's terrifying, 4G sucks i=
ndeed., not as bad as DSL without SQM mind, but still

Avg. latency without SQM at some points close to 800 ms or above. Had to sa=
crifice a lot of bandwidth to get it to sane levels when doing RRUL tests.

Dumped all the files over here: https://dl.lochnair.net/Bufferbloat/Tests/
Oh btw I promise I'll try to not break things when you need to access somet=
hing on that box again Dave...

Best Regards
Nils
_______________________________________________
Bloat mailing list
Bloat@lists.bufferbloat.net
https://lists.bufferbloat.net/listinfo/bloat

--_000_2f30c201fce345658df9f2a5090745cftelenorno_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p></p>
<p>Disclamer: I'm working on the Fixed Wireless products for Telenor (Zyxel=
 NR7101 outdoor wall mounted unit).&nbsp; Not the Mobile Broadband products=
.&nbsp; We are working with Zyxel and Qualcom to try and implement an upstr=
eam queue which adapts to available radio
 resources. To much NDA so can't really disclose anything useful.&nbsp; Let=
s just say we are aware of the issues and are actively working to try and i=
mprove the situation - but don't hold your breath for a sollution.&nbsp;&nb=
sp;</p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<p></p>
<p>What sort of HW are you running your LTE on?</p>
<p><br>
</p>
<p>Do you have a subscription with rate limitations?&nbsp; The PGW (router =
which enforces the limit) is a lot more latency friendly than if you are ra=
dio limited.&nbsp; So it may be beneficial to have a &quot;slow&quot; subsc=
ription rather than &quot;free speed&quot; then it comes to latency.&nbsp;
 Slow meaning lower subscrption rate than radio rate.</p>
<p><br>
</p>
<p>Also would be interesting to see separate tests for upstream and downstr=
eam, as the issues and implementations are different in each direction.</p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<p>-Erik <br>
</p>
<br>
<p><br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>Fra:</b> Bloat &lt;bloat-boun=
ces@lists.bufferbloat.net&gt; p=E5 vegne av Nils Andreas Svee &lt;me@lochna=
ir.net&gt;<br>
<b>Sendt:</b> tirsdag 23. februar 2021 22.30.33<br>
<b>Til:</b> Dave Taht; bloat; cerowrt-devel; Make-Wifi-fast; Toke H=F8iland=
-J=F8rgensen via Cake<br>
<b>Emne:</b> Re: [Bloat] [Cake] Fwd: [Galene] Dave on bufferbloat and jitte=
r at 8pm CET Tuesday 23</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">Thanks for the talk Dave and it was nice meeting y=
ou all!<br>
<br>
Never really did much in the way of Flent tests after moving from ADSL to T=
elenor's &quot;wireless broadband&quot; aka. 4G. So I ran some after leavin=
g the meeting, with CAKE on or off, and let me tell you - it's terrifying, =
4G sucks indeed., not as bad as DSL without
 SQM mind, but still<br>
<br>
Avg. latency without SQM at some points close to 800 ms or above. Had to sa=
crifice a lot of bandwidth to get it to sane levels when doing RRUL tests.<=
br>
<br>
Dumped all the files over here: <a href=3D"https://dl.lochnair.net/Bufferbl=
oat/Tests/">
https://dl.lochnair.net/Bufferbloat/Tests/</a><br>
Oh btw I promise I'll try to not break things when you need to access somet=
hing on that box again Dave...<br>
<br>
Best Regards<br>
Nils<br>
_______________________________________________<br>
Bloat mailing list<br>
Bloat@lists.bufferbloat.net<br>
<a href=3D"https://lists.bufferbloat.net/listinfo/bloat">https://lists.buff=
erbloat.net/listinfo/bloat</a><br>
</div>
</span></font>
</body>
</html>

--_000_2f30c201fce345658df9f2a5090745cftelenorno_--

--===============3431322415800997962==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3431322415800997962==--

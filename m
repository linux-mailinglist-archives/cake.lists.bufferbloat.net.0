Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0742E324E3A
	for <lists+cake@lfdr.de>; Thu, 25 Feb 2021 11:32:35 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5801E3CB60;
	Thu, 25 Feb 2021 05:32:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614249153;
	bh=stDTEShs/+NhGzt8BaZZxnBsFYVT1sfSWnRvVqzayXI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XaarDeimFjm1CwkLZbm4+ZFDXnnFJfmuaqUC/1I4/WISV6tn3luiohSh9gkLf8Ccg
	 t5miSSlLdhvf1Nws064GvKZdJoQXohbK/D5b421rR5q7ARiTi3qcw/TIddUyVH59nw
	 GHfOytXIxhgr9hRIcKcV252yLe9gVkR8MyfynAlCPw/IQ/if+F3CqyKI43jZKhyUGm
	 bUtkWr2F88f8izGZyzYmrRjgWp4SPee4rOHoCSeSyenTMpfU2WGwtdghDDQjmhgJ1C
	 yO1ynI9H3FAQBk7DjKUQ+VRXU5/SE22diFQDVlpdN6hPpgzK2zSemF57O1Ro93emCF
	 vD/cuDnx1Y0Qw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from tn-mailgw-04.telenor.no (tn-mailgw-04.telenor.no [153.110.76.7])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C184E3B29D;
 Thu, 25 Feb 2021 03:18:21 -0500 (EST)
IronPort-SDR: TTHdYcQrxX7+LD14/hocz8LwpYMZc/7eDfhdpABq+0IcH1vhqZljU9DpugBpQLSho1XbnjPxxe
 OXIgD3pNTfWB+96Sf2Fy2n4VY7/FSgJ5tuweY3gJ3mMogjzV5u2u8qbpxpLB3ycXrbBAMu/0RA
 taJMi6xslaUtmne8JI+COO2FOn9bLcI1vQbGeCo2RddnTHNl4Fzxua/tpGpbkeV3ADRK1wDcQ9
 SaYbVwEahoVXXnXFB5n+ykZhBOabE7nBBxpEy1iI3qDXHyS9yh/JEx5x7PaSx9QeOTSlFHwhlR
 /RM=
X-IronPort-AV: E=Sophos;i="5.81,205,1610409600"; d="scan'208,217";a="87815444"
Received: from tns-sko-24-203.corp.telenor.no ([10.179.59.71])
 by tn-mailgw-04.corp.telenor.no with ESMTP; 25 Feb 2021 08:18:18 +0000
Received: from TNS-SKO-24-200.corp.telenor.no (10.179.59.68) by
 TNS-SKO-24-203.corp.telenor.no (10.179.59.71) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Thu, 25 Feb 2021 09:18:18 +0100
Received: from outlook.telenor.no (10.179.127.57) by
 TNS-SKO-24-200.corp.telenor.no (10.179.59.68) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2 via Frontend Transport; Thu, 25 Feb 2021 09:18:18 +0100
Received: from pwpvn2209ex001.nxvp.net (10.149.139.134) by
 pwpvn2209ex003.nxvp.net (10.149.139.136) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2044.4; Thu, 25 Feb 2021 09:18:18 +0100
Received: from pwpvn2209ex001.nxvp.net ([10.149.139.134]) by
 pwpvn2209ex001.nxvp.net ([10.149.139.134]) with mapi id 15.01.2044.004; Thu,
 25 Feb 2021 09:18:18 +0100
From: Taraldsen Erik <erik.taraldsen@telenor.no>
To: Nils Andreas Svee <me@lochnair.net>, Dave Taht <dave.taht@gmail.com>,
 bloat <bloat@lists.bufferbloat.net>, Make-Wifi-fast
 <make-wifi-fast@lists.bufferbloat.net>,
 =?iso-8859-1?Q?Toke_H=F8iland-J=F8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Thread-Topic: [Cake] [Bloat] Fwd: [Galene] Dave on bufferbloat and jitter at
 8pm CET	Tuesday 23
Thread-Index: AQHXCwSf67ElKEybbECYVwmbkehvrqpodR4m
Date: Thu, 25 Feb 2021 08:18:18 +0000
Message-ID: <f5c96a7d5360417bbf8d71ee603eacdd@telenor.no>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
 <2f30c201fce345658df9f2a5090745cf@telenor.no>,
 <480413c4-e9a1-4b78-8ef6-3d8658836874@www.fastmail.com>
In-Reply-To: <480413c4-e9a1-4b78-8ef6-3d8658836874@www.fastmail.com>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.149.139.228]
x-tm-snts-smtp: 91FD6F07469EF65B8A3F416725DB1BF9E88958FB716EB955C083AF245FB4A9B52000:8
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 25 Feb 2021 05:32:32 -0500
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
Content-Type: multipart/mixed; boundary="===============3382797098582589775=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3382797098582589775==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_f5c96a7d5360417bbf8d71ee603eacddtelenorno_"

--_000_f5c96a7d5360417bbf8d71ee603eacddtelenorno_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

This is getting rather rather Telenor internal and probably is not true for=
 other ISP's, but here we go.  Mobile Broad Band (MBB) is handled by Teleno=
r's Mobile division. Fixed Wireless Access (FWA) is handled by Telenors Fix=
ed division (the same group who does DSL, DOCSIS and GPON).  To further com=
plicate matters, Telenor Group (holding company for Telenor Fixed and Telen=
or Mobile) deiced to launch FWA before the new value chain was ready.  So w=
e have two versions of FWA - internally called FWA1 and FWA2.  FWA1 (which =
you have Nils) is not fully compliant with the regulatory definition of a f=
ixed access and has very limited management support (technical monitoring, =
firmware upgrades etc).  I'm working on the FWA2 value chain and devices.


I assume you are doing the tests on Ethernet, not wifi?  I know the B818 ha=
s some wifi issues as well.  To isolate the LTE access I mean.


Yes interesting to see the signal stats from the device, but not needed.  M=
ore for my curiosity to compare with the Zyxel devices.


So with subscription limited to 30Mbit and probably radio head room up to ~=
70Mbit downstream and 10Mbit upstream.  My guess is that you will see more =
latency in the upstream direction.  I believe the B818 has the very typical=
 "1000 packets fifo, never drop" implementation.



-Erik






________________________________
Fra: Cake <cake-bounces@lists.bufferbloat.net> p=E5 vegne av Nils Andreas S=
vee <me@lochnair.net>
Sendt: torsdag 25. februar 2021 00.27
Til: Taraldsen Erik; Dave Taht; bloat; cerowrt-devel; Make-Wifi-fast; Toke =
H=F8iland-J=F8rgensen via Cake
Emne: Re: [Cake] [Bloat] Fwd: [Galene] Dave on bufferbloat and jitter at 8p=
m CET Tuesday 23

Ah, yeah it's fixed wireless I meant. Didn't really know how to say it righ=
t in English.

We've got the Huawei B818-260 with an EMCOM XPOL-2 4G/5G on the wall.

Yes, we've got a 30 Mbit/sec subscription. In practice we usually see ~30 M=
bit downstream and 10-15 upstream, and I believe when we first got the B818=
 and antenna hooked up I measured ~70 Mbit downstream with a subscription t=
hat didn't have any rate limitations, so I assumed we should have a good am=
ount of leeway if something affected the signal.

Sure, I can run some more tests tomorrow. Could also grab some signal stats=
 from the B818 if those are of interest.

By the way, I forgot to mention it when I posted yesterdays tests, but thos=
e were conducted over a WireGuard tunnel with CAKE for the downstream runni=
ng on the other side. Doing that was the only way to get the ADSL subscript=
ion we had to behave decently, it simply couldn't handle things like Steam =
downloads with CAKE on a IFB device in ingress mode, and shaping downstream=
 this way kinda stuck.

Best Regards
Nils


--_000_f5c96a7d5360417bbf8d71ee603eacddtelenorno_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,&quot;EmojiFont&quot;=
,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&q=
uot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p>This is getting rather rather Telenor internal and probably is not true =
for other ISP's, but here we go.&nbsp; Mobile Broad Band (MBB) is handled b=
y Telenor's Mobile division. Fixed Wireless Access (FWA) is handled by Tele=
nors Fixed division (the same group who
 does DSL, DOCSIS and GPON).&nbsp; To further complicate matters, Telenor G=
roup (holding company for Telenor Fixed and Telenor Mobile) deiced to launc=
h FWA before the new value chain was ready.&nbsp; So we have two versions o=
f FWA - internally called FWA1 and FWA2.&nbsp;
 FWA1 (which you have Nils) is not fully compliant with the regulatory defi=
nition of a fixed access and has very limited management support (technical=
 monitoring, firmware upgrades etc).&nbsp; I'm working on the FWA2 value ch=
ain and devices.</p>
<p><br>
</p>
<p>I assume you are doing the tests on Ethernet, not wifi?&nbsp; I know the=
 B818 has some wifi issues as well.&nbsp; To isolate the LTE access I mean.=
&nbsp;
<br>
</p>
<p><br>
</p>
<p>Yes interesting to see the signal stats from the device, but not needed.=
&nbsp; More for my curiosity to compare with the Zyxel devices.</p>
<p><br>
</p>
<p>So with subscription limited to 30Mbit and probably radio head room up t=
o ~70Mbit downstream and 10Mbit upstream.&nbsp; My guess is that you will s=
ee more latency in the upstream direction.&nbsp; I believe the B818 has the=
 very typical &quot;1000 packets fifo, never drop&quot;
 implementation.</p>
<p><br>
</p>
<p><br>
</p>
<p>-Erik<br>
</p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>Fra:</b> Cake &lt;cake-bounce=
s@lists.bufferbloat.net&gt; p=E5 vegne av Nils Andreas Svee &lt;me@lochnair=
.net&gt;<br>
<b>Sendt:</b> torsdag 25. februar 2021 00.27<br>
<b>Til:</b> Taraldsen Erik; Dave Taht; bloat; cerowrt-devel; Make-Wifi-fast=
; Toke H=F8iland-J=F8rgensen via Cake<br>
<b>Emne:</b> Re: [Cake] [Bloat] Fwd: [Galene] Dave on bufferbloat and jitte=
r at 8pm CET Tuesday 23</font>
<div>&nbsp;</div>
</div>
<div>
<div>Ah, yeah it's fixed wireless I meant. Didn't really know how to say it=
 right in English.<br>
</div>
<div><br>
</div>
<div>We've got the Huawei B818-260 with an&nbsp;<span style=3D""><span clas=
s=3D"font" style=3D"font-family:Roboto,Arial">EMCOM XPOL-2 4G/5G on the wal=
l.</span></span><br>
</div>
<div><br>
</div>
<div><span style=3D""><span class=3D"font" style=3D"font-family:Roboto,Aria=
l">Yes, we've got a 30 Mbit/sec subscription. In practice we usually see ~3=
0 Mbit downstream and 10-15 upstream, and I believe when we first got the B=
818 and antenna hooked up I measured ~70
 Mbit downstream with a subscription that didn't have any rate limitations,=
 so I assumed we should have a good amount of leeway if something affected =
the signal.</span></span><br>
</div>
<div><br>
</div>
<div>Sure, I can run some more tests tomorrow. Could also grab some signal =
stats from the B818 if those are of interest.<br>
</div>
<div><br>
</div>
<div>By the way, I forgot to mention it when I posted yesterdays tests, but=
 those were conducted over a WireGuard tunnel with CAKE for the downstream =
running on the other side. Doing that was the only way to get the ADSL subs=
cription we had to behave decently,
 it simply couldn't handle things like Steam downloads with CAKE on a IFB d=
evice in ingress mode, and shaping downstream this way kinda stuck.<br>
</div>
<div><br>
</div>
<div id=3D"sig44785538">
<div class=3D"signature">Best Regards<br>
</div>
<div class=3D"signature">Nils<br>
</div>
</div>
<div><br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_f5c96a7d5360417bbf8d71ee603eacddtelenorno_--

--===============3382797098582589775==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3382797098582589775==--

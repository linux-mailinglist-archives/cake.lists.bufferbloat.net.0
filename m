Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F4C32620E
	for <lists+cake@lfdr.de>; Fri, 26 Feb 2021 12:40:04 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B05593CB4B;
	Fri, 26 Feb 2021 06:40:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614339602;
	bh=h1TtS0WO+fvzhaQZzdZRFEm6GV6IkyCt9B9aXJqgrig=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ncqxANydUsK3jBrUC+ZGS1LJD0LGpTgM4nJivuWiiQhQ2M1Zg0Lo3XSgMTUxzR69b
	 8OA9JS0AofkA3CSGCMq3HT6Jy5o44QuoJKERrA9+zak1UmW1VDW1lZiszhCXBW1cRO
	 7RfvyBPXUbnGkZ3wCjGyC92ecoGdf86JarU7MJz7Oo1307T3EbMighlhxBZl1wV47E
	 NFE/z2x2a0pcXC7PoTdCtsm/p30XkTCvMO5aLVQ4r6h1pYzRsF/0pWdaNcRorgC8Z9
	 v4efjVRqOXxZDvUA1DqSrrQ7FaovR1nkcEhfLECZP6pkNxBnEp/MaR9MsaCvaTO7pc
	 6FpTeD81m5TFg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from tn-mailgw-03.telenor.no (tn-mailgw-03.telenor.no [153.110.76.6])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 99AF03B2A4;
 Fri, 26 Feb 2021 02:26:47 -0500 (EST)
IronPort-SDR: dKic19yXA3NOEDPLTCbHX6W5fQ8nEAimrjNwgk0jy2HRUdJNW7y/CQUPXg76L1XVqBshXRxghA
 XdUjForCHNgKsH101Re9tD9XPEmh95OXTcU707PEaV14Q1kBGfh/Xoa/cKmaSMxy8ExWC2vjrw
 apYoR3NGzVHDumasmqRrseh3vzJOXPRDiIk4MOVuRRQW/5BBMQA1o5gtU2shhAdxuvKz9HAD3P
 KkdhHQreWGZly+6bTfGf66T/wwTS5yuOZ44xBJaker8djlrJwiHApK4JefpDbDlnCeygkP2guq
 QW8=
X-IronPort-AV: E=Sophos;i="5.81,207,1610409600"; d="scan'208,217";a="74766020"
Received: from tns-sko-24-204.corp.telenor.no ([10.179.59.72])
 by tn-mailgw-03.corp.telenor.no with ESMTP; 26 Feb 2021 07:26:46 +0000
Received: from TNS-SKO-24-203.corp.telenor.no (10.179.59.71) by
 TNS-SKO-24-204.corp.telenor.no (10.179.59.72) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Fri, 26 Feb 2021 08:26:46 +0100
Received: from outlook.telenor.no (10.179.127.58) by
 TNS-SKO-24-203.corp.telenor.no (10.179.59.71) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2 via Frontend Transport; Fri, 26 Feb 2021 08:26:46 +0100
Received: from pwpvn2209ex001.nxvp.net (10.149.139.134) by
 pwpvn2209ex001.nxvp.net (10.149.139.134) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2044.4; Fri, 26 Feb 2021 08:26:45 +0100
Received: from pwpvn2209ex001.nxvp.net ([10.149.139.134]) by
 pwpvn2209ex001.nxvp.net ([10.149.139.134]) with mapi id 15.01.2044.004; Fri,
 26 Feb 2021 08:26:45 +0100
From: Taraldsen Erik <erik.taraldsen@telenor.no>
To: Nils Andreas Svee <me@lochnair.net>, Dave Taht <dave.taht@gmail.com>,
 bloat <bloat@lists.bufferbloat.net>, Make-Wifi-fast
 <make-wifi-fast@lists.bufferbloat.net>,
 =?iso-8859-1?Q?Toke_H=F8iland-J=F8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Thread-Topic: SV: [Cake] [Bloat] Fwd: [Galene] Dave on bufferbloat and jitter
 at 8pm CET Tuesday 23
Thread-Index: AQHXC9UXIABXylHT90yGNinCbWzHeapqAX4h
Date: Fri, 26 Feb 2021 07:26:45 +0000
Message-ID: <53f6b6b3f5b043feb841c9c33fd1f480@telenor.no>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
 <2f30c201fce345658df9f2a5090745cf@telenor.no>
 <480413c4-e9a1-4b78-8ef6-3d8658836874@www.fastmail.com>
 <f5c96a7d5360417bbf8d71ee603eacdd@telenor.no>,
 <9b17aa66-d02d-e262-88a3-2f36c1755667@lochnair.net>
In-Reply-To: <9b17aa66-d02d-e262-88a3-2f36c1755667@lochnair.net>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.149.139.228]
x-tm-snts-smtp: 3C6115413062B7EB3D512FFA85B311B800087580A0A82A8354DB0D711A8E76282000:8
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 26 Feb 2021 06:40:02 -0500
Subject: Re: [Cake] [Bloat] Fwd: [Galene] Dave on bufferbloat and jitter at
 8pm CET Tuesday 23
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
Content-Type: multipart/mixed; boundary="===============3023186661795868975=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3023186661795868975==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_53f6b6b3f5b043feb841c9c33fd1f480telenorno_"

--_000_53f6b6b3f5b043feb841c9c33fd1f480telenorno_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Fra: Nils Andreas Svee <me@lochnair.net>

I am indeed running them on Ethernet. I don't actually use the B818 for any=
thing else than as a LTE modem, so I wouldn't know, if I could get the thin=
g to bridge I would. Or replace it with something else entirely that I can =
control, but that doesn't seem to be an option on FWA. That said the Zyxel =
looks like a better option since I assume it acts like a bridge by default.
The Zyxel device indeed acts as a bridge, or at least as close approximatio=
n as we can get it.  The PDP addressing protocol in mobile networks requres=
 the address termination to happen where the SIM card resides.  So the devi=
ce does some trickery with brctl, routing and iptables to simulate a bridge=
 setup.


I dumped the raw signal stats the web interface grabs in an XML file togeth=
er with the Flent tests. Also did some upload only tests tonight at differe=
nt speeds (no VPN in play this time).
rsrp is good and rsrq is great at your location.  However you have ended up=
 on the 800MHz band.  That is intended for coverage, not capacity.  It uses=
 only 10MHz bandwitdh and is shared with a lot more customers.  You probabl=
y should be able to get an 1800MHz frequency which has 20MHz and is shared =
among fewer customers.

Most likely yes. That's been my observation as well, that it generally acts=
 up the worst when somethings using the upstream. Not entirely sure what I =
can do about that, seeing as I had to shape at 5Mbit to get rid of the wors=
t spikes (but not all).

This is tricky.  You don't have a static set of resources.  You request res=
ources "as needed".  The "as needed" amongst other things reads the buffer =
back pressure.  So if you shape to far down the LTE device will not request=
 enough resources.  Shape to high and there will not be enough resources av=
ailable to share.  And available resources vary with number of subscribers =
on that cell, weather, the subscribers usage and interference from other ce=
ll towers.  To get a proper solution to this I don't see a way around getti=
ng the chipset manufacturers on board.



On that point, I would've liked to collect signal stats over time, but the =
B818 seems to insist on chucking me out after being idle for a few minutes,=
 better known as scraping the stats with cURL


Have you tried to use the telnet service port (20249) on the B818?  Not all=
 variants have that open but you could give it a shot.  You also may need t=
o acquire an datalock code for the "at^datalock=3D" command.

telnet LAN_IP 20249



This is getting LTE/5G spesific.  Not sure if it belongs on the list.  Let =
us know if we are generating noise.


-Erik

--_000_53f6b6b3f5b043feb841c9c33fd1f480telenorno_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFont&quot;, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=3D=
"ltr">
<font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#00000=
0"><b>Fra:</b> Nils Andreas Svee &lt;me@lochnair.net&gt;</font><br>
<div style=3D"color: rgb(0, 0, 0);">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><br>
</font></div>
<blockquote>
<div dir=3D"ltr">I am indeed running them on Ethernet. I don't actually use=
 the B818 for anything else than as a LTE modem, so I wouldn't know, if I c=
ould get the thing to bridge I would. Or replace it with something else ent=
irely that I can control, but that
 doesn't seem to be an option on FWA. That said the Zyxel looks like a bett=
er option since I assume it acts like a bridge by default.<br>
</div>
</blockquote>
<div>The Zyxel device indeed acts as a bridge, or at least as close approxi=
mation as we can get it.&nbsp; The PDP addressing protocol in mobile networ=
ks requres the address termination to happen where the SIM card resides.&nb=
sp; So the device does some trickery with
 brctl, routing and iptables to simulate a bridge setup.</div>
<div><br>
</div>
<div><br>
</div>
<blockquote>
<div>I dumped the raw signal stats the web interface grabs in an XML file t=
ogether with the Flent tests. Also did some upload only tests tonight at di=
fferent speeds (no VPN in play this time).</div>
</blockquote>
<div>rsrp is good and rsrq is great at your location.&nbsp; However you hav=
e ended up on the 800MHz band.&nbsp; That is intended for coverage, not cap=
acity.&nbsp; It uses only 10MHz bandwitdh and is shared with a lot more cus=
tomers.&nbsp; You probably should be able to get an
 1800MHz frequency which has 20MHz and is shared among fewer customers.<br>
</div>
<div><br>
</div>
<div>
<blockquote>Most likely yes. That's been my observation as well, that it ge=
nerally acts up the worst when somethings using the upstream. Not entirely =
sure what I can do about that, seeing as I had to shape at 5Mbit to get rid=
 of the worst spikes (but not all).
</blockquote>
<p>This is tricky.&nbsp; You don't have a static set of resources.&nbsp; Yo=
u request resources &quot;as needed&quot;.&nbsp; The &quot;as needed&quot; =
amongst other things reads the buffer back pressure.&nbsp; So if you shape =
to far down the LTE device will not request enough resources.&nbsp; Shape t=
o
 high and there will not be enough resources available to share.&nbsp; And =
available resources vary with number of subscribers on that cell, weather, =
the subscribers usage and interference from other cell towers.&nbsp; To get=
 a proper solution to this I don't see a way
 around getting the chipset manufacturers on board.</p>
<p><br>
</p>
<br>
<blockquote>
<p>On that point, I would've liked to collect signal stats over time, but t=
he B818 seems to insist on chucking me out after being idle for a few minut=
es, better known as scraping the stats with cURL</p>
</blockquote>
<p><br>
</p>
</div>
<div>Have you tried to use the telnet service port (20249) on the B818?&nbs=
p; Not all variants have that open but you could give it a shot.&nbsp; You =
also may need to acquire an datalock code for the &quot;<span>at^datalock=
=3D&quot; command. &nbsp;</span><br>
</div>
<div><br>
</div>
<div>telnet LAN_IP 20249<br>
</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>This is getting LTE/5G spesific.&nbsp; Not sure if it belongs on the l=
ist.&nbsp; Let us know if we are generating noise.</div>
<div><br>
</div>
<div><br>
</div>
<div>-Erik<br>
</div>
</div>
</div>
</body>
</html>

--_000_53f6b6b3f5b043feb841c9c33fd1f480telenorno_--

--===============3023186661795868975==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3023186661795868975==--

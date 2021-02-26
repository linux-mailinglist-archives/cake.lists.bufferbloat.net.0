Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9A832692B
	for <lists+cake@lfdr.de>; Fri, 26 Feb 2021 22:09:07 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 161DA3CB50;
	Fri, 26 Feb 2021 16:09:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614373746;
	bh=lGsXg/KSKwDCqfR+Ws9TO6N+1zszbmsL4j1RKLv3Wrw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fkTMbQiaoJ9Vm1byIfi6/e9li4CotsO7+4E57wp8Mv5vrn9q7jldNplPWtGpQJyYE
	 n1QjcIrkbkxgkALq0Hx0HSY74+hp2LRV9maXcog1WQarFT1mswP46PGln1upoVSGjs
	 PPk2/upCvqeluZVM/WJFMgk/rspTIE2oDP3LDGrEAxNoiGmc2MP7F7yWTq0JS+VuVI
	 J5xXQnU7IKSyiLwq+U6B5CmjgOQRbRzAEEUuVv2eFXMSbXwbF7rLZbvGsolockHz3N
	 aJSRNQ4N1Cy4l3bDFPH0XGsZplq1hne7jUqW2MA+lkyVgTrHWG0TwzpXdaKs/1Hkz6
	 qwDa6oDQIR00Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from tn-mailgw-01.telenor.no (tn-mailgw-01.telenor.no [153.110.76.4])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 14E583B29E;
 Fri, 26 Feb 2021 10:08:18 -0500 (EST)
IronPort-SDR: MjuxreY1KE8M0u1W34WESY3YJutQsXgqG35+dlZP/DuYc7d05yMEkOuDkmNaeyEzTqr8I4pVnb
 j63sG0jPeL2Iquk5alTVQDn9gUxozHS+SGroat4ebw+75wp74K9nd8/3v3mpc0lfW/jScq6Ok9
 rgsjXPqTdJtR8BeZwPJjPTTcaRzbiXWXyitvSAiSTOguzFGEFWuaf5NQ1ulFbnA7bjZpAhI/6O
 Xn+EOgs/lyfyqTDS90qwN8PuBUJNUryqJpq++VoT/n8+TSlJfOfprGq3A4HKC/CWpuZa5UdNrP
 324=
X-IronPort-AV: E=Sophos;i="5.81,208,1610409600"; d="scan'208,217";a="77452139"
Received: from tns-sko-24-207.corp.telenor.no ([10.179.59.75])
 by tn-mailgw-01.corp.telenor.no with ESMTP; 26 Feb 2021 15:08:18 +0000
Received: from TNS-SKO-24-202.corp.telenor.no (10.179.59.70) by
 TNS-SKO-24-207.corp.telenor.no (10.179.59.75) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Fri, 26 Feb 2021 16:08:17 +0100
Received: from outlook.telenor.no (10.179.127.62) by
 TNS-SKO-24-202.corp.telenor.no (10.179.59.70) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2 via Frontend Transport; Fri, 26 Feb 2021 16:08:17 +0100
Received: from pwpvn2209ex001.nxvp.net (10.149.139.134) by
 pwpvn2209ex004.nxvp.net (10.149.139.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2044.4; Fri, 26 Feb 2021 16:08:17 +0100
Received: from pwpvn2209ex001.nxvp.net ([10.149.139.134]) by
 pwpvn2209ex001.nxvp.net ([10.149.139.134]) with mapi id 15.01.2044.004; Fri,
 26 Feb 2021 16:08:17 +0100
From: Taraldsen Erik <erik.taraldsen@telenor.no>
To: Nils Andreas Svee <me@lochnair.net>, Dave Taht <dave.taht@gmail.com>,
 bloat <bloat@lists.bufferbloat.net>, Make-Wifi-fast
 <make-wifi-fast@lists.bufferbloat.net>,
 =?iso-8859-1?Q?Toke_H=F8iland-J=F8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Thread-Topic: [Cake] [Bloat] Fwd: [Galene] Dave on bufferbloat and jitter at
 8pm CET Tuesday 23
Thread-Index: AQHXDFE2jqcMWA1bAEeWaCTV5rRoXw==
Date: Fri, 26 Feb 2021 15:08:16 +0000
Message-ID: <91226f2f9a2e4110aee2c20866b75f48@telenor.no>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
 <2f30c201fce345658df9f2a5090745cf@telenor.no>
 <480413c4-e9a1-4b78-8ef6-3d8658836874@www.fastmail.com>
 <f5c96a7d5360417bbf8d71ee603eacdd@telenor.no>
 <9b17aa66-d02d-e262-88a3-2f36c1755667@lochnair.net>
 <53f6b6b3f5b043feb841c9c33fd1f480@telenor.no>,
 <26ed70a5-6638-3298-3c8a-467b2561dbbf@lochnair.net>
In-Reply-To: <26ed70a5-6638-3298-3c8a-467b2561dbbf@lochnair.net>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.149.139.228]
x-tm-snts-smtp: A8B71DA3DD33832833F5CFFABB5B978BD59DC69C9BB132B6CD47A83576F7F5C52000:8
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 26 Feb 2021 16:09:04 -0500
Subject: [Cake] [Bloat] Fwd: [Galene] Dave on bufferbloat and jitter at 8pm
 CET Tuesday 23
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
Content-Type: multipart/mixed; boundary="===============0914488369618627075=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0914488369618627075==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_91226f2f9a2e4110aee2c20866b75f48telenorno_"

--_000_91226f2f9a2e4110aee2c20866b75f48telenorno_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Fra: Nils Andreas Svee <me@lochnair.net>


I wanted to try and lock it to 1800Mhz, but there's no option for that expo=
sed in the GUI that I can find.


Generally few devices allow for that.  I do know the Zyxel devices we use a=
llow for that in the engineering version we have for lab purposes.  I'm not=
 sure what is available in the commercial version.  I do know however that =
we completely lock down the local interfaces of the Telenor branded version=
 of the Zyxel device.


I had not, I didn't scan higher ports. It *is* open though, so I was able t=
o connect to it. It only yells at me if I try to run any of the few AT comm=
ands I know (except at), not sure if that's because of the datalock code. I=
f that's what I'm missing, how does one go about getting a hold of one of t=
hose? When I looked it up I only found some sites I have concern about the =
legitimacy of.
The datalock algorithm has been broken and is available through some of tho=
se sketchy sites.  After that Huawei updated their algorithm.  I do believe=
 it follows device, not sw.  So if your B818 was produced before the change=
 you can use those sites.  Spin up a VM or something to try them out.

The proper procedure it to contact Huawei and get them to give you the code=
. I believe it is intended only for trusted partners, but you can give it a=
 shot to try and reach out to them.



-Erik

--_000_91226f2f9a2e4110aee2c20866b75f48telenorno_
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
<div><br>
</div>
<blockquote>
<p>I wanted to try and lock it to 1800Mhz, but there's no option for that e=
xposed in the GUI that I can find.</p>
</blockquote>
<div>
<p><br>
</p>
<p>Generally few devices allow for that.&nbsp; I do know the Zyxel devices =
we use allow for that in the engineering version we have for lab purposes.&=
nbsp; I'm not sure what is available in the commercial version.&nbsp; I do =
know however that we completely lock down the local
 interfaces of the Telenor branded version of the Zyxel device.</p>
<p><br>
</p>
</div>
<div><br>
</div>
<blockquote>
<div>I had not, I didn't scan higher ports. It *is* open though, so I was a=
ble to connect to it. It only yells at me if I try to run any of the few AT=
 commands I know (except
<i>at)</i>, not sure if that's because of the datalock code. If that's what=
 I'm missing, how does one go about getting a hold of one of those? When I =
looked it up I only found some sites I have concern about the legitimacy of=
.<br>
</div>
</blockquote>
<div>The datalock algorithm has been broken and is available through some o=
f those sketchy sites.&nbsp; After that Huawei updated their algorithm.&nbs=
p; I do believe it follows device, not sw.&nbsp; So if your B818 was produc=
ed before the change you can use those sites.&nbsp;
 Spin up a VM or something to try them out.</div>
<div><br>
</div>
<div>The proper procedure it to contact Huawei and get them to give you the=
 code. I believe it is intended only for trusted partners, but you can give=
 it a shot to try and reach out to them.</div>
<div><br>
</div>
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

--_000_91226f2f9a2e4110aee2c20866b75f48telenorno_--

--===============0914488369618627075==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0914488369618627075==--

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDB011EEE8
	for <lists+cake@lfdr.de>; Sat, 14 Dec 2019 00:52:46 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6C9083CB4C;
	Fri, 13 Dec 2019 18:52:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1576281165;
	bh=riEYdS/X/I/a4XdCgzLeRY1L3fkUckjLEQ3gxWDLtlA=;
	h=From:Date:In-Reply-To:To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AuicR3uI+DEUy5vJ2CVs5tgH5jsVJaEBFA+TxasHNICJT1dblTDjtbC4xQr1lUWCX
	 HGNRuThAVQiaecMJxAb3YJcFHzaXWmICfLFCac4I7TDIGyJ7pHOBTNqQCn4d4WFzf8
	 qAKsQOeSN+N0USYGWqoCfDZJKZC2B+7i5l8jsjKPxii6DBrDADZQ9BoqZ4ZET/oM1x
	 qmFJE3CSZkERI8/pDsALcH66sWzV4VohAbYiMOw6BLDehWqjTSrtJ14rZ/I/WUtrts
	 rq/yKCP3ADQNmAf7fGbR5O8Y7AiM3HqGUIItw+aPQ7P/4Te0esh8BUAzVxLhtW7CLx
	 7YMY30wq34vxw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from vps.slashdirt.org (vps.slashdirt.org [144.91.108.218])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id F20DA3CB48
 for <cake@lists.bufferbloat.net>; Fri, 13 Dec 2019 18:52:43 -0500 (EST)
Received: from chuck.lan (unknown [37.172.203.59])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 9FE9260068;
 Sat, 14 Dec 2019 00:52:42 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 9FE9260068
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1576281163; bh=7hkknDiD4Ni+LbJtdUh8R0ANI4AFKpqguOspTN54N3k=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=wkF8zKClNFbjZBrsUEpPcOSy2BzrW3Hm20/yZ2jOBqO4a68EL9g8QQayiPwkXRXpP
 ExGBajysZVgKOWHy6whlEpMfB9XzKkjGrxcmbxrlDAmlBcTeY1o9jYJ2p7ZnqLgddf
 fgxrlN8/EihbTKAkKc2ujoPwWNsI3yMkyHyEQfKk=
From: Thibaut <hacks@slashdirt.org>
Message-Id: <46DDBCAA-EC6C-492F-8448-DF85ABB4E1DB@slashdirt.org>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Sat, 14 Dec 2019 00:52:41 +0100
In-Reply-To: <E644DF87-72A0-43EC-ABD6-E8E2FAC26997@slashdirt.org>
To: Jonathan Morton <chromatix99@gmail.com>
References: <1d359153abfc413b4f61c647437427d6@slashdirt.org>
 <8FC615C8-4885-4F0A-B2EE-934DC4E806E8@gmail.com>
 <6E9587F7-C208-4568-8429-AEBA9E694E24@slashdirt.org>
 <E644DF87-72A0-43EC-ABD6-E8E2FAC26997@slashdirt.org>
X-Mailer: Apple Mail (2.3445.104.11)
Subject: Re: [Cake] Trouble with CAKE
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
Cc: Erik Taraldsen via Cake <cake@lists.bufferbloat.net>,
 ldir@darbyshire-bryant.me.uk
Content-Type: multipart/mixed; boundary="===============7186250292171898572=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============7186250292171898572==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_C7FA7BDB-28CA-44B2-B503-A53C5C84FACC"


--Apple-Mail=_C7FA7BDB-28CA-44B2-B503-A53C5C84FACC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> Le 13 d=C3=A9c. 2019 =C3=A0 23:40, Thibaut <hacks@slashdirt.org> a =
=C3=A9crit :
>=20
>=20
>=20
>> On 13 Dec 2019, at 23:39, Thibaut <hacks@slashdirt.org =
<mailto:hacks@slashdirt.org>> wrote:
>>=20
>> Hi Jonathan,
>>=20
>>> On 13 Dec 2019, at 15:02, Jonathan Morton <chromatix99@gmail.com =
<mailto:chromatix99@gmail.com>> wrote:
>>>=20
>>>> On 13 Dec, 2019, at 3:43 pm, Thibaut <hacks@slashdirt.org =
<mailto:hacks@slashdirt.org>> wrote:
>>>>=20
>>>> I've been using CAKE on my DSL-connected Linux router for the last =
few years, and it worked well until very recently. Two things happened:
>>>>=20
>>>> 1) My ISP (French "Free") switched my DSLAM to native IPv6, which =
for the time being means that I had to revert to using their set-top-box =
(Freebox) instead of the VDSL2 model I was using in bridge mode until =
then (CAKE in "bridged-ptm ether-vlan" mode)
>>>> 2) I upgraded my router from 3.16 (Devuan Jessie) to 4.9 (Devuan =
ASCII)
>>>>=20
>>>> Since then, no matter which setup I use, I cannot get CAKE to work =
as intended. Specifically, any long-standing best effort stream (such as =
a remote rsync) will be throttled to a near grinding halt even though =
there is no other significant traffic going on. Some random bursts can =
be seen (with iftop) but nothing ever gets close to half the maximum =
bandwidth. This is notably affecting the OpenWRT buildbots I'm hosting =
on this link.
>>>=20
>>> Old kernels, including 4.9 series, tend to be more problematic than =
the latest ones.  If you can, I would recommend updating to a 5.x series =
kernel, in which Cake is an upstream feature.  I won't presume to guess =
how best to achieve that with your distro.
>>=20
>> I=E2=80=99m now able to confirm this looks like a regression: I was =
able to retrieve and build the last known working version of CAKE on my =
router, and with an adjusted overhead of 48 atm (confirmed thanks to the =
help of Stephan), it works like a charm. Current HEAD doesn=E2=80=99t, =
with the exact same parameters.
>=20
> I meant Sebastian, sorry. And this is old CAKE running on distro 4.9, =
for the sake of clarity

Culprit turned out to be easy to identify: it=E2=80=99s the current =
master HEAD.

Reverting 183b320 fixed the issue.

I hope this helps,
Thibaut


--Apple-Mail=_C7FA7BDB-28CA-44B2-B503-A53C5C84FACC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">Le 13 d=C3=A9c. 2019 =C3=A0 23:40, Thibaut &lt;<a =
href=3D"mailto:hacks@slashdirt.org" class=3D"">hacks@slashdirt.org</a>&gt;=
 a =C3=A9crit :</div><br class=3D"Apple-interchange-newline"><div =
class=3D""><div style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br class=3D"Apple-interchange-newline"><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On 13 =
Dec 2019, at 23:39, Thibaut &lt;<a href=3D"mailto:hacks@slashdirt.org" =
class=3D"">hacks@slashdirt.org</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><span class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;">Hi Jonathan,</span><br =
class=3D"" style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;"><br class=3D"" style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;"><blockquote type=3D"cite" class=3D"" style=3D"font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;">On 13 Dec 2019, at 15:02, Jonathan Morton &lt;<a =
href=3D"mailto:chromatix99@gmail.com" =
class=3D"">chromatix99@gmail.com</a>&gt; wrote:<br class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D"">On 13 Dec, 2019, at 3:43 =
pm, Thibaut &lt;<a href=3D"mailto:hacks@slashdirt.org" =
class=3D"">hacks@slashdirt.org</a>&gt; wrote:<br class=3D""><br =
class=3D"">I've been using CAKE on my DSL-connected Linux router for the =
last few years, and it worked well until very recently. Two things =
happened:<br class=3D""><br class=3D"">1) My ISP (French "Free") =
switched my DSLAM to native IPv6, which for the time being means that I =
had to revert to using their set-top-box (Freebox) instead of the VDSL2 =
model I was using in bridge mode until then (CAKE in "bridged-ptm =
ether-vlan" mode)<br class=3D"">2) I upgraded my router from 3.16 =
(Devuan Jessie) to 4.9 (Devuan ASCII)<br class=3D""><br class=3D"">Since =
then, no matter which setup I use, I cannot get CAKE to work as =
intended. Specifically, any long-standing best effort stream (such as a =
remote rsync) will be throttled to a near grinding halt even though =
there is no other significant traffic going on. Some random bursts can =
be seen (with iftop) but nothing ever gets close to half the maximum =
bandwidth. This is notably affecting the OpenWRT buildbots I'm hosting =
on this link.<br class=3D""></blockquote><br class=3D"">Old kernels, =
including 4.9 series, tend to be more problematic than the latest ones. =
&nbsp;If you can, I would recommend updating to a 5.x series kernel, in =
which Cake is an upstream feature. &nbsp;I won't presume to guess how =
best to achieve that with your distro.<br class=3D""></blockquote><br =
class=3D"" style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;"><span class=3D"" style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;">I=E2=80=99m now able to =
confirm this looks like a regression: I was able to retrieve and build =
the last known working version of CAKE on my router, and with an =
adjusted overhead of 48 atm (confirmed thanks to the help of Stephan), =
it works like a charm. Current HEAD doesn=E2=80=99t, with the exact same =
parameters.</span><br class=3D"" style=3D"caret-color: rgb(0, 0, 0); =
font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"></div></blockquote><div class=3D""><br =
class=3D""></div>I meant Sebastian, sorry. And this is old CAKE running =
on distro 4.9, for the sake of clarity</div></div></blockquote><br =
class=3D""></div><div>Culprit turned out to be easy to identify: it=E2=80=99=
s the current master HEAD.</div><div><br class=3D""></div><div>Reverting =
183b320 fixed the issue.</div><div><br class=3D""></div><div>I hope this =
helps,</div><div>Thibaut</div><br class=3D""></body></html>=

--Apple-Mail=_C7FA7BDB-28CA-44B2-B503-A53C5C84FACC--

--===============7186250292171898572==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7186250292171898572==--

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D210811EDF7
	for <lists+cake@lfdr.de>; Fri, 13 Dec 2019 23:40:57 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0091A3CB4E;
	Fri, 13 Dec 2019 17:40:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1576276857;
	bh=yD3y90Vq2OKk8fgMpCQxwy2+lAZg0H3HvSlz/b88qWg=;
	h=From:Date:In-Reply-To:To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=elvP4cJJFwoU5Wrgo0iTGIaGRa36OQhMNGO9N1LisWjIPhelJ/HW6vAEETgTVhG/n
	 /VQUdKQviwO1+JSnG57gS1aWsWYlfL0dYEJ5D/o8j8O5D/HD4jjsMG+XV/VUNznlxM
	 gPk0dnzkzeTycPTHrkJSaZRjWa3AQ65GWLe3E9SEkF70r7NlE2yMcswTFH1+Jv+eFH
	 5xZ82RcUpAK3SKX26deCtuQgDJjuMG2a3r2tRcPQ9PvBlDRt/LM7nKzqOevDulbq5K
	 ag2fRgkAybOPg7PIAOjKhtKV4fi/Bt3ol+cAwESbmQ+gmIbCuHD2JTCw5g31FANtAK
	 fYllYDxLuekzQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from vps.slashdirt.org (vps.slashdirt.org [144.91.108.218])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4C9123CB48
 for <cake@lists.bufferbloat.net>; Fri, 13 Dec 2019 17:40:55 -0500 (EST)
Received: from tama.lan (unknown [37.172.203.59])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 36735603EB;
 Fri, 13 Dec 2019 23:40:54 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 36735603EB
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1576276854; bh=v3D+Qt0pwtCnr6zG/C6HKoYE4MuDoPrqrb+kUFcRsNI=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=0HHJePG+be5F2LhqEaH5/8ymmK/Recec5wvY9Rxn6CMS+PfDr0uylIUhcWbcoImln
 HcB2xKhlv87FjbmjoUr/D/B9vqQXAqBSVuereBHDUz3UO8IL84Nj8PjRIadlyLfB6C
 3GrnpI6sys6vBSo0WluAtMSJ47ln0zTFRqG6rWXY=
From: Thibaut <hacks@slashdirt.org>
Message-Id: <E644DF87-72A0-43EC-ABD6-E8E2FAC26997@slashdirt.org>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Fri, 13 Dec 2019 23:40:53 +0100
In-Reply-To: <6E9587F7-C208-4568-8429-AEBA9E694E24@slashdirt.org>
To: Jonathan Morton <chromatix99@gmail.com>
References: <1d359153abfc413b4f61c647437427d6@slashdirt.org>
 <8FC615C8-4885-4F0A-B2EE-934DC4E806E8@gmail.com>
 <6E9587F7-C208-4568-8429-AEBA9E694E24@slashdirt.org>
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
Cc: Erik Taraldsen via Cake <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============7437061770570849384=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============7437061770570849384==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B196181E-3236-49D6-918D-0D9AC978EDEA"


--Apple-Mail=_B196181E-3236-49D6-918D-0D9AC978EDEA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 13 Dec 2019, at 23:39, Thibaut <hacks@slashdirt.org> wrote:
>=20
> Hi Jonathan,
>=20
>> On 13 Dec 2019, at 15:02, Jonathan Morton <chromatix99@gmail.com> =
wrote:
>>=20
>>> On 13 Dec, 2019, at 3:43 pm, Thibaut <hacks@slashdirt.org> wrote:
>>>=20
>>> I've been using CAKE on my DSL-connected Linux router for the last =
few years, and it worked well until very recently. Two things happened:
>>>=20
>>> 1) My ISP (French "Free") switched my DSLAM to native IPv6, which =
for the time being means that I had to revert to using their set-top-box =
(Freebox) instead of the VDSL2 model I was using in bridge mode until =
then (CAKE in "bridged-ptm ether-vlan" mode)
>>> 2) I upgraded my router from 3.16 (Devuan Jessie) to 4.9 (Devuan =
ASCII)
>>>=20
>>> Since then, no matter which setup I use, I cannot get CAKE to work =
as intended. Specifically, any long-standing best effort stream (such as =
a remote rsync) will be throttled to a near grinding halt even though =
there is no other significant traffic going on. Some random bursts can =
be seen (with iftop) but nothing ever gets close to half the maximum =
bandwidth. This is notably affecting the OpenWRT buildbots I'm hosting =
on this link.
>>=20
>> Old kernels, including 4.9 series, tend to be more problematic than =
the latest ones.  If you can, I would recommend updating to a 5.x series =
kernel, in which Cake is an upstream feature.  I won't presume to guess =
how best to achieve that with your distro.
>=20
> I=E2=80=99m now able to confirm this looks like a regression: I was =
able to retrieve and build the last known working version of CAKE on my =
router, and with an adjusted overhead of 48 atm (confirmed thanks to the =
help of Stephan), it works like a charm. Current HEAD doesn=E2=80=99t, =
with the exact same parameters.

I meant Sebastian, sorry. And this is old CAKE running on distro 4.9, =
for the sake of clarity

Thibaut=

--Apple-Mail=_B196181E-3236-49D6-918D-0D9AC978EDEA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On 13 Dec 2019, at 23:39, Thibaut &lt;<a =
href=3D"mailto:hacks@slashdirt.org" class=3D"">hacks@slashdirt.org</a>&gt;=
 wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><span=
 style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">Hi =
Jonathan,</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><blockquote type=3D"cite" style=3D"font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D"">On 13 =
Dec 2019, at 15:02, Jonathan Morton &lt;<a =
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
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">I=E2=80=99m =
now able to confirm this looks like a regression: I was able to retrieve =
and build the last known working version of CAKE on my router, and with =
an adjusted overhead of 48 atm (confirmed thanks to the help of =
Stephan), it works like a charm. Current HEAD doesn=E2=80=99t, with the =
exact same parameters.</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""></div></blockquote><div><br =
class=3D""></div>I meant Sebastian, sorry. And this is old CAKE running =
on distro 4.9, for the sake of clarity</div><div><br =
class=3D""></div><div>Thibaut</div></body></html>=

--Apple-Mail=_B196181E-3236-49D6-918D-0D9AC978EDEA--

--===============7437061770570849384==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7437061770570849384==--

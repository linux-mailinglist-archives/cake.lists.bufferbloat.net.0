Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B76D11F1AA
	for <lists+cake@lfdr.de>; Sat, 14 Dec 2019 13:07:08 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 157F63CB3B;
	Sat, 14 Dec 2019 07:07:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1576325227;
	bh=y195bq0uiig7kuJzrArf5uGFPp1f21iS1fQZiZcrPLk=;
	h=From:Date:In-Reply-To:To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XeI8jS33GbFq229REanodjCg73tjvjSFzM9Ga4vD+TpkT/8VfrnVLFtcciytcOxDX
	 UZI7DSpSiNkWzxT+g8USifD0+aagoNBCpW2pC8nwBGUlloYhdadUT7ykpy1uM5c7Lw
	 WChMVu7XXq70/bRmQcggilT0ogz83E+5uvA3+x8XJjnKpTCJuvSZVAsYKkwvhOxnhr
	 c3pHowAJiQTaLE52Yzx+52JEOsDJJ5b8S4XTTyMkHOKBZKlOfUHf+ACUHf7NWKq8OL
	 2J/N7ZVxh+4qV69aDmAZY9RBdYhpY5m7c+c1y7oLd/xTZJqbe4FqldprULIkKdinpb
	 MQau9Jgi3JUQw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from vps.slashdirt.org (vps.slashdirt.org [144.91.108.218])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 457D53B2A4
 for <cake@lists.bufferbloat.net>; Sat, 14 Dec 2019 07:07:06 -0500 (EST)
Received: from tama.lan (unknown [37.165.135.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 1A448603EA;
 Sat, 14 Dec 2019 13:07:04 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 1A448603EA
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1576325225; bh=24CLspVMhSd0D3BhN2ygRZgdI683NFsLzHcT2ZDWCAs=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=qrldnVXvQkLdIoDbTpelcMnwYyPpX2p9fBKWlbleqit8q54IHQxxCggsFkuDfP9TQ
 BBJT+4f5FwswvK2PYnaFo5/PGjR1QJReKMagkM+V5y9MSdWIivmzc4QW5gSOD9uMF3
 SPK1vsF4/hekvBh+3eXkPjCoCiICJ/vTACEZo9Vo=
From: Thibaut <hacks@slashdirt.org>
Message-Id: <52FA8A2E-FB27-431B-BDD2-7F15872E1A80@slashdirt.org>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Sat, 14 Dec 2019 13:07:03 +0100
In-Reply-To: <55F31738-C935-4361-B11E-9E7CA657489F@slashdirt.org>
To: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
References: <1d359153abfc413b4f61c647437427d6@slashdirt.org>
 <8FC615C8-4885-4F0A-B2EE-934DC4E806E8@gmail.com>
 <6E9587F7-C208-4568-8429-AEBA9E694E24@slashdirt.org>
 <E644DF87-72A0-43EC-ABD6-E8E2FAC26997@slashdirt.org>
 <46DDBCAA-EC6C-492F-8448-DF85ABB4E1DB@slashdirt.org>
 <1507FAF0-8A13-48E1-8A36-0D352F4FDD00@gmail.com>
 <FD87F736-DF93-44F4-805C-6ABCE8D4E172@slashdirt.org>
 <A265EDE5-BDEE-4806-AB75-4BD70053EC0B@darbyshire-bryant.me.uk>
 <4E238145-37A2-45AC-B8BB-AD602C4D1044@darbyshire-bryant.me.uk>
 <55F31738-C935-4361-B11E-9E7CA657489F@slashdirt.org>
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
Content-Type: multipart/mixed; boundary="===============5398854838105520149=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============5398854838105520149==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_6101887E-A542-4AB6-B18B-BA8B4220B787"


--Apple-Mail=_6101887E-A542-4AB6-B18B-BA8B4220B787
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On 14 Dec 2019, at 12:59, Thibaut <hacks@slashdirt.org> wrote:
>=20
>> On 14 Dec 2019, at 11:56, Kevin 'ldir' Darbyshire-Bryant =
<ldir@darbyshire-bryant.me.uk <mailto:ldir@darbyshire-bryant.me.uk>> =
wrote:
>>=20
>>=20
>> Brain fart!  The 2 different versions are there and we soe no =
difference in traffic/tin allocation.  However, could we see the ifb4wan =
instances of cake for both b0rken and unb0rken cases please?
>=20
> The plot thickens. I was eventually able to reproduce the same buggy =
behavior without the HEAD commit, *sigh*
>=20
> It appears that the bug happens randomly between consecutive module =
loads/unloads. It also appears that once the module is loaded in a =
=E2=80=9Cworking state=E2=80=9D it keeps working fine.
>=20
> I=E2=80=99m wondering if this could be an =E2=80=9Cuse of =
uninitialized data=E2=80=9D type of bug.

If that makes any difference, I=E2=80=99m using tc-adv 2f0d76d8 (i.e. =
current master HEAD)

Thibaut=

--Apple-Mail=_6101887E-A542-4AB6-B18B-BA8B4220B787
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D"">On =
14 Dec 2019, at 12:59, Thibaut &lt;<a href=3D"mailto:hacks@slashdirt.org" =
class=3D"">hacks@slashdirt.org</a>&gt; wrote:</div><div class=3D""><div =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">On 14 =
Dec 2019, at 11:56, Kevin 'ldir' Darbyshire-Bryant &lt;<a =
href=3D"mailto:ldir@darbyshire-bryant.me.uk" =
class=3D"">ldir@darbyshire-bryant.me.uk</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><br class=3D""><span =
class=3D"" style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;">Brain fart! &nbsp;The 2 =
different versions are there and we soe no difference in traffic/tin =
allocation. &nbsp;However, could we see the ifb4wan instances of cake =
for both b0rken and unb0rken cases please?</span><br class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;"></div></blockquote></div><br class=3D"" style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><div class=3D"" style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;">The plot thickens. I was eventually able to =
reproduce the same buggy behavior without the HEAD commit, =
*sigh*</div><div class=3D"" style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><br class=3D""></div><div class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;">It appears that =
the bug happens randomly between consecutive module loads/unloads. It =
also appears that once the module is loaded in a =E2=80=9Cworking =
state=E2=80=9D it keeps working fine.</div><div class=3D"" =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><br =
class=3D""></div><div class=3D"" style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;">I=E2=80=99m wondering if this could be an =E2=80=9C=
use of uninitialized data=E2=80=9D type of =
bug.</div></div></blockquote><div><br class=3D""></div>If that makes any =
difference, I=E2=80=99m using tc-adv&nbsp;2f0d76d8 (i.e. current master =
HEAD)</div><div><br class=3D""></div><div>Thibaut</div></body></html>=

--Apple-Mail=_6101887E-A542-4AB6-B18B-BA8B4220B787--

--===============5398854838105520149==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5398854838105520149==--

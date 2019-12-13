Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C0411EA98
	for <lists+cake@lfdr.de>; Fri, 13 Dec 2019 19:45:02 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 785D43CB4B;
	Fri, 13 Dec 2019 13:45:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1576262700;
	bh=HFQh3kflBoXYV+qpRArMxfNLUDm7VMHViwHPJ+/6Kz4=;
	h=From:Date:In-Reply-To:To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=njItSIxfWmGlIrTveQbg8FrhEDpc1kTvBg4+Kk+rOB+fI7e/M7ljrdt5UzS3H0bfY
	 6i/K/WwY3tpbXVhts4g1i6jZM70rGaMpyKOy/4hyWEeeVpoGDz18Z7aebEONyRPpMa
	 oZW0xM/MIxmWMC3gbiYLWxI5Q08PqkD4fimNIWeSynDPr7u5Hz7A5KvEE5FwuDs/ZQ
	 d8oRHqmCpGoQwL/mQ75W56b0jEXErTSvYiIINoE6BglLDps+RuhgBggCZFf5Q48W3o
	 sHZ4LKbTMLvw+Zhtxk2gYTAuXF87CXRsrD6p74XV1QXfhHzEYMtGrXZUBocWAfSK3C
	 z0xnSEo9Wg/sQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from vps.slashdirt.org (vps.slashdirt.org [144.91.108.218])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3AE023CB47
 for <cake@lists.bufferbloat.net>; Fri, 13 Dec 2019 13:44:59 -0500 (EST)
Received: from tama.lan (unknown [37.173.83.127])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id D66BF60068;
 Fri, 13 Dec 2019 19:44:57 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org D66BF60068
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1576262698; bh=B0UlQFGeXlCJHun/F6amiYUK6ayw9Lq11Yt3ckkO75c=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=EFaB6xQ5VNl19gA+5vkKYTdgk51G1WDJ2GCiJ+ZZoWsu3jE87Cd//UMWA+CtBbl5N
 G1yamf82KQZK2ayxCZ3gMPIxATeWuz0w4RiRnlPba/hxfuWz5WkOW/0BareUeHb0FL
 BWrAqViNnc+TXpTNdjCKQI1y10x5eDMcGcK5nBk4=
From: Thibaut <hacks@slashdirt.org>
Message-Id: <B455A371-7434-4FEA-8F9F-9A5AC3F15D87@slashdirt.org>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Fri, 13 Dec 2019 19:44:56 +0100
In-Reply-To: <68b10e0a9ee0fd087dfc4f15e2c66328@slashdirt.org>
To: Sebastian Moeller <moeller0@gmx.de>
References: <623C176A-C78F-4FFA-905D-C59F0131804F@gmx.de>
 <1d359153abfc413b4f61c647437427d6@slashdirt.org>
 <68b10e0a9ee0fd087dfc4f15e2c66328@slashdirt.org>
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
Cc: cake@lists.bufferbloat.net
Content-Type: multipart/mixed; boundary="===============7827380875573856562=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============7827380875573856562==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_797AAF7B-0E4F-477F-A478-7C1F773AA1F5"


--Apple-Mail=_797AAF7B-0E4F-477F-A478-7C1F773AA1F5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Sebastian,

> On 13 Dec 2019, at 15:21, Thibaut <hacks@slashdirt.org> wrote:
>=20
> Hi Sebastian,
>=20
> December 13, 2019 3:15 PM, "Sebastian Moeller" <moeller0@gmx.de> =
wrote:
>=20
>> Hi Thibaut,
>>=20
>> so ADSL is both special and precious, may I recommend to follow the =
instructions on
>> https://github.com/moeller0/ATM_overhead_detector?=20
>=20
> I will give it a try.

I=E2=80=99ll confess being a bit lazy as I didn=E2=80=99t go all the way =
up to parsing with Octave (which I=E2=80=99m not familiar with), but the =
output file is here:
http://vps.slashdirt.org/~varenet/ping_sweep__20191213_170053.txt.gz =
<http://vps.slashdirt.org/~varenet/ping_sweep__20191213_170053.txt.gz> =
(it=E2=80=99s 2.1M compressed)

>> In both cases
>> the results should be interesting. As a quick test, what is the =
textual output from the "Share Your
>> Results" box on https://www.speedguide.net/analyzer.php?
>=20
> I'll report when the buildslave is done uploading :)

As it turns out, it appears this website requires a fully fledged =
browser, but this is a remote headless setup I=E2=80=99m dealing with =
here: is there an alternative that can be CLI-friendly?

I hope this helps,
Thibaut=

--Apple-Mail=_797AAF7B-0E4F-477F-A478-7C1F773AA1F5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">Hi =
Sebastian,<br class=3D""><div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D"">On 13 Dec 2019, at 15:21, Thibaut &lt;<a =
href=3D"mailto:hacks@slashdirt.org" class=3D"">hacks@slashdirt.org</a>&gt;=
 wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"">Hi Sebastian,<br class=3D""><br class=3D"">December 13, 2019 =
3:15 PM, "Sebastian Moeller" &lt;<a href=3D"mailto:moeller0@gmx.de" =
class=3D"">moeller0@gmx.de</a>&gt; wrote:<br class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D"">Hi Thibaut,<br =
class=3D""><br class=3D"">so ADSL is both special and precious, may I =
recommend to follow the instructions on<br class=3D""><a =
href=3D"https://github.com/moeller0/ATM_overhead_detector?" =
class=3D"">https://github.com/moeller0/ATM_overhead_detector?</a> <br =
class=3D""></blockquote><br class=3D"">I will give it a try.<br =
class=3D""></div></div></blockquote><div><br class=3D""></div>I=E2=80=99ll=
 confess being a bit lazy as I didn=E2=80=99t go all the way up to =
parsing with Octave (which I=E2=80=99m not familiar with), but the =
output file is here:</div><div><a =
href=3D"http://vps.slashdirt.org/~varenet/ping_sweep__20191213_170053.txt.=
gz" =
class=3D"">http://vps.slashdirt.org/~varenet/ping_sweep__20191213_170053.t=
xt.gz</a>&nbsp;(it=E2=80=99s 2.1M compressed)</div><div><br =
class=3D""></div><div><blockquote type=3D"cite" class=3D""><div =
class=3D""><div class=3D""><blockquote type=3D"cite" class=3D"">In both =
cases<br class=3D"">the results should be interesting. As a quick test, =
what is the textual output from the "Share Your<br class=3D"">Results" =
box on <a href=3D"https://www.speedguide.net/analyzer.php?" =
class=3D"">https://www.speedguide.net/analyzer.php?</a><br =
class=3D""></blockquote><br class=3D"">I'll report when the buildslave =
is done uploading :)<br class=3D""></div></div></blockquote><div><br =
class=3D""></div><div>As it turns out, it appears this website requires =
a fully fledged browser, but this is a remote headless setup I=E2=80=99m =
dealing with here: is there an alternative that can be =
CLI-friendly?</div><div><br class=3D""></div><div>I hope this =
helps,</div><div>Thibaut</div></div></body></html>=

--Apple-Mail=_797AAF7B-0E4F-477F-A478-7C1F773AA1F5--

--===============7827380875573856562==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7827380875573856562==--

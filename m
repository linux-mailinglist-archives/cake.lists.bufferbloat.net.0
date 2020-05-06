Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD2B1C7516
	for <lists+cake@lfdr.de>; Wed,  6 May 2020 17:39:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B085E3CB46;
	Wed,  6 May 2020 11:39:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588779544;
	bh=h15tEnMK1BDHJtrj+r8pz+LUAqY1nDdrRVvICGeUQcc=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kT5yhdsCHHhIuwiJXmToA51vmBMzV9hAeZwXTy+HiSoR+VCqBy17xQ5RuDvJh+UTC
	 0sMW46oohVrz8hGl9Xiwp3b6pUahl34wmKAWRjWfJADGqe9eR3ScgSuJetkUdmU1ar
	 juxTSswPitP74nd2coXZWFHI2TwmwsBBXBUCv8mM/jqxYV/WOtF5tSAGHuDRkMY5yR
	 rW9bDhPatlT5JqRs7ymMVnlqGr70b2pqPCDnNksXTusoxrPjVgOiPaHjZhQfWAvdS9
	 kejbOlzRIO6w/QSkBzjDkJJuA5zlbXVBQHN8JQSgzb8nbrovTSKLrwfYcMCIi1UIPu
	 RwicZ5T7V2NtA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp87.iad3a.emailsrvr.com (smtp87.iad3a.emailsrvr.com
 [173.203.187.87])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7E2BD3CB37
 for <cake@lists.bufferbloat.net>; Wed,  6 May 2020 11:39:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1588779543;
 bh=BRq2HR+e5w/gz/qtuugExrgaJiMMsYlmIwEuNh2Ndk8=;
 h=Date:Subject:From:To:From;
 b=NpSQM+uH7MMQvx1UL17G/XePDtfXOgTv563FSOcg8Fu1YmvYDUBjpV61qSMQkBaq9
 0+6dPKHbmuTxyqGtVwSKQvmrwfVOzcy4oaHfQA72zPIIHIQ2O3lMe+QMbIqlaLL+I+
 xmrw9VLMHaUSPSWNoU5qo4WJAWIWRwmic9aw1cM0=
Received: from app35.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp11.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 25B4252E4;
 Wed,  6 May 2020 11:39:03 -0400 (EDT)
X-Sender-Id: dpreed@deepplum.com
Received: from app35.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140]) by 0.0.0.0:25 (trex/5.7.12);
 Wed, 06 May 2020 11:39:03 -0400
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app35.wa-webapps.iad3a (Postfix) with ESMTP id 10911A104E;
 Wed,  6 May 2020 11:39:03 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Wed, 6 May 2020 11:39:03 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Wed, 6 May 2020 11:39:03 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Sebastian Moeller" <moeller0@gmx.de>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <D61EB903-E580-4885-A064-6B6D5F325BBC@gmx.de>
References: <1588518416.66682155@apps.rackspace.com> 
 <CADN=VJnLagUAWtcRFO7jNL3oGA+vUQ4Z=2tkbYAsm0hyMGqnPQ@mail.gmail.com> 
 <D61EB903-E580-4885-A064-6B6D5F325BBC@gmx.de>
Message-ID: <1588779543.065923089@apps.rackspace.com>
X-Mailer: webmail/17.3.10-RC
X-Classification-ID: e635d89c-0d60-4873-9ecd-0327076ce7f9-1-1
Subject: [Cake] Slightly OT Re: [Make-wifi-fast] [Bloat] dslreports is no
	longer free
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
Cc: Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Jannie Hanekom <jannie@hanekom.net>, Cake List <cake@lists.bufferbloat.net>,
 Sergey Fedorov <sfedorov@netflix.com>, bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============4418836668191067785=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4418836668191067785==
Content-Type: multipart/alternative;boundary="----=_20200506113903000000_50998"

------=_20200506113903000000_50998
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AWhile the jury is still out for me on the "best" speed test to recommend=
 to my friends, family, and even enemies, I think the progression has been =
good.=0A =0AOriginally, I used to recommend the web-embedded Java test call=
ed Netalyzer from ICSI. That did extensive tests, and included tests that a=
re important to me like detecting DNS spoofing, various middlebox mucking w=
ith packets, ... as well as measuring lag under load in a simple way. But t=
hen I had to teach each person I recommended it to what everything meant. T=
hat was a BIG burden on me.=0A =0AThen I switched to dslreports.com, becaus=
e of several factors - it highlighted lag under load as a bufferbloat grade=
 that made sense.=0A =0ANow, I have to say that fast.com is likely to becom=
e my new recommendation. However, I have two issues with it. The biggest on=
e is that lag-under-load is obscured in the interface, as is the asymmetry =
of upload vs. download.=0A =0AThe problem for me is that I usually get aske=
d to recommend a test under circumstances where someone isn't looking for "=
bragging rights" but is experiencing a problem of disrupted service quality=
. The NUMBER ONE problem they usually have is the lag-under-load problem in=
 some form. But all they know is what "download speed" they bought.=0A =0AM=
any, many people are using videoconferencing now, not just web and TV watch=
ing. And that is hypersensitive to lag-under-load (also on WiFi due to airt=
ime scheduling).=0AAnd no one seems to be aware that their quality of exper=
ience is not about speed, but about instability of lag-under-load. So it's =
a new idea.=0A =0AYeah, I do once in a while want to know if my service is =
delivering the top speed advertised - just as I once in a while measure the=
 time of my car in the quarter mile on dragstrip :-)=0A =0ABut mostly I wan=
t to know what's making my *applications* so slow. And it's almost never th=
e case that they need a nitro-burning funny car level of speed. Instead, th=
ey need either: elimination of lag under load, or eliminating all the crap =
running in tabs on the browser (like animated JavaScript attention-seeking =
ads filling memory with garbage and causing the JS garbage collector to run=
 constantly).=0A =0ASo I would change fast.com, if I could, to emphasize th=
e *problems* (as netalyzer did) and not the speed.
------=_20200506113903000000_50998
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"3"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 12pt; overflow-wrap: break-word;">While the jury is stil=
l out for me on the "best" speed test to recommend to my friends, family, a=
nd even enemies, I think the progression has been good.</p>=0A<p style=3D"m=
argin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: break=
-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; fon=
t-size: 12pt; overflow-wrap: break-word;">Originally, I used to recommend t=
he web-embedded Java test called Netalyzer from ICSI. That did extensive te=
sts, and included tests that are important to me like detecting DNS spoofin=
g, various middlebox mucking with packets, ... as well as measuring lag und=
er load in a simple way. But then I had to teach each person I recommended =
it to what everything meant. That was a BIG burden on me.</p>=0A<p style=3D=
"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: bre=
ak-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; f=
ont-size: 12pt; overflow-wrap: break-word;">Then I switched to dslreports.c=
om, because of several factors - it highlighted lag under load as a bufferb=
loat grade that made sense.</p>=0A<p style=3D"margin:0;padding:0;font-famil=
y: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p styl=
e=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap:=
 break-word;">Now, I have to say that fast.com is likely to become my new r=
ecommendation. However, I have two issues with it. The biggest one is that =
lag-under-load is obscured in the interface, as is the asymmetry of upload =
vs. download.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font=
-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;=
padding:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">=
The problem for me is that I usually get asked to recommend a test under ci=
rcumstances where someone isn't looking for "bragging rights" but is experi=
encing a problem of disrupted service quality. The NUMBER ONE problem they =
usually have is the lag-under-load problem in some form. But all they know =
is what "download speed" they bought.</p>=0A<p style=3D"margin:0;padding:0;=
font-family: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; over=
flow-wrap: break-word;">Many, many people are using videoconferencing now, =
not just web and TV watching. And that is hypersensitive to lag-under-load =
(also on WiFi due to airtime scheduling).</p>=0A<p style=3D"margin:0;paddin=
g:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">And no=
 one seems to be aware that their quality of experience is not about speed,=
 but about instability of lag-under-load. So it's a new idea.</p>=0A<p styl=
e=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap:=
 break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: aria=
l; font-size: 12pt; overflow-wrap: break-word;">Yeah, I do once in a while =
want to know if my service is delivering the top speed advertised - just as=
 I once in a while measure the time of my car in the quarter mile on dragst=
rip :-)</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size:=
 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;paddin=
g:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">But mo=
stly I want to know what's making my *applications* so slow. And it's almos=
t never the case that they need a nitro-burning funny car level of speed. I=
nstead, they need either: elimination of lag under load, or eliminating all=
 the crap running in tabs on the browser (like animated JavaScript attentio=
n-seeking ads filling memory with garbage and causing the JS garbage collec=
tor to run constantly).</p>=0A<p style=3D"margin:0;padding:0;font-family: a=
rial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D=
"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: bre=
ak-word;">So I would change fast.com, if I could, to emphasize the *problem=
s* (as netalyzer did) and not the speed.</p></font>
------=_20200506113903000000_50998--


--===============4418836668191067785==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4418836668191067785==--


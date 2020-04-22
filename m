Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CDF1B3A05
	for <lists+cake@lfdr.de>; Wed, 22 Apr 2020 10:28:42 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8D2333CB42;
	Wed, 22 Apr 2020 04:28:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587544120;
	bh=jzjb5VC4hv2Zej88FhlXobpnxGOKO6o8iCnUYrZrUbo=;
	h=From:Date:In-Reply-To:To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Av+pKrOb0Idf8WSakHxt8/eR7fUt7me4LxTo+GGNlsuVO/ufBdGTna5iWB1i3Zmaa
	 d/muKf/Z0ijWRtLXkCkU+9uPC9An0alKO87rT/Wp1SIX1QbQZjt5C8I5igyqVDKfDt
	 vLuuVY21LGK0CrhtJk0GTMYzL3jjHOVmx8e/4tid8DEF/tLBMgVAIDoRWIFfxZ3Rbf
	 JNGA3xqK0sUhRQesEVVvVN0nFqWNnm/Kdiyj09YvVW2X9CpxW7+xWT2Z4kAKuS8kcz
	 b5cjDPVAmTCe3kaRP7qux4C9HvqZipUjTiZbrBbTvwbF79meEFrnqU0lnMIvu71mGl
	 hOwUmLwXyqH6w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from vps.slashdirt.org (vps.slashdirt.org [144.91.108.218])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E34843B29D
 for <cake@lists.bufferbloat.net>; Wed, 22 Apr 2020 04:28:38 -0400 (EDT)
Received: from chuck.tardis.lan (tardis.herebedragons.eu [171.22.3.161])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 9C9C260075;
 Wed, 22 Apr 2020 10:28:37 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 9C9C260075
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587544117; bh=rYf2pw1855Lfah/xdttTi6vc0BvjwkLD6t99IL8MMm8=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=nA0MANZ//yJ4QOUlpMfwTkgAWm6xAo9ZoAvtHJWibNNC5uTGbnP0DZQbxWJfMkQ6q
 64TzhnmeFudrEudb8Zwph1YqDkwV9kP8EzJVMqM35K/3eeOj7GSX14SQ8ikoRQQhEJ
 j3miphQiPgJBZ/AsjhjJDRkct49X88bnC5cxY6O0=
From: Thibaut <hacks@slashdirt.org>
Message-Id: <E0E47C9C-F9AD-49B1-91D1-4B5CD4A8922F@slashdirt.org>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
Date: Wed, 22 Apr 2020 10:28:36 +0200
In-Reply-To: <CAA93jw5yvybv+aXH4NLd1r_8xSP2CPwzeh0q6wm1c26jLPBxag@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
References: <d3f45591-7359-47a6-bd0b-f89f9b49c5a7@www.fastmail.com>
 <75FEC2D9-BFC8-4FA2-A972-D11A823C5528@gmail.com>
 <CAA93jw7kfSjuQP2j8uX5-+hs2PBLNZ6c0=tV=PjZE50fQ1oFLw@mail.gmail.com>
 <AAAE0AE6-BA8C-4236-A68D-C5A4CF7DFEDA@slashdirt.org>
 <603DFF79-D0C0-41BD-A2FB-E40B95A9CBB0@gmail.com>
 <CAA93jw5yvybv+aXH4NLd1r_8xSP2CPwzeh0q6wm1c26jLPBxag@mail.gmail.com>
X-Mailer: Apple Mail (2.3445.104.14)
Subject: Re: [Cake] Advantages to tightly tuning latency
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============5691385590501842192=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============5691385590501842192==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_2844F9D9-1C1E-423E-B29D-94BD946A0212"


--Apple-Mail=_2844F9D9-1C1E-423E-B29D-94BD946A0212
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> Le 22 avr. 2020 =C3=A0 00:44, Dave Taht <dave.taht@gmail.com> a =C3=A9cr=
it :
>=20
> On Tue, Apr 21, 2020 at 3:33 PM Jonathan Morton =
<chromatix99@gmail.com> wrote:
>>=20
>>> On 22 Apr, 2020, at 1:25 am, Thibaut <hacks@slashdirt.org> wrote:
>>>=20
>>> My curiosity is piqued. Can you elaborate on this? What does free.fr =
do?
>>=20
>> They're a large French ISP.  They made their own CPE devices, and =
debloated both them and their network quite a while ago.  In that sense, =
at least, they're a model for others to follow - but few have.
>>=20
>> - Jonathan Morton
>=20
> they are one of the few ISPs that insisted on getting full source code
> to their DSL stack, and retained the chops to be able to modify it. I
> really admire their revolution v6 product. First introduced in 2010,
> it's been continuously updated, did ipv6 at the outset, got fq_codel
> when it first came out, and they update the kernel regularly. All
> kinds of great features on it, and ecn is enabled by default for those
> also (things like samba). over 3 million boxes now I hear....
>=20
> with <1ms of delay in the dsl driver, they don't need to shape, they
> just run at line rate using three tiers of DRR that look a lot like
> cake. They shared their config with me, and before I lost heart for
> future internet drafts, I'd stuck it here:
>=20
> =
https://github.com/dtaht/bufferbloat-rfcs/blob/master/home_gateway_queue_m=
anagement/middle.mkd =
<https://github.com/dtaht/bufferbloat-rfcs/blob/master/home_gateway_queue_=
management/middle.mkd>

Very interesting, thanks. I wonder if they trickled down these =
improvements to the older V5: I had to plug my old V5 back after my =
DSLAM was moved to native IPV6 (I couldn=E2=80=99t find how to talk to =
it over VDSL2 modem, as I did before the switch), and though there was a =
massive drop in uplink bandwidth (from 10Mbps VDSL2 to 1Mbps ADSL), I =
noticed that I no longer needed cake on the router wan interface. =
Latency remained very well controlled without having to do anything =
special. In fact, enabling cake with the previous settings was wrecking =
havoc! (Maybe it interfered with whatever Free is doing in the box).

> Occasionally they share some data with me. Sometimes I wish I lived in
> paris just so I could have good internet! (their fiber offering is
> reasonably buffered (not fq_codeled) and the wifi... maybe I can get
> them to talk about what they did)

You don=E2=80=99t have to live in Paris to enjoy good internet: I=E2=80=99=
m currently stranded in the countryside and I enjoy a better connection =
than many a Parisian, thanks to a public/private FTTH network that =
appears to be very well handled by my current ISP (K-Net) :)

> When free.fr shipped fq_codel 2 months after we finalized it, I
> figured the rest of the world was only months behind. How hard is it
> to add 50 lines of BQL oriented code to a DSL firmware?

Heh.

Cheers,
Thibaut=

--Apple-Mail=_2844F9D9-1C1E-423E-B29D-94BD946A0212
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">Le 22 avr. 2020 =C3=A0 00:44, Dave Taht &lt;<a =
href=3D"mailto:dave.taht@gmail.com" class=3D"">dave.taht@gmail.com</a>&gt;=
 a =C3=A9crit :</div><br class=3D"Apple-interchange-newline"><div =
class=3D""><div class=3D"">On Tue, Apr 21, 2020 at 3:33 PM Jonathan =
Morton &lt;<a href=3D"mailto:chromatix99@gmail.com" =
class=3D"">chromatix99@gmail.com</a>&gt; wrote:<br class=3D""><blockquote =
type=3D"cite" class=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D"">On 22 Apr, 2020, at 1:25 am, Thibaut &lt;<a =
href=3D"mailto:hacks@slashdirt.org" class=3D"">hacks@slashdirt.org</a>&gt;=
 wrote:<br class=3D""><br class=3D"">My curiosity is piqued. Can you =
elaborate on this? What does <a href=3D"http://free.fr" =
class=3D"">free.fr</a> do?<br class=3D""></blockquote><br =
class=3D"">They're a large French ISP. &nbsp;They made their own CPE =
devices, and debloated both them and their network quite a while ago. =
&nbsp;In that sense, at least, they're a model for others to follow - =
but few have.<br class=3D""><br class=3D""> - Jonathan Morton<br =
class=3D""></blockquote><br class=3D"">they are one of the few ISPs that =
insisted on getting full source code<br class=3D"">to their DSL stack, =
and retained the chops to be able to modify it. I<br class=3D"">really =
admire their revolution v6 product. First introduced in 2010,<br =
class=3D"">it's been continuously updated, did ipv6 at the outset, got =
fq_codel<br class=3D"">when it first came out, and they update the =
kernel regularly. All<br class=3D"">kinds of great features on it, and =
ecn is enabled by default for those<br class=3D"">also (things like =
samba). over 3 million boxes now I hear....<br class=3D""><br =
class=3D"">with &lt;1ms of delay in the dsl driver, they don't need to =
shape, they<br class=3D"">just run at line rate using three tiers of DRR =
that look a lot like<br class=3D"">cake. They shared their config with =
me, and before I lost heart for<br class=3D"">future internet drafts, =
I'd stuck it here:<br class=3D""><br class=3D""><a =
href=3D"https://github.com/dtaht/bufferbloat-rfcs/blob/master/home_gateway=
_queue_management/middle.mkd" =
class=3D"">https://github.com/dtaht/bufferbloat-rfcs/blob/master/home_gate=
way_queue_management/middle.mkd</a><br =
class=3D""></div></div></blockquote><div><br class=3D""></div>Very =
interesting, thanks. I wonder if they trickled down these improvements =
to the older V5: I had to plug my old V5 back after my DSLAM was moved =
to native IPV6 (I couldn=E2=80=99t find how to talk to it over VDSL2 =
modem, as I did before the switch), and though there was a massive drop =
in uplink bandwidth (from 10Mbps VDSL2 to 1Mbps ADSL), I noticed that I =
no longer needed cake on the router wan interface. Latency remained very =
well controlled without having to do anything special. In fact, enabling =
cake with the previous settings was wrecking havoc! (Maybe it interfered =
with whatever Free is doing in the box).</div><div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"">Occasionally they share some data with me. Sometimes I wish I =
lived in<br class=3D"">paris just so I could have good internet! (their =
fiber offering is<br class=3D"">reasonably buffered (not fq_codeled) and =
the wifi... maybe I can get<br class=3D"">them to talk about what they =
did)<br class=3D""></div></div></blockquote><div><br class=3D""></div>You =
don=E2=80=99t have to live in Paris to enjoy good internet: I=E2=80=99m =
currently stranded in the countryside and I enjoy a better connection =
than many a Parisian, thanks to a public/private FTTH network that =
appears to be very well handled by my current ISP (K-Net) =
:)</div><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div class=3D"">When <a href=3D"http://free.fr" =
class=3D"">free.fr</a> shipped fq_codel 2 months after we finalized it, =
I<br class=3D"">figured the rest of the world was only months behind. =
How hard is it<br class=3D"">to add 50 lines of BQL oriented code to a =
DSL firmware?<br class=3D""></div></div></blockquote><div><br =
class=3D""></div>Heh.</div><div><br =
class=3D""></div><div>Cheers,</div><div>Thibaut</div></body></html>=

--Apple-Mail=_2844F9D9-1C1E-423E-B29D-94BD946A0212--

--===============5691385590501842192==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5691385590501842192==--

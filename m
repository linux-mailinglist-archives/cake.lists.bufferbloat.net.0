Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A921F1B329F
	for <lists+cake@lfdr.de>; Wed, 22 Apr 2020 00:25:59 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3D28A3CB42;
	Tue, 21 Apr 2020 18:25:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587507958;
	bh=NqY3pcDlWhzJU7TgXl44KG66gBeYI2ej0sJSPsCzWtM=;
	h=From:Date:In-Reply-To:To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iFTKpMTFjTC2CVpOJkMbwdDckP09s5avxNSi37fbYZ7m672tok4GiA6lOukZIqhj8
	 AatNPWWM6kEPpiIWGND2w/Ngzyzh4SNC8CxtxCopHns8KjsbyU+fFCsWZZ3iUQ4C4S
	 8+IU3ht3GYeEV7XluMwFDgJI7RNvNDtHV+rHpPp1LwmijSnNN7YAQdRX7WOAeuEjtE
	 i6TU4DaffzBn+I9Hlp4rX1bH11WDfULk44TI92b520Smcp4B0K7Ckjtax7n4cU6c8E
	 ngRT9Kqk/5G/cz9ponDK/XLlhmxk9z7xHAKhvvBNJwkzjugb7aAjmV29fn29G7EU6Q
	 KR9YMbbzEW5uA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from vps.slashdirt.org (vps.slashdirt.org [144.91.108.218])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1A7603B29D
 for <cake@lists.bufferbloat.net>; Tue, 21 Apr 2020 18:25:57 -0400 (EDT)
Received: from chuck.tardis.lan (tardis.herebedragons.eu [171.22.3.161])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id CB526600A9;
 Wed, 22 Apr 2020 00:25:55 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org CB526600A9
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1587507956; bh=rjwKtEOXK4jgpDx9SAm0xlFuoooBKdScOxOD0Ck4vEA=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=r3jEif/zIjxBQPmb8D6oxm3+M3yD6TUnHxQ6JaQzU6yN79i0vRb8GavntVg3nXc64
 /opG9ICEsWJCObmLo7W5BJXc+lMVCAkjhO4JRSkGeKOvQWhGtVvwwG8PZmDC1Xl56a
 1Oa+KmBrUf0hV9cFbI9Z+UP0YVLuHgfFCqaEbcWA=
From: Thibaut <hacks@slashdirt.org>
Message-Id: <AAAE0AE6-BA8C-4236-A68D-C5A4CF7DFEDA@slashdirt.org>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
Date: Wed, 22 Apr 2020 00:25:55 +0200
In-Reply-To: <CAA93jw7kfSjuQP2j8uX5-+hs2PBLNZ6c0=tV=PjZE50fQ1oFLw@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
References: <d3f45591-7359-47a6-bd0b-f89f9b49c5a7@www.fastmail.com>
 <75FEC2D9-BFC8-4FA2-A972-D11A823C5528@gmail.com>
 <CAA93jw7kfSjuQP2j8uX5-+hs2PBLNZ6c0=tV=PjZE50fQ1oFLw@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5822791421118460878=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============5822791421118460878==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_5C6C3759-3008-4C78-91B6-B51389B7DCFD"


--Apple-Mail=_5C6C3759-3008-4C78-91B6-B51389B7DCFD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi,

> Le 21 avr. 2020 =C3=A0 20:44, Dave Taht <dave.taht@gmail.com> a =C3=A9cr=
it :
>=20
> It has always been my dream, that at least for outbound, there would
> be sufficient backpressure from the driver
> to not have to shape at all, or monitor the link. We have that now in
> BQL and AQL. free.fr's dsl driver "does the right thing" - no other
> dsl driver does.

My curiosity is piqued. Can you elaborate on this? What does free.fr =
<http://free.fr/> do?

Thanks,
Thibaut

> Nor usb network devices. I hope more folk roll up
> their sleeves and test the ath10k some, it's looking lovely from here.
>=20
> https://forum.openwrt.org/t/aql-and-the-ath10k-is-lovely/
>=20
> next up either the new mediatek chip or intel..
>=20
> On Tue, Apr 21, 2020 at 11:40 AM Jonathan Morton =
<chromatix99@gmail.com> wrote:
>>=20
>>> On 21 Apr, 2020, at 9:22 pm, Justin Kilpatrick <justin@althea.net> =
wrote:
>>>=20
>>> I have a frequently changing link I'm using automated tools to =
monitor and tune using Cake. Currently I'm only tuning bandwidth =
parameter using latency and packet loss data.
>>>=20
>>> My reading of the codel RFC seems to say that trying to tune the =
'interval' value using known path and link latency won't provide any =
advantages over just tuning the bandwidth parameter.
>>>=20
>>> Obviously codel is just one part of the Cake setup and I'm wondering =
if there are any advantages I'm missing by not providing this extra =
input using data I already gather.
>>=20
>> The default latency parameters are tuned well for general Internet =
paths.  The median path length on the public Internet is about 80ms, for =
which the default interval of 100ms and target of 5ms works well.  Codel =
is also designed to accommodate a significant deviation from the =
expected path length without too much difficulty.
>>=20
>> I think it's only worth trying to adjust this if your typical path is =
substantially different from that norm.  If all your traffic goes over a =
satellite link, for example, the default parameters might be too tight.  =
If the vast majority of it goes to a local CDN, you could try the =
"metro" keyword to tighten things up a bit.  Otherwise, you'll be fine.
>>=20
>> Also, most protocols are actually not very sensitive to how tight the =
AQM is set in the first place.  Either they don't really care about =
latency at all (eg. bulk downloads) or they are latency-sensitive but =
also sparse (eg. DNS, NTP, VoIP).  So they are more interested in being =
isolated from the influence of other flows, which Cake does pretty well =
regardless of the AQM settings.
>>=20
>> It's *considerably* more important to ensure that your shaper is =
configured correctly.  That means setting not only the bandwidth =
parameter, but the overhead parameters as well.  A bad shaper setting =
could result in some or all of your traffic not seeing Cake as the =
effective bottleneck, and thus not receiving its care.  This can be an =
orders-of-magnitude effect, depending on just how bloated the underlying =
hardware is.
>>=20
>> - Jonathan Morton
>> _______________________________________________
>> Cake mailing list
>> Cake@lists.bufferbloat.net
>> https://lists.bufferbloat.net/listinfo/cake
>=20
>=20
>=20
> --=20
> Make Music, Not War
>=20
> Dave T=C3=A4ht
> CTO, TekLibre, LLC
> http://www.teklibre.com
> Tel: 1-831-435-0729
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake


--Apple-Mail=_5C6C3759-3008-4C78-91B6-B51389B7DCFD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Hi,<br class=3D""><div><br class=3D""><blockquote type=3D"cite"=
 class=3D""><div class=3D"">Le 21 avr. 2020 =C3=A0 20:44, Dave Taht =
&lt;<a href=3D"mailto:dave.taht@gmail.com" =
class=3D"">dave.taht@gmail.com</a>&gt; a =C3=A9crit :</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div class=3D"">It =
has always been my dream, that at least for outbound, there would<br =
class=3D"">be sufficient backpressure from the driver<br class=3D"">to =
not have to shape at all, or monitor the link. We have that now in<br =
class=3D"">BQL and AQL. <a href=3D"http://free.fr" =
class=3D"">free.fr</a>'s dsl driver "does the right thing" - no other<br =
class=3D"">dsl driver does. </div></div></blockquote><div><br =
class=3D""></div><div>My curiosity is piqued. Can you elaborate on this? =
What does <a href=3D"http://free.fr" =
class=3D"">free.fr</a>&nbsp;do?</div><div><br =
class=3D""></div><div>Thanks,</div><div>Thibaut</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"">Nor usb network devices. I hope more folk roll up<br =
class=3D"">their sleeves and test the ath10k some, it's looking lovely =
from here.<br class=3D""><br class=3D""><a =
href=3D"https://forum.openwrt.org/t/aql-and-the-ath10k-is-lovely/" =
class=3D"">https://forum.openwrt.org/t/aql-and-the-ath10k-is-lovely/</a><b=
r class=3D""><br class=3D"">next up either the new mediatek chip or =
intel..<br class=3D""><br class=3D"">On Tue, Apr 21, 2020 at 11:40 AM =
Jonathan Morton &lt;chromatix99@gmail.com&gt; wrote:<br =
class=3D""><blockquote type=3D"cite" class=3D""><br class=3D""><blockquote=
 type=3D"cite" class=3D"">On 21 Apr, 2020, at 9:22 pm, Justin Kilpatrick =
&lt;justin@althea.net&gt; wrote:<br class=3D""><br class=3D"">I have a =
frequently changing link I'm using automated tools to monitor and tune =
using Cake. Currently I'm only tuning bandwidth parameter using latency =
and packet loss data.<br class=3D""><br class=3D"">My reading of the =
codel RFC seems to say that trying to tune the 'interval' value using =
known path and link latency won't provide any advantages over just =
tuning the bandwidth parameter.<br class=3D""><br class=3D"">Obviously =
codel is just one part of the Cake setup and I'm wondering if there are =
any advantages I'm missing by not providing this extra input using data =
I already gather.<br class=3D""></blockquote><br class=3D"">The default =
latency parameters are tuned well for general Internet paths. &nbsp;The =
median path length on the public Internet is about 80ms, for which the =
default interval of 100ms and target of 5ms works well. &nbsp;Codel is =
also designed to accommodate a significant deviation from the expected =
path length without too much difficulty.<br class=3D""><br class=3D"">I =
think it's only worth trying to adjust this if your typical path is =
substantially different from that norm. &nbsp;If all your traffic goes =
over a satellite link, for example, the default parameters might be too =
tight. &nbsp;If the vast majority of it goes to a local CDN, you could =
try the "metro" keyword to tighten things up a bit. &nbsp;Otherwise, =
you'll be fine.<br class=3D""><br class=3D"">Also, most protocols are =
actually not very sensitive to how tight the AQM is set in the first =
place. &nbsp;Either they don't really care about latency at all (eg. =
bulk downloads) or they are latency-sensitive but also sparse (eg. DNS, =
NTP, VoIP). &nbsp;So they are more interested in being isolated from the =
influence of other flows, which Cake does pretty well regardless of the =
AQM settings.<br class=3D""><br class=3D"">It's *considerably* more =
important to ensure that your shaper is configured correctly. &nbsp;That =
means setting not only the bandwidth parameter, but the overhead =
parameters as well. &nbsp;A bad shaper setting could result in some or =
all of your traffic not seeing Cake as the effective bottleneck, and =
thus not receiving its care. &nbsp;This can be an orders-of-magnitude =
effect, depending on just how bloated the underlying hardware is.<br =
class=3D""><br class=3D""> - Jonathan Morton<br =
class=3D"">_______________________________________________<br =
class=3D"">Cake mailing list<br class=3D"">Cake@lists.bufferbloat.net<br =
class=3D"">https://lists.bufferbloat.net/listinfo/cake<br =
class=3D""></blockquote><br class=3D""><br class=3D""><br class=3D"">-- =
<br class=3D"">Make Music, Not War<br class=3D""><br class=3D"">Dave =
T=C3=A4ht<br class=3D"">CTO, TekLibre, LLC<br =
class=3D"">http://www.teklibre.com<br class=3D"">Tel: 1-831-435-0729<br =
class=3D"">_______________________________________________<br =
class=3D"">Cake mailing list<br class=3D"">Cake@lists.bufferbloat.net<br =
class=3D"">https://lists.bufferbloat.net/listinfo/cake<br =
class=3D""></div></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_5C6C3759-3008-4C78-91B6-B51389B7DCFD--

--===============5822791421118460878==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5822791421118460878==--

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB286524A4
	for <lists+cake@lfdr.de>; Tue, 20 Dec 2022 17:31:39 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id BB14A3CB39;
	Tue, 20 Dec 2022 11:31:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1671553897;
	bh=aYUEMU3ihTaldrO3hydSYzCXw9MyVCAzadLkzTbphCc=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=PJbL805uGRmU2yIUHvQUqJdocepy7D9e4vU+OSPaASKtQfJdV0Ki6BZCqAJfMogL8
	 GKenzSbrtvta35Rj+uP/84SG/zcB+VPeEUNDGSwqRkLH8SOY97/8JJI+Y9SnFMUgNk
	 OGUnMAQMQl4pEAndkfxtwuhrq7rfWeEzn+2AruMj7+tvy2uvtBTNOhT0GxWafj/N5d
	 PzElu5P66RPMEvHTc6BiAqcMMaLa1WWKbsAlSfw5hHK71UKzrEp3ZZ5akum2BIxnWh
	 LFN2axuHZXgfo5E3zX7ah7McvJLoGSHJz4lPjldWnvhILL+BuVdXjZxi9nzJ7o4GMl
	 Dnzp4sWmwxrmQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B80C23B29D
 for <cake@lists.bufferbloat.net>; Tue, 20 Dec 2022 11:31:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de; s=s31663417;
 t=1671553895; bh=RGKoH6XT3QT/l3wASpzsWxXIVgEhhM7r1Elko+u62q0=;
 h=X-UI-Sender-Class:Date:From:To:CC:Subject:In-Reply-To:References;
 b=fpRSNFkcwRKfDKu6zkz1nbFYpPNnn4oBqohGcoa57MLDUENoxk4qxLgGBF1d8UM53
 9xFKQjkaAFLtwvRddUFo8pSK/HRT670nYsDwkuH5FfDwRcFmBiKwL4S/Y5MwHyIuV0
 mtcrCLfxWyX3kKOfJs0es6tcaEeoeEw8bTsCIn/cVSZpjyuaFGsiHvTUIYpa6HjKsi
 xcwP6V1RrfNIkZ2e0knrQrj6d745U+ks2TKSLIUD498NtLVbpRqDF1CRJSIKMC1mvT
 ADJPiVSTjq/tVtC7ctFF5sBRaqj6Y9MmpAQVKhDUEo+FxJKOoKUxpRwrvrJjhdGOS8
 HpGX6n7J3lnSg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [127.0.0.1] ([134.76.241.253]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M6lpG-1pFwjI3a2g-008LuF; Tue, 20
 Dec 2022 17:31:34 +0100
Date: Tue, 20 Dec 2022 17:31:32 +0100
To: Dave Taht <dave.taht@gmail.com>
User-Agent: K-9 Mail for Android
In-Reply-To: <CAA93jw7JBZJLPZgW4sBPTqQ+1zpxsJAV4+zSw6--CBXaZE3Rdg@mail.gmail.com>
References: <B48E5791-DFD7-4EFF-8B7E-4626CE89954B@gmx.de>
 <CAA93jw7JBZJLPZgW4sBPTqQ+1zpxsJAV4+zSw6--CBXaZE3Rdg@mail.gmail.com>
Message-ID: <3529CCC9-43EA-441F-8C9C-9C256DAB0E7F@gmx.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:sCjZv2uplpKw4j6lgXnJp7YcECogTj7ZrL4R2rLhdaCNeAwMnKY
 Omghmq4KS9EWSgzt+kojdl24ypeApyYE1o/7FlyXp32qFGqI+aJStXlvrqN/cnE/RAtxaAr
 WOyVA5g26Jc8IN+qit/tY6HxpYAvkMUvN7t/kyQHtRFLjG4Rvdp8N7XN62Hoxd7aZpfGNS9
 CkbGiqTTtYQdm1gp2mUuA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Olxyk8hIbH0=;DXS5SREc1Zc+Ik0am6/O1x0clgh
 NCLf8QEfN7hFvlAbqD2zOfXWpQ43VZZyQDkZ6wIix8K2sDcp55GH01sEOnPtaERrmeksNiJHP
 BuALq91zSZ9gB8QMWwc48rVDKtruxwryYpKqz8+R0VH9uY927r2qMASMyAZNWb+WuQhlV+t+R
 Ee/jLWh5JzrtBratkzjxOiRoDKa8jSl3SxspUofcLCwNuksNghQlVM4ls7PU0LuBWBTO9CV3z
 Esifa+JNIwuiqAKQ9PlNX4cAeGgW2x+JcMj84szidi7ptoabu/hyVvK8kJYMG/BJg19mqCrqH
 QCv+NRqmdkkXH8CqZl68yINIGtxhB1x4K5maDw66y2akQDpI0istaCvgt8a1Sih34XRrF60oS
 gubvhkwanEQxBBzBfr1Fsjmj1gi3iNR+3zGt1aeR9Yai1CQF9UUo4XvExFzv2zXgrKWmgzj8a
 nC0hA6vd82ClAn9dKp8E1OHW7LRt4HOmkIYq/StKFEh6qfyN/wcmdffa9xadh5Dg7RTriHdPy
 GJ0cYm0qrBd9C/MQrPiX3quIOkQ93nV+IcPpA7O9NPNZVMIOAR6g3OdnAhWcSnPmH2EoEHcOo
 yDga6L8OO5MYiF5YZQ+cJpdVo3V/g9/3bIxh39JgubZ8+N8agw0I9FrCHNzyM1Tp5s9xihigw
 hIyA49I3TNyqexFWFjQhTKsWeYCwwfPCpatsxAA8RguE+qlbcX+nUEZtBuM9nZdAbSMsB+/B+
 vaWCmdYehlZJoJg/hRgK8PtCedyWxDWoWCMVv7xnkQpw4WpRuneUkgY/DDcwQ2617RV84eMeL
 Xekz+MBsOHb9Funtf3tv/ID85A8jirj71yOa/3zOfCCUnttzX4xWBTAHaWdXlrzaI1bSL3YhH
 Mhe/x8c+5dkcp3UJA86B1FphDhxYhx0dOoeNwd3zm/rIzOUCl0aTXON8+gz7I5ZV4azP2yVUT
 F+rOVuZD5SHdIqZeHYxtTJ5+8uU=
Subject: Re: [Cake] AVM seems to be shipping cake
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
From: Sebastian Moeller via Cake <cake@lists.bufferbloat.net>
Reply-To: Sebastian Moeller <moeller0@gmx.de>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============1977984051485657003=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1977984051485657003==
Content-Type: multipart/alternative;
 boundary=----TS9MCP7ZT44CRAPTICCVXYZS4KN1Q9
Content-Transfer-Encoding: 7bit

------TS9MCP7ZT44CRAPTICCVXYZS4KN1Q9
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

In the positive spirit of the season:
nice to see DSL entering the cake-party before becomIng obsolete ;)

My bigger unanswered question is, did they implement a BQL equivalent for =
the DSL modem? My gut feeling is likely not as that part likely is under co=
ntrol of maxlinear's SDK=2E


On 20 December 2022 17:12:37 CET, Dave Taht <dave=2Etaht@gmail=2Ecom> wrot=
e:
>Yay! 260 more countries to go!
>
>On Tue, Dec 20, 2022 at 7:46 AM Sebastian Moeller via Cake
><cake@lists=2Ebufferbloat=2Enet> wrote:
>>
>> Dear all,
>>
>> just had a look in a recent firmware archive for AVM's fritzbox 7530, a=
nd 'strings dsld' (dsld is AVM's single blob "magic binary dsl deamon" that=
 encapsulates a lot of their value proposition) reveals that they likely ar=
e using cake*:
>>
>> qdisc add dev %s handle 10:0 root cake bandwidth %ukbit besteffort %s %=
s dual-dsthost ingress
>> qdisc add dev %s handle 10:0 root cake bandwidth %ukbit besteffort over=
head %d dual-dsthost ingress
>>
>>
>> I failed to find the matching dual-srchost entry so they might use some=
thing else for egress=2E I have no insight whether/how this can be actiated=
 (not using a fb7530 myself), but at least this is making it out to the unw=
ashed masses in Germany=2E=2E=2E (The FB7530 is the "value" box for the mos=
t recent DSL variant deployed in Germany, profile 35b vectoring, sold under=
 the moniker "super-vectoring")=2E
>>
>>
>> *) makes sense some months ago they posted a video promising enhances f=
airness for internal users, I was puzzled at the time how they would implem=
ent that, but it seems that they did not re-invent the wheel here but went =
for
>>
>> Regards
>>         Sebastian
>>
>> P=2ES=2E: To my joy they also seem to diligently set overhead, for thei=
r HTB/TBF instances using tc-stab=2E=2E=2E
>> _______________________________________________
>> Cake mailing list
>> Cake@lists=2Ebufferbloat=2Enet
>> https://lists=2Ebufferbloat=2Enet/listinfo/cake
>
>
>
>--=20
>This song goes out to all the folk that thought Stadia would work:
>https://www=2Elinkedin=2Ecom/posts/dtaht_the-mushroom-song-activity-69813=
66665607352320-FXtz
>Dave T=C3=A4ht CEO, TekLibre, LLC

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
------TS9MCP7ZT44CRAPTICCVXYZS4KN1Q9
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>In the positive spirit of the season:<br>nice to s=
ee DSL entering the cake-party before becomIng obsolete ;)<br><br>My bigger=
 unanswered question is, did they implement a BQL equivalent for the DSL mo=
dem? My gut feeling is likely not as that part likely is under control of m=
axlinear's SDK=2E<br><br><br><div class=3D"gmail_quote">On 20 December 2022=
 17:12:37 CET, Dave Taht &lt;dave=2Etaht@gmail=2Ecom&gt; wrote:<blockquote =
class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1p=
x solid rgb(204, 204, 204); padding-left: 1ex;">
<pre dir=3D"auto" class=3D"k9mail">Yay! 260 more countries to go!<br><br>O=
n Tue, Dec 20, 2022 at 7:46 AM Sebastian Moeller via Cake<br>&lt;cake@lists=
=2Ebufferbloat=2Enet&gt; wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin: 0pt 0pt 1ex 0=2E8ex; border-left: 1px solid #729fcf; padding-le=
ft: 1ex;"><br> Dear all,<br><br> just had a look in a recent firmware archi=
ve for AVM's fritzbox 7530, and 'strings dsld' (dsld is AVM's single blob "=
magic binary dsl deamon" that encapsulates a lot of their value proposition=
) reveals that they likely are using cake*:<br><br> qdisc add dev %s handle=
 10:0 root cake bandwidth %ukbit besteffort %s %s dual-dsthost ingress<br> =
qdisc add dev %s handle 10:0 root cake bandwidth %ukbit besteffort overhead=
 %d dual-dsthost ingress<br><br><br> I failed to find the matching dual-src=
host entry so they might use something else for egress=2E I have no insight=
 whether/how this can be actiated (not using a fb7530 myself), but at least=
 this is making it out to the unwashed masses in Germany=2E=2E=2E (The FB75=
30 is the "value" box for the most recent DSL variant deployed in Germany, =
profile 35b vectoring, sold under the moniker "super-vectoring")=2E<br><br>=
<br> *) makes sense some months ago they posted a video promising enhances =
fairness for internal users, I was puzzled at the time how they would imple=
ment that, but it seems that they did not re-invent the wheel here but went=
 for<br><br> Regards<br>         Sebastian<br><br> P=2ES=2E: To my joy they=
 also seem to diligently set overhead, for their HTB/TBF instances using tc=
-stab=2E=2E=2E<hr> Cake mailing list<br> Cake@lists=2Ebufferbloat=2Enet<br>=
 <a href=3D"https://lists=2Ebufferbloat=2Enet/listinfo/cake">https://lists=
=2Ebufferbloat=2Enet/listinfo/cake</a><br></blockquote><br><br><br></pre></=
blockquote></div><div class=3D'k9mail-signature'>-- <br>Sent from my Androi=
d device with K-9 Mail=2E Please excuse my brevity=2E</div></body></html>
------TS9MCP7ZT44CRAPTICCVXYZS4KN1Q9--

--===============1977984051485657003==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1977984051485657003==--

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3783740034B
	for <lists+cake@lfdr.de>; Fri,  3 Sep 2021 18:29:35 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B4DA93CB42;
	Fri,  3 Sep 2021 12:29:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1630686573;
	bh=cL+/ULVFtzQwtiXVvNHobZMf5O3murEosvUDvA5To3A=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=p4KoZilQbOej4V8S7cKUSH2SGFfMWtzdmgrH0HF8nsQGQz09om9HN2HFE1L2VUWAH
	 3jYFKhKHYxBXBNJRX4uX/mBfeL+VOyGVguSL1Km/p1VYQz7IJ814na5jfQT1xVRb1X
	 E99CmsZLP8PVew2kpIy7Z4Wu5CA5ZlPr7lsouNRBYj9JU7RK8z2P3ryTVQ3wh9a7YB
	 WYBNstmiKSDTXBANF/RNGQd4TyDvUt6qlHR4o73/owmAjJr12n2vv7rFel4sBBCEqT
	 LGtanFscfBqNzNiCm9ZGnXmRo92rgdM7JFZ1uAvyA5/jQEEJGHbH9xEWwAg4X9f4/e
	 KkgWt74KXrveA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 355CC3B29E
 for <cake@lists.bufferbloat.net>; Fri,  3 Sep 2021 12:29:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1630686544;
 bh=aXHfslRPTunbLzKCah1AFaOFtpZ4r+wJR4XC896tch4=;
 h=X-UI-Sender-Class:Date:From:To:Subject:In-Reply-To:References;
 b=Q3yQkI3bly8+7v3tr8r36XyHEglHqFMRIQTidALr+4sua/ZM38AEbCuUiSC6obdgy
 B/7wEtXMKcmXmKBBUz7ax8EKXZlHecAoTSODSZEgSKc6EPHBq1P23WtlZdsHYri6WD
 exC9UyAUV3bDQxke1xIAPkoZ0VYaiUmiAde8pVro=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [127.0.0.1] ([77.3.23.232]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mgeo8-1muQwu2teW-00h8Hy; Fri, 03
 Sep 2021 18:29:04 +0200
Date: Fri, 03 Sep 2021 18:29:02 +0200
From: Sebastian Moeller <moeller0@gmx.de>
To: cake@lists.bufferbloat.net, Dave Taht <dave.taht@gmail.com>,
 Marco Gaiarin <gaio@sv.lnf.it>, Cake List <cake@lists.bufferbloat.net>
User-Agent: K-9 Mail for Android
In-Reply-To: <CAA93jw7ArNURJ0HyiD-PFXF6LFGWjtxWbe1F30z4MVGSksuZSw@mail.gmail.com>
References: <20210903135710.GH3638@sv.lnf.it>
 <CAA93jw7ArNURJ0HyiD-PFXF6LFGWjtxWbe1F30z4MVGSksuZSw@mail.gmail.com>
Message-ID: <5228B44C-4CF3-44E3-B5AE-E7F6E22C1AB5@gmx.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:WS0gvnvcvjY7QpcFqDsvZCQqcDU8osb8oy8lN2dLob5QNcOPMYh
 mqS8YcOTG3UMEPpS/j4Ouy9135tvDWTS9X+IsJXMhhQmLUplao02xbkJDZuZq2gsv5ScNQz
 Up38uTPUWOaivYb9W6SZPQVa8jtVngYCQUPJUYlGWCiNqQf/KCmkVXLfexDVVk+NqIL9yDo
 tvtkOW8Mwi1XGHNxB0veg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:85+Sm/VIVEk=:QUojobYxkg7j6Vq14KX6DH
 javxjQCxgsYTQcHGNRvnQrtI9ERWFqqNqeB01xw6I7TfHJ/Rl4dHwpcjvM0k9AATeQf21fi9r
 pDTwb6Eja992MvXUymiZCZP1JPMLJIFS6zCGNzmjfvS0Taz6svVMCFan7BOlLMHTHtiSbwzu7
 Z3mCwp+YaYqFzVRQ0H7P8v/DJGu/uIdXlBih7dqjldfoMZeJZJ7qb9gVt4BuTmdM7C0Fs5b+Z
 AULYYQ2y4ShJezycUaaWCoHNHXy5i9QkBUeWqOgmZAkV9wDrYG4tvRcIV2wJGsyNEIJCPpOpC
 goOkcWJNsQxy+GniFWa4ofKFnmJzHPXy4u3nQ0btDnpJK1amtBnZbhxRgZQyOF4FccRUR5g3H
 MsNaaNb2DGjtlKhKVZq9oHMEbImaGQi5Xna8h5ATa82HDmKcThmxIIyJrYavYSbDfcsdmbXNo
 Si4+86TKkuO3em/1jvfhZksyDwI8OvbhYVORC47JZ/dUE8U0XdBQlke4Q+nbmlHzxs9+tjwkm
 7WmVqPyh3vX9udlhmQ8IzvI0zBNrROCC2514tNaCgdc9ySJj6haVFL64fTHZWvmRt4qUG7S72
 ZOA2v9TqUhaf3ScPopQCdofFGVYVJAExmh8F/6xn0CAwaQ16PKNHh4oUiu0WhSQjspnDlOL7u
 IsP2CcfQf7hj9zI1fVDfTOdr7nn20+pTpD+8e4LMYDZTUwiE70sVCMZRmb0Wl6fLIL6KliPpK
 CCQw6cZ7vlcWGffKAX8SlJVFAGu+YOROIdNr4HX6T8mSZZ/kXsHAnq7hif5VXaWINafHDrkd9
 FatS8qiI+2LXuw2rRcJkgsqPBmpSZ1ZjnBBhwQ8t5x/zFRHVXll6woQ5z+I2/7J9kBIuSDuj/
 x9DX0p4NIWeRveyxEw1YQLPGeNjGw3ieVDd35CFErPiJwgY0sMiABNRLEP5zuJrEI8svByu5m
 8VgEEZVBzzLjFlIuj+dxFD21Rzh19HvxoWmsRc2K6VATbVuh3TIhfGsGVEApTDKLP/p2as/QH
 09jWWrgBJ34Pkr+wWgq626S9o4TZK1EXVs59x7D16s/vCfyjY//sDf/AdNdsII8DMWt3I3O2J
 teRbwvpfXbEV0oNpZnNA4Jq8BYinEsAiy1t
Subject: Re: [Cake] Cake: how know 'framing compensation'?
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
Content-Type: multipart/mixed; boundary="===============7869637554444007390=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7869637554444007390==
Content-Type: multipart/alternative;
 boundary=----2XCVFGWNLMGP2TBYQ7WE2WNUZ7COXK
Content-Transfer-Encoding: 7bit

------2XCVFGWNLMGP2TBYQ7WE2WNUZ7COXK
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Marco,

Cpuld you elaborate a bit on youur access link, please?

Are you using a DSL modem anywhere at all and then a wireless link you ope=
rate yourself between modem and router? If this is true, can you share info=
rmation about the dsl link, like its upload and download speeds?

Or does your ISP supply your internet via a wireless link directly to your=
 router?

Best Regards
         Sebastian

On 3 September 2021 17:16:39 CEST, Dave Taht <dave=2Etaht@gmail=2Ecom> wro=
te:
>the cake mailing list contains answers to your questions=2E
>
>On Fri, Sep 3, 2021 at 7:05 AM Marco Gaiarin <gaio@sv=2Elnf=2Eit> wrote:
>>
>>
>> I'm thinking about give Cake a try:
>>
>>         https://www=2Ebufferbloat=2Enet/projects/codel/wiki/Cake/
>>
>>
>> How can i determine my 'framing compensation'? I'm using now an
>> wireless link, terminating the PPPoE link directly on my linux router,
>> via PPPD/PPPOE=2E
>>
>> So, i'm surely using PPPoE, but pppoe-vcmux or pppoe-llcsnap? How
>> determine it?
>>
>>
>> Thanks=2E
>>
>> --
>> dott=2E Marco Gaiarin                                     GNUPG Key ID:=
 240A3D66
>>   Associazione ``La Nostra Famiglia''          http://www=2Elanostrafam=
iglia=2Eit/
>>   Polo FVG   -   Via della Bont=C3=A0, 7 - 33078   -   San Vito al Tagl=
iamento (PN)
>>   marco=2Egaiarin(at)lanostrafamiglia=2Eit   t +39-0434-842711   f +39-=
0434-842797
>>
>>                 Dona il 5 PER MILLE a LA NOSTRA FAMIGLIA!
>>       http://www=2Elanostrafamiglia=2Eit/index=2Ephp/it/sostienici/5x10=
00
>>         (cf 00307430132, categoria ONLUS oppure RICERCA SANITARIA)
>
>
>
>--=20
>Fixing Starlink's Latencies: https://www=2Eyoutube=2Ecom/watch?v=3Dc9gLo6=
Xrwgw
>
>Dave T=C3=A4ht CEO, TekLibre, LLC
>_______________________________________________
>Cake mailing list
>Cake@lists=2Ebufferbloat=2Enet
>https://lists=2Ebufferbloat=2Enet/listinfo/cake

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
------2XCVFGWNLMGP2TBYQ7WE2WNUZ7COXK
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>Hi Marco,<br><br>Cpuld you elaborate a bit on youu=
r access link, please?<br><br>Are you using a DSL modem anywhere at all and=
 then a wireless link you operate yourself between modem and router? If thi=
s is true, can you share information about the dsl link, like its upload an=
d download speeds?<br><br>Or does your ISP supply your internet via a wirel=
ess link directly to your router?<br><br>Best Regards<br>         Sebastian=
<br><br><div class=3D"gmail_quote">On 3 September 2021 17:16:39 CEST, Dave =
Taht &lt;dave=2Etaht@gmail=2Ecom&gt; wrote:<blockquote class=3D"gmail_quote=
" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb(204, 204=
, 204); padding-left: 1ex;">
<pre dir=3D"auto" class=3D"k9mail">the cake mailing list contains answers =
to your questions=2E<br><br>On Fri, Sep 3, 2021 at 7:05 AM Marco Gaiarin &l=
t;gaio@sv=2Elnf=2Eit&gt; wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin: 0pt 0pt 1ex 0=2E8ex; border-left: 1px solid #729fcf; padding-le=
ft: 1ex;"><br><br>I'm thinking about give Cake a try:<br><br>        <a hre=
f=3D"https://www=2Ebufferbloat=2Enet/projects/codel/wiki/Cake/">https://www=
=2Ebufferbloat=2Enet/projects/codel/wiki/Cake/</a><br><br><br>How can i det=
ermine my 'framing compensation'? I'm using now an<br>wireless link, termin=
ating the PPPoE link directly on my linux router,<br>via PPPD/PPPOE=2E<br><=
br>So, i'm surely using PPPoE, but pppoe-vcmux or pppoe-llcsnap? How<br>det=
ermine it?<br><br><br>Thanks=2E<br><br>--<br>dott=2E Marco Gaiarin         =
                            GNUPG Key ID: 240A3D66<br>  Associazione ``La N=
ostra Famiglia''          <a href=3D"http://www=2Elanostrafamiglia=2Eit/">h=
ttp://www=2Elanostrafamiglia=2Eit/</a><br>  Polo FVG   -   Via della Bont=
=C3=A0, 7 - 33078   -   San Vito al Tagliamento (PN)<br>  marco=2Egaiarin(a=
t)lanostrafamiglia=2Eit   t +39-0434-842711   f +39-0434-842797<br><br>    =
            Dona il 5 PER MILLE a LA NOSTRA FAMIGLIA!<br>      <a href=3D"h=
ttp://www=2Elanostrafamiglia=2Eit/index=2Ephp/it/sostienici/5x1000">http://=
www=2Elanostrafamiglia=2Eit/index=2Ephp/it/sostienici/5x1000</a><br>       =
 (cf 00307430132, categoria ONLUS oppure RICERCA SANITARIA)<br></blockquote=
><br><br><br><div class=3D"k9mail-signature">-- <br>Fixing Starlink's Laten=
cies: <a href=3D"https://www=2Eyoutube=2Ecom/watch?v=3Dc9gLo6Xrwgw">https:/=
/www=2Eyoutube=2Ecom/watch?v=3Dc9gLo6Xrwgw</a><br><br>Dave T=C3=A4ht CEO, T=
ekLibre, LLC<hr>Cake mailing list<br>Cake@lists=2Ebufferbloat=2Enet<br><a h=
ref=3D"https://lists=2Ebufferbloat=2Enet/listinfo/cake">https://lists=2Ebuf=
ferbloat=2Enet/listinfo/cake</a><br></div></pre></blockquote></div><div sty=
le=3D'white-space: pre-wrap'><div class=3D'k9mail-signature'>-- <br>Sent fr=
om my Android device with K-9 Mail=2E Please excuse my brevity=2E</div></di=
v></body></html>
------2XCVFGWNLMGP2TBYQ7WE2WNUZ7COXK--

--===============7869637554444007390==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7869637554444007390==--

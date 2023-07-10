Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E84D74E035
	for <lists+cake@lfdr.de>; Mon, 10 Jul 2023 23:28:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F3C293CB45;
	Mon, 10 Jul 2023 17:27:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1689024476;
	bh=fi4IXNrNencZf+x0p2BJUE4qrYtEwYcMJJFKr3ZDGpM=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=ZIc9JGz84BxdCTp+16a3+0VoGPhk34KTLfrYsu9dnZmUEzDsFNRzpcPX8OD4qIeSs
	 DIVEHe3GNiKSpv2UT6yD0wH0GG5dZE0SLHpVDE2fhJxwfgRJY7XkeYoYQo77/aZe9V
	 HpMNl3Qsgy15CVE2LMBPgdXrTmy0mft4caaimaMSjSel6cuzRotRxkCz+VJ7xQXkOB
	 krtpVR8nNFaNKqptQULNAey4W3cLhx5BgkqxDjBvp4otupgiO0g8IAtznmSerWtPnt
	 h23hqsBvL+K1oMW8ZXMA6ONJ/fIDZHvprGQSVcc34mO7UwBeDETnLdmaWZ5l14KEG9
	 hvyn8H2IuTzxg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2108E3B29E;
 Mon, 10 Jul 2023 17:27:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de;
 s=s31663417; t=1689024470; x=1689629270; i=moeller0@gmx.de;
 bh=iwTsLVofLY6wJio26adR4A0SnVEDlwjJjasgGshfZQ8=;
 h=X-UI-Sender-Class:Date:From:To:CC:Subject:In-Reply-To:References;
 b=dLi6gJQuLcQVgLNm2ly0PJ5oa2e69bN6ZhrndwuhnNsUqA3hX3dAa0usX7dACZBvetvBRxu
 M4j2LgE8N1HaxxFHNqYhmwvNDlG/MKPmFGar55fMbMLz61Uw9TWlr0t8khMiSNdhKHf9HjsDU
 LVjUWMlV/NKVgqtlo3q4S733t/4m2vzI7ju/Hav/Lbt6WzrzldO1WTD3iX4M7df5VoyH4Jp9b
 hiuAhT5aRxrTyj4+hQWy8eN5q+XXuHvbM42FlI69uCwZbvR/tHUmsq/Fwjgr0rQVTpjnxJt/s
 ughH5bP7RpvsXViT6rjVpSZgbmQU+sRPbraR27u8JXAAOuNxHkMg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [127.0.0.1] ([80.113.60.234]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MacOQ-1piGlA06tW-00cB3V; Mon, 10
 Jul 2023 23:27:50 +0200
Date: Mon, 10 Jul 2023 23:27:46 +0200
To: Stephen Hemminger <stephen@networkplumber.org>,
 Stephen Hemminger via Bloat <bloat@lists.bufferbloat.net>,
 "David P. Reed" <dpreed@deepplum.com>
User-Agent: K-9 Mail for Android
In-Reply-To: <20230710133540.1cbe20bd@hermes.local>
References: <1687962752.39077378@mobile.rackspace.com>
 <20230710133540.1cbe20bd@hermes.local>
Message-ID: <A0010D20-BCC6-41EC-9517-685012F042EE@gmx.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:B7JC3X+6ipxDll01pg/BWRqGVnG8NDmpxlfo3pRgPjO61vWUfDA
 QfPNN8ebS5BVRk/VwmS6hycZmKOGimiBhTFpryqzAo0vrvyTwLoQfh/UErZmns6PH7Y60Tt
 4dDHMZ1UHc7byq7szyAUgbBcyLCVKYAnYJ+SCGFOsZlqaGeRRip2aNzA4wJaXcpL+LYZvpE
 rRIcNnUbQrQF8dPxnewow==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:zAcZBFezBQ8=;TOevFqk5SEOKCrhEU+Uv9P+7GMv
 mvWWwigY1hEqwwARsmV6IO/OQkDTDbafuI4GwbZpnu/O9RuuXZ8eEuCLP7NbSCHhQnyYAzS2X
 syqFQL1YUPOgh6mxCEUWHgIf1w21igeS1KYaveoq6KxswooaO90onhGUFqmYCL6P//tbP4Ia0
 FOu6l7sq4Sy10zZF9cbJr8KEGT6CgDF1h52EUNMPSFX7MWd3hY+T9+yiKFQRV7AJOY5Wmtz/Q
 /0G2o7uDJH0IYOsFPRi6Sxea2ELhMWny9eEDm9oi4fQQ1bBGXRyjgPSj4MOHo/eK6xfULf6wj
 WDWuuXfVQzTCN/gPAeZ3pBXAxMjoNVFQxIbUB6kv6QSZQPkOFpE/tuyx+YBhDD2tfL8khaoKV
 ytEysUHSL4k9ZaVerZPUOhsFECyxUgD+Lr6IDCxcAE0w+RUaWnOnjOi3yvCPI9VNctWJzIybN
 zjbcc/Ip1MKOsEsKr7axT3e/WLtpAZvAV4VYxGf1ndDT8nOw3MiCoEyCLQxIqex8HwGJ/Z9Lz
 iT7E7u9vLkqH7WQM2rnv3thAW2N7yi1Wwo96EwpSGG8zUxE+GYzX9M43bIdrge27+AFGpnBd6
 3yK2+pPeMOv+9VUt/FNeqgCTqJMSKH1q9uR9GHvDcpkXmb0EzabTyJ6Ia0hJOCQsDftS6CwSn
 obFCLkKXmjdeaf/aEz8Oea1pZlFxKMe1ZFtSDPWqcE206h+z+YwtoCdMn3HVu/Kupy4w2ce3L
 SqEa9Cta0NTda2xyGVQP3u17ggzhWi3FCt2VL6kldsyrv3DwLREUL9m3BPiQcJqeLyxSJ5Sn6
 kxBFgg9MuQoaLmh2RrVRuvujSDj86tD4nTHYu4LDq6DE3H3UtEfE17oSn+fTKdXnxJ7YZvdDy
 I+qK3wNklBTJE9DECjYlTgZ2aOi6+SjyNDzwM0JcTGyZp8kI4FIPfZXTejQKEH8ymEaPS2zBr
 LwMkEsyUmbAY1hFLjlJi0exO6Kw=
Subject: Re: [Cake] [Bloat] Two questions re high speed congestionmanagement
	anddatagram protocols
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
Cc: Dave Taht via Cake <cake@lists.bufferbloat.net>,
 bloat@lists.bufferbloat.net
Content-Type: multipart/mixed; boundary="===============3669982079255339797=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3669982079255339797==
Content-Type: multipart/alternative;
 boundary=----TWVMRXLWSL1NQRY23JD58DO8ETKASM
Content-Transfer-Encoding: 7bit

------TWVMRXLWSL1NQRY23JD58DO8ETKASM
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

For what it is worth, the tsv working group is considering whether to proce=
ss mp-dccp on the standards track, but then the IETF seems not to care too =
deeply about open-source licence compliance=2E Or recent kernel implementat=
ions or implementations that have a realistic path towards mainline inclusi=
on=2E=2E=2E but I digress=2E

Regards
        Sebastian





On 10 July 2023 22:35:40 CEST, Stephen Hemminger via Bloat <bloat@lists=2E=
bufferbloat=2Enet> wrote:
>On Wed, 28 Jun 2023 10:32:32 -0400 (EDT)
>"David P=2E Reed" <dpreed@deepplum=2Ecom> wrote:
>
>> How to find a kernel maintainer to care about DCCP, seems to be the que=
stion for Linux=2E
>> I am tempted=2E=2E=2E Not to get involved with IETF "barriers" (what a =
mess, given the folks in IETF who resisted in AQM, I wouldn't last a minute=
), but to keep DCCP support alive=2E
>> The barrier here is getting accepted as a Linux maintainer, which is a =
different issue entirely, looking at my last two experiences with submittin=
g simple bug fixes to the kernel, which were nightmares=2E I don't have the=
 commitment to become accepted as a maintainer=2E
>> But it seems good to maintain DCCP, despite its lack of popularity as a=
n IETF standard=2E It does deal with CC in a way that simplifies use of UDP=
 for serious work=2E
>
>Interesting that there is an out of tree DCCP, complete with likely GPL l=
icense violation=2E
>https://github=2Ecom/telekom/mp-dccp
>_______________________________________________
>Bloat mailing list
>Bloat@lists=2Ebufferbloat=2Enet
>https://lists=2Ebufferbloat=2Enet/listinfo/bloat

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
------TWVMRXLWSL1NQRY23JD58DO8ETKASM
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div dir=3D"auto">For what it is worth, the tsv wo=
rking group is considering whether to process mp-dccp on the standards trac=
k, but then the IETF seems not to care too deeply about open-source licence=
 compliance=2E Or recent kernel implementations or implementations that hav=
e a realistic path towards mainline inclusion=2E=2E=2E but I digress=2E<br>=
<br>Regards<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Sebastian<br><br>=
<br><br></div><br><br><div class=3D"gmail_quote"><div dir=3D"auto">On 10 Ju=
ly 2023 22:35:40 CEST, Stephen Hemminger via Bloat &lt;bloat@lists=2Ebuffer=
bloat=2Enet&gt; wrote:</div><blockquote class=3D"gmail_quote" style=3D"marg=
in: 0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb(204, 204, 204); padding=
-left: 1ex;">
<pre class=3D"k9mail"><div dir=3D"auto">On Wed, 28 Jun 2023 10:32:32 -0400=
 (EDT)<br>"David P=2E Reed" &lt;dpreed@deepplum=2Ecom&gt; wrote:<br><br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0=2E8ex; =
border-left: 1px solid #729fcf; padding-left: 1ex;"><div dir=3D"auto">How t=
o find a kernel maintainer to care about DCCP, seems to be the question for=
 Linux=2E<br>I am tempted=2E=2E=2E Not to get involved with IETF "barriers"=
 (what a mess, given the folks in IETF who resisted in AQM, I wouldn't last=
 a minute), but to keep DCCP support alive=2E<br>The barrier here is gettin=
g accepted as a Linux maintainer, which is a different issue entirely, look=
ing at my last two experiences with submitting simple bug fixes to the kern=
el, which were nightmares=2E I don't have the commitment to become accepted=
 as a maintainer=2E<br>But it seems good to maintain DCCP, despite its lack=
 of popularity as an IETF standard=2E It does deal with CC in a way that si=
mplifies use of UDP for serious work=2E<br></div></blockquote><div dir=3D"a=
uto"><br>Interesting that there is an out of tree DCCP, complete with likel=
y GPL license violation=2E<br><a href=3D"https://github=2Ecom/telekom/mp-dc=
cp">https://github=2Ecom/telekom/mp-dccp</a><hr>Bloat mailing list<br>Bloat=
@lists=2Ebufferbloat=2Enet<br><a href=3D"https://lists=2Ebufferbloat=2Enet/=
listinfo/bloat">https://lists=2Ebufferbloat=2Enet/listinfo/bloat</a><br></d=
iv></pre></blockquote></div><div dir=3D"auto"><div class=3D'k9mail-signatur=
e'>-- <br>Sent from my Android device with K-9 Mail=2E Please excuse my bre=
vity=2E</div></div></body></html>
------TWVMRXLWSL1NQRY23JD58DO8ETKASM--

--===============3669982079255339797==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3669982079255339797==--

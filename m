Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8C348CF12
	for <lists+cake@lfdr.de>; Thu, 13 Jan 2022 00:25:48 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 99E6E3CB46;
	Wed, 12 Jan 2022 18:25:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1642029947;
	bh=UZW23qzyOhP579+R8AfLFDWuvcTUeVYKLpD0x9XOM1A=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KVk1ILeMtdMYOZLLic2SpObC68fjiQNyLiO72KftbtyuSyG61+F82wcCT5Nl5+dUg
	 ybDCwBLvRXjYDm3Sxavmhxu5MO364+6GEbG9PWn5Rgjgm06ew7oJxm2LSmOX/F4Y3Y
	 LU5lWyKSDX2VFqMy/Fr6aL7xUYsQ8y50MArawcAQHfIlo5gwROTFbnsHiI7axwkYHJ
	 eT2VbKC62ukwVVblvrNJw05FV4bydUozr+qllbxaPD7tOf9u3/XVAltvMsg74d9Kmk
	 T4qErp/6GClHBsr1DgeU7ugu45LmGRgbhNYceA9KxgCnekhFfYzG9qEYJJDfRchakJ
	 Gbpb14rElu+FA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EE4813B2A4;
 Wed, 12 Jan 2022 18:25:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1642029944;
 bh=T5O3iFaZTfWeMcU+Oh4joHoapmKb/7f6naNIVWa8ABs=;
 h=X-UI-Sender-Class:Date:From:To:Subject:In-Reply-To:References;
 b=Uvq/yDSgesxPJftVjkAKWVNwolEy2QMRKW5u7VaJTQ98kwLTEKYkINN5LcPQmSQ/a
 ZGD4H6EhTNLFl887p6nZk4XMBu+uyPiyH1DAob0cuMns/Ne+fCs2MHAIgWFTj0Vz2f
 p8KGHJrIoXGZ01bjm7bK6Fr5Fyy9jddcr5BGO0B4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [127.0.0.1] ([77.3.101.184]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N6KYb-1mIycD0rH7-016jjg; Thu, 13
 Jan 2022 00:25:44 +0100
Date: Thu, 13 Jan 2022 00:25:41 +0100
From: Sebastian Moeller <moeller0@gmx.de>
To: cerowrt-devel@lists.bufferbloat.net, Dave Taht <dave.taht@gmail.com>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>
User-Agent: K-9 Mail for Android
In-Reply-To: <CAA93jw4QRva5z5TPeUEXRBF1zjdL0E_pXjeM+tAvPh+71=0vyQ@mail.gmail.com>
References: <20220107202249.3812322-1-kevin@bracey.fi>
 <CAA93jw4QRva5z5TPeUEXRBF1zjdL0E_pXjeM+tAvPh+71=0vyQ@mail.gmail.com>
Message-ID: <BC04EAC4-42C7-41E6-8B29-89BAB8D9A9A1@gmx.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:AnGEl4LcgEZDdZ3k2eHEKlUlDqV+VaIXyXPtYa0PSIB8w6HktpJ
 ElE4asr4QpSzwJ3/tqkYgsgkXfyXcKakYg/u1i6RUWBM1WeuYQ82KpmMl1u0/tEcdT+v2k0
 vOJ6i3cC6fgrN65O9X/uS7NqHJD2I5i8L1fVgEERge6wjlmsfZfZOJqx4yOZMjTdHod+PC9
 BL/yXYWdkph+C2YGlAW/g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:qRYACIbJrwM=:ZnUTrX/K3e94E+OHbfQFuP
 sQTSTVQqHSK5e3FRMU6J9InLOtxRtrY/KG8jp49zcclWD/6ePZgHYVcsTfcb6wBUFu8Z63IgZ
 HVO4yj4UIkR7It10x2+HiYwpyDEBVrOCZKnjAQV9DgH4SM4syAcNxuvKeSCLWJ3wTcGabSvTp
 YdRpiqxkh0vlIVuS3RHMuo3DTHfN43Td/bOvGKiliaSOKNxxJNerPbe7qqRx6HD417nQ5PXtV
 ixEyf60aT1tx4HcN2BvUojkK7LXGanJJDtiE6Z0bkdVhk3S7hYv0S3fbrg6NjEJyKSi+jxcnD
 u2+cGBGaegWWsafoE5FzSLkRR0kVNr7QosNI5fixtf93ZW6QTT+EBE7mMracI8FuDdRFVkP00
 fpj89Xv8gxP2VqGU/7pT090EC5b8hp+HZjnQ0JR2LE0aFPJU5FHb4CunIWvztWlq+xr5P45QV
 JVL2eRcDh/C62n8lVkhof47D3bW5Lvw30q3FCCFtlFyWb6d4uOTFGAjQFne4IPkYBugKhufE1
 zCA+uedS4LguizAYn+qVj7xgYdVwp1kt2q2obvGKYYKCAGmdvW0zPUJxY0IU3SElYZtZeBGMK
 fIzYwp5bHq0fHhQVPfA5epX0SiG+dLQamziIUor/97pCw0RX7gU71SgifLs8zWi9ffF1yzUHh
 NpxIdMmM1/AvBUnBRhqeModpUGk9M97vFKL36c3oLZrLcbpPFP3UkCBoXpoVmxboM181y7Wgv
 ssRYJv0jHsK32Wo0+gpWtNqqjt4KwlAcQ99fh8vkYU890R46i3v7g+2tO71BRqMOHJmEbI8Fy
 ipkMFlpMhxLloyjRfmvRiaopRgPK8/Fttyr8eiBFyBoaBVXerE899xCs/Cj4cx+lV1JErKrXQ
 W7J31Q/hp9F/T24N8O2BznFnq1cTMBJC8AlttN1/HyBqEvbhphQpYfLQCJ2cP/dolZunDc9pc
 a2rGDOxvV10BqdCBC0+G9HQe1dfRhC867IwjAH0AcWTcCafHWCFory+4789oGb2VLNwnJHHmu
 9KcsI2sEYTmN0Otn/vLR6G83lisiGlktFHQPPO0T9wfxinugnFoTpBI2GeHu/nc7EYfyLhzsW
 UtO3oAxkvmquAY=
Subject: Re: [Cake] [Cerowrt-devel] Fwd: [PATCH net-next] net_sched: restore
	"mpu xxx"	handling
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
Content-Type: multipart/mixed; boundary="===============6128825927322138227=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6128825927322138227==
Content-Type: multipart/alternative;
 boundary=----1VZHTC7IGKKHHHJ4JYEE3YI9RD6EBZ
Content-Transfer-Encoding: 7bit

------1VZHTC7IGKKHHHJ4JYEE3YI9RD6EBZ
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

No idea, sqm-scripts long had supported htb's linklayer accounting but defa=
ulted to using tc stab instead, and mainly for htb+fq_codel, for cake it de=
faulted to cake's internal accounting=2E

I have no recollection when I last tested that, probably when I was still =
on an ADSL link without a relevant mpu=2E=2E=2E=2E=20

Regards
        Sebastian



On 13 January 2022 00:08:10 CET, Dave Taht <dave=2Etaht@gmail=2Ecom> wrote=
:
>this has been broken this long??
>
>---------- Forwarded message ---------
>From: Kevin Bracey <kevin@bracey=2Efi>
>Date: Fri, Jan 7, 2022 at 4:56 PM
>Subject: [PATCH net-next] net_sched: restore "mpu xxx" handling
>To: <netdev@vger=2Ekernel=2Eorg>
>Cc: Kevin Bracey <kevin@bracey=2Efi>, Eric Dumazet
><edumazet@google=2Ecom>, Jiri Pirko <jiri@resnulli=2Eus>, Vimalkumar
><j=2Evimal@gmail=2Ecom>
>
>
>commit 56b765b79e9a ("htb: improved accuracy at high rates") broke
>"overhead X", "linklayer atm" and "mpu X" attributes=2E
>
>"overhead X" and "linklayer atm" have already been fixed=2E This restores
>the "mpu X" handling, as might be used by DOCSIS or Ethernet shaping:
>
>    tc class add =2E=2E=2E htb rate X overhead 4 mpu 64
>
>The code being fixed is used by htb, tbf and act_police=2E Cake has its
>own mpu handling=2E qdisc_calculate_pkt_len still uses the size table
>containing values adjusted for mpu by user space=2E
>
>Fixes: 56b765b79e9a ("htb: improved accuracy at high rates")
>Signed-off-by: Kevin Bracey <kevin@bracey=2Efi>
>Cc: Eric Dumazet <edumazet@google=2Ecom>
>Cc: Jiri Pirko <jiri@resnulli=2Eus>
>Cc: Vimalkumar <j=2Evimal@gmail=2Ecom>
>---
> include/net/sch_generic=2Eh | 5 +++++
> net/sched/sch_generic=2Ec   | 1 +
> 2 files changed, 6 insertions(+)
>
>diff --git a/include/net/sch_generic=2Eh b/include/net/sch_generic=2Eh
>index c70e6d2b2fdd=2E=2Efddca0aa73ef 100644
>--- a/include/net/sch_generic=2Eh
>+++ b/include/net/sch_generic=2Eh
>@@ -1244,6 +1244,7 @@ struct psched_ratecfg {
>        u64     rate_bytes_ps; /* bytes per second */
>        u32     mult;
>        u16     overhead;
>+       u16     mpu;
>        u8      linklayer;
>        u8      shift;
> };
>@@ -1253,6 +1254,9 @@ static inline u64 psched_l2t_ns(const struct
>psched_ratecfg *r,
> {
>        len +=3D r->overhead;
>
>+       if (len < r->mpu)
>+               len =3D r->mpu;
>+
>        if (unlikely(r->linklayer =3D=3D TC_LINKLAYER_ATM))
>                return ((u64)(DIV_ROUND_UP(len,48)*53) * r->mult) >> r->s=
hift;
>
>@@ -1275,6 +1279,7 @@ static inline void psched_ratecfg_getrate(struct
>tc_ratespec *res,
>        res->rate =3D min_t(u64, r->rate_bytes_ps, ~0U);
>
>        res->overhead =3D r->overhead;
>+       res->mpu =3D r->mpu;
>        res->linklayer =3D (r->linklayer & TC_LINKLAYER_MASK);
> }
>
>diff --git a/net/sched/sch_generic=2Ec b/net/sched/sch_generic=2Ec
>index 3b0f62095803=2E=2E5d391fe3137d 100644
>--- a/net/sched/sch_generic=2Ec
>+++ b/net/sched/sch_generic=2Ec
>@@ -1474,6 +1474,7 @@ void psched_ratecfg_precompute(struct psched_ratecf=
g *r,
> {
>        memset(r, 0, sizeof(*r));
>        r->overhead =3D conf->overhead;
>+       r->mpu =3D conf->mpu;
>        r->rate_bytes_ps =3D max_t(u64, conf->rate, rate64);
>        r->linklayer =3D (conf->linklayer & TC_LINKLAYER_MASK);
>        psched_ratecfg_precompute__(r->rate_bytes_ps, &r->mult, &r->shift=
);
>--
>2=2E25=2E1
>
>
>
>--=20
>I tried to build a better future, a few times:
>https://wayforward=2Earchive=2Eorg/?site=3Dhttps%3A%2F%2Fwww=2Eicei=2Eorg
>
>Dave T=C3=A4ht CEO, TekLibre, LLC
>_______________________________________________
>Cerowrt-devel mailing list
>Cerowrt-devel@lists=2Ebufferbloat=2Enet
>https://lists=2Ebufferbloat=2Enet/listinfo/cerowrt-devel

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
------1VZHTC7IGKKHHHJ4JYEE3YI9RD6EBZ
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>No idea, sqm-scripts long had supported htb's link=
layer accounting but defaulted to using tc stab instead, and mainly for htb=
+fq_codel, for cake it defaulted to cake's internal accounting=2E<br><br>I =
have no recollection when I last tested that, probably when I was still on =
an ADSL link without a relevant mpu=2E=2E=2E=2E <br><br>Regards<br>        =
Sebastian<br><br><br><br><div class=3D"gmail_quote">On 13 January 2022 00:0=
8:10 CET, Dave Taht &lt;dave=2Etaht@gmail=2Ecom&gt; wrote:<blockquote class=
=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px sol=
id rgb(204, 204, 204); padding-left: 1ex;">
<pre dir=3D"auto" class=3D"k9mail">this has been broken this long??<br><br=
>---------- Forwarded message ---------<br>From: Kevin Bracey &lt;kevin@bra=
cey=2Efi&gt;<br>Date: Fri, Jan 7, 2022 at 4:56 PM<br>Subject: [PATCH net-ne=
xt] net_sched: restore "mpu xxx" handling<br>To: &lt;netdev@vger=2Ekernel=
=2Eorg&gt;<br>Cc: Kevin Bracey &lt;kevin@bracey=2Efi&gt;, Eric Dumazet<br>&=
lt;edumazet@google=2Ecom&gt;, Jiri Pirko &lt;jiri@resnulli=2Eus&gt;, Vimalk=
umar<br>&lt;j=2Evimal@gmail=2Ecom&gt;<br><br><br>commit 56b765b79e9a ("htb:=
 improved accuracy at high rates") broke<br>"overhead X", "linklayer atm" a=
nd "mpu X" attributes=2E<br><br>"overhead X" and "linklayer atm" have alrea=
dy been fixed=2E This restores<br>the "mpu X" handling, as might be used by=
 DOCSIS or Ethernet shaping:<br><br>    tc class add =2E=2E=2E htb rate X o=
verhead 4 mpu 64<br><br>The code being fixed is used by htb, tbf and act_po=
lice=2E Cake has its<br>own mpu handling=2E qdisc_calculate_pkt_len still u=
ses the size table<br>containing values adjusted for mpu by user space=2E<b=
r><br>Fixes: 56b765b79e9a ("htb: improved accuracy at high rates")<br>Signe=
d-off-by: Kevin Bracey &lt;kevin@bracey=2Efi&gt;<br>Cc: Eric Dumazet &lt;ed=
umazet@google=2Ecom&gt;<br>Cc: Jiri Pirko &lt;jiri@resnulli=2Eus&gt;<br>Cc:=
 Vimalkumar &lt;j=2Evimal@gmail=2Ecom&gt;<hr> include/net/sch_generic=2Eh |=
 5 +++++<br> net/sched/sch_generic=2Ec   | 1 +<br> 2 files changed, 6 inser=
tions(+)<br><br>diff --git a/include/net/sch_generic=2Eh b/include/net/sch_=
generic=2Eh<br>index c70e6d2b2fdd=2E=2Efddca0aa73ef 100644<br>--- a/include=
/net/sch_generic=2Eh<br>+++ b/include/net/sch_generic=2Eh<br>@@ -1244,6 +12=
44,7 @@ struct psched_ratecfg {<br>        u64     rate_bytes_ps; /* bytes =
per second */<br>        u32     mult;<br>        u16     overhead;<br>+   =
    u16     mpu;<br>        u8      linklayer;<br>        u8      shift;<br=
> };<br>@@ -1253,6 +1254,9 @@ static inline u64 psched_l2t_ns(const struct<=
br>psched_ratecfg *r,<br> {<br>        len +=3D r-&gt;overhead;<br><br>+   =
    if (len &lt; r-&gt;mpu)<br>+               len =3D r-&gt;mpu;<br>+<br> =
       if (unlikely(r-&gt;linklayer =3D=3D TC_LINKLAYER_ATM))<br>          =
      return ((u64)(DIV_ROUND_UP(len,48)*53) * r-&gt;mult) &gt;&gt; r-&gt;s=
hift;<br><br>@@ -1275,6 +1279,7 @@ static inline void psched_ratecfg_getrat=
e(struct<br>tc_ratespec *res,<br>        res-&gt;rate =3D min_t(u64, r-&gt;=
rate_bytes_ps, ~0U);<br><br>        res-&gt;overhead =3D r-&gt;overhead;<br=
>+       res-&gt;mpu =3D r-&gt;mpu;<br>        res-&gt;linklayer =3D (r-&gt=
;linklayer &amp; TC_LINKLAYER_MASK);<br> }<br><br>diff --git a/net/sched/sc=
h_generic=2Ec b/net/sched/sch_generic=2Ec<br>index 3b0f62095803=2E=2E5d391f=
e3137d 100644<br>--- a/net/sched/sch_generic=2Ec<br>+++ b/net/sched/sch_gen=
eric=2Ec<br>@@ -1474,6 +1474,7 @@ void psched_ratecfg_precompute(struct psc=
hed_ratecfg *r,<br> {<br>        memset(r, 0, sizeof(*r));<br>        r-&gt=
;overhead =3D conf-&gt;overhead;<br>+       r-&gt;mpu =3D conf-&gt;mpu;<br>=
        r-&gt;rate_bytes_ps =3D max_t(u64, conf-&gt;rate, rate64);<br>     =
   r-&gt;linklayer =3D (conf-&gt;linklayer &amp; TC_LINKLAYER_MASK);<br>   =
     psched_ratecfg_precompute__(r-&gt;rate_bytes_ps, &amp;r-&gt;mult, &amp=
;r-&gt;shift);<br>--<br>2=2E25=2E1<br><br><br><br><div class=3D"k9mail-sign=
ature">-- <br>I tried to build a better future, a few times:<br><a href=3D"=
https://wayforward=2Earchive=2Eorg/?site=3Dhttps%3A%2F%2Fwww=2Eicei=2Eorg">=
https://wayforward=2Earchive=2Eorg/?site=3Dhttps%3A%2F%2Fwww=2Eicei=2Eorg</=
a><br><br>Dave T=C3=A4ht CEO, TekLibre, LLC<hr>Cerowrt-devel mailing list<b=
r>Cerowrt-devel@lists=2Ebufferbloat=2Enet<br><a href=3D"https://lists=2Ebuf=
ferbloat=2Enet/listinfo/cerowrt-devel">https://lists=2Ebufferbloat=2Enet/li=
stinfo/cerowrt-devel</a><br></div></pre></blockquote></div><div style=3D'wh=
ite-space: pre-wrap'><div class=3D'k9mail-signature'>-- <br>Sent from my An=
droid device with K-9 Mail=2E Please excuse my brevity=2E</div></div></body=
></html>
------1VZHTC7IGKKHHHJ4JYEE3YI9RD6EBZ--

--===============6128825927322138227==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6128825927322138227==--

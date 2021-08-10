Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 767573E8557
	for <lists+cake@lfdr.de>; Tue, 10 Aug 2021 23:33:33 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4EFA93CB6C;
	Tue, 10 Aug 2021 17:33:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1628631207;
	bh=Xkho1iYT4snQumQ69drXRF0oombJgB/uWY3a+waM2Rk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LjQ000qW4GiYB4uBjVMrEoK408JHirlWLx02/cLkFDy2tanj7/pubErFAXTJh2jWH
	 LylIoZRalUjBJOO7vrMR3bWBJL0rKjI3zcdknpxyaSNazgtoYNLTReiUY5pf7k9yKv
	 /VTLaufdyqzSlxk9jVWr/K953yElyi4+uf9SvfeZIrwLz6KD/qhoSz7/fR+Bc+4mBd
	 A2G+GnGNAtvP13sjiea+XD2NUtw1IZgsBp/nYUNe9uecia+u1cJ38qBY7SHYFTC4f5
	 dExpeGvZVKkiHENRUr7Gna+eXF2/AglO9dD/Z3mv6fADC8wTSdHNfimssg9YaZXvfT
	 jV5mNBJ5arugA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DEF2B3CB38
 for <cake@lists.bufferbloat.net>; Tue, 10 Aug 2021 16:33:25 -0400 (EDT)
Received: by mail-pj1-x102f.google.com with SMTP id
 g12-20020a17090a7d0cb0290178f80de3d8so829317pjl.2
 for <cake@lists.bufferbloat.net>; Tue, 10 Aug 2021 13:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aterlo.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DZqTksaTFYUnZR6SKgfL/hpeyuzNiPsPMw1Vdg2LDd0=;
 b=yt6YmIZazkob1nBxuGY2M/ubQLYo/246sILYRuH8tCblIVSitWYWovzJmYtufzCzPn
 xamxOZkmwnntsWcwyA2qHG6iUf9EJYrIJKeSbJQZDXlunp4iFIDj8cKrkjNyPAFQgLG6
 a6OdUS2o9Y2FoRZGYOsm555J9tIROhaC3CrzE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DZqTksaTFYUnZR6SKgfL/hpeyuzNiPsPMw1Vdg2LDd0=;
 b=uQ/jSwB5+j1pR+8Re+SSNn2GL2NBOnJ9s9X/bGxM9ENEb08SN4wzIHcW8p4DYja3Qp
 BwTlD5B1j3EmqUUw29Vznd527a1e7kdIfkGtz3FbWpwnALgIXr0hqtJHfcs33g0cqaoA
 QyLvhLeMskZWsBCN1P9sr/ob/WjI1SJpcSef9CiRMDrBYoEwdfvM9euadxJuMd3tfu2t
 JAj/Jv9jnBCmFVhm/Wiw9Vl+wYtlI+j1hkF6dbV6oHkvmNzh26KatHiDDQ37HYiIEVWZ
 Dbz20wn01CtG11K1TTpiaj2QD18Y2qVpFYiYS8HP999HnQpb2zLyebLx4tuXqrZqfjMr
 7iYA==
X-Gm-Message-State: AOAM531dBICvFCN6/c96JLnwmgjZiJ4KnwfBc0eEVaNsSqcb4VbxJ0AG
 wlV4s2JOLsFiPYpc+4Yrn137spJCDedr9lO5qoYB9Q==
X-Google-Smtp-Source: ABdhPJxauuGNX+aPNSDtwCFrytkAjqprQyNGPTF9iI8LxvlBt25nmDNuUi9ppvK26Nhn7M5BdEDGQp6yB0hyMRJ5uao=
X-Received: by 2002:a17:902:7208:b029:12c:9c9d:e0bb with SMTP id
 ba8-20020a1709027208b029012c9c9de0bbmr1277549plb.44.1628627604940; Tue, 10
 Aug 2021 13:33:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAHb6LvqfRxKU0BW04ypRcPDpCcWymnS6qzb3gneQSbBrAbRhHQ@mail.gmail.com>
 <202108101410.17AEAR4w075939@gndrsh.dnsmgr.net>
 <5AF5551E2A7041168E7071FDA0F6B8EC@SRA6>
 <CAHb6LvpAmUKgsMAoZGrbAvS01DF=yWyJj56ox+FrDM_tEc=0Ng@mail.gmail.com>
 <03CA2CDA3EC5415DA229F835BE039994@SRA6>
 <CAHb6LvoiVZq91m-C3iJFC95fYLPHCY3zQo6O0XTUDAJquu5KbQ@mail.gmail.com>
 <92A399A23FEE4C52ADFC1734E6840756@SRA6>
In-Reply-To: <92A399A23FEE4C52ADFC1734E6840756@SRA6>
From: Jeremy Austin <jeremy@aterlo.com>
Date: Tue, 10 Aug 2021 12:33:11 -0800
Message-ID: <CACw=56K_Sj24FAO17cY4vDYhe1-gAXW_fQKLSBKSMqSE0kCRmA@mail.gmail.com>
To: dickroy@alum.mit.edu
X-Mailman-Approved-At: Tue, 10 Aug 2021 17:33:25 -0400
Subject: Re: [Cake] [Starlink] Anhyone have a spare couple a hundred million
 ... Elon may need to start a go-fund-me page!
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Bob McMahon <bob.mcmahon@broadcom.com>, starlink@lists.bufferbloat.net,
 codel <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============5545935058255628616=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5545935058255628616==
Content-Type: multipart/alternative; boundary="000000000000dd3d0505c93a6975"

--000000000000dd3d0505c93a6975
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A 5.7% reduction in funded locations for StarLink is=E2=80=A6 not dramatic.=
 If the
project falls on that basis, they've got bigger problems. Much of that
discrepancy falls squarely on the shoulders of the FCC and incumbent ISPs
filing form 477, as well as the RDOF auction being held before improving
mapping =E2=80=94 as Rosenworcel pointed out. The state of broadband mappin=
g is
still dire.

If I felt like the reallocation of funds would be 100% guaranteed to
benefit the end Internet user=E2=80=A6 I'd cheer too.

If.

JHA

On Tue, Aug 10, 2021 at 12:16 PM Dick Roy <dickroy@alum.mit.edu> wrote:

> You may find this of some relevance!
>
>
>
>
> https://arstechnica.com/tech-policy/2021/07/ajit-pai-apparently-mismanage=
d-9-billion-fund-new-fcc-boss-starts-cleanup/
>
>
>
> Cheers (or whatever!),
>
>
>
> RR
>
>
> _______________________________________________
> Starlink mailing list
> Starlink@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/starlink
>


--=20
--
Jeremy Austin
Sr. Product Manager
Preseem | Aterlo Networks
preseem.com

Book a Call: https://app.hubspot.com/meetings/jeremy548
Phone: 1-833-733-7336 x718
Email: jeremy@preseem.com

Stay Connected with Newsletters & More:
*https://preseem.com/stay-connected/* <https://preseem.com/stay-connected/>

--000000000000dd3d0505c93a6975
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">A 5.7% reduction in funded locations for StarLink is=E2=80=
=A6 not dramatic. If the project falls on that basis, they&#39;ve got bigge=
r problems. Much of that discrepancy falls squarely on the shoulders of the=
 FCC and incumbent ISPs filing form 477, as well as the RDOF auction being =
held before improving mapping =E2=80=94 as Rosenworcel pointed out. The sta=
te of broadband mapping is still dire.<div><br></div><div>If I felt like th=
e reallocation of funds would be 100% guaranteed to benefit the end Interne=
t user=E2=80=A6 I&#39;d cheer too.=C2=A0</div><div><br></div><div>If.</div>=
<div><br></div><div>JHA</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Aug 10, 2021 at 12:16 PM Dick Roy &lt=
;<a href=3D"mailto:dickroy@alum.mit.edu">dickroy@alum.mit.edu</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">








<div lang=3D"EN-US">

<div class=3D"gmail-m_-2170359048779548105Section1">

<p class=3D"MsoNormal"><font size=3D"2" color=3D"navy" face=3D"Arial"><span=
 style=3D"font-size:10pt;font-family:Arial;color:navy">You may find this of=
 some relevance!<u></u><u></u></span></font></p>

<p class=3D"MsoNormal"><font size=3D"2" color=3D"navy" face=3D"Arial"><span=
 style=3D"font-size:10pt;font-family:Arial;color:navy"><u></u>=C2=A0<u></u>=
</span></font></p>

<p class=3D"MsoNormal"><font size=3D"2" color=3D"navy" face=3D"Arial"><span=
 style=3D"font-size:10pt;font-family:Arial;color:navy"><a href=3D"https://a=
rstechnica.com/tech-policy/2021/07/ajit-pai-apparently-mismanaged-9-billion=
-fund-new-fcc-boss-starts-cleanup/" target=3D"_blank">https://arstechnica.c=
om/tech-policy/2021/07/ajit-pai-apparently-mismanaged-9-billion-fund-new-fc=
c-boss-starts-cleanup/</a><u></u><u></u></span></font></p>

<p class=3D"MsoNormal"><font size=3D"2" color=3D"navy" face=3D"Arial"><span=
 style=3D"font-size:10pt;font-family:Arial;color:navy"><u></u>=C2=A0<u></u>=
</span></font></p>

<p class=3D"MsoNormal"><font size=3D"2" color=3D"navy" face=3D"Arial"><span=
 style=3D"font-size:10pt;font-family:Arial;color:navy">Cheers (or whatever!=
),<u></u><u></u></span></font></p>

<p class=3D"MsoNormal"><font size=3D"2" color=3D"navy" face=3D"Arial"><span=
 style=3D"font-size:10pt;font-family:Arial;color:navy"><u></u>=C2=A0<u></u>=
</span></font></p>

<p class=3D"MsoNormal"><font size=3D"2" color=3D"navy" face=3D"Arial"><span=
 style=3D"font-size:10pt;font-family:Arial;color:navy">RR<u></u><u></u></sp=
an></font></p>

<p class=3D"MsoNormal"><font size=3D"3" face=3D"Times New Roman"><span styl=
e=3D"font-size:12pt"><u></u>=C2=A0<u></u></span></font></p>

</div>

</div>


_______________________________________________<br>
Starlink mailing list<br>
<a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starlin=
k@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/starlink" rel=3D"noreferr=
er" target=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink</a><b=
r>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div>--</div><div>Jeremy Austin=
</div><div>Sr. Product Manager</div><div>Preseem | Aterlo Networks</div><di=
v><a href=3D"http://preseem.com" target=3D"_blank">preseem.com</a></div><di=
v><br></div><div>Book a Call: <a href=3D"https://app.hubspot.com/meetings/j=
eremy548" target=3D"_blank">https://app.hubspot.com/meetings/jeremy548</a><=
/div><div>Phone: 1-833-733-7336 x718</div><div>Email: <a href=3D"mailto:jer=
emy@preseem.com" target=3D"_blank">jeremy@preseem.com</a></div><div><br></d=
iv><div><span style=3D"color:rgb(23,43,77);font-family:-apple-system,system=
-ui,&quot;Segoe UI&quot;,Roboto,&quot;Noto Sans&quot;,Ubuntu,&quot;Droid Sa=
ns&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:16px;letter-spacin=
g:-0.08px;white-space:pre-wrap">Stay Connected with Newsletters &amp; More:=
=C2=A0</span><a href=3D"https://preseem.com/stay-connected/" title=3D"https=
://preseem.com/stay-connected/" style=3D"color:rgb(0,82,204);font-family:-a=
pple-system,system-ui,&quot;Segoe UI&quot;,Roboto,&quot;Noto Sans&quot;,Ubu=
ntu,&quot;Droid Sans&quot;,&quot;Helvetica Neue&quot;,sans-serif;font-size:=
16px;letter-spacing:-0.08px;white-space:pre-wrap" target=3D"_blank"><u>http=
s://preseem.com/stay-connected/</u></a><br></div></div></div>

--000000000000dd3d0505c93a6975--

--===============5545935058255628616==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5545935058255628616==--

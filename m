Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A6348A1F7
	for <lists+cake@lfdr.de>; Mon, 10 Jan 2022 22:31:47 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5D93C3CB48;
	Mon, 10 Jan 2022 16:31:41 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1641850301;
	bh=KSaSBwB6mS7XGCWcutPzen23jOW9mcUUU219TIWOw7c=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gk1gIDHZf/Wbo7xnlfk/GTct16zzOUSZEsJyJ9RsH3QH5c3bX7tkymBMPkRA7TnLS
	 KKQZs9wEF4jGK8AF5HWvQEFLGaz9Zlg6V+Od6qULkQ5nRS3ek2gevg4TSPLui1do/e
	 GPzI+Ai9R63mOl5uEG16u/DLtSy5pNz3aUtdsCnlT5Eq7l+6OY8FYhY4lZS58tke6U
	 gkb+xAiMIQnvKE793B1hJedEOJBciIcYsWFIeqnoE2z4cMGlI/yIyINS9+Us43T2DI
	 UhhNE3PH+zfxPAfxF6cJu8NRsV/18+0U6NBBCDZskkqQi+1aVrU4RRG442o9+ncgzu
	 A7aD9P8gw6zew==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ua1-x933.google.com (mail-ua1-x933.google.com
 [IPv6:2607:f8b0:4864:20::933])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1BA593CB41;
 Mon, 10 Jan 2022 16:31:40 -0500 (EST)
Received: by mail-ua1-x933.google.com with SMTP id l15so14662119uai.11;
 Mon, 10 Jan 2022 13:31:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fu5OZHNsfosVhWyFCoFhpLwPof3yz4YTtP+vLGNqb4w=;
 b=Ie5MbSXc6w5B0L28OSF/FKZyzkAZ+xvZ2zSnGTNdiTW34vYGcus3tuTJ0Z8S8RfIMm
 UKFhDDbkVFnPKej2cyFrQLfoxWUBb28ZIECryxGGRBVg6fdsu3qedrsXLG1qQBxHoy01
 9ASq71XWMYiHHC+rZ+zbq9jXVT5L1UjXyhYGnKUnnZZubWr4PlNAR5LE1PXwHZOpqzzG
 nf9q0rs4V0z9dAD5TpQRcqCL/0lni3AaTHo8bwQfrvDmPPfiEN1eXYnW9FW6mOblTSc+
 GIR4uxdMAumfJoX9SPYNIAx/C8DKWq7k0V5IQjMuQiYn1QHRkRKwKeMbD67M94TS6ND5
 Yf/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fu5OZHNsfosVhWyFCoFhpLwPof3yz4YTtP+vLGNqb4w=;
 b=IXNtWVr1VJ0yvaBzqyP4dEDEroOUukS2pTmmdE54RQP+OcnG1V45Zf25aTJPDKlWGd
 emaqj9hkFQDZSA37RYkMio/sjTSxgEHFGsTXDINlW/5n94hytyfZILL4GqdPnLi1O1+q
 RQhS+/W61Bwi05cH2/DdTVgoNltgFQz4cy0jgvOxkQYuK0FtqlU1YNw8Szkxx49iJ5UM
 6MZof5KGUex0Wt1GF3xR/5bmWkdZekhLVbqjPuD/HWUtCkgbPAinhXNqFO6igRd74nDs
 UHrlgb3t2iTboTwZUQHuES4FuE8l1JNgfPDvC8NBZ72ubsnBTiQ8Z06LtxZP3VgE3Rn/
 eg4Q==
X-Gm-Message-State: AOAM530cNtIY1sRO+Gs+8/5BCSxi/Hp+2y1bt+c/hr471UdoqQP39sCK
 jJXGzCJtcKne+odrhCrLleeNKdN1+2mk8A4tph8=
X-Google-Smtp-Source: ABdhPJz3DFW08hlXdzNuGGiI3DyxhRL2VK5isGOjMOFmzj8ZMVAWJn6SePiwCKgFopyLbf1ESx+u36RwSnW9nQrMguA=
X-Received: by 2002:ab0:6558:: with SMTP id x24mr783404uap.107.1641850299504; 
 Mon, 10 Jan 2022 13:31:39 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw7B0y3Voj_fTTS1WMPkCi_mn8ckVbKKU10feR7id-Vefw@mail.gmail.com>
In-Reply-To: <CAA93jw7B0y3Voj_fTTS1WMPkCi_mn8ckVbKKU10feR7id-Vefw@mail.gmail.com>
From: =?UTF-8?Q?Jonas_M=C3=A5rtensson?= <martensson.jonas@gmail.com>
Date: Mon, 10 Jan 2022 22:31:56 +0100
Message-ID: <CAM9iV=LxEffEgDaAofBOa-emt5aJ18kh-Z3Vx_QQr2gbCyvnHA@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: Re: [Cake] [Bloat] cake + mpls?
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
Cc: Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============0042631143314888992=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0042631143314888992==
Content-Type: multipart/alternative; boundary="000000000000e05c7d05d5410f38"

--000000000000e05c7d05d5410f38
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you just want to use cake with priority tins based on the MPLS "Traffic
Class" (TC) field (i.e. the renamed original "EXP" field, see RFC5462), I
think you can use a tc flower filter (
https://man7.org/linux/man-pages/man8/tc-flower.8.html) matching on mpls_tc
values. See here for some examples:

https://www.redhat.com/sysadmin/mpls-tc-linux-kernel

/Jonas

On Mon, Jan 10, 2022 at 7:21 PM Dave Taht <dave.taht@gmail.com> wrote:

> I noticed that sometime in the past 8 years the flow_dissector gained
> support for dissecting mpls packets. I don't know how deep that rabbit
> hole
> goes.
>
> Over here on this mikrotik thead
> https://forum.mikrotik.com/viewtopic.php?p=3D904422#p904422 the question
> was asked about cake, the exp bits, and mpls.
>
> In looking over this, would we slam cake onto the vrf? or?
>
> https://blog.swineson.me/en/use-linux-as-an-mpls-router/
>
> I have precisely zero experience with mpls. Is there an mpls expert in
> the house?
>
> --
> I tried to build a better future, a few times:
> https://wayforward.archive.org/?site=3Dhttps%3A%2F%2Fwww.icei.org
>
> Dave T=C3=A4ht CEO, TekLibre, LLC
> _______________________________________________
> Bloat mailing list
> Bloat@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/bloat
>

--000000000000e05c7d05d5410f38
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If you just want to use cake with priority tins based on t=
he MPLS &quot;Traffic Class&quot; (TC) field (i.e. the renamed original &qu=
ot;EXP&quot; field, see RFC5462), I think you can use a tc flower filter (<=
a href=3D"https://man7.org/linux/man-pages/man8/tc-flower.8.html">https://m=
an7.org/linux/man-pages/man8/tc-flower.8.html</a>) matching on=C2=A0mpls_tc=
 values. See here for some examples:<div><br></div><div><a href=3D"https://=
www.redhat.com/sysadmin/mpls-tc-linux-kernel">https://www.redhat.com/sysadm=
in/mpls-tc-linux-kernel</a><br></div><div><br></div><div>/Jonas</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon=
, Jan 10, 2022 at 7:21 PM Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.c=
om">dave.taht@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">I noticed that sometime in the past 8 years the flow=
_dissector gained<br>
support for dissecting mpls packets. I don&#39;t know how deep that rabbit<=
br>
hole<br>
goes.<br>
<br>
Over here on this mikrotik thead<br>
<a href=3D"https://forum.mikrotik.com/viewtopic.php?p=3D904422#p904422" rel=
=3D"noreferrer" target=3D"_blank">https://forum.mikrotik.com/viewtopic.php?=
p=3D904422#p904422</a> the question<br>
was asked about cake, the exp bits, and mpls.<br>
<br>
In looking over this, would we slam cake onto the vrf? or?<br>
<br>
<a href=3D"https://blog.swineson.me/en/use-linux-as-an-mpls-router/" rel=3D=
"noreferrer" target=3D"_blank">https://blog.swineson.me/en/use-linux-as-an-=
mpls-router/</a><br>
<br>
I have precisely zero experience with mpls. Is there an mpls expert in<br>
the house?<br>
<br>
-- <br>
I tried to build a better future, a few times:<br>
<a href=3D"https://wayforward.archive.org/?site=3Dhttps%3A%2F%2Fwww.icei.or=
g" rel=3D"noreferrer" target=3D"_blank">https://wayforward.archive.org/?sit=
e=3Dhttps%3A%2F%2Fwww.icei.org</a><br>
<br>
Dave T=C3=A4ht CEO, TekLibre, LLC<br>
_______________________________________________<br>
Bloat mailing list<br>
<a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">Bloat@list=
s.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a><br>
</blockquote></div>

--000000000000e05c7d05d5410f38--

--===============0042631143314888992==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0042631143314888992==--

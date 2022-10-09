Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABFA5F8DCA
	for <lists+cake@lfdr.de>; Sun,  9 Oct 2022 21:57:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CC9133CB39;
	Sun,  9 Oct 2022 15:57:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665345473;
	bh=yoZiDTamJdEzQL+5QSum7wOznHouy8M0oeeyUwcB3XA=;
	h=References:In-Reply-To:Date:Cc:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=N3rgV67RomVPwTKQ7u6DNkWqOdDg8LhVV9Os1O7+NohCKvlFluEzhJhPWCPkmFVo7
	 sCoeUK1mMIKRKrUJEPp4L7e+3wzIa4FMLJKaBi/8zRCRQp7NbkNwFFv0N3gL0hfU+c
	 +15GkHJFoSbvBKPqmq4C6yHa7Q6ChIwG2GMN0hL5sANAlkZb+cVzrkOYxNAFCS5VG8
	 xtcIYUhKe2ryDZ8BREtxwgBCtn9BA4v/sMtGd+hY5Mm0z2kiezZLK3hTyiQ9dgkqgF
	 b5lh6WuK3AlrpREuESs2LKA8DtQsRNsZiRIMpqUkIWiSDBTI3eDWBG6JD7TCe44ZxW
	 XQdAAX5X71jUg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com
 [IPv6:2607:f8b0:4864:20::529])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7F0A33B29E
 for <cake@lists.bufferbloat.net>; Sun,  9 Oct 2022 15:57:52 -0400 (EDT)
Received: by mail-pg1-x529.google.com with SMTP id u71so1268662pgd.2
 for <cake@lists.bufferbloat.net>; Sun, 09 Oct 2022 12:57:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lostcreek-tech.20210112.gappssmtp.com; s=20210112;
 h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Eh+JiwrKIxgsXapqTrq6KISa2aGjLiCfDV0c1GDFIZU=;
 b=DJYhH+j73YVGQfAV/brV9DUWOP3UpZFlehMMapGwH1ohI3y21SSaWm+BgxDURcyqYe
 q6hUaP0wSgLI2a9HShWeTHQoGHLZzaGD2GFcW4GGXwVzJZCgHW6P7LWxDkUrRD7ZN7Tm
 AK6YI6MiZfXIc7yBQsMQT6rV5VxUszgkZEHdLmoNTDAf5UhbP8aMPvCabyR5Mtjt/Kb+
 FjzHKpYz3s6J8BEKi5JBpTOzHpjVMz9U8wk3rffBMleiHdPeWORHKKEXAvBOTrRMQR4C
 8BqnjP+gqSNxJaf9xWip/bHthbK5tfsfCuCtphfEqXg2bEs35XEPwkAINgalVnXgEcE+
 kz5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Eh+JiwrKIxgsXapqTrq6KISa2aGjLiCfDV0c1GDFIZU=;
 b=WjV2hEyckcBiktTUrAcKpNHygCbV26s3NJdqgYlLpXPmoCKhgi+68g2AzZDfinEIeb
 YUv8f/oknHI9KKqv/4pX6wIFVyCH5e5MBrQORGKG9E2B48UyGTMHNMtRf0BIYrI04kHB
 CrTv6CjVSplPo0FnA/SQp9wSBZCFZSS/AhuPe9xfHRfxq+FvmeiBcJ4timEZvf3gGkgc
 JHlh8I/1AeEaNmxTb5PNRfanfaCJAvaLAcLPUHqrFyd119cPQ4Gb1nql6eXWMiHKJ1nq
 H1M8VtMPeV8DIx6zLUi9/AxMpD6e0VrRAOlAEikSqB4kQIXcrP+uu0dxtlld5VFkub7g
 DgCQ==
X-Gm-Message-State: ACrzQf0mdhVbMAJTkhNq9RkkqMe9yl1rmYXPooNHJ2MfMQBXiss27qxG
 ynjUp/HMYNIZOcudgnoGTcAZdKdQ1cpS82qnBaBjo+p+yoBunw==
X-Google-Smtp-Source: AMsMyM6ptRKy6nLw3szTLHiJSg81u+yxzbX6U4eRzv28nn1gdBZbgBf3XouVy0PV8UQj35iuqx5vFJgMUgUg2Q2hpbw=
X-Received: by 2002:a05:6a00:f03:b0:563:210a:5ffb with SMTP id
 cr3-20020a056a000f0300b00563210a5ffbmr5906903pfb.70.1665345471101; Sun, 09
 Oct 2022 12:57:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <e91ad864-2fce-2d57-3d40-32b0e9416921@sewingwitch.com>
In-Reply-To: <e91ad864-2fce-2d57-3d40-32b0e9416921@sewingwitch.com>
Date: Sun, 9 Oct 2022 14:57:41 -0500
Message-ID: <CADmwGqve4GQzj=MOqsc-J2bNURHqYZX+Y4ApEtOCxDZoACh=uA@mail.gmail.com>
Cc: Cake List <cake@lists.bufferbloat.net>
Subject: Re: [Cake] The most wonderful video ever about bufferbloat
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
From: Thomas Croghan via Cake <cake@lists.bufferbloat.net>
Reply-To: Thomas Croghan <tcroghan@lostcreek.tech>
Content-Type: multipart/mixed; boundary="===============5086484763614430526=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5086484763614430526==
Content-Type: multipart/alternative; boundary="0000000000003bd37905ea9f7543"

--0000000000003bd37905ea9f7543
Content-Type: text/plain; charset="UTF-8"

There seems to be quite a lot of misinformation being spread in the
comments. It might be good if some of the people who are pretty familiar
with this tech jump in and help to minimize the disinformation spread.

On Sun, Oct 9, 2022, 12:35 Kenneth Porter via Cake <
cake@lists.bufferbloat.net> wrote:

> The video comments are interesting. Some pushback against blindly
> turning on SQM.
>
> For example, using Cake might not be good on an older router with a
> gutless CPU and FQ-CoDel might be the better choice.
>
> It might be useful to accumulate all the objections there and create a
> wiki page responding to them in an organized way.
>
>
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake
>

--0000000000003bd37905ea9f7543
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">There seems to be quite a lot of misinformation being spr=
ead in the comments. It might be good if some of the people who are pretty =
familiar with this tech jump in and help to minimize the disinformation spr=
ead.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Sun, Oct 9, 2022, 12:35 Kenneth Porter via Cake &lt;<a href=3D"mailt=
o:cake@lists.bufferbloat.net">cake@lists.bufferbloat.net</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">The video comments are interesting. So=
me pushback against blindly <br>
turning on SQM.<br>
<br>
For example, using Cake might not be good on an older router with a <br>
gutless CPU and FQ-CoDel might be the better choice.<br>
<br>
It might be useful to accumulate all the objections there and create a <br>
wiki page responding to them in an organized way.<br>
<br>
<br>
_______________________________________________<br>
Cake mailing list<br>
<a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank" rel=3D"nore=
ferrer">Cake@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a=
><br>
</blockquote></div>

--0000000000003bd37905ea9f7543--

--===============5086484763614430526==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5086484763614430526==--

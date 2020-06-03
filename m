Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED8E1EE2DC
	for <lists+cake@lfdr.de>; Thu,  4 Jun 2020 12:59:13 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7B1103CB47;
	Thu,  4 Jun 2020 06:59:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1591268351;
	bh=4RPHAPGJdE14sX5mQeMIC5ffdCu2V6wU1z9iU96cnwo=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ml0+XhDj/CSlpPbPUYf5nFVtDWIfYAssrZDtuIwnJfw5YTUc/IHsSATk0qwxdCWF1
	 mH+wA1/qvmI5LY8Ong7Xi8g1YViaftkKBrVi/f7g6b4KbSEmBaX4Ah/t1BP3/Tqt5O
	 mBlZqL+Pw+/tu83PYBBTFPlw0Jwr+LVXIDnyzdGGLaw8562B6poqAp4ORsgCy1kSY/
	 r4Y5KV/o9ac7DgAIZoTUg8QlZYyMNa+/gzIFXL+28k2OvvXnkqBXwzkkwMhRG9prmz
	 /EVB9pMfSnYQK2T72oe3GbpAgBzRBPQG1yfFzZ9pr8nyM8yKI+gUU3JAk/3UY/eteD
	 NX5A/tnxmSI4g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0989C3B29E;
 Wed,  3 Jun 2020 15:09:17 -0400 (EDT)
Received: by mail-lf1-x12c.google.com with SMTP id d7so2011301lfi.12;
 Wed, 03 Jun 2020 12:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DJyLiDUZbyTuXbKDO3aZopY1Yrzw40/4aL1HvI9pwUg=;
 b=kAym+Toy33h2wFM5zGLX4Mnr90Zm1FIEfsPYuNmYe4L45gFo+sWFvZg2T/Y++eTVsy
 QAIXVAhbHj7dZSFSuELyHTVWRFgjFhxHI+qqZt0nHnFQqkfpmvVbLlkWHKeh1sW9K2Ky
 2yoxYwI9B/A0oYioIWQ8hQPpOJk5bSSevtPkdOVe/KvbN97iZJMI4MXRaU/chG62goQJ
 qRmyQ3w1XDLrL3I1JUuGdMR2L5Rhnn3VWDzkk18TCWYwjX529rcBqX7WWNm1T+W4qTRm
 tuPuJA2xUXz4bYjYLVpkaLLwRUR/bZ1JP+NtXx+uT9OX1N7e78Agqe3i09OJTFvsq1yY
 YR1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DJyLiDUZbyTuXbKDO3aZopY1Yrzw40/4aL1HvI9pwUg=;
 b=sVA/ZW5xLaz8VR7YZTnUyqMCl50l7hnRkqRMdxgSSVrqWMa6BuivVjbAirFft9c1Ha
 7Ad8030SXxM+iNxmUGXEGD2fA37msie7H+XxHk7oqHtPkUkG4jOjzu8KyEAzKsl0WOWz
 HIF7RFmR7xM8OImOsdR4EO49Q9BqKQSaXYlmFSj1hjWnXHuHQafwYyg0pKRNERWUH0Ip
 0Mtxlirr1eUBGAsuUJXuodXy8zaLpfsJfEl2W2Cb9SqY10X2YWbDw627OJ1iitgok9Nv
 0RZry0cLsAgqHa5Y7GfWgyPo5fjMqlJadqwzZLdnKxobyMjcNBy7j+Q7lD/rcLF5ZfLO
 ++iw==
X-Gm-Message-State: AOAM530MYh1GW+BKnPmr0Vf9ZpR6MX9D3DgjUDGnjCFcX0D1D0y7lg6d
 I/nN5S9yuC+HO5i6T/vTEzbYcKQbz9m2SEB6gY0=
X-Google-Smtp-Source: ABdhPJxgtUQBbpuOeV1eUdVkc+W6SsVpSlc4ra5NxXXgxckuDxJPKl/5rgisv0OGvcN01AjpqESl4azD2ucQCbW4jB4=
X-Received: by 2002:a19:990:: with SMTP id 138mr480989lfj.135.1591211355880;
 Wed, 03 Jun 2020 12:09:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw79=3m5UJx2nKPADo1f2BJnMbrzjrHOYf-jpZdw=RESfA@mail.gmail.com>
In-Reply-To: <CAA93jw79=3m5UJx2nKPADo1f2BJnMbrzjrHOYf-jpZdw=RESfA@mail.gmail.com>
From: Pedro Tumusok <pedro.tumusok@gmail.com>
Date: Wed, 3 Jun 2020 21:09:05 +0200
Message-ID: <CACQiMXb9c1Momyj0vkNwoJq8LF1jQ4S_d2sTKtoBJHJQ9Yo+iw@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailman-Approved-At: Thu, 04 Jun 2020 06:59:10 -0400
Subject: Re: [Cake] [Bloat] anyone using google stadia?
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
Cc: Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, "Ozer,
 Sebnem" <Sebnem_Ozer@comcast.com>, Cake List <cake@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============7107586009080276504=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7107586009080276504==
Content-Type: multipart/alternative; boundary="000000000000a141f605a732c36b"

--000000000000a141f605a732c36b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have it, but have not fired up for awhile.
Lets see if I can get around to do some captures in a couple of days, if
anybody wants it, please feel free :)

Pedro

On Wed, Jun 3, 2020 at 9:36 AM Dave Taht <dave.taht@gmail.com> wrote:

> and willing to share some packet captures of 5 minutes of gameplay
> start to finish? Over wired and wifi?
>
> thx.
>
> --
> "For a successful technology, reality must take precedence over public
> relations, for Mother Nature cannot be fooled" - Richard Feynman
>
> dave@taht.net <Dave T=C3=A4ht> CTO, TekLibre, LLC Tel: 1-831-435-0729
> _______________________________________________
> Bloat mailing list
> Bloat@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/bloat
>


--=20
Best regards / Mvh
Jan Pedro Tumusok

--000000000000a141f605a732c36b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have it, but have not fired up for awhile.<div>Lets see =
if I can get around to do some captures in a couple of days, if anybody wan=
ts it, please feel free :)</div><div><br></div><div>Pedro</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun =
3, 2020 at 9:36 AM Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com">dav=
e.taht@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">and willing to share some packet captures of 5 minutes of g=
ameplay<br>
start to finish? Over wired and wifi?<br>
<br>
thx.<br>
<br>
-- <br>
&quot;For a successful technology, reality must take precedence over public=
<br>
relations, for Mother Nature cannot be fooled&quot; - Richard Feynman<br>
<br>
<a href=3D"mailto:dave@taht.net" target=3D"_blank">dave@taht.net</a> &lt;Da=
ve T=C3=A4ht&gt; CTO, TekLibre, LLC Tel: 1-831-435-0729<br>
_______________________________________________<br>
Bloat mailing list<br>
<a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">Bloat@list=
s.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">Best regards / Mvh<br>Jan Pedro Tumusok<br><br><=
/div>

--000000000000a141f605a732c36b--

--===============7107586009080276504==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7107586009080276504==--

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 161F01BCFDA
	for <lists+cake@lfdr.de>; Wed, 29 Apr 2020 00:22:52 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3ED1B3CB38;
	Tue, 28 Apr 2020 18:22:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588112570;
	bh=rXywPRQQXyRHKhpvG9hPvWusekTg/LqjmB314uyqHmo=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=g/gXy1HodVNeufdzgJJsFPH8fe5aNEqHN6j+DwirPN98J00A7bT8gDeHfVkB1DSv/
	 mpLvyE65cv29v2WaTW2mmOQnx6QTYaNor6LN2gu2fHyCokZLQvzq3qK9IcTA/yzacz
	 tIYcj5Pu+o6SHNZxQrQHIxCGQ4kHLg/45q7/aFq3IYb5j+M554gm56XwFTxkv0GU1R
	 F36TgEy+KPXMsiZkGGQUgZ8A9viSDKkeMyDD7Rw4wwBqJu1PKAJz2mbFRmYTnGdjxE
	 JusM6Wi38bH1TD8Eq3eEqZ+AFRQ5Ik06ZXE5+VEEugLwtBwVR0I2LQ6zbdSnnqU5US
	 sPaodj8pbyeLQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com
 [IPv6:2a00:1450:4864:20::230])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3BA683CB37
 for <cake@lists.bufferbloat.net>; Tue, 28 Apr 2020 18:22:48 -0400 (EDT)
Received: by mail-lj1-x230.google.com with SMTP id w20so573583ljj.0
 for <cake@lists.bufferbloat.net>; Tue, 28 Apr 2020 15:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aenertia.net; s=dkimaenertianet;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RBxMCaGQ7+9fBpcPyMDtxaLkEyGPiQfmVNjdpGQ9W/o=;
 b=WRW7DZiyzHKlQ85pF2y2AmoSkfLBlmqAIlSQkaZDx+D2SYnNNu038FjiMvcW1BMgZE
 A0ch0rBpygo58IIxxJ9egCY01ROUiDTjYO+fc+lOf1e+i6Ifv+rlVRI9bgHduRyKEZ7a
 CRb2JJf7Cgm2883plJMNyCJFlzXlyU21DxzbA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RBxMCaGQ7+9fBpcPyMDtxaLkEyGPiQfmVNjdpGQ9W/o=;
 b=qERA71UC+zZ6PHJO233it7q6dlU5U1uQmoLhe8vdYR8cLdXpStIppLp3oz5FREwfY5
 VRp7MRmi3UApTfG/loZWKa6ynM3EXDmFVzQPfsVLNH4YqX4hcjDSfCrdoFx/jc1g2M35
 8nc5+CVO2sYwjt86VZ31bv471P9nxxZ5HMbjGHVu3bVW8eH+riGe7vpyw7iX/6suAtKC
 nHfFP5FHmPZiVwFshh7/MtqnaYovxqzeUMd5XpbnOBVT3dUGbSD0Br5I0/rAWz75w0Wk
 CpFcd27W8dBRyl9QTMMYN575QBSypN3oMhusqymrlgdqL/v+KniPlIbj9KW8F7gyLIr9
 uxqA==
X-Gm-Message-State: AGi0PuZYSKJTK34rwbOjWSFnUqqr/ry6ZzGlEQOkllNybzO9Wh3BoBJq
 t8p7E8XRHlJN+wyHjGkGK+az+pEatCAZNUEkwtJbXw==
X-Google-Smtp-Source: APiQypLG9UQyEzB54mU1+Eo4U9kACz9PwFXIFlp8wVnbygGrD19UG8zc98Cfhs/hl8u4BifGduS9zUugymeNU+Qd1ko=
X-Received: by 2002:a2e:80d2:: with SMTP id r18mr16489837ljg.269.1588112567057; 
 Tue, 28 Apr 2020 15:22:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw5ukwJXQeo_QKort=vYmXJSs93W=x1uvBJ5V+Um=hNjZg@mail.gmail.com>
In-Reply-To: <CAA93jw5ukwJXQeo_QKort=vYmXJSs93W=x1uvBJ5V+Um=hNjZg@mail.gmail.com>
From: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
Date: Wed, 29 Apr 2020 10:22:35 +1200
Message-ID: <CAKiAkGRQ=gD_11ofwGpOh7ieaW4XwAPFSVZ6gMWiDziPV+o1kQ@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: Re: [Cake] [Cerowrt-devel] intel gives up on home gateways
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
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============9136326319085209137=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============9136326319085209137==
Content-Type: multipart/alternative; boundary="0000000000006c4e6105a46145d9"

--0000000000006c4e6105a46145d9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Good riddance; most of the current platforms are using Lantiq Wireless
which they got from some acquizition/cross-licence deal and are poorly
documented at worst and completely innoperable.

I doubt this will impact any of their Industrial IO and Edge stuff which is
actually good and anyone sensible might base their design on.

-Joel



On Wed, 29 Apr 2020 at 04:57, Dave Taht <dave.taht@gmail.com> wrote:

> H/T sebastian:
>
>
> https://investors.maxlinear.com/press-releases/detail/395/maxlinear-to-ac=
quire-intels-home-gateway-platform
>
> Gawd knows what this means.
>
> --
> Make Music, Not War
>
> Dave T=C3=A4ht
> CTO, TekLibre, LLC
> http://www.teklibre.com
> Tel: 1-831-435-0729
> _______________________________________________
> Cerowrt-devel mailing list
> Cerowrt-devel@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cerowrt-devel
>

--0000000000006c4e6105a46145d9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Good riddance; most of the current platforms are using Lantiq W=
ireless which they got from some acquizition/cross-licence deal and are poo=
rly documented at worst and completely innoperable.</div><div class=3D"gmai=
l_default" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D=
"gmail_default" style=3D"font-family:verdana,sans-serif">I doubt this will =
impact any of their Industrial IO and Edge stuff which is actually good and=
 anyone sensible might base their design on.</div><div class=3D"gmail_defau=
lt" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_=
default" style=3D"font-family:verdana,sans-serif">-Joel<br></div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><div =
class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Wed, 29 Apr 2020 at 04:57, Dave Taht &lt;<a href=3D"mailto:dave.taht@gma=
il.com">dave.taht@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">H/T sebastian:<br>
<br>
<a href=3D"https://investors.maxlinear.com/press-releases/detail/395/maxlin=
ear-to-acquire-intels-home-gateway-platform" rel=3D"noreferrer" target=3D"_=
blank">https://investors.maxlinear.com/press-releases/detail/395/maxlinear-=
to-acquire-intels-home-gateway-platform</a><br>
<br>
Gawd knows what this means.<br>
<br>
-- <br>
Make Music, Not War<br>
<br>
Dave T=C3=A4ht<br>
CTO, TekLibre, LLC<br>
<a href=3D"http://www.teklibre.com" rel=3D"noreferrer" target=3D"_blank">ht=
tp://www.teklibre.com</a><br>
Tel: 1-831-435-0729<br>
_______________________________________________<br>
Cerowrt-devel mailing list<br>
<a href=3D"mailto:Cerowrt-devel@lists.bufferbloat.net" target=3D"_blank">Ce=
rowrt-devel@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/cerowrt-devel" rel=3D"nor=
eferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cerowrt-d=
evel</a><br>
</blockquote></div>

--0000000000006c4e6105a46145d9--

--===============9136326319085209137==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============9136326319085209137==--

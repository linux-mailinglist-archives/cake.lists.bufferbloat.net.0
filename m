Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EDF1C2704
	for <lists+cake@lfdr.de>; Sat,  2 May 2020 18:37:31 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8C9733CB39;
	Sat,  2 May 2020 12:37:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588437450;
	bh=KcjnVTRg5UpCTVIxbcB9I7+UFCDwLKerDV7/dIM0QFA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IZQKQyf1fbntYelhqh5388JyaqaQzEmhBWXVY0EL4fQX2hgJ4M8sjj7ieNmeH/rIE
	 OIpJ4bHbNKKxKFg132nnA7u5PGbRcNCOA75mDVOIG3wmFB0qwaKlakCiLF7aHjBwMh
	 Lp8H0eZibexk8vS6wojHiZlUIsqH8ylvUGySPnhuwmCWpOFD6j1wsXZR2T3uE6ayqv
	 +eSj6v7zdQj+CUnDr2rWPavVNCqcxRP+WG7T48L8ne5N+ROh/gkvIi4Et3rLxbrFTB
	 k1qgWPeJhIYNXwEyJUVhMhix5tc6+hgOVY+ETvW0AsVNpTTwBAnc/DS/lg8cBbkeTw
	 IEbZXVYl69Y7w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com
 [IPv6:2607:f8b0:4864:20::129])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 938603B2A4;
 Sat,  2 May 2020 12:37:28 -0400 (EDT)
Received: by mail-il1-x129.google.com with SMTP id u189so7250959ilc.4;
 Sat, 02 May 2020 09:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=idZltIr/vwdfEgUbND+JHANCm2c/BQLsG3BEWvN09Ug=;
 b=iHB3HQe/+tlrZz5+0WQD27T8Iy5nPJ7JnxhcXgyo5kv4445Qwil22lNzl8cg+3cxmj
 V+m8rsBfJ8gjovwYdETW12BHBvsLio9eyGtIyw17QfcCb+gnE6r5pRVo8xE3PzoNlp79
 WBxcOZ76S4Hu/cNUsrl0GFy1GbIfQF1gdKnwHYEV8jpx364Te+OtSgTjPmYoxwjg5kxK
 l3ZfXaE2IsOxQcJc5I29xCfitCCE2k1+r19n/EiFISFcVXLeHEXdXIi7zCprrmifd9IR
 Oy6hOtAr2u2pS+6Ejs6bjbKPH6tV5JJUAtGtU6IUNXxOtunDpYFFeT1/sqS5OsCnTlef
 YcEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=idZltIr/vwdfEgUbND+JHANCm2c/BQLsG3BEWvN09Ug=;
 b=ep1S2Eyj93z7b3JT6XhoL0MdiUg8/fUsIQZ6Ye8mWBg0P6eQ1X1jPPcu+4RIVP9NXg
 Xqf0kxYwRZ10brQDCpO5WQdB3GrTg3AkTQ7/7wJALuFdTomAJjLxphF2QUUvfFUI+7r7
 LrWkw5abgpu0DwWgKLg162XPtmX8E21U3H++D7uAeux0r+rJ0SGYqTZabEpU/rlkiREA
 Iw5u8e+hh2Ck4GBc4e89PVQfedkM6ghFVIGMHM/LrDo9yjJZieL7g3O2mi6+eReeJxlM
 OkQiJvlWaEEFEG/p66qNu8IdmzL/LhOBdyoymHP22QXMZYNCEOuVAsey9QWXFlio003L
 6Eqg==
X-Gm-Message-State: AGi0PuZpSo265LupkfZXH30quyBejeNBE8oLFs5tFwOlWj23Lef1qjeB
 ly1nu6k07Pr5ZtPun9uAyXZ39lZuFjQDgjajM3o=
X-Google-Smtp-Source: APiQypKuoKwsddbEu0ZrjQDRxKhqr6hPuOJFH2P+3gJgXOfF4xIWYA6x2MXsDYnWmsgU8ZFiXBIEjHihXqwBzn7SRDE=
X-Received: by 2002:a92:5a5c:: with SMTP id o89mr8982170ilb.47.1588437448137; 
 Sat, 02 May 2020 09:37:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw5HbGBcy6uW0dLbjtLmp_g4SLdK8Ny7G8UvbX_d+H1yXg@mail.gmail.com>
 <05410663-5E50-4CF5-8ADE-3BBB985E32B1@gmx.de>
 <mailman.170.1588363787.24343.bloat@lists.bufferbloat.net>
 <24457.1588370840@localhost> <013601d6201f$04c7db50$0e5791f0$@hanekom.net>
In-Reply-To: <013601d6201f$04c7db50$0e5791f0$@hanekom.net>
From: Benjamin Cronce <bcronce@gmail.com>
Date: Sat, 2 May 2020 11:37:15 -0500
Message-ID: <CAJ_ENFFCEdsFzJvkOjxHvuDxh87YtuaHO62XFrf4U_gE2S0Pyw@mail.gmail.com>
To: Jannie Hanekom <jannie@hanekom.net>
Subject: Re: [Cake] [Make-wifi-fast] [Bloat] dslreports is no longer free
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
 Sergey Fedorov <sfedorov@netflix.com>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Michael Richardson <mcr@sandelman.ca>, bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============4358372981617397806=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4358372981617397806==
Content-Type: multipart/alternative; boundary="000000000000d821a305a4ace9d7"

--000000000000d821a305a4ace9d7
Content-Type: text/plain; charset="UTF-8"

> Fast.com reports my unloaded latency as 4ms, my loaded latency as ~7ms

For download, I show 6ms unloaded and 6-7 loaded. But for upload the loaded
shows as 7-8 and I see it blip upwards of 12ms. But I am no longer using
any traffic shaping. Any anti-bufferbloat is from my ISP. A graph of the
bloat would be nice.

On Sat, May 2, 2020 at 9:51 AM Jannie Hanekom <jannie@hanekom.net> wrote:

> Michael Richardson <mcr@sandelman.ca>:
> > Does it find/use my nearest Netflix cache?
>
> Thankfully, it appears so.  The DSLReports bloat test was interesting, but
> the jitter on the ~240ms base latency from South Africa (and other parts of
> the world) was significant enough that the figures returned were often
> unreliable and largely unusable - at least in my experience.
>
> Fast.com reports my unloaded latency as 4ms, my loaded latency as ~7ms and
> mentions servers located in local cities.  I finally have a test I can
> share
> with local non-technical people!
>
> (Agreed, upload test would be nice, but this is a huge step forward from
> what I had access to before.)
>
> Jannie Hanekom
>
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake
>

--000000000000d821a305a4ace9d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">&gt; Fast.com reports my unloaded latency=
 as 4ms, my loaded latency as ~7ms <br></div><div dir=3D"ltr"><br></div><di=
v>For download, I show 6ms unloaded and 6-7 loaded. But for upload the load=
ed shows as 7-8 and I see it blip upwards of 12ms. But I am no longer using=
 any traffic shaping. Any anti-bufferbloat is from my ISP. A graph of the b=
loat would be nice.<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Sat, May 2, 2020 at 9:51 AM Jannie Hanekom &lt;<a=
 href=3D"mailto:jannie@hanekom.net">jannie@hanekom.net</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">Michael Richardson &l=
t;<a href=3D"mailto:mcr@sandelman.ca" target=3D"_blank">mcr@sandelman.ca</a=
>&gt;:<br>
&gt; Does it find/use my nearest Netflix cache?<br>
<br>
Thankfully, it appears so.=C2=A0 The DSLReports bloat test was interesting,=
 but<br>
the jitter on the ~240ms base latency from South Africa (and other parts of=
<br>
the world) was significant enough that the figures returned were often<br>
unreliable and largely unusable - at least in my experience.<br>
<br>
Fast.com reports my unloaded latency as 4ms, my loaded latency as ~7ms and<=
br>
mentions servers located in local cities.=C2=A0 I finally have a test I can=
 share<br>
with local non-technical people!<br>
<br>
(Agreed, upload test would be nice, but this is a huge step forward from<br=
>
what I had access to before.)<br>
<br>
Jannie Hanekom<br>
<br>
_______________________________________________<br>
Cake mailing list<br>
<a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.=
bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"noreferrer" =
target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
</blockquote></div></div>

--000000000000d821a305a4ace9d7--

--===============4358372981617397806==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4358372981617397806==--

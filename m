Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 08ABC8B656C
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:18:54 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 995C43CB42;
	Mon, 29 Apr 2024 18:18:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429132;
	bh=K8EPvHOdkw4dUZ+E5UQOdPgKPDtN9Sdm+8b/u5RcldI=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=gN4nkluEBO1t/loaDenftnKiZamN7B3zeuca9JXtfSMrWPz3KGeDM6r38ZaRDUTzS
	 0a5FzF3aoRuA/kUurLIl+aIPPRSQ85FEuhMbm7zy1d1fIJHdSP5xp1ftrAKNJ2Hmrc
	 bWgLLzP/sIe/OFyyZv46YNbLAgd27csmGHrEsaLIIvdCSUVb0A7r+9SgxRMzpWyfre
	 hNMY5THnDMaN8ILLy6B0JZY6aKYBYM6CqqRQ6zsNNa2v68o5HWpZQaPK7UmgelFHAw
	 +UpbOASSG1Lf2fkl+Mjl5WT8zotNPYnNzbD0ear/uvetmjWdP0KB3/SbDRg73M8PKH
	 Xo2PhQfbyAKXA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8E04B3B29E
 for <cake@lists.bufferbloat.net>; Sun,  9 Oct 2022 09:23:38 -0400 (EDT)
Received: by mail-pg1-x52e.google.com with SMTP id f193so8422134pgc.0
 for <cake@lists.bufferbloat.net>; Sun, 09 Oct 2022 06:23:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nathan.io; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=YZbuKHOyNVnhh5QvrxjzfjQtXjJOwotOEHu1Uo/xtxQ=;
 b=YqnCpNcmHcn6eZnoMfD4Znl/YESldGllL88FRnM6WiXYmYKITrE8lCbEyUMhtl9XAP
 zSgVe4Javrm8/xKDqz6nlKaOP4uK9wLAM93nLD0VOYGqJemDjVDLVcUCTeS4TVCk/Vn7
 z9wO4WF6C5SccwY6N5i/GPnBdVQjFxdBjG2a7K2uQ9e43/GqZ197okdASlSeSrle7kPK
 im+xKOBLfDPuxeJqZRkZSkOWcXcj/uF1IhpfjUqsT4/nUp299uOzSb8VOzvPW8SzhmTN
 2HOwNaWDtXO4+u8tg5mfO9eeNJX7YFWV+tLXfsre0CNs0vEUKWoYBldgMv3+EaAw+QUb
 B26Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=YZbuKHOyNVnhh5QvrxjzfjQtXjJOwotOEHu1Uo/xtxQ=;
 b=SE11hNLFOGclhddzDjHWk3dVJuMllf+h5qzCX4ynZG5CpiCARmLaOke/FdnbqcuW0E
 2zd2Rq4k85CYHrQeZ81uccCR+QlcUzsACApq2bXpUp1n476gxqIyO5hgoqMoejkibTuP
 y8jPaAjn9rhHVsODQxFzumVXmlV1sKGJnfjOVwGz2eofaZjJ5RvVIRWxzxt/3yWO23db
 oPXrfJoN8u7kRaGZHvNl+KH9VcIni0G0fcj5wcU0MR/svhvGxpFqDP2EzOU3dn7Q3l7z
 LeHAJ/jzrqEf3uTHW5Ot70C40sBe9Ig8Ls/rqCc8Ury98iYESQbAI7DLhIuGG1LJy7v0
 o/yw==
X-Gm-Message-State: ACrzQf3sfq+10AfH3ByTevISaCE2KtIOnNxFSo1K1fIp1JEWDUk4nY4d
 VF1MR1PCzqiA1XTNHoHuhhdgeINnPfSB9Nq0ujnGBA==
X-Google-Smtp-Source: AMsMyM4qBgEZgBFAjF+bEd5oT2pdNIXse6HuOOjn4U1Gc3N7y90jOVdjnWpowg7TmfFT/PV0IpemIyhTWbUZ6HL6IwA=
X-Received: by 2002:a05:6a00:b96:b0:55b:1054:865c with SMTP id
 g22-20020a056a000b9600b0055b1054865cmr14535875pfj.74.1665321817366; Sun, 09
 Oct 2022 06:23:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
In-Reply-To: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
Date: Sun, 9 Oct 2022 06:23:26 -0700
Message-ID: <CALjsLJv=oP8y2LyhyD6OLpjQF3RqXF8DPPvvrzrjPsaBZm1zvQ@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: Re: [Cake] [Bloat] The most wonderful video ever about bufferbloat
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
From: Nathan Owens via Cake <cake@lists.bufferbloat.net>
Reply-To: Nathan Owens <nathan@nathan.io>
Cc: Rpm <rpm@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============5501852449205254218=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5501852449205254218==
Content-Type: multipart/alternative; boundary="0000000000005c759405ea99f36e"

--0000000000005c759405ea99f36e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I think Tech Quickie is part of Linus Tech Tips (Linus Media Group), not
iFixit, FWIW.

On Sun, Oct 9, 2022 at 6:15 AM Dave Taht via Bloat <
bloat@lists.bufferbloat.net> wrote:

> This was so massively well done, I cried. Does anyone know how to get
> in touch with the ifxit folk?
>
> https://www.youtube.com/watch?v=3DUICh3ScfNWI
>
> --
> This song goes out to all the folk that thought Stadia would work:
>
> https://www.linkedin.com/posts/dtaht_the-mushroom-song-activity-698136666=
5607352320-FXtz
> Dave T=C3=A4ht CEO, TekLibre, LLC
> _______________________________________________
> Bloat mailing list
> Bloat@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/bloat
>

--0000000000005c759405ea99f36e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I think Tech Quickie is part of Linus Tech Tips (Linus Med=
ia Group), not iFixit, FWIW. <br></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Sun, Oct 9, 2022 at 6:15 AM Dave Taht v=
ia Bloat &lt;<a href=3D"mailto:bloat@lists.bufferbloat.net">bloat@lists.buf=
ferbloat.net</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">This was so massively well done, I cried. Does anyone know how =
to get<br>
in touch with the ifxit folk?<br>
<br>
<a href=3D"https://www.youtube.com/watch?v=3DUICh3ScfNWI" rel=3D"noreferrer=
" target=3D"_blank">https://www.youtube.com/watch?v=3DUICh3ScfNWI</a><br>
<br>
-- <br>
This song goes out to all the folk that thought Stadia would work:<br>
<a href=3D"https://www.linkedin.com/posts/dtaht_the-mushroom-song-activity-=
6981366665607352320-FXtz" rel=3D"noreferrer" target=3D"_blank">https://www.=
linkedin.com/posts/dtaht_the-mushroom-song-activity-6981366665607352320-FXt=
z</a><br>
Dave T=C3=A4ht CEO, TekLibre, LLC<br>
_______________________________________________<br>
Bloat mailing list<br>
<a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">Bloat@list=
s.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a><br>
</blockquote></div>

--0000000000005c759405ea99f36e--

--===============5501852449205254218==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5501852449205254218==--

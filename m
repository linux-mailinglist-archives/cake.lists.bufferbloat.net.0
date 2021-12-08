Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DB146E7D1
	for <lists+cake@lfdr.de>; Thu,  9 Dec 2021 12:55:35 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 784EE3CB39;
	Thu,  9 Dec 2021 06:55:34 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1639050934;
	bh=Jfo8Xy7MB1M3UlJsY4z+zL/8eVRtaOcKLInAwRrcRFA=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C4JagOGnuOtXKmAJz6zR2fkeW5n7w9kSu1D41nlxExRA1Hoxn4cJ4PC+VSt3DrUm6
	 Ef3kKpZK6tXrW4qP9Zaz1QPcUa0ZWNh43d6S836tGAkTnoZRBl5RksX81Lw4AcfNo2
	 WT65EskXoOfhZTJBhHP7qeUTtLDVYxPlguPeKBX8RT4szkLrkVA/3ITu38FR7a1p8Y
	 6GiNvBdN/B2QuXhPrRhK3t7lA2RDdcwYtXxrWVE/BwfFufASCnisOJ5erL7gBWLtth
	 GXKclYSeaexrhX8t/fdC09A3HLC7CoekdQt9+TjyzP/n81wnzvEbTH+pcDBUAk+Ter
	 WHIn8FW840QAA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6F54F3B29D;
 Wed,  8 Dec 2021 18:44:39 -0500 (EST)
Received: by mail-ed1-x529.google.com with SMTP id e3so13935923edu.4;
 Wed, 08 Dec 2021 15:44:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zb1qkwtk3gdXiFnEWtY5FNafiHXSsKaiV9uihJieKCA=;
 b=qYhGhIAHUIpZlqjh3kgA5Zphe+pRSN7lsZLkJZNABbHarceHctMkpIf/oItCwlq0aj
 3fLohWOPxdpvpr6+s7DOmeJAYlOidCAf58sQ8jY2efuSM6qt/WqV7FO55LSYkaybG31D
 8VAkHBJBW9KoALUKKzfv/t/e0SKO3mIl9FN4iLtbsMeMyZnQdbAARqqZKo5NgwXBljFD
 d9Fk7+Q5pi6KpKUHwGbgEl6Kw81eCmKJvvsPhFmbaELiXsplvZ6jrZMEjQDJRxDOxNso
 7jatP/CKMaw6iH2bQIWFjssN17+TCn8hxUeIWONaRuabOREPFISzkf1NU4ZN8ow+a+jJ
 eI/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zb1qkwtk3gdXiFnEWtY5FNafiHXSsKaiV9uihJieKCA=;
 b=7YiId20zt+y1XsoFXAIyHIlHHnXD+dArE92FCS0ifVo1Ma7Ormqhbfhd5Lh7k85xRk
 esyvAFvtBDqB7GspcbaeQlvqpCQOEbZ85V1tpr1errP8He1SB/Bn73tCAjGf8Dml10oF
 qJgNRH19rZoMKZTBhC2zthHVIJHZMPT5UlSofhLhfIwWpTgEsd2JE+gVIR7hQn9DKIYY
 fjePxdjHdF63UwAYyIfQK80rBv0zz8AsZDQQfKB0CS1WjP+oH+zItb7AMTm9byPlLSkd
 2QXYdhaHO5obl/NRZFp4fBmVkqNDMScorQ8Gbyv+QPrMTE1dvFJPSiyr+9BTvttum+P7
 ZciQ==
X-Gm-Message-State: AOAM530zOYrD3tDbsaouDLrvVaciQH/7bC2DnLSLgQkFQKFfVzZrf+hS
 Ovf+X8BgQN4tPBjPaom25yOJG2+IMgUR/e8aOt4=
X-Google-Smtp-Source: ABdhPJx7s6K9nBov+Pgdi1l9bcJJ2VEWRf4uLQAdIXFwunWdYgr9TTk94WpLLPbCLfa7rc13Vw0UkYVC/+nWIsNJH5Y=
X-Received: by 2002:a17:906:6d05:: with SMTP id
 m5mr11156310ejr.499.1639007078242; 
 Wed, 08 Dec 2021 15:44:38 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw4qE+aLdNQ9O8AQoxC2u-Kk8jhF_uX3QeJumKJjQAC05g@mail.gmail.com>
In-Reply-To: <CAA93jw4qE+aLdNQ9O8AQoxC2u-Kk8jhF_uX3QeJumKJjQAC05g@mail.gmail.com>
From: Greg Mirsky <gregimirsky@gmail.com>
Date: Wed, 8 Dec 2021 15:44:27 -0800
Message-ID: <CA+RyBmVHO7z4SDm14+mK4r23AN4pz_emTE-Hxf-+U=Tk=gq0aA@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
X-Mailman-Approved-At: Thu, 09 Dec 2021 06:55:33 -0500
Subject: Re: [Cake] [Network-quality-workshop] dec 22: mikrotik talk about
 fq-codel and cake in russian
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
Cc: Cake List <cake@lists.bufferbloat.net>, network-quality-workshop@iab.org,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============6320345268758121338=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6320345268758121338==
Content-Type: multipart/alternative; boundary="000000000000aededd05d2ab127f"

--000000000000aededd05d2ab127f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dave,
I might be able to help with the interpretation. Is there anything in
particular you're interested in?
BTW, the company is from Latvia =F0=9F=87=B1=F0=9F=87=BB,  my old country.

Regards,
Greg

On Wed, Dec 8, 2021, 12:41 Dave Taht <dave.taht@gmail.com> wrote:

> see https://mikrotik.team/ for signup details.
>
> The talk title is... very russian. I'm not sure if if google
> translate's translation is suitable for a family oriented mailing
> list, or is correct.
>
> Anyway, if there's a russian speaker out there that can kibitz?, I do
> worry about how our algorithms fare in translation, and i'm very
> pleased to see fq-codel and cake make the mikrotik 7.0 release.
>
> --
> I tried to build a better future, a few times:
> https://wayforward.archive.org/?site=3Dhttps%3A%2F%2Fwww.icei.org
>
> Dave T=C3=A4ht CEO, TekLibre, LLC
>
> --
> Network-quality-workshop mailing list
> Network-quality-workshop@iab.org
> https://www.iab.org/mailman/listinfo/network-quality-workshop
>

--000000000000aededd05d2ab127f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Dave,<div dir=3D"auto">I might be able to help with th=
e interpretation. Is there anything in particular you&#39;re interested in?=
</div><div dir=3D"auto">BTW, the company is from Latvia =F0=9F=87=B1=F0=9F=
=87=BB,=C2=A0 my old country.=C2=A0</div><div dir=3D"auto"><br></div><div d=
ir=3D"auto">Regards,</div><div dir=3D"auto">Greg</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 8, 2021,=
 12:41 Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com">dave.taht@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">see <a href=3D"=
https://mikrotik.team/" rel=3D"noreferrer noreferrer" target=3D"_blank">htt=
ps://mikrotik.team/</a> for signup details.<br>
<br>
The talk title is... very russian. I&#39;m not sure if if google<br>
translate&#39;s translation is suitable for a family oriented mailing<br>
list, or is correct.<br>
<br>
Anyway, if there&#39;s a russian speaker out there that can kibitz?, I do<b=
r>
worry about how our algorithms fare in translation, and i&#39;m very<br>
pleased to see fq-codel and cake make the mikrotik 7.0 release.<br>
<br>
-- <br>
I tried to build a better future, a few times:<br>
<a href=3D"https://wayforward.archive.org/?site=3Dhttps%3A%2F%2Fwww.icei.or=
g" rel=3D"noreferrer noreferrer" target=3D"_blank">https://wayforward.archi=
ve.org/?site=3Dhttps%3A%2F%2Fwww.icei.org</a><br>
<br>
Dave T=C3=A4ht CEO, TekLibre, LLC<br>
<br>
-- <br>
Network-quality-workshop mailing list<br>
<a href=3D"mailto:Network-quality-workshop@iab.org" target=3D"_blank" rel=
=3D"noreferrer">Network-quality-workshop@iab.org</a><br>
<a href=3D"https://www.iab.org/mailman/listinfo/network-quality-workshop" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://www.iab.org/mailman/=
listinfo/network-quality-workshop</a><br>
</blockquote></div>

--000000000000aededd05d2ab127f--

--===============6320345268758121338==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6320345268758121338==--

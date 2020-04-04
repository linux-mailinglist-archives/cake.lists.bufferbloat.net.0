Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9C219E671
	for <lists+cake@lfdr.de>; Sat,  4 Apr 2020 18:27:26 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5B57A3CB3B;
	Sat,  4 Apr 2020 12:27:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1586017645;
	bh=VXmzk3/KLubNfMDA7jF7UwgPxZpJWaJyiKzDhqlM45E=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z6ry1vaAFq3HtGuJ/Wabi+E7niq3GOqCcAIYamcXa3JjdggJOGNA2zHM/N3RQqQH0
	 hYZrPX0lLiVRTUBGLbeHXGUM7mIP/BO1rKF+ujd74BHXXLTEfX7HK/uBbAgs1Qji5X
	 1vkHYti5jFZBHUA0aXJvh3rl9hYi7lwP3BJ2n4v3HG8qSvHlCdQYmz/3BjF41Gtotc
	 Bd6ZKSgpZZwn/84DAfhhIBVkwv2HfrSynrH+BpELAX8JFNIjYFQdwJmHfQAUt+UxpZ
	 8C+uei4Byrgs1x8Vr/DQwkAzYV48X0CR4PwWou5yoT0aKbRm5tu9g8ab4qbrw8UPBr
	 4YwQU/knzvavg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qv1-xf2d.google.com (mail-qv1-xf2d.google.com
 [IPv6:2607:f8b0:4864:20::f2d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2FDB13CB35;
 Sat,  4 Apr 2020 12:27:24 -0400 (EDT)
Received: by mail-qv1-xf2d.google.com with SMTP id ef12so5228911qvb.11;
 Sat, 04 Apr 2020 09:27:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OO/Aegw2hcXjCIRu3563cN0dvMZtYnQb0GAoAX6tZOM=;
 b=KSOc3NEWclZa+WMirgonTQnDWkvz1CVxX8AzipY9NrP7J7PTv2BrYHslAAzJCi73E+
 mAmb81x0AF37SeEY8C0DJ/NEFnJ70UmV4iEJU0Ovd1eVqImQnaIF2r4DBUz07PszhyQi
 yub7xnURlTEfdEF7M3KdAaE0+QMfqK0EZ0wGUZgkFSqHkckSP2LzAlj+q9O/bgPv/1RH
 HAuqu1FoP92BakA+UngqFbecnZy6MHhgNI1EzKrIcU8BHvLgjOJcDqVZ8OgGgQ+pirCp
 jqY99oPxKRHScRM+PPkJQpbjpZz7I4nnUf+2KTBRkVf6F1FMqgrVQM8eV+yFPJVBtTHc
 /GPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OO/Aegw2hcXjCIRu3563cN0dvMZtYnQb0GAoAX6tZOM=;
 b=Ncca5qCMe3n3G/Co4z63ERcplK00iF1XjHocxBpajcLkgZi5dvrcXDyzy9+ADvlclF
 eEQe6eo/Z8IxoHhybOYM+G0MUIZmDbg9FsOcaPmI5nFQzlVqTYxIHU84FQqM3HJnfOda
 fdPH0q3p0+2Y8z9H4GscqONBMfcZPcd/Cs0NDHRyqrQr6FYp9gAqF4xgQI8BvUBMf4em
 u1JI7u6al3QgyphEqjF4ppT9XeF4VHpvE8YyCIH1ieMwIsxDFQXKltC3Kc2aonqjf9TH
 PVOdbjWIZXjf0dMZXOMU6175AQ8uGdkJOCz6Ve82nrhWE5KLddtYJMfLNn6omRVIThrF
 uniA==
X-Gm-Message-State: AGi0PuY8NBHJAEbAqc1CZD5zAG9cs/UGgRmF2NFOQB6cA8eVqrWBcXMk
 vPAq9atayE7dB38bgcW/bW5qLSfD/qH34JZSH/k=
X-Google-Smtp-Source: APiQypKM8T0JbrGQF0fY4mtS6M9LOuNgf9/IuA/n0dz+epvgtPLDcrKmqd7tNJgv5rwTrOoziD+AYjiEgezHncLj5M8=
X-Received: by 2002:a0c:c187:: with SMTP id n7mr13930411qvh.240.1586017643673; 
 Sat, 04 Apr 2020 09:27:23 -0700 (PDT)
MIME-Version: 1.0
References: <CALQXh-P1JGWHXQYnRd68woqj-C8CLxaxeD5=4xjYLYiLubkSeQ@mail.gmail.com>
 <1586011622.632930657@apps.rackspace.com>
 <CAA93jw7CDCVfY0pspLbSaSqf2_0s_23oXsGfEy1x_MHQKEkUNQ@mail.gmail.com>
In-Reply-To: <CAA93jw7CDCVfY0pspLbSaSqf2_0s_23oXsGfEy1x_MHQKEkUNQ@mail.gmail.com>
From: Aaron Wood <woody77@gmail.com>
Date: Sat, 4 Apr 2020 09:27:12 -0700
Message-ID: <CALQXh-Ot+ZE8M9num31K173pWF5SqDMFizjgUcP13ZCw06KhXw@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: Re: [Cake] [Bloat]  New board that looks interesting
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
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============1091648358922420319=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1091648358922420319==
Content-Type: multipart/alternative; boundary="000000000000423b6505a27982d5"

--000000000000423b6505a27982d5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The comparison of chipset performance link (to OpemWRT forums) that went
out had this chip, the J4105 as the fastest.  Able to do a gigabit with
cake (nearly able to do it in both directions).

I think this has replaced the apu2 as the board I=E2=80=99m going with as m=
y edge
router.

On Sat, Apr 4, 2020 at 9:10 AM Dave Taht <dave.taht@gmail.com> wrote:

> Historically I've found the "Celeron" chips rather weak, but it's just
> a brand. I haven't the foggiest idea how well this variant will
> perform.
>
> The intel ethernet chips are best of breed in linux, however. It's
> been my hope that the 211 variant with the timed networking support
> would show up in the field (sch_etx) so we could fiddle with that,
> (the apu2s aren't using that version) but I cannot for the life of me
> remember the right keywords to look it up at the moment. this feature
> lets you program when a packet emerges from the driver and is sort of
> a whole new ballgame when it comes to scheduling - there hasn't been
> an aqm designed for it, and you can do fq by playing tricks with the
> sent timestamp.
>
> All the other features look rather nice on this board.
>
> On Sat, Apr 4, 2020 at 7:47 AM David P. Reed <dpreed@deepplum.com> wrote:
> >
> > Thanks! I ordered one just now. In my experience, this company does
> rather neat stuff. Their XMOS based microphone array (ReSpeaker) is reall=
y
> useful. What's the state of play in Linux/OpenWRT for Intel 9560
> capabilities regarding AQM?
> >
> > On Saturday, April 4, 2020 12:12am, "Aaron Wood" <woody77@gmail.com>
> said:
> >
> > > _______________________________________________
> > > Cake mailing list
> > > Cake@lists.bufferbloat.net
> > > https://lists.bufferbloat.net/listinfo/cake
> > > https://www.seeedstudio.com/ODYSSEY-X86J4105800-p-4445.html
> > >
> > > quad-core Celeron J4105 1.5-2.5 GHz x64
> > > 8GB Ram
> > > 2x i211t intel ethernet controllers
> > > intel 9560 802.11ac (wave2) wifi/bluetooth chipset
> > > intel built-in graphics
> > > onboard ARM Cortex-M0 and RPi & Arduino headers
> > > m.2 and PCIe adapters
> > > <$200
> > >
> >
> >
> > _______________________________________________
> > Bloat mailing list
> > Bloat@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/bloat
>
>
>
> --
> Make Music, Not War
>
> Dave T=C3=A4ht
> CTO, TekLibre, LLC
> http://www.teklibre.com
> Tel: 1-831-435-0729
>
--=20
- Sent from my iPhone.

--000000000000423b6505a27982d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">The comparison of chipset performance link (to OpemW=
RT forums) that went out had this chip, the J4105 as the fastest.=C2=A0 Abl=
e to do a gigabit with cake (nearly able to do it in both directions).</div=
></div><div dir=3D"auto"><br></div><div dir=3D"auto">I think this has repla=
ced the apu2 as the board I=E2=80=99m going with as my edge router.</div><d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Sat, Apr 4, 2020 at 9:10 AM Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail=
.com">dave.taht@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">Historically I&#39;ve found the &quot;Celeron&quot; chips rather weak=
, but it&#39;s just<br>
a brand. I haven&#39;t the foggiest idea how well this variant will<br>
perform.<br>
<br>
The intel ethernet chips are best of breed in linux, however. It&#39;s<br>
been my hope that the 211 variant with the timed networking support<br>
would show up in the field (sch_etx) so we could fiddle with that,<br>
(the apu2s aren&#39;t using that version) but I cannot for the life of me<b=
r>
remember the right keywords to look it up at the moment. this feature<br>
lets you program when a packet emerges from the driver and is sort of<br>
a whole new ballgame when it comes to scheduling - there hasn&#39;t been<br=
>
an aqm designed for it, and you can do fq by playing tricks with the<br>
sent timestamp.<br>
<br>
All the other features look rather nice on this board.<br>
<br>
On Sat, Apr 4, 2020 at 7:47 AM David P. Reed &lt;<a href=3D"mailto:dpreed@d=
eepplum.com" target=3D"_blank">dpreed@deepplum.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Thanks! I ordered one just now. In my experience, this company does ra=
ther neat stuff. Their XMOS based microphone array (ReSpeaker) is really us=
eful. What&#39;s the state of play in Linux/OpenWRT for Intel 9560 capabili=
ties regarding AQM?<br>
&gt;<br>
&gt; On Saturday, April 4, 2020 12:12am, &quot;Aaron Wood&quot; &lt;<a href=
=3D"mailto:woody77@gmail.com" target=3D"_blank">woody77@gmail.com</a>&gt; s=
aid:<br>
&gt;<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; Cake mailing list<br>
&gt; &gt; <a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">C=
ake@lists.bufferbloat.net</a><br>
&gt; &gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"no=
referrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a>=
<br>
&gt; &gt; <a href=3D"https://www.seeedstudio.com/ODYSSEY-X86J4105800-p-4445=
.html" rel=3D"noreferrer" target=3D"_blank">https://www.seeedstudio.com/ODY=
SSEY-X86J4105800-p-4445.html</a><br>
&gt; &gt;<br>
&gt; &gt; quad-core Celeron J4105 1.5-2.5 GHz x64<br>
&gt; &gt; 8GB Ram<br>
&gt; &gt; 2x i211t intel ethernet controllers<br>
&gt; &gt; intel 9560 802.11ac (wave2) wifi/bluetooth chipset<br>
&gt; &gt; intel built-in graphics<br>
&gt; &gt; onboard ARM Cortex-M0 and RPi &amp; Arduino headers<br>
&gt; &gt; m.2 and PCIe adapters<br>
&gt; &gt; &lt;$200<br>
&gt; &gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; Bloat mailing list<br>
&gt; <a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">Bloat=
@lists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"norefe=
rrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a><br=
>
<br>
<br>
<br>
-- <br>
Make Music, Not War<br>
<br>
Dave T=C3=A4ht<br>
CTO, TekLibre, LLC<br>
<a href=3D"http://www.teklibre.com" rel=3D"noreferrer" target=3D"_blank">ht=
tp://www.teklibre.com</a><br>
Tel: 1-831-435-0729<br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature">- Sent from my iPhone.</div>

--000000000000423b6505a27982d5--

--===============1091648358922420319==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1091648358922420319==--

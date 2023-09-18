Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8307A55F2
	for <lists+cake@lfdr.de>; Tue, 19 Sep 2023 00:52:33 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A014B3CB49;
	Mon, 18 Sep 2023 18:52:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1695077552;
	bh=IqHOQMHxtu2NaNraJ3+czR4oLP7cUFScWPYmzzOsM9c=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=ZSCJxMTtn3jsO87OwMZIGrYDGuFBnAh/0niE3oa7vbXHQRJ4AvYJq4aY9CP4xugV9
	 PdpfZ6tmcNP9H7Y9g9/x1PaSTPDOCh1agbuRWtf0k5Wr3/rG5NFwULsZOHUFr8k+Ic
	 z4DPkvbwvvFHwIIRqz2y46Dhx/hxbxhPgjEgsQAiVPZHBmAUvGl9vQKc6RXVPPWufi
	 rtKI7o2KuRhv/fsMKW8zB0wamDqs5Lb69jhaZiGXO6m1Nv4xchJB5pF4FtKWMkekWa
	 F9WD/ytASBf4Nk2WgmO4iBCOoRm036XqbxQrPOuyAO9BlMR6XFpByo7DhZ8Fs19pLx
	 k2gULQIVLyrjw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BAB603B2A4
 for <cake@lists.bufferbloat.net>; Mon, 18 Sep 2023 18:52:31 -0400 (EDT)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-403004a96eeso53835015e9.3
 for <cake@lists.bufferbloat.net>; Mon, 18 Sep 2023 15:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695077550; x=1695682350; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=E8jNTeZgioA5hfRVI2uIqEmIoEnnsmHWKI9RoIYKgSA=;
 b=CSEIdOTSTsmpAvBnWq3EWKUZe5qYdAIvV0AGpHyO/fCt+WkB1EYktmOwXTVkmwq9s4
 Ppg7X80YoUN+HexWvOTDXb1khVMlJwkpqYcTelX7Ae+H1yJ5aa2kuEZ9R3AeJGUpet15
 EoAU/JygZII5sNTbX/HckXkHM1uokAGfT9bJrPDed++8nRUHVVNg/RZYf9rFBwXC5ZBO
 Od8rx3HYlGNQ0ccpRN/DSq0I1so16lm4HCosgiz2brXsJXMxAIOksfO7JVZG2+2bmTEE
 txq/6Uk+6mRzBY0C/Ucd0d8DxIrhBYP4oNrwFgF0X5UoMdQ7GtvEJnc/k7XOpJsFnb6Z
 cdJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695077550; x=1695682350;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=E8jNTeZgioA5hfRVI2uIqEmIoEnnsmHWKI9RoIYKgSA=;
 b=jRnJtHUowwEhnznGhDkSzn4axtRsiIASdjXK8QeXWL854Klaon9vMUmOiky5uDAyh8
 4Mc5HenZJ/8aOL8f6Oad1avRUZ1UtYbKefFtTKwXYx5lZS55k3+Ye4DgWR6+oux9SfkN
 JCP9CyGOrRD2s6XeZ6P8nMdjKb/ijxdUIkdYmkbqGzhx6pq/jRgCFg4mrpR0r7t0aOTZ
 jCxwjRt+0pjF39dwmS5oquIuaB0sVTbCKGrQXJBBrGzpzQzXYg88gLnQD9x+XKN3SwI+
 gtwNP05kXBJbi29guEbzxd63GFNRx/HQLn5RDltI34MxR2UZYjPi20kaU6ZZ8+Q4RhzM
 zwHQ==
X-Gm-Message-State: AOJu0YzEHIvn0kRWccr3PXH+uoIrRbvfG2pmaAVlmcJpRq9E7PNz9bjD
 4CbHsRattzgtq93Gk4DtMYG5SjhQkdJxqRTLFrAUqGGJmbI=
X-Google-Smtp-Source: AGHT+IGvO3FaaNllyI1gx5lpFtTC1oFJbGQnv5JbHxvWVjAgHlEDwFubeWPYrzzl1x4i2G+cFYUYE9ozLNa4lTjK2yE=
X-Received: by 2002:adf:d1e8:0:b0:320:bb1:5a73 with SMTP id
 g8-20020adfd1e8000000b003200bb15a73mr7098053wrd.22.1695077550364; Mon, 18 Sep
 2023 15:52:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
 <CANypexR5p7Lekzk7+ktfEWjFXJP2zRHC_BgGWRRzKc5QdaxubA@mail.gmail.com>
 <115D8B11-D45F-4997-A048-8E3251E86625@gmail.com>
In-Reply-To: <115D8B11-D45F-4997-A048-8E3251E86625@gmail.com>
Date: Mon, 18 Sep 2023 15:52:19 -0700
Message-ID: <CANypexSy_uajdqOsEjsC7+nYeUz03V272SKR4af6PT7QtYMeSQ@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
Subject: Re: [Cake] some comprehensive arm64 w/cake results
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
From: dave seddon via Cake <cake@lists.bufferbloat.net>
Reply-To: dave seddon <dave.seddon.ca@gmail.com>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============8005465970021758412=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8005465970021758412==
Content-Type: multipart/alternative; boundary="000000000000419c910605a9ffb3"

--000000000000419c910605a9ffb3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Jonathan!

Curious and curiouser

I'd love to understand the difference between the tests I've been doing and
your tests.

   - How many TCP flows did you have please ( cake performance seems to
   drop significantly with increased number of TCP flows, although I need t=
o
   do more testing to understand why )?
   - What was the RTT?
   - Load tool?
   - ... so many questions :)


On Mon, Sep 18, 2023 at 3:13=E2=80=AFPM Jonathan Morton <chromatix99@gmail.=
com>
wrote:

> > On 18 Sep, 2023, at 10:50 pm, dave seddon via Cake <
> cake@lists.bufferbloat.net> wrote:
> >
> > The cake tests so far had rtt 1ms and rtt 3ms, which might be too low.
> ( If it is too low, then maybe it would make sense to remove "rtt lan =3D=
 rtt
> 1ms" option, as it's a misleading configuration option? )
>
> If all your traffic is over the LAN, and you have a machine and
> application tuned for the extra-low latencies that a LAN can offer, then
> setting LAN-grade targets for Cake might make sense.  But most people's
> traffic is a mixture, with the performance of Internet traffic being more
> important, and that is better served by the *default* settings.
>
> You ran fq_codel at its default settings.  These are equivalent to Cake's
> default settings, so far as the AQM activity is concerned.  I'm just aski=
ng
> for a like-to-like comparison.  You could be pleasantly surprised.
>
>  - Jonathan Morton



--=20
Regards,
Dave Seddon
+1 415 857 5102

--000000000000419c910605a9ffb3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Jonathan!</div><div><br></div><div>Curious and=
 curiouser</div><div><br></div><div>I&#39;d love to understand the differen=
ce between the tests I&#39;ve been doing and your tests.</div><div><ul><li>=
How many TCP flows did you have please ( cake performance seems to drop sig=
nificantly with increased number of TCP flows, although I need to do more t=
esting to understand why )?</li><li>What was the RTT?</li><li>Load tool?</l=
i><li>... so many questions :)<br></li></ul></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 18, 2023 at 3=
:13=E2=80=AFPM Jonathan Morton &lt;<a href=3D"mailto:chromatix99@gmail.com"=
>chromatix99@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">&gt; On 18 Sep, 2023, at 10:50 pm, dave seddon via Ca=
ke &lt;<a href=3D"mailto:cake@lists.bufferbloat.net" target=3D"_blank">cake=
@lists.bufferbloat.net</a>&gt; wrote:<br>
&gt; <br>
&gt; The cake tests so far had rtt 1ms and rtt 3ms, which might be too low.=
=C2=A0 ( If it is too low, then maybe it would make sense to remove &quot;r=
tt lan =3D rtt 1ms&quot; option, as it&#39;s a misleading configuration opt=
ion? )<br>
<br>
If all your traffic is over the LAN, and you have a machine and application=
 tuned for the extra-low latencies that a LAN can offer, then setting LAN-g=
rade targets for Cake might make sense.=C2=A0 But most people&#39;s traffic=
 is a mixture, with the performance of Internet traffic being more importan=
t, and that is better served by the *default* settings.<br>
<br>
You ran fq_codel at its default settings.=C2=A0 These are equivalent to Cak=
e&#39;s default settings, so far as the AQM activity is concerned.=C2=A0 I&=
#39;m just asking for a like-to-like comparison.=C2=A0 You could be pleasan=
tly surprised.<br>
<br>
=C2=A0- Jonathan Morton</blockquote></div><br clear=3D"all"><br><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div=
>Regards,<br></div>Dave Seddon<br>+1 415 857 5102<br></div></div></div></di=
v></div></div>

--000000000000419c910605a9ffb3--

--===============8005465970021758412==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8005465970021758412==--

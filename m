Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE0C97B52B
	for <lists+cake@lfdr.de>; Tue, 17 Sep 2024 23:28:14 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7AE493CB49;
	Tue, 17 Sep 2024 17:28:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1726608486;
	bh=LHMq8wkMmwGa8bRoT+X9tsmhyJZSRW/E9VbsAMZiO7E=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=mJagq8R6Q9TGXjbMjvAWYfr9bVNaEKgyWYWKtU4aTT0ENnde5D2FpcA/ZeGqv1Wft
	 bsv0lh1j97GZ5FyFk5XbXdNrDbM7JN4RExoqjrKduRhqXtkhNvPxjtNpTX+LjjSh33
	 3+3c7D2VwfxXa0mIHgb0a3QYnlJXzDLSUm3me1dlqFOcoPHaNUhu/GgUEENkr+4YBC
	 vpRO0xRqq9EjV1tfyD7uAlXmLl+pRLQ3Wid0Xu27qN37xml563us8Qi2ca4y9sBmEW
	 RtLKz90M6R0sLtamZ8J374OcvhS7joCjeGWY7JN2HZOhsRTnN+5Dr8L/8l1FA0CKw4
	 j00VGKUsabtxQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com
 [IPv6:2607:f8b0:4864:20::835])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5FC863B29D;
 Tue, 17 Sep 2024 17:28:04 -0400 (EDT)
Received: by mail-qt1-x835.google.com with SMTP id
 d75a77b69052e-45aeed46f5eso13417941cf.3; 
 Tue, 17 Sep 2024 14:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1726608484; x=1727213284; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=bpRqLXBiRZZ4+MPmehyFwBa0ovI69nrVwCgM/mghB1E=;
 b=SXp8WMKZfUbET8622ATwRGPtnLqh4BZ5WbCmm7pJSFZv6bN+vNl6sINiqZKpvQk+MX
 OtING+oeEBEsc3w+ZsX6i7GSNFlxKBJwbvwD2753cDsNSwlN7U0V9XWx7QsvOL0/urAi
 RpjW10x9YaVvZ+Dw6EvRfAsIrikHW1/Z8XnbjD1ABtyVHIeGdFFNX3ABiPrQCZcXd1iO
 s8+03DKGtd34c/B+MZ+nLpH6dW2xoHFmAvydbA3q8TxI7qT7jlhWj0wjbnjSYv7eY61k
 +RUoQJFhVOaRNbYl1wgC4QTVEyuTl85Tzu3N2v+sLaibH/00jUu7rHOBZ8kGw7emzuWC
 QoeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726608484; x=1727213284;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bpRqLXBiRZZ4+MPmehyFwBa0ovI69nrVwCgM/mghB1E=;
 b=O+omHpmZ6XneZSOCmxbfXyRGbvhrGHtksP43timHEdxfKQntFZEPrvkpJlWOVYwjBY
 +Lxm15CuuJnLa6WlzoBxXNuVGiShMOgbS1RQWIPNuzeqCt+JzZHzIkY/699uasG2/rIC
 zf9jRav3K9ICKXULitZEi0fEYSRLxCqQG1K6Ul4Z3jBkR7+knn20LJT0MBlRD95Gu9W+
 glHZOsGT7rZJX94uBjqCFe6/ylkfZokudfxkRJzWDCNRnL2vdhtO3ak0qgiXro6+cjA2
 eZyvnFYv4Kc8aqEIY9BdHfv+xhb3s6gic5KMB2VJFgmPWpWzkMtWhtWgZYg05+o/ih2G
 05qQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVDvMy7cp4mTQa9h+zKZsfhD51QDsdHTYJkr9ivqgwHljPRqXr/dIDHZHBlCfSRBEI3A/gZUeQs2hI=@lists.bufferbloat.net,
 AJvYcCW2Xrc3eQ/4qHiIFmmDYf8v0KBynREkp3DXTM6AGGE5keKolCRiOG8ilAzI98rkxLK8BaC2QA==@lists.bufferbloat.net,
 AJvYcCW9WtTyw7x8OE1S3pQy44vN/1fGEYUXuH2Cn7AdOpujtJ66D03jvIlbVKtzTN2kUVJDfrWIkg==@lists.bufferbloat.net,
 AJvYcCXcNgJyg2mFmVaW1Ww047t7cf6hh87DrN29qQ27jWl4Z9aqbTDmTQfahIgX4Klsy9jcRjY6@lists.bufferbloat.net,
 AJvYcCXflzEX1Kgz+xd6B+WKlJEMmhYgT2uMswsWk75fgkt7qCq0b6jc7ykELWlb+T+5OBc1IhOlLKrmzZTiTzvPWL8=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwyjTG0NMDg3WfWX/RrMJoiiRIcwk0ZH557enQpS5054IrJ2BIS
 Ks0AFy04yNUBQ6ozhStn/sTHwAYG6pfuG4wPN9Onee2lTlDRAFfTgk0Xt65LErQ9IGxwIcBYCko
 3IX6gn464KhD18PGgDbCqDEOLbi+d9nRBe5o=
X-Google-Smtp-Source: AGHT+IGof9lf4QTZoBjOEoOWU+NNDyuYx2dSydEQ48ALlzaT11YiCR2v837A9QmhM2NeA6jWViyfPdmMliB0HH2Ss1A=
X-Received: by 2002:ac8:5a45:0:b0:458:37c4:dec0 with SMTP id
 d75a77b69052e-45860416d76mr318229191cf.53.1726608483515; Tue, 17 Sep 2024
 14:28:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOgCZyLBz0T-CvQn2FsOORuVfCiT_--b9RQ0CmHRnYiXyA@mail.gmail.com>
In-Reply-To: <CAJUtOOgCZyLBz0T-CvQn2FsOORuVfCiT_--b9RQ0CmHRnYiXyA@mail.gmail.com>
Date: Tue, 17 Sep 2024 23:27:27 +0200
Message-ID: <CAJUtOOj5n76gepLMurA3a+mxz7LJqoi7ND1FpTRkwctUsLi4dg@mail.gmail.com>
To: libreqos <libreqos@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>, 
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>
Subject: [Cake] "State of the Bloat" - Dave at Linux Plumbers: Wednesday,
 Sept 18 @ 6PM CET | 12PM EST | 9AM PST
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
From: Frantisek Borsik via Cake <cake@lists.bufferbloat.net>
Reply-To: Frantisek Borsik <frantisek.borsik@gmail.com>
Content-Type: multipart/mixed; boundary="===============8721817952910745194=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8721817952910745194==
Content-Type: multipart/alternative; boundary="0000000000005387a50622575da5"

--0000000000005387a50622575da5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello to all,

Tune in: https://www.youtube.com/watch?v=3DqTVNcuzhV6M this Wednesday,
September 18, @ 6PM CET | 12PM EST | 11PM CST | 10AM MST | 9AM PST

Learn more:
https://lpc.events/event/18/contributions/1967/
Slides will be available here, too.

All the best,

Frank

Frantisek (Frank) Borsik



https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com


On Fri, Sep 13, 2024 at 12:33=E2=80=AFAM Frantisek Borsik <
frantisek.borsik@gmail.com> wrote:

> Hello to all,
>
> We are heading to Vienna for Open Source Summit Europe
> <https://events.linuxfoundation.org/open-source-summit-europe/>
> (September 16-18) and Linux Plumbers Conference
> <https://lpc.events/event/18/> (September 18-20).
>
> Dave will be giving an update on "State of the Bloat" on Wednesday,
> September 18
> @ 6PM CET | 12PM EST | 9AM PST
> https://lpc.events/event/18/contributions/1967/
>
> It would be possible to watch it online - Linux Plumbers organizers will
> share a link to streaming before the start of the event on social media:
> https://x.com/LinuxPlumbers
> https://mastodon.social/@linuxplumbersconf
>
> So either see you in Vienna or have fun watching it online.
>
> All the best,
>
> Frank
>
> Frantisek (Frank) Borsik
>
>
>
> https://www.linkedin.com/in/frantisekborsik
>
> Signal, Telegram, WhatsApp: +421919416714
>
> iMessage, mobile: +420775230885
>
> Skype: casioa5302ca
>
> frantisek.borsik@gmail.com
>

--0000000000005387a50622575da5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello to all,<div><br></div><div><div>Tun=
e in: <a href=3D"https://www.youtube.com/watch?v=3DqTVNcuzhV6M">https://www=
.youtube.com/watch?v=3DqTVNcuzhV6M</a>=C2=A0this Wednesday, September 18, @=
 6PM CET | 12PM EST | 11PM CST | 10AM MST | 9AM PST</div><div><br></div><di=
v>Learn more:</div><div><a href=3D"https://lpc.events/event/18/contribution=
s/1967/">https://lpc.events/event/18/contributions/1967/</a><br></div><div>=
Slides will be available here, too.</div><div><br clear=3D"all"><div><div d=
ir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"=
><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><=
div dir=3D"ltr"><div dir=3D"ltr"><div>All the best,</div><div><br></div><di=
v><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frank<u></u><u></u><=
/p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><u></u></p><=
p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frantisek (Frank) Borsi=
k<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u>=
</u>=C2=A0<u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><=
a href=3D"https://www.linkedin.com/in/frantisekborsik" style=3D"color:rgb(1=
7,85,204)" target=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a=
><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Sig=
nal, Telegram, WhatsApp: +421919416714=C2=A0<u></u><u></u></p><p class=3D"M=
soNormal" style=3D"color:rgb(34,34,34)">iMessage, mobile: +420775230885<u><=
/u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Skype: c=
asioa5302ca<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,3=
4,34)"><a href=3D"mailto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,=
85,204)" target=3D"_blank">frantisek.borsik@gmail.com</a></p></div></div></=
div></div></div></div></div></div></div></div></div></div></div><br></div><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Fri, Sep 13, 2024 at 12:33=E2=80=AFAM Frantisek Borsik &lt;<a href=
=3D"mailto:frantisek.borsik@gmail.com">frantisek.borsik@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb=
(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello to all,<div><br></di=
v><div>We are heading to Vienna for=C2=A0<a href=3D"https://events.linuxfou=
ndation.org/open-source-summit-europe/" target=3D"_blank">Open Source Summi=
t Europe</a> (September 16-18) and <a href=3D"https://lpc.events/event/18/"=
 target=3D"_blank">Linux Plumbers Conference</a> (September 18-20).</div><d=
iv><br></div><div>Dave will be giving an update on &quot;State of the Bloat=
&quot; on Wednesday, September 18=C2=A0</div><div>@ 6PM CET | 12PM EST | 9A=
M PST</div><div><a href=3D"https://lpc.events/event/18/contributions/1967/"=
 target=3D"_blank">https://lpc.events/event/18/contributions/1967/</a></div=
><div><br></div><div>It would be possible to watch it online - Linux Plumbe=
rs organizers will share a link to streaming before the start of the event =
on social media:</div><div><a href=3D"https://x.com/LinuxPlumbers" target=
=3D"_blank">https://x.com/LinuxPlumbers<br></a></div><div><a href=3D"https:=
//mastodon.social/@linuxplumbersconf" target=3D"_blank">https://mastodon.so=
cial/@linuxplumbersconf<br></a></div><div><br></div><div>So either see you =
in Vienna or have fun watching it online.</div><div><br></div><div><div><di=
v dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"l=
tr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><div>All the best,</div><div><br></div>=
<div><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frank<u></u><u></=
u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><u></u></=
p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frantisek (Frank) Bo=
rsik<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">=
<u></u>=C2=A0<u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)=
"><a href=3D"https://www.linkedin.com/in/frantisekborsik" style=3D"color:rg=
b(17,85,204)" target=3D"_blank">https://www.linkedin.com/in/frantisekborsik=
</a><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">=
Signal, Telegram, WhatsApp: +421919416714=C2=A0<u></u><u></u></p><p class=
=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessage, mobile: +42077523088=
5<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Sky=
pe: casioa5302ca<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb=
(34,34,34)"><a href=3D"mailto:frantisek.borsik@gmail.com" style=3D"color:rg=
b(17,85,204)" target=3D"_blank">frantisek.borsik@gmail.com</a></p></div></d=
iv></div></div></div></div></div></div></div></div></div></div></div></div>=
</div>
</blockquote></div></div>

--0000000000005387a50622575da5--

--===============8721817952910745194==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8721817952910745194==--

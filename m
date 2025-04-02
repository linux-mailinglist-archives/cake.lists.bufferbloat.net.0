Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A43DAD008F
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:41:33 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 51B3D3D585;
	Fri,  6 Jun 2025 06:41:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749206460;
	bh=npGMBrb4gPPgDoT9TVEuteRSaQFgZqMDd3LM+9uD8u8=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=ShKurIgJLz/llQBXy7H7evXG5eUzuGcweBSFMFtJySnvyslG3paBPVt/rejBGLdh4
	 uIEHtNmhEz8KT0jZdRbqKn6xmzutbX9n4iPMkUIc6LOHGOkrhoCdY0EFXc7D8WViJI
	 VunGJAAD8orEeTGn6UZPLZfWq7NvHUwD32Zq6gsk71OCijoj9GKltCr3Ork/wwLDVn
	 KWhPjI0m4BvndESH+oJMBO7RpKUIBVxpljkAHEhA8D5sfrC8ryE8QD5fBwp/AbIzqM
	 lPp0wCl45D9OKjfMAcmiGjwwhy3gantBlPlqP4LFxGz8rVe64mY/Jm89SmuKrfUKKY
	 F8QwXgrUyU7Sw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 720303B2A4;
 Wed,  2 Apr 2025 10:52:43 -0400 (EDT)
Received: by mail-ej1-x62a.google.com with SMTP id
 a640c23a62f3a-ac73723b2d5so861156866b.3; 
 Wed, 02 Apr 2025 07:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1743605562; x=1744210362; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=quhUdTCplyxNf6j5onBlk3SoDZ3s++quncwHo0sZAJs=;
 b=dgIzJWbEbhzLfyxenx+emuagMbK9FfPaqfEwuieg/oecDsSOnx3sw5b2zCUw8btwcU
 vPV9h+TCJiz94nmkf0Q8z22Cf8h68fBozUgo0WV2yin+yf7TNSbWe0YHpdsxvSEHN9qa
 E2u6MGamlKE3LzmZdCZM37gic88cUWGzozC81x17PvtBlj6kvKpWNE1zd7KrZ7q008VE
 UrMyix+NpNMstOLrzPQR5/QjkuGJHBNuGsF7E+zFltvH8ic8+UZOQowRw+tvthA7pus3
 Ocwe7l1LXk9lDJHOlLra0XqWmTMs41POqUjuE8OVLKBOzyMZV1P6xKU7zFg2Evs62h7p
 7PwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743605562; x=1744210362;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=quhUdTCplyxNf6j5onBlk3SoDZ3s++quncwHo0sZAJs=;
 b=uqVetFk7OsDCQaWYJw1+PrcnyY9+7dG6oso3+wQh4qSpPNj4bnvAZ3hJlMnqGeDMT/
 9ZE5q7Z+KkkWNhxOKYSlNkxkFvoTjPygTF+UdeQiTMsq9On9JZnVfTlOCWCJulEaQMsY
 CguNgPbOZ26Ms5m2rmHVReIY7R19smHy9Qekimr88v1vZuFlNbIUYCFdE0+2QSKzH6EP
 w5hyAedE2RUt3XDl8tsuBFO8qdqn10Mq9oSWgQgMrH+82m5TgqkDZTA6D7KMCh6LsP41
 nEcHaSODH7TqG6egchDMEZRzSvLfI8yWALuHjKuc2LlSmQPEacOQNyB3MAbGZaK/19AF
 cZGA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU8OOFgcCNZwDaPHBs2AWFBkqEpDToF3qsIORAhxdTgu8baaCLc9ypcNXvzI1KR1PfcJ03HRUaUCGBV+e8XnxE=@lists.bufferbloat.net,
 AJvYcCUWP3b/NiPpMNLFK5A1ZuJ7X47pfbzi08hBSTca/qxWaH4U2iPAyxSXykrjro7E5wiYY7xGxXCmYUM=@lists.bufferbloat.net,
 AJvYcCUjn6Xiuu0mnRJAxuPO5OsKP0w/reNIq5NiNinIVbe0Q0e0gLZRUEhLNY5vsiolnDDrUwvyAjk=@lists.bufferbloat.net,
 AJvYcCUmABL5/BOomCAuqrIsuMDuAQCxVvciFNOxVd3ju4Gzgg1K8N44fTVEJETLTF4xUMfJ88byI2k4244o@lists.bufferbloat.net,
 AJvYcCUo2yM/GAxeWCCbRE7xpNYhBVc/vw/VpeLlr5tEMQ4wrs1HrAcESZPTgVScSAqfBPsG4TChqThHJk573LLmCA==@lists.bufferbloat.net,
 AJvYcCV49wMIUQcNOVLZtf/imi9P/K8714gwKfccYyc3P4cosy9GXm4sLbN5OIl01roC8twOOZvJmJuPvF+nurJT/neX@lists.bufferbloat.net,
 AJvYcCV4ZoZtPK4SCU17MeuYgl59o99TdQ2VUrsEvIKlG6zeBIKawX/3yE6w+mjg4QetugvS1joP@lists.bufferbloat.net,
 AJvYcCWy6Bv1Td756GsjYSkqGtcVY+aiADqW+CjF1ZtFKQNIsnEHKC3X6nVjEEq3OySFcO/NTvsI9fSEYAc5qW6quQ==@lists.bufferbloat.net,
 AJvYcCX5YN9HHyRuuXudlU512UQ6cQvmP9WsjZU+hEMBqChhpoWGVj66g28R8AKobiarzLb8ZdKIhRalIQ==@lists.bufferbloat.net,
 AJvYcCX95BjPKs/TsjidBv/bym7w4S+1iwXavgyfkJe0h+hOn6ZjP9Uuu0X5pOI8Vxr3INEXbrrVMCM=@lists.bufferbloat.net,
 AJvYcCXSBnOwqgOxmXa/cjmjxJUBsng/i0mv9w5e6CramxxA0hEl0aUXIPntl4Cj6TJj8i4n3n8M3Q==@lists.bufferbloat.net,
 AJvYcCXp6xFvAHXVfQFkpRsb+kr2vSpCzknJmiTxA+5ahrwtCDbkdcn9YKQFHDRhugt59fhQz7DYxpkpxDbrxsziYxI=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yw8aUClmaZwrqAEq80VpvsaMRHwLUM+YCiUOMoZLBjdxjhr9eSX
 TQhPHhEv1In10Q3GYrnljKlYbnOWLF0GxL023dtlM6cdUdiqzb+3U/FMT7Hp5VkN0UK6ovn6v3e
 qcSl/YYndpNg256Kg5wx2OS4Gw44=
X-Gm-Gg: ASbGnctOydlO1N7IWTuOOI6vS38l4CnRYG4/O7H8XvqdtwJ4ph1GvT8sMIZlWc3dTud
 p0h/puvCTnVjnxvgxlLU/lgimbAbIHPjichn6VPAje1YeffghJk4F2tFN3E2YfFsNzXTIsssPOd
 n5eQox44gLCDbQBGeGcwq7EySIfA==
X-Google-Smtp-Source: AGHT+IHeKWSrAtfbsLtQK9R+lV4/nZ9CbZ5R4S7eb7E76eSbgBUZKozMq6thhvHJ8naR2DpZUFEfGicf2wEqzj+xpF8=
X-Received: by 2002:a17:907:daa:b0:ac3:d54:d825 with SMTP id
 a640c23a62f3a-ac7a1ae0c57mr220555866b.56.1743605561998; Wed, 02 Apr 2025
 07:52:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
In-Reply-To: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
Date: Wed, 2 Apr 2025 17:52:31 +0300
X-Gm-Features: AQ5f1JoQ6QU2KkXqfpDUmFwBhkRJYARSKz_EWQl5X3ImA4V-XO3SsYtNA9ia54A
Message-ID: <CAJbqEYB9Mf_=cZFx1g3G+Pf0w1Dsyns=LwG+h8Z1u-ZqwNmS7Q@mail.gmail.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
X-Mailman-Approved-At: Fri, 06 Jun 2025 06:40:58 -0400
Subject: Re: [Cake]
	=?utf-8?q?=5BStarlink=5D_In_loving_memory_of_Dave_T=C3=A4h?=
	=?utf-8?q?t_=3C3?=
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
From: Sauli Kiviranta via Cake <cake@lists.bufferbloat.net>
Reply-To: Sauli Kiviranta <smksauli@gmail.com>
Cc: codel-wireless@lists.bufferbloat.net,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 cerowrt-commits@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 =?UTF-8?Q?Network_Neutrality_is_back=21_Let=C2=B4s_make_the_technical_aspect?=
 =?UTF-8?Q?s_heard_this_time=21?= <nnagain@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, cerowrt-devel@lists.bufferbloat.net,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net, cerowrt-users@lists.bufferbloat.net,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============0156553844708426980=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0156553844708426980==
Content-Type: multipart/alternative; boundary="00000000000026c8c10631ccce57"

--00000000000026c8c10631ccce57
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Very sorry to hear that, what a loss! Condolences :(

We lost a great engineer and internet enthusiast (activist?) who was always
a positive driving force to make sh!t happen, yet with strongly held values
as north star, a true open-source believer! After few years lurking in the
shadows of IETF, in early 2023 I was preparing for first at site
participation and asked Dave for advice. Advice he did, a true mentor! This
eventually led to various late hour discussions, mostly just me picking his
brain for advice to help on the adventures on trying to make Internet
faster. He was happy to breach about bufferbloat and share insights into
why things still suck even if we have a lot of the answers already, about
fairness in internet protocols, or just him reflecting on fq and aqm to
preserve our collective discipline on the internet, fairness not just as a
feature, for him it was a moral imperative.

What made Dave special was all those philosophical reflections and small
insertions of his (often strong held) values into the technical
discussions, even in the smalles of technical contexts. Dave often shared
his dislike and was vocal on the problems in our way of working as
engineers, and I do share that concern. He would often tell the story on
how Richard Feynman exposing the flaws behind the Challenger disaster
=E2=80=9Cbroke=E2=80=9D him not only emotionally but also professionally, l=
eading him to
change in direction as engineer. Much alike that of Feynman what Dave had
was a spirit and demand for truthfulness and the rejection of bureaucratic
spin in the face of technical reality. He was frustrated on how we often
end up dismissing the stakes of engineering that ignoring physical laws not
just be bringing jail time but =E2=80=9Cdeath and destruction=E2=80=9D, yet=
 we are often
casual about consequences of our lack of discipline in the internet
(technically, right?).

Dave always had a good sense of humor and a grounded, human touch, plus to
put the music on top of that. That combo made an entertaining speaker and
funny demos he was throwing around to make a point. When I would ask his
advice to help us on a project, he would be soon joking about needing to go
for a walk because his =E2=80=9Cbrain hurts" after spending the day on the =
problems
of slinging packets across the solar system. He was a strong space
advocate, albeit with a dark touch to it due to the Feynman influence. All
this considered I am very happy to hear that he got to make contributions
to Starlink! He was often talking about it and hoping to be able to help.
His wit, humility, and generosity with time and advice was always there,
never pretentious, always direct, and often self-deprecating with humor.
Very characteristic example piece of Dave space enthusiasm was his worries
and writings about asteroid mining (He did write a lot of good stuff!):

https://the-edge.blogspot.com/search/label/asteroids

Dave was as a rare blend of an engineer, philosopher, educator, and
activist. His character was one of intellectual honesty, generosity, and a
deep values but always ending up with practical engineering and soemthing
that is reliable to the point of preserving human life directly or
indirectly. Dave was also one with true passion for open-source, unwavering
passion (Hi LibreQoS team!). He always punctuated on and advocated for
collaboration, offering to share code and share access to everything he
did, test things around, and openly critique what he saw as flawed
assumptions. His attitude was not one of competition but protective of what
he considered sacred, the integrity of internet. He was one who wanted to
believe, in the powers of good, to live, and live he did!

https://www.youtube.com/watch?v=3DOKMSgZo9c8s

We lost a great one! We will do our best and try to uphold what Dave was
fighting for, even if times get grim on occasion, losing him certainly is
one of those grim time. Log off now, Dave, may the waves be soothing on the
sail to the other side, rest in peace as you well deserve!

- Sauli

--

*Sauli Kiviranta*

CEO, Founder

Delta Cygni Labs



XRTC: www.xrtc.io

POINTR: www.pointr.com

DCL: www.deltacygnilabs.com



Mobile: +358 40 357 3272

LinkedIn: https://www.linkedin.com/in/saulikiviranta

--

On Tue, Apr 1, 2025 at 8:26=E2=80=AFPM Frantisek Borsik via Starlink <
starlink@lists.bufferbloat.net> wrote:

> Hello to all,
>
> We=E2=80=99re devastated to announce that Dave T=C3=A4ht has passed away.
> <https://libreqos.io/2025/04/01/in-loving-memory-of-dave/>
>
> Dave was an amazing man, helping the world with FQ-CoDel and CAKE,
> fighting bufferbloat and trying to make the world a better place. Always
> willing to help, and without him =E2=80=93 LibreQoS (and the other QoE so=
lutions
> out there) wouldn=E2=80=99t exist.
>
> Dave was an inspiration, and we all miss him. We=E2=80=99re reaching out =
to family
> and close friends to see if there=E2=80=99s anything we can do to help.
>
> Dave was an inspiration to us. Dave=E2=80=99s contributions to Linux, FQ-=
CoDel,
> and CAKE improved internet connectivity around the world for millions of
> people. Because of him, millions of people now have access to reliable
> video calls =E2=80=93 and in turn, access to loved ones, healthcare, and =
community.
> One of Robert=E2=80=99s ISP customers is a kind paraplegic woman who live=
s in a
> far-flung rural Colonia around El Paso, Texas. Her reliable access to her
> doctors through telemedicine, and to her family through FaceTime, was onl=
y
> made possible because of his algorithms. There are millions of cases like
> hers, where Dave=E2=80=99s contributions have silently enabled human conn=
ection and
> safety. Everything Dave contributed to the world of technology was free a=
nd
> open source, for the betterment of humanity.
>
> Dave is the reason that Starlink was able to tackle its latency issues =
=E2=80=93
> enabling a generation of young entrepreneurs across the developing world,
> such as these young folks pictured in the Phillipines, to start their own
> ISPs to expand internet access to their communities. Dave started work on
> FQ-CoDel in part because of his own journey working to expand internet
> access in Nicaragua, so we know he saw that his work had come full-circle
> and helped so many.
>
> We=E2=80=99re incredibly grateful to have Dave as our friend, mentor, and=
 as
> someone who continuously inspired us =E2=80=93 showing us that we could d=
o better
> for each other in the world, and leverage technology to make that happen.
> He will be dearly missed.
>
> *PS: *Dave is forever in our hearts and souls, in our routers and...in
> production!
>
> *https://github.com/LibreQoE/LibreQoS/pull/684
> <https://github.com/LibreQoE/LibreQoS/pull/684>*
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
> _______________________________________________
> Starlink mailing list
> Starlink@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/starlink
>

--00000000000026c8c10631ccce57
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Very sorry to hear that, what a loss! Con=
dolences :(<br><br>We lost a great engineer and internet enthusiast (activi=
st?) who was always a positive driving force to make sh!t happen, yet with =
strongly held values as north star, a true open-source believer! After few =
years lurking in the shadows of IETF, in early 2023 I was preparing for fir=
st at site participation and asked Dave for advice. Advice he did, a true m=
entor!=C2=A0This eventually led to various late hour discussions, mostly ju=
st me picking his brain for advice to help on the adventures on trying to m=
ake Internet faster. He was happy to breach about bufferbloat and share ins=
ights into why things still suck even if we have a lot of the answers alrea=
dy, about fairness in internet protocols, or just him reflecting on fq and =
aqm to preserve our collective discipline on the internet, fairness not jus=
t as a feature, for him it was a moral imperative. <br><br>What made Dave s=
pecial was all those philosophical reflections and small insertions of his =
(often strong held) values into the technical discussions, even in the smal=
les of technical contexts. Dave often shared his dislike and was vocal on t=
he problems in our way of working as engineers, and I do share that concern=
. He would often tell the story on how Richard Feynman exposing the flaws b=
ehind the Challenger disaster =E2=80=9Cbroke=E2=80=9D him not only emotiona=
lly but also professionally, leading him to change in direction as engineer=
. Much alike that of Feynman what Dave had was a spirit and demand for trut=
hfulness and the rejection of bureaucratic spin in the face of technical re=
ality. He was frustrated on how we often end up dismissing the stakes of en=
gineering that ignoring physical laws not just be bringing jail time but =
=E2=80=9Cdeath and destruction=E2=80=9D, yet we are often casual about cons=
equences of our lack of discipline in the internet (technically, right?). <=
br><br>Dave always had a good sense of humor and a grounded, human touch, p=
lus to put the music on top of that. That combo made an entertaining speake=
r and funny demos he was throwing around to make a point. When I would ask =
his advice to help us on a project, he would be soon joking about needing t=
o go for a walk because his =E2=80=9Cbrain hurts&quot; after spending the d=
ay on the problems of slinging packets across the solar system. He was a st=
rong space advocate, albeit with a dark touch to it due to the Feynman infl=
uence. All this considered I am very happy to hear that he got to make cont=
ributions to Starlink! He was often talking about it and hoping to be able =
to help. His wit, humility, and generosity with time and advice was always =
there, never pretentious, always direct, and often self-deprecating with hu=
mor. Very characteristic example piece of Dave space enthusiasm was his wor=
ries and writings about asteroid mining (He did write a lot of good stuff!)=
: <br><br><a href=3D"https://the-edge.blogspot.com/search/label/asteroids">=
https://the-edge.blogspot.com/search/label/asteroids</a><div><br><div>Dave =
was as a rare blend of an engineer, philosopher, educator, and activist. Hi=
s character was one of intellectual honesty, generosity, and a deep values =
but always ending up with practical engineering and soemthing that is relia=
ble to the point of preserving human life directly or indirectly. Dave was =
also one with true passion for open-source, unwavering passion (Hi LibreQoS=
 team!). He always punctuated on and advocated for collaboration, offering =
to share code and share access to everything he did, test things around, an=
d openly critique what he saw as flawed assumptions. His attitude was not o=
ne of competition but protective of what he considered sacred, the integrit=
y of internet. He was one who wanted to believe, in the powers of good, to =
live, and live he did! <br><br><a href=3D"https://www.youtube.com/watch?v=
=3DOKMSgZo9c8s">https://www.youtube.com/watch?v=3DOKMSgZo9c8s </a><br><br>W=
e lost a great one! We will do our best and try to uphold what Dave was fig=
hting for, even if times get grim on occasion, losing him certainly is one =
of those grim time. Log off now, Dave, may the waves be soothing on the sai=
l to the other side, rest in peace as you well deserve!</div><div><br>- Sau=
li</div></div></div><br><p class=3D"MsoNormal" style=3D"margin:0in;font-siz=
e:12pt;font-family:Aptos,sans-serif"><a name=3D"_MailAutoSig"><span style=
=3D"font-size:11pt">--</span></a></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:12pt;font-family:Aptos=
,sans-serif"><b><span style=3D"font-size:11pt">Sauli Kiviranta</span></b></=
p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:12pt;font-family:Aptos=
,sans-serif"><span style=3D"font-size:11pt">CEO, Founder</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:12pt;font-family:Aptos=
,sans-serif"><span style=3D"font-size:11pt">Delta Cygni Labs</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:12pt;font-family:Aptos=
,sans-serif"><span style=3D"font-size:11pt">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:12pt;font-family:Aptos=
,sans-serif"><span style=3D"font-size:11pt;color:rgb(64,64,64)">XRTC</span>=
<span style=3D"font-size:11pt">: </span><a href=3D"http://www.xrtc.io"><spa=
n style=3D"font-size:11pt;color:rgb(70,120,134)">www.xrtc.io</span></a><spa=
n style=3D"font-size:11pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:12pt;font-family:Aptos=
,sans-serif"><span style=3D"font-size:11pt;color:rgb(64,64,64)">POINTR</spa=
n><span style=3D"font-size:11pt">: </span><a href=3D"http://www.pointr.com"=
><span style=3D"font-size:11pt;color:rgb(70,120,134)">www.pointr.com</span>=
</a><span style=3D"font-size:11pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:12pt;font-family:Aptos=
,sans-serif"><span style=3D"font-size:11pt;color:rgb(64,64,64)">DCL</span><=
span style=3D"font-size:11pt">: </span><a href=3D"http://www.deltacygnilabs=
.com"><span style=3D"font-size:11pt;color:rgb(70,120,134)">www.deltacygnila=
bs.com</span></a><span style=3D"font-size:11pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:12pt;font-family:Aptos=
,sans-serif"><span style=3D"font-size:11pt">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:12pt;font-family:Aptos=
,sans-serif"><span style=3D"font-size:11pt;color:rgb(64,64,64)">Mobile</spa=
n><span style=3D"font-size:11pt">: +358 40 357 3272</span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:12pt;font-family:Aptos=
,sans-serif"><span style=3D"font-size:11pt;color:rgb(64,64,64)">LinkedIn</s=
pan><span style=3D"font-size:11pt">: </span><a href=3D"https://www.linkedin=
.com/in/saulikiviranta"><span style=3D"font-size:11pt;color:rgb(70,120,134)=
">https://www.linkedin.com/in/saulikiviranta</span></a><span style=3D"font-=
size:11pt"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in;font-size:12pt;font-family:Aptos=
,sans-serif"><span style=3D"font-size:11pt">--</span></p><br><div class=3D"=
gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Tue, Apr 1, 2025 at 8:26=E2=80=AFPM Frantisek Borsik via Starlink &lt;<a h=
ref=3D"mailto:starlink@lists.bufferbloat.net">starlink@lists.bufferbloat.ne=
t</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div>Hello to all,</div><div><br></div><div><a href=3D"ht=
tps://libreqos.io/2025/04/01/in-loving-memory-of-dave/" target=3D"_blank">W=
e=E2=80=99re devastated to announce that Dave T=C3=A4ht has passed away.</a=
><br><br>Dave was an amazing man, helping the world with FQ-CoDel and CAKE,=
 fighting bufferbloat and trying to make the world a better place. Always w=
illing to help, and without him =E2=80=93 LibreQoS (and the other QoE solut=
ions out there) wouldn=E2=80=99t exist.<br><br>Dave was an inspiration, and=
 we all miss him. We=E2=80=99re reaching out to family and close friends to=
 see if there=E2=80=99s anything we can do to help.<br><br>Dave was an insp=
iration to us. Dave=E2=80=99s contributions to Linux, FQ-CoDel, and CAKE im=
proved internet connectivity around the world for millions of people. Becau=
se of him, millions of people now have access to reliable video calls =E2=
=80=93 and in turn, access to loved ones, healthcare, and community. One of=
 Robert=E2=80=99s ISP customers is a kind paraplegic woman who lives in a f=
ar-flung rural Colonia around El Paso, Texas. Her reliable access to her do=
ctors through telemedicine, and to her family through FaceTime, was only ma=
de possible because of his algorithms. There are millions of cases like her=
s, where Dave=E2=80=99s contributions have silently enabled human connectio=
n and safety. Everything Dave contributed to the world of technology was fr=
ee and open source, for the betterment of humanity.<br><br>Dave is the reas=
on that Starlink was able to tackle its latency issues =E2=80=93 enabling a=
 generation of young entrepreneurs across the developing world, such as the=
se young folks pictured in the Phillipines, to start their own ISPs to expa=
nd internet access to their communities. Dave started work on FQ-CoDel in p=
art because of his own journey working to expand internet access in Nicarag=
ua, so we know he saw that his work had come full-circle and helped so many=
.<br><br>We=E2=80=99re incredibly grateful to have Dave as our friend, ment=
or, and as someone who continuously inspired us =E2=80=93 showing us that w=
e could do better for each other in the world, and leverage technology to m=
ake that happen. He will be dearly missed.<br></div><div><br></div><div><b>=
PS: </b>Dave is forever in our hearts and souls, in our routers and...in pr=
oduction!</div><div><b><a href=3D"https://github.com/LibreQoE/LibreQoS/pull=
/684" target=3D"_blank">https://github.com/LibreQoE/LibreQoS/pull/684<br></=
a></b></div><div><br></div><div><div dir=3D"ltr" class=3D"gmail_signature">=
<div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
>All the best,</div><div><br></div><div><p class=3D"MsoNormal" style=3D"col=
or:rgb(34,34,34)">Frank<u></u><u></u></p><p class=3D"MsoNormal" style=3D"co=
lor:rgb(34,34,34)"><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:=
rgb(34,34,34)">Frantisek (Frank) Borsik<u></u><u></u></p><p class=3D"MsoNor=
mal" style=3D"color:rgb(34,34,34)"><u></u>=C2=A0<u></u></p><p class=3D"MsoN=
ormal" style=3D"color:rgb(34,34,34)"><a href=3D"https://www.linkedin.com/in=
/frantisekborsik" style=3D"color:rgb(17,85,204)" target=3D"_blank">https://=
www.linkedin.com/in/frantisekborsik</a><u></u><u></u></p><p class=3D"MsoNor=
mal" style=3D"color:rgb(34,34,34)">Signal, Telegram, WhatsApp: +42191941671=
4=C2=A0<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34=
)">iMessage, mobile: +420775230885<u></u><u></u></p><p class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)">Skype: casioa5302ca<u></u><u></u></p><p class=
=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"mailto:frantisek.bo=
rsik@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">frantisek.=
borsik@gmail.com</a></p></div></div></div></div></div></div></div></div></d=
iv></div></div></div></div></div>
_______________________________________________<br>
Starlink mailing list<br>
<a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starlin=
k@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/starlink" rel=3D"noreferr=
er" target=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink</a><b=
r>
</blockquote></div></div>

--00000000000026c8c10631ccce57--

--===============0156553844708426980==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0156553844708426980==--

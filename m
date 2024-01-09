Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BA6828AB0
	for <lists+cake@lfdr.de>; Tue,  9 Jan 2024 18:07:27 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CB8903CB49;
	Tue,  9 Jan 2024 12:07:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1704820040;
	bh=8Z4TiLGw3o7a9vcsMVZAGhd458XdZl4oV/uHGRbRd0A=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=M7F7gv7i7KJtQm7POTNvk8sZBmSIhluztZX4HQrP6+ESq7ZESTCCbULeQ2TY0BOpI
	 jdAeYFzA2qmwXMQgVmpSEINX5RgwmaaofMSgaj/a9tuFY+xfW+Pj9HIz2oZYMq+tTV
	 h7EqKfdMEX0sss/ZWNp52xfM8tsqjTYiqFnB/53S4KSSzu0kzZpmZqoVLF35mUdPxF
	 AosMUBSJW1JoD/AJ/6M1N18atD9Ygl0OL6TN8yGuwjM/zHgTb1/6mIT7QZC/c4rNHP
	 A+PYydVAllGgFli2wKsyFW5M9ASLZfmc9TFs8G+6gjTLdg3zsD2DxLei4kWtfc/HyU
	 37gOerMqyueNg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com
 [IPv6:2607:f8b0:4864:20::f29])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C69C13B2A4
 for <cake@lists.bufferbloat.net>; Tue,  9 Jan 2024 12:07:19 -0500 (EST)
Received: by mail-qv1-xf29.google.com with SMTP id
 6a1803df08f44-67f85d29d14so23329286d6.1
 for <cake@lists.bufferbloat.net>; Tue, 09 Jan 2024 09:07:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1704820039; x=1705424839; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=/OhkZSJ4tfSTpPsCBs6t+UylzqerWdtL+WDq3cW+pOE=;
 b=UdM5OYGXVhpuAHPLaxuDRDVABK0IBWCtcBtmyyIpAYPuJTAwo/4jeF7LZlsQBugsme
 00pVaipy+X3ikiutOxHTi9eBk1Ms0Vx805dWviYGcveNmUXmPGXQBlZZKxLzVW6PW3tO
 ZzPyE9G3S0M/W46XqFQSPMypvyxZJ8PZiT8D06s6/hyKhHL9+hqQ7EAHfdXEJwmYlBR7
 rQlvTOB8PrvMQT2X24GPXK5nQcbFBLnzK85cyEWlLZ1uQ4jF7TIWq3N49+SASrZRR6uv
 HmzXiSTRWwavX03GtWqVcJ8IGF9OywFqwLbTpPEzbi2Z3kxlpG0YbdsZYbuMw0PesPMh
 SGYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704820039; x=1705424839;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/OhkZSJ4tfSTpPsCBs6t+UylzqerWdtL+WDq3cW+pOE=;
 b=ShEDMPbNimN2kXm4EesvstODFQrN9lzTCdbWwjnT5O31aKgb8KpFCYOnKhenccEdiw
 1q3lbPPNZRtwUka21d45zV7nIUNdmbRLovG8F4VvtHUVlE5ni9TDXx/hAkiBwAZICXML
 pk6vzdTJoCcEL9S+wcgPAmOwqcBOrzFpPYpqPtZmJJjqIrfceOW9OXfWB+IT2BQVlm4y
 OC8oj8ZoYAqT8WLYZDNrmY9HUM+1HIE1R0zVydRA2COWjWyabjYE861HeoaBPHKxo+Qt
 QWT3ae0j0ouBKkhh6h+/GEWxZ+e6u8hP24ziLaEQQhF990vn0w2uR85Ilf5FajUPUg5l
 MF6w==
X-Gm-Message-State: AOJu0YxxdiNzwmZ1UdE0Yunajp51c14vPyMmer3KgqmPSSyeqfGSFCV6
 bnvCK9txaOHxAH3djepz6OLaPFBjYmX4mfnboXc=
X-Google-Smtp-Source: AGHT+IEYteevqpgkbD9P76JOVvsnUirrulWdDbL6yP1DKTk4P29kBUKskVijQujEzc4dCe8gUmCXUhj5lRJfdwct+44=
X-Received: by 2002:a05:6214:2a8e:b0:67f:adff:74a0 with SMTP id
 jr14-20020a0562142a8e00b0067fadff74a0mr7596729qvb.110.1704820039047; Tue, 09
 Jan 2024 09:07:19 -0800 (PST)
MIME-Version: 1.0
References: <CANypexRYDqtsuj2vwX0qXWA=hXN3KZ5CJn5+vZRbm=Dikwh1Aw@mail.gmail.com>
 <deed5fd13e38d17c8b6716f4fdad64cba896385b.camel@heistp.net>
 <65325791-A1D1-4E21-9F1D-D17737BCFF0F@lochnair.net>
 <CAA93jw4K2sgRfXieAV_tfjBpRrK3kEke1QhMk2tp+PqLMh8w4Q@mail.gmail.com>
 <867A6BD3-28C6-467A-977C-932DFB6B8E08@lochnair.net>
In-Reply-To: <867A6BD3-28C6-467A-977C-932DFB6B8E08@lochnair.net>
Date: Tue, 9 Jan 2024 09:07:07 -0800
Message-ID: <CANypexRnG6zLn0iSiEg7ehCUZMRXWi4C03oBJDb+u9QtZB7DYA@mail.gmail.com>
To: Nils Andreas Svee <me@lochnair.net>
Subject: Re: [Cake] Ubiquity (Unifi ) Smart Queues
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
Cc: CAKE list <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============2800011108944365124=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2800011108944365124==
Content-Type: multipart/alternative; boundary="000000000000d56135060e8658c2"

--000000000000d56135060e8658c2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Nils - I guess you could run LibreQoS on N100?

On Tue, Jan 9, 2024 at 8:57=E2=80=AFAM Nils Andreas Svee via Cake <
cake@lists.bufferbloat.net> wrote:

> On Jan 9, 2024, at 17:05, Dave Taht <dave.taht@gmail.com> wrote:
>
> On Tue, Jan 9, 2024 at 10:40=E2=80=AFAM Nils Andreas Svee via Cake
> <cake@lists.bufferbloat.net> wrote:
>
> Though frankly, I don=E2=80=99t plan on updating the sch_cake and tc bina=
ries when
> new firmwares are released anymore, as they don=E2=80=99t publish the GPL=
 archives
> on their webpage after the redesign, and they don=E2=80=99t respond to re=
quests for
> them either by the looks of the forums. So if it breaks there=E2=80=99s n=
ot much I
> can do anymore.
>
>
> This irks me enormously. It is the direct outcome of the cambium
> elevate lawsuit, where both companies lost, the ISPs lost, open source
> practices long established about publishing sources, lost, and the
> lawyers went on to other nasty things leaving this trail of awful
> precedents  in their wake.
>
> https://www.mtin.net/blog/ubnt-vs-cambium/
>
> Wow, hadn=E2=80=99t read about that. They even sued an ISP just for using
> Cambium=E2=80=99s software on their hardware?
> That is crazy, just evil corporate lawyers doing their thing I guess.
>
> I do not know what to do about it. It also irks me that as a
> contributor to "smart queues" they are not maintaining it well.
>
> It leaves something to be desired yes, and I would=E2=80=99ve hoped to se=
e CAKE
> included too of course,
> but even WireGuard is only available in the latest release candidates wit=
h
> the redesigned web UI, so I=E2=80=99m not holding my breath.
>
> I still have an EdgeRouter 4 that serves the family farm and one of the
> 8-port switches under my desk, if only because I don=E2=80=99t wanna spen=
d money on
> replacing them, and they do serve their purpose.
>
> I=E2=80=99ve since moved though, and now live in an area that has FTTH, s=
o I
> needed something beefier to handle CAKE on a 750/750 subscription, becaus=
e
> obviously there=E2=80=99s still bloat even on that ;)
>
> One of those Chinese boxes with a N100 in it and OpenWrt on top works
> wonders :)
>
> Best Regards,
> Nils Andreas Svee
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake
>


--=20
Regards,
Dave Seddon
+1 415 857 5102

--000000000000d56135060e8658c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Nils - I guess you could run LibreQoS on N100?<br></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, =
Jan 9, 2024 at 8:57=E2=80=AFAM Nils Andreas Svee via Cake &lt;<a href=3D"ma=
ilto:cake@lists.bufferbloat.net">cake@lists.bufferbloat.net</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div><block=
quote type=3D"cite"><div>On Jan 9, 2024, at 17:05, Dave Taht &lt;<a href=3D=
"mailto:dave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a>&gt; =
wrote:</div><br><div><span style=3D"font-family:Helvetica;font-size:12px;fo=
nt-style:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;text-decoration:none;float:none;display:inline">On Tue, J=
an 9, 2024 at 10:40=E2=80=AFAM Nils Andreas Svee via Cake</span><br style=
=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-variant-cap=
s:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoratio=
n:none"><span style=3D"font-family:Helvetica;font-size:12px;font-style:norm=
al;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-alig=
n:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;text-decoration:none;float:none;display:inline">&lt;</span><a href=3D"=
mailto:cake@lists.bufferbloat.net" style=3D"font-family:Helvetica;font-size=
:12px;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px" target=3D"_blank">cake@lists.bufferbloat.net</a>=
<span style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-=
variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;tex=
t-decoration:none;float:none;display:inline">&gt; wrote:</span><br style=3D=
"font-family:Helvetica;font-size:12px;font-style:normal;font-variant-caps:n=
ormal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:n=
one"><br style=3D"font-family:Helvetica;font-size:12px;font-style:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;=
text-decoration:none"><blockquote type=3D"cite" style=3D"font-family:Helvet=
ica;font-size:12px;font-style:normal;font-variant-caps:normal;font-weight:4=
00;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:no=
ne;white-space:normal;word-spacing:0px;text-decoration:none">Though frankly=
, I don=E2=80=99t plan on updating the sch_cake and tc binaries when new fi=
rmwares are released anymore, as they don=E2=80=99t publish the GPL archive=
s on their webpage after the redesign, and they don=E2=80=99t respond to re=
quests for them either by the looks of the forums. So if it breaks there=E2=
=80=99s not much I can do anymore.<br></blockquote><br style=3D"font-family=
:Helvetica;font-size:12px;font-style:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;text-decoration:none"><span s=
tyle=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-variant=
-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-in=
dent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decor=
ation:none;float:none;display:inline">This irks me enormously. It is the di=
rect outcome of the cambium</span><br style=3D"font-family:Helvetica;font-s=
ize:12px;font-style:normal;font-variant-caps:normal;font-weight:400;letter-=
spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px;text-decoration:none"><span style=3D"font-fami=
ly:Helvetica;font-size:12px;font-style:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;text-decoration:none;float:=
none;display:inline">elevate lawsuit, where both companies lost, the ISPs l=
ost, open source</span><br style=3D"font-family:Helvetica;font-size:12px;fo=
nt-style:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;text-decoration:none"><span style=3D"font-family:Helvetic=
a;font-size:12px;font-style:normal;font-variant-caps:normal;font-weight:400=
;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none=
;white-space:normal;word-spacing:0px;text-decoration:none;float:none;displa=
y:inline">practices long established about publishing sources, lost, and th=
e</span><br style=3D"font-family:Helvetica;font-size:12px;font-style:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;text-decoration:none"><span style=3D"font-family:Helvetica;font-size:12p=
x;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spacing=
:normal;text-align:start;text-indent:0px;text-transform:none;white-space:no=
rmal;word-spacing:0px;text-decoration:none;float:none;display:inline">lawye=
rs went on to other nasty things leaving this trail of awful</span><br styl=
e=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-variant-ca=
ps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-inden=
t:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decorati=
on:none"><span style=3D"font-family:Helvetica;font-size:12px;font-style:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;text-decoration:none;float:none;display:inline">precedents =C2=A0in t=
heir wake.</span></div></blockquote><blockquote type=3D"cite"><div><a href=
=3D"https://www.mtin.net/blog/ubnt-vs-cambium/" style=3D"font-family:Helvet=
ica;font-size:12px;font-style:normal;font-variant-caps:normal;font-weight:4=
00;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:no=
ne;white-space:normal;word-spacing:0px" target=3D"_blank">https://www.mtin.=
net/blog/ubnt-vs-cambium/</a><br style=3D"font-family:Helvetica;font-size:1=
2px;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-space:=
normal;word-spacing:0px;text-decoration:none"></div></blockquote><div>Wow, =
hadn=E2=80=99t read about that. They even sued an ISP just for using Cambiu=
m=E2=80=99s software on their hardware?</div><div>That is crazy, just evil =
corporate lawyers doing their thing I guess.</div><br><blockquote type=3D"c=
ite"><div><span style=3D"font-family:Helvetica;font-size:12px;font-style:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;text-decoration:none;float:none;display:inline">I do not know what t=
o do about it. It also irks me that as a</span><br style=3D"font-family:Hel=
vetica;font-size:12px;font-style:normal;font-variant-caps:normal;font-weigh=
t:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform=
:none;white-space:normal;word-spacing:0px;text-decoration:none"><span style=
=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-variant-cap=
s:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoratio=
n:none;float:none;display:inline">contributor to &quot;smart queues&quot; t=
hey are not maintaining it well.</span><br></div></blockquote></div>It leav=
es something to be desired yes, and I would=E2=80=99ve hoped to see CAKE in=
cluded too of course,<div>but even WireGuard is only available in the lates=
t release candidates with the redesigned web UI, so I=E2=80=99m not holding=
 my breath.</div><div><br></div><div>I still have an EdgeRouter 4 that serv=
es the family farm and one of the 8-port switches under my desk, if only be=
cause I don=E2=80=99t wanna spend money on replacing them, and they do serv=
e their purpose.</div><div><br></div><div>I=E2=80=99ve since moved though, =
and now live in an area that has FTTH, so I needed something beefier to han=
dle CAKE on a 750/750 subscription, because obviously there=E2=80=99s still=
 bloat even on that ;)</div><div><br></div><div>One of those Chinese boxes =
with a N100 in it and OpenWrt on top works wonders :)</div><div><br></div><=
div><span style=3D"color:rgb(0,0,0)">Best Regards,</span><br style=3D"color=
:rgb(0,0,0)"><span style=3D"color:rgb(0,0,0)">Nils Andreas Svee</span></div=
></div>_______________________________________________<br>
Cake mailing list<br>
<a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.=
bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"noreferrer" =
target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Regards,<br></div>Dave=
 Seddon<br>+1 415 857 5102<br></div></div></div></div></div></div>

--000000000000d56135060e8658c2--

--===============2800011108944365124==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2800011108944365124==--

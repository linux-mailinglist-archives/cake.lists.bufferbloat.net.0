Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 05829828A8D
	for <lists+cake@lfdr.de>; Tue,  9 Jan 2024 17:57:45 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 007903CB48;
	Tue,  9 Jan 2024 11:57:44 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1704819464;
	bh=nzx2WVf6TyDh1LRZHb2qcQNAyAwhKczQGPduhQLqgDQ=;
	h=Date:In-Reply-To:To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=RR9LFfjqG1zoZhULRAcOM/bpYLzjV7Jckh7Ea+gfjeNHG2wNik9MCCyYt9BXoujoa
	 TFgTKXJRUPP12E6bKB7O9e3FP6qBp7mnzlSDswvLHc8xPXT5q52Fe8jHNPFVUI0aGi
	 bHHDCV1C+zOrdhuHporzlXxHySh4jcjEezmvG8Kdf0nkF9vQzmiawsmO0xRX2aGvI2
	 5C/KC1XZpA9MpoT8bQ9IKl0xZ8vEHgF980OPYLq2GsE8UqduAWT3fGxag3xhU5KDqN
	 2Mf83TudDKaMKzpwsUgpIgjiOsGcGkO+zrOEu2j3ISnS37FkHlJAuPn6BlIkd1oYIo
	 3/+gZr9F78NIg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
 [66.111.4.27])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9926E3B2A4
 for <cake@lists.bufferbloat.net>; Tue,  9 Jan 2024 11:57:42 -0500 (EST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 7CB515C0411;
 Tue,  9 Jan 2024 11:57:42 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Tue, 09 Jan 2024 11:57:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 cc:cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1704819462; x=1704905862; bh=KFtJnWyv3V
 gJHhzbNk15ZF0QoDv2a3AUPh+YRmIz0Ik=; b=bQGxYfxPZy7/7xkmq/d/LMumkJ
 UM7V/iAZZXezflbw5ZZXWXpILxPK31CbOeGsPdTLH9oMUZAdzyfqwrlu1cSJd+cS
 uoTDHeieSFJ9xAcBVji8wy52gnsV6RigdiYG9TEWdhf35/zpTqO1R1MntnaRMyFY
 wNY1xd9ic+FTp4dbwm72Wc7uDJF3EgrdCnZIlPYFX+Uve6kJVjkX58PilqWOxX4u
 9OixD2AdkzyoBGxfeWuuKtDcLbBrzZU3rN1Vd/ux0P+Cd+6ePGcq3AsV8WnkvvyY
 5aje47fEp3+vJ6sfwryWZcZ0invKha7dd25NiTuxdRvtiGs520VuIFk/VPbA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1704819462; x=1704905862; bh=KFtJnWyv3VgJHhzbNk15ZF0QoDv2
 a3AUPh+YRmIz0Ik=; b=UuhFXfzP/2mluXRyU5QQjLSwyO2RyWHaV4cOFIzO8+RC
 fIojL/7HGdj4Fty+ddiuuXZGU73SX0ThTJTWwN+pRqVIh88MIx5OGidbjUGHSJmM
 LNa9CMPZOB2FTqZOeCK0kxci/IfHq2Q1cOyKSCEl35Deytnb4QzIvAjg/d/QOouS
 76e+t41oepgPG2nA/taa9Eed/Zb+yemNNcWPjF/IPvhiEZQH+u/u2GGMU5pLWd1D
 9IeywTgJTsSwNgXgoYcuoR+J2rg5a3zncBp+xSnH8Q81M7MXex6mQzCtWy2bIlNe
 vdixS2d5FN4Cpq+gnvtamIpZqjKeFHzKu9NuuuhRjw==
X-ME-Sender: <xms:BnudZTdccQF5Lh3hrEK-UG_viWGOFU9I-VkOYf8Bh_tdRMfQw4RvEQ>
 <xme:BnudZZPJx3JVLU-QWSLySMKKoOj0-PrLfekslt0WHvDN-u61_yvnFZRlFqhW43Prk
 PbIFG-ZqD2Q697_fQ>
X-ME-Received: <xmr:BnudZcg9D6PI7rRTdAhQ8x3YMaHixJFCWd8I6iNlRFIbptBsUFZdqgh9S30UeWD_tOl6UA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdehledgleefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffktgggufffjgevvfhfofesrgdtmherhhdtjeenucfhrhhomheppfhilhhs
 ucetnhgurhgvrghsucfuvhgvvgcuoehmvgeslhhotghhnhgrihhrrdhnvghtqeenucggtf
 frrghtthgvrhhnpeekudegleekffegkeekvddvhedtfeethefgiefgleekvddtveehvedt
 vdduieeuvdenucffohhmrghinhepmhhtihhnrdhnvghtnecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgvsehlohgthhhnrghirhdrnhgvth
X-ME-Proxy: <xmx:BnudZU9qQsj8MyqRMRn9UbrOH9gtQm6xpXtqxXl8fC_Wp0E-WLLOGQ>
 <xmx:BnudZfsB4q5h6XOxzKGEZsvBU6ZFqd3WcnQZqCtM8JsmwfKiCiW66A>
 <xmx:BnudZTH2TIJDoTfU9kJ4Zhc0eI-_65XYuzXcYW1wXroEz-gI6wpMOg>
 <xmx:BnudZYXQWJpN4G8PrWpXdwMQEYwwN404wg_RGBfk2iq488VIfpj3qg>
Feedback-ID: id883430e:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 9 Jan 2024 11:57:41 -0500 (EST)
Message-Id: <867A6BD3-28C6-467A-977C-932DFB6B8E08@lochnair.net>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
Date: Tue, 9 Jan 2024 17:57:29 +0100
In-Reply-To: <CAA93jw4K2sgRfXieAV_tfjBpRrK3kEke1QhMk2tp+PqLMh8w4Q@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
References: <CANypexRYDqtsuj2vwX0qXWA=hXN3KZ5CJn5+vZRbm=Dikwh1Aw@mail.gmail.com>
 <deed5fd13e38d17c8b6716f4fdad64cba896385b.camel@heistp.net>
 <65325791-A1D1-4E21-9F1D-D17737BCFF0F@lochnair.net>
 <CAA93jw4K2sgRfXieAV_tfjBpRrK3kEke1QhMk2tp+PqLMh8w4Q@mail.gmail.com>
X-Mailer: Apple Mail (2.3774.300.61.1.2)
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
From: Nils Andreas Svee via Cake <cake@lists.bufferbloat.net>
Reply-To: Nils Andreas Svee <me@lochnair.net>
Cc: CAKE list <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============4513128636982485830=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============4513128636982485830==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_983BA1C3-810E-488C-AE59-973A3BB6A22C"


--Apple-Mail=_983BA1C3-810E-488C-AE59-973A3BB6A22C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

> On Jan 9, 2024, at 17:05, Dave Taht <dave.taht@gmail.com> wrote:
>=20
> On Tue, Jan 9, 2024 at 10:40=E2=80=AFAM Nils Andreas Svee via Cake
> <cake@lists.bufferbloat.net <mailto:cake@lists.bufferbloat.net>> =
wrote:
>=20
>> Though frankly, I don=E2=80=99t plan on updating the sch_cake and tc =
binaries when new firmwares are released anymore, as they don=E2=80=99t =
publish the GPL archives on their webpage after the redesign, and they =
don=E2=80=99t respond to requests for them either by the looks of the =
forums. So if it breaks there=E2=80=99s not much I can do anymore.
>=20
> This irks me enormously. It is the direct outcome of the cambium
> elevate lawsuit, where both companies lost, the ISPs lost, open source
> practices long established about publishing sources, lost, and the
> lawyers went on to other nasty things leaving this trail of awful
> precedents  in their wake.
> https://www.mtin.net/blog/ubnt-vs-cambium/
Wow, hadn=E2=80=99t read about that. They even sued an ISP just for =
using Cambium=E2=80=99s software on their hardware?
That is crazy, just evil corporate lawyers doing their thing I guess.

> I do not know what to do about it. It also irks me that as a
> contributor to "smart queues" they are not maintaining it well.
It leaves something to be desired yes, and I would=E2=80=99ve hoped to =
see CAKE included too of course,
but even WireGuard is only available in the latest release candidates =
with the redesigned web UI, so I=E2=80=99m not holding my breath.

I still have an EdgeRouter 4 that serves the family farm and one of the =
8-port switches under my desk, if only because I don=E2=80=99t wanna =
spend money on replacing them, and they do serve their purpose.

I=E2=80=99ve since moved though, and now live in an area that has FTTH, =
so I needed something beefier to handle CAKE on a 750/750 subscription, =
because obviously there=E2=80=99s still bloat even on that ;)

One of those Chinese boxes with a N100 in it and OpenWrt on top works =
wonders :)

Best Regards,
Nils Andreas Svee=

--Apple-Mail=_983BA1C3-810E-488C-AE59-973A3BB6A22C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: =
after-white-space;"><div><blockquote type=3D"cite"><div>On Jan 9, 2024, =
at 17:05, Dave Taht &lt;dave.taht@gmail.com&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div><meta charset=3D"UTF-8"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">On Tue, Jan 9, 2024 at 10:40=E2=80=AFAM =
Nils Andreas Svee via Cake</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><span style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline =
!important;">&lt;</span><a href=3D"mailto:cake@lists.bufferbloat.net" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;">cake@lists.bufferbloat.net</a><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">&gt; wrote:</span><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><blockquote type=3D"cite" style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;">Though frankly, I don=E2=80=99t plan on updating =
the sch_cake and tc binaries when new firmwares are released anymore, as =
they don=E2=80=99t publish the GPL archives on their webpage after the =
redesign, and they don=E2=80=99t respond to requests for them either by =
the looks of the forums. So if it breaks there=E2=80=99s not much I can =
do anymore.<br></blockquote><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><span style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;">This =
irks me enormously. It is the direct outcome of the cambium</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">elevate lawsuit, where both companies lost, =
the ISPs lost, open source</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><span style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline =
!important;">practices long established about publishing sources, lost, =
and the</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;"><span style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;">lawyers went on to other =
nasty things leaving this trail of awful</span><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><span style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline =
!important;">precedents &nbsp;in their =
wake.</span></div></blockquote><blockquote type=3D"cite"><div><a =
href=3D"https://www.mtin.net/blog/ubnt-vs-cambium/" style=3D"font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: =
0px;">https://www.mtin.net/blog/ubnt-vs-cambium/</a><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: =
none;"></div></blockquote><div>Wow, hadn=E2=80=99t read about that. They =
even sued an ISP just for using Cambium=E2=80=99s software on their =
hardware?</div><div>That is crazy, just evil corporate lawyers doing =
their thing I guess.</div><br><blockquote type=3D"cite"><div><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">I do not know what to do about it. It also =
irks me that as a</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;"><span style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline =
!important;">contributor to "smart queues" they are not maintaining it =
well.</span><br></div></blockquote></div>It leaves something to be =
desired yes, and I would=E2=80=99ve hoped to see CAKE included too of =
course,<div>but even WireGuard is only available in the latest release =
candidates with the redesigned web UI, so I=E2=80=99m not holding my =
breath.</div><div><br></div><div>I still have an EdgeRouter 4 that =
serves the family farm and one of the 8-port switches under my desk, if =
only because I don=E2=80=99t wanna spend money on replacing them, and =
they do serve their purpose.</div><div><br></div><div>I=E2=80=99ve since =
moved though, and now live in an area that has FTTH, so I needed =
something beefier to handle CAKE on a 750/750 subscription, because =
obviously there=E2=80=99s still bloat even on that =
;)</div><div><br></div><div>One of those Chinese boxes with a N100 in it =
and OpenWrt on top works wonders :)</div><div><br></div><div><span =
style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);">Best =
Regards,</span><br style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, =
0);"><span style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, =
0);">Nils Andreas Svee</span></div></body></html>=

--Apple-Mail=_983BA1C3-810E-488C-AE59-973A3BB6A22C--

--===============4513128636982485830==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4513128636982485830==--

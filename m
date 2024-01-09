Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AADA18290CD
	for <lists+cake@lfdr.de>; Wed, 10 Jan 2024 00:28:51 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6F73C3CB52;
	Tue,  9 Jan 2024 18:28:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1704842930;
	bh=fgvihOpt40DFaPZRrlaEV4tfGc0MqC35LAKJd56gnrY=;
	h=Date:In-Reply-To:To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=QApKoM4s1LOKwaYH5QS1FSn8DfFccHBmVmd78dZOFuAA03ZIFmRWCGYQXM3NiX7z8
	 A6vAtUCyfTkCeoaDBMLodrv7OJhNxzYIgjzaZZAO95UTkRcrvEv7IUCAu+3vA5YV1b
	 7cREcC1Ww/ZSl+lWg5HVvf3QSWPR2pN/9u7Wb75bxV5d56o1AZLTOguGiTIG16tCso
	 0QK2VzB1CY9JKFQUrMJBfPuQVZ3o9QukeqN5u6WMsjwgIQHF3UAszsLOFzDrvQe+Uu
	 5XrUWXa1FOGm9P8hyoNG2JedAJqg3+z9eS39TtNFxDl0ZWqoeEkAEUg1X+oq/tw4RB
	 X1Y7NdoyhFHQg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2DDD43B2A4
 for <cake@lists.bufferbloat.net>; Tue,  9 Jan 2024 18:28:49 -0500 (EST)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id 0A5D43200B44;
 Tue,  9 Jan 2024 18:28:47 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Tue, 09 Jan 2024 18:28:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 cc:cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1704842927; x=1704929327; bh=Bkgp/q165u
 BneOtqeBGxZAcFoVQDHU/zo3CYSjzi3hA=; b=kOpelQsCDlgP/m7Dx1u8y9i1RP
 dZ29bZBVAtHuJvLTmYrDkEtsbcJ0GegV9jBYZOytlN/Hr1O4WnLlOZmF0uql4rYU
 0hGTxklmUDWHfZiWP762ur5rubrYtG6HRznqvKnkMAL0nzjgBz7LHA7Bi+MMILwd
 T6Bn8SPX6CZwNy69QVd1hCeALFrsT3czSpCj1CLFQUR8m4RjFeXmKO8IUeY6nQDa
 yy9/3JgSAzh670rfmsJVdUaQsfSupZeMI7v7oWP5+qzzJbsvdKIllbk4r48obJXb
 2Mid+aQ7k7zIGVc/VeIDDW8iePjaE3IXbPK8cBYbBwqgJezW6P6q+kHk1w3A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1704842927; x=1704929327; bh=Bkgp/q165uBneOtqeBGxZAcFoVQD
 HU/zo3CYSjzi3hA=; b=L95ZC3SYjowaqkL3GCccpyqZHcMDkcL9DX0p8HjWOHEX
 U/8QWZmOXPiWGmUiDD2FSOkz3P6ysLfum8Lzk7J5Ippv7OPJjXum2oIxeeoQCSN5
 54BiE06oIbn12sJoVloftjYXQsCcTSyV42XlJVwA/kHwksBrz5jzijWLPa84A5Vu
 Yn/8MusenU862+s0ibtFsim0wXWC6QvDBYY3v7f55J3NOA+T7MnyaRAKt7O06SUw
 G5tyGdYMGHGqQXzEioXkA2TxiSmFITl4aSREPgL9UOBXO2nrjes/KiSy+MH+m4eO
 +/ziJ2+ZtwG5zQ2SqYe/PR/vkXUB+r4mp/ALtLDRcg==
X-ME-Sender: <xms:r9adZfJRS6_k8kbNdHokPB4EQZOkemIiODFOudGXbyA2uLt0k5eA5w>
 <xme:r9adZTJsv_3vq_TseHlZMsjdWDMlSFJsyR-LdDnrRcGPqA4i3aTmVLYxqteqGjDjH
 FbdyaWasnTMtLq4lQ>
X-ME-Received: <xmr:r9adZXtVLheqC2Ov7gQEGAnXaYjKUeGOZs4lGqnjrWXYn9yT7ClsFJ96nLzQvcNIfholug>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdeitddgudduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffktgggufffjgevvfhfofesrgdtmherhhdtjeenucfhrhhomheppfhilhhs
 ucetnhgurhgvrghsucfuvhgvvgcuoehmvgeslhhotghhnhgrihhrrdhnvghtqeenucggtf
 frrghtthgvrhhnpefhjeefuefgjeelveevfffggfekjeeiudduueekheejffeffeetuedt
 ieehhfefueenucffohhmrghinhepohhpvghnfihrthdrohhrghdphihouhhtuhgsvgdrtg
 homhdpmhhtihhnrdhnvghtpdgsuhhffhgvrhgslhhorghtrdhnvghtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgvsehlohgthhhnrghirh
 drnhgvth
X-ME-Proxy: <xmx:r9adZYZTzjtN6p7pZ7qZf6H0zXDE6FD7Cqugv7mm1aZkAxGVSsIxdw>
 <xmx:r9adZWa4r0VNwOpxvpiHSVMH1QdnCDqkSKLSavpPnF_Sxa2HlvB2lw>
 <xmx:r9adZcDDa35ioSLXuLN_SiYUpfTgGs9xFIX2MmahnkVAyM9fO9NDsQ>
 <xmx:r9adZZwJLkNZJBCiE8bvArXLOq8RerPDpXTNxxJ_d3WUYUZafPrFsg>
Feedback-ID: id883430e:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 9 Jan 2024 18:28:46 -0500 (EST)
Message-Id: <7DF17B18-E351-4923-9225-3A71349BEE5B@lochnair.net>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
Date: Wed, 10 Jan 2024 00:28:35 +0100
In-Reply-To: <CAA93jw7XLuJgq_5VzPchRr+afS-Gxem5ZxVs8uggKUNkoD3x4g@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
References: <CANypexRYDqtsuj2vwX0qXWA=hXN3KZ5CJn5+vZRbm=Dikwh1Aw@mail.gmail.com>
 <deed5fd13e38d17c8b6716f4fdad64cba896385b.camel@heistp.net>
 <65325791-A1D1-4E21-9F1D-D17737BCFF0F@lochnair.net>
 <CAA93jw4K2sgRfXieAV_tfjBpRrK3kEke1QhMk2tp+PqLMh8w4Q@mail.gmail.com>
 <867A6BD3-28C6-467A-977C-932DFB6B8E08@lochnair.net>
 <CANypexRnG6zLn0iSiEg7ehCUZMRXWi4C03oBJDb+u9QtZB7DYA@mail.gmail.com>
 <CAA93jw7XLuJgq_5VzPchRr+afS-Gxem5ZxVs8uggKUNkoD3x4g@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============1159961555497213469=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============1159961555497213469==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_0E08E5CB-4497-4C23-A204-B961938579CD"


--Apple-Mail=_0E08E5CB-4497-4C23-A204-B961938579CD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Well my NIC has 4 queues as far as I can tell, so it could likely work, =
but as you say it=E2=80=99s like killing a mosquito with a gatling gun.

Those graphs are sweet though, and it=E2=80=99s been in my backlog for =
awhile to do something with Grafana to get something similar, like this =
one from a few years ago you=E2=80=99ve seen too: =
https://forum.openwrt.org/t/sqm-reporting/59960/96

Best Regards,
Nils Andreas Svee

> On Jan 9, 2024, at 18:17, Dave Taht <dave.taht@gmail.com> wrote:
>=20
> Principal limitation for libreqos on a small box is has to have
> multiple hardware queues and support eBPF.
>=20
> Seriously folks, running libreqos at home is *serious overkill*,
> although I have to admit the traffic graphs are mesmerizing!!! One of
> our ISPs has been setting them to music:
> https://www.youtube.com/@trendaltoews7143
>=20
> Herbert has been working on adding all sorts of other analytics to it =
also.
>=20
> On Tue, Jan 9, 2024 at 12:07=E2=80=AFPM dave seddon =
<dave.seddon.ca@gmail.com> wrote:
>>=20
>> Nils - I guess you could run LibreQoS on N100?
>>=20
>> On Tue, Jan 9, 2024 at 8:57=E2=80=AFAM Nils Andreas Svee via Cake =
<cake@lists.bufferbloat.net> wrote:
>>>=20
>>> On Jan 9, 2024, at 17:05, Dave Taht <dave.taht@gmail.com> wrote:
>>>=20
>>> On Tue, Jan 9, 2024 at 10:40=E2=80=AFAM Nils Andreas Svee via Cake
>>> <cake@lists.bufferbloat.net> wrote:
>>>=20
>>> Though frankly, I don=E2=80=99t plan on updating the sch_cake and tc =
binaries when new firmwares are released anymore, as they don=E2=80=99t =
publish the GPL archives on their webpage after the redesign, and they =
don=E2=80=99t respond to requests for them either by the looks of the =
forums. So if it breaks there=E2=80=99s not much I can do anymore.
>>>=20
>>>=20
>>> This irks me enormously. It is the direct outcome of the cambium
>>> elevate lawsuit, where both companies lost, the ISPs lost, open =
source
>>> practices long established about publishing sources, lost, and the
>>> lawyers went on to other nasty things leaving this trail of awful
>>> precedents  in their wake.
>>>=20
>>> https://www.mtin.net/blog/ubnt-vs-cambium/
>>>=20
>>> Wow, hadn=E2=80=99t read about that. They even sued an ISP just for =
using Cambium=E2=80=99s software on their hardware?
>>> That is crazy, just evil corporate lawyers doing their thing I =
guess.
>>>=20
>>> I do not know what to do about it. It also irks me that as a
>>> contributor to "smart queues" they are not maintaining it well.
>>>=20
>>> It leaves something to be desired yes, and I would=E2=80=99ve hoped =
to see CAKE included too of course,
>>> but even WireGuard is only available in the latest release =
candidates with the redesigned web UI, so I=E2=80=99m not holding my =
breath.
>>>=20
>>> I still have an EdgeRouter 4 that serves the family farm and one of =
the 8-port switches under my desk, if only because I don=E2=80=99t wanna =
spend money on replacing them, and they do serve their purpose.
>>>=20
>>> I=E2=80=99ve since moved though, and now live in an area that has =
FTTH, so I needed something beefier to handle CAKE on a 750/750 =
subscription, because obviously there=E2=80=99s still bloat even on that =
;)
>>>=20
>>> One of those Chinese boxes with a N100 in it and OpenWrt on top =
works wonders :)
>>>=20
>>> Best Regards,
>>> Nils Andreas Svee
>>> _______________________________________________
>>> Cake mailing list
>>> Cake@lists.bufferbloat.net
>>> https://lists.bufferbloat.net/listinfo/cake
>>=20
>>=20
>>=20
>> --
>> Regards,
>> Dave Seddon
>> +1 415 857 5102
>=20
>=20
>=20
> --=20
> 40 years of net history, a couple songs:
> https://www.youtube.com/watch?v=3DD9RGX6QFm5E
> Dave T=C3=A4ht CSO, LibreQos


--Apple-Mail=_0E08E5CB-4497-4C23-A204-B961938579CD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;"><div>Well my =
NIC has 4 queues as far as I can tell, so it could likely work, but as =
you say it=E2=80=99s like killing a mosquito with a gatling =
gun.</div><div><br></div><div>Those graphs are sweet though, and it=E2=80=99=
s been in my backlog for awhile to do something with Grafana to get =
something similar, like this one from a few years ago you=E2=80=99ve =
seen too:&nbsp;<a =
href=3D"https://forum.openwrt.org/t/sqm-reporting/59960/96">https://forum.=
openwrt.org/t/sqm-reporting/59960/96</a></div><br =
id=3D"lineBreakAtBeginningOfMessage"><div>
<div>Best Regards,<br>Nils Andreas Svee</div>

</div>

<div><br><blockquote type=3D"cite"><div>On Jan 9, 2024, at 18:17, Dave =
Taht &lt;dave.taht@gmail.com&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div><div>Principal limitation for =
libreqos on a small box is has to have<br>multiple hardware queues and =
support eBPF.<br><br>Seriously folks, running libreqos at home is =
*serious overkill*,<br>although I have to admit the traffic graphs are =
mesmerizing!!! One of<br>our ISPs has been setting them to =
music:<br>https://www.youtube.com/@trendaltoews7143<br><br>Herbert has =
been working on adding all sorts of other analytics to it =
also.<br><br>On Tue, Jan 9, 2024 at 12:07=E2=80=AFPM dave seddon =
&lt;dave.seddon.ca@gmail.com&gt; wrote:<br><blockquote =
type=3D"cite"><br>Nils - I guess you could run LibreQoS on =
N100?<br><br>On Tue, Jan 9, 2024 at 8:57=E2=80=AFAM Nils Andreas Svee =
via Cake &lt;cake@lists.bufferbloat.net&gt; wrote:<br><blockquote =
type=3D"cite"><br>On Jan 9, 2024, at 17:05, Dave Taht =
&lt;dave.taht@gmail.com&gt; wrote:<br><br>On Tue, Jan 9, 2024 at =
10:40=E2=80=AFAM Nils Andreas Svee via =
Cake<br>&lt;cake@lists.bufferbloat.net&gt; wrote:<br><br>Though frankly, =
I don=E2=80=99t plan on updating the sch_cake and tc binaries when new =
firmwares are released anymore, as they don=E2=80=99t publish the GPL =
archives on their webpage after the redesign, and they don=E2=80=99t =
respond to requests for them either by the looks of the forums. So if it =
breaks there=E2=80=99s not much I can do anymore.<br><br><br>This irks =
me enormously. It is the direct outcome of the cambium<br>elevate =
lawsuit, where both companies lost, the ISPs lost, open =
source<br>practices long established about publishing sources, lost, and =
the<br>lawyers went on to other nasty things leaving this trail of =
awful<br>precedents &nbsp;in their =
wake.<br><br>https://www.mtin.net/blog/ubnt-vs-cambium/<br><br>Wow, =
hadn=E2=80=99t read about that. They even sued an ISP just for using =
Cambium=E2=80=99s software on their hardware?<br>That is crazy, just =
evil corporate lawyers doing their thing I guess.<br><br>I do not know =
what to do about it. It also irks me that as a<br>contributor to "smart =
queues" they are not maintaining it well.<br><br>It leaves something to =
be desired yes, and I would=E2=80=99ve hoped to see CAKE included too of =
course,<br>but even WireGuard is only available in the latest release =
candidates with the redesigned web UI, so I=E2=80=99m not holding my =
breath.<br><br>I still have an EdgeRouter 4 that serves the family farm =
and one of the 8-port switches under my desk, if only because I don=E2=80=99=
t wanna spend money on replacing them, and they do serve their =
purpose.<br><br>I=E2=80=99ve since moved though, and now live in an area =
that has FTTH, so I needed something beefier to handle CAKE on a 750/750 =
subscription, because obviously there=E2=80=99s still bloat even on that =
;)<br><br>One of those Chinese boxes with a N100 in it and OpenWrt on =
top works wonders :)<br><br>Best Regards,<br>Nils Andreas =
Svee<br>_______________________________________________<br>Cake mailing =
list<br>Cake@lists.bufferbloat.net<br>https://lists.bufferbloat.net/listin=
fo/cake<br></blockquote><br><br><br>--<br>Regards,<br>Dave Seddon<br>+1 =
415 857 5102<br></blockquote><br><br><br>-- <br>40 years of net history, =
a couple songs:<br>https://www.youtube.com/watch?v=3DD9RGX6QFm5E<br>Dave =
T=C3=A4ht CSO, =
LibreQos<br></div></div></blockquote></div><br></body></html>=

--Apple-Mail=_0E08E5CB-4497-4C23-A204-B961938579CD--

--===============1159961555497213469==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1159961555497213469==--

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 122F68290BE
	for <lists+cake@lfdr.de>; Wed, 10 Jan 2024 00:17:35 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8ECAC3CB51;
	Tue,  9 Jan 2024 18:17:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1704842253;
	bh=LgcUlRfH6A7xHcVyhUVWQhVV87mLeYzXMS5TSI6ileY=;
	h=Date:In-Reply-To:To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=LnvadLdTfHZytPes59Xgh6RMVLL8JNgs+x9EcaiwbVagjoWalmMwWqqshkyQye2pj
	 TCLvoBmbu9yg+rQdv1AMKHwUO74XtkmysHUajfilI30p/jYzNOpgQ4rXfiThxkO/V1
	 7DQiVy/cK3I5pfTiec0w081BA6PdG9tKOxc6iNAAfNaRMC3T/xb9q7T3WntAXpvQ5j
	 NuogBQZbg0kFzNGR19tcqcSk0zfH6C4I5bhi4picxKJs9kzdgoi3Pv2Z1WOuras3yk
	 l02lzdWMrlI5LsKsifxLPVUQ7C9hFIhSG5+zwKYnxNPMKGcgMbpv0IfGFM2S5VxIvO
	 huNbO2tqvlcMQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 53A5A3B2A4
 for <cake@lists.bufferbloat.net>; Tue,  9 Jan 2024 18:17:32 -0500 (EST)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.west.internal (Postfix) with ESMTP id 043B33200A09;
 Tue,  9 Jan 2024 18:17:30 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Tue, 09 Jan 2024 18:17:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 cc:cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1704842250; x=1704928650; bh=RaG+tRHny7
 0sZx6DoR86bPzfZD4pUzKP0jLRcskIPSY=; b=P7yXbI2RR+s9cUC9viEcs1XHRg
 rCwYhhgufDR3sTuK/k5Iqjnce459BcMOC7f/k7anjzLRYTxlYZO7IXGiEndqVrBQ
 zPXf++cS2+UdiWVjyK6HehTC4eKiSHYsJch4mIDK8/MExToCB7h6DloEZgI8ouSl
 HVBxrdQypMj7z/dkiQG6seGOxDg2Ivonr1RRpognu0039XERD5SuviweKHnmDJmQ
 slgd7xDWscbVhcp4kVSDQcQVNa9vHItIsWI/8oXXdCrh2f0tkptS4KjVVbepSQzS
 DoYkkbOmffDnC9puezmZ8yrApzQUhkZNQuEhO8eUomk1xF/EjGwKp7cn0olA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1704842250; x=1704928650; bh=RaG+tRHny70sZx6DoR86bPzfZD4p
 UzKP0jLRcskIPSY=; b=FMr0NhHeJ9cZNzovRxtJqRisFkoH5yKkS8qfgzU81lnw
 kz5xGf6SpUADXZMLtb0kC6udyzUzrzO0Hr0EXonWSfDCBBl/8d7IVc1bhIgtx81Z
 23jjFRsGt+OeJb5CVfGHfGc6k+6bFzxIN6dOTxU6EzdDx9n99glsAmorSPzHWVXE
 ejb3pQfRKN0BJYdYF89sPIULY3i1fa8l5wn+5JWLUOLxvQYJqccAlv3f9gCFkN82
 GbmKlWECswS/Q8IKujriHeqewdQQzvLiT0EeAIZ/Pu3whsD97DTJClq8XrMgrSw3
 B3AKhlZEFltWgxsTRpfyI0Bu46Hgd4Ku55xFRE9V2A==
X-ME-Sender: <xms:CtSdZTjVIgAaBSA9ZfmoMFarpURLtA9qbBnFd41R98-mloLRxTg-cw>
 <xme:CtSdZQA1-8HPvRvwa5UgGQz238J6FIcMmJx3PjPTrCD9hANmFQhjZUUX1ArMi8PH5
 h4X78wPjAMQnLEHNQ>
X-ME-Received: <xmr:CtSdZTHp8xxwBmhu44ZweofWgCEg4Lz6IcGsnvK2LEIGXzHRNo5nL7CDVNtDIDFteV6xIg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdeitddgtdekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffktgggufffjgevvfhfofesrgdtmherhhdtjeenucfhrhhomheppfhilhhs
 ucetnhgurhgvrghsucfuvhgvvgcuoehmvgeslhhotghhnhgrihhrrdhnvghtqeenucggtf
 frrghtthgvrhhnpeetueelhfeileefjeefleevleekfeejjeefhfevffdtveeftefhvedu
 udegudegkeenucffohhmrghinhepmhhtihhnrdhnvghtpdgsuhhffhgvrhgslhhorghtrd
 hnvghtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhep
 mhgvsehlohgthhhnrghirhdrnhgvth
X-ME-Proxy: <xmx:CtSdZQS8azNu7U1YW0ln1aiNRlhDva2r7t3dFAjqexR3PFLh2fptVw>
 <xmx:CtSdZQxqvrdWO0tn20VLHYGdm81RGQwVzKj4lNI9MJ0pw9vy8HD9MA>
 <xmx:CtSdZW6LUPubThludeVnHdzPCDUEa0FREFxe0cyOapV10K9W99GggQ>
 <xmx:CtSdZdrDlE7DKirGLh4BTieiwwbfOcs8IAuWR4H8JHi0qCDfCWoSSQ>
Feedback-ID: id883430e:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 9 Jan 2024 18:17:29 -0500 (EST)
Message-Id: <9A37E764-ED81-4BC2-B351-AB6366090594@lochnair.net>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
Date: Wed, 10 Jan 2024 00:17:16 +0100
In-Reply-To: <CANypexRnG6zLn0iSiEg7ehCUZMRXWi4C03oBJDb+u9QtZB7DYA@mail.gmail.com>
To: dave seddon <dave.seddon.ca@gmail.com>
References: <CANypexRYDqtsuj2vwX0qXWA=hXN3KZ5CJn5+vZRbm=Dikwh1Aw@mail.gmail.com>
 <deed5fd13e38d17c8b6716f4fdad64cba896385b.camel@heistp.net>
 <65325791-A1D1-4E21-9F1D-D17737BCFF0F@lochnair.net>
 <CAA93jw4K2sgRfXieAV_tfjBpRrK3kEke1QhMk2tp+PqLMh8w4Q@mail.gmail.com>
 <867A6BD3-28C6-467A-977C-932DFB6B8E08@lochnair.net>
 <CANypexRnG6zLn0iSiEg7ehCUZMRXWi4C03oBJDb+u9QtZB7DYA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============2223522507327221176=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============2223522507327221176==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_FD8D78C1-CCF4-449A-9434-B80555CA4537"


--Apple-Mail=_FD8D78C1-CCF4-449A-9434-B80555CA4537
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I probably could, but it seems *a bit* more complex than I need more my =
little home network? ;)

Best Regards,
Nils Andreas Svee

> On Jan 9, 2024, at 18:07, dave seddon <dave.seddon.ca@gmail.com> =
wrote:
>=20
> Nils - I guess you could run LibreQoS on N100?
>=20
> On Tue, Jan 9, 2024 at 8:57=E2=80=AFAM Nils Andreas Svee via Cake =
<cake@lists.bufferbloat.net <mailto:cake@lists.bufferbloat.net>> wrote:
>>> On Jan 9, 2024, at 17:05, Dave Taht <dave.taht@gmail.com =
<mailto:dave.taht@gmail.com>> wrote:
>>>=20
>>> On Tue, Jan 9, 2024 at 10:40=E2=80=AFAM Nils Andreas Svee via Cake
>>> <cake@lists.bufferbloat.net <mailto:cake@lists.bufferbloat.net>> =
wrote:
>>>=20
>>>> Though frankly, I don=E2=80=99t plan on updating the sch_cake and =
tc binaries when new firmwares are released anymore, as they don=E2=80=99t=
 publish the GPL archives on their webpage after the redesign, and they =
don=E2=80=99t respond to requests for them either by the looks of the =
forums. So if it breaks there=E2=80=99s not much I can do anymore.
>>>=20
>>> This irks me enormously. It is the direct outcome of the cambium
>>> elevate lawsuit, where both companies lost, the ISPs lost, open =
source
>>> practices long established about publishing sources, lost, and the
>>> lawyers went on to other nasty things leaving this trail of awful
>>> precedents  in their wake.
>>> https://www.mtin.net/blog/ubnt-vs-cambium/
>> Wow, hadn=E2=80=99t read about that. They even sued an ISP just for =
using Cambium=E2=80=99s software on their hardware?
>> That is crazy, just evil corporate lawyers doing their thing I guess.
>>=20
>>> I do not know what to do about it. It also irks me that as a
>>> contributor to "smart queues" they are not maintaining it well.
>> It leaves something to be desired yes, and I would=E2=80=99ve hoped =
to see CAKE included too of course,
>> but even WireGuard is only available in the latest release candidates =
with the redesigned web UI, so I=E2=80=99m not holding my breath.
>>=20
>> I still have an EdgeRouter 4 that serves the family farm and one of =
the 8-port switches under my desk, if only because I don=E2=80=99t wanna =
spend money on replacing them, and they do serve their purpose.
>>=20
>> I=E2=80=99ve since moved though, and now live in an area that has =
FTTH, so I needed something beefier to handle CAKE on a 750/750 =
subscription, because obviously there=E2=80=99s still bloat even on that =
;)
>>=20
>> One of those Chinese boxes with a N100 in it and OpenWrt on top works =
wonders :)
>>=20
>> Best Regards,
>> Nils Andreas Svee
>> _______________________________________________
>> Cake mailing list
>> Cake@lists.bufferbloat.net <mailto:Cake@lists.bufferbloat.net>
>> https://lists.bufferbloat.net/listinfo/cake
>=20
>=20
> --
> Regards,
> Dave Seddon
> +1 415 857 5102


--Apple-Mail=_FD8D78C1-CCF4-449A-9434-B80555CA4537
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;"><div>I =
probably could, but it seems *a bit* more complex than I need more my =
little home network? ;)</div><br =
id=3D"lineBreakAtBeginningOfMessage"><div>
<div>Best Regards,<br>Nils Andreas Svee</div>

</div>

<div><br><blockquote type=3D"cite"><div>On Jan 9, 2024, at 18:07, dave =
seddon &lt;dave.seddon.ca@gmail.com&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div><div dir=3D"ltr">Nils - I guess =
you could run LibreQoS on N100?<br></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan =
9, 2024 at 8:57=E2=80=AFAM Nils Andreas Svee via Cake &lt;<a =
href=3D"mailto:cake@lists.bufferbloat.net">cake@lists.bufferbloat.net</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div><div><blockquote =
type=3D"cite"><div>On Jan 9, 2024, at 17:05, Dave Taht &lt;<a =
href=3D"mailto:dave.taht@gmail.com" =
target=3D"_blank">dave.taht@gmail.com</a>&gt; wrote:</div><br><div><span =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none;float:none;display:inline">On Tue, Jan 9, 2024 at =
10:40=E2=80=AFAM Nils Andreas Svee via Cake</span><br =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none"><span =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none;float:none;display:inline">&lt;</span><a =
href=3D"mailto:cake@lists.bufferbloat.net" =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px" =
target=3D"_blank">cake@lists.bufferbloat.net</a><span =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none;float:none;display:inline">&gt; wrote:</span><br =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none"><br =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none"><blockquote type=3D"cite" =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none">Though frankly, I don=E2=80=99t plan on updating the =
sch_cake and tc binaries when new firmwares are released anymore, as =
they don=E2=80=99t publish the GPL archives on their webpage after the =
redesign, and they don=E2=80=99t respond to requests for them either by =
the looks of the forums. So if it breaks there=E2=80=99s not much I can =
do anymore.<br></blockquote><br =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none"><span =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none;float:none;display:inline">This irks me enormously. It is =
the direct outcome of the cambium</span><br =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none"><span =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none;float:none;display:inline">elevate lawsuit, where both =
companies lost, the ISPs lost, open source</span><br =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none"><span =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none;float:none;display:inline">practices long established =
about publishing sources, lost, and the</span><br =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none"><span =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none;float:none;display:inline">lawyers went on to other nasty =
things leaving this trail of awful</span><br =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none"><span =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none;float:none;display:inline">precedents &nbsp;in their =
wake.</span></div></blockquote><blockquote type=3D"cite"><div><a =
href=3D"https://www.mtin.net/blog/ubnt-vs-cambium/" =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px" =
target=3D"_blank">https://www.mtin.net/blog/ubnt-vs-cambium/</a><br =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none"></div></blockquote><div>Wow, hadn=E2=80=99t read about =
that. They even sued an ISP just for using Cambium=E2=80=99s software on =
their hardware?</div><div>That is crazy, just evil corporate lawyers =
doing their thing I guess.</div><br><blockquote type=3D"cite"><div><span =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none;float:none;display:inline">I do not know what to do about =
it. It also irks me that as a</span><br =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none"><span =
style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration:none;float:none;display:inline">contributor to "smart queues" =
they are not maintaining it well.</span><br></div></blockquote></div>It =
leaves something to be desired yes, and I would=E2=80=99ve hoped to see =
CAKE included too of course,<div>but even WireGuard is only available in =
the latest release candidates with the redesigned web UI, so I=E2=80=99m =
not holding my breath.</div><div><br></div><div>I still have an =
EdgeRouter 4 that serves the family farm and one of the 8-port switches =
under my desk, if only because I don=E2=80=99t wanna spend money on =
replacing them, and they do serve their =
purpose.</div><div><br></div><div>I=E2=80=99ve since moved though, and =
now live in an area that has FTTH, so I needed something beefier to =
handle CAKE on a 750/750 subscription, because obviously there=E2=80=99s =
still bloat even on that ;)</div><div><br></div><div>One of those =
Chinese boxes with a N100 in it and OpenWrt on top works wonders =
:)</div><div><br></div><div><span style=3D"">Best Regards,</span><br =
style=3D""><span style=3D"">Nils Andreas =
Svee</span></div></div>_______________________________________________<br>=

Cake mailing list<br>
<a href=3D"mailto:Cake@lists.bufferbloat.net" =
target=3D"_blank">Cake@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
</blockquote></div><br clear=3D"all"><br><span =
class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" =
class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><div>Regards,<br></div>Dave Seddon<br>+1 415 857 =
5102<br></div></div></div></div></div></div>
</div></blockquote></div><br></body></html>=

--Apple-Mail=_FD8D78C1-CCF4-449A-9434-B80555CA4537--

--===============2223522507327221176==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2223522507327221176==--

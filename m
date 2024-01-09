Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 52ED7828928
	for <lists+cake@lfdr.de>; Tue,  9 Jan 2024 16:40:16 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5E8A13CB43;
	Tue,  9 Jan 2024 10:40:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1704814809;
	bh=3gx3Ei4UjID3Z8M+ktCRxV2fiEtXSwejT/OAGH/0nBU=;
	h=Date:In-Reply-To:To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=nWu/qt0lIzRGaDqvlA5JsP5dGE1d8fC/4Ix1kO8Lw6hrwL1mdgJF00PyTNK6RVlYt
	 oyD7FczhPRwbGEnH+D+RV14swL+ePUa+fMIANPe4VTYFQZqD6hOiPhxmgL6dVRobm2
	 J9qi7Jk1KiBSsE9t/Y3lniPtjdZUAJWVmOmJjef/khRr7Mbpm3O128hq1Mi4wjnwL4
	 p64zn34VEq05RiJH6Szm4a8FgGCfxg4fwvTI9F1rA8vwHxK/x8v2J0bWBeowq7QJYW
	 YWH1tiPykmsFXrlisGpp0Tmnw/+Ty1CYmRlGdoGl2qsWShd7BcSLkOKI+unsruINZn
	 tQ7POuekqsqvw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A451B3B2A4
 for <cake@lists.bufferbloat.net>; Tue,  9 Jan 2024 10:40:08 -0500 (EST)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 8F1C65C058D;
 Tue,  9 Jan 2024 10:40:08 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 09 Jan 2024 10:40:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 cc:cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1704814808; x=1704901208; bh=1rZgoBNrIb
 wv7U14lryJqOgsPTC+C9MGwMC7o80Phfw=; b=DRj+hRiqicqLyvBS/qu5Kxyjab
 xz9w6C+tiLkqIKbkhtPnM/qiaYbiZhNp376o+qkS8m9F/sO09a7es9//YQWKm0DH
 BERmqqDakyeFV/cooO3QXM/58CQeB1L47SMwfEmDcoyVkp3R5s8Gdz7j5yPjGNDT
 1/uDV9eh5nHOut/b06kGooVjV24Qh1XyhuDTdQ77ugIOc+rGoWoZ2kx5mm9awyx8
 VDJDXsqbjVn6TbXTOczRrT/PUuormkDiD8y80/gBOQ9fzsGulJxtr72wMgxDLWsc
 9Oy3PBOKzribos9RydNVUcBWOvTgYOtTxN6wnqn/U8ALndtmUEzFGSqbyw2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1704814808; x=1704901208; bh=1rZgoBNrIbwv7U14lryJqOgsPTC+
 C9MGwMC7o80Phfw=; b=Th2S26INLU1yiCtGzyqXz2vSmMQOtz2VKCTR+bn7TDF7
 MuTIVvsI7ZPooZ6Sy1r71+qsmUv0uBhm5a0nR1p720fDH61doJHV4oPeXe+rhfAX
 qDqqi5VcQq15r1wy8rw4kf4vTN9pTzuPkjipwIgFDTcvddIFBu/xwdSYCqryDd1k
 60tCBM+OzuCnyDlVGEDheeLUvHtzR/Ku402s64uwZ+7s+mv5SbE23O3dF8gBVBSp
 KjW36xFZyLZdemAoZYW4RaRKtg7PLn2jorXhG2sEkpb9oypq1ExHH0D4fq4MbNG6
 WVzi/FaY3CMHeL0NE4xIbfZ4K/33DM6JOPiD2U36Jw==
X-ME-Sender: <xms:2GidZZggNppm5bkWg4dKuWzajd-qN-EMKulkhkmVmS27U1MV1bZ5KQ>
 <xme:2GidZeCMam5HZN11HVFk9ou99yGuveIXp16WHsckA3l30vcuZZFAhS5q9zKujPITZ
 Loig0uIk0JMZQlNIg>
X-ME-Received: <xmr:2GidZZGTz9OtbuBBvxVPp-yWNJrC1u032aightS122XCJK3fPRFSVpQqXwd-HNVNjxqfMQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdehledgjeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffktgggufffjgevvfhfofesrgdtmherhhdtjeenucfhrhhomheppfhilhhs
 ucetnhgurhgvrghsucfuvhgvvgcuoehmvgeslhhotghhnhgrihhrrdhnvghtqeenucggtf
 frrghtthgvrhhnpedujefgvdfhveejueevueeifedvudekiedttdfhhfejhffgueeukeet
 tefgtddtudenucffohhmrghinhepuhhirdgtohhmpdgsuhhffhgvrhgslhhorghtrdhnvg
 htnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgv
 sehlohgthhhnrghirhdrnhgvth
X-ME-Proxy: <xmx:2GidZeSGhbr3Pz9Td4qMEKERGQWQfS6Iern0rDtKWXHUNsL2AcT1ig>
 <xmx:2GidZWwLf7Ac2Rh1RqtyZ7ka91zHcRLclL1nXmFTKWdW2p1iaDa8RA>
 <xmx:2GidZU6B0fqtUxQ_X8R9jHNuZtIhW-TVOXl1L0dNyD-Md5_qkdBCdw>
 <xmx:2GidZboKSTAMVjXTstRjIVgtXwRMp7A3qXWc_Uw_m76vAdOYDTYJIg>
Feedback-ID: id883430e:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 9 Jan 2024 10:40:07 -0500 (EST)
Message-Id: <65325791-A1D1-4E21-9F1D-D17737BCFF0F@lochnair.net>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
Date: Tue, 9 Jan 2024 16:39:55 +0100
In-Reply-To: <deed5fd13e38d17c8b6716f4fdad64cba896385b.camel@heistp.net>
To: Pete Heist <pete@heistp.net>
References: <CANypexRYDqtsuj2vwX0qXWA=hXN3KZ5CJn5+vZRbm=Dikwh1Aw@mail.gmail.com>
 <deed5fd13e38d17c8b6716f4fdad64cba896385b.camel@heistp.net>
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
Content-Type: multipart/mixed; boundary="===============7014686394190459409=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============7014686394190459409==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_56F9B135-64E1-4E24-9772-44C4739FFBAB"


--Apple-Mail=_56F9B135-64E1-4E24-9772-44C4739FFBAB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

You=E2=80=99re unlikely to do any real harm though, but the warning is =
there cause you can potentially soft brick your router using it. I=E2=80=99=
ve run into that myself if I remember correctly, where after a firmware =
upgrade the kernel had slightly changed, so loading the sch_cake module =
caused it to panic. And I had it start through =
/config/scripts/post-config.d of course, so it would happen on every =
restart.

Nothing a factory reset won=E2=80=99t solve, but annoying when if =
you=E2=80=99re messing about remotely :)

As for USG, I think I used to have some binaries for those too. I do =
still have some old kernel sources for them laying around in a repo.
It=E2=80=99s been awhile, but I probably stopped building for those as =
it wasn=E2=80=99t as straightforward to keep up with the versions of the =
firmware.

Though frankly, I don=E2=80=99t plan on updating the sch_cake and tc =
binaries when new firmwares are released anymore, as they don=E2=80=99t =
publish the GPL archives on their webpage after the redesign, and they =
don=E2=80=99t respond to requests for them either by the looks of the =
forums. So if it breaks there=E2=80=99s not much I can do anymore.

Best Regards,
Nils Andreas Svee

> On Jan 3, 2024, at 14:44, Pete Heist via Cake =
<cake@lists.bufferbloat.net> wrote:
>=20
> On Tue, 2024-01-02 at 10:59 -0800, dave seddon via Cake wrote:
>> I thought people might be interested to see what Ubiquity/Unifi is
>> doing with "Smart Queues" on their devices.  The documentation on
>> their website is not very informative.
>> <snip>
>> "Smart Queue" Implementation
>>=20
>> Looks like they only apply tc qdiscs to the Eth2, and sadly this is
>> NOT cake, but fq_codel.
>>=20
>> And cake isn't available :(
>>=20
>> root@USG-Pro-4:~# tc qdisc replace dev eth0 cake bandwidth 100m rtt
>> 20ms
>> Unknown qdisc "cake", hence option "bandwidth" is unparsable
>=20
> Hi Dave, there's a community contributed version of Cake for =
EdgeRouter
> devices that I've been using for years on production ER-X's:
>=20
> =
https://community.ui.com/questions/Cake-compiled-for-the-EdgeRouter-device=
s/fc1ff27c-f321-4344-8737-fcc755cae8a2
>=20
> I don't think that works for UniFi/USG devices, however, and one =
should
> note the disclaimer and be careful when installing it. Also, it must =
be
> re-installed after every upgrade.
>=20
> Cheers,
> Pete
>=20
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake


--Apple-Mail=_56F9B135-64E1-4E24-9772-44C4739FFBAB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;"><div>You=E2=80=99=
re unlikely to do any real harm though, but the warning is there cause =
you can potentially soft brick your router using it. I=E2=80=99ve run =
into that myself if I remember correctly, where after a firmware upgrade =
the kernel had slightly changed, so loading the sch_cake module caused =
it to panic. And I had it start through /config/scripts/post-config.d of =
course, so it would happen on every =
restart.</div><div><br></div><div>Nothing a factory reset won=E2=80=99t =
solve, but annoying when if you=E2=80=99re messing about remotely =
:)</div><div><br></div><div>As for USG, I think I used to have some =
binaries for those too. I do still have some old kernel sources for them =
laying around in a repo.</div><div>It=E2=80=99s been awhile, but I =
probably stopped building for those as it wasn=E2=80=99t as =
straightforward to keep up with the versions of the =
firmware.</div><div><br></div><div>Though frankly, I don=E2=80=99t plan =
on updating the sch_cake and tc binaries when new firmwares are released =
anymore, as they don=E2=80=99t publish the GPL archives on their webpage =
after the redesign, and they don=E2=80=99t respond to requests for them =
either by the looks of the forums. So if it breaks there=E2=80=99s not =
much I can do anymore.</div><br id=3D"lineBreakAtBeginningOfMessage"><div>=

<div>Best Regards,<br>Nils Andreas Svee</div>

</div>



<div><br><blockquote type=3D"cite"><div>On Jan 3, 2024, at 14:44, Pete =
Heist via Cake &lt;cake@lists.bufferbloat.net&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div><div>On Tue, 2024-01-02 at =
10:59 -0800, dave seddon via Cake wrote:<br><blockquote type=3D"cite">I =
thought people might be interested to see what Ubiquity/Unifi =
is<br>doing with "Smart Queues" on their devices.&nbsp; The =
documentation on<br>their website is not very =
informative.<br>&lt;snip&gt;<br>"Smart Queue" =
Implementation<br><br>Looks like they only apply tc qdiscs to the Eth2, =
and sadly this is<br>NOT cake, but fq_codel.<br><br>And cake isn't =
available :(<br><br>root@USG-Pro-4:~# tc qdisc replace dev eth0 cake =
bandwidth 100m rtt<br>20ms<br>Unknown qdisc "cake", hence option =
"bandwidth" is unparsable<br></blockquote><br>Hi Dave, there's a =
community contributed version of Cake for EdgeRouter<br>devices that =
I've been using for years on production =
ER-X's:<br><br>https://community.ui.com/questions/Cake-compiled-for-the-Ed=
geRouter-devices/fc1ff27c-f321-4344-8737-fcc755cae8a2<br><br>I don't =
think that works for UniFi/USG devices, however, and one should<br>note =
the disclaimer and be careful when installing it. Also, it must =
be<br>re-installed after every =
upgrade.<br><br>Cheers,<br>Pete<br><br>___________________________________=
____________<br>Cake mailing =
list<br>Cake@lists.bufferbloat.net<br>https://lists.bufferbloat.net/listin=
fo/cake<br></div></div></blockquote></div><br></body></html>=

--Apple-Mail=_56F9B135-64E1-4E24-9772-44C4739FFBAB--

--===============7014686394190459409==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7014686394190459409==--

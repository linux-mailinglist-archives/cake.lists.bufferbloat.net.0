Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BE079A79242
	for <lists+cake@lfdr.de>; Wed,  2 Apr 2025 17:36:20 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 57D173CB59;
	Wed,  2 Apr 2025 11:36:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1743608179;
	bh=SJIj/XjG376FFpqQaz717RoIIbQJdCogOOE13ewuq/E=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=PBzrHVeWBrTSpWFmsidIicYBM8/V8PM4i7BWEQ+iCah3zB0BoMqx0xdgjGErpqlPK
	 uA/YZiemVyb5LkSf+8ozzY4qiALOwZeeKdUefZ+fQJsTnjolGLWcxsE6WpJxFdQyaQ
	 0FwLwXEpGqX9QqersPndyBQjXI9pplMUuMH9FIjKnjCDMlT7UVVRO/35QLy5Ws9NjC
	 /wuo/5YGaK37DdNmMBetGoMkBKaU7EHCVavtUONpnyWFERYQWObaTCw2i5tRHIWMgC
	 kUoOOTYhPnJxPJ9j42zjMpRrySLdQ81WC4v63iYjqdvxh/mQbkSi2wASkUIU5yM3iG
	 B8cti3P7D8U6g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from fhigh-a4-smtp.messagingengine.com
 (fhigh-a4-smtp.messagingengine.com [103.168.172.155])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 324063B2A4;
 Wed,  2 Apr 2025 11:36:18 -0400 (EDT)
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfhigh.phl.internal (Postfix) with ESMTP id CDE821140205;
 Wed,  2 Apr 2025 11:36:17 -0400 (EDT)
Received: from phl-imap-08 ([10.202.2.84])
 by phl-compute-02.internal (MEProxy); Wed, 02 Apr 2025 11:36:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 cc:cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1743608177; x=1743694577; bh=+H0lDd3hmO
 8nmKbghkCv1TlRVqv9al6pLx7xowj7Yw0=; b=QhFHNW89p6BEBvTNhGdkcTGe2I
 sMgX8GoV/ZXGqmMcxFxvadxukq4uH7GZH1u8lKd7QKuMG+F8kuuR4cFIcXWvmgr1
 LXE7D8LNVQMX0pnV6iAgYJblayNOe7ka9a1RozJKgHe0cpyrWiYk9FYcpMTwqFo6
 ZiAhOezx9zgJZ1zsgFSjv3JIBDqRm2H7uhmrihZbB+vVpSr/lVDqMDAIq3fQY/6Q
 fZCqCWA4xbZdeqWC5SXcXaWylGwJeqnA5IC8yKhR+UpfexD51sYJ9htS0rF6g6Vr
 EAfmjvuYk9ZIeXFuLrvlg/aR7F3IofSVMoH5Uu133l4lP4CtWGxieNZE7+jQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1743608177; x=1743694577; bh=+H0lDd3hmO8nmKbghkCv1TlRVqv9al6pLx7
 xowj7Yw0=; b=fXrtZ3xPek2EuipKV35yM2bMji6MDMlbTEfAN+vI0UUqmQbQTqF
 6qhdt/38MgquoGMSmmKSlAjBKhC2Dp3t+iF5ZalwgUvsFe2K/YOrclfUL1gf/mqD
 R6JAM37wO/E53sSMQ82syV0RzhfxogT42vj0XMmwMepdHQHGC8J1KVbUy2LKj1IV
 UdkK/kAJyFXsr9R9X0wCrPYaCPXTtwXXBGdfokrFyEufV+/bvnF9uvwi3ldMNo3q
 O2egUtcLjf64D/GDV3qaueDb6GvXGQEtokklWtw3crJnjHz/4ia+h2rQU7vpF2Od
 h8JIb73WVV0kiIf3Ilftez4nvBw2J+2mqgQ==
X-ME-Sender: <xms:cVntZ4pDxtxAhCJGQGBM_y-ntUO0LJ2Arc_Fy4RFMHhOJk7_KRsnxw>
 <xme:cVntZ-rZRljyymOl6SWduWeIeG3BpniL_hkwUgsVbhR7T_xONGlvQK6_aupcFwyrf
 EoLxMAWkHFtAosQWw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddukeeitdefucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
 gvnhhtshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgesrgdtreerredt
 jeenucfhrhhomhepfdfpihhlshcutehnughrvggrshcuufhvvggvfdcuoehmvgeslhhotg
 hhnhgrihhrrdhnvghtqeenucggtffrrghtthgvrhhnpeeltedtieefkeffveeuleekveeu
 gfdtieffjeeggefhueehheektdfhhedvvdejueenucffohhmrghinheplhhisghrvghqoh
 hsrdhiohdpghhithhhuhgsrdgtohhmpdhlihhnkhgvughinhdrtghomhdpsghufhhfvghr
 sghlohgrthdrnhgvthenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehmvgeslhhotghhnhgrihhrrdhnvghtpdhnsggprhgtphhtthhopedujedp
 mhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepfhhrrghnthhishgvkhdrsghorhhsih
 hksehgmhgrihhlrdgtohhmpdhrtghpthhtohepfhhrrghnkheslhhisghrvghqohhsrdhi
 ohdprhgtphhtthhopehhfiholhhvvghrshhonheslhhisghrvghqohhsrdhiohdprhgtph
 htthhopehrohgsvghrtheslhhisghrvghqohhsrdhiohdprhgtphhtthhopegslhhorght
 qdhivghtfheslhhishhtshdrsghufhhfvghrsghlohgrthdrnhgvthdprhgtphhtthhope
 gslhhorghtsehlihhsthhsrdgsuhhffhgvrhgslhhorghtrdhnvghtpdhrtghpthhtohep
 tggrkhgvsehlihhsthhsrdgsuhhffhgvrhgslhhorghtrdhnvghtpdhrtghpthhtoheptg
 gvrhhofihrthdqtghomhhmihhtsheslhhishhtshdrsghufhhfvghrsghlohgrthdrnhgv
 thdprhgtphhtthhopegtvghrohifrhhtqdguvghvvghlsehlihhsthhsrdgsuhhffhgvrh
 gslhhorghtrdhnvght
X-ME-Proxy: <xmx:cVntZ9NcCwV8US9AX_tp1Xe5LRch6Fos5ICmgD0wKvNxTtL8zSNk-w>
 <xmx:cVntZ_6DoyyUaqbOb6-S5nTeOc7acGzlzRj1M9-Ra7L098V0nmPZSQ>
 <xmx:cVntZ34roRgRhsJUNdzB9o_7bTpA9RHDx_c4xhWu_I2gx1soOq8Bbw>
 <xmx:cVntZ_hUwSYERs2MyGTM244wxit6ao1SYO_KVl1ZS00T94jC8q0KzQ>
 <xmx:cVntZ9OpoF-4LGbv5OwMwUWxwz_HLl6xw17rJVmvU3UbE_qUYWBHO7u1>
Feedback-ID: i6a5b4305:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 796C218A006E; Wed,  2 Apr 2025 11:36:17 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: Tb946d7314fcf5f59
Date: Wed, 02 Apr 2025 22:35:57 +0700
To: "Frantisek Borsik" <frantisek.borsik@gmail.com>,
 libreqos <libreqos@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>,
 "Dave Taht" <starlink@lists.bufferbloat.net>,
 "Jeremy Austin via Rpm" <rpm@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net, "Cake List" <cake@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, cerowrt-commits@lists.bufferbloat.net,
 cerowrt-devel@lists.bufferbloat.net, cerowrt-users@lists.bufferbloat.net,
 codel-wireless@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 =?UTF-8?Q?Network_Neutrality_is_back!_Let=C2=B4s_make_the_technical_aspe?=
 =?UTF-8?Q?cts_heard_this_time!?= <nnagain@lists.bufferbloat.net>
Message-Id: <37ff4cd6-6ead-4bb2-a5c9-27103cda5964@app.fastmail.com>
In-Reply-To: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
Subject: Re: [Cake]
	=?utf-8?q?=5BBloat=5D_In_loving_memory_of_Dave_T=C3=A4ht_?=
	=?utf-8?q?=3C3?=
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
Cc: Herbert Wolverson <hwolverson@libreqos.io>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============4945844814992802732=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4945844814992802732==
Content-Type: multipart/alternative;
 boundary=44991433e548478d8d0e7629ca192308

--44991433e548478d8d0e7629ca192308
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Very sorry to learn of Dave's passing, it's a sad time for us all.

I wasn't lucky enough to know Dave very well, so it's been a privilege t=
o read everyone's stories about him, and I hope others who have some wil=
l share as well what he meant to them.

I wish those in contact with his family will let them know just how many=
 lives he's touched over the years, and how much we will all miss him.

Rest in peace Dave.

Kind Regards
Nils

On Wed, Apr 2, 2025, at 00:27, Frantisek Borsik via Bloat wrote:
> Hello to all,
>=20
> We=E2=80=99re devastated to announce that Dave T=C3=A4ht has passed aw=
ay. <https://libreqos.io/2025/04/01/in-loving-memory-of-dave/>
>=20
> Dave was an amazing man, helping the world with FQ-CoDel and CAKE, fig=
hting bufferbloat and trying to make the world a better place. Always wi=
lling to help, and without him =E2=80=93 LibreQoS (and the other QoE sol=
utions out there) wouldn=E2=80=99t exist.
>=20
> Dave was an inspiration, and we all miss him. We=E2=80=99re reaching o=
ut to family and close friends to see if there=E2=80=99s anything we can=
 do to help.
>=20
> Dave was an inspiration to us. Dave=E2=80=99s contributions to Linux, =
FQ-CoDel, and CAKE improved internet connectivity around the world for m=
illions of people. Because of him, millions of people now have access to=
 reliable video calls =E2=80=93 and in turn, access to loved ones, healt=
hcare, and community. One of Robert=E2=80=99s ISP customers is a kind pa=
raplegic woman who lives in a far-flung rural Colonia around El Paso, Te=
xas. Her reliable access to her doctors through telemedicine, and to her=
 family through FaceTime, was only made possible because of his algorith=
ms. There are millions of cases like hers, where Dave=E2=80=99s contribu=
tions have silently enabled human connection and safety. Everything Dave=
 contributed to the world of technology was free and open source, for th=
e betterment of humanity.
>=20
> Dave is the reason that Starlink was able to tackle its latency issues=
 =E2=80=93 enabling a generation of young entrepreneurs across the devel=
oping world, such as these young folks pictured in the Phillipines, to s=
tart their own ISPs to expand internet access to their communities. Dave=
 started work on FQ-CoDel in part because of his own journey working to =
expand internet access in Nicaragua, so we know he saw that his work had=
 come full-circle and helped so many.
>=20
> We=E2=80=99re incredibly grateful to have Dave as our friend, mentor, =
and as someone who continuously inspired us =E2=80=93 showing us that we=
 could do better for each other in the world, and leverage technology to=
 make that happen. He will be dearly missed.
>=20
> *PS: *Dave is forever in our hearts and souls, in our routers and...in=
 production!
> *https://github.com/LibreQoE/LibreQoS/pull/684*
>=20
> All the best,
>=20
> Frank____
> ____
> Frantisek (Frank) Borsik____
> __ __
> https://www.linkedin.com/in/frantisekborsik____
> Signal, Telegram, WhatsApp: +421919416714 ____
> iMessage, mobile: +420775230885____
> Skype: casioa5302ca____
> frantisek.borsik@gmail.com
> _______________________________________________
> Bloat mailing list
> Bloat@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/bloat
>=20

--44991433e548478d8d0e7629ca192308
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div>Very sorry to l=
earn of Dave's passing, it's a sad time for us all.<br></div><div><br></=
div><div>I wasn't lucky enough to know Dave very well, so it's been a pr=
ivilege to read everyone's stories about him, and I hope others who have=
 some will share as well what he meant to them.<br></div><div><br></div>=
<div>I wish those in contact with his family will let them know just how=
 many lives he's touched over the years, and how much we will all miss h=
im.<br></div><div><br></div><div>Rest in peace Dave.</div><div><br></div=
><div id=3D"sig44785538"><div class=3D"signature">Kind Regards<br></div>=
<div class=3D"signature">Nils<br></div></div><div><br></div><div>On Wed,=
 Apr 2, 2025, at 00:27, Frantisek Borsik via Bloat wrote:<br></div><bloc=
kquote type=3D"cite" id=3D"qt" style=3D""><div dir=3D"ltr"><div>Hello to=
 all,<br></div><div><br></div><div><div><a href=3D"https://libreqos.io/2=
025/04/01/in-loving-memory-of-dave/">We=E2=80=99re devastated to announc=
e that Dave T=C3=A4ht has passed away.</a><br></div><div><br></div><div>=
Dave was an amazing man, helping the world with FQ-CoDel and CAKE, fight=
ing bufferbloat and trying to make the world a better place. Always will=
ing to help, and without him =E2=80=93 LibreQoS (and the other QoE solut=
ions out there) wouldn=E2=80=99t exist.<br></div><div><br></div><div>Dav=
e was an inspiration, and we all miss him. We=E2=80=99re reaching out to=
 family and close friends to see if there=E2=80=99s anything we can do t=
o help.<br></div><div><br></div><div>Dave was an inspiration to us. Dave=
=E2=80=99s contributions to Linux, FQ-CoDel, and CAKE improved internet =
connectivity around the world for millions of people. Because of him, mi=
llions of people now have access to reliable video calls =E2=80=93 and i=
n turn, access to loved ones, healthcare, and community. One of Robert=E2=
=80=99s ISP customers is a kind paraplegic woman who lives in a far-flun=
g rural Colonia around El Paso, Texas. Her reliable access to her doctor=
s through telemedicine, and to her family through FaceTime, was only mad=
e possible because of his algorithms. There are millions of cases like h=
ers, where Dave=E2=80=99s contributions have silently enabled human conn=
ection and safety. Everything Dave contributed to the world of technolog=
y was free and open source, for the betterment of humanity.<br></div><di=
v><br></div><div>Dave is the reason that Starlink was able to tackle its=
 latency issues =E2=80=93 enabling a generation of young entrepreneurs a=
cross the developing world, such as these young folks pictured in the Ph=
illipines, to start their own ISPs to expand internet access to their co=
mmunities. Dave started work on FQ-CoDel in part because of his own jour=
ney working to expand internet access in Nicaragua, so we know he saw th=
at his work had come full-circle and helped so many.<br></div><div><br><=
/div><div>We=E2=80=99re incredibly grateful to have Dave as our friend, =
mentor, and as someone who continuously inspired us =E2=80=93 showing us=
 that we could do better for each other in the world, and leverage techn=
ology to make that happen. He will be dearly missed.<br></div></div><div=
><br></div><div><b>PS: </b>Dave is forever in our hearts and souls, in o=
ur routers and...in production!<br></div><div><b><a href=3D"https://gith=
ub.com/LibreQoE/LibreQoS/pull/684">https://github.com/LibreQoE/LibreQoS/=
pull/684</a></b><br></div><div><br></div><div><div dir=3D"ltr" class=3D"=
qt-gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"=
ltr"><div dir=3D"ltr"><div>All the best,<br></div><div><br></div><div><p=
 class=3D"qt-MsoNormal" style=3D"color:rgb(34, 34, 34);">Frank<u></u><u>=
</u><br></p><p class=3D"qt-MsoNormal" style=3D"color:rgb(34, 34, 34);"><=
u></u><u></u><br></p><p class=3D"qt-MsoNormal" style=3D"color:rgb(34, 34=
, 34);">Frantisek (Frank) Borsik<u></u><u></u><br></p><p class=3D"qt-Mso=
Normal" style=3D"color:rgb(34, 34, 34);"><u></u>&nbsp;<u></u><br></p><p =
class=3D"qt-MsoNormal" style=3D"color:rgb(34, 34, 34);"><a href=3D"https=
://www.linkedin.com/in/frantisekborsik" style=3D"color:rgb(17, 85, 204);=
" target=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a><u></=
u><u></u><br></p><p class=3D"qt-MsoNormal" style=3D"color:rgb(34, 34, 34=
);">Signal, Telegram, WhatsApp: +421919416714&nbsp;<u></u><u></u><br></p=
><p class=3D"qt-MsoNormal" style=3D"color:rgb(34, 34, 34);">iMessage, mo=
bile: +420775230885<u></u><u></u><br></p><p class=3D"qt-MsoNormal" style=
=3D"color:rgb(34, 34, 34);">Skype: casioa5302ca<u></u><u></u><br></p><p =
class=3D"qt-MsoNormal" style=3D"color:rgb(34, 34, 34);"><a href=3D"mailt=
o:frantisek.borsik@gmail.com" style=3D"color:rgb(17, 85, 204);" target=3D=
"_blank">frantisek.borsik@gmail.com</a><br></p></div></div></div></div><=
/div></div></div></div></div></div></div></div></div></div><div>________=
_______________________________________<br></div><div>Bloat mailing list=
<br></div><div><a href=3D"mailto:Bloat@lists.bufferbloat.net">Bloat@list=
s.bufferbloat.net</a><br></div><div><a href=3D"https://lists.bufferbloat=
.net/listinfo/bloat">https://lists.bufferbloat.net/listinfo/bloat</a><br=
></div><div><br></div></blockquote><div><br></div></body></html>
--44991433e548478d8d0e7629ca192308--

--===============4945844814992802732==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4945844814992802732==--

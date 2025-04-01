Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 037DCAD0083
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:41:16 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A3C433CC0E;
	Fri,  6 Jun 2025 06:40:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749206459;
	bh=JlxPk4VaLDPHKPfqm1ATbQ+Oyyreoj39/z7BUupzB8Q=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=XTq68vuet0jZICzTFHFlj+FCLX4BrHk92PpxVsftnbcIuIZjZX2245mabhZrEYvmG
	 qwqXlCJVgQJUK5ahVRtwIn59vgVhCzeHv+EMxoi+0x29v8IB6orOEQWK/++bki4IkN
	 qjzzeGl3YkkX+GEVTOvc64zCNjH93GF4Hr8CIPckb1XcnRei2dKU9JHqtX2R8QOGiY
	 YxX1fyNkrzXJZabVCaI4iXSUNEa9WujOVP9Y00uK6pnTlqDqjIrLJUdkwfXq3rtJlf
	 +ORt+yLJzm9qQvQQ12E4Z3zpfhwc7RxsYHpdv4ox7pK3HfJD/ZsvvHz7L2fFuaSLch
	 WbZa7q62u2PGQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from open.nlnet.nl (open.nlnet.nl [145.220.53.132])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 887DF3B29D;
 Tue,  1 Apr 2025 13:51:44 -0400 (EDT)
Date: Tue, 1 Apr 2025 19:51:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nlnet.nl; s=mail;
 t=1743529903; bh=1xZbyfBuMcFzMrXjaVKsEecj+EsfKY5zShxfc4BsHdU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=IF/GdYAwdYqtG21afy9FDXpRkxJJ7YBdkEihY7ExYkCrNWsDLhGbu+ZMFgxiaiyz+
 qk5T4ipQjEiXtg8/TJXmKe287ARgEZ1GCWRCY37tyzLXCDcn2VnMnKVXvHKmlgc6W7
 GhAvwsRm0C0uo7RRMclX/hEJm4bYmCvvA2hNf06g=
To: Vint Cerf via Starlink <starlink@lists.bufferbloat.net>
Message-ID: <hguemt2cyriv5jgtseatnjwq3k6ab2gc6kuxmkwv46l3cwqivx@6gijpas7f3vl>
Mail-Followup-To: Michiel Leenaars <michiel.ml@nlnet.nl>, 
 Vint Cerf via Starlink <starlink@lists.bufferbloat.net>,
 Frantisek Borsik <frantisek.borsik@gmail.com>, 
 codel-wireless@lists.bufferbloat.net,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>, 
 cerowrt-commits@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 libreqos <libreqos@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>, 
 "Frantisek (Frank) Borsik" <frank@libreqos.io>, nnagain@lists.bufferbloat.net,
 codel@lists.bufferbloat.net, 
 cerowrt-devel@lists.bufferbloat.net, bloat <bloat@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>, bloat-ietf@lists.bufferbloat.net, 
 cerowrt-users@lists.bufferbloat.net,
 Robert =?utf-8?Q?Chac=C3=B3n?= <robert@libreqos.io>
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <CAHxHggemafY9UP6Zm3oXVWWX5Wd+ffauot5MCN-6Gv-pOx3=Sg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHxHggemafY9UP6Zm3oXVWWX5Wd+ffauot5MCN-6Gv-pOx3=Sg@mail.gmail.com>
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
From: Michiel Leenaars via Cake <cake@lists.bufferbloat.net>
Reply-To: Michiel Leenaars <michiel.ml@nlnet.nl>
Cc: cerowrt-commits@lists.bufferbloat.net, bloat-ietf@lists.bufferbloat.net,
 Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 nnagain@lists.bufferbloat.net, codel-wireless@lists.bufferbloat.net,
 cerowrt-devel@lists.bufferbloat.net, bloat <bloat@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 cerowrt-users@lists.bufferbloat.net,
 Robert =?utf-8?Q?Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============4281204877950744863=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============4281204877950744863==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ooj5b75aakjxox6c"
Content-Disposition: inline


--ooj5b75aakjxox6c
Content-Type: text/plain; protected-headers=v1; charset=utf-8;
	format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Starlink] In loving memory of Dave =?utf-8?B?VMOkaHQ=?= <3
MIME-Version: 1.0

Hi all,

that is indeed shocking news. He was on the board of The Commons Conservanc=
y since its inception, and currently working on a grant from NLnet - so we =
were in very regular contact. And of course all over every mailinglist.

With his mother only having passed away a few months after much caretaking,=
 he was finding a new life. And now this, way too early.

You will be sorely missed, man.

Best,
Michiel

On Tue, Apr 01, 2025 at 01:31:08PM -0400, Vint Cerf via Starlink wrote:
>OMG - that is truly terrible news! I could not say better than Frank
>already has how much Dave's work has helped to improve our experience of
>the Internet. I can't think of anyone more dedicated to the proposition
>that performance counts and should be pursued with determination and
>vigor.  I've known Dave for many years and greatly valued his counsel and
>technical skills - to say nothing of his healthy sense of humor. I will
>miss him but will be always grateful to have known him.
>
>vint cerf
>
>
>On Tue, Apr 1, 2025 at 1:26=E2=80=AFPM Frantisek Borsik via Starlink <
>starlink@lists.bufferbloat.net> wrote:
>
>> Hello to all,
>>
>> We=E2=80=99re devastated to announce that Dave T=C3=A4ht has passed away.
>> <https://libreqos.io/2025/04/01/in-loving-memory-of-dave/>
>>
>> Dave was an amazing man, helping the world with FQ-CoDel and CAKE,
>> fighting bufferbloat and trying to make the world a better place. Always
>> willing to help, and without him =E2=80=93 LibreQoS (and the other QoE s=
olutions
>> out there) wouldn=E2=80=99t exist.
>>
>> Dave was an inspiration, and we all miss him. We=E2=80=99re reaching out=
 to family
>> and close friends to see if there=E2=80=99s anything we can do to help.
>>
>> Dave was an inspiration to us. Dave=E2=80=99s contributions to Linux, FQ=
-CoDel,
>> and CAKE improved internet connectivity around the world for millions of
>> people. Because of him, millions of people now have access to reliable
>> video calls =E2=80=93 and in turn, access to loved ones, healthcare, and=
 community.
>> One of Robert=E2=80=99s ISP customers is a kind paraplegic woman who liv=
es in a
>> far-flung rural Colonia around El Paso, Texas. Her reliable access to her
>> doctors through telemedicine, and to her family through FaceTime, was on=
ly
>> made possible because of his algorithms. There are millions of cases like
>> hers, where Dave=E2=80=99s contributions have silently enabled human con=
nection and
>> safety. Everything Dave contributed to the world of technology was free =
and
>> open source, for the betterment of humanity.
>>
>> Dave is the reason that Starlink was able to tackle its latency issues =
=E2=80=93
>> enabling a generation of young entrepreneurs across the developing world,
>> such as these young folks pictured in the Phillipines, to start their own
>> ISPs to expand internet access to their communities. Dave started work on
>> FQ-CoDel in part because of his own journey working to expand internet
>> access in Nicaragua, so we know he saw that his work had come full-circle
>> and helped so many.
>>
>> We=E2=80=99re incredibly grateful to have Dave as our friend, mentor, an=
d as
>> someone who continuously inspired us =E2=80=93 showing us that we could =
do better
>> for each other in the world, and leverage technology to make that happen.
>> He will be dearly missed.
>>
>> *PS: *Dave is forever in our hearts and souls, in our routers and...in
>> production!
>>
>> *https://github.com/LibreQoE/LibreQoS/pull/684
>> <https://github.com/LibreQoE/LibreQoS/pull/684>*
>>
>> All the best,
>>
>> Frank
>>
>> Frantisek (Frank) Borsik
>>
>>
>>
>> https://www.linkedin.com/in/frantisekborsik
>>
>> Signal, Telegram, WhatsApp: +421919416714 <+421%20919%20416%20714>
>>
>> iMessage, mobile: +420775230885 <+420%20775%20230%20885>
>>
>> Skype: casioa5302ca
>>
>> frantisek.borsik@gmail.com
>> _______________________________________________
>> Starlink mailing list
>> Starlink@lists.bufferbloat.net
>> https://lists.bufferbloat.net/listinfo/starlink
>>
>
>
>--=20
>Please send any postal/overnight deliveries to:
>Vint Cerf
>Google, LLC
>1900 Reston Metro Plaza, 16th Floor
>Reston, VA 20190
>+1 (571) 213 1346
>
>
>until further notice

>_______________________________________________
>Starlink mailing list
>Starlink@lists.bufferbloat.net
>https://lists.bufferbloat.net/listinfo/starlink


--=20
Support NLnet, the open internet and open source with just 5 minutes
of your time. Make a difference today.

Visit: http://nlnet.nl/help (English) - http://nlnet.nl/ayuda (Espanol)

- ---------------------

Do you know people that have ideas to improve the internet? Or maybe you ha=
ve such an idea yourself? Check out what we can do for you at https://nlnet=
=2Enl/propose and apply!

--ooj5b75aakjxox6c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRaBFRMPxh7KuVZuruUh34Y8OwDCgUCZ+wnogAKCRCUh34Y8OwD
CjqLAQDIoabM5jA1XnpRkpl/HQKySL0+SrNTAQi6KVtVKgjmDgEArOzA5AW/m4nh
2tmZwPnalJEcxNo3KchqZfG14UXQrQU=
=3Mhw
-----END PGP SIGNATURE-----

--ooj5b75aakjxox6c--

--===============4281204877950744863==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4281204877950744863==--

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7E5AD0088
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:41:22 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E191F3CB47;
	Fri,  6 Jun 2025 06:40:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749206459;
	bh=xRPDd/qavqv7GY9YoqxDvM7oueJBLEZPFNAdVrM3SLg=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=W5fwPS2SJMwy79pCOkVMneKcEtvQQ+35KYfbv0KLnygLM+k4Ux04Ia9HhWu+oBfGA
	 D59MviOo6iXp7s6H+985iz73bUe/5JWABd/1CYpZBzG8hrJ2krWRLE8aBgjAWZ9pLl
	 q/bsx1MCMnVb1wFhoPrFLFlOVRMlB+AvL/SuqSYta52RrsNNO4+pc0D+3j64OhK7WO
	 XV/0HN4kyqdBoV5la38AYRnPtwB5SjPBlNZi2SOcnskrCwIwgBWQjBn6h+Cl9jf22o
	 jj3RH3OkHCLid7wb0M6+2w6dA+Jm4R9CmLNoK84LomY2Z+AxTMTi3FssEq4OFYKd1d
	 lQdkCIb1Y6xGA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-vk1-xa34.google.com (mail-vk1-xa34.google.com
 [IPv6:2607:f8b0:4864:20::a34])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AE1283B29D
 for <cake@lists.bufferbloat.net>; Tue,  1 Apr 2025 16:38:08 -0400 (EDT)
Received: by mail-vk1-xa34.google.com with SMTP id
 71dfb90a1353d-5240b014f47so2633416e0c.1
 for <cake@lists.bufferbloat.net>; Tue, 01 Apr 2025 13:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1743539888; x=1744144688; darn=lists.bufferbloat.net;
 h=cc:date:from:references:in-reply-to:to:subject:message-id
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=7oWjIodIZNGf4ES7hg2c04wE8GT4MYGxMxAwi8kVb6k=;
 b=JWbllJBVlRFtIBQQzRTldtAfFJiAEqN6H2B2aadJ4houRY7KC1tGyiiZcK3SPCAbUG
 uBKhuMsIXQmWtmEkQaxvSt/nWVkHPopFkEZRGO3vZgqUgkZTRRmacgrgVium5NJmKJLC
 Nbx/roTFGWlVe505ZFLEI3STDhVOGp8osHV2m5AW5JWjX/DHN/LWXP5vn40t9bVCQe9u
 W1zrzdrlFjj1v7Q+r6/W5GU+P+1SoYvfJC/QV2abx22mYhbia+Zw9oH/ciSHAeMx/8ic
 hOkSKDoMNS/t7yTNK4zJiiWD9nPlVg0eK9x/wySzT0VLAF4mVYhfSf/c22eDCsTHUwyx
 6Kaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743539888; x=1744144688;
 h=cc:date:from:references:in-reply-to:to:subject:message-id
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7oWjIodIZNGf4ES7hg2c04wE8GT4MYGxMxAwi8kVb6k=;
 b=lf0t0RoN/Ij4d1MKxhS8WrPV6k1gltNeNDBzTtceTlbIp2WKebHY1OtZNCbnmtBCtD
 uuou1K6jnuxVT7ISjhsr+P73Snvq4TfLhuVmTzhI4zySxCSH3Oa48A4drpH4i4tgOGO0
 SdaID6GGE8e0HByFL9gx0fs9Bf5n5QZYBIgQ2EkB57Ulle/kjddnkl/yHp3INzrqaa6z
 uvkV58ZJdM/dp9405jP6mJab1v/cN/zVZ5Cp2DMY9dVJQ9RmiGhb0eg/WkjKPZE15b3d
 BcKYKe6S3nQ7vUDbeJG+3ACXf37+Q2UXAs0sQK/cHeD3R7eWeIxIj1Hi0+EuvNR795V/
 w2lw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV19x9ZBDXN4xq54usc9HU/kzX4wp13DOsq7TLyINMXVVM5wXlfWw30MROn79PngBIfml5w@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwhDb4ZTFB3UKKXByb3ycgHqsMmi3oh6BzWY5EoXznc7BCW+fs3
 7PpPWIhCMpEJp2wqmX7f6CHZJNa+f4etAF0yxQxfwpjtgyOHanLNX0/j2Q==
X-Gm-Gg: ASbGncvjjEg6y5lJH+yUwV3B++u9jtkcOyUOuJkPAEAq4dc4Y6rLD+/TyTArgx+wrSY
 fCL9SOqbLsnwPT2NzylsNQudfi2vMgM/t2eRmHf3veb5fdHhaVwZ1z6T+3nsmVwq5d3e0fDaE8t
 zLi64ua+4Mk9sfLie1VyG9LrVOudGV80HlhQWcexzDxcXeA0twvPiLcMAUUVzOT7T6CUmpKqi0a
 h1M/HStkUZVNd+VMcV4+2KqGhaXtujE3dRCI9eZqr8qT0uYAWnbckINFkENsZqzlrZp3kib4bSd
 LcGu0cn1q4oH4HzGL5UNUzE4K/3ILOvp07fc38dEFZD3KkCTUVtXXMSX0Z+DZMTc+zfrhfTGmsC
 8RyxOSQ==
X-Google-Smtp-Source: AGHT+IFe9ruYgJvqEorbBVsXVeeIynJrLAWUB9jLY9MO2Z911ht+9EkD3XeukHsJJIfsT3/GnvqZfQ==
X-Received: by 2002:a05:6102:2ad5:b0:4c4:dead:59a3 with SMTP id
 ada2fe7eead31-4c6d3837dfdmr11662575137.2.1743539887764; 
 Tue, 01 Apr 2025 13:38:07 -0700 (PDT)
Received: from localhost (0.92.231.35.bc.googleusercontent.com. [35.231.92.0])
 by smtp.gmail.com with UTF8SMTPSA id
 a1e0cc1a2514c-871a3247c40sm2081564241.11.2025.04.01.13.38.07
 for <cake@lists.bufferbloat.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Apr 2025 13:38:07 -0700 (PDT)
Mime-Version: 1.0
Message-ID: <m8yyfz8d.76c07723-2e73-4a9a-8ca5-66524c76b2f0@we.are.superhuman.com>
To: =?UTF-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
X-Mailer: Superhuman Web (2025-03-25T19:09:41.376Z)
X-Superhuman-Draft-ID: draft00a0b75934a52852
In-Reply-To: <87v7rnmxlx.fsf@toke.dk>
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <87v7rnmxlx.fsf@toke.dk>
Date: Tue, 01 Apr 2025 20:38:04 +0000
X-Superhuman-ID: m8yym8x8.ef577616-e696-4a02-b3b9-f7f92d14f7db
X-Mailman-Approved-At: Fri, 06 Jun 2025 06:40:58 -0400
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
From: Sina Khanifar via Cake <cake@lists.bufferbloat.net>
Reply-To: Sina Khanifar <sina.khanifar@gmail.com>
Cc: codel-wireless@lists.bufferbloat.net,
 Jeremy Austin <rpm@lists.bufferbloat.net>,
 cerowrt-commits@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Dave Taht <starlink@lists.bufferbloat.net>, Herbert
 Wolverson <hwolverson@libreqos.io>, Frantisek <frank@libreqos.io>,
 =?UTF-8?q?Network_Neutrality_is_back!_Let=C2=B4s_make_the_technical_aspec?=
 =?UTF-8?q?ts_heard_this_time!?= <nnagain@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, cerowrt-devel@lists.bufferbloat.net,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net, cerowrt-users@lists.bufferbloat.net,
 =?UTF-8?q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============7618969015353089375=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7618969015353089375==
Content-Type: multipart/alternative;
 boundary=0fc099dfb35a49de6f3670ca810d538099cd87c4d0df21de852c1e3fa572

--0fc099dfb35a49de6f3670ca810d538099cd87c4d0df21de852c1e3fa572
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Oh gosh.=C2=A0What a huge loss. Dave was a very special kind of person.

I feel sad sad=C2=A0but also grateful=C2=A0that humanity occasionally produ=
ces people like=C2=A0Dave (and many of you on this list) who push so hard t=
o make the world and the Internet better.

Rest in peace, and thank you, Dave.

On Tue, Apr 01, 2025 at 1:32 PM, Toke H=C3=B8iland-J=C3=B8rgensen < bloat@l=
ists.bufferbloat.net > wrote:

>=20
>=20
>=20
> Absolutely devastating news. He will be missed! It was an honour to know
> him and work with him; he was a kind and generous person who selflessly
> dedicated his time to making the internet a better place for us all.
>=20
>=20
>=20
>=20
> Wrote a bit of a longer farewell note here:
> https:/ / blog. tohojo. dk/ 2025/ 04/ remembering-dave-t%C3%A4ht. html (
> https://blog.tohojo.dk/2025/04/remembering-dave-t%C3%A4ht.html )
>=20
>=20
>=20
> -Toke
>=20
>=20
>=20
>=20
> Frantisek Borsik via Bloat < bloat@ lists. bufferbloat. net (
> bloat@lists.bufferbloat.net ) > writes:
>=20
>=20
>=20
>>=20
>>=20
>> Hello to all,
>>=20
>>=20
>>=20
>>=20
>> We=E2=80=99re devastated to announce that Dave T=C3=A4ht has passed away=
.
>> < https:/ / libreqos. io/ 2025/ 04/ 01/ in-loving-memory-of-dave/ (
>> https://libreqos.io/2025/04/01/in-loving-memory-of-dave/ ) >
>>=20
>>=20
>>=20
>> Dave was an amazing man, helping the world with FQ-CoDel and CAKE,
>> fighting bufferbloat and trying to make the world a better place. Always
>> willing to help, and without him =E2=80=93 LibreQoS (and the other QoE s=
olutions
>> out there) wouldn=E2=80=99t exist.
>>=20
>>=20
>>=20
>>=20
>> Dave was an inspiration, and we all miss him. We=E2=80=99re reaching out=
 to family
>> and close friends to see if there=E2=80=99s anything we can do to help.
>>=20
>>=20
>>=20
>>=20
>> Dave was an inspiration to us. Dave=E2=80=99s contributions to Linux, FQ=
-CoDel,
>> and CAKE improved internet connectivity around the world for millions of
>> people. Because of him, millions of people now have access to reliable
>> video calls =E2=80=93 and in turn, access to loved ones, healthcare, and
>> community. One of Robert=E2=80=99s ISP customers is a kind paraplegic wo=
man who
>> lives in a far-flung rural Colonia around El Paso, Texas. Her reliable
>> access to her doctors through telemedicine, and to her family through
>> FaceTime, was only made possible because of his algorithms. There are
>> millions of cases like hers, where Dave=E2=80=99s contributions have sil=
ently
>> enabled human connection and safety. Everything Dave contributed to the
>> world of technology was free and open source, for the betterment of
>> humanity.
>>=20
>>=20
>>=20
>>=20
>> Dave is the reason that Starlink was able to tackle its latency issues =
=E2=80=93
>> enabling a generation of young entrepreneurs across the developing world=
,
>> such as these young folks pictured in the Phillipines, to start their ow=
n
>> ISPs to expand internet access to their communities. Dave started work o=
n
>> FQ-CoDel in part because of his own journey working to expand internet
>> access in Nicaragua, so we know he saw that his work had come full-circl=
e
>> and helped so many.
>>=20
>>=20
>>=20
>>=20
>> We=E2=80=99re incredibly grateful to have Dave as our friend, mentor, an=
d as
>> someone who continuously inspired us =E2=80=93 showing us that we could =
do better
>> for each other in the world, and leverage technology to make that happen=
.
>> He will be dearly missed.
>>=20
>>=20
>>=20
>>=20
>> *PS: *Dave is forever in our hearts and souls, in our routers and...in
>> production!
>>=20
>>=20
>>=20
>>=20
>> *https:// github. com/ LibreQoE/ LibreQoS/ pull/ 684 (
>> http://github.com/LibreQoE/LibreQoS/pull/684 )
>> < https:/ / github. com/ LibreQoE/ LibreQoS/ pull/ 684 (
>> https://github.com/LibreQoE/LibreQoS/pull/684 ) >*
>>=20
>>=20
>>=20
>> All the best,
>>=20
>>=20
>>=20
>>=20
>> Frank
>>=20
>>=20
>>=20
>>=20
>> Frantisek (Frank) Borsik
>>=20
>>=20
>>=20
>>=20
>> https:/ / www. linkedin. com/ in/ frantisekborsik (
>> https://www.linkedin.com/in/frantisekborsik )
>>=20
>>=20
>>=20
>>=20
>> Signal, Telegram, WhatsApp: +421919416714
>>=20
>>=20
>>=20
>>=20
>> iMessage, mobile: +420775230885
>>=20
>>=20
>>=20
>>=20
>> Skype: casioa5302ca
>>=20
>>=20
>>=20
>>=20
>> frantisek. borsik@ gmail. com ( frantisek.borsik@gmail.com )
>> _______________________________________________
>> Bloat mailing list
>> Bloat@ lists. bufferbloat. net ( Bloat@lists.bufferbloat.net )
>> https:/ / lists. bufferbloat. net/ listinfo/ bloat (
>> https://lists.bufferbloat.net/listinfo/bloat )
>>=20
>>=20
>=20
>=20
>=20
> _______________________________________________
> Bloat mailing list
> Bloat@ lists. bufferbloat. net ( Bloat@lists.bufferbloat.net )
> https:/ / lists. bufferbloat. net/ listinfo/ bloat (
> https://lists.bufferbloat.net/listinfo/bloat )
>=20
>=20
>
--0fc099dfb35a49de6f3670ca810d538099cd87c4d0df21de852c1e3fa572
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div><div><div class=3D""><div class=3D""><div cla=
ss=3D""><div class=3D"">Oh gosh.=C2=A0What a huge loss. Dave was a very spe=
cial kind of person.<br/></div><div class=3D""><br/></div><div class=3D"">I=
 feel sad sad=C2=A0but also grateful=C2=A0that humanity occasionally produc=
es people like=C2=A0Dave (and many of you on this list) who push so hard to=
 make the world and the Internet better. <br/></div></div><div class=3D"sh-=
signature"><div class=3D"gmail_signature"><br/></div><div class=3D"gmail_si=
gnature">Rest in peace, and thank you, Dave.<br/></div></div></div><br/><di=
v class=3D"sh-quoted-content"><div class=3D""><div class=3D"gmail_quote">On=
 Tue, Apr 01, 2025 at 1:32 PM, Toke H=C3=B8iland-J=C3=B8rgensen <span dir=
=3D"ltr" class=3D"">&lt;<a href=3D"mailto:bloat@lists.bufferbloat.net" targ=
et=3D"_blank" class=3D"">bloat@lists.bufferbloat.net</a>&gt;</span> wrote:<=
br/><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_extra"><div class=3D=
"gmail_quote"><p class=3D"">Absolutely devastating news. He will be missed!=
 It was an honour to know
him and work with him; he was a kind and generous person who selflessly
dedicated his time to making the internet a better place for us all.
<br/></p><p class=3D"">
Wrote a bit of a longer farewell note here:
<br/>
<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"https://blog.tohoj=
o.dk/2025/04/remembering-dave-t%C3%A4ht.html" class=3D"">https:/<wbr/>/<wbr=
/>blog.<wbr/>tohojo.<wbr/>dk/<wbr/>2025/<wbr/>04/<wbr/>remembering-dave-t%C=
3%A4ht.<wbr/>html</a>
</p><p class=3D"">
-Toke
<br/></p><p class=3D"">
Frantisek Borsik via Bloat &lt;<a target=3D"_blank" rel=3D"noopener norefer=
rer" href=3D"mailto:bloat@lists.bufferbloat.net" class=3D"">bloat@<wbr/>lis=
ts.<wbr/>bufferbloat.<wbr/>net</a>&gt; writes:
<br/></p><blockquote class=3D""><p class=3D"">
Hello to all,
<br/></p><p class=3D"">
We=E2=80=99re devastated to announce that Dave T=C3=A4ht has passed away.
<br/>
&lt;<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"https://libreq=
os.io/2025/04/01/in-loving-memory-of-dave/" class=3D"">https:/<wbr/>/<wbr/>=
libreqos.<wbr/>io/<wbr/>2025/<wbr/>04/<wbr/>01/<wbr/>in-loving-memory-of-da=
ve/<wbr/></a>&gt;
</p><p class=3D"">
Dave was an amazing man, helping the world with FQ-CoDel and CAKE, fighting
bufferbloat and trying to make the world a better place. Always willing to
help, and without him =E2=80=93 LibreQoS (and the other QoE solutions out t=
here)
wouldn=E2=80=99t exist.
<br/></p><p class=3D"">
Dave was an inspiration, and we all miss him. We=E2=80=99re reaching out to=
 family
and close friends to see if there=E2=80=99s anything we can do to help.
<br/></p><p class=3D"">
Dave was an inspiration to us. Dave=E2=80=99s contributions to Linux, FQ-Co=
Del, and
CAKE improved internet connectivity around the world for millions of
people. Because of him, millions of people now have access to reliable
video calls =E2=80=93 and in turn, access to loved ones, healthcare, and co=
mmunity.
One of Robert=E2=80=99s ISP customers is a kind paraplegic woman who lives =
in a
far-flung rural Colonia around El Paso, Texas. Her reliable access to her
doctors through telemedicine, and to her family through FaceTime, was only
made possible because of his algorithms. There are millions of cases like
hers, where Dave=E2=80=99s contributions have silently enabled human connec=
tion and
safety. Everything Dave contributed to the world of technology was free and
open source, for the betterment of humanity.
<br/></p><p class=3D"">
Dave is the reason that Starlink was able to tackle its latency issues =E2=
=80=93
enabling a generation of young entrepreneurs across the developing world,
such as these young folks pictured in the Phillipines, to start their own
ISPs to expand internet access to their communities. Dave started work on
FQ-CoDel in part because of his own journey working to expand internet
access in Nicaragua, so we know he saw that his work had come full-circle
and helped so many.
<br/></p><p class=3D"">
We=E2=80=99re incredibly grateful to have Dave as our friend, mentor, and a=
s
someone who continuously inspired us =E2=80=93 showing us that we could do =
better
for each other in the world, and leverage technology to make that happen.
He will be dearly missed.
<br/></p><p class=3D"">
*PS: *Dave is forever in our hearts and souls, in our routers and...in
production!
<br/></p><p class=3D"">
*https://<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"http://gi=
thub.com/LibreQoE/LibreQoS/pull/684" class=3D"">github.<wbr/>com/<wbr/>Libr=
eQoE/<wbr/>LibreQoS/<wbr/>pull/<wbr/>684</a>
<br/>
&lt;<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"https://github=
.com/LibreQoE/LibreQoS/pull/684" class=3D"">https:/<wbr/>/<wbr/>github.<wbr=
/>com/<wbr/>LibreQoE/<wbr/>LibreQoS/<wbr/>pull/<wbr/>684</a>&gt;*
</p><p class=3D"">
All the best,
<br/></p><p class=3D"">
Frank
<br/></p><p class=3D"">
Frantisek (Frank) Borsik
<br/></p><p class=3D"">
<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"https://www.linked=
in.com/in/frantisekborsik" class=3D"">https:/<wbr/>/<wbr/>www.<wbr/>linkedi=
n.<wbr/>com/<wbr/>in/<wbr/>frantisekborsik</a>
<br/></p><p class=3D"">
Signal, Telegram, WhatsApp: +421919416714
<br/></p><p class=3D"">
iMessage, mobile: +420775230885
<br/></p><p class=3D"">
Skype: casioa5302ca
<br/></p><p class=3D"">
<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"mailto:frantisek.b=
orsik@gmail.com" class=3D"">frantisek.<wbr/>borsik@<wbr/>gmail.<wbr/>com</a=
>
<br/>
_______________________________________________
<br/>
Bloat mailing list
<br/>
<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"mailto:Bloat@lists=
.bufferbloat.net" class=3D"">Bloat@<wbr/>lists.<wbr/>bufferbloat.<wbr/>net<=
/a>
<br/>
<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"https://lists.buff=
erbloat.net/listinfo/bloat" class=3D"">https:/<wbr/>/<wbr/>lists.<wbr/>buff=
erbloat.<wbr/>net/<wbr/>listinfo/<wbr/>bloat</a>
</p></blockquote><p class=3D"">
_______________________________________________
<br/>
Bloat mailing list
<br/>
<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"mailto:Bloat@lists=
.bufferbloat.net" class=3D"">Bloat@<wbr/>lists.<wbr/>bufferbloat.<wbr/>net<=
/a>
<br/>
<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"https://lists.buff=
erbloat.net/listinfo/bloat" class=3D"">https:/<wbr/>/<wbr/>lists.<wbr/>buff=
erbloat.<wbr/>net/<wbr/>listinfo/<wbr/>bloat</a></p></div></div></blockquot=
e></div></div></div></div><div><br/></div></div><div><div style=3D"display:=
 none; border: 0px; width: 0px; height: 0px; overflow: hidden; visibility: =
hidden;"><img src=3D"https://r.superhuman.com/GEyMLr9Q5uAS4-P33b18WOZplxw3A=
pukULYqvDO7eL-suGByaw2hV1NdycVEgzfYbmQbIfngBHlpeCgs7dCkcv-bkex7xwhXIx0D305I=
TVuaMZfrMooHqzmY40xwI2wNkItYg0kXzhu1uMpaNDDikOCR48-a49PUIvLwFol1ai9Nf7o5G1p=
EH7MqkpmykA.gif" alt=3D" " width=3D"1" height=3D"0" style=3D"display: none;=
 border: 0px; width: 0px; height: 0px; overflow: hidden; visibility: hidden=
;"/><!--                                                                   =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                          --></div></div></=
div></body></html>
--0fc099dfb35a49de6f3670ca810d538099cd87c4d0df21de852c1e3fa572--

--===============7618969015353089375==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7618969015353089375==--

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AD2AD008D
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:41:29 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2D5EB3D57C;
	Fri,  6 Jun 2025 06:41:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749206460;
	bh=cYtuAydXzbD6hzoiGO7e9vKkDmORXFvO4upHP0QIBP4=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=XBVFP+gBRlhFeE+cpfTdAsrKQFlruXFcAPuEwpCvmslIMnMdz202nSmh1JoXG8iGN
	 Zyi+E4URg9K8tBxB4kJzdbukL6oB/WF/DBvb8J6gOAP6Gy4Uvl45YLD2T3kFXzY1AQ
	 s8fRiqVBC1uPlvpxOHOfsUc8znrs+lg1xguK/0gM9Lu1OOzFqWuc02/i11jLhZdKws
	 JzankctkFCcEb8Jlu+I3MMtmVY/F3zMJlEJ1e2+khfHFyBmwfdFjFG8Il6OsCIjc+y
	 Tf7O+Vd+psPWByj+elbvzyO5YT8m3b419AzkvmeMoPXzvh4J2BjBNKLry1XTwit8QI
	 hr89xygUiuBXw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-vk1-xa2a.google.com (mail-vk1-xa2a.google.com
 [IPv6:2607:f8b0:4864:20::a2a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 93FBC3B29D;
 Wed,  2 Apr 2025 00:20:16 -0400 (EDT)
Received: by mail-vk1-xa2a.google.com with SMTP id
 71dfb90a1353d-51eb18130f9so3274895e0c.3; 
 Tue, 01 Apr 2025 21:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1743567616; x=1744172416; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Yr61fI0jddrkhb8Afcj8hrKmFyOokCa689dp6wgW2Bs=;
 b=jgRt3XtC3wMbvOKkQNJOV3EUZrnUnsL4E0OJ93lejaxVP/pBqy8R10s/+AuJo+nOn3
 PJAXlxk01dBC2Yitjk09HCD0Sj41sm1aQXgNty7wKHRSJPHtdv5Q3oav3eqGwOTbsjJr
 1AJEqe70LfIGJnfWFSKHdaH61ltryl8EP++XMdwCdXrRFsEvCetDHWSxXTT7oHGCuBfB
 U5tinzcZr1pLHYpPdRzADOO4GzsMyLThTFED1utqDW+XiLmO/yzoZ1nuc0mBW+lmHkj7
 rKfCyPRUfMKu9suE/xPV7P4BxH9UnXZOA0mrGIo8y/Hddor8QSGJr+mXoEzK4OsWSrh4
 N4eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743567616; x=1744172416;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Yr61fI0jddrkhb8Afcj8hrKmFyOokCa689dp6wgW2Bs=;
 b=bNOhKOV7cIziPT5DWHETdgEn0JSbSWm6vxSYiVJDC4qdzwrWGc9U2s4rTTn4Xy6wdb
 GUUKNCleLNsyWypsvf6MvrV0Fi8bq4Zx/GqUCGUPE14JdGovNT2+bOL7Yd73tMeQoqS5
 RTYHGZKifKw/J7JN/WflSV2tY2uqclpQAjp0gEvcDNPkwZb+WY2xX0DrxwmC5BYvo9fR
 lIBpWTyUaHP1jTibLZu2QcMfgD96i1KCgQ/9cUYAceRcTpRZUgTF6sI0+yMTf0iIbHTB
 c6Krmlt90tS3gQMIFeFSJaOpuXgplgCNUpNPC9HymI1vvLzrEgyirhp2q1mUMhuHT5Np
 bi6A==
X-Forwarded-Encrypted: i=1;
 AJvYcCUOIvW1rWSis0596bc/xzFJwjD+YD4bxi0CpBpPHP01nT97E+AezG3l5ORJJW1r06bHN2mxvgjcEGYw@lists.bufferbloat.net,
 AJvYcCUTCclPxLsSuIArLIKgrOuZSpyy9NqQIMB5xCOqrNuDAzZDU1ePunLvgdH73qDhaiBq5Gdj9DA=@lists.bufferbloat.net,
 AJvYcCUYjdg6KOXrqB1tfIUDsHMjaQz77mvVfiwHUvwIZ9GJO/2EIbp1piDzG/s+4guBWCbZaawQy3wRF9w=@lists.bufferbloat.net,
 AJvYcCUd2okPPzhE54XC19kBAVvZ+alwx/04l3c05X6Bi5tt+Nz/0i9+ymZveMxo8DiXgB9r71CdiwVGKz/uVcUocTlq@lists.bufferbloat.net,
 AJvYcCUoBbOjTXJV9qvjA7iL7pp3kLIqGZNAyXZiHjtY29hj4U14Emnm3L4xEW3PUptLCBZuFrZunnk6g7c=@lists.bufferbloat.net,
 AJvYcCVJTYAO6/RowhMQ7UcddFVyGs/GCBRq6SlV8u6l6SyE0+QRwsH1z+5xSbZrugMXrrQ6zinpYK9HtrNvHIwEtA==@lists.bufferbloat.net,
 AJvYcCVR1mOIMudZc+P9S381ZmtmsWIi9WxVorvtREH0UBurNQN45rAqDmUUCYXDnlpLFqgkF0S2@lists.bufferbloat.net,
 AJvYcCVoQP8N4Bs1NCeIDKQxEvDJb+Oct/EjJD+FnWErvjuL/S3KomnWZchZSPYQJTe1xY8ijf72013rp7pgWLjhEQ==@lists.bufferbloat.net,
 AJvYcCWe2l1n9FiJuOuUT4P5B1GY6VIlYo05CHZe8PBqlqSVbCG4MYzTB2uzrpzNjH2NS2PQZheXFcPQk5VBRrWM4d8=@lists.bufferbloat.net,
 AJvYcCWh8Um58/TXzjzkLqUqjEeK9JjbArqmvsxCSrgoz4jWs6p3xoTc6letIhQcjX7wmHAaQ2CfKkA=@lists.bufferbloat.net,
 AJvYcCWpS8536pshgYKMrUqst0LZN2FHtOXX4KKV1mwXR8oX2FmTj5BJM4y+DNt31IXeznRUkC6j67fedw==@lists.bufferbloat.net,
 AJvYcCX0o69wCoczn30/YDK3u4kL1pdzgP4vSHqla3ADLiulRLA+rz8gwZWM8oHDDXPDOMcEun30yw==@lists.bufferbloat.net,
 AJvYcCXqZEZerJlj9+sB2425uVdGVoGAvd79jxxk6pyQ7a+MSj3KDa30AQA16FMT9WtqLXDUhHe9aapOfpJ/Z/RNSrU=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwUvvImMt+TA4/JBvgQuLVDoE3GI8eOMyugy/snuHTiTNUL7YnT
 76P7b67Hb50j2j3ILo6H4ezeJaa2WmyYNhgMarj8h5NS9fSMZNSTe+HkVFcx0V1vTxCDfe6T+vj
 FcvLT8+byE3C6gCYnln6wR+KRmp4=
X-Gm-Gg: ASbGncsDLNvxdu4XZJUdmy1+t+7gO9jNCoVcuArcN0KKACK7tvLtWO/UnWz+YHBWVDr
 pN0tBms5hf8qwwOb9QfqLLv0IAjB9vY45KF6RBXpiESZaTBxqvGAO1dRm7ad1bPuwDQ9Mzd60RZ
 yCHBigYTNhSGmK1w8qzPrmV7YEQeqyp2uArjRwy3V1rvzJKVOdmxX2lY0kOZMz
X-Google-Smtp-Source: AGHT+IHg+MhYsbNDMeCwNnjvIpEIXASqlC73WRkvV6tjXO2/epw7W3GGJLPpT3vLlupSM3MfXVLdptoiQqgsWzYuB3U=
X-Received: by 2002:a05:6122:2a52:b0:520:3e1c:500f with SMTP id
 71dfb90a1353d-52642409a97mr4417522e0c.8.1743567615797; Tue, 01 Apr 2025
 21:20:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <014po62q-r99p-71np-52r1-n84n9np63nqr@ynat.uz>
 <11F96AF6-E164-420F-9B16-3A3F46AF183E@gmail.com>
In-Reply-To: <11F96AF6-E164-420F-9B16-3A3F46AF183E@gmail.com>
Date: Tue, 1 Apr 2025 21:19:38 -0700
X-Gm-Features: AQ5f1JoRGKKSdH48rw4ST4TnTUtiutqo7MkVKgeAld2l8sEKrRaBUD-56gjN07k
Message-ID: <CAP2nwOOmOMKtYB2DyctG-Z1amWy1e-AKAjx4DKxCTKqmbYezFw@mail.gmail.com>
To: Spencer Sevilla <spencer.builds.networks@gmail.com>
X-Mailman-Approved-At: Fri, 06 Jun 2025 06:40:58 -0400
Subject: Re: [Cake]
	=?utf-8?q?=5BStarlink=5D_=5BBloat=5D_In_loving_memory_of_D?=
	=?utf-8?b?YXZlIFTDpGh0IDwz?=
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
From: Omer Shapira via Cake <cake@lists.bufferbloat.net>
Reply-To: Omer Shapira <omer.shapira@gmail.com>
Cc: cerowrt-users@lists.bufferbloat.net,
 Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
 cerowrt-commits@lists.bufferbloat.net, Rpm <rpm@lists.bufferbloat.net>,
 =?UTF-8?Q?Network_Neutrality_is_back=21_Let=C2=B4s_make_the_technical_aspect?=
 =?UTF-8?Q?s_heard_this_time=21?= <nnagain@lists.bufferbloat.net>,
 codel-wireless@lists.bufferbloat.net, cerowrt-devel@lists.bufferbloat.net,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============3902956015003918199=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3902956015003918199==
Content-Type: multipart/alternative; boundary="00000000000061b1e00631c3f83f"

--00000000000061b1e00631c3f83f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

So sad to hear that Dave passed away.

I worked with him briefly when he was consulting with us, and he was a
tremendous help when I was setting up the IAB workshop on network quality.

Dave managed to be kind and stubborn at the same time. Like many people, I
learned a lot, and yet not enough from him.

Omer.

P.S. I still hope to wake up tomorrow and to learn that this was an April
Fools joke.

On Tue, Apr 1, 2025 at 7:12=E2=80=AFPM Spencer Sevilla via Starlink <
starlink@lists.bufferbloat.net> wrote:

> I didn=E2=80=99t get a chance to know Dave personally, but sincerely appr=
eciated
> his insight and technical efforts, as well as the way he just seemed to p=
ut
> out joy in so many forms. I have said multiple times that these listservs
> have some of the highest quality networking discussion out there, and I
> think this is in no small part a testament to Dave=E2=80=99s ability to b=
ring
> people together and get them talking.
>
> I would certainly be willing to help support or volunteer effort to keep
> these listservs running.
>
> On Apr 1, 2025, at 18:21, David Lang via Starlink <
> starlink@lists.bufferbloat.net> wrote:
>
> He will be missed.
>
> As a practical question, what is going to happen to all of these lists,
> etc that he has been hosting?
>
> David Lang
>
> On Tue, 1 Apr 2025, Frantisek Borsik via Bloat wrote:
>
> Date: Tue, 1 Apr 2025 19:27:36 +0200
> From: Frantisek Borsik via Bloat <bloat@lists.bufferbloat.net>
> Reply-To: Frantisek Borsik <frantisek.borsik@gmail.com>
> To: libreqos <libreqos@lists.bufferbloat.net>,
>    bloat <bloat@lists.bufferbloat.net>,
>    Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
>    Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
>    bloat-ietf@lists.bufferbloat.net, Cake List <cake@lists.bufferbloat.ne=
t
> >,
>    codel@lists.bufferbloat.net, cerowrt-commits@lists.bufferbloat.net,
>    cerowrt-devel@lists.bufferbloat.net,
> cerowrt-users@lists.bufferbloat.net,
>    codel-wireless@lists.bufferbloat.net,
>    Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
>    Network Neutrality is back! Let=C2=B4s make the technical aspects hear=
d this
>    time! <nnagain@lists.bufferbloat.net>
> Cc: Herbert Wolverson <hwolverson@libreqos.io>,
>    "Frantisek (Frank) Borsik" <frank@libreqos.io>,
>    Robert Chac=C3=B3n <robert@libreqos.io>
> Subject: [Bloat] In loving memory of Dave T=C3=A4ht <3
> Hello to all,
>
> We=E2=80=99re devastated to announce that Dave T=C3=A4ht has passed away.
> <https://libreqos.io/2025/04/01/in-loving-memory-of-dave/>
>
> Dave was an amazing man, helping the world with FQ-CoDel and CAKE, fighti=
ng
> bufferbloat and trying to make the world a better place. Always willing t=
o
> help, and without him =E2=80=93 LibreQoS (and the other QoE solutions out=
 there)
> wouldn=E2=80=99t exist.
>
> Dave was an inspiration, and we all miss him. We=E2=80=99re reaching out =
to family
> and close friends to see if there=E2=80=99s anything we can do to help.
>
> Dave was an inspiration to us. Dave=E2=80=99s contributions to Linux, FQ-=
CoDel, and
> CAKE improved internet connectivity around the world for millions of
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
>
> _______________________________________________
> Bloat mailing list
> Bloat@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/bloat
> _______________________________________________
> Starlink mailing list
> Starlink@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/starlink
>
>
> _______________________________________________
> Starlink mailing list
> Starlink@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/starlink
>


--=20
Sincerely Yours,
 Omer Shapira

--00000000000061b1e00631c3f83f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">So sad to hear that Dave passed away.<div><br></div><div>I=
 worked with him briefly when he was consulting with us, and he was a treme=
ndous help when I was setting up the IAB workshop on network quality.=C2=A0=
<div><br></div><div>Dave managed to be kind and stubborn at the same time. =
Like many people, I learned a lot, and yet not enough from him.</div><div><=
br></div><div>Omer.</div><div><br></div><div>P.S. I still hope to wake up t=
omorrow and to learn that this was an April Fools joke.</div></div></div><b=
r><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Apr 1, 2025 at 7:12=E2=80=AFPM Spencer Sevilla via =
Starlink &lt;<a href=3D"mailto:starlink@lists.bufferbloat.net">starlink@lis=
ts.bufferbloat.net</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style=
:solid;border-left-color:rgb(204,204,204);padding-left:1ex"><div style=3D"l=
ine-break:after-white-space">I didn=E2=80=99t get a chance to know Dave per=
sonally, but sincerely appreciated his insight and technical efforts, as we=
ll as the way he just seemed to put out joy in so many forms. I have said m=
ultiple times that these listservs have some of the highest quality network=
ing discussion out there, and I think this is in no small part a testament =
to Dave=E2=80=99s ability to bring people together and get them talking.<di=
v><br></div><div>I would certainly be willing to help support or volunteer =
effort to keep these listservs running.<br id=3D"m_-1464233066777920902line=
BreakAtBeginningOfMessage"><div><br><blockquote type=3D"cite"><div>On Apr 1=
, 2025, at 18:21, David Lang via Starlink &lt;<a href=3D"mailto:starlink@li=
sts.bufferbloat.net" target=3D"_blank">starlink@lists.bufferbloat.net</a>&g=
t; wrote:</div><br><div><span style=3D"font-family:Helvetica;font-size:12px=
;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;text-decoration:none;float:none;display:inline">He wil=
l be missed.</span><br style=3D"font-family:Helvetica;font-size:12px;font-s=
tyle:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;white-space:normal;wor=
d-spacing:0px;text-decoration:none"><br style=3D"font-family:Helvetica;font=
-size:12px;font-style:normal;font-variant-caps:normal;font-weight:400;lette=
r-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white=
-space:normal;word-spacing:0px;text-decoration:none"><span style=3D"font-fa=
mily:Helvetica;font-size:12px;font-style:normal;font-variant-caps:normal;fo=
nt-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;white-space:normal;word-spacing:0px;text-decoration:none;floa=
t:none;display:inline">As a practical question, what is going to happen to =
all of these lists, etc that he has been hosting?</span><br style=3D"font-f=
amily:Helvetica;font-size:12px;font-style:normal;font-variant-caps:normal;f=
ont-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;white-space:normal;word-spacing:0px;text-decoration:none"><b=
r style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-vari=
ant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-de=
coration:none"><span style=3D"font-family:Helvetica;font-size:12px;font-sty=
le:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;text-decoration:none;float:none;display:inline">David Lang</spa=
n><br style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-=
variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;tex=
t-decoration:none"><br style=3D"font-family:Helvetica;font-size:12px;font-s=
tyle:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;white-space:normal;wor=
d-spacing:0px;text-decoration:none"><span style=3D"font-family:Helvetica;fo=
nt-size:12px;font-style:normal;font-variant-caps:normal;font-weight:400;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whi=
te-space:normal;word-spacing:0px;text-decoration:none;float:none;display:in=
line">On Tue, 1 Apr 2025, Frantisek Borsik via Bloat wrote:</span><br style=
=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-variant-cap=
s:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoratio=
n:none"><br style=3D"font-family:Helvetica;font-size:12px;font-style:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;text-decoration:none"><blockquote type=3D"cite" style=3D"font-family:Hel=
vetica;font-size:12px;font-style:normal;font-variant-caps:normal;font-weigh=
t:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform=
:none;white-space:normal;word-spacing:0px;text-decoration:none">Date: Tue, =
1 Apr 2025 19:27:36 +0200<br>From: Frantisek Borsik via Bloat &lt;<a href=
=3D"mailto:bloat@lists.bufferbloat.net" target=3D"_blank">bloat@lists.buffe=
rbloat.net</a>&gt;<br>Reply-To: Frantisek Borsik &lt;<a href=3D"mailto:fran=
tisek.borsik@gmail.com" target=3D"_blank">frantisek.borsik@gmail.com</a>&gt=
;<br>To: libreqos &lt;<a href=3D"mailto:libreqos@lists.bufferbloat.net" tar=
get=3D"_blank">libreqos@lists.bufferbloat.net</a>&gt;,<br>=C2=A0=C2=A0=C2=
=A0bloat &lt;<a href=3D"mailto:bloat@lists.bufferbloat.net" target=3D"_blan=
k">bloat@lists.bufferbloat.net</a>&gt;,<br>=C2=A0=C2=A0=C2=A0Dave Taht via =
Starlink &lt;<a href=3D"mailto:starlink@lists.bufferbloat.net" target=3D"_b=
lank">starlink@lists.bufferbloat.net</a>&gt;,<br>=C2=A0=C2=A0=C2=A0Jeremy A=
ustin via Rpm &lt;<a href=3D"mailto:rpm@lists.bufferbloat.net" target=3D"_b=
lank">rpm@lists.bufferbloat.net</a>&gt;,<br>=C2=A0=C2=A0=C2=A0<a href=3D"ma=
ilto:bloat-ietf@lists.bufferbloat.net" target=3D"_blank">bloat-ietf@lists.b=
ufferbloat.net</a>, Cake List &lt;<a href=3D"mailto:cake@lists.bufferbloat.=
net" target=3D"_blank">cake@lists.bufferbloat.net</a>&gt;,<br>=C2=A0=C2=A0=
=C2=A0<a href=3D"mailto:codel@lists.bufferbloat.net" target=3D"_blank">code=
l@lists.bufferbloat.net</a>,<span>=C2=A0</span><a href=3D"mailto:cerowrt-co=
mmits@lists.bufferbloat.net" target=3D"_blank">cerowrt-commits@lists.buffer=
bloat.net</a>,<br>=C2=A0=C2=A0=C2=A0<a href=3D"mailto:cerowrt-devel@lists.b=
ufferbloat.net" target=3D"_blank">cerowrt-devel@lists.bufferbloat.net</a>,<=
span>=C2=A0</span><a href=3D"mailto:cerowrt-users@lists.bufferbloat.net" ta=
rget=3D"_blank">cerowrt-users@lists.bufferbloat.net</a>,<br>=C2=A0=C2=A0=C2=
=A0<a href=3D"mailto:codel-wireless@lists.bufferbloat.net" target=3D"_blank=
">codel-wireless@lists.bufferbloat.net</a>,<br>=C2=A0=C2=A0=C2=A0Make-Wifi-=
fast &lt;<a href=3D"mailto:make-wifi-fast@lists.bufferbloat.net" target=3D"=
_blank">make-wifi-fast@lists.bufferbloat.net</a>&gt;,<br>=C2=A0=C2=A0=C2=A0=
Network Neutrality is back! Let=C2=B4s make the technical aspects heard thi=
s<br>=C2=A0=C2=A0=C2=A0time! &lt;<a href=3D"mailto:nnagain@lists.bufferbloa=
t.net" target=3D"_blank">nnagain@lists.bufferbloat.net</a>&gt;<br>Cc: Herbe=
rt Wolverson &lt;<a href=3D"mailto:hwolverson@libreqos.io" target=3D"_blank=
">hwolverson@libreqos.io</a>&gt;,<br>=C2=A0=C2=A0=C2=A0&quot;Frantisek (Fra=
nk) Borsik&quot; &lt;<a href=3D"mailto:frank@libreqos.io" target=3D"_blank"=
>frank@libreqos.io</a>&gt;,<br>=C2=A0=C2=A0=C2=A0Robert Chac=C3=B3n &lt;<a =
href=3D"mailto:robert@libreqos.io" target=3D"_blank">robert@libreqos.io</a>=
&gt;<br>Subject: [Bloat] In loving memory of Dave T=C3=A4ht &lt;3<br>Hello =
to all,<br><br>We=E2=80=99re devastated to announce that Dave T=C3=A4ht has=
 passed away.<br>&lt;<a href=3D"https://libreqos.io/2025/04/01/in-loving-me=
mory-of-dave/" target=3D"_blank">https://libreqos.io/2025/04/01/in-loving-m=
emory-of-dave/</a>&gt;<br><br>Dave was an amazing man, helping the world wi=
th FQ-CoDel and CAKE, fighting<br>bufferbloat and trying to make the world =
a better place. Always willing to<br>help, and without him =E2=80=93 LibreQ=
oS (and the other QoE solutions out there)<br>wouldn=E2=80=99t exist.<br><b=
r>Dave was an inspiration, and we all miss him. We=E2=80=99re reaching out =
to family<br>and close friends to see if there=E2=80=99s anything we can do=
 to help.<br><br>Dave was an inspiration to us. Dave=E2=80=99s contribution=
s to Linux, FQ-CoDel, and<br>CAKE improved internet connectivity around the=
 world for millions of<br>people. Because of him, millions of people now ha=
ve access to reliable<br>video calls =E2=80=93 and in turn, access to loved=
 ones, healthcare, and community.<br>One of Robert=E2=80=99s ISP customers =
is a kind paraplegic woman who lives in a<br>far-flung rural Colonia around=
 El Paso, Texas. Her reliable access to her<br>doctors through telemedicine=
, and to her family through FaceTime, was only<br>made possible because of =
his algorithms. There are millions of cases like<br>hers, where Dave=E2=80=
=99s contributions have silently enabled human connection and<br>safety. Ev=
erything Dave contributed to the world of technology was free and<br>open s=
ource, for the betterment of humanity.<br><br>Dave is the reason that Starl=
ink was able to tackle its latency issues =E2=80=93<br>enabling a generatio=
n of young entrepreneurs across the developing world,<br>such as these youn=
g folks pictured in the Phillipines, to start their own<br>ISPs to expand i=
nternet access to their communities. Dave started work on<br>FQ-CoDel in pa=
rt because of his own journey working to expand internet<br>access in Nicar=
agua, so we know he saw that his work had come full-circle<br>and helped so=
 many.<br><br>We=E2=80=99re incredibly grateful to have Dave as our friend,=
 mentor, and as<br>someone who continuously inspired us =E2=80=93 showing u=
s that we could do better<br>for each other in the world, and leverage tech=
nology to make that happen.<br>He will be dearly missed.<br><br>*PS: *Dave =
is forever in our hearts and souls, in our routers and...in<br>production!<=
br><br>*<a href=3D"https://github.com/LibreQoE/LibreQoS/pull/684" target=3D=
"_blank">https://github.com/LibreQoE/LibreQoS/pull/684</a><br>&lt;<a href=
=3D"https://github.com/LibreQoE/LibreQoS/pull/684" target=3D"_blank">https:=
//github.com/LibreQoE/LibreQoS/pull/684</a>&gt;*<br><br>All the best,<br><b=
r>Frank<br><br>Frantisek (Frank) Borsik<br><br><br><br><a href=3D"https://w=
ww.linkedin.com/in/frantisekborsik" target=3D"_blank">https://www.linkedin.=
com/in/frantisekborsik</a><br><br>Signal, Telegram, WhatsApp: <a href=3D"te=
l:+421919416714">+421919416714</a><br><br>iMessage, mobile: <a href=3D"tel:=
+420775230885">+420775230885</a><br><br>Skype: casioa5302ca<br><br><a href=
=3D"mailto:frantisek.borsik@gmail.com" target=3D"_blank">frantisek.borsik@g=
mail.com</a><br></blockquote><span style=3D"font-family:Helvetica;font-size=
:12px;font-style:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;text-decoration:none;float:none;display:inline">_=
______________________________________________</span><br style=3D"font-fami=
ly:Helvetica;font-size:12px;font-style:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;text-decoration:none"><span=
 style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-dec=
oration:none;float:none;display:inline">Bloat mailing list</span><br style=
=3D"font-family:Helvetica;font-size:12px;font-style:normal;font-variant-cap=
s:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;text-decoratio=
n:none"><a href=3D"mailto:Bloat@lists.bufferbloat.net" style=3D"font-family=
:Helvetica;font-size:12px;font-style:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px" target=3D"_blank">Bloat@list=
s.bufferbloat.net</a><br style=3D"font-family:Helvetica;font-size:12px;font=
-style:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norma=
l;text-align:start;text-indent:0px;text-transform:none;white-space:normal;w=
ord-spacing:0px;text-decoration:none"><a href=3D"https://lists.bufferbloat.=
net/listinfo/bloat" style=3D"font-family:Helvetica;font-size:12px;font-styl=
e:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px" target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat<=
/a><br style=3D"font-family:Helvetica;font-size:12px;font-style:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;te=
xt-decoration:none"><span style=3D"font-family:Helvetica;font-size:12px;fon=
t-style:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;white-space:normal;=
word-spacing:0px;text-decoration:none;float:none;display:inline">__________=
_____________________________________</span><br style=3D"font-family:Helvet=
ica;font-size:12px;font-style:normal;font-variant-caps:normal;font-weight:4=
00;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:no=
ne;white-space:normal;word-spacing:0px;text-decoration:none"><span style=3D=
"font-family:Helvetica;font-size:12px;font-style:normal;font-variant-caps:n=
ormal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:n=
one;float:none;display:inline">Starlink mailing list</span><br style=3D"fon=
t-family:Helvetica;font-size:12px;font-style:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;text-decoration:none"=
><a href=3D"mailto:Starlink@lists.bufferbloat.net" style=3D"font-family:Hel=
vetica;font-size:12px;font-style:normal;font-variant-caps:normal;font-weigh=
t:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform=
:none;white-space:normal;word-spacing:0px" target=3D"_blank">Starlink@lists=
.bufferbloat.net</a><br style=3D"font-family:Helvetica;font-size:12px;font-=
style:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;text-decoration:none"><a href=3D"https://lists.bufferbloat.n=
et/listinfo/starlink" style=3D"font-family:Helvetica;font-size:12px;font-st=
yle:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;t=
ext-align:start;text-indent:0px;text-transform:none;white-space:normal;word=
-spacing:0px" target=3D"_blank">https://lists.bufferbloat.net/listinfo/star=
link</a></div></blockquote></div><br></div></div>__________________________=
_____________________<br>
Starlink mailing list<br>
<a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starlin=
k@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/starlink" rel=3D"noreferr=
er" target=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink</a><b=
r>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">Sincerely Yours,<br>=C2=A0Omer Shapira<br></div>

--00000000000061b1e00631c3f83f--

--===============3902956015003918199==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3902956015003918199==--

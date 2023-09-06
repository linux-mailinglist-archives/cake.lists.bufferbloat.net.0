Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBFC794209
	for <lists+cake@lfdr.de>; Wed,  6 Sep 2023 19:31:17 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2A96A3CB39;
	Wed,  6 Sep 2023 13:31:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1694021475;
	bh=Bi2b5ffmGqSJ4fLPKuobCSrg4VMX9e2yDWxYBfBEtb8=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=RS+5U8sMod+XE0fWhYbbhhQwnxiVrH7XyjTdfGsNs7A8aIiRig1bUL2lihNGhMtTH
	 yfzj9GN9KMOENZqES1scJ1b368s5zuBy38R/txGrlva+wRSH6XB3/YbnUDRfSgBH4A
	 +KzadqY7EMq4ohkeUsA5uCKSMMdXZXlZNcQiXroLpN3V5mzPpCNwQ7PM9W1JxIzHME
	 B0Y4qWBCvylMC7zEm+tGXhr7G0Q+uWlde4lFmLlo3hE8RfH1rv36hCyUyP3jgDPa76
	 aG6mBbN8C6gayKQPLlZHzy8onc0yLw86DIuLs82IAKhKP7LZcUCUm2dDkoS4fjaP2I
	 NIZQ7FYZHcR2w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com
 [IPv6:2607:f8b0:4864:20::b2b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0BD733B2A4;
 Wed,  6 Sep 2023 13:31:13 -0400 (EDT)
Received: by mail-yb1-xb2b.google.com with SMTP id
 3f1490d57ef6-d7f1bc4ece3so65784276.1; 
 Wed, 06 Sep 2023 10:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1694021473; x=1694626273; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=5In+fiyGrS5ahVigkvqy2L9DuW3Dz+knTe8DekumbJA=;
 b=kBWeqf+MbPbv1p0yJMjcozLGJ993Cnhgew9CfxlLMxBaV/SDcjDkodNoUMYp+JGiG1
 gdt0P5UGv/e0AQcIkLvWY6Fs8L5mXu51p/94vxVBoXKhsfkv0Pr10uZZBkGe/ka9VJgC
 yTSCH3OujKS8vWA0qlcnodnZXN5U1+UL8bY9OCzLqumcONecUDfDuSmkwsRc3knI74fL
 bXN4jMvdk7Eh2s0rfgEbsB1mhtlUPZTn9g0bNn1Ye8qAXO1iUPDYsefxpQADgDLD7n1R
 x5My5zuu9M3AVIjybtiQSEI4humC94nXbJ+LN8szi3PHjHzqbSQ+DgYlTabMKmmo0JvK
 Vg2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1694021473; x=1694626273;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5In+fiyGrS5ahVigkvqy2L9DuW3Dz+knTe8DekumbJA=;
 b=DZfoJi1OCC0u23fNDCwaE08H5i2xS87p6DUVyXwIglrnVCY3MydYsI3yWVgljY09G8
 PAOJMLU8GQAAy9vegAf90/VvUQqd48PwuVYzisdmRad9WE7xEWoHPgLyx7LEE2ZXJ6lg
 meM3MoGk7FcDKZRTnqczMENxcNDDno3m8n7ko42+s2clNh/q255J51Vnvcav+Cb2tws6
 0UYd2EERFI1lG4LcJ6Ay9YMsYG78I3t1suJVRxoynkruISxFYzthbuNGCBLM+mcLdajY
 8DWjlNFJrKlYQCjCcdxM9AODUixAAoXAEqMSnz5xuvzzXHE0l+KDk4faq+zwNVPyk4Hx
 9g6w==
X-Gm-Message-State: AOJu0Yy1eJLTCdJL6FMOqQc+osJr9PVYkJmi9BYQUS+/N3CB0c2y+7/O
 b+rLl+4u0JeyzGHtUvtANRVtd7UJlKrvaPpcVzfcE/Ab
X-Google-Smtp-Source: AGHT+IERGtWZalUDH5u3fki2YnIB/3BVnaKqSG3lHwGZJv/xSz1eHsqNdVTj4lGfnDO+JsomVIkygbo1VPI+q9F2oAY=
X-Received: by 2002:a25:db8c:0:b0:d18:5c77:9f2a with SMTP id
 g134-20020a25db8c000000b00d185c779f2amr16440661ybf.65.1694021472579; Wed, 06
 Sep 2023 10:31:12 -0700 (PDT)
MIME-Version: 1.0
References: <20230906151533.8fc69e0bb73ab6e3@firewalla.com>
 <CAJUtOOjHrJiSnBXetqWsC0CAgDpjBjCYDqNE-Zxx25oK13NoYQ@mail.gmail.com>
In-Reply-To: <CAJUtOOjHrJiSnBXetqWsC0CAgDpjBjCYDqNE-Zxx25oK13NoYQ@mail.gmail.com>
Date: Wed, 6 Sep 2023 10:31:00 -0700
Message-ID: <CAA93jw6m7jfVwWTQ8W_TLQ2J0oDGw+32icp3UikBp=hu0LM=cQ@mail.gmail.com>
To: cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Fwd: [Rpm] Fwd: Firewalla App 1.56 Beta (part 1): Wi-Fi Test,
 CAKE and more
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Content-Type: multipart/mixed; boundary="===============0627118787892441741=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0627118787892441741==
Content-Type: multipart/alternative; boundary="0000000000001d746c0604b41c4a"

--0000000000001d746c0604b41c4a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

anyone here have a firewalla?

---------- Forwarded message ---------
From: Frantisek Borsik via Rpm <rpm@lists.bufferbloat.net>
Date: Wed, Sep 6, 2023 at 9:12=E2=80=AFAM
Subject: [Rpm] Fwd: Firewalla App 1.56 Beta (part 1): Wi-Fi Test, CAKE and
more
To: Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>


CAKE is in =F0=9F=A5=B3 good job, Dave!


All the best,

Frank
Frantisek (Frank) Borsik

https://www.linkedin.com/in/frantisekborsik
Signal, Telegram, WhatsApp: +421919416714
iMessage, mobile: +420775230885
Skype: casioa5302ca
frantisek.borsik@gmail.com


---------- Forwarded message ---------
From: Firewalla <fire@firewalla.com>
Date: Wed, 6 Sep 2023 at 5:18 PM
Subject: Firewalla App 1.56 Beta (part 1): Wi-Fi Test, CAKE and more
To: <frantisek.borsik@gmail.com>


<https://nsx.soundestlink.com/link/64f89775d99f3a05fba13863/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>

*Quick News*



   - Gold SE
   <https://nsx.soundestlink.com/link/64f89775d99f3a05fba13864/64f811526e1f=
7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e=
18b1140e775702dbc57c9c059c0b8e527a88a31>
   beta wave 1 has shipped. Wave 2 coming soon.
   - The Firewalla Rack Mount
   <https://nsx.soundestlink.com/link/64f89776d99f3a05fba13865/64f811526e1f=
7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e=
18b1140e775702dbc57c9c059c0b8e527a88a31>
   Pre-Sale is on now! Tooling going through testing.


*Firewalla App 1.56 BETA Release, Part 1*


*Firewalla App version 1.56 *
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba13866/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>*is
now available to beta users on iOS and Android!* Here are some of the new
features in this update:



   - Wi-Fi Performance Test Tool
   - Smart Queue - CAKE (Public Beta)
   - Local Port in Smart Queue Rules
   - Server Certificate in AnyConnect
   - and more ...

Note that some new features require box version 1.977 or above, currently
available on Firewalla Gold SE production version, Gold Beta version,
Purple, Purple SE, and Blue Plus Early Access versions.
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba13867/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>

*Wi-Fi Test Tool (Requires Box 1.977) *


Our new *Wi-Fi Test* tool makes it easy to find the best and worst Wi-Fi
spots around your house. When your phone is connected to Firewalla=E2=80=99=
s local
network, you can use this feature to test the connection from your phone to
your box. You can switch between download, upload, and ping latency tests.
For step-by-step instructions, check out our video tutorial
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba13868/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>
.


If you=E2=80=99re connected to the *VPN Server*
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba13869/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>,
the feature will be displayed as *VPN Test* instead of Wi-Fi Test. VPN Test
will show you the speed from your phone to your Firewalla box via VPN.
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba1386a/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>

*Smart Queue - CAKE (Public Beta)*


CAKE (Common Applications Kept Enhanced) is a shaping-capable queue
discipline which uses both AQM and FQ.


Smart Queue - CAKE is now available for all Gold, Purple, and Purple SE
boxes. To switch to CAKE, tap *Smart Queue* on the box's main screen,
tap *Queue
Type* -> *CAKE*, and save. For step-by-step instructions, check out our vid=
eo
tutorial
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba1386b/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>
.

   - CAKE is best used with low-speed Internet.
   - CAKE is in Public Beta. If you have any feedback, please post it here
   <https://nsx.soundestlink.com/link/64f89776d99f3a05fba1386c/64f811526e1f=
7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e=
18b1140e775702dbc57c9c059c0b8e527a88a31>
   .

<https://nsx.soundestlink.com/link/64f89776d99f3a05fba1386d/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>

*Local Port in Smart Queue Rules*


We now support specifying a *Local Port* as the target in *Smart Queue
Rules*. Check out our video tutorial
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba1386e/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>
for step-by-step instructions.
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba1386f/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>

*Server Certificate in AnyConnect*


We now support *Server Certificate* for *AnyConnect* configurations in
Firewalla's *VPN Client*
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba13870/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>
.
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba13871/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba13872/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>

This newsletter is a shortened version of our app version 1.56 release
notes. For more details about the features and enhancements in this
release, read our full Firewalla App 1.56 Release Notes
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba13873/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>
.

<https://nsx.soundestlink.com/link/64f89776d99f3a05fba13874/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>

*Firewalla Gold Plus*
Order Gold Plus
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba13875/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>

<https://nsx.soundestlink.com/link/64f89776d99f3a05fba13876/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>
Order Purple SE
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba13877/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>


*Firewalla Wi-Fi SD for the Gold*

*(Now Shipping!)*


Back up your home/business internet with your phone seamlessly
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba13878/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>
Order Firewalla Wi-Fi SD
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba13879/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>

<https://nsx.soundestlink.com/link/64f89776d99f3a05fba1387a/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>

*Firewalla Purple: Gigabit Cyber Security*


2-port Gigabit Firewall + Router + WiFi
Order Firewalla Purple
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba1387b/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>

<https://nsx.soundestlink.com/link/64f89776d99f3a05fba1387c/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>

*Firewalla Gold: Multi-Gigabit Cyber Security*


4-port Multi-Gigabit Firewall + Router

Full Metal and Fanless Design

More Advanced Features

Same Delightful Experience
Order Firewalla Gold
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba1387d/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>


Any questions, please email us help@firewalla.com


or visit our site https://firewalla.com
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba1387e/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>


Want to learn more?  Here are more ways to follow us


Reddit: https://reddit.com/r/firewalla
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba1387f/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>


Facebook: https://facebook.com/firewalla
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba13880/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>

Unsubscribe
<https://nsx.soundestlink.com/contactsPreferences/unsubscribe/?s=3Dc&t=3Dem=
ail&i=3D64f811526e1f7d491b774f04&b=3D5d38d69d8653ed3ed535aa25&c=3D628e6062f=
49055001dad96be&h=3DwzeGwBYwjT6bJKzPl1GAW6Js0pGLiKnQ>
[image: logo]
<https://nsx.soundestlink.com/link/64f89776d99f3a05fba13881/64f811526e1f7d4=
91b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b=
1140e775702dbc57c9c059c0b8e527a88a31>
_______________________________________________
Rpm mailing list
Rpm@lists.bufferbloat.net
https://lists.bufferbloat.net/listinfo/rpm


--=20
Oct 30: https://netdevconf.info/0x17/news/the-maestro-and-the-music-bof.htm=
l
Dave T=C3=A4ht CSO, LibreQos

--0000000000001d746c0604b41c4a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">anyone here have a firewalla?<br><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">---------- Forwarded message --=
-------<br>From: <strong class=3D"gmail_sendername" dir=3D"auto">Frantisek =
Borsik via Rpm</strong> <span dir=3D"auto">&lt;<a href=3D"mailto:rpm@lists.=
bufferbloat.net">rpm@lists.bufferbloat.net</a>&gt;</span><br>Date: Wed, Sep=
 6, 2023 at 9:12=E2=80=AFAM<br>Subject: [Rpm] Fwd: Firewalla App 1.56 Beta =
(part 1): Wi-Fi Test, CAKE and more<br>To: Jeremy Austin via Rpm &lt;<a hre=
f=3D"mailto:rpm@lists.bufferbloat.net">rpm@lists.bufferbloat.net</a>&gt;<br=
></div><br><br><div dir=3D"auto">CAKE is in =F0=9F=A5=B3 good job, Dave!</d=
iv><div dir=3D"auto"><br></div><div><br clear=3D"all"><div><div dir=3D"ltr"=
 class=3D"gmail_signature" data-smartmail=3D"gmail_signature">All the best,=
<br><br>Frank<br>Frantisek (Frank) Borsik<br><br><a href=3D"https://www.lin=
kedin.com/in/frantisekborsik" target=3D"_blank">https://www.linkedin.com/in=
/frantisekborsik</a><br>Signal, Telegram, WhatsApp:=C2=A0+421919416714=C2=
=A0<br>iMessage, mobile:=C2=A0+420775230885<br>Skype: casioa5302ca<br><a hr=
ef=3D"mailto:frantisek.borsik@gmail.com" target=3D"_blank">frantisek.borsik=
@gmail.com</a><br></div></div></div><div><br></div><div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">---------- Forwarded mess=
age ---------<br>From: <strong class=3D"gmail_sendername" dir=3D"auto">Fire=
walla</strong> <span dir=3D"auto">&lt;<a href=3D"mailto:fire@firewalla.com"=
 target=3D"_blank">fire@firewalla.com</a>&gt;</span><br>Date: Wed, 6 Sep 20=
23 at 5:18 PM<br>Subject: Firewalla App 1.56 Beta (part 1): Wi-Fi Test, CAK=
E and more<br>To:  &lt;<a href=3D"mailto:frantisek.borsik@gmail.com" target=
=3D"_blank">frantisek.borsik@gmail.com</a>&gt;<br></div><br><br><u></u>










<div id=3D"m_-5377566653539671848m_5146890177100676403body" style=3D"paddin=
g:0px;margin:0px"><p style=3D"max-height:0px;font-size:0px;line-height:0;ma=
rgin:0px;overflow:hidden"> <img alt=3D"" border=3D"0" src=3D"https://nsx.so=
undestlink.com/track/64f811526e1f7d491b774f04/628e6062f49055001dad96be?sign=
ature=3Db60650024ab78fdef771f0d2e18b1140e775702dbc57c9c059c0b8e527a88a31" w=
idth=3D"1" height=3D"1"></p>
<table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" styl=
e=3D"background-color:rgb(242,242,242)"><tbody><tr><td>
<table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" styl=
e=3D"min-width:290px"><tbody><tr><td>
<table width=3D"640" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" align=
=3D"center" style=3D"width:640px;margin:0px auto;background-color:rgb(255,2=
55,255)"><tbody><tr><td>
<table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0"><tbo=
dy><tr><td>
<table id=3D"m_-5377566653539671848m_514689017710067640364b6c6ed8e51b75e7bb=
bece8" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:24px">
<table id=3D"m_-5377566653539671848m_514689017710067640364b6c6ed8e51b75e7bb=
bece9" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640364b6c6ed8e51b75e7bbbecea" style=3D"width:296px;vertical-align:top">
<table id=3D"m_-5377566653539671848m_514689017710067640364b6cea58e51b75e7bb=
bf55c" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"296" align=
=3D"center"><tbody><tr><td style=3D"padding:0px" align=3D"center">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89775d99f3a05fba13863/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"296" alt=
=3D"" height=3D"167" border=3D"0" src=3D"https://nsx.soundestlink.com/image=
/newsletter/648766873c84ae1918046b08" style=3D"height:auto;margin:0px;verti=
cal-align:middle;font-family:Arial,sans-serif;font-size:14px;line-height:1.=
15;width:296px;max-width:100%!important;color:rgb(153,153,153)"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td><td id=3D"m_-5377566653539671848m_514689017710067640364b6c6ed8e51b75e7=
bbbeceb" style=3D"width:296px;vertical-align:top">
<table id=3D"m_-5377566653539671848m_514689017710067640364b6c7938e51b75e7bb=
bf55b" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td align=3D"" style=3D"font-family:&quot;Open Sans&quot;,&quot;Helv=
etica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;line-height:1.5;=
padding:0px 12px;color:rgb(51,51,51)" bgcolor=3D""><p style=3D"margin-top:0=
px;margin-bottom:0px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue=
&quot;,Helvetica,Arial,sans-serif"><strong style=3D"font-family:&quot;Open =
Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><span sty=
le=3D"font-size:20px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue=
&quot;,Helvetica,Arial,sans-serif">Quick News</span></strong></p><p style=
=3D"margin-top:0px;margin-bottom:0px;font-family:&quot;Open Sans&quot;,&quo=
t;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><br></p><ul style=3D"fon=
t-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,s=
ans-serif"><li style=3D"margin-top:0px;margin-right:0px;margin-bottom:0px;f=
ont-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial=
,sans-serif"><a style=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica =
Neue&quot;,Helvetica,Arial,sans-serif;color:rgb(200,50,45)" href=3D"https:/=
/nsx.soundestlink.com/link/64f89775d99f3a05fba13864/64f811526e1f7d491b774f0=
4/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b1140e775=
702dbc57c9c059c0b8e527a88a31" target=3D"_blank">Gold SE</a> beta wave 1 has=
 shipped. Wave 2 coming soon.</li><li style=3D"margin-top:0px;margin-right:=
0px;margin-bottom:0px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neu=
e&quot;,Helvetica,Arial,sans-serif" id=3D"m_-5377566653539671848m_514689017=
7100676403isPasted">The <a style=3D"font-family:&quot;Open Sans&quot;,&quot=
;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;color:rgb(200,50,45)" href=
=3D"https://nsx.soundestlink.com/link/64f89776d99f3a05fba13865/64f811526e1f=
7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e=
18b1140e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank">Firewalla Rack M=
ount</a> Pre-Sale is on now! Tooling going through testing.</li></ul>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5be84" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:20px;vertical-align:top;background-repeat:no-re=
peat;background-size:cover;background-position:unset;background-color:rgb(2=
55,255,255)">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5be85" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05be83" style=3D"width:600px;vertical-align:top">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5be86" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td align=3D"" style=3D"font-family:&quot;Open Sans&quot;,&quot;Helv=
etica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;line-height:1.5;=
padding:0px 0px 20px;color:rgb(0,0,0)" bgcolor=3D""><p style=3D"text-align:=
left;margin:0px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot=
;,Helvetica,Arial,sans-serif"><span style=3D"font-size:22px;font-family:&qu=
ot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><=
strong style=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot=
;,Helvetica,Arial,sans-serif">Firewalla App 1.56 BETA Release, Part 1<br></=
strong></span></p><p style=3D"text-align:left;margin:0px;font-family:&quot;=
Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><br>=
</p><p style=3D"margin:0px;font-family:&quot;Open Sans&quot;,&quot;Helvetic=
a Neue&quot;,Helvetica,Arial,sans-serif"><span style=3D"font-size:14px;font=
-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sa=
ns-serif"><a style=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica Neu=
e&quot;,Helvetica,Arial,sans-serif;color:rgb(209,72,65)" href=3D"https://ns=
x.soundestlink.com/link/64f89776d99f3a05fba13866/64f811526e1f7d491b774f04/6=
28e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b1140e775702=
dbc57c9c059c0b8e527a88a31" target=3D"_blank"><strong style=3D"font-family:&=
quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"=
>Firewalla App version 1.56 </strong></a></span><span style=3D"font-size:14=
px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,A=
rial,sans-serif"><strong style=3D"font-family:&quot;Open Sans&quot;,&quot;H=
elvetica Neue&quot;,Helvetica,Arial,sans-serif">is now available to beta us=
ers on iOS and Android!</strong> Here are some of the new features in this =
update:<br></span></p><p style=3D"margin:0px;font-family:&quot;Open Sans&qu=
ot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><br></p><ul id=
=3D"m_-5377566653539671848m_5146890177100676403isPasted" style=3D"font-fami=
ly:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-se=
rif"><li id=3D"m_-5377566653539671848m_5146890177100676403isPasted" style=
=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif">Wi-Fi Performance Test Tool</li><li style=3D"font-family:=
&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif=
">Smart Queue - CAKE (Public Beta)</li><li id=3D"m_-5377566653539671848m_51=
46890177100676403isPasted" style=3D"font-family:&quot;Open Sans&quot;,&quot=
;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">Local Port in Smart Queue=
 Rules</li><li style=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica N=
eue&quot;,Helvetica,Arial,sans-serif">Server Certificate in AnyConnect</li>=
<li style=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,H=
elvetica,Arial,sans-serif">and more ...</li></ul><p style=3D"margin-top:0px=
;margin-bottom:0px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&q=
uot;,Helvetica,Arial,sans-serif">Note that some new features require box ve=
rsion 1.977 or above, currently available on Firewalla Gold SE production v=
ersion, Gold Beta version, Purple, Purple SE, and Blue Plus Early Access ve=
rsions. =C2=A0</p>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640364592aad0847df78d0f=
ee17c" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=
=3D"center"><tbody><tr><td style=3D"padding:0px" align=3D"center">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba13867/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"100%" al=
t=3D"" height=3D"338" border=3D"0" src=3D"https://nsx.soundestlink.com/imag=
e/newsletter/64efb159a5f61bb39ebd6695" style=3D"height:auto;margin:0px;vert=
ical-align:middle;font-family:Arial,sans-serif;font-size:14px;line-height:1=
.15;max-width:100%!important;color:rgb(153,153,153)"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5be9c" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:20px;vertical-align:top;background-repeat:no-re=
peat;background-size:cover;background-position:unset;background-color:rgb(2=
55,255,255)">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5be9d" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05be9b" style=3D"width:600px;vertical-align:top">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5be9e" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td align=3D"" style=3D"font-family:&quot;Open Sans&quot;,&quot;Helv=
etica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;line-height:1.5;=
padding:0px 0px 12px;color:rgb(0,0,0)" bgcolor=3D""><p style=3D"text-align:=
left;margin:0px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot=
;,Helvetica,Arial,sans-serif"><strong style=3D"font-family:&quot;Open Sans&=
quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><span style=3D=
"font-size:20px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot=
;,Helvetica,Arial,sans-serif">Wi-Fi Test Tool (Requires Box 1.977)=C2=A0</s=
pan></strong></p><p style=3D"margin-top:0px;margin-bottom:0px;font-family:&=
quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"=
><br></p><p id=3D"m_-5377566653539671848m_5146890177100676403isPasted" styl=
e=3D"margin-top:0px;margin-bottom:0px;font-family:&quot;Open Sans&quot;,&qu=
ot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">Our new <strong style=
=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif">Wi-Fi Test</strong> tool makes it easy to find the best a=
nd worst Wi-Fi spots around your house. When your phone is connected to Fir=
ewalla=E2=80=99s local network, you can use this feature to test the connec=
tion from your phone to your box. You can switch between download, upload, =
and ping latency tests. For step-by-step instructions, check out our <a sty=
le=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetic=
a,Arial,sans-serif;color:rgb(209,72,65)" href=3D"https://nsx.soundestlink.c=
om/link/64f89776d99f3a05fba13868/64f811526e1f7d491b774f04/628e6062f49055001=
dad96be?signature=3Db60650024ab78fdef771f0d2e18b1140e775702dbc57c9c059c0b8e=
527a88a31" target=3D"_blank">video tutorial</a>.</p><p style=3D"margin-top:=
0px;margin-bottom:0px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neu=
e&quot;,Helvetica,Arial,sans-serif"><br></p><p style=3D"margin-top:0px;marg=
in-bottom:0px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,=
Helvetica,Arial,sans-serif">If you=E2=80=99re connected to the <a style=3D"=
font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Aria=
l,sans-serif;color:rgb(209,72,65)" href=3D"https://nsx.soundestlink.com/lin=
k/64f89776d99f3a05fba13869/64f811526e1f7d491b774f04/628e6062f49055001dad96b=
e?signature=3Db60650024ab78fdef771f0d2e18b1140e775702dbc57c9c059c0b8e527a88=
a31" target=3D"_blank"><strong style=3D"font-family:&quot;Open Sans&quot;,&=
quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">VPN Server</strong></=
a>, the feature will be displayed as <strong style=3D"font-family:&quot;Ope=
n Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">VPN Tes=
t</strong> instead of Wi-Fi Test. VPN Test will show you the speed from you=
r phone to your Firewalla box via VPN.</p>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bea2" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=
=3D"center"><tbody><tr><td style=3D"padding:0px" align=3D"center">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba1386a/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"529" alt=
=3D"" height=3D"549" border=3D"0" src=3D"https://nsx.soundestlink.com/image=
/newsletter/64f6b89f5b53ee937b4a5967" style=3D"height:auto;margin:0px;verti=
cal-align:middle;font-family:Arial,sans-serif;font-size:14px;line-height:1.=
15;width:529px;max-width:88%!important;color:rgb(153,153,153)"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_5146890177100676403645932640516ea25745=
cc8c4" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:20px;vertical-align:top;background-repeat:no-re=
peat;background-size:cover;background-position:unset;background-color:rgb(2=
55,255,255)">
<table id=3D"m_-5377566653539671848m_5146890177100676403645932640516ea25745=
cc8c5" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
676403645932640516ea25745cc8c6" style=3D"width:600px;vertical-align:top">
<table id=3D"m_-5377566653539671848m_5146890177100676403645932640516ea25745=
cc8c7" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td align=3D"" style=3D"font-family:&quot;Open Sans&quot;,&quot;Helv=
etica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;line-height:1.5;=
padding:0px;color:rgb(0,0,0)" bgcolor=3D""><p style=3D"text-align:left;marg=
in:0px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helveti=
ca,Arial,sans-serif"><strong style=3D"font-family:&quot;Open Sans&quot;,&qu=
ot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><span style=3D"font-siz=
e:20px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helveti=
ca,Arial,sans-serif">Smart Queue - CAKE (Public Beta)</span></strong><span =
style=3D"font-size:14px;font-family:&quot;Open Sans&quot;,&quot;Helvetica N=
eue&quot;,Helvetica,Arial,sans-serif"><br></span></p><p style=3D"margin-top=
:0px;margin-bottom:0px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Ne=
ue&quot;,Helvetica,Arial,sans-serif"><br></p><p id=3D"m_-537756665353967184=
8m_5146890177100676403isPasted" style=3D"margin-top:0px;margin-bottom:0px;f=
ont-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial=
,sans-serif">CAKE (Common Applications Kept Enhanced) is a shaping-capable =
queue discipline which uses both AQM and FQ.</p><p style=3D"margin-top:0px;=
margin-bottom:0px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&qu=
ot;,Helvetica,Arial,sans-serif"><br></p><p style=3D"margin-top:0px;margin-b=
ottom:0px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helv=
etica,Arial,sans-serif">Smart Queue - CAKE is now available for all Gold, P=
urple, and Purple SE boxes. To switch to CAKE, tap <strong style=3D"font-fa=
mily:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-=
serif">Smart Queue</strong> on the box&#39;s main screen, tap <strong style=
=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif">Queue Type</strong> -&gt; <strong style=3D"font-family:&q=
uot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">=
CAKE</strong>, and save. For step-by-step instructions, check out our <a st=
yle=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helveti=
ca,Arial,sans-serif;color:rgb(209,72,65)" href=3D"https://nsx.soundestlink.=
com/link/64f89776d99f3a05fba1386b/64f811526e1f7d491b774f04/628e6062f4905500=
1dad96be?signature=3Db60650024ab78fdef771f0d2e18b1140e775702dbc57c9c059c0b8=
e527a88a31" target=3D"_blank">video tutorial</a>.</p><ul style=3D"font-fami=
ly:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-se=
rif"><li style=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&qu=
ot;,Helvetica,Arial,sans-serif">CAKE is best used with low-speed Internet.=
=C2=A0</li><li style=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica N=
eue&quot;,Helvetica,Arial,sans-serif">CAKE is in Public Beta. If you have a=
ny feedback, please post it <a style=3D"font-family:&quot;Open Sans&quot;,&=
quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;color:rgb(209,72,65)" =
href=3D"https://nsx.soundestlink.com/link/64f89776d99f3a05fba1386c/64f81152=
6e1f7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f=
0d2e18b1140e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank">here</a>.</l=
i></ul>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_5146890177100676403645932640516ea25745=
cc8c8" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=
=3D"center"><tbody><tr><td style=3D"padding:0px" align=3D"center">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba1386d/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"600" alt=
=3D"" height=3D"376" border=3D"0" src=3D"https://nsx.soundestlink.com/image=
/newsletter/64efb4775b53ee937b497d13" style=3D"height:auto;margin:0px;verti=
cal-align:middle;font-family:Arial,sans-serif;font-size:14px;line-height:1.=
15;width:600px;max-width:100%!important;color:rgb(153,153,153)"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_5146890177100676403645934d20516ea25745=
cd57e" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:20px;vertical-align:top;background-repeat:no-re=
peat;background-size:cover;background-position:unset;background-color:rgb(2=
55,255,255)">
<table id=3D"m_-5377566653539671848m_5146890177100676403645934d20516ea25745=
cd57f" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
676403645934d20516ea25745cd580" style=3D"width:600px;vertical-align:top">
<table id=3D"m_-5377566653539671848m_5146890177100676403645934d20516ea25745=
cd581" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td align=3D"" style=3D"font-family:&quot;Open Sans&quot;,&quot;Helv=
etica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;line-height:1.5;=
padding:0px 0px 12px;color:rgb(0,0,0)" bgcolor=3D""><p style=3D"text-align:=
left;margin:0px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot=
;,Helvetica,Arial,sans-serif"><strong style=3D"font-family:&quot;Open Sans&=
quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><span style=3D=
"font-size:20px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot=
;,Helvetica,Arial,sans-serif">Local Port in Smart Queue Rules</span></stron=
g></p><p id=3D"m_-5377566653539671848m_5146890177100676403isPasted" style=
=3D"margin-top:0px;margin-bottom:0px;font-family:&quot;Open Sans&quot;,&quo=
t;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><br></p><p id=3D"m_-5377=
566653539671848m_5146890177100676403isPasted" style=3D"margin-top:0px;margi=
n-bottom:0px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,H=
elvetica,Arial,sans-serif">We now support specifying a <strong style=3D"fon=
t-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,s=
ans-serif">Local Port</strong> as the target in <strong style=3D"font-famil=
y:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-ser=
if">Smart Queue Rules</strong>. Check out our <a style=3D"font-family:&quot=
;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;colo=
r:rgb(209,72,65)" href=3D"https://nsx.soundestlink.com/link/64f89776d99f3a0=
5fba1386e/64f811526e1f7d491b774f04/628e6062f49055001dad96be?signature=3Db60=
650024ab78fdef771f0d2e18b1140e775702dbc57c9c059c0b8e527a88a31" target=3D"_b=
lank">video tutorial</a> for step-by-step instructions.=C2=A0</p>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_5146890177100676403645934d20516ea25745=
cd582" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=
=3D"center"><tbody><tr><td style=3D"padding:0px" align=3D"center">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba1386f/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"600" alt=
=3D"" height=3D"406" border=3D"0" src=3D"https://nsx.soundestlink.com/image=
/newsletter/64efb4745b53ee937b497d10" style=3D"height:auto;margin:0px;verti=
cal-align:middle;font-family:Arial,sans-serif;font-size:14px;line-height:1.=
15;width:600px;max-width:100%!important;color:rgb(153,153,153)"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640364efb2d77ce86f322e7=
25212" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:20px 20px 0px;vertical-align:top;background-rep=
eat:no-repeat;background-size:cover;background-position:unset;background-co=
lor:rgb(255,255,255)">
<table id=3D"m_-5377566653539671848m_514689017710067640364efb2d77ce86f322e7=
25213" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640364efb2d77ce86f322e725214" style=3D"width:600px;vertical-align:top">
<table id=3D"m_-5377566653539671848m_514689017710067640364efb2d77ce86f322e7=
25215" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td align=3D"" style=3D"font-family:&quot;Open Sans&quot;,&quot;Helv=
etica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;line-height:1.5;=
padding:0px 0px 12px;color:rgb(0,0,0)" bgcolor=3D""><p style=3D"text-align:=
left;margin:0px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot=
;,Helvetica,Arial,sans-serif"><strong style=3D"font-family:&quot;Open Sans&=
quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><span style=3D=
"font-size:20px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot=
;,Helvetica,Arial,sans-serif">Server Certificate in AnyConnect</span></stro=
ng></p><p id=3D"m_-5377566653539671848m_5146890177100676403isPasted" style=
=3D"margin-top:0px;margin-bottom:0px;font-family:&quot;Open Sans&quot;,&quo=
t;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><br></p><p id=3D"m_-5377=
566653539671848m_5146890177100676403isPasted" style=3D"margin-top:0px;margi=
n-bottom:0px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,H=
elvetica,Arial,sans-serif">We now support <strong style=3D"font-family:&quo=
t;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">Se=
rver Certificate</strong> for <strong style=3D"font-family:&quot;Open Sans&=
quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">AnyConnect</st=
rong> configurations in Firewalla&#39;s <a style=3D"font-family:&quot;Open =
Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;color:rgb(=
209,72,65)" href=3D"https://nsx.soundestlink.com/link/64f89776d99f3a05fba13=
870/64f811526e1f7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024=
ab78fdef771f0d2e18b1140e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank">=
<strong style=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quo=
t;,Helvetica,Arial,sans-serif">VPN Client</strong></a>.</p>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640364efb59d54e541f9d72=
6b99e" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:0px 20px 20px;vertical-align:top;background-rep=
eat:no-repeat;background-size:cover;background-position:unset;background-co=
lor:rgb(255,255,255)">
<table id=3D"m_-5377566653539671848m_514689017710067640364efb59d54e541f9d72=
6b99f" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640364efb59d54e541f9d726b9a0" style=3D"width:600px;vertical-align:top">
<table id=3D"m_-5377566653539671848m_514689017710067640364efb59d54e541f9d72=
6b9a1" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=
=3D"center"><tbody><tr><td style=3D"padding:0px" align=3D"center">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba13871/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"290" alt=
=3D"" height=3D"628" border=3D"0" src=3D"https://nsx.soundestlink.com/image=
/newsletter/64efb4728962e06f4d0db444" style=3D"height:auto;margin:0px;verti=
cal-align:middle;font-family:Arial,sans-serif;font-size:14px;line-height:1.=
15;width:290px;max-width:48%!important;color:rgb(153,153,153)"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>

<table id=3D"m_-5377566653539671848m_514689017710067640364efb58954e541f9d72=
6b560" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:0px 20px 20px;vertical-align:top;background-rep=
eat:no-repeat;background-size:cover;background-position:unset;background-co=
lor:rgb(255,255,255)">
<table id=3D"m_-5377566653539671848m_514689017710067640364efb58954e541f9d72=
6b561" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640364efb58954e541f9d726b562" style=3D"width:600px;vertical-align:top">
<table id=3D"m_-5377566653539671848m_514689017710067640364efb58954e541f9d72=
6b564" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=
=3D"center"><tbody><tr><td style=3D"padding:0px" align=3D"center">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba13872/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"600" alt=
=3D"" height=3D"1299" border=3D"0" src=3D"https://nsx.soundestlink.com/imag=
e/newsletter/64efb4728962e06f4d0db444" style=3D"height:auto;margin:0px;vert=
ical-align:middle;font-family:Arial,sans-serif;font-size:14px;line-height:1=
.15;width:600px;max-width:100%!important;color:rgb(153,153,153)"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_5146890177100676403645936430516ea25745=
cffcd" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:20px 20px 0px;vertical-align:top;background-rep=
eat:no-repeat;background-size:cover;background-position:unset;background-co=
lor:rgb(255,255,255)">
<table id=3D"m_-5377566653539671848m_5146890177100676403645936430516ea25745=
cffce" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
676403645936430516ea25745cffcf" style=3D"width:600px;vertical-align:top">
<table id=3D"m_-5377566653539671848m_5146890177100676403645936430516ea25745=
cffd0" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td align=3D"" style=3D"font-family:&quot;Open Sans&quot;,&quot;Helv=
etica Neue&quot;,Helvetica,Arial,sans-serif;font-size:14px;line-height:1.5;=
padding:0px 0px 12px;color:rgb(0,0,0)" bgcolor=3D""><p style=3D"text-align:=
left;margin:0px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot=
;,Helvetica,Arial,sans-serif">This newsletter is a shortened version of our=
 app version 1.56 release notes. For more details about the features and en=
hancements in this release, read our full <a style=3D"font-family:&quot;Ope=
n Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;color:rg=
b(209,72,65)" href=3D"https://nsx.soundestlink.com/link/64f89776d99f3a05fba=
13873/64f811526e1f7d491b774f04/628e6062f49055001dad96be?signature=3Db606500=
24ab78fdef771f0d2e18b1140e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank=
">Firewalla App 1.56 Release Notes</a>.</p>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5beb8" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:20px;vertical-align:middle">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5beb9" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05beb7" style=3D"width:600px;vertical-align:middle"=
>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5beba" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td align=3D"center" style=3D"padding:6px 12px">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"font-size:0px;line-height:0;border-top-width:1px;border=
-top-style:solid;border-top-color:rgb(232,235,241)">=C2=A0
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bebc" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:0px 20px;vertical-align:middle">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bebd" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05bebb" style=3D"width:600px;vertical-align:middle"=
>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bebe" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=
=3D"center"><tbody><tr><td style=3D"padding:0px" align=3D"center">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba13874/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"600" alt=
=3D"" height=3D"375" border=3D"0" src=3D"https://nsx.soundestlink.com/image=
/newsletter/62fb1f86d6a40f001b2377f1" style=3D"height:auto;margin:0px;verti=
cal-align:middle;font-family:Arial,sans-serif;font-size:14px;line-height:1.=
15;width:600px;max-width:100%!important;color:rgb(153,153,153)"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bec0" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:20px;vertical-align:top">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bec1" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05bebf" style=3D"width:600px;vertical-align:top">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bec2" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td align=3D"" style=3D"font-family:&quot;Open Sans&quot;,&quot;Helv=
etica Neue&quot;,Helvetica,Arial,sans-serif;font-size:16px;line-height:2;pa=
dding:0px;color:rgb(0,0,0)" bgcolor=3D""><p style=3D"margin:0px;text-align:=
center;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helveti=
ca,Arial,sans-serif"><strong style=3D"font-family:&quot;Open Sans&quot;,&qu=
ot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><span style=3D"font-siz=
e:24px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helveti=
ca,Arial,sans-serif">Firewalla Gold Plus</span></strong></p>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bec4" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:0px 20px 20px;vertical-align:middle">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bec5" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05bec3" style=3D"width:600px;vertical-align:middle"=
>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bec6" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"table-layout:fixed"><tbody><tr><td align=3D"center" style=3D"padding:1=
2px" valign=3D"top">
<table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"border:0px=
 solid rgb(84,172,210);border-radius:8px;border-collapse:separate;backgroun=
d-color:rgb(229,16,117)"><tbody><tr>
<td align=3D"center" valign=3D"middle" style=3D"font-family:&quot;Open Sans=
&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:17px=
;font-weight:700;color:rgb(255,255,255)">

 <a href=3D"https://nsx.soundestlink.com/link/64f89776d99f3a05fba13875/64f8=
11526e1f7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef=
771f0d2e18b1140e775702dbc57c9c059c0b8e527a88a31" style=3D"text-decoration:n=
one;padding:15px 20px;display:inline-block;font-family:&quot;Open Sans&quot=
;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:17px;font=
-weight:700;line-height:1.2;color:rgb(255,255,255)" target=3D"_blank"> Orde=
r Gold Plus </a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bec8" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:20px;vertical-align:middle">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bec9" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05bec7" style=3D"width:600px;vertical-align:middle"=
>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5beca" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td align=3D"center" style=3D"padding:6px 12px">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"font-size:0px;line-height:0;border-top-width:1px;border=
-top-style:solid;border-top-color:rgb(232,235,241)">=C2=A0
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_5146890177100676403645938f9b6bb717019b=
5e98f" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:0px 20px;vertical-align:middle;background-repea=
t:no-repeat;background-size:cover;background-position:unset">
<table id=3D"m_-5377566653539671848m_5146890177100676403645938f9b6bb717019b=
5e990" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
676403645938f9b6bb717019b5e991" style=3D"width:600px;vertical-align:middle"=
>
<table id=3D"m_-5377566653539671848m_5146890177100676403645938f9b6bb717019b=
5e992" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=
=3D"center"><tbody><tr><td style=3D"padding:0px" align=3D"center">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba13876/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"600" alt=
=3D"" height=3D"338" border=3D"0" src=3D"https://nsx.soundestlink.com/image=
/newsletter/64593952d6a40f0015b1c576" style=3D"height:auto;margin:0px;verti=
cal-align:middle;font-family:Arial,sans-serif;font-size:14px;line-height:1.=
15;width:600px;max-width:100%!important;color:rgb(153,153,153)"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_5146890177100676403645938fdb6bb717019b=
5f209" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:0px 20px 20px;vertical-align:middle;background-=
repeat:no-repeat;background-size:cover;background-position:unset">
<table id=3D"m_-5377566653539671848m_5146890177100676403645938fdb6bb717019b=
5f20a" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
676403645938fdb6bb717019b5f20b" style=3D"width:600px;vertical-align:middle"=
>
<table id=3D"m_-5377566653539671848m_5146890177100676403645938fdb6bb717019b=
5f20c" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"table-layout:fixed"><tbody><tr><td align=3D"center" style=3D"padding:1=
2px" valign=3D"top">
<table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"border:0px=
 solid rgb(84,172,210);border-radius:8px;border-collapse:separate;backgroun=
d-color:rgb(229,16,117)"><tbody><tr>
<td align=3D"center" valign=3D"middle" style=3D"font-family:&quot;Open Sans=
&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:17px=
;font-weight:700;color:rgb(255,255,255)">

 <a href=3D"https://nsx.soundestlink.com/link/64f89776d99f3a05fba13877/64f8=
11526e1f7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef=
771f0d2e18b1140e775702dbc57c9c059c0b8e527a88a31" style=3D"text-decoration:n=
one;padding:15px 20px;display:inline-block;font-family:&quot;Open Sans&quot=
;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:17px;font=
-weight:700;line-height:1.2;color:rgb(255,255,255)" target=3D"_blank"> Orde=
r Purple SE </a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640364593902b6bb717019b=
5f646" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:20px;vertical-align:middle">
<table id=3D"m_-5377566653539671848m_514689017710067640364593902b6bb717019b=
5f647" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640364593902b6bb717019b5f648" style=3D"width:600px;vertical-align:middle"=
>
<table id=3D"m_-5377566653539671848m_514689017710067640364593902b6bb717019b=
5f649" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td align=3D"center" style=3D"padding:6px 12px">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"font-size:0px;line-height:0;border-top-width:1px;border=
-top-style:solid;border-top-color:rgb(232,235,241)">=C2=A0
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bed0" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:20px;vertical-align:top;background-repeat:no-re=
peat;background-size:cover;background-position:unset">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bed1" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05becf" style=3D"width:600px;vertical-align:top">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bed2" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td align=3D"" style=3D"font-family:&quot;Open Sans&quot;,&quot;Helv=
etica Neue&quot;,Helvetica,Arial,sans-serif;font-size:16px;line-height:2;pa=
dding:0px;color:rgb(0,0,0)" bgcolor=3D""><p style=3D"margin:0px;text-align:=
center;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helveti=
ca,Arial,sans-serif"><strong style=3D"font-family:&quot;Open Sans&quot;,&qu=
ot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><span style=3D"font-siz=
e:24px;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helveti=
ca,Arial,sans-serif">Firewalla Wi-Fi SD for the Gold</span></strong></p><p =
style=3D"margin:0px;text-align:center;font-family:&quot;Open Sans&quot;,&qu=
ot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><strong style=3D"font-f=
amily:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans=
-serif"><span style=3D"font-size:24px;font-family:&quot;Open Sans&quot;,&qu=
ot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">(Now Shipping!)</span><=
/strong></p><p style=3D"margin:0px;text-align:center;font-family:&quot;Open=
 Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><br></p>=
<p style=3D"margin:0px;text-align:center;font-family:&quot;Open Sans&quot;,=
&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">Back up your home/bu=
siness internet with your phone seamlessly</p>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5becc" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:0px 20px;vertical-align:middle">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5becd" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05becb" style=3D"width:600px;vertical-align:middle"=
>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bece" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=
=3D"center"><tbody><tr><td style=3D"padding:0px" align=3D"center">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba13878/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"600" alt=
=3D"" height=3D"450" border=3D"0" src=3D"https://nsx.soundestlink.com/image=
/newsletter/62a114abd6a40f001de19ed2" style=3D"height:auto;margin:0px;verti=
cal-align:middle;font-family:Arial,sans-serif;font-size:14px;line-height:1.=
15;width:600px;max-width:100%!important;color:rgb(153,153,153)"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bed4" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:0px 20px 20px;vertical-align:middle">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bed5" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05bed3" style=3D"width:600px;vertical-align:middle"=
>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bed6" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"table-layout:fixed"><tbody><tr><td align=3D"center" style=3D"padding:1=
2px" valign=3D"top">
<table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"border:0px=
 solid rgb(84,172,210);border-radius:8px;border-collapse:separate;backgroun=
d-color:rgb(229,16,117)"><tbody><tr>
<td align=3D"center" valign=3D"middle" style=3D"font-family:&quot;Open Sans=
&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:17px=
;font-weight:700;color:rgb(255,255,255)">

 <a href=3D"https://nsx.soundestlink.com/link/64f89776d99f3a05fba13879/64f8=
11526e1f7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef=
771f0d2e18b1140e775702dbc57c9c059c0b8e527a88a31" style=3D"text-decoration:n=
one;padding:15px 20px;display:inline-block;font-family:&quot;Open Sans&quot=
;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:17px;font=
-weight:700;line-height:1.2;color:rgb(255,255,255)" target=3D"_blank"> Orde=
r Firewalla Wi-Fi SD </a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bed8" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:20px;vertical-align:middle">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bed9" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05bed7" style=3D"width:600px;vertical-align:middle"=
>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5beda" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td align=3D"center" style=3D"padding:6px 12px">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"font-size:0px;line-height:0;border-top-width:1px;border=
-top-style:solid;border-top-color:rgb(232,235,241)">=C2=A0
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bedc" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:0px 20px;vertical-align:middle">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bedd" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05bedb" style=3D"width:600px;vertical-align:middle"=
>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bede" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=
=3D"center"><tbody><tr><td style=3D"padding:0px" align=3D"center">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba1387a/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"600" alt=
=3D"" height=3D"316" border=3D"0" src=3D"https://nsx.soundestlink.com/image=
/newsletter/60ee4c04bf911556926501cd" style=3D"height:auto;margin:0px;verti=
cal-align:middle;font-family:Arial,sans-serif;font-size:14px;line-height:1.=
15;width:600px;max-width:100%!important;color:rgb(153,153,153)"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bee0" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:20px;vertical-align:top">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bee1" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05bedf" style=3D"width:600px;vertical-align:top">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bee2" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td align=3D"" style=3D"font-family:&quot;Open Sans&quot;,&quot;Helv=
etica Neue&quot;,Helvetica,Arial,sans-serif;font-size:16px;line-height:2;pa=
dding:0px;color:rgb(0,0,0)" bgcolor=3D""><p style=3D"margin:0px;text-align:=
center;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helveti=
ca,Arial,sans-serif"><span style=3D"font-size:24px;font-family:&quot;Open S=
ans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><strong st=
yle=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helveti=
ca,Arial,sans-serif">Firewalla Purple: Gigabit Cyber Security</strong><stro=
ng style=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,He=
lvetica,Arial,sans-serif"><span style=3D"font-size:14px;font-family:&quot;O=
pen Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">=C2=
=A0</span></strong></span></p><p style=3D"margin:0px;text-align:center;font=
-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sa=
ns-serif"><br></p><p style=3D"margin:0px;text-align:center;font-family:&quo=
t;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">2-=
port Gigabit Firewall + Router + WiFi</p>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bee4" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:0px 20px 20px;vertical-align:middle">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bee5" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05bee3" style=3D"width:600px;vertical-align:middle"=
>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bee6" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"table-layout:fixed"><tbody><tr><td align=3D"center" style=3D"padding:1=
2px" valign=3D"top">
<table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"border:0px=
 solid rgb(84,172,210);border-radius:8px;border-collapse:separate;backgroun=
d-color:rgb(229,16,117)"><tbody><tr>
<td align=3D"center" valign=3D"middle" style=3D"font-family:&quot;Open Sans=
&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:17px=
;font-weight:700;color:rgb(255,255,255)">

 <a href=3D"https://nsx.soundestlink.com/link/64f89776d99f3a05fba1387b/64f8=
11526e1f7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef=
771f0d2e18b1140e775702dbc57c9c059c0b8e527a88a31" style=3D"text-decoration:n=
one;padding:15px 20px;display:inline-block;font-family:&quot;Open Sans&quot=
;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:17px;font=
-weight:700;line-height:1.2;color:rgb(255,255,255)" target=3D"_blank"> Orde=
r Firewalla Purple </a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bee8" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:20px;vertical-align:middle">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bee9" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05bee7" style=3D"width:600px;vertical-align:middle"=
>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5beea" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td align=3D"center" style=3D"padding:6px 12px">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"font-size:0px;line-height:0;border-top-width:1px;border=
-top-style:solid;border-top-color:rgb(232,235,241)">=C2=A0
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5beec" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:0px 20px;vertical-align:middle">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5beed" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05beeb" style=3D"width:600px;vertical-align:middle"=
>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5beee" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=
=3D"center"><tbody><tr><td style=3D"padding:0px" align=3D"center">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba1387c/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"600" alt=
=3D"" height=3D"397" border=3D"0" src=3D"https://nsx.soundestlink.com/image=
/newsletter/5ea47c2a17f673774d806345" style=3D"height:auto;margin:0px;verti=
cal-align:middle;font-family:Arial,sans-serif;font-size:14px;line-height:1.=
15;width:600px;max-width:100%!important;color:rgb(153,153,153)"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bef0" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:20px;vertical-align:top">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bef1" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05beef" style=3D"width:600px;vertical-align:top">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bef2" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td align=3D"" style=3D"font-family:&quot;Open Sans&quot;,&quot;Helv=
etica Neue&quot;,Helvetica,Arial,sans-serif;font-size:16px;line-height:2;pa=
dding:0px;color:rgb(0,0,0)" bgcolor=3D""><p style=3D"margin:0px;text-align:=
center;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helveti=
ca,Arial,sans-serif"><span style=3D"font-size:24px;font-family:&quot;Open S=
ans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><strong st=
yle=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helveti=
ca,Arial,sans-serif">Firewalla Gold: Multi-Gigabit Cyber Security</strong><=
strong style=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot=
;,Helvetica,Arial,sans-serif"><span style=3D"font-size:14px;font-family:&qu=
ot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">=
=C2=A0</span></strong></span></p><p style=3D"margin:0px;text-align:center;f=
ont-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial=
,sans-serif"><br></p><p style=3D"margin:0px;text-align:center;font-family:&=
quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"=
>4-port Multi-Gigabit Firewall + Router</p><p style=3D"margin:0px;text-alig=
n:center;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helve=
tica,Arial,sans-serif">Full Metal and Fanless Design</p><p style=3D"margin:=
0px;text-align:center;font-family:&quot;Open Sans&quot;,&quot;Helvetica Neu=
e&quot;,Helvetica,Arial,sans-serif">More Advanced Features</p><p style=3D"m=
argin:0px;text-align:center;font-family:&quot;Open Sans&quot;,&quot;Helveti=
ca Neue&quot;,Helvetica,Arial,sans-serif">Same Delightful Experience</p>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bef4" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:0px 20px 20px;vertical-align:middle">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bef5" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05bef3" style=3D"width:600px;vertical-align:middle"=
>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bef6" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"table-layout:fixed"><tbody><tr><td align=3D"center" style=3D"padding:1=
2px" valign=3D"top">
<table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"border:0px=
 solid rgb(84,172,210);border-radius:8px;border-collapse:separate;backgroun=
d-color:rgb(229,16,117)"><tbody><tr>
<td align=3D"center" valign=3D"middle" style=3D"font-family:&quot;Open Sans=
&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:17px=
;font-weight:700;color:rgb(255,255,255)">

 <a href=3D"https://nsx.soundestlink.com/link/64f89776d99f3a05fba1387d/64f8=
11526e1f7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef=
771f0d2e18b1140e775702dbc57c9c059c0b8e527a88a31" style=3D"text-decoration:n=
one;padding:15px 20px;display:inline-block;font-family:&quot;Open Sans&quot=
;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:17px;font=
-weight:700;line-height:1.2;color:rgb(255,255,255)" target=3D"_blank"> Orde=
r Firewalla Gold </a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bf0a" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:0px 24px;vertical-align:middle">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bf0b" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05bf09" style=3D"width:592px;vertical-align:middle"=
>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bf0c" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td align=3D"center" style=3D"padding:0px 12px">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"font-size:0px;line-height:0;border-top-width:1px;border=
-top-style:solid;border-top-color:rgb(232,235,241)">=C2=A0
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bf04" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:25px 20px;vertical-align:top">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bf05" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05bf03" style=3D"width:600px;vertical-align:top">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bf06" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td align=3D"" style=3D"font-family:Arial,sans-serif;font-size:14px;=
line-height:1.15;padding:0px;color:rgb(51,51,51)" bgcolor=3D""><p style=3D"=
text-align:center;margin:0px;font-family:Arial,sans-serif"><span style=3D"f=
ont-size:14px;font-family:Arial,sans-serif"><span style=3D"font-family:&quo=
t;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">An=
y questions, please email us <a style=3D"font-family:&quot;Open Sans&quot;,=
&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;color:rgb(184,49,47)"=
 href=3D"mailto:help@firewalla.com" target=3D"_blank">help@firewalla.com</a=
></span></span></p><p style=3D"text-align:center;margin:0px;font-family:Ari=
al,sans-serif"><span style=3D"font-size:14px;font-family:Arial,sans-serif">=
<span style=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;=
,Helvetica,Arial,sans-serif"><br></span></span></p><p style=3D"text-align:c=
enter;margin:0px;font-family:Arial,sans-serif"><span style=3D"font-size:14p=
x;font-family:Arial,sans-serif"><span style=3D"font-family:&quot;Open Sans&=
quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">or visit our s=
ite <a style=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot=
;,Helvetica,Arial,sans-serif;color:rgb(184,49,47)" href=3D"https://nsx.soun=
destlink.com/link/64f89776d99f3a05fba1387e/64f811526e1f7d491b774f04/628e606=
2f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b1140e775702dbc57c=
9c059c0b8e527a88a31" target=3D"_blank">https://firewalla.com</a></span></sp=
an></p><p style=3D"text-align:center;margin:0px;font-family:Arial,sans-seri=
f"><span style=3D"font-size:14px;font-family:Arial,sans-serif"><span style=
=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif"><br></span></span></p><p style=3D"text-align:center;margi=
n:0px;font-family:Arial,sans-serif"><span style=3D"font-size:14px;font-fami=
ly:Arial,sans-serif"><span style=3D"font-family:&quot;Open Sans&quot;,&quot=
;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">Want to learn more?=C2=A0=
 Here are more ways to follow us</span></span></p><p style=3D"text-align:ce=
nter;margin:0px;font-family:Arial,sans-serif"><span style=3D"font-size:14px=
;font-family:Arial,sans-serif"><span style=3D"font-family:&quot;Open Sans&q=
uot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif"><br></span></sp=
an></p><p style=3D"text-align:center;margin:0px;font-family:Arial,sans-seri=
f"><span style=3D"font-size:14px;font-family:Arial,sans-serif"><span style=
=3D"font-family:&quot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,=
Arial,sans-serif">Reddit: <a style=3D"font-family:&quot;Open Sans&quot;,&qu=
ot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;color:rgb(184,49,47)" hr=
ef=3D"https://nsx.soundestlink.com/link/64f89776d99f3a05fba1387f/64f811526e=
1f7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d=
2e18b1140e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank">https://reddit=
.com/r/firewalla</a></span></span></p><p style=3D"text-align:center;margin:=
0px;font-family:Arial,sans-serif"><span style=3D"font-size:14px;font-family=
:Arial,sans-serif"><span style=3D"font-family:&quot;Open Sans&quot;,&quot;H=
elvetica Neue&quot;,Helvetica,Arial,sans-serif"><br>Facebook: </span><a sty=
le=3D"font-family:Arial,sans-serif;color:rgb(184,49,47)" href=3D"https://ns=
x.soundestlink.com/link/64f89776d99f3a05fba13880/64f811526e1f7d491b774f04/6=
28e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b1140e775702=
dbc57c9c059c0b8e527a88a31" target=3D"_blank"><span style=3D"font-family:&qu=
ot;Open Sans&quot;,&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif">h=
ttps://facebook.com/firewalla</span></a></span></p>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bf08" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td align=3D"center">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0"><tbody><tr></tr></t=
body></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bf07" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td align=3D"" style=3D"font-family:Arial,sans-serif;font-size:14px;=
line-height:1.15;padding:20px 0px 0px;color:rgb(153,153,153)" bgcolor=3D"">=
<p style=3D"text-align:center;margin:0px;font-family:Arial,sans-serif"><a s=
tyle=3D"font-family:Arial,sans-serif;color:rgb(153,153,153)" href=3D"https:=
//nsx.soundestlink.com/contactsPreferences/unsubscribe/?s=3Dc&amp;t=3Demail=
&amp;i=3D64f811526e1f7d491b774f04&amp;b=3D5d38d69d8653ed3ed535aa25&amp;c=3D=
628e6062f49055001dad96be&amp;h=3DwzeGwBYwjT6bJKzPl1GAW6Js0pGLiKnQ" target=
=3D"_blank">Unsubscribe</a></p>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bf0e" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"padding:35px 8px;vertical-align:middle">
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bf0f" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-5377566653539671848m_5146890177100=
67640363d8eb4876382d8dce05bf0d" style=3D"width:624px;vertical-align:middle"=
>
<table id=3D"m_-5377566653539671848m_514689017710067640363d8eb4876382d8dce0=
5bf10" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"624" align=
=3D"center"><tbody><tr><td align=3D"center">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba13881/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"38%" alt=
=3D"logo" height=3D"66" border=3D"0" src=3D"https://nsx.soundestlink.com/im=
age/newsletter/5db2c078b5d9e3110dda3159" style=3D"height:auto;margin:0px;ve=
rtical-align:middle;font-family:Arial,sans-serif;font-size:14px;line-height=
:1.15;max-width:38%!important;color:rgb(153,153,153)"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</div>
</div></div>
_______________________________________________<br>
Rpm mailing list<br>
<a href=3D"mailto:Rpm@lists.bufferbloat.net" target=3D"_blank">Rpm@lists.bu=
fferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/rpm" rel=3D"noreferrer" t=
arget=3D"_blank">https://lists.bufferbloat.net/listinfo/rpm</a><br>
</div><br clear=3D"all"><div><br></div><span class=3D"gmail_signature_prefi=
x">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div>Oct 30: <a href=3D"https://netde=
vconf.info/0x17/news/the-maestro-and-the-music-bof.html" target=3D"_blank">=
https://netdevconf.info/0x17/news/the-maestro-and-the-music-bof.html</a></d=
iv><div>Dave T=C3=A4ht CSO, LibreQos<br></div></div></div></div>

--0000000000001d746c0604b41c4a--

--===============0627118787892441741==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0627118787892441741==--

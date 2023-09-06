Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCFB8B659B
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:45 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5CD0E3D57C;
	Mon, 29 Apr 2024 18:18:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429136;
	bh=EdUYJ53cFmC+L1jSBJ2zfHltOvNls8eF6fuP644RF4Q=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=KCd9ww7ui10/I+thfG3rn+LN/ZXVCiwvTo5tG2+3ZlFcuWayvjfnAbmm+dLqq/fGY
	 U5+DDQ/jgDypEgjwBhOK0d9yQ9/ReLf8yh80TKIIGjkFxBQY4ZGJ/RfndphjO43mXM
	 FHWnysbMewI8v6vkLWyr9QGxlBulSNV1W06o3iopqvXPu7MWqiuJpMmj+Fxg4jTI5z
	 a+C5/fu+6Cbq4d7FYv/a806yzDU0WxI/8A/EI2uCBMO8LPfn4psg12DgkicxbUUQdJ
	 L2EJwvhGV2oCdQ7TxibUFW/+x+YFBoBOKUlag3V3sOmVqSq+3fYa7E3LZqrCAt1CHS
	 cbQVoN9gD5fiQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com
 [IPv6:2607:f8b0:4864:20::836])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AA9E73B2A4
 for <cake@lists.bufferbloat.net>; Wed,  6 Sep 2023 12:08:08 -0400 (EDT)
Received: by mail-qt1-x836.google.com with SMTP id
 d75a77b69052e-4121130e7afso261361cf.2
 for <cake@lists.bufferbloat.net>; Wed, 06 Sep 2023 09:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1694016488; x=1694621288; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=XGcqstRRQhixCuWd1AH9cwrNx3Fs8BX/x+PWsD7J79k=;
 b=Um9fk97R6ecVdfexvVpl3hjVA5gkp4qpo3w2gXXalSowUjbhl/FvoDM3nOztv8ELp8
 cG+aVR02OpW5SGAOLFKgOzDdy/PIJ13sUMys01NdU2cQ2+rlUM2QNA3faQHhetRhg3XU
 OklvCf11j09LXJs59xPI75W9M7kCsOooYy5Cntf/I2/KQTG0KeYjBpH7zPHClJxBL2yH
 O+LmQtTjR/bqiZml78qhkBBEKjsshABvmLKu4ANcnb1UlHDNu+9jOhHDxtjB+etZq69U
 aYA2/G0USYYJhMiHU4Bv7QBEmfBl9AUhJL5eZJyhBLQTN3luNAA9lnY0Kn5ebTStXAM9
 Zmrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1694016488; x=1694621288;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=XGcqstRRQhixCuWd1AH9cwrNx3Fs8BX/x+PWsD7J79k=;
 b=jvb5f6f4vDcVGoLHkcOHhmCciHJUTRZ3WEoHgfkHLmAkM0nKGxFKwHSTY8qpPy+afA
 3TWsxc22rRhGZyj1RRNxwCw0XzmtbWLk9b0WHeTnZ0wc3WiVs5k9QimokXHmuytHcct7
 NZttMT2B3Ngv29TVZiYjBzUH6k10fhDoSpuQOiOHyx5pzRDth8egvjQVyacK8mwqspsV
 vIA56gEy6JziZs3DvOrX6k0B6dOlOG+ziCzAzoKHlJl6fnzGODESggCv4XmrxdCDyk75
 JizADXOpVp0Ckw+7r90i9BtMhTW37d/JJE1Au9X4GA6NOG0wNZfWt+Iq+E/5L7KfOugi
 xZfg==
X-Gm-Message-State: AOJu0Yx1IdgD/ojqS04nNoBWmdqlAyguwQ7ffn5iMGVx/Lh4MgZCoip+
 khjWY2zKJtUUDJYA1DH2MFbZoeWb+X+iWIviz7WKHUYF
X-Google-Smtp-Source: AGHT+IHNs+DEuIhA7xEtDTPe2rRPTPlWaGZ32SC8U/LlCt/gUFlbAGii/PGZDTRs8uq5bqJWEs/TvnvbA3W7Me9vOYE=
X-Received: by 2002:ac8:57d3:0:b0:403:780b:6138 with SMTP id
 w19-20020ac857d3000000b00403780b6138mr20963510qta.2.1694016487730; Wed, 06
 Sep 2023 09:08:07 -0700 (PDT)
MIME-Version: 1.0
References: <20230906151533.8fc69e0bb73ab6e3@firewalla.com>
In-Reply-To: <20230906151533.8fc69e0bb73ab6e3@firewalla.com>
Date: Wed, 6 Sep 2023 18:07:30 +0200
Message-ID: <CAJUtOOjCw95rQD=skMbapsQuVir99OkxA+Fou9=1rf9n=QUKhw@mail.gmail.com>
To: cake@lists.bufferbloat.net
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: [Cake] Fwd: Firewalla App 1.56 Beta (part 1): Wi-Fi Test,
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
From: Frantisek Borsik via Cake <cake@lists.bufferbloat.net>
Reply-To: Frantisek Borsik <frantisek.borsik@gmail.com>
Content-Type: multipart/mixed; boundary="===============3613852337273066106=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3613852337273066106==
Content-Type: multipart/alternative; boundary="000000000000feb1f80604b2f27c"

--000000000000feb1f80604b2f27c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CAKE is in! Great job, Dave.

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
Date: Wed, Sep 6, 2023 at 5:18=E2=80=AFPM
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

--000000000000feb1f80604b2f27c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">CAKE is in! Great job, Dave.<div><br clear=3D"all"><div><d=
iv dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"=
><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"l=
tr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v>All the best,</div><div><br></div><div><p class=3D"MsoNormal" style=3D"co=
lor:rgb(34,34,34)">Frank<u></u><u></u></p><p class=3D"MsoNormal" style=3D"c=
olor:rgb(34,34,34)"><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color=
:rgb(34,34,34)">Frantisek (Frank) Borsik<u></u><u></u></p><p class=3D"MsoNo=
rmal" style=3D"color:rgb(34,34,34)"><u></u>=C2=A0<u></u></p><p class=3D"Mso=
Normal" style=3D"color:rgb(34,34,34)"><a href=3D"https://www.linkedin.com/i=
n/frantisekborsik" style=3D"color:rgb(17,85,204)" target=3D"_blank">https:/=
/www.linkedin.com/in/frantisekborsik</a><u></u><u></u></p><p class=3D"MsoNo=
rmal" style=3D"color:rgb(34,34,34)">Signal, Telegram, WhatsApp: +4219194167=
14=C2=A0<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,3=
4)">iMessage, mobile: +420775230885<u></u><u></u></p><p class=3D"MsoNormal"=
 style=3D"color:rgb(34,34,34)">Skype: casioa5302ca<u></u><u></u></p><p clas=
s=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"mailto:frantisek.b=
orsik@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">frantisek=
.borsik@gmail.com</a></p></div></div></div></div></div></div></div></div></=
div></div></div></div></div><br><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">---------- Forwarded message ---------<br>From: <=
strong class=3D"gmail_sendername" dir=3D"auto">Firewalla</strong> <span dir=
=3D"auto">&lt;<a href=3D"mailto:fire@firewalla.com">fire@firewalla.com</a>&=
gt;</span><br>Date: Wed, Sep 6, 2023 at 5:18=E2=80=AFPM<br>Subject: Firewal=
la App 1.56 Beta (part 1): Wi-Fi Test, CAKE and more<br>To:  &lt;<a href=3D=
"mailto:frantisek.borsik@gmail.com">frantisek.borsik@gmail.com</a>&gt;<br><=
/div><br><br><div class=3D"msg-3338166874632628844"><u></u>










<div id=3D"m_-3338166874632628844body" style=3D"padding:0px;margin:0px"><p =
style=3D"max-height:0;font-size:0;line-height:0;margin:0;overflow:hidden"> =
<img alt=3D"" border=3D"0" src=3D"https://nsx.soundestlink.com/track/64f811=
526e1f7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef77=
1f0d2e18b1140e775702dbc57c9c059c0b8e527a88a31" width=3D"1" height=3D"1"></p=
>
<table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" styl=
e=3D"background-color:#f2f2f2" class=3D"m_-3338166874632628844d"><tbody><tr=
><td>
<table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" styl=
e=3D"min-width:290px"><tbody><tr><td>
<table width=3D"640" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" align=
=3D"center" style=3D"width:640px;margin:0px auto;background-color:#ffffff" =
class=3D"m_-3338166874632628844w"><tbody><tr><td>
<table width=3D"100%" border=3D"0" cellpadding=3D"0" cellspacing=3D"0"><tbo=
dy><tr><td>
<table id=3D"m_-333816687463262884464b6c6ed8e51b75e7bbbece8" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844n m_-3=
338166874632628844xd" style=3D"padding-left:24px;padding-right:24px;padding=
-top:24px;padding-bottom:24px">
<table id=3D"m_-333816687463262884464b6c6ed8e51b75e7bbbece9" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884464b6c6ed8e51b75=
e7bbbecea" class=3D"m_-3338166874632628844w" style=3D"width:296px;vertical-=
align:top">
<table id=3D"m_-333816687463262884464b6cea58e51b75e7bbbf55c" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"296" align=3D"center" class=3D"=
m_-3338166874632628844v"><tbody><tr><td style=3D"padding-top:0px;padding-ri=
ght:0px;padding-bottom:0px;padding-left:0px" align=3D"center">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89775d99f3a05fba13863/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"296" alt=
=3D"" height=3D"167" class=3D"m_-3338166874632628844q" border=3D"0" src=3D"=
https://nsx.soundestlink.com/image/newsletter/648766873c84ae1918046b08" sty=
le=3D"max-width:100%!important;height:auto;margin:0 0;vertical-align:middle=
;font-family:Arial,sans-serif;font-size:14px;color:#999999;line-height:1.15=
;width:296px"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td><td id=3D"m_-333816687463262884464b6c6ed8e51b75e7bbbeceb" class=3D"m_-=
3338166874632628844w" style=3D"width:296px;vertical-align:top">
<table id=3D"m_-333816687463262884464b6c7938e51b75e7bbbf55b" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%" style=3D"word-wrap:anywhe=
re"><tbody><tr><td align=3D"" style=3D"color:#333333;font-family:Open Sans,=
Helvetica Neue,Helvetica,Arial,sans-serif;font-size:14px;line-height:1.5;pa=
dding-top:0px;padding-right:12px;padding-bottom:0px;padding-left:12px" bgco=
lor=3D"" class=3D"m_-3338166874632628844v"><p style=3D"margin-top:0px;margi=
n-bottom:0px"><strong><span style=3D"font-size:20px">Quick News</span></str=
ong></p><p style=3D"margin-top:0px;margin-bottom:0px"><br></p><ul><li style=
=3D"margin-top:0px;margin-right:0px;margin-bottom:0px"><a style=3D"color:#c=
8322d" href=3D"https://nsx.soundestlink.com/link/64f89775d99f3a05fba13864/6=
4f811526e1f7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78f=
def771f0d2e18b1140e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank">Gold =
SE</a> beta wave 1 has shipped. Wave 2 coming soon.</li><li style=3D"margin=
-top:0px;margin-right:0px;margin-bottom:0px" id=3D"m_-3338166874632628844is=
Pasted">The <a style=3D"color:#c8322d" href=3D"https://nsx.soundestlink.com=
/link/64f89776d99f3a05fba13865/64f811526e1f7d491b774f04/628e6062f49055001da=
d96be?signature=3Db60650024ab78fdef771f0d2e18b1140e775702dbc57c9c059c0b8e52=
7a88a31" target=3D"_blank">Firewalla Rack Mount</a> Pre-Sale is on now! Too=
ling going through testing.</li></ul>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05be84" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844n m_-3=
338166874632628844xd" style=3D"padding-left:20px;padding-right:20px;padding=
-top:20px;padding-bottom:20px;vertical-align:top;background-repeat:no-repea=
t;background-size:cover;background-position:unset;background-color:#ffffff"=
>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05be85" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05be83" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:top">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05be86" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%" style=3D"word-wrap:anywhe=
re"><tbody><tr><td align=3D"" style=3D"color:#000000;font-family:Open Sans,=
Helvetica Neue,Helvetica,Arial,sans-serif;font-size:14px;line-height:1.5;pa=
dding-top:0px;padding-right:0px;padding-bottom:20px;padding-left:0px" bgcol=
or=3D"" class=3D"m_-3338166874632628844v"><p style=3D"text-align:left;margi=
n:0px"><span style=3D"font-size:22px"><strong>Firewalla App 1.56 BETA Relea=
se, Part 1<br></strong></span></p><p style=3D"text-align:left;margin:0px"><=
br></p><p style=3D"margin:0px"><span style=3D"font-size:14px"><a style=3D"c=
olor:#d14841" href=3D"https://nsx.soundestlink.com/link/64f89776d99f3a05fba=
13866/64f811526e1f7d491b774f04/628e6062f49055001dad96be?signature=3Db606500=
24ab78fdef771f0d2e18b1140e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank=
"><strong>Firewalla App version 1.56 </strong></a></span><span style=3D"fon=
t-size:14px"><strong>is now available to beta users on iOS and Android!</st=
rong> Here are some of the new features in this update:<br></span></p><p st=
yle=3D"margin:0px"><br></p><ul id=3D"m_-3338166874632628844isPasted"><li id=
=3D"m_-3338166874632628844isPasted">Wi-Fi Performance Test Tool</li><li>Sma=
rt Queue - CAKE (Public Beta)</li><li id=3D"m_-3338166874632628844isPasted"=
>Local Port in Smart Queue Rules</li><li>Server Certificate in AnyConnect</=
li><li>and more ...</li></ul><p style=3D"margin-top:0px;margin-bottom:0px">=
Note that some new features require box version 1.977 or above, currently a=
vailable on Firewalla Gold SE production version, Gold Beta version, Purple=
, Purple SE, and Blue Plus Early Access versions. =C2=A0</p>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884464592aad0847df78d0fee17c" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=3D"center" class=3D"=
m_-3338166874632628844v"><tbody><tr><td style=3D"padding-top:0px;padding-ri=
ght:0px;padding-bottom:0px;padding-left:0px" align=3D"center">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba13867/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"100%" al=
t=3D"" height=3D"338" class=3D"m_-3338166874632628844q" border=3D"0" src=3D=
"https://nsx.soundestlink.com/image/newsletter/64efb159a5f61bb39ebd6695" st=
yle=3D"max-width:100%!important;height:auto;margin:0 0;vertical-align:middl=
e;font-family:Arial,sans-serif;font-size:14px;color:#999999;line-height:1.1=
5"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05be9c" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844n m_-3=
338166874632628844xd" style=3D"padding-left:20px;padding-right:20px;padding=
-top:20px;padding-bottom:20px;vertical-align:top;background-repeat:no-repea=
t;background-size:cover;background-position:unset;background-color:#ffffff"=
>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05be9d" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05be9b" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:top">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05be9e" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%" style=3D"word-wrap:anywhe=
re"><tbody><tr><td align=3D"" style=3D"color:#000000;font-family:Open Sans,=
Helvetica Neue,Helvetica,Arial,sans-serif;font-size:14px;line-height:1.5;pa=
dding-top:0px;padding-right:0px;padding-bottom:12px;padding-left:0px" bgcol=
or=3D"" class=3D"m_-3338166874632628844v"><p style=3D"text-align:left;margi=
n:0px"><strong><span style=3D"font-size:20px">Wi-Fi Test Tool (Requires Box=
 1.977)=C2=A0</span></strong></p><p style=3D"margin-top:0px;margin-bottom:0=
px"><br></p><p id=3D"m_-3338166874632628844isPasted" style=3D"margin-top:0p=
x;margin-bottom:0px">Our new <strong>Wi-Fi Test</strong> tool makes it easy=
 to find the best and worst Wi-Fi spots around your house. When your phone =
is connected to Firewalla=E2=80=99s local network, you can use this feature=
 to test the connection from your phone to your box. You can switch between=
 download, upload, and ping latency tests. For step-by-step instructions, c=
heck out our <a style=3D"color:#d14841" href=3D"https://nsx.soundestlink.co=
m/link/64f89776d99f3a05fba13868/64f811526e1f7d491b774f04/628e6062f49055001d=
ad96be?signature=3Db60650024ab78fdef771f0d2e18b1140e775702dbc57c9c059c0b8e5=
27a88a31" target=3D"_blank">video tutorial</a>.</p><p style=3D"margin-top:0=
px;margin-bottom:0px"><br></p><p style=3D"margin-top:0px;margin-bottom:0px"=
>If you=E2=80=99re connected to the <a style=3D"color:#d14841" href=3D"http=
s://nsx.soundestlink.com/link/64f89776d99f3a05fba13869/64f811526e1f7d491b77=
4f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b1140e=
775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><strong>VPN Server</stro=
ng></a>, the feature will be displayed as <strong>VPN Test</strong> instead=
 of Wi-Fi Test. VPN Test will show you the speed from your phone to your Fi=
rewalla box via VPN.</p>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bea2" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=3D"center" class=3D"=
m_-3338166874632628844v"><tbody><tr><td style=3D"padding:0px" align=3D"cent=
er">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba1386a/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"529" alt=
=3D"" height=3D"549" class=3D"m_-3338166874632628844q" border=3D"0" src=3D"=
https://nsx.soundestlink.com/image/newsletter/64f6b89f5b53ee937b4a5967" sty=
le=3D"max-width:88%!important;height:auto;margin:0 0;vertical-align:middle;=
font-family:Arial,sans-serif;font-size:14px;color:#999999;line-height:1.15;=
width:529px"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-3338166874632628844645932640516ea25745cc8c4" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844n m_-3=
338166874632628844xd" style=3D"padding-left:20px;padding-right:20px;padding=
-top:20px;padding-bottom:20px;vertical-align:top;background-repeat:no-repea=
t;background-size:cover;background-position:unset;background-color:#ffffff"=
>
<table id=3D"m_-3338166874632628844645932640516ea25745cc8c5" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-3338166874632628844645932640516ea2=
5745cc8c6" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:top">
<table id=3D"m_-3338166874632628844645932640516ea25745cc8c7" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%" style=3D"word-wrap:anywhe=
re"><tbody><tr><td align=3D"" style=3D"color:#000000;font-family:Open Sans,=
Helvetica Neue,Helvetica,Arial,sans-serif;font-size:14px;line-height:1.5;pa=
dding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px" bgcolo=
r=3D"" class=3D"m_-3338166874632628844v"><p style=3D"text-align:left;margin=
:0px"><strong><span style=3D"font-size:20px">Smart Queue - CAKE (Public Bet=
a)</span></strong><span style=3D"font-size:14px"><br></span></p><p style=3D=
"margin-top:0px;margin-bottom:0px"><br></p><p id=3D"m_-3338166874632628844i=
sPasted" style=3D"margin-top:0px;margin-bottom:0px">CAKE (Common Applicatio=
ns Kept Enhanced) is a shaping-capable queue discipline which uses both AQM=
 and FQ.</p><p style=3D"margin-top:0px;margin-bottom:0px"><br></p><p style=
=3D"margin-top:0px;margin-bottom:0px">Smart Queue - CAKE is now available f=
or all Gold, Purple, and Purple SE boxes. To switch to CAKE, tap <strong>Sm=
art Queue</strong> on the box&#39;s main screen, tap <strong>Queue Type</st=
rong> -&gt; <strong>CAKE</strong>, and save. For step-by-step instructions,=
 check out our <a style=3D"color:#d14841" href=3D"https://nsx.soundestlink.=
com/link/64f89776d99f3a05fba1386b/64f811526e1f7d491b774f04/628e6062f4905500=
1dad96be?signature=3Db60650024ab78fdef771f0d2e18b1140e775702dbc57c9c059c0b8=
e527a88a31" target=3D"_blank">video tutorial</a>.</p><ul><li>CAKE is best u=
sed with low-speed Internet.=C2=A0</li><li>CAKE is in Public Beta. If you h=
ave any feedback, please post it <a style=3D"color:#d14841" href=3D"https:/=
/nsx.soundestlink.com/link/64f89776d99f3a05fba1386c/64f811526e1f7d491b774f0=
4/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b1140e775=
702dbc57c9c059c0b8e527a88a31" target=3D"_blank">here</a>.</li></ul>
</td></tr></tbody></table>
<table id=3D"m_-3338166874632628844645932640516ea25745cc8c8" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=3D"center" class=3D"=
m_-3338166874632628844v"><tbody><tr><td style=3D"padding:0px" align=3D"cent=
er">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba1386d/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"600" alt=
=3D"" height=3D"376" class=3D"m_-3338166874632628844q" border=3D"0" src=3D"=
https://nsx.soundestlink.com/image/newsletter/64efb4775b53ee937b497d13" sty=
le=3D"max-width:100%!important;height:auto;margin:0 0;vertical-align:middle=
;font-family:Arial,sans-serif;font-size:14px;color:#999999;line-height:1.15=
;width:600px"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-3338166874632628844645934d20516ea25745cd57e" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844n m_-3=
338166874632628844xd" style=3D"padding-left:20px;padding-right:20px;padding=
-top:20px;padding-bottom:20px;vertical-align:top;background-repeat:no-repea=
t;background-size:cover;background-position:unset;background-color:#ffffff"=
>
<table id=3D"m_-3338166874632628844645934d20516ea25745cd57f" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-3338166874632628844645934d20516ea2=
5745cd580" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:top">
<table id=3D"m_-3338166874632628844645934d20516ea25745cd581" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%" style=3D"word-wrap:anywhe=
re"><tbody><tr><td align=3D"" style=3D"color:#000000;font-family:Open Sans,=
Helvetica Neue,Helvetica,Arial,sans-serif;font-size:14px;line-height:1.5;pa=
dding-top:0px;padding-right:0px;padding-bottom:12px;padding-left:0px" bgcol=
or=3D"" class=3D"m_-3338166874632628844v"><p style=3D"text-align:left;margi=
n:0px"><strong><span style=3D"font-size:20px">Local Port in Smart Queue Rul=
es</span></strong></p><p id=3D"m_-3338166874632628844isPasted" style=3D"mar=
gin-top:0px;margin-bottom:0px"><br></p><p id=3D"m_-3338166874632628844isPas=
ted" style=3D"margin-top:0px;margin-bottom:0px">We now support specifying a=
 <strong>Local Port</strong> as the target in <strong>Smart Queue Rules</st=
rong>. Check out our <a style=3D"color:#d14841" href=3D"https://nsx.soundes=
tlink.com/link/64f89776d99f3a05fba1386e/64f811526e1f7d491b774f04/628e6062f4=
9055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b1140e775702dbc57c9c0=
59c0b8e527a88a31" target=3D"_blank">video tutorial</a> for step-by-step ins=
tructions.=C2=A0</p>
</td></tr></tbody></table>
<table id=3D"m_-3338166874632628844645934d20516ea25745cd582" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=3D"center" class=3D"=
m_-3338166874632628844v"><tbody><tr><td style=3D"padding:0px" align=3D"cent=
er">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba1386f/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"600" alt=
=3D"" height=3D"406" class=3D"m_-3338166874632628844q" border=3D"0" src=3D"=
https://nsx.soundestlink.com/image/newsletter/64efb4745b53ee937b497d10" sty=
le=3D"max-width:100%!important;height:auto;margin:0 0;vertical-align:middle=
;font-family:Arial,sans-serif;font-size:14px;color:#999999;line-height:1.15=
;width:600px"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884464efb2d77ce86f322e725212" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844n" sty=
le=3D"padding-left:20px;padding-right:20px;padding-top:20px;padding-bottom:=
0px;vertical-align:top;background-repeat:no-repeat;background-size:cover;ba=
ckground-position:unset;background-color:#ffffff">
<table id=3D"m_-333816687463262884464efb2d77ce86f322e725213" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884464efb2d77ce86f3=
22e725214" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:top">
<table id=3D"m_-333816687463262884464efb2d77ce86f322e725215" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%" style=3D"word-wrap:anywhe=
re"><tbody><tr><td align=3D"" style=3D"color:#000000;font-family:Open Sans,=
Helvetica Neue,Helvetica,Arial,sans-serif;font-size:14px;line-height:1.5;pa=
dding-top:0px;padding-right:0px;padding-bottom:12px;padding-left:0px" bgcol=
or=3D"" class=3D"m_-3338166874632628844v"><p style=3D"text-align:left;margi=
n:0px"><strong><span style=3D"font-size:20px">Server Certificate in AnyConn=
ect</span></strong></p><p id=3D"m_-3338166874632628844isPasted" style=3D"ma=
rgin-top:0px;margin-bottom:0px"><br></p><p id=3D"m_-3338166874632628844isPa=
sted" style=3D"margin-top:0px;margin-bottom:0px">We now support <strong>Ser=
ver Certificate</strong> for <strong>AnyConnect</strong> configurations in =
Firewalla&#39;s <a style=3D"color:#d14841" href=3D"https://nsx.soundestlink=
.com/link/64f89776d99f3a05fba13870/64f811526e1f7d491b774f04/628e6062f490550=
01dad96be?signature=3Db60650024ab78fdef771f0d2e18b1140e775702dbc57c9c059c0b=
8e527a88a31" target=3D"_blank"><strong>VPN Client</strong></a>.</p>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884464efb59d54e541f9d726b99e" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%" class=3D"m_-3338166874632=
628844cq"><tbody><tr><td class=3D"m_-3338166874632628844x m_-33381668746326=
28844i m_-3338166874632628844xd" style=3D"padding-left:20px;padding-right:2=
0px;padding-top:0px;padding-bottom:20px;vertical-align:top;background-repea=
t:no-repeat;background-size:cover;background-position:unset;background-colo=
r:#ffffff">
<table id=3D"m_-333816687463262884464efb59d54e541f9d726b99f" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884464efb59d54e541f=
9d726b9a0" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:top">
<table id=3D"m_-333816687463262884464efb59d54e541f9d726b9a1" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=3D"center" class=3D"=
m_-3338166874632628844v"><tbody><tr><td style=3D"padding:0px" align=3D"cent=
er">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba13871/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"290" alt=
=3D"" height=3D"628" class=3D"m_-3338166874632628844q" border=3D"0" src=3D"=
https://nsx.soundestlink.com/image/newsletter/64efb4728962e06f4d0db444" sty=
le=3D"max-width:48%!important;height:auto;margin:0 0;vertical-align:middle;=
font-family:Arial,sans-serif;font-size:14px;color:#999999;line-height:1.15;=
width:290px"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>

<table id=3D"m_-333816687463262884464efb58954e541f9d726b560" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%" class=3D"m_-3338166874632=
628844c"><tbody><tr><td class=3D"m_-3338166874632628844x m_-333816687463262=
8844i m_-3338166874632628844xd" style=3D"padding-left:20px;padding-right:20=
px;padding-top:0px;padding-bottom:20px;vertical-align:top;background-repeat=
:no-repeat;background-size:cover;background-position:unset;background-color=
:#ffffff">
<table id=3D"m_-333816687463262884464efb58954e541f9d726b561" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884464efb58954e541f=
9d726b562" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:top">
<table id=3D"m_-333816687463262884464efb58954e541f9d726b564" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=3D"center" class=3D"=
m_-3338166874632628844v"><tbody><tr><td style=3D"padding:0px" align=3D"cent=
er">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba13872/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"600" alt=
=3D"" height=3D"1299" class=3D"m_-3338166874632628844q" border=3D"0" src=3D=
"https://nsx.soundestlink.com/image/newsletter/64efb4728962e06f4d0db444" st=
yle=3D"max-width:100%!important;height:auto;margin:0 0;vertical-align:middl=
e;font-family:Arial,sans-serif;font-size:14px;color:#999999;line-height:1.1=
5;width:600px"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-3338166874632628844645936430516ea25745cffcd" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844n" sty=
le=3D"padding-left:20px;padding-right:20px;padding-top:20px;padding-bottom:=
0px;vertical-align:top;background-repeat:no-repeat;background-size:cover;ba=
ckground-position:unset;background-color:#ffffff">
<table id=3D"m_-3338166874632628844645936430516ea25745cffce" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-3338166874632628844645936430516ea2=
5745cffcf" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:top">
<table id=3D"m_-3338166874632628844645936430516ea25745cffd0" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%" style=3D"word-wrap:anywhe=
re"><tbody><tr><td align=3D"" style=3D"color:#000000;font-family:Open Sans,=
Helvetica Neue,Helvetica,Arial,sans-serif;font-size:14px;line-height:1.5;pa=
dding-top:0px;padding-right:0px;padding-bottom:12px;padding-left:0px" bgcol=
or=3D"" class=3D"m_-3338166874632628844v"><p style=3D"text-align:left;margi=
n:0px">This newsletter is a shortened version of our app version 1.56 relea=
se notes. For more details about the features and enhancements in this rele=
ase, read our full <a style=3D"color:#d14841" href=3D"https://nsx.soundestl=
ink.com/link/64f89776d99f3a05fba13873/64f811526e1f7d491b774f04/628e6062f490=
55001dad96be?signature=3Db60650024ab78fdef771f0d2e18b1140e775702dbc57c9c059=
c0b8e527a88a31" target=3D"_blank">Firewalla App 1.56 Release Notes</a>.</p>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05beb8" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844n m_-3=
338166874632628844xd" style=3D"padding-left:20px;padding-right:20px;padding=
-top:20px;padding-bottom:20px;vertical-align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05beb9" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05beb7" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05beba" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td align=3D"c=
enter" style=3D"padding:6px 12px">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"font-size:0;line-height:0;border-top:1px solid #e8ebf1"=
>=C2=A0
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bebc" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i" style=3D"padding-left:20px;=
padding-right:20px;padding-top:0px;padding-bottom:0px;vertical-align:middle=
">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bebd" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05bebb" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bebe" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=3D"center" class=3D"=
m_-3338166874632628844v"><tbody><tr><td style=3D"padding:0px" align=3D"cent=
er">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba13874/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"600" alt=
=3D"" height=3D"375" class=3D"m_-3338166874632628844q" border=3D"0" src=3D"=
https://nsx.soundestlink.com/image/newsletter/62fb1f86d6a40f001b2377f1" sty=
le=3D"max-width:100%!important;height:auto;margin:0 0;vertical-align:middle=
;font-family:Arial,sans-serif;font-size:14px;color:#999999;line-height:1.15=
;width:600px"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bec0" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844n m_-3=
338166874632628844xd" style=3D"padding-left:20px;padding-right:20px;padding=
-top:20px;padding-bottom:20px;vertical-align:top">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bec1" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05bebf" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:top">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bec2" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%" style=3D"word-wrap:anywhe=
re"><tbody><tr><td align=3D"" style=3D"color:#000000;font-family:Open Sans,=
Helvetica Neue,Helvetica,Arial,sans-serif;font-size:16px;line-height:2;padd=
ing-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px" bgcolor=
=3D"" class=3D"m_-3338166874632628844v"><p style=3D"margin:0px;text-align:c=
enter"><strong><span style=3D"font-size:24px">Firewalla Gold Plus</span></s=
trong></p>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bec4" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844xd" st=
yle=3D"padding-left:20px;padding-right:20px;padding-top:0px;padding-bottom:=
20px;vertical-align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bec5" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05bec3" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bec6" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%" style=3D"table-layout:fix=
ed"><tbody><tr><td align=3D"center" class=3D"m_-3338166874632628844v" style=
=3D"padding:12px" valign=3D"top">
<table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"background=
-color:#e51075;border:0px solid #54acd2;border-radius:8px;border-collapse:s=
eparate"><tbody><tr>
<td align=3D"center" valign=3D"middle" style=3D"font-family:Open Sans,Helve=
tica Neue,Helvetica,Arial,sans-serif;font-size:17px;font-weight:700;color:#=
ffffff">

 <a href=3D"https://nsx.soundestlink.com/link/64f89776d99f3a05fba13875/64f8=
11526e1f7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef=
771f0d2e18b1140e775702dbc57c9c059c0b8e527a88a31" style=3D"text-decoration:n=
one;padding-left:20px;padding-right:20px;padding-top:15px;padding-bottom:15=
px;display:inline-block;font-family:Open Sans,Helvetica Neue,Helvetica,Aria=
l,sans-serif;font-size:17px;font-weight:700;color:#ffffff;line-height:1.2" =
target=3D"_blank"> Order Gold Plus </a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bec8" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844n m_-3=
338166874632628844xd" style=3D"padding-left:20px;padding-right:20px;padding=
-top:20px;padding-bottom:20px;vertical-align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bec9" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05bec7" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05beca" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td align=3D"c=
enter" style=3D"padding:6px 12px">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"font-size:0;line-height:0;border-top:1px solid #e8ebf1"=
>=C2=A0
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-3338166874632628844645938f9b6bb717019b5e98f" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i" style=3D"padding-left:20px;=
padding-right:20px;padding-top:0px;padding-bottom:0px;vertical-align:middle=
;background-repeat:no-repeat;background-size:cover;background-position:unse=
t">
<table id=3D"m_-3338166874632628844645938f9b6bb717019b5e990" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-3338166874632628844645938f9b6bb717=
019b5e991" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:middle">
<table id=3D"m_-3338166874632628844645938f9b6bb717019b5e992" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=3D"center" class=3D"=
m_-3338166874632628844v"><tbody><tr><td style=3D"padding:0px" align=3D"cent=
er">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba13876/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"600" alt=
=3D"" height=3D"338" class=3D"m_-3338166874632628844q" border=3D"0" src=3D"=
https://nsx.soundestlink.com/image/newsletter/64593952d6a40f0015b1c576" sty=
le=3D"max-width:100%!important;height:auto;margin:0 0;vertical-align:middle=
;font-family:Arial,sans-serif;font-size:14px;color:#999999;line-height:1.15=
;width:600px"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-3338166874632628844645938fdb6bb717019b5f209" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844xd" st=
yle=3D"padding-left:20px;padding-right:20px;padding-top:0px;padding-bottom:=
20px;vertical-align:middle;background-repeat:no-repeat;background-size:cove=
r;background-position:unset">
<table id=3D"m_-3338166874632628844645938fdb6bb717019b5f20a" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-3338166874632628844645938fdb6bb717=
019b5f20b" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:middle">
<table id=3D"m_-3338166874632628844645938fdb6bb717019b5f20c" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%" style=3D"table-layout:fix=
ed"><tbody><tr><td align=3D"center" class=3D"m_-3338166874632628844v" style=
=3D"padding:12px" valign=3D"top">
<table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"background=
-color:#e51075;border:0px solid #54acd2;border-radius:8px;border-collapse:s=
eparate"><tbody><tr>
<td align=3D"center" valign=3D"middle" style=3D"font-family:Open Sans,Helve=
tica Neue,Helvetica,Arial,sans-serif;font-size:17px;font-weight:700;color:#=
ffffff">

 <a href=3D"https://nsx.soundestlink.com/link/64f89776d99f3a05fba13877/64f8=
11526e1f7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef=
771f0d2e18b1140e775702dbc57c9c059c0b8e527a88a31" style=3D"text-decoration:n=
one;padding-left:20px;padding-right:20px;padding-top:15px;padding-bottom:15=
px;display:inline-block;font-family:Open Sans,Helvetica Neue,Helvetica,Aria=
l,sans-serif;font-size:17px;font-weight:700;color:#ffffff;line-height:1.2" =
target=3D"_blank"> Order Purple SE </a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884464593902b6bb717019b5f646" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844n m_-3=
338166874632628844xd" style=3D"padding-left:20px;padding-right:20px;padding=
-top:20px;padding-bottom:20px;vertical-align:middle">
<table id=3D"m_-333816687463262884464593902b6bb717019b5f647" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884464593902b6bb717=
019b5f648" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:middle">
<table id=3D"m_-333816687463262884464593902b6bb717019b5f649" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td align=3D"c=
enter" style=3D"padding:6px 12px">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"font-size:0;line-height:0;border-top:1px solid #e8ebf1"=
>=C2=A0
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bed0" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844n m_-3=
338166874632628844xd" style=3D"padding-left:20px;padding-right:20px;padding=
-top:20px;padding-bottom:20px;vertical-align:top;background-repeat:no-repea=
t;background-size:cover;background-position:unset">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bed1" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05becf" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:top">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bed2" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%" style=3D"word-wrap:anywhe=
re"><tbody><tr><td align=3D"" style=3D"color:#000000;font-family:Open Sans,=
Helvetica Neue,Helvetica,Arial,sans-serif;font-size:16px;line-height:2;padd=
ing-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px" bgcolor=
=3D"" class=3D"m_-3338166874632628844v"><p style=3D"margin:0px;text-align:c=
enter"><strong><span style=3D"font-size:24px">Firewalla Wi-Fi SD for the Go=
ld</span></strong></p><p style=3D"margin:0px;text-align:center"><strong><sp=
an style=3D"font-size:24px">(Now Shipping!)</span></strong></p><p style=3D"=
margin:0px;text-align:center"><br></p><p style=3D"margin:0px;text-align:cen=
ter">Back up your home/business internet with your phone seamlessly</p>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05becc" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i" style=3D"padding-left:20px;=
padding-right:20px;padding-top:0px;padding-bottom:0px;vertical-align:middle=
">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05becd" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05becb" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bece" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=3D"center" class=3D"=
m_-3338166874632628844v"><tbody><tr><td style=3D"padding:0px" align=3D"cent=
er">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba13878/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"600" alt=
=3D"" height=3D"450" class=3D"m_-3338166874632628844q" border=3D"0" src=3D"=
https://nsx.soundestlink.com/image/newsletter/62a114abd6a40f001de19ed2" sty=
le=3D"max-width:100%!important;height:auto;margin:0 0;vertical-align:middle=
;font-family:Arial,sans-serif;font-size:14px;color:#999999;line-height:1.15=
;width:600px"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bed4" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844xd" st=
yle=3D"padding-left:20px;padding-right:20px;padding-top:0px;padding-bottom:=
20px;vertical-align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bed5" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05bed3" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bed6" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%" style=3D"table-layout:fix=
ed"><tbody><tr><td align=3D"center" class=3D"m_-3338166874632628844v" style=
=3D"padding:12px" valign=3D"top">
<table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"background=
-color:#e51075;border:0px solid #54acd2;border-radius:8px;border-collapse:s=
eparate"><tbody><tr>
<td align=3D"center" valign=3D"middle" style=3D"font-family:Open Sans,Helve=
tica Neue,Helvetica,Arial,sans-serif;font-size:17px;font-weight:700;color:#=
ffffff">

 <a href=3D"https://nsx.soundestlink.com/link/64f89776d99f3a05fba13879/64f8=
11526e1f7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef=
771f0d2e18b1140e775702dbc57c9c059c0b8e527a88a31" style=3D"text-decoration:n=
one;padding-left:20px;padding-right:20px;padding-top:15px;padding-bottom:15=
px;display:inline-block;font-family:Open Sans,Helvetica Neue,Helvetica,Aria=
l,sans-serif;font-size:17px;font-weight:700;color:#ffffff;line-height:1.2" =
target=3D"_blank"> Order Firewalla Wi-Fi SD </a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bed8" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844n m_-3=
338166874632628844xd" style=3D"padding-left:20px;padding-right:20px;padding=
-top:20px;padding-bottom:20px;vertical-align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bed9" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05bed7" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05beda" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td align=3D"c=
enter" style=3D"padding:6px 12px">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"font-size:0;line-height:0;border-top:1px solid #e8ebf1"=
>=C2=A0
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bedc" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i" style=3D"padding-left:20px;=
padding-right:20px;padding-top:0px;padding-bottom:0px;vertical-align:middle=
">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bedd" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05bedb" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bede" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=3D"center" class=3D"=
m_-3338166874632628844v"><tbody><tr><td style=3D"padding:0px" align=3D"cent=
er">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba1387a/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"600" alt=
=3D"" height=3D"316" class=3D"m_-3338166874632628844q" border=3D"0" src=3D"=
https://nsx.soundestlink.com/image/newsletter/60ee4c04bf911556926501cd" sty=
le=3D"max-width:100%!important;height:auto;margin:0 0;vertical-align:middle=
;font-family:Arial,sans-serif;font-size:14px;color:#999999;line-height:1.15=
;width:600px"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bee0" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844n m_-3=
338166874632628844xd" style=3D"padding-left:20px;padding-right:20px;padding=
-top:20px;padding-bottom:20px;vertical-align:top">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bee1" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05bedf" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:top">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bee2" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%" style=3D"word-wrap:anywhe=
re"><tbody><tr><td align=3D"" style=3D"color:#000000;font-family:Open Sans,=
Helvetica Neue,Helvetica,Arial,sans-serif;font-size:16px;line-height:2;padd=
ing-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px" bgcolor=
=3D"" class=3D"m_-3338166874632628844v"><p style=3D"margin:0px;text-align:c=
enter"><span style=3D"font-size:24px"><strong>Firewalla Purple: Gigabit Cyb=
er Security</strong><strong><span style=3D"font-size:14px">=C2=A0</span></s=
trong></span></p><p style=3D"margin:0px;text-align:center"><br></p><p style=
=3D"margin:0px;text-align:center">2-port Gigabit Firewall + Router + WiFi</=
p>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bee4" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844xd" st=
yle=3D"padding-left:20px;padding-right:20px;padding-top:0px;padding-bottom:=
20px;vertical-align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bee5" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05bee3" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bee6" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%" style=3D"table-layout:fix=
ed"><tbody><tr><td align=3D"center" class=3D"m_-3338166874632628844v" style=
=3D"padding:12px" valign=3D"top">
<table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"background=
-color:#e51075;border:0px solid #54acd2;border-radius:8px;border-collapse:s=
eparate"><tbody><tr>
<td align=3D"center" valign=3D"middle" style=3D"font-family:Open Sans,Helve=
tica Neue,Helvetica,Arial,sans-serif;font-size:17px;font-weight:700;color:#=
ffffff">

 <a href=3D"https://nsx.soundestlink.com/link/64f89776d99f3a05fba1387b/64f8=
11526e1f7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef=
771f0d2e18b1140e775702dbc57c9c059c0b8e527a88a31" style=3D"text-decoration:n=
one;padding-left:20px;padding-right:20px;padding-top:15px;padding-bottom:15=
px;display:inline-block;font-family:Open Sans,Helvetica Neue,Helvetica,Aria=
l,sans-serif;font-size:17px;font-weight:700;color:#ffffff;line-height:1.2" =
target=3D"_blank"> Order Firewalla Purple </a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bee8" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844n m_-3=
338166874632628844xd" style=3D"padding-left:20px;padding-right:20px;padding=
-top:20px;padding-bottom:20px;vertical-align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bee9" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05bee7" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05beea" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td align=3D"c=
enter" style=3D"padding:6px 12px">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"font-size:0;line-height:0;border-top:1px solid #e8ebf1"=
>=C2=A0
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05beec" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i" style=3D"padding-left:20px;=
padding-right:20px;padding-top:0px;padding-bottom:0px;vertical-align:middle=
">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05beed" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05beeb" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05beee" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"600" align=3D"center" class=3D"=
m_-3338166874632628844v"><tbody><tr><td style=3D"padding:0px" align=3D"cent=
er">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba1387c/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"600" alt=
=3D"" height=3D"397" class=3D"m_-3338166874632628844q" border=3D"0" src=3D"=
https://nsx.soundestlink.com/image/newsletter/5ea47c2a17f673774d806345" sty=
le=3D"max-width:100%!important;height:auto;margin:0 0;vertical-align:middle=
;font-family:Arial,sans-serif;font-size:14px;color:#999999;line-height:1.15=
;width:600px"></a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bef0" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844n m_-3=
338166874632628844xd" style=3D"padding-left:20px;padding-right:20px;padding=
-top:20px;padding-bottom:20px;vertical-align:top">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bef1" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05beef" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:top">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bef2" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%" style=3D"word-wrap:anywhe=
re"><tbody><tr><td align=3D"" style=3D"color:#000000;font-family:Open Sans,=
Helvetica Neue,Helvetica,Arial,sans-serif;font-size:16px;line-height:2;padd=
ing-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px" bgcolor=
=3D"" class=3D"m_-3338166874632628844v"><p style=3D"margin:0px;text-align:c=
enter"><span style=3D"font-size:24px"><strong>Firewalla Gold: Multi-Gigabit=
 Cyber Security</strong><strong><span style=3D"font-size:14px">=C2=A0</span=
></strong></span></p><p style=3D"margin:0px;text-align:center"><br></p><p s=
tyle=3D"margin:0px;text-align:center">4-port Multi-Gigabit Firewall + Route=
r</p><p style=3D"margin:0px;text-align:center">Full Metal and Fanless Desig=
n</p><p style=3D"margin:0px;text-align:center">More Advanced Features</p><p=
 style=3D"margin:0px;text-align:center">Same Delightful Experience</p>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bef4" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844xd" st=
yle=3D"padding-left:20px;padding-right:20px;padding-top:0px;padding-bottom:=
20px;vertical-align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bef5" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05bef3" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bef6" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%" style=3D"table-layout:fix=
ed"><tbody><tr><td align=3D"center" class=3D"m_-3338166874632628844v" style=
=3D"padding:12px" valign=3D"top">
<table border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"background=
-color:#e51075;border:0px solid #54acd2;border-radius:8px;border-collapse:s=
eparate"><tbody><tr>
<td align=3D"center" valign=3D"middle" style=3D"font-family:Open Sans,Helve=
tica Neue,Helvetica,Arial,sans-serif;font-size:17px;font-weight:700;color:#=
ffffff">

 <a href=3D"https://nsx.soundestlink.com/link/64f89776d99f3a05fba1387d/64f8=
11526e1f7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef=
771f0d2e18b1140e775702dbc57c9c059c0b8e527a88a31" style=3D"text-decoration:n=
one;padding-left:20px;padding-right:20px;padding-top:15px;padding-bottom:15=
px;display:inline-block;font-family:Open Sans,Helvetica Neue,Helvetica,Aria=
l,sans-serif;font-size:17px;font-weight:700;color:#ffffff;line-height:1.2" =
target=3D"_blank"> Order Firewalla Gold </a>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bf0a" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i" style=3D"padding-left:24px;=
padding-right:24px;padding-top:0px;padding-bottom:0px;vertical-align:middle=
">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bf0b" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05bf09" class=3D"m_-3338166874632628844w" style=3D"width:592px;vertical-=
align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bf0c" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td align=3D"c=
enter" style=3D"padding:0px 12px">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbo=
dy><tr><td style=3D"font-size:0;line-height:0;border-top:1px solid #e8ebf1"=
>=C2=A0
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bf04" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844x m_-3338166874632628844i m_-3338166874632628844n m_-3=
338166874632628844xd" style=3D"padding-left:20px;padding-right:20px;padding=
-top:25px;padding-bottom:25px;vertical-align:top">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bf05" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05bf03" class=3D"m_-3338166874632628844w" style=3D"width:600px;vertical-=
align:top">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bf06" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%" style=3D"word-wrap:anywhe=
re"><tbody><tr><td align=3D"" style=3D"color:#333333;font-family:Arial,sans=
-serif;font-size:14px;line-height:1.15;padding-top:0px;padding-right:0px;pa=
dding-bottom:0px;padding-left:0px" bgcolor=3D"" class=3D"m_-333816687463262=
8844v"><p style=3D"text-align:center;margin:0px"><span style=3D"font-size:1=
4px"><span style=3D"font-family:Open Sans,Helvetica Neue,Helvetica,Arial,sa=
ns-serif">Any questions, please email us <a style=3D"color:#b8312f" href=3D=
"mailto:help@firewalla.com" target=3D"_blank">help@firewalla.com</a></span>=
</span></p><p style=3D"text-align:center;margin:0px"><span style=3D"font-si=
ze:14px"><span style=3D"font-family:Open Sans,Helvetica Neue,Helvetica,Aria=
l,sans-serif"><br></span></span></p><p style=3D"text-align:center;margin:0p=
x"><span style=3D"font-size:14px"><span style=3D"font-family:Open Sans,Helv=
etica Neue,Helvetica,Arial,sans-serif">or visit our site <a style=3D"color:=
#b8312f" href=3D"https://nsx.soundestlink.com/link/64f89776d99f3a05fba1387e=
/64f811526e1f7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024ab7=
8fdef771f0d2e18b1140e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank">htt=
ps://firewalla.com</a></span></span></p><p style=3D"text-align:center;margi=
n:0px"><span style=3D"font-size:14px"><span style=3D"font-family:Open Sans,=
Helvetica Neue,Helvetica,Arial,sans-serif"><br></span></span></p><p style=
=3D"text-align:center;margin:0px"><span style=3D"font-size:14px"><span styl=
e=3D"font-family:Open Sans,Helvetica Neue,Helvetica,Arial,sans-serif">Want =
to learn more?=C2=A0 Here are more ways to follow us</span></span></p><p st=
yle=3D"text-align:center;margin:0px"><span style=3D"font-size:14px"><span s=
tyle=3D"font-family:Open Sans,Helvetica Neue,Helvetica,Arial,sans-serif"><b=
r></span></span></p><p style=3D"text-align:center;margin:0px"><span style=
=3D"font-size:14px"><span style=3D"font-family:Open Sans,Helvetica Neue,Hel=
vetica,Arial,sans-serif">Reddit: <a style=3D"color:#b8312f" href=3D"https:/=
/nsx.soundestlink.com/link/64f89776d99f3a05fba1387f/64f811526e1f7d491b774f0=
4/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b1140e775=
702dbc57c9c059c0b8e527a88a31" target=3D"_blank">https://reddit.com/r/firewa=
lla</a></span></span></p><p style=3D"text-align:center;margin:0px"><span st=
yle=3D"font-size:14px"><span style=3D"font-family:Open Sans,Helvetica Neue,=
Helvetica,Arial,sans-serif"><br>Facebook: </span><a style=3D"color:#b8312f"=
 href=3D"https://nsx.soundestlink.com/link/64f89776d99f3a05fba13880/64f8115=
26e1f7d491b774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771=
f0d2e18b1140e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><span style=
=3D"font-family:Open Sans,Helvetica Neue,Helvetica,Arial,sans-serif">https:=
//facebook.com/firewalla</span></a></span></p>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bf08" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td align=3D"c=
enter">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0"><tbody><tr></tr></t=
body></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bf07" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%" style=3D"word-wrap:anywhe=
re"><tbody><tr><td align=3D"" style=3D"color:#999999;font-family:Arial,sans=
-serif;font-size:14px;line-height:1.15;padding-top:20px;padding-right:0px;p=
adding-bottom:0px;padding-left:0px" bgcolor=3D"" class=3D"m_-33381668746326=
28844v"><p style=3D"text-align:center;margin:0px"><a style=3D"color:#999999=
" href=3D"https://nsx.soundestlink.com/contactsPreferences/unsubscribe/?s=
=3Dc&amp;t=3Demail&amp;i=3D64f811526e1f7d491b774f04&amp;b=3D5d38d69d8653ed3=
ed535aa25&amp;c=3D628e6062f49055001dad96be&amp;h=3DwzeGwBYwjT6bJKzPl1GAW6Js=
0pGLiKnQ" target=3D"_blank">Unsubscribe</a></p>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
</td></tr></tbody></table>
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bf0e" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td class=3D"m=
_-3338166874632628844n m_-3338166874632628844xd" style=3D"padding-left:8px;=
padding-right:8px;padding-top:35px;padding-bottom:35px;vertical-align:middl=
e">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bf0f" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"100%"><tbody><tr><td>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" styl=
e=3D"width:100%"><tbody><tr><td id=3D"m_-333816687463262884463d8eb4876382d8=
dce05bf0d" class=3D"m_-3338166874632628844w" style=3D"width:624px;vertical-=
align:middle">
<table id=3D"m_-333816687463262884463d8eb4876382d8dce05bf10" border=3D"0" c=
ellspacing=3D"0" cellpadding=3D"0" width=3D"624" align=3D"center" class=3D"=
m_-3338166874632628844v"><tbody><tr><td align=3D"center">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center" st=
yle=3D"width:100%"><tbody><tr><td style=3D"text-align:center"><a href=3D"ht=
tps://nsx.soundestlink.com/link/64f89776d99f3a05fba13881/64f811526e1f7d491b=
774f04/628e6062f49055001dad96be?signature=3Db60650024ab78fdef771f0d2e18b114=
0e775702dbc57c9c059c0b8e527a88a31" target=3D"_blank"><img width=3D"38%" alt=
=3D"logo" height=3D"66" class=3D"m_-3338166874632628844q" border=3D"0" src=
=3D"https://nsx.soundestlink.com/image/newsletter/5db2c078b5d9e3110dda3159"=
 style=3D"max-width:38%!important;height:auto;margin:0 0;vertical-align:mid=
dle;font-family:Arial,sans-serif;font-size:14px;color:#999999;line-height:1=
.15"></a>
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
</div></div></div></div>

--000000000000feb1f80604b2f27c--

--===============3613852337273066106==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3613852337273066106==--

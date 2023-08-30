Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0193A78E25A
	for <lists+cake@lfdr.de>; Thu, 31 Aug 2023 00:33:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 635D53CB43;
	Wed, 30 Aug 2023 18:33:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1693434785;
	bh=sUNncy4yOtT7366gYwv/tkDk5JIdDy+nhWutHYGOc9E=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=AFYJzdpbWtOsAMTTtYyOEy8jrwQd+6Sn0uXewyrjm+5ZJIuwhKJAMxDfzfGIMkQhJ
	 mdfacwpQGnW5FXbXLCyNQGMGyUpttTwGPpWs2IN15jnFz0FQBnAouVVi9lmQ1nIeBP
	 dNCYwOqzfOqPY/vC1FEPvRvdZmIKRWw2Lx5C345GTlgxWAaXXh79FQ0vmEG/K7kNW1
	 z+xCanttKKmM5bRd0sn4l0pgzwvaEx5l8Yk80on/wfI9BWiX30euFeVswZFmWtfZ7b
	 aOFavSOY2dgpD6f080eXYqdLX5kuj9m3aJascSzydKvpGQGpj011Z9X6e/NNyR2Iwn
	 NtjNuyrRyKcew==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com
 [IPv6:2607:f8b0:4864:20::533])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E0AE43B29E;
 Wed, 30 Aug 2023 18:33:03 -0400 (EDT)
Received: by mail-pg1-x533.google.com with SMTP id
 41be03b00d2f7-564cd28d48dso239772a12.0; 
 Wed, 30 Aug 2023 15:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693434782; x=1694039582; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ZYSjM++XCP0dLImgPOyJ7LqVkOJ0wwCKtmlFlRsbmDI=;
 b=GRMIrO0U8d1UDT1k2MwEhqhTLkY7P+A63zUdpR6eSNApuD6GdT458nb5rfswXSgstJ
 BhvNgcU5HMt3GPwhIqG1L+KLPiuanQbM/7H1UtA6RwlqJCh696lS3MBERoy3qz0NGn2d
 cymrv4IpgIcSotB5iQsh9U+DsWXtLoHKwtT8prI0rbo+CSpzxnbXaY8khy2KMntzVUha
 DBJ6BTpSQpQkUNk27+tlecxlVorD92G48h2KJl4J4+nUy69YLNgLOh07OuFYdjX1yJcU
 LSBEV8UeOhrtROQjNWx0BMUVnWF4UeauC83A3Nw3kbvVHUbNMM3jIg10OpAB5le5Np/Z
 1qcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693434782; x=1694039582;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ZYSjM++XCP0dLImgPOyJ7LqVkOJ0wwCKtmlFlRsbmDI=;
 b=C36OZwTvBJ/qTzm0s3QjoahdTEuKZ9Krvo45BpOn8YIKAu4UvO6R5fcFs5Ep0jUhFY
 XncWavYtNNq/zl2pMf+cRGcTl8Dqd0WL1RjTYNKdw9TsYYBpMsGisPzvNYnu92riiaKg
 oG6TGqbwYNF3kdDfu8V+JZnvey/KZF+0kfGDLSs87x0OAWq83e2vpGFre97DBrwfM72o
 TsoJYxuyK3ddUjXMC9LJZBEMY6CF9S2pT6lmQvJkbfvh7Jz+jC28MtqCQ3ec2lAGuvYT
 deUnE8jX3/PEANJjCZvG7b04viznCByMfIxNs2FmAYywWMt5s8rEb+sqrtHPHOF3Y5Nq
 wuhQ==
X-Gm-Message-State: AOJu0YyUqcsBhkXCxYenxKmK0+baIwSkfhBmor/+2bBxLp135xT7alpP
 MKwTIHHEGrpPQYKztJO5F6CxSEAe/0TOwWQCzFS3dp1O
X-Google-Smtp-Source: AGHT+IHRHENZLgM/XqdwYW6375+4824XJ59/61Ok8gExASjd02GHQQiPyQGld/LdRe5WmrGBoCJWLXfyQr31IaRawU4=
X-Received: by 2002:a17:90a:2e0b:b0:267:7743:9857 with SMTP id
 q11-20020a17090a2e0b00b0026777439857mr3618164pjd.17.1693434782176; Wed, 30
 Aug 2023 15:33:02 -0700 (PDT)
MIME-Version: 1.0
References: <UZCXVWTCWU$UZCWXWXTYYWYC@mail-out.via.act-on.net>
In-Reply-To: <UZCXVWTCWU$UZCWXWXTYYWYC@mail-out.via.act-on.net>
Date: Wed, 30 Aug 2023 15:32:50 -0700
Message-ID: <CAA93jw7uJCyFNMbcYzmnNVfLhxXsxisY1pcqArc2ixNYLC19sA@mail.gmail.com>
To: libreqos <libreqos@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] Fwd: Last Chance: Get the Vilo Wi-Fi 6 Deal Before Prices
 Change on September 1st!
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
Content-Type: multipart/mixed; boundary="===============9199864228258598510=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============9199864228258598510==
Content-Type: multipart/alternative; boundary="000000000000a459c506042b829a"

--000000000000a459c506042b829a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I had no idea the vilo6 was so cheap. I am under the impression it has cake
inside.

---------- Forwarded message ---------
From: Streakwave Wireless <marketing@streakwave.com>
Date: Wed, Aug 30, 2023 at 3:20=E2=80=AFPM
Subject: Last Chance: Get the Vilo Wi-Fi 6 Deal Before Prices Change on
September 1st!
To: Dave Taht <dave.taht@gmail.com>


Don't miss out on seamless, reliable Wi-Fi! Secure the special Vilo Living
offer before it's gone.
Click here to view message in a browser window
<https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62=
f/ct0_0/1/ms?sid=3DTV2%3AsvXzZljot>
Wireless
<https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62=
f/ct1_0/1/lu?sid=3DTV2%3AsvXzZljot>
Networking
<https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62=
f/ct2_0/1/lu?sid=3DTV2%3AsvXzZljot>
VoIP
<https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62=
f/ct3_0/1/lu?sid=3DTV2%3AsvXzZljot>
Surveillance
<https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62=
f/ct4_0/1/lu?sid=3DTV2%3AsvXzZljot>
A/V
<https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62=
f/ct5_0/1/lu?sid=3DTV2%3AsvXzZljot>
[image: Register for webinar]
<https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62=
f/ct6_0/1/lu?sid=3DTV2%3AsvXzZljot>

*Last Chance: Get the Vilo Wi-Fi 6 Deal Before Prices Change on September
1st!*


*Streakwave Brings You a Special Offer From Vilo Living*

With the power of Wi-Fi 6, Vilo 6 can reach ultra-fast speeds all while
handling more than 100 devices from every corner of your subscribers' homes=
.
<https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62=
f/ct7_0/1/lu?sid=3DTV2%3AsvXzZljot>
<https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62=
f/ct8_0/1/lu?sid=3DTV2%3AsvXzZljot>

Vilo 6 Mesh Wi-Fi System
(Single Pack)
<https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62=
f/ct7_1/1/lu?sid=3DTV2%3AsvXzZljot>

$79.99 $69.99 MSRP

Current Customers May Login for an Additional Discount
<https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62=
f/ct7_2/1/lu?sid=3DTV2%3AsvXzZljot>
BUY TODAY
<https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62=
f/ct7_3/1/lu?sid=3DTV2%3AsvXzZljot>

Vilo 6 Mesh Wi-Fi System
(2-Pack)
<https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62=
f/ct8_1/1/lu?sid=3DTV2%3AsvXzZljot>

$154.99 $134.99 MSRP

Current Customers May Login for an Additional Discount
<https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62=
f/ct8_2/1/lu?sid=3DTV2%3AsvXzZljot>
BUY TODAY
<https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62=
f/ct8_3/1/lu?sid=3DTV2%3AsvXzZljot>

*Only available in the United States
*Sale ends August 31, 2023 at 11:59pm Pacific.
<https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62=
f/ct9_0/1/lu?sid=3DTV2%3AsvXzZljot>
<https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62=
f/ct6_1/1/lu?sid=3DTV2%3AsvXzZljot>
<https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62=
f/ct10_0/1/lu?sid=3DTV2%3AsvXzZljot>

Copyright =C2=A9 2023 Streakwave
Our address is 840 Jury CT, San Jose, CA 95112

If you do not wish to receive future email, click here
<http://go.streakwave.com/acton/rif/17746/s-047f-2308/-/l-0012:a62f/l-0012/=
zout?sid=3DTV2%3AsvXzZljot>
.



--=20
Oct 30: https://netdevconf.info/0x17/news/the-maestro-and-the-music-bof.htm=
l
Dave T=C3=A4ht CSO, LibreQos

--000000000000a459c506042b829a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I had no idea the vilo6 was so cheap. I am under the impre=
ssion it has cake inside.=C2=A0<br><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">---------- Forwarded message ---------<br>Fro=
m: <strong class=3D"gmail_sendername" dir=3D"auto">Streakwave Wireless</str=
ong> <span dir=3D"auto">&lt;<a href=3D"mailto:marketing@streakwave.com">mar=
keting@streakwave.com</a>&gt;</span><br>Date: Wed, Aug 30, 2023 at 3:20=E2=
=80=AFPM<br>Subject: Last Chance: Get the Vilo Wi-Fi 6 Deal Before Prices C=
hange on September 1st!<br>To: Dave Taht &lt;<a href=3D"mailto:dave.taht@gm=
ail.com">dave.taht@gmail.com</a>&gt;<br></div><br><br><div class=3D"msg4676=
792008500582645"><u></u>









=09
=09

 =20

=09


<div bgcolor=3D"#EFEFEF" style=3D"background-color:#efefef">

<div style=3D"background-color:#efefef">
	<table border=3D"0" width=3D"100%" height=3D"100%" cellspacing=3D"0" cellp=
adding=3D"0" id=3D"m_4676792008500582645backgroundTable" style=3D"width:100=
%;height:100%"><tbody><tr><td align=3D"center" valign=3D"top" style=3D"widt=
h:100%;height:100%">
		<table width=3D"600" border=3D"0" cellspacing=3D"0" cellpadding=3D"0">

				<tbody><tr><td><div id=3D"m_4676792008500582645previewtext" style=3D"di=
splay:none;font-size:1px;color:#efefef;line-height:1px;max-height:0px;max-w=
idth:0px;opacity:0;overflow:hidden">
					Don&#39;t miss out on seamless, reliable Wi-Fi! Secure the special Vil=
o Living offer before it&#39;s gone.
				</div>
							</td></tr><tr><td width=3D"100%" bgcolor=3D"transparent" style=3D"pa=
dding:0 0 0 0;text-align:center" align=3D"center">

<span style=3D"color:#252525;font-family:Lato,&#39;Lato&#39;,&#39;Helvetica=
 Neue&#39;,Helvetica,Arial,sans-serif;font-size:10px;line-height:125%">
 <table role=3D"presentation" align=3D"center" width=3D"100%" cellspacing=
=3D"0" cellpadding=3D"0" style=3D"color:#252525;font-family:Lato,&#39;Lato&=
#39;,&#39;Helvetica Neue&#39;,Helvetica,Arial,sans-serif;font-size:10px;lin=
e-height:125%">
  <tbody>
   <tr style=3D"color:#252525;font-family:Lato,&#39;Lato&#39;,&#39;Helvetic=
a Neue&#39;,Helvetica,Arial,sans-serif;font-size:10px;line-height:125%">
    <td align=3D"center" style=3D"font-family:Lato,&#39;Lato&#39;,&#39;Helv=
etica Neue&#39;,Helvetica,Arial,sans-serif;line-height:125%;padding:10px 0 =
10px 0;color:#ffffff;font-size:10pt"><a style=3D"color:#58a9e3;font-family:=
Lato,&#39;Lato&#39;,&#39;Helvetica Neue&#39;,Helvetica,Arial,sans-serif;lin=
e-height:125%;text-decoration:none" rel=3D"noopener" id=3D"m_46767920085005=
82645ct0_0" href=3D"https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bc=
t/l-0012/l-0012:a62f/ct0_0/1/ms?sid=3DTV2%3AsvXzZljot" target=3D"_blank">Cl=
ick here to view message in a browser window</a></td>
   </tr>
   <tr style=3D"color:#252525;font-family:Lato,&#39;Lato&#39;,&#39;Helvetic=
a Neue&#39;,Helvetica,Arial,sans-serif;font-size:10px;line-height:125%">
    <td align=3D"center" style=3D"color:#252525;font-family:Lato,&#39;Lato&=
#39;,&#39;Helvetica Neue&#39;,Helvetica,Arial,sans-serif;font-size:10px;lin=
e-height:125%;padding:18px 0 13px 0"><img id=3D"m_4676792008500582645169047=
3930559" width=3D"163" height=3D"49" src=3D"https://go.streakwave.com/cdnr/=
forpci96/acton/attachment/17746/f-27514826-9997-4574-80a7-7e302a1e4abf/1/-/=
-/-/-/streakwave_logo_lp.png?v=3D0" border=3D"0"></td>
   </tr>
   <tr style=3D"color:#252525;font-family:Lato,&#39;Lato&#39;,&#39;Helvetic=
a Neue&#39;,Helvetica,Arial,sans-serif;font-size:10px;line-height:125%">
    <td align=3D"center" style=3D"color:#252525;font-family:Lato,&#39;Lato&=
#39;,&#39;Helvetica Neue&#39;,Helvetica,Arial,sans-serif;font-size:10px;lin=
e-height:125%;padding:8px 0 20px 0">
     <table role=3D"presentation" align=3D"center" cellspacing=3D"0" cellpa=
dding=3D"0" style=3D"color:#252525;font-family:Lato,&#39;Lato&#39;,&#39;Hel=
vetica Neue&#39;,Helvetica,Arial,sans-serif;font-size:10px;line-height:125%=
">
      <tbody>
       <tr style=3D"color:#252525;font-family:Lato,&#39;Lato&#39;,&#39;Helv=
etica Neue&#39;,Helvetica,Arial,sans-serif;font-size:10px;line-height:125%"=
>
        <td style=3D"color:#252525;font-family:Lato,&#39;Lato&#39;,&#39;Hel=
vetica Neue&#39;,Helvetica,Arial,sans-serif;font-size:10px;line-height:125%=
;padding:0 8px 0 8px;text-align:center;text-transform:uppercase"><a style=
=3D"color:#58a9e3;font-family:Lato,&#39;Lato&#39;,&#39;Helvetica Neue&#39;,=
Helvetica,Arial,sans-serif;line-height:125%;font-weight:bold;text-decoratio=
n:none;text-transform:uppercase;font-size:12pt" id=3D"m_4676792008500582645=
ct1_0" href=3D"https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0=
012/l-0012:a62f/ct1_0/1/lu?sid=3DTV2%3AsvXzZljot" target=3D"_blank">Wireles=
s</a></td>
        <td style=3D"color:#252525;font-family:Lato,&#39;Lato&#39;,&#39;Hel=
vetica Neue&#39;,Helvetica,Arial,sans-serif;font-size:10px;line-height:125%=
;padding:0 8px 0 8px;text-align:center;text-transform:uppercase"><a style=
=3D"color:#58a9e3;font-family:Lato,&#39;Lato&#39;,&#39;Helvetica Neue&#39;,=
Helvetica,Arial,sans-serif;line-height:125%;font-weight:bold;text-decoratio=
n:none;text-transform:uppercase;font-size:12pt" id=3D"m_4676792008500582645=
ct2_0" href=3D"https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0=
012/l-0012:a62f/ct2_0/1/lu?sid=3DTV2%3AsvXzZljot" target=3D"_blank">Network=
ing</a></td>
        <td style=3D"color:#252525;font-family:Lato,&#39;Lato&#39;,&#39;Hel=
vetica Neue&#39;,Helvetica,Arial,sans-serif;font-size:10px;line-height:125%=
;padding:0 8px 0 8px;text-align:center;text-transform:uppercase"><a style=
=3D"color:#58a9e3;font-family:Lato,&#39;Lato&#39;,&#39;Helvetica Neue&#39;,=
Helvetica,Arial,sans-serif;line-height:125%;font-weight:bold;text-decoratio=
n:none;text-transform:uppercase;font-size:12pt" id=3D"m_4676792008500582645=
ct3_0" href=3D"https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0=
012/l-0012:a62f/ct3_0/1/lu?sid=3DTV2%3AsvXzZljot" target=3D"_blank">VoIP</a=
></td>
        <td style=3D"color:#252525;font-family:Lato,&#39;Lato&#39;,&#39;Hel=
vetica Neue&#39;,Helvetica,Arial,sans-serif;font-size:10px;line-height:125%=
;padding:0 8px 0 8px;text-align:center;text-transform:uppercase"><a style=
=3D"color:#58a9e3;font-family:Lato,&#39;Lato&#39;,&#39;Helvetica Neue&#39;,=
Helvetica,Arial,sans-serif;line-height:125%;font-weight:bold;text-decoratio=
n:none;text-transform:uppercase;font-size:12pt" id=3D"m_4676792008500582645=
ct4_0" href=3D"https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0=
012/l-0012:a62f/ct4_0/1/lu?sid=3DTV2%3AsvXzZljot" target=3D"_blank">Surveil=
lance</a></td>
        <td style=3D"color:#252525;font-family:Lato,&#39;Lato&#39;,&#39;Hel=
vetica Neue&#39;,Helvetica,Arial,sans-serif;font-size:10px;line-height:125%=
;padding:0 8px 0 8px;text-align:center;text-transform:uppercase"><a style=
=3D"color:#58a9e3;font-family:Lato,&#39;Lato&#39;,&#39;Helvetica Neue&#39;,=
Helvetica,Arial,sans-serif;line-height:125%;font-weight:bold;text-decoratio=
n:none;text-transform:uppercase;font-size:12pt" id=3D"m_4676792008500582645=
ct5_0" href=3D"https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0=
012/l-0012:a62f/ct5_0/1/lu?sid=3DTV2%3AsvXzZljot" target=3D"_blank">A/V</a>=
</td>
       </tr>
      </tbody>
     </table></td>
   </tr>
  </tbody>
 </table></span>

			</td></tr>
		</tbody></table>
	=09
	<table width=3D"600" border=3D"0" cellspacing=3D"0" cellpadding=3D"0">
		<tbody><tr><td width=3D"600" bgcolor=3D"#FFFFFF" valign=3D"top" align=3D"=
left">

		<table width=3D"600" border=3D"0" cellspacing=3D"0" cellpadding=3D"0">
			<tbody><tr><td width=3D"100%" bgcolor=3D"#FFFFFF" valign=3D"top" align=
=3D"suppress" style=3D"padding:0;text-align:suppress"></td></tr>
			<tr><td width=3D"600" bgcolor=3D"#FFFFFF" valign=3D"top" align=3D"left">

				=09
			=09

		=09
	<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%">
=09
	<tbody><tr><td width=3D"100%"><table border=3D"0" cellspacing=3D"0" cellpa=
dding=3D"0" style=3D"border-collapse:collapse" width=3D"600"><tbody><tr><td=
 valign=3D"top" width=3D"600" bgcolor=3D"transparent" style=3D"border-colla=
pse:collapse;box-sizing:border-box;border-top:none;border-right:none;border=
-left:none;border-bottom:none"><table cellspacing=3D"0" cellpadding=3D"0" w=
idth=3D"100%" height=3D"100%" style=3D"width:100%;height:100%;border-collap=
se:separate"><tbody><tr><td valign=3D"top" style=3D"border:0;border-collaps=
e:separate;width:100%;height:100%"><table border=3D"0" cellspacing=3D"0" ce=
llpadding=3D"0" width=3D"100%">

		<tbody><tr><td valign=3D"top" style=3D"padding-top:0px;padding-bottom:0px=
;padding-left:0px;padding-right:0px" id=3D"m_4676792008500582645B1672769679=
882">
			<a name=3D"m_4676792008500582645_B1672769679882"></a>
			<table align=3D"left" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" w=
idth=3D"100%" height=3D"auto" style=3D"font-size:14pt;line-height:150%">
 <tbody>
  <tr style=3D"font-size:14pt;line-height:150%">
   <td style=3D"font-size:14pt;line-height:150%">
    <table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center=
" width=3D"100%" style=3D"font-size:14pt;line-height:150%;table-layout:fixe=
d">
     <tbody>
      <tr style=3D"font-size:14pt;line-height:150%">
       <td style=3D"font-size:0;line-height:100%" align=3D"center"><a style=
=3D"color:#c95c3d;text-decoration:none" id=3D"m_4676792008500582645ct6_0" h=
ref=3D"https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-00=
12:a62f/ct6_0/1/lu?sid=3DTV2%3AsvXzZljot" target=3D"_blank"><img border=3D"=
0" width=3D"600" style=3D"max-width:100%!important;height:auto;display:bloc=
k!important;font-size:12px" alt=3D"Register for webinar" title=3D"Register =
for webinar" src=3D"https://go.streakwave.com/cdnr/forpci96/acton/attachmen=
t/17746/f-c3c3a060-37e0-486e-825b-4db94b22ee0c/2/-/-/-/-/image.jpg" height=
=3D"315"></a></td>
      </tr>
     </tbody>
    </table></td>
  </tr>
 </tbody>
</table>

		</td></tr>
	=09
			</tbody></table></td></tr></tbody></table></td></tr></tbody></table></td=
></tr><tr><td width=3D"100%"><table border=3D"0" cellspacing=3D"0" cellpadd=
ing=3D"0" style=3D"border-collapse:collapse" width=3D"600"><tbody><tr><td v=
align=3D"top" width=3D"600" bgcolor=3D"#C95C3D" style=3D"border-collapse:co=
llapse;box-sizing:border-box;border-top:none;border-right:none;border-left:=
none;border-bottom:none"><table cellspacing=3D"0" cellpadding=3D"0" width=
=3D"100%" height=3D"100%" style=3D"width:100%;height:100%;border-collapse:s=
eparate"><tbody><tr><td valign=3D"top" style=3D"border:0;border-collapse:se=
parate;width:100%;height:100%"><table border=3D"0" cellspacing=3D"0" cellpa=
dding=3D"0" width=3D"100%">

		<tbody><tr><td valign=3D"top" style=3D"padding-top:0px;padding-bottom:0px=
;padding-left:0px;padding-right:0px" id=3D"m_4676792008500582645B1692984583=
616">
			<a name=3D"m_4676792008500582645_B1692984583616"></a>
			<p style=3D"font-size:14pt;text-align:center;line-height:24px"><span sty=
le=3D"font-size:18pt;color:#ffffff"><strong>Last Chance: Get the Vilo Wi-Fi=
 6 Deal Before Prices Change on September 1st!</strong></span></p>

		</td></tr>
	=09
			</tbody></table></td></tr></tbody></table></td></tr></tbody></table></td=
></tr><tr><td width=3D"100%"><table border=3D"0" cellspacing=3D"0" cellpadd=
ing=3D"0" style=3D"border-collapse:collapse" width=3D"600"><tbody><tr><td v=
align=3D"top" width=3D"600" bgcolor=3D"transparent" style=3D"border-collaps=
e:collapse;box-sizing:border-box;border-top:none;border-right:none;border-l=
eft:none;border-bottom:none"><table cellspacing=3D"0" cellpadding=3D"0" wid=
th=3D"100%" height=3D"100%" style=3D"width:100%;height:100%;border-collapse=
:separate"><tbody><tr><td valign=3D"top" style=3D"border:0;border-collapse:=
separate;width:100%;height:100%;padding:0px 25px 25px 25px"><table border=
=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%">

		<tbody><tr><td valign=3D"top" style=3D"padding-top:0px;padding-bottom:0px=
;padding-left:0px;padding-right:0px" id=3D"m_4676792008500582645B1683750322=
849">
			<a name=3D"m_4676792008500582645_B1683750322849"></a>
			<p style=3D"font-size:14pt;text-align:center;line-height:30px"><span sty=
le=3D"font-size:24pt;color:#c95c3d"><strong>Streakwave Brings You a <br>Spe=
cial Offer From Vilo Living</strong></span></p>
<p style=3D"font-size:14pt;line-height:150%;text-align:center">With the pow=
er of Wi-Fi 6, Vilo 6 can reach ultra-fast speeds all while handling more t=
han 100 devices from every corner of your subscribers&#39; homes.</p>

		</td></tr>
	=09
			</tbody></table></td></tr></tbody></table></td></tr></tbody></table></td=
></tr><tr><td width=3D"100%"><table border=3D"0" cellspacing=3D"0" cellpadd=
ing=3D"0" style=3D"border-collapse:collapse" width=3D"600"><tbody><tr><td v=
align=3D"top" width=3D"300" bgcolor=3D"transparent" style=3D"border-collaps=
e:collapse;box-sizing:border-box;border-top:none;border-right:none;border-l=
eft:none;border-bottom:none"><table cellspacing=3D"0" cellpadding=3D"0" wid=
th=3D"100%" height=3D"100%" style=3D"width:100%;height:100%;border-collapse=
:separate"><tbody><tr><td valign=3D"top" style=3D"border:0;border-collapse:=
separate;width:100%;height:100%;padding:0px 13px 0px 25px"><table border=3D=
"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%">

		<tbody><tr><td valign=3D"top" style=3D"padding-top:0px;padding-bottom:0px=
;padding-left:0px;padding-right:0px" id=3D"m_4676792008500582645B1690848412=
536">
			<a name=3D"m_4676792008500582645_B1690848412536"></a>
			<table align=3D"left" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" w=
idth=3D"100%" height=3D"auto" style=3D"font-size:14pt;line-height:150%">
 <tbody>
  <tr style=3D"font-size:14pt;line-height:150%">
   <td style=3D"font-size:14pt;line-height:150%">
    <table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center=
" width=3D"100%" style=3D"font-size:14pt;line-height:150%;table-layout:fixe=
d">
     <tbody>
      <tr style=3D"font-size:14pt;line-height:150%">
       <td style=3D"font-size:0;line-height:100%" align=3D"center"><a style=
=3D"color:#c95c3d;text-decoration:none" id=3D"m_4676792008500582645ct7_0" h=
ref=3D"https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-00=
12:a62f/ct7_0/1/lu?sid=3DTV2%3AsvXzZljot" target=3D"_blank"><img border=3D"=
0" width=3D"262" style=3D"max-width:100%!important;height:auto;display:bloc=
k!important;font-size:12px" alt=3D"" title=3D"" src=3D"https://go.streakwav=
e.com/cdnr/forpci96/acton/attachment/17746/f-ae029be0-a9b4-4d72-a998-c9ad81=
75b58f/2/-/-/-/-/image.jpg" height=3D"262"></a></td>
      </tr>
     </tbody>
    </table></td>
  </tr>
 </tbody>
</table>

		</td></tr>
	=09
			</tbody></table></td></tr></tbody></table></td><td valign=3D"top" width=
=3D"300" bgcolor=3D"transparent" style=3D"border-collapse:collapse;box-sizi=
ng:border-box;border-top:none;border-right:none;border-left:none;border-bot=
tom:none"><table cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" height=
=3D"100%" style=3D"width:100%;height:100%;border-collapse:separate"><tbody>=
<tr><td valign=3D"top" style=3D"border:0;border-collapse:separate;width:100=
%;height:100%;padding:0px 25px 0px 12px"><table border=3D"0" cellspacing=3D=
"0" cellpadding=3D"0" width=3D"100%">

		<tbody><tr><td valign=3D"top" style=3D"padding-top:0px;padding-bottom:0px=
;padding-left:0px;padding-right:0px" id=3D"m_4676792008500582645B1690848425=
698">
			<a name=3D"m_4676792008500582645_B1690848425698"></a>
			<table align=3D"left" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" w=
idth=3D"100%" height=3D"auto" style=3D"font-size:14pt;line-height:150%">
 <tbody>
  <tr style=3D"font-size:14pt;line-height:150%">
   <td style=3D"font-size:14pt;line-height:150%">
    <table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center=
" width=3D"100%" style=3D"font-size:14pt;line-height:150%;table-layout:fixe=
d">
     <tbody>
      <tr style=3D"font-size:14pt;line-height:150%">
       <td style=3D"font-size:0;line-height:100%" align=3D"center"><a style=
=3D"color:#c95c3d;text-decoration:none" id=3D"m_4676792008500582645ct8_0" h=
ref=3D"https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-00=
12:a62f/ct8_0/1/lu?sid=3DTV2%3AsvXzZljot" target=3D"_blank"><img border=3D"=
0" width=3D"263" style=3D"max-width:100%!important;height:auto;display:bloc=
k!important;font-size:12px" alt=3D"" title=3D"" src=3D"https://go.streakwav=
e.com/cdnr/forpci96/acton/attachment/17746/f-d1227f24-b805-4157-9ff2-0f3ab4=
6c7248/2/-/-/-/-/image.jpg" height=3D"263"></a></td>
      </tr>
     </tbody>
    </table></td>
  </tr>
 </tbody>
</table>

		</td></tr>
	=09
			</tbody></table></td></tr></tbody></table></td></tr></tbody></table></td=
></tr><tr><td width=3D"100%"><table border=3D"0" cellspacing=3D"0" cellpadd=
ing=3D"0" style=3D"border-collapse:collapse" width=3D"600"><tbody><tr><td v=
align=3D"top" width=3D"300" bgcolor=3D"transparent" style=3D"border-collaps=
e:collapse;box-sizing:border-box;border-top:none;border-right:none;border-l=
eft:none;border-bottom:none"><table cellspacing=3D"0" cellpadding=3D"0" wid=
th=3D"100%" height=3D"100%" style=3D"width:100%;height:100%;border-collapse=
:separate"><tbody><tr><td valign=3D"top" style=3D"border:0;border-collapse:=
separate;width:100%;height:100%;padding:0px 12px 0px 25px"><table border=3D=
"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%">

		<tbody><tr><td valign=3D"top" style=3D"padding-top:0px;padding-bottom:0px=
;padding-left:0px;padding-right:0px" id=3D"m_4676792008500582645B1684525902=
347">
			<a name=3D"m_4676792008500582645_B1684525902347"></a>
			<p style=3D"font-size:14pt;text-align:center;line-height:12pt"><a style=
=3D"color:#c95c3d;font-size:14pt;font-weight:bold;text-decoration:none!impo=
rtant" id=3D"m_4676792008500582645ct7_1" href=3D"https://go.streakwave.com/=
acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62f/ct7_1/1/lu?sid=3DTV2%3Asv=
XzZljot" target=3D"_blank">Vilo 6 Mesh Wi-Fi System<br><span style=3D"color=
:#ffffff;font-size:12pt">(Single Pack)</span></a></p>
<p style=3D"font-size:14pt;line-height:150%;text-align:center"><span style=
=3D"line-height:150%;font-size:16pt;text-decoration:none"><span style=3D"li=
ne-height:150%;font-size:14pt;color:#7b7b7b;text-decoration:line-through">$=
79.99</span> $69.99 MSRP<br></span><img id=3D"m_467679200850058264516909034=
54698" style=3D"font-size:16pt" src=3D"https://go.streakwave.com/cdnr/forpc=
i96/acton/attachment/17746/f-335c30f3-0335-4609-a407-b484bda46411/2/-/-/-/-=
/image.png?v=3Dundefined" width=3D"125" height=3D"20" border=3D"0"></p>
<p style=3D"font-size:14pt;text-align:center;line-height:12pt"><span style=
=3D"font-size:12pt;text-decoration:none"><a style=3D"color:#c95c3d;text-dec=
oration:none" id=3D"m_4676792008500582645ct7_2" href=3D"https://go.streakwa=
ve.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62f/ct7_2/1/lu?sid=3DT=
V2%3AsvXzZljot" target=3D"_blank">Current Customers May Login for an Additi=
onal Discount</a></span></p>
<table cellspacing=3D"0" cellpadding=3D"5" style=3D"font-size:14pt;line-hei=
ght:150%;margin-top:3px;margin-left:auto;margin-right:auto" align=3D"center=
">
 <tbody>
  <tr style=3D"font-size:14pt;line-height:150%">
   <td style=3D"font-size:14pt;line-height:1;text-align:center;background-c=
olor:#c95c3d;padding:14px 16px;border-radius:0px"><a style=3D"word-break:no=
rmal;word-wrap:normal;text-decoration:none;font-size:14px;font-weight:bold;=
color:#ffffff;font-family:Lato,Helvetica,sans-serif" rel=3D"noopener" id=3D=
"m_4676792008500582645ct7_3" href=3D"https://go.streakwave.com/acton/ct/177=
46/s-047f-2308/Bct/l-0012/l-0012:a62f/ct7_3/1/lu?sid=3DTV2%3AsvXzZljot" tar=
get=3D"_blank">BUY TODAY</a></td>
  </tr>
 </tbody>
</table>

		</td></tr>
	=09
			</tbody></table></td></tr></tbody></table></td><td valign=3D"top" width=
=3D"300" bgcolor=3D"transparent" style=3D"border-collapse:collapse;box-sizi=
ng:border-box;border-top:none;border-right:none;border-left:none;border-bot=
tom:none"><table cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" height=
=3D"100%" style=3D"width:100%;height:100%;border-collapse:separate"><tbody>=
<tr><td valign=3D"top" style=3D"border:0;border-collapse:separate;width:100=
%;height:100%;padding:0px 25px 0px 13px"><table border=3D"0" cellspacing=3D=
"0" cellpadding=3D"0" width=3D"100%">

		<tbody><tr><td valign=3D"top" style=3D"padding-top:0px;padding-bottom:0px=
;padding-left:0px;padding-right:0px" id=3D"m_4676792008500582645B1684525907=
162">
			<a name=3D"m_4676792008500582645_B1684525907162"></a>
			<p style=3D"font-size:14pt;text-align:center;line-height:12pt"><a style=
=3D"color:#c95c3d;font-weight:bold;text-decoration:none!important;font-size=
:14pt" id=3D"m_4676792008500582645ct8_1" href=3D"https://go.streakwave.com/=
acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62f/ct8_1/1/lu?sid=3DTV2%3Asv=
XzZljot" target=3D"_blank">Vilo 6 Mesh Wi-Fi System<br><span style=3D"font-=
size:12pt">(2-Pack)</span></a></p>
<p style=3D"font-size:14pt;line-height:150%;text-align:center"><span style=
=3D"line-height:150%;font-size:16pt;text-decoration:none"><span style=3D"li=
ne-height:150%;font-size:14pt;color:#7b7b7b;text-decoration:line-through">$=
154.99</span> $134.99 MSRP<br></span><span style=3D"line-height:150%;font-s=
ize:16pt;text-decoration:none"><img id=3D"m_4676792008500582645169090345469=
8" src=3D"https://go.streakwave.com/cdnr/forpci96/acton/attachment/17746/f-=
335c30f3-0335-4609-a407-b484bda46411/2/-/-/-/-/image.png?v=3Dundefined" wid=
th=3D"125" height=3D"20" border=3D"0"></span></p>
<p style=3D"font-size:14pt;text-align:center;line-height:12pt"><span style=
=3D"font-size:12pt;text-decoration:none"><a style=3D"color:#c95c3d;text-dec=
oration:none" id=3D"m_4676792008500582645ct8_2" href=3D"https://go.streakwa=
ve.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0012:a62f/ct8_2/1/lu?sid=3DT=
V2%3AsvXzZljot" target=3D"_blank">Current Customers May Login for an Additi=
onal Discount</a></span></p>
<table cellspacing=3D"0" cellpadding=3D"5" style=3D"font-size:14pt;line-hei=
ght:150%;margin-top:3px;margin-left:auto;margin-right:auto" align=3D"center=
">
 <tbody>
  <tr style=3D"font-size:14pt;line-height:150%">
   <td style=3D"font-size:14pt;line-height:1;text-align:center;background-c=
olor:#c95c3d;padding:14px 16px;border-radius:0px"><a style=3D"word-break:no=
rmal;word-wrap:normal;text-decoration:none;font-size:14px;font-weight:bold;=
color:#ffffff;font-family:Lato,Helvetica,sans-serif" rel=3D"noopener" id=3D=
"m_4676792008500582645ct8_3" href=3D"https://go.streakwave.com/acton/ct/177=
46/s-047f-2308/Bct/l-0012/l-0012:a62f/ct8_3/1/lu?sid=3DTV2%3AsvXzZljot" tar=
get=3D"_blank">BUY TODAY</a></td>
  </tr>
 </tbody>
</table>

		</td></tr>
	=09
			</tbody></table></td></tr></tbody></table></td></tr></tbody></table></td=
></tr><tr><td width=3D"100%"><table border=3D"0" cellspacing=3D"0" cellpadd=
ing=3D"0" style=3D"border-collapse:collapse" width=3D"600"><tbody><tr><td v=
align=3D"top" width=3D"600" bgcolor=3D"transparent" style=3D"border-collaps=
e:collapse;box-sizing:border-box;border-top:none;border-right:none;border-l=
eft:none;border-bottom:none"><table cellspacing=3D"0" cellpadding=3D"0" wid=
th=3D"100%" height=3D"100%" style=3D"width:100%;height:100%;border-collapse=
:separate"><tbody><tr><td valign=3D"top" style=3D"border:0;border-collapse:=
separate;width:100%;height:100%;padding:0px 25px 0px 25px"><table border=3D=
"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%">

		<tbody><tr><td valign=3D"top" style=3D"padding-top:0px;padding-bottom:0px=
;padding-left:0px;padding-right:0px" id=3D"m_4676792008500582645B1692122626=
100">
			<a name=3D"m_4676792008500582645_B1692122626100"></a>
			<div style=3D"font-size:14pt;line-height:150%;text-align:center">
 <span style=3D"line-height:150%;font-size:12pt">*Only available in the Uni=
ted States=C2=A0</span>
</div>
<div style=3D"font-size:14pt;line-height:150%;text-align:center">
 <span style=3D"line-height:150%;font-size:12pt">*Sale ends August 31, 2023=
 at 11:59pm Pacific.=C2=A0</span>
</div>

		</td></tr>
	=09
			</tbody></table></td></tr></tbody></table></td></tr></tbody></table></td=
></tr><tr><td width=3D"100%"><table border=3D"0" cellspacing=3D"0" cellpadd=
ing=3D"0" style=3D"border-collapse:collapse" width=3D"600"><tbody><tr><td v=
align=3D"top" width=3D"600" bgcolor=3D"transparent" style=3D"border-collaps=
e:collapse;box-sizing:border-box;border-top:none;border-right:none;border-l=
eft:none;border-bottom:none"><table cellspacing=3D"0" cellpadding=3D"0" wid=
th=3D"100%" height=3D"100%" style=3D"width:100%;height:100%;border-collapse=
:separate"><tbody><tr><td valign=3D"top" style=3D"border:0;border-collapse:=
separate;width:100%;height:100%"><table border=3D"0" cellspacing=3D"0" cell=
padding=3D"0" width=3D"100%">

		<tbody><tr><td valign=3D"top" style=3D"padding-top:0px;padding-bottom:0px=
;padding-left:0px;padding-right:0px" id=3D"m_4676792008500582645B1690849055=
754">
			<a name=3D"m_4676792008500582645_B1690849055754"></a>
			<table align=3D"left" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" w=
idth=3D"100%" height=3D"auto" style=3D"font-size:14pt;line-height:150%">
 <tbody>
  <tr style=3D"font-size:14pt;line-height:150%">
   <td style=3D"font-size:14pt;line-height:150%">
    <table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center=
" width=3D"100%" style=3D"font-size:14pt;line-height:150%;table-layout:fixe=
d">
     <tbody>
      <tr style=3D"font-size:14pt;line-height:150%">
       <td style=3D"font-size:0;line-height:100%" align=3D"center"><a style=
=3D"color:#c95c3d;text-decoration:none" id=3D"m_4676792008500582645ct9_0" h=
ref=3D"https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-00=
12:a62f/ct9_0/1/lu?sid=3DTV2%3AsvXzZljot" target=3D"_blank"><img border=3D"=
0" width=3D"600" style=3D"max-width:100%!important;height:auto;display:bloc=
k!important;font-size:12px" alt=3D"" title=3D"" src=3D"https://go.streakwav=
e.com/cdnr/forpci96/acton/attachment/17746/f-c15f16b1-97fe-4be8-8875-3ee838=
c41bfb/2/-/-/-/-/image.png" height=3D"600"></a></td>
      </tr>
     </tbody>
    </table></td>
  </tr>
 </tbody>
</table>

		</td></tr>
	=09
		<tr><td valign=3D"top" style=3D"padding-top:0px;padding-bottom:0px;paddin=
g-left:0px;padding-right:0px" id=3D"m_4676792008500582645B1690849142531">
			<a name=3D"m_4676792008500582645_B1690849142531"></a>
			<table align=3D"left" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" w=
idth=3D"100%" height=3D"auto" style=3D"font-size:14pt;line-height:150%">
 <tbody>
  <tr style=3D"font-size:14pt;line-height:150%">
   <td style=3D"font-size:14pt;line-height:150%">
    <table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center=
" width=3D"100%" style=3D"font-size:14pt;line-height:150%;table-layout:fixe=
d">
     <tbody>
      <tr style=3D"font-size:14pt;line-height:150%">
       <td style=3D"font-size:0;line-height:100%" align=3D"center"><a style=
=3D"color:#c95c3d;text-decoration:none" id=3D"m_4676792008500582645ct6_1" h=
ref=3D"https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-00=
12:a62f/ct6_1/1/lu?sid=3DTV2%3AsvXzZljot" target=3D"_blank"><img border=3D"=
0" width=3D"600" style=3D"max-width:100%!important;height:auto;display:bloc=
k!important;font-size:12px" alt=3D"" title=3D"" src=3D"https://go.streakwav=
e.com/cdnr/forpci96/acton/attachment/17746/f-ae3183d8-5864-4e25-8f8e-1c49eb=
f0e270/2/-/-/-/-/image.png" height=3D"600"></a></td>
      </tr>
     </tbody>
    </table></td>
  </tr>
 </tbody>
</table>

		</td></tr>
	=09
		<tr><td valign=3D"top" style=3D"padding-top:0px;padding-bottom:0px;paddin=
g-left:0px;padding-right:0px" id=3D"m_4676792008500582645B1690849079798">
			<a name=3D"m_4676792008500582645_B1690849079798"></a>
			<table align=3D"left" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" w=
idth=3D"100%" height=3D"auto" style=3D"font-size:14pt;line-height:150%">
 <tbody>
  <tr style=3D"font-size:14pt;line-height:150%">
   <td style=3D"font-size:14pt;line-height:150%">
    <table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" align=3D"center=
" width=3D"100%" style=3D"font-size:14pt;line-height:150%;table-layout:fixe=
d">
     <tbody>
      <tr style=3D"font-size:14pt;line-height:150%">
       <td style=3D"font-size:0;line-height:100%" align=3D"center"><a style=
=3D"color:#c95c3d;text-decoration:none" id=3D"m_4676792008500582645ct10_0" =
href=3D"https://go.streakwave.com/acton/ct/17746/s-047f-2308/Bct/l-0012/l-0=
012:a62f/ct10_0/1/lu?sid=3DTV2%3AsvXzZljot" target=3D"_blank"><img border=
=3D"0" width=3D"600" style=3D"max-width:100%!important;height:auto;display:=
block!important;font-size:12px" alt=3D"" title=3D"" src=3D"https://go.strea=
kwave.com/cdnr/forpci96/acton/attachment/17746/f-0dc5564e-14b5-4f99-aca2-70=
a3bfaa7c78/2/-/-/-/-/image.png" height=3D"600"></a></td>
      </tr>
     </tbody>
    </table></td>
  </tr>
 </tbody>
</table>

		</td></tr>
	=09
			</tbody></table></td></tr></tbody></table></td></tr></tbody></table></td=
></tr>
=09
	</tbody></table>
=09
</td></tr>
		</tbody></table>
	=09
</td></tr>
	</tbody></table>

		<table width=3D"600" border=3D"0" cellspacing=3D"0" cellpadding=3D"0">
			<tbody><tr><td width=3D"100%" bgcolor=3D"transparent" style=3D"padding:0=
 0 0 0;text-align:center" align=3D"center">

<span style=3D"color:#252525;font-family:Lato,&#39;Lato&#39;,&#39;Helvetica=
 Neue&#39;,Helvetica,Arial,sans-serif;font-size:12px;line-height:125%"><p s=
tyle=3D"color:#252525;font-family:Lato,&#39;Lato&#39;,&#39;Helvetica Neue&#=
39;,Helvetica,Arial,sans-serif;font-size:12px;line-height:125%;text-align:c=
enter">Copyright =C2=A9 2023 Streakwave<br>Our address is 840 Jury CT, San =
Jose, CA 95112<br>=C2=A0<br>If you do not wish to receive future email, <a =
style=3D"color:#58a9e3;text-decoration:none;font-family:Lato,&#39;Lato&#39;=
,&#39;Helvetica Neue&#39;,Helvetica,Arial,sans-serif;font-size:12px;line-he=
ight:125%" href=3D"http://go.streakwave.com/acton/rif/17746/s-047f-2308/-/l=
-0012:a62f/l-0012/zout?sid=3DTV2%3AsvXzZljot" target=3D"_blank">click here<=
/a>.<br><br></p></span>
<img alt=3D"" border=3D"0" src=3D"https://go.streakwave.com/acton/o/17746/s=
-047f-2308/l-0012:a62f/l-0012/UVADTDTDU/endline.gif">
=09
				</td></tr>
		</tbody></table>
	</td></tr></tbody></table>
</div>
</div>

</div></div><br clear=3D"all"><div><br></div><span class=3D"gmail_signature=
_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature" data-smar=
tmail=3D"gmail_signature"><div dir=3D"ltr"><div>Oct 30: <a href=3D"https://=
netdevconf.info/0x17/news/the-maestro-and-the-music-bof.html" target=3D"_bl=
ank">https://netdevconf.info/0x17/news/the-maestro-and-the-music-bof.html</=
a></div><div>Dave T=C3=A4ht CSO, LibreQos<br></div></div></div></div>

--000000000000a459c506042b829a--

--===============9199864228258598510==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============9199864228258598510==--

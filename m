Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AD3AD0085
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:41:18 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B83B13CC1A;
	Fri,  6 Jun 2025 06:40:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749206459;
	bh=4DnOEpqs+v88lFK2ikNAhYtW+EuamLStJb8Abi56oeI=;
	h=Date:In-Reply-To:To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=WSlWVYKnSS+cOWC7nzYolPUWP946AvsbPH57Bx4dtAUJrVHe/rDtbM9UdL4PJvysH
	 VW4+uaEoAzGnP8xe0/ZdCSPzlz+1whOPkLHm+6QdSx2P+IPTK/ItOiRId1paRFye9Z
	 8vA2ReqsDD1DMlnmRaHJRcOsa+ti8VvE3tSfuMcro5cUOzsgRGPAOO/1EIql5dZ7SN
	 FNCPkC/hHaIbEet/FaP0/zySfy8OtjvbFpzCCZoLjdw7W0WevYZ3QFUYGcpIa/WnDJ
	 5bZD51wD8xGOwzFOS8lasNfAb0PKfAtqkW5Uh9OtW9nCYWbq6tiMRbZLj8CHlVxgXv
	 GOE7skD2lXyIg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com
 [IPv6:2607:f8b0:4864:20::833])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D4BF33CB54
 for <cake@lists.bufferbloat.net>; Tue,  1 Apr 2025 14:32:28 -0400 (EDT)
Received: by mail-qt1-x833.google.com with SMTP id
 d75a77b69052e-47677b77725so59885011cf.3
 for <cake@lists.bufferbloat.net>; Tue, 01 Apr 2025 11:32:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=connectivitycap.com; s=google; t=1743532348; x=1744137148;
 darn=lists.bufferbloat.net; 
 h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=F4C3pqb1kFCbgJlsvZVTTj7jQG5blp2TV4sHJdu5toM=;
 b=B9x6+EiIekDqcJb0P5vAHU5mnUJyFZh1Mw3rM+bpKSqY0wCRAQytKQtwjppsgIepN/
 Rla1hetZpxXk0wpX4UhMJYSfJ/cjgr0fHdCMkoOFXB0hqtZrXeTXnv63BwkKdgCN6z3O
 Lwbo6Cw5pV5PbBeDmFCGHfLTVyNZM0Zybk6quKj7hZ24GR0MDwzx3hFQd4kxBMk87jPS
 ZTeUkdJYOTHoLkFccraqKqy4WgYPBDipfg6JxbO3uSfBcjTFJYb73+qv+LvflQ9GdSkG
 eCNBrv7JT6m9ZjMRucqjn7MGUGUPUZz+ecC0bpSBIkNHLgx5okW9/7MAn2ma97pUwbLl
 O+0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743532348; x=1744137148;
 h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=F4C3pqb1kFCbgJlsvZVTTj7jQG5blp2TV4sHJdu5toM=;
 b=byHvJOIO1D0Zwn9oYjOLIkFSDUryTaXs6YYGBlxRF+I/P4JW+jKuLcpec1MsA3oJJQ
 bX8C3+np6gtRZ8jlXbC32G/j5c8BqbUi+JKPGFQflnd/GfejOzdzmQhvtGJm3oJvhbcJ
 Qyn/4oy6uuddzuNO8KVbOv8kRcca8OZsf8pE5+H+mvS3DgZjCpx41ioOyhB3dv0Dgb0m
 PukG84Egkpf70SsIDHuPoSvpbM7RA7Af5ywRabMxUAGQMWoERTP/xAfo+EdMve78P/B+
 xu7ICtNxIRZnTxe0qScBlFbnZD0qhjx7vFY6+GNAcNkj4wXzjjulyCZ6yjOdA5eXlrwg
 FkwQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUOBIx0or7dSt+tRaLW/tyhk6cboamJYeKnJHx4wBeZBVkNjt1pWuCcA+UkSM7H7MHW4Jra@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzGhQbTmJ3Q5UUfsWysOeKmRDRZo6zrbqKm2FXkGiwfUZDNtIzW
 bMK7UAqWRsvjJudmYUIKHtg4z9YuroZONeKdzx8LZH7vJD+TQvLBdOUAUYFzDiA=
X-Gm-Gg: ASbGnctd3uKlGInQj3G/AhD7C1o8UQ7p1CQzM/p7jsVqBZJUD+RRuJn06BGPPXOOL+8
 41RPnGlhq1ssmBFhecPyNz3rAPtg3aRAHtMNkbDPA6ey3LIPusnbzv0tNkwK0gHVQ9UCFbdkug3
 NA3DoWkPPGsCujYj6VJBAMDjbF1G2UPqhO2uyp6nYLdTZViI7pHPsRF2bO2YcQztqzjrgvoXDTl
 I3T2Okv8jHaEwWFjN0wdr2eZkUa2ZCZXPH3CqBNndSwJNqSqEd+LDFVQktWUyz/j59fy5xcQP/S
 i5Pzr1dD/JlmmazWCMGWaaCc8BOe3VDJ/dVL9Gk0NAeeLoMiuKJGyMy0GDPo1LYRxQEPJTnw3uk
 Ggw==
X-Google-Smtp-Source: AGHT+IEnwhiTPM3dv7N/v6j3IxHMHkzjR113IKejdklHDWXbMQ85b0SfEKIAgNNS//UYCl3IUOvSLQ==
X-Received: by 2002:a05:6214:dcd:b0:6e6:683c:1e32 with SMTP id
 6a1803df08f44-6eed5f9156cmr245714256d6.8.1743532348189; 
 Tue, 01 Apr 2025 11:32:28 -0700 (PDT)
Received: from smtpclient.apple ([2600:4040:9d0b:2f00:7c15:1633:3716:9699])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6eec979929dsm64437906d6.94.2025.04.01.11.32.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Apr 2025 11:32:27 -0700 (PDT)
Message-Id: <00BFAAD2-E3B9-42C6-9509-4D2C5D812F3B@connectivitycap.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.500.181.1.5\))
Date: Tue, 1 Apr 2025 14:32:06 -0400
In-Reply-To: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
X-Mailer: Apple Mail (2.3826.500.181.1.5)
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
From: Jim Forster via Cake <cake@lists.bufferbloat.net>
Reply-To: Jim Forster <jim@connectivitycap.com>
Cc: codel-wireless@lists.bufferbloat.net,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 cerowrt-commits@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 =?utf-8?Q?Network_Neutrality_is_back!_Let=C2=B4s_make_the_technical_as?=
 =?utf-8?Q?pects_heard_this_time!?= <nnagain@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, cerowrt-devel@lists.bufferbloat.net,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net, cerowrt-users@lists.bufferbloat.net,
 =?utf-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============2876793591999790750=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============2876793591999790750==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_2CBC3FFB-8D17-499F-9249-42B7890E3807"


--Apple-Mail=_2CBC3FFB-8D17-499F-9249-42B7890E3807
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Wow!  That=E2=80=99s really sad.  Dave was pretty amazing, and I=E2=80=99m=
 glad that we met,  His contributions to the net will continue even =
without him.

  =E2=80=94 Jim

> On Apr 1, 2025, at 1:27=E2=80=AFPM, Frantisek Borsik via Starlink =
<starlink@lists.bufferbloat.net> wrote:
>=20
> Hello to all,
>=20
> We=E2=80=99re devastated to announce that Dave T=C3=A4ht has passed =
away. <https://libreqos.io/2025/04/01/in-loving-memory-of-dave/>
>=20
> Dave was an amazing man, helping the world with FQ-CoDel and CAKE, =
fighting bufferbloat and trying to make the world a better place. Always =
willing to help, and without him =E2=80=93 LibreQoS (and the other QoE =
solutions out there) wouldn=E2=80=99t exist.
>=20
> Dave was an inspiration, and we all miss him. We=E2=80=99re reaching =
out to family and close friends to see if there=E2=80=99s anything we =
can do to help.
>=20
> Dave was an inspiration to us. Dave=E2=80=99s contributions to Linux, =
FQ-CoDel, and CAKE improved internet connectivity around the world for =
millions of people. Because of him, millions of people now have access =
to reliable video calls =E2=80=93 and in turn, access to loved ones, =
healthcare, and community. One of Robert=E2=80=99s ISP customers is a =
kind paraplegic woman who lives in a far-flung rural Colonia around El =
Paso, Texas. Her reliable access to her doctors through telemedicine, =
and to her family through FaceTime, was only made possible because of =
his algorithms. There are millions of cases like hers, where Dave=E2=80=99=
s contributions have silently enabled human connection and safety. =
Everything Dave contributed to the world of technology was free and open =
source, for the betterment of humanity.
>=20
> Dave is the reason that Starlink was able to tackle its latency issues =
=E2=80=93 enabling a generation of young entrepreneurs across the =
developing world, such as these young folks pictured in the Phillipines, =
to start their own ISPs to expand internet access to their communities. =
Dave started work on FQ-CoDel in part because of his own journey working =
to expand internet access in Nicaragua, so we know he saw that his work =
had come full-circle and helped so many.
>=20
> We=E2=80=99re incredibly grateful to have Dave as our friend, mentor, =
and as someone who continuously inspired us =E2=80=93 showing us that we =
could do better for each other in the world, and leverage technology to =
make that happen. He will be dearly missed.
>=20
> PS: Dave is forever in our hearts and souls, in our routers and...in =
production!
> https://github.com/LibreQoE/LibreQoS/pull/684
>  <https://github.com/LibreQoE/LibreQoS/pull/684>
>=20
> All the best,
>=20
> Frank
>=20
> Frantisek (Frank) Borsik
>=20
> =20
>=20
> https://www.linkedin.com/in/frantisekborsik
>=20
> Signal, Telegram, WhatsApp: +421919416714=20
>=20
> iMessage, mobile: +420775230885
>=20
> Skype: casioa5302ca
>=20
> frantisek.borsik@gmail.com =
<mailto:frantisek.borsik@gmail.com>_______________________________________=
________
> Starlink mailing list
> Starlink@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/starlink


--Apple-Mail=_2CBC3FFB-8D17-499F-9249-42B7890E3807
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;">Wow! =
&nbsp;That=E2=80=99s really sad. &nbsp;Dave was pretty amazing, and =
I=E2=80=99m glad that we met, &nbsp;His contributions to the net will =
continue even without him.<div><br></div><div>&nbsp; =E2=80=94 Jim<br =
id=3D"lineBreakAtBeginningOfMessage"><div><br><blockquote =
type=3D"cite"><div>On Apr 1, 2025, at 1:27=E2=80=AFPM, Frantisek Borsik =
via Starlink &lt;starlink@lists.bufferbloat.net&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div><div dir=3D"ltr"><div>Hello to =
all,</div><div><br></div><div><a =
href=3D"https://libreqos.io/2025/04/01/in-loving-memory-of-dave/">We=E2=80=
=99re devastated to announce that Dave T=C3=A4ht has passed =
away.</a><br><br>Dave was an amazing man, helping the world with =
FQ-CoDel and CAKE, fighting bufferbloat and trying to make the world a =
better place. Always willing to help, and without him =E2=80=93 LibreQoS =
(and the other QoE solutions out there) wouldn=E2=80=99t =
exist.<br><br>Dave was an inspiration, and we all miss him. We=E2=80=99re =
reaching out to family and close friends to see if there=E2=80=99s =
anything we can do to help.<br><br>Dave was an inspiration to us. =
Dave=E2=80=99s contributions to Linux, FQ-CoDel, and CAKE improved =
internet connectivity around the world for millions of people. Because =
of him, millions of people now have access to reliable video calls =E2=80=93=
 and in turn, access to loved ones, healthcare, and community. One of =
Robert=E2=80=99s ISP customers is a kind paraplegic woman who lives in a =
far-flung rural Colonia around El Paso, Texas. Her reliable access to =
her doctors through telemedicine, and to her family through FaceTime, =
was only made possible because of his algorithms. There are millions of =
cases like hers, where Dave=E2=80=99s contributions have silently =
enabled human connection and safety. Everything Dave contributed to the =
world of technology was free and open source, for the betterment of =
humanity.<br><br>Dave is the reason that Starlink was able to tackle its =
latency issues =E2=80=93 enabling a generation of young entrepreneurs =
across the developing world, such as these young folks pictured in the =
Phillipines, to start their own ISPs to expand internet access to their =
communities. Dave started work on FQ-CoDel in part because of his own =
journey working to expand internet access in Nicaragua, so we know he =
saw that his work had come full-circle and helped so =
many.<br><br>We=E2=80=99re incredibly grateful to have Dave as our =
friend, mentor, and as someone who continuously inspired us =E2=80=93 =
showing us that we could do better for each other in the world, and =
leverage technology to make that happen. He will be dearly =
missed.<br></div><div><br></div><div><b>PS: </b>Dave is forever in our =
hearts and souls, in our routers and...in production!</div><div><b><a =
href=3D"https://github.com/LibreQoE/LibreQoS/pull/684">https://github.com/=
LibreQoE/LibreQoS/pull/684<br></a></b></div><div><br></div><div><div =
dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div =
dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div =
dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>All the =
best,</div><div><br></div><div><p class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)">Frank<u></u><u></u></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><u></u></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frantisek (Frank) =
Borsik<u></u><u></u></p><p class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)"><u></u>&nbsp;<u></u></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a =
href=3D"https://www.linkedin.com/in/frantisekborsik" =
style=3D"color:rgb(17,85,204)" =
target=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a><u></u><u=
></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Signal, =
Telegram, WhatsApp: +421919416714&nbsp;<u></u><u></u></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessage, mobile: =
+420775230885<u></u><u></u></p><p class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)">Skype: casioa5302ca<u></u><u></u></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a =
href=3D"mailto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,85,204)" =
target=3D"_blank">frantisek.borsik@gmail.com</a></p></div></div></div></di=
v></div></div></div></div></div></div></div></div></div></div>
_______________________________________________<br>Starlink mailing =
list<br>Starlink@lists.bufferbloat.net<br>https://lists.bufferbloat.net/li=
stinfo/starlink<br></div></blockquote></div><br></div></body></html>=

--Apple-Mail=_2CBC3FFB-8D17-499F-9249-42B7890E3807--

--===============2876793591999790750==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2876793591999790750==--

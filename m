Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFC7AE1543
	for <lists+cake@lfdr.de>; Fri, 20 Jun 2025 09:53:31 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3ECBF3CB63;
	Fri, 20 Jun 2025 03:53:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1750406010;
	bh=NE3TwWQkJy2yfA3QHsHw8KTZ1YFQ4OjSJf69yq6iubg=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=WJG6jx8Frx+AlWlPK9NzCIGH01E0Qy9FktdyuWU/CXXHZKqVaFDff8x3ATejfPWyd
	 Te4fC4zjo+XXpX/RMhvIG6XR+dj+i4pkULllst73POEYl2JK89JaYrcratIgHW7iTN
	 a2i4STPiEi4Z2qS4jug3Z3/E2psQfkNweenYiZQALGg+tztTy2f1Goe5/bnkwuInCj
	 Tqq/mzj/jqhqrp3tdTouwcyuNaQIyWXBSMGlCFiuPCPIgzUmOgZvS7GthIYBHYqfnT
	 PBKzzB2nzwP8I9KZm4BIc5OqhImwcg8nvZVPfCbNcJhGfBgGP+Bw/E1jeUW+1G0iV+
	 Ay6AFY3ew4UNQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com
 [IPv6:2607:f8b0:4864:20::531])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 848593B2A4;
 Thu, 19 Jun 2025 18:25:50 -0400 (EDT)
Received: by mail-pg1-x531.google.com with SMTP id
 41be03b00d2f7-b1fd59851baso742987a12.0; 
 Thu, 19 Jun 2025 15:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1750371949; x=1750976749; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=A+zAMPWOADINC5iDyQKv21DNTAAAvpqGTvxwQUbih4g=;
 b=bxN8Hf18L1oxL6s0VkDIFzrMla5ZyI/rF+cEBTSy4mq6kyp1fwQ0ttF0GODo4owX79
 +HS0QY3XImHoukNARcMtSaG0lLqehgXR/oJMPglssMsNdT7NkyORm9Yi8JoQ/QgMcMOU
 8uOdFFRhDKCXHq436NCHlgcMxW1/N/T7gTmXAuV/pnqifTlfLzBYAV531ZOuGzOu81Zm
 EC76grY+ofuGStJFBXBcl9YdIcPPGDtrNsub1fv5XIfVs4htYL9f5ja5vGxfDqM5Bm2v
 2z8HjEPtQgc7hvaWzZO0eSeCiIoj8js+ZkNsSBlOcyfODgh0eXR000KKGGHpmzc6ThBX
 tEZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750371949; x=1750976749;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=A+zAMPWOADINC5iDyQKv21DNTAAAvpqGTvxwQUbih4g=;
 b=FFnD9jiyoWpDHAr7DsEjFlRAMH+gnfdt8WVl7BO/+M+bQ6dL92XPPfWFm+k/y0QQnS
 ma/6qp5gcBz1H7z2NBPr4j6vgWeMWamTO2Ru7qzh5Z1bnR2GguHKDvqhonkIhSS31CEt
 IgQXeo3VrMDCty8ZBcXwpzn/YWaClyC2GAnlZJMtSgNGqU0y7qamGfZRlScsFOnqtiBt
 woCvGeFcdiwvM5xDgv7VsRqgDJrf1Sp+yfL9IfkHMaHqSJ7KAkAtCyQCps0c6+YG1ZqM
 zRqIueYjev8U/o7Bxwj2N/kBqSTgdWnF6VLzDw5djA1HoelkrDd06sS5z3muv1Bf6WD8
 5TQw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUgCeqW++TuhtAEYoJCqgrshh+LVgQN/3ppc4NqQGrUCIRJV9ioMTwh3n9CvWpFKzne8oPl@lists.bufferbloat.net,
 AJvYcCUpuVaAoC0/P8+2FBJRPiIJjHwrZXC1ur8cnTvKL3kXCtSRO6+rKl1PJUZJjX+xlQ9QrCQ+8g==@lists.bufferbloat.net,
 AJvYcCUrikF+K81mT4nrsndjmraObgOArHPeXG/kBuGftp76A3os0Dj7qbIY4345LGSceVIneJGzjv4=@lists.bufferbloat.net,
 AJvYcCXOLMLjLDa2KAr5tP5YG6lcSwaGNYxSNA9pF2QHzR45jGyFIuYAFalIDhhXP1Y9GwvzLrbvk6g=@lists.bufferbloat.net,
 AJvYcCXTrm6yGH11G38Q1c2Vg3h9u6zKOFxq2Hd1x6wsn7Jpk1EQTwQoyF2oC189yWj8m0iCQj8jymQrFVs=@lists.bufferbloat.net,
 AJvYcCXfiIKJy7arD/S1KnGoTP1z1K8LU+krcsiH+tydOccHFx0rScgg1hktNjZblkmf5DlVklsF8Ecm+rGc@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yz2PAjn1aqCG9G3ZARIwwTCjHiv2CQz+GBjr7YeI6uPcDyUR+QX
 FwkDhO/E6hu+IAEqWZWSzQP0lpv/J6u0q1Gbgp94aabS+F5EXK7KuRZxK7arH5LUDusvTQObYgB
 cJu1jDcmPmHCHikPP4/eXshCuUgHqNqA=
X-Gm-Gg: ASbGncutbSidkuPD210J4Lyy3gJSUvxKrhMxtnFlefWHnYYO1A77+mwBOIlgkl7UKXk
 6DGzxK3JYELuh7ZoDrARPuFitN3QDQzvWsKtLM5GktJF+gzJJOwBIg+5cBOm1j9jnD1yyJ6UoKA
 Uf3NEjYTW00J4mOEBvLer717KYuUREg9oIkfznN5iythUCLxEvyGz5+w==
X-Google-Smtp-Source: AGHT+IG9viWzOFGw8AKEsSyW0gQP/YSaWsR+Ul1WC9MA8PAOenEWD1ZBL5ZjSvrbvHzpob4OeLsQ6a9VvL7OzDh+/ns=
X-Received: by 2002:a17:90b:2ec3:b0:312:1cd7:b337 with SMTP id
 98e67ed59e1d1-3159d62c276mr1108534a91.5.1750371949274; Thu, 19 Jun 2025
 15:25:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOh_VSdHr37nmVtTMqBErA5p4dhzpaCS6gGiPowQcms_-Q@mail.gmail.com>
In-Reply-To: <CAJUtOOh_VSdHr37nmVtTMqBErA5p4dhzpaCS6gGiPowQcms_-Q@mail.gmail.com>
Date: Thu, 19 Jun 2025 16:25:37 -0600
X-Gm-Features: Ac12FXxAA33CGWb1nvLe1s7_6EGn81435QE-JYkWDgqc1a_qxM5zKbyJ0xY_2TE
Message-ID: <CAA_JP8X31acErGTjKWgmWP3QED2P7kL=V-CeqMsXKgbo6VhWCA@mail.gmail.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
X-Mailman-Approved-At: Fri, 20 Jun 2025 03:53:29 -0400
Subject: Re: [Cake] [LibreQoS] Please,
 co-sign Dave Taht's nomination for Jonathan B. Postel Service Award
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
From: dan via Cake <cake@lists.bufferbloat.net>
Reply-To: dan <dandenson@gmail.com>
Cc: Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>, l4s-discuss@ietf.org,
 Herbert Wolverson <hwolverson@libreqos.io>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, bloat <bloat@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat-ietf@lists.bufferbloat.net,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============9106519783134614455=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============9106519783134614455==
Content-Type: multipart/alternative; boundary="00000000000042eb270637f43a36"

--00000000000042eb270637f43a36
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

signed

On Thu, Jun 19, 2025 at 2:09=E2=80=AFPM Frantisek Borsik via LibreQoS <
libreqos@lists.bufferbloat.net> wrote:

> Hello to all,
>
> It's my great pleasure to send out this email. Dave's nomination is ready
> to be co-signed *HERE
> <https://docs.google.com/document/d/1hRtD9xE6H9cJGQaKIXHi_f_HpoRNK4-4-lS1=
ZwYacXU/edit?tab=3Dt.0>*
> (Google Docs).
>
> We are also looking for at least 2 (but the more, the better!) people tha=
t
> would be willing to write us letters of recommendation that are needed to
> be attached to the nomination
> <https://wp.apps.internetsociety.org/wp/postel-award/nomination-form/>.
>
> I'm please to announce, that Vint Cerf will be a nominal nominator and we
> all know that Dave will appreciate it as much as we all do!
>
> Looking forward to see co-signees pouring in, as well as volunteers
> willing to write the letter.
>
> *We need to submit it ASAP, the deadline for the nomination is July 11.*
>
> Thank you very much.
>
> PS: In order to learn more about the award, please visit its website
> <https://www.internetsociety.org/grants-and-awards/postel-service-award/#=
timeline>
> .
>
> All the best,
>
> Frank
>
> Frantisek (Frank) Borsik
>
>
> *In loving memory of Dave T=C3=A4ht: *1965-2025
>
> https://libreqos.io/2025/04/01/in-loving-memory-of-dave/
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
> _______________________________________________
> LibreQoS mailing list
> LibreQoS@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/libreqos
>

--00000000000042eb270637f43a36
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">signed</div><br><div class=3D"gmail_quote gmail_quote_cont=
ainer"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 19, 2025 at 2:09=
=E2=80=AFPM Frantisek Borsik via LibreQoS &lt;<a href=3D"mailto:libreqos@li=
sts.bufferbloat.net">libreqos@lists.bufferbloat.net</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>He=
llo to all,</div><div><br></div><div>It&#39;s my great pleasure to send out=
 this email. Dave&#39;s nomination is ready to be co-signed <b><a href=3D"h=
ttps://docs.google.com/document/d/1hRtD9xE6H9cJGQaKIXHi_f_HpoRNK4-4-lS1ZwYa=
cXU/edit?tab=3Dt.0" target=3D"_blank">HERE</a></b> (Google Docs).</div><div=
><br></div><div>We are also looking for at least 2 (but the more, the bette=
r!) people that would be willing to write us letters of recommendation that=
 are needed to be attached to the <a href=3D"https://wp.apps.internetsociet=
y.org/wp/postel-award/nomination-form/" target=3D"_blank">nomination</a>.=
=C2=A0</div><div><br></div><div>I&#39;m please to announce, that Vint Cerf =
will be a nominal nominator and we all know that Dave will appreciate it as=
 much as we all do!</div><div><br></div><div>Looking forward to see co-sign=
ees pouring in, as well as volunteers willing to write the letter.=C2=A0</d=
iv><div><br></div><div><b>We need to submit it ASAP, the deadline for the n=
omination is July 11.</b></div><div><br></div><div>Thank you very much.</di=
v><div><br></div><div>PS: In order to learn more about the award, please vi=
sit its <a href=3D"https://www.internetsociety.org/grants-and-awards/postel=
-service-award/#timeline" target=3D"_blank">website</a>.</div><div><br></di=
v><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><di=
v dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div =
dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>All the best,</div><div>=
<br></div><div><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frank<u=
></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u=
><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frantisek =
(Frank) Borsik<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(3=
4,34,34)"><br></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><b><=
u></u>In loving memory of Dave T=C3=A4ht:=C2=A0</b><span style=3D"color:rgb=
(32,33,36)">1965-2025</span></p><p class=3D"MsoNormal" style=3D"color:rgb(3=
4,34,34)"><u></u><a href=3D"https://libreqos.io/2025/04/01/in-loving-memory=
-of-dave/" target=3D"_blank">https://libreqos.io/2025/04/01/in-loving-memor=
y-of-dave/</a></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><br>=
</p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"https:/=
/www.linkedin.com/in/frantisekborsik" style=3D"color:rgb(17,85,204)" target=
=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a><u></u><u></u></=
p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Signal, Telegram, Wh=
atsApp: +421919416714=C2=A0<u></u><u></u></p><p class=3D"MsoNormal" style=
=3D"color:rgb(34,34,34)">iMessage, mobile: +420775230885<u></u><u></u></p><=
p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Skype: casioa5302ca<u><=
/u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=
=3D"mailto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,85,204)" targe=
t=3D"_blank">frantisek.borsik@gmail.com</a></p></div></div></div></div></di=
v></div></div></div></div></div></div></div></div></div>
_______________________________________________<br>
LibreQoS mailing list<br>
<a href=3D"mailto:LibreQoS@lists.bufferbloat.net" target=3D"_blank">LibreQo=
S@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/libreqos" rel=3D"noreferr=
er" target=3D"_blank">https://lists.bufferbloat.net/listinfo/libreqos</a><b=
r>
</blockquote></div>

--00000000000042eb270637f43a36--

--===============9106519783134614455==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============9106519783134614455==--

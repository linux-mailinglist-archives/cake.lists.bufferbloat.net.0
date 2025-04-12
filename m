Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 05909AD0095
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:41:44 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EA5763D59F;
	Fri,  6 Jun 2025 06:41:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749206460;
	bh=6C4i6UnMSXpUq7JcuZqn0VZPFmZ4FsjUQlmrNGat7IY=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Qqd9xq2uUx5oa3imZMyxyoAMHc+8Qi+pUOOk19OW0w6XHkslQv+GiLhc89ezGASgY
	 /QfrOxRxGbNdG3m2HS3ypmWwk7c/fOl0iszEHqoJHdZE+apdWLmPm1Pdt3W2Dfd0Dl
	 1HvP8V4ajK7T8sRHFk3S65amPQKfc+NkTMPokFzIJue3ROTnbUY8b/9Caiao+Mv2U0
	 0pzBUgrDoxUDRLI19oh8EuKxFUA1yJryU6dKhzyEZUDjpVbQl9e5ypNCZeyKky+dja
	 dBNPf6xU1wwM/O3tgUI5DI2wcux538EnLcPcteKtqFiXPjO9l6din+1hbljVLb4eCx
	 IxoKhqQ19IH7Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 206683B29E
 for <cake@lists.bufferbloat.net>; Sat, 12 Apr 2025 07:12:31 -0400 (EDT)
Received: by mail-pl1-x62b.google.com with SMTP id
 d9443c01a7336-2240aad70f2so139165ad.0
 for <cake@lists.bufferbloat.net>; Sat, 12 Apr 2025 04:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1744456350; x=1745061150;
 darn=lists.bufferbloat.net; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=f5yZfBIt4LcppKWIiY+/0AdswWLA95G7zwERtltTZC4=;
 b=yiiHWGoxYbyUYLFS5aQcFNFuiwM+b/j0egqv+koUMXOD6db056u8XjEJaqzvpfdRbb
 g7uHWap4Uj4U7MhuYdEOPaR9mv14nE/p5YVWgyd9w1DIUnKsofqmbIqAwqom8XO3Db1H
 7qcoKFJz/gGmE48VQ18qyUuivhUjQOtGCYrOPv2yUQ0vmSYBIuZuC7h34XpkD8EVLImn
 61X7hPuPD5URB8jEsiepN64qo/byvkif9XGpTr/+O/nKYA2gXUge7JheWAVPVngLru+K
 SKNy6x/LQdl+h/HbFbWngw5rSAkFc3JiCh2X7gYZjNBVw0C/RlGbJsq7/35gBbrM3/zE
 cRfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744456350; x=1745061150;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=f5yZfBIt4LcppKWIiY+/0AdswWLA95G7zwERtltTZC4=;
 b=IL+XC8DxCVygjoBadfEYR91QdlA1pvos4rhtXLya3yO9M/f0mayvjPin6bWvJRcYWn
 bCLWQD14faONd60diPg37vpS3eCmpyg2sPUxxayS4tgE/okxjgRN7s1a32FpxAkHouOJ
 mqjKWmEBy0aPS3mEu87wE035yPy35QnQ1VQhvmz/AMEJTKGaDEM2aSW1/RswEPeoDLiB
 a4thtAKxcwlhZ0Nx5hw/F1ENihg6B7Dv68KK0sfgu9zztFCpgVIqShBmgA4SqwuHMqhw
 F060Ar4v86J2emXYbtlvKL9cSb5nDYxuuLjp0KSpTNC4Oy0/XTOc3twkkbX1tH/atJmQ
 Rv7g==
X-Forwarded-Encrypted: i=1;
 AJvYcCU9JXwi5B4dSRrqedrgUcg3G+xQp7KzKdMIgTXy5PjmqZLE4Z9xdCtds+6SevmM1DLl1yzG@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwxLiEab6EiBTOFJ4PnW+2SDBcvlbiDDTjMHqAiH5hsIRhg20aG
 Gqyn5ueIvYuKab9M+d/334vbaO1Lr3qUe7xaVBrljJ2MjGRszyMErnnjp5MGurnA0A6wdNn7jFs
 7A4nOizlIhoM2fEmehm1XtG70W7APz/pVG06T
X-Gm-Gg: ASbGncsqrict8mta25Q/NWVLVcMcX5f6hHlY7q6FMtHgIiYRfkEw+G77IR0Tr2klJNP
 NbMtz6zRW2EGG7bv7JrdDmh2z5um1KOlaJ26PDTrw4JiUdg3QrMU5P/BgsvGsVcoJD8HW99FwJA
 W6rS6WvIltMJg9WNYQUgF74nZiyDOAui7fpDd0osIebdAeGiv60MT7reqFWeXD1poAkVQ=
X-Google-Smtp-Source: AGHT+IGQoAd+2DjT5DgDI+gNmQByWImqd0eQwJ4RTPmk393r3sVnfctWU1eJbI2XB7ZJHK2TNI3BXVp7A0po/SY5snE=
X-Received: by 2002:a17:903:185:b0:215:7ced:9d66 with SMTP id
 d9443c01a7336-22bf4472724mr1782295ad.10.1744456343109; Sat, 12 Apr 2025
 04:12:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <014po62q-r99p-71np-52r1-n84n9np63nqr@ynat.uz> <87plhvlyoc.fsf@toke.dk>
 <976DC4FC-44CA-4C7E-90E0-DE39B57F01E1@comcast.com>
 <8DA2934A-43D1-4700-8F32-CA424C3FAE8D@comcast.com>
 <1743623511.52759201@apps.rackspace.com>
 <CAOp4FwR71iS-mijozYr7zzuAhajJeqjzw1bGo1eicNWST76erA@mail.gmail.com>
In-Reply-To: <CAOp4FwR71iS-mijozYr7zzuAhajJeqjzw1bGo1eicNWST76erA@mail.gmail.com>
Date: Sat, 12 Apr 2025 07:12:10 -0400
X-Gm-Features: ATxdqUH440hzgQAgik6z3csttA3XVocWzjrWwLPEcZJwRzbfpbMpBiECnIV3p-0
Message-ID: <CAHxHggcgJT=3SE8FJVnGduE0C0c1hFKu6fHLdnFL2BW5dE1+bw@mail.gmail.com>
To: Loganaden Velvindron <loganaden@gmail.com>
X-Mailman-Approved-At: Fri, 06 Jun 2025 06:40:58 -0400
Subject: Re: [Cake]
	=?utf-8?q?=5BMake-wifi-fast=5D__=5BBloat=5D_In_loving_memo?=
	=?utf-8?q?ry_of_Dave_T=C3=A4ht_=3C3?=
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
From: Vint Cerf via Cake <cake@lists.bufferbloat.net>
Reply-To: Vint Cerf <vint@google.com>
Cc: "cerowrt-users@lists.bufferbloat.net"
 <cerowrt-users@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 "cerowrt-commits@lists.bufferbloat.net"
 <cerowrt-commits@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>, "Livingood,
 Jason" <jason_livingood@comcast.com>,
 "codel-wireless@lists.bufferbloat.net" <codel-wireless@lists.bufferbloat.net>,
 "cerowrt-devel@lists.bufferbloat.net" <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 "bloat-ietf@lists.bufferbloat.net" <bloat-ietf@lists.bufferbloat.net>,
 =?UTF-8?Q?Network_Neutrality_is_back=21_Let=C2=B4s_make_the_technical_aspect?=
 =?UTF-8?Q?s_heard_this_time=21?= <nnagain@lists.bufferbloat.net>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============4039263051204417046=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4039263051204417046==
Content-Type: multipart/alternative; boundary="000000000000a8ce45063292e4fe"

--000000000000a8ce45063292e4fe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

He would be a good candidate for the Postel Award, don't you think?
v


On Sat, Apr 12, 2025 at 5:45=E2=80=AFAM Loganaden Velvindron <loganaden@gma=
il.com>
wrote:

> >
> > 2) I was thinking about how we could get Dave recognized for his
> contributions. Like other unsung heroes, Dave didn't work for BBN or some
> other moneyed entity who would commission a book or a memorial. (BBN paid
> Katie Hafner to write the text that later turned into her book "When
> Wizards Stay Up Late", which oddly only talked about the ARPANET/Internet
> pioneers who worked for BBN, omitting many of my Internet colleagues.)
> Dave wasn't the kind of guy that gets Awards from the Computer History
> Museum or the ACM or IEEE. He wasn't beloved at IETF or ISOC that I know
> of. He's in the category of folks like Noel Chiappa or Bram Cohen or
> Richard Stallman or Aaron Swartz - people I think really changed the way =
we
> think about computing and internetworking, but who won't be in the offici=
al
> histories.
>
> He did not fit in a typical corporate culture especially in his later
> years. He got a certain amount of respect at the
> IETF.
>


--=20
Please send any postal/overnight deliveries to:
Vint Cerf
Google, LLC
1900 Reston Metro Plaza, 16th Floor
Reston, VA 20190
+1 (571) 213 1346


until further notice

--000000000000a8ce45063292e4fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">He would be a good candidate for the Postel Award, don&#39=
;t you think?<div>v</div><div><br></div></div><br><div class=3D"gmail_quote=
 gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr 1=
2, 2025 at 5:45=E2=80=AFAM Loganaden Velvindron &lt;<a href=3D"mailto:logan=
aden@gmail.com">loganaden@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">&gt;<br>
&gt; 2) I was thinking about how we could get Dave recognized for his contr=
ibutions. Like other unsung heroes, Dave didn&#39;t work for BBN or some ot=
her moneyed entity who would commission a book or a memorial. (BBN paid Kat=
ie Hafner to write the text that later turned into her book &quot;When Wiza=
rds Stay Up Late&quot;, which oddly only talked about the ARPANET/Internet =
pioneers who worked for BBN, omitting many of my Internet colleagues.)=C2=
=A0 Dave wasn&#39;t the kind of guy that gets Awards from the Computer Hist=
ory Museum or the ACM or IEEE. He wasn&#39;t beloved at IETF or ISOC that I=
 know of. He&#39;s in the category of folks like Noel Chiappa or Bram Cohen=
 or Richard Stallman or Aaron Swartz - people I think really changed the wa=
y we think about computing and internetworking, but who won&#39;t be in the=
 official histories.<br>
<br>
He did not fit in a typical corporate culture especially in his later<br>
years. He got a certain amount of respect at the<br>
IETF.<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature"><div dir=3D"ltr"><div>Please send any postal/overnight deliveries=
 to:</div><div><div>Vint Cerf</div><div>Google, LLC</div><div>1900 Reston M=
etro Plaza, 16th Floor</div><div>Reston, VA 20190</div><div>+1 (571) 213 13=
46<br></div><div><br style=3D"color:rgb(34,34,34)"></div></div><div><br></d=
iv><div>until further notice</div><div><br></div><div><br></div><div><br></=
div></div></div>

--000000000000a8ce45063292e4fe--

--===============4039263051204417046==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4039263051204417046==--

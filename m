Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBF0A86D49
	for <lists+cake@lfdr.de>; Sat, 12 Apr 2025 15:22:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E544F3CB54;
	Sat, 12 Apr 2025 09:21:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1744464114;
	bh=t9dTviDswLMKDhrNSa0InQd07xHmiqqUfL7/RC3OeGc=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=qGAwK8SE6Q1+iVn+mNnsXXBKvK3HKHFY2wMViymLNlzpCUj9dgAsYHE707xzkXVRF
	 nkVSrTgykZGKrJZF7qzbcjXFu8fobv75D/ipmzhZTwxMiElocXlag3NtlicsBtMFf2
	 PQyu9LUZbNMw/IY5x+I7i9RxjHKyQlIWGXo35cBhehj8uapGLDveBqQFHmrSmGBKgJ
	 sJLTRWi6ZU7FHetpVNhMKk+KovoxyDLZT71dMFm9ZAK4i1uJSD5992ZCot81tvz4Ze
	 BlwVZWn5HdcfVqSwZV0wj1NgIOcpL0zbNijwKIWvETJGE+pGBtA5fK9inGYIfstv56
	 9ZUAL3j6tTyvg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 35C513B29E;
 Sat, 12 Apr 2025 09:21:52 -0400 (EDT)
Received: by mail-ed1-x529.google.com with SMTP id
 4fb4d7f45d1cf-5eb5ecf3217so5070067a12.3; 
 Sat, 12 Apr 2025 06:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1744464111; x=1745068911; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=QYfMFA6pvQUz25Lrp4GjoBXICLvZJm+Fw1i7IRaCZWA=;
 b=Wp5NP80fJGBsIb5S0X22ulX00b0mh73LPn8Rm5heyTf6YM73HHupKZDsLyLyuixYII
 Z+AHTOfsVSvWhazsTWkddvEfszS0FrogwPw4kFLIC/7ESahbmQr8h+XVwIdLg3oWN17C
 GGpdhyy7+ruid4P0ElePstBtUHTB9ApfNBqLNgwFv09e4o+bUa1OaLYLpZr8gr3EaIPq
 xg9PDmMVgx+TJzvFl01jrduRGluQuMkXzlaIc9byi+E+FLLMdZi0rJmHjotkyELvvyid
 3nkFzaK59K/RhKCjEbS2coEhmtibIs1vw8oQIG5A+21CHg2gb9TvEwEFe4NKTD2cxPgO
 s5CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744464111; x=1745068911;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=QYfMFA6pvQUz25Lrp4GjoBXICLvZJm+Fw1i7IRaCZWA=;
 b=ixos45gghxWqR+YR54tSx7kOQ8hRd4BDL8TX2s/w4Tc55W/rppC9jcMeMFx3BH9zJw
 /rBMHo/CE80qFAV+GtTixB9hRXB7/fjeUZ7OQLTz9mn45awEc5lTNkPSuZWW+9KEQIu9
 YYpNp/9kipTRdhM/YN4YbLc32+cfvD23ppsdrjlyxzdOttcse0BqqcHqjDvUDdMjBANH
 62I8EliNUBp1FlbwkDXr7l1Lm5z2dD0qu0uK5ZGtqmekBAq8YP7fRlbW4UuUPmQVn9Qb
 E5dwFVURSPFIwvRau3rHbGOM+yVVNe2b1Cs8Df1+ImAZSly7WQtf1uPLZldwPr5nt4Su
 80fQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUC2U+lGlplPFBJvXckbYaHTsWmSXKu61eL9fqAMp8T6FZ7b0fKsO5MFnmLiMPxzmiQjM4nQY9a7gs=@lists.bufferbloat.net,
 AJvYcCUhOyGFrip7JAu+pIjGh7W7VMLw+ZHY46LCvuv51jZoC8691279y4JSSSt7D2T2V5G28fUXEO9Ftw==@lists.bufferbloat.net,
 AJvYcCUhzFZ5QpwuEs3iEbM7YTXn7zaVOmtum4D4WSCccBXdBSC8ahjgEi6e/MoO0CY0uHPc+F2V@lists.bufferbloat.net,
 AJvYcCVHwoy2GgUBXQjRgSACXCbn/Wwu8nSdDxfdMrmEStwvlfjd2Szw/Igd9ZIF1T1cITFZEpHeF8qkISyy0vk5YI8L@lists.bufferbloat.net,
 AJvYcCVim3TOh8MVfxRcpamKvcbjBw4iz9X/XhKW8+/Z0en+a01RVeaIvpQOlJJvgiu2mxVo+DdDLoM=@lists.bufferbloat.net,
 AJvYcCVnoFVNV7XcXBxZVOdwmgsB7iPJgS2EuRBmwCHvocmwTiBb3rve/Avjv5JkF+dZgUWStWUjIVwkTW/r2+SFEGE=@lists.bufferbloat.net,
 AJvYcCVyPX8gLZTeY7WALDwtlbEGG0hWR5Te3jmHoetYllJFWgGM+KHQvEapLH1BVVHPC8NT/RpeIg==@lists.bufferbloat.net,
 AJvYcCWQ3+eEkJLGjybSRK3bbF5kPDJCGsOsA0x6OSh5FKoDAWv+cNMGc2WtLQ9ZFO7LzptIkG17QmV8MzDzSxnIfDM=@lists.bufferbloat.net,
 AJvYcCWw+8+Sha3+82kMnqdZnSolCNQ+Cg28Mc/97OfJcuApiLlpe4FQuHkXUMrJWPD22JvvKRR+GXdu8iA=@lists.bufferbloat.net,
 AJvYcCXC9e7hCMDdznnw+DLc8UE325ZwnJ3WfPI7CzuyZ9Hb1dmpw8IKK/GAwyPqfI/qmUclO5HYoJvUXHr7IgVtyA==@lists.bufferbloat.net,
 AJvYcCXEa6OI5ssGY8eNd1eH6a1EbP7xMU689BXL+sWV/IU1X3yjp5ovHzzbnXkTYXSfs2hQMEusZjTuzl8u@lists.bufferbloat.net,
 AJvYcCXJO9PmAjSNQYaZKWfuTqI2TThA+cnlxG7LurXNpv8BvU6KtA7V8fi4x4OxLFFIieKYS71BaI8Yt30St7KGTw==@lists.bufferbloat.net,
 AJvYcCXj3mEifOi61FIZY9XTq/soVfCkkufl22zEbwDRkur5x924YP66af9Xp9JHEVbuRD2mwtXECTc=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxRIh96sm2beuhm/8hf1dNi8RRkYlvTqHtqMiLo8JI5PL+fN73T
 kvQlibULI1zo2aO2n3AdN4KZi/PK+pbKTpgQT5TP89Z1xchicmRZIvB+ksDXzKfapsl9DJfzYGf
 37iURjJPU50jVg2k5+y9lkKgHmFk=
X-Gm-Gg: ASbGncsj4/QOqmJuXE+kNIVc7bSyjP9kqy3ubKEZ7dYDxu3R2hdzLxsxUFM2nQ2RI0F
 wWf7XzXerJdoP0LQSE8DQRSlUodWfeQ3tiedvVmHhtou8zYd4Le2TZSppEaeOSXb31LX8BXFfYi
 yMK27AZtCDI5WOwo5WTpJCFfwNBFBMcn8WWA==
X-Google-Smtp-Source: AGHT+IGIQ8sg2hmVDeRPqL4wCnfCEjUMw8AimUzGtDghubFcegFFpLtqTSUAFkNvtKyzHf289cbJVWJdbxPC4oRxtOM=
X-Received: by 2002:a17:907:1c07:b0:ac3:3f11:b49d with SMTP id
 a640c23a62f3a-acad31f535amr588846166b.0.1744464110536; Sat, 12 Apr 2025
 06:21:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <014po62q-r99p-71np-52r1-n84n9np63nqr@ynat.uz> <87plhvlyoc.fsf@toke.dk>
 <976DC4FC-44CA-4C7E-90E0-DE39B57F01E1@comcast.com>
 <8DA2934A-43D1-4700-8F32-CA424C3FAE8D@comcast.com>
 <1743623511.52759201@apps.rackspace.com>
 <CAOp4FwR71iS-mijozYr7zzuAhajJeqjzw1bGo1eicNWST76erA@mail.gmail.com>
 <CAHxHggcgJT=3SE8FJVnGduE0C0c1hFKu6fHLdnFL2BW5dE1+bw@mail.gmail.com>
 <CAOp4FwQ=ZLVw9VfO7wLi=J2-FsvCxdpT=NTVWzkOw=DPzNxPYg@mail.gmail.com>
In-Reply-To: <CAOp4FwQ=ZLVw9VfO7wLi=J2-FsvCxdpT=NTVWzkOw=DPzNxPYg@mail.gmail.com>
Date: Sat, 12 Apr 2025 15:23:57 +0200
X-Gm-Features: ATxdqUEIGEMTlNFBcsmjbW_hW5_z31mfOC1LV6OWZAnfiIFb4yhAFU7GPu5UGxc
Message-ID: <CAJUtOOiGKOLbtQtrTp-5BTZFUg_rwYKt-BzftjerZTg23QuD=A@mail.gmail.com>
To: Loganaden Velvindron <loganaden@gmail.com>
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
From: Frantisek Borsik via Cake <cake@lists.bufferbloat.net>
Reply-To: Frantisek Borsik <frantisek.borsik@gmail.com>
Cc: "cerowrt-users@lists.bufferbloat.net"
 <cerowrt-users@lists.bufferbloat.net>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 "cerowrt-commits@lists.bufferbloat.net"
 <cerowrt-commits@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>, "Livingood,
 Jason" <jason_livingood@comcast.com>,
 "codel-wireless@lists.bufferbloat.net" <codel-wireless@lists.bufferbloat.net>,
 "cerowrt-devel@lists.bufferbloat.net" <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 "bloat-ietf@lists.bufferbloat.net" <bloat-ietf@lists.bufferbloat.net>,
 =?UTF-8?Q?Network_Neutrality_is_back=21_Let=C2=B4s_make_the_technical_aspect?=
 =?UTF-8?Q?s_heard_this_time=21?= <nnagain@lists.bufferbloat.net>,
 Vint Cerf <vint@google.com>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============8575505120677324267=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8575505120677324267==
Content-Type: multipart/alternative; boundary="000000000000a1cfdc063294b3f3"

--000000000000a1cfdc063294b3f3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Lovely. So how we can put it in motion? :) Who would be the best person to
do it?


All the best,

Frank

Frantisek (Frank) Borsik


*In loving memory of Dave T=C3=A4ht: *1965-2025

https://libreqos.io/2025/04/01/in-loving-memory-of-dave/


https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com


On Sat, Apr 12, 2025 at 1:17=E2=80=AFPM Loganaden Velvindron <loganaden@gma=
il.com>
wrote:

> Definitely :-)
>
> On Sat, 12 Apr 2025 at 15:12, Vint Cerf <vint@google.com> wrote:
> >
> > He would be a good candidate for the Postel Award, don't you think?
> > v
> >
> >
> > On Sat, Apr 12, 2025 at 5:45=E2=80=AFAM Loganaden Velvindron <
> loganaden@gmail.com> wrote:
> >>
> >> >
> >> > 2) I was thinking about how we could get Dave recognized for his
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
> >>
> >> He did not fit in a typical corporate culture especially in his later
> >> years. He got a certain amount of respect at the
> >> IETF.
> >
> >
> >
> > --
> > Please send any postal/overnight deliveries to:
> > Vint Cerf
> > Google, LLC
> > 1900 Reston Metro Plaza, 16th Floor
> > Reston, VA 20190
> > +1 (571) 213 1346
> >
> >
> > until further notice
> >
> >
> >
>

--000000000000a1cfdc063294b3f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Lovely. So how we can put it in motion? :) Who would =
be the best person to do it?</div><div><br></div><div><br></div><div><div d=
ir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><di=
v dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr">=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Al=
l the best,</div><div><br></div><div><p class=3D"MsoNormal" style=3D"color:=
rgb(34,34,34)">Frank<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color=
:rgb(34,34,34)"><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb=
(34,34,34)">Frantisek (Frank) Borsik<u></u><u></u></p><p class=3D"MsoNormal=
" style=3D"color:rgb(34,34,34)"><br></p><p class=3D"MsoNormal" style=3D"col=
or:rgb(34,34,34)"><b><u></u>In loving memory of Dave T=C3=A4ht:=C2=A0</b><s=
pan style=3D"color:rgb(32,33,36)">1965-2025</span></p><p class=3D"MsoNormal=
" style=3D"color:rgb(34,34,34)"><u></u><a href=3D"https://libreqos.io/2025/=
04/01/in-loving-memory-of-dave/" target=3D"_blank">https://libreqos.io/2025=
/04/01/in-loving-memory-of-dave/</a></p><p class=3D"MsoNormal" style=3D"col=
or:rgb(34,34,34)"><br></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,3=
4)"><a href=3D"https://www.linkedin.com/in/frantisekborsik" style=3D"color:=
rgb(17,85,204)" target=3D"_blank">https://www.linkedin.com/in/frantisekbors=
ik</a><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)=
">Signal, Telegram, WhatsApp: +421919416714=C2=A0<u></u><u></u></p><p class=
=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessage, mobile: +42077523088=
5<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Sky=
pe: casioa5302ca<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb=
(34,34,34)"><a href=3D"mailto:frantisek.borsik@gmail.com" style=3D"color:rg=
b(17,85,204)" target=3D"_blank">frantisek.borsik@gmail.com</a></p></div></d=
iv></div></div></div></div></div></div></div></div></div></div></div><br></=
div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Sat, Apr 12, 2025 at 1:17=E2=80=AFPM Loganaden Velvi=
ndron &lt;<a href=3D"mailto:loganaden@gmail.com">loganaden@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:=
rgb(204,204,204);padding-left:1ex">Definitely :-)<br>
<br>
On Sat, 12 Apr 2025 at 15:12, Vint Cerf &lt;<a href=3D"mailto:vint@google.c=
om" target=3D"_blank">vint@google.com</a>&gt; wrote:<br>
&gt;<br>
&gt; He would be a good candidate for the Postel Award, don&#39;t you think=
?<br>
&gt; v<br>
&gt;<br>
&gt;<br>
&gt; On Sat, Apr 12, 2025 at 5:45=E2=80=AFAM Loganaden Velvindron &lt;<a hr=
ef=3D"mailto:loganaden@gmail.com" target=3D"_blank">loganaden@gmail.com</a>=
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; 2) I was thinking about how we could get Dave recognized for =
his contributions. Like other unsung heroes, Dave didn&#39;t work for BBN o=
r some other moneyed entity who would commission a book or a memorial. (BBN=
 paid Katie Hafner to write the text that later turned into her book &quot;=
When Wizards Stay Up Late&quot;, which oddly only talked about the ARPANET/=
Internet pioneers who worked for BBN, omitting many of my Internet colleagu=
es.)=C2=A0 Dave wasn&#39;t the kind of guy that gets Awards from the Comput=
er History Museum or the ACM or IEEE. He wasn&#39;t beloved at IETF or ISOC=
 that I know of. He&#39;s in the category of folks like Noel Chiappa or Bra=
m Cohen or Richard Stallman or Aaron Swartz - people I think really changed=
 the way we think about computing and internetworking, but who won&#39;t be=
 in the official histories.<br>
&gt;&gt;<br>
&gt;&gt; He did not fit in a typical corporate culture especially in his la=
ter<br>
&gt;&gt; years. He got a certain amount of respect at the<br>
&gt;&gt; IETF.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; Please send any postal/overnight deliveries to:<br>
&gt; Vint Cerf<br>
&gt; Google, LLC<br>
&gt; 1900 Reston Metro Plaza, 16th Floor<br>
&gt; Reston, VA 20190<br>
&gt; +1 (571) 213 1346<br>
&gt;<br>
&gt;<br>
&gt; until further notice<br>
&gt;<br>
&gt;<br>
&gt;<br>
</blockquote></div>

--000000000000a1cfdc063294b3f3--

--===============8575505120677324267==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8575505120677324267==--

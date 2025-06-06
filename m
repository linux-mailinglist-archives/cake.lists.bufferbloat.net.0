Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 559ACAD00DB
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:56:39 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B80D53CBDE;
	Fri,  6 Jun 2025 06:56:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749207393;
	bh=hR8P3A2CtjasLvioZIiGAo2Oj4xfN44Rnvuut97VVx0=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=e3wRxptcfsKNsfKthXJYTnm5uJqC9udMD1sQSZ6cowUVeZEeHIp64ZoseEqKaF237
	 ORyOpQRKIqoSJcAVoI1H1Q1fk3e5MXxdac3UJL/t3Pu9I1wF2yTVy0VYvePPLVPXuc
	 utdSLUjDvYGhPF9DgdlQv5A1VrbKxx4YU2ZhqtJWCZm6GWw6kIU89qdEYlFsPjwKdD
	 a1lLSNGs8fLCCIg7QJ+HlBLENWLchaLv19ebHfLM2PCT/WRf/9rCyX3+19MFsOTsGD
	 qPaoaXoUgLt19NNWdpQVYe9Tn3As6vrmoMfJHze63K3HtYlnrTywvI0UHX1RX6IKaI
	 D3ULrph5un3QQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BE3093CB4C;
 Fri,  6 Jun 2025 06:56:31 -0400 (EDT)
Received: by mail-ej1-x630.google.com with SMTP id
 a640c23a62f3a-ad8826c05f2so368047166b.3; 
 Fri, 06 Jun 2025 03:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749207391; x=1749812191; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=MKrz6mLMmbAnuCGcOBwxdGyHnjYaAwBSvqW9cAU7qFk=;
 b=DIAC8dgP+HMTnBWC3+tB4u9xowIStt3+N+yOAmXOe6IHwIv1tvd+cu2cEcyli9dYnk
 sUIk6QwNlxcFm6RW9820EVqVQ6U9x0lbBsdjbQyLzqS8P70x7tkp1eaOegIA2To0SMhc
 5wAVrpIIHXt8lTPlbNaLGMu3NYp5+zexF8vcJBTHY2NXhDg+mWR1oO3IeabXJn5ABQ6C
 xOdK5frnc5eFqMGPpoQ1YlHZNNDBT7ELA7JefZ0CZ8P/Umr91KsFOkeO3iZOcPAuFNh/
 Sjji40d7CGDYpkLz8/UHQRob0hp6SpVmOG68zowodbgzCL8Jn37RgtPSIZpMuivMiAt5
 2ENw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749207391; x=1749812191;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=MKrz6mLMmbAnuCGcOBwxdGyHnjYaAwBSvqW9cAU7qFk=;
 b=RmQhbf4k33l/NZIDAej3fqORH3bQL3rg6g/xlgB3EbXIBfNWgXwwdiKjXLS9mp2XRU
 w+PgMeeRb1xVl450QiiwUkdyPQ0P3uj10bBLfAh2YrXmhjuzHeZFbvJMNZI+K8MF7qlt
 1Djcovea6Yebr1FFBvlDFT5fd7RW57oGUC7Ds89P4DvT8Yh3cMWIMF4nO2l2n912ypwL
 PSEtznoS0DpD6iR1SeHsUcYdxR6oA5P1BMOXvsnLRDG1Qo/Zxf8marZaV9bdBcVauw86
 oMjK8efij7sdGrx5hEs+tn3XeTd4o4CNjGBMDipZAEdi6Sm8ROj+dUh/XPV8CNJNymoy
 sewQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU2oLWqWpg6uTylB2hWhqETHOvknBnaRM13IA+3C638I1Blhd3//66ql9wcxXwA8VhyRmUTmd4=@lists.bufferbloat.net,
 AJvYcCV3WE9UYn5EqsGywj3NfwW7tZDsH23eXde67QEz+vtkoYLjScQkXdSKB7RKiTbCnXkdtXSC/6wEgZk=@lists.bufferbloat.net,
 AJvYcCVFz8roFaBRlhI4HzqKkOCZIgxiOZLjjUpqw1KmLix6MZNtwULGlkr0/SKnCDjnfvUb22Z6ZgOE3qOE2E8sxKg=@lists.bufferbloat.net,
 AJvYcCViWN6t8or7Z4kTGX9UGXJa4QIcGMrRGIt3GSTN1TqazoAssrpcHZZ426i0asAqTXCig7J+KQ==@lists.bufferbloat.net,
 AJvYcCVmD3vxhbM9atYSZAAZVwswiz3j2RDV0coKBA8C2iuh3MSSi9KjIG9tbKWjSx7CSz1gjUTF@lists.bufferbloat.net,
 AJvYcCW7jp/LdTb0CEXVZL4QwMnulRqCO3wNnXRXFesPd0rmoL/3FMcAepZZHsWLbNMdCymj1pG1RR+vUxOlU3wfDlE=@lists.bufferbloat.net,
 AJvYcCWd/kUdxN/2ymGdAi8B02wDDQLegnzVLo8hGYpHM7ahkMrilPtY+420z5iUcVWb6HnBcNWA15AMDPk=@lists.bufferbloat.net,
 AJvYcCWivqneJ1AjMYBCnjX7dZxIEO9zfUhJSioB4Xh6tbc/358mdxmMDqiP09rxkbrpS/MrxjERaipTkCY4@lists.bufferbloat.net,
 AJvYcCX+s7nmeOwE/VPb7i+QS6aSMUQ5hvlueBD1VD1+0mZMZiqgVQG3NCT/DWuQG+zLxgHDTEdr+JM=@lists.bufferbloat.net,
 AJvYcCXGSVKK5wBB7QZkEGOhYiqiR4+R8U3PghZl5K5k/76Gty8YeCTxn50e+1DPQaEop/Tjv3da4XoYgyWhjN3fXQ==@lists.bufferbloat.net,
 AJvYcCXMMO9J2nlrV3bbiKzIKt9Guuxaq4xCzHn4aEdA+Bb4ePIzFyonNq2Dnch2+h63VaC86J+Y/AnjeCLTZQske1YB@lists.bufferbloat.net,
 AJvYcCXnhZz/zPfN94gJxBwZi3JS4O3fYAMVFPXfYGJ+WVxntI9g/suQsXb+pV8p4PISntH7ksdLmEoyeQ==@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YyM1N3ERLka6NIgWbXfp00tFJM2WKuwRKS+aP4xai/J+vJuFM04
 b2V5VQtWYNGT8kLoLurtd4HcehwGATHoTXh/VreDUCS8r/vmEpk4xE3cO55zd/z6GXgiateO0SL
 Q824y6KBsLWrIWncXoDefuEZpSoICCm767qIZvis=
X-Gm-Gg: ASbGncvotvX+fE+C+k8uPlofZ26YPWf9NKfOmqrQqAwvGwOBqqp14r+GiSv8YNq56/W
 fn3Ll9nfE1lm1EVC6LNVFN7ejJm5hn/EYocbG96Yv26nmvneSAMlckqRvZGEqqvCVrZZQGdOM7c
 UECFb+z/v4e7FULNyRKp3Uto3CJGvr4mpoI9XjzPsP0W/+FMrLjVy+WQGMf9lZTHwbCEModSBBS
 M4YWw==
X-Google-Smtp-Source: AGHT+IEwPL1gdg8uDk2i1uDWIT4YvefFrAxy8tmPaqYBTceBjbyndxz9F3THJXM66sZWSrZpxuI+eq3efUHlReD2GXk=
X-Received: by 2002:a17:907:72c2:b0:ad5:4a43:5ae8 with SMTP id
 a640c23a62f3a-ade1a9e24bfmr260107166b.12.1749207390301; Fri, 06 Jun 2025
 03:56:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <014po62q-r99p-71np-52r1-n84n9np63nqr@ynat.uz> <87plhvlyoc.fsf@toke.dk>
 <976DC4FC-44CA-4C7E-90E0-DE39B57F01E1@comcast.com>
 <8DA2934A-43D1-4700-8F32-CA424C3FAE8D@comcast.com>
 <1743623511.52759201@apps.rackspace.com>
 <a4u5tdrfpa6qlhxj2qo74ty2w7sjb6jvxedsuyuhc6jpjkuczb@sl64aionlyc6>
In-Reply-To: <a4u5tdrfpa6qlhxj2qo74ty2w7sjb6jvxedsuyuhc6jpjkuczb@sl64aionlyc6>
Date: Fri, 6 Jun 2025 12:58:19 +0200
X-Gm-Features: AX0GCFtGpqVn8PvWYBktteAKQs6hhVEHUUokVzKNv2qAAQhermNMco_YBw_Czog
Message-ID: <CAJUtOOgk3S3dAnFz7-20TGgFdTuGghjzuAT+f0KfdPzbPYC_dQ@mail.gmail.com>
To: Michiel Leenaars <michiel@nlnet.nl>
Subject: Re: [Cake]
	=?utf-8?q?=5BStarlink=5D__=5BBloat=5D_In_loving_memory_of_?=
	=?utf-8?q?Dave_T=C3=A4ht_=3C3?=
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
Cc: "cerowrt-commits@lists.bufferbloat.net"
 <cerowrt-commits@lists.bufferbloat.net>,
 "bloat-ietf@lists.bufferbloat.net" <bloat-ietf@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 "cerowrt-users@lists.bufferbloat.net" <cerowrt-users@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>, "Livingood,
 Jason" <jason_livingood@comcast.com>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 "cerowrt-devel@lists.bufferbloat.net" <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 "codel-wireless@lists.bufferbloat.net" <codel-wireless@lists.bufferbloat.net>,
 =?UTF-8?Q?Network_Neutrality_is_back=21_Let=C2=B4s_make_the_technical_aspect?=
 =?UTF-8?Q?s_heard_this_time=21?= <nnagain@lists.bufferbloat.net>,
 Internet-history <internet-history@elists.isoc.org>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============2154148778086771668=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2154148778086771668==
Content-Type: multipart/alternative; boundary="00000000000023320a0636e51588"

--00000000000023320a0636e51588
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Well, I hope we should have Dave's nomination for Jonathan B. Postel
Service Award
<https://www.internetsociety.org/grants-and-awards/postel-service-award/#ti=
meline>ready,
soon.

For starters, at least.

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


On Fri, Jun 6, 2025 at 12:50=E2=80=AFPM Michiel Leenaars via Starlink <
starlink@lists.bufferbloat.net> wrote:

> Hi David,
>
> >2) I was thinking about how we could get Dave recognized for his
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
> We just missed the deadline for the Internet Hall of Fame by a few days:
>
>
> https://www.internethalloffame.org/2025/01/20/the-internet-hall-of-fame-2=
025-nominations-are-now-open/
>
> (which features Richard Stallman and Aaron Schwartz already, to be fair)
>
> But perhaps someone has nominated him already.
>
> Best,
> Michiel
> _______________________________________________
> Starlink mailing list
> Starlink@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/starlink
>

--00000000000023320a0636e51588
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Well, I hope we should have Dave&#39;s nomination for=
=C2=A0<a href=3D"https://www.internetsociety.org/grants-and-awards/postel-s=
ervice-award/#timeline">Jonathan B. Postel Service Award </a>ready, soon.</=
div><div><br></div><div>For starters, at least.</div><div><br></div><div><d=
iv dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"=
><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"l=
tr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v>All the best,</div><div><br></div><div><p class=3D"MsoNormal" style=3D"co=
lor:rgb(34,34,34)">Frank<u></u><u></u></p><p class=3D"MsoNormal" style=3D"c=
olor:rgb(34,34,34)"><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color=
:rgb(34,34,34)">Frantisek (Frank) Borsik<u></u><u></u></p><p class=3D"MsoNo=
rmal" style=3D"color:rgb(34,34,34)"><br></p><p class=3D"MsoNormal" style=3D=
"color:rgb(34,34,34)"><b><u></u>In loving memory of Dave T=C3=A4ht:=C2=A0</=
b><span style=3D"color:rgb(32,33,36)">1965-2025</span></p><p class=3D"MsoNo=
rmal" style=3D"color:rgb(34,34,34)"><u></u><a href=3D"https://libreqos.io/2=
025/04/01/in-loving-memory-of-dave/" target=3D"_blank">https://libreqos.io/=
2025/04/01/in-loving-memory-of-dave/</a></p><p class=3D"MsoNormal" style=3D=
"color:rgb(34,34,34)"><br></p><p class=3D"MsoNormal" style=3D"color:rgb(34,=
34,34)"><a href=3D"https://www.linkedin.com/in/frantisekborsik" style=3D"co=
lor:rgb(17,85,204)" target=3D"_blank">https://www.linkedin.com/in/frantisek=
borsik</a><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34=
,34)">Signal, Telegram, WhatsApp: +421919416714=C2=A0<u></u><u></u></p><p c=
lass=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessage, mobile: +4207752=
30885<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"=
>Skype: casioa5302ca<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color=
:rgb(34,34,34)"><a href=3D"mailto:frantisek.borsik@gmail.com" style=3D"colo=
r:rgb(17,85,204)" target=3D"_blank">frantisek.borsik@gmail.com</a></p></div=
></div></div></div></div></div></div></div></div></div></div></div></div><b=
r></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"lt=
r" class=3D"gmail_attr">On Fri, Jun 6, 2025 at 12:50=E2=80=AFPM Michiel Lee=
naars via Starlink &lt;<a href=3D"mailto:starlink@lists.bufferbloat.net">st=
arlink@lists.bufferbloat.net</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-=
left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex">Hi Da=
vid,<br>
<br>
&gt;2) I was thinking about how we could get Dave recognized for his contri=
butions. Like other unsung heroes, Dave didn&#39;t work for BBN or some oth=
er moneyed entity who would commission a book or a memorial. (BBN paid Kati=
e Hafner to write the text that later turned into her book &quot;When Wizar=
ds Stay Up Late&quot;, which oddly only talked about the ARPANET/Internet p=
ioneers who worked for BBN, omitting many of my Internet colleagues.)=C2=A0=
 Dave wasn&#39;t the kind of guy that gets Awards from the Computer History=
 Museum or the ACM or IEEE. He wasn&#39;t beloved at IETF or ISOC that I kn=
ow of. He&#39;s in the category of folks like Noel Chiappa or Bram Cohen or=
 Richard Stallman or Aaron Swartz - people I think really changed the way w=
e think about computing and internetworking, but who won&#39;t be in the of=
ficial histories.<br>
<br>
We just missed the deadline for the Internet Hall of Fame by a few days:<br=
>
<br>
<a href=3D"https://www.internethalloffame.org/2025/01/20/the-internet-hall-=
of-fame-2025-nominations-are-now-open/" rel=3D"noreferrer" target=3D"_blank=
">https://www.internethalloffame.org/2025/01/20/the-internet-hall-of-fame-2=
025-nominations-are-now-open/</a><br>
<br>
(which features Richard Stallman and Aaron Schwartz already, to be fair)<br=
>
<br>
But perhaps someone has nominated him already.<br>
<br>
Best,<br>
Michiel<br>
_______________________________________________<br>
Starlink mailing list<br>
<a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starlin=
k@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/starlink" rel=3D"noreferr=
er" target=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink</a><b=
r>
</blockquote></div>

--00000000000023320a0636e51588--

--===============2154148778086771668==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2154148778086771668==--

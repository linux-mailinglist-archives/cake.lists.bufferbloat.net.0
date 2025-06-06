Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E72AD02D3
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 15:09:46 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5FF323CB4B;
	Fri,  6 Jun 2025 09:09:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749215381;
	bh=+bIBXMiqQMHCJypurql39lOIJxF14q36GGzlP2wPrbo=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=McjT1tvt+zAtLpkd2+nG3SxQsPvPit5Qztmn0NchFmGJ/kTMpVYAjlLVOb+vibvtg
	 93uNg5QpaHt3T5V168sC4irKcOsasRP4TRZS082Xk+HlalNf99rKCn8dMhm/29uC9B
	 3FyU8J1mAn8mF751ZvBjN9bmwwCOGlBjLcCNX631YZQKJO95vUB4iG1SBkiMrtXuu4
	 J/F+qUwBTvL7eG6t33hj5ObzEYZQZGHSx0FEn+E8nY1tDI6qcaSy8v9blAgDpGjE8H
	 ayXCl4FeVovKOHCSzuBRGFy7NGqJr2Sa5gT71ujglqab+rQJ1YLjf5BYSDK4UCMiAS
	 DfjOK/PHGuGDQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A12A73B29D;
 Fri,  6 Jun 2025 09:09:39 -0400 (EDT)
Received: by mail-ed1-x536.google.com with SMTP id
 4fb4d7f45d1cf-606b58241c9so3316301a12.3; 
 Fri, 06 Jun 2025 06:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749215378; x=1749820178; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=CSFpfvgMDungmX4drUoLyRpp0DDO0X65VzZ9QTXgLOI=;
 b=a8lPV1cXpqhlHkm3W1j1dHNmvYOV41PSZaGCEfwE8hceZbnbLx3DHgSs2GqlDOqDMe
 aFi9wzUw5NNK2+2ZDvG7WKo80jTdvITAaoIYJv2zE67NXpHKs1ctOvMZAZv4LvZZ1xW/
 AKN93hKYJQMgrK88nib01d/wiAaHofL2prnVLbRAXlUznTtJvbMeVpZtbj1aL0A7TgI+
 9ej3RwJ8k59xGn6UioXplLWy8AtlwmctScQXQaMmo7Ih32eLdmbCx9J9KwFb7UEZw8sI
 JZggKMyrG3CjSiqBeaSx1V3qtMnyj46CEtmurJPqVjbeYysN7b3hhTSEdoKIe8r6mKxW
 zp6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749215378; x=1749820178;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=CSFpfvgMDungmX4drUoLyRpp0DDO0X65VzZ9QTXgLOI=;
 b=IzAEAF/LMURy2NJoJvufhXdgE3A3+hXT+7LUFKoe2vzz4a5qmIZIQk93CVXA1fNAjg
 97pOVYYP6wxgUSA8V5K66Zb4cyUWHSWt2jzHM35Aaau21jH2H/2c4Wd4jdB9YuexT15r
 /ToW1/uLHHLOMM3+BPjQilkq8V9eh1Sf7dMiCnBcn/GMsfZgoe9vcu1IsNIjyH+YrjoG
 nQP5/C7KHSg2jb0TC7S8GPfCoELob3zYFn52WhmS4ZCD869MIkZy7r8aiigx11Eb8Q3k
 +JOHW5l4BPyOvojzVdCxo7vFUZagZybqRjFYmB/UvQoAXgqOZEvFSSvYBzD76AAzKdWD
 bSAw==
X-Forwarded-Encrypted: i=1;
 AJvYcCU2cdFrekrNRoIgJZ2pfrB3YMmKmNFMEErs0HWbTLP3zZiVEvhhMwE2wLKypA2avl6WPkP98Q==@lists.bufferbloat.net,
 AJvYcCUCTQzj7fEECtoACuOIIMIREe4e5yIZU0/4Ij/y0p3KhB4ipNIHAl+kc8AlzS/d8YU24Vas@lists.bufferbloat.net,
 AJvYcCUIrvP0QB0QP+WTzAAzz/JTQNh2gcEhXPZY6VuKHHHBwHk+jbm7lPRu6MBpG7/hBg+/ZFFu/RE=@lists.bufferbloat.net,
 AJvYcCUgGnzdIMGqJix0e5N22d6wihDhKxO5heplshiSuy+NvRN9MQblbRADLMQ95S5cxHXtCf3oj8ahkHLSxogQDw==@lists.bufferbloat.net,
 AJvYcCVjxEGB9jrnmSphNxLKajaftI9OzAwUFp1KQjzcXOsi1OlCN0xJX9YZm0P7CciAofGQb/7us/4jH/I=@lists.bufferbloat.net,
 AJvYcCW3VjLkkFApqGePPkGTh4+Mz0oQO7u36Qz0OVnG94SKC4vp92845TFCo5FYQ3IEo0fknETZDrVYYfk=@lists.bufferbloat.net,
 AJvYcCWRmmMU+tN1IjLISS6Ei5Cyxr6RFiuL4MM7e5B2f6D2OnRr16u8/fonivPPlbTrlT3Bhx9XFJloFl3HqbzNWuI=@lists.bufferbloat.net,
 AJvYcCWazG2kRmOKaNPX+GSTpa0ofIr+ZIK577orHQOsaSOnicEh4HETHdeQ3W/BYpZP5UKCx4ttkmgIwWDpP8NZ7w==@lists.bufferbloat.net,
 AJvYcCXX+DGsyDQOUkLVe6G+quhENAWHoM5vC79RXkvIZiVJJ02sherpAo88gtyIgJA3W1umEumpBVVF2jl5@lists.bufferbloat.net,
 AJvYcCXZ1bcU7XNg3tSg8AT+qlI/JV3gMHVzJ8GSz5I5ihdnNQ/yBzKkGEu70ouUyNQFRxpqWVdJxLQlwKnmN+YtWtc=@lists.bufferbloat.net,
 AJvYcCXoY45zgbcLfoye8po3bV2o+xHBi9lf6LyT+cdR3OXQwJDMMMB/GydGY2N+sG0LLHEs42dh13Q1P7PzpDHi1wnG@lists.bufferbloat.net,
 AJvYcCXrVE17WFTwZ9iqbrO+3WAc/C59MmIhdCx/IdtTxKNNSJ5cAYvgjtbsj+7zuhKCrFOD6YLGjYU=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwVlbrnXBoOiYapMlZrcxPxH+T+LL8kRK/EM2HZlpbA+YNjhLfr
 Byt8dU30SOGpZfYdl4douKwzh2Y3Ce0rFj5/QYMz9m3jXIOe7eJwiCwpwj1Nve+2Wti0lENkKGn
 aupefHcTkdeHlXsYtKcD0HxI7mexWLSs=
X-Gm-Gg: ASbGnctD1DFDQOdmXksXhdzMZZqyskBD5mHPd+A2WFgq0p74geJFIJO9ZA31J5zsBdA
 C4J0Tc6NAFxVC2f/0ZaNRXcz1yAGDKTkrkES+b8w/jovKio9o8+o9LhgJa1NAXKQvqzYbB7YhSv
 hruUPfOJjNOR7BWSPWSKJUYhwGNeeyeu/fLPkbdefZmxF5ITfMM088BloN4bCTRAPVr/1MwiVNE
 WLYjOUBhm+as0ij
X-Google-Smtp-Source: AGHT+IGUmAoF3kCs2nxYOFT3En0OtOQymgNPdpvsb3t+bTQUiyxE1DnfEInIY+/TfWzOJx0ezHB/A+/G8mDm8yxEX4A=
X-Received: by 2002:a17:907:97cd:b0:ad8:97d8:a52e with SMTP id
 a640c23a62f3a-ade1aa472a5mr301790366b.55.1749215377889; Fri, 06 Jun 2025
 06:09:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <014po62q-r99p-71np-52r1-n84n9np63nqr@ynat.uz> <87plhvlyoc.fsf@toke.dk>
 <976DC4FC-44CA-4C7E-90E0-DE39B57F01E1@comcast.com>
 <8DA2934A-43D1-4700-8F32-CA424C3FAE8D@comcast.com>
 <1743623511.52759201@apps.rackspace.com>
 <CAOp4FwR71iS-mijozYr7zzuAhajJeqjzw1bGo1eicNWST76erA@mail.gmail.com>
 <CAHxHggcgJT=3SE8FJVnGduE0C0c1hFKu6fHLdnFL2BW5dE1+bw@mail.gmail.com>
 <CAOp4FwQ=ZLVw9VfO7wLi=J2-FsvCxdpT=NTVWzkOw=DPzNxPYg@mail.gmail.com>
 <CAJUtOOiGKOLbtQtrTp-5BTZFUg_rwYKt-BzftjerZTg23QuD=A@mail.gmail.com>
 <CAHxHggdaaxEorCDGqdvFFcuZNv==rfR_1pUMH513fFq5-jO2kA@mail.gmail.com>
 <CAOp4FwS14HN931zyDKw74GByj5=zHbH_xr5ZfGZv4dL-QPAiHw@mail.gmail.com>
 <1B0111B7-7648-4729-952A-243BDC4D4DDC@comcast.com>
 <IA0PR12MB7751A8202E355C2282350B978A6EA@IA0PR12MB7751.namprd12.prod.outlook.com>
In-Reply-To: <IA0PR12MB7751A8202E355C2282350B978A6EA@IA0PR12MB7751.namprd12.prod.outlook.com>
Date: Fri, 6 Jun 2025 15:11:25 +0200
X-Gm-Features: AX0GCFvjIQrKfpW63ksoOzhTLs0WgCyIMz-egOmV_ezdgTIFBR-LIvn7MpiTd7s
Message-ID: <CAJUtOOiy62OkF=NXX6g++4xEYa57LU1FcTjmytNZhV3Roe87BA@mail.gmail.com>
To: Richard Roy <dickroy@alum.mit.edu>
Subject: Re: [Cake]
	=?utf-8?q?=5BBloat=5D_=5BEXTERNAL=5D_Re=3A_=5BMake-wifi-fa?=
	=?utf-8?q?st=5D__In_loving_memory_of_Dave_T=C3=A4ht_=3C3?=
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
Cc: "codel-wireless@lists.bufferbloat.net"
 <codel-wireless@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 "cerowrt-commits@lists.bufferbloat.net"
 <cerowrt-commits@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 =?UTF-8?Q?Network_Neutrality_is_back=21_Let=C2=B4s_make_the_technical_asp?=
 =?UTF-8?Q?ects_heard_this_time=21?= <nnagain@lists.bufferbloat.net>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 "cerowrt-devel@lists.bufferbloat.net" <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 "bloat-ietf@lists.bufferbloat.net" <bloat-ietf@lists.bufferbloat.net>,
 "cerowrt-users@lists.bufferbloat.net" <cerowrt-users@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============6737512265694803622=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6737512265694803622==
Content-Type: multipart/alternative; boundary="0000000000003c30e40636e6f178"

--0000000000003c30e40636e6f178
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Not that I'm aware of - I got draft ready with one amazing friend that
probably wouldn't want to be named (and if yes, he will raise his hand) and
one of the Fathers of the Internet agreed to be a nominal nominator.

I plan to send it out to everybody here, to ask people to co-sign it, once
it's ready.

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


On Fri, Jun 6, 2025 at 2:58=E2=80=AFPM Richard Roy via Bloat <
bloat@lists.bufferbloat.net> wrote:

> The link below is for the nomination.  I assume someone has already fille=
d
> that out.  How does one write/add/append the "letter(s) of support" ISOC
> requests is I think the issue, right?
>
> RR (aka Dick Roy)
>
> -----Original Message-----
> From: Nnagain <nnagain-bounces@lists.bufferbloat.net> On Behalf Of
> Livingood, Jason via Nnagain
> Sent: Tuesday, April 22, 2025 7:05 AM
> To: Loganaden Velvindron <loganaden@gmail.com>
> Cc: Livingood, Jason <jason_livingood@comcast.com>;
> cerowrt-users@lists.bufferbloat.net; Herbert Wolverson <
> hwolverson@libreqos.io>; Make-Wifi-fast <
> make-wifi-fast@lists.bufferbloat.net>; libreqos <
> libreqos@lists.bufferbloat.net>; dpreed@deepplum.com;
> cerowrt-commits@lists.bufferbloat.net; Jeremy Austin via Rpm <
> rpm@lists.bufferbloat.net>; codel@lists.bufferbloat.net; Network
> Neutrality is back! Let=C2=B4s make the technical aspects heard this time=
! <
> nnagain@lists.bufferbloat.net>; codel-wireless@lists.bufferbloat.net;
> cerowrt-devel@lists.bufferbloat.net; bloat <bloat@lists.bufferbloat.net>;
> Cake List <cake@lists.bufferbloat.net>; bloat-ietf@lists.bufferbloat.net;
> Frantisek (Frank) Borsik <frank@libreqos.io>; Dave Taht via Starlink <
> starlink@lists.bufferbloat.net>; Robert Chac=C3=B3n <robert@libreqos.io>
> Subject: Re: [NNagain] [EXTERNAL] Re: [Make-wifi-fast] [Cake] [Bloat] In
> loving memory of Dave T=C3=A4ht <3
>
> > ISOC has opened a nomination for the Johnathan Postel award, but the
> page is password protected ...
>
> Worked for me w/o a password:
> https://wp.apps.internetsociety.org/wp/postel-award/nomination-form/
>
>
> _______________________________________________
> Nnagain mailing list
> Nnagain@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/nnagain
> _______________________________________________
> Bloat mailing list
> Bloat@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/bloat
>

--0000000000003c30e40636e6f178
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Not that I&#39;m aware of - I got draft ready with on=
e amazing friend that probably wouldn&#39;t want to be named (and if yes, h=
e will raise his hand) and one of the Fathers of the Internet agreed to be =
a nominal nominator.</div><div><br></div><div>I plan to send it out to ever=
ybody here, to ask people to co-sign it, once it&#39;s ready.</div><div><br=
></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gm=
ail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"=
><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div d=
ir=3D"ltr"><div>All the best,</div><div><br></div><div><p class=3D"MsoNorma=
l" style=3D"color:rgb(34,34,34)">Frank<u></u><u></u></p><p class=3D"MsoNorm=
al" style=3D"color:rgb(34,34,34)"><u></u><u></u></p><p class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)">Frantisek (Frank) Borsik<u></u><u></u></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><br></p><p class=3D"MsoNo=
rmal" style=3D"color:rgb(34,34,34)"><b><u></u>In loving memory of Dave T=C3=
=A4ht:=C2=A0</b><span style=3D"color:rgb(32,33,36)">1965-2025</span></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><a href=3D"https:/=
/libreqos.io/2025/04/01/in-loving-memory-of-dave/" target=3D"_blank">https:=
//libreqos.io/2025/04/01/in-loving-memory-of-dave/</a></p><p class=3D"MsoNo=
rmal" style=3D"color:rgb(34,34,34)"><br></p><p class=3D"MsoNormal" style=3D=
"color:rgb(34,34,34)"><a href=3D"https://www.linkedin.com/in/frantisekborsi=
k" style=3D"color:rgb(17,85,204)" target=3D"_blank">https://www.linkedin.co=
m/in/frantisekborsik</a><u></u><u></u></p><p class=3D"MsoNormal" style=3D"c=
olor:rgb(34,34,34)">Signal, Telegram, WhatsApp: +421919416714=C2=A0<u></u><=
u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessage, mo=
bile: +420775230885<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:=
rgb(34,34,34)">Skype: casioa5302ca<u></u><u></u></p><p class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)"><a href=3D"mailto:frantisek.borsik@gmail.com"=
 style=3D"color:rgb(17,85,204)" target=3D"_blank">frantisek.borsik@gmail.co=
m</a></p></div></div></div></div></div></div></div></div></div></div></div>=
</div></div><br></div><br><div class=3D"gmail_quote gmail_quote_container">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 6, 2025 at 2:58=E2=80=AFP=
M Richard Roy via Bloat &lt;<a href=3D"mailto:bloat@lists.bufferbloat.net">=
bloat@lists.bufferbloat.net</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-l=
eft-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex">The li=
nk below is for the nomination.=C2=A0 I assume someone has already filled t=
hat out.=C2=A0 How does one write/add/append the &quot;letter(s) of support=
&quot; ISOC requests is I think the issue, right?<br>
<br>
RR (aka Dick Roy)<br>
<br>
-----Original Message-----<br>
From: Nnagain &lt;<a href=3D"mailto:nnagain-bounces@lists.bufferbloat.net" =
target=3D"_blank">nnagain-bounces@lists.bufferbloat.net</a>&gt; On Behalf O=
f Livingood, Jason via Nnagain<br>
Sent: Tuesday, April 22, 2025 7:05 AM<br>
To: Loganaden Velvindron &lt;<a href=3D"mailto:loganaden@gmail.com" target=
=3D"_blank">loganaden@gmail.com</a>&gt;<br>
Cc: Livingood, Jason &lt;<a href=3D"mailto:jason_livingood@comcast.com" tar=
get=3D"_blank">jason_livingood@comcast.com</a>&gt;; <a href=3D"mailto:cerow=
rt-users@lists.bufferbloat.net" target=3D"_blank">cerowrt-users@lists.buffe=
rbloat.net</a>; Herbert Wolverson &lt;<a href=3D"mailto:hwolverson@libreqos=
.io" target=3D"_blank">hwolverson@libreqos.io</a>&gt;; Make-Wifi-fast &lt;<=
a href=3D"mailto:make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">ma=
ke-wifi-fast@lists.bufferbloat.net</a>&gt;; libreqos &lt;<a href=3D"mailto:=
libreqos@lists.bufferbloat.net" target=3D"_blank">libreqos@lists.bufferbloa=
t.net</a>&gt;; <a href=3D"mailto:dpreed@deepplum.com" target=3D"_blank">dpr=
eed@deepplum.com</a>; <a href=3D"mailto:cerowrt-commits@lists.bufferbloat.n=
et" target=3D"_blank">cerowrt-commits@lists.bufferbloat.net</a>; Jeremy Aus=
tin via Rpm &lt;<a href=3D"mailto:rpm@lists.bufferbloat.net" target=3D"_bla=
nk">rpm@lists.bufferbloat.net</a>&gt;; <a href=3D"mailto:codel@lists.buffer=
bloat.net" target=3D"_blank">codel@lists.bufferbloat.net</a>; Network Neutr=
ality is back! Let=C2=B4s make the technical aspects heard this time! &lt;<=
a href=3D"mailto:nnagain@lists.bufferbloat.net" target=3D"_blank">nnagain@l=
ists.bufferbloat.net</a>&gt;; <a href=3D"mailto:codel-wireless@lists.buffer=
bloat.net" target=3D"_blank">codel-wireless@lists.bufferbloat.net</a>; <a h=
ref=3D"mailto:cerowrt-devel@lists.bufferbloat.net" target=3D"_blank">cerowr=
t-devel@lists.bufferbloat.net</a>; bloat &lt;<a href=3D"mailto:bloat@lists.=
bufferbloat.net" target=3D"_blank">bloat@lists.bufferbloat.net</a>&gt;; Cak=
e List &lt;<a href=3D"mailto:cake@lists.bufferbloat.net" target=3D"_blank">=
cake@lists.bufferbloat.net</a>&gt;; <a href=3D"mailto:bloat-ietf@lists.buff=
erbloat.net" target=3D"_blank">bloat-ietf@lists.bufferbloat.net</a>; Franti=
sek (Frank) Borsik &lt;<a href=3D"mailto:frank@libreqos.io" target=3D"_blan=
k">frank@libreqos.io</a>&gt;; Dave Taht via Starlink &lt;<a href=3D"mailto:=
starlink@lists.bufferbloat.net" target=3D"_blank">starlink@lists.bufferbloa=
t.net</a>&gt;; Robert Chac=C3=B3n &lt;<a href=3D"mailto:robert@libreqos.io"=
 target=3D"_blank">robert@libreqos.io</a>&gt;<br>
Subject: Re: [NNagain] [EXTERNAL] Re: [Make-wifi-fast] [Cake] [Bloat] In lo=
ving memory of Dave T=C3=A4ht &lt;3<br>
<br>
&gt; ISOC has opened a nomination for the Johnathan Postel award, but the<b=
r>
page is password protected ...<br>
<br>
Worked for me w/o a password: <a href=3D"https://wp.apps.internetsociety.or=
g/wp/postel-award/nomination-form/" rel=3D"noreferrer" target=3D"_blank">ht=
tps://wp.apps.internetsociety.org/wp/postel-award/nomination-form/</a><br>
<br>
<br>
_______________________________________________<br>
Nnagain mailing list<br>
<a href=3D"mailto:Nnagain@lists.bufferbloat.net" target=3D"_blank">Nnagain@=
lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/nnagain" rel=3D"noreferre=
r" target=3D"_blank">https://lists.bufferbloat.net/listinfo/nnagain</a><br>
_______________________________________________<br>
Bloat mailing list<br>
<a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">Bloat@list=
s.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a><br>
</blockquote></div>

--0000000000003c30e40636e6f178--

--===============6737512265694803622==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6737512265694803622==--

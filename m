Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6F5A91119
	for <lists+cake@lfdr.de>; Thu, 17 Apr 2025 03:25:25 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A10F43CB39;
	Wed, 16 Apr 2025 21:25:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1744853123;
	bh=4oEVNZAaopCBk65p5jcwHd6gqWjI6run3At09Gu+mC8=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Zgkjzh/TKOBsHItx8YDfJ7XSPOHdov7C8T2U01n1qZvjFCbabUcW2hoPUdGEqwEdv
	 abDAGgaiB37jhvBW9P1ABOJYypgUhCpVTO34odExnMAM2gH1aka0m8y0mFW1dnHnym
	 01IinfgB7a16g1T/WBVdXlEUD+fxB47MUkgANbrru6soFDBy4orCwJfEcw4ai6AZPX
	 hD5W8Xdgg2nE9qIxOA4aCNX+QV1m1WRkHwcyQvEuSnIhbwvTPsCuBAHOQ3b9agcV5g
	 KwcK3GhFZJ3pKtd9tORlVltUgU8I1C9Uy6/W3YVPdV3hwMVCj3iYpRopRSWVQpQWcP
	 l8LP4yRJDMECQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 498F73B29D;
 Wed, 16 Apr 2025 21:25:22 -0400 (EDT)
Received: by mail-ed1-x530.google.com with SMTP id
 4fb4d7f45d1cf-5e614da8615so604069a12.1; 
 Wed, 16 Apr 2025 18:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1744853121; x=1745457921; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=0DOkL+/Vabk5psWGL1ECkKktpb53GWVH5I+YDitBIFY=;
 b=eUnoB8o3v3iFfM6CBH597PTeGIKp6R8pMLSMA5FIObnX1PraZlujAREgVvPSGLe1Ii
 xrWAVhuWmwGXFDwy2Tx1TUPnco7cQ96wpZN3PTrFDbzos0M6NCXEtR4h4Pa0HME6/fmE
 0pAanqoNvLkAxCL0T/sRZ9bX5LtR+YNtPGYDu5GsfQq++cit1BYjX8x1/sdJ0P0c0+ps
 0wkDvGbZHtAu/rBzbBUCGmeblCh1mlKADBA/flnQ6tQe4BpImGQOzBFXrRhvWvSc0fPq
 vGlzb6ng25jqiAeJGg1C3t3PzaN89OMbk/qJJz5GJiJ5chZjZpsYywXBFZnEEe4b+cpb
 /3nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744853121; x=1745457921;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=0DOkL+/Vabk5psWGL1ECkKktpb53GWVH5I+YDitBIFY=;
 b=LBrh9NqXKfKAqywMGSjQQBEh3DDLERVYEzAul+5K3aaprGcc8vTKDf/LW4F5fIkSGN
 6Z7+Wd/+FWFbc2Rel5O2gF5ct3sW8tzuDrsm/ZaYGOZL6syCkS7sP07UjPGVSPoM9rKe
 l8c1+VfzKzMg533oEg+9az4spL+T3HoDbEYMQy3k39U+g5tlvAqhjM2jSCrPbQ0tujCC
 tsUqIlmbEWmM6yrBDB6COKdfJ7NhonyoH1rpthvIx7VIEkAXRM/WDrzxmrJpPjCco5g4
 6sIdISt5qZL4IklegG3GYs7zzU5iQzhrM6WlTAd1ezMiJR/xn7sqmzKR9YhhSXnVmbQc
 hvqg==
X-Forwarded-Encrypted: i=1;
 AJvYcCU0gR/zY2gqlRcJp9St0swql8TB9DL+E9afMxRhHmdL4wpGbiGnq3f21r3CKPj2f7gbBhHuq/OlKmZdPdNix+c=@lists.bufferbloat.net,
 AJvYcCU5hyRAo7HhyyHdPd8/Y0wmQgL7fmyLidMQd2ROU7cN2BNZq3L5rqv4Y39ws29Dk8GURhDftaU0g12tK3fIpg==@lists.bufferbloat.net,
 AJvYcCUAvzpG81/N8t+gklQxxXcAJXNs93FX8cRIEKOtz12dlinnjsE8a6HC15ABuOIvd3iWAaLuxSc=@lists.bufferbloat.net,
 AJvYcCUIjYfHhL4ru1VE7OO4hDkzGyr7pQySu2dpJFYo0tpjVRWeM5JSKgLo9d0GrkTVwnvT+B2Yy4UrUV50+zAQHF0=@lists.bufferbloat.net,
 AJvYcCUfBbA4I24zWMnvmO4QpS3KHFgPHo/wRE0KQpi0Jj1M3p7q1FdUyX0K5Y6Br8sNdq1i6iRP@lists.bufferbloat.net,
 AJvYcCWBuuwUJtmPOuSJYTDo9KYr0jJUU0K8OvehFLnWdsu4FedGZyhiJVliTTyma+UHjeRlUGquq7cUaQ==@lists.bufferbloat.net,
 AJvYcCWbp3uQcjmPF4Uv2I2UitE9D7S3NQGEp+4i9C0d1R8dmIKgjdYgqjp6xuztB6GwL2YbY+qUqwH0RtM=@lists.bufferbloat.net,
 AJvYcCWmcBtjf76yOtB6kc4QeYWiyCAynhoGSEdlk0O9TrFUcUcUnmU1M/kHRrYSFwHuqK/5IF3chs8=@lists.bufferbloat.net,
 AJvYcCWoQPSV5Nl1ENI6saJDRjsSLhc/0q/SriFQdcISVdGRbbfmvMGArBYUVIkv2H/Ome1SrvB0tw==@lists.bufferbloat.net,
 AJvYcCWqdRBU+OLZDmTTsfNdv2Fz4hqL3hO3eUCbZZeAiKxMf2IoLBNQ6pNhzBMo2CaTJqeaDoQM6GJRkE3u@lists.bufferbloat.net,
 AJvYcCX3reVt9Buk/U0Dpm3S9lIEaYrnk18eMDIog3EorIzemeT+LBwAhViLnwEyQdnbF69iD/af5o1uNic=@lists.bufferbloat.net,
 AJvYcCXGReivPuI1wecwLIpKCe41kZG8gRqRANEh1HZ22c4kh2i29bA6Wa89eiMnTR6n1a9nR5deeGA0KE92AQ+2JUOc@lists.bufferbloat.net,
 AJvYcCXLyTZ0tfWbNTSJRttsrLwob+bTJPUKif1lpNCzadaZA2LEmarAmZ+xjfQqBAo/gs1XfAeglBh3CokUk11CBA==@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzQBEOq/A/b3y3j4b5+QWvo9kMB+/eXAAGefzoSaX4c8gzGvFEr
 MbfrGmrYY5rub8rWlvW/fGA6SdBj/8CfvXFZYKt0AXVc86tDFmyghj8V8wIlLHO6qOc/DWwK3Gz
 jHDxC8JW77Stk+CIvErM98/xW+b+hURMbcGY=
X-Gm-Gg: ASbGnct8ycdKNdriR6jBeHNfvvBbA2TObxdmymR+IQW8MFUMNE8vKaxOFyB710b09rS
 5/ar8O4KptvWu2TSyu0MaB2kvDGoCSyZBLt8ij7zh6hnF9iRmR2LY/VVH9cKS3dWih9Q3AJDYjs
 W+/KISMkxlmpMpd3m/Zr4bgnI=
X-Google-Smtp-Source: AGHT+IG8Vg+q/0RL4FY+tQ9sMsLApax47ZkpNEGgftxDT27aNPnWfoJWmJjI90ueQqCfoxY0sOfxBJXws9EJg+0EylI=
X-Received: by 2002:a05:6512:3b99:b0:54b:117f:686e with SMTP id
 2adb3069b0e04-54d69b7f6d7mr81252e87.27.1744838358229; Wed, 16 Apr 2025
 14:19:18 -0700 (PDT)
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
Date: Wed, 16 Apr 2025 23:18:42 +0200
X-Gm-Features: ATxdqUFWqhxK0AVi8FyNPFT7Mn615aLbORmoAStBrI4aNTlR0pWYzVizDQp4TrE
Message-ID: <CAJUtOOj+mZ=VhY6G5se76C+Hr_m+UhQ8SDj3LjkNUn9gOkX9sg@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============2000617061401815234=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2000617061401815234==
Content-Type: multipart/alternative; boundary="000000000000886fbf0632ebd69a"

--000000000000886fbf0632ebd69a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

We have joined Jonathan at FLOSS Weekly Podcast yesterday to talk about
Dave's life, work and more:

https://hackaday.com/2025/04/16/floss-weekly-episode-829-this-machine-kills=
-vogons/

Enjoy!

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

--000000000000886fbf0632ebd69a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>We have joined Jonathan at FLOSS Weekly Podcast yeste=
rday to talk about Dave&#39;s life, work and more:</div><div><br></div><div=
><a href=3D"https://hackaday.com/2025/04/16/floss-weekly-episode-829-this-m=
achine-kills-vogons/">https://hackaday.com/2025/04/16/floss-weekly-episode-=
829-this-machine-kills-vogons/</a><br></div><div><br></div><div>Enjoy!</div=
><div><br></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartm=
ail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div>All the best,</div><div><br></div><div><p class=3D=
"MsoNormal" style=3D"color:rgb(34,34,34)">Frank<u></u><u></u></p><p class=
=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><u></u></p><p class=3D"=
MsoNormal" style=3D"color:rgb(34,34,34)">Frantisek (Frank) Borsik<u></u><u>=
</u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><br></p><p cla=
ss=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><b><u></u>In loving memory o=
f Dave T=C3=A4ht:=C2=A0</b><span style=3D"color:rgb(32,33,36)">1965-2025</s=
pan></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><a href=
=3D"https://libreqos.io/2025/04/01/in-loving-memory-of-dave/" target=3D"_bl=
ank">https://libreqos.io/2025/04/01/in-loving-memory-of-dave/</a></p><p cla=
ss=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><br></p><p class=3D"MsoNorma=
l" style=3D"color:rgb(34,34,34)"><a href=3D"https://www.linkedin.com/in/fra=
ntisekborsik" style=3D"color:rgb(17,85,204)" target=3D"_blank">https://www.=
linkedin.com/in/frantisekborsik</a><u></u><u></u></p><p class=3D"MsoNormal"=
 style=3D"color:rgb(34,34,34)">Signal, Telegram, WhatsApp: +421919416714=C2=
=A0<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">i=
Message, mobile: +420775230885<u></u><u></u></p><p class=3D"MsoNormal" styl=
e=3D"color:rgb(34,34,34)">Skype: casioa5302ca<u></u><u></u></p><p class=3D"=
MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"mailto:frantisek.borsik=
@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_blank">frantisek.bors=
ik@gmail.com</a></p></div></div></div></div></div></div></div></div></div><=
/div></div></div></div><br></div><br><div class=3D"gmail_quote gmail_quote_=
container"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr 12, 2025 at 1:=
17=E2=80=AFPM Loganaden Velvindron &lt;<a href=3D"mailto:loganaden@gmail.co=
m">loganaden@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-s=
tyle:solid;border-left-color:rgb(204,204,204);padding-left:1ex">Definitely =
:-)<br>
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

--000000000000886fbf0632ebd69a--

--===============2000617061401815234==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2000617061401815234==--

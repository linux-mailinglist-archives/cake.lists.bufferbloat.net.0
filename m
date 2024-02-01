Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEA884514C
	for <lists+cake@lfdr.de>; Thu,  1 Feb 2024 07:17:30 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6FBF03CB40;
	Thu,  1 Feb 2024 01:17:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1706768248;
	bh=k6oALna7F9+5RjX1aJ3d1rQCLbVUgVSsrzYRomRnK7U=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=NM++uGmLNbVCoU9TJZiUkY7mxXk0DSRIyI2wToYGlw5qmVBKjXipr2uPxc2In3mI7
	 2zX8YUtmxJplpuplo6X7hl7vpErb4exVluHKVtHgmGuQCHQDQLZqDaIfEfzKdZppLK
	 koscAAvyyNRYGH4oaR2L3XZQhOpR3fGns4HInp1T7avQdJ5PNJZiM+bIFu0bSX2d+g
	 A9L55HjxqQRHVgEh/yj2NMQXl/btja5fgNF1K2yeWw4Qw0qWbymx4tWWYX5dSQfAPV
	 Gj9A9w2n/+UNoPaD+bGz/UjWaj3BzirT9cu5m1o8Ry5kcBt3qS497Qesj2NlVkVeN1
	 AR2cnnh23BWGQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com
 [IPv6:2607:f8b0:4864:20::836])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E9E1C3B2A4;
 Thu,  1 Feb 2024 01:17:26 -0500 (EST)
Received: by mail-qt1-x836.google.com with SMTP id
 d75a77b69052e-42a4516ec46so4809271cf.0; 
 Wed, 31 Jan 2024 22:17:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706768246; x=1707373046; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=+RFEItnGBhPFZzJ41jYhXDD+hj+1L1vTI5hTIbjnVDY=;
 b=M/eGlVlBmsPO1nKOWey+9ZrdkHILnDFAoUCZSbyxX1hy/WhaJf7GFZWcZi5P/CYp0J
 dZulPgtkVl/zksq7jY1yXT2qQV42bYG+MU0unfjKuIWbgeiNztikrRCalEOu+osjztL6
 lB8Atd6dNPExANpeRvTMzl6Uhq+CODiBoOGqWuXs/+kSs3WAkRVUrbJhGlQr7MYgtEgt
 3cgvDmfLE/5c0PhajmEYlKRvskqf2UxPArWYbVXV+dzVBsEUmIrITn+3k9DoQQoMcJGI
 PnI70Lk6qMcPvJYPodXHKoNYn+MlhDsAOztX0PFgT3tSOzMFAYBLicuQCq7Ex+wbbswX
 m0zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706768246; x=1707373046;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+RFEItnGBhPFZzJ41jYhXDD+hj+1L1vTI5hTIbjnVDY=;
 b=HAt0Xv3m6SJCg7+tx7PnQ4fkh5tpFArPHMaTHjWwfNJtKBftsKucoAPBIQBXheLeEa
 3xdZS2l+nwD9BtYGz2xn5qju4fpWlXdnnaqeEu+cq9wI7LbN1jYKsYsbfJNITB6y/vaW
 CLiszNEu1wSuFnWLjRp193yCkFNB761ZVu4a9Ny/O7YWYkHLJZGxJ+Y0Si9R4Tc4IL8V
 kJ05ANJ8/QCyzXImmQv2ME5a8Gv1gD9ymQwjHQxLnIGX+dq/qDn4JPkr7EH8q6ycztts
 daFmQ/V5trD3h7SMhOOt7wdFl6VgPNo1U/JMobGv0sTthBPR2chWNR/Gde8H3IkMwLlg
 A4JA==
X-Gm-Message-State: AOJu0YzVJpn0ubYeWBpACSLhZ2sj+S4j3XIetV0Lm7SR+BBCH3venwKq
 /EHWjd31AkfvPZOpzCK1QwUQRb2YhvL7h8scvFUaXWRdoDVWmkJqOifS/8/0rBmN4EwAU8iWCd5
 X0Tj5jGPULpTicx1cRlnHT01E8Yb4oG91
X-Google-Smtp-Source: AGHT+IHeZ0tSCV5EQ1KqKc8fK/ubuoPAId2MU7yY7QpXl03FJFNukx+zWUMMUA6AOvNM8pXz69IozmoXr/Qpc/uwU0Q=
X-Received: by 2002:ac8:5708:0:b0:42b:f242:f05e with SMTP id
 8-20020ac85708000000b0042bf242f05emr1821936qtw.1.1706768246074; Wed, 31 Jan
 2024 22:17:26 -0800 (PST)
MIME-Version: 1.0
References: <772847304-9273@mail.pch.net>
 <CAJUtOOj_ndL7B18-9fx+T9UBxknuRjdCS0zhK-8tebJ-t6RF3w@mail.gmail.com>
In-Reply-To: <CAJUtOOj_ndL7B18-9fx+T9UBxknuRjdCS0zhK-8tebJ-t6RF3w@mail.gmail.com>
Date: Thu, 1 Feb 2024 07:25:55 +0100
Message-ID: <CAJUtOOjGMAY+XVG0g5AZ0m9jEy-uw2cgSf+erYBvUUg=CMAxug@mail.gmail.com>
To: Dave Taht via Starlink <starlink@lists.bufferbloat.net>, 
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, 
 cake@lists.bufferbloat.net, codel@lists.bufferbloat.net, 
 ecn-sane@lists.bufferbloat.net, libreqos <libreqos@lists.bufferbloat.net>, 
 make-wifi-fast@lists.bufferbloat.net
Subject: Re: [Cake] FREE IXP Workshop by Bill Woodcock & Packet Clearing
 House: Monday,
 Jan 22 @ 4PM CET / 10AM EST / 7AM PST / 11PM Singapore / 6PM Arabia / 8:30
 PM India
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
Content-Type: multipart/mixed; boundary="===============8049518583077347363=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8049518583077347363==
Content-Type: multipart/alternative; boundary="0000000000000572e306104bf36f"

--0000000000000572e306104bf36f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello to all,

Here is the workshop recording:
https://www.pch.net/resources/Tutorials/workshop-2024-01-22/


All the best,

Frank
Frantisek (Frank) Borsik

https://www.linkedin.com/in/frantisekborsik
Signal, Telegram, WhatsApp: +421919416714
iMessage, mobile: +420775230885
Skype: casioa5302ca
frantisek.borsik@gmail.com


On Mon, 22 Jan 2024 at 7:47 AM, Frantisek Borsik <frantisek.borsik@gmail.co=
m>
wrote:

> Hey guys,
>
> Bill <https://www.linkedin.com/in/bwoodcock/> with Packet Clearing House
> will be holding a 1 hour long free IXP workshop.
> It will be recorded and shared by me and others later, here, as well as o=
n
> social media.
>
> In his own words:
>
> Although we generally do something like this about every three days, this
>> one will be unusual in that we're doing it for a distributed group, rath=
er
>> than in-person, so we're doing it on Zoom, and anyone who wants to join =
in
>> is welcome. We're using jay joffe's network as the starting-point for th=
e
>> conversation: 400 households in a fiber network of 25km radius in rural
>> southwestern France. Would an IXP make sense? What would it look like, f=
rom
>> a technical, governance, and financial perspective?
>
>
>
>> These questions are pertinent to many people right now, because the
>> Broadband Equity, Access, and Deployment (BEAD) program in the United
>> States is distributing USD 42Bn, and many hope that a significant portio=
n
>> of that will be used to improve the connectivity of rural communities in
>> the US.
>
>
> And I want to advertise :-) that he is about to write a doctoral thesis o=
n
> this particular topic at the Universite Paris 8, next year! So lot more
> great stuff coming from him.
>
> Looking forward to see you all, soon:
>
>
> *https://us06web.zoom.us/j/86131129506?pwd=3DPlhHgU24uezoTavCWTSP9N0hzpTy=
EC.1
> <https://us06web.zoom.us/j/86131129506?pwd=3DPlhHgU24uezoTavCWTSP9N0hzpTy=
EC.1>*
>
> All the best,
>
> Frank
>
> Frantisek (Frank) Borsik
>
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
>
>
> ---------- Forwarded message ---------
> From: Bill Woodcock via Nnagain <nnagain@lists.bufferbloat.net>
> Date: Sun, Jan 21, 2024 at 11:07=E2=80=AFPM
> Subject: [NNagain] IXP workshop
> To: <nishal@pch.net>, <sara@pch.net>, <nnagain@lists.bufferbloat.net>
> Cc: Bill Woodcock <woody@pch.net>
>
>
> *Subject:* IXP workshop
> *When:* Mon 1/22/2024 4:00 PM - 5:00 PM (1.0 hours) (GMT +01:00)
> *Where:*
> https://us06web.zoom.us/j/86131129506?pwd=3DPlhHgU24uezoTavCWTSP9N0hzpTyE=
C.1
> *Required:* nishal@pch.net, sara@pch.net, nnagain@lists.bufferbloat.net
>
> Zoom Meeting ID: 861 3112 9506
> Passcode: 777245
> _______________________________________________
> Nnagain mailing list
> Nnagain@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/nnagain
>

--0000000000000572e306104bf36f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello to all,</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Here is the workshop recording:</div><div dir=3D"auto"><div><a hr=
ef=3D"https://www.pch.net/resources/Tutorials/workshop-2024-01-22/">https:/=
/www.pch.net/resources/Tutorials/workshop-2024-01-22/</a></div><br clear=3D=
"all"><br clear=3D"all"><div dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_s=
ignature" data-smartmail=3D"gmail_signature">All the best,<br><br>Frank<br>=
Frantisek (Frank) Borsik<br><br><a href=3D"https://www.linkedin.com/in/fran=
tisekborsik">https://www.linkedin.com/in/frantisekborsik</a><br>Signal, Tel=
egram, WhatsApp:=C2=A0+421919416714=C2=A0<br>iMessage, mobile:=C2=A0+420775=
230885<br>Skype: casioa5302ca<br><a href=3D"mailto:frantisek.borsik@gmail.c=
om">frantisek.borsik@gmail.com</a><br></div></div></div><div><br></div><div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mo=
n, 22 Jan 2024 at 7:47 AM, Frantisek Borsik &lt;<a href=3D"mailto:frantisek=
.borsik@gmail.com">frantisek.borsik@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-=
width:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(20=
4,204,204)"><div dir=3D"ltr"><div>Hey guys,</div><div><br></div><div><a hre=
f=3D"https://www.linkedin.com/in/bwoodcock/" target=3D"_blank">Bill</a> wit=
h Packet Clearing House will be holding a 1 hour long free IXP workshop.=C2=
=A0</div><div>It will be recorded and shared by me and others later, here, =
as well as on social media.</div><div><br></div><div>In his own words:</div=
><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;bor=
der-left-color:rgb(204,204,204)">Although we generally do something like th=
is about every three days, this one will be unusual in that we&#39;re doing=
 it for a distributed group, rather than in-person, so we&#39;re doing it o=
n Zoom, and anyone who wants to join in is welcome. We&#39;re using jay jof=
fe&#39;s network as the starting-point for the conversation: 400 households=
 in a fiber network of 25km radius in rural southwestern France. Would an I=
XP make sense? What would it look like, from a technical, governance, and f=
inancial perspective? </blockquote><div>=C2=A0</div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-l=
eft-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">These =
questions are pertinent to many people right now, because the Broadband Equ=
ity, Access, and Deployment (BEAD) program in the United States is distribu=
ting USD 42Bn, and many hope that a significant portion of that will be use=
d to improve the connectivity of rural communities in the US.</blockquote><=
div><br></div><div>And I want to advertise :-) that he is about to write a =
doctoral thesis on this particular topic at the Universite Paris 8, next ye=
ar! So lot more great stuff coming from him.=C2=A0</div><div><br></div><div=
>Looking forward to see you all, soon:</div><div><br></div><div><b><a href=
=3D"https://us06web.zoom.us/j/86131129506?pwd=3DPlhHgU24uezoTavCWTSP9N0hzpT=
yEC.1" style=3D"font-family:Verdana,Arial,sans-serif;font-size:12px" target=
=3D"_blank">https://us06web.zoom.us/j/86131129506?pwd=3DPlhHgU24uezoTavCWTS=
P9N0hzpTyEC.1</a><br></b></div><br clear=3D"all"><div><div dir=3D"ltr" clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><=
div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>All the best,</di=
v><div><br></div><div><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">=
Frank<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"=
><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Fra=
ntisek (Frank) Borsik<u></u><u></u></p><p class=3D"MsoNormal" style=3D"colo=
r:rgb(34,34,34)"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal" style=3D"co=
lor:rgb(34,34,34)"><a href=3D"https://www.linkedin.com/in/frantisekborsik" =
style=3D"color:rgb(17,85,204)" target=3D"_blank">https://www.linkedin.com/i=
n/frantisekborsik</a><u></u><u></u></p><p class=3D"MsoNormal" style=3D"colo=
r:rgb(34,34,34)">Signal, Telegram, WhatsApp: +421919416714=C2=A0<u></u><u><=
/u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessage, mobil=
e: +420775230885<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb=
(34,34,34)">Skype: casioa5302ca<u></u><u></u></p><p class=3D"MsoNormal" sty=
le=3D"color:rgb(34,34,34)"><a href=3D"mailto:frantisek.borsik@gmail.com" st=
yle=3D"color:rgb(17,85,204)" target=3D"_blank">frantisek.borsik@gmail.com</=
a></p></div></div></div></div></div></div></div></div></div></div></div></d=
iv></div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">---------- Forwarded message ---------<br>From: <strong class=3D"gma=
il_sendername" dir=3D"auto">Bill Woodcock via Nnagain</strong> <span dir=3D=
"auto">&lt;<a href=3D"mailto:nnagain@lists.bufferbloat.net" target=3D"_blan=
k">nnagain@lists.bufferbloat.net</a>&gt;</span><br>Date: Sun, Jan 21, 2024 =
at 11:07=E2=80=AFPM<br>Subject: [NNagain] IXP workshop<br>To:  &lt;<a href=
=3D"mailto:nishal@pch.net" target=3D"_blank">nishal@pch.net</a>&gt;,  &lt;<=
a href=3D"mailto:sara@pch.net" target=3D"_blank">sara@pch.net</a>&gt;,  &lt=
;<a href=3D"mailto:nnagain@lists.bufferbloat.net" target=3D"_blank">nnagain=
@lists.bufferbloat.net</a>&gt;<br>Cc: Bill Woodcock &lt;<a href=3D"mailto:w=
oody@pch.net" target=3D"_blank">woody@pch.net</a>&gt;<br></div><br><br><tab=
le style=3D"font-style:normal;font-variant-caps:normal;font-weight:normal;f=
ont-stretch:normal;font-size:12px;line-height:normal;font-family:Verdana,Ar=
ial,sans-serif;font-size-adjust:none;font-kerning:auto;font-variant-alterna=
tes:normal;font-variant-ligatures:normal;font-variant-numeric:normal;font-v=
ariant-east-asian:normal;font-feature-settings:normal">
	<tbody style=3D"font-family:Verdana,Arial,sans-serif"><tr style=3D"font-fa=
mily:Verdana,Arial,sans-serif"><td style=3D"font-family:Verdana,Arial,sans-=
serif"><b style=3D"font-family:Verdana,Arial,sans-serif">Subject:</b></td><=
td style=3D"font-family:Verdana,Arial,sans-serif">IXP workshop</td></tr>
	<tr style=3D"font-family:Verdana,Arial,sans-serif"><td style=3D"font-famil=
y:Verdana,Arial,sans-serif"><b style=3D"font-family:Verdana,Arial,sans-seri=
f">When:</b></td><td style=3D"font-family:Verdana,Arial,sans-serif">Mon 1/2=
2/2024 4:00 PM - 5:00 PM (1.0 hours) (GMT +01:00)</td></tr>
	<tr style=3D"font-family:Verdana,Arial,sans-serif"><td style=3D"font-famil=
y:Verdana,Arial,sans-serif"><b style=3D"font-family:Verdana,Arial,sans-seri=
f">Where:</b></td><td style=3D"font-family:Verdana,Arial,sans-serif"><a hre=
f=3D"https://us06web.zoom.us/j/86131129506?pwd=3DPlhHgU24uezoTavCWTSP9N0hzp=
TyEC.1" target=3D"_blank" style=3D"font-family:Verdana,Arial,sans-serif">ht=
tps://us06web.zoom.us/j/86131129506?pwd=3DPlhHgU24uezoTavCWTSP9N0hzpTyEC.1<=
/a></td></tr>
	<tr style=3D"font-family:Verdana,Arial,sans-serif"><td style=3D"font-famil=
y:Verdana,Arial,sans-serif"><b style=3D"font-family:Verdana,Arial,sans-seri=
f">Required:</b></td><td style=3D"font-family:Verdana,Arial,sans-serif"><a =
href=3D"mailto:nishal@pch.net" target=3D"_blank" style=3D"font-family:Verda=
na,Arial,sans-serif">nishal@pch.net</a>, <a href=3D"mailto:sara@pch.net" ta=
rget=3D"_blank" style=3D"font-family:Verdana,Arial,sans-serif">sara@pch.net=
</a>, <a href=3D"mailto:nnagain@lists.bufferbloat.net" target=3D"_blank" st=
yle=3D"font-family:Verdana,Arial,sans-serif">nnagain@lists.bufferbloat.net<=
/a></td></tr>
</tbody></table>

<p>Zoom Meeting ID: 861 3112 9506<br>Passcode: 777245</p>__________________=
_____________________________<br>
Nnagain mailing list<br>
<a href=3D"mailto:Nnagain@lists.bufferbloat.net" target=3D"_blank">Nnagain@=
lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/nnagain" rel=3D"noreferre=
r" target=3D"_blank">https://lists.bufferbloat.net/listinfo/nnagain</a><br>
</div></div>
</blockquote></div></div>

--0000000000000572e306104bf36f--

--===============8049518583077347363==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8049518583077347363==--

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B214797CE5E
	for <lists+cake@lfdr.de>; Thu, 19 Sep 2024 22:04:31 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B51803CB42;
	Thu, 19 Sep 2024 16:04:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1726776270;
	bh=OMjP0JXce54610QiIX4it9FClHXNkAPVx+e0/71SaDw=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Gm7fGgUUg9q9ChKgYHv5xoIzhRxFp3O1hk/3gXDWnnQueoOy+XwGLOiJa5SN7uClY
	 oR/9wL72bZYJKTmKc+7GLVpCcNesktvP+9SGSkACl4nF1vgQNaCxOIRj+P2AVg0NG7
	 F2pjZK1cuczae7MISX+0Wv+ySkPCPuhp3kFahRUvDAmQRS001yO9i22e+rx1hvy+Yp
	 XRh5aoUha1lXTJjzPdP4lXfM8R+s4S4tzdIDETsTsoE49aKTBdQjXY+FOjtPOr215M
	 Ax2+tuGB8d/G+XqJK0PybzzYTLUwRuDH1Sm5zyAEgr8SPyHeAx/Bqywoo1/j+P4j0H
	 rIz8LNXMbLRLA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 831B73CB38;
 Thu, 19 Sep 2024 16:04:29 -0400 (EDT)
Received: by mail-lf1-x12e.google.com with SMTP id
 2adb3069b0e04-53653ff0251so1491894e87.0; 
 Thu, 19 Sep 2024 13:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1726776268; x=1727381068; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=PCQHAeLSIP26TkSkahO9yNDWXfWJFHOcfGeU4YYn5d0=;
 b=PGMKbbdgHF9VblXi91lmBiEUhko1XnfwdSH0KNjC/7B1g7V3k538RjgajIvJJRVKEd
 o5jpNtKzCPDQcdQlVjtbH5fpHGQwhOUtnnncSaUluQevdwc+5foYP/VLNNhGFnZQ+t3+
 tdz1RLteYACxLtSnK81GvTCqmA+aWwIG49YHMyD4ZGplGoUttgnhtNjRdrlIDkQh639O
 HcHpgggkgoCu1Jo96eF2cLpAVw5Z749PhTCoYCupxa1i8BdcYUZwVcC9ypGpGwd7Exhe
 rOPMkffHiRfDYbXFH794a3gSXGstHUFz3f2YoHOazd7LSvDyXFX1u2VQwAq2tYCjbWUX
 V6mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726776268; x=1727381068;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=PCQHAeLSIP26TkSkahO9yNDWXfWJFHOcfGeU4YYn5d0=;
 b=l4eJJu+XfejiF5FNQtdvKTKGmiIf4+rx8OLkFSjZFftC2FTG1J0K6QXkVNVcrp8UYX
 wDIFSIT90wE/xqldepQzGvys94vTxedoBemwCoBOr0UMfTQqo+/WKiTDq/LSWELT/nTz
 y4kpXzq5tHDXHwZJ0H5Y+r5zs5f/wtfV9CE2sn+eBNnbTqTQ+RD+890GU4Km5s5vqrr9
 tft00MTWmJvqbznDfW+0ZMDhDdC6A/eN8QmZt4KlW2xQ2Bp9gmaCZCmdPJVwGEe9wxeN
 rQsRaYUGsanJksfGmuXu0P7M+da7PphobGxkrRtC3wC+/VtYf36LYwixoOkOwZCvqVIz
 MHvw==
X-Forwarded-Encrypted: i=1;
 AJvYcCU+7AiWE9t6L3dXRarr7Aeb8+YFhHJL8AfsPIJBeiJ2BSsm+IjeNObPQxQ8Rnho3x+haAXY5re3nblt4Q5bBKY=@lists.bufferbloat.net,
 AJvYcCU2t7HPQ4dp6KJbHS356YCiUbIUOuapSkot09L0BN9HDfqUTWUWuGQR6QzJJMLKfbyTwoXCCQ==@lists.bufferbloat.net,
 AJvYcCU3n12jV7C+RkiXRV6vsqLTOZzXPxEUa3NeAdJ1fnhWKFWyZL0tJtu7a2s5DQCI5hlnK3CX@lists.bufferbloat.net,
 AJvYcCW3kWhz9qOx5BAJ0xg5UhrPP9MvEePfYTTso5J7wWq2E5IxldGGxP5RAqvTkeU1cqOoJnocOACeh6o=@lists.bufferbloat.net,
 AJvYcCWWran1JE0m0gLb4Ia48hcOLmcPAGEYo+rHg09cF19E3OFYzoiEPwyeNtLPv8P3a17AZ1F5aQ==@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yy9SzPjb49dFy+QqKY435vRu8ZHm9FzTxBuA5EW+z4/Jt0vXZjR
 5p5nmPfWj2Y5oGCmUS74u7ppvpA9rBMz6wxEQQvQk7pH2bSAOYeGAJrv1/CVFWmyyDpozDgbNMh
 EOdExK5hA3SDJjJxqtRCRxBT3I0M6FL41
X-Google-Smtp-Source: AGHT+IGnbNovH+LtqGolazubz/8UcABe4/GcyI0/rtGckunu49IJvdy2JrIcOekVveQ4OPgGRYPimUgBIMRV57AywOg=
X-Received: by 2002:a05:6512:3b98:b0:536:a583:2777 with SMTP id
 2adb3069b0e04-536ac2cf682mr316010e87.9.1726776267447; Thu, 19 Sep 2024
 13:04:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOgCZyLBz0T-CvQn2FsOORuVfCiT_--b9RQ0CmHRnYiXyA@mail.gmail.com>
 <CAJUtOOj5n76gepLMurA3a+mxz7LJqoi7ND1FpTRkwctUsLi4dg@mail.gmail.com>
 <CAJUtOOh210ZEOVcwWeDSYNHnn5sjySVjNj3VBW5xfp0vA1Ebrw@mail.gmail.com>
In-Reply-To: <CAJUtOOh210ZEOVcwWeDSYNHnn5sjySVjNj3VBW5xfp0vA1Ebrw@mail.gmail.com>
Date: Thu, 19 Sep 2024 13:04:15 -0700
Message-ID: <CANypexTDGVrjBVoFr8+g-MwXB0mnfEFC76ASdL9jjr6UvOw=VQ@mail.gmail.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
Subject: Re: [Cake] "State of the Bloat" - Dave at Linux Plumbers: Wednesday,
 Sept 18 @ 6PM CET | 12PM EST | 9AM PST
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
From: dave seddon via Cake <cake@lists.bufferbloat.net>
Reply-To: dave seddon <dave.seddon.ca@gmail.com>
Cc: Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============8505115948502055239=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8505115948502055239==
Content-Type: multipart/alternative; boundary="000000000000072a0706227e6e0d"

--000000000000072a0706227e6e0d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Frank!

Here are the full xTCP2 slides for anybody who's interested.  Questions
welcomed.
https://docs.google.com/presentation/d/11rixKNfIBCdofUpPL2wOuiWJXa40x4I0A1w=
uTMMv4Uo/edit?usp=3Dsharing

I've started work on the visualizations, and hopefully I'll have something
to present in the next few weeks

On Thu, Sep 19, 2024 at 12:01=E2=80=AFPM Frantisek Borsik via Cake <
cake@lists.bufferbloat.net> wrote:

> If you have missed Dave's "State of the Bloat" talk, here you are:
> https://www.youtube.com/live/qTVNcuzhV6M?t=3D32082s
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
> On Tue, Sep 17, 2024 at 11:27=E2=80=AFPM Frantisek Borsik <
> frantisek.borsik@gmail.com> wrote:
>
>> Hello to all,
>>
>> Tune in: https://www.youtube.com/watch?v=3DqTVNcuzhV6M this Wednesday,
>> September 18, @ 6PM CET | 12PM EST | 11PM CST | 10AM MST | 9AM PST
>>
>> Learn more:
>> https://lpc.events/event/18/contributions/1967/
>> Slides will be available here, too.
>>
>> All the best,
>>
>> Frank
>>
>> Frantisek (Frank) Borsik
>>
>>
>>
>> https://www.linkedin.com/in/frantisekborsik
>>
>> Signal, Telegram, WhatsApp: +421919416714
>>
>> iMessage, mobile: +420775230885
>>
>> Skype: casioa5302ca
>>
>> frantisek.borsik@gmail.com
>>
>>
>> On Fri, Sep 13, 2024 at 12:33=E2=80=AFAM Frantisek Borsik <
>> frantisek.borsik@gmail.com> wrote:
>>
>>> Hello to all,
>>>
>>> We are heading to Vienna for Open Source Summit Europe
>>> <https://events.linuxfoundation.org/open-source-summit-europe/>
>>> (September 16-18) and Linux Plumbers Conference
>>> <https://lpc.events/event/18/> (September 18-20).
>>>
>>> Dave will be giving an update on "State of the Bloat" on Wednesday,
>>> September 18
>>> @ 6PM CET | 12PM EST | 9AM PST
>>> https://lpc.events/event/18/contributions/1967/
>>>
>>> It would be possible to watch it online - Linux Plumbers organizers wil=
l
>>> share a link to streaming before the start of the event on social media=
:
>>> https://x.com/LinuxPlumbers
>>> https://mastodon.social/@linuxplumbersconf
>>>
>>> So either see you in Vienna or have fun watching it online.
>>>
>>> All the best,
>>>
>>> Frank
>>>
>>> Frantisek (Frank) Borsik
>>>
>>>
>>>
>>> https://www.linkedin.com/in/frantisekborsik
>>>
>>> Signal, Telegram, WhatsApp: +421919416714
>>>
>>> iMessage, mobile: +420775230885
>>>
>>> Skype: casioa5302ca
>>>
>>> frantisek.borsik@gmail.com
>>>
>> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake
>


--=20
Regards,
Dave Seddon
+1 415 857 5102

--000000000000072a0706227e6e0d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Frank!</div><div><br></div><div>Here are the f=
ull xTCP2 slides for anybody who&#39;s interested.=C2=A0 Questions welcomed=
.<br></div><div><a href=3D"https://docs.google.com/presentation/d/11rixKNfI=
BCdofUpPL2wOuiWJXa40x4I0A1wuTMMv4Uo/edit?usp=3Dsharing">https://docs.google=
.com/presentation/d/11rixKNfIBCdofUpPL2wOuiWJXa40x4I0A1wuTMMv4Uo/edit?usp=
=3Dsharing</a></div><div><br></div><div>I&#39;ve started work on the visual=
izations, and hopefully I&#39;ll have something to present in the next few =
weeks<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Sep 19, 2024 at 12:01=E2=80=AFPM Frantisek Borsik v=
ia Cake &lt;<a href=3D"mailto:cake@lists.bufferbloat.net">cake@lists.buffer=
bloat.net</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">If you have missed Dave&#39;s &quot;State of th=
e Bloat&quot; talk, here you are: =C2=A0<a href=3D"https://www.youtube.com/=
live/qTVNcuzhV6M?t=3D32082s" target=3D"_blank">https://www.youtube.com/live=
/qTVNcuzhV6M?t=3D32082s</a><div><br clear=3D"all"><div><div dir=3D"ltr" cla=
ss=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div>All the best,</div><div><br></div><div><p class=3D"=
MsoNormal" style=3D"color:rgb(34,34,34)">Frank<u></u><u></u></p><p class=3D=
"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><u></u></p><p class=3D"Mso=
Normal" style=3D"color:rgb(34,34,34)">Frantisek (Frank) Borsik<u></u><u></u=
></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u>=C2=A0<u><=
/u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"http=
s://www.linkedin.com/in/frantisekborsik" style=3D"color:rgb(17,85,204)" tar=
get=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a><u></u><u></u=
></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Signal, Telegram,=
 WhatsApp: +421919416714=C2=A0<u></u><u></u></p><p class=3D"MsoNormal" styl=
e=3D"color:rgb(34,34,34)">iMessage, mobile: +420775230885<u></u><u></u></p>=
<p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Skype: casioa5302ca<u>=
</u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=
=3D"mailto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,85,204)" targe=
t=3D"_blank">frantisek.borsik@gmail.com</a></p></div></div></div></div></di=
v></div></div></div></div></div></div></div></div><br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 17,=
 2024 at 11:27=E2=80=AFPM Frantisek Borsik &lt;<a href=3D"mailto:frantisek.=
borsik@gmail.com" target=3D"_blank">frantisek.borsik@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div dir=3D"ltr">Hello to all,<div><br></div><div><div>Tune in: <a href=
=3D"https://www.youtube.com/watch?v=3DqTVNcuzhV6M" target=3D"_blank">https:=
//www.youtube.com/watch?v=3DqTVNcuzhV6M</a>=C2=A0this Wednesday, September =
18, @ 6PM CET | 12PM EST | 11PM CST | 10AM MST | 9AM PST</div><div><br></di=
v><div>Learn more:</div><div><a href=3D"https://lpc.events/event/18/contrib=
utions/1967/" target=3D"_blank">https://lpc.events/event/18/contributions/1=
967/</a><br></div><div>Slides will be available here, too.</div><div><br cl=
ear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr=
"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"=
ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>All the best,<=
/div><div><br></div><div><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34=
)">Frank<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,3=
4)"><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">=
Frantisek (Frank) Borsik<u></u><u></u></p><p class=3D"MsoNormal" style=3D"c=
olor:rgb(34,34,34)"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal" style=3D=
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
</div></div><br></div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Sep 13, 2024 at 12:33=E2=80=AFAM Fran=
tisek Borsik &lt;<a href=3D"mailto:frantisek.borsik@gmail.com" target=3D"_b=
lank">frantisek.borsik@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello to all,<div><br></d=
iv><div>We are heading to Vienna for=C2=A0<a href=3D"https://events.linuxfo=
undation.org/open-source-summit-europe/" target=3D"_blank">Open Source Summ=
it Europe</a> (September 16-18) and <a href=3D"https://lpc.events/event/18/=
" target=3D"_blank">Linux Plumbers Conference</a> (September 18-20).</div><=
div><br></div><div>Dave will be giving an update on &quot;State of the Bloa=
t&quot; on Wednesday, September 18=C2=A0</div><div>@ 6PM CET | 12PM EST | 9=
AM PST</div><div><a href=3D"https://lpc.events/event/18/contributions/1967/=
" target=3D"_blank">https://lpc.events/event/18/contributions/1967/</a></di=
v><div><br></div><div>It would be possible to watch it online - Linux Plumb=
ers organizers will share a link to streaming before the start of the event=
 on social media:</div><div><a href=3D"https://x.com/LinuxPlumbers" target=
=3D"_blank">https://x.com/LinuxPlumbers<br></a></div><div><a href=3D"https:=
//mastodon.social/@linuxplumbersconf" target=3D"_blank">https://mastodon.so=
cial/@linuxplumbersconf<br></a></div><div><br></div><div>So either see you =
in Vienna or have fun watching it online.</div><div><br></div><div><div><di=
v dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"l=
tr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><div>All the best,</div><div><br></div>=
<div><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frank<u></u><u></=
u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><u></u></=
p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frantisek (Frank) Bo=
rsik<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">=
<u></u>=C2=A0<u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)=
"><a href=3D"https://www.linkedin.com/in/frantisekborsik" style=3D"color:rg=
b(17,85,204)" target=3D"_blank">https://www.linkedin.com/in/frantisekborsik=
</a><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">=
Signal, Telegram, WhatsApp: +421919416714=C2=A0<u></u><u></u></p><p class=
=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessage, mobile: +42077523088=
5<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Sky=
pe: casioa5302ca<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb=
(34,34,34)"><a href=3D"mailto:frantisek.borsik@gmail.com" style=3D"color:rg=
b(17,85,204)" target=3D"_blank">frantisek.borsik@gmail.com</a></p></div></d=
iv></div></div></div></div></div></div></div></div></div></div></div></div>=
</div>
</blockquote></div></div>
</blockquote></div>
_______________________________________________<br>
Cake mailing list<br>
<a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.=
bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"noreferrer" =
target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Regards,<br></div>Dave=
 Seddon<br>+1 415 857 5102<br></div></div></div></div></div></div>

--000000000000072a0706227e6e0d--

--===============8505115948502055239==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8505115948502055239==--

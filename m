Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C18497CDEB
	for <lists+cake@lfdr.de>; Thu, 19 Sep 2024 21:01:02 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E8BEB3CB46;
	Thu, 19 Sep 2024 15:00:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1726772454;
	bh=XZFOstDZYONA41KHyZkKKIya8zy9MWzTXwOvYoyAoEE=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=p7szKZbhI81wnV9U9IByJVaOsengjA+GVV+eQ07gcqLb04hk5tZ94WUM0fS86jNSW
	 z6s+fBv1ganAm5vSqxcaqRt2YBQkN+doh6iBBIpe1C15MvN0WTJJSmeB3cPhDDVM42
	 iieQEIbmj0/Ce4HiIrDPCl1hDARFPfLFa4DUi12uEgO3TjCouIouUyMbkvkS/ZkoMX
	 dleersOrPLIhFQIRJBJ56FndD1lsKnDZCLRh0mv939Hz81nXUuziPvY60tGEIdVrXn
	 uL3xE0UyB8n+x0F3q8qoidoYZ+lNrHhg5mWhIzHNbQIoWCDcIjUtW+IbBRP3AejM6H
	 5CZUAMXXcalhg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com
 [IPv6:2607:f8b0:4864:20::c2c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AED9A3CB38;
 Thu, 19 Sep 2024 15:00:52 -0400 (EDT)
Received: by mail-oo1-xc2c.google.com with SMTP id
 006d021491bc7-5e1b72fc5f3so683347eaf.2; 
 Thu, 19 Sep 2024 12:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1726772452; x=1727377252; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=owsbPMAc49J7hvnSx2eZeM8ChRh4gTEu1Dx2+aFaFC8=;
 b=NB+CBKZ8OhiN5cVwIkfuLlCekNH+0H+uNsc9cnFhWg6/cM6B9A5ZT3j2qs7g/zKqyz
 uqhFqmkobCmQ/WVhMc9LfsIwJhrRKPMVt3H+06PZJBm/+OTCVv/PlJb3sRV2ZlSXjGeX
 tcjLiF/porvmTQFCLnBy3W62ux+P8IoobCSeajr4P5DOAJ86nQiH2/H8R4DWmqjZUJWH
 0C3wglcZx1m+fFJqZatT8WYudiWEyvqVrCBZiQCcwaCxzeUF/bIIWsn1AQcyL3Iu3vIi
 H4xVm9zJU4KMjyYx4rC/ywtMLAydEokTN33HeetXzmip3mKVA8Xf4+l+GnEsk7UVe1iG
 pTMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726772452; x=1727377252;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=owsbPMAc49J7hvnSx2eZeM8ChRh4gTEu1Dx2+aFaFC8=;
 b=uFWlm1uldkfMhpD1+V3FPMQnIJAlQjvg7z3IEp9DzlIet6Gf/2E6S5/X/4zbeaysCd
 QAL4+BpjSizTue1Bn7CasZfejq6qgUV55+OkoCTZ115CfaBwZrb0nTU+jfLGuwMXiFaJ
 eJG4bByMd7IKWzamTLgTkT/L8gQYuHW7RXpg9Te+8423S1/u3kdRsPb46D3VZMMX8weU
 Z1nx6VlC2BEqujqjKzUTesU4THuTOg7A0aUtfXZRMBjRyzjuBoGeI3m6eTHfJVhc6Pac
 0KQXfzi23vHowsfgoShyPlMBgVCg27MQAovBGZfEXtr1P+r350rIuyCiuNpX2alAxhrx
 aqLg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUTVS36ADkDvPdjoGLiQEjIYIcn6GdXtELvX6ar1XKePzswyayDuxkEZ4E7yNmSFUEQZZqyrD5T+Vo=@lists.bufferbloat.net,
 AJvYcCUrXHqE0a5nqByksDdc2ZvwWIMp9zNuVQOp3X3aymxn41kyGSaJdxvsVniXzv3DzwyC2WCJ5w==@lists.bufferbloat.net,
 AJvYcCVnQPKkKH8gt1j4vK9nBlx/Z0jlGGLPN9jxUG9UKkYCnRPKFYrnETRVM2tWgi26u8zzAEUj@lists.bufferbloat.net,
 AJvYcCWZIuHWaW7/6vocCHte+COaubLEUiiSEkZU1nvZLP7L44jLpoqTESMcIxXuQEuMSMOSQDTvXrV47zxQ0Yz3WlE=@lists.bufferbloat.net,
 AJvYcCX7aicq2YwSNzJ7W5pAk3KQvB+aUb/MyMJAwG4Er2WCupcM4k3FT9okHFd8ZOVX9yJx+rrxAg==@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YyYurbEV84yjKHD2loTCC0Mb2/IBY9ryi7+6sfgcidVR/JA3HVT
 wc1zfRatA1raM1M1zxX0PIszDjDDIVdg6ymaL51DyfF5qlBARSEeB7skknVzDSl+dzeTH9IY34d
 tDDSYEnvVQ63OFtLlTf/lTZBIUhMEgRvRB/M=
X-Google-Smtp-Source: AGHT+IG7wx24jCOBaKyV0EDefM3UM0hfJ1rA4QlZaoNm85ZZku+mutsQWMS9MGMubwp72bN6ZWTLZ2I/XiOoD+n/MKg=
X-Received: by 2002:a05:6358:2808:b0:1b8:33f2:7c81 with SMTP id
 e5c5f4694b2df-1bc975d09e5mr82910955d.8.1726772450820; Thu, 19 Sep 2024
 12:00:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOgCZyLBz0T-CvQn2FsOORuVfCiT_--b9RQ0CmHRnYiXyA@mail.gmail.com>
 <CAJUtOOj5n76gepLMurA3a+mxz7LJqoi7ND1FpTRkwctUsLi4dg@mail.gmail.com>
In-Reply-To: <CAJUtOOj5n76gepLMurA3a+mxz7LJqoi7ND1FpTRkwctUsLi4dg@mail.gmail.com>
Date: Thu, 19 Sep 2024 21:00:14 +0200
Message-ID: <CAJUtOOh210ZEOVcwWeDSYNHnn5sjySVjNj3VBW5xfp0vA1Ebrw@mail.gmail.com>
To: libreqos <libreqos@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>, 
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>
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
From: Frantisek Borsik via Cake <cake@lists.bufferbloat.net>
Reply-To: Frantisek Borsik <frantisek.borsik@gmail.com>
Content-Type: multipart/mixed; boundary="===============4860649710460395033=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4860649710460395033==
Content-Type: multipart/alternative; boundary="0000000000008a132906227d8afc"

--0000000000008a132906227d8afc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you have missed Dave's "State of the Bloat" talk, here you are:
https://www.youtube.com/live/qTVNcuzhV6M?t=3D32082s

All the best,

Frank

Frantisek (Frank) Borsik



https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com


On Tue, Sep 17, 2024 at 11:27=E2=80=AFPM Frantisek Borsik <
frantisek.borsik@gmail.com> wrote:

> Hello to all,
>
> Tune in: https://www.youtube.com/watch?v=3DqTVNcuzhV6M this Wednesday,
> September 18, @ 6PM CET | 12PM EST | 11PM CST | 10AM MST | 9AM PST
>
> Learn more:
> https://lpc.events/event/18/contributions/1967/
> Slides will be available here, too.
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
> On Fri, Sep 13, 2024 at 12:33=E2=80=AFAM Frantisek Borsik <
> frantisek.borsik@gmail.com> wrote:
>
>> Hello to all,
>>
>> We are heading to Vienna for Open Source Summit Europe
>> <https://events.linuxfoundation.org/open-source-summit-europe/>
>> (September 16-18) and Linux Plumbers Conference
>> <https://lpc.events/event/18/> (September 18-20).
>>
>> Dave will be giving an update on "State of the Bloat" on Wednesday,
>> September 18
>> @ 6PM CET | 12PM EST | 9AM PST
>> https://lpc.events/event/18/contributions/1967/
>>
>> It would be possible to watch it online - Linux Plumbers organizers will
>> share a link to streaming before the start of the event on social media:
>> https://x.com/LinuxPlumbers
>> https://mastodon.social/@linuxplumbersconf
>>
>> So either see you in Vienna or have fun watching it online.
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
>

--0000000000008a132906227d8afc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If you have missed Dave&#39;s &quot;State of the Bloat&quo=
t; talk, here you are: =C2=A0<a href=3D"https://www.youtube.com/live/qTVNcu=
zhV6M?t=3D32082s">https://www.youtube.com/live/qTVNcuzhV6M?t=3D32082s</a><d=
iv><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><d=
iv dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div>All the best,</div><div><br></div><div><p cl=
ass=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frank<u></u><u></u></p><p c=
lass=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><u></u></p><p class=
=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frantisek (Frank) Borsik<u></u=
><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u>=C2=
=A0<u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=
=3D"https://www.linkedin.com/in/frantisekborsik" style=3D"color:rgb(17,85,2=
04)" target=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a><u></=
u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Signal, T=
elegram, WhatsApp: +421919416714=C2=A0<u></u><u></u></p><p class=3D"MsoNorm=
al" style=3D"color:rgb(34,34,34)">iMessage, mobile: +420775230885<u></u><u>=
</u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Skype: casioa5=
302ca<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"=
><a href=3D"mailto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,85,204=
)" target=3D"_blank">frantisek.borsik@gmail.com</a></p></div></div></div></=
div></div></div></div></div></div></div></div></div></div><br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue,=
 Sep 17, 2024 at 11:27=E2=80=AFPM Frantisek Borsik &lt;<a href=3D"mailto:fr=
antisek.borsik@gmail.com">frantisek.borsik@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hello to all,<div><br>=
</div><div><div>Tune in: <a href=3D"https://www.youtube.com/watch?v=3DqTVNc=
uzhV6M" target=3D"_blank">https://www.youtube.com/watch?v=3DqTVNcuzhV6M</a>=
=C2=A0this Wednesday, September 18, @ 6PM CET | 12PM EST | 11PM CST | 10AM =
MST | 9AM PST</div><div><br></div><div>Learn more:</div><div><a href=3D"htt=
ps://lpc.events/event/18/contributions/1967/" target=3D"_blank">https://lpc=
.events/event/18/contributions/1967/</a><br></div><div>Slides will be avail=
able here, too.</div><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"=
gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div>All the best,</div><div><br></div><div><p class=3D"MsoNor=
mal" style=3D"color:rgb(34,34,34)">Frank<u></u><u></u></p><p class=3D"MsoNo=
rmal" style=3D"color:rgb(34,34,34)"><u></u><u></u></p><p class=3D"MsoNormal=
" style=3D"color:rgb(34,34,34)">Frantisek (Frank) Borsik<u></u><u></u></p><=
p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u>=C2=A0<u></u></p=
><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"https://ww=
w.linkedin.com/in/frantisekborsik" style=3D"color:rgb(17,85,204)" target=3D=
"_blank">https://www.linkedin.com/in/frantisekborsik</a><u></u><u></u></p><=
p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Signal, Telegram, Whats=
App: +421919416714=C2=A0<u></u><u></u></p><p class=3D"MsoNormal" style=3D"c=
olor:rgb(34,34,34)">iMessage, mobile: +420775230885<u></u><u></u></p><p cla=
ss=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Skype: casioa5302ca<u></u><u=
></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"ma=
ilto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,85,204)" target=3D"_=
blank">frantisek.borsik@gmail.com</a></p></div></div></div></div></div></di=
v></div></div></div></div></div></div></div><br></div></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 13,=
 2024 at 12:33=E2=80=AFAM Frantisek Borsik &lt;<a href=3D"mailto:frantisek.=
borsik@gmail.com" target=3D"_blank">frantisek.borsik@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr">Hello to all,<div><br></div><=
div>We are heading to Vienna for=C2=A0<a href=3D"https://events.linuxfounda=
tion.org/open-source-summit-europe/" target=3D"_blank">Open Source Summit E=
urope</a> (September 16-18) and <a href=3D"https://lpc.events/event/18/" ta=
rget=3D"_blank">Linux Plumbers Conference</a> (September 18-20).</div><div>=
<br></div><div>Dave will be giving an update on &quot;State of the Bloat&qu=
ot; on Wednesday, September 18=C2=A0</div><div>@ 6PM CET | 12PM EST | 9AM P=
ST</div><div><a href=3D"https://lpc.events/event/18/contributions/1967/" ta=
rget=3D"_blank">https://lpc.events/event/18/contributions/1967/</a></div><d=
iv><br></div><div>It would be possible to watch it online - Linux Plumbers =
organizers will share a link to streaming before the start of the event on =
social media:</div><div><a href=3D"https://x.com/LinuxPlumbers" target=3D"_=
blank">https://x.com/LinuxPlumbers<br></a></div><div><a href=3D"https://mas=
todon.social/@linuxplumbersconf" target=3D"_blank">https://mastodon.social/=
@linuxplumbersconf<br></a></div><div><br></div><div>So either see you in Vi=
enna or have fun watching it online.</div><div><br></div><div><div><div dir=
=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><=
div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v dir=3D"ltr"><div dir=3D"ltr"><div>All the best,</div><div><br></div><div>=
<p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frank<u></u><u></u></p=
><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><u></u></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frantisek (Frank) Borsik<=
u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></=
u>=C2=A0<u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a =
href=3D"https://www.linkedin.com/in/frantisekborsik" style=3D"color:rgb(17,=
85,204)" target=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a><=
u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Signa=
l, Telegram, WhatsApp: +421919416714=C2=A0<u></u><u></u></p><p class=3D"Mso=
Normal" style=3D"color:rgb(34,34,34)">iMessage, mobile: +420775230885<u></u=
><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Skype: cas=
ioa5302ca<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,=
34)"><a href=3D"mailto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,85=
,204)" target=3D"_blank">frantisek.borsik@gmail.com</a></p></div></div></di=
v></div></div></div></div></div></div></div></div></div></div></div></div>
</blockquote></div></div>
</blockquote></div>

--0000000000008a132906227d8afc--

--===============4860649710460395033==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4860649710460395033==--

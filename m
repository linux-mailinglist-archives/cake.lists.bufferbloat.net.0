Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2508CA73E17
	for <lists+cake@lfdr.de>; Thu, 27 Mar 2025 19:44:39 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B41943CB39;
	Thu, 27 Mar 2025 14:44:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1743101077;
	bh=mXPnQokCZowIa3gGjYn0+f9cII9NW6eE8jdlB0VSwWk=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=eEhY1VekQ4zzBaMWXqCtpaImDL+2DXLOTQCdlEDugMWgZxOX/DFJbhPUt9CBrCunQ
	 LfbomNweTRBMcIeqTcOXCQZjA6DS8P+ATweuoTf+7kyXB5wwECGaigNRW7pjrYwMPA
	 SH88ylBz624ORMKnG/u+ruKsR477UonNis/QwD9dXFRlo5RWkqJQN3WOG9UXQk6P9j
	 5EgqMEJ/8hRGswvc1rL8Rlx2dYQnkhzA/+OGxlWX9R8smcfFWeHtvpPi1SMDmk6X9V
	 oZStlBoybeIBJIX/yaA6mUt8ECvq0T1UW60uCTXE5432IvmLH6sNPQpPF75hpCin/2
	 +NNGvmn9yp9yw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B18423B2A4
 for <cake@lists.bufferbloat.net>; Thu, 27 Mar 2025 14:44:35 -0400 (EDT)
Received: by mail-ed1-x532.google.com with SMTP id
 4fb4d7f45d1cf-5e66407963fso2586030a12.2
 for <cake@lists.bufferbloat.net>; Thu, 27 Mar 2025 11:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1743101074; x=1743705874; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Lp3SP+WvxviH0lmvloMWKejcnMw0h53C3tYyFYn53Tg=;
 b=cX9OEqGtedDRP6gsVYvPQ16W9vbqoGTPhhPSoq5wTmGQ7iEmMd+Lhe4dPfbOS9dRRn
 ajf3LVgYlNgZ+eAJxhGBgzJ+3RmRSyUVZp5aZWHmb32HT3oJvB9KEWAWAYbl3N2AjOAL
 E8pRubGdUcspCWFJQ964AfzXGZ1Qv2eejHahoJR6UJoC9/2SlykBTudbbZmu0HDR2OGm
 zwum4WN7ngIcjMNS7A9pVv2ciF8DBpv/d0TH/Vlz+W1txXO1BaQty7XBG6NhEBOnX2uE
 6lXQQIAFz01Nvvh95dt2EVDFy8dDT16RC0fOeeuMOXt1hRSri3yQrhRRMixoE3pmOKaa
 j07Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743101074; x=1743705874;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Lp3SP+WvxviH0lmvloMWKejcnMw0h53C3tYyFYn53Tg=;
 b=RlXRqUtJX4srFP7/iAqMdj6fxSutI31MUH9FIr2VnYToFhyCHKRsiZ49I5h70vyJeL
 fFkFxUJdTnSL+4jw0txvpmuaPoFqIdG0iG2q+NdOsWTxVdoqT7z69jMZMLDg5yumqrNy
 hWomg/BYr/7h7aq10Jjp3XHlYhEE9ZCqccW9i4ZqPqq9Srpcn1zDz0013NZRnIT3HNKF
 SHKlilb1Ptx//itkkVyT8LVnKlOl+xKJRKYxHp5MQ2Lfk+CVDJQm425cadA/u/irvN67
 93CdiMyMXtik3Q2Yd0L+1JQZp4J1OGIirhWh6r+i8g/KXdFjECxhlK0Cnp5JTcFwf2DH
 5jng==
X-Forwarded-Encrypted: i=1;
 AJvYcCWdl0wEMhzDgwLYDlRaLclIt21zA24Ok9wayG6dypihfmSH/HSbQVqmj32AWoUz+4uZk0eu@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yz7hiJfRLiOjBFl3yh7h86Wyh9lj2+0B38DzoIwfCL8SvBvYJWo
 qlEkrH2apTzu8PxPjzNbI6eH3I1LzD90lRv1hJ0peoMrXag8ESWKGwnKWTx7+Qvv8oaeuCaVzEu
 SwBP8GRNB51xY6GxOXsIgYNDGtoo=
X-Gm-Gg: ASbGnctM1LSGX/rm6tew+zt5YJ5k57NN+oyEIxOwrhPY3ty7NVoO6wMZvg2Bypc/RC3
 ZCZljZa5oftewRcGyRQHPkIUfCbWAaZj77DLOUiTI4rVg4LxUAB0ncKnZ6KcyfxAhfvtfSRb8aR
 WktAI5J4sVborcxzpWTLRmND4KsT8=
X-Google-Smtp-Source: AGHT+IHGvD2lWe0jEMMe9Mv0RYaESoyQZVHQEpPeuSPvgSW/B0x8zcVznxYoOS60KVX808ySomZQqhPAWH7wzwdyiQ0=
X-Received: by 2002:a17:907:3fa3:b0:ac3:17b6:737 with SMTP id
 a640c23a62f3a-ac6fb18d6bfmr460239466b.45.1743101074272; Thu, 27 Mar 2025
 11:44:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOh3DEL==w8uYTkPEyhZpgYbLx5xbyLJtXCCpNUE+SQyJg@mail.gmail.com>
 <7FBEC0CA-162E-48A2-81D6-97CDD2F63EEC@gmail.com>
 <CAJUtOOj1+US-u-aB=8=dCFnoi1pCmzjojSUY-46mL7_Uq3fV8A@mail.gmail.com>
 <8756E062-0FC3-4301-8884-B1BCA7A124B5@jeffhansen.com>
 <CACyFTPE7FfR0gjyNaJwtc2SfszVoSjWAqCnUyqS+K6KiTABqpA@mail.gmail.com>
In-Reply-To: <CACyFTPE7FfR0gjyNaJwtc2SfszVoSjWAqCnUyqS+K6KiTABqpA@mail.gmail.com>
Date: Thu, 27 Mar 2025 19:45:54 +0100
X-Gm-Features: AQ5f1JoV9YSqAUTNlDgCM_gDnRp8aEDrVbt0LEAwKb7M7QjuKs8XJa_RgVa--6M
Message-ID: <CAJUtOOgDDFw320G9MxUSBtt+oyD3cPnFTNkpYSnbhArTYbXjsA@mail.gmail.com>
To: Daryll Swer <contact@daryllswer.com>
Subject: Re: [Cake] CAKE is going to be deployed on Alta Labs any day now!
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
Cc: Cake List <cake@lists.bufferbloat.net>, Jeff Hansen <x@jeffhansen.com>
Content-Type: multipart/mixed; boundary="===============0626414812017784242=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0626414812017784242==
Content-Type: multipart/alternative; boundary="00000000000056fe370631575820"

--00000000000056fe370631575820
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Alta Labs just published a video explaining their CAKE implementation:
https://www.youtube.com/watch?v=3DvxDO0flKcI0

All the best,

Frank

Frantisek (Frank) Borsik



https://www.linkedin.com/in/frantisekborsik

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com


On Mon, Mar 24, 2025 at 4:39=E2=80=AFPM Daryll Swer <contact@daryllswer.com=
> wrote:

> I was looking at your Route10 product, but it looks to be consumer-heavy,
> at this point time. I run stuff like BGP in my home network (as I have
> MPLS-to-the-home delivery) and PIM-SM, would be cool if you folks support=
ed
> some DC-fabric features on Route10 in the future with FRR as the daemon o=
r
> something.
>
> One thing I'd like to mention, Route10 should have a good NAT
> implementation to support EIM-NAT for TCP/UDP to allow P2P networking to
> work over a NAT box.
> Additionally, support NAT Hairpinning for user's LAN subnets to allow
> intra-NAT traffic to work over STUN discovery, this eliminates TURN traff=
ic.
> Small to large-scale CGNAT deployments around the globe is something I've
> been consulting for a few years now. I'm happy to potentially beta test
> your products, if you'd like, for best practices conformance with very
> specific RFCs.
>
> BQL would be good to have for long-term viewpoint, perhaps your Ethernet
> driver provider, could patch it up for BQL support and that would be a go=
od
> foundation for FQ_Codel on your Route10. MikroTik has FQ_Codel, but lacks
> BQL, and they refused to listen to Fran and Dave Taht, so perhaps you fol=
ks
> are our only hope :)
>
> *--*
> Best Regards
> Daryll Swer
> Website: daryllswer.com
> <https://mailtrack.io/l/6bdc1188688bc319302e68dd0abb6ef092a85bc8?url=3Dht=
tps%3A%2F%2Fwww.daryllswer.com&u=3D2153471&signature=3D673d0c5350bbb0e6>
>
>
> On Mon, 24 Mar 2025 at 20:53, Jeff Hansen <x@jeffhansen.com> wrote:
>
>> Frank,
>>
>> The hardware that Route10 is based off of doesn=E2=80=99t support FQ Cod=
el nor
>> CAKE at all, so everything is done in software on our 5.4 Linux kernel. =
It
>> works great, though. In some instances it=E2=80=99s the only way to max =
out a PPPoE
>> connection and have optimal latency.
>>
>> It doesn=E2=80=99t look like our ethernet driver supports BQL at all, so=
 we
>> haven=E2=80=99t tried that yet, but as is, it absolutely eliminates high=
 latency if
>> tuned properly.
>>
>> -Jeff
>>
>> On Mar 21, 2025, at 2:27=E2=80=AFAM, Frantisek Borsik <frantisek.borsik@=
gmail.com>
>> wrote:
>>
>> Happy to see that! Thanks, guys.
>>
>> Adding Jeff
>> <https://mailtrack.io/l/874104aa2fae8c2c3e8c0b7c66386cd9ef1a83ab?url=3Dh=
ttps%3A%2F%2Fwww.linkedin.com%2Fin%2Fjeff-hansen-6794021%2F&u=3D2153471&sig=
nature=3Defe63bcd8a19e5e7>,
>> Alta Labs CTO - Darryl
>> <https://mailtrack.io/l/56dc9d27cea2a0afbd536db4021116428c91b0e6?url=3Dh=
ttps%3A%2F%2Fx.com%2FDaryllSwer%2Fstatus%2F1902486684476047544&u=3D2153471&=
signature=3Db49f25a96708f53a>
>> has a suggestion how to push this further: "Maybe they can add both
>> FQ_CoDel and CAKE with BQL support? How's hardware-offloading of FQ_CoDe=
l
>> looking on these =E2=80=9Cprosumer=E2=80=9D equipment these days? I have=
n't kept up over a
>> year on this topic."
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
>> <https://mailtrack.io/l/62c56dba3ad2b34d25f6a2db81adf0b5e9e7c6aa?url=3Dh=
ttps%3A%2F%2Fwww.linkedin.com%2Fin%2Ffrantisekborsik&u=3D2153471&signature=
=3D80914c9fb3689eb2>
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
>> On Fri, Mar 21, 2025 at 3:44=E2=80=AFAM Jonathan Morton <chromatix99@gma=
il.com>
>> wrote:
>>
>>> > On 19 Mar, 2025, at 12:01 am, Frantisek Borsik via Cake <
>>> cake@lists.bufferbloat.net> wrote:
>>> >
>>> > Should be pushed through production in day or two and they will be
>>> talking about it on https://streamyard.com/watch/ubYm2AffWkYi
>>> <https://mailtrack.io/l/f6be4a2c3da3f8d78695f24266cda26e686e9453?url=3D=
https%3A%2F%2Fstreamyard.com%2Fwatch%2FubYm2AffWkYi&u=3D2153471&signature=
=3Da5dbc7add3e2dbe3>
>>> this Wednesday,  March 19, at 1PM EST / 12PM CST / 11AM MST / 10AM PST
>>>
>>> I joined the stream, and was able to ask about the throughput they were
>>> getting with CAKE on their hardware.  This is just for the "Route 10"
>>> rather than their APs, and they reported getting about 2.5Gbps throughp=
ut
>>> with CAKE enabled. They do correctly note that the hardware-accelerated
>>> forwarding path is disabled for the interface where CAKE is turned on.
>>>
>>> Supporting 2.5Gbps is pretty good I think, and should be sufficient to
>>> handle all practical Internet subscriptions that are likely to require
>>> bufferbloat mitigation.  For comparison, on the same call they claimed
>>> about 800Mbps throughput for acting as a WireGuard tunnel endpoint.
>>>
>>>  - Jonathan Morton
>>
>>
>>

--00000000000056fe370631575820
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Alta Labs just published a video explaining their CAK=
E implementation:=C2=A0</div><div><a href=3D"https://www.youtube.com/watch?=
v=3DvxDO0flKcI0">https://www.youtube.com/watch?v=3DvxDO0flKcI0</a><br></div=
><div><br></div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartm=
ail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div>All the best,</div><div><br></div><div><p class=3D=
"MsoNormal" style=3D"color:rgb(34,34,34)">Frank<u></u><u></u></p><p class=
=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><u></u></p><p class=3D"=
MsoNormal" style=3D"color:rgb(34,34,34)">Frantisek (Frank) Borsik<u></u><u>=
</u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u>=C2=A0<=
u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a href=3D"h=
ttps://www.linkedin.com/in/frantisekborsik" style=3D"color:rgb(17,85,204)" =
target=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a><u></u><u>=
</u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Signal, Telegr=
am, WhatsApp: +421919416714=C2=A0<u></u><u></u></p><p class=3D"MsoNormal" s=
tyle=3D"color:rgb(34,34,34)">iMessage, mobile: +420775230885<u></u><u></u><=
/p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Skype: casioa5302ca=
<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a h=
ref=3D"mailto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,85,204)" ta=
rget=3D"_blank">frantisek.borsik@gmail.com</a></p></div></div></div></div><=
/div></div></div></div></div></div></div></div></div><br></div><br><div cla=
ss=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Mon, Mar 24, 2025 at 4:39=E2=80=AFPM Daryll Swer &lt;<a href=3D"mail=
to:contact@daryllswer.com">contact@daryllswer.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div>I was looking at you=
r Route10 product, but it looks to be consumer-heavy, at this point time. I=
 run stuff like BGP in my home network (as I have MPLS-to-the-home delivery=
) and PIM-SM, would be cool if you folks supported some DC-fabric features =
on Route10 in the future with FRR as the daemon or something.</div><div><br=
></div><div>One thing I&#39;d like to mention, Route10 should have a good N=
AT implementation to support EIM-NAT for TCP/UDP to allow P2P networking to=
 work over a NAT box.<br>Additionally, support NAT Hairpinning for user&#39=
;s LAN subnets to allow intra-NAT traffic to work over STUN discovery, this=
 eliminates TURN traffic.</div><div>Small to large-scale CGNAT deployments =
around the globe is something I&#39;ve been consulting for a few years now.=
 I&#39;m happy to potentially beta test your products, if you&#39;d like, f=
or best practices conformance with very specific RFCs.</div><div><br></div>=
<div>BQL would be good to have for long-term viewpoint, perhaps your Ethern=
et driver provider, could patch it up for BQL support and that would be a g=
ood foundation for FQ_Codel on your Route10. MikroTik has FQ_Codel, but lac=
ks BQL, and they refused to listen to Fran and Dave Taht, so perhaps you fo=
lks are our only hope :)</div><div><div dir=3D"ltr" class=3D"gmail_signatur=
e"><div dir=3D"ltr"><font color=3D"#000000" face=3D"arial, sans-serif"><br>=
<b>--</b><br></font><div><font color=3D"#000000" face=3D"arial, sans-serif"=
>Best Regards</font></div><div><font color=3D"#000000" face=3D"arial, sans-=
serif">Daryll Swer</font></div><div><font color=3D"#000000" face=3D"arial, =
sans-serif">Website: <a href=3D"https://mailtrack.io/l/6bdc1188688bc319302e=
68dd0abb6ef092a85bc8?url=3Dhttps%3A%2F%2Fwww.daryllswer.com&amp;u=3D2153471=
&amp;signature=3D673d0c5350bbb0e6" target=3D"_blank">daryllswer.com</a></fo=
nt></div></div></div></div><br></div><br><img width=3D"0" height=3D"0" alt=
=3D"" style=3D"display: flex;" src=3D"https://mailtrack.io/trace/mail/461e1=
50f7481b721c415a4c33ae6e6281ba15d0c.png?u=3D2153471"><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 24 Mar 2025 at 20:53, Je=
ff Hansen &lt;<a href=3D"mailto:x@jeffhansen.com" target=3D"_blank">x@jeffh=
ansen.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
border-left-color:rgb(204,204,204);padding-left:1ex"><div>Frank,<div><br></=
div><div>The hardware that Route10 is based off of doesn=E2=80=99t support =
FQ Codel nor CAKE at all, so everything is done in software on our 5.4 Linu=
x kernel. It works great, though. In some instances it=E2=80=99s the only w=
ay to max out a PPPoE connection and have optimal latency.</div><div><br></=
div><div>It doesn=E2=80=99t look like our ethernet driver supports BQL at a=
ll, so we haven=E2=80=99t tried that yet, but as is, it absolutely eliminat=
es high latency if tuned properly.</div><div><br></div><div>-Jeff<br id=3D"=
m_-7244748172699169551m_7029122831126812655lineBreakAtBeginningOfMessage"><=
div><br><blockquote type=3D"cite"><div>On Mar 21, 2025, at 2:27=E2=80=AFAM,=
 Frantisek Borsik &lt;<a href=3D"mailto:frantisek.borsik@gmail.com" target=
=3D"_blank">frantisek.borsik@gmail.com</a>&gt; wrote:</div><br><div><div di=
r=3D"ltr"><div>Happy to see that! Thanks, guys.</div><div><br></div><div>Ad=
ding <a href=3D"https://mailtrack.io/l/874104aa2fae8c2c3e8c0b7c66386cd9ef1a=
83ab?url=3Dhttps%3A%2F%2Fwww.linkedin.com%2Fin%2Fjeff-hansen-6794021%2F&amp=
;u=3D2153471&amp;signature=3Defe63bcd8a19e5e7" target=3D"_blank">Jeff</a>, =
Alta Labs CTO - <a href=3D"https://mailtrack.io/l/56dc9d27cea2a0afbd536db40=
21116428c91b0e6?url=3Dhttps%3A%2F%2Fx.com%2FDaryllSwer%2Fstatus%2F190248668=
4476047544&amp;u=3D2153471&amp;signature=3Db49f25a96708f53a" target=3D"_bla=
nk">Darryl</a> has a suggestion how to push this further: &quot;Maybe they =
can add both FQ_CoDel and CAKE with BQL support? How&#39;s hardware-offload=
ing of FQ_CoDel looking on these =E2=80=9Cprosumer=E2=80=9D equipment these=
 days? I haven&#39;t kept up over a year on this topic.&quot;</div><div><br=
></div><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><di=
v><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>All the best,</div>=
<div><br></div><div><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Fr=
ank<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><=
u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frant=
isek (Frank) Borsik<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:=
rgb(34,34,34)"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal" style=3D"colo=
r:rgb(34,34,34)"><a href=3D"https://mailtrack.io/l/62c56dba3ad2b34d25f6a2db=
81adf0b5e9e7c6aa?url=3Dhttps%3A%2F%2Fwww.linkedin.com%2Fin%2Ffrantisekborsi=
k&amp;u=3D2153471&amp;signature=3D80914c9fb3689eb2" style=3D"color:rgb(17,8=
5,204)" target=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a><u=
></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Signal=
, Telegram, WhatsApp: +421919416714=C2=A0<u></u><u></u></p><p class=3D"MsoN=
ormal" style=3D"color:rgb(34,34,34)">iMessage, mobile: +420775230885<u></u>=
<u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Skype: casi=
oa5302ca<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,3=
4)"><a href=3D"mailto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,85,=
204)" target=3D"_blank">frantisek.borsik@gmail.com</a></p></div></div></div=
></div></div></div></div></div></div></div></div></div></div><br></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Ma=
r 21, 2025 at 3:44=E2=80=AFAM Jonathan Morton &lt;<a href=3D"mailto:chromat=
ix99@gmail.com" target=3D"_blank">chromatix99@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,2=
04);padding-left:1ex">&gt; On 19 Mar, 2025, at 12:01 am, Frantisek Borsik v=
ia Cake &lt;<a href=3D"mailto:cake@lists.bufferbloat.net" target=3D"_blank"=
>cake@lists.bufferbloat.net</a>&gt; wrote:<br>
&gt; <br>
&gt; Should be pushed through production in day or two and they will be tal=
king about it on <a href=3D"https://mailtrack.io/l/f6be4a2c3da3f8d78695f242=
66cda26e686e9453?url=3Dhttps%3A%2F%2Fstreamyard.com%2Fwatch%2FubYm2AffWkYi&=
amp;u=3D2153471&amp;signature=3Da5dbc7add3e2dbe3" rel=3D"noreferrer" target=
=3D"_blank">https://streamyard.com/watch/ubYm2AffWkYi</a> this Wednesday,=
=C2=A0 March 19, at 1PM EST / 12PM CST / 11AM MST / 10AM PST<br>
<br>
I joined the stream, and was able to ask about the throughput they were get=
ting with CAKE on their hardware.=C2=A0 This is just for the &quot;Route 10=
&quot; rather than their APs, and they reported getting about 2.5Gbps throu=
ghput with CAKE enabled. They do correctly note that the hardware-accelerat=
ed forwarding path is disabled for the interface where CAKE is turned on.<b=
r>
<br>
Supporting 2.5Gbps is pretty good I think, and should be sufficient to hand=
le all practical Internet subscriptions that are likely to require bufferbl=
oat mitigation.=C2=A0 For comparison, on the same call they claimed about 8=
00Mbps throughput for acting as a WireGuard tunnel endpoint.<br>
<br>
=C2=A0- Jonathan Morton</blockquote></div>
</div></blockquote></div><br></div></div></blockquote></div></div>
</blockquote></div>

--00000000000056fe370631575820--

--===============0626414812017784242==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0626414812017784242==--

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E17AD0081
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:41:11 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 786BB3CBD7;
	Fri,  6 Jun 2025 06:40:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749206459;
	bh=2HOkiYgEagRdqgERPZMtUvOrYHJ7zcU9r01s++BYCoc=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=hmsAIFdz+hr3tSrYERrBJwaXT/5K19GKfhuVEXoE1HpNKKqNq8k26e/e9A6objNI3
	 DdMhzV4M9VwzGkycaj7vdqgj/LAob/HA49rqLUoc/aVxOz9f/8+X+cz5fYx3iCpkO1
	 19XzUaf1k1jsky9o24+/VrG1G7MEyOxpKzyyLCkqRrIf3zxLQyv+d1FRtmka4padsH
	 0ahPV5aMpFQ9wt4aJvzCnt0B7WyNRAV7LLZdLe+LETm6zjijGAqJPZ0VeNZjiULFli
	 qnFg8T8GZBJQX3kngIglfOUqHx//1FPdeOYrTvaN2yL88kedc28v7/tmKtqyARuNsa
	 5Ku3TnVaKnf8w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qv1-xf2d.google.com (mail-qv1-xf2d.google.com
 [IPv6:2607:f8b0:4864:20::f2d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 75DD83B2A4
 for <cake@lists.bufferbloat.net>; Mon, 24 Mar 2025 11:39:13 -0400 (EDT)
Received: by mail-qv1-xf2d.google.com with SMTP id
 6a1803df08f44-6e900a7ce55so69429346d6.3
 for <cake@lists.bufferbloat.net>; Mon, 24 Mar 2025 08:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daryllswer.com; s=google; t=1742830753; x=1743435553;
 darn=lists.bufferbloat.net; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Sa3j7hkqSsGcKVRdTrDGAOBsSR0ySAs+bcgM8QtRSSc=;
 b=PtqjwRe9h8JGjjoAT63QuQzliAORGWzj+7vNhMdcmEQd9N2ObzstHs6ES+qkhezXVz
 Mw4GDuV0TviQ5HL0GLcEomKdb7xyPUSwpadBQhthUyBwennk0RMZKcLu9cyL08NJonex
 hoVrbAYkK7W6gd4WumY/Qs7ffaFBGvvAVuyonxjhC1NUHAAmjcdrKTvq1PX3W2Jf12YB
 5FWRRDjV/2VUHKy0tS4e3pm6BkKyMb+chjKcqkTIjWosWQ6vGmaXPcZyqC7Y8cJZ2Y8s
 lfJnmsicbP03HRyqCnBeMrCt7smNcDvOwvulrkpS7xQD5y3yEnw44LD9brxWVbo6kIvU
 5zAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742830753; x=1743435553;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Sa3j7hkqSsGcKVRdTrDGAOBsSR0ySAs+bcgM8QtRSSc=;
 b=jUO+D0qO4MwtaRjMR/DmLsRZC45LXhVT+yM0LmkFRA4OReZzkGbIdB1z0+0f8oLfP5
 RDlsMqCYtBJ7e1NvgEhgB01anx53MxR/3HuT0rSR2tgqSQVpVKNI0VgnrIL1G8uV0lzO
 sb58C4pvO7pl3BiUjPk9N+VweSMNMdYMjjDbfR83EmKXyKnctelZP8nBu/WuKY1iFUah
 Yl43KeRtSqmsWcNeTicATa9X5H8/7+GgwcHTCBGywV4Vs3k1pUUG+Qu+610y5hYhX/G3
 uER6ei1dGMvwlTQBspOfbZt+MVjGnWCqf1gfbRTmraBon75Ug2Whlm3TrSc0qseirNtO
 owrQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWiGJl6E70a7Ll+vn5l7A0mffflqvarEVZrm7GksDn8A6eAubMJG8XMHXjlY/MdaTjh6Zup@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzHH9IOv6kIabrtmdi0NzvuQilFJg6rM2YJjtvZZOY+zPwRCbZL
 8t9KiexiMtIH7NjfPjFuq26b+UGNecYEelwb1oz/G0/3r4GtW0KzzmbFdtbrBY7XlGiorHpkE9e
 AB3A=
X-Gm-Gg: ASbGnct1Vgvv6NhhfhlgAKol4rJ/LrN7MykowkI0IWOT1Q74Vfn+UdtouRxWnU7HPro
 xlG9D8R6IocsWbVnxOwoTTSB2WfJSoCjLUGsEOKiLsEyO2wz9vKu4AWIvDYgoDPMoUxqgt7eUJe
 l2+8CxNvyKxBVpcLu0Z2V2jWqu1juW9cLRKCq6MIYYYqceUeYaVIoRhP8AE4h7heu2eOsWX5cDh
 zRkpD27MWiaqDd7n+sg3w1FIdHRiYGv6VOuBEWSIytx8DHVpLYnc2MKDSCL6LUgKI+Z3NnTIHto
 YDvD8ZgAtpJ5RBFzjHlqRdDGMaXinaux+tvxieSyoJs9TBSEr0qXCjFLuSANOaWdIfpFFvz0zpo
 jxuWT9QnzVg==
X-Google-Smtp-Source: AGHT+IGbScnQiG1/kwjGM+Nj0ehUAhxZI70rb7UUa6UEjUxYysBxjdaiftZsPRvjPG/2J5w664v+Mw==
X-Received: by 2002:a05:6214:766:b0:6d4:dae:6250 with SMTP id
 6a1803df08f44-6eb3f36c428mr222934306d6.34.1742830752158; 
 Mon, 24 Mar 2025 08:39:12 -0700 (PDT)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com.
 [209.85.219.52]) by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6eb3ef0f209sm45699336d6.3.2025.03.24.08.39.11
 for <cake@lists.bufferbloat.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Mar 2025 08:39:11 -0700 (PDT)
Received: by mail-qv1-f52.google.com with SMTP id
 6a1803df08f44-6ecf0e07954so22395096d6.1
 for <cake@lists.bufferbloat.net>; Mon, 24 Mar 2025 08:39:11 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCWiufI1eN8FSdQHcyGOFbde2ED1HZdE9rTceilPUhLu2V0B1okFPp50WHdQSZaBj0eE13HQ@lists.bufferbloat.net
X-Received: by 2002:a05:6214:224e:b0:6e4:41b3:497e with SMTP id
 6a1803df08f44-6eb3f3af23amr197017386d6.40.1742830750671; Mon, 24 Mar 2025
 08:39:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAJUtOOh3DEL==w8uYTkPEyhZpgYbLx5xbyLJtXCCpNUE+SQyJg@mail.gmail.com>
 <7FBEC0CA-162E-48A2-81D6-97CDD2F63EEC@gmail.com>
 <CAJUtOOj1+US-u-aB=8=dCFnoi1pCmzjojSUY-46mL7_Uq3fV8A@mail.gmail.com>
 <8756E062-0FC3-4301-8884-B1BCA7A124B5@jeffhansen.com>
In-Reply-To: <8756E062-0FC3-4301-8884-B1BCA7A124B5@jeffhansen.com>
Date: Mon, 24 Mar 2025 21:08:33 +0530
X-Gmail-Original-Message-ID: <CACyFTPE7FfR0gjyNaJwtc2SfszVoSjWAqCnUyqS+K6KiTABqpA@mail.gmail.com>
X-Gm-Features: AQ5f1JoClxnSaIqU1TSCbKs0xX79-JiDzBHS9B1pOZbm_JplfoYUT9nVKM54YPA
Message-ID: <CACyFTPE7FfR0gjyNaJwtc2SfszVoSjWAqCnUyqS+K6KiTABqpA@mail.gmail.com>
To: Jeff Hansen <x@jeffhansen.com>
X-Mailman-Approved-At: Fri, 06 Jun 2025 06:40:58 -0400
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
From: Daryll Swer via Cake <cake@lists.bufferbloat.net>
Reply-To: Daryll Swer <contact@daryllswer.com>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============3258250697205469439=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3258250697205469439==
Content-Type: multipart/alternative; boundary="000000000000cc2d2106311867c6"

--000000000000cc2d2106311867c6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I was looking at your Route10 product, but it looks to be consumer-heavy,
at this point time. I run stuff like BGP in my home network (as I have
MPLS-to-the-home delivery) and PIM-SM, would be cool if you folks supported
some DC-fabric features on Route10 in the future with FRR as the daemon or
something.

One thing I'd like to mention, Route10 should have a good NAT
implementation to support EIM-NAT for TCP/UDP to allow P2P networking to
work over a NAT box.
Additionally, support NAT Hairpinning for user's LAN subnets to allow
intra-NAT traffic to work over STUN discovery, this eliminates TURN traffic=
.
Small to large-scale CGNAT deployments around the globe is something I've
been consulting for a few years now. I'm happy to potentially beta test
your products, if you'd like, for best practices conformance with very
specific RFCs.

BQL would be good to have for long-term viewpoint, perhaps your Ethernet
driver provider, could patch it up for BQL support and that would be a good
foundation for FQ_Codel on your Route10. MikroTik has FQ_Codel, but lacks
BQL, and they refused to listen to Fran and Dave Taht, so perhaps you folks
are our only hope :)

*--*
Best Regards
Daryll Swer
Website: daryllswer.com
<https://mailtrack.io/l/6bdc1188688bc319302e68dd0abb6ef092a85bc8?url=3Dhttp=
s%3A%2F%2Fwww.daryllswer.com&u=3D2153471&signature=3D673d0c5350bbb0e6>


On Mon, 24 Mar 2025 at 20:53, Jeff Hansen <x@jeffhansen.com> wrote:

> Frank,
>
> The hardware that Route10 is based off of doesn=E2=80=99t support FQ Code=
l nor
> CAKE at all, so everything is done in software on our 5.4 Linux kernel. I=
t
> works great, though. In some instances it=E2=80=99s the only way to max o=
ut a PPPoE
> connection and have optimal latency.
>
> It doesn=E2=80=99t look like our ethernet driver supports BQL at all, so =
we
> haven=E2=80=99t tried that yet, but as is, it absolutely eliminates high =
latency if
> tuned properly.
>
> -Jeff
>
> On Mar 21, 2025, at 2:27=E2=80=AFAM, Frantisek Borsik <frantisek.borsik@g=
mail.com>
> wrote:
>
> Happy to see that! Thanks, guys.
>
> Adding Jeff
> <https://mailtrack.io/l/874104aa2fae8c2c3e8c0b7c66386cd9ef1a83ab?url=3Dht=
tps%3A%2F%2Fwww.linkedin.com%2Fin%2Fjeff-hansen-6794021%2F&u=3D2153471&sign=
ature=3Defe63bcd8a19e5e7>,
> Alta Labs CTO - Darryl
> <https://mailtrack.io/l/56dc9d27cea2a0afbd536db4021116428c91b0e6?url=3Dht=
tps%3A%2F%2Fx.com%2FDaryllSwer%2Fstatus%2F1902486684476047544&u=3D2153471&s=
ignature=3Db49f25a96708f53a>
> has a suggestion how to push this further: "Maybe they can add both
> FQ_CoDel and CAKE with BQL support? How's hardware-offloading of FQ_CoDel
> looking on these =E2=80=9Cprosumer=E2=80=9D equipment these days? I haven=
't kept up over a
> year on this topic."
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
> <https://mailtrack.io/l/62c56dba3ad2b34d25f6a2db81adf0b5e9e7c6aa?url=3Dht=
tps%3A%2F%2Fwww.linkedin.com%2Fin%2Ffrantisekborsik&u=3D2153471&signature=
=3D80914c9fb3689eb2>
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
> On Fri, Mar 21, 2025 at 3:44=E2=80=AFAM Jonathan Morton <chromatix99@gmai=
l.com>
> wrote:
>
>> > On 19 Mar, 2025, at 12:01 am, Frantisek Borsik via Cake <
>> cake@lists.bufferbloat.net> wrote:
>> >
>> > Should be pushed through production in day or two and they will be
>> talking about it on https://streamyard.com/watch/ubYm2AffWkYi
>> <https://mailtrack.io/l/f6be4a2c3da3f8d78695f24266cda26e686e9453?url=3Dh=
ttps%3A%2F%2Fstreamyard.com%2Fwatch%2FubYm2AffWkYi&u=3D2153471&signature=3D=
a5dbc7add3e2dbe3>
>> this Wednesday,  March 19, at 1PM EST / 12PM CST / 11AM MST / 10AM PST
>>
>> I joined the stream, and was able to ask about the throughput they were
>> getting with CAKE on their hardware.  This is just for the "Route 10"
>> rather than their APs, and they reported getting about 2.5Gbps throughpu=
t
>> with CAKE enabled. They do correctly note that the hardware-accelerated
>> forwarding path is disabled for the interface where CAKE is turned on.
>>
>> Supporting 2.5Gbps is pretty good I think, and should be sufficient to
>> handle all practical Internet subscriptions that are likely to require
>> bufferbloat mitigation.  For comparison, on the same call they claimed
>> about 800Mbps throughput for acting as a WireGuard tunnel endpoint.
>>
>>  - Jonathan Morton
>
>
>

--000000000000cc2d2106311867c6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>I was looking at your Route10 produc=
t, but it looks to be consumer-heavy, at this point time. I run stuff like =
BGP in my home network (as I have MPLS-to-the-home delivery) and PIM-SM, wo=
uld be cool if you folks supported some DC-fabric features on Route10 in th=
e future with FRR as the daemon or something.</div><div><br></div><div>One =
thing I&#39;d like to mention, Route10 should have a good NAT implementatio=
n to support EIM-NAT for TCP/UDP to allow P2P networking to work over a NAT=
 box.<br>Additionally, support NAT Hairpinning for user&#39;s LAN subnets t=
o allow intra-NAT traffic to work over STUN discovery, this eliminates TURN=
 traffic.</div><div>Small to large-scale CGNAT deployments around the globe=
 is something I&#39;ve been consulting for a few years now. I&#39;m happy t=
o potentially beta test your products, if you&#39;d like, for best practice=
s conformance with very specific RFCs.</div><div><br></div><div>BQL would b=
e good to have for long-term viewpoint, perhaps your Ethernet driver provid=
er, could patch it up for BQL support and that would be a good foundation f=
or FQ_Codel on your Route10. MikroTik has FQ_Codel, but lacks BQL, and they=
 refused to listen to Fran and Dave Taht, so perhaps you folks are our only=
 hope :)</div><div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><font color=3D"#000000" face=3D"arial, sans-serif"><br><b>--</b><br></f=
ont><div><font color=3D"#000000" face=3D"arial, sans-serif">Best Regards</f=
ont></div><div><font color=3D"#000000" face=3D"arial, sans-serif">Daryll Sw=
er</font></div><div><font color=3D"#000000" face=3D"arial, sans-serif">Webs=
ite: <a href=3D"https://mailtrack.io/l/6bdc1188688bc319302e68dd0abb6ef092a8=
5bc8?url=3Dhttps%3A%2F%2Fwww.daryllswer.com&amp;u=3D2153471&amp;signature=
=3D673d0c5350bbb0e6" target=3D"_blank">daryllswer.com</a></font></div></div=
></div></div><br></div><br><img width=3D"0" height=3D"0" class=3D"mailtrack=
-img" alt=3D"" style=3D"display:flex" src=3D"https://mailtrack.io/trace/mai=
l/461e150f7481b721c415a4c33ae6e6281ba15d0c.png?u=3D2153471"><div class=3D"g=
mail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On =
Mon, 24 Mar 2025 at 20:53, Jeff Hansen &lt;<a href=3D"mailto:x@jeffhansen.c=
om">x@jeffhansen.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div>Frank,<div><br></div><div>The hardware that Route1=
0 is based off of doesn=E2=80=99t support FQ Codel nor CAKE at all, so ever=
ything is done in software on our 5.4 Linux kernel. It works great, though.=
 In some instances it=E2=80=99s the only way to max out a PPPoE connection =
and have optimal latency.</div><div><br></div><div>It doesn=E2=80=99t look =
like our ethernet driver supports BQL at all, so we haven=E2=80=99t tried t=
hat yet, but as is, it absolutely eliminates high latency if tuned properly=
.</div><div><br></div><div>-Jeff<br id=3D"m_7029122831126812655lineBreakAtB=
eginningOfMessage"><div><br><blockquote type=3D"cite"><div>On Mar 21, 2025,=
 at 2:27=E2=80=AFAM, Frantisek Borsik &lt;<a href=3D"mailto:frantisek.borsi=
k@gmail.com" target=3D"_blank">frantisek.borsik@gmail.com</a>&gt; wrote:</d=
iv><br><div><div dir=3D"ltr"><div>Happy to see that! Thanks, guys.</div><di=
v><br></div><div>Adding <a href=3D"https://mailtrack.io/l/874104aa2fae8c2c3=
e8c0b7c66386cd9ef1a83ab?url=3Dhttps%3A%2F%2Fwww.linkedin.com%2Fin%2Fjeff-ha=
nsen-6794021%2F&amp;u=3D2153471&amp;signature=3Defe63bcd8a19e5e7" target=3D=
"_blank">Jeff</a>, Alta Labs CTO - <a href=3D"https://mailtrack.io/l/56dc9d=
27cea2a0afbd536db4021116428c91b0e6?url=3Dhttps%3A%2F%2Fx.com%2FDaryllSwer%2=
Fstatus%2F1902486684476047544&amp;u=3D2153471&amp;signature=3Db49f25a96708f=
53a" target=3D"_blank">Darryl</a> has a suggestion how to push this further=
: &quot;Maybe they can add both FQ_CoDel and CAKE with BQL support? How&#39=
;s hardware-offloading of FQ_CoDel looking on these =E2=80=9Cprosumer=E2=80=
=9D equipment these days? I haven&#39;t kept up over a year on this topic.&=
quot;</div><div><br></div><div><div dir=3D"ltr" class=3D"gmail_signature"><=
div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>=
All the best,</div><div><br></div><div><p class=3D"MsoNormal" style=3D"colo=
r:rgb(34,34,34)">Frank<u></u><u></u></p><p class=3D"MsoNormal" style=3D"col=
or:rgb(34,34,34)"><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:r=
gb(34,34,34)">Frantisek (Frank) Borsik<u></u><u></u></p><p class=3D"MsoNorm=
al" style=3D"color:rgb(34,34,34)"><u></u>=C2=A0<u></u></p><p class=3D"MsoNo=
rmal" style=3D"color:rgb(34,34,34)"><a href=3D"https://mailtrack.io/l/62c56=
dba3ad2b34d25f6a2db81adf0b5e9e7c6aa?url=3Dhttps%3A%2F%2Fwww.linkedin.com%2F=
in%2Ffrantisekborsik&amp;u=3D2153471&amp;signature=3D80914c9fb3689eb2" styl=
e=3D"color:rgb(17,85,204)" target=3D"_blank">https://www.linkedin.com/in/fr=
antisekborsik</a><u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rg=
b(34,34,34)">Signal, Telegram, WhatsApp: +421919416714=C2=A0<u></u><u></u><=
/p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessage, mobile: +=
420775230885<u></u><u></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,=
34,34)">Skype: casioa5302ca<u></u><u></u></p><p class=3D"MsoNormal" style=
=3D"color:rgb(34,34,34)"><a href=3D"mailto:frantisek.borsik@gmail.com" styl=
e=3D"color:rgb(17,85,204)" target=3D"_blank">frantisek.borsik@gmail.com</a>=
</p></div></div></div></div></div></div></div></div></div></div></div></div=
></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Fri, Mar 21, 2025 at 3:44=E2=80=AFAM Jonathan Morton &lt;<a h=
ref=3D"mailto:chromatix99@gmail.com" target=3D"_blank">chromatix99@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>&gt; On 19 Mar, 2025, at 12:01 am, Frantisek Borsik via Cake &lt;<a href=
=3D"mailto:cake@lists.bufferbloat.net" target=3D"_blank">cake@lists.bufferb=
loat.net</a>&gt; wrote:<br>
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

--000000000000cc2d2106311867c6--

--===============3258250697205469439==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3258250697205469439==--

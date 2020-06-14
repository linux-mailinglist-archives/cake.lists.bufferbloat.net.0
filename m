Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 938ED1F88CE
	for <lists+cake@lfdr.de>; Sun, 14 Jun 2020 14:44:07 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0595F3CB48;
	Sun, 14 Jun 2020 08:44:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1592138646;
	bh=tYoD+ld/nUEjRh+etl1KF3i/jol1XPhNTGRd9UZw0Ew=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E3E+R5I9DuUMvTu7dg8SF/TEUcWzTbPMjjs8EY7AduPxU7Is4wLtrVQYQvBHPjz8L
	 sHPwbuZ6z61fJxQbiJJnzvHqXsYaP2i4WabeNGy5en66djsr4/L3fM9Z9yFEgM7/Zk
	 NPE3ByFo1OIVT6qFWVHDs5Mu6kCT1xObmZZMCs+fzDIqw06U1fGcFL/FJtaq5X1Bu1
	 fq8aSM0ladhkTwJM7IXC0YExgz4A1STPP8ZjNBESfY5FP+N2nLarm82eSrdgfT7tFl
	 spH8DZ0vXGpPM+VkvtpeIuRkumDKf2tuhWPuN/Ks+hhgTAJI6T6NRbsklQymK7a+mv
	 AIlivR43DetTg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com
 [IPv6:2607:f8b0:4864:20::e2c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6E14C3B29E
 for <cake@lists.bufferbloat.net>; Sun, 14 Jun 2020 08:44:04 -0400 (EDT)
Received: by mail-vs1-xe2c.google.com with SMTP id c1so7802274vsc.11
 for <cake@lists.bufferbloat.net>; Sun, 14 Jun 2020 05:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PJyx97D4mfcFpYgOJV7aZaBvrbgVgni1k1qAItqepe0=;
 b=OXTPb6oDyoBnnjTlWe7jIm8TCxgb3T9lD41Q39gbIJak6PHy59FGd+OuJrbjmmeEco
 QYg/s52CTay+PFsDEYFNx5dNCr8eX4r0JSMeRpCkYY9gPwXli52QltytdLFS5OgyZYNA
 haQaQGXBfVZKW7Ar6Xmt+DE+pQgDCYaJvuEfmkldKRyopM16vL7vXL0SCBi9pBS8AU7G
 EkLB8zIEjGlaM/v7Urlx3Fwud1wPm7bZVh4kJedkZf4kNwnZkDW0a6xuK4tzbqqzQpVl
 /vO5kpzrta5bDwhbp5kre7Zetx5FG5GYIZYEFr1EKjiGQ3WFrqofmk64h3huc6jPPW+M
 oozw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PJyx97D4mfcFpYgOJV7aZaBvrbgVgni1k1qAItqepe0=;
 b=GvAlpz2+8bPRwJPquHGHEK2YwJUstGuswGpNMhQs3Vl5H7bOS/DriS6snrtQQOrISz
 RjqMHxsngQcWjrcs7J76zUICw+QztrOFjMTV7raA0VkALGekObxPmibtWZiCNmrMUo5F
 sLuYvsmrY/myptOEHKXQyBZWypPvSxEg2ghq1/+hUXoKzpgZHxEclwoNeqWIRwk/Ttbi
 FdeHhRtktG0RxNcN3eKs0PRACeh3BSGVlIBW7cd7D63zT+c0S0wLXFoAB4LKhnB6EScC
 BzHXa21A7IvbWDDl/29H1AHn+ozbMP0mAu3ZYemkvMFTbKGqul/GlvT2EYF3NEEqqwOH
 r7JA==
X-Gm-Message-State: AOAM532zIVLraD0AIqiqhiTzXJkWoDkzt5KeWEc0yodyYXQnkpHHJo0U
 SQkuTf9YEnIvayv/4mHMc08Hee0IhpKxGDSYGJE=
X-Google-Smtp-Source: ABdhPJzKagIX7oVllS4+9NBQfHUdtU/jos6GbZF4RxKzjs865XU21tCPDPyPNx2mtqUbQiTJw4tPBLoyYOtULuQGJjU=
X-Received: by 2002:a67:e00f:: with SMTP id c15mr17043294vsl.214.1592138643914; 
 Sun, 14 Jun 2020 05:44:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
 <C24C4CCB-C30D-452A-9386-5AA533F11CEE@gmail.com> <87wo5okhbo.fsf@toke.dk>
 <CAC8NkTCYBokx0NedyuOKjhZqUMHXAc5tZtObTpdyjkvE4U_zUw@mail.gmail.com>
 <A85845BB-010A-4F39-99F4-C6206F7FEA65@gmx.de>
 <CAC8NkTBRWrhAQneAf6ZacTzWLYyM5TqX6jmD4-fafAD=7iPgfQ@mail.gmail.com>
 <CAA93jw6xZRcUerJ8JuxjtjW2_C+wyAUKRtqDojPj6hLdg1w0Dg@mail.gmail.com>
 <875zd6h3bu.fsf@toke.dk>
 <CAA93jw5OP3EfedB5zDPZNYdQaH+LkhUiwaLzMDbyvnTpxZdqSw@mail.gmail.com>
 <7FCC9B1F-7F4B-43E8-B557-88B2A845C28B@gmail.com>
 <CAA93jw6qnP0r8LcUxykUtbwMuv0WcoCvtseLC4rLdbhpwnOU-Q@mail.gmail.com>
 <CAC8NkTCQQ=8Zy-YiYKP=8VLRzmrMH8g1ya1o=6iZAgY2vvbxAw@mail.gmail.com>
 <48938727-0CFF-4B72-B82B-49E0535E9B82@gmail.com> <87y2pgi5ue.fsf@toke.dk>
In-Reply-To: <87y2pgi5ue.fsf@toke.dk>
From: Avakash bhat <avakash261@gmail.com>
Date: Sun, 14 Jun 2020 18:13:53 +0530
Message-ID: <CAC8NkTCrNr8De8eT90UogVE+6ZzHgxQz1K3SXFrs1JVCTahdQQ@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Subject: Re: [Cake] Query on ACK
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
Cc: Vybhav Pai <vybhavpai1999.vp@gmail.com>,
 Shrinidhi Varna <shrinidhivarna.171co145@nitk.edu.in>,
 Cake List <cake@lists.bufferbloat.net>,
 "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Deepak K <deepakkavoor99@gmail.com>
Content-Type: multipart/mixed; boundary="===============8962621275809753939=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8962621275809753939==
Content-Type: multipart/alternative; boundary="0000000000004dc6b505a80aaa19"

--0000000000004dc6b505a80aaa19
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I wanted another clarification on the results obtained by the Ack filtering
experiment( Fig 6) .
Was the experiment conducted with only ack filtering enabled?
Or was set associative hash and the other modules of Cake enabled along
with Ack filtering while running this experiment ?

Thanks,
Avakash Bhat

On Mon, May 25, 2020, 5:28 PM Toke H=C3=B8iland-J=C3=B8rgensen <toke@redhat=
.com>
wrote:

> Jonathan Morton <chromatix99@gmail.com> writes:
>
> >> On 25 May, 2020, at 8:17 am, Avakash bhat <avakash261@gmail.com> wrote=
:
> >>
> >> We had another query we would like to resolve. We wanted to verify the
> working of ack filter in ns-3,
> >> so we decided to replicate the Fig 6 graph in the CAKE paper(
> https://ieeexplore.ieee.org/document/8475045).
> >> While trying to build the topology we realized that we do not know the
> number of packets or bytes sent from
> >> the source to the destination for each of the TCP connections ( We are
> assuming it is a point to point connection with 4 TCP flows).
> >>
> >> Could we get a bit more details about how the experiment was conducted=
?
> >
> > I believe this was conducted using the RRUL test in Flent.  This opens
> > four saturating TCP flows in each direction, and also sends a small
> > amount of latency measuring traffic.  On this occasion I don't think
> > we added any simulated path delays, and only imposed the quoted
> > asymmetric bandwidth limits (30Mbps down, 1Mbps up).
>
> See https://www.cs.kau.se/tohojo/cake/ - the link to the data files near
> the bottom of that page also contains the Flent batch file and setup
> scripts used to run the whole thing.
>
> (And there's no explicit "number of bytes sent", but rather the flows
> are capacity-seeking flows running for a limited *time*).
>
> -Toke
>
>

--0000000000004dc6b505a80aaa19
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi all,<div dir=3D"auto"><br><div dir=3D"auto">I wanted a=
nother clarification on the results obtained by the Ack filtering experimen=
t( Fig 6) .=C2=A0</div><div dir=3D"auto">Was the experiment conducted with =
only ack filtering enabled?=C2=A0</div><div dir=3D"auto">Or was set associa=
tive hash and the other modules of Cake enabled along with Ack filtering wh=
ile running this experiment ?</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Thanks,</div><div dir=3D"auto">Avakash Bhat</div></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 25=
, 2020, 5:28 PM Toke H=C3=B8iland-J=C3=B8rgensen &lt;<a href=3D"mailto:toke=
@redhat.com" target=3D"_blank" rel=3D"noreferrer">toke@redhat.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">Jonathan Morton &lt;<a href=
=3D"mailto:chromatix99@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_=
blank">chromatix99@gmail.com</a>&gt; writes:<br>
<br>
&gt;&gt; On 25 May, 2020, at 8:17 am, Avakash bhat &lt;<a href=3D"mailto:av=
akash261@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">avakash=
261@gmail.com</a>&gt; wrote:<br>
&gt;&gt; <br>
&gt;&gt; We had another query we would like to resolve. We wanted to verify=
 the working of ack filter in ns-3, <br>
&gt;&gt; so we decided to replicate the Fig 6 graph in the CAKE paper(<a hr=
ef=3D"https://ieeexplore.ieee.org/document/8475045" rel=3D"noreferrer noref=
errer noreferrer" target=3D"_blank">https://ieeexplore.ieee.org/document/84=
75045</a>). <br>
&gt;&gt; While trying to build the topology we realized that we do not know=
 the number of packets or bytes sent from <br>
&gt;&gt; the source to the destination for each of the TCP connections ( We=
 are assuming it is a point to point connection with 4 TCP flows). <br>
&gt;&gt; <br>
&gt;&gt; Could we get a bit more details about how the experiment was condu=
cted?<br>
&gt;<br>
&gt; I believe this was conducted using the RRUL test in Flent.=C2=A0 This =
opens<br>
&gt; four saturating TCP flows in each direction, and also sends a small<br=
>
&gt; amount of latency measuring traffic.=C2=A0 On this occasion I don&#39;=
t think<br>
&gt; we added any simulated path delays, and only imposed the quoted<br>
&gt; asymmetric bandwidth limits (30Mbps down, 1Mbps up).<br>
<br>
See <a href=3D"https://www.cs.kau.se/tohojo/cake/" rel=3D"noreferrer norefe=
rrer noreferrer" target=3D"_blank">https://www.cs.kau.se/tohojo/cake/</a> -=
 the link to the data files near<br>
the bottom of that page also contains the Flent batch file and setup<br>
scripts used to run the whole thing.<br>
<br>
(And there&#39;s no explicit &quot;number of bytes sent&quot;, but rather t=
he flows<br>
are capacity-seeking flows running for a limited *time*).<br>
<br>
-Toke<br>
<br>
</blockquote></div>

--0000000000004dc6b505a80aaa19--

--===============8962621275809753939==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8962621275809753939==--

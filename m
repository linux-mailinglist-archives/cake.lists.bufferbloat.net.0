Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B71B1B3AB0
	for <lists+cake@lfdr.de>; Wed, 22 Apr 2020 11:04:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 13D553CB42;
	Wed, 22 Apr 2020 05:04:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587546247;
	bh=ROLnzeGE2pFSci7fUL0GC5YN2muaT5LtNWkZMIwlyE4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UJYN8kOcB2xKFkkuCPX6Gx3QrGZ/DAjEDpzp76bKqiIVKfeMOSQAk9KMb14n91RIR
	 OnQylwCZmgdvRj5Qa8FJYMWllYGubPy0Mdxk9b5onnSeLRmAmIpfHx03IS9O3Wpo48
	 yuWvEE5V3f16mjjboU8fUTa1Bn4mZK6713gOUVj3TWnJOiTYHjn0HOydMd4AOxlmgk
	 0M6eqW8peqHKjahWShYxmTzgle7/szHn/n4dy0PFdZ+OWa5P2aQVD1E60EFaCqN3+l
	 p4EpsXZjuV1WOUYZsgfU4QcnCzeDgRQLnoRMc/cfxVT52YpO7ribzzaVL3yYJQ/yb/
	 7yHJRTowfMYOA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 74A063B29D
 for <cake@lists.bufferbloat.net>; Wed, 22 Apr 2020 05:04:05 -0400 (EDT)
Received: by mail-wm1-x333.google.com with SMTP id y24so1413048wma.4
 for <cake@lists.bufferbloat.net>; Wed, 22 Apr 2020 02:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ieee.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qWRHlrA+OF+U5refMOlIuSIDoSlo1kZxQkln3fhmblQ=;
 b=QhCO4zHclqg49xS0m7brOPcXaNzpvfIM7Utd8aSAQAk6G/Rh7dG8Ojpe9LymT+Azba
 aPO/Z0GlzCVSL1ZdG5ARfNEK8Cjra6PQz+AUaLXKLTKffXwAla+qniLsE+gCQGDFIiNb
 4gYk2kn38u3QlweT3n1/+feNq7Oh1FyLlNYxk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qWRHlrA+OF+U5refMOlIuSIDoSlo1kZxQkln3fhmblQ=;
 b=ujC31XfklJh1CNJINsYr2z5Lpv5bYwVccb8JOXGCe5vnITFQZ5C/vYE/L8tQ0P67Kg
 e1zFE8wmaMcT3LWmBwyylyuBXK0+JdoQuiDO8dt2C3UCrTtPX4tARftOyJjaAnnxARl/
 A2iaSQ6tSKVtCqdBWwQXPbOoXWQy3nvtiFaoI5LdD3YLElwdOQ4keziJFPi/2HZW+9AJ
 mE8r7XOhe79esrhcQz+ATJUARZf3AiAku+rxIr0B1R9L5m1bQpaPQr6X7ShA+ORnuVh/
 0dDNd+cfeGtvAAJdlaSuhNUJ7qRWJodFpnR5SazdVL/1GrulaMU23Onvs9gL4rZSsujY
 YAIQ==
X-Gm-Message-State: AGi0PubY7S/uETcOExZ3Uvevv2S0gn4uu6uTIoW4wlQnyPLXH1MdyYRy
 bEj+kE83RVYbd4d74DO6KSN9pAqm49PB4ns+mrsmUg==
X-Google-Smtp-Source: APiQypIwaF+CjYnjM03beSvod0ULJmd5rsVgntaatFbeZ6HuZjJUmAXEZqCvbknrKxhkWrsAIo5ncghE805/IOdRQsE=
X-Received: by 2002:a7b:cb17:: with SMTP id u23mr9327359wmj.130.1587546244479; 
 Wed, 22 Apr 2020 02:04:04 -0700 (PDT)
MIME-Version: 1.0
References: <d3f45591-7359-47a6-bd0b-f89f9b49c5a7@www.fastmail.com>
 <75FEC2D9-BFC8-4FA2-A972-D11A823C5528@gmail.com>
 <CAA93jw7kfSjuQP2j8uX5-+hs2PBLNZ6c0=tV=PjZE50fQ1oFLw@mail.gmail.com>
 <AAAE0AE6-BA8C-4236-A68D-C5A4CF7DFEDA@slashdirt.org>
 <603DFF79-D0C0-41BD-A2FB-E40B95A9CBB0@gmail.com>
 <CAA93jw5yvybv+aXH4NLd1r_8xSP2CPwzeh0q6wm1c26jLPBxag@mail.gmail.com>
In-Reply-To: <CAA93jw5yvybv+aXH4NLd1r_8xSP2CPwzeh0q6wm1c26jLPBxag@mail.gmail.com>
From: Luca Muscariello <muscariello@ieee.org>
Date: Wed, 22 Apr 2020 11:03:53 +0200
Message-ID: <CAH8sseTdDfswOYpYvaDFm_jsaMCpsT9Ebj2ZvkKwaqyyjZiWHA@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: Re: [Cake] Advantages to tightly tuning latency
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============4971202607540743041=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4971202607540743041==
Content-Type: multipart/alternative; boundary="000000000000f7af3805a3dd69ab"

--000000000000f7af3805a3dd69ab
Content-Type: text/plain; charset="UTF-8"

On Wed, Apr 22, 2020 at 12:44 AM Dave Taht <dave.taht@gmail.com> wrote:

> On Tue, Apr 21, 2020 at 3:33 PM Jonathan Morton <chromatix99@gmail.com>
> wrote:
> >
> > > On 22 Apr, 2020, at 1:25 am, Thibaut <hacks@slashdirt.org> wrote:
> > >
> > > My curiosity is piqued. Can you elaborate on this? What does free.fr
> do?
> >
> > They're a large French ISP.  They made their own CPE devices, and
> debloated both them and their network quite a while ago.  In that sense, at
> least, they're a model for others to follow - but few have.
> >
> >  - Jonathan Morton
>
> they are one of the few ISPs that insisted on getting full source code
> to their DSL stack, and retained the chops to be able to modify it. I
> really admire their revolution v6 product. First introduced in 2010,
> it's been continuously updated, did ipv6 at the outset, got fq_codel
> when it first came out, and they update the kernel regularly. All
> kinds of great features on it, and ecn is enabled by default for those
> also (things like samba). over 3 million boxes now I hear....
>
> with <1ms of delay in the dsl driver, they don't need to shape, they
> just run at line rate using three tiers of DRR that look a lot like
> cake. They shared their config with me, and before I lost heart for
> future internet drafts, I'd stuck it here:
>
>
> https://github.com/dtaht/bufferbloat-rfcs/blob/master/home_gateway_queue_management/middle.mkd
>
> Occasionally they share some data with me. Sometimes I wish I lived in
> paris just so I could have good internet! (their fiber offering is
> reasonably buffered (not fq_codeled) and the wifi... maybe I can get
> them to talk about what they did)
>
> When free.fr shipped fq_codel 2 months after we finalized it, I
> figured the rest of the world was only months behind. How hard is it
> to add 50 lines of BQL oriented code to a DSL firmware?
>
>
Free has been using SFQ since 2005 (if I remember well).
They announced the wide deployment of SFQ in the free.fr newsgroup.
Wi-Fi in the free.fr router was not as good though.

In Paris there is a lot of GPON now that is replacing DSL. But there is
a nation-wide effort funded by local administrations to get fiber
everywhere. There are small towns in the countryside with fiber.
Public money has made, and is making that possible.
There is still a little of Euro-DOCSIS, but frankly compared to fiber
it has no chance to survive.

I currently have 2Gbps/600Mbps access with orange.fr and free.fr has a
subscription
at 10Gbps GPON. I won't tell you the price because you may feel depressed
compared to other countries where prices are much higher.

The challenge becomes to keep up with these link rates in software
as there is a lot of hardware offloading.

As soon as 802.11ax becomes the norm, software scheduling will become
a challenge.

Luca

--000000000000f7af3805a3dd69ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:monospace"><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Apr 22, 2020 at 12:44 AM Dave Taht &l=
t;<a href=3D"mailto:dave.taht@gmail.com">dave.taht@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, Apr 21,=
 2020 at 3:33 PM Jonathan Morton &lt;<a href=3D"mailto:chromatix99@gmail.co=
m" target=3D"_blank">chromatix99@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; On 22 Apr, 2020, at 1:25 am, Thibaut &lt;<a href=3D"mailto:hacks@=
slashdirt.org" target=3D"_blank">hacks@slashdirt.org</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; My curiosity is piqued. Can you elaborate on this? What does <a h=
ref=3D"http://free.fr" rel=3D"noreferrer" target=3D"_blank">free.fr</a> do?=
<br>
&gt;<br>
&gt; They&#39;re a large French ISP.=C2=A0 They made their own CPE devices,=
 and debloated both them and their network quite a while ago.=C2=A0 In that=
 sense, at least, they&#39;re a model for others to follow - but few have.<=
br>
&gt;<br>
&gt;=C2=A0 - Jonathan Morton<br>
<br>
they are one of the few ISPs that insisted on getting full source code<br>
to their DSL stack, and retained the chops to be able to modify it. I<br>
really admire their revolution v6 product. First introduced in 2010,<br>
it&#39;s been continuously updated, did ipv6 at the outset, got fq_codel<br=
>
when it first came out, and they update the kernel regularly. All<br>
kinds of great features on it, and ecn is enabled by default for those<br>
also (things like samba). over 3 million boxes now I hear....<br>
<br>
with &lt;1ms of delay in the dsl driver, they don&#39;t need to shape, they=
<br>
just run at line rate using three tiers of DRR that look a lot like<br>
cake. They shared their config with me, and before I lost heart for<br>
future internet drafts, I&#39;d stuck it here:<br>
<br>
<a href=3D"https://github.com/dtaht/bufferbloat-rfcs/blob/master/home_gatew=
ay_queue_management/middle.mkd" rel=3D"noreferrer" target=3D"_blank">https:=
//github.com/dtaht/bufferbloat-rfcs/blob/master/home_gateway_queue_manageme=
nt/middle.mkd</a><br>
<br>
Occasionally they share some data with me. Sometimes I wish I lived in<br>
paris just so I could have good internet! (their fiber offering is<br>
reasonably buffered (not fq_codeled) and the wifi... maybe I can get<br>
them to talk about what they did)<br>
<br>
When <a href=3D"http://free.fr" rel=3D"noreferrer" target=3D"_blank">free.f=
r</a> shipped fq_codel 2 months after we finalized it, I<br>
figured the rest of the world was only months behind. How hard is it<br>
to add 50 lines of BQL oriented code to a DSL firmware?<br><br></blockquote=
><div><br></div><div><div class=3D"gmail_default" style=3D"font-family:mono=
space">Free has been using SFQ since 2005 (if I remember well).=C2=A0</div>=
<div class=3D"gmail_default" style=3D"font-family:monospace">They announced=
 the wide deployment of SFQ in the <a href=3D"http://free.fr">free.fr</a> n=
ewsgroup.</div><div class=3D"gmail_default" style=3D"font-family:monospace"=
>Wi-Fi in the <a href=3D"http://free.fr">free.fr</a>=C2=A0router was not as=
 good though.<br></div><div class=3D"gmail_default" style=3D"font-family:mo=
nospace"><br></div><div class=3D"gmail_default" style=3D"font-family:monosp=
ace">In Paris there is a lot of GPON now that is replacing DSL. But there i=
s</div><div class=3D"gmail_default" style=3D"font-family:monospace">a natio=
n-wide effort funded by local administrations to get fiber</div><div class=
=3D"gmail_default" style=3D"font-family:monospace">everywhere. There are sm=
all towns in the countryside with fiber.</div><div class=3D"gmail_default" =
style=3D"font-family:monospace">Public money has made, and is making that p=
ossible.</div><div class=3D"gmail_default" style=3D"font-family:monospace">=
There is still a little of Euro-DOCSIS, but frankly compared to fiber</div>=
<div class=3D"gmail_default" style=3D"font-family:monospace">it has no=C2=
=A0chance to survive.</div><div class=3D"gmail_default" style=3D"font-famil=
y:monospace"><br></div><div class=3D"gmail_default" style=3D"font-family:mo=
nospace">I currently have 2Gbps/600Mbps access with <a href=3D"http://orang=
e.fr">orange.fr</a> and <a href=3D"http://free.fr">free.fr</a> has a subscr=
iption</div><div class=3D"gmail_default" style=3D"font-family:monospace">at=
 10Gbps GPON. I won&#39;t tell you the price because you may feel depressed=
</div><div class=3D"gmail_default" style=3D"font-family:monospace">compared=
 to other countries where prices are much higher.</div></div><div><span cla=
ss=3D"gmail_default" style=3D"font-family:monospace"><br></span></div><div>=
<span class=3D"gmail_default" style=3D"font-family:monospace">The challenge=
 becomes to keep up with these link rates in software</span></div><div><spa=
n class=3D"gmail_default" style=3D"font-family:monospace">as there is a lot=
=C2=A0</span><span class=3D"gmail_default" style=3D"font-family:monospace">=
of hardware offloading.</span><span style=3D"font-family:monospace"></span>=
</div><div><span style=3D"font-family:monospace"><br></span></div><div>A<sp=
an class=3D"gmail_default" style=3D"font-family:monospace">s soon as 802.11=
ax becomes the norm, software scheduling will become</span></div><div><span=
 class=3D"gmail_default" style=3D"font-family:monospace">a challenge.</span=
></div><div><span class=3D"gmail_default" style=3D"font-family:monospace"><=
br></span></div><div><div class=3D"gmail_default" style=3D"font-family:mono=
space">Luca</div></div></div></div>

--000000000000f7af3805a3dd69ab--

--===============4971202607540743041==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4971202607540743041==--

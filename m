Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B883C31FB90
	for <lists+cake@lfdr.de>; Fri, 19 Feb 2021 16:02:35 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E9C2F3CB38;
	Fri, 19 Feb 2021 10:02:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1613746950;
	bh=LUNej/zlOHS3qqzoaoVGNK9Y5o9NMtQQ28AoCkz2Eqg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cVmz8iOCnnotpYFJ682csbCrbtEdD/CeR3A3D8L5TOM++ofiqr9BSu0dW+UOOTE6r
	 7/Lbpc6+H+RgTBFLY2R/Je/kqgvEUwTUCC6eCbEUlVM+GCPxJyTzW/BC3ewr/PoNQ3
	 7ir0O/TiJpWEyRZq2UPtxAZEHqvtHGvZtgeXm9+xoMgc4YskPh/adOugGeK0HtimCF
	 6piQ+Ro3lrtT6ySc16HUMtwCrcRbdePvOPIPW4Nh33QOJ/qVpjgdGcyw4gN05TnRg7
	 KnR6dL+BGjT/WeMuFaxbCWT2UFnE1pqQQKtOuvp518wNgBLlfNt8DzDIkL5P784Rx2
	 z1ogLEd505oTQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 77FF83B2A4
 for <cake@lists.bufferbloat.net>; Fri, 19 Feb 2021 10:02:29 -0500 (EST)
Received: by mail-lj1-x22a.google.com with SMTP id e17so22058121ljl.8
 for <cake@lists.bufferbloat.net>; Fri, 19 Feb 2021 07:02:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O0hjxI/qlY/jc0m054S5NZpTJbUQ7uO+tFOjpXvKSSc=;
 b=k72tkp/DuZwgAu2uWeFhiJMzmQLpkcNu4kLi6JLJQbTf9M3E/CP8/90HNvcn3giR18
 3kSZr8jeZ6JIpHu7hljsF0n1vIyKUqQG5lRIoQYwH1TPU5tvSasdK7tIgy/r+yraS7iH
 5/JfUgqAhZ7uFtMLCvk6cCI7buWRVFWASXzAXAPRyalnKeEa9RNkYqcbbWyeiMxm6mxn
 uDtExIRfaZE8H62BBmaRGgZ0DF9GdQSbNAvq8xZjAfYs/ICQN4XO+OqybHnf+laLmr/q
 b6QPNXvkK6QScAwYrVy8DzYF6QeBOIM63mZOPqDo3aEuZqGP9ZYrICDnAUrPsYywtnSB
 vJBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O0hjxI/qlY/jc0m054S5NZpTJbUQ7uO+tFOjpXvKSSc=;
 b=tJDqWjstMSoolczAmMHbFqhGsYprfdgyx2DfCzQSWuJKilrnaS7DteTU5rWToTGRQf
 wup5TJgUjaUv9Jo+Gumf7WM1e7uthDViOZlgUmlWSfMJzsCoY1DGyPJWwdmDc2fX2/FA
 MHGrdPYDpgspXw+BQWUFJORdAdWs0S+rm9ycD2Fay7kWMD8+KwHKwpd11hOGIb9mhwDw
 PSSz995EwGPq+jaARHlPg7oU8ZSi+uNjz8a6J8l7sS4Dyp/kKJvtjI0Ty0Li4Q+B5P1u
 kclcXuC1gwtR3CFYzbGJBCUqjJZtBleWbAYhByMoE+Q1Y3ogq8GhHd6LP7oXtEVjv1IH
 Xl3Q==
X-Gm-Message-State: AOAM532PFpzRHxffN/5xm3Sa6wHjK7o8JDmOr44ZZWKHionZwvWFnfsm
 F2JHPMq/fpgCfKECLvnmbpCo5wqM9g9spgEpg4rA0Dk6zHs=
X-Google-Smtp-Source: ABdhPJzwKNfgJ6uqoam0PT7Lngu9qzj1xTzgSTREygC/+YVFEB4Jw5qouI5dI4zDLEMs7rzvjg1AiWzJyifeJ/7V40A=
X-Received: by 2002:ac2:42d3:: with SMTP id n19mr6099958lfl.447.1613746948015; 
 Fri, 19 Feb 2021 07:02:28 -0800 (PST)
MIME-Version: 1.0
References: <CANmPAYHxP9mdmPMsvR=bi=TSNi9+0HbZGz0r89zOLbe3dAyk-Q@mail.gmail.com>
 <87mtw1kx9c.fsf@toke.dk>
 <CANmPAYHFrtbLhGZ1yXNzsaGGf8gP09ap_vUCMX9ggbSRUcpRFg@mail.gmail.com>
 <87im6pkweq.fsf@toke.dk> <9a889d98-0fae-d1af-6dea-c534f0df854a@sager.me.uk>
In-Reply-To: <9a889d98-0fae-d1af-6dea-c534f0df854a@sager.me.uk>
From: Peter Lepeska <bizzbyster@gmail.com>
Date: Fri, 19 Feb 2021 10:02:16 -0500
Message-ID: <CANmPAYF7SEwWUOpj7S3riHufHDm2QtqSjWq8F-+rGJnRk=3xZw@mail.gmail.com>
To: john@sager.me.uk
Subject: Re: [Cake] Enforcing video quality question
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
Cc: cake@lists.bufferbloat.net
Content-Type: multipart/mixed; boundary="===============0388774544890012506=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0388774544890012506==
Content-Type: multipart/alternative; boundary="000000000000980d5d05bbb1bd8d"

--000000000000980d5d05bbb1bd8d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi John

Does this result in the ability to set per internal host max ingress
bandwidth? If so, any chance you can share a snippet of a script? I will be
trying to reproduce your setup.

Thank you!

Peter

On Fri, Feb 19, 2021 at 7:16 AM John Sager <john@sager.me.uk> wrote:

> That's basically what I do. I set marks on outgoing traffic in the mangle
> table which are copied to connmark before egress. Then on ingress the
> connmark is restored to the packet and punted to ifb0 using 'action
> connmark
> action mirred egress redirect dev $IFB' as an ingress filter on the
> incoming
> interface (ppp0 in my case). Then I have HTB classes on ifb0 which set
> rate
> limits for different traffic classes indicated by the marks. I have only =
6
> traffic classes (I bundle all video into one class), but as marks are 32
> bits wide there is lots of scope for classes for individual IP addresses.
>
> John
>
> On 18/02/2021 19:28, Toke H=C3=B8iland-J=C3=B8rgensen via Cake wrote:
> > Peter Lepeska <bizzbyster@gmail.com> writes:
> >
> >> A user on the OpenWrt forum suggested hashlimit rules supported by
> >> iptables. How does that idea sound to you?
> >
> > That will result in a cliff-edge policer (i.e., as soon as a device goe=
s
> > over its limits it will see every packet get dropped). This doesn't
> > interact too well with the burstiness of TCP, so you'll likely get
> > erratic behaviour of the traffic if you do that. Doing the same thing
> > with HTB means the router will queue+shape each class (and with FQ-CoDe=
l
> > on the leaves, you'll get a nice AQM behaviour as well), so that will b=
e
> > smoother and less prone to bloat :)
> >
> > -Toke
> > _______________________________________________
> > Cake mailing list
> > Cake@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/cake
> >
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake
>

--000000000000980d5d05bbb1bd8d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi John<div><br></div><div>Does this=C2=A0result in the ab=
ility to set per internal host max ingress bandwidth? If so, any chance you=
 can share a snippet of a script? I will be trying to reproduce your setup.=
</div><div><br></div><div>Thank you!</div><div><br></div><div>Peter</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Fri, Feb 19, 2021 at 7:16 AM John Sager &lt;<a href=3D"mailto:john@sager.m=
e.uk">john@sager.me.uk</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">That&#39;s basically what I do. I set marks on outgoi=
ng traffic in the mangle <br>
table which are copied to connmark before egress. Then on ingress the <br>
connmark is restored to the packet and punted to ifb0 using &#39;action con=
nmark <br>
action mirred egress redirect dev $IFB&#39; as an ingress filter on the inc=
oming <br>
interface (ppp0 in my case). Then I have HTB classes on ifb0 which set rate=
 <br>
limits for different traffic classes indicated by the marks. I have only 6 =
<br>
traffic classes (I bundle all video into one class), but as marks are 32 <b=
r>
bits wide there is lots of scope for classes for individual IP addresses.<b=
r>
<br>
John<br>
<br>
On 18/02/2021 19:28, Toke H=C3=B8iland-J=C3=B8rgensen via Cake wrote:<br>
&gt; Peter Lepeska &lt;<a href=3D"mailto:bizzbyster@gmail.com" target=3D"_b=
lank">bizzbyster@gmail.com</a>&gt; writes:<br>
&gt; <br>
&gt;&gt; A user on the OpenWrt forum suggested hashlimit rules supported by=
<br>
&gt;&gt; iptables. How does that idea sound to you?<br>
&gt; <br>
&gt; That will result in a cliff-edge policer (i.e., as soon as a device go=
es<br>
&gt; over its limits it will see every packet get dropped). This doesn&#39;=
t<br>
&gt; interact too well with the burstiness of TCP, so you&#39;ll likely get=
<br>
&gt; erratic behaviour of the traffic if you do that. Doing the same thing<=
br>
&gt; with HTB means the router will queue+shape each class (and with FQ-CoD=
el<br>
&gt; on the leaves, you&#39;ll get a nice AQM behaviour as well), so that w=
ill be<br>
&gt; smoother and less prone to bloat :)<br>
&gt; <br>
&gt; -Toke<br>
&gt; _______________________________________________<br>
&gt; Cake mailing list<br>
&gt; <a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@l=
ists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"norefer=
rer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
&gt; <br>
_______________________________________________<br>
Cake mailing list<br>
<a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.=
bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"noreferrer" =
target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
</blockquote></div>

--000000000000980d5d05bbb1bd8d--

--===============0388774544890012506==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0388774544890012506==--

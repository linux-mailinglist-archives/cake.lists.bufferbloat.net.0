Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7A531F01E
	for <lists+cake@lfdr.de>; Thu, 18 Feb 2021 20:43:33 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A09433CB38;
	Thu, 18 Feb 2021 14:43:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1613677412;
	bh=+DTc770AWDc77MMssI4eWfEP8K4qB1/DHrDlYC+BZoY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n3p0Wm0LULt+C03mykvyLOElOeY8TssI4afu3KhVD35xKTY643jgQll8JuW7eftKS
	 JARiYVdWKzAlhnN03DNIgkdMjWjo26hLtuip783du0WWQ446QIoXinEnaaj/6WOscz
	 42e9S6UxmkHSk6YXMcJ3U5GtJzR5T5NVKuBoQQ0R+mUWrLfAj3ypE1/i+3CGsNxN6e
	 G4eIL++pFaP2oEnxw/kFDVI7a97rYCTsaMYy6qbtDc/nLMMw1EeBqh3Nt7STyZ3KaB
	 Gmm5KuicQx4vZpcgJdwdocrh8D/nLcrpoL1M7buOC5rUp19TxHnd57WHSy8ILZpH20
	 Jn34KqS2K0LVQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com
 [IPv6:2a00:1450:4864:20::22b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5E3043B29D
 for <cake@lists.bufferbloat.net>; Thu, 18 Feb 2021 14:43:31 -0500 (EST)
Received: by mail-lj1-x22b.google.com with SMTP id a17so7745782ljq.2
 for <cake@lists.bufferbloat.net>; Thu, 18 Feb 2021 11:43:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CWWgjowsxgbYf6gR4l9JznMCZnGkXtjGvojFFZruDWE=;
 b=E8chfiglmWxp2F++6+yXplS2NhpqRVSx7RMuBBtOgzb3cL+Jv367x4nNLRzcEx44et
 E/3lfhVYJKAOBHeEIpecwycXy4NQU2+OQcY2wGkWlYmmk4Olr2cPOr8BFfRugpjlOLx5
 hDB8t07qNK7EbeVaQ/XIuA41zqBp9JDO4QqSgrcKKr/5gJK54KML30BRTW7K9GYgap2d
 yBBeYa30fZhi8gClJyGyMxGSdoNWuFFxdfRgLcIE0wcuRuCoy5f03bOCNHPApoofpXWT
 HNXoILoYBJ4Cu00fTtodWKfHiPOt8ALpuSIdumInmkpRSPx6OQm/IqWq561plCH/HMaK
 Dd3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CWWgjowsxgbYf6gR4l9JznMCZnGkXtjGvojFFZruDWE=;
 b=fNq5bZOb+Uhxqn5yjAOVBVZKUQOsnyX9Sd7+xaKZadHyQU3acxRhG0vvIxo8eDwQAK
 u/Ysa9uKQKsp8VXQxyHFsTKgZDAVbXzXmdFKHh+XkjcOM2rs3XoiWbALm7ibvhX6DgS+
 FlmvcLLD3YFF4dar+BKH6kk6+1Gez0WqRo6A+DqSnhGe0agNyNoRWK4J0cDP1n45vsc8
 r9/pMAHO65WZwZf8L2beVCu2iw3mrRhMi7aVZdp40zLUIfLO2f2j5aEvLV3k314Kv5u1
 +UV/k+EafDJztsrEWJPVmnpgT7ILMKWod9p1Bt5OMo6aBQ0DZS3wHV4vH8BlfetwEHc9
 ce5w==
X-Gm-Message-State: AOAM531PYHyLXKB9FcdUR9wqB4vpHGnubZFmazHzn7+hJPyD3SroP+T2
 tQGhg7L0MPi7sFHjTWjjcpmFchTF/2NSaa13Q1Q=
X-Google-Smtp-Source: ABdhPJx00KLyF+AWXx8kUNVqO/yZmDVr+IC63440pDbj3hNJtTBej/Tfevcer/5ZC2/E7uVKdvV/18ZwjX5cK7hINOI=
X-Received: by 2002:a05:6512:308d:: with SMTP id
 z13mr3172685lfd.71.1613677410221; 
 Thu, 18 Feb 2021 11:43:30 -0800 (PST)
MIME-Version: 1.0
References: <CANmPAYHxP9mdmPMsvR=bi=TSNi9+0HbZGz0r89zOLbe3dAyk-Q@mail.gmail.com>
 <87mtw1kx9c.fsf@toke.dk>
 <CANmPAYHFrtbLhGZ1yXNzsaGGf8gP09ap_vUCMX9ggbSRUcpRFg@mail.gmail.com>
 <87im6pkweq.fsf@toke.dk>
In-Reply-To: <87im6pkweq.fsf@toke.dk>
From: Peter Lepeska <bizzbyster@gmail.com>
Date: Thu, 18 Feb 2021 14:43:18 -0500
Message-ID: <CANmPAYFviqW_FekQ-xag-i1qhZ1JHP71MvB+M-qFKdOXLKEUaw@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>
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
Content-Type: multipart/mixed; boundary="===============2823686851474774652=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2823686851474774652==
Content-Type: multipart/alternative; boundary="000000000000d184da05bba18c15"

--000000000000d184da05bba18c15
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok that makes sense. I'll do some reading. Thank you!

On Thu, Feb 18, 2021 at 2:28 PM Toke H=C3=B8iland-J=C3=B8rgensen <toke@toke=
.dk> wrote:

> Peter Lepeska <bizzbyster@gmail.com> writes:
>
> > A user on the OpenWrt forum suggested hashlimit rules supported by
> > iptables. How does that idea sound to you?
>
> That will result in a cliff-edge policer (i.e., as soon as a device goes
> over its limits it will see every packet get dropped). This doesn't
> interact too well with the burstiness of TCP, so you'll likely get
> erratic behaviour of the traffic if you do that. Doing the same thing
> with HTB means the router will queue+shape each class (and with FQ-CoDel
> on the leaves, you'll get a nice AQM behaviour as well), so that will be
> smoother and less prone to bloat :)
>
> -Toke
>

--000000000000d184da05bba18c15
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok that makes sense. I&#39;ll do some reading. Thank you!<=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Thu, Feb 18, 2021 at 2:28 PM Toke H=C3=B8iland-J=C3=B8rgensen &lt;<a href=
=3D"mailto:toke@toke.dk">toke@toke.dk</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">Peter Lepeska &lt;<a href=3D"mailto:bi=
zzbyster@gmail.com" target=3D"_blank">bizzbyster@gmail.com</a>&gt; writes:<=
br>
<br>
&gt; A user on the OpenWrt forum suggested hashlimit rules supported by<br>
&gt; iptables. How does that idea sound to you?<br>
<br>
That will result in a cliff-edge policer (i.e., as soon as a device goes<br=
>
over its limits it will see every packet get dropped). This doesn&#39;t<br>
interact too well with the burstiness of TCP, so you&#39;ll likely get<br>
erratic behaviour of the traffic if you do that. Doing the same thing<br>
with HTB means the router will queue+shape each class (and with FQ-CoDel<br=
>
on the leaves, you&#39;ll get a nice AQM behaviour as well), so that will b=
e<br>
smoother and less prone to bloat :)<br>
<br>
-Toke<br>
</blockquote></div>

--000000000000d184da05bba18c15--

--===============2823686851474774652==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2823686851474774652==--

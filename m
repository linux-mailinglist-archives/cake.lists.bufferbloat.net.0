Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4919232CCDB
	for <lists+cake@lfdr.de>; Thu,  4 Mar 2021 07:32:13 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CCB2B3CB38;
	Thu,  4 Mar 2021 01:32:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614839531;
	bh=ZheEk0+sQT4wuV+erBy/CqPrdEPSRcQ1Vk069dNz7ks=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PFs9u84r4/3AZ9ulL+CfSVCkzZuFeUTwOZYnijGFRFALJwXL2YnpVdFKtNVrylDT8
	 lHRL+bYB8UeLZBpsMQwPVDb2Gp3PRVfZQ7yjD6ameL0WxoBn/3AODzIi93Z4qzZWPB
	 1scP8HmUfab8XEUon7K9OBmESUDpO5jSCKpvp26kD0YxhH3nqSrB6o78UHBaSQ3Cin
	 yd0WX3OE6oUqWMdsbphhkBnrVEhAZDyvWdeQsddo2WYJwMCOvFCgDxnytlp6ky7chr
	 eAoFLd/SILwJwu+/qSFVQ0iqGBAGEyahZ2DTzvcZYFp7jfUgVdUq6nuiqfY+UfDV0v
	 ENsNE+rEtsnOQ==
X-Original-To: Cake@lists.bufferbloat.net
Delivered-To: Cake@lists.bufferbloat.net
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 406D73B2A4
 for <Cake@lists.bufferbloat.net>; Thu,  4 Mar 2021 01:32:10 -0500 (EST)
Received: by mail-lj1-x235.google.com with SMTP id r25so30931431ljk.11
 for <Cake@lists.bufferbloat.net>; Wed, 03 Mar 2021 22:32:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lostcreek-tech.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=AM9GugWg0mUxPcCYSBbvD44m4/+M0z0BpaogdWIKxEg=;
 b=uwmmwGyfCdxflTAzbO23AC5Mn9PcAa6cabKW3O2ErRDT5CZoD9efREoOJlGgIyLLG9
 yjN6o96nhZqmJSdlyyPdDMoDNxOn2sYyxA6+EVcHkng01Rm7vJm6AElj178gpu4TMVQu
 ZWh+ICX2xpyiLvUVV81dW/RCu+f5yGuU0MVIOYtbFVAyQd7hz4jWtV67BJoy9GHd7Blp
 NbEng90pmvPrIH1CZfIr/y9xQMUoy1MLgjA5q5lc/wqR04rtvDKC8kIhN/K+Rhd8kJgK
 0fNisw8aP4mleNMcuGhO12Ehcmodkv1h+6eTBskA1/D23B7R1EeRwzdId+L6IzhG2VGm
 zJBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=AM9GugWg0mUxPcCYSBbvD44m4/+M0z0BpaogdWIKxEg=;
 b=gcMSewqofiymL7ZRtK0RtMZ4T0ysiVmAVLyIHHUfkGS91xIDNjIzYmjonfe/qXVfEj
 aex3xyg6EuoLWBukWbjWjm2O37eETRv/YIz4t+G0hBCp7CimcJNXQmXUQaiPNwd2vgnA
 7bi11VTAFkWDiWxHHj475kO+VjIkazo9528lIadr389PbF8yBEJSy537mzW48k25wzDV
 jJ0YVUdyOX42Gmjef/ULQr4k9rQcVljD6dULRw79EMgLNhpfSvnh1yWr3voBs/5Z9s+3
 TmCLEiHmvnIrimv+QEVfTbbKEtiGoMcTDUYzBSjTIkYO7yLXpj/NRJm5evIiVqTTHAkk
 lvtA==
X-Gm-Message-State: AOAM53102eaJXP8j4JfvwKpTbykqtosn0HoyTxtqCBkqjgAvna0gLQTB
 +2EazKz3ud8TX06CRoC6ZQlPpspIiVKROZ/kUxeLBFmjq4pu3g==
X-Google-Smtp-Source: ABdhPJyQHf08UkZmvOFeB/0sc6W4YBQemWCq2zBu967vNo11SfxxK60EjYdF0V03+XbDiuAg/E/Kf9D/A2sSEB2MO/Y=
X-Received: by 2002:a2e:8e27:: with SMTP id r7mr1431638ljk.365.1614839528764; 
 Wed, 03 Mar 2021 22:32:08 -0800 (PST)
MIME-Version: 1.0
References: <CADmwGqvtAg9p_+RHN2bGms=8XLNU698irJ_VVoXjYpZ2v7=Vyw@mail.gmail.com>
 <9C791D21-7FC9-425E-9167-EC7660BF38F9@gmail.com>
 <CAA93jw7RP_xLJetKJqiEBH_bgG6_P=AGExZF9VTYs=3hoJH1vQ@mail.gmail.com>
 <FB137C01-AE54-4E90-A32C-CC0D8DE0F405@gmail.com>
 <CAA93jw59J7+6t-Gm_Q4+mo42BtkaqUct8SdWB1WKiD91akJMxQ@mail.gmail.com>
 <E562AC96-88D9-4EE8-994E-97546EF71A0C@gmail.com>
In-Reply-To: <E562AC96-88D9-4EE8-994E-97546EF71A0C@gmail.com>
From: Thomas Croghan <tcroghan@lostcreek.tech>
Date: Wed, 3 Mar 2021 23:31:59 -0700
Message-ID: <CADmwGqvcnFbAnwqeFEKgYgmBA2CqB=6Gv8zwLbCrR470_ritKQ@mail.gmail.com>
To: Cake List <Cake@lists.bufferbloat.net>
Subject: Re: [Cake] ISP Implementation
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
Content-Type: multipart/mixed; boundary="===============3068358601227865203=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3068358601227865203==
Content-Type: multipart/alternative; boundary="0000000000007b4f4d05bcb0204f"

--0000000000007b4f4d05bcb0204f
Content-Type: text/plain; charset="UTF-8"

>Cake is *best* used as the bottleneck inducer with effectively unlimited
inbound bandwidth,
I kind of figured that Cake was designed to be the bottleneck, but I don't
want to be telling people the wrong things.

I'll have to take another look LibreQoS, maybe there's a way to duplicate
their work, though I like the processor efficiency I have seen on Cake. (It
could be a Mikrotik implementation or my poor configuration of FQ_Codel
though...)

The issue I had with the LibreQoS model is that you are distancing yourself
from the customer with the bandwidth limiter. In theory you want a
bandwidth limiter limiting the upload traffic from your customer and a
bandwidth limiter right at your upstream connection to limit each
customer's download bandwidth so that your internal network infrastructure
get's efficiently used and prevents your equipment from being the source of
bufferbloat. At least that's the running theory with HTB Bandwidth limiters
that most people are running right now. So in my second question it's
probably going to be best to have a Cake instance on either side of the
limitation.

So this would be preferable right? <Theoretically unlimited bandwidth> --
<Cake Instance Limiting bandwidth going left to right> -- <Some sort of
limit to 100 Mbps> -- <Cake Instance Limiting bandwidth going right to
left> -- <10 x 25 Mbps Customers>


On Wed, Mar 3, 2021 at 8:18 PM Jonathan Morton <chromatix99@gmail.com>
wrote:

> > On 4 Mar, 2021, at 5:14 am, Dave Taht <dave.taht@gmail.com> wrote:
> >
> > yes, that. can it be made to work with cake?
>
> The README says there is experimental support.  I haven't looked at it
> closely.
>
>  - Jonathan Morton



-- 
Tommy Croghan
Lost Creek Tech

--0000000000007b4f4d05bcb0204f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>&gt;Cake is *best* used as the bottleneck inducer wit=
h effectively unlimited inbound bandwidth,</div><div>I kind of figured that=
 Cake was designed to be the bottleneck, but I don&#39;t want to be telling=
 people the wrong things.=C2=A0</div><div><br></div><div>I&#39;ll have to t=
ake another look LibreQoS, maybe there&#39;s a way to duplicate their work,=
 though I like the processor efficiency I have seen on Cake. (It could be a=
 Mikrotik implementation or my poor configuration of FQ_Codel though...)</d=
iv><div><br></div><div>The issue I had with the LibreQoS model is that you =
are distancing yourself from the customer with the bandwidth=C2=A0limiter. =
In theory you want a bandwidth limiter limiting the upload traffic from you=
r customer and a bandwidth=C2=A0limiter right at your upstream connection t=
o limit each customer&#39;s download bandwidth so that your internal networ=
k infrastructure get&#39;s efficiently=C2=A0used and prevents your equipmen=
t from being the source of bufferbloat. At least that&#39;s the running the=
ory with HTB Bandwidth limiters that most people are running right now. So =
in my second question it&#39;s probably going to be best to have a Cake ins=
tance on either side of the limitation.</div><div><br></div><div>So this wo=
uld be preferable right? &lt;Theoretically unlimited bandwidth&gt; -- &lt;C=
ake Instance Limiting bandwidth going left to right&gt; -- &lt;Some sort of=
 limit to 100 Mbps&gt; -- &lt;Cake Instance Limiting bandwidth going right =
to left&gt; -- &lt;10 x 25 Mbps Customers&gt;</div><div><br></div><div dir=
=3D"auto"></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Mar 3, 2021 at 8:18 PM Jonathan Morton &lt;<a href=
=3D"mailto:chromatix99@gmail.com">chromatix99@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">&gt; On 4 Mar, 2021,=
 at 5:14 am, Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com" target=3D=
"_blank">dave.taht@gmail.com</a>&gt; wrote:<br>
&gt; <br>
&gt; yes, that. can it be made to work with cake?<br>
<br>
The README says there is experimental support.=C2=A0 I haven&#39;t looked a=
t it closely.<br>
<br>
=C2=A0- Jonathan Morton</blockquote></div><br clear=3D"all"><div><br></div>=
-- <br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div>Tom=
my Croghan</div><div>Lost Creek Tech</div></div></div>

--0000000000007b4f4d05bcb0204f--

--===============3068358601227865203==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3068358601227865203==--

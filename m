Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F18131EF67
	for <lists+cake@lfdr.de>; Thu, 18 Feb 2021 20:13:24 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 484C93CB38;
	Thu, 18 Feb 2021 14:13:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1613675603;
	bh=V3F8nLbozLtN7AO2eMyHeH1GjBcHnGlJCKlPJ1yHC5c=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OSVEB/7gCLSmw9mawyImOVfxXZzmoauDNGAudnaGbqj94UPHQm5npG2VrTE75Llh0
	 lc4rNtJyBLJ97v2SRcE1yL4WMj9+GlOJm14saOvP0y9Xc2BsCiotoEBhxLye5vbb9t
	 yOuVRXxf6iRUdHBn4ObgoQW5kvLeFG43B4Yetgx0z+dyJOP5yNT3ZdSxOr3bQQ4vTi
	 6TNqb5Qeo5ZXMBgMMY6HpCAX7Ta0rER48aY0PsNcTo+kFkkvmSJXjeRah77iZCrBog
	 YtPPOzOGLlUT90XgwpDtOJ/cBG/55DQqFy0MQYkpUh2/bT0te5LiIGHFv51JUzjJMn
	 cZv38FdIf4z+w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 954953B29D
 for <cake@lists.bufferbloat.net>; Thu, 18 Feb 2021 14:13:21 -0500 (EST)
Received: by mail-lj1-x22c.google.com with SMTP id k22so7503676ljg.3
 for <cake@lists.bufferbloat.net>; Thu, 18 Feb 2021 11:13:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fyFQm2UdR7TUyEIBmMuqHqg2yG7FYGFrXlFLAr/mpKY=;
 b=cWY/G/e3JNGOsO9dJr9F+gpq+rAzA29fQjVNIQSqxWkkLh+fAYFqG55YCTzI4lrWvE
 CICDE/qe39HUPzbSKxgRRPyPP33RlhO/9X72U0xKkmCpHsbiAJrlzpOHXGogKKp++/5N
 NGUSDVCD4p2xNTkllW3THj1JOsLJqyCkAR7o8XXjKlf/vTCnJVlbUtjvPGfU/aFmTKu4
 01SnhzDmt/GAwOKM/vRK0wUhoDMEN9jgCLfrf0o/Aoa8caEJLdfo0uYiP+5sir2Adjq5
 5xYJm+D3OcpLH8lRQfWfoycovf8AY+rLSlEtUYbB1SN0Dflbvl7jGgibgGpLvdfAqSJb
 AFDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fyFQm2UdR7TUyEIBmMuqHqg2yG7FYGFrXlFLAr/mpKY=;
 b=mEiesE6aOMj54d2ASFJvrqW3sW1eVcF39t6qZrHEjXkUt4NR+FEeU9VFq1HNFadSln
 h1OqPWl6fAijKoNX8bV3bdfOLC+xvO2IE0/FzUEQDc0Dp376LF1qbPb/Fkc2ifXrYiN0
 oqnz6MGnXZTHX6KqSODn4Eq/O/6oovDgf80XUe9zhzoA2aH9enrPjWo8RziQV5JVIsrZ
 rmjKq1jjSUqnP15Yc9tWmzX5v3/ad1Sd9EFnAWFrYwUMzYN766KBx1R/8MNXyagrm6MC
 /G+pzsoKZ1v1ZRABCMoqzJdwJURomqcda9Ez3w5ZXNmV79BDJ/QYV183gLqYkBL63VME
 kXUg==
X-Gm-Message-State: AOAM530gMHUHjqes6+CNsgK2qcKtRXA4GOBK6WzeVVhU1g7m3hEVyhtB
 9iPVgyInYOpJiuE1J3WfawhCrj0z8yU16Cpx0FU=
X-Google-Smtp-Source: ABdhPJyDTEm6+vI9jiVo8YqEEbuiodfa9oeanpHGiAfEahQsQwkcWllP7zFkRw2CHZWPCf1EZYZXgQ1ZnZuQ18fRGDE=
X-Received: by 2002:ac2:42d3:: with SMTP id n19mr3345782lfl.447.1613675600297; 
 Thu, 18 Feb 2021 11:13:20 -0800 (PST)
MIME-Version: 1.0
References: <CANmPAYHxP9mdmPMsvR=bi=TSNi9+0HbZGz0r89zOLbe3dAyk-Q@mail.gmail.com>
 <87mtw1kx9c.fsf@toke.dk>
In-Reply-To: <87mtw1kx9c.fsf@toke.dk>
From: Peter Lepeska <bizzbyster@gmail.com>
Date: Thu, 18 Feb 2021 14:13:08 -0500
Message-ID: <CANmPAYHFrtbLhGZ1yXNzsaGGf8gP09ap_vUCMX9ggbSRUcpRFg@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============1232172059111828604=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1232172059111828604==
Content-Type: multipart/alternative; boundary="000000000000f043de05bba120ab"

--000000000000f043de05bba120ab
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A user on the OpenWrt forum suggested hashlimit rules supported by
iptables. How does that idea sound to you?

Thanks!

Peter

On Thu, Feb 18, 2021 at 2:10 PM Toke H=C3=B8iland-J=C3=B8rgensen <toke@toke=
.dk> wrote:

> Peter Lepeska <bizzbyster@gmail.com> writes:
>
> > Not sure this is the right forum but I am using Cake on my OpenWRT rout=
er
> > so I thought I would cross-post this question (
> > https://forum.openwrt.org/t/use-sqm-to-configure-video-quality/88984)
> here.
>
> CAKE doesn't have any facilities to do per-device shaping like you're
> asking, no. You could use fwmark to always put traffic into a lower
> priority bin, but that still only limits in the aggregate, it's not a
> per-device thing.
>
> What you'd need is something like an HTB policy that puts each internal
> IP into its own bin and caps the bandwidth of each. You could write a
> .qos script and integrate it into sqm-scripts, but I don't think there's
> anything already in there that would do what you want either...
>
> -Toke
>

--000000000000f043de05bba120ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">A user on the OpenWrt forum suggested hashlimit rules supp=
orted by iptables. How does that idea sound to you?<div><br></div><div>Than=
ks!</div><div><br></div><div>Peter</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 18, 2021 at 2:10 PM Tok=
e H=C3=B8iland-J=C3=B8rgensen &lt;<a href=3D"mailto:toke@toke.dk">toke@toke=
.dk</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">Peter Lepeska &lt;<a href=3D"mailto:bizzbyster@gmail.com" target=3D"_bla=
nk">bizzbyster@gmail.com</a>&gt; writes:<br>
<br>
&gt; Not sure this is the right forum but I am using Cake on my OpenWRT rou=
ter<br>
&gt; so I thought I would cross-post this question (<br>
&gt; <a href=3D"https://forum.openwrt.org/t/use-sqm-to-configure-video-qual=
ity/88984" rel=3D"noreferrer" target=3D"_blank">https://forum.openwrt.org/t=
/use-sqm-to-configure-video-quality/88984</a>) here.<br>
<br>
CAKE doesn&#39;t have any facilities to do per-device shaping like you&#39;=
re<br>
asking, no. You could use fwmark to always put traffic into a lower<br>
priority bin, but that still only limits in the aggregate, it&#39;s not a<b=
r>
per-device thing.<br>
<br>
What you&#39;d need is something like an HTB policy that puts each internal=
<br>
IP into its own bin and caps the bandwidth of each. You could write a<br>
.qos script and integrate it into sqm-scripts, but I don&#39;t think there&=
#39;s<br>
anything already in there that would do what you want either...<br>
<br>
-Toke<br>
</blockquote></div>

--000000000000f043de05bba120ab--

--===============1232172059111828604==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1232172059111828604==--

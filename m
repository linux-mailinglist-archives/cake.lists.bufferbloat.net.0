Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CBF3CC6F9
	for <lists+cake@lfdr.de>; Sun, 18 Jul 2021 01:57:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4093E3CB59;
	Sat, 17 Jul 2021 19:57:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1626566229;
	bh=RQrtvPrFVfgGEMtg6FvC2KyZyjLHdOCUhqaDDa0xvOE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kJoE0C7PnMW0dXnK+c+gkxgcJLJJoz4Q9IIX7DiY2RQ3NHNXQSLYs7MOQJcMh4h24
	 /D31krGGur/IQLTwuhnLSxL4+MbIWPpq5oy2o0upW+tQdTsOWMKwcfE6CkeFIPRkZ3
	 Sd1sgn/yrHi9beHGL1a6E/6/7TC0bqrzxCSdv6Yc2WylbesblGpZcZqJ0UwVbp0xQW
	 x3TXvgmFzkiKHjwx086R6V3DJrzXRANjEWPi2Y0gPyzZZl+vyZwGsd8MfGlnAunMIT
	 uQj4WMVyV3sXfKOSu+MVlD08Swcig6FkOceldpnuaJvy7aggB/cKnJTx6sXwPzUnPh
	 RPIqB+DV4Ep8Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 154EC3B2A4;
 Sat, 17 Jul 2021 19:57:08 -0400 (EDT)
Received: by mail-ej1-x630.google.com with SMTP id dp20so19397729ejc.7;
 Sat, 17 Jul 2021 16:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NXnhZ2lnz3Dib9SnpVBXcvtiOx6fYR8fcvmNekU6yJI=;
 b=cnL3oxlA4+0bz/pwwRKUM66FHLtwZ4t7NC9SkG4Hzy4rl+6dL++D5J22TjRg7Uvl7p
 IkMRd8XHrT8agwrUCUcqWEK1X2cHY25H4/5uIDW+nbOpWfnpGBXpP12HArIJ3gyZnHLA
 dcla/Tnq3P9T+NDNDgY2DSez703oy9Ll2VA06/nNPe/LFjdOQgnErxELiCnr3r1wcGTh
 uH/hqTDPWmQUgmBPeAjXG80GQOZBSa2wvjaVk/yQYY1Vj7FXTzGYDczGeP5NuMaxQtv9
 Zq/m6XnXkZEOXQSz51WmF66j67C7td/lmVgb1bPHDScjxrjgHP0AagsojcNWSFU2EoFx
 K8Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NXnhZ2lnz3Dib9SnpVBXcvtiOx6fYR8fcvmNekU6yJI=;
 b=CiK4jYGh+zx0Tja+PTMK4vu2bbPQjJ6lnzua0GZn3zFzI5r5VPAA9f6HYJN71N6NuE
 iBeBDTNMkznRIxLPn+NsZvQ/F62FKkJ/dOPRyKacfQR2PcPYoFpR7hnX1oc9mJJugtdK
 nCpZHpuPfmsa56kF8jyIQbdVz7Tt8RJA8C6/f6xfOKAaHxtp7cDBOx00KAB2K1shvd5e
 nLzAHNkS7o7YMwYeieOqBJanZ4gd5lHjiNxmcceVKSE+6Sjyi2vB8fQ1Ua5ethYGvPQV
 ztKf2TbCBJ/woBy2O5eCwMkn2NoTWxYFbcj24JSJlQ9hrw2NXjGtCyxyKPVO+K7PPDF6
 +NaA==
X-Gm-Message-State: AOAM532vkesbchCBr6qXeS4sB9pITf9EQjKnaP9Gd0VrD37YVDXpisT+
 kkf8XtDZjiK9kbpBRe7/5nfiPKLIVFDbjFR2/yQ=
X-Google-Smtp-Source: ABdhPJy06GZikIxRFKgD7AdnNh8U75WaLjlLlm3+9dG1BH7fzmmfFyYm+33rGhswc3XLEu+IUcuLY1GPMv2qEbpXk7I=
X-Received: by 2002:a17:907:10cc:: with SMTP id
 rv12mr19501078ejb.339.1626566227048; 
 Sat, 17 Jul 2021 16:57:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <1625859083.09751240@apps.rackspace.com>
 <8C38E940-8B97-4767-A39B-25F043AE0856@cs.ucla.edu>
 <A2CB0701-E08F-46ED-8579-CC24F1444E9C@gmail.com>
In-Reply-To: <A2CB0701-E08F-46ED-8579-CC24F1444E9C@gmail.com>
From: Aaron Wood <woody77@gmail.com>
Date: Sat, 17 Jul 2021 16:56:55 -0700
Message-ID: <CALQXh-MvfuSUuV8uTS0N4rpk8oke5Wq7jwr3KXvZ2ErtEXDvGg@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
Subject: Re: [Cake] [Make-wifi-fast] [Bloat] Little's Law mea culpa,
 but not invalidating my main point
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>, Bob McMahon <bob.mcmahon@broadcom.com>,
 starlink@lists.bufferbloat.net, codel <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: multipart/mixed; boundary="===============3554403477874336643=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3554403477874336643==
Content-Type: multipart/alternative; boundary="0000000000002abc0f05c75a767c"

--0000000000002abc0f05c75a767c
Content-Type: text/plain; charset="UTF-8"

With the disclaimer that I'm not as strong in statistics and modelling as
I'd like to be....

I think it's not useful to attempt to stochastically model the behavior of
what are actually active (well, reactive) components.  The responses of
each piece are deterministic, but the inputs (users) are not.  So while you
could maybe measure the behavior of a network, and then build a hidden
markov model that can produce the same results, I don't see how it would be
useful for testing the behavior of either the reactive components (TCP CC
algs) or the layers below the reactive components (queues and links),
because the model needs to react to the behavior of the pieces it's sitting
on top of, not due to a stochastic process that's independent (in the
statistical sense) of the underlying queues and links.

Probably a "well duh..." thought for many here.  But I was _amazed_ when
working with very senior engineers for network hardware companies, who said
all testing was done with a static blend of "i-mix" traffic (in both
directions), even though they were looking at last-mile network usage which
was going to be primarily TCP download, just like a home, and nothing like
i-mix.  Or that the applications running on top of that gear were actually
reactive to their (mis-)management of their queues and loads.

On Fri, Jul 9, 2021 at 4:56 PM Jonathan Morton <chromatix99@gmail.com>
wrote:

> > On 10 Jul, 2021, at 2:01 am, Leonard Kleinrock <lk@cs.ucla.edu> wrote:
> >
> > No question that non-stationarity and instability are what we often see
> in networks.  And, non-stationarity and instability are both topics that
> lead to very complex analytical problems in queueing theory.  You can find
> some results on the transient analysis in the queueing theory literature
> (including the second volume of my Queueing Systems book), but they are
> limited and hard. Nevertheless, the literature does contain some works on
> transient analysis of queueing systems as applied to network congestion
> control - again limited. On the other hand, as you said, control theory
> addresses stability head on and does offer some tools as well, but again,
> it is hairy.
>
> I was just about to mention control theory.
>
> One basic characteristic of Poisson traffic is that it is inelastic, and
> assumes there is no control feedback whatsoever.  This means it can only be
> a valid model when the following are both true:
>
> 1: The offered load is *below* the link capacity, for all links, averaged
> over time.
>
> 2: A high degree of statistical multiplexing exists.
>
> If 1: is not true and the traffic is truly inelastic, then the queues will
> inevitably fill up and congestion collapse will result, as shown from
> ARPANET experience in the 1980s; the solution was to introduce control
> feedback to the traffic, initially in the form of TCP Reno.  If 2: is not
> true then the traffic cannot be approximated as Poisson arrivals,
> regardless of load relative to capacity, because the degree of correlation
> is too high.
>
> Taking the iPhone introduction anecdote as an illustrative example,
> measuring utilisation as very close to 100% is a clear warning sign that
> the Poisson model was inappropriate, and a control-theory approach was
> needed instead, to capture the feedback effects of congestion control.  The
> high degree of statistical multiplexing inherent to a major ISP backhaul is
> irrelevant to that determination.
>
> Such a model would have found that the primary source of control feedback
> was human users giving up in disgust.  However, different humans have
> different levels of tolerance and persistence, so this feedback was not
> sufficient to reduce the load sufficiently to give the majority of users a
> good service; instead, *all* users received a poor service and many users
> received no usable service.  Introducing a technological control feedback,
> in the form of packet loss upon overflow of correctly-sized queues,
> improved service for everyone.
>
> (BTW, DNS becomes significantly unreliable around 1-2 seconds RTT, due to
> protocol timeouts, which is inherited by all applications that rely on DNS
> lookups.  Merely reducing the delays consistently below that threshold
> would have improved perceived reliability markedly.)
>
> Conversely, when talking about the traffic on a single ISP subscriber's
> last-mile link, the Poisson model has to be discarded due to criterion 2
> being false.  The number of flows going to even a family household is
> probably in the low dozens at best.  A control-theory approach can also
> work here.
>
>  - Jonathan Morton
> _______________________________________________
> Make-wifi-fast mailing list
> Make-wifi-fast@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/make-wifi-fast

--0000000000002abc0f05c75a767c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">With the disclaimer that I&#39;m not as strong in statisti=
cs and modelling as I&#39;d like to be....<div><br></div><div>I think it&#3=
9;s not useful to attempt=C2=A0to stochastically=C2=A0model the behavior of=
 what are actually active (well, reactive) components.=C2=A0 The responses =
of each piece are deterministic, but the inputs (users) are not.=C2=A0 So w=
hile you could maybe measure the behavior of a network, and then build a hi=
dden markov model that can produce the same results, I don&#39;t see how it=
 would be useful for testing the behavior of either the reactive components=
 (TCP CC algs) or the layers below the reactive components (queues and link=
s), because the model needs to react to the behavior of the pieces it&#39;s=
 sitting on top of, not due to a stochastic=C2=A0process that&#39;s indepen=
dent (in the statistical sense) of the underlying queues and links.</div><d=
iv><br></div><div>Probably a &quot;well duh...&quot; thought for many here.=
=C2=A0 But I was _amazed_ when working with very senior engineers for netwo=
rk hardware companies, who said all testing was done with a static blend of=
 &quot;i-mix&quot; traffic (in both directions), even though they were look=
ing at last-mile network usage which was going to be primarily TCP download=
, just like a home, and nothing like i-mix.=C2=A0 Or that the applications =
running on top of that gear were actually reactive to their (mis-)managemen=
t of their queues and loads.</div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Fri, Jul 9, 2021 at 4:56 PM Jonathan M=
orton &lt;<a href=3D"mailto:chromatix99@gmail.com">chromatix99@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-co=
lor:rgb(204,204,204);padding-left:1ex">&gt; On 10 Jul, 2021, at 2:01 am, Le=
onard Kleinrock &lt;<a href=3D"mailto:lk@cs.ucla.edu" target=3D"_blank">lk@=
cs.ucla.edu</a>&gt; wrote:<br>
&gt; <br>
&gt; No question that non-stationarity and instability are what we often se=
e in networks.=C2=A0 And, non-stationarity and instability are both topics =
that lead to very complex analytical problems in queueing theory.=C2=A0 You=
 can find some results on the transient analysis in the queueing theory lit=
erature (including the second volume of my Queueing Systems book), but they=
 are limited and hard. Nevertheless, the literature does contain some works=
 on transient analysis of queueing systems as applied to network congestion=
 control - again limited. On the other hand, as you said, control theory ad=
dresses stability head on and does offer some tools as well, but again, it =
is hairy. <br>
<br>
I was just about to mention control theory.<br>
<br>
One basic characteristic of Poisson traffic is that it is inelastic, and as=
sumes there is no control feedback whatsoever.=C2=A0 This means it can only=
 be a valid model when the following are both true:<br>
<br>
1: The offered load is *below* the link capacity, for all links, averaged o=
ver time.<br>
<br>
2: A high degree of statistical multiplexing exists.<br>
<br>
If 1: is not true and the traffic is truly inelastic, then the queues will =
inevitably fill up and congestion collapse will result, as shown from ARPAN=
ET experience in the 1980s; the solution was to introduce control feedback =
to the traffic, initially in the form of TCP Reno.=C2=A0 If 2: is not true =
then the traffic cannot be approximated as Poisson arrivals, regardless of =
load relative to capacity, because the degree of correlation is too high.<b=
r>
<br>
Taking the iPhone introduction anecdote as an illustrative example, measuri=
ng utilisation as very close to 100% is a clear warning sign that the Poiss=
on model was inappropriate, and a control-theory approach was needed instea=
d, to capture the feedback effects of congestion control.=C2=A0 The high de=
gree of statistical multiplexing inherent to a major ISP backhaul is irrele=
vant to that determination.<br>
<br>
Such a model would have found that the primary source of control feedback w=
as human users giving up in disgust.=C2=A0 However, different humans have d=
ifferent levels of tolerance and persistence, so this feedback was not suff=
icient to reduce the load sufficiently to give the majority of users a good=
 service; instead, *all* users received a poor service and many users recei=
ved no usable service.=C2=A0 Introducing a technological control feedback, =
in the form of packet loss upon overflow of correctly-sized queues, improve=
d service for everyone.<br>
<br>
(BTW, DNS becomes significantly unreliable around 1-2 seconds RTT, due to p=
rotocol timeouts, which is inherited by all applications that rely on DNS l=
ookups.=C2=A0 Merely reducing the delays consistently below that threshold =
would have improved perceived reliability markedly.)<br>
<br>
Conversely, when talking about the traffic on a single ISP subscriber&#39;s=
 last-mile link, the Poisson model has to be discarded due to criterion 2 b=
eing false.=C2=A0 The number of flows going to even a family household is p=
robably in the low dozens at best.=C2=A0 A control-theory approach can also=
 work here.<br>
<br>
=C2=A0- Jonathan Morton<br>
_______________________________________________<br>
Make-wifi-fast mailing list<br>
<a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">M=
ake-wifi-fast@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" rel=3D"no=
referrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/make-wif=
i-fast</a></blockquote></div>

--0000000000002abc0f05c75a767c--

--===============3554403477874336643==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3554403477874336643==--

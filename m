Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD07935173
	for <lists+cake@lfdr.de>; Thu, 18 Jul 2024 20:03:13 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 72B613CB42;
	Thu, 18 Jul 2024 14:03:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1721325792;
	bh=8K236Ebykylli9n/l9gGwokkJ1R2FTv4Sk5OMPONe4s=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=E9vdP6iGVONVSC6jcs/oWDy3x8j7+dhwtmfpo3gNvOLN8t+3s1v4yRyIlH8FeXOwh
	 49aioaaUClgQBnp1d7VZCOEtLBn3tyGej3N8e+bIJ1DuVxZ5YHRfY3sXR4qgfr733m
	 14r+SaXd13a39F9iYhFXQ4sfTYpVHvATxnzKGMME0eJ9GlCANAJut0ZNpR7ReZTxj8
	 Kt0fndCX3vCF5nUo01WdjHBYWzSHKS+W45yuGXeeflycAsp51fjmn+ujLIMaO2dWaj
	 w9hkarG2cje0GfkQ53wLi3CCco9lF4a0zDu/wbX5lnx+nHDMU5D5uJkAjOu/be42gb
	 HWtd7cRbVXh7g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com
 [IPv6:2001:4860:4864:20::30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BE1BD3CB37
 for <cake@lists.bufferbloat.net>; Thu, 18 Jul 2024 14:03:10 -0400 (EDT)
Received: by mail-oa1-x30.google.com with SMTP id
 586e51a60fabf-260e12aac26so635647fac.0
 for <cake@lists.bufferbloat.net>; Thu, 18 Jul 2024 11:03:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1721325790; x=1721930590; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Zqijmz1URkvrfDfzMpfNHhYmVwZX/aCprKEOIt2KBII=;
 b=WEBUatZ2kIR6owGwYMVOrFKzNc+fkylG2scUWBXKgutqwiboWjzQVZ6L1fwmllnxem
 81FSSqO2SQybJ/S63LrqkS8nZ50MtFtCgYWczG3w47YUntnS02BCDhdWh0ZmNr4CQsaV
 ncKGGg9MiqugZr14j8ceacYdaLo0X/X4g38xac0BopQwpn6U2GMfrr9MCJ+o1oODMlTp
 42I4sxPsK58SkDTeLkXywtvt3w9QriG2sqD9wqvLokQ2y77v/7qYuDSRhB4739r546oM
 RFMe807Hbp+vB3Hej6DAM/xBsfrlMK8vkWVpVuRCquzUUZa8a7LxdLmQj/U7YQfLk/JZ
 sEyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721325790; x=1721930590;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Zqijmz1URkvrfDfzMpfNHhYmVwZX/aCprKEOIt2KBII=;
 b=RMFWApSUKGM2v8jYRlFOe/4HCBN0rPs+E8s4XhSS6lqAKFViAvQ1dreWydH0fdy7HS
 nHcnzz7t64corAdZbIOs8VNyAEtzU8MyTLocWIEq8gH1QKT4zRCjpfELTKfXGk8N9jAu
 RgcfcaPCzqrwmK8d5D8Bj+y6NL16jJB9qDhYuVxp6ulwFB1TcFFKy9ROJ4ww8KUfpY9C
 2vAXbxIE3XI6VHLEGyom4fwkYwfKR6YJ0fglzj0pGt0Dr24gRYGhMo6R57biNtWKfgeX
 1FidAIY6MqPO1s3PuIGrTKUMB3qTWOBOYsPXO5dL/EoD90+wj5oyfeEbbv6/jQWRJ49K
 J0CQ==
X-Gm-Message-State: AOJu0Yz6+iThcuClO+SOR6CEr5n1/p/ciKY7a1CmNCrmrV6PdpfNzfHc
 hDn/4w2L7R+AM36ZLFDt2s2rHTwMd+pfBdMDreqhoC9KMbBEBdhCvjdf40lb2qoOcqAo7+efI9X
 wjwweCjDrjHegYnc3LNQVfsS3nNY=
X-Google-Smtp-Source: AGHT+IHQ0jrmEqAMOv3jep8v5FVdC1OPFuorn948A2OsoVv2j6uxnw2xkP3TZ3T60alpu3J/7R3zsl7cDmeBu6gTlNA=
X-Received: by 2002:a05:6870:449:b0:25e:29e7:14c8 with SMTP id
 586e51a60fabf-260d94300d8mr4576660fac.42.1721325789748; Thu, 18 Jul 2024
 11:03:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw6yW0rkzfGhsrjHP3jDk1q63_GGqwEFYUy+6WN8HV7G_A@mail.gmail.com>
 <2B93218F-F3EF-4A79-9061-A1A3AB922CE6@gmail.com>
In-Reply-To: <2B93218F-F3EF-4A79-9061-A1A3AB922CE6@gmail.com>
Date: Thu, 18 Jul 2024 11:02:57 -0700
Message-ID: <CAA93jw4G+gJ7AitLkmkNhjE6VnWsR_=2ByqNYJuUmr=EJYrZ9w@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
Subject: Re: [Cake] cobalt, compared
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============2781213789146892488=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2781213789146892488==
Content-Type: multipart/alternative; boundary="0000000000003da5bf061d89645a"

--0000000000003da5bf061d89645a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you. I too was puzzled but didn't take the time to delve deeper.



On Fri, Jun 14, 2024 at 4:05=E2=80=AFAM Jonathan Morton <chromatix99@gmail.=
com>
wrote:

> > On 14 Jun, 2024, at 2:40 am, Dave Taht via Cake <
> cake@lists.bufferbloat.net> wrote:
> >
> >
> https://www.tu-ilmenau.de/fileadmin/Bereiche/IA/vsbs/Publikationen/2024/S=
SK_NOMS24_AdaptiveAQM_Authors-version.pdf
>
> I don't understand their test methodology.  I mean that literally.
>
> Their results indicate queue delays in the region of one whole second.
> This is wildly different from the target delays of any of the AQMs tested=
.
> In fact, their results for COBALT are above the trigger for BLUE activity
> (which they also helpfully listed in their configuration table).  One
> obvious conclusion is that COBALT's lower queue delays and higher loss
> rates in their results are precisely due to relying on the BLUE component=
.
> But that is most certainly not the intended operating regime for COBALT -
> BLUE is provided as a failsafe, not as a primary congestion signalling
> mechanism.
>
> They state a link rate of 2Gbps, and a variety of flow rates, the highest
> of which is 10Mbps.  Even if we multiply the latter by the number of
> clients (100), the 2Gbps link is not saturated.  If there's a separate fl=
ow
> between each client-server Cartesian product, and the clients are each
> limited to a 10Mbps link with its own AQM instance, then we should expect
> AQM activity to be capable of keeping the queue delay down to about 20ms
> (5x a small number of MTUs), which is 50x better than their typical
> reported results.
>
> I can only conclude that, for whatever reason, they have constructed a
> traffic scenario (the details of which are not adequately reported in the
> paper) which induces an extreme level of congestion, which of course the
> conventional AQMs have some trouble with handling (but COBALT does better
> on, due to BLUE activity).  They then introduce their own AQMs to this
> scenario, and report that they do better on a couple of metrics (but are
> still very bad on the others).
>
> Overall, this paper does not provide any information of interest.
>
>  - Jonathan Morton



--=20
Artists/Musician Campout Aug 9-11
https://www.eventbrite.com/e/healing-arts-event-tickets-928910826287
Dave T=C3=A4ht CSO, LibreQos

--0000000000003da5bf061d89645a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you. I too was puzzled but didn&#39;t take the time =
to delve deeper.<div><br></div><div><br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 14, 2024 at 4:05=
=E2=80=AFAM Jonathan Morton &lt;<a href=3D"mailto:chromatix99@gmail.com">ch=
romatix99@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-styl=
e:solid;border-left-color:rgb(204,204,204);padding-left:1ex">&gt; On 14 Jun=
, 2024, at 2:40 am, Dave Taht via Cake &lt;<a href=3D"mailto:cake@lists.buf=
ferbloat.net" target=3D"_blank">cake@lists.bufferbloat.net</a>&gt; wrote:<b=
r>
&gt; <br>
&gt; <a href=3D"https://www.tu-ilmenau.de/fileadmin/Bereiche/IA/vsbs/Publik=
ationen/2024/SSK_NOMS24_AdaptiveAQM_Authors-version.pdf" rel=3D"noreferrer"=
 target=3D"_blank">https://www.tu-ilmenau.de/fileadmin/Bereiche/IA/vsbs/Pub=
likationen/2024/SSK_NOMS24_AdaptiveAQM_Authors-version.pdf</a><br>
<br>
I don&#39;t understand their test methodology.=C2=A0 I mean that literally.=
<br>
<br>
Their results indicate queue delays in the region of one whole second.=C2=
=A0 This is wildly different from the target delays of any of the AQMs test=
ed.=C2=A0 In fact, their results for COBALT are above the trigger for BLUE =
activity (which they also helpfully listed in their configuration table).=
=C2=A0 One obvious conclusion is that COBALT&#39;s lower queue delays and h=
igher loss rates in their results are precisely due to relying on the BLUE =
component.=C2=A0 But that is most certainly not the intended operating regi=
me for COBALT - BLUE is provided as a failsafe, not as a primary congestion=
 signalling mechanism.<br>
<br>
They state a link rate of 2Gbps, and a variety of flow rates, the highest o=
f which is 10Mbps.=C2=A0 Even if we multiply the latter by the number of cl=
ients (100), the 2Gbps link is not saturated.=C2=A0 If there&#39;s a separa=
te flow between each client-server Cartesian product, and the clients are e=
ach limited to a 10Mbps link with its own AQM instance, then we should expe=
ct AQM activity to be capable of keeping the queue delay down to about 20ms=
 (5x a small number of MTUs), which is 50x better than their typical report=
ed results.<br>
<br>
I can only conclude that, for whatever reason, they have constructed a traf=
fic scenario (the details of which are not adequately reported in the paper=
) which induces an extreme level of congestion, which of course the convent=
ional AQMs have some trouble with handling (but COBALT does better on, due =
to BLUE activity).=C2=A0 They then introduce their own AQMs to this scenari=
o, and report that they do better on a couple of metrics (but are still ver=
y bad on the others).<br>
<br>
Overall, this paper does not provide any information of interest.<br>
<br>
=C2=A0- Jonathan Morton</blockquote></div><br clear=3D"all"><div><br></div>=
<span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=
=3D"gmail_signature"><div dir=3D"ltr"><div>Artists/Musician Campout Aug 9-1=
1</div><div><a href=3D"https://www.eventbrite.com/e/healing-arts-event-tick=
ets-928910826287" target=3D"_blank">https://www.eventbrite.com/e/healing-ar=
ts-event-tickets-928910826287</a><br></div><div>Dave T=C3=A4ht CSO, LibreQo=
s<br></div></div></div>

--0000000000003da5bf061d89645a--

--===============2781213789146892488==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2781213789146892488==--

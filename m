Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 93887AD0080
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:41:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 644AF3CBC4;
	Fri,  6 Jun 2025 06:40:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749206459;
	bh=DF2WpwAkfI+lUpxvobWroTdtmpscy28r+b5/B+PZb/c=;
	h=Date:In-Reply-To:To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=fhhH4j2X9F5/gsFZgpsR1MyO+/rmiIt1dwuXj6QakaC0YRzMJJJP417MW7lRt9CU1
	 fSp20ZfyCHt07CdQIG04HgddnSCCKHVRvU4RVn2fCuSuVC7N/edCa0JhHn9XpsrOPz
	 NATun8+GP2layOYGhlMYt5kMpW/OievAHeeN7caCRCcK9bRPETaaFX/kmUI43tYMPv
	 eEAQhcSsYmIztKo6+CxHQfT5nJsCuaOy7a3OUCi0J2D9VFf1/qyqFKkdgYJWhjFkwX
	 mZfetTwpFjvUH0y+jaRcrs7WfG7zjJGcNpO4IQ3hfbjHlV/RCBYeNWIheoQO//q9WK
	 LfSjXPmLcyXSA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 78B393B2A4
 for <cake@lists.bufferbloat.net>; Mon, 24 Mar 2025 11:23:09 -0400 (EDT)
Received: by mail-pl1-x635.google.com with SMTP id
 d9443c01a7336-2255003f4c6so85931945ad.0
 for <cake@lists.bufferbloat.net>; Mon, 24 Mar 2025 08:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jeffhansen.com; s=google; t=1742829788; x=1743434588;
 darn=lists.bufferbloat.net; 
 h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=jmRzn5DsHDkGaqTUgg7hGySeY7ngPH2iQV15nCAOq+U=;
 b=D9Nftl5D1qtI0WkurUzrv2x7jKuTPdt+sWSbRxBFMxhOnulVg7FP2dDJN5Uk7iKXyx
 bStgv2YALykuj+mRga0HDOvJSUZNTGCck0jRBep1AcuZzXtCps49OTr4WU7+fgMVTV7j
 6seGOM0ssxCJ5k2rquaiDdrcVLexISpCtDdnsFKijL6wEyg4AdCpd2mzI8c4G8R/UBL1
 o3KXugDxRMAh4J/niumQvIw1cMpx6MrMX0u8OPbkyWhP66yhfChm0XMlX3xBe5IO3nRm
 036HwikaaRQv85YmFEOlHCQUxlbeghW5GYRIiSQUS/Qtkohn+UbfeGjR/f53Dsdsph9Z
 7X0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742829788; x=1743434588;
 h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=jmRzn5DsHDkGaqTUgg7hGySeY7ngPH2iQV15nCAOq+U=;
 b=e6O5bi6/mBgNe3IGCDZpYZTfuotdRPfZtAoxFM2Qcqvfk1lqZ/3w5ju9xN1+FG+TIf
 V/8shJosnkPpEcXsdwvdNhDp5aarOHGGFK7Q23nO/NmI612PRSaSptlkfF2fvwxxM1RP
 8MmfhcFl5O5bmJ6NGIu9Ng7oVs8rYHevwWAdTpPtzQH/2E8bgbxixbSx6/zbO8G0vNWa
 mjlpRDcG/BGllCdDSzArDIzbHNy30uBZ3sbT2NPUD1mvDpO6QpD10L1+v6NAZS7CQ2Qe
 JF6iKgad1GpGJb/JzfI6UUU6kXwoHXjqi/rWwYNRbfTNGkLmyAdwJ3q4IJx4dvPpwD0E
 +IPQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCW8shWnF3gXKiUO5v8Xbdg+c/Zbd4pvNVptXzzRbgJXxlG7+AGyB0PdQlcQL1MSUw/31wUE@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwUHfluRSx7I2vMeQmfpOuEsFzDGLa8sWoAlfqHBQDIIA8Wb+0P
 dP0DMwsZq1Gas1HdDX0dDrpPJw3rCmiTqF1swrF0JWVXxjvx3YugGrRjsKZeRD8=
X-Gm-Gg: ASbGncsbQg45JpCtgfYscOLvPxibdeGBorbT4gsj4pFV3d4u1O4f2t4820a2x1/aIcQ
 EI5X83ktZJl3TouyRJ1gbgB6jXgNMv0atC0eR5kINqCwIu9iMJ7mNzQIUWQldztCCAHSmCoaW8s
 VIAH4lvCKUeAEYj5G1gvVm2xX2YmNQJqHmhUt57FdzHCvYYuhUbOJcbE6DzsxbS1AunxT7+7u2d
 YsuWWffqwg9iMtJYgNMWfkYkViQ5RRZ72V4p1JTVZY9gyJWeu60E+H34mK8da4lSf06WS1KqFU5
 QEC7Kwe/riQ2tR9nteI6rnOkznVOjin9pX5FwwOB/T0rILUs3iCO6DNuLyuFHrnpULQ9JXkRAL/
 5FsKz/2gLDc30mTIU
X-Google-Smtp-Source: AGHT+IGUm9Yy7EixCiO5gsWQ2D/2mkoNe1LWl/IzCXuBqml8q/+PKCAp6MZ3FHMPEMm77ZRHLefBIQ==
X-Received: by 2002:a05:6a00:ac8:b0:736:5504:e8b4 with SMTP id
 d2e1a72fcca58-739059ffa0dmr20155197b3a.19.1742829786734; 
 Mon, 24 Mar 2025 08:23:06 -0700 (PDT)
Received: from smtpclient.apple (poderoso.infowest.net. [209.33.214.42])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7390611d3cbsm8085029b3a.87.2025.03.24.08.23.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Mar 2025 08:23:06 -0700 (PDT)
Message-Id: <8756E062-0FC3-4301-8884-B1BCA7A124B5@jeffhansen.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Date: Mon, 24 Mar 2025 09:23:03 -0600
In-Reply-To: <CAJUtOOj1+US-u-aB=8=dCFnoi1pCmzjojSUY-46mL7_Uq3fV8A@mail.gmail.com>
To: Frantisek Borsik <frantisek.borsik@gmail.com>
References: <CAJUtOOh3DEL==w8uYTkPEyhZpgYbLx5xbyLJtXCCpNUE+SQyJg@mail.gmail.com>
 <7FBEC0CA-162E-48A2-81D6-97CDD2F63EEC@gmail.com>
 <CAJUtOOj1+US-u-aB=8=dCFnoi1pCmzjojSUY-46mL7_Uq3fV8A@mail.gmail.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
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
From: Jeff Hansen via Cake <cake@lists.bufferbloat.net>
Reply-To: Jeff Hansen <x@jeffhansen.com>
Cc: Cake List <cake@lists.bufferbloat.net>, contact@daryllswer.com
Content-Type: multipart/mixed; boundary="===============1851783941432111813=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============1851783941432111813==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B7B2553D-8484-42B6-9711-DDEA35CA8E1D"


--Apple-Mail=_B7B2553D-8484-42B6-9711-DDEA35CA8E1D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Frank,

The hardware that Route10 is based off of doesn=E2=80=99t support FQ =
Codel nor CAKE at all, so everything is done in software on our 5.4 =
Linux kernel. It works great, though. In some instances it=E2=80=99s the =
only way to max out a PPPoE connection and have optimal latency.

It doesn=E2=80=99t look like our ethernet driver supports BQL at all, so =
we haven=E2=80=99t tried that yet, but as is, it absolutely eliminates =
high latency if tuned properly.

-Jeff

> On Mar 21, 2025, at 2:27=E2=80=AFAM, Frantisek Borsik =
<frantisek.borsik@gmail.com> wrote:
>=20
> Happy to see that! Thanks, guys.
>=20
> Adding Jeff <https://www.linkedin.com/in/jeff-hansen-6794021/>, Alta =
Labs CTO - Darryl <https://x.com/DaryllSwer/status/1902486684476047544> =
has a suggestion how to push this further: "Maybe they can add both =
FQ_CoDel and CAKE with BQL support? How's hardware-offloading of =
FQ_CoDel looking on these =E2=80=9Cprosumer=E2=80=9D equipment these =
days? I haven't kept up over a year on this topic."
>=20
> All the best,
>=20
> Frank
>=20
> Frantisek (Frank) Borsik
>=20
> =20
>=20
> https://www.linkedin.com/in/frantisekborsik
>=20
> Signal, Telegram, WhatsApp: +421919416714=20
>=20
> iMessage, mobile: +420775230885
>=20
> Skype: casioa5302ca
>=20
> frantisek.borsik@gmail.com <mailto:frantisek.borsik@gmail.com>
>=20
> On Fri, Mar 21, 2025 at 3:44=E2=80=AFAM Jonathan Morton =
<chromatix99@gmail.com <mailto:chromatix99@gmail.com>> wrote:
>> > On 19 Mar, 2025, at 12:01 am, Frantisek Borsik via Cake =
<cake@lists.bufferbloat.net <mailto:cake@lists.bufferbloat.net>> wrote:
>> >=20
>> > Should be pushed through production in day or two and they will be =
talking about it on https://streamyard.com/watch/ubYm2AffWkYi this =
Wednesday,  March 19, at 1PM EST / 12PM CST / 11AM MST / 10AM PST
>>=20
>> I joined the stream, and was able to ask about the throughput they =
were getting with CAKE on their hardware.  This is just for the "Route =
10" rather than their APs, and they reported getting about 2.5Gbps =
throughput with CAKE enabled. They do correctly note that the =
hardware-accelerated forwarding path is disabled for the interface where =
CAKE is turned on.
>>=20
>> Supporting 2.5Gbps is pretty good I think, and should be sufficient =
to handle all practical Internet subscriptions that are likely to =
require bufferbloat mitigation.  For comparison, on the same call they =
claimed about 800Mbps throughput for acting as a WireGuard tunnel =
endpoint.
>>=20
>>  - Jonathan Morton


--Apple-Mail=_B7B2553D-8484-42B6-9711-DDEA35CA8E1D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"overflow-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: =
after-white-space;">Frank,<div><br></div><div>The hardware that Route10 =
is based off of doesn=E2=80=99t support FQ Codel nor CAKE at all, so =
everything is done in software on our 5.4 Linux kernel. It works great, =
though. In some instances it=E2=80=99s the only way to max out a PPPoE =
connection and have optimal latency.</div><div><br></div><div>It =
doesn=E2=80=99t look like our ethernet driver supports BQL at all, so we =
haven=E2=80=99t tried that yet, but as is, it absolutely eliminates high =
latency if tuned properly.</div><div><br></div><div>-Jeff<br =
id=3D"lineBreakAtBeginningOfMessage"><div><br><blockquote =
type=3D"cite"><div>On Mar 21, 2025, at 2:27=E2=80=AFAM, Frantisek Borsik =
&lt;frantisek.borsik@gmail.com&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div><div dir=3D"ltr"><div>Happy to =
see that! Thanks, guys.</div><div><br></div><div>Adding <a =
href=3D"https://www.linkedin.com/in/jeff-hansen-6794021/" =
target=3D"_blank">Jeff</a>, Alta Labs CTO - <a =
href=3D"https://x.com/DaryllSwer/status/1902486684476047544" =
target=3D"_blank">Darryl</a> has a suggestion how to push this further: =
"Maybe they can add both FQ_CoDel and CAKE with BQL support? How's =
hardware-offloading of FQ_CoDel looking on these =E2=80=9Cprosumer=E2=80=9D=
 equipment these days? I haven't kept up over a year on this =
topic."</div><div><br></div><div><div dir=3D"ltr" =
class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div =
dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div =
dir=3D"ltr"><div>All the best,</div><div><br></div><div><p =
class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)">Frank<u></u><u></u></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><u></u><u></u></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Frantisek (Frank) =
Borsik<u></u><u></u></p><p class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)"><u></u>&nbsp;<u></u></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a =
href=3D"https://www.linkedin.com/in/frantisekborsik" =
style=3D"color:rgb(17,85,204)" =
target=3D"_blank">https://www.linkedin.com/in/frantisekborsik</a><u></u><u=
></u></p><p class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">Signal, =
Telegram, WhatsApp: +421919416714&nbsp;<u></u><u></u></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)">iMessage, mobile: =
+420775230885<u></u><u></u></p><p class=3D"MsoNormal" =
style=3D"color:rgb(34,34,34)">Skype: casioa5302ca<u></u><u></u></p><p =
class=3D"MsoNormal" style=3D"color:rgb(34,34,34)"><a =
href=3D"mailto:frantisek.borsik@gmail.com" style=3D"color:rgb(17,85,204)" =
target=3D"_blank">frantisek.borsik@gmail.com</a></p></div></div></div></di=
v></div></div></div></div></div></div></div></div></div><br></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar =
21, 2025 at 3:44=E2=80=AFAM Jonathan Morton &lt;<a =
href=3D"mailto:chromatix99@gmail.com" =
target=3D"_blank">chromatix99@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px =
0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(=
204,204,204);padding-left:1ex">&gt; On 19 Mar, 2025, at 12:01 am, =
Frantisek Borsik via Cake &lt;<a =
href=3D"mailto:cake@lists.bufferbloat.net" =
target=3D"_blank">cake@lists.bufferbloat.net</a>&gt; wrote:<br>
&gt; <br>
&gt; Should be pushed through production in day or two and they will be =
talking about it on <a href=3D"https://streamyard.com/watch/ubYm2AffWkYi" =
rel=3D"noreferrer" =
target=3D"_blank">https://streamyard.com/watch/ubYm2AffWkYi</a> this =
Wednesday,&nbsp; March 19, at 1PM EST / 12PM CST / 11AM MST / 10AM =
PST<br>
<br>
I joined the stream, and was able to ask about the throughput they were =
getting with CAKE on their hardware.&nbsp; This is just for the "Route =
10" rather than their APs, and they reported getting about 2.5Gbps =
throughput with CAKE enabled. They do correctly note that the =
hardware-accelerated forwarding path is disabled for the interface where =
CAKE is turned on.<br>
<br>
Supporting 2.5Gbps is pretty good I think, and should be sufficient to =
handle all practical Internet subscriptions that are likely to require =
bufferbloat mitigation.&nbsp; For comparison, on the same call they =
claimed about 800Mbps throughput for acting as a WireGuard tunnel =
endpoint.<br>
<br>
&nbsp;- Jonathan Morton</blockquote></div>
</div></blockquote></div><br></div></body></html>=

--Apple-Mail=_B7B2553D-8484-42B6-9711-DDEA35CA8E1D--

--===============1851783941432111813==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1851783941432111813==--

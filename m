Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 05896644C58
	for <lists+cake@lfdr.de>; Tue,  6 Dec 2022 20:17:23 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 015253CB48;
	Tue,  6 Dec 2022 14:17:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1670354240;
	bh=yzsurCMNUhLgXC4hZUYaMQHN8DG2vDomd9b5QbH/Uzw=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=DOPYMWUS8YSRGAdOxBaqwTWRC4R8JSLKH0ShrGeROCRiEvy4EdPGw0s5SbaDHzgdY
	 kBe2yzgviUf+TmlIcu0SSYMDHwQWi3L4ghlan/li9QKe3JComYRa7B9ZVHYeIZxbK9
	 F9clvTAy/OsXSy2WT/B+G1iZgFeER1jOoedJ9Nmy/G/yD8tixS5jeD8YRnirG6ykOW
	 q6rb1p7Dzh/o4QuoxemqBCQaGRacvkVmbKqwD75yNfU0n3B3LwpqoalW81KKd34Xls
	 PpsG6hJajYe+ZjBJ85SuXiENYPcBKUVWkZzSwbarnc+0vtJFxP8dKf+XExe6rX9tF8
	 r57njLwEpcwKQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 781683CB37
 for <cake@lists.bufferbloat.net>; Tue,  6 Dec 2022 14:17:18 -0500 (EST)
Received: by mail-lf1-x12c.google.com with SMTP id b3so25214432lfv.2
 for <cake@lists.bufferbloat.net>; Tue, 06 Dec 2022 11:17:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=JmtdpoOM3bGc2mJFeYgxSI/9NKJzrduLuI9XCSpdN/E=;
 b=UF92Hhda3Jl5HYG+qUSAjEBf98rUyOixroDCC/gsJusdlaayc4u8XjnhrubTA361u0
 SiBzK6dsdE/qoG8iof5x4678yZUQjIoC5hdNbjcBzb1Hsfnax0Uc6hc0sZPbBEAXk8g8
 w7JRHB24S2ejou08o9IL/8N0UlZWw2pmkYe+Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=JmtdpoOM3bGc2mJFeYgxSI/9NKJzrduLuI9XCSpdN/E=;
 b=jkrJPXr2vC51j46raJ0aoAbvLMNdbNKA2a6831jmFlBurvnqGoB77/RTNTQdkHco8i
 fPxZmt5AycDi7RwCMGAYEMkoEEENNN6EaMcniJPK8SQyNvvV5OfBZHZJuNVLUgzkCPfp
 sISA+Yi3jV22ZhznHhb0BftmODc19COeCHsVDtjlVmcx7HOvt7rIKlP3MneyIRBOoHV4
 XDbKj5w7epG+bSEfCidr0i2DImy72lZco3D027rOTImUpEBDcJIL6jkiBq+1KnutpH9L
 Fr5utXb7HowNc8ju+/w02bdgP4mWYaqTAlT6WBmM4hfmTKQ6su6j2G515f572EH/EGye
 ng8g==
X-Gm-Message-State: ANoB5pn3nsQhIKf8frJYB4uRVS3Ouz+ZRKfO05tKgeaYB8K60vS7xuIc
 4EJQ7R/6wyJzpV3MjT/hRL6pPkQ8l9LbvTbFnWjuDOV4qdx7wB5hZ/4bZcSm09H/8rC4PBV3fln
 hhwZUafVABlpuqgX7BRcJPNUgk4zw
X-Google-Smtp-Source: AA0mqf7gMwV5CMvFym1g3fF360yHlrrLzmrh2q3KbGap75fsTMcac9CZ4I6+2u/j7srNBstQ2wAudsvpVkI/Blgd/+0=
X-Received: by 2002:ac2:4a8c:0:b0:4b5:4a26:b7a8 with SMTP id
 l12-20020ac24a8c000000b004b54a26b7a8mr8003985lfp.134.1670354237086; Tue, 06
 Dec 2022 11:17:17 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <938D9D45-DADA-4291-BD8A-84E4257CEE49@apple.com>
 <CAA93jw4KOkgdfT2LunCtPYPjXL+=OtTrouJgPjM7U1bHKtErnw@mail.gmail.com>
 <BD3CEB48-E45E-49DB-AAFC-80C539BB4169@apple.com> <372838.1666216016@dyas>
In-Reply-To: <372838.1666216016@dyas>
Date: Tue, 6 Dec 2022 11:17:05 -0800
Message-ID: <CAHb6LvoucWrdo+45hfJfqAmcmmHAhyK7XDRytVZB9aMwHm7mDg@mail.gmail.com>
To: Michael Richardson <mcr+ietf@sandelman.ca>
Subject: Re: [Cake] [Make-wifi-fast] [Bloat] The most wonderful video ever
	about bufferbloat
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
From: Bob McMahon via Cake <cake@lists.bufferbloat.net>
Reply-To: Bob McMahon <bob.mcmahon@broadcom.com>
Cc: Stuart Cheshire <cheshire@apple.com>,
 Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Rpm <rpm@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============8335303919681104019=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8335303919681104019==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000f9050f05ef2da6ad"

--000000000000f9050f05ef2da6ad
Content-Type: multipart/alternative; boundary="000000000000f3b81405ef2da69d"

--000000000000f3b81405ef2da69d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Stuart's analogy seems better to me as it allows people to do something
else while waiting for an under-provisioned resource. And they may decide
that the wait isn't worth it at all. If the constraint moves to "entering
into the store" or "arrival rate to the grocery store doors" then the queue
just builds up in the parking lot vs the cashiers' lines. No real
difference.

Bob

On Tue, Dec 6, 2022 at 10:45 AM Michael Richardson via Make-wifi-fast <
make-wifi-fast@lists.bufferbloat.net> wrote:

>
> Stuart Cheshire via Bloat <bloat@lists.bufferbloat.net> wrote:
>     >> I think the person with the cheetos pulling out a gun and shooting
>     >> everyone in front of him (AQM) would not go down well.
>
>     > Which is why starting with a bad analogy (people waiting in a groce=
ry
>     > store) inevitably leads to bad conclusions.
>
>     > If we want to struggle to make the grocery store analogy work,
> perhaps
>     > we show people checking some grocery store app on their smartphone
>     > before they leave home, and if they see that a long line is beginni=
ng
>     > to form they wait until later, when the line is shorter. The
> challenge
>     > is not how to deal with a long queue when it=E2=80=99s there, it is=
 how to
>     > avoid a long queue in the first place.
>
> Maybe if we regard the entire grocery store as the "pipe", then we would
> realize that the trick to reducing checkout lines is to move the constrai=
nt
> from exiting, to entering the store :-)
>
> Then the different times you are in the store because you have different
> amounts of shopping to do, etc. and you get txt messages from spouse to
> remember to pick up X, and that somehow is an analogy to the various
> "PowerBoost" cable and LTE/5G systems that provide for inconsistent
> bandwidth.
>
> (There are various pushes to actually do this, as the experience from COV=
ID
> was that having fewer people in the store pleased many people.)
>
>
> --
> Michael Richardson <mcr+IETF@sandelman.ca>, Sandelman Software Works
>  -=3D IPv6 IoT consulting =3D-
>
>
>
> _______________________________________________
> Make-wifi-fast mailing list
> Make-wifi-fast@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/make-wifi-fast

--=20
This electronic communication and the information and any files transmitted=
=20
with it, or attached to it, are confidential and are intended solely for=20
the use of the individual or entity to whom it is addressed and may contain=
=20
information that is confidential, legally privileged, protected by privacy=
=20
laws, or otherwise restricted from disclosure to anyone else. If you are=20
not the intended recipient or the person responsible for delivering the=20
e-mail to the intended recipient, you are hereby notified that any use,=20
copying, distributing, dissemination, forwarding, printing, or copying of=
=20
this e-mail is strictly prohibited. If you received this e-mail in error,=
=20
please return the e-mail to the sender, delete it from your computer, and=
=20
destroy any printed copy of it.

--000000000000f3b81405ef2da69d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Stuart&#39;s analogy seems better to me as it allows peopl=
e to do something else while waiting for an under-provisioned resource. And=
 they may decide that the wait isn&#39;t worth it at all. If the constraint=
 moves to &quot;entering into the store&quot; or &quot;arrival rate to the =
grocery store doors&quot; then the queue just builds up in the parking lot =
vs the cashiers&#39; lines. No real difference.<br><br>Bob</div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 6, 20=
22 at 10:45 AM Michael Richardson via Make-wifi-fast &lt;<a href=3D"mailto:=
make-wifi-fast@lists.bufferbloat.net">make-wifi-fast@lists.bufferbloat.net<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
br>
Stuart Cheshire via Bloat &lt;<a href=3D"mailto:bloat@lists.bufferbloat.net=
" target=3D"_blank">bloat@lists.bufferbloat.net</a>&gt; wrote:<br>
=C2=A0 =C2=A0 &gt;&gt; I think the person with the cheetos pulling out a gu=
n and shooting<br>
=C2=A0 =C2=A0 &gt;&gt; everyone in front of him (AQM) would not go down wel=
l.<br>
<br>
=C2=A0 =C2=A0 &gt; Which is why starting with a bad analogy (people waiting=
 in a grocery<br>
=C2=A0 =C2=A0 &gt; store) inevitably leads to bad conclusions.<br>
<br>
=C2=A0 =C2=A0 &gt; If we want to struggle to make the grocery store analogy=
 work, perhaps<br>
=C2=A0 =C2=A0 &gt; we show people checking some grocery store app on their =
smartphone<br>
=C2=A0 =C2=A0 &gt; before they leave home, and if they see that a long line=
 is beginning<br>
=C2=A0 =C2=A0 &gt; to form they wait until later, when the line is shorter.=
 The challenge<br>
=C2=A0 =C2=A0 &gt; is not how to deal with a long queue when it=E2=80=99s t=
here, it is how to<br>
=C2=A0 =C2=A0 &gt; avoid a long queue in the first place.<br>
<br>
Maybe if we regard the entire grocery store as the &quot;pipe&quot;, then w=
e would<br>
realize that the trick to reducing checkout lines is to move the constraint=
<br>
from exiting, to entering the store :-)<br>
<br>
Then the different times you are in the store because you have different<br=
>
amounts of shopping to do, etc. and you get txt messages from spouse to<br>
remember to pick up X, and that somehow is an analogy to the various<br>
&quot;PowerBoost&quot; cable and LTE/5G systems that provide for inconsiste=
nt<br>
bandwidth.<br>
<br>
(There are various pushes to actually do this, as the experience from COVID=
<br>
was that having fewer people in the store pleased many people.)<br>
<br>
<br>
--<br>
Michael Richardson &lt;<a href=3D"mailto:mcr%2BIETF@sandelman.ca" target=3D=
"_blank">mcr+IETF@sandelman.ca</a>&gt;, Sandelman Software Works<br>
=C2=A0-=3D IPv6 IoT consulting =3D-<br>
<br>
<br>
<br>
_______________________________________________<br>
Make-wifi-fast mailing list<br>
<a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">M=
ake-wifi-fast@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" rel=3D"no=
referrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/make-wif=
i-fast</a></blockquote></div>

<br>
<span style=3D"background-color:rgb(255,255,255)"><font size=3D"2">This ele=
ctronic communication and the information and any files transmitted with it=
, or attached to it, are confidential and are intended solely for the use o=
f the individual or entity to whom it is addressed and may contain informat=
ion that is confidential, legally privileged, protected by privacy laws, or=
 otherwise restricted from disclosure to anyone else. If you are not the in=
tended recipient or the person responsible for delivering the e-mail to the=
 intended recipient, you are hereby notified that any use, copying, distrib=
uting, dissemination, forwarding, printing, or copying of this e-mail is st=
rictly prohibited. If you received this e-mail in error, please return the =
e-mail to the sender, delete it from your computer, and destroy any printed=
 copy of it.</font></span>
--000000000000f3b81405ef2da69d--

--000000000000f9050f05ef2da6ad
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
X5dfkSef9T/DbsDM0PeTVMVyYIQoRSMBIGxVkaqp0MJglvQ2mU4CXcoOGgm6XC8LoLoEvYojXFKC
fRgCOT5xeMR10UPSBQIljKwt7fPhpYVY+jTtOclpAgMBAAGjggHZMIIB1TAOBgNVHQ8BAf8EBAMC
BaAwgaMGCCsGAQUFBwEBBIGWMIGTME4GCCsGAQUFBzAChkJodHRwOi8vc2VjdXJlLmdsb2JhbHNp
Z24uY29tL2NhY2VydC9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcnQwQQYIKwYBBQUHMAGG
NWh0dHA6Ly9vY3NwLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwME0G
A1UdIARGMEQwQgYKKwYBBAGgMgEoCjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxz
aWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMEkGA1UdHwRCMEAwPqA8oDqGOGh0dHA6Ly9j
cmwuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3JsMCMGA1UdEQQc
MBqBGGJvYi5tY21haG9uQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSME
GDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUpG/4RP1YQA/iXGens9pIRe7CQxMw
DQYJKoZIhvcNAQELBQADggEBACfWLy4qJyCnOa3sl4LEDAMU/gmJ6LbclGE5iR4KanAmlAt92gzN
5lSy/iE+wsRrXiHI7YKFgXX1kVK/RqMiPRrw4hq2j8nxoSi/VFiyS3CsfVMGkbY7HBTlBvla/tH+
+2nJprlXbJyz1GdvoJAeam5RvTWotcCGAjZmMa3U3zMkszgXN849xe3dUK1DauUGiInXEwEdXDcA
/0CVjL3EEMj+kNWcLhrSZKwFtxggUyMW3XWRaAeAL9wOtEaXYqlgbtnV0n9FuoV2TNm3h7Mh7rjV
I2zM+IZ3DE+XFK7dcPwte33u75QyySNJ3UMZqi25CO85yl8Bmo7aWRm99N7HGnkxggJtMIICaQIB
ATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhH
bG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwxrOEJauTmSvZnA80wDQYJ
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIGINvXd7giyb+B2ByaoY7xOE0623hOqL1kBm
fo5mYW2rMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIyMTIwNjE5
MTcxN1owaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQBOE/3NvFQpu6NdUrW6ZXoh8pXFZoW2T4Q2yu9h++x/wmRNYVSLXKe4
S0PJ1fF+mdt5ksEkg3jjYurrgVeAlyIKh1tivvR0yzt5IPsahoRSsCI4IJfCRZSQwRCQl8MnA6Tt
6zwE3TCVsSyYPXGjIG8ksTmFuvGu+R7a5Gg27cTmJ+uKj3bJLeHjAfUOV2056FoCo7exjFnwhxol
MpN9SI6Dz7Wkb0uvjFkgic0dd0Gj3VVWvyp+ZYSbmn+rf8ehdxvY3GGOk5cZ1NJchg/7wqElKacp
bmDGuXGjGfEj4wKDBB9EkWDAZo+oXD+gf71TTnnXxP4KKtkuQ67o5Byfvyyw
--000000000000f9050f05ef2da6ad--

--===============8335303919681104019==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8335303919681104019==--

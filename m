Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 402013DE353
	for <lists+cake@lfdr.de>; Tue,  3 Aug 2021 02:02:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 34F0B3CB4D;
	Mon,  2 Aug 2021 20:02:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1627948922;
	bh=aBjDoBLLbA9iPU2KEmHLlfT8iQOzHj7li0vduAeHs+g=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=ZRmGkML42xhTuPVKSx+N8QxSvbWNybMN7c8LHj051HsNfvgJGA28wKZxP7Y3JMT2g
	 Z5k2aHVdsZVSgtWawBNA6IKSH1Y2IOEM/Y4GsK2hZ8L5lsOzOWfAhPzWwfLQQkdHjN
	 lOp0iO2NLKVuIifkpWEOcgXNULJ1vyWl8xaMAXaJ4ijVSslQ9O3f1X5J+PL/ocQaRL
	 T+d1yEAAYjCbG5VUUV8AL6fY8V308jHhAgjv1OcGdGlw+mELD/SJROVj2bQS/JsABT
	 p6IfRkToAyHcjm6B5Rag0vonV4DVBPUEysOBQbYEp4PJRURStBUXMAMUbYdlB0Bbhk
	 AsQToFQ8F8YMQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1F9953CB41
 for <cake@lists.bufferbloat.net>; Mon,  2 Aug 2021 20:02:01 -0400 (EDT)
Received: by mail-ed1-x532.google.com with SMTP id y12so26779454edo.6
 for <cake@lists.bufferbloat.net>; Mon, 02 Aug 2021 17:02:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lU5W9UUVJugN4XGZ87GykdUONbXqxvVQrIdryZ025MU=;
 b=Eo9vSBgfR80r28BeSsmlfxnmyiFYbiLUHbGufDmGP5rP5PUiYWmLiH7r8SlQALybUX
 657qM1BcZ9qcpL5ErR6ykc1IrRTDXIfNGZUuvot24lU8S1Zp2v8cptyWOYwW50R+Cssl
 824IT6ZzKsglyI9bxsd3BP0HjGtdGablczmgQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lU5W9UUVJugN4XGZ87GykdUONbXqxvVQrIdryZ025MU=;
 b=NoooDJ8kSenZNKSckIC+xizjoDwh6y5BdjdbQlV5MgDP08VixQRQ7CljjJ2aPwAJZB
 3s/tTcax6/L4ChTKH25RtZwHkZe+gvjgOrkosZDskEztJJiuybDus0UicjIBqRgthv7K
 r52lfXkYdlSlDUIhjiJMjaLk/md06IYFC5nTYoGdEg8i1/iQRNX8i7i69m14XvNoX0YZ
 glvcNIrztfcelkyiZu5GYaoeXmKdaJ4PVQ05KP7RlkeaseDAJfnPULdqzRfMa9VY5q8o
 oM1bDJTdeMiWmzVq+dus7slU7Vl+cn0xSMNKjNPyrviBOEPXdxOV4a5RsVLvwPXK42MY
 U5CA==
X-Gm-Message-State: AOAM530cmnaj752zBUlEgDxzn8WSwIGdO4oeIJplCFkW1hI4BnK4GYRc
 p22CtxSWnm/MH3noZq6QCtxGaGpHUVjPuVkMJ9WdyhCozPHU8Rs5GithodC3Zmuvvu4xxtvlkDk
 dIy8eeNFmd8+DuV4KTc785UZUnuhP
X-Google-Smtp-Source: ABdhPJy5LAWYSFeUeLgyAarucCSzdjfYVaxDP3o3F0TexOfxF2m9QRy2vl8+/5xCJ+5f4wmY9QQh7TFnpOe1NVdMR6A=
X-Received: by 2002:aa7:d6cf:: with SMTP id x15mr22058883edr.59.1627948919951; 
 Mon, 02 Aug 2021 17:01:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <CAHb6LvqsZFDDkC1qjr9ccXNjFtq1qnAevQpccNFydP4BOVVL1Q@mail.gmail.com>
 <nycvar.QRO.7.76.6.2108021607160.810590@qynat-yncgbc>
 <e9302d22-8a4a-a74b-658d-c5d4c1c88987@candelatech.com>
In-Reply-To: <e9302d22-8a4a-a74b-658d-c5d4c1c88987@candelatech.com>
Date: Mon, 2 Aug 2021 17:01:49 -0700
Message-ID: <CAHb6Lvp851pVCt+zUv1PZgpHafCG4RPXEwMn6=CJFXhVf9fK8w@mail.gmail.com>
To: Ben Greear <greearb@candelatech.com>
Subject: Re: [Cake] [Make-wifi-fast] [Starlink] [Cerowrt-devel] Due Aug 2:
 Internet Quality workshop CFP for the internet architecture board
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
Cc: starlink@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>, Cake List <cake@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============6471671573590214871=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6471671573590214871==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000001b96c405c89c65f6"

--0000000000001b96c405c89c65f6
Content-Type: multipart/alternative; boundary="000000000000167de105c89c6519"

--000000000000167de105c89c6519
Content-Type: text/plain; charset="UTF-8"

We find four nodes, a primary BSS and an adjunct one quite good for lots of
testing.  The six nodes allows for a primary BSS and two adjacent ones. We
want to minimize complexity to necessary and sufficient.

The challenge we find is having variability (e.g. montecarlos) that's
reproducible and has relevant information. Basically, the distance matrices
have h-matrices as their elements. Our chips can provide these h-matrices.

The parts for solid state programmable attenuators and phase shifters
aren't very expensive. A device that supports a five branch tree and 2x2
MIMO seems a very good starting point.

Bob

On Mon, Aug 2, 2021 at 4:55 PM Ben Greear <greearb@candelatech.com> wrote:

> On 8/2/21 4:16 PM, David Lang wrote:
> > If you are going to setup a test environment for wifi, you need to
> include the ability to make a fe cases that only happen with RF, not with
> wired networks and
> > are commonly overlooked
> >
> > 1. station A can hear station B and C but they cannot hear each other
> > 2. station A can hear station B but station B cannot hear station A 3.
> station A can hear that station B is transmitting, but not with a strong
> enough signal to
> > decode the signal (yes in theory you can work around interference, but
> in practice interference is still a real thing)
> >
> > David Lang
> >
>
> To add to this, I think you need lots of different station devices,
> different capabilities (/n, /ac, /ax, etc)
> different numbers of spatial streams, and different distances from the
> AP.  From download queueing perspective, changing
> the capabilities may be sufficient while keeping all stations at same
> distance.  This assumes you are not
> actually testing the wifi rate-ctrl alg. itself, so different throughput
> levels for different stations would be enough.
>
> So, a good station emulator setup (and/or pile of real stations) and a few
> RF chambers and
> programmable attenuators and you can test that setup...
>
>  From upload perspective, I guess same setup would do the job.
> Queuing/fairness might depend a bit more on the
> station devices, emulated or otherwise, but I guess a clever AP could
> enforce fairness in upstream direction
> too by implementing per-sta queues.
>
> Thanks,
> Ben
>
> --
> Ben Greear <greearb@candelatech.com>
> Candela Technologies Inc  http://www.candelatech.com
>

-- 
This electronic communication and the information and any files transmitted 
with it, or attached to it, are confidential and are intended solely for 
the use of the individual or entity to whom it is addressed and may contain 
information that is confidential, legally privileged, protected by privacy 
laws, or otherwise restricted from disclosure to anyone else. If you are 
not the intended recipient or the person responsible for delivering the 
e-mail to the intended recipient, you are hereby notified that any use, 
copying, distributing, dissemination, forwarding, printing, or copying of 
this e-mail is strictly prohibited. If you received this e-mail in error, 
please return the e-mail to the sender, delete it from your computer, and 
destroy any printed copy of it.

--000000000000167de105c89c6519
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">We find four nodes, a primary BSS and an adjunct one quite=
 good for lots of testing.=C2=A0 The six nodes allows for a primary BSS and=
 two adjacent=C2=A0ones. We want to minimize complexity to necessary and su=
fficient.<br><br>The challenge we find is having variability=C2=A0(e.g. mon=
tecarlos) that&#39;s reproducible and has relevant information. Basically, =
the distance matrices have h-matrices as their elements. Our chips can prov=
ide these h-matrices.<div><br>The parts for solid state programmable attenu=
ators and phase shifters aren&#39;t very expensive. A device that supports =
a five branch tree and 2x2 MIMO seems a very good starting point.<br><br>Bo=
b</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, Aug 2, 2021 at 4:55 PM Ben Greear &lt;<a href=3D"mailto:gree=
arb@candelatech.com">greearb@candelatech.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">On 8/2/21 4:16 PM, David Lang w=
rote:<br>
&gt; If you are going to setup a test environment for wifi, you need to inc=
lude the ability to make a fe cases that only happen with RF, not with wire=
d networks and <br>
&gt; are commonly overlooked<br>
&gt; <br>
&gt; 1. station A can hear station B and C but they cannot hear each other<=
br>
&gt; 2. station A can hear station B but station B cannot hear station A 3.=
 station A can hear that station B is transmitting, but not with a strong e=
nough signal to <br>
&gt; decode the signal (yes in theory you can work around interference, but=
 in practice interference is still a real thing)<br>
&gt; <br>
&gt; David Lang<br>
&gt; <br>
<br>
To add to this, I think you need lots of different station devices, differe=
nt capabilities (/n, /ac, /ax, etc)<br>
different numbers of spatial streams, and different distances from the AP.=
=C2=A0 From download queueing perspective, changing<br>
the capabilities may be sufficient while keeping all stations at same dista=
nce.=C2=A0 This assumes you are not<br>
actually testing the wifi rate-ctrl alg. itself, so different throughput le=
vels for different stations would be enough.<br>
<br>
So, a good station emulator setup (and/or pile of real stations) and a few =
RF chambers and<br>
programmable attenuators and you can test that setup...<br>
<br>
=C2=A0From upload perspective, I guess same setup would do the job.=C2=A0 Q=
ueuing/fairness might depend a bit more on the<br>
station devices, emulated or otherwise, but I guess a clever AP could enfor=
ce fairness in upstream direction<br>
too by implementing per-sta queues.<br>
<br>
Thanks,<br>
Ben<br>
<br>
-- <br>
Ben Greear &lt;<a href=3D"mailto:greearb@candelatech.com" target=3D"_blank"=
>greearb@candelatech.com</a>&gt;<br>
Candela Technologies Inc=C2=A0 <a href=3D"http://www.candelatech.com" rel=
=3D"noreferrer" target=3D"_blank">http://www.candelatech.com</a><br>
</blockquote></div>

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
--000000000000167de105c89c6519--

--0000000000001b96c405c89c65f6
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
DrPV5EPUikwiGMDmkX8o6roGiUwyqAp8dMZKJZ/vS/aWEELV+gm21Btr7eqdAWyqm09McVpkM4th
v/FOYcj8DeJr8MXmHW53gN2fv0BzQjqAdrdCBPNRAgMBAAGjggHZMIIB1TAOBgNVHQ8BAf8EBAMC
BaAwgaMGCCsGAQUFBwEBBIGWMIGTME4GCCsGAQUFBzAChkJodHRwOi8vc2VjdXJlLmdsb2JhbHNp
Z24uY29tL2NhY2VydC9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcnQwQQYIKwYBBQUHMAGG
NWh0dHA6Ly9vY3NwLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwME0G
A1UdIARGMEQwQgYKKwYBBAGgMgEoCjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxz
aWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMEkGA1UdHwRCMEAwPqA8oDqGOGh0dHA6Ly9j
cmwuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3JsMCMGA1UdEQQc
MBqBGGJvYi5tY21haG9uQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSME
GDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUpyXYr5rh8cZzkns+zXmMG1YkBk4w
DQYJKoZIhvcNAQELBQADggEBACfauRPak93nzbpn8UXqRZqg6iUZch/UfGj9flerMl4TlK5jWulz
Y+rRg+iWkjiLk3O+kKu6GI8TLXB2rsoTnrHYij96Uad5/Ut3Q5F4S0ILgOWVU38l0VZIGGG0CzG1
eLUgN2zjLg++xJuzqijuKQCJb/3+il2MTJ8dcDaXuYcjg7Vt6+EtCBS1SGMVhOTH4Fp50yGWj8ZA
bPF1uuJM+dGLJLheUizCr5J/OBEdENg+DSmrqoZ+kZd76iRaF2CkhboR2394Ft8lFlKQiU0q8lnR
9/kdZ0F0iCcUfhaLaGYWujW7N0LZ+rQuTfuPGLx9zZNeNMWSZi/Pc8vdCO7EnlIxggJtMIICaQIB
ATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhH
bG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwYS+5PXokx35blu9EwDQYJ
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIFXnQz58Ju1H/22nXs+54DalBIzDeW0/QQDF
Xt9OQ2NAMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDgwMzAw
MDIwMFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQBj+iRXfXKaUtjeNhZcsUcOn0vfbIf+FeujYnK3EHtf2/NKkdWJVlvf
zn36as8s/P9qLaiK38NjxkANFmXyFOZH8rqh+L0xvZ8UPfdazN6Zk7eUaSkThept2EGIdHzKCROT
H7LDI9G+jYNGm/WsO7YmsJx6MWGFHvbzXGMjtmdRZYIhfMKaUmaRakSxWXng0pspAaLNptFQaESr
ylbHUzIJ0rlS1i6gqi+5SEDagqdCPg6EGsKhFetBNSlYzx9HqOUDsmWIO9Tfy1K44GON4Iw13SIa
2bnQQJ6IHTuAJF3cjHWSPJXDE2uFIuCTdQ/L2MHcZSMaASdqKB6B57k9NtIG
--0000000000001b96c405c89c65f6--

--===============6471671573590214871==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6471671573590214871==--

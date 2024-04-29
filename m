Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E54DF8B65EC
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:54:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8A5613CB54;
	Mon, 29 Apr 2024 18:54:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714431240;
	bh=2vGtPaNjgCxPMCrOOj2s/uqzj1R8qEKzPebGECOgtXo=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=mfIMEBB4B804cz5L3YrEHazpfZ1MVOYCP2uenKKwha3HbzsLCdjkLz4icnRwsiUyE
	 ep5fCqKqDXqtSqPMe9AxmvP1WK7L5wg3wyOycmkTdzM61ITIgoHl5W/m0Y2b6N9G4m
	 QFc9VtFfZ48uw321Gx3P9a1saeDxhnbEW51KWsZ96K2B0G2EdzozvCpGKpYmIfGF2i
	 9K9M8q9K61sfZ/QuZtdGVr6M9mYjGCBWT+y5Az7dAu/OC1WtPobC6lS0rz0PvzPujU
	 xAPklh1cN7ynADC3B1yQ4XG5eiY40s/Fj44vxjVJ/Nk0Rn7YJFXE3a1GslkHg5sEUZ
	 4KGV3p44sfObA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com
 [IPv6:2607:f8b0:4864:20::229])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9F7C83CB44
 for <cake@lists.bufferbloat.net>; Mon, 29 Apr 2024 18:53:58 -0400 (EDT)
Received: by mail-oi1-x229.google.com with SMTP id
 5614622812f47-3c5ed7fdbb1so2934322b6e.0
 for <cake@lists.bufferbloat.net>; Mon, 29 Apr 2024 15:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=broadcom.com; s=google; t=1714431238; x=1715036038;
 darn=lists.bufferbloat.net; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=VgVmSmAV+tPfcw16Z+RHwHNqwq77iNtyKkkoPqHEcIo=;
 b=RqvaS3OZTcnLHq+eYTT9l4Juh4AmzAYhNmWAqmNGm0K+sD7jz4UNrUAX5BUsSYzJy7
 lnrdLcqHm/m832oAAdxPFyjEUpFue5VOaYj8y/mItRGDv2NZIOePnJbMXmv14bBlJKys
 qs5KRDXSRfEE6fNNyt3xbNVvh7Q+Fei5h9nTU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714431238; x=1715036038;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=VgVmSmAV+tPfcw16Z+RHwHNqwq77iNtyKkkoPqHEcIo=;
 b=Ikv3cZgEne5bSSkVe6uSZkb4DeG5nlpYG1pgl/Zgf+4RDaR99V3VOHj0sw2yxtDv0K
 X0G9OUW2jIb8fdiaL/HCKRMXbNY/tS/mMgwmEWvtyajz3zyuF1ybkGUs/zD8MBOUs4tc
 0hol6AsDgpKhKSviI0QNyfQpFTjZ+CmsDU0D1b28QU991bPXyWgbHPG7FLr00KPR8NOb
 WRBDXu27nMuT8FMspzRd8yLQBaejBNnnBW7ZdRftaZPzUAXE9N+45GDQh4Wqxrks0+VA
 MUqfZ1enU/OocrabBSRpWGd2FeS0/jAof/Sx8Se1KzwKvxoEC46cpqt38hMu3AN1kuud
 kJbw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXEp+vgl0YYikfFIxfQo+18zH5RdwkRlKF7UgXwsFBCOKoYLTCjyKWVcJ2eU1ILwTzn8ywM7uuyHAYPm3HH4YFNrYtovd+rDRAnMg==
X-Gm-Message-State: AOJu0YxVAsUMcYOh8/Sapv2kMLadcb5Q5khV6JL/HOIvoJv6OsnexFvw
 BPe+6MxgRbPMurIUagsa14WKBobk9PWxo8T8+dzEQ239DBX1JHFmWdVqF2QxNTtx/zGsutm7fl0
 GPV1xGNEWWs7AuDlifBfGs+HB7kKy2RXKpDaZwt4Rg7hmQupROFrUV8dhrlIvZ6qEp2Mcce7JZG
 wDcKJKbMYrOuJxTPKNhMP5w+Y=
X-Google-Smtp-Source: AGHT+IEd2DNU53YGLW+ZMFLGdllwMAvYX7aQDUijjF+hxMNufb3vFicnt3QpIbTV0WG41bl4Te0hnEqEbXbDIwD1/v0=
X-Received: by 2002:a05:6808:10d4:b0:3c7:210a:bffe with SMTP id
 s20-20020a05680810d400b003c7210abffemr461479ois.12.1714431237678; Mon, 29 Apr
 2024 15:53:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw60GY82v2fWUe-dMb2gCguSY+eYs2ing7Xk80trdF8qBg@mail.gmail.com>
In-Reply-To: <CAA93jw60GY82v2fWUe-dMb2gCguSY+eYs2ing7Xk80trdF8qBg@mail.gmail.com>
Date: Mon, 29 Apr 2024 15:53:55 -0700
Message-ID: <CAHb6LvoFLob6i=uRSbevFhxNm9oYmmpZLfdsiUqZ0FGeg47b4Q@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: Re: [Cake] [Make-wifi-fast] waves podcast is out
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
Cc: Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============8964576862281521586=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8964576862281521586==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000f1462d06174420e6"

--000000000000f1462d06174420e6
Content-Type: multipart/alternative; boundary="000000000000ea155506174420a0"

--000000000000ea155506174420a0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Fronthaul networks, preferably fiber, to a 20+ year concentrator (not a
802.3 switch) at the same location of an electrical panel. Get rid of the
SoC and AP which is basically a Sun workstation with NICs and use remote
radio heads (or in switch speak, port ASICs.)  This design will work for
50+ years or the lifespan of most buildings. One and one. Best return on
labor possible. The MTBF shorter lived parts are replaceable like light
bulbs or sprinkler heads.

Spectrum is not limited.  Paul Baran pointed this out in 1994. Probably a
good idea to stop with that property rights theory of limited spectrum.

   - Shorter range rf transceivers connected to fiber could produce a
   significant improvement - - tremendous improvement, really.
   - a mixture of terrestrial links plus shorter range radio links has the
   effect of increasing by orders and orders of magnitude the amount of
   frequency spectrum that can be made available.
   - By authorizing high power to support a few users to reach slightly
   longer distances we deprive ourselves of the opportunity to serve the ma=
ny.
   - Communications systems can be built with 10dB ratio
   - Digital transmission when properly done allows a small signal to noise
   ratio to be used successfully to retrieve an error free signal. And, nev=
er
   forget, any transmission capacity not used is wasted forever, like water
   over the dam. Not using such techniques represent lost opportunity.


The solution isn't to shrink bw and increase range. Spacetime includes
space and freespace pathloss works in favor with digital communications.
Let'st stop blasting RF energy all over the place. We do this for water in
irrigation systems already.


Also, there are two optimums. The transport layer optimum and the link
layer optimum. That's the core issue and the reason it's been "hard to fix"

My $0.02,
Bob


On Mon, Apr 29, 2024 at 2:27=E2=80=AFPM Dave Taht via Make-wifi-fast <
make-wifi-fast@lists.bufferbloat.net> wrote:

> I did my usual bufferbloat rap on this pretty excellent podcast. What
> I am most proud of however,
> was showing off my mom=C2=B4s art in this segment here, including her mos=
t
> powerful piece "Sad Sam".
>
> https://www.youtube.com/watch?v=3DBVFWSyMp3xg&t=3D1098s
>
> --
> https://www.youtube.com/watch?v=3DN0Tmvv5jJKs Epik Mellon Podcast
> Dave T=C3=A4ht CSO, LibreQos
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

--000000000000ea155506174420a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Fronthaul=C2=A0networks, preferably=C2=A0fiber, to a 20+ y=
ear concentrator (not a 802.3 switch) at the same location of an electrical=
 panel. Get rid of the SoC and AP which is basically a Sun workstation with=
 NICs and use remote radio heads (or in switch speak, port ASICs.)=C2=A0 Th=
is design will work for 50+ years or the=C2=A0lifespan of most buildings. O=
ne and one. Best return on labor possible. The MTBF shorter lived parts are=
 replaceable like light bulbs or sprinkler heads.<br><br>Spectrum is not li=
mited.=C2=A0 Paul Baran pointed this out in 1994. Probably a good idea to s=
top with that property=C2=A0rights theory of limited spectrum.<br><ul><li>S=
horter range rf transceivers connected to fiber could produce a significant=
 improvement - - tremendous improvement, really.</li><li>a mixture of terre=
strial links plus shorter range radio links has the effect of increasing by=
 orders and orders of magnitude the amount of frequency spectrum that can b=
e made available.</li><li>By authorizing high power to support a few users =
to reach slightly longer distances we deprive ourselves of the opportunity =
to serve the many.</li><li>Communications systems can be built with 10dB ra=
tio</li><li>Digital transmission when properly done allows a small signal t=
o noise ratio to be used successfully to retrieve an error free signal. And=
, never forget, any transmission capacity not used is wasted forever, like =
water over the dam. Not using such techniques represent lost opportunity.</=
li></ul><span id=3D"gmail-docs-internal-guid-fec8688d-7fff-0eca-7750-2dcf83=
094be9"><img width=3D"625px;" height=3D"436px;" src=3D"https://lh7-us.googl=
eusercontent.com/vDSJaadtCJ5DU79Jmr1zXRMp7JCziKVt_IYvqMUGsmWCQjCp1m-Xjud6uf=
yKbl6di0DNQsWka1cB85tsCLKdFswN1M88t_Db1lmH4f2Czr7ZeMvQmJWGoMq45z2gQKyyCtIte=
bJBF0qHv1f5Q8nsliZ66Q=3Ds2048"></span><div><br></div><div>The solution isn&=
#39;t to shrink bw and increase range. Spacetime includes space and freespa=
ce pathloss works in favor with digital communications. Let&#39;st=C2=A0sto=
p blasting RF energy all over the place. We do this for water in irrigation=
=C2=A0systems already.=C2=A0<br><ul></ul><div><span>Also, there are two opt=
imums. The transport layer optimum and the link layer optimum. That&#39;s t=
he core issue and the reason it&#39;s been &quot;hard to fix&quot;</span></=
div><div><span><br></span></div><div>My $0.02,<br></div><div><span>Bob<br><=
br></span></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Mon, Apr 29, 2024 at 2:27=E2=80=AFPM Dave Taht via=
 Make-wifi-fast &lt;<a href=3D"mailto:make-wifi-fast@lists.bufferbloat.net"=
>make-wifi-fast@lists.bufferbloat.net</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">I did my usual bufferbloat rap on this=
 pretty excellent podcast. What<br>
I am most proud of however,<br>
was showing off my mom=C2=B4s art in this segment here, including her most<=
br>
powerful piece &quot;Sad Sam&quot;.<br>
<br>
<a href=3D"https://www.youtube.com/watch?v=3DBVFWSyMp3xg&amp;t=3D1098s" rel=
=3D"noreferrer" target=3D"_blank">https://www.youtube.com/watch?v=3DBVFWSyM=
p3xg&amp;t=3D1098s</a><br>
<br>
-- <br>
<a href=3D"https://www.youtube.com/watch?v=3DN0Tmvv5jJKs" rel=3D"noreferrer=
" target=3D"_blank">https://www.youtube.com/watch?v=3DN0Tmvv5jJKs</a> Epik =
Mellon Podcast<br>
Dave T=C3=A4ht CSO, LibreQos<br>
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
--000000000000ea155506174420a0--

--000000000000f1462d06174420e6
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIQagYJKoZIhvcNAQcCoIIQWzCCEFcCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
gg3BMIIFDTCCA/WgAwIBAgIQeEqpED+lv77edQixNJMdADANBgkqhkiG9w0BAQsFADBMMSAwHgYD
VQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UE
AxMKR2xvYmFsU2lnbjAeFw0yMDA5MTYwMDAwMDBaFw0yODA5MTYwMDAwMDBaMFsxCzAJBgNVBAYT
AkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBS
MyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
vbCmXCcsbZ/a0fRIQMBxp4gJnnyeneFYpEtNydrZZ+GeKSMdHiDgXD1UnRSIudKo+moQ6YlCOu4t
rVWO/EiXfYnK7zeop26ry1RpKtogB7/O115zultAz64ydQYLe+a1e/czkALg3sgTcOOcFZTXk38e
aqsXsipoX1vsNurqPtnC27TWsA7pk4uKXscFjkeUE8JZu9BDKaswZygxBOPBQBwrA5+20Wxlk6k1
e6EKaaNaNZUy30q3ArEf30ZDpXyfCtiXnupjSK8WU2cK4qsEtj09JS4+mhi0CTCrCnXAzum3tgcH
cHRg0prcSzzEUDQWoFxyuqwiwhHu3sPQNmFOMwIDAQABo4IB2jCCAdYwDgYDVR0PAQH/BAQDAgGG
MGAGA1UdJQRZMFcGCCsGAQUFBwMCBggrBgEFBQcDBAYKKwYBBAGCNxQCAgYKKwYBBAGCNwoDBAYJ
KwYBBAGCNxUGBgorBgEEAYI3CgMMBggrBgEFBQcDBwYIKwYBBQUHAxEwEgYDVR0TAQH/BAgwBgEB
/wIBADAdBgNVHQ4EFgQUljPR5lgXWzR1ioFWZNW+SN6hj88wHwYDVR0jBBgwFoAUj/BLf6guRSSu
TVD6Y5qL3uLdG7wwegYIKwYBBQUHAQEEbjBsMC0GCCsGAQUFBzABhiFodHRwOi8vb2NzcC5nbG9i
YWxzaWduLmNvbS9yb290cjMwOwYIKwYBBQUHMAKGL2h0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5j
b20vY2FjZXJ0L3Jvb3QtcjMuY3J0MDYGA1UdHwQvMC0wK6ApoCeGJWh0dHA6Ly9jcmwuZ2xvYmFs
c2lnbi5jb20vcm9vdC1yMy5jcmwwWgYDVR0gBFMwUTALBgkrBgEEAaAyASgwQgYKKwYBBAGgMgEo
CjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzAN
BgkqhkiG9w0BAQsFAAOCAQEAdAXk/XCnDeAOd9nNEUvWPxblOQ/5o/q6OIeTYvoEvUUi2qHUOtbf
jBGdTptFsXXe4RgjVF9b6DuizgYfy+cILmvi5hfk3Iq8MAZsgtW+A/otQsJvK2wRatLE61RbzkX8
9/OXEZ1zT7t/q2RiJqzpvV8NChxIj+P7WTtepPm9AIj0Keue+gS2qvzAZAY34ZZeRHgA7g5O4TPJ
/oTd+4rgiU++wLDlcZYd/slFkaT3xg4qWDepEMjT4T1qFOQIL+ijUArYS4owpPg9NISTKa1qqKWJ
jFoyms0d0GwOniIIbBvhI2MJ7BSY9MYtWVT5jJO3tsVHwj4cp92CSFuGwunFMzCCA18wggJHoAMC
AQICCwQAAAAAASFYUwiiMA0GCSqGSIb3DQEBCwUAMEwxIDAeBgNVBAsTF0dsb2JhbFNpZ24gUm9v
dCBDQSAtIFIzMRMwEQYDVQQKEwpHbG9iYWxTaWduMRMwEQYDVQQDEwpHbG9iYWxTaWduMB4XDTA5
MDMxODEwMDAwMFoXDTI5MDMxODEwMDAwMFowTDEgMB4GA1UECxMXR2xvYmFsU2lnbiBSb290IENB
IC0gUjMxEzARBgNVBAoTCkdsb2JhbFNpZ24xEzARBgNVBAMTCkdsb2JhbFNpZ24wggEiMA0GCSqG
SIb3DQEBAQUAA4IBDwAwggEKAoIBAQDMJXaQeQZ4Ihb1wIO2hMoonv0FdhHFrYhy/EYCQ8eyip0E
XyTLLkvhYIJG4VKrDIFHcGzdZNHr9SyjD4I9DCuul9e2FIYQebs7E4B3jAjhSdJqYi8fXvqWaN+J
J5U4nwbXPsnLJlkNc96wyOkmDoMVxu9bi9IEYMpJpij2aTv2y8gokeWdimFXN6x0FNx04Druci8u
nPvQu7/1PQDhBjPogiuuU6Y6FnOM3UEOIDrAtKeh6bJPkC4yYOlXy7kEkmho5TgmYHWyn3f/kRTv
riBJ/K1AFUjRAjFhGV64l++td7dkmnq/X8ET75ti+w1s4FRpFqkD2m7pg5NxdsZphYIXAgMBAAGj
QjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBSP8Et/qC5FJK5N
UPpjmove4t0bvDANBgkqhkiG9w0BAQsFAAOCAQEAS0DbwFCq/sgM7/eWVEVJu5YACUGssxOGhigH
M8pr5nS5ugAtrqQK0/Xx8Q+Kv3NnSoPHRHt44K9ubG8DKY4zOUXDjuS5V2yq/BKW7FPGLeQkbLmU
Y/vcU2hnVj6DuM81IcPJaP7O2sJTqsyQiunwXUaMld16WCgaLx3ezQA3QY/tRG3XUyiXfvNnBB4V
14qWtNPeTCekTBtzc3b0F5nCH3oO4y0IrQocLP88q1UOD5F+NuvDV0m+4S4tfGCLw0FREyOdzvcy
a5QBqJnnLDMfOjsl0oZAzjsshnjJYS8Uuu7bVW/fhO4FCU29KNhyztNiUGUe65KXgzHZs7XKR1g/
XzCCBUkwggQxoAMCAQICDDGs4Qlq5OZK9mcDzTANBgkqhkiG9w0BAQsFADBbMQswCQYDVQQGEwJC
RTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBHQ0MgUjMg
UGVyc29uYWxTaWduIDIgQ0EgMjAyMDAeFw0yMjA5MTAxMzMzNDFaFw0yNTA5MTAxMzMzNDFaMIGM
MQswCQYDVQQGEwJJTjESMBAGA1UECBMJS2FybmF0YWthMRIwEAYDVQQHEwlCYW5nYWxvcmUxFjAU
BgNVBAoTDUJyb2FkY29tIEluYy4xFDASBgNVBAMTC0JvYiBNY01haG9uMScwJQYJKoZIhvcNAQkB
Fhhib2IubWNtYWhvbkBicm9hZGNvbS5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
AQDBfX3nsBFRdO26im8lhOadVadRmV/YWK+U9OoGlTE+2MDsjJwO5p/Q6iaTUropqMRH1E+EIuhe
/OU6a3/btrqzARE77RaVSdz5swXt7M4ciN+z44nIEx36UQIlFLsBFa3is/J/QLFhTUFFf0wLJsUO
wyja+KvygH/E5TyfeXf5T2Y2wjGZx8jQXZMDmNpfANlEBYDfzCNYcAIQNox8FuPpEpuxWvv7jvxV
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEILdOAnpgaO2IK6P/j7cOUM/dfZQ2iQkexscT
h5xYz2g9MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0MDQyOTIy
NTM1OFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQApLBbc38LcWYNkbTU4gGpFIr1yKhS2D2Y2kDCJDkczk3/0fjS+LUub
rvYz3J+6OQ2/ECZIMUmn68WiMNlJr4vy+jFaiUp/4oCo5JYyRerEJ+xUJvttVa5GRWUCkORz9a3n
lyccsarIxndf8c+3Z2LKW0QOTVQAvqZQ+H0RCgT1sXdK/gL7wlUh+BQ6UXoF6rEBeDKATdSgHM9C
iGBDx/QlPWDuxYIOY4qLKm91Z9J8KCwTscIw1qnC7qMvskxON7RGVKJGBgSwUepWco0zOPW0V8tc
jxG1zictnO8p81jqyYMs4jpzMrkLkSC7IRQ0BIcDaisbHfvaU4enNapJZHTd
--000000000000f1462d06174420e6--

--===============8964576862281521586==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8964576862281521586==--

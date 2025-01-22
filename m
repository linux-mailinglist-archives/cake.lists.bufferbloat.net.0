Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB7FA19934
	for <lists+cake@lfdr.de>; Wed, 22 Jan 2025 20:36:14 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B563A3CB39;
	Wed, 22 Jan 2025 14:36:12 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1737574572;
	bh=UI7ZBrtqY6Tf7yF0oewNHR9kGw2cnmwVv2kSGZNnazI=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=fjWSUTLBO68KaB2HiNzdfeA9MKtQ5uFQxTtjHOSfQwla3rXaaGVh798sCRW/rFC7o
	 7nepuxI5Z1SSXIwqhK0KAS3l6wjkfeGfyJEV0pp/HqPJ9VgGNq9li0gF+SeUGsIwBM
	 4vepDu7U4sd/0km5cYbK5mFvofSt0c0e6pnmOzQygtqAr2ImSZ8YTpxDXP75at7zxT
	 So9aKlDo0YY2IiUNJ1XI4UNJhK4XmhI38LaetH8fSgSCEyJdstddACpGeuNmxq7GpO
	 awmsy9xNhnJ2UHoQNluTOwuVqYFPA1XLtaQF40O3ijI1nI0PUYzXWkAMOyPb64EZ4U
	 0EgMe6+baw6pA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com
 [IPv6:2607:f8b0:4864:20::c31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1DB8D3B29E
 for <cake@lists.bufferbloat.net>; Wed, 22 Jan 2025 14:36:11 -0500 (EST)
Received: by mail-oo1-xc31.google.com with SMTP id
 006d021491bc7-5f88b61399dso599663eaf.1
 for <cake@lists.bufferbloat.net>; Wed, 22 Jan 2025 11:36:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1737574570; x=1738179370; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=RHpcqP108J3/yK2S1NwITnMiifWzRM95cCbQbDNyUcU=;
 b=NUC+LBRsNctotImgf+ed9N5oWs0vTBcUtLaoY6X60t6p5XS4jQ6Hj88LA7BVOT/sov
 jS2jlYaGTvtI/y6eftAb3iIVAkscA9S/qaDmB4b8Z0eZmMGJ330sq+2RP9tBcoFTg1r7
 4Qmfha889JSpMgpodzAuD1oPOZlV5c69aJpnLjDEx0mYdNpPAB79/BtFjNPzuVOt4o3b
 yj29pVXOisL+/6DympWWaXxnQvaXkjhg+9921HBTrcZDxA6hvQLtHrSwI9s2t0nGMkYP
 uO9cMzylR874nSfCZsl6RXP6AHXx1UP3OVUT7AQUK6V+FFqd2iaqNzzrlMGk83EhD+X+
 ZuNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737574570; x=1738179370;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=RHpcqP108J3/yK2S1NwITnMiifWzRM95cCbQbDNyUcU=;
 b=KDnmCgGyXydTnqyXicmDqcA5F5nmVxdywLknRdulCdUOZVZvvSIhn4vjcFWTWp1JOg
 rW1vZzlYFswfh/r49PgowmCY+9xNOFWAYeQWao6SsEeJR4lWJ5LAWCRRxbdBnSdirVpG
 a4kDtDmiBNPnpfYamhkt2DDM2aHlhy93ovEw80qgSRwD/d+Auzp6OlyQm0vwTJXynB2l
 nMgftvcQ6DsU1LaEeKZDBZotcUNvCrHPzxeDvm9U+Wg9yRtmDn2sK6/0xrrku7BP1tgU
 3vd5BSh1171Mcj3XFNU5OIBYzy9oIUCEiZMdTlfkE5RsYjJg/T3PbmldSEU2MpTSyZwf
 8Ozw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXXDiPQrOs7TvCbexzFJuXir2tyk77hiUnmZg8V/YVxYEYywgT41HwhAYypLz4lHOk2i+/K@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzaX4RZzMFIKAOjQJoSKAglwQcGeqGdQihHZGd8E8QaHYXo+6lM
 wHn5hzldsGcYckrOyG67tIj5DAcdbVQwQnBdvU+fDp/g23//fJu/NFhOKWTQr6TE7LoVKGWApxY
 vWdZUGLSFHxwmRNOaq8aDPmex5X0=
X-Gm-Gg: ASbGncttQGseHB9ZXnwMgxjhGWLl/vpWVDFgdtxPVUFd+8luL9x6gdnbnTzhx0Gga2P
 6W+3N0PMxXNks7wK+RMbxD2IFp8zJ1eWd5EOV8S0SGxwVy91lupLOCjSzwLTx0b1/vSPwC2Vdvy
 rMXnhovVYc
X-Google-Smtp-Source: AGHT+IG00xnYpF37wxN+Qay7iXvTRHtkDwgPuWxobdWhD/REWZoEMwtLjgiJojh3SYt+8eW+PxIhHoeG8HrRDsxY0pU=
X-Received: by 2002:a05:6870:b290:b0:29d:f65b:85fa with SMTP id
 586e51a60fabf-2b271fa7f10mr393432fac.10.1737574570369; Wed, 22 Jan 2025
 11:36:10 -0800 (PST)
MIME-Version: 1.0
References: <20250110155531.300303-1-toke@redhat.com>
 <2FE6B2E2-9A34-47C1-B203-F0C424F00704@gmx.de>
 <CAA93jw54GOfYP56XTh-jjjfAbybNDeYUgUENNA2+aSQbXpS91A@mail.gmail.com>
 <FAD46B40-2142-4254-BA44-C9AD9EEFB924@gmx.de>
 <CAA93jw4mj2RdtqdDT3ug5j8EZSsYujC1V_SjQEcjmCVCUZU+jw@mail.gmail.com>
 <898E9FB0-D92E-4421-8CCD-1B9F4A3D9D5D@gmail.com>
 <CAA93jw7XUfR7Ww40nh5EZ8U8pMUezhSY6PFLoaGj+pGnzeYZbg@mail.gmail.com>
 <F4B37725-18F6-45DB-8BD1-02849E146108@gmx.de>
In-Reply-To: <F4B37725-18F6-45DB-8BD1-02849E146108@gmx.de>
Date: Wed, 22 Jan 2025 11:35:57 -0800
X-Gm-Features: AWEUYZlK6CxXWck2HSLL3BfcpN1YUJblWvxmCTmCTs-gJRC9iNcDZGqf6dhN9RM
Message-ID: <CAA93jw5oyChfNmX1bekA_Vwwv8YMqTtCH8ixufrdLh88PcZ5Tw@mail.gmail.com>
To: Sebastian Moeller <moeller0@gmx.de>
Content-Type: multipart/mixed; boundary="00000000000009c253062c509b00"
Subject: Re: [Cake] [PATCH net-next] sched: sch_cake: Align QoS treatment to
 Windows and Zoom
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
Cc: cake@lists.bufferbloat.net,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--00000000000009c253062c509b00
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This patch just moves CS4 and CS5 to the video tin. I hope that=C2=B4s ok?

On Fri, Jan 10, 2025 at 12:34=E2=80=AFPM Sebastian Moeller <moeller0@gmx.de=
> wrote:
>
> Hi Dave,
>
> > On 10. Jan 2025, at 20:43, Dave Taht <dave.taht@gmail.com> wrote:
> >
> > ok, I concede on NQB. Do we at least have agreement that CS5 belongs
> > in the VI queue, not the VO queue, on diffserv4?
>
> As I said, I have less issues with bumping things down than up (but I am =
also just voicing my opinion here, thanks for discussing, I am fine ending =
up in the "rough" here).
>
> About Zoom (h++ps://support.zoom.com/hc/en/article?id=3Dzm_kb&sysparm_art=
icle=3DKB0066617):
> "The default Zoom DSCP marking values are 56 for audio, 40 for video, and=
 40 for screen sharing. You can update audio and video values to allow a ne=
twork administrator to adjust the priority for Zoom traffic on their networ=
k."
>
> That 56 is CS7 for audio which I am pretty sure will not pass most of the=
 internet (I believe the IETF recommends to drop CS7 on ingress from other =
ASs)... either they wanted to write 46 (EF) or they are just as confused as=
 the WiFi WMM folks...
>
>
>
>
>
> >
> > On Fri, Jan 10, 2025 at 9:43=E2=80=AFAM Jonathan Morton <chromatix99@gm=
ail.com> wrote:
> >>
> >>> On 10 Jan, 2025, at 7:07 pm, Dave Taht via Cake <cake@lists.bufferblo=
at.net> wrote:
> >>>
> >>> I do not think NQB belongs in Voice (which shares priority with
> >>> netcontrol, etc). I also do not think it belongs in best effort as th=
e
> >>> intent is to get a quick response to a short flow. yes, FQ solves a
> >>> lot of problems, but
> >>
> >> As far as I'm concerned, FQ implements everything that NQB wants.  In =
a system implementing FQ, treating NQB traffic as best-effort is the Right =
Thing.
> >>
> >> And I second the notion that slavishly copying wthe broken default beh=
aviour of WiFi routers is the Wrong Thing.
> >>
> >> - Jonathan Morton
> >>
> >
> >
> > --
> > Dave T=C3=A4ht CSO, LibreQos
>


--=20
Dave T=C3=A4ht CSO, LibreQos

--00000000000009c253062c509b00
Content-Type: application/octet-stream; 
	name="0001-sch_cake-Align-QoS-treatment-to-Windows-and-Zoom.patch"
Content-Disposition: attachment; 
	filename="0001-sch_cake-Align-QoS-treatment-to-Windows-and-Zoom.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_m68b006q0>
X-Attachment-Id: f_m68b006q0

RnJvbSAyMzA1MWZkZTMyNzM4NGEzNzAxYTU4MDE0ZjYzZGE5ODAzNWQ1MzFhIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+CkRhdGU6
IFRodSwgOSBKYW4gMjAyNSAxODoyMzowMSArMDAwMApTdWJqZWN0OiBbUEFUQ0hdIHNjaF9jYWtl
OiBBbGlnbiBRb1MgdHJlYXRtZW50IHRvIFdpbmRvd3MgYW5kIFpvb20KCkNha2UncyBkaWZmc2Vy
djQgbW9kZSBhdHRlbXB0ZWQgdG8gZm9sbG93IHRoZSBJRVRGIHdlYnJ0YwpRb1MgbWFya2luZyBz
dGFuZGFyZHMgaW4gUkZDODgzNy4gCgpJdCB0dXJucyBXaW5kb3dzIFFvUyBjYW4gb25seSB1c2Ug
Q1MwLCBDUzEsIENTNSwgYW5kIENTNy4KClpvb20gZGVmYXVsdHMgdG8gdXNpbmcgQ1M1IGZvciB2
aWRlbyBhaGQgc2NyZWVuIHNoYXJpbmcgdHJhZmZpYy4KCkJ1bXAgZG93biB0byB0aGUgdmlkZW8g
dGluICgyKSBDUzQsIGFuZCBDUzUgZm9yCm1vcmUgYmFuZHdpZHRoIGFuZCBsZXNzIHByaW9yaXR5
LgoKVGhpcyBhbHNvIGJldHRlciBhbGlnbnMgd2l0aCBob3cgV2lGaSBwcmVzZW50bHkKdHJlYXRz
IENTNCBhbmQgQ1M1LgoKLS0tCiBuZXQvc2NoZWQvc2NoX2Nha2UuYyB8IDQgKystLQogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9u
ZXQvc2NoZWQvc2NoX2Nha2UuYyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jCmluZGV4IGRlYjA5MjVm
NTM2ZC4uNTJjNmZhZjJjMjczIDEwMDY0NAotLS0gYS9uZXQvc2NoZWQvc2NoX2Nha2UuYworKysg
Yi9uZXQvc2NoZWQvc2NoX2Nha2UuYwpAQCAtMzI4LDggKzMyOCw4IEBAIHN0YXRpYyBjb25zdCB1
OCBkaWZmc2VydjRbXSA9IHsKIAkxLCAwLCAwLCAwLCAwLCAwLCAwLCAwLAogCTIsIDAsIDIsIDAs
IDIsIDAsIDIsIDAsCiAJMiwgMCwgMiwgMCwgMiwgMCwgMiwgMCwKLQkzLCAwLCAyLCAwLCAyLCAw
LCAyLCAwLAotCTMsIDAsIDAsIDAsIDMsIDAsIDMsIDAsCisJMiwgMCwgMiwgMCwgMiwgMCwgMiwg
MCwKKwkyLCAwLCAwLCAwLCAzLCAwLCAzLCAwLAogCTMsIDAsIDAsIDAsIDAsIDAsIDAsIDAsCiAJ
MywgMCwgMCwgMCwgMCwgMCwgMCwgMCwKIH07Ci0tIAoyLjQzLjAKCg==
--00000000000009c253062c509b00
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--00000000000009c253062c509b00--

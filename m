Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 465876A723E
	for <lists+cake@lfdr.de>; Wed,  1 Mar 2023 18:44:55 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F2AAE3CB53;
	Wed,  1 Mar 2023 12:44:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1677692692;
	bh=tVdSLzZAyL4g9/747dwUs/GI3gr5ECJqzIy6tKHxci8=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=K7TvbhV7QLjR5yANzYlwOc+oo4y2GfW4aXLK28Jt8DoSn2ZHE/2DDJ/tkeTYn7w5L
	 nY94t9kAs58WY18441+gTuTXC+/xrRO0rXATb4bq1osoH1o3PGC6olm+H/aANayoMS
	 PMMkwd0SimlrSlgTnK7cbLxKf+TL+pjpjPti5j3XmO90Gkx0ppY+pTJnXCUr1WSlbh
	 J1N6nuVn3jYM2g2u0DHrcNUI0xVaZcpg2uDfET709tMelT3fVEr+gxsZZv4/G/LyQd
	 2bxybbXcy4eyA5rjdUFr+FJq5tvvr8hPO9xgfmwrFPApF5EfthN6Nmg1jC2Hz7gtia
	 q3o+U+fBWC1Vw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1C96A3B29D
 for <cake@lists.bufferbloat.net>; Wed,  1 Mar 2023 12:44:51 -0500 (EST)
Received: by mail-ed1-x531.google.com with SMTP id g3so1669663eda.1
 for <cake@lists.bufferbloat.net>; Wed, 01 Mar 2023 09:44:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1677692690;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=l+CxB/DChKCgujQ0N7Y0ZOhJWhquqbGVdvsoj8rHO38=;
 b=l/7xXtS1CEHiM96lYvTgMDZcYwlUMsHvcfugkv5UYa4DfKVPQgI6f1mJ6WzHw/10iS
 c7zj4+LHDfL35MIOJVSueY2m8ipld5V9tuDbWLx+zwr5byFMmiqCbr/f4n38tGXqoBMd
 a9lI2iv0ggsmqnOeFat8xMqsmaRNs+2A3HsOLvXbQzSFd7SJ8LARzxojsEkbD3IUd7/G
 48QrXRQtwXF75yWlz5cEFXFK/Os6M8VYofKp95vgi6oyNIwU1MgT8sUCIDUcLaW31N4M
 4XOG6thePyvsiWQSDhHVeTwhFEm3tGnGAJvjEbpFTgnuSVV5x5pXVvL5j0gEsD8cme3A
 OZ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1677692690;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=l+CxB/DChKCgujQ0N7Y0ZOhJWhquqbGVdvsoj8rHO38=;
 b=CkAxAQSlMTCBFC6a0zDZU+6Ga8mNeoq4URrAVU84s775bjkjCF925tZV5Gah/WYpt0
 7R/mJf8ILMfBKckIEYJp6m8oZhWqiLsbJwOF9TVSuXrFU94YEvWIMrmWssp5vqltBU9E
 NKxnYjHE8pywyhWNsiWcDe/Odjb/HN+K1qbI1HkWW1uFBb+bgZDMUsHZgiHfvpWR6q6X
 7NfuVUaG/8rfNimdrcD5ecR2IHhp+PY451fK5bej9qqYltZvRBNQXl3WL++8OB10lJBL
 9fQkDa7GHJOVF2xfWEOcsjPUE5jnRVOlpY3YMsBlfyEAUsUwV2wEzmbhH7z60NffB3To
 Pjdw==
X-Gm-Message-State: AO0yUKVYGjGCdYEJ+nfSYFlX9Du1PaDjdvPRAPPSACODDm6nf3QrHZfd
 nRUdIL2JCU0mGULmWCmfps+bEQRYkvd3YYxgiQ3JM/u9
X-Google-Smtp-Source: AK7set8XN+PWZ9G42kESu2cjI7KChE41V3SgXu5WbBc9ru/MOicWLtwqSkKaI9W031IJ96vQCenMSII3757A9SBMFDg=
X-Received: by 2002:a17:906:5594:b0:879:5db8:8bb2 with SMTP id
 y20-20020a170906559400b008795db88bb2mr3548871ejp.7.1677692689894; Wed, 01 Mar
 2023 09:44:49 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 1 Mar 2023 19:44:39 +0200
Message-ID: <CAD9MmSdZ=UDfSNmXPmfyTsWG1t5jAyG7M8mGD6FieA1AumYOgQ@mail.gmail.com>
To: cake@lists.bufferbloat.net
Subject: [Cake] Cake on lan nic
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
From: Jim Geo via Cake <cake@lists.bufferbloat.net>
Reply-To: Jim Geo <dim.geo@gmail.com>
Content-Type: multipart/mixed; boundary="===============4745540745636256645=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4745540745636256645==
Content-Type: multipart/alternative; boundary="000000000000d2d14705f5da444a"

--000000000000d2d14705f5da444a
Content-Type: text/plain; charset="UTF-8"

Hello,

If we have a nic on a pc that has access to both LAN (1 Gbit)  and to ADSL
(10 mbit) through it, what speed value should we set to cake?
The vast majority of packets would be from the internet, not LAN but we
want to optimize both sides if possible.
Should I switch to fq_codel/fq _pie instead?

Router uses cake for ADSL packets, so no problem there hopefully.

In a follow up question what TCP congestion algorithm is recommended with
cake ?
Cubic, bbr or bbrv2?

Thanks!

--000000000000d2d14705f5da444a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto"><br><div dir=3D"auto">If we have =
a nic on a pc that has access to both LAN (1 Gbit)=C2=A0 and to ADSL (10 mb=
it) through it, what speed value should we set to cake?</div><div dir=3D"au=
to">The vast majority of packets would be from the internet, not LAN but we=
 want to optimize both sides if possible.</div><div dir=3D"auto">Should I s=
witch to fq_codel/fq _pie instead?=C2=A0</div><div dir=3D"auto"><br></div><=
div dir=3D"auto">Router uses cake for ADSL packets, so no problem there hop=
efully.</div><div dir=3D"auto"><br></div><div dir=3D"auto">In a follow up q=
uestion what TCP congestion algorithm is recommended with cake ?</div><div =
dir=3D"auto">Cubic, bbr or bbrv2?</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Thanks!</div></div></div>

--000000000000d2d14705f5da444a--

--===============4745540745636256645==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4745540745636256645==--

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D697907B62
	for <lists+cake@lfdr.de>; Thu, 13 Jun 2024 20:31:59 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D971B3CB43;
	Thu, 13 Jun 2024 14:31:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1718303517;
	bh=b2ix2kPCmEx710Tje5DbI6xr9Qqt9N+QKo5ZdYZa2+M=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=V84dgpOyUuhSdunPrSx2LJ15w6WPJ0ad3KT9LfXnbRMq5kaKduRjBoFKw8C3PN/0x
	 OleF+l2YmHBCxqgGILtfp17+wVzcQMUxgUTRXNCpqehAx99eJB18UpZDOYXdPxsneT
	 LvV8Xl+3S/L4Conr6nvj1qen/CLj41rXHHy8y3JHMdVGtm5cl+nNJ+/l9hJUnChQar
	 XRMaDFPsh2V9sBuCLz9qb+ceacg/v/3wJutgipmWcoymi0bBR3YChXjealfv0TBD2O
	 r78vzyDsQhd1kR7aCcNynoFjbkyV0nMPff2QYSJQIBxzKnHF+cmDnng5kk1eafE8B6
	 UU238Um4s9Gmw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0E37E3B29D;
 Thu, 13 Jun 2024 14:31:56 -0400 (EDT)
Received: by mail-wm1-x32e.google.com with SMTP id
 5b1f17b1804b1-4217dbeb4caso11624225e9.1; 
 Thu, 13 Jun 2024 11:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1718303514; x=1718908314; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=6kgZjM5Dm7w2EXakfCOhD8kqasw6LBq/LH7lU2XfbwU=;
 b=VZ7rhbFUAcSmro1AvP++cdDF4sC1t1mkT+URdE5S+NoJt68RLU1H1h9+g41+PKv00B
 TLUKWWLZk1kccp6qifwgUHb6vVUPAkwbOizkJFJlFfB6g/CCAq2Mn+GUcwvGBKBN9Ywr
 wB5jriowsEOiW8A6HaY8T4oXz5r3K2fTvWSpwmmjrlgOUaqNnq97yXibUCi1bbxW87+f
 qSI/n3YPDyCMxNDlcdGrz/482uLdz1UsZm99KtzF2/wim6K2YMjqs2NGhg1iGSz1go66
 RWRFbtbRgWUf82P9URx31A8bZDvqdSqeOD2DcqFfFqjP5hmADhfwwjLrOZbZoHqj9dPu
 zeSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718303514; x=1718908314;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=6kgZjM5Dm7w2EXakfCOhD8kqasw6LBq/LH7lU2XfbwU=;
 b=Ab1tUQOxoS+0YfiPFUEnwX97ipAJKQLNQtxhMbrkELozUl2Rfe0OtD63/CX9SS5Jj4
 xDLTmaQ/Bpbr9yK57lY+XbMng9Wbq+MhqqXIzL1BAsudVj//AGgFRmz5CeZMkioOyvFx
 oGmluaRN+LebitkI6ZnNXgFvFBgKX1qIGxu3FTsVyerb6iJAsov2of6Mi/oGZNbywfYj
 qrjnf76zoiPWLXAn+xWiU2qVyvhaBEYAYZ17IVr5BhX+6fem5esE3XBhS3TIGkHnxddz
 lSd8Vo+9Hc+9MRak6jB1O9xswsRLzu+5xfHNz8b2NMJClOQrsqA/8gGqJGfY7sqAdeYm
 UbBA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVCQK5T1pJJdN1s98L0gzd1L6bf9sn1HeaYwFQ9YkgRGDUbiA1IZ0io7kp5n4hWfncTjUPvXDRCtj0YrlUyu1wp2QXJUomlwkCj5vMY2aeT4gQWqjmJk/Xnfh8zVdoIa7//GyumCmfR1QW1
X-Gm-Message-State: AOJu0Yy/Nr+6UvfQ32ELe280yOVhJPRInRVsFe/xqPYSYf75D32yg5ze
 PJuw5pT3URc+9ZIKKmkTyc+9e+a/U1k4/MgRHuK4lRwJ5gBaJNlfdRlF1bpFj+IMPuiQOL5pJGH
 Py1uwAqtfgF/uays0esZpWoZvGsfEhs+C
X-Google-Smtp-Source: AGHT+IHRPuxWe4gK6wkOFzAFF3w9UvIcxoMI/6VnPWQBHOSx1DSkdzUC6EgvQMxwAmo0n4+L3IYUDhVcAuhukkbvvdc=
X-Received: by 2002:a05:600c:3ca1:b0:421:7e6b:1b75 with SMTP id
 5b1f17b1804b1-4230482c0afmr5087085e9.17.1718303513357; Thu, 13 Jun 2024
 11:31:53 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 13 Jun 2024 11:31:40 -0700
Message-ID: <CAA93jw5R2fMqssGOW7OraGBNCquf41EttDJ-iUC=nVpzEYQ5UQ@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, 
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] apnic libreqos webinar today
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
Content-Type: multipart/mixed; boundary="===============6835361140918624901=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6835361140918624901==
Content-Type: multipart/alternative; boundary="00000000000087b6c1061ac9b63f"

--00000000000087b6c1061ac9b63f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

We have an astounding 291 signups for it so far. If you would like to see
the latest stuff in libreqos, please join also (it's in about 6 hours)

https://academy.apnic.net/en/events?id=3Da0BOc000000Pgk1MAC

--=20
https://www.linkedin.com/feed/update/urn:li:activity:7203400057172180992/
Donations Drive.
Dave T=C3=A4ht CSO, LibreQos

--00000000000087b6c1061ac9b63f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br clear=3D"all"><div>We have an astounding 291 signups f=
or it so far. If you would like to see the latest stuff in libreqos, please=
 join also (it&#39;s in about 6 hours)</div><div><br></div><div><a href=3D"=
https://academy.apnic.net/en/events?id=3Da0BOc000000Pgk1MAC">https://academ=
y.apnic.net/en/events?id=3Da0BOc000000Pgk1MAC</a><br></div><div><br></div><=
span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><a href=3D"https://www.linkedin.com/feed/update/urn:li:activity:72034000=
57172180992/" target=3D"_blank">https://www.linkedin.com/feed/update/urn:li=
:activity:7203400057172180992/</a></div><div>Donations Drive.</div><div>Dav=
e T=C3=A4ht CSO, LibreQos<br></div></div></div></div>

--00000000000087b6c1061ac9b63f--

--===============6835361140918624901==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6835361140918624901==--

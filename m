Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D89B92DB0E
	for <lists+cake@lfdr.de>; Wed, 10 Jul 2024 23:33:37 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9FD713CB41;
	Wed, 10 Jul 2024 17:33:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1720647215;
	bh=RwdXMiyUy5n/E23MHP0E4oJXcLdEUDf+0Rw3g66Pn9U=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=IoOsAc+u0Ih0RgW+earintTenjRyxefdderJcjugrxHUuKp6N3heU8RuW6y2h6EuX
	 cKNaOdD+XYOZUfZ5UcQFAq9fzXfJKWryg8pXvvT8ekxY6nvvOW4c2wcuaDavoVXQdo
	 gJQhsuCUFzMXYO8sTVpVyFdQizdK/iUHKROX/ekrnEI8xe40CV5QHC2b+E0znlmzvo
	 mZt+hdhF0Ge2zUt0lmTWOQVjsqSIS/C/Jlx2CN6MH7cGKrzPF3okjitgPwQHSk0gbT
	 0EmhS3BYZMLwTaIdknP9BzPb4qMzXqqrxFjBfbyPVFNCmTn/wCxpQF0u8NpYCxBGUb
	 B22GoyRAOA/xA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 794FF3B2A4
 for <cake@lists.bufferbloat.net>; Wed, 10 Jul 2024 17:33:34 -0400 (EDT)
Received: by mail-ed1-x52d.google.com with SMTP id
 4fb4d7f45d1cf-58ef19aa69dso300555a12.3
 for <cake@lists.bufferbloat.net>; Wed, 10 Jul 2024 14:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1720647213; x=1721252013; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=H9LgbcI/vYKxDyhjtLbaa5BKdWEFh0ffFP6xRyg/0Rc=;
 b=Eekx5oX/zQPm78fLJ+pdikAql8N4dkWAfZ8ZrNN/pAA32mcuwDWIRTAd7d0qi1V1cS
 Qx9PR/JCIanqJYD9JiYka21CQTOa8kA7ID2ilTrxueKDMHAY7x3J3q1JDls+4oCWXPMV
 xTH56gnsWmRrkjY+JH6mhvND4r4x5JJy/Za9/qJrla29vbbl6dyCTih3Th+mlZdiRXB5
 TaLSRMAPIT56CXRFu83/MVM50SOjVxC4CN5IuBHR/YGpzzw/P8Nns0k7gtsOHMEFccA9
 Zxy7x6wwo7BEUMeCkaZzLJjSbXWu+Krk7pIuzKhwEe/Ryw5tssKArb2rEoHPzXO3/VIR
 mIPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1720647213; x=1721252013;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=H9LgbcI/vYKxDyhjtLbaa5BKdWEFh0ffFP6xRyg/0Rc=;
 b=D/jupl/awbezvE3T7nVrmY19Cf/zvzqoeH9tV0KPpCSqxtSXL/5qI+HoGnjFGSXoO+
 Vm+9UAETdm9H2cVpy3ed/cYYD4du6luEV0ESPowKJRynS432qb/qi3xNXGDGdJrFIbeg
 yij4lLL8D1+OrRbZr3dYKkUrLPouH3/bmZGwZh6aeunqKl7HiSRVVkbU0Gn3LZMCWOyQ
 QWsofxLcnXfQnGdTpRJ1q0/dqx0vMbDBCpDWe2ztkJ/fV/9705iDlDhgrFjzSd730bJl
 ZKu45/c0qtIaAYnEdMvYU5wkBHBkrv2nQZbron5nOA0RrKi5rW/8f+uPQHGk6v/iwXtx
 /roA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXbOXL5kxTt3t+baxrzjWVmppK9ljBdAN4xwFs8VcjHphc2pDHNMRUONVrIl/O1zklKKU7FLyxd++ML+luZbrbk/ytQUd/eRB5K5g==
X-Gm-Message-State: AOJu0YwF2v1+Ps35tyMvnc3i+pnq5jtyQyYa9djh/LDIYuMFVbnjaki2
 RzbAcG9HmxGGBjcdkaq02C8Ac6kTnFAXbQsvgvRwsKQKO6hYANuOhoAZ0NXSTEAKbyQUH5YJVjo
 5NIG2GmEFK7ttBmyPnj6dD+442kk=
X-Google-Smtp-Source: AGHT+IE4pJN0bCuWV2r/wOqfaWiGDMUCn4h5egYF18dnm7kBCEMF8QCh5nfsNkUWVumX2rGdmfRr/otTaeMH23hmn4U=
X-Received: by 2002:a17:906:f588:b0:a77:c583:4f75 with SMTP id
 a640c23a62f3a-a780b6fe391mr623699566b.38.1720647212942; Wed, 10 Jul 2024
 14:33:32 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 10 Jul 2024 14:33:19 -0700
Message-ID: <CAA93jw6A7QLBKWKfhCV0fhdfXWHtm1qPPCQR0xedoicOyubf_g@mail.gmail.com>
To: Matt Mathis <matt.mathis@gmail.com>, Kathleen Nichols <nichols@pollere.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>, Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] ETC looks promising
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
Content-Type: multipart/mixed; boundary="===============7499059318106804826=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7499059318106804826==
Content-Type: multipart/alternative; boundary="000000000000e94bd1061ceb6513"

--000000000000e94bd1061ceb6513
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

They tackled slow start! yay!

https://www.usenix.org/system/files/atc24-han.pdf
--=20
https://www.linkedin.com/feed/update/urn:li:activity:7203400057172180992/
Donations Drive.
Dave T=C3=A4ht CSO, LibreQos

--000000000000e94bd1061ceb6513
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">They tackled slow start! yay!<div><br clear=3D"all"><div><=
a href=3D"https://www.usenix.org/system/files/atc24-han.pdf">https://www.us=
enix.org/system/files/atc24-han.pdf</a><br></div><span class=3D"gmail_signa=
ture_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature" data-=
smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><a href=3D"https://www.=
linkedin.com/feed/update/urn:li:activity:7203400057172180992/" target=3D"_b=
lank">https://www.linkedin.com/feed/update/urn:li:activity:7203400057172180=
992/</a></div><div>Donations Drive.</div><div>Dave T=C3=A4ht CSO, LibreQos<=
br></div></div></div></div></div>

--000000000000e94bd1061ceb6513--

--===============7499059318106804826==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7499059318106804826==--

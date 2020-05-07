Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 000D81C82BF
	for <lists+cake@lfdr.de>; Thu,  7 May 2020 08:45:18 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6E2393CB41;
	Thu,  7 May 2020 02:45:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588833917;
	bh=wvOzxrK5dnz04kFV1JRJnD23oxVg6gyJj/CgIdTPZwU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=heOZTZjRzmAd2eco+VwqIct4DIirU5TFAArG6TlB8RVSTWZJdCFBKcntZ4wjdD2TR
	 OwBcA+PgGw0GH07zwiw6dJGKYIHCkqyRZUS2SGrAWQr9oiToAlOvDdWwo6WKsd0jjH
	 2cYAxvavjXTdlZ01DleLS/HWEkAd9a3Ul/OIOwi67Y0xq0kTEPRXP2/VTKrsBL2PIz
	 /3bGhN9o02gkmMkOByepZXFaeHP0/J5cO5fwOzmgpr47sZB9djpACkJx+dLLOKX0bD
	 oxbFxCqD/4nbJHHRz2YdA9M1S+NrisO24E8KRK0d7FsfmmwetV7PKKXv8XUs/xEQ0n
	 Y0oC8V0iY6f4A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com
 [IPv6:2607:f8b0:4864:20::e2c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7999D3B29D
 for <cake@lists.bufferbloat.net>; Thu,  7 May 2020 02:45:16 -0400 (EDT)
Received: by mail-vs1-xe2c.google.com with SMTP id u12so2824439vsq.0
 for <cake@lists.bufferbloat.net>; Wed, 06 May 2020 23:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Uy9ma6naq1K/65TLSS43UBdvc0Cvq/hkgswoqjWajQs=;
 b=tLISzfuMOjyiEIIIgYNP/FJrLpQGB1gTm9bTMUuMt0ZZiuvnlMWkwMzfJ6FwDf1RlY
 +6P0HsNaP/ODU6gIQ+mbQSRfxE4D2646tBCme4hCWp0UG0IHTxMaLncAz48B4eND9vcP
 8/oQQw+e2YAUkKpwjkmejTLRve76tk6S1d5m4ajlX/FiLIzMiDm7ZZds/CJGNgiw2twd
 45dYBKReBDp6qq6jJkrFRSbgZcxdLWWepOhG2qovn49s9ENHWrXnUwNbEP5FbSNtyGcE
 Nksh+RvlMGguEEI+8s/ULN6QPgX7JTKjwStyQP+lI+GplSEoXl+da5rFOKNpAiOBUFmM
 eAOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Uy9ma6naq1K/65TLSS43UBdvc0Cvq/hkgswoqjWajQs=;
 b=ug0Z4Dyfd0Dy8B+l9l+qofy9MvFB32EsCCW3iSl+ENyjZvd/x1MRDE+1PLCqHDySJV
 JnmwBcGscwnKKZGmr80n+oGooA84ORWMuVFnn7bNeT3Kn8oHtfY6SjbCLxX17GpgZjMR
 hB3Kz3AEh6MeVZUGMoe0LUvxnitykUNvJQEHg5AptCx9UxcZFtCRhj3Iq6q6kQzYIqsY
 bi3tUsE1RnsdFpcXopYKEevbeGeEXF/LCGzPFFw6TetKcrBfUaRGyzWAnxtPrVsnAS0o
 6+3Seff+S/zox/Fle16EC3/bUaluOwph29z8UI+OF9UGYCZ6F902gMZgXElfNdWcnx9j
 PI0A==
X-Gm-Message-State: AGi0PuautxviIno+rCVN7j2egTcnUtHVu8HqRL5WDDdmV+7GezzpbyQS
 KfQQnkQXO8xPXed/8jmqcohgXGljIfJMRs8FlsU=
X-Google-Smtp-Source: APiQypJEnMG30QvAvKQ4yMLs8hZE61f1g7AKwRl1GvKOSM2FC/GnnI+jb6GB5CPd/4+KpEamnzex80Gnay2GnSzWaKI=
X-Received: by 2002:a05:6102:7c5:: with SMTP id
 y5mr9404138vsg.108.1588833915821; 
 Wed, 06 May 2020 23:45:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
 <C24C4CCB-C30D-452A-9386-5AA533F11CEE@gmail.com> <87wo5okhbo.fsf@toke.dk>
In-Reply-To: <87wo5okhbo.fsf@toke.dk>
From: Avakash bhat <avakash261@gmail.com>
Date: Thu, 7 May 2020 12:14:59 +0530
Message-ID: <CAC8NkTCYBokx0NedyuOKjhZqUMHXAc5tZtObTpdyjkvE4U_zUw@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Subject: Re: [Cake] Query on ACK
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
Cc: Vybhav Pai <vybhavpai1999.vp@gmail.com>,
 Shrinidhi Varna <shrinidhivarna.171co145@nitk.edu.in>,
 cake@lists.bufferbloat.net, "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Deepak K <deepakkavoor99@gmail.com>
Content-Type: multipart/mixed; boundary="===============1202717247658884340=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1202717247658884340==
Content-Type: multipart/alternative; boundary="00000000000028e16d05a5093967"

--00000000000028e16d05a5093967
Content-Type: text/plain; charset="UTF-8"

Thanks for the quick response. I also had a followup question.

If the ack filter adds the new ack to the tail of the queue after removing
an ack from the queue, won't it be starving the ack?
The replaced ack was much ahead in the queue than the ack we replaced at
the tail right?

Thanks,
Avakash Bhat

--00000000000028e16d05a5093967
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Thanks for the quick response. I also had a followup q=
uestion.=C2=A0<div><br><div>If the ack filter adds the new ack to the tail =
of the queue after removing an ack from the queue, won&#39;t it be starving=
 the ack?=C2=A0</div><div>The replaced ack was much ahead in the queue than=
 the ack we replaced at the tail right?</div><div><br></div><div>Thanks,</d=
iv><div>Avakash Bhat</div></div></div>

--00000000000028e16d05a5093967--

--===============1202717247658884340==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1202717247658884340==--

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEE0A2E7A7
	for <lists+cake@lfdr.de>; Mon, 10 Feb 2025 10:30:28 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B95983CB40;
	Mon, 10 Feb 2025 04:30:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1739179826;
	bh=fIYS5BMrKL7oGLz0AyGgbNrCeAIhaV1RmTARQA8ddA4=;
	h=To:References:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From:Reply-To:From;
	b=a5tcSeX7u4GFw3DP0S+zp5jLQw6Ga3jqoboJkw7R6uIanv8DFoNplhAaE+1SOtdsw
	 0MMrrz+45VpFQVUcBrA+HwJD0GOy+PkRUn6L8eC6ckM3TKIhGjr3R40LBB11hrz7hZ
	 AnKwSiJebMNgZe9hBelGOR6kZ8lBx80sBmsrkwdCo7qJbSmNsLs1KjIwr/hwQK+6aJ
	 2UKJid2V74ID1S1uZ4ykI73251WwMi32mXOj3p1kukuqBhv0eMKqRu3XFn8BQfpii6
	 EgmaTi0wHlx14cGFOIH9QSvTIkvdak6bIAulrazj496tVMAu41/DKcqTnb9Sgye77b
	 E2xM8Qb3oEkLw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DCC5C3B29E
 for <cake@lists.bufferbloat.net>; Mon, 10 Feb 2025 04:30:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1739179823; bh=EOIzFEwUodnVwmYRp+H0IL4+1lFJtsCvMER1pIu/+ac=;
 h=From:To:Subject:References:Date:From;
 b=wCY9/X6rEDy7M5BP/Dmjl1jfDEiYymB+/7h4ffafb+IvCCUaP9ERxs+yL/oF/Y+uL
 27fmFW6cLTTg3NYp3ZsY/Y2fNp9zfIKsg0fpM6+rONE1Sxu7knpd9yDvZGvT/8Kseh
 HKDlDHYWyOpKX2kND86QepRP319TnI0QgvrGkL44vBNscoqe8qrtvkI5TARRyg2XeB
 oOwtgu95cgu7SsxFZtbj++j0Vi7dnHrxH3D0dIOLYxlX1UYVs1rk4mKIuHnaLEixCy
 Qs3Nit9sUF0DX4LV+f6ZuiH4P2vbFtNq1tAYPa+q5Bqror8egQdmTYGlMb7GA2WRri
 +m1hTjMTqMmWQ==
To: cake@lists.bufferbloat.net
References: <CAM0EoM=bFMVMV-f2n4BNSJoqOAxqr+kcJ9kg2NLVvmw2rX-2WA@mail.gmail.com>
Date: Mon, 10 Feb 2025 10:30:22 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87bjvarvtd.fsf@toke.dk>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="=-=-="
Subject: [Cake] Fwd: [NetDev-People] 0x19: Talk,
 mq-cake: Scaling software rate limiting across CPU cores
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--=-=-=
Content-Type: text/plain

FYI :)


--=-=-=
Content-Type: message/rfc822
Content-Disposition: inline

Date: Sun, 9 Feb 2025 08:37:41 -0500
To: people <people@netdevconf.info>
Subject: [NetDev-People] 0x19: Talk,
 mq-cake: Scaling software rate limiting across CPU cores
From: Jamal Hadi Salim via people <people@netdevconf.info>
Cc: Kimberley Jeffries <kimberleyjeffries@gmail.com>,
 Lael Santos <lael.santos@expertisesolutions.com.br>,
 program-committee@netdevconf.info, Bruno Banelli <bruno.banelli@sartura.hr>,
 j.koeppeler@tu-berlin.de, stefan.schmid@tu-berlin.de,
 Jamal Hadi Salim <jhs@mojatatu.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Qdiscs rely on global lock to sync state across CPUs and therefore
dont scale in presence of many cores (or in presence of very high
bandwidth).
Jonas K=C3=B6ppeler, Toke H=C3=B8iland-J=C3=B8rgensen, and Stefan Schmid im=
plemented
a multi-queue variant of sch_cake that can scale its rate limiting
across hardware queues (and thus CPU cores) by sharing a bit of state
on top of the mq qdisc.

In this talk, they will present the implementation, performance
evaluation, as well as discuss their proposal for an API that will
make this work upstreamable, and applicable to other qdiscs as well.

Details: https://netdevconf.info/0x19/16

cheers,
jamal
_______________________________________________
people mailing list -- people@netdevconf.info
To unsubscribe send an email to people-leave@netdevconf.info

--=-=-=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--=-=-=--

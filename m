Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 598621C7998
	for <lists+cake@lfdr.de>; Wed,  6 May 2020 20:43:33 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B9BB33CB41;
	Wed,  6 May 2020 14:43:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588790611;
	bh=DNaNIq4FN8aJx/j8LYrc/nhsbk+ZoVIXcDOoKGv5b48=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=oxlwI5m4IS8p2em7tO1OhIVlrdTitQulECoYhjigijKSrgObWfm0EBscujudAWPzq
	 oWFukglrupFjkNRuETqA4CSadRWcaQywNpt+hBCfzbBoAI1xPx3ZW/D8g/fHmka6dz
	 w1Q6tVCjGFvGww39G61N0iKWs0e542XrJ5qSjxcrZt8+4YrNt7B7akQLon15rIvn14
	 QKOrTcNxS1NN65wiunh0c56QhYFKiqixXPQnnRSSjyDoWjjk41JJQDKk9XD/ZyWAHc
	 qAabYuDU4UQmIlj3FHqzVTbQ30hpMWchLvQPTk56Msfzo7RKXfsRzcX4GDR3ELwgNn
	 7vePMuh/HL91w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com
 [IPv6:2607:f8b0:4864:20::e2c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C8F8C3B29D
 for <cake@lists.bufferbloat.net>; Wed,  6 May 2020 14:43:29 -0400 (EDT)
Received: by mail-vs1-xe2c.google.com with SMTP id m24so1689744vsq.10
 for <cake@lists.bufferbloat.net>; Wed, 06 May 2020 11:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=hKKp+MHwwopmK2O8Nexkn3qV7V62+UUkLTBG6cKtq4M=;
 b=Wjff1MpUasoBb0iOzts4qkONGPzHZWAyBAgOuU1g454pzjB/4XXAIe7LlNCmyv97NS
 kRub0P4rNMsszUziYfMWg/eKFge7FdHwdKmftHa/PgWXiZ7nXFYsIpAW3Rxj5fiBYsRl
 fi2xURSBUSxFOXn8dgTf6/+/539OZxybTL8c54cYCl2clx2gOcP/2KzjGNZVMG9S7r6u
 E3wih3HFq7rTZLz13oFr89kPY9kZuyCHYbZ3r8RQtZNc7imvgYW9EE3Uskr59Wo3b0Gb
 vYv4V5C9k65kPQKQJHXyt+uEb3trtAcDdXBvMhN7Z0Dwa73KeZg4sCE5kbjGJCVUnM61
 8Vkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=hKKp+MHwwopmK2O8Nexkn3qV7V62+UUkLTBG6cKtq4M=;
 b=OT6FAkzjJisaDqHLz92g0MiPkvlZQVS24wG2mkDQwukhNVzechEkTdSeJg96L9IC2o
 o8uPsChNoVY2trdVyt+D5Ar0YYrKu3YrhOwZxzCYJCHjRD/mE/UM+3x6f0rfvVRAiOhE
 eJ7dYIaaAvry4WyqdZN7d2MTtMugdZLHjhpthQ2o/G1RtHrj6aMQKMbL1tymbmrBSbaP
 T2ALtBCoFCUjWcn7j/Y3hMW6+kTpTlb8J7m2dM6gLCIWHSfVbQk+cAsB1emWbRDGwjTn
 lje086lxVC6rjUEcbAMiTMjAsa2pKMgR1eUev5XRfwgRiZrv5eYt1zcxLpXnD4rcQaF0
 a9zA==
X-Gm-Message-State: AGi0PubED5ZmmyLScKVW0uOjQXviHxQkhW6+VP1t4W2HF4M67O/QvuKw
 QFrRFHVjKW9PH4sbrLlIy36ADZZ8LBsmFnD1evmRbRzCQvGtX09P
X-Google-Smtp-Source: APiQypIOQuecYvJ7htIc6Cdnepld8BxivgIbqtvrAEtr3p4xkPvLZLZjFcpKB8Sahu5N12+dE8KSXhHh2yVr/pZt2NA=
X-Received: by 2002:a05:6102:7c5:: with SMTP id
 y5mr7487236vsg.108.1588790609135; 
 Wed, 06 May 2020 11:43:29 -0700 (PDT)
MIME-Version: 1.0
From: Avakash bhat <avakash261@gmail.com>
Date: Thu, 7 May 2020 00:13:00 +0530
Message-ID: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com>
To: cake@lists.bufferbloat.net
Subject: [Cake] Query on ACK
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
Cc: "Mohit P. Tahiliani" <tahiliani@nitk.edu.in>,
 Shrinidhi Varna <shrinidhivarna.171co145@nitk.edu.in>,
 Deepak K <deepakkavoor99@gmail.com>, Vybhav Pai <vybhavpai1999.vp@gmail.com>
Content-Type: multipart/mixed; boundary="===============6224923664603287795=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6224923664603287795==
Content-Type: multipart/alternative; boundary="000000000000e1517205a4ff2310"

--000000000000e1517205a4ff2310
Content-Type: text/plain; charset="UTF-8"

Hi all,

We are trying to implement the ACK filtering module of CAKE in ns-3
(Network Simulator).

We had a question on the working of ack filtering.
If an incoming ack which can replace an eligible ack in the queue is about
to be enqueued, do we replace the ack in the queue with the incoming ack
or do we enqueue the ack to the tail of the queue and remove the eligible
ack from the queue?

We would appreciate any help in resolving this query.

Thanks,
Avakash Bhat

--000000000000e1517205a4ff2310
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,<br></div><div>=C2=A0<div>We are trying to imp=
lement the ACK filtering module of CAKE in ns-3 (Network Simulator).</div><=
div><br></div>We had a question on the working of ack filtering. <br>If an =
incoming ack which can replace an eligible ack in the queue is about to be =
enqueued, do we replace the ack in the queue with the incoming ack <br>or d=
o we enqueue the ack to the tail of the queue and remove the eligible ack f=
rom the queue?</div><div><br><div>We would appreciate any help in resolving=
 this query.=C2=A0</div><div><br></div><div>Thanks,<br></div><div>Avakash B=
hat</div></div></div>

--000000000000e1517205a4ff2310--

--===============6224923664603287795==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6224923664603287795==--

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A64F634BD18
	for <lists+cake@lfdr.de>; Sun, 28 Mar 2021 17:56:31 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7AD3B3CB57;
	Sun, 28 Mar 2021 11:56:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1616946983;
	bh=QDVIVyEPDCtwTf/nkhsehEY3CfNPCJQgnDBjmxTzJ0Q=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=QtUJcd3ebpEjzdF+jEqgXvBNGt2xyz1fDNNw7jPM2bXv105k/0dRNJooPvN/6/Qa/
	 eSOCnoRCYvuae+DQqyEaTlPiZyouiTPqD+z5Knz1C35wPQ1QPcLkqQHomaJq2R64Sp
	 RsFxrcmFeeBKEAmWD3G6ytADtmg8tnWIkmze5ebai2li2sS0gVsjQ5Z4UeZ/wxkzZk
	 BSBhl4NxYtNmTQlawvW4+vVRIUpWm4V7QvjvSIuUvkyPzlrV301nSOlPuFjujIrYIZ
	 b6tDe9ylJVHj32a6GuUMM74RYFZMkuxgw7L16ouQMBNpJJzuFibz9VqPS+5KlxtNgX
	 Bt7JEylSsCFOg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com
 [IPv6:2607:f8b0:4864:20::131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8D5A73B29E;
 Sun, 28 Mar 2021 11:56:21 -0400 (EDT)
Received: by mail-il1-x131.google.com with SMTP id d10so9230539ils.5;
 Sun, 28 Mar 2021 08:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=7HFGr3Y5hHeUWejKZMnjMzk2kfZheBjtnIHVFXtZAzk=;
 b=KqtV3y3LML4daK+8QLR9HnU0EWm4H45gI3MSCTYcNhv+Zi8G34dJpqkUA1HmoUm8rq
 NFJ4Nymeg+CbPcZqqYD7BwsJvOuU0414+s4VdBCHYN+wRyKJ3oXMzoK1iEfDavYFQci7
 AVKHFMtCUiHGY57qapcoRsJC9qcMwookI6vVqcD7J73M3DplnbPTUYPfE+nvpMGAM0bb
 9lRwp9lvvGoHfw9jyIX0uDDxKDGgKIlZeomGs5Tt6ddoj87N2E4LAbku/a4ETzfEVIiw
 +bJN2mfi6cRUalWR+0PxY04G9n0nS5wElaK53/Yq/9dOxzPD37MutSLGrCe7lyM5adEp
 gYkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=7HFGr3Y5hHeUWejKZMnjMzk2kfZheBjtnIHVFXtZAzk=;
 b=Tb/BC3zf1mb61E87GuwgvZJqzhh5q+Lt3cp+VIN/vE5+LmqXggz1tMzQAlCWMepJk0
 gvXlGRG0hrb5nvpOQtMERy1s3IQ5Jv9AZXCj6zyU6VmkLALFILsleeVyjnODRwyc9q7R
 Wt7R7Gm43tMgpHRjeqeY7jJGu7Az9VRKV1QkDLPv2CsDpHh6Fr3DvNO+hk5qf9tZiGWg
 Zl7LB0menqHbqrKU3B9LeMPyptp9uRo5i9kSRI3/hdYEmz/dv4f4pR93eMjvpyumNG9Y
 4Vr98ZdmZd5F4dNoR0SMeq31tAseyS75FGF4aU1LYRNTxWBw6215BbwLXpt3sZcL3Its
 kHRQ==
X-Gm-Message-State: AOAM5321eum0xCVYSsXLSh38fipUc55e9sTaOKv8ViXmkxTMPghn9lrj
 LorsZ2SGOfHa/+061qBF0bo5/HzR214rWF+hwDED/I7t7AnWQA==
X-Google-Smtp-Source: ABdhPJwbXReICwAX5+7CnuDU95jWT1oM6MTZxKyMlLUrhAiqTOqlHkWtHZcS6qsK0IL80+gW9MLB4BHtddtsSOu9LZA=
X-Received: by 2002:a05:6e02:1e03:: with SMTP id
 g3mr17170503ila.249.1616946980774; 
 Sun, 28 Mar 2021 08:56:20 -0700 (PDT)
MIME-Version: 1.0
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 28 Mar 2021 08:56:09 -0700
Message-ID: <CAA93jw5+_vW3b85ZOxpOn5_LoiPgxuj4XzH3=gkq8qYM2xunSA@mail.gmail.com>
To: bloat <bloat@lists.bufferbloat.net>, 
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, 
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
 Cake List <cake@lists.bufferbloat.net>
Subject: [Cake] wireguard almost takes a bullet
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBhbSBzYWQgYWJvdXQgdGhlIHN0YXRlIG9mIGZyZWVic2QgdG9kYXksIGFuZCBvZiBjb21wYW5p
ZXMKY29udHJhY3Rpbmcgb3V0c2lkZSB0aGUgYXV0aG9ycyBvZiB0aGUgY29kZSB0byBnZXQgY3Jh
cHB5IHRoaW5ncwpjb21taXR0ZWQgd2l0aG91dCByZXZpZXcgYW5kIHRlc3RpbmcuCgpodHRwczov
L2x3bi5uZXQvQXJ0aWNsZXMvODUwNzU3LwoKKGxvbmcgcmFudCBvZiBtaW5lIGluIHRoZSBjb21t
ZW50cykuCgpNeSBoYXQgaXMgb2ZmIHRvIGphc29uIGZvciBzaW5raW5nIGEgZnJhbnRpYyB3ZWVr
IGludG8gdmFzdGx5CmltcHJvdmluZyB0aGF0IHdpcmVndWFyZCBpbXBsZW1lbnRhdGlvbiwgYW5k
IEkgaG9wZSBoZSBhbmQgaGlzIHRlYW0KZ2V0cyBjYXVnaHQgdXAgb24gc2xlZXAgbm93LgoKLS0g
CiJGb3IgYSBzdWNjZXNzZnVsIHRlY2hub2xvZ3ksIHJlYWxpdHkgbXVzdCB0YWtlIHByZWNlZGVu
Y2Ugb3ZlciBwdWJsaWMKcmVsYXRpb25zLCBmb3IgTW90aGVyIE5hdHVyZSBjYW5ub3QgYmUgZm9v
bGVkIiAtIFJpY2hhcmQgRmV5bm1hbgoKZGF2ZUB0YWh0Lm5ldCA8RGF2ZSBUw6RodD4gQ1RPLCBU
ZWtMaWJyZSwgTExDIFRlbDogMS04MzEtNDM1LTA3MjkKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZm
ZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

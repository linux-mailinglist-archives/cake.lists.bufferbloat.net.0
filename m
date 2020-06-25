Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CB23F20A6ED
	for <lists+cake@lfdr.de>; Thu, 25 Jun 2020 22:42:37 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AAB813CB38;
	Thu, 25 Jun 2020 16:42:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593117756;
	bh=NwUvfiKbaXD/BIwyuZhDk3TmlLBBcxwFXbTAS1H//3I=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=C1k3D83CxAAr9ARY1GpuD2Ml189dZvV6FGU4UMJEgBD9xgxCNEdlutLPV452ywvZy
	 Hwd5xAqcTKpe1jmX6ZihEfz5pjy1aeQtSkZvOXi4UmG/Bgti8nGNh9dhNo3j30b1jU
	 FI489MVVxZkfWYqdT8Ufjwc7NTAGXZTOiC3cDmd5mqi0WIuJsA8ACp2eU6ejUUrH4m
	 GDaU2MnLqZkVPsvdnpNsFUGsXJSnCfmoOVoMa+3Q1JhdXe/t2+JrZjP0aWSLv3UkJI
	 PWQUFlcwWSuX39yUOeFfCK/5QheXR0zJOAsur/Girx0ckth7oSVDYrw7zsCRCYHww6
	 FNkpgoaFpGxHg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5545A3B29D
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 16:42:35 -0400 (EDT)
Received: by mail-lj1-x232.google.com with SMTP id x18so8049162lji.1
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 13:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=A0Dqw+ZlZ4/gyU3/Sdddu2yiP3hPIDq70Zm8CtC1re8=;
 b=o6iObhJ18NCYQd8etHNmh4t7S2CDrN2NOrfNkv8D0kEUOQBiDbXpyDf1ctgSCi0X3x
 yBLZDl23RFqTYvqr+QO7tM1ulb/mb+kF9dhr6AdHz4xwYbg1am8A2GyRlSM1RHrf2EwQ
 kCoChR5xC5KyuNa1FBHRoTIeoONdVZdZnlgPOoBzHWVfwarpLOx7OD2EcDwnn6GCA3Zl
 IK5J1GeICYNzr4gW0b8LRkC3WHczmguqYXCpWGU9hKH87Zl9TKPsuv1d+gUCts+p45cQ
 GWBWIcAZlhcgBm4Hbsch9EI89j4M5e45811LiBE7wBMTeXCYZ6yaUwWeGCNaQAhiLKCh
 qPAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=A0Dqw+ZlZ4/gyU3/Sdddu2yiP3hPIDq70Zm8CtC1re8=;
 b=BbYKKGnERVrH/sSjvDZkIcd5Ev/Paq9s78KDgNMD3bENbtsGm3u4EVvda+FBxIJRom
 zRn3cFuyujvxP1zGUew1d8ft1ltlK+/R3G/9uqTJTvebyVQPYCqju+Nk5f36EK2xj72h
 lGMsq0IKq4suWBVNwB7rVEfGfIo+bMCKV9VsIwZkPugdcaPT1sMk6iywywPoZPNXwXcy
 06tu1IS86fp3xzzw1nbxt+YVlr/TUL7COUs+HIQhYn0ItuUrUqZXbBsMxHxfhWXqtZZa
 P1fgoQ5Ui2zuT1JjjMfKvys1HoaeLZfLmUY0vKrdSRnpi9qjydgq0U5m5k0dYtG0L/HC
 b0zA==
X-Gm-Message-State: AOAM530+UguK4pA36s3RkRIIlSmUOoldovOxj/+vt7kYWWtbz4dI8gZ1
 0UI1f+j+TSUarE9/FneV6xA=
X-Google-Smtp-Source: ABdhPJygAMtj9n7WnMualFC8QtAvkGJj2vqvuNjRQCvh+6WntiBrO0hR/WRlPoQvirxTNTalOEe4kQ==
X-Received: by 2002:a2e:7219:: with SMTP id n25mr18452303ljc.164.1593117754202; 
 Thu, 25 Jun 2020 13:42:34 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-237-85-nat-p.elisa-mobile.fi.
 [83.245.237.85])
 by smtp.gmail.com with ESMTPSA id g22sm6198735lfb.43.2020.06.25.13.42.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jun 2020 13:42:33 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <FBCBE043-450D-4512-85B6-587F8876C7DB@darbyshire-bryant.me.uk>
Date: Thu, 25 Jun 2020 23:42:31 +0300
Message-Id: <43093AB9-1B67-487D-B9E1-D52B6D5F5821@gmail.com>
References: <8ABBBE20-5045-41CF-967A-CD8961400ABE@darbyshire-bryant.me.uk>
 <1A34E9D8-C6FD-4E09-866F-DB30F73D6ABC@gmx.de>
 <FBCBE043-450D-4512-85B6-587F8876C7DB@darbyshire-bryant.me.uk>
To: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
X-Mailer: Apple Mail (2.3445.9.5)
Subject: Re: [Cake] Why are target & interval increased on the reduced
 bandwidth tins?
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAyNSBKdW4sIDIwMjAsIGF0IDQ6NDAgcG0sIEtldmluIERhcmJ5c2hpcmUtQnJ5YW50IDxr
ZXZpbkBkYXJieXNoaXJlLWJyeWFudC5tZS51az4gd3JvdGU6Cj4gCj4gU28gdGhlIHNjZW5hcmlv
IEkgaGF2ZSBpbiBteSBoZWFkIHNheXMgdGhhdCBCSyB0cmFmZmljIGNvdWxkIGJ1cnN0IGF0IGZ1
bGwgYmFuZHdpZHRoIHJhdGUgKG9yIGhpZ2hlcikgZmlsbGluZyB1cHN0cmVhbSBJU1AgYnVmZmVy
cyBhbmQgdGh1cyBpbmR1Y2luZyBkZWxheXMgb24gYWxsIG90aGVyIHRyYWZmaWMgYmVjYXVzZSAi
d2UgdGhpbmsgaXTigJlzIGEgc2xvdyBsaW5rIGFuZCBoYXZlIGhpZ2ggaW50ZXJ2YWwgYW5kIHRh
cmdldCB2YWx1ZXPigJ0gZGVsYXlpbmcgb3VyIHJlc3BvbnNlIHRvIHRoZSBidXJzdC4gIFdoZXJl
YXMgaWYgd2UgcmV0YWluIHRoZSBkZWZhdWx0IGludGVydmFsICYgdGFyZ2V0IGZyb20gdGhlIHRy
dWUgbGluayBjYXBhY2l0eSBjYWxjdWxhdGlvbiB3ZeKAmWxsIGp1bXAgb24gaXQgaW4gdGltZS4K
CllvdSBtaWdodCBiZSBmb3JnZXR0aW5nIGFib3V0IGFjayBjbG9ja2luZy4gIFRoaXMgZ2l2ZXMg
dGhlIHNlbmRlciBpbmZvcm1hdGlvbiBhYm91dCBob3cgcXVpY2tseSBkYXRhIGlzIHJlYWNoaW5n
IHRoZSByZWNlaXZlciwgYW5kIG5vcm1hbGx5IHRoZSBzZW5kZXIgd2lsbCBnZW5lcmF0ZSBlaXRo
ZXIgb25lIG9yIHR3byBwYWNrZXRzIGZvciBlYWNoIHBhY2tldCBhY2tlZC4gIFNvIGV2ZW4gd2l0
aG91dCBhbiBpbW1lZGlhdGUgQVFNIGFjdGlvbiwgdGhlcmUgaXMgc3RpbGwgKnNvbWUqIHJlc3Ry
YWludCBvbiB0aGUgc2VuZGVyJ3MgYmVoYXZpb3VyIHdpdGhpbiBhcHByb3hpbWF0ZWx5IG9uZSBS
VFQuCgpUaGlzIGlzIG9uZSBvZiB0aGUgbWFueSBzdWJ0bGUgZmFjdG9ycyB0aGF0IENvZGVsIHJl
bGllcyBvbi4KCiAtIEpvbmF0aGFuIE1vcnRvbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

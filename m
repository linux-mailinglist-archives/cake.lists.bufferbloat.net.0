Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E56615A836A
	for <lists+cake@lfdr.de>; Wed, 31 Aug 2022 18:45:42 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EC2E93CB43;
	Wed, 31 Aug 2022 12:45:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1661964335;
	bh=Iz4KyiWT3I0ekJgsT7OTDJh2WwpwRDrie5/S2k8gLq0=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=nLIJmRODBfq4xo5QTeCSfYXGZDq9vBrJvpOdfsIOP4/RWX0VxMv5wvDprK8Lm6lKY
	 nsS6UXvWTsiPIT2v9ntQsEiQs0tSp44ZIHnFUZVOxeCjQhr1BePhoHF0vs5maBPd9X
	 g8Hu8F43VF2xR5SHHMd9t/a+jyuhpxHP2YqxItibaKRy+KRzHCZUn4pBkYwwZtMwjo
	 PhvakDB2nGeyhAe3pRlvkp8a7qsU0zQjnDYlik6EMP0i739+i5s+SIWLq95JmZDFlY
	 xuSGMmbck9MQeewsa1UgsOT2n9YlOG+VDoIpuI2Hw70aRs54WkUkujt0jR/TskNjCb
	 97tI6F6fbdvgw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AC0F93B2A4
 for <cake@lists.bufferbloat.net>; Wed, 31 Aug 2022 12:45:33 -0400 (EDT)
Received: by mail-wr1-x430.google.com with SMTP id u18so6375214wrq.10
 for <cake@lists.bufferbloat.net>; Wed, 31 Aug 2022 09:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc;
 bh=8zCqliUypbuPAHefJSUnCboVlJVLKsQ6wTFGepHAdKU=;
 b=VrfZxTy7qd2t7NjKxe69lqgxP5nChBOw3qQEMY2lqzg49xTFzrVuEgayaCOHIjWUyu
 MXSOwTVvP5mMbq7K4VhSJb5E8bX3hMy/M+k8ZaYptGTIvhIlPI3OmNlxPKCt2z/ynfC7
 8X4Zdz4NdK1t1V1fwgHz6xlyLJAKidYyWVrvjZrcoUugVbm7+Mv403X+n7OEFZbf82+g
 6fWhhZ3TAqetxWz/ALlN/TQFe1uZDLzHgDIUNtq8BupR2qNh2spi47dEWFp6ZgQ8Pb8D
 3+Gmkcxkv1ysOad+nTxh7FZeVTJTgPyntz5w6j4oQxtABpU4WRr1FdHZ6xtT0eCO5Qnl
 hAeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
 bh=8zCqliUypbuPAHefJSUnCboVlJVLKsQ6wTFGepHAdKU=;
 b=vGalxXshc848m7Y/B22aRVBIpJew7QkGeFdL/Ck4Lj+ypK5LeY1zM3Ajeg/F7sAAz8
 ZbN7huZLsb8BBiBLooOANY/IfqkANDCU5cm5xZMaSFsoMsxxxBIFQzA/sX822IURLW2e
 vrkb1j81gKF9B1lMTJGbz0AIjGHdA9z3Jyd9mm1inINJhXRRi1Qf/xjznk1O7Vhh7ar9
 VF8i+LjDS1Ysk9ve7LAIvMrdFNpvaVpA/0/G05CCO1SHRtlSD/NdXkwZieyJUcNmWBbt
 sKFDdRzzO6rRd1s4YSWWGYBvxxHpF77a5wVF+oF5rtSQz/yE/DNqfVCmYEBqPPtmDRMU
 oTsw==
X-Gm-Message-State: ACgBeo3a6kADtELZ2o6keLumADHe01NqTwmIVCoFJh4CHmnNI6YdKalE
 PdJCDCJYHQLV82kq/0lunfPyPjzI6RIVgc+R5DQ=
X-Google-Smtp-Source: AA6agR7/UrW+QxBp1GDEBfbEUEWdS/Lvqu3QAS+92yBbEjRpPrUs1hoArM09dP0XW6WXPZocehRNCpkOBMp7eC+2NU0=
X-Received: by 2002:a05:6000:1549:b0:225:652e:45d4 with SMTP id
 9-20020a056000154900b00225652e45d4mr12767512wry.15.1661964332436; Wed, 31 Aug
 2022 09:45:32 -0700 (PDT)
MIME-Version: 1.0
References: <875yig80ks.fsf@toke.dk>
In-Reply-To: <875yig80ks.fsf@toke.dk>
Date: Wed, 31 Aug 2022 09:45:19 -0700
Message-ID: <CAA93jw6Y9bv+f6OEupqCMphWc0z2pDv3icYjUV2K2Xm64WQBqg@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>
Subject: Re: [Cake] CAKE saves someone's job during the pandemic...
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVGh1LCBBdWcgMjUsIDIwMjIgYXQgMjozOSBQTSBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4g
dmlhIENha2UKPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiB3cm90ZToKPgo+IEkgZmlndXJl
ZCB5J2FsbCB3b3VsZCBmaW5kIHRoaXMgYW4gdXBsaWZ0aW5nIHN0b3J5IC0gSSBjZXJ0YWlubHkg
ZGlkIQo+Cj4gaHR0cHM6Ly9mb3J1bS5vcGVud3J0Lm9yZy90L25mdGFibGVzLWFuZC1xb3MtaW4t
MjAyMS8xMTIwMTMvNTMwCgpJIGNyaWVkLiB0aHguCgo+IC1Ub2tlCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBDYWtlIG1haWxpbmcgbGlzdAo+IENh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQv
bGlzdGluZm8vY2FrZQoKCgotLSAKRlEgV29ybGQgRG9taW5hdGlvbiBwZW5kaW5nOiBodHRwczov
L2Jsb2cuY2Vyb3dydC5vcmcvcG9zdC9zdGF0ZV9vZl9mcV9jb2RlbC8KRGF2ZSBUw6RodCBDRU8s
IFRla0xpYnJlLCBMTEMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6
Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

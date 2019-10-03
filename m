Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C72ACAEC4
	for <lists+cake@lfdr.de>; Thu,  3 Oct 2019 21:04:12 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5AE9B3CB38;
	Thu,  3 Oct 2019 15:04:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1570129451;
	bh=T/1i0CWeBRkmxUWoL/w+U6p1UdudtN89ZDId5qsjKg4=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pRP8LkJQLyaYJjObP+CxDd53m0hmG+flqO1L4jTZ6IJs3AJzM9/rHuQsw0qpT5wTB
	 8lU4JBI9Nq1qX+cgO/bEzUnSOXBNNOluSUJdMOmyD3BrwEL782xCG4D/npf3ESQyCv
	 oObqZq1Ey1Yn2UZOq7kUqJAsTnWTtHY9inbQ9s7/DrEnpBK78yPvYsqCvBEcpSxAPX
	 Ua+13BmAFx2GAnRcSRKh4iYzFDaz3EP59WLl9E3rQMFNKehqoF5yc1r4ZoRSP/fouk
	 lBCq0Odw0j6Xst4wKxw4oAEySBNFYRBxpcJ0KYG/c0QvNTXBCWWmvfNp9byuKaUnBX
	 kCHdqXxwrvjjQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 36FC63B2A4
 for <cake@lists.bufferbloat.net>; Thu,  3 Oct 2019 15:04:09 -0400 (EDT)
Received: by mail-lj1-x22e.google.com with SMTP id m7so3979241lji.2
 for <cake@lists.bufferbloat.net>; Thu, 03 Oct 2019 12:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=61g2uQ42wHR8SxExUrArTDbND4aqHuDMaGELZ2CkEuk=;
 b=AzLlOP1DxmLxZWyo0dLXOWdnXkWWGf9YO8Pxjgsxfge52pnDVX1Cm6d6n7/oGiZbDx
 NA1eQ1ra9jS9Si+Sp6q5v/niemJO1TnA0wMO12Q7Tvl/cT2yIbB1JG7wznDjECXXVMQC
 eaecBPId/H4kqcRByn1QsnKFy+kKRil/etoRIA22+1qaCzT5SY4E8WMqGkTr/bCyue0w
 66zHC/qUP8uyJldTix689YK9gtuTaDLkD3ItvkEnYe54ProhcXPJUb+BQjaTsdO3vD/e
 fuLUeGiQR2wBOmxlt4m0k2A7YMK5Ul8rhGbM0mT+U/797jm57n9HSrdz4UamH6KdfXYP
 YM5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=61g2uQ42wHR8SxExUrArTDbND4aqHuDMaGELZ2CkEuk=;
 b=GYIdpzyr1Q/TyLoz/okmQo9mnpmbgXV3kqa9XuyMXQoTXwKmztKgfGuWEGAuBaFUIg
 VwnMqTSfM7WXwkEIEfTdIlSsicVLHnIBB618dfBHsQbNwUktD/Vg6Hzq7dEEtx8/JY62
 1AqHJGm+8zHFCjr0+4w0XkqZHH86ceyb6jw0iv+ekvl/TWrYbbZAMx4cQ0UN1BUzRSsn
 LkhKloRv0nymrBkLW0Owu5RpsvgjvTNW5XMtDOozTvKiufvOHGkWq3rEPryedapWd/tm
 B5HXv+Ed4KqMq/IDB5J9bP4EMoV2lShIVZ8M5HWHPYWeiXc5uZTSaziS7KZYRnXW9D7f
 l56g==
X-Gm-Message-State: APjAAAVdR7tMpaEmBQKp7+FYfABGQHhJHPxsjxbtCjCZrmSqiHZZpg5W
 FCmJWAKC6mrtJiv19nwl2Hs=
X-Google-Smtp-Source: APXvYqxPgBI46ayVfvF5ekX513pM7Jvkihzlyp6epp4M+O9rnSYfRIyW3D5QlKGw/QipaEEbTT8aCg==
X-Received: by 2002:a2e:3a06:: with SMTP id h6mr7319051lja.128.1570129447785; 
 Thu, 03 Oct 2019 12:04:07 -0700 (PDT)
Received: from jonathartonsmbp.lan (83-245-233-7-nat-p.elisa-mobile.fi.
 [83.245.233.7])
 by smtp.gmail.com with ESMTPSA id n3sm604705lfl.62.2019.10.03.12.04.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 03 Oct 2019 12:04:06 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <a856e8a0-b454-465d-9112-8fab3eabade2@www.fastmail.com>
Date: Thu, 3 Oct 2019 22:04:04 +0300
Message-Id: <C0E02F31-BB74-4B02-BB9D-2EB3115BF91E@gmail.com>
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
 <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
 <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
 <43F02160-E691-4393-A0C0-8AB4AD962700@gmail.com>
 <a75b079e-8a29-46f1-9890-7eb73e18b0f2@www.fastmail.com>
 <E975CC03-A531-4450-A896-5C3921A9D063@gmail.com>
 <a856e8a0-b454-465d-9112-8fab3eabade2@www.fastmail.com>
To: Justin Kilpatrick <justin@althea.net>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] Fighting bloat in the face of uncertinty
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
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAzIE9jdCwgMjAxOSwgYXQgODo1MiBwbSwgSnVzdGluIEtpbHBhdHJpY2sgPGp1c3RpbkBh
bHRoZWEubmV0PiB3cm90ZToKPiAKPiBJJ3ZlIGRldmVsb3BlZCBhIHJvdWdoIHZlcnNpb24gb2Yg
dGhpcyBhbmQgcHV0IGl0IGludG8gcHJvZHVjdGlvbiBNb25kYXkuIEFmdGVyIGEgZmV3IHR3ZWFr
cyB3ZSdyZSBzZWVpbmcgYSB+MTB4IHJlZHVjdGlvbiBpbiB0aGUgbWFnbml0dWRlIG9mIGxhdGVu
Y3kgc3Bpa2VzIGF0IGhpZ2ggdXNhZ2UgdGltZXMuIAoKU291bmRzIHByb21pc2luZy4gIEtlZXAg
aXQgdXAhCgogLSBKb25hdGhhbiBNb3J0b24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

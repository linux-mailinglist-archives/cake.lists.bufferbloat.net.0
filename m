Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E690F47333D
	for <lists+cake@lfdr.de>; Mon, 13 Dec 2021 18:51:49 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C1ADF3CB39;
	Mon, 13 Dec 2021 12:51:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1639417908;
	bh=Egl3b38tJxko/B+AGSh0O8l04WNzP23rYBOxO0yRwlc=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dt2Va6g4BkoksHse0Hs6f3SvBi/FfSNmanHPpSlBX9TbgLolgOGcvZW0FtcOH5MvS
	 f9hZ7+0PvEU2cyhwogOdOJomQmuLjDYExmqgeQCq42Fvii1TovIpm8+o+uQBB+iNYK
	 M8gFQKoxCL3qwS8OGqKOEEq9/Ee0G1Bf5VdXXZWc5PxvrbeuLz2zW5pxERbFRC9p6c
	 LFGi7Sr1v61eqqct+RiKjWSoDORYqo2WaKoqZ8i2rExQDSJ9D+xAFCDH+uNM9vvN7/
	 2g4DsERel5hisV2iZuYOsndd2e3dzErF8AGPg70UhzcLkjlT7oIIr76evd9wPotygT
	 yXRJOt6npj/lw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com
 [IPv6:2607:f8b0:4864:20::d2d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 281EA3B29E
 for <cake@lists.bufferbloat.net>; Mon, 13 Dec 2021 12:51:48 -0500 (EST)
Received: by mail-io1-xd2d.google.com with SMTP id c3so19455876iob.6
 for <cake@lists.bufferbloat.net>; Mon, 13 Dec 2021 09:51:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=W1Tb9yRdFdIMcWqIM4+fPY0HJx2KJJPEPPtjnlRUAjs=;
 b=C1d9SnpomGNnn/w6w06dvLuCn8pB6YvUrcOgmHAI70trJKLckHBZh6FfOHNsRysOne
 YrQSu/on5kf/zgKhxXVgHeblfk5tBruuxwL+YDRqMp26Ai/URXWbUs9IhCSAukbhPtk9
 +TdGlyH6MSX4HcA5XvDkhPc3I5CIxjD9juy62za9YvFuc8M5T0Uar70lEUzH9BsrgJgH
 sserswWn2Iiajd8cHfav2zxWx0MAvylWh6ZlX2txjFvlT3bF4BVKAvfzF6r9EoyweC1n
 S4YcBMyzD+57KLutIBuDwQyTYwibkppAdoR62CTShdDpQVKdFt481mEn8XLT2VHpLyvO
 MNIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=W1Tb9yRdFdIMcWqIM4+fPY0HJx2KJJPEPPtjnlRUAjs=;
 b=odCbB+hFxr3bnqF6Lmi13RrbGlVrJcS7qx7GqkgK7xE0jnv9kr6a6p3GFR2vF6FyP0
 h2saQIpLdv5eMkSo0d+Xr8lvku8ZsbMUqQkO+x0MKr8yFXwuL5JCu5IZJ6R9Ah59q4Tq
 jr2vUr+vrO8xi6XltUNuob2iN79LUngb9lN4AMZaMa/Fhp9fmEvCWoPYKWY4WAQOgqbr
 jJNWGY6mYDP9KccCEo2y3myr9rEAmWHTGiLxvlpVt2+RytHVSIO6Cb1oGmGpPaFz1S4I
 0apXEO7FdV6FGdtkhzJTw9phda8Fa1r31KoCkTx6fHMZDLt1Q3i5HBGmTyaDHLFIYKCQ
 3VjA==
X-Gm-Message-State: AOAM531e+AOH2ZBLVAZ8PxANj6uUW9eJu6I5X+ROuEhPzVmPI4x9tBm9
 qW9fA/lVSOpl1YMiO7ahurWi1se/H4jMIhrn740xYu8k
X-Google-Smtp-Source: ABdhPJxZh4aAB4u9r/T+V+1v0MxayE83jtQYff/t+OQvMQPUhQnTsaV68geIi110U8cyX+4Cp3BiBgz6HO2m9Jlv/PE=
X-Received: by 2002:a02:ba8b:: with SMTP id g11mr33803397jao.128.1639417907500; 
 Mon, 13 Dec 2021 09:51:47 -0800 (PST)
MIME-Version: 1.0
References: <CAA93jw5WQ_sXPZSiSyMrBvwu=QZUsXiZxSuR0jJV9iLjqebiYA@mail.gmail.com>
 <18098E06-CB62-4967-B604-268063392C35@gmail.com>
In-Reply-To: <18098E06-CB62-4967-B604-268063392C35@gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Mon, 13 Dec 2021 09:51:34 -0800
Message-ID: <CAA93jw5kdaV=T58SnF2gP0wGHunbTRT7y8ZWjvgiYdn4q_rMEg@mail.gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
Subject: Re: [Cake] sometimes I worry about cobalt's effectiveness
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

SXQgdHVybnMgb3V0IHRoZSBob3N0IHN0YWNrIGlzIGRvaW5nIHNvbWV0aGluZyByZWFsbHkgdW51
c3VhbCwgIEkKdGhpbmsuIE5vdCBjYWtlLiBUb28gbWFueSBwbG90cyB0byBwb3N0IGhlcmUsIHBs
ZWFzZSBqb2luIHRoZSBmb3J1bSBpZgp5b3Ugd2FudCB0byBzY3JhdGNoIHlvdXIgaGVhZCB3aXRo
IHVzLgoKT24gTW9uLCBEZWMgMTMsIDIwMjEgYXQgOTo0NSBBTSBKb25hdGhhbiBNb3J0b24gPGNo
cm9tYXRpeDk5QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiA+IE9uIDEyIERlYywgMjAyMSwgYXQgOToz
NCBwbSwgRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBMT05H
IHN0cmluZyBvZiB0ZXN0cyBvbiBtaWtyb3RpayBhdCAxOU1iaXQgaGVyZToKPiA+IGh0dHBzOi8v
Zm9ydW0ubWlrcm90aWsuY29tL3ZpZXd0b3BpYy5waHA/cD04OTc1NTQjcDg5NzU1NAo+Cj4gSSBj
YW4ndCBzZWUgYW55IG9mIHRoZSBpbWFnZSBhdHRhY2htZW50cyBpbiB0aGF0IHRocmVhZCwgc2lu
Y2UgSSdtIG5vdCBhIG1lbWJlciBvZiB0aGUgZm9ydW0uICBJcyB0aGVyZSBhbnl0aGluZyB0aGF0
IHNjcmVhbXMgb2YgYmVpbmcgc29tZXRoaW5nIEkgc2hvdWxkIGJlIGF3YXJlIG9mPwo+Cj4gIC0g
Sm9uYXRoYW4gTW9ydG9uCgoKCi0tIApJIHRyaWVkIHRvIGJ1aWxkIGEgYmV0dGVyIGZ1dHVyZSwg
YSBmZXcgdGltZXM6Cmh0dHBzOi8vd2F5Zm9yd2FyZC5hcmNoaXZlLm9yZy8/c2l0ZT1odHRwcyUz
QSUyRiUyRnd3dy5pY2VpLm9yZwoKRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxp
c3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5u
ZXQvbGlzdGluZm8vY2FrZQo=

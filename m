Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 673B911F137
	for <lists+cake@lfdr.de>; Sat, 14 Dec 2019 10:50:33 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E16D73CB35;
	Sat, 14 Dec 2019 04:50:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1576317031;
	bh=alnnVHmUfhMfs0TeVN+YTQRZJT0Tf2aDPSBWhTLEbHE=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PBhv/1kCg5mzTolpFJat5bTfk665uQwv7apFy+pVArgFSROIoYduDQSqr0RXP9mPw
	 l2CDWZaVHgraXCwnKfcL+oPVt+L6PGMfNxLEHGOTxnqEyVZYQLgQ5b0HwJ+9lVbh+e
	 2mXLMWtOtGeqolF3G+9u2B+/VobZ9NlIY5fFx0V7W4nfbDKE3zIi2Z/9+oaEpr4sOq
	 S7uVw5CpTV3/Qi4HHdybDKCydPRGgiVek6c7rjvTBzMa3cD69zEJlD+uo/ywa0ayvS
	 iQrp3ZZSO5gfMMymW0+lB0hUtm//oO0GU347BP3YTT1dgYPn9b9MWjMis2goWKuyMK
	 VSSOU+s9yQQDw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1E78C3B29D
 for <cake@lists.bufferbloat.net>; Sat, 14 Dec 2019 04:50:31 -0500 (EST)
Received: by mail-lj1-x231.google.com with SMTP id a13so1391599ljm.10
 for <cake@lists.bufferbloat.net>; Sat, 14 Dec 2019 01:50:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=fPgHCYi57w9/CNAYJP5mcXUEaYSgOMHyi54qX7OlZAs=;
 b=TaBMp8eVjXRAb3ycXhH522aE3/B/gQO6lO0IgE03Y/letei1EbdT6YOeD3SQce1N8n
 +r34qMtEl7Wyu7uFVfCLtzlAyGqmrnYyqljFYqKbIAIxo5vSZYrJmYbrh/SthuFctlpm
 s73uHtlQilI0c9qKJkGJ51TUFaSmFqwxtcrkLB1Xg5jsE/QWTJWZaWMp+Bu/VCPOV46J
 G42YC7BM918DKZn9RU6D8lj5vs6wwOJi/YjJAClOOeZWbAX3k4gIFJ0irGLgwi934j2Q
 6KBlA6o6EFVDYBhMu9zu/HLUjzII5CoX0dRSwGhZGB8j/bbaHOrQHAwoQFkSyPWLD/I9
 wGkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=fPgHCYi57w9/CNAYJP5mcXUEaYSgOMHyi54qX7OlZAs=;
 b=sA/hmgnkDoD/FMWEeskHa1osC/PisHCd8UHc2TvbvgLNhdn4pEdVOBWAQM88MaoAdt
 uroMc6ESHvIlMG6pdf+n0/9tYRg6WxLSBZvmRv9E7L0+PXALan+mT8u2o6heouzxuGyf
 1q/ywaO7AIJRbTPLk4lQnhyklLD5hEz55zXkI1kjllYHykdw3uMtSHtMx4E0YSxdY5tb
 /hZ0vbULcGsRSkD0/6aW/C/F32fhwJTT2jYpsLwFxZ2PbK/Dzt/fk1wS9Ifn1L1WM9pS
 0VUbRutMA1pjquD977ura50GHo0f4sT9hEeWQLccV9tyj0UbGuSkLHALI/DJUq3rmle4
 ulyw==
X-Gm-Message-State: APjAAAWuPQnOee4DMvvdqaRoMwohEZvwypvyHQFkTB43bPFQEOL23yEG
 H3OQygtsadUqD7x6D7sV/J3s3Ki6
X-Google-Smtp-Source: APXvYqzssq5zD90HTc3GoiXtDsJ4CRtUq5gYb46B0Z8fH6dwdWa2ylDvAWW8/nkV2034dAA1sk6gRQ==
X-Received: by 2002:a05:651c:152:: with SMTP id
 c18mr12310437ljd.146.1576317030022; 
 Sat, 14 Dec 2019 01:50:30 -0800 (PST)
Received: from jonathartonsmbp.lan (83-245-229-102-nat-p.elisa-mobile.fi.
 [83.245.229.102])
 by smtp.gmail.com with ESMTPSA id v4sm6336064ljg.19.2019.12.14.01.50.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 14 Dec 2019 01:50:29 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
From: Jonathan Morton <chromatix99@gmail.com>
In-Reply-To: <46DDBCAA-EC6C-492F-8448-DF85ABB4E1DB@slashdirt.org>
Date: Sat, 14 Dec 2019 11:50:27 +0200
Message-Id: <1507FAF0-8A13-48E1-8A36-0D352F4FDD00@gmail.com>
References: <1d359153abfc413b4f61c647437427d6@slashdirt.org>
 <8FC615C8-4885-4F0A-B2EE-934DC4E806E8@gmail.com>
 <6E9587F7-C208-4568-8429-AEBA9E694E24@slashdirt.org>
 <E644DF87-72A0-43EC-ABD6-E8E2FAC26997@slashdirt.org>
 <46DDBCAA-EC6C-492F-8448-DF85ABB4E1DB@slashdirt.org>
To: Thibaut <hacks@slashdirt.org>
X-Mailer: Apple Mail (2.3445.9.1)
Subject: Re: [Cake] Trouble with CAKE
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
Cc: Erik Taraldsen via Cake <cake@lists.bufferbloat.net>,
 ldir@darbyshire-bryant.me.uk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBPbiAxNCBEZWMsIDIwMTksIGF0IDE6NTIgYW0sIFRoaWJhdXQgPGhhY2tzQHNsYXNoZGlydC5v
cmc+IHdyb3RlOgo+IAo+IEN1bHByaXQgdHVybmVkIG91dCB0byBiZSBlYXN5IHRvIGlkZW50aWZ5
OiBpdOKAmXMgdGhlIGN1cnJlbnQgbWFzdGVyIEhFQUQuCj4gCj4gUmV2ZXJ0aW5nIDE4M2IzMjAg
Zml4ZWQgdGhlIGlzc3VlLgoKVGhhdCdzIGV4dHJlbWVseSBvZGQuICBUaGF0IGNvbW1pdCBzaG91
bGQgb25seSBhZmZlY3QgdHJhZmZpYyBjYXJyeWluZyB0aGUgTEUgRFNDUCwgd2hpY2ggaXMgbm90
IHRoZSBkZWZhdWx0LgoKUGVyaGFwcyBpdCB3YXMgbm90IGFjdHVhbGx5IHRoZSBjb2RlIGNoYW5n
ZSwgYnV0IHRyaWdnZXJpbmcgYSByZWJ1aWxkIG9mIHRoZSBtb2R1bGU/CgogLSBKb25hdGhhbiBN
b3J0b24KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2Fr
ZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5i
dWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

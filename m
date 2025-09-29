Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 74161BAA9CB
	for <lists+cake@lfdr.de>; Mon, 29 Sep 2025 22:58:31 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 4C18D70AD7E;
	Mon, 29 Sep 2025 22:58:29 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=PVy2MwLp
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759179509;
 b=IXNrAFjDPRlAeLaZ6TF4nihEv5pgQNQjXAyOgZFJQppFhQv1UBPkqHNFhhh5rD+U43FXc
 d/aW/91Z32JT/vl7pSmVUGXMAcBHRaBYWO7yKmEfYmaDkxUMjyCxPqeYCQuT6CSmaTufp5n
 ff9yuhR3bLSE47QenIvI7sfnJtm3GU0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759179509; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=qOOg6Gdq8qh+zAwJ9TCaDEkCWxGL4/guWvpKalz1HCY=;
 b=1H7EdB7V2M/3vr6nE/c6lS9vaScKNw/i8ipzDCLylHyhoWzHnF81pr4MwA83ahuE/tuC+
 LoT4jJ1bsWVb1jZuGCs+ukDGn6muGX7nXIIn8qhXtbmj5iXS6/6f4zrv6P8pN39pmBOVbgw
 yHGMjWz9YF4HKLMZ4OpjAKzSX0suwJg=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
	by mail.toke.dk (Postfix) with ESMTPS id 34CA270AD5B
	for <cake@lists.bufferbloat.net>; Mon, 29 Sep 2025 22:58:26 +0200 (CEST)
Received: by mail-ej1-x629.google.com with SMTP id
 a640c23a62f3a-b3194020e86so822464666b.1
        for <cake@lists.bufferbloat.net>;
 Mon, 29 Sep 2025 13:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759179505; x=1759784305;
 darn=lists.bufferbloat.net;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+3D9eoLW+WPvlUlpPVr17qK9W0E6tzeNtT5N63I1w1w=;
        b=PVy2MwLpuhGurx65PPymIzBRd53J0HJv942+ra8LzLA05pz1XEOTjiSy3vECufc1/w
         JgAlQHxeuu3yzUDCGBg0IHPJrJCm6dJyCWNitYLmhouwPiU5foBiSS6zplKxZ1Pgt64r
         ilJ1s0WE2vjHwkQNsP/DHyJ8BH5F62DuJG8ON3XP+7C1dP4oa70BW1FcmqknADM4ravY
         DQTYdEI76URDN+Cqwd2lKhhh6t2uNmHTHEdcFpxCt3hakdhunfYNuP/TjgtUF1iqjM26
         FIAWEeMn7sgmHcz1Yoll1BS/K/oW7SsoJiEh36x8lxGMRUQxDT53TsPUtOm1zks9ZQbO
         8Ltg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759179505; x=1759784305;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+3D9eoLW+WPvlUlpPVr17qK9W0E6tzeNtT5N63I1w1w=;
        b=JgU/v0JOuzh0FJJjfFpUt38THNo4stE8/C+te+ZBySgq2tdIuMnVFrWayHJ9MWIAj9
         8byyt509VdvTvui6cVNufcoIR948zinUnbkj3cg9ED1wtpHMr5+2WS3ILZpxo5TklNW7
         M0goSQy+y9A0HtShzxf2XrMS2tq9hME+6e2Bo/OkQbESIL8iZ/tlbJj3SvZ8vW3nRydu
         W9DqgwgOpB2diEBGOI1bu1fhFRtPx/EMWSktr/tYQUv5Hdgxhp4voouPYaGoOc/M8W74
         4zCE7QxEUSiKvwfMHKhgu5Zd3IsfU7fyaZNMfg+BgmY6eenVX6/KgW5e5hCqUGLIln1C
         Irkg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWRVikfBYT91cj+dPpOFBZ2n7H3BkPkehCtnqt29YqhmUzXHOSfwIu/N1g8qEdZqoVPlC6h@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yzl0l5Lvk3BaiJo6n07r68RpWdJvBk2rV+Ek3BD4+3dBv2GZ8hS
	DjioJ65CbeScjg7fQvQtToQPESzr3/rd5FHEDTZFee2QAyWK/CeoO3gt3M6R7wfMR9y1bDcYEyb
	lJ7cXuNak5IWA4v20H49eco71s6mbGS8=
X-Gm-Gg: ASbGncv3dUP2Zte7R1Cep9v24WQB77aNIzrI2P1jPwlt30SBYBUxTe9DG/JX4ta0Orp
	Y3seBJXR8c3Ck37QXeWdTIE8Y2ijtoKfw8/m6CWIoIc5T5j0yvYMxKu88J7hmg7I1qP72VqhrI2
	RnUniFiJHGdkzTdYz+VQL0tF18JvP1wliykOD0w5tOtUD/tg4BVEue+5KLvRUA8+NNP5I97Jolu
	sETeMX1
X-Google-Smtp-Source: 
 AGHT+IF1HZD22WPCh+LmavdHe8mFjtwF+hGvVzXA7DA1AvuArbMlrcgqiuQRr3wJin0LUHdM6hLuhCfHuLNafvCBZ7Q=
X-Received: by 2002:a17:907:7295:b0:b31:ba55:4d13 with SMTP id
 a640c23a62f3a-b34b987c3b5mr1797164866b.29.1759179504743; Mon, 29 Sep 2025
 13:58:24 -0700 (PDT)
MIME-Version: 1.0
From: Frantisek Borsik <frantisek.borsik@gmail.com>
Date: Mon, 29 Sep 2025 22:59:49 +0200
X-Gm-Features: AS18NWD4JoyfKQTP46aHTyXW12oBjRT9-e9EUUJSABn1cYFyceA6os-QeABJJgw
Message-ID: 
 <CAJUtOOiFbiG6PUWh_kHnhg4OSB-Yt1ok1H0ftrOZM0sc1pyYhA@mail.gmail.com>
To: libreqos <libreqos@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>,
	bloat <bloat@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
	Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
	Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>
Message-ID-Hash: 56F7GWWCFN24VO6RYCQBZ7LL3XO76BKZ
X-Message-ID-Hash: 56F7GWWCFN24VO6RYCQBZ7LL3XO76BKZ
X-MailFrom: frantisek.borsik@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Keynote: QoE/QoS - Bandwidth Is A Lie! at WISPAPALOOZA 2025 (October
 16)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAJUtOOiFbiG6PUWh_kHnhg4OSB-Yt1ok1H0ftrOZM0sc1pyYhA@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gdG8gYWxsLA0KDQpJIHdpbGwgYmUgbW9kZXJhdGluZyBhIGRpc2N1c3Npb24gcGFuZWwg
IktleW5vdGU6IFFvRS9Rb1MgLSBCYW5kd2lkdGggSXMgQQ0KTGllISIgYXQgV0lTUEFQQUxPT1pB
IDIwMjUgaW4gTGFzIFZlZ2FzLCBOZXZhZGEsIG9uIFRodXJzZGF5LCBPY3RvYmVyIDE2LA0KYXQg
OUFNIFBEVC4NCg0KaHR0cHM6Ly93d3cud2lzcGFldmVudHMub3JnL1dQQUxPT1pBMjUvc2Vzc2lv
bi8zMDA3NDk0L2tleW5vdGUtcW9lcW9zLWJhbmR3aWR0aC1pcy1hLWxpZQ0KDQouLi53aXRoIGV2
ZXJ5Ym9keSByZWxldmFudCBpbiB0aGlzIGdhbWU6DQoNCipBcHBMb2dpYyBOZXR3b3JrcyogKGZv
cm1lcmx5IFNhbmR2aW5lKSB3aWxsIGJlIHJlcHJlc2VudGVkIGJ5IGl0cyBDVE8sDQpBbGV4YW5k
ZXIgSGF2w6RuZywgKkJlcXVhbnQgKmJ5IGl0cyBDRU8gYW5kIENvLUZvdW5kZXIsIEpvc2UgTG9w
ZXosICpDYW1iaXVtDQpOZXR3b3JrcyogYnkgaXRzIFNlbmlvciBEaXJlY3RvciBvZiBFbmdpbmVl
cmluZywgRG1pdHJ5IE1vaXNlZXYsICpQYXJhcXVtDQpUZWNobm9sb2dpZXMqIGJ5IGl0cyBGb3Vu
ZGVyL0NFTy9EaXJlY3RvciwgQWppdGggUGFzcXVhbCwgKlByZXNlZW0qIChCeQ0KQXRlcmxvIE5l
dHdvcmtzKSBieSBpdHMgRm91bmRlciBhbmQgQ2hpZWYgUHJvZHVjdCBPZmZpY2VyLCBEYW4gU2ll
bW9uIGFuZA0KbGFzdCBidXQgbm90IGxlYXN0LCAqTGlicmVRb1MqIHdpbGwgYmUgcmVwcmVzZW50
ZWQgYnkgb3VyIENoaWVmIFByb2R1Y3QNCk9mZmljZXIsIEhlcmJlcnQgV29sdmVyc29uLg0KDQpJ
dCB3YXMsIG9idmlvdXNseSwgcmVzZXJ2ZWQgdG8gb3VyIGJlbG92ZWQgRGF2ZSBUw6RodCwgYnV0
IEkgd2FzIGZvcmNlZCB0bw0KcGljayBpdCB1cCBpbnN0ZWFkIG9mIGhpbS4uLmJ5IHRoZSBjaXJj
dW1zdGFuY2VzLg0KDQoqSG9wZSB0byBzZWUgYXQgbGVhc3Qgc29tZSBvZiB5b3UgaW4gTGFzIFZl
Z2FzIC0gd2Ugd2lsbCBiZSBhdCB0aGUgYm9vdGgNCiM2MzAhKg0KDQpBbGwgdGhlIGJlc3QsDQoN
CkZyYW5rDQoNCkZyYW50aXNlayAoRnJhbmspIEJvcnNpaw0KDQoNCipJbiBsb3ZpbmcgbWVtb3J5
IG9mIERhdmUgVMOkaHQ6ICoxOTY1LTIwMjUNCg0KaHR0cHM6Ly9saWJyZXFvcy5pby8yMDI1LzA0
LzAxL2luLWxvdmluZy1tZW1vcnktb2YtZGF2ZS8NCg0KDQpodHRwczovL3d3dy5saW5rZWRpbi5j
b20vaW4vZnJhbnRpc2VrYm9yc2lrDQoNClNpZ25hbCwgVGVsZWdyYW0sIFdoYXRzQXBwOiArNDIx
OTE5NDE2NzE0DQoNCmlNZXNzYWdlLCBtb2JpbGU6ICs0MjA3NzUyMzA4ODUNCg0KU2t5cGU6IGNh
c2lvYTUzMDJjYQ0KDQpmcmFudGlzZWsuYm9yc2lrQGdtYWlsLmNvbQ0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QgLS0gY2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBj
YWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=

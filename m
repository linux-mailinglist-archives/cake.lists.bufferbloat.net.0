Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF07B4AAC7
	for <lists+cake@lfdr.de>; Tue,  9 Sep 2025 12:33:38 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id ADE576523F3;
	Tue, 09 Sep 2025 12:33:33 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=Si1rB2xe
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1757414013;
 b=hZtpoq/Erx9oMZKR7r7g6knxxNVodBXEAsNU9ObmdYgWugQvDlGeIt5eNhmUJp9mq9uUp
 xDnmy2HGClElve5ZO7sCu5Pt8Mo/9Ql/XMPiR2Y6n/HBdxxYZaJvfzaKm8FCZrZrAMkH8nF
 aQe9/xT0jctMmfap7YMFfU6pNgohoU4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1757414013; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=nVEC5D3awp1si5nARRG23cbnk90fPJRpWbcft/YMklg=;
 b=bODIoBSpzT9rUVRmy4VpTM4uapsIhAkp7er0+VAU60wS3z+yjlbK8zbxNYAvwsTkV9Gsi
 GdMnMLT5lk3zdVqgDUGbU7caXnSOc3W2aESpI36f90mvsiMNTEpqmOAF0c0ea7LgzOtaJ5l
 qosgjjNG1Dqb1c7GYi5j8XUM9aZ5o+g=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
	by mail.toke.dk (Postfix) with ESMTPS id ACAFC65239B;
	Tue, 09 Sep 2025 12:33:31 +0200 (CEST)
Received: by mail-ej1-x635.google.com with SMTP id
 a640c23a62f3a-b043da5a55fso728676366b.0;
        Tue, 09 Sep 2025 03:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757413951; x=1758018751;
 darn=lists.bufferbloat.net;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uWzdRWvHNNpv0UMH3RykivOgoOknQ4ITMxazv6xQurU=;
        b=Si1rB2xeg0XhCB0j+PIiAAa7X60Zrvw0wfHde/FFG0yltCFQHxnCClAHMj5RsouDJ+
         GMqEMwfxwiLf8H6WTU1ipOsc9P2CjciikT40isTruxOvh8gRAZMsxGhaltZ+oESzMjbJ
         4hu86erwtDNo1t55dZ8Rpy/wjc/zgp3npBVQGwoxSxR//JObKdgO6vlRK2ZDj8iYauwx
         BrS+2PinPHdB8AUXetbnYRW52wWOyVwNU8wz4a2isl8VFW9olLc4AEZjYLmDNU0FuQm6
         ThEwXhdkrrpgk47r7TUltLEIFYNQE/JVHcvxVJL0fNXYPLYXsc0NPqqPi+iy0cWe6QO/
         IAcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757413951; x=1758018751;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uWzdRWvHNNpv0UMH3RykivOgoOknQ4ITMxazv6xQurU=;
        b=kGHZVmA623p+7on+S9OissMwcFxpiVAMQkD3uD9K5Y0zhBToedtKrXKxGS0Wt9IAgz
         Kh7pqc2jkbznj9bIXNQs62+3VzWCi1f+ZJsVBZRCHwR4X84rxVOByHJlLkhLGLo1OcaU
         Q+5whH//GbjmWSxFipyxyFm7MmaJ68WY/mp7Rb/ncFMH14cb09r1uwK92Sb5//hqso6h
         NujK/0VqnlzjLFemeoGcvCXatVsqosYZbRoj2nCgir+QbH6fxXbhK8xRkfVXSeUoJQJ6
         pfV9zRKXQ7NZqbwdVm29Ck8Z8kDKcrgvBMocQJ3RULnniWFHG61/+VGeoRlQNYmu/Gh+
         OEow==
X-Forwarded-Encrypted: i=1;
 AJvYcCUVQKh/ngEV5Xx+WY8iF46MQAJh6YCQnQo0fQuY8AuCVwz2MYjRyLhZ/o4A6T9tVqIHtsWt@lists.bufferbloat.net,
 AJvYcCVGFOzkaca8Zq57Mrv0CBwI9xz/iH3f/27FLQ41FXlag7PMJiuUfdyw09g6hD5Jldb9wdcTag==@lists.bufferbloat.net,
 AJvYcCWY7TikjYPX6DT2dSJQjSehoKeClCntJlyDfoAd6US9VTajFfQMxJxyqqkFD8qplMCS5aHO9Mw=@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yzky/bWGabsQ7iw1+SgYJ+nposmVQwKhu5YYu3Ha9sFFn6XKXVH
	Fk9WoBtah+Ge7rCeQMPkMhEPNV6ZlJgAZV8/Cxo7vnWmzhSx1VPffZQdghZotcn7k1gFBHehGTi
	ATqZ+i+Tb8pgyHEbqivRl1AJpHwI/Dio0fKh4
X-Gm-Gg: ASbGnctJxxjSA0QV/o0hu8k9yjLtnbdY2RHmF6Pf6wKqOAH1SqRZcb+faFIvNfTkozc
	XDwpreF8E/fYomkYmInGdjlJ9Ye6Y9t60BONIeRXyhla9H+BHlq4A7IsO+ygCka+QmhIvD8XKCn
	IpWPZUaMwG0wvDKVFK4PcgjwdIYrvBUprZ42upKKTn3S9cZpuZlCVnwQ5mdl7FrEiSDpo62Sf6Q
	TBAYNP0EuaN5wcZb2EfewgZSlWxTQuWkmI71vQQsI4bQL0I8FkzHSQ/mBCHYFuLW4+4N0bsJAC9
	ZA/F9Rh0BwNOX47i4g/msZX4Js3Q+O/Spto6RnH2m7NwozfGjl8S6l0Yuat5KEKgGiZwPS9a4TU
	=
X-Google-Smtp-Source: 
 AGHT+IHcPOgIxpn4poFRl8ama10XOZweEcPOHjMwL4XHgvAudYgUcu/XB7RRLa1smTZ/1NKl/6UrV25p6a6LAM5deJs=
X-Received: by 2002:a17:906:9c84:b0:ae9:c494:1ade with SMTP id
 a640c23a62f3a-b04b173b495mr982231366b.53.1757413950619; Tue, 09 Sep 2025
 03:32:30 -0700 (PDT)
MIME-Version: 1.0
From: Frantisek Borsik <frantisek.borsik@gmail.com>
Date: Tue, 9 Sep 2025 12:32:52 +0200
X-Gm-Features: Ac12FXyCq7CHj6JUngczgTybfohAEhkUMViY9WEOGVg6TFT5ZQ0Mxm8qJhXrXKs
Message-ID: 
 <CAJUtOOhdVJCiRqhOTmdiPNmZEq9_dA+k=evLWX1UsB=ySHpf_A@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
	bloat <bloat@lists.bufferbloat.net>,
	Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>
Message-ID-Hash: QLI4LS37W6BMD3ZLYIZ3QI66BXOQUQT7
X-Message-ID-Hash: QLI4LS37W6BMD3ZLYIZ3QI66BXOQUQT7
X-MailFrom: frantisek.borsik@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] XDP2 is here - from one and only Tom Herbert (almost to the date,
 10 years after XDP was released)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAJUtOOhdVJCiRqhOTmdiPNmZEq9_dA+k=evLWX1UsB=ySHpf_A@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gdG8gYWxsLA0KDQpMb29rcyBpbnRlcmVzdGluZzoNCmh0dHBzOi8vbWVkaXVtLmNvbS9A
dG9tXzg0OTEyL3hkcDItdGhpcy1jaGFuZ2VzLWV2ZXJ5dGhpbmctYXQtbGVhc3QtZm9yLWFpLW1s
LWluZnJhc3RydWN0dXJlLTg1MGMxYmE4Mjc3MQ0KDQoNCkFsbCB0aGUgYmVzdCwNCg0KRnJhbmsN
Cg0KRnJhbnRpc2VrIChGcmFuaykgQm9yc2lrDQoNCg0KKkluIGxvdmluZyBtZW1vcnkgb2YgRGF2
ZSBUw6RodDogKjE5NjUtMjAyNQ0KDQpodHRwczovL2xpYnJlcW9zLmlvLzIwMjUvMDQvMDEvaW4t
bG92aW5nLW1lbW9yeS1vZi1kYXZlLw0KDQoNCmh0dHBzOi8vd3d3LmxpbmtlZGluLmNvbS9pbi9m
cmFudGlzZWtib3JzaWsNCg0KU2lnbmFsLCBUZWxlZ3JhbSwgV2hhdHNBcHA6ICs0MjE5MTk0MTY3
MTQNCg0KaU1lc3NhZ2UsIG1vYmlsZTogKzQyMDc3NTIzMDg4NQ0KDQpTa3lwZTogY2FzaW9hNTMw
MmNhDQoNCmZyYW50aXNlay5ib3JzaWtAZ21haWwuY29tDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAtLSBjYWtlQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVh
dmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==

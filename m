Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CC2B99CB0
	for <lists+cake@lfdr.de>; Wed, 24 Sep 2025 14:16:44 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 7065F6E8370;
	Wed, 24 Sep 2025 14:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1758716198;
	bh=gHtQUvQTeKiN2gP807M+3YUze9aWix//goh1fJfp3ik=;
	h=Date:To:Cc:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=UzUoPSksI0QDfxJ6w1/XuMr87XaYpnjZNK2mI8HCSE2FWMVkxhGkee+SZFE7AmG1C
	 yM5AGCY8VFSGTFd/4yzx/XUMFJT7si+RlG/DYcXxr7wU9DWZdiS34LxdzhWLyQePn6
	 jo0jLtSMbCIf5rUzEB8WwZ3i1oF42HMpfAIy+haBGlB4rOziAoSF3vSyD6yojL1AS6
	 1IMhAC0N9EuDLK1wszHhwWeWbcs79DnGh1bhpspBtqMnR2wKnASFP0Mc5JbN9hXcrL
	 e3aXGICdJqXGFc3jnPCnk3IwZHldjUmFTL+gClq4mH3mfexcShPXI9s1bNXUArpYAP
	 foLjfDhvl85Dg==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1758716198;
 b=LU5HWUVZhhKfYZ7hnQtLI48MY2+O/YLE7a6xHIj40IdH2E5UZhAHwAv47Bt7iCLdUVNjy
 rccrYBz0Nfi/LhZT3zjA/S9P3gatnGsJ4L8ous/gnHjUxsMkSuv1ZXR+qtyvdloHJ8pXw65
 xTnp+nGaqxMW/GijaiI5UI9QYUxh7eA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1758716198; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=gHtQUvQTeKiN2gP807M+3YUze9aWix//goh1fJfp3ik=;
 b=vUBGHbAMiXsnkIjJIM7jy88VMp/FEQVXaiDB774kk5303QdZRtkdbiHba0YN9mO3vXaDc
 /mIGjp9CqSSQbyg+6Gx8XgXHhjEK9OBGXWcNQQxhc9XA7koBdPyV/QYft6APFwGtcuS6Oa2
 /KDbBPcXpXAXPwhgD9EMsP2dCKEmUMI=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=redhat.com;
 arc=none;
 dmarc=pass header.from=redhat.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=redhat.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=redhat.com
 policy.dmarc=quarantine
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.toke.dk (Postfix) with ESMTPS id 555A56E8315
	for <cake@lists.bufferbloat.net>; Wed, 24 Sep 2025 14:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1758716194;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=TuPth1OMCQ8SbxKm/775cV+Dy82pA/caL4LJk1/VWIk=;
	b=TCCn+CbqmSkwhuVwvDF+senr8P+h8jOhzER5OzRGMqWLt8KaP9Np3t3En3P5H7jlCwbydW
	h3jBe9DB+aTw9FJL7/4JjEiciJA6YII+RGKHAZoaipKXXrFpfQK/IaRrGMoNrEGuzHe1uP
	zsiHGKV9XzjpeKTAZ/ruwMoMxQvESC0=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-683-kAwK1Nr3MxKlm-rECv_G_w-1; Wed, 24 Sep 2025 08:16:33 -0400
X-MC-Unique: kAwK1Nr3MxKlm-rECv_G_w-1
X-Mimecast-MFC-AGG-ID: kAwK1Nr3MxKlm-rECv_G_w_1758716192
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-b04a8ae1409so656183466b.2
        for <cake@lists.bufferbloat.net>;
 Wed, 24 Sep 2025 05:16:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758716192; x=1759320992;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TuPth1OMCQ8SbxKm/775cV+Dy82pA/caL4LJk1/VWIk=;
        b=BxVVB5ReUMJzGioVUuumSM5yFc4628ouQEGvZKFPzMq6LG/jaPnfWScOzekcVImVZn
         2er3vbW6p4811oBPtcsLe2U21TQWYkybRUVv8rC6fneghqRXsitRgqtt3zx0+/SJfOos
         Rf3XICdUNb3FpAZ3A0ZVrzHLyCqCeildT5ChjbjIvGLVTSQX978tp0ZuYR/OJyv5B2Da
         qGEGI4tzBCQs4l+XOaU86Idww7D/1M9MxQVj9OGrVxGL45myzE327ijvm0UCAicY+vOs
         1V3iM7fYVVPJptMAZA6EAKM8W1hrh8wyEyDSFLSFGTewny3ZApGjzMr4I9khxtHuyh/m
         r3Ow==
X-Forwarded-Encrypted: i=1;
 AJvYcCWYzJZpkcZU9gTdEEiXKlAZIoM9mHejC5bJZsWWfDt5iVf/2p7ray6CG1ccw8pedpZupLAX@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzcTJNPjcaWYQfcM9n1Pk+DtLsLZF9JuaJUJAUulcmt7XS0+MVK
	JrE8Tq7P5iLazkcF8FsMt+C+EsV3RNu58ffHX5KzQrUqnXYUviDOAggM1EaoGGYBCBOzGvOm/Fy
	HmLz6V4vC/96fNEIClxiW5EvkqBwvyodxTyU0HqAPYYLsCPwiMYckIrAuOdYln78=
X-Gm-Gg: ASbGncs7eO7LbYPv32J/0xqwJUryjOoTYVLzA9QibMPdyOw57NQhKl0L+lKPyKJtCdi
	HSul2Br5yNb0FaV0PvLK2aWCS0i4p90D01zuYf+V5D+oHNFkU23zDObTgQy/qLapsSqZ0gt4syR
	If82nOCQjFbSNlLZc6Ko3pXADjy9ykZqkiirGCR+czzZTPpwYwX01oUufRY4sozLxMoyb82FAvt
	GTO/V4hJQzkw+IH4Ic4arDeSUBaNeXLmU99hA+FEP1HFtz/V44tjsjItimEGR+V1+4hknWaZPJL
	ydjmm1rVra7ZDeCrHS/AGoUuSBNHBdzqsCI5UUFkgGF8WNiy83+JhkxM9aQv9RR5LYw=
X-Received: by 2002:a17:907:7e8f:b0:b19:4e64:4f1a with SMTP id
 a640c23a62f3a-b302c4e9e23mr502596366b.58.1758716192087;
        Wed, 24 Sep 2025 05:16:32 -0700 (PDT)
X-Google-Smtp-Source: 
 AGHT+IEDZH0PSUoiLS7X01leMKuEsxf5JPkNqDgQTQKpSLi7IeJxy/OrQqJ1qPDfQ2S/U+UVVai9Jg==
X-Received: by 2002:a17:907:7e8f:b0:b19:4e64:4f1a with SMTP id
 a640c23a62f3a-b302c4e9e23mr502593566b.58.1758716191604;
        Wed, 24 Sep 2025 05:16:31 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.borgediget.toke.dk.
 [2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b2761cb52aesm1097887666b.54.2025.09.24.05.16.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 05:16:27 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 4AF09276E26; Wed, 24 Sep 2025 14:16:26 +0200 (CEST)
Date: Wed, 24 Sep 2025 14:16:02 +0200
Message-Id: <20250924-mq-cake-sub-qdisc-v1-0-43a060d1112a@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAALh02gC/x3MQQqDMBBG4auEWXcgBrLQbcEDdFu60OSPHaSxZ
 mwRxLs3dPkt3jtIUQRKnTmo4CsqS65oLobCc8gTWGI1Oeu8ba3j18phmMH6GXmNooFDTHb0bXQ
 Jnmr3Lkiy/593uvVXk7Fxxr7R4zx/ZzX1pXEAAAA=
X-Change-ID: 20250902-mq-cake-sub-qdisc-cdf0b59d2fe5
To: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>
Cc: =?utf-8?q?Jonas_K=C3=B6ppeler?= <j.koeppeler@tu-berlin.de>,
 cake@lists.bufferbloat.net, netdev@vger.kernel.org,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
X-Mailer: b4 0.14.2
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: A0ONhHoCFJTqwL5WYvSkiMsYKbrJ6jPEJBUHvZXudag_1758716192
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: UKJKUW444EEUD2BLOD5V5SFSKBYKAOIG
X-Message-ID-Hash: UKJKUW444EEUD2BLOD5V5SFSKBYKAOIG
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH RFC net-next 0/4] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20250924-mq-cake-sub-qdisc-v1-0-43a060d1112a@redhat.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Reply-To: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Content-Transfer-Encoding: base64

VGhpcyBzZXJpZXMgYWRkcyBhIG11bHRpLXF1ZXVlIGF3YXJlIHZhcmlhbnQgb2YgdGhlIHNjaF9j
YWtlIHNjaGVkdWxlciwNCmNhbGxlZCAnY2FrZV9tcScuIFVzaW5nIHRoaXMgbWFrZXMgaXQgcG9z
c2libGUgdG8gc2NhbGUgdGhlIHJhdGUgc2hhcGVyDQpvZiBzY2hfY2FrZSBhY3Jvc3MgbXVsdGlw
bGUgQ1BVcywgd2hpbGUgc3RpbGwgZW5mb3JjaW5nIGEgc2luZ2xlIGdsb2JhbA0KcmF0ZSBvbiB0
aGUgaW50ZXJmYWNlLg0KDQpUaGUgYXBwcm9hY2ggdGFrZW4gaW4gdGhpcyBwYXRjaCBzZXJpZXMg
aXMgdG8gaW1wbGVtZW50IGEgc2VwYXJhdGUgcWRpc2MNCmNhbGxlZCAnY2FrZV9tcScsIHdoaWNo
IGlzIGJhc2VkIG9uIHRoZSBleGlzdGluZyAnbXEnIHFkaXNjLCBidXQgZGlmZmVycw0KaW4gYSBj
b3VwbGUgb2YgYXNwZWN0czoNCg0KLSBJdCB3aWxsIGFsd2F5cyBpbnN0YWxsIGEgY2FrZSBpbnN0
YW5jZSBvbiBlYWNoIGhhcmR3YXJlIHF1ZXVlIChpbnN0ZWFkDQogIG9mIHVzaW5nIHRoZSBkZWZh
dWx0IHFkaXNjIGZvciBlYWNoIHF1ZXVlIGxpa2UgJ21xJyBkb2VzKS4NCg0KLSBUaGUgY2FrZSBp
bnN0YW5jZXMgb24gdGhlIHF1ZXVlcyB3aWxsIHNoYXJlIHRoZWlyIGNvbmZpZ3VyYXRpb24sIHdo
aWNoDQogIGNhbiBvbmx5IGJlIG1vZGlmaWVkIHRocm91Z2ggdGhlIHBhcmVudCBjYWtlX21xIGlu
c3RhbmNlLg0KDQpEb2luZyB0aGluZ3MgdGhpcyB3YXkgZG9lcyBpbmN1ciBhIGJpdCBvZiBjb2Rl
IGR1cGxpY2F0aW9uIChyZXVzaW5nIHRoZQ0KJ21xJyBxZGlzYyBjb2RlKSwgYnV0IGl0IHNpbXBs
aWZpZXMgdXNlciBjb25maWd1cmF0aW9uIGJ5IGNlbnRyYWxpc2luZw0KYWxsIGNvbmZpZ3VyYXRp
b24gdGhyb3VnaCB0aGUgY2FrZV9tcSBxZGlzYyAod2hpY2ggYWxzbyBzZXJ2ZXMgYXMgYW4NCm9i
dmlvdXMgd2F5IG9mIG9wdGluZyBpbnRvIHRoZSBtdWx0aS1xdWV1ZSBhd2FyZSBiZWhhdmlvdXIp
Lg0KDQpUaGUgY2FrZV9tcSBxZGlzYyB0YWtlcyBhbGwgdGhlIHNhbWUgY29uZmlndXJhdGlvbiBw
YXJhbWV0ZXJzIGFzIHRoZQ0KY2FrZSBxZGlzYywgcGx1cyBvbiBhZGRpdGlvbmFsIHBhcmFtZXRl
ciB0byBjb250cm9sIHRoZSBzeW5jIHRpbWUNCmJldHdlZW4gdGhlIGluZGl2aWR1YWwgY2FrZSBp
bnN0YW5jZXMuDQoNCldlIGFyZSBwb3N0aW5nIHRoaXMgc2VyaWVzIHRvIHNvbGljaXQgZmVlZGJh
Y2sgb24gdGhlIEFQSSwgYXMgd2VsbCBhcw0Kd2lkZXIgdGVzdGluZyBvZiB0aGUgbXVsdGktY29y
ZSBzaGFwZXIuDQoNCkFuIGVhcmxpZXIgdmVyc2lvbiBvZiB0aGlzIHdvcmsgd2FzIHByZXNlbnRl
ZCBhdCB0aGlzIHllYXIncyBOZXRkZXZjb25mOg0KaHR0cHM6Ly9uZXRkZXZjb25mLmluZm8vMHgx
OS9zZXNzaW9ucy90YWxrL21xLWNha2Utc2NhbGluZy1zb2Z0d2FyZS1yYXRlLWxpbWl0aW5nLWFj
cm9zcy1jcHUtY29yZXMuaHRtbA0KDQpUaGUgcGF0Y2ggc2VyaWVzIGlzIHN0cnVjdHVyZWQgYXMg
Zm9sbG93czoNCg0KLSBQYXRjaCAxIGZhY3RvcnMgb3V0IHRoZSBzY2hfY2FrZSBjb25maWd1cmF0
aW9uIHZhcmlhYmxlcyBpbnRvIGENCiAgc2VwYXJhdGUgc3RydWN0IHRoYXQgY2FuIGJlIHNoYXJl
ZCBiZXR3ZWVuIGluc3RhbmNlcy4NCg0KLSBQYXRjaCAyIGFkZHMgdGhlIGJhc2ljIGNha2VfbXEg
cWRpc2MsIGJhc2VkIG9uIHRoZSBtcSBjb2RlDQoNCi0gUGF0Y2ggMyBhZGRzIGNvbmZpZ3VyYXRp
b24gc2hhcmluZyBhY3Jvc3MgdGhlIGNha2UgaW5zdGFuY2VzIGluc3RhbGxlZA0KICB1bmRlciBj
YWtlX21xDQoNCi0gUGF0Y2ggNCBhZGRzIHRoZSBzaGFyZWQgc2hhcGVyIHN0YXRlIHRoYXQgZW5h
YmxlcyB0aGUgbXVsdGktY29yZSByYXRlDQogIHNoYXBpbmcNCg0KQSBwYXRjaCB0byBpcHJvdXRl
MiB0byBtYWtlIGl0IGF3YXJlIG9mIHRoZSBjYWtlX21xIHFkaXNjIGlzIGluY2x1ZGVkIGFzDQph
IHNlcGFyYXRlIHBhdGNoIGFzIHBhcnQgb2YgdGhpcyBzZXJpZXMuDQoNCi0tLQ0KSm9uYXMgS8O2
cHBlbGVyICgxKToNCiAgICAgIG5ldC9zY2hlZDogc2NoX2Nha2U6IHNoYXJlIHNoYXBlciBzdGF0
ZSBhY3Jvc3Mgc3ViLWluc3RhbmNlcyBvZiBjYWtlX21xDQoNClRva2UgSMO4aWxhbmQtSsO4cmdl
bnNlbiAoMyk6DQogICAgICBuZXQvc2NoZWQ6IHNjaF9jYWtlOiBGYWN0b3Igb3V0IGNvbmZpZyB2
YXJpYWJsZXMgaW50byBzZXBhcmF0ZSBzdHJ1Y3QNCiAgICAgIG5ldC9zY2hlZDogc2NoX2Nha2U6
IEFkZCBjYWtlX21xIHFkaXNjIGZvciB1c2luZyBjYWtlIG9uIG1xIGRldmljZXMNCiAgICAgIG5l
dC9zY2hlZDogc2NoX2Nha2U6IFNoYXJlIGNvbmZpZyBhY3Jvc3MgY2FrZV9tcSBzdWItcWRpc2Nz
DQoNCiBpbmNsdWRlL3VhcGkvbGludXgvcGt0X3NjaGVkLmggfCAgIDIgKw0KIG5ldC9zY2hlZC9z
Y2hfY2FrZS5jICAgICAgICAgICB8IDYzNSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KystLS0tLS0tLQ0KIDIgZmlsZXMgY2hhbmdlZCwgNTE0IGluc2VydGlvbnMoKyksIDEyMyBkZWxl
dGlvbnMoLSkNCi0tLQ0KYmFzZS1jb21taXQ6IGRjMWRlYTc5NmIxOTdhYmEyYzNjYWUyNWJmZWY0
NWY0YjNhZDQ2ZmUNCmNoYW5nZS1pZDogMjAyNTA5MDItbXEtY2FrZS1zdWItcWRpc2MtY2RmMGI1
OWQyZmU1DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkNha2UgbWFpbGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK

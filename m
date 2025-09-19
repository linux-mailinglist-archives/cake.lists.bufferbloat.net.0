Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9E2B8A1AC
	for <lists+cake@lfdr.de>; Fri, 19 Sep 2025 16:54:58 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 11C066BA4E7;
	Fri, 19 Sep 2025 16:54:56 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=QUYzhEvI
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1758293695;
 b=VPPvGIGk3e00G9avWUDppuG1fuUewZRk3ruqxm7Xdn87E5Murgk/CbGjOIf7pGXesuUnx
 WL74Cz38Py/ZF/n9Mc8lkWvf99N9ENE1N1cUZ8/ylwcIQ16V+MSLH5JS7LuJiRRdt1clMwU
 0f2qGOCoR1oooNR+zb02MvGf3R7+kOM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1758293695; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=snmBQjP1n2j18LjGvUQ5ysA3RdJ4O6Z9rqYNesV/22g=;
 b=RXHUHkksy0G7fzlU4GmXie9dICM2+OMlIHmX4qMaI6qhSX6TKk73DNkA366aqT+MsRYrq
 Vqm6V9pf6HPgWQpAjNRjClaEMBZE+dJ+Gu7e7ArZZcXhYFQJ6SRBAZ6rzc0eEwUbTpdJpZB
 4BuL0kBfiBo5pBFTzxHj1/BpzI4wq8A=
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
	by mail.toke.dk (Postfix) with ESMTPS id 0825B6BA4A4
	for <cake@lists.bufferbloat.net>; Fri, 19 Sep 2025 16:54:52 +0200 (CEST)
Received: by mail-ej1-x635.google.com with SMTP id
 a640c23a62f3a-b0428b537e5so296347066b.3
        for <cake@lists.bufferbloat.net>;
 Fri, 19 Sep 2025 07:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758293691; x=1758898491;
 darn=lists.bufferbloat.net;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iphQgdysdIzse+Ppj1uDnrp9KH4B08+RjnskW+gpJ7M=;
        b=QUYzhEvI+YgVvcA7r4Yzs/QtfiVZif0V6mFTpRaM9IotK+cOtyfyjfgFBb2r7DyQFr
         CFS0yPLA8kOhk4BB8fEnAiBjbRBD9wEHk/icPxbsnK+ubegBV73AhjfTOKimSHbHm8VQ
         evallQ5uZ/MFvvbX/VpHW0w2RzGlcecZ8V95w+kxVGHrewuOFiSuXAwJZgIRP0a2mh3d
         T5qj2dh7i+RMauV/VTi3TmYi7OPeEgCeNdY5KkWFNoKt0iDp5jYAwQJtvDV7x/5lkV2o
         5SVDQPMm6IOqb6gTWk6n+/v+xKs93JvsK08Pk+b7eBQ+jTQL6OBReDZAW43Ol4G4Ecr9
         Cpmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758293691; x=1758898491;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iphQgdysdIzse+Ppj1uDnrp9KH4B08+RjnskW+gpJ7M=;
        b=qFQfd4Bfoj0B4RM+RF7wtHbmTIO2IWHUBGb4NK5x2tbFByP3tf+rnGEpu2r5nD0yhB
         +gwJkQ+kYpcFgZT5pkxqzcVYd7q6TJEwT9RQQ9DEuyXN9MR+LVS6H7maiIfKUfH1o2SD
         maLggXKSPLC5oHe9TqyaMxbf8c4cSyestuQqWTfXdAEZtt1DFvj+r6hlDTWdR6VTmLLR
         /LO5K+ISZLJzk8FLOIUov7Vlj25/sm9z4dWPcmK4SKprnB7tYRE0bFEVr+gTKRaQWqA0
         XfFojotiCaWWvu4HvfKDOhpg9iq4582lDjLRXt797GEa/wEY1Add0Rqdx3oZ+K5z0594
         eIcg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWehHKwDa9vnROEQmuUMdwIgxxVVwyuUMqsI7WcV2SU/FHYCe7srxoFp8JI2pNcnIEKX2xg@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxSNsZv+dmfKfeZbWD7jtr/ErST5ztC+HlM8aVTUda8sK2xyzuD
	3+f8sMij+yh6A8mrQBASDedBT+Xdq98nzPAdjsA3+Q5Cmg764myX7pME7d41RYSU+zx1CVbtL5f
	ggJ4jtNUfJLUIi/mf+RFubQqME0/sGysVC6b+
X-Gm-Gg: ASbGncsRTGIVConQOKZcpqkDazRZXbHtzTfqTwuq6+VDTivN5ZjXPBeQTcL0RwpD0d6
	MXLMn7mD7rQOvyzwWYfJ9Qb/H5oB10ux9rzpXAiEBtvSfYkToNjutW/crw3IS4hTyaPBQeSd1CC
	sKfHiLNIm3zmCJLP3pUZRfdS6Uossh3mkmwY6BAOWBV9r6MxahcucDXZKb6btWZDRM7CdGfERCB
	AgvSdX4
X-Google-Smtp-Source: 
 AGHT+IH7LdkcaUyQK3PNfpzc1b0QRMB0QXgO5wMwdHIO/IAy0lOCL2qKfK1v6pBavTaz82iyx55BYMMI/mKUDNZ4pLI=
X-Received: by 2002:a17:907:2d2b:b0:b04:6338:c95a with SMTP id
 a640c23a62f3a-b24f442916amr353196666b.45.1758293690868; Fri, 19 Sep 2025
 07:54:50 -0700 (PDT)
MIME-Version: 1.0
From: Frantisek Borsik <frantisek.borsik@gmail.com>
Date: Fri, 19 Sep 2025 16:55:46 +0200
X-Gm-Features: AS18NWCNp_E2brS-0-gJtj5fi5fo0kjQnV-ZkCnjhseXso2ayexzlHi3i2iRHaE
Message-ID: 
 <CAJUtOOhN5j3P9NanP+eQqBk5K59dXVJ=0McKM-nZ64jwzUOEew@mail.gmail.com>
To: Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>,
	bloat <bloat@lists.bufferbloat.net>, codel@lists.bufferbloat.net
Message-ID-Hash: E4S4BSUM4KWSH63WX5UYMRIE5F6PVW4C
X-Message-ID-Hash: E4S4BSUM4KWSH63WX5UYMRIE5F6PVW4C
X-MailFrom: frantisek.borsik@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Responsiveness under Working Conditions
 (draft-ietf-ippm-responsiveness-07)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAJUtOOhN5j3P9NanP+eQqBk5K59dXVJ=0McKM-nZ64jwzUOEew@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gdG8gYWxsLA0KDQpKdXN0IHNhdyB0aGlzIHNoYXJlZCBieSBKYXNvbiBMaXZpbmdvb2Q6
DQoNCmh0dHBzOi8vZGF0YXRyYWNrZXIuaWV0Zi5vcmcvZG9jL2RyYWZ0LWlldGYtaXBwbS1yZXNw
b25zaXZlbmVzcy8NCg0Kb24gTGlua2VkSW4NCjxodHRwczovL3d3dy5saW5rZWRpbi5jb20vZmVl
ZC91cGRhdGUvdXJuOmxpOmFjdGl2aXR5OjczNzQ3ODU2MDAxOTQ4MDk4NTYvPiwNCmZpbGxlZCBp
biBvbiBKdWx5IDcsIDIwMjUuDQoNCkFsbCB0aGUgYmVzdCwNCg0KRnJhbmsNCg0KRnJhbnRpc2Vr
IChGcmFuaykgQm9yc2lrDQoNCg0KKkluIGxvdmluZyBtZW1vcnkgb2YgRGF2ZSBUw6RodDogKjE5
NjUtMjAyNQ0KDQpodHRwczovL2xpYnJlcW9zLmlvLzIwMjUvMDQvMDEvaW4tbG92aW5nLW1lbW9y
eS1vZi1kYXZlLw0KDQoNCmh0dHBzOi8vd3d3LmxpbmtlZGluLmNvbS9pbi9mcmFudGlzZWtib3Jz
aWsNCg0KU2lnbmFsLCBUZWxlZ3JhbSwgV2hhdHNBcHA6ICs0MjE5MTk0MTY3MTQNCg0KaU1lc3Nh
Z2UsIG1vYmlsZTogKzQyMDc3NTIzMDg4NQ0KDQpTa3lwZTogY2FzaW9hNTMwMmNhDQoNCmZyYW50
aXNlay5ib3JzaWtAZ21haWwuY29tDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Cg==

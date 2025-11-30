Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 814D7C9549B
	for <lists+cake@lfdr.de>; Sun, 30 Nov 2025 21:37:36 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id A12949E8D89;
	Sun, 30 Nov 2025 21:37:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764535055;
	bh=SN79lDEEzAcgIhAXxkuHkNqcPw+y6jyhNM+z8bvzTYw=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=PYGLx4Nt1waiwQGMLnKRzrjs17FtHPHSpTUjOn8eI5g0uD7DK6dhZFUU9AmaLUKZr
	 X+/0PUSP2RJQ8NaXF245gRR7z3ojrD/kbloo+Yx8Cf07f+++RKTi4ubrppSAa5YK3A
	 UWZti/XhjEtSXdtQLll4Qqmm3bse+sIgJ6YqffN3qm7WqJacYX8QH+Gt+4ANiOXdQd
	 29vjeus7F4klHSiOqwD0jRMLpRiDrPGrbh9mpqg8Uu9wS7fye2M/6XNDC5ITZ4+fAZ
	 ZLIbMASqGl7LEVtUqiUxOywMtfFKESOP/bDI5nHijXiPkmf4lqHpMF4+VlqB8WAIUL
	 TUT/HAJLbXz0w==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764535055;
 b=aSOfXtfZo/FVrBAiekcWIXwxQZdwSxNP4+Y9K0vRJhKvzg7wF4387wM19mMN1goZwd6kz
 s3iL23O5y8uTConWYLt97l0nlRrumO+hhdiQvfywCkSmKzsvRBQghu+BqYLkV2TMS7+BcJy
 aFMMCCO5g7PDb8wNTwlPhKu42yQwwkM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764535055; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=SN79lDEEzAcgIhAXxkuHkNqcPw+y6jyhNM+z8bvzTYw=;
 b=RZVjcBcqLW8N/NLlszPc3Gw//OWl2fASbwCrVoMPvOlYC7CpZYxzK2aJR2UsWMN8HiNQv
 acDvWCw9OxwOImr9J8znmCYBrNmrM5Lfa5XIYsCAxmwFceiQuyYVlaZFX5/D5yLPmXW01s6
 Lzl/Qg+UaSOzv0cgM0j20qZqtdQ8VgU=
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
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.toke.dk (Postfix) with ESMTPS id 0C5559E8D6C
	for <cake@lists.bufferbloat.net>; Sun, 30 Nov 2025 21:37:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764535051;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2KWWuvh2Kcc902JFLrEx84h6cHSDVUruMvV85WP5XzY=;
	b=X6Xd9W6gBKcTzS5G81UtrczaCFVk4JSoXdZoC2lzFRvTV8vKJN/2fSoWTk/erRd55iTOG3
	p6CxJ5kyWzU7nDyK0TlfFzTQzzr11lvlq1gJvP6NmDTbnUAdg59SyF/QVv3CeWnBn6Bj6T
	XXMMwMJS+d4eDN46GoawiLIeKnAhobM=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-204-Jq9bnb-BN9SKcGNEHe4ysg-1; Sun, 30 Nov 2025 15:37:29 -0500
X-MC-Unique: Jq9bnb-BN9SKcGNEHe4ysg-1
X-Mimecast-MFC-AGG-ID: Jq9bnb-BN9SKcGNEHe4ysg_1764535049
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-b7270cab7eeso274459966b.1
        for <cake@lists.bufferbloat.net>;
 Sun, 30 Nov 2025 12:37:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764535049; x=1765139849;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2KWWuvh2Kcc902JFLrEx84h6cHSDVUruMvV85WP5XzY=;
        b=UzSVtpUA/pVMllbVbE2aYiFmHc0uZu/Jg46aOek9VicBoxh8Hri/3ng9GxRNJPaXAM
         d0qpmw1Vc1DCeS3oo9yutQ4MmiHsGOsGacRWzxYTt0Q/PhzuGXhOXYfYgWbVzzaBlYWT
         RvLw+HUr+62VkpjRGhjJAk/MCQjIs2BGDUSI4f+VQbFMBx7Po0WaJQfBSiJA7flEIY6k
         U2CqYWZSuNUtRE5Fj1U53dhtvorFmXwFiMvr6UNnNsruI09K6gYg9vWFfmnvftGdIyxP
         icX1mza7XEJgCX8GL2joeXvkHDeYn3xD92dq29J2WD1JkfDaC693yK31IQ/mh5uZaoUR
         hTvw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW1EOo0usEONu6gIOJ0G28WmSOkDRe9qaSXs5XgO0XjzDkjm4q7p+u+rZ9Zjkbi5JM7tDQ+@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwhM8Utp1Yzs0nQMs/dpoNB2j6wtS2r58b8DvOh0FfDTLmf8PHR
	m9krSZ3DUgvOlk85o2AIEq8C+k8UKpjaGkidYzKOh5QIiJc7/v4WIWnSKNXZnmccFXMRyZM9oQg
	lBfYWwthufbjyLmJctCbpr0xoQB8PsG3LlGoqml59ZSLOJa8RlYxTCwCKNytOqAo=
X-Gm-Gg: ASbGncvUgO6hET75jb13VnUGJtJ139nIZUAyAot5Ils/yQssYo4u7PJAy2Ij0WFNnrE
	1f/P0twlNuwNWgnB6RiyH8TnpJtdhOVxU7UiKJWfb87nBe6pnQ8u1BO4l305SmIy2RyjF/cSOHZ
	HCbYK5UYJNajYtR4G1MUS92JjaHPte0mj3gIOOo6iXYJTbXjMm9TELyUIr4xy0xjnEKEiSz9PL1
	KmP06sCoXcqxklYFimz1uPeyl4PUSKAbAhpfGIl5VyVelMde01RQybBtxiVYEK2xnY9Fn9E8j0z
	pZmiKmKlb+O6XJgvJdtUv4oFqFOZzFxxWjPG9nrk+D2xBCKYDB50wuMDv3y/8NDGUGhFRCqyZeX
	vgG37mqGUTWt27Ga/2YpvouCUNoRU+tpoBT2d
X-Received: by 2002:a17:907:724c:b0:b73:4b22:19c5 with SMTP id
 a640c23a62f3a-b76c555c547mr2364472966b.44.1764535048507;
        Sun, 30 Nov 2025 12:37:28 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IFDoKKRPf2wt1e5hoYL84omQMD2BhEjoV+Q6oYJONQBpang3M6Sf4GSjB8AC82gJLSMLcMR0g==
X-Received: by 2002:a17:907:724c:b0:b73:4b22:19c5 with SMTP id
 a640c23a62f3a-b76c555c547mr2364471066b.44.1764535048022;
        Sun, 30 Nov 2025 12:37:28 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.borgediget.toke.dk.
 [2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b76f5199852sm1027929966b.15.2025.11.30.12.37.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Nov 2025 12:37:26 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 4535C395C29; Sun, 30 Nov 2025 21:37:26 +0100 (CET)
Date: Sun, 30 Nov 2025 21:37:21 +0100
MIME-Version: 1.0
Message-Id: <20251130-mq-cake-sub-qdisc-v3-4-5f66c548ecdc@redhat.com>
References: <20251130-mq-cake-sub-qdisc-v3-0-5f66c548ecdc@redhat.com>
In-Reply-To: <20251130-mq-cake-sub-qdisc-v3-0-5f66c548ecdc@redhat.com>
To: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>
Cc: =?utf-8?q?Jonas_K=C3=B6ppeler?= <j.koeppeler@tu-berlin.de>,
 cake@lists.bufferbloat.net, netdev@vger.kernel.org,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
X-Mailer: b4 0.14.3
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 802Lt9wj0XTGicpDwX1FR-8XP-jUQezlYiCNzliXQMs_1764535049
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: FCUEI4HH26IY5NOO4YS2LAFRSAQNFM5Q
X-Message-ID-Hash: FCUEI4HH26IY5NOO4YS2LAFRSAQNFM5Q
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next v3 4/5] net/sched: sch_cake: Share config across
 cake_mq sub-qdiscs
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251130-mq-cake-sub-qdisc-v3-4-5f66c548ecdc@redhat.com/>
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

VGhpcyBhZGRzIHN1cHBvcnQgZm9yIGNvbmZpZ3VyaW5nIHRoZSBjYWtlX21xIGluc3RhbmNlIGRp
cmVjdGx5LCBzaGFyaW5nDQp0aGUgY29uZmlnIGFjcm9zcyB0aGUgY2FrZSBzdWItcWRpc2NzLg0K
DQpTaWduZWQtb2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNv
bT4NCi0tLQ0KIG5ldC9zY2hlZC9zY2hfY2FrZS5jIHwgMTQ2ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxMTcgaW5z
ZXJ0aW9ucygrKSwgMjkgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9uZXQvc2NoZWQvc2No
X2Nha2UuYyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jDQppbmRleCBkMzYwYWRlNmNhMjYuLjUxMTg0
ZjMwODM4NyAxMDA2NDQNCi0tLSBhL25ldC9zY2hlZC9zY2hfY2FrZS5jDQorKysgYi9uZXQvc2No
ZWQvc2NoX2Nha2UuYw0KQEAgLTIxMSw2ICsyMTEsNyBAQCBzdHJ1Y3QgY2FrZV9zY2hlZF9jb25m
aWcgew0KIAl1OAkJZmxvd19tb2RlOw0KIAl1OAkJYXRtX21vZGU7DQogCXU4CQlhY2tfZmlsdGVy
Ow0KKwl1OAkJaXNfc2hhcmVkOw0KIH07DQogDQogc3RydWN0IGNha2Vfc2NoZWRfZGF0YSB7DQpA
QCAtMjU4MCwxMSArMjU4MSw5IEBAIHN0YXRpYyB2b2lkIGNha2VfcmVjb25maWd1cmUoc3RydWN0
IFFkaXNjICpzY2gpDQogCQkJCSAgIHEtPmJ1ZmZlcl9jb25maWdfbGltaXQpKTsNCiB9DQogDQot
c3RhdGljIGludCBjYWtlX2NoYW5nZShzdHJ1Y3QgUWRpc2MgKnNjaCwgc3RydWN0IG5sYXR0ciAq
b3B0LA0KLQkJICAgICAgIHN0cnVjdCBuZXRsaW5rX2V4dF9hY2sgKmV4dGFjaykNCitzdGF0aWMg
aW50IGNha2VfY29uZmlnX2NoYW5nZShzdHJ1Y3QgY2FrZV9zY2hlZF9jb25maWcgKnEsIHN0cnVj
dCBubGF0dHIgKm9wdCwNCisJCQkgICAgICBzdHJ1Y3QgbmV0bGlua19leHRfYWNrICpleHRhY2ss
IGJvb2wgKm92ZXJoZWFkX2NoYW5nZWQpDQogew0KLQlzdHJ1Y3QgY2FrZV9zY2hlZF9kYXRhICpx
ZCA9IHFkaXNjX3ByaXYoc2NoKTsNCi0Jc3RydWN0IGNha2Vfc2NoZWRfY29uZmlnICpxID0gcWQt
PmNvbmZpZzsNCiAJc3RydWN0IG5sYXR0ciAqdGJbVENBX0NBS0VfTUFYICsgMV07DQogCXUxNiBy
YXRlX2ZsYWdzOw0KIAl1OCBmbG93X21vZGU7DQpAQCAtMjYzNywyMCArMjYzNiwxMiBAQCBzdGF0
aWMgaW50IGNha2VfY2hhbmdlKHN0cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3QgbmxhdHRyICpvcHQs
DQogCQlXUklURV9PTkNFKHEtPnJhdGVfb3ZlcmhlYWQsDQogCQkJICAgbmxhX2dldF9zMzIodGJb
VENBX0NBS0VfT1ZFUkhFQURdKSk7DQogCQlyYXRlX2ZsYWdzIHw9IENBS0VfRkxBR19PVkVSSEVB
RDsNCi0NCi0JCXFkLT5tYXhfbmV0bGVuID0gMDsNCi0JCXFkLT5tYXhfYWRqbGVuID0gMDsNCi0J
CXFkLT5taW5fbmV0bGVuID0gfjA7DQotCQlxZC0+bWluX2FkamxlbiA9IH4wOw0KKwkJKm92ZXJo
ZWFkX2NoYW5nZWQgPSB0cnVlOw0KIAl9DQogDQogCWlmICh0YltUQ0FfQ0FLRV9SQVddKSB7DQog
CQlyYXRlX2ZsYWdzICY9IH5DQUtFX0ZMQUdfT1ZFUkhFQUQ7DQotDQotCQlxZC0+bWF4X25ldGxl
biA9IDA7DQotCQlxZC0+bWF4X2FkamxlbiA9IDA7DQotCQlxZC0+bWluX25ldGxlbiA9IH4wOw0K
LQkJcWQtPm1pbl9hZGpsZW4gPSB+MDsNCisJCSpvdmVyaGVhZF9jaGFuZ2VkID0gdHJ1ZTsNCiAJ
fQ0KIA0KIAlpZiAodGJbVENBX0NBS0VfTVBVXSkNCkBAIC0yNzA2LDYgKzI2OTcsMzQgQEAgc3Rh
dGljIGludCBjYWtlX2NoYW5nZShzdHJ1Y3QgUWRpc2MgKnNjaCwgc3RydWN0IG5sYXR0ciAqb3B0
LA0KIA0KIAlXUklURV9PTkNFKHEtPnJhdGVfZmxhZ3MsIHJhdGVfZmxhZ3MpOw0KIAlXUklURV9P
TkNFKHEtPmZsb3dfbW9kZSwgZmxvd19tb2RlKTsNCisNCisJcmV0dXJuIDA7DQorfQ0KKw0KK3N0
YXRpYyBpbnQgY2FrZV9jaGFuZ2Uoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdCBubGF0dHIgKm9w
dCwNCisJCSAgICAgICBzdHJ1Y3QgbmV0bGlua19leHRfYWNrICpleHRhY2spDQorew0KKwlzdHJ1
Y3QgY2FrZV9zY2hlZF9kYXRhICpxZCA9IHFkaXNjX3ByaXYoc2NoKTsNCisJc3RydWN0IGNha2Vf
c2NoZWRfY29uZmlnICpxID0gcWQtPmNvbmZpZzsNCisJYm9vbCBvdmVyaGVhZF9jaGFuZ2VkID0g
ZmFsc2U7DQorCWludCByZXQ7DQorDQorCWlmIChxLT5pc19zaGFyZWQpIHsNCisJCU5MX1NFVF9F
UlJfTVNHKGV4dGFjaywgImNhbid0IHJlY29uZmlndXJlIGNha2VfbXEgc3ViLXFkaXNjcyIpOw0K
KwkJcmV0dXJuIC1FT1BOT1RTVVBQOw0KKwl9DQorDQorCXJldCA9IGNha2VfY29uZmlnX2NoYW5n
ZShxLCBvcHQsIGV4dGFjaywgJm92ZXJoZWFkX2NoYW5nZWQpOw0KKwlpZiAocmV0KQ0KKwkJcmV0
dXJuIHJldDsNCisNCisJaWYgKG92ZXJoZWFkX2NoYW5nZWQpIHsNCisJCXFkLT5tYXhfbmV0bGVu
ID0gMDsNCisJCXFkLT5tYXhfYWRqbGVuID0gMDsNCisJCXFkLT5taW5fbmV0bGVuID0gfjA7DQor
CQlxZC0+bWluX2FkamxlbiA9IH4wOw0KKwl9DQorDQogCWlmIChxZC0+dGlucykgew0KIAkJc2No
X3RyZWVfbG9jayhzY2gpOw0KIAkJY2FrZV9yZWNvbmZpZ3VyZShzY2gpOw0KQEAgLTI3MjIsNyAr
Mjc0MSwyMyBAQCBzdGF0aWMgdm9pZCBjYWtlX2Rlc3Ryb3koc3RydWN0IFFkaXNjICpzY2gpDQog
CXFkaXNjX3dhdGNoZG9nX2NhbmNlbCgmcS0+d2F0Y2hkb2cpOw0KIAl0Y2ZfYmxvY2tfcHV0KHEt
PmJsb2NrKTsNCiAJa3ZmcmVlKHEtPnRpbnMpOw0KLQlrdmZyZWUocS0+Y29uZmlnKTsNCisJaWYg
KCFxLT5jb25maWctPmlzX3NoYXJlZCkNCisJCWt2ZnJlZShxLT5jb25maWcpOw0KK30NCisNCitz
dGF0aWMgdm9pZCBjYWtlX2NvbmZpZ19pbml0KHN0cnVjdCBjYWtlX3NjaGVkX2NvbmZpZyAqcSwg
Ym9vbCBpc19zaGFyZWQpDQorew0KKwlxLT50aW5fbW9kZSA9IENBS0VfRElGRlNFUlZfRElGRlNF
UlYzOw0KKwlxLT5mbG93X21vZGUgID0gQ0FLRV9GTE9XX1RSSVBMRTsNCisNCisJcS0+cmF0ZV9i
cHMgPSAwOyAvKiB1bmxpbWl0ZWQgYnkgZGVmYXVsdCAqLw0KKw0KKwlxLT5pbnRlcnZhbCA9IDEw
MDAwMDsgLyogMTAwbXMgZGVmYXVsdCAqLw0KKwlxLT50YXJnZXQgICA9ICAgNTAwMDsgLyogNW1z
OiBjb2RlbCBSRkMgYXJndWVzDQorCQkJICAgICAgICogZm9yIDUgdG8gMTAlIG9mIGludGVydmFs
DQorCQkJICAgICAgICovDQorCXEtPnJhdGVfZmxhZ3MgfD0gQ0FLRV9GTEFHX1NQTElUX0dTTzsN
CisJcS0+aXNfc2hhcmVkID0gaXNfc2hhcmVkOw0KIH0NCiANCiBzdGF0aWMgaW50IGNha2VfaW5p
dChzdHJ1Y3QgUWRpc2MgKnNjaCwgc3RydWN0IG5sYXR0ciAqb3B0LA0KQEAgLTI3MzYsMTkgKzI3
NzEsMTEgQEAgc3RhdGljIGludCBjYWtlX2luaXQoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdCBu
bGF0dHIgKm9wdCwNCiAJaWYgKCFxKQ0KIAkJcmV0dXJuIC1FTk9NRU07DQogDQorCWNha2VfY29u
ZmlnX2luaXQocSwgZmFsc2UpOw0KKw0KIAlzY2gtPmxpbWl0ID0gMTAyNDA7DQogCXNjaC0+Zmxh
Z3MgfD0gVENRX0ZfREVRVUVVRV9EUk9QUzsNCiANCi0JcS0+dGluX21vZGUgPSBDQUtFX0RJRkZT
RVJWX0RJRkZTRVJWMzsNCi0JcS0+Zmxvd19tb2RlICA9IENBS0VfRkxPV19UUklQTEU7DQotDQot
CXEtPnJhdGVfYnBzID0gMDsgLyogdW5saW1pdGVkIGJ5IGRlZmF1bHQgKi8NCi0NCi0JcS0+aW50
ZXJ2YWwgPSAxMDAwMDA7IC8qIDEwMG1zIGRlZmF1bHQgKi8NCi0JcS0+dGFyZ2V0ICAgPSAgIDUw
MDA7IC8qIDVtczogY29kZWwgUkZDIGFyZ3Vlcw0KLQkJCSAgICAgICAqIGZvciA1IHRvIDEwJSBv
ZiBpbnRlcnZhbA0KLQkJCSAgICAgICAqLw0KLQlxLT5yYXRlX2ZsYWdzIHw9IENBS0VfRkxBR19T
UExJVF9HU087DQogCXFkLT5jdXJfdGluID0gMDsNCiAJcWQtPmN1cl9mbG93ICA9IDA7DQogCXFk
LT5jb25maWcgPSBxOw0KQEAgLTI4MTEsMTAgKzI4MzgsMjEgQEAgc3RhdGljIGludCBjYWtlX2lu
aXQoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdCBubGF0dHIgKm9wdCwNCiAJcmV0dXJuIGVycjsN
CiB9DQogDQotc3RhdGljIGludCBjYWtlX2R1bXAoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdCBz
a19idWZmICpza2IpDQorc3RhdGljIHZvaWQgY2FrZV9jb25maWdfcmVwbGFjZShzdHJ1Y3QgUWRp
c2MgKnNjaCwgc3RydWN0IGNha2Vfc2NoZWRfY29uZmlnICpjZmcpDQogew0KIAlzdHJ1Y3QgY2Fr
ZV9zY2hlZF9kYXRhICpxZCA9IHFkaXNjX3ByaXYoc2NoKTsNCiAJc3RydWN0IGNha2Vfc2NoZWRf
Y29uZmlnICpxID0gcWQtPmNvbmZpZzsNCisNCisJcWQtPmNvbmZpZyA9IGNmZzsNCisNCisJaWYg
KCFxLT5pc19zaGFyZWQpDQorCQlrdmZyZWUocSk7DQorDQorCWNha2VfcmVjb25maWd1cmUoc2No
KTsNCit9DQorDQorc3RhdGljIGludCBjYWtlX2NvbmZpZ19kdW1wKHN0cnVjdCBjYWtlX3NjaGVk
X2NvbmZpZyAqcSwgc3RydWN0IHNrX2J1ZmYgKnNrYikNCit7DQogCXN0cnVjdCBubGF0dHIgKm9w
dHM7DQogCXUxNiByYXRlX2ZsYWdzOw0KIAl1OCBmbG93X21vZGU7DQpAQCAtMjg5MCw2ICsyOTI4
LDEzIEBAIHN0YXRpYyBpbnQgY2FrZV9kdW1wKHN0cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3Qgc2tf
YnVmZiAqc2tiKQ0KIAlyZXR1cm4gLTE7DQogfQ0KIA0KK3N0YXRpYyBpbnQgY2FrZV9kdW1wKHN0
cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQ0KK3sNCisJc3RydWN0IGNha2Vf
c2NoZWRfZGF0YSAqcWQgPSBxZGlzY19wcml2KHNjaCk7DQorDQorCXJldHVybiBjYWtlX2NvbmZp
Z19kdW1wKHFkLT5jb25maWcsIHNrYik7DQorfQ0KKw0KIHN0YXRpYyBpbnQgY2FrZV9kdW1wX3N0
YXRzKHN0cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3QgZ25ldF9kdW1wICpkKQ0KIHsNCiAJc3RydWN0
IG5sYXR0ciAqc3RhdHMgPSBubGFfbmVzdF9zdGFydF9ub2ZsYWcoZC0+c2tiLCBUQ0FfU1RBVFNf
QVBQKTsNCkBAIC0zMTUzLDYgKzMxOTgsNyBAQCBNT0RVTEVfQUxJQVNfTkVUX1NDSCgiY2FrZSIp
Ow0KIA0KIHN0cnVjdCBjYWtlX21xX3NjaGVkIHsNCiAJc3RydWN0IG1xX3NjaGVkIG1xX3ByaXY7
IC8qIG11c3QgYmUgZmlyc3QgKi8NCisJc3RydWN0IGNha2Vfc2NoZWRfY29uZmlnIGNha2VfY29u
ZmlnOw0KIH07DQogDQogc3RhdGljIHZvaWQgY2FrZV9tcV9kZXN0cm95KHN0cnVjdCBRZGlzYyAq
c2NoKQ0KQEAgLTMxNjMsMjUgKzMyMDksNjcgQEAgc3RhdGljIHZvaWQgY2FrZV9tcV9kZXN0cm95
KHN0cnVjdCBRZGlzYyAqc2NoKQ0KIHN0YXRpYyBpbnQgY2FrZV9tcV9pbml0KHN0cnVjdCBRZGlz
YyAqc2NoLCBzdHJ1Y3QgbmxhdHRyICpvcHQsDQogCQkJc3RydWN0IG5ldGxpbmtfZXh0X2FjayAq
ZXh0YWNrKQ0KIHsNCi0JaW50IHJldDsNCisJc3RydWN0IGNha2VfbXFfc2NoZWQgKnByaXYgPSBx
ZGlzY19wcml2KHNjaCk7DQorCXN0cnVjdCBuZXRfZGV2aWNlICpkZXYgPSBxZGlzY19kZXYoc2No
KTsNCisJaW50IHJldCwgbnR4Ow0KKwlib29sIF91bnVzZWQ7DQorDQorCWNha2VfY29uZmlnX2lu
aXQoJnByaXYtPmNha2VfY29uZmlnLCB0cnVlKTsNCisJaWYgKG9wdCkgew0KKwkJcmV0ID0gY2Fr
ZV9jb25maWdfY2hhbmdlKCZwcml2LT5jYWtlX2NvbmZpZywgb3B0LCBleHRhY2ssICZfdW51c2Vk
KTsNCisJCWlmIChyZXQpDQorCQkJcmV0dXJuIHJldDsNCisJfQ0KIA0KIAlyZXQgPSBtcV9pbml0
X2NvbW1vbihzY2gsIG9wdCwgZXh0YWNrLCAmY2FrZV9xZGlzY19vcHMpOw0KIAlpZiAocmV0KQ0K
IAkJcmV0dXJuIHJldDsNCiANCisJZm9yIChudHggPSAwOyBudHggPCBkZXYtPm51bV90eF9xdWV1
ZXM7IG50eCsrKQ0KKwkJY2FrZV9jb25maWdfcmVwbGFjZShwcml2LT5tcV9wcml2LnFkaXNjc1tu
dHhdLCAmcHJpdi0+Y2FrZV9jb25maWcpOw0KKw0KIAlyZXR1cm4gMDsNCiB9DQogDQogc3RhdGlj
IGludCBjYWtlX21xX2R1bXAoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdCBza19idWZmICpza2Ip
DQogew0KKwlzdHJ1Y3QgY2FrZV9tcV9zY2hlZCAqcHJpdiA9IHFkaXNjX3ByaXYoc2NoKTsNCisN
CiAJbXFfZHVtcF9jb21tb24oc2NoLCBza2IpOw0KLQlyZXR1cm4gMDsNCisJcmV0dXJuIGNha2Vf
Y29uZmlnX2R1bXAoJnByaXYtPmNha2VfY29uZmlnLCBza2IpOw0KIH0NCiANCiBzdGF0aWMgaW50
IGNha2VfbXFfY2hhbmdlKHN0cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3QgbmxhdHRyICpvcHQsDQog
CQkJICBzdHJ1Y3QgbmV0bGlua19leHRfYWNrICpleHRhY2spDQogew0KLQlyZXR1cm4gLUVPUE5P
VFNVUFA7DQorCXN0cnVjdCBjYWtlX21xX3NjaGVkICpwcml2ID0gcWRpc2NfcHJpdihzY2gpOw0K
KwlzdHJ1Y3QgbmV0X2RldmljZSAqZGV2ID0gcWRpc2NfZGV2KHNjaCk7DQorCWJvb2wgb3Zlcmhl
YWRfY2hhbmdlZCA9IGZhbHNlOw0KKwl1bnNpZ25lZCBpbnQgbnR4Ow0KKwlpbnQgcmV0Ow0KKw0K
KwlyZXQgPSBjYWtlX2NvbmZpZ19jaGFuZ2UoJnByaXYtPmNha2VfY29uZmlnLCBvcHQsIGV4dGFj
aywgJm92ZXJoZWFkX2NoYW5nZWQpOw0KKwlpZiAocmV0KQ0KKwkJcmV0dXJuIHJldDsNCisNCisJ
c2NoX3RyZWVfbG9jayhzY2gpOw0KKwlmb3IgKG50eCA9IDA7IG50eCA8IGRldi0+bnVtX3R4X3F1
ZXVlczsgbnR4KyspIHsNCisJCXN0cnVjdCBRZGlzYyAqY2hsZCA9IHJ0bmxfZGVyZWZlcmVuY2Uo
bmV0ZGV2X2dldF90eF9xdWV1ZShkZXYsIG50eCktPnFkaXNjX3NsZWVwaW5nKTsNCisJCXN0cnVj
dCBjYWtlX3NjaGVkX2RhdGEgKnFkID0gcWRpc2NfcHJpdihjaGxkKTsNCisNCisJCWlmIChvdmVy
aGVhZF9jaGFuZ2VkKSB7DQorCQkJcWQtPm1heF9uZXRsZW4gPSAwOw0KKwkJCXFkLT5tYXhfYWRq
bGVuID0gMDsNCisJCQlxZC0+bWluX25ldGxlbiA9IH4wOw0KKwkJCXFkLT5taW5fYWRqbGVuID0g
fjA7DQorCQl9DQorDQorCQlpZiAocWQtPnRpbnMpDQorCQkJY2FrZV9yZWNvbmZpZ3VyZShjaGxk
KTsNCisJfQ0KKwlzY2hfdHJlZV91bmxvY2soc2NoKTsNCisNCisJcmV0dXJuIDA7DQogfQ0KIA0K
IHN0YXRpYyBpbnQgY2FrZV9tcV9ncmFmdChzdHJ1Y3QgUWRpc2MgKnNjaCwgdW5zaWduZWQgbG9u
ZyBjbCwgc3RydWN0IFFkaXNjICpuZXcsDQoNCi0tIA0KMi41Mi4wDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0IC0tIGNh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
Y2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK

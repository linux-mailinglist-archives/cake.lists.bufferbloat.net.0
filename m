Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 6337CC8135B
	for <lists+cake@lfdr.de>; Mon, 24 Nov 2025 16:00:55 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 927CB9C36E2;
	Mon, 24 Nov 2025 16:00:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1763996453;
	bh=aQ1Y/vyAlLk44/BCF7aADPUelo3NJ7cCd1+30x6wVkk=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=TQMlu48KtqE4vT9/nxytWGER4I0oRhKWygko+rBHjLPWVHQlsKXloz2QU4qFUyTY2
	 2icbzCERtrqwk1TW4HwIoEp+IaUEIMA1S6GgZ81YlwJWXjtBuJcdxnY9gDz8vuiArt
	 H9CG+0pY6cJSxWnstukubt/kzyA40olfkcPlg16HhTKIC684qoUuyrBp9bP549AQaL
	 Jr75H0j5TrPLNb0PHxf+C5aXv3ULlUxZYM7uR/xpXLMIKp6Se/Y4AdzlGLdtLcmtDX
	 yLwJ2CHgCTWshyAbQS3oyuQQjmVf3yIWDYURXMnrO06a7CbvfAYH5Hi64UPyrG/Izs
	 JAwCfrLpnlMag==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1763996453;
 b=WkcgdI4RFjPG2nXM3zv5Buq2ewuTu+AMe0SI9Fr/8lkoBjm9MC97K72gQYV2dyQ/K+T/a
 3g/DosHbyV3VQnPIy4KU7eY3+M0Apw+gh1Z4JjZbWmnwUgapZ7FXcCbAo9YWUk4TWXDOSUB
 QQ5C+Xv7Gb5N4CUaXO2JEcAoRc+HSrQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1763996453; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=aQ1Y/vyAlLk44/BCF7aADPUelo3NJ7cCd1+30x6wVkk=;
 b=EG3JbMkn0pFZ/KCbsmZ1V4EKFKEodaFesusY/eoVPdLeibCF9yyA9of+StvZJmuf/xLpo
 fUV1bmVRWCF1yQR1H8rflIZF6pUsYwU3r+/5gxxAKOlLP7eDAIti57qeaXBwtxFG99bWUdA
 OA8TnxfRPLYBRVtf8YpdUa0MyTrl5Yk=
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
	by mail.toke.dk (Postfix) with ESMTPS id 1A7949C36A1
	for <cake@lists.bufferbloat.net>; Mon, 24 Nov 2025 16:00:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1763996449;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=biZAxt+cLYjE8fS+1mke514UvkZeQufW3fPNpa5azjM=;
	b=SLCuoYyaSAaWerBh2NgDIVsNWxZfMXkbDyUwRGyDSXnjxjEdB3MYqllO3i/VQmvde8MBqW
	2aLM90kmRC/BpaO5xDLDZxXXBUKn3Pdn2egU6ewxHocE+tMfF7oGhUjjc9Wh2TOupFWgSN
	yOVdmxLB1RzeaBs6k0VqGx3rRlLg238=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-314-L349HQzWMnCGMxIbg0TiRw-1; Mon, 24 Nov 2025 10:00:48 -0500
X-MC-Unique: L349HQzWMnCGMxIbg0TiRw-1
X-Mimecast-MFC-AGG-ID: L349HQzWMnCGMxIbg0TiRw_1763996446
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-b71043a0e4fso298797466b.2
        for <cake@lists.bufferbloat.net>;
 Mon, 24 Nov 2025 07:00:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763996446; x=1764601246;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=biZAxt+cLYjE8fS+1mke514UvkZeQufW3fPNpa5azjM=;
        b=v9B5/sITLy8m7zbrtxW7VmroWPRRSsx4kVU4sA3oS52BhHtdXQLpZuIi+EOAavh2rq
         fnRE9pZ5ZxjHi23WT6shdagIpAhyuj2p2/1cnTfDsPLx8HUFK8dxshgkIWWi5sdWb7dg
         AJ81gIqLnlqgN8roIfzwqoR2Rrst5PMt0eAZEbZsCy340U0WcZ3oC2V0W1Y/v9r2U/ES
         OjP3Ayo8iU/ySZzY4Efa/bMFOh3AcX6Ew/Gyd8MR6lmH7S6Pc8qPkN6nv46p3NGp5qjI
         xEE7altj/ybzcri18ZbgvjVKC1gOJkE7889sTO0jnjX0PYPZ/ubauF9QzN+F6irYedkh
         YZ4w==
X-Forwarded-Encrypted: i=1;
 AJvYcCXq3GJO4grwOJv5H0ep81sm6bduAedikhU/36vmyYBmbZCHty8PjidhVVlHQfmqOQmt8Y5X@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YztK07Dn6xlzJdrPVHPVGPri0Sb3W44FqAIUWmTv+EqgsdW9Pbo
	32ksPJrHc8yjtFiFAYUN+zhlNo056NdDNW2dnr6a2mCk/enMXHgiHW+TRqwooTJ/MyDu7d+BQgz
	9LRwXYXRpBaRcbrUTzclqbOmfNvv2lSz62Yx/ks29yM/ty1sVR1nOGKiZqi54zmM=
X-Gm-Gg: ASbGncs/D+Oyzqg6WCbzHj69tdOUOFxBJsfI4Pf4BmIM9lOQxOIlSjS3pmyXTMrItDX
	9DBPVXf+Je5NON4O/X/BFvA82GrzUg1nDqN9wmrDmWuAlD0boRTKHEOHqa5mK7Nk7G8WwlYkx1W
	uJMDlaUDBqOF04IgJbQP7STEWIVYmqB6wNhV7f+mXte2rT9+lpoiFTshfOphYrn6RvgiiX8my1F
	8YH300aR29zmWla28ukadrcxlYihsYdQhUCP0WpJoQEbHX6HbFSzRLP5GlG70BykdlC6kneR98n
	1+SM3qoW0MZZLml7Pm9dWzBuOulC7nEzXVfPAEVLSOOCTpdT/jntg9Wmx7rOHQ/fyunXiJ9YGBg
	ABPUN3/BZuQpUOqW1qCLSbCd/DB+Imc9RaeHP
X-Received: by 2002:a17:907:9610:b0:b73:870f:fa2b with SMTP id
 a640c23a62f3a-b7671596300mr1302498666b.27.1763996445475;
        Mon, 24 Nov 2025 07:00:45 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IFoYq9xqVHY5KzVfQ6WLT5je0HRshq2n4TABgNVTF+tEgpP4rQfi0K+lg3Z+vZJHA9WDuYFXw==
X-Received: by 2002:a17:907:9610:b0:b73:870f:fa2b with SMTP id
 a640c23a62f3a-b7671596300mr1302461466b.27.1763996440381;
        Mon, 24 Nov 2025 07:00:40 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.borgediget.toke.dk.
 [2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b7654d50328sm1335323866b.20.2025.11.24.07.00.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 07:00:38 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 4D30332A801; Mon, 24 Nov 2025 16:00:37 +0100 (CET)
Date: Mon, 24 Nov 2025 15:59:33 +0100
MIME-Version: 1.0
Message-Id: <20251124-mq-cake-sub-qdisc-v1-2-a2ff1dab488f@redhat.com>
References: <20251124-mq-cake-sub-qdisc-v1-0-a2ff1dab488f@redhat.com>
In-Reply-To: <20251124-mq-cake-sub-qdisc-v1-0-a2ff1dab488f@redhat.com>
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
X-Mimecast-MFC-PROC-ID: bnr8ojPKtqb-we4bUKUZKp9A4xp_sBjRzBhkVNALCAo_1763996446
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: CNSXZWRP47ETERNA3WD6LJTSO5UDFUOV
X-Message-ID-Hash: CNSXZWRP47ETERNA3WD6LJTSO5UDFUOV
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next 2/4] net/sched: sch_cake: Add cake_mq qdisc for using
 cake on mq devices
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251124-mq-cake-sub-qdisc-v1-2-a2ff1dab488f@redhat.com/>
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

QWRkIGEgY2FrZV9tcSBxZGlzYyB3aGljaCBpbnN0YWxscyBjYWtlIGluc3RhbmNlcyBvbiBlYWNo
IGhhcmR3YXJlDQpxdWV1ZSBvbiBhIG11bHRpLXF1ZXVlIGRldmljZS4NCg0KVGhpcyBpcyBqdXN0
IGEgY29weSBvZiBzY2hfbXEgdGhhdCBpbnN0YWxscyBjYWtlIGluc3RlYWQgb2YgdGhlIGRlZmF1
bHQNCnFkaXNjIG9uIGVhY2ggcXVldWUuIFN1YnNlcXVlbnQgY29tbWl0cyB3aWxsIGFkZCBzaGFy
aW5nIG9mIHRoZSBjb25maWcNCmJldHdlZW4gY2FrZSBpbnN0YW5jZXMsIGFzIHdlbGwgYXMgYSBt
dWx0aS1xdWV1ZSBhd2FyZSBzaGFwZXIgYWxnb3JpdGhtLg0KDQpSZXZpZXdlZC1ieTogSmFtYWwg
SGFkaSBTYWxpbSA8amhzQG1vamF0YXR1LmNvbT4NClNpZ25lZC1vZmYtYnk6IFRva2UgSMO4aWxh
bmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPg0KLS0tDQogbmV0L3NjaGVkL3NjaF9jYWtl
LmMgfCAyMTQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KystDQogMSBmaWxlIGNoYW5nZWQsIDIxMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQoN
CmRpZmYgLS1naXQgYS9uZXQvc2NoZWQvc2NoX2Nha2UuYyBiL25ldC9zY2hlZC9zY2hfY2FrZS5j
DQppbmRleCBhMDJmM2NmY2IwOWIuLmQxN2Q3NjY5ZGUzOCAxMDA2NDQNCi0tLSBhL25ldC9zY2hl
ZC9zY2hfY2FrZS5jDQorKysgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYw0KQEAgLTMxNTQsMTQgKzMx
NTQsMjI2IEBAIHN0YXRpYyBzdHJ1Y3QgUWRpc2Nfb3BzIGNha2VfcWRpc2Nfb3BzIF9fcmVhZF9t
b3N0bHkgPSB7DQogfTsNCiBNT0RVTEVfQUxJQVNfTkVUX1NDSCgiY2FrZSIpOw0KIA0KK3N0cnVj
dCBjYWtlX21xX3NjaGVkIHsNCisJc3RydWN0IFFkaXNjCQkqKnFkaXNjczsNCit9Ow0KKw0KK3N0
YXRpYyB2b2lkIGNha2VfbXFfZGVzdHJveShzdHJ1Y3QgUWRpc2MgKnNjaCkNCit7DQorCXN0cnVj
dCBuZXRfZGV2aWNlICpkZXYgPSBxZGlzY19kZXYoc2NoKTsNCisJc3RydWN0IGNha2VfbXFfc2No
ZWQgKnByaXYgPSBxZGlzY19wcml2KHNjaCk7DQorCXVuc2lnbmVkIGludCBudHg7DQorDQorCWlm
ICghcHJpdi0+cWRpc2NzKQ0KKwkJcmV0dXJuOw0KKwlmb3IgKG50eCA9IDA7IG50eCA8IGRldi0+
bnVtX3R4X3F1ZXVlcyAmJiBwcml2LT5xZGlzY3NbbnR4XTsgbnR4KyspDQorCQlxZGlzY19wdXQo
cHJpdi0+cWRpc2NzW250eF0pOw0KKwlrZnJlZShwcml2LT5xZGlzY3MpOw0KK30NCisNCitzdGF0
aWMgaW50IGNha2VfbXFfaW5pdChzdHJ1Y3QgUWRpc2MgKnNjaCwgc3RydWN0IG5sYXR0ciAqb3B0
LA0KKwkJCXN0cnVjdCBuZXRsaW5rX2V4dF9hY2sgKmV4dGFjaykNCit7DQorCXN0cnVjdCBuZXRf
ZGV2aWNlICpkZXYgPSBxZGlzY19kZXYoc2NoKTsNCisJc3RydWN0IGNha2VfbXFfc2NoZWQgKnBy
aXYgPSBxZGlzY19wcml2KHNjaCk7DQorCXN0cnVjdCBuZXRkZXZfcXVldWUgKmRldl9xdWV1ZTsN
CisJc3RydWN0IFFkaXNjICpxZGlzYzsNCisJdW5zaWduZWQgaW50IG50eDsNCisNCisJaWYgKHNj
aC0+cGFyZW50ICE9IFRDX0hfUk9PVCkNCisJCXJldHVybiAtRU9QTk9UU1VQUDsNCisNCisJaWYg
KCFuZXRpZl9pc19tdWx0aXF1ZXVlKGRldikpDQorCQlyZXR1cm4gLUVPUE5PVFNVUFA7DQorDQor
CS8qIHByZS1hbGxvY2F0ZSBxZGlzY3MsIGF0dGFjaG1lbnQgY2FuJ3QgZmFpbCAqLw0KKwlwcml2
LT5xZGlzY3MgPSBrY2FsbG9jKGRldi0+bnVtX3R4X3F1ZXVlcywgc2l6ZW9mKHByaXYtPnFkaXNj
c1swXSksDQorCQkJICAgICAgIEdGUF9LRVJORUwpOw0KKwlpZiAoIXByaXYtPnFkaXNjcykNCisJ
CXJldHVybiAtRU5PTUVNOw0KKw0KKwlmb3IgKG50eCA9IDA7IG50eCA8IGRldi0+bnVtX3R4X3F1
ZXVlczsgbnR4KyspIHsNCisJCWRldl9xdWV1ZSA9IG5ldGRldl9nZXRfdHhfcXVldWUoZGV2LCBu
dHgpOw0KKwkJcWRpc2MgPSBxZGlzY19jcmVhdGVfZGZsdChkZXZfcXVldWUsICZjYWtlX3FkaXNj
X29wcywNCisJCQkJCSAgVENfSF9NQUtFKFRDX0hfTUFKKHNjaC0+aGFuZGxlKSwNCisJCQkJCQkg
ICAgVENfSF9NSU4obnR4ICsgMSkpLA0KKwkJCQkJICBleHRhY2spOw0KKwkJaWYgKCFxZGlzYykg
ew0KKwkJCWtmcmVlKHByaXYtPnFkaXNjcyk7DQorCQkJcmV0dXJuIC1FTk9NRU07DQorCQl9DQor
CQlwcml2LT5xZGlzY3NbbnR4XSA9IHFkaXNjOw0KKwkJcWRpc2MtPmZsYWdzIHw9IFRDUV9GX09O
RVRYUVVFVUUgfCBUQ1FfRl9OT1BBUkVOVDsNCisJfQ0KKw0KKwlzY2gtPmZsYWdzIHw9IFRDUV9G
X01RUk9PVDsNCisNCisJcmV0dXJuIDA7DQorfQ0KKw0KK3N0YXRpYyB2b2lkIGNha2VfbXFfYXR0
YWNoKHN0cnVjdCBRZGlzYyAqc2NoKQ0KK3sNCisJc3RydWN0IG5ldF9kZXZpY2UgKmRldiA9IHFk
aXNjX2RldihzY2gpOw0KKwlzdHJ1Y3QgY2FrZV9tcV9zY2hlZCAqcHJpdiA9IHFkaXNjX3ByaXYo
c2NoKTsNCisJc3RydWN0IFFkaXNjICpxZGlzYywgKm9sZDsNCisJdW5zaWduZWQgaW50IG50eDsN
CisNCisJZm9yIChudHggPSAwOyBudHggPCBkZXYtPm51bV90eF9xdWV1ZXM7IG50eCsrKSB7DQor
CQlxZGlzYyA9IHByaXYtPnFkaXNjc1tudHhdOw0KKwkJb2xkID0gZGV2X2dyYWZ0X3FkaXNjKHFk
aXNjLT5kZXZfcXVldWUsIHFkaXNjKTsNCisJCWlmIChvbGQpDQorCQkJcWRpc2NfcHV0KG9sZCk7
DQorI2lmZGVmIENPTkZJR19ORVRfU0NIRUQNCisJCWlmIChudHggPCBkZXYtPnJlYWxfbnVtX3R4
X3F1ZXVlcykNCisJCQlxZGlzY19oYXNoX2FkZChxZGlzYywgZmFsc2UpOw0KKyNlbmRpZg0KKwl9
DQorCWtmcmVlKHByaXYtPnFkaXNjcyk7DQorCXByaXYtPnFkaXNjcyA9IE5VTEw7DQorfQ0KKw0K
K3N0YXRpYyBpbnQgY2FrZV9tcV9kdW1wKHN0cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3Qgc2tfYnVm
ZiAqc2tiKQ0KK3sNCisJc3RydWN0IG5ldF9kZXZpY2UgKmRldiA9IHFkaXNjX2RldihzY2gpOw0K
KwlzdHJ1Y3QgUWRpc2MgKnFkaXNjOw0KKwl1bnNpZ25lZCBpbnQgbnR4Ow0KKw0KKwlzY2gtPnEu
cWxlbiA9IDA7DQorCWduZXRfc3RhdHNfYmFzaWNfc3luY19pbml0KCZzY2gtPmJzdGF0cyk7DQor
CW1lbXNldCgmc2NoLT5xc3RhdHMsIDAsIHNpemVvZihzY2gtPnFzdGF0cykpOw0KKw0KKwkvKiBN
USBzdXBwb3J0cyBsb2NrbGVzcyBxZGlzY3MuIEhvd2V2ZXIsIHN0YXRpc3RpY3MgYWNjb3VudGlu
ZyBuZWVkcw0KKwkgKiB0byBhY2NvdW50IGZvciBhbGwsIG5vbmUsIG9yIGEgbWl4IG9mIGxvY2tl
ZCBhbmQgdW5sb2NrZWQgY2hpbGQNCisJICogcWRpc2NzLiBQZXJjcHUgc3RhdHMgYXJlIGFkZGVk
IHRvIGNvdW50ZXJzIGluLWJhbmQgYW5kIGxvY2tpbmcNCisJICogcWRpc2MgdG90YWxzIGFyZSBh
ZGRlZCBhdCBlbmQuDQorCSAqLw0KKwlmb3IgKG50eCA9IDA7IG50eCA8IGRldi0+bnVtX3R4X3F1
ZXVlczsgbnR4KyspIHsNCisJCXFkaXNjID0gcnRubF9kZXJlZmVyZW5jZShuZXRkZXZfZ2V0X3R4
X3F1ZXVlKGRldiwgbnR4KS0+cWRpc2Nfc2xlZXBpbmcpOw0KKwkJc3Bpbl9sb2NrX2JoKHFkaXNj
X2xvY2socWRpc2MpKTsNCisNCisJCWduZXRfc3RhdHNfYWRkX2Jhc2ljKCZzY2gtPmJzdGF0cywg
cWRpc2MtPmNwdV9ic3RhdHMsDQorCQkJCSAgICAgJnFkaXNjLT5ic3RhdHMsIGZhbHNlKTsNCisJ
CWduZXRfc3RhdHNfYWRkX3F1ZXVlKCZzY2gtPnFzdGF0cywgcWRpc2MtPmNwdV9xc3RhdHMsDQor
CQkJCSAgICAgJnFkaXNjLT5xc3RhdHMpOw0KKwkJc2NoLT5xLnFsZW4gKz0gcWRpc2NfcWxlbihx
ZGlzYyk7DQorDQorCQlzcGluX3VubG9ja19iaChxZGlzY19sb2NrKHFkaXNjKSk7DQorCX0NCisN
CisJcmV0dXJuIDA7DQorfQ0KKw0KK3N0YXRpYyBzdHJ1Y3QgbmV0ZGV2X3F1ZXVlICpjYWtlX21x
X3F1ZXVlX2dldChzdHJ1Y3QgUWRpc2MgKnNjaCwgdW5zaWduZWQgbG9uZyBjbCkNCit7DQorCXN0
cnVjdCBuZXRfZGV2aWNlICpkZXYgPSBxZGlzY19kZXYoc2NoKTsNCisJdW5zaWduZWQgbG9uZyBu
dHggPSBjbCAtIDE7DQorDQorCWlmIChudHggPj0gZGV2LT5udW1fdHhfcXVldWVzKQ0KKwkJcmV0
dXJuIE5VTEw7DQorCXJldHVybiBuZXRkZXZfZ2V0X3R4X3F1ZXVlKGRldiwgbnR4KTsNCit9DQor
DQorc3RhdGljIHN0cnVjdCBuZXRkZXZfcXVldWUgKmNha2VfbXFfc2VsZWN0X3F1ZXVlKHN0cnVj
dCBRZGlzYyAqc2NoLA0KKwkJCQkJCSBzdHJ1Y3QgdGNtc2cgKnRjbSkNCit7DQorCXJldHVybiBj
YWtlX21xX3F1ZXVlX2dldChzY2gsIFRDX0hfTUlOKHRjbS0+dGNtX3BhcmVudCkpOw0KK30NCisN
CitzdGF0aWMgaW50IGNha2VfbXFfZ3JhZnQoc3RydWN0IFFkaXNjICpzY2gsIHVuc2lnbmVkIGxv
bmcgY2wsIHN0cnVjdCBRZGlzYyAqbmV3LA0KKwkJCSBzdHJ1Y3QgUWRpc2MgKipvbGQsIHN0cnVj
dCBuZXRsaW5rX2V4dF9hY2sgKmV4dGFjaykNCit7DQorCU5MX1NFVF9FUlJfTVNHKGV4dGFjaywg
ImNhbid0IHJlcGxhY2UgY2FrZV9tcSBzdWItcWRpc2NzIik7DQorCXJldHVybiAtRU9QTk9UU1VQ
UDsNCit9DQorDQorc3RhdGljIHN0cnVjdCBRZGlzYyAqY2FrZV9tcV9sZWFmKHN0cnVjdCBRZGlz
YyAqc2NoLCB1bnNpZ25lZCBsb25nIGNsKQ0KK3sNCisJc3RydWN0IG5ldGRldl9xdWV1ZSAqZGV2
X3F1ZXVlID0gY2FrZV9tcV9xdWV1ZV9nZXQoc2NoLCBjbCk7DQorDQorCXJldHVybiBydG5sX2Rl
cmVmZXJlbmNlKGRldl9xdWV1ZS0+cWRpc2Nfc2xlZXBpbmcpOw0KK30NCisNCitzdGF0aWMgdW5z
aWduZWQgbG9uZyBjYWtlX21xX2ZpbmQoc3RydWN0IFFkaXNjICpzY2gsIHUzMiBjbGFzc2lkKQ0K
K3sNCisJdW5zaWduZWQgaW50IG50eCA9IFRDX0hfTUlOKGNsYXNzaWQpOw0KKw0KKwlpZiAoIWNh
a2VfbXFfcXVldWVfZ2V0KHNjaCwgbnR4KSkNCisJCXJldHVybiAwOw0KKwlyZXR1cm4gbnR4Ow0K
K30NCisNCitzdGF0aWMgaW50IGNha2VfbXFfZHVtcF9jbGFzcyhzdHJ1Y3QgUWRpc2MgKnNjaCwg
dW5zaWduZWQgbG9uZyBjbCwNCisJCQkgICAgICBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBzdHJ1Y3Qg
dGNtc2cgKnRjbSkNCit7DQorCXN0cnVjdCBuZXRkZXZfcXVldWUgKmRldl9xdWV1ZSA9IGNha2Vf
bXFfcXVldWVfZ2V0KHNjaCwgY2wpOw0KKw0KKwl0Y20tPnRjbV9wYXJlbnQgPSBUQ19IX1JPT1Q7
DQorCXRjbS0+dGNtX2hhbmRsZSB8PSBUQ19IX01JTihjbCk7DQorCXRjbS0+dGNtX2luZm8gPSBy
dG5sX2RlcmVmZXJlbmNlKGRldl9xdWV1ZS0+cWRpc2Nfc2xlZXBpbmcpLT5oYW5kbGU7DQorCXJl
dHVybiAwOw0KK30NCisNCitzdGF0aWMgaW50IGNha2VfbXFfZHVtcF9jbGFzc19zdGF0cyhzdHJ1
Y3QgUWRpc2MgKnNjaCwgdW5zaWduZWQgbG9uZyBjbCwNCisJCQkJICAgIHN0cnVjdCBnbmV0X2R1
bXAgKmQpDQorew0KKwlzdHJ1Y3QgbmV0ZGV2X3F1ZXVlICpkZXZfcXVldWUgPSBjYWtlX21xX3F1
ZXVlX2dldChzY2gsIGNsKTsNCisNCisJc2NoID0gcnRubF9kZXJlZmVyZW5jZShkZXZfcXVldWUt
PnFkaXNjX3NsZWVwaW5nKTsNCisJaWYgKGduZXRfc3RhdHNfY29weV9iYXNpYyhkLCBzY2gtPmNw
dV9ic3RhdHMsICZzY2gtPmJzdGF0cywgdHJ1ZSkgPCAwIHx8DQorCSAgICBxZGlzY19xc3RhdHNf
Y29weShkLCBzY2gpIDwgMCkNCisJCXJldHVybiAtMTsNCisJcmV0dXJuIDA7DQorfQ0KKw0KK3N0
YXRpYyB2b2lkIGNha2VfbXFfd2FsayhzdHJ1Y3QgUWRpc2MgKnNjaCwgc3RydWN0IHFkaXNjX3dh
bGtlciAqYXJnKQ0KK3sNCisJc3RydWN0IG5ldF9kZXZpY2UgKmRldiA9IHFkaXNjX2RldihzY2gp
Ow0KKwl1bnNpZ25lZCBpbnQgbnR4Ow0KKw0KKwlpZiAoYXJnLT5zdG9wKQ0KKwkJcmV0dXJuOw0K
Kw0KKwlhcmctPmNvdW50ID0gYXJnLT5za2lwOw0KKwlmb3IgKG50eCA9IGFyZy0+c2tpcDsgbnR4
IDwgZGV2LT5udW1fdHhfcXVldWVzOyBudHgrKykgew0KKwkJaWYgKCF0Y19xZGlzY19zdGF0c19k
dW1wKHNjaCwgbnR4ICsgMSwgYXJnKSkNCisJCQlicmVhazsNCisJfQ0KK30NCisNCitzdGF0aWMg
Y29uc3Qgc3RydWN0IFFkaXNjX2NsYXNzX29wcyBjYWtlX21xX2NsYXNzX29wcyA9IHsNCisJLnNl
bGVjdF9xdWV1ZQk9IGNha2VfbXFfc2VsZWN0X3F1ZXVlLA0KKwkuZ3JhZnQJCT0gY2FrZV9tcV9n
cmFmdCwNCisJLmxlYWYJCT0gY2FrZV9tcV9sZWFmLA0KKwkuZmluZAkJPSBjYWtlX21xX2ZpbmQs
DQorCS53YWxrCQk9IGNha2VfbXFfd2FsaywNCisJLmR1bXAJCT0gY2FrZV9tcV9kdW1wX2NsYXNz
LA0KKwkuZHVtcF9zdGF0cwk9IGNha2VfbXFfZHVtcF9jbGFzc19zdGF0cywNCit9Ow0KKw0KK3N0
YXRpYyBzdHJ1Y3QgUWRpc2Nfb3BzIGNha2VfbXFfcWRpc2Nfb3BzIF9fcmVhZF9tb3N0bHkgPSB7
DQorCS5jbF9vcHMJCT0JJmNha2VfbXFfY2xhc3Nfb3BzLA0KKwkuaWQJCT0JImNha2VfbXEiLA0K
KwkucHJpdl9zaXplCT0Jc2l6ZW9mKHN0cnVjdCBjYWtlX21xX3NjaGVkKSwNCisJLmluaXQJCT0J
Y2FrZV9tcV9pbml0LA0KKwkuZGVzdHJveQk9CWNha2VfbXFfZGVzdHJveSwNCisJLmF0dGFjaAkJ
PSBjYWtlX21xX2F0dGFjaCwNCisJLy8JLmNoYW5nZQkJPQljYWtlX21xX2NoYW5nZSwNCisJLmNo
YW5nZV9yZWFsX251bV90eCA9IG1xX2NoYW5nZV9yZWFsX251bV90eCwNCisJLmR1bXAJCT0JY2Fr
ZV9tcV9kdW1wLA0KKwkub3duZXIJCT0JVEhJU19NT0RVTEUsDQorfTsNCitNT0RVTEVfQUxJQVNf
TkVUX1NDSCgiY2FrZV9tcSIpOw0KKw0KIHN0YXRpYyBpbnQgX19pbml0IGNha2VfbW9kdWxlX2lu
aXQodm9pZCkNCiB7DQotCXJldHVybiByZWdpc3Rlcl9xZGlzYygmY2FrZV9xZGlzY19vcHMpOw0K
KwlyZXR1cm4gcmVnaXN0ZXJfcWRpc2MoJmNha2VfcWRpc2Nfb3BzKSA/Og0KKwkJcmVnaXN0ZXJf
cWRpc2MoJmNha2VfbXFfcWRpc2Nfb3BzKTsNCiB9DQogDQogc3RhdGljIHZvaWQgX19leGl0IGNh
a2VfbW9kdWxlX2V4aXQodm9pZCkNCiB7DQogCXVucmVnaXN0ZXJfcWRpc2MoJmNha2VfcWRpc2Nf
b3BzKTsNCisJdW5yZWdpc3Rlcl9xZGlzYygmY2FrZV9tcV9xZGlzY19vcHMpOw0KIH0NCiANCiBt
b2R1bGVfaW5pdChjYWtlX21vZHVsZV9pbml0KQ0KDQotLSANCjIuNTEuMg0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAt
LSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==

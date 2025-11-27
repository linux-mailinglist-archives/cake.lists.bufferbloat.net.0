Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 07881C8D8D9
	for <lists+cake@lfdr.de>; Thu, 27 Nov 2025 10:31:13 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 46C949D3F1F;
	Thu, 27 Nov 2025 10:31:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764235870;
	bh=FD9KxxmCL4qrJU4OrULQfjMjlDv3WGC9FtfQ/RaxU4w=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=lpd11ZblmletfnZw+duv4APGD1Nr9OPBXl6Kz5jCCN8wzsBInOW/9YBdr+3z3isoq
	 /3aAu3CYfr31I9YP5ezJLhcIF/EfE3n/P6f+S1koa1BmLiZFsQvoz8gJ45g+C4o6/R
	 zqMJYSqXPoq6O9cGtnbZo0o132FNu/FtZ6ek1gsdj7Qs2QJDN2cu8bi3SpB7dpz5aw
	 x8PMmwPmkvyf200kiDJgevP5RTZa0vd4fNUQk9RqrF/+JI/GeSRJFr/hIKFjp3c8rK
	 wM42CMy4anEyFzKu15flcmGn49k/DywnI4kr68AYSGBhrSN4sYhSC21MFLupBrCopJ
	 5t8X5+SM3AfGQ==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764235870;
 b=4BL/1J9/d+hzKf//RZST8/hjVv/bjytgdw1I7uwfDYz/j2HSdQeN3IEsqI1lWjQqKtwfk
 hmc31jESykooRDRRh10XwkjnSGQzCZJqkjmNdRk5GsAVG8jXANDjSpbMg+s19wP0vD/7FZM
 SGpFUEX+59v+VFQtLkN1+kjCta22brA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764235870; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=FD9KxxmCL4qrJU4OrULQfjMjlDv3WGC9FtfQ/RaxU4w=;
 b=kx4Qsk2pw8QXs4fVOpvfCas6n6hXSXVx49zkC9wZjakInxbf03ZOfwIqJ8j0AhFcFezQi
 sjaQTsq/g3A0mHjN5w6AK3iQDC4VqqFCgSyBN8DoNTK9J3HjCo3j4bcPRcRq5RTFViCWRsD
 SARI+kOhhvq/v2YMNjm30xw6KUJ+ZSM=
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
	by mail.toke.dk (Postfix) with ESMTPS id 4AAF69D3EA4
	for <cake@lists.bufferbloat.net>; Thu, 27 Nov 2025 10:31:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764235865;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=c/ztE5Gh+6OFo2w7ay2rtaaLYUUO8CXQN8E9A7T+pz4=;
	b=BYBPDW+UIfiK0OjevnYdrKL7ayHNxg/bKXE8/IqTlNZGGQIid8QJRqgu70QmwpfRg197Ob
	gaZrckdiRglYL6zXDIWogxXIsGhIPn5SwG88tIFl0zdORLOrie3KdlYtmqs2dVNL14WN9+
	FxrUqvHRqy4TB4Rg3VFRd+V97Y1sSOc=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-170-AmMtyVeUPHSy731ZI1iAKA-1; Thu, 27 Nov 2025 04:31:04 -0500
X-MC-Unique: AmMtyVeUPHSy731ZI1iAKA-1
X-Mimecast-MFC-AGG-ID: AmMtyVeUPHSy731ZI1iAKA_1764235863
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-b7178ad1a7dso59857466b.1
        for <cake@lists.bufferbloat.net>;
 Thu, 27 Nov 2025 01:31:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764235863; x=1764840663;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=c/ztE5Gh+6OFo2w7ay2rtaaLYUUO8CXQN8E9A7T+pz4=;
        b=nzttJu1/TW3U+N4Imwm0lpM8Dsz1WKh4V6sZlmJNVynEP2+jYD3M6uswH34AVWn0bY
         kfj7RH5pfouOUf/mz+6SWtLbHbhcr3zGmnK0GHfDO6A63r68SWs2AoKmfDm4/TprXwVW
         4dNlor5dQMzZzeFaIYyrXaNmiIyLxHpIHcglKUqrb/tfTyqaiXRR85avzDezFeJa/TBz
         NFfKJVB01E9zPQOGz7uBnSxnc2vMzJYkZI2NAU3ULTqaM3CBVD7Nrjmfh4kAZ7Urhuk7
         qgG4M7RGkS/sqi/8mMTzz502zZsawhLOZsxVjM8l4cAJcn4VVDyu//vX+ncYuxJE6pBq
         Ar+g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWH30YOBNsJUwPfh8eaD7r4AeKGW1SXN+NoQDTISykUwoB/0tdUPnqKElvFYTGve6EhgyWW@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yy9Mm6xrHj2rCSJlJVcoZPT3ouLnVqMDIG2eDO8SuiasHLYo1r8
	y8pvS+CoZXcw8gVd9UVGzdvwEJaUQwq6difXi0l1KKZvr2vIy9CiJru2GwESVSjFnWf3LFQstFa
	CZmbsIoKXJ449Ta35UqDrkQuqbkqe+UFKNHk+/zdAmfGUWGdhYbN2h7X9nuh+QwA=
X-Gm-Gg: ASbGncs9WyV+KAO0o/Mh1etMKTIPlHI7Wf/jSHp3CJihPjGNwNmhHbn+S+2ZO5Jfcrd
	WGrGGEXmeY3B6tNnviVNvbpP8q44jMBqzyXnSA1ujpYNdA177gqS7bXmfAiwzcuix080vYY1NwT
	vs+hzJ9/twoMMwWyVQUgQYVX5p120NqOrrdVS6oOEkKK7QJf6zKPO/IJIY7AYkRvYhCg8AFf69G
	42i9E+hutyFItMgoH+CFTZGYhYe+lQthGyf2ehZqjHH8SbsxN+wGzwZmjY9qIe7FIdDvgyTC+3H
	PNIBUmo15fJKc/ImIMac5Z/ai9/7a3tqkUmw9oluskMsC3hRGxm23+qrR9J7bjJhHGt7pbh19EW
	vrIbYcy/tgVuID2E2Nxrxp8pfnEjxOsed1A==
X-Received: by 2002:a17:906:fe49:b0:b72:b289:6de3 with SMTP id
 a640c23a62f3a-b76719d0982mr2604962366b.58.1764235863153;
        Thu, 27 Nov 2025 01:31:03 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IFTvpYrWvjZRWZbXWU1IdICEem7flrk0JrYuSA5u+Dm05BmpoTfDxTwST+W16TgW9IsqUe9TA==
X-Received: by 2002:a17:906:fe49:b0:b72:b289:6de3 with SMTP id
 a640c23a62f3a-b76719d0982mr2604958666b.58.1764235862737;
        Thu, 27 Nov 2025 01:31:02 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b76f59aea6bsm107741566b.35.2025.11.27.01.30.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 01:30:58 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 455F3395703; Thu, 27 Nov 2025 10:30:57 +0100 (CET)
Date: Thu, 27 Nov 2025 10:30:52 +0100
MIME-Version: 1.0
Message-Id: <20251127-mq-cake-sub-qdisc-v2-2-24d9ead047b9@redhat.com>
References: <20251127-mq-cake-sub-qdisc-v2-0-24d9ead047b9@redhat.com>
In-Reply-To: <20251127-mq-cake-sub-qdisc-v2-0-24d9ead047b9@redhat.com>
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
X-Mimecast-MFC-PROC-ID: WOrBenvcnnrzgz0Z1aMzJvlwNypavs5u2kVzguIhb90_1764235863
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: 56DCDNEXKPOM2JT6OBH7TVAANRASCLO5
X-Message-ID-Hash: 56DCDNEXKPOM2JT6OBH7TVAANRASCLO5
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next v2 2/4] net/sched: sch_cake: Add cake_mq qdisc for
 using cake on mq devices
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251127-mq-cake-sub-qdisc-v2-2-24d9ead047b9@redhat.com/>
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
DQppbmRleCA1NDViOWI4MzBjY2UuLjJlNGI3NzA2YzU3YyAxMDA2NDQNCi0tLSBhL25ldC9zY2hl
ZC9zY2hfY2FrZS5jDQorKysgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYw0KQEAgLTMxNTEsMTQgKzMx
NTEsMjI2IEBAIHN0YXRpYyBzdHJ1Y3QgUWRpc2Nfb3BzIGNha2VfcWRpc2Nfb3BzIF9fcmVhZF9t
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
b2R1bGVfaW5pdChjYWtlX21vZHVsZV9pbml0KQ0KDQotLSANCjIuNTIuMA0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAt
LSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==

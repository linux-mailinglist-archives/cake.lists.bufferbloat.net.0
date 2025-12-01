Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 689E1C9685E
	for <lists+cake@lfdr.de>; Mon, 01 Dec 2025 11:00:52 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id B45519ED7B4;
	Mon, 01 Dec 2025 11:00:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764583239;
	bh=W8806PrvLC1Z3ipPArMkJQbX4qYQ5q+53vgKUOeV22A=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=KDt+iD9rlhxGIHjwjN9rCyj240bFkwf0d1hk1XL1ChdyWqTvon0f2/bjb3+3ydgrW
	 uG60l+jGv0R3wxFgP7Zyy5jRBqle2sHnoE0tC94nAlT2/4rVPltKDuhmmXJM/6rf9h
	 U9ax1G95X2/shbQthcBhCPAGk3xEBsrEtpoM2CJLScmbUwiP4nPQRFQgEf+5pqNwAo
	 6Enit4jk7hKtgYadkZkXg5laaJ1wlbwX5yesYtqorsk8OTMTKHPLrlRZTNx0EPNnyh
	 W8eLV9CZu60xUmXk77/VgK8N9f7af+timKynFQbBcnyBYPhE3ESDmoMFk4ZlGgGak3
	 S4DCPRhhpWGdg==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764583239;
 b=triAUc5/hRIphlDL0D9nX6HLzkE5LxPm8aXLIUjxpYGpTF9RDz+enD01DWSkDaHIvcUKE
 qHwDZhcNB1sOcp44qiZrH2vb8NwRUTBJ/bON4POElXC+aMC8sGMFQQjOOw603HVLyBB2g4T
 9wWqLsG5S6/yXrANi8AldUXUJ42LLxw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764583239; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=W8806PrvLC1Z3ipPArMkJQbX4qYQ5q+53vgKUOeV22A=;
 b=hvQfuyX/0VcVTo6tTrw/dGiINRSAjEEJK6U13nl5EWrmWYR9YSZxb0EKLMtvROVobbCmi
 jP76WQz8w4qCNqPaVHqaAwg7NF9HfQ/W0638L9VI00Zl4HRf0tj8Rqe2BN/ucSnatcR+owG
 Mpr1NLdsa+ioQMWbrc/ENy42grQz6cs=
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
	by mail.toke.dk (Postfix) with ESMTPS id DEEC29ED752
	for <cake@lists.bufferbloat.net>; Mon, 01 Dec 2025 11:00:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764583234;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wEXfPRM2Oi+1WDmOQNkOvpBTjB69nAtE03kVdLQjnqA=;
	b=iHqCdkSEA3c1cIIAIv9uMQCCnc6yPcLLDF/RddqkVql0/gUFWVSaX9dcdsbETVJhngxVHa
	YpVUqXijwaiWGQlqlGM3lGVhH8ZkkhkefHURmG3kWgbgL4s+w60gYIKyCm66OLiBpdwPXl
	jl9B6KinHAAmj72FAYu6OxlaeF14gYE=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-599-3CP7QbELPVaWoYSY-Q2Tbw-1; Mon, 01 Dec 2025 05:00:33 -0500
X-MC-Unique: 3CP7QbELPVaWoYSY-Q2Tbw-1
X-Mimecast-MFC-AGG-ID: 3CP7QbELPVaWoYSY-Q2Tbw_1764583232
Received: by mail-ed1-f70.google.com with SMTP id
 4fb4d7f45d1cf-640c4609713so4680763a12.2
        for <cake@lists.bufferbloat.net>;
 Mon, 01 Dec 2025 02:00:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764583232; x=1765188032;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wEXfPRM2Oi+1WDmOQNkOvpBTjB69nAtE03kVdLQjnqA=;
        b=NhXYw9TWUm6aGiG1jiY1eme13h3z/izOWw9Wkx0cx4vvKXxIkSkXI8TOSdYFzcCVcg
         NJ4GqImApH6MFWZMZkM6Fs2Rd6nCAvwJqSMuIta3q3lO3W/d9BK7b5IkKWDjL9YpEChv
         xMJxKapwHg9gQgMD9Y3TLWyYKfLm4V27aL9ARng7nUYPOzOmoKHibOKFXwADgfIFfqw3
         nE17Z36icD4ALYjAIherQWimu1h9hZFkuCB99lE+0lj97Y3JFlIr/xRXXMOf0jZj2KHC
         8darx8oeN6uAiXvblC9sHy1X8z21212ofdNANwpiuxitFu6zornmLUcuQ7lKHpV2WDSL
         +YOA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVcHA8V9eR3TzxsksivAvSWWjjdtcxpW9j/FvQHEpaq5sbHq8kCNfdKtmOZNta8rRMgFJOB@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzGwvtGls/g4v6feb4XefUj4zNq+iq5WGrSOdqMjDeTI8H9W/vG
	V+yvft6lXusg/l6Y81lKeaRzYypeLDqZpUoSMRcCE5DW/qtaSFsLvc3d/02Mqa+9LdMBnK/wF/I
	VvU3M+AKusUo1L1Ar5xL5DRZBYmjsS3q3LeAkTiJ6GUQXIStMG23ulXrV62rAoao=
X-Gm-Gg: ASbGnct9gOKmx5OO1SBdBGayBBojzgogXBxyxy6S5/wDKSTEes/X0vgp5tRmtBP7lMS
	Vi5zAv5vgiuSXfow9Y3yD8BvLdGPNM7Spy/C/y2NxpnNJXhjkaRptzBqMwmFQNt1J+Xwacl/VXW
	Il+HcvJnWr3MzPYHSqKFw+XsptDy9mperfoopNN5suQUBMD5LDadeGaZuZdyqq9inJVzdebJfYd
	V+JZgkr/Gwur6NTdC8PS4htBPMoA+Ysirx8oIPXqjoJ7pbtZbKSvoptFEtfE3NtO56EsBRcAHkO
	Rba6Ki+6UVV0PE5D8Azt7Cy3GWanVdgaNnk2wU4j7Pv+OApCIePvst9bwivvr3D2E67kxDqr/HV
	nYS+nhjJtAL7LSrbCq/IOarYL4tnYk7HnFBkw
X-Received: by 2002:a17:907:7ba1:b0:b76:b7fe:3198 with SMTP id
 a640c23a62f3a-b76c5514685mr2934713066b.26.1764583231623;
        Mon, 01 Dec 2025 02:00:31 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IFSqpeYXDxpiMr8CXg1SpqFNLLBdepCUbdCIRvrDF1afm1wJwCwPlI+jIapAgIed7ZaK/JnOw==
X-Received: by 2002:a17:907:7ba1:b0:b76:b7fe:3198 with SMTP id
 a640c23a62f3a-b76c5514685mr2934707466b.26.1764583230910;
        Mon, 01 Dec 2025 02:00:30 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.borgediget.toke.dk.
 [2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b76f51c68d0sm1197933666b.28.2025.12.01.02.00.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 02:00:29 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id A6210395D59; Mon, 01 Dec 2025 11:00:28 +0100 (CET)
Date: Mon, 01 Dec 2025 11:00:22 +0100
MIME-Version: 1.0
Message-Id: <20251201-mq-cake-sub-qdisc-v4-4-50dd3211a1c6@redhat.com>
References: <20251201-mq-cake-sub-qdisc-v4-0-50dd3211a1c6@redhat.com>
In-Reply-To: <20251201-mq-cake-sub-qdisc-v4-0-50dd3211a1c6@redhat.com>
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
X-Mimecast-MFC-PROC-ID: c1m6rQ_724z0qDSx6yKcFibHILZVg_vKCzLDwDDQ6SE_1764583232
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: OWMOUN3JII5PTUMY5NAHRPT4WA5CBU2P
X-Message-ID-Hash: OWMOUN3JII5PTUMY5NAHRPT4WA5CBU2P
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next v4 4/5] net/sched: sch_cake: Share config across
 cake_mq sub-qdiscs
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251201-mq-cake-sub-qdisc-v4-4-50dd3211a1c6@redhat.com/>
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
X2Nha2UuYyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jDQppbmRleCA0ODgzMGUzZWU4YTQuLjljM2Vh
ZjVjOTEwNyAxMDA2NDQNCi0tLSBhL25ldC9zY2hlZC9zY2hfY2FrZS5jDQorKysgYi9uZXQvc2No
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
KHEtPmNvbmZpZyAmJiAhcS0+Y29uZmlnLT5pc19zaGFyZWQpDQorCQlrdmZyZWUocS0+Y29uZmln
KTsNCit9DQorDQorc3RhdGljIHZvaWQgY2FrZV9jb25maWdfaW5pdChzdHJ1Y3QgY2FrZV9zY2hl
ZF9jb25maWcgKnEsIGJvb2wgaXNfc2hhcmVkKQ0KK3sNCisJcS0+dGluX21vZGUgPSBDQUtFX0RJ
RkZTRVJWX0RJRkZTRVJWMzsNCisJcS0+Zmxvd19tb2RlICA9IENBS0VfRkxPV19UUklQTEU7DQor
DQorCXEtPnJhdGVfYnBzID0gMDsgLyogdW5saW1pdGVkIGJ5IGRlZmF1bHQgKi8NCisNCisJcS0+
aW50ZXJ2YWwgPSAxMDAwMDA7IC8qIDEwMG1zIGRlZmF1bHQgKi8NCisJcS0+dGFyZ2V0ICAgPSAg
IDUwMDA7IC8qIDVtczogY29kZWwgUkZDIGFyZ3Vlcw0KKwkJCSAgICAgICAqIGZvciA1IHRvIDEw
JSBvZiBpbnRlcnZhbA0KKwkJCSAgICAgICAqLw0KKwlxLT5yYXRlX2ZsYWdzIHw9IENBS0VfRkxB
R19TUExJVF9HU087DQorCXEtPmlzX3NoYXJlZCA9IGlzX3NoYXJlZDsNCiB9DQogDQogc3RhdGlj
IGludCBjYWtlX2luaXQoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdCBubGF0dHIgKm9wdCwNCkBA
IC0yNzM2LDE5ICsyNzcxLDExIEBAIHN0YXRpYyBpbnQgY2FrZV9pbml0KHN0cnVjdCBRZGlzYyAq
c2NoLCBzdHJ1Y3QgbmxhdHRyICpvcHQsDQogCWlmICghcSkNCiAJCXJldHVybiAtRU5PTUVNOw0K
IA0KKwljYWtlX2NvbmZpZ19pbml0KHEsIGZhbHNlKTsNCisNCiAJc2NoLT5saW1pdCA9IDEwMjQw
Ow0KIAlzY2gtPmZsYWdzIHw9IFRDUV9GX0RFUVVFVUVfRFJPUFM7DQogDQotCXEtPnRpbl9tb2Rl
ID0gQ0FLRV9ESUZGU0VSVl9ESUZGU0VSVjM7DQotCXEtPmZsb3dfbW9kZSAgPSBDQUtFX0ZMT1df
VFJJUExFOw0KLQ0KLQlxLT5yYXRlX2JwcyA9IDA7IC8qIHVubGltaXRlZCBieSBkZWZhdWx0ICov
DQotDQotCXEtPmludGVydmFsID0gMTAwMDAwOyAvKiAxMDBtcyBkZWZhdWx0ICovDQotCXEtPnRh
cmdldCAgID0gICA1MDAwOyAvKiA1bXM6IGNvZGVsIFJGQyBhcmd1ZXMNCi0JCQkgICAgICAgKiBm
b3IgNSB0byAxMCUgb2YgaW50ZXJ2YWwNCi0JCQkgICAgICAgKi8NCi0JcS0+cmF0ZV9mbGFncyB8
PSBDQUtFX0ZMQUdfU1BMSVRfR1NPOw0KIAlxZC0+Y3VyX3RpbiA9IDA7DQogCXFkLT5jdXJfZmxv
dyAgPSAwOw0KIAlxZC0+Y29uZmlnID0gcTsNCkBAIC0yODExLDEwICsyODM4LDIxIEBAIHN0YXRp
YyBpbnQgY2FrZV9pbml0KHN0cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3QgbmxhdHRyICpvcHQsDQog
CXJldHVybiBlcnI7DQogfQ0KIA0KLXN0YXRpYyBpbnQgY2FrZV9kdW1wKHN0cnVjdCBRZGlzYyAq
c2NoLCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQ0KK3N0YXRpYyB2b2lkIGNha2VfY29uZmlnX3JlcGxh
Y2Uoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdCBjYWtlX3NjaGVkX2NvbmZpZyAqY2ZnKQ0KIHsN
CiAJc3RydWN0IGNha2Vfc2NoZWRfZGF0YSAqcWQgPSBxZGlzY19wcml2KHNjaCk7DQogCXN0cnVj
dCBjYWtlX3NjaGVkX2NvbmZpZyAqcSA9IHFkLT5jb25maWc7DQorDQorCXFkLT5jb25maWcgPSBj
Zmc7DQorDQorCWlmICghcS0+aXNfc2hhcmVkKQ0KKwkJa3ZmcmVlKHEpOw0KKw0KKwljYWtlX3Jl
Y29uZmlndXJlKHNjaCk7DQorfQ0KKw0KK3N0YXRpYyBpbnQgY2FrZV9jb25maWdfZHVtcChzdHJ1
Y3QgY2FrZV9zY2hlZF9jb25maWcgKnEsIHN0cnVjdCBza19idWZmICpza2IpDQorew0KIAlzdHJ1
Y3QgbmxhdHRyICpvcHRzOw0KIAl1MTYgcmF0ZV9mbGFnczsNCiAJdTggZmxvd19tb2RlOw0KQEAg
LTI4OTAsNiArMjkyOCwxMyBAQCBzdGF0aWMgaW50IGNha2VfZHVtcChzdHJ1Y3QgUWRpc2MgKnNj
aCwgc3RydWN0IHNrX2J1ZmYgKnNrYikNCiAJcmV0dXJuIC0xOw0KIH0NCiANCitzdGF0aWMgaW50
IGNha2VfZHVtcChzdHJ1Y3QgUWRpc2MgKnNjaCwgc3RydWN0IHNrX2J1ZmYgKnNrYikNCit7DQor
CXN0cnVjdCBjYWtlX3NjaGVkX2RhdGEgKnFkID0gcWRpc2NfcHJpdihzY2gpOw0KKw0KKwlyZXR1
cm4gY2FrZV9jb25maWdfZHVtcChxZC0+Y29uZmlnLCBza2IpOw0KK30NCisNCiBzdGF0aWMgaW50
IGNha2VfZHVtcF9zdGF0cyhzdHJ1Y3QgUWRpc2MgKnNjaCwgc3RydWN0IGduZXRfZHVtcCAqZCkN
CiB7DQogCXN0cnVjdCBubGF0dHIgKnN0YXRzID0gbmxhX25lc3Rfc3RhcnRfbm9mbGFnKGQtPnNr
YiwgVENBX1NUQVRTX0FQUCk7DQpAQCAtMzE1Myw2ICszMTk4LDcgQEAgTU9EVUxFX0FMSUFTX05F
VF9TQ0goImNha2UiKTsNCiANCiBzdHJ1Y3QgY2FrZV9tcV9zY2hlZCB7DQogCXN0cnVjdCBtcV9z
Y2hlZCBtcV9wcml2OyAvKiBtdXN0IGJlIGZpcnN0ICovDQorCXN0cnVjdCBjYWtlX3NjaGVkX2Nv
bmZpZyBjYWtlX2NvbmZpZzsNCiB9Ow0KIA0KIHN0YXRpYyB2b2lkIGNha2VfbXFfZGVzdHJveShz
dHJ1Y3QgUWRpc2MgKnNjaCkNCkBAIC0zMTYzLDI1ICszMjA5LDY3IEBAIHN0YXRpYyB2b2lkIGNh
a2VfbXFfZGVzdHJveShzdHJ1Y3QgUWRpc2MgKnNjaCkNCiBzdGF0aWMgaW50IGNha2VfbXFfaW5p
dChzdHJ1Y3QgUWRpc2MgKnNjaCwgc3RydWN0IG5sYXR0ciAqb3B0LA0KIAkJCXN0cnVjdCBuZXRs
aW5rX2V4dF9hY2sgKmV4dGFjaykNCiB7DQotCWludCByZXQ7DQorCXN0cnVjdCBjYWtlX21xX3Nj
aGVkICpwcml2ID0gcWRpc2NfcHJpdihzY2gpOw0KKwlzdHJ1Y3QgbmV0X2RldmljZSAqZGV2ID0g
cWRpc2NfZGV2KHNjaCk7DQorCWludCByZXQsIG50eDsNCisJYm9vbCBfdW51c2VkOw0KKw0KKwlj
YWtlX2NvbmZpZ19pbml0KCZwcml2LT5jYWtlX2NvbmZpZywgdHJ1ZSk7DQorCWlmIChvcHQpIHsN
CisJCXJldCA9IGNha2VfY29uZmlnX2NoYW5nZSgmcHJpdi0+Y2FrZV9jb25maWcsIG9wdCwgZXh0
YWNrLCAmX3VudXNlZCk7DQorCQlpZiAocmV0KQ0KKwkJCXJldHVybiByZXQ7DQorCX0NCiANCiAJ
cmV0ID0gbXFfaW5pdF9jb21tb24oc2NoLCBvcHQsIGV4dGFjaywgJmNha2VfcWRpc2Nfb3BzKTsN
CiAJaWYgKHJldCkNCiAJCXJldHVybiByZXQ7DQogDQorCWZvciAobnR4ID0gMDsgbnR4IDwgZGV2
LT5udW1fdHhfcXVldWVzOyBudHgrKykNCisJCWNha2VfY29uZmlnX3JlcGxhY2UocHJpdi0+bXFf
cHJpdi5xZGlzY3NbbnR4XSwgJnByaXYtPmNha2VfY29uZmlnKTsNCisNCiAJcmV0dXJuIDA7DQog
fQ0KIA0KIHN0YXRpYyBpbnQgY2FrZV9tcV9kdW1wKHN0cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3Qg
c2tfYnVmZiAqc2tiKQ0KIHsNCisJc3RydWN0IGNha2VfbXFfc2NoZWQgKnByaXYgPSBxZGlzY19w
cml2KHNjaCk7DQorDQogCW1xX2R1bXBfY29tbW9uKHNjaCwgc2tiKTsNCi0JcmV0dXJuIDA7DQor
CXJldHVybiBjYWtlX2NvbmZpZ19kdW1wKCZwcml2LT5jYWtlX2NvbmZpZywgc2tiKTsNCiB9DQog
DQogc3RhdGljIGludCBjYWtlX21xX2NoYW5nZShzdHJ1Y3QgUWRpc2MgKnNjaCwgc3RydWN0IG5s
YXR0ciAqb3B0LA0KIAkJCSAgc3RydWN0IG5ldGxpbmtfZXh0X2FjayAqZXh0YWNrKQ0KIHsNCi0J
cmV0dXJuIC1FT1BOT1RTVVBQOw0KKwlzdHJ1Y3QgY2FrZV9tcV9zY2hlZCAqcHJpdiA9IHFkaXNj
X3ByaXYoc2NoKTsNCisJc3RydWN0IG5ldF9kZXZpY2UgKmRldiA9IHFkaXNjX2RldihzY2gpOw0K
Kwlib29sIG92ZXJoZWFkX2NoYW5nZWQgPSBmYWxzZTsNCisJdW5zaWduZWQgaW50IG50eDsNCisJ
aW50IHJldDsNCisNCisJcmV0ID0gY2FrZV9jb25maWdfY2hhbmdlKCZwcml2LT5jYWtlX2NvbmZp
Zywgb3B0LCBleHRhY2ssICZvdmVyaGVhZF9jaGFuZ2VkKTsNCisJaWYgKHJldCkNCisJCXJldHVy
biByZXQ7DQorDQorCXNjaF90cmVlX2xvY2soc2NoKTsNCisJZm9yIChudHggPSAwOyBudHggPCBk
ZXYtPm51bV90eF9xdWV1ZXM7IG50eCsrKSB7DQorCQlzdHJ1Y3QgUWRpc2MgKmNobGQgPSBydG5s
X2RlcmVmZXJlbmNlKG5ldGRldl9nZXRfdHhfcXVldWUoZGV2LCBudHgpLT5xZGlzY19zbGVlcGlu
Zyk7DQorCQlzdHJ1Y3QgY2FrZV9zY2hlZF9kYXRhICpxZCA9IHFkaXNjX3ByaXYoY2hsZCk7DQor
DQorCQlpZiAob3ZlcmhlYWRfY2hhbmdlZCkgew0KKwkJCXFkLT5tYXhfbmV0bGVuID0gMDsNCisJ
CQlxZC0+bWF4X2FkamxlbiA9IDA7DQorCQkJcWQtPm1pbl9uZXRsZW4gPSB+MDsNCisJCQlxZC0+
bWluX2FkamxlbiA9IH4wOw0KKwkJfQ0KKw0KKwkJaWYgKHFkLT50aW5zKQ0KKwkJCWNha2VfcmVj
b25maWd1cmUoY2hsZCk7DQorCX0NCisJc2NoX3RyZWVfdW5sb2NrKHNjaCk7DQorDQorCXJldHVy
biAwOw0KIH0NCiANCiBzdGF0aWMgaW50IGNha2VfbXFfZ3JhZnQoc3RydWN0IFFkaXNjICpzY2gs
IHVuc2lnbmVkIGxvbmcgY2wsIHN0cnVjdCBRZGlzYyAqbmV3LA0KDQotLSANCjIuNTIuMA0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxp
bmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==

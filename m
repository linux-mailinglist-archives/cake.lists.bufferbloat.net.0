Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E5DD0A512
	for <lists+cake@lfdr.de>; Fri, 09 Jan 2026 14:15:55 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id C5D12B8AC40;
	Fri, 09 Jan 2026 14:15:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1767964551;
	bh=zs7/S08PNLvCgc6ZRxQng/EvAKqMxjCe/txbHLh1jNk=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Jt9XzNKyDuWk7yOjUONMMcSTAXmmQ2DL8nr4N0yweV7LQxzW5lhCpYcj5o1+b4wlW
	 j4OdPOS1BMZFonb9TX6KXwNskdXHgGl3WpSuC6UN4MhHxr+8gJ/XHCQI4FD35fynZL
	 S2Ed0TWNc5p2WRcePwlhxolr8urbQ7TXVx+h9juJCbVFWu0Ri24eK3AF9GIIfgBiAB
	 IGCXTnFdnnnpUHqyrDyaFaIYEeB1LcrfYw+xFRMManwWEled+d41rtLeEqq5o7EVSz
	 4vf/Okq1+KGKpXN0cTb3tyHN7rG3FUcnOCBYqhcdP+RKWKjCmxU1u4j/8zXIYD+dS8
	 IgLM2o4RwH9Gg==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767964551;
 b=FWB1ClQB5SmPuJnKA8ZeGP40KuqK/oe8tO8p0Wv+A53g7p/Swchln8G84GaatWJOA61u6
 iISOH/2DaUcf6oUlFc9TBuAOsZ+kqeVCP8SmjxLtGMa83UedPtsgheaCI6Km9vTN9IevC6U
 ckgm+jJGC9roVs8Pi6xHdY5q4nSSftI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767964551; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=zs7/S08PNLvCgc6ZRxQng/EvAKqMxjCe/txbHLh1jNk=;
 b=bLc/H99T/YugWl5UHUVFLKnUouAWnnnFZBZUnPkGE1LHMoCuleL782ZNuzBi/PEkbRBFY
 QjfipYB9RND4P5wFvZVU0ycSI05opuYB0DOmwV9J5hKWzplepb2YKExW4L2Je/4VQn3vqZb
 4t3aEcvlwDVSEB+ryAb+8h90SpSaVAk=
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
	by mail.toke.dk (Postfix) with ESMTPS id F191FB8ABE0
	for <cake@lists.bufferbloat.net>; Fri, 09 Jan 2026 14:15:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767964547;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+y8nr22EOqsIKlkFfOSiieyoGz2jsNZZsRdVnI1AELk=;
	b=DKCHajxQWtLiLWm0R/3OjT+Ntj0SIYUxepcDJ6PMQhxxNCkMLRTJxF8Sh4funzfP/Sbtjj
	N+CVF44vqTQYp7y3sOAlM6E8LTJIolCwgViwuEzfAYHuxMt05qfCu0sX9REHnn0GDdNsbF
	ftN0C1qkq7nA3qIyP1w/cEyYXOfuyh8=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-685-5-dOfn2VNtSqDysJkJy6_Q-1; Fri, 09 Jan 2026 08:15:45 -0500
X-MC-Unique: 5-dOfn2VNtSqDysJkJy6_Q-1
X-Mimecast-MFC-AGG-ID: 5-dOfn2VNtSqDysJkJy6_Q_1767964543
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-b771bfe9802so500628466b.1
        for <cake@lists.bufferbloat.net>;
 Fri, 09 Jan 2026 05:15:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767964543; x=1768569343;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+y8nr22EOqsIKlkFfOSiieyoGz2jsNZZsRdVnI1AELk=;
        b=Vuv5eKK1iHx+RZMWm6fLonmk7b5NOxrmcuhvhYME9FyVJtP5KQHskLuRv5bHMO30W6
         X7j0MZSHxRMeZaY2qnKvl/ny560PzCci6G7UZIQf7SQ9Qy1wFTKF++o1a5JLbT+QdwxP
         x1Yxf5onZfETPood+u0wZNB6a3Mhbapww+8WDkK9LZZBA24n79caWg2ylHr5x/HIJFYJ
         iqbduLxb+fd+7dUngAlErHJQQpIfq2OPUrI+1VrVkHLJUMo4IqlkP06V01NR1iwXyWft
         DffCQPTkULTAZalAAzokdjOZ30Rv08u75WUCXVhEnM90o/RdL+/pzBsWDGEOR8DBExgX
         zsrg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUPawkCunIB9HYbALnMj24Uva36miNIdMQRgR4aGtZ9Yf25NxOlrcmTCge9tepoeS7U3tmr@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwpGTVNMISvcaWPWF5wjjk8htIJ3Djk9++SSHD5qFSpD4FccUDA
	x2z/yY3leVcqXYfVwpGP2sGxO+bYj1RjnoZLb2dZJemQ4/TFF0tcHPfg4NkibeNpKxktOLNCKjM
	BbPJfXFZaIKqIHWkfuF8r38wE+/0HdQgY8PzPg8+gg8awxvkMV1gqIEaCYkAe6Jo=
X-Gm-Gg: AY/fxX5xelsPZDKVrS6/+2DZMvdjbpuf/9JQLBgyfOgl6H70cLE1MQxo/2oPkRzpAb4
	eY4SFYMmZ3EQzXg1Esps0IAdhz9+cjrz9aQ5SVPkMXXOELJdUdmssenCxispaJRDhbhaeRRH/Hu
	8P1m9u05vdD3J9oGP/iVH6m0+UWkeRAqvuG+tMLVoS8gOi+8lqA8gC/8/6Ud4EnFBak4L32OyWr
	MjHIm+V7jeVd1OdIqQUBiw35EmiBi16nnE9dljbC8GgkH/tCpFkBwvMw6KDT9/R3YE6lecdKYRp
	yJRPjXTDzIXGsQZEOZt4B/cQ61UmsUvlxXSbRkSgi4XPmyHNBj1xAm9sAGb6TfQZ+y+jHPFUnmP
	fhA/J8chGcEb5tM+VN+RXQr8pXKAuQZTNnJl7
X-Received: by 2002:a17:907:6d1a:b0:b76:74b6:da78 with SMTP id
 a640c23a62f3a-b8444f4afe6mr948627566b.35.1767964542951;
        Fri, 09 Jan 2026 05:15:42 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IESLqZ1X69qioHrfRsqVHeL17hSfWwDwGgNJDnZZGkYdNw1edGjAi9tJb0T9l4djKJTg99mwA==
X-Received: by 2002:a17:907:6d1a:b0:b76:74b6:da78 with SMTP id
 a640c23a62f3a-b8444f4afe6mr948624566b.35.1767964542440;
        Fri, 09 Jan 2026 05:15:42 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.borgediget.toke.dk.
 [2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b842a5641casm1171826366b.64.2026.01.09.05.15.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 05:15:41 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 2FD70408635; Fri, 09 Jan 2026 14:15:38 +0100 (CET)
Date: Fri, 09 Jan 2026 14:15:34 +0100
MIME-Version: 1.0
Message-Id: <20260109-mq-cake-sub-qdisc-v8-5-8d613fece5d8@redhat.com>
References: <20260109-mq-cake-sub-qdisc-v8-0-8d613fece5d8@redhat.com>
In-Reply-To: <20260109-mq-cake-sub-qdisc-v8-0-8d613fece5d8@redhat.com>
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
X-Mimecast-MFC-PROC-ID: G0P0KTiei7laV6fYrqjsE8QdDTW_8ypeML8Y42DURY4_1767964543
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: CALGHFKIYNE4TDZM2STPY2DSHAF52F3C
X-Message-ID-Hash: CALGHFKIYNE4TDZM2STPY2DSHAF52F3C
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next v8 5/6] net/sched: sch_cake: share shaper state across
 sub-instances of cake_mq
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20260109-mq-cake-sub-qdisc-v8-5-8d613fece5d8@redhat.com/>
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

RnJvbTogSm9uYXMgS8O2cHBlbGVyIDxqLmtvZXBwZWxlckB0dS1iZXJsaW4uZGU+DQoNClRoaXMg
Y29tbWl0IGFkZHMgc2hhcmVkIHNoYXBlciBzdGF0ZSBhY3Jvc3MgdGhlIGNha2UgaW5zdGFuY2Vz
IGJlbmVhdGggYQ0KY2FrZV9tcSBxZGlzYy4gSXQgd29ya3MgYnkgcGVyaW9kaWNhbGx5IHRyYWNr
aW5nIHRoZSBudW1iZXIgb2YgYWN0aXZlDQppbnN0YW5jZXMsIGFuZCBzY2FsaW5nIHRoZSBjb25m
aWd1cmVkIHJhdGUgYnkgdGhlIG51bWJlciBvZiBhY3RpdmUNCnF1ZXVlcy4NCg0KVGhlIHNjYW4g
aXMgbG9ja2xlc3MgYW5kIHNpbXBseSByZWFkcyB0aGUgcWxlbiBhbmQgdGhlIGxhc3RfYWN0aXZl
IHN0YXRlDQp2YXJpYWJsZSBvZiBlYWNoIG9mIHRoZSBpbnN0YW5jZXMgY29uZmlndXJlZCBiZW5l
YXRoIHRoZSBwYXJlbnQgY2FrZV9tcQ0KaW5zdGFuY2UuIExvY2tpbmcgaXMgbm90IHJlcXVpcmVk
IHNpbmNlIHRoZSB2YWx1ZXMgYXJlIG9ubHkgdXBkYXRlZCBieQ0KdGhlIG93bmluZyBpbnN0YW5j
ZSwgYW5kIGV2ZW50dWFsIGNvbnNpc3RlbmN5IGlzIHN1ZmZpY2llbnQgZm9yIHRoZQ0KcHVycG9z
ZSBvZiBlc3RpbWF0aW5nIHRoZSBudW1iZXIgb2YgYWN0aXZlIHF1ZXVlcy4NCg0KVGhlIGludGVy
dmFsIGZvciBzY2FubmluZyB0aGUgbnVtYmVyIG9mIGFjdGl2ZSBxdWV1ZXMgaXMgc2V0IHRvIDIw
MCB1cy4NCldlIGZvdW5kIHRoaXMgdG8gYmUgYSBnb29kIHRyYWRlb2ZmIGJldHdlZW4gb3Zlcmhl
YWQgYW5kIHJlc3BvbnNlIHRpbWUuDQpGb3IgYSBkZXRhaWxlZCBhbmFseXNpcyBvZiB0aGlzIGFz
cGVjdCBzZWUgdGhlIE5ldGRldmNvbmYgdGFsazoNCg0KaHR0cHM6Ly9uZXRkZXZjb25mLmluZm8v
MHgxOS9kb2NzL25ldGRldi0weDE5LXBhcGVyMTYtdGFsay1wYXBlci5wZGYNCg0KUmV2aWV3ZWQt
Ynk6IEphbWFsIEhhZGkgU2FsaW0gPGpoc0Btb2phdGF0dS5jb20+DQpTaWduZWQtb2ZmLWJ5OiBK
b25hcyBLw7ZwcGVsZXIgPGoua29lcHBlbGVyQHR1LWJlcmxpbi5kZT4NClNpZ25lZC1vZmYtYnk6
IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPg0KLS0tDQogRG9jdW1l
bnRhdGlvbi9uZXRsaW5rL3NwZWNzL3RjLnlhbWwgfCAgMyArKysNCiBpbmNsdWRlL3VhcGkvbGlu
dXgvcGt0X3NjaGVkLmggICAgICB8ICAxICsNCiBuZXQvc2NoZWQvc2NoX2Nha2UuYyAgICAgICAg
ICAgICAgICB8IDUxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCiAzIGZp
bGVzIGNoYW5nZWQsIDU1IGluc2VydGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vbmV0bGluay9zcGVjcy90Yy55YW1sIGIvRG9jdW1lbnRhdGlvbi9uZXRsaW5rL3NwZWNzL3Rj
LnlhbWwNCmluZGV4IGIzOThmN2E0NmRhZS4uMmU2NjMzMzNhMjc5IDEwMDY0NA0KLS0tIGEvRG9j
dW1lbnRhdGlvbi9uZXRsaW5rL3NwZWNzL3RjLnlhbWwNCisrKyBiL0RvY3VtZW50YXRpb24vbmV0
bGluay9zcGVjcy90Yy55YW1sDQpAQCAtMjIwNyw2ICsyMjA3LDkgQEAgYXR0cmlidXRlLXNldHM6
DQogICAgICAgLQ0KICAgICAgICAgbmFtZTogYmx1ZS10aW1lci11cw0KICAgICAgICAgdHlwZTog
czMyDQorICAgICAgLQ0KKyAgICAgICAgbmFtZTogYWN0aXZlLXF1ZXVlcw0KKyAgICAgICAgdHlw
ZTogdTMyDQogICAtDQogICAgIG5hbWU6IGNha2UtdGluLXN0YXRzLWF0dHJzDQogICAgIG5hbWUt
cHJlZml4OiB0Y2EtY2FrZS10aW4tc3RhdHMtDQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xp
bnV4L3BrdF9zY2hlZC5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L3BrdF9zY2hlZC5oDQppbmRleCBj
MmRhNzZlNzhiYWQuLjY2ZTgwNzJmNDRkZiAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvdWFwaS9saW51
eC9wa3Rfc2NoZWQuaA0KKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L3BrdF9zY2hlZC5oDQpAQCAt
MTAzNiw2ICsxMDM2LDcgQEAgZW51bSB7DQogCVRDQV9DQUtFX1NUQVRTX0RST1BfTkVYVF9VUywN
CiAJVENBX0NBS0VfU1RBVFNfUF9EUk9QLA0KIAlUQ0FfQ0FLRV9TVEFUU19CTFVFX1RJTUVSX1VT
LA0KKwlUQ0FfQ0FLRV9TVEFUU19BQ1RJVkVfUVVFVUVTLA0KIAlfX1RDQV9DQUtFX1NUQVRTX01B
WA0KIH07DQogI2RlZmluZSBUQ0FfQ0FLRV9TVEFUU19NQVggKF9fVENBX0NBS0VfU1RBVFNfTUFY
IC0gMSkNCmRpZmYgLS1naXQgYS9uZXQvc2NoZWQvc2NoX2Nha2UuYyBiL25ldC9zY2hlZC9zY2hf
Y2FrZS5jDQppbmRleCAyZTYwZTc5ODA1NTguLmUzMGVmN2Y4ZWU2OCAxMDA2NDQNCi0tLSBhL25l
dC9zY2hlZC9zY2hfY2FrZS5jDQorKysgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYw0KQEAgLTIwMiw2
ICsyMDIsNyBAQCBzdHJ1Y3QgY2FrZV9zY2hlZF9jb25maWcgew0KIAl1NjQJCXJhdGVfYnBzOw0K
IAl1NjQJCWludGVydmFsOw0KIAl1NjQJCXRhcmdldDsNCisJdTY0CQlzeW5jX3RpbWU7DQogCXUz
MgkJYnVmZmVyX2NvbmZpZ19saW1pdDsNCiAJdTMyCQlmd21hcmtfbWFzazsNCiAJdTE2CQlmd21h
cmtfc2hmdDsNCkBAIC0yNTgsNiArMjU5LDExIEBAIHN0cnVjdCBjYWtlX3NjaGVkX2RhdGEgew0K
IAl1MTYJCW1heF9hZGpsZW47DQogCXUxNgkJbWluX25ldGxlbjsNCiAJdTE2CQltaW5fYWRqbGVu
Ow0KKw0KKwkvKiBtcSBzeW5jIHN0YXRlICovDQorCXU2NAkJbGFzdF9jaGVja2VkX2FjdGl2ZTsN
CisJdTY0CQlsYXN0X2FjdGl2ZTsNCisJdTMyCQlhY3RpdmVfcXVldWVzOw0KIH07DQogDQogZW51
bSB7DQpAQCAtMzg0LDYgKzM5MCw4IEBAIHN0YXRpYyBjb25zdCB1MzIgaW52X3NxcnRfY2FjaGVb
UkVDX0lOVl9TUVJUX0NBQ0hFXSA9IHsNCiAJMTIzOTg1MDI2MywgMTE5MTIwOTYwMSwgMTE0Nzg3
ODI5NCwgMTEwODk1NTc4OA0KIH07DQogDQorc3RhdGljIHZvaWQgY2FrZV9zZXRfcmF0ZShzdHJ1
Y3QgY2FrZV90aW5fZGF0YSAqYiwgdTY0IHJhdGUsIHUzMiBtdHUsDQorCQkJICB1NjQgdGFyZ2V0
X25zLCB1NjQgcnR0X2VzdF9ucyk7DQogLyogaHR0cDovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9N
ZXRob2RzX29mX2NvbXB1dGluZ19zcXVhcmVfcm9vdHMNCiAgKiBuZXdfaW52c3FydCA9IChpbnZz
cXJ0IC8gMikgKiAoMyAtIGNvdW50ICogaW52c3FydF4yKQ0KICAqDQpAQCAtMjAwNCw2ICsyMDEy
LDQwIEBAIHN0YXRpYyBzdHJ1Y3Qgc2tfYnVmZiAqY2FrZV9kZXF1ZXVlKHN0cnVjdCBRZGlzYyAq
c2NoKQ0KIAl1NjQgZGVsYXk7DQogCXUzMiBsZW47DQogDQorCWlmIChxLT5jb25maWctPmlzX3No
YXJlZCAmJiBub3cgLSBxLT5sYXN0X2NoZWNrZWRfYWN0aXZlID49IHEtPmNvbmZpZy0+c3luY190
aW1lKSB7DQorCQlzdHJ1Y3QgbmV0X2RldmljZSAqZGV2ID0gcWRpc2NfZGV2KHNjaCk7DQorCQlz
dHJ1Y3QgY2FrZV9zY2hlZF9kYXRhICpvdGhlcl9wcml2Ow0KKwkJdTY0IG5ld19yYXRlID0gcS0+
Y29uZmlnLT5yYXRlX2JwczsNCisJCXU2NCBvdGhlcl9xbGVuLCBvdGhlcl9sYXN0X2FjdGl2ZTsN
CisJCXN0cnVjdCBRZGlzYyAqb3RoZXJfc2NoOw0KKwkJdTMyIG51bV9hY3RpdmVfcXMgPSAxOw0K
KwkJdW5zaWduZWQgaW50IG50eDsNCisNCisJCWZvciAobnR4ID0gMDsgbnR4IDwgZGV2LT5udW1f
dHhfcXVldWVzOyBudHgrKykgew0KKwkJCW90aGVyX3NjaCA9IHJjdV9kZXJlZmVyZW5jZShuZXRk
ZXZfZ2V0X3R4X3F1ZXVlKGRldiwgbnR4KS0+cWRpc2Nfc2xlZXBpbmcpOw0KKwkJCW90aGVyX3By
aXYgPSBxZGlzY19wcml2KG90aGVyX3NjaCk7DQorDQorCQkJaWYgKG90aGVyX3ByaXYgPT0gcSkN
CisJCQkJY29udGludWU7DQorDQorCQkJb3RoZXJfcWxlbiA9IFJFQURfT05DRShvdGhlcl9zY2gt
PnEucWxlbik7DQorCQkJb3RoZXJfbGFzdF9hY3RpdmUgPSBSRUFEX09OQ0Uob3RoZXJfcHJpdi0+
bGFzdF9hY3RpdmUpOw0KKw0KKwkJCWlmIChvdGhlcl9xbGVuIHx8IG90aGVyX2xhc3RfYWN0aXZl
ID4gcS0+bGFzdF9jaGVja2VkX2FjdGl2ZSkNCisJCQkJbnVtX2FjdGl2ZV9xcysrOw0KKwkJfQ0K
Kw0KKwkJaWYgKG51bV9hY3RpdmVfcXMgPiAxKQ0KKwkJCW5ld19yYXRlID0gZGl2NjRfdTY0KHEt
PmNvbmZpZy0+cmF0ZV9icHMsIG51bV9hY3RpdmVfcXMpOw0KKw0KKwkJLyogbXR1ID0gMCBpcyB1
c2VkIHRvIG9ubHkgdXBkYXRlIHRoZSByYXRlIGFuZCBub3QgbWVzcyB3aXRoIGNvYmFsdCBwYXJh
bXMgKi8NCisJCWNha2Vfc2V0X3JhdGUoYiwgbmV3X3JhdGUsIDAsIDAsIDApOw0KKwkJcS0+bGFz
dF9jaGVja2VkX2FjdGl2ZSA9IG5vdzsNCisJCXEtPmFjdGl2ZV9xdWV1ZXMgPSBudW1fYWN0aXZl
X3FzOw0KKwkJcS0+cmF0ZV9ucyA9IGItPnRpbl9yYXRlX25zOw0KKwkJcS0+cmF0ZV9zaGZ0ID0g
Yi0+dGluX3JhdGVfc2hmdDsNCisJfQ0KKw0KIGJlZ2luOg0KIAlpZiAoIXNjaC0+cS5xbGVuKQ0K
IAkJcmV0dXJuIE5VTEw7DQpAQCAtMjIwMyw2ICsyMjQ1LDcgQEAgc3RhdGljIHN0cnVjdCBza19i
dWZmICpjYWtlX2RlcXVldWUoc3RydWN0IFFkaXNjICpzY2gpDQogDQogCWItPnRpbl9lY25fbWFy
ayArPSAhIWZsb3ctPmN2YXJzLmVjbl9tYXJrZWQ7DQogCXFkaXNjX2JzdGF0c191cGRhdGUoc2No
LCBza2IpOw0KKwlXUklURV9PTkNFKHEtPmxhc3RfYWN0aXZlLCBub3cpOw0KIA0KIAkvKiBjb2xs
ZWN0IGRlbGF5IHN0YXRzICovDQogCWRlbGF5ID0ga3RpbWVfdG9fbnMoa3RpbWVfc3ViKG5vdywg
Y29iYWx0X2dldF9lbnF1ZXVlX3RpbWUoc2tiKSkpOw0KQEAgLTIzMDMsNiArMjM0Niw5IEBAIHN0
YXRpYyB2b2lkIGNha2Vfc2V0X3JhdGUoc3RydWN0IGNha2VfdGluX2RhdGEgKmIsIHU2NCByYXRl
LCB1MzIgbXR1LA0KIAliLT50aW5fcmF0ZV9ucyAgID0gcmF0ZV9uczsNCiAJYi0+dGluX3JhdGVf
c2hmdCA9IHJhdGVfc2hmdDsNCiANCisJaWYgKG10dSA9PSAwKQ0KKwkJcmV0dXJuOw0KKw0KIAli
eXRlX3RhcmdldF9ucyA9IChieXRlX3RhcmdldCAqIHJhdGVfbnMpID4+IHJhdGVfc2hmdDsNCiAN
CiAJYi0+Y3BhcmFtcy50YXJnZXQgPSBtYXgoKGJ5dGVfdGFyZ2V0X25zICogMykgLyAyLCB0YXJn
ZXRfbnMpOw0KQEAgLTI3NjksNiArMjgxNSw3IEBAIHN0YXRpYyB2b2lkIGNha2VfY29uZmlnX2lu
aXQoc3RydWN0IGNha2Vfc2NoZWRfY29uZmlnICpxLCBib29sIGlzX3NoYXJlZCkNCiAJCQkgICAg
ICAgKi8NCiAJcS0+cmF0ZV9mbGFncyB8PSBDQUtFX0ZMQUdfU1BMSVRfR1NPOw0KIAlxLT5pc19z
aGFyZWQgPSBpc19zaGFyZWQ7DQorCXEtPnN5bmNfdGltZSA9IDIwMCAqIE5TRUNfUEVSX1VTRUM7
DQogfQ0KIA0KIHN0YXRpYyBpbnQgY2FrZV9pbml0KHN0cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3Qg
bmxhdHRyICpvcHQsDQpAQCAtMjg0Miw2ICsyODg5LDkgQEAgc3RhdGljIGludCBjYWtlX2luaXQo
c3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdCBubGF0dHIgKm9wdCwNCiAJcWQtPmF2Z19wZWFrX2Jh
bmR3aWR0aCA9IHEtPnJhdGVfYnBzOw0KIAlxZC0+bWluX25ldGxlbiA9IH4wOw0KIAlxZC0+bWlu
X2FkamxlbiA9IH4wOw0KKwlxZC0+YWN0aXZlX3F1ZXVlcyA9IDA7DQorCXFkLT5sYXN0X2NoZWNr
ZWRfYWN0aXZlID0gMDsNCisNCiAJcmV0dXJuIDA7DQogZXJyOg0KIAlrdmZyZWUocWQtPmNvbmZp
Zyk7DQpAQCAtMjk3NCw2ICszMDI0LDcgQEAgc3RhdGljIGludCBjYWtlX2R1bXBfc3RhdHMoc3Ry
dWN0IFFkaXNjICpzY2gsIHN0cnVjdCBnbmV0X2R1bXAgKmQpDQogCVBVVF9TVEFUX1UzMihNQVhf
QURKTEVOLCBxLT5tYXhfYWRqbGVuKTsNCiAJUFVUX1NUQVRfVTMyKE1JTl9ORVRMRU4sIHEtPm1p
bl9uZXRsZW4pOw0KIAlQVVRfU1RBVF9VMzIoTUlOX0FESkxFTiwgcS0+bWluX2Fkamxlbik7DQor
CVBVVF9TVEFUX1UzMihBQ1RJVkVfUVVFVUVTLCBxLT5hY3RpdmVfcXVldWVzKTsNCiANCiAjdW5k
ZWYgUFVUX1NUQVRfVTMyDQogI3VuZGVmIFBVVF9TVEFUX1U2NA0KDQotLSANCjIuNTIuMA0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxp
bmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==

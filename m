Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCB1B99CA5
	for <lists+cake@lfdr.de>; Wed, 24 Sep 2025 14:16:39 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 01F636E8344;
	Wed, 24 Sep 2025 14:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1758716198;
	bh=ekb5s2TG25C7V/sWiYPzAmYhnge3knGdYFssoBPr62M=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=YbTwi1JdUBM+h8+wFv5oeZypfuFQuJQf7mddSQZE2sTBfwi7pX6Xqy2CJfKbF/R1n
	 QcOwHGq49Cd+f4yEmVF3C2MQXsY6XHhSI3/PraokUTexFLxKUkTB+R9XSqxWIuMXPG
	 6hXYX/C4PvqdhyEM65/YRJheKmvTaCRix3s2+cgzVu0cifcqTwdyrpnY/PulIkiAU7
	 mDgrn5ZdE6SrC3ugHlI9fgMYIQt8Mz3ZcxZ0RmUu62gd225TEeHlTGDLZjKTold076
	 oIAJdM/L5rEe1ilDL9NAZy7Eh8K9sTPEBEJuX0NfiKjSo3HT8BEundXFFmSw6WDEpB
	 GUnojj2Kznzrg==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1758716197;
 b=4co8hh8aNbTmpxk05/mmMMcv6Ug795HxM5Hxa7ps3BLmc6WlPkYrmCPvfkSzHxoLIGS4/
 b3yfZV/lxpO1v/fOgZh+JttMApz9RIWC6H5EvlrBws6xjRcFzve0i4xf4TXm15DGLRpxOuR
 hSYV97JH+x9OCRMT/Vh6FjpQwFRWIcA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1758716197; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ekb5s2TG25C7V/sWiYPzAmYhnge3knGdYFssoBPr62M=;
 b=ULjaxFQGwu86cXtEwXDUZGovS1LEgZj6l+TZLjIPQI1I6e20iY67crb2XQPwz2Dnuj/mV
 pM319AZaUMsj4pJHufA3It7RUkKVvh1EaVGqO9UDPytJwLUE18ZxVg+rHG1LughlnW3v8Dv
 aHldhOdQnu8whR5E7GAEKM23MNJSpYc=
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
	by mail.toke.dk (Postfix) with ESMTPS id 717306E830D
	for <cake@lists.bufferbloat.net>; Wed, 24 Sep 2025 14:16:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1758716192;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uaZBj7DV56tdO3MZR0SX2xTuMVtdTe+cM0MJkyLqgvo=;
	b=QNG+SuGubDCFdyCeMjDzwvSSoTOmv9LRDCFxsBn6g8splVXzKCBhgjvB2WRFT6cvNJKa5c
	FXaHpIPwVF3g8CYTvkFy2CHpR6hZl1BQzUTuK0sz/UjbNLzTWsPTMdkP8z58YMD6Ioqcjg
	ns1smVYfRaNS/xZT/UtB2lPsHZPhIwc=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-491-tYyCYIvjPMeMKOCAPicfKw-1; Wed, 24 Sep 2025 08:16:31 -0400
X-MC-Unique: tYyCYIvjPMeMKOCAPicfKw-1
X-Mimecast-MFC-AGG-ID: tYyCYIvjPMeMKOCAPicfKw_1758716189
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-b33d785dc3bso32695966b.3
        for <cake@lists.bufferbloat.net>;
 Wed, 24 Sep 2025 05:16:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758716189; x=1759320989;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uaZBj7DV56tdO3MZR0SX2xTuMVtdTe+cM0MJkyLqgvo=;
        b=soYlzyrQ2TLFThPY2by5JWjjA/DNm+Jn3Pb/s3mP01EXaLK8S9HDLFi00L1E9aZxlN
         VsFBV91ZnFvvB7X+X54adalQM5wQdjAiexC/u4IfasdFOzuNbgagpW/+ElykwfmJe02M
         COlI+Te6i5V1fi1rtjZV8tAynP2DBrz1cQZUgcfqai6RQ+MT3MLxnWjhRIiVufdLTLl0
         5ga9KE6+GsdcEiLK8QSoMnDSuMMZYvSqXMmfrNP3amf6ZTtu3kKCn9eNeFSvJK8Vd0dV
         StxhjZdrYhAiusCjrevcvCbPHZhDM8uDbDaJc1cEFRQ33JLkWYUpjUGbWiO0dq4avywU
         VufQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXte4Z4enyo1Gh6AFWQFt8L2UuBEwkRcRDMdD4KX67iZK4sH+Xnr3CZ+Y7O5jdMW2QFBNYs@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwjOCgjtV92Td6FmwH4vWOAPJ9aMDCzlm0cFOi9QKP05hfDS7fk
	Mg/6tqIA6ScsImnffs0MbbqE+qj+5hKNe7fKDPDUyYO37jbhxvHwrU8lgHa2csO+Hno72b6RJQn
	tK6Yj2kgjF7xkKGiBIg1ShFFHYb47qhxw8kPxt1Ugg7XW3/HjgW2aZWyXI0pnc0k=
X-Gm-Gg: ASbGncta8ys/wKqZpNB/aHzVooOEsrWxyabRGJ3h6l0NXJeJIjbKfXZV7lbub6k8pkL
	7kVKSQctTjS3JtjtivTHdcZCG9STV4F68ok/ZR9sOu5jbcK8XyGrJQ/OM/knMiJ3+1IL41PJI44
	o/DgFDJyeBS4gpVdXyYVu2i7bO/6ya5gmT4Vk/f5MmIz6DC0muBdh9KbIyQjgSOKK6gHCjMZzT2
	qAf8kg3Q/AqFvjMJttTJHAAe4YO1cadT7/hXqDBEwMQahN8RZfbVVRGcaxkILGrD683d/aI4nvq
	2Krw0Z6Et40jKWtBT1Y478avVXkscUHA7XTL1cxYiw2SYeQxLImZRdjw4F6WxW/y
X-Received: by 2002:a17:906:c182:b0:b31:ec30:c678 with SMTP id
 a640c23a62f3a-b31ec3193f1mr325994166b.57.1758716189109;
        Wed, 24 Sep 2025 05:16:29 -0700 (PDT)
X-Google-Smtp-Source: 
 AGHT+IELErqdAePyfYI3I/G7TvvYplOjnruJiXghDSSSCw965rvIJ/98I1bHzk7mcp2LbWzRGx0U6A==
X-Received: by 2002:a17:906:c182:b0:b31:ec30:c678 with SMTP id
 a640c23a62f3a-b31ec3193f1mr325992366b.57.1758716188688;
        Wed, 24 Sep 2025 05:16:28 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b261bdfe871sm1212276166b.61.2025.09.24.05.16.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 05:16:27 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 5AAE4276E2E; Wed, 24 Sep 2025 14:16:26 +0200 (CEST)
Date: Wed, 24 Sep 2025 14:16:06 +0200
MIME-Version: 1.0
Message-Id: <20250924-mq-cake-sub-qdisc-v1-4-43a060d1112a@redhat.com>
References: <20250924-mq-cake-sub-qdisc-v1-0-43a060d1112a@redhat.com>
In-Reply-To: <20250924-mq-cake-sub-qdisc-v1-0-43a060d1112a@redhat.com>
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
X-Mimecast-MFC-PROC-ID: w4nVGwti7tGdXTipZOaTnI2sLYxhVR6qx0ASV4V4mIs_1758716189
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: VWARHUFIAAHMG3NTEGI3H2ARX345PCBK
X-Message-ID-Hash: VWARHUFIAAHMG3NTEGI3H2ARX345PCBK
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH RFC net-next 4/4] net/sched: sch_cake: share shaper state across
 sub-instances of cake_mq
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20250924-mq-cake-sub-qdisc-v1-4-43a060d1112a@redhat.com/>
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
dmFsIGZvciBzY2FubmluZyB0aGUgbnVtYmVyIG9mIGFjdGl2ZSBxdWV1ZXMgaXMgY29uZmlndXJh
YmxlDQphbmQgZGVmYXVsdHMgdG8gMjAwIHVzLiBXZSBmb3VuZCB0aGlzIHRvIGJlIGEgZ29vZCB0
cmFkZW9mZiBiZXR3ZWVuDQpvdmVyaGVhZCBhbmQgcmVzcG9uc2UgdGltZS4gRm9yIGEgZGV0YWls
ZWQgYW5hbHlzaXMgb2YgdGhpcyBhc3BlY3Qgc2VlDQp0aGUgTmV0ZGV2Y29uZiB0YWxrOg0KDQpo
dHRwczovL25ldGRldmNvbmYuaW5mby8weDE5L2RvY3MvbmV0ZGV2LTB4MTktcGFwZXIxNi10YWxr
LXBhcGVyLnBkZg0KDQpTaWduZWQtb2ZmLWJ5OiBKb25hcyBLw7ZwcGVsZXIgPGoua29lcHBlbGVy
QHR1LWJlcmxpbi5kZT4NClNpZ25lZC1vZmYtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8
dG9rZUByZWRoYXQuY29tPg0KLS0tDQogaW5jbHVkZS91YXBpL2xpbnV4L3BrdF9zY2hlZC5oIHwg
IDIgKysNCiBuZXQvc2NoZWQvc2NoX2Nha2UuYyAgICAgICAgICAgfCA2NyArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCiAyIGZpbGVzIGNoYW5nZWQsIDY5IGluc2Vy
dGlvbnMoKykNCg0KZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC9wa3Rfc2NoZWQuaCBi
L2luY2x1ZGUvdWFwaS9saW51eC9wa3Rfc2NoZWQuaA0KaW5kZXggYzJkYTc2ZTc4YmFkZWJiZGY3
ZDU0ODJjZWYxYTMxMzJhZWM5OWZlMS4uYTRhYTgxMmJmYmU4NjQyNGM1MDJkZTViYjJlNWIxNDI5
YjQ0MDA4OCAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvdWFwaS9saW51eC9wa3Rfc2NoZWQuaA0KKysr
IGIvaW5jbHVkZS91YXBpL2xpbnV4L3BrdF9zY2hlZC5oDQpAQCAtMTAxNCw2ICsxMDE0LDcgQEAg
ZW51bSB7DQogCVRDQV9DQUtFX0FDS19GSUxURVIsDQogCVRDQV9DQUtFX1NQTElUX0dTTywNCiAJ
VENBX0NBS0VfRldNQVJLLA0KKwlUQ0FfQ0FLRV9TWU5DX1RJTUUsDQogCV9fVENBX0NBS0VfTUFY
DQogfTsNCiAjZGVmaW5lIFRDQV9DQUtFX01BWAkoX19UQ0FfQ0FLRV9NQVggLSAxKQ0KQEAgLTEw
MzYsNiArMTAzNyw3IEBAIGVudW0gew0KIAlUQ0FfQ0FLRV9TVEFUU19EUk9QX05FWFRfVVMsDQog
CVRDQV9DQUtFX1NUQVRTX1BfRFJPUCwNCiAJVENBX0NBS0VfU1RBVFNfQkxVRV9USU1FUl9VUywN
CisJVENBX0NBS0VfU1RBVFNfQUNUSVZFX1FVRVVFUywNCiAJX19UQ0FfQ0FLRV9TVEFUU19NQVgN
CiB9Ow0KICNkZWZpbmUgVENBX0NBS0VfU1RBVFNfTUFYIChfX1RDQV9DQUtFX1NUQVRTX01BWCAt
IDEpDQpkaWZmIC0tZ2l0IGEvbmV0L3NjaGVkL3NjaF9jYWtlLmMgYi9uZXQvc2NoZWQvc2NoX2Nh
a2UuYw0KaW5kZXggN2NlY2NiZmFhOWI2YjRjZGVhZjE3YjQxNmMyYjY1NzA5YzIyYTYwYS4uMDE0
YTM5OWJhYzMwZWQ0YTQwY2E0ZWRlMzEzZGI1YWJmYmJiNTI0MyAxMDA2NDQNCi0tLSBhL25ldC9z
Y2hlZC9zY2hfY2FrZS5jDQorKysgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYw0KQEAgLTIwMSw2ICsy
MDEsNyBAQCBzdHJ1Y3QgY2FrZV9zY2hlZF9jb25maWcgew0KIAl1NjQJCXJhdGVfYnBzOw0KIAl1
NjQJCWludGVydmFsOw0KIAl1NjQJCXRhcmdldDsNCisJdTY0CQlzeW5jX3RpbWU7DQogCXUzMgkJ
YnVmZmVyX2NvbmZpZ19saW1pdDsNCiAJdTMyCQlmd21hcmtfbWFzazsNCiAJdTE2CQlmd21hcmtf
c2hmdDsNCkBAIC0yNTcsNiArMjU4LDEwIEBAIHN0cnVjdCBjYWtlX3NjaGVkX2RhdGEgew0KIAl1
MTYJCW1heF9hZGpsZW47DQogCXUxNgkJbWluX25ldGxlbjsNCiAJdTE2CQltaW5fYWRqbGVuOw0K
Kw0KKwl1NjQgbGFzdF9jaGVja2VkX2FjdGl2ZTsNCisJdTY0IGxhc3RfYWN0aXZlOw0KKwl1MzIg
YWN0aXZlX3F1ZXVlczsNCiB9Ow0KIA0KIGVudW0gew0KQEAgLTM4Myw2ICszODgsOCBAQCBzdGF0
aWMgY29uc3QgdTMyIGludl9zcXJ0X2NhY2hlW1JFQ19JTlZfU1FSVF9DQUNIRV0gPSB7DQogCTEy
Mzk4NTAyNjMsIDExOTEyMDk2MDEsIDExNDc4NzgyOTQsIDExMDg5NTU3ODgNCiB9Ow0KIA0KK3N0
YXRpYyB2b2lkIGNha2Vfc2V0X3JhdGUoc3RydWN0IGNha2VfdGluX2RhdGEgKmIsIHU2NCByYXRl
LCB1MzIgbXR1LA0KKwkJCSAgdTY0IHRhcmdldF9ucywgdTY0IHJ0dF9lc3RfbnMpOw0KIC8qIGh0
dHA6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvTWV0aG9kc19vZl9jb21wdXRpbmdfc3F1YXJlX3Jv
b3RzDQogICogbmV3X2ludnNxcnQgPSAoaW52c3FydCAvIDIpICogKDMgLSBjb3VudCAqIGludnNx
cnReMikNCiAgKg0KQEAgLTIwMDIsNiArMjAwOSw0MCBAQCBzdGF0aWMgc3RydWN0IHNrX2J1ZmYg
KmNha2VfZGVxdWV1ZShzdHJ1Y3QgUWRpc2MgKnNjaCkNCiAJdTY0IGRlbGF5Ow0KIAl1MzIgbGVu
Ow0KIA0KKwlpZiAocS0+Y29uZmlnLT5pc19zaGFyZWQgJiYNCisJICAgIG5vdyAtIHEtPmxhc3Rf
Y2hlY2tlZF9hY3RpdmUgPj0gcS0+Y29uZmlnLT5zeW5jX3RpbWUpIHsgLy9jaGVjayBldmVyeSAx
bXMgaXMgdGhlIGRlZmF1bHQNCisJCXN0cnVjdCBuZXRfZGV2aWNlICpkZXYgPSBxZGlzY19kZXYo
c2NoKTsNCisJCXN0cnVjdCBjYWtlX3NjaGVkX2RhdGEgKm90aGVyX3ByaXY7DQorCQl1NjQgbmV3
X3JhdGUgPSBxLT5jb25maWctPnJhdGVfYnBzOw0KKwkJdTY0IG90aGVyX3FsZW4sIG90aGVyX2xh
c3RfYWN0aXZlOw0KKwkJc3RydWN0IFFkaXNjICpvdGhlcl9zY2g7DQorCQl1MzIgbnVtX2FjdGl2
ZV9xcyA9IDE7DQorCQl1bnNpZ25lZCBpbnQgbnR4Ow0KKw0KKwkJZm9yIChudHggPSAwOyBudHgg
PCBkZXYtPm51bV90eF9xdWV1ZXM7IG50eCsrKSB7DQorCQkJb3RoZXJfc2NoID0gcnRubF9kZXJl
ZmVyZW5jZShuZXRkZXZfZ2V0X3R4X3F1ZXVlKGRldiwgbnR4KS0+cWRpc2Nfc2xlZXBpbmcpOw0K
KwkJCW90aGVyX3ByaXYgPSBxZGlzY19wcml2KG90aGVyX3NjaCk7DQorDQorCQkJaWYgKG90aGVy
X3ByaXYgPT0gcSkNCisJCQkJY29udGludWU7DQorDQorCQkJb3RoZXJfcWxlbiA9IFJFQURfT05D
RShvdGhlcl9zY2gtPnEucWxlbik7DQorCQkJb3RoZXJfbGFzdF9hY3RpdmUgPSBSRUFEX09OQ0Uo
b3RoZXJfcHJpdi0+bGFzdF9hY3RpdmUpOw0KKw0KKwkJCWlmIChvdGhlcl9xbGVuIHx8IG90aGVy
X2xhc3RfYWN0aXZlID4gcS0+bGFzdF9jaGVja2VkX2FjdGl2ZSkNCisJCQkJbnVtX2FjdGl2ZV9x
cysrOw0KKwkJfQ0KKw0KKwkJaWYgKG51bV9hY3RpdmVfcXMgPiAxKQ0KKwkJCW5ld19yYXRlID0g
ZGl2NjRfdTY0KHEtPmNvbmZpZy0+cmF0ZV9icHMsIG51bV9hY3RpdmVfcXMpOw0KKw0KKwkJLy8g
bXR1ID0gMCBpcyB1c2VkIHRvIG9ubHkgdXBkYXRlIHRoZSByYXRlIGFuZCBub3QgbWVzcyB3aXRo
IGNvYmFsdCBwYXJhbXMNCisJCWNha2Vfc2V0X3JhdGUoYiwgbmV3X3JhdGUsIDAsIDAsIDApOw0K
KwkJcS0+bGFzdF9jaGVja2VkX2FjdGl2ZSA9IG5vdzsNCisJCXEtPnJhdGVfbnMgPSBiLT50aW5f
cmF0ZV9uczsNCisJCXEtPnJhdGVfc2hmdCA9IGItPnRpbl9yYXRlX3NoZnQ7DQorCX0NCisNCiBi
ZWdpbjoNCiAJaWYgKCFzY2gtPnEucWxlbikNCiAJCXJldHVybiBOVUxMOw0KQEAgLTIyMDEsNiAr
MjI0Miw3IEBAIHN0YXRpYyBzdHJ1Y3Qgc2tfYnVmZiAqY2FrZV9kZXF1ZXVlKHN0cnVjdCBRZGlz
YyAqc2NoKQ0KIA0KIAliLT50aW5fZWNuX21hcmsgKz0gISFmbG93LT5jdmFycy5lY25fbWFya2Vk
Ow0KIAlxZGlzY19ic3RhdHNfdXBkYXRlKHNjaCwgc2tiKTsNCisJcS0+bGFzdF9hY3RpdmUgPSBu
b3c7DQogDQogCS8qIGNvbGxlY3QgZGVsYXkgc3RhdHMgKi8NCiAJZGVsYXkgPSBrdGltZV90b19u
cyhrdGltZV9zdWIobm93LCBjb2JhbHRfZ2V0X2VucXVldWVfdGltZShza2IpKSk7DQpAQCAtMjI3
MSw2ICsyMzEzLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBubGFfcG9saWN5IGNha2VfcG9saWN5
W1RDQV9DQUtFX01BWCArIDFdID0gew0KIAlbVENBX0NBS0VfQUNLX0ZJTFRFUl0JID0geyAudHlw
ZSA9IE5MQV9VMzIgfSwNCiAJW1RDQV9DQUtFX1NQTElUX0dTT10JID0geyAudHlwZSA9IE5MQV9V
MzIgfSwNCiAJW1RDQV9DQUtFX0ZXTUFSS10JID0geyAudHlwZSA9IE5MQV9VMzIgfSwNCisJW1RD
QV9DQUtFX1NZTkNfVElNRV0JID0geyAudHlwZSA9IE5MQV9VMzIgfSwNCiB9Ow0KIA0KIHN0YXRp
YyB2b2lkIGNha2Vfc2V0X3JhdGUoc3RydWN0IGNha2VfdGluX2RhdGEgKmIsIHU2NCByYXRlLCB1
MzIgbXR1LA0KQEAgLTIzMDEsNiArMjM0NCw5IEBAIHN0YXRpYyB2b2lkIGNha2Vfc2V0X3JhdGUo
c3RydWN0IGNha2VfdGluX2RhdGEgKmIsIHU2NCByYXRlLCB1MzIgbXR1LA0KIAliLT50aW5fcmF0
ZV9ucyAgID0gcmF0ZV9uczsNCiAJYi0+dGluX3JhdGVfc2hmdCA9IHJhdGVfc2hmdDsNCiANCisJ
aWYgKG10dSA9PSAwKQ0KKwkJcmV0dXJuOw0KKw0KIAlieXRlX3RhcmdldF9ucyA9IChieXRlX3Rh
cmdldCAqIHJhdGVfbnMpID4+IHJhdGVfc2hmdDsNCiANCiAJYi0+Y3BhcmFtcy50YXJnZXQgPSBt
YXgoKGJ5dGVfdGFyZ2V0X25zICogMykgLyAyLCB0YXJnZXRfbnMpOw0KQEAgLTI3MDMsNiArMjc0
OSwxNyBAQCBzdGF0aWMgaW50IGNha2VfY29uZmlnX2NoYW5nZShzdHJ1Y3QgY2FrZV9zY2hlZF9j
b25maWcgKnEsIHN0cnVjdCBubGF0dHIgKm9wdCwNCiAJV1JJVEVfT05DRShxLT5yYXRlX2ZsYWdz
LCByYXRlX2ZsYWdzKTsNCiAJV1JJVEVfT05DRShxLT5mbG93X21vZGUsIGZsb3dfbW9kZSk7DQog
DQorCWlmICh0YltUQ0FfQ0FLRV9TWU5DX1RJTUVdKSB7DQorCQl1MzIgc3luY191cyA9IG5sYV9n
ZXRfdTMyKHRiW1RDQV9DQUtFX1NZTkNfVElNRV0pOw0KKw0KKwkJaWYgKCFxLT5pc19zaGFyZWQp
IHsNCisJCQlOTF9TRVRfRVJSX01TR19BVFRSKGV4dGFjaywgdGJbVENBX0NBS0VfU1lOQ19USU1F
XSwNCisJCQkJCSAgICAiU3luYyB0aW1lIGNhbiBvbmx5IGJlIHNldCBmb3IgY2FrZV9tcSB2YXJp
YW50Iik7DQorCQkJcmV0dXJuIC1FT1BOT1RTVVBQOw0KKwkJfQ0KKwkJcS0+c3luY190aW1lID0g
KHU2NClzeW5jX3VzICogMTAwMDsgLy8gZnJvbSB1cyB0byBucw0KKwl9DQorDQogCXJldHVybiAw
Ow0KIH0NCiANCkBAIC0yNzYzLDYgKzI4MjAsNyBAQCBzdGF0aWMgdm9pZCBjYWtlX2NvbmZpZ19p
bml0KHN0cnVjdCBjYWtlX3NjaGVkX2NvbmZpZyAqcSwgYm9vbCBpc19zaGFyZWQpDQogCQkJICAg
ICAgICovDQogCXEtPnJhdGVfZmxhZ3MgfD0gQ0FLRV9GTEFHX1NQTElUX0dTTzsNCiAJcS0+aXNf
c2hhcmVkID0gaXNfc2hhcmVkOw0KKwlxLT5zeW5jX3RpbWUgPSAyMDAgKiBOU0VDX1BFUl9VU0VD
Ow0KIH0NCiANCiBzdGF0aWMgaW50IGNha2VfaW5pdChzdHJ1Y3QgUWRpc2MgKnNjaCwgc3RydWN0
IG5sYXR0ciAqb3B0LA0KQEAgLTI4MzQsNiArMjg5Miw5IEBAIHN0YXRpYyBpbnQgY2FrZV9pbml0
KHN0cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3QgbmxhdHRyICpvcHQsDQogCXFkLT5hdmdfcGVha19i
YW5kd2lkdGggPSBxLT5yYXRlX2JwczsNCiAJcWQtPm1pbl9uZXRsZW4gPSB+MDsNCiAJcWQtPm1p
bl9hZGpsZW4gPSB+MDsNCisJcWQtPmFjdGl2ZV9xdWV1ZXMgPSAwOw0KKwlxZC0+bGFzdF9jaGVj
a2VkX2FjdGl2ZSA9IDA7DQorDQogCXJldHVybiAwOw0KIGVycjoNCiAJa3ZmcmVlKHFkLT5jb25m
aWcpOw0KQEAgLTI5MjUsNiArMjk4NiwxMSBAQCBzdGF0aWMgaW50IGNha2VfY29uZmlnX2R1bXAo
c3RydWN0IGNha2Vfc2NoZWRfY29uZmlnICpxLCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKQ0KIAlpZiAo
bmxhX3B1dF91MzIoc2tiLCBUQ0FfQ0FLRV9GV01BUkssIFJFQURfT05DRShxLT5md21hcmtfbWFz
aykpKQ0KIAkJZ290byBubGFfcHV0X2ZhaWx1cmU7DQogDQorCWlmIChxLT5pc19zaGFyZWQpIHsN
CisJCWlmIChubGFfcHV0X3UzMihza2IsIFRDQV9DQUtFX1NZTkNfVElNRSwgUkVBRF9PTkNFKHEt
PnN5bmNfdGltZSkgLyAxMDAwKSkNCisJCQlnb3RvIG5sYV9wdXRfZmFpbHVyZTsNCisJfQ0KKw0K
IAlyZXR1cm4gbmxhX25lc3RfZW5kKHNrYiwgb3B0cyk7DQogDQogbmxhX3B1dF9mYWlsdXJlOg0K
QEAgLTI5NjcsNiArMzAzMyw3IEBAIHN0YXRpYyBpbnQgY2FrZV9kdW1wX3N0YXRzKHN0cnVjdCBR
ZGlzYyAqc2NoLCBzdHJ1Y3QgZ25ldF9kdW1wICpkKQ0KIAlQVVRfU1RBVF9VMzIoTUFYX0FESkxF
TiwgcS0+bWF4X2Fkamxlbik7DQogCVBVVF9TVEFUX1UzMihNSU5fTkVUTEVOLCBxLT5taW5fbmV0
bGVuKTsNCiAJUFVUX1NUQVRfVTMyKE1JTl9BREpMRU4sIHEtPm1pbl9hZGpsZW4pOw0KKwlQVVRf
U1RBVF9VMzIoQUNUSVZFX1FVRVVFUywgcS0+YWN0aXZlX3F1ZXVlcyk7DQogDQogI3VuZGVmIFBV
VF9TVEFUX1UzMg0KICN1bmRlZiBQVVRfU1RBVF9VNjQNCg0KLS0gDQoyLjUxLjANCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxp
c3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=

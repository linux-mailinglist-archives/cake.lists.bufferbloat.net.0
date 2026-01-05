Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2CDCF39D2
	for <lists+cake@lfdr.de>; Mon, 05 Jan 2026 13:51:45 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id AEBDCB57B55;
	Mon, 05 Jan 2026 13:51:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1767617503;
	bh=yMxBo1HOT73Gr8snMyl1kPvwmWFgjF4yrO5fLbWh3AY=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Yx/pmgbSB7ioQBU0Cxm8yC3mVWIU0CsnGwA4va4NxqLIw1EEpWJ9JEwmYCncoVz95
	 R1KsxU44lGfv0p7tvRUCGCrc1fAb7X8X0CgapUYzo55PcXbx9kZcTltqZs2V2BMrIC
	 Bxfpg+jvk/zBAnoq0QvjHLzpNvBevNworWfRxaIMiuARwCYBnljfNMxnL3WRQ5tSCh
	 zC09gZ0rXPbXPT8QrTqDLQKsLu4VbaHHV7KquOBZ07lcmGlNCfElO+iQp0dDvgWwKS
	 yjlHMu+IHJ8QJkCMikJRN63PhmbBitNhfOduDj6vp4LY6J5AM+DZiJ+iEEfANKRscs
	 tEkeOpKHSYyFw==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767617503;
 b=Zb8ZfmZgJSA3Wmv4q53hanZXpY2io3QyFs50xD5u+OYf4PAjy2QFpdzT1gwFNj3bsFceV
 VpJWHcWjAr8AocSBJUkxySifLTn9mKAL9/IlH30qDnlYFgySApVDqvKhe/G3mwfhrwy7EPs
 LX5BXRvxDZmOEEfEw7xcbYEXJlQ+QKY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767617503; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=yMxBo1HOT73Gr8snMyl1kPvwmWFgjF4yrO5fLbWh3AY=;
 b=K50Te33glvNcqSJyidJXB3feFAM/i9OIBTe5sgHY8zIgvgnjRTp8tAqFab6pEA2OPW/ic
 4DPa5N/GaUy5aJ6/gHYeWh3tZE2nJQD/ciR+qVkIOhIn5xiEBD/NGv2VI4Wum12zHKwatu0
 2ShArvFdTzI/DM9VIKG+AgkFdHi863U=
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
	by mail.toke.dk (Postfix) with ESMTPS id D9BD4B57AF0
	for <cake@lists.bufferbloat.net>; Mon, 05 Jan 2026 13:51:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767617498;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Evx6wtPcCJFwdSIMBNf+/3/a6Yi8p7xdbfzr/rqU+gE=;
	b=TFMn5eWtrktParnGMMOUTV2ksfSKRPDN74rTuMt0OM2xa3Wk0rwc1pg22DJT9+bTzl+fIB
	6romkDIXA+CAAtU2zKQ/GWWiMx55R7Nb8U5WbilDRU7aP479qtt8ZCwf0Cia2D+cKLVQXa
	hFElEGn9RQDfMpUHhSnePGur5b7a9zQ=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-324-mvafEZ_wNpayy_mIqMmFlw-1; Mon, 05 Jan 2026 07:51:37 -0500
X-MC-Unique: mvafEZ_wNpayy_mIqMmFlw-1
X-Mimecast-MFC-AGG-ID: mvafEZ_wNpayy_mIqMmFlw_1767617496
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-b841fc79f3eso33551766b.2
        for <cake@lists.bufferbloat.net>;
 Mon, 05 Jan 2026 04:51:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767617496; x=1768222296;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Evx6wtPcCJFwdSIMBNf+/3/a6Yi8p7xdbfzr/rqU+gE=;
        b=ccbVx4eIx2GOtK4N2dl/H7wgnTiLg5c7wWFS1Hnk3oXY4G7lVu+QADSGWWQnzMK1Vw
         ywI0KsTAXTUmUu+SHcxQ6ooLukemSK3Zv+Ra1iuKZIra6VONuZod8nHg1hNitqiXASFg
         pKITqmSAiz0PL4LYwMPAiZ+YHxELXlzZ98CYjTs+UW+SLb6o1jiAydszJndQkKqUFba/
         KS40GY2z+Bx8BKsoh8eqBgcqvXsind+v2JCNnH/YWWQwqVm8Tu/Ji+jmTAoKL6q8bORH
         CfeCG/uBv+VVxJWK9et6xXkDFo8YMk5Qen+wM8EjlUhBZ0ezsr8gHXJxVAZ9oCohWprX
         hO+w==
X-Forwarded-Encrypted: i=1;
 AJvYcCXx9vx3UNJ1YDhiZFy/nUBDKt+2/GM2M1FPk9jH4mNq06DQE3neDflj6M3b4Ds6r2P5ulvT@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxWegvY64gtS34VsWaPykvvezwMUBLagLHjriMY1S6lwFCziCX3
	QrLo1HrDFy1oMfcN3DZWtV+WBfqWbSufMaTGHBVtUXJ5+gi36eZxZ3R2RrL7QChN5i9eKXj1zS8
	nd4V6LQHCIZv/3AgNERuwcy6q3R2QfbvAJqNEzIOTWW6bIj4RKrkbXw9vmpW/t54=
X-Gm-Gg: AY/fxX6NV75mtCyRScOZi7w0+dybmAy7QwhmZRTTdFmVK6Do9VS/pWIIe3RdEX2njHi
	uI1mn/hNK5PeWKuNas51qGvJ6eRT9JUfM4RGc9oSUWW5rogEO6hScDWnsHv8TxxVakWuW/0SViP
	j+WtZWhKQg215pHUlxs+qiDi6IjvHcUkF3xaq9eb3KZf3gubpePhykeaQPgC5pb1yzmLXYvTPj7
	U6d2NcU0J9H9z0peWSBS2q8JU7/6HVfGg3LieP5nuKa3ua9HQ8V1epaqKf8WUFpPqExL/ZrV3id
	d/gbkjvITts7h4MYvMlXpiBaNat+aR2YOzhWjv2qcXt/rAWJ9kK4/MR9Fw4UecyGxEJhC0IEnPC
	AEIfwfrRalbLGq5vf3JhiH+UzY1Dp6x1nNti1
X-Received: by 2002:a17:907:9627:b0:b83:3773:dd96 with SMTP id
 a640c23a62f3a-b833773de14mr2964139066b.3.1767617494974;
        Mon, 05 Jan 2026 04:51:34 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IEOXbjsSlZFaPDM/FXGXkx9MWaLhSgGGIxFPxpgOiIXxu616QC3Up3Xge5emeCV8z3dQ13mAA==
X-Received: by 2002:a17:907:9627:b0:b83:3773:dd96 with SMTP id
 a640c23a62f3a-b833773de14mr2964137266b.3.1767617494570;
        Mon, 05 Jan 2026 04:51:34 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.borgediget.toke.dk.
 [2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b841fc8f2a2sm91451766b.63.2026.01.05.04.51.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 04:51:32 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 4D8A9407E93; Mon, 05 Jan 2026 13:51:32 +0100 (CET)
Date: Mon, 05 Jan 2026 13:50:28 +0100
MIME-Version: 1.0
Message-Id: <20260105-mq-cake-sub-qdisc-v5-3-8a99b9db05e6@redhat.com>
References: <20260105-mq-cake-sub-qdisc-v5-0-8a99b9db05e6@redhat.com>
In-Reply-To: <20260105-mq-cake-sub-qdisc-v5-0-8a99b9db05e6@redhat.com>
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
X-Mimecast-MFC-PROC-ID: MSwNWjF9MSaNAsG9NJsuuQrYUZh0F6rr4nlxzQsvkgM_1767617496
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: DQWU7VRNYOHO2Z5CA5P2I4KEL3RT2TLT
X-Message-ID-Hash: DQWU7VRNYOHO2Z5CA5P2I4KEL3RT2TLT
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next v5 3/6] net/sched: sch_cake: Add cake_mq qdisc for
 using cake on mq devices
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20260105-mq-cake-sub-qdisc-v5-3-8a99b9db05e6@redhat.com/>
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
dWx0aS1xdWV1ZSBhd2FyZSBzaGFwZXIgYWxnb3JpdGhtLg0KDQpTaWduZWQtb2ZmLWJ5OiBUb2tl
IEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4NCi0tLQ0KIG5ldC9zY2hlZC9z
Y2hfY2FrZS5jIHwgNzkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrLQ0KIDEgZmlsZSBjaGFuZ2VkLCA3OCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pDQoNCmRpZmYgLS1naXQgYS9uZXQvc2NoZWQvc2NoX2Nha2UuYyBiL25ldC9zY2hlZC9zY2hf
Y2FrZS5jDQppbmRleCBkNDU4MjU3ZDhhZmMuLmZhMDFjMzUyZjVhNSAxMDA2NDQNCi0tLSBhL25l
dC9zY2hlZC9zY2hfY2FrZS5jDQorKysgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYw0KQEAgLTY3LDYg
KzY3LDcgQEANCiAjaW5jbHVkZSA8bGludXgvaWZfdmxhbi5oPg0KICNpbmNsdWRlIDxuZXQvZ3Nv
Lmg+DQogI2luY2x1ZGUgPG5ldC9wa3Rfc2NoZWQuaD4NCisjaW5jbHVkZSA8bmV0L3NjaF9wcml2
Lmg+DQogI2luY2x1ZGUgPG5ldC9wa3RfY2xzLmg+DQogI2luY2x1ZGUgPG5ldC90Y3AuaD4NCiAj
aW5jbHVkZSA8bmV0L2Zsb3dfZGlzc2VjdG9yLmg+DQpAQCAtMzE1NywxNCArMzE1OCw4OSBAQCBz
dGF0aWMgc3RydWN0IFFkaXNjX29wcyBjYWtlX3FkaXNjX29wcyBfX3JlYWRfbW9zdGx5ID0gew0K
IH07DQogTU9EVUxFX0FMSUFTX05FVF9TQ0goImNha2UiKTsNCiANCitzdHJ1Y3QgY2FrZV9tcV9z
Y2hlZCB7DQorCXN0cnVjdCBtcV9zY2hlZCBtcV9wcml2OyAvKiBtdXN0IGJlIGZpcnN0ICovDQor
fTsNCisNCitzdGF0aWMgdm9pZCBjYWtlX21xX2Rlc3Ryb3koc3RydWN0IFFkaXNjICpzY2gpDQor
ew0KKwltcV9kZXN0cm95X2NvbW1vbihzY2gpOw0KK30NCisNCitzdGF0aWMgaW50IGNha2VfbXFf
aW5pdChzdHJ1Y3QgUWRpc2MgKnNjaCwgc3RydWN0IG5sYXR0ciAqb3B0LA0KKwkJCXN0cnVjdCBu
ZXRsaW5rX2V4dF9hY2sgKmV4dGFjaykNCit7DQorCWludCByZXQ7DQorDQorCXJldCA9IG1xX2lu
aXRfY29tbW9uKHNjaCwgb3B0LCBleHRhY2ssICZjYWtlX3FkaXNjX29wcyk7DQorCWlmIChyZXQp
DQorCQlyZXR1cm4gcmV0Ow0KKw0KKwlyZXR1cm4gMDsNCit9DQorDQorc3RhdGljIGludCBjYWtl
X21xX2R1bXAoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdCBza19idWZmICpza2IpDQorew0KKwlt
cV9kdW1wX2NvbW1vbihzY2gsIHNrYik7DQorCXJldHVybiAwOw0KK30NCisNCitzdGF0aWMgaW50
IGNha2VfbXFfY2hhbmdlKHN0cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3QgbmxhdHRyICpvcHQsDQor
CQkJICBzdHJ1Y3QgbmV0bGlua19leHRfYWNrICpleHRhY2spDQorew0KKwlyZXR1cm4gLUVPUE5P
VFNVUFA7DQorfQ0KKw0KK3N0YXRpYyBpbnQgY2FrZV9tcV9ncmFmdChzdHJ1Y3QgUWRpc2MgKnNj
aCwgdW5zaWduZWQgbG9uZyBjbCwgc3RydWN0IFFkaXNjICpuZXcsDQorCQkJIHN0cnVjdCBRZGlz
YyAqKm9sZCwgc3RydWN0IG5ldGxpbmtfZXh0X2FjayAqZXh0YWNrKQ0KK3sNCisJTkxfU0VUX0VS
Ul9NU0coZXh0YWNrLCAiY2FuJ3QgcmVwbGFjZSBjYWtlX21xIHN1Yi1xZGlzY3MiKTsNCisJcmV0
dXJuIC1FT1BOT1RTVVBQOw0KK30NCisNCitzdGF0aWMgY29uc3Qgc3RydWN0IFFkaXNjX2NsYXNz
X29wcyBjYWtlX21xX2NsYXNzX29wcyA9IHsNCisJLnNlbGVjdF9xdWV1ZQk9IG1xX3NlbGVjdF9x
dWV1ZSwNCisJLmdyYWZ0CQk9IGNha2VfbXFfZ3JhZnQsDQorCS5sZWFmCQk9IG1xX2xlYWYsDQor
CS5maW5kCQk9IG1xX2ZpbmQsDQorCS53YWxrCQk9IG1xX3dhbGssDQorCS5kdW1wCQk9IG1xX2R1
bXBfY2xhc3MsDQorCS5kdW1wX3N0YXRzCT0gbXFfZHVtcF9jbGFzc19zdGF0cywNCit9Ow0KKw0K
K3N0YXRpYyBzdHJ1Y3QgUWRpc2Nfb3BzIGNha2VfbXFfcWRpc2Nfb3BzIF9fcmVhZF9tb3N0bHkg
PSB7DQorCS5jbF9vcHMJCT0JJmNha2VfbXFfY2xhc3Nfb3BzLA0KKwkuaWQJCT0JImNha2VfbXEi
LA0KKwkucHJpdl9zaXplCT0Jc2l6ZW9mKHN0cnVjdCBjYWtlX21xX3NjaGVkKSwNCisJLmluaXQJ
CT0JY2FrZV9tcV9pbml0LA0KKwkuZGVzdHJveQk9CWNha2VfbXFfZGVzdHJveSwNCisJLmF0dGFj
aAkJPQltcV9hdHRhY2gsDQorCS5jaGFuZ2UJCT0JY2FrZV9tcV9jaGFuZ2UsDQorCS5jaGFuZ2Vf
cmVhbF9udW1fdHggPSBtcV9jaGFuZ2VfcmVhbF9udW1fdHgsDQorCS5kdW1wCQk9CWNha2VfbXFf
ZHVtcCwNCisJLm93bmVyCQk9CVRISVNfTU9EVUxFLA0KK307DQorTU9EVUxFX0FMSUFTX05FVF9T
Q0goImNha2VfbXEiKTsNCisNCiBzdGF0aWMgaW50IF9faW5pdCBjYWtlX21vZHVsZV9pbml0KHZv
aWQpDQogew0KLQlyZXR1cm4gcmVnaXN0ZXJfcWRpc2MoJmNha2VfcWRpc2Nfb3BzKTsNCisJaW50
IHJldDsNCisNCisJcmV0ID0gcmVnaXN0ZXJfcWRpc2MoJmNha2VfcWRpc2Nfb3BzKTsNCisJaWYg
KHJldCkNCisJCXJldHVybiByZXQ7DQorDQorCXJldCA9IHJlZ2lzdGVyX3FkaXNjKCZjYWtlX21x
X3FkaXNjX29wcyk7DQorCWlmIChyZXQpDQorCQl1bnJlZ2lzdGVyX3FkaXNjKCZjYWtlX3FkaXNj
X29wcyk7DQorDQorCXJldHVybiByZXQ7DQogfQ0KIA0KIHN0YXRpYyB2b2lkIF9fZXhpdCBjYWtl
X21vZHVsZV9leGl0KHZvaWQpDQogew0KIAl1bnJlZ2lzdGVyX3FkaXNjKCZjYWtlX3FkaXNjX29w
cyk7DQorCXVucmVnaXN0ZXJfcWRpc2MoJmNha2VfbXFfcWRpc2Nfb3BzKTsNCiB9DQogDQogbW9k
dWxlX2luaXQoY2FrZV9tb2R1bGVfaW5pdCkNCkBAIC0zMTcyLDMgKzMyNDgsNCBAQCBtb2R1bGVf
ZXhpdChjYWtlX21vZHVsZV9leGl0KQ0KIE1PRFVMRV9BVVRIT1IoIkpvbmF0aGFuIE1vcnRvbiIp
Ow0KIE1PRFVMRV9MSUNFTlNFKCJEdWFsIEJTRC9HUEwiKTsNCiBNT0RVTEVfREVTQ1JJUFRJT04o
IlRoZSBDQUtFIHNoYXBlci4iKTsNCitNT0RVTEVfSU1QT1JUX05TKCJORVRfU0NIRURfSU5URVJO
QUwiKTsNCg0KLS0gDQoyLjUyLjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldAo=

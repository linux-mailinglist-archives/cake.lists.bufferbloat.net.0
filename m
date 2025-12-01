Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B31C9685F
	for <lists+cake@lfdr.de>; Mon, 01 Dec 2025 11:00:52 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 756F09ED7A1;
	Mon, 01 Dec 2025 11:00:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764583239;
	bh=ANo8pfWfx4+THO/W6mum1tcI82GBfzuL3CjwAOWKMLc=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=aF/KusUkU33/PF+JxDsr/gCLE4V4nGcg0Ute4mpjwEh7SN8eTqXWRf6ZWaTAwjzMW
	 vZxAceKnZVk6fCudRJHUmxmzDtIneqoeu/qNif4k+K2FfJFfWhgLALVK6diW57XGDF
	 184V0PjP4vez7uQnKzoHEWmTCfwrYbr0aTPjH39t6Jodh2bEPS+5eVffgiv/qQ6UVw
	 7iBvW+NRgxE2pgSf7b9S3G/tjESoLtOswMrA2Kb2qloShDuck0tfDfzVJwM83OuXEp
	 a+UpFTg4DpFfhlRHkAlQGgaXwdzMbmNJ6TotUSumlWlllwxQ+zceVH7OCgpLPKJYP8
	 ZYiel92WH+28A==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764583239;
 b=WLP98g2QUux8hWEAVuXS7OQmY8XgX3B0et+yaliioiJVHV8lzaIcth4KetUn0kPoASbY8
 fmD86Fq2hr8u0mKaQXYOgmypKn7Z0jkdWIobhjaA/zc6rqh16mJ+NSuHUtM9r1Q6QPNQqLu
 oEAAKHXhOXsQ1mTNsR5eGS8kfqIOA/c=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764583239; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=ANo8pfWfx4+THO/W6mum1tcI82GBfzuL3CjwAOWKMLc=;
 b=tpSstsTt4ea/5o2linR3i+9yMVM9lCcALQptGNM26h0tlUjx5EM0yzEYrAtF1xihr2oCf
 18LGfxbfxQMsH76sLPvwM6ywAEEp1v6h44ZqSm34Ikmb/EqjWR76eo05rTPZ7NguanJqzcW
 Re72spz59qUvgTtSTcwasFU906C6c9g=
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
	by mail.toke.dk (Postfix) with ESMTPS id 788F39ED751
	for <cake@lists.bufferbloat.net>; Mon, 01 Dec 2025 11:00:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764583233;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MyMLorfOhFH+uS2vDSK8eZtqEiibj8Gd+VQaEj/EJY0=;
	b=Qa+ZLQfDOWs1tbcjQvBy/j6xjkLw5ebO13QBSCOAXPb8wZIqNzuam+fOnajFaD8rPSiQIF
	/jeb8U+L7VMLAh55NyLvvoMkW0MRaj7ELOtZf3YW0elSyUbJKVkx/OMo/gfK+/RhZS7TfX
	RTJjw2Xme2Ok90Pw3S24QpA00eA1+Gs=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-471-CZ5PxkUlMiC7WfBrRklgIQ-1; Mon, 01 Dec 2025 05:00:32 -0500
X-MC-Unique: CZ5PxkUlMiC7WfBrRklgIQ-1
X-Mimecast-MFC-AGG-ID: CZ5PxkUlMiC7WfBrRklgIQ_1764583231
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-b7689ad588fso408777566b.3
        for <cake@lists.bufferbloat.net>;
 Mon, 01 Dec 2025 02:00:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764583231; x=1765188031;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MyMLorfOhFH+uS2vDSK8eZtqEiibj8Gd+VQaEj/EJY0=;
        b=HUJBEz2AV6a4Ck2hALUVSotZ0ujPKMZdhQp78hrTi3EPgLtWtrHesoHMvRi2BMoh+b
         n0bakvneVHvyZKuq8e8h1ZU6wswXD3MCSw6YteXUfZbH7J38abtT4WGop+kaRXqLdU79
         vu6DPZY8r6nNDdRMHWuTcycLIAGAZvbjZ6ba5l56jIrurMUTtVZm2Vb1worFOItVxs3V
         zgoeczqBUpkiHFCVeYDx9pCTCATc2Ig/HnUjsZRAPX8koTWHgmymuvCcZp9Q3s5tmuQT
         rp34icEyTv1CB/rUZ+4qdy4Km0+gzKzIWS5IUh599YlG3GWnMZPWPtyVsa2VsWMZagrn
         NMEg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWESQRikpcwuURMkuAicYnMPAKyrYYe8NHwTyf9GtVpFFPkwCx3Prtd9PqyVg1/5bpn+5fB@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yw8nWJt6CzrWargetXl3MYc39IbV4n4MJMZkgTa6Bp6wgZETJpO
	31sA/VsiF6aNLCi5xWxpga5UDIfDuoZH92FFL5WX77LNJxXQMx+VwHuSeJypI9fPQOyGCTQ3ng7
	GgmJXz2izZys9/41JgPKdtneKZ2Hes8LzBto/p7yz+3YkY6QyhEKmXEKoCSunUwA=
X-Gm-Gg: ASbGncstWY8dLCaTh1R3H+xLs3rm3vwKnkVnYP134BqctfIXyswUD1piXNbG1HUypEu
	tflT3JMwmqoojv0zmuCTTBnGdTSajfv8m5N89dMTFakMImI7ErTxQ+gM+8t4rdNA/rtvx7DBJhX
	J2gVBrF1uKNEyyq26D8hNT4N/NQ6NeFlT8TTpoWyOYP9cVmj6L/+z9wPEEV/vxicY13m0NU3bNs
	dcBW/7M8Dt2+g74prtvT4+0kvhvUdQOvE1iQGcwoAR2R0Mq9wMegIrj2Plvr5m/50t4DdLTKu8o
	Jsj8b5qOJrjY6GnOfCB5rjXLI9L1hZCm+l/5hqIM/NrE9AAQVlm2BYPi2nzSIctySUHiDBBep9J
	rtvYtD8UAqyxUDB27MA0zCrgTmhO/vtohoFPR
X-Received: by 2002:a17:906:c115:b0:b72:b8a9:78f4 with SMTP id
 a640c23a62f3a-b7671701537mr3906331466b.39.1764583230900;
        Mon, 01 Dec 2025 02:00:30 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IHITPsfRcSRyog0H1I8P4PG0ThYZogak/QUa5BxkqYnsOWUxeuzMPCq3pm6yp45THvW7vgScg==
X-Received: by 2002:a17:906:c115:b0:b72:b8a9:78f4 with SMTP id
 a640c23a62f3a-b7671701537mr3906329466b.39.1764583230474;
        Mon, 01 Dec 2025 02:00:30 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.borgediget.toke.dk.
 [2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b76f59aea6bsm1155273566b.35.2025.12.01.02.00.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 02:00:29 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id A28FE395D57; Mon, 01 Dec 2025 11:00:28 +0100 (CET)
Date: Mon, 01 Dec 2025 11:00:21 +0100
MIME-Version: 1.0
Message-Id: <20251201-mq-cake-sub-qdisc-v4-3-50dd3211a1c6@redhat.com>
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
X-Mimecast-MFC-PROC-ID: 63UEG4wFCSG88U7yGAweuQ6CIJPIjN4zLH_9y_JQZvY_1764583231
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: ZQUPRIEHY3EBHKPIO27ZB7HYHK3BGANP
X-Message-ID-Hash: ZQUPRIEHY3EBHKPIO27ZB7HYHK3BGANP
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next v4 3/5] net/sched: sch_cake: Add cake_mq qdisc for
 using cake on mq devices
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251201-mq-cake-sub-qdisc-v4-3-50dd3211a1c6@redhat.com/>
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
Y2hfY2FrZS5jIHwgNzcgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrLQ0KIDEgZmlsZSBjaGFuZ2VkLCA3NiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pDQoNCmRpZmYgLS1naXQgYS9uZXQvc2NoZWQvc2NoX2Nha2UuYyBiL25ldC9zY2hlZC9zY2hf
Y2FrZS5jDQppbmRleCA1NDViOWI4MzBjY2UuLjQ4ODMwZTNlZThhNCAxMDA2NDQNCi0tLSBhL25l
dC9zY2hlZC9zY2hfY2FrZS5jDQorKysgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYw0KQEAgLTMxNTEs
MTQgKzMxNTEsODkgQEAgc3RhdGljIHN0cnVjdCBRZGlzY19vcHMgY2FrZV9xZGlzY19vcHMgX19y
ZWFkX21vc3RseSA9IHsNCiB9Ow0KIE1PRFVMRV9BTElBU19ORVRfU0NIKCJjYWtlIik7DQogDQor
c3RydWN0IGNha2VfbXFfc2NoZWQgew0KKwlzdHJ1Y3QgbXFfc2NoZWQgbXFfcHJpdjsgLyogbXVz
dCBiZSBmaXJzdCAqLw0KK307DQorDQorc3RhdGljIHZvaWQgY2FrZV9tcV9kZXN0cm95KHN0cnVj
dCBRZGlzYyAqc2NoKQ0KK3sNCisJbXFfZGVzdHJveV9jb21tb24oc2NoKTsNCit9DQorDQorc3Rh
dGljIGludCBjYWtlX21xX2luaXQoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdCBubGF0dHIgKm9w
dCwNCisJCQlzdHJ1Y3QgbmV0bGlua19leHRfYWNrICpleHRhY2spDQorew0KKwlpbnQgcmV0Ow0K
Kw0KKwlyZXQgPSBtcV9pbml0X2NvbW1vbihzY2gsIG9wdCwgZXh0YWNrLCAmY2FrZV9xZGlzY19v
cHMpOw0KKwlpZiAocmV0KQ0KKwkJcmV0dXJuIHJldDsNCisNCisJcmV0dXJuIDA7DQorfQ0KKw0K
K3N0YXRpYyBpbnQgY2FrZV9tcV9kdW1wKHN0cnVjdCBRZGlzYyAqc2NoLCBzdHJ1Y3Qgc2tfYnVm
ZiAqc2tiKQ0KK3sNCisJbXFfZHVtcF9jb21tb24oc2NoLCBza2IpOw0KKwlyZXR1cm4gMDsNCit9
DQorDQorc3RhdGljIGludCBjYWtlX21xX2NoYW5nZShzdHJ1Y3QgUWRpc2MgKnNjaCwgc3RydWN0
IG5sYXR0ciAqb3B0LA0KKwkJCSAgc3RydWN0IG5ldGxpbmtfZXh0X2FjayAqZXh0YWNrKQ0KK3sN
CisJcmV0dXJuIC1FT1BOT1RTVVBQOw0KK30NCisNCitzdGF0aWMgaW50IGNha2VfbXFfZ3JhZnQo
c3RydWN0IFFkaXNjICpzY2gsIHVuc2lnbmVkIGxvbmcgY2wsIHN0cnVjdCBRZGlzYyAqbmV3LA0K
KwkJCSBzdHJ1Y3QgUWRpc2MgKipvbGQsIHN0cnVjdCBuZXRsaW5rX2V4dF9hY2sgKmV4dGFjaykN
Cit7DQorCU5MX1NFVF9FUlJfTVNHKGV4dGFjaywgImNhbid0IHJlcGxhY2UgY2FrZV9tcSBzdWIt
cWRpc2NzIik7DQorCXJldHVybiAtRU9QTk9UU1VQUDsNCit9DQorDQorc3RhdGljIGNvbnN0IHN0
cnVjdCBRZGlzY19jbGFzc19vcHMgY2FrZV9tcV9jbGFzc19vcHMgPSB7DQorCS5zZWxlY3RfcXVl
dWUJPSBtcV9zZWxlY3RfcXVldWUsDQorCS5ncmFmdAkJPSBjYWtlX21xX2dyYWZ0LA0KKwkubGVh
ZgkJPSBtcV9sZWFmLA0KKwkuZmluZAkJPSBtcV9maW5kLA0KKwkud2FsawkJPSBtcV93YWxrLA0K
KwkuZHVtcAkJPSBtcV9kdW1wX2NsYXNzLA0KKwkuZHVtcF9zdGF0cwk9IG1xX2R1bXBfY2xhc3Nf
c3RhdHMsDQorfTsNCisNCitzdGF0aWMgc3RydWN0IFFkaXNjX29wcyBjYWtlX21xX3FkaXNjX29w
cyBfX3JlYWRfbW9zdGx5ID0gew0KKwkuY2xfb3BzCQk9CSZjYWtlX21xX2NsYXNzX29wcywNCisJ
LmlkCQk9CSJjYWtlX21xIiwNCisJLnByaXZfc2l6ZQk9CXNpemVvZihzdHJ1Y3QgY2FrZV9tcV9z
Y2hlZCksDQorCS5pbml0CQk9CWNha2VfbXFfaW5pdCwNCisJLmRlc3Ryb3kJPQljYWtlX21xX2Rl
c3Ryb3ksDQorCS5hdHRhY2gJCT0JbXFfYXR0YWNoLA0KKwkuY2hhbmdlCQk9CWNha2VfbXFfY2hh
bmdlLA0KKwkuY2hhbmdlX3JlYWxfbnVtX3R4ID0gbXFfY2hhbmdlX3JlYWxfbnVtX3R4LA0KKwku
ZHVtcAkJPQljYWtlX21xX2R1bXAsDQorCS5vd25lcgkJPQlUSElTX01PRFVMRSwNCit9Ow0KK01P
RFVMRV9BTElBU19ORVRfU0NIKCJjYWtlX21xIik7DQorDQogc3RhdGljIGludCBfX2luaXQgY2Fr
ZV9tb2R1bGVfaW5pdCh2b2lkKQ0KIHsNCi0JcmV0dXJuIHJlZ2lzdGVyX3FkaXNjKCZjYWtlX3Fk
aXNjX29wcyk7DQorCWludCByZXQ7DQorDQorCXJldCA9IHJlZ2lzdGVyX3FkaXNjKCZjYWtlX3Fk
aXNjX29wcyk7DQorCWlmIChyZXQpDQorCQlyZXR1cm4gcmV0Ow0KKw0KKwlyZXQgPSByZWdpc3Rl
cl9xZGlzYygmY2FrZV9tcV9xZGlzY19vcHMpOw0KKwlpZiAocmV0KQ0KKwkJdW5yZWdpc3Rlcl9x
ZGlzYygmY2FrZV9xZGlzY19vcHMpOw0KKw0KKwlyZXR1cm4gcmV0Ow0KIH0NCiANCiBzdGF0aWMg
dm9pZCBfX2V4aXQgY2FrZV9tb2R1bGVfZXhpdCh2b2lkKQ0KIHsNCiAJdW5yZWdpc3Rlcl9xZGlz
YygmY2FrZV9xZGlzY19vcHMpOw0KKwl1bnJlZ2lzdGVyX3FkaXNjKCZjYWtlX21xX3FkaXNjX29w
cyk7DQogfQ0KIA0KIG1vZHVsZV9pbml0KGNha2VfbW9kdWxlX2luaXQpDQoNCi0tIA0KMi41Mi4w
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2Ug
bWFpbGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADA3CFCBE8
	for <lists+cake@lfdr.de>; Wed, 07 Jan 2026 10:09:46 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id F0B10B76530;
	Tue, 06 Jan 2026 12:41:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1767699669;
	bh=yMxBo1HOT73Gr8snMyl1kPvwmWFgjF4yrO5fLbWh3AY=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=hzWUzJkMjDSFej/hbQmJB/e15dPitczoV1ihCC8WgBeAZ4pv2i/IUe/46uWtWxgng
	 cTJiCev7MuT36blw6UkAv1hMquJY8yqRkrZZKHqCDhpjNNJUWtbcIKKzpblPlCJV15
	 D90aN4sWsZ9o0p7pvSCilUv36luUC+XiiuLWrINAUYJnztFHctUt0I1kbYgc1WuurR
	 GlOL9r+sVJ0p0AgPk5VwkNCsutnLUu+57usqU2OwMs4arkGB5f/G1YrdRStXPZsc3P
	 ZT+iipG/6lXSx2nq0eSRGf/1nlWJ0Ld9FjATUMq9iFrFt1qj9ssLUVpxW7zYyp6H6g
	 JwY5a7d4SjCJQ==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767699669;
 b=jmnzUZV1vj5gaWd3OAkJARstVTHz4eehrn/uA72HGTX6gAsDo3HRSC1H32TOMTfKcV/pR
 Ua8JSFzntW0PaDlfl3hu9ubjxaKz0pMBeswFFibSd+mlDhKTa3Wg94Ufwdv9kz3OTUn5uaU
 55CV36xIpNYTwLcNNNhM4htDwnsfhIA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767699669; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=yMxBo1HOT73Gr8snMyl1kPvwmWFgjF4yrO5fLbWh3AY=;
 b=l21+/THLJ8GW5HG4bLHyE8LhbvaB8uykBa5nil9WWKM2LsnydOyt4YkE1najIn9+dNELU
 ez2se/JKcM1qcYuii//WISOhjE/l0uqt7HcHA9s0EgKQCm0G3Rg2VioL7P5x7SM+Oi5xPvG
 yCo/oNM3Muw2umn1YALWkj0YvQ4329g=
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
	by mail.toke.dk (Postfix) with ESMTPS id 501D7B76464
	for <cake@lists.bufferbloat.net>; Tue, 06 Jan 2026 12:41:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767699662;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Evx6wtPcCJFwdSIMBNf+/3/a6Yi8p7xdbfzr/rqU+gE=;
	b=eMThdBje5ECjx9e4K/KOYXe9jN464ypKtcMJWoL9va7DeNBDrfT2d5UN9g5VSj0azr/o4u
	TResirK9blAs/lmEEqL+nxfis1qJnuEYU9puOeNs4D2B6XmrymB9VzYXZ30OJ2u7x1a3l1
	i+X4q6tKRfkg5fSKwdyEmfVdf2Lb4uc=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-368-Wrv8EtfzPvKNaiaiPKmvoA-1; Tue, 06 Jan 2026 06:41:01 -0500
X-MC-Unique: Wrv8EtfzPvKNaiaiPKmvoA-1
X-Mimecast-MFC-AGG-ID: Wrv8EtfzPvKNaiaiPKmvoA_1767699660
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-b79fcc35ab2so117456266b.2
        for <cake@lists.bufferbloat.net>;
 Tue, 06 Jan 2026 03:41:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767699660; x=1768304460;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Evx6wtPcCJFwdSIMBNf+/3/a6Yi8p7xdbfzr/rqU+gE=;
        b=lYhRi/E4a6+36A2vivj7haHUA4UktLrWNLt3obXftRtvxvgzMSdBcHilagT3cqaKQ5
         Q/7xOKr9WlbnY0tdF0F2nqBSnNYJ8Mq4YIKyr/m1vLyZOjMiMNWpWMdxP/Ipm1rpwxsf
         aBI32FUxdc6zMUpUCkwNG49GbFCfxISL3rBfvrzXvCmhHOVADL/m2h5xGOdeol8R+6qX
         DWGR3FcgeAnQMjcxnDENQ/ottzeU5FC2+u99+f+F+i+6UaN/ZJu2pZ0V3cDse3hn7BhJ
         M+2xFSLTdSW3ILHWQDsta9dUHLSwvthO4nyaShJ9RObJPhO7bBAAL9HsZLECyDLU1QnE
         8rdg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWHBdUQyX6cPgg65AzYvryMCUE0Lq/0BJbXemNrMH3G2HG5px4E9Ju/jqf0L/z2v1KGC8Ym@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yzl0cYw6uEHammSpXgAsSp0/CXSVAyz53k+g3iuNIPM/O0t6g2z
	fu4cGeGJ9r0s3gr5Ngwe3ZSFBv/eULv9IveFf48XBnvTSx8ovGQf1lZskE9Ucz30+mObYOXdYal
	BwcY6lMhE4FHEvR7GQTDTMPCmGBqlJOcrxy4N3Ho4cis94FixhI1M33tQI8I/OKY=
X-Gm-Gg: AY/fxX4oVgdnTQej0BCAIIFbywqpfCIBxE+1KCZF5EQb13FjY3GCScvukFyeQpwU+Y2
	6pnfX7DqFPZ9dfSMVtaQETBQMrxmnm5+hj9oh6eFn0Q9rg96slf2yILcaRWZyaASGsCFXDtjJvK
	drqjMbnEFODX3ZGNevgqrrLzGYRb8GCfnmbnP+hduEa1M1VT7SBLosf/K2+3YWQdiQcScqwg7ZT
	9XSPJVDqMXKd5MFSmrz3J0UabKdcwbWa0qMl6h8Y6jLOy4jxCldlNudw9g9bfy8VHIIMrbqUpNL
	o4QzvN3JgRCOJF2xOV4Pskw+yfYZwtJYKXRLvvcIG6SNsdYRRAhTD3yY6IgVOI0AsGuKCX1pkon
	cR7TU6cbyCPTG5a0XGNPiNuiJvRgmMRJbuQ==
X-Received: by 2002:a17:907:9415:b0:b7f:fbb2:baa with SMTP id
 a640c23a62f3a-b8426bf1f67mr253289366b.51.1767699660099;
        Tue, 06 Jan 2026 03:41:00 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IHlVULk1XKrDpRHeMIX6aAH+s57+iirbmjB8Kbov2BA90zJ31sPcUIIaW53vwIp3ock1/A0Mw==
X-Received: by 2002:a17:907:9415:b0:b7f:fbb2:baa with SMTP id
 a640c23a62f3a-b8426bf1f67mr253286166b.51.1767699659630;
        Tue, 06 Jan 2026 03:40:59 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b842a51577bsm200967666b.56.2026.01.06.03.40.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 03:40:59 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id B12AE407FD2; Tue, 06 Jan 2026 12:40:58 +0100 (CET)
Date: Tue, 06 Jan 2026 12:40:54 +0100
MIME-Version: 1.0
Message-Id: <20260106-mq-cake-sub-qdisc-v6-3-ee2e06b1eb1a@redhat.com>
References: <20260106-mq-cake-sub-qdisc-v6-0-ee2e06b1eb1a@redhat.com>
In-Reply-To: <20260106-mq-cake-sub-qdisc-v6-0-ee2e06b1eb1a@redhat.com>
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
X-Mimecast-MFC-PROC-ID: RFLgXMMGbdqDYBGTbwbzq2TsY3w_Azkzf6rWFuckvbM_1767699660
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: 7OVHYUWJBTS47FS3CV2NEPRO5TDWSPTN
X-Message-ID-Hash: 7OVHYUWJBTS47FS3CV2NEPRO5TDWSPTN
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next v6 3/6] net/sched: sch_cake: Add cake_mq qdisc for
 using cake on mq devices
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20260106-mq-cake-sub-qdisc-v6-3-ee2e06b1eb1a@redhat.com/>
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

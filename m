Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A86EB99CAA
	for <lists+cake@lfdr.de>; Wed, 24 Sep 2025 14:16:41 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 396616E8358;
	Wed, 24 Sep 2025 14:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1758716198;
	bh=fYZ8JcGw6SsL/42g0u3q497FbvPWZ2dCRioA/qQsLYA=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=g4BihKYuF3OV5R/+G2y6m5On359AXAEzUN105+o0UKKQPmLi/EmvqS8wuuOpuuy8B
	 ydCrV232u+yJ5XBpagsgp/b04FBstsp8re78X36v6tdtHUeBsY/HQPdMHFUZXoNV+k
	 856AfP12NX7n/sVLUknNxeSe4wbyB7LcGX5lp1jLFsrCYdlpyh2cjMw7QNFGmaIGMx
	 AXesJl0wMZXsublonBGNox5dLJqH365BWan2IUcpjkh6dvBthzs7GyZzUo1DkvmVVD
	 9fSNWWBHSHBz5qihAbgbBqrUfk1LtybrUpS2vJha7Jlsx+G8Gw5Fz9YRzyMrOmaAQr
	 kDkiw0qh/RgSw==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1758716198;
 b=MtKN/0iZpuLxfVXX/EpXowZ3wb6Z+ZsbVGrRNH3p6yqTmTmnscFtWAML8IIUUZJHgvfGu
 eQIkXHwe5QJnNxqrAFei+YQWX+PLTrjfGI9DplmDYH1KQPwAs0mcy3kYiUlaj5UyB3NaLjK
 MQJLjUUbKgkf1qQTDgluzfPuzlueiio=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1758716198; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=fYZ8JcGw6SsL/42g0u3q497FbvPWZ2dCRioA/qQsLYA=;
 b=uxIfyxmgWoA/BLqICEyDXZ8qSJCdjbHF2lbYI8oAWcQ/PTxxyXRO+dq7DvH0z7PcbQ+OT
 SCElpQIBUdpMOos6XtC1dBT2/o1eoAiFkMuNVqs96jhz7ZQVgzrg1M0fjQ0q9cKPF3Yxlkq
 4DEVw+9BPGVAy2GpjrFGHSSonU1iKRA=
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
	by mail.toke.dk (Postfix) with ESMTPS id 450726E8310
	for <cake@lists.bufferbloat.net>; Wed, 24 Sep 2025 14:16:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1758716193;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=t/wm7IctLC63LygWnrGMD/q6S2hZqhAXdl680aIcoqc=;
	b=iXvGXA2tqY6M1dLmYo1OmXH5N2jS/CeG4KbkqC2nuzqxEwbr/Wl6pu2V8+Wc0diw/itc71
	Kvnpia0qvnaoQfn0oqr2mr3qMXMCq+4aIyLVSChAaBLzqdhxbfas7RwU/7aXxp0LNVXBne
	UCW2EHwpC23/mJwf86hrHD3Wo+q/knA=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-520-79SYyFfnPz6fZrP-bg_yJA-1; Wed, 24 Sep 2025 08:16:29 -0400
X-MC-Unique: 79SYyFfnPz6fZrP-bg_yJA-1
X-Mimecast-MFC-AGG-ID: 79SYyFfnPz6fZrP-bg_yJA_1758716189
Received: by mail-ed1-f71.google.com with SMTP id
 4fb4d7f45d1cf-6340b40a3a2so2692737a12.1
        for <cake@lists.bufferbloat.net>;
 Wed, 24 Sep 2025 05:16:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758716188; x=1759320988;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t/wm7IctLC63LygWnrGMD/q6S2hZqhAXdl680aIcoqc=;
        b=EgCzF6viteXQiZvSqrx8oIzhyo7+U5k6L2xK3xbQYkU8YMXd4vxlh3cdDUkjrleg6/
         bcwfOJa3a6uRlfaikhOME/R9TJiF6G4oSjOz8+eMmemyxCUjIQODrTJwhM4SZVKHJS/1
         eFT2lOtsboS55heQ5j4Vex0zT3ocDEIIkfsH81jV8LVIHkAKv98MhcnQuHzwZqSjE7za
         A6mQEmkan+h6lIjsTIgK7M0b54/dnZg3vstuaRODAeyHDqYlM1j5jh8750yZfCGw8j3t
         4dYellWpCa2NwZiZNFiePpXAT5IqV2RXKtdWiABTJXKS4iC4L37mf5w95oW9ec2RYkC5
         4PIw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV1veP8e7fTI/98IYeuKjB/K2mjkZyJPVQrCp4MurBI0CBnNL87bIWyiZc5ehDS5i/aykyG@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YykRL5VjbF36smgF05N9BgpdX0KHVZ4aQbpVwDBcCkLZUkdKxg3
	8w83F3sy7BxByLEpWK/qkzMI9GwFwQYpLUZ5nnnXKTBVwj25+1bTwouSVUSaevVtAH2568+Cl3i
	te+g+0k4oHPGfMpF2W9j1uutUvPFADlrx/HEIV+92bMg0ljUWpDdr9v9TCRBKtKw=
X-Gm-Gg: ASbGncscrfA4h/RW4N8BELy3a3YexYc65rDnrLSiglYXFo1ngP5VsXZRX85FQchNeR7
	qivDMGSWd+GpW3+y2BmoxJo+A2HUuVmXPndc02HypqPLsjv8uzLXXWu09SZpj6XjUhuqyxE8DEn
	Yg6u+STtP/lfc9s4/KWzG7Gtbq6Ip/IzJd3ochNc6bLSDry/OTJzubNP0hCstIyR8S4Gg7lmleG
	+NYIZf0QzJJ3kjRhIi/caCttKHyKNRWUSOAc4KTAUNWRq648PevhDs77uIIG+/cF9Z2iPlBVC3e
	B0SPN9Jos/KPHeZdcP82fWvYgDvOFEJINKvueGHyoXr6m2EJI339FWRwls8L9jab
X-Received: by 2002:a50:9fa9:0:b0:632:342c:2b5a with SMTP id
 4fb4d7f45d1cf-6346778e5a5mr4382082a12.13.1758716188538;
        Wed, 24 Sep 2025 05:16:28 -0700 (PDT)
X-Google-Smtp-Source: 
 AGHT+IFQPjbj28TOGPqizLArFiXLuBHfCOPtCCHCZg2mE47OYSUN4AjV8CdFX5XB0xRuazf3mBW1kg==
X-Received: by 2002:a50:9fa9:0:b0:632:342c:2b5a with SMTP id
 4fb4d7f45d1cf-6346778e5a5mr4382053a12.13.1758716188074;
        Wed, 24 Sep 2025 05:16:28 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-6344e493329sm5035472a12.14.2025.09.24.05.16.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 05:16:27 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 51C1A276E2A; Wed, 24 Sep 2025 14:16:26 +0200 (CEST)
Date: Wed, 24 Sep 2025 14:16:04 +0200
MIME-Version: 1.0
Message-Id: <20250924-mq-cake-sub-qdisc-v1-2-43a060d1112a@redhat.com>
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
X-Mimecast-MFC-PROC-ID: 9iz89-B8hl6_decxpOoJSbflBEzMi7bGLYZZ_UhQ4Ps_1758716189
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: UMLCQUHSYTJV77ZHQTJDKG4EFKCIXYHP
X-Message-ID-Hash: UMLCQUHSYTJV77ZHQTJDKG4EFKCIXYHP
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH RFC net-next 2/4] net/sched: sch_cake: Add cake_mq qdisc for
 using cake on mq devices
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20250924-mq-cake-sub-qdisc-v1-2-43a060d1112a@redhat.com/>
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
aW5nIG9mIHRoZSBja2FlDQpjYWtlIGNvbmZpZyBiZXR3ZWVuIGNha2UgaW5zdGFuY2VzLCBhcyB3
ZWxsIGFzIGEgbXVsdGktcXVldWUgYXdhcmUNCnNoYXBlciBhbGdvcml0aG0uDQoNClNpZ25lZC1v
ZmYtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPg0KLS0tDQog
bmV0L3NjaGVkL3NjaF9jYWtlLmMgfCAyMTQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKystDQogMSBmaWxlIGNoYW5nZWQsIDIxMyBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQgYS9uZXQvc2NoZWQvc2NoX2Nha2UuYyBiL25l
dC9zY2hlZC9zY2hfY2FrZS5jDQppbmRleCBhMDJmM2NmY2IwOWI1MGJkYTZlZTY2ZGZjOGE4ZGY1
ODRhZTZhMzY1Li5kMTdkNzY2OWRlMzg5YmIyMWNhNmNlM2IyMDllMDI3MmNmYWE1MTEyIDEwMDY0
NA0KLS0tIGEvbmV0L3NjaGVkL3NjaF9jYWtlLmMNCisrKyBiL25ldC9zY2hlZC9zY2hfY2FrZS5j
DQpAQCAtMzE1NCwxNCArMzE1NCwyMjYgQEAgc3RhdGljIHN0cnVjdCBRZGlzY19vcHMgY2FrZV9x
ZGlzY19vcHMgX19yZWFkX21vc3RseSA9IHsNCiB9Ow0KIE1PRFVMRV9BTElBU19ORVRfU0NIKCJj
YWtlIik7DQogDQorc3RydWN0IGNha2VfbXFfc2NoZWQgew0KKwlzdHJ1Y3QgUWRpc2MJCSoqcWRp
c2NzOw0KK307DQorDQorc3RhdGljIHZvaWQgY2FrZV9tcV9kZXN0cm95KHN0cnVjdCBRZGlzYyAq
c2NoKQ0KK3sNCisJc3RydWN0IG5ldF9kZXZpY2UgKmRldiA9IHFkaXNjX2RldihzY2gpOw0KKwlz
dHJ1Y3QgY2FrZV9tcV9zY2hlZCAqcHJpdiA9IHFkaXNjX3ByaXYoc2NoKTsNCisJdW5zaWduZWQg
aW50IG50eDsNCisNCisJaWYgKCFwcml2LT5xZGlzY3MpDQorCQlyZXR1cm47DQorCWZvciAobnR4
ID0gMDsgbnR4IDwgZGV2LT5udW1fdHhfcXVldWVzICYmIHByaXYtPnFkaXNjc1tudHhdOyBudHgr
KykNCisJCXFkaXNjX3B1dChwcml2LT5xZGlzY3NbbnR4XSk7DQorCWtmcmVlKHByaXYtPnFkaXNj
cyk7DQorfQ0KKw0KK3N0YXRpYyBpbnQgY2FrZV9tcV9pbml0KHN0cnVjdCBRZGlzYyAqc2NoLCBz
dHJ1Y3QgbmxhdHRyICpvcHQsDQorCQkJc3RydWN0IG5ldGxpbmtfZXh0X2FjayAqZXh0YWNrKQ0K
K3sNCisJc3RydWN0IG5ldF9kZXZpY2UgKmRldiA9IHFkaXNjX2RldihzY2gpOw0KKwlzdHJ1Y3Qg
Y2FrZV9tcV9zY2hlZCAqcHJpdiA9IHFkaXNjX3ByaXYoc2NoKTsNCisJc3RydWN0IG5ldGRldl9x
dWV1ZSAqZGV2X3F1ZXVlOw0KKwlzdHJ1Y3QgUWRpc2MgKnFkaXNjOw0KKwl1bnNpZ25lZCBpbnQg
bnR4Ow0KKw0KKwlpZiAoc2NoLT5wYXJlbnQgIT0gVENfSF9ST09UKQ0KKwkJcmV0dXJuIC1FT1BO
T1RTVVBQOw0KKw0KKwlpZiAoIW5ldGlmX2lzX211bHRpcXVldWUoZGV2KSkNCisJCXJldHVybiAt
RU9QTk9UU1VQUDsNCisNCisJLyogcHJlLWFsbG9jYXRlIHFkaXNjcywgYXR0YWNobWVudCBjYW4n
dCBmYWlsICovDQorCXByaXYtPnFkaXNjcyA9IGtjYWxsb2MoZGV2LT5udW1fdHhfcXVldWVzLCBz
aXplb2YocHJpdi0+cWRpc2NzWzBdKSwNCisJCQkgICAgICAgR0ZQX0tFUk5FTCk7DQorCWlmICgh
cHJpdi0+cWRpc2NzKQ0KKwkJcmV0dXJuIC1FTk9NRU07DQorDQorCWZvciAobnR4ID0gMDsgbnR4
IDwgZGV2LT5udW1fdHhfcXVldWVzOyBudHgrKykgew0KKwkJZGV2X3F1ZXVlID0gbmV0ZGV2X2dl
dF90eF9xdWV1ZShkZXYsIG50eCk7DQorCQlxZGlzYyA9IHFkaXNjX2NyZWF0ZV9kZmx0KGRldl9x
dWV1ZSwgJmNha2VfcWRpc2Nfb3BzLA0KKwkJCQkJICBUQ19IX01BS0UoVENfSF9NQUooc2NoLT5o
YW5kbGUpLA0KKwkJCQkJCSAgICBUQ19IX01JTihudHggKyAxKSksDQorCQkJCQkgIGV4dGFjayk7
DQorCQlpZiAoIXFkaXNjKSB7DQorCQkJa2ZyZWUocHJpdi0+cWRpc2NzKTsNCisJCQlyZXR1cm4g
LUVOT01FTTsNCisJCX0NCisJCXByaXYtPnFkaXNjc1tudHhdID0gcWRpc2M7DQorCQlxZGlzYy0+
ZmxhZ3MgfD0gVENRX0ZfT05FVFhRVUVVRSB8IFRDUV9GX05PUEFSRU5UOw0KKwl9DQorDQorCXNj
aC0+ZmxhZ3MgfD0gVENRX0ZfTVFST09UOw0KKw0KKwlyZXR1cm4gMDsNCit9DQorDQorc3RhdGlj
IHZvaWQgY2FrZV9tcV9hdHRhY2goc3RydWN0IFFkaXNjICpzY2gpDQorew0KKwlzdHJ1Y3QgbmV0
X2RldmljZSAqZGV2ID0gcWRpc2NfZGV2KHNjaCk7DQorCXN0cnVjdCBjYWtlX21xX3NjaGVkICpw
cml2ID0gcWRpc2NfcHJpdihzY2gpOw0KKwlzdHJ1Y3QgUWRpc2MgKnFkaXNjLCAqb2xkOw0KKwl1
bnNpZ25lZCBpbnQgbnR4Ow0KKw0KKwlmb3IgKG50eCA9IDA7IG50eCA8IGRldi0+bnVtX3R4X3F1
ZXVlczsgbnR4KyspIHsNCisJCXFkaXNjID0gcHJpdi0+cWRpc2NzW250eF07DQorCQlvbGQgPSBk
ZXZfZ3JhZnRfcWRpc2MocWRpc2MtPmRldl9xdWV1ZSwgcWRpc2MpOw0KKwkJaWYgKG9sZCkNCisJ
CQlxZGlzY19wdXQob2xkKTsNCisjaWZkZWYgQ09ORklHX05FVF9TQ0hFRA0KKwkJaWYgKG50eCA8
IGRldi0+cmVhbF9udW1fdHhfcXVldWVzKQ0KKwkJCXFkaXNjX2hhc2hfYWRkKHFkaXNjLCBmYWxz
ZSk7DQorI2VuZGlmDQorCX0NCisJa2ZyZWUocHJpdi0+cWRpc2NzKTsNCisJcHJpdi0+cWRpc2Nz
ID0gTlVMTDsNCit9DQorDQorc3RhdGljIGludCBjYWtlX21xX2R1bXAoc3RydWN0IFFkaXNjICpz
Y2gsIHN0cnVjdCBza19idWZmICpza2IpDQorew0KKwlzdHJ1Y3QgbmV0X2RldmljZSAqZGV2ID0g
cWRpc2NfZGV2KHNjaCk7DQorCXN0cnVjdCBRZGlzYyAqcWRpc2M7DQorCXVuc2lnbmVkIGludCBu
dHg7DQorDQorCXNjaC0+cS5xbGVuID0gMDsNCisJZ25ldF9zdGF0c19iYXNpY19zeW5jX2luaXQo
JnNjaC0+YnN0YXRzKTsNCisJbWVtc2V0KCZzY2gtPnFzdGF0cywgMCwgc2l6ZW9mKHNjaC0+cXN0
YXRzKSk7DQorDQorCS8qIE1RIHN1cHBvcnRzIGxvY2tsZXNzIHFkaXNjcy4gSG93ZXZlciwgc3Rh
dGlzdGljcyBhY2NvdW50aW5nIG5lZWRzDQorCSAqIHRvIGFjY291bnQgZm9yIGFsbCwgbm9uZSwg
b3IgYSBtaXggb2YgbG9ja2VkIGFuZCB1bmxvY2tlZCBjaGlsZA0KKwkgKiBxZGlzY3MuIFBlcmNw
dSBzdGF0cyBhcmUgYWRkZWQgdG8gY291bnRlcnMgaW4tYmFuZCBhbmQgbG9ja2luZw0KKwkgKiBx
ZGlzYyB0b3RhbHMgYXJlIGFkZGVkIGF0IGVuZC4NCisJICovDQorCWZvciAobnR4ID0gMDsgbnR4
IDwgZGV2LT5udW1fdHhfcXVldWVzOyBudHgrKykgew0KKwkJcWRpc2MgPSBydG5sX2RlcmVmZXJl
bmNlKG5ldGRldl9nZXRfdHhfcXVldWUoZGV2LCBudHgpLT5xZGlzY19zbGVlcGluZyk7DQorCQlz
cGluX2xvY2tfYmgocWRpc2NfbG9jayhxZGlzYykpOw0KKw0KKwkJZ25ldF9zdGF0c19hZGRfYmFz
aWMoJnNjaC0+YnN0YXRzLCBxZGlzYy0+Y3B1X2JzdGF0cywNCisJCQkJICAgICAmcWRpc2MtPmJz
dGF0cywgZmFsc2UpOw0KKwkJZ25ldF9zdGF0c19hZGRfcXVldWUoJnNjaC0+cXN0YXRzLCBxZGlz
Yy0+Y3B1X3FzdGF0cywNCisJCQkJICAgICAmcWRpc2MtPnFzdGF0cyk7DQorCQlzY2gtPnEucWxl
biArPSBxZGlzY19xbGVuKHFkaXNjKTsNCisNCisJCXNwaW5fdW5sb2NrX2JoKHFkaXNjX2xvY2so
cWRpc2MpKTsNCisJfQ0KKw0KKwlyZXR1cm4gMDsNCit9DQorDQorc3RhdGljIHN0cnVjdCBuZXRk
ZXZfcXVldWUgKmNha2VfbXFfcXVldWVfZ2V0KHN0cnVjdCBRZGlzYyAqc2NoLCB1bnNpZ25lZCBs
b25nIGNsKQ0KK3sNCisJc3RydWN0IG5ldF9kZXZpY2UgKmRldiA9IHFkaXNjX2RldihzY2gpOw0K
Kwl1bnNpZ25lZCBsb25nIG50eCA9IGNsIC0gMTsNCisNCisJaWYgKG50eCA+PSBkZXYtPm51bV90
eF9xdWV1ZXMpDQorCQlyZXR1cm4gTlVMTDsNCisJcmV0dXJuIG5ldGRldl9nZXRfdHhfcXVldWUo
ZGV2LCBudHgpOw0KK30NCisNCitzdGF0aWMgc3RydWN0IG5ldGRldl9xdWV1ZSAqY2FrZV9tcV9z
ZWxlY3RfcXVldWUoc3RydWN0IFFkaXNjICpzY2gsDQorCQkJCQkJIHN0cnVjdCB0Y21zZyAqdGNt
KQ0KK3sNCisJcmV0dXJuIGNha2VfbXFfcXVldWVfZ2V0KHNjaCwgVENfSF9NSU4odGNtLT50Y21f
cGFyZW50KSk7DQorfQ0KKw0KK3N0YXRpYyBpbnQgY2FrZV9tcV9ncmFmdChzdHJ1Y3QgUWRpc2Mg
KnNjaCwgdW5zaWduZWQgbG9uZyBjbCwgc3RydWN0IFFkaXNjICpuZXcsDQorCQkJIHN0cnVjdCBR
ZGlzYyAqKm9sZCwgc3RydWN0IG5ldGxpbmtfZXh0X2FjayAqZXh0YWNrKQ0KK3sNCisJTkxfU0VU
X0VSUl9NU0coZXh0YWNrLCAiY2FuJ3QgcmVwbGFjZSBjYWtlX21xIHN1Yi1xZGlzY3MiKTsNCisJ
cmV0dXJuIC1FT1BOT1RTVVBQOw0KK30NCisNCitzdGF0aWMgc3RydWN0IFFkaXNjICpjYWtlX21x
X2xlYWYoc3RydWN0IFFkaXNjICpzY2gsIHVuc2lnbmVkIGxvbmcgY2wpDQorew0KKwlzdHJ1Y3Qg
bmV0ZGV2X3F1ZXVlICpkZXZfcXVldWUgPSBjYWtlX21xX3F1ZXVlX2dldChzY2gsIGNsKTsNCisN
CisJcmV0dXJuIHJ0bmxfZGVyZWZlcmVuY2UoZGV2X3F1ZXVlLT5xZGlzY19zbGVlcGluZyk7DQor
fQ0KKw0KK3N0YXRpYyB1bnNpZ25lZCBsb25nIGNha2VfbXFfZmluZChzdHJ1Y3QgUWRpc2MgKnNj
aCwgdTMyIGNsYXNzaWQpDQorew0KKwl1bnNpZ25lZCBpbnQgbnR4ID0gVENfSF9NSU4oY2xhc3Np
ZCk7DQorDQorCWlmICghY2FrZV9tcV9xdWV1ZV9nZXQoc2NoLCBudHgpKQ0KKwkJcmV0dXJuIDA7
DQorCXJldHVybiBudHg7DQorfQ0KKw0KK3N0YXRpYyBpbnQgY2FrZV9tcV9kdW1wX2NsYXNzKHN0
cnVjdCBRZGlzYyAqc2NoLCB1bnNpZ25lZCBsb25nIGNsLA0KKwkJCSAgICAgIHN0cnVjdCBza19i
dWZmICpza2IsIHN0cnVjdCB0Y21zZyAqdGNtKQ0KK3sNCisJc3RydWN0IG5ldGRldl9xdWV1ZSAq
ZGV2X3F1ZXVlID0gY2FrZV9tcV9xdWV1ZV9nZXQoc2NoLCBjbCk7DQorDQorCXRjbS0+dGNtX3Bh
cmVudCA9IFRDX0hfUk9PVDsNCisJdGNtLT50Y21faGFuZGxlIHw9IFRDX0hfTUlOKGNsKTsNCisJ
dGNtLT50Y21faW5mbyA9IHJ0bmxfZGVyZWZlcmVuY2UoZGV2X3F1ZXVlLT5xZGlzY19zbGVlcGlu
ZyktPmhhbmRsZTsNCisJcmV0dXJuIDA7DQorfQ0KKw0KK3N0YXRpYyBpbnQgY2FrZV9tcV9kdW1w
X2NsYXNzX3N0YXRzKHN0cnVjdCBRZGlzYyAqc2NoLCB1bnNpZ25lZCBsb25nIGNsLA0KKwkJCQkg
ICAgc3RydWN0IGduZXRfZHVtcCAqZCkNCit7DQorCXN0cnVjdCBuZXRkZXZfcXVldWUgKmRldl9x
dWV1ZSA9IGNha2VfbXFfcXVldWVfZ2V0KHNjaCwgY2wpOw0KKw0KKwlzY2ggPSBydG5sX2RlcmVm
ZXJlbmNlKGRldl9xdWV1ZS0+cWRpc2Nfc2xlZXBpbmcpOw0KKwlpZiAoZ25ldF9zdGF0c19jb3B5
X2Jhc2ljKGQsIHNjaC0+Y3B1X2JzdGF0cywgJnNjaC0+YnN0YXRzLCB0cnVlKSA8IDAgfHwNCisJ
ICAgIHFkaXNjX3FzdGF0c19jb3B5KGQsIHNjaCkgPCAwKQ0KKwkJcmV0dXJuIC0xOw0KKwlyZXR1
cm4gMDsNCit9DQorDQorc3RhdGljIHZvaWQgY2FrZV9tcV93YWxrKHN0cnVjdCBRZGlzYyAqc2No
LCBzdHJ1Y3QgcWRpc2Nfd2Fsa2VyICphcmcpDQorew0KKwlzdHJ1Y3QgbmV0X2RldmljZSAqZGV2
ID0gcWRpc2NfZGV2KHNjaCk7DQorCXVuc2lnbmVkIGludCBudHg7DQorDQorCWlmIChhcmctPnN0
b3ApDQorCQlyZXR1cm47DQorDQorCWFyZy0+Y291bnQgPSBhcmctPnNraXA7DQorCWZvciAobnR4
ID0gYXJnLT5za2lwOyBudHggPCBkZXYtPm51bV90eF9xdWV1ZXM7IG50eCsrKSB7DQorCQlpZiAo
IXRjX3FkaXNjX3N0YXRzX2R1bXAoc2NoLCBudHggKyAxLCBhcmcpKQ0KKwkJCWJyZWFrOw0KKwl9
DQorfQ0KKw0KK3N0YXRpYyBjb25zdCBzdHJ1Y3QgUWRpc2NfY2xhc3Nfb3BzIGNha2VfbXFfY2xh
c3Nfb3BzID0gew0KKwkuc2VsZWN0X3F1ZXVlCT0gY2FrZV9tcV9zZWxlY3RfcXVldWUsDQorCS5n
cmFmdAkJPSBjYWtlX21xX2dyYWZ0LA0KKwkubGVhZgkJPSBjYWtlX21xX2xlYWYsDQorCS5maW5k
CQk9IGNha2VfbXFfZmluZCwNCisJLndhbGsJCT0gY2FrZV9tcV93YWxrLA0KKwkuZHVtcAkJPSBj
YWtlX21xX2R1bXBfY2xhc3MsDQorCS5kdW1wX3N0YXRzCT0gY2FrZV9tcV9kdW1wX2NsYXNzX3N0
YXRzLA0KK307DQorDQorc3RhdGljIHN0cnVjdCBRZGlzY19vcHMgY2FrZV9tcV9xZGlzY19vcHMg
X19yZWFkX21vc3RseSA9IHsNCisJLmNsX29wcwkJPQkmY2FrZV9tcV9jbGFzc19vcHMsDQorCS5p
ZAkJPQkiY2FrZV9tcSIsDQorCS5wcml2X3NpemUJPQlzaXplb2Yoc3RydWN0IGNha2VfbXFfc2No
ZWQpLA0KKwkuaW5pdAkJPQljYWtlX21xX2luaXQsDQorCS5kZXN0cm95CT0JY2FrZV9tcV9kZXN0
cm95LA0KKwkuYXR0YWNoCQk9IGNha2VfbXFfYXR0YWNoLA0KKwkvLwkuY2hhbmdlCQk9CWNha2Vf
bXFfY2hhbmdlLA0KKwkuY2hhbmdlX3JlYWxfbnVtX3R4ID0gbXFfY2hhbmdlX3JlYWxfbnVtX3R4
LA0KKwkuZHVtcAkJPQljYWtlX21xX2R1bXAsDQorCS5vd25lcgkJPQlUSElTX01PRFVMRSwNCit9
Ow0KK01PRFVMRV9BTElBU19ORVRfU0NIKCJjYWtlX21xIik7DQorDQogc3RhdGljIGludCBfX2lu
aXQgY2FrZV9tb2R1bGVfaW5pdCh2b2lkKQ0KIHsNCi0JcmV0dXJuIHJlZ2lzdGVyX3FkaXNjKCZj
YWtlX3FkaXNjX29wcyk7DQorCXJldHVybiByZWdpc3Rlcl9xZGlzYygmY2FrZV9xZGlzY19vcHMp
ID86DQorCQlyZWdpc3Rlcl9xZGlzYygmY2FrZV9tcV9xZGlzY19vcHMpOw0KIH0NCiANCiBzdGF0
aWMgdm9pZCBfX2V4aXQgY2FrZV9tb2R1bGVfZXhpdCh2b2lkKQ0KIHsNCiAJdW5yZWdpc3Rlcl9x
ZGlzYygmY2FrZV9xZGlzY19vcHMpOw0KKwl1bnJlZ2lzdGVyX3FkaXNjKCZjYWtlX21xX3FkaXNj
X29wcyk7DQogfQ0KIA0KIG1vZHVsZV9pbml0KGNha2VfbW9kdWxlX2luaXQpDQoNCi0tIA0KMi41
MS4wDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNh
a2UgbWFpbGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK

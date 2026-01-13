Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 010DBD19788
	for <lists+cake@lfdr.de>; Tue, 13 Jan 2026 15:32:32 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 9E897BA4166;
	Tue, 13 Jan 2026 15:32:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1768314750;
	bh=wYHYRqO+dmgRz6T68cUZ0kw5+fMY3dNNcsEKqqhwNFc=;
	h=To:Cc:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=jR7U8BXKThorExaQMFaJDyyah54SxE4vY2mxwrE+HFsjAxxFE/d2gzp0wr7dLeUS7
	 4C7ymJli/7O/f9byizCod4bx2OUNhzlHGweFyihCFWNNfogmU0d200Gwpu6hpbixXk
	 yA94H05A3t5CXh9hUIYsLigTX+OwII2lfv1WxO1AMWowkVvA49LjWBJRqTEN4APHzJ
	 dl2PFKLtpAW45r8jPJrDiOI+BcyOEgTXeUwZIqPcyOzX2xGmVgWo4OMzDgE5cPX/f2
	 0FvY7um6Q478ecul18BV6raopW8J6SbnyhW+NG8RBg5jA5KWUfMpANLaW6AM9AJQGS
	 P99UZf6x8O7CA==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1768314750;
 b=L3xMFaBSZ4UEsBlfebPpWeEriTWjwSeS4c6eAshaV1br3DZIwalU+2SP4z91HJqCG93wC
 8eInaB8czp476Rhxzvk8qYpWjdF7XWwryrSocCGvb8oFQ8hVuM/qjG2Py85nYWUaUbSTvL0
 xYmNz3mQy8FhvIUdSlTDbbIF9+4y7D0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1768314750; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=wYHYRqO+dmgRz6T68cUZ0kw5+fMY3dNNcsEKqqhwNFc=;
 b=f6HLTf+Kd+lHXwjBD1fhiimZPFr2/ynKHgxXUbMBxFqeOY9XPdrJBgYyo+6SA8he2Ddem
 4lRjRY+zCd+ljaE2gvbBqQGInVx7ifIsGbnfqYjQmRPAGscTcXiUAN2VGxi/bvH6kcQZBs/
 2mFsknU/ppJQ5GglPaK4uU+AML/Wtlk=
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
	by mail.toke.dk (Postfix) with ESMTPS id 28D05BA4157
	for <cake@lists.bufferbloat.net>; Tue, 13 Jan 2026 15:32:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1768314745;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=dkuxnI9DAgtlkp1zs4xwDhM8bobKr8HeiWSG4uzIRZg=;
	b=Y581LSNDacug4HLHMWy8mbrSSC9vdJvetNNUKFAgJb3r3wJqpp7S66r+7RF7Uet735ez0w
	ZiKwoNNi2iSQobvx7iqByRaTpQDX8u1pr9AIAHgB3rAZooJ3betyIWnKrzH8QHGBTFNYWZ
	FOBdJ2gGa7xaBOA/70NpyvAQVsVWRmM=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-250-iZw7XpmqP3-oBC3TcDWfRg-1; Tue, 13 Jan 2026 09:32:24 -0500
X-MC-Unique: iZw7XpmqP3-oBC3TcDWfRg-1
X-Mimecast-MFC-AGG-ID: iZw7XpmqP3-oBC3TcDWfRg_1768314743
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-b8701175a88so209760666b.1
        for <cake@lists.bufferbloat.net>;
 Tue, 13 Jan 2026 06:32:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768314743; x=1768919543;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dkuxnI9DAgtlkp1zs4xwDhM8bobKr8HeiWSG4uzIRZg=;
        b=CCXxwA2xIFAldlhXJa78LKp6VUJncZIR/4lg55JhOao62DVxQETz8F8C/gDCzKuK6m
         MZlVocWIkX78M/p2dk2Di+EAIeonlL7A3QbZa/gt1OobBl+awRYNlUMOw3h5mG6YtANM
         OD3mLX++ouxLqIquusmm/kw2F9IDhuzmPwpGAb1gxjqz+0AGH30pi6rMTmKlAgVRhL4M
         klUF2EeSoCj/QelzH0DrNw4spnSNkS6eD+9ZVpZD7tLZ6EaDP9m/9T3A+in5Z6Up/e+Y
         3+1UhEqbN0hblinNubBO1JhcbnFZczj8q4y2QCcI5BvbVeEDsKEW4LfUVnyQ7ElX8k/Q
         l+OQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWhf5oKlxwkj1PqCIrDMw2LqcvywmALUFDlYoKlsRVs4Xbu85DUEyrpblzTusOPgjTEyLyq@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yyn+0s76Zg2b2XiYdcpxY2B9K+9N9ruTdt/4djpAQ0KdphqAap0
	IdCj+VMtxUn9kBoWmsq0TTyO/OEMl5/bZKE1vYTCOIRGePbH/wrPjRL5G/w9pnAv932K7SHyg5N
	ai9vT1jD6NY1rx2O7IHFyV2cmMkD7rVNYl7VH5eJWwnOt/PVEv72UvcaFcp1+MQw=
X-Gm-Gg: AY/fxX4xHuy37o2kzD7FffVglCEw9Qad/tNk05/IyiRdp1i8LCnhYJqVEuIIFi+W2bn
	pEGKx41nOEwYVvcUilxhP6kmtEd3zG8c3VZfJ1FI4Cj8ZyyKrkC07Q2LjAB3iZSLcRnN84/sODK
	G7qCr7WETukUT2pj4JzSD0WuIqsRHnKt3Kd9AQ46cEzwsDs3YfZz4GiSb6WvHdTA40UCplsuBuy
	YkJXC9+gBRqJtkkiV4zLFj+XTWNsCyhvHgzLXxnXnJ98Ms2wVa0NDae74ccaXhBVyqUPoBXYEZ5
	89aCcocIIxZIllHEPndRuXat/Q4HED5X1cyUOChKD5PxYU+RU7Hz73zgARwqp/tUqKDkHpW9RJg
	rxBIdkON64At+LN0qkkeN3wBLR0BkhqffPidK
X-Received: by 2002:a17:907:1b1d:b0:b73:6c97:af4b with SMTP id
 a640c23a62f3a-b84453eb56amr2069035366b.45.1768314742859;
        Tue, 13 Jan 2026 06:32:22 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IEB+MEceAg42yKB6X3GnjXTXcTjic7cEQBXwGrKiPhtu7WnQmtOEtd433LcjlYixKzqnjazwg==
X-Received: by 2002:a17:907:1b1d:b0:b73:6c97:af4b with SMTP id
 a640c23a62f3a-b84453eb56amr2069032066b.45.1768314742303;
        Tue, 13 Jan 2026 06:32:22 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.borgediget.toke.dk.
 [2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b86f0d6d7c6sm1037956666b.42.2026.01.13.06.32.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 06:32:21 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 739F240894F; Tue, 13 Jan 2026 15:32:18 +0100 (CET)
To: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
	Jamal Hadi Salim <jhs@mojatatu.com>,
	Cong Wang <xiyou.wangcong@gmail.com>,
	Jiri Pirko <jiri@resnulli.us>
Cc: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
	Paolo Abeni <pabeni@redhat.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Simon Horman <horms@kernel.org>,
	cake@lists.bufferbloat.net,
	netdev@vger.kernel.org
Date: Tue, 13 Jan 2026 15:31:56 +0100
Message-ID: <20260113143157.2581680-1-toke@redhat.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: OP-iuEQOYL_nYlKyafYc2ftLIGt0JFUaC-YaMVV7bFw_1768314743
X-Mimecast-Originator: redhat.com
Message-ID-Hash: 3VM5TKM7LU5CV5I24X7JGSHJHPXMSYTO
X-Message-ID-Hash: 3VM5TKM7LU5CV5I24X7JGSHJHPXMSYTO
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next] net/sched: cake: avoid separate allocation of struct
 cake_sched_config
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20260113143157.2581680-1-toke@redhat.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Reply-To: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UGFvbG8gcG9pbnRlZCBvdXQgdGhhdCB3ZSBjYW4gYXZvaWQgc2VwYXJhdGVseSBhbGxvY2F0aW5n
IHN0cnVjdA0KY2FrZV9zY2hlZF9jb25maWcgZXZlbiBpbiB0aGUgbm9uLW1xIGNhc2UsIGJ5IGVt
YmVkZGluZyBpdCBpbnRvIHN0cnVjdA0KY2FrZV9zY2hlZF9kYXRhLiBUaGlzIHJlZHVjZXMgdGhl
IGNvbXBsZXhpdHkgb2YgdGhlIGxvZ2ljIHRoYXQgc3dhcHMgdGhlDQpwb2ludGVycyBhbmQgZnJl
ZXMgdGhlIG9sZCB2YWx1ZSwgYXQgdGhlIGNvc3Qgb2YgYWRkaW5nIDU2IGJ5dGVzIHRvIHRoZQ0K
bGF0dGVyLiBTaW5jZSBjYWtlX3NjaGVkX2RhdGEgaXMgYWxyZWFkeSBhbG1vc3QgMTdrIGJ5dGVz
LCB0aGlzIHNlZW1zDQpsaWtlIGEgcmVhc29uYWJsZSB0cmFkZW9mZi4NCg0KU3VnZ2VzdGVkLWJ5
OiBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+DQpTaWduZWQtb2ZmLWJ5OiBUb2tlIEjD
uGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4NCi0tLQ0KIG5ldC9zY2hlZC9zY2hf
Y2FrZS5jIHwgMjkgKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCiAxIGZpbGUgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspLCAyMyBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL25ldC9z
Y2hlZC9zY2hfY2FrZS5jIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMNCmluZGV4IGUzMGVmN2Y4ZWU2
OC4uZmQ1NmI3ZDg4MzAxIDEwMDY0NA0KLS0tIGEvbmV0L3NjaGVkL3NjaF9jYWtlLmMNCisrKyBi
L25ldC9zY2hlZC9zY2hfY2FrZS5jDQpAQCAtMjIxLDYgKzIyMSw3IEBAIHN0cnVjdCBjYWtlX3Nj
aGVkX2RhdGEgew0KIAlzdHJ1Y3QgdGNmX2Jsb2NrICpibG9jazsNCiAJc3RydWN0IGNha2VfdGlu
X2RhdGEgKnRpbnM7DQogCXN0cnVjdCBjYWtlX3NjaGVkX2NvbmZpZyAqY29uZmlnOw0KKwlzdHJ1
Y3QgY2FrZV9zY2hlZF9jb25maWcgaW5pdGlhbF9jb25maWc7DQogDQogCXN0cnVjdCBjYWtlX2hl
YXBfZW50cnkgb3ZlcmZsb3dfaGVhcFtDQUtFX1FVRVVFUyAqIENBS0VfTUFYX1RJTlNdOw0KIA0K
QEAgLTI3OTgsOCArMjc5OSw2IEBAIHN0YXRpYyB2b2lkIGNha2VfZGVzdHJveShzdHJ1Y3QgUWRp
c2MgKnNjaCkNCiAJcWRpc2Nfd2F0Y2hkb2dfY2FuY2VsKCZxLT53YXRjaGRvZyk7DQogCXRjZl9i
bG9ja19wdXQocS0+YmxvY2spOw0KIAlrdmZyZWUocS0+dGlucyk7DQotCWlmIChxLT5jb25maWcg
JiYgIXEtPmNvbmZpZy0+aXNfc2hhcmVkKQ0KLQkJa3ZmcmVlKHEtPmNvbmZpZyk7DQogfQ0KIA0K
IHN0YXRpYyB2b2lkIGNha2VfY29uZmlnX2luaXQoc3RydWN0IGNha2Vfc2NoZWRfY29uZmlnICpx
LCBib29sIGlzX3NoYXJlZCkNCkBAIC0yODIyLDEzICsyODIxLDkgQEAgc3RhdGljIGludCBjYWtl
X2luaXQoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdCBubGF0dHIgKm9wdCwNCiAJCSAgICAgc3Ry
dWN0IG5ldGxpbmtfZXh0X2FjayAqZXh0YWNrKQ0KIHsNCiAJc3RydWN0IGNha2Vfc2NoZWRfZGF0
YSAqcWQgPSBxZGlzY19wcml2KHNjaCk7DQotCXN0cnVjdCBjYWtlX3NjaGVkX2NvbmZpZyAqcTsN
CisJc3RydWN0IGNha2Vfc2NoZWRfY29uZmlnICpxID0gJnFkLT5pbml0aWFsX2NvbmZpZzsNCiAJ
aW50IGksIGosIGVycjsNCiANCi0JcSA9IGt6YWxsb2Moc2l6ZW9mKCpxKSwgR0ZQX0tFUk5FTCk7
DQotCWlmICghcSkNCi0JCXJldHVybiAtRU5PTUVNOw0KLQ0KIAljYWtlX2NvbmZpZ19pbml0KHEs
IGZhbHNlKTsNCiANCiAJc2NoLT5saW1pdCA9IDEwMjQwOw0KQEAgLTI4NDIsMTQgKzI4MzcsMTMg
QEAgc3RhdGljIGludCBjYWtlX2luaXQoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdCBubGF0dHIg
Km9wdCwNCiANCiAJaWYgKG9wdCkgew0KIAkJZXJyID0gY2FrZV9jaGFuZ2Uoc2NoLCBvcHQsIGV4
dGFjayk7DQotDQogCQlpZiAoZXJyKQ0KLQkJCWdvdG8gZXJyOw0KKwkJCXJldHVybiBlcnI7DQog
CX0NCiANCiAJZXJyID0gdGNmX2Jsb2NrX2dldCgmcWQtPmJsb2NrLCAmcWQtPmZpbHRlcl9saXN0
LCBzY2gsIGV4dGFjayk7DQogCWlmIChlcnIpDQotCQlnb3RvIGVycjsNCisJCXJldHVybiBlcnI7
DQogDQogCXF1YW50dW1fZGl2WzBdID0gfjA7DQogCWZvciAoaSA9IDE7IGkgPD0gQ0FLRV9RVUVV
RVM7IGkrKykNCkBAIC0yODU3LDEwICsyODUxLDggQEAgc3RhdGljIGludCBjYWtlX2luaXQoc3Ry
dWN0IFFkaXNjICpzY2gsIHN0cnVjdCBubGF0dHIgKm9wdCwNCiANCiAJcWQtPnRpbnMgPSBrdmNh
bGxvYyhDQUtFX01BWF9USU5TLCBzaXplb2Yoc3RydWN0IGNha2VfdGluX2RhdGEpLA0KIAkJCSAg
ICBHRlBfS0VSTkVMKTsNCi0JaWYgKCFxZC0+dGlucykgew0KLQkJZXJyID0gLUVOT01FTTsNCi0J
CWdvdG8gZXJyOw0KLQl9DQorCWlmICghcWQtPnRpbnMpDQorCQlyZXR1cm4gLUVOT01FTTsNCiAN
CiAJZm9yIChpID0gMDsgaSA8IENBS0VfTUFYX1RJTlM7IGkrKykgew0KIAkJc3RydWN0IGNha2Vf
dGluX2RhdGEgKmIgPSBxZC0+dGlucyArIGk7DQpAQCAtMjg5MywyMiArMjg4NSwxMyBAQCBzdGF0
aWMgaW50IGNha2VfaW5pdChzdHJ1Y3QgUWRpc2MgKnNjaCwgc3RydWN0IG5sYXR0ciAqb3B0LA0K
IAlxZC0+bGFzdF9jaGVja2VkX2FjdGl2ZSA9IDA7DQogDQogCXJldHVybiAwOw0KLWVycjoNCi0J
a3ZmcmVlKHFkLT5jb25maWcpOw0KLQlxZC0+Y29uZmlnID0gTlVMTDsNCi0JcmV0dXJuIGVycjsN
CiB9DQogDQogc3RhdGljIHZvaWQgY2FrZV9jb25maWdfcmVwbGFjZShzdHJ1Y3QgUWRpc2MgKnNj
aCwgc3RydWN0IGNha2Vfc2NoZWRfY29uZmlnICpjZmcpDQogew0KIAlzdHJ1Y3QgY2FrZV9zY2hl
ZF9kYXRhICpxZCA9IHFkaXNjX3ByaXYoc2NoKTsNCi0Jc3RydWN0IGNha2Vfc2NoZWRfY29uZmln
ICpxID0gcWQtPmNvbmZpZzsNCiANCiAJcWQtPmNvbmZpZyA9IGNmZzsNCi0NCi0JaWYgKCFxLT5p
c19zaGFyZWQpDQotCQlrdmZyZWUocSk7DQotDQogCWNha2VfcmVjb25maWd1cmUoc2NoKTsNCiB9
DQogDQotLSANCjIuNTIuMA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVy
YmxvYXQubmV0Cg==

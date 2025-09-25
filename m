Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E71EB9FAA3
	for <lists+cake@lfdr.de>; Thu, 25 Sep 2025 15:51:25 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id C0B936EF448;
	Thu, 25 Sep 2025 15:51:23 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=dMA1LmCY
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1758808283;
 b=d6aIEBN+dCfwe2hq9llwi1R7znBHKc8rfCDAErGdfCSX1igUKaxQXZ+6PoTM+wSspwHxI
 QozxciD0V6xgfqbRqcndA5Wl9b5Fd3UDDUF9iJ7A9+db8Ea20U3YCgDRpTj9W1qR8PVjAns
 mWLl+lrzrOZDLru3pp0wxVgvwkI3OCc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1758808283; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=cSDLYhvwESmwi07NzL9dFl4F6F9mnuNZG7jGrELgUJU=;
 b=hdi+zJ/9yynFCkKW3BxLXEsJCbTPXlElNTV12+73B8yxan6HGiQnmRvP6ZZ2AFvz8DxNy
 XkFJBRks//szYnLhnNnMDXDAKUe3uVZR2afojjwK4irdIlSNZK12WNC8VgI05nsgKTL3UrG
 3Hqgw/vAmV7yNBPCLWlMTT5BqnHKxH4=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
	by mail.toke.dk (Postfix) with ESMTPS id 3916F6EDEEA
	for <cake@lists.bufferbloat.net>; Thu, 25 Sep 2025 11:07:04 +0200 (CEST)
Received: by mail-wr1-x429.google.com with SMTP id
 ffacd0b85a97d-3ee1221ceaaso456408f8f.3
        for <cake@lists.bufferbloat.net>;
 Thu, 25 Sep 2025 02:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758791163; x=1759395963;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:mime-version:user-agent:references
         :message-id:date:in-reply-to:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NNrpyJFfgvgCiux0aBl6SIFccp73bP8aAdH+wBEeNY4=;
        b=dMA1LmCYXUgG3e2viUX9kQo3cxh7LTvTMAs3JNZWCW+snjdzdF1goUe/Ms/ra9C9IG
         rEtw9v2LfT9T7U3bXLWM+yMxDFBjBJ5OcaUYfu8wlvs0x1yhrgPiZbcqhF7sAct1anzA
         Wtv3YI7xsIzOPLuIFiYVuhXogUTsR3bAUPd0rIFgZsEvEQmprry6/g6vBFRXuYONsz+e
         d3diliPZd/xqxrRIbYSuF/nnXjgTkPDSXs1UVqDcpnipKeZDUFRCzHlKKLni0lcS1A3o
         sdVbe8IXzP0TddgPzwAodavLX9VCr4e2YZE5hAHhVWtSSNxaexHXA7v1jG+N4j3mIz8X
         s02Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758791163; x=1759395963;
        h=content-transfer-encoding:mime-version:user-agent:references
         :message-id:date:in-reply-to:subject:cc:to:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NNrpyJFfgvgCiux0aBl6SIFccp73bP8aAdH+wBEeNY4=;
        b=sVOWQ5rgoBOwZVSUhvlhdfCJOk+cEVpQruCitZj3Nr1JI9SyJVy2LOAcLHHXe1GVE6
         TIFQCmFEghdVrN1X4m7PRWSSXjBfbJ3YJfLWQnepydqJFh8cGdC0E4O1Fnx2yNh8AyHP
         5uvZHC+SSv1k0wP9VkE2Iq9Ny8Ng4Gipz7Qxbe5zOjx53JBABMY8LsXkwAOU8UHkXFED
         4CAcupICwjgpI/WMbdDpGCFMAyQYEgzinKsNedh0gCAyCgyrtlT9Yp5cBKN+TjTJ6CEv
         RAflDU908i9RXsjObmqf0duzsC1I5vRhsMNl8E7Qcqx23V6MMhnKl80CFNmYOH4YfHKn
         7r8g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWiGlWuyxuKZo8t1DvN3G0sr2MOJJbspZpjD+yeBLIgbnR4Xh4GqKWIqMZ233Td1wdjEbyo@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yy7MokFqBr8j+pDeIr1wseGbomilp7hJhmtoffRC09Z5F6IlmhN
	D9wnm//jfxPEhay0RINjWaOVevoazExMC2F+ncrmnnlSc5Irk+90Ykoj
X-Gm-Gg: ASbGncus4NSScRzEY7vWm5UfhJUWMNO+9d8CQy9q8IRCTStQFJ/F1DYwBxYJkB4Y2AD
	vu6xXLRnjqeBBaqtxS2/jN6CuYYwMFTX9qMDcOlZNCt7fGo9lbqDyYqkuqgY/ykOn5CDZk+B0RJ
	5f4Q/rvXPU8MSvrD3HBDmPrUdtfRyyTCe/paJpSjqUXLCJYB8U1Egaj0HpxYMc+xQIGLntKJfdS
	dW7xuCBoCzOaC+8ZVGbtrK2Egnwj8X6flKSRNL2DjbVE6FQt1bFyg0W6VsYwX3Jq6xSJI17nuqf
	1eV+aTxpy+3AUGUuxyh9m2rqZvXnQQ36PciCeIjo/UpLklk5YgLWr+i/Np6rG+wz4+sZl0Hzufv
	xQpgehWs6kgpDNjG2Apapyl9uR6u7O382mg==
X-Google-Smtp-Source: 
 AGHT+IEm9MAwcQUDDCAI0PtQDJs+W1QfdU8z4dmmvXWEahWVep9Lfg7Z7aitwOlHvjoD9h5aALX1Cw==
X-Received: by 2002:a05:6000:2308:b0:3ea:c360:ff88 with SMTP id
 ffacd0b85a97d-40e4ba3a4e9mr2572484f8f.31.1758791162616;
        Thu, 25 Sep 2025 02:06:02 -0700 (PDT)
Received: from imac ([2a02:8010:60a0:0:7065:f39a:cc4:890d])
        by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-40fc5602eccsm2165854f8f.40.2025.09.25.02.06.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 02:06:02 -0700 (PDT)
From: Donald Hunter <donald.hunter@gmail.com>
To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Cc: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,  Jamal Hadi
 Salim
 <jhs@mojatatu.com>,  Cong Wang <xiyou.wangcong@gmail.com>,  Jiri Pirko
 <jiri@resnulli.us>,  "David S. Miller" <davem@davemloft.net>,  Eric
 Dumazet <edumazet@google.com>,  Jakub Kicinski <kuba@kernel.org>,  Paolo
 Abeni <pabeni@redhat.com>,  Simon Horman <horms@kernel.org>,  Jonas
 =?utf-8?Q?K=C3=B6ppeler?= <j.koeppeler@tu-berlin.de>,
  cake@lists.bufferbloat.net,
  netdev@vger.kernel.org
In-Reply-To: <20250924-mq-cake-sub-qdisc-v1-4-43a060d1112a@redhat.com>
Date: Thu, 25 Sep 2025 10:04:58 +0100
Message-ID: <m2ecrusy11.fsf@gmail.com>
References: <20250924-mq-cake-sub-qdisc-v1-0-43a060d1112a@redhat.com>
	<20250924-mq-cake-sub-qdisc-v1-4-43a060d1112a@redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-MailFrom: donald.hunter@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: U5TKY32AVLOGYMTHV6WM5IASWRJMNJMI
X-Message-ID-Hash: U5TKY32AVLOGYMTHV6WM5IASWRJMNJMI
X-Mailman-Approved-At: Thu, 25 Sep 2025 15:51:22 +0200
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH RFC net-next 4/4] net/sched: sch_cake: share shaper state
 across sub-instances of cake_mq
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/m2ecrusy11.fsf@gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+IHdyaXRlczoNCg0KPiBG
cm9tOiBKb25hcyBLw7ZwcGVsZXIgPGoua29lcHBlbGVyQHR1LWJlcmxpbi5kZT4NCj4NCj4gVGhp
cyBjb21taXQgYWRkcyBzaGFyZWQgc2hhcGVyIHN0YXRlIGFjcm9zcyB0aGUgY2FrZSBpbnN0YW5j
ZXMgYmVuZWF0aCBhDQo+IGNha2VfbXEgcWRpc2MuIEl0IHdvcmtzIGJ5IHBlcmlvZGljYWxseSB0
cmFja2luZyB0aGUgbnVtYmVyIG9mIGFjdGl2ZQ0KPiBpbnN0YW5jZXMsIGFuZCBzY2FsaW5nIHRo
ZSBjb25maWd1cmVkIHJhdGUgYnkgdGhlIG51bWJlciBvZiBhY3RpdmUNCj4gcXVldWVzLg0KPg0K
PiBUaGUgc2NhbiBpcyBsb2NrbGVzcyBhbmQgc2ltcGx5IHJlYWRzIHRoZSBxbGVuIGFuZCB0aGUg
bGFzdF9hY3RpdmUgc3RhdGUNCj4gdmFyaWFibGUgb2YgZWFjaCBvZiB0aGUgaW5zdGFuY2VzIGNv
bmZpZ3VyZWQgYmVuZWF0aCB0aGUgcGFyZW50IGNha2VfbXENCj4gaW5zdGFuY2UuIExvY2tpbmcg
aXMgbm90IHJlcXVpcmVkIHNpbmNlIHRoZSB2YWx1ZXMgYXJlIG9ubHkgdXBkYXRlZCBieQ0KPiB0
aGUgb3duaW5nIGluc3RhbmNlLCBhbmQgZXZlbnR1YWwgY29uc2lzdGVuY3kgaXMgc3VmZmljaWVu
dCBmb3IgdGhlDQo+IHB1cnBvc2Ugb2YgZXN0aW1hdGluZyB0aGUgbnVtYmVyIG9mIGFjdGl2ZSBx
dWV1ZXMuDQo+DQo+IFRoZSBpbnRlcnZhbCBmb3Igc2Nhbm5pbmcgdGhlIG51bWJlciBvZiBhY3Rp
dmUgcXVldWVzIGlzIGNvbmZpZ3VyYWJsZQ0KPiBhbmQgZGVmYXVsdHMgdG8gMjAwIHVzLiBXZSBm
b3VuZCB0aGlzIHRvIGJlIGEgZ29vZCB0cmFkZW9mZiBiZXR3ZWVuDQo+IG92ZXJoZWFkIGFuZCBy
ZXNwb25zZSB0aW1lLiBGb3IgYSBkZXRhaWxlZCBhbmFseXNpcyBvZiB0aGlzIGFzcGVjdCBzZWUN
Cj4gdGhlIE5ldGRldmNvbmYgdGFsazoNCj4NCj4gaHR0cHM6Ly9uZXRkZXZjb25mLmluZm8vMHgx
OS9kb2NzL25ldGRldi0weDE5LXBhcGVyMTYtdGFsay1wYXBlci5wZGYNCj4NCj4gU2lnbmVkLW9m
Zi1ieTogSm9uYXMgS8O2cHBlbGVyIDxqLmtvZXBwZWxlckB0dS1iZXJsaW4uZGU+DQo+IFNpZ25l
ZC1vZmYtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPg0KPiAt
LS0NCj4gIGluY2x1ZGUvdWFwaS9saW51eC9wa3Rfc2NoZWQuaCB8ICAyICsrDQo+ICBuZXQvc2No
ZWQvc2NoX2Nha2UuYyAgICAgICAgICAgfCA2NyArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgNjkgaW5zZXJ0aW9ucygrKQ0KPg0K
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4L3BrdF9zY2hlZC5oIGIvaW5jbHVkZS91
YXBpL2xpbnV4L3BrdF9zY2hlZC5oDQo+IGluZGV4IGMyZGE3NmU3OGJhZGViYmRmN2Q1NDgyY2Vm
MWEzMTMyYWVjOTlmZTEuLmE0YWE4MTJiZmJlODY0MjRjNTAyZGU1YmIyZTViMTQyOWI0NDAwODgg
MTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvdWFwaS9saW51eC9wa3Rfc2NoZWQuaA0KPiArKysgYi9p
bmNsdWRlL3VhcGkvbGludXgvcGt0X3NjaGVkLmgNCj4gQEAgLTEwMTQsNiArMTAxNCw3IEBAIGVu
dW0gew0KPiAgCVRDQV9DQUtFX0FDS19GSUxURVIsDQo+ICAJVENBX0NBS0VfU1BMSVRfR1NPLA0K
PiAgCVRDQV9DQUtFX0ZXTUFSSywNCj4gKwlUQ0FfQ0FLRV9TWU5DX1RJTUUsDQo+ICAJX19UQ0Ff
Q0FLRV9NQVgNCj4gIH07DQo+ICAjZGVmaW5lIFRDQV9DQUtFX01BWAkoX19UQ0FfQ0FLRV9NQVgg
LSAxKQ0KPiBAQCAtMTAzNiw2ICsxMDM3LDcgQEAgZW51bSB7DQo+ICAJVENBX0NBS0VfU1RBVFNf
RFJPUF9ORVhUX1VTLA0KPiAgCVRDQV9DQUtFX1NUQVRTX1BfRFJPUCwNCj4gIAlUQ0FfQ0FLRV9T
VEFUU19CTFVFX1RJTUVSX1VTLA0KPiArCVRDQV9DQUtFX1NUQVRTX0FDVElWRV9RVUVVRVMsDQo+
ICAJX19UQ0FfQ0FLRV9TVEFUU19NQVgNCj4gIH07DQo+ICAjZGVmaW5lIFRDQV9DQUtFX1NUQVRT
X01BWCAoX19UQ0FfQ0FLRV9TVEFUU19NQVggLSAxKQ0KDQpIaSBUb2tlLA0KDQpDb3VsZCB5b3Ug
aW5jbHVkZSB0aGlzIGRpZmYgaW4gdGhlIHBhdGNoIHRvIGtlZXAgdGhlIHlubCBzcGVjIHVwIHRv
IGRhdGU/DQoNCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL25ldGxpbmsvc3BlY3MvdGMueWFt
bCBiL0RvY3VtZW50YXRpb24vbmV0bGluay9zcGVjcy90Yy55YW1sDQppbmRleCBiMzk4ZjdhNDZk
YWUuLmYwZWRjODRmOTYxMyAxMDA2NDQNCi0tLSBhL0RvY3VtZW50YXRpb24vbmV0bGluay9zcGVj
cy90Yy55YW1sDQorKysgYi9Eb2N1bWVudGF0aW9uL25ldGxpbmsvc3BlY3MvdGMueWFtbA0KQEAg
LTIxNTMsNiArMjE1Myw5IEBAIGF0dHJpYnV0ZS1zZXRzOg0KICAgICAgIC0NCiAgICAgICAgIG5h
bWU6IGZ3bWFyaw0KICAgICAgICAgdHlwZTogdTMyDQorICAgICAgLQ0KKyAgICAgICAgbmFtZTog
c3luYy10aW1lDQorICAgICAgICB0eXBlOiB1MzINCiAgIC0NCiAgICAgbmFtZTogY2FrZS1zdGF0
cy1hdHRycw0KICAgICBuYW1lLXByZWZpeDogdGNhLWNha2Utc3RhdHMtDQpAQCAtMjIwNyw2ICsy
MjEwLDkgQEAgYXR0cmlidXRlLXNldHM6DQogICAgICAgLQ0KICAgICAgICAgbmFtZTogYmx1ZS10
aW1lci11cw0KICAgICAgICAgdHlwZTogczMyDQorICAgICAgLQ0KKyAgICAgICAgbmFtZTogYWN0
aXZlLXF1ZXVlcw0KKyAgICAgICAgdHlwZTogdTMyDQogICAtDQogICAgIG5hbWU6IGNha2UtdGlu
LXN0YXRzLWF0dHJzDQogICAgIG5hbWUtcHJlZml4OiB0Y2EtY2FrZS10aW4tc3RhdHMtDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcg
bGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==

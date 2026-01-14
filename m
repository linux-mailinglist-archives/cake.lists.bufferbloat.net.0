Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D5FD1CF94
	for <lists+cake@lfdr.de>; Wed, 14 Jan 2026 08:58:41 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 7D982BAF6B6;
	Wed, 14 Jan 2026 08:58:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1768377520;
	bh=33eBAgVx/TB9CHaX2vNzf2C80DWo1U/KvrSo9RV6emk=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=fNemOxSKwKWoPvjmcMOOPZQljhPEEphr1rbUY9dRK4DLTQ2HKgWx0NnFftbC29U0g
	 kvySCTmQ0Ff4QTRO4N+exg91Y6qlechFQWk8vCLdAt11g26JMgRuZc538HqXgUM+Xa
	 qn3Owmeq+J+nv1R7NsPXjiY50tlbsC49molh1UB046Ti9Y/khdEMvEAC4yvqRjhRrO
	 uhK2UhKSIQOwamBsrvPP/I/ygKbjSjGZYYwCKI8eiRxAM1M8soW8hGNbW8ezNwNa0J
	 TXTOB7Tr/MJP3LYrYi1ZK6nmnEZ0D8tw9LEBFa29E1uS6s+xuZTAjQ/keHzVk1K+6S
	 a/IPfaIxuw5fw==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1768377520;
 b=JZh0Q06tuWnbD2LDFbfEXaPRWKvDMr/KivtCoJ4HPs0Ajzzxu2DegWbIOWGFYNsIFtV55
 0sxUYfk0QyiMLluAhpZZKV7nKV352dFw7ez9eGgCmHFM6eVq+TfubQ44uvTwILfK2fwV3Md
 Oii3EooK7p0zEjfn0Nc0nR7rbuU0uuY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1768377520; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=33eBAgVx/TB9CHaX2vNzf2C80DWo1U/KvrSo9RV6emk=;
 b=0JCYb7kezTK1zqDwgdpJeV72DLnCDiBxocUnayR/OqbiZaVD5muzkRAxxGnYxpTvHb9ma
 7mkLOhi5uhRtK1XNrbvMLSmTAoQU7bACLa1RxdrDv6clMADaYXBzSaeNPnU5eaqugkZBmEH
 U5DaLD2tLGZDNXhhrTgszytiRV22D/w=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=google.com;
 arc=none;
 dmarc=pass header.from=google.com policy.dmarc=reject
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=google.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=google.com
 policy.dmarc=reject
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com
 [IPv6:2607:f8b0:4864:20::831])
	by mail.toke.dk (Postfix) with ESMTPS id 99D82BAF6A7
	for <cake@lists.bufferbloat.net>; Wed, 14 Jan 2026 08:58:35 +0100 (CET)
Received: by mail-qt1-x831.google.com with SMTP id
 d75a77b69052e-4ee158187aaso90838551cf.0
        for <cake@lists.bufferbloat.net>;
 Tue, 13 Jan 2026 23:58:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1768377513; x=1768982313;
 darn=lists.bufferbloat.net;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KS0RgjKS4kK/13ZceFw0e8/jjccYR83h4CV62hyXWGQ=;
        b=WAtt/WYm7Olbm5Vp2JXR1XymTZ5N2zy3KWClAoVjJ265uhEVdCRtkbuZ3xqTC0tPVD
         WK7eQqtJ5ACloHz2qCelS5/264s/SQXCJnyjvcMuWYKEol1YPwGX9hNeFrgZ/BNgg7z/
         NhtW85OEln9cVIhLFKKWc06gQ51pXPh0eWjQAoYawPH8ygKYcJHNn2CliyXGmlycvyTf
         CzDStqQoSguJzamlD2wXbFhAOW5DrVZEPhUFIXoj5yMmjW9llybM0cKbKZSZtMAPz35A
         cNvfFLeEppVPqzZeaPl7h2TxjVxNuj2jnlWTFG6LjbzvB0elJsDUEQtBIHjQ/vIqaU5o
         m0bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768377513; x=1768982313;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KS0RgjKS4kK/13ZceFw0e8/jjccYR83h4CV62hyXWGQ=;
        b=Jnv/me6MPMC+acj8B4qsOpDS9B0g0NLLvGrZJWvXKmRH1/OybE3VSiOLZSb6FK9Nug
         pDzLImIn576OD87ylCFsqe6dgSu1espbhm2pzEdN3XMEh8rvs84iSf1hqVbbPN0e3n7k
         yO/+fjLSaInTwZD6LDjqtqYad6PhypLIEwr8iqGEYCPa3mMVRxwq7SVtaIsfZx1VAhw5
         mvcVhfcaInYYRd+IF9un37Tc1sYgO0x3keCR45ovxfA4wY6XBjdzWdkJgBSewUxmrmAN
         hY2EPEDKmKVejhsZqezdUdMbFF9iLgwz99oNNSmMiyghZhsVC62s2rnC8P/emJGfa4S+
         3iqw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW5RfdcJDT9jRdqHRR+8hmoGAaRQFvLIzz2lGl5VpxbMMXX6p+JP6+j97F7rSFhP28h8lJ6@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzvpfRJTp14BIszXA7rYLrzEoe//dxUYyNW1UacUJFZmxg9/jII
	3tDlpFEW5SxFKxfqG0ESbYF4Wj9Gc5ni8fNG61XhAnPvKOn1EsztouXjtl2+Hr0jtsIsgF3SlRP
	nOUwL9wLFt2+c9Q5EUD2rVZqRekkrbMSTcXOmrF5a
X-Gm-Gg: AY/fxX6pS2xaV8Zr/YoFNwLMzj1jLhQtWyjb1rQ8ViiSHDJdhQs5EdXQS/1aYj+16Ri
	9oCIVGCv9rkhim9MRfYRxQ16KKNtBhNHxaZtmWQUXXsKDD7GoyCgkMGygwMZuKiBr7o7Jj2sRS3
	UHv1PD+uGzQpu/64YALejfFFt7GuQ12zT0thBbhLb8D8yj3Srn+g3jaH7qjAW/tJuOWe5JUVrv+
	DH11ME1+l+Bb/BqC1FqjM8H9Tov6jOvPFC66Q00lONqowHxuRSpqh8+ke5Cb20oMvfZZUZS
X-Received: by 2002:a05:622a:4203:b0:4ed:df82:ca30 with SMTP id
 d75a77b69052e-501481e9360mr22469121cf.13.1768377513015; Tue, 13 Jan 2026
 23:58:33 -0800 (PST)
MIME-Version: 1.0
References: <20260113143157.2581680-1-toke@redhat.com>
In-Reply-To: <20260113143157.2581680-1-toke@redhat.com>
Date: Wed, 14 Jan 2026 08:58:22 +0100
X-Gm-Features: AZwV_QgnLNgfxSc_QYvpFJdNGcLOfkKl5TVYTVho5qgGdKMeOVvQUnotTW6I4yw
Message-ID: 
 <CANn89iLdM=a=oagYA=LKbfaDuhQaYtxA0wNERuzNLGghA58Phw@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Cc: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>,
	Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>,
	Jiri Pirko <jiri@resnulli.us>, Paolo Abeni <pabeni@redhat.com>,
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Simon Horman <horms@kernel.org>,
	cake@lists.bufferbloat.net, netdev@vger.kernel.org
Message-ID-Hash: VGJY4NNGLP2CSQG5RT5WZ4O26G4C3MJF
X-Message-ID-Hash: VGJY4NNGLP2CSQG5RT5WZ4O26G4C3MJF
X-MailFrom: edumazet@google.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next] net/sched: cake: avoid separate allocation of
 struct cake_sched_config
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CANn89iLdM=a=oagYA=LKbfaDuhQaYtxA0wNERuzNLGghA58Phw@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: Eric Dumazet via Cake <cake@lists.bufferbloat.net>
Reply-To: Eric Dumazet <edumazet@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBKYW4gMTMsIDIwMjYgYXQgMzozMuKAr1BNIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNl
biA8dG9rZUByZWRoYXQuY29tPiB3cm90ZToNCj4NCj4gUGFvbG8gcG9pbnRlZCBvdXQgdGhhdCB3
ZSBjYW4gYXZvaWQgc2VwYXJhdGVseSBhbGxvY2F0aW5nIHN0cnVjdA0KPiBjYWtlX3NjaGVkX2Nv
bmZpZyBldmVuIGluIHRoZSBub24tbXEgY2FzZSwgYnkgZW1iZWRkaW5nIGl0IGludG8gc3RydWN0
DQo+IGNha2Vfc2NoZWRfZGF0YS4gVGhpcyByZWR1Y2VzIHRoZSBjb21wbGV4aXR5IG9mIHRoZSBs
b2dpYyB0aGF0IHN3YXBzIHRoZQ0KPiBwb2ludGVycyBhbmQgZnJlZXMgdGhlIG9sZCB2YWx1ZSwg
YXQgdGhlIGNvc3Qgb2YgYWRkaW5nIDU2IGJ5dGVzIHRvIHRoZQ0KPiBsYXR0ZXIuIFNpbmNlIGNh
a2Vfc2NoZWRfZGF0YSBpcyBhbHJlYWR5IGFsbW9zdCAxN2sgYnl0ZXMsIHRoaXMgc2VlbXMNCj4g
bGlrZSBhIHJlYXNvbmFibGUgdHJhZGVvZmYuDQo+DQo+IFN1Z2dlc3RlZC1ieTogUGFvbG8gQWJl
bmkgPHBhYmVuaUByZWRoYXQuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrD
uHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4NCj4gLS0tDQoNClRoaXMgaXMgYWxzbyBmaXhpbmcg
YSBwYW5pYywgc28gOg0KDQpGaXhlczogYmMwY2UyYmFkMzZjICgibmV0L3NjaGVkOiBzY2hfY2Fr
ZTogRmFjdG9yIG91dCBjb25maWcgdmFyaWFibGVzDQppbnRvIHNlcGFyYXRlIHN0cnVjdCIpDQoN
CkZvciB0aGUgcmVjb3JkLCBhIGZpeCBmb3IgdGhlIHBhbmljIHdvdWxkIGJlIDoNCg0KZGlmZiAt
LWdpdCBhL25ldC9zY2hlZC9zY2hfY2FrZS5jIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMNCmluZGV4
IGUzMGVmN2Y4ZWU2ODYyYTkxNmFjYzA2ZTU2OGUzN2YzNWZkNjc1YjEuLjc0MmZiODUwZTJhZmIx
NTlmMjE1YjI2M2JjMzZjMzcyNTUyOTExYmMNCjEwMDY0NA0KLS0tIGEvbmV0L3NjaGVkL3NjaF9j
YWtlLmMNCisrKyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jDQpAQCAtMjgyNSw2ICsyODI1LDggQEAg
c3RhdGljIGludCBjYWtlX2luaXQoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdA0KbmxhdHRyICpv
cHQsDQogICAgICAgIHN0cnVjdCBjYWtlX3NjaGVkX2NvbmZpZyAqcTsNCiAgICAgICAgaW50IGks
IGosIGVycjsNCg0KKyAgICAgICBxZGlzY193YXRjaGRvZ19pbml0KCZxZC0+d2F0Y2hkb2csIHNj
aCk7DQorDQogICAgICAgIHEgPSBremFsbG9jKHNpemVvZigqcSksIEdGUF9LRVJORUwpOw0KICAg
ICAgICBpZiAoIXEpDQogICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07DQpAQCAtMjgzOCw3
ICsyODQwLDYgQEAgc3RhdGljIGludCBjYWtlX2luaXQoc3RydWN0IFFkaXNjICpzY2gsIHN0cnVj
dA0KbmxhdHRyICpvcHQsDQogICAgICAgIHFkLT5jdXJfZmxvdyAgPSAwOw0KICAgICAgICBxZC0+
Y29uZmlnID0gcTsNCg0KLSAgICAgICBxZGlzY193YXRjaGRvZ19pbml0KCZxZC0+d2F0Y2hkb2cs
IHNjaCk7DQoNCiAgICAgICAgaWYgKG9wdCkgew0KICAgICAgICAgICAgICAgIGVyciA9IGNha2Vf
Y2hhbmdlKHNjaCwgb3B0LCBleHRhY2spOw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldAo=

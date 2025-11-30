Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id CE833C954AA
	for <lists+cake@lfdr.de>; Sun, 30 Nov 2025 21:37:40 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id AB61A9E8DFB;
	Sun, 30 Nov 2025 21:37:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764535057;
	bh=8Si0GTRI7lSA5g9t7CGGBASxv5qaC0VdwRCZgoP033g=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=bXzlxtV1QiinkPxfTuiVImGVxDTFpQgX4zlIvfd3bzFalUS+VE+2u7+w4UMFbyErR
	 NG3WSGj0ZEIWrCqiXGpSi9xPQRWXqEEIj4DKY7+mqdlnWRIeW+KpjIbeRMxgCVgz2k
	 p5+P7uSI7LzIskjLxP1qEQqBbZllnLAFXXWtv3nmNG1zVrJ4yYSs02VOWWdpqOvqG7
	 COwLYAlNIq3CRbpqf4WW2B3jTh0PGgeYrMNuZH4KPJFFGk5HE7vjR3nYE+PQsDGwEc
	 aKRJDl9zVxK5UvTQrP5UcNJoOkNPXx0dravED29uC5oJ6dHqzDLGva6RxI1r8ZatlC
	 qP4kDh5j+Sn+Q==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764535057;
 b=x/VSHvhQd50krs7hYxcCgG9IMBsjdIstfKl31juwSrMBuCB6MnLb+MJfV/0YGnNaeZBqU
 mdWQUXayEdQ+Bf4w8DZKMVoDdxJ9H7NmooUu7U+bf9j7xH5tHQMqupQpevai9xsBDOfSlkS
 l0eJaDiQg/HmetXpozNwaqyGGoiZr/s=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764535057; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=8Si0GTRI7lSA5g9t7CGGBASxv5qaC0VdwRCZgoP033g=;
 b=nDv2NRxA3RI2/iV1s0//992CAahtbXtATdcgpwDDnE9FVKyatUajrsudEBfJjZ+kgA5qU
 vTGuVnGzErbEEOtKbtjeWmGwsD/wOzWqrJyDkio3OxWMa200p4udvsGW45HGUvK9ookWak+
 lvW4u8mLQOiS8wB9Za//iX/nspdQ92E=
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
	by mail.toke.dk (Postfix) with ESMTPS id DBC0B9E8DA4
	for <cake@lists.bufferbloat.net>; Sun, 30 Nov 2025 21:37:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764535054;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wUMJiYZXKqtanBIyLbqRVm5kHc14zllivwQv0Kw91JA=;
	b=TuYrJmarooY4hwmuXNtW5q5KDTMvQFdKtipAENrrOp0hraffd5gLMJwksGROmKyaxTWVS/
	GPAH2FZhBgxRw+zpYMGEhSsJsV8zWGiwdpk9FFYSbyYVT8Av8ALJUNonQ95kx3DciXQ3pB
	lewuUhGRdhVu0enrxEtiga6yfaIzSkQ=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-639-TDF_F-hkMIyrVq0EON8HPQ-1; Sun, 30 Nov 2025 15:37:33 -0500
X-MC-Unique: TDF_F-hkMIyrVq0EON8HPQ-1
X-Mimecast-MFC-AGG-ID: TDF_F-hkMIyrVq0EON8HPQ_1764535052
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-b764b80358bso278469866b.1
        for <cake@lists.bufferbloat.net>;
 Sun, 30 Nov 2025 12:37:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764535052; x=1765139852;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wUMJiYZXKqtanBIyLbqRVm5kHc14zllivwQv0Kw91JA=;
        b=q7jd4+S/jndJcMHJE3PMTK+Dl2/66dzhBmlBdbOhGATKZw4stQi34pYcf3R3wmjg28
         /Tt5Jo+DSjumSDoBDYvmN6Zq6MYQxcDkjQp+XpqTfj6EZ9AdoFOcRENTgkP26kelebfk
         sh4JUBEhci00S+0f7f2uU+c44EH5ZuYFUnrbQ0loJ3AWMxYotkMGQEcIhZfWFIwav67Q
         a0I+FEbUkVFt6g9naXpygNTSIFwMMS5QwvNMIf+R9g22613cHZf8h6HAFMdtZ9PfQ+XA
         rY6Ek8v/UhqNy9Lq8VBA7L9NAoqIXQEJ391552QowHIWTgDQcYy+7TYx9KnF7PDUnGtB
         7J0w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUlw/cFHzK9JjkL+sjbjl7XQrciS6kw+m4LwPBafEu2oxd4R6hGHP+aoEutv8syjaQeF4Uj@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwhvM1lHkGV5/ITsZZDt58nDIadwaGFqgOo6xjfbhVchg8Bvsyn
	/rAi9eeBSXRdGB5eynerJIA/ekMJRNrEPoNpR+ct6q2fW+fTqFYqJydso6Ha3ceN4ZLHnzV7qld
	TE7Z/X4rKaPnuaSqaCxGYlUSCOC+mGfMZO8qvg74YXkCd6dEzi2bseLTa+FLsNEw=
X-Gm-Gg: ASbGncvU8q2ZwO+mNZ1wRhC4TLMnoK2LMyxVySnh1q/ORABYCOZjZ7iS7WJHeXKzlZt
	9fP7wx8zt0kzgsfRk5S6Dbo3+SA8wnZXDAe7cKkqMMXnMJbGjED07HMX9SsJBnW2eQY/rjbK6rR
	jWs1nAR5WyI8dMBozcXf3rt+DWJVYvLSZ+RNibLc7Yqf5M/3rW1UeLcMPhLUbeErrSSe+yUB+ik
	dPsKfo9Dww2azshfuBdMVdSTsUzX0Cq2mkase3iTmigmhcvB80tvzOmQjMVlz+D41Ikuv5clC+r
	ES6YT2+Du7C7i6uCMRy6HpZfqKg7ywJtVmMO688Fy7wldZqge06NSK2jVlHYQyaw0cH8pAwVuJ3
	Z4A2DRPb9j4yyfgGvBNAqdgxVm3aRGpHydw==
X-Received: by 2002:a17:907:a909:b0:b70:ac7a:2a93 with SMTP id
 a640c23a62f3a-b76c555d858mr2668957466b.43.1764535051845;
        Sun, 30 Nov 2025 12:37:31 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IFC0uIo/B+vhvY1UWwpUh6CZ6e9j1wR3D1muobhNkd83nwguyT69Tu6y/GHPktGwYHGkAPBSw==
X-Received: by 2002:a17:907:a909:b0:b70:ac7a:2a93 with SMTP id
 a640c23a62f3a-b76c555d858mr2668955166b.43.1764535051418;
        Sun, 30 Nov 2025 12:37:31 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b76f59aece0sm1002613766b.32.2025.11.30.12.37.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Nov 2025 12:37:30 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 48901395C2B; Sun, 30 Nov 2025 21:37:26 +0100 (CET)
Date: Sun, 30 Nov 2025 21:37:22 +0100
MIME-Version: 1.0
Message-Id: <20251130-mq-cake-sub-qdisc-v3-5-5f66c548ecdc@redhat.com>
References: <20251130-mq-cake-sub-qdisc-v3-0-5f66c548ecdc@redhat.com>
In-Reply-To: <20251130-mq-cake-sub-qdisc-v3-0-5f66c548ecdc@redhat.com>
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
X-Mimecast-MFC-PROC-ID: Re2FDCZaEBuDvjKixQuE-nSJ30tk9DDLDMdm1elK5pQ_1764535052
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: YKQO5FHZ26BFX2GSD7PP7TOIFQMZDWGF
X-Message-ID-Hash: YKQO5FHZ26BFX2GSD7PP7TOIFQMZDWGF
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next v3 5/5] net/sched: sch_cake: share shaper state across
 sub-instances of cake_mq
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251130-mq-cake-sub-qdisc-v3-5-5f66c548ecdc@redhat.com/>
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
MHgxOS9kb2NzL25ldGRldi0weDE5LXBhcGVyMTYtdGFsay1wYXBlci5wZGYNCg0KU2lnbmVkLW9m
Zi1ieTogSm9uYXMgS8O2cHBlbGVyIDxqLmtvZXBwZWxlckB0dS1iZXJsaW4uZGU+DQpSZXZpZXdl
ZC1ieTogSmFtYWwgSGFkaSBTYWxpbSA8amhzQG1vamF0YXR1LmNvbT4NClNpZ25lZC1vZmYtYnk6
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
Y2FrZS5jDQppbmRleCA1MTE4NGYzMDgzODcuLjUzOTJlOGZiZTM0YiAxMDA2NDQNCi0tLSBhL25l
dC9zY2hlZC9zY2hfY2FrZS5jDQorKysgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYw0KQEAgLTIwMSw2
ICsyMDEsNyBAQCBzdHJ1Y3QgY2FrZV9zY2hlZF9jb25maWcgew0KIAl1NjQJCXJhdGVfYnBzOw0K
IAl1NjQJCWludGVydmFsOw0KIAl1NjQJCXRhcmdldDsNCisJdTY0CQlzeW5jX3RpbWU7DQogCXUz
MgkJYnVmZmVyX2NvbmZpZ19saW1pdDsNCiAJdTMyCQlmd21hcmtfbWFzazsNCiAJdTE2CQlmd21h
cmtfc2hmdDsNCkBAIC0yNTcsNiArMjU4LDExIEBAIHN0cnVjdCBjYWtlX3NjaGVkX2RhdGEgew0K
IAl1MTYJCW1heF9hZGpsZW47DQogCXUxNgkJbWluX25ldGxlbjsNCiAJdTE2CQltaW5fYWRqbGVu
Ow0KKw0KKwkvKiBtcSBzeW5jIHN0YXRlICovDQorCXU2NAkJbGFzdF9jaGVja2VkX2FjdGl2ZTsN
CisJdTY0CQlsYXN0X2FjdGl2ZTsNCisJdTMyCQlhY3RpdmVfcXVldWVzOw0KIH07DQogDQogZW51
bSB7DQpAQCAtMzgzLDYgKzM4OSw4IEBAIHN0YXRpYyBjb25zdCB1MzIgaW52X3NxcnRfY2FjaGVb
UkVDX0lOVl9TUVJUX0NBQ0hFXSA9IHsNCiAJMTIzOTg1MDI2MywgMTE5MTIwOTYwMSwgMTE0Nzg3
ODI5NCwgMTEwODk1NTc4OA0KIH07DQogDQorc3RhdGljIHZvaWQgY2FrZV9zZXRfcmF0ZShzdHJ1
Y3QgY2FrZV90aW5fZGF0YSAqYiwgdTY0IHJhdGUsIHUzMiBtdHUsDQorCQkJICB1NjQgdGFyZ2V0
X25zLCB1NjQgcnR0X2VzdF9ucyk7DQogLyogaHR0cDovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9N
ZXRob2RzX29mX2NvbXB1dGluZ19zcXVhcmVfcm9vdHMNCiAgKiBuZXdfaW52c3FydCA9IChpbnZz
cXJ0IC8gMikgKiAoMyAtIGNvdW50ICogaW52c3FydF4yKQ0KICAqDQpAQCAtMTk5Nyw2ICsyMDA1
LDQwIEBAIHN0YXRpYyBzdHJ1Y3Qgc2tfYnVmZiAqY2FrZV9kZXF1ZXVlKHN0cnVjdCBRZGlzYyAq
c2NoKQ0KIAl1NjQgZGVsYXk7DQogCXUzMiBsZW47DQogDQorCWlmIChxLT5jb25maWctPmlzX3No
YXJlZCAmJg0KKwkgICAgbm93IC0gcS0+bGFzdF9jaGVja2VkX2FjdGl2ZSA+PSBxLT5jb25maWct
PnN5bmNfdGltZSkgeyAvL2NoZWNrIGV2ZXJ5IDFtcyBpcyB0aGUgZGVmYXVsdA0KKwkJc3RydWN0
IG5ldF9kZXZpY2UgKmRldiA9IHFkaXNjX2RldihzY2gpOw0KKwkJc3RydWN0IGNha2Vfc2NoZWRf
ZGF0YSAqb3RoZXJfcHJpdjsNCisJCXU2NCBuZXdfcmF0ZSA9IHEtPmNvbmZpZy0+cmF0ZV9icHM7
DQorCQl1NjQgb3RoZXJfcWxlbiwgb3RoZXJfbGFzdF9hY3RpdmU7DQorCQlzdHJ1Y3QgUWRpc2Mg
Km90aGVyX3NjaDsNCisJCXUzMiBudW1fYWN0aXZlX3FzID0gMTsNCisJCXVuc2lnbmVkIGludCBu
dHg7DQorDQorCQlmb3IgKG50eCA9IDA7IG50eCA8IGRldi0+bnVtX3R4X3F1ZXVlczsgbnR4Kysp
IHsNCisJCQlvdGhlcl9zY2ggPSBydG5sX2RlcmVmZXJlbmNlKG5ldGRldl9nZXRfdHhfcXVldWUo
ZGV2LCBudHgpLT5xZGlzY19zbGVlcGluZyk7DQorCQkJb3RoZXJfcHJpdiA9IHFkaXNjX3ByaXYo
b3RoZXJfc2NoKTsNCisNCisJCQlpZiAob3RoZXJfcHJpdiA9PSBxKQ0KKwkJCQljb250aW51ZTsN
CisNCisJCQlvdGhlcl9xbGVuID0gUkVBRF9PTkNFKG90aGVyX3NjaC0+cS5xbGVuKTsNCisJCQlv
dGhlcl9sYXN0X2FjdGl2ZSA9IFJFQURfT05DRShvdGhlcl9wcml2LT5sYXN0X2FjdGl2ZSk7DQor
DQorCQkJaWYgKG90aGVyX3FsZW4gfHwgb3RoZXJfbGFzdF9hY3RpdmUgPiBxLT5sYXN0X2NoZWNr
ZWRfYWN0aXZlKQ0KKwkJCQludW1fYWN0aXZlX3FzKys7DQorCQl9DQorDQorCQlpZiAobnVtX2Fj
dGl2ZV9xcyA+IDEpDQorCQkJbmV3X3JhdGUgPSBkaXY2NF91NjQocS0+Y29uZmlnLT5yYXRlX2Jw
cywgbnVtX2FjdGl2ZV9xcyk7DQorDQorCQkvKiBtdHUgPSAwIGlzIHVzZWQgdG8gb25seSB1cGRh
dGUgdGhlIHJhdGUgYW5kIG5vdCBtZXNzIHdpdGggY29iYWx0IHBhcmFtcyAqLw0KKwkJY2FrZV9z
ZXRfcmF0ZShiLCBuZXdfcmF0ZSwgMCwgMCwgMCk7DQorCQlxLT5sYXN0X2NoZWNrZWRfYWN0aXZl
ID0gbm93Ow0KKwkJcS0+cmF0ZV9ucyA9IGItPnRpbl9yYXRlX25zOw0KKwkJcS0+cmF0ZV9zaGZ0
ID0gYi0+dGluX3JhdGVfc2hmdDsNCisJfQ0KKw0KIGJlZ2luOg0KIAlpZiAoIXNjaC0+cS5xbGVu
KQ0KIAkJcmV0dXJuIE5VTEw7DQpAQCAtMjE5Niw2ICsyMjM4LDcgQEAgc3RhdGljIHN0cnVjdCBz
a19idWZmICpjYWtlX2RlcXVldWUoc3RydWN0IFFkaXNjICpzY2gpDQogDQogCWItPnRpbl9lY25f
bWFyayArPSAhIWZsb3ctPmN2YXJzLmVjbl9tYXJrZWQ7DQogCXFkaXNjX2JzdGF0c191cGRhdGUo
c2NoLCBza2IpOw0KKwlxLT5sYXN0X2FjdGl2ZSA9IG5vdzsNCiANCiAJLyogY29sbGVjdCBkZWxh
eSBzdGF0cyAqLw0KIAlkZWxheSA9IGt0aW1lX3RvX25zKGt0aW1lX3N1Yihub3csIGNvYmFsdF9n
ZXRfZW5xdWV1ZV90aW1lKHNrYikpKTsNCkBAIC0yMjk2LDYgKzIzMzksOSBAQCBzdGF0aWMgdm9p
ZCBjYWtlX3NldF9yYXRlKHN0cnVjdCBjYWtlX3Rpbl9kYXRhICpiLCB1NjQgcmF0ZSwgdTMyIG10
dSwNCiAJYi0+dGluX3JhdGVfbnMgICA9IHJhdGVfbnM7DQogCWItPnRpbl9yYXRlX3NoZnQgPSBy
YXRlX3NoZnQ7DQogDQorCWlmIChtdHUgPT0gMCkNCisJCXJldHVybjsNCisNCiAJYnl0ZV90YXJn
ZXRfbnMgPSAoYnl0ZV90YXJnZXQgKiByYXRlX25zKSA+PiByYXRlX3NoZnQ7DQogDQogCWItPmNw
YXJhbXMudGFyZ2V0ID0gbWF4KChieXRlX3RhcmdldF9ucyAqIDMpIC8gMiwgdGFyZ2V0X25zKTsN
CkBAIC0yNzU4LDYgKzI4MDQsNyBAQCBzdGF0aWMgdm9pZCBjYWtlX2NvbmZpZ19pbml0KHN0cnVj
dCBjYWtlX3NjaGVkX2NvbmZpZyAqcSwgYm9vbCBpc19zaGFyZWQpDQogCQkJICAgICAgICovDQog
CXEtPnJhdGVfZmxhZ3MgfD0gQ0FLRV9GTEFHX1NQTElUX0dTTzsNCiAJcS0+aXNfc2hhcmVkID0g
aXNfc2hhcmVkOw0KKwlxLT5zeW5jX3RpbWUgPSAyMDAgKiBOU0VDX1BFUl9VU0VDOw0KIH0NCiAN
CiBzdGF0aWMgaW50IGNha2VfaW5pdChzdHJ1Y3QgUWRpc2MgKnNjaCwgc3RydWN0IG5sYXR0ciAq
b3B0LA0KQEAgLTI4MzEsNiArMjg3OCw5IEBAIHN0YXRpYyBpbnQgY2FrZV9pbml0KHN0cnVjdCBR
ZGlzYyAqc2NoLCBzdHJ1Y3QgbmxhdHRyICpvcHQsDQogCXFkLT5hdmdfcGVha19iYW5kd2lkdGgg
PSBxLT5yYXRlX2JwczsNCiAJcWQtPm1pbl9uZXRsZW4gPSB+MDsNCiAJcWQtPm1pbl9hZGpsZW4g
PSB+MDsNCisJcWQtPmFjdGl2ZV9xdWV1ZXMgPSAwOw0KKwlxZC0+bGFzdF9jaGVja2VkX2FjdGl2
ZSA9IDA7DQorDQogCXJldHVybiAwOw0KIGVycjoNCiAJa3ZmcmVlKHFkLT5jb25maWcpOw0KQEAg
LTI5NjMsNiArMzAxMyw3IEBAIHN0YXRpYyBpbnQgY2FrZV9kdW1wX3N0YXRzKHN0cnVjdCBRZGlz
YyAqc2NoLCBzdHJ1Y3QgZ25ldF9kdW1wICpkKQ0KIAlQVVRfU1RBVF9VMzIoTUFYX0FESkxFTiwg
cS0+bWF4X2Fkamxlbik7DQogCVBVVF9TVEFUX1UzMihNSU5fTkVUTEVOLCBxLT5taW5fbmV0bGVu
KTsNCiAJUFVUX1NUQVRfVTMyKE1JTl9BREpMRU4sIHEtPm1pbl9hZGpsZW4pOw0KKwlQVVRfU1RB
VF9VMzIoQUNUSVZFX1FVRVVFUywgcS0+YWN0aXZlX3F1ZXVlcyk7DQogDQogI3VuZGVmIFBVVF9T
VEFUX1UzMg0KICN1bmRlZiBQVVRfU1RBVF9VNjQNCg0KLS0gDQoyLjUyLjANCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3Qg
LS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD15CF39DE
	for <lists+cake@lfdr.de>; Mon, 05 Jan 2026 13:51:52 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id D0250B57BCA;
	Mon, 05 Jan 2026 13:51:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1767617504;
	bh=o0UFP7mQbyYDmL9KpEomXJmtXffXpDDcXeOY3qutUU4=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=HuZ50r9efUSqphKe/zZ2DFli/3c0zb9RoeefHu7OlFYNTx+MHkBc0uqu9jIfn/ifF
	 PenTP5rj5++00BpXZOpqEUhKn5+wPiBmId3km1zLpRBrLwDClwXz9N7+3FxjULHPE/
	 BOPIQOZHQr8PDGgnlw/rcSgAKIAOJERf78BaWjDXKNoq6LcS+RWo99HT+hW5N3++gJ
	 JYGjXKyUaMOcWsdkjCmLs+QeOzU1s4XRoiMXN0wqp2i+tgGtrYnzCjvwElIZ0Sy9BX
	 XzISc2kix2DARtPmbEIePqu2hbYUTWSVP6FalqpPQvprmQ2EfsWpzuRHEsXjJvDP8e
	 u4afI9WN5KkSQ==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767617504;
 b=2wJiZ1Obeg/cxQG2XYxbl4HP+OybbQnUQUfsI/A9PbBa9ZZoGePSuqABZA4twbQ2RPFHt
 b5UXTwDgs6ht4VOW5jJ4+quEwRr+u8YRStTZtvxJ7v4dnwe9IG/TbaOuM4p3HxzofglSkai
 QNuW31r1QZuwF+/sM6NRNbF5nIC2+ao=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767617504; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=o0UFP7mQbyYDmL9KpEomXJmtXffXpDDcXeOY3qutUU4=;
 b=5C+g0BfOMlp0h4SAXSVXrdXi5em4cOdP+d1qyYJJPYaaf4tYRSM2cZ1Z3PGb/QgON0pcr
 C3XMr705mbuGZwmW9Ky4hJ/q4VPFlzgI5PelUEMClTXCO4bNHS5W9APsi6zMm7oDoEIuXRX
 +sYl5Nvoh5sNwOILwkRu2mDFQHa6kyc=
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
	by mail.toke.dk (Postfix) with ESMTPS id B90A5B57B1D
	for <cake@lists.bufferbloat.net>; Mon, 05 Jan 2026 13:51:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767617501;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+CWSd+PGM2JdeW7nTcCv/7NGr40swNVwKAd5RTnVFNo=;
	b=EsuTERlC6VHpQe2cDGwdDm5kC158krRboqxqrRCp4/hxEbwPk5RGySgh1SFuaJI+JVwQ4c
	jZU4PiNb1J6t61NvHdlbBk2Nr3F88p+SSUJVvhFjiXy8tMr/tPo2LohrOZtAJ/QCDmwPsq
	DcuufoMlH8NGcdwOTK++2JFf9uClFhw=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-673-cHotvkEVNs27EH9QFzQfAA-1; Mon, 05 Jan 2026 07:51:39 -0500
X-MC-Unique: cHotvkEVNs27EH9QFzQfAA-1
X-Mimecast-MFC-AGG-ID: cHotvkEVNs27EH9QFzQfAA_1767617499
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-b800ee1a176so59997466b.1
        for <cake@lists.bufferbloat.net>;
 Mon, 05 Jan 2026 04:51:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767617499; x=1768222299;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+CWSd+PGM2JdeW7nTcCv/7NGr40swNVwKAd5RTnVFNo=;
        b=kf0T6gU/Sx7Cq2d3vuw+s398R4kjHfFsauyxxlsB7LTffVdNREVUY8eFVlo5CrckXN
         IEDTiQoK4H2xKdujbIU7sVsiwgbgPrKXjhFx8PhaYhMT8q76LSfI/J6LDpoMnw+om2lC
         cDFageCnmlepBLlgpJE21OxQOx26pL28Dme12xWmI5llfNXLJQFv3FO2W3/f2jK/wPEx
         5YPCvCkzn2mp+1zUaRAZEH1ZGO44k2ZVMrYBGakUkwW6otsmdU4BwLBXCacV7T5VlRq/
         cMRuKPF3hK30xrmSX1DPA9PiKhR6lQ7az7QHUWZ10GUQ8woA0s5aqYh7q5gxKxGm1eER
         O+5g==
X-Forwarded-Encrypted: i=1;
 AJvYcCUUHng3dB8+owz5nBovZx9EkMyi+V/+bh89Z4uurxlOYt7zydD5WnwXEJzHpEKNsnWOxB48@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YwMk8tvVe0baRPBT3l7lO+TPoUik8NKjgvGQDj1a+NZqAGob9XG
	RgFWwZFGNqk2h6mVbUvYSsTc8+9ToJh3cxUj7hwm4vEzWUqAvMkrzrTAEfeaJmcivR4i1jj1tP9
	S3Z1vtDMS3h7Zviu5pAlOa8S6Xy4vH6AN+zxVsoaG6daKvmid4Vth7HuLBv3k484=
X-Gm-Gg: AY/fxX46Zp/lpgTNlBlClVoVReVC7jUp5a4ld+8kZPyruMY2K2KlBMdvt5YHGIxGwGt
	LcXWOorGze9Lf4RA24RHKtjyHgmxBbwQuE4jKMFzANygOT4TuwOyvtbcqpv6Cmum15YUZgwtQaN
	k4IJBXHEBp0Fl3E43WC2yJEEin9als7lY4TQuWQqTtDpzZNd5In5nuyn792hg+MJweiB6j7XIQT
	x4PIJKrjzjltZuMs5yr3hPj2U0lf2jB6F2YhjsUxkLcgJ0f5anBm7g080wKBonpu+FdtBz2+0pt
	rTS1Ac6YDA6hW5oiCz3ZeSZIurflv8oZ8ty+fXc7dB1A3EejynDHaeCGg8TogZ1vRoDzFFUAR6X
	68xrT6d6QbVPkr5GItUvTkyarFgAm/Hx1ig==
X-Received: by 2002:a17:906:f5a3:b0:b73:1baa:6424 with SMTP id
 a640c23a62f3a-b8037185956mr4932729866b.55.1767617498642;
        Mon, 05 Jan 2026 04:51:38 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IGf5MSyqWYebSOBdkzSInvpzSMW38CQDWWfWlR8y/ptAyEgwCLCWJz2fIMb7oW/M4G+k11p7Q==
X-Received: by 2002:a17:906:f5a3:b0:b73:1baa:6424 with SMTP id
 a640c23a62f3a-b8037185956mr4932726266b.55.1767617498197;
        Mon, 05 Jan 2026 04:51:38 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b8037f0b7bcsm5686072166b.49.2026.01.05.04.51.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 04:51:36 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 5494A407E97; Mon, 05 Jan 2026 13:51:32 +0100 (CET)
Date: Mon, 05 Jan 2026 13:50:30 +0100
MIME-Version: 1.0
Message-Id: <20260105-mq-cake-sub-qdisc-v5-5-8a99b9db05e6@redhat.com>
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
X-Mimecast-MFC-PROC-ID: VmxC3q5s9E9pxkHGPUptowNEpvaaBz97xgkLFudmp8w_1767617499
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: 6P44EPWZAUS7NWVELFTQYCXQ47P7GT23
X-Message-ID-Hash: 6P44EPWZAUS7NWVELFTQYCXQ47P7GT23
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next v5 5/6] net/sched: sch_cake: share shaper state across
 sub-instances of cake_mq
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20260105-mq-cake-sub-qdisc-v5-5-8a99b9db05e6@redhat.com/>
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
Y2FrZS5jDQppbmRleCBmOWRhZmE2ODc5NTAuLmU5YmE3Nzc3ZWMzZSAxMDA2NDQNCi0tLSBhL25l
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

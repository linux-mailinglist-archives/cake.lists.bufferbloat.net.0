Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 735DDD04998
	for <lists+cake@lfdr.de>; Thu, 08 Jan 2026 17:58:15 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id D80CDB8563F;
	Thu, 08 Jan 2026 17:58:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1767891483;
	bh=kNqQkMwVHXkqShFtCP5WjonYkPg2AWsyprozmQUzKa8=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=IS2p12v7JFEmNhZS5zMPfWJDhDx8wpXEtWXCQwPtRtNl9J/Z/sdoOQsFtbr9zxLFB
	 FYvYsQSlqZ6tERHlRE1cD5U9MgqbTxImuAWpAznKqD1oytdVMwxhoxKYf5oXhjFmsT
	 mhgBCzOa9Ox9FjvCVcrmKWSHqNJ3oOybo21Pdz0RY4/BOOdukST1r7iRMl+xlqz+ox
	 uLBHxO5AQIc8nrpdtwY6ejpxlmYGWQt2ZcIwhuOoTKHiQnTN10wVgCk5ijilnY9M8l
	 bc2t45oHP3ez1T0GdWvyxKUd3TnF0DF3egPGG4ihg4Ou81xthnIjqn8ub47ETGZOo4
	 5SBPeurdm5ymg==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1767891483;
 b=YvkeaNzQDJbLwgq0zUKJz0Yaw/AIHnNyxSbG1OX/F3CljaI5SLjSIVJ6ic6SZeurNSzz6
 29dpIuXPE7wkhJfDcztgOQL4zjv2bunBjyhgHGeVx83SWYBL13LMAMSLWF68/v2lSOyXCJX
 Iwqh/ktrCqtTM6cO+clB2qcLe13IB8k=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1767891483; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=kNqQkMwVHXkqShFtCP5WjonYkPg2AWsyprozmQUzKa8=;
 b=8GyZlsvvAv6farrZAh5ehB5CPse8dQO+SXaM4gE7ueUjRtGMPWnxsBm8VDXV4dpoDw7mk
 DgWE0c8FydrxiFBDkLwPfRR6+A7i3z2EQtCz1eWldaJJ4CfsiH+EVtW2Z73iIAGAAZNTofb
 mayPtOEYKT7xq/pVAovaqxCszoz/toM=
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
	by mail.toke.dk (Postfix) with ESMTPS id E1D0CB85592
	for <cake@lists.bufferbloat.net>; Thu, 08 Jan 2026 17:58:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1767891479;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XRjthpsF6K8HFr1yY9/DbqcKJ9s/6Ttv2qe7VrB+bU8=;
	b=UXtKui8I79xnSPLNX12Q9OExLStd+ekP81I+k3xU7wJUZ81KysG4YU+irVnDhR7G0nBlnb
	sOrX2ye/AJEinDuU9Oc8cMqJVYOmH3CizTDzfiMxma7IpuEFqjAN6LZmp0YGj+J0gbTD2F
	Ik8apRBrfDhiMIjdGTcfLIRScFj3mUo=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-684-1SXlFtNlPYuUPClN4MOg5g-1; Thu, 08 Jan 2026 11:57:58 -0500
X-MC-Unique: 1SXlFtNlPYuUPClN4MOg5g-1
X-Mimecast-MFC-AGG-ID: 1SXlFtNlPYuUPClN4MOg5g_1767891478
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-b7d28772a67so307580666b.1
        for <cake@lists.bufferbloat.net>;
 Thu, 08 Jan 2026 08:57:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767891477; x=1768496277;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XRjthpsF6K8HFr1yY9/DbqcKJ9s/6Ttv2qe7VrB+bU8=;
        b=YEE1Lw/OiCkEUq259iOjxcAsOw3J1nc9Dt7ZKUL+bDfI1aZTZ0slCfBwXYX6Q3fDzW
         V+aX8B/qiXJJhhsnRgPE93CoRYUKUqq+b543VhON+FwrO3atRkOLDpfSQsuJhf0fI3n7
         XZuy1MVpk2D7cGib5Ln3ysQugKc/vo+iQBxhP6dAbv5E+AtkHX4xbqGZsivnkflMMGGM
         SVLkHk0LrfTSV+ZJnFbsnuVWraVSZV+Jc1xJ52O8rxXuCl1zQ8SQdNqwdTi72Y9f6/In
         pokiSDdxictE1P11dzi2JyWCumJOkt8wly//Bl/BKjaVdQDzqQOBcsPc058BVEI79Wqk
         U25g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXDFcnAe2CkqjvWc2HVh+vFpdMsu8KExo91cAbdUHT26wcSQ2ADlBWyBmZeUx6o0lDm9pfP@lists.bufferbloat.net
X-Gm-Message-State: AOJu0Yw1c/5Vi3VCNhd2zFJO4qCDH6/AF+T2MClZTO8lVSmlIkDk+4KL
	1iUqYDPQSzyQlFUmAqqGeuLY6qKN7ycqDH8nLQ5TQyzcc9gcfEkQl9qpm9becCdovQ2g9e80rQl
	pJWv0zHjsD0j6CC0n5hZwk49G7FL/VdC1JzMrwkeFzjuIeE02Zm+87eTfKrMOveo=
X-Gm-Gg: AY/fxX5cdcCTKLLukeHbjWq7grCmq4mQf+szAvlHIm9ZwxB1pQOIJjsE/pKIdKaP0wB
	Tn89Q2A9VvvxjAYbxYfWA3jm6mmz8bABl8Q9mnD6iW6xDzjEOlbRpA8ZZCuLv7nTGHJx2urWQYF
	VqNQe9ar9sIgn2J7fwsS4mRJIAI5l6f/DaH1NLEJ5rqMK1vLVyEkAA5TRZHcC/lcfqpzGt5D5Dc
	KhG0FY05lvoJC9UaXFZgun7MRBxJZg8eU7sgmc0HPNv1Wm/R7brvnrQ/QiupE9YWYgBmX/hbudX
	2uGedTWUggu+5F1ck1wm+1OEJuIHvB0mZmuwgXJKt2c0XtH0bw4dzTXOavl0l4SIc/MoFGDyOAh
	fkZIQ1B702EuucEUXCDkpovRG7KlYIMUXBlqi
X-Received: by 2002:a17:907:9704:b0:b6d:7288:973d with SMTP id
 a640c23a62f3a-b844503a6f6mr698489366b.56.1767891477441;
        Thu, 08 Jan 2026 08:57:57 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IE5GdIo7VyCb89V3WIeGbRCSN2hUlRQaLsbWZ5nZ9k1uJoQOjkUeFv7zppZFU+ogbd3x7sHnw==
X-Received: by 2002:a17:907:9704:b0:b6d:7288:973d with SMTP id
 a640c23a62f3a-b844503a6f6mr698485866b.56.1767891476974;
        Thu, 08 Jan 2026 08:57:56 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.borgediget.toke.dk.
 [2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-6507bf6d5d4sm7957275a12.32.2026.01.08.08.57.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 08:57:55 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id D36644083C3; Thu, 08 Jan 2026 17:57:52 +0100 (CET)
Date: Thu, 08 Jan 2026 17:56:07 +0100
MIME-Version: 1.0
Message-Id: <20260108-mq-cake-sub-qdisc-v7-5-4eb645f0419c@redhat.com>
References: <20260108-mq-cake-sub-qdisc-v7-0-4eb645f0419c@redhat.com>
In-Reply-To: <20260108-mq-cake-sub-qdisc-v7-0-4eb645f0419c@redhat.com>
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
X-Mimecast-MFC-PROC-ID: -AYHwrQlv84MX43H34Sh4NOYeokbBNrwE1xbN3dM73A_1767891478
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: SAWTSSHTCMES3BLUT43IMILLABQF5XYD
X-Message-ID-Hash: SAWTSSHTCMES3BLUT43IMILLABQF5XYD
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next v7 5/6] net/sched: sch_cake: share shaper state across
 sub-instances of cake_mq
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20260108-mq-cake-sub-qdisc-v7-5-4eb645f0419c@redhat.com/>
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
MHgxOS9kb2NzL25ldGRldi0weDE5LXBhcGVyMTYtdGFsay1wYXBlci5wZGYNCg0KUmV2aWV3ZWQt
Ynk6IEphbWFsIEhhZGkgU2FsaW0gPGpoc0Btb2phdGF0dS5jb20+DQpTaWduZWQtb2ZmLWJ5OiBK
b25hcyBLw7ZwcGVsZXIgPGoua29lcHBlbGVyQHR1LWJlcmxpbi5kZT4NClNpZ25lZC1vZmYtYnk6
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
Y2FrZS5jDQppbmRleCA0ZGJmZWUzZTYyMDcuLjhkYzE3N2YyODgzMiAxMDA2NDQNCi0tLSBhL25l
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

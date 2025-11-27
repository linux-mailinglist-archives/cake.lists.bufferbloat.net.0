Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9EFC8D8DC
	for <lists+cake@lfdr.de>; Thu, 27 Nov 2025 10:31:14 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 9024C9D3F3C;
	Thu, 27 Nov 2025 10:31:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764235870;
	bh=G4qpsIvpm1BVgosuSKejnwR60wOJq5egBrMiRdLYgMg=;
	h=Date:References:In-Reply-To:To:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=VQ8YW4nHcQOQVfxC8ej9cu6LSn1/zwNHNHzPzHioGyX1PhZxgmsDmGeRV1H847uDF
	 PT4udj+GJKRqFc3Eesse/voollwJAAht5Eq/rPvLAna2NliF0uRvAnixS5xNpMwyUC
	 6DTgJLGKZrT1fZczlMvsjWEcXhmJ/S1xA6eE7cYT8jJNCruQMCyCAZERUN3yvFASQB
	 q6TslWQAx8aH/rWp56rYM2HZyomCrrzrpNf359u6ArLxGVS7qK5t+RT05J4zAOH2hZ
	 DmFbetqdOEIhIrgND8LmojTb/v9WONHMjCTAYR+K032hmq2HjHy2a4cWyumLJwdGTJ
	 HjJoh69CKGbcg==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764235870;
 b=WqofrPMMv1+PawOu4leKTWuinBg25kXMy5hLA0Bio+hPYjVpQi+Tw0sXCYeqN05TD+IRY
 qWxJENNiIhV6dcLGWTfTqaqPlcG9FZxsffApWBexQXtcPZJpQ/WpBAN7DT8crhQbp+y0PsO
 eJHQyu51xEK5Dk/f9YVvHzjmOr07sao=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764235870; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=G4qpsIvpm1BVgosuSKejnwR60wOJq5egBrMiRdLYgMg=;
 b=lITnpSGhvwoxmnHqAv12E3brpQiGDGLEbYgJKIqtn8RoVUdjfR+WYOMqJ7AAdSNHbXMmM
 BmLrPfz71wBfY5ZVMncCLePgXY8JaDxePPrx8aunpNmicnhnl67nXJI6r1o/wDOlTor7Lq+
 bOTqU2tg0CLFm5YdIJiQpCqk5GdXfJc=
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
	by mail.toke.dk (Postfix) with ESMTPS id E30309D3EA9
	for <cake@lists.bufferbloat.net>; Thu, 27 Nov 2025 10:31:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764235866;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7YeR4pHyn8JRPtsUsQEB6Db0GcddVy+xH6dFMR4x25A=;
	b=gGbzacs0beHVzkgx03w7MNUVA/QVr0OjTDhEwmXpVsCtJ5fzF6N4/DVhvLC0HuhgFuaSir
	BIbeu08lmkFebKSdkuuWVFk3rD/OhBG60wKk+LPjBNvck7NuwOAelh7q0Ydoklq605ENeu
	6WY3T7eZSgxx9yA3uH3tfokUMLLVW7s=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-213-AvLoBULSNXqeUbgqHUtbMg-1; Thu, 27 Nov 2025 04:31:04 -0500
X-MC-Unique: AvLoBULSNXqeUbgqHUtbMg-1
X-Mimecast-MFC-AGG-ID: AvLoBULSNXqeUbgqHUtbMg_1764235863
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-b767784598dso45694366b.3
        for <cake@lists.bufferbloat.net>;
 Thu, 27 Nov 2025 01:31:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764235863; x=1764840663;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7YeR4pHyn8JRPtsUsQEB6Db0GcddVy+xH6dFMR4x25A=;
        b=pz8FoJPNhH5bjnlyn/snO7V237WZq9dr3ryta5UUV4xYcDTowdb9JNsrhbsHShE+n7
         BK+7nOdAn1dvLxZ7Z9QUy1n2e1Nw1I+T0Zc6z/3fo6uOatqxOmxoRtPgCbOOUUqlyElQ
         1gYtgCv5pL0Sbpt1WvPtYHU8BOifxaRgd7pHxgTW1QUd1HdlXEcCZQDr+gk/c/jrE382
         bI/3yCFPxgyC6kwr9xMYy54sIICfTwlU0cA+zj2xDpUUidACGLPCFAFU+mpdci3oC6wF
         pK/NWs5sLLXHSr+B3wKFDISTr1+xpLwpP8OT5CLsSsS77XA36SRiM/Xgn4RMT8mPIDCt
         GGaw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUPiM5m00wcDfmyaGTK4ov99pUmwQeaO3+f5Vtdl+B0OyA05/LyX7KK7fRIsJxyMlbWwdJO@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxB2E1mP3RnzZsRv9kPaxiSwPLFrnOOdEDtCFgwsMeNP3C9NDUy
	rhaH/FafvlFIXtWjJhZ9Cm7w0wfoxQYxYB6VHhwRiwTogH0JKRlBSR4iXuqDEuqB/ci/u1udjKP
	AT3GTpy8HArHKzXcj24+unMnavimUO9t830y9j8Pd8gfcL8a9uCY2qeNhIXP5nGY=
X-Gm-Gg: ASbGncsujWkUJiTIFvPRLD+i82f03keX88IKmxR5kBUKY8loNjOpDFwnYMqW4Oyo8z4
	R1VgACFTZfRnY01Nc79Z84GAcN57zW6kzPSzWpjgWjntwySApXLJKrTSzwj/dpg51S//UsXS6Qd
	FEaMvjrqqChxiaFH4BVNSpD+At3Md9As9nOIDWL2uoRjyu7b7vNMnHYx2RP0uLhxzxD0ZVOJT8V
	XGQAfXKD39R7cRX3zTGBk39ziGO3uBm6nm6nPaJNmMEHJqEtuMEHlWlO35K5ZdqxxgJLY8Dqxx3
	CCHiF3Rpjx+iFvbMEfGiNEoDtFOL1xr49MDToYllKyMGnsfaMb0Q6EK0ghL9gQnMWBM2tC3U7iC
	lk2gwp8ro8R9Lcc1xIGo3fxAc+tUAsWgYnZ7e
X-Received: by 2002:a17:906:c34b:b0:b73:6d56:f3ff with SMTP id
 a640c23a62f3a-b76715abd41mr1794067466b.20.1764235862801;
        Thu, 27 Nov 2025 01:31:02 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IEWhrSr19ITY09f0NCqAie9Y7DS3c2o5V/jz2EFQtdt3RR3r6NMJx6MVRVn3Ca0dG4YnAR8pw==
X-Received: by 2002:a17:906:c34b:b0:b73:6d56:f3ff with SMTP id
 a640c23a62f3a-b76715abd41mr1794064766b.20.1764235862284;
        Thu, 27 Nov 2025 01:31:02 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.borgediget.toke.dk.
 [2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b76f51c6c12sm114939766b.29.2025.11.27.01.30.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 01:30:58 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 4D02B395707; Thu, 27 Nov 2025 10:30:57 +0100 (CET)
Date: Thu, 27 Nov 2025 10:30:54 +0100
MIME-Version: 1.0
Message-Id: <20251127-mq-cake-sub-qdisc-v2-4-24d9ead047b9@redhat.com>
References: <20251127-mq-cake-sub-qdisc-v2-0-24d9ead047b9@redhat.com>
In-Reply-To: <20251127-mq-cake-sub-qdisc-v2-0-24d9ead047b9@redhat.com>
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
X-Mimecast-MFC-PROC-ID: 76_yc9e2LWXN7IhF5uAcaeNpauhVB25m6aFSU_jL1Iw_1764235863
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Message-ID-Hash: IT5NUE2P2NFAFCQ2NVYUMYNJHA4EN64W
X-Message-ID-Hash: IT5NUE2P2NFAFCQ2NVYUMYNJHA4EN64W
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH net-next v2 4/4] net/sched: sch_cake: share shaper state across
 sub-instances of cake_mq
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251127-mq-cake-sub-qdisc-v2-4-24d9ead047b9@redhat.com/>
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
Y2FrZS5jDQppbmRleCAwNjZhYTAzZjNmYTUuLjUyNjRkN2EzNjZhNyAxMDA2NDQNCi0tLSBhL25l
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
LTI5NjQsNiArMzAxNCw3IEBAIHN0YXRpYyBpbnQgY2FrZV9kdW1wX3N0YXRzKHN0cnVjdCBRZGlz
YyAqc2NoLCBzdHJ1Y3QgZ25ldF9kdW1wICpkKQ0KIAlQVVRfU1RBVF9VMzIoTUFYX0FESkxFTiwg
cS0+bWF4X2Fkamxlbik7DQogCVBVVF9TVEFUX1UzMihNSU5fTkVUTEVOLCBxLT5taW5fbmV0bGVu
KTsNCiAJUFVUX1NUQVRfVTMyKE1JTl9BREpMRU4sIHEtPm1pbl9hZGpsZW4pOw0KKwlQVVRfU1RB
VF9VMzIoQUNUSVZFX1FVRVVFUywgcS0+YWN0aXZlX3F1ZXVlcyk7DQogDQogI3VuZGVmIFBVVF9T
VEFUX1UzMg0KICN1bmRlZiBQVVRfU1RBVF9VNjQNCg0KLS0gDQoyLjUyLjANCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3Qg
LS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 2223CB99CD5
	for <lists+cake@lfdr.de>; Wed, 24 Sep 2025 14:18:43 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 3428E6E840F;
	Wed, 24 Sep 2025 14:18:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1758716322;
	bh=E30q4BcvTgsiLrflqCDv/AccwaPNCeW7g7c/qetbhJA=;
	h=To:Cc:Date:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=ixWcdDqOhxXRqlVSQouIfbq9sXt3CajQaTo/8IphttLCGfKoJdkwLIoUrJWVAbuKH
	 +Xkf3HdOIggBGNYkEBSyxX7JpqtSpKwlFGLW1mDu/P8yh5aIA4qvcZBH3EhOyNOfom
	 VoQ3EW7f/fbD/5fifYrjOwXNRb/mH5Zg6tyDxDyWF4mfkFG5HCOFummKof220IsXUo
	 g+04+sVlWduPJaALJ/fWcJiZ4swBSQbHJ430hclET+PtkrRO6JSZg/nRqsRfaCnNwK
	 mzJwGh0fxizO43Gx2ggJ6TddBW304XDC2nC71mDPXSs7PRX2XkY/dBChPrtmNwuWIv
	 f2nXSXv5elMLA==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1758716322;
 b=3xRITFjQ0UFwb63KU0g+Du6D2dzGCH044+6AMr98cZigaj0lE7K0U0Ijy4Ph8OIehQeAF
 ERBC8iRlycKVylGO4yLh6JntPQe35lCca+PE1Kw0L3ufGPEVORC8YpQ1jNDtpKeFtWHNMVr
 Nb2HIsYpZQXo58xUqE+GbcbnXDejm5c=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1758716322; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=E30q4BcvTgsiLrflqCDv/AccwaPNCeW7g7c/qetbhJA=;
 b=i6VVNt1759CiK8CA2uzBTJlLn2DpRCLJIlAGhP/DI9CZJVFwRSyw6wIlruga2SorxV6nd
 CwZwWv4BWwmfU62rlSECisjBm1Ck7/UFwRbO1zIuHbom2366v4bVs7fSM5zhmLVnhfwckRI
 pokw6PEf9tNrpAv99O2h9ydXLjGtdT4=
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
	by mail.toke.dk (Postfix) with ESMTPS id 4CCF76E83FF
	for <cake@lists.bufferbloat.net>; Wed, 24 Sep 2025 14:18:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1758716318;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+E/emif6LBt/7nt68sW5WJ36jrr3DK5g4rTA83tY2Uk=;
	b=C57G4g/KElWsPKt/jLdBHDzTty48Wlkx5+1bVtzUpYJZTLwI/qiwixZ9O61iuqMiov3j/P
	6H1bXJ6w/aCULSJNHXmd+RospFbaQODM0l4YMY3RNiCOo3R+BmlBRErJGiqQpgoV0+laCH
	Uv0qzePNjbZthvIIJ0QgPVifUtf1DwA=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-466-2vgajr11MMu1XkCwEFVMCg-1; Wed, 24 Sep 2025 08:18:37 -0400
X-MC-Unique: 2vgajr11MMu1XkCwEFVMCg-1
X-Mimecast-MFC-AGG-ID: 2vgajr11MMu1XkCwEFVMCg_1758716316
Received: by mail-ed1-f70.google.com with SMTP id
 4fb4d7f45d1cf-633ba385714so3489072a12.3
        for <cake@lists.bufferbloat.net>;
 Wed, 24 Sep 2025 05:18:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758716316; x=1759321116;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+E/emif6LBt/7nt68sW5WJ36jrr3DK5g4rTA83tY2Uk=;
        b=mc06TEg8u17WvScffa9mkxPnCN+kQOPXgflwB5DzvEL0zxfCND3IEJ1CUbjgSERvdj
         lAZMaHG/TaUijLfccGqqT1EN3AepnWM1qw45ZQUnczO98l60cZMT/q+D+STN5Ft+Ne07
         tyFhxSMYyZGxts/K4Wg1UWwyf8fF21JLp2K1sieREfR5kBjHQMY4N3fmMTWrNoWcJ2GS
         eqnMWoc1l7toeQKKVim4motlFVRnDA6ou9eQ0fuU4xC6KC3tJnkd1/OohZxN18FU2xl6
         hNGx0uAqlwH8zNQ7bXU+BbH8yiAL/ClnDLaB9aU2+3p+3NUMpGUk53GzTbeG7CMVKaXU
         hrwQ==
X-Gm-Message-State: AOJu0YyQpvjQuUR4WGxCZDxlRnB+cAdCFesoL2fFz6b/EIdpImtByMfp
	tNXCBzKcwlIRN1x09OKUKNnjVcpGR2MOmbjCnb6/SizgSfPtakQpzEYrQZjylsERAyklbBlOYji
	+wgUMOjzvOB7eNNrCG6e8XhWLS3oFhWnoaZgaptgOVScbo4iGVXnLT93PfToqeFo=
X-Gm-Gg: ASbGnct+yc76QF1z9AxWsvQ3lH7wa+/mxxyTr8zA7+biyomJsjRtpPjLp4KqwcUYuCA
	3U5mMMvX85bH7vOavGOoAUfeJuJK1PNJKN0fFVP0rs0qGU1Il30nxz7wOaDnSkuRdiXRY7vZh8F
	qix6vZttIAVDGeqYFkr/gi9Oy3wy/+G6Y68cxRU2sv7WyehaCZhqgAzQgL9X2lvemFcGrlqBEE1
	S5rN/3wlmHCcjkUkK4R7x3mW8hEnj8GyYERnTMmcp3QQAMW264RWOmyV7gTjLRA7vLVqTL4lCP+
	s36YNp3UbYLN+n6nY3l+IOZKf2zhYY3qR33lOfey3mjUllqqX4u38WwDVl4MkzcNGtU=
X-Received: by 2002:a05:6402:358a:b0:633:deec:8b57 with SMTP id
 4fb4d7f45d1cf-634677be071mr5879413a12.16.1758716315960;
        Wed, 24 Sep 2025 05:18:35 -0700 (PDT)
X-Google-Smtp-Source: 
 AGHT+IG9E5NPPn5EyU+BGrVw4iPAGkdvSO24PBm+IoydDS+ahtddb431NOHsnjoUrbXa+52CMhmaeA==
X-Received: by 2002:a05:6402:358a:b0:633:deec:8b57 with SMTP id
 4fb4d7f45d1cf-634677be071mr5879385a12.16.1758716315494;
        Wed, 24 Sep 2025 05:18:35 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk (alrua-x1.borgediget.toke.dk.
 [2a0c:4d80:42:443::2])
        by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-62fadb1ee79sm12367114a12.33.2025.09.24.05.18.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 05:18:35 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 16535276E30; Wed, 24 Sep 2025 14:18:34 +0200 (CEST)
To: David Ahern <dsahern@gmail.com>,
	Stephen Hemminger <stephen@networkplumber.org>
Cc: cake@lists.bufferbloat.net,
	netdev@vger.kernel.org,
	=?UTF-8?q?Jonas=20K=C3=B6ppeler?= <j.koeppeler@tu-berlin.de>
Date: Wed, 24 Sep 2025 14:18:20 +0200
Message-ID: <20250924121820.186373-1-toke@redhat.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250924-mq-cake-sub-qdisc-v1-0-43a060d1112a@redhat.com>
References: <20250924-mq-cake-sub-qdisc-v1-0-43a060d1112a@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: _-7LNTmm1O2w47uz7shXydiKifqzDyD_-ufTz3LlOlQ_1758716316
X-Mimecast-Originator: redhat.com
Message-ID-Hash: NMBHILTMT63G5E5LC7HQYHKWIG2IIVVI
X-Message-ID-Hash: NMBHILTMT63G5E5LC7HQYHKWIG2IIVVI
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH RFC net-next] tc: cake: add cake_mq support
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20250924121820.186373-1-toke@redhat.com/>
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

RnJvbTogSm9uYXMgS8O2cHBlbGVyIDxqLmtvZXBwZWxlckB0dS1iZXJsaW4uZGU+DQoNClRoaXMg
YWRkcyBzdXBwb3J0IGZvciB0aGUgY2FrZV9tcSB2YXJpYW50IG9mIHNjaF9jYWtlIHRvIHRjLg0K
DQpTaWduZWQtb2ZmLWJ5OiBKb25hcyBLw7ZwcGVsZXIgPGoua29lcHBlbGVyQHR1LWJlcmxpbi5k
ZT4NCi0tLQ0KIGluY2x1ZGUvdWFwaS9saW51eC9wa3Rfc2NoZWQuaCB8ICAyICsrDQogdGMvcV9j
YWtlLmMgICAgICAgICAgICAgICAgICAgIHwgMzcgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrLQ0KIDIgZmlsZXMgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQ0KDQpkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4L3BrdF9zY2hlZC5oIGIvaW5jbHVk
ZS91YXBpL2xpbnV4L3BrdF9zY2hlZC5oDQppbmRleCAxNWQxYTM3YWM2ZDguLmY4NWE1MzE2ZjM3
MiAxMDA2NDQNCi0tLSBhL2luY2x1ZGUvdWFwaS9saW51eC9wa3Rfc2NoZWQuaA0KKysrIGIvaW5j
bHVkZS91YXBpL2xpbnV4L3BrdF9zY2hlZC5oDQpAQCAtMTAxNCw2ICsxMDE0LDcgQEAgZW51bSB7
DQogCVRDQV9DQUtFX0FDS19GSUxURVIsDQogCVRDQV9DQUtFX1NQTElUX0dTTywNCiAJVENBX0NB
S0VfRldNQVJLLA0KKwlUQ0FfQ0FLRV9TWU5DX1RJTUUsDQogCV9fVENBX0NBS0VfTUFYDQogfTsN
CiAjZGVmaW5lIFRDQV9DQUtFX01BWAkoX19UQ0FfQ0FLRV9NQVggLSAxKQ0KQEAgLTEwMzYsNiAr
MTAzNyw3IEBAIGVudW0gew0KIAlUQ0FfQ0FLRV9TVEFUU19EUk9QX05FWFRfVVMsDQogCVRDQV9D
QUtFX1NUQVRTX1BfRFJPUCwNCiAJVENBX0NBS0VfU1RBVFNfQkxVRV9USU1FUl9VUywNCisJVENB
X0NBS0VfU1RBVFNfQUNUSVZFX1FVRVVFUywNCiAJX19UQ0FfQ0FLRV9TVEFUU19NQVgNCiB9Ow0K
ICNkZWZpbmUgVENBX0NBS0VfU1RBVFNfTUFYIChfX1RDQV9DQUtFX1NUQVRTX01BWCAtIDEpDQpk
aWZmIC0tZ2l0IGEvdGMvcV9jYWtlLmMgYi90Yy9xX2Nha2UuYw0KaW5kZXggZTJiOGRlNTVlNWEy
Li42MDY4OGIzNDc4ZWMgMTAwNjQ0DQotLS0gYS90Yy9xX2Nha2UuYw0KKysrIGIvdGMvcV9jYWtl
LmMNCkBAIC04Miw2ICs4Miw3IEBAIHN0YXRpYyB2b2lkIGV4cGxhaW4odm9pZCkNCiAJCSIgICAg
ICAgICAgICAgICAgWyBzcGxpdC1nc28qIHwgbm8tc3BsaXQtZ3NvIF1cbiINCiAJCSIgICAgICAg
ICAgICAgICAgWyBhY2stZmlsdGVyIHwgYWNrLWZpbHRlci1hZ2dyZXNzaXZlIHwgbm8tYWNrLWZp
bHRlciogXVxuIg0KIAkJIiAgICAgICAgICAgICAgICBbIG1lbWxpbWl0IExJTUlUIF1cbiINCisJ
CSIgICAgICAgICAgICAgICAgWyBzeW5jX3RpbWUgVElNRSBdXG4iDQogCQkiICAgICAgICAgICAg
ICAgIFsgZndtYXJrIE1BU0sgXVxuIg0KIAkJIiAgICAgICAgICAgICAgICBbIHB0bSB8IGF0bSB8
IG5vYXRtKiBdIFsgb3ZlcmhlYWQgTiB8IGNvbnNlcnZhdGl2ZSB8IHJhdyogXVxuIg0KIAkJIiAg
ICAgICAgICAgICAgICBbIG1wdSBOIF0gWyBpbmdyZXNzIHwgZWdyZXNzKiBdXG4iDQpAQCAtOTMs
NiArOTQsOCBAQCBzdGF0aWMgaW50IGNha2VfcGFyc2Vfb3B0KGNvbnN0IHN0cnVjdCBxZGlzY191
dGlsICpxdSwgaW50IGFyZ2MsIGNoYXIgKiphcmd2LA0KIHsNCiAJc3RydWN0IGNha2VfcHJlc2V0
ICpwcmVzZXQsICpwcmVzZXRfc2V0ID0gTlVMTDsNCiAJYm9vbCBvdmVyaGVhZF9vdmVycmlkZSA9
IGZhbHNlOw0KKwl1bnNpZ25lZCBpbnQgc3luY190aW1lID0gMDsNCisJYm9vbCBzZXRfc3luY190
aW1lID0gZmFsc2U7DQogCWJvb2wgb3ZlcmhlYWRfc2V0ID0gZmFsc2U7DQogCXVuc2lnbmVkIGlu
dCBpbnRlcnZhbCA9IDA7DQogCWludCBkaWZmc2VydiA9IC0xOw0KQEAgLTM0MCw2ICszNDMsMTMg
QEAgc3RhdGljIGludCBjYWtlX3BhcnNlX29wdChjb25zdCBzdHJ1Y3QgcWRpc2NfdXRpbCAqcXUs
IGludCBhcmdjLCBjaGFyICoqYXJndiwNCiAJCQkJCSJJbGxlZ2FsIHZhbHVlIGZvciBcImZ3bWFy
a1wiOiBcIiVzXCJcbiIsICphcmd2KTsNCiAJCQkJcmV0dXJuIC0xOw0KIAkJCX0NCisJCX0gZWxz
ZSBpZiAoc3RyY21wKCphcmd2LCAic3luY190aW1lIikgPT0gMCkgew0KKwkJCU5FWFRfQVJHKCk7
DQorCQkJaWYgKGdldF90aW1lKCZzeW5jX3RpbWUsICphcmd2KSkgew0KKwkJCQlmcHJpbnRmKHN0
ZGVyciwgIklsbGVnYWwgc3luYyB0aW1lXG4iKTsNCisJCQkJcmV0dXJuIC0xOw0KKwkJCX0NCisJ
CQlzZXRfc3luY190aW1lID0gdHJ1ZTsNCiAJCX0gZWxzZSBpZiAoc3RyY21wKCphcmd2LCAiaGVs
cCIpID09IDApIHsNCiAJCQlleHBsYWluKCk7DQogCQkJcmV0dXJuIC0xOw0KQEAgLTM5OSw2ICs0
MDksOCBAQCBzdGF0aWMgaW50IGNha2VfcGFyc2Vfb3B0KGNvbnN0IHN0cnVjdCBxZGlzY191dGls
ICpxdSwgaW50IGFyZ2MsIGNoYXIgKiphcmd2LA0KIAlpZiAoYWNrX2ZpbHRlciAhPSAtMSkNCiAJ
CWFkZGF0dHJfbChuLCAxMDI0LCBUQ0FfQ0FLRV9BQ0tfRklMVEVSLCAmYWNrX2ZpbHRlciwNCiAJ
CQkgIHNpemVvZihhY2tfZmlsdGVyKSk7DQorCWlmKHNldF9zeW5jX3RpbWUpDQorCQlhZGRhdHRy
X2wobiwgMTAyNCwgVENBX0NBS0VfU1lOQ19USU1FLCAmc3luY190aW1lLCBzaXplb2Yoc3luY190
aW1lKSk7DQogDQogCXRhaWwtPnJ0YV9sZW4gPSAodm9pZCAqKSBOTE1TR19UQUlMKG4pIC0gKHZv
aWQgKikgdGFpbDsNCiAJcmV0dXJuIDA7DQpAQCAtNDIxLDYgKzQzMyw3IEBAIHN0YXRpYyBpbnQg
Y2FrZV9wcmludF9vcHQoY29uc3Qgc3RydWN0IHFkaXNjX3V0aWwgKnF1LCBGSUxFICpmLCBzdHJ1
Y3QgcnRhdHRyICpvDQogCXVuc2lnbmVkIGludCBpbnRlcnZhbCA9IDA7DQogCXVuc2lnbmVkIGlu
dCBtZW1saW1pdCA9IDA7DQogCXVuc2lnbmVkIGludCBmd21hcmsgPSAwOw0KKwl1bnNpZ25lZCBp
bnQgc3luY190aW1lID0gMDsNCiAJX191NjQgYmFuZHdpZHRoID0gMDsNCiAJaW50IGFja19maWx0
ZXIgPSAwOw0KIAlpbnQgc3BsaXRfZ3NvID0gMDsNCkBAIC01MjUsNyArNTM4LDEwIEBAIHN0YXRp
YyBpbnQgY2FrZV9wcmludF9vcHQoY29uc3Qgc3RydWN0IHFkaXNjX3V0aWwgKnF1LCBGSUxFICpm
LCBzdHJ1Y3QgcnRhdHRyICpvDQogCSAgICBSVEFfUEFZTE9BRCh0YltUQ0FfQ0FLRV9GV01BUktd
KSA+PSBzaXplb2YoX191MzIpKSB7DQogCQlmd21hcmsgPSBydGFfZ2V0YXR0cl91MzIodGJbVENB
X0NBS0VfRldNQVJLXSk7DQogCX0NCi0NCisJaWYgKHRiW1RDQV9DQUtFX1NZTkNfVElNRV0gJiYN
CisJICAgIFJUQV9QQVlMT0FEKHRiW1RDQV9DQUtFX1NZTkNfVElNRV0pID49IHNpemVvZihfX3Uz
MikpIHsNCisJCXN5bmNfdGltZSA9IHJ0YV9nZXRhdHRyX3UzMih0YltUQ0FfQ0FLRV9TWU5DX1RJ
TUVdKTsNCisJfQ0KIAlpZiAod2FzaCkNCiAJCXByaW50X3N0cmluZyhQUklOVF9GUCwgTlVMTCwg
Indhc2ggIiwgTlVMTCk7DQogCWVsc2UNCkBAIC01NzQsNiArNTkwLDEzIEBAIHN0YXRpYyBpbnQg
Y2FrZV9wcmludF9vcHQoY29uc3Qgc3RydWN0IHFkaXNjX3V0aWwgKnF1LCBGSUxFICpmLCBzdHJ1
Y3QgcnRhdHRyICpvDQogCWlmIChtZW1saW1pdCkNCiAJCXByaW50X3NpemUoUFJJTlRfQU5ZLCAi
bWVtbGltaXQiLCAibWVtbGltaXQgJXMgIiwgbWVtbGltaXQpOw0KIA0KKwlpZiAoc3luY190aW1l
KSB7DQorCQlwcmludF91aW50KFBSSU5UX0pTT04sICJzeW5jX3RpbWUiLCBOVUxMLA0KKwkJCSAg
IHN5bmNfdGltZSk7DQorCQlwcmludF9zdHJpbmcoUFJJTlRfRlAsIE5VTEwsICJzeW5jX3RpbWUg
JXMiLA0KKwkJCSAgICAgc3ByaW50X3RpbWUoc3luY190aW1lLCBiMikpOw0KKwl9DQorDQogCWlm
IChmd21hcmspDQogCQlwcmludF91aW50KFBSSU5UX0ZQLCBOVUxMLCAiZndtYXJrIDB4JXggIiwg
ZndtYXJrKTsNCiAJcHJpbnRfMHhoZXgoUFJJTlRfSlNPTiwgImZ3bWFyayIsIE5VTEwsIGZ3bWFy
ayk7DQpAQCAtNjY3LDYgKzY5MCwxMSBAQCBzdGF0aWMgaW50IGNha2VfcHJpbnRfeHN0YXRzKGNv
bnN0IHN0cnVjdCBxZGlzY191dGlsICpxdSwgRklMRSAqZiwNCiAJCQkgICAiIC8lOHVcbiIsIEdF
VF9TVEFUX1UzMihNQVhfQURKTEVOKSk7DQogCX0NCiANCisJaWYgKHN0W1RDQV9DQUtFX1NUQVRT
X0FDVElWRV9RVUVVRVNdKQ0KKwkJcHJpbnRfdWludChQUklOVF9BTlksICJhY3RpdmVfcXVldWVz
IiwNCisJCQkgICAiIGFjdGl2ZSBxdWV1ZXM6ICUyNXVcbiIsDQorCQkJICAgR0VUX1NUQVRfVTMy
KEFDVElWRV9RVUVVRVMpKTsNCisNCiAJaWYgKHN0W1RDQV9DQUtFX1NUQVRTX0FWR19ORVRPRkZd
KQ0KIAkJcHJpbnRfdWludChQUklOVF9BTlksICJhdmdfaGRyX29mZnNldCIsDQogCQkJICAgIiBh
dmVyYWdlIG5ldHdvcmsgaGRyIG9mZnNldDogJTEydVxuXG4iLA0KQEAgLTgyNywzICs4NTUsMTAg
QEAgc3RydWN0IHFkaXNjX3V0aWwgY2FrZV9xZGlzY191dGlsID0gew0KIAkucHJpbnRfcW9wdAk9
IGNha2VfcHJpbnRfb3B0LA0KIAkucHJpbnRfeHN0YXRzCT0gY2FrZV9wcmludF94c3RhdHMsDQog
fTsNCisNCitzdHJ1Y3QgcWRpc2NfdXRpbCBjYWtlX21xX3FkaXNjX3V0aWwgPSB7DQorCS5pZAkJ
PSAiY2FrZV9tcSIsDQorCS5wYXJzZV9xb3B0CT0gY2FrZV9wYXJzZV9vcHQsDQorCS5wcmludF9x
b3B0CT0gY2FrZV9wcmludF9vcHQsDQorCS5wcmludF94c3RhdHMJPSBjYWtlX3ByaW50X3hzdGF0
cywNCit9Ow0KLS0gDQoyLjUxLjANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldAo=

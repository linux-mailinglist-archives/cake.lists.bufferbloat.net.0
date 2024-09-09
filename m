Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B11971319
	for <lists+cake@lfdr.de>; Mon,  9 Sep 2024 11:16:39 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DC9693CB42;
	Mon,  9 Sep 2024 05:16:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1725873397;
	bh=427p2WdBLvgPW38yAJhnhqHZW6XvucgXyG6khoJn+II=;
	h=To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:Cc:From;
	b=Uj1eMn1M/8SPLGMUnloDDDrFtUsvxbVqOypR/TwI7rzD/AtFwEtO2R9hoqMUCaGXy
	 LjjDF0xyaO3XSWVDFVCn7aUk2KBEWJUi8yKZgc5Znqc+6qBxd7+Gv7gs0H2lw9CeRa
	 IKmAhdTQxTPrMvIyV8WD22Po0ILa2pDT8xiRpmV+SicsHMQOG8+nWXqLLFcjntCIEJ
	 OUtFHBOIA+nmIJdUTdMNWmx551R3s8+Y8PwIYuGRcc9qZoIPmKv/P4Xh12kFAwBn8l
	 G032YsCU/Ae7PEgyuKzCdqw3N5bfvcq5kbXO/J+rnaB8WP058BJUTIVve+uQz1XTIJ
	 U/65T942WHHNw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E566E3CB38
 for <cake@lists.bufferbloat.net>; Mon,  9 Sep 2024 05:16:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725873396;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=hOgHx6oXUHCksOPdNO9GkwDeu+mkCXvvvLuR8v0qTU4=;
 b=SqApM5JCb9w818f6hlFPtIr7eikeqTaik3E3TJimLh03ENy5E4zmPJakqmtHlvuiSPg7NU
 M00gNQJIREMMNDY2ZGrONBmhp6IvcRVSQHgBPUk6KUlSQs3OYLJR9pDs74n6tD0IXhW7bs
 jWcfTUseFzQlbxW1bRX9MnO1NFiqu6Q=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-612-TVhpYRS-PrGJj5RTARN40w-1; Mon, 09 Sep 2024 05:16:35 -0400
X-MC-Unique: TVhpYRS-PrGJj5RTARN40w-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-a8a6fee3ab1so328614466b.3
 for <cake@lists.bufferbloat.net>; Mon, 09 Sep 2024 02:16:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725873394; x=1726478194;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=hOgHx6oXUHCksOPdNO9GkwDeu+mkCXvvvLuR8v0qTU4=;
 b=kTXyFEFh9l8z2xfExujtpH3LXPzo6Fnu5hj8gGRGW1C5MWqBLEM85wePxfTZ99C5/n
 P2VTEos/xYG5c2Pe4dgVhGAjH2fGxsCb9FGdPgGPoyWPN8UPrBemx0F4ANxrd2E+E3Ii
 +qSpGlZ6wJbz7KlRJ/ByvmRRrN6r5buNoVTAEILlkWHSlmP43W3rpQfE2HrrATfFgTtO
 vAi8Mat2soAhB5oNlyBxzFn6egWCTYeC9rKkzKy8UhDM2RaO5G3bfZRxmTOMdHoztI2M
 59VVFna/oM7nfa6UgZb60511VrbAYw4++0tomoA86nzZvmgTSqTCPG3gjnUkUc4I4nJq
 iFiQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUoaIvPTZRb7af7dKOe5VShdjdzStfuuba1y5hANFLD9VwblKtLFHDx14WmKek+mdz+9WBn@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YxyzfPd+ncedOoyciHTOY2xVjXnz8BtRXKE0r8vZkBoCjqgRmTO
 SN8Q6VLRX+CpEvd9YXqW2UjJTYVJg+MDZ4AThTnEO1QBS2NyTZbOzOjyFEb4/H8HiiwlXjeTOVe
 4jswCnwytv6ztlBTVw7Q2VrcTHk9uXqyJ18gPR3X/Kku/o/nHDC2VSzeBrGw=
X-Received: by 2002:a17:907:368a:b0:a86:8953:e1fe with SMTP id
 a640c23a62f3a-a8a8884be2cmr834442566b.47.1725873393564; 
 Mon, 09 Sep 2024 02:16:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHNi4CPHkWulQf8Un7wTFpsfY+PTRR0uA19tgeQRrcwdcay9z5l6W2TFxorq811BaKwya9DjA==
X-Received: by 2002:a17:907:368a:b0:a86:8953:e1fe with SMTP id
 a640c23a62f3a-a8a8884be2cmr834438266b.47.1725873392705; 
 Mon, 09 Sep 2024 02:16:32 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a8d25d65cf6sm310680766b.222.2024.09.09.02.16.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2024 02:16:32 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id E007714AEA8B; Mon, 09 Sep 2024 11:16:30 +0200 (CEST)
To: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>
Date: Mon,  9 Sep 2024 11:16:28 +0200
Message-ID: <20240909091630.22177-1-toke@redhat.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Cake] [PATCH net-next v2] sch_cake: constify inverse square root
	cache
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
From: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Cc: netdev@vger.kernel.org,
 =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>,
 cake@lists.bufferbloat.net, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPgoKc2NoX2Nha2UgdXNlcyBhIGNh
Y2hlIG9mIHRoZSBmaXJzdCAxNiB2YWx1ZXMgb2YgdGhlIGludmVyc2Ugc3F1YXJlIHJvb3QKY2Fs
Y3VsYXRpb24gZm9yIHRoZSBDb2JhbHQgQVFNIHRvIHNhdmUgc29tZSBjeWNsZXMgb24gdGhlIGZh
c3QgcGF0aC4KVGhpcyBjYWNoZSBpcyBwb3B1bGF0ZWQgd2hlbiB0aGUgcWRpc2MgaXMgZmlyc3Qg
bG9hZGVkLCBidXQgdGhlcmUncwpyZWFsbHkgbm8gcmVhc29uIHdoeSBpdCBjYW4ndCBqdXN0IGJl
IHByZS1wb3B1bGF0ZWQuIFNvIGNoYW5nZSBpdCB0byBiZQpwcmUtcG9wdWxhdGVkIHdpdGggY29u
c3RhbnRzLCB3aGljaCBhbHNvIG1ha2VzIGl0IHBvc3NpYmxlIHRvIGNvbnN0aWZ5Cml0LgoKVGhp
cyBnaXZlcyBhIG1vZGVzdCBzcGFjZSBzYXZpbmcgZm9yIHRoZSBtb2R1bGUgKG5vdCBjb3VudGlu
ZyBkZWJ1ZyBkYXRhKToKLnRleHQ6ICAtMjI0IGJ5dGVzCi5yb2RhdGE6ICs4MCBieXRlcwouYnNz
OiAgICAtNjQgYnl0ZXMKVG90YWw6ICAtMTkyIGJ5dGVzCgpTaWduZWQtb2ZmLWJ5OiBEYXZlIFRh
aHQgPGRhdmUudGFodEBnbWFpbC5jb20+ClsgZml4ZWQgdXAgY29tbWVudCwgcmV3cm90ZSBjb21t
aXQgbWVzc2FnZSBdClNpZ25lZC1vZmYtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9r
ZUByZWRoYXQuY29tPgotLS0KdjI6Ci0gRml4IGluZGVudGF0aW9uIGFuZCBsaW5lIGxlbmd0aCBp
c3N1ZXMKCiBuZXQvc2NoZWQvc2NoX2Nha2UuYyB8IDUzICsrKysrKysrKysrKysrKy0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwg
MzUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbmV0L3NjaGVkL3NjaF9jYWtlLmMgYi9uZXQv
c2NoZWQvc2NoX2Nha2UuYwppbmRleCBkMmY0OWRiNzA1MjMuLmYyZjliNzUwMDhiYiAxMDA2NDQK
LS0tIGEvbmV0L3NjaGVkL3NjaF9jYWtlLmMKKysrIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMKQEAg
LTM2MSw4ICszNjEsMjQgQEAgc3RhdGljIGNvbnN0IHU4IGJlc3RlZmZvcnRbXSA9IHsKIHN0YXRp
YyBjb25zdCB1OCBub3JtYWxfb3JkZXJbXSA9IHswLCAxLCAyLCAzLCA0LCA1LCA2LCA3fTsKIHN0
YXRpYyBjb25zdCB1OCBidWxrX29yZGVyW10gPSB7MSwgMCwgMiwgM307CiAKKy8qIFRoZXJlIGlz
IGEgYmlnIGRpZmZlcmVuY2UgaW4gdGltaW5nIGJldHdlZW4gdGhlIGFjY3VyYXRlIHZhbHVlcyBw
bGFjZWQgaW4gdGhlCisgKiBjYWNoZSBhbmQgdGhlIGFwcHJveGltYXRpb25zIGdpdmVuIGJ5IGEg
c2luZ2xlIE5ld3RvbiBzdGVwIGZvciBzbWFsbCBjb3VudAorICogdmFsdWVzLCBwYXJ0aWN1bGFy
bHkgd2hlbiBzdGVwcGluZyBmcm9tIGNvdW50IDEgdG8gMiBvciB2aWNlIHZlcnNhLiBIZW5jZSwK
KyAqIHRoZXNlIHZhbHVlcyBhcmUgY2FsY3VsYXRlZCB1c2luZyBlaWdodCBOZXd0b24gc3RlcHMs
IHVzaW5nIHRoZQorICogaW1wbGVtZW50YXRpb24gYmVsb3cuIEFib3ZlIDE2LCBhIHNpbmdsZSBO
ZXd0b24gc3RlcCBnaXZlcyBzdWZmaWNpZW50CisgKiBhY2N1cmFjeSBpbiBlaXRoZXIgZGlyZWN0
aW9uLCBnaXZlbiB0aGUgcHJlY2lzaW9uIHN0b3JlZC4KKyAqCisgKiBUaGUgbWFnbml0dWRlIG9m
IHRoZSBlcnJvciB3aGVuIHN0ZXBwaW5nIHVwIHRvIGNvdW50IDIgaXMgc3VjaCBhcyB0byBnaXZl
IHRoZQorICogdmFsdWUgdGhhdCAqc2hvdWxkKiBoYXZlIGJlZW4gcHJvZHVjZWQgYXQgY291bnQg
NC4KKyAqLworCiAjZGVmaW5lIFJFQ19JTlZfU1FSVF9DQUNIRSAoMTYpCi1zdGF0aWMgdTMyIGNv
YmFsdF9yZWNfaW52X3NxcnRfY2FjaGVbUkVDX0lOVl9TUVJUX0NBQ0hFXSA9IHswfTsKK3N0YXRp
YyBjb25zdCB1MzIgaW52X3NxcnRfY2FjaGVbUkVDX0lOVl9TUVJUX0NBQ0hFXSA9IHsKKwkJfjAs
ICAgICAgICAgfjAsIDMwMzcwMDA1MDAsIDI0Nzk3MDA1MjUsCisJMjE0NzQ4MzY0NywgMTkyMDc2
Nzc2NywgMTc1MzQxMzA1NiwgMTYyMzM0NTA1MSwKKwkxNTE4NTAwMjUwLCAxNDMxNjU1NzY1LCAx
MzU4MTg3OTE0LCAxMjk0OTgxMzY0LAorCTEyMzk4NTAyNjMsIDExOTEyMDk2MDEsIDExNDc4Nzgy
OTQsIDExMDg5NTU3ODgKK307CiAKIC8qIGh0dHA6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvTWV0
aG9kc19vZl9jb21wdXRpbmdfc3F1YXJlX3Jvb3RzCiAgKiBuZXdfaW52c3FydCA9IChpbnZzcXJ0
IC8gMikgKiAoMyAtIGNvdW50ICogaW52c3FydF4yKQpAQCAtMzg4LDQ3ICs0MDQsMTQgQEAgc3Rh
dGljIHZvaWQgY29iYWx0X25ld3Rvbl9zdGVwKHN0cnVjdCBjb2JhbHRfdmFycyAqdmFycykKIHN0
YXRpYyB2b2lkIGNvYmFsdF9pbnZzcXJ0KHN0cnVjdCBjb2JhbHRfdmFycyAqdmFycykKIHsKIAlp
ZiAodmFycy0+Y291bnQgPCBSRUNfSU5WX1NRUlRfQ0FDSEUpCi0JCXZhcnMtPnJlY19pbnZfc3Fy
dCA9IGNvYmFsdF9yZWNfaW52X3NxcnRfY2FjaGVbdmFycy0+Y291bnRdOworCQl2YXJzLT5yZWNf
aW52X3NxcnQgPSBpbnZfc3FydF9jYWNoZVt2YXJzLT5jb3VudF07CiAJZWxzZQogCQljb2JhbHRf
bmV3dG9uX3N0ZXAodmFycyk7CiB9CiAKLS8qIFRoZXJlIGlzIGEgYmlnIGRpZmZlcmVuY2UgaW4g
dGltaW5nIGJldHdlZW4gdGhlIGFjY3VyYXRlIHZhbHVlcyBwbGFjZWQgaW4KLSAqIHRoZSBjYWNo
ZSBhbmQgdGhlIGFwcHJveGltYXRpb25zIGdpdmVuIGJ5IGEgc2luZ2xlIE5ld3RvbiBzdGVwIGZv
ciBzbWFsbAotICogY291bnQgdmFsdWVzLCBwYXJ0aWN1bGFybHkgd2hlbiBzdGVwcGluZyBmcm9t
IGNvdW50IDEgdG8gMiBvciB2aWNlIHZlcnNhLgotICogQWJvdmUgMTYsIGEgc2luZ2xlIE5ld3Rv
biBzdGVwIGdpdmVzIHN1ZmZpY2llbnQgYWNjdXJhY3kgaW4gZWl0aGVyCi0gKiBkaXJlY3Rpb24s
IGdpdmVuIHRoZSBwcmVjaXNpb24gc3RvcmVkLgotICoKLSAqIFRoZSBtYWduaXR1ZGUgb2YgdGhl
IGVycm9yIHdoZW4gc3RlcHBpbmcgdXAgdG8gY291bnQgMiBpcyBzdWNoIGFzIHRvIGdpdmUKLSAq
IHRoZSB2YWx1ZSB0aGF0ICpzaG91bGQqIGhhdmUgYmVlbiBwcm9kdWNlZCBhdCBjb3VudCA0Lgot
ICovCi0KLXN0YXRpYyB2b2lkIGNvYmFsdF9jYWNoZV9pbml0KHZvaWQpCi17Ci0Jc3RydWN0IGNv
YmFsdF92YXJzIHY7Ci0KLQltZW1zZXQoJnYsIDAsIHNpemVvZih2KSk7Ci0Jdi5yZWNfaW52X3Nx
cnQgPSB+MFU7Ci0JY29iYWx0X3JlY19pbnZfc3FydF9jYWNoZVswXSA9IHYucmVjX2ludl9zcXJ0
OwotCi0JZm9yICh2LmNvdW50ID0gMTsgdi5jb3VudCA8IFJFQ19JTlZfU1FSVF9DQUNIRTsgdi5j
b3VudCsrKSB7Ci0JCWNvYmFsdF9uZXd0b25fc3RlcCgmdik7Ci0JCWNvYmFsdF9uZXd0b25fc3Rl
cCgmdik7Ci0JCWNvYmFsdF9uZXd0b25fc3RlcCgmdik7Ci0JCWNvYmFsdF9uZXd0b25fc3RlcCgm
dik7Ci0KLQkJY29iYWx0X3JlY19pbnZfc3FydF9jYWNoZVt2LmNvdW50XSA9IHYucmVjX2ludl9z
cXJ0OwotCX0KLX0KLQogc3RhdGljIHZvaWQgY29iYWx0X3ZhcnNfaW5pdChzdHJ1Y3QgY29iYWx0
X3ZhcnMgKnZhcnMpCiB7CiAJbWVtc2V0KHZhcnMsIDAsIHNpemVvZigqdmFycykpOwotCi0JaWYg
KCFjb2JhbHRfcmVjX2ludl9zcXJ0X2NhY2hlWzBdKSB7Ci0JCWNvYmFsdF9jYWNoZV9pbml0KCk7
Ci0JCWNvYmFsdF9yZWNfaW52X3NxcnRfY2FjaGVbMF0gPSB+MDsKLQl9CiB9CiAKIC8qIENvRGVs
IGNvbnRyb2xfbGF3IGlzIHQgKyBpbnRlcnZhbC9zcXJ0KGNvdW50KQotLSAKMi40Ni4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcg
bGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldC9saXN0aW5mby9jYWtlCg==

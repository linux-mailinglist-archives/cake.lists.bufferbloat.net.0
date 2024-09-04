Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1BA96B7C2
	for <lists+cake@lfdr.de>; Wed,  4 Sep 2024 12:05:35 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 240483CB48;
	Wed,  4 Sep 2024 06:05:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1725444334;
	bh=ZFpEe9lvCS1bINZJMrX75xBlKW3CGYv4YAPaQhuYRno=;
	h=To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:Cc:From;
	b=RnHKYyGH72IBTs4RuUGCKxelKqDrb67JCy6AtuKhX5XMXn73A33QZQrqcjEITe9Gu
	 UDhB2MP9X212rYn+qa02+ZrQcH34F6SxqGbWXtEfVMnMk5v/KzEjmx0l6htnNjmr8u
	 vK0sVUSr4t5/BV9mJqLHuZykKCOyBYczNnPgnTaOCN0dgnbANBRPdU/Fq05xJQBDxe
	 zST1XIgFc//77sV/jLxHIzhdix2bIriSqUOYkaP4TmTPmsu07On+jDuzB2Ie0Mxra6
	 9mCYh1uscI/5GPGh9O0FznUscK/liPqHK82lAHSR9sESnYye5OGoDADsx5PH1+JL+O
	 IoCpWxq+61Z5A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 656753B29D
 for <cake@lists.bufferbloat.net>; Wed,  4 Sep 2024 06:05:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725444332;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=7SgMWqwfRAemJXpyVUWXtmjgoS7M6mnA9OsZpEX3Nsc=;
 b=ZHDl4nNJCBrxSB22NUsiTqSyWZqxx7zwW/jY/pIjOu5AsGUoAqVY6AK6wUzi9OTkeTaDdu
 AyRIsWiF95+S5odvtQO7TrjoMi32emFlRR8eI7Q28YROpoVuq5d7CvcBrPNstmmjJcyzKt
 eZkz/CfBquKDitzMdFJoYDKkI7esDjs=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-177-4PDKSFIHM8e7ANUncqLgmw-1; Wed, 04 Sep 2024 06:05:31 -0400
X-MC-Unique: 4PDKSFIHM8e7ANUncqLgmw-1
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-3771b6da3ceso622673f8f.3
 for <cake@lists.bufferbloat.net>; Wed, 04 Sep 2024 03:05:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725444329; x=1726049129;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7SgMWqwfRAemJXpyVUWXtmjgoS7M6mnA9OsZpEX3Nsc=;
 b=roQzT1ErgRL3k3zB5um7nkRhHkSp6m30xFXMta62E2IhUHZd2C0CjamBBYN3AZRM++
 im4OedJ8dmjs4sPcCftyoJ6SD2UJYnO68+amlQ0Pft1b5yRvzjh970CJ2BRLqvd1AFpb
 gM6Q/9733EmOAWBz9zM4UGWBl2Ba7rZ7VjHP64+Vqc3nEM9Gpy7owEpGgtqdrIWjUGlI
 l9ZZOE81IgJIl7VkCOz59oe1Ps+YBGwIc3nw3+7WsTclMDbjDJbrI9aFLVHa2Ks4c43t
 uOPHd7nbTn+XtNTQV+gu8Q2fsjQSpTPo4FPwUL60C1zJQJGXLHKNparJuNa+AOWc/eNM
 aq3A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXHPWBnAlTspxwVgRDe4NFnuhRGreycWInmfqIZzFA3YgUF/GAB0Z/tkACPEUEcb5qRm2Ec@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YyHdl0/XLYQ5zhstnUyIiYyunguy17vtznCGt9YO2xo5B7CS8zv
 l8UwP9w7qjmwEV956q/y7AxYYN6im0PqTHdpeaBqsNHv+kGTNwgV9Ei5ENdIosG5OCeR916SHk4
 lnFOZChoYLK8QbxX3NHfKfW7sGgC8fUSKoJijoSJQ20YGJPdIdkTtGFZVpBg=
X-Received: by 2002:adf:e5ce:0:b0:374:c712:507a with SMTP id
 ffacd0b85a97d-374c71250b6mr6136143f8f.32.1725444329461; 
 Wed, 04 Sep 2024 03:05:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFeRTWuKvLCbwapCMh7yQPpztr87Al5rISbB93gh6CJwlRrsshXjrGddYXAlYkLaqWSK1GQPQ==
X-Received: by 2002:adf:e5ce:0:b0:374:c712:507a with SMTP id
 ffacd0b85a97d-374c71250b6mr6136133f8f.32.1725444328978; 
 Wed, 04 Sep 2024 03:05:28 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-374c0f6f4c4sm11128642f8f.44.2024.09.04.03.05.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2024 03:05:28 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 5A22F14AE6D7; Wed, 04 Sep 2024 12:05:27 +0200 (CEST)
To: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>
Date: Wed,  4 Sep 2024 12:05:16 +0200
Message-ID: <20240904100516.16926-1-toke@redhat.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Cake] [PATCH net-next] sch_cake: constify inverse square root cache
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
ZUByZWRoYXQuY29tPgotLS0KIG5ldC9zY2hlZC9zY2hfY2FrZS5jIHwgNTMgKysrKysrKysrKysr
KysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNl
cnRpb25zKCspLCAzNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9uZXQvc2NoZWQvc2NoX2Nh
a2UuYyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jCmluZGV4IDk2MDJkYWZlMzJlNi4uYTUxYzQzYmRl
MGRlIDEwMDY0NAotLS0gYS9uZXQvc2NoZWQvc2NoX2Nha2UuYworKysgYi9uZXQvc2NoZWQvc2No
X2Nha2UuYwpAQCAtMzYxLDggKzM2MSwyNCBAQCBzdGF0aWMgY29uc3QgdTggYmVzdGVmZm9ydFtd
ID0gewogc3RhdGljIGNvbnN0IHU4IG5vcm1hbF9vcmRlcltdID0gezAsIDEsIDIsIDMsIDQsIDUs
IDYsIDd9Owogc3RhdGljIGNvbnN0IHU4IGJ1bGtfb3JkZXJbXSA9IHsxLCAwLCAyLCAzfTsKIAor
LyogVGhlcmUgaXMgYSBiaWcgZGlmZmVyZW5jZSBpbiB0aW1pbmcgYmV0d2VlbiB0aGUgYWNjdXJh
dGUgdmFsdWVzIHBsYWNlZCBpbiB0aGUKKyAqIGNhY2hlIGFuZCB0aGUgYXBwcm94aW1hdGlvbnMg
Z2l2ZW4gYnkgYSBzaW5nbGUgTmV3dG9uIHN0ZXAgZm9yIHNtYWxsIGNvdW50CisgKiB2YWx1ZXMs
IHBhcnRpY3VsYXJseSB3aGVuIHN0ZXBwaW5nIGZyb20gY291bnQgMSB0byAyIG9yIHZpY2UgdmVy
c2EuIEhlbmNlLAorICogdGhlc2UgdmFsdWVzIGFyZSBjYWxjdWxhdGVkIHVzaW5nIGVpZ2h0IE5l
d3RvbiBzdGVwcywgdXNpbmcgdGhlIGltcGxlbWVudGF0aW9uCisgKiBiZWxvdy4gQWJvdmUgMTYs
IGEgc2luZ2xlIE5ld3RvbiBzdGVwIGdpdmVzIHN1ZmZpY2llbnQgYWNjdXJhY3kgaW4gZWl0aGVy
CisgKiBkaXJlY3Rpb24sIGdpdmVuIHRoZSBwcmVjaXNpb24gc3RvcmVkLgorICoKKyAqIFRoZSBt
YWduaXR1ZGUgb2YgdGhlIGVycm9yIHdoZW4gc3RlcHBpbmcgdXAgdG8gY291bnQgMiBpcyBzdWNo
IGFzIHRvIGdpdmUKKyAqIHRoZSB2YWx1ZSB0aGF0ICpzaG91bGQqIGhhdmUgYmVlbiBwcm9kdWNl
ZCBhdCBjb3VudCA0LgorICovCisKICNkZWZpbmUgUkVDX0lOVl9TUVJUX0NBQ0hFICgxNikKLXN0
YXRpYyB1MzIgY29iYWx0X3JlY19pbnZfc3FydF9jYWNoZVtSRUNfSU5WX1NRUlRfQ0FDSEVdID0g
ezB9Oworc3RhdGljIGNvbnN0IHUzMiBpbnZfc3FydF9jYWNoZVtSRUNfSU5WX1NRUlRfQ0FDSEVd
ID0geworCSAgICAgICAgfjAsICAgICAgICAgfjAsIDMwMzcwMDA1MDAsIDI0Nzk3MDA1MjUsCisJ
MjE0NzQ4MzY0NywgMTkyMDc2Nzc2NywgMTc1MzQxMzA1NiwgMTYyMzM0NTA1MSwKKwkxNTE4NTAw
MjUwLCAxNDMxNjU1NzY1LCAxMzU4MTg3OTE0LCAxMjk0OTgxMzY0LAorCTEyMzk4NTAyNjMsIDEx
OTEyMDk2MDEsIDExNDc4NzgyOTQsIDExMDg5NTU3ODgKK307CiAKIC8qIGh0dHA6Ly9lbi53aWtp
cGVkaWEub3JnL3dpa2kvTWV0aG9kc19vZl9jb21wdXRpbmdfc3F1YXJlX3Jvb3RzCiAgKiBuZXdf
aW52c3FydCA9IChpbnZzcXJ0IC8gMikgKiAoMyAtIGNvdW50ICogaW52c3FydF4yKQpAQCAtMzg4
LDQ3ICs0MDQsMTQgQEAgc3RhdGljIHZvaWQgY29iYWx0X25ld3Rvbl9zdGVwKHN0cnVjdCBjb2Jh
bHRfdmFycyAqdmFycykKIHN0YXRpYyB2b2lkIGNvYmFsdF9pbnZzcXJ0KHN0cnVjdCBjb2JhbHRf
dmFycyAqdmFycykKIHsKIAlpZiAodmFycy0+Y291bnQgPCBSRUNfSU5WX1NRUlRfQ0FDSEUpCi0J
CXZhcnMtPnJlY19pbnZfc3FydCA9IGNvYmFsdF9yZWNfaW52X3NxcnRfY2FjaGVbdmFycy0+Y291
bnRdOworCQl2YXJzLT5yZWNfaW52X3NxcnQgPSBpbnZfc3FydF9jYWNoZVt2YXJzLT5jb3VudF07
CiAJZWxzZQogCQljb2JhbHRfbmV3dG9uX3N0ZXAodmFycyk7CiB9CiAKLS8qIFRoZXJlIGlzIGEg
YmlnIGRpZmZlcmVuY2UgaW4gdGltaW5nIGJldHdlZW4gdGhlIGFjY3VyYXRlIHZhbHVlcyBwbGFj
ZWQgaW4KLSAqIHRoZSBjYWNoZSBhbmQgdGhlIGFwcHJveGltYXRpb25zIGdpdmVuIGJ5IGEgc2lu
Z2xlIE5ld3RvbiBzdGVwIGZvciBzbWFsbAotICogY291bnQgdmFsdWVzLCBwYXJ0aWN1bGFybHkg
d2hlbiBzdGVwcGluZyBmcm9tIGNvdW50IDEgdG8gMiBvciB2aWNlIHZlcnNhLgotICogQWJvdmUg
MTYsIGEgc2luZ2xlIE5ld3RvbiBzdGVwIGdpdmVzIHN1ZmZpY2llbnQgYWNjdXJhY3kgaW4gZWl0
aGVyCi0gKiBkaXJlY3Rpb24sIGdpdmVuIHRoZSBwcmVjaXNpb24gc3RvcmVkLgotICoKLSAqIFRo
ZSBtYWduaXR1ZGUgb2YgdGhlIGVycm9yIHdoZW4gc3RlcHBpbmcgdXAgdG8gY291bnQgMiBpcyBz
dWNoIGFzIHRvIGdpdmUKLSAqIHRoZSB2YWx1ZSB0aGF0ICpzaG91bGQqIGhhdmUgYmVlbiBwcm9k
dWNlZCBhdCBjb3VudCA0LgotICovCi0KLXN0YXRpYyB2b2lkIGNvYmFsdF9jYWNoZV9pbml0KHZv
aWQpCi17Ci0Jc3RydWN0IGNvYmFsdF92YXJzIHY7Ci0KLQltZW1zZXQoJnYsIDAsIHNpemVvZih2
KSk7Ci0Jdi5yZWNfaW52X3NxcnQgPSB+MFU7Ci0JY29iYWx0X3JlY19pbnZfc3FydF9jYWNoZVsw
XSA9IHYucmVjX2ludl9zcXJ0OwotCi0JZm9yICh2LmNvdW50ID0gMTsgdi5jb3VudCA8IFJFQ19J
TlZfU1FSVF9DQUNIRTsgdi5jb3VudCsrKSB7Ci0JCWNvYmFsdF9uZXd0b25fc3RlcCgmdik7Ci0J
CWNvYmFsdF9uZXd0b25fc3RlcCgmdik7Ci0JCWNvYmFsdF9uZXd0b25fc3RlcCgmdik7Ci0JCWNv
YmFsdF9uZXd0b25fc3RlcCgmdik7Ci0KLQkJY29iYWx0X3JlY19pbnZfc3FydF9jYWNoZVt2LmNv
dW50XSA9IHYucmVjX2ludl9zcXJ0OwotCX0KLX0KLQogc3RhdGljIHZvaWQgY29iYWx0X3ZhcnNf
aW5pdChzdHJ1Y3QgY29iYWx0X3ZhcnMgKnZhcnMpCiB7CiAJbWVtc2V0KHZhcnMsIDAsIHNpemVv
ZigqdmFycykpOwotCi0JaWYgKCFjb2JhbHRfcmVjX2ludl9zcXJ0X2NhY2hlWzBdKSB7Ci0JCWNv
YmFsdF9jYWNoZV9pbml0KCk7Ci0JCWNvYmFsdF9yZWNfaW52X3NxcnRfY2FjaGVbMF0gPSB+MDsK
LQl9CiB9CiAKIC8qIENvRGVsIGNvbnRyb2xfbGF3IGlzIHQgKyBpbnRlcnZhbC9zcXJ0KGNvdW50
KQotLSAKMi40Ni4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczov
L2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

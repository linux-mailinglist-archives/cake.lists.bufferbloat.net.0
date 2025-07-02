Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD9DAF9A44
	for <lists+cake@lfdr.de>; Fri,  4 Jul 2025 20:01:17 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CD3B33CB52;
	Fri,  4 Jul 2025 14:01:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1751652073;
	bh=0Lw//uE/vKXSa9wrXvRyEBlinysffBtTbTz1HWEOBgU=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:Cc:From;
	b=ELcg3Ixrqnkwc1TUD+LzfszyTHbSN7DgHsRw4qPfA9Zx8O+9UfhREcLsoRRsI36sR
	 WMwK1QEy8QVFpPLaBIvcxFTwQF1MAaryfu6u5tbIl04f6Gyewb72ZMBwy4n6IeVCa1
	 72Z+VhboyDWUvXHkv9sGB/j2Aur81dQFsT01ZOv1eipouN1lkATBTUXb0i7O2PKOX8
	 cT1kreS6JwVzbIUgoEkVdZbgcixRqlBIq9gunpRVicWfnCNIWkp4wpeBZTvVWHKk5t
	 DOQN40Avo2blpVS7W5P41ogZLEmwBH3o996NYYnQfHDqFCplfy4e2BpbzgDjcm5oUH
	 wzlTxDhXdKZIg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com
 [IPv6:2607:f8b0:4864:20::f49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4B8E73CB37
 for <cake@lists.bufferbloat.net>; Wed,  2 Jul 2025 12:07:47 -0400 (EDT)
Received: by mail-qv1-xf49.google.com with SMTP id
 6a1803df08f44-6fb3654112fso160618386d6.3
 for <cake@lists.bufferbloat.net>; Wed, 02 Jul 2025 09:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1751472467; x=1752077267;
 darn=lists.bufferbloat.net; 
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=SpkubWRCAgA3n9kTQKYoyEm6Wf3b95Ji8UJpkdBVSfE=;
 b=IVnuXVlNp0PwSHoo+rrnV9jBydzc/rzqg1tAQzaQujjZHoBs6Us+7CgHfPvmRhgE1L
 ezF1a2isFV2kRMyNUEDeK7sAYO7gqZ0e0AhHPGscxDqT0Od1dXULvEJpO0MTPaiiHA0V
 iQPxebuT1abalSV6XSDl1AP/+kZoYw4ovDW+fRzINyiVc4yO/4e/qiU+A8nihJ2wP2yQ
 /AAcq1xFKsJ1uXw557GIQcehXrReh8LL+gO95i1hKj6+sTk7w/8D4tr4yf3mVUf4p4yZ
 AKsfGUA3PYt/H3fTY6gMGdm+ovYdhkIwdoraCG4rXQnY++ZfGIn54GyLCvS9jXEwaJXW
 nbeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751472467; x=1752077267;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=SpkubWRCAgA3n9kTQKYoyEm6Wf3b95Ji8UJpkdBVSfE=;
 b=r1jk3955yxKFP7JNqEncpFU2Q+SDZzIElgNLs7JNTTR/QFb15tUJ8p5yg0iMgJ5zgc
 2hjXIx2rMIrYa252xxkQcEgq3JyPTPbovFHH0Uk04NG8Pa6MBUtd9sB6WkWiR+NE3cnf
 jg60aOJQJ1fZn1hXtXS013CXRtvEZ4vtvKsmT7sit4A+wVAqTjliS1iev1fgrzLEMnsX
 54DpnRdP4ZPm6QA1fnEKE2do9z3FbiuaROHSYk98Hsn7B/cu+dY7XXe+oLHXwarBhMle
 RNEQZoL8It6nbr57t3q2mvquP3x164M3dFvZQmMcQg1sYsij2BPPpWdReQ6mJtbiBabL
 QewA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVySU0EW/CkLrOpWglteYfYdFergVcnYX/feQwQBPtXQ++vaejvqpGjKHNkgpm2MmKtTy9Z@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YynBFeMLSW8QRdVu2LsvlNwMbAn7HdbAx/aUPHMUFvrz/U4+270
 hKO9zW+M19iEAK2UVVEcjsuql7MwuO3VExvhHsVDLe598CASe4bRZ1WXLjhgL05DZG9U4/oP15O
 Hy8IVtqt8jML3NE/0bA==
X-Google-Smtp-Source: AGHT+IHGNihSVZdYeWYYvtq4JoWLcrdHbmonFDlPgo0zGbDWddFZcCsax7mf8uhd5h7l7WG3jcryV6vZXPJM6UE=
X-Received: from qvbpj1.prod.google.com ([2002:a05:6214:4b01:b0:6fd:50bd:be0a])
 (user=gfengyuan job=prod-delivery.src-stubby-dispatcher) by
 2002:ad4:5e8a:0:b0:6fb:25f:ac8c with SMTP id
 6a1803df08f44-702b1b71361mr56520516d6.31.1751472466382; 
 Wed, 02 Jul 2025 09:07:46 -0700 (PDT)
Date: Wed,  2 Jul 2025 16:07:41 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.50.0.727.gbf7dc18ff4-goog
Message-ID: <20250702160741.1204919-1-gfengyuan@google.com>
To: Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, 
 toke@toke.dk, edumazet@google.com, "David S . Miller" <davem@davemloft.net>
X-Mailman-Approved-At: Fri, 04 Jul 2025 14:01:12 -0400
Subject: [Cake] [PATCH net-next] net: account for encap headers in qdisc pkt
	len
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
From: Fengyuan Gong via Cake <cake@lists.bufferbloat.net>
Reply-To: Fengyuan Gong <gfengyuan@google.com>
Cc: Kuniyuki Iwashima <kuniyu@google.com>, Jiri Pirko <jiri@resnulli.us>,
 netdev@vger.kernel.org, Fengyuan Gong <gfengyuan@google.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 cake@lists.bufferbloat.net, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Stanislav Fomichev <sdf@fomichev.me>, willemb@google.com,
 Cong Wang <xiyou.wangcong@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

UmVmaW5lIHFkaXNjX3BrdF9sZW5faW5pdCB0byBpbmNsdWRlIGhlYWRlcnMgdXAgdGhyb3VnaAp0
aGUgaW5uZXIgdHJhbnNwb3J0IGhlYWRlciB3aGVuIGNvbXB1dGluZyBoZWFkZXIgc2l6ZQpmb3Ig
ZW5jYXBzdWxhdGlvbnMuIEFsc28gcmVmaW5lIG5ldC9zY2hlZC9zY2hfY2FrZS5jCmJvcnJvd2Vk
IGZyb20gcWRpc2NfcGt0X2xlbl9pbml0KCkuCgpTaWduZWQtb2ZmLWJ5OiBGZW5neXVhbiBHb25n
IDxnZmVuZ3l1YW5AZ29vZ2xlLmNvbT4KLS0tCiBuZXQvY29yZS9kZXYuYyAgICAgICB8IDUgKysr
Ky0KIG5ldC9zY2hlZC9zY2hfY2FrZS5jIHwgNSArKysrLQogMiBmaWxlcyBjaGFuZ2VkLCA4IGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbmV0L2NvcmUvZGV2LmMg
Yi9uZXQvY29yZS9kZXYuYwppbmRleCAxMWRhMWUyNzJlYzIwLi5kZmVjNTQxZjY4ZTNhIDEwMDY0
NAotLS0gYS9uZXQvY29yZS9kZXYuYworKysgYi9uZXQvY29yZS9kZXYuYwpAQCAtMzk0NCw3ICsz
OTQ0LDEwIEBAIHN0YXRpYyB2b2lkIHFkaXNjX3BrdF9sZW5faW5pdChzdHJ1Y3Qgc2tfYnVmZiAq
c2tiKQogCQl1bnNpZ25lZCBpbnQgaGRyX2xlbjsKIAogCQkvKiBtYWMgbGF5ZXIgKyBuZXR3b3Jr
IGxheWVyICovCi0JCWhkcl9sZW4gPSBza2JfdHJhbnNwb3J0X29mZnNldChza2IpOworCQlpZiAo
IXNrYi0+ZW5jYXBzdWxhdGlvbikKKwkJCWhkcl9sZW4gPSBza2JfdHJhbnNwb3J0X29mZnNldChz
a2IpOworCQllbHNlCisJCQloZHJfbGVuID0gc2tiX2lubmVyX3RyYW5zcG9ydF9vZmZzZXQoc2ti
KTsKIAogCQkvKiArIHRyYW5zcG9ydCBsYXllciAqLwogCQlpZiAobGlrZWx5KHNoaW5mby0+Z3Nv
X3R5cGUgJiAoU0tCX0dTT19UQ1BWNCB8IFNLQl9HU09fVENQVjYpKSkgewpkaWZmIC0tZ2l0IGEv
bmV0L3NjaGVkL3NjaF9jYWtlLmMgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYwppbmRleCA0OGRkOGM4
ODkwM2ZlLi5kYmNmYjk0OGM4NjcwIDEwMDY0NAotLS0gYS9uZXQvc2NoZWQvc2NoX2Nha2UuYwor
KysgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYwpAQCAtMTQwNyw3ICsxNDA3LDEwIEBAIHN0YXRpYyB1
MzIgY2FrZV9vdmVyaGVhZChzdHJ1Y3QgY2FrZV9zY2hlZF9kYXRhICpxLCBjb25zdCBzdHJ1Y3Qg
c2tfYnVmZiAqc2tiKQogCQlyZXR1cm4gY2FrZV9jYWxjX292ZXJoZWFkKHEsIGxlbiwgb2ZmKTsK
IAogCS8qIGJvcnJvd2VkIGZyb20gcWRpc2NfcGt0X2xlbl9pbml0KCkgKi8KLQloZHJfbGVuID0g
c2tiX3RyYW5zcG9ydF9vZmZzZXQoc2tiKTsKKwlpZiAoIXNrYi0+ZW5jYXBzdWxhdGlvbikKKwkJ
aGRyX2xlbiA9IHNrYl90cmFuc3BvcnRfb2Zmc2V0KHNrYik7CisJZWxzZQorCQloZHJfbGVuID0g
c2tiX2lubmVyX3RyYW5zcG9ydF9vZmZzZXQoc2tiKTsKIAogCS8qICsgdHJhbnNwb3J0IGxheWVy
ICovCiAJaWYgKGxpa2VseShzaGluZm8tPmdzb190eXBlICYgKFNLQl9HU09fVENQVjQgfAotLSAK
Mi41MC4wLjcyNy5nYmY3ZGMxOGZmNC1nb29nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

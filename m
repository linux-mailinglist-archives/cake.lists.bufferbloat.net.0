Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D6896A3B9
	for <lists+cake@lfdr.de>; Tue,  3 Sep 2024 18:09:45 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CD8DD3CB48;
	Tue,  3 Sep 2024 12:09:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1725379783;
	bh=oxw2wF0HjhD1bT8hMtctS7ABdov52X6QGfxkPSkUiYw=;
	h=To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:Cc:From;
	b=fCBNEn+6RKANnQN/IwAlLwLP1FRdCJI0sUQoKQ+ySEE9PoXqwMCKUT3LoWiYaq1RH
	 Kpaw7IOcmumYYQ0QCrTZeCfgKqnAgMN/R9x/oMkCSxnpYGu9ZHD8+4FK52XmjbN0nL
	 jTh+nB+UrHfMVyNS+Wl5wNMSd+n7z7VKfY6hMNuLYtwiOuaFSF0ZV6QkSAPsSj2xVR
	 3w2j3N2/Nx9IH16CIfMLgUewxFI3mUps2pUZv7p2Y5V8J/woBogzwy09RnJjEiR4nj
	 HtHqd9JE5Z1sJaP14Ip9AVcTZRpFkM0IuM82q0DMRZFpjK4FBtEo8mJFO45aTXa+Ym
	 Y4MHvoTK6EZAA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 87C3A3B29D
 for <cake@lists.bufferbloat.net>; Tue,  3 Sep 2024 12:09:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725379782;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=+vEL9t9N3TjzDKFfGVpcEH/htsU0bsy4GSN4Thmrm6E=;
 b=cP3pd9aJDW/O/0jFVRgCDC2edcxmr9S43vrFrwpi1IOUpN4FzhSYXEUmBwPzFRI5eh5iLc
 UE3rclVdQUbtZ+EVtfg9Rybj3h3oj843ik9Ms4RxsQ8xA4nWom+QHjtXZCKM+qsT5somrc
 UsjrzhRfRjBaArcvwbWJVAfPyuTJoZk=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-590-hjBdLcQoPFWJRJ6Sei1kiw-1; Tue, 03 Sep 2024 12:09:40 -0400
X-MC-Unique: hjBdLcQoPFWJRJ6Sei1kiw-1
Received: by mail-lj1-f197.google.com with SMTP id
 38308e7fff4ca-2f3f61b42c2so64968341fa.3
 for <cake@lists.bufferbloat.net>; Tue, 03 Sep 2024 09:09:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725379779; x=1725984579;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+vEL9t9N3TjzDKFfGVpcEH/htsU0bsy4GSN4Thmrm6E=;
 b=Dr8g7Z8FLU6wgd1epGA31r7rdi68aS3lbd7cwBM1rKu9v4KsPTl0WSZSF0Y10tRxyr
 YoBkkdRM5t/F8pGQ0EV0PzzZTXmJxsKF4QZmzKOj5U7OQSesCJ8zgbZtGtkzJmTJlSXH
 b/LvF3FlXzaN6UN4TVLErtGSRU7gvYNXU44RXKdMYa3jYX8ZRl3nToZi4mdeW3EQnbAe
 hWjyJsZ34JSOZFHoN+YWGTwHrm5BR71RfPlRJNSJTcgmF89kio7Ar4UG2+5z1i+Mw9ac
 HvZTamqaNklT6gOg2Mj17WWaj16VmOwSBJk6ntAmtbmZOuu20EPlso/PM24dSfUtimih
 dVOQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWV6wwX5kRuMuDnLVAiLDt1TKezdySG+TG8K+IgPJNSLF0U3iTQuppgHysQahCU8Y7ijb63@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YyLlttwoovkJCW8G86yKC7a8f99fYRlvGlEzi0LfKrBipnGxdEq
 cqj5bdoUVEvUCzE60c0qWnIAXpH22Le71o032/wde9t30+9JkLu5iBePvWYUTzzfA/WzHp2ZISt
 J6H/+RFQkjNtsIBG6w3wDujpbl0pTlAeMC98nhzp8lEzNJ99WDZDxqAfP8DE=
X-Received: by 2002:a05:651c:19a3:b0:2ef:c8a1:ff4 with SMTP id
 38308e7fff4ca-2f6105c49a9mr156218331fa.7.1725379779289; 
 Tue, 03 Sep 2024 09:09:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHM6IKnpjCa0SnPQDJqUDSYbdjdv3ACYWXRRNarHq2mh9lv5GtfRZskmFFlzTcDySivB4h63w==
X-Received: by 2002:a05:651c:19a3:b0:2ef:c8a1:ff4 with SMTP id
 38308e7fff4ca-2f6105c49a9mr156217921fa.7.1725379778590; 
 Tue, 03 Sep 2024 09:09:38 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a8989233403sm696395866b.212.2024.09.03.09.09.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 09:09:38 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id DA5BA14AE5EC; Tue, 03 Sep 2024 18:09:36 +0200 (CEST)
To: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Jiri Pirko <jiri@resnulli.us>, George Amanakis <gamanakis@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Date: Tue,  3 Sep 2024 18:08:45 +0200
Message-ID: <20240903160846.20909-1-toke@redhat.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Cake] [PATCH net] sched: sch_cake: fix bulk flow accounting logic
	for host fairness
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
 syzbot+7fe7b81d602cc1e6b94d@syzkaller.appspotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SW4gc2NoX2Nha2UsIHdlIGtlZXAgdHJhY2sgb2YgdGhlIGNvdW50IG9mIGFjdGl2ZSBidWxrIGZs
b3dzIHBlciBob3N0LAp3aGVuIHJ1bm5pbmcgaW4gZHN0L3NyYyBob3N0IGZhaXJuZXNzIG1vZGUs
IHdoaWNoIGlzIHVzZWQgYXMgdGhlCnJvdW5kLXJvYmluIHdlaWdodCB3aGVuIGl0ZXJhdGluZyB0
aHJvdWdoIGZsb3dzLiBUaGUgY291bnQgb2YgYWN0aXZlCmJ1bGsgZmxvd3MgaXMgdXBkYXRlZCB3
aGVuZXZlciBhIGZsb3cgY2hhbmdlcyBzdGF0ZS4KClRoaXMgaGFzIGEgcGVjdWxpYXIgaW50ZXJh
Y3Rpb24gd2l0aCB0aGUgaGFzaCBjb2xsaXNpb24gaGFuZGxpbmc6IHdoZW4gYQpoYXNoIGNvbGxp
c2lvbiBvY2N1cnMgKGFmdGVyIHRoZSBzZXQtYXNzb2NpYXRpdmUgaGFzaGluZyksIHRoZSBzdGF0
ZSBvZgp0aGUgaGFzaCBidWNrZXQgaXMgc2ltcGx5IHVwZGF0ZWQgdG8gbWF0Y2ggdGhlIG5ldyBw
YWNrZXQgdGhhdCBjb2xsaWRlZCwKYW5kIGlmIGhvc3QgZmFpcm5lc3MgaXMgZW5hYmxlZCwgdGhh
dCBhbHNvIG1lYW5zIGFzc2lnbmluZyBuZXcgcGVyLWhvc3QKc3RhdGUgdG8gdGhlIGZsb3cuIEZv
ciB0aGlzIHJlYXNvbiwgdGhlIGJ1bGsgZmxvdyBjb3VudGVycyBvZiB0aGUKaG9zdChzKSBhc3Np
Z25lZCB0byB0aGUgZmxvdyBhcmUgZGVjcmVtZW50ZWQsIGJlZm9yZSBuZXcgc3RhdGUgaXMKYXNz
aWduZWQgKGFuZCB0aGUgY291bnRlcnMsIHdoaWNoIG1heSBub3QgYmVsb25nIHRvIHRoZSBzYW1l
IGhvc3QKYW55bW9yZSwgYXJlIGluY3JlbWVudGVkIGFnYWluKS4KCkJhY2sgd2hlbiB0aGlzIGNv
ZGUgd2FzIGludHJvZHVjZWQsIHRoZSBob3N0IGZhaXJuZXNzIG1vZGUgd2FzIGFsd2F5cwplbmFi
bGVkLCBzbyB0aGUgZGVjcmVtZW50IHdhcyB1bmNvbmRpdGlvbmFsLiBXaGVuIHRoZSBjb25maWd1
cmF0aW9uCmZsYWdzIHdlcmUgaW50cm9kdWNlZCB0aGUgKmluY3JlbWVudCogd2FzIG1hZGUgY29u
ZGl0aW9uYWwsIGJ1dAp0aGUgKmRlY3JlbWVudCogd2FzIG5vdC4gV2hpY2ggb2YgY291cnNlIGNh
biBsZWFkIHRvIGEgc3B1cmlvdXMKZGVjcmVtZW50IChhbmQgYXNzb2NpYXRlZCB3cmFwLWFyb3Vu
ZCB0byBVMTZfTUFYKS4KCkFGQUlDVCwgd2hlbiBob3N0IGZhaXJuZXNzIGlzIGRpc2FibGVkLCB0
aGUgZGVjcmVtZW50IGFuZCB3cmFwLWFyb3VuZApoYXBwZW5zIGFzIHNvb24gYXMgYSBoYXNoIGNv
bGxpc2lvbiBvY2N1cnMgKHdoaWNoIGlzIG5vdCB0aGF0IGNvbW1vbiBpbgppdHNlbGYsIGR1ZSB0
byB0aGUgc2V0LWFzc29jaWF0aXZlIGhhc2hpbmcpLiBIb3dldmVyLCBpbiBtb3N0IGNhc2VzIHRo
aXMKaXMgaGFybWxlc3MsIGFzIHRoZSB2YWx1ZSBpcyBvbmx5IHVzZWQgd2hlbiBob3N0IGZhaXJu
ZXNzIG1vZGUgaXMKZW5hYmxlZC4gU28gaW4gb3JkZXIgdG8gdHJpZ2dlciBhbiBhcnJheSBvdmVy
Zmxvdywgc2NoX2Nha2UgaGFzIHRvIGZpcnN0CmJlIGNvbmZpZ3VyZWQgd2l0aCBob3N0IGZhaXJu
ZXNzIGRpc2FibGVkLCBhbmQgd2hpbGUgcnVubmluZyBpbiB0aGlzCm1vZGUsIGEgaGFzaCBjb2xs
aXNpb24gaGFzIHRvIG9jY3VyIHRvIGNhdXNlIHRoZSBvdmVyZmxvdy4gVGhlbiwgdGhlCnFkaXNj
IGhhcyB0byBiZSByZWNvbmZpZ3VyZWQgdG8gZW5hYmxlIGhvc3QgZmFpcm5lc3MsIHdoaWNoIGxl
YWRzIHRvIHRoZQphcnJheSBvdXQtb2YtYm91bmRzIGJlY2F1c2UgdGhlIHdyYXBwZWQtYXJvdW5k
IHZhbHVlIGlzIHJldGFpbmVkIGFuZAp1c2VkIGFzIGFuIGFycmF5IGluZGV4LiBJdCBzZWVtcyB0
aGF0IHN5emJvdCBtYW5hZ2VkIHRvIHRyaWdnZXIgdGhpcywKd2hpY2ggaXMgcXVpdGUgaW1wcmVz
c2l2ZSBpbiBpdHMgb3duIHJpZ2h0LgoKVGhpcyBwYXRjaCBmaXhlcyB0aGUgaXNzdWUgYnkgaW50
cm9kdWNpbmcgdGhlIHNhbWUgY29uZGl0aW9uYWwgY2hlY2sgb24KZGVjcmVtZW50IGFzIGlzIHVz
ZWQgb24gaW5jcmVtZW50LgoKVGhlIG9yaWdpbmFsIGJ1ZyBwcmVkYXRlcyB0aGUgdXBzdHJlYW1p
bmcgb2YgY2FrZSwgYnV0IHRoZSBjb21taXQgbGlzdGVkCmluIHRoZSBGaXhlcyB0YWcgdG91Y2hl
ZCB0aGF0IGNvZGUsIG1lYW5pbmcgdGhhdCB0aGlzIHBhdGNoIHdvbid0IGFwcGx5CmJlZm9yZSB0
aGF0LgoKRml4ZXM6IDcxMjYzOTkyOTkxMiAoInNjaF9jYWtlOiBNYWtlIHRoZSBkdWFsIG1vZGVz
IGZhaXJlciIpClJlcG9ydGVkLWJ5OiBzeXpib3QrN2ZlN2I4MWQ2MDJjYzFlNmI5NGRAc3l6a2Fs
bGVyLmFwcHNwb3RtYWlsLmNvbQpTaWduZWQtb2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gPHRva2VAcmVkaGF0LmNvbT4KLS0tCiBuZXQvc2NoZWQvc2NoX2Nha2UuYyB8IDExICsrKysr
KystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL25ldC9zY2hlZC9zY2hfY2FrZS5jIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMK
aW5kZXggOTYwMmRhZmUzMmU2Li5kMmY0OWRiNzA1MjMgMTAwNjQ0Ci0tLSBhL25ldC9zY2hlZC9z
Y2hfY2FrZS5jCisrKyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jCkBAIC03ODYsMTIgKzc4NiwxNSBA
QCBzdGF0aWMgdTMyIGNha2VfaGFzaChzdHJ1Y3QgY2FrZV90aW5fZGF0YSAqcSwgY29uc3Qgc3Ry
dWN0IHNrX2J1ZmYgKnNrYiwKIAkJICogcXVldWUsIGFjY2VwdCB0aGUgY29sbGlzaW9uLCB1cGRh
dGUgdGhlIGhvc3QgdGFncy4KIAkJICovCiAJCXEtPndheV9jb2xsaXNpb25zKys7Ci0JCWlmIChx
LT5mbG93c1tvdXRlcl9oYXNoICsga10uc2V0ID09IENBS0VfU0VUX0JVTEspIHsKLQkJCXEtPmhv
c3RzW3EtPmZsb3dzW3JlZHVjZWRfaGFzaF0uc3JjaG9zdF0uc3JjaG9zdF9idWxrX2Zsb3dfY291
bnQtLTsKLQkJCXEtPmhvc3RzW3EtPmZsb3dzW3JlZHVjZWRfaGFzaF0uZHN0aG9zdF0uZHN0aG9z
dF9idWxrX2Zsb3dfY291bnQtLTsKLQkJfQogCQlhbGxvY2F0ZV9zcmMgPSBjYWtlX2RzcmMoZmxv
d19tb2RlKTsKIAkJYWxsb2NhdGVfZHN0ID0gY2FrZV9kZHN0KGZsb3dfbW9kZSk7CisKKwkJaWYg
KHEtPmZsb3dzW291dGVyX2hhc2ggKyBrXS5zZXQgPT0gQ0FLRV9TRVRfQlVMSykgeworCQkJaWYg
KGFsbG9jYXRlX3NyYykKKwkJCQlxLT5ob3N0c1txLT5mbG93c1tyZWR1Y2VkX2hhc2hdLnNyY2hv
c3RdLnNyY2hvc3RfYnVsa19mbG93X2NvdW50LS07CisJCQlpZiAoYWxsb2NhdGVfZHN0KQorCQkJ
CXEtPmhvc3RzW3EtPmZsb3dzW3JlZHVjZWRfaGFzaF0uZHN0aG9zdF0uZHN0aG9zdF9idWxrX2Zs
b3dfY291bnQtLTsKKwkJfQogZm91bmQ6CiAJCS8qIHJlc2VydmUgcXVldWUgZm9yIGZ1dHVyZSBw
YWNrZXRzIGluIHNhbWUgZmxvdyAqLwogCQlyZWR1Y2VkX2hhc2ggPSBvdXRlcl9oYXNoICsgazsK
LS0gCjIuNDYuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9s
aXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

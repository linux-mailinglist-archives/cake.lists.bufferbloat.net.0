Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E658B659E
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:48 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 87CAA3D585;
	Mon, 29 Apr 2024 18:18:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429136;
	bh=dQcXCoqrJRG6KBnVYa0PbJ6gxDcFYZPdQYhzoWzwSCk=;
	h=To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:Cc:From;
	b=PEsLPKn3EYPtbWB9gs8OS2toVPK5t67nO0MnnvBxe1X4Dq2HrP+lbmZFNMdD3BErk
	 xN96WY30Rcr078hms7ZhcrlYNxKLpMFva6q/PqPKQaqjqLQoZEk3iZcV6+3QmDHz4+
	 jNDxwDLD09Lu/a8ckcSWsn+VG7VLCMwv6LjxS/evFLFXnjAJluOXN7y8+YJ+nDId2J
	 jjCfqshjl6e4jbLKoOIRaVFBA6L/Qbgh/NHtTQuzMfoOk7H+csAc6mQz5G7yI2KAQP
	 q9YLi6nz0nzfOqlFmIzOMoLPhp1aTKukAtiPXCqik3NdQMdzsKN4MsYJlNVE5FWsLj
	 LzGo0eCh5ZZsg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com
 [IPv6:2607:f8b0:4864:20::1033])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4506E3CB37
 for <cake@lists.bufferbloat.net>; Sat,  6 Apr 2024 19:55:40 -0400 (EDT)
Received: by mail-pj1-x1033.google.com with SMTP id
 98e67ed59e1d1-2a2bcc0c075so877580a91.0
 for <cake@lists.bufferbloat.net>; Sat, 06 Apr 2024 16:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1712447739; x=1713052539; darn=lists.bufferbloat.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=AXM7kfM1Z58yWKWsC/e8tiwljIuUChOEbm514WnQ12k=;
 b=UysH18Dk9Mq8YT8Pd7uhy9nvhMH0NaaIU4F6bDgrJFOiGbBeKw6S/ri1uC1lOyvhHU
 xnEmoNiJkJLKtY0C9jgFBV85m7PB18x+DFsDYx0T/vNeByc7iS7QNYcbz8Rq2u0krioV
 VBn8fQahoyje2x6EUGIMgAcueTJJXXsAx0Zxlde1Q63cbsarSnTYVJFnm41tXBRolRrL
 odfaszpaDHKqJnIEmVM85im/nPWPI8WvCj0F/NlPjQpOjCHNMAyc9m1S6nCGz27JhPZP
 oi9XGr//uolTOK+Zz14evW98guto9TjFwfgS/OQCsijOVTMj4gSnf120ufGqQPyK9/fF
 L7hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712447739; x=1713052539;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=AXM7kfM1Z58yWKWsC/e8tiwljIuUChOEbm514WnQ12k=;
 b=cfQWr7vw3eC939D+bJjaK0sbKpQjY5axh1zWExKpiJED6z3y89pA042cqKUv1j73fH
 VyNy6mRMQTgcfXflBy21oQmnVJYr4edQGypJ2ikrgS6F/xH3S5oel9IwGB72glJSYQer
 zFzS+g2AizKccsDB9MFjknT/Jlocy2CK2ltT9E86N53aA+PbmQdc4Rcy8De/Njm+eWTL
 Vtw44N1D1s47HRFTvaoWvB0JzMRszbiRLqBPsKLsTwyzDjsa7pmS5WX5VVnoVOADc3at
 8DPlnypkNDtNGX/UUSZvq13kn+PYGqN76roqAAjLyqdz8qG96T1m0dz3uoIlzYzCwpHR
 Q2dw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWzz/0/ESAWlME/42ROeXHkxIm3np1X7qSK42YQVlW7cZM8cIwPhO7wSEovOEdoklIWb0709013ZxC94PI5e+uQxeEe/FvZMZQudA==
X-Gm-Message-State: AOJu0YwbEoJTupTgspLaD8lX5gZgN1g5euVQhu8Rk/7MnCgVYgWhq6t9
 xgMi2fWJiPLbXusYdN3pCKKEB04ESMnoWYP7qLQbvAg5zgSpE5dy
X-Google-Smtp-Source: AGHT+IE3B5Pz+/ZkseS/mNk/yx/nQmMtrI/bGxa3Q0nv17K2q4uzMUrg6CzyBHy6NMcob3bTLeEQEQ==
X-Received: by 2002:a17:90a:8996:b0:2a2:83b0:5fad with SMTP id
 v22-20020a17090a899600b002a283b05fadmr4669920pjn.2.1712447739216; 
 Sat, 06 Apr 2024 16:55:39 -0700 (PDT)
Received: from visitorckw-System-Product-Name.. ([140.113.216.168])
 by smtp.gmail.com with ESMTPSA id
 bt8-20020a17090af00800b002a2b06ce909sm5460178pjb.17.2024.04.06.16.55.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Apr 2024 16:55:38 -0700 (PDT)
To: toke@toke.dk
Date: Sun,  7 Apr 2024 07:55:32 +0800
Message-Id: <20240406235532.613696-1-visitorckw@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: [Cake] [PATCH net-next] net: sched: cake: Optimize number of calls
	to cake_heapify()
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
From: Kuan-Wei Chiu via Cake <cake@lists.bufferbloat.net>
Reply-To: Kuan-Wei Chiu <visitorckw@gmail.com>
Cc: jiri@resnulli.us, netdev@vger.kernel.org, jhs@mojatatu.com,
 jserv@ccns.ncku.edu.tw, cake@lists.bufferbloat.net, edumazet@google.com,
 Kuan-Wei Chiu <visitorckw@gmail.com>, kuba@kernel.org,
 xiyou.wangcong@gmail.com, pabeni@redhat.com, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SW1wcm92ZSB0aGUgbWF4LWhlYXAgY29uc3RydWN0aW9uIHByb2Nlc3MgYnkgcmVkdWNpbmcgdW5u
ZWNlc3NhcnkKaGVhcGlmeSBvcGVyYXRpb25zLiBTcGVjaWZpY2FsbHksIGFkanVzdCB0aGUgc3Rh
cnRpbmcgY29uZGl0aW9uIGZyb20KbiAvIDIgdG8gbiAvIDIgLSAxIGluIHRoZSBsb29wIHRoYXQg
aXRlcmF0ZXMgb3ZlciBhbGwgbm9uLWxlYWYKZWxlbWVudHMuCgpTaWduZWQtb2ZmLWJ5OiBLdWFu
LVdlaSBDaGl1IDx2aXNpdG9yY2t3QGdtYWlsLmNvbT4KLS0tCiBuZXQvc2NoZWQvc2NoX2Nha2Uu
YyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL25ldC9zY2hlZC9zY2hfY2FrZS5jIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMK
aW5kZXggZWRlZTkyNmNjZGU4Li4yZWFiYzRkYzViNzkgMTAwNjQ0Ci0tLSBhL25ldC9zY2hlZC9z
Y2hfY2FrZS5jCisrKyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jCkBAIC0xNTEyLDcgKzE1MTIsNyBA
QCBzdGF0aWMgdW5zaWduZWQgaW50IGNha2VfZHJvcChzdHJ1Y3QgUWRpc2MgKnNjaCwgc3RydWN0
IHNrX2J1ZmYgKip0b19mcmVlKQogCWlmICghcS0+b3ZlcmZsb3dfdGltZW91dCkgewogCQlpbnQg
aTsKIAkJLyogQnVpbGQgZnJlc2ggbWF4LWhlYXAgKi8KLQkJZm9yIChpID0gQ0FLRV9NQVhfVElO
UyAqIENBS0VfUVVFVUVTIC8gMjsgaSA+PSAwOyBpLS0pCisJCWZvciAoaSA9IENBS0VfTUFYX1RJ
TlMgKiBDQUtFX1FVRVVFUyAvIDIgLSAxOyBpID49IDA7IGktLSkKIAkJCWNha2VfaGVhcGlmeShx
LCBpKTsKIAl9CiAJcS0+b3ZlcmZsb3dfdGltZW91dCA9IDY1NTM1OwotLSAKMi4zNC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcg
bGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldC9saXN0aW5mby9jYWtlCg==

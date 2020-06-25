Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8BE209DE5
	for <lists+cake@lfdr.de>; Thu, 25 Jun 2020 13:55:18 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 644253CB4D;
	Thu, 25 Jun 2020 07:55:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593086113;
	bh=hCMbAoOmaviFhKQYcGU7eQloLCTbdogLI9CqlGB0jqQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HtpIKmDPw9Ks1MEhUJrc2dplOg3kklMjMboskOPZuNqc/YU93t8mOwTq1gkAwkyrE
	 +0ONmUwNpqsy+wI6UmZQWV/PhHM77iUzZ4T3oQm5SDZKbdjroguQEaJwQbdItviSiM
	 R5FarKQTMZsBGAqsIlFRHVu33cq6cmSaWu9V2dMq/2CjS46jXCI3ukzxXmNw4QA3qz
	 tddsAVSnGtlCeUS2QjqjwDbRQOx8tX8ZeYXf0ATakaUb0r8fiTcuFdA37v0IVYUgxz
	 WHSHmpIrJTKwasJSi99BhCAlE9X5zoWQtzzcyZ7W+c+WACK2/YPvry/AToPrO20pxS
	 C7AbzImveMD+g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B59543CB38
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 07:55:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593086112;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wGT3qBYmtlNm7VbabgpoFKFwexBpZntpyA+fDg/nDwk=;
 b=gccqUEx9EYG6ayE8yqHup0hg8sA4R3Ozm0w7fLAcx1MO/RuDtfZed7d9qCrIWSId4Il09E
 LFiHggB1m3HHx7f0kIxQwYPktDsPQa5n8qoeQuvQxM+4VjCDMSIBEWdQNqDP6gIb09f7Zs
 1f8UVr9drQRI+Rwd4JBi9eSE3ZB2Cjw=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-394--IwUR0UrNfq1Wq8BI9xjGA-1; Thu, 25 Jun 2020 07:55:10 -0400
X-MC-Unique: -IwUR0UrNfq1Wq8BI9xjGA-1
Received: by mail-wm1-f71.google.com with SMTP id v6so4595409wmg.1
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 04:55:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=wGT3qBYmtlNm7VbabgpoFKFwexBpZntpyA+fDg/nDwk=;
 b=k61S9oDN9orN1X2QSvXCXuTsdoBA3PBv69oU3ltaPkhcl0Twtx3SVy9MrBPR3VIdPB
 jBPiqVlw01W/d7Q06VApuBMRnrZjlUR0VKxK2lcwSK/rUbFkG7IcmQH6qfiNK6wwVODz
 SpERx8NDrnLHf2bGITndt0Bn/0TXzJ6iMxnuOCxTiHVVfVysCxbW3JrCHjBBQeWOJFhk
 VUsAHFO05S3/sFg+QLEbhUSDS9MH8CFmdeRQ9KFHJZn7T5HDKY5oYh2+Ae2HBFL6Rj1S
 Ioaz2siBiT6TPLtOkCF1WVpPyf9f+bxM/8Q/pNN2W6/FL2H2kfeUUENWYjOImR59RUgi
 lbog==
X-Gm-Message-State: AOAM5307vWlol+OZm16rlxrk2f8Tex5Lxv+EEwwyrN/1ccw6pSPISbEo
 CQhAIMA05ior7i8Bv0+Qufh9htJGflHNjqFxDIyYiTHE3TYpCi+vJtusCYdrHkM7HlW9pfpeSB5
 vMW76F3Bg5xBv+8rwRyX8SQ==
X-Received: by 2002:adf:a507:: with SMTP id i7mr39279922wrb.0.1593086109446;
 Thu, 25 Jun 2020 04:55:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzGfAxqBQdT54TXBka/hC/Yk1+w80El0LGJCtPMPSOE33IV6f7u7la2SMPi+3u5TRNoTzTQSw==
X-Received: by 2002:adf:a507:: with SMTP id i7mr39279899wrb.0.1593086109201;
 Thu, 25 Jun 2020 04:55:09 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id g16sm27455995wrh.91.2020.06.25.04.55.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 04:55:08 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 409631814FA; Thu, 25 Jun 2020 13:55:07 +0200 (CEST)
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: David Miller <davem@davemloft.net>
Date: Thu, 25 Jun 2020 13:55:07 +0200
Message-ID: <159308610718.190211.15767931665695188384.stgit@toke.dk>
In-Reply-To: <159308610282.190211.9431406149182757758.stgit@toke.dk>
References: <159308610282.190211.9431406149182757758.stgit@toke.dk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Cake] [PATCH net-next 4/5] sch_cake: add RFC 8622 LE PHB support
 to CAKE diffserv handling
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
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogS2V2aW4gRGFyYnlzaGlyZS1CcnlhbnQgPGxkaXJAZGFyYnlzaGlyZS1icnlhbnQubWUu
dWs+CgpDaGFuZ2UgdGluIG1hcHBpbmcgb24gZGlmZnNlcnYzLCA0ICYgOCBmb3IgTEUgUEhCIHN1
cHBvcnQsIGluIGVzc2VuY2UKbWFraW5nIExFIGEgbWVtYmVyIG9mIHRoZSBCdWxrIHRpbi4KCkJ1
bGsgaGFzIHRoZSBsZWFzdCBwcmlvcml0eSBhbmQgbWluaW11bSBvZiAxLzE2dGggdG90YWwgYmFu
ZHdpZHRoIGluIHRoZQpmYWNlIG9mIGhpZ2hlciBwcmlvcml0eSB0cmFmZmljLgoKTkI6IERpZmZz
ZXJ2IDMgJiA0IHN3YXAgdGluIDAgJiAxIHByaW9yaXRpZXMgZnJvbSB0aGUgZGVmYXVsdCBvcmRl
ciBhcwpmb3VuZCBpbiBkaWZmc2VydjgsIGluIGNhc2UgYW55b25lIGlzIHdvbmRlcmluZyB3aHkg
aXQgbG9va3MgYSBiaXQgb2RkLgoKU2lnbmVkLW9mZi1ieTogS2V2aW4gRGFyYnlzaGlyZS1Ccnlh
bnQgPGxkaXJAZGFyYnlzaGlyZS1icnlhbnQubWUudWs+ClsgcmV3b3JkIGNvbW1pdCBtZXNzYWdl
IHNsaWdodGx5IF0KU2lnbmVkLW9mZi1ieTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tl
QHJlZGhhdC5jb20+Ci0tLQogbmV0L3NjaGVkL3NjaF9jYWtlLmMgfCAgICA4ICsrKystLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL25ldC9zY2hlZC9zY2hfY2FrZS5jIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMKaW5kZXggOTU4
NTIzYzc3N2JlLi43OGE3MDJhNGUxZDQgMTAwNjQ0Ci0tLSBhL25ldC9zY2hlZC9zY2hfY2FrZS5j
CisrKyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jCkBAIC0zMTIsOCArMzEyLDggQEAgc3RhdGljIGNv
bnN0IHU4IHByZWNlZGVuY2VbXSA9IHsKIH07CiAKIHN0YXRpYyBjb25zdCB1OCBkaWZmc2Vydjhb
XSA9IHsKLQkyLCA1LCAxLCAyLCA0LCAyLCAyLCAyLAotCTAsIDIsIDEsIDIsIDEsIDIsIDEsIDIs
CisJMiwgMCwgMSwgMiwgNCwgMiwgMiwgMiwKKwkxLCAyLCAxLCAyLCAxLCAyLCAxLCAyLAogCTUs
IDIsIDQsIDIsIDQsIDIsIDQsIDIsCiAJMywgMiwgMywgMiwgMywgMiwgMywgMiwKIAk2LCAyLCAz
LCAyLCAzLCAyLCAzLCAyLApAQCAtMzIzLDcgKzMyMyw3IEBAIHN0YXRpYyBjb25zdCB1OCBkaWZm
c2VydjhbXSA9IHsKIH07CiAKIHN0YXRpYyBjb25zdCB1OCBkaWZmc2VydjRbXSA9IHsKLQkwLCAy
LCAwLCAwLCAyLCAwLCAwLCAwLAorCTAsIDEsIDAsIDAsIDIsIDAsIDAsIDAsCiAJMSwgMCwgMCwg
MCwgMCwgMCwgMCwgMCwKIAkyLCAwLCAyLCAwLCAyLCAwLCAyLCAwLAogCTIsIDAsIDIsIDAsIDIs
IDAsIDIsIDAsCkBAIC0zMzQsNyArMzM0LDcgQEAgc3RhdGljIGNvbnN0IHU4IGRpZmZzZXJ2NFtd
ID0gewogfTsKIAogc3RhdGljIGNvbnN0IHU4IGRpZmZzZXJ2M1tdID0gewotCTAsIDAsIDAsIDAs
IDIsIDAsIDAsIDAsCisJMCwgMSwgMCwgMCwgMiwgMCwgMCwgMCwKIAkxLCAwLCAwLCAwLCAwLCAw
LCAwLCAwLAogCTAsIDAsIDAsIDAsIDAsIDAsIDAsIDAsCiAJMCwgMCwgMCwgMCwgMCwgMCwgMCwg
MCwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2Ug
bWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVm
ZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

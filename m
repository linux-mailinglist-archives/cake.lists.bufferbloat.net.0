Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F1420A693
	for <lists+cake@lfdr.de>; Thu, 25 Jun 2020 22:18:29 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CF2873CB38;
	Thu, 25 Jun 2020 16:18:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593116307;
	bh=rDCzJg43N2l/VGxceTc7VJxUYWaJWYfiBGwVNeEahpM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=cqJ4Q8oBhgmqMLdovQPHJhDcXdZ4HRN7FB8crCDgcNVUGEACHT47K4UB4V/TGmZhS
	 FZbWkJmbLxyXGTCA3dATfskGR8skNtbtcBIgy+f7wmj0dLzDXUer4h9T7DegL8h2Ow
	 NcJdmPjnG+68LLXMCC79xTlyY+zi4F8bGZAIABsL/iqhzq37r63vDdSEq97Rv2COCx
	 oMibv5tXBBh91ygxewvUVarkEhWMWeAPauziv1r/47VpnNlrTt3yFMivnOVpXAeV/p
	 3eJFxx008Y8fCv2FjjKkq5rpYS+AfQKETTKdhRp7kchfi8h1Pe+eqg2vsR+PbmIIGm
	 gtgMgxb/Ka4Kg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 89E2E3B29D
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 16:18:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593116306;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=2kgnFQhJlWYIVZyqdhxBuFSs3S0cXmmRAEAdW42hsxE=;
 b=gOEnHHgwLTsKQ2sTqye8Q7wRcflSYV2Ed+YxiRq/muWCj/eHDESEUR1vx+LQAy5AVy/0D8
 Av7OWw6cA5DRM0a5AoNiuBG6A8xrN5SsNer9teC71g/uCplzH/qISFE27wuPfOm8pC7feD
 5/Mc9+n2FyIjEr78q7n94HU7GZ+Oc+c=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-127-wv0n_oggOgSbQmbTaDXmfw-1; Thu, 25 Jun 2020 16:18:24 -0400
X-MC-Unique: wv0n_oggOgSbQmbTaDXmfw-1
Received: by mail-qk1-f200.google.com with SMTP id i62so4948244qkd.18
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 13:18:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2kgnFQhJlWYIVZyqdhxBuFSs3S0cXmmRAEAdW42hsxE=;
 b=uoAh1jiKtdGlS6l7wyDFwLCa56HznOQnBuHlygVBbe7RCUtJrHlA0Xtpf4VEBlsGCd
 JImvuraPLXej5JwrZOm24Rwvv46ruLhYaxaWJHFjLdU5IsHFIj8IPC4s9UE7H3VVmqf9
 GnJACettLSH17C/0C4hjqvx/uwUSYlWocEZ3JcpzWkh/6uVZOqACW7oErLQACCv86k19
 /cGolzbA2QL7J1uuL7KBbcDnNsE+ngJRgOqKLESmYNheGrW5wJHKRNSJj0n5tbjMXZE2
 eOpamMS7VHhkIn7p0cBkmkK5ZCVHHXD4UZVfk9TtESe3X2tJjLvNIk8Urblb0s0HJn4E
 Uimg==
X-Gm-Message-State: AOAM530xvOHzd5c9g1B6rG7OXEYBCp5ZPgL+VTM5UfHrFrI7FFD+4gbg
 iI+OKI/bsAdhqsqeyd+xpZFL/O2rd4uX6VLgtTw8QcQ0E5ZsGi6hn0jlTVlgNcL00lAsn2oPB2m
 7V8aYLxW8kCWTlBytEOyH/w==
X-Received: by 2002:ac8:7ca1:: with SMTP id z1mr31613246qtv.334.1593116304153; 
 Thu, 25 Jun 2020 13:18:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxPw7Hd5yhXoSJ+f27tRx1i2Hjw/rvc0rjOQWLFSubyb0otYpjZLlgpUzedX7L1+gto6vD0Mw==
X-Received: by 2002:ac8:7ca1:: with SMTP id z1mr31613228qtv.334.1593116303907; 
 Thu, 25 Jun 2020 13:18:23 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id y16sm6647763qkb.116.2020.06.25.13.18.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 13:18:23 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 594941814F9; Thu, 25 Jun 2020 22:18:20 +0200 (CEST)
From: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: David Miller <davem@davemloft.net>
Date: Thu, 25 Jun 2020 22:18:00 +0200
Message-Id: <20200625201800.208689-1-toke@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Cake] [PATCH RESEND net-next] sch_cake: add RFC 8622 LE PHB
	support to CAKE diffserv handling
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
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
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
QHJlZGhhdC5jb20+Ci0tLQpSZXNlbmRpbmcgdGhpcyBhcyBzdGFuZGFsb25lIGFmdGVyIHNwbGl0
dGluZyBvdXQgdGhlIHJlc3Qgb2YgdGhlIHNlcmllcyB0byAtbmV0CgogbmV0L3NjaGVkL3NjaF9j
YWtlLmMgfCA4ICsrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL25ldC9zY2hlZC9zY2hfY2FrZS5jIGIvbmV0L3NjaGVk
L3NjaF9jYWtlLmMKaW5kZXggNjBmOGFlNTc4ODE5Li5jYWUzNjc1MTU4MDQgMTAwNjQ0Ci0tLSBh
L25ldC9zY2hlZC9zY2hfY2FrZS5jCisrKyBiL25ldC9zY2hlZC9zY2hfY2FrZS5jCkBAIC0zMTIs
OCArMzEyLDggQEAgc3RhdGljIGNvbnN0IHU4IHByZWNlZGVuY2VbXSA9IHsKIH07CiAKIHN0YXRp
YyBjb25zdCB1OCBkaWZmc2VydjhbXSA9IHsKLQkyLCA1LCAxLCAyLCA0LCAyLCAyLCAyLAotCTAs
IDIsIDEsIDIsIDEsIDIsIDEsIDIsCisJMiwgMCwgMSwgMiwgNCwgMiwgMiwgMiwKKwkxLCAyLCAx
LCAyLCAxLCAyLCAxLCAyLAogCTUsIDIsIDQsIDIsIDQsIDIsIDQsIDIsCiAJMywgMiwgMywgMiwg
MywgMiwgMywgMiwKIAk2LCAyLCAzLCAyLCAzLCAyLCAzLCAyLApAQCAtMzIzLDcgKzMyMyw3IEBA
IHN0YXRpYyBjb25zdCB1OCBkaWZmc2VydjhbXSA9IHsKIH07CiAKIHN0YXRpYyBjb25zdCB1OCBk
aWZmc2VydjRbXSA9IHsKLQkwLCAyLCAwLCAwLCAyLCAwLCAwLCAwLAorCTAsIDEsIDAsIDAsIDIs
IDAsIDAsIDAsCiAJMSwgMCwgMCwgMCwgMCwgMCwgMCwgMCwKIAkyLCAwLCAyLCAwLCAyLCAwLCAy
LCAwLAogCTIsIDAsIDIsIDAsIDIsIDAsIDIsIDAsCkBAIC0zMzQsNyArMzM0LDcgQEAgc3RhdGlj
IGNvbnN0IHU4IGRpZmZzZXJ2NFtdID0gewogfTsKIAogc3RhdGljIGNvbnN0IHU4IGRpZmZzZXJ2
M1tdID0gewotCTAsIDAsIDAsIDAsIDIsIDAsIDAsIDAsCisJMCwgMSwgMCwgMCwgMiwgMCwgMCwg
MCwKIAkxLCAwLCAwLCAwLCAwLCAwLCAwLCAwLAogCTAsIDAsIDAsIDAsIDAsIDAsIDAsIDAsCiAJ
MCwgMCwgMCwgMCwgMCwgMCwgMCwgMCwKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Fr
ZQo=

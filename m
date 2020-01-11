Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A9A138235
	for <lists+cake@lfdr.de>; Sat, 11 Jan 2020 16:59:47 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 481833CB3C;
	Sat, 11 Jan 2020 10:59:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1578758386;
	bh=vNl88jdd6/fyO+zf0XgFTJ6U8K8VVtvS3sbCt4tnYHw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d6QlFN6PhORDxkT/LT1zc/GNLyZ1RfqR6aSgxo+oLh3zUpzGIYWy87WOcn3b6bEVz
	 V6oVNVugJ7nFlkjmBvZP/J/UGiDsuKRlGwOIu+bDA4h6/I6epNHmA+qN7Dq3KqtGqs
	 mrQN3kRE1BO3k7sKuFx1D4MNkTRrS4Wt916UlJfg/ACsFI2YlrCO9IEqTE+ZlR6z32
	 CKgZfus9A9c1/hdjN6frT7/fdZfn+QmlkRWH8nIsbAwFfejHlXIxF2zKBEG5aM+ONH
	 5TE5DsFTh+X0p19Yz+2LA0XSHleMman+c8AGzmTWqLTsDi7G3LAtulE2jmUL6+blNP
	 QZZDo+2KmHVzw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 33D623B2A4
 for <cake@lists.bufferbloat.net>; Sat, 11 Jan 2020 05:33:18 -0500 (EST)
Received: from localhost (unknown [62.119.166.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 258A320842;
 Sat, 11 Jan 2020 10:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578738797;
 bh=3s5JAX5Q2ODEjcC2HpUaI66ihhczXZpmWqli7dJibxU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ATaFfo20IkngoTDMZUK5hCOVAQBwZf/0VXTcrJH9miBnIU2MUhs5XwQ8wZZXySMXx
 w9ae/4kQjc4AXOE4lOkEPCIeVzsQ5YONt/rCyqzxoQ0BM8rqnboBc/vuKjWGiUz/Ww
 xUO1n3fvQw4OShYchTBQzCI+aVnp0gqE6bBeZ+KY=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Date: Sat, 11 Jan 2020 10:51:06 +0100
Message-Id: <20200111094939.776468385@linuxfoundation.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200111094921.347491861@linuxfoundation.org>
References: <20200111094921.347491861@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-Mailman-Approved-At: Sat, 11 Jan 2020 10:59:44 -0500
Subject: [Cake] [PATCH 5.4 147/165] sch_cake: avoid possible divide by zero
	in cake_enqueue()
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
Cc: Wen Yang <wenyang@linux.alibaba.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org,
 cake@lists.bufferbloat.net, netdev@vger.kernel.org,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
 Cong Wang <xiyou.wangcong@gmail.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogV2VuIFlhbmcgPHdlbnlhbmdAbGludXguYWxpYmFiYS5jb20+CgpbIFVwc3RyZWFtIGNv
bW1pdCA2OGFhYjgyM2MyMjM2NDZmYWIzMTFmOGE2NTgxOTk0ZmFjZWU2NmEwIF0KClRoZSB2YXJp
YWJsZXMgJ3dpbmRvd19pbnRlcnZhbCcgaXMgdTY0IGFuZCBkb19kaXYoKQp0cnVuY2F0ZXMgaXQg
dG8gMzIgYml0cywgd2hpY2ggbWVhbnMgaXQgY2FuIHRlc3QKbm9uLXplcm8gYW5kIGJlIHRydW5j
YXRlZCB0byB6ZXJvIGZvciBkaXZpc2lvbi4KVGhlIHVuaXQgb2Ygd2luZG93X2ludGVydmFsIGlz
IG5hbm9zZWNvbmRzLApzbyBpdHMgbG93ZXIgMzItYml0IGlzIHJlbGF0aXZlbHkgZWFzeSB0byBl
eGNlZWQuCkZpeCB0aGlzIGlzc3VlIGJ5IHVzaW5nIGRpdjY0X3U2NCgpIGluc3RlYWQuCgpGaXhl
czogNzI5OGRlOWNkNzI1ICgic2NoX2Nha2U6IEFkZCBpbmdyZXNzIG1vZGUiKQpTaWduZWQtb2Zm
LWJ5OiBXZW4gWWFuZyA8d2VueWFuZ0BsaW51eC5hbGliYWJhLmNvbT4KQ2M6IEtldmluIERhcmJ5
c2hpcmUtQnJ5YW50IDxsZGlyQGRhcmJ5c2hpcmUtYnJ5YW50Lm1lLnVrPgpDYzogVG9rZSBIw7hp
bGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CkNjOiBEYXZpZCBTLiBNaWxsZXIgPGRh
dmVtQGRhdmVtbG9mdC5uZXQ+CkNjOiBDb25nIFdhbmcgPHhpeW91Lndhbmdjb25nQGdtYWlsLmNv
bT4KQ2M6IGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0CkNjOiBuZXRkZXZAdmdlci5rZXJuZWwu
b3JnCkNjOiBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnCkFja2VkLWJ5OiBUb2tlIEjDuGls
YW5kLUrDuHJnZW5zZW4gPHRva2VAdG9rZS5kaz4KU2lnbmVkLW9mZi1ieTogRGF2aWQgUy4gTWls
bGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PgpTaWduZWQtb2ZmLWJ5OiBHcmVnIEtyb2FoLUhhcnRt
YW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgotLS0KIG5ldC9zY2hlZC9zY2hfY2FrZS5j
IHwgICAgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
CgotLS0gYS9uZXQvc2NoZWQvc2NoX2Nha2UuYworKysgYi9uZXQvc2NoZWQvc2NoX2Nha2UuYwpA
QCAtMTc2OSw3ICsxNzY5LDcgQEAgc3RhdGljIHMzMiBjYWtlX2VucXVldWUoc3RydWN0IHNrX2J1
ZmYgKgogCQkJCQkJICAgICAgcS0+YXZnX3dpbmRvd19iZWdpbikpOwogCQkJdTY0IGIgPSBxLT5h
dmdfd2luZG93X2J5dGVzICogKHU2NClOU0VDX1BFUl9TRUM7CiAKLQkJCWRvX2RpdihiLCB3aW5k
b3dfaW50ZXJ2YWwpOworCQkJYiA9IGRpdjY0X3U2NChiLCB3aW5kb3dfaW50ZXJ2YWwpOwogCQkJ
cS0+YXZnX3BlYWtfYmFuZHdpZHRoID0KIAkJCQljYWtlX2V3bWEocS0+YXZnX3BlYWtfYmFuZHdp
ZHRoLCBiLAogCQkJCQkgIGIgPiBxLT5hdmdfcGVha19iYW5kd2lkdGggPyAyIDogOCk7CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo=

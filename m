Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E7153138234
	for <lists+cake@lfdr.de>; Sat, 11 Jan 2020 16:59:47 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 324B43CB38;
	Sat, 11 Jan 2020 10:59:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1578758386;
	bh=j06sm9YVPcXSZIe8ESZ8inqlei6zld053Zin31PYL3A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A+B7AFyhIrJ7aN9Daw9Y2eVWzXTKvHMe+8W8ucbYzc3/fXHC7itO4vzZWE8uwkNdA
	 BR0rkM1BxpTf6OXhYqCPJVpcUF2JbD+SAXWm1krvMX3C9pPNMaNFEpMV+SbmE7zPIi
	 aZXnsiGX3JZVcG4Nt2ETRTy4Re5J6xju+M0bInRs2em096pXqYCNa+dgrAGcQQz5Sp
	 TNVgz/oGIQDKeiqX2tSnKdB1gXdHmdIEtN96QUdkrE/RKtybefAI0SY8hp300uF/kg
	 gbdwXrLQnl+l7ie/RUu/PYyYjsYnxfWpugvPA+FBW5kFAXNtRFiqm4mkdi/VV//NmP
	 mysvR/D5SpN6A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 457913B2A4
 for <cake@lists.bufferbloat.net>; Sat, 11 Jan 2020 05:18:41 -0500 (EST)
Received: from localhost (unknown [62.119.166.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 29A9020842;
 Sat, 11 Jan 2020 10:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578737920;
 bh=mcjFmwhwJrbakRmABQ1xRFN6l3QsdshO9EqfWV3t6OE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=V4QwhqXoiXRUBBEly3h4M+CMX/Qm9RO+rJdWfo3BiqYs+ceBM1ez9axlAixx60MXK
 +Kjus9Ke6fuJXbek4MlfDnMePv4SBlCNjKenf5gbIAQejuJfFd5tb7Bu/VAaf07g7c
 9CxiLhsIbiEEo3MV2ELW1sWp2IAroeuvwZkbYCkc=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Date: Sat, 11 Jan 2020 10:50:50 +0100
Message-Id: <20200111094911.801043901@linuxfoundation.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200111094845.328046411@linuxfoundation.org>
References: <20200111094845.328046411@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-Mailman-Approved-At: Sat, 11 Jan 2020 10:59:44 -0500
Subject: [Cake] [PATCH 4.19 73/84] sch_cake: avoid possible divide by zero
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
QCAtMTc1OCw3ICsxNzU4LDcgQEAgc3RhdGljIHMzMiBjYWtlX2VucXVldWUoc3RydWN0IHNrX2J1
ZmYgKgogCQkJCQkJICAgICAgcS0+YXZnX3dpbmRvd19iZWdpbikpOwogCQkJdTY0IGIgPSBxLT5h
dmdfd2luZG93X2J5dGVzICogKHU2NClOU0VDX1BFUl9TRUM7CiAKLQkJCWRvX2RpdihiLCB3aW5k
b3dfaW50ZXJ2YWwpOworCQkJYiA9IGRpdjY0X3U2NChiLCB3aW5kb3dfaW50ZXJ2YWwpOwogCQkJ
cS0+YXZnX3BlYWtfYmFuZHdpZHRoID0KIAkJCQljYWtlX2V3bWEocS0+YXZnX3BlYWtfYmFuZHdp
ZHRoLCBiLAogCQkJCQkgIGIgPiBxLT5hdmdfcGVha19iYW5kd2lkdGggPyAyIDogOCk7CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo=

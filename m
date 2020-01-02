Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8090512E651
	for <lists+cake@lfdr.de>; Thu,  2 Jan 2020 14:05:06 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id ADC7B3CB38;
	Thu,  2 Jan 2020 08:05:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1577970304;
	bh=hfrqUAG0DxzDaQ3pkG7hj49os2zYpLVajXeyxgzmO5A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=U4Y52V18AeMZ9Uhw6R7nN1c7rK4txIHf6HdObjg2XU93rorZ+7MFDopbM1UDqeCtc
	 iL7/IlgLWwiSR2epmGXVAfPr8BYupa/6Zdqb4yQqRa3L+6qem5LyubQcP1RuKUP/g8
	 ts3UDPBC0PQD8W7bZxOoa6tgJ/YK2KO3bWeB45WuWYOUWRlophJWR8lRN1qLGsuN/P
	 h9ZulXZEYsoFEVz+5NkpyDYBWXfV8Ye0/ZvU4MEEd9OAiWzsxSwtoi1OTx/hjoRDLu
	 7awZKADDMB1SfhAHY1+WFrhK2dSS5D/GYbhGtofT1zAhdvXKytu6DXrSF2TZpVrSGV
	 ot12M4klRSj4g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from out30-132.freemail.mail.aliyun.com
 (out30-132.freemail.mail.aliyun.com [115.124.30.132])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CEC903B2A4
 for <cake@lists.bufferbloat.net>; Thu,  2 Jan 2020 04:21:57 -0500 (EST)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R111e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04395; MF=wenyang@linux.alibaba.com;
 NM=1; PH=DS; RN=9; SR=0; TI=SMTPD_---0TmbxYO7_1577956905; 
Received: from localhost(mailfrom:wenyang@linux.alibaba.com
 fp:SMTPD_---0TmbxYO7_1577956905) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 02 Jan 2020 17:21:53 +0800
From: Wen Yang <wenyang@linux.alibaba.com>
To: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Date: Thu,  2 Jan 2020 17:21:43 +0800
Message-Id: <20200102092143.8971-1-wenyang@linux.alibaba.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 02 Jan 2020 08:05:03 -0500
Subject: [Cake] [PATCH] sch_cake: avoid possible divide by zero in
	cake_enqueue()
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
Cc: Wen Yang <wenyang@linux.alibaba.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, cake@lists.bufferbloat.net,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
 Cong Wang <xiyou.wangcong@gmail.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGhlIHZhcmlhYmxlcyAnd2luZG93X2ludGVydmFsJyBpcyB1NjQgYW5kIGRvX2RpdigpCnRydW5j
YXRlcyBpdCB0byAzMiBiaXRzLCB3aGljaCBtZWFucyBpdCBjYW4gdGVzdApub24temVybyBhbmQg
YmUgdHJ1bmNhdGVkIHRvIHplcm8gZm9yIGRpdmlzaW9uLgpUaGUgdW5pdCBvZiB3aW5kb3dfaW50
ZXJ2YWwgaXMgbmFub3NlY29uZHMsCnNvIGl0cyBsb3dlciAzMi1iaXQgaXMgcmVsYXRpdmVseSBl
YXN5IHRvIGV4Y2VlZC4KRml4IHRoaXMgaXNzdWUgYnkgdXNpbmcgZGl2NjRfdTY0KCkgaW5zdGVh
ZC4KCkZpeGVzOiA3Mjk4ZGU5Y2Q3MjUgKCJzY2hfY2FrZTogQWRkIGluZ3Jlc3MgbW9kZSIpClNp
Z25lZC1vZmYtYnk6IFdlbiBZYW5nIDx3ZW55YW5nQGxpbnV4LmFsaWJhYmEuY29tPgpDYzogS2V2
aW4gRGFyYnlzaGlyZS1CcnlhbnQgPGxkaXJAZGFyYnlzaGlyZS1icnlhbnQubWUudWs+CkNjOiBU
b2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4KQ2M6IERhdmlkIFMuIE1p
bGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4KQ2M6IENvbmcgV2FuZyA8eGl5b3Uud2FuZ2NvbmdA
Z21haWwuY29tPgpDYzogY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKQ2M6IG5ldGRldkB2Z2Vy
Lmtlcm5lbC5vcmcKQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKLS0tCiBuZXQvc2No
ZWQvc2NoX2Nha2UuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL25ldC9zY2hlZC9zY2hfY2FrZS5jIGIvbmV0L3NjaGVk
L3NjaF9jYWtlLmMKaW5kZXggNmNjM2FiMS4uOTBlZjdjYyAxMDA2NDQKLS0tIGEvbmV0L3NjaGVk
L3NjaF9jYWtlLmMKKysrIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMKQEAgLTE3NjgsNyArMTc2OCw3
IEBAIHN0YXRpYyBzMzIgY2FrZV9lbnF1ZXVlKHN0cnVjdCBza19idWZmICpza2IsIHN0cnVjdCBR
ZGlzYyAqc2NoLAogCQkJCQkJICAgICAgcS0+YXZnX3dpbmRvd19iZWdpbikpOwogCQkJdTY0IGIg
PSBxLT5hdmdfd2luZG93X2J5dGVzICogKHU2NClOU0VDX1BFUl9TRUM7CiAKLQkJCWRvX2Rpdihi
LCB3aW5kb3dfaW50ZXJ2YWwpOworCQkJYiA9IGRpdjY0X3U2NChiLCB3aW5kb3dfaW50ZXJ2YWwp
OwogCQkJcS0+YXZnX3BlYWtfYmFuZHdpZHRoID0KIAkJCQljYWtlX2V3bWEocS0+YXZnX3BlYWtf
YmFuZHdpZHRoLCBiLAogCQkJCQkgIGIgPiBxLT5hdmdfcGVha19iYW5kd2lkdGggPyAyIDogOCk7
Ci0tIAoxLjguMy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczov
L2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

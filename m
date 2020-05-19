Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 236281DA4AB
	for <lists+cake@lfdr.de>; Wed, 20 May 2020 00:40:30 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B55943CB38;
	Tue, 19 May 2020 18:40:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1589928027;
	bh=McLGf6P5y4R7J/viULya7oA7cmrjiAoCGisV+4uLwVc=;
	h=Date:To:From:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L5KP6uk+wVFjmyOmXBSDE/Vp05hyrXHcI/W2Zshhm+vm6BCZ3ow9Ify94tGI3rKL+
	 fPDNDlC9h3FaFTYRvrx0K+KRyEQ6OkJu60zs+uI2Fk963HIGkE5k06LYj/rRQr2U0b
	 5Ko9r4t9GT81ezs6wVhXqpJ+qTc+1VPJYh9mOpU2oe0fsf2XONfrUy/ID2ORszaLVp
	 8yKdzztkg0yWgjUBAAaFKGWbWJOiY7J8lNx8gjNGoKP6euawJ2/B7sER4GHxNhnuG0
	 3+em0EnEGBNQdNnJCCALWVjE63x2sb0PztBiL03sgYnDbXlgrA3MzLT6KQBxKaOTiE
	 Np9f0KC4e6U+Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net
 [IPv6:2620:137:e000::1:9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 818E03B2A4
 for <cake@lists.bufferbloat.net>; Tue, 19 May 2020 18:40:26 -0400 (EDT)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 6863E128EDAD5;
 Tue, 19 May 2020 15:40:20 -0700 (PDT)
Date: Tue, 19 May 2020 15:40:19 -0700 (PDT)
Message-Id: <20200519.154019.1247104207621510920.davem@davemloft.net>
To: a@unstable.cc
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200519091333.20923-1-a@unstable.cc>
References: <20200519091333.20923-1-a@unstable.cc>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 19 May 2020 15:40:20 -0700 (PDT)
Subject: Re: [Cake] [PATCH] net/sch_generic.h: use sizeof_member() and get
 rid of unused variable
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org, jhs@mojatatu.com,
 cake@lists.bufferbloat.net, xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RnJvbTogQW50b25pbyBRdWFydHVsbGkgPGFAdW5zdGFibGUuY2M+DQpEYXRlOiBUdWUsIDE5IE1h
eSAyMDIwIDExOjEzOjMzICswMjAwDQoNCj4gQ29tcGlsaW5nIHdpdGggLVd1bnVzZWQgdHJpZ2dl
cnMgdGhlIGZvbGxvd2luZyB3YXJuaW5nOg0KPiANCj4gLi9pbmNsdWRlL25ldC9zY2hfZ2VuZXJp
Yy5oOiBJbiBmdW5jdGlvbiDigJhxZGlzY19jYl9wcml2YXRlX3ZhbGlkYXRl4oCZOg0KPiAuL2lu
Y2x1ZGUvbmV0L3NjaF9nZW5lcmljLmg6NDY0OjIzOiB3YXJuaW5nOiB1bnVzZWQgdmFyaWFibGUg
4oCYcWNi4oCZIFstV3VudXNlZC12YXJpYWJsZV0NCj4gICA0NjQgfCAgc3RydWN0IHFkaXNjX3Nr
Yl9jYiAqcWNiOw0KPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICBefn4NCj4gDQo+IGFz
IHRoZSBxY2IgdmFyaWFibGUgaXMgb25seSB1c2VkIHRvIGNvbXB1dGUgdGhlIHNpemVvZiBvbmUg
b2YgaXRzIG1lbWJlcnMuDQoNCkl0J3MgcmVmZXJlbmNlZCBpbiB0aGUgY29kZSwgdGhlcmVmb3Jl
IGl0IGlzIG5vdCAidW51c2VkIi4NCg0KSWYgaW4gc29tZSBjb25maWd1cmF0aW9uIEJVSUxEX0JV
R19PTigpIGRvZXMgbm90IHJlZmVyZW5jZSBpdCdzIGFyZ3VtZW50cywNCnRoYXQncyB0aGUgYnVn
IHRoYXQgbmVlZHMgdG8gYmUgZml4ZWQuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

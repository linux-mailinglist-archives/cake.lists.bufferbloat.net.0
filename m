Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 223B25A8BC8
	for <lists+cake@lfdr.de>; Thu,  1 Sep 2022 05:07:31 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 376993CB46;
	Wed, 31 Aug 2022 23:07:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1662001649;
	bh=DyWcnE2PS/XVlXyg/K4FU3iUsUBP1LIjhVNFBNrTn8I=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=RPEOxezyjS5X/txpoDHTpCWdbNDfy3TMUra+x0hPnu911l0w4U9G+RYQlcHP9RIP+
	 ih5yix1AUxhC0JNqLHEYkQjtuvJ2ADl8hTsDEWTAF/Xja7KvVVFQgnlJKbCg22Wc6C
	 clWuSCfgv/6om4qyAJbdnhoYhMcnC7AH+D6dsGvqnAZRnsWN+zdELrR1qHKGVB/7Fe
	 tH7YcLlUUUgELmNh6aGeunz9QgkedgeeqEScxPTNK/v8p/6RKqDEp9phYYlEnAvJo7
	 b1ipwiCMr8fUjKIyGyWGf5Cx7QYqnIncNoWdZSudK4Y8ivwaM3WxCp6iW4IvzQy/tT
	 18K8VYjsG8b8w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4F0E73B2A4
 for <cake@lists.bufferbloat.net>; Wed, 31 Aug 2022 23:07:27 -0400 (EDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id AC7CD61DB4;
 Thu,  1 Sep 2022 03:07:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6AE5C433C1;
 Thu,  1 Sep 2022 03:07:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1662001646;
 bh=LahCQU1Yp63NFF6hiKZaYkZaJGq5KeO/cKvqx+TbI6o=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=tXN1ju4OGcD6pgPUXmSN0IRN/OOyZaFlb0N6EkxUYL6pGx2fsaL/Bz+3KG2kJXUPl
 Yzi2FaqBSktHhrvO5Izo4jrInpwE3Gs0hw3stxvTeRrVUJJ3PxZ/ob508s0qpl2VHe
 YzfGLqX1Go4V+vClOqeDHHHqvU95JNukHeaXrIJxrAoUfP/lDQvtBdfy73G9/0wsB0
 vUrPjl15XzvNd/6nTjbfAhr65nv9WpQ5zgeKplOvFX4GiSDv10WlrYMNKnlHEeLcsY
 M1BoMXex919U+ZwDCAWdipkpay95M4jWdDzez2BrVSCPvneAxkb6fK+nliFa7H668r
 P8hEgZAYdfkIw==
Date: Wed, 31 Aug 2022 20:07:24 -0700
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@toke.dk>
Message-ID: <20220831200724.45cb3b99@kernel.org>
In-Reply-To: <87wnao2ha3.fsf@toke.dk>
References: <20220831092103.442868-1-toke@toke.dk>
 <166198321517.20200.12054704879498725145.git-patchwork-notify@kernel.org>
 <87wnao2ha3.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [PATCH net] sch_cake: Return __NET_XMIT_STOLEN when
 consuming enqueued skb
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
From: Jakub Kicinski via Cake <cake@lists.bufferbloat.net>
Reply-To: Jakub Kicinski <kuba@kernel.org>
Cc: jiri@resnulli.us, netdev@vger.kernel.org, jhs@mojatatu.com,
 cake@lists.bufferbloat.net, edumazet@google.com, xiyou.wangcong@gmail.com,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVGh1LCAwMSBTZXAgMjAyMiAwMDoxMzoyNCArMDIwMCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cj4gQWgsIGNyb3NzZWQgc3RyZWFtcyAoanVzdCBzZW50IHYyWzBdKS4KClNvcnJ5
IGFib3V0IHRoYXQsIHRyYXZlbGluZyBrbm9ja2VkIG91dCBteSBzZW5zZSBvZiB0aW1lIGFuZCBJ
IGtlcHQKdGhpbmtpbmcgaXQncyBUaHVyc2RheSwgYW5kIHRoZSBkaXNjdXNzaW9uIGhhcHBlbmVk
IHllc3RlcmRheSA6UwoKPiBIbW0sIG9rYXksIHNvIGFzIG5vdGVkIGluIHRoZSBjaGFuZ2Vsb2cg
dG8gdjIsIGp1c3QgdGhpcyBwYXRjaCB3aWxsCj4gYnJlYWsgaHRiK2Nha2UgKGJlY2F1c2UgaHRi
IHdpbGwgbm93IHNraXAgaHRiX2FjdGl2YXRlKCkpOyBkbyB5b3UgcHJlZmVyCj4gdGhhdCBJIHNl
bmQgYSBmb2xsb3ctdXAgdG8gZml4IEhUQiBpbiB0aGlzIG1vZGUsIG9yIHRvIHJldmVydCB0aGlz
IGFuZAo+IGFwcGx5IHRoZSBmaXggdG8gc2ZiIGluIHYyIGluc3RlYWQ/CgpSZXZlcnRlZC4gTGV0
J3MgcmV2aWV3IHYyIGFzIGlmIHYxIHdhcyBub3QgYXBwbGllZC4KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=

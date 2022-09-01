Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 246455A9302
	for <lists+cake@lfdr.de>; Thu,  1 Sep 2022 11:20:17 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0387E3CB47;
	Thu,  1 Sep 2022 05:20:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1662024015;
	bh=1ktw/Y6dZ68vzOgP4T6UQM4xVAHj3ZUOqQi178fXKvs=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=TgZyBj/735F40CknCPpJqhd2OrMWl4P+CaJnXE1m2e5nFfAgIf6AovBsv0qJL4q8+
	 g2bXAhEFA0/HOZBeR2nIhYEmOsIDtk0qiWI09aq6nxbmkXnjrQuw39tx6YlqDVFOik
	 JVUZfxmt2COJyHpqh2q8lzR9HZPqZcWVxcGABI5sXpe/g/V4Qtuaz5U+81F0LFaQBv
	 RcyEmg0xkwtFrhInFKh30YC2oyA8xDeJS+KOuUw9Cu8Mtq8P9p9UtOZa0o2AleSuXa
	 8BMkwqeyu1apSm6HnQqI8U01Xp8dhkXH2ePObS2Be1Xo4xE13l4PpJghVUKB5n310O
	 qea0PzsAxdMwg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AF5883B2A4
 for <cake@lists.bufferbloat.net>; Thu,  1 Sep 2022 05:20:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1662024011; bh=jE5aYXO5o+Pv7NuDIL7qCOKMA3u6a/q/Wk8R4ae8zoQ=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=WOmlZIk6jD7HCE5cf46aavc8CYHK5cF9AP2cbBNU5YP+d5fR+tsqH2FNhKPHajXD3
 T7QXhiSARVEubXC7AD30sK3SJA2v7NjcC0PYS476Mi3Nfd2dzK52n6AmIubepHbpLX
 9ypmJ6D1cA7RL9ZXqOducikB+RHPTukQCnFcdXKcByXlWWuDgu/hQ5o4c2ypwmiQ9T
 04R+MGCJWq3N4Kz8JQ6WVI0yHcZv0QhAZncHkGt1s898hFAUIxsLPcwKXVX2UnHsJV
 yDHSm/NtNhX0NfoLyFRKZQ2rR8fKweEh3aRQZ+AO5bsd9Wk/RyMzo12duYZhVKhx4v
 8JFMIOWL4tOxQ==
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20220831200724.45cb3b99@kernel.org>
References: <20220831092103.442868-1-toke@toke.dk>
 <166198321517.20200.12054704879498725145.git-patchwork-notify@kernel.org>
 <87wnao2ha3.fsf@toke.dk> <20220831200724.45cb3b99@kernel.org>
Date: Thu, 01 Sep 2022 11:20:10 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87fshb30z9.fsf@toke.dk>
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Cc: jiri@resnulli.us, netdev@vger.kernel.org, jhs@mojatatu.com,
 cake@lists.bufferbloat.net, edumazet@google.com, xiyou.wangcong@gmail.com,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4gd3JpdGVzOgoKPiBPbiBUaHUsIDAxIFNl
cCAyMDIyIDAwOjEzOjI0ICswMjAwIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4g
QWgsIGNyb3NzZWQgc3RyZWFtcyAoanVzdCBzZW50IHYyWzBdKS4KPgo+IFNvcnJ5IGFib3V0IHRo
YXQsIHRyYXZlbGluZyBrbm9ja2VkIG91dCBteSBzZW5zZSBvZiB0aW1lIGFuZCBJIGtlcHQKPiB0
aGlua2luZyBpdCdzIFRodXJzZGF5LCBhbmQgdGhlIGRpc2N1c3Npb24gaGFwcGVuZWQgeWVzdGVy
ZGF5IDpTCgpIYWhhLCBPSywgbm8gd29ycmllcyA6KQoKPj4gSG1tLCBva2F5LCBzbyBhcyBub3Rl
ZCBpbiB0aGUgY2hhbmdlbG9nIHRvIHYyLCBqdXN0IHRoaXMgcGF0Y2ggd2lsbAo+PiBicmVhayBo
dGIrY2FrZSAoYmVjYXVzZSBodGIgd2lsbCBub3cgc2tpcCBodGJfYWN0aXZhdGUoKSk7IGRvIHlv
dSBwcmVmZXIKPj4gdGhhdCBJIHNlbmQgYSBmb2xsb3ctdXAgdG8gZml4IEhUQiBpbiB0aGlzIG1v
ZGUsIG9yIHRvIHJldmVydCB0aGlzIGFuZAo+PiBhcHBseSB0aGUgZml4IHRvIHNmYiBpbiB2MiBp
bnN0ZWFkPwo+Cj4gUmV2ZXJ0ZWQuIExldCdzIHJldmlldyB2MiBhcyBpZiB2MSB3YXMgbm90IGFw
cGxpZWQuCgpTR1RNIQoKLVRva2UKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
aHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

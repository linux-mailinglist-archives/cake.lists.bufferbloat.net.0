Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4843A3C3EEA
	for <lists+cake@lfdr.de>; Sun, 11 Jul 2021 21:57:18 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A98233CB39;
	Sun, 11 Jul 2021 15:57:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1626033436;
	bh=iAb1JQCZ9lIHk+1b0ZDqVlK2pz3sjbLNhX36ZobTzVU=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=NySNVMLCvekp4C7GWhpOyIcErl686AyaUOkVj31MVf1hI5KID138XA53j92xwMHDe
	 /E2lnooKtanj81dM58/U0ygRt9zccgELz1eja5IO+OZvwQhv6RrYkLTKGYnVh7cx6v
	 fYbBmOHzNys+osWgVfTwKb3DGgrX1+pzWheYHYpO66YwyXH7hpWojfLUhldM0hTx7D
	 GbSaHJSCdPbyEMDnDyJ1ZzuqJBi4fKcNHgdd7X4dFfYwtb2xFRaFnOc3rMnRQ7sPQH
	 aA0czov8M681lZ/8ltB0B2U92ClY/xpwlodD/bTIcJHuZ9DAa1/eLpU2VVXjfvc/CI
	 v1OxK9gXg87wA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C9DEB3B29D;
 Sun, 11 Jul 2021 15:57:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1626033433; bh=jFtNLupa5FSd+uvCCxUc3OJpZVZbh0yJf734xS8q1fw=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=sfB+b8NTdcnHvjDW5fXdpLum1gKm4xfhZDHAIzCXH6f2qkc3j6cX6cSB8fIBPBaZ0
 jDzcak56BhjNcVOZSFBtp65W64u0cZtYFu94t7bV/F/cjRMzb+82NOTmJvlG/pV9fb
 bWRCEjjQ75nDHIRAAy69t9VgGFN6eH1syXH0iHiBT+ZTVpIE4T57HdHcd+l7uNPpyQ
 dZoFfAhvmVfMo/WmVEZAoj8IHbzfLywW0u4Mai06K5f/jXmjHDedFcsojtQs7WfQ3a
 gAMeEOBShXXvhn0cub6pBf4SxajzmvLwk+AQyOD7sE+3qBZhKqc3K2G9DJLtAN5inz
 HGS1WN/TdBTwQ==
To: Dave Taht <dave.taht@gmail.com>, Cake List <cake@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
In-Reply-To: <CAA93jw4oWpoWkRk+YrzLfWX+0PpMHMJmALup6BLBczwLrjn-hA@mail.gmail.com>
References: <1625910047-56840-1-git-send-email-shenjian15@huawei.com>
 <CAA93jw4oWpoWkRk+YrzLfWX+0PpMHMJmALup6BLBczwLrjn-hA@mail.gmail.com>
Date: Sun, 11 Jul 2021 21:57:11 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <877dhwei94.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [Cerowrt-devel] Fwd: [RFC net-next] net: extend netdev
	features
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cml0ZXM6Cgo+IE9uZSB0aGluZyBzb21l
d2hhdCByZWxhdGVkIHRvIHRoaXMgd2FzIGZpbmFsbHkgZXhwYW5kaW5nIHRoZSBzcGFjZQo+IGF2
YWlsYWJsZSBmb3IgdGhlIHRjIGFuZCBpcHRhYmxlcyBmdW5jdGlvbmFsaXR5IGZvcgo+IHRoaW5n
cyBsaWtlIGhhc2hpbmcgYW5kIGFjdGlvbnMgZXRjIGZyb20gMTYgYml0cyB0byAzMi4gVGhhdCBp
cwo+IHNvbWV0aGluZyBvZiBhIGZvcmsgbGlmdCB1cGdyYWRlLCBidXQuLi4gNjRrIHF1ZXVlcyBp
cyBub3QKPiBlbm91Z2ggaW4gc29tZSBjYXNlcywgbm9yIGlzIDY0ayBwb3NzaWJsZSB1c2VycyBp
biBsaWJyZXFvcy4gdGhvdWdodHMKCnNrYi0+aGFzaCBpcyAzMiBiaXRzIGFscmVhZHkuIFRoZXJl
IGlzIGhhcmR3YXJlIG91dCB0aGVyZSB0aGF0IGRvZXMKNjQtYml0IGhhc2hpbmcsIHByb21pc2lu
ZyB0byBoYXNoIHBhY2tldHMgaW4gYSB3YXkgdGhhdCBiYXNpY2FsbHkKZ3VhcmFudGVlcyB0aGUg
aGFzaCB0byBiZSBhIGdsb2JhbGx5IHVuaXF1ZSBmbG93IGlkZW50aWZpZXIuIFN1cHBvcnRpbmcK
KnRoYXQqIGluIHRoZSBrZXJuZWwgd291bGQgbmVlZCBzb21lIHdvcmssIHRob3VnaC4uLiA6KQoK
LVRva2UKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2Fr
ZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5i
dWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3224F96FEE6
	for <lists+cake@lfdr.de>; Sat,  7 Sep 2024 03:14:20 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9B3273CB48;
	Fri,  6 Sep 2024 21:14:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1725671658;
	bh=uuL2OkumGGkgA3oBJc27GpWExtxl7OT6jyJjWhX354s=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=k1XSiXGXS61yONdC6c78I4M66cFRCw7daH64AvWWPPkDaYsIXv2+j7SoLGlExKHS0
	 xC8/FLHRd2exlvrIYQCBE6holdJ+HZpcBR3zW0MGhoWLNpG/lJHwSQMwxlLb4qztzY
	 LzwTgHNLg5YmGeXn2fU0auNvP4umXXCcDwUZj2KlCsN8o++I1FoGyG2aMr1Y1dTOxT
	 CuXj1qAgt1WV8LjcqWpU0b7+QOzt09o8hwkkmzSvmU17TWVNULvC34bHx8meVtNCIp
	 mDcUJJvCBoNk1Qok5abcwZ7qdk3GsO3OeT148yiYRXN9Cm27t8IUElBfyzGFuGFVRH
	 YJT+IN8VYLdEw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 599A83B29D
 for <cake@lists.bufferbloat.net>; Fri,  6 Sep 2024 21:14:17 -0400 (EDT)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id A3F32A43B4A;
 Sat,  7 Sep 2024 01:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46BCAC4CEC4;
 Sat,  7 Sep 2024 01:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1725671656;
 bh=wf51T13dH53Kyjr9k6X4rECRSev9KzFZmG/yaTpBkVo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=DkHLATM+cQka/l4F4KRRYxp7D456XNqh0W+W6SFpZU/mIByFNDGDwiV4JigTEY14P
 Yux8T0xXHh3TtYfNqNsdeXKp3JlAysw4ypCnJgvcrHwN7+6gQIYrbYoSqK6rjXwKMM
 XY3KXwxZ8eDdV0i7T5n1GCVPyU28Id6ARxh66KZaqHx1y+9Qv/mYA9wV6YFjn3UJ8T
 M+q2Nmmqqumhz+9IB2MbYatQczwi9yV/aGKVSlcUFX7Op0HBnsK2/f53JJp811cGJL
 a6Ufdnfsvxwcsc4k/HrAFVSI4FqTIx6RXZEaazusyO1epdMyC1ANXyqp1MYrBiSXoK
 8HnDqJU81Xj1A==
Date: Fri, 6 Sep 2024 18:14:15 -0700
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>
Message-ID: <20240906181415.11d34150@kernel.org>
In-Reply-To: <20240904100516.16926-1-toke@redhat.com>
References: <20240904100516.16926-1-toke@redhat.com>
MIME-Version: 1.0
Subject: Re: [Cake] [PATCH net-next] sch_cake: constify inverse square root
	cache
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Eric Dumazet <edumazet@google.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gV2VkLCAgNCBTZXAgMjAyNCAxMjowNToxNiArMDIwMCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cj4gKy8qIFRoZXJlIGlzIGEgYmlnIGRpZmZlcmVuY2UgaW4gdGltaW5nIGJldHdl
ZW4gdGhlIGFjY3VyYXRlIHZhbHVlcyBwbGFjZWQgaW4gdGhlCj4gKyAqIGNhY2hlIGFuZCB0aGUg
YXBwcm94aW1hdGlvbnMgZ2l2ZW4gYnkgYSBzaW5nbGUgTmV3dG9uIHN0ZXAgZm9yIHNtYWxsIGNv
dW50Cj4gKyAqIHZhbHVlcywgcGFydGljdWxhcmx5IHdoZW4gc3RlcHBpbmcgZnJvbSBjb3VudCAx
IHRvIDIgb3IgdmljZSB2ZXJzYS4gSGVuY2UsCj4gKyAqIHRoZXNlIHZhbHVlcyBhcmUgY2FsY3Vs
YXRlZCB1c2luZyBlaWdodCBOZXd0b24gc3RlcHMsIHVzaW5nIHRoZSBpbXBsZW1lbnRhdGlvbgo+
ICsgKiBiZWxvdy4gQWJvdmUgMTYsIGEgc2luZ2xlIE5ld3RvbiBzdGVwIGdpdmVzIHN1ZmZpY2ll
bnQgYWNjdXJhY3kgaW4gZWl0aGVyCj4gKyAqIGRpcmVjdGlvbiwgZ2l2ZW4gdGhlIHByZWNpc2lv
biBzdG9yZWQuCgpQbGVhc2UgbGluZSB3cmFwIHRoZSBjb21tZW50cyBhdCA4MCBjaGFycy4KCj4g
KyAqIFRoZSBtYWduaXR1ZGUgb2YgdGhlIGVycm9yIHdoZW4gc3RlcHBpbmcgdXAgdG8gY291bnQg
MiBpcyBzdWNoIGFzIHRvIGdpdmUKPiArICogdGhlIHZhbHVlIHRoYXQgKnNob3VsZCogaGF2ZSBi
ZWVuIHByb2R1Y2VkIGF0IGNvdW50IDQuCj4gKyAqLwo+ICsKPiAgI2RlZmluZSBSRUNfSU5WX1NR
UlRfQ0FDSEUgKDE2KQo+IC1zdGF0aWMgdTMyIGNvYmFsdF9yZWNfaW52X3NxcnRfY2FjaGVbUkVD
X0lOVl9TUVJUX0NBQ0hFXSA9IHswfTsKPiArc3RhdGljIGNvbnN0IHUzMiBpbnZfc3FydF9jYWNo
ZVtSRUNfSU5WX1NRUlRfQ0FDSEVdID0gewo+ICsJICAgICAgICB+MCwgICAgICAgICB+MCwgMzAz
NzAwMDUwMCwgMjQ3OTcwMDUyNSwKPiArCTIxNDc0ODM2NDcsIDE5MjA3Njc3NjcsIDE3NTM0MTMw
NTYsIDE2MjMzNDUwNTEsCj4gKwkxNTE4NTAwMjUwLCAxNDMxNjU1NzY1LCAxMzU4MTg3OTE0LCAx
Mjk0OTgxMzY0LAo+ICsJMTIzOTg1MDI2MywgMTE5MTIwOTYwMSwgMTE0Nzg3ODI5NCwgMTEwODk1
NTc4OAoKY2hlY2twYXRjaCBhc2tzIHRvIHVzZSB0YWJzIHRvIGluZGVudCB0aGUgfjAsIHdoaWNo
IHNlZW1zIGZhaXIKLS0gCnB3LWJvdDogY3IKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

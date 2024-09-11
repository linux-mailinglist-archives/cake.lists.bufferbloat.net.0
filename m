Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 225F09FDAA6
	for <lists+cake@lfdr.de>; Sat, 28 Dec 2024 14:25:48 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A99D33CB50;
	Sat, 28 Dec 2024 08:25:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1735392346;
	bh=nfQaUTMLeXACkeK9AZSckfMd0IS5GNq3+wZFKx42vE4=;
	h=Date:References:In-Reply-To:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=BdOjs37NAz7VOStOuqQg/f/PXNl66kKYM1URgB6+G1nAdKYVsRqkSD4+4hON7YwmJ
	 KbNnHYd0UsxMZZUP4kRsIT9Wlnae+jCgJEKT+5AjKsOh+Wym8I4a3Hb53+WTZWSZGT
	 ctihSZjT0uH7xjDSyzK5WgtdOjBGSi567xP9xLRWH03forvJfWIWH8v6Qq+KexvGK3
	 yUzn/H6MfDXRFtzTScA1HJsriu/d25SLhYiwahm0DEVfzXtV0PpI2tuKYObLR2GAOZ
	 oL15MsfzZo5oKLzViQJJyKNBMn6ZG7tKQ+4zIkz+KaKoIATiccWTaOgWf/Xx0hyFwr
	 VhTVbY3rr3zOA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5C31B3B29E
 for <cake@lists.bufferbloat.net>; Tue, 10 Sep 2024 21:40:32 -0400 (EDT)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 7B496A44250;
 Wed, 11 Sep 2024 01:40:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF42DC4CEC3;
 Wed, 11 Sep 2024 01:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1726018831;
 bh=qld/VT1QyB2w9eoW1MzyzE30mUWIbUSfmL8OEc8q5uY=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=MzQLIYOtR/USoE2OnqLFFZekqqIO9U8UOwDk6ZIBsbA67DiAMr3UDnVIDYANZlhAs
 CgC1ieEc0pb0oKYsfxcqbDrCiiSRrwb642Qtc1r41moQsoUXA1SQ6NI75BrAdRVui9
 SGqqHEYk1OsqESXZRxPcKk2T4AapiSeXmTRg4HE4WAIXmxEDL08hyBXmrrp64NgBV/
 SRUGgOz2gUlHbUqlYdrmB71AL85xP14ZAvLqBXe3VExWwPl06r5K88limCRApLiVz0
 JPTnFXEW6LgSHVMgM6ggZpo8GeF4lZC+/eazFbuFPuXLVBDVktqVJxQj/g5UzG2WQW
 pD8+sOTyfUDKg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 EB23D3822FA4; Wed, 11 Sep 2024 01:40:33 +0000 (UTC)
MIME-Version: 1.0
Message-Id: <172601883250.456797.7178255147295116839.git-patchwork-notify@kernel.org>
Date: Wed, 11 Sep 2024 01:40:32 +0000
References: <20240909091630.22177-1-toke@redhat.com>
In-Reply-To: <20240909091630.22177-1-toke@redhat.com>
To: =?utf-8?b?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+?=@aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org
X-Mailman-Approved-At: Sat, 28 Dec 2024 08:25:46 -0500
Subject: Re: [Cake] [PATCH net-next v2] sch_cake: constify inverse square
	root cache
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
From: patchwork-bot+netdevbpf--- via Cake <cake@lists.bufferbloat.net>
Reply-To: patchwork-bot+netdevbpf@kernel.org
Cc: jiri@resnulli.us, netdev@vger.kernel.org, jhs@mojatatu.com,
 cake@lists.bufferbloat.net, edumazet@google.com, kuba@kernel.org,
 xiyou.wangcong@gmail.com, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGVsbG86CgpUaGlzIHBhdGNoIHdhcyBhcHBsaWVkIHRvIG5ldGRldi9uZXQtbmV4dC5naXQgKG1h
aW4pCmJ5IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OgoKT24gTW9uLCAgOSBTZXAg
MjAyNCAxMToxNjoyOCArMDIwMCB5b3Ugd3JvdGU6Cj4gRnJvbTogRGF2ZSBUYWh0IDxkYXZlLnRh
aHRAZ21haWwuY29tPgo+IAo+IHNjaF9jYWtlIHVzZXMgYSBjYWNoZSBvZiB0aGUgZmlyc3QgMTYg
dmFsdWVzIG9mIHRoZSBpbnZlcnNlIHNxdWFyZSByb290Cj4gY2FsY3VsYXRpb24gZm9yIHRoZSBD
b2JhbHQgQVFNIHRvIHNhdmUgc29tZSBjeWNsZXMgb24gdGhlIGZhc3QgcGF0aC4KPiBUaGlzIGNh
Y2hlIGlzIHBvcHVsYXRlZCB3aGVuIHRoZSBxZGlzYyBpcyBmaXJzdCBsb2FkZWQsIGJ1dCB0aGVy
ZSdzCj4gcmVhbGx5IG5vIHJlYXNvbiB3aHkgaXQgY2FuJ3QganVzdCBiZSBwcmUtcG9wdWxhdGVk
LiBTbyBjaGFuZ2UgaXQgdG8gYmUKPiBwcmUtcG9wdWxhdGVkIHdpdGggY29uc3RhbnRzLCB3aGlj
aCBhbHNvIG1ha2VzIGl0IHBvc3NpYmxlIHRvIGNvbnN0aWZ5Cj4gaXQuCj4gCj4gWy4uLl0KCkhl
cmUgaXMgdGhlIHN1bW1hcnkgd2l0aCBsaW5rczoKICAtIFtuZXQtbmV4dCx2Ml0gc2NoX2Nha2U6
IGNvbnN0aWZ5IGludmVyc2Ugc3F1YXJlIHJvb3QgY2FjaGUKICAgIGh0dHBzOi8vZ2l0Lmtlcm5l
bC5vcmcvbmV0ZGV2L25ldC1uZXh0L2MvYzQ4OTk0YmFlZmRjCgpZb3UgYXJlIGF3ZXNvbWUsIHRo
YW5rIHlvdSEKLS0gCkRlZXQtZG9vdC1kb3QsIEkgYW0gYSBib3QuCmh0dHBzOi8va29yZy5kb2Nz
Lmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3B3Ym90Lmh0bWwKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtl
Cg==

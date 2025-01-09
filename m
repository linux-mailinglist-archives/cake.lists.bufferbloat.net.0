Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D1410A07D83
	for <lists+cake@lfdr.de>; Thu,  9 Jan 2025 17:30:11 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AD0673CB39;
	Thu,  9 Jan 2025 11:30:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1736440210;
	bh=rx/t8lATiTRzAahL2piXxGRw1sVeym6CAIzH8btMtLA=;
	h=Date:References:In-Reply-To:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=dwwlbxOTEVAPJ5PQx3HgoT4WTMSDd5QkRCpanysndABPirtbRst2Q1XarwC+C6eWJ
	 SE4LiGqb2YHDQlNVgTgx34Wd8/VdSnpFIrqObHTbefl/TVGlNTo4mYAV7bQNmrNEAr
	 2wF/xvB7UqQpYYEmdfBnPsF01e7OydgQKNINtpct8062nYFoklS1smXACqPMTnF5ZX
	 boI78VPiCO4h7nI2L/6AAPKVxpxR6uQ2z8R2oqGtxCHEpKPwZ4+2L0wdi/4t95o3pT
	 VrKmRTcMpKQv83HbULvQBgQm94LJkumUD72p9ajEzuijeiDgXockZloH1R970VFlIs
	 NDfAK0MlU4+vw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 276203B2A4
 for <cake@lists.bufferbloat.net>; Thu,  9 Jan 2025 11:30:09 -0500 (EST)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 63D485C5C77;
 Thu,  9 Jan 2025 16:29:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 130D6C4CED2;
 Thu,  9 Jan 2025 16:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1736440208;
 bh=gYF/unUCBqQTAlkI6WDQpkZg0bioihJSmIQeUyPyIGY=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=QsY5yZ+tAnwIxt93PZ22YbqvTkHYzW3cPoygIHS7ZQnBmWAvI1AuCPaswIDHLzKdq
 C/B/ygRRXbARukY3CPS0qteP0k1l7Wu44+pVTvaHhPSAqEQXBqzlQYAzcV9s1Ez5YE
 ccxzGm8guieFBaraTY70HXucEmlJFmlOA6fR/1qRItdFw360Z6p+/GgKAA4myGVJr/
 bpEcUARqqOHT4EhoJABlzxOVHi8z+KL6mzqAVYDTwkq1dg1ptcJxvpAPlfE0nSZjZZ
 yxroaUI9kRp7t5PF8x0bx/BEuhSKmafRU/TICFzznfiNmEIISIkkM2/09NyX7QLKI2
 N1uL+h0P2EO3g==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 EB2CF3805DB2; Thu,  9 Jan 2025 16:30:30 +0000 (UTC)
MIME-Version: 1.0
Message-Id: <173644022981.1439025.10283041006205138071.git-patchwork-notify@kernel.org>
Date: Thu, 09 Jan 2025 16:30:29 +0000
References: <20250107120105.70685-1-toke@redhat.com>
In-Reply-To: <20250107120105.70685-1-toke@redhat.com>
To: =?utf-8?b?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+?=@aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org
Subject: Re: [Cake] [PATCH net v2] sched: sch_cake: add bounds checks to
 host bulk flow fairness counts
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
 cake@lists.bufferbloat.net, edumazet@google.com, horms@kernel.org,
 kuba@kernel.org, xiyou.wangcong@gmail.com, pabeni@redhat.com,
 davem@davemloft.net, syzbot+f63600d288bfb7057424@syzkaller.appspotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGVsbG86CgpUaGlzIHBhdGNoIHdhcyBhcHBsaWVkIHRvIG5ldGRldi9uZXQuZ2l0IChtYWluKQpi
eSBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjoKCk9uIFR1ZSwgIDcgSmFuIDIwMjUg
MTM6MDE6MDUgKzAxMDAgeW91IHdyb3RlOgo+IEV2ZW4gdGhvdWdoIHdlIGZpeGVkIGEgbG9naWMg
ZXJyb3IgaW4gdGhlIGNvbW1pdCBjaXRlZCBiZWxvdywgc3l6Ym90Cj4gc3RpbGwgbWFuYWdlZCB0
byB0cmlnZ2VyIGFuIHVuZGVyZmxvdyBvZiB0aGUgcGVyLWhvc3QgYnVsayBmbG93Cj4gY291bnRl
cnMsIGxlYWRpbmcgdG8gYW4gb3V0IG9mIGJvdW5kcyBtZW1vcnkgYWNjZXNzLgo+IAo+IFRvIGF2
b2lkIGFueSBzdWNoIGxvZ2ljIGVycm9ycyBjYXVzaW5nIG91dCBvZiBib3VuZHMgbWVtb3J5IGFj
Y2Vzc2VzLAo+IHRoaXMgY29tbWl0IGZhY3RvcnMgb3V0IGFsbCBhY2Nlc3NlcyB0byB0aGUgcGVy
LWhvc3QgYnVsayBmbG93IGNvdW50ZXJzCj4gdG8gYSBzZXJpZXMgb2YgaGVscGVycyB0aGF0IHBl
cmZvcm0gYm91bmRzLWNoZWNraW5nIGJlZm9yZSBhbnkKPiBpbmNyZW1lbnRzIGFuZCBkZWNyZW1l
bnRzLiBUaGlzIGFsc28gaGFzIHRoZSBiZW5lZml0IG9mIGltcHJvdmluZwo+IHJlYWRhYmlsaXR5
IGJ5IG1vdmluZyB0aGUgY29uZGl0aW9uYWwgY2hlY2tzIGZvciB0aGUgZmxvdyBtb2RlIGludG8K
PiB0aGVzZSBoZWxwZXJzLCBpbnN0ZWFkIG9mIGhhdmluZyB0aGVtIHNwcmVhZCBvdXQgdGhyb3Vn
aG91dCB0aGUKPiBjb2RlICh3aGljaCB3YXMgdGhlIGNhdXNlIG9mIHRoZSBvcmlnaW5hbCBsb2dp
YyBlcnJvcikuCj4gCj4gWy4uLl0KCkhlcmUgaXMgdGhlIHN1bW1hcnkgd2l0aCBsaW5rczoKICAt
IFtuZXQsdjJdIHNjaGVkOiBzY2hfY2FrZTogYWRkIGJvdW5kcyBjaGVja3MgdG8gaG9zdCBidWxr
IGZsb3cgZmFpcm5lc3MgY291bnRzCiAgICBodHRwczovL2dpdC5rZXJuZWwub3JnL25ldGRldi9u
ZXQvYy83MzdkNGQ5MWQzNWIKCllvdSBhcmUgYXdlc29tZSwgdGhhbmsgeW91IQotLSAKRGVldC1k
b290LWRvdCwgSSBhbSBhIGJvdC4KaHR0cHM6Ly9rb3JnLmRvY3Mua2VybmVsLm9yZy9wYXRjaHdv
cmsvcHdib3QuaHRtbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

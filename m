Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CF5A07D84
	for <lists+cake@lfdr.de>; Thu,  9 Jan 2025 17:30:12 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C08F63CB43;
	Thu,  9 Jan 2025 11:30:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1736440211;
	bh=/7IVszmg7MvIVxNignDmp0R2wiiWz9epV2DmD17BcoE=;
	h=Date:References:In-Reply-To:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=R7NAwXLZmxEFORHqY5yRgU2+vHcBjvtKAH1mE8b/ScAb70eJ23d0jpny1XjcHdgHt
	 pEAK4o8e/5rR6obWpko9Y8zEnh8vlv0RXTaBJ2A/V40zzAVHNy6hlTVIZ6zOZyCU9R
	 Ll+Al4aYOkw/PWahba5xdMaIyJT3JqmJGGdCoY+AVs3mTxkpMQqafP2GzZ0Bn9oOtp
	 waQVes+5gmNNa+MkI2zqe8Aivhh+BQILAe9V1OutsqNlh6bFEgnGXAyMzDH8UvvJJ3
	 9dvPIIIG8V7PB/iXtVepchaHNI1Xj6iqtln5yZLN4fKeGQ4KwyMSp7B0j8/bQYSmYN
	 +eYovKIVdjA/g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 326D93B2A4
 for <cake@lists.bufferbloat.net>; Thu,  9 Jan 2025 11:30:10 -0500 (EST)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 952475C5C7D;
 Thu,  9 Jan 2025 16:29:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44AADC4CED3;
 Thu,  9 Jan 2025 16:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1736440209;
 bh=FtUi4iVLWWEBvVmgZhzZFhwc04tacUyme484/wGGMuI=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=EVqJFcTy4kHJZKVA9aU80zA1Y/8NBo+06usHT33uNrDYxuJGrMZqISiFy0DBN8zeA
 3jZ8kij8O7azX4YKvSEcNC988CQN36zEPW0o+34hSV4zRE6ssJxoVjKKsF0KImIZhf
 zCyr7h99cdZwU6W8qvr5PxSYmJ9ZEXvlq1fXjlFToxs696XPUwwbFMhdEqiIKV4PPz
 2RIdA5gXA6ktd8yJnosaDvSI5FqAfd+SzlOZIwtiiglaL6mm12acvzwu3ej0qQnfBJ
 8d142nNQb6h0gt7/D/mb67lnMBLGG55MwdWZW2T6BIcAeXzgBDJEjLybVDr3KVRAXw
 p7J+4ZTwl0Amw==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 33D343805DB2; Thu,  9 Jan 2025 16:30:32 +0000 (UTC)
MIME-Version: 1.0
Message-Id: <173644023101.1439025.9438524585009364765.git-patchwork-notify@kernel.org>
Date: Thu, 09 Jan 2025 16:30:31 +0000
References: <20250109160900.192138-1-toke@redhat.com>
In-Reply-To: <20250109160900.192138-1-toke@redhat.com>
To: =?utf-8?b?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+?=@aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org
Subject: Re: [Cake] [PATCH net v3] sched: sch_cake: add bounds checks to
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
eSBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjoKCk9uIFRodSwgIDkgSmFuIDIwMjUg
MTc6MDg6NTkgKzAxMDAgeW91IHdyb3RlOgo+IEV2ZW4gdGhvdWdoIHdlIGZpeGVkIGEgbG9naWMg
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
IFtuZXQsdjNdIHNjaGVkOiBzY2hfY2FrZTogYWRkIGJvdW5kcyBjaGVja3MgdG8gaG9zdCBidWxr
IGZsb3cgZmFpcm5lc3MgY291bnRzCiAgICBodHRwczovL2dpdC5rZXJuZWwub3JnL25ldGRldi9u
ZXQvYy83MzdkNGQ5MWQzNWIKCllvdSBhcmUgYXdlc29tZSwgdGhhbmsgeW91IQotLSAKRGVldC1k
b290LWRvdCwgSSBhbSBhIGJvdC4KaHR0cHM6Ly9rb3JnLmRvY3Mua2VybmVsLm9yZy9wYXRjaHdv
cmsvcHdib3QuaHRtbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

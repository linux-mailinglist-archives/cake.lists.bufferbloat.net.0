Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC319FDAA5
	for <lists+cake@lfdr.de>; Sat, 28 Dec 2024 14:25:48 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9A2993CB48;
	Sat, 28 Dec 2024 08:25:46 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1735392346;
	bh=ZcB4WzpsVdtXIo3eYL6nCiVr6iFnbqIuJJr7YC2RC5g=;
	h=Date:References:In-Reply-To:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=U72NHSM9LGb2XJye2UT8/DUsRTAhmkAScACJ6W6L/abtWoE0v3IqZxklsrLtHlnhY
	 S1pYH/WGfm4VdKSlsgDhoVNmigOO2Zi9CXol/EDxPws5zanxkKbcwQvydp/w41jRZV
	 OnjCACP95kGfTo8lyZAwDmA4E9Za4Va/Ek5zs+UcsIw8NWYvL/LfsT72x8I7CSS/76
	 8SlFhk952lNefwhPU+/dQoHg8/bNz7GngTmPXMieFEj8p6C53qKejADNqfzkuo7k2U
	 duoyCIM3oqEX9VjVjMeIPIXUvHZp61//lsKHfoe5FgNNK6fLJRBR2KF3/B+gaDEDRG
	 sm11OAydzR7Xg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DDFC83B2A4
 for <cake@lists.bufferbloat.net>; Thu,  5 Sep 2024 06:00:29 -0400 (EDT)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C98745C5A06;
 Thu,  5 Sep 2024 10:00:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE59AC4CEC3;
 Thu,  5 Sep 2024 10:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1725530429;
 bh=9gCioDgSjBVjN3SziroHvotCnSdJ/pfwWQnuSLnFG14=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=LNIyWuV9EbRZUq3aI25gIRfbNu84ZeoPygOKdQ65mtTmczb/MUvniinIeW6mtu1yn
 5IgR5C7KyRNPkF6dhvDUV1ZIAa/dGyqUI1vMaFZ7aJh9fBw1K0Z/29T0khJUk0VoxQ
 WxLUZsJF8I0Cw+FQE72EpUIqnarO1zapEMkXhQWPK0EXeCyW+Ft2kJO2SQbRfaIY+K
 R5hICbloQd8r0VsP3QdAXL7zupdhN4W+kPv2+oTAn4jKQXth/3L3HLVmk1aHQPinJz
 rZdER4ZpodCMNawVaMHXVR2pOEn//6Zd3eA5P4X10MX+zRp6lLSGYMbW7cKWVaX4/+
 Q4rnmQJQOLFdw==
Received: from [10.30.226.235] (localhost [IPv6:::1])
 by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id
 ECEB93806644; Thu,  5 Sep 2024 10:00:30 +0000 (UTC)
MIME-Version: 1.0
Message-Id: <172553042950.1338142.999328518611522439.git-patchwork-notify@kernel.org>
Date: Thu, 05 Sep 2024 10:00:29 +0000
References: <20240903160846.20909-1-toke@redhat.com>
In-Reply-To: <20240903160846.20909-1-toke@redhat.com>
To: =?utf-8?b?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+?=@aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org
X-Mailman-Approved-At: Sat, 28 Dec 2024 08:25:46 -0500
Subject: Re: [Cake] [PATCH net] sched: sch_cake: fix bulk flow accounting
 logic for host fairness
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
 xiyou.wangcong@gmail.com, pabeni@redhat.com, davem@davemloft.net,
 syzbot+7fe7b81d602cc1e6b94d@syzkaller.appspotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGVsbG86CgpUaGlzIHBhdGNoIHdhcyBhcHBsaWVkIHRvIG5ldGRldi9uZXQuZ2l0IChtYWluKQpi
eSBQYW9sbyBBYmVuaSA8cGFiZW5pQHJlZGhhdC5jb20+OgoKT24gVHVlLCAgMyBTZXAgMjAyNCAx
ODowODo0NSArMDIwMCB5b3Ugd3JvdGU6Cj4gSW4gc2NoX2Nha2UsIHdlIGtlZXAgdHJhY2sgb2Yg
dGhlIGNvdW50IG9mIGFjdGl2ZSBidWxrIGZsb3dzIHBlciBob3N0LAo+IHdoZW4gcnVubmluZyBp
biBkc3Qvc3JjIGhvc3QgZmFpcm5lc3MgbW9kZSwgd2hpY2ggaXMgdXNlZCBhcyB0aGUKPiByb3Vu
ZC1yb2JpbiB3ZWlnaHQgd2hlbiBpdGVyYXRpbmcgdGhyb3VnaCBmbG93cy4gVGhlIGNvdW50IG9m
IGFjdGl2ZQo+IGJ1bGsgZmxvd3MgaXMgdXBkYXRlZCB3aGVuZXZlciBhIGZsb3cgY2hhbmdlcyBz
dGF0ZS4KPiAKPiBUaGlzIGhhcyBhIHBlY3VsaWFyIGludGVyYWN0aW9uIHdpdGggdGhlIGhhc2gg
Y29sbGlzaW9uIGhhbmRsaW5nOiB3aGVuIGEKPiBoYXNoIGNvbGxpc2lvbiBvY2N1cnMgKGFmdGVy
IHRoZSBzZXQtYXNzb2NpYXRpdmUgaGFzaGluZyksIHRoZSBzdGF0ZSBvZgo+IHRoZSBoYXNoIGJ1
Y2tldCBpcyBzaW1wbHkgdXBkYXRlZCB0byBtYXRjaCB0aGUgbmV3IHBhY2tldCB0aGF0IGNvbGxp
ZGVkLAo+IGFuZCBpZiBob3N0IGZhaXJuZXNzIGlzIGVuYWJsZWQsIHRoYXQgYWxzbyBtZWFucyBh
c3NpZ25pbmcgbmV3IHBlci1ob3N0Cj4gc3RhdGUgdG8gdGhlIGZsb3cuIEZvciB0aGlzIHJlYXNv
biwgdGhlIGJ1bGsgZmxvdyBjb3VudGVycyBvZiB0aGUKPiBob3N0KHMpIGFzc2lnbmVkIHRvIHRo
ZSBmbG93IGFyZSBkZWNyZW1lbnRlZCwgYmVmb3JlIG5ldyBzdGF0ZSBpcwo+IGFzc2lnbmVkIChh
bmQgdGhlIGNvdW50ZXJzLCB3aGljaCBtYXkgbm90IGJlbG9uZyB0byB0aGUgc2FtZSBob3N0Cj4g
YW55bW9yZSwgYXJlIGluY3JlbWVudGVkIGFnYWluKS4KPiAKPiBbLi4uXQoKSGVyZSBpcyB0aGUg
c3VtbWFyeSB3aXRoIGxpbmtzOgogIC0gW25ldF0gc2NoZWQ6IHNjaF9jYWtlOiBmaXggYnVsayBm
bG93IGFjY291bnRpbmcgbG9naWMgZm9yIGhvc3QgZmFpcm5lc3MKICAgIGh0dHBzOi8vZ2l0Lmtl
cm5lbC5vcmcvbmV0ZGV2L25ldC9jLzU0NmVhODRkMDdlMwoKWW91IGFyZSBhd2Vzb21lLCB0aGFu
ayB5b3UhCi0tIApEZWV0LWRvb3QtZG90LCBJIGFtIGEgYm90LgpodHRwczovL2tvcmcuZG9jcy5r
ZXJuZWwub3JnL3BhdGNod29yay9wd2JvdC5odG1sCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZm
ZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

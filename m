Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4870782C8CB
	for <lists+cake@lfdr.de>; Sat, 13 Jan 2024 02:33:38 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1A57F3CB4F;
	Fri, 12 Jan 2024 20:33:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1705109616;
	bh=acSxOE6HpiNylkxpxadU00XYbnwPmjcEkgmWJWA+SUA=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=UeH8003oyqOWA8Mv6gELMDR7rMvG1GhQ2Jq6pZapSt9jRhmiOs3kifBDbKk9WCYL7
	 Lqn5Bi8xs1ScxWOPWfI+6VjDheB5XrNaCDSZ8tHsaL1XPcHLYGDh1o2lxmLIrAtDgQ
	 52PSpWTRVDzmRUodADm6Dxf034UjvQeRYqikqGMFkKUp8JU+bquuyfQDc43OB8q8W1
	 qZKsafajxPbO+ycCbwc4FT+Wgd1KAYbEgRJob2w7XJCDtyEBeaIGdLMwlJuCdGyJkO
	 gNVvjgLFFCQf252Jm2MqL9ilP56lKQdCtfiJtlCfssW0KWK8HsIIOd0r/MGoKjMeH3
	 dgOkY7KCQhNhQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5B3CB3B2A4
 for <cake@lists.bufferbloat.net>; Fri, 12 Jan 2024 20:33:34 -0500 (EST)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 16C3E612F3;
 Sat, 13 Jan 2024 01:33:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C7D7C433C7;
 Sat, 13 Jan 2024 01:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1705109612;
 bh=PHzx3gJ6hnCv3VfcEhNzHYMyKUNAcxT04KDHTrh9tAI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=cbH4SvXVjyY0LR+FiwUrFbH4h6iqSSMwz5QQJ9LYT7KxjHyJcqnG0MD4Oy5y127I7
 VHTWzDnCwihFwGfw6Gfzoyyp2s334edjiQavmppF7HSGv3NUvkiFQt/xBWqW2uGIim
 YFGuqmz16qH8q8bthOgFKn5ywYQbrr4shwbyZnF1ZoglLN2PK4glVBXrR3S4V3pBkW
 RdnNlCPLjpBCmEQ393uThtjVypEDb8CLkASrZrpbSFPt5x1SOcAPVjTzBhpz4fBqC9
 haYz95cdA/LunkoWpbGHxPSfF5KzR9s0Uz9I7XMWS6L2NqLAs/DlNCfJr9BvY0FHOE
 k2hvBCVsA0cSQ==
Date: Fri, 12 Jan 2024 17:33:30 -0800
To: Michal =?UTF-8?B?S291dG7DvQ==?= <mkoutny@suse.com>
Message-ID: <20240112173330.075e5969@kernel.org>
In-Reply-To: <20240112180646.13232-1-mkoutny@suse.com>
References: <20240112180646.13232-1-mkoutny@suse.com>
MIME-Version: 1.0
Subject: Re: [Cake] [PATCH v3 0/4] net/sched: Load modules via alias
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
Cc: Michal Kubecek <mkubecek@suse.cz>, Alexei Starovoitov <ast@kernel.org>,
 Song Liu <song@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Stanislav Fomichev <sdf@google.com>, Yonghong Song <yonghong.song@linux.dev>,
 Petr Pavlu <ppavlu@suse.cz>, Martin Wilck <mwilck@suse.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Andrii Nakryiko <andrii@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Jiri Pirko <jiri@resnulli.us>,
 Jamal Hadi Salim <jhs@mojatatu.com>, KP Singh <kpsingh@kernel.org>,
 cake@lists.bufferbloat.net, Cong Wang <xiyou.wangcong@gmail.com>,
 Hao Luo <haoluo@google.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jiri Olsa <jolsa@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <martin.lau@linux.dev>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gRnJpLCAxMiBKYW4gMjAyNCAxOTowNjo0MiArMDEwMCBNaWNoYWwgS291dG7DvSB3cm90ZToK
PiBUaGVzZSBtb2R1bGVzIG1heSBiZSBsb2FkZWQgbGF6aWx5IHdpdGhvdXQgdXNlcidzIGF3YXJl
bmVzcyBhbmQKPiBjb250cm9sLiBBZGQgcmVzcGVjdGl2ZSBhbGlhc2VzIHRvIG1vZHVsZXMgYW5k
IHJlcXVlc3QgdGhlbSB1bmRlciB0aGVzZQo+IGFsaWFzZXMgc28gdGhhdCBtb2Rwcm9iZSdzIGJs
YWNrbGlzdGluZyBtZWNoYW5pc20gKHRocm91Z2ggYWxpYXNlcykKPiB3b3JrcyBmb3IgdGhlbS4g
KFRoZSBzYW1lIHBhdHRlcm4gZXhpc3RzIGUuZy4gZm9yIGZpbGVzeXN0ZW0KPiBtb2R1bGVzLikK
CiMjIEZvcm0gbGV0dGVyIC0gbmV0LW5leHQtY2xvc2VkCgpUaGUgbWVyZ2Ugd2luZG93IGZvciB2
Ni44IGhhcyBiZWd1biBhbmQgd2UgaGF2ZSBhbHJlYWR5IHBvc3RlZCBvdXIgcHVsbApyZXF1ZXN0
LiBUaGVyZWZvcmUgbmV0LW5leHQgaXMgY2xvc2VkIGZvciBuZXcgZHJpdmVycywgZmVhdHVyZXMs
IGNvZGUKcmVmYWN0b3JpbmcgYW5kIG9wdGltaXphdGlvbnMuIFdlIGFyZSBjdXJyZW50bHkgYWNj
ZXB0aW5nIGJ1ZyBmaXhlcyBvbmx5LgoKUGxlYXNlIHJlcG9zdCB3aGVuIG5ldC1uZXh0IHJlb3Bl
bnMgYWZ0ZXIgSmFudWFyeSAyMm5kLgoKUkZDIHBhdGNoZXMgc2VudCBmb3IgcmV2aWV3IG9ubHkg
YXJlIG9idmlvdXNseSB3ZWxjb21lIGF0IGFueSB0aW1lLgoKU2VlOiBodHRwczovL3d3dy5rZXJu
ZWwub3JnL2RvYy9odG1sL25leHQvcHJvY2Vzcy9tYWludGFpbmVyLW5ldGRldi5odG1sI2RldmVs
b3BtZW50LWN5Y2xlCi0tIApwdy1ib3Q6IGRlZmVyCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVy
YmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

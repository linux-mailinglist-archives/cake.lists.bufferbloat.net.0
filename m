Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DA29BA07D3B
	for <lists+cake@lfdr.de>; Thu,  9 Jan 2025 17:18:15 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B10013CB39;
	Thu,  9 Jan 2025 11:18:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1736439494;
	bh=c3qDveubVGqJ5qHG9IiPStnTJF8vaJxATCLGLjhyAkg=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=L/I4vrnr9WvAG5/pqIkUdE6SizGbA71lvY+XdSkkFxzVV0tBPVMC1iqy7cl+Jkddi
	 RD2iaEATvouzkQZoFYuHs4x0ce55tkoYO9qAxHA/nWw1fPDXqsMyqDOmIkjmd1/41B
	 OgrQlvqITou4dWkjLR6xp0xKzBP0HE3Aw1TonHLLnXS1HumlvqeSlUg8/1TZ/Lfr+u
	 wqhCipH6JPD4i0WijFOEFSs7bDXdJbUzZqGev5pyk0Z/n+2FmHJPTAEN/Vo7Z/n3Nn
	 onqNKvNkCOfKgFqmodyr+zY5GfXUriZketka38YRAalg4Yq0f2r4RAXDJOkLsSN8nZ
	 L0Tnc4RHnoc4g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9D7523B2A4
 for <cake@lists.bufferbloat.net>; Thu,  9 Jan 2025 11:18:13 -0500 (EST)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 822B5A420EB;
 Thu,  9 Jan 2025 16:16:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46624C4CED2;
 Thu,  9 Jan 2025 16:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1736439492;
 bh=10+Dg1BFv4IwT+mfDUUg++YF0ACEY5Xdn5RCQC9n7x0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VaD9up5GXA9v64/lMaOzJOYE+w682V2ZN2vhCVKLEFMj1e52pi2ajwdscruac9aHJ
 /Lq1J97TCBId3IHrg6edXUay0E99IqfaqYRMUscyTUgBiS84Qp6YvMXCRtv6A6ftTz
 SwIeUuZlzrVHZnI46XXysBWetiK+lumkfl3OAFjvLpYyo9MKkpcv0UHxaU2AMgrjJD
 AtNZAonmkAwWVQHcyevyJujOXojhCLjX/ih0EEtEgOiVMopo3DXj+b2dI9Qk3zgMft
 Dg9lpONgtxabJWkFdebvAxsFzaLgGiE5uDTzSpavPVgUYpZ1CM0uGqjbm3SB9Hb/ht
 16S0GXizoZv6w==
Date: Thu, 9 Jan 2025 08:18:11 -0800
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@toke.dk>
Message-ID: <20250109081811.01b7bad1@kernel.org>
In-Reply-To: <87ikqohswh.fsf@toke.dk>
References: <20250107120105.70685-1-toke@redhat.com>
 <fb7a1324-41c6-4e10-a6a3-f16d96f44f65@redhat.com>
 <87plkwi27e.fsf@toke.dk>
 <11915c70-ec5e-4d94-b890-f07f41094e2c@redhat.com>
 <87ikqohswh.fsf@toke.dk>
MIME-Version: 1.0
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
From: Jakub Kicinski via Cake <cake@lists.bufferbloat.net>
Reply-To: Jakub Kicinski <kuba@kernel.org>
Cc: syzbot+f63600d288bfb7057424@syzkaller.appspotmail.com,
 Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Eric Dumazet <edumazet@google.com>, Simon Horman <horms@kernel.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVGh1LCAwOSBKYW4gMjAyNSAxNzowODoxNCArMDEwMCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cj4gPj4gSSBndWVzcyBJIHNob3VsZCBoYXZlIG1lbnRpb25lZCBpbiB0aGUgY29t
bWl0IG1lc3NhZ2UgdGhhdCB0aGlzIHdhcwo+ID4+IGRlbGliZXJhdGUuIFNpbmNlIGl0IHNlZW1z
IHlvdSdsbCBiZSBlZGl0aW5nIHRoYXQgYW55d2F5IChjZiB0aGUgYWJvdmUpLAo+ID4+IGhvdyBh
Ym91dCBhZGRpbmcgYSBwYXJhZ3JhcGggbGlrZToKPiA+PiAKPiA+PiAgQXMgcGFydCBvZiB0aGlz
IGNoYW5nZSwgdGhlIGZsb3cgcXVhbnR1bSBjYWxjdWxhdGlvbiBpcyBjb25zb2xpZGF0ZWQKPiA+
PiAgaW50byBhIGhlbHBlciBmdW5jdGlvbiwgd2hpY2ggbWVhbnMgdGhhdCB0aGUgZGl0aGVyaW5n
IGFwcGxpZWQgdG8gdGhlCj4gPj4gIGhvc3QgbG9hZCBzY2FsaW5nIGlzIG5vdyBhcHBsaWVkIGJv
dGggaW4gdGhlIERSUiByb3RhdGlvbiBhbmQgd2hlbiBhCj4gPj4gIHNwYXJzZSBmbG93J3MgcXVh
bnR1bSBpcyBmaXJzdCBpbml0aWF0ZWQuIFRoZSBvbmx5IHVzZXItdmlzaWJsZSBlZmZlY3QKPiA+
PiAgb2YgdGhpcyBpcyB0aGF0IHRoZSBtYXhpbXVtIHBhY2tldCBzaXplIHRoYXQgY2FuIGJlIHNl
bnQgd2hpbGUgYSBmbG93Cj4gPj4gIHN0YXlzIHNwYXJzZSB3aWxsIG5vdyB2YXJ5IHdpdGggKy8t
IG9uZSBieXRlIGluIHNvbWUgY2FzZXMuIFRoaXMgc2hvdWxkCj4gPj4gIG5vdCBtYWtlIGEgbm90
aWNlYWJsZSBkaWZmZXJlbmNlIGluIHByYWN0aWNlLCBhbmQgdGh1cyBpdCdzIG5vdCB3b3J0aAo+
ID4+ICBjb21wbGljYXRpbmcgdGhlIGNvZGUgdG8gcHJlc2VydmUgdGhlIG9sZCBiZWhhdmlvdXIu
ICAKPiA+Cj4gPiBJdCdzIGluIEpha3ViJ3MgaGFuZHMgbm93LCBwb3NzaWJseSBoZSBjb3VsZCBw
cmVmZXIgYSByZXBvc3QgdG8gcmVkdWNlCj4gPiB0aGUgbWFpbnRhaW5lcidzIG92ZXJoZWFkLiAg
Cj4gCj4gQWxyaWdodCwgc3VyZSwgSSdsbCByZXNwaW4gOikKCkhvbGQgb24sIEknbGwgZG8gaXQg
OikKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBt
YWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZm
ZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

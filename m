Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AD2A07DAC
	for <lists+cake@lfdr.de>; Thu,  9 Jan 2025 17:35:18 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 364043CB39;
	Thu,  9 Jan 2025 11:35:17 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1736440517;
	bh=QlGfA35lp1LIfKCaTOF3BTTACHTxpnUgI4ABeGrQ+FU=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=BHtKKDn6UmabmpZGnd4ma8CvgVacx5whDH2q5z8AQaQxr/wn9jUJa4Xi7CukPrTud
	 zP0TaRokiux7CMuGnhL7fd5rmg3EYYTcaFPzkApX+y//h5QrcwIPfRJe8ZTpaPWy22
	 1IzZ0FBXgc1S+0raO8toyqLc8tVbJYtcz3UUN6665tA7He5vqtPU/f0xOuYGthvbJ7
	 TVUJpn/uhJ/tFdAWmoPqo1KBTjuE225lRQGKFqhVfrgDx1cwxNZyFdsVh5uasWA5/y
	 5cQr1aVVG0UHmBrW/ZnyXtNfQDTtIlA3jv5GmWsmHOWNZnTm0IIWg5xkQrkT48Xy2B
	 h90+ICuL50I3w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A5C0C3B2A4
 for <cake@lists.bufferbloat.net>; Thu,  9 Jan 2025 11:35:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1736440514; bh=ANbjk8gqhN0il2QO5ixDt4BuDf3BmOKAImjLOA2m5+0=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=w1CovmHm+9bvL/zZ07yGdFcwZ1dyVGwl3B+98WXgP83QWcN3SEE49S8bOurAIKqRR
 9B7U69aDFWjVFFnvQPWrgKsT3SDVpJupIFrIqipzixAdTvg0dDpPgBeI340aKJaMKc
 cOu0VSt0A8TID14Gp+iUwr8rOVgKIt9pPNlXF/mYVPGXNyeZGStJz8YNxhSmuE7wZd
 md2R3qJDq9cXB+UmaihGe+ApZpiM5CYk9GIrwoNfJKGAfB+sBk2khEjhUSMIn23bnK
 VeptjQMywy4XRTGPp/J4GNPWsdUWYeYSsJBP/nzPPTGCZiM/gn1QSVPvj1UfboChdN
 jfOIxInzjanbg==
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20250109081811.01b7bad1@kernel.org>
References: <20250107120105.70685-1-toke@redhat.com>
 <fb7a1324-41c6-4e10-a6a3-f16d96f44f65@redhat.com> <87plkwi27e.fsf@toke.dk>
 <11915c70-ec5e-4d94-b890-f07f41094e2c@redhat.com> <87ikqohswh.fsf@toke.dk>
 <20250109081811.01b7bad1@kernel.org>
Date: Thu, 09 Jan 2025 17:35:14 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87frlshrnh.fsf@toke.dk>
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4gd3JpdGVzOgoKPiBPbiBUaHUsIDA5IEph
biAyMDI1IDE3OjA4OjE0ICswMTAwIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToKPj4g
Pj4gSSBndWVzcyBJIHNob3VsZCBoYXZlIG1lbnRpb25lZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2Ug
dGhhdCB0aGlzIHdhcwo+PiA+PiBkZWxpYmVyYXRlLiBTaW5jZSBpdCBzZWVtcyB5b3UnbGwgYmUg
ZWRpdGluZyB0aGF0IGFueXdheSAoY2YgdGhlIGFib3ZlKSwKPj4gPj4gaG93IGFib3V0IGFkZGlu
ZyBhIHBhcmFncmFwaCBsaWtlOgo+PiA+PiAKPj4gPj4gIEFzIHBhcnQgb2YgdGhpcyBjaGFuZ2Us
IHRoZSBmbG93IHF1YW50dW0gY2FsY3VsYXRpb24gaXMgY29uc29saWRhdGVkCj4+ID4+ICBpbnRv
IGEgaGVscGVyIGZ1bmN0aW9uLCB3aGljaCBtZWFucyB0aGF0IHRoZSBkaXRoZXJpbmcgYXBwbGll
ZCB0byB0aGUKPj4gPj4gIGhvc3QgbG9hZCBzY2FsaW5nIGlzIG5vdyBhcHBsaWVkIGJvdGggaW4g
dGhlIERSUiByb3RhdGlvbiBhbmQgd2hlbiBhCj4+ID4+ICBzcGFyc2UgZmxvdydzIHF1YW50dW0g
aXMgZmlyc3QgaW5pdGlhdGVkLiBUaGUgb25seSB1c2VyLXZpc2libGUgZWZmZWN0Cj4+ID4+ICBv
ZiB0aGlzIGlzIHRoYXQgdGhlIG1heGltdW0gcGFja2V0IHNpemUgdGhhdCBjYW4gYmUgc2VudCB3
aGlsZSBhIGZsb3cKPj4gPj4gIHN0YXlzIHNwYXJzZSB3aWxsIG5vdyB2YXJ5IHdpdGggKy8tIG9u
ZSBieXRlIGluIHNvbWUgY2FzZXMuIFRoaXMgc2hvdWxkCj4+ID4+ICBub3QgbWFrZSBhIG5vdGlj
ZWFibGUgZGlmZmVyZW5jZSBpbiBwcmFjdGljZSwgYW5kIHRodXMgaXQncyBub3Qgd29ydGgKPj4g
Pj4gIGNvbXBsaWNhdGluZyB0aGUgY29kZSB0byBwcmVzZXJ2ZSB0aGUgb2xkIGJlaGF2aW91ci4g
IAo+PiA+Cj4+ID4gSXQncyBpbiBKYWt1YidzIGhhbmRzIG5vdywgcG9zc2libHkgaGUgY291bGQg
cHJlZmVyIGEgcmVwb3N0IHRvIHJlZHVjZQo+PiA+IHRoZSBtYWludGFpbmVyJ3Mgb3ZlcmhlYWQu
ICAKPj4gCj4+IEFscmlnaHQsIHN1cmUsIEknbGwgcmVzcGluIDopCj4KPiBIb2xkIG9uLCBJJ2xs
IGRvIGl0IDopCgpDcm9zc2VkIHN0cmVhbXMsIGJ1dCB0aGFua3MhIDopCgotVG9rZQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlz
dApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dC9saXN0aW5mby9jYWtlCg==

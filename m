Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 8130398F2B
	for <lists+cake@lfdr.de>; Thu, 22 Aug 2019 11:20:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B11693CB39;
	Thu, 22 Aug 2019 05:20:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566465600;
	bh=EG/pFz1EYB2BJFkJJ/ZrIbTCJGT7Ag3NaBX0G92aF+8=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T/FjSxZhbD91X3V+niA0XT7rPyotttRPXsQ8NQeh+1tVGDAYVmr7LrVkIqmd1h7eP
	 Bj1+oC5f0CXwYT+l/rLbFKplvhqBf76lPU6QyQLoqwbaZxpnSaR/OHd140KIF3PS0e
	 mPw8FB86KZM0HPcWExQBTFy7YTKaHjuwFvZFe4H2+b9tDUuTEfSchDQ1smTn5xXXQM
	 YEsZQZV+nOeTY5t4jJKyS7vQXbGGCN78FFEE3o75I6V4AQ79IJC54/tVP0q5jOsVw7
	 3Mf6KebBZ+5NpFOHvl52ukp4uzKxff+eGlkjVpOWXr6YXVcEvDJu67zBr3/iKQ8eEg
	 LNMeewg5T6+iQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E91B43CB35
 for <cake@lists.bufferbloat.net>; Thu, 22 Aug 2019 05:19:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=ULedxFMsQ3x8w8m3hyFsp798j6eOURfeE17oNtX7vN8=; 
 b=jjmHAH4SZJY99PeZxNyzXIDEQcgNw4QOyN9IeSaqzyPrnlNKRp5tl/XpkZUeszxsUCLYyKC5YQ+hVslQ+mlzw+UDnOtEq1ImBPv3laqP1zO4eE8H7DCUwfzE1UNAu3q7zkt6vJq+SOuorfIrVW/JgJim/i/9TTUDugZx0Fmsiz4=;
To: Dave Taht <dave.taht@gmail.com>, =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vu?=
 =?UTF-8?Q?sen?= <toke@redhat.com>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <87wof7sriw.fsf@toke.dk>
 <6782ec15-30eb-63b0-f54f-376c5e6b840b@newmedia-net.de>
 <87tvabsp99.fsf@toke.dk>
 <74bccc2b-b805-255f-b6a7-83ade9af6765@newmedia-net.de>
 <87r25fsn70.fsf@toke.dk>
 <b52b087d-c21c-e190-1bc7-a06e5fe6305f@newmedia-net.de>
 <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com> <87sgpvflo4.fsf@taht.net>
 <87wof6rf7t.fsf@toke.dk> <7656FCDE-C590-4B0C-B191-B9FAC928A762@gmail.com>
 <CAA93jw4sEE_oQsX66xLkE+YUv=wM7AchfpUspC0y_Bf2nLdVOQ@mail.gmail.com>
 <5eb4c395-c718-2d28-65a7-9762cf8d5bea@newmedia-net.de>
 <47AD5102-B66F-44A5-AADE-D167ECB94A61@gmx.de>
 <1d772664-b6cc-a528-9725-96a431032875@newmedia-net.de>
 <87v9uqea3x.fsf@taht.net> <87tvaap57q.fsf@toke.dk>
 <CAA93jw6f0kedxwoN-ER3W1QKeg0sMxVCy6YYk_gRbrVwhD42jQ@mail.gmail.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <5bbd2b81-9846-3a7a-130c-0f59e04fd2d1@newmedia-net.de>
Date: Thu, 22 Aug 2019 11:18:55 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAA93jw6f0kedxwoN-ER3W1QKeg0sMxVCy6YYk_gRbrVwhD42jQ@mail.gmail.com>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i0jGI-0003nL-CB; Thu, 22 Aug 2019 11:20:06 +0200
Subject: Re: [Cake] pie in dd-wrt
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

CkFtIDIxLjA4LjIwMTkgdW0gMjM6NTMgc2NocmllYiBEYXZlIFRhaHQ6Cj4gT24gV2VkLCBBdWcg
MjEsIDIwMTkgYXQgMjo0MCBQTSBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0
LmNvbT4gd3JvdGU6Cj4+IERhdmUgVGFodCA8ZGF2ZUB0YWh0Lm5ldD4gd3JpdGVzOgo+Pgo+Pj4g
U2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyaXRl
czoKPj4+Cj4+Pj4gQW0gMjEuMDguMjAxOSB1bSAxODoyMSBzY2hyaWViIFNlYmFzdGlhbiBNb2Vs
bGVyOgo+Pj4+PiBPbiBBdWd1c3QgMjEsIDIwMTkgNjoxMjowMyBQTSBHTVQrMDI6MDAsIFNlYmFz
dGlhbiBHb3R0c2NoYWxsIDxzLmdvdHRzY2hhbGxAbmV3bWVkaWEtbmV0LmRlPiB3cm90ZToKPj4+
Pj4+IHRoYXRzIHJhdGhlciBvbGQuIGkgcmV3cm90ZSBhbGwgdGhlIHFvcyBjb2RlIGluIHRoZSBs
YXN0IDQgb3IgNSBkYXlzLgo+Pj4+Pj4gc28KPj4+Pj4+IHRoaW5ncyBtaWdodCBiZSBjaGFuZ2Vk
LiBuZXh0IHBoYXNlIGlzIGJyaW5naW5nIGFsbCB0aGUgbGluayBsZXZlbAo+Pj4+Pj4gZGV0YWls
IGNvbmZpZ3VyYXRpb24gc3R1ZmYgaW50byB0aGUgZ3VpIHdoaWNoIHdpbGwgYmUgZG9uZQo+Pj4+
Pj4gdG9tb3Jyb3cgb3IgYXQgbGVhc3Qgc3RpbGwgd2l0aGluIHRoaXMgd2Vlay4KPj4+Pj4+IGkg
YWxzbyBhZGRlZCBub3cgY2FrZSB0byBzb21lIHNtYWxsZXIgbG93IGJ1ZGdlZCByb3V0ZXJzIHdp
dGggbGltaXRlZAo+Pj4+Pj4gcmVzb3VyY2VzLCBzbyBzZWUgaG93IGl0IHJ1bnMuIGkgaGFkIGJh
ZCBleHBlcmllbmNlcyB3aXRoIGZxX2NvZGVsIGluCj4+Pj4+PiB0aGUgcGFzdCBkdWUgc29tZSBo
aWdoIG1lbW9yeSB1c2FnZS4KPj4+Pj4+IGVzcGVjaWFsbHkgc2luY2UgaXRzIGhhcmQgY29kZWQg
c29tZXdoYXQgaW50byB0aGUgd2lyZWxlc3MgYXRoOWsKPj4+Pj4+IGRyaXZlci4KPj4+Pj4+IHNv
IGkgYWxyZWFkeSBtb2RkZWQgaXQgZm9yIG1vcmUgZWZmaWNpZW50IGhhbmRsaW5nLiA0IG1iIG1h
eCBwZXIgcXVldWUKPj4+Pj4+IGlzIHNpbXBseSB0b28gbXVjaCBmb3IgIGEgMzIgbWIgcmFtIGJh
c2VkIHJvdXRlci4KPj4+Pj4gVGhpcyBpcyB3aHkgSSdtIHNxbSB3ZSByZWR1Y2VkIHRoZSBxdWV1
ZWQgcGFja2V0IG1heGltdW0gbSB0byBhcm91bmQgMTAwMCwgYW5kIGFsc28gd2h5IGNha2UgaGFz
IGFuIGV4cGxpY2l0IG1lbWxpbWl0IGtleXdvcmQuCj4+Pj4geWVhaCBidXQgZG9lcyB0aGlzIGhl
bHAgaWYgZnFfY29kZWwgaXMgaGFyZGNvZGVkIGludG8gbWFjODAyMTE/Cj4+Pj4gZnFfY29kZWwg
aGFzIGEgbWVtbGltaXQgIGtleXdvcmQgdG9vIGJ0dy4gaXRzIGZpeGVkIHRvIDRNQi4gaSByZWR1
Y2VkCj4+Pj4gaXQgdG8gMjU2a2Igb24gbG93IG1lbW9yeSBhcmNoaXRlY3R1cmVzLiBubyBvdGhl
ciB3YXkgdG8gZ2V0IGFyb3VuZAo+Pj4+IE9PTSBwcm9ibGVtcwo+Pj4+IG1hYzgwMjExICBkb2Vz
IGFsd2F5cyBtYWtlIHVzZSBvZiBmcV9jb2RlbC4gaXQgaGFzIGEgb3duIGJ1aWxkIGluCj4+Pj4g
aW1wbGVtZW50YXRpb24KPj4+IENlcnRhaW5seSBtZW1vcnkgbGltaXRzIGFyZSBhIGh1Z2UgcHJv
YmxlbSB0aHJvdWdob3V0IGNvbXBsZXggcWRpc2NzLAo+Pj4gZXNwZWNpYWxseSB3aGVuIHN0YWNr
ZWQgdXAgKGVnIGhmc2MgMSAtPiBxZGlzY3ggaGZzYyAyIC0+IHFkaXNjIHgpLAo+Pj4gYW5kCj4+
Pgo+Pj4gT09NcyBzdWNrLiBQYXJ0aWN1bGFybHkgYXMgZmV3IHRlc3QgcGFja2V0IGZsb29kaW5n
IHRoZWlyIGRldmljZXMKPj4+IGFmdGVyIHNldHRpbmcgdXAgYSBjb21wbGV4IHFkaXNjIHN5c3Rl
bS4KPj4+Cj4+PiBCeXRlcyA9IHRpbWUuIEl0IGRvZXNuJ3QgbWF0dGVyIGhvdyBtYW55IHF1ZXVl
cyB5b3UgaGF2ZS4gVGhpcwo+Pj4gdG8gbWUgaGFzIGFsd2F5cyBiZWVuIG9uZSBvZiB0aGUgYmln
Z2VzdCBmbGF3cyBvZiB0aGUgdGMgc3Vic3lzdGVtCj4+PiBpbiBnZW5lcmFsIGlzIHRoYXQgdGhl
IHRvdGFsIGFtb3VudCBvZiBtZW1vcnkgaW4gdXNlIG9uCj4+PiBhIGdpdmVuIHBoeXNpY2FsIGlu
dGVyZmFjZSBzaG91bGQgYmUgbWFuYWdlZCBieSB0aGUgdG9wbW9zdCBsYXllci4KPj4+Cj4+PiBT
YW1lIHByb2JsZW0gZm9yIHdpZmkgaW4gbXVsdGlwbGUgU1NJRHMuLi4gaXQncyBzdGlsbCBqdXN0
IG9uZSBkZXZpY2UuCj4+Pgo+Pj4gSG93ZXZlciB3ZSBkbyBuZWVkIGVub3VnaCBieXRlcyB0byBr
ZWVwIHRoZSBkZXZpY2UgYnVzeSBhbmQgdGhlcmUKPj4+IGFyZSBvdGhlciBwcm9ibGVtcyB3aXRo
IHBlciBwYWNrZXQgbGltaXRzIGxlYWRpbmcgbWUgdG8gcHJlZmVyCj4+PiB1c2luZyBqdXN0IG1l
bW9yeSBsaW1pdHMuIE9uZSBpcywgdGhhdCB5b3VyIHR5cGljYWwgYWNrIHBhY2tldAo+Pj4gY29t
aW5nIG9mZiB0aGUgcnggcmluZyBpcyBhY3R1YWxseSAyayBpbiBzaXplLCBub3QgNjQgYnl0ZXMu
Cj4+PiBJIGhhZCBhdCBvbmUgcG9pbnQgKGluIG9wZW53cnQpIHNvbWV0aGluZyB0aGF0IHRvb2sg
c21hbGwgcGFja2V0cwo+Pj4gYW5kIGNvcGllZCB0aGVtIHRvIGEgc21hbGxlciBhbGxvY2F0aW9u
IHdoaWNoIHRvb2sgcHJlc3N1cmUgb2ZmIHRoZQo+Pj4gbWVtb3J5IGFsbG9jYXRvci4KPj4+Cj4+
PiBJJ3ZlIGtpbmQgb2YgbG9zdCB0cmFjaywgZGlkIHRoZSBhdGg5ayB3aWZpIHN0dWZmIHVzZSAx
IGFsbG9jYXRpb24gZm9yCj4+PiBhbGwgNCBodyBxdWV1ZXM/IEknbSBhZnJhaWQgdG8gbG9vayB0
aGlzIG1vcm5pbmcuLi4gKGFuZCBJJ20gbm90IGJpZwo+Pj4gb24gdGhlIDQgaHcgcXVldWVzIGVp
dGhlcikKPj4gVGhlIG1lbW9yeSBsaW1pdCBpbiBtYWM4MDIxMSBpcyBnbG9iYWwgcGVyIHBoeS4K
PiB5ZWEhIHdpbiEgU28gbXVjaCBiZXR0ZXIgdGhhbiBmb3VyIGluc3RhbmNlcyBwZXIgc3NpZC4K
YmFkIG9mIHNvbWUgZGV2aWNlcyBoYXZlIDIgcGh5cyBhbmQgc3RpbGwganVzdCAzMiBtYiByYW0u
IGkgbWVhbiB0aGUgNCAKbWIgbGltaXQgaSB3YXMgdGFsa2luZyBhYm91dCBpcyBqdXN0IGEgbW9k
IGJ5IG9wZW53cnQuIHRoZSBvcmlnaW5hbCAKZGVmYXVsdCBpcyAzMiBtYiBmb3IgZnFfY29kZWwg
aW4gbWFjODAyMTEuCgo+Cj4+IC1Ub2tlCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+IENha2UgbWFpbGluZyBsaXN0Cj4+IENha2VAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Cj4+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nh
a2UKPgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNh
a2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMu
YnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

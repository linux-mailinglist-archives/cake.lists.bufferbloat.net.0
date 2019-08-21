Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 77673980AA
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 18:50:42 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 700233CB38;
	Wed, 21 Aug 2019 12:50:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566406241;
	bh=oPQotfqpZTd4bB48HSTOqXaPDNpZhp0yL37BQMVrw7Y=;
	h=From:To:References:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DxY4JM6qqQWYCIC9iVbW7BEXIbiSxaVL/TIemWyKtA6atLXxEKgNRPjzRqc0+CCIE
	 zQR3ZMkih/hG/tTawtqSvmlDnDKupu3chu7MoEOnGodeH3B3iBbl69DXtso1WJcrBR
	 blCsXxvJ4E7JAcbxu7M81h2AceFFlFzAUjL267r3qVHmNyExh4PSS/+aNb/9Dm9V0w
	 QmBdp319FZTSPR2MWuJ8IlxTQZesKwwbTIqx/17jC04PabL4pFfZjI/j3u3stZ6r1O
	 XR+3wRgu1mnnWJyR/adZUSIrk2JS+xTEYRK1UvLy9v++j/0n7fSyv2Xzrp/EVA9w0e
	 kAuyyrfL0hzXQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.taht.net (mail.taht.net [176.58.107.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5BC4C3CB35
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 12:50:40 -0400 (EDT)
Received: from dancer.taht.net (unknown
 [IPv6:2603:3024:1536:86f0:eea8:6bff:fefe:9a2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.taht.net (Postfix) with ESMTPSA id A09EF21425;
 Wed, 21 Aug 2019 16:50:38 +0000 (UTC)
From: Dave Taht <dave@taht.net>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
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
 <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com>
 <87sgpvflo4.fsf@taht.net> <87wof6rf7t.fsf@toke.dk>
 <7656FCDE-C590-4B0C-B191-B9FAC928A762@gmail.com>
 <CAA93jw4sEE_oQsX66xLkE+YUv=wM7AchfpUspC0y_Bf2nLdVOQ@mail.gmail.com>
 <5eb4c395-c718-2d28-65a7-9762cf8d5bea@newmedia-net.de>
 <47AD5102-B66F-44A5-AADE-D167ECB94A61@gmx.de>
 <1d772664-b6cc-a528-9725-96a431032875@newmedia-net.de>
Date: Wed, 21 Aug 2019 09:50:26 -0700
In-Reply-To: <1d772664-b6cc-a528-9725-96a431032875@newmedia-net.de> (Sebastian
 Gottschall's message of "Wed, 21 Aug 2019 18:28:38 +0200")
Message-ID: <87v9uqea3x.fsf@taht.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
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
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

CgpTZWJhc3RpYW4gR290dHNjaGFsbCA8cy5nb3R0c2NoYWxsQG5ld21lZGlhLW5ldC5kZT4gd3Jp
dGVzOgoKPiBBbSAyMS4wOC4yMDE5IHVtIDE4OjIxIHNjaHJpZWIgU2ViYXN0aWFuIE1vZWxsZXI6
Cj4+Cj4+IE9uIEF1Z3VzdCAyMSwgMjAxOSA2OjEyOjAzIFBNIEdNVCswMjowMCwgU2ViYXN0aWFu
IEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyb3RlOgo+Pj4gdGhh
dHMgcmF0aGVyIG9sZC4gaSByZXdyb3RlIGFsbCB0aGUgcW9zIGNvZGUgaW4gdGhlIGxhc3QgNCBv
ciA1IGRheXMuCj4+PiBzbwo+Pj4gdGhpbmdzIG1pZ2h0IGJlIGNoYW5nZWQuIG5leHQgcGhhc2Ug
aXMgYnJpbmdpbmcgYWxsIHRoZSBsaW5rIGxldmVsCj4+PiBkZXRhaWwgY29uZmlndXJhdGlvbiBz
dHVmZiBpbnRvIHRoZSBndWkgd2hpY2ggd2lsbCBiZSBkb25lCj4+PiB0b21vcnJvdyBvciBhdCBs
ZWFzdCBzdGlsbCB3aXRoaW4gdGhpcyB3ZWVrLgo+Pj4gaSBhbHNvIGFkZGVkIG5vdyBjYWtlIHRv
IHNvbWUgc21hbGxlciBsb3cgYnVkZ2VkIHJvdXRlcnMgd2l0aCBsaW1pdGVkCj4+PiByZXNvdXJj
ZXMsIHNvIHNlZSBob3cgaXQgcnVucy4gaSBoYWQgYmFkIGV4cGVyaWVuY2VzIHdpdGggZnFfY29k
ZWwgaW4KPj4+IHRoZSBwYXN0IGR1ZSBzb21lIGhpZ2ggbWVtb3J5IHVzYWdlLgo+Pj4gZXNwZWNp
YWxseSBzaW5jZSBpdHMgaGFyZCBjb2RlZCBzb21ld2hhdCBpbnRvIHRoZSB3aXJlbGVzcyBhdGg5
awo+Pj4gZHJpdmVyLgo+Pj4gc28gaSBhbHJlYWR5IG1vZGRlZCBpdCBmb3IgbW9yZSBlZmZpY2ll
bnQgaGFuZGxpbmcuIDQgbWIgbWF4IHBlciBxdWV1ZQo+Pj4gaXMgc2ltcGx5IHRvbyBtdWNoIGZv
csKgIGEgMzIgbWIgcmFtIGJhc2VkIHJvdXRlci4KPj4gVGhpcyBpcyB3aHkgSSdtIHNxbSB3ZSBy
ZWR1Y2VkIHRoZSBxdWV1ZWQgcGFja2V0IG1heGltdW0gbSB0byBhcm91bmQgMTAwMCwgYW5kIGFs
c28gd2h5IGNha2UgaGFzIGFuIGV4cGxpY2l0IG1lbWxpbWl0IGtleXdvcmQuCj4geWVhaCBidXQg
ZG9lcyB0aGlzIGhlbHAgaWYgZnFfY29kZWwgaXMgaGFyZGNvZGVkIGludG8gbWFjODAyMTE/Cj4g
ZnFfY29kZWwgaGFzIGEgbWVtbGltaXTCoCBrZXl3b3JkIHRvbyBidHcuIGl0cyBmaXhlZCB0byA0
TUIuIGkgcmVkdWNlZAo+IGl0IHRvIDI1NmtiIG9uIGxvdyBtZW1vcnkgYXJjaGl0ZWN0dXJlcy4g
bm8gb3RoZXIgd2F5IHRvIGdldCBhcm91bmQKPiBPT00gcHJvYmxlbXMKPiBtYWM4MDIxMcKgIGRv
ZXMgYWx3YXlzIG1ha2UgdXNlIG9mIGZxX2NvZGVsLiBpdCBoYXMgYSBvd24gYnVpbGQgaW4KPiBp
bXBsZW1lbnRhdGlvbgoKQ2VydGFpbmx5IG1lbW9yeSBsaW1pdHMgYXJlIGEgaHVnZSBwcm9ibGVt
IHRocm91Z2hvdXQgY29tcGxleCBxZGlzY3MsCmVzcGVjaWFsbHkgd2hlbiBzdGFja2VkIHVwIChl
ZyBoZnNjIDEgLT4gcWRpc2N4IGhmc2MgMiAtPiBxZGlzYyB4KSwKYW5kIAoKT09NcyBzdWNrLiBQ
YXJ0aWN1bGFybHkgYXMgZmV3IHRlc3QgcGFja2V0IGZsb29kaW5nIHRoZWlyIGRldmljZXMKYWZ0
ZXIgc2V0dGluZyB1cCBhIGNvbXBsZXggcWRpc2Mgc3lzdGVtLiAKCkJ5dGVzID0gdGltZS4gSXQg
ZG9lc24ndCBtYXR0ZXIgaG93IG1hbnkgcXVldWVzIHlvdSBoYXZlLiBUaGlzCnRvIG1lIGhhcyBh
bHdheXMgYmVlbiBvbmUgb2YgdGhlIGJpZ2dlc3QgZmxhd3Mgb2YgdGhlIHRjIHN1YnN5c3RlbQpp
biBnZW5lcmFsIGlzIHRoYXQgdGhlIHRvdGFsIGFtb3VudCBvZiBtZW1vcnkgaW4gdXNlIG9uCmEg
Z2l2ZW4gcGh5c2ljYWwgaW50ZXJmYWNlIHNob3VsZCBiZSBtYW5hZ2VkIGJ5IHRoZSB0b3Btb3N0
IGxheWVyLgoKU2FtZSBwcm9ibGVtIGZvciB3aWZpIGluIG11bHRpcGxlIFNTSURzLi4uIGl0J3Mg
c3RpbGwganVzdCBvbmUgZGV2aWNlLgoKSG93ZXZlciB3ZSBkbyBuZWVkIGVub3VnaCBieXRlcyB0
byBrZWVwIHRoZSBkZXZpY2UgYnVzeSBhbmQgdGhlcmUKYXJlIG90aGVyIHByb2JsZW1zIHdpdGgg
cGVyIHBhY2tldCBsaW1pdHMgbGVhZGluZyBtZSB0byBwcmVmZXIKdXNpbmcganVzdCBtZW1vcnkg
bGltaXRzLiBPbmUgaXMsIHRoYXQgeW91ciB0eXBpY2FsIGFjayBwYWNrZXQKY29taW5nIG9mZiB0
aGUgcnggcmluZyBpcyBhY3R1YWxseSAyayBpbiBzaXplLCBub3QgNjQgYnl0ZXMuCkkgaGFkIGF0
IG9uZSBwb2ludCAoaW4gb3BlbndydCkgc29tZXRoaW5nIHRoYXQgdG9vayBzbWFsbCBwYWNrZXRz
CmFuZCBjb3BpZWQgdGhlbSB0byBhIHNtYWxsZXIgYWxsb2NhdGlvbiB3aGljaCB0b29rIHByZXNz
dXJlIG9mZiB0aGUKbWVtb3J5IGFsbG9jYXRvci4KCkkndmUga2luZCBvZiBsb3N0IHRyYWNrLCBk
aWQgdGhlIGF0aDlrIHdpZmkgc3R1ZmYgdXNlIDEgYWxsb2NhdGlvbiBmb3IKYWxsIDQgaHcgcXVl
dWVzPyBJJ20gYWZyYWlkIHRvIGxvb2sgdGhpcyBtb3JuaW5nLi4uIChhbmQgSSdtIG5vdCBiaWcK
b24gdGhlIDQgaHcgcXVldWVzIGVpdGhlcikKCk9uZSBhZHZhbnRhZ2Ugb2YgY2FrZSBhcyBjYWtl
IGFzIHRoZSBzaGFwZXIgaXMgaXQgdXNlcyBvbmUgYWxsb2NhdGlvbgpmb3IgYWxsLiAgaGZzYyAt
PiBjYWtlL2ZxX2NvZGVsL3BpZS9ldGMsIG5vdCBzbyBtdWNoLgoKc2ltaWxhcmx5LCBteSBvbGQg
InBsYW4iIGZvciBhIHNjaF9tcV9zaGFwZXIgKGZvciBoYXJkd2FyZSBtcSkgd2FzIHRoYXQKdGhl
IHN1Yi1xZGlzY3Mgd291bGQgYWxsIHNoYXJlIHRoZSBzYW1lIGJhbmR3aWR0aCBhbmQgbWVtb3J5
IGFsbG9jYXRpb24uCgoKCj4+Cj4+IEJlc3QgUmVnYXJkcwo+PiAgICAgICAgICBTZWJhc3RpYW4K
Pj4KPj4KPj4+Cj4+PiBTZWJhc3RpYW4KPj4+Cj4+PiBBbSAyMS4wOC4yMDE5IHVtIDE3OjQyIHNj
aHJpZWIgRGF2ZSBUYWh0Ogo+Pj4+IHRoaXMgc2hvd3Mgc29tZSBnb29kIHJlc3VsdHMgd2l0aCBw
aWUgb24gdGhlIGRvd25sb2FkCj4+Pj4KPj4+Pgo+Pj4gaHR0cHM6Ly9mb3J1bS5kZC13cnQuY29t
L3BocEJCMi92aWV3dG9waWMucGhwP3Q9MzEzODg2JnBvc3RkYXlzPTAmcG9zdG9yZGVyPWFzYyZz
dGFydD0zMCZzaWQ9NGQ0ZDJhNTgzYWZhZDczNzU5Y2JlZWUxYThmNGIzMjkKPj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IENha2UgbWFpbGlu
ZyBsaXN0Cj4+Pj4gQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKPj4+PiBodHRwczovL2xpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQ2FrZSBtYWlsaW5nIGxpc3QKPj4+IENha2VA
bGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4+PiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9s
aXN0aW5mby9jYWtlCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBDYWtlIG1haWxpbmcgbGlzdAo+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4g
aHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtl
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0
aW5mby9jYWtlCg==

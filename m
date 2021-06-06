Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5B839D186
	for <lists+cake@lfdr.de>; Sun,  6 Jun 2021 23:01:31 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 120763CB38;
	Sun,  6 Jun 2021 17:01:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1623013290;
	bh=TdGuB1Cm2Dw7xXz31V/fxvPM8xPiS4I2SNTsMaw78VM=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=acEiWpcdAfrN8AG0kxUzYt0o5dqKAImuBG/1GuFvlRQCAp/Dgnk3dncXSFYoU9zgz
	 OAJbxHmENTSnpCz42xxzmXDB/XShkF0pBb0vad8oePnGLhAS7uiYgH06ZQUmCsT2W0
	 TumoJpvbxXCLQJ33WUYIZzKoNKa7ZSx65qaEwSn6Mi1efPcGikfbIWv0yw710uKYc0
	 6Lp0wXywgM4HAE8q9CoeZ6QlnWRNJTIZWcH9f4GVNbvx7LCqmAJl3s5mup0XpmQID/
	 Zxbfkx/nBlnvLT+iQNNgUqc75ktubWh2oOBxxw6aMO5smieJnigF1xVXpUZt/OdxiR
	 jQ+dsk2zZIz5w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 01D273B29E
 for <cake@lists.bufferbloat.net>; Sun,  6 Jun 2021 17:01:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1623013286; bh=HBFCGTruCiRDvXIaO8oBbn5bbjwGT30zi3dzFHKrCX8=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=nO5dWRtYH8Msqw09euvsNz+uTTvpFlkgMABmmmFpVgjnmoXIq3uZIhvq13WY+1P0a
 T40ZcV2RXj86kdBtDy9iS0zi7FBiW1XEVONb3KzdKfEMygkFrDybrhW1o81mhqeWNj
 89Lk+/+M9NF/0LFnGhzgRXm23oxz1tYn1Xj77YxUroU7YwmUvMcCTSiOLi9du1jE94
 RXCU/EeJrmDW5HLkhBa5cqc6Pcvan4goAQjVbpcd9w+l5E4etHTqRtwlbPc1SMzUi9
 yTVNHoQkJXsVIfS4W8+9Hnvbg4GRWrXFgok3kRiWYfkepsyNlHtkhQCYAj5QimLXbP
 5bOKgNF4vn9Yg==
To: Pete Heist <pete@heistp.net>
In-Reply-To: <e29563108ce8841d8c56a428f72bd2644019957a.camel@heistp.net>
References: <22f3032d0dfd47f53d4d6595ee6bd192377fbc6e.camel@heistp.net>
 <87h7iawyr1.fsf@toke.dk>
 <e29563108ce8841d8c56a428f72bd2644019957a.camel@heistp.net>
Date: Sun, 06 Jun 2021 23:01:26 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87eedewvvd.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] customizing Cake's isolation with ipsets,
	tc-flow and eBPF
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

UGV0ZSBIZWlzdCA8cGV0ZUBoZWlzdHAubmV0PiB3cml0ZXM6Cgo+IE9uIFN1biwgMjAyMS0wNi0w
NiBhdCAyMTo1OSArMDIwMCwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+PiBQZXRl
IEhlaXN0IDxwZXRlQGhlaXN0cC5uZXQ+IHdyaXRlczoKPj4gCj4+ID4gSSd2ZSBhbHdheXMgd2Fu
dGVkIGEgd2F5IHRvIGN1c3RvbWl6ZSBDYWtlJ3MgaG9zdCBhbmQgZmxvdyBpc29sYXRpb24KPj4g
PiBpbgo+PiA+IGEgd2F5IHRoYXQgd291bGQgYmUgdXNhYmxlIGUuZy4gZm9yIHNtYWxsIElTUHMs
IGFuZCB0aGlzIGlzIHdoYXQgSQo+PiA+IGNhbWUKPj4gPiB1cCB3aXRoOgo+PiA+IAo+PiA+IGh0
dHBzOi8vZ2l0aHViLmNvbS9oZWlzdHAvY2FrZS1jdXN0b20taXNvbGF0aW9uCj4+ID4gCj4+ID4g
aXBzZXRzIGFyZSB1c2VkIHRvIHNldCB0aGUgc2tiIHByaW9yaXR5IG9yIG1hcmssIHRoZW4gdGMt
ZmxvdyBvciBhCj4+ID4gc2ltcGxlIGVCUEYgY2xhc3NpZmllciBpcyB1c2VkIGluIGEgY2hpbGQg
ZmlsdGVyIG9mIGNha2UgdG8gZ2V0IHRoZQo+PiA+IG1ham9yIGFuZCBtaW5vciBjbGFzcyBJRHMg
c2V0LCB3aGljaCBvdmVycmlkZSB0aGUgaG9zdCBhbmQgZmxvdwo+PiA+IGhhc2hlcy4KPj4gCj4+
IFZlcnkgY29vbCEgQXdlc29tZSB0byBzZWUgdGhlIGN1c3RvbWlzYXRpb24gb3B0aW9ucyBiZWlu
ZyB1c2VkIGZvcgo+PiBzb21ldGhpbmcgbmVhdCBsaWtlIHRoaXMhIDopCj4+IAo+PiA+IFRvIHNo
b3cgaXQgaW4gYWN0aW9uLCB0aGUgY2FrZWlzby5zaCBzY3JpcHQgc2V0cyB1cCBhIG5ldG5zCj4+
ID4gZW52aXJvbm1lbnQKPj4gPiBhbmQgcnVucyBjb21wZXRpdGlvbiBiZXR3ZWVuIHR3byAic3Vi
c2NyaWJlcnMiIGFuZCB0aHJlZSBmbG93cywgdHdvCj4+ID4gVENQCj4+ID4gZmxvd3MgYW5kIG9u
ZSB1bnJlc3BvbnNpdmUgVURQIGZsb3cuIFNldmVyYWwgY29uZmlndXJhdGlvbnMgYXJlIHJ1bgo+
PiA+IHRvCj4+ID4gc2hvdyB3aGF0IGlzIGFuZCBpc24ndCBwb3NzaWJsZS4KPj4gPiAKPj4gPiBJ
ZiBhbnlvbmUga25vd3Mgb2YgYSBzaW1wbGVyIHdheSB0aGFuIGVCUEYgdG8gZ2V0IGJvdGggdGhl
IG1ham9yIGFuZAo+PiA+IG1pbm9yIGNsYXNzIElEIHNldCBmcm9tIGlwc2V0cywgSSdkIGxpa2Ug
dG8gaGVhciBpdCwgYnV0IHRoZSBpbmNsdWRlZAo+PiA+IGNsYXNzaWZpZXJzIGFyZSBhdCBsZWFz
dCB2ZXJ5IHNpbXBsZSBvbmUtbGluZXJzLi4uCj4+IAo+PiBXZWxsLCB5b3UgY291bGQgZ28gdGhl
IG90aGVyIHdheT8gSW5zdGVhZCBvZiBpcHNldCwganVzdCBkbyB0aGUKPj4gY2xhc3NpZmljYXRp
b24gaW4gZUJQRiBhbmQgdXNlIGEgQlBGIG1hcCB0byBzdG9yZSB0aGUgSVAgYWRkcmVzc2VzLgo+
PiBUaGVyZSdzIGV2ZW4gYW4gTFBNIG1hcCB0eXBlLCBzbyB5b3UgY2FuIHVzZSBhcmJpdHJhcnkg
cHJlZml4IGxlbmd0aHMKPj4gZm9yIGVhY2ggY2xhc3MgKG9yIG5vdCwgYW5kIGp1c3QgdXNlIGEg
aGFzaG1hcCkuLi4KPgo+IFRydWUgdGhhdCwgSSBzdGFydGVkIHNvbWV0aGluZyBsaWtlIHRoYXQg
YXQgc29tZSBwb2ludDoKPgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9oZWlzdHAvdGMtdXNlcnMvCj4K
PiBidXQgSSB0aGluayBJIGdvdCBhIGxpdHRsZSBvdmVyemVhbG91cyB3aXRoIGl0LiBJJ20gbm90
IHN1cmUgaWYvd2hlbgo+IEknbGwgZ2V0IGJhY2sgdG8gdGhhdCwgYnV0IHRoZSBpcHNldCBzb2x1
dGlvbiBzZWVtcyB0byBiZSAiZ29vZCBlbm91Z2giCj4gZm9yIHdoYXQgSSAoYW5kIG15IElTUCkg
bmVlZHMuIEknbSBnbGFkIHlvdSBzbGlwcGVkIHRoZSB0YyBmaWx0ZXIKPiBvdmVycmlkZXMgaW4g
YmVmb3JlIENha2Ugd2VudCBvdXQgdGhlIGRvb3IuIDopCgpZZXMhIEkgd291bGQgbG92ZSB0byB0
YWtlIGNyZWRpdCBmb3IgdGhlIGlkZWEsIGJ1dCB0aGlzIGNhbWUgZnJvbQp0aGUgbmV0ZGV2IHJl
dmlldy4gSSBhZ3JlZSB0aG91Z2gsIGdyZWF0IHRoYXQgaXQgZW5kZWQgdXAgaW4gdGhlcmUhCgo+
IFRoaXMgZG9lc24ndCBkbyBhd2F5IHdpdGggdGhlIHBvc3NpYmxlIG5lZWQgZm9yIGEgZnVsbC1i
bG93biBJU1AgcWRpc2MKPiBvbmUgZGF5LCB3aXRoIGNvbmZpZ3VyYWJsZSBzdWJzY3JpYmVyIHRp
ZXJzLCBoYW5kbGluZyBvZiBoaWdoZXIgbG9hZHMsCj4gZXRjLCBidXQgYXQgbGVhc3QgaXQncyBz
b21ldGhpbmcgZm9yIHRoZSBsaXR0bGUgZ3V5cy4KClllYWg7IEkgaGF2ZSBzb21ldGhpbmcgaW4g
dGhlIHBpcGVsaW5lIHRoYXQgd2lsbCBob3BlZnVsbHkgZW5kIHVwIGJlaW5nCnVzZWFibGUgZm9y
IHRoYXQsIGJ1dCBtYXkgdGFrZSBhIGxpdHRsZSB3aGlsZSB0byBnZXQgdGhlcmUgOikKCi1Ub2tl
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFp
bGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

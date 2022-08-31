Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B7C5A8824
	for <lists+cake@lfdr.de>; Wed, 31 Aug 2022 23:31:46 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 828CC3CB44;
	Wed, 31 Aug 2022 17:31:44 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1661981504;
	bh=BIZS3MiZAXwZwbeyVZQRR0Q2fwkLpxIuK7FrnkmrgL8=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=QAwgpc6BHETwTX1W/FcLEMnDYMAtU7LhSez4zK8RZXIafmMPvmM119U/O4SGlTgIW
	 34+GS9wI2KX641jBVAVi4zn/nIaNtFGcZ5MoDplCCeYRajrI1KoME3BQB2Vqtirijd
	 NnLkTs1xFxESlweB+wxpKYAKi293MjOXXuUC3Wy+C7V6yXNfpG63pr8b6K6SnWs3Qg
	 BpLhb1D/d4qXDRZMhJU/GqRBjv4p8rTsJp/efeoDbFUA7upoJCl+s8rLKbMTQjUWJ3
	 2L+4ua5ySAfZd3LSFaO8VBKtgBcSgIbqrS42NLKNzZPup1d6fDiNMELApPXL6mnw68
	 yqXKVfet5sWiw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EB6813B2A4
 for <cake@lists.bufferbloat.net>; Wed, 31 Aug 2022 17:31:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1661981500; bh=XN7Z4fABDivGI+T00B5f31YahtTRj3uHxK13bdVKafg=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=L8Ob7NIKlqS0fvPzBTcnWXCPR8pm6gnY6omxkbIIh1FpWQJuSnXZTFSMhWsynvzzP
 mCdibWmf1bZAvm1Bv2bP6F83iGACt3a3DQT2uAmZ9jgHcd9vi8QKDRze/n4XmQxD71
 L2MIsezqYqccvJLONpc8p+wVXueNBhmdcUt5UItjLKXbiqQ1I52wZmaIR2Pq22xobN
 +4w9ub8TfBke3+hUNyxYCZDMRz3KX7p48OtlGm8qG+WacY+16PkZeNb+hZty3m1zS9
 ELr/jksm9lXNQG0glCT/DW1c6uw3FA4/GdLIaWwMk1kz8dAbL8EhVKveMQ+l6rTcmU
 59hNXuewFpmeA==
To: Eric Dumazet <edumazet@google.com>
In-Reply-To: <CANn89iKiJ91D7fELw9iKB4yCLaDj-WEv27wRS4PtLqM7oK8m=w@mail.gmail.com>
References: <20220831092103.442868-1-toke@toke.dk>
 <CANn89iKiJ91D7fELw9iKB4yCLaDj-WEv27wRS4PtLqM7oK8m=w@mail.gmail.com>
Date: Wed, 31 Aug 2022 23:31:38 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <875yi83xs5.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [PATCH net] sch_cake: Return __NET_XMIT_STOLEN when
 consuming enqueued skb
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev <netdev@vger.kernel.org>,
 Jamal Hadi Salim <jhs@mojatatu.com>, cake@lists.bufferbloat.net,
 Jakub Kicinski <kuba@kernel.org>, Cong Wang <xiyou.wangcong@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPiB3cml0ZXM6Cgo+IE9uIFdlZCwgQXVn
IDMxLCAyMDIyIGF0IDI6MjUgQU0gVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHRva2Uu
ZGs+IHdyb3RlOgo+Pgo+PiBXaGVuIHRoZSBHU08gc3BsaXR0aW5nIGZlYXR1cmUgb2Ygc2NoX2Nh
a2UgaXMgZW5hYmxlZCwgR1NPIHN1cGVycGFja2V0cwo+PiB3aWxsIGJlIGJyb2tlbiB1cCBhbmQg
dGhlIHJlc3VsdGluZyBzZWdtZW50cyBlbnF1ZXVlZCBpbiBwbGFjZSBvZiB0aGUKPj4gb3JpZ2lu
YWwgc2tiLiBJbiB0aGlzIGNhc2UsIENBS0UgY2FsbHMgY29uc3VtZV9za2IoKSBvbiB0aGUgb3Jp
Z2luYWwgc2tiLAo+PiBidXQgc3RpbGwgcmV0dXJucyBORVRfWE1JVF9TVUNDRVNTLiBUaGlzIGNh
biBjb25mdXNlIHBhcmVudCBxZGlzY3MgaW50bwo+PiBhc3N1bWluZyB0aGUgb3JpZ2luYWwgc2ti
IHN0aWxsIGV4aXN0cywgd2hlbiBpdCByZWFsbHkgaGFzIGJlZW4gZnJlZWQuIEZpeAo+PiB0aGlz
IGJ5IGFkZGluZyB0aGUgX19ORVRfWE1JVF9TVE9MRU4gZmxhZyB0byB0aGUgcmV0dXJuIHZhbHVl
IGluIHRoaXMgY2FzZS4KPj4KPgo+IEkgdGhpbmsgeW91IGZvcmdvdCB0byBnaXZlIGNyZWRpdHMg
dG8gdGhlIHRlYW0gd2hvIGRpc2NvdmVyZWQgdGhpcyBpc3N1ZS4KPgo+IFNvbWV0aGluZyBsaWtl
IHRoaXMKPgo+IFJlcG9ydGVkLWJ5OiB6ZGktZGlzY2xvc3VyZXNAdHJlbmRtaWNyby5jb20gIyBa
REktQ0FOLTE4MjMxCgpBaCwgcmlnaHQ7IGFwb2xvZ2llcywgd2lsbCByZXNwaW4hCgpJdCBhbHNv
IGxvb2tzIGxpa2UgZml4aW5nIGl0IHRoaXMgd2F5IHdpbGwgYWN0dWFsbHkgYnJlYWsgb3RoZXIg
dGhpbmdzCihtb3N0IG5vdGFibHkgc2NoX2Nha2UgYXMgYSBjaGlsZCBvZiBzY2hfaHRiKSwgc28g
d2lsbCBzZW5kIGEgZGlmZmVyZW50CnBhdGNoIGFzIHYyLi4uCgotVG9rZQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtl
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0
aW5mby9jYWtlCg==

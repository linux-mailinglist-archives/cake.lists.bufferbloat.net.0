Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C95068B223
	for <lists+cake@lfdr.de>; Sun,  5 Feb 2023 23:17:41 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 589AA3CB40;
	Sun,  5 Feb 2023 17:17:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1675635460;
	bh=4xKSsCkxJvly29bWtXkkZKtsgQi96nwqPmRIUn8rQ20=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=AoDyrPFwLo72C9qL7DzqvMQzc1PKxQd7XAYNsS/IHBgIdgVBWW1+EKCK9Rc/izYyG
	 A/ocpvFBlLCicwbPB9WwyUISbotCbVI83epE+Q4+juTpR7y8bRSHpa2XJeW0N8BIhk
	 sSRg8epMJwNboxMVW45rPO9DpQvVDMyz9dq2iVi7Li0SaYQE+dozM2hmKaDf+uaUEi
	 FTaklipVwvReT2Kt+XcF9nvm1UAwbsiuJcE413kj9a44+O0jjU3JDa6g/b25glwdGw
	 49TOFydl6B/2V8P1e7281W0VGDcCSCIOvO8aApRkshylJhlcLdF5j8pRphxtiBSS7d
	 QcocLZ2422/2A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1BA7F3B29E
 for <cake@lists.bufferbloat.net>; Sun,  5 Feb 2023 17:17:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1675635457; bh=FH4ksNfvYIfaLMKGi65RKseBwBXNgFgBPSwVDLRUKwo=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=N29wfz/NCOZ7uImldfqqjw12JqUSqVBjalKlMH/PUkwd0NXbNE0fUKgutDOgD0w8J
 E/U4WODjk0nCu9lDcy7Ewgbe+3igxQgKc7t1YR4bi4+eDkNs++ifknrbskc4sjKZFf
 aobzrXYa+idS/dqvF+1Fhwagv71/l1ruBwoTpdX0eYImm1O7VgYMeVzgMlhTe+GFJK
 Lmnqbg7f715UDSViP07O8oACZxNBHU1iM0kmBYX6/GzvADxObs+E5MUYmFDETx8Z/Y
 WW52kFBKuTPSQwGexEI97F0DY1wfyWXSBZzgrCFiM7S65ZZJ5crs0t8z/EMeXZD5fd
 bl4u7FEfQEuQg==
To: Dave Taht <dave.taht@gmail.com>, Cake List <cake@lists.bufferbloat.net>
In-Reply-To: <CAA93jw4+kMLHoOSE9xLhxcHcmoSj4HMBEotW_JgpOkrb046Skw@mail.gmail.com>
References: <CAA93jw4+kMLHoOSE9xLhxcHcmoSj4HMBEotW_JgpOkrb046Skw@mail.gmail.com>
Date: Sun, 05 Feb 2023 23:17:35 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87ilgfdaf4.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] flow dissection vs encapsulated traffic?
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2ZSBUYWh0IHZpYSBDYWtlIDxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3JpdGVzOgoK
PiBJbiBsb29raW5nIGhvdyB0aGUgY29kZSBoYXMgbW9ycGhlZCBzaW5jZSBJIGxhc3QgbG9va2Vk
IGF0IGl0LCBJIGZvdW5kCj4gbXlzZWxmIHN0YXJpbmcgYXQgdGhpcyBiaXQuLi4KPgo+ICAgICAg
ICAgc2tiX2Zsb3dfZGlzc2VjdF9mbG93X2tleXMoc2tiLCAma2V5cywKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIEZMT1dfRElTU0VDVE9SX0ZfU1RPUF9BVF9GTE9XX0xBQkVM
KTsKPgo+IC8vIHNvIHdlIGhhdmUgZGVsdmVkIGRlZXBseSBpbnRvIHRoZSBwYWNrZXQgYXQgdGhp
cyBwb2ludC4uLiBmaW5kaW5nCj4gdmFyaW91cyBlbmNhcHN1bGF0aW9ucy4uLgo+Cj4gdGhlbiB3
ZSBnZXQgdG86Cj4KPiAgICAgICAgIC8qIERvbid0IHVzZSB0aGUgU0tCIGhhc2ggaWYgd2UgY2hh
bmdlIHRoZSBsb29rdXAga2V5cyBmcm9tIGNvbm50cmFjayAqLwo+ICAgICAgICAgaWYgKG5hdF9l
bmFibGVkICYmIGNha2VfdXBkYXRlX2Zsb3drZXlzKCZrZXlzLCBza2IpKQo+ICAgICAgICAgICAg
ICAgICB1c2Vfc2tiaGFzaCA9IGZhbHNlOwo+Cj4gVGhpcyBsZXZlcmFnZXMgc2tiX3Byb3RvY29s
KCksIHdoaWNoIGFzIGJlc3QgYXMgSSBjYW4gdGVsbCBqdXN0IHBlZXJzCj4gaW50byB0aGUgKnZs
YW4gaGVhZGVycyosCj4gbm90IGRlZXBlciBpbnRvIHRoZSBwYWNrZXQuLi4KPgo+IFRoZW4gd2Ug
cHJvY2VlZCBtZXJyaWx5IGludG8gdGhlIHVwZGF0ZV9mbG93a2V5cyBjb2RlIHRoaW5raW5nIGl0
IGlzCj4gdGhlIG91dGVyIHR5cGUKPiAoaXB2NCksIG5vdCB0aGUgaW5uZXIsIHRoZW4gZGlzc2Vj
dCBhd2F5LCB1c2luZyBhIHY0IHVuaW9uLi4uCj4KPiBBbSBJIHJlYWRpbmcgdGhpcyB3cm9uZz8g
UGxlYXNlIHRlbGwgbWUgSSBhbSByZWFkaW5nIHRoaXMgd3JvbmcuLi4KCkkgZG9uJ3QgZm9sbG93
LiBXaGF0J3MgdGhlIGJ1ZyB5b3UgYXJlIHNlZWluZywgc3BlY2lmaWNhbGx5PwoKLVRva2UKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo=

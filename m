Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7325498927B
	for <lists+cake@lfdr.de>; Sun, 29 Sep 2024 03:35:15 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 97B723CB45;
	Sat, 28 Sep 2024 21:35:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1727573713;
	bh=6CcxA2EZwTb1+gWoJfqGHG4ZBD3IzimK0CsdLwVWzqk=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=F7xTb6h9BXLVXWEsJXxsYwo2jWuMed1p0ZtUrG1QwNAzAxHuLmVIwaOS0tZ7+cEg3
	 HiKBTB3zaRHEdxyIfZngnY0s81+6Jga6BgvUDnzcDxN/qyI9RLg/4vmVPGR8CiWw6V
	 nqi+ia6k/lNOu2u07TJU/CbDQhFhiutgabPaHIcJxXWrlHNJu/+vX6+pPUqphvK7gp
	 n5dIje+z7nx5hK+BCg7P118KFvHAx9MO3ofJYcfSodXzmiSeoFhIOTw5X1SJRp51eW
	 rvcC74Nct+EOrk1Ly3QrBp5BXlpy3vBJJT/tbMPgQFIIxG82+PA77XcAjePwmPkHDB
	 mvATVDmaPaaKw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.lang.hm (syn-045-059-245-186.biz.spectrum.com
 [45.59.245.186])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EE80E3B2A4;
 Sat, 28 Sep 2024 21:35:11 -0400 (EDT)
Received: from dlang-mobile (unknown [10.2.2.53])
 by mail.lang.hm (Postfix) with ESMTP id DDAB91E107E;
 Sat, 28 Sep 2024 18:35:10 -0700 (PDT)
Date: Sat, 28 Sep 2024 18:35:10 -0700 (PDT)
To: "David P. Reed" <dpreed@deepplum.com>
In-Reply-To: <1727557632.49023402@apps.rackspace.com>
Message-ID: <793rr84s-q113-npr2-21p0-4ror01s1p376@ynat.uz>
References: <CAA93jw46jpOcMYTb9vmyw6ywAvMkmQb3jnmbu4G-2k97PyrjmA@mail.gmail.com>
 <1727471439.369527853@apps.rackspace.com>
 <qpr4r78o-9640-ps6p-qpo2-94p0897298n5@ynat.uz>
 <1727557632.49023402@apps.rackspace.com>
MIME-Version: 1.0
Subject: Re: [Cake] bbr vs all the aqms, cake winning...
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
From: David Lang via Cake <cake@lists.bufferbloat.net>
Reply-To: David Lang <david@lang.hm>
Cc: Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gU2F0LCAyOCBTZXAgMjAyNCwgRGF2aWQgUC4gUmVlZCB3cm90ZToKCj4gT24gRnJpZGF5LCBT
ZXB0ZW1iZXIgMjcsIDIwMjQgMTc6NDMsICJEYXZpZCBMYW5nIiA8ZGF2aWRAbGFuZy5obT4gc2Fp
ZDoKPgo+PiAKPj4gY291bGQgdGhlIGNvbW11bml0eSB0cnkgYW5kIHByb2R1Y2UgJ3RyYWZmaWMg
c2ltdWxhdG9ycycgdGhhdCBpbXBsZW1lbnQgdGhlc2UKPj4gdmFyaW91cyBwcm90b2NvbHMgd2l0
aCBhIG1vcmUgcmVhbGlzdGljIHRyYWZmaWMgcGF0dGVybj8gc29tZXRoaW5nIHRoYXQgY2FuIGJl
Cj4+IHR1cm5lZCB1cCBvciBkb3duIHdpdGggYSBmZXcgcHJlc2V0cyBvZiB0aGUgbWl4IHRoYXQg
d2UgY2FuIG1ha2UgYXZhaWxhYmxlIGZvcgo+PiB0aGUgYWNhZGVtaWNzIHRvIHVzZSBmb3IgdGhl
aXIgdGVzdGluZz8KPgo+IEl0J3MgYSBwcmV0dHkgZ29vZCBpZGVhLgo+Cj4gSG93ZXZlciwgc29t
ZSB0aGluZ3MgSSB0aGluayBhYm91dC4uLml0J3MgaW1wb3J0YW50IHRvIHJlbWVtYmVyIHRoYXQg
anVzdCByZWNvcmRpbmcgdHJhZmZpYyBzdHJlYW1zIGFuZCBwbGF5aW5nIHRoZW0gYmFjayBmaWx0
ZXJzIG91dCBhbG1vc3QgYWxsIG9mIHRoZSAiY29udHJvbCIgZHluYW1pY3MuCgpUaGF0J3Mgd2h5
IEkgd2FzIHNheWluZyAndHJhZmZpYyBzaW11bGF0b3InIHJhdGhlciB0aGFuICd0cmFmZmljIHJl
cGxheScuIEEgZ29vZCAKc2ltdWxhdG9yIGlzIGEgbXVjaCBoYXJkZXIgcHJvYmxlbQoKVGhlIHNp
bXVsYXRvciBuZWVkcyBib3RoIGVuZHMgdG8gc2VuZCBhbmQgcmVjZWl2ZSB0cmFmZmlkLCBkZWFs
aW5nIHdpdGggZGVsYXlzLCAKZmFpbHVyZXMsIGFuZCB3aGF0ZXZlciB0aGUgY29udHJvbCBzeXN0
ZW0gZG9lcy4KClRoaXMgbWVhbnMgdGhhdCB0aGUgc2ltdWxhdG9yIGlzbid0ICdwbGF5IHRoZXNl
IHBhY2tldHMnIChmb3IgYWxsIHRoZSByZWFzb25zIAp5b3UgZ2F2ZSkgYnV0IHJhdGhlciBpcyBt
YW5hZ2luZyB0aGUgc2ltdWxhdGlvbiBhdCBsYXllciA3LCBub3QgYXQgbGF5ZXIgMi4gSXQgCndv
dWxkIGJlIHRoaW5ncyBsaWtlOiAnb3BlbiB0aGVzZSBjb25uZWN0aW9ucyBhbmQgc2VuZCBkYXRh
JyBUaGUgZGF0YSBjYW4gYmUgCmp1bmssIGJ1dCBpdCdzIHRpbWluZyBhbmQgc2l6ZSBtYXRjaCBy
ZWFsIHRyYWZmaWMuIFRoZXJlIGFyZSBhIGxvdCBvZiBkaWZmZXJlbnQgCnR5cGVzIG9mIHRyYWZm
aWMsIGFuZCBvbmx5IElTUHMgY2FuIHByb3ZpZGUgaW5mb3JtYXRpb24gYWJvdXQgdGhlIG1peCBv
ZiB0aGUgCnRyYWZmaWMKCmZvciB0eXBlcywgb2ZmIHRoZSB0b3Agb2YgbXkgaGVhZCBJIGtub3cg
b2Y6IG9uZS13YXkgc3RyZWFtaW5nIHN1Y2ggYXMgeW91dHViZSwgCnR3byB3YXkgc3RyZWFtaW5n
IHN1Y2ggYXMgem9vbSwgYnVsayBkb3dubG9hZHMsIGRlcGVuZGVuY2llcyAoRE5TLCBodHRwIGxp
YnJhcnkgCmNhbGxzLCBjYWNoZSBjaGVja3MpLCBnYW1pbmcsIGJ1bGsgdXBsb2FkcywgZXRjCgp0
aGUgY29udHJvbCBzb2Z0d2FyZSB3b3VsZCBoYXZlIGtub2JzIHRvIGFkanVzdCB0aGUgbWl4IG9m
IHRyYWZmaWMgdHlwZXMsIHRoZSAKbnVtYmVyIG9mIGVuZHBvaW50cyAob24gZWFjaCBlbmQpLCB0
aGUgdm9sdW1lIG9mIGRhdGEsIGFuZCByZXBvcnQgb24gZmFpbHVyZXMgCihoYXJkIGZhaWx1cmVz
IHdoZXJlIHRoZSBkYXRhIGRvZXNuJ3QgZ2V0IHRocm91Z2gsIHNvZnQgZmFpbHVyZXMgd2hlcmUg
dGhlcmUgaXMgCid0b28gbXVjaCcgbGF0ZW5jeSBmb3Igc3RyZWFtaW5nL2dhbWluZycsIHVzZXIg
cGVyY2VpdmVkIHF1YWxpdHkgKHBhZ2UgbG9hZCAKdGltZXMgZm9yIHNpbXVsYXRlZCBjb21wbGV4
IHBhZ2VzKSwgZXRjCgphbmQgdGhlbiB0aHJvdyB0aGlzIHNvcnQgb2YgdHJhZmZpYyBiZXR3ZWVu
IHRoZSBlbmRwb2ludHMgYW5kIHNlZSBob3cgaXQgY2hhbmdlcyAKd2l0aCBkaWZmZXJlbnQgY29u
dHJvbCBzeXN0ZW1zLgoKPiBIb3dldmVyLCB0aGlzIHN1Z2dlc3RzIGEgInN0cmVzcyBzaW11bGF0
b3IiIHRoYXQgbWlnaHQgaGVscCBjcmVhdGUgcmVhbGlzdGljIAo+IGV4cGVyaW1lbnRzIC0gaW5z
dGVhZCBvZiBzaW11bGF0aW5nIHRyYWZmaWMsIHNpbXVsYXRlIGluc3RhYmlsaXRpZXMgaW4gcm91
dGVycyAKPiBieSBpbmplY3RpbmcgcGFja2V0cyBpbnRvIHF1ZXVlcyBmb3IgbWl4IG9mIGZsb3dz
IGJhc2VkIG9uIHNvbWUgcHJvYmFiaWxpc3RpYyAKPiBtb2RlbCB0aGF0IGFjdHMgbGlrZSAicmVh
bCBJbnRlcm5ldCIuIFRoZXNlIGluamVjdGVkIHBhY2tldHMgbWlnaHQsIGZvciAKPiBleGFtcGxl
LCBoYXZlIGludmFsaWQgY2hlY2tzdW1zIG9uIHB1cnBvc2UgdG8gYXZvaWQgaGFybWluZyBhbnkg
ZW5kcG9pbnQgCj4gc3RhY2tzLiBTbyBzdWNoIGEgdG9vbCB3b3VsZCBiZSBhIGxvdCBlYXNpZXIg
dG8gZGVwbG95LgoKc2ltdWxhdGluZyBmYWlsdXJlcyBpcyB1c2VmdWwgb25jZSB5b3UgaGF2ZSBh
IGdvb2QgY2FzZSB0byBzdGFydCB3aXRoLiBCYXNlZCBvbiAKdGhpcyBkaXNjdXNzaW9uLCBJIGRv
bid0IGJlbGlldmUgdGhhdCB0aGV5IGFyZSBzdGFydGluZyBmcm9tIGEgZ29vZCBwb2ludCwgc28g
CmluamVjdGluZyBmYWlsdXJlcyB3b24ndCBnZXQgdGhlbSB0byB3aGVyZSB0aGV5IGNhbiB0ZWxs
IGlmIHRoZXkgY2FuIGhhbmRsZSAKInJlYWwgd29ybGQiIHRyYWZmaWMgd2VsbC4KCkEgcHJvYmxl
bSBpbmplY3RvciBpcyBhbHNvIGVhc2llciB0aGFuIHRoZSB0eXBlIG9mIHNpbXVsYXRpb24gbWFz
dGVyIEknbSB0YWxraW5nIAphYm91dC4KCkRhdmlkIExhbmcKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Fr
ZQo=

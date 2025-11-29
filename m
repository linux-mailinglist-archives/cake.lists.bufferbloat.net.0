Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A578BC94706
	for <lists+cake@lfdr.de>; Sat, 29 Nov 2025 20:33:17 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id B29479E22DE;
	Sat, 29 Nov 2025 20:33:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764444796;
	bh=uhOqAT61ucem6DjlO5U4zAUgNhxASSs8dvlZyk4Eau0=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=cExvtBInDTyXAgHLxHqu87pyG7GmpwoF71lKdPYLNHONU7faWVl6ApxVAD8ALYjpM
	 MRxlFgMqUjflIHl9Hso4hxktUvIeCjeIcSyaPINWRjT2pZatnIEnp0I+hYDr5RD2Bb
	 XLL1pAbGtaM/myNjU09NcLYTMbATnjTyRBHYY/YiDTvs0U/mHPV3rmf0cbvqAhQXWl
	 mDP9rJ4emVLh480r6ukRBwig+oMNgdpoiNUK7oQg0Qg8nICCk5cAqm7ok/CehxlEJr
	 KNKmqcD5rj/4tsgXHe0goFuror1R7hNj3X4c2UEVcEXx3s6perAVWTXEn6QgSwgM8W
	 ouw0xMlHD702A==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764444796;
 b=iUKbnI81OMP8u1KG+qLMKmaddZHjeeoAUtkaM/x+Af+jxAD+/HnLk191ReUeyvUTuUoCx
 qj9tsyNnPO918Umb76LSLEol2KGDCmPWXgSv9sXcZUxe/wKrTMqL/vrOByqTLnCuXoKuJVu
 8OEihFduMZt1RYcKg7cE3/KHwcVwM3Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764444796; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=uhOqAT61ucem6DjlO5U4zAUgNhxASSs8dvlZyk4Eau0=;
 b=mZz5SJzyZHUQ+tXNPRTwa5/T1h3JHA8zRdQ+D05qPQP8nF6ByVEuLjHof4qZ5qE1uJPv5
 0XWut2dNOIGKuC3tG8ckI2FtUqcwzEz3PxnHb2RzPfQH3EduEZa7uWdQS61bcfEU7codOnN
 x8lBHp09KxvLJAvxUhJHRUTStFwBQDw=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1764444794; bh=f/KyVCRWNS1Y8RXUJQH+pdcC5xBr+/2oT62pE2DNR8c=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=mcA9/JOKO+mcqnOtpkyJwZEecAs8jeYMaYl+y7QscbRinl/fYtSkCtTKqlFAa2n8n
	 BrOEI8rmqvFKMBP/+HoNMj/43Gw+jSFrjJ+FZUnHb2KR8uKQNJmHXo0uXpn74Wq8hh
	 hsibo6UOldCgwgVoqcFOHFb5JgSf/oNwU4N7Zj/t2T7uwoHRZgb7MdZkqx4aSWZIsG
	 aMNSM+w9Jkv37OgttawTEfJaU63VjL1CI3SyXzbWx+8xHzxu4gZPQQI03TqtUdGI7V
	 MUtWc2G/+ykayfCfNFQBV6sl2H4irbIz8fobETaAxy4eq+inQldMi0m0eUyD2KDuyr
	 LLonTXz/VwLGQ==
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Willem de Bruijn
 <willemdebruijn.kernel@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 Cong Wang <xiyou.wangcong@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>
Cc: Jonas =?utf-8?Q?K=C3=B6ppeler?= <j.koeppeler@tu-berlin.de>,
 cake@lists.bufferbloat.net,
 netdev@vger.kernel.org
In-Reply-To: <willemdebruijn.kernel.352b3243bf88@gmail.com>
References: <20251127-mq-cake-sub-qdisc-v2-0-24d9ead047b9@redhat.com>
 <20251127-mq-cake-sub-qdisc-v2-2-24d9ead047b9@redhat.com>
 <willemdebruijn.kernel.2e44851dd8b26@gmail.com> <87a505b3dt.fsf@toke.dk>
 <willemdebruijn.kernel.352b3243bf88@gmail.com>
Date: Sat, 29 Nov 2025 20:33:14 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87zf84ab2d.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: DKR25KMWWXSP7BKRYXBAYFI4CQX7U2PZ
X-Message-ID-Hash: DKR25KMWWXSP7BKRYXBAYFI4CQX7U2PZ
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v2 2/4] net/sched: sch_cake: Add cake_mq qdisc for
 using cake on mq devices
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87zf84ab2d.fsf@toke.dk/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2lsbGVtIGRlIEJydWlqbiA8d2lsbGVtZGVicnVpam4ua2VybmVsQGdtYWlsLmNvbT4gd3JpdGVz
Og0KDQo+IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToNCj4+IFdpbGxlbSBkZSBCcnVp
am4gPHdpbGxlbWRlYnJ1aWpuLmtlcm5lbEBnbWFpbC5jb20+IHdyaXRlczoNCj4+IA0KPj4gPiBU
b2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gd3JvdGU6DQo+PiA+PiBBZGQgYSBjYWtlX21xIHFkaXNj
IHdoaWNoIGluc3RhbGxzIGNha2UgaW5zdGFuY2VzIG9uIGVhY2ggaGFyZHdhcmUNCj4+ID4+IHF1
ZXVlIG9uIGEgbXVsdGktcXVldWUgZGV2aWNlLg0KPj4gPj4gDQo+PiA+PiBUaGlzIGlzIGp1c3Qg
YSBjb3B5IG9mIHNjaF9tcSB0aGF0IGluc3RhbGxzIGNha2UgaW5zdGVhZCBvZiB0aGUgZGVmYXVs
dA0KPj4gPj4gcWRpc2Mgb24gZWFjaCBxdWV1ZS4gU3Vic2VxdWVudCBjb21taXRzIHdpbGwgYWRk
IHNoYXJpbmcgb2YgdGhlIGNvbmZpZw0KPj4gPj4gYmV0d2VlbiBjYWtlIGluc3RhbmNlcywgYXMg
d2VsbCBhcyBhIG11bHRpLXF1ZXVlIGF3YXJlIHNoYXBlciBhbGdvcml0aG0uDQo+PiA+PiANCj4+
ID4+IFJldmlld2VkLWJ5OiBKYW1hbCBIYWRpIFNhbGltIDxqaHNAbW9qYXRhdHUuY29tPg0KPj4g
Pj4gU2lnbmVkLW9mZi1ieTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5j
b20+DQo+PiA+PiAtLS0NCj4+ID4+ICBuZXQvc2NoZWQvc2NoX2Nha2UuYyB8IDIxNCArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0NCj4+ID4+ICAxIGZp
bGUgY2hhbmdlZCwgMjEzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4+ID4NCj4+ID4g
SXMgdGhpcyBjb2RlIGR1cGxpY2F0aW9uIHVuYXZvaWRhYmxlPw0KPj4gPg0KPj4gPiBDb3VsZCB0
aGUgc2FtZSBiZSBhY2hpZXZlZCBieSBlaXRoZXINCj4+ID4NCj4+ID4gZXh0ZW5kaW5nIHRoZSBv
cmlnaW5hbCBzY2hfbXEgdG8gaGF2ZSBhIHZhcmlhbnQgdGhhdCBjYWxscyB0aGUNCj4+ID4gY3Vz
dG9tIGNha2VfbXFfY2hhbmdlLg0KPj4gPg0KPj4gPiBPciBhdm9pZCBoYW5naW5nIHRoZSBzaGFy
ZWQgc3RhdGUgb2ZmIG9mIHBhcmVudCBtcSBlbnRpcmVseS4gSGF2ZSB0aGUNCj4+ID4gY2FrZSBp
bnN0YW5jZXMgc2hhcmUgaXQgZGlyZWN0bHkuIEUuZy4sIHdoZXJlIGFsbCBidXQgdGhlIGluc3Rh
bmNlIG9uDQo+PiA+IG5ldGRldl9nZXRfdHhfcXVldWUoZGV2LCAwKSBhcmUgb3BlbmVkIGluIGEg
c3BlY2lhbCAic2hhcmVkIiBtb2RlIChhDQo+PiA+IGJpdCBsaWtlIFNPX1JFVVNFUE9SVCBzb2Nr
ZXRzKSBhbmQgbG9va3VwIHRoZSBzdGF0ZSBmcm9tIHRoYXQNCj4+ID4gaW5zdGFuY2UuDQo+PiAN
Cj4+IFdlIGFjdHVhbGx5IHN0YXJ0ZWQgb3V0IHdpdGggc29tZXRoaW5nIGxpa2UgdGhhdCwgYnV0
IGVuZGVkIHVwIHdpdGggdGhlDQo+PiBjdXJyZW50IHZhcmlhbnQgZm9yIHByaW1hcmlseSBVQVBJ
IHJlYXNvbnM6IEhhdmluZyB0aGUgbXEgdmFyaWFudCBiZSBhDQo+PiBzZXBhcmF0ZSBuYW1lZCBx
ZGlzYyBpcyBzaW1wbGUgYW5kIGVhc3kgdG8gdW5kZXJzdGFuZCAoJ2Nha2UnIGdldHMgeW91DQo+
PiBzaW5nbGUtcXVldWUsICdjYWtlX21xJyBnZXRzIHlvdSBtdWx0aS1xdWV1ZSkuDQo+PiANCj4+
IEkgdGhpbmsgaGF2aW5nIHRoYXQgdmFyaWFudCBsaXZlIHdpdGggdGhlIGNha2UgY29kZSBtYWtl
cyBzZW5zZS4gSQ0KPj4gc3VwcG9zZSB3ZSBjb3VsZCByZXVzZSBhIGNvdXBsZSBvZiB0aGUgbXEg
Y2FsbGJhY2tzIGJ5IGV4cG9ydGluZyB0aGVtDQo+PiBhbmQgY2FsbGluZyB0aGVtIGZyb20gdGhl
IGNha2UgY29kZSBhbmQgYXZvaWQgc29tZSBkdXBsaWNhdGlvbiB0aGF0IHdheS4NCj4+IEkgY2Fu
IGZvbGxvdyB1cCB3aXRoIGEgcGF0Y2ggdG8gY29uc29saWRhdGUgdGhvc2UgaWYgeW91IHRoaW5r
IGl0IGlzDQo+PiB3b3J0aCBpdCB0byBkbyBzbz8NCj4NCj4gU2luY2UgbW9zdCBmdW5jdGlvbnMg
YXJlIGlkZW50aWNhbCwgSSBkbyB0aGluayByZXVzaW5nIHRoZW0gaXMNCj4gcHJlZmVyYWJsZSBv
dmVyIGR1cGxpY2F0aW5nIHRoZW0uDQoNClN1cmUsIHRoYXQncyBmYWlyLiBTZWVtcyByZWxhdGl2
ZWx5IHN0cmFpZ2h0IGZvcndhcmQgdG9vOg0KDQpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9z
Y20vbGludXgva2VybmVsL2dpdC90b2tlL2xpbnV4LmdpdC9jb21taXQvP2g9bXEtY2FrZS1zdWIt
cWRpc2MmaWQ9ZmRiNjg5MWNjNTg0YTIyZDQ4MjNkNzcxYTYwMmY5ZjFlZTU2ZWVhZQ0KDQo+IEkn
bSBub3QgZnVsbHkgY29udmluY2VkIHRoYXQgbXFfY2FrZSArIGNha2UgaXMgcHJlZmVyYWJsZSBv
dmVyDQo+IG1xICsgY2FrZSAobXkgc2Vjb25kIHN1Z2dlc3Rpb24pLiBXZSBhbHNvIGRvIG5vdCBo
YXZlIGEgc2VwYXJhdGUNCj4gbXFfZnEsIHNheS4gQnV0IG1pbmUgaXMganVzdCBvbmUgb3Bpbmlv
biBmcm9tIHRoZSBwZWFudXQgZ2FsbGVyeS4NCg0KUmlnaHQsIEkgZG8gc2VlIHdoYXQgeW91IG1l
YW47IGFzIEkgc2FpZCB3ZSBkaWQgY29uc2lkZXIgdGhpcyBpbml0aWFsbHksDQpidXQgd2VudCB3
aXRoIHRoaXMgaW1wbGVtZW50YXRpb24gZnJvbSBhIGNvbmZpZ3VyYXRpb24gc2ltcGxpY2l0eQ0K
Y29uc2lkZXJhdGlvbi4gSWYgd2Ugd2VyZSB0byBpbXBsZW1lbnQgdGhpcyBhcyBhbiBvcHRpb24g
d2hlbiBydW5uaW5nDQp1bmRlciB0aGUgZXhpc3RpbmcgbXEsIHdlJ2QgaGF2ZSB0byBhZGQgYW4g
b3B0aW9uIHRvIGNha2UgaXRzZWxmIHRvIG9wdA0KaW4gdG8gdGhpcyBiZWhhdmlvdXIsIGFuZCB0
aGVuIGRlYWwgd2l0aCB0aGUgdmFyaW91cyBjb21iaW5hdGlvbnMgb2YNCnN1Yi1xZGlzY3MgYmVp
bmcgYWRkZWQgYW5kIHJlbW92ZWQgKGluY2x1ZGluZyBtaXhpbmcgY2FrZSBhbmQgbm9uLWNha2UN
CnN1Yi1xZGlzY3Mgb2YgdGhlIHNhbWUgbXEpLiBBbmQgdXNlcnNwYWNlIHdvdWxkIGhhdmUgdG8g
c2V0dXAgdGhlIG1xLA0KdGhlbiBtYW51YWxseSBhZGQgdGhlIGNha2UgaW5zdGFuY2VzIHdpdGgg
dGhlIHNoYXJlZCBmbGFnIHVuZGVybmVhdGggaXQuDQoNCldoZXJlYXMgd2l0aCB0aGlzIGNha2Vf
bXEgcWRpc2MgdGhlIHVzZXIgaW50ZXJmYWNlIGlzIGFzIHNpbXBsZSBhcw0KcG9zc2libGU6IGp1
c3Qgc3Vic3RpdHV0ZSAnY2FrZV9tcScgZm9yICdjYWtlJyBpZiB5b3Ugd2FudCB0aGUNCm11bHRp
LXF1ZXVlIGJlaGF2aW91ciBvbiBhIGRldmljZTsgZXZlcnl0aGluZyBlbHNlIHN0YXlzIHRoZSBz
YW1lLiBTaW5jZQ0KY29uZmlndXJhdGlvbiBzaW1wbGljaXR5IGlzIGFuIGV4cGxpY2l0IGdvYWwg
b2YgY2FrZSwgSSB0aGluayB0aGlzIGlzDQphcHByb3ByaWF0ZTsgYWx0aG91Z2ggaXQgbWF5IG5v
dCBiZSBmb3Igb3RoZXIgcWRpc2NzLg0KDQpIb3BlIHRoYXQgbWFrZXMgc2Vuc2U/DQoNCi1Ub2tl
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1h
aWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==

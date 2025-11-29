Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF9FC93B10
	for <lists+cake@lfdr.de>; Sat, 29 Nov 2025 10:21:38 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id C368D9DF412;
	Sat, 29 Nov 2025 10:21:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764408097;
	bh=9q3VgjpN8IgPjF7x8dtKYnQiS+NObiXPwvYJ34Iv+w8=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=TnH+sXO9FtjluKitzdX/v9mCm6DemmaYyxIYdso4Jr/+UFbIRAycp/of1GhSrpF2H
	 CkeITMlEuLPZwtJQZ8vsP5Q6H6zmVIMELOzRRfhkI43F74IEmekxkDfD5nVfXYxEa3
	 JRV2MKMn8CVCz6Jp1Ko7iD7sZ1WX+KTkn43bDFhmH0UqxxLDJvt7DjPiqbZo+e07Ka
	 c9lKLZZR8Tq0l1O7Uar7ofdmrGsfK0BUiWBnDSc/R5IVUa5Tlt8Ld79kWH+DGqUrDg
	 7Zb+wuEepNv0+yasxiyc9oFK/hw0Vy0xrP/Dt+6qwhnoavlGpSCcaLximopzO4JMDc
	 Hv6YYKO/C8/0Q==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764408097;
 b=ikHaN76Y7bShBLv4jpOpxqRXkMRJLTMQgWfn4EtUen/SpblvPNTqmCcu8w3GNMi47lwpc
 UHezqD4voGH5OthVeN46psnn3ueVdJwAUHlbokTLTNFRGUPIkp1Xe0CD99rveZAjxH1CFhg
 gwHP5mZ7204W1Ov9s8CEIExlTJdVH+c=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764408097; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=9q3VgjpN8IgPjF7x8dtKYnQiS+NObiXPwvYJ34Iv+w8=;
 b=K8JWcUhAkCgKFZjADjPZLF0v4o+F0eYUH9h9en7+la3y22D07SBr3OnmGbxIHy3TaelrM
 GwJ1wd+rUgry+QZAL3GNMsws9Jdkc8HnGaEZjI1UPhizUMF7jvrBlbZ/umol3RXS8cEHSM5
 vUJJuQK9lny4OLbgzw774YsgrtJAtTs=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1764408095; bh=TcHF9XI+kpMbFyGDJlrjny70cbMfdgOug3ms9WKBPl4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=B8illfKGqRmxTe+Hw/pryELSotuukBz7eIrdjZ14eGSw49arwh8yrw5fGQTwF6CjL
	 HRrHmziB7DQqVW29bk4WSXKkCwRqioiiJQrOV1+jShpdMXsIT9HOAw9+9GqjysDnRt
	 IVi8hybtYRmeIHA4ZbQBQxQAnRwN8/MkjX9dqA1iWr2nioV/d24DVfHgm8Yb+su5jV
	 Pwy7DE16Sxi5oZ/JJ6/OA+Fy/XtY2gVNBgkTVzhNTCseSkYoKWpe+KiTUf42m246dR
	 WXftBuGoKDN4+Wdn8tJZcbjLhro/ES1sy77ybXSa7YvSJQ6phJJ6Fh5L+Zt6fTIXGp
	 JRsNS2REtfP9Q==
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Jamal Hadi Salim
 <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>, Jiri Pirko
 <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>
Cc: Jonas =?utf-8?Q?K=C3=B6ppeler?= <j.koeppeler@tu-berlin.de>,
 cake@lists.bufferbloat.net,
 netdev@vger.kernel.org
In-Reply-To: <willemdebruijn.kernel.2e44851dd8b26@gmail.com>
References: <20251127-mq-cake-sub-qdisc-v2-0-24d9ead047b9@redhat.com>
 <20251127-mq-cake-sub-qdisc-v2-2-24d9ead047b9@redhat.com>
 <willemdebruijn.kernel.2e44851dd8b26@gmail.com>
Date: Sat, 29 Nov 2025 10:21:34 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87a505b3dt.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: MJR3OG3MFZE6BSHOJV44S2BHVKTJ7TX3
X-Message-ID-Hash: MJR3OG3MFZE6BSHOJV44S2BHVKTJ7TX3
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
Archived-At: <https://lists.bufferbloat.net/cake/87a505b3dt.fsf@toke.dk/>
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
Og0KDQo+IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToNCj4+IEFkZCBhIGNha2VfbXEg
cWRpc2Mgd2hpY2ggaW5zdGFsbHMgY2FrZSBpbnN0YW5jZXMgb24gZWFjaCBoYXJkd2FyZQ0KPj4g
cXVldWUgb24gYSBtdWx0aS1xdWV1ZSBkZXZpY2UuDQo+PiANCj4+IFRoaXMgaXMganVzdCBhIGNv
cHkgb2Ygc2NoX21xIHRoYXQgaW5zdGFsbHMgY2FrZSBpbnN0ZWFkIG9mIHRoZSBkZWZhdWx0DQo+
PiBxZGlzYyBvbiBlYWNoIHF1ZXVlLiBTdWJzZXF1ZW50IGNvbW1pdHMgd2lsbCBhZGQgc2hhcmlu
ZyBvZiB0aGUgY29uZmlnDQo+PiBiZXR3ZWVuIGNha2UgaW5zdGFuY2VzLCBhcyB3ZWxsIGFzIGEg
bXVsdGktcXVldWUgYXdhcmUgc2hhcGVyIGFsZ29yaXRobS4NCj4+IA0KPj4gUmV2aWV3ZWQtYnk6
IEphbWFsIEhhZGkgU2FsaW0gPGpoc0Btb2phdGF0dS5jb20+DQo+PiBTaWduZWQtb2ZmLWJ5OiBU
b2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4NCj4+IC0tLQ0KPj4gIG5l
dC9zY2hlZC9zY2hfY2FrZS5jIHwgMjE0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrLQ0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAyMTMgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbigtKQ0KPg0KPiBJcyB0aGlzIGNvZGUgZHVwbGljYXRpb24gdW5hdm9pZGFi
bGU/DQo+DQo+IENvdWxkIHRoZSBzYW1lIGJlIGFjaGlldmVkIGJ5IGVpdGhlcg0KPg0KPiBleHRl
bmRpbmcgdGhlIG9yaWdpbmFsIHNjaF9tcSB0byBoYXZlIGEgdmFyaWFudCB0aGF0IGNhbGxzIHRo
ZQ0KPiBjdXN0b20gY2FrZV9tcV9jaGFuZ2UuDQo+DQo+IE9yIGF2b2lkIGhhbmdpbmcgdGhlIHNo
YXJlZCBzdGF0ZSBvZmYgb2YgcGFyZW50IG1xIGVudGlyZWx5LiBIYXZlIHRoZQ0KPiBjYWtlIGlu
c3RhbmNlcyBzaGFyZSBpdCBkaXJlY3RseS4gRS5nLiwgd2hlcmUgYWxsIGJ1dCB0aGUgaW5zdGFu
Y2Ugb24NCj4gbmV0ZGV2X2dldF90eF9xdWV1ZShkZXYsIDApIGFyZSBvcGVuZWQgaW4gYSBzcGVj
aWFsICJzaGFyZWQiIG1vZGUgKGENCj4gYml0IGxpa2UgU09fUkVVU0VQT1JUIHNvY2tldHMpIGFu
ZCBsb29rdXAgdGhlIHN0YXRlIGZyb20gdGhhdA0KPiBpbnN0YW5jZS4NCg0KV2UgYWN0dWFsbHkg
c3RhcnRlZCBvdXQgd2l0aCBzb21ldGhpbmcgbGlrZSB0aGF0LCBidXQgZW5kZWQgdXAgd2l0aCB0
aGUNCmN1cnJlbnQgdmFyaWFudCBmb3IgcHJpbWFyaWx5IFVBUEkgcmVhc29uczogSGF2aW5nIHRo
ZSBtcSB2YXJpYW50IGJlIGENCnNlcGFyYXRlIG5hbWVkIHFkaXNjIGlzIHNpbXBsZSBhbmQgZWFz
eSB0byB1bmRlcnN0YW5kICgnY2FrZScgZ2V0cyB5b3UNCnNpbmdsZS1xdWV1ZSwgJ2Nha2VfbXEn
IGdldHMgeW91IG11bHRpLXF1ZXVlKS4NCg0KSSB0aGluayBoYXZpbmcgdGhhdCB2YXJpYW50IGxp
dmUgd2l0aCB0aGUgY2FrZSBjb2RlIG1ha2VzIHNlbnNlLiBJDQpzdXBwb3NlIHdlIGNvdWxkIHJl
dXNlIGEgY291cGxlIG9mIHRoZSBtcSBjYWxsYmFja3MgYnkgZXhwb3J0aW5nIHRoZW0NCmFuZCBj
YWxsaW5nIHRoZW0gZnJvbSB0aGUgY2FrZSBjb2RlIGFuZCBhdm9pZCBzb21lIGR1cGxpY2F0aW9u
IHRoYXQgd2F5Lg0KSSBjYW4gZm9sbG93IHVwIHdpdGggYSBwYXRjaCB0byBjb25zb2xpZGF0ZSB0
aG9zZSBpZiB5b3UgdGhpbmsgaXQgaXMNCndvcnRoIGl0IHRvIGRvIHNvPw0KDQotVG9rZQ0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=

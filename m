Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BB5D1E3CF
	for <lists+cake@lfdr.de>; Wed, 14 Jan 2026 11:54:17 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 5BA0CBB05E8;
	Wed, 14 Jan 2026 11:54:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1768388056;
	bh=4BAGXdE3mrzvcV+chX2MhDnEfCRoHMbdNpNtBUYlbOg=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=H47Yly4Daa6Kk9AXXHGVhCDD/kXPRyoHF3lJDT0hgK7QIBGIvx7ocAWdCQh3js7+3
	 0vgKACr9RHtvQUFtwFrP7zWug0dWiKPwhFqeMDOI6oUwIOf6u9r9uxy5RYVm2xHQVt
	 zp3buiMYZnWT90ZT0FSI5VArwZRwXdX0dajA4rXIdaGpmyaCYKms/LRf0Z0Ke95HrN
	 hpbpMA66LtdCTgy5IRgpCwMXlycG7eE3WEM5c8cOveiBH6JoWDTpTscWixt8puJUgL
	 xTMo+4a6Z3U9w6DJe9lq39hXajToJITTwSH9rqoyE1buFmchYDLiUjt+4TAtQgzsTk
	 FHBNKlkkiYkOQ==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1768388056;
 b=AXjyEsuJm9nWrT22Xo6rmV3nzcbELlngu3mxnBgBvvPhhAAJsgZr5uanktj/JBbhZWlYl
 U1J7Uf5O5T3ct1cJv6onP1Z1kp9wNV1dipQ3P8E64rXVlE2jCISmZI+v7RW+qvT3MrAiaSi
 MFrFpV140ohOZhId5MMlsNyc4KDRbx0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1768388056; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=4BAGXdE3mrzvcV+chX2MhDnEfCRoHMbdNpNtBUYlbOg=;
 b=Y+FEqCyi7nRfrg5luws/obazO2YfWzrWgb/T+E/0ylxN+39YS0W0tUBEm8VXESvV5mSOu
 oW3koeGAMOKtd2ZTnwh5uB0ukiGEjJUlkblL9llTAVO1hG1aljF5hjzjBVqR99M7sldIh++
 7j1Vfju6BN9GgIOo+/OgEPuI2b03kYw=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1768388054; bh=ebA5xYZs+17O4zaAsWAKepT51kZFKCWS1n0x4EfFURg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=gzMW+j3Qw9O4WKbG/prvJRpqAFP4vz9w5tZ0PzYaBdsX1x+kFpGnhnWwihMQViWm7
	 7XqQiEz3wVNUaucnmfVmPYNqkqQUbpQKXfwsYoQ0ia+I9dbX9L4nuFzH8d7j0KHhRn
	 R7jZWOi0obkMVYigAKLVS84JAfq5DKsvDNYjMoar6UnUBpJRnnpUxG37e/N/fgMlzz
	 /CB4rHb5KlEIRB7GNg0Yi28zNfo5e4Lx8aQHJNoZFlPfi1xxy5edWVYPf6R9a3gHll
	 Kc3S/JQsImCeWECBqeVp0cWJTmV0hqQvslI3+kmkJ3KK1DVFsjOjeIjnXobU80Ubgi
	 HOAkCquwjVLQA==
To: Eric Dumazet <edumazet@google.com>
Cc: Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang
 <xiyou.wangcong@gmail.com>, Jiri Pirko <jiri@resnulli.us>, Paolo Abeni
 <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>, Jakub
 Kicinski <kuba@kernel.org>, Simon Horman <horms@kernel.org>,
 cake@lists.bufferbloat.net, netdev@vger.kernel.org
In-Reply-To: 
 <CANn89iLdM=a=oagYA=LKbfaDuhQaYtxA0wNERuzNLGghA58Phw@mail.gmail.com>
References: <20260113143157.2581680-1-toke@redhat.com>
 <CANn89iLdM=a=oagYA=LKbfaDuhQaYtxA0wNERuzNLGghA58Phw@mail.gmail.com>
Date: Wed, 14 Jan 2026 11:54:12 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87ecns1n3f.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: XYGYLE4KJTJIFMVYCZ2LCNIYYRSGEMSA
X-Message-ID-Hash: XYGYLE4KJTJIFMVYCZ2LCNIYYRSGEMSA
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next] net/sched: cake: avoid separate allocation of
 struct cake_sched_config
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87ecns1n3f.fsf@toke.dk/>
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

RXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPiB3cml0ZXM6DQoNCj4gT24gVHVlLCBK
YW4gMTMsIDIwMjYgYXQgMzozMuKAr1BNIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUBy
ZWRoYXQuY29tPiB3cm90ZToNCj4+DQo+PiBQYW9sbyBwb2ludGVkIG91dCB0aGF0IHdlIGNhbiBh
dm9pZCBzZXBhcmF0ZWx5IGFsbG9jYXRpbmcgc3RydWN0DQo+PiBjYWtlX3NjaGVkX2NvbmZpZyBl
dmVuIGluIHRoZSBub24tbXEgY2FzZSwgYnkgZW1iZWRkaW5nIGl0IGludG8gc3RydWN0DQo+PiBj
YWtlX3NjaGVkX2RhdGEuIFRoaXMgcmVkdWNlcyB0aGUgY29tcGxleGl0eSBvZiB0aGUgbG9naWMg
dGhhdCBzd2FwcyB0aGUNCj4+IHBvaW50ZXJzIGFuZCBmcmVlcyB0aGUgb2xkIHZhbHVlLCBhdCB0
aGUgY29zdCBvZiBhZGRpbmcgNTYgYnl0ZXMgdG8gdGhlDQo+PiBsYXR0ZXIuIFNpbmNlIGNha2Vf
c2NoZWRfZGF0YSBpcyBhbHJlYWR5IGFsbW9zdCAxN2sgYnl0ZXMsIHRoaXMgc2VlbXMNCj4+IGxp
a2UgYSByZWFzb25hYmxlIHRyYWRlb2ZmLg0KPj4NCj4+IFN1Z2dlc3RlZC1ieTogUGFvbG8gQWJl
bmkgPHBhYmVuaUByZWRoYXQuY29tPg0KPj4gU2lnbmVkLW9mZi1ieTogVG9rZSBIw7hpbGFuZC1K
w7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+DQo+PiAtLS0NCj4NCj4gVGhpcyBpcyBhbHNvIGZp
eGluZyBhIHBhbmljLCBzbyA6DQo+DQo+IEZpeGVzOiBiYzBjZTJiYWQzNmMgKCJuZXQvc2NoZWQ6
IHNjaF9jYWtlOiBGYWN0b3Igb3V0IGNvbmZpZyB2YXJpYWJsZXMNCj4gaW50byBzZXBhcmF0ZSBz
dHJ1Y3QiKQ0KPg0KPiBGb3IgdGhlIHJlY29yZCwgYSBmaXggZm9yIHRoZSBwYW5pYyB3b3VsZCBi
ZSA6DQoNCkFoIHllcywgb2YgY291cnNlOyB0aGFua3MgZm9yIG5vdGljaW5nIChhbmQgZm9yIHRo
ZSB0YWcpIQ0KDQotVG9rZQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldAo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 51322BD2C7C
	for <lists+cake@lfdr.de>; Mon, 13 Oct 2025 13:31:52 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 03EE678E92C;
	Mon, 13 Oct 2025 13:31:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1760355111;
	bh=GJuKwJcbFaBWrXFTwkp/qsg7/TgzV/5YQmM62nAa0rM=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=DTCvifqCjqdvzp5g+67YCrKUFyXtwRkJl06BTaNeJKddjLQIuRdmMEzKV2i6ExcQ+
	 UuY1WHa07Fhwj3owMq2ht9xQNNdv1EcJKA7Cp8BLlMyHkFus0b4eRfjrq9j+OmFzxT
	 xus4v4kWOqUsZo29jTtFDuHFslIJSK+T3ZDa4VguiPdeWx393cIOKr51XAfDyjlWrc
	 JFC3olnyyF8oUPXm5CSwsX7oWswBUqPBi7GoxTbAd/QMbQ1KCj94lbWubVij91nC6U
	 7jBAircl0eqFlk/ivwA+KE/xHJlskQAqMnZ2IDBmeN7NJ75IMeHMDKjBMaQC9qDWBP
	 b8V8YnItCcKOw==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1760355110;
 b=MLrlH9GihZIqXiRhTTD7RmZalKO6QZPHPcWR/jYa5HgL8ah6kf2GO1zEPGkHIz085x3Ay
 Zszl/CYA84qeDKmWdPcDdwfAE0Ji0Uxw9uCDupOZpfchzbx7kq+nibnnRtm/+4YXFIXaUHH
 UstL/kIURZ/7ZhungbQSVYKhN0/gBHI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1760355110; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=GJuKwJcbFaBWrXFTwkp/qsg7/TgzV/5YQmM62nAa0rM=;
 b=ZieMLtIn5wAFfGE/iAEUHgNhQQhEgy/rl+N3mT8D/OuzwTaBuqD83ueSlPA9j3xl9YEne
 TEk0/tGnA0nJu+x+dyCSzBmLmzcqGTBna+Q+1uVHKPwWq4Xq8uGtpXUQNL8uBoQ0mZjyxCQ
 YDLNfdcHvLHM3XCTrTBZdrRdr1+lCsI=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1760355108; bh=uk4LKFdpJMLTA/xiRvdkdBXYjWK9L0XEP4+c/M0T/fk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=B82ARk1c4axhPbU2bRBFeaEr9DHHTMrHNed3QO6WxnZcMtnDSow14VWSWARUAxMwl
	 hGm7Cr3Zr2aGcKsfqQBYLJ/MqviNKLLPWEgBB3DDhiC1yr2gsuGknSJWihI8vDMuwx
	 GdBrUeNYTtcSyOkTb8YOo9Iur4/RiOCad14Ktz4UL9SLwkF3YQp3VTpsdAhvPQJU4N
	 Z7MbHJ0TwXxegEbvckhlKVYQSgXUu8EsVtKl3h8XfqDgQx/WjmPgmAEVEL5HU6Wom5
	 xDtus4FcZGJKnuqp8rmppxry88h/jf00/9vQzVLJatX3FICPzxelgKNw9wQopyVZb2
	 YUF5wfDaBLIRg==
To: Jamal Hadi Salim <jhs@mojatatu.com>
Cc: Cong Wang <xiyou.wangcong@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jonas =?utf-8?Q?K?=
 =?utf-8?Q?=C3=B6ppeler?=
 <j.koeppeler@tu-berlin.de>, cake@lists.bufferbloat.net,
 netdev@vger.kernel.org
In-Reply-To: 
 <CAM0EoMnkOoA1x0o4VQ35kS-Sa69QSCRwmQBtVx5hEF9qo6rv4A@mail.gmail.com>
References: <20250924-mq-cake-sub-qdisc-v1-0-43a060d1112a@redhat.com>
 <CAM0EoMnkOoA1x0o4VQ35kS-Sa69QSCRwmQBtVx5hEF9qo6rv4A@mail.gmail.com>
Date: Mon, 13 Oct 2025 13:31:48 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87v7kj597f.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: WMMFPKKAGZIAGA2DE5HHZBZU4P5POWEQ
X-Message-ID-Hash: WMMFPKKAGZIAGA2DE5HHZBZU4P5POWEQ
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH RFC net-next 0/4] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87v7kj597f.fsf@toke.dk/>
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

SmFtYWwgSGFkaSBTYWxpbSA8amhzQG1vamF0YXR1LmNvbT4gd3JpdGVzOg0KDQo+IE9uIFdlZCwg
U2VwIDI0LCAyMDI1IGF0IDg6MTbigK9BTSBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VA
cmVkaGF0LmNvbT4gd3JvdGU6DQo+Pg0KPj4gVGhpcyBzZXJpZXMgYWRkcyBhIG11bHRpLXF1ZXVl
IGF3YXJlIHZhcmlhbnQgb2YgdGhlIHNjaF9jYWtlIHNjaGVkdWxlciwNCj4+IGNhbGxlZCAnY2Fr
ZV9tcScuIFVzaW5nIHRoaXMgbWFrZXMgaXQgcG9zc2libGUgdG8gc2NhbGUgdGhlIHJhdGUgc2hh
cGVyDQo+PiBvZiBzY2hfY2FrZSBhY3Jvc3MgbXVsdGlwbGUgQ1BVcywgd2hpbGUgc3RpbGwgZW5m
b3JjaW5nIGEgc2luZ2xlIGdsb2JhbA0KPj4gcmF0ZSBvbiB0aGUgaW50ZXJmYWNlLg0KPj4NCj4+
IFRoZSBhcHByb2FjaCB0YWtlbiBpbiB0aGlzIHBhdGNoIHNlcmllcyBpcyB0byBpbXBsZW1lbnQg
YSBzZXBhcmF0ZSBxZGlzYw0KPj4gY2FsbGVkICdjYWtlX21xJywgd2hpY2ggaXMgYmFzZWQgb24g
dGhlIGV4aXN0aW5nICdtcScgcWRpc2MsIGJ1dCBkaWZmZXJzDQo+PiBpbiBhIGNvdXBsZSBvZiBh
c3BlY3RzOg0KPj4NCj4+IC0gSXQgd2lsbCBhbHdheXMgaW5zdGFsbCBhIGNha2UgaW5zdGFuY2Ug
b24gZWFjaCBoYXJkd2FyZSBxdWV1ZSAoaW5zdGVhZA0KPj4gICBvZiB1c2luZyB0aGUgZGVmYXVs
dCBxZGlzYyBmb3IgZWFjaCBxdWV1ZSBsaWtlICdtcScgZG9lcykuDQo+Pg0KPj4gLSBUaGUgY2Fr
ZSBpbnN0YW5jZXMgb24gdGhlIHF1ZXVlcyB3aWxsIHNoYXJlIHRoZWlyIGNvbmZpZ3VyYXRpb24s
IHdoaWNoDQo+PiAgIGNhbiBvbmx5IGJlIG1vZGlmaWVkIHRocm91Z2ggdGhlIHBhcmVudCBjYWtl
X21xIGluc3RhbmNlLg0KPj4NCj4+IERvaW5nIHRoaW5ncyB0aGlzIHdheSBkb2VzIGluY3VyIGEg
Yml0IG9mIGNvZGUgZHVwbGljYXRpb24gKHJldXNpbmcgdGhlDQo+PiAnbXEnIHFkaXNjIGNvZGUp
LCBidXQgaXQgc2ltcGxpZmllcyB1c2VyIGNvbmZpZ3VyYXRpb24gYnkgY2VudHJhbGlzaW5nDQo+
PiBhbGwgY29uZmlndXJhdGlvbiB0aHJvdWdoIHRoZSBjYWtlX21xIHFkaXNjICh3aGljaCBhbHNv
IHNlcnZlcyBhcyBhbg0KPj4gb2J2aW91cyB3YXkgb2Ygb3B0aW5nIGludG8gdGhlIG11bHRpLXF1
ZXVlIGF3YXJlIGJlaGF2aW91cikuDQo+Pg0KPj4gVGhlIGNha2VfbXEgcWRpc2MgdGFrZXMgYWxs
IHRoZSBzYW1lIGNvbmZpZ3VyYXRpb24gcGFyYW1ldGVycyBhcyB0aGUNCj4+IGNha2UgcWRpc2Ms
IHBsdXMgb24gYWRkaXRpb25hbCBwYXJhbWV0ZXIgdG8gY29udHJvbCB0aGUgc3luYyB0aW1lDQo+
PiBiZXR3ZWVuIHRoZSBpbmRpdmlkdWFsIGNha2UgaW5zdGFuY2VzLg0KPj4NCj4+IFdlIGFyZSBw
b3N0aW5nIHRoaXMgc2VyaWVzIHRvIHNvbGljaXQgZmVlZGJhY2sgb24gdGhlIEFQSSwgYXMgd2Vs
bCBhcw0KPj4gd2lkZXIgdGVzdGluZyBvZiB0aGUgbXVsdGktY29yZSBzaGFwZXIuDQo+Pg0KPj4g
QW4gZWFybGllciB2ZXJzaW9uIG9mIHRoaXMgd29yayB3YXMgcHJlc2VudGVkIGF0IHRoaXMgeWVh
cidzIE5ldGRldmNvbmY6DQo+PiBodHRwczovL25ldGRldmNvbmYuaW5mby8weDE5L3Nlc3Npb25z
L3RhbGsvbXEtY2FrZS1zY2FsaW5nLXNvZnR3YXJlLXJhdGUtbGltaXRpbmctYWNyb3NzLWNwdS1j
b3Jlcy5odG1sDQo+Pg0KPj4gVGhlIHBhdGNoIHNlcmllcyBpcyBzdHJ1Y3R1cmVkIGFzIGZvbGxv
d3M6DQo+Pg0KPj4gLSBQYXRjaCAxIGZhY3RvcnMgb3V0IHRoZSBzY2hfY2FrZSBjb25maWd1cmF0
aW9uIHZhcmlhYmxlcyBpbnRvIGENCj4+ICAgc2VwYXJhdGUgc3RydWN0IHRoYXQgY2FuIGJlIHNo
YXJlZCBiZXR3ZWVuIGluc3RhbmNlcy4NCj4+DQo+PiAtIFBhdGNoIDIgYWRkcyB0aGUgYmFzaWMg
Y2FrZV9tcSBxZGlzYywgYmFzZWQgb24gdGhlIG1xIGNvZGUNCj4+DQo+PiAtIFBhdGNoIDMgYWRk
cyBjb25maWd1cmF0aW9uIHNoYXJpbmcgYWNyb3NzIHRoZSBjYWtlIGluc3RhbmNlcyBpbnN0YWxs
ZWQNCj4+ICAgdW5kZXIgY2FrZV9tcQ0KPj4NCj4+IC0gUGF0Y2ggNCBhZGRzIHRoZSBzaGFyZWQg
c2hhcGVyIHN0YXRlIHRoYXQgZW5hYmxlcyB0aGUgbXVsdGktY29yZSByYXRlDQo+PiAgIHNoYXBp
bmcNCj4+DQo+PiBBIHBhdGNoIHRvIGlwcm91dGUyIHRvIG1ha2UgaXQgYXdhcmUgb2YgdGhlIGNh
a2VfbXEgcWRpc2MgaXMgaW5jbHVkZWQgYXMNCj4+IGEgc2VwYXJhdGUgcGF0Y2ggYXMgcGFydCBv
ZiB0aGlzIHNlcmllcy4NCj4+DQo+DQo+IEZvciB0aGlzIHZlcnNpb24gb2YgdGhlIHBhdGNoc2V0
DQo+IFJldmlld2VkLWJ5OiBKYW1hbCBIYWRpIFNhbGltIDxqaHNAbW9qYXRhdHUuY29tPg0KDQpU
aGFua3MhDQoNCj4gUTogRG9lcyBFcmljJ3MgcmlkZGFuY2Ugb2YgYnVzeWxvY2sgaGVscD8NCg0K
R29vZCBxdWVzdGlvbiEgUHJvYmFibHkgbm90IGZvciBjYWtlX21xIHVzYWdlIGl0c2VsZiwgYnV0
IG1heWJlIGl0J2xsDQpjaGFuZ2UgdGhlIGJhc2VsaW5lPyBXZSdsbCB0ZXN0IHRoaXMgYmVmb3Jl
IHNlbmRpbmcgYSBub24tUkZDIDopDQoNCi1Ub2tlDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGNha2UtbGVhdmVA
bGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==

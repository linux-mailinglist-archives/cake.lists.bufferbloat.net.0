Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 652A8B9FAA6
	for <lists+cake@lfdr.de>; Thu, 25 Sep 2025 15:51:33 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id F02386EF46C;
	Thu, 25 Sep 2025 15:51:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1758808292;
	bh=Hd7gqfpLmgAZQb7iykINFQERa2xVUOY9BlxRQn3L/zM=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=SPDKkb45zBMfk9yo+T9R7BAigXewRoEp4+LWEmxzs+weW7y1IRaOG/XuzGIGiynrj
	 Koa+UnUDtFTMr3iWgfYiEZjFZuEzEpAnaXzkVsSQJjxfGcGmsP3JCGUEG1hVE5fRsi
	 y3e0PPBRCua6FUuDu5b0vCYqOCdWyR/Fm/sd212OuxddnYydY4wt/1lZKYfwNCrbRe
	 ZpH3bZvOf4QBslEh4oPzUVdXyLH+Jaf8vEWHdURNfuX5b1+uF0CeCFWQa1g3DsEKPo
	 db92qGKUFL5aKb4hHL7X96HIqdJKI5h5S3PcP7ePLhJTcE71V/oj+21IDJDQ/57AG8
	 TsI2n25/gceWQ==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1758808292;
 b=OdG9z0eaodcMRjhKRgiKkr0aawcGiMD/ug1FBLvBR/bSCL3GqcqyeoMd6DlGAlCb8ZH1k
 NXgJZ/L5iLhmjEMi4kKGGywKpEnLDJOvIqWi1DYnpQjnsml8zJOpYk1GhM38OzL2ez9jtd/
 /5qRTMiyjCaiA/U0ReerPvyDnO997Xw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1758808292; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Hd7gqfpLmgAZQb7iykINFQERa2xVUOY9BlxRQn3L/zM=;
 b=Sndo18n65taggz3LZp2ibxzTdcatOSXFG49+25AdzMRjR/BPklCDklxcVhoI70B4a5PVP
 NyQ9AKiBm1p0QZYVNBQPaE3IyHzl0BVRgIWoVus5Q8rmBYcHwcRhq0KZEInD99oFYS5a+BM
 /l7CCCBhDZs7K6ILWejJF5cHsTwRC9A=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1758806997; bh=A/h/juuCPsvd250S715gwteOI9pU724vXu2yT9Odr6s=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=jFHwPNYrPGOppsG8JtxNE16F/hYWoT/UDrsgYLPJKLCndrQPDiXdQ9ERpR70v70qH
	 Etlg6hvAfyNk/NB2NMxVdlDr5aJEZCdpAjEwValo3ef8dNonMYFBMh7PG/OrSWFW8n
	 Rhau2pz4QaSS9PUnP1jDlT1GOUpE/YHoh4aObXrVpEbgENoVL+RzBqHCHeErXCGhzW
	 o+3Lk2DC5MsUIKLaSSqTBLI9UQrcGAxKdKKZqxPVZOZBscROkm+wWCFmhG8GRlth4A
	 flu6eHMotG+69USiC5fVBrb4L+55jjlgi9MwcBXBFeQBC7qOO2LGgSJZ2tdXpy5xT4
	 K7PlLUXb08fhA==
To: Donald Hunter <donald.hunter@gmail.com>
Cc: Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang
 <xiyou.wangcong@gmail.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub
 Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonas =?utf-8?Q?K=C3=B6ppeler?=
 <j.koeppeler@tu-berlin.de>,
 cake@lists.bufferbloat.net, netdev@vger.kernel.org
In-Reply-To: <m2ecrusy11.fsf@gmail.com>
References: <20250924-mq-cake-sub-qdisc-v1-0-43a060d1112a@redhat.com>
 <20250924-mq-cake-sub-qdisc-v1-4-43a060d1112a@redhat.com>
 <m2ecrusy11.fsf@gmail.com>
Date: Thu, 25 Sep 2025 15:29:55 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87o6qypsmk.fsf@toke.dk>
MIME-Version: 1.0
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Hits: implicit-dest
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; max-recipients; max-size; news-moderation; no-subject;
 digests; suspicious-header
Message-ID-Hash: AVW6ZP5FODNS2UAVAOW6TZPBDBYGWFDJ
X-Message-ID-Hash: AVW6ZP5FODNS2UAVAOW6TZPBDBYGWFDJ
X-Mailman-Approved-At: Thu, 25 Sep 2025 15:51:31 +0200
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH RFC net-next 4/4] net/sched: sch_cake: share shaper state
 across sub-instances of cake_mq
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87o6qypsmk.fsf@toke.dk/>
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

RG9uYWxkIEh1bnRlciA8ZG9uYWxkLmh1bnRlckBnbWFpbC5jb20+IHdyaXRlczoNCg0KPiBUb2tl
IEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4gd3JpdGVzOg0KPg0KPj4gRnJv
bTogSm9uYXMgS8O2cHBlbGVyIDxqLmtvZXBwZWxlckB0dS1iZXJsaW4uZGU+DQo+Pg0KPj4gVGhp
cyBjb21taXQgYWRkcyBzaGFyZWQgc2hhcGVyIHN0YXRlIGFjcm9zcyB0aGUgY2FrZSBpbnN0YW5j
ZXMgYmVuZWF0aCBhDQo+PiBjYWtlX21xIHFkaXNjLiBJdCB3b3JrcyBieSBwZXJpb2RpY2FsbHkg
dHJhY2tpbmcgdGhlIG51bWJlciBvZiBhY3RpdmUNCj4+IGluc3RhbmNlcywgYW5kIHNjYWxpbmcg
dGhlIGNvbmZpZ3VyZWQgcmF0ZSBieSB0aGUgbnVtYmVyIG9mIGFjdGl2ZQ0KPj4gcXVldWVzLg0K
Pj4NCj4+IFRoZSBzY2FuIGlzIGxvY2tsZXNzIGFuZCBzaW1wbHkgcmVhZHMgdGhlIHFsZW4gYW5k
IHRoZSBsYXN0X2FjdGl2ZSBzdGF0ZQ0KPj4gdmFyaWFibGUgb2YgZWFjaCBvZiB0aGUgaW5zdGFu
Y2VzIGNvbmZpZ3VyZWQgYmVuZWF0aCB0aGUgcGFyZW50IGNha2VfbXENCj4+IGluc3RhbmNlLiBM
b2NraW5nIGlzIG5vdCByZXF1aXJlZCBzaW5jZSB0aGUgdmFsdWVzIGFyZSBvbmx5IHVwZGF0ZWQg
YnkNCj4+IHRoZSBvd25pbmcgaW5zdGFuY2UsIGFuZCBldmVudHVhbCBjb25zaXN0ZW5jeSBpcyBz
dWZmaWNpZW50IGZvciB0aGUNCj4+IHB1cnBvc2Ugb2YgZXN0aW1hdGluZyB0aGUgbnVtYmVyIG9m
IGFjdGl2ZSBxdWV1ZXMuDQo+Pg0KPj4gVGhlIGludGVydmFsIGZvciBzY2FubmluZyB0aGUgbnVt
YmVyIG9mIGFjdGl2ZSBxdWV1ZXMgaXMgY29uZmlndXJhYmxlDQo+PiBhbmQgZGVmYXVsdHMgdG8g
MjAwIHVzLiBXZSBmb3VuZCB0aGlzIHRvIGJlIGEgZ29vZCB0cmFkZW9mZiBiZXR3ZWVuDQo+PiBv
dmVyaGVhZCBhbmQgcmVzcG9uc2UgdGltZS4gRm9yIGEgZGV0YWlsZWQgYW5hbHlzaXMgb2YgdGhp
cyBhc3BlY3Qgc2VlDQo+PiB0aGUgTmV0ZGV2Y29uZiB0YWxrOg0KPj4NCj4+IGh0dHBzOi8vbmV0
ZGV2Y29uZi5pbmZvLzB4MTkvZG9jcy9uZXRkZXYtMHgxOS1wYXBlcjE2LXRhbGstcGFwZXIucGRm
DQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogSm9uYXMgS8O2cHBlbGVyIDxqLmtvZXBwZWxlckB0dS1i
ZXJsaW4uZGU+DQo+PiBTaWduZWQtb2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRv
a2VAcmVkaGF0LmNvbT4NCj4+IC0tLQ0KPj4gIGluY2x1ZGUvdWFwaS9saW51eC9wa3Rfc2NoZWQu
aCB8ICAyICsrDQo+PiAgbmV0L3NjaGVkL3NjaF9jYWtlLmMgICAgICAgICAgIHwgNjcgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+PiAgMiBmaWxlcyBjaGFuZ2Vk
LCA2OSBpbnNlcnRpb25zKCspDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51
eC9wa3Rfc2NoZWQuaCBiL2luY2x1ZGUvdWFwaS9saW51eC9wa3Rfc2NoZWQuaA0KPj4gaW5kZXgg
YzJkYTc2ZTc4YmFkZWJiZGY3ZDU0ODJjZWYxYTMxMzJhZWM5OWZlMS4uYTRhYTgxMmJmYmU4NjQy
NGM1MDJkZTViYjJlNWIxNDI5YjQ0MDA4OCAxMDA2NDQNCj4+IC0tLSBhL2luY2x1ZGUvdWFwaS9s
aW51eC9wa3Rfc2NoZWQuaA0KPj4gKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L3BrdF9zY2hlZC5o
DQo+PiBAQCAtMTAxNCw2ICsxMDE0LDcgQEAgZW51bSB7DQo+PiAgCVRDQV9DQUtFX0FDS19GSUxU
RVIsDQo+PiAgCVRDQV9DQUtFX1NQTElUX0dTTywNCj4+ICAJVENBX0NBS0VfRldNQVJLLA0KPj4g
KwlUQ0FfQ0FLRV9TWU5DX1RJTUUsDQo+PiAgCV9fVENBX0NBS0VfTUFYDQo+PiAgfTsNCj4+ICAj
ZGVmaW5lIFRDQV9DQUtFX01BWAkoX19UQ0FfQ0FLRV9NQVggLSAxKQ0KPj4gQEAgLTEwMzYsNiAr
MTAzNyw3IEBAIGVudW0gew0KPj4gIAlUQ0FfQ0FLRV9TVEFUU19EUk9QX05FWFRfVVMsDQo+PiAg
CVRDQV9DQUtFX1NUQVRTX1BfRFJPUCwNCj4+ICAJVENBX0NBS0VfU1RBVFNfQkxVRV9USU1FUl9V
UywNCj4+ICsJVENBX0NBS0VfU1RBVFNfQUNUSVZFX1FVRVVFUywNCj4+ICAJX19UQ0FfQ0FLRV9T
VEFUU19NQVgNCj4+ICB9Ow0KPj4gICNkZWZpbmUgVENBX0NBS0VfU1RBVFNfTUFYIChfX1RDQV9D
QUtFX1NUQVRTX01BWCAtIDEpDQo+DQo+IEhpIFRva2UsDQo+DQo+IENvdWxkIHlvdSBpbmNsdWRl
IHRoaXMgZGlmZiBpbiB0aGUgcGF0Y2ggdG8ga2VlcCB0aGUgeW5sIHNwZWMgdXAgdG8NCj4gZGF0
ZT8NCg0KQWggeWVzLCB3aWxsIGRvLCB0aGFua3MhIDopDQoNCi1Ub2tlDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAtLSBj
YWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRv
IGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==

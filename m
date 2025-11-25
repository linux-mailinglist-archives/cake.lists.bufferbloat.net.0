Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD57C84F08
	for <lists+cake@lfdr.de>; Tue, 25 Nov 2025 13:19:00 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id A24FC9C958D;
	Tue, 25 Nov 2025 13:18:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764073139;
	bh=6xxNT7oCQyb3LCd4JrvPqjKSqEB/hjcQlYoQu4INnhY=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=iDIsVFHjVey7zsQRm6TUEDt3hUfSDHFLe+Qad/8d4gVzZJt5MG13PxSs4AoGmoGkm
	 GlgddB9iM38Gwo137txzephYRmIqlk4oVE1vPv2H9yhBKaMtGmk11Gq4z0RqfTVCgB
	 jEMrMUm3Gt4UbjAP1uux0MCbYOFgmyl+KVKMh/8Z/i2zGPfAgsU1MfHI4Klp/wgDBr
	 OpQFIvZnhsZ5QB86JahVf7caZ1symFl4gEEE4n7RZ+j+cpelR41MZ43q5mn1F5NFWh
	 CRy5jAROkZP+2Gu6xu69rvAmppALL5eVElXSIVVvpAbEi9Z8yOzG2bdb7jiuY9TXGH
	 qP3tAfy5J104Q==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764073139;
 b=x3bOWVOslXD043/g5EOf8UqgItf5c8v4THkPtj4Ucm+0MBroAtQW/zz9kxvBJTaqdhoGN
 TQ6SQKKaG4eN6LSX8DPXT1F0Rk/MEQK283rf0ccZmcj6HhWYDdIC5532VQeiekFInx/0yd/
 YweszXgllVt1hqI4TSCWB806oNklm8A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764073139; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=6xxNT7oCQyb3LCd4JrvPqjKSqEB/hjcQlYoQu4INnhY=;
 b=b71cODy9fO55L7OwptSftyUnx4AOzmN2Zsdm7q3oEGawOIiVC2WKVgo7aOlw4+M2X/NXc
 FFOfzd3iidhYRvKKo2iJ4E3M81NOYrzTe8+txS2hy8bSYdqEC4BX+vIWg+W4BojOHqQb99D
 A0wwJdK0Uo3G/dXp4D+2S4INZKeAV4s=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1764073136; bh=BxJu4QGS4DNMjF5m5xPvxINTbKIPSihKmtj0x6mFxrY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=ddV770/Pu6BvI9vPqrOrtD42U2ahxONPBicZH2+qXpTU+B7ahjeBtYv8l/Pk7YMs0
	 tYjh+r836hVUp3Na50SRcyxpfpKiQ4cIEVz7upz0EgkSiy2Zw74XbOBajqPWGGDUE3
	 3ubsiN+IOu7wJaYVtgf7Iv2M+vnSERN7RxoBHnAXckpGv/APJ4/WSH8JihxCaMqxms
	 DRWb+8YXcpKqgXfxrxfzNUYnKrdgcNN+xXsYoOgGRNwVZH1JL7QLIfVtHJT+O9rTwX
	 MOuaQdOixG+O3qJ0dTOGpmWTlUb7lUZzT4KSNrHBtPGRvJvSNjpxUt/TiBq5k8iAwT
	 XabPcckLKOLRA==
To: David Ahern <dsahern@gmail.com>, Stephen Hemminger
 <stephen@networkplumber.org>
Cc: cake@lists.bufferbloat.net, netdev@vger.kernel.org, Jonas =?utf-8?Q?K?=
 =?utf-8?Q?=C3=B6ppeler?=
 <j.koeppeler@tu-berlin.de>
In-Reply-To: <fb5fc99e-fa3b-4499-80be-4731a8c7a297@gmail.com>
References: <20251124-mq-cake-sub-qdisc-v1-0-a2ff1dab488f@redhat.com>
 <20251124150350.492522-1-toke@redhat.com>
 <fb5fc99e-fa3b-4499-80be-4731a8c7a297@gmail.com>
Date: Tue, 25 Nov 2025 13:18:56 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87jyzecnkf.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: OM3UKJB25DH4F6ZWBEFX2ZM3Y6FQHLIE
X-Message-ID-Hash: OM3UKJB25DH4F6ZWBEFX2ZM3Y6FQHLIE
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH iproute2-next] tc: cake: add cake_mq support
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87jyzecnkf.fsf@toke.dk/>
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

RGF2aWQgQWhlcm4gPGRzYWhlcm5AZ21haWwuY29tPiB3cml0ZXM6DQoNCj4gT24gMTEvMjQvMjUg
ODowMyBBTSwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOg0KPj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvdWFwaS9saW51eC9wa3Rfc2NoZWQuaCBiL2luY2x1ZGUvdWFwaS9saW51eC9wa3Rf
c2NoZWQuaA0KPj4gaW5kZXggMTVkMWEzN2FjNmQ4Li5mYjA3YTg4OTgyMjUgMTAwNjQ0DQo+PiAt
LS0gYS9pbmNsdWRlL3VhcGkvbGludXgvcGt0X3NjaGVkLmgNCj4+ICsrKyBiL2luY2x1ZGUvdWFw
aS9saW51eC9wa3Rfc2NoZWQuaA0KPj4gQEAgLTEwMzYsNiArMTAzNiw3IEBAIGVudW0gew0KPj4g
IAlUQ0FfQ0FLRV9TVEFUU19EUk9QX05FWFRfVVMsDQo+PiAgCVRDQV9DQUtFX1NUQVRTX1BfRFJP
UCwNCj4+ICAJVENBX0NBS0VfU1RBVFNfQkxVRV9USU1FUl9VUywNCj4+ICsJVENBX0NBS0VfU1RB
VFNfQUNUSVZFX1FVRVVFUywNCj4+ICAJX19UQ0FfQ0FLRV9TVEFUU19NQVgNCj4+ICB9Ow0KPj4g
ICNkZWZpbmUgVENBX0NBS0VfU1RBVFNfTUFYIChfX1RDQV9DQUtFX1NUQVRTX01BWCAtIDEpDQo+
DQo+IHVhcGkgY2hhbmdlcyBzaG91bGQgYmUgYSBzZXBhcmF0ZSBwYXRjaCB0aGF0IEkgY2FuIGRy
b3Agd2hlbiBhcHBseWluZy4NCg0KT0ssIHN1cmUuDQoNCj4+IGRpZmYgLS1naXQgYS90Yy9xX2Nh
a2UuYyBiL3RjL3FfY2FrZS5jDQo+PiBpbmRleCBlMmI4ZGU1NWU1YTIuLjFjMTQzZTc2Njg4OCAx
MDA2NDQNCj4+IC0tLSBhL3RjL3FfY2FrZS5jDQo+PiArKysgYi90Yy9xX2Nha2UuYw0KPj4gQEAg
LTUyNSw3ICs1MjUsNiBAQCBzdGF0aWMgaW50IGNha2VfcHJpbnRfb3B0KGNvbnN0IHN0cnVjdCBx
ZGlzY191dGlsICpxdSwgRklMRSAqZiwgc3RydWN0IHJ0YXR0ciAqbw0KPj4gIAkgICAgUlRBX1BB
WUxPQUQodGJbVENBX0NBS0VfRldNQVJLXSkgPj0gc2l6ZW9mKF9fdTMyKSkgew0KPj4gIAkJZndt
YXJrID0gcnRhX2dldGF0dHJfdTMyKHRiW1RDQV9DQUtFX0ZXTUFSS10pOw0KPj4gIAl9DQo+PiAt
DQo+PiAgCWlmICh3YXNoKQ0KPj4gIAkJcHJpbnRfc3RyaW5nKFBSSU5UX0ZQLCBOVUxMLCAid2Fz
aCAiLCBOVUxMKTsNCj4+ICAJZWxzZQ0KPg0KPiB3aHkgcmVtb3ZlIHRoZSBzcGFjaW5nPyB3aGl0
ZXNwYWNlIGhlbHBzIHJlYWRhYmlsaXR5Lg0KDQpUaGF0IHdhcyBhIG1pc3Rha2UgdGhhdCBjcmVw
dCBpbiB3aGVuIGVkaXRpbmcgdGhlIHBhdGNoOyB3aWxsIHB1dCBpdA0KYmFjayA6KQ0KDQotVG9r
ZQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBt
YWlsaW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=

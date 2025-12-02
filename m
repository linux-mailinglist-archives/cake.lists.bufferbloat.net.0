Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AA006C9B099
	for <lists+cake@lfdr.de>; Tue, 02 Dec 2025 11:13:09 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id EB9B1A1DA75;
	Tue, 02 Dec 2025 11:13:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764670388;
	bh=kcLtU009iMtQWnwufLPZ81yP35e+ALcaY79/utseZkU=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=I7mwLcX0W1Vz7GThsLMbWisC93+89jrx9oAW3/u+leAiPneXbJoRDN1x21c2f2/wa
	 BZEKK5pfBBQi06wPkAP7ncuWHutKfGVCOYotTTIv/A6hfg+WCzf9pjt/lf3++LjgAy
	 OMGecreA+0BD0AouDYDK+FIadi06nE/O9idCzUmLKCgXSDN0xLkxW3tj7BWQLvaF20
	 kgx1QxnO9V5S5pqgZMPKrkg6xdOSWkjkZ/HoSci5HaDuXjYkFnY0UDasboTjTKhJtG
	 oliPXJy2tUZNkOGaSLIPtJ2MUlqr+VjcsoU4spRyYiAZvos/tbNAWdVwViEA9CJb0S
	 TyMlfRbHgpJLQ==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764670388;
 b=1hA4dajjkGCWvga1yDPdmLpVfWbOzT4tf58YWgunjUvB9YeQkEEewFEjJ1DQW9cB0XvJV
 YhslPOj2KwiPwNV1cSTw7DMFhd5NRUG8FpS0PVVJsVMVPPrXOQxDAr5RAWSQ76IBUZI58PJ
 2kUKemp2fXKFBiYLWtnVzBJeKv9hjBo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764670388; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=kcLtU009iMtQWnwufLPZ81yP35e+ALcaY79/utseZkU=;
 b=i+qHE6LWUohg8p5pYIYW3XfTJgwqWA3UkkSpwDWe7yjzRKdMrOgzpF+v5ylgw2mSl9fUL
 bt1DnEpC9hABsflsNElB2c6ZrQ7jHmkNYOCeCBiU26xQlZUWUcP8+UWvxewzEKSmMcOgtjJ
 ScnlZAAabC+IGBFmKHtcpJzQjcId/Rc=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1764670387; bh=gy+L6BZASwEtlGdIxLK9N2zjetMn9ZmMYO3SP9Fd4GU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=HR+7vsAZt5N9RZrlozxJGE1WYCkO2N5WkX8HKPTX7PYgmG0fUIDHtQp11YFfRRUt0
	 2SGCZ/OoFdfjwU8dXMVQKxyHugRd6v1n/aAbbT5Nq6CYB5SuT2S6oyGmm8UWaIhjOQ
	 Ynf74P9inOc2LxStUy9Mq9X+VlRJDdvquvPgF0Ale+kFbxs36VOANmHbF7rMn7T34A
	 qWW/9Ztc/MGbe7vqWAbrJ2fvf3QziT8PBeKbYm1fro/xzSLvp9W69O1bdKJNy2QESS
	 MHFq3nLENdSlka8sI/s3OwqZh7BZvbj0ecbGU7MD1znfzaxU59Qa9/AraMzHbrzs8m
	 UiOaBI03OcwzA==
To: Jakub Kicinski <kuba@kernel.org>
Cc: Xiang Mei <xmei5@asu.edu>, security@kernel.org, netdev@vger.kernel.org,
 xiyou.wangcong@gmail.com, cake@lists.bufferbloat.net, bestswngs@gmail.com
In-Reply-To: <20251201170505.6e74c1e4@kernel.org>
References: <20251128001415.377823-1-xmei5@asu.edu> <87ikeubjqu.fsf@toke.dk>
 <20251201170505.6e74c1e4@kernel.org>
Date: Tue, 02 Dec 2025 11:13:06 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <878qfl9op9.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: 2HTMXLS5KRUYALJ42KW6JRCGKT4SESY7
X-Message-ID-Hash: 2HTMXLS5KRUYALJ42KW6JRCGKT4SESY7
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v8 1/2] net/sched: sch_cake: Fix incorrect qlen
 reduction in cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/878qfl9op9.fsf@toke.dk/>
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4gd3JpdGVzOg0KDQo+IE9uIEZyaSwgMjgg
Tm92IDIwMjUgMTA6MTU6NTMgKzAxMDAgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOg0K
Pj4gWGlhbmcgTWVpIDx4bWVpNUBhc3UuZWR1PiB3cml0ZXM6DQo+PiANCj4+ID4gSW4gY2FrZV9k
cm9wKCksIHFkaXNjX3RyZWVfcmVkdWNlX2JhY2tsb2coKSBpcyB1c2VkIHRvIHVwZGF0ZSB0aGUg
cWxlbg0KPj4gPiBhbmQgYmFja2xvZyBvZiB0aGUgcWRpc2MgaGllcmFyY2h5LiBJdHMgY2FsbGVy
LCBjYWtlX2VucXVldWUoKSwgYXNzdW1lcw0KPj4gPiB0aGF0IHRoZSBwYXJlbnQgcWRpc2Mgd2ls
bCBlbnF1ZXVlIHRoZSBjdXJyZW50IHBhY2tldC4gSG93ZXZlciwgdGhpcw0KPj4gPiBhc3N1bXB0
aW9uIGJyZWFrcyB3aGVuIGNha2VfZW5xdWV1ZSgpIHJldHVybnMgTkVUX1hNSVRfQ046IHRoZSBw
YXJlbnQNCj4+ID4gcWRpc2Mgc3RvcHMgZW5xdWV1aW5nIGN1cnJlbnQgcGFja2V0LCBsZWF2aW5n
IHRoZSB0cmVlIHFsZW4vYmFja2xvZw0KPj4gPiBhY2NvdW50aW5nIGluY29uc2lzdGVudC4gVGhp
cyBtaXNtYXRjaCBjYW4gbGVhZCB0byBhIE5VTEwgZGVyZWZlcmVuY2UNCj4+ID4gKGUuZy4sIHdo
ZW4gdGhlIHBhcmVudCBRZGlzYyBpcyBxZnFfcWRpc2MpLg0KPj4gPg0KPj4gPiBUaGlzIHBhdGNo
IGNvbXB1dGVzIHRoZSBxbGVuL2JhY2tsb2cgZGVsdGEgaW4gYSBtb3JlIHJvYnVzdCB3YXkgYnkN
Cj4+ID4gb2JzZXJ2aW5nIHRoZSBkaWZmZXJlbmNlIGJlZm9yZSBhbmQgYWZ0ZXIgdGhlIHNlcmll
cyBvZiBjYWtlX2Ryb3AoKQ0KPj4gPiBjYWxscywgYW5kIHRoZW4gY29tcGVuc2F0ZXMgdGhlIHFk
aXNjIHRyZWUgYWNjb3VudGluZyBpZiBjYWtlX2VucXVldWUoKQ0KPj4gPiByZXR1cm5zIE5FVF9Y
TUlUX0NOLg0KPj4gPg0KPj4gPiBUbyBlbnN1cmUgY29ycmVjdCBjb21wZW5zYXRpb24gd2hlbiBB
Q0sgdGhpbm5pbmcgaXMgZW5hYmxlZCwgYSBuZXcNCj4+ID4gdmFyaWFibGUgaXMgaW50cm9kdWNl
ZCB0byBrZWVwIHFsZW4gdW5jaGFuZ2VkLg0KPj4gPg0KPj4gPiBGaXhlczogMTVkZTcxZDA2YTQw
ICgibmV0L3NjaGVkOiBNYWtlIGNha2VfZW5xdWV1ZSByZXR1cm4gTkVUX1hNSVRfQ04gd2hlbiBw
YXN0IGJ1ZmZlcl9saW1pdCIpDQo+PiA+IFNpZ25lZC1vZmYtYnk6IFhpYW5nIE1laSA8eG1laTVA
YXN1LmVkdT4gIA0KPj4gDQo+PiBQbGVhc2UgcmV0YWluIHRhZ3Mgd2hlbiByZXBvc3RpbmcuLi4N
Cj4+IA0KPj4gUmV2aWV3ZWQtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUB0b2tl
LmRrPg0KPg0KPiBBSSBjb2RlIHJldmlldyBhc2tzOg0KPg0KPiBXaGVuIEFDSyB0aGlubmluZyBv
Y2N1cnMsIHRoZSBpbmNvbWluZyBwYWNrZXQgY29udHJpYnV0ZXMgbGVuIC0NCj4gYWNrX3BrdF9s
ZW4gYnl0ZXMgdG8gc2NoLT5xc3RhdHMuYmFja2xvZywgYnV0IHRoaXMgY29tcGVuc2F0aW9uIHVz
ZXMNCj4gdGhlIGZ1bGwgbGVuIHZhbHVlLiBTaG91bGQgdGhpcyBiZSBwcmV2X2JhY2tsb2cgLSAo
bGVuIC0gYWNrX3BrdF9sZW4pDQo+IHRvIG1hdGNoIHdoYXQgd2FzIGFjdHVhbGx5IGFkZGVkIHRv
IHRoZSBiYWNrbG9nPw0KDQpObywgdGhlcmUncyBhIHNlcGFyYXRlIHFkaXNjX3RyZWVfcmVkdWNl
X2JhY2tsb2coc2NoLCAxLCBhY2tfcGt0X2xlbikNCmFzIHBhcnQgb2YgdGhlIEFDSyB0aGlubmlu
ZyB0aGF0IGNvbXBlbnNhdGVzIGZvciB0aGUgZGlmZmVyZW5jZS4NCg0KLVRva2UNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0
IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQK

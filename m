Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FC2C99B2D
	for <lists+cake@lfdr.de>; Tue, 02 Dec 2025 02:05:17 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 29878A108D1;
	Tue, 02 Dec 2025 02:05:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764637516;
	bh=HrFPwrZNqsi8rppZoCeK9b2fjk4XEe0+doNDg3caOZw=;
	h=Date:To:Cc:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Ute4n+bQByo6aHFqZ3oqq4y7/z4xOVyYe6wyK6XkWX7xvq6friJkdfVYcamiTjmi3
	 vbm6pQup/wrHHqN4hWP+qS4KXlC3JqUj+E7Z1ciU+Leri9XpmvFKYQUyD3/WVk3P83
	 GlwKNXg/UG+qS3QzTgoyX/nXzN3niw7xRg9MnqAZ9r7WKN0HLNg2Ss+lNw6fCrO8zV
	 +PqB8sKxNSK7sk9PaUhcqqBZeDDJ/PUQP59lJUUYkHRSc6zRc1kWYUjyX//kN55Mvw
	 K5789ibOg+r7Nw/ziXOJ+6YqAwcSgzXoLj1GvoSuNe92+8JnvQJmaGz9dgYh9JaEw6
	 yAFpFOHla1ADw==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764637516;
 b=iWSiwLfav+4YJEc922FzPfeUVxKj189tz5KCqsbBLi1rxxKdU5zrTxRNRzM+gwUR8W111
 E0krKLLSuKt1z7hTlAqkPhzYksEtwda89ylI6OGtaB+6c0szTd9saxlsCgJJuVuAkCeXNDg
 7E2PvhDjn1/jpEd67VJKZOM9ffsq2f8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764637516; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=HrFPwrZNqsi8rppZoCeK9b2fjk4XEe0+doNDg3caOZw=;
 b=gw6cvkYO1vuuD0oSDanRqBQhsbqfCyADUblPFmRgsQHOuyoO9KFenUWdp1nokrEpo549D
 iJ/EdH1uD4Wt8OHRWbwUjKWPkMzslkr2yOcRAaAIURaJcRUhUFoF9qPL1t3beb1xLGNcoEh
 T1Gvboz8vYXpWIKa9TfD/qKN1a19rb0=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=kernel.org;
 arc=none;
 dmarc=pass header.from=kernel.org policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=kernel.org; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=kernel.org
 policy.dmarc=quarantine
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by mail.toke.dk (Postfix) with ESMTPS id 20303A108B5
	for <cake@lists.bufferbloat.net>; Tue, 02 Dec 2025 02:05:09 +0100 (CET)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B621243862;
	Tue,  2 Dec 2025 01:05:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C1D2C4CEF1;
	Tue,  2 Dec 2025 01:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764637507;
	bh=cXQH/ctkDiDQh3xBDL7BFKJAorODKba2HS8mZ4TuzXI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=tRpsp/xDtkTz6aG6kBRfmltmu2fAzwNxRqSyqckjvzM4TCMU3ouyT9CHm0lK7LUIl
	 FP9TkxRPv68STofYQo+zp3odCi8Q4FPbZrfOLyD2hFTQlORBw9+uUOXJC8jMH6iX/Z
	 EVNuuzW1qFhiz/82Ng0IEjeKpHferc9Bu/urkI2fAu1NvROgkrdgzXjAUz/IVHh4+g
	 cYRP7d8cXPWwv3diWp5ShRkrkyTCxdg4Njfq4adqOPTEDjoosG1bCus7vQlLMVduUl
	 V6vqoO+zukMfhIcy8eoyXwaeOgo0YYWC5bBg+xHUUeei9xBE2h7bda5Xk2XTS82ckn
	 Mak082Ki0vByg==
Date: Mon, 1 Dec 2025 17:05:05 -0800
To: Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@toke.dk>
Cc: Xiang Mei <xmei5@asu.edu>, security@kernel.org, netdev@vger.kernel.org,
 xiyou.wangcong@gmail.com, cake@lists.bufferbloat.net, bestswngs@gmail.com
Message-ID: <20251201170505.6e74c1e4@kernel.org>
In-Reply-To: <87ikeubjqu.fsf@toke.dk>
References: <20251128001415.377823-1-xmei5@asu.edu>
	<87ikeubjqu.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: SHYRYYTQS5HPZTXVLFDV4XTJUT6HQLZB
X-Message-ID-Hash: SHYRYYTQS5HPZTXVLFDV4XTJUT6HQLZB
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net v8 1/2] net/sched: sch_cake: Fix incorrect qlen
 reduction in cake_drop
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251201170505.6e74c1e4@kernel.org/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: Jakub Kicinski via Cake <cake@lists.bufferbloat.net>
Reply-To: Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCAyOCBOb3YgMjAyNSAxMDoxNTo1MyArMDEwMCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6DQo+IFhpYW5nIE1laSA8eG1laTVAYXN1LmVkdT4gd3JpdGVzOg0KPiANCj4gPiBJ
biBjYWtlX2Ryb3AoKSwgcWRpc2NfdHJlZV9yZWR1Y2VfYmFja2xvZygpIGlzIHVzZWQgdG8gdXBk
YXRlIHRoZSBxbGVuDQo+ID4gYW5kIGJhY2tsb2cgb2YgdGhlIHFkaXNjIGhpZXJhcmNoeS4gSXRz
IGNhbGxlciwgY2FrZV9lbnF1ZXVlKCksIGFzc3VtZXMNCj4gPiB0aGF0IHRoZSBwYXJlbnQgcWRp
c2Mgd2lsbCBlbnF1ZXVlIHRoZSBjdXJyZW50IHBhY2tldC4gSG93ZXZlciwgdGhpcw0KPiA+IGFz
c3VtcHRpb24gYnJlYWtzIHdoZW4gY2FrZV9lbnF1ZXVlKCkgcmV0dXJucyBORVRfWE1JVF9DTjog
dGhlIHBhcmVudA0KPiA+IHFkaXNjIHN0b3BzIGVucXVldWluZyBjdXJyZW50IHBhY2tldCwgbGVh
dmluZyB0aGUgdHJlZSBxbGVuL2JhY2tsb2cNCj4gPiBhY2NvdW50aW5nIGluY29uc2lzdGVudC4g
VGhpcyBtaXNtYXRjaCBjYW4gbGVhZCB0byBhIE5VTEwgZGVyZWZlcmVuY2UNCj4gPiAoZS5nLiwg
d2hlbiB0aGUgcGFyZW50IFFkaXNjIGlzIHFmcV9xZGlzYykuDQo+ID4NCj4gPiBUaGlzIHBhdGNo
IGNvbXB1dGVzIHRoZSBxbGVuL2JhY2tsb2cgZGVsdGEgaW4gYSBtb3JlIHJvYnVzdCB3YXkgYnkN
Cj4gPiBvYnNlcnZpbmcgdGhlIGRpZmZlcmVuY2UgYmVmb3JlIGFuZCBhZnRlciB0aGUgc2VyaWVz
IG9mIGNha2VfZHJvcCgpDQo+ID4gY2FsbHMsIGFuZCB0aGVuIGNvbXBlbnNhdGVzIHRoZSBxZGlz
YyB0cmVlIGFjY291bnRpbmcgaWYgY2FrZV9lbnF1ZXVlKCkNCj4gPiByZXR1cm5zIE5FVF9YTUlU
X0NOLg0KPiA+DQo+ID4gVG8gZW5zdXJlIGNvcnJlY3QgY29tcGVuc2F0aW9uIHdoZW4gQUNLIHRo
aW5uaW5nIGlzIGVuYWJsZWQsIGEgbmV3DQo+ID4gdmFyaWFibGUgaXMgaW50cm9kdWNlZCB0byBr
ZWVwIHFsZW4gdW5jaGFuZ2VkLg0KPiA+DQo+ID4gRml4ZXM6IDE1ZGU3MWQwNmE0MCAoIm5ldC9z
Y2hlZDogTWFrZSBjYWtlX2VucXVldWUgcmV0dXJuIE5FVF9YTUlUX0NOIHdoZW4gcGFzdCBidWZm
ZXJfbGltaXQiKQ0KPiA+IFNpZ25lZC1vZmYtYnk6IFhpYW5nIE1laSA8eG1laTVAYXN1LmVkdT4g
IA0KPiANCj4gUGxlYXNlIHJldGFpbiB0YWdzIHdoZW4gcmVwb3N0aW5nLi4uDQo+IA0KPiBSZXZp
ZXdlZC1ieTogVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHRva2UuZGs+DQoNCkFJIGNv
ZGUgcmV2aWV3IGFza3M6DQoNCldoZW4gQUNLIHRoaW5uaW5nIG9jY3VycywgdGhlIGluY29taW5n
IHBhY2tldCBjb250cmlidXRlcyBsZW4gLQ0KYWNrX3BrdF9sZW4gYnl0ZXMgdG8gc2NoLT5xc3Rh
dHMuYmFja2xvZywgYnV0IHRoaXMgY29tcGVuc2F0aW9uIHVzZXMNCnRoZSBmdWxsIGxlbiB2YWx1
ZS4gU2hvdWxkIHRoaXMgYmUgcHJldl9iYWNrbG9nIC0gKGxlbiAtIGFja19wa3RfbGVuKQ0KdG8g
bWF0Y2ggd2hhdCB3YXMgYWN0dWFsbHkgYWRkZWQgdG8gdGhlIGJhY2tsb2c/DQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdCAt
LSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==

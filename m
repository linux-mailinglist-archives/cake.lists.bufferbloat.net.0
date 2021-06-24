Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA343B3223
	for <lists+cake@lfdr.de>; Thu, 24 Jun 2021 17:01:03 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8EDB93CB58;
	Thu, 24 Jun 2021 11:01:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1624546862;
	bh=Ya2mqrV/3pYuaVAkX5vYYiCcfOccHdgZIi6TlbyO/88=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eBNemFbxXb6RKPSZwssLodHIVgh1LaKHNyP5wk4gWYk2fmVANN5bUEnXvrAKc8J8A
	 fT8uJxdU7wN04UybV1KxLfpqIgehqrmmXXYXTBcgN5e45wBuMvy7paLtxw8iKLerTO
	 n1b2SRFF6+qA8YQ16DDYXtDU66xTwbrirlYqce8a6korCmiGYhB/v+J7BZ6wsQMtGu
	 A4KsXzdbNU6PSMuoyhTqAoVb9kuKn6+utOJDg5XcTIisYUpSgntloFovjFHJjEtHTp
	 ZAXRTP/dzTgvOj6VAduhs2gWkpKbMPbmoV6cS9AOahcxSt7AHLncKAWfUEgIltff1u
	 8ig2dKIuAXkiQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BCD673B2A4
 for <cake@lists.bufferbloat.net>; Thu, 24 Jun 2021 11:01:01 -0400 (EDT)
Received: by mail-wr1-x42c.google.com with SMTP id u11so6992870wrw.11
 for <cake@lists.bufferbloat.net>; Thu, 24 Jun 2021 08:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=heistp.net; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=tSI9/Bf6LkZI+IUnNhe5MYh0R5Gg1BNouqtgvJKUGss=;
 b=MQ0EvYNKXRPTJp+u79xl02y3QpXbGdVE5JRI9QCXmCYHabCso0KKzKIy37lnWxx9ea
 V9mE+75eUz8QYIbdjCTJhlqOmsUomar8ravuJcSNkz8mKz9KlwHiaTLqaHPFmdHAWsiy
 nVJA9YWch/ImeEMjxgLSqzXmm1bWlfdV4r6cvsrTQTM2sWPWU99ZRmsl2pXnVvikcQws
 a27OJNDQrms4Zi6L2h//NEKMpug4uUx8Egk2DETOF00+q2uuuM3XCFrFZnOrxJIw1ILt
 IhZQ3dsp19v0BZ6QMsgLDcHxVLCCquMiG7095o7cxgwVL8fzWjs4+fPCtEwr9eEA7Sik
 gN9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=tSI9/Bf6LkZI+IUnNhe5MYh0R5Gg1BNouqtgvJKUGss=;
 b=lNTNuKsaFzoiljln9MOpt2vA+tIJXthsMgBRAKXDpBQCwl1214yO84dBno0ck+Jgv5
 4hP/mLXy1XSWnssRPIdSfgwyEv64QHddXD0l7FS0I7WDgBijE6EoztlSAENZ21zRCjgu
 PW/K/phSmtE8cB095I1dOPJm+Q/2EHBSsPJTDuhEllZ+gyQMULi6zQGee8yuDe3zXo68
 2qqgxUELMqAUnUNzVIWLBM/YmvL8C9T6uC9NJrjsyRSGJSB7jT8URxv2Qy4dl/wA9w87
 bRGqdJ/2f4Brz2TCaO77YwuXWU0DIkVHVRdt2U+jRLKf3QbkjSrpOjMk8eVFwwHdKSZq
 ZBdA==
X-Gm-Message-State: AOAM530J/8aUDGGO1IksKnP/ldEo02K+O3FZa0oveIvMYxub7lvu2adw
 FGvTaSfSlegPD+ASlxMqYP244MQZuOUBJw==
X-Google-Smtp-Source: ABdhPJwqFjRspwFsPdaz4meIMgBZOKtKQvw0B3Ry2gWsv87qNyiz5BviAddr3lFE5qr0LeCVT0IJdw==
X-Received: by 2002:a5d:4dd2:: with SMTP id f18mr4998886wru.86.1624546860203; 
 Thu, 24 Jun 2021 08:01:00 -0700 (PDT)
Received: from [10.72.0.88] (h-1169.lbcfree.net. [185.193.85.130])
 by smtp.gmail.com with ESMTPSA id b11sm8989481wmj.25.2021.06.24.08.00.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Jun 2021 08:00:59 -0700 (PDT)
Message-ID: <f642b5146af9e81275248c00a701dd6e69f4678e.camel@heistp.net>
From: Pete Heist <pete@heistp.net>
To: Toke =?ISO-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@toke.dk>
Date: Thu, 24 Jun 2021 17:00:59 +0200
In-Reply-To: <87h7hnmkhc.fsf@toke.dk>
References: <3d529e0b78ef8ea54021d8f8e93285e9a474cba1.camel@heistp.net>
 <87h7hnmkhc.fsf@toke.dk>
User-Agent: Evolution 3.40.2 
MIME-Version: 1.0
Subject: Re: [Cake] Cake memory usage after 1TB
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVGh1LCAyMDIxLTA2LTI0IGF0IDE1OjU5ICswMjAwLCBUb2tlIEjDuGlsYW5kLUrDuHJnZW5z
ZW4gd3JvdGU6Cj4gUGV0ZSBIZWlzdCA8cGV0ZUBoZWlzdHAubmV0PiB3cml0ZXM6Cj4gCj4gPiBJ
J20gdXNpbmcgQ2FrZSBvbiBhbiBFZGdlUm91dGVyLVggYXQgYSBzaXRlIHRoYXQgZG9lcyBhcm91
bmQgNTAtCj4gPiAxMDBHQi9kYXksIGFuZCB3ZSdyZSBxdWl0ZSBoYXBweSB3aXRoIGl0IHNvIGZh
ci4gRWdyZXNzIGFuZCBpbmdyZXNzCj4gPiBzdGF0cyBhcmUgYmVsb3cgYWZ0ZXIgfjFUQiBkb3du
bG9hZCBhbmQgfjEwMEdCIHVwbG9hZC4KPiA+IAo+ID4gSSB1c2UgIm1lbWxpbWl0IDhNIiwgYW5k
IG5vdGljZWQgdGhhdCBpdCdzIHJlcG9ydGluZyA4Mzg5Njk2IGJ5dGVzCj4gPiB1c2VkCj4gPiBv
biBlZ3Jlc3MsIHdoaWNoIGlzIGF0IHRoZSBtYXhpbXVtIChzbGlnaHRseSBvdmVyIGFjdHVhbGx5
KS4gQXJvdW5kCj4gPiA2TQo+ID4gaXMgdXNlZCBvbiBpbmdyZXNzLiBTaG91bGQgSSB0aGVuIHJh
aXNlIHRoZXNlIGxpbWl0cywgb3IgaXMgaXQKPiA+IG5vcm1hbAo+ID4gZm9yIGl0IHRvIHNldHRs
ZSBpbiBhcm91bmQgdGhlIG1heGltdW0gb3ZlciB0aW1lPwo+IAo+IFRoYXQgc3RhdCBpcyB0aGUg
bWF4aW11bSBtZW1vcnkgZXZlciB1c2VkLCBub3QgdGhlIGN1cnJlbnQgdXNhZ2UKPiAodGhhdAo+
IGlzIHJlcG9ydGVkIGJ5ICJiYWNrbG9nIDBiIDBwIikuIFNvIGlmIHlvdXIgcXVldWUgZXZlciBv
dmVyZmxvd3MKPiBpdCdsbAo+IGJlIGF0IGl0cyBtYXhpbXVtLgoKVGhhbmtzLCBpdCdzIG5vdCBp
bmNvbmNlaXZhYmxlIHRoYXQgaXQgcmVhY2hlZCB0aGF0IGF0IHNvbWUgcG9pbnQsIGlmCnRoZXJl
IHdlcmUgYW4gdW5yZXNwb25zaXZlIGZsb3cgZm9yIGV4YW1wbGUuIEFmdGVyIG15IGJ1bXAgdG8g
MTZNLCBJJ2xsCmdldCBub3RpZmllZCBub3cgaWYgaXQgcmVhY2hlcyB0aGF0LCBmb3IgY3VyaW9z
aXR5J3Mgc2FrZS4KClBldGUKCj4gCj4gLVRva2UKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

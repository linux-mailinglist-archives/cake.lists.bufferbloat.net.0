Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AE43262B0
	for <lists+cake@lfdr.de>; Fri, 26 Feb 2021 13:26:51 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4BC643CB38;
	Fri, 26 Feb 2021 07:26:50 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614342410;
	bh=9ygE6XxgdOdk2fZ1jQidAL+B+UxN32o7Uu4WaaDj20Y=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=UBiZ8JC2PYa2A1BYQ+CqWliU6Bb+iS3tzcRxoH1YffKymTy/bFiYydTu/NN2ArWF0
	 qfPIG0EpG0NV+o1Vpdpmrp79aByKhUpUe1QniqlxuChWpdfL2LuDHgLSsOWX4VN1NT
	 nS5DPF43GyrzGmhnQea7yROXZi4XFNd425MMuVJZiEhAfHtajTIwR5mO0hVxU/fch3
	 4wTMIB0PlfPLTkt9G1xjLGMsKao5vpikrbub98ErPDQ4QBhFLs9SL4n85C5Xr/w0m6
	 oS8EY4n8F3DF4ZXFllJ/0LcyKwI6KExBhhXxrMGZNSWQiCQS9L9tLpTucOiUe/cpB5
	 qeJRofYNxornw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5BDEE3B29E;
 Fri, 26 Feb 2021 07:26:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1614342406; bh=+gQmJytOGJTsPazTz/9xBy5JpiStzm7WvwCdJS2nPyA=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=DqYWRBZ7xiPVgKWgi+h/BZQ8hGwMjoe6phIBN1a9awr/lb9lxQrt5mRxuxy31XvBu
 tFkcraBiyexEvQ5doIYnjQhLECBq+0hU/ek4a7RRSGGPzUTnmwMpXwki04jz2M5A87
 dpIjeTJ8UPZC3/uC6zBkxu3hxdEPc+/F3gFHyT9Oj3sZUyb5lAUlJUbEvY4G0a5CW6
 buYdKpzbuxY3bFCxMfvFjd+JXTz2GAuxWZe8MISNC5ejEI9PYxGW5EIiGcDXEKz85X
 oNNH7rKUNIJTDRe2aqVG8QegnrAff9b+5SLFz4aM9NFwxiaeN6i5UcLZQxEZbO8Y49
 T9TwScJR/KT9A==
To: Taraldsen Erik <erik.taraldsen@telenor.no>, Nils Andreas Svee
 <me@lochnair.net>, Dave Taht <dave.taht@gmail.com>, bloat
 <bloat@lists.bufferbloat.net>, Make-Wifi-fast
 <make-wifi-fast@lists.bufferbloat.net>, Toke =?utf-8?Q?H=C3=B8iland-J?=
 =?utf-8?Q?=C3=B8rgensen?= via Cake <cake@lists.bufferbloat.net>
In-Reply-To: <53f6b6b3f5b043feb841c9c33fd1f480@telenor.no>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
 <2f30c201fce345658df9f2a5090745cf@telenor.no>
 <480413c4-e9a1-4b78-8ef6-3d8658836874@www.fastmail.com>
 <f5c96a7d5360417bbf8d71ee603eacdd@telenor.no>
 <9b17aa66-d02d-e262-88a3-2f36c1755667@lochnair.net>
 <53f6b6b3f5b043feb841c9c33fd1f480@telenor.no>
Date: Fri, 26 Feb 2021 13:26:46 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87eeh3ypyx.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [Bloat] Fwd: [Galene] Dave on bufferbloat and jitter at
 8pm CET Tuesday 23
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGFyYWxkc2VuIEVyaWsgPGVyaWsudGFyYWxkc2VuQHRlbGVub3Iubm8+IHdyaXRlczoKCj4gVGhp
cyBpcyBnZXR0aW5nIExURS81RyBzcGVzaWZpYy4gIE5vdCBzdXJlIGlmIGl0IGJlbG9uZ3Mgb24g
dGhlIGxpc3QuCj4gTGV0IHVzIGtub3cgaWYgd2UgYXJlIGdlbmVyYXRpbmcgbm9pc2UuCgpJIGZv
ciBvbmUgdGhpbmsgaXQncyBmYXNjaW5hdGluZyAtIGNhcnJ5IG9uISA6KQoKLVRva2UKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxp
c3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5u
ZXQvbGlzdGluZm8vY2FrZQo=

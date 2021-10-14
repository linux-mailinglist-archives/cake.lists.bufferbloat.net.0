Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 523E742E3BF
	for <lists+cake@lfdr.de>; Thu, 14 Oct 2021 23:45:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B81DB3CB4F;
	Thu, 14 Oct 2021 17:44:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634247899;
	bh=lT0j+qzCJLC6nsMfYy0DMm6XaBm1tby1Uozv23qRwZU=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=VJViYP2737RsX6bJ5lAPtJgoOkI3jYj5FxIt0RG4WKpgmm6OTpMqA448TFz+ydfbf
	 Xsp4/YXK4zd8mbBygPp7Di3zz30PUguJp6Wim6q46CDEq5Q4Y4jo9OI6vDMMhsV8rV
	 wYchCxRLha77byLni3iIBf/WmWjIf8wL0SDG1ehPgvPMHKkj3YwD4aarjAcZv+t+kO
	 aAQ/sv3+K1ZMxQa5cy5nHr24rLzT6Ux1oWgTbGp/YMmbmsIilBsMPqa+ShtdkzbwDx
	 6beYRdcO/cQHmj21olbGPn75UJwhLkb4WTyOEEvxNx/6ApufWSDHjdy67URWuzMad4
	 vzbSheWkV7xFA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5DA2D3B29E;
 Thu, 14 Oct 2021 17:44:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1634247896; bh=PcxnhIrYa0A8K3I3zxPSfUc4/T+YVqd5BCDIzajhdgM=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=D6tkX7nQvyErsLHosMC0SwsczHhicLAntmgZYyOqC2Fu1W5dYhUzHRqoPBa6k7lc6
 q+RrouvbYwI3jOtPaxZanyNHA3y5jh9j3uHSdH6IvOoUeUymBN4xDK0KKpUmWgyjEz
 qeevDOCxLKj8oQNAx+qtSCDClPQqg9eo1aZ0CANHWuvsSS2mtOFaQ/AxiQx5PBwvgd
 E/8EE5aHsWusKdRme2947FNtKY96Jph0s5nIoL4aELMpmwOZVNuE95p9KlRolXF/lv
 u4TOxUKcb0Ny3nKV9fa2lDQ2ht5gikyYTGEf7mMK7Ve5DOmLav9YW1qfemUnMlbm9S
 u91hoOjoNSsgA==
To: Dave Taht <dave.taht@gmail.com>, Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <CAA93jw48afWujaJm8Sn+J-uEHb7iKLx57p7e5d=Qw9QyX=Csqg@mail.gmail.com>
References: <CAA93jw43C7CB-4Jv7h9NvvzjROdO5p2rVbPSZnmSJf0JAaCyaQ@mail.gmail.com>
 <CBBD435B-5A6F-408D-B17C-B28F326B49AC@gmx.de>
 <CAA93jw48afWujaJm8Sn+J-uEHb7iKLx57p7e5d=Qw9QyX=Csqg@mail.gmail.com>
Date: Thu, 14 Oct 2021 23:44:54 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87sfx31dt5.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [Ecn-sane]  l4s kernel submission
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 ECN-Sane <ecn-sane@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cml0ZXM6Cgo+IHdlaXJkbHkgZW5vdWdo
LCBteSBnbWFpbCBhY2NvdW50IGhhcyBub3QgcmVjZWl2ZWQgYW55dGhpbmcgZnJvbSBuZXRkZXYK
PiBzaW5jZSBvY3QgMTEuCgpZb3UncmUgbm90IGFsb25lIGluIHRoYXQ6Cmh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL25ldGRldi8yMDIxMTAxNDExMjcxOC42YWVkN2Y0N0BraWNpbnNraS1mZWRvcmEt
cGMxYzBoam4uZGhjcC50aGVmYWNlYm9vay5jb20vVC8jdAoKPiB5ZXMsIGkgdGhpbmsgZnFfY29k
ZWwgd2lsbCBiZSBiZXR0ZXIsIGFuZCBldmVuIHRoZSBwcm9wb3NlZAo+IHRvby1zaGFsbG93IHRo
cmVzaG9sZCB3aWxsIG1ha2UgZm9yIGxlc3Mgb2YgYSBkZW50IG9uIHRoZSBpbnRlcm5ldC4KPgo+
IHN0aWxsLi4uIEkgZG8gd2lzaCBJJ2Qgc2VlbiB0aGlzIGVhcmxpZXIuCgpFYXJsaWVyPyBZb3Ug
Zm9yd2FyZGVkIHRoZSBwYXRjaCBob3VycyBhZnRlciBpdCB3YXMgcG9zdGVkLi4uCgotVG9rZQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxp
bmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

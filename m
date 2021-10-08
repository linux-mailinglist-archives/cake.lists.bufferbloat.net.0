Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 048D5426FCD
	for <lists+cake@lfdr.de>; Fri,  8 Oct 2021 19:59:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 84AD13CB41;
	Fri,  8 Oct 2021 13:59:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1633715946;
	bh=sV+dAWyTampQbSGk5wCScKbl7EY/48yQ8pRy76CF7Kk=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=cV1X2EqMp9FmDFjTpEL3htHiReXp6/iVoh7RnOAYnd/dtd7OUV9JCNGYLlr+I4nzg
	 CL6K9kiQr9JuXc2wUp+AyB9cdGmbou0GrQTq6ONHT3dqecbWO3xxjzxm7cQ6H8YyfG
	 KCZgPH3HBrJQM+XmQCfWZzDKgq6Sonhehmj/0IVjzSG5wLeJY8l9WAb1aenNTL1acT
	 5pBn9nEv1Ax0+EvP00nfS9SxnhB9ZfBKbc2xFAUYqd/xmkH14LB7EOhymQAlRuJv30
	 vgzk+wOxB7d5gNCVUC6x6U07nKzZJ/fK4KQhiDtS4Z6bK5lhs0Hfebsz1dKYkxhDFR
	 6HXNfWA/7MnYw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 78D9D3CB37
 for <cake@lists.bufferbloat.net>; Fri,  8 Oct 2021 13:59:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1633715944; bh=u2Cz1HtMFXotzfPLLvdx1VwMRAUqL79nn8FwN8Njl8s=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=eL5GzYDrvOuQ75N3Q205421WeGw2X5z3z0XKQG3rIXrV+PibqNwy3JJ7DOmQQQA6/
 1Fx6zA8Vm43YpSLpzf7PekcrY+7NtHjD+K5QorO28mcmffP9zGMBpGVrcNa164i0Y3
 4XfYAfJ31bHaFr3LbroKuBvQq2pDvevRFWDb+E2FuIXfIuVE+lAW8/uKumthNgIK18
 BkS/5Z1tYo72dbpd+vtBiOn/dIhgXQjYqSl5v3Lv0sRg1wVAwMiZgzaB/p5D7Wkozw
 RIBF68b1NEXbU/ukPCAnoU/imrKE6XVA0ePadkjTaxe2P2LATSF9V7ux0UNJNoE7Tf
 8oT5rk3h0x4Zg==
To: Dave Taht <dave.taht@gmail.com>, Cake List <cake@lists.bufferbloat.net>
In-Reply-To: <CAA93jw46yjqyDb3F3HuUDpnhu86cT-D22uuYBmR2gLFK8jTyEA@mail.gmail.com>
References: <CAA93jw46yjqyDb3F3HuUDpnhu86cT-D22uuYBmR2gLFK8jTyEA@mail.gmail.com>
Date: Fri, 08 Oct 2021 19:59:04 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <878rz3l7o7.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] slightly negative deficits
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

RGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cml0ZXM6Cgo+IEkgaGF2ZSBzb21ldGlt
ZXMgdGhvdWdodCB0aGF0IGFsbG93aW5nIHRoZSBkZWZpY2l0IHRvIGdvIG5lZ2F0aXZlCj4gKGVp
dGhlciBvbmUgcXVhbnR1bSBvciBvbmUgbXR1KSBtaWdodAo+IHJlc3VsdCBpbiBzbGlnaHRseSBi
ZXR0ZXIgc2VydmljZSB0aW1lcywgb3IgdGNwLCBvciBhcW0gYmVoYXZpb3IsCj4gZ2l2ZW4gdGNw
J3MgcmVxdWlyZW1lbnQgZm9yIHR3byBiYWNrIHRvIGJhY2sgcGFja2V0cwo+IHRvIHJlbGVhc2Ug
YW4gYWNrLgoKV2h5PyBJc24ndCB0aGF0IGp1c3QgZXF1aXZhbGVudCB0byByYWlzaW5nIHRoZSBx
dWFudHVtPwoKLVRva2UKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6
Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

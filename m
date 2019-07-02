Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 762F75C8F6
	for <lists+cake@lfdr.de>; Tue,  2 Jul 2019 07:56:33 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 17DA53CB38;
	Tue,  2 Jul 2019 01:56:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1562046992;
	bh=gfOhQA90R+UaiHGgDiJty53yElWM+OHjizv8sYhbth0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A+HKM3WijpKOGdW99el39H5M08qw7j+4Gd4xvEKlwfN9Bnf2ex24/lVm0tOkiPVqB
	 F9wmN+ow1/ELUW0RVY4zwwqorCjY/2s29Z0aoKLFKw2lDgN1pVq6Za1dAeHuoNWFwd
	 Tsr/Z5aN1l+eSGJQnL16xPYF5wT79tiSskrfNQ6I0+MFjrR46D+//m50XS2CDQQgtl
	 Gwue3bm2gG3cAB4vZrQrhxXCagRNE78mSOTTBbYMGwUwMUvBxQMaY6YM0GhwBF/mfk
	 LMKS4ULI1PrKZENnUfODiSARozGWV86zyIBFzFdRrY/CFx3irkNccVpQeG9xEq70Ww
	 /UljAT81dJT4Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.lang.hm (unknown [66.167.227.145])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A4A113B2A4
 for <cake@lists.bufferbloat.net>; Tue,  2 Jul 2019 01:56:30 -0400 (EDT)
Received: from dlang-laptop.LAN (dlang-laptop.LAN [10.2.0.162])
 by mail.lang.hm (Postfix) with ESMTP id 061D9761DF;
 Mon,  1 Jul 2019 20:28:41 -0700 (PDT)
Date: Mon, 1 Jul 2019 20:28:40 -0700 (PDT)
From: David Lang <david@lang.hm>
X-X-Sender: dlang@dlang-laptop
To: Alban <albeu@free.fr>
In-Reply-To: <20190701135251.08defe75@eos>
Message-ID: <nycvar.QRO.7.76.6.1907012026330.5396@qynat-yncgbc>
References: <20190701135251.08defe75@eos>
User-Agent: Alpine 2.21.1 (DEB 209 2017-03-23)
MIME-Version: 1.0
Subject: Re: [Cake] Recommendations for using cake in complex setup
 (wireguard + vlan + bond)
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
Cc: cake@lists.bufferbloat.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

QXMgYSBnZW5lcmFsIHJ1bGUsIHlvdSB3YW50IHRvIHB1dCBDYWtlIChvciBhbnkgb3RoZXIgc3Ft
IHN5c3RlbSkganVzdCBiZWZvcmUgCnlvdXIgYm90dGxlbmVjayBsaW5rLgoKVGhhdCdzIHVubGlr
ZWx5IHRvIGJlIHRoZSBMQU4gbGlua3MsIGl0J3MgYWxtb3N0IGFsd2F5cyBnb2luZyB0byBiZSB5
b3VyIFdBTiAKbGlua3MuCgpJZiB5b3UgaGF2ZSB0aGVtIHRoZXJlIGZvciByZWR1bmRhbmN5LCBu
b3QgZm9yIGFkZGVkIGJhbmR3aWR0aCwgSSB0aGluayB0aGUgCnJpZ2h0IHRoaW5nIHRvIGRvIGlz
IHRvIHB1dCBDYWtlIG9uIHRoZSBib25kZWQgKGxvZ2ljYWwpIGludGVyZmFjZSB0aGF0IHRoZXkg
CnNoYXJlLCBidXQgc2V0IGl0IHRvIGEgYmFuZHdpZHRoIHRoYXQgZWl0aGVyIGxpbmsgY2FuIHNh
dGlzZnkgaWYgdGhlIG90aGVyIGlzIApkb3duLgoKRGF2aWQgTGFuZwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5m
by9jYWtlCg==

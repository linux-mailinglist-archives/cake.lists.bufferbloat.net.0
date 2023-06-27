Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 308FA740413
	for <lists+cake@lfdr.de>; Tue, 27 Jun 2023 21:47:09 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 17C383CB43;
	Tue, 27 Jun 2023 15:47:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1687895223;
	bh=rpZFI6BGZMJnPuzVzHGvQTjd+OL8x16Epi4q8vJYgL4=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=p6HMzfeEUYmXmxPSKeu86Ll7lqavX1y6SqdkYWp/QEzTAFc+XZb8Accowl3r0Znuu
	 NezNzyXoVOML6fYWbPmtBkY8lCdgVLkYosrYK+mM3ET42XptPsWoI9zvvVekcC75QB
	 yqAnRQGQ9OVZj5iwbyO49mZFk1I/LNwWnSbtGv2vRGa0qLDduqcTFDoOdUQrTxm/LD
	 CYbJxcpioG4NOsM5naNjqHVL64ccefbpOAXXdVEeKvRwLsCceZ47zLzXZnb0waCY9t
	 GDfH7Wl0k0MSv2HOdfrxJwH57v0naYfl+3dZCZrK3Xlj7x6j6xhbqKJ2HFYL9KxHlk
	 UFZyEVVOS1h2w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.lang.hm (unknown [66.167.227.145])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3C29C3B29D;
 Tue, 27 Jun 2023 15:47:02 -0400 (EDT)
Received: from dlang-mobile (unknown [10.2.2.69])
 by mail.lang.hm (Postfix) with ESMTP id 32B91199CF8;
 Tue, 27 Jun 2023 12:47:01 -0700 (PDT)
Date: Tue, 27 Jun 2023 12:47:01 -0700 (PDT)
To: "David P. Reed" <dpreed@deepplum.com>
In-Reply-To: <1687837319.447910185@mobile.rackspace.com>
Message-ID: <4np8q9q1-on99-rn94-5s1p-55643oo11037@ynat.uz>
References: <1687837319.447910185@mobile.rackspace.com>
MIME-Version: 1.0
Subject: Re: [Cake] [Bloat] Two questions re high speed congestion
 management anddatagram protocols
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
From: David Lang via Cake <cake@lists.bufferbloat.net>
Reply-To: David Lang <david@lang.hm>
Cc: cake@lists.bufferbloat.net, bloat@lists.bufferbloat.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gTW9uLCAyNiBKdW4gMjAyMywgRGF2aWQgUC4gUmVlZCB2aWEgQmxvYXQgd3JvdGU6Cgo+IFNv
cnJ5IGZvciB0b3AgcG9zdGluZywgYnV0IC4uLiBCaWdnZXIgcXVlc3Rpb246Cj4gV2h5IHdvdWxk
IERDQ1AgYmUgZGVwcmVjYXRlZCBieSBMaW51eCBrZXJuZWw/Cj4gV2hvIG1ha2VzIHRoYXQgZGVj
aXNpb24/IFdobyBhcmd1ZXMgYWdhaW5zdCBpdD8KCkxpbnVzIG9yIHRoZSBuZXR3b3JraW5nIG1h
aW50YW5lcnMgbWFrZSB0aGUgZGVjaXNpb24uCgpVc3VhbGx5IHRoaW5ncyBnZXQgcHVsbGVkIGZy
b20gdGhlIGtlcm5lbCBiZWNhdXNlIHRoZXJlIGFyZSB1cGRhdGVzIHRoYXQgbmVlZCB0byAKYmUg
bWFkZSB0byB0aGUgY29kZSAodG8gbWF0Y2ggY2hhbmdlcyBlbHNld2hlcmUgaW4gdGhlIGtlcm5l
bCBvciBiZWNhdXNlIG9mIApzZWN1cml0eSBpc3N1ZXMpIGFuZCB0aGVyZSBpc24ndCBhIG1haW50
YWluZXIgd2hvIHdvcmtzIG9uIHRoZSBjb2RlIGluIGEgCnJlc29uYWJsZSB0aW1lLiBUaGlzIG1l
YW5zIHRoYXQgdGhlIG1haW50YWluZXJzIGZvciB0aGUgZ2VuZXJhbCBjb2RlIGFyZWEgKGluIAp0
aGlzIGNhc2UgbmV0d29ya2luZyBtYWludGFpbmVycykgd2lsbCBuZWVkIHRvIGRvIGV4dHJhIHdv
cmsgaW4gYW4gYXJlYSB0aGV5IAphcmVuJ3QgdGhhdCBpbnRlcmVzdGVkIGluIChhbmQsIGVzcGVj
aWFsbHkgaW4gdGhlIGNhc2Ugb2YgaGFyZHdhcmUsIG1heSBub3QgaGF2ZSAKdGhlIGFiaWxpdHkg
dG8gdGVzdCkuIFRoZXkgZG8gc29tZSBvZiBpdCwgZXNwZWNpYWxseSBpZiBpdCdzIGNvbW1vbmx5
IHVzZWQsIGJ1dCAKZXZlbnR1YWxseSBlaXRoZXIgYW5vdGhlciBtYWludGFpbmVyIHN0ZXBzIHVw
LCBvciBpdCBnb2VzIGF3YXkKCkRhdmlkIExhbmcKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

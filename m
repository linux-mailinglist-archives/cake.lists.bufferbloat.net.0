Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D5D86182B
	for <lists+cake@lfdr.de>; Fri, 23 Feb 2024 17:39:50 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 517CE3CB43;
	Fri, 23 Feb 2024 11:39:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1708706389;
	bh=J7xR4/csd7B1sORaPJwFjQHPJQbcSxvc7bwJUFl7QuQ=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=hjDjd0gw3h+Rsn8HopvHKKwu/yRXSuQfxpZ08NlBxz4T3zKnkHqHz5mfEG7hHN8UU
	 hOPCjmzl3IM8GB6c/HvcAYgCfmqki6AbKDyX7BstlkhjINrmnvo0Jkj505TIpzgrUS
	 Ih34W2XyRjbkYCTQ+oj11DStHtVa51Z4V5QAlNBbokvR7LEnl0H+kceUnsfNzTSPS9
	 8rl+0sJDY3F27ZY1+ZnHDWJ2kwqOzRdVF9tAHmIV9Wu2m6oZL72nEBuFsJyvoS5GCL
	 TnJ3XeBbOBGc8kvwM5HNm9PoYLehWhIqKj376VXng27Enwx3QiFz6Ejnsal/YYM9Fp
	 JI5F960cNfaEg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8DC283B2A4
 for <cake@lists.bufferbloat.net>; Fri, 23 Feb 2024 11:39:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1708706385; bh=H/962ZOWn/EHiuvxRjDnNQMspY6xgO9jNmIpSsrnghA=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=XIIvt9KcZ61yAVWmjeKSjVAANJ/1+lrbiCQqWSngDY6dDlDd2s534GiEffUkbLTr4
 j/uF5mTsAS91G5DRT9+A+5wiIWXUHwoD5CC+fd3mh/vUNJukDAbKVShKgSv5pWRL0r
 qHCpI+CYhIsLk558mehNqXFi0I6EiDfsA9hppQjlpnoW9y+4B6my0o7H3E6oZ31CCj
 hhifSqLgPfs5+QjooxCvD6m/h8nyysMp/Jeei/UA8gLFgnfJ7KHYZ3LEsLA7clceOd
 PjQicE/ZQiT1dZGcBX3NKMYjPy/d45krJO79NUv8pNA9bHeR7fFKoZczwuX4ojl6s/
 B0EoRD/v0GVGA==
To: Dave Taht <dave.taht@gmail.com>
In-Reply-To: <CAA93jw7y+S6NvRf+Q_VtqJkDnWQJO5Cr5d_En6wHvas6pEBT1w@mail.gmail.com>
References: <CAA93jw7YeW4wTC2OL4AxeEPBOGL4sKN+e5Dtre_0VZCkOjkbCw@mail.gmail.com>
 <875xyldhbk.fsf@toke.dk>
 <CAA93jw7y+S6NvRf+Q_VtqJkDnWQJO5Cr5d_En6wHvas6pEBT1w@mail.gmail.com>
Date: Fri, 23 Feb 2024 17:39:44 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87sf1juobz.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] cake's ack-filter vs GSO
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cml0ZXM6Cgo+IE9uIFN1biwgRmViIDE4
LCAyMDI0IGF0IDg6MzfigK9BTSBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAdG9rZS5k
az4gd3JvdGU6Cj4+Cj4+IERhdmUgVGFodCB2aWEgQ2FrZSA8Y2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQ+IHdyaXRlczoKPj4KPj4gPiBJdCBoYXMgYmVlbiB5ZWFycyBzaW5jZSBJIGxvb2tlZCBh
dCBjYWtlJ3MgY29kZS4KPj4gPgo+PiA+IERvZXMgYW55b25lIHJlbWVtYmVyIHdoeSB3ZSBkbyBu
b3QgYWNrLWZpbHRlciBhIGdzby1zcGxpdD8KPj4KPj4gQmVjYXVzZSBhIEdTTyBwYWNrZXQgY2Fu
bm90IGJlIGEgcHVyZSBBQ0ssIHNvIGl0IHdvdWxkbid0IGJlIGZpbHRlcmVkCj4+IGFueXdheS4u
Lgo+Cj4gQnV0IGEgR1JPIHBhY2tldCBjYW4sIGFuZCBtb3N0IGxpa2VseSBJUyBhIHB1cmUgYWNr
IHBhY2tldCB0cmFpbiB0aGF0Cj4gY291bGQgYW5kIHNob3VsZCBiZSB0aGlubmVkLiBJIHRoaW5r
LiBZZXM/CgpFcm0sIG5vLCBiZWNhdXNlIHRob3NlIHdvdWxkIGhhdmUgaGVhZGVyIGRpZmZlcmVu
Y2VzIGFuZCBzbyB3b3VsZG4ndCBiZQpjb21iaW5lZCBpbnRvIGEgc2luZ2xlIEdSTyBwYWNrZXQu
Li4KCi1Ub2tlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlz
dHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

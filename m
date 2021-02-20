Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 50897320521
	for <lists+cake@lfdr.de>; Sat, 20 Feb 2021 12:54:16 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 774A53CB40;
	Sat, 20 Feb 2021 06:54:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1613822055;
	bh=1YPZPco+0wgdwQzFHzpXHYVHMRsiTvIY4EnOYFf81Oc=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=imniQKAqRTkF6BRhqfiJjVjk//zuQnZom9CLGpf7znND4D+UfCCi+HorTUWjDkAyQ
	 r0kERTIe9ku7xZXfxiiDgGp4pfLFPQmf50wJIN2ON5zag9SraXB7IBgxDjvNW/coLM
	 B817lMv9NkNOEPxKC4z5h473kINKTzNHyY8PIJXKGd2C0PhQ7x2H9AI5FVhsg1hu/h
	 /ROCCKRB6mDauV5QyQw0nK9Jl+LYLl1IhVdST+ixaEJeucijnpxrrBkiwtgZfSkHF9
	 yHm/uJSDUO4Dp16W1e/WVpBEK6Y/dtFcr5y3OVQz3I9ruTolj+bgCz6czoUvpgc+Qt
	 6aNYPv7nC2A9Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EF0313B29E
 for <cake@lists.bufferbloat.net>; Sat, 20 Feb 2021 06:54:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1613822050; bh=IqENorMhsTd7oK7/AAoaqqT2sTAKqf9LU+/J1ZNBtWQ=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=gt3c/UaH8D/sYBEXLnxj4m2A3VEzaBssPuoE8OWI6JhYITlRv2Cut7SxY/ZlIH1JP
 H7bIVKUBlELDhy+swxap2iZ+D+XEkTZ5UwVVRLVTgCAol94l2sDzxC6YYYZrn2Uefv
 agtnXnop15vTy+Az/HKfOfDZkfNah9cN7Xgq0yf2gt2+tmmrjTLeuePQAcylM1kxxx
 1mS6WTwOyB/7JaEbu6HP4u9h9UNbT31RvtYBjBLGs+jOH0u8yYgzpEeVs2ProI82Jt
 +VwjcYsyM6V6dol2WoNijnwzqVf62UopmGvDGmEIJh/uSJQDbe2xe6mlEtJWcx9+2Y
 2HXOubUzsA5fw==
To: John Sager <john@sager.me.uk>, Peter Lepeska <bizzbyster@gmail.com>
In-Reply-To: <faa1600e-d040-2741-9335-fdf17e32f11b@sager.me.uk>
References: <CANmPAYHxP9mdmPMsvR=bi=TSNi9+0HbZGz0r89zOLbe3dAyk-Q@mail.gmail.com>
 <87mtw1kx9c.fsf@toke.dk>
 <CANmPAYHFrtbLhGZ1yXNzsaGGf8gP09ap_vUCMX9ggbSRUcpRFg@mail.gmail.com>
 <87im6pkweq.fsf@toke.dk>
 <9a889d98-0fae-d1af-6dea-c534f0df854a@sager.me.uk>
 <CANmPAYF7SEwWUOpj7S3riHufHDm2QtqSjWq8F-+rGJnRk=3xZw@mail.gmail.com>
 <faa1600e-d040-2741-9335-fdf17e32f11b@sager.me.uk>
Date: Sat, 20 Feb 2021 12:54:09 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87ft1rhs4e.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] Enforcing video quality question
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
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Sm9obiBTYWdlciA8am9obkBzYWdlci5tZS51az4gd3JpdGVzOgoKPiBQUyBkb2VzIHRoZSBjYWtl
IGxpc3QgYWxsb3cgYXR0YWNobWVudHM/IEl0IHdpbGwgYmUgYSBzbWFsbCB6aXAgZmlsZS4KCkl0
J2xsIGxpa2VseSBlbmQgdXAgaW4gdGhlIG1vZGVyYXRpb24gcXVldWUgKGRvbid0IHJlY2FsbCB0
aGUgc2l6ZQpsaW1pdCksIGJ1dCBJIGNhbiBtYW51YWxseSBhcHByb3ZlIGl0IGZyb20gdGhlcmUu
Li4KCi1Ub2tlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlz
dHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 540C83505BC
	for <lists+cake@lfdr.de>; Wed, 31 Mar 2021 19:50:30 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B58963CB4D;
	Wed, 31 Mar 2021 13:50:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1617213028;
	bh=4UYJTsb56h5Kft83uNfgv7YcW5SJKP8y/v2/zXE5Y84=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EiHMdGmWN2ye3PxVR48nEPexInFusqgHblMMzSPiZiMaJsseYFDWPOWL19Jh6PhMj
	 UZrEyA3QHB/JBve4/qk1uBJ1qDMGnWW7PErYbMtx2H5HfkJi29bT8ACJ/EhKx7Sjfn
	 WPJ0eq8E2hUgbDHOcNBjIe7x57R3JcLA6uOJRNVly9aRcfe9MZC1v0NH35vujO4pv5
	 DcrDAwLeMwGmYSRO4oZWECxDKVdMsWhHm33chVBGu448CxOzZMXSQv/hDzNVBVC9FZ
	 Pl15kaH3lj9tmuR9VL9mKzQm2mtZd6MLIkbEmsm2UFW/Tzl9KytuQsXmkGD5g5iJ+5
	 W43Mzg7CONYPQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4A33F3B29E;
 Wed, 31 Mar 2021 13:38:03 -0400 (EDT)
Received: from cwcc.thunk.org (pool-72-74-133-215.bstnma.fios.verizon.net
 [72.74.133.215]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 12VHc0Sd008899
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 31 Mar 2021 13:38:00 -0400
Received: by cwcc.thunk.org (Postfix, from userid 15806)
 id 03F6615C39CF; Wed, 31 Mar 2021 13:37:59 -0400 (EDT)
Date: Wed, 31 Mar 2021 13:37:59 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: Dave Taht <dave.taht@gmail.com>
Message-ID: <YGSzd3mqVwOwgQcV@mit.edu>
References: <CAA93jw5+_vW3b85ZOxpOn5_LoiPgxuj4XzH3=gkq8qYM2xunSA@mail.gmail.com>
 <1617049691.187521510@apps.rackspace.com>
 <YGKEbCGX57z9+PdA@mit.edu> <1617153830.6256867@apps.rackspace.com>
 <CAA93jw64Lm-7LjDqefYYx9NcZkGbmoP23RY-evnSOyZEOV-tNA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA93jw64Lm-7LjDqefYYx9NcZkGbmoP23RY-evnSOyZEOV-tNA@mail.gmail.com>
X-Mailman-Approved-At: Wed, 31 Mar 2021 13:50:27 -0400
Subject: Re: [Cake] [Cerowrt-devel] wireguard almost takes a bullet
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
Cc: Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVHVlLCBNYXIgMzAsIDIwMjEgYXQgMDk6MTU6MDRQTSAtMDcwMCwgRGF2ZSBUYWh0IHdyb3Rl
Ogo+IERhdmlkLCBJJ20gc3VyZSBpZiB5b3Ugd291bGQgcG9zdCB5b3VyIHBhdGNoIGZvciByZXZp
ZXcgb24KPiBjZXJvd3J0LWRldmVsIHNvbWVvbmUgaGVyZSB3b3VsZCByZXZpZXcgYW5kIGhlbHAg
c3BvbnNvciBpdCB0bwo+IHdoZXJldmVyIGl0IGJlbG9uZ3MgaW4gdGhlIGtlcm5lbC4gT25lIHRo
aW5nIEkgcmVhbGx5IGxpa2VkIGFib3V0Cj4gd2hhdCB3ZSBkaWQgd2l0aCBjZXJvd3J0IGFuZCBj
YWtlIGlzIHRvIGhlbHAgYSBzZXQgb2YgbmV3IGRldmVsb3BlcnMKPiBncm93IHRvIHdoZXJlIHRo
ZXkgY291bGQgZ3JvdyBpbiBza2lsbCBhbmQgcG93ZXIgYW5kIGluZmx1ZW5jZSBpbnRvCj4gdGhl
IG1haW5saW5lIGtlcm5lbCBpdHNlbGYuIExpbnV4IG5lZWRzIHRvIGtlZXAgZG9pbmcKPiB0aGF0
IGFzIHdlIGdyb3cgb2xkZXIgYW5kIGNydW5jaGllci4KCkknbGwgbWFrZSB0aGUgc2FtZSBvZmZl
ci4gIEkgZG9uJ3Qgc3BlY2lhbGl6ZSBpbiB0aGUgbmV0d29ya2luZwpzdWJzeXN0ZW0sIGJ1dCBJ
J20gaGFwcHkgdG8gbWVudG9yIG5ldyBrZXJuZWwgY29udHJpYnV0b3JzIGFuZCB0byBoZWxwCm1h
a2Ugc3VyZSB0aGF0IHBhdGNoZXMgY2FuIGJlIGRpcmVjdGVkIHRvIHJpZ2h0IHBsYWNlIHNvIHRo
ZXkgY2FuCnJlY2VpdmUgdGhlIGF0dGVudGlvbiB0aGV5IGRlc2VydmUuICAoVGhpcyBpcyBub3Qg
YSBndWFyYW50ZWUgdGhhdCB0aGUKcGF0Y2hlcyB3aWxsIGdvIGluLCBvZiBjb3Vyc2UuKQoKQ2hl
ZXJzLAoKCQkJCQktIFRlZAoKPiBUaGlzIGlzIGFuIGF3ZnVsbHkgd2lkZSBkaXN0cmlidXRpb24g
bGlzdCwgYnV0IGhleSwgSSBlbmpveSB3YXRlcgo+IGNvb2xlciBjb252b3MgYXMgbXVjaCBhcwo+
IGFueWJvZHkuIFRlZCwgaXQncyBuaWNlIHRvIHNlZSB5b3UgaGVyZS4KCkRhdmUsIGlmIHlvdSB0
aGluayB3ZSd2ZSBnb25lIHRvbyBmYXIgYWZpZWxkLCBqdXN0IHNheSB0aGUgd29yZC4gIE9uZQpv
ZiB0ZWhyIGVhc29ucyB3aHkgSSBzdGF5IG9uIHNvbWUgb2YgdGhlc2UgbGlzdHMgaXMgYmVjYXVz
ZSB0aGV5CmFyZW4ndCB0ZXJyaWJseSBoaWdoIHRyYWZmaWMsIGFuZCBJIGRvbid0IHdhbnQgdG8g
aGVscGluZyB0byBkcml2ZQpwZW9wbGUgYXdheSBiZWNhdXNlIHRoZSBzaWduYWwgdG8gbm9zaWUg
cmF0aW8gb24gYSBwYXJ0aWN1bGFyIGxpc3QKZ2V0cyBwdXNoZWQgdG9vIGxvdy4uLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxp
c3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5u
ZXQvbGlzdGluZm8vY2FrZQo=

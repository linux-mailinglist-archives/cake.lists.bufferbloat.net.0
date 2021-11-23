Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D894045A06F
	for <lists+cake@lfdr.de>; Tue, 23 Nov 2021 11:39:49 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 67ECF3CB39;
	Tue, 23 Nov 2021 05:39:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1637663988;
	bh=I+Tb9K/qJKyYqpEE+1gp2NYk1OW6vZoWgd5GkxWvKTY=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Ri2Z+ZNHD8rXDWEVJqMLSn9b488rjDfCeYAX5oohgqr76bo4cqiGDg5KX3B6tEUOm
	 6scPiPGYOtHJiYhsrbST5IhVo86QEcDUlWwmPEZh13eckiv5Wd5bC1sVcrL5CHtwxT
	 QM9N2YqZBgPocwET9l/1LAuB768e2j5ilZfev5416+ce0QlaNvlnkiXxnCZA4hs2IO
	 9Yuq/PNHMiRqdINMI5I4bVhiRIcN8Nl5W+nAkOsS1plMozp9C3GmInMxJ27RDiJJeI
	 J0nbgCXbxg1ptKxfISjE5rB9+g2BwR8Vx9Un66Obyoswh1+dxaIBY9f2UWgRXEIUEL
	 aQcZxJNZ1fv6A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5E0763CB35
 for <cake@lists.bufferbloat.net>; Tue, 23 Nov 2021 05:39:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1637663984; bh=eX40U8tHjSiAng1aPWoQ81HFchV/Wh7szqpf+T7vzqM=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=shM+K1OuHqX2sB3wPikYQu9EVkZ3dI3a/hYwmyFfYejT68GcfHZelfzUf211RunSq
 NRYvN3PsxLt//OIIII0LhL7TjCPIc/I8qAkeyVPF1nOVUjdtM3b6ayEVSsg0AfngKX
 aFaXakSpPkBoOu1L8DEV2bW4EokuGB5WvUYZZEQmwKgzWpziPtwMRJWhhUoy8RiON0
 DcOPhE9iu2qhPUQn/xGRis8PHcndHWergOj8KsSM5b7nc0jJd0SBxLfAzCCiexnuBK
 Km3oxX1vD0nrrykLcoum/jFWTDYLIrGJDZxCaA4M8qzsGBGP/bUKS3ul4V29a1Bz/b
 wlcgg4a0PjMAw==
To: Sebastian Moeller <moeller0@gmx.de>, Dave Taht <dave.taht@gmail.com>
In-Reply-To: <BFE5D61E-ED29-4AA3-816C-A8F0947EFDD7@gmx.de>
References: <CAA93jw4hrZmUma-xE6stRQZkyo84m4wYV+mbK6AoPeAJ1y0nqg@mail.gmail.com>
 <67BC6CC2-F088-4C0D-8433-A09F4AC452FE@gmx.de>
 <CAA93jw61GaPrLNmZn+ZuaA59UUo7SSb0DSSSrLH7rVSRqj92Xw@mail.gmail.com>
 <CAA93jw6HbLjK8JRbq23cnmq5=Q2uQ6aUYRF81LjAiEx3HK5Dxg@mail.gmail.com>
 <BFE5D61E-ED29-4AA3-816C-A8F0947EFDD7@gmx.de>
Date: Tue, 23 Nov 2021 11:39:44 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87czmrcg0f.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] tossing acks into the background queue
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

U2ViYXN0aWFuIE1vZWxsZXIgPG1vZWxsZXIwQGdteC5kZT4gd3JpdGVzOgoKPiBIaSBEYXZlLAo+
Cj4gT24gMjMgTm92ZW1iZXIgMjAyMSAwODozMjowNiBDRVQsIERhdmUgVGFodCA8ZGF2ZS50YWh0
QGdtYWlsLmNvbT4gd3JvdGU6Cj4+VGhlIGNvbnRleHQgb2YgbXkgcXVlc3Rpb24gaXMgYmFzaWNh
bGx5IHRoaXM6Cj4+Cj4+SXMgY2FrZSBiYWtlZD8gSXMgaXQgZG9uZT8KPgo+IEhvdyBhYm91dCBw
ZXIgTUFDIGFkZHJlc3MgZmFpcm5lc3MgKHVzZWZ1bCBmb3IgSVNQcyBhbmQgdG8gdHJlYXQKPiBJ
UHY0LzYgZXF1YWxseSk/Cj4KPiBIb3cgYWJvdXQgY29uZmlndXJhYmxlIG51bWJlciBvZiBxdWV1
ZXMgKGFnYWluIGhlbHBmdWwgZm9yIElTUHMpPwoKRldJVyBJIGRvbid0IHRoaW5rIENBS0UgaXMg
dGhlIHJpZ2h0IHRoaW5nIGZvciBJU1BzLCBleGNlcHQgaW4gYQpkZXBsb3ltZW50IHdoZXJlIHRo
ZXJlJ3MgYSBzaW5nbGUgQ0FLRSBpbnN0YW5jZSBwZXIgY3VzdG9tZXIuIEZvcgphbnl0aGluZyBl
bHNlIChpLmUuLCBhIHNpbmdsZSBzaGFwZXIgdGhhdCBoYW5kbGVzIG11bHRpcGxlIGN1c3RvbWVy
cyksCnlvdSByZWFsbHkgbmVlZCBoaWVyYXJjaGljYWwgcG9saWN5IGVuZm9yY2VtZW50IGxpa2Ug
aW4gYSB0cmFkaXRpb25hbApIVEIgY29uZmlndXJhdGlvbi4gQW5kIHJldHJvZml0dGluZyB0aGlz
IG9uIHRvcCBvZiBDQUtFIGlzIGdvaW5nIHRvCmNvbmZsaWN0IHdpdGggdGhlIGV4aXN0aW5nIGZ1
bmN0aW9uYWxpdHksIHNvIGl0IHByb2JhYmx5IGhhcyB0byBiZSBhCnNlcGFyYXRlIHFkaXNjIGFu
eXdheS4KCj4gSU1ITyBjYWtlIHdvcmtzIHByZXR0eSB3ZWxsLCB3aXRoIHRoZSBiaWdnZXN0IGlz
c3VlIGJlaW5nIGl0cyBDUFUKPiBkZW1hbmRzLiBBcyBmYXIgYXMgSSB1bmRlcnN0YW5kIGhvd2V2
ZXIsIHRoYXQgaXMgY2F1c2VkIGJ5IHRoZSBzaGFwZXIKPiBjb21wb25lbnQgYW5kIHRoZXJlIGxv
dyBsYXRlbmN5IGFuZCB0aHJvdWdocHV0IGFyZSBpbiBkaXJlY3QKPiBjb21wZXRpdGlvbiwgaWYg
d2Ugd2FudCB0byBsb3dlciB0aGUgQ1BVIGxhdGVuY3kgZGVtYW5kcyB3ZSBuZWVkIHRvCj4gYWxs
b3cgZm9yIGJpZ2dlciBidWZmZXJzIHRoYXQga2VlcCB0aGUgbGluayBidXN5IGV2ZW4gaWYgY2Fr
ZSBpdHNlbGYKPiBpcyBub3Qgc2NoZWR1bGVkIGFzIHByZWNpc2VseSBhcyB3ZSB3b3VsZCBkZXNp
cmUgb3IgYXMgZS5nLiBCUUwKPiByZXF1aXJlcy4KClllcywgYXMgbGluayBzcGVlZCBpbmNyZWFz
ZXMsIGJhdGNoaW5nIG5lZWRzIHRvIGluY3JlYXNlIHRvIGtlZXAgdXAuClRoaXMgZG9lcyBub3Qg
KmhhdmUqIHRvIGltcGFjdCBsYXRlbmN5LCBhcyB0aGUgZmFzdGVyIGxpbmsgc2hvdWxkIGtlZXAK
dGhlIGdyYW51bGFyaXR5IGNvbnN0YW50IGluIHRoZSB0aW1lIGRvbWFpbi4gU28gZXhwZXJpbWVu
dGluZyB3aXRoIGRvaW5nCnRoaXMgZHluYW1pY2FsbHkgaW4gQ0FLRSBtaWdodCBiZSB3b3J0aHdo
aWxlLCBidXQgcHJvYmFibHkgbm90IHRyaXZpYWwuCgpBbmQgZWl0aGVyIHdheSwgQ0FLRSBpcyBz
dGlsbCBnb2luZyB0byBiZSBsaW1pdGVkIGJ5IGJlaW5nIHNpbmdsZSBjb3JlCm9ubHksIGFuZCBm
aXhpbmcgdGhhdCByZXF1aXJlcyBzb21lIHNlcmlvdXMgc3VyZ2VyeSB0aGF0IEkgc2VlbSB0bwpy
ZWNhbGwgbG9va2luZyBpbnRvIGFuZCBnaXZpbmcgdXAgYXQgc29tZSBwb2ludCA6KAoKLVRva2UK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

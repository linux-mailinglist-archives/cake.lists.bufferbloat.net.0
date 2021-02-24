Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AEBB83241AA
	for <lists+cake@lfdr.de>; Wed, 24 Feb 2021 17:11:45 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8F2343CB42;
	Wed, 24 Feb 2021 11:11:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614183100;
	bh=CGvyJCqYrZ3gED2hDcGczsbp9k1DFdNcuFYeK7J06BY=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=Ki3SeHboDo/ocDSIiflmklemWRj7igMlys0r7hnvjjqLQyrvSYulUY20excEh8jcE
	 uGJ6+xOVpxvcNyXOCkKRl/N5EyvdRz/71Tto4OcN1znATreFXLsm8KsI6vu/kFTh0p
	 /Q01FDqnYmlCdQgIomVudh/cIvBGv2EG/ejdOn/uaa32NMH+o8yukgSKaX+regXZZO
	 I1V5eCyEs8DgOBeb+KNk8FErncO4sEdZLA6YtOM6O46MsZ4T71ZCn2RZNPORxcWY+J
	 xZ2Hqf8zruBvEIdoDC5NP9DROkbSaKZ0u2R9o7skQos3lfAGw6dA1c5y+O/mJCN8cY
	 ZUT/EdOr7v3yg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3AD5F3B29D;
 Wed, 24 Feb 2021 11:11:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1614183095; bh=OS87Q/o2KE0t+qJBBpgvwRkwnuCgM87h00X0ufMEQJ8=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=HTBwTsTPoqzy94sWocfMtiDxn/U3QUk6Uzw7GDb10BdTPIc61/e3iBHHyIY86B71y
 b7tK2Gfm6WOmzULjjSqElPjM7w04/tAFZZh97qhh4lNuyKVeL2NxO7EFDc2dC4PLS+
 J5yvj2hiuxZlHs0hFFGKVeDxvXq8KcBVMYqa07T8gL/4xGSvNNSx15+kaUwYtNqTLp
 3vVa7Oh+QaaqHd9p+GsYkRJyfDWdqMV5wZcL4PWGdRbHBR2HROT1fIDULPl56b38df
 i9wr81TBx/AzZj+pA3nSteAUB0N3CTpLJy0SJsyNOFZxuCHfMX5z1nxOWJh8uloUvc
 JUnXIEMkOfjXg==
To: Taraldsen Erik <erik.taraldsen@telenor.no>, Nils Andreas Svee
 <me@lochnair.net>, Dave Taht <dave.taht@gmail.com>, bloat
 <bloat@lists.bufferbloat.net>, cerowrt-devel
 <cerowrt-devel@lists.bufferbloat.net>, Make-Wifi-fast
 <make-wifi-fast@lists.bufferbloat.net>, Toke =?utf-8?Q?H=C3=B8iland-J?=
 =?utf-8?Q?=C3=B8rgensen?= via Cake <cake@lists.bufferbloat.net>
In-Reply-To: <2f30c201fce345658df9f2a5090745cf@telenor.no>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
 <2f30c201fce345658df9f2a5090745cf@telenor.no>
Date: Wed, 24 Feb 2021 17:11:33 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87wnux30p6.fsf@toke.dk>
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

VGFyYWxkc2VuIEVyaWsgPGVyaWsudGFyYWxkc2VuQHRlbGVub3Iubm8+IHdyaXRlczoKCj4gRGlz
Y2xhbWVyOiBJJ20gd29ya2luZyBvbiB0aGUgRml4ZWQgV2lyZWxlc3MgcHJvZHVjdHMgZm9yIFRl
bGVub3IKPiAoWnl4ZWwgTlI3MTAxIG91dGRvb3Igd2FsbCBtb3VudGVkIHVuaXQpLiBOb3QgdGhl
IE1vYmlsZSBCcm9hZGJhbmQKPiBwcm9kdWN0cy4gV2UgYXJlIHdvcmtpbmcgd2l0aCBaeXhlbCBh
bmQgUXVhbGNvbSB0byB0cnkgYW5kIGltcGxlbWVudAo+IGFuIHVwc3RyZWFtIHF1ZXVlIHdoaWNo
IGFkYXB0cyB0byBhdmFpbGFibGUgcmFkaW8gcmVzb3VyY2VzLiBUbyBtdWNoCj4gTkRBIHNvIGNh
bid0IHJlYWxseSBkaXNjbG9zZSBhbnl0aGluZyB1c2VmdWwuIExldHMganVzdCBzYXkgd2UgYXJl
Cj4gYXdhcmUgb2YgdGhlIGlzc3VlcyBhbmQgYXJlIGFjdGl2ZWx5IHdvcmtpbmcgdG8gdHJ5IGFu
ZCBpbXByb3ZlIHRoZQo+IHNpdHVhdGlvbiAtIGJ1dCBkb24ndCBob2xkIHlvdXIgYnJlYXRoIGZv
ciBhIHNvbGx1dGlvbi4KPgo+IFdoYXQgc29ydCBvZiBIVyBhcmUgeW91IHJ1bm5pbmcgeW91ciBM
VEUgb24/Cj4KPiBEbyB5b3UgaGF2ZSBhIHN1YnNjcmlwdGlvbiB3aXRoIHJhdGUgbGltaXRhdGlv
bnM/IFRoZSBQR1cgKHJvdXRlcgo+IHdoaWNoIGVuZm9yY2VzIHRoZSBsaW1pdCkgaXMgYSBsb3Qg
bW9yZSBsYXRlbmN5IGZyaWVuZGx5IHRoYW4gaWYgeW91Cj4gYXJlIHJhZGlvIGxpbWl0ZWQuIFNv
IGl0IG1heSBiZSBiZW5lZmljaWFsIHRvIGhhdmUgYSAic2xvdyIKPiBzdWJzY3JpcHRpb24gcmF0
aGVyIHRoYW4gImZyZWUgc3BlZWQiIHRoZW4gaXQgY29tZXMgdG8gbGF0ZW5jeS4gU2xvdwo+IG1l
YW5pbmcgbG93ZXIgc3Vic2NycHRpb24gcmF0ZSB0aGFuIHJhZGlvIHJhdGUuCgpBaCwgdGhpcyBp
cyBsb3ZlbHkhICJIb3cgZG8gSSBnZXQgbXkgaW50ZXJuZXQgdG8gYmUgZmFzdGVyPyIgIkp1c3Qg
YnV5IGEKc2xvd2VyIGNvbm5lY3Rpb24hIiA6RAoKLVRva2UKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5i
dWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2Fr
ZQo=

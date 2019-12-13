Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E2211E561
	for <lists+cake@lfdr.de>; Fri, 13 Dec 2019 15:13:38 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CCC713CB4C;
	Fri, 13 Dec 2019 09:13:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1576246416;
	bh=sYbLockTOO3koDgi+VjVEMatNmB1C1eTwx6swJCfrRY=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kK83gYvzMGPrrOitj1GkLNkVkJt9KiZEIyR+LgUgQCFfvTgp4O+39k/oJxlY+PgiE
	 jYkfVldV7JM20plwh66P/JtUDi7PoLaOb3g0LB+xNs8lPkPW9S+7hYzahV4VUUvY4b
	 X2dDauatPXw9B8mYyFzL4F6gE3r6WR8TTcSGFFtDO2wYHRT6oIMmBq+bQV3if1gDBS
	 ljTsQC8eq9qj2XHpkMAqE8Os03+NnwIjF3yz2hovZqXtnaeEAREvJugYC4pQOulMaI
	 GVkZyzdLd8T0yPpUyYPw/WlM4iZhN32hN+wbHpwJVMrYbRWY77B6XNUrW8UWs5KB+G
	 VaRN4fTfpPltg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from vps.slashdirt.org (vps.slashdirt.org [144.91.108.218])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 652583CB47
 for <cake@lists.bufferbloat.net>; Fri, 13 Dec 2019 09:13:35 -0500 (EST)
Received: from mail.zigoo.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 7C094600A7;
 Fri, 13 Dec 2019 15:13:34 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 7C094600A7
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1576246414; bh=jy/sN68aDdToMT1/u6WKquVK6/twED1YIsBEqmltJ5g=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=FJyGar/2B3WvxRRjfR1GNyeBGY4T90FqF528n2WXglJ5rJU/tmUdhbxRBiY2KmzOC
 OBIWYzoVeNqrqvqgw0COyfrj+QQDMW00c24TKDtIh48bJFn0NEG2jnqtiUzjAKEdYA
 YLch1CyOZ6AHDt9uzHJiFONW0P03UqExeClh1DLo=
MIME-Version: 1.0
Date: Fri, 13 Dec 2019 14:13:34 +0000
X-Mailer: RainLoop/1.13.0
From: "Thibaut" <hacks@slashdirt.org>
Message-ID: <5ec3c68f6c3ce1d2614104655e6ed15a@slashdirt.org>
To: "Jonathan Morton" <chromatix99@gmail.com>
In-Reply-To: <8FC615C8-4885-4F0A-B2EE-934DC4E806E8@gmail.com>
References: <8FC615C8-4885-4F0A-B2EE-934DC4E806E8@gmail.com>
 <1d359153abfc413b4f61c647437427d6@slashdirt.org>
Subject: Re: [Cake] Trouble with CAKE
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgSm9uYXRoYW4sCgpUaGFua3MgZm9yIHRoZSBxdWljayByZXBseS4KCkRlY2VtYmVyIDEzLCAy
MDE5IDM6MDIgUE0sICJKb25hdGhhbiBNb3J0b24iIDxjaHJvbWF0aXg5OUBnbWFpbC5jb20+IHdy
b3RlOgoKPj4gT24gMTMgRGVjLCAyMDE5LCBhdCAzOjQzIHBtLCBUaGliYXV0IDxoYWNrc0BzbGFz
aGRpcnQub3JnPiB3cm90ZToKPj4gCj4+IEkndmUgYmVlbiB1c2luZyBDQUtFIG9uIG15IERTTC1j
b25uZWN0ZWQgTGludXggcm91dGVyIGZvciB0aGUgbGFzdCBmZXcgeWVhcnMsIGFuZCBpdCB3b3Jr
ZWQgd2VsbAo+PiB1bnRpbCB2ZXJ5IHJlY2VudGx5LiBUd28gdGhpbmdzIGhhcHBlbmVkOgo+PiAK
Pj4gMSkgTXkgSVNQIChGcmVuY2ggIkZyZWUiKSBzd2l0Y2hlZCBteSBEU0xBTSB0byBuYXRpdmUg
SVB2Niwgd2hpY2ggZm9yIHRoZSB0aW1lIGJlaW5nIG1lYW5zIHRoYXQgSQo+PiBoYWQgdG8gcmV2
ZXJ0IHRvIHVzaW5nIHRoZWlyIHNldC10b3AtYm94IChGcmVlYm94KSBpbnN0ZWFkIG9mIHRoZSBW
RFNMMiBtb2RlbCBJIHdhcyB1c2luZyBpbiBicmlkZ2UKPj4gbW9kZSB1bnRpbCB0aGVuIChDQUtF
IGluICJicmlkZ2VkLXB0bSBldGhlci12bGFuIiBtb2RlKQo+PiAyKSBJIHVwZ3JhZGVkIG15IHJv
dXRlciBmcm9tIDMuMTYgKERldnVhbiBKZXNzaWUpIHRvIDQuOSAoRGV2dWFuIEFTQ0lJKQo+PiAK
Pj4gU2luY2UgdGhlbiwgbm8gbWF0dGVyIHdoaWNoIHNldHVwIEkgdXNlLCBJIGNhbm5vdCBnZXQg
Q0FLRSB0byB3b3JrIGFzIGludGVuZGVkLiBTcGVjaWZpY2FsbHksIGFueQo+PiBsb25nLXN0YW5k
aW5nIGJlc3QgZWZmb3J0IHN0cmVhbSAoc3VjaCBhcyBhIHJlbW90ZSByc3luYykgd2lsbCBiZSB0
aHJvdHRsZWQgdG8gYSBuZWFyIGdyaW5kaW5nIGhhbHQKPj4gZXZlbiB0aG91Z2ggdGhlcmUgaXMg
bm8gb3RoZXIgc2lnbmlmaWNhbnQgdHJhZmZpYyBnb2luZyBvbi4gU29tZSByYW5kb20gYnVyc3Rz
IGNhbiBiZSBzZWVuICh3aXRoCj4+IGlmdG9wKSBidXQgbm90aGluZyBldmVyIGdldHMgY2xvc2Ug
dG8gaGFsZiB0aGUgbWF4aW11bSBiYW5kd2lkdGguIFRoaXMgaXMgbm90YWJseSBhZmZlY3Rpbmcg
dGhlCj4+IE9wZW5XUlQgYnVpbGRib3RzIEknbSBob3N0aW5nIG9uIHRoaXMgbGluay4KPiAKPiBP
bGQga2VybmVscywgaW5jbHVkaW5nIDQuOSBzZXJpZXMsIHRlbmQgdG8gYmUgbW9yZSBwcm9ibGVt
YXRpYyB0aGFuIHRoZSBsYXRlc3Qgb25lcy4gSWYgeW91IGNhbiwgSQo+IHdvdWxkIHJlY29tbWVu
ZCB1cGRhdGluZyB0byBhIDUueCBzZXJpZXMga2VybmVsLCBpbiB3aGljaCBDYWtlIGlzIGFuIHVw
c3RyZWFtIGZlYXR1cmUuIEkgd29uJ3QKPiBwcmVzdW1lIHRvIGd1ZXNzIGhvdyBiZXN0IHRvIGFj
aGlldmUgdGhhdCB3aXRoIHlvdXIgZGlzdHJvLgoKSW5kZWVkLiBHaXZlbiB0aGlzIGlzIGEgcmVs
YXRpdmVseSAic2VjdXJpdHktc2Vuc2l0aXZlIiBzZXR1cCwgSSdkIHJhdGhlciBub3QgZGl2ZXJn
ZSBmcm9tIGRpc3RybyAob3IgcnVuICJ1bnN0YWJsZSIgZm9yIHRoYXQgbWF0dGVyKS4KU3RpbGws
IENBS0Ugd2FzIHByZXZpb3VzbHkgd29ya2luZyBKdXN0IEZpbmUoVE0pIG9uIGFuIGV2ZW4gb2xk
ZXIga2VybmVsOiAzLjE2Li4uCiAKPiBUaGUgZ29vZCBuZXdzIGlzIHRoYXQgRnJlZS5mciBpcyBh
bW9uZyB0aGUgcmVsYXRpdmVseSBmZXcgSVNQcyB3aG8gaGF2ZSBhY3RpdmVseSB0YWNrbGVkCj4g
YnVmZmVyYmxvYXQgdGhlbXNlbHZlcy4gQXMgYSB3b3JrYXJvdW5kIHdoaWxlIHlvdSBzb3J0IHRo
aXMgb3V0LCB5b3Ugc2hvdWxkIGdldCByZWFzb25hYmxlCj4gcGVyZm9ybWFuY2UganVzdCBmcm9t
IHVzaW5nIHRoZSBGcmVlYm94IGRpcmVjdGx5LgoKV2VsbCwgcHJvYmFibHkgbm90IHdpdGggdGhl
IGFudGlxdWF0ZWQgRnJlZWJveCBtb2RlbCBJIGhhdmU6IGEgdjUuIEkgd291bGQgYWxzbyB2ZXJ5
IG11Y2ggbGlrZSB0byBkcm9wIGl0IHRvIGJlIGFibGUgdG8gY29ubmVjdCBhZ2FpbiBhdCBWRFNM
MiBzcGVlZHMgKEkgd2FzIGdldHRpbmcgNTAvMTAgaW5zdGVhZCBvZiB0aGUgY3VycmVudCAyMC8x
KSBhbmQgc2F2ZSA3NSUgb24gcG93ZXIgdXNhZ2UgKHRoZSBGcmVlYm94IGlzIHBvd2VyIGh1bmdy
eSkuIEJ1dCB0aGF0J3Mgb3J0aG9nb25hbCB0byB0aGUgY3VycmVudCBpc3N1ZSA6KQoKV2hhdCBJ
IGNvdWxkIGRvIGZvciBhIHRlc3QgaXMgdGVtcG9yYXJpbHkgcmV2ZXJ0IGJhY2sgdG8gdGhlIHBy
ZXZpb3VzIDMuMTYvSmVzc2llIHNldHVwIChJIGhhdmUga2VwdCBhIGJhY2t1cCkgYW5kIHNlZSBp
ZiBJIGNhbiByZXByb2R1Y2UgdGhlIHNhbWUgYmVoYXZpb3IgdGhlcmUsIGluIHdoaWNoIGNhc2Ug
SSB0aGluayB0aGF0IHdvdWxkIGRlZmluaXRlbHkgcG9pbnQgaW4gdGhlIGdlbmVyYWwgZGlyZWN0
aW9uIG9mIGEgYmFkIGludGVyYWN0aW9uIHdpdGggdGhlIEZyZWVib3ggdHVubmVsPwoKQmVzdCwK
VGhpYmF1dApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpD
YWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

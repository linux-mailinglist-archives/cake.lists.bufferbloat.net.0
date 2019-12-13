Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4922E11EDF4
	for <lists+cake@lfdr.de>; Fri, 13 Dec 2019 23:39:38 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id BA1DE3CB4C;
	Fri, 13 Dec 2019 17:39:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1576276776;
	bh=PJjBCzwU2wQacX4nWYOZVB0uNeSbbpWiUYjYSK85Bns=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=otvh4e/ojvIp/c6HoWIgFW0lXi2G9+3oEYaAufCayVYzzgVoQX2N2Pha/Wh3qNT78
	 kJKKcZxsDgAqhxVAPpVMumEr7Dk//KyzQYA+qC0tTU8W0vfI5JRFp2WTOsTJnz6FcD
	 IrBDfAGApcKbstJOXMbBfRonJFcGYxYEaqemHKVE5SEc/r4QxSjWeOu8zHQopdYuvw
	 vq4uUazJtU1b6MrQLJccwAWlF5hVBezGt1NsJN7BGGCIVF8zj8xrVJ4qw5NY0cIqeg
	 R4/qbToy8bASnz9sESac5LhG1N3dOTvArFL/vd5UdqyiqVI0ZRumUPg4/Ck2XtySS3
	 z1gCeNTkXBlQw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from vps.slashdirt.org (vps.slashdirt.org [144.91.108.218])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id AA2223CB48
 for <cake@lists.bufferbloat.net>; Fri, 13 Dec 2019 17:39:34 -0500 (EST)
Received: from tama.lan (unknown [37.172.203.59])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 5E2FE603EB;
 Fri, 13 Dec 2019 23:39:33 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 5E2FE603EB
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1576276773; bh=9Sfz1xxPdfjNufGosyQB0qfYBwrtwy93mnxINB67w8s=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=rvNkfp/y5csz8YWz1mgqZttoUExKU0UJi7JO9Oi1WA5F/4GVSDQkP+XYB3BTwkjuH
 5a41lB9at4O59nMt68sdMCf5JgRyJbLgqNHk0Ubo4Tlntfd/TOEHmEYGbpMoCw+QU0
 9cu4ZqFslFy0GH0mBm9iJCSv1SwRUOu+V2ywMTaU=
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Thibaut <hacks@slashdirt.org>
In-Reply-To: <8FC615C8-4885-4F0A-B2EE-934DC4E806E8@gmail.com>
Date: Fri, 13 Dec 2019 23:39:32 +0100
Message-Id: <6E9587F7-C208-4568-8429-AEBA9E694E24@slashdirt.org>
References: <1d359153abfc413b4f61c647437427d6@slashdirt.org>
 <8FC615C8-4885-4F0A-B2EE-934DC4E806E8@gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
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

SGkgSm9uYXRoYW4sCgo+IE9uIDEzIERlYyAyMDE5LCBhdCAxNTowMiwgSm9uYXRoYW4gTW9ydG9u
IDxjaHJvbWF0aXg5OUBnbWFpbC5jb20+IHdyb3RlOgo+IAo+PiBPbiAxMyBEZWMsIDIwMTksIGF0
IDM6NDMgcG0sIFRoaWJhdXQgPGhhY2tzQHNsYXNoZGlydC5vcmc+IHdyb3RlOgo+PiAKPj4gSSd2
ZSBiZWVuIHVzaW5nIENBS0Ugb24gbXkgRFNMLWNvbm5lY3RlZCBMaW51eCByb3V0ZXIgZm9yIHRo
ZSBsYXN0IGZldyB5ZWFycywgYW5kIGl0IHdvcmtlZCB3ZWxsIHVudGlsIHZlcnkgcmVjZW50bHku
IFR3byB0aGluZ3MgaGFwcGVuZWQ6Cj4+IAo+PiAxKSBNeSBJU1AgKEZyZW5jaCAiRnJlZSIpIHN3
aXRjaGVkIG15IERTTEFNIHRvIG5hdGl2ZSBJUHY2LCB3aGljaCBmb3IgdGhlIHRpbWUgYmVpbmcg
bWVhbnMgdGhhdCBJIGhhZCB0byByZXZlcnQgdG8gdXNpbmcgdGhlaXIgc2V0LXRvcC1ib3ggKEZy
ZWVib3gpIGluc3RlYWQgb2YgdGhlIFZEU0wyIG1vZGVsIEkgd2FzIHVzaW5nIGluIGJyaWRnZSBt
b2RlIHVudGlsIHRoZW4gKENBS0UgaW4gImJyaWRnZWQtcHRtIGV0aGVyLXZsYW4iIG1vZGUpCj4+
IDIpIEkgdXBncmFkZWQgbXkgcm91dGVyIGZyb20gMy4xNiAoRGV2dWFuIEplc3NpZSkgdG8gNC45
IChEZXZ1YW4gQVNDSUkpCj4+IAo+PiBTaW5jZSB0aGVuLCBubyBtYXR0ZXIgd2hpY2ggc2V0dXAg
SSB1c2UsIEkgY2Fubm90IGdldCBDQUtFIHRvIHdvcmsgYXMgaW50ZW5kZWQuIFNwZWNpZmljYWxs
eSwgYW55IGxvbmctc3RhbmRpbmcgYmVzdCBlZmZvcnQgc3RyZWFtIChzdWNoIGFzIGEgcmVtb3Rl
IHJzeW5jKSB3aWxsIGJlIHRocm90dGxlZCB0byBhIG5lYXIgZ3JpbmRpbmcgaGFsdCBldmVuIHRo
b3VnaCB0aGVyZSBpcyBubyBvdGhlciBzaWduaWZpY2FudCB0cmFmZmljIGdvaW5nIG9uLiBTb21l
IHJhbmRvbSBidXJzdHMgY2FuIGJlIHNlZW4gKHdpdGggaWZ0b3ApIGJ1dCBub3RoaW5nIGV2ZXIg
Z2V0cyBjbG9zZSB0byBoYWxmIHRoZSBtYXhpbXVtIGJhbmR3aWR0aC4gVGhpcyBpcyBub3RhYmx5
IGFmZmVjdGluZyB0aGUgT3BlbldSVCBidWlsZGJvdHMgSSdtIGhvc3Rpbmcgb24gdGhpcyBsaW5r
Lgo+IAo+IE9sZCBrZXJuZWxzLCBpbmNsdWRpbmcgNC45IHNlcmllcywgdGVuZCB0byBiZSBtb3Jl
IHByb2JsZW1hdGljIHRoYW4gdGhlIGxhdGVzdCBvbmVzLiAgSWYgeW91IGNhbiwgSSB3b3VsZCBy
ZWNvbW1lbmQgdXBkYXRpbmcgdG8gYSA1Lnggc2VyaWVzIGtlcm5lbCwgaW4gd2hpY2ggQ2FrZSBp
cyBhbiB1cHN0cmVhbSBmZWF0dXJlLiAgSSB3b24ndCBwcmVzdW1lIHRvIGd1ZXNzIGhvdyBiZXN0
IHRvIGFjaGlldmUgdGhhdCB3aXRoIHlvdXIgZGlzdHJvLgoKSeKAmW0gbm93IGFibGUgdG8gY29u
ZmlybSB0aGlzIGxvb2tzIGxpa2UgYSByZWdyZXNzaW9uOiBJIHdhcyBhYmxlIHRvIHJldHJpZXZl
IGFuZCBidWlsZCB0aGUgbGFzdCBrbm93biB3b3JraW5nIHZlcnNpb24gb2YgQ0FLRSBvbiBteSBy
b3V0ZXIsIGFuZCB3aXRoIGFuIGFkanVzdGVkIG92ZXJoZWFkIG9mIDQ4IGF0bSAoY29uZmlybWVk
IHRoYW5rcyB0byB0aGUgaGVscCBvZiBTdGVwaGFuKSwgaXQgd29ya3MgbGlrZSBhIGNoYXJtLiBD
dXJyZW50IEhFQUQgZG9lc27igJl0LCB3aXRoIHRoZSBleGFjdCBzYW1lIHBhcmFtZXRlcnMuCgpJ
4oCZbGwgdHJ5IHRvIGJpc2VjdCwgc2VlIGlmIEkgY2FuIGlzb2xhdGUgdGhlIGN1bHByaXQuCgpI
VEgsClRoaWJhdXQKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9s
aXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

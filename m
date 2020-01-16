Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A8C13DA6E
	for <lists+cake@lfdr.de>; Thu, 16 Jan 2020 13:48:12 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id AD46F3CB38;
	Thu, 16 Jan 2020 07:48:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1579178889;
	bh=b6RHqiXD1YQLyqhcUf5LDKBHzn7EoK56w3WPaiY2I6Y=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eqMV3UozlA5zjor2IXzdGYwEj0NgcNstxE8Qm903Erlzq1OauuLa6KWxv1lAh5nt1
	 avdEmjovS17dUObpt8/Khh2OThri8uFTcVPkbmByjFt1cOYHh7QeVQAkN9/8QbMUuM
	 Xdl8hKDDCJ+Bd6VeHim7jmwGsMMIEChJf73zyPJlxHqARUEH3uQ1So5UdlEfIk9+Oj
	 1qG96/tem9Pftekrd5BgQQjGiWInMvmbT5YyG1Tnccx8DEi1okdQABFIPab2Dkztkz
	 hhZkdWsu9CtMNeV/7myHinRlRdPj6TKotxrXgrkgi5EFUIJhSC5Hp79T6tWrSIL91i
	 wgwP4BTjEeTpw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 237133B2A4
 for <cake@lists.bufferbloat.net>; Thu, 16 Jan 2020 07:48:09 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=8BWhv5XqVjyUqRNK8laGmZTkph0L+g3khAoqdy1/5J8=; 
 b=oCVcvLJM2HvimLfs3COsDlWWKnJ23BXUzNjteWgGJ5GLYg6i5XuInDqk/vYh0SrVQc9oJjg7dnPhR77TtsFgWGNnpzU//gcDlZ9fuv4cYhFT0918WnTurlqLtWsozVAo2O09Hl2ler/dD4gXJsgApQdvJ0/IPNwZaN3Q12Fc360=;
To: cake@lists.bufferbloat.net
References: <1578730684729@kroah.com>
 <CAA93jw6Hb0fHbqOMfc_6WvjSu2=JQ1xx__NvuUQEM=s6XBTrGA@mail.gmail.com>
 <13E6E54B-BCF8-44C7-9E0F-55127DB9A42C@darbyshire-bryant.me.uk>
 <CAA93jw5FGuyFhkej_V7wQXgGx6+dwve7fVj6+X0OZcO68GEhYA@mail.gmail.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <2c75f117-30de-8d79-1637-f9a155c38e7a@newmedia-net.de>
Date: Thu, 16 Jan 2020 13:47:58 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CAA93jw5FGuyFhkej_V7wQXgGx6+dwve7fVj6+X0OZcO68GEhYA@mail.gmail.com>
X-Received: from [2a01:7700:8040:300:853d:6c61:95c4:6bb4]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1is4XF-0000Xq-P1
 for cake@lists.bufferbloat.net; Thu, 16 Jan 2020 13:46:10 +0100
Subject: Re: [Cake] Patch "sch_cake: avoid possible divide by zero in
 cake_enqueue()" has been added to the 4.19-stable tree
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

ZGQtd3J0IGhhcyBpdCBhbHJlYWR5IDotKQoKQW0gMTEuMDEuMjAyMCB1bSAyMjozOCBzY2hyaWVi
IERhdmUgVGFodDoKPiBUaGFuayB5b3UgZm9yIGFsbCB0aGUgZ3ltbmFzdGljcyB0byBrZWVwIGNh
a2UgYWxpdmUgaW4gb3BlbndydC4KPgo+IEkgd291bGQgc3RpbGwgbGlrZSB0aGVyZSB0byBiZSBh
IHNjZSBicmFuY2ggb2YgdGhlIG91dCBvZiB0cmVlIHdvcmsKPiB0aGF0IEkgY291bGQgcG9pbnQg
cGVvcGxlIGF0Cj4gaW4gbXkgbGNhIHRhbGsgdGhpcyB3ZWVrLCBidXQgSSB1bmRlcnN0YW5kIHRo
YXQncyBpbmNyZWFzaW5nbHkgZGlmZmljdWx0Lgo+Cj4gT24gU2F0LCBKYW4gMTEsIDIwMjAgYXQg
MToyMCBQTSBLZXZpbiAnbGRpcicgRGFyYnlzaGlyZS1CcnlhbnQKPiA8bGRpckBkYXJieXNoaXJl
LWJyeWFudC5tZS51az4gd3JvdGU6Cj4+Cj4+Cj4+PiBPbiAxMSBKYW4gMjAyMCwgYXQgMjA6NDAs
IERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4+Pgo+Pj4gZGlkIHRoaXMg
bWFrZSBpdCBpbnRvIG9wZW53cnQgYWxyZWFkeT8KPj4gSXTigJlzIGNvbXBsaWNhdGVkIGFuZCBp
dCBkZXBlbmRzIHdoYXQgeW91IG1lYW4gYnkgb3BlbndydC4KPj4KPj4gRmlyc3Qgb2ZmLCB0aGUg
Zml4IHJlbGF0ZXMgdG8gYXV0by1iYW5kd2l0aCBtb2RlIG9yIHdoYXRldmVyIGl04oCZcyBjYWxs
ZWQgYW5kIEkgZG9u4oCZdCB0aGluayBtYW55IHBlb3BsZSB1c2UgaXQuICBOb25ldGhlbGVzczoK
Pj4KPj4gSXMgdGhlIGZpeCBpbiDigJluZXQtbmV4dOKAmTogeWVzCj4+IElzIHRoZSBmaXggaW4g
NC4xOSBzdGFibGU6IEluIHRoZSBxdWV1ZSBmb3IgNC4xOS45NQo+Pgo+PiBJcyBvcGVud3J0IG9u
IDQuMTkuOTU6IE5vCj4+IERvZXMgb3BlbndydCB1c2UgdGhlIGluLXRyZWUgdmVyc2lvbiBvZiBD
YWtlPzogTm8KPj4KPj4gSXMgdGhlIGZpeCBpbiB0aGUgT3V0LU9mLVRyZWUgY2FrZSBnaXQgcmVw
bzogWWVzCj4+Cj4+IEhhcyB0aGUgb3BlbndydCBDQUtFIHBhY2thZ2UgYmVlbiBidW1wZWQgdG8g
Zm9sbG93IGNha2UgZ2l0IHJlcG8/OiBtYXN0ZXIsIHllcywgYXMgb2YgMjAyMC8wMS8xMSAoZWFy
bGllciB0b2RheSkKPj4KPj4gT3BlbldydCAxOS4wNyBoYXMganVzdCBiZWVuIHJlbGVhc2VkLCBp
dHMgY29uY2VwdCBvZiBjYWtlIHBhY2thZ2UgaGFzIG5vdCBiZWVuIGJ1bXBlZC4gIE5laXRoZXIg
aGFzIDE4LjA2Lgo+Pgo+Pgo+PiBJdCBpcyB3b3J0aCBub3RpbmcgdGhhdCB1bnRpbCB5ZXN0ZXJk
YXkvcmVjZW50bHkgdGhlIG91dCBvZiB0cmVlIGNha2UgcmVwbyBoYWQgcmVzaWR1ZSBpbiBpdCBm
cm9tIHNvbWUgZXhwZXJpbWVudGFsIHN0dWZmIChTQ0UgJiB1cGRhdGluZyBjb25udHJhY2sgbWFy
a3MpIGFuZCBkaWQgbm90IHJlcHJlc2VudCB1cHN0cmVhbSBpbi10cmVlIENBS0UgYW55d2F5LiAg
VGhhdCBzaXR1YXRpb24gd2FzIGNvcnJlY3RlZCBBRkFJSyBjb21wbGV0ZWx5IHRoaXMgbW9ybmlu
Zy4KPj4KPj4gSWRlYWxseSBJIHdvdWxkIGxpa2Ugb3BlbndydCB0byB1c2UgdGhlIGluLXRyZWUg
Q0FLRSwgd2l0aCDigJhmZWF0dXJlIGJhY2twb3J0c+KAmSBmcm9tIGxhdGVyIGtlcm5lbHMgYXMg
YmFja3BvcnQgcGF0Y2hlcy4gIFVuZm9ydHVuYXRlbHkgc29tZSB0YXJnZXRzIGluIG9wZW53cnQg
YXJlIHN0aWxsIG9uIDQuMTQga2VybmVscyBzbyB0aGVyZSBpcyBubyBpbi10cmVlIENBS0UgdG8g
dXNlLiAgRHJvcHBpbmcgQ0FLRSBmcm9tIHByZSA0LjE5IGtlcm5lbHMgY2F1c2VkIGEgYml0IG9m
IGFuIG91dGNyeSB3aGVuIEkgZGlkIGl0LCBzbyB0aGUgbmV4dCBpZGVhIHdhcyB0byBoYXZlIGEg
Y2hvaWNlIG9mIGNha2Uga2VybmVsIG1vZHVsZSBmb3IgSzQuMTkgdGFyZ2V0cywgaW4tdHJlZSAm
IG91dC1vZi10cmVlIENBS0UuICBVbmZvcnR1bmF0ZWx5IHRoYXQgZXhwb3NlZCBhIHdlYWtuZXNz
IGluIHBhY2thZ2UgZGVwZW5kZW5jeSBzZWxlY3Rpb24sIHNvIHRoYXQgaWRlYSBoYXNu4oCZdCBm
bG93biBlaXRoZXIuICBJ4oCZbSBhZnJhaWQgZW50aHVzaWFzbSBsZXZlbHMgdGhlbiBkcm9wcGVk
Lgo+Pgo+Pgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlz
dHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

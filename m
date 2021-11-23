Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6E245A6C9
	for <lists+cake@lfdr.de>; Tue, 23 Nov 2021 16:49:39 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id BA6483CB39;
	Tue, 23 Nov 2021 10:49:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1637682577;
	bh=oYDioabHNeOmpJ8FG/CIzf/kuCumaahPchDiJudlNE4=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=jzxS5xzZB6uStTYHJpDF6biOTtQtRfsyaGm8EIZGNo89yGOB7cP25M/wmxHzUDOdb
	 ut1NbptWyBMYs+VBBj4sZnhgiHZ3UnjdwQ1WdC9nWcFsRnM1KVs5KnFubXq1wonmSW
	 yANsQAx6SJtYZixlLJS9n/KqQ2lAiNyrKetdFhXw0R0wOYcqF71yAd0Yu6SRqJx+Db
	 zvVD1ch/514K1i/RK2VfQGwq+QoDaGQvNNH2qIP2GG3+68OODD5YGBvrVos4J9qI+e
	 YQ8usaTzaN9Llv2efcLjtJHpNEhquibZ03Dc+HFaXF0d0TskaXdKzCmDM4GhqI1trm
	 QGRP62eYYrA2Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B7B603B29D
 for <cake@lists.bufferbloat.net>; Tue, 23 Nov 2021 10:49:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1637682572; bh=vBEHrkF6DWvC06vXFXeq+LzagUhxzJGQkr+wCuuKQY0=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=BwSaNb3zoO/VmI/yVG6Sfmr7YczqyXfGUqhdYijH+mnIrZb6u+F0CQJO7uWj+3SZg
 QeajNkQc3I5FQhp5Hit5Oa5BBSNE85k/IPbR/5Lz0ghi/P0J6f6nQCiBgyQiq+fUq1
 GZwvm53B1JsoNbXWVwhR+94JPKJQcebCWRmQTufOoPubaoLhvib3svN26909eG4+NZ
 +AEYEAcoMG9cxwSCht1bAGc7VaxlNxvyJkxKfcZj8jRPXyO7cG1IhhGdckyeiwym2X
 6yrZf7Hbd90KdXN8ZoP3qTzyKvcPU20tp4yAxbNX7Ylx+P5+vZbMEGDfncr/i9004A
 v8Mhp2FZQ+/WQ==
To: Dave Taht <dave.taht@gmail.com>
In-Reply-To: <CAA93jw7vcsH5XscyC_z1YCQ2-HD0X2dtmNSF6jQwj5Ygzqe46g@mail.gmail.com>
References: <CAA93jw4hrZmUma-xE6stRQZkyo84m4wYV+mbK6AoPeAJ1y0nqg@mail.gmail.com>
 <67BC6CC2-F088-4C0D-8433-A09F4AC452FE@gmx.de>
 <CAA93jw61GaPrLNmZn+ZuaA59UUo7SSb0DSSSrLH7rVSRqj92Xw@mail.gmail.com>
 <CAA93jw6HbLjK8JRbq23cnmq5=Q2uQ6aUYRF81LjAiEx3HK5Dxg@mail.gmail.com>
 <BFE5D61E-ED29-4AA3-816C-A8F0947EFDD7@gmx.de> <87czmrcg0f.fsf@toke.dk>
 <CAA93jw7vcsH5XscyC_z1YCQ2-HD0X2dtmNSF6jQwj5Ygzqe46g@mail.gmail.com>
Date: Tue, 23 Nov 2021 16:49:31 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <874k82dg8k.fsf@toke.dk>
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

RGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cml0ZXM6Cgo+IE9uIFR1ZSwgTm92IDIz
LCAyMDIxIGF0IDI6MzkgQU0gVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHRva2UuZGs+
IHdyb3RlOgo+Pgo+PiBTZWJhc3RpYW4gTW9lbGxlciA8bW9lbGxlcjBAZ214LmRlPiB3cml0ZXM6
Cj4+Cj4+ID4gSGkgRGF2ZSwKPj4gPgo+PiA+IE9uIDIzIE5vdmVtYmVyIDIwMjEgMDg6MzI6MDYg
Q0VULCBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+IHdyb3RlOgo+PiA+PlRoZSBjb250
ZXh0IG9mIG15IHF1ZXN0aW9uIGlzIGJhc2ljYWxseSB0aGlzOgo+PiA+Pgo+PiA+PklzIGNha2Ug
YmFrZWQ/IElzIGl0IGRvbmU/Cj4+ID4KPj4gPiBIb3cgYWJvdXQgcGVyIE1BQyBhZGRyZXNzIGZh
aXJuZXNzICh1c2VmdWwgZm9yIElTUHMgYW5kIHRvIHRyZWF0Cj4+ID4gSVB2NC82IGVxdWFsbHkp
Pwo+PiA+Cj4+ID4gSG93IGFib3V0IGNvbmZpZ3VyYWJsZSBudW1iZXIgb2YgcXVldWVzIChhZ2Fp
biBoZWxwZnVsIGZvciBJU1BzKT8KPj4KPj4gRldJVyBJIGRvbid0IHRoaW5rIENBS0UgaXMgdGhl
IHJpZ2h0IHRoaW5nIGZvciBJU1BzLCBleGNlcHQgaW4gYQo+PiBkZXBsb3ltZW50IHdoZXJlIHRo
ZXJlJ3MgYSBzaW5nbGUgQ0FLRSBpbnN0YW5jZSBwZXIgY3VzdG9tZXIuIEZvcgo+PiBhbnl0aGlu
ZyBlbHNlIChpLmUuLCBhIHNpbmdsZSBzaGFwZXIgdGhhdCBoYW5kbGVzIG11bHRpcGxlIGN1c3Rv
bWVycyksCj4+IHlvdSByZWFsbHkgbmVlZCBoaWVyYXJjaGljYWwgcG9saWN5IGVuZm9yY2VtZW50
IGxpa2UgaW4gYSB0cmFkaXRpb25hbAo+PiBIVEIgY29uZmlndXJhdGlvbi4gQW5kIHJldHJvZml0
dGluZyB0aGlzIG9uIHRvcCBvZiBDQUtFIGlzIGdvaW5nIHRvCj4+IGNvbmZsaWN0IHdpdGggdGhl
IGV4aXN0aW5nIGZ1bmN0aW9uYWxpdHksIHNvIGl0IHByb2JhYmx5IGhhcyB0byBiZSBhCj4+IHNl
cGFyYXRlIHFkaXNjIGFueXdheS4KPgo+IFdoYXQgcHJvZ3Jlc3MgaGFzIGJlZW4gbWFkZSBvbiBi
cmVha2luZyB0aGUgSFRCIGxvY2tzIGluIHRoZSBsYXN0IGZldwo+IHllYXJzPwoKTm9uZS4gRG9u
J3Qgc2VlIHRoYXQgaGFwcGVuaW5nIGFueSB0aW1lIHNvb247IGp1c3QgdGhlIHNpbXBsZSBwZmlm
b19mYXN0CnFkaXNjIGlzIHVuY292ZXJpbmcgYWxsIGtpbmRzIG9mIGJ1Z3Mgd2hlbiBydW5uaW5n
IGluIGxvY2tsZXNzIG1vZGUuCgpKZXNwZXIgYmFzaWNhbGx5IHNvbHZlZCB0aGUgY29udGVudGlv
biBpc3N1ZSBieSBwYXJ0aXRpb25pbmcgdGhlIHRyYWZmaWMKYW5kIHJ1bm5pbmcgbXVsdGlwbGUg
aW5zdGFuY2VzOgpodHRwczovL2dpdGh1Yi5jb20veGRwLXByb2plY3QveGRwLWNwdW1hcC10YwoK
RG9lc24ndCB3b3JrIGZvciBiYW5kd2lkdGggc2hhcmluZyBhY3Jvc3MgaW5zdGFuY2VzLCB0aG91
Z2gsIHNvIGl0CnNvbHZlcyB0aGUgSVNQICJzZXBhcmF0ZSByYXRlcyBwZXIgY3VzdG9tZXIiIGNh
c2UsIGJ1dCBub3QgdGhlIENBS0UKInNoYXBlIGEgc2luZ2xlIGxpbmsiIGNhc2UuCgo+IEdpdmVu
IHRoZSBlbm9ybW91cyBudW1iZXIgb2YgaHcgdHgvcnggcXVldWVzIHdlIHNlZSB0b2RheSAoNjQr
IG9uCj4gMTBnYml0KSwgdHJ5aW5nIHRvIGNoYXJnZSBvZmYKPiBiYW5kd2lkdGggcGVyIHF1ZXVl
IGluIGEgY2FrZS1kZXJpdmVkIHNoYXBlciBhbmQgcHJvdGVjdGluZyB0aGUgbWVyZ2UKPiB3aXRo
IHJjdSBzZWVtZWQgcGxhdXNpYmxlLi4uCgpZZWFoLCB0aGF0IHdhcyB3aGF0IEkgd2FzIGdvaW5n
IHRvIHRyeSwgYnV0IGl0IHR1cm5lZCBvdXQgdG8gYmUKZGVjaWRlZGx5IG5vbi10cml2aWFsIHRv
IG1ha2Ugc2NoX2Nha2UgaXRzZWxmIG1xLWF3YXJlLCBzbyBJIGdhdmUgdXAuIE15CmhvcGUgaXMg
dGhhdCB0aGlzIHdpbGwgYmUgcG9zc2libGUgb25jZSB3ZSBnZXQgc2NoX2JwZiwgc28gd2UgY2Fu
IGp1c3QKaGF2ZSBzZXBhcmF0ZSBpbnN0YW5jZXMgYnV0IHRoZXkgY2FuIHNoYXJlIGEgc2luZ2xl
IGF0b21pYyB2YXIgZm9yIHRoZQpiYW5kd2lkdGggc3luYy4uLgoKLVRva2UKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vY2FrZQo=

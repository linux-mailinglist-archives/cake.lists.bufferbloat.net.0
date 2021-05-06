Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 67417375D00
	for <lists+cake@lfdr.de>; Thu,  6 May 2021 23:50:58 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F05183CB42;
	Thu,  6 May 2021 17:50:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1620337856;
	bh=EZF05+xYfeIs6/Vr8xWEMzXmGKhPory3bC14O+0tJns=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=YM7kLYR8zk7YodM+7/B/UrzewvENMpsC1mc0flj2G50wgq/VyBpD7tQ58EEgRjmxU
	 HdeMp8gOX+fpL+yIeS31q/11XNqr7eyxbHDPma5sOWcSEJ9D4oq88oMfx+ubAg997G
	 FjrcNrQ+RfujJtSO2cuxmq4zzwNPkzhPp2TcS5O1g/hygp+8gFDb1lDsnmweSWMYzc
	 sby4mG9LVX1TUy97TvdNYvlV/V3eLwe/8zFek1TT9stbNLCvxsBb2Yoxj2w0p7C4A1
	 dhBi9EHjSe7hl1ioPVY2cSTJAA7MH0utdU/J6lRXG/6o0BI4leN3dS58lBxVdlM/jp
	 Lf5c3OT9/mtbw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A5B3F3B2A4
 for <cake@lists.bufferbloat.net>; Thu,  6 May 2021 17:50:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1620337851; bh=syL3OhHWzYuqJCtzZ+dUa1ewYqXkkfc10AOJ8aZPn4c=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=SGiAypFEbjsYR7PO2pP5Um2JoV0FCUFEbaVNSBRC9ytq2RflxNKROK/Jzt6CqX2Ly
 /HM6l70AXPrhWMAv3ClBWjIv/wrniPkioHzKs2twWNPwMH2Xcha7XpLK7rWgWq9SZk
 v0QbdPTU+FKQmbp5JCcU0Yhieezg8tbZLR97T18m4+M+OJQGLWaehen+shlMhkyCii
 DgahsOZaIHSFSTMG9YNrAXbwKdze8EI6jn2CDiylWCP3wRCJ/ttJ1OYyTza8R4rRcW
 QHXu6bsJT8hHr2CgW54rkIsCO4LoFERDY58e5qw5FgxHNbliQyST1oCp0dshUKnszK
 r2XU1UuzxjMjg==
To: Dave Taht <dave.taht@gmail.com>, Cake List <cake@lists.bufferbloat.net>,
 flent-users <flent-users@flent.org>
In-Reply-To: <CAA93jw4pgohtn7HkqjYgrBHayKxoBUpmGU=52YWfaG4FTdyMWQ@mail.gmail.com>
References: <CAA93jw4pgohtn7HkqjYgrBHayKxoBUpmGU=52YWfaG4FTdyMWQ@mail.gmail.com>
Date: Thu, 06 May 2021 23:50:48 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87tunfv8ef.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] [Flent-users] centos 8 and cake and flent
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

RGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cml0ZXM6Cgo+IEN1cnJlbnRseSBjZW50
b3MgKGFuZCBJIGFzc3VtZSByZWRoYXQpIGlzIGF0IDQuMTguIENha2Ugd2VudCBpbnRvIDQuMTkK
PiBzbyBJIGFzc3VtZSB0aGUgbmV4dCBtYWpvcgo+IHJlZGhhdC9jZW50b3MgcmVsZWFzZXMgd2ls
bCBoYXZlIGl0LgoKTm90ZSB0aGF0IHRoZSBSSEVMIGtlcm5lbCB2ZXJzaW9uIG51bWJlciBpcyBi
YXNpY2FsbHkgYSBjb21wbGV0ZQpmYWJyaWNhdGlvbjsgaXQncyB0aGUgdmVyc2lvbiB0aGF0IHRo
ZSBrZXJuZWwgd2FzIGZvcmtlZCBmcm9tLCBzb21ldGhpbmcKbGlrZSAzMCUgb2YgYWxsIGNvbW1p
dHMgYXJlIGJhY2twb3J0ZWQgZm9yIGVhY2ggbmV3IHVwc3RyZWFtIHJlbGVhc2UsCndpdGhvdXQg
Y2hhbmdpbmcgdGhlIFJIRUwta2VybmVsIHZlcnNpb24gbnVtYmVyLgoKV2hpY2ggbWVhbnMgdGhh
dCBhbGwgdGhlIENha2Ugb3V0LW9mLXRyZWUga2VybmVsIHZlcnNpb24gY29tcGF0aWJpbGl0eQpz
dHVmZiBpcyBub3QgZ29pbmcgdG8gd29yaywgYmVjYXVzZSB0aGF0IHdvcmtzIGJhc2VkIG9uIHRo
ZSBrZXJuZWwKdmVyc2lvbiBudW1iZXIuLi4KCj4gSXMgdGhlcmUgYSB5dW0vcnBtIGV4cGVydCBp
biB0aGUgaG91c2U/IGZsZW50IGRvZXMgbm90IGFwcGVhciB0byBiZQo+IHBhY2thZ2VkIHVwIGZv
ciB0aGlzICg/KSwKCkl0J3MgaW4gRmVkb3JhOiBodHRwczovL3NyYy5mZWRvcmFwcm9qZWN0Lm9y
Zy9ycG1zL2ZsZW50IC0gc2hvdWxkIGJlCmZhaXJseSBzdHJhaWdodC1mb3J3YXJkIHRvIGFkZCBp
dCB0byBFUEVMIGFzIHdlbGwsIGJ1dCB0aHVzIGZhciBubyBvbmUKaGFzIHJlcXVlc3RlZCBpdC4u
LiA6KQoKPiBuZWl0aGVyIGlzIG5ldHBlcmYgb3IgaXJ0dC4gSXMgdGhlcmUgYSByZXBvIEkgY291
bGQgdXNlPwoKbmV0cGVyZiBpcyBibG9ja2VkIG9uIGxpY2Vuc2luZzogCmh0dHBzOi8vYnVnemls
bGEucmVkaGF0LmNvbS9zaG93X2J1Zy5jZ2k/aWQ9MTcyOTkzOQoKU2luY2UgdGhlIHJlLWxpY2Vu
c2luZyB0aGVyZSBtYXkgYmUgYSBjaGFuY2UsIGJ1dCBub3Qgc3VyZSB3aGF0IHRoZQpwcm9jZWR1
cmUgaXMgd2hlbiB0aGVyZSdzIG5vdCBhIHJlbGVhc2Ugd2l0aCB0aGUgbmV3IGxpY2Vuc2UuCgpB
cyBmb3IgaXJ0dCwgdGhhdCBzaG91bGQgYmUgcHJldHR5IHN0cmFpZ2h0LWZvcndhcmQgdG8gcGFj
a2FnZS4KCi1Ub2tlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8v
bGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

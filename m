Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 097CD11E577
	for <lists+cake@lfdr.de>; Fri, 13 Dec 2019 15:22:03 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id BD3453CB4C;
	Fri, 13 Dec 2019 09:22:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1576246921;
	bh=NUajFoROcksGJrl3f7vbwT3mD3mAtw0w7wje4L6zMWw=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Jjmk51EVVYity/DaIYQxrU11Gmk9xh0QAv9gPpllCEnQEYVBKjfcLBBr1N784REtr
	 HkCW5MNnmHI5U0RbGnJfBZyC8Updu2sijgGPH80lQhZZo4evhTEz6L7j+oI615FCgu
	 oYIZRAgEPnntyhO24nzKpVKtDl6yYzJcySgNUiGyrfiAsOhe85IV99bxCv3vQTYrYh
	 e+t6ljmddm0l5V19+BqjYHGVIdh/nGFJQG02C0XxWofzh+CpArKs4UaakRPamUF7EY
	 Ydjouu4YN6RKB6sAxL01rbMgMmh1UXSR0NlMx8dixErzyAB48HaXxWoXEoQlZNIt95
	 mxelyG9umKA6A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from vps.slashdirt.org (vps.slashdirt.org [144.91.108.218])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B36643CB47
 for <cake@lists.bufferbloat.net>; Fri, 13 Dec 2019 09:21:59 -0500 (EST)
Received: from mail.zigoo.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id B2942600A7;
 Fri, 13 Dec 2019 15:21:58 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org B2942600A7
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1576246918; bh=fgF9w+HxCXwJ+RxXS+3Bk5W4+86zlAuSkLDZlydbi4A=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=L8rqbjhPOg9qxNYTRiTDc9BNgzHJd9L1Ar8ZyKHBXar8kubLSunezq7qw4xCPHRdd
 RIsmDmw5zqUNmc/D7AijRqKYOUUJx4cHlpcz26LBV08zYpyfXmk7mNS+aBXYQfc6Wa
 4JFRYyOcN+Jr0ALujc2vaPP//8QayNzUqOmdHGG0=
MIME-Version: 1.0
Date: Fri, 13 Dec 2019 14:21:58 +0000
X-Mailer: RainLoop/1.13.0
From: "Thibaut" <hacks@slashdirt.org>
Message-ID: <68b10e0a9ee0fd087dfc4f15e2c66328@slashdirt.org>
To: "Sebastian Moeller" <moeller0@gmx.de>
In-Reply-To: <623C176A-C78F-4FFA-905D-C59F0131804F@gmx.de>
References: <623C176A-C78F-4FFA-905D-C59F0131804F@gmx.de>
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

SGkgU2ViYXN0aWFuLAoKRGVjZW1iZXIgMTMsIDIwMTkgMzoxNSBQTSwgIlNlYmFzdGlhbiBNb2Vs
bGVyIiA8bW9lbGxlcjBAZ214LmRlPiB3cm90ZToKCj4gSGkgVGhpYmF1dCwKPiAKPiBzbyBBRFNM
IGlzIGJvdGggc3BlY2lhbCBhbmQgcHJlY2lvdXMsIG1heSBJIHJlY29tbWVuZCB0byBmb2xsb3cg
dGhlIGluc3RydWN0aW9ucyBvbgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9tb2VsbGVyMC9BVE1fb3Zl
cmhlYWRfZGV0ZWN0b3I/IAoKSSB3aWxsIGdpdmUgaXQgYSB0cnkuCgo+IFRoaXMgd2lsbCBlaXRo
ZXIgY29uZmlybSB0aGUgb3ZlcmhlYWQgc2V0dGluZ3MsCj4gb3IgbW9yZSBsaWtlbHkgImV4cGxv
ZGUiIGlmIHRoZSBmcmVlZWJveCB0cnVlbHkgdHVubmVscyBhbGwgSVB2NCBkYXRhIHRocm91Z2gg
SVB2Ni4KCkl0IGRvZXMsIHRoaXMgaXMgYSBjb25maXJtZWQgZmFjdCAoYW5kIGluIGZhY3QgdHJ5
aW5nIHRvIGNvbm5lY3Qgd2l0aCBteSBWRFNMIG1vZGVtIHRoZSBEU0xBTSBvbmx5IHNwZWFrcyBJ
UHY2OiBJIGNvdWxkIHRjcGR1bXAgZW5jYXBzdWxhdGVkIGZyYW1lcyBmcm9tIHRoZSBCUiBjb250
YWluaW5nIElQdjQgZGF0YSB0aGF0IHdlcmUgZGVzdGluZWQgdG8gb3RoZXIgc3Vic2NyaWJlcnMg
LSBhbiB1bnBsZWFzYW50IHNpZGUgZWZmZWN0IG9mIG1hcC10ICJzaGFyZWQgSVB2NCI6IGJ5IGRl
ZmF1bHQgZnJlZSBzcGxpdHMgZXZlcnkgSVB2NCBiZXR3ZWVuIDQgc3Vic2NyaWJlciAoYnkgc3Bs
aXR0aW5nIHRoZSBwb3J0IHJhbmdlKS4gWW91IGhhdmUgdG8gYWN0aXZlbHkgYXNrIGZvciBhICJm
dWxsIHN0YWNrIElQIiB0byB0dXJuIHRoYXQgb2ZmKS4KCj4gSW4gYm90aCBjYXNlcwo+IHRoZSBy
ZXN1bHRzIHNob3VsZCBiZSBpbnRlcmVzdGluZy4gQXMgYSBxdWljayB0ZXN0LCB3aGF0IGlzIHRo
ZSB0ZXh0dWFsIG91dHB1dCBmcm9tIHRoZSAiU2hhcmUgWW91cgo+IFJlc3VsdHMiIGJveCBvbiBo
dHRwczovL3d3dy5zcGVlZGd1aWRlLm5ldC9hbmFseXplci5waHA/CgpJJ2xsIHJlcG9ydCB3aGVu
IHRoZSBidWlsZHNsYXZlIGlzIGRvbmUgdXBsb2FkaW5nIDopCgo+IEkgd291bGQgbm90IGJlIGFt
YXplZCBpZiB0aGUgaXNzdWUgbWlnaHQgYmUgcmVsYXRlZCB0byBoYXZpbmcgYSB3aG9waW5nIDQw
IGJ5dGVzIG1vcmUgb2YKPiB1bmFjY291bnRlZCBmb3IgcGVyLXBhY2tldC1vdmVyaGVhZCAoaW4g
Y29tYmluYXRpb24gd2l0aCBBVE0vQUFMNSdzIGxvdmVseSBwZXIgcGFja2V0IHBhZGRpbmcpLiBC
dXQKPiB0aGF0IG1pZ2h0IGFsbCBiZSBtb290IGlmIGl0IGlzL3dhcyBjYXVzZWQgYnkgYSBrZXJu
ZWwgaXNzdWUuCgoqbm9kKgoKVGhhbmtzLApUaGliYXV0Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BAD2A2ACD
	for <lists+cake@lfdr.de>; Mon,  2 Nov 2020 13:37:06 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5B3043CB38;
	Mon,  2 Nov 2020 07:37:04 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1604320624;
	bh=Z3Z9eaymjrvHpTFh70/8CxCLonkO2HoafN5pxDD4/cI=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=WEcLECVjzglUkhO/C6GK3bxS+RwbOwLKoH3ZE0kcd4r9o0KBkw/fCV/o81JohRr3Y
	 gZo2R4vStXRyLHa+pHtdlr9vwnIHxLKnoLfqCCRajZMEj+VhHYi1/YY+VFycRIq6uS
	 hlUDcVBK+834BLW35AV5koZ2b0d0TOZgXfr3pmZeEp95/WzHUaVUXPaDAwKM19o/1d
	 kDCnlGyuq7PRBcOU3c/x6Aj4lQ9oFIlci5En8JeI96+D/tDU9hrRI6DWCFzfj0xqgz
	 6VnCUo7tZCvV1guOfLBABxb9ek5iZ5mOEKov/DA0d3zRRLenc+njpoFrmbiA8vBRO5
	 W/UhaoQ/X9snQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D15153B29D
 for <cake@lists.bufferbloat.net>; Mon,  2 Nov 2020 07:37:02 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1604320620; bh=1HNwIivRVNuoqzsuq+gRSQmHu0/NlMH/WmeLApe1Jng=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=YGozODJeWenWFyKz3/VDoHRxYlIL5MI4PMTv7lGPtANap8Z2ogX1SW1KMkqC3qKJ8
 AeeHLuIOQSWOeKO3J1ES4gSJk+1Vu/SQqggDdsC3kKXWwSW4cLE4BRbHJsLocTJG4K
 dFa12aQ7Y1UHccFplCWmfixGPURKGg1+JgGm+3j3rq/xWxKzf3hAaQKpjavhHEjz/f
 Wxxo3FUgLI87c05w9pJ9c2nKBdfsJFaQ8w1BsH7dNKMVmMul+YtovyMUeWw8SKH0wS
 tov2xQrdKUcsz0C9hiK+W7EIJOInAaMabQoWNY8AYgKRJ3KEp1H9wPAjvB6Men0X8w
 VZzGEgyQioW8g==
To: Dean Scarff <dos@scarff.id.au>, cake@lists.bufferbloat.net
In-Reply-To: <202fa41a446859d714728d90e890d1d2@scarff.id.au>
References: <202fa41a446859d714728d90e890d1d2@scarff.id.au>
Date: Mon, 02 Nov 2020 13:37:00 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87d00wkk9f.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] NLA_F_NESTED is missing
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

RGVhbiBTY2FyZmYgPGRvc0BzY2FyZmYuaWQuYXU+IHdyaXRlczoKCj4gIEhpLAo+Cj4gIEkndmUg
YmVlbiBoYXBwaWx5IHJ1bm5pbmcgdGhlIG91dC1vZi10cmVlIHNjaF9jYWtlIG9uIG15IFJhc3Bi
ZXJyeSBQaSAKPiAgc2luY2UgMjAxNS4gIEhvd2V2ZXIsIEkgcmVjZW50bHkgdXBncmFkZWQgbXkg
a2VybmVsICh0byA1LjQuNzIgZnJvbSAKPiAgUmFzcGJpYW4ncyByYXNwYmVycnlwaS1rZXJuZWwg
MS4yMDIwMTAyMi0xKSwgd2hpY2ggY29tZXMgd2l0aCB0aGUgCj4gIHNjaF9jYWtlIGluIG1haW5s
aW5lLiAgTm93LCB3aGVuIHJ1bm5pbmc6Cj4KPiAgICBzdWRvIC9zYmluL3RjIHFkaXNjIGFkZCBk
ZXYgcHBwMCByb290IGNha2UKPgo+ICBJIGdldCB0aGUgZXJyb3I6Cj4KPiAgICBFcnJvcjogTkxB
X0ZfTkVTVEVEIGlzIG1pc3NpbmcuCj4KPiAgSSBnZXQgdGhpcyBlcnJvciB3aXRoIHRoZSBzY2hf
Y2FrZSBpbiBtYWlubGluZSwgYW5kIGFsc28gd2l0aCBzY2hfY2FrZSAKPiAgYnVpbHQgb3V0LW9m
LXRyZWUuICBJIGFsc28gZ2V0IHRoZSBlcnJvciB3aXRoIGJvdGggRGViaWFuJ3MgaXByb3V0ZTIg
Cj4gIDUuOS4wLTEgKGJ1aWx0IG15c2VsZiB2aWEgZGViaWFuL3J1bGVzKSBhbmQgInRjIiBmcm9t
IGR0YWh0J3MgdGMtYWR2IAo+ICByZXBvLgo+Cj4gIEFueSBpZGVhcyBvbiB3aGF0IHRoaXMgZXJy
b3IgbWVhbnMgYW5kIGhvdyB0byBmaXggaXQ/CgpJIGp1c3QgdHJpZWQgYnVpbGRpbmcgYSA1LjQu
NzIga2VybmVsIGFuZCBjb3VsZG4ndCByZXByb2R1Y2UgdGhpcywgc28gaXQKc2VlbXMgaXQncyBh
IGZhdWx0IHdpdGggdGhlIHJhc3BiZXJyeSBwaSBrZXJuZWw7IEkgZ3Vlc3Mgb3BlbmluZyBhIGJ1
ZwphZ2FpbnN0IHRoYXQgd291bGQgYmUgdGhlIHdheSB0byBnbz8KCkFzIGZvciB3aGF0J3MgYWN0
dWFsbHkgY2F1c2luZyB0aGlzLCBJIGNvdWxkbid0IGZpbmQgYW55dGhpbmcgb2J2aW91cwp0aGF0
IHRvdWNoZXMgdGhpcyBjb2RlIGluIHRoZSBxZGlzYyBsYXllcjsgYnV0IEkgc3VwcG9zZSBpdCBo
YXMKc29tZXRoaW5nIHRvIGRvIHdpdGggdGhlIGNvcmUgcWRpc2MgbmV0bGluayBwYXJzaW5nIGNv
ZGU/CgotVG9rZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

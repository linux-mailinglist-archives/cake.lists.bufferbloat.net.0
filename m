Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A90AA324E03
	for <lists+cake@lfdr.de>; Thu, 25 Feb 2021 11:30:16 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7EB5C3CB54;
	Thu, 25 Feb 2021 05:30:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614249011;
	bh=bFHVBI5wJHVfgH7QXjUH+FCo1A6KqHPCNAwmyaJneVI=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=X6TANOF750DNdTpUW28BUOrWPOYG5tRaXUB7mrgDd/5kR6W2zu/GNWis3u87aNcG+
	 gHWUWL1ObxOey5oAvt7HBbLkrVIxwv+6nflAlFM/EhVJJXNGql48nFEwaY9IyYLYiO
	 Fqc/xWULC3qUz4/L99qadmAvUyjYRF5fe/ESdCk7qLZUArefxam5btyeJfB714nmW0
	 nLGmTBStWCivE39S+wpFcQbUi4z9DpvoT7W9idaltgsvI7C4qcY4XLPYvDFGf0wRVY
	 BUCf5TpeaYFGqeoGcqA/dWM0oTl6RPTSYt8K67SLUBcF5W1OT8PqBjp1qvCyjeaAfw
	 SUynLyujjIiGg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0B2543B29D;
 Thu, 25 Feb 2021 05:30:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1614249003; bh=QXAiek6o8SM/gpxaGclCbQD4i8+2Ar5cDa+mBUGl7wc=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=hG1hdq2TYkNXEBWe2/xpY8hA42yoej88HWpiEnLJvXtwFrbRPvvJkvzRj40wxE5SD
 hG6lkDiYegRcyldtZAbzxLt3j/Le6X/3kdbnIHHU/xj9gGk/lQynq/kmeCX3vUY0Hl
 ZPLYjHHpzc8n/WY8frQT/gtjcJetdgdk3OLE2l/n8Qb/mmn4kI7SyOPz9jM2nxpJMU
 RVDN041OX05LCJBuwiHeaH7dVy62U53gn6leI2OwqERV8naXytK8Syc0D2WYvQbr8z
 Pzi1Uq2kLNNdQGAwjkMxyfqgQYj5WLtHXctK9tbwKXQuBDkXqqa+72DVspdZc6Us0a
 gNnexBxDWYg6g==
To: Nils Andreas Svee <me@lochnair.net>, Dave Taht <dave.taht@gmail.com>
In-Reply-To: <90a13934-4ec7-4872-bbf8-c6c0f6304ce3@www.fastmail.com>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
 <CAA93jw4-wspLUfL_ZJW1BN0uWaEqZGMOVnD3Z1jgrKOJ_r8xLw@mail.gmail.com>
 <87im6h4u2p.fsf@toke.dk>
 <a43b8d79-8d32-4048-a47e-df92eae622fa@www.fastmail.com>
 <369A70AB-3ADF-4211-8A09-E9FB77CEE59D@toke.dk>
 <90a13934-4ec7-4872-bbf8-c6c0f6304ce3@www.fastmail.com>
Date: Thu, 25 Feb 2021 11:30:03 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87wnuw1luc.fsf@toke.dk>
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
Cc: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Simon Sundberg <Simon.Sundberg@kau.se>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Ik5pbHMgQW5kcmVhcyBTdmVlIiA8bWVAbG9jaG5haXIubmV0PiB3cml0ZXM6Cgo+IEkgcmFuIGl0
IG9uIG15IHJvdXRlciB0aG91Z2gsIHdoaWNoIGhhcyBhIGRlY2VudCBhbW91bnQgb2YgVENQIGZs
b3dzIHJ1bm5pbmcgYXQgYW55IGdpdmVuIHRpbWUuCj4gSXQncyBhbGwgZ29pbmcgb3ZlciBhIHdn
IHR1bm5lbCB0aG91Z2gsIHRoYXQgbWlnaHQgYmUgd29ua3kgZm9yIGFsbCBJCj4ga25vdy4KCkFo
LCB3aXJlZ3VhcmQgZG9lc24ndCBoYXZlIFhEUCBzdXBwb3J0LCBzbyB0aGF0J3MgbGlrZWx5IG5v
dCBnb2luZyB0bwp3b3JrOyBhbmQgaWYgeW91IHJ1biBpdCBvbiB0aGUgcGh5c2ljYWwgaW50ZXJm
YWNlLCBldmVuIGlmIHlvdSBkaWRuJ3QKZ2V0IGRyaXZlciBlcnJvcnMsIHRoZSB0b29sIHdvdWxk
IGp1c3Qgc2VlIHRoZSBlbmNyeXB0ZWQgcGFja2V0cyB3aGljaAppcyBub3QgdGVycmlibHkgaGVs
cGZ1bCAoaXQgcGFyc2VzIFRDUCB0aW1lc3RhbXBzIHRvIG1hdGNoCmluY29taW5nL291dGdvaW5n
IHBhY2tldHMgYW5kIGNvbXB1dGUgdGhlIFJUVCkuCgpJIGd1ZXNzIHdlIHNob3VsZCBiZSBtb3Jl
IGZsZXhpYmxlIGFib3V0IHdoaWNoIGhvb2tzIHdlIHN1cHBvcnQsIHNvIGl0CmNhbiBhbHNvIGJl
IHVzZWQgb24gZGV2aWNlcyB3aXRoIG5vIFhEUCBzdXBwb3J0LiBBZGRpbmcgaW4gU2ltb24sIHdo
byBpcwp3cml0aW5nIHRoZSBjb2RlOyBJIHRoaW5rIGhlIGlzIGZvY3VzZWQgb24gZ2V0dGluZyBh
IGNvdXBsZSBvZiBvdGhlcgpmZWF0dXJlcyBkb25lIGZpcnN0LCBidXQgdGhpcyBjb3VsZCBnbyBv
biB0aGUgVE9ETyBsaXN0IDopCgotVG9rZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

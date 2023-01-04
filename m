Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4921A8B6577
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 88AC53CBC5;
	Mon, 29 Apr 2024 18:18:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429133;
	bh=nUQbNnPxs2PONHHBfusgpHWC5jseL8sszyz/2BQ1Aok=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=fwFZVz74ilDcJnLcFCsI2mzKRzR7ZYGehpLfim2ho6bmHVEGvTANGbMAt2q2tSKeC
	 PArXZGqEeKJka85zvt5wspKuHj/tINjROE3ueiRYciBdgdLJLD9eHu8Sj6s4+ON0ll
	 0x7UcsxiuplylIZcHyXN3IolghvGgTT5mnOb3jOAx5UVDkbcG6y3EHCeT3QF02zVdH
	 V74YJ/0PB4XbRWQQZVj+n8u4Xsp+vM3HmIW3WhzHPBdjdv4z8h2k+VrZOBWs9ApLMo
	 e9NUb6wDagwYeXCwDbvqjPH+KgsXzYcWDavQkatL+CyqODk+g/jTlpqPSYuhA2JndW
	 2srNL6V/mggSw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from bobcat.rjmcmahon.com (bobcat.rjmcmahon.com [45.33.58.123])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 24C603B29D;
 Wed,  4 Jan 2023 15:02:48 -0500 (EST)
Received: from mail.rjmcmahon.com (bobcat.rjmcmahon.com [45.33.58.123])
 by bobcat.rjmcmahon.com (Postfix) with ESMTPA id 35DD61B25F;
 Wed,  4 Jan 2023 12:02:47 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 bobcat.rjmcmahon.com 35DD61B25F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rjmcmahon.com;
 s=bobcat; t=1672862567;
 bh=KnCFF04RP7ts7vmOaN2l6+aa5WiMDNYHbSSSaatd5E8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CPYS7u6JLV7bKG7bAjBnKqHrBeVKKUWj1vqYK9f7HIx+ZyLwnRP4PuT1ra4Gg66Mm
 08F8KQ5c8CzQCCFRnnY6ue0JLDoUo/aD07UYnReY4IeO2a6PxTvYtAnf8TTEroEskC
 lvHSZxWUl2H5y0d4R2NHILN+0pG7f+0keQLzX2N4=
MIME-Version: 1.0
Date: Wed, 04 Jan 2023 12:02:47 -0800
To: jf@jonathanfoulkes.com
In-Reply-To: <845161E4-474C-44A9-92D4-1702748A3DA1@jonathanfoulkes.com>
References: <CAA93jw4sbPeZ42eTLQzPmg_-viBBtbdQogAMgMNndoEHjY5UNA@mail.gmail.com>
 <845161E4-474C-44A9-92D4-1702748A3DA1@jonathanfoulkes.com>
Message-ID: <eca6010e810ba85e6ab5d420b6c882db@rjmcmahon.com>
X-Sender: rjmcmahon@rjmcmahon.com
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: Re: [Cake] [Rpm] the grinch meets cloudflare's christmas present
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
From: rjmcmahon via Cake <cake@lists.bufferbloat.net>
Reply-To: rjmcmahon <rjmcmahon@rjmcmahon.com>
Cc: Cake List <cake@lists.bufferbloat.net>, IETF IPPM WG <ippm@ietf.org>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 Rpm <rpm@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Q3VyaW91cyB0byB3aHkgcGVvcGxlIGtlZXAgY2FsbGluZyBjYXBhY2l0eSB0ZXN0cyBzcGVlZCB0
ZXN0cz8gQSBzZW1pIGF0IAo1NSBtcGggaXNuJ3QgZmFzdGVyIHRoYW4gYSBwb3JzY2hlIGF0IDE0
MSBtcGggYmVjYXVzZSBpdHMgbG9hZCB2b2x1bWUgaXMgCmxhcmdlci4KCkJvYgo+IEhOWSBEYXZl
IGFuZCBhbGwgdGhlIHJlc3QsCj4gCj4gR3JlYXQgdG8gc2VlIHlldCBhbm90aGVyIGNhcGFjaXR5
IHRlc3QgYWRkIGxhdGVuY3kgbWV0cmljcyB0byB0aGUKPiByZXN1bHRzLiBUaGlzIG9uZSBsb29r
cyBsaWtlIGEgZ29vZCBzdGFydC4KPiAKPiBSZXN1bHRzIGZyb20gbXkgV2luZHN0cmVhbSBET0NT
SVMgMy4xIGxpbmUgKDMuMSBvbiBkb3dubG9hZCBvbmx5LCB1cAo+IGlzIDMuMCkgR2lnYWJpdCBk
b3duIC8gMzVNYnBzIHVwIHByb3Zpc2lvbmluZy4gVXNpbmcgYW4gSVFyb3V0ZXIgUHJvCj4gKGFu
IGk1IHg4Nikgd2l0aCBDYWtlIHNldCBmb3IgNzEwLzMxIGFzIHRoaXMgSVNQIGNhbuKAmXQgZGVs
aXZlcgo+IHJlbGlhYmxlIGxvdy1sYXRlbmN5IHVubGVzcyB5b3Ugc2hhdmUgYSBnb29kIGJpdCBv
ZmYgdGhlIHRhcmdldHMuIE15Cj4gbG9jYWwgbG9vcCBpcyBwcmV0dHkgY29uZ2VzdGVkLgo+IAo+
IEhlcmXigJlzIHRoZSBsYXRlc3QgQ2xvdWRmbGFyZSB0ZXN0Ogo+IAo+IAo+IAo+IAo+IEFuZCBh
biBPb2tsYSB0ZXN0IHJ1biBqdXN0IGFmdGVyd2FyZDoKPiAKPiAKPiAKPiAKPiBUaGV5IGFyZSBk
ZWZpbml0ZWx5IGJvdGggaW4gdGhlIGJhbGxwYXJrIGFuZCBjb3JyZXNwb25kIHRvIG90aGVyIHRl
c3RzCj4gcnVuIGZyb20gdGhlIHJvdXRlciBpdHNlbGYgb3IgbXkgKHdpcmVkKSBNYWNCb29rIFBy
by4KPiAKPiBDaGVlcnMsCj4gCj4gSm9uYXRoYW4KPiAKPiAKPj4gT24gSmFuIDQsIDIwMjMsIGF0
IDEyOjI2IFBNLCBEYXZlIFRhaHQgdmlhIFJwbSAKPj4gPHJwbUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQ+IHdyb3RlOgo+PiAKPj4gUGxlYXNlIHRyeSB0aGUgbmV3LCB0aGUgc2hpbnksIHRoZSByZWFs
bHkgd29uZGVyZnVsIHRlc3QgaGVyZToKPj4gaHR0cHM6Ly9zcGVlZC5jbG91ZGZsYXJlLmNvbS8K
Pj4gCj4+IEkgd291bGQgcmVhbGx5IGFwcHJlY2lhdGUgc29tZSBpbmRlcGVuZGVudCB2ZXJpZmlj
YXRpb24gb2YKPj4gbWVhc3VyZW1lbnRzIHVzaW5nIHRoaXMgdG9vbC4gSW4gbXkgYnJpZWYgZXhw
ZXJpbWVudHMgaXQgYXBwZWFycyAtIGFzCj4+IGFsbCB0aGUgY29tbWVyY2lhbCB0b29scyB0byBk
YXRlIC0gdG8gZHJhbWF0aWNhbGx5IHVuZGVyc3RhdGUgdGhlCj4+IGJ1ZmZlcmJsb2F0LCBvbiBt
eSBMVEUsIChhbmQgbXkgc3RhcmxpbmsgdGVybWluYWwgaXMgb3V0IGJlaW5nCj4+IGhhY2tlZF5I
XkheSF5IXkheSHdvcmtlZCBvbiwgc28gSSBjYW4ndCBtZWFzdXJlIHRoYXQpCj4+IAo+PiBNeSB0
ZXN0IG9mIHRoZWlyIHRlc3QgcmVwb3J0cyAyMjNtcyA1RyBsYXRlbmN5IHVuZGVyIGxvYWQgLCB3
aGVyZQo+PiBmbGVudCByZXBvcnRzIG92ZXIgMnNlY29uZHMuIFNlZSBjb21wYXJpc29uIGF0dGFj
aGVkLgo+PiAKPj4gTXkgZ3Vlc3MgaXMgdGhhdCB0aGlzIG90aGVyd2lzZSBsb3ZlbHkgbmV3ICB0
b29sLCBsaWtlIHRvbyBtYW55LAo+PiBkb2Vzbid0IHJ1biBmb3IgbG9uZyBlbm91Z2guIEFkbWl0
dGVkbHksIG1vc3Qgd2ViIG9iamVjdHMgKHRoZWlyCj4+IHRhcmdldCBtYXJrZXQpIGFyZSBzbWFs
bCwgYW5kIHNvIGxvbmcgYXMgdGhleSByZW1haW4gc21hbGwgYW5kIG5vdAo+PiBoZWF2aWx5IHBp
cGVsaW5lZCB0aGlzIHRlc3QgaXMgYSB2ZXJ5IGdvb2Qgc3RhcnQuLi4gYnV0IEknbSBwcmV0dHkK
Pj4gc3VyZSBjbG91ZGZsYXJlIGlzIHVzZWQgZm9yIGJpZ2dlciB1cGxvYWRzIGFuZCBkb3dubG9h
ZHMgdGhhbiB0aGF0Lgo+PiBUaGVyZSdzIG5vIHdheSB0byBjaGFuZ2UgdGhlIHRlc3QgdG8gcnVu
IGxvbmdlciBlaXRoZXIuCj4+IAo+PiBJJ2QgbG92ZSB0byBnZXQgc29tZSByZXN1bHRzIGZyb20g
b3RoZXIgbmV0d29ya3MgKGNvbXBhcmVkIGFzIHVzdWFsIHRvCj4+IGZsZW50KSwgZXNwZWNpYWxs
eSBvbmVzIHdpdGggY2FrZSBvbiBpdC4gSSdkIGxvdmUgdG8ga25vdyBpZiB0aGV5Cj4+IG1lYXN1
cmVkIG1vcmUgbWluaW11bSBydHRzIHRoYXQgY2FuIGJlIG9idGFpbmVkIHdpdGggZnFfY29kZWwg
b3IgY2FrZSwKPj4gY29ycmVjdGx5Lgo+PiAKPj4gTG92ZSBBbHdheXMsCj4+IFRoZSBHcmluY2gK
Pj4gCj4+IC0tCj4+IFRoaXMgc29uZyBnb2VzIG91dCB0byBhbGwgdGhlIGZvbGsgdGhhdCB0aG91
Z2h0IFN0YWRpYSB3b3VsZCB3b3JrOgo+PiBodHRwczovL3d3dy5saW5rZWRpbi5jb20vcG9zdHMv
ZHRhaHRfdGhlLW11c2hyb29tLXNvbmctYWN0aXZpdHktNjk4MTM2NjY2NTYwNzM1MjMyMC1GWHR6
Cj4+IERhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCj4+IDxpbWFnZS5wbmc+PHRjcF9udXAt
MjAyMy0wMS0wNFQwOTA5MzcuMjExNjIwLkxURS5mbGVudC5nej5fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBScG0gbWFpbGluZyBsaXN0Cj4+IFJwbUBs
aXN0cy5idWZmZXJibG9hdC5uZXQKPj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vcnBtCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBScG0gbWFpbGluZyBsaXN0Cj4gUnBtQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+
IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL3JwbQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtl
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0
aW5mby9jYWtlCg==

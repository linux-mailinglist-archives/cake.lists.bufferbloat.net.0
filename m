Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 3461596DE2
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 01:43:14 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 208043CB38;
	Tue, 20 Aug 2019 19:43:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566344593;
	bh=fHMZb4abC/GJT7llGWhDaDrdYglJHiCvtHE+GQyIQPs=;
	h=From:To:References:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fQnYr6MwTuWQ7PwY59w+u/f3B02NLzngzYvGe/p8FDol0cIESKFSMsIVtUcw6YxGp
	 lmBuQdP4DUI+uVm/PFvK+H6+iFhNI80OsTie0Az4sTFCk5YXpLiIjL0H1bIzsAHH/V
	 AXtbUVK3IYcDcW9CpIRgT1AE2hXy2qR2mqLFbSDTw4mQOgtzVIE3AICTHcx37AzKUT
	 vC0Pliw1QlHVDa5OTHh/KhjzRidlFTWnQB8vvSSJ/OmPOd+jWL6Sc296Xn4JKmqFtt
	 1mUXMKdA+IpM0Sa42H1c2DRnpD81eFPzxeQy4VQORGIqgpHHtVAjJqi1TMMAnuVgJ7
	 3/QTPaJtmTTwg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.taht.net (mail.taht.net
 [IPv6:2a01:7e00::f03c:91ff:feae:7028])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 235A43B2A4
 for <cake@lists.bufferbloat.net>; Tue, 20 Aug 2019 19:43:11 -0400 (EDT)
Received: from dancer.taht.net (c-73-162-29-198.hsd1.ca.comcast.net
 [73.162.29.198])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.taht.net (Postfix) with ESMTPSA id B0B2E21425;
 Tue, 20 Aug 2019 23:43:09 +0000 (UTC)
From: Dave Taht <dave@taht.net>
To: Jonathan Morton <chromatix99@gmail.com>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <87wof7sriw.fsf@toke.dk>
 <6782ec15-30eb-63b0-f54f-376c5e6b840b@newmedia-net.de>
 <87tvabsp99.fsf@toke.dk>
 <74bccc2b-b805-255f-b6a7-83ade9af6765@newmedia-net.de>
 <87r25fsn70.fsf@toke.dk>
 <b52b087d-c21c-e190-1bc7-a06e5fe6305f@newmedia-net.de>
 <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com>
Date: Tue, 20 Aug 2019 16:43:07 -0700
In-Reply-To: <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com> (Jonathan
 Morton's message of "Tue, 20 Aug 2019 22:07:53 +0300")
Message-ID: <87sgpvflo4.fsf@taht.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Subject: Re: [Cake] cake in dd-wrt
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
Cc: "cake@lists.bufferbloat.net >> Cake List" <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Sm9uYXRoYW4gTW9ydG9uIDxjaHJvbWF0aXg5OUBnbWFpbC5jb20+IHdyaXRlczoKCj4+IE9uIDIw
IEF1ZywgMjAxOSwgYXQgOTozOSBwbSwgU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFs
bEBuZXdtZWRpYS1uZXQuZGU+IHdyb3RlOgo+PiAKPj4g4oCmYSBoZWF2eSBiaXR0b3JyZW50IGRv
d25sb2FkZXIgd2lsbCBzdGlsbCBzdGVhbCB0aGUgYmFuZHdpZHRoIG9mIG15IHNjcCBzZXNzaW9u
Lgo+Cj4gSWYgeW91IGNhbiBpZGVudGlmeSB0aGUgQml0dG9ycmVudCBwYWNrZXRzLCB5b3UgY2Fu
IG1hcmsgdGhlbSBDUzEsIGFuZAo+IHN3aXRjaCBvbiBDYWtlJ3MgImRpZmZzZXJ2MyIgbW9kZSAo
YXMgaXQgaXMgYnkgZGVmYXVsdCkuICBUaGVuIHRoZQo+IEJpdHRvcnJlbnQgcGFja2V0cyB3aWxs
IHN0aWxsIGJlIGFibGUgdG8gdXNlIGZ1bGwgYmFuZHdpZHRoIGlmIGl0J3MKPiBhdmFpbGFibGUs
IGJ1dCB3aWxsIGJlIGxpbWl0ZWQgdG8gMS8xNnRoIG9mIHRoZSB0b3RhbCBpZiB0aGVyZSBpcwo+
IGNvbnRlbnRpb24uCgpJIHJlZ2FyZCB0aGUgd2hvbGUgQ1MxIHRoaW5nIGFzIGhhdmluZyBuZXZl
ciBiZWVuIHBhcnRpY3VsYXJseQpzdWNjZXNzZnVsIGZvciBhIHZhcmlldHkgb2YgcmVhc29ucyAt
IGluIHBhcnRpY3VsYXIgYmVjYXVzZQp3ZSBzZWVtZWQgdG8gYmUgdGhlIG9ubHkgb25lcyBhdHRl
bXB0aW5nIHRvIHVzZSBpdCB3aXRoIHJpZ29yLgoKSSB3b3VsZCBsaWtlIHRvIHBhdGNoIGluIGFu
ZCBzdWJtaXQgIkxFIiBzdXBwb3J0IHRvIG1haW5saW5lIGNha2UuCgpUaGUgUkZDIHJldGlyZXMg
Q1MxIC0gd2hpY2ggSSB3b3VsZG4ndCByZXRpcmUgLSBidXQgc2VlOgoKaHR0cHM6Ly93d3cucmZj
LWVkaXRvci5vcmcvcmZjL3JmYzg2MjIuaHRtbAoKQWxzbyBpdCBzZWVtcyBsaWtlIGEgZ29vZCBp
ZGVhIHRvIGFsc28gc3VibWl0IHRoZSBOUyBiaXQKZXhjbHVzaW9uIGZyb20gdGhlIGFjayBmaWx0
ZXIgdG8gbWFpbmxpbmUgYXMgd2VsbC4KCj4KPiAgLSBKb25hdGhhbiBNb3J0b24KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IENha2UgbWFpbGluZyBs
aXN0Cj4gQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKPiBodHRwczovL2xpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldC9saXN0aW5mby9jYWtlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0
Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A74CE428475
	for <lists+cake@lfdr.de>; Mon, 11 Oct 2021 03:16:44 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C6D8B3CB5E;
	Sun, 10 Oct 2021 21:16:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1633915002;
	bh=etnHMoNtJMgDegtwKvVf7K5eqa5krKd9iIy2QW06ZYk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kvfUPLxquCnL+su21BCY1EGlY6Y5WRiyJCM6XcEyzEUo+xRC0vMFNShJcxXUHtjRy
	 EyBr+MLVJVD6UqGXPBKsdDOif0v8cM/F8zt+vcIL02kcw9V4mGfZ/hvvQZuJ/MFqid
	 7uKeTykFxMozH6OWwtoGUg3t48ffaiMsZ8Ql7UxLkqdKTIPDWXRwlvxJiq7dA/V04A
	 Md/ZoFj8FX7ueoFMduua6XNYvhN9csu69gm5ocik6gYQzU3tD2xis6ZNiAT66xmUh9
	 PjXMEXkCXeY+lBH1ndcKHwbJNZ9fQD1C0TdoX5Giw6BOqH2dGMnq7cCOc5CKNWwbD+
	 LObgiQkZCeIyg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com
 [IPv6:2607:f8b0:4864:20::d32])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 527843B29D;
 Sun, 10 Oct 2021 21:16:42 -0400 (EDT)
Received: by mail-io1-xd32.google.com with SMTP id n7so8977196iod.0;
 Sun, 10 Oct 2021 18:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XfgsqG2LGZ6dkR3c+HABvGIt0iH1Hqn3MRGDfv5kipc=;
 b=fUsCi08kljAjImRPlDib7lMBLqTD6oPenJX301rRVyY0hwmDh5ZLdc+7wGNwZspf/b
 ZQEVBAnCgt5c3YwLmZgfkQYT6gAUetcDtpaQXPZKttdO7GBk9cg6Y11hUyaSeED33M5A
 sanCC0qAt+6b3V45x1xGg0fxyzRVvdRcAuv42ChWGU4EYew7+D/caJZbaF66/xD1rG5/
 SvG0744e2C6S2vHKOcI0AO2MZVjuXvP/QfM6UXot9S4TAKC11ibb9QmwzNus3xy2FySU
 GwSN8zRMIBdMioyODNUdahPd86AxyXCy7xi7riu27NZZjqoAk1uvagsCK9r1E396PC00
 78eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XfgsqG2LGZ6dkR3c+HABvGIt0iH1Hqn3MRGDfv5kipc=;
 b=r8V29t3SX2+p86GuOKGKLXfPmlWvPGddvDZpexwPbHEIwtKatcridkD+f4Lfxzjy9G
 nIZCovFm9hbBPIJ5hHxt7R5lB0URPeT8KSeOvOl1C9DRsau2i9VZ/YOaBWBYkGN8WLsE
 +y0lXh1rwEGFhmhlc6iSFmov6hEz6tDsBTbfImSTM2aOIy/7irZRA7O1BElLDUY5MZA7
 84Lj6INkhwii+8y3VGyFum9KXZzoBrhx5ajGVdWm52EHp52/idPEmde2Kx+Bk9uP8Ag8
 sGIjb1Y+hsEeDrXr8Sp3dWFYCfh+P/rratun39W6KR1FpR9fAr8qaN0ZEXwfxmIh9v8F
 RqQQ==
X-Gm-Message-State: AOAM5323vYVKE/nyWKo06H2Y2N1+1+PKtNje6OChdGEIGWxsr2pzsjen
 UwjGFtT982cXzt9WwyYbZQRmygtGNuZjXwZb+79GuPuX
X-Google-Smtp-Source: ABdhPJy4cDsRJA7Q0+TwkExryIlZ503adkBRqr+mucBodQ9qXi8/DwMrzubAHmxBaKbS2grdZcwgfIv/7gPvVUXpZCM=
X-Received: by 2002:a6b:cd87:: with SMTP id d129mr16501932iog.28.1633915001590; 
 Sun, 10 Oct 2021 18:16:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7YkMv-F6cYj2PZ9pGiS1yapO5wpLJWmuje6p0fc54eEA@mail.gmail.com>
 <CADmwGqtmvrGmiC95CXR-Vg=Satp2nCH_ihBnevibDYdhzY=KAg@mail.gmail.com>
In-Reply-To: <CADmwGqtmvrGmiC95CXR-Vg=Satp2nCH_ihBnevibDYdhzY=KAg@mail.gmail.com>
From: Dave Taht <dave.taht@gmail.com>
Date: Sun, 10 Oct 2021 18:16:28 -0700
Message-ID: <CAA93jw5mdi92R7uVZEx=USjcQkyveTGMAsWdcUTSXxnERAmj1A@mail.gmail.com>
To: Thomas Croghan <tcroghan@lostcreek.tech>
Subject: Re: [Cake] some mikrotik comments
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
Cc: Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SW4gdGhlIGZxX2NvZGVsIGNhc2UgbWlrcm90aWsgc2VlbXMgdG8gaGF2ZSBtaXNzZWQgYSBwYXRj
aCB0aGF0Cm9wZW53cnQgY2FycmllcyB0byByZWR1Y2UgdGhlIG1lbWxpbWl0IHRvIDRNQi4gSSBk
b24ndCBtaW5kLApiZWNhdXNlIHRoZSBkZWZhdWx0IGlzIGRlc2lnbmVkIHRvIHNjYWxlIHBhc3Qg
MTBHQiwgYW5kIG1pa3JvdGlrIGh3CmRvZXMgdGhhdCwgYnV0IGluIHRoZSBjYXNlIG9mIG1lbW9y
eSBsaW1pdGVkIHJvdXRlcnMsIHRvbnMgb2Ygc2hhcGVycywKYW5kIHN1YiBnYml0IHNwZWVkcywg
aXQgcGF5cyB0byB0ZWxsIGZxX2NvZGVsIHRvIHVzZSBhIG1heCBvZiA0TUIuCgpjYWtlIGF1dG9z
Y2FsZXMgaGVyZS4KCk9uIFN1biwgT2N0IDEwLCAyMDIxIGF0IDU6NTMgUE0gVGhvbWFzIENyb2do
YW4gPHRjcm9naGFuQGxvc3RjcmVlay50ZWNoPiB3cm90ZToKPgo+IEkndmUgYmVlbiBydW5uaW5n
IGZxX2NvZGVsIGZvciBhIGNvdXBsZSB3ZWVrcyBhbmQgaW5pdGlhbCB0ZXN0cyBhcmUgcG9zaXRp
dmUuIFVudGlsbCByYzQgSSB3YXMgaGF2aW5nIGNyYXNoaW5nIGlzc3VlcyBvbiBhbnl0aGluZyB3
aXRoIGxlc3MgdGhlbiBhIGdpZyBvZiBSQU0gTWlrcm90aWssIGJ1dCBJIGhhdmUgaXQgcnVubmlu
ZyBub3cgb24gbXVsdGlwbGUgZGV2aWNlcyBpbiBteSBsYWIuCj4KPiBJIGNvdWxkIHByb2JhYmx5
IHJ1biBhIGZldyB0ZXN0cyBpZiB5b3UncmUgaW50ZXJlc3RlZC4gU28gZmFyIEkndmUgc2VlbiBy
ZWFsbHkgZ29vZCByZXN1bHRzIGxpbWl0aW5nIHVwIHRvIDIuNCBHYnBzIHRvIG11bHRpcGxlIGVu
ZHBvaW50cyBvbiB0aGUgQ0NSIGxpbmUgZnJvbSBteSB0ZXN0aW5nLgo+Cj4gT24gU3VuLCBPY3Qg
MTAsIDIwMjEsIDg6MzkgQU0gRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cm90ZToK
Pj4KPj4gdGhlIHY3IGJldGEgZ2FpbmVkIGRvYyBhbmQgbW9yZSBvcyBzdXBwb3J0IGZvciBmcV9j
b2RlbCBhbmQgY2FrZSByZWNlbnRseQo+Pgo+PiBodHRwczovL2ZvcnVtLm1pa3JvdGlrLmNvbS92
aWV3dG9waWMucGhwP3A9ODg1MDAwI3A4ODUwMDAKPj4KPj4gYW55b25lIG91dCB0aGVyZSBhY3Rp
dmVseSB0ZXN0aW5nIG1pa3JvdGlrPwo+Pgo+PiAtLQo+PiBGaXhpbmcgU3RhcmxpbmsncyBMYXRl
bmNpZXM6IGh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9YzlnTG82WHJ3Z3cKPj4KPj4g
RGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKPj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4gQ2FrZSBtYWlsaW5nIGxpc3QKPj4gQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKPj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGlu
Zm8vY2FrZQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiBDYWtlIG1haWxpbmcgbGlzdAo+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0
cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQoKCgotLSAKRml4aW5nIFN0
YXJsaW5rJ3MgTGF0ZW5jaWVzOiBodHRwczovL3d3dy55b3V0dWJlLmNvbS93YXRjaD92PWM5Z0xv
Nlhyd2d3CgpEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9j
YWtlCg==

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3262D6068F1
	for <lists+cake@lfdr.de>; Thu, 20 Oct 2022 21:33:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B4AFB3CB56;
	Thu, 20 Oct 2022 15:33:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1666294430;
	bh=GfbIF3soHO4EDwa5+MI9KNLfspT0tSonQrmFZm7YIZA=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=OV4IElOYTxW5xX+n9NSEmKjpBYHReavnOja0HVduZ0v3SOgMTh0qtIUuVJBxrhxrb
	 N+I3m0sDw5k0yXBmMdFDLEhje93LS9OHr4R7hUMFQAk6hpQ2FaUzAxFVhCwnqYC77M
	 YK3ff8m7Lw5LVjMriPGDIp2+izgxB6tbqyxDZrGXh15Dr7BJTa99IQZrZLEvS22F67
	 l6o63tFeSGLuw9p5VFP4Pw2YPD+jOYu1ZbgJjsrVSY3XEpFW+ybYeUqgjkkaFvgHPZ
	 3rzFKlK2Qwi93sk1t/thvB3pCiIjTKVVbTeZ5VyIngPs2PuHfaUuTNZBucnuSCFXap
	 mGRsQPGLbos9Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 108203B2A4;
 Thu, 20 Oct 2022 15:33:49 -0400 (EDT)
Received: by mail-wr1-x433.google.com with SMTP id f11so658927wrm.6;
 Thu, 20 Oct 2022 12:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jEU3Ym6fBjwApps2r3we0HnKYwBgNuNUoH67T0QGILI=;
 b=Vn3x1lD2QQoQ8h7DcHsmIUMpG0bmr7KYLaXBQ9CkPc4q5GTzB3mzkgoz2rPwSCs++4
 ahWzCTrkhL2OriUmPAyaWA9DcqT+Q3ttfZvQVKkplTbtoSLz5d/6nMUGX5VeR11zg2bi
 QOdMDE2Kd0VYD7TGm1ya412ZjOEUrrgebvw1muv4sOmhqEKMgAUkIVswVc9r2krgQc01
 GJZ5viTyIuc+kOwJTmsH4J6Qm/1WRBwf9zUnISR6nEQbOU8P3D71Pr7pPqoMFGV1C0t1
 kY1b7OHHItPLoZ85wJvdN12XpD4NvTcvT4PZ+lbJSZ8a+DNQn84ncuIJsqVO5BYUq3qP
 f+kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jEU3Ym6fBjwApps2r3we0HnKYwBgNuNUoH67T0QGILI=;
 b=OK8w34jYxF/z9iHK9zSGbh5NMtBVbIkTAcTze7KRZqqe6+aVlgQCI8BXyQiqYQdIGP
 aB3XVNUYxIgLNBXB5/h8DlUQ3S7oNuMk9aRZsAMYQ9TYnt+ogCWQz1lFUijQMnsgMABy
 JgwciTYgx5n7QcUHyjJyendX83EDx84DjHBMnAX8tjbaGwTk7iGB8eyoNJITtCh2282C
 dy4mwmQ71Xlcs0t4QLyAAQaFyB/SQCGcaJZuHOmPn5rik1SCmFyrWBXfoKkQsk5bVpXP
 FHFxs6z0XH6EjvtVWEwykSd5pcC5tZE3Cs2ihxaEAtCctMx4FFiHonXyoh/I/XoSXWC/
 3tVw==
X-Gm-Message-State: ACrzQf3FbxQpYUfCWJKvKq+r5T9QjAq9RrML8HLDhZJPDNicndzMVpdR
 kdXWVm9JD9HxDB5gs3nbPnIH0UGtmaLQw4HnWn8=
X-Google-Smtp-Source: AMsMyM7bwIlZWUd5wmp8hwD9g5uyMPB0e/7ZGi7bLwWH0RbHpJLhDpz5P0Qj4kMmtLIOUs4beCsxfa7LFdct3M2WbaE=
X-Received: by 2002:a5d:64c3:0:b0:22e:57e7:6230 with SMTP id
 f3-20020a5d64c3000000b0022e57e76230mr9889071wri.482.1666294427914; Thu, 20
 Oct 2022 12:33:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <938D9D45-DADA-4291-BD8A-84E4257CEE49@apple.com>
 <CAA93jw4KOkgdfT2LunCtPYPjXL+=OtTrouJgPjM7U1bHKtErnw@mail.gmail.com>
 <BD3CEB48-E45E-49DB-AAFC-80C539BB4169@apple.com>
 <9989D2F5-3A6A-454E-ABB8-71A29F3AAC0D@gmx.de>
 <4BE88889-45A9-41E4-91F6-4910530A6B4C@apple.com>
In-Reply-To: <4BE88889-45A9-41E4-91F6-4910530A6B4C@apple.com>
Date: Thu, 20 Oct 2022 12:33:09 -0700
Message-ID: <CAA93jw5WF1MUSi3MiViMmjA4JMQwCjCbu88w+XP=ben-6ggqyg@mail.gmail.com>
To: Stuart Cheshire <cheshire@apple.com>
Subject: Re: [Cake] [Rpm] [Make-wifi-fast] The most wonderful video ever
	about bufferbloat
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
From: Dave Taht via Cake <cake@lists.bufferbloat.net>
Reply-To: Dave Taht <dave.taht@gmail.com>
Cc: Rpm <rpm@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gVGh1LCBPY3QgMjAsIDIwMjIgYXQgMTE6MzIgQU0gU3R1YXJ0IENoZXNoaXJlIDxjaGVzaGly
ZUBhcHBsZS5jb20+IHdyb3RlOgo+Cj4gT24gMjAgT2N0IDIwMjIsIGF0IDAyOjM2LCBTZWJhc3Rp
YW4gTW9lbGxlciA8bW9lbGxlcjBAZ214LmRlPiB3cm90ZToKPgo+ID4gSGkgU3R1YXJ0LAo+ID4K
PiA+IFtTTV0gVGhhdCBzZWVtcyB0byBiZSBzb21ld2hhdCBvcHRpbWlzdGljLiBXZSBoYXZlIGJl
ZW4gdGhlcmUgYmVmb3JlLCBzaG9ydCBvZiBtYW5kYXRpbmcgYWN0dWFsbHktd29ya2luZyBvcmFj
bGUgc2NoZWR1bGVycyBvbiBhbGwgZW5kLXBvaW50cywgaW50ZXJtZWRpYXRlIGhvcHMgd2lsbCBz
ZWUgcXVldWVzIHNvbWUgbW9yZSBhbmQgc29tZSBsZXNzIHRyYW5zaWVudC4gU28gd2UgY2FuIHN0
cml2ZSB0byBtaW5pbWl6ZSBxdWV1ZSBidWlsZC11cCBzdXJlLCBidXQgY2FuIG5vdCBhdm9pZCBx
dWV1ZXMgYW5kIGxvbmcgcXVldWVzIGNvbXBsZXRlbHkgc28gd2UgbmVlZCBtZXRob2RzIHRvIGRl
YWwgd2l0aCB0aGVtIGdyYWNlZnVsbHkuCj4gPiBBbHNvIG5vdCBtYW55IGFwcGxpY2F0aW9ucyBh
cmUgYWN0dWFsbHkgaGVscGVkIGFsbCB0aGF0IG11Y2ggYnkgbGV0dGluZyBpbmZvcm1hdGlvbiBn
ZXQgc3RhbGUgaW4gdGhlaXIgb3duIGJ1ZmZlcnMgYXMgY29tcGFyZWQgdG8gYW4gb24tcGF0aCBx
dWV1ZS4gVGhpbmsgYW4gb24tbGluZSByZWFjdGlvbi10aW1lIGdhdGVkIGdhbWUsIHRoZSBuZWVk
IGlzIHRvIGRpc3RyaWJ1dGUgY3VycmVudCB3b3JsZCBzdGF0ZSB0byBhbGwgcGFydGljaXBhdGlu
ZyBjbGllbnRzIEFTQVAuCj4KPiBJ4oCZbSBhZnJhaWQgeW91IGFyZSB3cm9uZyBhYm91dCB0aGlz
LiBJZiBhbiBvbi1saW5lIGdhbWUgd2FudHMgbG93IGRlbGF5LCB0aGUgb25seSBhbnN3ZXIgaXMg
Zm9yIGl0IHRvIGF2b2lkIGdlbmVyYXRpbmcgcG9zaXRpb24gdXBkYXRlcyBmYXN0ZXIgdGhhbiB0
aGUgbmV0d29yayBjYXJyeSB0aGVtLiBPbmUgcGFja2V0IGdpdmluZyB0aGUgY3VycmVudCBnYW1l
IHBsYXllciBwb3NpdGlvbiBpcyBiZXR0ZXIgdGhhbiBhIGJhY2tsb2cgb2YgdGVuIHByZXZpb3Vz
IHN0YWxlIG9uZXMgd2FpdGluZyB0byBnbyBvdXQuIFNlbmRpbmcgcGFja2V0cyBmYXN0ZXIgdGhh
biB0aGUgbmV0d29yayBjYW4gY2FycnkgdGhlbSBkb2VzIG5vdCBnZXQgdGhlbSB0byB0aGUgZGVz
dGluYXRpb24gZmFzdGVyOyBpdCBnZXRzIHRoZW0gdGhlcmUgc2xvd2VyLiBUaGUgc2FtZSBhcHBs
aWVzIHRvIGZyYW1lcyBpbiBhIHNjcmVlbiBzaGFyaW5nIGFwcGxpY2F0aW9uLiBTZW5kaW5nIHRo
ZSBjdXJyZW50IHN0YXRlIG9mIHRoZSBzY3JlZW4gKm5vdyogaXMgYmV0dGVyIHRoYW4gaGF2aW5n
IGEgYmFja2xvZyBvZiB0ZW4gcHJldmlvdXMgc3RhbGUgZnJhbWVzIHNpdHRpbmcgaW4gYnVmZmVy
cyBzb21ld2hlcmUgb24gdGhlaXIgd2F5IHRvIHRoZSBkZXN0aW5hdGlvbi4gU3RhbGUgZGF0YSBp
cyBub3QgaW5ldml0YWJsZS4gQXBwbGljYXRpb25zIGRvbuKAmXQgbmVlZCB0byBoYXZlIHN0YWxl
IGRhdGEgaWYgdGhleSBhdm9pZCBnZW5lcmF0aW5nIHN0YWxlIGRhdGEgaW4gdGhlIGZpcnN0IHBs
YWNlLgoKVGhlIGNvcmUgIG9mIHdoYXQgeW91IGRlc2NyaWJlIGlzIHRoYXQgdHJhbnNwb3J0cyBh
bmQgYXBwbGljYXRpb25zIGFyZQpldm9sdmluZyB0b3dhcmRzIGJlaW5nIGRlbGF5IGF3YXJlLCB3
aGljaCBpcyB0aGUgcHJpbWFyeSBvdXRjb21lIHlvdQpnZXQgZnJvbSAgRlEnZCBlbnZpcm9ubWVu
dCwgYmUgdGhlIEZRcyBhcmUgcGh5c2ljYWwgKFZvUXMsIExBR3MsCm11bHRpcGxlIGNoYW5uZWxz
IG9yIHN1YmNhcnJpZXJzIGluIHdpcmVsZXNzIHRlY2hub2xvZ2llcykgb3IgdmlydHVhbAooZnEt
Y29kZWwsIGNha2UsIGZxLXBpZSksIHNvIHRoYXQgdGhlIG9ubHkgc291cmNlIG9mIGNvbmdlc3Rp
b24gaXMKc2VsZi1oYXJtLgoKRXZlcnl0aGluZyBmcm9tIEJCUiB0byBnb29nbGVzJyBnY2MgZm9y
IHZpZGVvY29uZmVyZW5jaW5nLCB0byByZWNlbnQKd29yayBvbiBzd2lmdCAoIGh0dHBzOi8vcmVz
ZWFyY2guZ29vZ2xlL3B1YnMvcHViNDk0NDgvICkgc2VlbXMgdG8gYmUKcG9pbnRpbmcgdGhpcyB3
YXkuCgpJJ20gYWxzbyBsb3ZpbmcgdGhlIHdvcmsgb24gcmVsaWFibGUgRlEgZGV0ZWN0aW9uIGZv
ciBRVUlDLgo+IFBsZWFzZSB3YXRjaCB0aGlzIHZpZGVvLCB3aGljaCBleHBsYWlucyBpdCBiZXR0
ZXIgdGhhbiBJIGNhbiBpbiBhIHdyaXR0ZW4gZW1haWw6Cj4KPiA8aHR0cHM6Ly9kZXZlbG9wZXIu
YXBwbGUuY29tL3ZpZGVvcy9wbGF5L3d3ZGMyMDE1LzcxOS8/dGltZT04OTI+Cj4KPiBTdHVhcnQg
Q2hlc2hpcmUKPgoKCi0tIApUaGlzIHNvbmcgZ29lcyBvdXQgdG8gYWxsIHRoZSBmb2xrIHRoYXQg
dGhvdWdodCBTdGFkaWEgd291bGQgd29yazoKaHR0cHM6Ly93d3cubGlua2VkaW4uY29tL3Bvc3Rz
L2R0YWh0X3RoZS1tdXNocm9vbS1zb25nLWFjdGl2aXR5LTY5ODEzNjY2NjU2MDczNTIzMjAtRlh0
egpEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZl
cmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

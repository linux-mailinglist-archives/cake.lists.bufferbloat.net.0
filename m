Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF7299CE7
	for <lists+cake@lfdr.de>; Thu, 22 Aug 2019 19:38:29 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2865C3CB38;
	Thu, 22 Aug 2019 13:38:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566495508;
	bh=i6uyX+gncJ8MgdKIBdYDj/C924vBP9ZUHATKCfBM9Ag=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mt5yWXS6STN0PsBwHXj+C6WgKkR90edhZ7mmzTXZG+b8+ELwcWa1YZnGQuyuACIfQ
	 zY1zTEwuXW4jRHba7et1TjqOoYu5qOS4rBE0mf9WzVidqOEqxUTnlY987dR5iBig/8
	 nPH2zlfIrRltWxAaJqe6/E/hvmV643RgY35LsAanI0XLOjJ9B9MjchR8TLQ2oPyUsC
	 un7xpdL2bBXiyX8jaiytEqNzxVqT4OfS6vgnojfYV39LNlDY9mPXGWtVvUyAOXRvS1
	 SaJKZGkFpTrv9CfB28P6AWwjCB6wCmubOjooMasb2PAMpoBLrjppdKqEMcxQH/qd6L
	 G6L1k4UWwbXMg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 636E03B29E;
 Thu, 22 Aug 2019 13:38:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=0BYcinbwa+ibltm79BX0pTKtxTV0iIhqH3KLm1G8D+8=; 
 b=Cz4qgyZmRg22n4XO8qa1lM3pGG4XrPVG5fTVeeCnk9/JmSBbeFyT1fwcTLsG1VCP87DXYk98jGP09eN1OEaZq1xLqWN7iN6LIg/rlkbKhX/CrZBKq7Xycx6vqQ45e2vqLrwqFc8kQ2ktHAFU2u4cdmIAZ0i7r+t4DblNcu34Ruw=;
To: Dave Taht <dave@taht.net>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <6782ec15-30eb-63b0-f54f-376c5e6b840b@newmedia-net.de>
 <87tvabsp99.fsf@toke.dk>
 <74bccc2b-b805-255f-b6a7-83ade9af6765@newmedia-net.de>
 <87r25fsn70.fsf@toke.dk>
 <b52b087d-c21c-e190-1bc7-a06e5fe6305f@newmedia-net.de>
 <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com> <87sgpvflo4.fsf@taht.net>
 <87wof6rf7t.fsf@toke.dk> <7656FCDE-C590-4B0C-B191-B9FAC928A762@gmail.com>
 <CAA93jw4sEE_oQsX66xLkE+YUv=wM7AchfpUspC0y_Bf2nLdVOQ@mail.gmail.com>
 <5eb4c395-c718-2d28-65a7-9762cf8d5bea@newmedia-net.de>
 <47AD5102-B66F-44A5-AADE-D167ECB94A61@gmx.de>
 <1d772664-b6cc-a528-9725-96a431032875@newmedia-net.de>
 <87v9uqea3x.fsf@taht.net> <87tvaap57q.fsf@toke.dk>
 <CAA93jw6f0kedxwoN-ER3W1QKeg0sMxVCy6YYk_gRbrVwhD42jQ@mail.gmail.com>
 <5bbd2b81-9846-3a7a-130c-0f59e04fd2d1@newmedia-net.de>
 <CAA93jw4=13D-+WHLYPiV4NPqeVJwrLJe=nkr+a9D9Cqvq49pEQ@mail.gmail.com>
 <dcb92eaf-928e-f909-981d-c2baf74fbc90@newmedia-net.de>
 <87ftltdter.fsf@taht.net>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <e7e08148-5791-2afc-f26c-6c4a0a3f1a9d@newmedia-net.de>
Date: Thu, 22 Aug 2019 19:37:08 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87ftltdter.fsf@taht.net>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i0r2d-00017D-Kh; Thu, 22 Aug 2019 19:38:31 +0200
Subject: Re: [Cake] Wifi Memory limits in small platforms
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 make-wifi-fast@lists.bufferbloat.net,
 Battle of the Mesh Mailing List <battlemesh@ml.ninux.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

CkFtIDIyLjA4LjIwMTkgdW0gMTk6MDMgc2NocmllYiBEYXZlIFRhaHQ6Cj4gU2ViYXN0aWFuIEdv
dHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyaXRlczoKPgo+PiBBbSAy
Mi4wOC4yMDE5IHVtIDE1OjE1IHNjaHJpZWIgRGF2ZSBUYWh0Ogo+Pj4gSXQncyB2ZXJ5IGdvb2Qg
dG8ga25vdyBob3cgbXVjaCBmb2xrIGhhdmUgYmVlbiBzdHJ1Z2dsaW5nIHRvIGtlZXAKPj4+IHRo
aW5ncyBmcm9tIE9PTWluZyBvbiAzMk1CIHBsYXRmb3Jtcy4gSSdkIGxpa2UgdG8gaG9wZSB0aGF0
IHRoZQo+Pj4gdW5pZmllZCBtZW1vcnkgbWFuYWdlbWVudCBpbiBjYWtlICh2cyBhIGNvbGxlY3Rp
b24gb2YgUW9TIHFkaXNjcykgYW5kCj4+PiB0aGUgbmV3IGZxX2NvZGVsIGZvciB3aWZpIHN0dWZm
IChjdXR0aW5nIGl0IGRvd24gdG8gMSBhbGxvYyBmcm9tIGZvdXIpCj4+PiBoZWxwLCBtYXNzaXZl
bHkgb24gdGhpcyBpc3N1ZSwgYnV0IHVudGlsIHRvZGF5IEkgd2FzIHVuYXdhcmUgb2YgaG93Cj4+
PiBtdWNoIHRoZSBmaWVsZCBtYXkgaGF2ZSBiZWVuIHBhdGNoaW5nIHRoaW5ncyBvdXQuCj4+Pgo+
Pj4gVGhlIGRlZmF1bHQgMzJNQiBtZW1vcnkgbGltaXRzIGluIGZxX2NvZGVsIGNvbWVzIGZyb20g
dGhlIHN0cmVzc2luZwo+Pj4gYWJvdXQgMTBHaWdFIG5ldHdvcmtpbmcgZnJvbSBnb29nbGUuIDRN
QiBpcyBsaW1pdCBpbiBvcGVud3J0LAo+Pj4gd2hpY2ggaXMgc3VpdGFibGUgZm9yIH4xR2JpdCwg
YW5kIGlzIHNvcnQgb2YgdGhlcmUgIGR1ZSB0byA4MDIuMTFhYydzCj4+PiBtYXhpbXVtIChpbXBv
c3NpYmxlIHRvIGhpdCkgb2YgYSB0eG9wIHRoYXQgbGFyZ2UuCj4gSSBkaWQga2luZCBvZiBjb25m
bGF0ZSAicW9zICsgZnFfY29kZWwiIHZzIHdpZmkgaW4gdGhpcyBtZXNzYWdlLiBJdAo+IGxvb2tz
IGxpa2UgeWVyIHN0YXlpbmcgd2l0aCBtZS4KPgo+Pj4gU29tZXRoaW5nIGFzIHNtYWxsIGFzIDI1
NksgaXMgZXNzZW50aWFsbHkgYWJvdXQgMTI4IGZ1bGwgc2l6ZSBwYWNrZXRzCj4+PiAoYW5kIG9m
dGVuLCBhY2tzIGZyb20gYW4gZXRoZXJuZXQgZGV2aWNlJ3MgcnggcmluZyBlYXQgMmspLgo+PiB3
aGF0IGkgbWlzcyBpbiBtYWM4MDIxMSBpcyB0aGUgZm9sbG93aW5nIG9wdGlvbiAiZnFfY29kZWwg
PSBvZmYiCj4+IGl0cyBlc3NlbnRpYWwgYW5kIGkgd2lsbCBkZWZpbml0bHkgd29yayBvbiBhIHBh
dGNoIHRvIGRlYWwgd2l0aCB0aGlzCj4+IHdheSBmb3IgbG93IG1lbW9yeSA4MDIuMTFuIHBsYXRm
b3Jtcy4KPiBXZWxsLCBpdCB3b3VsZCBiZSBteSBob3BlIHRoYXQgdHVybmluZyBpdCBvZmYgd291
bGQgQSkgbm90IGhlbHAgdGhhdAo+IG11Y2ggb24gbWVtb3J5IG9yIGNwdSBhbmQgQikgc2hvdyBz
dWNoIGEgZHJhbWF0aWMgcmVkdWN0aW9uIGluCj4gbXVsdGktc3RhdGlvbiBwZXJmb3JtYW5jZSB0
aGF0IHlvdSdkIGltbWVkaWF0ZWx5IHR1cm4gaXQgb24gYWdhaW4uCmlzbnQgaXQgYmV0dGVyIHRv
IGhhdmUgYSB3b3JraW5nIHBsYXRmb3JtIHdpdGggbGVzcyBwZXJmb3JtYW5jZSB0aGFuIGEgCmNy
YXNoaW5nIHBsYXRmb3JtIHdpdGggbm8gcGVyZm9ybWFuY2U/CmkgbWVhbiBpIGNhbiB1c2VyIG9s
ZGVyIG1hYzgwMjExIHZlcnNpb25zIHdpdGhvdXQgdGhhdCBpc3N1ZSBvbiBhIAp0eXBpY2FsIG5h
bm9zdGF0aW9uIDIvNSB3aGljaCBpcyBvZnRlbiB1c2VkIGp1c3QgYXMgQ1BFIGRldmljZQoKYnV0
IHdpdGggY3VycmVudCBtYWM4MDIxMSB2ZXJzaW9ucyAoY3VycmVudCBtZWFucyBsYXN0IDItMyB5
ZWFycykuIHRoZXkgCmFyZSBqdXN0IHVuc3RhYmxlIGFuZCBydW5uaW5nIG91dCBvZiBtZW1vcnkg
YWZ0ZXIgYSB3aGlsZQp0aGUgb25seSB0aGluZyB3aGljaCBoZWxwZWQgd2FzIGN1dHRpbmcgb2Yg
dGhlIG1lbW9yeSBsaW1pdCBvZiBmcV9jb2RlbCAKaW5zaWRlIG1hYzgwMjExCmkgYWxzbyBoYXZl
IGFub3RoZXIgZmFuY3kgdGVzdHVuaXQgd2hpY2ggaXMgYSBsaW5rc3lzIHdydDQwMCB3aXRoIDMy
IG1iIApyYW0gYW5kIDIgYXRoOWsgYmFzZWQgd2lmaSBjaGlwc2V0cy4gbm8gaG9wZSBoZXJlIGZv
ciBydW5uaW5nIHN0YWJsZQpmb3Igb25seSA1IG1pbnV0ZXMgZXZlbiB3aXRoIGEgc2luZ2xlIGNv
bm5lY3Rpb24gdW5kZXIgbG9hZCAobXkgY3Jhc2hpbmcgCnRlc3QgaXMgcnVubmluZyBhIGhkdHYg
aXB0diBzdHJlYW0gY29udmVydGVkIHRvIHVuaWNhc3QgdXNpbmcgYSAKc3RhdGVsZXNzIGVvaXAg
dHVubmVsKQoKPiBJIHRyeSB0byBlbmNvdXJhZ2UgZm9sayB0byBydW4gdGhlIHJ0dF9mYWlyIHRl
c3RzIGluIGZsZW50IHdoZW4KPiB0d2lkZGxpbmcgd2l0aCB3aWZpLiBUaG9zZSByZWFsbHkgc2hv
d3MgaG93IGJhZCB0aGluZ3MgYXJlIHdoZW4geW91Cj4gZG9uJ3QgaGF2ZSBBVEYgKyBGUSArIFBl
ciBzdGF0aW9uIGFnZ3JlZ2F0aW9uIGFuZCBsb3RzIG9mCj4gY2xpZW50cy4gU2luZ2xlIHRocmVh
ZGVkIHRlc3RzIGFyZSBtaXNsZWFkaW5nLgppIGtub3cgYnV0IGV2ZW4gc2luZ2xlIHRocmVhZGVk
IHRlc3RzIGFyZW50IHdvcmtpbmcgZ29vZCBvbiBzdWNoIApkZXZpY2VzLiBzbyB0aGVyZSBpcyBu
byBuZWVkIHRvIHRhbGsgYWJvdXQgdGhlIGJlbmVmaXRzIG9mIGF0ZixmcV9jb2RlbCBldGMuCmJ1
dCB0aGVyZSBpcyBuZWVkIHRvIHRhbGsgYWJvdXQgY29uZmlndXJhYmxlIHVzZSBvZiBpdCB3aGlj
aCBhbHNvIGFsbG93cyAKdG8gZGlzYWJsZSBpdCBpZiByZXF1aXJlZC4gaWYgeW91IGp1c3QgaGF2
ZSBhIGNwZSBkZXZpY2Ugd2l0aCBwcHBvZSAKcnVubmluZyBvbiBpdCB3aGljaCBpcyBjb21tb24g
Zm9yIHdpc3BzCnRoZXJlIGlzIG5vIG5lZWQgZm9yIG11Y2ggZmFpciBxdWV1aW5nLiB0aGlzIGlz
IGEgdGFzayBmb3IgdGhlIAphY2Nlc3Nwb2ludC4gYW5vdGhlciB0eXBpY2FsIHVzZSBmb3Igc3Vj
aCBkZXZpY2VzIGxpa2UgbmFub3N0YXRpb24sIApyb2NrZXQsIGJ1bGxldCBldGMuIGFyZSBzaW1w
bGUgcG9pbnQgdG8gcG9pbnQgbG9uZyByYW5nZSBsaW5rcy4KdGhpcyBpcyB0aGUgbWFpbiB1c2Ug
Zm9yIHN1Y2ggaGlnaCBnYWluIGRldmljZXMgbGlrZSB0aGVzZSBpcyBteSAKYXNzdW1wdGlvbi4K
c28gd2UgZG9udCB0YWxrIGFib3V0IGEgdHlwaWNhbCBjb29sIGFuZCBmYW5jeSBhYi4gd2UgdGFs
ayBhYm91dCAKY29tcGF0aWJpbGl0eSB3aXRoIGxvdyBlbmQgZGV2aWNlcyB3aXRob3V0IHJ1bm5p
bmcgb3V0IG9mIHJlc291cmNlcy4gaSdtIAphIHR5cGljYWwgcHJvZ3JhbW1lciBmcm9tIHRoZSA4
MHMuIGtlZXAgaXQgc21hbGwsIHNpbXBsZSBhbmQgcmVzb3VyY2UgCmVmZmljaWVudCBhcyBwb3Nz
aWJsZS4gdGhlc2UgY29kaW5nIHN0YW5kYXJkcyBzaG91bGQgc3RpbGwgYmUgY29uc2lkZXJlZCAK
dG9kYXkgZXZlbiBpZiBpIGRvbnQgd3JpdGUgdGV0cmlzIGNsb25lcyBhbnltb3JlIHJ1bm5pbmcg
b24gNTEyIGJ5dGUgCmJvb3Qgc2VjdG9ycyB1c2luZyB0aGUgbXNkb3MgYnVpbHRpbiBkZWJ1ZyBh
c3NlbWJsZXIgcHJvZ3JhbQo+Cj4gSSBnYXZlIGEgZ29vZCBkZW1vIG9mIHdoeSB0aGlzIGlzICh3
YXMhKSwgaGVyZTogaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1SYi1VbkhEdzAybyZ0
PTE1NTFzCj4KPiBhbmQgdGhlcmUncyBtb3JlIGluIHRoZSBlbmRpbmcgdGhlIGFub21hbHkgcGFw
ZXIuIFBlcnZlcnNlbHkgdGhvdWdoLAo+IG5vdyB0aGF0IHdlIGNhbiBkbyAyNXggbGF0ZW5jeSBy
ZWR1Y3Rpb25zIGFuZCAyLjV4IG1vcmUgdGhyb3VnaHB1dCwKPiBtb3JlIG1lbW9yeSBpcyBuZWVk
ZWQgdG8gYWNoaWV2ZSB0aG9zZSBnb2FscyBpbiBzb21lIGNhc2VzLCB3aGljaAo+IGlzIHBhcnQg
b2YgbXkgY29uY2VybiBhYm91dCBjaG9wcGluZyB0aGluZ3MgZG93biB0byAyNTZrIGhlcmUuCj4+
PiBUaGUgc3RydWN0dXJlIG9mIHRoZSBuZXcgZnFfY29kZWwgZm9yIHdpZmkgc3Vic3lzdGVtIGlz
ICJvbmUgaW4gdGhlCj4+PiBoYXJkd2FyZSwgb25lIHJlYWR5IHRvIGdvLCBhbmQgdGhlIHJlc3Qg
YWNjdW11bGF0aW5nIi4gSQo+Pj4gdHlwaWNhbGx5IHNlZSBhYm91dCAxMy0yMCBwYWNrZXRzIGlu
IGFuIGFnZ3JlZ2F0ZS4gMjU2ayBzdHJpa2VzIG1lIGFzCj4+PiBhIGJpdCBzbWFsbC4KPj4gZnJv
bSB0aGUgcnVsZXMgaXRzIHRoYXQgMjU2IGlzIHVzZWQgZm9yIGh0IG9ubHkgYW5kIGlmIHZodCBp
cyBpbnZvbHZlZAo+PiB0aGUgbGltaXQgb2YgNG1iIGlzIHVzZWQuCj4+IGJ1dCBub3cgY29tZXMg
dGhlIHBvaW50LiBhbGwgODAyLjExYWMgcGxhdGZvcm1zIGhhdmluZyA2NG1iIHJhbSBvcgo+PiBt
b3JlLiBidXQgYXRoMTBrIGNoaXBzZXRzIGFyZSB1c2luZwo+PiBhYm91dCA0MCBtYiBvZiBzaGFy
ZWQgbWVtb3J5LiBzbyBtbWggd2UgYXJlIGhpdHRpbmcgdGhlIHdhbGwKPj4gYWdhaW4uIG1vc3Qg
cm91dGVycyBoYXZlIDEyOCBtYiB3aXRoIDgwMi4xMWFjLCBidXQgc29tZSAobm90aWNhYmxlCj4+
IGRsaW5rKSBoYXZlIGp1c3QgNjRtYgo+IFVnaC4KPgo+IElzIGl0IGp1c3QgdGhlIG1pcHMgYm94
ZXMgd2l0aCBzbyBsaXR0bGUgcmFtPyBBbGwgdGhlIGFybSByb3V0ZXJzIEkgaGF2ZQo+IGhhdmUg
YXQgbGVhc3QgMTI4LCBzb21lIGFzIG11Y2ggYXMgNTEyLgp5b3UgZ290IGl0LiBhbGwgdGhlIG1p
cHMgcm91dGVycy4gbW9zdCBwcm9ibGVtYXRpYyB0aGUgdHBsaW5rIHdyODQxIChhbmQgCnNpbWls
YXIgc2VyaWVzKSBhbmQgdWJudCBkZXZpY2VzIG9mIGNvdXJzZS4KdGhlc2UgYXJlIDgwMi4xMSBi
dXQganVzdCBjb21taW5nIHdpdGggMzIgbWIgcmFtLiBidXQgdGhlcmUgYXJlIG90aGVycyAKdG9v
IG9mIGNvdXJzZSBhbmQgaSBsb3ZlIHRvIG1haW50YWluIGFsbCB0aGUgb2xkZXIgZGV2aWNlcwpm
b3IgdGhlIGNvbW11bml0eS4gZm9yIG5ld2VyIGFybSBiYXNlZCBkZXZpY2VzIHdlIHJlYWxseSBk
b250IG5lZWQgdG8gCmNhcmUgYWJvdXQuIGJyb2FkY29tIGFybSBjcHVzIGFyZSBjb21taW5nIHdp
dGggY2hpcHNldHMgd2hpY2ggYXJlIG5vdCAKc3VwcG9ydGVkIGJ5IGxpbnV4L21hYzgwMjExIGFu
eXdheQpvciBqdXN0IGJhZCBzdXBwb3J0ZWQgZm9yIG5ld2VyIGNoaXBzZXRzIHVzaW5nIGJyY21m
bWFjLiAoYnV0IHRoZSAKb3JpZ2luYWwgYnJvYWRjb20gcHJvcGVydGllcnkgZHJpdmVyIGlzIHVu
c3RhYmxlIHRvbyBvZiBjb3Vyc2UpCmFuZCBhbGwgb3RoZXIgbW9kZWxzIGJhc2VkIG9uIHFjYSBp
cHE4MDY0IGV0Yy4gYXJlIGNvbW1pbmcgd2l0aCAyNTYgbWIgCmFuZCBtb3JlIGFuZCB3ZSByZWFs
bHkgb25seSBuZWVkIHRvIHRha2UgY2FyZSBhYm91dCBhdGg5ayBhbmQgYXRoMTBrIAooc29vbiBt
YXliZSBhdGgxMWspCmV2ZXJ5dGhpbmcgZWxzZSBkb2VzbnQgbWF0dGVyLiB0aGUgbGlua3N5cyB3
cnRYWFhYIHNlcmllcyBoYXMgYSBtYWM4MDIxMSAKZHJpdmVyLCBidXQgbWFydmVsbCBzdG9wcGVk
IG1haW50YWluaW5nIGl0IGF0IGEgcG9pbnQgd2hlcmUgaXQgc3RpbGwgd2FzIApzaGl0IGFuZCB1
bnN0YWJsZS4gYW5kIGl0cyBtYWlubHkgYmFzZWQgb24gYSBiaW5hcnkgZmlybXdhcmUgYmxvYi4K
Cgo+Cj4gWWVzLCBoYXZpbmcgYSB3aWZpIGNoaXAgdGhhdCBjYW4gdGhlb3JldGljYWxseSBoYXZl
IDRNQiBpbiB0cmFuc2l0Cj4gd2l0aCBzbyBsaXR0bGUgcmFtIGlzIHByb2JsZW1hdGljLgo+Cj4g
RGVhciBkbGluazogZG9uJ3QgZG8gdGhhdC4gSXQgaHVydHMgd2hlbiB5b3UgZG8gdGhhdC4KPgpp
IHRhbGtlZCBhbG90IHdpdGggZGxpbmsgYWJvdXQgdGhpcyBpc3N1ZSwgYnV0IGRsaW5rcyBzb2x1
dGlvbiB3YXMganVzdCAKc3dpdGNoaW5nIHRvIGEgY2hlYXBlciBtZWRpYXRlayBtaXBzIGJhc2Vk
IHBsYXRmb3JtLiBub3cgd2UgaGF2ZSBtb3JlIApyYW0sIGJ1dCBhIGZlYXR1cmVsZXNzIGNoaXBz
ZXQuCnNhbWUgZm9yIHRwbGluay4KPj4+IEkgaGF2ZW4ndCBjaGVja2VkLCBidXQgZG9lcyB0aGlz
IHBhdGNoIHN0aWxsIGV4aXN0IGluIG9wZW53cnQvZGQtd3J0Pwo+Pj4gSXQgaGFkIGhlbHBlZCBh
IGxvdCB3aGVuIHVuZGVyIG1lbW9yeSBwcmVzc3VyZSBmcm9tCj4+PiBhIGxvdCBvZiBzbWFsbCBw
YWNrZXRzLgo+Pj4KPj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9kdGFodC9jZXJvd3J0LTMuMTAvYmxv
Yi9tYXN0ZXIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGF0Y2hlcy0zLjEwLzY1Ny1xZGlzY19yZWR1
Y2VfdHJ1ZXNpemUucGF0Y2gKPj4+Cj4+PiBBcmd1YWJseSB0aGlzIGNvdWxkIGJlIG1hZGUgbW9y
ZSBhZ2dyZXNzaXZlLCBidXQgaXQgbWFzc2l2ZWx5IHJlZHVjZWQKPj4+IG1lbW9yeSBidXJkZW5z
IGF0IHRoZSB0aW1lIEkgZGlkIGl0IHdoZW4KPj4+IGZsb29kaW5nIHRoZSBkZXZpY2UsIG9yIGhh
dmluZyBsb3RzIG9mIGFja3MsIGFuZCB3aGlsZSBpdCBjb3N0IGNwdSBpdAo+Pj4gc2F2ZWQgb24g
b29taW5nLgo+PiBtbWggbGV0IG1lIGNoZWNrIC0+IG5vcGUgaXRzIGF0IGxlYXN0IG5vdCBpbiBt
eSB0cmVlLiBidXQgd2lsbCBiZSBzb29uIDotKQo+IFdlbGwsIEkgc2VudCBhbG9uZyBhIG1pbGRs
eSBpbXByb3ZlZCB2ZXJzaW9uIG9mIHRoZSBpZGVhLgo+Cj4gSSBjYW4gcmVhbGx5IHNlZSBzb21l
IHNvcnQgb2YgInRlc3QgbXkgcW9zIiBzY3JpcHQgdGhhdCBhdHRlbXB0cwo+IHRvIGZsb29kIGV2
ZXJ5IHF1ZXVlIG9uIHRoZSBzeXN0ZW0uIEFuZCB3aWRlciBhZG9wdGlvbiBvZgo+IGNha2Ugd2hp
Y2ggaXMgbGlnaHRlciB3ZWlnaHQgdGhhbiB0aGUgYWx0ZXJudGl2ZXMuCj4KPiBvbmUgaWRlYSB0
aGF0J3MgaW4gY2FrZSB3YXMgdGhhdDogd2UnZCBob3BlZCB0byBjYXB0dXJlIHRoZSBtb3N0IHR5
cGljYWwKPiBxb3Mgc2V0dXBzIHdpdGggaXQgd2l0aCAibW9kZWxzIi4gSXQncyB2ZXJ5IGVhc3kg
dG8gYWRkIGEgbmV3IG1vZGVsCj4gKGJlc3RlZmZvcnQsIGRpZmZzZXJ2MywgZGlmZnNlcnY0KSAo
aXQncyBhIGxvb2t1cCB0YWJsZSBhbmQgYmFuZHdpZHRoCj4gYWxsb2NhdGlvbiBjYWxsKSwgYnV0
IGxhY2tpbmcgZmVlZGJhY2sgb24gbW9yZSB0eXBpY2FsIFFvUyBjb25zdHJ1Y3RzCj4gZnJvbSB0
aGUgZmllbGQsIHRoYXQncyB3aGVyZSBpdCBlbmRlZC4gV2hlbiB3ZSBzdGFydGVkIHRoZSBwcm9q
ZWN0LAo+IEkgZmlndXJlZCB3ZSdkIGVuZCB1cCB3aXRoIDIwKyBtb2RlbHMgYmVmb3JlIHRoZSBl
bmQuCj4KPiBJdCB3b3VsZCBiZSBnb29kIHRvIGdldCBhIHRjIGNsYXNzIGR1bXAgb3Igb3V0cHV0
IGZyb20gbW9yZSB0eXBpY2FsCj4gUW9TIFNldHVwcy4KPgo+IEluIHNxbSBhbmQgY2FrZS4uLgo+
IHdlIGhhdmUgYSB0ZXJyaWJsZSB0ZW5kZW5jeSB0byB0ZWxsIHBlb3BsZSAibm8sIGp1c3QgdXNl
IHRoZSBkZWZhdWx0cyEKPiB0aGV5IHdvcmshIHRydXN0IHVzISIuLi4KeWVhaCBpIGtub3cgdGhh
dCBmZWVsaW5nIC5idXQgaSBjYW4gbmV2ZXIgdHJ1c3QgdGhlIHVzZXJzLiB0aGUgYWx3YXlzIGRv
IAp3aGF0IHRoZXkgdGhpbmsgaXMgZ29vZCBmb3IgdGhlbQphbmQgZXZlcnlvbmUgdGhpbmtzIGhl
IGtub3dzIGJldHRlciBzaW5jZSBoZSB3YXMgcmVhZGluZyBzb21ldGhpbmcgdXNpbmcgCmdvb2ds
ZSAvIHJlZGRpdAo+Cj4gd2hvIGdlbmVyYWxseSBkb24ndCBiZWxpZXZlIHVzIGFuZCB3YW50IHRv
IGtlZXAgZG9pbmcgdGhpbmdzIHRoZQo+IHdheSB0aGV5IGFsd2F5cyBoYXZlLgo+Cj4gSW4gbW9y
ZSB0aGFuIGEgZmV3IGNpcmN1bXN0YW5jZXMgdGhleSBhcmUgcmlnaHQsIGJ1dCB3ZSBkb24ndCB1
bmRlcnN0YW5kCj4gd2hhdCB0aGV5IGFyZSB0cnlpbmcgdG8gZG8uCj4KPiBBcyBvbmUgY2FzZSB0
aGF0IGNha2UgZG9lc24ndCBoYW5kbGUsIGF0IGxlYXN0IHNvbWUgaXB0diBzZXR1cHMgYXJlCj4g
dmlzaWJsZSBhcyBhIHN0cmljdCBwcmlvcml0eSBxdWV1ZSBvdmVyIGV2ZXJ5dGhpbmcgZWxzZSwg
YmVsb3cgd2hpY2ggeW91Cj4gZG8gZXZlcnl0aGluZyBlbHNlLCBzbyB0aGUgdHYgc3RyZWFtIG5l
dmVyLCBldmVyLCBkcm9wcyBhIHBhY2tldC4KYXMgaSBtZW50aW9uZWQgYmVmb3JlLiBteSBzb2xp
dGlvbiBmb3IgaXB0diBpcyBsYXllciAyIHR1bm5lbGluZyB0byBnZXQgCnJpZCBvZiBtdWx0aWNh
c3QgaXNzdWVzIGFuZCBpdCBhbHNvIGNvbnZlcnRzIGV2ZXJ0aGluZyB0byBhIHNpbmdsZSAKY29u
bmVjdGlvbi4KaSB1c2UgYSByZmMgY29tcGxpYW50IGV0aGVyIG92ZXIgaXAgdHVubmVsIGZvciB0
aGlzIHdoaWNoIGlzIG5vdCAKdXBzdHJlYW0gaW4gbGludXgsIGJ1dCBpbiBmcmVlYnNkLiBidXQg
dGhlcmUgd2FzIGEgZHJpdmVyIGZvciBrZXJuZWwgMi40IAphcm91bmQgbWFueSB5ZWFycyBhZ28g
YW5kIGkgbWFpbnRhaW5lZCBpdCB1cAp0byB0aGUgbGF0ZXN0IGtlcm5lbC4gaXRzIHJvYnVzdCwg
aGFuZGxlcyBmcmFnbWVudGF0aW9uIGFuZCBqdXN0IGhhcyAxMiAKYnl0ZXMgb3ZlcmhlYWQuCj4K
PiBXZSBkaWRuJ3QgZG8gdGhhdCwgYnV0IGNvdWxkICplYXNpbHkqIGFkZCBhbiBpcHR2IG1vZGVs
IHRvIHNoYXBlCj4gaW5ib3VuZCBiZXR0ZXIgLSBpZiB3ZSBrbmV3IG1vcmUgYWJvdXQgaG93IGZy
ZWUsIEZUIGV0YywgY29uc3RydWN0Cj4gdGhlaXIgcGFja2V0cy4KCmluYm91bmQgdGhleSBhcmUg
bWFya2VkIHdpdGggdG9zLiB0eXBpY2FsIGludGVybmV0IGhhcyAwIG9mIGNvdXJzZS4gaXB0diAK
aGFzIFggYW5kIHZvaWNlIGhhcyBZLiAoZG9udCBhc2sgbWUgZm9yIHRoZSBudW1iZXJzLCBpIGRv
bnQgaGF2ZSB0aGVtIGluIAptaW5kIHJpZ2h0IG5vdykKYnV0IGZvciBkaGNwIGxlYXNlcyB5b3Ug
bmVlZCB0byBtYXJrIHlvdXIgb3duIHBhY2tldHMgd2l0aCBhbm90aGVyIGRzY3AuIApvdGhlcndp
c2UgdGhlIGlzcCByZXR1cm5zIG5vIGlwLiBpIGRvbnQga25vdyB3aHkgdGhpcyBoYXMgYmVlbiBt
YWRlLiBidXQgCml0IGhhcyB0byBiZSBoYW5kbGVkLgpub3JtYWxseSBvcmFuZ2Ugc2hpcHMgYmxh
Y2sgYm94ZXMgYXMgcm91dGVycyBhbmQgdG8gZ2V0IGl0IHdvcmtpbmcgd2l0aCAKZnJlZSBzeXN0
ZW1zLCBzb21lIHBlb3BsZSByZXZlcnNlIGVuZ2luZWVyZWQgdGhhdCBzaGl0LiBteSBjb25jbHVz
aW9uIGlzIAppdHMgc29tZSBzb3J0IG9mCm9iZnVzY2F0aW9uIHRvIGF2b2lkIHRoaXJkIHBhcnR5
IGhhcmR3YXJlIHNpbmNlIHRoZSBFVSByZWd1bGF0ZWQgdGhlIApJU1AncyBpbiBhIHdheSB0aGF0
IHRoZXkgZ290IGZvcmNlZCB0byBhbGxvdyAzcmQgcGFydHkgcHJvZHVjdHMgd2hpY2ggCnRoZXkg
c3RpbGwgdHJ5IHRvIGF2b2lkLiAocmVmdXNpbmcgc3VwcG9ydCBmb3IgaW50ZXJuZXQgcHJvYmxl
bXMgZXRjLikKCj4gU2ltaWxhcmx5IHNvbWUgZm9sayBpbiB0aGlzIHdvcmxkIHdhbnQgc3RyaWN0
IHByaW9yaXR5IGZvciBFRi4KPgo+Pj4gVGhlcmUncyB0d28gb3RoZXIgZHViaW91cyB0aGluZ3Mg
aW4gdGhlIGZxX2NvZGVsIGZvciB3aWZpIHN0YWNrCj4+PiBwcmVzZW50bHkuIFJpZ2h0IG5vdyB0
aGUgY29kZWwgdGFyZ2V0IGlzIHNldCB0b28gaGlnaCBmb3IgcDJwIHVzZQo+Pj4gKDIwbXMsIHdo
ZXJlIDZtcyBzZWVtcyBtb3JlIHJpZ2h0KSwgYW5kIGl0IGFsc28gZmxpcHMgdXAgdG8gYSByZWFs
bHkKPj4+IGhpZ2ggdGFyZ2V0IGFuZCBpbnRlcnZhbCBBTkQgdHVybnMgb2ZmIGVjbiB3aGVuIHRo
ZXJlJ3MgbW9yZSB0aGFuIGEKPj4+IGZldyBzdGF0aW9ucyBhdmFpbGFibGUgKHJhdGhlciB0aGFu
ICJhY3RpdmUiKSAtIGl0J3MgYW4gb3Zlcmx5Cj4+PiBjb25zZXJ2YXRpdmUgZmlndXJlIHdlIHVz
ZWQgYmFjayB3aGVuIHdlIGhhZCBtYWpvciBpc3N1ZXMgd2l0aAo+Pj4gcG93ZXJzYXZlCj4+PiBh
bmQgbXVsdGljYXN0IHRoYXQgSSdkIGhvcGVkIHdlIGNvdWxkIGN1dCBiYWNrIHRvIG5vcm1hbCBh
ZnRlciB3ZSBnb3QKPj4+IGFub3RoZXIgcm91bmQgb2YgcmVzZWFyY2ggZnVuZGluZyBhbmQgZmVl
ZGJhY2sgZnJvbSB0aGUgZmllbGQgKHdoaWNoCj4+PiBkaWRuJ3QgaGFwcGVuLCBhbmQgd2UgbmV2
ZXIgZ290IGFyb3VuZCB0byBtYWtpbmcgaXQgY29uZmlndXJhYmxlLCBhbmQKPj4+IGJlaW5nIDI1
eCBiZXR0ZXIgdGhhbiBpdCB3YXMgYmVmb3JlIHNlZW1lZCAiZW5vdWdoIikKPj4+Cj4+PiBJIHdh
cyBwdXp6bGVkIGF0IGJhdHRsZW1lc2ggYXMgdG8gd2h5IEkgaGFkIGRyb3BwaW5nIGF0IGFib3V0
IDUwbXMKPj4+IGRlbGF5IHJhdGhlciB0aGFuIGVjbiwgYW5kIHRob3VnaHQgaXQgd2FzIHNvbWV0
aGluZwo+Pj4gZWxzZSwgYW5kIHRoaXMgbW9ybmluZyBJJ20gdGhpbmtpbmcgdGhhdCBmb2xrIGhh
dmUgYmVlbiByZWR1Y2luZyB0aGUKPj4+IG1lbWxpbWl0IHRvIDI1NmsgcmF0aGVyLi4uLgo+Pj4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

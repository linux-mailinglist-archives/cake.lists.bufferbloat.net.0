Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE3F9A0DA
	for <lists+cake@lfdr.de>; Thu, 22 Aug 2019 22:10:48 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 184C23CB38;
	Thu, 22 Aug 2019 16:10:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566504647;
	bh=ctqgVGaBlT6c1QJBfFDxhW+JXxnsSQTSCef1WRkoe4E=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LALHZGy5xcZvaQa0N2VjFSUHWe25V7rkTzeMxEAhbLYyKj44GeDZpsvhDoIC/xaIO
	 EMCSC66+geNBlLcjHRnnpZ99UwlIiJ52Y6+t8zkKfSIEs2D8Ot5/ANCk5Ekze6Jfpz
	 adGLt9Hx3LWq6NlJ5MJlDu0JwKGO3yhU3vfMh1BfqAlmBYGi9eu8vjLBpQ+n8Pd4Sb
	 dKNAnIY71pyShVe60JtsUVU03jdwnHGzCFrMiMbkowm1EtI4S+C0rRAAewYZYUF593
	 lhp+1OdrJ0p68a2fBo15QM079QOi5DNL/6WU2+X7aVSwUW82LlKVre8md2S4F7ukoq
	 b+kWsf8NOn6dw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4F2383B29E;
 Thu, 22 Aug 2019 16:10:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566504637;
 bh=gvycOY4ujgIfEli4NjzzjGknUy1fzQg+MFQSWHrm9fU=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=hohs1sgf7lb6Bc7kiMZ/G4c1mzMjaNdKds5xpLABWaEUn7n+7MszEmoiKFliv2x49
 2/2yQiCUBzT0iRtP17xrXNGha28YFkvGR2RhaUgWWNlUO0bQb+ICH7OQ8QdWXdG2pc
 1XELFUSzft2VoKb8vZkYfBJzYRRaooiB8jdE0MBA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from hms-beagle2.lan ([77.179.218.79]) by mail.gmx.com (mrgmx003
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MUZKF-1hriLm2suB-00RLae; Thu, 22
 Aug 2019 22:10:37 +0200
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <87ef1dng8s.fsf@toke.dk>
Date: Thu, 22 Aug 2019 22:10:36 +0200
Message-Id: <8332CC60-CE58-49EC-AE55-568913D476CE@gmx.de>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
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
 <e7e08148-5791-2afc-f26c-6c4a0a3f1a9d@newmedia-net.de>
 <87pnkxnjo4.fsf@toke.dk>
 <CAA93jw7kSn9gwZsqqgO9w031oz5PgpUw1nhQwt5Y1x9dQ63MoA@mail.gmail.com>
 <87ef1dng8s.fsf@toke.dk>
To: =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Provags-ID: V03:K1:3ebux5Q1aNKsH9jFbXLMc5sUzzSssROc3eg52fWeAESIQBJ4WQj
 2yqsooHsGti7y9wH3I3KF0tzEz5ilv9YHEaoOonT+ia38C9ryekcTplm8LsghAZckoPXpTr
 VARPrlgWzVDHfT7bNyH7C0HGnru9K3bJVfZIgzwmGwl6E8AW2OU6rLdAuA9ApRR/4X0YTj7
 GezybnXQPVhA3wq2sjSfg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KamZIAoPFgo=:crWA05Uobe2y8O/xEmJCxU
 JAynxMGMkqegjrfx7ErYkK1QjyRDx4NXCySm53libcKl3CajoDTbF+YBK32u76HFx++pwjQyL
 WI2zTGTnFKUJ4W+2gzKFQBk8/D793xHGSQSSG+MRUL5UYUIyNf9FPj0jho2cZ1RdtxqvSFC1m
 SNHoXnjr22oDzsnbc2J0iimoT+zhedsg9szpDmYRiCOvwJ1daESAdBbsKPySvpVd3f5Ah+PBW
 KkM1MaCCk/OJEDMqkkm9ItWwwCOv/J3kQXSV+ydldt9gLAMIpFOouADS/i0jZGb4eVztCbzqy
 gIwCKB3UEXfodgZ/wfoQOFMANn/aDRyKJNdi7w//LBfOdHsTinUBoikw62wx0nbFy/FXN0gFi
 zlnT9rHQWyKmnpGdS8OV9zTR6l4bomOiXb2HEmnrfqNhc01Fog8T8j9Nhyq9OfnqkMgoCMBfN
 zOlJD7nmBpx2OapQe6iDIxtb5eYT2cu4EXHIHsCK54EQaVLtu80iW30sqGl6pxmjruBPu5R3T
 df7deRf8lJEqeamPgS9Sk+2P8w8A5unKJQ97tz3Y7cbwP/e4Z7yBpixcmsKhYDr8EnRY1viN8
 NmFBQMTB1ZNsQHFpsX3gULj0ND0I81eOMj1n1CHugXN7hrqeopVtC3uVENq8Vnf6zDu1oY3W/
 IBmNxYfDdD0SHMtP6RCS+d1jNfLGLTtl4NpQUE7K+YCry7m78/n6+TPpdFizU3QvrqSfpnqad
 SRrXcY6AabpwPL2uvzja6Jd1CvFo5abonueB6eztrJ8XBJWyBxPX12lNdTGKMmTlWjbP8/v5G
 QhRpXX/Y1MZMKTFtj8gKkU3BHm4yaCN0vF508cC8R+T00RKCfUF5aRu+ScBton8oPPnaV1LwV
 mpKfU5xCzGmXKH4U/EzpudJAebhXjcLY08enQia+e9+hL8qiU5D+6QaEwu4bmLxtxXNoEBTO0
 594tjD/6DbK5QVcdttCzLBv8VTGF3rqUXejpD6M2GRcaVrVhzGEmfbwu7C5g4X6KEmEYQw43/
 pqPJzIR4yaPOkaSvPGAgKThOpIRuP96+X2bVzJ8jrDsbimI8qseHrcJNltKCDhszF88qNKkN9
 it0Wwfle71h5rxQIklsGSqNCAArrlXptfsA39SdSUOhVGUYWlE01BKItr9ZtUEX6KWnqz00iI
 y268Y=
Subject: Re: [Cake] [Battlemesh] Wifi Memory limits in small platforms
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
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Battle of the Mesh Mailing List <battlemesh@ml.ninux.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Cgo+IE9uIEF1ZyAyMiwgMjAxOSwgYXQgMjE6MzcsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8
dG9rZUByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5j
b20+IHdyaXRlczoKPiAKPj4gT24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMTE6MjMgQU0gVG9rZSBI
w7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4gCj4+PiBTZWJh
c3RpYW4gR290dHNjaGFsbCA8cy5nb3R0c2NoYWxsQG5ld21lZGlhLW5ldC5kZT4gd3JpdGVzOgo+
Pj4gCj4+Pj4gQW0gMjIuMDguMjAxOSB1bSAxOTowMyBzY2hyaWViIERhdmUgVGFodDoKPj4+Pj4g
U2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyaXRl
czoKPj4+Pj4gCj4+Pj4+PiBBbSAyMi4wOC4yMDE5IHVtIDE1OjE1IHNjaHJpZWIgRGF2ZSBUYWh0
Ogo+Pj4+Pj4+IEl0J3MgdmVyeSBnb29kIHRvIGtub3cgaG93IG11Y2ggZm9sayBoYXZlIGJlZW4g
c3RydWdnbGluZyB0byBrZWVwCj4+Pj4+Pj4gdGhpbmdzIGZyb20gT09NaW5nIG9uIDMyTUIgcGxh
dGZvcm1zLiBJJ2QgbGlrZSB0byBob3BlIHRoYXQgdGhlCj4+Pj4+Pj4gdW5pZmllZCBtZW1vcnkg
bWFuYWdlbWVudCBpbiBjYWtlICh2cyBhIGNvbGxlY3Rpb24gb2YgUW9TIHFkaXNjcykgYW5kCj4+
Pj4+Pj4gdGhlIG5ldyBmcV9jb2RlbCBmb3Igd2lmaSBzdHVmZiAoY3V0dGluZyBpdCBkb3duIHRv
IDEgYWxsb2MgZnJvbSBmb3VyKQo+Pj4+Pj4+IGhlbHAsIG1hc3NpdmVseSBvbiB0aGlzIGlzc3Vl
LCBidXQgdW50aWwgdG9kYXkgSSB3YXMgdW5hd2FyZSBvZiBob3cKPj4+Pj4+PiBtdWNoIHRoZSBm
aWVsZCBtYXkgaGF2ZSBiZWVuIHBhdGNoaW5nIHRoaW5ncyBvdXQuCj4+Pj4+Pj4gCj4+Pj4+Pj4g
VGhlIGRlZmF1bHQgMzJNQiBtZW1vcnkgbGltaXRzIGluIGZxX2NvZGVsIGNvbWVzIGZyb20gdGhl
IHN0cmVzc2luZwo+Pj4+Pj4+IGFib3V0IDEwR2lnRSBuZXR3b3JraW5nIGZyb20gZ29vZ2xlLiA0
TUIgaXMgbGltaXQgaW4gb3BlbndydCwKPj4+Pj4+PiB3aGljaCBpcyBzdWl0YWJsZSBmb3IgfjFH
Yml0LCBhbmQgaXMgc29ydCBvZiB0aGVyZSAgZHVlIHRvIDgwMi4xMWFjJ3MKPj4+Pj4+PiBtYXhp
bXVtIChpbXBvc3NpYmxlIHRvIGhpdCkgb2YgYSB0eG9wIHRoYXQgbGFyZ2UuCj4+Pj4+IEkgZGlk
IGtpbmQgb2YgY29uZmxhdGUgInFvcyArIGZxX2NvZGVsIiB2cyB3aWZpIGluIHRoaXMgbWVzc2Fn
ZS4gSXQKPj4+Pj4gbG9va3MgbGlrZSB5ZXIgc3RheWluZyB3aXRoIG1lLgo+Pj4+PiAKPj4+Pj4+
PiBTb21ldGhpbmcgYXMgc21hbGwgYXMgMjU2SyBpcyBlc3NlbnRpYWxseSBhYm91dCAxMjggZnVs
bCBzaXplIHBhY2tldHMKPj4+Pj4+PiAoYW5kIG9mdGVuLCBhY2tzIGZyb20gYW4gZXRoZXJuZXQg
ZGV2aWNlJ3MgcnggcmluZyBlYXQgMmspLgo+Pj4+Pj4gd2hhdCBpIG1pc3MgaW4gbWFjODAyMTEg
aXMgdGhlIGZvbGxvd2luZyBvcHRpb24gImZxX2NvZGVsID0gb2ZmIgo+Pj4+Pj4gaXRzIGVzc2Vu
dGlhbCBhbmQgaSB3aWxsIGRlZmluaXRseSB3b3JrIG9uIGEgcGF0Y2ggdG8gZGVhbCB3aXRoIHRo
aXMKPj4+Pj4+IHdheSBmb3IgbG93IG1lbW9yeSA4MDIuMTFuIHBsYXRmb3Jtcy4KPj4+Pj4gV2Vs
bCwgaXQgd291bGQgYmUgbXkgaG9wZSB0aGF0IHR1cm5pbmcgaXQgb2ZmIHdvdWxkIEEpIG5vdCBo
ZWxwIHRoYXQKPj4+Pj4gbXVjaCBvbiBtZW1vcnkgb3IgY3B1IGFuZCBCKSBzaG93IHN1Y2ggYSBk
cmFtYXRpYyByZWR1Y3Rpb24gaW4KPj4+Pj4gbXVsdGktc3RhdGlvbiBwZXJmb3JtYW5jZSB0aGF0
IHlvdSdkIGltbWVkaWF0ZWx5IHR1cm4gaXQgb24gYWdhaW4uCj4+Pj4gaXNudCBpdCBiZXR0ZXIg
dG8gaGF2ZSBhIHdvcmtpbmcgcGxhdGZvcm0gd2l0aCBsZXNzIHBlcmZvcm1hbmNlIHRoYW4gYQo+
Pj4+IGNyYXNoaW5nIHBsYXRmb3JtIHdpdGggbm8gcGVyZm9ybWFuY2U/Cj4+Pj4gaSBtZWFuIGkg
Y2FuIHVzZXIgb2xkZXIgbWFjODAyMTEgdmVyc2lvbnMgd2l0aG91dCB0aGF0IGlzc3VlIG9uIGEK
Pj4+PiB0eXBpY2FsIG5hbm9zdGF0aW9uIDIvNSB3aGljaCBpcyBvZnRlbiB1c2VkIGp1c3QgYXMg
Q1BFIGRldmljZQo+Pj4gCj4+PiBTbyBiZWZvcmUgdGhlIHF1ZXVlaW5nIHBhdGNoZXMgdG8gbWFj
ODAyMTEsIHRoZSBtYXhpbXVtIHBhY2tldCBxdWV1ZQo+Pj4gc2l6ZSBmb3IgYXRoOWsgd2FzIDNN
QiBpbiB0b3RhbCwgb3IgMi4yTUIgaWYgb25seSBhIHNpbmdsZSBBQyB3YXMgdXNlZAo+Pj4gb24g
dGhlIFdpRmkgbGluayAodGhhdCdzIDEyOCBwYWNrZXRzIGluIHRoZSBkcml2ZXIgKyAxMDAwIGlu
IHRoZQo+Pj4gcGZpZm9fZmFzdCBxZGlzYyAqIDIwNzQgYnl0ZXMgZm9yIHRoZSB0cnVlc2l6ZSBv
ZiBhIGZ1bGwtc2l6ZSBwYWNrZXQpLgo+Pj4gV2hlcmVhcyBub3cgdGhlIGRlZmF1bHQgaXMgNE1C
IGZvciBhIG5vbi12aHQgZGV2aWNlLiBTbyBpdCdzIG5vdAo+Pj4gYWN0dWFsbHkgdGhhdCBiaWcg
b2YgYSBkaWZmZXJlbmNlLCBhbmQgYXMgeW91J3ZlIGFscmVhZHkgZGlzY292ZXJlZCB0aGUKPj4+
IGRlZmF1bHRzIGNhbiBiZSBjaGFuZ2VkLgo+Pj4gCj4+PiBXb3VsZCBpdCBiZSBoZWxwZnVsIHRv
IGFkZCBzdXBwb3J0IGZvciBzZXR0aW5nIHRoZSBtZW1vcnkgbGltaXQgaW4KPj4+IGhvc3RhcGQg
KHRvIGF2b2lkIGhhdmluZyB0byBwYXRjaCB0aGUga2VybmVsIGRlZmF1bHQpPwo+PiAKPj4gaG1t
LiBJIGd1ZXNzIGV4cG9zaW5nIHRoYXQgdmlhIG5ldGxpbmssIGV0YyBpcyBhIGdvb2QgaWRlYS4g
TWUgSSBqdXN0Cj4+IHdyaXRlIHRoZSBzeXMva2VybmVsL2RlYnVnLyovKi9hcW0gZmlsZXMuCj4g
Cj4gSXQgYWxyZWFkeSBpcywgYW5kIHlvdSBjYW4gc2V0IGl0IHRocm91Z2ggaXcgKGFzIEkgcG9p
bnRlZCBvdXQKPiB1cC10aHJlYWQpOgo+IAo+IGl3IHBoeSBwaHkwIHNldCB0eHEgbWVtb3J5X2xp
bWl0IDIwOTcxNTIKPiAKPiBCdXQgaXQncyBub3Qgc3VwcG9ydGVkIGluIGhvc3RhcGQsIHNvIHlv
dSBoYXZlIHRvIGRvIHRoYXQgbWFudWFsbHkgYXMgaXQKPiBpcyBub3cuCj4gCj4+IGJ0dzoKPj4g
Cj4+IHFvc19tYXAgaW4gbXkgbWluZCwgZm9yIEFQcyBhdCB0aGlzIHBvaW50LCBzaG91bGQgZGVm
YXVsdCB0byB0aGUgYmVzdAo+PiBlZmZvcnQgcXVldWUgb25seS4gTm90IHN1cmUgaG93IHRvIHNl
dCB0aGF0IGluIG9wZW53cnQgKEkganVzdCBwYXRjaGVkCj4+IGl0IG91dCBvZiB0aGUga2VybmVs
KS4KPiAKPiBUaGluayBpdCdzIHBvc3NpYmxlIHRvIHNldCB0aGlzIGluIGhvc3RhcGQgY29uZmln
OyBoYXZlbid0IHRyaWVkIGl0Li4uCgoJSSBiZWxpZXZlIHRoYXQgT3BlbldydCdzIGhvc3RhcGQg
ZG9lcyBub3Qgc3VwcG9ydCB0aGF0IGZlYXR1cmUsIGF0IGxlYXN0IGl0IGRpZCBub3QgbGFzdCB5
ZWFyIHdoZW4gSSBsb29rZWQuLi4KCkJlc3QgUmVnYXJkcwoJU2ViYXN0aWFuCgo+IAo+IC1Ub2tl
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBDYWtl
IG1haWxpbmcgbGlzdAo+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4gaHR0cHM6Ly9saXN0
cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZm
ZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

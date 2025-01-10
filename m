Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E5875A09739
	for <lists+cake@lfdr.de>; Fri, 10 Jan 2025 17:24:22 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D4C4C3CB39;
	Fri, 10 Jan 2025 11:24:21 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1736526261;
	bh=pxuhAorwsWc9CJyUjM0xL0ixTHzNMy4VYI2sQkD4Dd8=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=MqTLl99ww6/wFECZSFAbfHBNrx0B68jsy+h5B3lJbAjtWXsunuuC5lPRu8IdYLIiv
	 LVfZ0PWeZzuT+TUuqXRDnO7t4Rp6ZHwUugM5Hg25DLboXpxKRTCAbtCC1R6hKbeQpq
	 tAMk8alzMiu9p8cVWEtsB2zM8KtIVAoKyqi0b+xgqEqeSAwTSt3HiPjnd9gVkyHG//
	 P8FdbiVBtp2gyYYez8ixwypMJNgmTBRiIWminrZbrwHVWoZGkbmBdh/KFCYysGzTvk
	 Dnsx+IF/E7puLXWrHl2TcWoz59qz4DB82fGo4b21/QI/9JUk7JuvWmhAI03kTWYRPu
	 yxD6fV8S9NyTg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4E76E3B29E
 for <cake@lists.bufferbloat.net>; Fri, 10 Jan 2025 11:24:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1736526256; x=1737131056; i=moeller0@gmx.de;
 bh=bgNtzWlJOeU2ffbejpw5rWKgVVZa2+8SB9FFW4VjgRM=;
 h=X-UI-Sender-Class:Content-Type:Mime-Version:Subject:From:
 In-Reply-To:Date:Cc:Content-Transfer-Encoding:Message-Id:
 References:To:cc:content-transfer-encoding:content-type:date:from:
 message-id:mime-version:reply-to:subject:to;
 b=kk6uqJWzVyUBbfXWpv0ke7+g3oYGfZWMbw5kFUnNcX4WsxOXBt5T7py3VPCA/gZC
 vhSw92G54bgOPrqg0mKeN0sx+X9YCDKVV2aPV03YBKpfrXQBLIYj+EiWgXv8DYZkN
 1yKhjcwAhD0Ja+Iqzzjaqhpj/XokpNtAtypzcP9J68Wq0wtxp6/48B/tSuEFFt9Su
 8vqR5Ma+/uBchXO3VtSlt5mMjiDDtutzyDLUfodicOdrTKpUHU/9MHIsAf80nBFZ2
 McmMzVCbf09qWlwd4jVWObOI2gSarPm/s9egd9kgmAYRjYjfX0RUgsasJxqb988t8
 LTs27oTQ8HEUP/W/WQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([77.8.251.184]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MRTN9-1tt3sj1fe9-00SYIg; Fri, 10
 Jan 2025 17:24:16 +0100
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.51.11.1\))
In-Reply-To: <20250110155531.300303-1-toke@redhat.com>
Date: Fri, 10 Jan 2025 17:24:05 +0100
Message-Id: <2FE6B2E2-9A34-47C1-B203-F0C424F00704@gmx.de>
References: <20250110155531.300303-1-toke@redhat.com>
To: =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
X-Mailer: Apple Mail (2.3776.700.51.11.1)
X-Provags-ID: V03:K1:J+op1QisOW68tMA3XWFnt3xe7HM0Y9hEFmzODjH39pIC9xpN9QM
 Yd/U3EOUzlXje6Yf2Sb25XISu5rxDw6bQ7m2lXnhe68yP++RUlYM/sMI73aVL5/mWJ9uyjO
 hfsojrMNnL3zSR2KHk3HBFog7Bvt2wC1Xxe170SXHrk+DtXiJ3+eggUv34ojNISt9b5uCrr
 z7Rb5/A0FT8q0CN70P1fQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Oytg154yqYM=;6jykLdMkwzV698/GhIYaeAga9MH
 CeqMc2EghXOE0nch0upRnRVKiANUo6+GKcCfGql5ZalSarpumvWFjJZJZPvZ6+IbyivjYWMW1
 Br8Cp5eNR2UJJypST5JXPlyNOgl1TG73p1fN0yeXLXPztjdy5mGDGq2IYnv0ENNI9Y/eECObI
 TPzxmQra1zMKjHty0NeIl8YdMWpLefYmHHMw9t1OsdWCuIztiBTUm+jsLHEiGWMEgMCOm45G7
 HPXc6ARAKKhi8uK18ZX6VJL3l8SE48233a9aeHdde3gWhiW1yYhTqbOQL7yA3qmCYP4sareh2
 mVkFWoRJWZ1i4BMM8nfwZNgTNPtNWedtRNd8Gjk0DBdrwD/95cSrZHpkv+Ufic81/9LsCyUB2
 7z3TxZLKlXsVF1xnOdEApurmIdz1fWJdqmmm/fQN5J8GNbUrzOqs0Eea/52Kf1GjsAOB2Z5Qy
 GHuzk3PHEWl2UA1PiABqQMKwGP9yHhGuLFr1UIfZ25R1OXE9f1p7st3ewN8qs0Q+3bd+c+tHl
 9241hSkIS9q65iBJpjww1sEcqrRq09C46ZRj31UAjnr4W1bOHFZjcKxEQl05ckbutLjOh10N5
 yF5s752ZP3KzWWoNgWth8NRa/6V3oz4ExE81Q+H+NyM3fjgfdPNpF3F+FUmlCjdWmSDwZsm9g
 2rz21yZ9YLpuEsihSI+YfdZuMYbC2M2y5zYAEL4b/K63RIpoaBlfNSZj/EM4Xr75Tsx2hlif7
 ZfysCTBlqn4hb1YXbu9Z2y8gpwoIOU7PksaGjvuqP9lyI0v4RlWtPkMnQGhcprkytfpoloT2m
 b7vktkSSxfy+w1X2/qcCV0RePa/MWM+ZjSjuimBxLWpTgpU2dHaglY7/iSEKtWphHm0QXQZM0
 LLzhS981tGfV+CgsDRpAm57QoJfN3LFPdGux5ccpXtdE08r4K509pTv5dhA+I/rwnf/dkiyuM
 vPSizcRZjka4L6LtLDyxr8aUPMZArGs0PS8qQMZum30Rw8v2NOAVQxsgkKbqm5qii/ENrUHNH
 UcdeSUJXZUDls5wbrcd5BObF09vTk8MKrxs8Qp5Fpv6FZTMpTPrsX1DkdWaV6wp3+HdTHKMwo
 BgQ8lhoQEsUadXOLnMFEquZ5ptou34
Subject: Re: [Cake] [PATCH net-next] sched: sch_cake: Align QoS treatment to
 Windows and Zoom
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
From: Sebastian Moeller via Cake <cake@lists.bufferbloat.net>
Reply-To: Sebastian Moeller <moeller0@gmx.de>
Cc: cake@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

TW1taC4gb2ZmIHRoZSBMaW51eCBsaXN0cy9mb2xrcyBmb3IgZGlzY3Vzc2lvbjoKCmNhbiBJIHBy
b3Bvc2UgdG8gZHJvcCBOUUIgZG93biB0byBCZXN0RWZmb3J0PyBUaGUgc3VwcG9zZWQgcmVxdWly
ZW1lbnRzIGZvciBOUUIgbWFya2luZyBzaG91bGQgbWFrZSB0aGVzZSBmbG93cyB0aHJpdmUgaW4g
YSBmbG93IGlzb2xhdGluZyBzY2hlZHVsZXIgbGlrZSBjYWtlIHdpdGhvdXQgYW55IHNwZWNpYWwg
dHJlYXRtZW50Li4uIG1vdmluZyBpdCB0byBWaWRlbyBvciB3b3JzZSBWb2ljZSByZWFsbHkgb25s
eSBpbnZpdGVzIGFidXNlLi4uCgoKCj4gT24gMTAuIEphbiAyMDI1LCBhdCAxNjo1NSwgVG9rZSBI
w7hpbGFuZC1Kw7hyZ2Vuc2VuIHZpYSBDYWtlIDxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4g
d3JvdGU6Cj4gCj4gRnJvbTogRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPgo+IAo+IENh
a2UncyBkaWZmc2VydjQgbW9kZSBhdHRlbXB0ZWQgdG8gZm9sbG93IHRoZSBJRVRGIHdlYnJ0Ywo+
IFFvUyBtYXJraW5nIHN0YW5kYXJkcywgUkZDODgzNy4KPiAKPiBJdCB0dXJucyBvdXQgV2luZG93
cyBRb1MgY2FuIG9ubHkgdXNlIENTMCwgQ1MxLCBDUzUsIGFuZCBDUzcuCgpOYWgsIGFwcGxpY2F0
aW9ucyBhcHBhcmVudGx5IGNhbiBvbmx5IHJlcXVlc3QgYSBzbWFsbCBzZXQgb2YgRFNDUHMsIGJ1
dCBpdCBpcyBwb3NzaWJsZSB0byBtYWtlIHdob2xlIGFwcGxpY2F0aW9ucyB1c2UgYSBkaWZmZXJl
bnQgRFNDUDoKZXhhbXBsZSBmb3IgbWFraW5nIHB1dHR5IHVzZSBFRgoKTmV3LU5ldFFvc1BvbGlj
eSAtTmFtZSAicHV0dHkiIC1BcHBQYXRoTmFtZU1hdGNoQ29uZGl0aW9uICJwdXR0eS5leGUiIC1Q
b2xpY3lTdG9yZSBBY3RpdmVTdG9yZSAtTmV0d29ya1Byb2ZpbGUgQWxsIC1EU0NQQWN0aW9uIDQ2
CgoKPiAKPiBab29tIGRlZmF1bHRzIHRvIHVzaW5nIENTNSBmb3IgdmlkZW8gYW5kIHNjcmVlbiBz
aGFyaW5nIHRyYWZmaWMuCgpab29tIGRlZmF1bHRzIHRvIHVzaW5nIENTMCAobXkgcGFja2V0IGNh
cHR1cmVzKSB1bmxlc3MgYW4gYWRtaW5zdHJhdG9yIGVuYWJsZXMgRFNDUHMsIHdoaWNoIEkgYXNz
dW1lIHdpbGwgb25seS9tb3N0bHkgaGFwcGVuIGZvciBidXNpbmVzcyBhY2NvdW50cy4KCgo+IEJ1
bXAgQ1M0LCBDUzUsIGFuZCBOUUIgdG8gdGhlIHZpZGVvIHRpbiAoMikgaW4gZGlmZnNlcnY0IG1v
ZGUsIGZvcgo+IG1vcmUgYmFuZHdpZHRoIGFuZCBsb3dlciBwcmlvcml0eS4KCkkgZG8gZW5kb3Jz
ZSB0aGF0LCBidXQgdGhhdCBjaGFuZ2Ugd2lsbCBhZmZlY3QgYWxsIGN1cnJlbnQgdXNlcnMgb2Yg
Y2FrZSBhcyBwYXJ0cyBvZiB0aGVpciBpbmRpdmlkdWFsIFFvUyBoaWVyYXJjaGllcy4KCj4gCj4g
VGhpcyBhbHNvIGJldHRlciBhbGlnbnMgd2l0aCBob3cgV2lGaSBwcmVzZW50bHkgdHJlYXRzIENT
NSBhbmQgTlFCLgoKVHdvIGlzc3VlczogaXQgaXMgbm90IHRoYXQgZGVmYXVsdCBXaUZpIHVzZXMg
YSBzYW5lIHN5c3RlbSB0byBiZWdpbiB3aXRoLCBhbmQgTlFCIElNSE8gc2hvdWxkIG5vdCBiZSBl
bGV2YXRlZCBpbiBwcmlvcml0eSB1bmxlc3MgaXQgaXMgYWxzbyBwb2xpY2VkIHdlbGwsIHNvbWV0
aGluZyBuZWl0aGVyIFdpRmkgbm9yIGNha2Ugd2lsbCBkbyBvdXQgb2YgdGhlIGJveC4KCgo+IAo+
IFNpZ25lZC1vZmYtYnk6IERhdmUgVGFodCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4KPiAtLS0K
PiBuZXQvc2NoZWQvc2NoX2Nha2UuYyB8IDQgKystLQo+IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL25ldC9zY2hlZC9zY2hf
Y2FrZS5jIGIvbmV0L3NjaGVkL3NjaF9jYWtlLmMKPiBpbmRleCA0OGRkOGM4ODkwM2YuLjJhOTI4
OGQ0Yjg3MyAxMDA2NDQKPiAtLS0gYS9uZXQvc2NoZWQvc2NoX2Nha2UuYwo+ICsrKyBiL25ldC9z
Y2hlZC9zY2hfY2FrZS5jCj4gQEAgLTMyOCw4ICszMjgsOCBAQCBzdGF0aWMgY29uc3QgdTggZGlm
ZnNlcnY0W10gPSB7Cj4gMSwgMCwgMCwgMCwgMCwgMCwgMCwgMCwKPiAyLCAwLCAyLCAwLCAyLCAw
LCAyLCAwLAo+IDIsIDAsIDIsIDAsIDIsIDAsIDIsIDAsCj4gLSAzLCAwLCAyLCAwLCAyLCAwLCAy
LCAwLAo+IC0gMywgMCwgMCwgMCwgMywgMCwgMywgMCwKPiArIDIsIDAsIDIsIDAsIDIsIDAsIDIs
IDAsCj4gKyAyLCAwLCAwLCAwLCAyLCAwLCAzLCAwLAo+IDMsIDAsIDAsIDAsIDAsIDAsIDAsIDAs
Cj4gMywgMCwgMCwgMCwgMCwgMCwgMCwgMCwKPiB9Owo+IC0tIAo+IDIuNDcuMQo+IAo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQ2FrZSBtYWlsaW5n
IGxpc3QKPiBDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Nha2UKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQu
bmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

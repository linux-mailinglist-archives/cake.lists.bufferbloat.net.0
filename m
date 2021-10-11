Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8022F4284CF
	for <lists+cake@lfdr.de>; Mon, 11 Oct 2021 03:41:35 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 647133CBCE;
	Sun, 10 Oct 2021 21:41:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1633916491;
	bh=/PS6a95fg1KxUwtLGu6fRjWZQ7emU9OE38Q5CdgZoe8=;
	h=To:References:In-Reply-To:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=d9Cd3x2F7JipYuyLXzTe22QscYa0eo5POUZoaTbo/nEQa2IvrfEQpfO3DJxify3Ka
	 bqb4fQfeTCSdTp8kq6n0+Tdm7O4Kdjpfsi2woKAvs1RbgiLv9D5fQm2bCbZ0cT0DNs
	 0upKMFscpH+PF7DX4FBSx6hhObP3l6PeNgV2d7dPAf7ZKOoI/NO6Mh+6P1LAhYlkxd
	 oNbEqpdogLY9CcCxCLhEC804z2PUBztLN1uvT76VcXogTYVZGCPXmuOs9I/KOZJsrm
	 VgJa4kiJgER6srPm6QUWF+3kjc2n/AQrTbGWfNlEyAXp/WR8u3ZcxbrLcpaOlx9SeL
	 mVpSGCmex6kNw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from cpanel.tc-mi.net (cpanel.tc-mi.net [198.109.107.12])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B581D3B29D;
 Sun, 10 Oct 2021 21:41:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=inacomptc.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Date:Subject:In-Reply-To:References:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lj5UPurrpo+2eDd/+JY2wf/PUnL7Bz3UKbEaD93J2EI=; b=izKSIBNGsv8UC29UbSBfWsTLmc
 3Ufo7c+5Ho7wW5dhcmuKtpcxhV+zoZ2iIaifhygR2KnzQGvG0kLbFq5cgC9f2ZrqoVf+Q1DFKyO/j
 cVGe21yFYnI/XC4eoGNmkT7pa/eW5WYATzamFt8TZNs8j3gAJAdKMm9f6dtQSjtF51blkgigtIcbT
 vgf2sikXrNfdwZc0aVwp6C2R2sevxsBkEIUR5LzFfempX+NZMnK0H8X4Zlr6o2+aHJa2OsE892CG8
 MqVWyRDqkwHMX74bQEosygbpMPaqQJ6TC0buf5a+/5zKE2eEXCHtKeZHX3DqGlPYrZElg58vsfaAf
 rc1h19mA==;
Received: from 097-083-001-186.res.spectrum.com ([97.83.1.186]:16247
 helo=DESKTOP0D7H4U1) by cpanel.tc-mi.net with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jordan@inacomptc.com>)
 id 1mZkJk-0007QN-W3; Sun, 10 Oct 2021 21:41:29 -0400
To: "'Dave Taht'" <dave.taht@gmail.com>
References: <CAA93jw7YkMv-F6cYj2PZ9pGiS1yapO5wpLJWmuje6p0fc54eEA@mail.gmail.com>
 <003001d7bdf0$97282430$c5786c90$@inacomptc.com>
 <CAA93jw5cefvMNe-6+gAWLVVsTYXE6JDpPXvYGrthNa-kjX-ixg@mail.gmail.com>
 <004901d7bdf2$8544e8a0$8fceb9e0$@inacomptc.com>
 <CAA93jw5P+xoKH13fQiwvUM4BxPPsKTSZ+jg9xP0+9LPFH6tVkA@mail.gmail.com>
 <00ce01d7be3d$ed5bfc30$c813f490$@inacomptc.com>
 <CAA93jw7d0w_8NzzoB9yy8kuq0ZqKZZ-D4dbg+TU2S6m9dAahfA@mail.gmail.com>
 <CAA93jw7iHVyzagrLYJArCxameLx96Pp9zeqGURDg=dv9uD=7Ww@mail.gmail.com>
In-Reply-To: <CAA93jw7iHVyzagrLYJArCxameLx96Pp9zeqGURDg=dv9uD=7Ww@mail.gmail.com>
Date: Sun, 10 Oct 2021 21:41:28 -0400
Message-ID: <00e501d7be41$1d041f00$570c5d00$@inacomptc.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJoRh1+isobeJQa+Kydtt3dT7fxBgJY5XOFAbYyNIkBKHbDvQJgaKIsAqaAxcMBYr3W5AKsJ5lDqjmKjnA=
Content-Language: en-us
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.tc-mi.net
X-AntiAbuse: Original Domain - lists.bufferbloat.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - inacomptc.com
X-Get-Message-Sender-Via: cpanel.tc-mi.net: authenticated_id:
 jordan@inacomptc.com
X-Authenticated-Sender: cpanel.tc-mi.net: jordan@inacomptc.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: [Cake] [Bloat] some mikrotik comments
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
From: Jordan Szuch via Cake <cake@lists.bufferbloat.net>
Reply-To: Jordan Szuch <jordan@inacomptc.com>
Cc: 'Cake List' <cake@lists.bufferbloat.net>,
 'bloat' <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

R290IGl0LCBJJ2xsIGxldCBpdCBydW4gYXQgMTA1IGhlcmUgc2hvcnRseS4KCkhhaGFoYSwgZml2
ZSBtaW51dGVzIGl0IGlzISBJJ2xsIGNoZWNrIG91dCB0aGUgc29uZyB5b3UgbGlua2VkIGluIHRo
ZSBtZWFudGltZS4gVGltaW5nIGlzIHdvcmtpbmcgb3V0IGFuZCBoYXZpbmcgYSBsaXR0bGUgZnVu
IHRlc3RpbmcgdGhpcyBvdXQsIHNvIGl0J3MgYWxsIGdvb2QuCgotLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQpGcm9tOiBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+IApTZW50OiBTdW5k
YXksIE9jdG9iZXIgMTAsIDIwMjEgOTozOCBQTQpUbzogSm9yZGFuIFN6dWNoIDxqb3JkYW5AaW5h
Y29tcHRjLmNvbT4KQ2M6IENha2UgTGlzdCA8Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+OyBi
bG9hdCA8YmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0PgpTdWJqZWN0OiBSZTogW0Jsb2F0XSBz
b21lIG1pa3JvdGlrIGNvbW1lbnRzCgpydW4gIzUgYXQgMTA1IGxvb2tzIGNvcnJlY3QuIEhvd2V2
ZXIgd2UgYXJlIGdldHRpbmcgdGhyb3R0bGVkIGVsc2V3aGVyZSBtb3N0IGxpa2VseSBhdCB0KzQw
IHNlYy4gSXQgY291bGQgYmUgaW4gbXkgbmV3IChzdGFybGluaykgY2xvdWQgb3IgYXQgc3BlY3Ry
dW0uLi4KCnRoeCBqb3JkYW4gZm9yIHRoZSByYXBpZCB0dXJuYXJvdW5kISEgWW91IGNhbiB0cnkg
cnVubmluZyB0aGUgdGVzdCBmb3IKNSBtaW51dGVzICgtbCAzMDApIHNvIGFzIHRvIGdldCBhIG11
c2ljYWwgYnJlYWsuIDopCgpPbiBTdW4sIE9jdCAxMCwgMjAyMSBhdCA2OjIzIFBNIERhdmUgVGFo
dCA8ZGF2ZS50YWh0QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBzdGlsbCBhIGJpdCBwdXp6bGluZywg
c2hvdWxkbid0IHNlZSB0aGF0IHN5bmNlZCBkcm9wIG9uIHRoZSBkb3duLiB0cnkKPiAxMDUgb24g
dGhlIGRvd24/IE9yIGxlc3M/Cj4KPiBPbiBTdW4sIE9jdCAxMCwgMjAyMSBhdCA2OjE4IFBNIEpv
cmRhbiBTenVjaCA8am9yZGFuQGluYWNvbXB0Yy5jb20+IHdyb3RlOgo+ID4KPiA+IERvbmUhIFNo
b3VsZCBmaW5lIHRoZSByZXN1bHRzIGluIHRoZSBzYW1lIHNoYXJlZCBmb2xkZXJzIEkgcHJvdmlk
ZWQgZWFybGllciB1bmRlciAiUnVuICMzIgo+ID4KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tCj4gPiBGcm9tOiBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+Cj4gPiBTZW50OiBT
dW5kYXksIE9jdG9iZXIgMTAsIDIwMjEgOTowNSBQTQo+ID4gVG86IEpvcmRhbiBTenVjaCA8am9y
ZGFuQGluYWNvbXB0Yy5jb20+Cj4gPiBDYzogQ2FrZSBMaXN0IDxjYWtlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldD47IGJsb2F0IAo+ID4gPGJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4KPiA+IFN1
YmplY3Q6IFJlOiBbQmxvYXRdIHNvbWUgbWlrcm90aWsgY29tbWVudHMKPiA+Cj4gPiBjb3VsZCB5
b3UgdHJ5IHRoZSBycnVsIHRlc3QgKHNoYXBlZC91bnNoYXBlZCkgYXQgdGhpcyBib3g/Ogo+ID4g
ZGFsbGFzLnN0YXJsaW5rLnRhaHQubmV0Cj4gPgo+ID4KPiA+IE9uIFN1biwgT2N0IDEwLCAyMDIx
IGF0IDk6MTggQU0gSm9yZGFuIFN6dWNoIDxqb3JkYW5AaW5hY29tcHRjLmNvbT4gd3JvdGU6Cj4g
PiA+Cj4gPiA+IE9LLCBJJ2xsIGdpdmUgaXQgYSBzaG90ISBQbGVhc2UgZm9yZ2l2ZSBtZSBoZXJl
IGFzIEkgaGF2ZW4ndCByZWFsbHkgcnVuIGZsZW50IGJlZm9yZS4gV291bGQgcnVubmluZyBzb21l
dGhpbmcgbGlrZSB3aGF0J3MgbGlzdGVkIGluIHRoZSBRdWljayBTdGFydCBoZXJlIChodHRwczov
L2ZsZW50Lm9yZy9pbnRyby5odG1sI3F1aWNrLXN0YXJ0KSBiZSBzdWZmaWNpZW50Pwo+ID4gPgo+
ID4gPiBKb3JkYW4KPiA+ID4KPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+ID4g
RnJvbTogRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPgo+ID4gPiBTZW50OiBTdW5kYXks
IE9jdG9iZXIgMTAsIDIwMjEgMTI6MTEgUE0KPiA+ID4gVG86IEpvcmRhbiBTenVjaCA8am9yZGFu
QGluYWNvbXB0Yy5jb20+Cj4gPiA+IENjOiBDYWtlIExpc3QgPGNha2VAbGlzdHMuYnVmZmVyYmxv
YXQubmV0PjsgYmxvYXQgCj4gPiA+IDxibG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+Cj4gPiA+
IFN1YmplY3Q6IFJlOiBbQmxvYXRdIHNvbWUgbWlrcm90aWsgY29tbWVudHMKPiA+ID4KPiA+ID4g
SXQncyBmbGVudC5vcmcgcnJ1bCB0ZXN0IG91dHB1dCB0aGF0IEkgbG92ZS4KPiA+ID4KPiA+ID4g
T24gU3VuLCBPY3QgMTAsIDIwMjEgYXQgOTowNSBBTSBKb3JkYW4gU3p1Y2ggdmlhIEJsb2F0IDxi
bG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQ+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gSGkgRGF2
ZSwKPiA+ID4gPgo+ID4gPiA+IEludGVyZXN0aW5nIHRoYXQgeW91IHNob3VsZCBzZW5kIHRoaXMg
b3V0OyBJIHJlY2VudGx5IHBpY2tlZCB1cCBhIHVuaXQgKHRoaXMgb25lIHNwZWNpZmljYWxseTog
aHR0cHM6Ly9taWtyb3Rpay5jb20vcHJvZHVjdC9oYXBfYWMyKSB0byBkbyBzb21lIHRlc3Rpbmcg
b2YgdGhlIHY3IGZpcm13YXJlLiBOb3RoaW5nIHN1cGVyIGhpZ2ggZW5kIGJ1dCBlbm91Z2ggdG8g
ZG8gYSBsaXR0bGUgdGVzdGluZy4gSSBoYXZlIENBS0Ugc2V0IHRvIGRvIHNvbWUgc2hhcGluZyBh
bmQgc28gZmFyIHNlZW1zIGZ1bmN0aW9uYWwuIEF0IGxlYXN0IHRoZSBidWZmZXJibG9hdCBzcGVl
ZCB0ZXN0cyBmcm9tIERTTFJlcG9ydHMgYW5kIFdhdmVGb3JtIGluZGljYXRlIHNvbWUgc2hhcGlu
ZyBpcyBoYXBwZW5pbmcuIElmIHlvdSdkIGxpa2UgYW55IGluZm9ybWF0aW9uIGFib3V0IHRoZSB1
bml0LCB0aGUgdjcgZmlybXdhcmUsIG9yIHBhcnRpY3VsYXIgdGVzdHMgcnVuIHRoZW4gSSdkIGJl
IGhhcHB5IHRvIGhlbHAgb3V0Lgo+ID4gPiA+Cj4gPiA+ID4gSm9yZGFuCj4gPiA+ID4KPiA+ID4g
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gPiA+IEZyb206IEJsb2F0IDxibG9hdC1i
b3VuY2VzQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gT24gQmVoYWxmIE9mIAo+ID4gPiA+IERhdmUg
VGFodAo+ID4gPiA+IFNlbnQ6IFN1bmRheSwgT2N0b2JlciAxMCwgMjAyMSAxMTozOSBBTQo+ID4g
PiA+IFRvOiBDYWtlIExpc3QgPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0PjsgYmxvYXQgCj4g
PiA+ID4gPGJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4KPiA+ID4gPiBTdWJqZWN0OiBbQmxv
YXRdIHNvbWUgbWlrcm90aWsgY29tbWVudHMKPiA+ID4gPgo+ID4gPiA+IHRoZSB2NyBiZXRhIGdh
aW5lZCBkb2MgYW5kIG1vcmUgb3Mgc3VwcG9ydCBmb3IgZnFfY29kZWwgYW5kIGNha2UgCj4gPiA+
ID4gcmVjZW50bHkKPiA+ID4gPgo+ID4gPiA+IGh0dHBzOi8vZm9ydW0ubWlrcm90aWsuY29tL3Zp
ZXd0b3BpYy5waHA/cD04ODUwMDAjcDg4NTAwMAo+ID4gPiA+Cj4gPiA+ID4gYW55b25lIG91dCB0
aGVyZSBhY3RpdmVseSB0ZXN0aW5nIG1pa3JvdGlrPwo+ID4gPiA+Cj4gPiA+ID4gLS0KPiA+ID4g
PiBGaXhpbmcgU3RhcmxpbmsncyBMYXRlbmNpZXM6Cj4gPiA+ID4gaHR0cHM6Ly93d3cueW91dHVi
ZS5jb20vd2F0Y2g/dj1jOWdMbzZYcndndwo+ID4gPiA+Cj4gPiA+ID4gRGF2ZSBUw6RodCBDRU8s
IFRla0xpYnJlLCBMTEMKPiA+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+ID4gPiA+IEJsb2F0IG1haWxpbmcgbGlzdAo+ID4gPiA+IEJsb2F0QGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+ID4gPiA+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0
L2xpc3RpbmZvL2Jsb2F0Cj4gPiA+ID4KPiA+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiA+IEJsb2F0IG1haWxpbmcgbGlzdAo+ID4gPiA+
IEJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+ID4gPiA+IGh0dHBzOi8vbGlzdHMuYnVmZmVy
YmxvYXQubmV0L2xpc3RpbmZvL2Jsb2F0Cj4gPiA+Cj4gPiA+Cj4gPiA+Cj4gPiA+IC0tCj4gPiA+
IEZpeGluZyBTdGFybGluaydzIExhdGVuY2llczoKPiA+ID4gaHR0cHM6Ly93d3cueW91dHViZS5j
b20vd2F0Y2g/dj1jOWdMbzZYcndndwo+ID4gPgo+ID4gPiBEYXZlIFTDpGh0IENFTywgVGVrTGli
cmUsIExMQwo+ID4gPgo+ID4KPiA+Cj4gPiAtLQo+ID4gRml4aW5nIFN0YXJsaW5rJ3MgTGF0ZW5j
aWVzOiAKPiA+IGh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9YzlnTG82WHJ3Z3cKPiA+
Cj4gPiBEYXZlIFTDpGh0IENFTywgVGVrTGlicmUsIExMQwo+ID4KPgo+Cj4gLS0KPiBGaXhpbmcg
U3RhcmxpbmsncyBMYXRlbmNpZXM6IAo+IGh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9
YzlnTG82WHJ3Z3cKPgo+IERhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCgoKCi0tCkZpeGlu
ZyBTdGFybGluaydzIExhdGVuY2llczogaHR0cHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1j
OWdMbzZYcndndwoKRGF2ZSBUw6RodCBDRU8sIFRla0xpYnJlLCBMTEMKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VA
bGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3Rp
bmZvL2Nha2UK

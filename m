Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DE819EDE7
	for <lists+cake@lfdr.de>; Sun,  5 Apr 2020 22:17:49 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1D0473CB41;
	Sun,  5 Apr 2020 16:17:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1586117863;
	bh=+ZbQEpuwvC839hltVmOmS/nVcszcp+eoP1tu46aDEHk=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ktuAezovII9yJeojzRBeVTndSslanRcJoILgHPSCto88qZXfBDWJ+SdBQs7G255gy
	 yNLfEh8+0BGVZYI9Jd5IRiVDN8qz6A/tEveEvlG4O2VCnB4gT4xb6Ek3CPi3kitmnz
	 6IEVAP4VhjS81YsErVCN2S2NM8mx2GYn9t7wzeyOcL10reANoGBJJAXCAjxFooEFe7
	 IsQhUdPR2CDIUlX7Pv8XglOgcpBhQEW/ko9SA0nwcSh72O2RleB6C2taqtaJLdZC3w
	 sf417eW7ln39cZC9/fz5PNvJ36ioxUbpeRYcrENnU+9pF+a7Ypk47Df9TyEebcqZMd
	 EpiJWi09chM9Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp107.iad3a.emailsrvr.com (smtp107.iad3a.emailsrvr.com
 [173.203.187.107])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7372C3B29E
 for <cake@lists.bufferbloat.net>; Sun,  5 Apr 2020 16:17:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1586117861;
 bh=ic7WocujlZqdltrsrX6esSxMvUdooEq+aYJaX1U+TFU=;
 h=Date:Subject:From:To:From;
 b=PcjIgqjjWvjffiqo4GnsDzbcUHlsyEGvvQQqAe3F9CArFyMKDXPjXGvGugi3spQ76
 Hk2QpjrXlQqq8UnBVrD5PYiBr/obFABWfwPAlylbEQQYDRncnhV3YCXc6GfMd9KqQP
 YRNRkH5BUeTQ5aKgn7YCgqM3peqC+x/fpnOo8Fq0=
Received: from app33.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp22.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id E810B4689;
 Sun,  5 Apr 2020 16:17:40 -0400 (EDT)
X-Sender-Id: dpreed@deepplum.com
Received: from app33.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140]) by 0.0.0.0:25 (trex/5.7.12);
 Sun, 05 Apr 2020 16:17:41 -0400
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app33.wa-webapps.iad3a (Postfix) with ESMTP id D2E29E12EC;
 Sun,  5 Apr 2020 16:17:40 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Sun, 5 Apr 2020 16:17:40 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Sun, 5 Apr 2020 16:17:40 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Dave Taht" <dave.taht@gmail.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: plain
In-Reply-To: <CAA93jw4wDVyh9ZwXMuDt0=c0JTKVKkMG9WGnR5wJ1TYUh+LTjw@mail.gmail.com>
References: <CALQXh-P1JGWHXQYnRd68woqj-C8CLxaxeD5=4xjYLYiLubkSeQ@mail.gmail.com> 
 <1586011622.632930657@apps.rackspace.com> 
 <CAA93jw7CDCVfY0pspLbSaSqf2_0s_23oXsGfEy1x_MHQKEkUNQ@mail.gmail.com> 
 <CALQXh-Ot+ZE8M9num31K173pWF5SqDMFizjgUcP13ZCw06KhXw@mail.gmail.com> 
 <CAA93jw4wDVyh9ZwXMuDt0=c0JTKVKkMG9WGnR5wJ1TYUh+LTjw@mail.gmail.com>
Message-ID: <1586117860.861216157@apps.rackspace.com>
X-Mailer: webmail/17.3.5-RC
X-Classification-ID: 0d2acd3e-0f94-4d2a-93d9-8194e805d940-1-1
Subject: Re: [Cake] [Bloat]  New board that looks interesting
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
 Aaron Wood <woody77@gmail.com>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RllJIC0gRmVkb3JhIDMxIGNvbnRpbnVlZCBub3QgdHJ5aW5nIHRvICJtYWtlIG15IGxpZmUgZWFz
aWVyIiBieSBpbnZlbnRpbmcgbmV3IHBhY2thZ2luZyBhbmQgY29udGFpbmVyaXphdGlvbiBpbiB0
aGUgYmFzZSBkaXN0cm8uIEkgdGhpbmsgdGhlIGZvbGtzIHdobyBtYWtlIFVidW50dSB0aGluayBp
dCBpcyBhIGNvbnN1bWVyIHByb2R1Y3QuICBNYWtpbmcgaXQgaGFyZGVyIHRvIHNlbGYtY29uZmln
dXJlIGluIGRldmVsb3Blci1oYWNrZXIgZnJpZW5kbHkgd2F5cy4KCkkgZXhwZWN0IEZlZG9yYTMy
IHdpbGwgaGF2ZSBXaXJlZ3VhcmQgKGlmIG5vdCBlYXJsaWVyKS4KCk9uIFNhdHVyZGF5LCBBcHJp
bCA0LCAyMDIwIDE6MzZwbSwgIkRhdmUgVGFodCIgPGRhdmUudGFodEBnbWFpbC5jb20+IHNhaWQ6
Cgo+IEkgdGhpbmsgSSdsbCB3YWl0IGZvciB5J2FsbCB0byB0cnkgaXQgYW5kIHJlcG9ydCBiYWNr
LiBJIHRydXN0IG15Cj4gYXB1MnMgYW5kIEkgYWN0dWFsbHkga2luZCBvZiBsaWtlIHRoZXkgbGFj
ayBhIGdyYXBoaWNzIGNoaXAgYW5kIG5lZWQKPiB0byBiZSBjb25maWd1cmVkIHZpYSBzZXJpYWwg
cG9ydC4KPiAKPiBJbiBvdGhlciBuZXdzIEkndmUgc3RhcnRlZCB0ZXN0aW5nIHVidW50dSAyMC40
LCB3aGljaCBhbW9uZyBvdGhlcgo+IHRoaW5ncywgaGFzIHdpcmVndWFyZCBpbiBpdC4gSSd2ZSBi
ZWVuIHJlYWxseSBmcnVzdHJhdGVkIHdpdGggdGhlCj4gc3RhdGUgb2YgZGlzdHJpYnV0aW9ucyBs
YXRlbHksIHRyeWluZyB0byBnZXQgYW55IGNvbXBsZXggdGhpbmcgZG9uZQo+IGhhcyByZXF1aXJl
ZCBzbmFwcyBhbmQgZG9ja2VyIGNvbnRhaW5lcnMgYW5kIEkgcmVhbGx5IHByZWZlciBydW5uaW5n
Cj4gc3R1ZmYgbmF0aXZlbHkgd2hlbiBwb3NzaWJsZS4gVG9vbHMgdGhhdCBJIHN0aWxsIHJlbHkg
b24gbGlrZSBtcnRnIGFuZAo+IHNtb2tlcGluZyBhcmUgdW5kZXJtYWludGFpbmVkLCB0cnlpbmcg
dG8gZ2V0IHpvbmVtaW5kZXIgdG8gY28tZXhpc3QKPiBhbmQgY28taW5zdGFsbCB3aXRoIGFueXRo
aW5nIGVsc2UgKG5vdGFibHkgaml0c2kgdGh1cyBmYXIpIGhhcyBiZWVuIGEKPiByZWFsIFBJVEEu
Cj4gCj4gSSBhbSBwbGVhc2VkIGF0IHRoZSBpbmNyZWFzaW5nIHNpemUgb2YgdGhlIGlwdjYgZGVw
bG95bWVudCwgbXkgcGhvbmUKPiBnb3QgaXQgbGFzdCBtb250aC4uLi4KPiAKPiBJIHRoaW5rIEkn
dmUgZm91bmQgYSBiYWJlbCBidWcgd2l0aCBkZWZhdWx0IHJvdXRlcy4uLgo+IAo+IGFuZCBJIGZp
cmVkIHVwIGEga2VybmVsIGJ1aWxkIHRvIGdvIGhhY2sgb24gdGhlIGF4MjAwIGNoaXBzLgo+IAo+
IE9uIFNhdCwgQXByIDQsIDIwMjAgYXQgOToyNyBBTSBBYXJvbiBXb29kIDx3b29keTc3QGdtYWls
LmNvbT4gd3JvdGU6Cj4+Cj4+IFRoZSBjb21wYXJpc29uIG9mIGNoaXBzZXQgcGVyZm9ybWFuY2Ug
bGluayAodG8gT3BlbVdSVCBmb3J1bXMpIHRoYXQgd2VudCBvdXQgaGFkCj4+IHRoaXMgY2hpcCwg
dGhlIEo0MTA1IGFzIHRoZSBmYXN0ZXN0LiAgQWJsZSB0byBkbyBhIGdpZ2FiaXQgd2l0aCBjYWtl
IChuZWFybHkgYWJsZQo+PiB0byBkbyBpdCBpbiBib3RoIGRpcmVjdGlvbnMpLgo+Pgo+PiBJIHRo
aW5rIHRoaXMgaGFzIHJlcGxhY2VkIHRoZSBhcHUyIGFzIHRoZSBib2FyZCBJ4oCZbSBnb2luZyB3
aXRoIGFzIG15IGVkZ2UKPj4gcm91dGVyLgo+Pgo+PiBPbiBTYXQsIEFwciA0LCAyMDIwIGF0IDk6
MTAgQU0gRGF2ZSBUYWh0IDxkYXZlLnRhaHRAZ21haWwuY29tPiB3cm90ZToKPj4+Cj4+PiBIaXN0
b3JpY2FsbHkgSSd2ZSBmb3VuZCB0aGUgIkNlbGVyb24iIGNoaXBzIHJhdGhlciB3ZWFrLCBidXQg
aXQncyBqdXN0Cj4+PiBhIGJyYW5kLiBJIGhhdmVuJ3QgdGhlIGZvZ2dpZXN0IGlkZWEgaG93IHdl
bGwgdGhpcyB2YXJpYW50IHdpbGwKPj4+IHBlcmZvcm0uCj4+Pgo+Pj4gVGhlIGludGVsIGV0aGVy
bmV0IGNoaXBzIGFyZSBiZXN0IG9mIGJyZWVkIGluIGxpbnV4LCBob3dldmVyLiBJdCdzCj4+PiBi
ZWVuIG15IGhvcGUgdGhhdCB0aGUgMjExIHZhcmlhbnQgd2l0aCB0aGUgdGltZWQgbmV0d29ya2lu
ZyBzdXBwb3J0Cj4+PiB3b3VsZCBzaG93IHVwIGluIHRoZSBmaWVsZCAoc2NoX2V0eCkgc28gd2Ug
Y291bGQgZmlkZGxlIHdpdGggdGhhdCwKPj4+ICh0aGUgYXB1MnMgYXJlbid0IHVzaW5nIHRoYXQg
dmVyc2lvbikgYnV0IEkgY2Fubm90IGZvciB0aGUgbGlmZSBvZiBtZQo+Pj4gcmVtZW1iZXIgdGhl
IHJpZ2h0IGtleXdvcmRzIHRvIGxvb2sgaXQgdXAgYXQgdGhlIG1vbWVudC4gdGhpcyBmZWF0dXJl
Cj4+PiBsZXRzIHlvdSBwcm9ncmFtIHdoZW4gYSBwYWNrZXQgZW1lcmdlcyBmcm9tIHRoZSBkcml2
ZXIgYW5kIGlzIHNvcnQgb2YKPj4+IGEgd2hvbGUgbmV3IGJhbGxnYW1lIHdoZW4gaXQgY29tZXMg
dG8gc2NoZWR1bGluZyAtIHRoZXJlIGhhc24ndCBiZWVuCj4+PiBhbiBhcW0gZGVzaWduZWQgZm9y
IGl0LCBhbmQgeW91IGNhbiBkbyBmcSBieSBwbGF5aW5nIHRyaWNrcyB3aXRoIHRoZQo+Pj4gc2Vu
dCB0aW1lc3RhbXAuCj4+Pgo+Pj4gQWxsIHRoZSBvdGhlciBmZWF0dXJlcyBsb29rIHJhdGhlciBu
aWNlIG9uIHRoaXMgYm9hcmQuCj4+Pgo+Pj4gT24gU2F0LCBBcHIgNCwgMjAyMCBhdCA3OjQ3IEFN
IERhdmlkIFAuIFJlZWQgPGRwcmVlZEBkZWVwcGx1bS5jb20+IHdyb3RlOgo+Pj4gPgo+Pj4gPiBU
aGFua3MhIEkgb3JkZXJlZCBvbmUganVzdCBub3cuIEluIG15IGV4cGVyaWVuY2UsIHRoaXMgY29t
cGFueSBkb2VzIHJhdGhlcgo+Pj4gbmVhdCBzdHVmZi4gVGhlaXIgWE1PUyBiYXNlZCBtaWNyb3Bo
b25lIGFycmF5IChSZVNwZWFrZXIpIGlzIHJlYWxseSB1c2VmdWwuCj4+PiBXaGF0J3MgdGhlIHN0
YXRlIG9mIHBsYXkgaW4gTGludXgvT3BlbldSVCBmb3IgSW50ZWwgOTU2MCBjYXBhYmlsaXRpZXMK
Pj4+IHJlZ2FyZGluZyBBUU0/Cj4+PiA+Cj4+PiA+IE9uIFNhdHVyZGF5LCBBcHJpbCA0LCAyMDIw
IDEyOjEyYW0sICJBYXJvbiBXb29kIiA8d29vZHk3N0BnbWFpbC5jb20+IHNhaWQ6Cj4+PiA+Cj4+
PiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+
ID4gPiBDYWtlIG1haWxpbmcgbGlzdAo+Pj4gPiA+IENha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0
Cj4+PiA+ID4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo+Pj4g
PiA+IGh0dHBzOi8vd3d3LnNlZWVkc3R1ZGlvLmNvbS9PRFlTU0VZLVg4Nko0MTA1ODAwLXAtNDQ0
NS5odG1sCj4+PiA+ID4KPj4+ID4gPiBxdWFkLWNvcmUgQ2VsZXJvbiBKNDEwNSAxLjUtMi41IEdI
eiB4NjQKPj4+ID4gPiA4R0IgUmFtCj4+PiA+ID4gMnggaTIxMXQgaW50ZWwgZXRoZXJuZXQgY29u
dHJvbGxlcnMKPj4+ID4gPiBpbnRlbCA5NTYwIDgwMi4xMWFjICh3YXZlMikgd2lmaS9ibHVldG9v
dGggY2hpcHNldAo+Pj4gPiA+IGludGVsIGJ1aWx0LWluIGdyYXBoaWNzCj4+PiA+ID4gb25ib2Fy
ZCBBUk0gQ29ydGV4LU0wIGFuZCBSUGkgJiBBcmR1aW5vIGhlYWRlcnMKPj4+ID4gPiBtLjIgYW5k
IFBDSWUgYWRhcHRlcnMKPj4+ID4gPiA8JDIwMAo+Pj4gPiA+Cj4+PiA+Cj4+PiA+Cj4+PiA+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiA+IEJsb2F0
IG1haWxpbmcgbGlzdAo+Pj4gPiBCbG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQKPj4+ID4gaHR0
cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vYmxvYXQKPj4+Cj4+Pgo+Pj4KPj4+
IC0tCj4+PiBNYWtlIE11c2ljLCBOb3QgV2FyCj4+Pgo+Pj4gRGF2ZSBUw6RodAo+Pj4gQ1RPLCBU
ZWtMaWJyZSwgTExDCj4+PiBodHRwOi8vd3d3LnRla2xpYnJlLmNvbQo+Pj4gVGVsOiAxLTgzMS00
MzUtMDcyOQo+Pgo+PiAtLQo+PiAtIFNlbnQgZnJvbSBteSBpUGhvbmUuCj4gCj4gCj4gCj4gLS0K
PiBNYWtlIE11c2ljLCBOb3QgV2FyCj4gCj4gRGF2ZSBUw6RodAo+IENUTywgVGVrTGlicmUsIExM
Qwo+IGh0dHA6Ly93d3cudGVrbGlicmUuY29tCj4gVGVsOiAxLTgzMS00MzUtMDcyOQo+IAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGlu
ZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxv
YXQubmV0L2xpc3RpbmZvL2Nha2UK

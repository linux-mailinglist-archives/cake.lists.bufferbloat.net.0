Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 671357413D5
	for <lists+cake@lfdr.de>; Wed, 28 Jun 2023 16:32:41 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8579B3CB43;
	Wed, 28 Jun 2023 10:32:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1687962754;
	bh=OP5H/FF7qmoFADpuuZPa4p6sbpvJ5Um8Cyc0K1hwVwM=;
	h=Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:Cc:From;
	b=kDJvJysqcwDSdTgcxC7o3lfSxAB8KmmdjGPmTAmhn1tzBY3E0S6O0+pwiIGTJPZwH
	 oO3y/bVfLNP8FHWYZn2t0XWhz09dZeJe/KAMbju1XEGyfLnwkGLuq5FvEE7qSiiFY0
	 thZ3Itbg/EUvAVJATgfLkobFzqWolp6N8dauhJiEclVrRJllb6Ism29u2qq6l2R6FJ
	 BYBxvu4tjqBZeU2AHumAIqXB2v+hSG/tyq5DIpigUiXH6OPHVdVaYWCL8NvyyPFYBx
	 GK/wIXPyeUVJyB171ejtzadYNf/OvDSfrI6p0IZZ1UX3Ydn2XYaY3Qwi8p8dojWzKs
	 mOcFyX7CcB5hw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp79.iad3a.emailsrvr.com (smtp79.iad3a.emailsrvr.com
 [173.203.187.79])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 247FD3B29E
 for <cake@lists.bufferbloat.net>; Wed, 28 Jun 2023 10:32:33 -0400 (EDT)
Received: from app38.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp10.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 76F075E11;
 Wed, 28 Jun 2023 10:32:32 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app38.wa-webapps.iad3a (Postfix) with ESMTP id 5FC3FE1C20;
 Wed, 28 Jun 2023 10:32:32 -0400 (EDT)
Received: by mobile.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Wed, 28 Jun 2023 10:32:32 -0400 (EDT)
Date: Wed, 28 Jun 2023 10:32:32 -0400 (EDT)
To: "Dave Taht via Cake" <cake@lists.bufferbloat.net>
MIME-Version: 1.0
Message-ID: <1687962752.39077378@mobile.rackspace.com>
X-Mailer: mobile/8.0.1
X-Classification-ID: 21dadc89-6915-4e83-914b-1632587be3af-1-1
Subject: Re: [Cake] [Bloat] Two questions re high speed congestionmanagement
	anddatagram protocols
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
From: "David P. Reed via Cake" <cake@lists.bufferbloat.net>
Reply-To: "David P. Reed" <dpreed@deepplum.com>
Cc: cake@lists.bufferbloat.net, bloat@lists.bufferbloat.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SG93IHRvIGZpbmQgYSBrZXJuZWwgbWFpbnRhaW5lciB0byBjYXJlIGFib3V0IERDQ1AsIHNlZW1z
IHRvIGJlIHRoZSBxdWVzdGlvbiBmb3IgTGludXguCkkgYW0gdGVtcHRlZC4uLiBOb3QgdG8gZ2V0
IGludm9sdmVkIHdpdGggSUVURiAiYmFycmllcnMiICh3aGF0IGEgbWVzcywgZ2l2ZW4gdGhlIGZv
bGtzIGluIElFVEYgd2hvIHJlc2lzdGVkIGluIEFRTSwgSSB3b3VsZG4ndCBsYXN0IGEgbWludXRl
KSwgYnV0IHRvIGtlZXAgRENDUCBzdXBwb3J0IGFsaXZlLgpUaGUgYmFycmllciBoZXJlIGlzIGdl
dHRpbmcgYWNjZXB0ZWQgYXMgYSBMaW51eCBtYWludGFpbmVyLCB3aGljaCBpcyBhIGRpZmZlcmVu
dCBpc3N1ZSBlbnRpcmVseSwgbG9va2luZyBhdCBteSBsYXN0IHR3byBleHBlcmllbmNlcyB3aXRo
IHN1Ym1pdHRpbmcgc2ltcGxlIGJ1ZyBmaXhlcyB0byB0aGUga2VybmVsLCB3aGljaCB3ZXJlIG5p
Z2h0bWFyZXMuIEkgZG9uJ3QgaGF2ZSB0aGUgY29tbWl0bWVudCB0byBiZWNvbWUgYWNjZXB0ZWQg
YXMgYSBtYWludGFpbmVyLgpCdXQgaXQgc2VlbXMgZ29vZCB0byBtYWludGFpbiBEQ0NQLCBkZXNw
aXRlIGl0cyBsYWNrIG9mIHBvcHVsYXJpdHkgYXMgYW4gSUVURiBzdGFuZGFyZC4gSXQgZG9lcyBk
ZWFsIHdpdGggQ0MgaW4gYSB3YXkgdGhhdCBzaW1wbGlmaWVzIHVzZSBvZiBVRFAgZm9yIHNlcmlv
dXMgd29yay4KCihPbmUgc3VjaCBuaWdodG1hcmUgY2FuIGJlIHNlZW4gaW4gTEtNTC4uLiBTZWFy
Y2ggZm9yIGRwcmVlZEBkZWVwcGx1bS5jb20gcGF0Y2ggZW1haWxzLiBJIHRyaWVkIGhhcmQsIHdh
cyB3b3JuIGRvd24sIHRoZW4gZ2F2ZSB1cCwgc2luY2UgSSBmb3VuZCBhIHdheSB0byBhdm9pZCB0
aGUgYnVnLCBpbiB2aXJ0dWFsaXphdGlvbiBjb2RlIG9uIHg4NiwgYW5kIGdhdmUgdXAgb24gZ2V0
dGluZyBpdCBmaXhlZCBhZnRlciBhIHllYXIuIExpZmUgaXMgdG9vIHNob3J0LiBUaGUgcHJpb3Ig
b25lIHdhcyBhbG1vc3QgMjAgeWVhcnMgYWdvIHdoZW4gQWxhbiBDb3ggc2hvd2VkIGhpcyBhc3No
b2xlIHNpZGUsIGluc3VsdGluZyBtZSBhbmQgSFAuIEFsYW4gaXMsIHRoYW5rIGdvb2RuZXNzLCBn
b25lIG5vdyBmcm9tIExpbnVzJ3MgaW5zaWRlIGNpcmNsZSkKCgotLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQpGcm9tOiAiRGF2ZSBUYWh0IHZpYSBDYWtlIiA8Y2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQ+ClNlbnQ6IFR1ZSwgSnVuIDI3LCAyMDIzIGF0IDEwOjAzIHBtClRvOiAiU3RlcGhlbiBI
ZW1taW5nZXIiIDxzdGVwaGVuQG5ldHdvcmtwbHVtYmVyLm9yZz4KQ2M6ICJTdGVwaGVuIEhlbW1p
bmdlciIgPHN0ZXBoZW5AbmV0d29ya3BsdW1iZXIub3JnPiwgY2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQsIGJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApTdWJqZWN0OiBSZTogW0Nha2VdIFtC
bG9hdF0gVHdvIHF1ZXN0aW9ucyByZSBoaWdoIHNwZWVkIGNvbmdlc3Rpb25tYW5hZ2VtZW50IGFu
ZGRhdGFncmFtIHByb3RvY29scwoKaHR0cHM6Ly9kYXRhdHJhY2tlci5pZXRmLm9yZy9kb2MvY2hh
cnRlci1pZXRmLWNjd2cvCgppcyBhIG5ldyB3ZyBpbnRlbmRlZCB0byBwb2tlIGludG8gdGhlc2Ug
aXNzdWVzCgpPbiBUdWUsIEp1biAyNywgMjAyMyBhdCA0OjQ54oCvUE0gU3RlcGhlbiBIZW1taW5n
ZXIgdmlhIENha2UKIHdyb3RlOgo+Cj4gT24gVHVlLCAyNyBKdW4gMjAyMyAxMjo0NzowMSAtMDcw
MCAoUERUKQo+IERhdmlkIExhbmcgIHdyb3RlOgo+Cj4gPiBPbiBNb24sIDI2IEp1biAyMDIzLCBE
YXZpZCBQLiBSZWVkIHZpYSBCbG9hdCB3cm90ZToKPiA+Cj4gPiA+IFNvcnJ5IGZvciB0b3AgcG9z
dGluZywgYnV0IC4uLiBCaWdnZXIgcXVlc3Rpb246Cj4gPiA+IFdoeSB3b3VsZCBEQ0NQIGJlIGRl
cHJlY2F0ZWQgYnkgTGludXgga2VybmVsPwo+ID4gPiBXaG8gbWFrZXMgdGhhdCBkZWNpc2lvbj8g
V2hvIGFyZ3VlcyBhZ2FpbnN0IGl0Pwo+ID4KPiA+IExpbnVzIG9yIHRoZSBuZXR3b3JraW5nIG1h
aW50YW5lcnMgbWFrZSB0aGUgZGVjaXNpb24uCj4gPgo+ID4gVXN1YWxseSB0aGluZ3MgZ2V0IHB1
bGxlZCBmcm9tIHRoZSBrZXJuZWwgYmVjYXVzZSB0aGVyZSBhcmUgdXBkYXRlcyB0aGF0IG5lZWQg
dG8KPiA+IGJlIG1hZGUgdG8gdGhlIGNvZGUgKHRvIG1hdGNoIGNoYW5nZXMgZWxzZXdoZXJlIGlu
IHRoZSBrZXJuZWwgb3IgYmVjYXVzZSBvZgo+ID4gc2VjdXJpdHkgaXNzdWVzKSBhbmQgdGhlcmUg
aXNuJ3QgYSBtYWludGFpbmVyIHdobyB3b3JrcyBvbiB0aGUgY29kZSBpbiBhCj4gPiByZXNvbmFi
bGUgdGltZS4gVGhpcyBtZWFucyB0aGF0IHRoZSBtYWludGFpbmVycyBmb3IgdGhlIGdlbmVyYWwg
Y29kZSBhcmVhIChpbgo+ID4gdGhpcyBjYXNlIG5ldHdvcmtpbmcgbWFpbnRhaW5lcnMpIHdpbGwg
bmVlZCB0byBkbyBleHRyYSB3b3JrIGluIGFuIGFyZWEgdGhleQo+ID4gYXJlbid0IHRoYXQgaW50
ZXJlc3RlZCBpbiAoYW5kLCBlc3BlY2lhbGx5IGluIHRoZSBjYXNlIG9mIGhhcmR3YXJlLCBtYXkg
bm90IGhhdmUKPiA+IHRoZSBhYmlsaXR5IHRvIHRlc3QpLiBUaGV5IGRvIHNvbWUgb2YgaXQsIGVz
cGVjaWFsbHkgaWYgaXQncyBjb21tb25seSB1c2VkLCBidXQKPiA+IGV2ZW50dWFsbHkgZWl0aGVy
IGFub3RoZXIgbWFpbnRhaW5lciBzdGVwcyB1cCwgb3IgaXQgZ29lcyBhd2F5Cj4gPgo+ID4gRGF2
aWQgTGFuZwo+Cj4gU2VlIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9uZXRk
ZXZicGYvcGF0Y2gvMjAyMzA2MTQxOTQ3MDUuOTA2NzMtMy1rdW5peXVAYW1hem9uLmNvbS8KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IENha2UgbWFp
bGluZyBsaXN0Cj4gQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKPiBodHRwczovL2xpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCgoKCi0tIApQb2RjYXN0OiBodHRwczovL3d3dy5s
aW5rZWRpbi5jb20vZmVlZC91cGRhdGUvdXJuOmxpOmFjdGl2aXR5OjcwNTg3OTM5MTAyMjcxMTE5
MzcvCkRhdmUgVMOkaHQgQ1NPLCBMaWJyZVFvcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5n
IGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9h
dC5uZXQvbGlzdGluZm8vY2FrZQo=

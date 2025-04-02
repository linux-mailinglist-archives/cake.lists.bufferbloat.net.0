Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFF0A789A3
	for <lists+cake@lfdr.de>; Wed,  2 Apr 2025 10:17:50 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 86FBD3CB54;
	Wed,  2 Apr 2025 04:17:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1743581863;
	bh=0ncnZPwd6jkAtJiucVUNWv53uyov7sv4hw4r7GHF64c=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Zt/lzgnq4I+1+GR5GhOrkMW5nBDLymppMgeu1w62GrrPMz6boGGziUUGRUq08YCTo
	 qRevKkJrPZeq6wz4t1M9B1xf0PJtDQUMGJPzBqWytXu4YDcUHoKzSDL3rpTJNVExMM
	 UZf9x9+ujBrBzVWSWMIGXLufftn2IfRwlNcGOxztLQkWmw54lrWJxXMJCELy0EH21c
	 oQVLdpAPhLxA9fYJKetSj/PIsIFD34ozBXOtNqD/XBABTebUJo4yjxjtJbW2H4pPHm
	 gEfRMC+/5D12K5Zl1PQEHB7otXrIKz0Z52Ck0iw0zhy+gIlkctFPINwd90ioMLk55y
	 MosnfsLVpUsJg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp.osur.ee (smtp.osur.ee [195.250.189.142])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id F2C633B29D;
 Wed,  2 Apr 2025 04:17:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=osur.ee;
 s=202312302328; h=Content-Type:In-Reply-To:From:References:Cc:To:Subject:
 MIME-Version:Date:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H/0VWklWlZwvOKBJc3U1OY4JFC5vyUc/f25WUUtZ3AI=; b=CFyjMWt/uvzuyrzaVMONV0ujwl
 p3mJw+kvvAfv7HTB1gZuUAbGlXiIDhCa1ZLjHWYXBjeU+n+4z+lhUKXr28U07h/fmu6XDYQSYLR/x
 LI8EYLr8ep9dUkAaAuHRtz0+zQ1XI/qVIx6htI9rvsQ/FUewh1nnubDfEteVvvGct6rY=;
Received: from mx1.gnu.osur.ee ([192.168.65.201]:41058 helo=mx.osur.ee)
 by smtp.osur.ee with esmtps  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (envelope-from <siim@osur.ee>) id 1tztI2-000000002pM-3WDt;
 Wed, 02 Apr 2025 11:17:38 +0300
Received: from [192.168.71.2] (port=42540)
 by mx.osur.ee with esmtpsa  (TLS1.3) tls TLS_AES_128_GCM_SHA256
 (envelope-from <siim@osur.ee>) id 1tztI1-000000003zX-2dB4;
 Wed, 02 Apr 2025 11:17:38 +0300
Message-ID: <2e3b2c97-f4ac-49e8-ab01-936d3ee8e54b@osur.ee>
Date: Wed, 2 Apr 2025 11:17:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Frantisek Borsik <frantisek.borsik@gmail.com>,
 libreqos <libreqos@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net, Cake List <cake@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, cerowrt-commits@lists.bufferbloat.net,
 cerowrt-devel@lists.bufferbloat.net, cerowrt-users@lists.bufferbloat.net,
 codel-wireless@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 =?UTF-8?Q?Network_Neutrality_is_back!_Let=C2=B4s_make_the_technical_aspects?=
 =?UTF-8?Q?_heard_this_time!?= <nnagain@lists.bufferbloat.net>
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
Content-Language: en-US
Autocrypt: addr=siim@osur.ee; keydata=
 xjMEZorrvRYJKwYBBAHaRw8BAQdAdAsimd/SXs4p87WM6FZN781BCddsKYHAvB908Xbm93vN
 GVNpaW0gT8WhdXIgPHNpaW1Ab3N1ci5lZT7CjAQQFgoAHQUCZorrvQQLCQcIAxUICgQWAAIB
 AhkBAhsDAh4BACEJEAbECY1hfq+mFiEE7irnihh1PnBh06x6BsQJjWF+r6bdEAD+MzMgLSxg
 SD/fhCOKZ4eA8gVrS5htGfS4Jp+dmT2M/GAA/2RPL+Covhb9gbGMsqDKKX/6g2okMCPyucBb
 Z6pEaNEOzjgEZorrvRIKKwYBBAGXVQEFAQEHQJZ36FX8wGW+14+osncdUPv72DCxlXb+4AO8
 529R3ZUdAwEIB8J4BBgWCAAJBQJmiuu9AhsMACEJEAbECY1hfq+mFiEE7irnihh1PnBh06x6
 BsQJjWF+r6b44QEAn1tDdUKLL6ohaj0bGKZna30aCASc7Bczt0gTRzEBrkkA/RzqxUyjp59Y
 B4ZIgkSEpU+1ZQw0FVx7IjKdALD16iMG
In-Reply-To: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
Subject: Re: [Cake] =?utf-8?q?In_loving_memory_of_Dave_T=C3=A4ht_=3C3?=
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
From: =?UTF-8?Q?Siim_O=C5=A1ur?= via Cake <cake@lists.bufferbloat.net>
Reply-To: =?UTF-8?Q?Siim_O=C5=A1ur?= <siim@osur.ee>
Cc: Herbert Wolverson <hwolverson@libreqos.io>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============7277864317905006698=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7277864317905006698==
Content-Language: en-US
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------eCFGdxcdKvXVbCFJAeOiEOAk"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------eCFGdxcdKvXVbCFJAeOiEOAk
Content-Type: multipart/mixed; boundary="------------64UyoiaNzgIKNe8s0GVpA4jU";
 protected-headers="v1"
From: =?UTF-8?Q?Siim_O=C5=A1ur?= <siim@osur.ee>
To: Frantisek Borsik <frantisek.borsik@gmail.com>,
 libreqos <libreqos@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 bloat-ietf@lists.bufferbloat.net, Cake List <cake@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, cerowrt-commits@lists.bufferbloat.net,
 cerowrt-devel@lists.bufferbloat.net, cerowrt-users@lists.bufferbloat.net,
 codel-wireless@lists.bufferbloat.net,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 =?UTF-8?Q?Network_Neutrality_is_back!_Let=C2=B4s_make_the_technical_aspects?=
 =?UTF-8?Q?_heard_this_time!?= <nnagain@lists.bufferbloat.net>
Cc: Herbert Wolverson <hwolverson@libreqos.io>,
 "Frantisek (Frank) Borsik" <frank@libreqos.io>,
 =?UTF-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Message-ID: <2e3b2c97-f4ac-49e8-ab01-936d3ee8e54b@osur.ee>
Subject: =?UTF-8?Q?Re=3A_=5BCake=5D_In_loving_memory_of_Dave_T=C3=A4ht_=3C3?=
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
In-Reply-To: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>

--------------64UyoiaNzgIKNe8s0GVpA4jU
Content-Type: multipart/mixed; boundary="------------W07Lwzr8bAp0T50XcgJpWbXA"

--------------W07Lwzr8bAp0T50XcgJpWbXA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCkkgaGF2ZSBncmVhdCByZXNwZWN0IGZvciB0aGlzIG1hbiwgZXZlbiB0aG91
Z2ggSSBuZXZlciBtZXQgaGltLg0KSGlzIHByb2plY3QgaGVscGVkIG1lIHNwdXIgb24gdGhl
IGNvbmZpZ3VyYXRpb24gb2YgbXkgb3duIHRjLWNha2UgDQppbnRlcmZhY2VzIG9uIG15IGxp
bnV4IGJveGVzIGFuZCBoYXZlIHNpbmNlIGVuYWJsZWQgYW4gYXdlc29tZSANCmV4cGVyaWVu
Y2UgaW4gZW5qb3lpbmcgdGhlIG9ubGluZSB3b3JsZC4NCg0KRmFyZXdlbGwgRGF2ZS4NCg0K
T24gNC8xLzI1IDg6MjcgUE0sIEZyYW50aXNlayBCb3JzaWsgdmlhIENha2Ugd3JvdGU6DQo+
IEhlbGxvIHRvIGFsbCwNCj4gDQo+IFdl4oCZcmUgZGV2YXN0YXRlZCB0byBhbm5vdW5jZSB0
aGF0IERhdmUgVMOkaHQgaGFzIHBhc3NlZCBhd2F5LiA8aHR0cHM6Ly8gDQo+IGxpYnJlcW9z
LmlvLzIwMjUvMDQvMDEvaW4tbG92aW5nLW1lbW9yeS1vZi1kYXZlLz4NCj4gDQo+IERhdmUg
d2FzIGFuIGFtYXppbmcgbWFuLCBoZWxwaW5nIHRoZSB3b3JsZCB3aXRoIEZRLUNvRGVsIGFu
ZCBDQUtFLCANCj4gZmlnaHRpbmcgYnVmZmVyYmxvYXQgYW5kIHRyeWluZyB0byBtYWtlIHRo
ZSB3b3JsZCBhIGJldHRlciBwbGFjZS4gQWx3YXlzIA0KPiB3aWxsaW5nIHRvIGhlbHAsIGFu
ZCB3aXRob3V0IGhpbSDigJMgTGlicmVRb1MgKGFuZCB0aGUgb3RoZXIgUW9FIHNvbHV0aW9u
cyANCj4gb3V0IHRoZXJlKSB3b3VsZG7igJl0IGV4aXN0Lg0KPiANCj4gRGF2ZSB3YXMgYW4g
aW5zcGlyYXRpb24sIGFuZCB3ZSBhbGwgbWlzcyBoaW0uIFdl4oCZcmUgcmVhY2hpbmcgb3V0
IHRvIA0KPiBmYW1pbHkgYW5kIGNsb3NlIGZyaWVuZHMgdG8gc2VlIGlmIHRoZXJl4oCZcyBh
bnl0aGluZyB3ZSBjYW4gZG8gdG8gaGVscC4NCj4gDQo+IERhdmUgd2FzIGFuIGluc3BpcmF0
aW9uIHRvIHVzLiBEYXZl4oCZcyBjb250cmlidXRpb25zIHRvIExpbnV4LCBGUS1Db0RlbCwg
DQo+IGFuZCBDQUtFIGltcHJvdmVkIGludGVybmV0IGNvbm5lY3Rpdml0eSBhcm91bmQgdGhl
IHdvcmxkIGZvciBtaWxsaW9ucyBvZiANCj4gcGVvcGxlLiBCZWNhdXNlIG9mIGhpbSwgbWls
bGlvbnMgb2YgcGVvcGxlIG5vdyBoYXZlIGFjY2VzcyB0byByZWxpYWJsZSANCj4gdmlkZW8g
Y2FsbHMg4oCTIGFuZCBpbiB0dXJuLCBhY2Nlc3MgdG8gbG92ZWQgb25lcywgaGVhbHRoY2Fy
ZSwgYW5kIA0KPiBjb21tdW5pdHkuIE9uZSBvZiBSb2JlcnTigJlzIElTUCBjdXN0b21lcnMg
aXMgYSBraW5kIHBhcmFwbGVnaWMgd29tYW4gd2hvIA0KPiBsaXZlcyBpbiBhIGZhci1mbHVu
ZyBydXJhbCBDb2xvbmlhIGFyb3VuZCBFbCBQYXNvLCBUZXhhcy4gSGVyIHJlbGlhYmxlIA0K
PiBhY2Nlc3MgdG8gaGVyIGRvY3RvcnMgdGhyb3VnaCB0ZWxlbWVkaWNpbmUsIGFuZCB0byBo
ZXIgZmFtaWx5IHRocm91Z2ggDQo+IEZhY2VUaW1lLCB3YXMgb25seSBtYWRlIHBvc3NpYmxl
IGJlY2F1c2Ugb2YgaGlzIGFsZ29yaXRobXMuIFRoZXJlIGFyZSANCj4gbWlsbGlvbnMgb2Yg
Y2FzZXMgbGlrZSBoZXJzLCB3aGVyZSBEYXZl4oCZcyBjb250cmlidXRpb25zIGhhdmUgc2ls
ZW50bHkgDQo+IGVuYWJsZWQgaHVtYW4gY29ubmVjdGlvbiBhbmQgc2FmZXR5LiBFdmVyeXRo
aW5nIERhdmUgY29udHJpYnV0ZWQgdG8gdGhlIA0KPiB3b3JsZCBvZiB0ZWNobm9sb2d5IHdh
cyBmcmVlIGFuZCBvcGVuIHNvdXJjZSwgZm9yIHRoZSBiZXR0ZXJtZW50IG9mIA0KPiBodW1h
bml0eS4NCj4gDQo+IERhdmUgaXMgdGhlIHJlYXNvbiB0aGF0IFN0YXJsaW5rIHdhcyBhYmxl
IHRvIHRhY2tsZSBpdHMgbGF0ZW5jeSBpc3N1ZXMg4oCTIA0KPiBlbmFibGluZyBhIGdlbmVy
YXRpb24gb2YgeW91bmcgZW50cmVwcmVuZXVycyBhY3Jvc3MgdGhlIGRldmVsb3BpbmcgDQo+
IHdvcmxkLCBzdWNoIGFzIHRoZXNlIHlvdW5nIGZvbGtzIHBpY3R1cmVkIGluIHRoZSBQaGls
bGlwaW5lcywgdG8gc3RhcnQgDQo+IHRoZWlyIG93biBJU1BzIHRvIGV4cGFuZCBpbnRlcm5l
dCBhY2Nlc3MgdG8gdGhlaXIgY29tbXVuaXRpZXMuIERhdmUgDQo+IHN0YXJ0ZWQgd29yayBv
biBGUS1Db0RlbCBpbiBwYXJ0IGJlY2F1c2Ugb2YgaGlzIG93biBqb3VybmV5IHdvcmtpbmcg
dG8gDQo+IGV4cGFuZCBpbnRlcm5ldCBhY2Nlc3MgaW4gTmljYXJhZ3VhLCBzbyB3ZSBrbm93
IGhlIHNhdyB0aGF0IGhpcyB3b3JrIGhhZCANCj4gY29tZSBmdWxsLWNpcmNsZSBhbmQgaGVs
cGVkIHNvIG1hbnkuDQo+IA0KPiBXZeKAmXJlIGluY3JlZGlibHkgZ3JhdGVmdWwgdG8gaGF2
ZSBEYXZlIGFzIG91ciBmcmllbmQsIG1lbnRvciwgYW5kIGFzIA0KPiBzb21lb25lIHdobyBj
b250aW51b3VzbHkgaW5zcGlyZWQgdXMg4oCTIHNob3dpbmcgdXMgdGhhdCB3ZSBjb3VsZCBk
byANCj4gYmV0dGVyIGZvciBlYWNoIG90aGVyIGluIHRoZSB3b3JsZCwgYW5kIGxldmVyYWdl
IHRlY2hub2xvZ3kgdG8gbWFrZSB0aGF0IA0KPiBoYXBwZW4uIEhlIHdpbGwgYmUgZGVhcmx5
IG1pc3NlZC4NCj4gDQo+ICpQUzogKkRhdmUgaXMgZm9yZXZlciBpbiBvdXIgaGVhcnRzIGFu
ZCBzb3VscywgaW4gb3VyIHJvdXRlcnMgYW5kLi4uaW4gDQo+IHByb2R1Y3Rpb24hDQo+ICpo
dHRwczovL2dpdGh1Yi5jb20vTGlicmVRb0UvTGlicmVRb1MvcHVsbC82ODQNCj4gPGh0dHBz
Oi8vZ2l0aHViLmNvbS9MaWJyZVFvRS9MaWJyZVFvUy9wdWxsLzY4ND4qDQo+IA0KPiBBbGwg
dGhlIGJlc3QsDQo+IA0KPiBGcmFua19fX18NCj4gDQo+IF9fX18NCj4gDQo+IEZyYW50aXNl
ayAoRnJhbmspIEJvcnNpa19fX18NCj4gDQo+IF9fIF9fDQo+IA0KPiBodHRwczovL3d3dy5s
aW5rZWRpbi5jb20vaW4vZnJhbnRpc2VrYm9yc2lrIDxodHRwczovL3d3dy5saW5rZWRpbi5j
b20vIA0KPiBpbi9mcmFudGlzZWtib3JzaWs+X19fXw0KPiANCj4gU2lnbmFsLCBUZWxlZ3Jh
bSwgV2hhdHNBcHA6ICs0MjE5MTk0MTY3MTQgX19fXw0KPiANCj4gaU1lc3NhZ2UsIG1vYmls
ZTogKzQyMDc3NTIzMDg4NV9fX18NCj4gDQo+IFNreXBlOiBjYXNpb2E1MzAyY2FfX19fDQo+
IA0KPiBmcmFudGlzZWsuYm9yc2lrQGdtYWlsLmNvbSA8bWFpbHRvOmZyYW50aXNlay5ib3Jz
aWtAZ21haWwuY29tPg0KPiANCj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQo+IENha2UgbWFpbGluZyBsaXN0DQo+IENha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0DQo+IGh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3Rp
bmZvL2Nha2UNCg0K
--------------W07Lwzr8bAp0T50XcgJpWbXA
Content-Type: application/pgp-keys; name="OpenPGP_0x06C4098D617EAFA6.asc"
Content-Disposition: attachment; filename="OpenPGP_0x06C4098D617EAFA6.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

xjMEZorrvRYJKwYBBAHaRw8BAQdAdAsimd/SXs4p87WM6FZN781BCddsKYHAvB90
8Xbm93vNGVNpaW0gT8WhdXIgPHNpaW1Ab3N1ci5lZT7CjAQQFgoAHQUCZorrvQQL
CQcIAxUICgQWAAIBAhkBAhsDAh4BACEJEAbECY1hfq+mFiEE7irnihh1PnBh06x6
BsQJjWF+r6bdEAD+MzMgLSxgSD/fhCOKZ4eA8gVrS5htGfS4Jp+dmT2M/GAA/2RP
L+Covhb9gbGMsqDKKX/6g2okMCPyucBbZ6pEaNEOzjgEZorrvRIKKwYBBAGXVQEF
AQEHQJZ36FX8wGW+14+osncdUPv72DCxlXb+4AO8529R3ZUdAwEIB8J4BBgWCAAJ
BQJmiuu9AhsMACEJEAbECY1hfq+mFiEE7irnihh1PnBh06x6BsQJjWF+r6b44QEA
n1tDdUKLL6ohaj0bGKZna30aCASc7Bczt0gTRzEBrkkA/RzqxUyjp59YB4ZIgkSE
pU+1ZQw0FVx7IjKdALD16iMG
=3D4UIR
-----END PGP PUBLIC KEY BLOCK-----

--------------W07Lwzr8bAp0T50XcgJpWbXA--

--------------64UyoiaNzgIKNe8s0GVpA4jU--

--------------eCFGdxcdKvXVbCFJAeOiEOAk
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQTuKueKGHU+cGHTrHoGxAmNYX6vpgUCZ+zyoQUDAAAAAAAKCRAGxAmNYX6vps7n
AQCYl/303ZzErcZ2jpQgc+oK/e4mW8H7oEM7cOxqRFD+rwD/dvP5rguGnUn1EkuV4gAji816lqzz
USoLXvInOmb9bwE=
=PVRV
-----END PGP SIGNATURE-----

--------------eCFGdxcdKvXVbCFJAeOiEOAk--

--===============7277864317905006698==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7277864317905006698==--

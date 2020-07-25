Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0B622D8DA
	for <lists+cake@lfdr.de>; Sat, 25 Jul 2020 19:18:53 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B0FF13CB38;
	Sat, 25 Jul 2020 13:18:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595697532;
	bh=uZHZZaq8EN2svdf5kT9csv5jq4caek1lG3DGQm3Fr+I=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GFy3oaoBYXuW8nXibYYda5LrgD71LlneroF4x7NVEXhVjXWUNrmFwc6l632Thh1m2
	 p4WUM4g3uaP9zMVnhrlqcfrdu9TvWgcpYIqH6gqB92bLiXcaDnG6OV9NpEv9qzqAS0
	 TibiCW0Ns8YU6NejSdTCFeZSBZvXxOJ3wgvx//QJ7JgCtL0YyK6ipiPCZjnZDukaTa
	 SCh1RrOaB7J64gZphaCKc1bkUpNmaZ0eOWfgxcev/sJB8gksbRPGTe5Xx/Rd2KgVEo
	 W0WC03W5LktjqqrOxUOaqPcwuEn4i/CwAj0qby39eizP5/5dh9aDE+vg6/Bk+0RyGE
	 u5q+x9eezJRgQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4F7853B29E
 for <cake@lists.bufferbloat.net>; Sat, 25 Jul 2020 13:18:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1595697529;
 bh=xSHc8dDnLeYJkEw7ycfw8IJ+SSFvcUriHHsg97tYALA=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=jB33zTHjsIjx7aafNputPZ44xDEoIj1eaCK+QwoMuk751cj2K1YDpZ67tUDH+Vedg
 ORLSEM2KOGDEDDaHz7wHndRQ4taQCiuyND287pF89UL2sr2Hjyvuox5Hj2siMT4ED/
 zPoU9/EdNYFI2akd3vf4lA0vg2cJjL3RiSe2CFOI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.42.229] ([77.6.52.50]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MXGvG-1kIXkl12Uw-00Ygxg; Sat, 25
 Jul 2020 19:18:49 +0200
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <0CCA78BD-201C-4668-A013-24A3F6F4EC87@darbyshire-bryant.me.uk>
Date: Sat, 25 Jul 2020 19:18:48 +0200
Message-Id: <4E86E73D-2ACE-4952-8A2A-B8DAAD4CD262@gmx.de>
References: <d5f74f85-7d72-40f9-a965-8335163d8cec@www.fastmail.com>
 <CFB4036D-8EEA-44B2-A909-6FD8B495267A@darbyshire-bryant.me.uk>
 <0CCA78BD-201C-4668-A013-24A3F6F4EC87@darbyshire-bryant.me.uk>
To: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
X-Mailer: Apple Mail (2.3445.104.15)
X-Provags-ID: V03:K1:X1HVBjebDBMyUh86TjVgBf7KCa8sU/SyDqvB1gbFpqkm57NIouu
 G1Llqs5F7DoiRkXIVngU4sfc3vAoiU137eHRpHY0Zmyc6liXx5Me/Hs4/mhlf3MWXtm5lOx
 HqjmfCxYJ9GjvAVSu/Vw4EQGgx+VuatTyRd5I9V1UTJBuYLfQU2RpNiNwK2+Ds70cFkbt65
 2GqOMTPos5kXpF0u+whqg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FkZ/qo6IYk0=:qQzKVZddGiXX8yfOy0ni4f
 3E1VSGkr2UGwRPGhgEv0c43DN2fjd0k0S4MOMBWYG1p0gbTXytUV1RpL9a0YCabdNzNKWccW3
 VsJJxaY3+7BJoObNZgdGMya5OlRd3HmxqW2IJxQr/b/zVVNDepNba6rSybLMHaVBhESAXbor0
 Ae0dAYquigY1JTG5K3fqN8ff9eE3V5IoDoYYAD63QLUa6f8noMfg92I1lQNqTw5abPiR+FYza
 7gNygrgi5nfGV3BBBnYC6uRbXe4m//xcvTKrf4eU2nAtvO5XzeT4WXO4zSgF84sFO6f1NIJoy
 a2GMZHyxZT9Vd5aTTB/d2grCKKBLUUyS9nNgrRemEtv5V7IxRcHDvOyTkyPItY90gH2kL6oQN
 uJT0kaunwz7uWNvAedSQzIAW973Nl6rcGxIIv0BrbDfj1WBOG92U5AvXBNTLTa0KZdquypkV8
 a2RCGEscLSs+L1ctOyrgLWRGaTTx10Hp5BcfVyMJw4FOWIrUfjQhGBC3xuR0qfCp4mzj+skGg
 bRrdXA0LT+VqhURhN+VSH/NRwyUm4cMGobYoevd/13K4JmG6Y7Ox7UtPBOjy1su/d1AqZNAUA
 sThrZqrXCEKrB+/ar78o03QxHLw8pBmbg9cpy3xZBdcvn/Pv3rH6eLYmPm+hbYJcULOA5LRvO
 Se+4uJ3wvq4SrAMzNXQrD/QZ9O7YRRyL1IWTKUuKwhjXoccix53ygGu10t0wPSvXswQ1vfQUC
 Wbl+aQ+Lnm/3V/uGX3Mc7hkKjPb+61jjRgRsqZ/LJ3WJEliknGgI2x655QAiC0H6JQeBqEvK/
 ICkz5Q/wfoKXtYK8o1AdOodK/0fC16Q+d6rIgfcsQ+S3EVyS+4Ocfp8wDWyyfj3Jr8seIj+Qx
 TI3mUwLQThFPLQbEdaOOv0vdY24UJF7ydKE2qYIQ6BBdQlfajrKJsRgznJI5UsCKpIj1tKu6h
 8LoSuVFQ4GxRAvUsYA64PVx0EuJjPTgGSM78rmjKo1KxwqfeVHy/9nyNQYm9gTlypTu+MxsWR
 tCFfhdOgp3DRiJRUaMQ0q7SScl6s6acugPiVPFPGBPv4kV9U4xRw4LqtOUNnHOQiR5ulI8kvB
 94AJUbiKVmk1jnr1cPKvVs+TeX9mzSgwSNqpLTftG2Gd7EkmzV0uOIztOslR9D0VTrL1SUpVQ
 T+LGdH6b1oeXZN1J5jkN0JJVD/By2laW3kiG6c5mf4JeNgH+MLGJ2sc2yiwC0bYuHcL2lDPfs
 nz4qeuWO+Lh4ZbiqY
Subject: Re: [Cake] diffserv3 vs diffserv4
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgS2V2aW4sCgoKPiBPbiBKdWwgMjUsIDIwMjAsIGF0IDEyOjEyLCBLZXZpbiBEYXJieXNoaXJl
LUJyeWFudCA8a2V2aW5AZGFyYnlzaGlyZS1icnlhbnQubWUudWs+IHdyb3RlOgo+IAo+IAo+IAo+
PiBPbiAyNCBKdWwgMjAyMCwgYXQgMTg6NDIsIEtldmluIERhcmJ5c2hpcmUtQnJ5YW50IDxrZXZp
bkBkYXJieXNoaXJlLWJyeWFudC5tZS51az4gd3JvdGU6Cj4+IAo+PiAKPj4gVGhlIG1vdmUgZnJv
bSBkaWZmc2VydjQgdG8gZGlmZnNlcnY1IFdBUyBhYm91dCBkZS1wcmlvcml0aXphdGlvbi4KPiAK
PiBJdCB3YXMgYWxzbyBhYm91dCBtaW5pbXVtIGJhbmR3aWR0aCBhbGxvY2F0aW9uczoKPiAKPiBM
RTogMS82NHRoCgpUaGF0IGlzIDYgYmluYXJ5IG9yZGVycyBvZiBtYWduaXR1ZGUsIG9uIGEgc2xv
dyBsaW5rLCBMRSBpcyBlZmZlY3RpdmVseSBzdGFydmVkIGFuZCB0aGVyZSB3aWxsIGJlIG5vIHJl
YWwgZm9yd2FyZCBwcm9ncmVzcy4gRm9yIHJlYWwgc2NhdmVuZ2VyIHNlcnZpY2VzIHRoaXMgbWln
aHQgd2VsbCBiZSBhIHNhbmUgcG9saWN5LCBidXQgdGhpcyByZXF1aXJlcyB0aGUgdmVyeSBzZWxl
Y3RpdmUgd2l0aCBhc3NpZ25pbmcgZmxvd3MgdG8gdGhpcyB0aW4gOykKCj4gQks6IDEvMTZ0aAo+
IEJFOiAxLzEKPiBWSTogMS8yCj4gVk86IDEvNAoKU28gSSBzZWUgMS82NCArIDEvMTYgKyAxLzEg
KyAxLzIgKyAxLzQgPSAxLjgyODEyNSB3aGljaCBzZWVtcyBleGNlc3NpdmUgZm9yIGFjdHVhbGx5
IGd1YXJhbnRlZWQgbWluaW11bXMuIEkgd2FzIHVuZGVyIHRoZSBuYWl2ZT8gaW1wcmVzc2lvbiB0
aGUgbWluaW1hIHNob3VsZCBhZGQgdXAgdG8gPD0gMSwgbm8/CgoKPiAKPiBTbyB3b3JzdCBjYXNl
LCBiZXN0IGVmZm9ydCBzaG91bGQgZ2V0IDExLzY0dGhzIGluIHRoZSBleHRyZW1lIGNhc2Ugb2Yg
YWxsIG90aGVyIHRpbnMgaW4gdXNlLgoKCVRoaXMgc2VlbXMgb25seSB0cnVlLCBpZiBvbiBvdmVy
bG9hZCB0aGUgbG93ZXN0IHByaW9yaXRpZXJzIHRpZXJzIGdldCB0aGVpciBhbGxvdG1lbnQgZmly
c3QsIG5vPwoKSSBhbSBjb25mdXNlZC4uLiBidXQgSSBhbSBhbHNvIGNvbmZ1c2VkIGJ5IGNha2Un
cyBvdXRwdXQ6CiIKCiAgICAgICAgICAgICAgICAgICBCdWxrICBCZXN0IEVmZm9ydCAgICAgICAg
Vm9pY2UKICB0aHJlc2ggICAgICAgMzA2MktiaXQgICAgICAgNDlNYml0ICAgIDEyMjUwS2JpdCIK
CmFzIGZhciBhcyBJIGNhbiB0ZWxsLCBCdWxrJ3MgMzA2MktiaXQgbXVzdCBiZSB0aGUgbWluaW11
bSwgd2hpbGUgQkUgYW5kIFZvaWNlIGdpdmUgdGhlaXIgbWF4aW1hLi4uIFRoYXQsIG9yIEkgYW0g
bWlzc2luZyBzb21ldGhpbmcgaW1wb3J0YW50Li4uCihJIHdvbmRlciB3aGV0aGVyIGl0IHdvdWxk
IG5vdCBiZSBjbGVhcmVyIHRvIGdpdmUgYm90aCBtaW4gYW5kIG1heCBmb3IgZWFjaCB0aW4sIHRo
ZW4gYWdhaW4gSSBwcm9iYWJseSBtaXNzaW5nIGFsbCB0aGUgZGV5YWlscyBvZiB0aGUgYWN0dWFs
IGltcGxlbWVudGF0aW9uLi4uKQoKQmVzdCBSZWdhcmRzCglTZWJhc3RpYW4KCj4gCj4gQ2hlZXJz
LAo+IAo+IEtldmluIEQtQgo+IAo+IGdwZzogMDEyQyBBQ0IyIDI4QzYgQzUzRSA5Nzc1ICA5MTIz
IEIzQTIgMzg5QiA5REUyIDMzNEEKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IENha2UgbWFpbGluZyBsaXN0Cj4gQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKPiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxp
bmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

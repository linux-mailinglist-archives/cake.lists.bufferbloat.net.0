Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B56DD6B6BC8
	for <lists+cake@lfdr.de>; Sun, 12 Mar 2023 22:37:22 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 55D9E3CB4F;
	Sun, 12 Mar 2023 17:37:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1678657037;
	bh=3yZzXAkp3avY9yrEYlhV7+ZpR3OjSW7suakM2/h6eyY=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=C0Xqf6r0PR6JjvBJVCLYOmm6jN9ZHJa4sRSMtRnksdrschJK4RHagzJcaeRgw+6BG
	 oT6CuLBcjmqpdnmSTHyJTIJazJiPQmLYh+YTEdLUKRk6OzmNVYApKsqna8n1FDk9n2
	 vAMhYRGOBqj+GD9KMOtMLAua9yo/7gmf5ib116cUjSXkjZIq6WydsyFTtCo8RWC2+o
	 Bqbkv10sDV0228e5kaHVGoF2Vtv6+5kc/R1almDjvsgy+h1bQ7n8ohBpr1J5kcyaFq
	 PXoTylLfnNg3viA0JGLksfOu046E82xn4DXtOAv0gNnJNprnjwdai3vkwgoVFiQQqN
	 +HA2OM1xioNIw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6A6F83B29D;
 Sun, 12 Mar 2023 17:37:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de; s=s31663417;
 t=1678657031; i=moeller0@gmx.de;
 bh=eHnpvgp7WIJOFe0yQRTFVqFf0sQv2H1kA/xBnR9nXhI=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=A9AcGtUzPkkCoZRGhBL5qv7HWbI6e3BnOLeiwNFMe8rhQe4uGNularE4EJuPfFS65
 NglYsVDJlYNdZREqTjXnjzvQdplkJ1qfUljxNSMpHKmhoOwTn3kOZzmb6OqNfxxyb4
 jpg0A/IWlJ9R/+VLggNNJJM/DwvtkfI/eU18Gh8TW6nUKxj7I6Q6itUldlTSydG+1g
 csSEyU2NaiplEEcKwHvgDByUU+APbo+MOBjP4JdjVK88CsmGoRMVEGTkdrBBTIkJZL
 mkVhPoB6jYF+uzDdvy3iCmaTZlU9xor0G0cinkCGiNoD7Wu5B8Zl7axocgDWVJ6Yl/
 /jwMTtkiD1ulQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([77.8.69.99]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MgvrL-1qCCqI37VN-00hKTv; Sun, 12
 Mar 2023 22:37:11 +0100
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.2\))
In-Reply-To: <1de20b8357ea243f9faa1cb2c0295cb5@rjmcmahon.com>
Date: Sun, 12 Mar 2023 22:37:10 +0100
Message-Id: <7E02E03F-F831-49E0-8B37-C1169F939B5A@gmx.de>
References: <CAA93jw7fE2QvQu=85ZPzbnOuZ6EB9yAcebCe87F84L7Bs+UkvQ@mail.gmail.com>
 <AF148E74-DFAA-4D87-9E13-F8C1CF3FBD0E@gmx.de>
 <1de20b8357ea243f9faa1cb2c0295cb5@rjmcmahon.com>
To: rjmcmahon <rjmcmahon@rjmcmahon.com>
X-Mailer: Apple Mail (2.3696.120.41.1.2)
X-Provags-ID: V03:K1:bacUp4rLwcEOjqa/rAXAyhQ/PN8MEA32YiHAFtk+Cf/drRFG4ZL
 MmxZqpPFfvOSES0yCYkJ8iZDKKfJpOptf4atiP+3T+5QW7GFmNWii3zOtgfBrHdqgSQZ6Ed
 Y6tcavflaIeL3Hk4KAtVUX4gApazu2iilHwscR7Gn81Uydv3Fep0fsAWwU+y1h4HgPFUSOp
 ag6xWLD/9pEa50U86TMVA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:imi9Y9Mz1/E=;Vhazpf3Afh5DGT8r3Pw57FfXEi6
 KJ4hIwAeIC/mjs7TgzUZ/L3a+8OS6dZ3/7LLC/jfpz0e2Ox3mKGYEbxWgku9DExpw4ldYhJIB
 b47eW0kAsmnKgNgViQwT/nIHrauEnS7f5PHPlsztZpTdvwHK8wTm6S40ggPd6uPgoJ8+yfG5q
 FGwgXzTQrJN7Za6N5oIrmGkmJR9C7s+eX/L3PBugt5LMST5hmA88VQAB1rAPfhbXNdKE67Nqx
 /4gjKU1uf9beuTUDouyjr0CNz242CVNid+U3/iYD4/fSm8KdNboPBcdclalbLBGUSAIGg88bf
 HgD8/o4PvxoT/Zox7a2Q31MvN5EmOXa28RDV2ToNVXRE4Yfw0C8Yhg/ICb7s0rHZtkz1cJGup
 J26aCZ1ozwaB2kfAJAugkPh4wEJ4vKLSbMltOXLnUAAlQROA+J6Ende9EqGmZPuFZxKQrvTYG
 XAx5uOKEvxaCRS1IDRfsl91HrvLyBfmYgbQASsR/avYaRyQV0LhS04EoCsKD2to3ubE1P7fyS
 bz5j3dnZzMZp9OAC26R7ZADbjoEtkqh94qWjSPdNE+8JTIEMMRntwSYN/nu6gTsCO+gcMdu7h
 eO84xMoGIaPphT1gr4S3eLxObxHWWcCiG4Q2ea/V3X3g7nwFg9SRRN7Ig2ADXjOVsGnCFzTfs
 5tYoJ86vbYXZ5wwAgYlfYiFG86jv6bP8kwkiSwpgt60jUF8Kjgt3MW4vcGohpTakwwV5H+y60
 LBlpR6n3lt8/eE+EO9pHOtVXAQivRNugTF2DIm0zarhLp/3JlqvcIdOgjVNNunoRDoEEIvUhM
 ujKzXF/5VbvQIOodND5sT7e9kffMU04z6QxJVEmzjIqnBDV7fAinnHT/d9hRbOmRBfI9j0Eoo
 hOUeeDIGKa21+jsJ1WzGo4XdKbaIWbbvjQvbljMKBmcrZgK3W4n9rGnrtYj49ob/WvodfBRgb
 5dciPgJ+suBNX/J/1osBb/SQkzs=
Subject: Re: [Cake] [Rpm] so great to see ISPs that care
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
Cc: Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 Rpm <rpm@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgQm9iLAoKCj4gT24gTWFyIDEyLCAyMDIzLCBhdCAyMjowMiwgcmptY21haG9uIDxyam1jbWFo
b25AcmptY21haG9uLmNvbT4gd3JvdGU6Cj4gCj4gaXBlcmYgMiB1c2VzIHJlc3BvbnNlcyBwZXIg
c2Vjb25kIGFuZCBhbHNvIHByb3ZpZGVzIHRoZSBib3VuY2UgYmFjayB0aW1lcyBhcyB3ZWxsIGFz
IG9uZSB3YXkgZGVsYXlzLgo+IAo+IFRoZSBoeXBvdGhlc2lzIGlzIHRoYXQgbmV0d29yayBlbmdp
bmVlcnMgaGF2ZSB0byBmaXggS1BJIGlzc3VlcywgaW5jbHVkaW5nIGxhdGVuY3ksIGFoZWFkIG9m
IHNoaXBwaW5nIHByb2R1Y3RzLgo+IAo+IEFza2luZyBjb21wYW5pZXMgdG8gYWN0IG9uIGNvbnN1
bWVyIGNvbXBsYWludHMgaXMgd2F5IHRvbyBsYXRlLiBJdCdzIGFsc28gZXh0cmVtZWx5IGNvc3Rs
eS4gVGhvc2UgcnVubmluZyBBbWF6b24gY3VzdG9tZXIgc2VydmljZSBjYW4gZXhwbGFpbiBob3cg
dGhlc2UgY29uc3VtZXIgY2FsbHMgYWJvdXQgdGhlaXIgZGV2aWNlcyBjYXVzZSB0aGluZ3MgbGlr
ZSBkZXZpY2UgcmV0dXJucyAoYXMgdGhhdCdzIGFsbCB0aGUgY2FsbCBzdXBwb3J0IGNhbiBwcm92
aWRlLikgVGhpcyB3YXN0ZXMgZW5lcmd5IHRvIHBoeXNpY2FsbHkgc2hpcCB0aGluZ3MgYmFjaywg
Y2F1c2VzIGEgc3RhY2sgb2Ygd29ya2luZyBpdGVtcyB0aGF0IG5vdyBnbyB0byBld2FzdGUsIGV0
Yy4KPiAKPiBJdCdzIHJlYWxseSBvbiBuZXR3b3JrIG9wZXJhdG9ycywgc3VwcGxpZXJzIGFuZCBk
ZXZpY2UgbWZncyB0byBnZXQgYWhlYWQgb2YgdGhpcyB5ZWFycyBiZWZvcmUgY29uc3VtZXJzIGdl
dCB0aGVpciBzdHVmZi4KCglbU01dIEFzIG11Y2ggYXMgSSBsaWtlIHRvIHRpbmtlciwgSSBhZ3Jl
ZSB3aXRoIHlvdSB0byBtYWtlIGFuIGltcGFjdCwgZG9pbmcgdGhpcyBvbmUgbmV0d29yayBhdCBh
IHRpbWUgc2NhbGVkIHBvb3JseSwgYW5kIGEgam9pbmVkIGVmZm9ydCBzZWVtcyB3YXkgbW9yZSBl
ZmZlY3RpdmUgYW5kIHllcyB0aGF0IGJldHRlciBzdGFydGVkIHllc3RlcmRheSB0aGFuIHRvZGF5
IDspCgoKPiAKPiBBcyBhIHNpZGUgbm90ZSwgbWFueSBkZXZpY2VzIHNlbGVjdCB0aGVpciBXaUZp
IGNoYW5zcGVjIChBUCBjaGFubmVsKykgYmFzZWQgb24gdGhlIHN0cm9uZ2VzdCBSU1NJLiBUaGUg
bmV0d29yayBwYXRocyBzaG91bGQgYmUgYmFzZWQgb24gS1BJcyBsaWtlIGxvdyBsYXRlbmN5LiBT
dHJvbmcgc2lnbmFsIGp1c3QgbWVhbnMgYW4gQVAgaXMgeWVsbGluZyB0byBsb3VkbHkgYW5kIGlu
dGVyZmVyaW5nIHdpdGggdGhlIG5laWdoYm9ycy4gVHJ5IHRoZSBvcHRpbWFsIEFQIGNoYW5zcGVj
IHRoYXQgaGFzIDEwZEIgc2VwYXJhdGlvbiBwZXIgc3BhdGlhbCBkaW1lbnNpb24gYW5kIHRoZSB3
aG9sZSBhcGFydG1lbnQgY29tcGxleCB3b3VsZCBiZSBiZXR0ZXIgZm9yIGl0LgoKCVtTTV0gU2lk
ZW5vdGUsIHdpdGggRFNMIElTUCBhcmUgYWN0aXZlbHkgb3B0aW1pemluZyB0aGUgcGVyIGxpbmsg
dHJhbnNtaXQgcG93ZXIgaW4gYm90aCBkaXJlY3Rpb25zLiBUaGV5IHNlZW0gdG8gZG8gdGhpcyBw
YXJ0aWFsbHkgdG8gc2F2ZSBlbmVyZ3kvY29zdCBhbmQgcGFydGlhbGx5IHRvIG9wdGltaXplIGdy
b3VwIHRyYW5zbWlzc2lvbiByYXRlcy4gRXZlciBzaW5jZSB2ZWN0b3Jpbmcgd2FzIGludHJvZHVj
ZWQgdG8gZGVhbCB3aXRoIGNyb3NzdGFsayB0aGUgc2lnbmFsIGZhdGUgb2YgYWxsIGxpbmtzIGNv
bm5lY3RlZCB0byBhIERTTEFNIGFnYXJlIGEgcGFydGlhbCBjb21tb24gZmF0ZS4gSW4gdGhlIERT
TEFNIHRvIENQRSBkaXJlY3Rpb24gdGhlIERTTEFNIHdpbGwgInByZS1kaXN0b3J0IiBlYWNoIGxp
bmVzIHNpZ25hbCBkeW5hbWljYWxseSBzbyB0aGF0IGFmdGVyIHRoZSB1bmF2b2lkYWJsZSBjcm9z
c3RhbGsgaW50ZXJhY3Rpb24gYmV0d2VlbiB0aGUgbGluZXMgdGhlIHJlc3VsdGluZyAicHVsc2Ug
c2hhcGVzIiBhcmUgY2xlYW4oZXIpIGFnYWluIHdoZW4gdGhleSByZWFjaCB0aGUgQ1BFIChJIGFt
IHNpbXBsaWZ5aW5nIGJ1dCB0aGUgcHJpbmNpcGxlIGhvbGRzKS4gSW4gQ1BFIHRvIERTTEFNIGRp
cmVjdGlvbiB0aGF0IGlzIG5vdCBwb3NzaWJsZSAoc2luY2UgdGhlcmUgaXMgbm8gZW50aXR5IHNl
ZWluZyBhbGwgY29uY3VycmVudCB0cmFuc21pc3Npb25zIGFuZCBoZW5jZSBubyBwb3NzaWJpbGl0
eSB0byBjYWxjdWxhdGUgb3IgYXBwbHkgdGhlIHByZS1kaXN0b3J0aW9uLCBzbyB0aGUgbWV0aG9k
IG9mIGNob2ljZSBpcyB0byBzaW1wbHkgdHJ5IHRvIGRlY29kZSBhbGwgbGluZXMgdG9nZXRoZXIs
IGFuZCB0byBoZWxwIHdpdGggdGhhdCBDUEUgdHJhbnNtaXQgcG93ZXIgc2VlcyB0byBiZSBhZGp1
c3RlZCB0aGF0IHNpZ25hbCBsZXZlbCBhdCB0aGUgRFNMQU0gaXMgZXF1YWxpemVkLiAoRm9yIHZl
cnkgc2hvcnQgbGlua3MgdGhhdCBvZnRlbiByZXN1bHRzIGluIGxlc3MgdGhhbiBtYXhpbWFsbHkg
cG9zc2libGUgY2FwYWNpdHksIGJ1dCBvdmVyIHRoZSB3aG9sZSBzZXQgb2YgbGlua3MgdGhhdCBt
ZXRob2Qgc2VlbXMgdG8gaW5jcmVhc2UgdG90YWwgY2FwYWNpdHkpLiBJIHdvdWxkIGd1ZXNzIGlu
IHRoZW9yeSB0aGVzZSBtZXRob2RzIGFyZSBhbHNvIGFwcGxpZWQgb24gUkYgbGlua3MgKGV4Y2Vw
dCBSRiB3aXRoIGl0cyAzRCBwcm9wYWdhdGlvbiBpcyBwcm9iYWJseSB3YXkgbW9yZSBjaGFsbGVu
Z2luZykuCgoKCj4gCj4gV2UncmUgc28gZm9jdXNlZCBvbiBidWZmZXIgYmxvYXQgd2UncmUgaWdu
b3JpbmcgZXZlcnl0aGluZyBlbHNlIHdoZXJlIGluY3JlbWVudGFsIGVuZ2luZWVyaW5nIGhhcyBs
ZWQgdG8gcG9vciBwcm9kdWN0cyAmIG9mZmVyaW5ncy4KPiAKPiBbcmptY21haG9uQHJ5emVuMzk1
MCBpcGVyZjItY29kZV0kIGlwZXJmIC1jIDE5Mi4xNjguMS43MiAtaSAxIC1lIC0tYm91bmNlYmFj
ayAtLXRyaXAtdGltZXMKPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0KPiBDbGllbnQgY29ubmVjdGluZyB0byAxOTIuMTY4LjEuNzIs
IFRDUCBwb3J0IDUwMDEgd2l0aCBwaWQgMzEyMzgxNCAoMSBmbG93cykKPiBXcml0ZSBidWZmZXIg
c2l6ZTogIDEwMCBCeXRlCj4gQnVyc3Rpbmc6ICAxMDAgQnl0ZSB3cml0ZXMgMTAgdGltZXMgZXZl
cnkgMS4wMCBzZWNvbmQocykKPiBCb3VuY2UtYmFjayB0ZXN0IChzaXplPSAxMDAgQnl0ZSkgKHNl
cnZlciBob2xkIHJlcT0wIHVzZWNzICYgdGNwX3F1aWNrYWNrKQo+IFRPUyBzZXQgdG8gMHgwIGFu
ZCBub2RlbGF5IChOYWdsZSBvZmYpCj4gVENQIHdpbmRvdyBzaXplOiAxNi4wIEtCeXRlIChkZWZh
dWx0KQo+IEV2ZW50IGJhc2VkIHdyaXRlcyAocGVuZGluZyBxdWV1ZSB3YXRlcm1hcmsgYXQgMTYz
ODQgYnl0ZXMpCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCj4gWyAgMV0gbG9jYWwgMTkyLjE2OC4xLjY5JWVucDRzMCBwb3J0IDQx
MzM2IGNvbm5lY3RlZCB3aXRoIDE5Mi4xNjguMS43MiBwb3J0IDUwMDEgKHByZWZldGNoPTE2Mzg0
KSAoYmIgdy9xdWlja2FjayBsZW4vaG9sZD0xMDAvMCkgKHRyaXAtdGltZXMpIChzb2NrPTMpIChp
Y3duZC9tc3MvaXJ0dD0xNC8xNDQ4LzI4NCkgKGN0PTAuMzMgbXMpIG9uIDIwMjMtMDMtMTIgMTQ6
MDE6MjQuODIwIChQRFQpCj4gWyBJRF0gSW50ZXJ2YWwgICAgICAgIFRyYW5zZmVyICAgIEJhbmR3
aWR0aCAgICAgICAgIEJCIGNudD1hdmcvbWluL21heC9zdGRldiAgICAgICAgIFJ0cnkgIEN3bmQv
UlRUICAgIFJQUwo+IFsgIDFdIDAuMDAtMS4wMCBzZWMgIDEuOTUgS0J5dGVzICAxNi4wIEtiaXRz
L3NlYyAgICAxMD0wLjMxMS8wLjIwOS8wLjc1NS8wLjE1OSBtcyAgICAwICAgMTRLLzIwMiB1cyAg
ICAzMjIwIHJwcwo+IFsgIDFdIDEuMDAtMi4wMCBzZWMgIDEuOTUgS0J5dGVzICAxNi4wIEtiaXRz
L3NlYyAgICAxMD0wLjI1NC8wLjE4MC8wLjMzNS8wLjA1MSBtcyAgICAwICAgMTRLLzIxMCB1cyAg
ICAzOTM0IHJwcwo+IFsgIDFdIDIuMDAtMy4wMCBzZWMgIDEuOTUgS0J5dGVzICAxNi4wIEtiaXRz
L3NlYyAgICAxMD0wLjI2Ni8wLjE2OC8wLjQ2OC8wLjA4OCBtcyAgICAwICAgMTRLLzIxMCB1cyAg
ICAzNzU0IHJwcwo+IFsgIDFdIDMuMDAtNC4wMCBzZWMgIDEuOTUgS0J5dGVzICAxNi4wIEtiaXRz
L3NlYyAgICAxMD0wLjI5NC8wLjE4NC8wLjQ0Mi8wLjA3OCBtcyAgICAwICAgMTRLLzIzMyB1cyAg
ICAzMzk2IHJwcwo+IFsgIDFdIDQuMDAtNS4wMCBzZWMgIDEuOTUgS0J5dGVzICAxNi4wIEtiaXRz
L3NlYyAgICAxMD0wLjI2My8wLjE1MC8wLjQyNy8wLjA3NyBtcyAgICAwICAgMTRLLzIxNSB1cyAg
ICAzODAyIHJwcwo+IFsgIDFdIDUuMDAtNi4wMCBzZWMgIDEuOTUgS0J5dGVzICAxNi4wIEtiaXRz
L3NlYyAgICAxMD0wLjMyNS8wLjIzNy8wLjQwOS8wLjA1NiBtcyAgICAwICAgMTRLLzI1OCB1cyAg
ICAzMDc3IHJwcwo+IFsgIDFdIDYuMDAtNy4wMCBzZWMgIDEuOTUgS0J5dGVzICAxNi4wIEtiaXRz
L3NlYyAgICAxMD0wLjI1OS8wLjE2NS8wLjQxMC8wLjA3NyBtcyAgICAwICAgMTRLLzIxOSB1cyAg
ICAzODU3IHJwcwo+IFsgIDFdIDcuMDAtOC4wMCBzZWMgIDEuOTUgS0J5dGVzICAxNi4wIEtiaXRz
L3NlYyAgICAxMD0wLjI3Ny8wLjE5My8wLjQxNS8wLjA2OCBtcyAgICAwICAgMTRLLzIyNCB1cyAg
ICAzNjA4IHJwcwo+IFsgIDFdIDguMDAtOS4wMCBzZWMgIDEuOTUgS0J5dGVzICAxNi4wIEtiaXRz
L3NlYyAgICAxMD0wLjI5Mi8wLjIwNi8wLjQ2NS8wLjA3MiBtcyAgICAwICAgMTRLLzIzMSB1cyAg
ICAzNDIwIHJwcwo+IFsgIDFdIDkuMDAtMTAuMDAgc2VjICAxLjk1IEtCeXRlcyAgMTYuMCBLYml0
cy9zZWMgICAgMTA9MC4yNTYvMC4xNTcvMC40MzkvMC4wODIgbXMgICAgMCAgIDE0Sy8yMTEgdXMg
ICAgMzkwOCBycHMKPiBbICAxXSAwLjAwLTEwLjAxIHNlYyAgMTkuNSBLQnl0ZXMgIDE2LjAgS2Jp
dHMvc2VjICAgIDEwMD0wLjI4MC8wLjE1MC8wLjc1NS8wLjA4NSBtcyAgICAwICAgMTRLLzEwMzMg
dXMgICAgMzU3MyBycHMKPiBbICAxXSAwLjAwLTEwLjAxIHNlYyAgT1dEIERlbGF5cyAobXMpIENu
dD0xMDAgVG89MC4xNjkvMC4wNzQvMC4zMTgvMC4wNTYgRnJvbT0wLjEwNS8wLjA1NS8wLjE2Mi8w
LjAyNCBBc3ltbWV0cnk9MC4wNjUvMC4wMDAvMC4xNzIvMC4wNDkgICAgMzU3MyBycHMKPiBbICAx
XSAwLjAwLTEwLjAxIHNlYyBCQjgoZiktUERGOiBiaW4odz0xMDB1cyk6Y250KDEwMCk9MjoxNCwz
OjU3LDQ6MjAsNTo4LDg6MSAoNS4wMC85NS4wMC85OS43JT0yLzUvOCxPdXRsaWVycz0wLG9ibC9v
YnU9MC8wKQo+IAo+IAo+IEJvYgo+PiBEYXZlLAo+PiB5b3VyIHByZXNlbnRhdGlvbiB3YXMgYXdl
c29tZSwgSSBmdWxseSBhZ3JlZSB3aXRoIHlvdSA7KS4gSSB2ZXJ5IG11Y2gKPj4gbGlrZWQgeW91
ciBwcmFjdGljYWwgZnVubmVsIGRlbW9uc3RyYXRpb24gd2hpY2ggd2FzIGJvaWxlZCBkb3duIHRv
IHRoZQo+PiBiYXJlIG1pbmltdW0gKEkgb25seSBwYXJ0bHkgYXNrZWQgbXlzZWxmLCB3aWxsIHRo
ZSBsaXF1aWQgc3BpbGwgaW4gaW4KPj4geW91ciBsYXB0b3BzIGtleWJvYXJkLCBhbmQgaWYgc28g
aXMgaXQgd2F0ZXItcHJvb2YsIGJ1dCB5b3UgY2xlYXJseQo+PiBoYWQgcmVoZWFyc2VkL3RyaWVk
IHRoYXQgYmVmb3JlKS4KPj4gQlRXLCBJIGFsd2F5cyBoYXZlIHRvIHRoaW5rIG9mIHRoaXMKPj4g
aCsrcHM6Ly93d3cueW91dHViZS5jb20vd2F0Y2g/dj1SN3lmSVNsR0xOVSBzb21laG93IHdoZW4g
eW91IHByZXNlbnQKPj4gbGl2ZSBmcm9tIHRoZSBtYXJpbmEgOykKPj4gSSBhbSBzdGlsbCBub3Qg
dGhyb3VnaCB3YXRjaGluZyBhbGwgb2YgdGhlIHByZXNlbnRhdGlvbnMgYW5kIHBhbmVscywKPj4g
YnV0IGNhbiBhbHJlYWR5IHNheSwgdGVhbSBMNFMgY29udGludWVzIHRvIG92ZXItcHJvbWlzZSBh
bmQKPj4gdW5kZXItZGVsaXZlciwgYnV0IEtvZW4ncyBwcmVzZW50YXRpb24gaXRzZWxmIHdhcyBk
b25lIHdlbGwgYW5kIG1pZ2h0Cj4+IChzYWRseSkgY29udmluY2UgcGVvcGxlIHRvIGJ1eS1pbiBp
bnRvIEw0KFMpID0gMkwyTCA9IHRvbyBsaXR0bGUsIHRvbwo+PiBsYXRlLgo+PiBTdHVhcnQncyBS
UE0gcHJlc2VudGF0aW9uIHdhcyBncmVhdCwgbWFraW5nIGEgY29udmluY2luZyBwb2ludC4KPj4g
KEV4Y2VwdCBmb3IgcGl0Y2hpbmcgTDRTIGFuZCBMTEQgYXMgInNvbHV0aW9ucyIsIEkgd2lsbCBh
Y2NlcHQgdGhlbSBhcwo+PiBhIHN0ZXAgaW4gdGhlIHJpZ2h0IGRpcmVjdGlvbiwgYnV0IHdoeSBu
b3QgZ28gaW4gYWxsIHRoZSB3YXkgYW5kCj4+IGVtYnJhY2UgcHJvcGVyIHNjaGVkdWxpbmc/KQo+
PiBJbiBkZXRhaWwgdGhvdWdoLCBJIGFtIG5vdCBmdWxseSBjb252aW5jZWQgYWJvdXQgdGhlIGRl
Y2lzaW9uIG9mCj4+IHRha2luZyB0aGUgaW52ZXJzZSBvZiBkZWxheSBpbmNyZWFzZSBhcyBzaW5n
dWxhciBtZWFzdXJlIGhlcmUgYXMgSQo+PiBjb25zaWRlciB0aGF0IGFzIGEgYml0IG9mIGEgc3F1
YW5kZXJlZCBvcHBvcnR1bml0eSBhdCBwdWJsaWMKPj4gb3V0cmVhY2gvZWR1Y2F0aW9uIGFuZCBh
cyBjb21wYXJpbmcgaWRsZSBhbmQgd29ya2luZyBSUE0gaXMKPj4gbm9uLWludHVpdGl2ZSwgd2hp
bGUgaWRsZSBhbmQgd29ya2luZyBSVFQgY2FuIGltbWVkaWF0ZWx5IHN1YnRyYWN0ZWQKPj4gdG8g
c2VlIHRoZSBleHRlbnQgb2YgdGhlIHF1ZXVlaW5nIGRhbWFnZSBpbiBhY3Rpb25hYmxlIHRlcm1z
Lgo+PiBUcnkgdGhlIHNhbWUgd2l0aCBSUE0gdmFsdWVzOgo+PiAxMjMtMTIzNDU2Nzp+IHVzZXIk
IG5ldHdvcmtRdWFsaXR5IC12Cj4+ID09PT0gU1VNTUFSWSA9PT09Cj4+IFVwbG9hZCBjYXBhY2l0
eTogMjIuMjA4IE1icHMKPj4gRG93bmxvYWQgY2FwYWNpdHk6IDg4LjA1NCBNYnBzCj4+IFVwbG9h
ZCBmbG93czogMTIKPj4gRG93bmxvYWQgZmxvd3M6IDEyCj4+IFJlc3BvbnNpdmVuZXNzOiBIaWdo
ICgyNjIyIFJQTSkKPj4gQmFzZSBSVFQ6IDE4Cj4+IFN0YXJ0OiAzLzEyLzIzLCAyMTowMDo1OAo+
PiBFbmQ6IDMvMTIvMjMsIDIxOjAxOjA4Cj4+IE9TIFZlcnNpb246IFZlcnNpb24gMTIuNi4zIChC
dWlsZCAyMUc0MTkpCj4+IGhlcmUgd2UgY2FuIGRpdmlkZSA2MCBbc2VjL21pbnV0ZV0gKiAxMDAw
IFttcy9zZWNdIGJ5IHRoZSBSUE0gWzEvbWluXQo+PiB0byBnZXQ6IDYwMDAwLzI2MjIgPSAyMi44
OCBtcyBsb2FkZWQgZGVsYXkgYW5kIHN1YnRyYWN0IHRoZSBiYXNlIFJUVAo+PiBvZiAxOCBmb3Ig
NjAwMDAvMjYyMiAtIDE4ID0gNC44OCB+NW1zIG9mIGxvYWRlZCBkZWxheSB3aGljaCBpcyBhCj4+
IHVzZWZ1bCBxdWFudGl0eSB3aGVuIG1hbmFnaW5nIGEgZGVsYXkgYnVkZ2V0ICh0aGlzIHRlc3Qg
d2FzIHBlcmZvcm1lZAo+PiBvdmVyIHdpcmVkIGV0aGVybmV0IHdpdGggY29tcGV0ZW50IEFRTSBh
bmQgdHJhZmZpYyBzaGFwaW5nIG9uIHRoZQo+PiBsaW5rLCBzbyBubyBzdXJwcmlzZSBhYm91dCB0
aGUgb3V0Y29tZSB0aGVyZSkuIExldCdzIGxvb2sgYXQgdGhlCj4+IHJldmVyc2UgYW5kIGNvbnZl
cnQgdGhlIGJhc2UgUlRUIGludG8gYSBiYXNlIFJQTSBzY29yZSBpbnN0ZWFkOgo+PiA2MDAwLzE4
ID0gMzMzIHJwbSwgd2hhdCBleGFjdGx5IGRvZXMgdGhlIGRlbHRhIFJQTSBvZiAyNjIyLTMzMyA9
Cj4+IDIyODlycG0gbm93IHRlbGwgdXMgYWJvdXQgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiBpZGxl
IGFuZCB3b3JraW5nCj4+IGNvbmRpdGlvbnM/IFtXZWxsLCBzaW5jZSBjb252ZXJzaW9uIGlzIG5v
dCB3aXRjaGNyYWZ0LCBJIHdpbGwgYmUgZmluZQo+PiBhcyB3aWxsIG90aGVyIGludGVyZXN0ZWQg
aW4gYWN0dWFsIGV2b2tlZCBkZWxheSwgYnV0IHdlIGNvdWxkIGhhdmUKPj4gZ290dGVuIGEgYmV0
dGVyIG1lYXN1cmUqXQo+PiBBbmQgYWxsIGZvciB0aGUgc29tZXdoYXQgdW5oZWxwZnVsIGNhciBh
bmFsb2d5Li4uIChpdCBpcyBub3QgdGhhdCBmb3IKPj4gaW50ZXJuYWwgY29tYnVzdGlvbiBlbmdp
bmVzIGJpZ2dlciBpcyBuZWNlc3NhcmlseSBiZXR0ZXIgZm9yIFJQTSwKPj4gZWl0aGVyIGZvciB0
b3JxdWUgb3IgZnVlbCBlZmZpY2llbmN5KS4KPj4gSSBndWVzcyB0aGF0IHNoaXAgaGFzIHNhaWxl
ZCB0aG91Z2ggYW5kIFJQTSBpdCBpcwo+PiAqKSBTdHVhcnQgbm90ZXMgdGhhdCBtaWxsaXNlY29u
ZHMgYW5kIEhlcnR6IHNvdW5kIHRvIHNjaWVuY3ksIGJ1dCB0aGV5Cj4+IGNvdWxkIHNpbXBseSBo
YXZlIGdpdmVuIHRoZSBkZWxheSBpbmNyZWFzZSBpbiBtaWxsaXNlY29uZHMgYSBmYW5jaWVyCj4+
IG5hbWUgdG8gc29sdmUgdGhhdCBzcGVjaWZpYyBwcm9ibGVtLi4uCj4+PiBPbiBNYXIgMTIsIDIw
MjMsIGF0IDIwOjMxLCBEYXZlIFRhaHQgdmlhIFJwbSA8cnBtQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5l
dD4gd3JvdGU6Cj4+PiBodHRwczovL3d3dy5yZWRkaXQuY29tL3IvSG9tZU5ldHdvcmtpbmcvY29t
bWVudHMvMTFwbWM5YS9jb21tZW50L2pieXBqMHovP2NvbnRleHQ9Mwo+Pj4gLS0KPj4+IENvbWUg
SGVja2xlIE1hciA2LTkgYXQ6IGh0dHBzOi8vd3d3LnVuZGVyc3RhbmRpbmdsYXRlbmN5LmNvbS8K
Pj4+IERhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCj4+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gUnBtIG1haWxpbmcgbGlzdAo+Pj4gUnBt
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+Pj4gaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQv
bGlzdGluZm8vcnBtCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4+IFJwbSBtYWlsaW5nIGxpc3QKPj4gUnBtQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+
PiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9ycG0KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xp
c3RpbmZvL2Nha2UK

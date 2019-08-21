Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 96561977AF
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 13:03:14 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8EBDD3CB38;
	Wed, 21 Aug 2019 07:03:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566385393;
	bh=53scdX6rA/zFgb90oueXnodL3crZSpUGPeq4B+4HVCM=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m2DzNLm/Moif2pn4BXcev6Y5z1erw2PkjcItyjudXrT3qCf/3O7US3zI8Kj6IwsOR
	 3qNg6u57lgLH7TPQ8stPv5WhR3AOlxg5IY08zrHZ5G7Jbx2RYb3LOYIhjw8hsdwTBz
	 G8QZA/qgy5qziXHC0YRL8kpbJEma/AaDqpAq7u/oOv90oTMevbART2Yw09HQ/S81QE
	 GtF+DN2l6d5TOQFe8t/4e9nhKjtcZsEZithBKgAsKJAy+KwzJMC8IIhMoTgIzhlWtX
	 ktqMEa7lD3COgZP9qg4BxwqK4PLeHEciZwC5kHeaGfXXbneQV6I96Jn5vqxl/WzU8X
	 +T9nElOfy1riA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0EFE53CB35
 for <cake@lists.bufferbloat.net>; Wed, 21 Aug 2019 07:03:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566385386;
 bh=ElCCubemwQTzN8yF3gKHmyzETyqtC27nqn1YYx336D8=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=eznUEZzj5EoO4sZEYTl5uXv8YjshcasVvYPZL63fQ8iXQbTC7PEjqiB0ctPqhbvgN
 I90yCuPxFUYSZUZ5OacGE9ncYmESBHgAXIiLwLfj0TSIxUG1Prm2m5LoT8u7WWeQgB
 5EjVHrFzhsx1bkvDcB/UcqliYtk1p5aA19narEXo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [10.11.12.32] ([134.76.241.253]) by mail.gmx.com (mrgmx002
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0Leux5-1ib5mf3Ghj-00qk01; Wed, 21
 Aug 2019 13:03:06 +0200
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <87wof6rf7t.fsf@toke.dk>
Date: Wed, 21 Aug 2019 13:03:05 +0200
Message-Id: <31A707C5-D684-415E-8579-20264921AF11@gmx.de>
References: <CAA93jw4FDjYjxxStyzMu8eCz_6Ezcumg-iZaYeM3kBZ5da8MBQ@mail.gmail.com>
 <fc64c772-d85c-deba-a0e4-4e590cfb76ee@newmedia-net.de>
 <CAA93jw4Fm=uY08A3XHWh3d=OKNfraCeYHwFGtAdPH7a51vG6WA@mail.gmail.com>
 <384866b4-4c91-cf2c-c267-ee4036e5fbf7@newmedia-net.de>
 <87wof7sriw.fsf@toke.dk>
 <6782ec15-30eb-63b0-f54f-376c5e6b840b@newmedia-net.de>
 <87tvabsp99.fsf@toke.dk>
 <74bccc2b-b805-255f-b6a7-83ade9af6765@newmedia-net.de>
 <87r25fsn70.fsf@toke.dk>
 <b52b087d-c21c-e190-1bc7-a06e5fe6305f@newmedia-net.de>
 <54438C64-C613-438E-9CB9-6C6D0C5EAFA0@gmail.com> <87sgpvflo4.fsf@taht.net>
 <87wof6rf7t.fsf@toke.dk>
To: =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Provags-ID: V03:K1:1DvSOi1SbzmeDEMSiSn3w/smGepswgkEAb0UG8aYVWWqoSo5lgF
 MoJlwHLBRS+fB6YchgGew6ozWVCpLbW2z8sr4lar7e35/07smwCJTPUBOVZN6BJfM/5PdqD
 HOUp4kcVsxh6P8qfNtVLgRRkkcfTbWVM7+QhbPEs1oQk3AEplRDQWCj9u9if0V3BioyIzw/
 oMm2pbSCEdrPFtlWGdZqg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9ho3+7W3s5g=:5aeJkpC4BH1NPa/5gWRpMf
 QJ+ypV+GYAPBuykz2Q5or0F50I86kgT5UD6paKRlbsUv9/QXXcjlTO9WjcNZwPcz/OTwWAs4M
 KmWd+e4/xQkPdHDWTX9xDrgBescpTiyJplpCxn89rJfDccvHNFt1ZrDlfae3rbeDuauC4SvAl
 n79EQAGQ194ldBjztzG3ScSVTC4I/Qf6RVr2vxPjZgPrFeVBlzQ2FUvkJF2pn2eiHvU/rSoan
 kH8sdYqsYLxwyMGYsAZWOh26/9pYQzkNLilLZ5YersjLJjyA+ghfg/hol40xrrxNDQxYBXb4B
 v2tD9+fal75L6k7gh2IqjHvax+8wta2TBG4iRS1ACmaCybDkDqNE2gHMEdUw9eV7vh65gO4tT
 mx1gcUSeZk9k0B5bdpeX9GJFdZ3eRi72uWpJb9WY2A5UxYl4uBo2vElG2ACM+lYLCw4YlVDCd
 9QXKL5nYMmDvGNuHN07h4gGbwGHPe7caD9Yt8XDpfZ5B/CY+XSKfTptszbUkSEY0pnXrTZVM1
 6kD+AjSuSyamXoyhKfupt/qPRE38lRcyp7eYcnfBBiDBxI2Xhpj91AhJMl5RruqOTSwvPGTNz
 n7OvPzrWr2sKdhEhBGjTmr/QrqjEUu3y/7jnik30nYHH2F3cldsbNM0MkWOBtiCagPG7mGkkq
 2M+hreJnYmbbN4DuUxg5hIUaxljSDq9wDllv/FfPkjGzQoIWBta8O1tqWAOs++bkDMw2ePAZ3
 HjhBH6OHvcNesm+HDPrz4aY4imcRjo8/OR1pHlSOSddgzgNDcMYDL8Hh85FBhso+LXwL0Nde2
 tavS4pSruBIfS2t3snIYoJ0n5VX6OUTvUhMh0XVJufhoW8JW097hs76TlZ+tIkgaRnxV7D90Y
 BjYGKyMtkXzSTUQkqF62Tm5HsG/pkNM6ftCQgorDXk5uRxr/0R+jD72YfPO2AaBfZdqgsPPkg
 5t/aJQUiZRf+hDyLLc6bJ/qqbsHu5dbP8turcq48XtJx3FU3kiCDsohr81jmWn0utI9CF/ydB
 +Hz05lz4cpu414Wmb3DjI9//wdd4fQWFCAA8G1rGtW5JWizIoEQK5is9rqfCoUQouCns5jfll
 JJ96q7Ol4Gf5CbCNepuTZMUERsVW8R9sBI9eCt72XWujRWpBZohqLA8ll9rqMYRSFKfJwZEI/
 3kCCw=
Subject: Re: [Cake] cake in dd-wrt
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
Cc: "cake@lists.bufferbloat.net >> Cake List" <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Cgo+IE9uIEF1ZyAyMSwgMjAxOSwgYXQgMTI6MjEsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8
dG9rZUByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBEYXZlIFRhaHQgPGRhdmVAdGFodC5uZXQ+IHdy
aXRlczoKPiAKPj4gSm9uYXRoYW4gTW9ydG9uIDxjaHJvbWF0aXg5OUBnbWFpbC5jb20+IHdyaXRl
czoKPj4gCj4+Pj4gT24gMjAgQXVnLCAyMDE5LCBhdCA5OjM5IHBtLCBTZWJhc3RpYW4gR290dHNj
aGFsbCA8cy5nb3R0c2NoYWxsQG5ld21lZGlhLW5ldC5kZT4gd3JvdGU6Cj4+Pj4gCj4+Pj4g4oCm
YSBoZWF2eSBiaXR0b3JyZW50IGRvd25sb2FkZXIgd2lsbCBzdGlsbCBzdGVhbCB0aGUgYmFuZHdp
ZHRoIG9mIG15IHNjcCBzZXNzaW9uLgo+Pj4gCj4+PiBJZiB5b3UgY2FuIGlkZW50aWZ5IHRoZSBC
aXR0b3JyZW50IHBhY2tldHMsIHlvdSBjYW4gbWFyayB0aGVtIENTMSwgYW5kCj4+PiBzd2l0Y2gg
b24gQ2FrZSdzICJkaWZmc2VydjMiIG1vZGUgKGFzIGl0IGlzIGJ5IGRlZmF1bHQpLiAgVGhlbiB0
aGUKPj4+IEJpdHRvcnJlbnQgcGFja2V0cyB3aWxsIHN0aWxsIGJlIGFibGUgdG8gdXNlIGZ1bGwg
YmFuZHdpZHRoIGlmIGl0J3MKPj4+IGF2YWlsYWJsZSwgYnV0IHdpbGwgYmUgbGltaXRlZCB0byAx
LzE2dGggb2YgdGhlIHRvdGFsIGlmIHRoZXJlIGlzCj4+PiBjb250ZW50aW9uLgo+PiAKPj4gSSBy
ZWdhcmQgdGhlIHdob2xlIENTMSB0aGluZyBhcyBoYXZpbmcgbmV2ZXIgYmVlbiBwYXJ0aWN1bGFy
bHkKPj4gc3VjY2Vzc2Z1bCBmb3IgYSB2YXJpZXR5IG9mIHJlYXNvbnMgLSBpbiBwYXJ0aWN1bGFy
IGJlY2F1c2UKPj4gd2Ugc2VlbWVkIHRvIGJlIHRoZSBvbmx5IG9uZXMgYXR0ZW1wdGluZyB0byB1
c2UgaXQgd2l0aCByaWdvci4KPj4gCj4+IEkgd291bGQgbGlrZSB0byBwYXRjaCBpbiBhbmQgc3Vi
bWl0ICJMRSIgc3VwcG9ydCB0byBtYWlubGluZSBjYWtlLgo+PiAKPj4gVGhlIFJGQyByZXRpcmVz
IENTMSAtIHdoaWNoIEkgd291bGRuJ3QgcmV0aXJlIC0gYnV0IHNlZToKCkRvZXMgaXQgcmVhbGx5
IGRvIHRoYXQ/IEkgc2VlIGEgc2VjdGlvbiByZXF1ZXN0aW5nIGRvbWFpbnMgdXNpbmcgQ1MxIHRv
IHJlbWFyayB0byBMRSBvbiBlZ3Jlc3MsIHdoaWNoLCBnaXZlbiB0aGF0IGhhcmR3YXJlIG9mdGVu
IHRyZWF0cyBDUzEgdG8gaGlnaGVyIHByaW9yaXR5IHRoYW4gQ1MwIHNlZW1zIGxpa2UgdGhlIHJp
Z2h0IHRoaW5nIHRvIGRvLi4uIEkgYWxzbyBzZWUgY2hhbmdlcyB0byBhbGwgUkZDcyB0aGF0IHJl
Y29tbWVuZGVkIENTMSBhcyBMRS1EU0NQLCBidXQgaXQgc3BlY2lmaWNhbGx5IGNhdGVycyB0byBk
c2NwIGRvbWFpbnMgdGhhdCBhY3RpdmVseSB1c2UgQ1MxLiBUaGUgYmlnZ2VyIGlzc3VlIEkgc2Vl
IGluIHRoZSByZXF1ZXN0IHRvIG5ldmVyIGJsZWFjaC9ub3IgcmUtbWFyayAwMDAwMDEsIGJ1dCBp
ZiB0aGlzIGNhbiBiZSBhY2hpZXZlZCBmb3IgYW55IGNvZGVwb2ludCB0aGUgZm9yIExFLCBhc3N1
bWluZyBldmVyeSBkb21haW4gb3duZXIgbWlnaHQgYWN0dWFsbHkgYmUgaW50ZXJlc3RlZCB0byB1
c2UgdGhpcyBpbmZvcm1hdGlvbiBmb3IgZHJvcHBpbmcvcXVldWVpbmcgZGVjaXNpb25zLCBubz8K
CkJlc3QgUmVnYXJkcwoJU2ViYXN0aWFuCgoKPj4gCj4+IGh0dHBzOi8vd3d3LnJmYy1lZGl0b3Iu
b3JnL3JmYy9yZmM4NjIyLmh0bWwKPiAKPiBZZWFoLCBnZXR0aW5nIHN1cHBvcnQgZm9yIHRoYXQg
dXBzdHJlYW0gbWlnaHQgYmUgYSBnb29kIGlkZWEgOikKPiAKPj4gQWxzbyBpdCBzZWVtcyBsaWtl
IGEgZ29vZCBpZGVhIHRvIGFsc28gc3VibWl0IHRoZSBOUyBiaXQKPj4gZXhjbHVzaW9uIGZyb20g
dGhlIGFjayBmaWx0ZXIgdG8gbWFpbmxpbmUgYXMgd2VsbC4KPiAKPiBXaGF0J3MgdGhhdD8KPiAK
PiAtVG9rZQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gQ2FrZSBtYWlsaW5nIGxpc3QKPiBDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo+IGh0dHBz
Oi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlz
dHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZv
L2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D0732662D
	for <lists+cake@lfdr.de>; Fri, 26 Feb 2021 18:14:28 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 94C643CB42;
	Fri, 26 Feb 2021 12:14:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614359663;
	bh=lR2imc/f0uuX112aUvJOOKt2jqDhCTSIzS6DrtAyv+c=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ne6+flX+vFTAlW8yQm8J1ia8e3d4Ek5veFSRJ2nDMcSQhwOzaVwV//gmbolhzjMTh
	 kSGtNlR5E/9JenwtMJiIpXlbohrLNDLMxSXJfqUxuC9TpL2hWMLAcBkk0fERMle35s
	 VrTKmVGCSavs8W27levHtUhiKMcCejfB8hjPybIFpHOBcvNSrlfy6jCsYQeXxXgdu5
	 XIQ4WtFQg1B++DOCHJJ8wd02CypMCYlpnaUvN+/CtcdqnOZh4tTulj0nq3Gu8f9Aa3
	 dMNSsrAS0EoYLeYgxtKqun5tbiSVXC1IxwUjIhrNNXGt214haI9PNWatqPUznEOSI7
	 zuQpy2jw8mgsw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 5CAB43B29E;
 Fri, 26 Feb 2021 12:14:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1614359649;
 bh=awi8y7XIIH0yERG48VwNJaaDN1NzsWSWPRZgl+ftUxA=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=ReCTMxO/Z94jP9Cx/ATL+BL/QSS2mqXVNqEFKiTDRBPH4KfieFIJNLKisssYaLevz
 1rsC6c4bo62hX98PKb698/5yaYjepBaCWFhGZnV9H6zBID/ux+/kndzGIKaEnV7rWu
 n7lvjaypvLrliVEcy7UnnxSpcOSp3XhVBZPHVoOk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.250.106] ([134.76.241.253]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MOiDd-1lS8bu05kd-00Q8Sp; Fri, 26
 Feb 2021 18:14:09 +0100
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.17\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <539a80fd-46d5-c373-a379-0c7b127714a2@kit.edu>
Date: Fri, 26 Feb 2021 18:14:07 +0100
Message-Id: <C6C74E08-8727-4695-8B01-C1FCDC5A33AF@gmx.de>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
 <CAA93jw4-wspLUfL_ZJW1BN0uWaEqZGMOVnD3Z1jgrKOJ_r8xLw@mail.gmail.com>
 <87im6h4u2p.fsf@toke.dk>
 <a43b8d79-8d32-4048-a47e-df92eae622fa@www.fastmail.com>
 <369A70AB-3ADF-4211-8A09-E9FB77CEE59D@toke.dk>
 <90a13934-4ec7-4872-bbf8-c6c0f6304ce3@www.fastmail.com>
 <87wnuw1luc.fsf@toke.dk> <86692246-90d3-4b5b-bcb3-5a67a29d67f7@lochnair.net>
 <87mtvryrsi.fsf@toke.dk> <7513975f-9fba-f036-2037-f901e6c29af1@lochnair.net>
 <539a80fd-46d5-c373-a379-0c7b127714a2@kit.edu>
To: "Bless, Roland (TM)" <roland.bless@kit.edu>
X-Mailer: Apple Mail (2.3445.104.17)
X-Provags-ID: V03:K1:93pJwFopfgnoCMJkjvVitcaY0+MK2U7ouRokgoHAL6lYRmeizVO
 1159nMnus594w7Sc++XLwxmC8QUDReGwSems/lstoP/EQ9L9dGv/y84XCkzuc+g+viPErIY
 3jt1fdRIzpd/BhYP3/3iMwH0hltHi9TaH6pb3xzuCC0zycXvTRTt2uOYr2L0K7Wgvycq3uC
 Regn/0CSL/rAtwJY+uO/g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jnipNeMcXLY=:oshXYvQhwfkR5fvP0HhvL+
 09NoC7vYb37wmzqMbmUdubbi19tXsQis0L4OL7/ci6Q1hSADOlwT2IYshxUu+kQvOvm8VtVsu
 GXkOZaOik852b9aQvM7kV4dMszxu0qnUNsHpT0yTNq9y8FzzeS6a8nn8P7ykgm0PCuBgyvKTd
 YPa2IlKQLZOqz1GjZJFJExR/GpQmb0hlgO1gYIx8/asldZdPgYXDy6diiM1OjGxKO7UxaRADf
 jFQLWlgnUeh6aCkw9bn1qhaiBL/yERKzvlDvcZUWpEvBL6KOreSzcsQ9jZvLWh3vneLAGYFbe
 xptOlR80v16tizD6Ay49r3VsowrggxiVGnTxl8Cn2GkPb5GD96WBJ9tXQsG76eCgX0TkFo+9V
 jY2xJo9tklaMXMtCSYiVfMcPjORPHc3eTsHF6G3vpTI0P528+xRRo39Pv/Gg4a9LS6gCUZNnD
 bAEABqy80UTpGxxgZPEgHx0QFU57QPsVp/YfAJ46REoO4P6H3cieqJha/KVYtFB2AmyIdmhUP
 6Hl1GBErymuCbWn9s4P6HBAHVSbvtWUJwnMaILpwtWnKiQfKqVPcCG0N+Vu8TFQmFIuS52War
 zlWF+AnWFT7DC7WINQawqEOo5TVc9XQ2ZZ6oNhfJCbKzQXQ1N/BygcgSFk+AlyxUrQtxSzuta
 AFaP5V7ziq58pI541KOfczfj4U1YYv7cA5DtVE5V6nX+Va7Sz92RsIkolYkSjECLxhnWnqZz+
 j3ERJdyNU/JRBSDlBo2l4TR6IQTUTshIaXhi359Y9a/KY+otkaCfRA/N10NRVFoQGgUgdK8gH
 yWjtZkvgfMbH330ylvdVEprE26rGsb6SD9JuUoidug4Unb6TL2V/fUeY5IksBjrUhytQP72S+
 vGahwqz2hteObq7RwEaQ==
Subject: Re: [Cake] [Bloat] Fwd: [Galene] Dave on bufferbloat and jitter at
 8pm CET Tuesday 23
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
Cc: Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 =?utf-8?Q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgUm9sYW5kLAoKYXJlIHlvdSBzdXJlIHRoYXQgQkJSdjIgYWN0dWFsbHkgZXZhbHVhdGVzIENF
IG1hcmtzIGFuZCByZXNwb25kcyB0byB0aGVtPyBBcyBmYXIgYXMgSSB1bmRlcnN0b29kLCBCQlIg
aXMgc2ltcGx5IG5vdCByZmMzMTY4IGNvbXBsaWFudCwgdGhlcmUgd2FzIHNvbWUgdGFsayBhYm91
dCB0ZWFjaGluZyBCQlJ2Misgc29tZSBzdGlsbCB0byBiZSBkZWZpbmVkIGhpZ2ggZnJlcXVlbmN5
IChsb3cgYW1wbGl0dWRlKSBFQ04gc2lnbmFsaW5nLgoKVGhlIHRoaW5nIEkgZmFpbCB0byB1bmRl
cnN0YW5kIGlzLCB3aHkgQkJSIHdpdGggaXRzIGNhdmFsaWVyIGFwcHJvYWNoIHRvIGRyb3BzIGRp
ZCBub3QgZ3JvdyBFQ04gc3VwcG9ydCBvbiBkYXkgb25lLiBXaGlsZSBhIGRyb3AgY291bGQgaGF2
ZSBhIGxvdCBvZiByZWFzb25zLCBpbmNsdWRpbmcgdHJhbnNpZW50L3N0cmF5IHdpZmkgbG9zc2Vz
LCBhIENFIG1hcmsgaXMgbGVzcyBhbWJpZ3VvdXMuCgpCZXN0IFJlZ2FyZHMKCVNlYmFzdGlhbgoK
PiBPbiBGZWIgMjYsIDIwMjEsIGF0IDE3OjU5LCBCbGVzcywgUm9sYW5kIChUTSkgPHJvbGFuZC5i
bGVzc0BraXQuZWR1PiB3cm90ZToKPiAKPiBIaSwKPiAKPiBPbiAyNi4wMi4yMSBhdCAxNjoyNyBO
aWxzIEFuZHJlYXMgU3ZlZSB3cm90ZToKPj4gT24gMi8yNi8yMSAxMjo0NyBQTSwgVG9rZSBIw7hp
bGFuZC1Kw7hyZ2Vuc2VuIHdyb3RlOgo+Pj4gWWVhaCwgdGhlcmUgd291bGQgaGF2ZSB0byBiZSBz
b21lIGtpbmQgb2YgcHJvYmluZyB0byBkaXNjb3ZlciB3aGVuIHRoZQo+Pj4gYmFuZHdpZHRoIGdv
ZXMgdXAgKG1heWJlIHNvbWV0aGluZyBsaWtlIHdoYXQgQkJSIGRvZXM/KS4gV29ya2luZyBvdXQg
dGhlCj4+PiBkZXRhaWxzIG9mIHRoaXMgaXMgc3RpbGwgaW4gdGhlIGZ1dHVyZSwgdGhpcyBpcyBh
bGwganVzdCBsb29zZSBwbGFucwo+Pj4gdGhhdCBJJ2xsIHRyeSB0byBnZXQgYmFjayB0byBvbmNl
IHdlIGhhdmUgdGhlIG1lYXN1cmVtZW50IHRvb2wgd29ya2luZwo+Pj4gcmVhc29uYWJseSB3ZWxs
LiBJbnB1dCBhbmQgZXhwZXJpbWVudHMgd2VsY29tZSwgb2YgY291cnNlIQo+PiBJJ3ZlIGtlcHQg
dG8gbWFpbnRhaW5pbmcgQ0FLRSBiaW5hcmllcyBmb3IgdGhlIEVkZ2VSb3V0ZXJzLCBzbyBJIGhh
dmUgYSBsb3QgdG8gcmVhZCB1cCBvbiBpZiBJJ20gZ29ubmEgdGFrZSBhIHN0YWIgYXQgdGhpcywg
c2hvdWxkIGJlIGZ1biB0aG91Z2ggOikKPj4gSSdsbCBoYXZlIGEgbG9vayBhdCBob3cgQkJSIGRv
ZXMgaXQsIGFuZCBzZWUgaWYgSSBjYW4ndCBmaWd1cmUgb3V0IGhvdyB0aGF0IHdvcmtzIGF0IGxl
YXN0Lgo+IEJCUiBpbmNyZWFzZXMgaXRzIHNlbmRpbmcgcmF0ZSBhbmQgbG9va3Mgd2hldGhlciB0
aGUgZGVsaXZlcnkgcmF0ZQo+IGluY3JlYXNlcy4gSXQgYXNzdW1lcyB0aGF0IHRoZSBib3R0bGVu
ZWNrIGxpbWl0IGhhc24ndCBiZWVuIHJlYWNoZWQKPiBpbiBjYXNlIHRoZSBkZWxpdmVyeSByYXRl
IHN0aWxsIGluY3JlYXNlcy4gVGhpcyBpcyBjZXJ0YWlubHkgdHJ1ZSB3aGVuCj4gaXQgaXMgdGhl
IG9ubHkgZmxvdyBhdCB0aGUgYm90dGxlbmVjaywgYnV0IG5vdCB0cnVlIHdoZW4gbXVsdGlwbGUK
PiBmbG93cyBhcmUgcHJlc2VudCAodGhlIHByb2JpbmcgZmxvdyBtYXkgc2ltcGx5IHN0ZWFsIG90
aGVyIGZsb3dzJwo+IHNoYXJlcyBhZG4gdGh1cyBnZXQgYSBoaWdoZXIgZGVsaXZlcnkgcmF0ZSBu
ZXZlcnRoZWxlc3MpLgo+IEJCUnYyIGF0IGxlYXN0IGNoZWNrcyBmb3IgcGFja2V0IGxvc3MgYW5k
IEVDTgo+IHNpZ25hbHMgYW5kIGRldGVjdHMgd2hlbiBpdCBoaXRzIGEgaGFyZCBsaW1pdC4gT25l
IGNvdWxkIHRyeSB0bwo+IGRldGVjdCBhIGNvcnJlbGF0ZWQgaW5jcmVhc2UgaW4gUlRUIHdoZW4g
cHJvYmluZyBmb3IgbW9yZSBiYW5kd2lkdGgKPiBhbmQgdGhlbiBzdG9wLCBiZWNhdXNlIGl0IHNl
ZW1zIHRoYXQgdGhlIHF1ZXVlIGlzIGZpbGxlZCBieSB0aGUKPiBpbmNyZWFzZWQgcHJvYmluZyBy
YXRlLiBIb3dldmVyLCBnZXR0aW5nIHRoYXQgcmVsaWFibHkgZGV0ZWN0ZWQgb3V0IG9mCj4gdGhl
IFJUVCBtZWFzdXJlbWVudCBub2lzZSBpcyBzb21ldGltZXMgZGlmZmljdWx0Lgo+IAo+IFJlZ2Fy
ZHMsCj4gUm9sYW5kCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBCbG9hdCBtYWlsaW5nIGxpc3QKPiBCbG9hdEBsaXN0cy5idWZmZXJibG9hdC5uZXQK
PiBodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9ibG9hdAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QK
Q2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQv
bGlzdGluZm8vY2FrZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A417430208
	for <lists+cake@lfdr.de>; Sat, 16 Oct 2021 12:29:07 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 81B443CB55;
	Sat, 16 Oct 2021 06:29:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634380145;
	bh=tlDfW29VxjUPnIlYnsR0LdAJSVDdFo0i1Bkp0Rlocp4=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JAjl0RNip4E6427fuNrUfnjEXtguGLpSKl4rA6+AvvwAJd4tPiXKG2NtDx1JHNMAV
	 CYIa24ofdxwNjFGSUqCTszCg8YKUrff6v0s1EBsxVxNSHTz6SJQV4M08QlEgb+nREi
	 1ehijV6P7SwiL7qPWNp7nnb96j4NpjtJvCCG5+t01TLvDQrqpjnHJ3zrEiNYoCVDLD
	 4A5gbaOEKLiK6jpDaeFCnwBInGEpgciw/ycyiFrxvIUzZKY5RjyEu6siiJdviuwvlK
	 GjZxbPNFAHsc7AJ3aCdNUL4n67qNPxU3Ic69bqop7o0AyS8YAhUkfPmLuW/GUTtzbo
	 yCySkwptqikeQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 488D43B2A4;
 Sat, 16 Oct 2021 06:29:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1634380142;
 bh=Lgp4NtRJsMAeSgks+FmSdBP/7VhMCB5uRjgLLVHo1hE=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=ir8k4t13GepC5fUTyKvKKyb59hNChtSDMj5mrbbzm9qiB/MfZfb92ZZsb72C+JIEf
 QqtPQpBqsoA8LhmkN3OPnKyKb9F1rRBkReS6XdYc6ZYPdrWsnJoeRNl+x/I0JfbCPe
 kKfCzq8R0gfPsgLNaL+xwRJstjLY8JZKP+4PoyEE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.42.229] ([95.116.180.43]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mqb1W-1n6Kqs1Kcq-00me01; Sat, 16
 Oct 2021 12:29:02 +0200
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <C6AC65FB-9BBB-4FCE-8C9F-A270680617C1@gmail.com>
Date: Sat, 16 Oct 2021 12:29:01 +0200
Message-Id: <1FCB2CB8-CFCB-49D4-9274-3CA6398ECB46@gmx.de>
References: <CAA93jw43C7CB-4Jv7h9NvvzjROdO5p2rVbPSZnmSJf0JAaCyaQ@mail.gmail.com>
 <CBBD435B-5A6F-408D-B17C-B28F326B49AC@gmx.de>
 <CAA93jw48afWujaJm8Sn+J-uEHb7iKLx57p7e5d=Qw9QyX=Csqg@mail.gmail.com>
 <87sfx31dt5.fsf@toke.dk>
 <CAA93jw43kC8a4_8YL3dobgvpkLO5UPbOm8yeFvwhh0dgV9eiuw@mail.gmail.com>
 <87pms71cmr.fsf@toke.dk>
 <CAA93jw7VVX_6UxyqczSZ3YoDRo9QvRZTqWqY9+0PC=rOB7FjeQ@mail.gmail.com>
 <95231AF9-DCCA-4D41-9BF4-8F55307F45F6@gmail.com>
 <1F8C74DF-1384-4F72-904A-8293369DE95D@gmx.de>
 <C6AC65FB-9BBB-4FCE-8C9F-A270680617C1@gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
X-Mailer: Apple Mail (2.3608.120.23.2.7)
X-Provags-ID: V03:K1:ucxxZLdyEAij30c/pNB4PgDrOgmuYH4vqHASNMcFt2fBXtQsjh1
 Q6O3ZuNxEG7EAdY2mlm2nmozfF765BfBUiHahqXKQ9yW03k8jG6F9Jukyx+uSUv4bqengvm
 k8h0tBjQ+Q1H7ELHZ95Tfrrc+wMyI9y6O44HDScyJWM/3C4V/3bz5KNatl8Dzenrp5yVvLU
 PWTqVFNmVFcaTGfxg/Ujw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:F5RlIE47PY8=:eRCOAKY6L83YG3qokCzwRO
 mjNbEx8oDY/fvqdUWzbHObAqyDOSBuI04BJy1hRD+4DgFqZ034elX17uGyBwd2VYHmshPLPUY
 rCC6B5t17ZOnOTSACAAIMg/WXYxwHniSDuveLIpTxw+eLNwLzoWfgjwbj9aPQGJzleuXOv3xv
 XPSO8RwlfE6IDboqQS7zVFcM1GkN6FgGcLO3CRMW+UqOjMfYn+Hno4PEWhnLYpCUPLqbE4lm/
 l6dIa8ztia+H/t7lQK7P91YQvw1zklhn3DCT3mpgPPIdDS6bVZjrmKdT2Azdi+R+o9u7dFEGf
 LpOWWvvOjTZV01GcuQYyTQ0FnVHYKGCqUI5RsILMP/PBgo9pRHmdpKObF57/h0EyOFmA+oUja
 TSlnUEh/iHDRxSmparHUISsYduDSYW5h+js1OJYD1K87I9f1I3UBQCx1FBzlwwKiVWT0YURvP
 +jU8/TK1RiEPq8mLRdyNziu//JawSzCY4sZTIFsJ2mJWZEOU8T5foL8/vmH8MzhHrbq6RAPJX
 CLxubxhjSaAVB16D/+sLJAEmA+vlhSJgvMGJC4l/JHulVuSyJj5npszAxGhKbDTF4Dt9vwy+M
 h50OsUkp48/Tqo+sNy3JIsZZkhDBAft9wWoDl5MXjF23a6bsvcG+Wc6KmlQtOKkSy5f78ocQ9
 UIpXaOZLBGrgzzpIsBQhqN12fQGjEOtOupgBW9S0UMli/qO8nkIBW5RKSGxGePd/yYrHULX5s
 39qFvpdetZ0GNJwgmlWORCTzFx1y82p0NTozEsU2ETOvkrF9bvPusYH7a1ZTnhyG0fudODZWt
 XmmqJWGyUdtLsGFFgPVkPPfx/1J/DJYLZVdgidckes5dfpd2rrOonlH5L0oswv5ZBg/LxgWd/
 nyL3Zg9AGUViK4OKzhfUz9frCJXQhQARpuq5/RWrj7jjQVz+kC3t812p2uRpuaH6fLKoJRw8T
 oF49cv6QbS5OWpmB4cnBPN3JBd+M4n/OSheaiCG26/XzJH6WdYH0v7rbgxZstjvn6OwemuReT
 iYi5F8vmILyJA0OXBlDetYt8yGrGSQbGnOSadTnGQCTR/Pi9vF1oivj19GMi48xPPgNo14ds7
 4VRRfi30A96cGQ=
Subject: Re: [Cake] [Ecn-sane]  l4s kernel submission
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
 ECN-Sane <ecn-sane@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Cgo+IE9uIE9jdCAxNiwgMjAyMSwgYXQgMTA6NTQsIEpvbmF0aGFuIE1vcnRvbiA8Y2hyb21hdGl4
OTlAZ21haWwuY29tPiB3cm90ZToKPiAKPj4gT24gMTYgT2N0LCAyMDIxLCBhdCAxMTozOCBhbSwg
U2ViYXN0aWFuIE1vZWxsZXIgPG1vZWxsZXIwQGdteC5kZT4gd3JvdGU6Cj4+IAo+PiBJIGFsc28g
dGhpbmsgdGhhdCBzb21lIG9uZSBzdWJzY3JpYmVkIHNob3VsZCB3ZWlnaHQgaW4gb24gdGhlIGV4
ZW1wdCBvbmUgcGFja2V0IGZyb20gbWFya2luZywgZXNwZWNpYWxseSBpbiB0aGUgbGlnaHQgb2Yg
R1JPL0dTTy4KPiAKPiBJIGRvIGhhdmUgc29tZSBleHBlcmllbmNlIHdpdGggdGhpcyBmcm9tIENh
a2UsIGJ1dCBDYWtlIGhhcyB0aGUgZGlzdGluY3QgYmVuZWZpdCBvZiAodXN1YWxseSkga25vd2lu
ZyB3aGF0IHRoZSBkZXF1ZXVlIHJhdGUgaXMsIHdpdGhvdXQgaGF2aW5nIHRvIGVzdGltYXRlIGl0
LiAgV2l0aG91dCB0aGF0IGtub3dsZWRnZSwgSSdtIG5vdCBzdXJlIGl0J3MgcHJvZml0YWJsZSB0
byBndWVzcyAtIGV4Y2VwdCB0byBzcGVjaWZpY2FsbHkgYXZvaWQgdGFpbCAqbG9zcyosIHdoaWNo
IGlzIG5vdCBhdCBhbGwgdGhlIHNhbWUgYXMgKm1hcmtpbmcqIHRoZSBsYXN0IHBhY2tldC4KPiAK
PiAtIEpvbmF0aGFuIE1vcnRvbgoKWWVzLCBpbiBTUU0vY2FrZSB3ZSBvcHRlZCBmb3IgbWFraW5n
IHRoZSB0YXJnZXQgPj0gMS41IHRpbWVzIHRoZSB0cmFuc21pc3Npb24gdGltZSBvZiBhIGZ1bGwg
c2l6ZWQgcGFja2V0LCBJIHRoaW5rIHRoYXQgaXMgdGhlIGNvcnJlY3Qgc29sdXRpb24gZm9yIHNs
b3cgbGlua3MsIGJ1dCBpZiBvbmUgZ29lcyB0aGUgZXhlbXB0IG9uZSBwYWNrZXQgZnJvbSBtYXJr
aW5nIHRoaXMgcmVxdWlyZXMgR1NPLXNwbGl0dGluZyBhdCBsZWFzdCBuIHNsb3cgbGlua3MsIG5v
PwoKUmVnYXJkcwoJU2ViYXN0aWFuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0
Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

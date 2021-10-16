Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2644302A8
	for <lists+cake@lfdr.de>; Sat, 16 Oct 2021 14:49:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EB6383CB5A;
	Sat, 16 Oct 2021 08:49:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634388548;
	bh=FWfv7UAIchmBGzCRyeNb5bhh3xEMyrmgOh6+4nI8Pw0=;
	h=From:In-Reply-To:Date:References:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E1KQtaGaOOBimwyjbBjhSyqPb55jbc3dZfdOxhTEu5bE4mvijgu9CNJevKiT9jyAJ
	 veESWDnBZBPVeKPNr/NGniohPKqHFmZsk0kSy5l+bcWI42q0aruNFvIGlxQXwZJaDL
	 og5ydK+9JpLmbjv9beS2wNxwhKIJ/lGilBSjH3kPrdf8r0m/tkDFXIRqircmnHWr/q
	 A2r9znFhIyKG0gavDIyccb6ohxZsaVCIfjaFY6iou1SVw6nB1w4cj+GoBl+mj2ZpdX
	 en4WhluybufPbYY3IUxbc3iuyF9uqcnfzn3++xqHhskyNuF0W71r9Yd+ecH7b24/g7
	 7ys+yd0OZaEjQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 533733B29D;
 Sat, 16 Oct 2021 08:49:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1634388545;
 bh=ex8w6QalPUoCnQNgQr23z+86TFaa+z1OMmJCExzbxj4=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=HP6aXsZkrJwZrTibP/QswGZO1+iJ7DwCl0E4qZJcssnIomx7vTdTFmAXzx9u01R4G
 a3UgSwp81BM2kHJNz049oE4eVarWnnBb304OLndSiNgl4CihloRtGJ9hC21I7JtVvA
 TlFj09dzRrXc0/X7RZMO6zb+GJg/3ZfpDXq31m1g=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.42.229] ([95.116.180.43]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MBDnI-1mRJ0R0hV0-00CmAr; Sat, 16
 Oct 2021 14:49:05 +0200
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
From: Sebastian Moeller <moeller0@gmx.de>
In-Reply-To: <C6AC65FB-9BBB-4FCE-8C9F-A270680617C1@gmail.com>
Date: Sat, 16 Oct 2021 14:49:04 +0200
Message-Id: <63AB0168-990A-4384-BDA8-C4E20D615123@gmx.de>
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
X-Provags-ID: V03:K1:GaIrjGAQ3pXFJDGMS+TCfx3SB4vtrlwLlfwDF9+/uCnIZTiPavK
 TC5APioz+HX/PTDZTZrRu9TmejOnCrdOOUaIT4fk/QQDrR2NlJQAL0+cjCN/tRW26dUr5e6
 m2udGjxIEredKaUfcc3GNURFIwn842oE5J+zh0Ejr/wRQLIW6c0x/bglmg7z34hESFCOpak
 bmvdiCbY/LMp40S3LvFFA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VytA8mSaPr4=:+8+hmJmGyPxDd9WVEHIZpv
 tQNYDf7vX1BgKgQ2A+MbNh0sDiTFfRKY9c1isgKYf6HSGyNUdcP7x+XvVbQuHDl2Wq+yPhNAd
 nJrrapF32dHtPOIKdkRou9a5rpLypn7G4bllsDnCyjH9JT/1ZNBL1tX5EJ3ZsX3M+BlfNixqg
 QDcUe/+OJAOjPxgEfefBpYYyljbt73ViScXbVTRBZkjGVZLcnKdZ7onpz8cfMU1maZMmDm6VU
 bVeQTMyJOT03PuuR9rzZOQWZT8RTOKR2UTl2MlyAq0TvZDNsOMOE4FOxLVdYThds6FDFyBbJA
 Qs9o5fdFM+C8/FVx1gIkel6XM4e63hSc59G37qjNiMX0mJHmOaHy3007f0LehmQfsgJpBq2N+
 fQgMX/MkRrS+zYaoDsfkpOXJfUkOEwPhCtRRsCU4vZJgfXHaT6jkHtzc7VEOLgVbS84QU57XE
 DIVKb+4CQBEr0FG/RHb8rWaxRPi4zvj1WIIEXjOOYdJVdS1SdxJegOhSRtO1NXOzx5QOl5va5
 CVOStjAjal4XsQcJarKZXCeYIYZhl/IHdalj4+ky1UbVmFjyx14ArsIEoLepj/u1wugT5wKWw
 O+ydTClUUa++P5Txu0eUGpaCkZAR1uNJYYV7ZseQkiANwjhziWvoMNopKqujw2lsZEdoszJyz
 k33HoFmWZUe1CUTiSO5CSuvuCfOq/D+8fnxc3kRepac7x4ya8MVSPWFIpFoGY+Wh6T91sLZfK
 td/ioskP6rFb0dYpeQLa2+D52KGZeE7DYxTh2pFl0zttN4BZzJW9DE/Z6jUK7dsqNzmjdKJRM
 TpVkXL7TOYMQV4z+XqH6+hEimiCGQ0L1L9H5aGXqm1wakGadUR4pCVZld8MwcetSl57XghCDU
 esDfjb0NLUmNjt4QaoN5GtyD+Mbirx2bh9qasU3WjtMvODcFieFNd86Q4Mok2gZHaMhc6YKOD
 Nk5ghsIE3SP3SK87P8WsCSof2ruy/mI7QeZ0pkdXvAT2b961o9mkIvqtHStCcTADukQkp5Z+n
 DsrXKy/ksYqA6dphiB2LL5n+Cblfezs4x2PRGLmUIFz0Oi1hzsooBTWD/8IUqGTYQ/LACV43H
 lhghh+kaO1zJVY=
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

SGkgSm9uYXRoYW4sCgoKPiBPbiBPY3QgMTYsIDIwMjEsIGF0IDEwOjU0LCBKb25hdGhhbiBNb3J0
b24gPGNocm9tYXRpeDk5QGdtYWlsLmNvbT4gd3JvdGU6Cj4gCj4+IE9uIDE2IE9jdCwgMjAyMSwg
YXQgMTE6MzggYW0sIFNlYmFzdGlhbiBNb2VsbGVyIDxtb2VsbGVyMEBnbXguZGU+IHdyb3RlOgo+
PiAKPj4gSSBhbHNvIHRoaW5rIHRoYXQgc29tZSBvbmUgc3Vic2NyaWJlZCBzaG91bGQgd2VpZ2h0
IGluIG9uIHRoZSBleGVtcHQgb25lIHBhY2tldCBmcm9tIG1hcmtpbmcsIGVzcGVjaWFsbHkgaW4g
dGhlIGxpZ2h0IG9mIEdSTy9HU08uCj4gCj4gSSBkbyBoYXZlIHNvbWUgZXhwZXJpZW5jZSB3aXRo
IHRoaXMgZnJvbSBDYWtlLCBidXQgQ2FrZSBoYXMgdGhlIGRpc3RpbmN0IGJlbmVmaXQgb2YgKHVz
dWFsbHkpIGtub3dpbmcgd2hhdCB0aGUgZGVxdWV1ZSByYXRlIGlzLCB3aXRob3V0IGhhdmluZyB0
byBlc3RpbWF0ZSBpdC4gIFdpdGhvdXQgdGhhdCBrbm93bGVkZ2UsIEknbSBub3Qgc3VyZSBpdCdz
IHByb2ZpdGFibGUgdG8gZ3Vlc3MgLSBleGNlcHQgdG8gc3BlY2lmaWNhbGx5IGF2b2lkIHRhaWwg
Kmxvc3MqLCB3aGljaCBpcyBub3QgYXQgYWxsIHRoZSBzYW1lIGFzICptYXJraW5nKiB0aGUgbGFz
dCBwYWNrZXQuCgoJVGhpbmtpbmcgaXQgb3ZlciwgQm9iJ3MgcmVjb21tZW5kZWQgc3BlY2lhbCBj
YXNpbmcgb25lIHBhY2tldCB3aWxsIGJlIGVzc2VudGlhbGx5IGVxdWl2YWxlbnQgdG8gaW5jcmVh
c2luZyB0aGUgbWFya2luZyB0YXJnZXQsIGV4Y2VwdCBmb3IgdGhlIGNhc2Ugb2Ygc21hbGwgcGFj
a2V0cywgd2hlcmUgeW91IG1pZ2h0IHNlZS9kZXNpcmUgbWFya2luZyBiZWZvcmUgdGhlIGVxdWl2
YWxlbnQgc29qb3VybiB0aW1lIG9mIGEgZnVsbCBNVFUgcGFja2V0IGlzIGFjY3VtdWxhdGVkLiBN
eSBodW5jaCBpcyB0aGF0IGlzIHJlYWxseSByYXJlLCBhbmQgdGhlIHdob2xlIGV4ZXJjaXNlIHdp
bGwganVzdCBsZWFkIHRvIGFydGlmaWNpYWxseSBhbmQgbm9uLWZ1bmN0aW9uYWxseSBsb3cgbWFy
a2luZyB0aHJlc2hvbGQuLi4gIAoKUmVnYXJkcwoJU2ViYXN0aWFuCgoKPiAKPiAtIEpvbmF0aGFu
IE1vcnRvbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Q2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0
cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

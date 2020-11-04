Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B054F2A6348
	for <lists+cake@lfdr.de>; Wed,  4 Nov 2020 12:27:58 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4732D3CB38;
	Wed,  4 Nov 2020 06:27:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1604489277;
	bh=T3CTsKVKuqFGCCt8kjd5r3S+7heMGTvSO6l7Q2QzQ9o=;
	h=To:In-Reply-To:References:Date:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=mLkRgX9tTTOR5034gazDY1747WxOuSre1WRMUMYbbXG2oDkzNkDrqUcMhXudFUVt1
	 0TDz0JZXcQb3LtI1EDY1lfXKj9Nfj/V56G/+nqF/FDT1WWwvB+C4TAzEIacXaBwvwP
	 v2/kiru+SCR08wuxkhGvCFfQfXURjZ8wZP9WqFsNGG9Y7I2qEKYqrUVdAJkau5hXyE
	 5/Zfmt2ji48TO5Ef7Xmu3ZuuCGzLflphZWkTQEaWwcdlVMHmrrw/notNFvTM1kl2oA
	 mWWY6bgRdo//gSLTwaKVWIPeq20F3+ho84Jd2PkBlItjtqrqoRb9MvvhIyWg4uyLXz
	 z/ZNJyv7L//Iw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 82A473B2A4
 for <cake@lists.bufferbloat.net>; Wed,  4 Nov 2020 06:27:55 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1604489274; bh=D6O4BG6BZHXD3Z/QLUyEfOGfJ3rd1qUPoqRvpV409io=;
 h=From:To:Subject:In-Reply-To:References:Date:From;
 b=mjFZFmMHLogzCIuNlwJKluYBg2FM4DaQ7S0UwMnSXa+xsLbLqMtON4BWUOBBRDh5m
 kHpa0oMhdTJcWFzMPbKVEO/ncrY18ey5GOhWHb9FP37cOd28J2CxvqhwXznqJ3/p5L
 M/ZcWVPnFzR7Fg/K2Rv7ufa9JOytiSXf1XEj3ujlSBhIczbyHFkNrlZsf3iF0Jkr7c
 jF7eCpfFKaaRYqy6X18SX52GDnwTbyq163D5ojOnvxUkr+IxalQnL6reAqYPGfkXRW
 SOFleGXprc9zhtuR5qjZRkifxTsckdEiTkqDdzrTGhSQiVg8eTft/5kYZxfeEk9HK3
 /C2PsZP/YVCRA==
To: Dean Scarff <dos@scarff.id.au>, cake@lists.bufferbloat.net
In-Reply-To: <6737e53394e4608f26677644d062bb23@scarff.id.au>
References: <202fa41a446859d714728d90e890d1d2@scarff.id.au>
 <87d00wkk9f.fsf@toke.dk> <e68ac9a6a490fcefb10383342d9c981a@scarff.id.au>
 <87k0v2k8m0.fsf@toke.dk> <6737e53394e4608f26677644d062bb23@scarff.id.au>
Date: Wed, 04 Nov 2020 12:27:53 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87tuu5uzt2.fsf@toke.dk>
MIME-Version: 1.0
Subject: Re: [Cake] NLA_F_NESTED is missing
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
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= via Cake
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGVhbiBTY2FyZmYgPGRvc0BzY2FyZmYuaWQuYXU+IHdyaXRlczoKCj4gIE9uIFR1ZSwgMDMgTm92
IDIwMjAgMTI6MDA6NTUgKzAxMDAsIFRva2UgSMODwrhpbGFuZC1Kw4PCuHJnZW5zZW4gd3JvdGU6
Cj4+IERlYW4gU2NhcmZmIDxkb3NAc2NhcmZmLmlkLmF1PiB3cml0ZXM6Cj4+Cj4+PiAgT24gTW9u
LCAwMiBOb3YgMjAyMCAxMzozNzowMCArMDEwMCwgVG9rZSB3cm90ZToKPj4+PiBEZWFuIFNjYXJm
ZiA8ZG9zQHNjYXJmZi5pZC5hdT4gd3JpdGVzOgo+Pj4+Cj4+Pj4+ICBIaSwKPj4+Pj4KPj4+Pj4g
IEkndmUgYmVlbiBoYXBwaWx5IHJ1bm5pbmcgdGhlIG91dC1vZi10cmVlIHNjaF9jYWtlIG9uIG15
IAo+Pj4+PiBSYXNwYmVycnkKPj4+Pj4gUGkKPj4+Pj4gIHNpbmNlIDIwMTUuICBIb3dldmVyLCBJ
IHJlY2VudGx5IHVwZ3JhZGVkIG15IGtlcm5lbCAodG8gNS40LjcyIAo+Pj4+PiBmcm9tCj4+Pj4+
ICBSYXNwYmlhbidzIHJhc3BiZXJyeXBpLWtlcm5lbCAxLjIwMjAxMDIyLTEpLCB3aGljaCBjb21l
cyB3aXRoIHRoZQo+Pj4+PiAgc2NoX2Nha2UgaW4gbWFpbmxpbmUuICBOb3csIHdoZW4gcnVubmlu
ZzoKPj4+Pj4KPj4+Pj4gICAgc3VkbyAvc2Jpbi90YyBxZGlzYyBhZGQgZGV2IHBwcDAgcm9vdCBj
YWtlCj4+Pj4+Cj4+Pj4+ICBJIGdldCB0aGUgZXJyb3I6Cj4+Pj4+Cj4+Pj4+ICAgIEVycm9yOiBO
TEFfRl9ORVNURUQgaXMgbWlzc2luZy4KPj4+Pj4KPj4+Pj4gIEkgZ2V0IHRoaXMgZXJyb3Igd2l0
aCB0aGUgc2NoX2Nha2UgaW4gbWFpbmxpbmUsIGFuZCBhbHNvIHdpdGgKPj4+Pj4gc2NoX2Nha2UK
Pj4+Pj4gIGJ1aWx0IG91dC1vZi10cmVlLiAgSSBhbHNvIGdldCB0aGUgZXJyb3Igd2l0aCBib3Ro
IERlYmlhbidzCj4+Pj4+IGlwcm91dGUyCj4+Pj4+ICA1LjkuMC0xIChidWlsdCBteXNlbGYgdmlh
IGRlYmlhbi9ydWxlcykgYW5kICJ0YyIgZnJvbSBkdGFodCdzCj4+Pj4+IHRjLWFkdgo+Pj4+PiAg
cmVwby4KPj4+Pj4KPj4+Pj4gIEFueSBpZGVhcyBvbiB3aGF0IHRoaXMgZXJyb3IgbWVhbnMgYW5k
IGhvdyB0byBmaXggaXQ/Cj4+Pj4KPj4+PiBJIGp1c3QgdHJpZWQgYnVpbGRpbmcgYSA1LjQuNzIg
a2VybmVsIGFuZCBjb3VsZG4ndCByZXByb2R1Y2UgdGhpcywgCj4+Pj4gc28KPj4+PiBpdAo+Pj4+
IHNlZW1zIGl0J3MgYSBmYXVsdCB3aXRoIHRoZSByYXNwYmVycnkgcGkga2VybmVsOyBJIGd1ZXNz
IG9wZW5pbmcgYQo+Pj4+IGJ1Zwo+Pj4+IGFnYWluc3QgdGhhdCB3b3VsZCBiZSB0aGUgd2F5IHRv
IGdvPwo+Pj4+Cj4+Pj4gQXMgZm9yIHdoYXQncyBhY3R1YWxseSBjYXVzaW5nIHRoaXMsIEkgY291
bGRuJ3QgZmluZCBhbnl0aGluZyAKPj4+PiBvYnZpb3VzCj4+Pj4gdGhhdCB0b3VjaGVzIHRoaXMg
Y29kZSBpbiB0aGUgcWRpc2MgbGF5ZXI7IGJ1dCBJIHN1cHBvc2UgaXQgaGFzCj4+Pj4gc29tZXRo
aW5nIHRvIGRvIHdpdGggdGhlIGNvcmUgcWRpc2MgbmV0bGluayBwYXJzaW5nIGNvZGU/Cj4+Pj4K
Pj4+PiAtVG9rZQo+Pj4KPj4+ICBUaGFua3MgZm9yIHRoZSBkYXRhIHBvaW50Lgo+Pj4KPj4+ICBG
b3IgdGhlIHJlY29yZCwgdGhlIHJlbGV2YW50IGtlcm5lbCBzb3VyY2UgaXM6Cj4+PiAgCj4+PiBo
dHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zdGFibGUvbGlu
dXguZ2l0L3RyZWUvaW5jbHVkZS9uZXQvbmV0bGluay5oP2g9djUuNC43MiNuMTE0Mwo+Pj4gIGFu
ZCB0aGUgUGkgYnJhbmNoOgo+Pj4gIAo+Pj4gaHR0cHM6Ly9naXRodWIuY29tL3Jhc3BiZXJyeXBp
L2xpbnV4L2Jsb2IvcmFzcGJlcnJ5cGkta2VybmVsXzEuMjAyMDEwMjItMS9pbmNsdWRlL25ldC9u
ZXRsaW5rLmgjTDExNDMKPj4+Cj4+PiAgSXQgc2VlbXMgdmVyeSB1bmxpa2VseSB0aGF0IHRoZSBQ
aSBmb2xrcyBhcmUgcGF0Y2hpbmcgdGhlIG5ldGxpbmsKPj4+ICBzdHVmZiwgc28gSSBkb24ndCB0
aGluayBJJ2xsIGdldCBtdWNoIHRyYWN0aW9uIHRoZXJlIHVubGVzcyBJIGNhbiAKPj4+IGNhbGwK
Pj4+ICBvdXQgc29tZXRoaW5nIHNwZWNpZmljYWxseSB3cm9uZyB3aXRoIHRoZWlyIHBhdGNoc2V0
Lgo+Pgo+PiBXZWxsLCBzb21ldGhpbmcgb2RkIGlzIGNlcnRhaW5seSBnb2luZyBvbi4gVGhlIGVy
cm9yIG1lc3NhZ2UgeW91J3JlCj4+IHF1b3RpbmcgY29tZXMgZm9ybSBhIHBhcnQgb2YgdGhlIG5l
dGxpbmsgcGFyc2luZyBjb2RlIChpbiB0aGUga2VybmVsKQo+PiB0aGF0IHNob3VsZG4ndCBldmVu
IGJlIGhpdCBieSB0aGUgcWRpc2MgYWRkaXRpb246IE5MQV9GX05FU1RFRCAKPj4gcGFyc2luZwo+
PiBpcyBvbmx5IGVuYWJsZWQgaW4gJ3N0cmljdCcgdmFsaWRhdGlvbiBtb2RlLCB3aGljaCBpcyBu
b3QgdXNlZCBmb3IKPj4gcWRpc2NzLgo+Pgo+PiBTbyBJREssIG1heWJlIGEgY29tcGlsZXIgaXNz
dWUgb3IgYSBiaXQgdGhhdCBnZXRzIHNldCB3cm9uZyAKPj4gc29tZXdoZXJlPwo+PiBCaXNlY3Rp
bmcgdGhlIGtlcm5lbCBtYXkgYmUgdGhlIG9ubHkgb3B0aW9uIGhlcmUsIEkgZG9uJ3QgdGhpbmsg
Cj4+IHlvdSdyZQo+PiBnb2luZyB0byBmaW5kIGFueXRoaW5nIGluIHVzZXJzcGFjZS4uLgo+Cj4g
IFllYWgsIEkgY2FtZSB0byB0aGUgc2FtZSBjb25jbHVzaW9uLiAgSSB2ZXJpZmllZCB0aGUgdXNl
cnNwYWNlIHdhcyBzYW5lIAo+ICB2aWEgZ2RiIChzZWUgZWFybGllciBwb3N0KSwgYW5kIEkgYWxz
byByZWFkIHRocm91Z2ggdGhlIHNjaF9hcGkuYyBhbmQgCj4gIG5sYXR0ci5jIGtlcm5lbCBjb2Rl
IGFuZCBpdCBzdXJlIGxvb2tzIGltcG9zc2libGUgZm9yIHRoZSBzdHJpY3QgCj4gIHZhbGlkYXRp
b24gdG8gYmUgZ2V0dGluZyBoaXQuCj4KPiAgU2FmZSB0byBzYXkgdGhpcyB3YXMgcmFuZG9tIGNv
cnJ1cHRpb246IEkgZG93bmdyYWRlZCB0aGUga2VybmVsLCB0aGluZ3MgCj4gIHdvcmtlZCBhcyBl
eHBlY3RlZCwgdGhlbiBJIHVwZ3JhZGVkIGJhY2sgdG8gdGhlIDUuNC43MiBhbmQgaXQgd29ya2Vk
IAo+ICB0b28hICBJbnRlcmVzdGluZ2x5LCB0aGUgcHJvYmxlbSBwZXJzaXN0ZWQgYWNyb3NzIHJl
Ym9vdHMgKHNvIGl0IHdhc24ndCAKPiAganVzdCBSQU0gY29ycnVwdGlvbiksIGFuZCBhbGwgdGhl
IGtlcm5lbCBmaWxlcyBhbHNvIG1hdGNoZWQgdGhlaXIgImRwa2ciIAo+ICBNRDVzIChzbyBpdCB3
YXNuJ3QgbGlrZSB0aGUgYmluYXJpZXMgd2VyZSBvYnZpb3VzbHkgY29ycnVwdCBvbiBkaXNrKS4g
IAo+ICBJJ3ZlIHJlcGxhY2VkIHRoZSBQaSdzIG1pY3JvU0QgY2FyZCBqdXN0IHRvIGJlIHNhZmUs
IHRob3VnaC4uLiBrZXJuZWwgCj4gIGNvcnJ1cHRpb24gaXMgc2NhcnkuCgpVZ2gsIEhlaXNlbmJ1
Z3MgYXJlIHRoZSB3b3JzdCEgR3JlYXQgdG8gaGVhciB5b3UgbWFuYWdlZCB0byByZXNvbHZlIGl0
LAp0aG91Z2ggOikKCi1Ub2tlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0
dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

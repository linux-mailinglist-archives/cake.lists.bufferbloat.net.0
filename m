Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C61F6459CCD
	for <lists+cake@lfdr.de>; Tue, 23 Nov 2021 08:35:49 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B46C63CB39;
	Tue, 23 Nov 2021 02:35:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1637652948;
	bh=lQHYqqGhgX6P4nZWL+uthSbA2VdHCgQlO+A22r1IeqQ=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YA+R8xKlQeXNfE2XYArGsY3UHtMXvMk5fmpFBEOZ8o/FNHhPHy81exaGNzUHr1Vby
	 ozWDGAmRLxu2hViDNw3xYyNySQtnplKnanQ6CfgCLCGxEnp+aaP8Ek+kfUPp8dTFk4
	 lL/a6u3FCl5Dsjnd9NU3bG6MtmlOZAVhiEX7c+tj9G9cZreYVEuJI8JEhG6B3lL6Vd
	 IGMHunrL9EVM6fZQ6tvZPYQDI3lqigCd1C4GyWZ8ZvE7lhCsLRvrjhvT3HSADXMwr5
	 rkFmFH/UibTntTV5mtOnCPrpzUPMdeXzuYXo2j4t7mAvxL83zg/9qKqwJzDOotkeAc
	 k6+gzcz5HiQLA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DEDA73CB35
 for <cake@lists.bufferbloat.net>; Tue, 23 Nov 2021 02:35:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1637652946;
 bh=KMDvvOhkdjGRPFclMZLjrs8lFfizWrHjS2AothzsTQo=;
 h=X-UI-Sender-Class:Date:From:To:CC:Subject:In-Reply-To:References;
 b=AeyCvEP73SnO6GlkVaQhqbj+62qziBbEYZs1OsT2HrYBs2SIYS2R8fiei4Yd4txzk
 a4K1/hSiF77rhTyeXy/VhxJ2GNXUM1bk2Lm/zWacJAyInY2jlJ3Ulu19flR5edlqSL
 plVtCLynnpRL1As6dlONEqCnDLFDeSvWLuNpm1DQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [127.0.0.1] ([80.187.108.241]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MHXBj-1mu7Au3MC9-00DaB4; Tue, 23
 Nov 2021 08:35:45 +0100
Date: Tue, 23 Nov 2021 08:35:48 +0100
From: Sebastian Moeller <moeller0@gmx.de>
To: Dave Taht <dave.taht@gmail.com>
User-Agent: K-9 Mail for Android
In-Reply-To: <CAA93jw61GaPrLNmZn+ZuaA59UUo7SSb0DSSSrLH7rVSRqj92Xw@mail.gmail.com>
References: <CAA93jw4hrZmUma-xE6stRQZkyo84m4wYV+mbK6AoPeAJ1y0nqg@mail.gmail.com>
 <67BC6CC2-F088-4C0D-8433-A09F4AC452FE@gmx.de>
 <CAA93jw61GaPrLNmZn+ZuaA59UUo7SSb0DSSSrLH7rVSRqj92Xw@mail.gmail.com>
Message-ID: <90677BA1-6718-4596-BACD-C2943D109093@gmx.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:yTUirf8xANrHe4nmOWoX4qI7FCrAT1nV8YJ3UX8BRJ3mOf4S9mA
 SQ1i4TwppcH9wmpaaGAhVpZDh0vd03UdUvPYBTSWQtLyXpeBchbjc4kJC26R7GEBCU0pz2K
 qY5YfcfE6+HWq5KDcvcY0YeexYm75+oRKSMr46BJk5U82pjxp57kUtPj4o868/1nsffrhkH
 zo7TRK/J+pNan+iVaWEOw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ceunn35HFQ0=:ayoKe4V9HPhmp5XAzyAFG5
 v6QWlgM7KhIno+Q4Antccwq86TBoETMsz2nvcLvFHjwMOwa34lhHpbUSIU2epbQnYDFWkpb0C
 3OqJAEAnW3YZHphoEi2sSkbf2iczti48wCjBWwRRzu45XsunpQarAmQHRJvjqbHeYziQPFafH
 Z+8KsvVwXqHOaAH0Mdyp/4GgmXcqoo8aQsWLyiujjQalJLcgNVwYaV513W6bOz8nTsu0eVKUS
 yB+bCaXM6IjsLSiO7weSinql8aLwjDsf4/TPKr4zSbuQiMj02yz2B4fnADWO4+EWvHqC/7pwy
 xODUKRi+UPJrcdn5Xg8VN80MrIPUzOt03XI68jgjJGpxmM+c6fk7bLkmKbF2Ek4Rv+zQOkh/8
 nlu8wNHoH+kh2qtLZa13oVtmjNz95uJovvVv3cwjhs8bD0vSgYSQo4fHavB49VXuQqXRloquf
 K9AZsrzoy1KBpsi5uq1w1vmwNYDX3HLU7u/kUMlZNF5kF8a7/2hLXPX38mPeR+FXMQ8JDmM1s
 x9t/+JmtTb6VeEqEpIsI8NP3jMmWy4zecFLlGloQPzqrEjRomW68uptRfTcCgYpUvPfCCXmJ/
 DVuHSRrOI2CwAyoUFy+1H1296eBRuz0C7rNKBJa3buGBWD3ndGJiWg1hcD7c+UlCVy5qaZzwC
 vXOhfWM6VZeI46yml2MeygkGy4s2Qnow6R196+a3cyGojiUaoJwTmZd5oxXNEWATJSRjwjM8W
 COE6cvT5AHaodCz4cHCwkEpLRZ8iQofGUFj4KFuCN56b1isV2CHl8JL2dlTTwXrWQSq8dp+kr
 7CO+GF9dvKJFk/6Se1qDs2of4Ayp+hmKMTLJJng8F2IlQVcRyDp0rhWa4vpXwZhNuytXAMo9e
 KDamcPMRKtseoPB3uZBBNhZ/5hix+6YUWIyqyUshdMNJIPJmTh4ArlxiQNywRYuGwQQ2QiaSF
 kj1ahKyomgGOtW+lyZJyI1w+jyyBNGiNY5o5gm7czh+JImJCfkTG61IdFsiv2JR7NLSWKUOfD
 wu4ZHrb6VDyksp3b649GAGARjvr4zLTOtSa3zadka6nHsWQZRJCqKwMUiJpVjawLubF/TKtgI
 /VWWriIJ/SIrJE=
Subject: Re: [Cake] tossing acks into the background queue
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

SGkgRGF2ZSwKCk9uIDIzIE5vdmVtYmVyIDIwMjEgMDg6MTc6MzggQ0VULCBEYXZlIFRhaHQgPGRh
dmUudGFodEBnbWFpbC5jb20+IHdyb3RlOgo+T24gTW9uLCBOb3YgMjIsIDIwMjEgYXQgMTE6MDcg
UE0gU2ViYXN0aWFuIE1vZWxsZXIgPG1vZWxsZXIwQGdteC5kZT4gd3JvdGU6Cj4+Cj4+IEhpIERh
dmUsCj4+Cj4+Cj4+IE9uIDIzIE5vdmVtYmVyIDIwMjEgMDY6MDM6MDMgQ0VULCBEYXZlIFRhaHQg
PGRhdmUudGFodEBnbWFpbC5jb20+IHdyb3RlOgo+PiA+YWdlcyBhZ28gSSdkICh3ZSdkPyBJIHJl
YWxseSBkb24ndCByZW1lbWJlciAtIGZvcmdpdmUgbWUgaWYgSSd2ZQo+PiA+Zm9yZ290dGVuIHdo
byBhY3R1YWxseSBsZWFuZWQgaW4gb24gaXQpIHdyaXR0ZW4gYSBiYXNpYyBhY2stZmlsdGVyIGlu
Cj4+ID5lYnBmLiB0aGlzIHdhcyBiZWZvcmUgY2FrZSBnYWluZWQgdGMgYWN0aW9ucyBhbmQgbXkg
cHJpbWFyeSB1c2UgZm9yCj4+ID50aGUgdGVjaCB3YXMgZm9yIGFzeW1tZXRyaWMgY29ubmVjdGlv
bnMsIGFuZCBiZWZvcmUgdGhlIGdvb2QKPj4gPmFjay1maWx0ZXIgYXJyaXZlZCwgYW5kIEkgd2Fz
IChhbmQgcmVtYWluKSB1bmZyaWVuZGx5IHRvIHRoaXMgbGV2ZWwgb2YKPj4gPmRwaS4KPj4gPgo+
PiA+VGhhdCBzYWlkLCBvbiBhIHN5bW1ldHJpYyBjb25uZWN0aW9uLCBkZXByaW9yaXRpemluZyBw
dXJlIGFja3MgdG8gdGhlCj4+ID41JSBiYWNrZ3JvdW5kIHF1ZXVlIG5kIHRoZW4gdHVybmluZyB0
aGUgY2FrZSBhY2stZmlsdGVyIGxvb3NlIG9uIGl0Cj4+ID5taWdodCBhY3R1YWxseSB3b3JrLgo+
PiA+Cj4+ID5BbSBJIG9uIGRydWdzL2lzIHRoZXJlIGFueSBwb2ludD8KPj4KPj4gSSB0aGluayBh
dCBsZWF0IHdoZW4gdXNpbmcgbXVsdGlwbGUgcHJpb3JpdHkgdGlucyBmb3J3YXJkIGFuZCByZXZl
cnNlIHRyYWZmaWMgc2hvdWxkIGJ5IGRlZmF1bHQgdXNlIHRoZSBzYW1lIHRpbiAoSSBjYW4gc2Vl
IG5vbi1zdGFuZGFyZCBzaXR1YXRpb25zIHRoYXQgd2FudCBkaWZmZXJlbnRpYWwgdHJlYXRtZW50
KS4gVGhlIGFyZ3VtZW50IGlzIHRoYXQgdW5saWtlIGVhcmxpZXIgYXR0ZW1wdHMgYXQgaW5ncmVz
cyBzaGFwaW5nIHRoYXQgdHJpZWQgdG8gdGhyb3R0bGUgcmV2ZXJzZSBBQ0tzPyBjYWtlL2NvZGVs
IGRvIHByb3BlciAnaGl0IHRoZSBicmFrZXMnIHNpZ25hbGxpbmcgdmlhIG1hcmtpbmcvZHJvcHBp
bmcgYW5kIHdlIHdhbnQgdGhhdCBzaWduYWwgdG8gcmVhY2ggdGhlIG90aGVyIGVuZCBhcyBxdWlj
a2x5IGFzIHBvc3NpYmxlLCBubz8KPgo+TXkgdGhvdWdodCB3YXMgYmFzaWNhbGx5IGFuIG9wdGlv
bmFsIGZpbHRlciB0aGF0IHN0ZWVyZWQgYWxsIHB1cmUgYWNrcwo+KG5vIG1hdHRlciB0aGUgY2xh
c3NpZmljYXRpb24pIGludG8gdGhlIGJhY2tncm91bmQgcXVldWUuCj5Ob24tcHVyZS1hY2tzIChz
YWNrcykgZXNzZW50aWFsbHkganVtcCB0aGUgYmFja2dyb3VuZCBxdWV1ZSBhbmQgc2lnbmFsCj50
aGF0IGxvc3MgZWFybGllci4gVGhlIGJhY2tsb2cgb2Ygb3RoZXIgYWNrcyBpbiBiYWNrZ3JvdW5k
IGdldAo+ZGVsaXZlcmVkIG91dCBvZiBvcmRlciwgYnV0IHB1cmVseSBvdXQgb2Ygb3JkZXIgYW5k
IGRpc2NhcmRlZCBieSB0aGUKPnJlY2lldmVyLgoKTW1taCwgbm90IHN1cmUgd2hldGhlciBhbGwg
Y29ubmVjdGlvbnMgYWN0dWFsbHkgdXNlIFNBQ0sgaW4gdGhlIGZpcnN0IHBsYWNlPwpJIGFtIGFs
d2F5cyBhIGJpdCB1bmVhc3kgd2hlbiBuZXR3b3JrcyB0cnkgdG8gYmUgY2xldmVyLCBpZiB3ZSB0
aGluayB0aGF0IEFDSyByYXRlcyBhcmUgdG9vIGhpZ2gsIElNSE8gd2Ugc2hvdWxkIHRlYWNoIHRo
ZSBBQ0sgZW1pdHRlcnMgdG8gc2xvdyBkb3duLiBTdXJlLCBBQ0sgZmlsdGVyaW5nIGFzIGluIGNh
a2UgaXMgYSB2YWx1YWJsZSB0b29sIGlmIHVzZWQganVkaWNpb3VzbHkgaW4gYSBob21lIG5ldHdv
cmsgKGFmdGVyIGFsbCBmaXhpbmcgdGhlIGVtaXR0ZXJzIGlzIG5vdCBnb2luZyB0byBoYXBwZW4g
b3Zlcm5pZ2h0KSBidXQgSSB3b3VsZCBhcHByZWNpYXRlIGl0IG11Y2ggbGVzcyBpZiBteSBJU1Ag
d291bGQgYnkgdGhlIHNhbWUgbG9naWMgZnV6eiB3aXRoIG15IHBhY2tldHMuIChJIGdydWRnaW5n
bHkgYWNjZXB0IHRoYXQgR0VPIHNhdGVsbGl0ZSBJU1BzIG1pZ2h0IGhhdmUgdG8gZG8gc29tZSBm
dXp6aW5nIHdpdGggUlRUcyBzbyBtdWNoIG91dHNpZGUgb2Ygd2hhdCBub3JtYWwgVENQcyBhcmUg
cHJlcGFyZWQgZm9yLCBidXQgSSBkZWdyZXNzKQoKUmVnYXJkcwogICAgICAgICBTZWJhc3RpYW4K
CgoKPgo+PiBSZWdhcmRzCj4+ICAgICAgICAgU2ViYXN0aWFuCj4+Cj4+Cj4+ID4KPj4gPgo+PiA+
Cj4+ID4tLQo+PiA+SSB0cmllZCB0byBidWlsZCBhIGJldHRlciBmdXR1cmUsIGEgZmV3IHRpbWVz
Ogo+PiA+aHR0cHM6Ly93YXlmb3J3YXJkLmFyY2hpdmUub3JnLz9zaXRlPWh0dHBzJTNBJTJGJTJG
d3d3LmljZWkub3JnCj4+ID4KPj4gPkRhdmUgVMOkaHQgQ0VPLCBUZWtMaWJyZSwgTExDCj4+ID5f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiA+Q2FrZSBt
YWlsaW5nIGxpc3QKPj4gPkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cj4+ID5odHRwczovL2xp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCj4+Cj4+IC0tCj4+IFNlbnQgZnJvbSBt
eSBBbmRyb2lkIGRldmljZSB3aXRoIEstOSBNYWlsLiBQbGVhc2UgZXhjdXNlIG15IGJyZXZpdHku
Cj4KPgo+CgotLSAKU2VudCBmcm9tIG15IEFuZHJvaWQgZGV2aWNlIHdpdGggSy05IE1haWwuIFBs
ZWFzZSBleGN1c2UgbXkgYnJldml0eS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

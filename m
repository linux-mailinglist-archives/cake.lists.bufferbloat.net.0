Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D77707B1E51
	for <lists+cake@lfdr.de>; Thu, 28 Sep 2023 15:27:18 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DB1993CB39;
	Thu, 28 Sep 2023 09:27:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1695907637;
	bh=Xu63zZZEHrQLD1oqVvB1hijBBlwjYrjNtVrsgDfS+Yc=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=lShDxgg0tPWlljPKC6xGdYiGWUgS9fuxCJgXf5E7ZWwHuZDYQJNSk60ExWajieABi
	 BGrIpFKB31rSiEe7I/yU27Vjo7GVlrZYM7M9WcHJmzoURKZmp1hdvDJxYLxaPo006N
	 P1L1NtKZgdMrAgsZCl1AqcMtcIzGN9KzAAK0Sa5U1dTYDwhRsqlfk6BQLbsq01Uxqi
	 zbEuyjJBore4FuFn7+VZw7hidJMza2hCVAQH0mfsV/I4zwdilcFG8imenv5Auaw9ZW
	 Yj1ELgZj60GfI7BFWIJTFp+UElVOSEUiYtde6RKWB4GSEM5eUvHcvf1j65HbuLUCBO
	 sZwxhV50Z9Cfw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B46753B29D
 for <cake@lists.bufferbloat.net>; Thu, 28 Sep 2023 09:27:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de; s=s31663417;
 t=1695907631; x=1696512431; i=moeller0@gmx.de;
 bh=wuqCgKvJF7iiSK4QMJZFa3dNwzjQkx6Wth77wEzAVwM=;
 h=X-UI-Sender-Class:Subject:From:In-Reply-To:Date:Cc:References:To;
 b=rCmJfZpB0KPjINutrQwpaED4vJdTbs8Vp9bzMEnU60CEYExK9Vgn6umnh3odXQs+fnwvcwVMF7l
 GZCqMvmrx+2H865OpE/30P0u62Un6ZQ+78spmz9cHR7OPUYLSOSEwZooeUu5wFjID+st6UxbsVrxi
 ibaukoRK4I1HcmW3iMiEd0wASkK5/DYH+hGmWcjRrp2OotrQsod9syLWT97uo67g0boFSulJ+p/9L
 4+FG5Kx7IRLAT2eV1b46lzgH0NZ3hvBUJcxSfdBrs5t//hcJlf8Fuhrt2J1WXuZemfBFHl/17JDCz
 n/7PMQQlv2HE9ZBdQCCklF9/p90P9m4IOZdA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([134.76.241.253]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mqs0R-1rPGKU0Q1B-00moV3; Thu, 28
 Sep 2023 15:27:11 +0200
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.4\))
In-Reply-To: <r9268rp5-8sr8-262s-7975-q68q6434sp6s@ynat.uz>
Date: Thu, 28 Sep 2023 15:27:09 +0200
Message-Id: <B1098CE9-AFEA-4B49-94AB-F423BBBC564A@gmx.de>
References: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
 <CANypexR5p7Lekzk7+ktfEWjFXJP2zRHC_BgGWRRzKc5QdaxubA@mail.gmail.com>
 <1695068690.78066946@apps.rackspace.com>
 <A1F18F7E-2A27-4F13-87B1-D55594FB69F7@gmail.com>
 <6D098714-69DC-41D9-A7DC-E94FD9C77625@gmail.com>
 <B892D72D-0198-454B-BC15-170B22829351@gmx.de>
 <79EC8CB2-0912-4D66-9FA3-990E9C38C281@gmail.com>
 <FFCCB1ED-3CB4-4F97-9B3B-ADF10F2FE730@gmx.de>
 <r9268rp5-8sr8-262s-7975-q68q6434sp6s@ynat.uz>
To: David Lang <david@lang.hm>
X-Mailer: Apple Mail (2.3696.120.41.1.4)
X-Provags-ID: V03:K1:lYvzwkYgVjVPEYR4J9rFJyBn39RjAV+m8wda/E2eW1u23ioN72+
 tCqWProOWYlh2qQtdZGxTTzV9BjrgCyIqfzONWcI1KMJWHW2pj8MV10WS0+gagzW2bv0bC+
 aA+PpPmHT2mrba20QapkRkGLGyLxUHxoCJ+fiF0OyuFwPrZTl9uWK3c7Cq+rX9t0PNsjbTJ
 xIo35HBRRUjXW/b6Gw9jw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:nT/PSfWnxLw=;En7HUgVfJBAFDFQj1VmphbQC6B4
 Lee1u4eClO0nLQoarK0zRQb+NLbAisEUap8EpL6X40Qx7Ji1FxUxjj0HKN/UtFzLwQhb9qo8Q
 VsvrbayknAh2qxZADQB8tm5g0IXl8R85Wc+VUAxib8qZZa+m44Ge0CWjLJIfcLZ8V+WPw7Aa6
 G4o8ab7EAnfKJ8p5P1RudF6XpoA7UFVuiHZCitYbT3lGXWh2fBgIsQLikiq1YdwF43mdzPCZs
 Shsrkg+qGGE+zd07KQlrr02u0yEiFje+MAq2WZe7mQ7ms4tY1uFSFa+Mj/ghLYudZGdBJJ1XB
 E/bQIji8y9UaXrjNneoT6HEfHpKpK76H881X4YFYh9GWfwAm7NxPKl1hJArBkCijknP+eht80
 QL4fvy7SVc8miTPKaJ5lvPGhO15Ve54nw4qPlOaw5yCy7cdxuQHVYBDaZyhFvVxKO6MEx7rDn
 lY/lOO0zef4dVBPpfgLCwCKl+PtT7k7idWheFD/TVpo0nVpUBV3pWLDd+MgYmJqg8Y9uKNUQ7
 6rY+PNsCkkvF8wU8kXZ9+1gJhmD1GbdwxbFq/S2m7EPgIv9sv86N6AuDYgxDIyNMO4LHro7Zw
 HPeijZzgUJv3QWDcqlJ9L7gNd3MkIr48kmpYQirawVGKsYQADxxR1DMOKT48vL2kwvfPcKkuL
 MimvG/e2UmkOns0a8bx0XGG6c0EhI2GIqaDdk0Q3zSVGYLb46r/zeIdG/+JGFFqT4aiA7K5sL
 7mrggQRKJrLAn06/gAHXIPWbV3GNz5p6W44pOSRypVSauhZBBPHLUwBnKKoiLaegRA3fUU/vI
 G0aWfSHAAGLD17C17pRyCDdRDW8FgQbnquQL7fBQFFqSQllkpfjhwUqFajqEOicY1ROO37z3W
 mFC1iIg0DnDKWaVwD9QUXRJSaYwkxSAbKKrNsOyS+IsKk8tuqne0UR5NNOJSI4Xk+2tgZlvrs
 p7OJCa27X88PNpZaXTTsTwWzYfM=
Subject: Re: [Cake] some comprehensive arm64 w/cake results
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

Cgo+IE9uIFNlcCAyOCwgMjAyMywgYXQgMTU6MTksIERhdmlkIExhbmcgPGRhdmlkQGxhbmcuaG0+
IHdyb3RlOgo+IAo+IE9uIFRodSwgMjggU2VwIDIwMjMsIFNlYmFzdGlhbiBNb2VsbGVyIHZpYSBD
YWtlIHdyb3RlOgo+IAo+PiBQLlMuOiBJIGFtIHRlbXB0ZWQsIGJ1dCB3aWxsIGxpa2VseSB3YWl0
IHVudGlsIHRoZXkgYXJlIGF2YWlsYWJsZSBpbiBxdWFudGl0eSBhbmQgaG9wZSB0aGF0IHRoZSBz
dHJlZXQgcHJpY2UgY29tZXMgZG93biBhIGJpdCBiZWZvcmUgZ2V0dGluZyBvbmUgOykKPiAKPiBU
aGV5IGFyZW4ndCBhdmFpbGFibGUgYXQgYWxsIHlldCwgYW5kIGl0J3Mgbm90IGNsZWFyIHdoZW4g
dGhleSB3aWxsIGJlIGF2YWlsYWJsZS4KCglUaGUgYW5ub3VuY2VtZW50IHdhcyBlbmQgb2YgT2N0
b2JlciwgYnV0IEkgdGhpbmsgSSBjb3VsZCBwcmUtb3JkZXIgcmlnaHQgbm93IGlmIEkgd2FzIGZl
ZWxpbmcgYW4gdXJnZS4gWW91IGFyZSByaWdodCB0aG91Z2gsIGFubm91bmNlZCAhPSBhdmFpbGFi
bGUgb3IgZGVsaXZlcmVkLgoKUmVnYXJkcwoJU2ViYXN0aWFuCgpQLlMuOiBJIGhhdmUgYSBwaTQw
MCBpbiB1c2UgYXMgImRlc2t0b3AiIGZvciBteSBvbGRlc3Qga2lkLCB0aGlzIGlzIGNsb3NlIHRv
IGJlIGFjdHVhbGx5IGdlbmVyYWxseSB1c2FibGUsIEkgd291bGQgZ3Vlc3MgdGhhdCBjaGFuZ2lu
ZyBhIHBvdGVudGlhbCBwNTAwIGZyb20gdGhlIHBpNDAwJ3MgNEdCIHRvIDggR0IgdG9nZXRoZXIg
d2l0aCB0aGUgb3RoZXIgaW1wcml2ZW1lbnRzIHRoZSA1IGJyaW5ncyBtaWdodCBwdXNoIGl0IG92
ZXIgdGhlIHRocmVzaG9sZCBpbnRvIHRoZSB0cnVseSB1c2VmdWwgY2F0ZWdvcnkuIFdoaWNoIHBy
b2JhYmx5IG1lYW5zIHRoYXQgZWl0aGVyIGEgcG90ZW50aWFsIHBpNTAwIHdpbGwgY29tZSBsYXRl
IGFuZCBwcm9iYWJseSB3aXRoIG9ubHkgNCBHQiwgYnV0IGxldCdzIHNlZSBob3cgdGhpcyB3b3Jr
cyBvdXQgbm93IHRoYXQgdGhlIHN1cHBseSBzaXR1YXRpb24gaXMgbGVzcyBwcm9ibGVtYXRpYy4K
QW5kIEkgdW5kZXJzdGFuZCB0aGF0IHRoZXJlIGFyZSBvdGhlciBjYXBhYmxlIEFSTSBiYXNlZCBT
b0NzIGZvciBob21lcm91dGVyL2Rlc2t0b3AgZHV0eSwgSSBqdXN0IGhhcHBlbiBvdCBoYXZlIGEg
c29mdCBzcG90IGZvciB0aGUgcmFzcGJlcnJ5IHByb2plY3QgOykKCj4gCj4gRGF2aWQgTGFuZwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

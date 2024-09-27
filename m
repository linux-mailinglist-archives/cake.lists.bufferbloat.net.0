Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 83ADE988BE9
	for <lists+cake@lfdr.de>; Fri, 27 Sep 2024 23:43:38 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DA5073CB47;
	Fri, 27 Sep 2024 17:43:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1727473413;
	bh=06n/+AXVhkpbTlkoBcn6ZEZZN6qv+VTT89Mm4R4XWqM=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=O6C4CVrfGDX8b3HB4mvve8hP+Odglj0eqlKLf1r3PUh5j9ZiUluNvGRLN8kVvi5vD
	 iBbyQehC7H/ZFIVhUOu4ySLQhGCyDfEQ/fCe1WbFnCS4H2xIIThmwNnQTLgochJovU
	 tRqUvJ9aPsqjn/59Pj3Nemmfrr4z0vf25z/ZEKlojmpHYUQESAzr1dbz85uW0VuE50
	 eXywfr2UXd1eqe24btobhCuYBDWcradibXnFSzXkRENEte5U9ZGjhvTVyzrIpabBhX
	 7gWTcLHS0Z4Q6IXHlKPcljNNuDdB2CsXXI3G8END+4oyWprqlnzqt45eEX7ufF63s/
	 OBxqjpDDirVTw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.lang.hm (syn-045-059-245-186.biz.spectrum.com
 [45.59.245.186])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C56703B29E;
 Fri, 27 Sep 2024 17:43:31 -0400 (EDT)
Received: from dlang-mobile (unknown [10.2.2.53])
 by mail.lang.hm (Postfix) with ESMTP id 976C21E0E50;
 Fri, 27 Sep 2024 14:43:30 -0700 (PDT)
Date: Fri, 27 Sep 2024 14:43:30 -0700 (PDT)
To: "David P. Reed" <dpreed@deepplum.com>
In-Reply-To: <1727471439.369527853@apps.rackspace.com>
Message-ID: <qpr4r78o-9640-ps6p-qpo2-94p0897298n5@ynat.uz>
References: <CAA93jw46jpOcMYTb9vmyw6ywAvMkmQb3jnmbu4G-2k97PyrjmA@mail.gmail.com>
 <1727471439.369527853@apps.rackspace.com>
MIME-Version: 1.0
Subject: Re: [Cake] bbr vs all the aqms, cake winning...
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
From: David Lang via Cake <cake@lists.bufferbloat.net>
Reply-To: David Lang <david@lang.hm>
Cc: Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2aWQgUC4gUmVlZCB3cm90ZToKCj4gMi4gR29vZ2xlIGlzIGFjdGl2ZWx5IHB1c2hpbmcgUVVJ
QyB0byByZXBsYWNlIGFsbCBvZiBUQ1AsIGFuZCBpdHMgY29uZ2VzdGlvbiAKPiBtYW5hZ2VtZW50
IGlzIG5vdCBldmVuIGltcGxlbWVudGVkIG11Y2ggbGVzcyB0ZXN0ZWQgLSBhbmQgQkJSIGlzbid0
IHJlbGV2YW50IAo+IHRvIFFVSUMgYXQgYWxsLiBTaW1pbGFybHksIHRoZXJlJ3MgbW9yZSBhbmQg
bW9yZSBXZWJSVEMgdHJhZmZpYyBhbmQgUlRQIAo+IHRyYWZmaWMgLSBtYW55IFNNQidzIGFyZSBz
ZWVpbmcgdmVyeSBoaWdoIHBlcmNlbnRhZ2VzIG9mIHN1Y2ggdHJhZmZpYyBhdCB0aGVpciAKPiBp
bnRlcmNvbm5lY3QgcG9pbnQuIFdoeSBubyBjb25zaWRlcmF0aW9uIG9mIHRoYXQgYXQgYWxsPyBU
aGVzZSBndXlzIGFyZSBsaXZpbmcgCj4gaW4gYW4gYW5jaWVudCBwYXN0IC0gbmV0d29ya2luZyBh
cyBpdCB3YXMgMiBkZWNhZGVzIGFnby4gQWdhaW4sIHRvIGRvIHNpbXBsZSwgCj4gY29udHJvbGxl
ZCByZXNlYXJjaCwgdGhhdCdzIE9LLiBCdXQgZGFtbWl0LCB3aHkgaXMgdGhlIHJlc2VhcmNoIGNv
bW11bml0eSAKPiBmb2N1c2luZyBpbiB0aGVpciAyMCB5ZWFyIHJlYXJ2aWV3IG1pcnJvcj8KCmJl
Y2F1c2UgdGhleSBkb24ndCBoYXZlIHJlYWwtd29ybGQgZXhwZXJpZW5jZSB0byBrbm93IHRoZSBk
aWZmZXJlbmNlIGJldHdlZW4gCm5ldHdvcmtpbmcgYXMgaXQgaXMgdGF1Z2h0IChhbmQgaG93IGl0
IG1heSBleGlzdCBvbiBhIHNpbXBsZSBuZXR3b3JrIHdpdGggd2VsbCAKYmVoYXZlZCB0cmFmZmlj
KSBhbmQgdGhlIHdpbGQtd2lsZC13ZXN0IG9mIHRoZSBwdWJsaWMgd2ViIHRoYXQgZGVza3RvcC9t
b2JpbGUgCnVzZXJzIGV4cGVyaWVuY2UuCgo+IEkga25vdyB0aGVyZSBhcmUgbm8gcmVzZWFyY2gg
ZnVuZHMgYXZhaWxhYmxlLCB1bmxlc3MgeW91IGNhbiB1c2UgR1BUIG9yIHNvbWUgCj4gb3RoZXIg
IkdlbmVyYXRpdmUgQUkiIG5hbWUgaW4gdGhlIHRpdGxlLiBIZWxsLCBJIGJldCBDb21jYXN0IHdp
bGwgZXZlbiB0YWtlIAo+IGl0cyBvd24gcmVzZWFyY2ggYnVkZ2V0IGFuZCBnaXZlIGl0IG92ZXIg
dG8gc29tZSBwcm9qZWN0cyB3aXRoIEFJIGluIHRoZSBuYW1lIAo+IGFuZCBHUFVzIGluIHRoZSBo
YXJkd2FyZS4gKEphc29uIExpdmluZ29vZCwgSSBmZWVsIHNvcnJ5IGZvciB5b3UsIGJ1dCBJJ2Qg
Cj4gcmVjb21tZW5kIHR1cm5pbmcgeW91ciBhdHRlbnRpb24gdG8gb3B0aW1pemluZyBhdWRpbyBj
aGF0IHNlcnZpY2VzIHJlc2VhcmNoIAo+IHJhdGhlciB0aGFuIGNvbmdlc3Rpb24sIGlmIHlvdSB3
YW50IHRvIHNhdmUgeW91ciBqb2IpLgoKY291bGQgdGhlIGNvbW11bml0eSB0cnkgYW5kIHByb2R1
Y2UgJ3RyYWZmaWMgc2ltdWxhdG9ycycgdGhhdCBpbXBsZW1lbnQgdGhlc2UgCnZhcmlvdXMgcHJv
dG9jb2xzIHdpdGggYSBtb3JlIHJlYWxpc3RpYyB0cmFmZmljIHBhdHRlcm4/IHNvbWV0aGluZyB0
aGF0IGNhbiBiZSAKdHVybmVkIHVwIG9yIGRvd24gd2l0aCBhIGZldyBwcmVzZXRzIG9mIHRoZSBt
aXggdGhhdCB3ZSBjYW4gbWFrZSBhdmFpbGFibGUgZm9yIAp0aGUgYWNhZGVtaWNzIHRvIHVzZSBm
b3IgdGhlaXIgdGVzdGluZz8KCkRhdmlkIExhbmcKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

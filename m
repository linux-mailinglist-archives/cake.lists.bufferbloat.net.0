Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB9CB46E0
	for <lists+cake@lfdr.de>; Tue, 17 Sep 2019 07:32:38 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 055EF3CB42;
	Tue, 17 Sep 2019 01:32:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1568698357;
	bh=casdZ+w3W9m9R3g38ptF97j8oUyp8UtJq2by1YaFdYU=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SmR8sP9W1junBzpBVOOAo8L2qSRloQ2FLMnGCQiWr/sBw2/JqakwkfIoHG5Ta2xdD
	 4lpSv/7DZwFe7a2rv87FWzSdaJ1C5YKZLKnUxo368jPws2WswXzmWfFZAUy/lO80S0
	 BQufW2u5v0vShqdRcuA2M4+BquW59QQOBKFfRtrbRhu9P1/I5wZ9C5RlpMjuKU9p7m
	 0c1wY+zc8IQejknCmUD/wOpunlV8TPUXimDdwSiXOAYpXxq1VDB47QwAl1kK5+B+rf
	 /Pm3ZLgRvxgtHOzengmkTOhD6S86t62VrOo8SZFrjYJIS6GehNK8aSvmImAMNwlhce
	 hkFbWq0mb3Jdw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A0D2C3CB36
 for <cake@lists.bufferbloat.net>; Tue, 17 Sep 2019 01:32:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=IBzePAnaa2HAb1RA1KfgE2J/2t10ktT34NQBpZc2FwU=; 
 b=h02LlkjIR4nOPrls9lcmo7cC/WhKRluim8fLrgLyYsL2oKBI2QcgKgnPqH2oqs2QAqGJAQbHw5smqQofwA+q5IaQDbitRaNnx/CU7psRbcdpweaUATiOft/AU5zcjpvi8mSyR2w89zVCyjNjCF59H/Xrw4kYKvywkIntFLgCazU=;
To: =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 cake@lists.bufferbloat.net
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
 <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
 <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
 <43F02160-E691-4393-A0C0-8AB4AD962700@gmail.com>
 <a75b079e-8a29-46f1-9890-7eb73e18b0f2@www.fastmail.com>
 <E975CC03-A531-4450-A896-5C3921A9D063@gmail.com>
 <057ea708-6797-23f5-ef01-9d3d7b002578@newmedia-net.de>
 <878sqomoj4.fsf@toke.dk>
 <b52b59ac-c5f7-8015-c7dc-b82406b9002c@newmedia-net.de>
 <87h85cl4qk.fsf@toke.dk>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <65e68948-6464-23ac-5df0-91735fc298af@newmedia-net.de>
Date: Tue, 17 Sep 2019 07:31:04 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <87h85cl4qk.fsf@toke.dk>
X-Received: from [2003:c9:3f21:2600:e48d:ccf8:4911:ed41]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1iA66U-0002nP-VG; Tue, 17 Sep 2019 07:32:42 +0200
Subject: Re: [Cake] cake memory consumption
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

YWNjb3JkaW5nIHRvIHRoZSBvdXRwdXQgdGhlcmUgaXMgYSBmbGF3L2J1ZyBpbiB0aGUgbWVtb3J5
IGxpbWl0IGNhbGN1bGF0aW9uCmNha2VfcmVjb25maWd1cmXCoMKgwqDCoCBtYXkgc2V0IGJ1ZmZl
cl9saW1pdCB0b8KgIH4wIGlmIG5vIHJhdGUgaXMgc2V0LgoKdGhlIGZvbGxvd2luZyBsaW5lICJt
aW4oYnVmZmVyX2xpbWl0LCBtYXgoc2NoLT5saW1pdCAqIApwc2NoZWRfbXR1KHFkaXNjX2RlYyhz
Y2gpLCBxLT5idWZmZXJfY29uZmlnX2xpbWl0KSkiIGRvZXNudCBtYWtlIGl0IApiZXR0ZXIgc2lu
Y2UgYnVmZmVyX2NvbmZpZ19saW1pdCBpcyBub3QgY29uZmlndXJlZApzbyB3ZSBnb3QgYSBwb3Nz
aWJsZSBtZW1vcnkgb3ZlcnVzZSBoZXJlLgoKbXkgcHJvcG9zYWwKCi3CoMKgwqDCoMKgwqAgcS0+
YnVmZmVyX2xpbWl0ID0gbWluKHEtPmJ1ZmZlcl9saW1pdCwKLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1heChzY2gtPmxpbWl0ICogcHNj
aGVkX210dShxZGlzY19kZXYoc2NoKSksCi3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHEtPmJ1ZmZlcl9jb25maWdfbGltaXQp
KTsKK8KgwqDCoMKgwqDCoCBpZiAocS0+YnVmZmVyX2NvbmZpZ19saW1pdCkKK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgcS0+YnVmZmVyX2xpbWl0ID0gbWluKHEtPmJ1ZmZlcl9saW1pdCwK
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1heChzY2gtPmxp
bWl0ICogcHNjaGVkX210dShxZGlzY19kZXYoc2NoKSksIApxLT5idWZmZXJfY29uZmlnX2xpbWl0
KSk7CivCoMKgwqDCoMKgwqAgZWxzZQorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBxLT5i
dWZmZXJfbGltaXQgPSBtaW4ocS0+YnVmZmVyX2xpbWl0LAorwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbWF4KHNjaC0+bGltaXQgKiBwc2NoZWRfbXR1KHFkaXNj
X2RldihzY2gpKSwgNFUgCjw8IDIwKSk7CgpBbSAxNi4wOS4yMDE5IHVtIDE2OjAxIHNjaHJpZWIg
VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuOgo+IFNlYmFzdGlhbiBHb3R0c2NoYWxsIDxzLmdvdHRz
Y2hhbGxAbmV3bWVkaWEtbmV0LmRlPiB3cml0ZXM6Cj4KPj4gQW0gMTYuMDkuMjAxOSB1bSAxNDow
OCBzY2hyaWViIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbjoKPj4+IFNlYmFzdGlhbiBHb3R0c2No
YWxsIDxzLmdvdHRzY2hhbGxAbmV3bWVkaWEtbmV0LmRlPiB3cml0ZXM6Cj4+Pgo+Pj4+IGFmdGVy
IHdlIGZvdW5kIG91dCBzZXJpb3VzIG91dCBvZiBtZW1vcnkgaXNzdWVzIG9uIHNtYWxsZXIgZW1i
ZWRkZWQKPj4+PiBkZXZpY2VzICgxMjggbWIgcmFtKSB3ZSBtYWRlIHNvbWUgYmVuY2htYXJrcyB3
aXRoIGRpZmZlcmVudCBzY2hlZHVsZXJzCj4+Pj4gd2l0aCB0aGUgcmVzdWx0IHRoYXQgY2FrZSB0
YWtlcyBhIHNlcmlvdXMgYW1vdW50IG9mIG1lbW9yeS4gd2UgdXNlIHRoZQo+Pj4+IG91dCBvZiB0
cmVlIGNha2UgbW9kdWxlIGFuZCB3ZSB1c2UgaXQgY2xhc3MgYmFzZWQgc2luY2Ugd2UgaGF2ZSBj
b21wbGV4Cj4+Pj4gbWV0aG9kcyBvZiBkb2luZyBxb3MgcGVyIGludGVyZmFjZSwgcGVyIG1hYyBh
ZGRyZXNzZSBvciBldmVuIHBlcgo+Pj4+IGlwL25ldHdvcmsuIHNvIGl0cyBub3QganVzdCBzaW1w
bGUgY2FrZSBvbiBhIHNpbmdsZSBpbnRlcmZhY2Ugc29sdXRpb24uCj4+Pj4gd2UgbWFkZSBzb21l
IGJlbmNobWFya3Mgd2l0aCBkaWZmZXJlbnQgc2NoZWR1bGVycy4gZG9lcyBhbnlib2R5IGhhdmUg
YQo+Pj4+IHNvbHV0aW9uIGZvciBtYWtpbmcgdGhhdCBiZXR0ZXI/Cj4+Pj4KPj4+PiBIVEIvRlFf
Q09ERUwgLS0tLS0tLe+DoCA2Mk0KPj4+PiBIVEIvU0ZRIC0tLS0tLS3vg6AgNjJNCj4+Pj4gSFRC
L1BJRSAtLS0tLS0t74OgIDYyTQo+Pj4+IEhUQi9GUV9DT0RFTF9GQVNUIC0tLS0tLS3vg6AgNjdN
Cj4+Pj4gSFRCL0NBS0UgLS0tLS0tLe+DoDExMU0KPj4+Pgo+Pj4+IEhGU0MvRlFfQ09ERUxfRkFT
VCAtLS0tLS0t74OgIDQ3TQo+Pj4+IEhUQi9QSUUgLS0tLS0tLe+DoCA0OU0KPj4+PiBIVEIvU0ZR
IC0tLS0tLS3vg6AgNTBNCj4+Pj4gSEZTQyAvRlFfQ09ERUwgLS0tLS0tLe+DoCA1Mk0KPj4+PiBI
RlNDL0NBS0UgLS0tLS0tLe+DoDEwOU0KPj4+IEhvdyBhcmUgeW91IG1lYXN1cmluZyB0aGUgbWVt
b3J5IHVzYWdlLCBhbmQgd2hhdCBpcyB5b3VyIGZ1bGwgY29uZmlnIGZvcgo+Pj4gZWFjaCBzZXR1
cD8gOikKPj4gbWU/IG5vdGhpbmcuIGkgcmVxdWVzdGVkIHRoaXMgdGVzdCBmcm9tIGEgcmVwb3J0
ZXIgYW5kIGhlIHVzZXMganVzdCBmcmVlCj4+IC8gdG9wLiBzbyB0aGVyZSBpcyBhIGVycm9yIHRv
bGxlcmFuY2UuCj4gQWgsIEkgc2VlLiBTbyB0aGlzIGlzIGp1c3QgdG90YWwgc3lzdGVtIG1lbW9y
eSBhcyByZXBvcnRlZCBieSB0b3AuCj4KPj4gYnV0IGl0IHNob3dzIGEgc2lnbmlmaWNhbnQgZGlm
ZmVyZW5jZSBiZXR3ZWVuIGNha2UgYW5kIGZxX2NvZGVsIGV0Yy4KPj4gY2FrZSBpcyBkb2luZyBh
IE9PTSBhdCB0aGUgZW5kCj4+Cj4+IGZvciB0aGUgZnVsbCByZXBvcnQgaW5jbHVkaW5nIGNvbmZp
ZyBzY3JlZW5zaG90cyBzZWUgdGhpcwo+PiBodHRwczovL3N2bi5kZC13cnQuY29tL3RpY2tldC82
Nzk4I2NvbW1lbnQ6MTQuIGl0IHNob3dzIGFsc28gdGhlIHFvcwo+PiBzZXR1cCB3aGljaCBpIGNh
biB1c2UgdG8gcmVwcm9kdWNlIGFuZCB0bwo+PiBwcmludCBvdXQgdGhlIGZ1bGwgdGMgcnVsZXNl
dCBpZiByZXF1aXJlZCAod2hpY2ggaXQgc3VyZWxseSBpcyBmb3IgeW91KS4KPj4gaWYgeW91IHdh
bnQgaSB3aWxsIHJlY3JlYXRlIHRoaXMgc2V0dXAgYW5kIHNlbmQgdGhlIHRjIHJ1bGVzIG9uIHRo
aXMKPj4gbGlzdAo+IFllcywgcGxlYXNlIGRvLiBUaGUgb3V0cHV0IG9mICd0YyAtcyBxZGlzYycg
d291bGQgYmUgdXNlZnVsIGFzIHdlbGwgdG8KPiBzZWUgaG93IG11Y2ggbWVtb3J5IENBS0UgaXRz
ZWxmIHRoaW5rcyBpdCdzIHVzaW5nLi4uCj4KPiBBcmUgeW91IHNldHRpbmcgdGhlIG1lbW9yeV9s
aW1pdCBpbiB5b3VyIGNvbmZpZyBvciByZWx5aW5nIG9uIENBS0Uncwo+IGRlZmF1bHQ/Cj4KPiAt
VG9rZQo+Cj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Q2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0
cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B26EB46E7
	for <lists+cake@lfdr.de>; Tue, 17 Sep 2019 07:34:46 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3FE863CB43;
	Tue, 17 Sep 2019 01:34:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1568698485;
	bh=fC7GoR1NOtnbZoH4F+SMI2McrN2IHcHh/fjRq8Mo5RQ=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fUpA1xqsE/BriS7pevm1Zx8niHfPwx0/gWQpUis1tAQPhoej8rlXgIPwr9Gd8A5Li
	 Aupp3bzFakjX/XVSKkjDcmN3TM94ydH9At+WBaW4QK1/29dzWj/oNKL9r5M+1H481Z
	 dxZh3DGYUXX/qBvJHwNfg9FacMEmduzqRYHqGL6ITxBizfN1rGzeIP99wJab9Ccy0A
	 SczZsPIDxb50G+qKqt7FLhgiAONHFODAjil5yXtyTzqJLmu+xZ4KdE9LyCQZw8SL9n
	 Co8xN++lciWa+f1/9T865+Rbgc+hTnCVK/lNjnQIX4A+0lLGDfzhio0NTVs5uB7zwl
	 DavWCs1UMRZOA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A896A3CB36
 for <cake@lists.bufferbloat.net>; Tue, 17 Sep 2019 01:34:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=4iT2A3TWDnTG5Cs6P4UaX7G6VcUCPrsg3JXxil+8buI=; 
 b=z88NwufUJALnn6HOtcQeiBSApDNYiIHOO1GuWvSzRGOAOGF6oyR658+Jeftlt5XKMnCbFWN6UVylPWEYwqoyhDmpcdNZWCAiDd2M+sDA3zSPkXo1SlAitaDkzCHRVcifnqDm42PgZPrsMC093goRXbBZXShwjmby0ocysVJq8oQ=;
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
Message-ID: <edee31d8-aa60-28d2-be83-38c85f1f0e6d@newmedia-net.de>
Date: Tue, 17 Sep 2019 07:33:12 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <87h85cl4qk.fsf@toke.dk>
X-Received: from [2003:c9:3f21:2600:e48d:ccf8:4911:ed41]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1iA68Y-0003EE-W5; Tue, 17 Sep 2019 07:34:51 +0200
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

bW9yZSBzaW1wbGUgcGF0Y2gKCi0tLSBzY2hfY2FrZS5jwqAgKHJldmlzaW9uIDQxMDUxKQorKysg
c2NoX2Nha2UuY8KgICh3b3JraW5nIGNvcHkpCkBAIC0yNjkxLDcgKzI2OTEsNyBAQAogwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRvX2Rpdih0LCBVU0VDX1BFUl9TRUMgLyA0KTsKIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBxLT5idWZmZXJfbGltaXQgPSBtYXhfdCh1MzIs
IHQsIDRVIDw8IDIwKTsKIMKgwqDCoMKgwqDCoMKgIH0gZWxzZSB7Ci3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHEtPmJ1ZmZlcl9saW1pdCA9IH4wOworwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBxLT5idWZmZXJfbGltaXQgPSA0VSA8PCAyMDsKIMKgwqDCoMKgwqDCoMKgIH0KCiDC
oMKgwqDCoMKgwqDCoCBzY2gtPmZsYWdzICY9IH5UQ1FfRl9DQU5fQllQQVNTOwoKQW0gMTYuMDku
MjAxOSB1bSAxNjowMSBzY2hyaWViIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbjoKPiBTZWJhc3Rp
YW4gR290dHNjaGFsbCA8cy5nb3R0c2NoYWxsQG5ld21lZGlhLW5ldC5kZT4gd3JpdGVzOgo+Cj4+
IEFtIDE2LjA5LjIwMTkgdW0gMTQ6MDggc2NocmllYiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW46
Cj4+PiBTZWJhc3RpYW4gR290dHNjaGFsbCA8cy5nb3R0c2NoYWxsQG5ld21lZGlhLW5ldC5kZT4g
d3JpdGVzOgo+Pj4KPj4+PiBhZnRlciB3ZSBmb3VuZCBvdXQgc2VyaW91cyBvdXQgb2YgbWVtb3J5
IGlzc3VlcyBvbiBzbWFsbGVyIGVtYmVkZGVkCj4+Pj4gZGV2aWNlcyAoMTI4IG1iIHJhbSkgd2Ug
bWFkZSBzb21lIGJlbmNobWFya3Mgd2l0aCBkaWZmZXJlbnQgc2NoZWR1bGVycwo+Pj4+IHdpdGgg
dGhlIHJlc3VsdCB0aGF0IGNha2UgdGFrZXMgYSBzZXJpb3VzIGFtb3VudCBvZiBtZW1vcnkuIHdl
IHVzZSB0aGUKPj4+PiBvdXQgb2YgdHJlZSBjYWtlIG1vZHVsZSBhbmQgd2UgdXNlIGl0IGNsYXNz
IGJhc2VkIHNpbmNlIHdlIGhhdmUgY29tcGxleAo+Pj4+IG1ldGhvZHMgb2YgZG9pbmcgcW9zIHBl
ciBpbnRlcmZhY2UsIHBlciBtYWMgYWRkcmVzc2Ugb3IgZXZlbiBwZXIKPj4+PiBpcC9uZXR3b3Jr
LiBzbyBpdHMgbm90IGp1c3Qgc2ltcGxlIGNha2Ugb24gYSBzaW5nbGUgaW50ZXJmYWNlIHNvbHV0
aW9uLgo+Pj4+IHdlIG1hZGUgc29tZSBiZW5jaG1hcmtzIHdpdGggZGlmZmVyZW50IHNjaGVkdWxl
cnMuIGRvZXMgYW55Ym9keSBoYXZlIGEKPj4+PiBzb2x1dGlvbiBmb3IgbWFraW5nIHRoYXQgYmV0
dGVyPwo+Pj4+Cj4+Pj4gSFRCL0ZRX0NPREVMIC0tLS0tLS3vg6AgNjJNCj4+Pj4gSFRCL1NGUSAt
LS0tLS0t74OgIDYyTQo+Pj4+IEhUQi9QSUUgLS0tLS0tLe+DoCA2Mk0KPj4+PiBIVEIvRlFfQ09E
RUxfRkFTVCAtLS0tLS0t74OgIDY3TQo+Pj4+IEhUQi9DQUtFIC0tLS0tLS3vg6AxMTFNCj4+Pj4K
Pj4+PiBIRlNDL0ZRX0NPREVMX0ZBU1QgLS0tLS0tLe+DoCA0N00KPj4+PiBIVEIvUElFIC0tLS0t
LS3vg6AgNDlNCj4+Pj4gSFRCL1NGUSAtLS0tLS0t74OgIDUwTQo+Pj4+IEhGU0MgL0ZRX0NPREVM
IC0tLS0tLS3vg6AgNTJNCj4+Pj4gSEZTQy9DQUtFIC0tLS0tLS3vg6AxMDlNCj4+PiBIb3cgYXJl
IHlvdSBtZWFzdXJpbmcgdGhlIG1lbW9yeSB1c2FnZSwgYW5kIHdoYXQgaXMgeW91ciBmdWxsIGNv
bmZpZyBmb3IKPj4+IGVhY2ggc2V0dXA/IDopCj4+IG1lPyBub3RoaW5nLiBpIHJlcXVlc3RlZCB0
aGlzIHRlc3QgZnJvbSBhIHJlcG9ydGVyIGFuZCBoZSB1c2VzIGp1c3QgZnJlZQo+PiAvIHRvcC4g
c28gdGhlcmUgaXMgYSBlcnJvciB0b2xsZXJhbmNlLgo+IEFoLCBJIHNlZS4gU28gdGhpcyBpcyBq
dXN0IHRvdGFsIHN5c3RlbSBtZW1vcnkgYXMgcmVwb3J0ZWQgYnkgdG9wLgo+Cj4+IGJ1dCBpdCBz
aG93cyBhIHNpZ25pZmljYW50IGRpZmZlcmVuY2UgYmV0d2VlbiBjYWtlIGFuZCBmcV9jb2RlbCBl
dGMuCj4+IGNha2UgaXMgZG9pbmcgYSBPT00gYXQgdGhlIGVuZAo+Pgo+PiBmb3IgdGhlIGZ1bGwg
cmVwb3J0IGluY2x1ZGluZyBjb25maWcgc2NyZWVuc2hvdHMgc2VlIHRoaXMKPj4gaHR0cHM6Ly9z
dm4uZGQtd3J0LmNvbS90aWNrZXQvNjc5OCNjb21tZW50OjE0LiBpdCBzaG93cyBhbHNvIHRoZSBx
b3MKPj4gc2V0dXAgd2hpY2ggaSBjYW4gdXNlIHRvIHJlcHJvZHVjZSBhbmQgdG8KPj4gcHJpbnQg
b3V0IHRoZSBmdWxsIHRjIHJ1bGVzZXQgaWYgcmVxdWlyZWQgKHdoaWNoIGl0IHN1cmVsbHkgaXMg
Zm9yIHlvdSkuCj4+IGlmIHlvdSB3YW50IGkgd2lsbCByZWNyZWF0ZSB0aGlzIHNldHVwIGFuZCBz
ZW5kIHRoZSB0YyBydWxlcyBvbiB0aGlzCj4+IGxpc3QKPiBZZXMsIHBsZWFzZSBkby4gVGhlIG91
dHB1dCBvZiAndGMgLXMgcWRpc2MnIHdvdWxkIGJlIHVzZWZ1bCBhcyB3ZWxsIHRvCj4gc2VlIGhv
dyBtdWNoIG1lbW9yeSBDQUtFIGl0c2VsZiB0aGlua3MgaXQncyB1c2luZy4uLgo+Cj4gQXJlIHlv
dSBzZXR0aW5nIHRoZSBtZW1vcnlfbGltaXQgaW4geW91ciBjb25maWcgb3IgcmVseWluZyBvbiBD
QUtFJ3MKPiBkZWZhdWx0Pwo+Cj4gLVRva2UKPgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMuYnVmZmVy
YmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nha2UK

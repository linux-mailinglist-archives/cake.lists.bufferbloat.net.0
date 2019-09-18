Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BA6B5DEA
	for <lists+cake@lfdr.de>; Wed, 18 Sep 2019 09:21:18 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0AEC03CB38;
	Wed, 18 Sep 2019 03:21:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1568791277;
	bh=X8AphZhKDV/lstSVUhbI3C8I90fYOqB4ZJ5uFNpl24g=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PQNrCFsVbJWTcb0OgiEDiv+oehNxtCd6eh8a38YxvDqdqOOt9ri+/PEOCTi8j8s4P
	 CvB8PAE/BYjJ8aBBzmpBdLRUfNJuWnBzlY+vFKfQJx1DSjTkCocoMj5mDGLX6qJCom
	 6aMPvcGiDSLRUq5mf7vJGgZcWZrHvC3JbpyxpXeYvPpiI+rALvQCL2Bh0JYn9KwLpQ
	 Yk8fYyHwYP2eKd2dPEREuUu1RfGwlmcBp/XZY6bNFI9KW7bPacJ/KnZtad8YZmpYAC
	 wpi8Xcq8+hl05yR25IoODw9TAlueNmp0XAQGVIclqjEhfn7Ab+dgHqh1mvWAacJ0Zu
	 FlHcOTebYyl2w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 29AC33B29E
 for <cake@lists.bufferbloat.net>; Wed, 18 Sep 2019 03:21:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=p3wRt6t3VTPxlOueoRy6tv7cW4Prfwz3B9O7JB7pbwE=; 
 b=KH1j8yB2jtwB1pZhjOciUaj6KNcWB3HLvGUpt45yYATk7TRvsdHd+zcTwQDv6eIGb1qR+0aAzcTgF8SGhqgMTXk4PrfFUu1dkfL5cToJU4IiGiYVa/Z5/ZlBHbEyBYTLdYEwaJwOSyLERbsWBQUc25ARFu6w2DPBhRv835MQMMs=;
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
 <edee31d8-aa60-28d2-be83-38c85f1f0e6d@newmedia-net.de>
 <87r24fjm60.fsf@toke.dk>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <3449acf8-e700-6b50-544f-b272165ad0e6@newmedia-net.de>
Date: Wed, 18 Sep 2019 09:19:42 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <87r24fjm60.fsf@toke.dk>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1iAUHB-0002ii-7h; Wed, 18 Sep 2019 09:21:21 +0200
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

dGhlIHByb2JsZW0gaXMuIGkgdGVzdGVkIHJlc3RyaWN0aW5nIHRoZSBtZW1vcnkgdG8gNCBtYi4g
YnV0IGl0IHN0aWxsIApydW5zIG9vbS4gc2FtZSBtZW1vcnkgY29uc3VtcHRpb24gYW5kIGZyb20g
dGhlIHFkaXNjIHNob3cgb3V0cHV0IGkgYWxzbyAKc2VlIHRoYXQganVzdCBhIGZldyBraWxvYnl0
ZXMgYXJlIHVzZWQgaW4gdGhhdCBwb29sLgpzbyB0aGUgcHJvYmxlbSB3aXRoIGNha2UgbXVzdCBi
ZSBzb21ld2hlcmUgZWxzZS4gaXRzIG5vdCB0aGUgYnVmZmVyIApsaW1pdC4gaSBzZWUgdmFsdWVz
IGxpa2UgbWVtb3J5IHVzZWQ6IDIyMTc2YiBvZiA0TWIgd2hpY2ggaXMgcmVhbGx5IApub3RoaW5n
LiBtb3N0IHFkaXNjcyBhcmUgMCBhbmQgdW51c2VkIGluIHRoYXQgc2V0dXAKCkFtIDE3LjA5LjIw
MTkgdW0gMTE6NDAgc2NocmllYiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW46Cj4gU2ViYXN0aWFu
IEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdyaXRlczoKPgo+PiBt
b3JlIHNpbXBsZSBwYXRjaAo+Pgo+PiAtLS0gc2NoX2Nha2UuY8KgIChyZXZpc2lvbiA0MTA1MSkK
Pj4gKysrIHNjaF9jYWtlLmPCoCAod29ya2luZyBjb3B5KQo+PiBAQCAtMjY5MSw3ICsyNjkxLDcg
QEAKPj4gICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG9fZGl2KHQsIFVTRUNfUEVS
X1NFQyAvIDQpOwo+PiAgIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBxLT5idWZmZXJf
bGltaXQgPSBtYXhfdCh1MzIsIHQsIDRVIDw8IDIwKTsKPj4gICDCoMKgwqDCoMKgwqDCoCB9IGVs
c2Ugewo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBxLT5idWZmZXJfbGltaXQgPSB+
MDsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcS0+YnVmZmVyX2xpbWl0ID0gNFUg
PDwgMjA7Cj4+ICAgwqDCoMKgwqDCoMKgwqAgfQo+Pgo+PiAgIMKgwqDCoMKgwqDCoMKgIHNjaC0+
ZmxhZ3MgJj0gflRDUV9GX0NBTl9CWVBBU1M7Cj4gQXMgSm9uYXRoYW4gcmVtYXJrZWQsIHRoZSBy
aWdodCB0aGluZyB0byBkbyBoZXJlIGlzIHRvIHVzZSB0aGUKPiBtZW1vcnlfbGltaXQgcGFyYW1l
dGVyIHRvIHNldCBhIGRpZmZlcmVudCBsaW1pdCB3aGVuIHlvdSBzZXR1cCB0aGUgdHJlZS4KPgo+
IFN0aWxsLCBJIGNvdW50IDM1IGluc3RhbmNlcyBvZiBDQUtFIGluIHlvdXIgc2V0dXA7IGV2ZW4g
d2l0aCBhIDRNQiBsaW1pdAo+IGFwaWVjZSwgdGhhdCBpcyBhIHRvdGFsIG9mIDE0MCBNQiBvZiBw
b3RlbnRpYWwgcGFja2V0IG1lbW9yeS4gWW91J2QgbmVlZAo+IHRvIHNldCBpdCBhcyBsb3cgYXMg
MSBvciAyIE1CIHRvIGJlIGNvbXBsZXRlbHkgc3VyZSB0aGF0IHlvdSB3b24ndCBydW4KPiBvdXQg
b2YgbWVtb3J5IGlmIHRoZXkgYXJlIGFsbCBmdWxsLi4uCj4KPiAtVG9rZQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtl
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0
aW5mby9jYWtlCg==

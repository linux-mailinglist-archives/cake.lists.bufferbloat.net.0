Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id E76C1B46B9
	for <lists+cake@lfdr.de>; Tue, 17 Sep 2019 07:08:09 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CA3763CB41;
	Tue, 17 Sep 2019 01:08:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1568696887;
	bh=bkpgrdLm8EFyCGpB6rSgh8V4lomEYRJel3NNC6zi/3E=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=W2GSCPQjNTCu/XSMafDTCrwdMTydRMUEMBO5F7UwXzqiHizaa4epljysFJZX/ZDyJ
	 cAeqPjNHC2Wyr33IUnKU/ijj4RlPJNG43NeFPF2ipK+Ov1z3uh+zM+wwqngrLjNrDN
	 6t/HFcp7+UIjGlwC4HekNpgA/k+4KCd+iu/5Q50AO8VfyxziVDPtFJ5snqgL6zZqXO
	 vekvtlfbyngxs194sylfBrrgZryI9t5HTLVEZcMU+NZ2WMBrHvgc4H/SL4eSTh2I+I
	 I0XlC+3uQa8GqREIN1j4jjHph7nOMGDVCb3FrxIYf5KGEiqK18nsYjYA5dHDA1TdSH
	 hghJcwhUDQIPA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E067A3CB36
 for <cake@lists.bufferbloat.net>; Tue, 17 Sep 2019 01:08:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=tcHucbzohKHm+0AjWypvO4zuIwN5SnG7FuTY954rjQY=; 
 b=k6jkUS9QYSSz/k54uQ+Hxwu1WNjiUV6hVpFDn7JypeI78BHg527Yfrc4vN+nvvUdWgUlOkhc+iXYAFRjajSKyoia2ccnqN3c7kx9hz6ozNjdvUCDZEEBeFfQDE8+ezbBUnCF8h63D2xV0a/9QpBysgxsUtsPK5wj650IT11O6hk=;
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
Message-ID: <d2132d07-844c-27a7-1c75-3516191318ca@newmedia-net.de>
Date: Tue, 17 Sep 2019 07:06:33 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <87h85cl4qk.fsf@toke.dk>
X-Received: from [2003:c9:3f21:2600:e48d:ccf8:4911:ed41]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1iA5im-00074G-En; Tue, 17 Sep 2019 07:08:12 +0200
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

CkFtIDE2LjA5LjIwMTkgdW0gMTY6MDEgc2NocmllYiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW46
Cj4gU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRpYS1uZXQuZGU+IHdy
aXRlczoKPgo+PiBBbSAxNi4wOS4yMDE5IHVtIDE0OjA4IHNjaHJpZWIgVG9rZSBIw7hpbGFuZC1K
w7hyZ2Vuc2VuOgo+Pj4gU2ViYXN0aWFuIEdvdHRzY2hhbGwgPHMuZ290dHNjaGFsbEBuZXdtZWRp
YS1uZXQuZGU+IHdyaXRlczoKPj4+Cj4+Pj4gYWZ0ZXIgd2UgZm91bmQgb3V0IHNlcmlvdXMgb3V0
IG9mIG1lbW9yeSBpc3N1ZXMgb24gc21hbGxlciBlbWJlZGRlZAo+Pj4+IGRldmljZXMgKDEyOCBt
YiByYW0pIHdlIG1hZGUgc29tZSBiZW5jaG1hcmtzIHdpdGggZGlmZmVyZW50IHNjaGVkdWxlcnMK
Pj4+PiB3aXRoIHRoZSByZXN1bHQgdGhhdCBjYWtlIHRha2VzIGEgc2VyaW91cyBhbW91bnQgb2Yg
bWVtb3J5LiB3ZSB1c2UgdGhlCj4+Pj4gb3V0IG9mIHRyZWUgY2FrZSBtb2R1bGUgYW5kIHdlIHVz
ZSBpdCBjbGFzcyBiYXNlZCBzaW5jZSB3ZSBoYXZlIGNvbXBsZXgKPj4+PiBtZXRob2RzIG9mIGRv
aW5nIHFvcyBwZXIgaW50ZXJmYWNlLCBwZXIgbWFjIGFkZHJlc3NlIG9yIGV2ZW4gcGVyCj4+Pj4g
aXAvbmV0d29yay4gc28gaXRzIG5vdCBqdXN0IHNpbXBsZSBjYWtlIG9uIGEgc2luZ2xlIGludGVy
ZmFjZSBzb2x1dGlvbi4KPj4+PiB3ZSBtYWRlIHNvbWUgYmVuY2htYXJrcyB3aXRoIGRpZmZlcmVu
dCBzY2hlZHVsZXJzLiBkb2VzIGFueWJvZHkgaGF2ZSBhCj4+Pj4gc29sdXRpb24gZm9yIG1ha2lu
ZyB0aGF0IGJldHRlcj8KPj4+Pgo+Pj4+IEhUQi9GUV9DT0RFTCAtLS0tLS0t74OgIDYyTQo+Pj4+
IEhUQi9TRlEgLS0tLS0tLe+DoCA2Mk0KPj4+PiBIVEIvUElFIC0tLS0tLS3vg6AgNjJNCj4+Pj4g
SFRCL0ZRX0NPREVMX0ZBU1QgLS0tLS0tLe+DoCA2N00KPj4+PiBIVEIvQ0FLRSAtLS0tLS0t74Og
MTExTQo+Pj4+Cj4+Pj4gSEZTQy9GUV9DT0RFTF9GQVNUIC0tLS0tLS3vg6AgNDdNCj4+Pj4gSFRC
L1BJRSAtLS0tLS0t74OgIDQ5TQo+Pj4+IEhUQi9TRlEgLS0tLS0tLe+DoCA1ME0KPj4+PiBIRlND
IC9GUV9DT0RFTCAtLS0tLS0t74OgIDUyTQo+Pj4+IEhGU0MvQ0FLRSAtLS0tLS0t74OgMTA5TQo+
Pj4gSG93IGFyZSB5b3UgbWVhc3VyaW5nIHRoZSBtZW1vcnkgdXNhZ2UsIGFuZCB3aGF0IGlzIHlv
dXIgZnVsbCBjb25maWcgZm9yCj4+PiBlYWNoIHNldHVwPyA6KQo+PiBtZT8gbm90aGluZy4gaSBy
ZXF1ZXN0ZWQgdGhpcyB0ZXN0IGZyb20gYSByZXBvcnRlciBhbmQgaGUgdXNlcyBqdXN0IGZyZWUK
Pj4gLyB0b3AuIHNvIHRoZXJlIGlzIGEgZXJyb3IgdG9sbGVyYW5jZS4KPiBBaCwgSSBzZWUuIFNv
IHRoaXMgaXMganVzdCB0b3RhbCBzeXN0ZW0gbWVtb3J5IGFzIHJlcG9ydGVkIGJ5IHRvcC4Kdmlj
ZSB2ZXJzYS4gdGhpcyBpcyBtZW1vcnkgdXNhZ2UgYW5kIG5vdCB0b3RhbCBzeXN0ZW0gbWVtb3J5
LiAod2hpY2ggCndvdWxkIGJlIGFsd2F5cyAxMjhtYikKPgo+PiBidXQgaXQgc2hvd3MgYSBzaWdu
aWZpY2FudCBkaWZmZXJlbmNlIGJldHdlZW4gY2FrZSBhbmQgZnFfY29kZWwgZXRjLgo+PiBjYWtl
IGlzIGRvaW5nIGEgT09NIGF0IHRoZSBlbmQKPj4KPj4gZm9yIHRoZSBmdWxsIHJlcG9ydCBpbmNs
dWRpbmcgY29uZmlnIHNjcmVlbnNob3RzIHNlZSB0aGlzCj4+IGh0dHBzOi8vc3ZuLmRkLXdydC5j
b20vdGlja2V0LzY3OTgjY29tbWVudDoxNC4gaXQgc2hvd3MgYWxzbyB0aGUgcW9zCj4+IHNldHVw
IHdoaWNoIGkgY2FuIHVzZSB0byByZXByb2R1Y2UgYW5kIHRvCj4+IHByaW50IG91dCB0aGUgZnVs
bCB0YyBydWxlc2V0IGlmIHJlcXVpcmVkICh3aGljaCBpdCBzdXJlbGx5IGlzIGZvciB5b3UpLgo+
PiBpZiB5b3Ugd2FudCBpIHdpbGwgcmVjcmVhdGUgdGhpcyBzZXR1cCBhbmQgc2VuZCB0aGUgdGMg
cnVsZXMgb24gdGhpcwo+PiBsaXN0Cj4gWWVzLCBwbGVhc2UgZG8uIFRoZSBvdXRwdXQgb2YgJ3Rj
IC1zIHFkaXNjJyB3b3VsZCBiZSB1c2VmdWwgYXMgd2VsbCB0bwo+IHNlZSBob3cgbXVjaCBtZW1v
cnkgQ0FLRSBpdHNlbGYgdGhpbmtzIGl0J3MgdXNpbmcuLi4KeW91IHdpbGwgZ2V0IGl0IHdpbGwg
ZnVsbCBzdGF0cyBvZiBjb3Vyc2UgKHdpdGhpbiB0aGUgbmV4dCA2IGhvdXJzLiBqdXN0IAp3b2tl
IHVwIHJpZ2h0IG5vdykKPgo+IEFyZSB5b3Ugc2V0dGluZyB0aGUgbWVtb3J5X2xpbWl0IGluIHlv
dXIgY29uZmlnIG9yIHJlbHlpbmcgb24gQ0FLRSdzCj4gZGVmYXVsdD8KCm5vIGRlZmF1bHQgaGFz
IGJlZW4gc2V0LiBzbyB0aGUgYXV0byBjYWxjdWxhdGlvbiBpcyB1c2VkIHdpdGhpbiBjYWtlIAp3
aXRoIHRoZSA0IG1iIGxpbWl0IHRydW5jYXRpb24KCj4KPiAtVG9rZQo+Cj4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vY2FrZQo=

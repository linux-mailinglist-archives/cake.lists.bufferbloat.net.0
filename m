Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A692C9B326
	for <lists+cake@lfdr.de>; Tue, 02 Dec 2025 11:41:25 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id B4EDAA1EB9E;
	Tue, 02 Dec 2025 11:41:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1764672084;
	bh=gNg6jGHEknK4m5ci8pRFelbCYl2eLlhHVjP2wv8eRUE=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=lmYWpFWO94SVvKuBFUVqavSyUzUYVk0tffrynBqoxtkeKTPflLV5F04ffEhVmhFQ7
	 JohzTYvA/EdXY0M+mLv7IIWKRRmI5QXgR5UHWxNZhHKz0NPk+0TNsxDMS+9sa/Ivi2
	 U2RCgYFR8W5N8CwC4DmDxrgvcqt6/V6DbEFOx3XV07WWTULdPWVhDnzn5X6n3jOLmV
	 eFMdVhsV6YEOuwPomNCRcbJPB0WWs6v8F8ApNxrltPWU+14MVSuOut2u8x5JjTRSgh
	 7BrMO9lUVz/J/EBn5W7uoFKCbxw9yCrfaOiUUH/4M96sSVRlwsvf4by0BKI84K+qwN
	 g+aXnheFysX0w==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764672084;
 b=52ZrF1LQTCAyUBHYGW3c6gFltepi/JBrOpEAFI2xn7c3ovFJPlmFYyuyyzYe3d1hf1glI
 qCjGWJCbj5oZiMAeVa7l9SxEKOm0CjHmDUZW7HSfA4h2MRTPP0nipDU7SBbgWU+eH/gvrfp
 QVvliqv9EsO6PF30DBh68YS64BLHCmE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764672084; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=gNg6jGHEknK4m5ci8pRFelbCYl2eLlhHVjP2wv8eRUE=;
 b=RQXu85em7umcba23hD+25kK72tcqTlAi+x2sUQTBRrndbCg9LaM0zF+nW4dYFuiCiGukA
 txod4sAvD75rMmWN1BEryD5o1W6mnWVr3nT5jP03CAe3DPow3eOnd7DOW2Tcq+wMKDLPxkJ
 AZMGjP2ZqxUHlvufuYdTeCnSLvn9BB8=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1764672082; bh=AB/YV5FgeN7iiVMR16ByeM4aMGMDjBYkKLdys2MDF4w=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=ECameLACubzq7uw8LYTKmDrujVAzjZXphpHiQXk8+ht8wMQCSjwj+CoL6lrcWvm/4
	 4GgRsHvbt94d03UCDIQwc3fSBgj7PFJYHazD7jmESSEeoVz4PhaXhH+CBfVHUxbPNP
	 wcTGcfs2UO5uakbFYOV8aa7cpsvBGBUsw6uOyoBfXIexVHrXLuSruXe7riOkhy2yOX
	 9uS31u6hEIl6AcbUIt5vvq8DD9xdr0vIsDyL5ipC+WggmpKe2EL0jXjp1UbzUE0vc0
	 BJz0zblUqq6CCt4j4qgbID5ly91PjRZceZRabn+jVU8kPQQBied1ShMcV9ixDa0OAr
	 CRYibzFUMkQIw==
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Jamal Hadi Salim
 <jhs@mojatatu.com>, Cong Wang <xiyou.wangcong@gmail.com>, Jiri Pirko
 <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>
Cc: Jonas =?utf-8?Q?K=C3=B6ppeler?= <j.koeppeler@tu-berlin.de>,
 cake@lists.bufferbloat.net,
 netdev@vger.kernel.org
In-Reply-To: <willemdebruijn.kernel.1b99d2d13dcba@gmail.com>
References: <20251130-mq-cake-sub-qdisc-v3-0-5f66c548ecdc@redhat.com>
 <20251130-mq-cake-sub-qdisc-v3-1-5f66c548ecdc@redhat.com>
 <willemdebruijn.kernel.1b99d2d13dcba@gmail.com>
Date: Tue, 02 Dec 2025 11:41:20 +0100
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87345t9ne7.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: BAFWURPQJKH7I3Z6L4DAKQDXOO5CXR2T
X-Message-ID-Hash: BAFWURPQJKH7I3Z6L4DAKQDXOO5CXR2T
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v3 1/5] net/sched: Export mq functions for reuse
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87345t9ne7.fsf@toke.dk/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2lsbGVtIGRlIEJydWlqbiA8d2lsbGVtZGVicnVpam4ua2VybmVsQGdtYWlsLmNvbT4gd3JpdGVz
Og0KDQo+IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiB3cm90ZToNCj4+IFRvIGVuYWJsZSB0aGUg
Y2FrZV9tcSBxZGlzYyB0byByZXVzZSBjb2RlIGZyb20gdGhlIG1xIHFkaXNjLCBleHBvcnQgYQ0K
Pj4gYnVuY2ggb2YgZnVuY3Rpb25zIGZyb20gc2NoX21xLiBTcGxpdCBjb21tb24gZnVuY3Rpb25h
bGl0eSBvdXQgZnJvbSBzb21lDQo+PiBmdW5jdGlvbnMgc28gaXQgY2FuIGJlIGNvbXBvc2VkIHdp
dGggb3RoZXIgY29kZSwgYW5kIGV4cG9ydCBvdGhlcg0KPj4gZnVuY3Rpb25zIHdob2xlc2FsZS4N
Cj4+IA0KPj4gTm8gZnVuY3Rpb25hbCBjaGFuZ2UgaW50ZW5kZWQuDQo+PiANCj4+IFNpZ25lZC1v
ZmYtYnk6IFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8dG9rZUByZWRoYXQuY29tPg0KPj4gLS0t
DQo+PiAgaW5jbHVkZS9uZXQvc2NoX2dlbmVyaWMuaCB8IDE5ICsrKysrKysrKysrKysNCj4+ICBu
ZXQvc2NoZWQvc2NoX21xLmMgICAgICAgIHwgNjkgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKystLS0tLS0tLS0tLS0tLS0NCj4+ICAyIGZpbGVzIGNoYW5nZWQsIDY3IGluc2VydGlvbnMo
KyksIDIxIGRlbGV0aW9ucygtKQ0KPj4gDQo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9uZXQvc2No
X2dlbmVyaWMuaCBiL2luY2x1ZGUvbmV0L3NjaF9nZW5lcmljLmgNCj4+IGluZGV4IGMzYTcyNjhi
NTY3ZS4uZjIyODE5MTRkOTYyIDEwMDY0NA0KPj4gLS0tIGEvaW5jbHVkZS9uZXQvc2NoX2dlbmVy
aWMuaA0KPj4gKysrIGIvaW5jbHVkZS9uZXQvc2NoX2dlbmVyaWMuaA0KPg0KPiBXZSBwcm9iYWJs
eSB3YW50IHRvIGF2b2lkIHJhbmRvbSB1c2Vycy4gVGhpcyBtYXkgYmUgYmV0dGVyIHN1aXRlZCB0
byBhDQo+IGxvY2FsIGhlYWRlciwgc2ltaWxhciB0byBuZXQvY29yZS9kZXZtZW0uaC4NCg0KSG1t
LCByaWdodDsgSSBqdXN0IHB1dCB0aGVtIGluIHNjaF9nZW5lcmljLmggYmVjYXVzZSB0aGF0J3Mg
d2hlcmUgdGhlDQpleGlzdGluZyBtcV9jaGFuZ2VfcmVhbF9udW1fdHgoKSB3YXMuIEkgY2FuIG1v
dmUgdGhlbSwgdGhvdWdoLCBkb24ndA0KZmVlbCBzdHJvbmdseSBhYm91dCBpdCBlaXRoZXIgd2F5
IDopDQoNCj4gSSBkb24ndCBtZWFuIHRvIGRlcmFpbCB0aGlzIGZlYXR1cmUgaWYgdGhlc2UgYXJl
IHRoZSBvbmx5IGNvbmNlcm5zLg0KPiBUaGlzIGNhbiBiZSByZXZpc2VkIGxhdGVyIGluIC1yY1gg
dG9vLg0KDQpTdXJlLCBsZXQncyBzZWUgaWYgb3VyIGJlbmV2b2xlbnQgbWFpbnRhaW5lcnMgZGVj
aWRlIHRvIG1lcmdlIHRoaXMNCmJlZm9yZSBvciBhZnRlciB0aGUgbWVyZ2Ugd2luZG93OyBJJ2xs
IGZvbGxvdyB1cCBhcyBhcHByb3ByaWF0ZS4NCg0KPj4gQEAgLTE0MTksNyArMTQxOSwyNiBAQCB2
b2lkIG1pbmlfcWRpc2NfcGFpcl9pbml0KHN0cnVjdCBtaW5pX1FkaXNjX3BhaXIgKm1pbmlxcCwg
c3RydWN0IFFkaXNjICpxZGlzYywNCj4+ICB2b2lkIG1pbmlfcWRpc2NfcGFpcl9ibG9ja19pbml0
KHN0cnVjdCBtaW5pX1FkaXNjX3BhaXIgKm1pbmlxcCwNCj4+ICAJCQkJc3RydWN0IHRjZl9ibG9j
ayAqYmxvY2spOw0KPj4gIA0KPj4gK3N0cnVjdCBtcV9zY2hlZCB7DQo+PiArCXN0cnVjdCBRZGlz
YwkJKipxZGlzY3M7DQo+PiArfTsNCj4+ICsNCj4+ICtpbnQgbXFfaW5pdF9jb21tb24oc3RydWN0
IFFkaXNjICpzY2gsIHN0cnVjdCBubGF0dHIgKm9wdCwNCj4+ICsJCSAgIHN0cnVjdCBuZXRsaW5r
X2V4dF9hY2sgKmV4dGFjaywNCj4+ICsJCSAgIGNvbnN0IHN0cnVjdCBRZGlzY19vcHMgKnFkaXNj
X29wcyk7DQo+PiArdm9pZCBtcV9kZXN0cm95X2NvbW1vbihzdHJ1Y3QgUWRpc2MgKnNjaCk7DQo+
PiArdm9pZCBtcV9hdHRhY2goc3RydWN0IFFkaXNjICpzY2gpOw0KPj4gIHZvaWQgbXFfY2hhbmdl
X3JlYWxfbnVtX3R4KHN0cnVjdCBRZGlzYyAqc2NoLCB1bnNpZ25lZCBpbnQgbmV3X3JlYWxfdHgp
Ow0KPj4gK3ZvaWQgbXFfZHVtcF9jb21tb24oc3RydWN0IFFkaXNjICpzY2gsIHN0cnVjdCBza19i
dWZmICpza2IpOw0KPj4gK3N0cnVjdCBuZXRkZXZfcXVldWUgKm1xX3NlbGVjdF9xdWV1ZShzdHJ1
Y3QgUWRpc2MgKnNjaCwNCj4+ICsJCQkJICAgICBzdHJ1Y3QgdGNtc2cgKnRjbSk7DQo+PiArc3Ry
dWN0IFFkaXNjICptcV9sZWFmKHN0cnVjdCBRZGlzYyAqc2NoLCB1bnNpZ25lZCBsb25nIGNsKTsN
Cj4+ICt1bnNpZ25lZCBsb25nIG1xX2ZpbmQoc3RydWN0IFFkaXNjICpzY2gsIHUzMiBjbGFzc2lk
KTsNCj4+ICtpbnQgbXFfZHVtcF9jbGFzcyhzdHJ1Y3QgUWRpc2MgKnNjaCwgdW5zaWduZWQgbG9u
ZyBjbCwNCj4+ICsJCSAgc3RydWN0IHNrX2J1ZmYgKnNrYiwgc3RydWN0IHRjbXNnICp0Y20pOw0K
Pj4gK2ludCBtcV9kdW1wX2NsYXNzX3N0YXRzKHN0cnVjdCBRZGlzYyAqc2NoLCB1bnNpZ25lZCBs
b25nIGNsLA0KPj4gKwkJCXN0cnVjdCBnbmV0X2R1bXAgKmQpOw0KPj4gK3ZvaWQgbXFfd2Fsayhz
dHJ1Y3QgUWRpc2MgKnNjaCwgc3RydWN0IHFkaXNjX3dhbGtlciAqYXJnKTsNCj4+ICANCj4+ICBp
bnQgc2NoX2ZyYWdfeG1pdF9ob29rKHN0cnVjdCBza19idWZmICpza2IsIGludCAoKnhtaXQpKHN0
cnVjdCBza19idWZmICpza2IpKTsNCj4+ICANCj4+IGRpZmYgLS1naXQgYS9uZXQvc2NoZWQvc2No
X21xLmMgYi9uZXQvc2NoZWQvc2NoX21xLmMNCj4+IGluZGV4IGM4NjAxMTlhOGYwOS4uMGJjYWJk
Y2QxZjQ0IDEwMDY0NA0KPj4gLS0tIGEvbmV0L3NjaGVkL3NjaF9tcS5jDQo+PiArKysgYi9uZXQv
c2NoZWQvc2NoX21xLmMNCj4+IEBAIC0xNywxMCArMTcsNiBAQA0KPj4gICNpbmNsdWRlIDxuZXQv
cGt0X3NjaGVkLmg+DQo+PiAgI2luY2x1ZGUgPG5ldC9zY2hfZ2VuZXJpYy5oPg0KPj4gIA0KPj4g
LXN0cnVjdCBtcV9zY2hlZCB7DQo+PiAtCXN0cnVjdCBRZGlzYwkJKipxZGlzY3M7DQo+PiAtfTsN
Cj4+IC0NCj4+ICBzdGF0aWMgaW50IG1xX29mZmxvYWQoc3RydWN0IFFkaXNjICpzY2gsIGVudW0g
dGNfbXFfY29tbWFuZCBjbWQpDQo+PiAgew0KPj4gIAlzdHJ1Y3QgbmV0X2RldmljZSAqZGV2ID0g
cWRpc2NfZGV2KHNjaCk7DQo+PiBAQCAtNDksMjMgKzQ1LDI5IEBAIHN0YXRpYyBpbnQgbXFfb2Zm
bG9hZF9zdGF0cyhzdHJ1Y3QgUWRpc2MgKnNjaCkNCj4+ICAJcmV0dXJuIHFkaXNjX29mZmxvYWRf
ZHVtcF9oZWxwZXIoc2NoLCBUQ19TRVRVUF9RRElTQ19NUSwgJm9wdCk7DQo+PiAgfQ0KPj4gIA0K
Pj4gLXN0YXRpYyB2b2lkIG1xX2Rlc3Ryb3koc3RydWN0IFFkaXNjICpzY2gpDQo+PiArdm9pZCBt
cV9kZXN0cm95X2NvbW1vbihzdHJ1Y3QgUWRpc2MgKnNjaCkNCj4+ICB7DQo+PiAgCXN0cnVjdCBu
ZXRfZGV2aWNlICpkZXYgPSBxZGlzY19kZXYoc2NoKTsNCj4+ICAJc3RydWN0IG1xX3NjaGVkICpw
cml2ID0gcWRpc2NfcHJpdihzY2gpOw0KPj4gIAl1bnNpZ25lZCBpbnQgbnR4Ow0KPj4gIA0KPj4g
LQltcV9vZmZsb2FkKHNjaCwgVENfTVFfREVTVFJPWSk7DQo+PiAtDQo+PiAgCWlmICghcHJpdi0+
cWRpc2NzKQ0KPj4gIAkJcmV0dXJuOw0KPj4gIAlmb3IgKG50eCA9IDA7IG50eCA8IGRldi0+bnVt
X3R4X3F1ZXVlcyAmJiBwcml2LT5xZGlzY3NbbnR4XTsgbnR4KyspDQo+PiAgCQlxZGlzY19wdXQo
cHJpdi0+cWRpc2NzW250eF0pOw0KPj4gIAlrZnJlZShwcml2LT5xZGlzY3MpOw0KPj4gIH0NCj4+
ICtFWFBPUlRfU1lNQk9MKG1xX2Rlc3Ryb3lfY29tbW9uKTsNCj4NCj4gT24gYSBzaW1pbGFyIG5v
dGUsIHRoaXMgd291bGQgYmUgYSBnb29kIHVzZSBvZiBFWFBPUlRfU1lNQk9MX05TX0dQTC4NCj4N
Cj4gTWF5YmUgbm90IGV2ZW4gTkVUREVWX0lOVEVSTkFMIGJ1dCBhIGRlZGljYXRlZCBORVRfU0NI
RURfTVEuDQoNCkh1aCwgZGlkbid0IGtub3cgYWJvdXQgbmFtZXNwYWNlZCBleHBvcnRzLCBuZWF0
LiBDYW4gZG8gdGhhdCB0b28gOikNCg0KLVRva2UNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBs
aXN0cy5idWZmZXJibG9hdC5uZXQK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DBFBB1D92
	for <lists+cake@lfdr.de>; Wed, 01 Oct 2025 23:31:29 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 5C60A72815E;
	Wed, 01 Oct 2025 23:31:28 +0200 (CEST)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=Yx/Btj1l
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759354288;
 b=tl8jIY/Ex0v0GYxO+YiFyQhyjtRnlFh1eAYy4f7dLX1iQD3kWfjL9WgxzShYtmsiKwBBC
 SHXQuiXELWLblpWoDwHbEWunX7bDPV/eXQbquWAO3ctGa0P5/BugvmqXAdt+IPCIq3cemvC
 BeqCyb0gv3YpX3ObruAsodBpmaI4KAA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759354288; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=Ma2MfZCpMPkaacc84EhzyAlB/++c9NW7y2IRXU7EW1w=;
 b=B993TtZGCgcWZqs7ay/lTXb8AJ7Er+icEYjBlbssv4RglptuISVHOz/kBS0JljQDFpfH1
 0pk8SujI5vVeOXQ+uLvHcbBry1lBUQv4JnCfH9d25zscV8wilbSj9FZG0MW3xCJAnynp7oe
 rKHKJP6otdggAUr44/Ev7RtKbRfl4Go=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
	by mail.toke.dk (Postfix) with ESMTPS id D3E02728145
	for <cake@lists.bufferbloat.net>; Wed, 01 Oct 2025 23:31:26 +0200 (CEST)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-b403bb7843eso79039666b.3
        for <cake@lists.bufferbloat.net>;
 Wed, 01 Oct 2025 14:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759354286; x=1759959086;
 darn=lists.bufferbloat.net;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=V70Mkvaj3qbJjf94IrkLfobswrcH7e5DkjNXM3L8wNo=;
        b=Yx/Btj1lIjJB2lWl5hHeutZ2oPB39PeJ051aWTFNXA/MR/YhgUc/2h3NeV5zb59vh8
         ODBkpvciOv3fZzXuY5IGlYKf5+TW8YH/W4JkZ9b0Z77kxwCVK35/Zb9IOqEEjJHhJFKK
         Doc5gmpjk4fAASJhGwrYRro1AzDFXblGyhz+2ZqZivSdzmxVbDFl1OwT7jPWEyedzxGa
         ZeUAm/h8TA5fkfneIO56ev3aOY4MAVO9pfyu/OYw6In/sCGFQi+NerQHq5tgp//n6F0w
         NpIw+fGx4/tYKmq0D2r1UFRAUjFTWDmmqC4pDPVVydIVv9hIcj1EF9tx0O/If+SSQHb4
         EiLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759354286; x=1759959086;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V70Mkvaj3qbJjf94IrkLfobswrcH7e5DkjNXM3L8wNo=;
        b=Rp7NgnKohzTVfOTE7cKgbR3a16wAKmdFgRX6cFzLtdMGP0bK/qzCcudNv3UEm6gDb8
         T+W18k2Rwa50VRO8Vlsq3y3rSiK1rhVFfx5w6DNH1O64I59hxoJAuXZczrKI/EZo0EiI
         PTggNBuovV4MLpii0tsroRMaHyAAWxTTctJGstgTF2Z4nIdUVbEN9VH62LaPigF1nT3o
         wkQNSp/pFhMuIu3EJ9rKhQYhPLLfH5F/5U6g8H8eWmzuXo5fQw+Lni1hto+lljUk0KGu
         P3P2xerbI4eFQSjutxK+CRdBDJCWpasLREiUm0blUEtZ4kyHslO/3a+lrTb/6UGoQtzQ
         pmHg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVaSqwAT6SDi31kSRFM4v5PGZHAihQp51b8oSXKsqHvDxm7xJIMIDnVUMsHwkRK4VYy8J6C@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YyTqKgTej3QpHocHn9EVkKUFe9iyI2NXvyPmwrUENk5jEZXCw7Y
	b2Xpc1MDAY7b9UdwrOHb6n/rjPRD2cDDep7sPKwthsM+0c95e6pYi8dJM1FrC7c1VYh9rKuLbBQ
	ZCKpflTeLWtk9IIqccuExkpQEp1jaWqw=
X-Gm-Gg: ASbGncuL26F0YvLmLo4maxECvZKEjzVrFEQwyi3pxxo644sm4I8WY5jB2qfzWdHdGsU
	Te6lguyEs7SBcULGhQFtTMyUSWcwibC8XuTp8jfS+txt51LqQH4IZKMUz+IpCu3tL+uKOFP7s6Q
	eCkCmRcFg6i8Q5f7xxUdCptZzWodsb0lt7mSMGxxABZi01vAH3gPSJuCCvaXX/fYtJpcgLbDrBW
	kUcTitmvjRFy2Z6RlDUlz5oofCEcXo=
X-Google-Smtp-Source: 
 AGHT+IHwctJIjKu0hf/IDy/VZIv1mR1f2UoPPo2FvKVCM72Ws4lN++Awp+/rD3sQDF5UDc7ODYc5U840ai7MrOWMWE8=
X-Received: by 2002:a17:907:7f8b:b0:b04:aadd:b8d7 with SMTP id
 a640c23a62f3a-b46e47a92d8mr644880466b.13.1759354285711; Wed, 01 Oct 2025
 14:31:25 -0700 (PDT)
MIME-Version: 1.0
References: <9390D9DA-3C77-429F-A41D-E0FECD52FF06@connectivitycap.com>
 <CAJUtOOjt+DajPifDNLNBOT_xwNWL_Wec5Gf_O91HMDdwpxtmeg@mail.gmail.com>
 <CAA_JP8XOeSOqbZJPH=1_oWMD055vOUxHipxJMs8sbsHLu5MHCA@mail.gmail.com>
In-Reply-To: 
 <CAA_JP8XOeSOqbZJPH=1_oWMD055vOUxHipxJMs8sbsHLu5MHCA@mail.gmail.com>
From: Frantisek Borsik <frantisek.borsik@gmail.com>
Date: Wed, 1 Oct 2025 23:32:57 +0200
X-Gm-Features: AS18NWDuP2m6sAqvF9DhoA95gdsBE4nE6hjTISiq1BPb2ruvF7fkf8m1j7noXzE
Message-ID: 
 <CAJUtOOhiu8CVLARsiMKUkN4s87_VUr17su1Nr_4aManrwkCQAg@mail.gmail.com>
To: dan <dandenson@gmail.com>
Cc: James Forster <jim@connectivitycap.com>,
 Jason Livingood <jason_livingood@comcast.com>,
	Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>,
	codel@lists.bufferbloat.net,
	Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>
Message-ID-Hash: IBNKYXH3OJG5VNGWJBII6GBQ65XRBWOK
X-Message-ID-Hash: IBNKYXH3OJG5VNGWJBII6GBQ65XRBWOK
X-MailFrom: frantisek.borsik@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Content-Filtered-By: Mailman/MimeDel 3.3.10
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [LibreQoS] Re: [Starlink] Keynote: QoE/QoS - Bandwidth Is A Lie! at
 WISPAPALOOZA 2025 (October 16)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/CAJUtOOhiu8CVLARsiMKUkN4s87_VUr17su1Nr_4aManrwkCQAg@mail.gmail.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGV0J3Mgc2F5IHRoYXQgSSBsb3ZlIGl0LCBjaGFubmVsaW5nIG15IGlubmVyIERhdmUgVGFodC4g
QnV0IHRoZXJlIHdlcmUgYQ0KY291cGxlIG9mIHZvaWNlcyBhc2tpbmcgaWYgSSB3b24ndCBjb25z
aWRlciB0byBjaGFuZ2UgaXQgYSBiaXQsIHRvIGJlICJsZXNzDQpob3N0aWxlIiB0byBvdXIgImJh
bmR3aWR0aCBpcyBraW5nISIgZnJpZW5kcy4uLmFuZCBJIHdhcyB0cnlpbmcsIGJ1dCB0aGlzDQp3
YXMgcmVhbGx5IHN0aWNreSBhbmQgSSdtIGhhcHB5IHRoYXQgaXQgc3RheWVkIHRoaXMgd2F5Lg0K
DQoNCkFsbCB0aGUgYmVzdCwNCg0KRnJhbmsNCg0KRnJhbnRpc2VrIChGcmFuaykgQm9yc2lrDQoN
Cg0KKkluIGxvdmluZyBtZW1vcnkgb2YgRGF2ZSBUw6RodDogKjE5NjUtMjAyNQ0KDQpodHRwczov
L2xpYnJlcW9zLmlvLzIwMjUvMDQvMDEvaW4tbG92aW5nLW1lbW9yeS1vZi1kYXZlLw0KDQoNCmh0
dHBzOi8vd3d3LmxpbmtlZGluLmNvbS9pbi9mcmFudGlzZWtib3JzaWsNCg0KU2lnbmFsLCBUZWxl
Z3JhbSwgV2hhdHNBcHA6ICs0MjE5MTk0MTY3MTQNCg0KaU1lc3NhZ2UsIG1vYmlsZTogKzQyMDc3
NTIzMDg4NQ0KDQpTa3lwZTogY2FzaW9hNTMwMmNhDQoNCmZyYW50aXNlay5ib3JzaWtAZ21haWwu
Y29tDQoNCg0KT24gV2VkLCBPY3QgMSwgMjAyNSBhdCA5OjI14oCvUE0gZGFuIDxkYW5kZW5zb25A
Z21haWwuY29tPiB3cm90ZToNCg0KPiBJIGFjdHVhbGx5IHJlYWxseSBsaWtlIHRoZSB0aXRsZSA7
KQ0KPg0KPiBJdCdzIHRoYXQgbW9zdCBvZiB0aGUgdGltZSBwZW9wbGUgYXJlIHRvbGQgdGhleSBu
ZWVkIG1vcmUgYmFuZHdpZHRoIHRvDQo+IHNvbHZlIGEgcHJvYmxlbSwgd2hlbiB0aGV5IHJlYWxs
eSBuZWVkIGxvd2VyIGxhdGVuY3kgYW5kIGppdHRlci4gIFNvIHRoZQ0KPiB2YXN0IG1ham9yaXR5
IG9mIHRoZSB0aW1lICdtb3JlIGJhbmR3aWR0aCcgYXMgYSBzb2x1dGlvbiByZWFsbHkgaXMgYSBs
aWUuDQo+DQo+IE9uIFR1ZSwgU2VwIDMwLCAyMDI1IGF0IDI6NDfigK9QTSBGcmFudGlzZWsgQm9y
c2lrIHZpYSBMaWJyZVFvUyA8DQo+IGxpYnJlcW9zQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4gd3Jv
dGU6DQo+DQo+PiBUaGFua3MsIEppbS4gV2VsbCwgdHJ1ZSB0aGF0IC0gYnV0IEkgd2FudGVkIHRv
IGRvIGl0IGVpdGhlciB3YXksIGJlY2F1c2UNCj4+IG9mDQo+PiBvdXIgZGVhciBEYXZlIGFuZCAt
IGFzIGEgY29udmVyc2F0aW9uIHN0YXJ0ZXIuDQo+PiBBcyBASmFzb24gTGl2aW5nb29kIDxqYXNv
bl9saXZpbmdvb2RAY29tY2FzdC5jb20+IHNhaWQgLSAiQmFuZHdpZHRoIGlzDQo+PiBkZWFkLiBM
b25nIGxpdmUgbGF0ZW5jeS4iDQo+PiBodHRwczovL3B1bHNlLmludGVybmV0c29jaWV0eS5vcmcv
YmxvZy9iYW5kd2lkdGgtaXMtZGVhZC1sb25nLWxpdmUtbGF0ZW5jeQ0KPj4NCj4+IEkgd2lsbCBk
byBteSBiZXN0IHRvIGdldCB0aGUgYXVkaW8vdmlkZW8gcmlnaHQgYW5kIHRvIHNoYXJlIGl0IHdp
dGggeW91DQo+PiBhbGwuDQo+Pg0KPj4gUFM6IFNlbmRpbmcgeW91IHNlcGFyYXRlIGVtYWlsLg0K
Pj4NCj4+IEFsbCB0aGUgYmVzdCwNCj4+DQo+PiBGcmFuaw0KPj4NCj4+IEZyYW50aXNlayAoRnJh
bmspIEJvcnNpaw0KPj4NCj4+DQo+PiAqSW4gbG92aW5nIG1lbW9yeSBvZiBEYXZlIFTDpGh0OiAq
MTk2NS0yMDI1DQo+Pg0KPj4gaHR0cHM6Ly9saWJyZXFvcy5pby8yMDI1LzA0LzAxL2luLWxvdmlu
Zy1tZW1vcnktb2YtZGF2ZS8NCj4+DQo+Pg0KPj4gaHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2lu
L2ZyYW50aXNla2JvcnNpaw0KPj4NCj4+IFNpZ25hbCwgVGVsZWdyYW0sIFdoYXRzQXBwOiArNDIx
OTE5NDE2NzE0DQo+Pg0KPj4gaU1lc3NhZ2UsIG1vYmlsZTogKzQyMDc3NTIzMDg4NQ0KPj4NCj4+
IFNreXBlOiBjYXNpb2E1MzAyY2ENCj4+DQo+PiBmcmFudGlzZWsuYm9yc2lrQGdtYWlsLmNvbQ0K
Pj4NCj4+DQo+PiBPbiBUdWUsIFNlcCAzMCwgMjAyNSBhdCAxMDoyNeKAr1BNIEphbWVzIEZvcnN0
ZXIgPGppbUBjb25uZWN0aXZpdHljYXAuY29tPg0KPj4gd3JvdGU6DQo+Pg0KPj4gPiBXb3csIHRo
YXTigJlzIGZhbnRhc3RpYywgRnJhbnRpc2VrISAgR3JlYXQgd29yayBtYWtpbmcgdGhpcyBoYXBw
ZW4uDQo+PiA+DQo+PiA+IFRoZXNlIHNvcnQgb2YgdGl0bGVzIGFyZW7igJl0IG15IGZhdm9yaXRl
LiBJIHRoaW5rIEkgdW5kZXJzdGFuZCB0aGUNCj4+ID4gc2VudGltZW50IGJ1dCBmaW5kIHRoZSBp
c3N1ZXMgbW9yZSBudWFuY2VkIHRoYW4gdGhhdC4gOi0pDQo+PiA+DQo+PiA+IElmIHlvdSBjYW4g
Z2V0IGNsZWFyIGF1ZGlvLCBub3QgbXVjaCBxdWFsaXR5IGlzIG5lZWRlZCBmb3IgcGFuZWxzIGFu
ZA0KPj4gPiB0YWxraW5nIGJlYWRzLiAgIEJlc3Qgd291bGQgYmUgYSBmZWVkIHJpZ2h0IGludG8g
YW4gaVBob25lL2FuZHJvaWQuDQo+PiA+DQo+PiA+IEppbQ0KPj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4+IExpYnJlUW9TIG1haWxpbmcgbGlzdCAt
LSBsaWJyZXFvc0BsaXN0cy5idWZmZXJibG9hdC5uZXQNCj4+IFRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGlicmVxb3MtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0DQo+Pg0KPg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QgLS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUgc2Vu
ZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=

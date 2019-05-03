Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id E04DC13041
	for <lists+cake@lfdr.de>; Fri,  3 May 2019 16:32:09 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 838693CB39;
	Fri,  3 May 2019 10:32:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1556893928;
	bh=SgoOPkizfv9Ap/Azk7LfPvj/JB/8xXvVHHZioh1KF9U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ik5aem9AwsOFbqLvlSeWyU/v/E1wC1Fhkp3D5WKhe02IHmBz32G6WG0M4lS2TUzX/
	 CdzFP2L6zWsuUT54yt/82PGOV5+UFZ23TJwBkn8/Sa7MGFQdULj4Ik44NcVRGWYxKB
	 XrqqV1EWclLTWrL+2auriPSr12tYWgxqnjq41COCoKxtqsPQLZLWslA8OfeNa8Ves5
	 RReLJxNaes9H7leAhIbs9URZ+lmK1GDMoOXUtT5apjLY8vybJD6raXmP3yWxO5OJ6t
	 Dwr57yfxi6JSW7jp6+j5TtFI5kaczp+uhJLK0MADBANYG+SKdVdl9Dk2gj1+SD8eLp
	 vEHxFZnWFIyBA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr130042.outbound.protection.outlook.com [40.107.13.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C70C73CB35
 for <cake@lists.bufferbloat.net>; Fri,  3 May 2019 10:32:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=66LUcJwjU7q1mQk33axAp1Sgu6oYdM9SLvKrTBojZ1Q=;
 b=ICwYDfsLmrrQS1h7475rsjneP9kxZ+7pYzZxOvK7RUvXtuVaWwkKPZYbpAJ0GUagutgPpEe8Vm7biH+wnASm8+Y+sOzyE1/yHxn4P2+5c1v+goqm9QOtLq/tgwhuM/DUO3S28MG6TR6UJjFA8A4SenaVhJYXymvSziy/UEaUuoQ=
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com (10.171.105.143) by
 VI1PR0302MB3488.eurprd03.prod.outlook.com (52.134.14.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Fri, 3 May 2019 14:32:04 +0000
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::b584:8ced:9d52:d88e]) by VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::b584:8ced:9d52:d88e%6]) with mapi id 15.20.1835.018; Fri, 3 May 2019
 14:32:04 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: =?utf-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Thread-Topic: [Cake] Possible conntrack lookup improvements
Thread-Index: AQHVAbfnPteC/tjlzk2+6Qn9IvtEYaZZc96AgAACpYA=
Date: Fri, 3 May 2019 14:32:04 +0000
Message-ID: <96D6EC2B-C57B-450D-AC65-9D9526840D83@darbyshire-bryant.me.uk>
References: <493B2B95-93C5-4CEB-906E-CFF0BF3187E9@darbyshire-bryant.me.uk>
 <87pnozhb2s.fsf@toke.dk>
In-Reply-To: <87pnozhb2s.fsf@toke.dk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [193.240.142.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bf86713b-ca3f-4c7f-399b-08d6cfd41d15
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR0302MB3488; 
x-ms-traffictypediagnostic: VI1PR0302MB3488:
x-microsoft-antispam-prvs: <VI1PR0302MB34880B70D2A22D52788E2504A5350@VI1PR0302MB3488.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39830400003)(396003)(346002)(136003)(376002)(366004)(53754006)(189003)(199004)(36756003)(305945005)(76116006)(7736002)(6436002)(316002)(73956011)(25786009)(6916009)(91956017)(14454004)(81166006)(66574012)(76176011)(6512007)(66946007)(66476007)(66556008)(64756008)(66446008)(2616005)(5024004)(14444005)(256004)(6506007)(53936002)(486006)(5660300002)(53546011)(4326008)(476003)(6486002)(8676002)(11346002)(74482002)(6116002)(3846002)(2906002)(8936002)(6246003)(82746002)(68736007)(86362001)(33656002)(186003)(71190400001)(99286004)(508600001)(26005)(81156014)(446003)(66066001)(83716004)(229853002)(102836004)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB3488;
 H:VI1PR0302MB2750.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Azsm35zFGPU2spY7/mR9aV6AsIZ+f5xd//s+Yu5AnYfCQ/lGxUSh3+KeRT3wH6Xh5FN7u4nHui0CApDuHVzYeDHsUn6E/B3o/X/d2fbA+kWl/iMXxrUTAGbIh+s/gJd08+liEgBhEbnZYmrQeci5Pvzvs2+shktsoNL5ftRh9HinEs1St145vUw1pBfUklM1IXo1cFRSyYCHv58PVQjkipyNhWvylHU55QvdGiif63AVZjTzqSuFR0l8QS5ZbzE+EzF5QoZ0wXc1WX8pTX7+rAzgRNz2+PoQM9Xr9OkK+UufabZYmHXoNRfgiBYojKt1xXSBbSPYRSRANq/X1bispFE1AQP4T28k7674Z3+Esqy/g9MFgF90cDE+eFfkOLu95iia6PYhUUc+QrXgtWKV/RN8v/4P+3wH6RmQthBqN3o=
Content-ID: <409680B21755DE499F962097FBCF634E@eurprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: bf86713b-ca3f-4c7f-399b-08d6cfd41d15
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 14:32:04.5849 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB3488
Subject: Re: [Cake] Possible conntrack lookup improvements
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

DQoNCj4gT24gMyBNYXkgMjAxOSwgYXQgMTU6MjIsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8
dG9rZUByZWRoYXQuY29tPiB3cm90ZToNCj4gDQo+IEtldmluIERhcmJ5c2hpcmUtQnJ5YW50IDxr
ZXZpbkBkYXJieXNoaXJlLWJyeWFudC5tZS51az4gd3JpdGVzOg0KPiANCj4+IEhpIEV2ZXJ5b25l
LA0KPj4gDQo+PiBJ4oCZdmUgYmVlbiB3b3JraW5nIG9uIGFjdF9jdGluZm8gdG93YXJkIGdldHRp
bmcgdGhhdCB1cHN0cmVhbSBhbmQgaXQgaXMNCj4+IGdldHRpbmcgY2xvc2VyLiBTaW5jZSB0aGF0
IG1vZHVsZSBhbG9uZyB3aXRoIGFjdF9jb25ubWFyayBkb2VzIGl0cyBvd24NCj4+IGNvbm50cmFj
ayBsb29rdXBzIEnigJl2ZSBiZWVuIGxvb2tpbmcgYXQgd2hhdCB0aGV5IGRvIGFuZCB3aGF0IHdl
IGRvIGluDQo+PiBjYWtlLg0KPj4gDQo+PiBUd28gcGF0Y2hlcyBhdHRhY2hlZCAtIG9uZSBpcyBh
IHNpbXBsZSB2YXJpYWJsZSBlbGltaW5hdGlvbiB3aXRoIG5vDQo+PiBmdW5jdGlvbmFsIGNoYW5n
ZS4gVGhlIHNlY29uZCBjaGFuZ2VzL3NpbXBsaWZpZXMgdGhlIGNvbm50cmFjayB0dXBsZQ0KPj4g
bG9va3VwICYgdXNhZ2UuIEnigJl2ZSBoYWQgYSBwbGF5IGFuZCBJIGRvbuKAmXQgdGhpbmsgSeKA
mXZlIGJyb2tlbiBhbnkgb2YNCj4+IHRoZSBob3N0IGZhaXJuZXNzIEJVVCBpdCBjb3VsZCBkbyB3
aXRoIHNvbWUgbW9yZSB0ZXN0aW5nLCB0aGF04oCZcyB3aGVyZQ0KPj4geW91IGNvbWUgaW7igKYg
cHJvYmFibHkgUGV0ZSAmIEdlb3JnZSA6LSkNCj4gDQo+IFNlZW1zIHJlYXNvbmFibGUuIEJ1dCBw
bGVhc2UgZm9sZCB0aGVzZSB0d28gcGF0Y2hlcyBpbnRvIG9uZTsgY2hhbmdpbmcNCj4gZXZlcnl0
aGluZywgdGhlbiBpbW1lZGlhdGVseSBjaGFuZ2luZyBpdCBhZ2FpbiBkb2VzIG5vdCBoZWxwDQo+
IHJlYWRhYmlsaXR5Li4uIEFuZCB0aGUgZXhwbGFuYXRpb24gbWFrZXMgYSBsb3QgbW9yZSBzZW5z
ZSBpZiB5b3UganVzdA0KPiBjaGFuZ2UgdGhlIHdob2xlIHRoaW5nIGluIG9uZSBwYXRjaCA6KQ0K
PiANCj4gLVRva2UNCg0KWWVhaCwgd2hlbiBJIGRvIHRoZSBQUiBhZnRlciB0ZXN0aW5nIGNvbmZp
cm1zIEkgaGF2ZW7igJl0IHRvdGFsbHkgc2NyZXdlZCB1cCBob3N0IGZhaXJuZXNzIGluIHRoZSBw
cm9jZXNzIEnigJlsbCBvZiBjb3Vyc2Ugc3F1YXNoIHRoZW0gdG9nZXRoZXIgOi0pIFRoZSAxc3Qg
cGF0Y2ggaXMgYSBubyBicmFpbmVyLCB0aGUgc2Vjb25kIHNob3VsZCBiZSBhIG5vIGJyYWluZXIg
YnV0IGl0IG5lZWRzIG1vcmUgdGVzdGluZyB0aGFuIEkgaGF2ZSBnaXZlbiBpdC4NCg0KSSB3ZW50
IGRvd24gdGhpcyBwYXRoIGFzIGEgcmVzdWx0IG9mIG15IGFjdF9jdGluZm8gd29yayB3aGljaCBp
biB0aGUgbGF0ZXN0IHZlcnNpb24gaXMgYWJsZSB0byByZXN0b3JlIERTQ1AgJiBza2ItPm1hcmtz
IGZyb20gY29ubnRyYWNrLiAgSSBoYWQgYW4gaWRlYSB0byByZXN0b3JlIHRoZSBjdCBpbmZvIGFz
IHdlbGwsIHNvIENBS0UgZGlkbuKAmXQgaGF2ZSB0byBkbyBpdHMg4oCYbG9vayBoYXJkZXLigJkg
bG9va3VwLiAgVGhlbiBJIG5vdGljZWQgaG93IGNha2Ugc29ydCBvZiBkb2VzIHRoZSBoYXJkZXIg
bG9va3VwIGJhY2t3YXJkcy4NCg0KDQpDaGVlcnMsDQoNCktldmluIEQtQg0KDQpncGc6IDAxMkMg
QUNCMiAyOEM2IEM1M0UgOTc3NSAgOTEyMyBCM0EyIDM4OUIgOURFMiAzMzRBDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0
CkNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0
L2xpc3RpbmZvL2Nha2UK

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 81039133C3
	for <lists+cake@lfdr.de>; Fri,  3 May 2019 20:57:12 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 346BE3CB39;
	Fri,  3 May 2019 14:57:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1556909831;
	bh=deFqvR+dYa5AqbxnFzwZeqev0V2Nr7212qWZ+gijZ4g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XMrqpDOwYkcw6PyK5vY9HI5wLuXvGflzv7H4dgZ80Rsx9k5kxWiQg2EoAq8mOr8dx
	 fwyqXc/VE7lxz0ls+CMsCyQxzzSBcLETqyag9C/QzMK//o1iApPuoaq5fGKmFz/o9h
	 RhYGhuOk+DdQxXcwQsx/xolp/4xXGJ7nst8btPVcZE2reoSoXZPqJllMYzzBDrH9qn
	 x4BPJHuypE7RWq+wkFjIdgg+25RBu1Yj1WMU1xEJHhivOa0btsz56gNm2JumnuVBkv
	 4tCEkq4uOz8fVE9ZqvzYg6yapPKFyS5ayIO8VaFyn/Bin5VeUsU21vC4j01vL3rtMw
	 HJ6HC3pTkuwsw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-eopbgr80049.outbound.protection.outlook.com [40.107.8.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7019F3CB35
 for <cake@lists.bufferbloat.net>; Fri,  3 May 2019 14:57:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2WyniIYnGavUFcFCJScA3e1QAfDKozyAsWlHvhzDkKo=;
 b=Tx6qojKt33MB80Wf1ngSJALripWl2MgZ77A7v37o0woU8mwBZzvL78pboge7M0Kt8CPD7gH2ksV1RdEimT5j0OZ0fKQkDx+v65j8myTQv/0+oBOhRMkKkehM1bTbt4BeYPnm+I/1Oy6fFAp4jhXNleOz5gOAP0pj6hrN5i+7gRA=
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com (10.171.105.143) by
 VI1PR0302MB2671.eurprd03.prod.outlook.com (10.171.104.144) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Fri, 3 May 2019 18:57:07 +0000
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::b584:8ced:9d52:d88e]) by VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::b584:8ced:9d52:d88e%6]) with mapi id 15.20.1835.018; Fri, 3 May 2019
 18:57:07 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Jonathan Morton <chromatix99@gmail.com>
Thread-Topic: [Cake] Possible conntrack lookup improvements
Thread-Index: AQHVAbfnPteC/tjlzk2+6Qn9IvtEYaZZci6AgABOYwA=
Date: Fri, 3 May 2019 18:57:06 +0000
Message-ID: <05CE7D6A-0A66-4540-A398-B5D6FC4EF06B@darbyshire-bryant.me.uk>
References: <493B2B95-93C5-4CEB-906E-CFF0BF3187E9@darbyshire-bryant.me.uk>
 <069B5A62-314A-4559-8D6C-C67A5D1FE75F@gmail.com>
In-Reply-To: <069B5A62-314A-4559-8D6C-C67A5D1FE75F@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [193.240.142.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f5ce5bff-ec97-4197-bd19-08d6cff9239f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR0302MB2671; 
x-ms-traffictypediagnostic: VI1PR0302MB2671:
x-microsoft-antispam-prvs: <VI1PR0302MB2671F0C2EA7FDB72FE59C966A5350@VI1PR0302MB2671.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(346002)(366004)(39830400003)(396003)(199004)(189003)(66946007)(73956011)(316002)(71190400001)(446003)(8936002)(3846002)(6506007)(53546011)(14454004)(2616005)(6246003)(11346002)(102836004)(68736007)(83716004)(76176011)(99286004)(53936002)(64756008)(66476007)(66556008)(36756003)(4326008)(66066001)(71200400001)(25786009)(66446008)(5660300002)(74482002)(91956017)(4744005)(76116006)(2906002)(82746002)(81156014)(81166006)(229853002)(6116002)(486006)(86362001)(6512007)(6916009)(8676002)(305945005)(256004)(5024004)(33656002)(6486002)(1411001)(7736002)(186003)(508600001)(476003)(26005)(6436002)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB2671;
 H:VI1PR0302MB2750.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JOsEPDiCRt+QCrvCG7SEM0xCheqMR7rAqowg+UG4NcvbK8O/grBK/2zBIxXJ5P9TdOFJq5j0g2dWxOjc5HaOb2phIyoUsbTHA2Pc24CWOLtd9DdqcLKT8JWW5y+05w18QJRvtN3quS0NHcfxbkHMnBQALNlu2auJGZlyGsMkjER+Rfx/w/i3+IZSI3lKdfKeqTQqHRriMIOGStTn5nDFxkZyMtl+IRRPz0VpDHsM4KzkutFEMFmyErFJAVZhk2e3INt89c9XDcoCKsrQUvTssJThaVNM9bAyzk+lDZU19AxYzxRleteInaVmJCjIM09+iOuO+DZ08zNJuNzIwOpmyeXPD5DQcx3AWkwEslYXPugd6e3bVbcSGxLK39iEQvpvrYjIi2T07corLdu1yeozcsYTj1K+fFgn3jOROQAxArs=
Content-ID: <3F68EA8775083540B624DDC9F182FD79@eurprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: f5ce5bff-ec97-4197-bd19-08d6cff9239f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 18:57:06.9430 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB2671
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

DQoNCj4gT24gMyBNYXkgMjAxOSwgYXQgMTU6MTYsIEpvbmF0aGFuIE1vcnRvbiA8Y2hyb21hdGl4
OTlAZ21haWwuY29tPiB3cm90ZToNCj4gDQo+PiBPbiAzIE1heSwgMjAxOSwgYXQgNDo1NSBwbSwg
S2V2aW4gRGFyYnlzaGlyZS1CcnlhbnQgPGtldmluQGRhcmJ5c2hpcmUtYnJ5YW50Lm1lLnVrPiB3
cm90ZToNCj4+IA0KPj4gVHdvIHBhdGNoZXMgYXR0YWNoZWQgLSBvbmUgaXMgYSBzaW1wbGUgdmFy
aWFibGUgZWxpbWluYXRpb24gd2l0aCBubyBmdW5jdGlvbmFsIGNoYW5nZS4gIFRoZSBzZWNvbmQg
Y2hhbmdlcy9zaW1wbGlmaWVzIHRoZSBjb25udHJhY2sgdHVwbGUgbG9va3VwICYgdXNhZ2UuICBJ
4oCZdmUgaGFkIGEgcGxheSBhbmQgSSBkb27igJl0IHRoaW5rIEnigJl2ZSBicm9rZW4gYW55IG9m
IHRoZSBob3N0IGZhaXJuZXNzIEJVVCBpdCBjb3VsZCBkbyB3aXRoIHNvbWUgbW9yZSB0ZXN0aW5n
LCB0aGF04oCZcyB3aGVyZSB5b3UgY29tZSBpbuKApiANCj4gDQo+IExvb2tzIGxpa2Ugc291bmQg
bG9naWMsIGFzIGxvbmcgYXMgaXQgZG9lcyBhY3R1YWxseSB3b3JrLiAgSXQgY291bGQgYmUgYSB1
c2VmdWwgc3BlZWR1cCBmb3IgdGhvc2Ugc21hbGwgQ1BFIGRldmljZXMgd2hpY2ggbmVlZCBOQVQg
YW5kIGhvc3QtZmFpcm5lc3Mgd29ya2luZy4NCg0KSXTigJlzIGludGVyZXN0aW5nIHlvdSBicmlu
ZyB0aGF0IHVwIC0gYXJlIHdlIHN1cmUgdGhhdCBpbmdyZXNzIGhvc3QgTkFUIGZhaXJuZXNzIHdv
cmtzIGluIHRoZSB1cHN0cmVhbSBrZXJuZWwgdmVyc2lvbiBvZiBDQUtFIGFueXdheT8gIEnigJlt
IGxvb2tpbmcgYXQgY2FrZV91cGRhdGVfZmxvd2tleXMo4oCmKSBhbmQgdGhpbmtpbmcgaGFsZiBv
ZiBpdCBpcyBtaXNzaW5nPw0KDQo+IA0KPiAtIEpvbmF0aGFuIE1vcnRvbg0KDQoNCkNoZWVycywN
Cg0KS2V2aW4gRC1CDQoNCmdwZzogMDEyQyBBQ0IyIDI4QzYgQzUzRSA5Nzc1ICA5MTIzIEIzQTIg
Mzg5QiA5REUyIDMzNEENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0
cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

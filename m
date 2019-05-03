Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id B91E1133FB
	for <lists+cake@lfdr.de>; Fri,  3 May 2019 21:23:22 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9EEE53CB39;
	Fri,  3 May 2019 15:23:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1556911401;
	bh=v9/eNBWP0ZPXskWRQHu8Q1FSauCweD4VPD6vaDz8Ays=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Mp7L2fqsY4fgfPQg5aBS7dYjrQV75C7qo4rGf7a1TPR0D0OTO5msLZnULkmTTEFM1
	 xW7tucvijcbmc9kCjZf2V2JsNj/VcL5AJLIYo7cuuM/Uzh99DWQY1Xm7PqBVVsp3PJ
	 EcW/+yRYt+O0wl7phAPtT+8hmufFJk67MdZ3XzlGjsBCweSFNqiKIUq11xAyk1//VI
	 Y4zrB9GTs2WI1yLBTVavcJ1DPVuEIxEBR1U5hfxqCBp8dC6sTafXvh0cBicT6qSzVe
	 5l8UwVtZ8F25Q6FpzHxemXo1ZLd5Ga0bYye0mNka23jYfQ8slQVudIUUknughWw2/x
	 h+qp+ATcH1S4Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr130042.outbound.protection.outlook.com [40.107.13.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DE72D3CB35
 for <cake@lists.bufferbloat.net>; Fri,  3 May 2019 15:23:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3H87qc8vItyjPPGLuf8XB8kSevKr9yoDZWbbmk3crbc=;
 b=NtAhoijFXrLrvJlC1kZX+dg3FWavIvV4fOsWAa1/579coash+H1qhOZ67LiwP3LQUbrEvIU9Yh+HVJm/0R5b/PEOoIUI/mm+6zAITvUzQ+twfh1evdMVujHfz7RVsxmzQJQkHRrBQgrVLG5MoS9AHC6ZVsWGpa3GdCANemtAg54=
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com (10.171.105.143) by
 VI1PR0302MB3470.eurprd03.prod.outlook.com (52.134.14.29) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Fri, 3 May 2019 19:23:17 +0000
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::b584:8ced:9d52:d88e]) by VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::b584:8ced:9d52:d88e%6]) with mapi id 15.20.1835.018; Fri, 3 May 2019
 19:23:17 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: =?utf-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Thread-Topic: [Cake] Possible conntrack lookup improvements
Thread-Index: AQHVAbfnPteC/tjlzk2+6Qn9IvtEYaZZci6AgABOYwCAAAR8gIAAAtSA
Date: Fri, 3 May 2019 19:23:17 +0000
Message-ID: <0D8001E5-0B7B-44BD-914A-B3F41E0558D0@darbyshire-bryant.me.uk>
References: <493B2B95-93C5-4CEB-906E-CFF0BF3187E9@darbyshire-bryant.me.uk>
 <069B5A62-314A-4559-8D6C-C67A5D1FE75F@gmail.com>
 <05CE7D6A-0A66-4540-A398-B5D6FC4EF06B@darbyshire-bryant.me.uk>
 <87h8abgxmi.fsf@toke.dk>
In-Reply-To: <87h8abgxmi.fsf@toke.dk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [193.240.142.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f4f208e5-be0a-47fe-13bf-08d6cffccbcc
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR0302MB3470; 
x-ms-traffictypediagnostic: VI1PR0302MB3470:
x-microsoft-antispam-prvs: <VI1PR0302MB34704FFAA79E222F6B3FF3CAA5350@VI1PR0302MB3470.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39830400003)(376002)(396003)(346002)(136003)(199004)(189003)(256004)(5660300002)(66946007)(446003)(66066001)(14454004)(82746002)(66574012)(6436002)(76176011)(86362001)(4326008)(99286004)(14444005)(186003)(33656002)(71200400001)(6512007)(25786009)(53936002)(54906003)(66476007)(83716004)(66446008)(5024004)(76116006)(73956011)(66556008)(64756008)(316002)(91956017)(508600001)(6246003)(74482002)(71190400001)(8676002)(2906002)(229853002)(6486002)(305945005)(6506007)(81166006)(68736007)(7736002)(3846002)(36756003)(8936002)(6116002)(486006)(2616005)(11346002)(26005)(81156014)(6916009)(102836004)(53546011)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB3470;
 H:VI1PR0302MB2750.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xIwWKQOQ+r+/FAMhGbW3uDrVP+qohqSBG70arnYUyEn7PQMUEjbrcA3KkV8nugT00YT+pFerwyebpKJIxk1/mdlXcUFdawBwQj5iLl+2Le2o6G/W0GMQpodpNAxjopDl/h/kPdOdazhMWO4AvjgoG6qizCLdC+MyID7MP6W1Nbs0iAjh16tFpsCvJUYvNf12iZeoDcVsH/7YoA8Mh7tTquFS8AK+dBoGrjXmf4m7x8/8O3HlKrfzfp6ecptGrhIuhT2ldI56HHlCvNkTn5DAnRxI0y7+5/IKUhzpt8M0tH46UeaP54QPk7+MzdgFxma1Xu3hrYXU/eDEizj2pcSoeSGU+nIl4pycaJxNoaMVm4Y5cOsr2DjtKq0Viz7I+lVEd1yjnxr+/jSek4iA8ZHxY6EgRA1t+iQikMKxTa/bmKE=
Content-ID: <0261D1F97F8C4F45B0CAF112286FD280@eurprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: f4f208e5-be0a-47fe-13bf-08d6cffccbcc
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 19:23:17.6210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB3470
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

DQoNCj4gT24gMyBNYXkgMjAxOSwgYXQgMjA6MTMsIFRva2UgSMO4aWxhbmQtSsO4cmdlbnNlbiA8
dG9rZUByZWRoYXQuY29tPiB3cm90ZToNCj4gDQo+IEtldmluIERhcmJ5c2hpcmUtQnJ5YW50IDxr
ZXZpbkBkYXJieXNoaXJlLWJyeWFudC5tZS51az4gd3JpdGVzOg0KPiANCj4+PiBPbiAzIE1heSAy
MDE5LCBhdCAxNToxNiwgSm9uYXRoYW4gTW9ydG9uIDxjaHJvbWF0aXg5OUBnbWFpbC5jb20+IHdy
b3RlOg0KPj4+IA0KPj4+PiBPbiAzIE1heSwgMjAxOSwgYXQgNDo1NSBwbSwgS2V2aW4gRGFyYnlz
aGlyZS1CcnlhbnQgPGtldmluQGRhcmJ5c2hpcmUtYnJ5YW50Lm1lLnVrPiB3cm90ZToNCj4+Pj4g
DQo+Pj4+IFR3byBwYXRjaGVzIGF0dGFjaGVkIC0gb25lIGlzIGEgc2ltcGxlIHZhcmlhYmxlIGVs
aW1pbmF0aW9uIHdpdGggbm8gZnVuY3Rpb25hbCBjaGFuZ2UuICBUaGUgc2Vjb25kIGNoYW5nZXMv
c2ltcGxpZmllcyB0aGUgY29ubnRyYWNrIHR1cGxlIGxvb2t1cCAmIHVzYWdlLiAgSeKAmXZlIGhh
ZCBhIHBsYXkgYW5kIEkgZG9u4oCZdCB0aGluayBJ4oCZdmUgYnJva2VuIGFueSBvZiB0aGUgaG9z
dCBmYWlybmVzcyBCVVQgaXQgY291bGQgZG8gd2l0aCBzb21lIG1vcmUgdGVzdGluZywgdGhhdOKA
mXMgd2hlcmUgeW91IGNvbWUgaW7igKYgDQo+Pj4gDQo+Pj4gTG9va3MgbGlrZSBzb3VuZCBsb2dp
YywgYXMgbG9uZyBhcyBpdCBkb2VzIGFjdHVhbGx5IHdvcmsuICBJdCBjb3VsZCBiZSBhIHVzZWZ1
bCBzcGVlZHVwIGZvciB0aG9zZSBzbWFsbCBDUEUgZGV2aWNlcyB3aGljaCBuZWVkIE5BVCBhbmQg
aG9zdC1mYWlybmVzcyB3b3JraW5nLg0KPj4gDQo+PiBJdOKAmXMgaW50ZXJlc3RpbmcgeW91IGJy
aW5nIHRoYXQgdXAgLSBhcmUgd2Ugc3VyZSB0aGF0IGluZ3Jlc3MgaG9zdCBOQVQNCj4+IGZhaXJu
ZXNzIHdvcmtzIGluIHRoZSB1cHN0cmVhbSBrZXJuZWwgdmVyc2lvbiBvZiBDQUtFIGFueXdheT8g
IEnigJltDQo+PiBsb29raW5nIGF0IGNha2VfdXBkYXRlX2Zsb3drZXlzKOKApikgYW5kIHRoaW5r
aW5nIGhhbGYgb2YgaXQgaXMgbWlzc2luZz8NCj4gDQo+IE5vLCBpdCdzIGp1c3QgbW92ZWQgaW50
byBuZl9jb25udHJhY2tfZ2V0X3R1cGxlX3NrYigpOyB0aGlzIHdhcyBwYXJ0IG9mDQo+IHRoZSB3
b3JrIHdlIGRpZCB0byBlbnN1cmUgc2NoX2Nha2UgY291bGQgbG9hZCB3aXRob3V0IGEgZGVwZW5k
ZW5jeSBvbg0KPiB0aGUgY29ubnRyYWNrIG1vZHVsZS4uLg0KPiANCj4gSXQgZG9lcyBjYXJyeSBv
dmVyIHRoZSAnbmZfY3RfdHVwbGUoY3QsICFoYXNoLT50dXBsZS5kc3QuZGlyKTsnIGFuZCB0aGUN
Cj4gc3Vic2VxdWVudCByZXZlcnNpb24sIHRob3VnaCwgYnV0IEkgdGhpbmsgdGhlIGxvZ2ljIGZp
dHMgd2hhdCdzIGluIHRoZQ0KPiBvdXQtb2YtdHJlZSB2ZXJzaW9uPw0KPiANCj4gLVRva2UNCg0K
QWhoISB5ZXMgSSBzZWUsIHRoYW5rcy4gLSBlbGl4aXIgb3IgbXkgYWJpbGl0eSB0byBvcGVyYXRl
IGVsaXhpciB3YXMgZmFpbGluZyBlYXJsaWVyLg0KDQpZZXMgYW5kIGFncmVlIHRoZSBsb2dpYyBm
b2xsb3dzIHRoZSBvdXQtb2YtdHJlZeKApmFuZCBJIGNhbiBzZWUgaG93IG15IGNoYW5nZSB0byBp
dCB3b3VsZCBiZSBhcHBsaWVkLCBhc3N1bWluZyBpdCBkb2VzIGFjdHVhbGx5IHdvcmsuDQoNCg0K
Q2hlZXJzLA0KDQpLZXZpbiBELUINCg0KZ3BnOiAwMTJDIEFDQjIgMjhDNiBDNTNFIDk3NzUgIDkx
MjMgQjNBMiAzODlCIDlERTIgMzM0QQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

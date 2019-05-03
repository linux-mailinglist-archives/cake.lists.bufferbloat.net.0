Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 4826B13665
	for <lists+cake@lfdr.de>; Sat,  4 May 2019 01:57:50 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DC5273CB39;
	Fri,  3 May 2019 19:57:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1556927868;
	bh=mtPcF38cj4kNC5UWm6voh5KoT3FoW3Wjt1NbYofN0o8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CHQ1FXH4UePA6kvdtrG7aAB7ug4tCZBJNUvxLvLiiCDcG5HyAJyVyleczDCKGKWnB
	 /e48g7zNjxMGaUvPbLYh4VijzENrxRsE2JWTHmxuatHjRKZXWbKYsUnHypmVqpHTsp
	 ItW8+5dmttWQT8sSVDBX3+cgbfgiQ7yWSGK+xXu8yaebWncN0HGcyJvzTB696ko5l0
	 prhfTdLFjJXdks+xN0VTFPOvwr/2aD1OgxeUOig7WLwKl01lwugumU52GTteMZ8BZv
	 YKAMZ0fsvKcfYsVUkKPlaSzfVAqQ7Gcb5YOScZLLVfUBJFtiW6Kb8pe9+SbeanfsmT
	 eQY4sdb+YeqSg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-eopbgr60044.outbound.protection.outlook.com [40.107.6.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2D93C3CB35
 for <cake@lists.bufferbloat.net>; Fri,  3 May 2019 19:57:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J4YRooVdD5mZQvNdIXNzCC80HEyrIG2WVAELTA6jquY=;
 b=K+7nVneVAAl+7miArAUoQFS21EqlqGiBA+7uxmYKVgXtReW7sOjmwjcgNAEShJqYqOZJhCVbCKDvKXQcI5JFa7w652pFMY9T/UT5guntsncDEM5dlEWF5NDgNrTisZP6HhhfYVAJ8UWhCi4NU8ssqd/DJKg2VODoUUj/5HKwyfo=
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com (10.171.105.143) by
 VI1PR0302MB3422.eurprd03.prod.outlook.com (52.134.13.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Fri, 3 May 2019 23:57:44 +0000
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::b584:8ced:9d52:d88e]) by VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::b584:8ced:9d52:d88e%6]) with mapi id 15.20.1835.018; Fri, 3 May 2019
 23:57:44 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: =?utf-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
Thread-Topic: [Cake] Possible conntrack lookup improvements
Thread-Index: AQHVAbfnPteC/tjlzk2+6Qn9IvtEYaZZci6AgABOYwCAAAR8gIAAAtSAgABMrwA=
Date: Fri, 3 May 2019 23:57:44 +0000
Message-ID: <A48EED9B-B4BE-4EF4-BD9C-472FF90A5987@darbyshire-bryant.me.uk>
References: <493B2B95-93C5-4CEB-906E-CFF0BF3187E9@darbyshire-bryant.me.uk>
 <069B5A62-314A-4559-8D6C-C67A5D1FE75F@gmail.com>
 <05CE7D6A-0A66-4540-A398-B5D6FC4EF06B@darbyshire-bryant.me.uk>
 <87h8abgxmi.fsf@toke.dk>
 <0D8001E5-0B7B-44BD-914A-B3F41E0558D0@darbyshire-bryant.me.uk>
In-Reply-To: <0D8001E5-0B7B-44BD-914A-B3F41E0558D0@darbyshire-bryant.me.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [2a02:c7f:1240:ee00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f3e03492-6c50-4e2a-8327-08d6d02322f9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR0302MB3422; 
x-ms-traffictypediagnostic: VI1PR0302MB3422:
x-microsoft-antispam-prvs: <VI1PR0302MB34228BC8EEC3B9791A029ED5A5350@VI1PR0302MB3422.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0026334A56
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(396003)(136003)(346002)(39830400003)(199004)(189003)(486006)(6916009)(86362001)(6512007)(74482002)(5660300002)(6436002)(14454004)(81156014)(256004)(14444005)(6246003)(5024004)(36756003)(99286004)(305945005)(8936002)(8676002)(508600001)(71190400001)(71200400001)(83716004)(81166006)(316002)(2906002)(6116002)(229853002)(53546011)(76176011)(6506007)(4326008)(53936002)(102836004)(6486002)(82746002)(25786009)(7736002)(33656002)(66574012)(68736007)(186003)(2616005)(476003)(66946007)(46003)(11346002)(91956017)(66476007)(66556008)(64756008)(66446008)(73956011)(446003)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB3422;
 H:VI1PR0302MB2750.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SKMvjlE5qDLlMFIbOhHlYUMBhcrDVwwLsSbdiVTAgfKet3ngqcNHQ7RrWVPEdzU76+i8n4RnyfGhmaxU+I6XYgVi3CTzcp9RZIKt6ikV30S5pK22K4GZuHPBUP15vS9MBbtd1LyivsjXQr/Tqf1gUixf1VPZWwEdS8IZZyudWN9H8rQrEXayEk2c6To+jZMSERkk4pgIYfvakuzeYm3qV1QxtYx1UfZFwfwHw3tFTysdIPHnR4AX7OWtuPhMn5KDdXO7qcuat+GEAsFeOcgrWu+BbeU37iZHLjebSKCjJLUlsRNec6c1pWyyf2HUpxRjm4ViW+7YC+I9pnyw7aITDnnS7D8lmVZrhwoWQ0938JHVTc5TQMlfKxJhsCX7TD3BJbGo+EnnlMB73CSwWyT0U5fA4svmTcuRsupFFkMw+bI=
Content-ID: <CACBE223FBB39348AD4F2D1B64D88F24@eurprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: f3e03492-6c50-4e2a-8327-08d6d02322f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2019 23:57:44.8403 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB3422
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

DQoNCj4gT24gMyBNYXkgMjAxOSwgYXQgMjA6MjMsIEtldmluIERhcmJ5c2hpcmUtQnJ5YW50IDxr
ZXZpbkBkYXJieXNoaXJlLWJyeWFudC5tZS51az4gd3JvdGU6DQo+IA0KPiANCj4gDQo+PiBPbiAz
IE1heSAyMDE5LCBhdCAyMDoxMywgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhh
dC5jb20+IHdyb3RlOg0KPj4gDQo+PiBLZXZpbiBEYXJieXNoaXJlLUJyeWFudCA8a2V2aW5AZGFy
YnlzaGlyZS1icnlhbnQubWUudWs+IHdyaXRlczoNCj4+IA0KPj4+PiBPbiAzIE1heSAyMDE5LCBh
dCAxNToxNiwgSm9uYXRoYW4gTW9ydG9uIDxjaHJvbWF0aXg5OUBnbWFpbC5jb20+IHdyb3RlOg0K
Pj4+PiANCj4+Pj4+IE9uIDMgTWF5LCAyMDE5LCBhdCA0OjU1IHBtLCBLZXZpbiBEYXJieXNoaXJl
LUJyeWFudCA8a2V2aW5AZGFyYnlzaGlyZS1icnlhbnQubWUudWs+IHdyb3RlOg0KPj4+Pj4gDQo+
Pj4+PiBUd28gcGF0Y2hlcyBhdHRhY2hlZCAtIG9uZSBpcyBhIHNpbXBsZSB2YXJpYWJsZSBlbGlt
aW5hdGlvbiB3aXRoIG5vIGZ1bmN0aW9uYWwgY2hhbmdlLiAgVGhlIHNlY29uZCBjaGFuZ2VzL3Np
bXBsaWZpZXMgdGhlIGNvbm50cmFjayB0dXBsZSBsb29rdXAgJiB1c2FnZS4gIEnigJl2ZSBoYWQg
YSBwbGF5IGFuZCBJIGRvbuKAmXQgdGhpbmsgSeKAmXZlIGJyb2tlbiBhbnkgb2YgdGhlIGhvc3Qg
ZmFpcm5lc3MgQlVUIGl0IGNvdWxkIGRvIHdpdGggc29tZSBtb3JlIHRlc3RpbmcsIHRoYXTigJlz
IHdoZXJlIHlvdSBjb21lIGlu4oCmIA0KPj4+PiANCj4+Pj4gTG9va3MgbGlrZSBzb3VuZCBsb2dp
YywgYXMgbG9uZyBhcyBpdCBkb2VzIGFjdHVhbGx5IHdvcmsuICBJdCBjb3VsZCBiZSBhIHVzZWZ1
bCBzcGVlZHVwIGZvciB0aG9zZSBzbWFsbCBDUEUgZGV2aWNlcyB3aGljaCBuZWVkIE5BVCBhbmQg
aG9zdC1mYWlybmVzcyB3b3JraW5nLg0KPj4+IA0KPj4+IEl04oCZcyBpbnRlcmVzdGluZyB5b3Ug
YnJpbmcgdGhhdCB1cCAtIGFyZSB3ZSBzdXJlIHRoYXQgaW5ncmVzcyBob3N0IE5BVA0KPj4+IGZh
aXJuZXNzIHdvcmtzIGluIHRoZSB1cHN0cmVhbSBrZXJuZWwgdmVyc2lvbiBvZiBDQUtFIGFueXdh
eT8gIEnigJltDQo+Pj4gbG9va2luZyBhdCBjYWtlX3VwZGF0ZV9mbG93a2V5cyjigKYpIGFuZCB0
aGlua2luZyBoYWxmIG9mIGl0IGlzIG1pc3Npbmc/DQo+PiANCj4+IE5vLCBpdCdzIGp1c3QgbW92
ZWQgaW50byBuZl9jb25udHJhY2tfZ2V0X3R1cGxlX3NrYigpOyB0aGlzIHdhcyBwYXJ0IG9mDQo+
PiB0aGUgd29yayB3ZSBkaWQgdG8gZW5zdXJlIHNjaF9jYWtlIGNvdWxkIGxvYWQgd2l0aG91dCBh
IGRlcGVuZGVuY3kgb24NCj4+IHRoZSBjb25udHJhY2sgbW9kdWxlLi4uDQo+PiANCj4+IEl0IGRv
ZXMgY2Fycnkgb3ZlciB0aGUgJ25mX2N0X3R1cGxlKGN0LCAhaGFzaC0+dHVwbGUuZHN0LmRpcik7
JyBhbmQgdGhlDQo+PiBzdWJzZXF1ZW50IHJldmVyc2lvbiwgdGhvdWdoLCBidXQgSSB0aGluayB0
aGUgbG9naWMgZml0cyB3aGF0J3MgaW4gdGhlDQo+PiBvdXQtb2YtdHJlZSB2ZXJzaW9uPw0KPj4g
DQo+PiAtVG9rZQ0KPiANCj4gQWhoISB5ZXMgSSBzZWUsIHRoYW5rcy4gLSBlbGl4aXIgb3IgbXkg
YWJpbGl0eSB0byBvcGVyYXRlIGVsaXhpciB3YXMgZmFpbGluZyBlYXJsaWVyLg0KPiANCj4gWWVz
IGFuZCBhZ3JlZSB0aGUgbG9naWMgZm9sbG93cyB0aGUgb3V0LW9mLXRyZWXigKZhbmQgSSBjYW4g
c2VlIGhvdyBteSBjaGFuZ2UgdG8gaXQgd291bGQgYmUgYXBwbGllZCwgYXNzdW1pbmcgaXQgZG9l
cyBhY3R1YWxseSB3b3JrLg0KPiANCg0KTXkgdGVzdGluZyBzdHJhdGVneSB3YXMgZmxhd2VkLCB0
aGUgMm5kIHBhdGNoIGRvZXMgbm90IHdvcmsgY29ycmVjdGx5LiAgV2lsbCB0aGluayBhZ2Fpbi4N
Cg0KPiANCg0KDQpDaGVlcnMsDQoNCktldmluIEQtQg0KDQpncGc6IDAxMkMgQUNCMiAyOEM2IEM1
M0UgOTc3NSAgOTEyMyBCM0EyIDM4OUIgOURFMiAzMzRBDQoNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VAbGlzdHMu
YnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3RpbmZvL2Nh
a2UK

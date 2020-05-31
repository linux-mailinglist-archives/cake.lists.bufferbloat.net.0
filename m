Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B21F1E9929
	for <lists+cake@lfdr.de>; Sun, 31 May 2020 19:08:21 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D886C3CB38;
	Sun, 31 May 2020 13:08:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1590944899;
	bh=fM2LhNYXx49NqkVqFXCKUA95kjGJBUSgEtMMw6eyrlA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ghUcEmRqDRUkATjCsTRTxofHXK531REFRMRplYQ7k7l8mgyyKW43qH5nKs6ackSaS
	 X1RYLLA1utVwua4lNWKF3e2zPsTOnWgOAvTiFnYGTeSevR6EogJRT/fpe5eH17y/p1
	 N8TvRLt+CvoaP07xyHsj2QC0jIsad2bB4OuSvrRMwjnXXnhnRaIeL1KgNnLzjsGbHu
	 buvQl/JAWDPb9ht2j+SxiNlHLdD1I8nO2r3YjEXjsCMTSbW77U/H1EjXf26y7i8vzc
	 vr+eITUYJkxSVFHpsZc0JBMUYXEJeH3ayF1wOCs1az7pe06WfTL3Y28/TNhJ5BJSYc
	 MFC5aO/fcbYaw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2070.outbound.protection.outlook.com [40.107.22.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 72EF43B29E
 for <cake@lists.bufferbloat.net>; Sun, 31 May 2020 13:08:18 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OMA18yrboT4Y3uSzomOCjEtG5JBaz7e3D8mB8b5zKZ1xd4GcqwnZxtTIXMAQ/2VZla/WkSrkcLGS4pI6LvV3uIP/SXZ9HwFdFRMbUaBUPxfb5EnM8+/wpARwhD9eY629eCSWVv6SahnQwe3UOsXZsDeeiKql3gdOrQ4ZPIzUcxJ5JplmHVW5t3OTlmU7wXV+rtl2mKZrhRjDcJcmcCHCyAJMtZV/jhF4FerJUhIVump62F0Uhl06Am3NPj12BeI/6rQrbx0qUhIfwtsHCj5u3/2epc+meQjivwPoKWqYuPQ7ff5XX09hrPlFtdm6XEFD1/YdTHYg2GehCxaw5aaG6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5FSq6DnG8W8X0tX+NI9DzVatyCEild4mvT6Q6vym62w=;
 b=mAtlpf04K2wbXCqamK6KKOKWcd1r0ymA2ajRvgejFn/e5L2Kh9Z6bgJTFMkDspstoWPGWTBDc+Bp9Il1XT5Rs7ft5f3BeuQPofJMTNih8u5f1hZ/dWTRXD0/IgrwkJ3p9h3ZAyThC9jhWEYzTowQUSVx74AYkN9xq1fPr1BxS2jKU6WgmVYtxLXeqo7cMYRh2YAevc+Fa6mZxUcZcBd+joHW/9nnXPwJJaKecon8dJBX1GJiItsMrIbgscvlnQXLDA5iTtCcDRcxXR5PGUUlCqII6RrTGMG1f46rrdgj3PpHhwu/Q+QAL9zeX2hcPCsstobRwOD0luuNrvAFd9djZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5FSq6DnG8W8X0tX+NI9DzVatyCEild4mvT6Q6vym62w=;
 b=rq4Bv02qzviYWerhpZeVxkoE8b246HOTT1greyy4hfVeyrCdTsvwSe4FQKgUAK7Dt+l4QUW25BsbxYEoQKu7YpdkjP08pkhg9C7cBwKoxEwFfX+U09EcIJ3JIrSRFJ53ixxtd94iaUE5bFkKq7yl0D1Nfm17EjnCQtvj2z40+40=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB5086.eurprd03.prod.outlook.com (2603:10a6:803:c1::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.18; Sun, 31 May
 2020 17:08:16 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2%4]) with mapi id 15.20.3045.024; Sun, 31 May 2020
 17:08:16 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Cake List <cake@lists.bufferbloat.net>
Thread-Topic: [Cake] Playing with ingredients = ruined the CAKE
Thread-Index: AQHWNaDfLvJRX90lNUWg0E2NWUhvpai/L1iAgALLOoCAAG4dAIAACDMA
Date: Sun, 31 May 2020 17:08:16 +0000
Message-ID: <7D02924D-1B16-4274-8BBF-6CBAA59CBB59@darbyshire-bryant.me.uk>
References: <5136DAB5-B975-4D36-948D-A5A4167A8FC7@darbyshire-bryant.me.uk>
 <30B03A82-420A-4A9A-899B-8549692AF9DC@darbyshire-bryant.me.uk>
 <2BE61C3D-EED3-405A-A7AF-BA7B7B5B8B03@darbyshire-bryant.me.uk>
 <CAJnXXogEindF=KvVOZUVa1VeZGDVA8hCNfaBAmh6HkJ_sjwPZg@mail.gmail.com>
In-Reply-To: <CAJnXXogEindF=KvVOZUVa1VeZGDVA8hCNfaBAmh6HkJ_sjwPZg@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
authentication-results: lists.bufferbloat.net; dkim=none (message not signed)
 header.d=none; lists.bufferbloat.net;
 dmarc=none action=none
 header.from=darbyshire-bryant.me.uk;
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 57126347-2b1e-4dfa-b515-08d8058535db
x-ms-traffictypediagnostic: VI1PR03MB5086:
x-microsoft-antispam-prvs: <VI1PR03MB5086348C2905984099424739A58D0@VI1PR03MB5086.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0420213CCD
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /gxg8bQD+wN0eEDX1Jrh8iiLPMw9AWELvyWXO/DuAxLi3j08kMrXcYBTTDoxcd2FewrSH0hPfPfisd6sGvnulmgZrqeUZLrWAyFZ6sUNQiHmVJgNBwv6KNWSsP1y+PZ9wjhZJ0UQ/8af0bPMM8HT08es8FkBNTPXP996SJ0OrhVNk21BWED+3vnBeqamvhlRHQkTOG/TRQB+SPfoVnI20/BVVZ+b/e/ZBZsfV9Wa0CgKEgKYfMEg/8Sx+aJvMWqkCijrsIeNW2+J0XlCtYQB7u26GpZq4cxxmf2hvbxdhE9eSq1cxY1BNyJ0vx8nLygTVyEvY0G4XbcP7k+Iy7J+2w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(346002)(39830400003)(366004)(396003)(136003)(83380400001)(5660300002)(316002)(36756003)(4326008)(66574014)(71200400001)(91956017)(86362001)(64756008)(6916009)(66556008)(66446008)(186003)(66476007)(76116006)(2906002)(66946007)(53546011)(6486002)(6512007)(508600001)(8936002)(2616005)(33656002)(6506007)(8676002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 8TwRmfB096QSXtDGH1fndBj3slimtYWKnE10Hemmd2R6TCLmAvEwVURtfibv1inI2CTYH6EDqjop2m9ZMmsHuc3Prwto96viA5jae1EtIDmkGesmvINWwmFK/d5TVyhulRLaErY9Ut1eDDVKkwTpVYQ8Pn11DKghxCp/qY/5Yz/h1QfFlbBOBUtXi1H3YC/IBpsTFy4GTIWQoPLYeTzUCF5Pi+l0Xyxcp/fL+fWFihKFNjEZlDROY0Pmkzju89dhl8y4o07UOIznwTUI4dpGp0S2s6tQ+hcgEdb0nmcjgCSJuzDOKDhyGX3BoFsb3Vi3cBJchlAvHVdh229vXTeUDNyofY0kw5AO5gB3xCJWJoUYQ7cIFqxmGNPOxlMrrhnLTjQFDznxJXlGpz/SsieuelRNzssC81GMoKFJZPZr4NGX3lKhHA1JRVc3cxml+7biaeCkCAJQMv9FZezbxRvxqcAaUoGy4V4LRKpBJib8UY9curHb4pyT0GKDDTbsU+44OxQI9rtNYaTPvwDNxNAnKQ==
x-ms-exchange-transport-forked: True
Content-ID: <CF40D6E88C04CC4599B11318E2D3D6F0@eurprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 57126347-2b1e-4dfa-b515-08d8058535db
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2020 17:08:16.2187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0qTF8FdJAbJ4CunfX96Kiq7ppKQROvA4x69mzx6nIOqtsuWg5MvelY1alxCQG5H8YzBDZO6Fy6ENFILsXyvRuIYcHBKmQXyW6UeMpq4tHd0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB5086
Subject: Re: [Cake] Playing with ingredients = ruined the CAKE
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

DQoNCj4gT24gMzEgTWF5IDIwMjAsIGF0IDE3OjM4LCBKb2huIFlhdGVzIDxqb2huQHlhdGVzLXNo
ZWV0cy5vcmc+IHdyb3RlOg0KPiANCj4gS2V2aW4sDQo+IA0KPiBJIGFtIGN1cmlvdXMgaG93IHRo
aXMgZWZmb3J0IHJlbGF0ZXMgdG8gRGF2ZSBUYWh0J3MgcG9pbnQgaW4gaGlzIE1heQ0KPiAyMHRo
ICJub3QgcmVhbGx5IGh1Z2Ugb24gRUYgbGFuZGluZyB3aGVyZSBpdCBkb2VzIGluIHdpZmkiIHRo
cmVhZC4NCj4gDQo+IC9qb2huDQoNCkhpIEpvaG4sDQoNCkkgaGF2ZSBhYnNvbHV0ZWx5IG5vIGlk
ZWEsIGRvbuKAmXQgYXBwZWFyIHRvIGhhdmUgdGhhdCB0aHJlYWQgOi0pIE15IG93biBEU0NQL0NB
S0UgaW50ZXJlc3RzIGFyZSBhbGlnbmVkIHRvIGV4ZXJjaXNpbmcgQ0FLReKAmXMgYnVpbHQtaW4g
Y2xhc3NpZmljYXRpb24vYmFuZHdpZHRoIGFsbG9jYXRpb25zIGFjcm9zcyBteSBXQU4gbGluay4g
IEluIGVzc2VuY2UgSSBoYXZlIHRyYWZmaWMgdHlwZXMgb2Yg4oCYTGVhc3QgRWZmb3J04oCZIChi
aXR0b3JyZW50IC0gbmVhcmx5IHN0YXJ2YWJsZSksIOKAmEJ1bGvigJkgKGJhY2t1cHMvbG9uZyB0
ZXJtIHVwL2Rvd25sb2FkcyAtIGxvdyBtaW5pbXVtIGIvdyksIOKAmU5vcm1hbOKAmSAoTW9zdCBz
aG9ydCB0ZXJtIHN0dWZmIC0gYWxsIGJhbmR3aXRoKSwgVkkgKHZpZGVvIGNvbmZlcmVuY2UgY2Fs
bHMvc3RyZWFtaW5nLCBsb25nLXRlcm0gbW9yZSBpbXBvcnRhbnQgZmxvd3MgbGF0ZW5jeSBpbXBv
cnRhbnQtIHVwIHRvIDEvMiBiL3cpLCBWTyAodm9pY2UvbGF0ZW5jeSBjcml0aWNhbCB1cCB0byAx
LzQgYi93KS4gIE9yIHR3byBsZXZlbHMgb2Yg4oCZbm90IHNvIGltcG9ydGFudOKAmSBhbmQgdHdv
IGxldmVscyBvZiDigJhtb3JlIGltcG9ydGFudOKAmSBhcm91bmQgbm9ybWFsL2V2ZXJ5dGhpbmcu
DQoNClRoZSBjbGFzc2lmaWNhdGlvbiBwcm9jZXNzIGhhcHBlbnMgYXMgYSBjb21iaW5hdGlvbiBv
ZiBpcHRhYmxlcy9pcHNldHMgcnVsZXMgb24gdGhlIGludGVybmV0IHJvdXRlciB1c2luZyB0YyBh
Y3RfY3RpbmZvIHRvIHByZXNlcnZlIHRoZSBEU0NQIGNsYXNzaWZpY2F0aW9uIG9mIGZsb3dzIGFj
cm9zcyB0aGUgV0FOLg0KDQpDaGVlcnMsDQoNCktldmluIEQtQg0KDQpncGc6IDAxMkMgQUNCMiAy
OEM2IEM1M0UgOTc3NSAgOTEyMyBCM0EyIDM4OUIgOURFMiAzMzRBDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNha2VA
bGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xpc3Rp
bmZvL2Nha2UK

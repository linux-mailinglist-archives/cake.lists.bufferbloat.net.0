Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AF91B1E7A0B
	for <lists+cake@lfdr.de>; Fri, 29 May 2020 12:06:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 03DCB3CB38;
	Fri, 29 May 2020 06:06:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1590746815;
	bh=dFbWjjSuhH52sEP+FHM/KIflmo4u50951IDsU5kn2bc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=KPufIBO9ha+jsl7gY5ybkwlTnF9BkZMxXf+y8uKhHSbH3pdaedjRLc61UCb37cJS4
	 pO+yv4NwmqmGF/xa3dQP/ugaw2DK0jZxZYdSYygbx9LUbVPOMg/l8x3P4LZJjasQrd
	 T24S7LZU10b8+aozQ7bYt7wGBhijQLihuNm8ffZoigDKg3uiiYnDKkpY77cc7auv1t
	 c5wfZvbOO6/YBYYmFjD3iP/FYxmAGoA0uJV5DAP1duHwtGa8p2lct6Vlq9QrQ7N8vf
	 lbsih2r5FCcXAJiC2yzAvTLFVI5jFf5PE7kr3wTlrF19diQyh9EoFUoMpesrdxKkG/
	 7qBS8O/WbrWJw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2084.outbound.protection.outlook.com [40.107.22.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BEA953B29E
 for <cake@lists.bufferbloat.net>; Fri, 29 May 2020 06:06:52 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GsQ06bM77H75ZNIwc4wvPga0wQWAt0k1UN4QZG9KyNQ9bLYZJRfrDjX/BGnFe/Nnk6w06pa1y/mC3VxM5OpGZYSAgR9dmiscDt0sWUkoubWUIq5aL1JMMNiKnuFKpcwljuPJQIXKONHjSIZyQ7pX8NmYTLJQzXnMpBAcsj3WkxB7xOmiNGnG6LnhKykIhXlXXOAQXglkZyMfp+Jtc4kfO60lP2tcFx95jirPMfRTrVS5hdtt1U9pTcuHBa0O5QmUGgzkWBkMdDbD2/qOiXyQAVczJ9OQ9nXjJMidXIlgoC1v0Aw9m+vJEmi3vlW86FboaMa/hhsMME4r66KFgNrffQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4XBDMPRpgYjnBMhp2kX+gWGYy+N9wJpQsRB88OxHecA=;
 b=g1aDr5G9w5myv82k9Tb9VBakYb0OMwXKPrzBB2Bf1BTGvGC3vSrBZvLy4FeEGUJ+Dtw/pzHJdel/lhzuzGGEBATx36zIHEQiPocpbgo3NfASUus4l2doCr9F/HWM5ScCxwORwbL8zsNYqt2ObozZqsv89I/hGsAG1WYNPmoD6sySD9mfVC2+Bhzenlgx6L7xNcL3wslSKh04RNugtN+JHaU5Lw/MPVXfIqedJMzKnHGTML1I6F+Mjs+j2By0pKV7mb1pAmw1OPo/rYKwCNWastXNYmw71O6XJKZoOcIO7gh6qmHrrCb/prXEkwGCYgVhhwkdS0+F1umeVhE4GZ0adg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4XBDMPRpgYjnBMhp2kX+gWGYy+N9wJpQsRB88OxHecA=;
 b=ZjZFGW7YVas+KPCOdL4V9DMK6wYF7H0aRll3eQyCDY6fOAXrjVpGXeuzfLgkmzDbgwu8a4e0Ydfa2KQ1z7EPHCF29OEZJ99/UJMHbxfMGFAlrmsCMW/Vo8Em0rci4kGvgiX6m9Q/6GyN5Yr11cpXTI2aloebG5IZ7ySb8FjNoPg=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB6429.eurprd03.prod.outlook.com (2603:10a6:800:19b::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Fri, 29 May
 2020 10:06:51 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2%4]) with mapi id 15.20.3045.018; Fri, 29 May 2020
 10:06:50 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Cake List <cake@lists.bufferbloat.net>
Thread-Topic: Playing with ingredients = ruined the CAKE
Thread-Index: AQHWNaDfnsf9DKV2kkuxWa67nKlQQg==
Date: Fri, 29 May 2020 10:06:50 +0000
Message-ID: <5136DAB5-B975-4D36-948D-A5A4167A8FC7@darbyshire-bryant.me.uk>
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
x-ms-office365-filtering-correlation-id: e24894f5-d7c3-4a21-d04b-08d803b8019e
x-ms-traffictypediagnostic: VI1PR03MB6429:
x-microsoft-antispam-prvs: <VI1PR03MB6429F0E26464EA6054AA2A03A58F0@VI1PR03MB6429.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 04180B6720
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: glTtWAh57FNeLIli9mTFv3Z3gc+FStmlgv+UZ94jp1QU+XAxzJy4D5UGeb3tg1ryTvNr6363iifebETBe+1AKxP67te31GtHsvbLVmsu963U7nRO+3dkTtsO5REiADrTn6RBIj60agghzQ9XMQK0nE1WQW2HULrZhBPAWC/Ykx+zfMWrH/x4k/e16o06FCWhYyPrW2ot/RVuc6eh8+/H+met+Y3gONAWWQquBpnYj4oMu7NLuDuha/esuAsNRLIzJl7PlzY5y6YjMMulaSBf8FHdtiuh9LSCwHiM+ep4oFGwEsmo1O0wc96nBRY6FtvhZkamxJ5E1Id/QaemUdVrUw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(376002)(39830400003)(136003)(346002)(366004)(86362001)(6506007)(36756003)(186003)(76116006)(66946007)(66446008)(64756008)(91956017)(66476007)(2616005)(83380400001)(2906002)(71200400001)(66556008)(6486002)(5660300002)(6916009)(8676002)(8936002)(6512007)(316002)(33656002)(508600001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 5XKgLa/py8wLpNeEFXixmB3JDsHgtbrw3rtcjsOmSvUhPePUc/h6jv7GWI0jDexaRykrWpIvCiAEkAtE6stPPY0BU/j+2fJrlTtM3RHNwUJsYdSkVAOTv3gnBq9PU+B0L6gzNF3zzo9aSnaM+nVVuKzznUw3C4A0jKrdvGEEhw4YAz91OaOzXCJ6tDVDEwIeXIhQcLiyt8OykXOJxBxKYlAJZcqznccm/J/BnlODUcz7QOLo0ufJJTOK5M7UejonW28p45dLVCef1EvvVLPd+H5YCwR+lf6xhE2pP72PAGBKCZU0D5djr8rGwStN7gaZJHugANotw9HwD03GPDYvy+PK+3770BvVt65ZV2vf7Rnx5LcxuCoYsth/vppX0rbXhEcS/tvmuhKU76Hnr4h5RGOeVhRNIi9BMgrDF+yDc7X8xUMV0kp/NOBpDivMXrP/d1pXkcVy20032R1qRYbv54MUaGhtYXyiSAoh+v3SzUDRwsYAvsBUwtMRSz/hyzWO9DkWA/ao9G9jWusKvC247A==
x-ms-exchange-transport-forked: True
Content-ID: <8E1503DBBD1CEF4780F18B74A01AA507@eurprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: e24894f5-d7c3-4a21-d04b-08d803b8019e
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2020 10:06:50.7227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: laUqwbaUkSGZDICGuzacF56u5Q2mt8yP14oV+54/pg7XFhUiTiyHKQClRWJiiLqsVG2ahhQ196mcFTVMJDlJuXC//yX1Mjq+J6wPCwYZIvA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB6429
Subject: [Cake] Playing with ingredients = ruined the CAKE
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

SeKAmW0gdHJ5aW5nIHRvIGNyZWF0ZSBhIOKAmGRpZmZzZXJ2NeKAmSBmb3IgdGhlIHB1cnBvc2Vz
IG9mIGltcGxlbWVudGluZyBhICdMZWFzdCBFZmZvcnTigJkgY2xhc3M6IHNvbWV0aGluZyBsaWtl
IExFPUJpdHRvcnJlbnQsIEJLPUJhY2t1cHMvbG9uZyB0ZXJtIGRvd24vdXBsb2FkcywgQkU9QmVz
dCBFZmZvcnQvTm9ybWFsLCBWST1TdHJlYW1pbmcgbWVkaWEvZmFjZXRpbWUvem9vbSwgVk89Vk9J
UC9TSVAuICBOb3QgdG9vIGhhcmQgeW914oCZZCB0aGluaywgdGFrZSBkaWZmc2VydjQgYW5kIGFk
ZCBhIHRpbi4NCg0KSSBkaWQgdGhpcyB3aXRoIHRpbiBhbGxvY2F0aW9uOiAwPUxFLCAxPUJFLCAy
PUJLLCAzPVZJLCA0PVZPLiAgQlcgYWxsb2NhdGlvbiByZWxhdGl2ZSB0byBiYXNlIHJhdGUgPSBM
RT4+OCwgQkU+PjAsIEJLPj40LCBWST4+MSwgVk8+PjIuICBUaW4gZGlzcGxheSBvcmRlciA9IDAs
IDIsIDEsIDMsIDQuICBJbiB0aGVvcnkgSSBkb27igJl0IG1pbmQgTEUgYmVpbmcgc3RhcnZlZCBo
ZW5jZSB0aGUgYWJvdmUgb3JkZXIuICBUaGlzIHByZXR0eSBtdWNoIOKAmGphbW1lZCcgdGhlIHNo
YXBlciBhcyBzb29uIGFzIGFueSB0cmFmZmljIHdlbnQgaW50byBMRSB3aXRoIG90aGVyIGhpZ2hl
ciBwcmlvcml0eSB0aW5zIHNlZWluZyBodWdlIGxhdGVuY2llcywgbG90cyBvZiBkcm9wcyBhbmQg
Z2VuZXJhbCBiYWQgbmV3cyBhbGwgb3Zlci4NCg0KSSB0cmllZCBhZ2FpbiB3aXRoIGEgc2xpZ2h0
bHkgZGlmZmVyZW50IHRpbiBhbGxvY2F0aW9uOiAwPUJFLCAxPUxFLCAyPUJLLCAzPVZJLCA0PVZP
IG1vcmUgaW4ga2VlcGluZyB3aXRoIHRoZSBleGlzdGluZyBhcnJhbmdlbWVudCBhbmQgZGlzcGxh
eSBvcmRlciAxLCAyLCAwLCAzLCA0LiBUaGUgc2hhcGVyIGRvZXNu4oCZdCBhcHBlYXIgdG8gb2J2
aW91c2x5IHdlZGdlLCB0aG91Z2ggSSBoYXZlIHNlZW4gc29tZSBsYXRlbmN5IHNwaWtlcyB0aGF0
IEkgZG9u4oCZdCBub3JtYWxseSBzZWUsIHNvIGl0IGZlZWxzIGxpa2UgdGhlcmXigJlzIHN0aWxs
IGEgY29ybmVyIGNhc2UgYmVpbmcgaGl0Lg0KDQpEb2VzIGFueW9uZSBoYXZlIGFueSBpZGVhcz8N
Cg0KQ2hlZXJzLA0KDQpLZXZpbiBELUINCg0KZ3BnOiAwMTJDIEFDQjIgMjhDNiBDNTNFIDk3NzUg
IDkxMjMgQjNBMiAzODlCIDlERTIgMzM0QQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

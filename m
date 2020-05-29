Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C251E81C0
	for <lists+cake@lfdr.de>; Fri, 29 May 2020 17:25:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 437D13CB38;
	Fri, 29 May 2020 11:25:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1590765900;
	bh=9vEHyOjz6CuOn7u26d7FieOh50SKAh4RvqN/VQWurEU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g/2OkM4U7IzP66BCEW1HmVkQTsyOP5cDFhl8+9xnwuG+9ihbbGgvgzsDGkLPq8W9m
	 uj+FN2b4HToRibbz8L8aeL1qVylwebgrCSfeNtOB8H0+tbzhoRxNsGEZGVF6L7CmOk
	 g+GPNR/3Q6A3tj5j6NWEGZ+tvzcSzF+sNHpmyIOtGRne5arKj0ptSSw6NG+DgQxyF9
	 aI2kSmT9uL4AMqErktDSyer+mSzgrnwjXUvhi1E0mWQwj8h5htoGBGFStBMt9f9CmW
	 m9Qlypb58K2SX8WPBpJ0eVhPMecvBLbi9h21NFU5b1x/M7PvsF+AxFlx9eXcIKpns2
	 uTkPARGwbylbQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-eopbgr150084.outbound.protection.outlook.com [40.107.15.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E5C5B3B2A4
 for <cake@lists.bufferbloat.net>; Fri, 29 May 2020 11:24:57 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SPbEay6oJ2aomsTPvEOBB2+e0cl5g3fMGO8RgC+kcG53hveQRmDWu/NWJcMVtHpay0Q+3vtMQ7ghBgtb4jCdnkq40GxZEu+i8p+L5J7ttui6PIxSs1NBdNuH8nSKPpOoeoHEyRbDxmpAOQfGuLNhyX6endyAI7p0j/dhzDenUBolywffDPd3p53f4FdcmiL1s0GW9d1F/6H2Uugyo4gFp2j3G9n0myQJBbQd2spMaeXcRERGd0m6tBEj1y+jRvvHqmUWdfrPXhKCWXCmJH0vN7wX3OEj4/oylDB8XRS3Ll9pgDyL9EUZ1rJq+NDN4NBW5zGp72hBKfAMcrH55De+Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y5uPJQlEU3FmrZ7VOtaFnAgdHZxitaSyjFKOBw1VotM=;
 b=TePjGeipfl+R5NKOJ/fl84taO7gFpfzwqvYf1nUKsjB3c8O9Ev59HJ6GbVHNXO+8rrLG9Un459vwLr/Es2+Rrz+T7Tk762VEQcRY3aY9MlqOQPMgNJBdCLZR8dXdztWUA9So557T2owWGbL0i+BbbQ3DKwGQQe3S5jRkV0MwC+KEvoSltqWbMZW0DHrWELnkxJlv6IF3XOkpFX2vd3WfyL0bpV1vfHL8UgzJ0zdjYK6ymgoyynVtaXhsWmYltkCgrO/u7t3aebcz9R/evFjqm0m6y/r9LuZSZfsDluvU7ulvrYewOjVahCqz57Kuwp3ks3M0o0uHx/+hI6qoCuUcZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y5uPJQlEU3FmrZ7VOtaFnAgdHZxitaSyjFKOBw1VotM=;
 b=mMCWPD8nYH8io+LU25a/f2ypgDKH8fJuBudZo4hl66gITaArrHj1ub+nIV9jGpDECgvTubgSWaLz27U+l/R567HNF9tIfLe9IlttEzoLxU/KdvO5Yt1phYxtXXVQBaUAdKcHblmg0Eg39o5PwetHlHH5kZ9zBZcJe1cZkYc0ILk=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB3582.eurprd03.prod.outlook.com (2603:10a6:803:34::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Fri, 29 May
 2020 15:24:55 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2%4]) with mapi id 15.20.3045.018; Fri, 29 May 2020
 15:24:55 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Cake List <cake@lists.bufferbloat.net>
Thread-Topic: [Cake] Playing with ingredients = ruined the CAKE
Thread-Index: AQHWNaDfLvJRX90lNUWg0E2NWUhvpai/L1iA
Date: Fri, 29 May 2020 15:24:55 +0000
Message-ID: <30B03A82-420A-4A9A-899B-8549692AF9DC@darbyshire-bryant.me.uk>
References: <5136DAB5-B975-4D36-948D-A5A4167A8FC7@darbyshire-bryant.me.uk>
In-Reply-To: <5136DAB5-B975-4D36-948D-A5A4167A8FC7@darbyshire-bryant.me.uk>
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
x-ms-office365-filtering-correlation-id: e4c3d00e-8d7a-4431-4212-08d803e47113
x-ms-traffictypediagnostic: VI1PR03MB3582:
x-microsoft-antispam-prvs: <VI1PR03MB3582D9F3A3BF5C10DE591457A58F0@VI1PR03MB3582.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 04180B6720
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: diLRi18kG9QKdlbUGWUkrv30HZvQ6rTlSInIIJoCTvbZ+HY86S9hsiEO4R2oNIPen8iUzKpbkMGfX6cqFdTxhvezYMFGqXY7OvaxRFvWzVG23uLiioTFxUlOSNVSYgOHotCRgsBYlc8XDEoRGClyCML3V1ebdfoe5rD3P3bYbhvOBVxmMzKXeGoRn8OzSGmz2wOOBpASArOxWT1dj/9Zqp5GUzgyFq8iDUUV74zCQPzLQGx/l7terjwcJswjGzSYzhWtvcvohoT7CsNzSTKZBtiZha0unVTY6V7ZGOru96rap86ntiXFj0HgtfNbZNGqujH75agCYUk0huNKvsrKwg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(376002)(366004)(136003)(396003)(39830400003)(186003)(316002)(33656002)(6916009)(2906002)(8676002)(86362001)(8936002)(53546011)(6512007)(6506007)(66446008)(91956017)(76116006)(71200400001)(2616005)(83380400001)(66946007)(66556008)(64756008)(508600001)(6486002)(36756003)(5660300002)(66476007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: ZP2RMhmvAeKV04AZscqyJWjMbJ1OFHY7zASjDSq1bLzOeeYJjGPuPyNwp1qsvV52QOO5K3c06RfkpzDuPbshzq9tV4si48vu7nxqRU4yNuAbWvWyO0JUhiax/M45uszwnEk4uhq3ob8SzIbgZLwEPvuWqROvzrawFijG+QzUukPX4CowehVuFYCTOzFe6RWYHK2B6e5nz/LQSUEfDKD4UNN1Rc2Cc5qB9CkeWTq03FBMLeobeh/XqmbyeQE71ShKN3mGejcGpaXe1eT88tn3PH0EqgxAaOepMsTss/5nEvtjUUT0Fm4fT6JoOpWxC9Yyz4tSp7hWQ/DOkKe+y9Xjg2CZQqiBoLIQJMgC58GeIPyLkY84C8coCRWQuftBVVbsXmiRVTcUpIVEMlVIC0fIf9ermdvQG0Kpj8Faq1jFE0x0CFIe3KdQPKm3GuwCuCoL5YhQHJ7UZ8vbroFUPHLiKkBPW6tQ+QmVDkjcKfdoWz2b9QZLFopk+80vziFa2KgGu1dW279LTyHaShZ/Y1srHg==
x-ms-exchange-transport-forked: True
Content-ID: <30CC0900F129674584254EEA08DCC1B5@eurprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: e4c3d00e-8d7a-4431-4212-08d803e47113
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2020 15:24:55.6120 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DUTADGXB5//KZ0GKBY1CKVV8MEeu6TjVFMSsJGmgmyJ9EhzK4fj9NKtVxxTGM9rSycEOlzeDamDUqHiTssiBufCOb4Uutl/fkk3OT68JQx0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB3582
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

DQoNCj4gT24gMjkgTWF5IDIwMjAsIGF0IDExOjA2LCBLZXZpbiBEYXJieXNoaXJlLUJyeWFudCA8
a2V2aW5AZGFyYnlzaGlyZS1icnlhbnQubWUudWs+IHdyb3RlOg0KPiANCj4gSeKAmW0gdHJ5aW5n
IHRvIGNyZWF0ZSBhIOKAmGRpZmZzZXJ2NeKAmSBmb3IgdGhlIHB1cnBvc2VzIG9mIGltcGxlbWVu
dGluZyBhICdMZWFzdCBFZmZvcnTigJkgY2xhc3M6IHNvbWV0aGluZyBsaWtlIExFPUJpdHRvcnJl
bnQsIEJLPUJhY2t1cHMvbG9uZyB0ZXJtIGRvd24vdXBsb2FkcywgQkU9QmVzdCBFZmZvcnQvTm9y
bWFsLCBWST1TdHJlYW1pbmcgbWVkaWEvZmFjZXRpbWUvem9vbSwgVk89Vk9JUC9TSVAuICBOb3Qg
dG9vIGhhcmQgeW914oCZZCB0aGluaywgdGFrZSBkaWZmc2VydjQgYW5kIGFkZCBhIHRpbi4NCj4g
DQo+IEkgZGlkIHRoaXMgd2l0aCB0aW4gYWxsb2NhdGlvbjogMD1MRSwgMT1CRSwgMj1CSywgMz1W
SSwgND1WTy4gIEJXIGFsbG9jYXRpb24gcmVsYXRpdmUgdG8gYmFzZSByYXRlID0gTEU+PjgsIEJF
Pj4wLCBCSz4+NCwgVkk+PjEsIFZPPj4yLiAgVGluIGRpc3BsYXkgb3JkZXIgPSAwLCAyLCAxLCAz
LCA0LiAgSW4gdGhlb3J5IEkgZG9u4oCZdCBtaW5kIExFIGJlaW5nIHN0YXJ2ZWQgaGVuY2UgdGhl
IGFib3ZlIG9yZGVyLiAgVGhpcyBwcmV0dHkgbXVjaCDigJhqYW1tZWQnIHRoZSBzaGFwZXIgYXMg
c29vbiBhcyBhbnkgdHJhZmZpYyB3ZW50IGludG8gTEUgd2l0aCBvdGhlciBoaWdoZXIgcHJpb3Jp
dHkgdGlucyBzZWVpbmcgaHVnZSBsYXRlbmNpZXMsIGxvdHMgb2YgZHJvcHMgYW5kIGdlbmVyYWwg
YmFkIG5ld3MgYWxsIG92ZXIuDQo+IA0KPiBJIHRyaWVkIGFnYWluIHdpdGggYSBzbGlnaHRseSBk
aWZmZXJlbnQgdGluIGFsbG9jYXRpb246IDA9QkUsIDE9TEUsIDI9QkssIDM9VkksIDQ9Vk8gbW9y
ZSBpbiBrZWVwaW5nIHdpdGggdGhlIGV4aXN0aW5nIGFycmFuZ2VtZW50IGFuZCBkaXNwbGF5IG9y
ZGVyIDEsIDIsIDAsIDMsIDQuIFRoZSBzaGFwZXIgZG9lc27igJl0IGFwcGVhciB0byBvYnZpb3Vz
bHkgd2VkZ2UsIHRob3VnaCBJIGhhdmUgc2VlbiBzb21lIGxhdGVuY3kgc3Bpa2VzIHRoYXQgSSBk
b27igJl0IG5vcm1hbGx5IHNlZSwgc28gaXQgZmVlbHMgbGlrZSB0aGVyZeKAmXMgc3RpbGwgYSBj
b3JuZXIgY2FzZSBiZWluZyBoaXQuDQo+IA0KPiBEb2VzIGFueW9uZSBoYXZlIGFueSBpZGVhcz8N
Cg0KUG9uZGVyaW5nIG91dCBsb3VkOiAgSXMgc2V0dGluZyBkaWZmZXJlbnQgKGkuZS4gaW5jcmVh
c2VkKSBjb2RlbCBpbnRlcnZhbHMgJiB0YXJnZXRzIHNlbnNpYmxlIGZvciDigJhhcnRpZmljaWFs
bHnigJkgcmVkdWNlZCBiYW5kd2lkdGhzLCBlc3BlY2lhbGx5IGluIGluZ3Jlc3MgbW9kZT8gIElm
IEkgaGF2ZSBhIDEwMG1iaXQgbGluayBhbmQgSSB3aXNoIHRvIGhhdmUgYSBtaW5pbXVtIHJlc2Vy
dmF0aW9uIGZvciBhIGxvdyBiYW5kd2lkdGgsIGxvdyBwcmlvcml0eSB0aW4gZS5nLiAxbWJpdC4g
RG9lcyBpdCBtYWtlIHNlbnNlIHRvIG1ha2UgdGhhdCB0aW4gcmVzcG9uZCBzbG93ZXIgYXMgaWYg
aXQgd2VyZSBhIDFtYml0IGxpbmsgd2hlcmVhcyBpdOKAmXMgYSBtaW5pbWFsbHkgcmVzZXJ2ZWQg
cG9ydGlvbiBvZiBhIDEwMG1iaXQgbGluayBhbmQgaXQgY291bGQgYnVyc3QgdXAgMTAwIHRpbWVz
IHF1aWNrZXIgdGhhbiBJIHRoaW5rPyAgRWdyZXNzIEkgc3VzcGVjdCBpcyBsZXNzIG9mIGEgcHJv
YmxlbSBpbiB0aGF0IHdl4oCZbGwgcXVldWUgdGhlIHBhY2tldHMgYW5kIGV2ZW50dWFsbHkgdGhy
b3cgdGhlbSBpbiB0aGUgZmxvb3IsIGJ1dCBpbmdyZXNzPz8/DQoNCktldmluCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0CkNh
a2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cmh0dHBzOi8vbGlzdHMuYnVmZmVyYmxvYXQubmV0L2xp
c3RpbmZvL2Nha2UK

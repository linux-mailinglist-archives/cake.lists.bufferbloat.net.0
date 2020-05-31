Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 855C01E99CB
	for <lists+cake@lfdr.de>; Sun, 31 May 2020 20:08:36 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5F22D3CB38;
	Sun, 31 May 2020 14:08:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1590948515;
	bh=00uYRcSR2g9CZheFBusDuWV7LRMTwXp0/S6jfRDGUj4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kik19sk0C/J8oh/ocGswyceGUIPn4Rg4L3v0tKjyP8x5DkLB17NWNxi0h5Dpd8kKm
	 C+s+KPsBxrMm7kwMjozcHTQ5usB3fxuA2J1xUDOnCc37Z/Q5LGFjdJr/xsIsAfvOYk
	 Jw3NNOkhmRcpCp86B1FJk8Pzeg4wavIL/WEDIje557tab/t4ahrt0Jw80Hf7JHcWAf
	 SVT6AGCqH/4da1I2+2dWaumXRVhhIMib3yp0kh8P+vf1CT7iQhW2QyBIRS2lePCNzb
	 zbTwQNeIy3z1sAbHYHVuKyY7oJ+RZG9kZDEogqfExD2WGhtjs4Lg0w6kKbpmn/R+ih
	 Q7wBwMmL8UvqQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-eopbgr50051.outbound.protection.outlook.com [40.107.5.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 534013B29E
 for <cake@lists.bufferbloat.net>; Sun, 31 May 2020 14:08:33 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=npnrEncrVVWNfq7QpIApPYIogaht37NW+FBtNV1Nt+r33Ni8xUmw2mVqn6FTH+WsDR8bxYD7SAhdLMsO1mDsstxJOwRVyUq0DTMVjAa34FR7bJveM4IKRlUJi1mwLtmeLkdRcTNfUUoD/2tr3kW6UBXCHtpXmHOAJmvsiYyC0yMXsTykVVK/qIZeCS4Qrvx2iuk4bsNkLd7t4wLkDxPJOzs0vbU2td49aI+mS5Ah3A0/xuwtxW2RSIxEiKT387TerK2OXZsGjTkOaFpLEmVNq39AQcVHGBUXham/qO/jIp7f032edMkDDYr72l0tijF5G/CI+BZ5sVeXF9ZrgmXAEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q5jQwNdUcte+QLiD5zKw8xAgh/JW7+P+9n1UefetZ1M=;
 b=HjtKmWZt5TUEPnoLjW9yDt3rv+TrMgntRtIKhsiHa917z5iRwJpumOV1/MHVQqSgghdsm/Cu71UGL9isjY8Qo7SNYdDXcO7oV8grjHdU2fwiGvDNIAZ5PMoycy5pG6X3wPFTOHRdg8y/xCRQ+a7bUrS3lKiPSTylKzwvvfz/t6Cd54DmcYywqJudGG+K1CSL940inSjwufYFCG4+5cdt9dYII/w235fSvvXxjvzvuGWQwICYwmotXsnS+u+WAmFRryge6TpuelwOz7/r5SGpzCFBhVc6RhaklO+cch1uvPqETZU5+k+S910G+jQrNDR9qMyXfGQGptsl1X51hHqBiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q5jQwNdUcte+QLiD5zKw8xAgh/JW7+P+9n1UefetZ1M=;
 b=CnODDzc/7JXZ8bmWr6WX32QGnf2gcwpynoPaBKgOQyRDdPERuw5mmzLTRhw7c1zjdya6lylnkPUotUXOE90gTbA42hbBSCZUx4Xb8iuZ4gEuqaYywLcV9G5wsnDwyKwYdIGVREEQdzDUFyFmXwiiuTfVHv6EX2zP8E6vZp8lpNg=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB3040.eurprd03.prod.outlook.com (2603:10a6:802:2f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Sun, 31 May
 2020 18:08:32 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2%4]) with mapi id 15.20.3045.024; Sun, 31 May 2020
 18:08:31 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: John Yates <john@yates-sheets.org>
Thread-Topic: [Cake] Playing with ingredients = ruined the CAKE
Thread-Index: AQHWNaDfLvJRX90lNUWg0E2NWUhvpai/L1iAgALLOoCAAG4dAIAACDMAgAAFMACAAAungA==
Date: Sun, 31 May 2020 18:08:31 +0000
Message-ID: <74B276D6-8CF0-4B85-B241-D1330B801462@darbyshire-bryant.me.uk>
References: <5136DAB5-B975-4D36-948D-A5A4167A8FC7@darbyshire-bryant.me.uk>
 <30B03A82-420A-4A9A-899B-8549692AF9DC@darbyshire-bryant.me.uk>
 <2BE61C3D-EED3-405A-A7AF-BA7B7B5B8B03@darbyshire-bryant.me.uk>
 <CAJnXXogEindF=KvVOZUVa1VeZGDVA8hCNfaBAmh6HkJ_sjwPZg@mail.gmail.com>
 <7D02924D-1B16-4274-8BBF-6CBAA59CBB59@darbyshire-bryant.me.uk>
 <CAJnXXogZHu6Rv2RdVtZPh0MKrJL5UAmHsACDV2rG7Uq6KW74gw@mail.gmail.com>
In-Reply-To: <CAJnXXogZHu6Rv2RdVtZPh0MKrJL5UAmHsACDV2rG7Uq6KW74gw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
authentication-results: yates-sheets.org; dkim=none (message not signed)
 header.d=none;yates-sheets.org; dmarc=none action=none
 header.from=darbyshire-bryant.me.uk;
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bcab6def-4951-4c73-7bc1-08d8058da0c0
x-ms-traffictypediagnostic: VI1PR03MB3040:
x-microsoft-antispam-prvs: <VI1PR03MB30405C1644FB26A8BAB13092A58D0@VI1PR03MB3040.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0420213CCD
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WG+0OMDKGtcAmXZZ8IwXmyMZtbZEF/q6dKHaDhpbu11QVPLBJ/YSiGnvIEejnTnfdAvvJhXh1mfr3a+zmxuIE5LHwvzWYL2t/hIuac4PatN/vvIMOIrX8dIkA85wiupFviRK7u99TLSuW68rB/H8dOdg5yhzNMyM315BjlUQarrp2N+hIo2JTmAxUonI6atHZ3MGW3G+3OQBLmXLzEwVTAMrWnLMszNvPZ09hV8Kuzls25rPUtQ4TlYYVbNP84v81J7QgERFsTYiUCX3rmlwYNW7GA9+My8MEAdlv2P4Jch/n6e+IlbsL/FeZ6iT9Hp4lLU08BakgAfxFcGSTPOCd8mntPajf5wBsJFVG3T+jpC0IOfxAvXV7JC15jzCYifWxpe0YctVbVjnjSw2PpAxHA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(39830400003)(346002)(136003)(366004)(396003)(66476007)(66946007)(66556008)(66446008)(64756008)(76116006)(508600001)(91956017)(6486002)(966005)(6512007)(316002)(86362001)(8936002)(36756003)(4326008)(2906002)(6506007)(53546011)(71200400001)(6916009)(8676002)(5660300002)(2616005)(186003)(33656002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: kiTOyszwE1Y6VsOVBm5rn/6Q7xO3YrfVu5PwOJ2uJYX+UJCLR/k91MlCSDoyjqImyKW6hVgUwAfMZKO4GE2Xf2phSnWEjbeGyv0TDQ3kBRNVy6X2viBh6JmGXZjmjpT+C8pxB1DNvjOk1uoPccY+SHnLrgEQ/e6e8NqesUjh0QhXWz/0h6y2efwkvQfteB1Nu1NWAZ9pfjgk3zrAuFKLrBA/nXwI34OmtyySeW1B+rmJhoLUH9A3sO81nf+OXPdrE3ILr55jruZ/xX0MxnuouJ58rDnMHlVsjmakUdHeUaJNl0SbRsyBgDkN5u75WX4C0DOLQOOVsdPsvzIICJS1NWF7tQ8nTi3NszmGhoQfivU86Q+mW3NlOjypS9dDPbjqgRltToRuXF/8IRTOivTa+jgzG8MX+Wap3uWX8fcUsELD+Gi5vJ67HYlI5G7WGEJjZ1FlqIhnFYBTx5clMo190aCbT2vGAjRewiom1zM2XgYqst1JQlDWjGjObPJ98F2/sb4nJFfJHNMl9CW/27pj+w==
x-ms-exchange-transport-forked: True
Content-ID: <5838575CBC13324DA774DEFA1F64700A@eurprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: bcab6def-4951-4c73-7bc1-08d8058da0c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2020 18:08:31.6752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G3NsVgJGTQPcz8nB3IvPqB8KIykvaqgApZ76Q4FXdNBzZTJRPPu2fdMD2jcyF2NeoZhFhNI24m5YG0scG9HLudmVuBis7iUz+ieuWCAXqb8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB3040
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

DQoNCj4gT24gMzEgTWF5IDIwMjAsIGF0IDE4OjI2LCBKb2huIFlhdGVzIDxqb2huQHlhdGVzLXNo
ZWV0cy5vcmc+IHdyb3RlOg0KPiANCj4gT24gU3VuLCBNYXkgMzEsIDIwMjAgYXQgMTowOCBQTSBL
ZXZpbiBEYXJieXNoaXJlLUJyeWFudA0KPiA8a2V2aW5AZGFyYnlzaGlyZS1icnlhbnQubWUudWs+
IHdyb3RlOg0KPj4gSSBoYXZlIGFic29sdXRlbHkgbm8gaWRlYSwgZG9u4oCZdCBhcHBlYXIgdG8g
aGF2ZSB0aGF0IHRocmVhZCA6LSkNCj4gDQo+IE1lYSBjdWxwYS4gIFNob3VsZCBoYXZlIGluY2x1
ZGVkIHRoaXMgbGluayB0byB0aGUgdGhyZWFkOg0KPiANCj4gaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvcGlwZXJtYWlsL21ha2Utd2lmaS1mYXN0LzIwMjAtTWF5LzAwMjg2MC5odG1sDQo+
IA0KPiAvam9obg0KDQpBaCwgd2VsbCBhZnRlciB0aGUgaW5pdGlhbCBleGNpdGVtZW50IHRoYXQg
4oCYb2ggYW4gYXBwbGljYXRpb24gYWN0dWFsbHkgc2V0cyBEU0NQ4oCZIEkgY2hlY2tlZCB3aGF0
IG1hcmtpbmcgbXkgem9vbSBwYWNrZXRzIGhhZCBvbiB0aGUgbmV4dCBjb25mZXJlbmNl4oCmdG8g
ZmluZOKApiBCZXN0IGVmZm9ydC4gIENydXNoaW5nIGRpc2FwcG9pbnRtZW50IGxlZCB0byB0aGlz
IGluIG15IGZpcmV3YWxsIGJveDoNCg0KI1pvb20gLSBjb25uZWN0aW9ucyBnbyB0byBab29tIHdp
dGggZGVzdCBwb3J0cyA4ODAxLTg4MTANCiRJUFRBQkxFUyAtdCBtYW5nbGUgLUEgUU9TX01BUktf
Rl8ke0lGQUNFfSAtcCB1ZHAgLW0gdWRwIC1tIHNldCAtLW1hdGNoLXNldCBab29tNCBkc3QgLW0g
bXVsdGlwb3J0IC0tZHBvcnRzIDg4MDE6ODgxMCAtaiBEU0NQIC0tc2V0LWRzY3AtY2xhc3MgQ1Mz
IC1tIGNvbW1lbnQgLS1jb21tZW50ICJab29tIENTMyBWSSINCiRJUDZUQUJMRVMgLXQgbWFuZ2xl
IC1BIFFPU19NQVJLX0ZfJHtJRkFDRX0gLXAgdWRwIC1tIHVkcCAtbSBzZXQgLS1tYXRjaC1zZXQg
Wm9vbTYgZHN0IC1tIG11bHRpcG9ydCAtLWRwb3J0cyA4ODAxOjg4MTAgLWogRFNDUCAtLXNldC1k
c2NwLWNsYXNzIENTMyAtbSBjb21tZW50IC0tY29tbWVudCAiWm9vbSBDUzMgVknigJ0NCg0KV2l0
aCBkbnNtYXNxIGNvbmZpZ3VyZWQgdG8gZmlsbCB0aGUgWm9vbTQvNiBpcHNldHMgd2l0aCByZWxl
dmFudCBJUCBhZGRyZXNzZXMNCg0KaXBzZXQ9L3pvb20udXMvWm9vbTQsWm9vbTYgDQoNCldvcmtz
IGEgdHJlYXQuDQoNCkNoZWVycywNCg0KS2V2aW4gRC1CDQoNCmdwZzogMDEyQyBBQ0IyIDI4QzYg
QzUzRSA5Nzc1ICA5MTIzIEIzQTIgMzg5QiA5REUyIDMzNEENCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=

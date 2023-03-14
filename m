Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CE76B9C7A
	for <lists+cake@lfdr.de>; Tue, 14 Mar 2023 18:07:30 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5B83D3CBD2;
	Tue, 14 Mar 2023 13:07:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1678813649;
	bh=ktoMq6aH0DhstpVRvUFUy2YWZDE0Z7YJ9ine62nFTU8=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=TLiNJxo59bLEjpYyv+Av6mOiTq901dQYCkVU4ivm60QxqHmS9mP8avc/KeB7aLnmT
	 bjhnx6rBmqmZBSICPZki3fY4maeUbQATRHHiIoGYPqfaGSsgyyZJW1hlnTSjH1Zuz1
	 doXguJscrujnyFiW7VM77tioMGBFcHeXGS3j0YRUzJRGI+ty9vBJaPb4MFxEYgYp3J
	 kQKu+ayGIplNX4SMW+I6TOOONgjV0ialHpnAKNaXDI15pHnX/EDRwmd9177HK8G7aq
	 gJmP9TOSJ49pOUkS8sIFpPX2ThGT2SluqzGbT8XLGNt6DZXYU5aXZg4z0IyJnt6WV8
	 bqWxPdiH7XH9A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam04on2128.outbound.protection.outlook.com [40.107.100.128])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id D97583CB37
 for <cake@lists.bufferbloat.net>; Tue, 14 Mar 2023 13:07:28 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cBUG7fb89mTJ+I/yQkVVNVMImFc9/t/8SDDyx4Fp2UUA6TFPmIeSfvpjMrzJI9QZEhKOG6G3iEWnXiUDD4aOy9nFMX4qEQIJ+/rF+PhmFjywj/k+5ySHoyBAOSM5TqlHwog509h/gbgLq8ptMiVW+SP11hZumKUlWhGkNX39gpGrTq2wLT5BcYu6vm2OP3uMsPcBap4wZWhPQjOH4YScAHXPmK4yiQow1Ruh1IaeqYiwZIT3V3z/dP7K3bydErxM2lsNoW4OL0Sb0tNWQzle5Bd5Ntv7dgJRyuLinz4hlzQvaepbbi+7Gb8GkFjI3g709Haw6pc0KLzsXrkIu30jOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VQ5g1gBN35tNDM7W+EmUW/WfcWQJH/Piz6we6BOMgEE=;
 b=gqS4daaTiyJhHuMmfcJeyJXIO7lxmIC2TvOwOpEBp+YrvQDelcib4j6izlEf879iqMcxzZJPEs7DQxz76iKOBFXlNhkZZZnX9QJ/gntcpzSfTVwGzR7Vtl7nHitLClTSQfr3zr16uXi4V61vXksKZTAtlL1mDH2eSMOl4MRQpcNsen9CMv2QKiE16GE9NjUpIieS7PbgbsoC7BuZDT6esO8Gs/9RyZdzO7Vv28QdnNpDYTKUUXRt9MQoqQMA6MkhXwkLf4I3HO1Qg7v8hRYHFi8f87Ba2gtNxu9YL1HZuJY4BzgKTdYhruYQvDiJd5IYbnW2IyFXeHgcMX4EW4GoMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cablelabs.com; dmarc=pass action=none
 header.from=cablelabs.com; dkim=pass header.d=cablelabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cablelabs.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VQ5g1gBN35tNDM7W+EmUW/WfcWQJH/Piz6we6BOMgEE=;
 b=hMihglnb0sMjJwAb96na3QyRIuTeKYhuUXP7pfGvQLjUrJi7Ct61TDFM+OzpOOi5HRDE+RliAhB9Scstc6Oqs0Hz1H7yBv+lR8P3m31tWbsHgvBDuXYsub0oRFL4cIzwaJwZFw/Fttze8osIaq7qyAUs1l97CdDzuTIllt7ZZAC9/VhxzSNUnKRH2QCd06fqHxd5p4axHLvDcmyzevWVrFeHVuQaBCbn5RziIffc4U5Nd1H+rilFfR+YaEzBRRImIk3TpM9hIvf8G2iLWNNzybBDJWckvRvCrLuv55hg97+ZQhdix29n55MeMPD5kyXkoBruuDbQAbGb9YAW6MY5SA==
Received: from BN8PR06MB5892.namprd06.prod.outlook.com (2603:10b6:408:ce::25)
 by PH0PR06MB7933.namprd06.prod.outlook.com (2603:10b6:510:a6::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.26; Tue, 14 Mar
 2023 17:07:24 +0000
Received: from BN8PR06MB5892.namprd06.prod.outlook.com
 ([fe80::656e:9b0b:b49b:d084]) by BN8PR06MB5892.namprd06.prod.outlook.com
 ([fe80::656e:9b0b:b49b:d084%3]) with mapi id 15.20.6178.024; Tue, 14 Mar 2023
 17:07:24 +0000
To: Sebastian Moeller <moeller0@gmx.de>, "Ruediger.Geib@telekom.de"
 <Ruediger.Geib@telekom.de>
Thread-Topic: [tsvwg] draft-ietf-tsvwg-nqb-15.txt vs the cake AQM
Thread-Index: AQHZVn2QY2isdk4gqE2SQVTbhBhZEq76YOwAgAAckAD//5/YAA==
Date: Tue, 14 Mar 2023 17:07:24 +0000
Message-ID: <8D53FA5D-3B36-4B7C-A7C8-DD0FAAA695F0@cablelabs.com>
References: <167348364734.15098.9183646444272144529@ietfa.amsl.com>
 <FR2P281MB1527B1114EA0718F8BB19DBF9CD79@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
 <659CE6DE-2B9D-4210-BAF8-BCC99E2ED875@cablelabs.com>
 <FR2P281MB1527003371292BDB9F08764A9CDE9@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
 <DEB97936-375A-41C8-8ECB-E33F94D30056@cablelabs.com>
 <FR2P281MB15273966161929E8BAB937869CA29@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
 <7434C6A7-4CED-4D39-A852-2714AB9DA1DC@cablelabs.com>
 <FR2P281MB1527C89A1654A77FAD6A24AF9CBE9@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
 <CAA93jw4_MAX1DULpvU_Uo7BuyvvRpqZ-_gZP+HbhC251osCT3g@mail.gmail.com>
 <FR2P281MB15277B495C9274E1B8C7DDA59CBE9@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
 <68DD535C-620A-4227-B6A3-967010D4240A@gmx.de>
In-Reply-To: <68DD535C-620A-4227-B6A3-967010D4240A@gmx.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.70.23021201
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cablelabs.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN8PR06MB5892:EE_|PH0PR06MB7933:EE_
x-ms-office365-filtering-correlation-id: 87c213ae-fe73-401a-cd37-08db24ae952a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hcQfBZ2Kacx7oAofjAW2io+fEltS33kjIR2EIF+0VlU283/O1NxsaDmYXFz2d2lP3C1wyCUGYYcopqPvvBfHkYUdLN9FAX2md2vkGTlau4ot4wRYHVj5Zr9U3lKl5k+/ZpK3h53YEtf0tWZEdboj/wYrew2iJ+dsXUGlx1SPfC0tElO56CkjYdLhk2ZNVcSkQjDPbKZUmilqdaVX9AK2Egz98D7h+3qM5incEEh+4e8wO6h8wP/g6A9THi5Sr4q5bQl9SQoNNghQe7hU1h8qwNIVUoCGIHu/ziwZBLeNhjgUn3EU54DNkYuecmH/cb1c+PmVunZYRNf+e7+pg5EgAvYS5OIzO6JhBo5kki9kJGHFYK56uaDaHIne30I4Z/Zvec4Xjef951oAB9CHNPmvi5udIgT/gg0yZ4kELc+eix4C4s4n1g22K+eT4J/VXYMsVOR8f8aVSJ13S7X5xBABYugPWiiIB6g/G+7vlGz2IvIRJ7GPhR0hDC2aUA6DO2gsj7F7ZMg7GHGYLVtjy3fwYVnHUPBuMDGb7aAptAHZGr4Q+1gwvRSrt7eFp6fUK+f4+w2AaMrpBZ9/TsvT81HzrdC/F8B3CIhdV+RRpfB5F+/b8zrLVQFAuknXTyZjFEyRr5dKbsnRUzBYqWirp9flnb6XMvDGxTdBICUKMgQ7yPri6loaQfqOq5z0qigpK2h+2INdRYHC0r+Iz2GP/mM9bZT1/qf26WItmS2jBcSQwrA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR06MB5892.namprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(136003)(39850400004)(396003)(346002)(451199018)(66899018)(316002)(54906003)(36756003)(110136005)(33656002)(86362001)(122000001)(38070700005)(53546011)(186003)(2616005)(26005)(6512007)(6506007)(71200400001)(5660300002)(478600001)(6486002)(66446008)(38100700002)(8676002)(4326008)(41300700001)(91956017)(8936002)(64756008)(2906002)(76116006)(66946007)(66556008)(66476007)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UE5yVnFhTFNrOWZVLyswM1lpWmxqWHcyaHU2Ujk4MXk2Y3ZEUlhUcjJXNW9i?=
 =?utf-8?B?WWRxUklhWFZvLzJEaHhoM2Z4V052RjkrcDJLSDhFaVRodVBpYnFtZFpRQjk0?=
 =?utf-8?B?QUN6K3NoVXN2a3Bta203TENPV05uNXNqM2NOTWdXN0RrM2UzYkY1YnVVUy9J?=
 =?utf-8?B?MkdDY3dGWGhTQmk5c1JKdEFGb3NSeklIYUVzNWlQTlZ3dS9NbmY5Wmg0NEdD?=
 =?utf-8?B?c3AybnBPNVZveVFvRldSYzBraXd6dk1RcG5TVG4wS0ZGelJYblJUbmhIK3VK?=
 =?utf-8?B?NTZKdW1xU3RPZzU4L1RGQXR1QU1rN0J4U2Vycm9PR0hCQVJ1akpiSWp3RUVr?=
 =?utf-8?B?NGIwMkZ4aHM2SGlGcjBqS2VXUHNtUEhNajYzR2t4Tlh1ZlRhb2tVeGNBY216?=
 =?utf-8?B?MmZscHk4RzBiZ1dzQXh5d2lENUFpT1gySkI3MlBaa1NrOFo2eHVMMzJTajZZ?=
 =?utf-8?B?SStHNXcyT3ppNHFGS1htRHpWNmpJdlpGZHpjSW9pdWNzSjEwTkdjcVE5MEI4?=
 =?utf-8?B?akVUNmhzUnVXS0ZvNEdvNjV3ZFI4eTYvZC9OV3FiN2ZOOThzSUJYMTBwRXJj?=
 =?utf-8?B?TDh2akRvZkdoN0NacUpDcERWdjBkVkV5cUdYUjFSdW93TzM0R3JIOWRzRUdP?=
 =?utf-8?B?MThKRWpadTFYc2paYVArR09tU2VIUGN4OVU4TE16K3o5V2djdGFuVGt0N1Vn?=
 =?utf-8?B?Yy9vekFRN3E5elluNjAxMVlkYjBNM1c3ZXk1MkNxVEsrakUyZ3p3aktiSXJN?=
 =?utf-8?B?TWNuWVRDOEtucjl4NGZ3ekNMQXcyVGpkN2t3bUNYRnZNaitGcUNnZWNQcFNW?=
 =?utf-8?B?Wmd3TnN0ZzEzQ3NHTGROazBBWHRjb2RHUHhwNUdEZUNSaUczaDl4MW9Odit2?=
 =?utf-8?B?bUlLUm9idW9KTU4zRDhoeDJQSnJvUW0yZ2VBVDBIYklkSHVpaFlkQi81Q0Zn?=
 =?utf-8?B?bnRFWTBxNmIyUldoTldSZGdWTU9LQ1hwTzhFT21PQlMzK1pDZk5waXFOeDJl?=
 =?utf-8?B?WEhZbnY5SjBEdVZpbytPMXhDaE9adXRSOXNkYzVXZGZicWRObmJXdEYyNW0z?=
 =?utf-8?B?VFMybXdkc0M5U2hNRVlqWnJtelFvaElmZWcySnF4eHNIV2plOCtiZzV1clhJ?=
 =?utf-8?B?K1FHanR0cDZ3eWJHcXcwMTR3cTladmV0bEJzeXFESEc4b09YMmZhODhIMk1E?=
 =?utf-8?B?Z2Nsd1R4WjBHaFBZNlJzNGc3ZENnWDU2cHB4dE5qRlJaMDg4cUQvMGdnRU55?=
 =?utf-8?B?dmxFcEJPb0thL0NEUzlMK0U2QjZYNzZqV240WGh1MEFUdVBMNVRSeEUzSmQz?=
 =?utf-8?B?djlVbk85RG8wblZBcTFLaEpadFBveXZDam9CTXcwUFFzTXFJL3QyNXpyd0xB?=
 =?utf-8?B?cHJNY0wwWDVjZVJWSGhyTVZFODNKdU9KcWg1cy83ay82bk0wVFlPRFVsc1JB?=
 =?utf-8?B?a3ZtZEFlVTNyTm9vQlVLclhGNmpBaktDditLTVp5K25iRkFoaXp1ZU9VWEhM?=
 =?utf-8?B?NE5NYXVjTmxIcmdWRjhBMGNBc3RSUkcvOFJiWU9XcVR2MllQYS9uSytXc2F6?=
 =?utf-8?B?UkN1YWNQQm1XaFhDb0tMOXZESjRCTnhTQWtSQTBGWmFoSk5SRTBOOERacnMw?=
 =?utf-8?B?TEpBOTdJRjhDOHVodzRmUWlUSk9aWXdOaTF3WjN3dGNUR1plZVBGWEJiU3dz?=
 =?utf-8?B?c0JlWGdJZ2loY25ocWZOcFFldmdEaW4weEtramF5K09ZaVhETEF5bmhGZDEx?=
 =?utf-8?B?aGt5Nk5mdUtvRGtZc2FlVHB1NzA1Y1BpTWVldTRIdHVrRDRlaVlXWi9XRnh0?=
 =?utf-8?B?SWxKQzZKUUg2clBPT0E4UGpwYjdrUm5lUGltaTNJa250Q1ErcE5FckdySzh2?=
 =?utf-8?B?aVczRm5HbUNycUp0cmpjOXZvL2RBSjR1K2pwblkxRVZ1KzBhaFN4eEZjZTRh?=
 =?utf-8?B?bGVkSUhGWGkzbnlLQ0dQNzdZMkExRDBBV0dsVWtlbkxadmJKbkhqSXNEYWRW?=
 =?utf-8?B?SXFjczZPSi9tOEQ4MG9WR1orU21zYjUyRkhNTldOb0d5MEpjZXc2U1JrU0h3?=
 =?utf-8?B?a0VSWGduenJoMTRqL1FIditCV3BiMjM0ZWh4SEl5NWNzS29YWmllM3IzeHhY?=
 =?utf-8?B?eVFuQkVIUEdPdVo0OVFwSnR5REVGRnRJSDh0OUhkazBEZEllNS9aS1pwdCtp?=
 =?utf-8?B?Rmc9PQ==?=
Content-ID: <3D54C56222B5924A9D977BC45E342C18@namprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: cablelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR06MB5892.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87c213ae-fe73-401a-cd37-08db24ae952a
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2023 17:07:24.8108 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ce4fbcd1-1d81-4af0-ad0b-2998c441e160
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xI4xfQtxwEj22pj9/UYZPAtwDlq+wVQ0My2pCqKCZth0oIZ2DDuX1bHx1PmBbPyLZkZ2ESyXqnHAegCb2Tg4jA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR06MB7933
Subject: Re: [Cake] [tsvwg] draft-ietf-tsvwg-nqb-15.txt vs the cake AQM
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
From: Greg White via Cake <cake@lists.bufferbloat.net>
Reply-To: Greg White <g.white@cablelabs.com>
Cc: "cake@lists.bufferbloat.net" <cake@lists.bufferbloat.net>,
 "tsvwg@ietf.org" <tsvwg@ietf.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

U2ViYXN0aWFuLA0KDQpQbGVhc2UgZG9uJ3QuLi4uDQoNCi1HcmVnDQoNCu+7v09uIDMvMTQvMjMs
IDEwOjUxIEFNLCAidHN2d2cgb24gYmVoYWxmIG9mIFNlYmFzdGlhbiBNb2VsbGVyIiA8dHN2d2ct
Ym91bmNlc0BpZXRmLm9yZyA8bWFpbHRvOnRzdndnLWJvdW5jZXNAaWV0Zi5vcmc+IG9uIGJlaGFs
ZiBvZiBtb2VsbGVyMEBnbXguZGUgPG1haWx0bzptb2VsbGVyMEBnbXguZGU+PiB3cm90ZToNCkhp
IFJ1ZXJkaWdlciwNCg0KPiBPbiBNYXIgMTQsIDIwMjMsIGF0IDE2OjA5LCA8UnVlZGlnZXIuR2Vp
YkB0ZWxla29tLmRlIDxtYWlsdG86UnVlZGlnZXIuR2VpYkB0ZWxla29tLmRlPj4gPFJ1ZWRpZ2Vy
LkdlaWJAdGVsZWtvbS5kZSA8bWFpbHRvOlJ1ZWRpZ2VyLkdlaWJAdGVsZWtvbS5kZT4+IHdyb3Rl
Og0KPiANCj4gRGF2ZSwNCj4gDQo+IHRoYW5rcyBmb3IgYXNraW5nIC0gSSdtIG5vdCBhbiBOUUIg
YXV0aG9yLCBhbmQgbXkga25vdy1ob3cgb24gTGludXggUW9TIC8gQ2FrZSBpcyBmYWlybHkgemVy
by4gRGlkIHlvdSB3YW50IHRvIGFkZHJlc3MgR3JlZz8NCj4gDQo+IEkgbXlzZWxmIGFtIHN0aWxs
IHN0cnVnZ2xpbmcgdG8gdW5kZXJzdGFuZCBob3cgTlFCIG9wZXJhdGVzLiBJIHVuZGVyc3RhbmQg
dGhlIGlkZWEgYmVoaW5kIGl0LCBidXQgcXVlc3Rpb25zIG9uIG9wZXJhdGlvbiBzdGlsbCByZW1h
aW4uDQo+IA0KPiBOUUIgaGFzIGJlZW4gZGVzaWduZWQgZm9yIEFDX1ZJLCBub3QgQUNfVk8uDQoN
ClRoaXMgaXMgbm90IGhvdyBJIHJlbWVtYmVyIGl0Li4uIGl0IGlzIGRlc2lnbmVkIHRvIG9wZXJh
dGUgYXQgc2xpZ2h0bHkgZWxldmF0ZWQgY29uZGl0aW9uYWwgcHJpb3JpdHkgb3ZlciBBQ19CRSwg
aXQgaXMganVzdCB0aGF0IFdpRkkgZG9lcyBub3Qgb2ZmZXIgdGhhdCBzbyBHcmVnIHdlbnQgZm9y
IHRoZSBuZXh0IGJlc3QgdGhpbmcgQUNfVkkgaGFwcGlseSBhY2NlcHRpbmcgdGhlIGFpcnRpbWUg
dW5mYWlybmVzcyB0aGlzIGlzIGdvaW5nIHRvIGludHJvaWNlLiBJIHRoaW5rIGNhbGxpbmcgdGhp
cyBkZXNpZ25lZCBmb3IgQUNfVkkgaXMgbWFrZWQgImRlc2lnbmVkIiBkbyB0b28gbXVjaCB3b3Jr
IGluIHRoYXQgc2VudGVuY2UuDQoNCltHV10gVGhlcmUgaXMgbm8gInNsaWdodGx5IGVsZXZhdGVk
IGNvbmRpdGlvbmFsIHByaW9yaXR5IiBpbiB0aGUgTlFCIGRyYWZ0LiBUaGUgTlFCIHF1ZXVlIGlz
IHRvIGJlIGdpdmVuIGVxdWFsIHByaW9yaXR5IHRvIERlZmF1bHQuIFRoYXQgaXMgd3JpdHRlbiBp
biB0aGUgZHJhZnQuIFBsZWFzZSBkb24ndCB0cnkgdG8gbWlzY29uc3RydWUgaXQuDQoNCltHV10g
SSdtIHJlYWxseSB1cHNldCBhYm91dCB5b3VyIGltcGxpY2F0aW9uIHRoYXQgSSBhbSAiaGFwcGls
eSBhY2NlcHRpbmciIHRoZSBzaXR1YXRpb24gd2l0aCBsZWdhY3kgV2ktRmkuICBUaGlzIGlzIGV4
dHJlbWVseSBkaXNyZXNwZWN0ZnVsIGFuZCBzaG91bGQgbm90IGJlIHRvbGVyYXRlZCBieSB0aGUg
V0cuICBBcyBzaG91bGQgYmUgY2xlYXIgdG8gZXZlcnlvbmUgd2hvJ3MgYmVlbiByZWFkaW5nIHRo
ZSBkaXNjdXNzaW9uIG9uIHRoaXMgKG9yIHdobyBoYXMgcmVhZCB0aGUgZHJhZnQpIHRoaXMgZGVj
aXNpb24gd2FzIGEgY29tcHJvbWlzZSwgYW5kIGluIG15IHZpZXcgdGhlIGJlc3Qgb3B0aW9uIG91
dCBvZiB0aGUgYXZhaWxhYmxlIGltcGVyZmVjdCBvcHRpb25zLiBJIHdvdWxkIGFwcHJlY2lhdGUg
aXQgaWYgeW91IHdvdWxkIHRyZWF0IG1lLCBhbmQgdGhlIG90aGVyIG1lbWJlcnMgb2YgdGhpcyBX
RyB3aXRoIHJlc3BlY3QuDQoNCg0KDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

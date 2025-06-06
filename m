Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDA4AD02A8
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 14:58:20 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A26D13CB47;
	Fri,  6 Jun 2025 08:58:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749214694;
	bh=bSqgfciO96adSlgNEgwc307SmIF770yFhZsmsuK9hqw=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=GnsXtY1JBxESscUwqgO8n7LlRQFV+6PFJ7RzY35a++Vwqhfss70vPhZBKh4KKrdxt
	 D37VsvLqnSIW+6G0bSY+kI/ihtOkrps/Fuoba0wPNyf0g2tRN79TrtwBiqzi60rWqk
	 VMuKAK10zlshNp8YQ/BXJsVZEciBknyDNeODe3KATra98BsxeeJhcAnlaSDG68+/at
	 PCIsRMDFX7HbmiGIAdCnCfWla4AXenSctRTvJly9JQFQxEQ8LiLXPKhIzH2qhX9AEi
	 ZxxUpKhEIkEozz4ntYjP96fqnqFKTwVGnNpSDkAayw4O68r8oYWV50izL3Jsd/8YNc
	 48AQukKm0bO9w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2065.outbound.protection.outlook.com [40.107.223.65])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A7D743B29D;
 Fri,  6 Jun 2025 08:58:13 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a5QQGrzf2XYoFjqmJeVBcqoyL3bEq6s0pxUrxH55W0DBDuT7yuV7WBbvkBfZzfXTa92gZe9WIvj4lvsn5OgQzyuZKBuZaWRE/dB26q/k4S+6nrhS0ScRcDRPyUWWekwbI+qTqtoC8RbYtZyr+Kn9og7yYjZsEGKyBH97V8C0w2af0CCr+JpJSh0cp3Jy17o6PnYhcEzOYGz8XBz8fdVHmRmwQ8vfp2nCRIFfDslCvNBCObSRjSLQpvx1rUpjOMGXpHEPsYIl1KMnkgYNmm5M2DwzJWEXjHoJ4OmpuNLcfChODtGgs/BZ5E6YSEPKVlswKbNX1xqykkvhMqK1pa3lYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lw22r5eVF4yZhgK5e4jbQnnRqVJIr3QklkaHIF9Q2NE=;
 b=PnbAStoPa6Jg5i9bmTQqK2/xux8S7z8VXTSaFt/LesM3zS+s3F2ZRx38KzECwTx0EA36lQlnHyrDEfjBCiB0nSs1rkOkD2uHTEWO18bIvIJ1Fnz2IKuW6ifQ3LkBaccVcxBSzUwtJ+kMDuYfl5WM46YTXmJJJDj1qCsUzb4TlAp3TrnZz2lxZN9X0bzaW2b5YLpNSpoisB3o5IGIXMVnQ0DneBfRHXzEVa1xLeNjNmwz+ikksJKs4QMRQznXp3JoQobh7AzRMZE/qg3FxrDcu+Upvxi1Lw+kHjEM0Aex6kii9XqM7ChBe+6Po8T013YJisDEjgATw/aROIbJN3Dhjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alum.mit.edu; dmarc=pass action=none header.from=alum.mit.edu;
 dkim=pass header.d=alum.mit.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alum.mit.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lw22r5eVF4yZhgK5e4jbQnnRqVJIr3QklkaHIF9Q2NE=;
 b=BEgoE2GqzrR2Gl2fl3Lx8MXMK2c+xH2uu1mD58ViJAdGXS4VMR0t3qKU54xKpDhSxPHMTl/fkzYWrS2UQ7tRTpLj5aYspA1DGFzQRv6IZ5R6fklrkoJgDUigysRIpaCgKSwwogOada+o6t28aNZ8PTkl0gse8Cfoh8pIO2Fuh4k=
Received: from IA0PR12MB7751.namprd12.prod.outlook.com (2603:10b6:208:430::21)
 by DS4PR12MB9819.namprd12.prod.outlook.com (2603:10b6:8:2a0::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.35; Fri, 6 Jun
 2025 12:58:11 +0000
Received: from IA0PR12MB7751.namprd12.prod.outlook.com
 ([fe80::a4ef:f5a8:9e38:1cc7]) by IA0PR12MB7751.namprd12.prod.outlook.com
 ([fe80::a4ef:f5a8:9e38:1cc7%7]) with mapi id 15.20.8792.033; Fri, 6 Jun 2025
 12:58:11 +0000
To: =?utf-8?B?TmV0d29yayBOZXV0cmFsaXR5IGlzIGJhY2shIExldMK0cyBtYWtlIHRoZSB0?=
 =?utf-8?Q?echnical_aspects_heard_this_time!?=
 <nnagain@lists.bufferbloat.net>, Loganaden Velvindron <loganaden@gmail.com>
Thread-Topic: =?utf-8?B?W0VYVEVSTkFMXSBSZTogW01ha2Utd2lmaS1mYXN0XSBbQ2FrZV0gW0Jsb2F0?=
 =?utf-8?B?XSBJbiBsb3ZpbmcgbWVtb3J5IG9mIERhdmUgVMOkaHQgPDM=?=
Thread-Index: AQHb1tCzyELD3A0VyEmZS6kMsPJzN7P2FvDA
Date: Fri, 6 Jun 2025 12:58:11 +0000
Message-ID: <IA0PR12MB7751A8202E355C2282350B978A6EA@IA0PR12MB7751.namprd12.prod.outlook.com>
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <014po62q-r99p-71np-52r1-n84n9np63nqr@ynat.uz> <87plhvlyoc.fsf@toke.dk>
 <976DC4FC-44CA-4C7E-90E0-DE39B57F01E1@comcast.com>
 <8DA2934A-43D1-4700-8F32-CA424C3FAE8D@comcast.com>
 <1743623511.52759201@apps.rackspace.com>
 <CAOp4FwR71iS-mijozYr7zzuAhajJeqjzw1bGo1eicNWST76erA@mail.gmail.com>
 <CAHxHggcgJT=3SE8FJVnGduE0C0c1hFKu6fHLdnFL2BW5dE1+bw@mail.gmail.com>
 <CAOp4FwQ=ZLVw9VfO7wLi=J2-FsvCxdpT=NTVWzkOw=DPzNxPYg@mail.gmail.com>
 <CAJUtOOiGKOLbtQtrTp-5BTZFUg_rwYKt-BzftjerZTg23QuD=A@mail.gmail.com>
 <CAHxHggdaaxEorCDGqdvFFcuZNv==rfR_1pUMH513fFq5-jO2kA@mail.gmail.com>
 <CAOp4FwS14HN931zyDKw74GByj5=zHbH_xr5ZfGZv4dL-QPAiHw@mail.gmail.com>
 <1B0111B7-7648-4729-952A-243BDC4D4DDC@comcast.com>
In-Reply-To: <1B0111B7-7648-4729-952A-243BDC4D4DDC@comcast.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=alum.mit.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR12MB7751:EE_|DS4PR12MB9819:EE_
x-ms-office365-filtering-correlation-id: 119af5b3-a437-4435-ec91-08dda4f9cafc
x-ld-processed: 3326b102-c043-408b-a990-b89e477d582f,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|41320700013|7416014|10070799003|1800799024|7053199007|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cEt3MjJIQ3hOMGJvK3hFVzJ3UzBVRzJnUnpLQkJQQ2loTXM2UWhoMnRuY0xN?=
 =?utf-8?B?N1ZPUVlzQnUwdjVYeldPZEhZbk9WWlVHMldBZVBXN2ZoZDJ6NzdaVGErcDYv?=
 =?utf-8?B?TGtHK1Z3MjNiYnRCN0ttQzRReXFzb0RSZU9KMWk3NDhFM1oxL2NLWEI0ekFV?=
 =?utf-8?B?NEdUYm1jK2RVK0xKdk45N0ZjZDZsdTJ0VUswcG5YN3MzQ20rNzNENW9ZcUh4?=
 =?utf-8?B?cks0YjZtdWhZSHNqdVhvTmFROFd5R240clFBQ2I4N09OTU1GVXJtdUdtclhk?=
 =?utf-8?B?L2tyVG5WYVRUeERPaDF0cmJTMTNpbXRJK3ZhQisyRjRPYXpCTXlHbXJPdldP?=
 =?utf-8?B?ZmRwbUR5b0pQcWlUUzBYcXJ0blJ2djhzTnl4ckpLd1UyR240cmZ2aTVkeFRr?=
 =?utf-8?B?QjdGeS9mZEVId1dkS2h2aDF6ZTFoY0pIUkxSajBkTkVVSlZHbWxjY0pyUDY5?=
 =?utf-8?B?WFhpeTRiak9yY3IvRUJaTWFUR0xsdWpRbEpvMjI4eGorcTlGdnQwNkNaWk53?=
 =?utf-8?B?UWwyb1Y1YjBYcyt0NzZBRFVaT2cwWCtsRXVsajFwMVhHUU5rS0dvMFphS3Ro?=
 =?utf-8?B?R2tMNHNEeE45Y1hlanlrUGJWQUpnMVN5TjdFckFkd0w2d0pIUGYwQVJvMHdu?=
 =?utf-8?B?Y2dnZklsZTM1N3N0OFQ3UkRVaGFVbzJ3a3BwRnNMWE1zblJwekpLZFdEWTN0?=
 =?utf-8?B?eXdCdm8vdGRjMWpvOU96ajZhU05OajN0dGZJTitlYng0aXFxdXI1QVpSYm1G?=
 =?utf-8?B?UmxPUnV6VEpGc3VYL3NDRmhweGZwVWhtS1VvZXRwT3NIOFFrVkVHMkNlY3lN?=
 =?utf-8?B?YmNKbUxtM1VKUEI1MmhIUklkQjZYblRhTjNhTjJodUhJR1hIRU43bTUzYm1N?=
 =?utf-8?B?UjhZZE14K2d4ZEpnYVB6c3dSTy92cDlkMHRRVDc5MzIxUWRyNzQ4NEt5TFYz?=
 =?utf-8?B?YUt0d3NLNDlyTE1UcERObWJTNjU5TGk5Vjg4ZmplVDBNY0hxMFlQOWFOb09w?=
 =?utf-8?B?QnpFR2lJZWF4dDZhOXg5aytoaHZSRGVFdkhjbVN2eVEwb1pNNkxhSGZkUmJT?=
 =?utf-8?B?TXJWM0svby9QSnVxMlRiM1hJOGNiUUgwOHhFWkw5eFNib3VWb3loSGdhdGs2?=
 =?utf-8?B?Z092L0JwOCtwMmVMdFk1MXFzWExuaXZ5bWU0aTVvcHpvVXJWSXZhbDJtTUhl?=
 =?utf-8?B?RmpRL3N6SkRHMnpjcFpJNWpzazBSYVdFYjMwZ29XOUw3c3lZb3dIdTZuVWdL?=
 =?utf-8?B?amlDMGFodGVMbDVOa0VyV0tORWMvUjdjSnIzdngwNzBMNnNkd0VmQ3JlUDV4?=
 =?utf-8?B?VDFjY3RKWm16bjJiVk84SS9iUEtsZUtuQzM5aTJPclladFVIQnRwc1lXSVM2?=
 =?utf-8?B?VEduNEg4aDZWOElyejlGZm56TzZKcGpMQjQ2alVHV0wvVU5rdkE0S0hYMmVk?=
 =?utf-8?B?MVcrRHlNNE0ySnVNL28vSVUrbHhRVEJIWEZBWGFFWS84M00zK2huSWFHcVlz?=
 =?utf-8?B?Nnh0bTlVemIyUnkrc0p5Nk51dk1qYWRPOVRMb0tNQzRxQUdXcitnYktJSVV0?=
 =?utf-8?B?bEIzczM2Z21McUpPRi84ajFJVGdIS1JWb2dUWU5iUkx4K2FWSkZjVzBsdlh1?=
 =?utf-8?B?dUFTZFBWM1dBb21xaGZFbnhjdHl5S1BDRVVKZlE3Q1IwUHVmTThiWmpsUVNY?=
 =?utf-8?B?bkpITlp6dDg2WWVrZnFsb2pSTy9zRVZpSWY0dXN6dHdMZTBrS0FuQVRHTFQz?=
 =?utf-8?B?NzY1blI0d0oxbUVBaTEwVUUyVS9HRzVZWGR2ZzBXVFl5bDNXMXoydm9nRHdu?=
 =?utf-8?B?ZW9rUWJzZFJLcEhRU1FCMTF6UVVEenNrbnNrbmY5T3NEcHhJMERkbHA1KzdX?=
 =?utf-8?B?aHZEaWpsdFplR0FhWnZjSUJlRjNLK0I1WGVkMno3bWR3blU4YVozRDJjSjVz?=
 =?utf-8?Q?RFVtTzlExU4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR12MB7751.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(41320700013)(7416014)(10070799003)(1800799024)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eWlybWFpV0FCZm9BWDV2YlIvY3ZTTHVEUzM3Q0RFeXNRZjJjdWtWek52RTAr?=
 =?utf-8?B?UDJjVC9FVXFuZE1CTHYrcGRZeGtRaUNGeG1NYTU2eVdoOW5EOUxSZnJHdEda?=
 =?utf-8?B?MkZOaGU0Wi9xamxJY3hjSDVERkFQNndFNHFqMHdEOWY4cURvbmRRM09CcEU4?=
 =?utf-8?B?RmpCSFQ4cStqUTh0WklPelgvTmpuckVrNm9NMGQzVDdJUlBGMkxSR1h0QmJY?=
 =?utf-8?B?MVNrL1RNUHBMR2Z3cGc2RDBxcmZBOEx2L0J6TVExRmVmT3Q5R2MwdDRIUmlo?=
 =?utf-8?B?b3dCTitONDNuM3dvTUxObS84VHoyVGU0NktEdUZaU0h4NTMxbVN1UFIzTEty?=
 =?utf-8?B?c01CYzRKSFlwQ1NLbVJZeGFYb2xmNHRPaWxUMWRkL2tvdGRQb29rY0ttazRv?=
 =?utf-8?B?ZlJIN1NKVXVlUzZmVEx0V2ZmNU80UGNleDdQK25XU0tHZjVYaWJuSkN0bjdL?=
 =?utf-8?B?YjltTkc5K2pMcnR6L3lTMHdIejQxUGlYdFY5bXpjT1Z5dXg5VDVmSE14dVo0?=
 =?utf-8?B?dXZYRU5LTmZwSkVRSm9xZi9zb1NnZTZIbDNXazJwVGJHdVk3TDVrMXRhN1pT?=
 =?utf-8?B?bDNONE9wUy93aytYVWxUREt1VzZVR2ViYjhnbkl1UzhQK2h4ZUZqVHpCS21O?=
 =?utf-8?B?RUd3djJ0TmNiSVRrbXIyT3BnTCtuQzhGdVJKUjVYNWNRWHJ5T25LQk1PcHlT?=
 =?utf-8?B?TXhiRUExbVVacVVPTzYyT0VPV1lyODZCSUFWa1U4ZjVpTm43bjBuUEZFRnB3?=
 =?utf-8?B?TnBEaEY1TU9ja3RJUllMT01IaitjaUczRVdhc2NyRzNQNzhIT2hJZ2NGZTJG?=
 =?utf-8?B?TW10YThwa2ZKWDc4ZE1BYzltNDJPN1NGSVFNMnY2aUovbzVpTnpNczlVR003?=
 =?utf-8?B?WVc2Sys4R1hWM0gvZVg5a1JIVFlnOWRleDVRNGNqRlBaNVNvaUlQMnREOGdP?=
 =?utf-8?B?RmV5bFptS2lzVTIwazdpMnlnUUY2cHQ1OVFwZThTNzdnUGxNcFE1NmdQMzlO?=
 =?utf-8?B?QzdVQ1YyTUI0TlZIM1Rud0ZUbUd0b2psMnl4ajZSMFowL3djV2h1N2dqZnZ0?=
 =?utf-8?B?eDRaSlpRQXlFZkVDMlA1dkZUL0FSK0RiVlRLNHVlMkRmQlRyc0U5RWc2WHBX?=
 =?utf-8?B?c2xUMkRXSW9JNUxKNnAyOUpERVBGRFlpTUZXMkR2OFZUSzh2VjZic1dac3lZ?=
 =?utf-8?B?dVVUbDVRNDcvZmxzUnJBV09uQXR6WmNEWWJIRFhvOFN6Nm15MnlaVFBRNTRl?=
 =?utf-8?B?VW9JeVpRT01ka0lrWU5LRmJuMEZhVDNpclNXR0daVDluTEwwdkxvbkk2RmNh?=
 =?utf-8?B?aG4yakl4Q08xcGZZSVVjMnFMaFRsT1FCQXhmOGRiR1Zva1MvcTVtU05vYW9u?=
 =?utf-8?B?c1kwVjBKK3hsMHV1aHJVb1dFcjZCUXZ1UWl4Nm1ZdUkzbDBwdmVUaU85SS9L?=
 =?utf-8?B?OGxpb29peWIvb281c2ZaQ3p1YUhUUEpmb2kyRUJTN21RdzRLK2ZHL3pQRHhH?=
 =?utf-8?B?L0FBdWhyQ1o2andvM2YzTkhVc3V1NFNQMlpRM0tZOXh4S0R0UTBzMTJ1eHA2?=
 =?utf-8?B?TmFKL1NpQ2J3aVVLZkZPckVZTW03MzN1OGRObGpKMXdjbTVtV3luVjl1MnR3?=
 =?utf-8?B?YktpQ1preFZwb2sxNU9IbGszTEt1bjVwS0FtaWhpTnY1aGNoWjdWTG1HMjZY?=
 =?utf-8?B?RHBhSmszZ2dPeE5SL3duRUhRUE55VE9DVkVFR1hXUHBwMVpXdFU0TklRcFZp?=
 =?utf-8?B?T0pNYm9xcG84TnQ0Y2p3S2dnczIwNEtDQzNGSW5VVFZYeFQvdzQ2M2VPSjh4?=
 =?utf-8?B?ZmFNRCtsV2xyRUtaTUZ1bC9iaHdlRHJJN2RSaVRERkQrWW9rSmNmNmFDNTlE?=
 =?utf-8?B?Wm5xS0JKejBiSkh4TW9XaGNBTFoySE4vM200dllYYWZNTXg4dSttY3ZEa1g3?=
 =?utf-8?B?L1pjVngxUzdBY1VPM1ExaVJHV09Na1RVeUNnSlM0YXhrM2FOUXliZkxtcGU1?=
 =?utf-8?B?ZEhFdmdPWW1vakNWeE5xQUFHWk1zSml5K1p4MzlqTHZ0aTl6d2ovWWVteWht?=
 =?utf-8?B?L2pwRFYwOWxGL1NQWE1MQURPQ1Vvb3g5T1lCNDlZeXFDLzAzSVc3K1pJK3kz?=
 =?utf-8?B?a3ZlYlNqemxLQzhZK3h2NTRoRzVmQWNITjJ3TTdRQlRhWkxmUzh6cHpEMU1Q?=
 =?utf-8?Q?wBvNlcZKsry6ud8VxhErjvGwye1KqYut8Te+UVquqxJ2?=
MIME-Version: 1.0
X-OriginatorOrg: alum.mit.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR12MB7751.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 119af5b3-a437-4435-ec91-08dda4f9cafc
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2025 12:58:11.5306 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3326b102-c043-408b-a990-b89e477d582f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w7Rut3w2MuA7mES22/BAU8PJwjhlATOXVPLJAw8vn9pTILrOlZEuSqfPmO5v+zAq5feLRdOsFBZrhEYqFIKOjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PR12MB9819
Subject: Re: [Cake]
 =?utf-8?q?=5BEXTERNAL=5D_Re=3A_=5BMake-wifi-fast=5D__=5BBl?=
 =?utf-8?q?oat=5D_In_loving_memory_of_Dave_T=C3=A4ht_=3C3?=
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
From: Richard Roy via Cake <cake@lists.bufferbloat.net>
Reply-To: Richard Roy <dickroy@alum.mit.edu>
Cc: "cerowrt-commits@lists.bufferbloat.net"
 <cerowrt-commits@lists.bufferbloat.net>,
 "bloat-ietf@lists.bufferbloat.net" <bloat-ietf@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 "cerowrt-users@lists.bufferbloat.net" <cerowrt-users@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>, "Livingood,
 Jason" <jason_livingood@comcast.com>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 "cerowrt-devel@lists.bufferbloat.net" <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 "codel-wireless@lists.bufferbloat.net" <codel-wireless@lists.bufferbloat.net>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 =?utf-8?B?Um9iZXJ0IENoYWPDs24=?= <robert@libreqos.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VGhlIGxpbmsgYmVsb3cgaXMgZm9yIHRoZSBub21pbmF0aW9uLiAgSSBhc3N1bWUgc29tZW9uZSBo
YXMgYWxyZWFkeSBmaWxsZWQgdGhhdCBvdXQuICBIb3cgZG9lcyBvbmUgd3JpdGUvYWRkL2FwcGVu
ZCB0aGUgImxldHRlcihzKSBvZiBzdXBwb3J0IiBJU09DIHJlcXVlc3RzIGlzIEkgdGhpbmsgdGhl
IGlzc3VlLCByaWdodD8NCg0KUlIgKGFrYSBEaWNrIFJveSkNCg0KLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0NCkZyb206IE5uYWdhaW4gPG5uYWdhaW4tYm91bmNlc0BsaXN0cy5idWZmZXJibG9h
dC5uZXQ+IE9uIEJlaGFsZiBPZiBMaXZpbmdvb2QsIEphc29uIHZpYSBObmFnYWluDQpTZW50OiBU
dWVzZGF5LCBBcHJpbCAyMiwgMjAyNSA3OjA1IEFNDQpUbzogTG9nYW5hZGVuIFZlbHZpbmRyb24g
PGxvZ2FuYWRlbkBnbWFpbC5jb20+DQpDYzogTGl2aW5nb29kLCBKYXNvbiA8amFzb25fbGl2aW5n
b29kQGNvbWNhc3QuY29tPjsgY2Vyb3dydC11c2Vyc0BsaXN0cy5idWZmZXJibG9hdC5uZXQ7IEhl
cmJlcnQgV29sdmVyc29uIDxod29sdmVyc29uQGxpYnJlcW9zLmlvPjsgTWFrZS1XaWZpLWZhc3Qg
PG1ha2Utd2lmaS1mYXN0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD47IGxpYnJlcW9zIDxsaWJyZXFv
c0BsaXN0cy5idWZmZXJibG9hdC5uZXQ+OyBkcHJlZWRAZGVlcHBsdW0uY29tOyBjZXJvd3J0LWNv
bW1pdHNAbGlzdHMuYnVmZmVyYmxvYXQubmV0OyBKZXJlbXkgQXVzdGluIHZpYSBScG0gPHJwbUBs
aXN0cy5idWZmZXJibG9hdC5uZXQ+OyBjb2RlbEBsaXN0cy5idWZmZXJibG9hdC5uZXQ7IE5ldHdv
cmsgTmV1dHJhbGl0eSBpcyBiYWNrISBMZXTCtHMgbWFrZSB0aGUgdGVjaG5pY2FsIGFzcGVjdHMg
aGVhcmQgdGhpcyB0aW1lISA8bm5hZ2FpbkBsaXN0cy5idWZmZXJibG9hdC5uZXQ+OyBjb2RlbC13
aXJlbGVzc0BsaXN0cy5idWZmZXJibG9hdC5uZXQ7IGNlcm93cnQtZGV2ZWxAbGlzdHMuYnVmZmVy
YmxvYXQubmV0OyBibG9hdCA8YmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0PjsgQ2FrZSBMaXN0
IDxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD47IGJsb2F0LWlldGZAbGlzdHMuYnVmZmVyYmxv
YXQubmV0OyBGcmFudGlzZWsgKEZyYW5rKSBCb3JzaWsgPGZyYW5rQGxpYnJlcW9zLmlvPjsgRGF2
ZSBUYWh0IHZpYSBTdGFybGluayA8c3RhcmxpbmtAbGlzdHMuYnVmZmVyYmxvYXQubmV0PjsgUm9i
ZXJ0IENoYWPDs24gPHJvYmVydEBsaWJyZXFvcy5pbz4NClN1YmplY3Q6IFJlOiBbTk5hZ2Fpbl0g
W0VYVEVSTkFMXSBSZTogW01ha2Utd2lmaS1mYXN0XSBbQ2FrZV0gW0Jsb2F0XSBJbiBsb3Zpbmcg
bWVtb3J5IG9mIERhdmUgVMOkaHQgPDMNCg0KPiBJU09DIGhhcyBvcGVuZWQgYSBub21pbmF0aW9u
IGZvciB0aGUgSm9obmF0aGFuIFBvc3RlbCBhd2FyZCwgYnV0IHRoZQ0KcGFnZSBpcyBwYXNzd29y
ZCBwcm90ZWN0ZWQgLi4uDQoNCldvcmtlZCBmb3IgbWUgdy9vIGEgcGFzc3dvcmQ6IGh0dHBzOi8v
d3AuYXBwcy5pbnRlcm5ldHNvY2lldHkub3JnL3dwL3Bvc3RlbC1hd2FyZC9ub21pbmF0aW9uLWZv
cm0vDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18N
Ck5uYWdhaW4gbWFpbGluZyBsaXN0DQpObmFnYWluQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldA0KaHR0
cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vbm5hZ2Fpbg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2Fr
ZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlz
dGluZm8vY2FrZQo=

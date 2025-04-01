Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D10BAD0089
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:41:24 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 01A353CC9C;
	Fri,  6 Jun 2025 06:41:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749206460;
	bh=xO7XWWNhQi+vz3UaaRgwDlJ0/SB7P9f0gqB0MzGfSqM=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=EXip5XH+flte8IQM3vAUZO9mKDzo+fKP0GJtIZGyKUZmP4xjXlwE2aPilZPKiX2RK
	 Is/39eXkfLtjWaVgBpBOXvU+Xr586rJZl/t99WllkOX5PS9LhV496Iaf0TF79Jqhp5
	 +LGm5WC9YihhrxKAuQ3sWBnnjAADR5Rj4DCMu4vZsaNELUqLwxLw0kok1cy+WLTNiJ
	 Cx2Vi3LCMEjDNyGr1jlcSTEzRDxS5hFwZiD200QftavpxE2BK1g7+lDSr61Zj4OSeK
	 icC3kWpohhJboXbqKhFvUV3eM9OqHJU8zIo70STWjvpzHtY7cwsvG2HWonvQkDbYtp
	 6QnpOPyi/L9+A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from AS8PR04CU009.outbound.protection.outlook.com
 (mail-westeuropeazon11021125.outbound.protection.outlook.com [52.101.70.125])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9A4963B29D;
 Tue,  1 Apr 2025 16:56:27 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Czo1KLL7RuM2uJVVlTzNPMk4+Jl3Ex9Jrf6C1d7vyVEo4rth7FT81z0Ph9wjnytvtY3sF3gisap4aYjvl2tudpnkiUpgBf4QC1HuCSQNpItmaesgzYUmEBrBfxo5KAq/EbFYjQiikI8/qe7CBUw0SeGTWuBGnH0maOaAFVP49ekba+3WIsWqQo8DIrRpuEvfkzENRCQ/FDS2Gubuie4XCiEKi/I70nNyggyTNPZ7Q44cbl79b2KschV6nErqp+0DqJNX27GorB55sE5q4s1F5hG4dfVhNn4/jvWYTJkm0DyLqPzZCMYisuQwlGf2P2ZpwVQhl6CuBrIY31bpJZyomQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r+fGP2gaUGxwSXYlDROd1sBEhhUkwW/JCe99Q42b0To=;
 b=mxZqTkk0xGUCqunm7FTr0+M96vsGLu4Y+gRID6puxwJJ7th5GwVZj7v+qr8DiMc/M/MpnxsIkzTNqur1iyHNx1SXYZEfzlw9Md62h9NTyKkkRWOQ14T4ZdAAcxuHzNZlKhVX9Xwx0Vbj0EtAjjP1bLRVy/0+1kIuSROtepUcP9zUqqko9yGWE13SY4/cCvJ7mxKGXTjPN6omA7wfoXWAa6calGEkMRmgMQtagam5DFhRQp5fFmdgX2qXPZTyjQWKRpY8ndF8T1CptIrcSVSjC7Hro0iAsAaYpFF6JNRN5kH6aCYNrV+fC/Qjc27eGFWdHa0bxLQz2kAo7AGbG7Ehww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=surrey.ac.uk; dmarc=pass action=none header.from=surrey.ac.uk;
 dkim=pass header.d=surrey.ac.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=surrey.ac.uk;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r+fGP2gaUGxwSXYlDROd1sBEhhUkwW/JCe99Q42b0To=;
 b=SILO/1BSBdgR2mq3hIlX171ulemJloHk6ZX3EoJ27FbtrlN6pev+ZhnXkQmqdCWS6BtehEcv85GulX3NPSzvTt82BB933CgIAEVT+4DtxwXITSJTZJInexAoGKla4+4iilGHz/nm+irwwqBLAjTy+SVc53kP+F5JXRUGNzsTNDC/N2jBi0/e997pQO9CHwKOGYFqspvQpm8DFZNkHtQi8In9zaqDJ+rP9hX/UqGAhajApykwkapNoC74ZTdAAhozRt7ODLEQHnuwTbzBSmsn1I3crjIr3eljR7nIZR7gBrTrONS1iV1u73kHOjfP4rYFVyEZzDXRu5IuCXes4WGkAw==
Received: from AM0PR06MB5825.eurprd06.prod.outlook.com (2603:10a6:208:10a::33)
 by VI0PR06MB9652.eurprd06.prod.outlook.com (2603:10a6:800:218::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Tue, 1 Apr
 2025 20:56:24 +0000
Received: from AM0PR06MB5825.eurprd06.prod.outlook.com
 ([fe80::3b7f:344d:17d5:2f30]) by AM0PR06MB5825.eurprd06.prod.outlook.com
 ([fe80::3b7f:344d:17d5:2f30%7]) with mapi id 15.20.8534.052; Tue, 1 Apr 2025
 20:56:24 +0000
To: Frantisek Borsik <frantisek.borsik@gmail.com>
Thread-Topic: =?utf-8?B?W1N0YXJsaW5rXSBJbiBsb3ZpbmcgbWVtb3J5IG9mIERhdmUgVMOkaHQgPDM=?=
Thread-Index: AQHboyswfy9+DXpwy02ITmUvw4SAe7OPSraA
Date: Tue, 1 Apr 2025 20:56:24 +0000
Message-ID: <F73672E3-A051-4060-B294-BC88322EC7CE@surrey.ac.uk>
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
In-Reply-To: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: MailMate (1.14r5852)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=surrey.ac.uk;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM0PR06MB5825:EE_|VI0PR06MB9652:EE_
x-ms-office365-filtering-correlation-id: 705ab533-552d-4ae9-1ccc-08dd715fa9e4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|1800799024|366016|13003099007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?TWJqRmxOZnMyRDFPVXBVdzV2YzdSQVlXK1oyb3hIUDc4MDZVYUxxeHZ1aUFy?=
 =?utf-8?B?cUtIVWFJQUVWM2NyMldTbm5QSWpiTmNjcDFBY0dJaDNFL24vcEk5TkQvOTAx?=
 =?utf-8?B?UDBSRks5U3lHY3BHMktYRnRJb0xtbE5OV2UvZjlTWDZQeVRFQ3hxQ01vZlJR?=
 =?utf-8?B?Qk1sS1NFYThKUjJ4bFBENjBOZExUZWN1aTRmVDc1Zm5iTUptZEhDMGxxT2NB?=
 =?utf-8?B?VmplMTBjMHdMUjlobDJXQlNldHJ1Y2hGRHNLOU0rZGhYbnFKU2h6ZjA5ZFZa?=
 =?utf-8?B?eWhVdUpTUy9WL0xEZ2ZxYVhwMHNTcEhsVHVhakdjbGJjajVoRHBaVERSRVVI?=
 =?utf-8?B?TGZkQ3FMUC8yWERoUlo3V2lVMmh1UytVVzROa3VtMTZqNUYvNWxhbkFkeFJH?=
 =?utf-8?B?Um9OelFIUjR1eEVLSWFqaWpwaENIMy83T1lhKy9NUTdWb3JmYjJHYVkyMG9L?=
 =?utf-8?B?SVI5QllNVXhrc1NVVTRTZElKQy9kY01lYy9NL1RDU1JiME1ocTE2aXlwZ28z?=
 =?utf-8?B?SVhiVjRVLzNEVEwxbGVnL1NKOUl4Sk1ZRGJxNVovTCtKTkZNbkc4c1U1WkI5?=
 =?utf-8?B?aFJwajJnYjVtK0xnUFZvNWNpVGljU1pTNzZqMmw1MjNmVjlSa1NvVE5IdXJy?=
 =?utf-8?B?K1ppeDljZ1hzbnZTZkR3c3l5S0VwMEZNdzd6d0lZUWNZM1lncnRhcjdLTHdM?=
 =?utf-8?B?cjloV1BnQ0NwQ1hlRWlwQzNkTGIyVXZEb2NhMU44VkZXOURaT3ZrSDZzVzFO?=
 =?utf-8?B?QVU5L1g4UCtiNGl1UVVianNqUGo1bk9sRDlHSWxUK25SYllBdkliUUdwOGpL?=
 =?utf-8?B?RDMrOThqMFpWQ2V0SE8zV3RvM1FSb1NDdVh1SGNwQTRZbmdhdE1xK3c5cXNZ?=
 =?utf-8?B?Y0NVR3VpOWFpN3RPbUdaQTEzRlRpNWdEeDM0NXlNa0ZvMGNkUjAwanU2WXJp?=
 =?utf-8?B?d3RxZTR6alRwRGpOWEorbnlYc2FNbU52cTF1WXEreWQ3Q0JIVHAwSkpINHRx?=
 =?utf-8?B?KzEvRDhUR0RFcVBFcGU0aFQybUM0K0J6OHZRRUlGWW0xWlpUbGc5SEp1NWVq?=
 =?utf-8?B?bHR1ZUpVWGo3ek9RdzNRTVZFa3hFZmRSRy9ORlBEU3dHU04zVFM3RjVVdlVH?=
 =?utf-8?B?RjdBVnNNZ1p4eWV4UEFLQmMxY3RmVytiZUp1S2d1MjJxY3MrSWlKeE85K3dD?=
 =?utf-8?B?eU40aU5UM2xPRzM4Y0JZdHIwcG4zUW1meG5ISHFZMVlTSExWVElSN203R3N3?=
 =?utf-8?B?a1d2ZHhYbHhIOUtYSXBsWWMzN1QzTlVtSEZ2aERQTC83RUkrOUhYL0srZmpS?=
 =?utf-8?B?a042OFh0N0ZtK3I1dWJKV1cwNjhXbW1VWTM3TkxkWG9KVXNORFVhOXhyNFVk?=
 =?utf-8?B?V3pZS1hUTFZQZjVua0RQK2lSYi9TNUNRUmNVM0VqSFFZd3psTS9hUFZkWFRU?=
 =?utf-8?B?WnRyczJLODI1Rm11V0pFVUVqR005S3ZwdnJ4TWliM0JHMDNDVnlOejRxWmI1?=
 =?utf-8?B?YW1Id0FzV2UySUExcXFSbnNtVHBKeTMyQldIemdhS2JRZnhjVVpJSmVDNFkr?=
 =?utf-8?B?NDloT2pna2Z1Q0ZxTm5ZYjZVYzRFQmlxVzBTU1hJRzlZTUZWS24xK2wzR1Ux?=
 =?utf-8?B?c2NyNGpYRGxEdDV1MmlxYktyU2JHZllEZ1NmN1llSzI5V014Vzg5aXppaVlv?=
 =?utf-8?B?UXVDRFUrTDZCbmNLNEJKZWtGVEhSZlEzb1YxTldoMFlLdWY1Wk9nVmIrRWtu?=
 =?utf-8?B?YnNDanQrSzUxOUkyWTA0Z0FsZlZEWFdLUzNxa2Nvc0VQWXJ2SWVVK2Z6TTRk?=
 =?utf-8?B?S214UHJmS0NNMG1WN29Sa2YrVHJFNUpadkhGM0FHNnltSTFEVVZxUlA1ZkdU?=
 =?utf-8?B?WkJmdGIrRURRWWlDOFF1RTNlWmFtYmwwOWVUSVFic010TEE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR06MB5825.eurprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016)(13003099007)(38070700018);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RlNOMksrbldKVWZwalZ5bTZuRzFSd09NK0VpUmFsRWlBa09YTTM1ZXhsWGU3?=
 =?utf-8?B?WWZnNGFVZEZMSkFxMWlmcVlWRzRJaGV5aGMrZVZBb2hMaXViakhmazhtTEJG?=
 =?utf-8?B?UTRpZW9ENjQ5L2FHRlkvaG9zZEhIYVhiSWJiOXNWV2tUMmtOOEMzcGhZR3FS?=
 =?utf-8?B?ck5XbnJ3RklwZ2VjUW9TbWtGL0c0OEd1bXlqc2t0bUpvV3NzSWRYNHJ2TCsx?=
 =?utf-8?B?NUJOZ01oVmI2c2lLQUo0cFA1Q0lScFdSRGlKRDFLMmhnektrRnZWdXFvWmRQ?=
 =?utf-8?B?bXVMaGhzQlI1MDVyVVQ1bVNKUHkwdWZFdHkxSXc3ZW5nSjJKM1ZMNDhmNW1w?=
 =?utf-8?B?OEE5b2J5dWx0bzBYYjc2MEZycno0bUNQaDNSdkhzRUkvTzN6YkJXdUNoRldu?=
 =?utf-8?B?VFBOQ2h4bnh6c1ZQSjlhQVlKeEdSQU9GN1QxS2JHaDZHemlpWDhjVnpWMmgz?=
 =?utf-8?B?RTg0SGJVbm5sMkZ3L01UZDFKVlZWdFppdmdaWUVaNENzaWFwVjFaVU5KZ3Ba?=
 =?utf-8?B?REhqc0FOcXlleitPQVlCZUtzMlViVEdHcFRqMFkrSTZOcTFFUExpajI0UEMw?=
 =?utf-8?B?SjhEc3FoU2h4VURqZkRhd2ljU0oySWE3Ty9RdmlPN05aUVJ2Ti8rY3EvWFBz?=
 =?utf-8?B?UG9DMWx3RU5nRU1uS3hKZHNRb0xhT1pLYkErY1hvRkpLU1FXaVBrZDlKdWFD?=
 =?utf-8?B?TW9FUnNUU2tXTGQ2K1c3b3VmVmVrWHVmYjU1eGpZbjVvZEV5TUNnQndDOUlD?=
 =?utf-8?B?WVA2UGdEejlnM21iTmpHUlNoSXNnN3d4UlRoeDIxYldWRTduSUt3dHlSZU1K?=
 =?utf-8?B?RTZOaXVLTzNoeXRxRnNVSS9BVXB4QTVxVGZ6aUduVUtGcVRsV3NMeVFyb0lL?=
 =?utf-8?B?Y3FDTGVmYVVkSVBhbGcvRWNncFIxaW8xa2FWcjg0NEZRQWV5aTJKajdvVm9K?=
 =?utf-8?B?eFMwSlJjOXVRU0czZ3UraVYzT3BKeE1NVDMvR2pod3BjQm9PUGh5V0NsZXkz?=
 =?utf-8?B?N1lya1ZJbDEvYVVuUFFxMXh6SjZPdit5V3VLZEViN0o3VnhkMGJCQnAxUWNP?=
 =?utf-8?B?UWZQbm9jVEJxbXdxWVV1c3MyUUE4Mk14SXFvemZNUVJjbVJiYXh0ZjF3a2s0?=
 =?utf-8?B?bFdVeGkxczFTNExNQ1RkNzhGS2t4ZzI4ZnY5SVh3K1JXVzhQRXh0ZytwSS9G?=
 =?utf-8?B?dFdHV1owZjRrMDZSWWFiV0wzZVByL3UxdVo3QTRUcTFUMjFwV2RLNk1GTXpR?=
 =?utf-8?B?Q2dNNElIbTZKemtFOG5tdk5Lakk3N0R3L0tMZXpTVFArQkU1ZlpHREFhVVNP?=
 =?utf-8?B?Mk1WalMrWHFNQ09CUTJoaHFHQkoxc3Y2dEJUcEs1NmRFcnFveVlzbmVEOVZ4?=
 =?utf-8?B?YUsrTUdMQldicW5oL1IxSE5iVHRjQStQRGpSQWdSM1NqT1RrQUJDZjJLa3ZB?=
 =?utf-8?B?am9VZXRDK01KQlhNRGlxeXcwTEtVVjBOd1FYdHFML01NOXFzcWUrVUxlbFY0?=
 =?utf-8?B?UXg2UUtrd3JjZS83cmluMXR4UzdHYjhsblFWVFNsVUQwemlxZlg2OTFwYjdY?=
 =?utf-8?B?NG91WkVsOWlyK2YzdG1zWUxMNGdpZHgrVERoTkRmNTlMZUJjMDNURG9CZ3hZ?=
 =?utf-8?B?Rm1uWlNocmpEY2YyV1lXV1lpenpTT3hRMi9BcUl3UTloOGNKbFNnRXVUOFZq?=
 =?utf-8?B?a2FIclRKSTd3dE4xam5uVDNCQ1dlbkhsbDNaVmRJc2gyK3dYQWhBd096b01m?=
 =?utf-8?B?WnBUNEJKNTU3aXpCeUo0cTBZLzJuMWhOK3lGakt1MmpGL2crZkFvaTl5OUIz?=
 =?utf-8?B?MUVYM0RuenJYc1k1bm5wZTVMVGFoYUY0Q2NTbExXMWlVVkFXZTNmVjZqb0JY?=
 =?utf-8?B?cUZRWm56UDAvRm9nQ2ROekNZaG9tNjBQeFg5VlJlVVJHaXNqd3dEd2toODNO?=
 =?utf-8?B?ZkNoc20vZGF0QXBMbUZaeHVDS3VseDgvNlpvV2ZBVVo4UUtmS3hWem5VVm9r?=
 =?utf-8?B?aGhEUUM4M2RDL2ZhMzBDUHB4VWpiZlNCN0xWS1czcWVSb21KWEo1OS9KV2Js?=
 =?utf-8?B?T3M5SkxJZmgrVzBYK1l5Y3NNUHMvMldNRHFvRGprRTlBdE8zZy9RdFBIajVy?=
 =?utf-8?B?WVRDYW4wZGdpUDVDWklaRVk4NWdKVHE0VEhMMHZtcmNjYWVINk9BY20yNVVG?=
 =?utf-8?B?dGc9PQ==?=
Content-ID: <469FB8A92B666442979A8C0DE1481959@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: surrey.ac.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR06MB5825.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 705ab533-552d-4ae9-1ccc-08dd715fa9e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2025 20:56:24.2015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6b902693-1074-40aa-9e21-d89446a2ebb5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2krAhj5JGbLeYLn0DeUXvQ/Xncf2Yq5d13jqmnm/e1P57cXzndAvQFSEt+hv1qDNXrB1owRqhWaImGN+d6M++Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR06MB9652
X-Mailman-Approved-At: Fri, 06 Jun 2025 06:40:58 -0400
Subject: Re: [Cake]
 =?utf-8?q?=5BStarlink=5D_In_loving_memory_of_Dave_T=C3=A4h?=
 =?utf-8?q?t_=3C3?=
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
From: Nishanth Sastry via Cake <cake@lists.bufferbloat.net>
Reply-To: Nishanth Sastry <n.sastry@surrey.ac.uk>
Cc: "codel-wireless@lists.bufferbloat.net"
 <codel-wireless@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 "cerowrt-commits@lists.bufferbloat.net"
 <cerowrt-commits@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 =?utf-8?B?TmV0d29yayBOZXV0cmFsaXR5IGlzIGJhY2shIExldMK0cyBtYWtlIHRoZSB0?=
 =?utf-8?Q?echnical_aspects_heard_this_time!?= <nnagain@lists.bufferbloat.net>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 "cerowrt-devel@lists.bufferbloat.net" <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 "bloat-ietf@lists.bufferbloat.net" <bloat-ietf@lists.bufferbloat.net>,
 "cerowrt-users@lists.bufferbloat.net" <cerowrt-users@lists.bufferbloat.net>,
 =?utf-8?B?Um9iZXJ0IENoYWPDs24=?= <robert@libreqos.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

U28gc29ycnkgdG8gaGVhci4uIEkgc3RpbGwgcmVtZW1iZXIgaGltIGVudGVydGFpbmluZyB1cyB3
aXRoIGhpcyBndWl0YXIgb25saW5lIGR1cmluZyBhIGxvY2tkb3duLXBlcmlvZCBoeWJyaWQgd29y
a3Nob3Agd2UgZGlkIG9uIFN0YXJsaW5rIGFuZCBvdGhlciBzcGFjZS1iYXNlZCBuZXR3b3Jrcy4g
WW91IHdpbGwgYmUgc29yZWx5IG1pc3NlZCwgRGF2ZS4gUklQIQ0KDQpCZXN0IFdpc2hlcw0Kbmlz
aGFudGgNCg0KT24gMSBBcHIgMjAyNSwgYXQgMTg6MjcsIEZyYW50aXNlayBCb3JzaWsgdmlhIFN0
YXJsaW5rIHdyb3RlOg0KDQo+IEhlbGxvIHRvIGFsbCwNCj4NCj4gV2XigJlyZSBkZXZhc3RhdGVk
IHRvIGFubm91bmNlIHRoYXQgRGF2ZSBUw6RodCBoYXMgcGFzc2VkIGF3YXkuDQo+IDxodHRwczov
L2xpYnJlcW9zLmlvLzIwMjUvMDQvMDEvaW4tbG92aW5nLW1lbW9yeS1vZi1kYXZlLz4NCj4NCj4g
RGF2ZSB3YXMgYW4gYW1hemluZyBtYW4sIGhlbHBpbmcgdGhlIHdvcmxkIHdpdGggRlEtQ29EZWwg
YW5kIENBS0UsIGZpZ2h0aW5nDQo+IGJ1ZmZlcmJsb2F0IGFuZCB0cnlpbmcgdG8gbWFrZSB0aGUg
d29ybGQgYSBiZXR0ZXIgcGxhY2UuIEFsd2F5cyB3aWxsaW5nIHRvDQo+IGhlbHAsIGFuZCB3aXRo
b3V0IGhpbSDigJMgTGlicmVRb1MgKGFuZCB0aGUgb3RoZXIgUW9FIHNvbHV0aW9ucyBvdXQgdGhl
cmUpDQo+IHdvdWxkbuKAmXQgZXhpc3QuDQo+DQo+IERhdmUgd2FzIGFuIGluc3BpcmF0aW9uLCBh
bmQgd2UgYWxsIG1pc3MgaGltLiBXZeKAmXJlIHJlYWNoaW5nIG91dCB0byBmYW1pbHkNCj4gYW5k
IGNsb3NlIGZyaWVuZHMgdG8gc2VlIGlmIHRoZXJl4oCZcyBhbnl0aGluZyB3ZSBjYW4gZG8gdG8g
aGVscC4NCj4NCj4gRGF2ZSB3YXMgYW4gaW5zcGlyYXRpb24gdG8gdXMuIERhdmXigJlzIGNvbnRy
aWJ1dGlvbnMgdG8gTGludXgsIEZRLUNvRGVsLCBhbmQNCj4gQ0FLRSBpbXByb3ZlZCBpbnRlcm5l
dCBjb25uZWN0aXZpdHkgYXJvdW5kIHRoZSB3b3JsZCBmb3IgbWlsbGlvbnMgb2YNCj4gcGVvcGxl
LiBCZWNhdXNlIG9mIGhpbSwgbWlsbGlvbnMgb2YgcGVvcGxlIG5vdyBoYXZlIGFjY2VzcyB0byBy
ZWxpYWJsZQ0KPiB2aWRlbyBjYWxscyDigJMgYW5kIGluIHR1cm4sIGFjY2VzcyB0byBsb3ZlZCBv
bmVzLCBoZWFsdGhjYXJlLCBhbmQgY29tbXVuaXR5Lg0KPiBPbmUgb2YgUm9iZXJ04oCZcyBJU1Ag
Y3VzdG9tZXJzIGlzIGEga2luZCBwYXJhcGxlZ2ljIHdvbWFuIHdobyBsaXZlcyBpbiBhDQo+IGZh
ci1mbHVuZyBydXJhbCBDb2xvbmlhIGFyb3VuZCBFbCBQYXNvLCBUZXhhcy4gSGVyIHJlbGlhYmxl
IGFjY2VzcyB0byBoZXINCj4gZG9jdG9ycyB0aHJvdWdoIHRlbGVtZWRpY2luZSwgYW5kIHRvIGhl
ciBmYW1pbHkgdGhyb3VnaCBGYWNlVGltZSwgd2FzIG9ubHkNCj4gbWFkZSBwb3NzaWJsZSBiZWNh
dXNlIG9mIGhpcyBhbGdvcml0aG1zLiBUaGVyZSBhcmUgbWlsbGlvbnMgb2YgY2FzZXMgbGlrZQ0K
PiBoZXJzLCB3aGVyZSBEYXZl4oCZcyBjb250cmlidXRpb25zIGhhdmUgc2lsZW50bHkgZW5hYmxl
ZCBodW1hbiBjb25uZWN0aW9uIGFuZA0KPiBzYWZldHkuIEV2ZXJ5dGhpbmcgRGF2ZSBjb250cmli
dXRlZCB0byB0aGUgd29ybGQgb2YgdGVjaG5vbG9neSB3YXMgZnJlZSBhbmQNCj4gb3BlbiBzb3Vy
Y2UsIGZvciB0aGUgYmV0dGVybWVudCBvZiBodW1hbml0eS4NCj4NCj4gRGF2ZSBpcyB0aGUgcmVh
c29uIHRoYXQgU3Rhcmxpbmsgd2FzIGFibGUgdG8gdGFja2xlIGl0cyBsYXRlbmN5IGlzc3VlcyDi
gJMNCj4gZW5hYmxpbmcgYSBnZW5lcmF0aW9uIG9mIHlvdW5nIGVudHJlcHJlbmV1cnMgYWNyb3Nz
IHRoZSBkZXZlbG9waW5nIHdvcmxkLA0KPiBzdWNoIGFzIHRoZXNlIHlvdW5nIGZvbGtzIHBpY3R1
cmVkIGluIHRoZSBQaGlsbGlwaW5lcywgdG8gc3RhcnQgdGhlaXIgb3duDQo+IElTUHMgdG8gZXhw
YW5kIGludGVybmV0IGFjY2VzcyB0byB0aGVpciBjb21tdW5pdGllcy4gRGF2ZSBzdGFydGVkIHdv
cmsgb24NCj4gRlEtQ29EZWwgaW4gcGFydCBiZWNhdXNlIG9mIGhpcyBvd24gam91cm5leSB3b3Jr
aW5nIHRvIGV4cGFuZCBpbnRlcm5ldA0KPiBhY2Nlc3MgaW4gTmljYXJhZ3VhLCBzbyB3ZSBrbm93
IGhlIHNhdyB0aGF0IGhpcyB3b3JrIGhhZCBjb21lIGZ1bGwtY2lyY2xlDQo+IGFuZCBoZWxwZWQg
c28gbWFueS4NCj4NCj4gV2XigJlyZSBpbmNyZWRpYmx5IGdyYXRlZnVsIHRvIGhhdmUgRGF2ZSBh
cyBvdXIgZnJpZW5kLCBtZW50b3IsIGFuZCBhcw0KPiBzb21lb25lIHdobyBjb250aW51b3VzbHkg
aW5zcGlyZWQgdXMg4oCTIHNob3dpbmcgdXMgdGhhdCB3ZSBjb3VsZCBkbyBiZXR0ZXINCj4gZm9y
IGVhY2ggb3RoZXIgaW4gdGhlIHdvcmxkLCBhbmQgbGV2ZXJhZ2UgdGVjaG5vbG9neSB0byBtYWtl
IHRoYXQgaGFwcGVuLg0KPiBIZSB3aWxsIGJlIGRlYXJseSBtaXNzZWQuDQo+DQo+ICpQUzogKkRh
dmUgaXMgZm9yZXZlciBpbiBvdXIgaGVhcnRzIGFuZCBzb3VscywgaW4gb3VyIHJvdXRlcnMgYW5k
Li4uaW4NCj4gcHJvZHVjdGlvbiENCj4NCj4gKmh0dHBzOi8vZ2l0aHViLmNvbS9MaWJyZVFvRS9M
aWJyZVFvUy9wdWxsLzY4NA0KPiA8aHR0cHM6Ly9naXRodWIuY29tL0xpYnJlUW9FL0xpYnJlUW9T
L3B1bGwvNjg0PiAqDQo+DQo+IEFsbCB0aGUgYmVzdCwNCj4NCj4gRnJhbmsNCj4NCj4gRnJhbnRp
c2VrIChGcmFuaykgQm9yc2lrDQo+DQo+DQo+DQo+IGh0dHBzOi8vd3d3LmxpbmtlZGluLmNvbS9p
bi9mcmFudGlzZWtib3JzaWsNCj4NCj4gU2lnbmFsLCBUZWxlZ3JhbSwgV2hhdHNBcHA6ICs0MjE5
MTk0MTY3MTQNCj4NCj4gaU1lc3NhZ2UsIG1vYmlsZTogKzQyMDc3NTIzMDg4NQ0KPg0KPiBTa3lw
ZTogY2FzaW9hNTMwMmNhDQo+DQo+IGZyYW50aXNlay5ib3JzaWtAZ21haWwuY29tDQo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IFN0YXJsaW5rIG1h
aWxpbmcgbGlzdA0KPiBTdGFybGlua0BsaXN0cy5idWZmZXJibG9hdC5uZXQNCj4gaHR0cHM6Ly9s
aXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vc3RhcmxpbmsKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=

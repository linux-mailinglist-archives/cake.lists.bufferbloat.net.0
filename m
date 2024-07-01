Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CBE91E0F9
	for <lists+cake@lfdr.de>; Mon,  1 Jul 2024 15:40:06 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 268E23CB40;
	Mon,  1 Jul 2024 09:40:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1719841205;
	bh=vd9CvBHotF/v89HON667DiTEZYAHpUATkRD3cn5RUvM=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=gyYFQCokbXM86oKn4YRPflNmfhjGFg6i6wJ6jbNdGwCN4DX+BXCfaXzh9nKNXB1T4
	 NlEAN5JV7Llcjr8YwKxW1o08HgtBD48U6+H3q/GGrUKBmxhMG9e0eR3XHNZb6Rcdgp
	 UHCPLEeoIl4UV0peusH5J11J19ZW/4fwT7b7M6SQwTlXWIarTp+6Rr0G8ANvTVp6Ip
	 yN2bRJ26KthXDfnUwLs+04djg1xxLFZjH0aZbEsY3nsfOQNzg/BVUw90/dIGuvN8DK
	 SDIVfSbOUYXHJnaXOpf5WNsKP0OQMCRLkt1D7vd3Sx+Gbml1ED9o+o8JTuLpZ7MaXi
	 Sq4nttkzzyqPA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mx0a-00143702.pphosted.com (mx0a-00143702.pphosted.com
 [148.163.145.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 279283CB37;
 Mon,  1 Jul 2024 09:40:04 -0400 (EDT)
Received: from pps.filterd (m0184892.ppops.net [127.0.0.1])
 by mx0a-00143702.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 461DAHBK022241;
 Mon, 1 Jul 2024 09:40:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.com; h=
 from:to:subject:date:message-id:references:in-reply-to
 :content-type:mime-version; s=20190412; bh=HOsjLn4CYOBBLFrw9OKaT
 rOdg7V+iXWjJ90zSFIBWDk=; b=shUOTxo1LI1k/FNHfgrPlnpyx6QbIvP7wPmF+
 goZfb2DQpIi21IAE59GX+gAU2d+rclsUocmJEMSSFjsfI+JJUK3A7m5efYspgi8n
 /dXnUS1dVs4f+F6Rj8p1FDSJ/iUtF8tbmYjZlodEOsDjoUKcQATfPhClTqMusyyr
 1krbfYtUJHreo4cCsglNJ8nqX82wMMLfOW5+Bjms7LfRyKwc0cOUSSNdKymSPDg0
 4p41OQSC50vI80EMXQqLdUnxuXeimjFFh5vizUbqR7kg1N2/KxRTtLfbyu8wjUw9
 68tza+fbMcoin90qItEfaUjET/REQAs+o9xDyFdm10km4UcTg==
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2170.outbound.protection.outlook.com [104.47.58.170])
 by mx0a-00143702.pphosted.com (PPS) with ESMTPS id 402d4ju7r4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 01 Jul 2024 09:40:02 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WX0n5Lrf8aGtPJOd0ra+eIyYrE+FDsrIzJL6BLd1JvuQi7lOwp4ec24uXAEkq0H5X0+L3B8EpoZh9/uMzDVpIyycbTBgFDdbcJRRcuewEBab/jb3hhwFQhTYpSkBECSG/xPaNuWCZKFHFm1Jon2c5gipDFXc2yf2fcoADL0euq5ymKcRFvArEqzZ3F6qP68XlUNkLYZ3MVtaA/uiiSLoa8IAt8VKAlXQKO6sHLfmk6wX6sOdsKMf10aO82gduCMDSNLJFmk0vHgYk5gaXFd0WaS6EcRCJqy3DReKZs2D4PPsBOSgKZ4dhj859wqV/MI/CmSt+bn0NqfjIcKtu8ArtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HOsjLn4CYOBBLFrw9OKaTrOdg7V+iXWjJ90zSFIBWDk=;
 b=KyOglwaM8Jv4cus8JbrkzxnBVzYYmj0xjxLHAR+Bd2iM12EYi9vyRUuKqDDy+Rp70bi6hiCcaDVTQygktkx2XGdYVTuBL7q8FHPh1g4k9ai1TxEciK6OZQiXMvkTUsaZ8NfJ4SLh/GMPElVpzEwn668bRtm17qbv4efg0vmWTXYeXcu4m1G7wiI6c+IyuyI9XXnj70sZPeVeXX71dTa6uJxKPabBbfKzWHGhJFiAGRuNQzjviTJXFHpY3xNx22EPhpbuaxTTEwR2GJdkgGgdXLHANkIjmkx4C49tyacsQ+s1Tp9r9nwQGPa2Lpo0mSzfsvxxfrS9fEZwmfNKaoOtPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=comcast.com; dmarc=pass action=none header.from=comcast.com;
 dkim=pass header.d=comcast.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=comcastcorp.onmicrosoft.com; s=selector1-comcastcorp-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HOsjLn4CYOBBLFrw9OKaTrOdg7V+iXWjJ90zSFIBWDk=;
 b=SEI3mtK7ntvLS4V2XoBdVJNaQXvggvCKUFXF/OhphV/DPup5RTvUTD4eOnuaC6f4Oueipd872NbYvK+Iyvu101DL6nBRXBAhDaxUFW+AdYIL52wGAn76/jTN3qIVfHaivpcjbZkszVzgZqmzyAAD8AjQK9PjaqLi3qLUrQE+XZw=
Received: from MN2PR11MB3709.namprd11.prod.outlook.com (2603:10b6:208:f3::22)
 by SA2PR11MB4907.namprd11.prod.outlook.com (2603:10b6:806:111::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.29; Mon, 1 Jul
 2024 13:39:57 +0000
Received: from MN2PR11MB3709.namprd11.prod.outlook.com
 ([fe80::8ae6:3313:d9f8:20d7]) by MN2PR11MB3709.namprd11.prod.outlook.com
 ([fe80::8ae6:3313:d9f8:20d7%4]) with mapi id 15.20.7719.028; Mon, 1 Jul 2024
 13:39:57 +0000
To: Frantisek Borsik <frantisek.borsik@gmail.com>, bloat
 <bloat@lists.bufferbloat.net>, Jeremy Austin via Rpm
 <rpm@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>
Thread-Topic: [Bloat] FixCapeInternet.com - anybody from Massachusetts willing
 to do this speedtest?
Thread-Index: AQHay7wpv1OOd+tfY0WrFFZ7xHZVqw==
Date: Mon, 1 Jul 2024 13:39:57 +0000
Message-ID: <E88FE626-1DD9-47E0-8B8B-CF06F6F25696@comcast.com>
References: <CAJUtOOjE7Mrj0wGGpi7s19x_t0QY7trNFfp3fBA_VBoEi9nA7w@mail.gmail.com>
In-Reply-To: <CAJUtOOjE7Mrj0wGGpi7s19x_t0QY7trNFfp3fBA_VBoEi9nA7w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.86.24060916
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB3709:EE_|SA2PR11MB4907:EE_
x-ms-office365-filtering-correlation-id: 5e0fa028-fc28-43ea-8cd1-08dc99d34c4c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7093399012|376014|83080400003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?aDRPWFFHTnJ6ZXJoY3hSYThJVXJGbUx2N3c4LzA4ekVQY0l0ejU3N0xraUU0?=
 =?utf-8?B?K3hSOFNod3ljcWFuOUljNGpDQW12UjdyWmF5VnlYNVFzZVNhd21ZNVdHMm84?=
 =?utf-8?B?ZWM1MkZic1pRMFUvbStBQ0Rwb0NmT2tKL0pFMFlQMTUwL25kOW5BRlhYYXJO?=
 =?utf-8?B?RWRVblBLaSsvQ0sycXQ1VTlmbVkwaExLeE5PNVRrVE9rYVRtMm11MHQvZit3?=
 =?utf-8?B?SkwrK1V2M2xoZm1zcE9TVEQydUYrd1JybmFXQWN2OTZXVmlYOEdmbk1KN1FC?=
 =?utf-8?B?cDdJMGZnbHh0VkpSR0Q4dnloRnZMZlhwdTBRcjZxc1FacmJiUmM2SjF3T0FT?=
 =?utf-8?B?c2cyUGRJSUV0ZTVUZVZScVFQTm95TW9aSVg3YW9MdHhoS296dFhsWUg2VndY?=
 =?utf-8?B?Q29sR1Q3Q0tkYUZOYUpGSU9aaDk2SVpuU0dRNnNZQUZUOFF2RWFmWW82OGE5?=
 =?utf-8?B?VVVBUFZtQUNRK1lYQ3Mzd05XbnBqa3AydVExUXNvaHdodUlEck55UUFtNTIx?=
 =?utf-8?B?dFoxY1ZFK0RrNC80blRIaUlhYVE4d0xSL1gzYlhSTzlEWHNGWnBvV0Zac3l5?=
 =?utf-8?B?QW03YVZaVE5SWnIyMGtrV0crMUxmSDBpSWFRbC9KdklEZWZVTXRkd0hwOHVh?=
 =?utf-8?B?VVVYdGhGd01KUDRZdXZObEFkSG13WElNT1ZvcjFEWkNlNzFEelQ2ejhoNXpP?=
 =?utf-8?B?NU9rVGs3a0NVYThsMW1xOXdUeXYxeExlbjU0ODBDSmZvZmJCY1Iya2grQXEr?=
 =?utf-8?B?d0gvWExjcW5NM05JS3ljYTNDK1ByekhiT1I3QlBCVDdwcDgrS01CUWh6d0ZQ?=
 =?utf-8?B?Q0hqMHFSeDRoWG5LSjBva0R4MjFwVUh4U2luZmdZb1lYTTJOVnJYRHBzUVF2?=
 =?utf-8?B?T2xEMi96MlRTaHl2SnJJTzdKRk9vYk5Hczh4NVdjS3JkYTlnM2JYZC9SNU5G?=
 =?utf-8?B?a3Ywa2hITGVuVU9iZlRKMGhtNGg3cHFTZzVQeE0zb0hja1VEZ2F6UEszbEcx?=
 =?utf-8?B?Nko1NVdPRGtPa2lzemgwSU5SSGcrMUN5UzAxbzl0NkdJV2VWa0Uwd2dnbUlS?=
 =?utf-8?B?SUVCcEU0c1JYT3c4V1NsUmRMYkxkRTd4VTd2bWErUDIyVXhITHJ6YTJ2WWNJ?=
 =?utf-8?B?dS9pMXRDTENxTy9mZnhXYkpHeDdubEZaMWVYVEtQNXBwTzgzc3Jxb3REaklC?=
 =?utf-8?B?TUZmZDJxaG1qQVYyUEpGSVdnMHNwcTREYmorR1Q3dWowY0xrTCsyS2lhSFll?=
 =?utf-8?B?MEZoQVRjQzRWUmsrQWw3cVdnL2x3dTJXaUtiSCtxaEVuRkE2N1ZOZ21Zck1w?=
 =?utf-8?B?emZRYmhxZjllMjFiU0NJL054elQ1ZG5ySDNJYmRXWmpBMXpYZnFqaE9GVFRT?=
 =?utf-8?B?cFBudEVnd2MwTDdjM0FVUkpjd3RBUGxtb3FIaUs3YXJ5Rzd0alFjNEZoZEs0?=
 =?utf-8?B?Z1ZrQWFQRmU2TGQ2SHFBeUM0SHVOZVA4cm9sa1lsWXN5aWlESnNhSnkwTlRy?=
 =?utf-8?B?VU96QkRpNGV5YkJxQVFOOWd5ZldYNjhlTVlwZHBDM0hBaW5iWGJGdkRLbGFr?=
 =?utf-8?B?aXZqVXNyaWZ6SUl6L1o1bXBjSmxadHdrbXFzaHNGRVdqaGtPOThiM3ZqNk1F?=
 =?utf-8?B?cklUd1BuWTZJLzNiamN0d2lWTWwzSkVNR0JhQWREaURtUzlIWGU1ejB2WTNt?=
 =?utf-8?B?cG5KKzRUNmZQVTg2eXBPLzVXcEt6WGdoRkM5VTZadi9HbGhEMGZGMDRYaGkx?=
 =?utf-8?B?YTZyam1NdW9SN3VEelNIdGpXTFp5cVJDMkJ1eldpWlVaZzJSYW4xV0FnTjhl?=
 =?utf-8?B?OG1BWWdlblB3YUY4TWo1NFN5UGtqVTN0ZHdzblFwQUxZS21TYUxoYnoxWDlD?=
 =?utf-8?B?VFA2S3psSk5RZTBadnpTcEZDYjR4M3luSENQVFFOc3p3SmFocGdtM2xXZnBR?=
 =?utf-8?Q?RaR7OYW7EcA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3709.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7093399012)(376014)(83080400003)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UGRZakNUZXVESHhHcVR4TFhLSkVVQ21laUw1L2FQVG1SWk9hUjd4d1pmSVZQ?=
 =?utf-8?B?MWJiN0FkMS82cWdiVk04azFXS2FhTjNESU5ST0dnSFdTTkxiRitOZS9JaTNX?=
 =?utf-8?B?R3NLYWNsZmpSdlFYanR3Y2x6MXdtQUVSMnZ6RDd4dGtPYkh5d2xZQTYvVEl5?=
 =?utf-8?B?YWNacHRuRHJYeUNGTjNyREZqLytsZEdPcEJ0TmxyNFQ2eHp6dkwrYlNjNjNS?=
 =?utf-8?B?R0hhZEpMRkk5QWo0QmN6R2JYV0FoVk9lOGRDVG9jendiZ2pYWDJ0aCthOFhW?=
 =?utf-8?B?TENrUER2T0x5eERVczAvazNEN2FRN0xWcGtwSnRGTkpCQ2hqekVVdzdyWDh5?=
 =?utf-8?B?elluNWs5SUlXL2JMMDBXOG5aZEZtRGV1RDhaVzl0UmpSQnJiUXdoSTFWejkx?=
 =?utf-8?B?cU1VeU15RTUxUGNRSG9kZEs0dVdkenFQMU85OE56MWtlVnZjdzVmWnd3ekpQ?=
 =?utf-8?B?V1FpZEdyVlF0UUc2SnM3K0E4cFlucUNSbFQ4Z29UQXZZb3BzV2ZTSjd4aVdY?=
 =?utf-8?B?V0dqV2dadDR0UFpWVUszbS84Qmw0a21kZnpEUnNtYnNwS0xIMndzUFgrWFVS?=
 =?utf-8?B?SUFwQmRVSXUwVzJCSHR1L3h2RlJMdHlvczg5T2Q2S0E0TS9wYXpkaTNqNUpa?=
 =?utf-8?B?ZFpnRUppT1VaTkIrVnkyOFQvZlpTSzdRWERtbXRnR0xwLzZQMGdpNlp1YUxO?=
 =?utf-8?B?QlF1dXVTRmJoU0dNQm8zMGVkZ3pHVS9GNHptRmp4YWFBMXU4Y0dlUE53ZFVM?=
 =?utf-8?B?RU4vVmo1SmQ0cFcxWFlHd0lKbGRVbzA1S0wrcHRCaHNNeU9ROGtsc0NGNXYx?=
 =?utf-8?B?Z043UzU2ZXBKdHV5bkorZkJSTThZbHZxTmNkL3N4cUpadGxObDVVS1JQL2dT?=
 =?utf-8?B?UEpNU0lkckZURU1KbXljcmhudVJqWXRTa0NIZkRTVXd2cWMyREUwK29vbEtw?=
 =?utf-8?B?VHM2d04yRjltalFIQUE1MzByK2h5NnR1dUlGQW5nVkRjV1F5MlBJb3UwM1NB?=
 =?utf-8?B?UFZPU3VoS29FYjJ3OThMNUJQUHBiVGtoazlmR3ZKYkRtSHhqVUZzNU9TSUR4?=
 =?utf-8?B?UHdFaW1xR29qR05QZU1WVW9hcFljSjljSnNEb3lrTDN1TFo1R0plTVdJUUc0?=
 =?utf-8?B?YjdUNjhOVkk5aWpUbm5ieWUzQ3U5c1Z6Rm1uWmNnd3VnalFocVhEaWNGeEhC?=
 =?utf-8?B?VFZDUlM4V2g1elVnQUllM0ZpM0ZMTENUSE9XUHNPaTlxSUVzWnpHc1ppT0lG?=
 =?utf-8?B?eFlwODhPZXRqTWhvd20rd0NmM0RQM285ZjZUUzE2MndsdjNFdkZpU1hqbEtu?=
 =?utf-8?B?bUw4Z3F0aXM0WENCUjFncEZKZ0VubjAvSHlUVUgzZlJxNUYwcHlEZHZvWXIw?=
 =?utf-8?B?aWJaUGI3bDJEYk5MQUxhbnZlM044cGt6THFlOGJLQzdNZzRPSGJYemREMzUy?=
 =?utf-8?B?SUtNd0MrMHRuaUFXS0FSNG9TN1lDYjFodGVvMWRIeFVsL2xlZS81UzZjOGRj?=
 =?utf-8?B?ZzUrUzFFWFhuUjB2TTZXN0VMdVVtVjhWbjBZNHZNL2cvVHg5TUFXWVNRWG51?=
 =?utf-8?B?ZFgxL2JuejQvakFZVm4yOG5KUk9GYkxoVVpmbElLWW8yNUxOcWtBQmo5ejdl?=
 =?utf-8?B?ZnBIRzJWbFFJSWRBZ0VPeExXK0hnNkhBaUJsYlJlZ2VVK0V6VWpPWUhUdHpR?=
 =?utf-8?B?VFlRejdkSlhJR1hXU1hoMHJzcFFsNHNrb0lMMnJjTUNDV1BWMXoyZTZScG50?=
 =?utf-8?B?V2xpLzRVbEVQTjZmb2N6QlhKN1EvODVxWVhYbk9ZRlhNU1Y3THV6MjNkWjFH?=
 =?utf-8?B?SnY5ZlJkaGo4MGtxU3AwWkhDcEhnZkJWMkQyS2tHTVFQWjVRMTJzVFRBYUJl?=
 =?utf-8?B?SlFNRVgxK3BpdStLTTVCMEhjaXNVZVEyRWR2M2wxWkxiWDBiMmVsUTVDYmZF?=
 =?utf-8?B?QzJlQklVa3diQ0F4b1RodlBTSzJpdmlhMldhcHVrSzZnRVQrd3c3WlphT3lS?=
 =?utf-8?B?VUtrN0R4SC9ZSnhwQ2lxYjkzdmFBMGFnbU5iL0lXQ0x1MHcxeWZDQVlTVllP?=
 =?utf-8?B?WkNZU3Y5ZzBIVWZ6RnFPTmc3NUNnSkkzTW03dmNCc2hDRFU1aHVpd1dnL1Ix?=
 =?utf-8?B?bGZJVTNnMjd0c25tZ01wV3lRNEk4ekFNQ09RUktRNHdpWlJZQ1hIa0t2d1lO?=
 =?utf-8?B?dHFZUWVXTko0VlVtYis3ZjlGekZXeVJoclUyaWUwSkc1WGxuaU9wSWhaSEcz?=
 =?utf-8?B?RS85YmlPYVFiUGE3M3R0dWplWDFRPT0=?=
MIME-Version: 1.0
X-OriginatorOrg: comcast.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3709.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e0fa028-fc28-43ea-8cd1-08dc99d34c4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2024 13:39:57.6569 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 906aefe9-76a7-4f65-b82d-5ec20775d5aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tXWeRIGd2l8Som+K3Xs/DxNMcb/tQx+sFLhJw7pTy+L/IQpUR3J+raE9BCkYiQ/gpmngzYWrVYr9hETnjxlNM8Rt3FvEeQELA6TwjkEUJLU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4907
X-Proofpoint-GUID: QQDUgF6JRYgtwowvUSZKQLn1wXeBwk71
X-Proofpoint-ORIG-GUID: QQDUgF6JRYgtwowvUSZKQLn1wXeBwk71
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-01_12,2024-06-28_01,2024-05-17_01
X-Proofpoint-Spam-Reason: safe
Subject: Re: [Cake] [Bloat] FixCapeInternet.com - anybody from Massachusetts
 willing to do this speedtest?
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
From: "Livingood, Jason via Cake" <cake@lists.bufferbloat.net>
Reply-To: "Livingood, Jason" <jason_livingood@comcast.com>
Content-Type: multipart/mixed; boundary="===============8810148136723435581=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8810148136723435581==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E88FE6261DD947E08B8BCF06F6F25696comcastcom_"

--_000_E88FE6261DD947E08B8BCF06F6F25696comcastcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXQgaXMgYW4gT29rbGEgdGVzdCB0aGF0IHdpbGwgcnVuIG92ZXIgV2lGaSBvbiB0aGUgdXNlcuKA
mXMgTEFOIOKAkyBzbyBJIGV4cGVjdCBpdCB0byBnZW5lcmFsbHkgb25seSBtZWFzdXJlIFdpRmkg
TEFOIHBlcmZvcm1hbmNlIGFuZCBub3QgbXVjaCBlbHNlLg0KDQpGcm9tOiBCbG9hdCA8YmxvYXQt
Ym91bmNlc0BsaXN0cy5idWZmZXJibG9hdC5uZXQ+IG9uIGJlaGFsZiBvZiBGcmFudGlzZWsgQm9y
c2lrIHZpYSBCbG9hdCA8YmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0Pg0KUmVwbHktVG86IEZy
YW5rIEJvcnNpayA8ZnJhbnRpc2VrLmJvcnNpa0BnbWFpbC5jb20+DQpEYXRlOiBTYXR1cmRheSwg
SnVuZSAyOSwgMjAyNCBhdCAxNzowMw0KVG86IGJsb2F0IDxibG9hdEBsaXN0cy5idWZmZXJibG9h
dC5uZXQ+LCBKZXJlbXkgQXVzdGluIHZpYSBScG0gPHJwbUBsaXN0cy5idWZmZXJibG9hdC5uZXQ+
LCBDYWtlIExpc3QgPGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0Pg0KU3ViamVjdDogW0Jsb2F0
XSBGaXhDYXBlSW50ZXJuZXQuY29tIC0gYW55Ym9keSBmcm9tIE1hc3NhY2h1c2V0dHMgd2lsbGlu
ZyB0byBkbyB0aGlzIHNwZWVkdGVzdD8NCg0KaHR0cHM6Ly9maXhjYXBlaW50ZXJuZXQuY29tPGh0
dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovZml4Y2FwZWludGVybmV0LmNvbV9fOyEh
Q1FsM21jSFgyQSFFaVdhcHZhNEtJa0RmS1ZMU0lDZkZWUXd5Q1R5X0Z6NDdEd3RvLThuUS1DTmFF
RWhEV19teUpOZnNyS3h0WDdobjAwNVdleGxyRUduS3I2MTNJY00wVmRtR0kyZGtRJD4gLSBuZWVk
ZWQgYSBWUE4gdG8gYWN0dWFsbHkgb3BlbiBpdCBpbiBnb29kIG9sZSBFdXJvcGUuLi4NCmZvdW5k
IGl0IG9uIExpbmtlZEluOg0KaHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2ZlZWQvdXBkYXRlL3Vy
bjpsaTphY3Rpdml0eTo3MjExNzg1MTUyNDM4MzgyNTkyLzxodHRwczovL3VybGRlZmVuc2UuY29t
L3YzL19faHR0cHM6L3d3dy5saW5rZWRpbi5jb20vZmVlZC91cGRhdGUvdXJuOmxpOmFjdGl2aXR5
OjcyMTE3ODUxNTI0MzgzODI1OTIvX187ISFDUWwzbWNIWDJBIUVpV2FwdmE0S0lrRGZLVkxTSUNm
RlZRd3lDVHlfRno0N0R3dG8tOG5RLUNOYUVFaERXX215Sk5mc3JLeHRYN2huMDA1V2V4bHJFR25L
cjYxM0ljTTBWZFJPRHIxV0EkPiwgYXBwYXJlbnRseSwgbGF1bmNoZWQgbGlrZSAzIGRheXMgYWdv
Lg0KDQpBc2tlZCB0aGVtIGlmIHRoZXkgdGVzdCBmb3IgbGF0ZW5jeSwgYnVmZmVyYmxvYXQsIGpp
dHRlciAobGlrZSBPb2tsYSwgV2F3ZWZvcm0pIHNvIHdpbGwgc2VlLg0KDQpCdXQgaWYgdGhlcmUg
aXMgc29tZW9uZSBmcm9tIE1hc3NhY2h1c2V0dHMsIHdvdWxkIGJlIGdyZWF0IHRvIHNlZSB0aGUg
cmVzdWx0cyBhbmQgZXhwZXJpZW5jZSBmcm9tIHRoZSB0ZXN0Lg0KDQpBbGwgdGhlIGJlc3QsDQoN
CkZyYW5rDQpGcmFudGlzZWsgKEZyYW5rKSBCb3JzaWsNCg0KaHR0cHM6Ly93d3cubGlua2VkaW4u
Y29tL2luL2ZyYW50aXNla2JvcnNpazxodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6
L3d3dy5saW5rZWRpbi5jb20vaW4vZnJhbnRpc2VrYm9yc2lrX187ISFDUWwzbWNIWDJBIUVpV2Fw
dmE0S0lrRGZLVkxTSUNmRlZRd3lDVHlfRno0N0R3dG8tOG5RLUNOYUVFaERXX215Sk5mc3JLeHRY
N2huMDA1V2V4bHJFR25LcjYxM0ljTTBWZUl4MVpjRXckPg0KU2lnbmFsLCBUZWxlZ3JhbSwgV2hh
dHNBcHA6ICs0MjE5MTk0MTY3MTQNCmlNZXNzYWdlLCBtb2JpbGU6ICs0MjA3NzUyMzA4ODUNClNr
eXBlOiBjYXNpb2E1MzAyY2ENCmZyYW50aXNlay5ib3JzaWtAZ21haWwuY29tPG1haWx0bzpmcmFu
dGlzZWsuYm9yc2lrQGdtYWlsLmNvbT4NCg==

--_000_E88FE6261DD947E08B8BCF06F6F25696comcastcom_
Content-Type: text/html; charset="utf-8"
Content-ID: <B08F117DCFD3B741B17BEC9E502075B1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6bz0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6b2ZmaWNlIiB4
bWxuczp3PSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOm9mZmljZTp3b3JkIiB4bWxuczptPSJo
dHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL29mZmljZS8yMDA0LzEyL29tbWwiIHhtbG5zPSJo
dHRwOi8vd3d3LnczLm9yZy9UUi9SRUMtaHRtbDQwIj4NCjxoZWFkPg0KPG1ldGEgaHR0cC1lcXVp
dj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPg0KPG1l
dGEgbmFtZT0iR2VuZXJhdG9yIiBjb250ZW50PSJNaWNyb3NvZnQgV29yZCAxNSAoZmlsdGVyZWQg
bWVkaXVtKSI+DQo8c3R5bGU+PCEtLQ0KLyogRm9udCBEZWZpbml0aW9ucyAqLw0KQGZvbnQtZmFj
ZQ0KCXtmb250LWZhbWlseToiQ2FtYnJpYSBNYXRoIjsNCglwYW5vc2UtMToyIDQgNSAzIDUgNCA2
IDMgMiA0O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsNCglwYW5vc2UtMToy
IDE1IDUgMiAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OkFwdG9zOw0K
CXBhbm9zZS0xOjIgMTEgMCA0IDIgMiAyIDIgMiA0O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1p
bHk6IlRpbWVzIE5ldyBSb21hbiBcKEJvZHkgQ1NcKSI7DQoJcGFub3NlLTE6MiAxMSA2IDQgMiAy
IDIgMiAyIDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29O
b3JtYWwsIGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCglmb250LXNpemU6MTIuMHB0Ow0K
CWZvbnQtZmFtaWx5OiJBcHRvcyIsc2Fucy1zZXJpZjt9DQphOmxpbmssIHNwYW4uTXNvSHlwZXJs
aW5rDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjpibHVlOw0KCXRleHQtZGVjb3Jh
dGlvbjp1bmRlcmxpbmU7fQ0Kc3Bhbi5FbWFpbFN0eWxlMTgNCgl7bXNvLXN0eWxlLXR5cGU6cGVy
c29uYWwtcmVwbHk7DQoJZm9udC1mYW1pbHk6IkFwdG9zIixzYW5zLXNlcmlmOw0KCWNvbG9yOndp
bmRvd3RleHQ7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0eWxlLXR5cGU6ZXhwb3J0LW9ubHk7
DQoJZm9udC1zaXplOjEwLjBwdDsNCgltc28tbGlnYXR1cmVzOm5vbmU7fQ0KQHBhZ2UgV29yZFNl
Y3Rpb24xDQoJe3NpemU6OC41aW4gMTEuMGluOw0KCW1hcmdpbjoxLjBpbiAxLjBpbiAxLjBpbiAx
LjBpbjt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5
bGU+DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJFTi1VUyIgbGluaz0iYmx1ZSIgdmxpbms9InB1cnBs
ZSIgc3R5bGU9IndvcmQtd3JhcDpicmVhay13b3JkIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9u
MSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjE0LjBwdCI+
SXQgaXMgYW4gT29rbGEgdGVzdCB0aGF0IHdpbGwgcnVuIG92ZXIgV2lGaSBvbiB0aGUgdXNlcuKA
mXMgTEFOIOKAkyBzbyBJIGV4cGVjdCBpdCB0byBnZW5lcmFsbHkgb25seSBtZWFzdXJlIFdpRmkg
TEFOIHBlcmZvcm1hbmNlIGFuZCBub3QgbXVjaCBlbHNlLg0KPG86cD48L286cD48L3NwYW4+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxNC4wcHQiPjxv
OnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxkaXYgc3R5bGU9ImJvcmRlcjpub25lO2JvcmRl
ci10b3A6c29saWQgI0I1QzRERiAxLjBwdDtwYWRkaW5nOjMuMHB0IDBpbiAwaW4gMGluIj4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxiPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtDYWxp
YnJpJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6YmxhY2siPkZyb206DQo8L3NwYW4+PC9iPjxzcGFu
IHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6
YmxhY2siPkJsb2F0ICZsdDtibG9hdC1ib3VuY2VzQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldCZndDsg
b24gYmVoYWxmIG9mIEZyYW50aXNlayBCb3JzaWsgdmlhIEJsb2F0ICZsdDtibG9hdEBsaXN0cy5i
dWZmZXJibG9hdC5uZXQmZ3Q7PGJyPg0KPGI+UmVwbHktVG86IDwvYj5GcmFuayBCb3JzaWsgJmx0
O2ZyYW50aXNlay5ib3JzaWtAZ21haWwuY29tJmd0Ozxicj4NCjxiPkRhdGU6IDwvYj5TYXR1cmRh
eSwgSnVuZSAyOSwgMjAyNCBhdCAxNzowMzxicj4NCjxiPlRvOiA8L2I+YmxvYXQgJmx0O2Jsb2F0
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldCZndDssIEplcmVteSBBdXN0aW4gdmlhIFJwbSAmbHQ7cnBt
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldCZndDssIENha2UgTGlzdCAmbHQ7Y2FrZUBsaXN0cy5idWZm
ZXJibG9hdC5uZXQmZ3Q7PGJyPg0KPGI+U3ViamVjdDogPC9iPltCbG9hdF0gRml4Q2FwZUludGVy
bmV0LmNvbSAtIGFueWJvZHkgZnJvbSBNYXNzYWNodXNldHRzIHdpbGxpbmcgdG8gZG8gdGhpcyBz
cGVlZHRlc3Q/PG86cD48L286cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48YSBocmVmPSJodHRwczovL3VybGRlZmVuc2UuY29tL3YzL19faHR0cHM6
L2ZpeGNhcGVpbnRlcm5ldC5jb21fXzshIUNRbDNtY0hYMkEhRWlXYXB2YTRLSWtEZktWTFNJQ2ZG
VlF3eUNUeV9GejQ3RHd0by04blEtQ05hRUVoRFdfbXlKTmZzckt4dFg3aG4wMDVXZXhsckVHbkty
NjEzSWNNMFZkbUdJMmRrUSQiPmh0dHBzOi8vZml4Y2FwZWludGVybmV0LmNvbTwvYT4gLSBuZWVk
ZWQgYSBWUE4gdG8gYWN0dWFsbHkgb3Blbg0KIGl0IGluIGdvb2Qgb2xlIEV1cm9wZS4uLjxvOnA+
PC9vOnA+PC9wPg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPmZvdW5kIGl0IG9uIExpbmtl
ZEluOjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PGEgaHJlZj0iaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi93d3cubGlua2VkaW4u
Y29tL2ZlZWQvdXBkYXRlL3VybjpsaTphY3Rpdml0eTo3MjExNzg1MTUyNDM4MzgyNTkyL19fOyEh
Q1FsM21jSFgyQSFFaVdhcHZhNEtJa0RmS1ZMU0lDZkZWUXd5Q1R5X0Z6NDdEd3RvLThuUS1DTmFF
RWhEV19teUpOZnNyS3h0WDdobjAwNVdleGxyRUduS3I2MTNJY00wVmRST0RyMVdBJCI+aHR0cHM6
Ly93d3cubGlua2VkaW4uY29tL2ZlZWQvdXBkYXRlL3VybjpsaTphY3Rpdml0eTo3MjExNzg1MTUy
NDM4MzgyNTkyLzwvYT4sDQogYXBwYXJlbnRseSwgbGF1bmNoZWQgbGlrZSAzIGRheXMgYWdvLjxv
OnA+PC9vOnA+PC9wPg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9v
OnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+QXNrZWQgdGhlbSBp
ZiB0aGV5IHRlc3QgZm9yIGxhdGVuY3ksIGJ1ZmZlcmJsb2F0LCBqaXR0ZXIgKGxpa2UgT29rbGEs
IFdhd2Vmb3JtKSBzbyB3aWxsIHNlZS48bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+QnV0IGlmIHRoZXJlIGlzIHNvbWVvbmUgZnJvbSZuYnNwO01h
c3NhY2h1c2V0dHMsIHdvdWxkIGJlIGdyZWF0IHRvIHNlZSB0aGUgcmVzdWx0cyBhbmQgZXhwZXJp
ZW5jZSBmcm9tIHRoZSB0ZXN0LjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PGJyIGNsZWFyPSJhbGwiPg0KPG86cD48L286cD48L3A+DQo8ZGl2Pg0K
PGRpdj4NCjxkaXY+DQo8ZGl2Pg0KPGRpdj4NCjxkaXY+DQo8ZGl2Pg0KPGRpdj4NCjxkaXY+DQo8
ZGl2Pg0KPGRpdj4NCjxkaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+QWxsIHRoZSBi
ZXN0LDxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
IiBzdHlsZT0ibXNvLW1hcmdpbi10b3AtYWx0OmF1dG87bXNvLW1hcmdpbi1ib3R0b20tYWx0OmF1
dG8iPjxzcGFuIHN0eWxlPSJjb2xvcjojMjIyMjIyIj5GcmFuazxvOnA+PC9vOnA+PC9zcGFuPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJtc28tbWFyZ2luLXRvcC1hbHQ6YXV0bztt
c28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0byI+PHNwYW4gc3R5bGU9ImNvbG9yOiMyMjIyMjIiPkZy
YW50aXNlayAoRnJhbmspIEJvcnNpazxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiIHN0eWxlPSJtc28tbWFyZ2luLXRvcC1hbHQ6YXV0bzttc28tbWFyZ2luLWJvdHRv
bS1hbHQ6YXV0byI+PHNwYW4gc3R5bGU9ImNvbG9yOiMyMjIyMjIiPiZuYnNwOzxvOnA+PC9vOnA+
PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJtc28tbWFyZ2luLXRvcC1h
bHQ6YXV0bzttc28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0byI+PHNwYW4gc3R5bGU9ImNvbG9yOiMy
MjIyMjIiPjxhIGhyZWY9Imh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMvX19odHRwczovd3d3Lmxp
bmtlZGluLmNvbS9pbi9mcmFudGlzZWtib3JzaWtfXzshIUNRbDNtY0hYMkEhRWlXYXB2YTRLSWtE
ZktWTFNJQ2ZGVlF3eUNUeV9GejQ3RHd0by04blEtQ05hRUVoRFdfbXlKTmZzckt4dFg3aG4wMDVX
ZXhsckVHbktyNjEzSWNNMFZlSXgxWmNFdyQiIHRhcmdldD0iX2JsYW5rIj48c3BhbiBzdHlsZT0i
Y29sb3I6IzExNTVDQyI+aHR0cHM6Ly93d3cubGlua2VkaW4uY29tL2luL2ZyYW50aXNla2JvcnNp
azwvc3Bhbj48L2E+PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIg
c3R5bGU9Im1zby1tYXJnaW4tdG9wLWFsdDphdXRvO21zby1tYXJnaW4tYm90dG9tLWFsdDphdXRv
Ij48c3BhbiBzdHlsZT0iY29sb3I6IzIyMjIyMiI+U2lnbmFsLCBUZWxlZ3JhbSwgV2hhdHNBcHA6
ICs0MjE5MTk0MTY3MTQmbmJzcDs8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIiBzdHlsZT0ibXNvLW1hcmdpbi10b3AtYWx0OmF1dG87bXNvLW1hcmdpbi1ib3R0b20t
YWx0OmF1dG8iPjxzcGFuIHN0eWxlPSJjb2xvcjojMjIyMjIyIj5pTWVzc2FnZSwgbW9iaWxlOiAr
NDIwNzc1MjMwODg1PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIg
c3R5bGU9Im1zby1tYXJnaW4tdG9wLWFsdDphdXRvO21zby1tYXJnaW4tYm90dG9tLWFsdDphdXRv
Ij48c3BhbiBzdHlsZT0iY29sb3I6IzIyMjIyMiI+U2t5cGU6IGNhc2lvYTUzMDJjYTxvOnA+PC9v
OnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJtc28tbWFyZ2luLXRv
cC1hbHQ6YXV0bzttc28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0byI+PHNwYW4gc3R5bGU9ImNvbG9y
OiMyMjIyMjIiPjxhIGhyZWY9Im1haWx0bzpmcmFudGlzZWsuYm9yc2lrQGdtYWlsLmNvbSIgdGFy
Z2V0PSJfYmxhbmsiPjxzcGFuIHN0eWxlPSJjb2xvcjojMTE1NUNDIj5mcmFudGlzZWsuYm9yc2lr
QGdtYWlsLmNvbTwvc3Bhbj48L2E+PG86cD48L286cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8L2Rp
dj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2
Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+
DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_E88FE6261DD947E08B8BCF06F6F25696comcastcom_--

--===============8810148136723435581==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8810148136723435581==--

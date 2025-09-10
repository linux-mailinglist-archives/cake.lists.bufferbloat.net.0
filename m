Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 47758B51316
	for <lists+cake@lfdr.de>; Wed, 10 Sep 2025 11:47:12 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 2B4C7661500;
	Wed, 10 Sep 2025 11:47:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1757497631;
	bh=JUQ4rdqutGxEsvDQ7nCXXR3R3Nsz6QAlbh53wXlI5nw=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=a01uKA806vglAoqGBK4/p5oScpG3dVTNFMwJqVgXxN9Jv7VAWRk4398I6ktc7X2Yx
	 KBfoidHFJyzUc7EdeOzr2lp5A098Jo26ZFaocJMNh20hyGNIbIjk1u1i/LvSj75Zwe
	 NiKGLXU6Eq9qlJRbG/abIPjXWEesL5urvUHrI0VS7BpGdkZJZiB5ZfeBGG+1HfWZQA
	 nVFupXGohWPNDkkuHCOpPfewANJUr8MZJ+J938CK2IMgWRoEe5sUjaVRGqjmLDmViy
	 90UeX1KZG3XT7lYJypRcX/lBDAf6KgCOFJGfR86EOoPaZnCgqVZ5fjSmiWQg1jlRkX
	 YBCEa0AxXFZVg==
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1757497631;
 b=eDmk80rtErEvj+LQwZfUYi+qomT4OYvwZ48T5bop+Q3IBpNg/H1QJ3wq9Aa1+2yPoGrpu
 4tvne6JJAnkRUrNZPN824QjCAEhoO6MK3gIrysWv4M+TzGi+a4vmCVGkcf566MnxGt3+qIb
 CEuX98sdMj+Xc5B7deUAsLrDcxq6fbU=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1757497631; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=JUQ4rdqutGxEsvDQ7nCXXR3R3Nsz6QAlbh53wXlI5nw=;
 b=FLORJNTbCBx4WWghVXWduCEqUIEXDq2xcktlso316FYf5MDC/YAAGQpcQFkFoULp9vsms
 UTWyvYOVLgvBmJAtrkm5FC+GvioIY++oXWeVIQrfv1bfAddyzm49fylhO52EonTxHSkyHvP
 wlsT1zApiGYTPvecOlJDzAZIe/Gc7C8=
ARC-Authentication-Results: i=2; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=telekom.de header.i=@telekom.de;
 arc=pass;
 dmarc=pass header.from=telekom.de policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=telekom.de header.i=@telekom.de; arc=pass;
 dmarc=pass (Used From Domain Record) header.from=telekom.de
 policy.dmarc=quarantine
Received: from mailout41.telekom.de (mailout41.telekom.de [194.25.225.151])
	by mail.toke.dk (Postfix) with ESMTPS id CC532661068;
	Wed, 10 Sep 2025 10:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=telekom.de; i=@telekom.de; q=dns/txt; s=dtag1;
  t=1757494461; x=1789030461;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=unWtwTNerfvOfQvk/UbiCauhJWrVmcfdKpFdoX7UB9A=;
  b=IIJAPJRMedJshcgJuTxViOSpyjV/AWQqiBeFylMqKL9lLcOcrXSxVKaN
   wzkw7ZJLBmS0D7amkcezJmSqc7oT+4Kiuoxy+KDVr2268d1czA9Gg+jfZ
   cLibgAFuQsDajN9sfJKLjImI4mjH5TAcBHOvpyxSLtBrEqxQd2NN697tT
   b7WwWyw0KDR+ws+TDXaJ9zKQC+1kOopDXSDymGhBdRkrXNXRGUCXPsrZO
   Fy3stQrpouQ98hs24teNPut8wylm7bx14vcazVtjxKj9dSCiiopak76hj
   QueJ5eCZGBKVYHmZ22DclX3n9ui36nCQysQoS480YdZKvYhH3mDwZ8gmo
   w==;
Received: from qdezc2.de.t-internal.com ([10.171.255.37])
  by mailout41.dmznet.de.t-internal.com with
 ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 10 Sep 2025 10:54:20 +0200
IronPort-SDR: 68c13cbb_Lu2KcQGBDwDDGTDA8496RRNy6ooSORzSOfvqEXNh8eMdC9B
 GL+T38nryVsT7j0UsdvsVvz1J7SYpm8UAPUTxfA==
X-IronPort-AV: E=Sophos;i="6.18,253,1751234400";
   d="scan'208";a="1269803385"
X-MGA-submission: =?us-ascii?q?MDFIf3ISp4cl7kYnY6QABTsJhwU9h+/bgUuzH9?=
 =?us-ascii?q?eqfLTmoMzY4cFqVaX2uLhN6+iH/M2pQdFhrmDQGRlYNYVrNDdvtk5MKa?=
 =?us-ascii?q?mLKBcT2uwmcH9gMLmCUTC9Y2pseFKOudj/IZkBIs4w/MNBeGH3JrWEoX?=
 =?us-ascii?q?TnKyH0QDptyYtrNK3Qy6Rtyw=3D=3D?=
Received: from he126305.emea1.cds.t-internal.com ([10.169.118.206])
  by qde0ps.de.t-internal.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 10 Sep 2025 10:54:19 +0200
Received: from HE101419.emea1.cds.t-internal.com (10.169.118.196) by
 HE126305.emea1.cds.t-internal.com (10.169.118.206) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.20; Wed, 10 Sep 2025 10:54:18 +0200
Received: from HE102770.emea1.cds.t-internal.com (10.171.40.42) by
 HE101419.emea1.cds.t-internal.com (10.169.118.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.20 via Frontend Transport; Wed, 10 Sep 2025 10:54:18 +0200
Received: from FR4P281CU032.outbound.protection.outlook.com (40.93.78.48) by
 O365mail07.telekom.de (172.30.0.239) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.20; Wed, 10 Sep 2025 10:54:18 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=En73DuemXXQyNKWNVFBcBpsQTmKsibaD8w4TyUTHbTkV8kANBJP530r89HqlHlXdj3MqX82Rlgi3OcUqBp/CAGFIHep+S2ND1vRGLE9Jr2upJHt9kU/8jF5QlqTDb+iOpPeEuY4XN5E+EriStT9NPDg5qZ4SnrEkLERpFaV4Ds2DgOqG+3i4NEGhk244h+DAmHvspOKmOPBZgLKBni1enVusdtzJvecMlFbCp6Fn507faC+FjR+aeUrzDJdyPBQ6s9D+soF7/J1MhKcXqNGv96YLFGDLVpnVypTpZvr3ZaGZg4IwtDW57sYxTlwls8biajtKQw+ebL2R9L2bWi4sYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=unWtwTNerfvOfQvk/UbiCauhJWrVmcfdKpFdoX7UB9A=;
 b=jDdC4DeqOHF9KFDAPCqFYrDza6pwTfuLd7+f5xPCWjWzjoxscwlikwjsvKw2FRckFotDR9WSIwCIm5nrWUlXmo+9b0Mt6H0s27Hy7fN+0myMFRwW0Fnuo783M17iE6ytZp3hVLCsG61hCyYGJeh6RpHNgua0Llk2cDCOVmuTvIsvNdO34frn8ZJRxg6w1LQgH3/uCsGk7GzOWC4ugjK5SX9Pb5Ek9HuYtRMAancQJOvdByah4lcu4D0MO02M30n4hDMcw+dpdIzekO64oLyqMMMsNf18oY6wJCh3Lb0JgpvpNFdGoClKpN69Kdvi/lPU0aOriOcmHwWavFtj2IRzKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=telekom.de; dmarc=pass action=none header.from=telekom.de;
 dkim=pass header.d=telekom.de; arc=none
Received: from FR2PPFEFD18174C.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d18:2::a3)
 by BEYP281MB4559.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:ae::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Wed, 10 Sep
 2025 08:54:12 +0000
Received: from FR2PPFEFD18174C.DEUP281.PROD.OUTLOOK.COM
 ([fe80::f775:b8bd:69ad:1879]) by FR2PPFEFD18174C.DEUP281.PROD.OUTLOOK.COM
 ([fe80::f775:b8bd:69ad:1879%4]) with mapi id 15.20.9094.021; Wed, 10 Sep 2025
 08:54:12 +0000
To: <tom@herbertland.com>, <frantisek.borsik@gmail.com>
CC: <dpreed@deepplum.com>, <cake@lists.bufferbloat.net>,
	<codel@lists.bufferbloat.net>, <bloat@lists.bufferbloat.net>,
	<rpm@lists.bufferbloat.net>
Thread-Topic: [Bloat] Re: [Cake] Re: XDP2 is here - from one and only Tom
 Herbert (almost to the date, 10 years after XDP was released)
Thread-Index: AQHcIiLCDhb5JGi7eE2CfJbkCvvJi7SMF3TA
Date: Wed, 10 Sep 2025 08:54:12 +0000
Message-ID: 
 <FR2PPFEFD18174CA00474D0DC8DBDA3EE00DC0EA@FR2PPFEFD18174C.DEUP281.PROD.OUTLOOK.COM>
References: 
 <CAJUtOOhdVJCiRqhOTmdiPNmZEq9_dA+k=evLWX1UsB=ySHpf_A@mail.gmail.com>
 <1757449551.421420786@apps.rackspace.com>
 <CAJUtOOhnp92Vxv4TkF_GUwVB1kaZcN9z+hZwS+0JBdHdM0cJjw@mail.gmail.com>
 <CALx6S37wDSc=d27twPBm_NHFSWYQUL74oMSyBVwY=z9uNEvJ_g@mail.gmail.com>
In-Reply-To: 
 <CALx6S37wDSc=d27twPBm_NHFSWYQUL74oMSyBVwY=z9uNEvJ_g@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: FR2PPFEFD18174C:EE_|BEYP281MB4559:EE_
x-ms-office365-filtering-correlation-id: d1d67a1f-5bab-45d3-23c0-08ddf0479cd8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|4022899009|366016|376014|38070700021|13003099007;
x-microsoft-antispam-message-info: 
 =?utf-8?B?bzcvQVZsc2U0YVBHKytvMEEreUxVckRaclRUTVRYU1NnZ2R3amxHeWd5QlZy?=
 =?utf-8?B?UGxCbXZNMEJvUFl6SDZ1UU8rVGVHTjlkSWJFalI0VUE0b2k4UTBEaXZDVmlZ?=
 =?utf-8?B?RllTSHdldEw1VDVyUTMrL3RkcERuSDJMWXhJcVBMVEJOZjNia2NWQStQZy92?=
 =?utf-8?B?U1IyaVp3U3A0UlRHYTRGWXkvOHQvcml4YTZPNjFnYWJjVmVlL2JDUm16ZkQv?=
 =?utf-8?B?L0h3dmFDSFAzNXVwSk81ODR2OUJYNktWUHZmQ293K1A4Zm1EQkU4VytxUUtx?=
 =?utf-8?B?aDlyQlVRQWJjaWpxVjZZZjA1eGhia214YU5jYzVJTWNPNXI0T2VTaDkvTnY3?=
 =?utf-8?B?UWZsRjdib2hTUjM2NVdzNXlWVE94YVJPRmt6ZVBrRWw4SnNYSGxkbUxTVUd4?=
 =?utf-8?B?Z0VKZFRnTHRQOEpUK09tMk5LNzJmcnpIOHZJY1BXOFZ1L0ZzdzkwUlZVZ1Y1?=
 =?utf-8?B?cDlhQXVFS3BsL3kxdnczVVVpV2I0UUhjWGpYOEViRStrODlteVgrZ0Q1TkhU?=
 =?utf-8?B?UHpwTm0yOTBDU0JhRFcxdlFxVzgwTU1ScU9sRzFEZFVpYUFzcDA3RkxTWTFh?=
 =?utf-8?B?VVFZZFR0QlRRd2lUOTg0aFFUVURBNXNGdFJ3YXM1TmZ5TFhPU2JyNkxZNEFx?=
 =?utf-8?B?TXljWTk5VmVOWkl5clF6Y3hKVFE5djBDZ3hlUlJQc1ZvVm5jc3Vpc3cxRzJu?=
 =?utf-8?B?aDlQaElycEY3cXFSN0M4blpFWUlxVytDdisyOTA1S2IzSmZkSTlGcHE4NEVQ?=
 =?utf-8?B?eDBFc25sSkM4VXRjYzN5RlQ0WjBScCtLOEM1dzJzRXhuR2VuZUNqWitneWRn?=
 =?utf-8?B?VU5uSVBGTVlaNGtjNmNwUVpSYm8yRnYvbUJJaEZsS1c5ZmRDdmpiUVdCY092?=
 =?utf-8?B?VEdJMlZpaWkxU00yMVpIdFV6ZkQ5Z3lzTVcwMit0K0JvWFZqRDZaeGh3NTJB?=
 =?utf-8?B?bXdiT05HNUVvb1VLbFU4Qm0yODN6MzMxTXhNOFdBK25yNUJqQkM3b1M0VnYv?=
 =?utf-8?B?bCttZVJTVTJlMXJuajJhR0J5QWtmcHZIZlJwT3dxTXZlZElCTFYwMVQ0WTJx?=
 =?utf-8?B?dnA3RlBWUU5kUmNGM1Z2bUxpbUVJVlBYZGo3d3ZJbWliaUhhZndCWGd5SEwz?=
 =?utf-8?B?aDE5dWVMem1yeENpZGtVdXhzc0RXUk9XQ20zUnNkR0RHRy9GcWQ5RHpaVGRj?=
 =?utf-8?B?QmxtcVRTVU9DQy9iUFNQeFc1MXN4TXgrRnlTYk5sdEd0RFlJVGNpWEpBa2Iv?=
 =?utf-8?B?YnNPOGs5VGpzWGxBdWhlZGdTMmtLRGRvcHpieThLNUoyNGxTdmVGU0JVZmpt?=
 =?utf-8?B?REVrQXRuN2RNTkdEU00wcFQwWXJtSEJzUWwrSUlFWU9zYkNXUUV4ZG1KK1VU?=
 =?utf-8?B?Q08ycXlNd1dITG51TEI0TlRZZW1WQ1hjL2tHNEN1VUo5V2gxbktIZFJjakpq?=
 =?utf-8?B?OE5ObGFrcnBWVk9qbGJMU2ovL0VYSVpKWUVrTWdSTFdJRGVqOGVzV216Zjhm?=
 =?utf-8?B?TUJTWmhBZm5JdTVKNWJyL2ZzQ2FkK0ZIWXZuUU9sY1FCSGR4eDFlWUtKanlX?=
 =?utf-8?B?V2g4TmJmaUpXYnZ6RG1KRUNMYTNId2cyQmV5NUtpbEszeGJlblNCMlMxM0dh?=
 =?utf-8?B?bWNnSCtDQWVtbVNISGppL1MyU25jOFNzT3BjZ3YwbFdVZ3NxcHR2WFJ6OFBk?=
 =?utf-8?B?VXdvc0VMcGN1QXhQY2RGUi9jS3ZiUENXc2tNRGFhWDh0RXZaYitMTm5uOWZz?=
 =?utf-8?B?TWVpWTBEOXZRM1cwajl4bTNQdFRycmFLK080T1NmaDBPYTI0M3dhcmEyWTU0?=
 =?utf-8?B?TDJERDJ4QnRRNDFrU2FSeGxZUUpXZ2FGOGYydWE3OGtFMVNzWTF1THNHdTdv?=
 =?utf-8?B?N1R6dGdsSGhaYnFwNkFZMUZJcmcwajZUNU0rT00xUHo5RTVYeHdtVThYV3Bh?=
 =?utf-8?Q?BD29Me7Ii3I=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FR2PPFEFD18174C.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(4022899009)(366016)(376014)(38070700021)(13003099007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?a1dpQmV6dFI0VVMzZmJWUGpUZFB6MVo4RHJ3TVVhZWhxTzFRMnhGcU10RUZp?=
 =?utf-8?B?T1Y0TW5MbU5BamZ5NWNXeGFxbTg1TjIyZXpRdWQ5R2hBR2hTN0ZuSnJlN2RK?=
 =?utf-8?B?VmQwNmUxbFFMcHVVRk9iVm5lWGxlSFRwWng5cENYTTVGMVgzcm1YNmdjbGR1?=
 =?utf-8?B?SWJtb2d0bVBBcVUvOGFGYzNRSnE4OVdZQUErU2hraG9LbXdkRzZiRFgrc2RL?=
 =?utf-8?B?b0hSVXEvSVEraVVmWEUwVWtJT2VGMkh2VUhRblNleDB4cU9FQ3dwckFMVHFh?=
 =?utf-8?B?UjRpTHQ4UGJNOUZjcXZQTS9YUFlDbmV1WmlGNENzeGZXcGp3MXBCSW0wVUkw?=
 =?utf-8?B?WFpna29jWGtaWkgyeWdXRWJ6S0FIanpEUDZvSXNXWWgveTVCblgyemZIeVhV?=
 =?utf-8?B?Q2ljQ3BxNUc1akJsOXgrMFkzZVRsSXJZVHlTQVpZV1ZKTlBQS3J0QlQ1MEli?=
 =?utf-8?B?cWZVRnAzRE94Z3hhWTJhYUYyaklvSm1RQXZmKzNjb1VoejJLalFSN1pPclQw?=
 =?utf-8?B?OVFid3ZiQ2QxYitzam9aRHlqV1ZoaFBSeUtqdDNrTVh4MUQ5VkMxcnRsTXpZ?=
 =?utf-8?B?VEFnNk84VTJIek5ZcG5FbjA1RWVpMGR6VUovWjB5eXNQTWxOeWdITHEyNTV6?=
 =?utf-8?B?OExuMi9lZzFKNGc2akF6NEJvZHpvSGttSEJLbXpDcURPOGFmMHhMbEFFQnFR?=
 =?utf-8?B?dDVvZDExQyt4RU1ldTRFU3JLeXg2VERTbGE1cmdvMkVCQTBPZ1N4bGxGWXI2?=
 =?utf-8?B?YkJ2VWNiQ0Vib21tdW5iN2pNSlJ4bGNRZktRd2dra2pXenQxVGZoQ09NWnJU?=
 =?utf-8?B?WVVjMSs4ZmhlOHVBd3pUeXhQb3IrMy81cXVkckE0S0xza3RVd3gxRVF3WlNQ?=
 =?utf-8?B?MXpqenBlZlB1Wmc5eXA1OURKbm54MEY3cGtrS29hY3RzOVFBcy9iNEQ2cExZ?=
 =?utf-8?B?WkpsdGJEZEFyTWZQK3d3b0p0SitRSnpiMCtFMmNmQjQzZWExV2dIajZHSldJ?=
 =?utf-8?B?UmJoeWVENVpSSVNqK09JRTFKNzIwV3VTb1Y1MXZRYmp1S2ZxUjZ2YWkySDdC?=
 =?utf-8?B?eFozZlQ3eW8vOE1XNGNORmRVaEJ1THk3aDVKTmtxU1g5bGlXaTE0UWZYQlJ4?=
 =?utf-8?B?dlY4UUJIOFlSNWZodXRNWXdWbnJYSVJzN2hrQ3ZlUVNpQVV3VGIvdldEb3Nt?=
 =?utf-8?B?bitFWHNXWm5OOVFVL292UEthc3pSYUlZTi9QdndKaE5pclY3WXJEWDNZVEVJ?=
 =?utf-8?B?MElkVDRvU25uQ1h6VzNIblFVWGRsTlk4SnZTZVhnQU5RNnFvWUptcDhiNkhB?=
 =?utf-8?B?RlhMZ2Q1RnVJbmZzYWVKcVZxZzFyVmFjMHAvQ2NyMmZJSHRHUW9pa3hPY0g0?=
 =?utf-8?B?MmpudjdEWU1SQzduZXBhc3hhY3JxZlh5Zml5aWhvQ3BQSTUrZHBFWEZHblZL?=
 =?utf-8?B?WTQ2ZjlZN2NRUit1ZXdOUUZhc2t3OXIrK2ozRW04cXdsWXRDVStDei9aU2Jh?=
 =?utf-8?B?VlhoOXd3dW15cjE0bTlUVGtQb3VnTVppTTlZRitCRXEzM0ZVY3pZbWhJc1hL?=
 =?utf-8?B?YXg5NDhScUtWb1MzeFNWazVUVXpna3lONFU1eGx3VkFrYnI2Q0xwWFh1Wm9i?=
 =?utf-8?B?YnMrMEVmdGtMc0ZEUFpEWGdSaWExZDVLSXlLeHMxd3BVTlNDOXVnbGgxWlpV?=
 =?utf-8?B?SUQ3Z2E4Ri9VNVFSd1pxbjhPWVdNbjVzdy8wekdvejJqOFI4OWd6QnFZQnRq?=
 =?utf-8?B?aWhCNHlqWnVVUEprTHpsaXdueDZvYVZkdnB2UGR4bE1LMldnckNVa2pEenM2?=
 =?utf-8?B?UXpwMWFIUEM3S1BZQjZ3L0R5TnVZTFdYcXV6Wjg3M01wM3FmZkloNG82YWtn?=
 =?utf-8?B?eXlnT1ZiazYveEZheVBKRDBLSFo1UHNXdHlnZTJsQitZeUhvZDdqUmJCcHZ4?=
 =?utf-8?B?aTYxYlptMlNxUytZUnc2ODVKTDhyUS85UWdZUXlQTlRGWEZ3MVNWdUtITEJI?=
 =?utf-8?B?bjlnWk05ZW1qdEg3clhhQlVlekF6QzVlZjVsUThoemFKYlBKMkZEU3E1Rllk?=
 =?utf-8?B?NHpVNldORWs3VC9DRzdnenhsNUZkZEJCSloyaW42cmZ6Um9EdHBKNDNRMkxx?=
 =?utf-8?Q?HZcI=3D?=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: FR2PPFEFD18174C.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 d1d67a1f-5bab-45d3-23c0-08ddf0479cd8
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2025 08:54:12.1098
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bde4dffc-4b60-4cf6-8b04-a5eeb25f5c4f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 2II2D62Crf4NBodK8uQuINbj4TzlEQvhFoJtUmUtt98gEcxKmjoUiDfVsW1Y4vBgrThYFRW9h7tq7qH08rg/7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BEYP281MB4559
X-OriginatorOrg: telekom.de
X-MailFrom: BeckW@telekom.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: GO4HEQDH2AYOTTHXNRRUTBEMIDRHNFLB
X-Message-ID-Hash: GO4HEQDH2AYOTTHXNRRUTBEMIDRHNFLB
X-Mailman-Approved-At: Wed, 10 Sep 2025 11:47:09 +0200
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [Bloat] Re: Re: XDP2 is here - from one and only Tom Herbert
 (almost to the date, 10 years after XDP was released)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/FR2PPFEFD18174CA00474D0DC8DBDA3EE00DC0EA@FR2PPFEFD18174C.DEUP281.PROD.OUTLOOK.COM/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: BeckW--- via Cake <cake@lists.bufferbloat.net>
Reply-To: BeckW@telekom.de
Content-Transfer-Encoding: base64

SW50ZXJlc3Rpbmcgd29yayEgT25lIHByb2JsZW0gb2YgUDQgaXMgdGhhdCB0aGUgbmV0d29ya2lu
ZyBoYXJkd2FyZSB2YXJpZXMgc28gbXVjaCBpbiBudW1iZXIgb2YgcmVzb3VyY2VzIChxdWV1ZXMs
IHNjaGVkdWxlcnMsIHBvbGljZXJzLCBjb3VudGVycywgdGFibGUgbWVtb3J5KSB0aGF0IHRoZSBj
b2RlIGluZXZpdGFibHkgYmVjb21lcyB0aWVkIHRvIGEgY2VydGFpbiBzeXN0ZW0uDQpJdCB3aWxs
IGJlIGRpZmZpY3VsdCB0byBhYnN0cmFjdCB0aGUgcGVjdWxpYXJpdGllcyBvZiBzeXN0ZW1zIC0t
IGVnIEJyb2FkY29tIDg4ODAwIHZzIGxpbnV4IGtlcm5lbCAtLSBpbiBhIGdvb2Qgd2F5Lg0KDQpX
b2xmZ2FuZw0KDQotLS0tLVVyc3Byw7xuZ2xpY2hlIE5hY2hyaWNodC0tLS0tDQpWb246IFRvbSBI
ZXJiZXJ0IHZpYSBCbG9hdCA8YmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiANCkdlc2VuZGV0
OiBEaWVuc3RhZywgOS4gU2VwdGVtYmVyIDIwMjUgMjM6MzcNCkFuOiBGcmFudGlzZWsgQm9yc2lr
IDxmcmFudGlzZWsuYm9yc2lrQGdtYWlsLmNvbT4NCkNjOiBEYXZpZCBQLiBSZWVkIDxkcHJlZWRA
ZGVlcHBsdW0uY29tPjsgQ2FrZSBMaXN0IDxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD47IGNv
ZGVsQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldDsgYmxvYXQgPGJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldD47IEplcmVteSBBdXN0aW4gdmlhIFJwbSA8cnBtQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4N
CkJldHJlZmY6IFtCbG9hdF0gUmU6IFtDYWtlXSBSZTogWERQMiBpcyBoZXJlIC0gZnJvbSBvbmUg
YW5kIG9ubHkgVG9tIEhlcmJlcnQgKGFsbW9zdCB0byB0aGUgZGF0ZSwgMTAgeWVhcnMgYWZ0ZXIg
WERQIHdhcyByZWxlYXNlZCkNCg0KT24gVHVlLCBTZXAgOSwgMjAyNSwgNTowM+KAr1BNIEZyYW50
aXNlayBCb3JzaWsgPGZyYW50aXNlay5ib3JzaWtAZ21haWwuY29tPg0Kd3JvdGU6DQoNCj4gVGhh
bmtzIGEgbG90LCBEYXZpZC4NCj4NCj4gSSBoYXZlIGFza2VkIFRvbSBpZiBoZSB3YW50cyB0byBq
b2luIHVzIGFuZCBoZSBzaG91bGQgYmUgaGVyZSB0byBjaGF0IA0KPiB3aXRoIHVzIG5vdy4NCj4N
Cj4gQWxsIHRoZSBiZXN0LA0KPg0KPiBGcmFuaw0KPg0KPiBGcmFudGlzZWsgKEZyYW5rKSBCb3Jz
aWsNCj4NCj4NCj4gKkluIGxvdmluZyBtZW1vcnkgb2YgRGF2ZSBUw6RodDogKjE5NjUtMjAyNQ0K
Pg0KPiBodHRwczovL2RldTAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9
aHR0cHMlM0ElMkYlMkZsaWJyDQo+IGVxb3MuaW8lMkYyMDI1JTJGMDQlMkYwMSUyRmluLWxvdmlu
Zy1tZW1vcnktb2YtZGF2ZSUyRiZkYXRhPTA1JTdDMDIlN0MNCj4gQmVja1clNDB0ZWxla29tLmRl
JTdDMjk5ZDY0YjliNzZiNGQ0Y2Y4OGIwOGRkZjAzOWUxMDUlN0NiZGU0ZGZmYzRiNjA0Yw0KPiBm
NjhiMDRhNWVlYjI1ZjVjNGYlN0MwJTdDMCU3QzYzODkzMDg1MzYwOTI3NjcwMiU3Q1Vua25vd24l
N0NUV0ZwYkdac2IzDQo+IGQ4ZXlKRmJYQjBlVTFoY0draU9uUnlkV1VzSWxZaU9pSXdMakF1TURB
d01DSXNJbEFpT2lKWGFXNHpNaUlzSWtGT0lqb2kNCj4gVFdGcGJDSXNJbGRVSWpveWZRJTNEJTNE
JTdDMCU3QyU3QyU3QyZzZGF0YT1UQUE2TmRFa0IzS1FRdDhVaEtxczNaS3VMag0KPiBON0E5aDlK
OUZBak5SRER1VSUzRCZyZXNlcnZlZD0wDQo+DQo+DQo+IGh0dHBzOi8vZGV1MDEuc2FmZWxpbmtz
LnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRnd3dy4NCj4gbGlua2Vk
aW4uY29tJTJGaW4lMkZmcmFudGlzZWtib3JzaWsmZGF0YT0wNSU3QzAyJTdDQmVja1clNDB0ZWxl
a29tLmRlJQ0KPiA3QzI5OWQ2NGI5Yjc2YjRkNGNmODhiMDhkZGYwMzllMTA1JTdDYmRlNGRmZmM0
YjYwNGNmNjhiMDRhNWVlYjI1ZjVjNGYlDQo+IDdDMCU3QzAlN0M2Mzg5MzA4NTM2MDkyOTcwMzEl
N0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4ZXlKRmJYQjBlVTFoY0draU8NCj4gblJ5ZFdVc0lsWWlP
aUl3TGpBdU1EQXdNQ0lzSWxBaU9pSlhhVzR6TWlJc0lrRk9Jam9pVFdGcGJDSXNJbGRVSWpveWZR
JQ0KPiAzRCUzRCU3QzAlN0MlN0MlN0Mmc2RhdGE9dWNMN1UlMkZRODFrczA5blZFR1ViZSUyRkZx
MXJoSk5MYWVnaWN2JTJGTENWDQo+IGNJbGclM0QmcmVzZXJ2ZWQ9MA0KPg0KPiBTaWduYWwsIFRl
bGVncmFtLCBXaGF0c0FwcDogKzQyMTkxOTQxNjcxNA0KPg0KPiBpTWVzc2FnZSwgbW9iaWxlOiAr
NDIwNzc1MjMwODg1DQo+DQo+IFNreXBlOiBjYXNpb2E1MzAyY2ENCj4NCj4gZnJhbnRpc2VrLmJv
cnNpa0BnbWFpbC5jb20NCj4NCj4NCj4gT24gVHVlLCBTZXAgOSwgMjAyNSBhdCAxMDoyNeKAr1BN
IERhdmlkIFAuIFJlZWQgPGRwcmVlZEBkZWVwcGx1bS5jb20+IHdyb3RlOg0KPg0KPiA+IEhpIEZy
YW5rIC0NCj4gPg0KPiA+DQo+ID4NCj4gPiBJIHRoaW5rIGl0IGlzIGludGVyZXN0aW5nIGFzIGEg
Y29uY2VwdC4gQSBwcm9qZWN0IEkgYW0gYWR2aXNpbmcgaGFzIA0KPiA+IGJlZW4gdXNpbmcgRFBE
SyB2ZXJ5IGVmZmVjdGl2ZWx5IHRvIGdldCByaWQgb2YgdGhlIGh1Z2UgcGF0aCBhbmQgDQo+ID4g
bG9ja2luZw0KPiBkZWxheXMNCj4gPiBpbiB0aGUgY3VycmVudCBMaW51eCBuZXR3b3JrIHN0YWNr
LiBYRFAyIGNvdWxkIGJlIHN1cHBvcnRlZCBpbiBhIA0KPiA+IHJpbmczDQo+ID4gKHVzZXIpIGFk
ZHJlc3Mgc3BhY2UsIGFjaGlldmluZyBhIHNpbWlsYXIgcmVzdWx0Lg0KPg0KDQpISSBEYXZpZCwN
Cg0KVGhlIGlkZWEgaXMgeW91IGNvdWxkIHdyaXRlIHRoZSBjb2RlIGluIFhEUDIgYW5kIGl0IHdv
dWxkIGJlIGNvbXBpbGVkIHRvIERQREsgb3IgZUJQRiBhbmQgdGhlIGNvbXBpbGVyIHdvdWxkIGhh
bmRsZSB0aGUgb3B0aW1pemF0aW9ucy4NCg0KDQo+ID4NCj4gPg0KPiA+DQo+ID4gQnV0IEkgZG9u
J3QgdGhpbmsgWERQMiBpcyBnb2luZyB0aGF0IGRpcmVjdGlvbiAtIHNvIGl0IG1heSBiZSANCj4g
PiBzdHVja2ludG8gdGhlIG1lc3Mgb2Yga2VybmVsIHNwYWNlIG5ldHdvcmtpbmcuIEFkZGluZyBl
QlBGIG9ubHkgaGFzIA0KPiA+IG1hZGUgdGhpcyBtb3JlDQo+IG9mDQo+ID4gYSBtZXNzLCBieSB0
aGUgd2F5IChhbmQgYWRkaW5nIGEgbmV3ICJjb21waWxlciIgdGhhdCBuZWVkcyB0byBiZSANCj4g
PiB2ZXJpcmllZCBhcyBzYWZlIGZvciB0aGUga2VybmVsKS4NCg0KDQpUaGluayBvZiBYRFAyIGFz
IHRoZSBnZW5lcmFsaXphdGlvbiBvZiBYRFAgdG8gZ28gYmV5b25kIGp1c3QgdGhlIGtlcm5lbC4N
ClRoZSBpZGVhIGlzIHRoYXQgdGhlIHVzZXIgd3JpdGVzIHRoZWlyIGRhdGFwYXRoIGNvZGUgb25j
ZSBhbmQgdGhleSBjb21waWxlIGl0IHRvIHJ1biBpbiB3aGF0ZXZlciB0YXJnZXRzIHRoZXkgaGF2
ZS0tIERQREssIFA0LCBvdGhlciBwcm9ncmFtbWFibGUgaGFyZHdhcmUsIGFuZCB5ZXMgWERQL2VC
UEYuIEl0J3MgcmVhbGx5IG5vdCBsaW1pdGVkIHRvIGtlcm5lbCBuZXR3b3JraW5nLg0KDQpBcyBm
b3IgdGhlIG5hbWUgWERQMiwgd2hlbiB3ZSBjcmVhdGVkIFhEUCwgZVhwcmVzcyBEYXRhUGF0aCwg
bXkgdmlzaW9uIHdhcyB0aGF0IGl0IHdvdWxkIGJlIGltcGxlbWVudGF0aW9uIGFnbm9zdGljLiBl
QlBGIHdhcyB0aGUgZmlyc3QgaW5zdGFudGlhdGlvbiBmb3IgcHJhY3RpY2FsaXR5LCBidXQgbm93
IHRlbiB5ZWFycyBsYXRlciBJIHRoaW5rIHdlIGNhbiByZWFsaXplIHRoZSBpbml0aWFsIHZpc2lv
bi4NCg0KVG9tDQoNCg0KDQo+DQo+ID4gSSB3aWxsIGJlIHdhdGNoaW5nIGhvdyB0aGlzIGV2b2x2
ZXMuDQo+ID4NCj4gPg0KPiA+DQo+ID4gRGF2aWQNCj4gPg0KPiA+DQo+ID4NCj4gPiBPbiBUdWVz
ZGF5LCBTZXB0ZW1iZXIgOSwgMjAyNSAwNjozMiwgIkZyYW50aXNlayBCb3JzaWsiIDwgDQo+ID4g
ZnJhbnRpc2VrLmJvcnNpa0BnbWFpbC5jb20+IHNhaWQ6DQo+ID4NCj4gPiA+IEhlbGxvIHRvIGFs
bCwNCj4gPiA+DQo+ID4gPiBMb29rcyBpbnRlcmVzdGluZzoNCj4gPiA+DQo+ID4NCj4gaHR0cHM6
Ly9kZXUwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJG
JTJGbWVkaQ0KPiB1bS5jb20lMkYlNDB0b21fODQ5MTIlMkZ4ZHAyLXRoaXMtY2hhbmdlcy1ldmVy
eXRoaW5nLWF0LWxlYXN0LWZvci1haS1tDQo+IGwtaW5mcmFzdHJ1Y3R1cmUtODUwYzFiYTgyNzcx
JmRhdGE9MDUlN0MwMiU3Q0JlY2tXJTQwdGVsZWtvbS5kZSU3QzI5OWQNCj4gNjRiOWI3NmI0ZDRj
Zjg4YjA4ZGRmMDM5ZTEwNSU3Q2JkZTRkZmZjNGI2MDRjZjY4YjA0YTVlZWIyNWY1YzRmJTdDMCU3
Qw0KPiAwJTdDNjM4OTMwODUzNjA5MzA4OTUwJTdDVW5rbm93biU3Q1RXRnBiR1pzYjNkOGV5SkZi
WEIwZVUxaGNHa2lPblJ5ZFdVDQo+IHNJbFlpT2lJd0xqQXVNREF3TUNJc0lsQWlPaUpYYVc0ek1p
SXNJa0ZPSWpvaVRXRnBiQ0lzSWxkVUlqb3lmUSUzRCUzRCUNCj4gN0MwJTdDJTdDJTdDJnNkYXRh
PVJUTEhUVkZSNTQwQzhQc3I3M3VpdVJ2a3gxc1N5am1sVUlJQ0VIRmowSEElM0QmcmVzZQ0KPiBy
dmVkPTANCj4gPiA+DQo+ID4gPg0KPiA+ID4gQWxsIHRoZSBiZXN0LA0KPiA+ID4NCj4gPiA+IEZy
YW5rDQo+ID4gPg0KPiA+ID4gRnJhbnRpc2VrIChGcmFuaykgQm9yc2lrDQo+ID4gPg0KPiA+ID4N
Cj4gPiA+ICpJbiBsb3ZpbmcgbWVtb3J5IG9mIERhdmUgVMOkaHQ6ICoxOTY1LTIwMjUNCj4gPiA+
DQo+ID4gPiBodHRwczovL2RldTAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91
cmw9aHR0cHMlM0ElMkYlMkYNCj4gPiA+IGxpYnJlcW9zLmlvJTJGMjAyNSUyRjA0JTJGMDElMkZp
bi1sb3ZpbmctbWVtb3J5LW9mLWRhdmUlMkYmZGF0YT0wNQ0KPiA+ID4gJTdDMDIlN0NCZWNrVyU0
MHRlbGVrb20uZGUlN0MyOTlkNjRiOWI3NmI0ZDRjZjg4YjA4ZGRmMDM5ZTEwNSU3Q2JkDQo+ID4g
PiBlNGRmZmM0YjYwNGNmNjhiMDRhNWVlYjI1ZjVjNGYlN0MwJTdDMCU3QzYzODkzMDg1MzYwOTMy
MzAyNyU3Q1Vua24NCj4gPiA+IG93biU3Q1RXRnBiR1pzYjNkOGV5SkZiWEIwZVUxaGNHa2lPblJ5
ZFdVc0lsWWlPaUl3TGpBdU1EQXdNQ0lzSWxBaQ0KPiA+ID4gT2lKWGFXNHpNaUlzSWtGT0lqb2lU
V0ZwYkNJc0lsZFVJam95ZlElM0QlM0QlN0MwJTdDJTdDJTdDJnNkYXRhPTk4DQo+ID4gPiBtdXNV
Q01UWlI0SUQlMkJvNkdZeFdPWDk5YWlZQnNwQlVkaCUyQk5WMWZ6d2MlM0QmcmVzZXJ2ZWQ9MA0K
PiA+ID4NCj4gPiA+DQo+ID4gPiBodHRwczovL2RldTAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91
dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkYNCj4gPiA+IHd3dy5saW5rZWRpbi5jb20lMkZp
biUyRmZyYW50aXNla2JvcnNpayZkYXRhPTA1JTdDMDIlN0NCZWNrVyU0MHRlbA0KPiA+ID4gZWtv
bS5kZSU3QzI5OWQ2NGI5Yjc2YjRkNGNmODhiMDhkZGYwMzllMTA1JTdDYmRlNGRmZmM0YjYwNGNm
NjhiMDRhDQo+ID4gPiA1ZWViMjVmNWM0ZiU3QzAlN0MwJTdDNjM4OTMwODUzNjA5MzM0MjM5JTdD
VW5rbm93biU3Q1RXRnBiR1pzYjNkOGUNCj4gPiA+IHlKRmJYQjBlVTFoY0draU9uUnlkV1VzSWxZ
aU9pSXdMakF1TURBd01DSXNJbEFpT2lKWGFXNHpNaUlzSWtGT0lqbw0KPiA+ID4gaVRXRnBiQ0lz
SWxkVUlqb3lmUSUzRCUzRCU3QzAlN0MlN0MlN0Mmc2RhdGE9MHJENDd6RmVMVlYxWURxTWM1U08w
DQo+ID4gPiB4R1dFT1RyRTNGT1l2MG1PcUdGJTJGVzQlM0QmcmVzZXJ2ZWQ9MA0KPiA+ID4NCj4g
PiA+IFNpZ25hbCwgVGVsZWdyYW0sIFdoYXRzQXBwOiArNDIxOTE5NDE2NzE0DQo+ID4gPg0KPiA+
ID4gaU1lc3NhZ2UsIG1vYmlsZTogKzQyMDc3NTIzMDg4NQ0KPiA+ID4NCj4gPiA+IFNreXBlOiBj
YXNpb2E1MzAyY2ENCj4gPiA+DQo+ID4gPiBmcmFudGlzZWsuYm9yc2lrQGdtYWlsLmNvbQ0KPiA+
ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiA+
IENha2UgbWFpbGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0IFRvIHVuc3Vi
c2NyaWJlIA0KPiA+ID4gc2VuZCBhbiBlbWFpbCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldA0KPiA+ID4NCj4gPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KPiBDYWtlIG1haWxpbmcgbGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJs
b2F0Lm5ldCBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIA0KPiBlbWFpbCB0byBjYWtlLWxlYXZlQGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldA0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18NCkJsb2F0IG1haWxpbmcgbGlzdCAtLSBibG9hdEBsaXN0cy5idWZmZXJi
bG9hdC5uZXQgVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBibG9hdC1sZWF2ZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkNha2UgbWFpbGluZyBsaXN0IC0tIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gY2FrZS1sZWF2ZUBsaXN0cy5idWZmZXJi
bG9hdC5uZXQK

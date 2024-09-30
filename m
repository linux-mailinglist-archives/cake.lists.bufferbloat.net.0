Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B8598A7AF
	for <lists+cake@lfdr.de>; Mon, 30 Sep 2024 16:50:08 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8F3163CB50;
	Mon, 30 Sep 2024 10:50:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1727707807;
	bh=TU1nDE2R8tTvjMtnNssRfZgTuTb5nw0akkbJUNDtAHU=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=KNf4Trt2fq1wQYUEl54BOwpZbjeGrC4oXG+z2xdZudFZBwenX7NccxI8Y/YRIbH2p
	 PLyuYcOE+fd6egtCIEipsiJiyoY1U3pQlNSuiurZw3UmSj1ivCXhoqUkdOyEGpdpOm
	 0rEeQX4OYRBM03P0MgFypEpGxbJgOLc8IC6pXskos7LKpjx4YhOM0Zjsykfdu6sRcT
	 c4XxsSCyhkVXEnle6w/gU0bysZbw4NXQjThNCig6Q0Bs/m+vX3HyNtZEOWJsibVEV1
	 8QQNihw4R7zykzt+JwZCCh7qcSFubXohAhAGCxozUBwKlS8H7LqWoh0BjDky6rVRB6
	 d+K/7qjB4VQyg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mx0a-00143702.pphosted.com (mx0a-00143702.pphosted.com
 [148.163.145.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0E1B03B29E;
 Mon, 30 Sep 2024 10:50:05 -0400 (EDT)
Received: from pps.filterd (m0156892.ppops.net [127.0.0.1])
 by mx0a-00143702.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48UEZ6lk019209;
 Mon, 30 Sep 2024 10:50:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.com; h=
 from:to:cc:subject:date:message-id:references:in-reply-to
 :content-type:content-id:content-transfer-encoding:mime-version;
 s=20190412; bh=ysZg0Hk0nHf4lZr447MF8rKC9YkCDHhans8R2UgeesY=; b=
 rbX/xdplLHhAOrEF9zWB1QRiKoYdkwGHSp8Pf1yyfl0UC1MHilfJCMCkD6QqsgMy
 8A9Y++ZnXB6gfteE4qQtMv9Fk0B5EgXlc/GxgVA2i7Tsd1s9Gu2JORaIsfpmNoWc
 gzePsOigamij5zchMbd3podo9oG3336mnYLAC2TU/yDBdOVUMEVQ5zzpZNwZgCjS
 5FY2epFeiTGGQI3DzWvskN05ZypGp2b7jTVXsfplw6VxvQGjmbiijn30nubdsyzU
 xsrQ6iAGB3TMMh3tdWtRsSXjBX8ImumBEe/N4oiYIC9P/bPNtR31ETghi2Zod6bY
 J58No3h2VStaLAK14pUYAg==
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2101.outbound.protection.outlook.com [104.47.58.101])
 by mx0a-00143702.pphosted.com (PPS) with ESMTPS id 41xd4hk7ec-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 30 Sep 2024 10:50:03 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HT1qyKvvUAlI3BS6wbS+nbjMpnuXc0vbM0+XxG/j0Y2wQt86lR1OmCocPmF29JCNMVrJrxZI5izHWM18iBGNs2mxJJOEuXNV+zwKuS/wA/FFxD5eKBYPDYUL5fpZ84v7TY4gYSbapJ+cpGWScxjMIdY+TYtB8lGDzEaGCa6DxJaIdHrmiusXlvLcC3yD9J+HGlofHhXf+TwOR+eIxet7CQLxsbm/uu4Wgy4mCbzK51mj/yXc7JLLhG+vgw4C4P3anlu5CWlAi7vOj0d3rmXCO2kYLeWkEXclyVV1XQMlWBghmM6oFYU8K2h2/RZ981KWz5RW7kUZrJj+vT6xgD0ZXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ysZg0Hk0nHf4lZr447MF8rKC9YkCDHhans8R2UgeesY=;
 b=n/kzw75nFhgeL5/mfyqeqlYVZbzJ8vJ9cy+pyeqmBf0L6Y3XCRWGQg4aMreYTKylo0SgymH5PdqKYrbAYiB4Wl9rdNa3wbb8ImZ/QuJHIhTgeAo6pEkFrggxSeWXqbR8rurRvRjTuhKJ7ornemgDFicaV6Lx3QEBYrGYpv8SNOInWIit6GgyRYXNMl+TWysKJfGkpGe6MW4cX+qu98TxLXeAJCITHLP+DjTYl3ZUJaqjx629oZsqnIpN0CDG4Pgcoh21okb6/CNkms/MaF/I0l7b6skjMhD9t750dXdyEa8wyGTmf3wI644IlW/8Xb/HqtcghUXMKiES9n6MQjdfrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=comcast.com; dmarc=pass action=none header.from=comcast.com;
 dkim=pass header.d=comcast.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=comcastcorp.onmicrosoft.com; s=selector1-comcastcorp-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ysZg0Hk0nHf4lZr447MF8rKC9YkCDHhans8R2UgeesY=;
 b=glFl38iFY84A3enWhk7/CgLRnvXvd3U0+3SdKpZBQWh7OprDF/SFqX66ZWaqA/D0I+1OOA37MuBa82K8yWANE38jb0BEuuR2WFv9BwgSa0rWxW3w8vtyeWcqVNd/PKmt609x0zl04xwOiCag1l6rRfKBFbGSUVgMpNQtX/nTT78=
Received: from BN9PR11MB5257.namprd11.prod.outlook.com (2603:10b6:408:132::18)
 by SA0PR11MB4765.namprd11.prod.outlook.com (2603:10b6:806:9b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.27; Mon, 30 Sep
 2024 14:49:59 +0000
Received: from BN9PR11MB5257.namprd11.prod.outlook.com
 ([fe80::40ea:c45e:eeb9:8b27]) by BN9PR11MB5257.namprd11.prod.outlook.com
 ([fe80::40ea:c45e:eeb9:8b27%3]) with mapi id 15.20.8005.026; Mon, 30 Sep 2024
 14:49:59 +0000
To: David Lang <david@lang.hm>, "David P. Reed" <dpreed@deepplum.com>
Thread-Topic: [Bloat] [Cake] bbr vs all the aqms, cake winning...
Thread-Index: AQHbESG+/cYr4ce3T0uGgggoKNIhRrJsKlIAgAGIMACAAErfAIACLVcA
Date: Mon, 30 Sep 2024 14:49:59 +0000
Message-ID: <60269A01-BC45-4351-ABD2-2F10C2931C35@comcast.com>
References: <CAA93jw46jpOcMYTb9vmyw6ywAvMkmQb3jnmbu4G-2k97PyrjmA@mail.gmail.com>
 <1727471439.369527853@apps.rackspace.com>
 <qpr4r78o-9640-ps6p-qpo2-94p0897298n5@ynat.uz>
 <1727557632.49023402@apps.rackspace.com>
 <793rr84s-q113-npr2-21p0-4ror01s1p376@ynat.uz>
In-Reply-To: <793rr84s-q113-npr2-21p0-4ror01s1p376@ynat.uz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.89.24090815
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5257:EE_|SA0PR11MB4765:EE_
x-ms-office365-filtering-correlation-id: fc0a092c-bd10-4759-f08e-08dce15f2825
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7093399012|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?UUhUU2xaVWpqUisyYitiYldyU1BpelJqQm01T1ViL0JDWmxzVXNJV2RNVGMr?=
 =?utf-8?B?Nk5saWNjWlNNWTZNSnR2TU50SFdQYTE1NVlwS2NoYXE2S2pjUjFMUkVKSklG?=
 =?utf-8?B?eUxWSHdQVzhCQjJVaklSLzdlTUs0N3ZQR3NjUDFGbmFCNVJwcXJZaGp4N1Iz?=
 =?utf-8?B?YVo1RTVJY3Qzb0ZpZUc3R0JYdzVwY2dDYUVGZXVHYkF4SXhpV0hjMy9WR3pV?=
 =?utf-8?B?ZmxBSGNYUU94dDA5WGVJZzNoL3B4c3NXWXpveHRmVUtadW5PZDlDdkdSQ011?=
 =?utf-8?B?dk56Y3lSd3JydnpGbjZYeGFaRHFra2hMVFlHMVhzZGFqV2FpZTdDTFJGN0Iy?=
 =?utf-8?B?YVpWV2NzRmUzNkIvZGlFeG1WdHdRVmNEdHJlTDNYLzdCK2UwdVdnWXBlbTNx?=
 =?utf-8?B?NW51UDhtVytjd0xpWnZVenpudy9GUTNDNFBYOXMrQUg4TC9BQTJsRUd4Y2NJ?=
 =?utf-8?B?TzFMV2JyS3l6cHV2VXVlVVo2OXo5d0dGN04rYmpDcVpKZmsyOTg1OHNQb3Jk?=
 =?utf-8?B?SlprT043dTl2c3pkN0dmaDcrdzVqY3FJRUNUalh2NHQ3QnNRZytMTlVxQ0Zz?=
 =?utf-8?B?TXhHMEpLemtkcGM1eUUvTUF4L2U5Q1RpZ1NDZkhqNVN3a3g0QlN4cG9VK2hQ?=
 =?utf-8?B?eDJ2bExmSTZmRWxLTGE2WHFZamlGYUZEZzA0MnRBQzJreENKaEVlSUF4SVdx?=
 =?utf-8?B?ZndqcHhRWm9TdkdIdTh2QkdiL0N2VHhYVG1wZFR6WmRDK3A3U3FiU3ZuTjNw?=
 =?utf-8?B?OElmTENiTDNGNHdacCtCWU9BSTlVUUN2WmZBSUdSRUx4MURxV1hmUDV2L1ZP?=
 =?utf-8?B?djlzdmd2VmZLN3dKUUZzb2hXbjcwblUwL2V0RFNhL1ZlUE10eUkxOUFEQ1Q1?=
 =?utf-8?B?a1QvVTJycC84VlhXY2M3bGpscEtESFZPcFFBR1NUMFJOV1pOUk5Yd3czd1hk?=
 =?utf-8?B?cXkzSDY3Y09VbkIxMUNtT3oxVTR3NS81MER6ZDFsRldLdU1NdmR1Q2ZPZEFW?=
 =?utf-8?B?M2JldVRweFNFMmR4dU1qU2hYTDlVOXFYQjd0Z3hZYTBkSzA5bkxiQlZFN1VB?=
 =?utf-8?B?MTFjY0Njb3hDazN1aERINFhGbkpIbFh0ditvb1AvNmhIY1FCOUdGNzZ4d29a?=
 =?utf-8?B?N1Z5TU5xc2ZUbndsRzVxdmdjWnB4MFBjWXI1VTBhUjh2Z2NMeHpGUmc5cHg5?=
 =?utf-8?B?NktvTGZmM1djV3M5UmRLWEFFT2Ryc21EcHlCUDdOa0ZyckNBYzdyeXh2emtE?=
 =?utf-8?B?VzhZakV0WnJvbGYvcTFDSGkwc1ZCS2NLRldIdndnYmx6Sm9lZFNEekgvTFND?=
 =?utf-8?B?WXBRVXpDNEhmeVh6ZlJpL3RnSTM3QzVydEREK2tlZUQ4dmZrTTRLZTMySk9K?=
 =?utf-8?B?VmNXSVhkN2VkODlNbCs4MWlsV0VZSkIxYjFGNXVCUkxjZHpWd0RuSHRHSHRN?=
 =?utf-8?B?VE5jcGplU0RackJlZys2VGg5V0tPNmhvV1hTOWJtcjFsK2VHbk1IZ0hrV3Jh?=
 =?utf-8?B?Ny9MMlhsNW5kbmR2bHdrQ2Q2dlk1Sk4vRHlsMzlydGR6Y3hNbldhRmF6dFYr?=
 =?utf-8?B?SnNYV1pydnZydUNTbElFK2hFVnpqaHhCUzEyZTk2Wm53VjErRVFiQlppS2pD?=
 =?utf-8?B?V1UySjl4VmtjS3RlOGVsdTM2VlhjMjhwYWJSNFExTXppVjc3eWs2VGRUeTRV?=
 =?utf-8?B?SzM0ZnVhMXk3SzZNMTFwOTlranJRemZVUnVJZmxxWWh2NDlWOCtCOUNZd09V?=
 =?utf-8?B?TWY2dWhmOTN1S1Y1R1RSMnYxQktuemlaTnArVUYvbW0yTTF3TmduUWlzdjBp?=
 =?utf-8?B?Rm9mZVlvb3VYTjFkR29oVFhUSE5ZOG90V3RDb2R6WXpGbGpBNE5xOU5GU3Fs?=
 =?utf-8?B?ck5abmFuK21HVk9sTzc3QU8zbFRldkM2NzVOMzl6cEpWVTBVY3NyV05wMHVD?=
 =?utf-8?Q?tEYMvC2nniA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5257.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7093399012)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RUlicExpR0UxRFQxb2JCcDYzQWJPUWlqYlVuS2x0VFJRb0VqYmR1S1MrR3Qx?=
 =?utf-8?B?cHlVdmlTQm9MVVhwRldXcUcxYWMwclVyWXcyeHN4M00xUjMzd1UvdktJRy9J?=
 =?utf-8?B?eit0QnVHNXdIOVl2eTMvRDdWOVc0dHdIcG1vaUlYZGI2V0hMZmxnbVlIV3p5?=
 =?utf-8?B?dWp2Ni9QaG5zY1NwT2RyRXduYUdiNTVRN3hRUGd1OXhFMFJpY2pKQzkyY01H?=
 =?utf-8?B?Ty80bVZESGJIWGVvQW5DcENmdm5UckJla05FTzlKL2FEVC9WNTlEZHM4RTho?=
 =?utf-8?B?dTF2R3VKRU5FMWwxNE96RXR0ZFdOZ3ovMVI2WnRNT29UVHpkZ1o2S3hKdUhZ?=
 =?utf-8?B?UVRlQ1AvRVdwb0ZBVnlycEpud0lyaDQ5aW5SUWd3UlJPUzFlMHlKS2dxVDRv?=
 =?utf-8?B?ZjEvdFArYjNCbmc2WklmdTJNRVVrcUJQU0R3N0FCdGJKcU4rYWtKSUZKV1JQ?=
 =?utf-8?B?bkZBMGtyOHpKd1ZKWFNoMHY3MjNxcjN1N3pEbVlZZHdEQ0Z6YkN4QURYU1RE?=
 =?utf-8?B?VXk2YmY3UURwdGFFZEVuUUZCL3JwR0ZOUUZMb0hpelVhTS9aejRuNnNFVkND?=
 =?utf-8?B?ODAxdTVib0VkVkR3dDYzOS9lVGgzbmtOQVdwV0tQSVk3RnpTYUYrMDFIdjls?=
 =?utf-8?B?SkROTzhZWWswNDA5MW1RVEVWeXlHd0NVUmRkZVdtTEF4clBxOTJBVkNIRkpR?=
 =?utf-8?B?OEhXY3JqTEJQMzA0U09hc1VVQWgrdTZZaWplNnFYaVhxMlBHZ3ZDQWpVS1d4?=
 =?utf-8?B?Ym9uTndHYWNuVEswYmRnVkpLTFZiTHNINFVvUjBuRXBsL3NxYUtDN3Rtdk85?=
 =?utf-8?B?emhyMkRUWkRmUEZBME8zMldHcHVmb1U1WHQ2UWc2eVAraGFkY0x5SmVLLzhk?=
 =?utf-8?B?WGQvbWF4a3d0cUF3YlFnRjVDU0NWdDQ2THVCVi9kRVB3WTh3c0hJVmxMMFlB?=
 =?utf-8?B?b0RlOWZaT0x4b09PaHp0WkVkUlhrSi94WnNjY1JENitFeWhlZ3Z4UkZyRTRr?=
 =?utf-8?B?RUdDQXEySzhGT1FlUWNUN1dBWlVVdTJBYks1RmVCdjQ2MVVJdXdMYjRwdmRn?=
 =?utf-8?B?MzZYaTg4MEloNk9reHRBMjJlMmRuMXdVb3pJMlA0RTBNalRZUExpTnIxTGlY?=
 =?utf-8?B?bkZaQ1FPTzlteGc2aVdta2tsaHR3ZDhxcWt0SUpaVGVVUUpEY3Bvd08vOE95?=
 =?utf-8?B?YzRhV2dFaHF2RHAyQ1RsNC9tWURoVU9ITUx3R1dMcFA3cXRzTXRQSFY4eDZj?=
 =?utf-8?B?elF3dUN6MWZPdHFNemdhbTZFN1o5ZlBvb3U1OGppNjdsaXhaMUVlUjV2NGV0?=
 =?utf-8?B?L1lOcWJjYktHcHBQUzhmaGdGRzFXTFhJNGJSMmIwU1Z4WThYYWRicEpNNVhN?=
 =?utf-8?B?NXFvdVBXbFVqS1BobmRxNDcwRkhiMk5oaWQwblV5UWdYMy9vZlpCZ1dZRXlu?=
 =?utf-8?B?L1k5RHJoc3hWUnA5VDNUUDBlL1psWUJaQzFzakNrY0hsTnJmSHh2aEpjbVI2?=
 =?utf-8?B?SU9lMnRLMlpBYitpN3pQYUplTFVON2c4OCtWS0cwUnlMTGttanNVOTExQTQx?=
 =?utf-8?B?QWsrTFdRd1dvdS9WbDBvczR3dXcwQXd5Nm5CSkt2KzRLbVM0WURXd0RCZWFx?=
 =?utf-8?B?U1VKL2U2VldwVUltM1NWQzBlVlYrVytCakFGc1J1VmQzZXN5M2MyZU41bXVS?=
 =?utf-8?B?bDJJSlYrd21zNUVHcXJIM2lMNWgyRmZMZEU3bmxQYThOenJKOVBTVm5zMmdH?=
 =?utf-8?B?bWI0VVI4Nnk1dWJMcnpSWTBheXNJdkVFS091UzVxT0lFNmEyRVZZSTg5MUoy?=
 =?utf-8?B?bnZaN2NmL29rOXQvZzlENlBUWGd4SGNUaUlQNjJtWkxBNDc1S1Y1VGVvdlRJ?=
 =?utf-8?B?NTBSaXZ6SEZ3emNaZkdjY2V4ai9sZS81SGdMRHZPeGxhT0J0cmlwZUtBTkVW?=
 =?utf-8?B?c0ttZm9WamdaUENmdFhEd2xsVzcrY1RvOFJrY3dId2hKWXVYNkluMEUwSGRJ?=
 =?utf-8?B?Wnc2alFqUVlidFdRa0hhNmlqblVURTlhVDdwWUhIblJNclJsWnVjK2JudUtn?=
 =?utf-8?B?b3lEL2NIajBOTEFONUpzYTlHeHQzOHpVbzl2NmliZlZtQldBZXhkbzZEOUp5?=
 =?utf-8?B?emphWFI2alZMdkZlUmlBcE5PdTZ2V1M1R1RtaWFCVU9oYjFiaGNoSTFEQVYr?=
 =?utf-8?B?Vnc9PQ==?=
Content-ID: <A68B83781018D24CA5CF97541BE2941B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: comcast.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5257.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc0a092c-bd10-4759-f08e-08dce15f2825
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2024 14:49:59.0916 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 906aefe9-76a7-4f65-b82d-5ec20775d5aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: catBB0zoHLTCXf50Y1SnL5FIJBtCWtYnBTkuCfRmijngkYHa+7wBAmlrfxojAcmYA1ojc9sM3ojcd1nAAcc6TjC4QVN5Bc+RUNvFVrM3NTs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4765
X-Proofpoint-ORIG-GUID: GpwGAqs_kXs5rgJn7cxCSiCnA_-7V2ZO
X-Proofpoint-GUID: GpwGAqs_kXs5rgJn7cxCSiCnA_-7V2ZO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-09-30_14,2024-09-30_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0
 adultscore=0 mlxlogscore=999 spamscore=0 lowpriorityscore=0 phishscore=0
 mlxscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2408220000
 definitions=main-2409300107
Subject: Re: [Cake] [Bloat]  bbr vs all the aqms, cake winning...
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
Cc: Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

T24gOS8yOC8yNCwgMjE6MzUsICJCbG9hdCBvbiBiZWhhbGYgb2YgRGF2aWQgTGFuZyB2aWEgQmxv
YXQiIDxibG9hdC1ib3VuY2VzQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldCA8bWFpbHRvOmJsb2F0LWJv
dW5jZXNAbGlzdHMuYnVmZmVyYmxvYXQubmV0PiBvbiBiZWhhbGYgb2YgYmxvYXRAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0IDxtYWlsdG86YmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0Pj4gd3JvdGU6
DQo+IFRoYXQncyB3aHkgSSB3YXMgc2F5aW5nICd0cmFmZmljIHNpbXVsYXRvcicgcmF0aGVyIHRo
YW4gJ3RyYWZmaWMgcmVwbGF5Jy4gQSBnb29kIA0Kc2ltdWxhdG9yIGlzIGEgbXVjaCBoYXJkZXIg
cHJvYmxlbQ0KDQpbSkxdIEZ1cnRoZXIgdG8gRGF2aWQgUidzIHBvaW50IC0gdGhlcmUgaXMgc28g
bXVjaCB2YXJpYXRpb24gaW4gY2xpZW50LCBkZXZpY2UsIGhvbWUgbmV0d29yaywgQ1BFLCBldGMu
IHRoYXQgc2ltdWxhdGlvbiBqdXN0IG5ldmVyIGNhdGNoZXMgYWxsIHRoZSBjb3JuZXIgY2FzZXMg
KGFuZCBzbyBJTU8gbm90IHdvcnRoIHRoZSB0aW1lIGludmVzdG1lbnQgaW4gbW9zdCBjYXNlcyku
IFRoYXQncyB3aHkgaW4gbXkgZXhwZXJpZW5jZSBsYXJnZSBvcGVyYXRvcnMgb2YgbmV0d29ya3Mg
YW5kIGFwcGxpY2F0aW9ucyB3aWxsIG9mIGNvdXJzZSBydW4gYXV0b21hdGljIFFBIHRlc3RzIGlu
IGEgbGFiLCBidXQgcXVpY2tseSBtb3ZlIG9uIHRvIHBoYXNlZCBkZXBsb3ltZW50IC0gd2l0aCBh
IGdyYWR1YWxseSBleHBhbmRlZCBkZXBsb3ltZW50IHRoYXQgaXMgY291cGxlZCB3aXRoIGFsZXJ0
aW5nIGZvciBjaGFuZ2VzIGluIG9wZXJhdGlvbnMgcGF0dGVybnMvcGVyZm9ybWFuY2UvZXRjLiAN
Cg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtl
IG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1
ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

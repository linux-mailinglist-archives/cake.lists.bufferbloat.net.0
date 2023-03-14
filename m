Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E296BA114
	for <lists+cake@lfdr.de>; Tue, 14 Mar 2023 21:59:37 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C38523CBDA;
	Tue, 14 Mar 2023 16:59:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1678827575;
	bh=JAVLJXYumVlQzPWYFreFaO5tI6R9lQlz7mPNHYxNRuQ=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=MEAVmco6dlmEbeS/fYNuPP81s3l0Fz/5ogoBesZr2V9PhqC24xSR1K+3AW/9h8TpP
	 wvhDB7ujLUETMpdcd2ZK8beGHAjMlYnp0POy3btUmfawHWmBHTsSfONPOITpJZcPJH
	 Uaic/F8wx+ciHP49EPX50JOif2eLPx0/1lCIkA7LDemDZ4VWQUFsc2BVk8I7ch2+xU
	 YNYXJNRqeL4r0URWJOenNvW/h8+GPcDhnGAJT+sYhrwH67Gt7KVXU305bpki//B0OE
	 UvgNgE46Aknc/YapyccgTSxOEpXshMCIk5wa0WqagymntakMCd5M5YlWjPqRVThnuk
	 hbwDSRaz5frCA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2100.outbound.protection.outlook.com [40.107.236.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C408B3CB37
 for <cake@lists.bufferbloat.net>; Tue, 14 Mar 2023 16:59:34 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BBRvWw2dOiHh+04W3aAhbnfpdHewrYTYXMsx0s7ATDqCiJ/jMQKXgI9WItjaq1U0O75Oe03LDkwG/NV/kRa+tiXxQw3zlfBX2T47YpDl9KWM+VQvMFMdFRIsm/qe0D9B03xj23RxVxVVyaighw0o8zp38qSdkQzp2XBYQEXIWISSaojFHPwRXpzrNsbrA4OfdwdF0ee3ZeyP1uTEXcieUBJKNsuYIkb3IT/h6U9e6dPUDfooHpMSdp5wEfBT7ZcLwxW8pp4JtuxIJMcvJuXztgk8NP6Bj/DdarV1PVerwVDYtCE1SL8pDxd4jaiCAkmi+acDGSplA3pKN8QttAOiHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gN3fTuRFzHvJjppH1BLvWXJ8+SFuc6eFJbXfO8+6DCY=;
 b=LARisbKKKiCpPJmgjkDEGsdbEcO1ek1Xf0nOJkZd4hs3gxbehZAei6y3mM/3GbE8FNb8b4093Su8wCJZnCLsqeEQHm69Nh+W5ihl8uvEJ8XQG0E8Prc4TaH2F0ncYtthsQAAlXXdBItT9vbs80JIKJKlJNXCX6qltrhH0OQImiOUNKmJqqhkP7ktcLCT3d+pIHiuUiSRuXwI9AoUnFuteFyFBAMimT2DUVs+ENM7YmhricZMfv8VW0t7JlmhoV9c6r2vs80xced0yN4ECcUqVFF9JwzYzkXs8zcG6efHu3lj4FXhbAzCJslcrrazCfRgHNOzAj+6FgfZEe/v3JeouQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cablelabs.com; dmarc=pass action=none
 header.from=cablelabs.com; dkim=pass header.d=cablelabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cablelabs.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gN3fTuRFzHvJjppH1BLvWXJ8+SFuc6eFJbXfO8+6DCY=;
 b=coOhpNBPGAkdVfkPF9vnBGXfsOn2t+2ex/WFQaMsRMB4W6N0/1Ww9VLKyhFZNN6S6SBi9nHkKt2mSGaUZ6rTxYroaymR12GRdxKUyU3IYTmbcPg//Jojb+gZbeC6j4TnADwprLmOYTMFU8S4lK1HLfTT/d4YB0PVPQ/6g/aQZ/TueIQznfT+1GTQaqBpKG4CdfGmyf9Y1s7zd+oai04kVsd8HJtLSzpeskD8y1URKJAHQKLYPuWSqZJciSH6fpezFjI2SvCiGpn8VkHariXxlDxWzOOGXeAjss/KpypqCKO7zwVqGOobjvnTIjz2t4d0HybgMZnmzG/VKCojAzhunA==
Received: from BN8PR06MB5892.namprd06.prod.outlook.com (2603:10b6:408:ce::25)
 by MN2PR06MB5741.namprd06.prod.outlook.com (2603:10b6:208:123::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.26; Tue, 14 Mar
 2023 20:59:32 +0000
Received: from BN8PR06MB5892.namprd06.prod.outlook.com
 ([fe80::656e:9b0b:b49b:d084]) by BN8PR06MB5892.namprd06.prod.outlook.com
 ([fe80::656e:9b0b:b49b:d084%3]) with mapi id 15.20.6178.024; Tue, 14 Mar 2023
 20:59:32 +0000
To: Sebastian Moeller <moeller0@gmx.de>
Thread-Topic: [tsvwg] draft-ietf-tsvwg-nqb-15.txt vs the cake AQM
Thread-Index: AQHZVn2QY2isdk4gqE2SQVTbhBhZEq76EYiAgABt/gD//96ogA==
Date: Tue, 14 Mar 2023 20:59:32 +0000
Message-ID: <AA46BF0D-A01B-409F-B8E8-9F74C599D301@cablelabs.com>
References: <167348364734.15098.9183646444272144529@ietfa.amsl.com>
 <FR2P281MB1527B1114EA0718F8BB19DBF9CD79@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
 <659CE6DE-2B9D-4210-BAF8-BCC99E2ED875@cablelabs.com>
 <FR2P281MB1527003371292BDB9F08764A9CDE9@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
 <DEB97936-375A-41C8-8ECB-E33F94D30056@cablelabs.com>
 <FR2P281MB15273966161929E8BAB937869CA29@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
 <7434C6A7-4CED-4D39-A852-2714AB9DA1DC@cablelabs.com>
 <FR2P281MB1527C89A1654A77FAD6A24AF9CBE9@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
 <CAA93jw4_MAX1DULpvU_Uo7BuyvvRpqZ-_gZP+HbhC251osCT3g@mail.gmail.com>
 <407A497F-1546-43E3-BE4C-A052CBE8CD4A@cablelabs.com>
 <0D20823D-9231-4221-B945-123E210DCD53@gmx.de>
In-Reply-To: <0D20823D-9231-4221-B945-123E210DCD53@gmx.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.70.23021201
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cablelabs.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN8PR06MB5892:EE_|MN2PR06MB5741:EE_
x-ms-office365-filtering-correlation-id: 5db9e374-59c8-4bc2-43aa-08db24cf0275
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tZurwz0nhY/jpolJxjaqx7te6Ax7DKdZ4kM+hKng99k3ws4B6fX64sxQ7paSAJuWetIkNS4zpzSbUPszef28NTO8sf8df9NOL6FvWUEjRQAzDpVtb/+krYB0lwmCXVr6XydjiYgRZAvujh2Un8pIdTK5sPBlpTXCxvG11e4/sedS8DamoclZR1/l9EvS7MR/Oux7YUia0jgJI8tCUs+5HYGn0zLBLjTOP/uGLZ/ArHZB9wQ6u9pj7znmtyZn9I+OJuIUKplRh7+KMTZ2dsMRjZJ9t3RnfKmJLy9S3R9eEW3UOh4wbf5YtcAPvkwkLGTYQ2btXkoq23/jdDysUqrBLo/IwYuc4+Ac/Tusd3Os3BRTkZU3cFiVxvXF032Zzn9B22U9wdz1hIQzoFHpJbr4KmAQzoGULiu9tCxqME1XPLzJEM4jkeUsLL6WSJllM1WhWYA2jKDpCzvqAyqvMOLGiD5041RUvCD52qnzfBqnaiUb05gMk00Lf8zrfjLyKsjK7sER13d3lu5cMu2oK7BuSq3aJN+sGO8f6iHfwZiNBa04mbRHIpBCAktk23JK9bZCjped8405nGbtPpfASm7bU67rG3Ao0PxnvNgex8B0aX5A0Lsqh281NX+QMciSEKbd/Vwe9TTsjgSAPe2HxHFBEmgZAtpHIJvkMImj8F+RmnYhBuehC2Wx3NkTczFrmiyzCiCnMfzXGD8Pr4o6LhZ5wPebN/XdrMiFZBMqrGAs1A0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR06MB5892.namprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(136003)(396003)(346002)(39850400004)(376002)(451199018)(2906002)(122000001)(66556008)(83380400001)(5660300002)(36756003)(33656002)(76116006)(66446008)(8676002)(64756008)(66946007)(41300700001)(8936002)(6916009)(38070700005)(91956017)(4326008)(316002)(38100700002)(66476007)(86362001)(54906003)(478600001)(2616005)(186003)(6506007)(966005)(6486002)(53546011)(26005)(6512007)(71200400001)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U21qSlVsUDNtV2UzZGdYVTlGc0NMaWpIT2txZUtEd0taSTBoRzhUZWRyS24z?=
 =?utf-8?B?WUhjTHFWY1BYK1VaRHBOU0d3MVJpTXpmRmFQYk1teGhBenJCZ1g4OGhBcDZD?=
 =?utf-8?B?bkZDU2lTL3ZwSXNUaWFSKzFYZzRGaUoyTmF0WUFXL2gzcEg2YWdVeVFraC9O?=
 =?utf-8?B?NG45MnpJUEtMWEpua3J6R2RFZzNmR3VOYVlDRWw4b3NMMXlDdDVwb3ZIdk9j?=
 =?utf-8?B?VGppeFlydFVxNXFMTFM3TDErSXI1YmU4c1g1aVp0TzB4YmlJQkF0Y2Q2L2Ns?=
 =?utf-8?B?NmN2dTFKUEk3TjZGQlE5RGxXM0pRWGNlbjArSzNWZDFDQU8xWmxQOUt0OEhJ?=
 =?utf-8?B?Rm56VUpSVzZQR21XZlhNQy9XaFpzd3YxZFVReVJwVDQrSSt6eldiTSs2dCty?=
 =?utf-8?B?elBjd05JUERodmR1M0VkQk5HWGpWQmt1dW40T2tid1l0TWY2M1Z4eGJrMXpk?=
 =?utf-8?B?ME15MlNHdExvczZEcW90MVh6N01YejVMdTB5TWRoS1NnUU1ZT2svQUphei9P?=
 =?utf-8?B?Q0NPL1cxaVlpUlV1bDZxNkRoTW9xdnV1dElVSWd6Vmx0VUNqc3k2WTdwVFF2?=
 =?utf-8?B?WE1YS1hqaXhhcTI0bGxBVWtNNWRNeHRIOUhSaXFFTHEwbjA1cytnTk9sRjVN?=
 =?utf-8?B?KzN1ZHIyNDF4K3czWHc1clpQb2oxeE11MDJhaEdiemlXK29yaUx0N0VuakFa?=
 =?utf-8?B?bUdkRCtzR2pXbGFjajJQUVBzVFRmeWFIL1h6cnBad01vK1BlSG5KQWlRSFcw?=
 =?utf-8?B?Q3FaYXcycVRZb2t5NlZaTUl1Z01kT0Y1djBtUmhFYUp6UFBiNW1hUHcvWXVX?=
 =?utf-8?B?T1N3KzVoNFZxTExuREd5OVVCQnMxbXRxL0FLakhwakNFcUdlWFBqZzhrR09y?=
 =?utf-8?B?d2tCemcwNVE5YnBucTArSmhKQmxWOGlMSUFzUmJDSFErVDhnWGs0aFl1QTZS?=
 =?utf-8?B?U3Y2bXhoTm9sdFhNbjF1N2s2S2dVcGIyZWMzQ2tmZnZPU1NBbFNTVzUwcHpE?=
 =?utf-8?B?WmcyWnVpdHZ1ZzQ0VlRhQitlaWpma1liajZhclFPRldJQTlibnRpaUZKcE92?=
 =?utf-8?B?czZYZ3p1VTNSekxoanZRaGlJY2V3UFF3Rk01UjR1ZlFOdUl0MnpmN2FFbWFr?=
 =?utf-8?B?Qkh5NGFQeitYczk1VkFselZRb0U5bFR2c09XbXc2a2NmdVBZTmRFdnFDQ3dJ?=
 =?utf-8?B?Vkc0TXBHYXVYekdWQk92aDhLek9uZnc5R1J4Qzl3OTYyTnRTMyt6OWNjMGlJ?=
 =?utf-8?B?OVBkNFQ4NXlKRVpQbWNFMzF3eWk1ejlqa3B2VjdoMGVrS1JmT0lvTUZpWU9o?=
 =?utf-8?B?V0s3Qi9MMW5QNW9mTFhET3BXL3BDM1FWdkYySFZ6YjNCbWVwYlR4WWFMY3lW?=
 =?utf-8?B?R29TaGlnZWJMa3JJQUlwZEVwNXlPWFpZdTR4S21SRTFGMDZWcldmck51Mkxo?=
 =?utf-8?B?cnhuNWZLdlJuQzVBcHF2aVhUTzFGZDc4OHNwMVpsdzZPRzNUMUtYaks1bGNF?=
 =?utf-8?B?M1Y2MDJOMnRPN0lrUjRQUmkvMmxrZEozWXE3Wjhja2J5M29ETUdSOVNDcGly?=
 =?utf-8?B?OVdPcVptdm9DemE0Q3VDbndOMEwzK3UzWi9uS1ZNOVdpeDFtUzlaeDJoT0Zi?=
 =?utf-8?B?MnpzR1RzZytBQUozQTlLbUxZRkVWeVpOYWtTTEJBTi8weUVQS2NQTHFqT3Yx?=
 =?utf-8?B?dlNtVkhrZlRZeXI5bTV2WnhJcEk5bm9wYUFpa2FqVFZCM0lVL2hEQlJ3Yi9Z?=
 =?utf-8?B?S1U4MXhjd05VWnF3MEdVVng0ZmRnelhjWkwxdzJuK253SlYvVWs3WGtVVkgx?=
 =?utf-8?B?QjMvdzl4L3ZpVWJFV1lUVklkMy9KYzJ5M1QvZkEwd2VoNDI3cXpFU1hGKzVY?=
 =?utf-8?B?cUtDc2thV3JGa2pJZlFlZlNhSzRSTUtUa3VaVG40cjh5ZS9ubm9CNm5USnpV?=
 =?utf-8?B?TEl1djJaNzlrek14TmZGR1FUUCtTeUdxQzBwcEFhZis0ejFXZDVOUXBDMkpP?=
 =?utf-8?B?Q3laeitJWG1ZK1ByQUdESnQ0dnJEVTdYRmdsVnJ4NVNUaEl6U1p1QUVBRE15?=
 =?utf-8?B?M2doakdTUjBHd3o1SGtvYWdHaWk0TlNXTk9mbTVGTG9DcWlSWDFxU2VueXMv?=
 =?utf-8?B?THFkOWZYZEIxMDJyNjhuNlJZSHhBMkxOWUFmUDJKczBPaEZ3YmtCdXo5YWVu?=
 =?utf-8?B?R1E9PQ==?=
Content-ID: <D0041E1F6735134B9D9DDC1A30955CD8@namprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: cablelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR06MB5892.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5db9e374-59c8-4bc2-43aa-08db24cf0275
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2023 20:59:32.0501 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ce4fbcd1-1d81-4af0-ad0b-2998c441e160
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JYp5l7UWguidFj0K+BqE9cEiU00BqV47Ynsrdiv8WKWROIT96Bkk0JHFl4cGfb5ih+BkKFi6TAto4Zpz5NJAhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR06MB5741
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 "Ruediger.Geib@telekom.de" <Ruediger.Geib@telekom.de>,
 tsvwg IETF list <tsvwg@ietf.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SSBhZ3JlZSB3aXRoIHlvdSB0aGF0IHN1cHBvcnQgZm9yIGEgc2VwYXJhdGUgTlFCIHF1ZXVlIGlu
IHRoZSBmbG93YmxpbmQsIHNyY2hvc3QsIGRzdGhvc3QsICYgaG9zdHMgbW9kZXMgKGlmIHN1cHBv
cnRlZCkgc2hvdWxkIGJlIGNvbnRyb2xsYWJsZSBhbmQgZG9jdW1lbnRlZC4gSXQgd291bGQgc2Vl
bSBzaW1wbGVzdCB0byBtZSB0aGF0IHRoaXMgY29uZmlndXJhdGlvbiB3b3VsZCBhcHBseSB0byBh
bGwgaW5zdGFudGlhdGVkICJxdWV1ZXMiIChsaWtlIG90aGVyIHBhcmFtZXRlcnM6IG5hdCwgd2Fz
aCwgYW5kIGV2ZW4gdGhlIGZsb3cgaXNvbGF0aW9uIGNvbmZpZ3VyYXRpb24gaXRzZWxmKS4gIENB
S0UgZG9lc27igJl0IGFwcGVhciB0byBoYXZlIGEgd2F5IHRvIGNvbmZpZ3VyZSBlLmcuICJmb3Ig
aG9zdCBYIHVzZSAnc3JjaG9zdCcgYW5kIGZvciBob3N0IFkgdXNlICdob3N0cyciLg0KDQotR3Jl
Zw0KDQoNCu+7v09uIDMvMTQvMjMsIDEwOjU5IEFNLCAiU2ViYXN0aWFuIE1vZWxsZXIiIDxtb2Vs
bGVyMEBnbXguZGUgPG1haWx0bzptb2VsbGVyMEBnbXguZGU+PiB3cm90ZToNCg0KDQpIaSBHcmVn
LA0KDQoNCg0KDQo+IE9uIE1hciAxNCwgMjAyMywgYXQgMTc6MjUsIEdyZWcgV2hpdGUgPGcud2hp
dGVAY2FibGVsYWJzLmNvbSA8bWFpbHRvOmcud2hpdGVAY2FibGVsYWJzLmNvbT4+IHdyb3RlOg0K
PiANCj4gSGkgRGF2ZSwgDQo+IA0KPiBUaGUgTlFCIHJlcXVpcmVtZW50IGlzIHRoYXQgaXQgc2hh
cmVzIGNhcGFjaXR5IHdpdGggYW5kIGlzIGF0IHRoZSBzYW1lIHByaW9yaXR5IGFzIERlZmF1bHQg
KENTMCkuIFNvLCBmb3IgYWxsIHByaW9yaXR5IHF1ZXVlIG9wdGlvbnMgaW4gQ0FLRSAoYXNpZGUg
ZnJvbSBwcmVjZWRlbmNlLCBwZXJoYXBzKSwgSSB3b3VsZCByZWNvbW1lbmQgdGhhdCB5b3UgYWxp
Z24gd2l0aCB0aGF0IHJlcXVpcmVtZW50LiBTbywgSSB0aGluayBJIGFncmVlIHdpdGggd2hhdCB5
b3Ugd3JvdGUgYmVsb3cgZm9yIGJlc3RlZmZvcnQsIGRpZmZzZXJ2MyBhbmQgcHJlY2VkZW5jZSwg
YnV0IGZvciBkaWZmc2VydjQgQ0FLRSB3b3VsZCBiZSBub24tY29tcGxpYW50IGlmIGl0IHB1dCBO
UUIgaW50byB0aGUgdmlkZW8gY2xhc3MuIEkgZG9uJ3QgdW5kZXJzdGFuZCBkaWZmc2VydjgsIHNp
bmNlIHRoZSBtYW4gcGFnZSBkb2Vzbid0IGFwcGVhciB0byBkZXNjcmliZSBpdC4gQnV0LCB0aGUg
c2FtZSBsb2dpYyBzaG91bGQgaG9sZCB0aGVyZSB0b28uIA0KPiANCj4gSW4gbW9zdCBjYXNlcywg
SSB0aGluayB0aGUgZmxvdyBpc29sYXRpb24gaW4gQ0FLRSBhbHJlYWR5IHByb3ZpZGVzIHRoZSBi
ZW5lZml0IHRoYXQgdGhlIE5RQiBQSEIgaXMgYWltaW5nIHRvIGFjaGlldmUuIEJ1dCwgaW4gdGhl
IGZsb3dibGluZCwgc3JjaG9zdCwgZHN0aG9zdCwgJiBob3N0cyBtb2RlcywgaXQgZG9lc24ndC4N
Cj4gSGVyZSBpcyB3aGVyZSB5b3UgY291bGQgY29uc2lkZXIgZG9pbmcgYSBmdWxsIGltcGxlbWVu
dGF0aW9uIG9mIHRoZSBOUUIgUEhCIChhIHNlcGFyYXRlIHF1ZXVlIGluIHRoZSBCZXN0IEVmZm9y
dCB0aW4pLiBJZiB5b3UgY2hvb3NlIHRvIHRha2UgdGhhdCBvbiwgdGhlIHJlY29tbWVuZGF0aW9u
IGlzIHRvIGltcGxlbWVudCBhIHRyYWZmaWMgcHJvdGVjdGlvbiBtZWNoYW5pc20uIFRoaXMgd291
bGQgYmUgYSByZWFsbHkgaW50ZXJlc3RpbmcgdGVzdCBjYXNlIHRvIHNlZSB3aGV0aGVyIHlvdSB0
aGluayB0aGUgZHJhZnQgaXMgc3VmZmljaWVudGx5IGRldGFpbGVkIGZvciB5b3UgdG8gY29tZSB1
cCB3aXRoIGEgZGVzaWduIGZvciBsaW51eC4gDQoNCg0KQnV0IHRoaXMgYWRkaXRpb25hbCBxdWV1
ZSB3b3VsZCB2aW9sYXRlIHRoZSBwcm9taXNlcyBtYWRlIGJ5IGZsb3dibGluZCwgc3JjaG9zdCwg
ZHN0aG9zdCwgJiBob3N0cywgc28geW91IHdvdWxkIG5lZWQgdG8gYWRkIHRoaXMgYXMgYWRkaXRp
b25hbCBrZXkgd29yZCBkb2N1bWVudGVkIHRvIGFkZCBhbiBhZGRpdGlvbmFsIHF1ZXVlIGZvciBO
UUIsIGJ1dCB3aGF0IHRvIGRvIHRoZW4sIGRvIHRoaXMgZS5nLiBpbmRpdmlkdWFsbHkgZm9yIGVh
Y2ggb2YgdGhlIGhvc3QgcXVldWVzIG9yIGp1c3QgYSBzaW5nbGUgb25lLg0KDQoNCklmIHlvdSBh
c2sgbWUgZG9uJ3QgZG8gaXQgYXQgYWxsIG9yIGFzIHNwZWNpZmljIG1vZGlmaWVyIGtleXdvcmQg
Zm9yIHRoZSBpc29sYXRpb24gbW9kZXMsIG5vdCB0aGF0IHlvdSBhc2tlZCA7KQ0KDQoNCg0KDQo+
IFlvdSBtZW50aW9uZWQgYSBQYXJ0IElJIHRvIGRpc2N1c3MgdGhlIHZhcmlvdXMgd2FzaCBtb2Rl
cy4gSSBvbmx5IHNlZSB0d28gbW9kZXMgKHdhc2gvbm93YXNoKSBhbSBJIG1pc3Npbmcgc29tZXRo
aW5nPw0KDQoNClNhbWUgaGVyZSwgYW5kIGFnYWluLCBpZiB5b3Ugd2FudCBhIHNwZWNpYWwgbW9k
ZSB0aGF0IHN0aWxsIHByb3BhZ2F0ZXMgTlFCIHBsZWFzZSBnaXZlIHRoaXMgYSBuZXcgZGVzY3Jp
cHRpdmUgbmFtZSByZXRhaW5fZTJlX0RTQ1BzIG9yIHNpbWlsYXIsIG9yIGFuIGV4cGxpY2l0IHdh
eSB0byBlbnVtZXJhdGUgd2hpY2ggRFNDUHMgdG8gd2FzaC4NCg0KDQpSZWdhcmRzDQpTZWJhc3Rp
YW4NCg0KDQoNCg0KPiANCj4gLUdyZWcNCj4gDQo+IA0KPiBPbiAzLzE0LzIzLCA4OjAyIEFNLCAi
RGF2ZSBUYWh0IiA8ZGF2ZS50YWh0QGdtYWlsLmNvbSA8bWFpbHRvOmRhdmUudGFodEBnbWFpbC5j
b20+IDxtYWlsdG86ZGF2ZS50YWh0QGdtYWlsLmNvbSA8bWFpbHRvOmRhdmUudGFodEBnbWFpbC5j
b20+Pj4gd3JvdGU6DQo+IA0KPiANCj4gSSBoYXZlIGJlZW4gc2l0dGluZyBvbiB0aGUgY2FrZSBy
ZWxhdGVkIHBhdGNoZXMgZm9yIHRoaXMgZm9yIHllYXJzDQo+IG5vdywgYW5kIGl0IGlzIG15IGhv
cGUgdG8gZ2V0IHN1cHBvcnQgZm9yIE5RQiBpbnRvIHRoZSBuZXh0IGxpbnV4DQo+IHJlbGVhc2Us
IHJlZ2FyZGxlc3Mgb2Ygd2hldGhlciBpdCBnZXRzIHRocm91Z2ggbGFzdCBjYWxsIGF0IHRoaXMg
dGltZSwNCj4gdW5sZXNzIHRoZSBzZWxlY3RlZCBjb2RlcG9pbnQgbnVtYmVyIGNoYW5nZXMuICg/
KQ0KPiANCj4gDQo+IENha2UgKHBsZWFzZSBzZWUgdGhlIG1hbiBwYWdlIGhlcmU6DQo+IGh0dHBz
Oi8vbWFuNy5vcmcvbGludXgvbWFuLXBhZ2VzL21hbjgvdGMtY2FrZS44Lmh0bWwgPGh0dHBzOi8v
bWFuNy5vcmcvbGludXgvbWFuLXBhZ2VzL21hbjgvdGMtY2FrZS44Lmh0bWw+IDxodHRwczovL21h
bjcub3JnL2xpbnV4L21hbi1wYWdlcy9tYW44L3RjLWNha2UuOC5odG1sPiA8aHR0cHM6Ly9tYW43
Lm9yZy9saW51eC9tYW4tcGFnZXMvbWFuOC90Yy1jYWtlLjguaHRtbCZndDs+ICkgc3VwcG9ydHMN
Cj4gbXVsdGlwbGUgZGlmZnNlcnYgbW9kZWxzLg0KPiANCj4gDQo+IGJlc3RlZmZvcnQgaXMgZXhh
Y3RseSB0aGF0LCBiZXN0ZWZmb3J0LCBhbmQgd2lsbCBub3QgZ2FpbiBOUUIgc3VwcG9ydC4NCj4g
DQo+IA0KPiBUaGUgZGlmZnNlcnYzIGludGVycHJldGF0aW9uIGlzIHRoZSBkZWZhdWx0LCBhbmQg
Z2l2ZW4gdGhhdCBmbG93DQo+IHF1ZXVpbmcgaGFuZGxlcyBtb3N0IG9mIHRoZSBOUUItbGlrZSBw
cm9ibGVtcyBuYXR1cmFsbHksIGFuZCBWb2ljZQ0KPiAoQ1M3LCBDUzYsIEVGLCBWQSwgVE9TNCkg
aXMgYWxsIHRoYXQgaXMgaGFuZGxlZCB0aGVyZSB0b2RheSwgSSBhbQ0KPiB0aGlua2luZyBvZiAq
bm90KiBlbGV2YXRpbmcgTlFCIGludG8gdGhhdCBjbGFzcyBpcyB0aGUgcmlnaHQgdGhpbmcuDQo+
IA0KPiANCj4gTlFCIGZpdHMgbmljZWx5IGludG8gdGhlIGRpZmZzZXJ2NCBtb2RlbCBpbiB0aGUg
dmlkZW8gY2xhc3MsIHNvIEkgd2lsbA0KPiBwdXQgaXQgdGhlcmUuIHNpbmNlIGNvdmlkIHdlIHRl
bmQgdG8gdXNlIHRoZSBkaWZmc2VydjQgbW9kZWwgYSBsb3QgdG8NCj4gbWFuYWdlIHZpZGVvY29u
ZmVyZW5jaW5nIGJldHRlci4NCj4gDQo+IA0KPiBBcyBmb3IgdGhlIENTMC1DUzcgcHJlY2VkZW5j
ZSBtb2RlbCBpbmMgY2FrZSwgd2UgaGF2ZSBkZWNsYXJlZCB0aGF0DQo+IG9ic29sZXRlIGluIHRo
ZSBjb2RlLCBhbmQgd2hlcmV2ZXIgTlFCIGZhbGxzIGludG8gaXQsIGdyZWF0LiBBbmQgdGhlDQo+
IGRpZmZzZXJ2OCwgSSBkb27CtHQga25vdy4NCj4gDQo+IA0KPiBBbnl3YXksIGRvZXMgdGhhdCB3
b3JrIGZvciBldmVyeW9uZT8NCj4gDQo+IA0KPiBQYXJ0IElJIG9mIHRoaXMgd291bGQgYmUgYSBk
aXNjdXNzaW9uIG9mIHRoZSB2YXJpb3VzIHdhc2ggbW9kZXMsIGJ1dA0KPiBtZXJlbHkgZ2V0dGlu
ZyB0aGUgcmlnaHQgYnl0ZSBpbnRvIHRoZSByaWdodCBsb29rdXAgdGFibGVzIGFmdGVyIGFsbA0K
PiB0aGlzIGRpc2N1c3Npb24sIHdvdWxkIGJlIG5pY2UuDQo+IA0KPiANCj4gDQoNCg0KDQoNCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

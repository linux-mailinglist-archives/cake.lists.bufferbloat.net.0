Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 022436B9B49
	for <lists+cake@lfdr.de>; Tue, 14 Mar 2023 17:25:21 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8EDD23CBC3;
	Tue, 14 Mar 2023 12:25:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1678811119;
	bh=IytCXJ8zGfi3LwueIz9D6RQKMmxkl53c/lyPj3OPO4U=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=HV6W9P3uEva8DprYqf+RY8QHrGR2ab7WOQuGbgrOHlm0DtsvIu9uM25AHZ2kBApFg
	 o+Psq0pfjobTmzVTYjrEg0dzl8WQFzN9m92KKDq+wYjkCCmL2DVhOZQkOFLvmBnQLt
	 0XA4TPcxHD4j5SeGQGRXCzVIQZGp+Jyo7K0jWGLOOyUyql1LeFdgBQNEtfr0TcfWKV
	 HXSB+Ce9P1QC1HKOSto1w1y5gZuPie5zKKVQ1GwygjZOgO0vDH3QUI0kR7ETvAqtcD
	 fCrgE2qB4OOx5hcGXnfyYDQbLbdRSceaROA0KQ/vPZM2+EIbPuZdGWLqQREj5Bx9Xf
	 SXc3pXSlhQawg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2117.outbound.protection.outlook.com [40.107.243.117])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 931263CB37
 for <cake@lists.bufferbloat.net>; Tue, 14 Mar 2023 12:25:18 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J5ZT/ioW+0JIdD41WXAnNG6D3O0eatpmrxlJOKUzUglT9MQVO7u9X1kUlO1A0gfUdylq6mwaAm0Rapo7wcOkgn3JWXsueH5E6nr5gYIotLKtXRyrPfERJptZOXxDeZQrHNkp5ZkG/nLfd6HAs2nyqYiROEL0Xd9IPnMz25h6Y5WF/7LBkVIkfM56RAQ0ia+mqlKJpCgBp1mgWjkbwjbvl7a2BKDV+PzZLR/6/sHntXe7dItO036pOSeBMkHvJYa6pXAUFYbUVDtg6CKmiqgzra2Qy2l+ST2+0tVDicleClLA/tu3jb+6/qOJAgDs4k7oC7PPMo7HBm8DOrINxlnyHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7iX2IaY2x+39AXust+FBSTgc6h9UeKf7pqP3T9AhlDc=;
 b=PxZLMPdlMVqDDH4V6sEG+ARZzIFeeLvMC2vNwlHx27ncHx+Klda0z/2SVrPR3tD3nCDueyYeQm7Bf5R/ZZbIJxYT2gdQ+dlN3xwjk+qtkoQoqSFkvl20Lj6ERechksVHm2KnCTyDBGLh2X1Sbpe2yWMXO5mZtKtoxdmhLV5TfTrVMbZST+ZSRkxxogDDVP815RhLaw2gvXKd8uw9HLy9Q+ANn0wYnOwNLGhUzsEqxQk6kEsvddj2ke4SwI03klIeVuZbgYGfk1t0Am4GLbxJYpB+afWD1nDhG0FKmLROpRvOYdwAugpD6ZWbEtIftdOfEit/g63wpmYB5+EmA15hKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cablelabs.com; dmarc=pass action=none
 header.from=cablelabs.com; dkim=pass header.d=cablelabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cablelabs.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7iX2IaY2x+39AXust+FBSTgc6h9UeKf7pqP3T9AhlDc=;
 b=tRCEU1Lc+gaqyDoN8l9h5uyLPCUf7e2EPPcRgkfS2IzTXvlYIyDHmMgzPTRnVyR9MaL4PmhwB14jD5DDVF1rhhLwOZYxjANi2Kym/1ifNUgRtJPbe4jmcOMv/JKdDBrlnH7iga49C/xzNHPycDy4BBkrlgO470bRAAgm72Q3cTUzwO44cuXWYhQFQf6QN9fEqgrEVcpqIdTIIYIC31RU7AOLHJ+hHYq2QnocIhhAnIPXzvM2hTYJq4t70uzfGgjlbUtr0eKTue7kCfnuvYVSIrvvBwe7fsGp/aadx6HudeXJs2MTnJHad4MeTeyDcH85Cn4EviBXqtNU5u3QwhMMNg==
Received: from BN8PR06MB5892.namprd06.prod.outlook.com (2603:10b6:408:ce::25)
 by SN4PR0601MB3773.namprd06.prod.outlook.com (2603:10b6:803:4c::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Tue, 14 Mar
 2023 16:25:12 +0000
Received: from BN8PR06MB5892.namprd06.prod.outlook.com
 ([fe80::656e:9b0b:b49b:d084]) by BN8PR06MB5892.namprd06.prod.outlook.com
 ([fe80::656e:9b0b:b49b:d084%3]) with mapi id 15.20.6178.024; Tue, 14 Mar 2023
 16:25:12 +0000
To: Dave Taht <dave.taht@gmail.com>, "Ruediger.Geib@telekom.de"
 <Ruediger.Geib@telekom.de>
Thread-Topic: draft-ietf-tsvwg-nqb-15.txt vs the cake AQM
Thread-Index: AQHZVn2QY2isdk4gqE2SQVTbhBhZEq76EYiA
Date: Tue, 14 Mar 2023 16:25:12 +0000
Message-ID: <407A497F-1546-43E3-BE4C-A052CBE8CD4A@cablelabs.com>
References: <167348364734.15098.9183646444272144529@ietfa.amsl.com>
 <FR2P281MB1527B1114EA0718F8BB19DBF9CD79@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
 <659CE6DE-2B9D-4210-BAF8-BCC99E2ED875@cablelabs.com>
 <FR2P281MB1527003371292BDB9F08764A9CDE9@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
 <DEB97936-375A-41C8-8ECB-E33F94D30056@cablelabs.com>
 <FR2P281MB15273966161929E8BAB937869CA29@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
 <7434C6A7-4CED-4D39-A852-2714AB9DA1DC@cablelabs.com>
 <FR2P281MB1527C89A1654A77FAD6A24AF9CBE9@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
 <CAA93jw4_MAX1DULpvU_Uo7BuyvvRpqZ-_gZP+HbhC251osCT3g@mail.gmail.com>
In-Reply-To: <CAA93jw4_MAX1DULpvU_Uo7BuyvvRpqZ-_gZP+HbhC251osCT3g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.70.23021201
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cablelabs.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN8PR06MB5892:EE_|SN4PR0601MB3773:EE_
x-ms-office365-filtering-correlation-id: 9ae8afda-4ef0-4af1-8fce-08db24a8afce
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UY3Z5qgcQ7zHaQ5lU3heoBChcqkWVboPlaj108wgy8zNc1lScEN2RdIjkCXkwIK6keZKLeHGBgTWPCbijuSmKJq4ZCVDUYHr9OlnLHj109oZhtjFq9ymV/rtobqKwKIXh2yVFevpiWY5Ir0kjjQA8/rD/dofb3v4GwgTnGI5Jzww7LVSqyAtPydQU0fgQVSeqR8/jxE2avgOVKtlFkBDfZK9qvllHdcHPE+PADJZyha2+dKKL65l0ERvgoaw1b7328NBTckMf2l03ngDTtNOROJIoRXaRQwwyHq7D7LYolg5PmYUW9oRoPD9BN7tNmFVxex+jPrpvLT0phfjz6bNKZDnsK6sYibO1i+1G4DKabK+U2BInKfPElwIZHNQlunFSK2N6A3/QdPRx0YGUFnoL6h7eVobSCIQV8IZozGHWZiEpTFhw5Euo+NB1oX5jtZ9xq/JHTzvfxn/+YqFATgg+B82kuX+9Iw0n0fY2WN4TS3ohaqxKHxuLODOcNOVEsNzxiBbEf8C56SSEE92kPyf+tYkWD5N4uL1MP3a89W5vQ015T9uIKcxQoim1vL5rnyF3NmzFEc11m2NXBE1xyZCg1Y1MYznsGMjKw2xYbVkj/ygPnwIEYmrrKf7Fr6+ctnXMlSjp1HlYT0fi3thJ4Yy0g/mbTdb5PmpxVOxbhZif2fNzubhO6UfoDgnexey8Zep28EAAKYFBxXYMGE3dUMSq4QtzuGstYdk9VH/R5QgaTY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR06MB5892.namprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(376002)(396003)(366004)(136003)(39850400004)(451199018)(54906003)(110136005)(36756003)(316002)(33656002)(38070700005)(86362001)(38100700002)(122000001)(6512007)(83380400001)(186003)(6506007)(26005)(2616005)(71200400001)(5660300002)(6486002)(478600001)(966005)(41300700001)(8676002)(64756008)(2906002)(66476007)(66556008)(76116006)(8936002)(66446008)(66946007)(4326008)(91956017)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bGlibEluNWN1WEpjMUN2am5OMW1pekpBYzN0MHRhYm9GUmphUWlSZ2NSSlZD?=
 =?utf-8?B?NGx5bTN5ZUMrcnplNjllMlBrS29QdVZnWEhZUEd1dWdHOU9aeEloYnpONHU5?=
 =?utf-8?B?ano1bURlaStwb2xQNTFVbkdaRUh0bXlINHZwY3JkNmtPK0ZaZ2Q0NTNTOTRw?=
 =?utf-8?B?WGR5V2dSaGFXYnFCTEpjdDJxc203QmxWU09naTVtdGNJdlZiMW1LUktReTY1?=
 =?utf-8?B?WElRNGFiem1ScjBTdUhIbjBtZm5jZkNEbkt0YTJyZnJsRXJsMXdIVk9IZkJ4?=
 =?utf-8?B?bmtCTks0bUZSS2VyeVpPMlZWUFU2d2ZaZDA0amZETGJGdE5rcTRhRGRybXQ1?=
 =?utf-8?B?SkxidXhMcjdNU05YcWcrYzA0NFR4dFpkQzBpdGxvOEJ5TEhCU2R1SWFDYmF6?=
 =?utf-8?B?RldnUHFRdDVtMkE5d2RVeDkvK0Y0S0lLVlcwakRDcjVJV2tFSXNzdHloRnQw?=
 =?utf-8?B?dmErMTV3WnJ2b2pxb1BSMWtBYW05NHQzNGhkbGFGTXA5blgzOWQ3Yk1oaWVM?=
 =?utf-8?B?V2RTM3VZME92UDBEYmJjOE9RM1kzRDBrVVk5WHB4czZHbllUcUxvNkxmVVFR?=
 =?utf-8?B?TGprQ0VnRXkyNHRyU0ZUUWRNdGFxSkxKejA1UndDcS90cmR5ZWtFbnozc0hQ?=
 =?utf-8?B?MGpwc1ZxVGJuaVNLYWc0Yk03WnVZMEt5QittNVpZNkllUmF5YmNOSXdtMG1t?=
 =?utf-8?B?SHhVVkh6SHlieVJLMGlRVHcydjhVT0RKakIxRlhud1ZFbVM1dWhPUEFwRTNo?=
 =?utf-8?B?cEF2Zmh4dzdYbFVBbVE1R3RHWWJaNVVvaHRQVzl3dFY0TUxMUWhTK2dUbmhM?=
 =?utf-8?B?bDM5UyszVjI4SDVhMnJkUnBOSXhRZzROOWFuZit2NjZmY2xvdFJ3eFR6ekMv?=
 =?utf-8?B?ZmdSSFlrMlo3bTR2MnM0SzA2VnFXODUwTW1LVjF1RjE0aURCbDhvRVc5Yjhq?=
 =?utf-8?B?SzM4VUhXRCt1ZEN4ZDdiWFFQeFV2MW5FcE95MS9NekxONUpmc1NwUFA2TzZR?=
 =?utf-8?B?WnJ3UENVQjZGejJTL3hCTlJseHEyTU9TZno4d0FjMVgrcTNZL0EwaVZSdEdB?=
 =?utf-8?B?dENaRzNOUk9hNFBHekpTbmxNcm5CeFlBUDZuZDlBYWo0cm9pcjc0Z2tUaVhm?=
 =?utf-8?B?b25UalYzalAydGk1SnQyendRNmJ3aFZMMDFBaEdtYTlxUnFQcUtQU1YrMXhs?=
 =?utf-8?B?cVNndm5KaXJiUGdraXpjK0lGUzNKZVlkZUN2LzR4QjJWWWQ1N3VoWUhJUHV3?=
 =?utf-8?B?czR1Q1R6alJaQzh4MXpwR3JkQUJZWStMeEkzaExCeGcvTm5zNmVFcTRHc0Vq?=
 =?utf-8?B?azBYdmFFampHMms4Z1ljQ3M5WlQzbitESHFDNzJRdU8rS3NZQWF1V1BvNUNh?=
 =?utf-8?B?dFFQd0ZDTm9FVDhSZTRydmxxaS9raUJSQS9VZnRrWFdFZktpYzdYOElnZzQv?=
 =?utf-8?B?elJ0cFdkTTdqWnM4dVNtK2ZzUXZDWVJWZGdiN2I3RjFqTlhia0s2S3pybUNx?=
 =?utf-8?B?SnhSQzJ2MTI4TCtNbzZYOUVCam9LYk16QUlCY08weW53UXFUMmJoS21icHJ3?=
 =?utf-8?B?eklzelRPQlAwWWpVdmRua0d2YnE4TlFCWnlUTGNLT1RER09jTmJ1dkVvSE9h?=
 =?utf-8?B?MTRpanpPNFltQW9FYjlzRHdpMUFnbGMzTVBhcjV1RTBzUlRFQ2pqK1E2amJl?=
 =?utf-8?B?cmFURmd2d3VCdWU1VlNUQmg2VlYrcTRMTlE4TjZvUDdzOTZmYUFob2FLWlRJ?=
 =?utf-8?B?YUp5NngzbytoK2NWOVZEaklTTktEL1dabEZaWGtGTmZFdkg1ODZaTkVKdGk4?=
 =?utf-8?B?VG4vY3hJb2ZPVjlmYlhLSlJDT1FhTXlxbFhtMW0vSzBuMUlmYWVsd3dPYW84?=
 =?utf-8?B?VXpPV2VuTWpyUWE3RWdTbnRpanNPTVZqUHpJc0d3WjMvT2I5d09pVEppVUxq?=
 =?utf-8?B?WDdoQUYrWHpVY2EvZ0R0Sk16OEtXTEtWMnMxQjFxMHdpNWlVeDkycE9qZE5S?=
 =?utf-8?B?UTQ2Wml3VitQM3RqZHZ2YlFPeTh5V1B6Y1krVVNub0NsT2JmUFlwbTRrOUh4?=
 =?utf-8?B?WlpndUhOQ3RnazdWVW12cWJ6ZzRyejJxLzBiUEVGbWMvaTZqaFlSaU5WUVk2?=
 =?utf-8?B?V2NoQVRWSHJOVHdHeUUrU2k0TjBjdEN5dm45UzJyQm1tY3VQZSt1SnhmWnNw?=
 =?utf-8?B?WUE9PQ==?=
Content-ID: <8EA1BE8B7FA47A4BB69E9F0789E333C8@namprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: cablelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR06MB5892.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ae8afda-4ef0-4af1-8fce-08db24a8afce
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2023 16:25:12.5244 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ce4fbcd1-1d81-4af0-ad0b-2998c441e160
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3TC3EaE6PLJmjo2GfhuBA5c2ram0nkZkvLGDwRRXr1gD/8PtibOyLglG5dC4MRLnq5Xd15TUsQc3ZyhWJM3QGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR0601MB3773
Subject: Re: [Cake] draft-ietf-tsvwg-nqb-15.txt vs the cake AQM
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
Cc: Cake List <cake@lists.bufferbloat.net>, tsvwg IETF list <tsvwg@ietf.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

SGkgRGF2ZSwgDQoNClRoZSBOUUIgcmVxdWlyZW1lbnQgaXMgdGhhdCBpdCBzaGFyZXMgY2FwYWNp
dHkgd2l0aCBhbmQgaXMgYXQgdGhlIHNhbWUgcHJpb3JpdHkgYXMgRGVmYXVsdCAoQ1MwKS4gIFNv
LCBmb3IgYWxsIHByaW9yaXR5IHF1ZXVlIG9wdGlvbnMgaW4gQ0FLRSAoYXNpZGUgZnJvbSBwcmVj
ZWRlbmNlLCBwZXJoYXBzKSwgSSB3b3VsZCByZWNvbW1lbmQgdGhhdCB5b3UgYWxpZ24gd2l0aCB0
aGF0IHJlcXVpcmVtZW50LiBTbywgSSB0aGluayBJIGFncmVlIHdpdGggd2hhdCB5b3Ugd3JvdGUg
YmVsb3cgZm9yIGJlc3RlZmZvcnQsIGRpZmZzZXJ2MyBhbmQgcHJlY2VkZW5jZSwgYnV0IGZvciBk
aWZmc2VydjQgQ0FLRSB3b3VsZCBiZSBub24tY29tcGxpYW50IGlmIGl0IHB1dCBOUUIgaW50byB0
aGUgdmlkZW8gY2xhc3MuIEkgZG9uJ3QgdW5kZXJzdGFuZCBkaWZmc2VydjgsIHNpbmNlIHRoZSBt
YW4gcGFnZSBkb2Vzbid0IGFwcGVhciB0byBkZXNjcmliZSBpdC4gIEJ1dCwgdGhlIHNhbWUgbG9n
aWMgc2hvdWxkIGhvbGQgdGhlcmUgdG9vLiANCg0KSW4gbW9zdCBjYXNlcywgSSB0aGluayB0aGUg
ZmxvdyBpc29sYXRpb24gaW4gQ0FLRSBhbHJlYWR5IHByb3ZpZGVzIHRoZSBiZW5lZml0IHRoYXQg
dGhlIE5RQiBQSEIgaXMgYWltaW5nIHRvIGFjaGlldmUuICBCdXQsIGluIHRoZSBmbG93YmxpbmQs
IHNyY2hvc3QsIGRzdGhvc3QsICYgaG9zdHMgbW9kZXMsIGl0IGRvZXNuJ3QuICBIZXJlIGlzIHdo
ZXJlIHlvdSBjb3VsZCBjb25zaWRlciBkb2luZyBhIGZ1bGwgaW1wbGVtZW50YXRpb24gb2YgdGhl
IE5RQiBQSEIgKGEgc2VwYXJhdGUgcXVldWUgaW4gdGhlIEJlc3QgRWZmb3J0IHRpbikuIElmIHlv
dSBjaG9vc2UgdG8gdGFrZSB0aGF0IG9uLCB0aGUgcmVjb21tZW5kYXRpb24gaXMgdG8gaW1wbGVt
ZW50IGEgdHJhZmZpYyBwcm90ZWN0aW9uIG1lY2hhbmlzbS4gIFRoaXMgd291bGQgYmUgYSByZWFs
bHkgaW50ZXJlc3RpbmcgdGVzdCBjYXNlIHRvIHNlZSB3aGV0aGVyIHlvdSB0aGluayB0aGUgZHJh
ZnQgaXMgc3VmZmljaWVudGx5IGRldGFpbGVkIGZvciB5b3UgdG8gY29tZSB1cCB3aXRoIGEgZGVz
aWduIGZvciBsaW51eC4gDQoNCllvdSBtZW50aW9uZWQgYSBQYXJ0IElJIHRvIGRpc2N1c3MgdGhl
IHZhcmlvdXMgd2FzaCBtb2Rlcy4gIEkgb25seSBzZWUgdHdvIG1vZGVzICh3YXNoL25vd2FzaCkg
YW0gSSBtaXNzaW5nIHNvbWV0aGluZz8NCg0KLUdyZWcNCg0KDQrvu79PbiAzLzE0LzIzLCA4OjAy
IEFNLCAiRGF2ZSBUYWh0IiA8ZGF2ZS50YWh0QGdtYWlsLmNvbSA8bWFpbHRvOmRhdmUudGFodEBn
bWFpbC5jb20+PiB3cm90ZToNCg0KDQpJIGhhdmUgYmVlbiBzaXR0aW5nIG9uIHRoZSBjYWtlIHJl
bGF0ZWQgcGF0Y2hlcyBmb3IgdGhpcyBmb3IgeWVhcnMNCm5vdywgYW5kIGl0IGlzIG15IGhvcGUg
dG8gZ2V0IHN1cHBvcnQgZm9yIE5RQiBpbnRvIHRoZSBuZXh0IGxpbnV4DQpyZWxlYXNlLCByZWdh
cmRsZXNzIG9mIHdoZXRoZXIgaXQgZ2V0cyB0aHJvdWdoIGxhc3QgY2FsbCBhdCB0aGlzIHRpbWUs
DQp1bmxlc3MgdGhlIHNlbGVjdGVkIGNvZGVwb2ludCBudW1iZXIgY2hhbmdlcy4gKD8pDQoNCg0K
Q2FrZSAocGxlYXNlIHNlZSB0aGUgbWFuIHBhZ2UgaGVyZToNCmh0dHBzOi8vbWFuNy5vcmcvbGlu
dXgvbWFuLXBhZ2VzL21hbjgvdGMtY2FrZS44Lmh0bWwgPGh0dHBzOi8vbWFuNy5vcmcvbGludXgv
bWFuLXBhZ2VzL21hbjgvdGMtY2FrZS44Lmh0bWw+ICkgc3VwcG9ydHMNCm11bHRpcGxlIGRpZmZz
ZXJ2IG1vZGVscy4NCg0KDQpiZXN0ZWZmb3J0IGlzIGV4YWN0bHkgdGhhdCwgYmVzdGVmZm9ydCwg
YW5kIHdpbGwgbm90IGdhaW4gTlFCIHN1cHBvcnQuDQoNCg0KVGhlIGRpZmZzZXJ2MyBpbnRlcnBy
ZXRhdGlvbiBpcyB0aGUgZGVmYXVsdCwgYW5kIGdpdmVuIHRoYXQgZmxvdw0KcXVldWluZyBoYW5k
bGVzIG1vc3Qgb2YgdGhlIE5RQi1saWtlIHByb2JsZW1zIG5hdHVyYWxseSwgYW5kIFZvaWNlDQoo
Q1M3LCBDUzYsIEVGLCBWQSwgVE9TNCkgaXMgYWxsIHRoYXQgaXMgaGFuZGxlZCB0aGVyZSB0b2Rh
eSwgSSBhbQ0KdGhpbmtpbmcgb2YgKm5vdCogZWxldmF0aW5nIE5RQiBpbnRvIHRoYXQgY2xhc3Mg
aXMgdGhlIHJpZ2h0IHRoaW5nLg0KDQoNCk5RQiBmaXRzIG5pY2VseSBpbnRvIHRoZSBkaWZmc2Vy
djQgbW9kZWwgaW4gdGhlIHZpZGVvIGNsYXNzLCBzbyBJIHdpbGwNCnB1dCBpdCB0aGVyZS4gc2lu
Y2UgY292aWQgd2UgdGVuZCB0byB1c2UgdGhlIGRpZmZzZXJ2NCBtb2RlbCBhIGxvdCB0bw0KbWFu
YWdlIHZpZGVvY29uZmVyZW5jaW5nIGJldHRlci4NCg0KDQpBcyBmb3IgdGhlIENTMC1DUzcgcHJl
Y2VkZW5jZSBtb2RlbCBpbmMgY2FrZSwgd2UgaGF2ZSBkZWNsYXJlZCB0aGF0DQpvYnNvbGV0ZSBp
biB0aGUgY29kZSwgYW5kIHdoZXJldmVyIE5RQiBmYWxscyBpbnRvIGl0LCBncmVhdC4gQW5kIHRo
ZQ0KZGlmZnNlcnY4LCBJIGRvbsK0dCBrbm93Lg0KDQoNCkFueXdheSwgZG9lcyB0aGF0IHdvcmsg
Zm9yIGV2ZXJ5b25lPw0KDQoNClBhcnQgSUkgb2YgdGhpcyB3b3VsZCBiZSBhIGRpc2N1c3Npb24g
b2YgdGhlIHZhcmlvdXMgd2FzaCBtb2RlcywgYnV0DQptZXJlbHkgZ2V0dGluZyB0aGUgcmlnaHQg
Ynl0ZSBpbnRvIHRoZSByaWdodCBsb29rdXAgdGFibGVzIGFmdGVyIGFsbA0KdGhpcyBkaXNjdXNz
aW9uLCB3b3VsZCBiZSBuaWNlLg0KDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9h
dC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

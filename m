Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD02A96DD9
	for <lists+cake@lfdr.de>; Tue, 22 Apr 2025 16:04:56 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 654703CB39;
	Tue, 22 Apr 2025 10:04:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1745330695;
	bh=Evt+4S46dugm6BUNvKylxkqINsiCBhM6PI7oBPJ0QGw=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=RcQtR/F0YZl/WSfoKh505P6Nh072IBxIMn23Ie8ng55MH2vqqQFxkgJvTd0/Nk4qM
	 CADAVH9l+WbO8uip68S9WluaLBWVxhweLSkX9faYyKmJrJI0Ytd+VfVt97f5sPHKNj
	 ZMrgwFT1jZcKEygt6RWUd1kfMioKY59p/nu6SNcYsRIVYdpGNUjHdtVPB15Lq4Rprx
	 cjgnWuC+W95HHrp+zVv8CW7FGRIwWpNTR8Ue8+bIawC8px4QeoDzRn84eFyudTUYDj
	 nIxNhBH9mXoZ7OTvimPq+UceZYfhs5omEc7xTAQkdGWqh9Ouvd+0A8/UbtHqPnHJUG
	 //CoB4xpAR2Iw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mx0b-00143702.pphosted.com (mx0b-00143702.pphosted.com
 [148.163.141.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EA16D3B29D;
 Tue, 22 Apr 2025 10:04:53 -0400 (EDT)
Received: from pps.filterd (m0184891.ppops.net [127.0.0.1])
 by mx0b-00143702.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53MDxOM5008766;
 Tue, 22 Apr 2025 10:04:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.com; h=
 cc:content-id:content-transfer-encoding:content-type:date:from
 :in-reply-to:message-id:mime-version:references:subject:to; s=
 20190412; bh=amALq6U+FQdJ7iPxtF4J3De7sA1Mw7EZ1sdEMv7z9fk=; b=2Kb
 xaC1aFE3Qz4UPOJvKxkGnPBkfmWJKZ9gpK6jr5GCLQKXhOdh+uBkcuzlSvDR41Pc
 hMUOQYqk2HEby3iPw/xTdPL6MSomraA7EkK+6l1Hv4nqw9TU8GI+PXlUIhvA7rx1
 EWVznYIKgzBikKAH+HHNCgwL8oHGYII9ZIid0fNdFZmlz6DWFaSu0Hy37NVWyqX/
 7ZpIT5iKZtFQwqLF/uZulxctPpCGNcANiusede1soP/ZgLnOgC8rq6BXt6NWtIKL
 8KTk3a0FC9PZ3MmFtQ3/sxmPtUIcGYQEsYV1PByXl1MbpLexaYb7hlB4pTJVkO/J
 ZbvzlkznH43UBLutY2Q==
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2173.outbound.protection.outlook.com [104.47.59.173])
 by mx0b-00143702.pphosted.com (PPS) with ESMTPS id 4648kgv2ar-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 22 Apr 2025 10:04:46 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Igd2yeB6PvEFKirf14kzf71Jj47EHaepq2EPm/yewWho67iimhv9FZWfw4lMAvivQQcHxVfTTq4q1ZZHW2XEPpkxf1lMfM32vw/w0TeOUI5TUHLtaMxR1H4PrX+o2bs4ydfZxWx+jZSpW4+1k9AnJqFj5MJMF5n/WP+12r+Dn7Y3wPfeJ0sIvq2LrPUJvAEZ2Or0W1gOp1kaZeMPx66m+72U3ZLV4hEYiitQTsPd3JLWXwRSAa0nJsMBO9s8onX5IU6zHUmyRetYdjwY4+m6b8l6ReUIoXPy/KUphgtvwism0mRKRELa6f1/iY/P6NWNEW3Qxh5w6ZuCr38ZxdGzTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=amALq6U+FQdJ7iPxtF4J3De7sA1Mw7EZ1sdEMv7z9fk=;
 b=wBUk4DJ8jtNwCeDkQ77PPz877k5r86W7c03QIRoohEC4obeVTGmZfJHh1C+KbIx2VjqIO9r1vjhkM3TYX4W9rrxkSs/eZy2J/cgovn0QITqCuNwiWt3/pSmp7umuDZT/At4JTSupf2XUJe63SL/HhkRRLFBJVIXRc82mz/FUwftWfYma8oiIy023b6o9hzPdZVqYMzWNvU9ZrpyyFLlXtZ7GO1ncNOJo0MR0wuqaFaiTvi/AZm8Ytjecyc8NGNkjeedQBn5+V32RWQ0pgTlOTz0tJjhk9W8CrSfrpEHpP+Xloye7j4n3uHkTg2wwpeOHsXi3d+ZPWJFaG3PKgmmTzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=comcast.com; dmarc=pass action=none header.from=comcast.com;
 dkim=pass header.d=comcast.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=comcastcorp.onmicrosoft.com; s=selector1-comcastcorp-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=amALq6U+FQdJ7iPxtF4J3De7sA1Mw7EZ1sdEMv7z9fk=;
 b=EGaJtJub5ZKu3L7IqbXjPhG/tX7n37IQ9fINjRYchGb2H2NeTXdRosacQ2Cb6FiRDeTOdlggJisbRT/dMK1sDbFhGdYbVK+jEb2Mw+c8ZxqyVaAMkWQKNG0Z5+AX3o+JwIWeP2CkxjbFSWdL9b/7+QtIjIu7fcdVHJ8WVZ0cl2g=
Received: from LV1PR11MB8852.namprd11.prod.outlook.com (2603:10b6:408:2b5::12)
 by DS0PR11MB7801.namprd11.prod.outlook.com (2603:10b6:8:f2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Tue, 22 Apr
 2025 14:04:44 +0000
Received: from LV1PR11MB8852.namprd11.prod.outlook.com
 ([fe80::3205:266d:9fa3:8f74]) by LV1PR11MB8852.namprd11.prod.outlook.com
 ([fe80::3205:266d:9fa3:8f74%4]) with mapi id 15.20.8655.033; Tue, 22 Apr 2025
 14:04:44 +0000
To: Loganaden Velvindron <loganaden@gmail.com>
Thread-Topic: =?utf-8?B?W0VYVEVSTkFMXSBSZTogW01ha2Utd2lmaS1mYXN0XSBbQ2FrZV0gW0Jsb2F0?=
 =?utf-8?B?XSBJbiBsb3ZpbmcgbWVtb3J5IG9mIERhdmUgVMOkaHQgPDM=?=
Thread-Index: AQHbs0r3tPFATp97EEyOn1Ov+8K/obOvdVmA
Date: Tue, 22 Apr 2025 14:04:43 +0000
Message-ID: <1B0111B7-7648-4729-952A-243BDC4D4DDC@comcast.com>
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
In-Reply-To: <CAOp4FwS14HN931zyDKw74GByj5=zHbH_xr5ZfGZv4dL-QPAiHw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.96.25041326
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8852:EE_|DS0PR11MB7801:EE_
x-ms-office365-filtering-correlation-id: fc2b2267-c424-4899-8d03-08dd81a6a204
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|7093399015|366016|7416014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UDh5RUp5V1lTN0UxbFlQbmN2eEx5SEFXZm0xQXpPaHRGMkpQQXhUM042M3VT?=
 =?utf-8?B?VVNqa2VLaGlOeS8zcEpsNEZGaVBNdVB3ZTJhaE04b1pZQ3JEcWtzeXNIZ08w?=
 =?utf-8?B?UzIwVng1ZVUrMXBUREpqRzU4QVVWYnUvK1p6WXlOM0I5RVNzTFMrVzl0STFo?=
 =?utf-8?B?TnVxckJIbVN5SGc1Zmk5ZThMcTVOcU5zaDFaRzZGOFFlVjVjRjUyT3VRc1hO?=
 =?utf-8?B?ZG5uSUpQRXFWYmQ2emFaR1U2eFhTUGRoKzJXa1J4L1lnaHhDTGVYaHBxM0tD?=
 =?utf-8?B?UVM1dDhaZnI4UE5QUGl6U3poOTRLMkdKSFNmYTJWTU9WQ1h5NERtNkttaW9m?=
 =?utf-8?B?Zk51S3p4YjROM0pvbWRVOGVOM2t6di9RVG41cWNlUVZjdlFzTmtvYlJLQkFo?=
 =?utf-8?B?Tkh3SS9LamhPcngrdElqOUZkQUl5OFZZRW9VZ1NjTjlneWxhbEdKOGtDRFIv?=
 =?utf-8?B?aHBuUnNTQmVjc0R4VU8xRitGVStUUVJBT0Nucnk0MVNNbHF2a1lGWjdEd1dz?=
 =?utf-8?B?N1dJNTdwckQvU0pOakNFa3hsbXRVbFB6M085ZGM3cHUxVjR1SThadDNoMnZH?=
 =?utf-8?B?Z2FQaDl1cVkyNzcvK1l4U0V3ZE41L3d0Q1VuUHEzQ2pweGROd05ZTWFmbHZa?=
 =?utf-8?B?WGZqb3hNWTg2dDhJdk93Qi9JcjF0RnlJS3RKYkR5Y0lzM1BZNUJvUE00dUNr?=
 =?utf-8?B?bE9KUEMxZVI4blRUV24wOFJvdGN3ZWR4aTdZeWVVcUZndENjdS9XR256cGll?=
 =?utf-8?B?Ky83RUpreHhQRG9pSFVjOWsrY3ZqcGJyRmdZNExNeHNFWG9aN3JYeitXZFNt?=
 =?utf-8?B?UlhJbmhmcldYbjl0bUR4STJwbzEvcDYySGljMWJObXJPd01kVWZwRk9CeGJ5?=
 =?utf-8?B?dHV5bEpzTU00c1ZjOU5Oa0E1Z3FsUEN1Tm1Ob0hLRzcyWlhXeFZQOXR2ZzZ3?=
 =?utf-8?B?ejZwTUMvUGJGVmY1NC9pZkpZbFJuWFF1UHdEeUVmcE05K0VxTFBzMW1iUnB5?=
 =?utf-8?B?cWh3VlA3b2dyT2NNTitUVjVGMFNTMHlXbGttZlh5dVZld29YNXQ3Q2R3N0pz?=
 =?utf-8?B?Y3k4OThFaTQ4QzBSM3hYN2ZWYTZURXcxd0hQaUNxNXpBTXlENXJ0Z3IzVjEz?=
 =?utf-8?B?ZXlNNW1mNzNWY2libjE1V0ZzKzkzQkZyQ0xoZGg0T2lLWkhVT2NxSTZLTGVS?=
 =?utf-8?B?TjF4WGN5RGE2NmUzbEsrV0x2MUl5RG93MUVSeHMwUVlHWmZCN01wZURMNmt6?=
 =?utf-8?B?ZGRtUjhlNkJ4LzRIa0pWME1RcnI4SkwrODl5d0g5TXhib1RSZGF1bEVPTjAy?=
 =?utf-8?B?MGpoMW5rczJ6MTBZczNaM1BrVnZXSng0SUdMU2VMZGFUVGtOQUd3T2o1ZzRH?=
 =?utf-8?B?dTJ2cXZocmgrdWROVldhRjg2aVpBb0pnVHpHKzFmbGhlMnVPTWhIaEpIcDQ0?=
 =?utf-8?B?MkNlem1oZEVVdUJOVFJoNlhCLzk4YUVqdnpMRXFvSzdtR2ZtZmZhR1ExZHU2?=
 =?utf-8?B?VWZXZGRibFk2cFBLYWlqR0dNUmw1RjlrQ3FYRks3NzZIZ085SFZCQXR5SkUw?=
 =?utf-8?B?VzJSaU1SOFgwQWVOK2J2ZHVmWHQybUsvNDNCZ0pvMlNIK05nY2JFTDVVcEwz?=
 =?utf-8?B?cEwzNmRFRG85dTlhZmU2UC81UCt1Z1JQeVpKbHdMS0YzVXREV3VPN2NMUDFq?=
 =?utf-8?B?N1F6dFlwcDNQanBOVm5JdmhLZitIUzBjb2xaWGN3dEhENlBaK3VaT2p2QnNk?=
 =?utf-8?B?WmFtM3ZJL1UyVFVwQklOUDZ2bkFrbTJxczhxalhkVnZUWGhYNE4yUXBjQ1Bz?=
 =?utf-8?B?SjV5b214TUxsSGs0UTVvRUw2d2ZGeklESUk4Sy90d2UybGk0YVZQeUpqODkr?=
 =?utf-8?B?Z1Jpd0JVbmtSMENudjlhS2ZsUldVMHNTNUFYNUMvL3VXWm5WeWJQSjgrTGpY?=
 =?utf-8?Q?RTOFhsYYvx0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8852.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(7093399015)(366016)(7416014)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ekgxN01KVS9oUjNvMER3ZVNQR0tudlowekhrNFMzSjNEWHd3RTY4cW94WkxD?=
 =?utf-8?B?U3ZTZEc1WFNKMEVhRGZiVUh4eFB6bEtuVDNKZmhLZUd4aFoxN0I3LzBwLytk?=
 =?utf-8?B?ODluWUdRZWJzS1Rsb0ZHWWw2U1ZxcVZNeE9KRmNlQ1gvbUczc0Z5Z0l5QUZ6?=
 =?utf-8?B?S0pIRThLMUd4SkIvdGJxR212eHEyWlBubWFVbjkvdHhuNUJnSStIeVhVcEY1?=
 =?utf-8?B?QmVwdS9BbFgyWEhZUkZVTWpCN0ducm43Ujdud3dQZURpajA0MWNlWnQxVU9D?=
 =?utf-8?B?bEdKTG9JLzFHN0s4S05MZHprNHptU2c2QzVra0gybFJmcG54STc5RUhZR2Jx?=
 =?utf-8?B?VE5LandKSm9YMW5UVXJoOFBuOXNHdWlBbkYySzk3YUpCZWlScGlHNW1DTFRi?=
 =?utf-8?B?NEV2U05xTWdtblVLVXBXeDIwM3FEUUwxeHB1RDVMdVRXdFhpYW5jZDdwUzNy?=
 =?utf-8?B?b2xqZFBnbkpxbGZsY1RMMUxFSUtMdm10bGJ0MDJ6d0owZnd6Z2pRYmY0ZmY4?=
 =?utf-8?B?MjQ5SXllWkVvTHlPa3QzdStuM1QyNVhnclhaR3cramt2bml6VDBOV0VxWTFQ?=
 =?utf-8?B?QWZ5ZjRncFRVOEZIbmoyWjRlWHBUVU0xZHlPaWtzaFJBQW92cUNVT2RBalpG?=
 =?utf-8?B?VFpXQ3Jka1hnSDR6L09BekdjTS9CTTJNWUFUOVVqUTlueWVEd0F5SU42Y3RP?=
 =?utf-8?B?TTJSZU9wSXM3SmJsNENBUk5KNjdyRTkvRUZwRWgyWFVrbFQ4RUY5VW5RNTJW?=
 =?utf-8?B?QUw5NUx1bUp3cHMvL0hxcGxwSmNucnFaTlRxZ1FuR1BKYTZiOVpLOExGaGV4?=
 =?utf-8?B?ZFlqdFcyTWxGeUNkNHAvb0Z5Q3Z5SVhBbzBlREdzclUwQU54dStjclJBNEVi?=
 =?utf-8?B?QllVZ2p2M05kL3ZTc1oxNXd6M01zQ0pKYllsOGtPVDd5Qkx3QThpazkvb0ZD?=
 =?utf-8?B?RTcwU2prelJxR2NobjVCK05DTDdVbnMxT3Zha3M5KzdQcGw2TmRXVElKb0ZB?=
 =?utf-8?B?YjJkaUdwRzJnSFFGRGpYV0p2eW5jc0VUTks4VlpReXZFQUdOZ0t6R0JXYW02?=
 =?utf-8?B?MHdwWXBsbjgrdkdXMiswUTFMNmI2Z0lIdkVMc0JjNVVWNDJpVG5sMUFqUEFB?=
 =?utf-8?B?QWo1MjNxWFNqWDRaeDJINjQyOVpzK2JERit5bEVJTDF4ZXBNUnBYZk96RFhB?=
 =?utf-8?B?S0dyRjRCcTd5YTJsSGQ0SUt2YWNNQStmOXo1NzUvb1lWbnBpT0djMC9ZQXNC?=
 =?utf-8?B?cWs3dnBKTlQ3VEhkV1FZcnM3MFF0TjdzQVIwUWtFaWJBeVVVRnNJOURoVzFj?=
 =?utf-8?B?Zm1obDliazVlZXRvaEY2UVY1UUpSdXZ4K3V5c0RoSmU0L2RZMFdlTmJ3S3p1?=
 =?utf-8?B?N1RSeTA2SnloZEFTNThmNFdBRSs0blF2ZmdrQ0dEcU5KNUJMS0krT3h5Q3JH?=
 =?utf-8?B?RW5CSmhVTWhwYVRuUjh4TGY5VklmYUdtTUZUWmJwdHUwUG00MkN3V3piOUgz?=
 =?utf-8?B?QW9laWhqZ0RpSENCVWNPY0FZa0JSVjc3WTFKVzNrVmNHV1hpeitUVXZtc21n?=
 =?utf-8?B?QWN0dGwyV2MwREZWdDBlczBpR2tLa1VSWnp0b2gzN0RNUGo0Zm96RjBiWU16?=
 =?utf-8?B?Y1Q0dHFyVEkyZFZXWXlsbHprUnA4bGlON1VQdk1vSWdvNVllRFdUd0lncUZ4?=
 =?utf-8?B?Q0xTeXlvVWpGSXZvZ1hTMkZMS3FOVlpxUjVCQU13SEsvZHpIczZIdEV4SnRm?=
 =?utf-8?B?cVB4YytYM3l1c3FlNXpaR3FKTmdUQ0hQcGRabHB1NUFUbWRoRzdZY3Q0Yzlu?=
 =?utf-8?B?N0lZeVFvNDd3MHUzQmcwSElLRXQ3cmdrL2NhUmRoVFpkcExUVlUyM0FUZkVi?=
 =?utf-8?B?enY0MW95OFppK3pLNHAzTmtOeVVpZFRQLzBmYXhzVVhjTk45ODB6VUhsRGl2?=
 =?utf-8?B?d1pHNm1XYUlMT1krVkh6NmQ2VkVWMmR1M3ZsVEhacWhyRFNUdkpQaUZoWVB3?=
 =?utf-8?B?WGkxUDcxaHhGUXZMcC82OUJYeTE2Vkg4dEtFbW1NbDNLcGgydE5FZmpaeHh2?=
 =?utf-8?B?SEpxN1RqTnVCdUFWdGlBUEh3UFpmckV6ckl4SjJyRTZRWmU1VHFvUjNQVDRp?=
 =?utf-8?B?d1Mvbm1PU3M0K2hVZzlDRjl6Z1RpRFV1ZFpzdHFBRGE1T3laMjhVUGtkeXFL?=
 =?utf-8?B?TW5vTE9Qck45WHRuU0cwQ21ZYzlqK1Z5OXc1SWNTWTNEWGw2NFFya0FhVDB6?=
 =?utf-8?B?ckkva1lxcTRNcmFGUGhidThBM1RRPT0=?=
Content-ID: <D1C41DA14403C449BD3E59DA34F83654@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: comcast.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8852.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc2b2267-c424-4899-8d03-08dd81a6a204
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2025 14:04:43.8755 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 906aefe9-76a7-4f65-b82d-5ec20775d5aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nsDhu/Xw3zmAgOkjz5aWBO1GWRrrLE7pA8RGFEMBESg0NCeV3ytpa5yEAVgexwM/OXDk60T1DSNxsX0UNks2ktSQPm1u1EJeWtj25d8/7Qo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7801
X-Proofpoint-GUID: 377JjNNcPYDCzf9KAiVVaRXE4w7sVLZ5
X-Authority-Analysis: v=2.4 cv=X/BSKHTe c=1 sm=1 tr=0 ts=6807a1fe cx=c_pps
 a=H8RDR50mQ1szzU+C1Tr1+Q==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=XR8D0OoHHMoA:10 a=5KLPUuaC_9wA:10 a=WaTzKpvxO2UA:10 a=1ibwJlUuAAAA:8
 a=xgBNogZXGZ9LwwvdcGAA:9 a=QEXdDO2ut3YA:10 a=EJ8iiW30K8V1E3RA9arv:22
X-Proofpoint-ORIG-GUID: 377JjNNcPYDCzf9KAiVVaRXE4w7sVLZ5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-22_07,2025-04-22_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 suspectscore=0 bulkscore=0 mlxlogscore=964 impostorscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 phishscore=0 mlxscore=0
 clxscore=1011 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504220106
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
From: "Livingood, Jason via Cake" <cake@lists.bufferbloat.net>
Reply-To: "Livingood, Jason" <jason_livingood@comcast.com>
Cc: "cerowrt-users@lists.bufferbloat.net"
 <cerowrt-users@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 libreqos <libreqos@lists.bufferbloat.net>,
 "cerowrt-commits@lists.bufferbloat.net"
 <cerowrt-commits@lists.bufferbloat.net>,
 Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 =?utf-8?B?TmV0d29yayBOZXV0cmFsaXR5IGlzIGJhY2shIExldMK0cyBtYWtlIHRoZSB0?=
 =?utf-8?Q?echnical_aspects_heard_this_time!?= <nnagain@lists.bufferbloat.net>,
 "codel-wireless@lists.bufferbloat.net" <codel-wireless@lists.bufferbloat.net>,
 "cerowrt-devel@lists.bufferbloat.net" <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 "bloat-ietf@lists.bufferbloat.net" <bloat-ietf@lists.bufferbloat.net>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 =?utf-8?B?Um9iZXJ0IENoYWPDs24=?= <robert@libreqos.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

PiBJU09DIGhhcyBvcGVuZWQgYSBub21pbmF0aW9uIGZvciB0aGUgSm9obmF0aGFuIFBvc3RlbCBh
d2FyZCwgYnV0IHRoZQ0KcGFnZSBpcyBwYXNzd29yZCBwcm90ZWN0ZWQgLi4uDQoNCldvcmtlZCBm
b3IgbWUgdy9vIGEgcGFzc3dvcmQ6IGh0dHBzOi8vd3AuYXBwcy5pbnRlcm5ldHNvY2lldHkub3Jn
L3dwL3Bvc3RlbC1hd2FyZC9ub21pbmF0aW9uLWZvcm0vDQoNCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3QKQ2FrZUBsaXN0
cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJibG9hdC5uZXQvbGlzdGluZm8v
Y2FrZQo=

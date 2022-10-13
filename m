Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4238B656D
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:18:54 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A9D673CB46;
	Mon, 29 Apr 2024 18:18:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429132;
	bh=7HziItkTDbBmnOW1lK9Oqahnz23dzzE7G+1+mM72TwQ=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=ndYqTnZn+xRW4J4S2CBEb36Fyo0rVHHyOszUEqGoCEHAXo8e3Yfk+QtnaDVKvksnC
	 ZZvkcqz32oCfraYGgJ+mujjUszkQYfRCGwSBdRDNOE313ewVah6LLrr4nq7CwB2MCJ
	 coBbVbr2gQjn8zFJlM0kLVG0MQzpYvYQNzSYl+7PzIcSGarIBzUpdtZu/+9OX8diY7
	 +mFs/4W/jGi7+DwxSvzaFvQyjp9Mn0KVwjyIhmtrwAvjXAbZUEcn7LJu9wyICG99Vp
	 fqRJEdPj3bOwxQ+tVeNQNPWqsEp7lpYlQLGlW+4scy6zE0YX3VMPiWsX3WkVmj8+eC
	 CuymmN8otNlZg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mx0a-00143702.pphosted.com (mx0a-00143702.pphosted.com
 [148.163.145.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0AB9A3B29D;
 Thu, 13 Oct 2022 13:45:15 -0400 (EDT)
Received: from pps.filterd (m0156891.ppops.net [127.0.0.1])
 by mx0a-00143702.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 29DFbPnX024656;
 Thu, 13 Oct 2022 13:45:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=20190412; bh=/ZYLppWtzvSgQlqQFl8hoNz+XoOfTVEB8VKL/C8g7b0=;
 b=knoiyBCGa0iDdM4fafUWNo96iwhn75jMMtL1tfigswexYQ0YtP0J/NwUzXi1IOTbGJ1+
 VPgdG7fcX0/vd/c0uxlDTKBuTZBu40nEaj+OtAvpebiMJ1vBc40rKx6Ey3t/Pxv6utyO
 cPDQXwJc6Tm5n2StPBOSQPTkcffd++mK3HWwSD5R+EU76XuCr/7+fVhiDe6ceVHHbXzr
 Qjy8AubdO8la6kiZ3ZdQS4ng8cuPyB7NPeGApMwfiKNTQ4qZusJ4Z4lzLgmX4gZPpL6d
 n7PW/ogAFqzk0DAey9wiEJpgxa0i86MR0xwEF/zmr3ieV1DqCjYXx9po06hoNIzBPSYb Qg== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2177.outbound.protection.outlook.com [104.47.55.177])
 by mx0a-00143702.pphosted.com (PPS) with ESMTPS id 3k64kk87nh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 13 Oct 2022 13:45:13 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EU7iS3wLKCEqgX6ZFLpXdf/etZTfWCmOn7sPX54ITVw7gDC9OkjsojFiEFQDO9iUMkA8n5VCVg+7XRXuQ1ZM1KuuSBMaa4jKeEgdHLxDt6roTsnNg+y9qlb250P/ZSMvNRvdCNRL9aQvUGieRyTDbtVlXv5bE/3GuB81WXAO6UhOAIjAsHxGjiZvSDBe/JrX0b03394AIx1/tqGph/QwZQxoV0OgZC935M1e6BJGjiM7HZcitU1wYs6zD16EDmGF0spZDX3yG5uULXtXAkukQxVJ3UfCZn3pnCa3ugUeorta4K4jWenwyfILJV0kI2lCeswrQao1AO09dW/2MPJfcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/ZYLppWtzvSgQlqQFl8hoNz+XoOfTVEB8VKL/C8g7b0=;
 b=iqWriwejCSmhzmQvO9F+yvS1vS2o67LxPFfhrIQaZtcjqIe+kAgEhThMcxt7h7SA2w1cBMk9idUa+fy8dJSah+AXTRSiG+GLg8KPwMCCFNKr9LkcgUIEXk/TGr4eBP4dQYY0sRfVZqJDKaKbCoEkalA2sylzN95qP+5d3unmuCa8dUYLG3xmBIDRPon5QJg2Ih0fhyZudyZT3rpnY1tBER9zsvvEUzaCLxFqbv/NVQsjEyJuNgxg2dNXC//pr1uYAQNjt0jTZjtITCj1DEUSJnmaWZz1tJSRhNkuqqjh2/w4WsSN8/x6jsS+QuKYLABFYhZ8mDHJa+bdLzx5CwF35Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cable.comcast.com; dmarc=pass action=none
 header.from=cable.comcast.com; dkim=pass header.d=cable.comcast.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=comcastcorp.onmicrosoft.com; s=selector1-comcastcorp-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/ZYLppWtzvSgQlqQFl8hoNz+XoOfTVEB8VKL/C8g7b0=;
 b=c/kUoEl0FUJ1LbSyk8R2OewoheBqQ24I3Pzc4oxT/YS3k0c/PbaeDQQs6uPTvFJYecVhkR/Yzg06Fnog7YHZ0b4HAyGuKfb8MtxHkC74WHzRRpSFfpEgaUWCOKmVbtgUhDOrBPrnVIKhKGlZrzbzLCdq4EscSB0maky8pxbMLDo=
Received: from MN2PR11MB3709.namprd11.prod.outlook.com (2603:10b6:208:f3::22)
 by PH7PR11MB7027.namprd11.prod.outlook.com (2603:10b6:510:20a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.19; Thu, 13 Oct
 2022 17:45:09 +0000
Received: from MN2PR11MB3709.namprd11.prod.outlook.com
 ([fe80::3206:2678:f815:536f]) by MN2PR11MB3709.namprd11.prod.outlook.com
 ([fe80::3206:2678:f815:536f%7]) with mapi id 15.20.5723.026; Thu, 13 Oct 2022
 17:45:09 +0000
To: Bob McMahon <bob.mcmahon@broadcom.com>, Rich Brown
 <richb.hanover@gmail.com>
Thread-Topic: [Bloat] [Rpm] [Make-wifi-fast] [Cake] The most wonderful video
 ever about bufferbloat
Thread-Index: AQHY3Xl1cJG61fJekkyQvuMuIAC11q4JbHoAgALYSQA=
Date: Thu, 13 Oct 2022 17:45:09 +0000
Message-ID: <DE3F60A5-A30E-452A-8F3B-3A685CCEBD88@cable.comcast.com>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
 <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
 <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no>
 <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de>
 <CAHb6LvqHNv_R2Asn944Kx91Cud5J3XSM-c+PcK8Bz19uaMDynw@mail.gmail.com>
 <q06231q2-n7qn-345s-np6r-p5717713q3po@ynat.uz>
 <CAHb6Lvqbj0MDhWvLaEk8Hbr_vZwDs1NdCj1X9Xvxp+x+Mbs0Vw@mail.gmail.com>
 <D0D4490C-061A-46DA-9592-51C3D210772F@gmail.com>
 <CAHb6Lvr-JST083ZAyyxCOS8GrhH5xoa_d+SkkB9aPEr1ijcjUQ@mail.gmail.com>
In-Reply-To: <CAHb6Lvr-JST083ZAyyxCOS8GrhH5xoa_d+SkkB9aPEr1ijcjUQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.65.22091101
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB3709:EE_|PH7PR11MB7027:EE_
x-ms-office365-filtering-correlation-id: 0d5f8438-9f59-41b8-1c5e-08daad42ac35
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gwuwv99WxbZEOC30I3eyI0kjq3n+HzxRcfNhUYm6ITatyJN19bOQ5A2S/pwkOeCqoOBB5Y+KHM4o2QCP48CnW1s0jTqo5gz5cPXpxXL83RAW4SbMjhvpOkQM/xFADNaMVA8lcmmxcTScxV7hIJ0ewR767cbr8elKgnS2h2s+Sj7jvk4l9uWwokzokoRV4QFNUBBIubn7zB+V6QjsSclQb1PDAnK1nxGGHLWvGNn7ya7tlPV8YgN6Ghi6eQD4tK7Y8uBIR4FMlq5vGOmM+l9YTNghPA+lyiGTOt97ZlHWqpxUqPmCDnttwTnSdaldhQe8DChPOYhx7E/Wioo1AkvoY3OQcfN67W/ZoAd/y/Ee0/xyHK/4yufl3uIo13OKdMOPXWWqxRAosGBiHfuZK1906j7+dqrpV6mi4wY18kGBKDEakQgjSaDFCz6oVgwZ/zugMYqf9YBZWNMgabOeuD3pfoAfzlK5WaDJ4QhQKZyhVHu63HiZo2peCbAyLBMujoKxnZJmDVOZmrdvIfRe4t5BZhe0sR1i97ZpiefYj3bBaxkyHBKMiqsXfNJ39X1RIeAcX32vJdw0ICZuwI04Z2fVYZDTXE1JD8TbKM0SxuUTETnZ1w+n8r6s7GEutmzTmW6/7cQqcwA/ppjbHN484MReFzCqx7Pi8pmftyy1ldtqsnjKdj2fsar1XY2rOEucbhpeFox2yOKqnjKeXV77t+4QU6EAWpaKd6Kffom4JyX5BxVl7h3HLyWOPmKuGWkM45p7nQqtqpKsowqJP0naY5k+P91o6YlbrEYSUojdOIEFYKI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3709.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(4636009)(39860400002)(396003)(346002)(136003)(376002)(366004)(451199015)(6512007)(2906002)(83380400001)(8936002)(478600001)(2616005)(186003)(71200400001)(6506007)(4744005)(76116006)(66556008)(64756008)(5660300002)(6486002)(316002)(54906003)(110136005)(91956017)(4326008)(33656002)(41300700001)(66946007)(66476007)(66446008)(86362001)(38070700005)(122000001)(66899015)(26005)(82960400001)(38100700002)(8676002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d3JNMFlPTzhFWXNUWXRvcTVweno1QWpkLzBpTStPaWNHVVhnRlNmR1NtdEFM?=
 =?utf-8?B?TmJtNVYrUTRqZm80SzdZZG5YQTZYalVvbWtHaUduN1lnekdPNUhyYitLTnYy?=
 =?utf-8?B?bDQ2M0NqTk9DRHZxTS9YNVBPOHNxb1RERWtjTWQxWjRBQVhGV1ZKMXJqaS91?=
 =?utf-8?B?WE9lNFlHREc5aW1GcUJaejVsVWpaYWZFWGM1VFRzR2dXTktpV1ZUZ0JDVmJ6?=
 =?utf-8?B?dHlIUDRYZS9tWTJpbEJxdDdZdWQ0akFpR24yb0ZYYnZKZDljODd6NFZPOUNi?=
 =?utf-8?B?NEN1UjRIUDc1ekRrd05wNUhQYW1sQWlSR25nTGdSZncxWjR5TUpkMWcyTDQ1?=
 =?utf-8?B?S3NrbDdNWWFjUzh4MkZUNGUveFJkek1sZzR6OWNIa0tnU0FlSVpjUHVIOVY0?=
 =?utf-8?B?UGo5NWR6VEhITGZnU0JjeG1HRVBIMEhOYko2ZjFGa3ZDZ3JtUS9SSnh6Nisw?=
 =?utf-8?B?UHNZM2EzOEloL3JKaU8yNGgzdU5vQzlqZUNza0UvUWNHeHhpR3UyK01wZlJL?=
 =?utf-8?B?TXJyVEZ3RlhpNEE4MkdmYmFQMDFKd1NDUm80dGlXVzVTU1VCZHBwd2VZeWFz?=
 =?utf-8?B?RGVBV1p6c2FFWnpnV2Y4TmtGVlJoWDM2RURsTmJoTWNxZGIyZ0NFSFM0QUFC?=
 =?utf-8?B?ajJnUXdZdnQvNTR0c0pOSk5TYzNHN05OdlJVaEZSSHgzSm1lemlWL3FiYnlp?=
 =?utf-8?B?RzNNWUZ2MUNrOFVmb015NUFZNmtrZ2w2VHREcHdNSnVjc2tlT0k1cTV3KzVr?=
 =?utf-8?B?bkpaOUJwZXF0OXRkVHNzNGNJYUtQTkdZb25sbUoxLzFpNDhiV3lSeWdhMW8r?=
 =?utf-8?B?anExM0hxTnBteTNxbnY3QVlGVllQVzBhdy9mTEc4MXd2NUpXSmU2TmlJSHN3?=
 =?utf-8?B?MWIrNjNtK3VOcVlvRUNHeUJESGFVVWxSR2J1VUR3Ulhjbys4bjBRQ0ZyVTll?=
 =?utf-8?B?ZFFVOHlxZDFiMVo4SG04YXZkekp2c1YwV3Z4dWVWWCsxczl5NUgzU3NseTNF?=
 =?utf-8?B?UW5uT1JBd0tmUWYwSTlxaWdjYXpNckc0Tk5VdWtDR3psN09iSTBBWVpPMC9h?=
 =?utf-8?B?RnJzVE1wbXhmN0laNjE3eXltdUpPWDhhc0Z1cVMrVFMzd3I1bUcyRU40OHR6?=
 =?utf-8?B?UUxERzErb3QvenJnYU5PV20xWDhkVTJGRDZ4V3F2Zm1US3RkVHNVcnZjcTg4?=
 =?utf-8?B?cDFDUkxraTRhSWloblFEVitmZVpZUC81SDZQVDd5Tmx0dUN4N1ZXaVdlN3R0?=
 =?utf-8?B?WmtsQUJiZGt2TDhOQTBEWUk5M1Erc2hHdGtFNXNBc0NTemxoY2xpa2paSCtO?=
 =?utf-8?B?SGkzdzFZbFN5RUZPTlV3UmhBdys3RjJ0MTZkWDhidmVreEE3Ti9NSHJWbVZQ?=
 =?utf-8?B?emE4M3lGcXhWMU9XRDh2N2hRWEtvTERxTHJIS1ZEYjRpVWdrWXRDckZLSm9k?=
 =?utf-8?B?TGZWVmlXc0lQNWxHRUIyMmpqb296ZEthNFlmS0Nqck1Tc2VYazI3bzNzeXRY?=
 =?utf-8?B?bWFtTzNoUWFtS0RlN1BBanVGS1NiVS9jZmtlVDQxU0NhdEdMVXBieDZVV2xC?=
 =?utf-8?B?V0hTbWRKc0VFVTA0dTRRVmZzekVLdTFIbzZFR1lxMnVkU0hRT01DTmNvcjky?=
 =?utf-8?B?TktKc04rMU0vY0djdnN0TzdQd3A4V2VWbkIza2o4VlF1S05kNjFKOU1rMW40?=
 =?utf-8?B?dWlaZ1Y0bk9VMUhsbG9KUnEvZVZRT1ZjdnFLWjFQZWRTVHRpK3g4ZytGQ2FS?=
 =?utf-8?B?bHV1OEdZNEJqNVVxdVJyS24yM0Z2dGVTeE1nd0NzNWJkQUxVYmxqT3lrd0tk?=
 =?utf-8?B?azFZSWljWFd4Q3JNR3NnY2VBaHYvdFJYSzZpS25TdlhJWG4yUk5aM21YWFVF?=
 =?utf-8?B?Z1doWVRUUy9lTHFCSk40UXlrcVU3L0cwV2QrOW0yWndTUFVNc00xL21pcmt6?=
 =?utf-8?B?VFNmTDRLYmM4aEpBZDc5WmZNbDZWcDF6dzZTWjRTTXQraStCYnJ0ZVpSTUxG?=
 =?utf-8?B?UDN0eWcvUFdsOHpITENVVnVjZzI3bExHS0NzRW5udUFBTUt0dDFqT3Q5ZlVw?=
 =?utf-8?B?ZTFaNWNlNGdGT0w2NE9MSmZWNm1tdCtJaUpCMWUyRkk4dmVyMXh0V1JYWHJm?=
 =?utf-8?B?WHh5ekpCUVF2S2llOG5mYjAraWZIVVJ0THVUNm9hZFMwRDJLS09uVG9oK0R2?=
 =?utf-8?Q?BIsQul4fbIX3bQc1PO247Tk=3D?=
MIME-Version: 1.0
X-OriginatorOrg: cable.comcast.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3709.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d5f8438-9f59-41b8-1c5e-08daad42ac35
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2022 17:45:09.4798 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 906aefe9-76a7-4f65-b82d-5ec20775d5aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6eQfiCPXCgMVrRxUYjqNCXTHjet5EjnsO/qF2yczAXy2A7aY+3YDut7M5AwwAHlfrdDHUKPUsifaEEoCmiELmr4nDO1kVTGfarykKZJuBCU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7027
X-Proofpoint-GUID: MjFEiRSz1Cl-z3gKcJStOqqybFWppgGe
X-Proofpoint-ORIG-GUID: MjFEiRSz1Cl-z3gKcJStOqqybFWppgGe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-10-13_08,2022-10-13_01,2022-06-22_01
X-Proofpoint-Spam-Reason: safe
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: Re: [Cake] [Bloat] [Rpm] [Make-wifi-fast] The most wonderful video
 ever about bufferbloat
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
Reply-To: "Livingood, Jason" <Jason_Livingood@comcast.com>
Cc: Cake List <cake@lists.bufferbloat.net>, Rpm <rpm@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============6810503392542099573=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6810503392542099573==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DE3F60A5A30E452A8F3B3A685CCEBD88cablecomcastcom_"

--_000_DE3F60A5A30E452A8F3B3A685CCEBD88cablecomcastcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBCZXR0ZXIgaXMgdGhhdCBuZXR3b3JrIGVuZ2luZWVycyAiZGVzaWduIGJsb2F0IG91dCIgZnJv
bSB0aGUgYmVnaW5uaW5nIHN0YXJ0aW5nIGJ5IHByb3Blcmx5IHNpemluZyBxdWV1ZXMgdG8gc2Vy
dmljZSBqaXR0ZXIsIGFuZCBmb3IgV2lGaSwgdG8gYWxzbyBlbmFibGUgYWdncmVnYXRpb24gdGVj
aG5pcXVlcyB0aGF0IG1pbmltaXplIFRYT1AgY29uc3VtcHRpb24uDQoNCk1heWJlIOKAkyBsaWtl
IOKAmHNlY3VyaXR5IGJ5IGRlc2lnbuKAmSBhbmQg4oCYcHJpdmFjeSBieSBkZXNpZ27igJkg4oCT
IHdlIG5lZWQg4oCYbG93IGxhdGVuY3kgYnkgZGVzaWdu4oCZIGZvciBuZXR3b3JrIGVuZ2luZWVy
cyEgOy0pDQoNCkpMDQoNCg==

--_000_DE3F60A5A30E452A8F3B3A685CCEBD88cablecomcastcom_
Content-Type: text/html; charset="utf-8"
Content-ID: <036A86AD288BE8469EAEBAAA8EE71D28@namprd11.prod.outlook.com>
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
IDE1IDUgMiAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OiJUaW1lcyBO
ZXcgUm9tYW4gXChCb2R5IENTXCkiOw0KCXBhbm9zZS0xOjIgMTEgNiA0IDIgMiAyIDIgMiA0O30N
Ci8qIFN0eWxlIERlZmluaXRpb25zICovDQpwLk1zb05vcm1hbCwgbGkuTXNvTm9ybWFsLCBkaXYu
TXNvTm9ybWFsDQoJe21hcmdpbjowaW47DQoJZm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWls
eToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQpzcGFuLkVtYWlsU3R5bGUxOA0KCXttc28tc3R5bGUt
dHlwZTpwZXJzb25hbC1yZXBseTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsN
Cgljb2xvcjp3aW5kb3d0ZXh0O30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4
cG9ydC1vbmx5Ow0KCWZvbnQtc2l6ZToxMC4wcHQ7fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3Np
emU6OC41aW4gMTEuMGluOw0KCW1hcmdpbjoxLjBpbiAxLjBpbiAxLjBpbiAxLjBpbjt9DQpkaXYu
V29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+DQo8L2hlYWQ+
DQo8Ym9keSBsYW5nPSJFTi1VUyIgbGluaz0iYmx1ZSIgdmxpbms9InB1cnBsZSIgc3R5bGU9Indv
cmQtd3JhcDpicmVhay13b3JkIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8ZGl2Pg0K
PGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTIu
MHB0Ij4mZ3Q7IDwvc3Bhbj48L2I+QmV0dGVyIGlzIHRoYXQgbmV0d29yayBlbmdpbmVlcnMgJnF1
b3Q7ZGVzaWduIGJsb2F0IG91dCZxdW90OyBmcm9tIHRoZSBiZWdpbm5pbmcgc3RhcnRpbmcgYnkg
cHJvcGVybHkgc2l6aW5nIHF1ZXVlcyB0byBzZXJ2aWNlIGppdHRlciwgYW5kIGZvciBXaUZpLCB0
byBhbHNvIGVuYWJsZSZuYnNwO2FnZ3JlZ2F0aW9uJm5ic3A7dGVjaG5pcXVlcyB0aGF0IG1pbmlt
aXplDQogVFhPUCBjb25zdW1wdGlvbi48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTQuMHB0Ij48bzpwPiZuYnNwOzwvbzpwPjwvc3Bh
bj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjE0LjBw
dCI+TWF5YmUg4oCTIGxpa2Ug4oCYc2VjdXJpdHkgYnkgZGVzaWdu4oCZIGFuZCDigJhwcml2YWN5
IGJ5IGRlc2lnbuKAmSDigJMgd2UgbmVlZCDigJhsb3cgbGF0ZW5jeSBieSBkZXNpZ27igJkgZm9y
IG5ldHdvcmsgZW5naW5lZXJzISA7LSk8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjE0LjBwdCI+PG86cD4mbmJzcDs8L286
cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6
ZToxNC4wcHQiPkpMPG86cD48L286cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2JvZHk+DQo8
L2h0bWw+DQo=

--_000_DE3F60A5A30E452A8F3B3A685CCEBD88cablecomcastcom_--

--===============6810503392542099573==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6810503392542099573==--

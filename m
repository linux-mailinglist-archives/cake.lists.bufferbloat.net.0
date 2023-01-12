Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9409F8B658B
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:31 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3389C3CC42;
	Mon, 29 Apr 2024 18:18:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429135;
	bh=unz2dtvZGf3+RIH61ngCfY7jIeoHLyigw5itRfLod10=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=K2LhQtMpj76Fj8TFd+SwmDU36GoJLj9qb2FReE33zqQI1NhLPeC3VjAasOQBE1rlX
	 Pw/dyYsvETpBs4EotUCmOIApV6ZMtw2aaC020HMH1U0Q5ma0iYN6+uHj96V/OfwgzH
	 kLOrmWQv7w3O3lodbqgPWGeZBWsjPmQ9gDQ+wrGKOykUn3VkGR37eujmLCpUa3criu
	 glaSbivubmsNbFICD3UmBb1eh0ol0H3Bx+nPLinMjgx5623D9x8cSjX8Qxns4Q9uN/
	 2OjQVsEf+S0bkhMtTwqiPlQtBo5YmEuZB57LieHK5RaYkAlBii2mwGLL+n1y23mQ0h
	 mx32El3c5hDLg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mx0a-00191d01.pphosted.com (mx0a-00191d01.pphosted.com
 [67.231.149.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BCDCC3B2A4;
 Thu, 12 Jan 2023 12:43:11 -0500 (EST)
Received: from pps.filterd (m0288872.ppops.net [127.0.0.1])
 by m0288872.ppops.net-00191d01. (8.17.1.5/8.17.1.5) with ESMTP id
 30CHLQCl026713; Thu, 12 Jan 2023 12:43:07 -0500
Received: from alpi155.enaf.aldc.att.com (sbcsmtp7.sbc.com [144.160.229.24])
 by m0288872.ppops.net-00191d01. (PPS) with ESMTPS id 3n2m09p64p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 12 Jan 2023 12:43:07 -0500
Received: from enaf.aldc.att.com (localhost [127.0.0.1])
 by alpi155.enaf.aldc.att.com (8.14.5/8.14.5) with ESMTP id 30CHh6WL001688;
 Thu, 12 Jan 2023 12:43:06 -0500
Received: from zlp27129.vci.att.com (zlp27129.vci.att.com [135.66.87.42])
 by alpi155.enaf.aldc.att.com (8.14.5/8.14.5) with ESMTP id 30CHh0TW001607
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 12 Jan 2023 12:43:01 -0500
Received: from zlp27129.vci.att.com (zlp27129.vci.att.com [127.0.0.1])
 by zlp27129.vci.att.com (Service) with ESMTP id 96BE4400B577;
 Thu, 12 Jan 2023 17:43:00 +0000 (GMT)
Received: from MISOUT7MSGEX2CC.ITServices.sbc.com (unknown [135.66.184.218])
 by zlp27129.vci.att.com (Service) with ESMTP id 5F2DA400B575;
 Thu, 12 Jan 2023 17:43:00 +0000 (GMT)
Received: from MISOUT7MSGEX2CA.ITServices.sbc.com (135.66.184.193) by
 MISOUT7MSGEX2CC.ITServices.sbc.com (135.66.184.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 12:43:00 -0500
Received: from MISOUT7MSGETA02.tmg.ad.att.com (144.160.12.220) by
 MISOUT7MSGEX2CA.ITServices.sbc.com (135.66.184.193) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 12 Jan 2023 12:43:00 -0500
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgeso.exch.att.com (144.160.12.220) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 12 Jan 2023 12:42:46 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U3gbYlx4zHSMFMDdTvHZvDAzKz7rcU05TB/YR2LBpNaeU5fGLi6w/fGsgeYoGhYFz752XB/WnmNxPiM4podp1EazwJ8/SETYW7Fp//cXZpNO5nDvAYO9Ch1STd5k17s/3k9ZjMufYFWYh2pkHmx6xyCoSQe83nK0sis+iZ3nRW6AX+RLwBkQCSAl9Q3uBD7WATw1etlXtEJSTwyimhGVBnqSDEeeaRvAHZ40UMwtERUvDTmZEN7RU30YkPX2iIThGKOoPApBbOXZ2oKc7APMnAzeRUA6LY+BTgCFv4mtqmD3dNwe/vyn1KBpWBSN2xUc50au9wBFEV61PGjUoo2IQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wbML7IPZnGuPa7zcHuEo2rzPHiP5DCO7+cInkTBd0q4=;
 b=nRZIaG6K1OOHF+3kQzC0F8agnHIdjKjitgsdPvsFTgZXnZoZl9x254khH+c1kQpBiPCwAY86wkE4nYKHYsebjOxHuZGYWabd6Zw8eeg0wlm4ttn4zcPnQbpV7zFbzV7asLxZoTnZTitqpgXRIFOlX3PPc1BPuu6g3zcrlG/vRDGbx+8wX5xfd71THbgNiWjFQQwSofkX1cPWfVu9eIglN0MoGiBnF2hFpKmEAcyNFWUmNfJSjLUXQRP56VPcSovMMzP+mCgsiQCvC761tzan3XrKPj9+UG3rEVNcn0zdg1DPb5SoATYg32Ac9qo1rfqWpcsM16fbVg6eHSe0pkYukg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=att.com; dmarc=pass action=none header.from=att.com; dkim=pass
 header.d=att.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=att.onmicrosoft.com;
 s=selector2-att-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wbML7IPZnGuPa7zcHuEo2rzPHiP5DCO7+cInkTBd0q4=;
 b=VtHt/gm7KJhBz9N9vMV12tpGQIBnox+UB3dxrP1GX8LmiI5fSWMFYNkgDKzrIQdzDCUswjkUdT7+pf98YtbTx5liVxzvneQWYEtWjfyrXSSWXvwoGagwDRVdBhGr0N/KGJ253UYexlqgdTEcrni8ulh0/VCI5n0itucqwn0amqw=
Received: from CH0PR02MB7980.namprd02.prod.outlook.com (2603:10b6:610:105::17)
 by SN4PR0201MB8728.namprd02.prod.outlook.com (2603:10b6:806:1eb::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Thu, 12 Jan
 2023 17:42:42 +0000
Received: from CH0PR02MB7980.namprd02.prod.outlook.com
 ([fe80::a583:7742:9ba8:99dd]) by CH0PR02MB7980.namprd02.prod.outlook.com
 ([fe80::a583:7742:9ba8:99dd%3]) with mapi id 15.20.5986.018; Thu, 12 Jan 2023
 17:42:42 +0000
To: Dave Taht <dave.taht@gmail.com>, "Luis A. Cornejo"
 <luis.a.cornejo@gmail.com>
Thread-Topic: [Bloat] [Rpm] [Starlink] [LibreQoS] the grinch meets
 cloudflare'schristmas present
Thread-Index: AQHZJay1J/kGBHLlk0muBekulcgXBK6a8v+AgAAC6oCAABhaYA==
Date: Thu, 12 Jan 2023 17:42:42 +0000
Message-ID: <CH0PR02MB79800FF2E40CE037D6802D71D3FD9@CH0PR02MB7980.namprd02.prod.outlook.com>
References: <CAA93jw4sbPeZ42eTLQzPmg_-viBBtbdQogAMgMNndoEHjY5UNA@mail.gmail.com>
 <CH0PR02MB79809552F1D5CEDB832A8590D3FB9@CH0PR02MB7980.namprd02.prod.outlook.com>
 <fa20576f88b9a1880df67417bea48ba6@rjmcmahon.com>
 <89D796E75967416B9723211C183A8396@SRA6>
 <a082b2436e6ba7892d2de8e0dfcc5acd@rjmcmahon.com>
 <3696AEA5409D4303ABCBC439727A5E40@SRA6>
 <CAKJdXWBb0VxSSoGAQTe3BXFLXCHd6NSspRnXd1frK2f66SLiUw@mail.gmail.com>
 <CAA93jw6B_9-WE9EEFuac+FAH-2dcULk=_3i_HfhCSVSOxyM7Eg@mail.gmail.com>
 <CA+Ld8r8hR8KF35Yv7A3hb1QvC9v9ka2Nh2J=HEm0XhPfvAAcag@mail.gmail.com>
 <CAKJdXWC+aEy1b3vB-FFd+tnfT+Ni5O9bZ+p4kkhj-FzMPVGGcQ@mail.gmail.com>
 <CAA93jw4DcBhA8CevRQoMbzjO-3Jt+emr+xvnJ-hUGkT+n0KJzg@mail.gmail.com>
In-Reply-To: <CAA93jw4DcBhA8CevRQoMbzjO-3Jt+emr+xvnJ-hUGkT+n0KJzg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR02MB7980:EE_|SN4PR0201MB8728:EE_
x-ms-office365-filtering-correlation-id: 6ddef7fb-e596-423f-f234-08daf4c4684c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jGGPhB/Vi7DFLMqfPgUNB1+jT3pX9r3DJCKjHq65wD6Twq24WF98oC1Sp8eRzlCIB00QfwkjjHnzLMqx6hv+3pdhTnRWO+uaUU0P6uRqrqx5Mdy7ByAqQfOPlaUUN0He41pR8kOXbcR85WQhXpBcPdO5VLntaoIVxbgUW4HkvcsyLk6ueFkDcpTTiwdBCqp/K1oBdVIP5ZN04gzzLLWEYL1ztEB7Np/D6eLj+I3bwaTnkr+NFLRD8au9Zax1NgQKdqhn8AFtaxfriwpsYWLlGSxgZU6yQlUhZk1qEzAq9ABy/tyqXn97Mu8MhThon3X98rjhhQ5/5GUAN5ZpUV3XDu6E8l/0KNMzhw578Mli7EPBuTG+Nta7B3c0aYBx6s+04gktfpJPxSFipO+DQRG826v+VzWXL5PKgXYhYJJa1Efl33IwoKawing37sLFdXuzfsYuQm4V34+zkcmYUEWuHX1aIarUYcVSPzvOVtvFNAOLGgJqTopnU9YEBLdTIiAHrwNnc+s6aCJybH+R7MQOdH5NjAiBwo8LUL3cRrOfnHlWbdrdFpHounbeL0xBh5CVPvELt3r8L13DdOY3B9WGM9jlXRAthbIo2Z2h1mfSFyPMufD7ezuFjOzYK639BBgVxjZfOkSDP8tisZWkW5tUNIU0V22JI+6yBWs+KoQaZ06nMQembMTgPUoq17JBQrEWJpzkiZ4ufOoHA5ckY7aZ+kKAgdOAxkp26lu0+G7gc9U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR02MB7980.namprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(6029001)(4636009)(39860400002)(346002)(376002)(136003)(396003)(366004)(451199015)(38070700005)(86362001)(110136005)(83380400001)(76116006)(66446008)(66946007)(4326008)(66556008)(8676002)(54906003)(66476007)(41300700001)(122000001)(82960400001)(38100700002)(33656002)(53546011)(186003)(6506007)(26005)(82202003)(64756008)(71200400001)(52536014)(5660300002)(316002)(8936002)(2906002)(478600001)(4744005)(7696005)(55016003)(9686003)(151773002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VHdNemNmMHpTMzdHcXR3YVhteUR2bzJTcklzRWR6MVdhZXV0M2ZmeEpyRXQz?=
 =?utf-8?B?RGQrVk43akZUWnJnd3ZmOWpsVnhQbHZ1Sk4rZlJiQ0FWYkZjMktVSFBNRVFo?=
 =?utf-8?B?WlE0b1o5Z2tFZlYyUzZEenl6MnAwdkJVZ0xuSEtndlhaZDl0ZDBDd3RxL1d6?=
 =?utf-8?B?NEFNYnRkTzRRL2k5a0w0b1JwOW1IWEZKUXp6MzlnVjVvWkhnb085ZnFhdkpa?=
 =?utf-8?B?MEgyeG1qbmRNb0Y3dlp2ZWwyU1B6RDlRTkhhU1BZLzRNUlA1MkdqZXNoUER4?=
 =?utf-8?B?SmlYazFvY2NoUHBWcC9sN0phMjJBdnhsMlJvdVhGTEhtMUNjYm13dVVOYzdY?=
 =?utf-8?B?K0NtWS92MmttWkVHcTF5dmttbzRQZ2w3WDNvc1NFbU9RSlhOSjZBQ2JRQWQz?=
 =?utf-8?B?YnovdTAwRndmTFRsb1RFdTY0cy9TengvQTMwZjhyS1cvSExRZjNQakV2bkdH?=
 =?utf-8?B?VDlQZnptbkRXMlNUbVNVNkdrU0tTM2pCYWYzd29UZmQzcVRJUC9DRUhndHYr?=
 =?utf-8?B?MjUrdXBNUTZ1SjZLU1pUb0R4UVJ5TmRyR25mcFBlN3FFUkFsWVpsanFzMGhm?=
 =?utf-8?B?K24rZm90Qit2TXJrTFh6Y1FJVjRkdFlKaERYQ3hiSnNtV0hGbmtISFFBUmxY?=
 =?utf-8?B?dFBidmxSMUk0cTQwbkRGSG1wcm1ENVhkcjg3citqSHBHK01BV2Nza3YxNTdL?=
 =?utf-8?B?b0hKRWlLcTQ5azcvdFRqK29MVmxaME1DTUhnSkxlN1hyV0Q2eCtqOVZFS0Zm?=
 =?utf-8?B?TERRUlRuRWgxRSswQ2VaQTRIVUpVSGhiWHo1VWJGNEFKbTZFR09Ib09oZ0Qx?=
 =?utf-8?B?MkNYQ2ZSRm93VG94SXNRa1VuMlMzSURPN1kwOEczOGVWZjFFaUpxUUVkT25i?=
 =?utf-8?B?RFAwUk1hc2JrY0xMUW02cmM2YmpMR0xra0NNTm5DMFZ6VXdDcTVON0NmME02?=
 =?utf-8?B?cittT3g2Q2x2TTlSbXVLVGFoSGppSzVrakxFWDlaQTlUQ3d2MC94RGFmbGRO?=
 =?utf-8?B?MGYzVGQwWTI0UGdBb0JYM0NVMTRqYXdDeFpCb2puMlRodEd5ZnFzRDdqd2NU?=
 =?utf-8?B?eXRPMmQxL0NlM1l3eTF1KzBOS0NXREwvRCs1QlB1Yk5nNWxycHdiSWE3MEhi?=
 =?utf-8?B?QW0yWEVEMlVuWktmcWhpYWsrWmR1TjdvRDhIeVBLN09lSk5jeDBQZXowM2dJ?=
 =?utf-8?B?MjZyYytPdTduaytZY0duWEpKV2VWeXZCMUxrd0dnczVjSmZOVktKWCtNSVpt?=
 =?utf-8?B?MUx1NHFWNzcvbnVpSUNUSGNsdnZ4aGJ4Ylp3YWdIL0RqbkZWOXJMNElkVGZy?=
 =?utf-8?B?TjFqbHVBenR2V0k4ZThGdytKN2NyY3FRL1IvbXJMQVZNbE5JWjlVRXlUUnFz?=
 =?utf-8?B?Y3pYU25vWmtZbzc0Z0wyT0lrSmdVUGFIWWExdTg3endLWlRuYVNha1l6a2VI?=
 =?utf-8?B?L3M0ZFFiYXBLeWpzMVRSS2doSkdEUE1sampDQkdJbXdPSWVEeFY5b0h3b2Uv?=
 =?utf-8?B?SFYxLytNaXRFQXY3dlg1cHY2T3RDbDBHNzU5WWE3b0dWTzFaR1UveEVFT21y?=
 =?utf-8?B?bTdkVVNzMENDUm1rVUpWRmdOb0pmWVZkeE1pZ0RsNWx0dWthRU5zazIrYUxY?=
 =?utf-8?B?VFNFOGdZcFVBR1Y5a2dCMnFydE4ybEE4MHpMSXRtYkN0U1lVWi9yQ01xWFo1?=
 =?utf-8?B?ZmFZdWQweGlJWEhkZW1IUThDVFROR2ZmbUppc1NmeHJFQ2IzQ1lLdjM2S1p6?=
 =?utf-8?B?K0xzWVJwQ210bFBucTlEN3VHdkFBa3l1aFQ0aUJFVm9aMzJFaWUyNzZnU3Y4?=
 =?utf-8?B?b2orTk9tUDFYM2dHaHQ4WXAwd3R2cHV2akN5SXJuSUlIc3BUQXRPTFdWamFZ?=
 =?utf-8?B?aE44ektKTHdwdmFFSXJROVJLbmQyOEpiY0dGUXhaMTdWWE9XVVhYNlR0OW16?=
 =?utf-8?B?c1VpdEdsSENyaFRkMHA1MjJSbVNRQWZHQUpNajI4YjZ1eHZUTkE5dm15WGtn?=
 =?utf-8?B?VTZXZFZyYWJleU1Wc3ljS3M1dUJMN0lIQ216V3FUNisrTUlYeXJCMVdsd1VU?=
 =?utf-8?B?ekZhTVU3bERoZ1AwbjZhQ0ZpMlFpOU91N25VUXJsemZwcTNPMk5TOVI3emxM?=
 =?utf-8?Q?Ah2M=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR02MB7980.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ddef7fb-e596-423f-f234-08daf4c4684c
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2023 17:42:42.6518 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e741d71c-c6b6-47b0-803c-0f3b32b07556
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A+j9EOPNLBFHBy42eg7ciGzb1VgDWfdyRLZ87uKEalCZKAm7ddCPCAoAx6gkFCCm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR0201MB8728
X-TM-SNTS-SMTP: D5A946059A1DA84A6EB0148A8C39DF47A41FCDFBB3473B689CE3CE75151BFFF62
X-Proofpoint-ORIG-GUID: QKApebeah4Lg81SKPWPW3d11ic-ICsof
X-Proofpoint-GUID: QKApebeah4Lg81SKPWPW3d11ic-ICsof
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2023-01-12_10,2023-01-12_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
 score=0 phishscore=0
 impostorscore=0 mlxscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 bulkscore=0 mlxlogscore=807 adultscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2212070000 definitions=main-2301120128
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: Re: [Cake] [Bloat] [Rpm] [Starlink] [LibreQoS] the grinch meets
 cloudflare'schristmas present
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
From: "MORTON JR., AL via Cake" <cake@lists.bufferbloat.net>
Reply-To: "MORTON JR., AL" <acmorton@att.com>
Cc: Rpm <rpm@lists.bufferbloat.net>, IETF IPPM
 WG <ippm@ietf.org>, libreqos <libreqos@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>,
 Jay Moran <jay@tp.org>, "dickroy@alum.mit.edu" <dickroy@alum.mit.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2ZSBhbmQgTHVpcywNCg0KRG8geW91IGtub3cgaWYgYW55IG9mIHRoZXNlIHRvb2xzIGFyZSB1
c2luZyB+cmFuZG9tIHBheWxvYWRzLCB0byBkZWZlYXQgY29tcHJlc3Npb24/DQoNClVEUFNUIGhh
cyBhIENMSSBvcHRpb246DQoobSkgICAgLVggICAgICAgICAgIFJhbmRvbWl6ZSBkYXRhZ3JhbSBw
YXlsb2FkIChlbHNlIHplcm9lcykNCg0KV2hlbiBJIHVzZWQgdGhpcyBvcHRpb24gdGVzdGluZyBz
aGlwYm9hcmQgc2F0ZWxsaXRlIGFjY2VzcywgZG93bmxvYWQgd2FzIGFib3V0IDExNWticHMuDQoN
CkFsDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRGF2ZSBUYWh0IDxk
YXZlLnRhaHRAZ21haWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgSmFudWFyeSAxMiwgMjAyMyAx
MToxMiBBTQ0KPiBUbzogTHVpcyBBLiBDb3JuZWpvIDxsdWlzLmEuY29ybmVqb0BnbWFpbC5jb20+
DQo+IENjOiBKYXkgTW9yYW4gPGpheUB0cC5vcmc+OyBDYWtlIExpc3QgPGNha2VAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0PjsgSUVURiBJUFBNDQo+IFdHIDxpcHBtQGlldGYub3JnPjsgTU9SVE9OIEpS
LiwgQUwgPGFjbW9ydG9uQGF0dC5jb20+OyBScG0NCj4gPHJwbUBsaXN0cy5idWZmZXJibG9hdC5u
ZXQ+OyBibG9hdCA8YmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0PjsNCj4gZGlja3JveUBhbHVt
Lm1pdC5lZHU7IGxpYnJlcW9zIDxsaWJyZXFvc0BsaXN0cy5idWZmZXJibG9hdC5uZXQ+DQo+IFN1
YmplY3Q6IFJlOiBbQmxvYXRdIFtScG1dIFtTdGFybGlua10gW0xpYnJlUW9TXSB0aGUgZ3JpbmNo
IG1lZXRzDQo+IGNsb3VkZmxhcmUnc2NocmlzdG1hcyBwcmVzZW50DQo+IA0KPiBFaXRoZXIgc3Rh
cmxpbmsgaGFzIHZhc3RseSBpbXByb3ZlZCwgb3IgdGhlIHRlc3QgaXMgd2F5IG9mZiBpbiB0aGlz
IGNhc2UuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpD
YWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

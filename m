Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E21AD0092
	for <lists+cake@lfdr.de>; Fri,  6 Jun 2025 12:41:37 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 99B6D3D595;
	Fri,  6 Jun 2025 06:41:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1749206460;
	bh=c+LwSDp2utiHC1/DuYuw6e6LLsJXQqemOKAxIbMeyoI=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=BdRy2G9cE5rzFKIyh7gTtIxZxoya9Qb0LjXpqM5hqB3hxmOoMN7wzaydVwQQ3K7UV
	 ut3EJDqGXUXLihqkwOd268xmUK09GSkxSmYREnYDx1vF26//GY2SMclEwLAgpiaNdW
	 pMkCArilDEzXkuhs1aTsxZQnb1U3aGV7Wka/PifsHVCSjVZornsRspQ/9KZ9eGorpm
	 L4CyBjH0vFlN3E8l6V3JowZV7b0xPSkQyMSh1QErGpIcC8jjXxhcRTBjmHGLFL8dvZ
	 rFSF3xMHicTFszqD1M+k5GIGIxspBQNDdwPz/smdB/HRyGqkiDuSwEzwXu+QTbVlVZ
	 P5ismkPrlObgQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mx0a-00559701.pphosted.com (mx0a-00559701.pphosted.com
 [205.220.164.59])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C0D893B2A4;
 Wed,  2 Apr 2025 17:29:32 -0400 (EDT)
Received: from pps.filterd (m0210272.ppops.net [127.0.0.1])
 by mx0a-00559701.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 532LET5A020541;
 Wed, 2 Apr 2025 21:29:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=csudh.edu; h=cc
 :content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=selector1; bh=kjNrVBrnWoDi8aIjUzhaalyM
 i6+PKvhBRcH7fNt16tc=; b=jP8PemOlgq5b4XU0dcmjfLbDDN7DWHp+S999VoyC
 UZiPY/61kNxv5dWmfopLhrHkAotPrFJx6N2GIqhw0JimMTwpM6ixjRRNk41/m3p6
 xz7rds+DQngPbCxfsFDaoYDy/zH7btv5d17H9lhlnDzMPPzhJI8tXmF3kMku3cAs
 FrqCOfFGqH+jq9tihBQeaefb0PhHWyGZHIRVGI6WS1go9XtOVybXBY5izBqgy8cQ
 dWsAANr23Cq41aygHXwUv7+9/iiMGRtufkSSbJvgSMLtThHzbexwOCQRnfkn+mVT
 eIBVYf+bkmN0g5xovSzENCoUAnVvQ93uEFYOODs0FcLIZA==
Received: from ch5pr02cu005.outbound.protection.outlook.com
 (mail-northcentralusazlp17012055.outbound.protection.outlook.com
 [40.93.20.55])
 by mx0a-00559701.pphosted.com (PPS) with ESMTPS id 45scyk81c8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 02 Apr 2025 21:29:29 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f0eADjoIyz4aY54E5lfVYlEeX3N+fjIH+BShqojAyjW+/Rj78/aG1iANJ9zVhKOpSJy/uR5zgpF5RmThYx+zZ9MhOtEOnuyMLIj2lt51GVWEEiqlFAy7z12y+oJJAbsdOlbs6AIYaU1JFmQF5GKWfHVvR9Ly90k8gt0cNOaxyOGv/EdiTlH8r5gsA2LYhuYF97l3VdKwAwz+pmLj5yzy8cAUOVpPG1kpyEQChlNQ9Boepf204SDLchKFn5jZtLJLblkxFz4OSTQdQLBtEROqK0aRL9l6zhUHHBkV2wh2eFkh3mi8d3KNtAPu6PaugXTHYf0GY7VNiAQz24AEftJeWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kjNrVBrnWoDi8aIjUzhaalyMi6+PKvhBRcH7fNt16tc=;
 b=o5C4a2/FvbHPoG1XGzv/piB3wATqnAy2iAl2v4QX6zW7aAFJLjfjxCXjQXKwUHH8ihvAe97VzNZq/lYH8ycux0UA8iRLee+S+bmjmbKlKQBmn924zfmfRSOwWKxql6xmySolmHU81XvhaW6Ov26ZtjQFLiwpY/Eyl0TOwpYCIlvjPOj18VF9cyJQPj2HrjE0UP5vrVmi7b3aZJST0zdIXRnz19dL01qZ1OUriiYYHpPFiea2vwNhyiMdpa/8JOjkLcu9VXAX7ZsExf/5n2+ySpKtiv5Bxo+M3/BmrtUquW4xBjqKBSU/MeujqXnn1YzWG+8OSw91Re4LNwb1UZPNjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=csudh.edu; dmarc=pass action=none header.from=csudh.edu;
 dkim=pass header.d=csudh.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csudh0.onmicrosoft.com; s=selector2-csudh0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kjNrVBrnWoDi8aIjUzhaalyMi6+PKvhBRcH7fNt16tc=;
 b=Fc1Cf+dtZRvxyYn05ggFn9cRcrDpRgsrzLxT36j1W6IradZ4ht/VTpPMqSgzMjtOpUvQH/zkAY6GmfL2UtCjfweE4UA5ytn4/eh9ypg5q0JF7xh9j3avf9+76phttGQq7g4Hz4EQSxwe6yvQ5aHrl0+fnbt9cL+W3n0ZDEIIU9o=
Received: from BYAPR03MB3863.namprd03.prod.outlook.com (2603:10b6:a03:6a::30)
 by CO1PR03MB5827.namprd03.prod.outlook.com (2603:10b6:303:9a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.50; Wed, 2 Apr
 2025 21:29:24 +0000
Received: from BYAPR03MB3863.namprd03.prod.outlook.com
 ([fe80::6fc:1113:1035:2971]) by BYAPR03MB3863.namprd03.prod.outlook.com
 ([fe80::6fc:1113:1035:2971%5]) with mapi id 15.20.8534.043; Wed, 2 Apr 2025
 21:29:24 +0000
To: Frantisek Borsik <frantisek.borsik@gmail.com>, libreqos
 <libreqos@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>, Dave
 Taht <starlink@lists.bufferbloat.net>, Jeremy Austin via Rpm
 <rpm@lists.bufferbloat.net>, "bloat-ietf@lists.bufferbloat.net"
 <bloat-ietf@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 "cerowrt-commits@lists.bufferbloat.net"
 <cerowrt-commits@lists.bufferbloat.net>,
 "cerowrt-devel@lists.bufferbloat.net" <cerowrt-devel@lists.bufferbloat.net>,
 "cerowrt-users@lists.bufferbloat.net" <cerowrt-users@lists.bufferbloat.net>,
 "codel-wireless@lists.bufferbloat.net"
 <codel-wireless@lists.bufferbloat.net>, Make-Wifi-fast
 <make-wifi-fast@lists.bufferbloat.net>,
 =?Windows-1252?Q?Network_Neutrality_is_back!_Let=B4s_make_the_technical_a?=
 =?Windows-1252?Q?spects_heard_this_time!?= <nnagain@lists.bufferbloat.net>,
 Nils Andreas Svee <me@lochnair.net>
Thread-Topic: =?Windows-1252?Q?[Starlink]=09[Bloat]_In_loving_memory_of_Dave_T=E4ht_<3?=
Thread-Index: AQHbo+UFK2qrk1I4i0q+AWZzmUifg7OQ5ENF
Date: Wed, 2 Apr 2025 21:29:24 +0000
Message-ID: <BYAPR03MB3863566D4167364656B2142BC2AF2@BYAPR03MB3863.namprd03.prod.outlook.com>
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <37ff4cd6-6ead-4bb2-a5c9-27103cda5964@app.fastmail.com>
In-Reply-To: <37ff4cd6-6ead-4bb2-a5c9-27103cda5964@app.fastmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR03MB3863:EE_|CO1PR03MB5827:EE_
x-ms-office365-filtering-correlation-id: 17efef89-5adc-40e3-ecb2-08dd722d707a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|7416014|376014|13003099007|921020|8096899003|7053199007|38070700018;
x-microsoft-antispam-message-info: =?Windows-1252?Q?rnA+nQFS/89u5G1e2KCHmzi1Mhktm1yU9Vye3Qmjkfdn8kBrNep+zHKl?=
 =?Windows-1252?Q?zCZYmg4OzXfGptIz7kjmR0W7qj5n3MAj7/yxXmkGu0wXVuF7/1+DjP7w?=
 =?Windows-1252?Q?QQa0/f7ahoP43e5c798aCr+hleFZKEMoPxHaVpSee1ZeSQB2KPs1bkwS?=
 =?Windows-1252?Q?7wA67F8yf3ZBgfeYRseIt4JrVDiT7Z7QzcyU0PQ44A0sk9ggEXKmzbyq?=
 =?Windows-1252?Q?0Eoa3ymeph90tYO/S2eI5TjI34LSTyl32RmZ1dongCHqI9T0q+yE8Eiw?=
 =?Windows-1252?Q?UHdUFJgrTVM915lsPRX1+1tjZk5uVJQ6VRPFOvH7sTu42iTPbGmySX4S?=
 =?Windows-1252?Q?hHX+zqSs4YeDN/b1BZHH/RPW6R6gnEtrpAVPsJNqofdGxVuet6mQxrbJ?=
 =?Windows-1252?Q?QNGMSZ9oUjhYsXmuoGHs76IsqN0dCF40NOGI2Q3lUUy4P6g2ZhcjaquZ?=
 =?Windows-1252?Q?DX9hGc4TNc7G+7zbgE6Sp9QzHJmotEv1MsnW+GeOslULAqAWjNbINtsB?=
 =?Windows-1252?Q?iuoTGWzk22oRV0riYcDFIJBt5zWdDPK98mu+1lKSBecbNlwuo8QWm2Xt?=
 =?Windows-1252?Q?Rq7ku2OzCHuI2liDv4gAn5DT1xA1dXeuyZJFnaPYDI82sCnJDWycV2Or?=
 =?Windows-1252?Q?qehJ9BPwSG0ZHMTIr6tRUI2/evV1AV2BYOEhMhgwoPI6FcVsC7Z+Xtjq?=
 =?Windows-1252?Q?+4BO1ErZhqyzoYYWHd+yElLlHjxRodkv9JeKhqZ23n9fe472syq8y2bT?=
 =?Windows-1252?Q?M7KZC+cboSVwoqS/D9TV+HjHiSXvS/mHr5EABwMyXRDfMLmPokdukyIZ?=
 =?Windows-1252?Q?x4cH45fDirz3+tAvBLfW4FRYulSdbHdJzp5dc7bGa6fZyEBS1nvMklPq?=
 =?Windows-1252?Q?oH1xDF2g4SKwGRldwyKE6gbEoKcZDA5MGlbqOHF1vzGd9OuJp2258Vnl?=
 =?Windows-1252?Q?XK0ogvZLtkR6zq5yOdySW2tYKvkZLSK5pnQOSRom9/viyQbRZ4LBdr43?=
 =?Windows-1252?Q?GHPhqLPDVHzDl0DMSk4PG+0prCaETJXgpcYAmmmuz8+124c0nXISV+QW?=
 =?Windows-1252?Q?/jY27n7Dbh+lBZVTh49IPlJ/kE1wboyTr28qPcwhyEOx8XQaz9S1NE2L?=
 =?Windows-1252?Q?bM0lGnO/UHiYN6Dl2FX8u7UvaWK+Csi09cgeQoWqRvlxf/GaqyTfdsTG?=
 =?Windows-1252?Q?RgjMCjw5bAN2olKLht9Ibh4H7KhkR9ij4Pn96/MuB82h0rejKL/hTdEp?=
 =?Windows-1252?Q?tgnjTc6PCj00ixuqiandmcuBAM9KjOXDXnav9y+1r9absj9TlqZ4BbQz?=
 =?Windows-1252?Q?CbPAIqRZP1ZDQ/65lbfw6CpMpw6LyEXxsUOUT+q5OGbwgATk4qTAotHR?=
 =?Windows-1252?Q?fSLzrAS82qOhzghFpZ/Gmu+BD4lwCE82oKRUZqpdYp2dzzp23ipgVnAG?=
 =?Windows-1252?Q?sr+f52Opb/6iXT3GkaSGDjofoFb30cN7hxXtnjH9fI/k952TlwbMx+y8?=
 =?Windows-1252?Q?fxu0taGu89mSsTG5C575PpkNK7JIQw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR03MB3863.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(7416014)(376014)(13003099007)(921020)(8096899003)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?/gpayehY5Np8m9FT+n3qGuN+UNcQTaRSVupTgQVmmAr+o4SP/6xmIQcM?=
 =?Windows-1252?Q?bJjNGDY50fXV2KEeKddLWUxvajqO+jUHqSGutmxOoQg4xDuKNwdo7KQI?=
 =?Windows-1252?Q?xVI7SPY2mn+Lf3Y6+PiaIzp82cMatUhDRqPp6wHMPjKij+f6yWKlGanB?=
 =?Windows-1252?Q?AGRjbr0OgOgNti21MvTNIaFXhMcUWLx0s5VBa2gcN/7X96Sv2MvJP61K?=
 =?Windows-1252?Q?tmJeoFpcq1gvEUBLL0KhF1avSYoO8cadEl1QdDDR/fPGIsyN+QozJA4i?=
 =?Windows-1252?Q?JQdZ4b0r47kVBvWHXeu8Q2zgkT5FQ3P8SGYSlkEsr+Ffx+D2R1Lb2mlq?=
 =?Windows-1252?Q?sFQ4LA96g0J2Rzc2+4SXnGIQMVJTC/tBUKO1ikktaKCK7mWh04rRzeSP?=
 =?Windows-1252?Q?NQ9SKpPnaaJ0kKEMWEg5T5dC8rJL3v2hXniMRP/9KC89Cr1av/oU1aT9?=
 =?Windows-1252?Q?/0rEGhzMFMeJiLo60OXZEsrqaVW/K12yITO9vekFa/u0p+o3L7+HA3i6?=
 =?Windows-1252?Q?5F047BArtsQo3DN3M0Z7UPxu96FDySd/EZckM7/9qT5MTbFiZhbaG+u4?=
 =?Windows-1252?Q?p0hYGVvIB4kLrN3L/Kt8To40kvjO+EDX1qGPSjF0C3LUcv8kYKtEktFF?=
 =?Windows-1252?Q?VRX9iUM05rvDYaDBmfG5b93M3yHHHuOLTFH7Y+bEhzwIabL1cFKz9f+Q?=
 =?Windows-1252?Q?Y21YXK39g/+Txexalf15Ch/OYxlbEQCXCBm2Es6anKELHuvJqKP4BzQi?=
 =?Windows-1252?Q?DXGmCSS75HMXRBHqBm6K9POIS8GEvQJ2awq1dKwHvguv0Qchg0gjMCMl?=
 =?Windows-1252?Q?q14VkAVCPsWhjUXKQHj01wZokX/u6l4pjz7JvHU9RDN6EjOi+MQ6B7U0?=
 =?Windows-1252?Q?7HJLBPP67hS2Qsh4oDLOPTbmEf6MBZ4no6upmkQGft2o5Derc/TyE0TM?=
 =?Windows-1252?Q?p4KREQDb8IoQLYkQ1yk1HxoIWwqs2GoEeYcAn+DBRi0ATZY5OdEO4luL?=
 =?Windows-1252?Q?jrzlM/sQ6gYz/SQH/cdKEOoyfjRj0A8f7ULc+qbvO8+A5hzoxWYELX1H?=
 =?Windows-1252?Q?2KCVDlnBETaIRjGqjl1lsn/sIincY7d2/X3WrntgjIJQzxU/6W+g4j8Y?=
 =?Windows-1252?Q?BbgZonmNeNIiMYNTTXuuVR5g3qJ85z1elw8XibynGXOhZBG1ZLG8uoaz?=
 =?Windows-1252?Q?7fPzBQAXUSz/ZEpqKfa1fFmt1q0Ww/DcWzpvLwvNwMmNQ/dGhOcyRJLI?=
 =?Windows-1252?Q?7NHBIDsiz3Wq1cnQJwvhWamO9D0pnQF8cGzr58oXK9EVUucU1uzjeY7i?=
 =?Windows-1252?Q?WUS5VkGqEFxhvNliuXKrfuz2GW8NoWOViVy02jAJycxiQ0JAVRTrXW8A?=
 =?Windows-1252?Q?evlKt2KKmhtJR+j8fUk8/74HDnUNkAeEqZGLCvCfk9vaqIZDK4gnXOBY?=
 =?Windows-1252?Q?Ail3RNM0WTLGBGirKb5bUTJ/Hd+3inXnPK36sNF6LCRjryWhwPLntoRm?=
 =?Windows-1252?Q?i4Xj2TSG29uANmAGkHbyoJhXNKfKnaPcXWyvHK6zQ9VVgJJLEhFBOAOH?=
 =?Windows-1252?Q?CRFE8v2KygQAEVgJ2ga2JB8JRvwn8g+fuo3n+qYUpGV0w3f+f3rFOCWE?=
 =?Windows-1252?Q?MFDU+vhq17i9HKhmQiEeedmQ/Y+3HmTVX9XKMgVPJS2EQd75y/cIaJsG?=
 =?Windows-1252?Q?sTRbmay3w/qFu1+oZL0neBjKNESC5BBnHXwmDeRQJQ/A794ZHOESaJhj?=
 =?Windows-1252?Q?JmjV/zk2JaY3iY9g67cgNHWHApHhPwb44tcji5Hq?=
MIME-Version: 1.0
X-OriginatorOrg: csudh.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB3863.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17efef89-5adc-40e3-ecb2-08dd722d707a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2025 21:29:24.2152 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a66a727-7389-4727-a8cb-f249ac8e7ff8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DtZA6i3USfXOqbqPMpnx+dEdRwWzJoOjO2aplVMwEazpnDQPylzP+PzQHSur6d/bzr8ehise8W5CYK+LR2LNNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR03MB5827
X-Proofpoint-GUID: r8VOuVnNylBf7BD6FtYt2QLwHpdo-yUD
X-Authority-Analysis: v=2.4 cv=G70cE8k5 c=1 sm=1 tr=0 ts=67edac39 cx=c_pps
 a=qdevHIbYfAzI1c5gbp2lUA==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=XR8D0OoHHMoA:10
 a=OkBJ0657V7UA:10 a=x7bEGLp0ZPQA:10 a=E6wD7OjBPLEA:10 a=M6ZQNEhNAAAA:8
 a=NEAV23lmAAAA:8 a=jU4qhlNgAAAA:8 a=kurRqvosAAAA:8 a=pGLkceISAAAA:8
 a=YA71UhCZ2V7goP5BUeUA:9 a=pILNOxqGKmIA:10 a=6LxsSH046iq0F9PnA_8A:9
 a=ZJ5O30x6wreWF9Gh:21 a=frz4AuCg-hUA:10
 a=_W_S_7VecoQA:10 a=lqcHg5cX4UMA:10 a=04czSPJNoGzj1I3jXP3C:22
 a=kbxRQ_lfPIoQnHsAj2-A:22
X-Proofpoint-ORIG-GUID: r8VOuVnNylBf7BD6FtYt2QLwHpdo-yUD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-02_10,2025-04-02_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 impostorscore=0 mlxscore=0 lowpriorityscore=0 clxscore=1011 adultscore=0
 suspectscore=0 phishscore=0 malwarescore=0 bulkscore=0 mlxlogscore=999
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.21.0-2502280000
 definitions=main-2504020138
X-Mailman-Approved-At: Fri, 06 Jun 2025 06:40:58 -0400
Subject: Re: [Cake]
 =?windows-1252?q?=5BStarlink=5D=09=5BBloat=5D_In_loving_me?=
 =?windows-1252?q?mory_of_Dave_T=E4ht_=3C3?=
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
From: Larry Press via Cake <cake@lists.bufferbloat.net>
Reply-To: Larry Press <lpress@csudh.edu>
Cc: Herbert Wolverson <hwolverson@libreqos.io>,
 "Frantisek \(Frank\) Borsik" <frank@libreqos.io>,
 =?Windows-1252?Q?Robert_Chac=F3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============7760629639549521360=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7760629639549521360==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB3863566D4167364656B2142BC2AF2BYAPR03MB3863namp_"

--_000_BYAPR03MB3863566D4167364656B2142BC2AF2BYAPR03MB3863namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I met Dave only recently, and never in person, but his passing saddens me. =
He taught me about buffer bloat, etc., but I am sad because he was a good p=
erson =97 unselfish, caring, open, and funny. I'll miss him.

Larry
________________________________
From: Starlink <starlink-bounces@lists.bufferbloat.net> on behalf of Nils A=
ndreas Svee via Starlink <starlink@lists.bufferbloat.net>
Sent: Wednesday, April 2, 2025 8:35 AM
To: Frantisek Borsik <frantisek.borsik@gmail.com>; libreqos <libreqos@lists=
.bufferbloat.net>; bloat <bloat@lists.bufferbloat.net>; Dave Taht <starlink=
@lists.bufferbloat.net>; Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>;=
 bloat-ietf@lists.bufferbloat.net <bloat-ietf@lists.bufferbloat.net>; Cake =
List <cake@lists.bufferbloat.net>; codel@lists.bufferbloat.net <codel@lists=
.bufferbloat.net>; cerowrt-commits@lists.bufferbloat.net <cerowrt-commits@l=
ists.bufferbloat.net>; cerowrt-devel@lists.bufferbloat.net <cerowrt-devel@l=
ists.bufferbloat.net>; cerowrt-users@lists.bufferbloat.net <cerowrt-users@l=
ists.bufferbloat.net>; codel-wireless@lists.bufferbloat.net <codel-wireless=
@lists.bufferbloat.net>; Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.n=
et>; Network Neutrality is back! Let=B4s make the technical aspects heard t=
his time! <nnagain@lists.bufferbloat.net>
Cc: Herbert Wolverson <hwolverson@libreqos.io>; Frantisek (Frank) Borsik <f=
rank@libreqos.io>; Robert Chac=F3n <robert@libreqos.io>
Subject: Re: [Starlink] [Bloat] In loving memory of Dave T=E4ht <3

Very sorry to learn of Dave's passing, it's a sad time for us all.

I wasn't lucky enough to know Dave very well, so it's been a privilege to r=
ead everyone's stories about him, and I hope others who have some will shar=
e as well what he meant to them.

I wish those in contact with his family will let them know just how many li=
ves he's touched over the years, and how much we will all miss him.

Rest in peace Dave.

Kind Regards
Nils

On Wed, Apr 2, 2025, at 00:27, Frantisek Borsik via Bloat wrote:
Hello to all,

We=92re devastated to announce that Dave T=E4ht has passed away.<https://ur=
ldefense.com/v3/__https://libreqos.io/2025/04/01/in-loving-memory-of-dave/_=
_;!!P7nkOOY!tjOQAVTyhn-AeKG39jwTPtuisnB161uun2FpoZCNfMIsFi7qOeWTxiZWUfZGUIp=
ncsQQNROcLEsw18snxWK9qbHp3g$>

Dave was an amazing man, helping the world with FQ-CoDel and CAKE, fighting=
 bufferbloat and trying to make the world a better place. Always willing to=
 help, and without him =96 LibreQoS (and the other QoE solutions out there)=
 wouldn=92t exist.

Dave was an inspiration, and we all miss him. We=92re reaching out to famil=
y and close friends to see if there=92s anything we can do to help.

Dave was an inspiration to us. Dave=92s contributions to Linux, FQ-CoDel, a=
nd CAKE improved internet connectivity around the world for millions of peo=
ple. Because of him, millions of people now have access to reliable video c=
alls =96 and in turn, access to loved ones, healthcare, and community. One =
of Robert=92s ISP customers is a kind paraplegic woman who lives in a far-f=
lung rural Colonia around El Paso, Texas. Her reliable access to her doctor=
s through telemedicine, and to her family through FaceTime, was only made p=
ossible because of his algorithms. There are millions of cases like hers, w=
here Dave=92s contributions have silently enabled human connection and safe=
ty. Everything Dave contributed to the world of technology was free and ope=
n source, for the betterment of humanity.

Dave is the reason that Starlink was able to tackle its latency issues =96 =
enabling a generation of young entrepreneurs across the developing world, s=
uch as these young folks pictured in the Phillipines, to start their own IS=
Ps to expand internet access to their communities. Dave started work on FQ-=
CoDel in part because of his own journey working to expand internet access =
in Nicaragua, so we know he saw that his work had come full-circle and help=
ed so many.

We=92re incredibly grateful to have Dave as our friend, mentor, and as some=
one who continuously inspired us =96 showing us that we could do better for=
 each other in the world, and leverage technology to make that happen. He w=
ill be dearly missed.

PS: Dave is forever in our hearts and souls, in our routers and...in produc=
tion!
https://github.com/LibreQoE/LibreQoS/pull/684<https://urldefense.com/v3/__h=
ttps://github.com/LibreQoE/LibreQoS/pull/684__;!!P7nkOOY!tjOQAVTyhn-AeKG39j=
wTPtuisnB161uun2FpoZCNfMIsFi7qOeWTxiZWUfZGUIpncsQQNROcLEsw18snxWK6ZaPfMQ$>

All the best,


Frank


Frantisek (Frank) Borsik



https://www.linkedin.com/in/frantisekborsik<https://urldefense.com/v3/__htt=
ps://www.linkedin.com/in/frantisekborsik__;!!P7nkOOY!tjOQAVTyhn-AeKG39jwTPt=
uisnB161uun2FpoZCNfMIsFi7qOeWTxiZWUfZGUIpncsQQNROcLEsw18snxWKqdQhpcw$>

Signal, Telegram, WhatsApp: +421919416714

iMessage, mobile: +420775230885

Skype: casioa5302ca

frantisek.borsik@gmail.com<mailto:frantisek.borsik@gmail.com>

_______________________________________________
Bloat mailing list
Bloat@lists.bufferbloat.net<mailto:Bloat@lists.bufferbloat.net>
https://lists.bufferbloat.net/listinfo/bloat<https://urldefense.com/v3/__ht=
tps://lists.bufferbloat.net/listinfo/bloat__;!!P7nkOOY!tjOQAVTyhn-AeKG39jwT=
PtuisnB161uun2FpoZCNfMIsFi7qOeWTxiZWUfZGUIpncsQQNROcLEsw18snxWJDWtkyCw$>



--_000_BYAPR03MB3863566D4167364656B2142BC2AF2BYAPR03MB3863namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I met Dave only recently, and never in person, but his passing saddens me. =
He taught me about buffer bloat, etc., but I am sad because he was a good p=
erson =97 unselfish, caring, open, and funny. I'll miss him.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Larry</div>
<hr style=3D"display: inline-block; width: 98%;">
<div dir=3D"ltr" id=3D"divRplyFwdMsg"><span style=3D"font-family: Calibri, =
sans-serif; font-size: 11pt; color: rgb(0, 0, 0);"><b>From:</b>&nbsp;Starli=
nk &lt;starlink-bounces@lists.bufferbloat.net&gt; on behalf of Nils Andreas=
 Svee via Starlink &lt;starlink@lists.bufferbloat.net&gt;<br>
<b>Sent:</b>&nbsp;Wednesday, April 2, 2025 8:35 AM<br>
<b>To:</b>&nbsp;Frantisek Borsik &lt;frantisek.borsik@gmail.com&gt;; libreq=
os &lt;libreqos@lists.bufferbloat.net&gt;; bloat &lt;bloat@lists.bufferbloa=
t.net&gt;; Dave Taht &lt;starlink@lists.bufferbloat.net&gt;; Jeremy Austin =
via Rpm &lt;rpm@lists.bufferbloat.net&gt;; bloat-ietf@lists.bufferbloat.net
 &lt;bloat-ietf@lists.bufferbloat.net&gt;; Cake List &lt;cake@lists.bufferb=
loat.net&gt;; codel@lists.bufferbloat.net &lt;codel@lists.bufferbloat.net&g=
t;; cerowrt-commits@lists.bufferbloat.net &lt;cerowrt-commits@lists.bufferb=
loat.net&gt;; cerowrt-devel@lists.bufferbloat.net &lt;cerowrt-devel@lists.b=
ufferbloat.net&gt;;
 cerowrt-users@lists.bufferbloat.net &lt;cerowrt-users@lists.bufferbloat.ne=
t&gt;; codel-wireless@lists.bufferbloat.net &lt;codel-wireless@lists.buffer=
bloat.net&gt;; Make-Wifi-fast &lt;make-wifi-fast@lists.bufferbloat.net&gt;;=
 Network Neutrality is back! Let=B4s make the technical
 aspects heard this time! &lt;nnagain@lists.bufferbloat.net&gt;<br>
<b>Cc:</b>&nbsp;Herbert Wolverson &lt;hwolverson@libreqos.io&gt;; Frantisek=
 (Frank) Borsik &lt;frank@libreqos.io&gt;; Robert Chac=F3n &lt;robert@libre=
qos.io&gt;<br>
<b>Subject:</b>&nbsp;Re: [Starlink] [Bloat] In loving memory of Dave T=E4ht=
 &lt;3</span>
<div>&nbsp;</div>
</div>
<div>Very sorry to learn of Dave's passing, it's a sad time for us all.</di=
v>
<div><br>
</div>
<div>I wasn't lucky enough to know Dave very well, so it's been a privilege=
 to read everyone's stories about him, and I hope others who have some will=
 share as well what he meant to them.</div>
<div><br>
</div>
<div>I wish those in contact with his family will let them know just how ma=
ny lives he's touched over the years, and how much we will all miss him.</d=
iv>
<div><br>
</div>
<div>Rest in peace Dave.</div>
<div><br>
</div>
<div id=3D"x_sig44785538">
<div>Kind Regards</div>
<div>Nils</div>
</div>
<div><br>
</div>
<div>On Wed, Apr 2, 2025, at 00:27, Frantisek Borsik via Bloat wrote:</div>
<blockquote>
<div style=3D"direction: ltr;">Hello to all,</div>
<div style=3D"direction: ltr;"><br>
</div>
<div style=3D"direction: ltr;"><a href=3D"https://urldefense.com/v3/__https=
://libreqos.io/2025/04/01/in-loving-memory-of-dave/__;!!P7nkOOY!tjOQAVTyhn-=
AeKG39jwTPtuisnB161uun2FpoZCNfMIsFi7qOeWTxiZWUfZGUIpncsQQNROcLEsw18snxWK9qb=
Hp3g$" id=3D"OWA9d86663d-f520-1599-7331-4318acadb0dc" class=3D"OWAAutoLink"=
 data-auth=3D"NotApplicable">We=92re
 devastated to announce that Dave T=E4ht has passed away.</a></div>
<div style=3D"direction: ltr;"><br>
</div>
<div style=3D"direction: ltr;">Dave was an amazing man, helping the world w=
ith FQ-CoDel and CAKE, fighting bufferbloat and trying to make the world a =
better place. Always willing to help, and without him =96 LibreQoS (and the=
 other QoE solutions out there) wouldn=92t
 exist.</div>
<div style=3D"direction: ltr;"><br>
</div>
<div style=3D"direction: ltr;">Dave was an inspiration, and we all miss him=
. We=92re reaching out to family and close friends to see if there=92s anyt=
hing we can do to help.</div>
<div style=3D"direction: ltr;"><br>
</div>
<div style=3D"direction: ltr;">Dave was an inspiration to us. Dave=92s cont=
ributions to Linux, FQ-CoDel, and CAKE improved internet connectivity aroun=
d the world for millions of people. Because of him, millions of people now =
have access to reliable video calls
 =96 and in turn, access to loved ones, healthcare, and community. One of R=
obert=92s ISP customers is a kind paraplegic woman who lives in a far-flung=
 rural Colonia around El Paso, Texas. Her reliable access to her doctors th=
rough telemedicine, and to her family
 through FaceTime, was only made possible because of his algorithms. There =
are millions of cases like hers, where Dave=92s contributions have silently=
 enabled human connection and safety. Everything Dave contributed to the wo=
rld of technology was free and open
 source, for the betterment of humanity.</div>
<div style=3D"direction: ltr;"><br>
</div>
<div style=3D"direction: ltr;">Dave is the reason that Starlink was able to=
 tackle its latency issues =96 enabling a generation of young entrepreneurs=
 across the developing world, such as these young folks pictured in the Phi=
llipines, to start their own ISPs to
 expand internet access to their communities. Dave started work on FQ-CoDel=
 in part because of his own journey working to expand internet access in Ni=
caragua, so we know he saw that his work had come full-circle and helped so=
 many.</div>
<div style=3D"direction: ltr;"><br>
</div>
<div style=3D"direction: ltr;">We=92re incredibly grateful to have Dave as =
our friend, mentor, and as someone who continuously inspired us =96 showing=
 us that we could do better for each other in the world, and leverage techn=
ology to make that happen. He will be
 dearly missed.</div>
<div style=3D"direction: ltr;"><br>
</div>
<div style=3D"direction: ltr;"><b>PS: </b>Dave is forever in our hearts and=
 souls, in our routers and...in production!</div>
<div style=3D"direction: ltr;"><b><a href=3D"https://urldefense.com/v3/__ht=
tps://github.com/LibreQoE/LibreQoS/pull/684__;!!P7nkOOY!tjOQAVTyhn-AeKG39jw=
TPtuisnB161uun2FpoZCNfMIsFi7qOeWTxiZWUfZGUIpncsQQNROcLEsw18snxWK6ZaPfMQ$" i=
d=3D"OWA4567fccf-bfd6-3840-7d9b-4638c3f74d0c" class=3D"OWAAutoLink" data-au=
th=3D"NotApplicable">https://github.com/LibreQoE/LibreQoS/pull/684</a></b><=
/div>
<div style=3D"direction: ltr;"><br>
</div>
<div style=3D"direction: ltr;">All the best,</div>
<div style=3D"direction: ltr;"><br>
</div>
<p style=3D"direction: ltr; color: rgb(34, 34, 34);">Frank</p>
<p style=3D"direction: ltr; color: rgb(34, 34, 34);"><br>
</p>
<p style=3D"direction: ltr; color: rgb(34, 34, 34);">Frantisek (Frank) Bors=
ik</p>
<p style=3D"direction: ltr; color: rgb(34, 34, 34);">&nbsp;</p>
<p style=3D"direction: ltr; color: rgb(34, 34, 34);"><span style=3D"color: =
rgb(17, 85, 204);"><a href=3D"https://urldefense.com/v3/__https://www.linke=
din.com/in/frantisekborsik__;!!P7nkOOY!tjOQAVTyhn-AeKG39jwTPtuisnB161uun2Fp=
oZCNfMIsFi7qOeWTxiZWUfZGUIpncsQQNROcLEsw18snxWKqdQhpcw$" id=3D"OWA32b88055-=
4e0a-79c1-cb7c-d90968aebb65" class=3D"OWAAutoLink" data-auth=3D"NotApplicab=
le" style=3D"color: rgb(17, 85, 204); margin-top: 0px; margin-bottom: 0px;"=
>https://www.linkedin.com/in/frantisekborsik</a></span></p>
<p style=3D"direction: ltr; color: rgb(34, 34, 34);">Signal, Telegram, What=
sApp: +421919416714&nbsp;</p>
<p style=3D"direction: ltr; color: rgb(34, 34, 34);">iMessage, mobile: +420=
775230885</p>
<p style=3D"direction: ltr; color: rgb(34, 34, 34);">Skype: casioa5302ca</p=
>
<p style=3D"direction: ltr; color: rgb(34, 34, 34);"><span style=3D"color: =
rgb(17, 85, 204);"><a href=3D"mailto:frantisek.borsik@gmail.com" id=3D"OWAf=
4212d69-aacf-9b98-0efe-95998baf9a5c" class=3D"OWAAutoLink" style=3D"color: =
rgb(17, 85, 204); margin-top: 0px; margin-bottom: 0px;">frantisek.borsik@gm=
ail.com</a></span></p>
<div>_______________________________________________</div>
<div>Bloat mailing list</div>
<div><a href=3D"mailto:Bloat@lists.bufferbloat.net" id=3D"OWA108882d7-e615-=
bde4-b907-6afbb52a907d" class=3D"OWAAutoLink">Bloat@lists.bufferbloat.net</=
a></div>
<div><a href=3D"https://urldefense.com/v3/__https://lists.bufferbloat.net/l=
istinfo/bloat__;!!P7nkOOY!tjOQAVTyhn-AeKG39jwTPtuisnB161uun2FpoZCNfMIsFi7qO=
eWTxiZWUfZGUIpncsQQNROcLEsw18snxWJDWtkyCw$" id=3D"OWA7ed40857-1f40-3bca-419=
2-bc9f4ec8d0cd" class=3D"OWAAutoLink" data-auth=3D"NotApplicable">https://l=
ists.bufferbloat.net/listinfo/bloat</a></div>
<div><br>
</div>
</blockquote>
<div><br>
</div>
</body>
</html>

--_000_BYAPR03MB3863566D4167364656B2142BC2AF2BYAPR03MB3863namp_--

--===============7760629639549521360==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7760629639549521360==--

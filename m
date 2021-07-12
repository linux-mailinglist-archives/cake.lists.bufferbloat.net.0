Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5A53C6E33
	for <lists+cake@lfdr.de>; Tue, 13 Jul 2021 12:06:07 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 60D5C3CB54;
	Tue, 13 Jul 2021 06:06:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1626170766;
	bh=XvbJA9TSJQ0xDqk/xtQRngoGoLuoF+71ijvbnDPJkPc=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=O2PwehKlrmyB12kC/B8oTlGu/SohyGW2kSI3TXJEfMxx1A5QqGIqHUtjeS3dnwxZF
	 f9TiF6TDFPUqx1Mk3VlVrLc3nBW+wgTYhKiRBbbFtOCI71rcxHynQgSsJ2YDOSsFQa
	 vq1xEc/bgiPZXKtYGB6x/aoMshSawIdxf54uUMLrGtbeqo24hgckyDuSpXXAg3ulnD
	 KZxFeXhNkM+Wa248GGBy5XBkI/8xlHx70Ozz6VCh4/apROa7VDDHCQXAzWo6WoUt+j
	 McHiHq74oylqsl0IlmznvXXIVU6wGZWkLYgvkl3+9JFp7JprlP+A5zvbOEwXWttOGw
	 I9n3xWoTEStbg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mx0b-00143702.pphosted.com (mx0b-00143702.pphosted.com
 [148.163.141.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id BF5883CB37;
 Mon, 12 Jul 2021 09:46:50 -0400 (EDT)
Received: from pps.filterd (m0184891.ppops.net [127.0.0.1])
 by mx0b-00143702.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 16CDfOcm007714; Mon, 12 Jul 2021 09:46:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=20190412; bh=o/K+P+JYkzjdsG2oBt81nyXwrsB0UI4pYnc0e9Rs2aE=;
 b=pB54BxfE3bQtMb0rP/8QXhGoNCPkYjmIGhLohz1dLz2asrycu0T4US9bvgmo8CLDVISu
 9U6XQX8yXQIdyuSpmHGgD2+44y2KFGEGENolvZ0bXHsXV1xRNd5lEVAnHmQKG0VhNz9O
 L69/ye6gtkcnBSkDYv66OsAoqEMiJzSR9u9Y9U0UZUbLvPaAdqq/wRIQ6OjEEYLzt6yp
 wn09Mt/m36ntG039K1vTmTWKlLP0mVVRHr5BDvILFRffwJz6IdTqQdx1LI0Jh9Z7A+XT
 fLy4IAXFspwnCTF8cQemXnSMVNmgXAmuGmV1iQJry05ZkuJvaDMwFCOhmak07UWuZxb6 wg== 
Received: from pacdcex49.cable.comcast.com (dlppfpt-wc-1p.slb.comcast.com
 [96.99.226.136])
 by mx0b-00143702.pphosted.com with ESMTP id 39q8agc5pp-7
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 12 Jul 2021 09:46:37 -0400
Received: from PACDCEXOP01.cable.comcast.com (24.40.1.148) by
 PACDCEX49.cable.comcast.com (24.40.2.148) with Microsoft SMTP Server (TLS) id
 15.0.1497.18; Mon, 12 Jul 2021 09:46:30 -0400
Received: from PACDCEXEDGE01.cable.comcast.com (76.96.78.71) by
 PACDCEXOP01.cable.comcast.com (24.40.1.148) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.2.858.5
 via Frontend Transport; Mon, 12 Jul 2021 09:46:30 -0400
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by webmail.comcast.com (76.96.78.71) with Microsoft SMTP Server (TLS) id
 15.0.1497.18; Mon, 12 Jul 2021 09:46:24 -0400
Received: from MN2PR11MB4287.namprd11.prod.outlook.com (2603:10b6:208:189::17)
 by BL1PR11MB5237.namprd11.prod.outlook.com (2603:10b6:208:310::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.20; Mon, 12 Jul
 2021 13:46:23 +0000
Received: from MN2PR11MB4287.namprd11.prod.outlook.com
 ([fe80::88e2:5d7f:ea75:7c62]) by MN2PR11MB4287.namprd11.prod.outlook.com
 ([fe80::88e2:5d7f:ea75:7c62%7]) with mapi id 15.20.4242.023; Mon, 12 Jul 2021
 13:46:23 +0000
To: "David P. Reed" <dpreed@deepplum.com>, Luca Muscariello
 <muscariello@ieee.org>
Thread-Topic: [Bloat] Little's Law mea culpa, but not invalidating my main
 point
Thread-Index: AQHXdyRNrY9ukjZAZ0CLNtKARSuxJA==
Date: Mon, 12 Jul 2021 13:46:22 +0000
Message-ID: <EF8D7620-438A-4F65-94D9-B35FDB76FBBD@cable.comcast.com>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <1625859083.09751240@apps.rackspace.com>
In-Reply-To: <1625859083.09751240@apps.rackspace.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.50.21061301
authentication-results: deepplum.com; dkim=none (message not signed)
 header.d=none;deepplum.com; dmarc=none action=none
 header.from=cable.comcast.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9c488c3b-c61c-48c9-0d42-08d9453b6fdd
x-ms-traffictypediagnostic: BL1PR11MB5237:
x-microsoft-antispam-prvs: <BL1PR11MB5237CDAAD3FB31F23BF728EBC7159@BL1PR11MB5237.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oHKitCpr3VGiHjMFlaq6Y2vbENQzb348N15cMZjaN8Xxmrk6K+vfbgSrtgAOdlp3wyxXNgqCB5yHAxpsfibFROGXFZ7nB9x/gIxc+KDNI2on5Zei8+eRU2NmQKU4J/v9W3XejzezCj4xpEnvJZAq4BA2tLBGx0nkvB6XjKT5vDvQ7DK2dUUXMSIKvLNdbEhQcXVfQi0W7j4EggxslnS6DrDIDbmdXSB7hohyN5EnipM/KLQP3vM0+oZrVrfBv3JGTw+27fQl8fFU/MGqFSY+LgTjeZFOm8z/f9CSqWYPo0tWTKfBfTWLkPcRV21WEoFru88mMd9nLdjieP2xmLrsRlZ4MMBth3lQSPr2BXURW5YXv9rqf82OXcsDeGAc1t304fRr7NuzVfUbo1AVvSzW7F78BRFEFCeGgy4krMEoGAp4c5JU0s9q6j5GL/wIDRNQpOhVMXsT+AwrtA1Ahm6nSYvficYWVdEfUunl4WtUQzv6TDFbbUiwlMV9RqOS1cWjHp93gwemCfzuV0WlBzyKJzfX4dfLtt792NjdVEzKzexH02M+eY10ppmF9BweyfwkQoMU6RPeOLZ58RZRnMWENVTN2rdLT/ctvMWPJKqAR55Nhth301vDfZN3X84p7gGZZtKXc64XXYBRoTeYEiJamtxetnB+LzWST0r3WO1XJf8FhuTpKG5bk0yDPKyUN/TFZIJ/hWKwP746rJWGrANtZw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(346002)(376002)(39860400002)(396003)(84050400001)(6506007)(7416002)(6512007)(5660300002)(4326008)(86362001)(8936002)(54906003)(2906002)(76116006)(478600001)(8676002)(71200400001)(186003)(122000001)(316002)(83380400001)(38100700002)(110136005)(64756008)(66476007)(66556008)(66446008)(66946007)(6486002)(2616005)(33656002)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OWgwT3RJUjlkRklOR2FxNXRJck9ZWmxHZklDWlRCVllSTk9tNjFpL2RiaUNY?=
 =?utf-8?B?VHBRdjFhQVQxaUhucFZoREdiSTJBcjlaZWZTU3BOVlZseW85QXk5VGVZdmJa?=
 =?utf-8?B?bDJqZzduaEwvWWU2QUtndmsxNzlBK2hzMzU3MFkrMWJJb1FZWVVuNzc4eEs3?=
 =?utf-8?B?TXFMMUQ2cjBvd2dqRkpaRWlpTGhpS1cySWU3RGRJYWRtSGg5RVRZdm5XWDAz?=
 =?utf-8?B?enprU2szaFJmT290WktjY0hTb3ZrQnFmTThrUnRneDRIWCsvdlJXSklBcUtC?=
 =?utf-8?B?TWh3dllwY0lacnluUkxpNkdzWEJkWTlYbEZVS1BHQ3FjSWZUSlpNK0c1WUNW?=
 =?utf-8?B?SWFNcVFuUFVkeno4aUdJNHpGVGx1bS91SjZtZDNMWDF6SnZjYXhqVlBuM3ZM?=
 =?utf-8?B?TnN0d2xjaER2SjZUSUZUL1RCRzQxWkRSVEtRNUt2ZHBPMnhLUDE4OEZIWlNt?=
 =?utf-8?B?ZHc5NGd6NzFPaFRiL1locHBpNmVnamVHQ0VBV2RyaGFXeElZc0kzcUc3Rzhq?=
 =?utf-8?B?MWlkcHlwYTZiV2t0MzZwU3dOd0lCQnpmczczR0NxNjlJeGl2UHRCUStRK3BX?=
 =?utf-8?B?T1kycjFDN0wrTDMvWkZZN0Y2dVgxdWErNFltVXhpSnkvOE5BYUtHdkNqdFhB?=
 =?utf-8?B?VDlPWlhTcnRYaVBRY1A3ckNPd3dXUGdGRzNsMnZpNnFkRnYyN2x4Nm5OdUN2?=
 =?utf-8?B?YU10RnlWclpKdUtqMUVZeTdSL1lQNFNaTjZXL2JXemhteU83dnZoVEdIWTJX?=
 =?utf-8?B?bEFZZmFjT3JnOHd3bDlWVkR1WUthUlNsMlhrU2huNkxkMmc3ejB3MHlzcmNu?=
 =?utf-8?B?cXAzR3pWL1dHYWdUZXpBa2laeTlGL0puelZNMGxHNW5ZeE9udWVvdFNrSDRW?=
 =?utf-8?B?TlZrSll3dXJqQTkvZXlnWGZHbkRVdzFyWUZBNmFkNjZYcVFMRjdjL0NmdUYx?=
 =?utf-8?B?N2cxVG5YUXFXNWREZFl4R2ZJdHo0WEFPZGtBMlJsQ0FDcHE5eXk4L3VwV0hu?=
 =?utf-8?B?ek9oN2t1SGRPcGxWSzdPNmVMZ0NEUlVEOW1UNTNES1VsNTVXM0R5eDdUa01V?=
 =?utf-8?B?UjRveU5hd1RjcDZSVVFvcU5OaW9uUjk0YWhHbEdVMEx6cFA1NTliRk5MbWhZ?=
 =?utf-8?B?bW4vMWpFM1kySDNBOXQyRTVLbFF5bkYrbnZmWlE4a3lmQ0VyU3VDcGZZVFhk?=
 =?utf-8?B?aTVZWkJZa2NGUHpLamd4Z3daQ3VocDVieFkzVTVJMmttQ0cvSFpOM214a3Zz?=
 =?utf-8?B?V3h2eTFKaXhqYllmZW5kSlVSdWU5QnFLa0YvbHFYakxnSlhoM0JDcldNNmxP?=
 =?utf-8?B?QWNWVFU5RUVIZ3hnS213NWtNcHZtU1dNRjlhSE1IYzA3N2JIWXQycVZXOHhQ?=
 =?utf-8?B?eHRGZytaSGZkbU90T3I2Yi9UZWdreVJVdUJTSHRVWW1Wd2xXbGVsdGVpSHpD?=
 =?utf-8?B?eXkxUjRoN2hEUEFsbVBsbkVoakxHSUhoVm9uYUE1cGt0T3BueXV1ZHhZaUtW?=
 =?utf-8?B?bERacHpHc0R2djFwclB6TDhoQkVSUUVoL1VhbXNSaWZDK1lPK1R2NWNXZGZ3?=
 =?utf-8?B?ZEFpd24vSURiQ25kQmhDYlJ0bmwyaVRXQWVJOVdSc1VZcGVkUmJnVVEvQkQy?=
 =?utf-8?B?cW9mQlJFM0NLT0RyWXE5c0VSUGZGc2tSRGFlOU9vQ1ZTa2hBaEpkdHVpUDJ0?=
 =?utf-8?B?dGJRNmpVay9oMnJSVzRjUmhiQlB5OWZYTndaWWwvTDFuVGRqVnI1bTB1UmY1?=
 =?utf-8?B?SFF3NVA1c3pqRXVPOHpnTDI0enBySGUvdEprdzdNcTV3M0xpdU1UU3RUcDVX?=
 =?utf-8?B?ZWJ1OEJndjhMd0RZY1ZZNXBzZXc3ZWFoMCtvV3pBbmZVK29pV3FDbGJmSWhm?=
 =?utf-8?Q?WnmKM5A/K/7KP?=
x-ms-exchange-transport-forked: True
arc-seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DMKUuKG+apVTMnHDOdI85BjA/j63B1yP69soyJjPOski/fmHmEw6AULYnhUvuhV0Y+XgH4r2IanvyZKCugFvb8wAh1IVwJj8vZ1NaPpimSJwvLtAvJVlBhkF5J3h2JUFIN9u+59gq/ZYx2pPtxmKBBacFnFCnacjk6INzDCxwmaYKiVS2mHcUGEZJMJN7kycEghJ9enPakPDmQdTz9ulRcqvOXmxouS17mbdry9vP+vh4cZFsXllZIYcC1qG6LvExE2VXEHpHegBB1LkL93lQZHvI0QREyrgaFcd9P9Zfd7KXXmYdqoTB7uU7PQkZAMmX5qZ/IVcWFaJiCxEgulV1Q==
arc-message-signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KWb2Win0sUeBWUff+8NZ8j2/8RHeZwpoy5W7L/r5+00=;
 b=N6YhZTJuQdx9o5muIJMSvwH+D2bwa+8SHswzgXCjiZtWleGm8gTHlbRoed4PQML15TNzP5hxK6gq2AfhRRLqC9PTZlvo+aB7kGT6qcnV/kHiww+mKe4bEcb4Q1ME3H3atOT5RibJsYP+vxTIiRanT7rXQKPLruCNKrFqE4zlBKVgcLRazfAjxwg2Qi45l+KSoJU+Tdl1m1bdhdrtYEUK/ahOHwDAx/jRJ31dBTKl0FJrJDdGZpDB+oDkSdkZ1qeH2jPKWGkXFCfCzVcIbvju1Cptk+C3XIb/hl5r0YROYiGA2K/UeusMM5Q5X9R5f5ZY9l2bB7thVpuzDrKg/waH6w==
arc-authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cable.comcast.com; dmarc=pass action=none
 header.from=cable.comcast.com; dkim=pass header.d=cable.comcast.com; arc=none
x-ms-exchange-crosstenant-authas: Internal
x-ms-exchange-crosstenant-authsource: MN2PR11MB4287.namprd11.prod.outlook.com
x-ms-exchange-crosstenant-network-message-id: 9c488c3b-c61c-48c9-0d42-08d9453b6fdd
x-ms-exchange-crosstenant-originalarrivaltime: 12 Jul 2021 13:46:22.9931 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: 906aefe9-76a7-4f65-b82d-5ec20775d5aa
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: Da3xNgiFkhpE36aybqfh5WXcAveusLOXtRXCoPqjGOVrSUUlwu5+dntgBEfB5Rj0BiQrZnlMaxGRTZ21p97bEMAGZIzCjPhLWeyzWU4ncVA=
x-ms-exchange-transport-crosstenantheadersstamped: BL1PR11MB5237
x-originatororg: cable.comcast.com
MIME-Version: 1.0
X-CFilter-Loop: Forward AAETWB
X-Proofpoint-GUID: s-kWrdy6nsE71da5CsKdkAfIvNldLoDQ
X-Proofpoint-ORIG-GUID: s-kWrdy6nsE71da5CsKdkAfIvNldLoDQ
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391, 18.0.790
 definitions=2021-07-12_08:2021-07-12,
 2021-07-12 signatures=0
X-Proofpoint-Spam-Reason: safe
X-Mailman-Approved-At: Tue, 13 Jul 2021 06:06:04 -0400
Subject: Re: [Cake] [Bloat] Little's Law mea culpa,
 but not invalidating my main point
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
Cc: "starlink@lists.bufferbloat.net" <starlink@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>, Bob McMahon <bob.mcmahon@broadcom.com>,
 Cake List <cake@lists.bufferbloat.net>,
 "codel@lists.bufferbloat.net" <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: multipart/mixed; boundary="===============1291236172929611178=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1291236172929611178==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_EF8D7620438A4F6594D9B35FDB76FBBDcablecomcastcom_"

--_000_EF8D7620438A4F6594D9B35FDB76FBBDcablecomcastcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAyKSBVc2VycyBhcmUgcGlzc2VkIG9mZiwgYmVjYXVzZSB0aGV5IGNsaWNrZWQgb24gYSB3ZWIg
cGFnZSwgYW5kIGdvdCBub3RoaW5nIGJhY2suIFRoZXkgcmV0cnkgb24gdGhlaXIgc2NyZWVuLCBv
ciB0aGV5IHRyeSBhbm90aGVyIHNpdGUuIE1lYW53aGlsZSwgdGhlIHVuZGVybHlpbmcgVENQIGNv
bm5lY3Rpb24gcmVtYWlucyB0aGVyZSwgcHVtcGluZyB0aGUgbmV0d29yayBmdWxsIG9mIG1vcmUg
cGFja2V0cyBvbiB0aGF0IG9sZCBwYXRoLCB3aGljaCBpcyBzdGlsbCBiYWNrZWQgdXAgd2l0aCBw
YWNrZXRzIHRoYXQgaGF2ZW4ndCBiZWVuIGRlbGl2ZXJlZCB0aGF0IGFyZSBzaXR0aW5nIGluIHF1
ZXVlcy4NCg0KDQoNCkFncmVlLiBJ4oCZdmUgZXhwZXJpZW5jZWQgdGhhdCBhcyB1dGlsaXphdGlv
biBvZiBhIG5ldHdvcmsgc2VnbWVudCBvciBzdXBwb3J0aW5nIG5ldHdvcmsgc3lzdGVtcyAoZS5n
LiBETlMpIGluY3JlYXNlcywgeW91IG1heSBzZWUgdmVyeSBzbWFsbCBkZWxheSBjcmVlcCBpbiAt
IGJ1dCBub3QgbXVjaCBhcyB0aGluZ3MgYXJlIHN0YWJsZSB1bnRpbCB0aGV5IGFyZSAqcXVpdGUg
c3VkZGVubHkqIG5vdCBzby4gQXQgdGhhdCBzdGFiaWxpdHkgaW5mbGVjdGlvbiBwb2ludCB5b3Ug
aW1tZWRpYXRlbHkgJiBkcmFtYXRpY2FsbHkgZmFsbCBvZmYgYSBjbGlmZiwgd2hpY2ggaXMgdGhl
biBleGFjZXJiYXRlZCBieSB3aGF0IHlvdSBub3RlIGhlcmUg4oCTIHVzZXIgYW5kIG1hY2hpbmUt
YmFzZWQgcmV0cmllcy9yZXRyYW5zbWlzc2lvbnMgdGhhdCBkcml2ZXMgYSBodWdlIGluY3JlYXNl
IGluIHRyYWZmaWMuIFRoZSBzb2x1dGlvbiBoYXMgdHlwaWNhbGx5IGJlZW4gdGhyb3dpbmcgbWFz
c2l2ZSBuZXcgY2FwYWNpdHkgYXQgaXQgdW50aWwgdGhlIHN0b3JtIHJlY2VkZXMuDQoNCg0KDQo+
IEkgc2hvdWxkIHNheSB0aGF0IG1vc3Qgb3BlcmF0b3JzLCBhbmQgZXNwZWNpYWxseSBBVFQgaW4g
dGhpcyBjYXNlLCBkbyBub3QgbWVhc3VyZSBlbmQtdG8tZW5kIGxhdGVuY3kuIEluc3RlYWQgdGhl
eSB1c2UgTGl0dGxlJ3MgTGVtbWEgdG8gcXVlcnkgcm91dGVycyBmb3IgdGhlaXIgY3VycmVudCB0
aHJvdWdocHV0IGluIGJpdHMgcGVyIHNlY29uZCwgYW5kIGNhbGN1bGF0ZSBsYXRlbmN5IGFzIGlm
IExpdHRsZSdzIExlbW1hIGFwcGxpZWQuDQoNCg0KDQpJTU8gbmV0d29yayBvcGVyYXRvcnMgdmll
d3MvcHJhY3RpY2VzIHZhcnkgd2lkZWx5ICYgaGF2ZSBiZWVuIGV2b2x2aW5nIHF1aXRlIGEgYml0
IGluIHJlY2VudCB5ZWFycy4gWWVzLCBpdCB1c2VkIHRvIGJlIGFsbCBhYm91dCBjYXBhY2l0eSB1
dGlsaXphdGlvbiBtZXRyaWNzIGJ1dCBJIHRoaW5rIHRoYXQgaXMgY2hhbmdpbmcuIEluIG15IGRh
eSBqb2IsIHdlIHJ1biBFMkUgbGF0ZW5jeSB0ZXN0cyAoYW1vbmcgb3RoZXJzKSB0byBDUEUgYW5k
IHRoZSBkaXN0cmlidXRpb24gaXMgYSBsb3QgbW9yZSBpbnN0cnVjdGl2ZSB0aGFuIHRoZSBtZWFu
L21lZGlhbiB0byBjb250aW51b3VzbHkgaW1wcm92aW5nIHRoZSBuZXR3b3JrIGV4cGVyaWVuY2Uu
DQoNCg0KDQo+IEFuZCBtYW5hZ2VtZW50IHJlc3BvbmRzLCBIb29yYXkhIEJlY2F1c2UgdXRpbGl6
YXRpb24gb2YgMTAwJSBvZiB0aGVpciBoYXJkd2FyZSBpcyB0aGVpciBpbnZlc3RvcnMnIG1ldHJp
YyBvZiBtYXhpbWl6aW5nIHByb2ZpdHMuIFRoZSBoYXJkd2FyZSB0aGV5IGFyZSBvcGVyYXRpbmcg
aXMgZnVsbHkgdXRpbGl6ZWQuIE5vIHdhc3RlISBBbmQgdXNlcnMgYXJlIGhhcHB5IGJlY2F1c2Ug
bm8gcGFja2V0cyBoYXZlIGJlZW4gZHJvcHBlZCENCg0KDQoNCldlbGwsIEkgaG9wZSBpdCB3YXNu
4oCZdCAxMDAlIHV0aWxpemF0aW9uIG1lYW50IHRoZXkgd2VyZSDigJhncmVlbuKAmSBvbiB0aGVp
ciBuZXR3b3JrIEtQSXMuIDstKSBIYS4gQnV0IEkgdGhpbmsgeW91IGFyZSBjb3JyZWN0IHRoYXQg
YSBuZXR3b3JrIGVuZ2luZWVyaW5nIHRlYW0gd291bGQgaGF2ZSBiZWVuIG1lYXN1cmVkIGJ5IGhv
dyB3ZWxsIHRoZXkga2VwdCBhaGVhZCBvZiB1dGlsaXphdGlvbi9kZW1hbmQgJiBuZXR3b3JrIGNh
cGFjaXR5IGRlY2lzaW9ucyBkcml2ZW4gaW4gbGFyZ2UgcGFydCBieSB1dGlsaXphdGlvbiB0cmVu
ZHMuIEluIGEgbG90IG9mIG5ldHdvcmtzIEkgc3VzcGVjdCBhbiBpbmZvcm1hbCBydWxlIG9mIHRo
dW1iIGFyb3NlIHRoYXQgdGhpbmdzIGdvdCBhIGxpdHRsZSBmdW5ueSBvbmNlIHA5OCB1dGlsaXph
dGlvbiBnb3QgdG8gYXJvdW5kIDk0LTk1JSBvZiBsaW5rIGNhcGFjaXR5IOKAkyBzbyBiYWNrdXAg
ZnJvbSB0aGVyZSB0byBmaWd1cmUgb3V0IHdoZW4geW91IG5lZWQgdG8gdHJpZ2dlciBhdXRvbWF0
aWMgY2FwYWNpdHkgYXVnbWVudHMgdG8gYXZvaWQgdGhhdC4gV2hpbGUgSSBkbyBub3QgdGhpbmsg
bWFuYWdpbmcgdmlhIHV0aWxpemF0aW9uIGluIHRoYXQgd2F5IGlzIGluY29ycmVjdCwgSVNUTSBp
dOKAmXMgbW9zdGx5IGJlaW5nIHVzZWQgYXMgdGhlIG1lYXN1cmUgaXMgYW4gaW5kaXJlY3QgcHJv
eHkgZm9yIGVuZCB1c2VyIFFvRS4gSSB0aGluayBsYXRlbmN5L2RlbGF5IGlzIGJlY29taW5nIHNl
ZW4gdG8gYmUgYXMgaW1wb3J0YW50IGNlcnRhaW5seSwgaWYgbm90IGEgbW9yZSBkaXJlY3QgcHJv
eHkgZm9yIGVuZCB1c2VyIFFvRS4gVGhpcyBpcyBhbGwgc3RpbGwgZXZvbHZpbmcgYW5kIEkgaGF2
ZSB0byBzYXkgaXMgYSBzdXBlciBpbnRlcmVzdGluZyAmIGZ1biB0aGluZyB0byB3b3JrIG9uLiA6
LSkNCg0KDQoNCkphc29uDQoNCg0KDQoNCg0KDQoNCg0KDQoNCg0KDQo=

--_000_EF8D7620438A4F6594D9B35FDB76FBBDcablecomcastcom_
Content-Type: text/html; charset="utf-8"
Content-ID: <62B10EB178619B448DE8B149E086A5CB@namprd11.prod.outlook.com>
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
Ci8qIFN0eWxlIERlZmluaXRpb25zICovDQpzcGFuLkVtYWlsU3R5bGUyMQ0KCXttc28tc3R5bGUt
dHlwZTpwZXJzb25hbC1yZXBseTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsN
Cgljb2xvcjp3aW5kb3d0ZXh0O30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4
cG9ydC1vbmx5Ow0KCWZvbnQtc2l6ZToxMC4wcHQ7fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3Np
emU6OC41aW4gMTEuMGluOw0KCW1hcmdpbjoxLjBpbiAxLjBpbiAxLjBpbiAxLjBpbjt9DQpkaXYu
V29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+DQo8L2hlYWQ+
DQo8Ym9keSBsYW5nPSJFTi1VUyIgbGluaz0iYmx1ZSIgdmxpbms9InB1cnBsZSIgc3R5bGU9Indv
cmQtd3JhcDpicmVhay13b3JkIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBzdHls
ZT0ibWFyZ2luOjBpbiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxNC4wcHQiPiZndDsgMikgVXNl
cnMgYXJlIHBpc3NlZCBvZmYsIGJlY2F1c2UgdGhleSBjbGlja2VkIG9uIGEgd2ViIHBhZ2UsIGFu
ZCBnb3Qgbm90aGluZyBiYWNrLiBUaGV5IHJldHJ5IG9uIHRoZWlyIHNjcmVlbiwgb3IgdGhleSB0
cnkgYW5vdGhlciBzaXRlLiBNZWFud2hpbGUsIHRoZSB1bmRlcmx5aW5nIFRDUCBjb25uZWN0aW9u
IHJlbWFpbnMgdGhlcmUsIHB1bXBpbmcgdGhlDQogbmV0d29yayBmdWxsIG9mIG1vcmUgcGFja2V0
cyBvbiB0aGF0IG9sZCBwYXRoLCB3aGljaCBpcyBzdGlsbCBiYWNrZWQgdXAgd2l0aCBwYWNrZXRz
IHRoYXQgaGF2ZW4ndCBiZWVuIGRlbGl2ZXJlZCB0aGF0IGFyZSBzaXR0aW5nIGluIHF1ZXVlcy4N
CjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIHN0eWxlPSJtYXJnaW46MGluIj48c3BhbiBzdHls
ZT0iZm9udC1zaXplOjE0LjBwdCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgc3R5
bGU9Im1hcmdpbjowaW4iPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTQuMHB0Ij5BZ3JlZS4gSeKA
mXZlIGV4cGVyaWVuY2VkIHRoYXQgYXMgdXRpbGl6YXRpb24gb2YgYSBuZXR3b3JrIHNlZ21lbnQg
b3Igc3VwcG9ydGluZyBuZXR3b3JrIHN5c3RlbXMgKGUuZy4gRE5TKSBpbmNyZWFzZXMsIHlvdSBt
YXkgc2VlIHZlcnkgc21hbGwgZGVsYXkgY3JlZXAgaW4gLSBidXQgbm90IG11Y2ggYXMgdGhpbmdz
IGFyZSBzdGFibGUgdW50aWwgdGhleSBhcmUNCiAqPGI+cXVpdGUgc3VkZGVubHk8L2I+KiBub3Qg
c28uIEF0IHRoYXQgc3RhYmlsaXR5IGluZmxlY3Rpb24gcG9pbnQgeW91IGltbWVkaWF0ZWx5ICZh
bXA7IGRyYW1hdGljYWxseSBmYWxsIG9mZiBhIGNsaWZmLCB3aGljaCBpcyB0aGVuIGV4YWNlcmJh
dGVkIGJ5IHdoYXQgeW91IG5vdGUgaGVyZSDigJMgdXNlciBhbmQgbWFjaGluZS1iYXNlZCByZXRy
aWVzL3JldHJhbnNtaXNzaW9ucyB0aGF0IGRyaXZlcyBhIGh1Z2UgaW5jcmVhc2UgaW4gdHJhZmZp
Yy4gVGhlDQogc29sdXRpb24gaGFzIHR5cGljYWxseSBiZWVuIHRocm93aW5nIG1hc3NpdmUgbmV3
IGNhcGFjaXR5IGF0IGl0IHVudGlsIHRoZSBzdG9ybSByZWNlZGVzLjxvOnA+PC9vOnA+PC9zcGFu
PjwvcD4NCjxwIHN0eWxlPSJtYXJnaW46MGluO292ZXJmbG93LXdyYXA6IGJyZWFrLXdvcmQiPjxz
cGFuIHN0eWxlPSJmb250LXNpemU6MTQuMHB0Ij4mbmJzcDs8bzpwPjwvbzpwPjwvc3Bhbj48L3A+
DQo8cCBzdHlsZT0ibWFyZ2luOjBpbjtvdmVyZmxvdy13cmFwOiBicmVhay13b3JkIj48c3BhbiBz
dHlsZT0iZm9udC1zaXplOjE0LjBwdCI+Jmd0OyBJIHNob3VsZCBzYXkgdGhhdCBtb3N0IG9wZXJh
dG9ycywgYW5kIGVzcGVjaWFsbHkgQVRUIGluIHRoaXMgY2FzZSwgZG8gbm90IG1lYXN1cmUgZW5k
LXRvLWVuZCBsYXRlbmN5LiBJbnN0ZWFkIHRoZXkgdXNlIExpdHRsZSdzIExlbW1hIHRvIHF1ZXJ5
IHJvdXRlcnMgZm9yIHRoZWlyIGN1cnJlbnQgdGhyb3VnaHB1dA0KIGluIGJpdHMgcGVyIHNlY29u
ZCwgYW5kIGNhbGN1bGF0ZSBsYXRlbmN5IGFzIGlmIExpdHRsZSdzIExlbW1hIGFwcGxpZWQuPG86
cD48L286cD48L3NwYW4+PC9wPg0KPHAgc3R5bGU9Im1hcmdpbjowaW4iPjxzcGFuIHN0eWxlPSJm
b250LXNpemU6MTQuMHB0Ij48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBzdHlsZT0i
bWFyZ2luOjBpbiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxNC4wcHQiPklNTyBuZXR3b3JrIG9w
ZXJhdG9ycyB2aWV3cy9wcmFjdGljZXMgdmFyeSB3aWRlbHkgJmFtcDsgaGF2ZSBiZWVuIGV2b2x2
aW5nIHF1aXRlIGEgYml0IGluIHJlY2VudCB5ZWFycy4gWWVzLCBpdCB1c2VkIHRvIGJlIGFsbCBh
Ym91dCBjYXBhY2l0eSB1dGlsaXphdGlvbiBtZXRyaWNzIGJ1dCBJIHRoaW5rIHRoYXQgaXMgY2hh
bmdpbmcuIEluIG15IGRheSBqb2IsIHdlDQogcnVuIEUyRSBsYXRlbmN5IHRlc3RzIChhbW9uZyBv
dGhlcnMpIHRvIENQRSBhbmQgdGhlIGRpc3RyaWJ1dGlvbiBpcyBhIGxvdCBtb3JlIGluc3RydWN0
aXZlIHRoYW4gdGhlIG1lYW4vbWVkaWFuIHRvIGNvbnRpbnVvdXNseSBpbXByb3ZpbmcgdGhlIG5l
dHdvcmsgZXhwZXJpZW5jZS4NCjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIHN0eWxlPSJtYXJn
aW46MGluIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjE0LjBwdCI+PG86cD4mbmJzcDs8L286cD48
L3NwYW4+PC9wPg0KPHAgc3R5bGU9Im1hcmdpbjowaW47b3ZlcmZsb3ctd3JhcDogYnJlYWstd29y
ZCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxNC4wcHQiPiZndDsgQW5kIG1hbmFnZW1lbnQgcmVz
cG9uZHMsIEhvb3JheSEgQmVjYXVzZSB1dGlsaXphdGlvbiBvZiAxMDAlIG9mIHRoZWlyIGhhcmR3
YXJlIGlzIHRoZWlyIGludmVzdG9ycycgbWV0cmljIG9mIG1heGltaXppbmcgcHJvZml0cy4gVGhl
IGhhcmR3YXJlIHRoZXkgYXJlIG9wZXJhdGluZyBpcyBmdWxseSB1dGlsaXplZC4NCiBObyB3YXN0
ZSEgQW5kIHVzZXJzIGFyZSBoYXBweSBiZWNhdXNlIG5vIHBhY2tldHMgaGF2ZSBiZWVuIGRyb3Bw
ZWQhPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgc3R5bGU9Im1hcmdpbjowaW47b3ZlcmZsb3ct
d3JhcDogYnJlYWstd29yZCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxNC4wcHQiPiZuYnNwOzxv
OnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIHN0eWxlPSJtYXJnaW46MGluIj48c3BhbiBzdHlsZT0i
Zm9udC1zaXplOjE0LjBwdCI+V2VsbCwgSSBob3BlIGl0IHdhc27igJl0IDEwMCUgdXRpbGl6YXRp
b24gbWVhbnQgdGhleSB3ZXJlIOKAmGdyZWVu4oCZIG9uIHRoZWlyIG5ldHdvcmsgS1BJcy4gOy0p
IEhhLiBCdXQgSSB0aGluayB5b3UgYXJlIGNvcnJlY3QgdGhhdCBhIG5ldHdvcmsgZW5naW5lZXJp
bmcgdGVhbSB3b3VsZCBoYXZlIGJlZW4gbWVhc3VyZWQgYnkgaG93IHdlbGwgdGhleSBrZXB0IGFo
ZWFkDQogb2YgdXRpbGl6YXRpb24vZGVtYW5kICZhbXA7IG5ldHdvcmsgY2FwYWNpdHkgZGVjaXNp
b25zIGRyaXZlbiBpbiBsYXJnZSBwYXJ0IGJ5IHV0aWxpemF0aW9uIHRyZW5kcy4gSW4gYSBsb3Qg
b2YgbmV0d29ya3MgSSBzdXNwZWN0IGFuIGluZm9ybWFsIHJ1bGUgb2YgdGh1bWIgYXJvc2UgdGhh
dCB0aGluZ3MgZ290IGEgbGl0dGxlIGZ1bm55IG9uY2UgcDk4IHV0aWxpemF0aW9uIGdvdCB0byBh
cm91bmQgOTQtOTUlIG9mIGxpbmsgY2FwYWNpdHkg4oCTIHNvIGJhY2t1cA0KIGZyb20gdGhlcmUg
dG8gZmlndXJlIG91dCB3aGVuIHlvdSBuZWVkIHRvIHRyaWdnZXIgYXV0b21hdGljIGNhcGFjaXR5
IGF1Z21lbnRzIHRvIGF2b2lkIHRoYXQuIFdoaWxlIEkgZG8gbm90IHRoaW5rIG1hbmFnaW5nIHZp
YSB1dGlsaXphdGlvbiBpbiB0aGF0IHdheSBpcyBpbmNvcnJlY3QsIElTVE0gaXTigJlzIG1vc3Rs
eSBiZWluZyB1c2VkIGFzIHRoZSBtZWFzdXJlIGlzIGFuIGluZGlyZWN0IHByb3h5IGZvciBlbmQg
dXNlciBRb0UuIEkgdGhpbmsgbGF0ZW5jeS9kZWxheQ0KIGlzIGJlY29taW5nIHNlZW4gdG8gYmUg
YXMgaW1wb3J0YW50IGNlcnRhaW5seSwgaWYgbm90IGEgbW9yZSBkaXJlY3QgcHJveHkgZm9yIGVu
ZCB1c2VyIFFvRS4gVGhpcyBpcyBhbGwgc3RpbGwgZXZvbHZpbmcgYW5kIEkgaGF2ZSB0byBzYXkg
aXMgYSBzdXBlciBpbnRlcmVzdGluZyAmYW1wOyBmdW4gdGhpbmcgdG8gd29yayBvbi4gOi0pPG86
cD48L286cD48L3NwYW4+PC9wPg0KPHAgc3R5bGU9Im1hcmdpbjowaW4iPjxzcGFuIHN0eWxlPSJm
b250LXNpemU6MTQuMHB0Ij48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBzdHlsZT0i
bWFyZ2luOjBpbiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxNC4wcHQiPkphc29uPG86cD48L286
cD48L3NwYW4+PC9wPg0KPHAgc3R5bGU9Im1hcmdpbjowaW4iPjxzcGFuIHN0eWxlPSJmb250LXNp
emU6MTQuMHB0Ij48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBzdHlsZT0ibWFyZ2lu
OjBpbiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxNC4wcHQiPjxvOnA+Jm5ic3A7PC9vOnA+PC9z
cGFuPjwvcD4NCjxwIHN0eWxlPSJtYXJnaW46MGluIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjE0
LjBwdCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgc3R5bGU9Im1hcmdpbjowaW4i
PjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTQuMHB0Ij48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48
L3A+DQo8cCBzdHlsZT0ibWFyZ2luOjBpbiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxNC4wcHQi
PjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIHN0eWxlPSJtYXJnaW46MGluIj48c3Bh
biBzdHlsZT0iZm9udC1zaXplOjE0LjBwdCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0K
PC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_EF8D7620438A4F6594D9B35FDB76FBBDcablecomcastcom_--

--===============1291236172929611178==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1291236172929611178==--

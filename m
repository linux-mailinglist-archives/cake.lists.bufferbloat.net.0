Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F022A79089
	for <lists+cake@lfdr.de>; Wed,  2 Apr 2025 16:00:11 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C19FD3CB4D;
	Wed,  2 Apr 2025 10:00:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1743602409;
	bh=cLVXJapQqwiJxxaUZf+f/mQMpPnidonvYANn5CH7LPY=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=KI4WVRzNDkKP2mgZ39iYEw5MHfsgJXnvjsomBxamcC79dPkXomIe9znjZznf4bPiZ
	 UnMhNrYnQu3Fo2Fvd7Chxf35GLUtgoJk9bTBO4/VjnwQsttxGl6rFMQTeiQ9cb9WOh
	 5QAqHP04He0aHBVPpruIIf8pJ9S2KWr/10E013+b8tbX6S8ufKi7LYeoe82g8Tkd66
	 4aW75YVzxbvyewGEfUcwPVZA/PIl3t6w0yCO5Q9um1BhTrbAJUTtXZcC3dM37hv147
	 m86GMLEnCpVGEBydyMUjs/mdsxu4dLKSc62Q5taG9Ib/erqc41hAxig9mDu82yiQIz
	 eXGxcA/HgETJQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mx0b-00143702.pphosted.com (mx0b-00143702.pphosted.com
 [148.163.141.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C4F9A3B2A4;
 Wed,  2 Apr 2025 10:00:07 -0400 (EDT)
Received: from pps.filterd (m0184891.ppops.net [127.0.0.1])
 by mx0b-00143702.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 532Dhnmq018082;
 Wed, 2 Apr 2025 10:00:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.com; h=
 content-id:content-transfer-encoding:content-type:date:from
 :in-reply-to:message-id:mime-version:references:subject:to; s=
 20190412; bh=LEI+fxIXe5A4s0kKSfCYsKfZDBRWNH4KpQbUGyOg+6k=; b=iCW
 Da6IERkxL4EyNmFYMHCC1+ORt7g19ftMO79Gbsp9qRHFdf1eP3ibags0wjLtLmoZ
 jW6TRzXpsY8E76eChjymZiqBcDsj1g3oVuPjz+wXzrr6nioA5eF7QBM3dZuzNV3R
 YYrHFICb5m9STWWMWJ6o1EF8/mPz9ov4TbxYPDJYkerSkSlwe4xrxqZJOQj39vqE
 3YcjCkWTyhWWfIWcnSDn/LL7Jkv/mEjOO5M1DFuf7E/mJ+HbeOtzpNZ8nNW75GDZ
 3p53YCS106U0d47FcFJjmMJHLQOSb8IN6Ut56ZCsWqxgGW06+IsOgnZNbNEmLiU+
 CUByA9eMw6b/AUpkmdw==
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2040.outbound.protection.outlook.com [104.47.70.40])
 by mx0b-00143702.pphosted.com (PPS) with ESMTPS id 45rptrn40r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 02 Apr 2025 10:00:00 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PpApRhLqNPa/7Xa6K5nSNTsSSgm+4QgwlCUKt0Qn6kOpXb5RF14Km+a8kN5M0BDZYQtU+QXPjae++EyjgLUoHc22f4BPPmCVEEYkihvB3xwMSuP/KIEPMWKAsxnISSUtB3Sp7xemiIXLZFHHpJzwQA5lUJ99DF1GJKu5my8asZHkz4LaYB2YFWIBm4xqm3yaTR2/CAc/FvfqjrVm3Dj+Q5sSYMg+y3HACTpkfPYTs+Wj9YRQLmoJ+X5mzaZL6GTtM5e2pa+59KHRCXsxCWDFl/sRu/IhVl7rIT1RESkVEWOUsVZ+QfiY0URqp71rvvcIDGh4TudcNqCB8XP3UW1MhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LEI+fxIXe5A4s0kKSfCYsKfZDBRWNH4KpQbUGyOg+6k=;
 b=ackx69stbOoIsHP9a3wqWDmi9SteCn/69ihjYTTj20Ek+k+pjBIEYYPopkPJTvyH6J4uFG0os5qABoJ5OdObcZoLjcUSNJYs6GeCUSiyaBhXi67s6zc370iy2P/vkmY4wPclgJ688oIyLwrjwi9OSmBY+42V6d9NevY15SoAgD2JViczXsM7aKXVnuCgZkcWoHfZ1Gj1jswxwo8zeqhB8YFa7SBAKHYENPRgAlWvKUbB6hNpHzrLEsyf2Kp+ra+0yyFDeC9wNtuZfRcGkLON4kaf0Xw+OyOIV3mTPnD0Iq6n14dBVZ7icHxjxZIJkbOf2UcVhQ4hqvVoSFi7KY5l1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=comcast.com; dmarc=pass action=none header.from=comcast.com;
 dkim=pass header.d=comcast.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=comcastcorp.onmicrosoft.com; s=selector1-comcastcorp-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LEI+fxIXe5A4s0kKSfCYsKfZDBRWNH4KpQbUGyOg+6k=;
 b=eXcjg+If0ch9XRMzf3YF5HFCPn/l5ktEabyXUBH9/CR6GJfOMsDOMOF2RsJmcMkRz8RMOn1yKyYzvBWtURxYKo8fcazSr3nPNRTlUS5nzbj5fmRULvaCX+H2E7VLXEQFBhRfA8qtuKP6TIQi4RDf3evFKujqgV5gELFX9AKa9V8=
Received: from LV1PR11MB8852.namprd11.prod.outlook.com (2603:10b6:408:2b5::12)
 by CYYPR11MB8432.namprd11.prod.outlook.com (2603:10b6:930:be::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Wed, 2 Apr
 2025 13:59:58 +0000
Received: from LV1PR11MB8852.namprd11.prod.outlook.com
 ([fe80::3205:266d:9fa3:8f74]) by LV1PR11MB8852.namprd11.prod.outlook.com
 ([fe80::3205:266d:9fa3:8f74%4]) with mapi id 15.20.8534.043; Wed, 2 Apr 2025
 13:59:58 +0000
To: Vint Cerf <vint@google.com>, Frantisek Borsik <frantisek.borsik@gmail.com>,
 "codel-wireless@lists.bufferbloat.net"
 <codel-wireless@lists.bufferbloat.net>, Jeremy Austin via Rpm
 <rpm@lists.bufferbloat.net>, "cerowrt-commits@lists.bufferbloat.net"
 <cerowrt-commits@lists.bufferbloat.net>, Make-Wifi-fast
 <make-wifi-fast@lists.bufferbloat.net>, libreqos
 <libreqos@lists.bufferbloat.net>, Dave Taht via Starlink
 <starlink@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 "Frantisek (Frank) Borsik" <frank@libreqos.io>,
 =?utf-8?B?TmV0d29yayBOZXV0cmFsaXR5IGlzIGJhY2shIExldMK0cyBtYWtlIHRoZSB0?=
 =?utf-8?Q?echnical_aspects_heard_this_time!?=
 <nnagain@lists.bufferbloat.net>, "codel@lists.bufferbloat.net"
 <codel@lists.bufferbloat.net>, "cerowrt-devel@lists.bufferbloat.net"
 <cerowrt-devel@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, "bloat-ietf@lists.bufferbloat.net"
 <bloat-ietf@lists.bufferbloat.net>, "cerowrt-users@lists.bufferbloat.net"
 <cerowrt-users@lists.bufferbloat.net>, =?utf-8?B?Um9iZXJ0IENoYWPDs24=?=
 <robert@libreqos.io>
Thread-Topic: =?utf-8?B?W0Jsb2F0XSBJbiBsb3ZpbmcgbWVtb3J5IG9mIERhdmUgVMOkaHQgPDM=?=
Thread-Index: AQHboysvpU9ogSaEd02HSQd6iGi/HLOPlKUAgACCMoCAAAzeAIAAAe+A
Date: Wed, 2 Apr 2025 13:59:57 +0000
Message-ID: <8DA2934A-43D1-4700-8F32-CA424C3FAE8D@comcast.com>
References: <CAJUtOOizHZCey6KihyRHkZ9N4FJwyzuM5RL6QXPejCSWnbPE3g@mail.gmail.com>
 <014po62q-r99p-71np-52r1-n84n9np63nqr@ynat.uz> <87plhvlyoc.fsf@toke.dk>
 <976DC4FC-44CA-4C7E-90E0-DE39B57F01E1@comcast.com>
In-Reply-To: <976DC4FC-44CA-4C7E-90E0-DE39B57F01E1@comcast.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.95.25030928
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8852:EE_|CYYPR11MB8432:EE_
x-ms-office365-filtering-correlation-id: 1c80053d-c9a3-4420-0018-08dd71eea756
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|7093399015|1800799024|376014|38070700018|13003099007|921020;
x-microsoft-antispam-message-info: =?utf-8?B?ZlFtNGFMKzJXN1ZEdFA3VVNza1hNNzFkcWJVeTBjc1pLVVd3ZHVvSkhiUlhi?=
 =?utf-8?B?WW0vY0d5U205MHJTbTdpVFV2YURyZFlkZ3pXcGEvUFJlbWxJbE5yWXZIUS9q?=
 =?utf-8?B?RVhkMk95NzhtNlZUK0JldTdwanpTZ0pSc004UGZPcysycUxhZGxKMEoxQy9h?=
 =?utf-8?B?bXc4eHQ2b1pRQjFrWTdZVWNwcjRKS1JSM2habHZvL1V0UTZML2lVZ1ZoSGo0?=
 =?utf-8?B?bzBDdG1xK3l4V09jQmc2V3BCQzRwK3RTOFVUaVpoeTQ5Zy8vaVllbWVUYnEy?=
 =?utf-8?B?NFVaUUFnQW1tYXJHWloxTmhwb3RaVXhZcDFNTFRxWGZLRjhaTWZnMDZSekhz?=
 =?utf-8?B?cFQycnNYbzdGcnd5UThCN1dYY0NZK21kcHUrdTVtTEVNSEM5dlgzV0dpSzlx?=
 =?utf-8?B?QVVHR1YyTllCa0FCcnRpM2V3eXh3aG9tOVdJOW9jRkFaMThCT3gxUGhIN2g3?=
 =?utf-8?B?dkFJZkpqSXd6QSsxaG8zZ2Y1RUlqMHpkdGlxTGg4RDd2Q1MrVmR2TS9EcitG?=
 =?utf-8?B?cmorSXZYN3h2V3B4elVzWGtWRVBGV1l0MWFueWRKZlA3YXdkMWhmNitWZTJj?=
 =?utf-8?B?bFBOUldrZS9vSFZXU0dYakVFSWIwL1pxclBvK2lwK0o0ZVpqQ0dKTjVmRjV2?=
 =?utf-8?B?cHBlYjRWbXdIaFI5cFVxTXZGL29wandvdm04dTAvVkZFcUtJRFg4YzM4eGx1?=
 =?utf-8?B?TkhEZ245OWFDU05NbTBFUEw0bjBEZy9ZaExUVFVjRysxT1AzUGt0RHJ4SWRD?=
 =?utf-8?B?enl0Y2xMTVpGSGR1NzdwaHZvdXZtbDNtdktUWUk3Tkg3a2Z1Z1crU2dKN3A3?=
 =?utf-8?B?cDlnK3lkMjZwTmRoSHFNaWxMOHIzMDVZeUlyazFwcmVWQkMwbkF0RmhyM2hK?=
 =?utf-8?B?K2V2U3E0RktQS2o2V24yRkk1ZG5sczQ5K05WWjRXTzFWUmNYdTNOOXozM2Nm?=
 =?utf-8?B?S1p6SjBEOFRYbEdFMm9xdkJkcS9rTk45MXdnd0xrK3NGcEJNazRGK0F6NkpL?=
 =?utf-8?B?b09sWWkvN0lGYVlwTlY3V01ENFFwSUJqeGtXMjRpS1dwR0ZJL3FuemNxWGhu?=
 =?utf-8?B?aUVOSHZVaXJNVTJZOXM5Umk0M3luTkdzMThJUTQ5RjRlL1NZeG1JNEVUVUI2?=
 =?utf-8?B?QW83NGFXYWZqMFJDMXEwSW5OOUZUM2VHWGVrYzJrV29hbHBYMG55N1NRTkNn?=
 =?utf-8?B?WWRsNEtBMUdLY2hWSDRLb0FvWjFYckRxdjAyS0kxeHZXOGFLWHhMdWsvVzZX?=
 =?utf-8?B?V3orVU11aWcvL2VaTE1Yd1lzeit3aFI1UnhyOGp5WHpXeFYvUkg4K0RUei9U?=
 =?utf-8?B?cmZYR3dXZEpYbnEyWmdZaHRBRVc3K1VadVVGbGNoZHBWZXFqdGUwajFYU0lk?=
 =?utf-8?B?VnJWVVMvZjVzSEtwLzZ0cjRqTzNxR3RObmZDOUl6c04wQWppNU4waDg5S1VH?=
 =?utf-8?B?blBoamdQemxzVVd2Wmg0dDA2S1hGYzN3cjJ5elVxSG15OWpkZklDOTlsOFU3?=
 =?utf-8?B?RE9aOUV1SGlSZEZ3RnJBdHpjcEt6WWdvdmJFelBhMnJBSGRVZWE4UEZWbGdr?=
 =?utf-8?B?VXdXOVA3dVF6V0dxNDJkZXlUd3VYOGdCaVpheWxEMHk5WmtCZnl1dFRYekpi?=
 =?utf-8?B?STFKektmRUtHY1JSbFFtd29mQUVaS3d0WDIyZFA2NHNaU1BYZWUxMkZ0cWl6?=
 =?utf-8?B?QVVvMmxRUys4WnJSQjgwUDlaaUtBM0wxbVlKSENhTmdhQjNzbDJUMUZHWkRZ?=
 =?utf-8?B?MW9nSUsvMWY3bnd1UHVLMW9TZTVBcnVPbzU2NTZWVEhWVVZrTncwMGtGMGdH?=
 =?utf-8?B?clB1aGp6R0lsVEQrL0NXeHJCM1Nqb3ZVTThGa2R2OTFLTExmNkhQN0tRdm5s?=
 =?utf-8?B?a1pYNkhNS1lzUzhPWHgvSzN3cGNlVE4zRjhkVGk0ZDcydGc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8852.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(7093399015)(1800799024)(376014)(38070700018)(13003099007)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R29lQzdpNFRxakR3WWllUit6SldXZHh2TGZNOEhvNmVSL1ZUNFVjaTEvUlIy?=
 =?utf-8?B?OXVBaWxuenY3MndqREp0LzNZUXdjL1hnMHZianVtcFc4SlBET3N4U2JkVFhF?=
 =?utf-8?B?V3lqNG5RTDF3cXErU3NlMUE1N0xWdElmWlQwV1dQTTFja3hJME02aXlYM1Y0?=
 =?utf-8?B?QWRaWVliT0Z6NUF0Vy9Sc0hsNE9qRkhDamdzZmMydWhZb2paZmdsM3VuaVNX?=
 =?utf-8?B?ekZkUVFlOEtJSHpIdExzOTRNQmxSQk42aVhCUUpSeWJBaE45TGJBRzZVQ00v?=
 =?utf-8?B?Zi9TU1N1K1dGbFlmeVhJOXJ0cGpJRVk4RjZkSFI5RDZtbXBScXdvTm5tdVN5?=
 =?utf-8?B?bjZFL3pycnpaUGkyWGcrYUVKQS9idGxtSHZuQ1JkREN6am5LL1hrMjNzM05m?=
 =?utf-8?B?M1l5ZDB6ZVdtVDQrQllvQTJpMWxSL1BqS1lGWFJ6S2pOWHlFOTlvbENBbmhn?=
 =?utf-8?B?WTNKMTM3S3ZMZnNHcWNUZUNpZXp0eU02MVUzSTFiamZ2ODQycGVUOCs3TjFo?=
 =?utf-8?B?dWRmVlhzN2hwYVE5WWtEdzEvZTVLc0VxSWNqY1VYQ0FzRmMxanJoWUxLL2hI?=
 =?utf-8?B?UEVJRzdsUVBhYVVGc01QeTlpclgxQ1lDY295YU9BZjFONS9ORGFoYkJZVEYr?=
 =?utf-8?B?bzJ2SGg1a2RZd3RTTUtpREFWNzBiS0U5OGFKRkZqN2I2Yk9lbG54ckFnaE9V?=
 =?utf-8?B?QVdxR2NzQW8vNGlPbFRXQ1BMN1ZROHU2bDIzb043YU5jUzZkWkUzR1lFdCtW?=
 =?utf-8?B?S2N4b0JmbmNFbHhhOEtQbS96TldVYjV6RFlOeGpHUmJ6MndJVlBQUmVJNDg3?=
 =?utf-8?B?RWlYMndqMlVOZVQ0Q2dqeUF2QjJVWTQySEtsK3REaVRWdkZJbzZ5SG9USTNM?=
 =?utf-8?B?U1dLWWI4NTN1eGxVWlNGNlhMc0dJVGFaeTd1RjRKbENuWngwT2RlVklmR1h1?=
 =?utf-8?B?emRHZzlXS2wvZ0tXZUZuaHNpdTF1Sys1WEFtVXh3YkhpWG90SG5NdlpmK0JR?=
 =?utf-8?B?WkZ3aUc2R2ZSdVFhT0M1dHRiTGdYdk1nK1p3VUJSNEszeUVFU2pSeVZ5c3BB?=
 =?utf-8?B?Q1Nsd2ZUcHFuWDYzbjFMNjR2cStXeUZnVDU5MW53Rk5KVllSYmV1UHh6TFFw?=
 =?utf-8?B?Tmk3V1lvZU5lN3diM0ZlcC9VMlVWVEpIUzZ4RWd5MGIvZkVrOCt6R3h6L203?=
 =?utf-8?B?Vm93NXNXOS8rNlhkMURrbjBtV0ZRTytiVGovMnVuclpCa2N6eWdOTmQ4eGFk?=
 =?utf-8?B?S3FoWHBLaC9iSXd4S1J5K1ZJOFBOc1BZR2treWpYd2tZSHd2WjAxREQyTWN4?=
 =?utf-8?B?ZDNuTU1ESUZOUUl4Y2hhYkRpdnpmNlFOVU5Xc3hpU2ZKY3JmQ2NiM1BrZlI2?=
 =?utf-8?B?U1RXTUFtQUFET0VuU0RIa0pFVGE0MktGWnZzUk9VWGhydFFRZ2xLMmlVT1py?=
 =?utf-8?B?Tkw1ajZML3NUanUrZkRNU1cvQStRam9IaS9TS0xvQllwRTVydjFMTzJUZi9G?=
 =?utf-8?B?N3ZDYkxrNXhjSC8wVFF1TjBnd1lHMERKUTFCNzdJcittVk1KNHJ4OWpoYTg2?=
 =?utf-8?B?YXRiR3V5YmtLWTc3Wm41N3hOUmt6akJsTmIzT2FLNWg3TjdGeVdqSjVXWlgw?=
 =?utf-8?B?LzdQVjRtVDJuNmEzc1RQU0FLb0NudWFPTzdCNnFlS1NHNDZCSTFCRUo5TDV5?=
 =?utf-8?B?bDJ0b0tUeXBZVmRhRURPU1dhQXhXeUFkMlZKbElVUXZ5R0NnWllISHFyQ3Br?=
 =?utf-8?B?aWRuejdPOWhUbWJ3TlhvNkRLdm54RnF0Mk1odXV6RFoxUlVZcjViaTZJMk5Z?=
 =?utf-8?B?enIxcytDc0RjeHlYL25RUHowYzMxbDBCajMzWmQweU0zL3dIZjFBT29pZms4?=
 =?utf-8?B?aEJRQk1JeFJLcEw4NGVjeU9YeERjWEo2R1hPRTRMTG1EQ29qd3dXZVprWC82?=
 =?utf-8?B?cktoTXVGVjhZWnpPT2MzODd5d1lpYlJSbTBOY05tOVhHTzJINWtJQWtsUWRS?=
 =?utf-8?B?emFFb2h1REs0a3R2OUJ2d29JVHNlVTcxb3h2Ly8zeVdVSDVoSGl5aHNCZzk5?=
 =?utf-8?B?aEhSR2J2WVRUbk43WTFUaGpUQzJZVFJqRzJNSXlqeVhyNW1yd01TSnBqZ1U5?=
 =?utf-8?B?MmxKY0pzU3FFVEF5S2RQYWw0US90V2xOWmtiblZKK2h6K0VZL09HRHUxaVp6?=
 =?utf-8?B?Mmc9PQ==?=
Content-ID: <38B635E82BF0D448A3081F1F5C9EC6CF@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: comcast.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8852.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c80053d-c9a3-4420-0018-08dd71eea756
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2025 13:59:57.9511 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 906aefe9-76a7-4f65-b82d-5ec20775d5aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RKve5g1/Rrb8wKWzQ8TivtyVKN5VqJR7F0ltNB13eCvJdn1bUOM22N5q3C8WqPbYLwPKpwzF/s4rsisr8QFHEl5eJXmI9SvGIUlCkn1cLzs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8432
X-Proofpoint-ORIG-GUID: wN5hVcZ-IHMbpFqDGWir7cZtvNKBAH-V
X-Proofpoint-GUID: wN5hVcZ-IHMbpFqDGWir7cZtvNKBAH-V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-02_05,2025-04-02_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=999
 malwarescore=0 clxscore=1011 bulkscore=0 suspectscore=0 phishscore=0
 spamscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504020088
Subject: Re: [Cake]
	=?utf-8?q?=5BBloat=5D_In_loving_memory_of_Dave_T=C3=A4ht_?=
	=?utf-8?q?=3C3?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

VmVyeSBzYWQgbmV3cyBpbmRlZWQhIEkgaGFkIHRoZSBwbGVhc3VyZSBvZiB3b3JraW5nIGNsb3Nl
bHkgd2l0aCBEYXZlIGZvciAxNSB5ZWFycy4gSGUgd2FzIGdlbmVyb3VzIHdpdGggaGlzIHRpbWUg
YW5kIGhhZCBhIHVuaXF1ZSB3YXkgb2YgYnJpbmdpbmcgcGVvcGxlIHRvZ2V0aGVyIHRvIG1ha2Ug
dGhlIGludGVybmV0IGJldHRlciBmb3IgZXZlcnlvbmUhDQoNCg0KSSBoYWQgdG8gZ28gZG93biBt
ZW1vcnkgbGFuZSB0byByZWNhbGwgd2hlbiBJIGZpcnN0IHJlYWxseSBzdGFydGVkIHdvcmtpbmcg
d2l0aCBoaW0uIEl0IG1heSBoYXZlIGJlZW4gYXJvdW5kIDIwMTAgb3Igc28uIEluIDIwMTIsIEkg
c3RhcnRlZCBzZW5kaW5nIGZ1bmRzIGhpcyB3YXkgdmlhIG15IGRheSBqb2IgdG8gaGVscCBoaW0g
YW5kIGhpcyBtZXJyeSBuZXR3b3JrIG9mIGNvbGxhYm9yYXRvcnMgd29yayB0byBkZXZlbG9wIHRo
ZSBDb0RlbCBBUU0uIA0KDQoNCkZ1bmRpbmcgaGltIHdhcyBub3QgbmVjZXNzYXJpbHkgZWFzeSwg
YXMgRGF2ZSBoYWQgYSB1bmlxdWUgd2F5IG9mIHdvcmtpbmcgYW5kIHdhcyBiZXN0IHdoZW4gaGUg
aGFkIGNvbXBsZXRlIGF1dG9ub215IGFuZCBvbmx5IGxvb3NlbHkgb3V0bGluZWQgZ29hbHMgLSB0
eXBpY2FsbHkgaGFyZCB0byBzZWxsIGluIGEgYmlnIGNvbXBhbnkuIEJ1dCBoZSBjb3VsZCBtYWtl
IHRoaW5ncyBoYXBwZW4sIHNvIGl0IHdvcmtlZC4gQW5kIEkga25ldyB3aGVuIGhlIHN0YXJ0ZWQg
Y29tcGxhaW5pbmcgYWJvdXQgbWFpbnRlbmFuY2UgbmVlZHMgb24gaGlzIGJvYXQsIG9yIHRoZSBu
ZWVkIHRvIHJlY3J1aXQgYSBuZXcgcGVyc29uIHRvIHRoZSBwcm9qZWN0LCBvciBhYm91dCBhIGdy
ZWF0IG5ldyAoYW5kIHByYWN0aWNhbCEpIGlkZWEsIHRoYXQgaXQgd2FzIHRpbWUgdG8gdG9wIHVw
IGhpcyBmdW5kaW5nLiA7LSkNCg0KDQpUaGF0IGluaXRpYWwgQ29EZWwgc3VwcG9ydCBpbiAyMDEy
IHdhcyBleHRlbmRlZCB0byB1bmRlcndyaXRlIHdvcmsgb24gaGlzIGlkZWEgdG8gZGV2ZWxvcCBS
UlVMLCB0aGUgZmlyc3QgcmVhbCB3b3JraW5nIGxhdGVuY3kgdGVzdCB0aGF0IEkgY2FuIHJlbWVt
YmVyIChodHRwczovL3d3dy5idWZmZXJibG9hdC5uZXQvcHJvamVjdHMvYmxvYXQvd2lraS9SUlVM
X1NwZWMvIDxodHRwczovL3d3dy5idWZmZXJibG9hdC5uZXQvcHJvamVjdHMvYmxvYXQvd2lraS9S
UlVMX1NwZWMvPikuIEhlIHdhcyBhbHNvIGhlbHBmdWwgaW4gaW50cm9kdWNpbmcgbWUgdG8gU2lt
b24gS2VsbGV5LCBkZXZlbG9wZXIgb2YgZG5zbWFzcSwgc28gd2UgY291bGQgdW5kZXJ3cml0ZSBz
b21lIElQdjYgZmVhdHVyZXMgaW4gZG5zbWFzcSAoYW5kIERhdmUgY29udmluY2VkIFNpbW9uIHRv
IGNvbWUgdG8gYW4gSUVURiBtZWV0aW5nIHRvIGhlbHAgZ2F0aGVyIHJlcXVpcmVtZW50cyBhbmQg
bWVldCBmb2xrcykuIA0KDQoNCkRhdmUgZ290IENvRGVsIHdvcmtpbmcsIHNvIHdlIGRldmVsb3Bl
ZCBhIGNvbXBlbGxpbmcgZGVtbyBvZiBDb0RlbCBvbiBhIERPQ1NJUyBuZXR3b3JrICh2aWEgYSBD
ZXJvV3J0LWJhc2VkIHJvdXRlciBjb25uZWN0ZWQgdG8gYSBjYWJsZSBtb2RlbSkgYW5kIGJyb3Vn
aHQgaGltIGFsb25nIHRvIElFVEYtODYgaW4gTWFyY2ggMjAxMyBpbiBPcmxhbmRvIC0gc2VlIGlu
dGVydmlldyB3aXRoIERhdmUgYXQgaHR0cHM6Ly95b3V0dS5iZS9OdUhZT3U0YUFxZz9zaT1wMFNK
SExOcHBfNm43WFA5JnQ9MTk1IDxodHRwczovL3lvdXR1LmJlL051SFlPdTRhQXFnP3NpPXAwU0pI
TE5wcF82bjdYUDkmYW1wO3Q9MTk1Pi4gDQoNCg0KRnJvbSAyMDE0LTIwMTcsIEkgd2FzIGFibGUg
dG8gbWFrZSBhZGRpdGlvbmFsIGZpbmFuY2lhbCBzdXBwb3J0IGhhcHBlbiBmb3IgaGltLCBzbyBo
ZSBjb3VsZCBkbyBSJkQgaW50byBob3cgdG8gaW1wcm92ZSBidWZmZXIgYmxvYXQgaW4gV2lGaSBu
ZXR3b3JrIGxpbmtzIGFuZCBlcXVpcG1lbnQsIGEgcHJvamVjdCBoZSBjYWxsZWQgIk1ha2UgV2lG
aSBGYXN0Ii4gSW4gMjAyMC0yMDIxIGFuZCAyMDI0LCBJIGZvdW5kIGZ1bmRpbmcgZm9yIGhpcyB3
b3JrIGFnYWluLCB0aGlzIHRpbWUgdG8gd29yayBvbiBhY2NlbGVyYXRpbmcgQVFNIGFkb3B0aW9u
IGluIHRoZSByZWFsIHdvcmxkICYgd29yayByZWxhdGVkIHRvIHRoZSBDQUtFIEFRTS4NCg0KDQpU
aGFua3MgaW4gcGFydCB0byBteSBsb25nc3RhbmRpbmcgY29sbGFib3JhdGlvbiB3aXRoIERhdmUs
IHRlbnMgb2YgbWlsbGlvbnMgb2YgRE9DU0lTIHVzZXJzIGluIG91ciBuZXR3b3JrIGhhdmUgQVFN
IGFuZCB0aHVzIGZhciBiZXR0ZXIgbmV0d29yayByZXNwb25zaXZlbmVzcy4gVGhlIHNhbWUgaXMg
dHJ1ZSBmb3IgQVFNcyBoZSB3b3JrZWQgb24sIENlcm9XcnQsIExpYnJlUW9TLCBhbmQgb3RoZXIg
cHJvamVjdHMuIEhlIHN1Y2NlZWRlZCBpbiBoaXMgZ29hbCB0byBtYWtlIHRoZSBpbnRlcm5ldCBi
ZXR0ZXIgZm9yIGV2ZXJ5b25lIQ0KDQoNCldlIHdpbGwgbWlzcyB5b3UsIERhdmUhDQoNCg0KSmFz
b24NCg0KDQoNCg0KDQoNCg0KDQoNCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcgbGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0Lm5ldC9saXN0aW5mby9jYWtlCg==

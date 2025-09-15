Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D06BB57799
	for <lists+cake@lfdr.de>; Mon, 15 Sep 2025 13:05:04 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 476BD68254A;
	Mon, 15 Sep 2025 13:04:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1757934293;
	bh=kf+0BmaSGUDFhHVdNO0YHyeVe+unr/XTcin0L0DAVMU=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=SZWWbo1Q7bZQiLg/Esxmx0Ui04YmuhHo6afU08+yNjX4v6R0bLfxTOrYI4gKIziPK
	 NFR2g4fnHIjxgRjkvYEOFjjXT/ev3JowoX45De16piTqzjQRB3/D8HTH2vTu58P0hB
	 bXIsHq4jb1v0Gfsz6UExHv25L55IsynnOadUWq/2+/HLVTRLqED4YmayhfCeGkuX8t
	 lcsEAmwJ8vqm4fXDVLZPGgF9VUFNDT01uKr6IJSa7EGauRmlPTEWb7BWXflwM+Le0L
	 u/yED9xwOH0HSnaCou2fJQCuf7EyFS6PTR38nUk8zVP0wDLQWqbeGTznMfLspZaNih
	 iBs65bcCJqc3A==
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1757934293;
 b=N+4woZ5diC8pW3g6MJZ5ORikxG4xXGrDhup/uYRcSttpMMmw4PzIO9rdomJiYdYq0BIzW
 qpIXHPc7xXsvvDAJgzAL/B3LDt9jCnqZRtyQ9JwXdOf2gu8AhVpV3qMeLTsrEsL6bTwGEP3
 JE0U7NPO3frV7UII2vAVSVwp1z+IX6g=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1757934293; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=kf+0BmaSGUDFhHVdNO0YHyeVe+unr/XTcin0L0DAVMU=;
 b=j8JXfeB1cMPUsZSWQ1quXench3Xy5bxUaJJQQmaFrwQvW5+RdzGgts2CoWdSd3fcSvwl2
 E2K6FKgofM3E4aTx/78V0d5G84J0uWwArKswWgMeRJg2L1S2WTOE3i2h/5qXNa9NvqvbtNC
 gdsJzYribrnlOsyb9h6QdYEW9vNOG3U=
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
	by mail.toke.dk (Postfix) with ESMTPS id DD31E68197F;
	Mon, 15 Sep 2025 10:39:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=telekom.de; i=@telekom.de; q=dns/txt; s=dtag1;
  t=1757925594; x=1789461594;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=7B0RWSCQV40bybaM/w/wiVMXODnNzXkiRkCdQ+J9WBw=;
  b=l4+RMcJwivxSG3MKEbFy+4EtBlJDTyFzZKKKOQuM1ylXaF1kyZTu/L7l
   aTi2kfCZRKvGeUxlSxjI0MRk+Udjd+nve1HGh6D/xjtdvl+9IXBT+dGlZ
   2WB0V6eY5hx0Ha3rLMcadMbjEHrVtCTJdxHJJ+7bX5H8318vo1ch7dWTb
   Cm+h4MgUJZ4PxG6dgiF6SSHvkoGnFLnIy/GgfASkRZyXir3mT+NhMfHzX
   YNhCORSeLdXxVD47vamPKKg0OB4nmfVOil/fl6nkfC6FB7rBxye2oLkII
   mN7oWpEjAIhMjIreQvA+7S7/3ieDNvD3Anqxa0U+T6iMC+w29/wT89tDi
   A==;
Received: from qdezc2.de.t-internal.com ([10.171.255.37])
  by mailout41.dmznet.de.t-internal.com with
 ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Sep 2025 10:39:53 +0200
IronPort-SDR: 68c7d0d8_Xum63BX6j1hiEhp1RBNvcjc7uYFRtwYltJKzHNr1WbaaOyd
 aS1LeV9n6GNAgymH645L+de5MC/WL7vb8Jy2jzw==
X-IronPort-AV: E=Sophos;i="6.18,265,1751234400";
   d="scan'208";a="1271854721"
X-MGA-submission: =?us-ascii?q?MDETkUBl+3JxRZ6sF5amFihqaiYFx4YLBX+Jaj?=
 =?us-ascii?q?O6Z7pu/AZ3pp4CIsPjXIe0i4NJwtk3RUwRczAPcY1Q42g+X1MJB1YFcE?=
 =?us-ascii?q?eeZr0YCD9bFJp/ddPIa0UwMohkI39t76FQKgOdCRzrIddR5e3V7wf1ey?=
 =?us-ascii?q?kkYi+YBOu0LleiUrVuJYefZQ=3D=3D?=
Received: from he126308.emea1.cds.t-internal.com ([10.169.119.205])
  by qde0ps.de.t-internal.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 15 Sep 2025 10:39:53 +0200
Received: from HE126310.emea1.cds.t-internal.com (10.169.119.207) by
 HE126308.emea1.cds.t-internal.com (10.169.119.205) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.20; Mon, 15 Sep 2025 10:39:52 +0200
Received: from HE102772.emea1.cds.t-internal.com (10.171.40.44) by
 HE126310.emea1.cds.t-internal.com (10.169.119.207) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.20 via Frontend Transport; Mon, 15 Sep 2025 10:39:52 +0200
Received: from FR5P281CU006.outbound.protection.outlook.com (40.93.78.50) by
 O365mail09.telekom.de (172.30.0.241) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.20; Mon, 15 Sep 2025 10:39:52 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pMSQkG2O8YkPOhjWLZVB5YhfGRQkYRaMrbpmK5VTvKhySLXwaW1YdpxmfX0JGDbSPEEAQy+5E0kTxedmsZ5YxmGUW3apWETA14d0/Ern/pzfV0oHLMyZXuSnHz8bwoh09ViL6SpE+IEJKfXJ+D58jA/4kIXxZ0cC1zrwXYngZWNv6Ju2jmePNVoBHnRE75EsCao+ZblwbT/nwXfT+BjafZ7ghz3wFSfRl8Z+uvroAL6lPNRnweInWDCMTImD2/0pq3hwY+7wCSlKVLuI1arm9U2+5JsjTR2QMZN8+ACaAB9Hiv0as5eLNjS/6CCcoE3HdDWxoRJJqWIAvUm5EogVQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7B0RWSCQV40bybaM/w/wiVMXODnNzXkiRkCdQ+J9WBw=;
 b=CVMKXWs5SueiTcm2MgPx+pBkm33Pi74ID40TwXC++hrzUexBd/liW0m95jYdzSup0YY3/USHFLyMlFTqk44Wj2gpBZNsOXXJ2EmJ5i5G/StCy2nYwzAlxYU4UPck+w/zZvgdrTFccz8OsVGZ2jJeLusBarRcz+7MIsplJgHYcU6JQ27nv90eEzk9cDtcWYxUUalWy+9hMVOSy1ZvPDNS9LJpGDKLC08GKAmta/mKYQY87U9Uxsi0DCnn2vMyB6ALrRCu8sN43BgoKBS/ssg/GMe6QWO3uh+ugPMTFBQqVvVIvhbyFLtGpaaxUU0Nmw6PUtt5FHBNLimF2Klv0VnvLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=telekom.de; dmarc=pass action=none header.from=telekom.de;
 dkim=pass header.d=telekom.de; arc=none
Received: from FR2PPFEFD18174C.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d18:2::a3)
 by BEZP281MB3288.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:25::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Mon, 15 Sep
 2025 08:39:49 +0000
Received: from FR2PPFEFD18174C.DEUP281.PROD.OUTLOOK.COM
 ([fe80::f775:b8bd:69ad:1879]) by FR2PPFEFD18174C.DEUP281.PROD.OUTLOOK.COM
 ([fe80::f775:b8bd:69ad:1879%4]) with mapi id 15.20.9115.020; Mon, 15 Sep 2025
 08:39:49 +0000
To: <dpreed@deepplum.com>, <tom@herbertland.com>
CC: <frantisek.borsik@gmail.com>, <cake@lists.bufferbloat.net>,
	<codel@lists.bufferbloat.net>, <bloat@lists.bufferbloat.net>,
	<rpm@lists.bufferbloat.net>
Thread-Topic: [Bloat] Re: [Cake] Re: XDP2 is here - from one and only Tom
 Herbert (almost to the date, 10 years after XDP was released)
Thread-Index: AQHcIiLCDhb5JGi7eE2CfJbkCvvJi7SRlviAgAJMVWA=
Date: Mon, 15 Sep 2025 08:39:48 +0000
Message-ID: 
 <FR2PPFEFD18174C4925B861C3070972199CDC15A@FR2PPFEFD18174C.DEUP281.PROD.OUTLOOK.COM>
References: 
 <CAJUtOOhdVJCiRqhOTmdiPNmZEq9_dA+k=evLWX1UsB=ySHpf_A@mail.gmail.com>
 <1757449551.421420786@apps.rackspace.com>
 <CAJUtOOhnp92Vxv4TkF_GUwVB1kaZcN9z+hZwS+0JBdHdM0cJjw@mail.gmail.com>
 <CALx6S37wDSc=d27twPBm_NHFSWYQUL74oMSyBVwY=z9uNEvJ_g@mail.gmail.com>
 <1757795591.523513612@apps.rackspace.com>
In-Reply-To: <1757795591.523513612@apps.rackspace.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: FR2PPFEFD18174C:EE_|BEZP281MB3288:EE_
x-ms-office365-filtering-correlation-id: dd18b99e-a47a-4a65-7c0d-08ddf4336e6e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|4022899009|366016|376014|13003099007|38070700021;
x-microsoft-antispam-message-info: 
 =?utf-8?B?SEtrSXRMQStZbmxlTXlKSEdRYnpNN29KelpiOFBmd3BnaDZyNlo3azNQVEJx?=
 =?utf-8?B?cmtOUzdCU1c3NWFwZVFYZE5ncmJvbS8wYWxXSHdlbFhFdjJyMU0yaGxNc2Vs?=
 =?utf-8?B?ZlZRb3NkelZhR0tMS1RBeUhMa0VqMGVtTEZmSTR3cTR2Wmo2TzlWU3p4QkN0?=
 =?utf-8?B?U0VGQ3d0WVhVL2FPR0JBazBlZmZUOXNzcFBWK3NDUi9KdWoveW01NnE5ZExN?=
 =?utf-8?B?cmhGSytNdWlhWUZ3Z1FEdjNDMFByVGxjQWNnUVcrY1RyUzZzUGxtVzNkcVVq?=
 =?utf-8?B?RmppWHoveENmcTg1OXcvK2tLdWxTTysxbk00aTdkWmQ2UFErVG94bEppYzVi?=
 =?utf-8?B?VEgrcDQ1RE5nMEY3eGJpaUtMWTdxYkh1d1J4b1kxZDJSa2lTUXFDMHBSTFBI?=
 =?utf-8?B?VEpKMjh4OENHa3dneTFsTDg4QjlZWG5tU3lOenBiM1RmZVdpcGJ0SEttT2Nk?=
 =?utf-8?B?eUx0Z3FtU1ZKNEtBSUduWEJIQmZyTmhmaFFPeTVpbU5VVCt4OGlQd1pqZFhH?=
 =?utf-8?B?bmtuTVRGRzVRU1RKZndkTjlKQ2hzVyt0YnVlQzZORnpraG14WTdJVmlMSFMv?=
 =?utf-8?B?amtQY0VobnV5OHV2cStoUzNibUErMEVEOVFlb1dvWnJWR2JTZVU1Uko2OGww?=
 =?utf-8?B?dE50MFl5TjNLY3QzaTI2enZwcmphMW9xcHZYQlJMOWZTWlNCUExYZi84ZlNV?=
 =?utf-8?B?NzVrZHZFZmZhSlVmWi9wV1VZTkJBNWgzVkxydkZ1bVVkUkJWU1VzVE0yVlRS?=
 =?utf-8?B?L0ptRXFhc0NnODU2dW1jdTBQTGpicnMxL240dE4vL1hNU0VJdUx4VmJsYjFD?=
 =?utf-8?B?UWdveS9UelkrNnAxNTEzWk4rbjJZYmRKaTBQck9RaXFRQjJhaVNNRmwxdk1i?=
 =?utf-8?B?YTBJdTQ2Um9nKzBCTHRISzNBVzRTaVlKcjFnU1ljMWd3ZHhPRm1uSUN5NWtK?=
 =?utf-8?B?NE1rM0dlYU5OTmdTQjJFc1BzOGovb3NjMEhOZjhJdXg5dXo3NzV3UUJsNitv?=
 =?utf-8?B?YmViSDlkcjRWc1FOeEdic2dpVnBFN3dsaFRrbGRQaGFWSGNiQlVkQlZvQ3FC?=
 =?utf-8?B?emk0eEt1VUxJUk5ZbGNJeG9GSysvd0FzbFc3WmZvc3h1bkNpa0w0QW1SWWRP?=
 =?utf-8?B?ZmZZOWpRMkJGcURUWDM0SDQyRjczV0hSSXFieHR4SEJIUndvTUtQSDlqdGQ2?=
 =?utf-8?B?eDB3eHlaTEg4MkhhaWRCbWwwNW9FaUVoYmdFVEMyMG5ZU3NJZnNBUG90VTk5?=
 =?utf-8?B?OVpxS3MxaEJwQTQwK0ZPYWVrYklUdWtBRHZpQ1k3VUFYOGQxbzVBa1dPeEtq?=
 =?utf-8?B?aXAwS3JxTWpoN04wY0JjdjN1S25EUjFzcXJEU05IQ2JkbTdZYjdORENHckFD?=
 =?utf-8?B?K3gvcEpNNThFcHdxYUxXSVVyYXdvMi81NkdUU2Q4RitHZC8vdS93KzEvOVhY?=
 =?utf-8?B?UEFrVjNwazBYa1FzaXBjdCtaaENVWlRsTXFQU3JsZG90MkhzWHFqZmMrRGtt?=
 =?utf-8?B?OGJCWTRVbmd5b3lvYTRkbXNKZG0yVkt1OTBaQWxBcVFSMmF6Y2lRNlIza2Ev?=
 =?utf-8?B?ck1OUkNtdXJhRnVxR3BzTTdlTEFVaHI3Q2R0UFEvZEZ4TmlLUVA5c0taYmJP?=
 =?utf-8?B?NXhQeFFEODRNRWxFN3dGMkYvb1hCSkJBRjJnQTBWbGRvWW4yWUNERDJZTXgw?=
 =?utf-8?B?dUN2d1E3YzBPaUZUcXFydU00bi9EQ0NnY0hJaGx0K2Q4SDB1TXMrQzVyMnYr?=
 =?utf-8?B?cHFoWW1MNU5XVHpGSnNnVU0xTE9nakJRd2Rid0IzSXc0K1JkbVh1MzNFZmVz?=
 =?utf-8?B?QXZwODlIZzVueWNFeU1kb25zenFyZGlIelJXeDQzWmxtajVVQXlxcEZPRk1H?=
 =?utf-8?B?ekRuK1pMcjRwSXRUSjkxZGl1MmpPZXB5TEFmMCtwR1p4Kzd4Q0xPZ3Q5QUx3?=
 =?utf-8?Q?Hct9SJApPmk=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FR2PPFEFD18174C.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(4022899009)(366016)(376014)(13003099007)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?SEtjSkt6MTdOZDdBQWsrVjJRNWg2cVFKUmYwcE13TUtVaXFpcUFMek5VSWlJ?=
 =?utf-8?B?V0xBcnYzaDlLWXFPUHdqaXhRalF2UDNKY3liWlVQN0o1aWl6QnlVZzJwKzgy?=
 =?utf-8?B?N2orcWdvSW1OdFZVZ1dXd01aQmozRk55UEFxTVlXekN0dFVHTmxTSDV3QzRh?=
 =?utf-8?B?cDI1NkdZOWhJcmZCdmZCTzJBeWZrekc0Q3cyMGpLR205bjhCb2FxR1dKWjBP?=
 =?utf-8?B?K3dxSVYvRDFZelpwck0rU3cvME1QcU4wNTdQU2ZrNE5HaGpPUmY4b3RCekhT?=
 =?utf-8?B?akVKVDRSTFBsZ2ZHUEViaG1xK1lySzRnN1FBRVZFd1Bic1RUTEFTSDBEL3Nt?=
 =?utf-8?B?OVlXZDQvZFZxSW1yMGh5bFVEb3RkZHFhSE4rSStxaHJybVVtUFg0NFBtS0Yx?=
 =?utf-8?B?OEd0MEZ2NW1Wb0k1MVJHV3JBeVh1Y2I1UzVML2ZZNVQ5cTJuQ0RIamdhOWhp?=
 =?utf-8?B?Q2M2K2N0ejM5MFVtM3UydVZwQ2I4eHFPTGRMZngrUE5lZVlDRW9lay9jN0Vm?=
 =?utf-8?B?Y3I4MU85cmF2WFNGQ2o2ZmJoM3ZsZGZQYUZsMlJ6Y3NGZVBydVNRYnhEN09F?=
 =?utf-8?B?TlVoQlBhbDA2NWZLM0VldmNUQkMvV2dWUSs0M0dFZ3RXazdONHVUK0FpZzhi?=
 =?utf-8?B?c1JPc0pWNjYwZ1FVUW5QUjM0dlFtc09UY0k4eXpDanVCSUU2RlpuVDB2UC9L?=
 =?utf-8?B?bWZXZDBHR0lIT2tPbXZvRDlRb2NMNFpOczlRV3NmeDVMd1c4YndzcVNaQlNU?=
 =?utf-8?B?MnVFWC92bE0vTjRJWjViR3RtMEk0bnY2NC9TRXgyYWR3QllCUVZuZTF2dllI?=
 =?utf-8?B?c0NrbDNybkZDWEI1S2tCQjRHM3NqaUxiSnlBeGVrZG1CY3lnOWIwU21nVkh0?=
 =?utf-8?B?enErVXd1K05UYzlsOC9hMndiUG1tdkYwb0pONnFyOFZnRU9FOEhHcVB1MUMy?=
 =?utf-8?B?UTlkM2txUkxKV0svdWt6NDdmeXM4bjVsL24xdXNCaVNvcHhTeWxyRVZ0TWMv?=
 =?utf-8?B?cjBEVHVXK0hoYVVKYmZ1eE56WkI3RzdxZm9aNTgzUTh0Z3poVEt3Tmw0TDBK?=
 =?utf-8?B?UDZFSXRRT1NYaVdxYTlBOVRURzFQQlhvdjBFd1JHbFJxR0IxUkNHRFZ6cHlS?=
 =?utf-8?B?S0JoZjh2ZjdkTC9COUdwS3g4aXVMbGMxNUZDTFFlbGJhUG45bXdOZU5ZQnlB?=
 =?utf-8?B?Ukg1aFo2KzNidGtCaFNYRFZnaFFOOTZZWGQzNTdxMHFUOFpKQUhUSTdJQm9R?=
 =?utf-8?B?MVphWTMvTDI5Y0hyQ1BKRzF5eEw2Tlh3SGdXcURWdGFybUs2YTJpOHp3WnBV?=
 =?utf-8?B?bkR4UDRrSFVrNFRvVjhWVGhJM2wwNXpDMCtLTHZJTExhczVMSWhyd0JpNTFP?=
 =?utf-8?B?cDE3akFNYnhpWS9RK05DVFNMcHBrNHhWYTA3NTA5dENTbXAvS3psOUlrdHVK?=
 =?utf-8?B?LzlSUE1Ga1JzRjBsbjg3L1MvWTJxT3dQVmNYWC9sZHZ6WXB4dDhadTlOTm9Z?=
 =?utf-8?B?ck9iaXZ6b0dhNzJ1dVVSSE5Wc0daV0VsK1lsQk1Ga0NKNHlvUnpPV1JSRDVt?=
 =?utf-8?B?aHRMSTBWRWdTa1ZUZXYrNlZPajNrTVBya0FieXJFbTRZd25IZG0yTGFpNFho?=
 =?utf-8?B?Smg1YnZQVUVMWEYxZHhTK0lndzFVWXhSY25ydVp6a0NvSVhwYUc2Q0F4M0FM?=
 =?utf-8?B?NEVlcDBtYUNWaEpJOEh6aFZ0YzFseU9kbXRyVDNGUVRodS9HdTF5VENhcStq?=
 =?utf-8?B?bnRIRVpGdjZHdThmRHp6OWhValVmOStpZlV2aXJ4WEg4bERzZUxGVDg5d0J3?=
 =?utf-8?B?Q0hMZ3J0Zk5STmYwRHdYb1R1UXdWR29IRE9aeXdBb3Q4L01Tbk8wbmpKNmpM?=
 =?utf-8?B?S1JmRXBZb2F2VWNXbkZSTTBTR1pLOXp4STBxY2kxVFh2UGdnTERuQUxRMjlJ?=
 =?utf-8?B?SHhWdUVyWTc3b1M1d1ZvM3ZxYTY2cmNmUXYrcExyZzFGdFRrSVMwZDZwRHVx?=
 =?utf-8?B?Y2MxdzRPbEFGemQzUU80R01yQVdSNGV2YklTR1pVelRHL0VISk9DOG5hY0Zn?=
 =?utf-8?B?RWpzbFZpVy9UcnV0WVZkOWpXdjFUemhkYmxEVjhDSVpXMmIwckZmOFhZWE9z?=
 =?utf-8?Q?RRWI=3D?=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: FR2PPFEFD18174C.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 dd18b99e-a47a-4a65-7c0d-08ddf4336e6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2025 08:39:48.9107
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bde4dffc-4b60-4cf6-8b04-a5eeb25f5c4f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 p8NfJYdlPCRqVzdxvYnz6sdDrctPLDfM4oKBjowkWiLCRAHVB/41NFIx05lMVc6kKl7x4+DsV2tXteeOoO9w2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BEZP281MB3288
X-OriginatorOrg: telekom.de
X-MailFrom: BeckW@telekom.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation
Message-ID-Hash: XX66RKFF5UTQTYKKKJQMELC2H3QO2PCZ
X-Message-ID-Hash: XX66RKFF5UTQTYKKKJQMELC2H3QO2PCZ
X-Mailman-Approved-At: Mon, 15 Sep 2025 13:04:50 +0200
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [Bloat] Re: Re: XDP2 is here - from one and only Tom Herbert
 (almost to the date, 10 years after XDP was released)
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/FR2PPFEFD18174C4925B861C3070972199CDC15A@FR2PPFEFD18174C.DEUP281.PROD.OUTLOOK.COM/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: BeckW--- via Cake <cake@lists.bufferbloat.net>
Reply-To: BeckW@telekom.de
Content-Transfer-Encoding: base64

UHJvZ3JhbW1pbmcgbmV0d29ya2luZyBoYXJkd2FyZSBpcyBhIGJpdCBsaWtlIHByb2dyYW1taW5n
IDggYml0IGNvbXB1dGVycyBpbnQgdGhlIDE5ODBzLCB0aGUgaGFyZHdhcmUgaXMgb2Z0ZW4gdG9v
IGxpbWl0ZWQgYW5kIHZhcmllZCB0byBzdXBwb3J0IHVzZWZ1bCBhYnN0cmFjdGlvbnMuIFRoaXMg
aXMgYWxzbyB0cnVlIGZvciBDUFUtYmFzZWQgbmV0d29ya2luZyBvbmNlIHlvdSBnZXQgaW50byB0
aGUgPjEwIEdicHMgcmVhbG0sIHdoZW4gY2FjaGluZyBhbmQgcGlwZWxpbmluZyBhcmNoaXRlY3R1
cmVzIGJlY29tZSByZWxldmFudC4gV3JpdGluZyBhIG5ldHdvcmsgcHJvdG9jb2wgY29tcGlsZXIg
dGhhdCBwcm9kdWNlcyBlZmZpY2llbnQgY29kZSBmb3IgZGlmZmVyZW50IE5JQ3MgYW5kIGRpZmZl
cmVudCBDUFVzIGlzIGEgZGF1bnRpbmcgdGFzay4gQW5kIHVubGlrZSB3aXRoIDggYml0IGNvbXB1
dGVycywgdGhlcmUgYXJlIG5vIHNpbXBsZSBtZXRyaWNzICgneW91IG5lZWQgYXQgbGVhc3QgMzJr
YiBSQU0gdG8gcnVuIHRoaXMgY29kZScgdnMgJ3RoaXMgTklDIHN1cHBvcnRzIDRrIHF1ZXVlcyB3
aXRoIFBJRSwgQ29kZWwnLCAndGhpcyBDUFUgaGFzIDIwIE1ieXRlIG9mIEludGVsIFNtYXJ0Q2Fj
aGUnKS4NCg0KRWJwZiBpcyB2ZXJ5IGNsb3NlIHRvIHdoYXQgd2FzIGRlc2NyaWJlZCBpbiB0aGlz
IDE5OTUgZXhva2VybmVsIHBhcGVyKCBodHRwczovL3Bkb3MuY3NhaWwubWl0LmVkdS82LjgyOC8y
MDA4L3JlYWRpbmdzL2VuZ2xlcjk1ZXhva2VybmVsLnBkZikuIFRoZSBpZGVhIG9mIHRoZSBleG9r
ZXJuZWwgd2FzIHRvIGhhdmUgZWFzaWx5IGxvYWRhYmxlLCB2ZXJpZmllZCBjb2RlIGluIHRoZSBr
ZXJuZWwgLS0gZWcgdGhlIHNlY3VyaXR5LWNyaXRpY2FsIHRhc2sgb2YgYXNzaWduaW5nIGEgcGFj
a2V0IHRvIGEgc2Vzc2lvbiBvZiBhIHVzZXIgLS0gYW5kIGxlYXZlIHRoZSByZXN0IG9mIHRoZSBw
cm90b2NvbCAtLSBlZyB0Y3AgcmV0cmFuc21pc3Npb25zIC0tIHRvIHRoZSB1c2VyIHNwYWNlLiBB
RkFJSyBmZXcgcGVvcGxlIHVzZSBlYnBmIGxpa2UgdGhpcywgYnV0IGl0IHNob3VsZCBiZSBwb3Nz
aWJsZS4NCg0KRWJwZiBtYW5hZ2VzIHRoZSBhYnN0cmFjdGlvbiBwYXJ0IHdlbGwsIGJ1dCBzYWNy
aWZpY2VzIGEgbG90IG9mIHBlcmZvcm1hbmNlIC0tIGVnIGxhY2sgb2YgYWdncmVzc2l2ZSBiYXRj
aGluZyBsaWtlIHZwcCAvIGZkLmlvIGRvZXMuIFdpdGggRFBESywgIHlvdSBvZnRlbiBmaW5kIG91
dCB0aGF0IHlvdXIgbmljJ3MgaGFyZHdhcmUgb3IgZHJpdmVyIGRvZXNuJ3Qgc3VwcG9ydCB0aGUg
ZnVuY3Rpb24gdGhhdCB5b3UgaG9wZWQgdG8gdXNlIGFuZCBlbmQgdXAgb3B0aW1pemluZyBmb3Ig
YSBwYXJ0aWN1bGFyIGhhcmR3YXJlLiBFdmVuIGlmIGRyaXZlciBhbmQgaGFyZHdhcmUgc3VwcG9y
dCBhIGZ1bmN0aW9uYWxpdHksIGl0IG1heSB2ZXJ5IHdlbGwgYmUgdGhhdCBoYXJkd2FyZSByZXNv
dXJjZXMgYXJlIHRvbyBsaW1pdGVkIGZvciB5b3VyIHBhcnRpY3VsYXIgdXNlIGNhc2UuIFRoZSBh
YnN0cmFjdGlvbiBpcyB0aGVyZSwgYnV0IHlvdXIgY29kZSBpcyBzdGlsbCBoYXJkd2FyZSBzcGVj
aWZpYy4NCg0KV29sZmdhbmcNCg0KLS0tLS1VcnNwcsO8bmdsaWNoZSBOYWNocmljaHQtLS0tLQ0K
Vm9uOiBEYXZpZCBQLiBSZWVkIDxkcHJlZWRAZGVlcHBsdW0uY29tPg0KR2VzZW5kZXQ6IFNhbXN0
YWcsIDEzLiBTZXB0ZW1iZXIgMjAyNSAyMjozMw0KQW46IFRvbSBIZXJiZXJ0IDx0b21AaGVyYmVy
dGxhbmQuY29tPg0KQ2M6IEZyYW50aXNlayBCb3JzaWsgPGZyYW50aXNlay5ib3JzaWtAZ21haWwu
Y29tPjsgQ2FrZSBMaXN0IDxjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD47IGNvZGVsQGxpc3Rz
LmJ1ZmZlcmJsb2F0Lm5ldDsgYmxvYXQgPGJsb2F0QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD47IEpl
cmVteSBBdXN0aW4gdmlhIFJwbSA8cnBtQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldD4NCkJldHJlZmY6
IFtCbG9hdF0gUmU6IFtDYWtlXSBSZTogWERQMiBpcyBoZXJlIC0gZnJvbSBvbmUgYW5kIG9ubHkg
VG9tIEhlcmJlcnQgKGFsbW9zdCB0byB0aGUgZGF0ZSwgMTAgeWVhcnMgYWZ0ZXIgWERQIHdhcyBy
ZWxlYXNlZCkNCg0KDQpUb20gLQ0KDQpBbiBhcmNoaXRlY3R1cmUtaW5kZXBlbmRlbnQgbmV0d29y
ayBmcmFtZXdvcmsgaW5kZXBlbmRlbnQgb2YgdGhlIE9TIGtlcm5lbCdzIHBlY3VsaWFyaXRpZXMg
c2VlbXMgd2l0aGluIHJlYWNoICh0aG91Z2ggYSBmYWlyIGJpdCBvZiB3b3JrKSwgYW5kIEkgdGhp
bmsgaXQgd291bGQgYmUgYSBHT09EIFRISU5HIGluZGVlZC4gSU1ITyB0aGUgTGludXggbmV0d29y
a2luZyBzdGFjayBpbiB0aGUga2VybmVsIGlzIGEgaG9ycmlmaWMgbWVzcywgYW5kIGl0IGRvZXNu
J3QgaGF2ZSB0byBiZS4NCg0KVGhlIHJlYXNvbiBpdCBkb2Vzbid0IGhhdmUgdG8gYmUgaXMgdGhh
dCB0aGVyZSBzaG91bGQgYmUgbm8gcmVhc29uIGl0IGNhbm5vdCBydW4gaW4gcmluZzMvdXNlcmxh
bmQsIGp1c3QgbGlrZSBEUERLLiBBbmQgaXQgc2hvdWxkIGJlIGJ1aWx0IHVzaW5nICJyZWFsLXRp
bWUiIHVzZXJsYW5kIHByb2dyYW1taW5nIHRlY2huaXF1ZXMuIChhdm9pZGluZyB0aGUgZ2VuZXJp
YyBsaW51eCBzY2hlZHVsZXIpLiBUaGUgT05MWSByZWFzb24gZm9yIGludm9sdmluZyB0aGUgc2No
ZWR1bGVyIHdvdWxkIGJlIGJlY2F1c2UgdGhlcmUgYXJlbid0IGVub3VnaCBjb3Jlcy4gTGludXgg
d2FzIGRlc2lnbmVkIHRvIGJlIGEgdW5pcHJvY2Vzc29yIFVuaXgsIGFuZCB0aGF0IGp1c3QgaXMg
bm8gbG9uZ2VyIHRydWUgYXQgYWxsLiBXaXRoIGh5cGVydGhyZWFkaW5nLCB0b28sIG9uZSBuZWVk
IG5ldmVyIGFiYW5kb24gYSBwcm9jZXNzb3IncyBjb250ZXh0IGluIHVzZXJzcGFjZSB0byBydW4g
c29tZSAidXNlcmxhbmQiIGFwcGxpY2F0aW9uLg0KDQpUaGlzIHdvdWxkIHJpcCBhIGh1Z2UgYW1v
dW50IG9mIGtlcm5lbCBjb2RlIG91dCBvZiB0aGUga2VybmVsLiAoYXQgbGVhc3QgNTAlLCBhbmQg
cHJvYmFibHkgbW9yZSkuIFRIZSBzZWN1cml0eSBpc3N1ZXMgb2YgYWxsIHRob3NlIDNyZCBwYXJ0
eSBuZXR3b3JrIGRyaXZlcnMgd291bGQgZ28gYXdheS4NCg0KQW5kIHRoZSBwZXJmb3JtYW5jZSB3
b3VsZCBiZSBtdWNoIGhpZ2hlciBmb3IgbmV0d29ya2luZy4gIChydW5uaW5nIGluIHJpbmcgMywg
ZXNwZWNpYWxseSBpZiB5b3UgZG9uJ3QgZG8gc3lzdGVtIGNhbGxzLCBpcyBubyBwZXJmb3JtYW5j
ZSBwZW5hbHR5LCBhbmQgaW50ZXJwcm9jZXNzb3IgY29tbXVuaWNhdGlvbnMgdXNpbmcgc2hhcmVk
IG1lbW9yeSBpcyBtdWNoIGxvd2VyIGxhdGVuY3kgdGhhbiBMaW51eCBJUEMgb3IgbXV0ZXhlcyku
DQoNCkkgbGlrZSB0aGUgaWRlYSBvZiBhIGNvbXBpbGF0aW9uIGJhc2VkIG5ldHdvcmsgc3RhY2ss
IGF0IGEgc2xpZ2h0bHkgaGlnaGVyIGxldmVsIHRoYW4gQy4gZUJQRiBpcyBOT1Qgd2hhdCBJIGhh
dmUgaW4gbWluZCAtIGl0J3MgYW4gaW50ZXJwcmV0ZXIgd2l0aCBoaWdoIG92ZXJoZWFkLiBUaGUg
bGFuZ3VhZ2Ugc2hvdWxkIHN1cHBvcnQgaGlnaC1wZXJmb3JtYW5jZSBjby1yb3V0aW5pbmcgLSBz
aGFyZWQgbWVtb3J5LCBpZGVhbGx5LiBJIGRvbid0IHRoaW5nIEdDIGlzIGEgZ29vZCB0aGluZy4g
UnVzdCBtaWdodCBiZSBhIGdvb2Qgc3RhcnRpbmcgcG9pbnQgYmVjYXVzZSBpdHMgbWVtb3J5IG1h
bmFnZW1lbnQgaXMgc2FmZS4NClRvIG1lLCBzb21lIG9mIHdoYXQgdGhlIGJhc2Ugb2YgRFBESyBp
cyBsaWtlIGlzIGdvb2Qgc3R1ZmYuIEhvd2V2ZXIsIGl0IGlzbid0IGFyY2hpdGVjdHVyYWxseSBu
ZXV0cmFsLg0KDQpUbyBtZSwgdGhlIG5ldHdvcmsgc3RhY2sgc2hvdWxkIG5vdCBiZSBlbnRhbmds
ZWQgd2l0aCBpbnRlcnJ1cHQgaGFuZGxpbmcgYXQgYWxsLiAicG9sbGluZyIgaXMgZmFyIG1vcmUg
cGVyZm9ybWFudCB1bmRlciBsb2FkLiBUaGUgb25seSB1c2UgZm9yIGludGVycnVwdHMgaXMgd2hl
biB0aGUgbmV0d29yayBzdGFjayBpcyBjb21wbGV0ZWx5IGlkbGUuIFRoYXQgd291bGQgYmUsIGlu
IHVzZXJsYW5kLCBhICJ3YWl0IGZvciBpbnRlcnJ1cHQiIGNhbGwgKG5vdCBhIHBvbGwpLiBJZGVh
bGx5LCBvbiByZWNlbnQgSW50ZWwgbWFjaGluZXMsIGEgdXNlcnNwYWNlIHZlcnNpb24gb2YgTU9O
SVRPUi9NV0FJVCkuDQoNCk5vdyBJIGtub3cgdGhhdCBMaW51cyBhbmQgaGlzIGNyZXcgYXJlIHJl
YWxseSBOT1QgZ29ubmEgbGlrZSB0aGlzLiBMaW51cyBpcyBzdGlsbCB0aGlua2luZyBsaWtlIE1J
TklYLCBhIHVuaXByb2Nlc3NvciB0aW1lLXNoYXJpbmcgc3lzdGVtIHdpdGggcmljaCBPUyBmdW5j
dGlvbnMgaW4gdGhlIGtlcm5lbCBhbmQgZG9pbmcgImZpbGUiIHJlYWRzIGFuZCB3cml0ZXMgdG8g
Y29tbXVuaWNhdGUgd2l0aCB0aGUga2VybmVsIHN0YXRlLiBCdXQgaXQgaXMgYSBtdWNoIG1vcmUg
bW9kZXJuIHdheSB0byB0aGluayBvZiByZWFsLXRpbWUgSU8gaW4gYSBtb2Rlcm4gb3BlcmF0aW5n
IHN5c3RlbS4gKFdpbmRvd3MgYW5kIG1hY09TIGFyZSBhbHNvIFVuaXgtbGlrZSwgdW5pcHJvY2Vz
c29yIG1vbm9saXRoaWMga2VybmVsIGRlc2lnbnMpLg0KDQpTbywgaWYgWERQMiBnb3QgYXdheSBm
cm9tIHRoZSBMaW51eCBrZXJuZWwsIGl0IGNvdWxkIGJlIGdyZWF0Lg0KQlRXLCBpb191cmluZywg
ZXRjLiBhcmUgaGFsZi1tZWFzdXJlcy4gVGhleSBhZGRyZXNzIGdldHRpbmcgYXdheSBmcm9tIGlu
dGVycnVwdHMgdG93YXJkIHBvbGxpbmcsIGJ1dCB0aGV5IHN0aWxsIG1ha2UgdGhlIG1pc3Rha2Ug
b2Yga2VlcGluZyBodWdlIGRyaXZlcnMgaW4gdGhlIGtlcm5lbC4NCg0KDQpPbiBUdWVzZGF5LCBT
ZXB0ZW1iZXIgOSwgMjAyNSAxNzozNiwgIlRvbSBIZXJiZXJ0IiA8dG9tQGhlcmJlcnRsYW5kLmNv
bT4gc2FpZDoNCg0KDQoNCg0KDQoNCg0KDQoNCk9uIFR1ZSwgU2VwIDksIDIwMjUsIDU6MDPigK9Q
TSBGcmFudGlzZWsgQm9yc2lrIDxbIGZyYW50aXNlay5ib3JzaWtAZ21haWwuY29tIF0oIG1haWx0
bzpmcmFudGlzZWsuYm9yc2lrQGdtYWlsLmNvbSApPiB3cm90ZTpUaGFua3MgYSBsb3QsIERhdmlk
Lg0KDQogSSBoYXZlIGFza2VkIFRvbSBpZiBoZSB3YW50cyB0byBqb2luIHVzIGFuZCBoZSBzaG91
bGQgYmUgaGVyZSB0byBjaGF0IHdpdGggIHVzIG5vdy4NCg0KIEFsbCB0aGUgYmVzdCwNCg0KIEZy
YW5rDQoNCiBGcmFudGlzZWsgKEZyYW5rKSBCb3JzaWsNCg0KDQogKkluIGxvdmluZyBtZW1vcnkg
b2YgRGF2ZSBUw6RodDogKjE5NjUtMjAyNQ0KDQpbIGh0dHBzOi8vbGlicmVxb3MuaW8vMjAyNS8w
NC8wMS9pbi1sb3ZpbmctbWVtb3J5LW9mLWRhdmUvIF0oIGh0dHBzOi8vbGlicmVxb3MuaW8vMjAy
NS8wNC8wMS9pbi1sb3ZpbmctbWVtb3J5LW9mLWRhdmUvICkNCg0KDQpbIGh0dHBzOi8vd3d3Lmxp
bmtlZGluLmNvbS9pbi9mcmFudGlzZWtib3JzaWsgXSggaHR0cHM6Ly93d3cubGlua2VkaW4uY29t
L2luL2ZyYW50aXNla2JvcnNpayApDQoNCiBTaWduYWwsIFRlbGVncmFtLCBXaGF0c0FwcDogKzQy
MTkxOTQxNjcxNA0KDQogaU1lc3NhZ2UsIG1vYmlsZTogKzQyMDc3NTIzMDg4NQ0KDQogU2t5cGU6
IGNhc2lvYTUzMDJjYQ0KDQpbIGZyYW50aXNlay5ib3JzaWtAZ21haWwuY29tIF0oIG1haWx0bzpm
cmFudGlzZWsuYm9yc2lrQGdtYWlsLmNvbSApDQoNCg0KIE9uIFR1ZSwgU2VwIDksIDIwMjUgYXQg
MTA6MjXigK9QTSBEYXZpZCBQLiBSZWVkIDxbIGRwcmVlZEBkZWVwcGx1bS5jb20gXSggbWFpbHRv
OmRwcmVlZEBkZWVwcGx1bS5jb20gKT4gd3JvdGU6DQoNCiA+IEhpIEZyYW5rIC0NCiA+DQogPg0K
ID4NCiA+IEkgdGhpbmsgaXQgaXMgaW50ZXJlc3RpbmcgYXMgYSBjb25jZXB0LiBBIHByb2plY3Qg
SSBhbSBhZHZpc2luZyBoYXMgYmVlbiAgPiB1c2luZyBEUERLIHZlcnkgZWZmZWN0aXZlbHkgdG8g
Z2V0IHJpZCBvZiB0aGUgaHVnZSBwYXRoIGFuZCBsb2NraW5nIGRlbGF5cyAgPiBpbiB0aGUgY3Vy
cmVudCBMaW51eCBuZXR3b3JrIHN0YWNrLiBYRFAyIGNvdWxkIGJlIHN1cHBvcnRlZCBpbiBhIHJp
bmczICA+ICh1c2VyKSBhZGRyZXNzIHNwYWNlLCBhY2hpZXZpbmcgYSBzaW1pbGFyIHJlc3VsdC4N
CkhJIERhdmlkLA0KVGhlIGlkZWEgaXMgeW91IGNvdWxkIHdyaXRlIHRoZSBjb2RlIGluIFhEUDIg
YW5kIGl0IHdvdWxkIGJlIGNvbXBpbGVkIHRvIERQREsgb3IgZUJQRiBhbmQgdGhlIGNvbXBpbGVy
IHdvdWxkIGhhbmRsZSB0aGUgb3B0aW1pemF0aW9ucy4NCiA+DQogPg0KID4NCiA+IEJ1dCBJIGRv
bid0IHRoaW5rIFhEUDIgaXMgZ29pbmcgdGhhdCBkaXJlY3Rpb24gLSBzbyBpdCBtYXkgYmUgc3R1
Y2tpbnRvICA+IHRoZSBtZXNzIG9mIGtlcm5lbCBzcGFjZSBuZXR3b3JraW5nLiBBZGRpbmcgZUJQ
RiBvbmx5IGhhcyBtYWRlIHRoaXMgbW9yZSBvZiAgPiBhIG1lc3MsIGJ5IHRoZSB3YXkgKGFuZCBh
ZGRpbmcgYSBuZXcgImNvbXBpbGVyIiB0aGF0IG5lZWRzIHRvIGJlIHZlcmlyaWVkICA+IGFzIHNh
ZmUgZm9yIHRoZSBrZXJuZWwpLg0KVGhpbmsgb2YgWERQMiBhcyB0aGUgZ2VuZXJhbGl6YXRpb24g
b2YgWERQIHRvIGdvIGJleW9uZCBqdXN0IHRoZSBrZXJuZWwuIFRoZSBpZGVhIGlzIHRoYXQgdGhl
IHVzZXIgd3JpdGVzIHRoZWlyIGRhdGFwYXRoIGNvZGUgb25jZSBhbmQgdGhleSBjb21waWxlIGl0
IHRvIHJ1biBpbiB3aGF0ZXZlciB0YXJnZXRzIHRoZXkgaGF2ZS0tIERQREssIFA0LCBvdGhlciBw
cm9ncmFtbWFibGUgaGFyZHdhcmUsIGFuZCB5ZXMgWERQL2VCUEYuIEl0J3MgcmVhbGx5IG5vdCBs
aW1pdGVkIHRvIGtlcm5lbCBuZXR3b3JraW5nLg0KQXMgZm9yIHRoZSBuYW1lIFhEUDIsIHdoZW4g
d2UgY3JlYXRlZCBYRFAsIGVYcHJlc3MgRGF0YVBhdGgsIG15IHZpc2lvbiB3YXMgdGhhdCBpdCB3
b3VsZCBiZSBpbXBsZW1lbnRhdGlvbiBhZ25vc3RpYy4gZUJQRiB3YXMgdGhlIGZpcnN0IGluc3Rh
bnRpYXRpb24gZm9yIHByYWN0aWNhbGl0eSwgYnV0IG5vdyB0ZW4geWVhcnMgbGF0ZXIgSSB0aGlu
ayB3ZSBjYW4gcmVhbGl6ZSB0aGUgaW5pdGlhbCB2aXNpb24uDQpUb20NCg0KPg0KID4gSSB3aWxs
IGJlIHdhdGNoaW5nIGhvdyB0aGlzIGV2b2x2ZXMuDQogPg0KID4NCiA+DQogPiBEYXZpZA0KID4N
CiA+DQogPg0KID4gT24gVHVlc2RheSwgU2VwdGVtYmVyIDksIDIwMjUgMDY6MzIsICJGcmFudGlz
ZWsgQm9yc2lrIiA8ICA+IFsgZnJhbnRpc2VrLmJvcnNpa0BnbWFpbC5jb20gXSggbWFpbHRvOmZy
YW50aXNlay5ib3JzaWtAZ21haWwuY29tICk+IHNhaWQ6DQogPg0KID4gPiBIZWxsbyB0byBhbGws
DQogPiA+DQogPiA+IExvb2tzIGludGVyZXN0aW5nOg0KID4gPg0KID4gWyBodHRwczovL21lZGl1
bS5jb20vQHRvbV84NDkxMi94ZHAyLXRoaXMtY2hhbmdlcy1ldmVyeXRoaW5nLWF0LWxlYXN0LWZv
ci1haS1tbC1pbmZyYXN0cnVjdHVyZS04NTBjMWJhODI3NzEgXSggaHR0cHM6Ly9tZWRpdW0uY29t
L0B0b21fODQ5MTIveGRwMi10aGlzLWNoYW5nZXMtZXZlcnl0aGluZy1hdC1sZWFzdC1mb3ItYWkt
bWwtaW5mcmFzdHJ1Y3R1cmUtODUwYzFiYTgyNzcxICkgID4gPiAgPiA+ICA+ID4gQWxsIHRoZSBi
ZXN0LCAgPiA+ICA+ID4gRnJhbmsgID4gPiAgPiA+IEZyYW50aXNlayAoRnJhbmspIEJvcnNpayAg
PiA+ICA+ID4gID4gPiAqSW4gbG92aW5nIG1lbW9yeSBvZiBEYXZlIFTDpGh0OiAqMTk2NS0yMDI1
ICA+ID4gID4gPiBbIGh0dHBzOi8vbGlicmVxb3MuaW8vMjAyNS8wNC8wMS9pbi1sb3ZpbmctbWVt
b3J5LW9mLWRhdmUvIF0oIGh0dHBzOi8vbGlicmVxb3MuaW8vMjAyNS8wNC8wMS9pbi1sb3Zpbmct
bWVtb3J5LW9mLWRhdmUvICkgID4gPiAgPiA+ICA+ID4gWyBodHRwczovL3d3dy5saW5rZWRpbi5j
b20vaW4vZnJhbnRpc2VrYm9yc2lrIF0oIGh0dHBzOi8vd3d3LmxpbmtlZGluLmNvbS9pbi9mcmFu
dGlzZWtib3JzaWsgKSAgPiA+ICA+ID4gU2lnbmFsLCBUZWxlZ3JhbSwgV2hhdHNBcHA6ICs0MjE5
MTk0MTY3MTQgID4gPiAgPiA+IGlNZXNzYWdlLCBtb2JpbGU6ICs0MjA3NzUyMzA4ODUgID4gPiAg
PiA+IFNreXBlOiBjYXNpb2E1MzAyY2EgID4gPiAgPiA+IFsgZnJhbnRpc2VrLmJvcnNpa0BnbWFp
bC5jb20gXSggbWFpbHRvOmZyYW50aXNlay5ib3JzaWtAZ21haWwuY29tICkgID4gPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KID4gPiBDYWtlIG1haWxp
bmcgbGlzdCAtLSBbIGNha2VAbGlzdHMuYnVmZmVyYmxvYXQubmV0IF0oIG1haWx0bzpjYWtlQGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldCApICA+ID4gVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBbIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0IF0oIG1haWx0bzpjYWtlLWxlYXZl
QGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldCApICA+ID4gID4gIF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQogQ2FrZSBtYWlsaW5nIGxpc3QgLS0gWyBjYWtlQGxp
c3RzLmJ1ZmZlcmJsb2F0Lm5ldCBdKCBtYWlsdG86Y2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQg
KSAgVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBbIGNha2UtbGVhdmVAbGlzdHMuYnVm
ZmVyYmxvYXQubmV0IF0oIG1haWx0bzpjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldCAp
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpCbG9hdCBt
YWlsaW5nIGxpc3QgLS0gYmxvYXRAbGlzdHMuYnVmZmVyYmxvYXQubmV0IFRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gYmxvYXQtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0DQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcg
bGlzdCAtLSBjYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGNha2UtbGVhdmVAbGlzdHMuYnVmZmVyYmxvYXQubmV0Cg==

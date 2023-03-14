Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5A48B6598
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:42 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3E7F83D573;
	Mon, 29 Apr 2024 18:18:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429136;
	bh=X9mKo95KWgjORyIckQ2cUmwwhaR65TpPjwWMYcg7SFE=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=CysvDtQj2oKS4fZ4+nMwXIm7vbecmg0DrQdufeOpfFfNwk34QX8xhc83WGjome4Si
	 K1OjZyj/rxVUp9czUJAYuyjdYGLcOkmnmxPa8fmnBl9qhFTgnEqiC/gMjHb3bYYOeC
	 hMcVfma+ctgWWe0rFOTmeb/WnZWbiUa2Cw2QmScHXPqSs+v3S4IJGTls08ItgXxRQE
	 1eZX8806JzqPnQ1caK+tDQKnNISsgolSVjSXekWzcDqUI1x6Ph2cpOwYJ42BxDx7SK
	 F33CIR4mkBfqUYUj78kPUhBfEEejbsEIcBKgr5Gy1JLPraj5A8atjx4n4Vs8xjXc7L
	 nkjemeSIOQNAA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mailout21.telekom.de (mailout21.telekom.de [194.25.225.215])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7F62B3CB37
 for <cake@lists.bufferbloat.net>; Tue, 14 Mar 2023 11:09:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=telekom.de; i=@telekom.de; q=dns/txt; s=dtag1;
 t=1678806580; x=1710342580;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ftGFANonnShghOowhq3ILucWb3bzIlt1z/4sXFTa4vA=;
 b=uCqjCUltUMAP0Ypw7dX+GxeAArqNb5AGyNHOTc+VikyhR60FktXPfHdN
 Q5xdnOR5wTH+Hl8R2eWAkNdl9wEJfp/WUKY2OdFV+ddticHsKtOEK2YMd
 OpPTPMK3dhVSiqUsm6s6HMxxq/Hcad7U2hLTXw8Ni9TDVDO2SJx+pslp7
 3Mx8xFEVujixRp5gXgaYRjSfttq1GoCCaExYiuMC5Y1hW57TNWzro0wOL
 /rKuH/8kYIixfevyvzpSHq6T6ki/gBfK8fIJwMXtoLpO+Vj8SkKD0zvmR
 r/xF4ucrK7WiN0V54sl3Ud927yuh8rp/RfkOmvTGJE2VflNn9pOeYiL86 g==;
Received: from qdec94.de.t-internal.com ([10.171.255.41])
 by MAILOUT21.dmznet.de.t-internal.com with
 ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Mar 2023 16:09:36 +0100
IronPort-SDR: gFqnAKk3jWfzMRmpnDUuQ88xGcr/l/1ccAvzzijvo5Ul6zAnNMA/yRzUpcNAApLLn/Vk+o2RB7
 vyEr4/6Si8hvi59SyRqMt4c17keUtkdo4=
X-IronPort-AV: E=Sophos;i="5.98,260,1673910000"; d="scan'208";a="704318647"
X-MGA-submission: =?us-ascii?q?MDEnJbKefh+kdQzNnqffhuqfpDQfBsJEVeQ/S2?=
 =?us-ascii?q?ZZZrtfnoqZ7QJlDs++fvR0nTmuQ/bQvvmmnzV2HUBtUxAT0rmKmU0wYa?=
 =?us-ascii?q?Rn8P5cRUIMVXKjdYXTlgykS+U8s5LYQwbbnVNKOyAg/Dx8lzx7oA+V+E?=
 =?us-ascii?q?RqU/OuvmCn3PR1xQGappRpDA=3D=3D?=
Received: from he101421.emea1.cds.t-internal.com ([10.169.118.197])
 by QDEC97.de.t-internal.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 14 Mar 2023 16:09:35 +0100
Received: from HE101421.emea1.cds.t-internal.com (10.169.118.197) by
 HE101421.emea1.cds.t-internal.com (10.169.118.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25; Tue, 14 Mar 2023 16:09:26 +0100
Received: from HE102770.emea1.cds.t-internal.com (10.171.40.42) by
 HE101421.emea1.cds.t-internal.com (10.169.118.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25 via Frontend Transport; Tue, 14 Mar 2023 16:09:26 +0100
Received: from DEU01-BE0-obe.outbound.protection.outlook.com (104.47.7.170) by
 O365mail07.telekom.de (172.30.0.239) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25; Tue, 14 Mar 2023 16:09:26 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KH2faLkuJCtWoWwK3NsQUOIAyTYvryM/fXKGZBOwYQhltnrtYn3plVR7ASwT4q/LvvLaLeXcQkz4HNzb9Ps/Croc25zQ2ICpJTnP/o9tiNnnzpBBP+yytjoeZ63LFBaLmciIXRuc7etl2HI2ThF4H9HyS6EoyInts1yQhz29OeN9YlEjELZs0oPqw9MJ2CdIn/Ejlf1DnoGBbT3YAtWPAAIqWTL6l1JPbUMmlm1BEHocQENAxCw+voeFNMLySn+IzJcy/R92Ab/ciKjSwlJlt9d/PycVAE5fQmGORHOZZYBbRx5U+/jrT2v0N/c9R2CTdP0rH1PpdVGkujqUJ4+tMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ftGFANonnShghOowhq3ILucWb3bzIlt1z/4sXFTa4vA=;
 b=DiUhEeImjmooPNdXbQtROQPxY4I4zymxCdzzwVlSxTQncAPcypp56W79z1cwH3gg7EteAq1R2yDid2E/RJmf6dimHBYTa3a2M8lmdAtpA40iJAlxDVc/EBBu3urLemo6otqy8ayzINuu0bj0j6IrAJGZX22N/qZSI0DiVUhed2PwxjhnpCLIchnKwZVZGvO7OjI/8GVjxTJFBUh0ic0LUfe6clOrCHAr54kyD6wyRMl6Y4jLosEsVXzykDf1f8zWbwDEPLXaPmeCjIOUg2LKqwLVCSBcPF4oyuO0FHdFn9qkGBtVHAut2GXBfXdM0oH8RuYQm70T5xq8jiUVcrrJDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=telekom.de; dmarc=pass action=none header.from=telekom.de;
 dkim=pass header.d=telekom.de; arc=none
Received: from FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:8b::11)
 by BE1P281MB3015.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:60::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.26; Tue, 14 Mar
 2023 15:09:20 +0000
Received: from FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM
 ([fe80::e721:9a37:e9ff:f015]) by FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM
 ([fe80::e721:9a37:e9ff:f015%5]) with mapi id 15.20.6178.024; Tue, 14 Mar 2023
 15:09:20 +0000
To: <dave.taht@gmail.com>
Thread-Topic: draft-ietf-tsvwg-nqb-15.txt vs the cake AQM
Thread-Index: AQHZVn2Z6Z8FgA71X0GPB+1KpmSi1K76W5Aw
Date: Tue, 14 Mar 2023 15:09:20 +0000
Message-ID: <FR2P281MB15277B495C9274E1B8C7DDA59CBE9@FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM>
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
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=telekom.de;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: FR2P281MB1527:EE_|BE1P281MB3015:EE_
x-ms-office365-filtering-correlation-id: 1d84f097-e674-4eae-66a0-08db249e1655
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FGm2Hb/6nTy8lXNPRCbJrNq5qyS43iifYRCllSMVDzOw+OiZQVSjaGa0Zj4uJnZYUJTvFitaVcCWud5H9B74XTqkz6IO/7UHa4KoORxmdNDeKMmtRwGIi9y6krJ/XEIjY0moNOSmyhi2c+gqRaYIMn+8TsOsmtttfEhHSfF6q6ilknq2LAJDdPqT5D/NKopExG8wKEHTza5K18ot+0SsirVERdXlaNsF4P4lHtN19W79eLS3aOApAV33W2kgr8kQxZP33p61UtRTRXcukcIOs2CG7HLbmnRzgYj13YDxDslQXIfWVO+AEfY9nZlGgg4K988nYHMg1tMk0sydF06u4sZGrbXOK/w7+AqMLpgtEdnU379nfGuz8C1UURQC0XB5Hjzx1LI9a3dpj21uEcIxG9WrHeTI65rbugy8eBJ5c8bxLXEB/2mIYjg4dHwUAzpy4Gw2Y1YxnJHxuZc7dKg/NFvequHkNEEP8nnsqJuigH/TsDabOMENxQRTA+QF9CPtoVyKbp48+/JyAxxs9aUJ/ZxlSFFtfeqTaLof/CTPKS82mTRNNjIKbfGMs99Av/PpihzBhC4Q/EdJ4hJ6xJfOe5pJFir8QfTgEMeap+Xw/El4I7rLdQF6j5DY9DyEP7S+WxM/Xby5tnoEjpibcGWfImsAaSC+gmXeQqg9OCAZ/mHgeQQZPA734Zkes55h9baZYO1nKA91IBms2mZrR7tfaw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230025)(4636009)(346002)(39860400002)(396003)(376002)(136003)(366004)(1590799015)(451199018)(66899018)(1580799012)(41300700001)(52536014)(8936002)(5660300002)(2906002)(38100700002)(85182001)(33656002)(86362001)(38070700005)(85202003)(82960400001)(122000001)(478600001)(7696005)(71200400001)(76116006)(66556008)(66446008)(6916009)(66946007)(66476007)(8676002)(966005)(64756008)(55016003)(4326008)(54906003)(316002)(66574015)(6506007)(26005)(9686003)(186003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cW9sb2kvZmJCN3RMcFBvVktHVHMzcjgvL2s0bUludlgvVGRldE93ZzhlRi92?=
 =?utf-8?B?NWx5cGZiZWxrN2EvckEvaE9LVmVpdzlHb0JBNzdlTDFvQmY4anNZNGE0WW5L?=
 =?utf-8?B?V3ZJbENMUlhNR1hiQnNiSG5YYTBnUXdxYi9Lam9yNklxSnJZM2d5QkVKVmJQ?=
 =?utf-8?B?emduVEU1WDhwNXIyM2kzN2NmUmkxSUFqQ2U3ZW5TUHFjdTRpaURXV2QxT0Mr?=
 =?utf-8?B?YWNyeXlhZEw0d1l1RlVaSTFoNTl2OHZ3ZjJ1UVlGUmlscXpqa1llZ3VTVEp6?=
 =?utf-8?B?eS9RR2VCV0VDY0dTUXQvd1RwcUltMlNjeVpjbEhXdmhmbHZ1OFpwTUh6bHZ1?=
 =?utf-8?B?R1EwKys0N29sVHowZW0rVGxxZHAxSm5GU0NUS0h0L3JIcHJObzZidDlzNlBH?=
 =?utf-8?B?aEFkalN1OVdMS29SZnNQcEpjeWRpWk5YdGxmR0NSdDJXbjEwQVl2a2U3S0dN?=
 =?utf-8?B?aU9DNy9VdjNlRno5c1VwbEsrcFBZcHc5eDQvQWl3U3RqMVRpUFY5R3FXbmU1?=
 =?utf-8?B?Y3BMeG9zVXJza3Y2RnROTjlLV3hFZDVuRS9MczhJdE43cUVUR2ZDYzQrZzhL?=
 =?utf-8?B?SFArd1BqQk1rSmJqUHpkMllLMXFGVHlVOHdhN2pJZnh5ano3M3BldGYvUlpu?=
 =?utf-8?B?c294QVAvRzZhQll2ZCtaajd2dHZ0RlFFVE5EOGRvblZ6d043NWx5SGh2ZVZX?=
 =?utf-8?B?OU15NmptdmxqV3lpSHQvNmpwRmRPUmtRZnhRd3NWcWlVQTU1Sm8vUUdHdnFE?=
 =?utf-8?B?RmRBcVg3R1ZpdEZNN01JYjBHMHBjUVhDRmcxZXZaOUFpUTJHdzl5bEMrRXdr?=
 =?utf-8?B?dGxBVG5wUHhIazJhVG93Y0h6ZUJQWHV1R2FDL0QzdDcrekE5RkZQNWRZNkZj?=
 =?utf-8?B?MzNmV3RiRHRLNmRLL1dZR2VjdGpOTTNuWkZKTWZNQTF4S2dpNnRkaGZPN3dC?=
 =?utf-8?B?MlJqRWxWWlRNc3Ziam1nYnNFdEg5eGwraFYwbXJEN1NHbFlrckQ5SUJNMzgv?=
 =?utf-8?B?SkxQOTRWZW8wcXEyTGcxTzlWdU16SCtXSjFZVlhYcDR4Z1FNUSt1R2JMT1ZH?=
 =?utf-8?B?UEtJREo1ZnVqaVVJZGM1ZnhPeDZmL3ozQjVIMy91WWRjVFNKREdzMmh0L3Bh?=
 =?utf-8?B?SnVtOThqUzFvaXNUSDZEbnNibUtaQ0lyM0RsTHFtK2pKVjc2VUUvczVLQVFh?=
 =?utf-8?B?NERrT005R2Z0cEZUbllpZEJ4NURmSGsvYzk0czRScmhtTzBLTGg4MWVVSCt4?=
 =?utf-8?B?WW9qNmlmSjNVV3NTcmJIdDhwTXNRU1E4ZXEyQ1RjaGhuZzA2MmgyWVA2bmNu?=
 =?utf-8?B?MGxtZCtuUEdvZjhEQk5aQXNCREE4eHVMUldVYnBWNkwzUU1WZVF0aUY3MVA5?=
 =?utf-8?B?am9abjN2dk5kby92NlNST2hKUTY1WUtxZERNQmR3dmdmemd5SGR6OGZxSXIv?=
 =?utf-8?B?cWNoNC9OZ1VEemsyb0QreDBHdjBmZUhzUCt6QzVIblFmcy9sOG9iUnhqRTlH?=
 =?utf-8?B?OEVoY09jUGxrQlhJRFBwSWV3b2RJM0d5RmVGRkZpYVhMOFpaNkNadFg2WnhI?=
 =?utf-8?B?Vkd2V2JLK2tCb3RSN2dwd1FLcUoxdktPSDZOODJ2aHpVUlJXNG0xdGVCNE44?=
 =?utf-8?B?VXBjOVl2VldaVlAxMHI3aUFXL2FWcmZuYTF1eXRUUGNkc1dFc0JVWXZkZ2JW?=
 =?utf-8?B?TkhUbXhCY2lMUGJCcVJmMzJ4RnRibmxHSlA3bWJnVStnN0c4em5nMVB5cmFS?=
 =?utf-8?B?WmZLbUtXUDFkSFhmN0tXTlg1cmJIZFgzU1NQYitjVUFBYmRxd3FFc1NuaFJ0?=
 =?utf-8?B?Nll5TjlseEM4V3ZtRmw4ZkhjdWErNE0zbDExN25STEpZeHJkcVV3NjlqMGhO?=
 =?utf-8?B?YndoZ1JRNEtkVmVGNXFNWk9vSDRrZk0xbVMwSzA2U3FDUVJyZzVQWkxaKzdw?=
 =?utf-8?B?VlQzdGtaMzlsenJ5a2tZUGllVm9MWGcxblZLdnF4aFdrcjFCWEJyYmpKTUdi?=
 =?utf-8?B?M2gwMG9nNXJpTFEvblRMWWc1Z2JreEVoUjBYdEJqRk9hRmJzSFJpa2pQWnFS?=
 =?utf-8?B?Tkhwa3BwMkdQa3RDUXY5RlplY1FOejZSRWpYWXlUU3JLbGRSVW9ZU1RPdjd1?=
 =?utf-8?Q?4dqiVHS1/EOXeVMnurjKhUWSt?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: FR2P281MB1527.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d84f097-e674-4eae-66a0-08db249e1655
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2023 15:09:20.1029 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bde4dffc-4b60-4cf6-8b04-a5eeb25f5c4f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UPC3i/B7XUMBIWLj/UpOlY6lf5Whqpw324ZRHDFbw5cr4yY+L3oITYYGFQG/bQ4ZJ5ASf661VKR3EZY7MYsf/MHmrTetgkJ8zeqpH+aoZAs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BE1P281MB3015
X-OriginatorOrg: telekom.de
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
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
From: "Ruediger.Geib--- via Cake" <cake@lists.bufferbloat.net>
Reply-To: Ruediger.Geib@telekom.de
Cc: cake@lists.bufferbloat.net, g.white@cablelabs.com, tsvwg@ietf.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

RGF2ZSwNCg0KdGhhbmtzIGZvciBhc2tpbmcgLSBJJ20gbm90IGFuIE5RQiBhdXRob3IsIGFuZCBt
eSBrbm93LWhvdyBvbiBMaW51eCBRb1MgLyBDYWtlIGlzIGZhaXJseSB6ZXJvLiBEaWQgeW91IHdh
bnQgdG8gYWRkcmVzcyBHcmVnPw0KDQpJIG15c2VsZiBhbSBzdGlsbCBzdHJ1Z2dsaW5nIHRvIHVu
ZGVyc3RhbmQgaG93IE5RQiBvcGVyYXRlcy4gSSB1bmRlcnN0YW5kIHRoZSBpZGVhIGJlaGluZCBp
dCwgYnV0IHF1ZXN0aW9ucyBvbiBvcGVyYXRpb24gc3RpbGwgcmVtYWluLg0KDQpOUUIgaGFzIGJl
ZW4gZGVzaWduZWQgZm9yIEFDX1ZJLCBub3QgQUNfVk8uIFNvIGFnZ3JlZ2F0aW5nIGl0IHdpdGgg
b3RoZXIgdmlkZW8gcmVsYXRlZCBEU0NQcyBtYXkgbWFrZSBzZW5zZS4gR3JlZydzIGRyYWZ0IHBh
cnRpYWxseSBzdWdnZXN0cyBvdGhlciBQSEJzIHRvIGZvcndhcmQgTlFCLCBJIHRoaW5rLiBNeSBt
YWluIGNvbmNlcm4gaXMgdGhhdCBubyBmbG93IHNob3VsZCBiZSBhYmxlIHRvIHN0YXJ2ZSBvZmYg
QmVzdCBFZmZvcnQgYnkgZGVzaWduLiBJZiB0aGUgTGludXggQ2FrZSBpbXBsZW1lbnRhdGlvbiBk
b2VzIHNvLCBhbHNvIGlmIGNvbWJpbmVkIHdpdGggV2lGaSBzY2hlZHVsaW5nLCB0aGVuIEknbSBm
aW5lLiBJZiB0aGUgcmVzdWx0IGlzLCBsZXQncyBhbGwgbWFyayBhbGwgdHJhZmZpYyBieSAoZS5n
LikgTlFCIGFzIHRoZW4gd2UnbGwgY2VydGFpbmx5IHNlaXplIG1vcmUgYmFuZHdpZHRoIHRoYW4g
QkUvZGVmYXVsdCwgd2UgZG9uJ3QgbmVlZCBOUUIuDQoNClRoaXMgaXMgbm90IHRvIHNheSwgTlFC
IGRvZXMgb3Igd2lsbCBzdGFydmUgb2ZmIEJFL2RlZmF1bHQuIEknbSBob3dldmVyIG5vdCBzdXJl
LCB3aGV0aGVyIEkgdW5kZXJzdG9vZCBvcGVyYXRpb24gb2YgaXQgY29tcGxldGVseSBhbmQgSSB0
aGluaywgZHJhZnQgdGV4dCBpcyBpbnN1ZmZpY2llbnQgb3Igbm90IHByZWNpc2UuIEkgc2F3IGFu
ZCBhcHByZWNpYXRlIHRoYXQgcHJlY2lzZSBmbG93IGRlZmluaXRpb25zIGFyZSBwYXJ0IG9mIHRo
ZSBMaW51eC9jYWtlIGltcGxlbWVudGF0aW9uLiBEcmFmdCBOUUIgb2ZmZXJzIG5vbmUgYXQgYWxs
Lg0KDQpSZWdhcmRzLA0KDQpSdWVkaWdlciANCg0KLS0tLS1VcnNwcsO8bmdsaWNoZSBOYWNocmlj
aHQtLS0tLQ0KVm9uOiBEYXZlIFRhaHQgPGRhdmUudGFodEBnbWFpbC5jb20+IA0KR2VzZW5kZXQ6
IERpZW5zdGFnLCAxNC4gTcOkcnogMjAyMyAxNTowMg0KQW46IEdlaWIsIFLDvGRpZ2VyIDxSdWVk
aWdlci5HZWliQHRlbGVrb20uZGU+DQpDYzogR3JlZyBXaGl0ZSA8Zy53aGl0ZUBjYWJsZWxhYnMu
Y29tPjsgdHN2d2cgSUVURiBsaXN0IDx0c3Z3Z0BpZXRmLm9yZz47IENha2UgTGlzdCA8Y2FrZUBs
aXN0cy5idWZmZXJibG9hdC5uZXQ+DQpCZXRyZWZmOiBkcmFmdC1pZXRmLXRzdndnLW5xYi0xNS50
eHQgdnMgdGhlIGNha2UgQVFNDQoNCkkgaGF2ZSBiZWVuIHNpdHRpbmcgb24gdGhlIGNha2UgcmVs
YXRlZCBwYXRjaGVzIGZvciB0aGlzIGZvciB5ZWFycyBub3csIGFuZCBpdCBpcyBteSBob3BlIHRv
IGdldCBzdXBwb3J0IGZvciBOUUIgaW50byB0aGUgbmV4dCBsaW51eCByZWxlYXNlLCByZWdhcmRs
ZXNzIG9mIHdoZXRoZXIgaXQgZ2V0cyB0aHJvdWdoIGxhc3QgY2FsbCBhdCB0aGlzIHRpbWUsIHVu
bGVzcyB0aGUgc2VsZWN0ZWQgY29kZXBvaW50IG51bWJlciBjaGFuZ2VzLiAoPykNCg0KQ2FrZSAo
cGxlYXNlIHNlZSB0aGUgbWFuIHBhZ2UgaGVyZToNCmh0dHBzOi8vbWFuNy5vcmcvbGludXgvbWFu
LXBhZ2VzL21hbjgvdGMtY2FrZS44Lmh0bWwgKSBzdXBwb3J0cyBtdWx0aXBsZSBkaWZmc2VydiBt
b2RlbHMuDQoNCmJlc3RlZmZvcnQgaXMgZXhhY3RseSB0aGF0LCBiZXN0ZWZmb3J0LCBhbmQgd2ls
bCBub3QgZ2FpbiBOUUIgc3VwcG9ydC4NCg0KVGhlIGRpZmZzZXJ2MyBpbnRlcnByZXRhdGlvbiBp
cyB0aGUgZGVmYXVsdCwgYW5kIGdpdmVuIHRoYXQgZmxvdyBxdWV1aW5nIGhhbmRsZXMgbW9zdCBv
ZiB0aGUgTlFCLWxpa2UgcHJvYmxlbXMgbmF0dXJhbGx5LCBhbmQgIFZvaWNlIChDUzcsIENTNiwg
RUYsIFZBLCBUT1M0KSBpcyBhbGwgdGhhdCBpcyBoYW5kbGVkIHRoZXJlIHRvZGF5LCBJIGFtIHRo
aW5raW5nIG9mICpub3QqIGVsZXZhdGluZyBOUUIgaW50byB0aGF0IGNsYXNzIGlzIHRoZSByaWdo
dCB0aGluZy4NCg0KTlFCIGZpdHMgbmljZWx5IGludG8gdGhlIGRpZmZzZXJ2NCBtb2RlbCBpbiB0
aGUgdmlkZW8gY2xhc3MsIHNvIEkgd2lsbCBwdXQgaXQgdGhlcmUuIHNpbmNlIGNvdmlkIHdlIHRl
bmQgdG8gdXNlIHRoZSBkaWZmc2VydjQgbW9kZWwgYSBsb3QgdG8gbWFuYWdlIHZpZGVvY29uZmVy
ZW5jaW5nIGJldHRlci4NCg0KQXMgZm9yIHRoZSBDUzAtQ1M3IHByZWNlZGVuY2UgbW9kZWwgaW5j
IGNha2UsIHdlIGhhdmUgZGVjbGFyZWQgdGhhdCBvYnNvbGV0ZSBpbiB0aGUgY29kZSwgYW5kIHdo
ZXJldmVyIE5RQiBmYWxscyBpbnRvIGl0LCBncmVhdC4gQW5kIHRoZSBkaWZmc2VydjgsIEkgZG9u
wrR0IGtub3cuDQoNCkFueXdheSwgZG9lcyB0aGF0IHdvcmsgZm9yIGV2ZXJ5b25lPw0KDQpQYXJ0
IElJIG9mIHRoaXMgd291bGQgYmUgYSBkaXNjdXNzaW9uIG9mIHRoZSB2YXJpb3VzIHdhc2ggbW9k
ZXMsIGJ1dCBtZXJlbHkgZ2V0dGluZyB0aGUgcmlnaHQgYnl0ZSBpbnRvIHRoZSByaWdodCBsb29r
dXAgdGFibGVzIGFmdGVyIGFsbCB0aGlzIGRpc2N1c3Npb24sIHdvdWxkIGJlIG5pY2UuDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpDYWtlIG1haWxpbmcg
bGlzdApDYWtlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldApodHRwczovL2xpc3RzLmJ1ZmZlcmJsb2F0
Lm5ldC9saXN0aW5mby9jYWtlCg==

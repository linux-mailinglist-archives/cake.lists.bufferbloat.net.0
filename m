Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8541B899B
	for <lists+cake@lfdr.de>; Sat, 25 Apr 2020 23:31:40 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9B1633CB38;
	Sat, 25 Apr 2020 17:31:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587850299;
	bh=ZxirUbebvYr66IDkmp6BZukYu2Ki3xAAPg3k+MjML5I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m6V9vWwVEmatzF0x+qtfJFLk0S34utwKhfhGo4i2j6NOB7Y7snjZTQ/Pe173NLpkY
	 PdM0s/ynGdQP5KcMnRyURuM5SY2lufDg9dx8trJL7OJcOiyvg8PkhurJERlU6TIgF6
	 IaDFqO1s6RWLYfoRFmMPombggIFiAnJG4DDCEwojERiKt8KCg/lIwXdR68R88Q29F4
	 Z6GN615alkKhUK9EhI+Ss7Tvccutvhk6w/DjMhM7CAoW070AYeFY02o0iW/uunxV8G
	 A1qQK2nPOL0WszOhAVr7SbaRDdgRwX1CC6wfnplz1uRBlPwcNCJ7YHb2hkqDL1BMjf
	 zcmWy+cc13ZLg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-eopbgr60088.outbound.protection.outlook.com [40.107.6.88])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 38A943B29E
 for <cake@lists.bufferbloat.net>; Sat, 25 Apr 2020 17:31:38 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g4itTACkmt8yAiJ18Evn+xhfglfQJ54pk5jMdv6U3eZhl8jlu9nMS2dgcGo0X/P7Nvgn8oUC7azqmv84hAL0jpuyc4Ser31VgUjzlZvEWQd2sscFBu9a3rbjotASxLSWnjvFmzr3iy1zcnZMyHF/C1WsPnkIA41oiB3rACazGdmwhY0rmhU2hMfwB5/sIRrTNeajHBYrureipe8aOi1S1gjW4sAGv4r12G0mSej1NUDc6JiEeFd4Ps7y3hQJmYw2c+Qp9zfuiQAeAa8c+Qnj9UnXZ/vxcp2JviLjc+r2V9lYOFW2IMNl5IswcT/y20QgGOJhRrieyGyKuHf27L7K5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SZyH0LyGtXt5TU3ftIipeJHeyGyeMLFV2W7xfNn4zMU=;
 b=nONYvxekcPdtsPVbGd5ySw2KhN0FZBoTQ6jjHvNOM/UmO9jAYnwAudUqm8qYLxE3m2oFr7soowfRpexSow18gciP9h/PH4mh7r9tHFIJ3G0Rjt+TtjXsbOfDeugF2YnbP2eszI7qF7gnhqCh8okRUa3EBBVoW2xhnq4p5wEkbMZIIeOAAhSZN0JgZniLsS6pQ4uL2CqzX3gEuw2NIKhMCJmIFUBnYOfilUR/5N0ylX5gqFLvODXYlenqRD8o1OkZKWRehKs8oKrVbwmuIPwH9kPVbO/V/pc9hr1i3ZDUWjNmZob01wwn7+6xKiBS/yhfbDDEzvTehr51Kfl37RxFwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SZyH0LyGtXt5TU3ftIipeJHeyGyeMLFV2W7xfNn4zMU=;
 b=Y/WDZn8pL3S1Jv8ifIPUWrc6rhPlZBcGUsNrh7lUOTm0wiK8riaNWU7QY0K1SiEe2RxxCE5uAiN2nvt1qHJM+5pVOjtcXSgpiHwfONdzTqUGpuI6qxnbFMp7xwVJyF97yJ6CektH2/m2S3T5aKqeTbqzWVJcpTsMazNbNMaX9Mo=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB3503.eurprd03.prod.outlook.com (2603:10a6:803:30::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Sat, 25 Apr
 2020 21:31:35 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2%4]) with mapi id 15.20.2937.020; Sat, 25 Apr 2020
 21:31:35 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: "David P. Reed" <dpreed@deepplum.com>
Thread-Topic: [Cake] Cake tin behaviour - discuss....
Thread-Index: AQHWGvGmvsYI2khSOkWkfQsfjOsk4aiJ9aKAgABWX4CAAAYTAIAACdCA
Date: Sat, 25 Apr 2020 21:31:35 +0000
Message-ID: <0AA356B0-AC91-4F4E-94A6-184C3E090FCA@darbyshire-bryant.me.uk>
References: <62228545-5DE2-4600-A9BB-52D891FF5AD4@darbyshire-bryant.me.uk>
 <4D896254-FFB2-4CEB-B596-A6D2E510243C@gmail.com>
 <32DE972A-3359-462A-A12C-77714B2563F6@darbyshire-bryant.me.uk>
 <1587848186.866926178@apps.rackspace.com>
In-Reply-To: <1587848186.866926178@apps.rackspace.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ce3793d4-c3a8-41f6-30ff-08d7e9600806
x-ms-traffictypediagnostic: VI1PR03MB3503:
x-microsoft-antispam-prvs: <VI1PR03MB3503BCD2948793E59AEBC8EBA5D10@VI1PR03MB3503.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0384275935
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(396003)(136003)(376002)(366004)(39830400003)(86362001)(8936002)(81156014)(8676002)(6486002)(33656002)(966005)(2906002)(71200400001)(36756003)(54906003)(2616005)(316002)(76116006)(66574012)(6506007)(186003)(6916009)(5660300002)(4744005)(508600001)(6512007)(4326008)(53546011)(91956017)(99936003)(66476007)(66446008)(66556008)(64756008)(66616009)(66946007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2hBnk137vdtKvwxNWkRWgZvCJNM4/sb6RQTC5aEV2uM6/pwcEcE1orOrOrLojW0heD97EfRVLONrYt/QUTzhg/DgMQQ6vv4+YbWjNhr46iv+UcXnTOXuFA9o/ZJyV3hupz+ra49kO8cpeeDYAZidbLXDiBMBBZ1ogMTFP1twlDTHa6W6aHW/WcQTYU0aSC8gqTDl07RMQzIs4jC9AjSlYyuPoOQExbjuOGNH6coAIXcFS178hhJjYuDo+qp60wTJe2xk7bKWFLO5/SUv+LpoCn4LVk19BPdKpnZLZ6fFv/X2zGVTCTMe4zaOkS3uyGwvFA9pRqfFlVEYp6NoErLEgBRsn6vpLxPAwqT5v2ID0sDSko/0NgPUnamyICmQOQybrkK4FOa+J/DcCMkkExhf54+W4FqgO+nA0h+27YAHXikK5li/dJtu5I6qypJy0KKd8bK8okUS1WCfBwpQRFai+nbCkMBPpyl5JePoeJ+wbyo0OxLogWd0H7Tlx3ZNKiy+n/P+iA/W33OzmtODMpLptA==
x-ms-exchange-antispam-messagedata: cnQzaDCBC8NUFQuC7t2c7A0FsmBaWfxGYBdkEMkaiv4f7hNxpOvbntys+ZIfzq4uvbm5RPy6FvwhWuErf5C8f7Ew6q5AyU9I8n1kJWoIdDHivwFDoUuxXRceobzZBeUliVP2/nEWXC0U75UjIRtdgvBaDwU9zgMmJscZ5g0FoSUBNI8hszf0OB0j3jkE6u8IH92wo3cFp+ui022DN4sVRUlHOyNOJlYUuDLWO3jiMQNsZhL8yIOVQjsoJdpeeUKVR/nUnwbcTDUAx1lUkoNQ7az5OGvpwWA0KSDoZEjtfNIDQ3ayMcO2UZVFAyCaCbCQ5YZdx/I+K3oyOfrfU79AmR8xMrVJtANF1NxlYrsKKKnZRdfMpz8Enzf1zwR8NFPnLLCoxPrQlC8PfuysXuPj839MouuuAiiy07PE6yn26gXiKgXm/Hy0C/VbfWRT7WyOHMfLiYpRSKCkj0npK4HlIe4LrpCEYhiGmv+y+GUwH2EqrU37+ID+JK/wvGvFaBKYISEwqMs7io1IVksh+6UWtMEM61N4miAQzioWsImp3rxfJZF9KUhzFiQxMg0DhFgKVAOYhDOpXu3qvcex1dxRTXIedeJe8tvG93Uy+0Jc/xxzR8CNFVa/nlTlVKKC5zuDojykwm1vNL9kUQBXIcJivyEAU136cd7NC8Xp/Pyg0O2mGL9NGZf8dYNImyqh3oSsKN/9DTHTCL44eaPO5yJ8STk8UuRGnaOv4cUMhLCChghFOREO1LA1XPgH4ubsdfLnp2xpGXxHD93piQG05X1fi7MTJuUQJVFAUyagLO3G7qIAm4hCru9WAGoZFmENwtIttltBfm/VfUClsOimWFWNzg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: ce3793d4-c3a8-41f6-30ff-08d7e9600806
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2020 21:31:35.5311 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j4JTAphbeUuTl17rn1tB3MIEkK+H50WNJy0q6numZW6FupZuY+cx8tsG2aK0/7iN+gnGFZZGgscyk37O8+V+r2sJPvVEJxNQ9qZlWoGsvDY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB3503
Subject: Re: [Cake] Cake tin behaviour - discuss....
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============8489899521861003710=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8489899521861003710==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_3331A43E-E022-492A-8763-5F688CAF47DF";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_3331A43E-E022-492A-8763-5F688CAF47DF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 25 Apr 2020, at 21:56, David P. Reed <dpreed@deepplum.com> wrote:
>=20
> Question: what's the "lag under load" experienced when these two loads =
are filling the capacity of the bottleneck router (the DSL link)?
> I'm wondering whether your cake setup is deliberately building up a =
big queue within the router for any of the 10 bulk/best efforts flows.

=
https://www.thinkbroadband.com/broadband/monitoring/quality/share/3dec809e=
cef5cd52f574b6be5da9af28326845d6-25-04-2020

I don=E2=80=99t reckon it=E2=80=99s bad for the past 24 hours, one peak =
at 50ms.  Avg latency increase by about 6ms during load.



--Apple-Mail=_3331A43E-E022-492A-8763-5F688CAF47DF
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl6krDUACgkQs6I4m53i
M0pkOw//S2TanbVmDpNAMI/ceaUDUTUsVs2kxjxW6uExqYMD/xryxuih0WKyjLE6
XxNEdDSp35k/U/pY/efRue/qzEPsvHMLnmirDu2gaN8Cz7z/atDSk6lLy24ZNpfM
gvEcNaj1uctc4WjzF5vLZlx3yOHJznKz552bqKIWN/uPx5MpCkCpIwOal3Ttn5aO
xYOz7d5hVDPIqqGGCU1thbAzMmbFKh1pE7h9thpuAQp5GWazIzfF8KtkHQkStwqP
IymO/LbtPRF/L8qAaGVc2/bxrGM2VQDA/y/TVxr/nD5zx8JbUydirauXfskBqwEb
TfmVOb+MGo8ppj4A8aaH/OS+Jo5N58XaE2DNdn/dQAboSe9AsPwJ3FR6KOzPgG+y
rMH+jeRmvPZmnNv4V9ZkO8yhPVJYgCAg2UyU0AvSDpEbFDLC2WFW0qSHxBhCtyg+
9joGTs4LMVcs4yg6sPOsEWWKKTuGy/xwa38y3nJqO51u5Cns8o0M3mZ16oR9YyMx
P+FtGQ4C7xQSp2CDG7eP3qpHAH8v+qVhLrNXle1qbJWIHv9MIa+A6bfd5rC6EZfx
3Anrjbn2YDmmG+mE04sPQNUkfsStgXiIhmZv9Wu007zoLXKHaNG36Q1omSEmLX0M
6VAMNQlx4WbvP5WMf48HZWcRanilMkjrJowWSEFvX6zKsbofhB0=
=wbS4
-----END PGP SIGNATURE-----

--Apple-Mail=_3331A43E-E022-492A-8763-5F688CAF47DF--

--===============8489899521861003710==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8489899521861003710==--

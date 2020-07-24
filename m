Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B125A22CC6A
	for <lists+cake@lfdr.de>; Fri, 24 Jul 2020 19:42:13 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9595B3CB38;
	Fri, 24 Jul 2020 13:42:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595612532;
	bh=hzIcZSb9PX4UEaULSXlF99UNqagKstmgYQ3DeIGFnr8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZOnLwq9t7C2pkoxY8WKW+vYyFaglfX7Clr1DNakEJDJ9WA0jTqfuA1d12lYO1fWI0
	 /EnMn9VcIJMGe0mgt+t3r8HmeNs59ASxeo4KxFfDcQNoDT93m4YTeGluDcL6U/uP1w
	 EdqWRKXb6Sfgtv1taHzIdtOBUGYSJZ68GYhqmmvLgYjHE0Y70BQRXGMzXPWLubyEiU
	 O6FImqGjJqI7AcpDqEA4rttHBlxW+FGODpJ3E7SGu8SR1SuheDXtGtpXqO/SzFxk0N
	 LBEYQSjgXJ4MDde/2Gk0JNtr+BV0Sv3WWw39OO9T7bf3ogMRlASBByJeg7dXDi0T3s
	 9wWqU3EiAF3PQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2070.outbound.protection.outlook.com [40.107.21.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4D60D3B2A4
 for <cake@lists.bufferbloat.net>; Fri, 24 Jul 2020 13:42:10 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bFyF4cPbHsrI1nioTL2+DK6+YYiOd84oFFzlsOS3T9sdbr9KFdw6/P6Wo2daADoM0ZFbt2wxxQSCRpJy9VNIG+p1WvaOneDiqSO4PgHs1vKBuGHUcMS/dTKRnby+JebCb3/UyMFHntCiTxyXozMwsY4KDoTAFtAp77P7IWwSqtCmop7bXGmllgA3JEv0SkTAyohAelt0asmtr1FgOH4ZsLGjcxtJ0c1PpKXL/5no/Wcd+YosR4NorbtbXBDcrRydFJNFW4CVSumhBuRylPOeXACEbxdBaPau/7QtWSbJe4z1DX7liNs90AnAwxnWKXb63xlc3rqCzX9/Jc00/i5I3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=89qcJlrUIl3oYhWfiUtzojZnrGsXc61jiyXFHKdS6jg=;
 b=Hdg3XIrPxPxv0MfRLeyiWcyEfL/WRwk8dSTSGm4HSNOBsxG3gTyAI7PIsBrugkiT0uLev0xGxAKXISd3ttfJ3Sawf4yZLgrSX3XaTjDzS/1dd1/B8CA3mzqqpuSxMuHcEaCEwOT3m+BYgn5v+4hIM9IrcwNrabPfeiwqWtU3ARa38JFZgCIK4gVekeSVC6ihntT4Rs9JQo9goDdb0TH8QYZ/MWx+IINlLxADnMyh6oGwBo4G15UOTo5g8tqgXsJ7lC2lLrisuY1qCBXISJV47adwA366TuuTjSeBXX5X4gn9mCR0mU238QZDnTiNGdnaDUT0gmPMrxflCYRtVyyBpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=89qcJlrUIl3oYhWfiUtzojZnrGsXc61jiyXFHKdS6jg=;
 b=F1s8z7jolMvqbpsC4vVCOUm9RSJuBbjxepz3gU5v9LwHlOXCDV3HzNFLu0AAvJfN6oXqd5FVOjEA07Bl6sbXXfiM3xwhcEcecW4IkqlynXnj9WUjfPatXuBYFaKYgbzLq1teBCLTqWiFY+nkoohJ15mTMMYZKG+zfN36rwXxV5Y=
Received: from AM0PR03MB4564.eurprd03.prod.outlook.com (2603:10a6:208:c1::12)
 by AM0PR03MB4947.eurprd03.prod.outlook.com (2603:10a6:208:103::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.22; Fri, 24 Jul
 2020 17:42:08 +0000
Received: from AM0PR03MB4564.eurprd03.prod.outlook.com
 ([fe80::8c7e:1461:d31d:e5c4]) by AM0PR03MB4564.eurprd03.prod.outlook.com
 ([fe80::8c7e:1461:d31d:e5c4%5]) with mapi id 15.20.3195.027; Fri, 24 Jul 2020
 17:42:08 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Cake List <cake@lists.bufferbloat.net>
Thread-Topic: [Cake] diffserv3 vs diffserv4
Thread-Index: AQHWYdMP82xlrjF1cECorjGMH4SWNqkW/9mA
Date: Fri, 24 Jul 2020 17:42:08 +0000
Message-ID: <CFB4036D-8EEA-44B2-A909-6FD8B495267A@darbyshire-bryant.me.uk>
References: <d5f74f85-7d72-40f9-a965-8335163d8cec@www.fastmail.com>
In-Reply-To: <d5f74f85-7d72-40f9-a965-8335163d8cec@www.fastmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.120.23.2.1)
authentication-results: lists.bufferbloat.net; dkim=none (message not signed)
 header.d=none; lists.bufferbloat.net;
 dmarc=none action=none
 header.from=darbyshire-bryant.me.uk;
x-originating-ip: [2a02:c7f:1227:c00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3c2b2977-965b-4bad-88d0-08d82ff8e368
x-ms-traffictypediagnostic: AM0PR03MB4947:
x-microsoft-antispam-prvs: <AM0PR03MB4947203920B48222AC8E7269A5770@AM0PR03MB4947.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2aaLYfchX4mo8+y1KjN5qMRfI4JdXlEe09R+5XJzNLZGEucFeVcISE7BDhGWCMOtRYRH0j4p9Q0Dc2oYX/t8FvcFulco7/u46KUFtN5RtlyxW4mtY/dAhnNANDSbckrBcv47M1M8J1kuCklfJPIIGdzv3lCRb98CVJ/BOJPq1yGj6ybuFWOiALs9VsX97TtWbJjVNj//iDNyW5HCLn9p4tgaSlgX+N49aK9cBj6j1FS+JIbpG1tI2MyxdQvVM/8sNxqwE1Lr8UsqUSbi4C+rBN9z/WjKpcChmPlhY5yVuUwoZpuakwgmLuyzLzYO6vBym4WG9YHxbU3ylIXevqta9Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR03MB4564.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(136003)(396003)(366004)(376002)(39830400003)(76116006)(91956017)(66446008)(66476007)(66616009)(66946007)(64756008)(6486002)(71200400001)(66556008)(186003)(6916009)(86362001)(33656002)(8936002)(6512007)(5660300002)(508600001)(53546011)(316002)(8676002)(2616005)(99936003)(2906002)(36756003)(6506007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: GWWgpqf1CW4EI/KGls5PDSgVk217tF96GAAeaPDfYo1hujzilaXqQPscnXbeYXYnLAYU0x8ckvjo3SnPl6xOgOyiOMFBi2aEYtg5e41NrvIE1dgWU48wV5e5E4HX4z7OsXGQ44tIJfZAm01gWGNSPrwZNBjDapoMMV5EISWtCuGZGz/tKfdypx9gyiWqRT92ZnlSHIZY+ro9zwzFcWf5Lautp4r4VkWLv/twWk3oK2c3SnNzbhVhUQO/cUPPGUjD8qHyEnZqTkQfHvTONXExTxuWVXPda3fDP/DupJgRLD83kNDZ03pPvYd1XBnVuBBudMutyChBU46bgK1r11UXrANEa1wpTVAILPebF4oZiJ9+yGyRlbgs9LKd5H13SL2FqM3bNUAle9r8OmCwWgsNkoAIa5IMz2CbMG/4FYNW6aiwu5rn8MGSZk9Wvz64C65BfyKNaLkXpT2vysvIKsl14V6FWa3SKtMZtyX/MiugAsAADJujtVttXLYIdnfjCR5QTX0yQiHwZSvJ2KYI5x7Ikw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR03MB4564.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c2b2977-965b-4bad-88d0-08d82ff8e368
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 17:42:08.5879 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NM5Xsiwdu8jotzScUPGtmvTFGGicGpuf8vbJJ7e8BoEs+klfpTgPr09kgDCJAApQgp3Bd2Hm45aXCX1n3d1x8wm1mSJf5ReVyJVSvoNFCqc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR03MB4947
Subject: Re: [Cake] diffserv3 vs diffserv4
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
Content-Type: multipart/mixed; boundary="===============3519657339691895539=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3519657339691895539==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_5AA2CBCC-E927-4D2E-B9F5-1D1F0568CDC7";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_5AA2CBCC-E927-4D2E-B9F5-1D1F0568CDC7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 24 Jul 2020, at 16:56, Justin Kilpatrick <justin@althea.net> wrote:
>=20
> "sqm-scripts used 3 tiers of priority pretty successfully as does =
free.fr. - de-prioritization seems a good idea, prioritization not so =
much."
>=20
> This is the best comment on why diffserv3 is the default that I could =
find on bufferbloat.net. I'm interested in hearing about what data =
(anecdotes welcome) lead to this conclusion.

As someone who is currently trying (but not that hard) to get a =
diffserv5 implementation in upstream as opposed to a local hack the aim =
being to have 2 lower than default classes I have some opinion on this.  =
My use case is straightforward, I want somewhere to put =E2=80=98Least =
Effort=E2=80=99 traffic (eg Bittorrent) as a scavenger class that loses =
out to my Bulk transfers (backups)   At the other end of things I do =
want to prioritise Voice (VOIP) above Video (netflix/facetime) above =
=E2=80=98Best Effort=E2=80=99.  LE, BK, BE, VI, VO

The move from diffserv4 to diffserv5 WAS about de-prioritization.

Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_5AA2CBCC-E927-4D2E-B9F5-1D1F0568CDC7
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl8bHW8ACgkQs6I4m53i
M0pOuA//VwxL5iGNr6hVVbjva0wq7/NvB0+K87lvou/4Ywf9csErWSpytjI4VYZd
5zJkkYGdZeIjt2NOhmP6oR4CiGEbmDh6rQkgL1iOQD10yP3lmXfPcA6PnQOU5Kl8
gF76zkAOUJJaCVLpHStSqQpQesI2Z4cY64uPpq8NtMl4aHxQJ8U8GNK26ApqWcg9
4SLXdXgfc/evNUACBl1x1vawz51ai4pcLlzflrm0oM6lKCeAdRbWeSEemwXfULrN
3Yl5lH4levw6TYLww0Zsow940GdfcgHH4k1+f72d8SmdGHWSw48xCqQBCMxziL9Y
5GofY6958YmpgzRGws7gWeAwFCjbc8MUOzzQqDpNlXliq6737PH6x7W9JsedpqWJ
RDMsnllBtyTZweGhWYYohHyiR0b3vCr8mYJVVFXs79YMFEhkLfiXTPnRTAeft/W2
wd7apG7Sbjt4Za0veBMMWzBEacOjauECwvgqdkPcyZFR6xYR8vJDPiPl/6QcEJHy
iXY9Cdd3Lnl9ri0ohwh9wBK4Tp9wegAopOM1THmBLSZRf2NelqZw2bHJ85ECBZFg
0ckPEY/NxH7RXs4mrmevk+mUGwtBeCJfNZEQPrNz+CP9OmozdA/rGbvNb95W9/Iy
El55G2x2y+pWG1tINUfM3NpvVz93lTJBBeT1slS6GyIa688ue1s=
=CLPS
-----END PGP SIGNATURE-----

--Apple-Mail=_5AA2CBCC-E927-4D2E-B9F5-1D1F0568CDC7--

--===============3519657339691895539==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3519657339691895539==--

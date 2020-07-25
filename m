Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 123E322D698
	for <lists+cake@lfdr.de>; Sat, 25 Jul 2020 12:13:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9CE893CB38;
	Sat, 25 Jul 2020 06:12:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595671979;
	bh=24SQqr8SmGb3gDZk5/4ZZt8RKmDr7smGU+ud68KzEZ4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eLGI0emrhNPMms26D6OqG9GK3mHePLDMmWrywYST99GO1aZyJML5Z8NUcAv1gcyyp
	 Vo/2WUTZy0NBX/dWrWSJUvIgx7tPk015UAnpBs9zhq2T1ZZwDiiwlURqdNEj4dCW/x
	 cwwLJiZF3kxyiz42lZp/rM1Kkl7tmKZ8WJHdFvhn3WX/bbQ+vAM0tbce7CZEJcpP6n
	 7g9xEFwXaUPIzLhGTRhxsZ5VMM+I8bVKW9iv8rvgoaSMSD07tVEVr08+AxeIA3c768
	 Af2UVICpWcyM+TlGxkkkqK7sMuqjO+3uCqpoZ/jVQ791d9uT709N8lWtPLYMJ9XI6Y
	 +2Gk0zlqqvWKQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr70052.outbound.protection.outlook.com [40.107.7.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DCB0A3B2A4
 for <cake@lists.bufferbloat.net>; Sat, 25 Jul 2020 06:12:57 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dMDS7JCN4CciTu+AaCBYCCxnzCciG3qHt8LQInxTVS4zRNEkx9Ihfzn4OXOZrXoZK0mj7ERS0h9bXe7kSKmAutHhG2XWAMBMc2lquFFkLUNz4GgcWGboOUxTdsULrdHtKPezsHCu7xolU8RJxXQtQO/sZqQ3bjvQJAML2aOczuq7351PxZYC1Szkxpx8YqkzW7FzmeExXc+Ki01v9fkvWHQkZ0bYeSORjCcUSqeGhA1aQsrIXHtrSVNbIs3KBrri+5rSwfvlA9khw0sseeJTckvJdKocWNLmlguYveOt6TL73PxPApSZem1bxgopdUh/yKnNfV0A83fgjAKJT6B/fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3PORTg/Fy1e0IApz3ba1QQFqrmqDxnH31WE7SvRrHu4=;
 b=ZALPU69c2Omc/3d7U4f/SavdNkQ9nCH3PENZzT8VlRGSiRIMw43mb4dRLeuGAV1tGn7bOwjEVZGUc8WZqo9+8R0ZQqYmvd+xDLyqwQM0Wrw2ihp264vtYHqmB5F08gX0w82gdD+ZiXq0RNx66Jftw+aNk5vKsot0/soU5QqoYXpeY4gInXVNJocCfEQiZd+sfzholaOrmv5U/Vzu3Gl57KqmUZ9mKzkDD67SYLBKNQmz6/C9/hChqsQb/sWMeuNIsSH5Xs+l0LoWZf42hbxGTyb7y0SDllbVtnURtZG37QAVaMuM4y8H9sPXZDRH4RDMw5klWA+1USMs6dR/l8clXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3PORTg/Fy1e0IApz3ba1QQFqrmqDxnH31WE7SvRrHu4=;
 b=sRPddLuvARuMY6OKJ2srv3cKZ/LGG0m7lEMWUmzJKelg0aadldtiGsicDF0nt0jsAz3X6NcCbEw2P+swkkkOOE6HlSsxCvjynuSlZsAvyhmlKpcpbh+Il9eEd0eK/tqPMecEDsF6tW1MnfJ7JzBXucn8c4JDHD8VkjTUYDj68k0=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VE1PR03MB5312.eurprd03.prod.outlook.com (2603:10a6:802:a2::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.22; Sat, 25 Jul
 2020 10:12:55 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::dcff:4b45:98e6:d823]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::dcff:4b45:98e6:d823%3]) with mapi id 15.20.3216.026; Sat, 25 Jul 2020
 10:12:55 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Cake List <cake@lists.bufferbloat.net>
Thread-Topic: [Cake] diffserv3 vs diffserv4
Thread-Index: AQHWYdMP82xlrjF1cECorjGMH4SWNqkW/9mAgAEU0YA=
Date: Sat, 25 Jul 2020 10:12:54 +0000
Message-ID: <0CCA78BD-201C-4668-A013-24A3F6F4EC87@darbyshire-bryant.me.uk>
References: <d5f74f85-7d72-40f9-a965-8335163d8cec@www.fastmail.com>
 <CFB4036D-8EEA-44B2-A909-6FD8B495267A@darbyshire-bryant.me.uk>
In-Reply-To: <CFB4036D-8EEA-44B2-A909-6FD8B495267A@darbyshire-bryant.me.uk>
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
x-ms-office365-filtering-correlation-id: 87253345-e025-4c64-bfb2-08d830834c3c
x-ms-traffictypediagnostic: VE1PR03MB5312:
x-microsoft-antispam-prvs: <VE1PR03MB5312BE962B1563A2C941A1BFA5740@VE1PR03MB5312.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GSEgcW06eR7a+WykRe6Csw4ehS9M+o+vE3/E8khsQqX6eiKdgvq333040TdZoKXvTqu49H3uDmM5VP306c1Rw5LHKe7R3vi0UxsHfdIt7Jdz95mlEcUaYR4xPkUxmGO5CD/rDBFfqiflw3n/Blv9XQ8p2zLph2be02px5Zo6zuDCvYsdjWhZHgGWveSp9FKLZwgjXQ7pgcfjHZM06gXr6DVAE6IDd/AoAeb8PijmVsY185uObIeGOexRgiXchJvKjhzlFvaUskX6FLxMTODYNTeAZgVt4MNVPCvow/bzHCNCpJH7ZxezwjStuVKaDh/bnXItBTXmQ/qtzQfxrKqWtw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(136003)(346002)(39830400003)(366004)(396003)(6506007)(2616005)(53546011)(5660300002)(6512007)(86362001)(6486002)(36756003)(33656002)(8676002)(316002)(4744005)(186003)(71200400001)(2906002)(508600001)(6916009)(66946007)(66616009)(66476007)(66446008)(64756008)(76116006)(66556008)(91956017)(99936003)(8936002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Ro2rgQGzMuDTJyb4napWi9hgwpVQEfeX7QqcUXIst6IR/xO0r+eJPCK5E/8Bzd2DIhq63Wk8fObZFY+pDq0bY91iCjjHfkr1cLi4VvxGaErvPD4yTxaFYuMt7fxSsTJGvAnhuuAAxaYhpJn2V7Y16BYD3Tk1c77Fou+UR2PM8AKPzAxXDO9/ddvD9ORUSS87sRwiBNxTsNvHDeV/Q4LfsT7lGzESjcpxomPjz0iboT67BaYQ6mRsXCv95NMbi9XbepUQoP9txkq42l1ZDUfLosudF9vPPBY9wMYHTAYpwH/fGzDYTdLA0CGhC4jlUEVpYg1h9IODLlZz7g7v/CYilg+j4Z12EXagH9siXnmDyAQQJKCAj8DtNWp9Hk1jHDwm0jC22SIN2V8YLRJIn1AM6MeGJs+WZRnBd9VpXPhgzcqcpAJ5Z8M68j0JYj6NlmiccJZPav5PQgIzV60tX/R3eX3H5S0KGZVEeyaTadiLADP095xFFSYR8tY7B1hh+6/w7sAcDteYMOS3h760BVeprg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR03MB4575.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87253345-e025-4c64-bfb2-08d830834c3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2020 10:12:54.9454 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d8gGrbHRN12H3nlnkY/XvCn+I7Ss/rfispHkC/2WR/RD0JxsEpk4KuHA4/b3MdTVCEwfznW68PvlR1eY1KQwxwvXhNz1QJfJ9wGHG0bBsVs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR03MB5312
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
Content-Type: multipart/mixed; boundary="===============2964396454448448321=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2964396454448448321==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_C5D6D0A1-006F-4ABC-927C-7BF7F074B09A";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_C5D6D0A1-006F-4ABC-927C-7BF7F074B09A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> On 24 Jul 2020, at 18:42, Kevin Darbyshire-Bryant =
<kevin@darbyshire-bryant.me.uk> wrote:
>=20
>=20
> The move from diffserv4 to diffserv5 WAS about de-prioritization.

It was also about minimum bandwidth allocations:

LE: 1/64th
BK: 1/16th
BE: 1/1
VI: 1/2
VO: 1/4

So worst case, best effort should get 11/64ths in the extreme case of =
all other tins in use.

Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_C5D6D0A1-006F-4ABC-927C-7BF7F074B09A
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl8cBaUACgkQs6I4m53i
M0r+KBAAk54GdzZr4e03pob1Uq/YHIk33qXACBvdZa0LDQCouPYhLZBppI4l79GG
J0Ytcfqh/GyxBUvhfBZAUSw6EzYrG+ufs2LN2MDMmuoBsdmtw1772tIsRAc7WieD
8ht604pSKrAnG4ZG4mVcrZYlz4nJNWfT5V/dyHOLgWAx3kVmBaEN+ecla4OX0sxZ
DUrc9u3J4QzXuTx7kJIrefduEndD1QEYCQ/o8llYy8KuKtlP3qHrpF/033XGpNeu
Va+uG0SyaVnAM8RBmoXhs4U0H1leMXoXgRvF8ygKo7m8odszpHckEX7XKkb2HDR6
8h1jOpr00vF4cvg8YP5G27jMGDjLHDyWwyD2+e/noQUr4SvN1DsvlvMk/oe6s7U6
kfi8a7RtcmKGR5kQBfymZ5io7yLT3mUmW1CTqRO8Yr4r9Sae/hP7GM9pGV9ETCQj
7SzfGYN+mn8DdWnK6wnD36OBdm+aJPqkZc6TAzx3yzgNIbA8fy2lYrKJ/yJBVM87
CWOW+0US6azxXK13BHXEdvEY6l1gI6zqhSNlZXy4s5WZ282hSxYQHjt+PVeQSPMp
mK6k5PjHt0WIbCXYGM/jEILF2/A5JbLLrMNwGfNOfsF+HP/gbJ5qlw5lt8fe6dXD
u8i0depkuXZsjORw92pNrVKIipHUPReIFEdoIjJd0vZ+GHYPmFg=
=UCUk
-----END PGP SIGNATURE-----

--Apple-Mail=_C5D6D0A1-006F-4ABC-927C-7BF7F074B09A--

--===============2964396454448448321==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2964396454448448321==--

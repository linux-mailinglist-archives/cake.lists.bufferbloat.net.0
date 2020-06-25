Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2E620A025
	for <lists+cake@lfdr.de>; Thu, 25 Jun 2020 15:40:35 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E59A33CB38;
	Thu, 25 Jun 2020 09:40:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593092433;
	bh=cPLBepqqR299s+D3AczMkKwBnb18c0ZtzX3EzxSShX0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gIJZaIrkoIpCCzfs+hjrbEWvD09DhDQGrzK4ofo011nnKYVvRIpK+V7XMkSMER5bH
	 3kAqV8+Ne0BqPtn4IuRPob28Dx9lHj8XbGlcZp8iX/JWNyIPW7R4id+1ZpvtF/UBDE
	 EC9Geepiy9j9ErTYdzNprOwIrieJrOt3/IMlsvr/pMvQ1y9uTnWF50LNFYUXgxeHxh
	 Qb/02KiLWekCREUyuz1jS519tqG4ItINcE9KFSpwToZbGd1WZQULZ9dP5OB4aVuZ3J
	 qxJ6k2ezpqxaT6Aqtv2VoPPzguAsP2NXUVFqpVa3uzy4xy12OhNRtfjc//xf9ZIvj3
	 ANbmMVJfhfuaw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-eopbgr60055.outbound.protection.outlook.com [40.107.6.55])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EBE5D3B29D
 for <cake@lists.bufferbloat.net>; Thu, 25 Jun 2020 09:40:32 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R+fIAEEoIuMwJiZfkIsqiUbtoMmELsDBIwOiSAQ7b0WI31iNzni2YH3OAWhXvfkyzHdirJ7XLLbKGOQy/znnhToLWhYS5aPphY8E8DTuVRoSo6OdUcSQT44RftZWyBeIYEx73tR9/7KFtMmI7hQudx5bcpETYSnfmR8RJ06Rc4rWQhjZaUXgdTQ1IlToDpXGUcDa3jyDTFgkiZEdVWUGYL3hHXvEkmS4ZJeMd51jsK7XpD2DucPDYDrOA0HiMCCu5yE8u3PJS1qBd76AvNPrz3lbe4A9VIUcwoh0+T2tI4+JT0eR034KMf0Qn0cgP6GWkmfpzMjt7zSmmHTgAoXJzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ayQwtk4sAuHm/Lz6CrBSuxg/rwDJ+SieGaoTMq8Ujyo=;
 b=mhxWvKOMdVMh/iycG8jW1Ha3l3siWQcbKSHTR7z2brEInnscFqvE/L8hxCSVPlhCpWmb/FQmwN1xF/bgXyfLdHyt/nh+IwLL0wM6LTuga0eLzlKr2dT93JvHEZ5wSLeViQ/+pBeO1FeFOPg41VFuMkxSBlucBqRqfvTmp2iBIGapAGljmy2i/OGcHS+RWxBVfdsyjXJD308rS2WyMG+pa5F785pecvlqKDOZLyb0glQSvdRRzxwyYmZPG//GFh7OMElQS/W/ClkzAnmeTiqUVBoEPpwyVnSOj2vIoncW2ETr5nxpN0BqoMJVhxZsDxEiKthBhrXQw3WSSBDopa6vtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ayQwtk4sAuHm/Lz6CrBSuxg/rwDJ+SieGaoTMq8Ujyo=;
 b=hVUQMeiLoOpxuc2bwQOG8XNe48iWhBCqx+GL7pr+EPIA2CJxoGmfDwUQzXc90OJsUWH8N1rGCgpBYjhr1YxPvn6USokV5qrs3QXvLA1guzfhGMhqM+K3xAOMWu90/8NsycNaR+l5xhgZbBlokD92wgls7AMyfPdkfyVEd71d1Ro=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VE1PR03MB6045.eurprd03.prod.outlook.com (2603:10a6:803:112::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.21; Thu, 25 Jun
 2020 13:40:31 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::dcff:4b45:98e6:d823]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::dcff:4b45:98e6:d823%3]) with mapi id 15.20.3131.021; Thu, 25 Jun 2020
 13:40:30 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Sebastian Moeller <moeller0@gmx.de>
Thread-Topic: [Cake] Why are target & interval increased on the reduced
 bandwidth tins?
Thread-Index: AQHWSjRzmOyqmANMDkGEJHIRIZfZaKjn1kqAgAGBroA=
Date: Thu, 25 Jun 2020 13:40:30 +0000
Message-ID: <FBCBE043-450D-4512-85B6-587F8876C7DB@darbyshire-bryant.me.uk>
References: <8ABBBE20-5045-41CF-967A-CD8961400ABE@darbyshire-bryant.me.uk>
 <1A34E9D8-C6FD-4E09-866F-DB30F73D6ABC@gmx.de>
In-Reply-To: <1A34E9D8-C6FD-4E09-866F-DB30F73D6ABC@gmx.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
authentication-results: gmx.de; dkim=none (message not signed)
 header.d=none;gmx.de; dmarc=none action=none
 header.from=darbyshire-bryant.me.uk;
x-originating-ip: [2a02:c7f:1227:c00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8f27115b-e368-4c5c-0f1f-08d8190d5419
x-ms-traffictypediagnostic: VE1PR03MB6045:
x-microsoft-antispam-prvs: <VE1PR03MB6045A99896FFA87C7CAEB1C0A5920@VE1PR03MB6045.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0445A82F82
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jF07dtUbThAqdD7SMcNj152WE3fPsIusNCIfj5Ps3oYjid3lov5FRegnZLJpjM345GrE9kf4hF6CxfCmqB2uRXEqFOJ8qRU7TSHkDFK0G5FnnhzPZ9BjQlGXDnhsrKcI9lHdXw24KFAzm5oGK7qYrmWQlZiX4474WtCS7omvnhx/wYI/7Q4Ne1Uet7MQ1ApmSZdt2+aHfHLLrgW2uthywj8fUzQNkJ8kM+wnJpungFiCRqJtlBJM5U9VuMxN4p5rUm8xP9tUVfYtN3dh5UYJy9i/7USIRhK0wXNRaINnRTXNZqBUE5uHHcIEG88sVP68XqZj/LR6qNCTEdMnm1f42dRM4a0l6bfjE/uXtKQ5VBX/YtvouLTmgctP+Fc+5qCt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(396003)(39830400003)(376002)(136003)(366004)(36756003)(53546011)(91956017)(71200400001)(5660300002)(186003)(8936002)(83380400001)(2906002)(76116006)(8676002)(66946007)(99936003)(64756008)(6512007)(33656002)(66446008)(66476007)(66556008)(316002)(66616009)(6916009)(6486002)(2616005)(4326008)(6506007)(508600001)(86362001)(3903001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: //ilBvLEusIvQQYju6538/ccKwE8Nxvr/tGHu5sV9UTfu8E3bFt+QuIlZaO+c57LUds+fj1+r+lMSnnwEXCgN8NG4QWcbhpZDBA95A9yD4H7+QJl4x305mhlmAPcg6U4QgyD53O/JEKeEsfHrM5NgzQxFpg+c/8/XjvQMdfWTxwwNwGnTkCd5+Z9e4XGeXBDCk0O7yyr1tRwTUBxjNwnnlRezmFs93Y27DV6jVa1VsH7z4MwLSQSr02CCLS97+MCIVE/VMS34rfj5SiaZ8b4rSkt5tQcROCn5fRi5FSfRQVWXarbGpz6oM2/wy2xGxbDGfTmqoE0/4gEM3MclM+wh66kwjBGh0xdSKiVQ0pZzJKoFLTQbnt5YtY7D8DzxhNFZghiukndUN6tSf3cyhO99Oihcz0MbctatHib5qjx7E7rfm+mbVGscMGzoEut6Cnnj4ofKkvORVrZM1C03/0u2iHD1OCfJlkOVEPWbWHLY0tDDCwOC0IckHkKJmg7j6KPABq91fo6dseb4ewb+aOsVg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR03MB4575.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f27115b-e368-4c5c-0f1f-08d8190d5419
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2020 13:40:30.7303 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LomD0VY0BWur2r268UpNTJwcLXYRngJjElWXY0l9u1vMmEFG6AKelbSLSRzpb8HHx3LheG8wZKwVWsvrBYhQcy+LOAzrxeauFrTBeUhI/Bg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR03MB6045
Subject: Re: [Cake] Why are target & interval increased on the reduced
 bandwidth tins?
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
Content-Type: multipart/mixed; boundary="===============1932239762574560356=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1932239762574560356==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_F9965210-46AE-4F10-B29E-727207EC73D1";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_F9965210-46AE-4F10-B29E-727207EC73D1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 24 Jun 2020, at 15:40, Sebastian Moeller <moeller0@gmx.de> wrote:
>=20
> Hi Kevin,
>=20
> so the way codel is designed target is best understood as a function =
of interval (allowing 5-10% of interval as standing queue allows a fine =
trade-off between bandwidth utilization and latency under load =
increase).
> Now, interval is basically akin to the time you are willing to give a =
flow to react to signals, it should be in the same order of magnitude as =
the path RTT. Now reducing the bandwidth allocation for a traffic class =
will increase its saturation load RTT and hence increasing the target =
seems justified; target just follows along due to still wanting a =
reasonable bandwidth/latency trade-off.
> So in short these scale the shaper to work well under loaded =
conditions. But Jonathan & Toke will be able to give the real =
explanation ;)
>=20
> Best Regards
> 	Sebastian

So crudely interval is the delay before we start jumping on packets.  =
And I think that=E2=80=99s the wrong thing to do for ingress.  So the =
scenario I have in my head says that BK traffic could burst at full =
bandwidth rate (or higher) filling upstream ISP buffers and thus =
inducing delays on all other traffic because "we think it=E2=80=99s a =
slow link and have high interval and target values=E2=80=9D delaying our =
response to the burst.  Whereas if we retain the default interval & =
target from the true link capacity calculation we=E2=80=99ll jump on it =
in time.

The same thing happens in traditional egress mode but it doesn=E2=80=99t =
matter as much as we are in control of our own buffer/queue and we=E2=80=99=
ll see the higher priority traffic and skip to servicing that and =
gradually bring the BK tin back under control.

What=E2=80=99s the error in my thinking?

Kevin

--Apple-Mail=_F9965210-46AE-4F10-B29E-727207EC73D1
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl70qU0ACgkQs6I4m53i
M0p9ChAA2B0lbXv+ntrw8hmq8oZKSa3n7A+5/3RvmdXiJ5KlCr6mw05HrM1tp4YU
Hghf4m3kcWmQ4yuVl0fkVuTeqWrIx66CgLwvGU6jxSsWb4UcfUE3DDEn30Ufpu20
CHxKmpQi6onZnxONqHIZ+y+OZilCdV+ETKqDTtcN6W16mxGy+Ztib1AT3gSM8BtH
0s2OakzlmFXDRhdUPAKQsE/3OZMpGi/zi9m4js2utJSpzkkFtUZ5Sz/+4kImE2Fi
p5Ta+sSUohfv1UTkuMh3VnwlBMZjZzx6Ztbdqv1X1iJGsAxwzi70qcQsgejUawJJ
PCLXHTPPmxxdcYxJ9EsSAK5o//0MYKnsZ4OgK6BtuA/HZXLjNvtoCw5QCBHjUnNC
tudeoZvvZ8hlEIVvwFf+LFjs6OznVii3ouMOOqN76xzSksuIMNO5f1XBVDtrOoUr
pFx3yAWXbBBuubiWqDe7ebRaPotxo2TLjHqSnWl+27XLFvBAg+OkT2/mUEZANoOx
qP+xpzANcM8CgZJ0Ev+V+WjuCZ3Avmrlx4MG4QpI9GFy6sQiKsE4Bq3oYukNmZ3n
saDdU6x/HrPPNa9OtGYoEOQ1RnBf3DfVtC0c45hgIWPWJmvsVGBqDy2kJl8TizTV
bDbbljbiV4wnE7ctvHWsowPQjkeXNEvCewqMxuQVRLUxDy8gUhI=
=ZFNG
-----END PGP SIGNATURE-----

--Apple-Mail=_F9965210-46AE-4F10-B29E-727207EC73D1--

--===============1932239762574560356==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1932239762574560356==--

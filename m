Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E751387C8
	for <lists+cake@lfdr.de>; Sun, 12 Jan 2020 20:02:21 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 666763CB3B;
	Sun, 12 Jan 2020 14:02:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1578855740;
	bh=5CjCVdfv9hjggOHnylKLAe2AMDoQiGmW9fgdw4zWYfs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b3Yr8QbhEHy7tG9nn+Ovl/13Ov51h2l2ift0fi5MIGuCDAp+GcYwN7yKLxcQuOsBj
	 Qyi15ZDO7YJ3thFKty6OgQT3UZHWARr0C2WNSEHEY8xDxhRjmkzxEP743g3TFHx6ex
	 ViWNTHoQKYu+daWGb9rI8mTCF1vSr7B9bjJ4bPOTfRGudYJmS/ZiJ7MxhjEbPNEzun
	 ChItxS9IvlLPD+8iJIvioKPzb7jmew2jAqnoa3oMv7ZRIKaoih6v9RT24ZR6flx872
	 yr5IUTSc8Q3jJ7hwILA8GoZwFIE+zweSVBFHxSi0fCBmRvqqMfGHxmhZly6z+WaQvM
	 IOR0zI8FdZQHA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-eopbgr150053.outbound.protection.outlook.com [40.107.15.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 11E223B29E
 for <cake@lists.bufferbloat.net>; Sun, 12 Jan 2020 04:53:44 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zigq+sVIuaCR/Ynv9JwueOg6Nv63HehuVqhlm16uiT6bvYY4AwQ6rMkVXBtaHbd+DZehQocOZ3C8Z6MqeVQAXTSeoT0/TEZ5AZiw3eD+IMUmL0NTzluPADgMWs7s5+IpHnrppxcMUS8UhfMemdCfAPMW4toui2PSYC6W6s0gkv6QVKtQ1+ew//Hx1+EhN73Qf96CKOLajMJ+ciOpHPEpqgVr8xdPWLKm3S+SSL+YU7y6Zy7qoHrVROjC+NUqEeBf41wpipskyOFMvu99i+FTDUv78ZEwyQTR240e853ISWYZlc4bOgtSg/u5/wRTIwU3LpMYhwBI3TBTI4vtUZOguA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4UYg8etXF3XLkrpAW8uEdcV/mdBb6I2OW02cQHwPUBo=;
 b=lZL5UGLfer9PK60/OpaBnpYJXN7Fk230vCn4hzxF03436W0jXydTH4BLFJksUK6lv3HL36ePUNXm+FbDLBQ7MQl0fhsdJTgCXHYaDxbvM3svdH7wCN8ZM6WZOPr8XoJKpXaq4Sd3omEQv7cNs5gkvnaCY6k5Pb6bS0CXFsRksQqWoRwwU1kWEsNkvsEjpnnKXyDNX6QtadF8Rj7/4AMlDtdKBU7X+sF9puEuQyi+4dbPpu1XPKLi+CcH8rRKhtqCdVkco0c42P3b/ZbcSlQaBh/hCPA7qOOf2hcxbWndmss4BA5B9PrBKgUJVOqGwS9npIKvUPe9r6YEf60+5Lp6zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4UYg8etXF3XLkrpAW8uEdcV/mdBb6I2OW02cQHwPUBo=;
 b=WIChPm8HPbCaRNEWPlYN+wDekVCmySbnCYkZ/PxbBh0bKaAO6PErhmWZ4MLVmIVAEdyQCU+F4xvuKODMw8JiqV5KzUQZdU1m3WK9Ld/r5c7YIIzj4fAHYsv/xRWpoG8clyU5K161XBOEIlJMgvjYW4rD7QqF5n9Y7912A6ObYcc=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (20.177.50.76) by
 VI1PR03MB2879.eurprd03.prod.outlook.com (10.165.195.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Sun, 12 Jan 2020 09:53:41 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::e88c:a98c:f344:61f9]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::e88c:a98c:f344:61f9%5]) with mapi id 15.20.2623.014; Sun, 12 Jan 2020
 09:53:41 +0000
From: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: Dave Taht <dave.taht@gmail.com>
Thread-Topic: [Cake] Patch "sch_cake: avoid possible divide by zero in
 cake_enqueue()" has been added to the 4.19-stable tree
Thread-Index: AQHVyFfbYhQ8qWSP0kqsYSQUQOB1j6fl7h0AgAALMQCAAATsgIAAzWqA
Date: Sun, 12 Jan 2020 09:53:40 +0000
Message-ID: <0418C624-2EAC-4541-AB8F-5CC6F3538AE7@darbyshire-bryant.me.uk>
References: <1578730684729@kroah.com>
 <CAA93jw6Hb0fHbqOMfc_6WvjSu2=JQ1xx__NvuUQEM=s6XBTrGA@mail.gmail.com>
 <13E6E54B-BCF8-44C7-9E0F-55127DB9A42C@darbyshire-bryant.me.uk>
 <CAA93jw5FGuyFhkej_V7wQXgGx6+dwve7fVj6+X0OZcO68GEhYA@mail.gmail.com>
In-Reply-To: <CAA93jw5FGuyFhkej_V7wQXgGx6+dwve7fVj6+X0OZcO68GEhYA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ldir@darbyshire-bryant.me.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e9b61b70-4e3b-4ded-15ba-08d797454df4
x-ms-traffictypediagnostic: VI1PR03MB2879:
x-microsoft-antispam-prvs: <VI1PR03MB2879EE1A5FC40419B885CCB1C93A0@VI1PR03MB2879.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02801ACE41
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39830400003)(366004)(396003)(376002)(346002)(136003)(199004)(189003)(54906003)(5660300002)(81156014)(81166006)(2616005)(186003)(36756003)(8676002)(64756008)(66446008)(316002)(4744005)(508600001)(8936002)(6512007)(2906002)(66946007)(6486002)(6506007)(4326008)(91956017)(76116006)(66556008)(86362001)(66476007)(66616009)(33656002)(53546011)(6916009)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR03MB2879;
 H:VI1PR03MB4575.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zMBnumnpD6rp/oNoZ1Y92acCHTu58zzX/WhrYTQfMdK42DR4Xw84Fb+qm3n8RUAGUj+ktGLdcpqKsqGrs5qZ4FSSgGhrauJcJrGINaGVBBj66p7/tmOKrP0YJ8dulZy1GbNovUdpzIoCiP7u2yjPWqVy044mnSic7OSyt3m+m1XiRwXtN2Vkn7z6tIDWnNs3ySfGrS//QA2L9fUWAw8lO1xRJil7nMX7rG7uPEYUzcSoBaHw0LcTRAtjT1RecJF2VOeK5xi2PTwiqfjfRmfhLQ//ZHGmvh3aXgAmJPSzuzaaX3GvJOdJVDqxTjaIwsNviu4f05viQs8lSouMq3wmoyHWJHqyfMYlgeD1VSNWeniYiGdRUY2ApKtygY+nwpcMnBQSjs349bRoDHolaD6cvxxlLfenlsqglu7Ozaz65OVvmR4MEDctL/xQWs9E6Cam
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: e9b61b70-4e3b-4ded-15ba-08d797454df4
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2020 09:53:41.0035 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E79ckS5FLc54Xk3y1Xfkx1sCRNqE2eQiZOm/UCVcuKsbR3xIdPgWidj470SRD62r/RLkvPW/8keHiMwTyXychg8R38S4lr8RWyp0aZHPXuA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB2879
X-Mailman-Approved-At: Sun, 12 Jan 2020 14:02:17 -0500
Subject: Re: [Cake] Patch "sch_cake: avoid possible divide by zero in
 cake_enqueue()" has been added to the 4.19-stable tree
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
Content-Type: multipart/mixed; boundary="===============4635214293773308908=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4635214293773308908==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_2FD42B0A-F4DD-483F-9859-C86A10BCAB34";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_2FD42B0A-F4DD-483F-9859-C86A10BCAB34
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 11 Jan 2020, at 21:38, Dave Taht <dave.taht@gmail.com> wrote:
>=20
> Thank you for all the gymnastics to keep cake alive in openwrt.
>=20
> I would still like there to be a sce branch of the out of tree work
> that I could point people at
> in my lca talk this week, but I understand that's increasingly =
difficult.

Jonathan advised me that the version of SCE in CAKE was out of date and =
we didn=E2=80=99t really want openwrt accidentally using the bonus =
features, hence the =E2=80=98no objection=E2=80=99 to removing all the =
non upstream kernel stuff from master.  Perhaps creating an =E2=80=99SCE=E2=
=80=99 feature branch is the way forward?  Wireguard recently went =
through a similar change in that now wireguard is in (very recent) =
kernels, Jason has split development repos into something like =
=E2=80=98Wireguard for upstream=E2=80=99, =E2=80=98Wireguard for =
out-of-tree with loads of compat stubs=E2=80=99 & =E2=80=98wireguard =
userspace tools=E2=80=99.

We have a similar problem in that we have requirement for =E2=80=98cake =
for upstream=E2=80=99, =E2=80=98cake for out-of-tree=E2=80=99 & =E2=80=98c=
ake for out-of-tree feature dev'

Cheers,

Kevin

--Apple-Mail=_2FD42B0A-F4DD-483F-9859-C86A10BCAB34
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl4a7KMACgkQs6I4m53i
M0qqfxAAvQR5JDo7g0wkS8Orz7VJ+ngu2MyYJqOxd2LH4PTc9R81pzxu+AZ2hLfD
RLVqM5RsdBnYmC52a7fuir4+VTFXslYQu5mpKQig545OhGcBQwFpeN7Uj32fWqX5
cDqcaMr7qK/vJa8OnZsOuirtdhDATqK3cxgCCkjY5hnwgPk7t+bfnCytXDUZepk/
uZ8624q1ooTdk3StSeV/x04P9ZbnyDCYSs02gPd84O5XUALmTf6HCfCStPQ084Nk
tsDla3m7qnZYp/bn1VCzXobVA0PipIkBSU49tI181Ia+jNOMj+WwUNtXd7J2iufj
omWVbXo3cZACr54S6cbwpIFUcKtCNyEwAeVSaOH4jOcMJGFoRTXf8XFeJwcW0nDj
iZfun1sFBA4U130QGUANlmTxRcn/wstMATYcSYitTPyyQ7tFhr1vvLrGoye9qr4/
RRBcYaTIKoktGxSpGcrcRzZOFRuKWMgMJCZ2gIVahfoHwSVo+A3aPNvuZ6Bz7ZU3
7NF4tKBrxJRKz3tkSJMNUHLrMjaKlRjKBJ7RhlSjtGGiPmnVSBJFPQBWzvRPOwZN
tO7/UZazjagvpzEWzDDKNqEMUDEqf7ni3U+xlxMc86QBBLHv/q6QbTSmJNIdNBvM
c0M6QJiGRxy36c81VlgWn1L66KepTkgTYJsCj3F1AO70xx1C9D8=
=yg+8
-----END PGP SIGNATURE-----

--Apple-Mail=_2FD42B0A-F4DD-483F-9859-C86A10BCAB34--

--===============4635214293773308908==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4635214293773308908==--

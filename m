Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F6B11F1BE
	for <lists+cake@lfdr.de>; Sat, 14 Dec 2019 13:22:00 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C1B583CB44;
	Sat, 14 Dec 2019 07:21:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1576326119;
	bh=Nm4n+SI6qFacCq6Q1cnT8FuwmpJmmy+qTJBQWO8w3Lo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lOymso3d2EBijPqC2ZcQGUbzKUrD1xjeEXDDwbFKOYQ6l8SEed1SwXAkIEOO9fxY5
	 sNfhWnl7iiU+Xx4mZzmCo7YXTZpzwyEgjgYl/VvNlXsdNXNxh14kcZv8b2bWWnOR16
	 Zv5j7MWJHzwZnwtpPSuFucmpcA7oG1TXaHyoQvqDtDyj+GyRktmSKJFa6PqjlJVJ/3
	 +bCEWlv7YwGqxtQRKNqYWmSRV5lYEDYywzuXkIj5aUwwj5bRRu+npzmmGzJo2URlLj
	 gJR0m1brsn9EM0+rGErJfU3qrFmOfkDHIL+41ooLnxEr7Ce0npInFlEyXHoVN6Dozo
	 1Ex6RcOEA8jWg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-eopbgr140042.outbound.protection.outlook.com [40.107.14.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C47B23B29D
 for <cake@lists.bufferbloat.net>; Sat, 14 Dec 2019 05:35:35 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gZyKG/y54dOuUU3yzCJp4ncFjOuLQssr5kMpM9ap0+US9aWr2K/rpZtikFOFKjTJJDp+wc/eHmOnBGmTbPOmkhtxj7Dlez8hmNL6CNRTnVCEz7WH1bm8rAofkxNYL/iiRruWKTOO4jos9XL9nwzoJIugsom7NAO0bdgWjqILvTVODIIYJQPb5Sd/sB6XWmPHopt+hR69P4OWytbrY5iG7iqTLwElwMCtm74RiQfhWy8MlrMpYCmKxomKv4l6ZwagYbD+KE/Yn0/WERZCw3uPcngklWgEnbopOhPa0TJow6syo2DgVc8CyaCCuLq00xZLGZ+6iHaa2jKy6pxmggSm8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4lpNUvIocjTQTWwbgm7E8+GEAKC/7YsrdLo58hpO/as=;
 b=eiZ5tcFLpHyRUJNf2NiZMQrQF+XRyhZUx3GatgjJCdJrczJh2/lYZj5OvvYmloXofMEYRgTU/Oa5e16ErnHJyvsCW9ucOCKWaO0lVgAoFurrlArrRnfZQsFrzm2+V9XOAUPquWVlcgBX9nfHjuaDktw28y4HZD36e8WO/qZiElambgRBXplvZ9qcJUu/Crnyen2VDbt2TsSBM+VX7fJzZeqDFJN0Yqnki9rQS7qPIW/DTkhpanffWgVaDaQNsQ9mnKZumRkoknl6QH1Dd9/s3aKKgZV78UYMycmX69depqb1HvafanptwMZk/S9VUaf4eA/gqj26H7fCz2H99EjOpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4lpNUvIocjTQTWwbgm7E8+GEAKC/7YsrdLo58hpO/as=;
 b=JuR6BeMUG1XwkkE5XD160CGTB9a3NyL0dnnbysLzCRhIzDxQARpRauawznB9RmDmq628RmJctAwiuEtsyj+zPxzGSLuzgr6PYh0BBA+fOkk7vahNpLwEH3jPKnoNc4q4zob2x8KyP39W0U/VEuFrH3/pFHw0C72QMMbSBX6Kk7A=
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com (10.171.106.21) by
 VI1PR0302MB3408.eurprd03.prod.outlook.com (52.134.15.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Sat, 14 Dec 2019 10:35:32 +0000
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::7585:5ab6:a348:de46]) by VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::7585:5ab6:a348:de46%7]) with mapi id 15.20.2516.018; Sat, 14 Dec 2019
 10:35:32 +0000
From: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: Thibaut <hacks@slashdirt.org>
Thread-Topic: [Cake] Trouble with CAKE
Thread-Index: AQHVsbtRZ44CjlHmXUuJ4/9UxQHHcqe4GGaAgACQgwCAAABggIAAFBCAgACnA4CAAAMXAIAACYGA
Date: Sat, 14 Dec 2019 10:35:32 +0000
Message-ID: <A265EDE5-BDEE-4806-AB75-4BD70053EC0B@darbyshire-bryant.me.uk>
References: <1d359153abfc413b4f61c647437427d6@slashdirt.org>
 <8FC615C8-4885-4F0A-B2EE-934DC4E806E8@gmail.com>
 <6E9587F7-C208-4568-8429-AEBA9E694E24@slashdirt.org>
 <E644DF87-72A0-43EC-ABD6-E8E2FAC26997@slashdirt.org>
 <46DDBCAA-EC6C-492F-8448-DF85ABB4E1DB@slashdirt.org>
 <1507FAF0-8A13-48E1-8A36-0D352F4FDD00@gmail.com>
 <FD87F736-DF93-44F4-805C-6ABCE8D4E172@slashdirt.org>
In-Reply-To: <FD87F736-DF93-44F4-805C-6ABCE8D4E172@slashdirt.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ldir@darbyshire-bryant.me.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e01d51f6-e856-4fa2-7e4b-08d7808158fb
x-ms-traffictypediagnostic: VI1PR0302MB3408:
x-microsoft-antispam-prvs: <VI1PR0302MB3408D529B652AB4902DFABACC9570@VI1PR0302MB3408.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 025100C802
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(396003)(39830400003)(376002)(346002)(199004)(189003)(4326008)(81156014)(8676002)(66556008)(81166006)(36756003)(53546011)(6506007)(66574012)(186003)(71200400001)(6486002)(8936002)(2616005)(508600001)(6512007)(5660300002)(6916009)(2906002)(91956017)(316002)(33656002)(86362001)(76116006)(66476007)(66616009)(66446008)(66946007)(54906003)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB3408;
 H:VI1PR0302MB2750.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tGu9jXt7Ud3m945kAlX1KuB+jRvYMdNPT8gydNzBJq4m1nSUv4PkcCSFxt31nUvqCZUhqOdec1mqmdT/q6PQ9NJtWiZZueBbuAGrrdarZ6qKbfeS2eqKBjmxwfyk5SfCAM4W8g6lxkah0rfE6VVg0+ViNkwMWsVHRrzM0IsNqp8wt6+stmIkiHjvvYJMDFy/lJhQWkWioYWcJ9kd10ng3WBsTJXHS27t8SEiXEUaLjyP9RtM9jC8udRNTABIQ3bymWPEmGSu4N2bK+kU2ylrK41/IN8YlSDz0Y16dxtKYEBxa0Qyb/5TIobBb3ucw/RITa/oyVFZw0ajJFWtf9joJ2/2OAXAVYZWF8scoWueMxD4acfiLhyl2Pt4zrHFQlCvxvvnc3g3y+x0GOUN9n44RBDR652cdUFa3rZ5mQhFbUvWwJNRpgPTRExbH5alUckN
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: e01d51f6-e856-4fa2-7e4b-08d7808158fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2019 10:35:32.3689 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /eNDe6xfXFR0caaXGW8ShSAO6m6oNmAp4m3GHFqiIZONtCOjoREF1gXwtr2T8Btg5muZFt5ulYQD5ApGeV6fjL1tatIKog69VGluIyoetaE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB3408
X-Mailman-Approved-At: Sat, 14 Dec 2019 07:21:58 -0500
Subject: Re: [Cake] Trouble with CAKE
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
Cc: Erik Taraldsen via Cake <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============8434023020107112734=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8434023020107112734==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_03140A46-747A-4346-9DCE-30B811EDE9CF";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_03140A46-747A-4346-9DCE-30B811EDE9CF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 14 Dec 2019, at 10:01, Thibaut <hacks@slashdirt.org> wrote:
>=20
>=20
>=20
>>=20
>> That's extremely odd.  That commit should only affect traffic =
carrying the LE DSCP, which is not the default.
>>=20
>> Perhaps it was not actually the code change, but triggering a rebuild =
of the module?
>=20
> No. I tried with and without multiple times: I built, installed, =
manually unloaded the module, made sure it was unloaded, loaded the new =
build; just to make sure as I noticed the module doesn=E2=80=99t print =
anything in dmesg when it=E2=80=99s loaded (feature request: print the =
current build version when loading, that would be most helpful in these =
circumstances).
>=20
> There is absolutely no doubt that on my router, with this commit CAKE =
is broken, without it isn=E2=80=99t.
>=20
> Here=E2=80=99s tc -s output with the broken version:
>=20
> tc -s qdisc show dev wan
> qdisc cake 800f: root refcnt 2 bandwidth 1200Kbit diffserv3 =
dual-srchost nat nowash ack-filter split-gso rtt 100.0ms atm overhead 48 =
no-sce
> Sent 7711782 bytes 5454 pkt (dropped 144, overlimits 15493 requeues 0)
> backlog 1616b 2p requeues 0
> memory used: 140864b of 4Mb
> capacity estimate: 1200Kbit
> min/max network layer size:           40 /    1500
> min/max overhead-adjusted size:      106 /    1749
> average network hdr offset:           14
>=20
>                   Bulk  Best Effort        Voice
>  thresh         75Kbit     1200Kbit      300Kbit
>  target        242.2ms       15.1ms       60.6ms
>  interval      484.5ms      110.1ms      155.6ms
>  pk_delay          0us       60.0ms       26.8ms
>  av_delay          0us       36.7ms        2.0ms
>  sp_delay          0us       17.8ms        1.7ms
>  backlog            0b        1514b         102b
>  pkts                0         5467          133
>  bytes               0      7913444        17970
>  way_inds            0            0            0
>  way_miss            0           44            2
>  way_cols            0            0            0
>  sce                 0            0            0
>  marks               0            0            0
>  drops               0          144            0
>  ack_drop            0            0            0
>  sp_flows            0            0            1
>  bk_flows            0            1            0
>  un_flows            0            0            0
>  max_len             0         3028         1118
>  quantum           300          300          300
>=20
> qdisc ingress ffff: parent ffff:fff1 ----------------
> Sent 218759 bytes 3710 pkt (dropped 0, overlimits 0 requeues 0)
> backlog 0b 0p requeues 0
>=20
> Here=E2=80=99s the same output with the unbroken version:
>=20
> tc -s qdisc show dev wan
> qdisc cake 8011: root refcnt 2 bandwidth 1200Kbit diffserv3 =
dual-srchost nat nowash ack-filter split-gso rtt 100.0ms atm overhead 48 =
no-sce
> Sent 3342962 bytes 2328 pkt (dropped 110, overlimits 6422 requeues 0)
> backlog 4542b 3p requeues 0
> memory used: 83328b of 4Mb
> capacity estimate: 1200Kbit
> min/max network layer size:           40 /    1500
> min/max overhead-adjusted size:      106 /    1749
> average network hdr offset:           14
>=20
>                   Bulk  Best Effort        Voice
>  thresh         75Kbit     1200Kbit      300Kbit
>  target        242.2ms       15.1ms       60.6ms
>  interval      484.5ms      110.1ms      155.6ms
>  pk_delay          0us       56.8ms        9.9ms
>  av_delay          0us       36.7ms        854us
>  sp_delay          0us        9.4ms        680us
>  backlog            0b        4542b           0b
>  pkts                0         2403           38
>  bytes               0      3509764         4280
>  way_inds            0            0            0
>  way_miss            0           17            1
>  way_cols            0            0            0
>  sce                 0            0            0
>  marks               0            0            0
>  drops               0          110            0
>  ack_drop            0            0            0
>  sp_flows            0            0            1
>  bk_flows            0            1            0
>  un_flows            0            0            0
>  max_len             0         1514          294
>  quantum           300          300          300
>=20
> qdisc ingress ffff: parent ffff:fff1 ----------------
> Sent 106781 bytes 1896 pkt (dropped 0, overlimits 0 requeues 0)
> backlog 0b 0p requeues 0
>=20
>=20
> HTH
> Thibaut

Which shows most traffic going through Best Effort, whereas the LE DSCP =
would put it in Bulk, so at this point I=E2=80=99m failing to see the =
connection between that commit (which changes 3 lookup tables) and the =
behaviour change.

Can we see output from =E2=80=99tc -s qdisc=E2=80=99 for the non-broken =
case please?

Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_03140A46-747A-4346-9DCE-30B811EDE9CF
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl30uvMACgkQs6I4m53i
M0oGsA/+OGzwA2ax381BQTKIpwPo52VZ7o10xQsuqIUCZtpGNxHzPYHUtxBbATNA
aui3Wcvx9l1waErdINZijJ/8bWBO21VBsBhhQ8rw09Mgbo2UjGm7NXkL4NlUeMMH
ag1wISYnJng/2tZvQQvpsirSlUQSCbBUnrxxJb47DgdET2afPxbIia42UOBARaYa
ksDrkKMMWcUUhUpu7UZf0VvrAwPXsQzQ2YeNvGCgjSbC0kFTCrPl6Qa/+fnZ8jKP
B514iXCCQU6t6Ydq8UALW14OennReJd1xwbEHqiCOEONEqYvu7aVRLsLWMC88j5c
eIe0fU4Y4+hOoyLUan5Hnbew8+FPSoRxmX9vg9E1SCB1cEsyKaBsLJMI6mj4tjS2
7mE+qleaBpZwRacKDdLDVwIb+My44KFPW9HmGQdAnLOt++F5c3d9Vx7POJwaIHGc
NW3WxoD34g8yJREmxVi1KCEhzz1jfXwj3XCe0Fhy3PeoJjD6/IkLfKfcbr88y3li
k3+oUHcyDr3JS04Y5yd5WJOfG5ebWNjljhdp/gojoU2yH1BldOswFL2mHZQ0we8m
3PyMiy73QNX2pRnS844Y9OWaW6tCh9T0vJoiEGlJJIoDFZuOdsEM31d7PNFfwwkv
yNMarNgYR9b0lbIkNq88GxJEjnxsIXQlCw6RR8340nsWvD6mWyI=
=UGCa
-----END PGP SIGNATURE-----

--Apple-Mail=_03140A46-747A-4346-9DCE-30B811EDE9CF--

--===============8434023020107112734==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8434023020107112734==--

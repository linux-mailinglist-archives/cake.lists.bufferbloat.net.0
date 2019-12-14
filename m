Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCE811F1BF
	for <lists+cake@lfdr.de>; Sat, 14 Dec 2019 13:22:01 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E3F7D3CB4B;
	Sat, 14 Dec 2019 07:21:59 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1576326119;
	bh=0Nw4/9byevUH8IMhkghvruhxr0Tl9LMAsPb0I3z2y2s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hn7f/kiyZbKLUJ28nl0a/eSbRxlcX/e+YeWhzna/DVaPUH4UgZ9Kd9Mj3soeCTD0s
	 aoFqwCHHT1TlBSC0Pi78Y9cr/p5E1NBC38AAtnTq/rLJv8/ygXfBz3rwnxRclSnJdS
	 7zeBKJdyqLsCEvjVZoh+l4wAg4A9JCst60T+O3g5mEEEIVImTl0MnR76BOeog2Q+Fg
	 FXUJvOmoC28SgWQZ4kgUc4weOj3y10B+3m+tFFC9aLDPYroPW3fFrMsXoDiZtmt/ue
	 jjXE8M5seyxCz5paCMMq65MVL2sa6bfiPzphErPExkyt4Vs+Hfi7sIHBpibGIgdzvT
	 PAh3LRlzohWWA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr70074.outbound.protection.outlook.com [40.107.7.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 954883B29D
 for <cake@lists.bufferbloat.net>; Sat, 14 Dec 2019 05:56:41 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RZEV6fhVv72Js4K7yICvFqoTo5cUJ33c2EicXecCk5/vz5wAHdYZQ1BFbmU4If19WuAhuQ6Msj+PRbOEcEZDK6KMDzAciOXmiLijjPEFLUkcVhI0uSwOfaDi1d+3oeIoCbgp1JYWyyvuW7UCcX/6OBvAgjl+VuRGWxCrABeRmfsZPML8BoiZUyYvWhCslLHvYEHyMMuIzXojvliTUeXT/ZDfpTFMbNGBS9rhyYSlN9aXefFGMg39gqMlepP2pcjoabS+m7oF6HYIG0gE2GqnUz2hqA+caRjI7WuOArH5speGo7mhjpMVBq4QfgzcN2qraZ3p0lVIMC/7oHYwgtyFVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jV/98WP7OYTm2sqIoJr4Lg0YIS7k1IhPjI2B9ZDQqMg=;
 b=h0VKsyRXfFLfjdB9IsTDEuR8BqY0TOeqwCJvF3UFEE8NY+BpA4Xvsm+eBE3kQ5Ei9kai4KOgHisXc8R291JMlYUbZZdsYaPUJokpQtVC9/RmRfV1ujpU6U87pdNTFml14bTvdEt4nildwJ0/lTjfIQkGFcydfjN6ndmcuAIohHWSj6zPs3YuUsu9hUiQ/CBPgSd3KIb5g2OwWnj+Wh1F9R19/EtHL8mUZ03oPchAHzN5Qy68bzxrt2PyA/nyUS0l3n9sb3hKoQuE74PUbHHMfsS8t5+EzSUo44uFxSDXtfhlgE9VAL03OII0CvVd1/Yjv7uXlyXDm0b6D9KR8xQGNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jV/98WP7OYTm2sqIoJr4Lg0YIS7k1IhPjI2B9ZDQqMg=;
 b=rTknf9+HUtjZErV1Fjq156ZmyQhZEhbUlLRTtvQdB8ZYcHRUkjpH6KaDDN57OUh3bA5fkvtx1XWtfDSo9mhdon/IUH8psjRsbcJrgsfLYmVwDI+XwQvhXfE+aT8dWuV5fZDddeCYDsornO3Q50kQfLAgCdUW0Ev3CABX81S4w0Y=
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com (10.171.106.21) by
 VI1PR0302MB3390.eurprd03.prod.outlook.com (52.134.16.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16; Sat, 14 Dec 2019 10:56:38 +0000
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::7585:5ab6:a348:de46]) by VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::7585:5ab6:a348:de46%7]) with mapi id 15.20.2516.018; Sat, 14 Dec 2019
 10:56:38 +0000
From: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: Thibaut <hacks@slashdirt.org>
Thread-Topic: [Cake] Trouble with CAKE
Thread-Index: AQHVsbtRZ44CjlHmXUuJ4/9UxQHHcqe4GGaAgACQgwCAAABggIAAFBCAgACnA4CAAAMXAIAACYGAgAAF5gA=
Date: Sat, 14 Dec 2019 10:56:38 +0000
Message-ID: <4E238145-37A2-45AC-B8BB-AD602C4D1044@darbyshire-bryant.me.uk>
References: <1d359153abfc413b4f61c647437427d6@slashdirt.org>
 <8FC615C8-4885-4F0A-B2EE-934DC4E806E8@gmail.com>
 <6E9587F7-C208-4568-8429-AEBA9E694E24@slashdirt.org>
 <E644DF87-72A0-43EC-ABD6-E8E2FAC26997@slashdirt.org>
 <46DDBCAA-EC6C-492F-8448-DF85ABB4E1DB@slashdirt.org>
 <1507FAF0-8A13-48E1-8A36-0D352F4FDD00@gmail.com>
 <FD87F736-DF93-44F4-805C-6ABCE8D4E172@slashdirt.org>
 <A265EDE5-BDEE-4806-AB75-4BD70053EC0B@darbyshire-bryant.me.uk>
In-Reply-To: <A265EDE5-BDEE-4806-AB75-4BD70053EC0B@darbyshire-bryant.me.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ldir@darbyshire-bryant.me.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8c376be4-3352-4239-ffde-08d780844b93
x-ms-traffictypediagnostic: VI1PR0302MB3390:
x-microsoft-antispam-prvs: <VI1PR0302MB33901070DC215949A9F4D27AC9570@VI1PR0302MB3390.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 025100C802
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(376002)(39830400003)(346002)(136003)(199004)(189003)(36756003)(186003)(6916009)(71200400001)(316002)(6512007)(6486002)(54906003)(33656002)(508600001)(66574012)(76116006)(91956017)(4326008)(66446008)(66616009)(64756008)(8936002)(66556008)(66476007)(5660300002)(66946007)(2906002)(2616005)(86362001)(53546011)(81166006)(6506007)(8676002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB3390;
 H:VI1PR0302MB2750.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BgE6GML4trjMeCbCao6Kgt6Xs5cCkYn3xBytt6bDsPZeXxrSBsLrBr/1reXNx4NYX+RSpIwHWWIeSQGL13crNXJBQzi8y+2YNEL7ygjDVqVjwO2x2WVgStfiGMIZgCtVZKmmEmnnOX5HnjB4lVVjhQzLxHIOFjdouDnsdszSHswQDdvzAUKLSATJBj/iyXwFABl0EYw7paSIRqKRca7gktXGhCbWnPOSOP2Ml74aPj45xyena9PEIdXzBUQtp+Hh1eKx5jSTLykFqcngpAUGDk3vDaXbZf+tCuuzKBhwfdMF9wxb4lgRwWnWb61O1rkrQ3LbacbFKLxyXodNRfc/wm4rSXecwnDxmfR2yRVkGtLFEqVtGcrOvdhFNn+f/eVfpcYnCDNk81vrbW39BEXSzTTlwjOxl/O/EH2JGQXpXVTG9j2ei/KDSFp7QIr0xsyc
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c376be4-3352-4239-ffde-08d780844b93
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2019 10:56:38.7053 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0rKrt4I+HkMao7OBI5mq28g0G8PU90GpM78zvrDZmYmdYxhffqd6Iow8ylwD/ajfU4WdOSMU/KBKyyd0lN45FwQ6H7sI+nuoa4TdcBVpkZM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB3390
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
Content-Type: multipart/mixed; boundary="===============3444004012738882852=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3444004012738882852==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_9E83CD41-4B5D-40AC-8A33-D7BB7F800876";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_9E83CD41-4B5D-40AC-8A33-D7BB7F800876
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 14 Dec 2019, at 10:35, Kevin 'ldir' Darbyshire-Bryant =
<ldir@darbyshire-bryant.me.uk> wrote:
>=20
>=20
>=20
>> On 14 Dec 2019, at 10:01, Thibaut <hacks@slashdirt.org> wrote:
>>=20
>>=20
>>=20
>>>=20
>>> That's extremely odd.  That commit should only affect traffic =
carrying the LE DSCP, which is not the default.
>>>=20
>>> Perhaps it was not actually the code change, but triggering a =
rebuild of the module?
>>=20
>> No. I tried with and without multiple times: I built, installed, =
manually unloaded the module, made sure it was unloaded, loaded the new =
build; just to make sure as I noticed the module doesn=E2=80=99t print =
anything in dmesg when it=E2=80=99s loaded (feature request: print the =
current build version when loading, that would be most helpful in these =
circumstances).
>>=20
>> There is absolutely no doubt that on my router, with this commit CAKE =
is broken, without it isn=E2=80=99t.
>>=20
>> Here=E2=80=99s tc -s output with the broken version:
>>=20
>> tc -s qdisc show dev wan
>> qdisc cake 800f: root refcnt 2 bandwidth 1200Kbit diffserv3 =
dual-srchost nat nowash ack-filter split-gso rtt 100.0ms atm overhead 48 =
no-sce
>> Sent 7711782 bytes 5454 pkt (dropped 144, overlimits 15493 requeues =
0)
>> backlog 1616b 2p requeues 0
>> memory used: 140864b of 4Mb
>> capacity estimate: 1200Kbit
>> min/max network layer size:           40 /    1500
>> min/max overhead-adjusted size:      106 /    1749
>> average network hdr offset:           14
>>=20
>>                  Bulk  Best Effort        Voice
>> thresh         75Kbit     1200Kbit      300Kbit
>> target        242.2ms       15.1ms       60.6ms
>> interval      484.5ms      110.1ms      155.6ms
>> pk_delay          0us       60.0ms       26.8ms
>> av_delay          0us       36.7ms        2.0ms
>> sp_delay          0us       17.8ms        1.7ms
>> backlog            0b        1514b         102b
>> pkts                0         5467          133
>> bytes               0      7913444        17970
>> way_inds            0            0            0
>> way_miss            0           44            2
>> way_cols            0            0            0
>> sce                 0            0            0
>> marks               0            0            0
>> drops               0          144            0
>> ack_drop            0            0            0
>> sp_flows            0            0            1
>> bk_flows            0            1            0
>> un_flows            0            0            0
>> max_len             0         3028         1118
>> quantum           300          300          300
>>=20
>> qdisc ingress ffff: parent ffff:fff1 ----------------
>> Sent 218759 bytes 3710 pkt (dropped 0, overlimits 0 requeues 0)
>> backlog 0b 0p requeues 0
>>=20
>> Here=E2=80=99s the same output with the unbroken version:
>>=20
>> tc -s qdisc show dev wan
>> qdisc cake 8011: root refcnt 2 bandwidth 1200Kbit diffserv3 =
dual-srchost nat nowash ack-filter split-gso rtt 100.0ms atm overhead 48 =
no-sce
>> Sent 3342962 bytes 2328 pkt (dropped 110, overlimits 6422 requeues 0)
>> backlog 4542b 3p requeues 0
>> memory used: 83328b of 4Mb
>> capacity estimate: 1200Kbit
>> min/max network layer size:           40 /    1500
>> min/max overhead-adjusted size:      106 /    1749
>> average network hdr offset:           14
>>=20
>>                  Bulk  Best Effort        Voice
>> thresh         75Kbit     1200Kbit      300Kbit
>> target        242.2ms       15.1ms       60.6ms
>> interval      484.5ms      110.1ms      155.6ms
>> pk_delay          0us       56.8ms        9.9ms
>> av_delay          0us       36.7ms        854us
>> sp_delay          0us        9.4ms        680us
>> backlog            0b        4542b           0b
>> pkts                0         2403           38
>> bytes               0      3509764         4280
>> way_inds            0            0            0
>> way_miss            0           17            1
>> way_cols            0            0            0
>> sce                 0            0            0
>> marks               0            0            0
>> drops               0          110            0
>> ack_drop            0            0            0
>> sp_flows            0            0            1
>> bk_flows            0            1            0
>> un_flows            0            0            0
>> max_len             0         1514          294
>> quantum           300          300          300
>>=20
>> qdisc ingress ffff: parent ffff:fff1 ----------------
>> Sent 106781 bytes 1896 pkt (dropped 0, overlimits 0 requeues 0)
>> backlog 0b 0p requeues 0
>>=20
>>=20
>> HTH
>> Thibaut
>=20
> Which shows most traffic going through Best Effort, whereas the LE =
DSCP would put it in Bulk, so at this point I=E2=80=99m failing to see =
the connection between that commit (which changes 3 lookup tables) and =
the behaviour change.
>=20
> Can we see output from =E2=80=99tc -s qdisc=E2=80=99 for the =
non-broken case please?

Brain fart!  The 2 different versions are there and we soe no difference =
in traffic/tin allocation.  However, could we see the ifb4wan instances =
of cake for both b0rken and unb0rken cases please?

Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_9E83CD41-4B5D-40AC-8A33-D7BB7F800876
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl30v+YACgkQs6I4m53i
M0r4nw//UOAJrS4SMNnJxs73sDvCUPXjeFzrbgpNgEFhP0kXzIBbhNsWWIKDHfDb
nr7nsrKpbRNTrgKnLU6GewMFlNtTehoHmUac7BMSebMO2z352JykfD57zjrckwLm
MUyFwlJwBIZvKTTMDZqt3/uizyvsuo4O71AXdtwXlKaMRUSkKGi+TCENedlNVdBa
XYAZuoy805dTkx5nst0Wu4Iqn6ixifY9ACZJcR7mVwKu1SfdaSJnJEgdwtrR97Xz
jmBGgmZM5oc/fJW4HFO+2ZvBiojtfAfN4IfDxrfLc1z3BMqCXq0baVYu0mJmyhKI
kFwrGxUitGBe6VRuvY0EeOveNx4NMSIOoD+ybIFskk0wlXxBF0x3mgQfpE17LCNN
iuIHQgJXd/zr4lEtGJiDK3i1EYhv0OGhSlNFTPGMvnI0+hxur3J/HsQ+JTKVMFS9
ML3dc6xYtKfe2PppRU0AdCrCOejJf5PnQfTKPKIPOrz1jWFjIN0ra7J4WnfMBdyc
lKI9MW/ltz8NyEkferoqw3/E1j9zoMHxU2xRSofs2sPIHOMcqxQ/fZz8FMTXmlOU
DZgmOsFCW5Mfi2w6X2Tw/01798N24ZNXL39VIVJfiCDqXPGrlF2EM57EKTuRQ4gq
c0O+LZVhOn3cYNwxRFG9Vs3eL2DnWqA2tPqGs3HVXr2c6bdine0=
=6UnQ
-----END PGP SIGNATURE-----

--Apple-Mail=_9E83CD41-4B5D-40AC-8A33-D7BB7F800876--

--===============3444004012738882852==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3444004012738882852==--

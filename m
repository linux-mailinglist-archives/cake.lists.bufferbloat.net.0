Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 000ED9804D
	for <lists+cake@lfdr.de>; Wed, 21 Aug 2019 18:38:42 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 62D0E3CB3C;
	Wed, 21 Aug 2019 12:38:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1566405521;
	bh=3g3EV2OMeH+9ugfJgQwog4ZnHaE6sI1unU02h49Dc60=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pzuIn+pVYi+XfwEMrM6CrAVenJ2rvrOIL4ctCg6JafUm4j5DaibOx9uRLUgUqL5I2
	 K3Neo5mVL2QTdvlJhnIV10Lapdr51rJ2S+uYtuFKJDX6eVP3LpcE1uzGX2UgeSIhN/
	 IeWf9d6doqRVN2zkbizzVLk4J0/02yLDcPtSQDVEB9Uf3TU2pXUd7aj8FFv+JJH0kv
	 vfaHQu1STu1tb0ZJi5ekaPDqcmOmIDh6oqvjDLpWgBTKa+G71eJHv8JWWYhgo5EKPz
	 ooHCFJ51FyqCT/O4knCj6gnssGSGFSrWjm24JjTpfDNI1N+Pye8nsiQVTedumGq+9n
	 TTVQNBl5YIxag==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr130044.outbound.protection.outlook.com [40.107.13.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3546A3CB35;
 Wed, 21 Aug 2019 12:38:40 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iwGfMTrReRrlrxwVUdwt0lG62vkYkiTG/YllFB3yNDxrjyAoX7pdNvzXQ42XcBWgizvcpPaiNr2o+PaBdN1DRFp9w3gAomzoxwjZ0btGWedWHOMHKKd9Jk03CIpOOLe8pB4FTAuW6OiKDYf/jVyTkAeU2aktfRmID44zd3k3tANEBlNOoMmsrQh5kU8jhheGoAkcSNKYO0LVP4PfACtzlk2KtnY3QWxvgTXGglxIAc7OKe6YNid1HOXfqQceBe7DZzWiHpB+jBQW7Mf768cab/TtY1aPxETu3yvs5hLfXnOID2ZCf3yBu9IYWzS11Kg8tPdyG++dA36d1e8X6+XPdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tuQRpHLJsVyAZbXMQ3475b4Ijrt132syMWg+QdF4s+w=;
 b=gOEp+ivbFhEyhdADRPwJ0tRPIZmd7dwfPZTjUA8Zs8KXq15r6eUJAYv+mW7Q/JuERgpAfaRaF7K41ZLb2HfCMZcPfwmQ0iaXZIWFmn49Oyx2ymC1gnihRFZV3TY4VsvaGvLFGSiQrvG8ldZ1EurvUSW2GZ5i3ktFjPsMl896pUKD/kRVmDTx5tM4fiO1ULK6RLGdZFrRw6DWN4cV86LZpn8lEyg3WmB/oAd17tlk7C1luV8rOsp4hAsINVi+DF2d1x3951TmA4/p25pDS8UMx3ZF9Er8PeaUMz5xSZCZq8/xurywVi37ZQXZghRoKfFj1jA2QeHi6eoH3a3JGeYLfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tuQRpHLJsVyAZbXMQ3475b4Ijrt132syMWg+QdF4s+w=;
 b=KUmO9BmlqHAQFwXj7vNI27fQLGPEpoPKt5sJiKMw1pZfGt4ZCu9ix7+l+Uzjz3kksqrxXJcrXRnjGc2IkcypS7c5YyB4WVBBHJwN6C/9CEkhWGt35cesUL5ASVnuEx1zzPz05rTjXDWfpC05+s6Nvlw0c0OKzxun02+1rd4HwwU=
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com (10.171.106.21) by
 VI1PR0302MB3279.eurprd03.prod.outlook.com (52.134.12.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 21 Aug 2019 16:38:37 +0000
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::2dbf:849c:f0bf:d843]) by VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::2dbf:849c:f0bf:d843%10]) with mapi id 15.20.2178.018; Wed, 21 Aug
 2019 16:38:36 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Dave Taht <dave.taht@gmail.com>
Thread-Topic: [Cake] https://tools.ietf.org/html/draft-ietf-tsvwg-le-phb-06	is
 in last call
Thread-Index: AQHVWDI0upjdqMYFlUm6YbHZgg8diqcFzV0A
Date: Wed, 21 Aug 2019 16:38:36 +0000
Message-ID: <30EA2270-684E-48BC-8B57-43F4D8485BE8@darbyshire-bryant.me.uk>
References: <CAA93jw6Fe8x2s=W3Vp6h0WoN7Q8ia4CddL6e4kA+GQNn87LiUw@mail.gmail.com>
 <CAA93jw5fW4XbgT_VFYJGep+qQ2WTYEF0my5_XQ-VADOBq8TMvA@mail.gmail.com>
In-Reply-To: <CAA93jw5fW4XbgT_VFYJGep+qQ2WTYEF0my5_XQ-VADOBq8TMvA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [2a02:c7f:1268:6500::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d53d299-60a3-404c-0614-08d7265603d7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(49563074)(7193020);
 SRVR:VI1PR0302MB3279; 
x-ms-traffictypediagnostic: VI1PR0302MB3279:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <VI1PR0302MB327932448905035F446B8E03A5AA0@VI1PR0302MB3279.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(346002)(136003)(39830400003)(396003)(376002)(199004)(189003)(14454004)(71200400001)(53936002)(36756003)(6436002)(6486002)(6512007)(33656002)(6506007)(53546011)(99286004)(6306002)(53386004)(6916009)(5660300002)(229853002)(5024004)(71190400001)(54906003)(6246003)(102836004)(4326008)(46003)(66476007)(76116006)(66556008)(64756008)(186003)(2906002)(256004)(446003)(486006)(316002)(25786009)(76176011)(11346002)(2616005)(305945005)(966005)(8936002)(99936001)(81156014)(81166006)(508600001)(66616009)(66946007)(66574012)(7736002)(476003)(86362001)(66446008)(6116002)(91956017);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB3279;
 H:VI1PR0302MB2750.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: K9c6qHoEuhV+KAOUyDgn6PWuOnxQe+lBH7oOmesT898jKrtOzXuRvVrtVz5cFBdw8AtlE9wIlSdH2hjQmmjjwP27/emIZOuOYYr2Jw4X/8Sb9AEaD8+t/Vhxg8ZgudwwkhewUmBqq2tGd2hnP7j2P6YQKDNBHElv/+f8e8npIDefpW8g+mH4ElONh1lEC6Lm5kcTXjrcUX72UIsZirt2XBt2hxkf1jZ9t/343a8N1xS57gJ6XLGAfrbR10p7Ie/RtlNtzd4IqJEbr4J6y1Oa8uRsZITr2uaHMETtrW8nSJPEVl87kIlJfW6aGkNy5nhkFZ4tgim7iv03nMGK2ZqEk8P5rAn1/Rr5lp68E1P6ok/ZgKFL9ZoTLYxJR8743bWMLs3SCIlKPfvuNozS12UgWs9SjZD443tx8u5524UTCzE=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d53d299-60a3-404c-0614-08d7265603d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 16:38:36.8951 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dyoRKXEgrpwENaBHqHkLpBiIbiM2Zqi8AnaOdlnvQuf8Nd5MwAmcSKQiSPnvDfiW+vQ1BfRDwUR6caXwKAUhzuVtz/hUxnVc7iPjFFvBmf4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB3279
Subject: Re: [Cake]
 https://tools.ietf.org/html/draft-ietf-tsvwg-le-phb-06	is in last call
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============7079638442721975260=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7079638442721975260==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_8CA122F2-7662-45B9-A1C9-7D4AE999731B";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_8CA122F2-7662-45B9-A1C9-7D4AE999731B
Content-Type: multipart/mixed;
	boundary="Apple-Mail=_4D646E21-9517-4081-BB6A-922E6A22344A"


--Apple-Mail=_4D646E21-9517-4081-BB6A-922E6A22344A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Maybe attached patch is more comprehensive?

KDB

> On 21 Aug 2019, at 16:07, Dave Taht <dave.taht@gmail.com> wrote:
>=20
> Just ressurrecting this old thread for review now that this is an
> official RFC. I note also that the NQB diffserv codepoint is entering
> last call also.
>=20
> https://tools.ietf.org/html/draft-white-tsvwg-nqb-02
>=20
> On Sun, Feb 3, 2019 at 10:39 AM Dave Taht <dave.taht@gmail.com> wrote:
>>=20
>> And seems likely to be adopted.
>>=20
>> There seems to be an urge to make this codepoint starvable, which
>> since I ascribe to nagle's dictum "every application has a right to
>> one packet in the network" - doesn't work for me - but the draft is
>> vaguely worded enough to just start dumping this codepoint into the
>> background queue of both sqm and cake and worry about it in a decade
>> or three.
>>=20
>> it's 000001 which I guess is:
>>=20
>> diff --git a/sch_cake.c b/sch_cake.c
>> index 3a26db0..67263b3 100644
>> --- a/sch_cake.c
>> +++ b/sch_cake.c
>> @@ -343,7 +343,7 @@ static const u8 diffserv4[] =3D {
>> };
>>=20
>> static const u8 diffserv3[] =3D {
>> -       0, 0, 0, 0, 2, 0, 0, 0,
>> +       0, 1, 0, 0, 2, 0, 0, 0,
>>        1, 0, 0, 0, 0, 0, 0, 0,
>>        0, 0, 0, 0, 0, 0, 0, 0,
>>        0, 0, 0, 0, 0, 0, 0, 0,
>>=20
>> (or is that reversed? my big endian/little endian chops scuks, and
>> nobody modified the gen_cake_const tool to match what cake expects
>> now)
>>=20
>> on my off days I kind of wish the diffserv lookup we do in cake had
>> managed to make it into the linux mqprio/prio stuff by default.
>>=20
>> --
>>=20
>> Dave T=C3=A4ht
>> CTO, TekLibre, LLC
>> http://www.teklibre.com
>> Tel: 1-831-205-9740
>=20
>=20
>=20
> --
>=20
> Dave T=C3=A4ht
> CTO, TekLibre, LLC
> http://www.teklibre.com
> Tel: 1-831-205-9740
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake


Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A

--Apple-Mail=_4D646E21-9517-4081-BB6A-922E6A22344A
Content-Disposition: attachment;
	filename=0001-RFC-8622-diffserv3-4-8-LE-PHB-support.patch
Content-Type: application/octet-stream;
	x-unix-mode=0644;
	name="0001-RFC-8622-diffserv3-4-8-LE-PHB-support.patch"
Content-Transfer-Encoding: quoted-printable

=46rom=201f460443d1bd54d269e3efda6999c0bbd91f7a03=20Mon=20Sep=2017=20=
00:00:00=202001=0AFrom:=20Kevin=20Darbyshire-Bryant=20=
<ldir@darbyshire-bryant.me.uk>=0ADate:=20Mon,=204=20Feb=202019=20=
21:27:58=20+0000=0ASubject:=20[PATCH]=20RFC=208622=20diffserv3,=204=20&=20=
8=20LE=20PHB=20support=0A=0AChange=20tin=20mapping=20on=20diffserv3,=204=20=
&=208=20for=20LE=20PHB=20support,=0Ain=20essence=20make=20LE=20a=20=
member=20of=20the=20Bulk=20tin.=0A=0ABulk=20has=20the=20least=20priority=20=
and=20minimum=20of=201/16th=20total=20bandwidth=20in=20the=0Aface=20of=20=
higher=20priority=20traffic.=0A=0ANB:=20Diffserv=203=20&=204=20swap=20=
tin=200=20&=201=20priorities=20from=20the=20default=20order=20as=0Afound=20=
in=20diffserv8,=20in=20case=20anyone=20is=20wondering=20why=20it=20looks=20=
a=20bit=20odd.=0A=0ASigned-off-by:=20Kevin=20Darbyshire-Bryant=20=
<ldir@darbyshire-bryant.me.uk>=0A---=0A=20sch_cake.c=20|=208=20++++----=0A=
=201=20file=20changed,=204=20insertions(+),=204=20deletions(-)=0A=0Adiff=20=
--git=20a/sch_cake.c=20b/sch_cake.c=0Aindex=2093c0c8a..81950ad=20100644=0A=
---=20a/sch_cake.c=0A+++=20b/sch_cake.c=0A@@=20-333,8=20+333,8=20@@=20=
static=20const=20u8=20precedence[]=20=3D=20{=0A=20};=0A=20=0A=20static=20=
const=20u8=20diffserv8[]=20=3D=20{=0A-=092,=205,=201,=202,=204,=202,=20=
2,=202,=0A-=090,=202,=201,=202,=201,=202,=201,=202,=0A+=092,=200,=201,=20=
2,=204,=202,=202,=202,=0A+=091,=202,=201,=202,=201,=202,=201,=202,=0A=20=09=
5,=202,=204,=202,=204,=202,=204,=202,=0A=20=093,=202,=203,=202,=203,=20=
2,=203,=202,=0A=20=096,=202,=203,=202,=203,=202,=203,=202,=0A@@=20-344,7=20=
+344,7=20@@=20static=20const=20u8=20diffserv8[]=20=3D=20{=0A=20};=0A=20=0A=
=20static=20const=20u8=20diffserv4[]=20=3D=20{=0A-=090,=202,=200,=200,=20=
2,=200,=200,=200,=0A+=090,=201,=200,=200,=202,=200,=200,=200,=0A=20=091,=20=
0,=200,=200,=200,=200,=200,=200,=0A=20=092,=200,=202,=200,=202,=200,=20=
2,=200,=0A=20=092,=200,=202,=200,=202,=200,=202,=200,=0A@@=20-355,7=20=
+355,7=20@@=20static=20const=20u8=20diffserv4[]=20=3D=20{=0A=20};=0A=20=0A=
=20static=20const=20u8=20diffserv3[]=20=3D=20{=0A-=090,=200,=200,=200,=20=
2,=200,=200,=200,=0A+=090,=201,=200,=200,=202,=200,=200,=200,=0A=20=091,=20=
0,=200,=200,=200,=200,=200,=200,=0A=20=090,=200,=200,=200,=200,=200,=20=
0,=200,=0A=20=090,=200,=200,=200,=200,=200,=200,=200,=0A--=20=0A2.20.1=20=
(Apple=20Git-117)=0A=0A=

--Apple-Mail=_4D646E21-9517-4081-BB6A-922E6A22344A--

--Apple-Mail=_8CA122F2-7662-45B9-A1C9-7D4AE999731B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl1dc4wACgkQs6I4m53i
M0pNRQ//eKfcrJ1jSt8moAvnIdYB/z67Kx/SBESYS8fVeUkjX1e/zJySLydf/1ka
T5JO0ZT5433MGDrf3lKVm+h5k3o7vymF+VYHEoXH4sgBFPjl61M6DZZQHsxhw/iT
7E8QkGlhiEx2LepLe/w1W0ifIBbvSMCd3PwfFpanFeBvoY35cJEylBeRAVRgl2BD
AzCibdJlXs4gNnzEGCXQSpN8qEr5W+dPqNXZKQsuzCEP+2Hp/sl27Hlq7k1LS4aU
eRz9h/miKb7QUFlxE2knM6cXeoFsmqi5XIxIk4wtJOhQju2DHOvt/rc3G9kTkicG
w6LrRHAzcMRjE85tZ0DpcBNFPwENiYh2WJsUKhWYMPhDPNWZt/8110rfK/JkmHX+
h53UbBnmF8pI6rcsSzLLL2Yb5+7b38rh/QC+HNXbzhx2BuracJo3++8CQ1BCFA3O
b94bekXSI8jOeBa7hZlRztoNHY8OczRzbWehL3vLJlDYDH5L1UXgaeyxI7DJgpQl
+WUE4d0gyySyIWiNDwH0zKMVfor+1cbocDsH3m0YtY6I6rj2+PiNak7x/9TJID2e
aARMb8T6AgI0STUhR2Hg8WBBCqLx7YBckGolDVIWImT1IvbXTKQMrQIVWQ3RDI0J
qpbd+QQ50982IoLQK/doLojyTYztOXjsx/GhBVrBsufs86oCysE=
=R/NP
-----END PGP SIGNATURE-----

--Apple-Mail=_8CA122F2-7662-45B9-A1C9-7D4AE999731B--

--===============7079638442721975260==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7079638442721975260==--

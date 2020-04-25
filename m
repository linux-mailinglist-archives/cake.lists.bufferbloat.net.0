Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 956361B85F0
	for <lists+cake@lfdr.de>; Sat, 25 Apr 2020 13:07:09 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0886A3CB46;
	Sat, 25 Apr 2020 07:07:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587812828;
	bh=PgC+nySGn0og/8daTInjfdzDrw1IACLbyS/IO5g5x8k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=atbRDESuiPbQCA37Lb8fRk/Ar7cNZeT1WPo27jArGzrf50f7VHreOt4TcM76RSjRH
	 GzXqAow1FwegHb90DclMdHc98fL7n8/1SWO/XTvSe9Foti7TNY73DE+odrO7Xx1Ry2
	 8mvo85wgotVh7oFwcb+kzRy4AlBZN7bkXFVxcAK+k160fEhKoRkM5mxRtK452Lkgjd
	 PWP1nH7LPzjawGLqNn1oMwJyQJtv3/jN1jS4IQJfnmXy/F7olGHMnme0gswJ2AP38X
	 UBbX6CgpjnfO8yf9juk/tVFLA2xXjgISFEhnS7ziN8f9CHPd+l19aHSQZRvj2HZa4I
	 obZIL22vweOKQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2079.outbound.protection.outlook.com [40.107.20.79])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 83B273B29E
 for <cake@lists.bufferbloat.net>; Sat, 25 Apr 2020 07:07:06 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HamHEUTD2ksLJoDJp1eNBXWxQKFDNGeetO4GnEmFawUyp3bs6IIH5u+BqvY4jvxImamKa1e+iSUtxbrRtk0GoJFslIEEbrwqbgJawFfG6paud7tdf5j3EY0NFMkCtKWgeUEdyRTUxjl0dWqIwMLjt92mxSz9in3q1NdP+vme5N9oImzaVuITtBdBImrk5pVJEPGP8yItQ3RZ3qLbxDq23liwOzG5mPHXgg4PLWebHZSX/hoPEClahFhECsAYaHFP9VnzJKUrE9ztxoJwiD1XmWnFJwN9EcyUx26me7CjdWb8HMVHE/y+QUjqfkSK2wXebFHtluF0GKsq1IL+uDUb4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8uzKLfVHK193dDrJvpOOOGuPG+ISkZfZSixRFX1kH7E=;
 b=igPqvOiXuUgPHgc8KTpK1mKgkGgfS4+pcDVEYSWQByHhGaPg/2dUorOTzavSV+IgZL5Lf6JhMDCKAYj2S91LxCkVf/byvvLoaK/JF6Y3BbB0HTFS7jaYuFVkm+EDQ3KiyDvdaK1dyfRTTp3jJDWQ7F/8UHij7E9K5saHvw1j/yvJzjMON4f6S/0Zkwb1QRrLDrO0n9Jsih00W9lp4Ky03DRmqHMhwX2M8SPX+Py7GSA805m+haBl3VQDE5kxnW4QQHbizkrSEfw7Kd3P+5QrcFGg8oXmDLsv+ulXgS/TPBqsThjxio5I65FTZ182ukYIa9ViIW14BXnzUtKFizX1Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8uzKLfVHK193dDrJvpOOOGuPG+ISkZfZSixRFX1kH7E=;
 b=KkfIDnTBR/+CXfu4Tukoqze/53x5DxLFdGiT1M9EWWhoRD4gh42BiiaSez/ra7Ey/KhijO+VFwUqeUVE6/fhh9WEf54ar5k6R1akp1UyCwtb4/dySFEsZEezkmDl/FcRNWuVkf1oNiIxifquSdkdo+Sv5KQl6wZhEQEcQHVjpfc=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB4493.eurprd03.prod.outlook.com (2603:10a6:803:59::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Sat, 25 Apr
 2020 11:07:03 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2%4]) with mapi id 15.20.2937.020; Sat, 25 Apr 2020
 11:07:03 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Cake List <cake@lists.bufferbloat.net>
Thread-Topic: Cake tin behaviour - discuss....
Thread-Index: AQHWGvGm0q9I4CO1FEiKVXoXa1gyRA==
Date: Sat, 25 Apr 2020 11:07:03 +0000
Message-ID: <62228545-5DE2-4600-A9BB-52D891FF5AD4@darbyshire-bryant.me.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b9436892-b591-4137-6129-08d7e908c902
x-ms-traffictypediagnostic: VI1PR03MB4493:
x-microsoft-antispam-prvs: <VI1PR03MB44930CF65F7C869EE922DAC9A5D10@VI1PR03MB4493.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1388;
x-forefront-prvs: 0384275935
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(346002)(39830400003)(376002)(136003)(366004)(91956017)(81156014)(5660300002)(45080400002)(66476007)(76116006)(4744005)(86362001)(99936003)(66616009)(66556008)(64756008)(2616005)(8676002)(66446008)(8936002)(66946007)(2906002)(186003)(6486002)(508600001)(6512007)(6506007)(71200400001)(36756003)(6916009)(33656002)(316002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DJF+FYOKm1eeyqUjy96ddLIfa6/5J4MMWod826YDWJtbdI8pKES9gqDPd5zbPE3ciaRa6l4tsod2X7PQBPtywaxB2lMOyLC+YI+D6Njxw2+2C9H1Gm3qfjC6s+lnFSEQ9wBfuGArHvx5I1qyYgf25WrQo7ZTlrluRCMAOSF9ibkOvLTPfRCFXt9DqmJzfM9h74sAi19zDwtLFyOr3zatZvN6f1Vk4z5f6yDlXHe7/a4thAz/QmFpRmEvXXpWHDsliAw0chZr8snY681GcaqYoA5pGL7cKM+3/b9oAMPKzKIunkZo2XxTTz6PA0542buaN5x0TsjfNRYeMl0EWY4ACM9UwTb5uk2v/0RZi20g7DBzvGnLXP7Hr0zjZLkJmGgsgV/6HadN0pDZbxszLr1DkPyECpdfdYLfM9xt+3KDqs9YKcXvyB8h55+P8FNlMnhL
x-ms-exchange-antispam-messagedata: FTOSbLKka2EVcmJLAv82ol7qnN6j23u1H4SPqogjC0F12xeCQlb3v9xWODWfBC1Ao2VtdABrn5x3cmNXnXjQiPPdbNo/H8yaB0f079iqQUTQsUiUVttixP3ms7kLejNbUXwtXRuquUh4Vpm7YJtr5F77S0EiS9zVIOM4y0+yqYa3IGQ3IQJMOVOvG8fsLaDGruBa4sRnYFiFjcY8fj+3b8oYUxLPG2O0fkFYhaxODHJ5/ls21fbxvTSsHakvgkLVyDrQvldgJNh/Bp3FoqW68RG5I0vakuz6jnmlxELHaDR0lxB8MbxJwglpKj0SZ+Jt71GBUgEF0mnKJcfskcyJ32I1VoCaqfQhKuWqbxwavTn/0Uz+sdpXj3c4cgp0X7ttDEAtyehrJ2KcDUYSUXxb2nUrqR02qYXzC7QGxsMWiRu+dldY1s4/8lSqThjtgwCY1T6hzAkJ2pii1PVauBdU2avwNuhd0b49fmcSCOJRQRFINzosiCiVASSOHdtfqrmMSgegEi29N1eE/mLFHJ74+tV/RaXoN9/xyou7Ys2gGox5Au9zdA0KA+vB8gLqF8pkSKVny4hsG3nzZr2k4FcR0pjjgsy3VTbY/OUSDtarobFIAWMzyM3MlYaKMFiVH6X7wSkoABxOQn/l/s4OgTCBp9XpoR9HAz6cZgugZRaCbPJxRXEzKGFTLma3ztYSPR/S2knMRKo83Pi0TCYtMHp26jtNxUzXfp77jHFOxJDx+zG4Gh4ZvSZMkdxGLTfetFO+c70cZ1081U0Upb1S6nS6t7F48nj8o+GbgRxNrrXrsWhGvxeVJ7rYxsm9eS+UFzIJqTXKMYS7/xH3nvT5tJ9CIQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: b9436892-b591-4137-6129-08d7e908c902
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2020 11:07:03.4772 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4pnofHfr6GIMXMjmeVTmAXF7RraoTZ/jZ3dYy+2gcIRcideXWgIyuw2mxcXT3JDEzJ+hB9DEgnwaIX+EVSy4RvcxFXqcKAR6OF9vGktwwCE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB4493
Subject: [Cake] Cake tin behaviour - discuss....
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
Content-Type: multipart/mixed; boundary="===============5253268609771963292=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5253268609771963292==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_B2F2E80B-3CAF-4380-A7DB-D6BC862AB624";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_B2F2E80B-3CAF-4380-A7DB-D6BC862AB624
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I=E2=80=99m confused as to what the =E2=80=98correct' behaviour should =
be under the following (real life) scenario:

Downstream VDSL wan link 79.5Mbit/s cake shaped to 77Mbit/s - diffserv4, =
so Bulk 4.8Mbit, Best effort 77Mbit, Video 38.5, Voice 19.

Download from =E2=80=98onedrive=E2=80=99 from 1 box, using 5 flows, =
classified as Bulk.  Little other traffic going on, sits there at circa =
70Mbit, no problem.

If I started another download on another box, say 5 flows, classified as =
Best Effort, what rates would you expect the Bulk & Best effort tins to =
flow at?

Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_B2F2E80B-3CAF-4380-A7DB-D6BC862AB624
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl6kGdYACgkQs6I4m53i
M0qA0RAAosBMfuzFfSKseOu4IoqAxwjgQH8ijCAo32eb5YEjWfoshStJW8yN1Jm0
GA9S+UKjNeuTVqjiqq3wfQ99SmvmuQEDX5S7LLYGtBn7Qh/7To6Yki8xjse9HvZB
2997KMRnO7r9/uEiJan7WjPMpScVHBjNgTOO4AdxJ25Z9K8kEQBWQJ8hyp3220eL
PuCJrqIIAzpACIQStb1t6FMSVB7+i7H2/nAoRWHLhu7ujrwCKMwUCCEbbELLy5m8
s9/7qrEQPHMDUU5SQDaFO0enCVXEfCMnbXhnNeUsT3y8UqOrymWNfaBVVKbrbEKw
C4d6KVf4HHiG+X88ytxKBhcjjlqBSrx7I9xatiq6YghRI9vFKXTTwyb0TbMoHszn
bsVqFHaaIdwu3JhMdaT/fNSxlFoHXsxnO4C3V+9POj4HFNLSJp9R20cpw0xKXsmz
Jy8OYCDxF3/R9M0Kq+Rtf5hk7hCtzwhR7vPN5ZHkDvZVIb2THl6nlmzWgcm2tBIM
twEgb4uFnAr7Wl3T6Jysz0DzkQykzyqH0DwcXR8AwMmKPjZrFDMBly93VEQM9Dbu
xnePJrR+laA9RkRd38py214lVLq5zW9VUCJGeEoODYBZBzAORwEW6qvGqpRi8vOW
elM8JhiDF6HJeW6D2GjyLwuQWWvwvar5ujQoTtfta8VbY+1xLgE=
=Y94u
-----END PGP SIGNATURE-----

--Apple-Mail=_B2F2E80B-3CAF-4380-A7DB-D6BC862AB624--

--===============5253268609771963292==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5253268609771963292==--

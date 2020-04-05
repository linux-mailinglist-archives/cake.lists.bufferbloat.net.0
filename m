Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D276119E9CC
	for <lists+cake@lfdr.de>; Sun,  5 Apr 2020 09:57:18 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 79D9C3CB39;
	Sun,  5 Apr 2020 03:57:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1586073436;
	bh=MSc4JTfWpUeVz/h9HybdMSnk8KV7zKCoLVf5XnZshlo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RdzgCcDt9TMxE9arX1A2Umb9HxhVm4NE8JwXybfR5ZdPyi6I2RX8sNIHOqdTjBE61
	 pSofIcsSdqhcqeOv+C+6qRfYK0xYlDk4nVqZxIowhDBZnzDZpkPg9TPUGlAaZEXgFU
	 avYgfR1IC0ZIsTYJ9sCdo4Kg74dbkRM2q8u5qTxqimPN6ikvHisdDZ2+Dys0GJDFsp
	 QR0yiDJbwcuqYp5N84JuDKk2bPwTLs+tby6+EFx85J7QBCsXZ/34kTPM+WC7m4cBms
	 N+VbG4HokoXIqCcA2GMvZ7ZUW3fXjN0++yu+auUbQ71dirIYIgh4DEPU9vD605O1A/
	 FXQY9hTzS/Rqw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (mail-eopbgr80080.outbound.protection.outlook.com [40.107.8.80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DA5333CB35
 for <cake@lists.bufferbloat.net>; Sun,  5 Apr 2020 03:57:14 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gb1QoLUhEdGfkQt8u7EH9jrs/ab8h0IFUM6Ro/vUpbUV+ti4qDMj3re8D4tHlQO+KuIM0ugs6DAyGD8YD/GMYGtvG0T8VbzCvCiOIGgMj6U7ln/IhXsZYx5IkvGhoyTDnqBrBp7dDyXrjRP0ZS2ns8auYZnvLiTpEvQ2KEK05yRlQo84YxwhQlUhYz2lipuZu4Bw466NKZRA2/RbigGjZvtmPUAzYbWm1ECKWYXhkb3JTfZn7Kz51PhETIMQPvH4wgVzC+1XfE/IVovuOTyWugyEOTw2GW4xWYNBCeDi8bfocbwGbv05hWCY1l45CL/zdoe7WzCeACZURiJqVHU5AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D6tvVfq1wP6r3qhJe7fiWrLiqCT/+xGyNwqLowLydEA=;
 b=FHdHJqud9H43HyQaiC0YbSFZVcAhh90I+JZhKQokIa5ddSXMWQ34i0QgBEB4nmk8bsBu672Sa72wPqqrYwVjHjQo0CRzLHwfhr3pmgHCEfjvZs9WGsyfEXpmAnsUEAjvPpryUPICdZGLbiPQodusL/fAUeRlIQZkyYO0k+GfkBzqMqdf4a+kzZaSYsze3U0b6kbwwbsGlsfwMRNLaIKBbHZGVhjVKPc5N9l8WwqDZc60t8d2cuGriM5+oSaiKAfbFO1zCOAbItlg8+wWmjd2k847wdCy1Pa2inpT0l5YH02WqVMvbEC1s7O6B0sSlofMATaMCL3TbMhLl7DKgpyNtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D6tvVfq1wP6r3qhJe7fiWrLiqCT/+xGyNwqLowLydEA=;
 b=sRMJ3upQT0D0+zC2pFt4giMfIVNzQmi4+pNpm9p7s+fvwYOCbSMtfPzKn0K588kLvkOro0vGywcOMh9BWc0Qv4T3Ms7jdshQWi4TQ7T3T5FEfVRIgCKHj1/3UbDc49l9KypgB20rCjnO+Gv8LgmuH0wvr4aqb58DIkopupf/gnI=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB4765.eurprd03.prod.outlook.com (2603:10a6:803:53::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Sun, 5 Apr
 2020 07:57:11 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32%4]) with mapi id 15.20.2878.017; Sun, 5 Apr 2020
 07:57:11 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Dave Taht <dave.taht@gmail.com>
Thread-Topic: [Cake] cake and nat in openwrt... on by default?
Thread-Index: AQHWCwEujspAfIL/Ak21duOCA3q/XKhqKZsA
Date: Sun, 5 Apr 2020 07:57:11 +0000
Message-ID: <FFAECE22-C1E8-4CA8-8ACF-8C49BEBE3DA8@darbyshire-bryant.me.uk>
References: <CAA93jw62J_psLswMnisU4c3j9J=Q-HTDRO5F2q_+YRFqV+MtKw@mail.gmail.com>
In-Reply-To: <CAA93jw62J_psLswMnisU4c3j9J=Q-HTDRO5F2q_+YRFqV+MtKw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c268048f-3368-4089-8df7-08d7d936f27a
x-ms-traffictypediagnostic: VI1PR03MB4765:
x-microsoft-antispam-prvs: <VI1PR03MB47651D6E0DEC6564A01D149FA5C50@VI1PR03MB4765.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03648EFF89
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(39830400003)(396003)(136003)(366004)(346002)(376002)(4326008)(36756003)(186003)(6512007)(5660300002)(66446008)(64756008)(66556008)(91956017)(76116006)(66946007)(66616009)(66476007)(33656002)(71200400001)(2616005)(6486002)(86362001)(2906002)(6506007)(8676002)(6916009)(53546011)(81156014)(81166006)(316002)(966005)(508600001)(8936002)(99936003)(163963001)(309714004);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2rH5uyN8CGlFXEubcajwVec5eQ5iAgjYJwZqbREcBqzQBqW9Bsx93QJOdwr96W7QENFCdEqCsrnJF+FdoLe9JO/z/YeNHWBbEuUDMluo5yqdioEjHM/TvIupQDV+44TCSZ2sWv8uy0vP8Wddi/TMJ44VM1jINx1U3tkYUMHGG0Ppz1/fascwGqm2nlmwK7xRGDozT4zm7E+mr3leTrVfw58BKQ21H7dPUAaoVzi0UWYWjVdKEuE0FzRVUl5bMuIfbhzuGc/ncbzjm8dQqRZREWqdu60aqWWmsSfJSz29M3CQCrb1xjuIpTxccHcUPVIm6rj1dsduG66gLQqy5Fn62L0TwuX5Tu8QDNZPcRrYqL2cIqIF+QyocegQdLUaP48qzOr+5F+j0oO1zxu5c+WWr1SRqOv2GDM4HWHNWukQP7Y6Kk/rgMkmZYXfD3DSxICLMosJl7V8wL1eX0FTJXbHy7G85Hm4LFeiZNWc+B+P8RiGQWZUWwoR+aq2+0HEgaFhwt+40HkhABW4s68Zi04AKRI2EOZ96faooxLJd+4/0uzmf3sEuvjEDiZfPb0Q5OtTF/ea6rqEhh6HNPP3Ya45dZD55f0Bmo1ZBCA1OcXbxGk=
x-ms-exchange-antispam-messagedata: atKAdc7wSTsdy3kXAShYfIjOdRYKkTkgnEPxEcHoKYo7UJsx6o6KV++N/z7hR0wCzerBKxptuxO11B6OvC5OYF/9laJshg61UubCfUDja/5vmjmwBoaqupDsVxI6dgZi/SjTeZ/VNVjcI46PRwlSEzy7/6zD5TILSdWN4YpRDvcmRJPpGnBC4De4A0q3kdCQ
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: c268048f-3368-4089-8df7-08d7d936f27a
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2020 07:57:11.5154 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lWVgD7ec7w2HMl6qG+iS9ImOx5b1JEOCLbkuZse9ilyQQRZv3KVO9/PP9WIzOBUxpaqWqMaEcdjVJFkMzkUZOSinR51JxKrrzF4pLMR9HNY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB4765
Subject: Re: [Cake] cake and nat in openwrt... on by default?
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
Content-Type: multipart/mixed; boundary="===============4616205396097672450=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4616205396097672450==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_452C9245-06AA-4592-AD36-D43751BD8DDB";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_452C9245-06AA-4592-AD36-D43751BD8DDB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 5 Apr 2020, at 05:17, Dave Taht <dave.taht@gmail.com> wrote:
>=20
> I see cake is moving to the upstreamed version. As best as I recall,
> nat mode was on by default in the openwrt code, but not the upstreamed
> code.
>=20
> People not setting nat mode on would explain a few things i've seen
> 'round the intertubes this week.

=46rom sch_cake repo and hence =E2=80=98out of tree=E2=80=99 cake

        if (tb[TCA_CAKE_NAT]) {
#if IS_REACHABLE(CONFIG_NF_CONNTRACK)
                q->flow_mode &=3D ~CAKE_FLOW_NAT_FLAG;
                q->flow_mode |=3D CAKE_FLOW_NAT_FLAG *
                        !!nla_get_u32(tb[TCA_CAKE_NAT]);
#else
#if LINUX_VERSION_CODE >=3D KERNEL_VERSION(4, 16, 0)
                NL_SET_ERR_MSG_ATTR(extack, tb[TCA_CAKE_NAT],
                                    "No conntrack support in kernel");
#endif
                return -EOPNOTSUPP;
#endif
        }


=46rom kernel 5.4 as found in openwrt build dir

        if (tb[TCA_CAKE_NAT]) {
#if IS_ENABLED(CONFIG_NF_CONNTRACK)
                q->flow_mode &=3D ~CAKE_FLOW_NAT_FLAG;
                q->flow_mode |=3D CAKE_FLOW_NAT_FLAG *
                        !!nla_get_u32(tb[TCA_CAKE_NAT]);
#else
                NL_SET_ERR_MSG_ATTR(extack, tb[TCA_CAKE_NAT],
                                    "No conntrack support in kernel");
                return -EOPNOTSUPP;
#endif



cake_init(=E2=80=A6) in both does:

q->flow_mode  =3D CAKE_FLOW_TRIPLE;


So openwrt doesn=E2=80=99t, by default, enable NAT mode in cake.

I honestly don=E2=80=99t think that there are enough instances of cake =
out there, let alone instances of cake from openwrt, let alone instances =
of cake from master which switched to upstream cake 2-3 days ago, to =
make any sort of difference anyway.

>=20
> --
> Make Music, Not War
>=20
> Dave T=C3=A4ht
> CTO, TekLibre, LLC
> http://www.teklibre.com
> Tel: 1-831-435-0729
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake


Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_452C9245-06AA-4592-AD36-D43751BD8DDB
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl6Jj1YACgkQs6I4m53i
M0rDUw//TqkKUZC9Ox1FecnGKUoE+KXDGPDDRAGIO3cRGKxwnFbZ8bgsSwVDv8ji
+Nz5cqyigs7RLgFEXkAze9juETfirZ8qgd2vr0LosNRjWMeS53r3oNAJUzDucshb
H+AiBfpiVdIYlyNyRTqZWoU6pmkFK+kg2nObLiGz+Ka1S0rGcj7086MymYOEns4B
oQHn+HGglrGl35DOeewyXNpQgFU0G7962m6TfEMN0+D21WlgNPFCsGyUirwYjEFv
2Vgmrk+o0WXZ9WTTz2JElUoCr1452huxVC1MfyOtsluQL/dNWfDVO2rcp0TPGc0E
mtmakLQOfi5HqoImaVfrk0hmOwGNDRktO1iyqug4bS9xi5lQ1lF4y0kKL+2Nty7u
Fu81rpGQBrUT7YoZpoOjbkUIBihHOznEqPxQiUMTpA0wEs71YapbtAlHLG5qTmrM
q6FQmnEVm1QsVFSsM8EcPZmSIFjM9J7aEJ/6hixu2N5DStPRV+0SwYB2l6HOk0kc
WWtHjuQT+ETj8Lfw2bYzL4Cf4OAfc2bKqJvKSgVfIp0HsG9XRmxsVqLkk33Xgo9V
K8aVazpy5Xr2C7tCp95PVCahBRm780I6vuhWOxsUZqygAu/QNVAGk3QAtjQZ94VW
pw0En5ulnk+22+1c3Lx3MATGVMU1OodxuHR/vLmxQ1w4vGQujfM=
=Ihh/
-----END PGP SIGNATURE-----

--Apple-Mail=_452C9245-06AA-4592-AD36-D43751BD8DDB--

--===============4616205396097672450==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4616205396097672450==--

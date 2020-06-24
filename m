Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5412A2075C3
	for <lists+cake@lfdr.de>; Wed, 24 Jun 2020 16:33:44 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id BF5413CB38;
	Wed, 24 Jun 2020 10:33:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1593009222;
	bh=kUK5S8DzJYJL1wcuHbaSsje+qe6Z54Jst9UB3sm7zvc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=AwJKczABPqinTuH+WeMobCWx6qSqb9aQphdjOnA81TJtqC39fImdKBXlOxevz91tD
	 w+nL7Wep5+yVi87tx59DaEaUtoIgePiSeyzPHRuvmbiuu5YFc4HackXS8bQGS1QxtI
	 4KRzNZ758LBjNSEuUbyoEP6FomvVA091/e7etysfwiCd+Y9+k0A4aPQ8x2l6/8a+7K
	 HAUumBoU82E47Wn77JxNWvW+5h05COei2vtIWdgnLqplg2+u6pwlBQQfGl+OnRhUya
	 Dozj+6H9Xu8euAIeVERcteWP1wg59VypOOIimYYz/noMUMxo2v7X1FDdGlDm0LgYvX
	 z/Zq8x0+1MzGQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-eopbgr60072.outbound.protection.outlook.com [40.107.6.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2CAA73B2A4
 for <cake@lists.bufferbloat.net>; Wed, 24 Jun 2020 10:33:41 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nQJwLV6frRav0hpwZ0KQ4jQ+SIRcqiRVqAnI4y5wI5QZq5LfdaYSS2O6znIJvFdMUkfMmbm25D3N4RA6kjva7b05qL+ZavePgzY+8IW0sWf7L8x9dmt2DXolgcWtLqqRoz4owD3/nPNDsRiZhmYzobSktZ4T5KMTp93qS/QnXzVN95ADWi9wws4QfnguRWl468moyEZzo5sn9aOp//2dUnd0o9PRN4VdeM6I76IU53Qz8Zcpu0QNqKGeJ3TpNNZlNkcdJPmY5PIZzmme6W4kb946iccGcSxVFEih7hqAv+OO4EPsAQ8AZxe+9D/9g54DTiiUWEz/PO4pjmmpnHIbkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nf+zLGGitorLbdW+lYls+344tD8VURSukfXtO3nKz9o=;
 b=J/GcEdZc3KMDiqkXRNQZJ30yYsLfsymyqDDG/crPUy6fpo50fGGHBTNIfFxtHagD/UE9ZLcjNELA63/aaWJcfeBiYXzguwZTPYu0KHSeRyC3jKnmjwVAmovqMYAWm64NVhJXuBC31Uk0GlxIxBovMZIFqqztmlARaxYZeYbXz+GCVBA+5DhEeVX2LX3Bp8Kftq+t5Yqh9b9nq/fljtwcM3PsGknQeMHZvo5hPwqZTP/98b8Cg8vrO+jPeGEwxSRwyuzxEQybb3DGuLengZsR76jRH8OZ+hk1tdmbEucXqO6TAuR8ozrI+WIFLKcaT5AI6n6nuio/gn+ztF1/Vq7sCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nf+zLGGitorLbdW+lYls+344tD8VURSukfXtO3nKz9o=;
 b=PP0rOe5o6RxTYJJSCjjrTMIOksPzbrnCkII0PpgGb1Zloiq8hWEwFFVZcpJrz36r9l5oy8Is45OPpeRYoa+GYExEcSRucmb1nZT5b2GAnrU/xYJHdxUNvWVROtrsTayvs/aJGOmFRbfufKVLDj1UklgV9Q0u8bRYyKCyN6eSJwM=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB6528.eurprd03.prod.outlook.com (2603:10a6:800:19f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Wed, 24 Jun
 2020 14:33:39 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2%4]) with mapi id 15.20.3109.027; Wed, 24 Jun 2020
 14:33:39 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Cake List <cake@lists.bufferbloat.net>
Thread-Topic: Why are target & interval increased on the reduced bandwidth
 tins?
Thread-Index: AQHWSjRzVGK+T+9ZfE6unaoMW9oo1Q==
Date: Wed, 24 Jun 2020 14:33:39 +0000
Message-ID: <8ABBBE20-5045-41CF-967A-CD8961400ABE@darbyshire-bryant.me.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
authentication-results: lists.bufferbloat.net; dkim=none (message not signed)
 header.d=none; lists.bufferbloat.net;
 dmarc=none action=none
 header.from=darbyshire-bryant.me.uk;
x-originating-ip: [2a02:c7f:1227:c00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 672fcb11-2b42-4878-47e9-08d8184b9610
x-ms-traffictypediagnostic: VI1PR03MB6528:
x-microsoft-antispam-prvs: <VI1PR03MB6528A7C6E468560E0F9DCD10A5950@VI1PR03MB6528.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0v7DvexytZGgFTLd1Dqiuy2lVmXGaypOdYFxC99Xi2Zevkn5+AKwybaOvp5TznKPtnx3bSRWLU5KqSh5n/Vyr6goW25ZtxPoJwaIypPLl4ULirpdLx0yZr4uAzFR2m4NuxTZpTUwRGSg/Wr9Zu3Syrm56suB7OAYecOwbPBVLaCElICkRHleVzhhNbTNUF0zzSkm4VmqgdHXHWBveuOv2x7gOQdxrkjK2xha1sPl450heUyDihzQKeqwVraR2Qk9yE/QZbdy2nMJmS+aAumfyt8EF5CJ6PAkTFZ6h3hB4CJ1Ao7MldrHKG1EGbJ+4l1ZfX8orivVUhAfoQHAQuwK/jXFiXZRW83BrmM7w6n3TL41WiwIAIcAXJt0JD67NqmF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(376002)(346002)(366004)(396003)(39830400003)(6506007)(2906002)(6512007)(4744005)(316002)(33656002)(508600001)(6916009)(6486002)(2616005)(186003)(8676002)(99936003)(8936002)(86362001)(71200400001)(91956017)(66446008)(76116006)(66946007)(66616009)(66476007)(36756003)(5660300002)(66556008)(64756008)(3903001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: P7hMt0JSDzxixeX3jPH2WXBcSmGzTtATP3207bvkDoK6arRhHpw1MUEbFpebtrM9XgKRRvm1fjba2YRIcHND7QoPeUODfZQxmNxrTZ9OHQYCYc0PlUZv7nLzfYmGEAn2+zeyoj9wmDrYBkjegEc1VO1Kw8RAlT1rYcM06Hj/FNx+beU8jXGxic11LZRvFjGJ8RcqOCozj97bmfjveMR1FiEmq7Clr4LGmmiVZXXDIqn/x329p7xltiDhuKHUpgUdPkJ1Gr2NIZC3D7SKWMrFXBnbHdOgBIl3BztbMN+HYujyaXO+AqoHGdiuPyHr703TbRzvajURWSAl3y1tIbqfqPlubI5EGdCJYCCshfG4B9iVQhptF7+0VZLrJ8iEGjO5tY9ToW2PhQIU5He7d5OJg1xywE77yOK8a4FCS2x9M2+ZYyXWYX+lQaeDiVG8NckShtv5E9cVjytncseP05Q/YcHs/HGV47K0LudBWLgVW7N9T4C0xa72MuLDLxIUO0N8dU6++P7wDfnmbqouw2M5hw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 672fcb11-2b42-4878-47e9-08d8184b9610
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 14:33:39.1778 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nKxI2SpNUAC0e1OtQsmZyS+fpO1BHmr/2r3i5bWCKNWgFg416N0GD9J2QqWKuUJseARfhmdy6OU/8DOKHb6iAWyIKYX11IGNYHedG3+6qd8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB6528
Subject: [Cake] Why are target & interval increased on the reduced bandwidth
	tins?
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
Content-Type: multipart/mixed; boundary="===============6452513511665129715=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6452513511665129715==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_EACD9CD9-DF64-4C14-B325-6BABCC169066";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_EACD9CD9-DF64-4C14-B325-6BABCC169066
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Genuine question.  For the reduced bandwidth tins in diffserv3/4/8 a =
different rate and hence different target & interval values are also =
calculated.  I get why a target/interval calculation is desirable for =
the =E2=80=98main=E2=80=99 tin - this forms a =E2=80=98best case=E2=80=99 =
of how long each byte takes to transmit and is fundamental to the =
shaper.  What I=E2=80=99m less clear on is why increased targets & =
intervals are used for the reduced threshold tins.

To my mind it means those tins can be more =E2=80=98bursty=E2=80=99 =
before codel jumps on them.  That=E2=80=99s possibly ok on an egress =
path but I=E2=80=99m not so convinced on an ingress path.

Please point out the error in my thinking!


Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_EACD9CD9-DF64-4C14-B325-6BABCC169066
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl7zZEIACgkQs6I4m53i
M0qDMQ//efK+vgWJHiHJVRsCspMuqQpFpqSpJFvjCW//QrZfY9ZJiDTYpPL480gQ
SRGU++70oqqNsGeH5axe8mD0qmetZR5e+OgZnsPAWAGH8/wO/b38qpfw9sJ81wsM
4nYGczkIhkvB58FGlW42iALa71dviulgaifK7P8TCzUKydsx9OCVec3UQcNlJgLb
Gw9jqFHB4SpixI3jr9YbQKXdQJLSyB1fdU3J/m23BAiih/S1sgSbivsEbQeEJQ8l
mEsTUwn8/AtYUdGLNSCBdiRYmMn54eAEyUKtqFU7ReBjKuGYe9IlqO1IWxApzyd6
gfI3HTSFh3Bn3HJKbFD88GcXy+6GVfnwHDQS4fZOpJUkMXWGq8PaY52PyLwgc7F2
U5tejBg0DCvp/4OFykvTVG/igKDPGOmpuRi5FdzuUOQwmQ1o9+Q/i3ZjCB1RQ9Sq
Q1TCACXKkh/BfGZELIV9OKj3p5E7iYaYt9euCdbb8k0PDLKW1u8V8mN3YHlCSbHV
QUY2VrWwN+JxSgm0d/tfPCqIRE185yycwX5VUAPseBogFGkv6Fj21Wqt3wnIeKt/
ZtQhB7b2PnkRLzRJlY2TrEDKcxG7j/Sn0G4qoQmlNbYV5Szmfa9CiKzpmoio+gPt
6lnG5EFg1O5x+f8W08bF/24CRugv//iwewwX08/7XqgSxJTKtYg=
=dMiX
-----END PGP SIGNATURE-----

--Apple-Mail=_EACD9CD9-DF64-4C14-B325-6BABCC169066--

--===============6452513511665129715==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6452513511665129715==--

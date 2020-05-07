Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA241C8561
	for <lists+cake@lfdr.de>; Thu,  7 May 2020 11:11:12 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5D81E3CB41;
	Thu,  7 May 2020 05:11:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588842671;
	bh=ev7BAg5gMwmmoWqXVL1KYHy1zU3Ib4AQZEvQeujY0pc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p8rmy5OWTIiXlp6/r5tGOguxTwj/BC7MfWWvLWkjUm2MGnJRSoZRhn9AmpZfy5uaf
	 MV2LDkbHWfqcBvHwkBpY1eZ4EyaI3TwrRxBD8QCjt4kvHvQMli9B7KE7TvMy7rwk5U
	 TfMKAIIi0VflTln199LM6XpE6HmbXuf5wYvUcBUG3t/4dNTknEpIUyOO6rEVRDJWDu
	 BO5INM+SWw6NVWKSUfDd5q/KRujMrkyigdQcvGu0AgoH63q/LnwfmXL90od9rU3wKY
	 O9QYUmLAEXkPmy8487LCyMRzBdQRsN+bxApGNUCFWLjlyFnmOwef79SUTpWHVmX3X8
	 z/1VPEK1PSTzA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (mail-eopbgr130078.outbound.protection.outlook.com [40.107.13.78])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2CF513B29D
 for <cake@lists.bufferbloat.net>; Thu,  7 May 2020 05:11:09 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ex+5tA5AuBB3KpjIAMC7R6on4/mvL7UsD7AIbeLS1EpRGV90dB9sGEmlSnU8gwIuLDOsz8Esfu9hpVvHiHN+6NT/yW5zDGqJKUv00TyMxc3Q1tOKgJBSRaRQAIOk8dOVlEEaiRFHcsPzXrdv82x0WsWydDcrnj/F4dDkwXjFkEGxkG0JCGPtnFjWDnUQmxMvO122o74ioJ+Mx6SOIrL5NCt79yWg2EJSDgAJEXQ+H6/A0ExR+2kAjqnLxehFCywp+NGoJvBPbpyKufWzAXQ6TVNIGT9/IcjeU2cII86Cds4kj67dfhxL0XXip6edMtaUh0ERTTWi3MI7jBbO7Z08gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LCui7ceppJkfiv8+0I42T3BgVec+yz0WXrbT2mf55jc=;
 b=dk8LUuCbTtGDIDYhyzLJS3M/79yeWOSCCusEcRz73wTAfN+ZtbJ9+2yrDQYt0mChDd0vWb8FaLz6RyuorkZBqBLiuO15W+ZlT4F7Auutz739LMKpL1WOuTkhmjZS+xFY0wtUVqqYIzhUWmAOmnmP8wEd70J1e41HsskjtYcjLER+Cil+H9g/k7tpOqNXiPm5yFIzzyaMfCRdQIfvSVAQlnI+/efnQZvUO0RKYUMHNbhrBSpss57ETJMkRL3Z3Vq3GD+jpdlYQ7flp92T4Vyn9brLQzI9OZ4qGTwWHkOxmu6ssnDW3DM0BN4dvAedv+ORQNuWbdvLHIh/7WuHHsuktw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LCui7ceppJkfiv8+0I42T3BgVec+yz0WXrbT2mf55jc=;
 b=rJLAujOP+TcteN0d2DjLJ7p+hQHKBb2rFH2Zg7TS+5/xE9gD9zzZV5zvxAMM9JYhOKHupiE4m6vzHeBw5rPFatz4NSVZ9ldrKwFWhV3zJwicFCcQQH9YGPbDpv486tnLrz3lK3QFYDpKKSdYPGSHsvRakbiRaf3rE+RA34RTK6o=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB6542.eurprd03.prod.outlook.com (2603:10a6:800:199::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Thu, 7 May
 2020 09:11:07 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2%4]) with mapi id 15.20.2958.033; Thu, 7 May 2020
 09:11:07 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Jonathan Morton <chromatix99@gmail.com>
Thread-Topic: [Cake] Latency target curiosity
Thread-Index: AQHWJEU7YDANxZ+4XEGJtOgdU5bzl6icRROAgAARQwA=
Date: Thu, 7 May 2020 09:11:07 +0000
Message-ID: <DCCA0D20-E9F0-453D-BE20-2C27043309C2@darbyshire-bryant.me.uk>
References: <E8AAEA5E-98A9-48A7-86F3-BE4621B4074B@darbyshire-bryant.me.uk>
 <EEADF1AF-4471-4A94-BB2E-5669A521B1B4@gmail.com>
In-Reply-To: <EEADF1AF-4471-4A94-BB2E-5669A521B1B4@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none
 header.from=darbyshire-bryant.me.uk;
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9e5db89a-9dfb-4c99-6fbc-08d7f26693cf
x-ms-traffictypediagnostic: VI1PR03MB6542:
x-microsoft-antispam-prvs: <VI1PR03MB6542714F00E70013DFF1E2DDA5A50@VI1PR03MB6542.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03965EFC76
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oU36YpLL0p+nc93zLkLZjXdFYQALsqjeRqcPdrHfczNCx4N7NJTkC13EiLvbkBuDBVeXdfe/4ua+GPnZZooX+1M5vgEhnHG36dYECYZ0x8X9hXvTGVR97ELdQTQrKLay7rH6g7zd0RMWGsRJw4xFf1tQRKvdKCAb8j8iD67Gvk8B5nR096VFYr71Qc1ktOIKGrGLgUSYZxlfq+nslcz0eiN2rHm5E+uU727EGFmxTDfcaSrTmMwQluAayX2Swe0/b4WK86q1LqYCzE8spU5IiBo5RJJrMJYJ5MvGU8IqE9d248ZqVzgX4ej/Y5kB06zA7kZ1v3mQzhUhp5grl8W85J42UZ2rDjGvWWzqGWUUH53qRaV4GXxw/9weFNohwG4jTZ1yK+kwS7/b3Wvqm476G2HAiWfmLXUGypr/ey9IL9g/Ed/A7vPXlAIOcgvRKYIzjKY6SP0OPY6fiGbFsJFH/9Gt0K9/kp48WSmt9V0DXsCtZ1oo0Yd3Um7r2TEYvRVFhFaIXLpez0xUsMa32HOJLw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(376002)(346002)(39830400003)(136003)(396003)(33430700001)(86362001)(2616005)(4326008)(316002)(6506007)(53546011)(71200400001)(2906002)(45080400002)(99936003)(33656002)(33440700001)(6512007)(64756008)(66476007)(66616009)(66556008)(508600001)(76116006)(91956017)(66446008)(66946007)(83320400001)(83280400001)(6916009)(186003)(8936002)(5660300002)(6486002)(8676002)(36756003)(83300400001)(83310400001)(83290400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Z780PQU3GUMoLUaVQ6FVQMq/BKDKIhpq5P+athCUkDYP8WYOUInYXz7zN6Lom0z+p03j6OwqVYGCeRpUw0Ej3C86J3OFn2iZr0n8I7hkpZjRF6fMzqHXu/9nE7ILXXgI32JpFQqxR7srrzOKqikcZTZdZLrp9navHzlECDeXC9IlpdAGlgfqEdNbtJac392xeH3wy9LK4dqJAPT5CpIi32GCwIU9ojHLAWQevLelCc3BJzmXmznLg9pEsgzITXMa1CQk1ALJaoY7ezjE5asoxBiZssj/aXxF+Fdda4UNfe1mGAXql+6ApcYGsx7P2WMc9bZd1YORzbM4nkKOtb8mMg6VJVUy2IYhs92iSv+WSpznxrsua5z/nm9jcKNWigsFtXJzbJ5xfLaFCoP82RKGudzh4jZF8A0N4Wek9Rb/EVba26dwlSoaO0i4jkE029T9b4rCZHwqYGJGEeF3S72tW/iC+FMLrvpDBbEZbpXjIYTcXuXuo3PKQ9BBa4TSDwCaeJTvOgM+yIKutqiI9cpWfIcgfslIoRZ0HhiNMnzKwzIrUk6Q+nBKJ5Ot1IwC4B68yC/L/DG+4DNbv0vONf/+KzDpRNiRxzbNenLNRZJJXbdJR0REezEopbGSYgb8NRBjo2jK475yPQl4XzpaRHqJh7SuxJG/YfTaxTURD7y7sm4kTPcHnp6NTuo4zHcLhm9i9koMWSurbZqjQ3k4BpG4Q7GdinMIiIT21KI3xJjqim1R5ZbKvqHEvBHvqz5XV3Q/5VON5eFhL9AqvBwnb+FLMj5DQi6QSPJ/yMp3Ncc/ynJ+x6mUgBTo6AMINqPJAtFOcWyV45oXJ8LLDcPisTfFUg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e5db89a-9dfb-4c99-6fbc-08d7f26693cf
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2020 09:11:07.5306 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Krj6AbrsA0U44g6WzpnvZSe7580ilZzBdK5b1sEBi8g/tZnvKGEbnkhQ6MWRuJqu7VAFMC8ePq6DB6ZJZBUpHbEtCQIwSZUimyZqogdA2B4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB6542
Subject: Re: [Cake] Latency target curiosity
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
Content-Type: multipart/mixed; boundary="===============3082542054833064570=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3082542054833064570==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_2638F57F-47AD-41F5-BD24-427D0BEFA8D4";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_2638F57F-47AD-41F5-BD24-427D0BEFA8D4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 7 May 2020, at 09:09, Jonathan Morton <chromatix99@gmail.com> =
wrote:
>=20
>> On 7 May, 2020, at 10:58 am, Kevin Darbyshire-Bryant =
<kevin@darbyshire-bryant.me.uk> wrote:
>>=20
>> A curiosity has arisen:  I use diffserv4 mode on a 20Mbit egress =
link.  Bulk tin has =E2=80=98capacity=E2=80=99 threshold of 1.2Mbit and =
because it=E2=80=99s a slow =E2=80=99tin', the default target & interval =
values get overridden to 14.6ms and 109.6ms respectively.  The 3 other =
tins are 5ms & 100ms defaults.
>>=20
>> I have a backup job that bulk uploads 5 simultaneous flows to =
Onedrive.  The sparse_delay, average_delay & peak_delay figures settle =
on 32, 38 & 43 ms respectively with around 9 drops per second on that =
tin.
>>=20
>> I=E2=80=99m curious as to why the reported delays are over double the =
target latency?
>=20
> It's likely that there's a minimum cwnd in your sender's TCP stack, =
which may be as large as 4 segments.  In Linux it is 2 segments.  No =
matter how much congestion signalling is asserted, the volume of data in =
flight (including retransmissions of dropped packets) will always =
correspond to at least that minimum per flow.  If the path is short, =
most of that volume will exists in queues instead of on the wire.

This is a Qnap NAS box running (a form of) Linux but to say I don=E2=80=99=
t trust the IP stack as being vanilla is an understatement.  I=E2=80=99ve =
seen it do some really odd things when enabling ECN on egress=E2=80=A6I =
don=E2=80=99t know if that=E2=80=99s a qnap or onedrive issue.
>=20
> Fortunately, backups are unlikely to suffer from a small amount of =
extra latency, and Cake will isolate their influence from other flows =
that may be more sensitive.

Absolutely!  That=E2=80=99s why the traffic is in the Bulk tin, I =
don=E2=80=99t care about its =E2=80=98interactivity=E2=80=99, I just =
want the data transferred eventually :-)  Cake does really well, I=E2=80=99=
ve had these backups running for days, maxing out the line but I simply =
couldn=E2=80=99t tell.  I can also reasonably reliably classify facetime =
calls, so I put those in =E2=80=98Video=E2=80=99, so just for fun, =
whilst the other half was engaged on a 2 hour(!) facetime call with =
family I started backups, ran speed tests etc to try to disturb that =
call.  Cake just kept that video call running smoothly all the time, =
brilliant!  I know that=E2=80=99s more of a tin isolation test rather =
than a flow isolation test but it=E2=80=99s still great!



Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_2638F57F-47AD-41F5-BD24-427D0BEFA8D4
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl6z0KoACgkQs6I4m53i
M0ogIQ//bML9rG5MTvB0b8EwvuDNjhCmuDQoJA7MB9AVcRwvBkch/rwGnQ1a5upd
kJjfFwDqY3dcdZtl4O3kYgNiA3l6nhOKX20BHdK826vEwnwMo++UFgDXREFtJwAf
Og5aJoU9e9yS8klB4LEh2t7eJXlL3ALHSXJOBrk4yeAPAtngNSHMmRjRAtIC4IVX
mMWGXeYt7W9D3GckBVxBstHDPZ8qB1uqEUt0192+7fBHmeFjpqvQhQ02klDN2LlE
Xt6MBh7Sx5CMtmcQVtJ5Mlw9mmLih3Aq9nijf18qfKQlqxQ6noRlMfW4mKRUmSdY
S8YlxbAlDqLNcV/9saV66nl8XnYd1ZqEJfR7ibUuOvVUpCLT8IoqUY/O0MCiBjtQ
Z+Ogm+0i6vz3Jkobm9OMZxU0XAB7mm4huXQiQyttPE5NWXGkpfbgmil7zcQZU59F
hE0zan8Ydpr8lWl49DcYuRbH1et2TUF+05P5jQYDriKctEwAysjw0FlxeXq3Bbof
zvCRAOmwgAL3NQ2soHmA6e8JHwYBVF7S3JO1ZSzaLDqLDVwFQ32cmdbvrNcgsvxs
6QO08JE3Z4CwUKxYRnQ8cwEEEtIaWuIRpt6Hl+wwtUX5sCyB9HCcZ2t4HyfJRXWw
BHN0kQcnT4phSQqBL9FTDXofNW+ENOXXpDL4NxPj2rDa8w0Nty0=
=5zs3
-----END PGP SIGNATURE-----

--Apple-Mail=_2638F57F-47AD-41F5-BD24-427D0BEFA8D4--

--===============3082542054833064570==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3082542054833064570==--

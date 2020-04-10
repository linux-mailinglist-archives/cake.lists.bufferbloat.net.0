Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0376A1A46A2
	for <lists+cake@lfdr.de>; Fri, 10 Apr 2020 15:16:35 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 5899F3CB38;
	Fri, 10 Apr 2020 09:16:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1586524593;
	bh=ASA3PowK0DoEBjK0AeC2i2F60lO+vZeJ0yt193oq7Eg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=nopLmqpyBjwMNuAgr9uWjex0pcqmEgK1YOa0kPAGwZFEa5zuG2zsv5prhzZVSLGVt
	 3hnlH8f1XST0Zes9XhhfLbyUTW+WdQI8oNzJnTU3uOfa5znyQ0YANJLA9HB3AZ7HzZ
	 PeUZDW2826CylTCn5F3vOF2sWiKMzk22WTdhMm9VheuAW4+c1KgrS3M0t4wmdATQxL
	 Tm4MxWvYT3iD/vkBdYIixtMadIbhBFtO9o4O6xQ7rctgu0qbh4mDavpvey+Yfz3OXP
	 mRErXM4HGXxc1wvq+yZ83Y73gR6BJtCIvDO+8ztpLT6SO4P+1ap1KuN6HuXAEuLi+p
	 LeXkwhMSWV8ug==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-eopbgr60060.outbound.protection.outlook.com [40.107.6.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6A7843B2A4
 for <cake@lists.bufferbloat.net>; Fri, 10 Apr 2020 09:16:32 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FjG3DjG/L73+vrpHVYTAMdURz9ywFNp6bmUuhDfZFhKE8+gXjL7CYSJ/ygsSaSJH/kvTXO8kfKbipvZAbBTWy5MMJ77pqejaNPzbMjm/oOJ6sETrs0UHCj85eImVfOUiB4SMndjJI+uXCVGoAbpVRNRQYGuSD39mPdbQvOQ0Ck6hnYLVEhlHMvVqEGtvc9rh8TFkr3YMra8GME3TzBum74zHHVpnzVdnTFgTLctRwcFmeWC9kpjOq8LNl1ytLRFx3dHuHVH1jEswzpY9n1TO4KJpSGAcPnjAApdANS512XITUnaK6urpN27AFiXLj1ZnJXeycaOdPcQkq7CQyQNIxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1CyDuVu10xDFBZBWjo7hzXL/OkefpwZpFW+bQUMT6to=;
 b=CnOTrPOYV6g8kAsT7m3RspIz12oq9I57QDFZNZybvJhhCjSymB+Bfe8cXYgxeXsml7sINwR0LXmqFEyvSbMwuS180ot5UvEz4kLQdt5fvGRWSQnA8ve+hahly+BnZLMOpNdYDJzYSXJsKgkB9rfi+W/Hffj5yVrTtcKVd2oRXtWJNo0eoDw6bY1WD83UbTxKvKLgbIqMxoB9D0FYUjblRiX6geLi/xYPJadfvdh3fAM+yYXLl4H+XVeKHv8Qomyi/e9whX6OYXqCeBrvNjbULB2gwKV7Kb6p+K5ftF3vpviodI/FfvFRDfH6qC3NrJa9rg0KLXDQKLDshslpQrirWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1CyDuVu10xDFBZBWjo7hzXL/OkefpwZpFW+bQUMT6to=;
 b=JoifqeGqhdjO87DwHtrQ0FKIpcFLzM9lhi2N7xPYUmc+oXIG6JHdGq2Z9UXSMNEwQhVjSAYd7qGywVHnZ0S3BC1yBPWnc26WjgDBxsBN2qL8mAx8zgdVmKqVVg3f0XcJr2VRctjcK0WjFltsOrSTOV6QmiQVCyDBkS3vM42FQAU=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB4142.eurprd03.prod.outlook.com (2603:10a6:803:6d::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Fri, 10 Apr
 2020 13:16:30 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32%4]) with mapi id 15.20.2900.015; Fri, 10 Apr 2020
 13:16:30 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Cake List <cake@lists.bufferbloat.net>
Thread-Topic: Thinking about ingress shaping & cake
Thread-Index: AQHWDzo/6dOyExe5j02qd5cYk/u6dg==
Date: Fri, 10 Apr 2020 13:16:30 +0000
Message-ID: <7BD9FB5D-7577-477A-9FF0-7BF90043C27B@darbyshire-bryant.me.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5865ea6d-e670-4155-41aa-08d7dd51621a
x-ms-traffictypediagnostic: VI1PR03MB4142:
x-microsoft-antispam-prvs: <VI1PR03MB4142BCE81848D6105A231A88A5DE0@VI1PR03MB4142.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0369E8196C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(396003)(346002)(376002)(39830400003)(366004)(136003)(8936002)(86362001)(76116006)(99936003)(2616005)(66446008)(6486002)(91956017)(71200400001)(64756008)(66476007)(66616009)(66946007)(66556008)(5660300002)(6506007)(6512007)(36756003)(6916009)(8676002)(316002)(33656002)(2906002)(508600001)(186003)(81156014);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dotzSiKMzAqMu64onF1oQgzg9L6qe9XVl4LPbbxUVStaCbnzy5HogYbaAGnMKA+NLbSPaH3OvoFE9nOgNAWg4pgZOQpc/vr8cnnYILVOlFBRql6o9zDMhUg/M6kmDb75yh9Pd4/yFEmdaQ3Mwy07c2aOM67pMNT1FEKsCYpxeHvrBoklN+H/FhGW6M2WEHa9w6kXlLiVsz/Y5/b8hakHmJndgvca2yIbanNA4yjPmte5pqBHO8aCLfqtRw36xzzRiIiVMyIZBE3ony6KYet5qf65mlGId9tqzFLDbsYvtqTMc7ggc1WG9sxtRS43vO2vkaUWl5IHhqNoiQf00w1xuuRV21YSXZwy5SqZ0eJvRi3bHrpjNRNNnhHPw7U49AvVkTwefnxme0RuGzSxtbWvmO8wCdOj5bzd0kbc0sEodDdQETUCRXzalCc84iBU0iLu
x-ms-exchange-antispam-messagedata: MHaaMrUhzT9I2dI1RU2IkYP5/5Sq0WjdI+LToXf1VWl0ucjQSTFipvDo/Nk1NSWB81t8XfcaY71FIJHysSjJCXqe/Wi6tzeEnrp2AMvZ5KJO1YcCzanoFcjQX2DTsplkTsGAVZakRtNtSq750gY42J/ocD/bzIHjmxNZKNkt4E2Nqjc0S9rbDfvozC3FtXvw
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 5865ea6d-e670-4155-41aa-08d7dd51621a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2020 13:16:30.1643 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iybJRLhLC7iYiT0vhS+d6VVy1lUBrZY2FDng8bKgOOjQx7YWEyDRmlQQOkXQpCDylvAeUif0hdQraxCJ03QAPH7cwmM3XTi6rDLGCY32Cu8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB4142
Subject: [Cake] Thinking about ingress shaping & cake
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
Content-Type: multipart/mixed; boundary="===============3488639739110225909=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3488639739110225909==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_FB7C2287-11DF-44D5-B027-FD9BF9DDB5EC";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_FB7C2287-11DF-44D5-B027-FD9BF9DDB5EC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

This is pretty much a thinking out loud experiment/meander as I =
understand it to be in cake.

I have a 80/20mbit FTTC line into the house.  Egress shaping/control =
with cake is simple, easy, beautiful and it works.  Tell it to use =
19900Kbit, set some min packet size, a bit of overhead and off you go.  =
Ingress has more problems:

Assuming I do actually get 80Mbit incoming then the naive bandwidth =
setting for CAKE would be 80Mbit.  Cake internally dequeues at that =
80Mbit rate and therefore the only way any flows can accumulate backlog =
is when they=E2=80=99re competing with each other in terms of =
fairness(Tin/Host) and quantums become involved=E2=80=A6I think.  The =
backlog is controlled by the cake egress rate.  There=E2=80=99s an =
=E2=80=98ingress=E2=80=99 mode within cake that AFIUI says =E2=80=98even =
though you dropped a packet, still include it in the =E2=80=98bandwidth =
occupied=E2=80=99 count, because the data still arrived through the =
link, even though we dropped it=E2=80=99 BUT we=E2=80=99re still =
operating at the output/egress side of cake and not looking at all at =
how much data is arriving on the queue input side=E2=80=A6the upstream =
ISP shaper is doing that for us.

I=E2=80=99ve been wondering about how to control the rate on the input =
side to cake, and an ingress policer is available under linux.  If that =
policer is set a little below the ISP rate then IT, in theory, will =
shoot packets first and harder than the ISP one, therefore the =
congestion/control point is with us.  And I also think we=E2=80=99ve the =
potential of running cake in =E2=80=98unlimited=E2=80=99 mode=E2=80=A6 =
ie. it doesn=E2=80=99t have to do the shaping (at the wrong point - =
egress). It just does =E2=80=98flow/host=E2=80=99 fairness =
=E2=80=98backpressure=E2=80=99.

Does any of that make sense?

Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_FB7C2287-11DF-44D5-B027-FD9BF9DDB5EC
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl6Qca0ACgkQs6I4m53i
M0qk4RAAuQTmH0Ud2kaSucOStR3iFj7CaPY87ZzL0GdOl0/1zbS7aaaf9l7Xb/Rc
j+EZymdVs69+kQd3xP9T9zfqrNf0bkdro9AirdPs9Wnbzrj3igI4n071Oiidi744
SuH/koHfd8sBUtOrwLPt2hRBPe1svxH1u09Xbg1Rxe3bFn/AWfphqk0V26FkL9/9
pKjT9O/yNIh7ORO6T1WCEzrO68Vyc9qX1176f1ldjxwHpykqJyrDNmu11fcYXCrr
2ESO090AtW5Fg5XRAqBHRMM/XnbYGjL1E+aaGYTwF+LaC33/+penC0fy7PbNbH1v
kdpui7xa6ZpqQ3oJheHWuPQ34MplazAYwB3qHNBZlSxaRIV2eEvRYfBBMf2vWJL4
pyF6yblSPuvsJnYiWw0FTPlOG5scOlHAE/QMmpTVaUHM3noI40WSYCcDohVV4pDs
u9JqdKPLTrnNxzrtr6L+k4XrCdo26fAovDqTebuNJQWBXTY2LufThlYwuzbj0Jo1
dWqyR70ng9q2aVJWBOSZIvDZzlzgLRdzorgZlz5T5Beh6ayAmyQ9Ir4buHxzzSKe
Pb6/bM50lv7rvl2u2xC6ZS9Us/XK2FqXxwdsf3UrfY7PwuGLMXuEC6uWHE3yzL7l
vvj5fURoU7Tr7ZHWd/VyxknUyndNRICtDPvfFE6WjEE5Tv7musw=
=AWNM
-----END PGP SIGNATURE-----

--Apple-Mail=_FB7C2287-11DF-44D5-B027-FD9BF9DDB5EC--

--===============3488639739110225909==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3488639739110225909==--

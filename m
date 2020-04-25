Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA5C1B8961
	for <lists+cake@lfdr.de>; Sat, 25 Apr 2020 22:34:50 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CD6283CB38;
	Sat, 25 Apr 2020 16:34:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587846888;
	bh=1k59tFdcgQnCEEWvVLTtQMdZII3FXURA8mCNjLrbfjw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UjeifCQaDQbKUOGk5bSvOWEckek+TRzhUe1/at1lWc93FKEeAxIAcn6MK9DDQ2nfd
	 natVL8QfEkVC6zjxJGyzlhsYGXwzoWOKOI+JxAyXDI5zA9Xc5vbk23ISL4r9O6onrA
	 IMgI65u/D4xDkFd8ziaHnPIfl2X014vc5bo4/uoOFwdEMPGzEkro2Luk8DMMCWkZ+2
	 UvWr2kLuezNJNV7mgodQ3+Uk0YIko3dMFMMkSPHACng6I2ga92e3NaROH+nbkDQ4gm
	 B+vyiwELqJ2s+XP9hWKY9SpwgK3fmBf0i+SWj+oZeuH5cOEAuGrch/7YyR7XYDd9NA
	 6WVrIhSV/lOBA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2048.outbound.protection.outlook.com [40.107.20.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B51AE3B29E
 for <cake@lists.bufferbloat.net>; Sat, 25 Apr 2020 16:34:46 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SdVz1uV0DyFq793TMrRRwqxez0/JEOLP4S5EMbXcS4o8eCRB92CQd4dAeDDNSPwMzXhAeC65b79LA5hWLBQQMIbS9zZwyHvI9Z3RWy56CHtO4HgO1xraeVCDyZpD6hFxBc9TKzvcI1rlhpjqC1ZDbtACjo/k5IkCYaIcL0d8P6fPKg2zpPgmwD7ohAPpXxeZ/a3MhnaNGFpyC0qguGMBUd7QPnjoEImSxUW3CsCE7gEJKLJJ39NLpTW287SIKseg0FEeqxvbOpWfnAivZ/E4qdnchMTmUAIYi7lV626sv0PTe8uxeLuT6A1h6P4uCNuHJqQxCK3u5FPB1ICvtYEuRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wyhJKWscvzJcKu/6Sr3URfecID6JVMu0DbQJb+WY0jU=;
 b=YvH56ZQTlNdTGjkaevDNBMXDoJ5nOlAOMM5OaTxDPMnYjI9H/tDBCwDnon+ibB0cs61DHfjtjoKoABQwSZ5izBN/TifrfHIrz7VyU4KwyTFFzVTFwWZGhXQw2VFbRwzR4EfaWYBHFE2nIPLszFCCwhXpH2hPRMOCC+M0AR7KY1QU3Ch4ZjrrCnWWNdDfb8M5oRGtLXu4M5akfWOLFy0EUdLPsYClAXgilf1fBshkRSBsfEWXiy8yUORNTHxPL09rMq5e9hajC7ArYQxBfnC6LcKhW23MjIyJkRVm8N6zOMnq2xLncY6VBXNvodrzcX8gFecqA8u/v1JUeC/BRcZHMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wyhJKWscvzJcKu/6Sr3URfecID6JVMu0DbQJb+WY0jU=;
 b=JPz06QiH3G07pVaVnOUfeZNEtd9Z60t0FNUZI5Sh1JOGlkgBrDZBuYMuXDoD81M40YKUZzMQdtg2Z69yt0ekKKRgrYe+yPiQbhx144AlKna2VldXVb52OXpKIZ/80CmjCkHCDsqTAVtNqslQz0Czzduk8P0tjD6600VsZf/lwJk=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB3166.eurprd03.prod.outlook.com (2603:10a6:802:32::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Sat, 25 Apr
 2020 20:34:44 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::982d:7d6a:5f6f:74a2%4]) with mapi id 15.20.2937.020; Sat, 25 Apr 2020
 20:34:44 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Jonathan Morton <chromatix99@gmail.com>
Thread-Topic: [Cake] Cake tin behaviour - discuss....
Thread-Index: AQHWGvGmvsYI2khSOkWkfQsfjOsk4aiJ9aKAgABWX4A=
Date: Sat, 25 Apr 2020 20:34:44 +0000
Message-ID: <32DE972A-3359-462A-A12C-77714B2563F6@darbyshire-bryant.me.uk>
References: <62228545-5DE2-4600-A9BB-52D891FF5AD4@darbyshire-bryant.me.uk>
 <4D896254-FFB2-4CEB-B596-A6D2E510243C@gmail.com>
In-Reply-To: <4D896254-FFB2-4CEB-B596-A6D2E510243C@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b9e0452f-1efd-4d21-0e75-08d7e95816bf
x-ms-traffictypediagnostic: VI1PR03MB3166:
x-microsoft-antispam-prvs: <VI1PR03MB3166D6CB54AE61D0B450D7EAA5D10@VI1PR03MB3166.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0384275935
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(39830400003)(396003)(346002)(136003)(376002)(4326008)(45080400002)(316002)(6916009)(6506007)(53546011)(71200400001)(508600001)(2906002)(66616009)(8936002)(81156014)(33656002)(6512007)(66556008)(186003)(6486002)(64756008)(36756003)(2616005)(76116006)(66446008)(8676002)(86362001)(99936003)(91956017)(66946007)(5660300002)(66476007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fs2TmmgC6Hvb/1Hin/8T/N6u9DoKwklTiqt6wgBuGU4Oc5I9Kg7dIgEq3h/3aqH9yjAuZbMS0pWCcXdvSYG7rkpagy5yeivKQFWoHxM4dWB7f2mhd1PBynQdRgjqxylQaA2bAgDwFjYWb11W/TdZUdqr+CJCmT7Z/QJM2S/bU+7aAnRiF9IJ9WFll1RT4tBnoT7N6tIoiWm1QUTANfF0uNtpIyb5nQRTk0gpdFb/p1TZ9qKvijjySzuLS+6FwH0RFvQpDOXcdKPfQ1lUfXmfazosyrxUAQq3nSbu5LA3+GreaAIKM4zrpWciXE3OkhOQtM7YmXYBAyuYpiJI6lzlQqeng+7XIgw/ws9SeNgYOQ6Gr3rxY0yfGkmrCOMo1yuOCF/JWNRISI/VdqDc4JsbJiatE0q375zk1ltqovh+gFFMVx6EFXIE51Y8lKCoptYg
x-ms-exchange-antispam-messagedata: T3UEBhLRKfm125fQmdFYCubL0oHubxGFaf+H2kL8kOWer/YCuj052/GwD7E9RfCNH6iCT/iZw0YyCiv1weD8S8w2yKLmtFEfoO1iVjVoGPeV1wKw2VxUKGU0/8TWrwIm5NeSyXuXUUERe4vHif3IljQKp4UjHezK9L1SEnsvzQJBO71GK5sTeaVzHWTbA5D4rqzuR8mem5nxLkMDMHER4lb2UY/MXKTSUak8JQCVvXWLEuxF2/pFf6Ge5XTlsd4rhxvgQz95eyqPMdR9+sU/f5hpmjwlMWiT2Ds3l+jPnyaMI9egcXRf+rnkYC+HtReyzub3bMKSzC1IQP1IOW5zHS3Mnav6IB72ou/hteZIYN16rgxiUMZDDF4LMQ29qWNVNiYPqhPPcpfmIOMJ4V8HJev0CwA+ooTH2U549dALBHJdctpA9Npb+nB7h2/BYzTK6egmbK1j5FOylPoYgFrNTaRGjZm23RL4QuCGjlKN0O+DzY7ZVnoLbkeN/pvx/qPsozImpvDo/EF/DLz7ey7gR/zP6OgKNXNr+AclYnhoiclMqjIPFNqfqIFtBCefLzC8+qsw13r0X/I/JztSy72Zgdz9DiZrXlW9R2+QDk2IOTw5v7Tmw8O9C9OHNiO3805IAxU6itAB7KxkaCJ1zrarZu3Z0cCA8SasBe1CPLh4/Wk7iAfFacG0rq+phTQ99PFDOiADm1p63+7VXxe7GbC+AYaUyokq1PjlJj2ULy1K/RNsKEnaKhBnZCdZ/7ZNrt6kbmOzFcmCyLv7LjYO7xv9s9xSyyvf+gys4n5/3vDjiuRUsWZgipf0T1KYSNSGpXwJyplFIfbgGtcQD63Qk8w8+g==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: b9e0452f-1efd-4d21-0e75-08d7e95816bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2020 20:34:44.2129 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k2Bz8vBEpqYPaV0y8QEvqMrh5gOKXVyVy/botrFnXjnCCC8SjKgfEoBouIBEJT5qXM+qOpAisBCBdVugccMd8xUGowbnLEBvtegr/wirE40=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB3166
Subject: Re: [Cake] Cake tin behaviour - discuss....
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
Content-Type: multipart/mixed; boundary="===============2616468879469737738=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2616468879469737738==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_B97884AF-6FB3-47CA-AA2A-E3AFB5E6AB60";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_B97884AF-6FB3-47CA-AA2A-E3AFB5E6AB60
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 25 Apr 2020, at 16:25, Jonathan Morton <chromatix99@gmail.com> =
wrote:
>=20
>> On 25 Apr, 2020, at 2:07 pm, Kevin Darbyshire-Bryant =
<kevin@darbyshire-bryant.me.uk> wrote:
>>=20
>> Download from =E2=80=98onedrive=E2=80=99 from 1 box, using 5 flows, =
classified as Bulk.  Little other traffic going on, sits there at circa =
70Mbit, no problem.
>>=20
>> If I started another download on another box, say 5 flows, classified =
as Best Effort, what rates would you expect the Bulk & Best effort tins =
to flow at?
>=20
> Approximately speaking, Cake should give the Best Effort traffic =
priority over Bulk, until the latter is squashed down to its tin's =
capacity.  So you may see 5-10Mbps of Bulk and 65-70Mbps of Best Effort, =
depending on some short-term effects.
>=20
> This assumes that the Diffserv marking actually reaches Cake, of =
course.

Thanks Jonathan.  I can assure you diffserv markings are reaching cake =
both egress & ingress due to my pet =E2=80=98act_ctinfo/connmark =
-savedscp=E2=80=99 project.  Amongst other monitoring methods a simple =
'watch -t tc -s qdisc show dev $1=E2=80=99 albeit with a slightly =
modified cake module & tc to report per tin traffic as a percentage of =
total & per tin % of threshold is used.

eg:
                   Bulk  Best Effort        Video        Voice
  thresh       4812Kbit       77Mbit    38500Kbit    19250Kbit
  target          5.0ms        5.0ms        5.0ms        5.0ms
  interval      100.0ms      100.0ms      100.0ms      100.0ms
  pk_delay        961us        167us        311us        164us
  av_delay        453us         78us        141us         75us
  sp_delay         51us         12us         17us          9us
  backlog         9084b           0b           0b           0b
  pkts         60618617      2006708       460725        11129
  bytes     91414263264   2453185010    636385583      5205008
  traffic%           89            0            0            0
  traftin%         1435            0            0            0
  way_inds      2703134         8957          169          111
  way_miss          922         6192          104          525
  way_cols            0            0            0            0
  drops            8442          230           37            0
  marks               5            0            0            0
  ack_drop            0            0            0            0
  sp_flows            2            3            1            3
  bk_flows            1            0            0            0
  un_flows            0            0            0            0
  max_len         66616        12112         9084         3360
  quantum           300         1514         1174          587

Your expectation is that Best Effort would exert downward pressure on =
Bulk traffic reducing bulk traffic to about bulk threshold level which =
is my expectation also.  Tin priority then host (fairness), then flow.

As you may have guessed, that=E2=80=99s not quite what I=E2=80=99m =
seeing but as I=E2=80=99ve managed to see the issue when using =
=E2=80=98flowblind=E2=80=99 am now much less inclined to point the =
finger at host fairness & friends.  I remain confused why =E2=80=98bulk=E2=
=80=99 is exceeding its allocation though in what should be pressure =
from best effort but it ends up going all over the place and being a bit =
unstable.  Odd.

BTW: The =E2=80=98onedrive=E2=80=99 client box is actually running =
linux.


--Apple-Mail=_B97884AF-6FB3-47CA-AA2A-E3AFB5E6AB60
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl6knuEACgkQs6I4m53i
M0pkag/+JfGfJqo9WIPzWPMQjP6+br0ShITaJ61Wr7Tdl7c3sC8Fi5EpbVTfx/Se
3Z3jYy6+yLkRXp60r1nEtHOvLAO80LjpladWuR3rgSEGE4qNaGo5nt4MRIVeD+4E
PVzhCVVU+1b+m8lBbYGtPbWLuyu5gSXdJI2DYI1US6ObhhF2j6ZYnxWmNSywwAWE
HKnEjkgE92RqJ1HJsQuGfPX4yoFvNQ0Z41TbixFu+w+u7tN5eaz5Re6UjqQQQ+Ec
oouCjea5cSC22IYzDknbGWI4wmFhlYIeImdTSqxe9+1P08subCkuoIECSjXmDKlm
2al8EI5J/Co4r0yPefvDRHm/F8rjjOWWUcE4uGHtzA8xk+BE/JiKrA68WVaGhGxq
ICCdZxnhH70o09Gq00YmbJVrntLSyZvP3de/T0g5hJjtPMOndkoLJGY6RIhA9rrn
DUGLYw0UATwlZuESp3VzaSr2wHLPg6e6QDcngjVkMlRpIntk22rqZM74HQ6+uXNl
rV8TItAuNMCJ9TFZ8vShz66+e9yFCnKxIjCQxCbPsQK4Pfn8j+rZ8RNRY5hPclaL
Pbc0S6PgVYCTTn3d8v2hUmFJSH8hPLmnQSF8akxBWOnNh5/qGvvdJ68esA6ptfaC
hReXTwv0AiQlliJbyO50yiKFgD9eL85rToJkEDsGPVFqFYlrOVA=
=XuxX
-----END PGP SIGNATURE-----

--Apple-Mail=_B97884AF-6FB3-47CA-AA2A-E3AFB5E6AB60--

--===============2616468879469737738==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2616468879469737738==--

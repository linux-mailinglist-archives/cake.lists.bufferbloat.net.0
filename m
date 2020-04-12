Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E2A1A5EB1
	for <lists+cake@lfdr.de>; Sun, 12 Apr 2020 15:13:05 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 38AD73CB38;
	Sun, 12 Apr 2020 09:13:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1586697184;
	bh=HbJwZ3JsLZ5Ls54QR3AyOFQFTnexSbQkN+j89I/UuEc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fTb0qLt/znAGTbvt+tVnJOSU9rZFQA4lGe6EbUAP58JrR/YPUAQ63r7bRnCtXK36o
	 wZ6jpWMGAq+bbNWh1zUrrG0KuWYN1lylNPYWIp4rkluBFj3DK4S5Sr1QMaD3ABePMM
	 gLEm8/6LClW7vaAZZCFoRgOiNubPEtYYYaVHIVvVi4wH60BopT3mvik4zJkkl8hrAY
	 303X/UQXv4uLd32RMaG9TUFz2FxdmQrc3855v+5t9XEzecH80w3VSayHoHMZSjuDSb
	 YDRNpbu82uiQCwqOOJlXxtZdrKKzQ3KK39SkgIU0KeubAWiJm8+N4xxIQBmoJsCebM
	 0PYkV0CeoE95w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr00051.outbound.protection.outlook.com [40.107.0.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1D2623B29D
 for <cake@lists.bufferbloat.net>; Sun, 12 Apr 2020 09:13:02 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G23dIJ43gyA2KjWiQ5aLrSN3smE2BFHX4VBq2oxTC1/7gh37oMMNONFnFZsKcjsaNFmoM0Dwj0qX7JxFJn0YQmF7KJpeB5nYBDxpgQ49mkXvZHe5v+CQHPyfC8GPXKVXO7Z0qOFq/tUuSvYNUNqzO7uGKqJh+Xzh2fDgxdfI1C/Th0y66kXpgVg7HbeaH6maw24R2keqUe1JvVDxY95NvZfGeXKNMs31huKKrh3HwaH/dBdEWm/rBmcoArF7A+okWmzHuiY1GjbGR7zOg+Ff7NZvKgF9labJClt7Ua1EVjir8aGVFIOgw7oAVZt8QCwOwTobPWv8mzao9+4zB+Ra8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2aI+8xBo3rmbgvuk8Dho+6lH7ET0TvqVqcOLybzsPqc=;
 b=mmlr3cRrMxHIsCBP37x0pbLAk/4yYs44WYSH/dS2CqSe9nKuTdOuG7bm0UASSiVEQpsHVOf0xUSxKJXBkmUYaiKj2xbgqJ+RrdoB/KZt6fbQqMlbS/UCHgch48bI844fDyANk7ilw/rfPFqRz7rPytKEpDopKCcFvw1YlRCVbXKzkJ74+Jsx9omKrBjxyWG0bpMq0PZeNLtcYSfdk0iN58KNVwrYtdKuAJp4jDECdK7Nm26mHhMdmjyPdW0yqlSRwCL3SaZL6F+yyCvhADsTH6Yz6YIlwF1sNkDq+1cN2BCnN1Se5J4KcGP5Gyv4WHx2Y8iDouU0aRNP9wlRWGcluQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2aI+8xBo3rmbgvuk8Dho+6lH7ET0TvqVqcOLybzsPqc=;
 b=FejHhgaOWzR3xETO7pF31sKb+P7KQJ+y+uY4cwNalCq0KkLM7gcL3W8JG3lZvf0tkxk5LzmVzR1+I9THMQ6UYaroC/j6ogcK7PjPVW8OsBC1pRYpHTsI8y5LFKojUKnCKZLjYjQpDRMoLDHQf8EAVXk9mEwXZrNtAubkX+CClVk=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB2896.eurprd03.prod.outlook.com (2603:10a6:802:38::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.26; Sun, 12 Apr
 2020 13:13:00 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32%4]) with mapi id 15.20.2900.028; Sun, 12 Apr 2020
 13:12:59 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Jonathan Morton <chromatix99@gmail.com>
Thread-Topic: [Cake] Thinking about ingress shaping & cake
Thread-Index: AQHWDzo/gMHXi5MwAUO3KH6SKw8kfqhyZleAgALCjYCAACxqgIAAJGkA
Date: Sun, 12 Apr 2020 13:12:59 +0000
Message-ID: <0C00AB42-BBA2-4F1D-9BC6-3CC23091B2DE@darbyshire-bryant.me.uk>
References: <7BD9FB5D-7577-477A-9FF0-7BF90043C27B@darbyshire-bryant.me.uk>
 <B37EB18D-CA01-464B-8924-7864FE9A327E@gmail.com>
 <F8BBD54C-8DF3-47A7-AE3D-560DD1A34449@darbyshire-bryant.me.uk>
 <43C11592-F4CF-484D-AFB7-037D1C961906@gmail.com>
In-Reply-To: <43C11592-F4CF-484D-AFB7-037D1C961906@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2ad9f790-8a42-41ef-9ceb-08d7dee33937
x-ms-traffictypediagnostic: VI1PR03MB2896:
x-microsoft-antispam-prvs: <VI1PR03MB2896AF29193C3C8ED1C63CE8A5DC0@VI1PR03MB2896.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:169;
x-forefront-prvs: 0371762FE7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(39830400003)(136003)(376002)(346002)(396003)(366004)(66476007)(66946007)(66616009)(66556008)(76116006)(91956017)(4326008)(64756008)(66446008)(6512007)(316002)(99936003)(6486002)(86362001)(5660300002)(6916009)(36756003)(81156014)(6506007)(53546011)(2616005)(71200400001)(8936002)(186003)(33656002)(8676002)(2906002)(508600001)(66574012);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: N17KbnoZiUj8U7lY3qn8kyUf2DrUB63ZiA0My5lk7RvmfkY42vSaSVGoaWz1MrDj4aW/7tNV6QkjJv8LjxGtbjSRbb4SkRd/zxOqBKy8B7Xynb3D60saq1Eey6DdruVNHhlDxSFm561I/hkFG4epFMlBERqzIrAMJfczNKxvhRNFoIScizzPklTZrNMTBUD9k3s5VD14NIIgZlelyNcQ9gi0b59xTTMg1jogOyVdAbH/DwFNr77osvCrA0Tln1CCi7GGWyezQuh7yfYJ8g/gefDvoKpHAzE0O4g957b+nK2lQBbvY3qmJlC8RQQq0/HCBlbGN4V7TGqKyAbcg90rGP8HcC6G1xJmJCFgI55OTdOwg/R9zWuyynmhJHq6kiiwx9BgB9Ua27bbwVT6kQcq9Z4kzUkW6fcxzp1whyJMuaqG4JBRFjmRHNZQ7RDTV5u1
x-ms-exchange-antispam-messagedata: NtEzTSTpGHeutro+epM3jlH7/YrozQzPiq3smKAfMpmu3V8EN0557CxcDine5KqbG7fFBFPjp9wdNk4X5NatV52DAHFdYmwu7gAyFdscw7rgNn5vSocxkLe+jbvq/iDfnJ1SlctgUhSWb1gHq64b7SaeJN/nX7hoaOU99XagyPlff19T9yN1hY1EG8tZ4T9M
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ad9f790-8a42-41ef-9ceb-08d7dee33937
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2020 13:12:59.3863 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0nom4OS+PJdImZP1Arxc7VXofb0dt1e0EXUKCX7e1FWr41kf7e83e5iRl0I5silpNbXIndpQuJQuKB8A2femH0sPMU6F/Ydfduf2BQDemZ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB2896
Subject: Re: [Cake] Thinking about ingress shaping & cake
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
Content-Type: multipart/mixed; boundary="===============7067202586246426982=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7067202586246426982==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_D383708B-EE0A-4A5F-B5E6-5BF97E1FDEE0";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_D383708B-EE0A-4A5F-B5E6-5BF97E1FDEE0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 12 Apr 2020, at 12:02, Jonathan Morton <chromatix99@gmail.com> =
wrote:
>=20
>> On 12 Apr, 2020, at 11:23 am, Kevin Darbyshire-Bryant =
<kevin@darbyshire-bryant.me.uk> wrote:
>>=20
>> I=E2=80=99m wondering what the relationship between actual incoming =
rate vs shaped rate and latency peaks is?  My brain can=E2=80=99t =
compute that but I suspect is related to the rtt of the flow/s and hence =
how quickly the signalling manages to control the incoming rate.
>=20
> There are two important cases to consider here:  the slow-start and =
congestion-avoidance phases of TCP.  But in general, the bigger the =
difference between the link rate and Cake's shaped rate, the less =
latency peaks you will notice.
>=20
> Slow-start basically doubles the send rate every RTT until terminated =
by a congestion signal.  It's therefore likely that you'll get a full =
RTT of queued data at the moment of slow-start exit, which then has to =
drain - and most of this will occur in the dumb FIFO upstream of you.  =
Typical Internet RTTs are about 80ms.  You should expect a slow-start =
related latency spike every time you start a bulk flow, although some of =
them will be avoided by the HyStart algorithm, which uses increases in =
latency as a congestion signal specifically for governing slow-start =
exit.
>=20
> In congestion avoidance, TCP typically adds one segment to the =
congestion window per RTT.  If you assume the shaper is saturated, you =
can calculate the excess bandwidth caused by this "Reno linear growth" =
as 8 bits per byte * 1500 bytes * flow count / RTT seconds.  For a =
single flow at 80ms, that's 150 Kbps.  At 20ms it would be 600 Kbps.  If =
that number totals less than the margin you've left, then the peaks of =
the AIMD sawtooth should not collect in the dumb FIFO and will be =
handled entirely by Cake.

Thank you.  That is really useful.

In case you all fancied a laugh at my expense and to show you what state =
of stir crazy I=E2=80=99m in due to lock down, here=E2=80=99s the =
analogy of queuing I came up with that explained to me why my queue =
departure rate must be less than the inbound rate.

So I imagined a farmer with a single cow only milking machine and a =
transporter that moves cows from the field to the milking machine(!)  As =
Mr Farmer turns up at the field, the cows saunter over to the gate.  The =
gate opens when there=E2=80=99s space for a cow on the transporter.  The =
transporter can move a single cow to the milking machine at an arbitrary =
1 cow per 10 seconds (6 cows a minute).  The cows are interested at the =
thought of being milked so they arrive at the gate from around the field =
faster than 6 cows a minute.  So the cows naturally form a queue and =
wait their turn to go through the gate.

Mr Farmer has some special cows that must be milked in preference to =
standard cows.  So he installs some fencing and arranges them into two =
funnel shapes arriving at the gate.  The gate has been upgraded too and =
it can choose from which funnel to accept a cow.  If a cow is available =
in the special queue then it takes that cow, else it takes a standard =
cow.  A helper assists in directing the cows to the correct queue.

It=E2=80=99s at this point I realised that for the special/standard cow =
preference to make any difference the cows must be arriving faster than =
they can depart, otherwise there=E2=80=99s never the case that a =
standard cow has to wait for a special cow, they just walk on through.  =
I have to have a queue.

I won=E2=80=99t take the analogy any further since I=E2=80=99m aware of =
the =E2=80=99special cow=E2=80=99 queue starving access to the =E2=80=99no=
rmal cow=E2=80=99 queue and I=E2=80=99m not sure that controlling queue =
length when they all come running over (cow burst!) by culling cows is =
exactly ideal either :-)

Anyway welcome to my Easter madness :-)

Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_D383708B-EE0A-4A5F-B5E6-5BF97E1FDEE0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl6TE9oACgkQs6I4m53i
M0rQfA//XzDNGwoFbOfeLNLI1m4qa6S4T0YKW/HjUqhs4F/Bpk/c0hh7LmXSMTCv
uHf1gDb4WQkzXLzFFAJScVIkum9pLTuKjKhTa1Kk8TghaEXdFBzyP+lVbKG9O4uj
qF4ATgjWjLqbKaSpfTa6xR7RRVWZf2o0TQ8XYKyjWqKJAOw5302QL5OH4ZIEcCZ1
M9103BmkJ1Uy0Gz4diHbkxKUfoZE1B8LxgHXHngSLZOQTt63PhcjdZ4eScWCvGk8
LngkNFdj1ASypXrem/M5nJirMmgB/U3JqqKT+sfb0DVTIeZ0vwG6heJdWEQXn2Zc
yKpg5i50er+YnrnB8TzdX1solOfUce13og8JeA2DWw+9sd0ZLGBeiFhYJo7c+SnW
rwgE+7Si1grBcTngvSUn1SvdGGp0yM4J3v8eKHeD10MTOmJqH6r19E7KNoU5jEFP
l8TykXBs+GUbUmFZApUS/tsio4AjBZw5PZdZ82DLIGeQwAhrURyalihxXKJcwThB
kTM7LgB0YprQLSe1laOqBC6qpN0uUxb5f+p21ldjGwpZU0Ca9sLXFY9StbhnCXnv
y9qN/LfO6SJ9lLoT8Bl5+21PR0LrSpydaOioL6JGA/ICu5zuEoRGB3PZQCCIjXPu
s5uX8g3bI4lAdWHOFe/G6sk1LZqwGCk0wS0tNiyzwdV7rXWLdIM=
=JpGV
-----END PGP SIGNATURE-----

--Apple-Mail=_D383708B-EE0A-4A5F-B5E6-5BF97E1FDEE0--

--===============7067202586246426982==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7067202586246426982==--

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D892E22D917
	for <lists+cake@lfdr.de>; Sat, 25 Jul 2020 19:54:18 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C5B6A3CB38;
	Sat, 25 Jul 2020 13:54:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595699657;
	bh=RzVXCZSbBpc1KcIz9+ESRqGlBZCE9C7CDrORHhqkTE0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KprYF93TBf3/Bx/8y1H/hwE+8aMS7CIjCEriBwM6vXhJTKEYMxBM50RA44qRW5S+j
	 Q3KBreva7hyh2p+uKu2DNcbaNwj4R00HlaScdCXsyNoDD9QSEYDKfLeYF9x8UIY1nm
	 aCpb6sw+S024eqY9WaMmGZXOlnu6VaNewm1SKbByUofGScNUtTEoH9y13TV7yb4g7/
	 TLx55eos7I+CVERG5dVVG9O3ChBUCRIC6H0hZaL88U6+Nlw5nV94wnw0VoED1n4dEb
	 eB74H4+Y4msVjb/38cA3JORBbQ5QIhZCxBGRJkvngY5Lzs3gEVtEwkXvOVuBN7kJvu
	 kcDGiQs+ouJbg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2080.outbound.protection.outlook.com [40.107.21.80])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8D38A3B29E
 for <cake@lists.bufferbloat.net>; Sat, 25 Jul 2020 13:54:15 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IrpFmA1M2uG/qvFjv60PQQPLeNP6vOX8i+VFvOgQ0V9ff5MEkSRiy/iMd+zWREnR/Q8cdQO2QEBB9qp9Zze+dH0kZmgREhYCzFDoH+F6SzQTezGeqVkmgyLWo0MO6Go14yRqTSyOc6y5inceECfXNfyjBrimKdpfkCHG6MTJ6rlskhag4jxBVZNPghzzGQsNzqUZSUSa4Z+oANBJkc7AcEdesQOGF31rHqEsk3CNeBaBEW3AoF6dbNVKCGY+RMXWIjywsAg/ySTWz6YzammufMTBmISr0PISzvGg9GZxy/Oh9K0y1yjUgsdg0X8pCrcmuBMl41/VjmM5QLFaNYJodQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ywzqq4hR2VTj3giI/j5JqV+RBzyz6m+YNGgdZL3oEZQ=;
 b=TaSfXI9v0fy70APWfSjLSMCA8Ovn70M/Ow9489tHJmhHnv+wFNdhthTPWtMK6jK7AMNYCaXISPDO3GMDYACRLUexEKe4YZlYM+yPgpVvY/o0csPS88/51e7+KEqEbIfCft1qWZpHal/N4gI30vN6XbXvqxP8hQwrLyEg/UBc2LT7AUopub9PIjovnO+9o2bAKcd0RQjev6J45KekaCAdLhdjkn7r7XuOma3rnBQp1JUXD2PLw6jwJrQ+nmSr/SyfdADUja5KEr6O2F+NX4cxIYAoMj5ANwrdPmaEk+t2zbvek2LpALE0Lm5UvVxhp5wS12CTDTcm52hc5tOWyGWZqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ywzqq4hR2VTj3giI/j5JqV+RBzyz6m+YNGgdZL3oEZQ=;
 b=dwxoP2N0yWgTwyurNUYinjyv+Vob/e4nRXoYNtWKLmUidDd9BVEbtKu0DcFAiUSlvKl/VNp9n04Vkzn2Qcu3W4MXan0kNRc88MSQWJoA/lckgtbzuBRVbrVTRZYH4m4Lo2HIt1l6U8sVmav1hQKretOZC2549tVtQKiykTVPGTQ=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR0302MB2702.eurprd03.prod.outlook.com (2603:10a6:800:e3::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.22; Sat, 25 Jul
 2020 17:54:13 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::dcff:4b45:98e6:d823]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::dcff:4b45:98e6:d823%3]) with mapi id 15.20.3216.026; Sat, 25 Jul 2020
 17:54:12 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: "David P. Reed" <dpreed@deepplum.com>
Thread-Topic: [Cake] diffserv3 vs diffserv4
Thread-Index: AQHWYdMP82xlrjF1cECorjGMH4SWNqkW/9mAgAEU0YCAAH8tgIAAAbSA
Date: Sat, 25 Jul 2020 17:54:12 +0000
Message-ID: <94003145-2031-454F-8F76-38C153DDFA08@darbyshire-bryant.me.uk>
References: <d5f74f85-7d72-40f9-a965-8335163d8cec@www.fastmail.com>
 <CFB4036D-8EEA-44B2-A909-6FD8B495267A@darbyshire-bryant.me.uk>
 <0CCA78BD-201C-4668-A013-24A3F6F4EC87@darbyshire-bryant.me.uk>
 <1595699283.358416190@apps.rackspace.com>
In-Reply-To: <1595699283.358416190@apps.rackspace.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.120.23.2.1)
authentication-results: deepplum.com; dkim=none (message not signed)
 header.d=none;deepplum.com; dmarc=none action=none
 header.from=darbyshire-bryant.me.uk;
x-originating-ip: [193.240.142.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f9a9e716-927c-4577-1364-08d830c3bd8b
x-ms-traffictypediagnostic: VI1PR0302MB2702:
x-microsoft-antispam-prvs: <VI1PR0302MB2702932617FC77663198D82FA5740@VI1PR0302MB2702.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:274;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GKYGzrWi5XZ3jywLnKwmTFZDuczeZHgetptrd52LxmEOHC5YJl0MVA6kXFF+hr6hPdTYjwPSV3x0nWUEcrmc+Zlp4eeI0xTgg36PIzWw7fymqd0KksmslU3hJr/WT6NQMQY1g8tTjVobfBYNmYku/l8gNLe4OP172riUmHemIrToQsR6rWtpM6HLRhAOWiPReTre+yPKNlDdijztIO4lcbhHJBIfxPaiXo44BiJJH703WlQ6Er848Sb2XE12BO2tzDJfoY/d3/tA95sHPLSWLGRAkUY/x0agJ1Dh5jv62WdJ/8YcUrPmUfQ1naj4PIQciondOZZZY347XTedTMyWwPVRnB6bI+q2OeAfXn6Ntv9BJCxcOY3BGa2XmnuEhD7h7+wyWGZKw9PdQHkiz5AJ0Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(346002)(376002)(39830400003)(396003)(136003)(2906002)(6916009)(6486002)(76116006)(66946007)(91956017)(86362001)(83380400001)(5660300002)(71200400001)(36756003)(508600001)(53546011)(26005)(99936003)(966005)(4326008)(186003)(6506007)(66574015)(316002)(66446008)(2616005)(33656002)(66476007)(66616009)(66556008)(8676002)(64756008)(6512007)(8936002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Tgqj5yE7FvO5xkkxJEaD6mA504EYNdtkG5ao8F6XaiPwbAZcBYDU8hPuiTw86Rwh+WKUNCXEvkZljsD74Tsl4uLhq7w0vM7Bipcjx8D2WesvApG8gafmn/q4f1x1Byis7IrJdor9ucFP6rKfGrrURP4M8ioqdFNbsrkO97Rn9AXOQl0RLH/c8MSPbJUzti1VILAiMyOWF8RRXwqaQXEOFtNA8Cx1K0kHQZLnsHsYRqGwByKaRO6PNbPCnUhVjtVuCp3rmBCnbeCTG982qcBuO8X1Mfnq1pdBtSxTzjf75yrNpF2JewFTwRodtqwI4qJzvfWQmr0lMLjfThn25JwAUBa51yZuAad/tRLtnd2iD4sIKgC5jB+zVRxEOchKO1JeIYTFvaGnW3BLKjSmYx5hav9vqegjZI04dQHwTwC/3WRYGOu3emZ8xRvSjS2m6lCr3tFNSMhfi3Jn9olwGzw9BJXIDL9FYWHnpgD/Ae6+qkjV+c0FOgO1Gidx8LWQuOSq
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR03MB4575.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9a9e716-927c-4577-1364-08d830c3bd8b
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2020 17:54:12.6451 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ojnqYUyl+ZtT05LpgxsN3FqKaH/LmbTGvnTvC9p+9H0RoFY1lzHAQRnx3LzOeoLObBthEpBMqEJjHFugyVqxr6rqtT4yGKCfNL4GOsFuXO8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB2702
Subject: Re: [Cake] diffserv3 vs diffserv4
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
Content-Type: multipart/mixed; boundary="===============4003492661846497204=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4003492661846497204==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_54C367ED-5513-4ED2-9E08-BD4CF17A129D";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_54C367ED-5513-4ED2-9E08-BD4CF17A129D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I didn=E2=80=99t sign up for this abuse.  Bellhead eh?  Well f**k off!

I=E2=80=99ve had enough - bye.

> On 25 Jul 2020, at 18:48, David P. Reed <dpreed@deepplum.com> wrote:
>=20
> This idea (dividing the link rate capacity, since "bandwidth" is an =
incorrect term not to be promulgated), is absurd, but typical of =
"bellhead" thinking.
>=20
> Per packet latency is the key control variable, even for TCP. That's =
because capacity/rate is not controllable by routers, but by routing in =
a general Internet situation.
>=20
> Latency is controlled by queuing delay in a packet network, not =
bitrate. And in mixed traffic, which after all is why traffic is =
classified in the first place, by its characteristics and response to =
increased latency end-to-end, is the core "control" for the internetwork =
as a whole.
>=20
> So, by promoting thinking about "bandwidth" a whole sequence of =
misformulations of network management is embedded into the thinking of =
those designing queue management algorithms.
>=20
> And make no mistake, queue management is the ONLY knob other than =
sending different packets on different routes that one has for routers.
>=20
> I don't know who proposed this fractional division, but it is clearly =
a bellhead-influenced thinker who thinks all protocols are CBR flows =
like in the old phone system.
>=20
> But almost no flows in the internet are CBR flows! File transfers are =
not, streaming TV is not, web ttraffic is not, game traffic is not. Only =
non-statistically multiplexed real-time telephony and *some* video =
conferencing is CBR.
>=20
> Yet this bizarre idea of dividing "bandwidth" among all categories of =
flows pops up. Probably from employees of phone companies or phone =
equipment suppliers. Or folks who went to Uni and were trained in =
"communications" by former phone engineers.
>=20
> Latency, latency, latency. Queue delay, queue delay, queue delay. Not =
link speed! Change your brains.
>=20
> It's hard fo fight this bellhead crowd (or the bellheadedness in your =
own thinking) but think about packets and queues instead.
>=20
> My good friend Len Kleinrock didn't invent "Bandwidth Theory"! He =
invented Queueing Theory. For a reason.
>=20
> On Saturday, July 25, 2020 6:12am, "Kevin Darbyshire-Bryant" =
<kevin@darbyshire-bryant.me.uk> said:
>=20
> > _______________________________________________
> > Cake mailing list
> > Cake@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/cake
> >
> >
> > > On 24 Jul 2020, at 18:42, Kevin Darbyshire-Bryant
> > <kevin@darbyshire-bryant.me.uk> wrote:
> > >
> > >
> > > The move from diffserv4 to diffserv5 WAS about de-prioritization.
> >
> > It was also about minimum bandwidth allocations:
> >
> > LE: 1/64th
> > BK: 1/16th
> > BE: 1/1
> > VI: 1/2
> > VO: 1/4
> >
> > So worst case, best effort should get 11/64ths in the extreme case =
of all other
> > tins in use.
> >
> > Cheers,
> >
> > Kevin D-B
> >
> > gpg: 012C ACB2 28C6 C53E 9775 9123 B3A2 389B 9DE2 334A
> >
> >


Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_54C367ED-5513-4ED2-9E08-BD4CF17A129D
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl8cccEACgkQs6I4m53i
M0qv9xAAyVdxhSFvdPVviFxA2kt8e0SvH5vPn1PdI6WBr8yqIiNEZHy6Iwe4YnuH
9WiLH2Q8Vg11pOtX/oiNyHVsl+FYKXkAqpDpe2/igolW80c+NR3I1TjIzngQLgjf
r6qq0TdaxXDbi8D2B5sVbd9MWD+8hLiRDmvTy0EcAorVO+dQcDxfv7vm3tvrBOlO
qnOZc3ZQDvBOAmG7o1XeIY6ZaBhbiEWZLnZ+FIK1j4xkI8qn+KQc94BSU1Hv+rfw
UhCOs2Sa9VsFqSeadvBYNYxT9ZQv5tIMDqqq0ypFZ8Pd5E5uNaj7thomxikmevC1
1wQgb3OWIUWdUlsn9FSYMk6E8xjVHtllK9IE8YwgpHi8YKs3PCY3hPCa8g+3HATh
dimPnd2WjQAXISvf2cbZks7OUGfirpsLELvgdmhnyhV8IT2lXJa/YZJR6Ju49+xB
i21/2bFvMhJLXBGMdKCJRsVQ9LwqN11VkQV7LYwAvXDqd7JJe9tGW0Ll9YFse0Zc
jtmRIDjcct+QxUs3DqFXyLdfoLmHX4MD7rqOao3rSxfTlAGFD6zXYtFYo9nXP+tr
ll8rVQsQs9dZBtrDeTis+aL3YjamHBJPhv2LotMIza+Iu9QdYkAHIsla5MXVjM0r
wtSbUSLsM4+e0hJix5Plj3488pZBAPh8CNFbaE9WLAqQjCw1MJ8=
=qBfk
-----END PGP SIGNATURE-----

--Apple-Mail=_54C367ED-5513-4ED2-9E08-BD4CF17A129D--

--===============4003492661846497204==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4003492661846497204==--

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2D81B59A8
	for <lists+cake@lfdr.de>; Thu, 23 Apr 2020 12:50:38 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 8571C3CB38;
	Thu, 23 Apr 2020 06:50:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587639037;
	bh=SRjltkgOKbq+CMp36irwlfO2ZWbXesgUyqe51C33dLg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bkYvepVSJO/iZrM73FOP8UhoRCLkFGaSy2oaxs86XZxRKxXbJWo/GRePpI3cOyU9l
	 PCDn16gP1ieVD1luHKoheJvg3/xNP/Bkl6QcKAk0K+Wr2BhXySFnIFHKiAm0Q7Gep3
	 UP5WsL6pNsgzDsWbJM6R/j7CP6xpPVZZDuMJsPS/N2aBp0dk1Tt2OzRW4ZgshDwO+1
	 GvbypDaHwFjM5RlJNvY13UHE+2dp4yvSl6Gwd1SgzqRc7vRGneexrX8AODlpxLsuBd
	 k3SRASZv+h7hl0RS0V1Fy6+v7NSgMzwiTpqz9ubfrmukfMUWerZEpCZsQzsPPSz3Pr
	 VIPvZIfbgMQcg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr00055.outbound.protection.outlook.com [40.107.0.55])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6D0F03B2A4
 for <cake@lists.bufferbloat.net>; Thu, 23 Apr 2020 06:50:36 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UON3vCPYNrvNi0VDLNQMVCPCzHSljXLovWlYD8aWsV+HvmBkMKQLnzT0zx73pG8DZ/rKN5/sl9UWWCiBo9XZrXY+DHQYyhSy6DXhQtLwxhTaiaCN+XXsBzpSu8VDlWEQ6uKHtmt6222/CodZvPwHqfWaV7+yVxfX+EUMuzzV0jp6MwTu4/iEkd3j7Ci5UWsUin+MakTtr80pDZpyHFG4STFuuCT9xTdnFusWzpHkEiurEfDYvoJNtAEZ18/EUBWEMpkn1VBAyOZjz35pgS2g3YTCi/Yv8xhGoYn/Jy9DtkLz5JfO5Vp12XCyAFGokorx6clpYoC34rxnuMZvrRDGdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5rAyi9FDaH+NSdo1szeNBNfDmCOKYfdbXMkjB9yPaXg=;
 b=BaGae5oSqgd0ZZgQvWdwJSRmJW2SOXBdDOv8/3G3gEgOZRqWnbx7ns56/Ld14oz27FefW9RIxZq99PJmNuquhhLw3Nq6MlZrcLsJY0uMJ5IWm1l26l5kPcUj3ZFVw2rBUJYiW6177+JqS1GHQDJOw+A3J+8eP1wK3991jUtYOkYnwYayzMIaRgeTqtxeLlwjDSPDMVvTSJYZS9M0evAxdcLDizp5M5YocnGymYd80BjZnIdWId4XSN9YLVu9F8gTumwvL9+er7sJyiD/RKHMtxyu01JklewhF54COd9KvyV0RZZn6LO6X21b3jBEH5K5Dyj/67NFrrq47C3OCqaJnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5rAyi9FDaH+NSdo1szeNBNfDmCOKYfdbXMkjB9yPaXg=;
 b=Ca/XQRoei2HYn/CPubG1JdPLwr8ck2dajndbVSfswZieAjOvjDNjNtBLtZ9hbPrjJwIQXiOw/Sz36fNa43pp31PShlCw6JKCKZGVFp958L3WZK6fz8y7is07brwftbgnh0+h09ZHUR31uuCpYDVJrF9+S8HMpSl6nnsys/FbcZk=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB4445.eurprd03.prod.outlook.com (2603:10a6:803:5f::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Thu, 23 Apr
 2020 10:50:34 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32%4]) with mapi id 15.20.2921.030; Thu, 23 Apr 2020
 10:50:34 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Stephen Hemminger <stephen@networkplumber.org>
Thread-Topic: [Cake] DSCP ramblings
Thread-Index: AQHWGL7p7ln4Jr8QLkawg0kgaAkYhaiFUPyAgAABZoCAAAazAIABL3IA
Date: Thu, 23 Apr 2020 10:50:33 +0000
Message-ID: <62FFBC75-51F0-4527-A64D-3C379D3E18D9@darbyshire-bryant.me.uk>
References: <F7A06AF9-12CF-42BB-8935-29F784CE882F@darbyshire-bryant.me.uk>
 <CAA93jw7bKq7hHvQdPGK-iMPwzzaFrTx3UHw=mZq1KO1D2ycDeQ@mail.gmail.com>
 <CAA93jw5JCj-RpYWCe440E4AL8_ATYwyYJ99LPyL7Z=fnpvtuuA@mail.gmail.com>
 <20200422094428.2ee29433@hermes.lan>
In-Reply-To: <20200422094428.2ee29433@hermes.lan>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 29c192ad-86b8-4d4b-9769-08d7e774264c
x-ms-traffictypediagnostic: VI1PR03MB4445:
x-microsoft-antispam-prvs: <VI1PR03MB4445D8AAC9CB4F4AE910390CA5D30@VI1PR03MB4445.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(136003)(346002)(376002)(39830400003)(366004)(396003)(8936002)(71200400001)(4326008)(99936003)(8676002)(5660300002)(6916009)(2616005)(81156014)(6506007)(53546011)(2906002)(6512007)(508600001)(66476007)(66616009)(186003)(316002)(66946007)(36756003)(86362001)(6486002)(76116006)(91956017)(33656002)(66446008)(64756008)(54906003)(66556008);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vBRzPUbOHek60B0NM0yQ8iPETm7avI5So1FE/XTIIrPaubpde0ruxrHph15oJKGDHrPj5UNNL8sDOD8EyMgGyPrnRUPMS75CZgQ5SeB1aKbLPr5wsxlRiQtqbPiEU8f3GgTTr9Cdu4HKqD4W01+NcDUnC+rMjayWXYjWyW9TKs18gTROWniPvTR8CfkaP5VOHkjO/EYSDXoaWex3POgZjy7FE9zYziTIA/LAxqO4xqp7IkawrFTVX8Hv8ke6CAOznpjEW186sZbnZV2RbibkqAt5xGIEto+doai5jzAACMyBfkZgSZMMdaZBepjwn7eWqXWEZc8wk6c2SKKmsWyFQ6kvUiTV7WGGM6iV/GpKQKEK0mPKd+L/o/v4eCr8yX7SD6mjAoEu2BkGuWOLFWuibFEYDC25Sx1YDfQCCAQf5l7D54UF7miihMrKa7rSaIZd
x-ms-exchange-antispam-messagedata: VoWQET/H2clEaBEv7AV3GUy0oJE94UAmYT5FOX76MCb8mNTYaZLq3u5lfWVtm/wxHvRr4zEurxJjC9Fe/uj+PjfvyLYIqK4PLcCGbzmX3gZVSKgbM02q8A0F0Q78voKi0aiGGc4fuDNosZ9bGrhMXpsBVAj3WAIfAwAEat/LRlXFTwn4mzwKWrjTRx9p9pWw
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 29c192ad-86b8-4d4b-9769-08d7e774264c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 10:50:33.9791 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sK5sfV+45R5XZrGJd501ekEaua5o3sTUa5T2uLdJ6JZTvzGtmJtp4nBTB0n6CILFOQPOfN8ogJCcZP5bV9nCEBMdZSWGzRgRLl7b032RjrI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB4445
Subject: Re: [Cake] DSCP ramblings
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
Content-Type: multipart/mixed; boundary="===============3649261534770271337=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3649261534770271337==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_4FA3F1AF-F220-4E79-ABE0-8A161F55AB78";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_4FA3F1AF-F220-4E79-ABE0-8A161F55AB78
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 22 Apr 2020, at 17:44, Stephen Hemminger =
<stephen@networkplumber.org> wrote:
>=20
> In my experience, except for a small number of cases (RDMA etc) =
Diffserv is a
> complete waste of time. There is no global ordering, there is no =
guarantee against
> starvation and any sane ISP strips the bits off or ignores them.
>=20
> Diffserv is even an issue at scale in the cloud. What does DSCP mean =
exactly on
> outer headers, who gets to decide for which service. And what about =
inner headers
> and propogating inner to outer. Its a mess.

That=E2=80=99s=E2=80=A6depressing :-/ And suggests there are at least 6 =
bits spare in the =E2=80=99TOS=E2=80=99 byte, perhaps that should go =
forward at the next IETF meeting ;-)

In my own naive home network fiefdom I would like to have some level of =
control as to who/what gets the lion=E2=80=99s/fairshare of my ISP wan =
link.  I don=E2=80=99t actually care whether that DSCP decision makes =
it/returns on the wan link=E2=80=A6I have my own combination of tc =
act_ctinfo (in upstream linux) and =E2=80=98iptables connmark =
=E2=80=94setdscp=E2=80=99 (not in upstream linux yet) to do my DSCP mark =
saving/restoration, so what I set sticks and affects CAKE=E2=80=99s tin =
allocation & shaping decisions.  I want my wife=E2=80=99s facetime call =
to her sister to work perfectly, I want my bittorrenting to sit there in =
the background unnoticed, I want my network backup job/s to run in good =
time but not at the expense of interactive web browsing, ssh=E2=80=99ing =
etc.  I want my BBC iplayer radio to sit there streaming away at the =
best quality, no interruptions.  It=E2=80=99s all possible.

As it currently stands I=E2=80=99ve a series of guestimate iptables =
rules mainly based on source or destination ip address (occasionally a =
bit of port number) but that=E2=80=99s pretty coarse.  Why can=E2=80=99t =
the application do it?

LE - Least Effort - 0/16 can be starved - bittorrent
GE - Good Effort - 1/16 not starved - background downloads, windows =
update
BE - Best Effort - 16/16 Normal activity, default
SP - Streaming Priority - 8/16 high bitrate streaming, Video/Audio =
streaming,  Video portion of video conferencing
IIP - Interactive/Important Priority - 4/16 low bitrate streaming, =
SIP/VOIP, interactive SSH, DNS, Audio portion of video conferencing

I=E2=80=99m still stunned/shocked by the lack of obvious DSCP support in =
libcurl.  If DSCP setting isn=E2=80=99t easy to do, no one will do it.  =
Perhaps if it is built, people will come?

I=E2=80=99m probably stupid.  And now depressed!

Kevin

--Apple-Mail=_4FA3F1AF-F220-4E79-ABE0-8A161F55AB78
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl6hcvgACgkQs6I4m53i
M0rMeA/+OHRPoPktzLCtVV/BR/aTYWjnh+H7hinjJm5XzHrN9VdX3VeAm+ygYQO6
U9v1NmMU6F5XiKDtMUqZrMxT8BjemDJljP7TUzHAy7GhUOBjj35KPSfkv2FNpTjx
epFgPLnUekyWoXAjPRJlonaIncnOjOUapvZba+nj+4xVuePFgqfLGjHcsLyBg7AT
uzkitefRV9q5jWNAE0zRQ9yNy6aSnJYDq+j4EhO9zCjawoNy+/GcyuPds1CEXKmX
0Xs0ShGQE8RVxemp3pHOvuJXdtYztsQeiw/+w/w7rmvfTWKsByfzoAJzMnJkhAmI
sz/hxSz6MB9DVVPPFv1z9nBcbT0h8KbFMXNlLOPZfb8Y/Xql6nlA2Ud8LH2s2HyI
/YS1dIlIHd9hGj3y49T8y7KZva4OoJ51Yf8h8Hh7j8hcoahqaFcIWTT+muX+/xNS
txvc1QlZm0ZLuFwcZjsOGbQoWChERN+2dJf6uAVZwepT5/PDwOzWbLwdmfqVhtPk
A5lr76UhdnT7QDn3B/vcKjufsepgP0w1gwfQ8FTL4vn/wPw+VNBYrJyNgPL1qQ5C
jmK9enJjNg1akqnhoJlSI6taprSsiok3hY1s2pF97Q2Lq5QSJqJSEHQtqEZzlyS/
aLKODacSeKJcY2GnA5JVENa2Ow8xOWkQJQ9Z9tkQ22TytrLLN5Q=
=GJ0I
-----END PGP SIGNATURE-----

--Apple-Mail=_4FA3F1AF-F220-4E79-ABE0-8A161F55AB78--

--===============3649261534770271337==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3649261534770271337==--

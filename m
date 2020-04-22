Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id A48B31B4B70
	for <lists+cake@lfdr.de>; Wed, 22 Apr 2020 19:17:27 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 53E333CB37;
	Wed, 22 Apr 2020 13:17:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587575846;
	bh=i7Lg1pWaW+A6TvjmkzBBMYyR8+C4QWXBspfLj8B9dHk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aX3Wi4bGT77c3WF8i1DjgYIx3KTDauKbwDRB6JADUY1Ftubm+OfpyXJwQ31kJ4qYH
	 joYitnsMWukcFMBwm7+PnQ1oyWXbTNnXuog5KOb5vy65SO0FHW6lqcS6CurNKlCfEj
	 uuXIWRTlWCvmcLzAVY2xdI8XULYC1qYtscwvtIhxSzylFhhB5QF9IxvbSnF0NrkHx1
	 2hcDkdXarnUqa9zJwGE82ZGWlj6RtnB57cfs4rxYa7hQtbaMyND2+3BPeWwZZdEQT3
	 OsA0n3xYykS2MXlDtVT53xdCZ2D1yY7s/vSLYXiFZqQGfDLw5VyUx5b7+HTwoq3BIy
	 zaZfboOaJJ7rw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr30059.outbound.protection.outlook.com [40.107.3.59])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9D6153B29E
 for <cake@lists.bufferbloat.net>; Wed, 22 Apr 2020 13:17:24 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T/0I7LvO8oywFMOEoFvAVs1N6LRj8xC39wlMLNIXhPAwiG+Z26zYoWLnoL/yVto+hm0kNUNxHKGIqK1Ph3hapnjqYSw6dDJYqxL+4KzSwIOZYTA544C8G/SmDB/gqrAGUZ6nFrdRd+sQo346BPGEZ7x7xtr6pF9+g3RKJoyzfNwz4KbvHahN8pVuvv8LXYdG1oZteJKhrvvrXdA2LnKOsLK1uwmsq6gKLUTFB0b4yt4vK4m1DsBLu4v/tGKBVVoDJdzBc0+ZLWCL0DH/mvbjTBl1tdSwWsyBC1LOz+Jxq96Xl4ovhUc8UPrA5EA1iLn8Cbdr+/Dupfsty5fCzbweog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ut/bAn95+28Jgb5YMcpjxMUORHaWkTQ7zD/JWpiYadc=;
 b=PbYYKGvNKkE9hEW1qKyhIPFBg6ooni1dLfVpQ9h4t+JAIU2IkHWFCbJGrRlHbe8WQH7l7eLI0vuiJqi36JWzPT0Maem0UumckuWEGEmRjcTyc1ZLwyYxb5pxMN/WW7IHyUCTG4D5fXwWbfmsHXZcYS8OvaoKejPlCgE1V7DlHq74kpQzP7Kf3oUsklLAWha7AK6ruA6nmNpj2Cem8IW2/BsuzUuWBRjjVfKxhPHLX9gXAxXsFW7nxtfy65+Fs4oH2cHq1+o5Qt7pzs3QdmU/Ef76TEzbs44sNsw9f1rZfHmq3oJ7XHYDBCD7d+yu5ycvAvqS7nRTupZVRCZwbiP8RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ut/bAn95+28Jgb5YMcpjxMUORHaWkTQ7zD/JWpiYadc=;
 b=cfy6zsBbIeIgaJgiPMcFdjHOsLgCJTZkH0nnf2O0ZflTGrC0KAv16m+kClJ5S379p/zo1/+Zy3sxczkymSVb4Qc6oKMqa8bnDFjo2cNhwV9+P5DRmBQuHWdk/mV1JHhkAB5r9x9TsnV9QYo5wnGAJI0QZRFSV6qvjlHL+0TD1X4=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VI1PR03MB2957.eurprd03.prod.outlook.com (2603:10a6:802:33::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Wed, 22 Apr
 2020 17:17:22 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::9504:608e:409d:2b32%4]) with mapi id 15.20.2921.030; Wed, 22 Apr 2020
 17:17:21 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Dave Taht <dave.taht@gmail.com>
Thread-Topic: [Cake] DSCP ramblings
Thread-Index: AQHWGL7p7ln4Jr8QLkawg0kgaAkYhaiFUPyAgAABZoCAAA/iAA==
Date: Wed, 22 Apr 2020 17:17:21 +0000
Message-ID: <429C2CD6-5395-4E00-9A92-58932DD1D4EC@darbyshire-bryant.me.uk>
References: <F7A06AF9-12CF-42BB-8935-29F784CE882F@darbyshire-bryant.me.uk>
 <CAA93jw7bKq7hHvQdPGK-iMPwzzaFrTx3UHw=mZq1KO1D2ycDeQ@mail.gmail.com>
 <CAA93jw5JCj-RpYWCe440E4AL8_ATYwyYJ99LPyL7Z=fnpvtuuA@mail.gmail.com>
In-Reply-To: <CAA93jw5JCj-RpYWCe440E4AL8_ATYwyYJ99LPyL7Z=fnpvtuuA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.80.23.2.2)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kevin@darbyshire-bryant.me.uk; 
x-originating-ip: [2a02:c7f:1243:8e00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f34ced51-19ca-4c7c-0d4a-08d7e6e104dd
x-ms-traffictypediagnostic: VI1PR03MB2957:
x-microsoft-antispam-prvs: <VI1PR03MB29578CB5671DA7363C479A0DA5D20@VI1PR03MB2957.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:826;
x-forefront-prvs: 03818C953D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(136003)(376002)(396003)(366004)(346002)(39830400003)(2906002)(33656002)(4326008)(6486002)(86362001)(186003)(6916009)(6512007)(81156014)(8676002)(4744005)(76116006)(91956017)(8936002)(71200400001)(5660300002)(6506007)(53546011)(316002)(64756008)(66446008)(2616005)(66616009)(36756003)(99936003)(966005)(66556008)(66946007)(508600001)(66476007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 90FvCkrgfm1g3ZMLv8qh80I5CCAVbPgZaZW3hlElUscAnabQ9mamxt42Jtc/Tjj24o234NPQCGs44Pcai7O4I/5948BHLLnmKCQ8KYHp1Eqeu9g11AzurRSP/SePH3ZOBJ9ercfkDjXUzUjCAeeud+U8gRvbvk6s65wkurDos7WSsnq0meTWHT9/p3ohi3UuA5Ud/FpLEuNf/nqWFtMwG3HNArHblvQr28Qw3g8/fpnValfMS8TAr+US9VGnBRUt87dUbf/OVtDQUaLXL6vh78KzUoKCr1D/Mf3LJKAaublLeERJTr5VviwvlSBlRgC0A2di06TiFWUXSGC1RqXa2jqg2TteAr1bmNz803ToTS9wK9hIzT+MVvj9WyKGpCg8yTkc9ICr6+aEW4ca/qcoyJlGa7vVAN+Bf1qdRD/NToiaGblChPhDylAupC1Gtwi9o6pteI0gFrxckPaaDinyDCW3yXUEi/r6eGnnuyS4ZSNqtB83e1+N/NysCH0VDD3vyiQHJm/3qoj5F0KI/mRX7A==
x-ms-exchange-antispam-messagedata: b36MdEiidTJOrNjdXq4F5TUlXPGrrdbLVbEQTHPl6yZHfae1+1vJVt1NLT5eEi+R7dmvuUnelN/I7EKV4cxhBD9kTSf2/JrUfUPSG/TupNUlqH47mkLMg3/SKoNsJNpqMrxQ2bjYb4VHmuwL0thmtIlvxcH4hJpcgpwc9zIVbCKdquASCUgBGgXArCcI0fGx
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: f34ced51-19ca-4c7c-0d4a-08d7e6e104dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2020 17:17:21.8441 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dw2C8lWtKvSFxdASMyX5y1GxCSuTirV5bwr0fvQtFUMbsYR0kLqI2z1u7W4vczwpC7EfrKT6nZGq/ajNjDaKnbxmQeqYKUdzx5sbowfZm5E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB2957
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
Content-Type: multipart/mixed; boundary="===============1875702052960177699=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1875702052960177699==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_5C6CEBA9-076F-4B6E-B89D-26B413EEFD2F";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_5C6CEBA9-076F-4B6E-B89D-26B413EEFD2F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 22 Apr 2020, at 17:20, Dave Taht <dave.taht@gmail.com> wrote:
>=20
> and because of your I'm off building collectd because those graphs
> look so good. :)

Oh dear, sorry about that :-)  The collection bit =
https://github.com/ldir-EDB0/packages/commit/932bb4b022bdbf3ab0fa1e43842f7=
c94da7f046a
The display bit =
https://github.com/ldir-EDB0/luci/commit/a0a95da1703079887a85c4d9b6929e74d=
2c77a29

Don=E2=80=99t break it, or if you do, send fixes ;-)

The idea of using collectd_exec and hence a sh script was the quickest =
way of spinning something up.  It is inherently going to be heavier than =
a proper C based plugin/collector=E2=80=A6and beyond my skill/patience =
limits (You should have seen how many combinations of =E2=80=98*' & =
=E2=80=98&=E2=80=99 were involved in getting https-dns-proxy/lubcurl =
"static curl_socket_t opensocket_callback(void *clientp, curlsocktype =
purpose, struct curl_sockaddr *addr)  (void)setsockopt(sock, =
IPPROTO_IPV6, IP_TOS, (int *)clientp, sizeof(int));=E2=80=9D to work :-) =
)

Kevin




--Apple-Mail=_5C6CEBA9-076F-4B6E-B89D-26B413EEFD2F
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl6gfCAACgkQs6I4m53i
M0ouMRAAo755Nqe8KSVXMw+MM4O3f45Pg6CB5s8GvidodwpnAa5e9wmqBH2/qmQs
ENzdvnPbls64830yeSAcSlATTHihZsCVuqWFSyrnMJCmzJlB+ViO77JgCG8iO9kx
SpbHOejduf0obxyVUhQI2GmL2JM6ZKtf9ams8oqPFTAyR2PQ8fQ/Ulb/j5Pqgd5W
MyU/cEU4aCJJmLe71BIa1nU9DfwruhJKgaWkttme6tcfXwQ2MsDBaR4gb1uUytgF
UYuvYb7f6cE0QLy18MjojvWflayb1dltosgrgPhmqhrmyTAJa5QGUFzOk9p/FsJ3
lJzCtKvgncmldrWpI7Vcig94cCNObp4KbCkf15K2b9r41F1eTjSaPT00wautQ1DY
XGDglRACFARZP2TJ4tGpsBOZDWYsTmkPUrEWprM+YRM9ZGPXvulij7mnxHMdhl/8
uSQFgR5tzkd6UxsDc3TkW60iPZ00890m5YdLVfulb84ErtmYPITsa5av9DhxHEI+
N6akHR9L5UzfoL9lBepfet7wSElovQKKiz5H6mYCiRHZrcPBZPWp7Zrg6ErdFNyg
eJayavHBbwNlEUZmrh9d2L43n5EYTuIQKKEnVHOJWPmURMEqW+i/fj3Rte+fX1Ak
5mGp2C8Y9j2Ir5W5m7Z9/OIsLaMBbDH0NMliz25ytdX5Ai8weIc=
=QEZP
-----END PGP SIGNATURE-----

--Apple-Mail=_5C6CEBA9-076F-4B6E-B89D-26B413EEFD2F--

--===============1875702052960177699==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1875702052960177699==--

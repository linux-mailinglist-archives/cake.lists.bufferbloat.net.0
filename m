Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEC3332F2E
	for <lists+cake@lfdr.de>; Tue,  9 Mar 2021 20:41:44 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id B54E13CB40;
	Tue,  9 Mar 2021 14:41:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1615318902;
	bh=97pAmxgTcUWDezkCg78DOGqgr6jexDAU8CoKZg+nNXY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=UcSORqzwvSqpT9UWykrfB5RqaoNQHqVf4SRDBpZOcOIFxTRKf4c+bI0xbLmMDKqr8
	 PiL5Oij6OMMAX1mjrANcXKf5xOPySYct6CSZxD7RRQPcG/OmYqsOML3VdYrDaeAaf5
	 t42E6ynAknZsvtZRypWjYQDR4V3eZVU9VqyteyOgFZ+2zDNpOAEh0+HjHMR1N/udhI
	 MVoojqfo+NQE80QSnWTXaPsp9w4j2npNOQTgBkuA5DLg8l7AZLBOactfL9O+93t45v
	 PFrZUIxfAAYhUgNIlhbhn9dZppc8A1xdIIf6820p7X/Dq6OBio0ldFfXiPlqxT5pjc
	 RHZQMg1Mu4XzA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from tn-mailgw-04.telenor.no (tn-mailgw-04.telenor.no [153.110.76.7])
 (using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E612A3B29D
 for <cake@lists.bufferbloat.net>; Tue,  9 Mar 2021 02:35:40 -0500 (EST)
IronPort-SDR: yn+KATwSSEJfyX8IU35ZDq3vQh4MDKeIhNnqEuC9Yj6XYZCjJwkCDEr/jyDU2UxpLTtrl3Icvz
 f80b1NfJQDXCFaaYPxAbgJIkhuulNvCx8QNvdUMpQfDK/uZWaV93nvw5IqhxKbtmbnz+TpxAhQ
 gzcoFpoUVDG4j7RCYyadikHMSGPj2nOMjeSiyM30fJqyqvcF18JPKcUX5DpL8XhZdRZbsFBdoS
 PxMQd+imdG/PaVUo0BPvXsBQRNSklY2bZBAqhr0k5v9hK//wa+/6xw/1wHhLYdbsfE3iIzbU1Y
 Efc=
X-IronPort-AV: E=Sophos;i="5.81,234,1610409600"; d="scan'208,217";a="88878852"
Received: from tns-sko-24-208.corp.telenor.no ([10.179.59.76])
 by tn-mailgw-04.corp.telenor.no with ESMTP; 09 Mar 2021 07:35:39 +0000
Received: from TNS-SKO-24-211.corp.telenor.no (10.179.59.79) by
 TNS-SKO-24-208.corp.telenor.no (10.179.59.76) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Tue, 9 Mar 2021 08:35:39 +0100
Received: from TNS-SKO-24-202.corp.telenor.no (10.179.59.70) by
 TNS-SKO-24-211.corp.telenor.no (10.179.59.79) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Tue, 9 Mar 2021 08:35:39 +0100
Received: from outlook.telenor.no (10.179.127.59) by
 TNS-SKO-24-202.corp.telenor.no (10.179.59.70) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2 via Frontend Transport; Tue, 9 Mar 2021 08:35:39 +0100
Received: from pwpvn2209ex001.nxvp.net (10.149.139.134) by
 pwpvn2209ex001.nxvp.net (10.149.139.134) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Tue, 9 Mar 2021 08:35:38 +0100
Received: from pwpvn2209ex001.nxvp.net ([10.149.139.134]) by
 pwpvn2209ex001.nxvp.net ([10.149.139.134]) with mapi id 15.01.2176.009; Tue,
 9 Mar 2021 08:35:38 +0100
From: Taraldsen Erik <erik.taraldsen@telenor.no>
To: =?iso-8859-1?Q?Toke_H=F8iland-J=F8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Thread-Topic: STEAM tcp algo from CDN?
Thread-Index: AQHXFLaqJ/kn9wf41U6CiTMRpB5IxQ==
Date: Tue, 9 Mar 2021 07:35:38 +0000
Message-ID: <5407860ac65c4059838e7952ae162f9d@telenor.no>
Accept-Language: nb-NO, en-US
Content-Language: nb-NO
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.149.139.228]
x-tm-snts-smtp: C3E482843FE22EF67379ED0CEC45D0072635A104DB2B9F1FBB3258758DE4C7E62000:8
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 09 Mar 2021 14:41:41 -0500
Subject: [Cake] STEAM tcp algo from CDN?
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
Content-Type: multipart/mixed; boundary="===============7820634079922093851=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7820634079922093851==
Content-Language: nb-NO
Content-Type: multipart/alternative;
	boundary="_000_5407860ac65c4059838e7952ae162f9dtelenorno_"

--_000_5407860ac65c4059838e7952ae162f9dtelenorno_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Does anybody here know what tcp algo STEAM uses for download of games?


-Erik

--_000_5407860ac65c4059838e7952ae162f9dtelenorno_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Does anybody here know what tcp algo STEAM uses for download of games?&n=
bsp;&nbsp;</p>
<p><br>
</p>
<p>-Erik<br>
</p>
</div>
</body>
</html>

--_000_5407860ac65c4059838e7952ae162f9dtelenorno_--

--===============7820634079922093851==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7820634079922093851==--

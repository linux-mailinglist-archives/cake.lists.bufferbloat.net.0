Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B3986161422
	for <lists+cake@lfdr.de>; Mon, 17 Feb 2020 15:07:30 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 073E73CB39;
	Mon, 17 Feb 2020 09:07:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1581948449;
	bh=biv3Hoe/+ftAQbUw1bWNqiDE7gcA+N6pNgdk7wAPISA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=IwLoRqM4WJVt7M5v+Cv3A+gyXNc/HeHbyhcISumz8tfVDzqH/+3Vz5r1U43J60FIQ
	 yzqhloRl1s60rieOfd4ANVQFVlO07Extx6GCwzK6f2InrhF7WTsxO5RJKK7j5NY56a
	 vnEwRB0IfgylfGltXAnomB67Be7hwFa/Gk6pjAA/nsnCX7GpikXXzlrjGl9RXhH0Og
	 5OWFvqiRBu8CKnTB7xbCfeeUOAzhPLqU8VMYOev+pOKR1kRW0ol8VlGyCvoRsJOBm5
	 GRZb/32RABI57hzrHp0X9H9QHkRHw1yOiQIh4N6dLdVKCYRcRFIGpaNpuD7NJ+V10a
	 Qra1pDpSTecbw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from DS2.surfglobal.net (ds2.surfglobal.net [72.71.201.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0792A3CB35
 for <cake@lists.bufferbloat.net>; Mon, 17 Feb 2020 08:56:49 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
 by DS2.surfglobal.net (Postfix) with ESMTP id A669855C14A5
 for <cake@lists.bufferbloat.net>; Mon, 17 Feb 2020 08:56:49 -0500 (EST)
X-Virus-Scanned: Debian amavisd-new at ds2.surfglobal.net
Received: from DS2.surfglobal.net ([127.0.0.1])
 by localhost (ds2.surfglobal.net [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id gz-g8rZG-Pqb for <cake@lists.bufferbloat.net>;
 Mon, 17 Feb 2020 08:56:48 -0500 (EST)
Received: from Laptop.local.mail (ws1.surfglobal.net [72.71.201.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: michaelthompson@surfglobal.net)
 by DS2.surfglobal.net (Postfix) with ESMTPSA id BB5E855C1442
 for <cake@lists.bufferbloat.net>; Mon, 17 Feb 2020 08:56:35 -0500 (EST)
Date: Mon, 17 Feb 2020 08:56:33 -0500
From: Mike <mike@surfglobal.net>
To: cake@lists.bufferbloat.net
Message-ID: <etPan.5e4a9b91.58a6c5a1.1b7f@surfglobal.net>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 17 Feb 2020 09:07:27 -0500
Subject: [Cake] Large number of Flows
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
Content-Type: multipart/mixed; boundary="===============0288228751505201132=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0288228751505201132==
Content-Type: multipart/alternative; boundary="5e4a9b91_26bdbaa3_1b7f"

--5e4a9b91_26bdbaa3_1b7f
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Will cake support a large number of flows like over a thousand per linux =
box without any modifications. =C2=A0I did see that there was a qdisc iss=
ue for fq=5Fcodel on a large scale. =C2=A0We would be using linux kernel =
4.19 which has cake already in it. =C2=A0Any help or issues that might be=
 encountered in scaling would be appreciated.



Thanks
Mike Thompson


--5e4a9b91_26bdbaa3_1b7f
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html><head><style>body=7Bfont-family:Helvetica,Arial;font-size:13px=7D</=
style></head><body><div style=3D=22font-family:Helvetica,Arial;font-size:=
13px; ; =22>Will cake support a large number of flows like over a thousan=
d per linux box without any modifications. &nbsp;I did see that there was=
 a qdisc issue for fq=5Fcodel on a large scale. &nbsp;We would be using l=
inux kernel 4.19 which has cake already in it. &nbsp;Any help or issues t=
hat might be encountered in scaling would be appreciated.</div><div class=
=3D=22bloop=5Fcontainer=22><div class=3D=22bloop=5Fframe=22>  </div></div=
><br><div class=3D=22gmail=5Fsignature=22><b style=3D=22font-family: Helv=
eticaNeue; font-size: 14px;=22><br></b></div><div class=3D=22gmail=5Fsign=
ature=22><b style=3D=22font-family: HelveticaNeue; font-size: 14px;=22><b=
r></b></div><div class=3D=22gmail=5Fsignature=22><b style=3D=22font-famil=
y: HelveticaNeue; font-size: 14px;=22>Thanks<br>Mike Thompson</b><br styl=
e=3D=22font-family: HelveticaNeue; font-size: 14px;=22><br></div></body><=
/html>
--5e4a9b91_26bdbaa3_1b7f--


--===============0288228751505201132==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0288228751505201132==--


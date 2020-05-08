Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DF91CB632
	for <lists+cake@lfdr.de>; Fri,  8 May 2020 19:44:01 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 53CF83CB39;
	Fri,  8 May 2020 13:44:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588959840;
	bh=s+/nU0QVTX70vt45uoYFBd4Sf0s32RF+Kd9o24pfSIE=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=e+GJ1rjr+LRQuquIZq+1zUvsV1+8abX3XpJ8ZuoEd4rIXhhJkh1QhN7JEkct7PxUr
	 8OIRhlJUryuarsCdjwplkodXCdDE39qLPxe0TJMmnIBzML6EVJ4TPtghGwFXLSBLvc
	 H1d+jR2RIycGyzpOsu1s4vXLtpWqfZrfoW1x7Y1hnqrs5w6rXNnNcjcYd+LCEzwrJR
	 T5MZWmrbL2cgBa1U184/E1/I52MHBEYUC6twueEq/4J3TUvuRyn7K7h1jdvdT8ejQr
	 js83cJH44BUe9kI3kA5ixojPVWcuJ1mJmd2J2R5Ry9+kHE3FBuvtGKtNs1IdzNG11o
	 xEsVY7ngWikNA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp89.iad3a.emailsrvr.com (smtp89.iad3a.emailsrvr.com
 [173.203.187.89])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 44CC43B29E
 for <cake@lists.bufferbloat.net>; Fri,  8 May 2020 13:43:59 -0400 (EDT)
Received: from app4.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp4.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 090345460
 for <cake@lists.bufferbloat.net>; Fri,  8 May 2020 13:43:59 -0400 (EDT)
X-Sender-Id: dpreed@deepplum.com
Received: from app4.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140]) by 0.0.0.0:25 (trex/5.7.12);
 Fri, 08 May 2020 13:43:59 -0400
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app4.wa-webapps.iad3a (Postfix) with ESMTP id E883CE007B
 for <cake@lists.bufferbloat.net>; Fri,  8 May 2020 13:43:58 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Fri, 8 May 2020 13:43:58 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Fri, 8 May 2020 13:43:58 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Cake List" <cake@lists.bufferbloat.net>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <CAA93jw6xZRcUerJ8JuxjtjW2_C+wyAUKRtqDojPj6hLdg1w0Dg@mail.gmail.com>
References: <CAC8NkTBHv6_6u21bRu2BcEAW2X1Sio-JWvCYwQgLR2q-6eBgOA@mail.gmail.com> 
 <C24C4CCB-C30D-452A-9386-5AA533F11CEE@gmail.com> 
 <87wo5okhbo.fsf@toke.dk> 
 <CAC8NkTCYBokx0NedyuOKjhZqUMHXAc5tZtObTpdyjkvE4U_zUw@mail.gmail.com> 
 <A85845BB-010A-4F39-99F4-C6206F7FEA65@gmx.de> 
 <CAC8NkTBRWrhAQneAf6ZacTzWLYyM5TqX6jmD4-fafAD=7iPgfQ@mail.gmail.com> 
 <CAA93jw6xZRcUerJ8JuxjtjW2_C+wyAUKRtqDojPj6hLdg1w0Dg@mail.gmail.com>
Message-ID: <1588959838.949523142@apps.rackspace.com>
X-Mailer: webmail/17.3.10-RC
X-Classification-ID: 302c0a0b-7e6f-4870-a72b-adcde29f15ff-1-1
Subject: [Cake] Curious regarding Cake sensitivity to hardware queue depth
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
Content-Type: multipart/mixed; boundary="===============9097028891638281946=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============9097028891638281946==
Content-Type: multipart/alternative;boundary="----=_20200508134358000000_60338"

------=_20200508134358000000_60338
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AThe following question occurred to me. It's empirical, not theoretical (=
though the theory might be interesting, it's not clear that creating a theo=
retical model that matches real hardware is realistic.=0A =0AI'm a big fan =
of Cake, and recommend it to everyone that can deploy it on the router clos=
est to the bottleneck link. But given its complexity (and interactions with=
 the complex control loops in end-to-end TCP, including things like minimum=
 cwnd and the number of TCP sessions that are concurrent, etc), it's hard f=
or me to guess the answer to certain issues that may come up in practice le=
ss commonly.=0A =0AHere's an example. What if there is a FIFO queue that ca=
n build up queueing delay to a certain extent between Cake and the bottlene=
ck. In a badly setup DOCSIS 2 system, this can happen due to other traffic =
into the DOCSIS head-end. Cake's basic assumption that by setting the max b=
itrate on the uplink to slightly less than the claimed "up to" capacity is =
not fully realistic in such situations - the queue can build up in the path=
 to the head-end.=0A =0AThe same can happen in a WiFi situation on the airl=
ink to the AP from the STA, if you were to run Cake with a setting for band=
width that is set much lower than the achievable shared airlink bitrate. An=
d on the AP side, the path to STA's is often forced to go through a FIFO ei=
ther in the hardware or in the proprietary driver that can get pretty large=
 (though adding 20 msec. might not be problematic in most user-interaction =
cases).=0A =0ABut it would be interesting to assess whether inserting a FIF=
O delay between Cake and the actual NIC that could be cranked up in delay c=
auses surprising results.=0A =0AA "surprise" would be that either throughpu=
t or lag-under-load wih various traffic mixes (bulk traffic, in particular)=
 would do something other than the simple thing of staying with the same th=
roughput and adding the FIFO delay into the lag under load.=0A =0AAnyone do=
ne such an exploration?=0A =0AOne of the reasons I wonder is because I wond=
ered whether just using Cake to moderate the flows from an AP to STAs in an=
 access point would be good, even if the hardware doesn't allow one to shor=
ten the queue it builds up inside. Obviously doing a "distributed Cake" amo=
ng all the STAs trying to send to an AP would be not necessarily good, beca=
use the STAs can't cooperate efficiently because they have to go through th=
e AP and get the packets reflected, encountering all kinds of delay at a sc=
ale that would make it hard to coordinate the flow towards the AP. (that's =
why 802.11ax is based on AP polling rather than LBT arbitration, but even i=
n 802.11ax, the polling doesn't provide any information to the STA's that t=
hey could use to manage their flows.).=0A =0APS: Make WiFi fast really need=
s to address 802.11ax (WiFi6), which I suspect will be *worse* than WiFi in=
 its congestion interactions with TCP and QUIC on UDP. Sad if a "premium" u=
pgrade becomes a downgrade because of congestion mismanagement. Polling hel=
ps increase usable airtime, but it doesn't help TCP and QUIC moderate their=
 contributions to creating bufferbloated connections.
------=_20200508134358000000_60338
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"3"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 12pt; overflow-wrap: break-word;">The following question=
 occurred to me. It's empirical, not theoretical (though the theory might b=
e interesting, it's not clear that creating a theoretical model that matche=
s real hardware is realistic.</p>=0A<p style=3D"margin:0;padding:0;font-fam=
ily: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p st=
yle=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wra=
p: break-word;">I'm a big fan of Cake, and recommend it to everyone that ca=
n deploy it on the router closest to the bottleneck link. But given its com=
plexity (and interactions with the complex control loops in end-to-end TCP,=
 including things like minimum cwnd and the number of TCP sessions that are=
 concurrent, etc), it's hard for me to guess the answer to certain issues t=
hat may come up in practice less commonly.</p>=0A<p style=3D"margin:0;paddi=
ng:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp=
;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt;=
 overflow-wrap: break-word;">Here's an example. What if there is a FIFO que=
ue that can build up queueing delay to a certain extent between Cake and th=
e bottleneck. In a badly setup DOCSIS 2 system, this can happen due to othe=
r traffic into the DOCSIS head-end. Cake's basic assumption that by setting=
 the max bitrate on the uplink to slightly less than the claimed "up to" ca=
pacity is not fully realistic in such situations - the queue can build up i=
n the path to the head-end.</p>=0A<p style=3D"margin:0;padding:0;font-famil=
y: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p styl=
e=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap:=
 break-word;">The same can happen in a WiFi situation on the airlink to the=
 AP from the STA, if you were to run Cake with a setting for bandwidth that=
 is set much lower than the achievable shared airlink bitrate. And on the A=
P side, the path to STA's is often forced to go through a FIFO either in th=
e hardware or in the proprietary driver that can get pretty large (though a=
dding 20 msec. might not be problematic in most user-interaction cases).</p=
>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; ove=
rflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-f=
amily: arial; font-size: 12pt; overflow-wrap: break-word;">But it would be =
interesting to assess whether inserting a FIFO delay between Cake and the a=
ctual NIC that could be cranked up in delay causes surprising results.</p>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; over=
flow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-fa=
mily: arial; font-size: 12pt; overflow-wrap: break-word;">A "surprise" woul=
d be that either throughput or lag-under-load wih various traffic mixes (bu=
lk traffic, in particular) would do something other than the simple thing o=
f staying with the same throughput and adding the FIFO delay into the lag u=
nder load.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-si=
ze: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;pad=
ding:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">Any=
one done such an exploration?</p>=0A<p style=3D"margin:0;padding:0;font-fam=
ily: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p st=
yle=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wra=
p: break-word;">One of the reasons I wonder is because I wondered whether j=
ust using Cake to moderate the flows from an AP to STAs in an access point =
would be good, even if the hardware doesn't allow one to shorten the queue =
it builds up inside. Obviously doing a "distributed Cake" among all the STA=
s trying to send to an AP would be not necessarily good, because the STAs c=
an't cooperate efficiently because they have to go through the AP and get t=
he packets reflected, encountering all kinds of delay at a scale that would=
 make it hard to coordinate the flow towards the AP. (that's why 802.11ax i=
s based on AP polling rather than LBT arbitration, but even in 802.11ax, th=
e polling doesn't provide any information to the STA's that they could use =
to manage their flows.).</p>=0A<p style=3D"margin:0;padding:0;font-family: =
arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=
=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: =
break-word;">PS: Make WiFi fast really needs to address 802.11ax (WiFi6), w=
hich I suspect will be *worse* than WiFi in its congestion interactions wit=
h TCP and QUIC on UDP. Sad if a "premium" upgrade becomes a downgrade becau=
se of congestion mismanagement. Polling helps increase usable airtime, but =
it doesn't help TCP and QUIC moderate their contributions to creating buffe=
rbloated connections.</p></font>
------=_20200508134358000000_60338--


--===============9097028891638281946==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============9097028891638281946==--


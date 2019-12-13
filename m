Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A5411E4D1
	for <lists+cake@lfdr.de>; Fri, 13 Dec 2019 14:43:34 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6E2D13CB4C;
	Fri, 13 Dec 2019 08:43:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1576244612;
	bh=UtoRBkLmZKLtUwEoGYSYfRkmT5/KCPIC+9gwPFejK1c=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=LWHxXvcZMErnxsIbghXm9bRl7+LCyAWlIsCenET6nY/gZGTXx08snS59dRa+ci6ov
	 iegyvIEB9BIm8Y/7OAcCvwFQU2jlCvm0ppFsW8rZYPJmA1HSq5BlG7ITVDmH7nptgH
	 tCHCdxugY/8A8rC3o2R+t8Kx8Kl3NIAzL/wdsmB+5coYbBSaBYnjq/a0FcyEfeo8K9
	 /mMTcL/XeNKiUYq0RtAUdyowLiDc+48vD0Rde4LfY3cqT0Zu9kxK5WBLsBie9Gjvn8
	 ggKUZrAE4/k6NPuDHzbq4ZAYWYtPSSx/VHY1adPg5dLZPNc77CQ+8Xah1F++JofRUO
	 Ybi5vooNxFe/g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from vps.slashdirt.org (vps.slashdirt.org [144.91.108.218])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 900C33CB47
 for <cake@lists.bufferbloat.net>; Fri, 13 Dec 2019 08:43:30 -0500 (EST)
Received: from mail.zigoo.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 8374E603EA
 for <cake@lists.bufferbloat.net>; Fri, 13 Dec 2019 14:43:29 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 8374E603EA
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1576244609; bh=Q6CEMALZbs7jbbIZi0NeYYoHNtq9vGobFbOsaL+jdlY=;
 h=Date:From:Subject:To:From;
 b=LBjv10JIOZz4EeyNT0iTrNNhOH1tSipv23rYUPpXF7kI8GaIAaCy+WeisMs83KVJD
 NvZnJfYlqZkiqpZRjccAI3lzaAWP527TZfw9YtNafVYrc9EUR1YSsNmmAGwYQjj5sK
 y9SbRjjf+4UnCb+KAAVN87ootXcFY4uJYe19jNsk=
MIME-Version: 1.0
Date: Fri, 13 Dec 2019 13:43:29 +0000
X-Mailer: RainLoop/1.13.0
From: "Thibaut" <hacks@slashdirt.org>
Message-ID: <1d359153abfc413b4f61c647437427d6@slashdirt.org>
To: cake@lists.bufferbloat.net
Subject: [Cake] Trouble with CAKE
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
Content-Type: multipart/mixed; boundary="===============0332657502205083016=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>


--===============0332657502205083016==
Content-Type: multipart/alternative;
 boundary="--=_RainLoop_603_178428716.1576244609"


----=_RainLoop_603_178428716.1576244609
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi list,=0A=0AI've been using CAKE on my DSL-connected Linux router for t=
he last few years, and it worked well until very recently. Two things hap=
pened:=0A=0A1) My ISP (French "Free") switched my DSLAM to native IPv6, w=
hich for the time being means that I had to revert to using their set-top=
-box (Freebox) instead of the VDSL2 model I was using in bridge mode unti=
l then (CAKE in "bridged-ptm ether-vlan" mode)=0A2) I upgraded my router =
from 3.16 (Devuan Jessie) to 4.9 (Devuan ASCII)=0A=0ASince then, no matte=
r which setup I use, I cannot get CAKE to work as intended. Specifically,=
 any long-standing best effort stream (such as a remote rsync) will be th=
rottled to a near grinding halt even though there is no other significant=
 traffic going on. Some random bursts can be seen (with iftop) but nothin=
g ever gets close to half the maximum bandwidth. This is notably affectin=
g the OpenWRT buildbots I'm hosting on this link.=0A=0AIn details:=0A=0A$=
 uname -a=0ALinux rapid-ts1 4.9.0-11-686 #1 SMP Debian 4.9.189-3+deb9u2 (=
2019-11-11) i686 GNU/Linux=0A=0ACake commit: 183b320 RFC 8622 diffserv3, =
4 & 8 LE PHB support=0A=0Acake setup on the wan iface: bandwidth 1Mbit di=
ffserv3 dual-srchost nat nowash ack-filter split-gso bridged-vcmux no-sce=
=0Athe available ATM uplink bandwith is 1.2Mbps, I tried going as low as =
700kbps, disabling ack-filter and setting "conservative" to see if it wou=
ld make a difference, it wouldn't in any significant way: the upload woul=
d still be severely throttled. I also tried disabling the ingress leg to =
get that out of the equation: also no difference.=0A=0AAs I broke rule #1=
 of any setup upgrade (by changing both the link - VDSL to ADSL - and the=
 running kernel), I can't tell for sure where the fault lies; however I m=
ust add something about the "native IPv6 DSLAM" bit:=0A=0AFree uses map-e=
/map-t, i.e. ipip6 tunnels on its native v6 DSLAMs. The Freebox still off=
ers a public IPv4 to the connected router, but inside the Freebox there i=
s an ipip6 tunnel setup to encapsulate the IPv4 traffic into IPv6, a tunn=
el over which I have no control. I wonder if this encapsulation and its a=
ssociated overhead could be throwing CAKE computations off? FWIW, my rout=
er now operates in dual-stack mode, with both a public IPv4 and a public =
IPv6 (although for the time being my LAN remains IPv4 only).=0A=0AI haven=
't (yet) found a way to connect directly to the DSLAM without the Freebox=
 (using my VDSL modem as I did before), so I can't get around this partic=
ular blackbox.=0A=0AI hope this provides enough detail, I'm happy to expa=
nd as needed: I would really want my CAKE back :)=0A=0ACheers,=0AThibaut

----=_RainLoop_603_178428716.1576244609
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><meta http-equiv=3D"Content-Type" content=3D"t=
ext/html; charset=3Dutf-8" /></head><body><div data-html-editor-font-wrap=
per=3D"true" style=3D"font-family: arial, sans-serif; font-size: 13px;">H=
i list,<br><br>I've been using CAKE on my DSL-connected Linux router for =
the last few years, and it worked well until very recently. Two things ha=
ppened:<br><br>1) My ISP (French "Free") switched my DSLAM to native IPv6=
, which for the time being means that I had to revert to using their set-=
top-box (Freebox) instead of the VDSL2 model I was using in bridge mode u=
ntil then (CAKE in "bridged-ptm ether-vlan" mode)<br>2) I upgraded my rou=
ter from 3.16 (Devuan Jessie) to 4.9 (Devuan ASCII)<br><br>Since then, no=
 matter which setup I use, I cannot get CAKE to work as intended. Specifi=
cally, any long-standing best effort stream (such as a remote rsync) will=
 be throttled to a near grinding halt even though there is no other signi=
ficant traffic going on. Some random bursts can be seen (with iftop) but =
nothing ever gets close to half the maximum bandwidth. This is notably af=
fecting the OpenWRT buildbots I'm hosting on this link.<br><br>In details=
:<br><br>$ uname -a<br>Linux rapid-ts1 4.9.0-11-686 #1 SMP Debian 4.9.189=
-3+deb9u2 (2019-11-11) i686 GNU/Linux<br><br><signature></signature>Cake =
commit: 183b320 RFC 8622 diffserv3, 4 &amp; 8 LE PHB support<br><br><sign=
ature></signature>cake setup on the wan iface: bandwidth 1Mbit diffserv3 =
dual-srchost nat nowash ack-filter split-gso bridged-vcmux no-sce<br>the =
available ATM uplink bandwith is 1.2Mbps, I tried going as low as 700kbps=
, disabling ack-filter and setting "conservative" to see if it would make=
 a difference, it wouldn't in any significant way: the upload would still=
 be severely throttled. I also tried disabling the ingress leg to get tha=
t out of the equation: also no difference.<br><br>As I broke rule #1 of a=
ny setup upgrade (by changing both the link - VDSL to ADSL - and the runn=
ing kernel), I can't tell for sure where the fault lies; however I must a=
dd something about the "native IPv6 DSLAM" bit:<br><br>Free uses map-e/ma=
p-t, i.e. ipip6 tunnels on its native v6 DSLAMs. The Freebox still offers=
 a public IPv4 to the connected router, but inside the Freebox there is a=
n ipip6 tunnel setup to encapsulate the IPv4 traffic into IPv6, a tunnel =
over which I have no control. I wonder if this encapsulation and its asso=
ciated overhead could be throwing CAKE computations off? FWIW, my router =
now operates in dual-stack mode, with both a public IPv4 and a public IPv=
6 (although for the time being my LAN remains IPv4 only).<br><br>I haven'=
t (yet) found a way to connect directly to the DSLAM without the Freebox =
(using my VDSL modem as I did before), so I can't get around this particu=
lar blackbox.<br><br>I hope this provides enough detail, I'm happy to exp=
and as needed: I would really want my CAKE back :)<br><br>Cheers,<br>Thib=
aut</div></body></html>

----=_RainLoop_603_178428716.1576244609--

--===============0332657502205083016==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0332657502205083016==--

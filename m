Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F48D32DB4A
	for <lists+cake@lfdr.de>; Thu,  4 Mar 2021 21:44:47 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9BF2B3CB38;
	Thu,  4 Mar 2021 15:44:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614890685;
	bh=OY965HLhhWaNooy4ZT9AcCsMDxqWw6U2aCSLux2i4iY=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=fvTCChGFVGX5qrX8teRZbQ+fKLRgfTmn4nVCeDNEEl5LC+UCpgF/oCU5G+FonWqiT
	 KxAqgtCH2Fx0SNzun2WgX9lcMqfn+vBmGktAcmhxeDYqlAASqxa6HkguK0th+bIeFH
	 uQnWXbrnKCB2VOFhOitrKw0tLmhxN3edsJleLFeEYHQcklRidzQLKYUS1Zf9iaAH31
	 rjhFX2kGM/IAk2Kh4oqHssjRLYhluo+VAfKW8WG+Sfv3nzOT4dLS3cEiZg+z+ST+B5
	 8L067Ge9TTS5UWJfMnX5IU8BEaxVBMU/OWQNPeVltys61k8rl8dL7KnJBiKeJgIgqw
	 AnV887lXBWiPw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com
 [IPv6:2607:f8b0:4864:20::d35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3EF5D3B29E
 for <cake@lists.bufferbloat.net>; Thu,  4 Mar 2021 15:44:44 -0500 (EST)
Received: by mail-io1-xd35.google.com with SMTP id f20so31265261ioo.10
 for <cake@lists.bufferbloat.net>; Thu, 04 Mar 2021 12:44:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=gCmV7wncINezFKEOfPyOHDJIn12+4KC++GqWSi1EPl8=;
 b=BHzG4OfZfxh5JWnE1lpv9CqfCTqw24DAlg8Xp7asVROihgmbFuhw942c94TGK9AYGa
 FwTE6TTEolPqcaxYlyFTYllqfbBau4T/3ZtjoBMrCK181lA4/hlwDGjdTbJK5Yk81221
 Va8HbDwFWGNhs/exLRf9dzUkgxDiqD1w4aa2qEhepL24tfw2yLfevONbcjK8n5YA1NRz
 xjEpZ+kU+hCtanLlqbxozpLmw4nZzRYzl0FZtyBmcBNsE17uhMcCwk6HYcVcy+oZ7HIa
 4umVfAimLErOXgDnCk1q9bBWQjpD4xKU0MXHcrLdFS/ioWPv+6M65rewv6P1872Q7ecB
 gCHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=gCmV7wncINezFKEOfPyOHDJIn12+4KC++GqWSi1EPl8=;
 b=UGwsCgyXvgaRHFM4cl9yBUr/djSy3W9Q4lx9xWkWfs4vl5kUJvA60iwKd2SafwpzAd
 +2Op77KOO/IRfvm65mIB2jaBMHI31+zoiVc2FUL3l4bDmdepkBr6K0Ejw+Qtx5sxy8sW
 ZYTdmaNdUNwiGE/FE4pffGUfP24GIeMeHb83v1cD3gcHKdqSEryqgepF2yLD6ftbx2Cj
 oSY70G09mTvHs0HjlCO6w9M+ldqiays+yeY44OkPuMuUnHmBUvPa6kEiQu1bHhwf8kN6
 vjoPWy24IB8rt3efAayxXnw55eigq2xzQqsWZ/cooSZ2bM0vru0lPDTz6Sm8l5Fbbcnt
 8f9g==
X-Gm-Message-State: AOAM531OtVYqy5yFczaHPajJjaJfn6Thq6QuGZNEWglFxu5ZB2FwpBzx
 TNwQTjkWz5qXL6vd4Urafbhca1KpGUrvinCLEK6isdRV5y1aww==
X-Google-Smtp-Source: ABdhPJwF3bTjsUH7dwW3Ccx3CFgSoN4VVr3fsSMrhisCZPubp/nco1DtAQkwxmhIKlBTrhwGg7xizs3k1FyASSw0xBQ=
X-Received: by 2002:a02:ca13:: with SMTP id i19mr6064755jak.47.1614890683174; 
 Thu, 04 Mar 2021 12:44:43 -0800 (PST)
MIME-Version: 1.0
From: Gustavo Lapido Loureiro <gustavo.lapido@gmail.com>
Date: Thu, 4 Mar 2021 17:44:31 -0300
Message-ID: <CACvp_d_jLCgsStOH79kO6oSA7qeZ948ANfcm-A=NeuaXBVO80Q@mail.gmail.com>
To: cake@lists.bufferbloat.net
Subject: [Cake] Need help troubleshooting cake
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
Content-Type: multipart/mixed; boundary="===============9031513552307796276=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============9031513552307796276==
Content-Type: multipart/alternative; boundary="0000000000008591a805bcbc099c"

--0000000000008591a805bcbc099c
Content-Type: text/plain; charset="UTF-8"

Hello, new member here.
First, thank you all involved in making this great piece of software, which
I have already experienced without issues during a couple of months.
Back then, it was on Openwrt, in a TP-LINK Archer C-7 router, bandwidth
capped to 60 Mbps (on the device's limits, but still making Internet usage
much smoother to all users).
Then I moved the router to a debian 10 Celeron J1900 mini-ITX, 4 GB of RAM,
two entry level Gigabit cards.
So far I couldn't get the stable A's in dslreports test I was getting with
the previous setup.
The point is that my Internet has been upgraded from 60 Mbps to 240/20
Mbps. SInce most, if not all, devices are still 100 Mbps, I'm currently
capping cake at 85/18.
I basically "transported" the cake settings from Openwrt to debian,
basically adjusting the speed limits.
I would like to know where I start troubleshooting this, to help identify
what is causing bufferbloat on this new setup.

Follow cake settings, then tc, then network hardware info

*CAKE*

# Uplink and Downlink values are in kbps
UPLINK=17500
#DOWNLINK=216000
DOWNLINK=90000

# SQM recipe to use. For more information, see /usr/lib/sqm/*.help
SCRIPT=piece_of_cake.qos

# Optional/advanced config

ENABLED=1
QDISC=cake

#LLAM=tc_stab
LINKLAYER=ethernet
OVERHEAD=22
#STAB_MTU=2047
#STAB_TSIZE=512
#STAB_MPU=0

#ILIMIT=
#ELIMIT=
#ITARGET=
#ETARGET=

# ECN ingress resp. egress. Values are ECN or NOECN.
IECN=ECN
EECN=NOECN

# Extra qdisc options ingress resp. egress
IQDISC_OPTS="nat dual-dsthost"
EQDISC_OPTS="nat dual-srchost ack-filter"

# CoDel target
#TARGET=5ms

#ZERO_DSCP_INGRESS=1
#IGNORE_DSCP_INGRESS=1

*TC SETTINGS:*

qdisc noqueue 0: dev lo root refcnt 2
qdisc pfifo_fast 0: dev enp2s0 root refcnt 2 bands 3 priomap  1 2 2 2 1 2 0
0 1 1 1 1 1 1 1 1
qdisc cake 801b: dev enp3s0 root refcnt 2 bandwidth 17500Kbit besteffort
dual-srchost nat nowash ack-filter split-gso rtt 100.0ms noatm overhead 22
qdisc ingress ffff: dev enp3s0 parent ffff:fff1 ----------------
qdisc cake 801c: dev ifb4enp3s0 root refcnt 2 bandwidth 90Mbit besteffort
dual-dsthost nat wash no-ack-filter split-gso rtt 100.0ms noatm overhead 22

*NETWORK HARDWARE:*

SCSI
  *-network
       description: Ethernet interface
       product: RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller
       vendor: Realtek Semiconductor Co., Ltd.
       physical id: 0
       bus info: pci@0000:02:00.0
       logical name: enp2s0
       version: 06
       serial: c4:e9:84:00:1d:7b
       size: 1Gbit/s
       capacity: 1Gbit/s
       width: 64 bits
       clock: 33MHz
       capabilities: pm msi pciexpress msix vpd bus_master cap_list
ethernet physical tp mii 10bt 10bt-fd 100bt 100bt-fd 1000bt 1000bt-fd
autonegotiation
       configuration: autonegotiation=on broadcast=yes driver=r8169
duplex=full firmware=rtl_nic/rtl8168e-2.fw ip=192.168.1.1 latency=0
link=yes multicast=yes port=MII speed=1Gbit/s
       resources: irq:17 ioport:e000(size=256) memory:d0704000-d0704fff
memory:d0700000-d0703fff
  *-network
       description: Ethernet interface
       product: RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller
       vendor: Realtek Semiconductor Co., Ltd.
       physical id: 0
       bus info: pci@0000:03:00.0
       logical name: enp3s0
       version: 0c
       serial: 44:8a:5b:94:96:37
       size: 1Gbit/s
       capacity: 1Gbit/s
       width: 64 bits
       clock: 33MHz
       capabilities: pm msi pciexpress msix vpd bus_master cap_list
ethernet physical tp aui bnc mii fibre 10bt 10bt-fd 100bt 100bt-fd
1000bt-fd autonegotiation
       configuration: autonegotiation=on broadcast=yes driver=r8169
duplex=full firmware=rtl8168g-2_0.0.1 02/06/13 ip=179.210.1.62 latency=0
link=yes multicast=yes port=MII speed=1Gbit/s
       resources: irq:18 ioport:d000(size=256) memory:d0604000-d0604fff
memory:d0600000-d0603fff
  *-network:0
       description: Ethernet interface
       physical id: 1
       logical name: ifb4enp3s0
       serial: 76:6b:66:3c:6d:e9
       capabilities: ethernet physical
       configuration: broadcast=yes
  *-network:1 DISABLED
       description: Ethernet interface
       physical id: 2
       logical name: ifb1
       serial: 02:9e:3d:12:6e:16
       capabilities: ethernet physical
       configuration: broadcast=yes
  *-network:2 DISABLED
       description: Ethernet interface
       physical id: 3
       logical name: ifb0
       serial: 32:fe:93:2e:3a:1d
       capabilities: ethernet physical
       configuration: broadcast=yes

--0000000000008591a805bcbc099c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello, new member here.</div><div>First, thank you al=
l involved in making this great piece of software, which I have already exp=
erienced without issues during a couple of months.</div><div>Back then, it =
was on Openwrt, in a TP-LINK Archer C-7 router, bandwidth capped to 60 Mbps=
 (on the device&#39;s limits, but still making Internet usage much smoother=
 to all users).</div><div>Then I moved the router to a debian 10 Celeron J1=
900 mini-ITX, 4 GB of RAM, two entry level Gigabit cards.</div><div>So far =
I couldn&#39;t get the stable A&#39;s in dslreports test I was getting with=
 the previous setup.</div><div>The point is that my Internet has been upgra=
ded from 60 Mbps to 240/20 Mbps. SInce most, if not all, devices are still =
100 Mbps, I&#39;m currently capping cake at 85/18.</div><div>I basically &q=
uot;transported&quot; the cake settings from Openwrt to debian, basically a=
djusting the speed limits.</div><div>I would like to know where I start tro=
ubleshooting this, to help identify what is causing bufferbloat on this new=
 setup.</div><div><br></div><div>Follow cake settings, then tc, then networ=
k hardware info<br></div><div><br></div><div><b>CAKE</b></div><div><br></di=
v><div># Uplink and Downlink values are in kbps<br>UPLINK=3D17500<br>#DOWNL=
INK=3D216000<br>DOWNLINK=3D90000<br><br># SQM recipe to use. For more infor=
mation, see /usr/lib/sqm/*.help<br>SCRIPT=3Dpiece_of_cake.qos<br><br># Opti=
onal/advanced config<br><br>ENABLED=3D1<br>QDISC=3Dcake<br><br>#LLAM=3Dtc_s=
tab<br>LINKLAYER=3Dethernet<br>OVERHEAD=3D22<br>#STAB_MTU=3D2047<br>#STAB_T=
SIZE=3D512<br>#STAB_MPU=3D0<br><br>#ILIMIT=3D<br>#ELIMIT=3D<br>#ITARGET=3D<=
br>#ETARGET=3D<br><br># ECN ingress resp. egress. Values are ECN or NOECN.<=
br>IECN=3DECN<br>EECN=3DNOECN<br><br># Extra qdisc options ingress resp. eg=
ress<br>IQDISC_OPTS=3D&quot;nat dual-dsthost&quot;<br>EQDISC_OPTS=3D&quot;n=
at dual-srchost ack-filter&quot;<br><br># CoDel target<br>#TARGET=3D5ms<br>=
<br>#ZERO_DSCP_INGRESS=3D1<br>#IGNORE_DSCP_INGRESS=3D1</div><div><br></div>=
<div><b>TC SETTINGS:</b><br></div><div><br></div><div>qdisc noqueue 0: dev =
lo root refcnt 2 <br>qdisc pfifo_fast 0: dev enp2s0 root refcnt 2 bands 3 p=
riomap =C2=A01 2 2 2 1 2 0 0 1 1 1 1 1 1 1 1<br>qdisc cake 801b: dev enp3s0=
 root refcnt 2 bandwidth 17500Kbit besteffort dual-srchost nat nowash ack-f=
ilter split-gso rtt 100.0ms noatm overhead 22 <br>qdisc ingress ffff: dev e=
np3s0 parent ffff:fff1 ---------------- <br>qdisc cake 801c: dev ifb4enp3s0=
 root refcnt 2 bandwidth 90Mbit besteffort dual-dsthost nat wash no-ack-fil=
ter split-gso rtt 100.0ms noatm overhead 22 <br></div><div><br></div><div><=
b>NETWORK HARDWARE:</b></div><div><br></div><div>SCSI =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=C2=A0 *-=
network =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0descripti=
on: Ethernet interface<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0product: RTL8111/8168/=
8411 PCI Express Gigabit Ethernet Controller<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
vendor: Realtek Semiconductor Co., Ltd.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0physi=
cal id: 0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0bus info: pci@0000:02:00.0<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0logical name: enp2s0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
version: 06<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0serial: c4:e9:84:00:1d:7b<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0size: 1Gbit/s<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0capacit=
y: 1Gbit/s<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0width: 64 bits<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0clock: 33MHz<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0capabilities: pm ms=
i pciexpress msix vpd bus_master cap_list ethernet physical tp mii 10bt 10b=
t-fd 100bt 100bt-fd 1000bt 1000bt-fd autonegotiation<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0configuration: autonegotiation=3Don broadcast=3Dyes driver=3Dr816=
9 duplex=3Dfull firmware=3Drtl_nic/rtl8168e-2.fw ip=3D192.168.1.1 latency=
=3D0 link=3Dyes multicast=3Dyes port=3DMII speed=3D1Gbit/s<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0resources: irq:17 ioport:e000(size=3D256) memory:d0704000-d07=
04fff memory:d0700000-d0703fff<br>=C2=A0 *-network<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0description: Ethernet interface<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0product=
: RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0vendor: Realtek Semiconductor Co., Ltd.<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0physical id: 0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0bus info: pci@000=
0:03:00.0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0logical name: enp3s0<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0version: 0c<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0serial: 44:8a:5b=
:94:96:37<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0size: 1Gbit/s<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0capacity: 1Gbit/s<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0width: 64 bits<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0clock: 33MHz<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0capa=
bilities: pm msi pciexpress msix vpd bus_master cap_list ethernet physical =
tp aui bnc mii fibre 10bt 10bt-fd 100bt 100bt-fd 1000bt-fd autonegotiation<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0configuration: autonegotiation=3Don broadcast=
=3Dyes driver=3Dr8169 duplex=3Dfull firmware=3Drtl8168g-2_0.0.1 02/06/13 ip=
=3D179.210.1.62 latency=3D0 link=3Dyes multicast=3Dyes port=3DMII speed=3D1=
Gbit/s<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0resources: irq:18 ioport:d000(size=3D2=
56) memory:d0604000-d0604fff memory:d0600000-d0603fff<br>=C2=A0 *-network:0=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0description: Ethernet interface<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0physical id: 1<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0logical na=
me: ifb4enp3s0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0serial: 76:6b:66:3c:6d:e9<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0capabilities: ethernet physical<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0configuration: broadcast=3Dyes<br>=C2=A0 *-network:1 DISABLED=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0description: Ethernet interface<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0physical id: 2<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0logical na=
me: ifb1<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0serial: 02:9e:3d:12:6e:16<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0capabilities: ethernet physical<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0configuration: broadcast=3Dyes<br>=C2=A0 *-network:2 DISABLED<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0description: Ethernet interface<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0physical id: 3<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0logical name: ifb=
0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0serial: 32:fe:93:2e:3a:1d<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0capabilities: ethernet physical<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
configuration: broadcast=3Dyes<br></div></div>

--0000000000008591a805bcbc099c--

--===============9031513552307796276==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============9031513552307796276==--

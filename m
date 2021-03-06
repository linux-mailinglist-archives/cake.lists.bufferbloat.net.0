Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D5632FC59
	for <lists+cake@lfdr.de>; Sat,  6 Mar 2021 18:56:30 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 164B63CB38;
	Sat,  6 Mar 2021 12:56:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1615053389;
	bh=UN4EfZSH6+ovjuX91OPBuhP8c5LsUOZCYU9YSopK7XE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HuyQnv/0Leo8rCnij46ZKMgKfIMIh/WlshNpVKyd6XvsoWhEaZDQYo9nn4H20P2HK
	 HGQpPWJWL/THVikrDdUDx0k0IbEuray7JMrF49eCM+6dmfGIIxc0vU1s01Iwk69q7S
	 k+IjPBqCvhcI9cfTLTvSRlnFoEQdxqADNaWa9xpbTA9t+5Whw7/VhZV6okXNS+VAqA
	 eymxr4l+ngWopB/MH4djEzscVWGre82OcVFAP1C9pCdcV4OsyNcrJw2zRPlvzf989p
	 B95lzOvK6/CcscjGM7sjqAhnr+E8+TVf4ZmXPqXjSamk0rcjot6AFu5C/ZTtwynvrj
	 l7jaHE9AE3Ptw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com
 [IPv6:2607:f8b0:4864:20::d30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 240113B2A4
 for <cake@lists.bufferbloat.net>; Sat,  6 Mar 2021 12:56:27 -0500 (EST)
Received: by mail-io1-xd30.google.com with SMTP id u8so5511920ior.13
 for <cake@lists.bufferbloat.net>; Sat, 06 Mar 2021 09:56:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=bfA2b8ch4nfkn4sEerq9Fv6BG+7sd0LvN6DKs26N6gM=;
 b=gzLAQPPJ+JlB6B72+PlA8SHfA9p6N0MYp13ggCway9E5mzxDzYlp/GBxOnJo7QztFK
 SaqVOg27HxtDTf05oFgp0HN2mlibscFg2e8JqWUT2LDECXjI5EIrEwONh0L7Utxod0hZ
 VeGGltyvTRQTHAOg43tjdcBjSAvJEsvGfNj+S3nDdFV1VQW2JLa7eLMShY2kG1PcTHJl
 gxjqoav6l1q2/v05/koQiOJBxhN8VzGUF5P11HVy/Pssfe5GHffjCvMwCjTWKg+/3IYt
 ivgJpmV0PXDFN5ru2VZOHNNEpjZV1NlQy5pgzy/4+WNnShhYtcGwuPA7UCbkN1aBVVZR
 wz3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=bfA2b8ch4nfkn4sEerq9Fv6BG+7sd0LvN6DKs26N6gM=;
 b=VRNR5jN7sJvXESdDcrF0hLBHdc+x6gbvNZ2+6kDlICnqmPGcNFTHPEmu85SKM1qwe0
 h3lvmyhvCp48YmawXvrpQwdrHakBhGdo0IIBkmXY00Z++G3FB/EIcxmpWNFxVK0i06Vr
 yLXjNFKJPRBB+DzwdaZdjW1t3+iO69YYramin15h0svKOZK/Qe8iR6ZVVoPipBBwskwz
 Jo8OmmIh0ZXcgu6QcNnPHTemKGA3UODgnsgAah6d9H7s0GsDDk0OfwzB/wxPCMGyzEw9
 e6c/2p/DiN+C42t1BXuzE1a6m+CJl7IpfNT0ozXLJ5uRFsg+/tOVxjwaqOW7UoWfChEN
 y63w==
X-Gm-Message-State: AOAM533yPfZwpzesSw8WLPIhDoTdrVC5IWG+8LbCx/v/xKGsSgCRSidy
 L2QuG9K6hjKq1wVIi+wxlXTLjIMBzdpRqS1YDEyygRI6K2foUg==
X-Google-Smtp-Source: ABdhPJwgg3e9OUHcrpmdaedpW94Fy0KYavjcnoPPjpycfF6o+zH71ywb6XuGn4lgVGS1ruynTPhaU5euQTVl3jK0PP4=
X-Received: by 2002:a6b:6016:: with SMTP id r22mr12523728iog.93.1615053386002; 
 Sat, 06 Mar 2021 09:56:26 -0800 (PST)
MIME-Version: 1.0
References: <CACvp_d_jLCgsStOH79kO6oSA7qeZ948ANfcm-A=NeuaXBVO80Q@mail.gmail.com>
In-Reply-To: <CACvp_d_jLCgsStOH79kO6oSA7qeZ948ANfcm-A=NeuaXBVO80Q@mail.gmail.com>
From: Gustavo Lapido Loureiro <gustavo.lapido@gmail.com>
Date: Sat, 6 Mar 2021 14:56:13 -0300
Message-ID: <CACvp_d9WScM6gVeooYVQ9S42esm5t1S60Yv+rm6peHFqBB_0EA@mail.gmail.com>
To: cake@lists.bufferbloat.net
Content-Type: multipart/mixed; boundary="0000000000005ddb9d05bce1ebbd"
Subject: Re: [Cake] Need help troubleshooting cake
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
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--0000000000005ddb9d05bce1ebbd
Content-Type: multipart/alternative; boundary="0000000000005ddb9b05bce1ebbb"

--0000000000005ddb9b05bce1ebbb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok, I decided to step backwards, and start from the beginning.

My first goal will be to make sure the hardware is ok, mainly, the network
interfaces.

I reinstalled Debian 10, turned it into a barebones router, and ran the
*speedtest-netperf.sh* script from Openwrt
<https://github.com/openwrt/packages/blob/openwrt-19.07/net/speedtest-netpe=
rf/files/speedtest-netperf.sh>,
either from within the router, as well as from my 100/10 notebook.

The results seem to indicate everything is fine:

   -

   From the server, the test maxes out the Internet link;
   -

   Fromt the notebook, the test kinda maxes out its interface roof: close
   to 90 Mbps in all four tests (I will assume this is because of poor
   hardware quality)

I also switched WAN and LAN interfaces, just in case, and repeated the
test, which gave similar results as before.

PARTIAL CONCLUSION: So far so good.

Attached, both results.



*Atenciosamente,*

*Gustavo Lapido Loureiro*


Em qui., 4 de mar. de 2021 =C3=A0s 17:44, Gustavo Lapido Loureiro <
gustavo.lapido@gmail.com> escreveu:

> Hello, new member here.
> First, thank you all involved in making this great piece of software,
> which I have already experienced without issues during a couple of months=
.
> Back then, it was on Openwrt, in a TP-LINK Archer C-7 router, bandwidth
> capped to 60 Mbps (on the device's limits, but still making Internet usag=
e
> much smoother to all users).
> Then I moved the router to a debian 10 Celeron J1900 mini-ITX, 4 GB of
> RAM, two entry level Gigabit cards.
> So far I couldn't get the stable A's in dslreports test I was getting wit=
h
> the previous setup.
> The point is that my Internet has been upgraded from 60 Mbps to 240/20
> Mbps. SInce most, if not all, devices are still 100 Mbps, I'm currently
> capping cake at 85/18.
> I basically "transported" the cake settings from Openwrt to debian,
> basically adjusting the speed limits.
> I would like to know where I start troubleshooting this, to help identify
> what is causing bufferbloat on this new setup.
>
> Follow cake settings, then tc, then network hardware info
>
> *CAKE*
>
> # Uplink and Downlink values are in kbps
> UPLINK=3D17500
> #DOWNLINK=3D216000
> DOWNLINK=3D90000
>
> # SQM recipe to use. For more information, see /usr/lib/sqm/*.help
> SCRIPT=3Dpiece_of_cake.qos
>
> # Optional/advanced config
>
> ENABLED=3D1
> QDISC=3Dcake
>
> #LLAM=3Dtc_stab
> LINKLAYER=3Dethernet
> OVERHEAD=3D22
> #STAB_MTU=3D2047
> #STAB_TSIZE=3D512
> #STAB_MPU=3D0
>
> #ILIMIT=3D
> #ELIMIT=3D
> #ITARGET=3D
> #ETARGET=3D
>
> # ECN ingress resp. egress. Values are ECN or NOECN.
> IECN=3DECN
> EECN=3DNOECN
>
> # Extra qdisc options ingress resp. egress
> IQDISC_OPTS=3D"nat dual-dsthost"
> EQDISC_OPTS=3D"nat dual-srchost ack-filter"
>
> # CoDel target
> #TARGET=3D5ms
>
> #ZERO_DSCP_INGRESS=3D1
> #IGNORE_DSCP_INGRESS=3D1
>
> *TC SETTINGS:*
>
> qdisc noqueue 0: dev lo root refcnt 2
> qdisc pfifo_fast 0: dev enp2s0 root refcnt 2 bands 3 priomap  1 2 2 2 1 2
> 0 0 1 1 1 1 1 1 1 1
> qdisc cake 801b: dev enp3s0 root refcnt 2 bandwidth 17500Kbit besteffort
> dual-srchost nat nowash ack-filter split-gso rtt 100.0ms noatm overhead 2=
2
> qdisc ingress ffff: dev enp3s0 parent ffff:fff1 ----------------
> qdisc cake 801c: dev ifb4enp3s0 root refcnt 2 bandwidth 90Mbit besteffort
> dual-dsthost nat wash no-ack-filter split-gso rtt 100.0ms noatm overhead =
22
>
> *NETWORK HARDWARE:*
>
> SCSI
>   *-network
>        description: Ethernet interface
>        product: RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller
>        vendor: Realtek Semiconductor Co., Ltd.
>        physical id: 0
>        bus info: pci@0000:02:00.0
>        logical name: enp2s0
>        version: 06
>        serial: c4:e9:84:00:1d:7b
>        size: 1Gbit/s
>        capacity: 1Gbit/s
>        width: 64 bits
>        clock: 33MHz
>        capabilities: pm msi pciexpress msix vpd bus_master cap_list
> ethernet physical tp mii 10bt 10bt-fd 100bt 100bt-fd 1000bt 1000bt-fd
> autonegotiation
>        configuration: autonegotiation=3Don broadcast=3Dyes driver=3Dr8169
> duplex=3Dfull firmware=3Drtl_nic/rtl8168e-2.fw ip=3D192.168.1.1 latency=
=3D0
> link=3Dyes multicast=3Dyes port=3DMII speed=3D1Gbit/s
>        resources: irq:17 ioport:e000(size=3D256) memory:d0704000-d0704fff
> memory:d0700000-d0703fff
>   *-network
>        description: Ethernet interface
>        product: RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller
>        vendor: Realtek Semiconductor Co., Ltd.
>        physical id: 0
>        bus info: pci@0000:03:00.0
>        logical name: enp3s0
>        version: 0c
>        serial: 44:8a:5b:94:96:37
>        size: 1Gbit/s
>        capacity: 1Gbit/s
>        width: 64 bits
>        clock: 33MHz
>        capabilities: pm msi pciexpress msix vpd bus_master cap_list
> ethernet physical tp aui bnc mii fibre 10bt 10bt-fd 100bt 100bt-fd
> 1000bt-fd autonegotiation
>        configuration: autonegotiation=3Don broadcast=3Dyes driver=3Dr8169
> duplex=3Dfull firmware=3Drtl8168g-2_0.0.1 02/06/13 ip=3D179.210.1.62 late=
ncy=3D0
> link=3Dyes multicast=3Dyes port=3DMII speed=3D1Gbit/s
>        resources: irq:18 ioport:d000(size=3D256) memory:d0604000-d0604fff
> memory:d0600000-d0603fff
>   *-network:0
>        description: Ethernet interface
>        physical id: 1
>        logical name: ifb4enp3s0
>        serial: 76:6b:66:3c:6d:e9
>        capabilities: ethernet physical
>        configuration: broadcast=3Dyes
>   *-network:1 DISABLED
>        description: Ethernet interface
>        physical id: 2
>        logical name: ifb1
>        serial: 02:9e:3d:12:6e:16
>        capabilities: ethernet physical
>        configuration: broadcast=3Dyes
>   *-network:2 DISABLED
>        description: Ethernet interface
>        physical id: 3
>        logical name: ifb0
>        serial: 32:fe:93:2e:3a:1d
>        capabilities: ethernet physical
>        configuration: broadcast=3Dyes
>

--0000000000005ddb9b05bce1ebbb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">


=09
	<span></span>
=09
=09

<p style=3D"margin-bottom:0cm;line-height:100%;background:transparent none =
repeat scroll 0% 0%">
Ok, I decided to step backwards, and start from the beginning.</p>
<p style=3D"margin-bottom:0cm;line-height:100%;background:transparent none =
repeat scroll 0% 0%">My first goal will
be to make sure the hardware is ok, mainly, the network interfaces.</p>
<p style=3D"margin-bottom:0cm;line-height:100%;background:transparent none =
repeat scroll 0% 0%">I reinstalled Debian
10, turned it into a barebones router, and ran the
<a href=3D"https://github.com/openwrt/packages/blob/openwrt-19.07/net/speed=
test-netperf/files/speedtest-netperf.sh" style=3D"color:rgb(0,0,128);text-d=
ecoration:underline"><i>speedtest-netperf.sh</i>
script from Openwrt</a>, either from within the router, as well as
from my 100/10 notebook.</p>
<p style=3D"margin-bottom:0cm;line-height:100%;background:transparent none =
repeat scroll 0% 0%">The results seem to
indicate everything is fine:</p>
<ul><li><p style=3D"margin-bottom:0cm;line-height:100%;background:transpare=
nt none repeat scroll 0% 0%">From the
	server, the test maxes out the Internet link;</p>
	</li><li><p style=3D"margin-bottom:0cm;line-height:100%;background:transpa=
rent none repeat scroll 0% 0%">Fromt the
	notebook, the test kinda maxes out its interface roof: close to 90
	Mbps in all four tests (I will assume this is because of poor
	hardware quality)</p>
</li></ul>
<p style=3D"margin-bottom:0cm;line-height:100%;background:transparent none =
repeat scroll 0% 0%">I also switched WAN
and LAN interfaces, just in case, and repeated the test, which gave
similar results as before.</p>
<p style=3D"margin-bottom:0cm;line-height:100%;background:transparent none =
repeat scroll 0% 0%">PARTIAL CONCLUSION:
So far so good.</p>
<p style=3D"margin-bottom:0cm;line-height:100%;background:transparent none =
repeat scroll 0% 0%">Attached, both
results.</p>
<p style=3D"margin-bottom:0cm;line-height:100%;background:transparent none =
repeat scroll 0% 0%"><br>

</p>

<div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_sig=
nature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><=
div><div><i>Atenciosamente,<br></i></div><div><i><br></i></div><div><i>Gust=
avo Lapido Loureiro</i><br></div></div></div></div></div></div></div></div>=
</div></div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">Em qui., 4 de mar. de 2021 =C3=A0s 17:44, Gustavo Lapido Lo=
ureiro &lt;<a href=3D"mailto:gustavo.lapido@gmail.com">gustavo.lapido@gmail=
.com</a>&gt; escreveu:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>Hello, new member here.</div><div>First, thank=
 you all involved in making this great piece of software, which I have alre=
ady experienced without issues during a couple of months.</div><div>Back th=
en, it was on Openwrt, in a TP-LINK Archer C-7 router, bandwidth capped to =
60 Mbps (on the device&#39;s limits, but still making Internet usage much s=
moother to all users).</div><div>Then I moved the router to a debian 10 Cel=
eron J1900 mini-ITX, 4 GB of RAM, two entry level Gigabit cards.</div><div>=
So far I couldn&#39;t get the stable A&#39;s in dslreports test I was getti=
ng with the previous setup.</div><div>The point is that my Internet has bee=
n upgraded from 60 Mbps to 240/20 Mbps. SInce most, if not all, devices are=
 still 100 Mbps, I&#39;m currently capping cake at 85/18.</div><div>I basic=
ally &quot;transported&quot; the cake settings from Openwrt to debian, basi=
cally adjusting the speed limits.</div><div>I would like to know where I st=
art troubleshooting this, to help identify what is causing bufferbloat on t=
his new setup.</div><div><br></div><div>Follow cake settings, then tc, then=
 network hardware info<br></div><div><br></div><div><b>CAKE</b></div><div><=
br></div><div># Uplink and Downlink values are in kbps<br>UPLINK=3D17500<br=
>#DOWNLINK=3D216000<br>DOWNLINK=3D90000<br><br># SQM recipe to use. For mor=
e information, see /usr/lib/sqm/*.help<br>SCRIPT=3Dpiece_of_cake.qos<br><br=
># Optional/advanced config<br><br>ENABLED=3D1<br>QDISC=3Dcake<br><br>#LLAM=
=3Dtc_stab<br>LINKLAYER=3Dethernet<br>OVERHEAD=3D22<br>#STAB_MTU=3D2047<br>=
#STAB_TSIZE=3D512<br>#STAB_MPU=3D0<br><br>#ILIMIT=3D<br>#ELIMIT=3D<br>#ITAR=
GET=3D<br>#ETARGET=3D<br><br># ECN ingress resp. egress. Values are ECN or =
NOECN.<br>IECN=3DECN<br>EECN=3DNOECN<br><br># Extra qdisc options ingress r=
esp. egress<br>IQDISC_OPTS=3D&quot;nat dual-dsthost&quot;<br>EQDISC_OPTS=3D=
&quot;nat dual-srchost ack-filter&quot;<br><br># CoDel target<br>#TARGET=3D=
5ms<br><br>#ZERO_DSCP_INGRESS=3D1<br>#IGNORE_DSCP_INGRESS=3D1</div><div><br=
></div><div><b>TC SETTINGS:</b><br></div><div><br></div><div>qdisc noqueue =
0: dev lo root refcnt 2 <br>qdisc pfifo_fast 0: dev enp2s0 root refcnt 2 ba=
nds 3 priomap =C2=A01 2 2 2 1 2 0 0 1 1 1 1 1 1 1 1<br>qdisc cake 801b: dev=
 enp3s0 root refcnt 2 bandwidth 17500Kbit besteffort dual-srchost nat nowas=
h ack-filter split-gso rtt 100.0ms noatm overhead 22 <br>qdisc ingress ffff=
: dev enp3s0 parent ffff:fff1 ---------------- <br>qdisc cake 801c: dev ifb=
4enp3s0 root refcnt 2 bandwidth 90Mbit besteffort dual-dsthost nat wash no-=
ack-filter split-gso rtt 100.0ms noatm overhead 22 <br></div><div><br></div=
><div><b>NETWORK HARDWARE:</b></div><div><br></div><div>SCSI =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=
=C2=A0 *-network =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
description: Ethernet interface<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0product: RTL8=
111/8168/8411 PCI Express Gigabit Ethernet Controller<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0vendor: Realtek Semiconductor Co., Ltd.<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0physical id: 0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0bus info: pci@0000:02:00=
.0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0logical name: enp2s0<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0version: 06<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0serial: c4:e9:84:00:1d:=
7b<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0size: 1Gbit/s<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0capacity: 1Gbit/s<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0width: 64 bits<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0clock: 33MHz<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0capabilitie=
s: pm msi pciexpress msix vpd bus_master cap_list ethernet physical tp mii =
10bt 10bt-fd 100bt 100bt-fd 1000bt 1000bt-fd autonegotiation<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0configuration: autonegotiation=3Don broadcast=3Dyes driver=
=3Dr8169 duplex=3Dfull firmware=3Drtl_nic/rtl8168e-2.fw ip=3D192.168.1.1 la=
tency=3D0 link=3Dyes multicast=3Dyes port=3DMII speed=3D1Gbit/s<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0resources: irq:17 ioport:e000(size=3D256) memory:d07040=
00-d0704fff memory:d0700000-d0703fff<br>=C2=A0 *-network<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0description: Ethernet interface<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
product: RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0vendor: Realtek Semiconductor Co., Ltd.<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0physical id: 0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0bus info: =
pci@0000:03:00.0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0logical name: enp3s0<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0version: 0c<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0serial: 4=
4:8a:5b:94:96:37<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0size: 1Gbit/s<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0capacity: 1Gbit/s<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0width: 64 =
bits<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0clock: 33MHz<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0capabilities: pm msi pciexpress msix vpd bus_master cap_list ethernet ph=
ysical tp aui bnc mii fibre 10bt 10bt-fd 100bt 100bt-fd 1000bt-fd autonegot=
iation<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0configuration: autonegotiation=3Don br=
oadcast=3Dyes driver=3Dr8169 duplex=3Dfull firmware=3Drtl8168g-2_0.0.1 02/0=
6/13 ip=3D179.210.1.62 latency=3D0 link=3Dyes multicast=3Dyes port=3DMII sp=
eed=3D1Gbit/s<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0resources: irq:18 ioport:d000(s=
ize=3D256) memory:d0604000-d0604fff memory:d0600000-d0603fff<br>=C2=A0 *-ne=
twork:0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0description: Ethernet interface<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0physical id: 1<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0log=
ical name: ifb4enp3s0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0serial: 76:6b:66:3c:6d:=
e9<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0capabilities: ethernet physical<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0configuration: broadcast=3Dyes<br>=C2=A0 *-network:1 DI=
SABLED<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0description: Ethernet interface<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0physical id: 2<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0logica=
l name: ifb1<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0serial: 02:9e:3d:12:6e:16<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0capabilities: ethernet physical<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0configuration: broadcast=3Dyes<br>=C2=A0 *-network:2 DISABLED<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0description: Ethernet interface<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0physical id: 3<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0logical name:=
 ifb0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0serial: 32:fe:93:2e:3a:1d<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0capabilities: ethernet physical<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0configuration: broadcast=3Dyes<br></div></div>
</blockquote></div>

--0000000000005ddb9b05bce1ebbb--

--0000000000005ddb9d05bce1ebbd
Content-Type: application/octet-stream; 
	name=netperf before sqm from notebook
Content-Disposition: attachment; filename=netperf before sqm from notebook
Content-Transfer-Encoding: base64
Content-ID: <f_kly12olv0>
X-Attachment-Id: f_kly12olv0

RU5QM1MwIC0+IFdBTgpFTlAyUzAgLT4gTEFOCgoKCmd1c3Rhdm9ATjQwNTA6fi9iaW4kIC4vc3Bl
ZWR0ZXN0LW5ldHBlcmYuc2ggIC1IIG5ldHBlcmYtZXUuYnVmZmVyYmxvYXQubmV0IC1wIDEuMS4x
LjEgLS1zZXF1ZW50aWFsCjIwMjEtMDMtMDUgMTg6MzU6MTMgU3RhcnRpbmcgc3BlZWR0ZXN0IGZv
ciA2MCBzZWNvbmRzIHBlciB0cmFuc2ZlciBzZXNzaW9uLgpNZWFzdXJlIHNwZWVkIHRvIG5ldHBl
cmYtZXUuYnVmZmVyYmxvYXQubmV0IChJUHY0KSB3aGlsZSBwaW5naW5nIDEuMS4xLjEuCkRvd25s
b2FkIGFuZCB1cGxvYWQgc2Vzc2lvbnMgYXJlIHNlcXVlbnRpYWwsIGVhY2ggd2l0aCA1IHNpbXVs
dGFuZW91cyBzdHJlYW1zLgouLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLgogRG93bmxvYWQ6ICA4OS4wMCBNYnBzCiAgTGF0ZW5jeTog
W2luIG1zZWMsIDYyIHBpbmdzLCAwLDAwJSBwYWNrZXQgbG9zc10KICAgICAgTWluOiAxMDIsMDAw
CiAgICAxMHBjdDogMTA5LDAwMAogICBNZWRpYW46ICA0NiwwMDAKICAgICAgQXZnOiAgODgsMjEw
CiAgICA5MHBjdDogIDg5LDAwMAogICAgICBNYXg6ICA5OSwwMDAKIENQVSBMb2FkOiBbaW4gJSBi
dXN5IChhdmcgKy8tIHN0ZCBkZXYpIEAgYXZnIGZyZXF1ZW5jeSwgNTQgc2FtcGxlc10KICAgICBj
cHUwOiAgIDcsNCArLy0gIDIsMyAgQCAxMDEzIE1IegogICAgIGNwdTE6ICAgOCw0ICsvLSAxMiwy
ICBAICA5NDcgTUh6CiAgICAgY3B1MjogICA3LDEgKy8tICAyLDUgIEAgIDk5OCBNSHoKICAgICBj
cHUzOiAgMjQsNiArLy0gIDQsMyAgQCAgOTMxIE1IegogT3ZlcmhlYWQ6IFtpbiAlIHVzZWQgb2Yg
dG90YWwgQ1BVIGF2YWlsYWJsZV0KICBuZXRwZXJmOiAgIDYsMAouLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uCiAgIFVwbG9hZDog
IDE4LjAwIE1icHMKICBMYXRlbmN5OiBbaW4gbXNlYywgNjUgcGluZ3MsIDAsMDAlIHBhY2tldCBs
b3NzXQogICAgICBNaW46ICAxMSwwMDAKICAgIDEwcGN0OiAgMTMsMDAwCiAgIE1lZGlhbjogIDMw
LDAwMAogICAgICBBdmc6ICAyNyw2NzcKICAgIDkwcGN0OiAgNDcsMDAwCiAgICAgIE1heDogICA5
LDAwMAogQ1BVIExvYWQ6IFtpbiAlIGJ1c3kgKGF2ZyArLy0gc3RkIGRldikgQCBhdmcgZnJlcXVl
bmN5LCA1NyBzYW1wbGVzXQogICAgIGNwdTA6ICAgNCwyICsvLSAgMiwyICBAICA5MzEgTUh6CiAg
ICAgY3B1MTogICAzLDIgKy8tICAxLDUgIEAgIDkwOCBNSHoKICAgICBjcHUyOiAgIDUsOSArLy0g
IDIsMSAgQCAgOTc4IE1IegogICAgIGNwdTM6ICAgNyw3ICsvLSAgMiwyICBAICA5MTYgTUh6CiBP
dmVyaGVhZDogW2luICUgdXNlZCBvZiB0b3RhbCBDUFUgYXZhaWxhYmxlXQogIG5ldHBlcmY6ICAg
MCw4CgpJSQpndXN0YXZvQE40MDUwOn4vYmluJCAuL3NwZWVkdGVzdC1uZXRwZXJmLnNoICAtSCBu
ZXRwZXJmLWV1LmJ1ZmZlcmJsb2F0Lm5ldCAtcCAxLjEuMS4xIC0tc2VxdWVudGlhbAoyMDIxLTAz
LTA1IDE4OjQxOjUxIFN0YXJ0aW5nIHNwZWVkdGVzdCBmb3IgNjAgc2Vjb25kcyBwZXIgdHJhbnNm
ZXIgc2Vzc2lvbi4KTWVhc3VyZSBzcGVlZCB0byBuZXRwZXJmLWV1LmJ1ZmZlcmJsb2F0Lm5ldCAo
SVB2NCkgd2hpbGUgcGluZ2luZyAxLjEuMS4xLgpEb3dubG9hZCBhbmQgdXBsb2FkIHNlc3Npb25z
IGFyZSBzZXF1ZW50aWFsLCBlYWNoIHdpdGggNSBzaW11bHRhbmVvdXMgc3RyZWFtcy4KLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4K
IERvd25sb2FkOiAgODguMDAgTWJwcwogIExhdGVuY3k6IFtpbiBtc2VjLCA2MiBwaW5ncywgMCww
MCUgcGFja2V0IGxvc3NdCiAgICAgIE1pbjogMTAyLDAwMAogICAgMTBwY3Q6IDExMiwwMDAKICAg
TWVkaWFuOiAgNTEsMDAwCiAgICAgIEF2ZzogIDg3LDgwNgogICAgOTBwY3Q6ICA4NSwwMDAKICAg
ICAgTWF4OiAgOTcsMDAwCiBDUFUgTG9hZDogW2luICUgYnVzeSAoYXZnICsvLSBzdGQgZGV2KSBA
IGF2ZyBmcmVxdWVuY3ksIDU0IHNhbXBsZXNdCiAgICAgY3B1MDogICA5LDkgKy8tICA4LDMgIEAg
MTA1MyBNSHoKICAgICBjcHUxOiAgIDksNCArLy0gIDksNyAgQCAxMDE2IE1IegogICAgIGNwdTI6
ICAxMCw4ICsvLSAxMiw0ICBAIDEwMzEgTUh6CiAgICAgY3B1MzogIDI2LDYgKy8tICA4LDcgIEAg
IDk3NSBNSHoKIE92ZXJoZWFkOiBbaW4gJSB1c2VkIG9mIHRvdGFsIENQVSBhdmFpbGFibGVdCiAg
bmV0cGVyZjogICA2LDAKLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLgogICBVcGxvYWQ6ICAxOC4wMCBNYnBzCiAgTGF0ZW5jeTog
W2luIG1zZWMsIDY0IHBpbmdzLCAwLDAwJSBwYWNrZXQgbG9zc10KICAgICAgTWluOiAgMTAsMDAw
CiAgICAxMHBjdDogIDEyLDAwMAogICBNZWRpYW46ICAxOCwwMDAKICAgICAgQXZnOiAgMjMsOTA2
CiAgICA5MHBjdDogIDQzLDAwMAogICAgICBNYXg6ICAgNywwMDAKIENQVSBMb2FkOiBbaW4gJSBi
dXN5IChhdmcgKy8tIHN0ZCBkZXYpIEAgYXZnIGZyZXF1ZW5jeSwgNTYgc2FtcGxlc10KICAgICBj
cHUwOiAgIDQsMyArLy0gIDIsNCAgQCAgOTQ4IE1IegogICAgIGNwdTE6ICAgNCwxICsvLSAgMiw5
ICBAICA5MjggTUh6CiAgICAgY3B1MjogICA2LDUgKy8tICAyLDggIEAgIDkyNSBNSHoKICAgICBj
cHUzOiAgIDgsMCArLy0gIDMsNSAgQCAgOTgxIE1IegogT3ZlcmhlYWQ6IFtpbiAlIHVzZWQgb2Yg
dG90YWwgQ1BVIGF2YWlsYWJsZV0KICBuZXRwZXJmOiAgIDAsOAoKCkVOUDNTMCAtPiBMQU4KRU5Q
MlMwIC0+IFdBTgoKSQpndXN0YXZvQE40MDUwOn4vYmluJCAuL3NwZWVkdGVzdC1uZXRwZXJmLnNo
ICAtSCBuZXRwZXJmLWV1LmJ1ZmZlcmJsb2F0Lm5ldCAtcCAxLjEuMS4xIC0tc2VxdWVudGlhbAoy
MDIxLTAzLTA2IDEzOjU1OjAyIFN0YXJ0aW5nIHNwZWVkdGVzdCBmb3IgNjAgc2Vjb25kcyBwZXIg
dHJhbnNmZXIgc2Vzc2lvbi4KTWVhc3VyZSBzcGVlZCB0byBuZXRwZXJmLWV1LmJ1ZmZlcmJsb2F0
Lm5ldCAoSVB2NCkgd2hpbGUgcGluZ2luZyAxLjEuMS4xLgpEb3dubG9hZCBhbmQgdXBsb2FkIHNl
c3Npb25zIGFyZSBzZXF1ZW50aWFsLCBlYWNoIHdpdGggNSBzaW11bHRhbmVvdXMgc3RyZWFtcy4K
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4KIERvd25sb2FkOiAgODkuMDAgTWJwcwogIExhdGVuY3k6IFtpbiBtc2VjLCA2MCBwaW5n
cywgMCwwMCUgcGFja2V0IGxvc3NdCiAgICAgIE1pbjogMTAyLDAwMAogICAgMTBwY3Q6IDExMCww
MDAKICAgTWVkaWFuOiAxMzUsMDAwCiAgICAgIEF2ZzogIDkxLDkzMwogICAgOTBwY3Q6ICA5MCww
MDAKICAgICAgTWF4OiAgOTYsMDAwCiBDUFUgTG9hZDogW2luICUgYnVzeSAoYXZnICsvLSBzdGQg
ZGV2KSBAIGF2ZyBmcmVxdWVuY3ksIDU0IHNhbXBsZXNdCiAgICAgY3B1MDogICA1LDggKy8tICAy
LDIgIEAgIDk5MSBNSHoKICAgICBjcHUxOiAgIDMsNSArLy0gIDIsMyAgQCAgOTA2IE1IegogICAg
IGNwdTI6ICAgMiw5ICsvLSAgMiwwICBAICA5ODkgTUh6CiAgICAgY3B1MzogIDIzLDAgKy8tICA0
LDIgIEAgIDg3OCBNSHoKIE92ZXJoZWFkOiBbaW4gJSB1c2VkIG9mIHRvdGFsIENQVSBhdmFpbGFi
bGVdCiAgbmV0cGVyZjogICA2LDEKLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4KICAgVXBsb2FkOiAgMTcuMDAgTWJwcwogIExh
dGVuY3k6IFtpbiBtc2VjLCA2NSBwaW5ncywgMCwwMCUgcGFja2V0IGxvc3NdCiAgICAgIE1pbjog
IDEwLDAwMAogICAgMTBwY3Q6ICAxMiwwMDAKICAgTWVkaWFuOiAgMjksMDAwCiAgICAgIEF2Zzog
IDI4LDMwOAogICAgOTBwY3Q6ICA0NCwwMDAKICAgICAgTWF4OiAgIDksMDAwCiBDUFUgTG9hZDog
W2luICUgYnVzeSAoYXZnICsvLSBzdGQgZGV2KSBAIGF2ZyBmcmVxdWVuY3ksIDU3IHNhbXBsZXNd
CiAgICAgY3B1MDogICA2LDUgKy8tICA3LDMgIEAgMTAwMSBNSHoKICAgICBjcHUxOiAgIDUsOSAr
Ly0gIDYsNiAgQCAxMDM0IE1IegogICAgIGNwdTI6ICAgNSw3ICsvLSAgNywwICBAIDEwMTAgTUh6
CiAgICAgY3B1MzogICA5LDYgKy8tICA4LDcgIEAgMTAxOSBNSHoKIE92ZXJoZWFkOiBbaW4gJSB1
c2VkIG9mIHRvdGFsIENQVSBhdmFpbGFibGVdCiAgbmV0cGVyZjogICAwLDgKCklJCmd1c3Rhdm9A
TjQwNTA6fi9iaW4kIC4vc3BlZWR0ZXN0LW5ldHBlcmYuc2ggIC1IIG5ldHBlcmYtZXUuYnVmZmVy
YmxvYXQubmV0IC1wIDEuMS4xLjEgLS1zZXF1ZW50aWFsCjIwMjEtMDMtMDYgMTM6NTg6MDMgU3Rh
cnRpbmcgc3BlZWR0ZXN0IGZvciA2MCBzZWNvbmRzIHBlciB0cmFuc2ZlciBzZXNzaW9uLgpNZWFz
dXJlIHNwZWVkIHRvIG5ldHBlcmYtZXUuYnVmZmVyYmxvYXQubmV0IChJUHY0KSB3aGlsZSBwaW5n
aW5nIDEuMS4xLjEuCkRvd25sb2FkIGFuZCB1cGxvYWQgc2Vzc2lvbnMgYXJlIHNlcXVlbnRpYWws
IGVhY2ggd2l0aCA1IHNpbXVsdGFuZW91cyBzdHJlYW1zLgouLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uCiBEb3dubG9hZDogIDg4LjAw
IE1icHMKICBMYXRlbmN5OiBbaW4gbXNlYywgNTkgcGluZ3MsIDAsMDAlIHBhY2tldCBsb3NzXQog
ICAgICBNaW46IDEwMSwwMDAKICAgIDEwcGN0OiAxMTAsMDAwCiAgIE1lZGlhbjogIDcxLDAwMAog
ICAgICBBdmc6ICA4NCwwMTcKICAgIDkwcGN0OiAgOTAsMDAwCiAgICAgIE1heDogIDk4LDAwMAog
Q1BVIExvYWQ6IFtpbiAlIGJ1c3kgKGF2ZyArLy0gc3RkIGRldikgQCBhdmcgZnJlcXVlbmN5LCA1
NCBzYW1wbGVzXQogICAgIGNwdTA6ICAgNiw2ICsvLSAgNCw1ICBAIDEwMjIgTUh6CiAgICAgY3B1
MTogICA1LDYgKy8tICA2LDMgIEAgIDk2NiBNSHoKICAgICBjcHUyOiAgIDUsMiArLy0gIDcsNyAg
QCAxMDExIE1IegogICAgIGNwdTM6ICAyMyw1ICsvLSAgNSwwICBAICA5MTcgTUh6CiBPdmVyaGVh
ZDogW2luICUgdXNlZCBvZiB0b3RhbCBDUFUgYXZhaWxhYmxlXQogIG5ldHBlcmY6ICAgNSw3Ci4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uCiAgIFVwbG9hZDogIDE4LjAwIE1icHMKICBMYXRlbmN5OiBbaW4gbXNlYywgNjUgcGlu
Z3MsIDAsMDAlIHBhY2tldCBsb3NzXQogICAgICBNaW46IDEwMSwwMDAKICAgIDEwcGN0OiAgMTEs
MDAwCiAgIE1lZGlhbjogIDIwLDAwMAogICAgICBBdmc6ICAyMyw3NTQKICAgIDkwcGN0OiAgNDQs
MDAwCiAgICAgIE1heDogICA5LDAwMAogQ1BVIExvYWQ6IFtpbiAlIGJ1c3kgKGF2ZyArLy0gc3Rk
IGRldikgQCBhdmcgZnJlcXVlbmN5LCA1NyBzYW1wbGVzXQogICAgIGNwdTA6ICAgMSw3ICsvLSAg
MSw0ICBAICA5MTQgTUh6CiAgICAgY3B1MTogICAxLDMgKy8tICAxLDIgIEAgIDg4NSBNSHoKICAg
ICBjcHUyOiAgIDEsNSArLy0gIDEsMiAgQCAgOTEwIE1IegogICAgIGNwdTM6ICAgNCwyICsvLSAg
MSw3ICBAICA5MDUgTUh6CiBPdmVyaGVhZDogW2luICUgdXNlZCBvZiB0b3RhbCBDUFUgYXZhaWxh
YmxlXQogIG5ldHBlcmY6ICAgMCw4Cgo=
--0000000000005ddb9d05bce1ebbd
Content-Type: application/octet-stream; 
	name=netperf before sqm from router
Content-Disposition: attachment; filename=netperf before sqm from router
Content-Transfer-Encoding: base64
Content-ID: <f_kly12onj1>
X-Attachment-Id: f_kly12onj1

RU5QM1MwIC0+IFdBTgpFTlAyUzAgLT4gTEFOCgoKZ3VzdGF2b0BzcnY6fi9iaW4kIC4vc3BlZWR0
ZXN0LW5ldHBlcmYuc2ggIC1IIG5ldHBlcmYtZXUuYnVmZmVyYmxvYXQubmV0IC1wIDEuMS4xLjEg
LS1zZXF1ZW50aWFsCjIwMjEtMDMtMDUgMTg6Mjk6NDMgU3RhcnRpbmcgc3BlZWR0ZXN0IGZvciA2
MCBzZWNvbmRzIHBlciB0cmFuc2ZlciBzZXNzaW9uLgpNZWFzdXJlIHNwZWVkIHRvIG5ldHBlcmYt
ZXUuYnVmZmVyYmxvYXQubmV0IChJUHY0KSB3aGlsZSBwaW5naW5nIDEuMS4xLjEuCkRvd25sb2Fk
IGFuZCB1cGxvYWQgc2Vzc2lvbnMgYXJlIHNlcXVlbnRpYWwsIGVhY2ggd2l0aCA1IHNpbXVsdGFu
ZW91cyBzdHJlYW1zLgouLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLgogRG93bmxvYWQ6IDIwMi40NSBNYnBzCiAgTGF0ZW5jeTogW2lu
IG1zZWMsIDYwIHBpbmdzLCAwLjAwJSBwYWNrZXQgbG9zc10KICAgICAgTWluOiAgMTAuMzAwCiAg
ICAxMHBjdDogIDE0LjIwMAogICBNZWRpYW46ICAgNS44NDAKICAgICAgQXZnOiAgMTAuNzE4CiAg
ICA5MHBjdDogICA5LjIwMAogICAgICBNYXg6ICAxNC4xMDAKIENQVSBMb2FkOiBbaW4gJSBidXN5
IChhdmcgKy8tIHN0ZCBkZXYpIEAgYXZnIGZyZXF1ZW5jeSwgNTQgc2FtcGxlc10KICAgICBjcHUw
OiAgIDIuNCArLy0gIDEuOSAgQCAxMzMzIE1IegogICAgIGNwdTE6ICAgMS45ICsvLSAgMi4xICBA
IDEzMzMgTUh6CiAgICAgY3B1MjogIDEwLjAgKy8tICAzLjcgIEAgMTczMyBNSHoKICAgICBjcHUz
OiAgMzkuMCArLy0gMTAuMiAgQCAxODQ2IE1IegogT3ZlcmhlYWQ6IFtpbiAlIHVzZWQgb2YgdG90
YWwgQ1BVIGF2YWlsYWJsZV0KICBuZXRwZXJmOiAgIDUuNQouLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLgogICBVcGxvYWQ6ICAy
MC4yOSBNYnBzCiAgTGF0ZW5jeTogW2luIG1zZWMsIDY1IHBpbmdzLCAwLjAwJSBwYWNrZXQgbG9z
c10KICAgICAgTWluOiAgMTAuMjAwCiAgICAxMHBjdDogIDE0LjIwMAogICBNZWRpYW46ICAyNS41
MDAKICAgICAgQXZnOiAgMjUuODA2CiAgICA5MHBjdDogIDQ1LjgwMAogICAgICBNYXg6ICAzNS4x
MDAKIENQVSBMb2FkOiBbaW4gJSBidXN5IChhdmcgKy8tIHN0ZCBkZXYpIEAgYXZnIGZyZXF1ZW5j
eSwgNTcgc2FtcGxlc10KICAgICBjcHUwOiAgIDAuNyArLy0gIDAuOCAgQCAxMzMzIE1IegogICAg
IGNwdTE6ICAgMC41ICsvLSAgMC42ICBAIDEzMzMgTUh6CiAgICAgY3B1MjogICAwLjUgKy8tICAw
LjcgIEAgMTMzMyBNSHoKICAgICBjcHUzOiAgIDEuNyArLy0gIDAuOSAgQCAxMzYzIE1IegogT3Zl
cmhlYWQ6IFtpbiAlIHVzZWQgb2YgdG90YWwgQ1BVIGF2YWlsYWJsZV0KICBuZXRwZXJmOiAgIDAu
NwpndXN0YXZvQHNydjp+L2JpbiQgCgpJSQpndXN0YXZvQHNydjp+L2JpbiQgLi9zcGVlZHRlc3Qt
bmV0cGVyZi5zaCAgLUggbmV0cGVyZi1ldS5idWZmZXJibG9hdC5uZXQgLXAgMS4xLjEuMSAtLXNl
cXVlbnRpYWwKMjAyMS0wMy0wNSAxODozOTowMCBTdGFydGluZyBzcGVlZHRlc3QgZm9yIDYwIHNl
Y29uZHMgcGVyIHRyYW5zZmVyIHNlc3Npb24uCk1lYXN1cmUgc3BlZWQgdG8gbmV0cGVyZi1ldS5i
dWZmZXJibG9hdC5uZXQgKElQdjQpIHdoaWxlIHBpbmdpbmcgMS4xLjEuMS4KRG93bmxvYWQgYW5k
IHVwbG9hZCBzZXNzaW9ucyBhcmUgc2VxdWVudGlhbCwgZWFjaCB3aXRoIDUgc2ltdWx0YW5lb3Vz
IHN0cmVhbXMuCi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uCiBEb3dubG9hZDogMjE0LjkxIE1icHMKICBMYXRlbmN5OiBbaW4gbXNl
YywgNjIgcGluZ3MsIDAuMDAlIHBhY2tldCBsb3NzXQogICAgICBNaW46ICAxMC4xMDAKICAgIDEw
cGN0OiAgMTEuNTAwCiAgIE1lZGlhbjogICA1LjcxMAogICAgICBBdmc6ICAxMS4wNTYKICAgIDkw
cGN0OiAgIDguNjgwCiAgICAgIE1heDogIDIyLjEwMAogQ1BVIExvYWQ6IFtpbiAlIGJ1c3kgKGF2
ZyArLy0gc3RkIGRldikgQCBhdmcgZnJlcXVlbmN5LCA1NCBzYW1wbGVzXQogICAgIGNwdTA6ICAg
MS43ICsvLSAgMS42ICBAIDEzMzMgTUh6CiAgICAgY3B1MTogICAxLjYgKy8tICAxLjMgIEAgMTMz
MyBNSHoKICAgICBjcHUyOiAgMTAuOCArLy0gIDMuOSAgQCAxNzQzIE1IegogICAgIGNwdTM6ICA0
My45ICsvLSAgOS45ICBAIDE4MDcgTUh6CiBPdmVyaGVhZDogW2luICUgdXNlZCBvZiB0b3RhbCBD
UFUgYXZhaWxhYmxlXQogIG5ldHBlcmY6ICAgNS41Ci4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uCiAgIFVwbG9hZDogIDIwLjM2
IE1icHMKICBMYXRlbmN5OiBbaW4gbXNlYywgNjUgcGluZ3MsIDAuMDAlIHBhY2tldCBsb3NzXQog
ICAgICBNaW46ICAxMS45MDAKICAgIDEwcGN0OiAgMTMuMTAwCiAgIE1lZGlhbjogIDM0LjYwMAog
ICAgICBBdmc6ICAyOC44MzEKICAgIDkwcGN0OiAgIDcuNjcwCiAgICAgIE1heDogIDQwLjEwMAog
Q1BVIExvYWQ6IFtpbiAlIGJ1c3kgKGF2ZyArLy0gc3RkIGRldikgQCBhdmcgZnJlcXVlbmN5LCA1
NyBzYW1wbGVzXQogICAgIGNwdTA6ICAgMC41ICsvLSAgMC42ICBAIDEzMzMgTUh6CiAgICAgY3B1
MTogICAwLjUgKy8tICAwLjYgIEAgMTMzMyBNSHoKICAgICBjcHUyOiAgIDAuOCArLy0gIDAuNiAg
QCAxMzMzIE1IegogICAgIGNwdTM6ICAgMS41ICsvLSAgMC45ICBAIDEzNDUgTUh6CiBPdmVyaGVh
ZDogW2luICUgdXNlZCBvZiB0b3RhbCBDUFUgYXZhaWxhYmxlXQogIG5ldHBlcmY6ICAgMC43CgoK
RU5QM1MwIC0+IExBTgpFTlAyUzAgLT4gV0FOCgpJCmd1c3Rhdm9Ac3J2On4vYmluJCAuL3NwZWVk
dGVzdC1uZXRwZXJmLnNoICAtSCBuZXRwZXJmLWV1LmJ1ZmZlcmJsb2F0Lm5ldCAtcCAxLjEuMS4x
IC0tc2VxdWVudGlhbAoyMDIxLTAzLTA2IDEzOjQ4OjI3IFN0YXJ0aW5nIHNwZWVkdGVzdCBmb3Ig
NjAgc2Vjb25kcyBwZXIgdHJhbnNmZXIgc2Vzc2lvbi4KTWVhc3VyZSBzcGVlZCB0byBuZXRwZXJm
LWV1LmJ1ZmZlcmJsb2F0Lm5ldCAoSVB2NCkgd2hpbGUgcGluZ2luZyAxLjEuMS4xLgpEb3dubG9h
ZCBhbmQgdXBsb2FkIHNlc3Npb25zIGFyZSBzZXF1ZW50aWFsLCBlYWNoIHdpdGggNSBzaW11bHRh
bmVvdXMgc3RyZWFtcy4KLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLgogRG93bmxvYWQ6IDIwOS43OCBNYnBzCiAgTGF0ZW5jeTogW2lu
IG1zZWMsIDYxIHBpbmdzLCAwLjAwJSBwYWNrZXQgbG9zc10KICAgICAgTWluOiAgMTAuMDAwCiAg
ICAxMHBjdDogIDEyLjcwMAogICBNZWRpYW46ICAgNi4yMjAKICAgICAgQXZnOiAgMTAuMzQ5CiAg
ICA5MHBjdDogICA4LjQ1MAogICAgICBNYXg6ICAgOS43OTAKIENQVSBMb2FkOiBbaW4gJSBidXN5
IChhdmcgKy8tIHN0ZCBkZXYpIEAgYXZnIGZyZXF1ZW5jeSwgNTQgc2FtcGxlc10KICAgICBjcHUw
OiAgIDEuNyArLy0gIDEuNyAgQCAxMzMzIE1IegogICAgIGNwdTE6ICAgMS42ICsvLSAgMS40ICBA
IDEzMzYgTUh6CiAgICAgY3B1MjogIDExLjEgKy8tICAzLjggIEAgMTcwOCBNSHoKICAgICBjcHUz
OiAgNDAuMSArLy0gIDguNSAgQCAxNzg4IE1IegogT3ZlcmhlYWQ6IFtpbiAlIHVzZWQgb2YgdG90
YWwgQ1BVIGF2YWlsYWJsZV0KICBuZXRwZXJmOiAgIDUuNwouLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLgogICBVcGxvYWQ6ICAy
MC4yOSBNYnBzCiAgTGF0ZW5jeTogW2luIG1zZWMsIDY1IHBpbmdzLCAwLjAwJSBwYWNrZXQgbG9z
c10KICAgICAgTWluOiAgMTAuMjAwCiAgICAxMHBjdDogIDEyLjYwMAogICBNZWRpYW46ICAzMi4z
MDAKICAgICAgQXZnOiAgMjguOTczCiAgICA5MHBjdDogIDQ1LjcwMAogICAgICBNYXg6ICA0NC4x
MDAKIENQVSBMb2FkOiBbaW4gJSBidXN5IChhdmcgKy8tIHN0ZCBkZXYpIEAgYXZnIGZyZXF1ZW5j
eSwgNTcgc2FtcGxlc10KICAgICBjcHUwOiAgIDAuNSArLy0gIDAuNiAgQCAxMzMzIE1IegogICAg
IGNwdTE6ICAgMC41ICsvLSAgMC42ICBAIDEzMzMgTUh6CiAgICAgY3B1MjogICAwLjcgKy8tICAw
LjcgIEAgMTMzMyBNSHoKICAgICBjcHUzOiAgIDEuMyArLy0gIDAuOSAgQCAxMzM3IE1IegogT3Zl
cmhlYWQ6IFtpbiAlIHVzZWQgb2YgdG90YWwgQ1BVIGF2YWlsYWJsZV0KICBuZXRwZXJmOiAgIDAu
NwoKSUkKdXN0YXZvQHNydjp+L2JpbiQgLi9zcGVlZHRlc3QtbmV0cGVyZi5zaCAgLUggbmV0cGVy
Zi1ldS5idWZmZXJibG9hdC5uZXQgLXAgMS4xLjEuMSAtLXNlcXVlbnRpYWwKMjAyMS0wMy0wNiAx
Mzo1MTo0NyBTdGFydGluZyBzcGVlZHRlc3QgZm9yIDYwIHNlY29uZHMgcGVyIHRyYW5zZmVyIHNl
c3Npb24uCk1lYXN1cmUgc3BlZWQgdG8gbmV0cGVyZi1ldS5idWZmZXJibG9hdC5uZXQgKElQdjQp
IHdoaWxlIHBpbmdpbmcgMS4xLjEuMS4KRG93bmxvYWQgYW5kIHVwbG9hZCBzZXNzaW9ucyBhcmUg
c2VxdWVudGlhbCwgZWFjaCB3aXRoIDUgc2ltdWx0YW5lb3VzIHN0cmVhbXMuCi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4KIERvd25s
b2FkOiAxODYuNDUgTWJwcwogIExhdGVuY3k6IFtpbiBtc2VjLCA2MSBwaW5ncywgMC4wMCUgcGFj
a2V0IGxvc3NdCiAgICAgIE1pbjogIDEwLjYwMAogICAgMTBwY3Q6ICAxNC45MDAKICAgTWVkaWFu
OiAgIDYuMjkwCiAgICAgIEF2ZzogICA4Ljk1NwogICAgOTBwY3Q6ICAgOC45NTAKICAgICAgTWF4
OiAgMjcuMTAwCiBDUFUgTG9hZDogW2luICUgYnVzeSAoYXZnICsvLSBzdGQgZGV2KSBAIGF2ZyBm
cmVxdWVuY3ksIDU0IHNhbXBsZXNdCiAgICAgY3B1MDogICAxLjkgKy8tICAxLjQgIEAgMTMzMyBN
SHoKICAgICBjcHUxOiAgIDEuNCArLy0gIDEuMyAgQCAxMzM0IE1IegogICAgIGNwdTI6ICAxMS4w
ICsvLSAgNC4yICBAIDE2NDggTUh6CiAgICAgY3B1MzogIDM3LjcgKy8tICA4LjcgIEAgMTc0MiBN
SHoKIE92ZXJoZWFkOiBbaW4gJSB1c2VkIG9mIHRvdGFsIENQVSBhdmFpbGFibGVdCiAgbmV0cGVy
ZjogICA1LjMKLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLgogICBVcGxvYWQ6ICAxOS44OSBNYnBzCiAgTGF0ZW5jeTogW2luIG1z
ZWMsIDY0IHBpbmdzLCAwLjAwJSBwYWNrZXQgbG9zc10KICAgICAgTWluOiAgMTAuMDAwCiAgICAx
MHBjdDogIDEyLjkwMAogICBNZWRpYW46ICAzMC40MDAKICAgICAgQXZnOiAgMjcuMjgyCiAgICA5
MHBjdDogIDQ2LjUwMAogICAgICBNYXg6ICA0MC4xMDAKIENQVSBMb2FkOiBbaW4gJSBidXN5IChh
dmcgKy8tIHN0ZCBkZXYpIEAgYXZnIGZyZXF1ZW5jeSwgNTYgc2FtcGxlc10KICAgICBjcHUwOiAg
IDAuNiArLy0gIDAuNiAgQCAxMzMzIE1IegogICAgIGNwdTE6ICAgMC42ICsvLSAgMC42ICBAIDEz
MzMgTUh6CiAgICAgY3B1MjogICAwLjQgKy8tICAwLjYgIEAgMTMzMyBNSHoKICAgICBjcHUzOiAg
IDEuNSArLy0gIDEuMCAgQCAxMzQ3IE1IegogT3ZlcmhlYWQ6IFtpbiAlIHVzZWQgb2YgdG90YWwg
Q1BVIGF2YWlsYWJsZV0KICBuZXRwZXJmOiAgIDAuNwoK
--0000000000005ddb9d05bce1ebbd
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--0000000000005ddb9d05bce1ebbd--

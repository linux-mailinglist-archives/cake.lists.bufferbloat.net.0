Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B40E822327
	for <lists+cake@lfdr.de>; Tue,  2 Jan 2024 22:15:34 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 648523CB47;
	Tue,  2 Jan 2024 16:15:33 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1704230133;
	bh=VtWbqPKx7kWn8HplRWzVDxCYYEBuL8dMCvQkXHFk+SQ=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=evpaiYYCLqsAIzMAs4uzy38L/cE01OMo5iBsFnXoJ+rHDUF90IRpNh//PBIVnarQb
	 bGwHeNlRn1sn/iHySp6U8xjNIvKBgyVp7+4Q6KrTJdh/rFXp2hVJjiDZAWouOfbHjc
	 Zcp1psCRWNcLNKI++iBLeueVSBJDTXRCobjNRJwfytnCE472FUsrZ+gwaCV/VitZDy
	 +6x656dq6rHPTmJcDK7s+c8666D2J/jlaY1f2UPd+Mw80PNh5TlthGeXVMDq/81ZtL
	 BMPyFMNVgROrqpif+HbXcg/gV7iXUAwiTcMO3GGOLv07viKLp1NyfYBeiVM9nlI/7C
	 8XMQtgkZVq1fw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com
 [IPv6:2607:f8b0:4864:20::22c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2370E3CB40
 for <cake@lists.bufferbloat.net>; Tue,  2 Jan 2024 16:15:32 -0500 (EST)
Received: by mail-oi1-x22c.google.com with SMTP id
 5614622812f47-3bbd6e377ceso3640745b6e.1
 for <cake@lists.bufferbloat.net>; Tue, 02 Jan 2024 13:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1704230131; x=1704834931; darn=lists.bufferbloat.net;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Ym9FHOguljUNAmOUxyrOykSO1affUc0hrhU3+btst6I=;
 b=CerOKYfhJRwMXFIQ10HKo+z7X95pfqISYOyxLRvmc9ovw/4iNYqQcjFSSSwPr+jjRE
 hsy5yDUYOeqlXdJmCwiIQ/1DWYRULjUAlmtRDl+h+SMOiOdflbWhUCmJ/XgHarN3zneh
 Q6hD20aRV0ntoBE3iscxQgRW67xLd4+NR5Jg2K305kfAZ+bDr5EoiK9lyzwDGVbnsOmw
 GCJKn6C7kJGwJWwNsfzA2m8UNOeJmgHJMV+Jm7sk/X4dRHXJ3qk/w2OAV0bOhmqS1TS6
 AtgIEd6LwnH5caF72cqDjyH1sWboHuD5WSymnmggqdEd1Ak3Wfhloh4AmyLF8RuK2krw
 HQVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704230131; x=1704834931;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Ym9FHOguljUNAmOUxyrOykSO1affUc0hrhU3+btst6I=;
 b=U1imJL7zGj4bqiLA3A19y6DyuBD8vyAdpATbhqyzqeNFrusKRYMBuGOiwC5S0rz28Q
 YEbZvnWvPqhwuPfj7sgioCG7nKndsAP/mC33ALD4lz7bd86Jq0a1mIOwkhocIy366bW/
 nF3IFgC7LyCPBb3obMIkuKwKNxiO7I7z3v8YtCgHGVbK9EHJHcp7ckU2xydWYlgJrFHo
 nCi8E7xoa7nZFvhC3Gbcf1aG8ww5szQqhs6647JCMRqjVJwFC8oLdWfj8UR5tjMQIMDH
 vo6NlEu18gkEZ/mmXs/XaKnLHkEbw2eEjmBWbuRASYmrIqq+kao/dSM+qa5d7wJhgmeM
 67Lg==
X-Gm-Message-State: AOJu0Yw2AF4pxeQ+jhJwJv3ZLcr9mn5HdKOLuCCLV7DpesiiJ1h8GKrN
 3MX2RiHGraeoPRAFO57/SBFn1juU0E5Qnl0bEAA=
X-Google-Smtp-Source: AGHT+IHGDOD+ue/j19tRn4LfRoxStIjv/2aXzZur/lI11lL2oRKCK+XmVX+LMpT8ghgzvm5i+tAWg0opmYzoR/lYgz0=
X-Received: by 2002:a05:6808:444a:b0:3bb:c73c:f83b with SMTP id
 ep10-20020a056808444a00b003bbc73cf83bmr16909656oib.21.1704230130525; Tue, 02
 Jan 2024 13:15:30 -0800 (PST)
MIME-Version: 1.0
References: <CANypexRYDqtsuj2vwX0qXWA=hXN3KZ5CJn5+vZRbm=Dikwh1Aw@mail.gmail.com>
 <FDEBFF40-7805-41A4-888C-C2E9DB9D7301@gmx.de>
In-Reply-To: <FDEBFF40-7805-41A4-888C-C2E9DB9D7301@gmx.de>
Date: Tue, 2 Jan 2024 13:15:18 -0800
Message-ID: <CANypexQ6NpwV0onwFeOugogc+H7yCa03SNOJcC3OyZQGc8KRDQ@mail.gmail.com>
To: Sebastian Moeller <moeller0@gmx.de>
Subject: Re: [Cake] Ubiquity (Unifi ) Smart Queues
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
From: dave seddon via Cake <cake@lists.bufferbloat.net>
Reply-To: dave seddon <dave.seddon.ca@gmail.com>
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============8604284849978460909=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8604284849978460909==
Content-Type: multipart/related; boundary="0000000000008c2733060dfcff90"

--0000000000008c2733060dfcff90
Content-Type: multipart/alternative; boundary="0000000000008c2733060dfcff8f"

--0000000000008c2733060dfcff8f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Sebastian!

Now I see the rates!!

I actually reduced the rates to ensure this device is the bottleneck 80/10
Mb/s

[image: image.png]

root@USG-Pro-4:~# tc -d class show dev eth2
class htb 1:10 root leaf 100: prio 0 quantum 118750 rate 9500Kbit ceil
9500Kbit burst 1598b/1 mpu 0b overhead 0b cburst 1598b/1 mpu 0b overhead 0b
level 0
class fq_codel 100:12c parent 100:
class fq_codel 100:213 parent 100:
class fq_codel 100:22e parent 100:

root@USG-Pro-4:~# tc -d class show dev ifb_eth2
class htb 1:10 root leaf 100: prio 0 quantum 200000 rate 76000Kbit ceil
76000Kbit burst 1596b/1 mpu 0b overhead 0b cburst 1596b/1 mpu 0b overhead
0b level 0
class fq_codel 100:2c8 parent 100:
class fq_codel 100:3df parent 100:

On Tue, Jan 2, 2024 at 12:53=E2=80=AFPM Sebastian Moeller <moeller0@gmx.de>=
 wrote:

> Hi Dave.
>
> just a few comments from the peanut gallery...
>
>
> > On Jan 2, 2024, at 19:59, dave seddon via Cake <
> cake@lists.bufferbloat.net> wrote:
> >
> > G'day,
> >
> > Happy new year y'all
>
> +1
>
> >
> > I thought people might be interested to see what Ubiquity/Unifi is doin=
g
> with "Smart Queues" on their devices.  The documentation on their website
> is not very informative.
> >
> > Hopefully, this is vaguely interesting because Ubiquity is widely
> deployed and apparently they have a market cap of >$8 billion, so you wou=
ld
> hope they do a "good job" (... Seems like they might be a target customer
> for libreqos )
> >
> > <image.png>
> > https://finance.yahoo.com/quote/ui/
> >
> > ( I use Unifi because their wifi stuff seems ok, and all the
> switching/routing/wifi is all integrated into the single gui control
> system.  Also honestly, I'm not sure I know how to do prefix delegation
> stuff on Linux by hand. )
> >
> > Network diagram
> >
> > Spectrum Cable Internets <----------> Eth2 [ USG-Pro-4 ] Eth0 <--->
> [Switches] <----> Access points
> >
> > "Smart Queue" Configuration
> > Ubiquity doesn't have many knobs, you just enable "smart queues" and se=
t
> the bandwidth.
> >
> >
> >
> >
> > "Smart Queue" Implementation
> >
> > Looks like they only apply tc qdiscs to the Eth2, and sadly this is NOT
> cake, but fq_codel.
> >
> > And cake isn't available :(
> >
> > root@USG-Pro-4:~# tc qdisc replace dev eth0 cake bandwidth 100m rtt 20m=
s
> > Unknown qdisc "cake", hence option "bandwidth" is unparsable
> >
> > Outbound eth2
> >
> > root@USG-Pro-4:~# tc -p -s -d qdisc show dev eth2
> > qdisc htb 1: root refcnt 2 r2q 10 default 10 direct_packets_stat 0 ver
> 3.17
> >  Sent 1071636465 bytes 5624944 pkt (dropped 0, overlimits 523078
> requeues 0)  <---- OVERLIMITS?
> >  backlog 0b 0p requeues 0
> > qdisc fq_codel 100: parent 1:10 limit 10240p flows 1024 quantum 1514
> target 5.0ms interval 100.0ms ecn
> >  Sent 1071636465 bytes 5624944 pkt (dropped 2384, overlimits 0 requeues
> 0)       <----- DROPS
> >  backlog 0b 0p requeues 0
> >   maxpacket 1514 drop_overlimit 0 new_flow_count 1244991 ecn_mark 0
> >   new_flows_len 1 old_flows_len 1
> > qdisc ingress ffff: parent ffff:fff1 ----------------
> >  Sent 12636045136 bytes 29199533 pkt (dropped 0, overlimits 0 requeues
> 0)
> >  backlog 0b 0p requeues 0
> >       =E2=80=A2 target 5.0ms is the default (
> https://www.man7.org/linux/man-pages/man8/tc-fq_codel.8.html ).  I wonder
> if they did much testing on this hardware?
>
> [SM] Not sure whether playing with target in isolation would be much use,
> in codel theory target should be 5-10% of interval ans interval should be
> in the order of magnitude of to be handled RTTs (the default is 100ms wic=
h
> works reasonably well even across the Atlantic, but you probably knew all
> that).
>
> >               =E2=80=A2 ( I actually have a spare "wan" ethernet port, =
so I
> guess I could hook up a PC and perform a flent test. )
> >       =E2=80=A2 It's unclear to me what the "htb" is doing, because I w=
ould have
> expected the download/upload rates to be configured here, but they appear
> not to be
>
> [SM] Likely because HTB does not reveal this when asked with the `-s`
> option, try `-q` instead and not as qdisc but as class (so maybe `tc -d
> class show dev eth2`).
>
> >       =E2=80=A2 I'm not really sure what "overlimits" means or what tha=
t does,
> and tried looking this up, but I guess the kernel source is likely the
> "best" documentation for this.  Maybe this means it's dropping?  Or is it
> ECN?
>
> I think this text about TBF explains this reasonably well (HTB is
> essentially a hierarchical version of TBF):
>
> see: https://tldp.org/HOWTO/Adv-Routing-HOWTO/lartc.qdisc.classless.html
>
> 9.2.2. Token Bucket Filter
>
> The Token Bucket Filter (TBF) is a simple qdisc that only passes packets
> arriving at a rate which is not exceeding some administratively set rate,
> but with the possibility to allow short bursts in excess of this rate.
>
> TBF is very precise, network- and processor friendly. It should be your
> first choice if you simply want to slow an interface down!
>
> The TBF implementation consists of a buffer (bucket), constantly filled b=
y
> some virtual pieces of information called tokens, at a specific rate (tok=
en
> rate). The most important parameter of the bucket is its size, that is th=
e
> number of tokens it can store.
>
> Each arriving token collects one incoming data packet from the data queue
> and is then deleted from the bucket. Associating this algorithm with the
> two flows -- token and data, gives us three possible scenarios:
>
>         =E2=80=A2 The data arrives in TBF at a rate that's equal to the r=
ate of
> incoming tokens. In this case each incoming packet has its matching token
> and passes the queue without delay.
>
>         =E2=80=A2 The data arrives in TBF at a rate that's smaller than t=
he token
> rate. Only a part of the tokens are deleted at output of each data packet
> that's sent out the queue, so the tokens accumulate, up to the bucket siz=
e.
> The unused tokens can then be used to send data a a speed that's exceedin=
g
> the standard token rate, in case short data bursts occur.
>
>         =E2=80=A2 The data arrives in TBF at a rate bigger than the token=
 rate.
> This means that the bucket will soon be devoid of tokens, which causes th=
e
> TBF to throttle itself for a while. This is called an 'overlimit
> situation'. If packets keep coming in, packets will start to get dropped.
>
> The last scenario is very important, because it allows to administrativel=
y
> shape the bandwidth available to data that's passing the filter.
>
> The accumulation of tokens allows a short burst of overlimit data to be
> still passed without loss, but any lasting overload will cause packets to
> be constantly delayed, and then dropped.
>
> Please note that in the actual implementation, tokens correspond to bytes=
,
> not packets.
>
>
> >
> > Inbound eth2 via ifb
> >
> > root@USG-Pro-4:~# tc -p -s -d qdisc show dev ifb_eth2
> > qdisc htb 1: root refcnt 2 r2q 10 default 10 direct_packets_stat 0 ver
> 3.17
> >  Sent 13029810569 bytes 29185742 pkt (dropped 0, overlimits 14774339
> requeues 0)   <---- OVERLIMITS?
> >  backlog 0b 0p requeues 0
> > qdisc fq_codel 100: parent 1:10 limit 10240p flows 1024 quantum 1514
> target 5.0ms interval 100.0ms ecn
> >  Sent 13029810569 bytes 29185742 pkt (dropped 10688, overlimits 0
> requeues 0)  <---- WOW.  DROPS!!
> >  backlog 0b 0p requeues 0
> >   maxpacket 1514 drop_overlimit 0 new_flow_count 2256895 ecn_mark 0
> >   new_flows_len 0 old_flows_len 2
> >
> > Apparently rather than applying the tc qdsic on the outbound path on th=
e
> LAN side ( eth0 ), they are applying it inbound on the the eth2 via
> ifb_eth2.
>
> [SM] Same approach that sqm-scripts takes, if you attach the ingress
> shaper to the LAN port egress all internet traffic not traversing that
> interface will not be shaped, e.g. traffic to/from the router itself or
> WiFi traffic. If you are sure that such by-pass traffic does not exist,
> putting the ingress shaper on lan-egress can save the cost of the ifb
> indirection, but for full WiFi routers that is generally not true.
>
>
> > Initially, I was pretty surprised to see so many drops on the inbound
> path, but maybe this is actually normal?
>
> [SM] Depends on your traffic and whether ECN is used or not. In your case
> it appears ECN is not used and then DROPS are the only way fq_codel can
> tell a flow to step on the brakes....
>
> >
> > I could imagine the upstream CDNs pushing pretty hard with low RTTs, bu=
t
> I would probably have expected the bottlenecks to form at the access
> points. e.g. It's gigabit all the way until it reaches the air interface =
of
> the access points.  .... Or do I have a problem in my LAN network?
>
> [SM] The idea is to create an artificial bittleneck (using HTB) so the
> most relevant queue is under AQM control...
>
> >
> > I wonder if I can log into the access points to look at them too?....
> >
> > ( BTW - to get to root on these devices you can SSH in as an "admin"
> users, and then just "sudo su" )
> >
> > ifconfig
> >
> > root@USG-Pro-4:~# ifconfig -a
> > eth0      Link encap:Ethernet  HWaddr fc:ec:da:d1:1b:9f
> >           inet addr:172.16.50.1  Bcast:172.16.50.255  Mask:255.255.255.=
0
> >           inet6 addr: [SNIP]:feec:daff:fed1:1b9f/64 Scope:Global
> >           inet6 addr: fe80::feec:daff:fed1:1b9f/64 Scope:Link
> >           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
> >           RX packets:11343139 errors:0 dropped:0 overruns:0 frame:0
> >           TX packets:21614272 errors:0 dropped:0 overruns:0 carrier:0
> >           collisions:0 txqueuelen:0
>   <---- queue len 0? Maybe this is a driver issue?
> >           RX bytes:2047750597 (1.9 GiB)  TX bytes:23484692545 (21.8 GiB=
)
> >
> > eth1      Link encap:Ethernet  HWaddr fc:ec:da:d1:1b:a0
> >           inet addr:172.16.51.1  Bcast:172.16.51.255  Mask:255.255.255.=
0
> >           inet6 addr: fe80::feec:daff:fed1:1ba0/64 Scope:Link
> >           inet6 addr: [SNIP]:daff:fed1:1ba0/64 Scope:Global
> >           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
> >           RX packets:154930 errors:0 dropped:0 overruns:0 frame:0
> >           TX packets:233294 errors:0 dropped:0 overruns:0 carrier:0
> >           collisions:0 txqueuelen:0
> >           RX bytes:32255162 (30.7 MiB)  TX bytes:116504400 (111.1 MiB)
> >
> > eth2      Link encap:Ethernet  HWaddr fc:ec:da:d1:1b:a1
> >           inet addr:172.88.[SNIP]  Bcast:255.255.255.255
> Mask:255.255.240.0
> >           inet6 addr: [SNIP]:d474:3d71/128 Scope:Global
> >           inet6 addr: fe80::feec:daff:fed1:1ba1/64 Scope:Link
> >           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
> >           RX packets:60912335 errors:0 dropped:0 overruns:0 frame:0
> >           TX packets:10546508 errors:0 dropped:0 overruns:0 carrier:0
> >           collisions:0 txqueuelen:0
> >           RX bytes:26087920038 (24.2 GiB)  TX bytes:1892854725 (1.7 GiB=
)
> >
> > eth3      Link encap:Ethernet  HWaddr fc:ec:da:d1:1b:a2
> >           BROADCAST MULTICAST  MTU:1500  Metric:1
> >           RX packets:0 errors:0 dropped:0 overruns:0 frame:0
> >           TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
> >           collisions:0 txqueuelen:0
> >           RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
> >
> > eth0.20   Link encap:Ethernet  HWaddr fc:ec:da:d1:1b:9f
> >           inet addr:172.16.60.1  Bcast:172.16.60.255  Mask:255.255.255.=
0
> >           inet6 addr: [SNIP]:daff:fed1:1b9f/64 Scope:Global
> >           inet6 addr: fe80::feec:daff:fed1:1b9f/64 Scope:Link
> >           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
> >           RX packets:782123 errors:0 dropped:0 overruns:0 frame:0
> >           TX packets:480343 errors:0 dropped:0 overruns:0 carrier:0
> >           collisions:0 txqueuelen:0
> >           RX bytes:60600161 (57.7 MiB)  TX bytes:108372413 (103.3 MiB)
> >
> > eth0.40   Link encap:Ethernet  HWaddr fc:ec:da:d1:1b:9f
> >           inet addr:172.16.40.1  Bcast:172.16.40.255  Mask:255.255.255.=
0
> >           inet6 addr: [SNIP]:daff:fed1:1b9f/64 Scope:Global
> >           inet6 addr: fe80::feec:daff:fed1:1b9f/64 Scope:Link
> >           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
> >           RX packets:2695 errors:0 dropped:0 overruns:0 frame:0
> >           TX packets:194291 errors:0 dropped:0 overruns:0 carrier:0
> >           collisions:0 txqueuelen:0
> >           RX bytes:123970 (121.0 KiB)  TX bytes:42370172 (40.4 MiB)
> >
> > ifb_eth2  Link encap:Ethernet  HWaddr de:ed:87:85:80:27
> >           inet6 addr: fe80::dced:87ff:fe85:8027/64 Scope:Link
> >           UP BROADCAST RUNNING NOARP  MTU:1500  Metric:1
> >           RX packets:29656324 errors:0 dropped:2531 overruns:0 frame:0
> >           TX packets:29653793 errors:0 dropped:0 overruns:0 carrier:0
> >           collisions:0 txqueuelen:32
>  <----- queue len 32?  Curious
> >           RX bytes:13086765284 (12.1 GiB)  TX bytes:13086264146 (12.1
> GiB)
> >
> >
> > System info
> >
> > This has a prehistoric kernel, I guess because they have some stuff tha=
t
> taints the kernel
> >
> > root@USG-Pro-4:~# uname -a
> > Linux USG-Pro-4 3.10.107-UBNT #1 SMP Thu Jan 12 08:30:03 UTC 2023 mips6=
4
> GNU/Linux
>
> [SM] I remember the time we felt great about using a series 3 kernel
> instead of old series 2 gunk, but upstream is at series 6 by now (but it
> also started to increase major numbers more aggressively after series 2)
>
> >
> > root@USG-Pro-4:~# cat /var/log/dmesg | grep taint
> > ubnt_platform: module license 'Proprietary' taints kernel.
> > Disabling lock debugging due to kernel taint
> >
> > I also notice this module, but I'm not sure it is in use.
> > /lib/modules/3.10.107-UBNT/kernel/net/netfilter/xt_rateest.ko
> >
> >
> > root@USG-Pro-4:~# cat /proc/cpuinfo
> > system type : UBNT_E220
> > machine : Unknown
> > processor : 0
> > cpu model : Cavium Octeon II V0.1
> > BogoMIPS : 2000.00
> > wait instruction : yes
> > microsecond timers : yes
> > tlb_entries : 128
> > extra interrupt vector : yes
> > hardware watchpoint : yes, count: 2, address/irw mask: [0x0ffc, 0x0ffb]
> > isa : mips1 mips2 mips3 mips4 mips5 mips64r2
> > ASEs implemented :
> > shadow register sets : 1
> > kscratch registers : 3
> > core : 0
> > VCED exceptions : not available
> > VCEI exceptions : not available
> >
> > processor : 1
> > cpu model : Cavium Octeon II V0.1
> > BogoMIPS : 2000.00
> > wait instruction : yes
> > microsecond timers : yes
> > tlb_entries : 128
> > extra interrupt vector : yes
> > hardware watchpoint : yes, count: 2, address/irw mask: [0x0ffc, 0x0ffb]
> > isa : mips1 mips2 mips3 mips4 mips5 mips64r2
> > ASEs implemented :
> > shadow register sets : 1
> > kscratch registers : 3
> > core : 1
> > VCED exceptions : not available
> > VCEI exceptions : not available
> >
> >
> >
> > root@USG-Pro-4:~# ethtool -i eth2
> > driver: octeon-ethernet
> > version: 2.0
> > firmware-version:
> > bus-info: Builtin
> > supports-statistics: no
> > supports-test: no
> > supports-eeprom-access: no
> > supports-register-dump: no
> > supports-priv-flags: no
> >
> > root@USG-Pro-4:~# ethtool -S eth2
> > no stats available
> >
> > ( Oh great! Thanks guys! )
> >
> > root@USG-Pro-4:~# netstat -ia
> > Kernel Interface table
> > Iface   MTU Met   RX-OK RX-ERR RX-DRP RX-OVR    TX-OK TX-ERR TX-DRP
> TX-OVR Flg
> > eth0       1500 0  11340913      0      0 0      21612063      0      0
>     0 BMRU
> > eth1       1500 0    154902      0      0 0        233236      0      0
>     0 BMRU
> > eth2       1500 0  60898610      0      0 0      10544414      0      0
>     0 BMRU
> > eth3       1500 0         0      0      0 0             0      0      0
>     0 BM
> > eth0.20    1500 0    781992      0      0 0        480214      0      0
>     0 BMRU
> > eth0.40    1500 0      2695      0      0 0        194260      0      0
>     0 BMRU
> > ifb_eth2   1500 0  29642598      0   2530 0      29640068      0      0
>     0 BORU   <---- RX drops?
> > imq0      16000 0         0      0      0 0             0      0      0
>     0 ORU
> > lo        65536 0      9255      0      0 0          9255      0      0
>     0 LRU
> > loop0      1500 0         0      0      0 0             0      0      0
>     0 BM
> > loop1      1500 0         0      0      0 0             0      0      0
>     0 BM
> > loop2      1500 0         0      0      0 0             0      0      0
>     0 BM
> > loop3      1500 0         0      0      0 0             0      0      0
>     0 BM
> > npi0       1500 0         0      0      0 0             0      0      0
>     0 BM
> > npi1       1500 0         0      0      0 0             0      0      0
>     0 BM
> > npi2       1500 0         0      0      0 0             0      0      0
>     0 BM
> > npi3       1500 0         0      0      0 0             0      0      0
>     0 BM
> >
> > root@USG-Pro-4:/opt/vyatta/etc# cat version
> > Version:      v4.4.57.5578372.230112.0824
> >
> > --
> > Regards,
> > Dave Seddon
> > _______________________________________________
> > Cake mailing list
> > Cake@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/cake
>
>

--=20
Regards,
Dave Seddon
+1 415 857 5102

--0000000000008c2733060dfcff8f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Sebastian!</div><div><br></div><div>Now I see =
the rates!!<br></div><div><br></div><div>I actually reduced the rates to en=
sure this device is the bottleneck 80/10 Mb/s<br></div><div><br></div><div>=
<img src=3D"cid:ii_lqwuczo60" alt=3D"image.png" width=3D"571" height=3D"64"=
></div><div><span style=3D"font-family:monospace"><br></span></div><div><sp=
an style=3D"font-family:monospace">root@USG-Pro-4:~# tc -d class show dev e=
th2<br>class htb 1:10 root leaf 100: prio 0 quantum 118750 rate 9500Kbit ce=
il 9500Kbit burst 1598b/1 mpu 0b overhead 0b cburst 1598b/1 mpu 0b overhead=
 0b level 0 <br>class fq_codel 100:12c parent 100: <br>class fq_codel 100:2=
13 parent 100: <br>class fq_codel 100:22e parent 100: <br></span></div><div=
><span style=3D"font-family:monospace"><br></span></div><div><span style=3D=
"font-family:monospace">root@USG-Pro-4:~# tc -d class show dev ifb_eth2<br>=
class htb 1:10 root leaf 100: prio 0 quantum 200000 rate 76000Kbit ceil 760=
00Kbit burst 1596b/1 mpu 0b overhead 0b cburst 1596b/1 mpu 0b overhead 0b l=
evel 0 <br>class fq_codel 100:2c8 parent 100: <br>class fq_codel 100:3df pa=
rent 100: </span></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Tue, Jan 2, 2024 at 12:53=E2=80=AFPM Sebastian Mo=
eller &lt;<a href=3D"mailto:moeller0@gmx.de">moeller0@gmx.de</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Dave.<br>
<br>
just a few comments from the peanut gallery...<br>
<br>
<br>
&gt; On Jan 2, 2024, at 19:59, dave seddon via Cake &lt;<a href=3D"mailto:c=
ake@lists.bufferbloat.net" target=3D"_blank">cake@lists.bufferbloat.net</a>=
&gt; wrote:<br>
&gt; <br>
&gt; G&#39;day,<br>
&gt; <br>
&gt; Happy new year y&#39;all<br>
<br>
+1<br>
<br>
&gt; <br>
&gt; I thought people might be interested to see what Ubiquity/Unifi is doi=
ng with &quot;Smart Queues&quot; on their devices.=C2=A0 The documentation =
on their website is not very informative.<br>
&gt; <br>
&gt; Hopefully, this is vaguely interesting because Ubiquity is widely depl=
oyed and apparently they have a market cap of &gt;$8 billion, so you would =
hope they do a &quot;good job&quot; (... Seems like they might be a target =
customer for libreqos )<br>
&gt; <br>
&gt; &lt;image.png&gt;<br>
&gt; <a href=3D"https://finance.yahoo.com/quote/ui/" rel=3D"noreferrer" tar=
get=3D"_blank">https://finance.yahoo.com/quote/ui/</a><br>
&gt; <br>
&gt; ( I use Unifi because their wifi stuff seems ok, and all the switching=
/routing/wifi is all integrated into the single gui control system.=C2=A0 A=
lso honestly, I&#39;m not sure I know how to do prefix delegation stuff on =
Linux by hand. )<br>
&gt; <br>
&gt; Network diagram<br>
&gt; <br>
&gt; Spectrum Cable Internets &lt;----------&gt; Eth2 [ USG-Pro-4 ] Eth0 &l=
t;---&gt; [Switches] &lt;----&gt; Access points<br>
&gt; <br>
&gt; &quot;Smart Queue&quot; Configuration<br>
&gt; Ubiquity doesn&#39;t have many knobs, you just enable &quot;smart queu=
es&quot; and set the bandwidth.<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; &quot;Smart Queue&quot; Implementation<br>
&gt; <br>
&gt; Looks like they only apply tc qdiscs to the Eth2, and sadly this is NO=
T cake, but fq_codel.<br>
&gt; <br>
&gt; And cake isn&#39;t available :(<br>
&gt; <br>
&gt; root@USG-Pro-4:~# tc qdisc replace dev eth0 cake bandwidth 100m rtt 20=
ms<br>
&gt; Unknown qdisc &quot;cake&quot;, hence option &quot;bandwidth&quot; is =
unparsable<br>
&gt; <br>
&gt; Outbound eth2<br>
&gt; <br>
&gt; root@USG-Pro-4:~# tc -p -s -d qdisc show dev eth2<br>
&gt; qdisc htb 1: root refcnt 2 r2q 10 default 10 direct_packets_stat 0 ver=
 3.17<br>
&gt;=C2=A0 Sent 1071636465 bytes 5624944 pkt (dropped 0, overlimits 523078 =
requeues 0)=C2=A0 &lt;---- OVERLIMITS?<br>
&gt;=C2=A0 backlog 0b 0p requeues 0 <br>
&gt; qdisc fq_codel 100: parent 1:10 limit 10240p flows 1024 quantum 1514 t=
arget 5.0ms interval 100.0ms ecn <br>
&gt;=C2=A0 Sent 1071636465 bytes 5624944 pkt (dropped 2384, overlimits 0 re=
queues 0)=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;----- DROPS<br>
&gt;=C2=A0 backlog 0b 0p requeues 0 <br>
&gt;=C2=A0 =C2=A0maxpacket 1514 drop_overlimit 0 new_flow_count 1244991 ecn=
_mark 0<br>
&gt;=C2=A0 =C2=A0new_flows_len 1 old_flows_len 1<br>
&gt; qdisc ingress ffff: parent ffff:fff1 ---------------- <br>
&gt;=C2=A0 Sent 12636045136 bytes 29199533 pkt (dropped 0, overlimits 0 req=
ueues 0) <br>
&gt;=C2=A0 backlog 0b 0p requeues 0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=80=A2 target 5.0ms is the default ( <a h=
ref=3D"https://www.man7.org/linux/man-pages/man8/tc-fq_codel.8.html" rel=3D=
"noreferrer" target=3D"_blank">https://www.man7.org/linux/man-pages/man8/tc=
-fq_codel.8.html</a> ).=C2=A0 I wonder if they did much testing on this har=
dware?<br>
<br>
[SM] Not sure whether playing with target in isolation would be much use, i=
n codel theory target should be 5-10% of interval ans interval should be in=
 the order of magnitude of to be handled RTTs (the default is 100ms wich wo=
rks reasonably well even across the Atlantic, but you probably knew all tha=
t).<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=80=A2 ( I ac=
tually have a spare &quot;wan&quot; ethernet port, so I guess I could hook =
up a PC and perform a flent test. )<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=80=A2 It&#39;s unclear to me what the &q=
uot;htb&quot; is doing, because I would have expected the download/upload r=
ates to be configured here, but they appear not to be<br>
<br>
[SM] Likely because HTB does not reveal this when asked with the `-s` optio=
n, try `-q` instead and not as qdisc but as class (so maybe `tc -d class sh=
ow dev eth2`).<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=80=A2 I&#39;m not really sure what &quot=
;overlimits&quot; means or what that does, and tried looking this up, but I=
 guess the kernel source is likely the &quot;best&quot; documentation for t=
his.=C2=A0 Maybe this means it&#39;s dropping?=C2=A0 Or is it ECN?<br>
<br>
I think this text about TBF explains this reasonably well (HTB is essential=
ly a hierarchical version of TBF):<br>
<br>
see: <a href=3D"https://tldp.org/HOWTO/Adv-Routing-HOWTO/lartc.qdisc.classl=
ess.html" rel=3D"noreferrer" target=3D"_blank">https://tldp.org/HOWTO/Adv-R=
outing-HOWTO/lartc.qdisc.classless.html</a><br>
<br>
9.2.2. Token Bucket Filter<br>
<br>
The Token Bucket Filter (TBF) is a simple qdisc that only passes packets ar=
riving at a rate which is not exceeding some administratively set rate, but=
 with the possibility to allow short bursts in excess of this rate.<br>
<br>
TBF is very precise, network- and processor friendly. It should be your fir=
st choice if you simply want to slow an interface down!<br>
<br>
The TBF implementation consists of a buffer (bucket), constantly filled by =
some virtual pieces of information called tokens, at a specific rate (token=
 rate). The most important parameter of the bucket is its size, that is the=
 number of tokens it can store.<br>
<br>
Each arriving token collects one incoming data packet from the data queue a=
nd is then deleted from the bucket. Associating this algorithm with the two=
 flows -- token and data, gives us three possible scenarios:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=80=A2 The data arrives in TBF at a rate tha=
t&#39;s equal to the rate of incoming tokens. In this case each incoming pa=
cket has its matching token and passes the queue without delay.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=80=A2 The data arrives in TBF at a rate tha=
t&#39;s smaller than the token rate. Only a part of the tokens are deleted =
at output of each data packet that&#39;s sent out the queue, so the tokens =
accumulate, up to the bucket size. The unused tokens can then be used to se=
nd data a a speed that&#39;s exceeding the standard token rate, in case sho=
rt data bursts occur.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=80=A2 The data arrives in TBF at a rate big=
ger than the token rate. This means that the bucket will soon be devoid of =
tokens, which causes the TBF to throttle itself for a while. This is called=
 an &#39;overlimit situation&#39;. If packets keep coming in, packets will =
start to get dropped.<br>
<br>
The last scenario is very important, because it allows to administratively =
shape the bandwidth available to data that&#39;s passing the filter.<br>
<br>
The accumulation of tokens allows a short burst of overlimit data to be sti=
ll passed without loss, but any lasting overload will cause packets to be c=
onstantly delayed, and then dropped.<br>
<br>
Please note that in the actual implementation, tokens correspond to bytes, =
not packets.<br>
<br>
<br>
&gt; <br>
&gt; Inbound eth2 via ifb<br>
&gt; <br>
&gt; root@USG-Pro-4:~# tc -p -s -d qdisc show dev ifb_eth2<br>
&gt; qdisc htb 1: root refcnt 2 r2q 10 default 10 direct_packets_stat 0 ver=
 3.17<br>
&gt;=C2=A0 Sent 13029810569 bytes 29185742 pkt (dropped 0, overlimits 14774=
339 requeues 0)=C2=A0 =C2=A0&lt;---- OVERLIMITS?<br>
&gt;=C2=A0 backlog 0b 0p requeues 0 <br>
&gt; qdisc fq_codel 100: parent 1:10 limit 10240p flows 1024 quantum 1514 t=
arget 5.0ms interval 100.0ms ecn <br>
&gt;=C2=A0 Sent 13029810569 bytes 29185742 pkt (dropped 10688, overlimits 0=
 requeues 0)=C2=A0 &lt;---- WOW.=C2=A0 DROPS!!<br>
&gt;=C2=A0 backlog 0b 0p requeues 0 <br>
&gt;=C2=A0 =C2=A0maxpacket 1514 drop_overlimit 0 new_flow_count 2256895 ecn=
_mark 0<br>
&gt;=C2=A0 =C2=A0new_flows_len 0 old_flows_len 2<br>
&gt; <br>
&gt; Apparently rather than applying the tc qdsic on the outbound path on t=
he LAN side ( eth0 ), they are applying it inbound on the the eth2 via ifb_=
eth2.<br>
<br>
[SM] Same approach that sqm-scripts takes, if you attach the ingress shaper=
 to the LAN port egress all internet traffic not traversing that interface =
will not be shaped, e.g. traffic to/from the router itself or WiFi traffic.=
 If you are sure that such by-pass traffic does not exist, putting the ingr=
ess shaper on lan-egress can save the cost of the ifb indirection, but for =
full WiFi routers that is generally not true.<br>
<br>
<br>
&gt; Initially, I was pretty surprised to see so many drops on the inbound =
path, but maybe this is actually normal?<br>
<br>
[SM] Depends on your traffic and whether ECN is used or not. In your case i=
t appears ECN is not used and then DROPS are the only way fq_codel can tell=
 a flow to step on the brakes....<br>
<br>
&gt; <br>
&gt; I could imagine the upstream CDNs pushing pretty hard with low RTTs, b=
ut I would probably have expected the bottlenecks to form at the access poi=
nts. e.g. It&#39;s gigabit all the way until it reaches the air interface o=
f the access points.=C2=A0 .... Or do I have a problem in my LAN network?<b=
r>
<br>
[SM] The idea is to create an artificial bittleneck (using HTB) so the most=
 relevant queue is under AQM control...<br>
<br>
&gt; <br>
&gt; I wonder if I can log into the access points to look at them too?....<=
br>
&gt; <br>
&gt; ( BTW - to get to root on these devices you can SSH in as an &quot;adm=
in&quot; users, and then just &quot;sudo su&quot; )<br>
&gt; <br>
&gt; ifconfig<br>
&gt; <br>
&gt; root@USG-Pro-4:~# ifconfig -a<br>
&gt; eth0=C2=A0 =C2=A0 =C2=A0 Link encap:Ethernet=C2=A0 HWaddr fc:ec:da:d1:=
1b:9f=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet addr:172.16.50.1=C2=A0 Bc=
ast:172.16.50.255=C2=A0 Mask:255.255.255.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet6 addr: [SNIP]:feec:daff:f=
ed1:1b9f/64 Scope:Global<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet6 addr: fe80::feec:daff:fe=
d1:1b9f/64 Scope:Link<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0UP BROADCAST RUNNING MULTICAST=
=C2=A0 MTU:1500=C2=A0 Metric:1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RX packets:11343139 errors:0 d=
ropped:0 overruns:0 frame:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0TX packets:21614272 errors:0 d=
ropped:0 overruns:0 carrier:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0collisions:0 txqueuelen:0=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;---- que=
ue len 0? Maybe this is a driver issue?=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RX bytes:2047750597 (1.9 GiB)=
=C2=A0 TX bytes:23484692545 (21.8 GiB)<br>
&gt; <br>
&gt; eth1=C2=A0 =C2=A0 =C2=A0 Link encap:Ethernet=C2=A0 HWaddr fc:ec:da:d1:=
1b:a0=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet addr:172.16.51.1=C2=A0 Bc=
ast:172.16.51.255=C2=A0 Mask:255.255.255.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet6 addr: fe80::feec:daff:fe=
d1:1ba0/64 Scope:Link<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet6 addr: [SNIP]:daff:fed1:1=
ba0/64 Scope:Global<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0UP BROADCAST RUNNING MULTICAST=
=C2=A0 MTU:1500=C2=A0 Metric:1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RX packets:154930 errors:0 dro=
pped:0 overruns:0 frame:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0TX packets:233294 errors:0 dro=
pped:0 overruns:0 carrier:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0collisions:0 txqueuelen:0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RX bytes:32255162 (30.7 MiB)=
=C2=A0 TX bytes:116504400 (111.1 MiB)<br>
&gt; <br>
&gt; eth2=C2=A0 =C2=A0 =C2=A0 Link encap:Ethernet=C2=A0 HWaddr fc:ec:da:d1:=
1b:a1=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet addr:172.88.[SNIP]=C2=A0 =
Bcast:255.255.255.255=C2=A0 Mask:255.255.240.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet6 addr: [SNIP]:d474:3d71/1=
28 Scope:Global<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet6 addr: fe80::feec:daff:fe=
d1:1ba1/64 Scope:Link<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0UP BROADCAST RUNNING MULTICAST=
=C2=A0 MTU:1500=C2=A0 Metric:1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RX packets:60912335 errors:0 d=
ropped:0 overruns:0 frame:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0TX packets:10546508 errors:0 d=
ropped:0 overruns:0 carrier:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0collisions:0 txqueuelen:0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RX bytes:26087920038 (24.2 GiB=
)=C2=A0 TX bytes:1892854725 (1.7 GiB)<br>
&gt; <br>
&gt; eth3=C2=A0 =C2=A0 =C2=A0 Link encap:Ethernet=C2=A0 HWaddr fc:ec:da:d1:=
1b:a2=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BROADCAST MULTICAST=C2=A0 MTU:=
1500=C2=A0 Metric:1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RX packets:0 errors:0 dropped:=
0 overruns:0 frame:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0TX packets:0 errors:0 dropped:=
0 overruns:0 carrier:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0collisions:0 txqueuelen:0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RX bytes:0 (0.0 B)=C2=A0 TX by=
tes:0 (0.0 B)<br>
&gt; <br>
&gt; eth0.20=C2=A0 =C2=A0Link encap:Ethernet=C2=A0 HWaddr fc:ec:da:d1:1b:9f=
=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet addr:172.16.60.1=C2=A0 Bc=
ast:172.16.60.255=C2=A0 Mask:255.255.255.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet6 addr: [SNIP]:daff:fed1:1=
b9f/64 Scope:Global<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet6 addr: fe80::feec:daff:fe=
d1:1b9f/64 Scope:Link<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0UP BROADCAST RUNNING MULTICAST=
=C2=A0 MTU:1500=C2=A0 Metric:1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RX packets:782123 errors:0 dro=
pped:0 overruns:0 frame:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0TX packets:480343 errors:0 dro=
pped:0 overruns:0 carrier:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0collisions:0 txqueuelen:0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RX bytes:60600161 (57.7 MiB)=
=C2=A0 TX bytes:108372413 (103.3 MiB)<br>
&gt; <br>
&gt; eth0.40=C2=A0 =C2=A0Link encap:Ethernet=C2=A0 HWaddr fc:ec:da:d1:1b:9f=
=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet addr:172.16.40.1=C2=A0 Bc=
ast:172.16.40.255=C2=A0 Mask:255.255.255.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet6 addr: [SNIP]:daff:fed1:1=
b9f/64 Scope:Global<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet6 addr: fe80::feec:daff:fe=
d1:1b9f/64 Scope:Link<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0UP BROADCAST RUNNING MULTICAST=
=C2=A0 MTU:1500=C2=A0 Metric:1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RX packets:2695 errors:0 dropp=
ed:0 overruns:0 frame:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0TX packets:194291 errors:0 dro=
pped:0 overruns:0 carrier:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0collisions:0 txqueuelen:0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RX bytes:123970 (121.0 KiB)=C2=
=A0 TX bytes:42370172 (40.4 MiB)<br>
&gt; <br>
&gt; ifb_eth2=C2=A0 Link encap:Ethernet=C2=A0 HWaddr de:ed:87:85:80:27=C2=
=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet6 addr: fe80::dced:87ff:fe=
85:8027/64 Scope:Link<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0UP BROADCAST RUNNING NOARP=C2=
=A0 MTU:1500=C2=A0 Metric:1<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RX packets:29656324 errors:0 d=
ropped:2531 overruns:0 frame:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0TX packets:29653793 errors:0 d=
ropped:0 overruns:0 carrier:0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0collisions:0 txqueuelen:32=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;----- queue len 32?=C2=A0 Curi=
ous<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0RX bytes:13086765284 (12.1 GiB=
)=C2=A0 TX bytes:13086264146 (12.1 GiB)<br>
&gt; <br>
&gt; <br>
&gt; System info<br>
&gt; <br>
&gt; This has a prehistoric kernel, I guess because they have some stuff th=
at taints the kernel<br>
&gt; <br>
&gt; root@USG-Pro-4:~# uname -a<br>
&gt; Linux USG-Pro-4 3.10.107-UBNT #1 SMP Thu Jan 12 08:30:03 UTC 2023 mips=
64 GNU/Linux<br>
<br>
[SM] I remember the time we felt great about using a series 3 kernel instea=
d of old series 2 gunk, but upstream is at series 6 by now (but it also sta=
rted to increase major numbers more aggressively after series 2)<br>
<br>
&gt; <br>
&gt; root@USG-Pro-4:~# cat /var/log/dmesg | grep taint<br>
&gt; ubnt_platform: module license &#39;Proprietary&#39; taints kernel.<br>
&gt; Disabling lock debugging due to kernel taint<br>
&gt; <br>
&gt; I also notice this module, but I&#39;m not sure it is in use.<br>
&gt; /lib/modules/3.10.107-UBNT/kernel/net/netfilter/xt_rateest.ko<br>
&gt; <br>
&gt; <br>
&gt; root@USG-Pro-4:~# cat /proc/cpuinfo <br>
&gt; system type : UBNT_E220<br>
&gt; machine : Unknown<br>
&gt; processor : 0<br>
&gt; cpu model : Cavium Octeon II V0.1<br>
&gt; BogoMIPS : 2000.00<br>
&gt; wait instruction : yes<br>
&gt; microsecond timers : yes<br>
&gt; tlb_entries : 128<br>
&gt; extra interrupt vector : yes<br>
&gt; hardware watchpoint : yes, count: 2, address/irw mask: [0x0ffc, 0x0ffb=
]<br>
&gt; isa : mips1 mips2 mips3 mips4 mips5 mips64r2<br>
&gt; ASEs implemented :<br>
&gt; shadow register sets : 1<br>
&gt; kscratch registers : 3<br>
&gt; core : 0<br>
&gt; VCED exceptions : not available<br>
&gt; VCEI exceptions : not available<br>
&gt; <br>
&gt; processor : 1<br>
&gt; cpu model : Cavium Octeon II V0.1<br>
&gt; BogoMIPS : 2000.00<br>
&gt; wait instruction : yes<br>
&gt; microsecond timers : yes<br>
&gt; tlb_entries : 128<br>
&gt; extra interrupt vector : yes<br>
&gt; hardware watchpoint : yes, count: 2, address/irw mask: [0x0ffc, 0x0ffb=
]<br>
&gt; isa : mips1 mips2 mips3 mips4 mips5 mips64r2<br>
&gt; ASEs implemented :<br>
&gt; shadow register sets : 1<br>
&gt; kscratch registers : 3<br>
&gt; core : 1<br>
&gt; VCED exceptions : not available<br>
&gt; VCEI exceptions : not available<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; root@USG-Pro-4:~# ethtool -i eth2<br>
&gt; driver: octeon-ethernet<br>
&gt; version: 2.0<br>
&gt; firmware-version: <br>
&gt; bus-info: Builtin<br>
&gt; supports-statistics: no<br>
&gt; supports-test: no<br>
&gt; supports-eeprom-access: no<br>
&gt; supports-register-dump: no<br>
&gt; supports-priv-flags: no<br>
&gt; <br>
&gt; root@USG-Pro-4:~# ethtool -S eth2<br>
&gt; no stats available<br>
&gt; <br>
&gt; ( Oh great! Thanks guys! )<br>
&gt; <br>
&gt; root@USG-Pro-4:~# netstat -ia<br>
&gt; Kernel Interface table<br>
&gt; Iface=C2=A0 =C2=A0MTU Met=C2=A0 =C2=A0RX-OK RX-ERR RX-DRP RX-OVR=C2=A0=
 =C2=A0 TX-OK TX-ERR TX-DRP TX-OVR Flg<br>
&gt; eth0=C2=A0 =C2=A0 =C2=A0 =C2=A01500 0=C2=A0 11340913=C2=A0 =C2=A0 =C2=
=A0 0=C2=A0 =C2=A0 =C2=A0 0 0=C2=A0 =C2=A0 =C2=A0 21612063=C2=A0 =C2=A0 =C2=
=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 BMRU<br>
&gt; eth1=C2=A0 =C2=A0 =C2=A0 =C2=A01500 0=C2=A0 =C2=A0 154902=C2=A0 =C2=A0=
 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 233236=C2=A0 =
=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 BMRU<br>
&gt; eth2=C2=A0 =C2=A0 =C2=A0 =C2=A01500 0=C2=A0 60898610=C2=A0 =C2=A0 =C2=
=A0 0=C2=A0 =C2=A0 =C2=A0 0 0=C2=A0 =C2=A0 =C2=A0 10544414=C2=A0 =C2=A0 =C2=
=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 BMRU<br>
&gt; eth3=C2=A0 =C2=A0 =C2=A0 =C2=A01500 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A00=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 0=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=A0=
 =C2=A0 =C2=A0 0 BM<br>
&gt; eth0.20=C2=A0 =C2=A0 1500 0=C2=A0 =C2=A0 781992=C2=A0 =C2=A0 =C2=A0 0=
=C2=A0 =C2=A0 =C2=A0 0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 480214=C2=A0 =C2=A0 =C2=
=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 BMRU<br>
&gt; eth0.40=C2=A0 =C2=A0 1500 0=C2=A0 =C2=A0 =C2=A0 2695=C2=A0 =C2=A0 =C2=
=A0 0=C2=A0 =C2=A0 =C2=A0 0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 194260=C2=A0 =C2=
=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 BMRU<br>
&gt; ifb_eth2=C2=A0 =C2=A01500 0=C2=A0 29642598=C2=A0 =C2=A0 =C2=A0 0=C2=A0=
 =C2=A02530 0=C2=A0 =C2=A0 =C2=A0 29640068=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=
=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 BORU=C2=A0 =C2=A0&lt;---- RX drops?<br>
&gt; imq0=C2=A0 =C2=A0 =C2=A0 16000 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=
=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0=
 =C2=A0 0 ORU<br>
&gt; lo=C2=A0 =C2=A0 =C2=A0 =C2=A0 65536 0=C2=A0 =C2=A0 =C2=A0 9255=C2=A0 =
=C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 9=
255=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 LRU<b=
r>
&gt; loop0=C2=A0 =C2=A0 =C2=A0 1500 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=
=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0=
 =C2=A0 0 BM<br>
&gt; loop1=C2=A0 =C2=A0 =C2=A0 1500 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=
=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0=
 =C2=A0 0 BM<br>
&gt; loop2=C2=A0 =C2=A0 =C2=A0 1500 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=
=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0=
 =C2=A0 0 BM<br>
&gt; loop3=C2=A0 =C2=A0 =C2=A0 1500 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00=C2=
=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0=
 =C2=A0 0 BM<br>
&gt; npi0=C2=A0 =C2=A0 =C2=A0 =C2=A01500 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A00=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 0=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=A0=
 =C2=A0 =C2=A0 0 BM<br>
&gt; npi1=C2=A0 =C2=A0 =C2=A0 =C2=A01500 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A00=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 0=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=A0=
 =C2=A0 =C2=A0 0 BM<br>
&gt; npi2=C2=A0 =C2=A0 =C2=A0 =C2=A01500 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A00=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 0=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=A0=
 =C2=A0 =C2=A0 0 BM<br>
&gt; npi3=C2=A0 =C2=A0 =C2=A0 =C2=A01500 0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A00=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0 0=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A0 0=C2=A0 =C2=A0 =C2=A0 0=C2=A0=
 =C2=A0 =C2=A0 0 BM<br>
&gt; <br>
&gt; root@USG-Pro-4:/opt/vyatta/etc# cat version <br>
&gt; Version:=C2=A0 =C2=A0 =C2=A0 v4.4.57.5578372.230112.0824<br>
&gt; <br>
&gt; -- <br>
&gt; Regards,<br>
&gt; Dave Seddon<br>
&gt; _______________________________________________<br>
&gt; Cake mailing list<br>
&gt; <a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@l=
ists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"norefer=
rer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
<br>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Regards,<br></div>Dave=
 Seddon<br>+1 415 857 5102<br></div></div></div></div></div></div>

--0000000000008c2733060dfcff8f--

--0000000000008c2733060dfcff90
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_lqwuczo60>
X-Attachment-Id: ii_lqwuczo60

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
paPzAcZowAAAAABJRU5ErkJggg==
--0000000000008c2733060dfcff90--

--===============8604284849978460909==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8604284849978460909==--

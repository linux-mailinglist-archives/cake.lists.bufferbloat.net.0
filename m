Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C208B64E9
	for <lists+cake@lfdr.de>; Mon, 29 Apr 2024 23:55:22 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id C5DAD3CB48;
	Mon, 29 Apr 2024 17:55:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714427721;
	bh=Vn79O0UXEKoaag1zsrI7mBeq5QGnV7Oat7qjXFtMWjI=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=XFAHSrLv6mLeZfEd+ydIudR3AubV6P11s858XjkGndIi+2BaU0wAAUnx9fsQ9jhI3
	 5HMHVVpZ6I0Ou7WJCQ45f8tNC+uVRGP+IMU9fnmPsdRUnMVSBQyaEs0XuyIVVmXl+/
	 AcfO6Y4pXunI9D8FvcHaU5+A2V51bIGEo+qnEeFZg+leVxhi8o4GGUEGTL8yyhjxK2
	 PuFZIpuODsRpYctZdFcA/jZTNiy/fYoociEFpKpeVup85A+X+PNOrg3Yt6vETZInht
	 JBej+hSDFJTEj4B1knGX5BSDT3bzIVFk3PiqlchL+1ooxL9Fn5o4HJeBgMLxWHNUjv
	 nYwpJ7gplXhzQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 997673B2A4
 for <cake@lists.bufferbloat.net>; Mon, 29 Apr 2024 17:55:20 -0400 (EDT)
Received: by mail-qk1-x732.google.com with SMTP id
 af79cd13be357-790c36dcee9so207142985a.2
 for <cake@lists.bufferbloat.net>; Mon, 29 Apr 2024 14:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1714427720; x=1715032520; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=cSiAcZOKjlWLsoTUb2adudYbp8ue0hp6tB5A8EH3sWE=;
 b=CXA4QLHmJfLn3Exo8/IJCFhF+Mb4L3wMEc/20FiztLioQ0OuDRQhjq7SkAgs2BgsBo
 wz/bjP648SR/TWQAEmn0L6cSD7pPw36lbiFsBYbcWQUdOXjPOajJoK8KNG70e8ji26a5
 5DV2tjOyflsVCn8MK2FjHvfeBKHOHiOo873lsLuXefFCX42CVacQuwTCdt/qhVKGTCWy
 O914ZD1usp2xNDAmg4lTR1wpzRnmlx3TRjsnkMwMCHnNJRzk8ffOnWu5DOYNwjhK2H5m
 0w2ThMbMXLP2bZKplMiPaNgWVvpnfkDWrCaf6QzfB90tLpX+GaDcsE4FkdnspYhi33QU
 HrGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714427720; x=1715032520;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=cSiAcZOKjlWLsoTUb2adudYbp8ue0hp6tB5A8EH3sWE=;
 b=o6TvlP6QgIXRcTqhxIh1Gw8MglyVHGa0lQijOOHIUuvfQ2CnM532ZbwGAUdnVUc1Cj
 WR8JoKoU9cQHpL9V1AREfMQlh8GQSRC2a9/RtedjzWfH3cWxl7w8yKVcUdoHCAi1kRe0
 wFDDCPJzf2C0k0uILmbgkL6Xk+9EZAV4qATlU4+JAHE2KOA1BTuGH7HvH4+WP70G1rLn
 pRfuPWFC4D6pXNFazB7jRVouIsUSZui4Ff6p3m3jCiaEK88SFV1NIrX7x7IrWFGzw8N1
 m1Sxo3dT+BVtltoxFEsnw03/DyCMG2H/llgK9TN6qtaXydOvB3PlDaIrLpsjFDY7NWwt
 uHMw==
X-Gm-Message-State: AOJu0YwKvkFSIMD8TrmnkIcSa3j9EAzsXwjjqUR0SUV7W9k2YJZuCSn3
 bw5APnDkiti5yGiu0cg2k6yUycFXekxRvjClvTtnPo2dy5Wa4BHWbRxLhWW0gk/PvO76/fvNaId
 YToJLyaoouXEQQXMRx2xZ1xfmfNdw6ToG
X-Google-Smtp-Source: AGHT+IEFTxrLqS6AWQukqyJJOqrFAJTpqta1ST6i9DUqAoWZOtoZoyL7hNoQiDnyuP1pd8FYEhtb+3wPTzG6by7udT8=
X-Received: by 2002:a05:6214:4113:b0:6a0:caba:7e36 with SMTP id
 kc19-20020a056214411300b006a0caba7e36mr6164417qvb.29.1714427719127; Mon, 29
 Apr 2024 14:55:19 -0700 (PDT)
MIME-Version: 1.0
References: <CANypexRYDqtsuj2vwX0qXWA=hXN3KZ5CJn5+vZRbm=Dikwh1Aw@mail.gmail.com>
 <deed5fd13e38d17c8b6716f4fdad64cba896385b.camel@heistp.net>
 <65325791-A1D1-4E21-9F1D-D17737BCFF0F@lochnair.net>
 <CAA93jw4K2sgRfXieAV_tfjBpRrK3kEke1QhMk2tp+PqLMh8w4Q@mail.gmail.com>
 <867A6BD3-28C6-467A-977C-932DFB6B8E08@lochnair.net>
 <CANypexRnG6zLn0iSiEg7ehCUZMRXWi4C03oBJDb+u9QtZB7DYA@mail.gmail.com>
 <CAA93jw7XLuJgq_5VzPchRr+afS-Gxem5ZxVs8uggKUNkoD3x4g@mail.gmail.com>
 <7DF17B18-E351-4923-9225-3A71349BEE5B@lochnair.net>
In-Reply-To: <7DF17B18-E351-4923-9225-3A71349BEE5B@lochnair.net>
Date: Mon, 29 Apr 2024 14:55:07 -0700
Message-ID: <CANypexTLrLcVSN8sM_bTdsXRyxcspsCSN7h2x--6MxxAsgijBg@mail.gmail.com>
To: CAKE list <cake@lists.bufferbloat.net>
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
Content-Type: multipart/mixed; boundary="===============0773102020665117965=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0773102020665117965==
Content-Type: multipart/related; boundary="0000000000003160970617434ff0"

--0000000000003160970617434ff0
Content-Type: multipart/alternative; boundary="0000000000003160970617434fef"

--0000000000003160970617434fef
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

G'day,

Just a small update on the Unifi security gateway stuff.  They have a new
range of devices which are a lot more powerful.
(
https://store.ui.com/us/en/collections/cloud-gateway-ultra/products/ucg-ult=
ra
)

The good news is that the limits set in the GUI now match exactly the
"rate" set in the qcdisc.

root@UCG-Ultra:~# *tc -p -s -d qdisc show dev eth4*
qdisc htb 1: root refcnt 5 r2q 10 default 0x2 direct_packets_stat 0 ver
3.17 direct_qlen 1000
 Sent 13112672757 bytes 41407610 pkt (dropped 2863, overlimits 12123381
requeues 0)
 backlog 0b 0p requeues 0
qdisc fq_codel 2: parent 1:2 limit 2000p flows 1024 quantum 300 target 5ms
interval 100ms memory_limit 4Mb ecn drop_batch 64
 Sent 13112672757 bytes 41407610 pkt (dropped 2863, overlimits 0 requeues
0)
 backlog 0b 0p requeues 0
  maxpacket 27888 drop_overlimit 0 new_flow_count 9175282 ecn_mark 0
  new_flows_len 1 old_flows_len 3
qdisc ingress ffff: parent ffff:fff1 ----------------
 Sent 104038056896 bytes 143646981 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0

root@UCG-Ultra:/etc/systemd# *tc -d class show dev eth4*
class htb 1:1 root rate 35Mbit ceil 35Mbit linklayer ethernet burst 1491b/1
mpu 0b cburst 1491b/1 mpu 0b level 7
class htb 1:2 parent 1:1 leaf 2: prio 7 quantum 1514 rate 64bit ceil 35Mbit
linklayer ethernet burst 1500b/1 mpu 0b cburst 1491b/1 mpu 0b level 0
class fq_codel 2:1bf parent 2:
class fq_codel 2:274 parent 2:
class fq_codel 2:296 parent 2:
class fq_codel 2:2ca parent 2:
class fq_codel 2:34a parent 2:
class fq_codel 2:364 parent 2:

root@UCG-Ultra:~# *tc -p -s -d qdisc show dev ifbeth4*
qdisc htb 1: root refcnt 2 r2q 10 default 0x2 direct_packets_stat 0 ver
3.17 direct_qlen 1000
 Sent 108770017013 bytes 143572868 pkt (dropped 24028, overlimits 43487579
requeues 0)
 backlog 0b 0p requeues 0
qdisc fq_codel 2: parent 1:2 limit 2000p flows 1024 quantum 1514 target 5ms
interval 100ms memory_limit 4Mb ecn drop_batch 64
 Sent 108770017013 bytes 143572868 pkt (dropped 24028, overlimits 0
requeues 0)
 backlog 0b 0p requeues 0
  maxpacket 69876 drop_overlimit 10448 new_flow_count 14414347 ecn_mark 0
drop_overmemory 10448
  new_flows_len 1 old_flows_len 2

root@UCG-Ultra:/etc/systemd# *tc -d class show dev ifbeth4*
class htb 1:1 root rate 800Mbit ceil 800Mbit linklayer ethernet burst
1400b/1 mpu 0b cburst 1400b/1 mpu 0b level 7
class htb 1:2 parent 1:1 leaf 2: prio 7 quantum 1514 rate 64bit ceil
800Mbit linklayer ethernet burst 1500b/1 mpu 0b cburst 1400b/1 mpu 0b level
0
class fq_codel 2:111 parent 2:
class fq_codel 2:3cc parent 2:

So 35Mb/s and 800Mb/s match what is configured in the GUI.

[image: image.png]

The bad news is still no cake.

The bottleneck in my house is now the air interfaces.   I'll run some flent
tests soon.

Thanks,
Dave Seddon


Other device details....

root@UCG-Ultra:~# uname -a
Linux UCG-Ultra 5.4.213-ui-ipq5322 #5.4.213 SMP PREEMPT Fri Jan 26 01:53:55
CST 2024 aarch64 GNU/Linux

root@UCG-Ultra:~# cat /proc/cpuinfo
processor : 0
BogoMIPS : 48.00
Features : fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid
CPU implementer : 0x51
CPU architecture: 8
CPU variant : 0xa
CPU part : 0x801
CPU revision : 4

processor : 1
BogoMIPS : 48.00
Features : fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid
CPU implementer : 0x51
CPU architecture: 8
CPU variant : 0xa
CPU part : 0x801
CPU revision : 4

processor : 2
BogoMIPS : 48.00
Features : fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid
CPU implementer : 0x51
CPU architecture: 8
CPU variant : 0xa
CPU part : 0x801
CPU revision : 4

processor : 3
BogoMIPS : 48.00
Features : fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid
CPU implementer : 0x51
CPU architecture: 8
CPU variant : 0xa
CPU part : 0x801
CPU revision : 4


root@UCG-Ultra:~# cat /proc/interrupts
           CPU0       CPU1       CPU2       CPU3
  4:   49385470   71684295   74561605   77496134     GIC-0  20 Level
arch_timer
  6:          0          0          0          0     GIC-0  39 Level
arch_mem_timer
  8:          0          0          0          0     GIC-0 195 Level
edma_txcmpl_4
  9:          0          0          0          0     GIC-0 196 Level
edma_txcmpl_5
 10:          0          0          0          0     GIC-0 197 Level
edma_txcmpl_6
 11:          0          0          0          0     GIC-0 198 Level
edma_txcmpl_7
 12:    1301701          0          0          0     GIC-0 199 Level
edma_txcmpl_8
 13:   16537922          0          0          0     GIC-0 200 Level
edma_txcmpl_9
 14:   16902391          0          0          0     GIC-0 201 Level
edma_txcmpl_10
 15:   19093638          0          0          0     GIC-0 202 Level
edma_txcmpl_11
 16:     218358          0          0          0     GIC-0 203 Level
edma_txcmpl_12
 17:   14172534          0          0          0     GIC-0 204 Level
edma_txcmpl_13
 18:   12228644          0          0          0     GIC-0 205 Level
edma_txcmpl_14
 19:   14848643          0          0          0     GIC-0 206 Level
edma_txcmpl_15
 20:  141424886          0          0          0     GIC-0 171 Level
edma_rxdesc_12
 21:   10923594          0          0          0     GIC-0 172 Level
edma_rxdesc_13
 22:   10953671          0          0          0     GIC-0 173 Level
edma_rxdesc_14
 23:   13031550          0          0          0     GIC-0 174 Level
edma_rxdesc_15
 24:          0          0          0          0     GIC-0 223 Level
edma_misc
 33:    5199506          0          0          0     GIC-0 321 Level
bam_dma
 34:        929          0          0          0     GIC-0 322 Level
msm_serial0
 35:   10465714          0          0          0     GIC-0 345 Level
mmc0
 36:          3          0          0          0     GIC-0 348 Level
7804000.sdhci
 37:      40125          0          0          0     GIC-0 324 Level
78b5000.spi
 38:    5187812          0          0          0     GIC-0 326 Level
78b7000.spi
 39:    9865790          0          0          0     GIC-0 325 Level
i2c_qup
 45:          0          0          0          0     GIC-0 450 Edge
 smp2p
 46:          0          0          0          0     GIC-0 453 Edge
 q6v5 wdog
 47:          0          0          0          0     GIC-0 352 Edge
 tsens_interrupt
 48:          0          0          0          0     GIC-0  23 Level
arm-pmu
 49:          0          0          0          0     GIC-0 299 Edge
 tzerror
 50:        360          0          0          0     GIC-0  96 Level
xhci-hcd:usb1
 51:          0          0          0          0     smp2p   0 Edge
 q6v5 fatal
 52:          0          0          0          0     smp2p   1 Edge
 q6v5 ready
 53:          0          0          0          0     smp2p   2 Edge
 q6v5 handover
 54:          0          0          0          0     smp2p   3 Edge
 q6v5 stop
 55:          0          0          0          0     smp2p   8 Edge
 q6v5_wcss_userpd1_fatal
 56:          0          0          0          0     smp2p   9 Edge
 q6v5_wcss_userpd1_ready
 57:          0          0          0          0     smp2p  12 Edge
 q6v5_wcss_userpd1_spawn_ack
 58:          0          0          0          0     smp2p  11 Edge
 q6v5_wcss_userpd1_stop_ack
 59:          0          0          0          0   msmgpio  52 Edge
 Reset Button
IPI0:  11014796   16872295   17455146   17378253       Rescheduling
interrupts
IPI1:     54693   31818397   30245960  124867604       Function call
interrupts
IPI2:         0          0          0          0       CPU stop interrupts
IPI3:         0          0          0          0       CPU stop (for crash
dump) interrupts
IPI4:         0          0          0          0       Timer broadcast
interrupts
IPI5:       914          0          0          0       IRQ work interrupts
IPI6:         0          0          0          0       CPU wake-up
interrupts
Err:          0

On Tue, Jan 9, 2024 at 3:28=E2=80=AFPM Nils Andreas Svee <me@lochnair.net> =
wrote:

> Well my NIC has 4 queues as far as I can tell, so it could likely work,
> but as you say it=E2=80=99s like killing a mosquito with a gatling gun.
>
> Those graphs are sweet though, and it=E2=80=99s been in my backlog for aw=
hile to
> do something with Grafana to get something similar, like this one from a
> few years ago you=E2=80=99ve seen too:
> https://forum.openwrt.org/t/sqm-reporting/59960/96
>
> Best Regards,
> Nils Andreas Svee
>
> On Jan 9, 2024, at 18:17, Dave Taht <dave.taht@gmail.com> wrote:
>
> Principal limitation for libreqos on a small box is has to have
> multiple hardware queues and support eBPF.
>
> Seriously folks, running libreqos at home is *serious overkill*,
> although I have to admit the traffic graphs are mesmerizing!!! One of
> our ISPs has been setting them to music:
> https://www.youtube.com/@trendaltoews7143
>
> Herbert has been working on adding all sorts of other analytics to it als=
o.
>
> On Tue, Jan 9, 2024 at 12:07=E2=80=AFPM dave seddon <dave.seddon.ca@gmail=
.com>
> wrote:
>
>
> Nils - I guess you could run LibreQoS on N100?
>
> On Tue, Jan 9, 2024 at 8:57=E2=80=AFAM Nils Andreas Svee via Cake <
> cake@lists.bufferbloat.net> wrote:
>
>
> On Jan 9, 2024, at 17:05, Dave Taht <dave.taht@gmail.com> wrote:
>
> On Tue, Jan 9, 2024 at 10:40=E2=80=AFAM Nils Andreas Svee via Cake
> <cake@lists.bufferbloat.net> wrote:
>
> Though frankly, I don=E2=80=99t plan on updating the sch_cake and tc bina=
ries when
> new firmwares are released anymore, as they don=E2=80=99t publish the GPL=
 archives
> on their webpage after the redesign, and they don=E2=80=99t respond to re=
quests for
> them either by the looks of the forums. So if it breaks there=E2=80=99s n=
ot much I
> can do anymore.
>
>
> This irks me enormously. It is the direct outcome of the cambium
> elevate lawsuit, where both companies lost, the ISPs lost, open source
> practices long established about publishing sources, lost, and the
> lawyers went on to other nasty things leaving this trail of awful
> precedents  in their wake.
>
> https://www.mtin.net/blog/ubnt-vs-cambium/
>
> Wow, hadn=E2=80=99t read about that. They even sued an ISP just for using
> Cambium=E2=80=99s software on their hardware?
> That is crazy, just evil corporate lawyers doing their thing I guess.
>
> I do not know what to do about it. It also irks me that as a
> contributor to "smart queues" they are not maintaining it well.
>
> It leaves something to be desired yes, and I would=E2=80=99ve hoped to se=
e CAKE
> included too of course,
> but even WireGuard is only available in the latest release candidates wit=
h
> the redesigned web UI, so I=E2=80=99m not holding my breath.
>
> I still have an EdgeRouter 4 that serves the family farm and one of the
> 8-port switches under my desk, if only because I don=E2=80=99t wanna spen=
d money on
> replacing them, and they do serve their purpose.
>
> I=E2=80=99ve since moved though, and now live in an area that has FTTH, s=
o I
> needed something beefier to handle CAKE on a 750/750 subscription, becaus=
e
> obviously there=E2=80=99s still bloat even on that ;)
>
> One of those Chinese boxes with a N100 in it and OpenWrt on top works
> wonders :)
>
> Best Regards,
> Nils Andreas Svee
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake
>
>
>
>
> --
> Regards,
> Dave Seddon
> +1 415 857 5102
>
>
>
>
> --
> 40 years of net history, a couple songs:
> https://www.youtube.com/watch?v=3DD9RGX6QFm5E
> Dave T=C3=A4ht CSO, LibreQos
>
>
>

--=20
Regards,
Dave Seddon
+1 415 857 5102

--0000000000003160970617434fef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>G&#39;day,</div><div><br></div><div>Just a small upda=
te on the Unifi security gateway stuff.=C2=A0 They have a new range of devi=
ces which are a lot more powerful.</div><div>( <a href=3D"https://store.ui.=
com/us/en/collections/cloud-gateway-ultra/products/ucg-ultra">https://store=
.ui.com/us/en/collections/cloud-gateway-ultra/products/ucg-ultra</a> )<br><=
/div><div><br></div><div>The good news is that the limits set in the GUI no=
w match exactly the &quot;rate&quot; set in the qcdisc.<br></div><div><br><=
/div><div><span style=3D"font-family:monospace">root@UCG-Ultra:~# <b>tc -p =
-s -d qdisc show dev eth4</b><br>qdisc htb 1: root refcnt 5 r2q 10 default =
0x2 direct_packets_stat 0 ver 3.17 direct_qlen 1000<br>=C2=A0Sent 131126727=
57 bytes 41407610 pkt (dropped 2863, overlimits 12123381 requeues 0) <br>=
=C2=A0backlog 0b 0p requeues 0<br>qdisc fq_codel 2: parent 1:2 limit 2000p =
flows 1024 quantum 300 target 5ms interval 100ms memory_limit 4Mb ecn drop_=
batch 64 <br>=C2=A0Sent 13112672757 bytes 41407610 pkt (dropped 2863, overl=
imits 0 requeues 0) <br>=C2=A0backlog 0b 0p requeues 0<br>=C2=A0 maxpacket =
27888 drop_overlimit 0 new_flow_count 9175282 ecn_mark 0<br>=C2=A0 new_flow=
s_len 1 old_flows_len 3<br>qdisc ingress ffff: parent ffff:fff1 -----------=
----- <br>=C2=A0Sent 104038056896 bytes 143646981 pkt (dropped 0, overlimit=
s 0 requeues 0) <br>=C2=A0backlog 0b 0p requeues 0<br></span></div><div><sp=
an style=3D"font-family:monospace"><br></span></div><div><span style=3D"fon=
t-family:monospace">root@UCG-Ultra:/etc/systemd# <b>tc -d class show dev et=
h4</b><br>class htb 1:1 root <span style=3D"background-color:rgb(255,242,20=
4)">rate 35Mbit </span>ceil 35Mbit linklayer ethernet burst 1491b/1 mpu 0b =
cburst 1491b/1 mpu 0b level 7 <br>class htb 1:2 parent 1:1 leaf 2: prio 7 q=
uantum 1514 rate 64bit ceil 35Mbit linklayer ethernet burst 1500b/1 mpu 0b =
cburst 1491b/1 mpu 0b level 0 <br>class fq_codel 2:1bf parent 2: <br>class =
fq_codel 2:274 parent 2: <br>class fq_codel 2:296 parent 2: <br>class fq_co=
del 2:2ca parent 2: <br>class fq_codel 2:34a parent 2: <br>class fq_codel 2=
:364 parent 2: <br></span></div><div><span style=3D"font-family:monospace">=
<br></span></div><div><span style=3D"font-family:monospace">root@UCG-Ultra:=
~# <b>tc -p -s -d qdisc show dev ifbeth4</b><br>qdisc htb 1: root refcnt 2 =
r2q 10 default 0x2 direct_packets_stat 0 ver 3.17 direct_qlen 1000<br>=C2=
=A0Sent 108770017013 bytes 143572868 pkt (dropped 24028, overlimits 4348757=
9 requeues 0) <br>=C2=A0backlog 0b 0p requeues 0<br>qdisc fq_codel 2: paren=
t 1:2 limit 2000p flows 1024 quantum 1514 target 5ms interval 100ms memory_=
limit 4Mb ecn drop_batch 64 <br>=C2=A0Sent 108770017013 bytes 143572868 pkt=
 (dropped 24028, overlimits 0 requeues 0) <br>=C2=A0backlog 0b 0p requeues =
0<br>=C2=A0 maxpacket 69876 drop_overlimit 10448 new_flow_count 14414347 ec=
n_mark 0 drop_overmemory 10448<br>=C2=A0 new_flows_len 1 old_flows_len 2<br=
></span></div><div><span style=3D"font-family:monospace"><br>root@UCG-Ultra=
:/etc/systemd# <b>tc -d class show dev ifbeth4</b><br>class htb 1:1 root <s=
pan style=3D"background-color:rgb(255,242,204)">rate 800Mbit</span> ceil 80=
0Mbit linklayer ethernet burst 1400b/1 mpu 0b cburst 1400b/1 mpu 0b level 7=
 <br>class htb 1:2 parent 1:1 leaf 2: prio 7 quantum 1514 rate 64bit ceil 8=
00Mbit linklayer ethernet burst 1500b/1 mpu 0b cburst 1400b/1 mpu 0b level =
0 <br>class fq_codel 2:111 parent 2: <br>class fq_codel 2:3cc parent 2:</sp=
an></div><div><br></div><div>So 35Mb/s and 800Mb/s match what is configured=
 in the GUI.<br></div><div><br></div><div><img src=3D"cid:ii_lvlhqdqp0" alt=
=3D"image.png" width=3D"578" height=3D"378"></div><div><br></div><div>The b=
ad news is still no cake.</div><div><br></div><div>The bottleneck in my hou=
se is now the air interfaces.=C2=A0=C2=A0 I&#39;ll run some flent tests soo=
n.<br></div><div><br></div><div>Thanks,</div><div>Dave Seddon</div><div><br=
></div><div><br></div><div>Other device details....<br></div><div><br></div=
><div>root@UCG-Ultra:~# uname -a<br>Linux UCG-Ultra 5.4.213-ui-ipq5322 #5.4=
.213 SMP PREEMPT Fri Jan 26 01:53:55 CST 2024 aarch64 GNU/Linux</div><div><=
br></div><div>root@UCG-Ultra:~# cat /proc/cpuinfo <br>processor	: 0<br>Bogo=
MIPS	: 48.00<br>Features	: fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid=
<br>CPU implementer	: 0x51<br>CPU architecture: 8<br>CPU variant	: 0xa<br>C=
PU part	: 0x801<br>CPU revision	: 4<br><br>processor	: 1<br>BogoMIPS	: 48.0=
0<br>Features	: fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid<br>CPU imp=
lementer	: 0x51<br>CPU architecture: 8<br>CPU variant	: 0xa<br>CPU part	: 0=
x801<br>CPU revision	: 4<br><br>processor	: 2<br>BogoMIPS	: 48.00<br>Featur=
es	: fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid<br>CPU implementer	: =
0x51<br>CPU architecture: 8<br>CPU variant	: 0xa<br>CPU part	: 0x801<br>CPU=
 revision	: 4<br><br>processor	: 3<br>BogoMIPS	: 48.00<br>Features	: fp asi=
md evtstrm aes pmull sha1 sha2 crc32 cpuid<br>CPU implementer	: 0x51<br>CPU=
 architecture: 8<br>CPU variant	: 0xa<br>CPU part	: 0x801<br>CPU revision	:=
 4<br></div><div><br></div><div><br></div><div>root@UCG-Ultra:~# cat /proc/=
interrupts <br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CPU0 =C2=A0 =C2=A0 =
=C2=A0 CPU1 =C2=A0 =C2=A0 =C2=A0 CPU2 =C2=A0 =C2=A0 =C2=A0 CPU3 =C2=A0 =C2=
=A0 =C2=A0 <br>=C2=A0 4: =C2=A0 49385470 =C2=A0 71684295 =C2=A0 74561605 =
=C2=A0 77496134 =C2=A0 =C2=A0 GIC-0 =C2=A020 Level =C2=A0 =C2=A0 arch_timer=
<br>=C2=A0 6: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A00 =C2=A0 =C2=A0 GIC-0 =C2=A039 Level =C2=A0 =C2=A0 arch_mem_timer<br=
>=C2=A0 8: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A00 =C2=A0 =C2=A0 GIC-0 195 Level =C2=A0 =C2=A0 edma_txcmpl_4<br>=C2=A0 9:=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=
=A0 =C2=A0 GIC-0 196 Level =C2=A0 =C2=A0 edma_txcmpl_5<br>=C2=A010: =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0=
 GIC-0 197 Level =C2=A0 =C2=A0 edma_txcmpl_6<br>=C2=A011: =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GIC-0 198=
 Level =C2=A0 =C2=A0 edma_txcmpl_7<br>=C2=A012: =C2=A0 =C2=A01301701 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GIC-0 199 Level =C2=A0 =C2=A0 ed=
ma_txcmpl_8<br>=C2=A013: =C2=A0 16537922 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =
=C2=A0 =C2=A0 GIC-0 200 Level =C2=A0 =C2=A0 edma_txcmpl_9<br>=C2=A014: =C2=
=A0 16902391 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GIC-0 201 Lev=
el =C2=A0 =C2=A0 edma_txcmpl_10<br>=C2=A015: =C2=A0 19093638 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GIC-0 202 Level =C2=A0 =C2=A0 edma_txcmpl_=
11<br>=C2=A016: =C2=A0 =C2=A0 218358 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=
=A0 =C2=A0 GIC-0 203 Level =C2=A0 =C2=A0 edma_txcmpl_12<br>=C2=A017: =C2=A0=
 14172534 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GIC-0 204 Level =
=C2=A0 =C2=A0 edma_txcmpl_13<br>=C2=A018: =C2=A0 12228644 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GIC-0 205 Level =C2=A0 =C2=A0 edma_txcmpl_14<=
br>=C2=A019: =C2=A0 14848643 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0=
 GIC-0 206 Level =C2=A0 =C2=A0 edma_txcmpl_15<br>=C2=A020: =C2=A0141424886 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GIC-0 171 Level =C2=A0 =C2=
=A0 edma_rxdesc_12<br>=C2=A021: =C2=A0 10923594 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A00 =C2=A0 =C2=A0 GIC-0 172 Level =C2=A0 =C2=A0 edma_rxdesc_13<br>=C2=
=A022: =C2=A0 10953671 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GIC=
-0 173 Level =C2=A0 =C2=A0 edma_rxdesc_14<br>=C2=A023: =C2=A0 13031550 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GIC-0 174 Level =C2=A0 =C2=A0 e=
dma_rxdesc_15<br>=C2=A024: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GIC-0 223 Level =C2=A0 =C2=A0 edma_mis=
c<br>=C2=A033: =C2=A0 =C2=A05199506 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0=
 =C2=A0 GIC-0 321 Level =C2=A0 =C2=A0 bam_dma<br>=C2=A034: =C2=A0 =C2=A0 =
=C2=A0 =C2=A0929 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GIC-0 322 =
Level =C2=A0 =C2=A0 msm_serial0<br>=C2=A035: =C2=A0 10465714 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GIC-0 345 Level =C2=A0 =C2=A0 mmc0<br>=C2=
=A036: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A03 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
0 =C2=A0 =C2=A0 GIC-0 348 Level =C2=A0 =C2=A0 7804000.sdhci<br>=C2=A037: =
=C2=A0 =C2=A0 =C2=A040125 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GI=
C-0 324 Level =C2=A0 =C2=A0 78b5000.spi<br>=C2=A038: =C2=A0 =C2=A05187812 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GIC-0 326 Level =C2=A0 =C2=
=A0 78b7000.spi<br>=C2=A039: =C2=A0 =C2=A09865790 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A00 =C2=A0 =C2=A0 GIC-0 325 Level =C2=A0 =C2=A0 i2c_qup<br>=C2=A045: =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0=
 =C2=A0 GIC-0 450 Edge =C2=A0 =C2=A0 =C2=A0smp2p<br>=C2=A046: =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GIC=
-0 453 Edge =C2=A0 =C2=A0 =C2=A0q6v5 wdog<br>=C2=A047: =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GIC-0 352 =
Edge =C2=A0 =C2=A0 =C2=A0tsens_interrupt<br>=C2=A048: =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GIC-0 =C2=A02=
3 Level =C2=A0 =C2=A0 arm-pmu<br>=C2=A049: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GIC-0 299 Edge =C2=A0 =
=C2=A0 =C2=A0tzerror<br>=C2=A050: =C2=A0 =C2=A0 =C2=A0 =C2=A0360 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GIC-0 =C2=A096 Level =C2=A0 =C2=A0 xhc=
i-hcd:usb1<br>=C2=A051: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 smp2p =C2=A0 0 Edge =C2=A0 =C2=A0 =C2=A0q6=
v5 fatal<br>=C2=A052: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A00 =C2=A0 =C2=A0 smp2p =C2=A0 1 Edge =C2=A0 =C2=A0 =C2=A0q6v5 =
ready<br>=C2=A053: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A00 =C2=A0 =C2=A0 smp2p =C2=A0 2 Edge =C2=A0 =C2=A0 =C2=A0q6v5 h=
andover<br>=C2=A054: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A00 =C2=A0 =C2=A0 smp2p =C2=A0 3 Edge =C2=A0 =C2=A0 =C2=A0q6v5 =
stop<br>=C2=A055: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A00 =C2=A0 =C2=A0 smp2p =C2=A0 8 Edge =C2=A0 =C2=A0 =C2=A0q6v5_wcss=
_userpd1_fatal<br>=C2=A056: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 smp2p =C2=A0 9 Edge =C2=A0 =C2=A0 =C2=
=A0q6v5_wcss_userpd1_ready<br>=C2=A057: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 smp2p =C2=A012 Edge =C2=
=A0 =C2=A0 =C2=A0q6v5_wcss_userpd1_spawn_ack<br>=C2=A058: =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 smp2p =C2=
=A011 Edge =C2=A0 =C2=A0 =C2=A0q6v5_wcss_userpd1_stop_ack<br>=C2=A059: =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 ms=
mgpio =C2=A052 Edge =C2=A0 =C2=A0 =C2=A0Reset Button<br>IPI0: =C2=A01101479=
6 =C2=A0 16872295 =C2=A0 17455146 =C2=A0 17378253 =C2=A0 =C2=A0 =C2=A0 Resc=
heduling interrupts<br>IPI1: =C2=A0 =C2=A0 54693 =C2=A0 31818397 =C2=A0 302=
45960 =C2=A0124867604 =C2=A0 =C2=A0 =C2=A0 Function call interrupts<br>IPI2=
: =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=
=A0 =C2=A0 CPU stop interrupts<br>IPI3: =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 CPU stop (for crash dump=
) interrupts<br>IPI4: =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 Timer broadcast interrupts<br>IPI5: =C2=A0=
 =C2=A0 =C2=A0 914 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 IR=
Q work interrupts<br>IPI6: =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 CPU wake-up interrupts<br>Err: =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A00<br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 9, 2024 at 3:28=E2=80=AFP=
M Nils Andreas Svee &lt;<a href=3D"mailto:me@lochnair.net">me@lochnair.net<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div><div>Well my NIC has 4 queues as far as I can tell, so it could likely =
work, but as you say it=E2=80=99s like killing a mosquito with a gatling gu=
n.</div><div><br></div><div>Those graphs are sweet though, and it=E2=80=99s=
 been in my backlog for awhile to do something with Grafana to get somethin=
g similar, like this one from a few years ago you=E2=80=99ve seen too:=C2=
=A0<a href=3D"https://forum.openwrt.org/t/sqm-reporting/59960/96" target=3D=
"_blank">https://forum.openwrt.org/t/sqm-reporting/59960/96</a></div><br id=
=3D"m_7012884691258987246lineBreakAtBeginningOfMessage"><div>
<div>Best Regards,<br>Nils Andreas Svee</div>

</div>

<div><br><blockquote type=3D"cite"><div>On Jan 9, 2024, at 18:17, Dave Taht=
 &lt;<a href=3D"mailto:dave.taht@gmail.com" target=3D"_blank">dave.taht@gma=
il.com</a>&gt; wrote:</div><br><div><div>Principal limitation for libreqos =
on a small box is has to have<br>multiple hardware queues and support eBPF.=
<br><br>Seriously folks, running libreqos at home is *serious overkill*,<br=
>although I have to admit the traffic graphs are mesmerizing!!! One of<br>o=
ur ISPs has been setting them to music:<br><a href=3D"https://www.youtube.c=
om/@trendaltoews7143" target=3D"_blank">https://www.youtube.com/@trendaltoe=
ws7143</a><br><br>Herbert has been working on adding all sorts of other ana=
lytics to it also.<br><br>On Tue, Jan 9, 2024 at 12:07=E2=80=AFPM dave sedd=
on &lt;<a href=3D"mailto:dave.seddon.ca@gmail.com" target=3D"_blank">dave.s=
eddon.ca@gmail.com</a>&gt; wrote:<br><blockquote type=3D"cite"><br>Nils - I=
 guess you could run LibreQoS on N100?<br><br>On Tue, Jan 9, 2024 at 8:57=
=E2=80=AFAM Nils Andreas Svee via Cake &lt;<a href=3D"mailto:cake@lists.buf=
ferbloat.net" target=3D"_blank">cake@lists.bufferbloat.net</a>&gt; wrote:<b=
r><blockquote type=3D"cite"><br>On Jan 9, 2024, at 17:05, Dave Taht &lt;<a =
href=3D"mailto:dave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.com</=
a>&gt; wrote:<br><br>On Tue, Jan 9, 2024 at 10:40=E2=80=AFAM Nils Andreas S=
vee via Cake<br>&lt;<a href=3D"mailto:cake@lists.bufferbloat.net" target=3D=
"_blank">cake@lists.bufferbloat.net</a>&gt; wrote:<br><br>Though frankly, I=
 don=E2=80=99t plan on updating the sch_cake and tc binaries when new firmw=
ares are released anymore, as they don=E2=80=99t publish the GPL archives o=
n their webpage after the redesign, and they don=E2=80=99t respond to reque=
sts for them either by the looks of the forums. So if it breaks there=E2=80=
=99s not much I can do anymore.<br><br><br>This irks me enormously. It is t=
he direct outcome of the cambium<br>elevate lawsuit, where both companies l=
ost, the ISPs lost, open source<br>practices long established about publish=
ing sources, lost, and the<br>lawyers went on to other nasty things leaving=
 this trail of awful<br>precedents =C2=A0in their wake.<br><br><a href=3D"h=
ttps://www.mtin.net/blog/ubnt-vs-cambium/" target=3D"_blank">https://www.mt=
in.net/blog/ubnt-vs-cambium/</a><br><br>Wow, hadn=E2=80=99t read about that=
. They even sued an ISP just for using Cambium=E2=80=99s software on their =
hardware?<br>That is crazy, just evil corporate lawyers doing their thing I=
 guess.<br><br>I do not know what to do about it. It also irks me that as a=
<br>contributor to &quot;smart queues&quot; they are not maintaining it wel=
l.<br><br>It leaves something to be desired yes, and I would=E2=80=99ve hop=
ed to see CAKE included too of course,<br>but even WireGuard is only availa=
ble in the latest release candidates with the redesigned web UI, so I=E2=80=
=99m not holding my breath.<br><br>I still have an EdgeRouter 4 that serves=
 the family farm and one of the 8-port switches under my desk, if only beca=
use I don=E2=80=99t wanna spend money on replacing them, and they do serve =
their purpose.<br><br>I=E2=80=99ve since moved though, and now live in an a=
rea that has FTTH, so I needed something beefier to handle CAKE on a 750/75=
0 subscription, because obviously there=E2=80=99s still bloat even on that =
;)<br><br>One of those Chinese boxes with a N100 in it and OpenWrt on top w=
orks wonders :)<br><br>Best Regards,<br>Nils Andreas Svee<br>______________=
_________________________________<br>Cake mailing list<br><a href=3D"mailto=
:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.bufferbloat.net</=
a><br><a href=3D"https://lists.bufferbloat.net/listinfo/cake" target=3D"_bl=
ank">https://lists.bufferbloat.net/listinfo/cake</a><br></blockquote><br><b=
r><br>--<br>Regards,<br>Dave Seddon<br>+1 415 857 5102<br></blockquote><br>=
<br><br>-- <br>40 years of net history, a couple songs:<br><a href=3D"https=
://www.youtube.com/watch?v=3DD9RGX6QFm5E" target=3D"_blank">https://www.you=
tube.com/watch?v=3DD9RGX6QFm5E</a><br>Dave T=C3=A4ht CSO, LibreQos<br></div=
></div></blockquote></div><br></div></blockquote></div><br clear=3D"all"><b=
r><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" cla=
ss=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div>Regards,<br></div>Dave Seddon<br>+1 415 857 5102<br></div></d=
iv></div></div></div></div>

--0000000000003160970617434fef--

--0000000000003160970617434ff0
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_lvlhqdqp0>
X-Attachment-Id: ii_lvlhqdqp0

iVBORw0KGgoAAAANSUhEUgAAAnwAAAGgCAIAAAC/my3IAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAg
AElEQVR4nOzdd1hUV/oH8PfeacAAM/ReRYp0pIg0FRTsYks0xkTNJiYmZtN2NxuT7GZLNr/sJjHF
mGqPsWAvIIqKSpWi9N77DAPT672/P8DeUHFQeT9Pnic4c8sZ5tzzvefccy8El8sFhBBCCD165EgX
ACGEEBotMHQRQgghPcHQRQghhPQEQxchhBDSEwxdhBBCSE8wdBFCCCE9wdBFCCGE9ARDFyGEENIT
DF2EEEJITzB0EUIIIT3B0EUIIYT0BEMXIYQQ0hOmr1/wUJaTSsQ9gi65TPqoC4TQk4jFYnO5xhyO
AUEQI10WhJD+0DStUillMqlGox7K8oSpqem9FyIIHt/c1tahoaEGcxehm7BYbHNzS4xbhEYtmqZ7
ewVDyV0Gh8MZyhaVSoVWpzXjm/f3ix66eAg9VUxNeSwWa6RLgRAaMQRBkCSpVCruueR9XNPt7+s1
Nrl3txih0YbDMRjpIiCERtgQ24H7CF2aph+0MAg9zXBgGSE0xHYAZy8jhBBCeoKhixBCCOkJhi5C
CCGkJxi6CCGEkJ5g6CI0KhGW/pFepiM8A4xpFRThZYzT0NAogqGL0CNDmCb9+0h6elp6euqJ1IN7
t3z5wfMT7Nm3LEY6L/jvzq3vROoxAgnTqJV/eSHc1nnh10d3fxB33Z5Zfqs37/t2qdu1poGwm/f5
/t3vhg/e0U8YR7+/+8SxLxc5XNd6sCb8ed+uT+c6M6/fCTf+k0PfPed6bTGmTdQbG/cf+iDqyk3N
LKfY1e8t9RnSswIQeircELo+Pj4ODg4jVRSEnka09NQ/5s9Jnrdw1bsbcrkz1/3n5WDDmxeRNJcU
FVZ1K/V2Ux7pMH1RcPXuQzUteTlNRqHRAVeLxPabHGtr6DE51p0x+AphGRo1TluYXaIa+KdZ9PRw
SX2bS2LimBsiluSNf/n9FQHcO5w5EFyvBX//6u3J1szrFlAU7T0kTlgYw8fOLhotroXuQOK2tbU9
yGYYbjPeWvfWAl+T648dghf+wvsrI83weEKjGa1TKxUKuVTQmLv725Ray+hob+ZNS4jyt/zfV0fq
hvTk1uFAOsfG2RWm5/TTVFtOTotBULj/YGeT4xcbTmedKbWJihlMXYI3PtxbXZRVPPCoHdJ+SqJf
c+pX2/N4U5ICru+i0rKePusF7785yeo2RzzpOPfv/56r3bXui0zJ9acWdEfmqXr/yRMwddFoMRi6
Pj4+3t7eJ0+efIhNESbjZswNtcABa4TugKYpCggAwjr5f3s+mhf70n+3Hjr07XPuxlP+dnDLyz5M
AOb4N3/7Ye2iFR9/t3n77i3/WuLnFL7ykw2/bt29++dPnvE1JgCAYRG04L0vfk05cuTQzq/enubM
hps3+PLyf+z77e0JV/qchP3cz1PWP+N09dAk+H7+dlXFpQoA0DVl57YZh4T7sAAAOH6xEVT24a2n
y62iot0YAEBwgyN8dZeyi+QAAMBwn5boXJp6qionNROip0dcdz2WFp/b8NVJzcS17y90v2UInWo7
+fkbr39yoEZO3xivtOhycYdnoNetg+4IPZVIAPDx8QkMDDx27NjDbUrd3ii0j0+OsceH0CJ0KybP
c8ZL88YKzp2r1AIQhqHLlzoWb/n0k29PtuluWM45yLXux7deXP7aNuW8T/5vke63d1ctX/7BWYtl
rye7MYAwHeNr2bDro+Xz5r/0baP/669PtyEAbtjgwQN7M3QxCxIGupws75mzXS/tT22lruyBYedo
09fSKqcBAHQNubld/NAIDyYAxz8mQpd7rrQz51yFdVS0OwPAMCAigCjJKpTSAAAc/6R4Xt6xzF5a
VXI8XRSaFGN+fYb2ZX/7711tHi988HKIyU1dV1ra1S7Wwa2oruY20t7RAru6aHRgWllZBQYG7t+/
X6VSPdymqJ68A7kBL8yeF9/ya2q98sY3WZZ+kxImeDtZc7U9FRn7Dl8SUmy/xe9Moova+OO8Lenu
klPpFaZhk0LcLRiSpoK0I+caZDSAkXPk9GkRHlYsWXd9cUbqhQYZPooSPVkI48nv/z5BSzANDKie
y2n//WBTsQKsAWjJ2R//s71QCQBg6Hv9GprqrOwONYCwpKSNbV9yrkZOAzQUlfUvdHdhQb0ob8cP
eQAAIMs9d1n5Jw8XBnTDjRsk9x9s+H72LM+jv1YbhM9NIE79I6v/ukPHiGsoa5cNhrC2JidXmBwa
7vpzvXlcmDbns3INrc05X/5KcqzH9mbTiBB2+eaLYhoACOOw6dHU2X/nywBAV3cirWF+UoJj2q6W
q3EOysrf/vXdmPVvvfdO9Vv/uDCkXxAlk8gNuVwS4HaZjNBThnnvRYaO7i85cshp5TNzZjT/sr9c
cu0Ngu8X48+oSN1+VGrsP+uZaZO8q1LKKQDCzJFfcGD7Bdp98ry5L/h15h3avanXLHjm7HlTu74/
UM0Zn7w4THv+0KZqqal3/MyFc2U/7CwSY+yiJwkty/7u9e+L1VqlpF+qHqi9BABQ/T2Ce1zEpSgK
KB01sA5N0UCSBABwbIKnzpwS4WPHZXDtuYxCcqCTeP0Gqfa0lOzFrydH7N1kOSes7fAbZTfsSqvV
MVlXJzRpK7Pz+maHho2psg/TZv+7QgMAvbnnyv+wINqr2DDEqHJ3voiGgSlUkaYW8LfdUwdWJJgc
Nm+aR8ov1dpr29Z1nPjiM88v/vH6+0t6TgzpN8RkM7X9Gjyu0ehA9vT0XLp0KTk5eYh/4+8eFHXp
+y9IPWfMGW9+3cVduq9o/87US60iSV9LUWk708qKRwIA0P3lWbkN3d2NeVnlfbq2wgvlnYLOivMF
LQb2juZMm+Awx/bMIzn13b3dtVmHz3c4BXqP9H2FCN0vWikWCATCviuJ+3AI68R136wZ137kq3Xv
vf2nH7LEd9ipJDclVTxh/orls5zyU0523LBrqrdHZG5jeWV6MmgqcvLErpHPz45QZ58v1wAA0L3Z
meWWMc8tCjWtzsoT0DAwhcq/adMr8+bPu/Lfs/++wI9PCryp5aDFBT/8e3Ot43N/etbr3mf1BNfK
0lDUI8LQRaMDEwAqKioAIDk5+ffff3/4LWraz+076bgyITm6/eDVMWammXf05AgvRwtjJk0aMGRd
g8e7Vjt4iqzRaGmNZuAfWo0WSIIgzS3NOWNmv7Vu1pWt0BKBGQH9eHSi0YthP9aDUbchs0qoIkx8
g8ZyoeX2C2prDu0vn/tmfM/uN3OlNx4zVEdtAxXn7cTIqxsY0VWVZRfIp08N7j6ws3zwiKRFOefL
XntzPKPyp7weGgAY7tOS3OtT/6/t2lgyLb14Jp/9x+kTNhVm3bhzdf2eT78Z+/Wf4sg7nBRcw/Lw
ce2u2STFwxqNDoMnogO5m5CQ8HATmAdQvQUHjzqtSk6OHzykCbPxc+d4dh5M+bFGoGQFPPt29JA2
IxVLlJUZ6/eUDV5sJkmSoqi7r4TQ001bdnhr/nsr1/9vRmd/b+3Fggql1R2WpHvLLrfIGalHrx/8
HaAuzS7iL49y2VFXP3CIKkuyCqXx47LOVV5dlhblnitRBZvm5HZQMDCFyqJ0Z2bnDeEoLzx5Xrlu
eqxltvDmvfec/epTd4e/hwz+mzBP+vi7P/gzmQbGBsS7v6e8KT39n1XfFmo5vtHjFfn/bMLruWiU
IExNr/1deh8fH7FYfJdbdb19AspKi27zBsNtxtqFrKNfHKy+cuxwXKaufC7SimhN37Aplx37hxfH
VO3aXygx9YhMnBrEvPjrxlOCcYvfiRVu2XiqnQLSdvIrK2wufPn7ZSUAy3fRu5NFWzdkaCNXLA8U
njpyrl5maD0mONZfdnxzRhsenegxY2v7OD5ShhPw6g9/Mdzw0hd58lvfZI97+bu/mvz0yv/yZPov
2TWE+bSPNyRdfufdfW14Oo2efJ2d937QxQ131VZUVDzgwzFupWo6ve9M80Afleq6mJ6n9l+8+tXn
p7mJWzqHGJtUV9buvZcZIcmrXl21cJKbPOvgOUxchIaEsIx/Nk56ZH/BbRIXANQVe7YWWnk5D+tM
yvtGcD29Oac2H8fERaPHDT3de7pjTxehUezx7OkihPTsvnu6CCGEEHp0MHQRQgghPcHQRQghhPQE
QxchhBDSEwxdhBBCSE/uI3QJAh/BiNBt0DQ+Tgmh0W6I7cB9hC6Pby6V3POhbgiNOiqV8t4LIYSe
akNsB4YUugRB8M0sbG0degRdD1cqhJ5CMpkUO7sIjWY0Tctk0qEsSYRHDOlByFKJuEfQJR/aRhEa
bVgsNpdrzOEY4FUYhEYVmqZVKqVMJtVo7vG3OgcQXC73UZcJIYQQQoCzlxFCCCG9wdBFCCGE9ARD
FyGEENITDF2EEEJITzB0EUIIIT3B0EUIIYT0BEMXIYQQ0hMMXYQQQkhPMHQRQgghPcHQRQghhPQE
QxchhBDSEwxdhBBCSE8wdBFCCCE9wdBFCCGE9ARDFyGEENITDF2EEEJITzB0EUIIIT3B0EUIIYT0
BEMXIYQQ0hMMXYQQQkhPMHQRQgghPcHQRQghhPSEOTybYbjNWLuQdfSLg9W6Ky+RzomvLzVO/zyl
Qne3NYe+/WWhJgQA0BqFWNRZX5qfnVcpUN/fZgy8Zq9KoNN/OVKtfPgyIXQDgiAeeF2apoexJAih
x9Ywhe4wMfJPfmFMzZYDpfLbvKmpPvZreoOOZBnybMcERc5d5eu6b3tqjew+tq/uqrx4ke66z6hG
aCgeaXCSlhHPLrIp2nSo4tr5IsEfv3iJS/nWfSUyAAC2uUdQaMBYRyueAS3v7+1uvJybXy0crOxs
C++w8HHO1pZmXFLV391cXZRX1NCvHfIuys0nv5jEPPVreuMwnEMjNIo9XqFLsrk8Y/Yd+gu0SiIU
CnUA0NPZWltRN3n587Ont/6YUiodcltH9dXk5g5TWRG6kampKYPBeID+LkVRCoVCpVI9xM4NXWKT
p3vpai7mpmYKlYQhz8rRMzA2qP9wXpeWNBuXOCfWtr8sP6c4U6wz4Fk5jRufOIu57/fs7vuPUIIf
OGsG//Kus00YvwjdP/2ELmnqET01xs/VhkfKOqpy0tPz2xQALNvx0xMjxtoaqQWNl86cuGw5f02i
MwPc3/lopjh/29fHG6m7bFLVei692H/p+HGmZXn9hs6R06dFeFixZN31xRmpFxrJ4KWvhjZv/ulc
Nw0AQPBCn38lqO7XzV2Rb86hD6w/UqcDlqXfpIQJ3k5WXJ2o6dLZtLMVvVrS1CN2RkKIK58Qd9Tk
p6fltz9MO4hGC4IgPv3Pf5KSkpQqJYPBhIEu75XwpSlap6MIkqBpmslkDK4CQNMABNA0UDodRVFr
1rxWVFj0YAUwGBOTME5TkLI/v2eg8yrq7WlvKB/Yk6nfpFh7wdndxyskA0eUsLu1vqqQQ6seLDUZ
HK6J4eN1to7Qk2MYjx2DwGc/CLzxJU0ZAADLcfLS+Z7tJ49uqhExbf3jZyxdCL9sv0iEzYi3qN+z
aZ+QZe/tqNP2527ZQK5Y7Vm6YWte/xA6r9rW+haNj5UFg+eRvDhMe/7QpmqpqXf8zIVzZT/sLC+q
mzwlyCnrRLMOgLAKCLFtu7hfSNtcWdnIa8ZzSRblx1NSm2QcO7+4hKSg9l0t/ovn+/Sc3Ptzk8Yy
cNrMxUniHw5WKYbvN4SeUkZGRklJSe7uY5RKJQDAYGeXHshWDpvFIBk00AQQCqVq4AcaAGgaCAAa
1Go1n2c6YULkg4auobvvGLIutbhHe+t7hLm3n11fya5KyQ3nsNoH61eT1pFLFoeZkzBzjSfVk7Nz
T8/4lZOZpTVsD29u7aGdWX2WfhMj/d3szNjKrvJzJ87VSfBaNUI3GMbQVVUd3Xzy2hUf0j76uZlM
AGCPCQ9mXd57rLBJCwCSC4fOOK2JCrYrLCZIhhGfb0i3tFXldQFc6xoMHQFAWgeHObZnfptTLwPo
zjp83n1NoLdpcWFhRcK8YI+zzVUqhlNQoEntqXIJDYOhS5iMC/eR5/x8skxAA0DNhT31OQDOM0J5
Vce2FDZrAASnj1l5rAgcY1BVinOu0L0pFEqKHoy1K/WYoCjKgMMuLCr/5deU/j5JUJDPm28up3U0
DUAQQBMw2OOlaYVS9eDDy6SZpTnRWyS4TeQCsK1t+IqONtFA+LGNzU04g6cEtEraK73P+Q1Ud/Zv
e8jn5vNzfz5arQFguAHBdXaEjLS9nWIJYRkQ5qosO7X3lJofkDgjdnx945lWHIRG6HrDGLq08so1
VwAAILlKCowBCCMej9nXfK1FUAgEMhM+jxDmHjhoMCVq8etTdZ2V2ekn8tvur9FhOro5MXpzRGbO
5pwxs99aN+tqQSQCM0LbVFSiXBbsza2udAj2Jcv31ygBBof2gDDlm1KCHtHVs3BapyNMLCy4XJfF
f/a/ugeq29yUACWeq6N7YrFZg/OoCACgAYAe6M4CyOWaui5aRzp3S42B1gFBXukEEwPL0zTNYJAs
5j0PRoK88byUIAZ3dZcqymQyQaPWDPyD4RyzZMbYwcNAXXnkpxP1N2XinXZxF+rGwpzqLg0AgKLw
6JGBFyXltb2BLuaGROvQp1wgNBo8+ksztLy/X8u3tGSCdCB3DS0tudIeMQVaQfmp3eWnmKbukxYv
mhXR/FPmfZx2s+0nxgeyao9V9En4EmVlxvo9ZYOZTZIkRVEAnZeKBH8ICXAkXTwVl7c1X98NoCV9
EtLVyoyoEgw2lCQJKolEJS5I+fZYg/bKhgiKwhYD3ZNOp+sVCr09PSkmgwDiSleXIAB0NB0XExIX
E0IBkAAanY68Gs40DQRB07SBoSEQhEAovMsuaI1aQxgYGBCguFolCUMjQ9CoNVSfQEh7W1syQaK5
ZUWlRKrhmvPZ0K0E0NUe/+7r4wBA2sc+P4N1Y+DebRd3LZlSeWXkmm3hHT7B38WGb0RQpAHZW8O4
y4oIjUp6mA+hrssvnvxsUlLnkfM1fQwb/4RJTp3Z6e1Mu7A4L2Xl5cZ+JpvJoBVyFU1rlCrgmpow
mDLQam8eLCM4JmZmZjqCwTG1GRMcHeVJlhw4XirREZcKhcvjpodIztXLDK3HBMf6y45vzmjT0b2l
Rc2xk+fHcXqy07puuKBFi8vzKqNmzpoiTM1vkrLt/CYluDX+nlJ4Wb04PqH5WG6rxsTeMzzGvXXv
9hwhxi66B6VS+fyyZW+sXeszzlen1RIEAQQQ9GB/lqJpgoCBW4quzm2mr/ufWqPevm1bWmrqXXZB
Szo6pJFjPS2Lc3sGs5Lj5O1mJCzt1oCivqw2ctr4wKKWi7eMMevaq2rVM0OC7RqzO66e1BJGFhaG
sjbpjUfF3XZxdwOfhrQenxRjU5t6OL1VrDENXrjU4x6rITQK6WMSoqYl47cD2qkxc1cl8Rjyjqrs
3w/lCWnCuEfKn5L8h1lGmr7mkiNHCvtogMqs3MC5S9/xbT+7c2fOTbczsDxnvOYJQGsVElFnfenh
X3MretQAQHdl7d5LTItPXpXIUQubSs4fPNc2sKa0orA6frFXw+lS0c3JKa88+htrSkL0olfmcXV9
TZfPnijuV2tP7TwUlzj5mZf5THl3XfGpQ/mYuGhourq61n3wwSPcAdVZeKF6TOKceUZFZQ0CNdd2
jH+Qu6LwUImIBlDVnz9ZNm/6vGSTi4WVLb1KwpBn7eIbYNdz+lBeV3N2evGcmXMX8QoLyhq7JVqm
qb1PxAR+49n0XnrIu7jWZaXVKjVhZMxlMKWgvWEDBJvDAa1aDRxz53FhftaksvYR/kIQejIRXC53
pMuA0BOPIAiCICjqbre53cWVayL3WMrYMShivKejDZ+j6e+sLc7Jq+i+NhFi4OEYnk7WPA4l7+/t
aizJy68afGgb08RxXEjwOFdbM2OmVtLTVHExp7BRfJs5TnfaBcPp6sMxCOMxk2dN8eSpmjL3pysj
V05WH9t8ppUCAMLEIy4p1tuKpeypqxJZBplV/ba3aCh3IiA0emDoIoQQQnqCf/AAIYQQ0hMMXYQQ
QkhPMHQRQgghPcHQRQghhPQEQxchhBDSEwxdhBBCSE8wdBFCCCE9wdBFCCGE9ARDFyGEENITDF2E
EEJITzB0EUIIIT3B0EUIIYT0BEMXIYQQ0hMMXYQQQkhPMHQRQgghPcHQRQghhPQEQxchhBDSEwxd
hBBCSE8wdBFCCCE9wdBFCCGE9ARDFyGEENITDF2EEEJITzB0EUIIIT3B0EUIIYT0BEMXIYQQ0hMM
XYQQQkhPMHQRQgghPcHQRQghhPSEwWazR7oMCD3hGI6TV7wwJ2ZCRET4+AAvJz7d29Ej0z70Zg3H
zX1lSWJkRERERERE2BioL22TD3FVjueMl+Y6dl9uFNMAAEDaRj//4gx70eXaXh0AABDmoc++OJFZ
XdGpAgAw8Jy+cslEw+bSZil99VONnfHqkgncrurG/mufhbSKXPpCsKakWqB76M+H0CjEHJ7NMNxm
rF3MOfbf/VXDdyQSZgFzn5nmw5fmbvsxo40atu0i9Cio607tOd9KMY0s3UNj5s5i7t1X1DuUWkva
RsyPps/ty+u6eWnShGesqDi2+0I7BQA0pVHRt9vAbalamzrZ412syJZOCgAIM2dnU5LFcbFn1jRq
AYAwdnIxEzW1SGgAAMJ47DgXUgOevo65nU2aa5shGGb+CZPadqXVyIa+b4TQnelreJl0iFvxYqzD
feyOtAuJ9pae/vazjZi46AlAq+X9/f19wo7a/LRzzWa+3lZDrO0MA2OuAeM2b5AmPK60VyCTy+Vy
uVyh1NzPcaBoaRIYO7uYkwAAhKmLC18sFDGdXGwG9mTo7GolbWkWDWQu32ucbXfe6TKt+zg3g+u3
QsnaW1Vuk6f68/FCFELDYph6ukPYkaGJCX27luVOCAMDA624X44n2OhJQ2k0FMkgAdhWvhMnBrja
mhlo+1orcs/l1vXrSLvo5+da1Bdpnf1tOk+dpuNn+RkRsPD1IF3L6c37S2RXt0IY80wISZ2MJgiC
pu/3OKAlzU29E12dTfMEfbSRk7OluC6txDrR38WCbOumOI4utqqWAgEFAEBaj/PhtRZU1HYzxy8a
52FcU3ptiFnTmZdWGzE/KjG0MyWv++FHzBEa7YY9dA0Cnn0rVpNXazB2nIOxuqc2N+14fpfjrD8u
DeES8OK6CF3DsfXbLqptQxKTon3sDFTC5tKzqaer+ijCImrVy17tWSKHEA9xZgYkzvRiAiz9ILA3
e9OGdIHN+ClTxns6WnIU7cUn9p2oFNMAJG9szNQYPxdrE0LcVpZ14lRxlxqMnCOnT4vwsGLJuuuL
M1IvNOC4GNIjhqHlmAkTPZS1B3u4PklzJzBLTh/J6NIYO4fExc9lq38/0wYATEcXk9MZ+873Sfvl
mw6RKxOotM0ZzTddmiFNeKaEdfizryTyWeq+ppJzZ3IbJUPv7NJ9zc2SUBcnblGf1tHVVtGS39yk
EER5OvOzuyX2Lg5U68kuHQAA09HX06Axs05BaSorekJ8vfhlBaJrB42u99KJM3aLpyZGdew+26Ia
ll8SQqPXo+jpEmbujqrDB7emG46NnzttXnT7xlNHvtpJvjVHt2/90XodgJFP8pJJJkVHtx7u5bhF
z5q3QPnrrxcEAMBwGGtddnjH2R6xSFIsmvnmfMahLw/V6oBhMzHGQ1F0ePMhlUX4/EWJUVU1xxtJ
5/il89xbTx7eVCsiLb2ips2Y0LH1kmPy4jDt+UObqqWm3vEzF86V/bCzSIyxix45js/sNT4AQGsl
bZdPHsntMg2Z5CjM255XL6UBJBWZZ8yXzgt0z2nrB6DaL2WXtw90au84/EP1NVVUKQXlpY0iLc8t
cuq0Gdp9e/IF18UuaR/7woIgEwIA6L7CPdvPd16fyZSguVkZ4OJkUKV2sdO2lnZpxarmvggXJ+Ni
oYsT2Xa+XQMAwHEbN4bZdqHPkMczJLpahJE+PtZFWddfYKal1adP2i2aNXVS+64TdcP5O0No9HkU
oUuLS85kVnboAHozCgNWuthxiesnXRI833Avcc5PZ6uENIDwaIbz2kl+ttln1ABUd9HZvPpuGuDG
tkjXlbV718CP/cXlPeEelkZEh1NYEOPyruNFzVoAkFw8+FMRCVaxyY7tmd/m1MsAurMOn3dfE+ht
WpzXj6mLHjV17cld51p0WqVMoaEAgOFiaqzqFV29PqIT9fYRzqZcoh+AViqU99wgLanPOl0/8HNP
1fmLHivDxloWCLqvxSHVcWHHDzlXtn/LJV9dZ1OrdpqLs5PakWw7164FqrepWRbs4uJk4szpLGhV
wcAUKjdDQ1bCc2Ov7tdknENeV8sNQ8nK5gtpF23mT0rwE+YAQujBPZJrumrV4DRLWiFXApPFuuFd
0tzKnGUf/+oHU66+pKngk9ANQCvkittukW0dEDdpvIe9uRFBM4zInjImweXxGKIG4bWmgdJRTHNL
c86Y2W+tm3XlRVoiMCMAQxc9crRGIZFIrg0RUxKxlONoZkS0DlwhZfDNebTkfmYB33Atl8VhE0Df
lKu0Tq2+y/0C2o6mdiIudIKO3ZHTqgYAqqepRe0XGGlm3HOpRQEABM9rnL0oe8eufOHgjliuCcun
+rpmtdTeOJKs7b544rztouhpoe1MwOMJoQelt4lU11ASsVTbfP67rflXbiEkSYqiCIuBt29zPJN2
0Qum2Zen7DzQ2KfhT3hxtQ8ALesX68wsLZhw5X5IkiQpqViirMxYv6dMBddtWg8fCqGb0KLKy21B
E+JDJefKuzRc55DJvmRVar0SLG5aTq1Ss/hcNsnUgFZ7rbIybCcunGLaWFTe1CNnWHiEh9sIijKH
dBPSNarWpk6Whwu7rbRloGet62xqpfy8TXqymyU0AGnl42PRXZLae+2o07SU16jn+Hpwa8tu6oxT
faUnM+wWT/cxpRvu71eBELpKXzcC0CqlimVqakAymYSwtKDJcuL0CHdLvrndmHOZzecAACAASURB
VJBpz780w4Nzt5UJAwMOrVGpwdByTPiU8XYkAICqNv8SFZiUGODAN+Kau4yfvWp5tFX7pUKha9z0
EGcLvoWjZ/jslSsmOdzPlGmEhg0tKU87mCd2mDh32Yplc0JNWzIOZTarb1mM6iq92MiLeWHVMzEu
hte9russOF0sMR8XPWPBgukRjopLR44WCe/3BFLR3Nilo4TNLVfmI2vamto0VH9Lcx8NwHTw9TZu
q6i5YdKDrrOiSmI/zotP3Lo5ed3ZE8X4VAyEHgLB5XKHYTPXHo7BCnj2raiuTT+c7qQACNOw5Wv8
q3/YlN1LWAYnL0rw4EpKDm09Vk07hE6dGulla6Ttb63IyThT1KEkLKJWvTym+NutFyUDm3S/NpGK
4PkkzU8MsGUrOitLhDYTLEo2bs4R0Qy+Z+zUmHEuVqYgaSvPOnGqqFNFmLhFTYsfP8aKoxY2lZw/
lVku0Nyj8AghhJBeDFPoIoQQQuhe8DkzCCGEkJ5g6CKEEEJ6gqGLEEII6QmGLkIIIaQnGLoIIYSQ
nmDoIoQQQnqCoYsQQgjpCYYuQgghpCcYugghhJCeYOgihBBCeoKhixBCCOkJhi5CCCGkJxi6CCGE
kJ5g6CKEEEJ6gqGLEEII6QmGLkIIIaQnGLoIIYSQnmDoIoQQQnqCoYsQQgjpCYYuQgghpCcYuggh
hJCeYOgihBBCeoKhixBCCOkJhi5CCCGkJxi6CCGEkJ5g6CKEEEJ6gqGLEEII6QmGLkKPO4Ifsuil
BFfGA6zK8pq1erYPZ9iLhB4ZhuvUlxaF8Ij7X5O0jnxuWbQtNuqPN+ZIFwChJx/pEPdCsh9HrdHR
NIBOIWypLMgtahLrRrpg6HHA8py5Krhr1+6LInrgBYbH9D9EiFJ25vRQI1syNAIwdBEaFoqKY5sz
mnUABIvnHDQpfqFN9t5jFWJ6pMuFEHqcYOgiNLxoTX9TfupZs2Wx4x2rT7eAmWd0XKgTF2jQ9JSd
O1vcbR69dIoufWd2F0XwQxY+4167K6WojybtopfGqo7vbfd7bgKjXmXjbmHIogXFJ1ILOjVXt02a
uEZMmjDGlKRB11eTfSa/WQaGDsGxE32sjTgMef351LO1EhoMnSISYr35lEIqUhkR2Jt6bBn5zV3g
2N3AdHSx5HGUjdlppytE195lW/vFxATaGQDQivbis+fKhRqmuefEmPHOPAO2rqf45InCLjUwzX3i
4sMc2WpZvwQ4ROfIfRo0JDj8j9AjoGpp6uLY2ZsxLMcnRhtXHfltx2879mYpfJNiXJnddU2kq5sF
CQRvjBtbynF3MyWAtHJ30TbU99IADDMTaU7K1i2bUy6zxod7GF7dKGHiGx9v15b++47fduzK6HZJ
mOzNBYYJj2jI2L1ty/bTQpfoEHsSOGNipnr0nfl9287dRwq7cIj7sUaaWBu1n03ZsXnLkUbLmGhP
o6vvMB0ik0KgcP+OHTt2HLzEDEsKt2UQBqbc/oJDv23dsq+MExrpySUIi+CpE7kVB7fv+D3lTI1s
BD8JGiIMXYQeHcLEycW0vbJGTAGAqqOyTu3oak131zUynV14DN4YF03J2WrCzc2EYeHmrKuv66UB
gJJ1tfaqAShxj0BlZGx0dUoN28HVtre6UqgFAK2gsrrP3sWOqe0uL6gWagDUnR0iA2Mug2Hj4qis
q+xQAYBGJJLiAPdIowHgjvOiKEFzs4QC0AjqGqWWNuZXpsuRFq5OZFNlk5wGoGWNFc0cZ2c+SBuL
LrXKKKDEnV0KrgmXNHZ05ndUVvXrAGh5X58Kv+3HHg4vI/QIcBydrdWdl/toy9u8qeuqa+JEujmC
i6Y+rb2NTU5yd2Q70w0Zons3mTcsQRAAhKG1l/84Z3MDkjSxJBUEAEGSFEVh6/vYoBVytZGpCQNE
WgAAIIxNjAlFm+Kmr4ggiHt+b0yei6/fWDtTJsG2NIQ6AJIkaUqHX/YTBHu6CA0vgmXqHJoY59Sd
c7FFI2luEtt5jTUhAYBt6+XOaW3qpkDXVdds5B3poalvkFF99Y1Mn4ljyca63ntcfVW3N3ZaeHqZ
MwCAaeE1lt/e2MH2ip/jrb50OjU19UxFLwUAlLBTYOLgaEIAEIa2tvwHuPcEDStdR0Wl0iMq2tOC
QxJME4fg2GBec3mdjAYAILg8UwYAcOy83dmtTYIrdYASNrVQLl7OhgQAYeTq7axubhZbR8yOMW/L
OnE89cTFFiUA0NLubpW1kx0bABh8O2sjbNEfe9jTRWhYGPrMWOVBAQCtU4paK8+kFDSIaQBBQVpW
9OQ5S0NomtAKy1JPN6gBQNdZ28z24dU1yABAVFevC/NuuWfmAi0uO3XKZHLiknEETVD9NSczKmVK
s6b2QJ+YKeb9MplWLaVooKWV57IdEuYs8ZSKRe09ArnJo//w6K60nTmH07TRkXNXTDUk1eKO2txD
Fyplg91TtkP4HDc+15DoKz9xqkkNV8aXta3ZqUVxcfOfmwhAqDryj+d1apicRkVkSNwUN5lcypBp
AUDXnn+mLjF20TNKibinTdSLl/AfewSXyx3pMiCE0Ghk5Je83Ln052M12pEuCdIbHIxACCGE9AR7
ugghhJCeYE8XIYQQ0hMMXYQQQkhPMHQRQgghPcFbhhAaBiwWm8s15nAMCALvi30K0TStUillMqlG
o36A1bF6PMXut27gRCqEHhaLxTY3t8T29KlH03Rvr+B+cxerx2gw9LqBw8sIPSwu1xib1NGAIAgu
1/h+18LqMRoMvW5g6CL0sDgcg5EuAtKTB/iusXqMEkP8ojF0EXpY2I8ZPR7gu8bqMUoM8YvG0EUI
IYT0BEMXITTqODo6vfX2O46OTiNdEPQ4eqTVA0MXITS6ODo6LV68aOvWzYsXL8LcRTd51NWDwWaz
h32jCI0qxsamI10ENFQDTerGjRvF/eJLly698MILLS2tYrF46FuQSiX3tUesHk+Qh6weQ6kbGLoI
PSxsVZ8UgUFBs2fN2rhxo1wuBwCNRjPQsMoViq7OziFuBEP3afXw1WModQOHlxF6hEiL4KXrvt6e
krJ/3/aNf3thgs3gM+AI7thZb/13675DRw9u+/avzwSZX5n3SPADFv/5m+37jh7du/WLt+Z4Gz/Z
M1+ZAS9++f2nK4Jv/RgMh+l/+vq7PyfakABMn2WfffVS0KN/Pl5k5MSrTeoAuVy+cePGyMiJj3zf
t0Fajl/ywdeb9h4+cuj3DX9/McL6Su2wX/jl8fS09IH/Thz8aJLhSBTvUSNtEt//Zv37SQ6Mm98h
jINWfPbdlysCmACE+eR3vnl/up0esko/1QNDF6FHhrCe/u4HSdoDf3luYfLitT+2hf7pw4WuJABh
mfDeP150uLzh7RXPv/r5KdbMv//92TEsAGA4L1j393mGZ//7xvPL3/620HrZv96foY/W5pEieGHz
EsfcOKJG8MPnTnVl6/uMYuP3G65vUgfI5fKN32/Qc0kAgOG66OMPp5Gn/vfG8udf++wMa/pf3plu
TQAAMBxcbGq2vb182fJly5Yve+75z84q9F88/SA4LlOTJ5jdWBFYrtPmhPL0f7qpn+oxTOeWDLcZ
a5eFmlz3W1KX7v58X6VueDb/sAjziStf8SzdsCW3n776IsNtxtrFnGP/3V+lA4LrHJ4QHzbWhqvt
bSzNysgs7dGYhj3/xnRXBgBQqv7uhstn089VibQ3bphlMS5uaoyfsxlT3lGdfyYjv0lKDXPZGZ5z
356l27f+SN1j8stEQ8dw8hqju/R5ZquSBugtTs/umhPoy9vVYjnrmdCOXa9sz2mjAIQHvtoUsGn1
orCD/ynwmb/ArXTTSynFIhogb8f6nSE/PDPXJ21jmfbeO3tcUaLaGiJqXuz5L052XTk6DLxnzPAS
t/eM6mtbtn6eVPr3Xx4qldIAov2Hixa/4WLLgG4tYeHoQLZcqO7o0ox0GR85XXNVm+vMmb5FO0rl
g40zYRU1L5bb1Snlj2zRHpVhHNBRVR3dfLLxSjLQKsmjCwnSIe6FqfSJrZltwxJxBC9k3jMTtBeO
7zwuM3L0j4qZ5N28twQAqK4Lv+0p7CM4Zi7j4+c8b3zgp8M1151yMl2mLJnlXJd2YFs3be4RHpMQ
3rYlo/UJbh7RMNPV5hWqVycluFWkN2osI2bFOIkuNUvBcrK/bVtBQedg7aXFRXlVBs8FuXMEAf4m
tQcL+wZbH7q7IL/5pZgAB7KsabhP5vRI13zqgHDJkjkheT9fFNMAwLCfNHeC7sKmCzYrwq8txrIJ
e+aP0yPc+JSgLH3n9hO1MsJ5zrqX+ZnHNSGJoe58QlR7bve2gyUiClj2kYuWzAy05dAqYXXGrp2n
GxT0HXf/2Go78o83B39kmnnPTPLpPv2/Gi0AMOxdbLtb20fFWTYtvni4MOrVufGZlYebtQBAcANn
JTrVH9vZGf/stb8LQJqMnfbSyjg/OwN5U+6+LXsvdms5YS9/GtO+u8ouPtbX1lDZUXxs247MFhUQ
pt4zli6I8eCRWmlrwaEdKcXCx+vgGcbQpZUSoVCon4rCNDQxoW+5EPDAW3N0d1KUb8+pbqMAOttq
LgIAEKYAoFX0i0QiGkTC41Ljl1aEjE2vuay8shpp4eZm0ppz5lKjAqCjo6ns3HAVCD0l6P4LP34b
/Nlff9j3RwCghHk/fby1VMPwsTKHXsG1poCWCoVqvqU5y9zSXNcruDYcQ/X29IK5pTkJT3LoAi0r
OZoa+/6c6WNLdlWrCF7o3Hjzkt831HKWX7cQe6y/zeZN/9zdb+gzd83qlcmtn2yvACD44+Pcfv/l
s92dpOu0P6xZsajt45/ymZGLnnWrW/+3L+pVRg4eVnLVE5i41zBD39z20UwzxaXt/9hVogAAwszR
gWc//qOfZxoxlN01OQe37Tjd9NSOLwPVcWZ/btTqeROzvskU0iyXhDnB4ozPc3onxF9bhrTx95T/
9NUHv+pso1584/kXelr+d6oPgDU2JqJq0/cf/iLjhzz7xvIVSY3/Otg2ZsbzcXDkP3/JFpHmbi5s
2WNXOR7p1AUD18QVi+wvb912oUsLhKnfgpXTmGd/3VXjseyNUEluu5mfjw1H1lF+PjW9uEsNAKSp
R+yMhBBXPiHuqMlPT8tvVwEAy9JvUsIEbycrrk7UdOls2nn1xNeXhnAJeHFdhK7h2PptF6VGzpHT
p0V4WLFk3fXFGakXGmQ0AMc+bMbMaC9LtqKrorSXdZdy6kRCsYmnn1t2e90dR4dpjVpDMBjXX16j
JL0i3fhxftZl+d3XhoEI69iXV3m0ZvfbB3tYkJKWy6ePn67o1QIA08I3fvokfycTnai1Mist/XKP
9g4vkjyvKbMSgp1Nqb6GogYmAX0AAITJ2MkzJ/s78Ulpe1V2+smBXxp6jHHGrfj0vYCK9avfPd+s
MQ9YuPaVZfGF/zwOAHDbpoC4/euPXbNx3yjBhQNnY/84b1Lm/86YJs3y6kj9d5GEnnD9Iuryk0cu
C7UA6oq0s7VxswNcmBUKAF1dxqGcVhkNUHcqo3Tqcn8PVn4DRQPXwdPdurOiq61aNlIfaphoL65f
Mn/z2Cmv/PVvn6jfeWd3k67vwo8ftDBEHUIFxzZ43po/fmqpXv3ZBfGTXw3uQFV9/HDVuuTZ/gVb
20OT49i5P59q1dpfvwTVkXX0fLOMAmjPSi9IfMvf2zQjB4AWFRxLrezVAXQXnsie+tdgX5vDbRRF
sS1dxzqWFzb11teM1Ge6i2Gco2EQ+OwHHw348I2pTiSAsvHUgVxy4rxJzmyGReicJPuGY4eL+mgA
IK19PHWF+3/95fcLIufpS5LGGgCQNhMXz/dR5O39+affMlrMYhcneRkCGHnNeC7JSZid8tM33+84
1WwxKclfcPSrncVyacH2f33yr20XpQRvfPLiMGbpoU0/bEmtYI9fODfIlACOx9RF8TbtJ7ds/HFX
ttzF0+oun5Rqv3DwjGjsotfXPD9rore14c0X8Ak2z3VC0gSLhrLaG8435aVph8uN4l5a+/LC+GAX
3rUTGIaDr1v/hV2//Lq/QO0z75k4RyYAyyX+2RlOPWd3/vjTnqxep6RFk52Yt3+RsAhPTvani1N+
+n7zsVrzsa4cAgCA5TFltp8qb9cPG7YcKxNqdE9y12eUYPpNTXIo3/Pz6fp+tVbeWfjb7tKxLyyd
wOnt6QULi6sTloHgWpiz+wQijVDQyzSzML36BmlmaQa9AtFT8F1rm04eKOIlzE2aMW+CJnP/ue47
fyZaKZXqDIxueXi8ViqRM7nGBtCXvW3jaYnvM3/+7LMPV8/yNXvSZ5oBaPtr0rcfa/GIjbAnATS9
NcXFlU1dPd3NJWk/bMliTYjxvVuv4YlHiy8eTO8NmjMzaWaSY83RoxV3uVpAy6UyMDS6uZWmpWIp
cI2NCF3doY07K3jxr/3983++/Vy0o8FjN/3/EV3T1Sn6KQAAbcf5A2ecX5y7yFLlYHJ5957KwbNS
Wlp68sSlFg1AT+op59fn+bul1itDQ3lVx7YUNmsABKePWXmsCBxj2G4Q7iPP+flkmYAGgJoLe+pz
QEeTVtd2S9oEhzm2Z36bUy8D6M46fN59TaC3aVm/vw9Ztv9ESYcGQHT6lIvvc7Z3K3tb9q7vy5z9
Q8PCZr40MTJrz84zzQBAOiS8/mECAFCK7vLM349fktxYF6i+iuO/NBR4BYeFRS95Lar62G8HLokA
gBJeTMsob6cABMcy3V+P83M4LTAOD4DinSdL23QAwrQ0+9fmBzpnmY6/9cXTCjs/u67s77Pq+2gQ
FKRl+4yNG/ikBME24ZuwtLVNRbnD852hR4wAoKlr8UIDzTYxZgtKSjpXho63/a2hnQYAwjQ4zEtZ
erRO1cQulcwMC+EdSe+jAYCwGh/qIiz5YXimLowwWl565HjLuqVT1Xk/pjVqAO7YGBI8C3OGqPaW
Uw2OmTlX2SdS0KATVaRvrUj/zdQ9YeVrL85ueH/rkzjTLGHdpoTSdX89MPD1klxjLiiVypvihmAZ
GDCUfcqnoQrcBdWReSAr+o9zQpoPfpbXd7c+PcPMgq8TCftpcLz+ZYJvYQZ9Ff0U0Mq23JSNufsM
bEIWvPrikuiq/57seawGCR75NV1KWHCyMPSlaF5FSmaj6uqrfQLh4FGiEXT3M8YaG3K5Flyuy+I/
+19btducx2ObUoIe0dXfGa27eQekuaU5Z8zst9bNurqMRGBmSJkwJXVXJhtT/SIxfbfQBQDQipuL
MpqLczxnvbQwPvjy5jIAquv8jl0FIp1aJlHc6aCmld2V2Ucr8/Min1uVEO1edlgMQPUKegcPEoWg
R2ZoZszkWVpwzL1ffD/i6oq6Rkvb27xozjU2NdaKegfznZaL+tQ0AICmOn3PuSmTpq2cMEfSWHQ6
9WxV36iYafEE01Zknuv9aNHK6KqfL7RqzQOfeW6SUcXW4j5tx9FdBUkv/3Fp4zfHajX2sX9YEdJ+
4J08OWiK96U0fvXi2nldP51pZbgnvrrUrXTr/yqewEC5HVqYvWsb10+Zc+l219mYzgGBNhWF3bRl
6KxJTq1Zv7VS4AhA2vkG2uefb9Py/WZN8xHnfVetIQycAnyIukvNUqmwV6aVy57EWVQAcCmv6dVX
/ri8ff2+Ugk/aOGa2byCjdkCmrAMf2aec8vZzJIOlYnHlBdXBLUf/fOTeFJxf1S1R7ftkprXn7rd
BDLCwjvI/XxPnczQfdr0YKp4W5mCBgDC2D3Ai1dfLmY7xsyaaFp9pFBAk+ZeQTbC0kqBsk8gVmv5
ctWtmxtZj/x2dNIseEowq6lO7B4b7Vx3snngN0Ca8nkkiHQAwOCbm+hkUoWSkqjEBSnfHmsYrF4k
SVC0SaiEdLUyI6oEA8cVQZJA3XDSR0nFEmVlxvo9Zaor65EUxfAO0ZpaWrBAqAYAhrnlXW/6YjAY
usE0pxUdHX20o8HAkK5WKe7v77/jIX3detrejh4ly9iAAWIAkmfGI0BJAwCHb26kkEi1Mo5E01O5
+cczg3dNECRJU0YhY299kbaMljHtLflEtZAGIIwtLDiEAACAljXnHt6ae9TAJnj2krkJXV/tLcOL
uo83eeGPH3yx/OWln+98z4RUCWtzd37086F2GqDn5Gfr2K+sXvv1s5aM/obcw3/7eHedBgB0TSn/
+Jhc/fKfN/yBTwmqL2z/649HO56eTo6uqzCt6/ZvUYJ6oduSvz7rakqI67N+/Tm9nQISAGg57bzg
L5+6mjHlzRd3fn+wRg0E39gxfO6iZ0wIWiepS9+a2vBknn32pH/xkckrr6z9erE59LdWZf+87pf0
HhoIWXcnnfTs35a9b8GSd1bmHPz4w/3Vo+BIp2W1mcfu8JamuRli3/jnq9YGqs5LR374/bKMBg4A
rVIYT1z9j1U2Rjphxekft5zvpYFjaOGVtHTBchZQ6q7i7TvzHrtr4cMYugTH2MzM7OotQ2ppn0zD
tJ2YPNm0ZPemDHng0hfnJjb/eqhaBgCEif+USfVHLnYznSck+EHV/ga1Wld4Wb04PqH5WG6rxsTe
MzzGvXXv9pzyvMqombOmCFPzm6RsO79JCW6Nv/9eqFKqWBamBiRTBdrWS4XC5XHTQyTn6mWG1mOC
Y/1lxzdnNJZUUQviExtlWS20fUSCvylxx6d4sVwSXpprXZ9TWNUi1Jl5x8XYCwtOdFE3jl7c5vPy
xj/7Yqi8KLe0vlPKcQybGkDWHGpQAReAtB4fP7E5rVTM9YiJc5eW72ijpD0FVTEzEmM70oq7ge/o
MzHKqmz7nsrbvXi5srQrOnJ6dPeJsn5jr/iJTgwQABCmXnER/LbLlZ0qNotJqvrlT09b/BRTtWT+
9GHmT7e8Tstrj3757tEvb32j//Luz17frY+y6YP28uZ3Lt/+LVqa9e3aLAAAoCq2v/83AICje29Z
qr/88Dc/7Li+4aT7Ko7+UHF02Muqd7S4LOXztSk3v6poPPPLJ2d+GZEi6RXVlfbpH9Nu/56ubs9H
7wz82Hv6i7dOAwAcv2UpTUfWpt1bbjjnUrVl7fwya5hLOqyG6dnLpNnYiJAA//CIq4JNO7LrjeOX
JpoW7j5Y0q+TtzdKnOOneykrynvNA8LNuipVnlOSJgU7QuOZA2mlfTqg+htrhTy/uPj46JAxZuq6
M6m5bUpaI6irl1r5T4ydMiU6wIFoyjyR0yrXSfs1NuOnJsX5mfSUVzc31HZwxkZNiY8L87Ih2i4c
P1cvo7S9TS0a++DY+NgIL35fVQthb9CZf6lNdWOZfZk1WZXdfe1tKjMPv+DwiRH+juyu/CMHs1tV
wHEIDLfpLShqudNkfVVPi5Dl6BMQGhkVOtZMUXXqwImyPh3BdRkfxG6qZgUlJkb5WasqTxzIqJVR
oBHUN8isgyclTIkKcDGRlqWfKOzR3PZFWt7eIOB6TZwyeWKgI9FQ02dpparIrRaCiWvopKlTY0PH
cLuzj5ws7XvqR5yeFPhw3UeD4HnFTeQ3nM5rHq4hwtWvvlZeXqbR3PDQCSMjo5WrXiq4eHGIG8Fn
Lz8WmA7jp/ko806X9Q5bV/bhq8dQ6gbB5XLvudAwMw59/o2g+p9+uSB43Pr9w4Gwjn15lVPe+h1F
Nz9ODD2tbG0dRroIaEgCg4Lip0y5/vm6RkZGq1evPpWRcam4eIgb6exsu6+dYvV4Ujx89RhK3Xjy
J9sjhNDQXCou3r17z+rVq42MjOBKk7p7956hJy56iumnemDoIoRGkdbWloGG1cLSYqBJbW1tGelC
oceFHqrHSAwvI/R0wfHDJ87A3yp/sCYVh5efeg9cPYZSNzB0EXpY2KqOKhi66E7wmi5CCCH0GMHQ
Rehh0fTTOA8f3c4DfNdYPUaJIX7RGLoIPSyVSnnvhdBT4QG+a6weo8QQv2gMXYQelkwmxd7MaEDT
tEwmvd+1sHqMBkOvG8P0RCqERjGK0qnVKpIkGQwmQTx2f0oMPTyaplUqpVjcp9Hc92OQsXo83e63
buDsZYQQQkhPcHgZIYQQ0hMMXYQQQkhPMHQRQgghPcHQRQghhPQEQxchhBDSEwxdhBBCSE8wdBFC
CCE9wdBFCCGE9ARDFyGEENITDF2EEEJITzB0EUIIIT3B0EUIIYT0BEMXIYQQ0hMMXYQQQkhPMHQR
QgghPWGOdAEQeqqw2WwOx5DDMSBJEv9i+YigaZqiKJVKqVIp1Or7/pvzCD1S+EfsERo2JiY8IyM8
oB4jcrlMIukf6VIgdA32dBEaHmZmFmw2Z6RL8eDkcplKpdDpdDRNj3RZHgpBEAwGg8MxNDLiGhlx
mUymSCQc6UIhNIjBZrNHugwIPfFMTHgGBoYjXYoHpNPp+vt7VSolRVEjXZbhQVGURqNWq5VsNofF
YpEkqVarRrpQCAHgRCqEHh6bzX6iR5XFYpFWqx3pUgw/rVYrFosAwMiIi70L9JjA0EXoYXE4T2of
FwDkctlTmbgDtFqtXC6DJ/w7Qk8TDF2EHhaHYzDSRXhwKpVipIvwaA18wCf6O0JPEwxdhB4WST7B
x5FOpxvpIjxaAx/wif6O0NMEKyJCD+uJvh/3SZ+rfE8DH/CJ/o7Q0wRDFyGEENITDF2EEEJIT4Y5
dAl+0n8zCwtP/C3a6E6LmMxan1uctyHZfCRHexh+bx64WHD03WB8OAgacYTF5Le+3fDnRNsn4xSY
DFNOz5eGTr5lVJqgnf5POu+QyuJRHVW04+fSaW/qcJwYPcmG9zAnbRPnR5mQpFX8/MlmeGggNASk
XUSUq05jFxnpxLjXsgy3We+9N9N1xNOZoB1XakxvLC7ppfacRONhj9BdDevRS7rPTg7hSHt6FNyJ
ydPtR7xlQOjxx3SfGGletndXsVH4xLGsey3N4prxuawRTzY1obRRe8Vd19klaIdVGnYP8ZTPykLo
YQ1nMLID580eS3Qc+eTTVAE7aN5sj6snwgTXe8HHm4+dy848uuXD6Y4MfXrleAAAIABJREFUAADS
bdWO/ML0v8cMPsmHE/aXYwUXd632ZBBcj+lv/OenPekXcs4e+vHdybbk4KD0xR3/eu+LnWmZmWm/
fbY8kDfQ8nCcJ7/2n19T0jIzU3/7+i+L/HgEAGHq/8xHG/ecOJ995tBP78/2GLgtnmETtWZ9SkbW
hZN7v14VbILnBOgxwPGOCmUXZ+XlZxXSwVH+RgO1mrCK/9M378ZbDPyLdJ738ddrIrjjlv3nnckW
VlPe/X7jd2/H8gjCwDlqyZsf/Purr9f/37rXkoOs9Ha1RMWs3UHaXtfZJb3VnqGM6p2Mq8+RNIpR
hf8qm3lBOnO3wmMcDQBklHLmSYX/G4opx6WzjsojVuk4BBAO6rgLcg+7wbX4a2RzvtQwAcBE5/a+
Yspx6dxMWey7WkM8XNFTYhirMndi8nQHuvbQvqxz+481w5g584MHnv5O8Ce///Vf53nrSo8dK6SD
I9yZAABU05F9F1UWUxZMsSAACNOYBYm26qL9B2uZ/qs++3i+m6ToyO/HG4xDl370RpzxwB6YPnER
cCn9TD3Dc9qb/1kTbgikddInP//3pRiz9vP7dqdVc6LX/mNVoKHjws+++9M0q7bTe3Zn9rou+Hj9
25FcYI598X//fSnGvCPzcEabXXigBR7FaMQRxoHRQZqLWZUqTV12ntQvKsj0zr1YXfn297/JkvSf
++q11Wu+yBSbTVi5do5N/ZENn3z4z42n+nyfX7vIx0BfnWDpAU4LT+01cGWXoB1WaciD7OauK2+b
az0X04LvDTPmG5Y1UOPWao1IAACCr7MyYha/ZpT9C8n7g8I36o4dY958tU0/q3AV99SfmYy5Kq+Q
R/+RENKHYTs1JiymJE8xB3mnW/Jbb4KtWk06J86P+q4gQwIW8YsSrKjSr9e+vqlBxznRv+enZbYA
QHWnp5x5PWLK/OkOR3/TTFsQx5OcTzneSak6NqyatVWpNnJyshO4TwqI8fJxYFwEANBWbHrv3V8a
aNMy4+P/jvUPsGf2JqyIt+hIWfP8v3OkNADxw5cmGqnHmr+HcbvObD55qZOCZpar17NJyRO/VQUt
8OEIjr6/+qMzEsKm8pt9H04Yrs+O0IMhzEIn+sgrN0vNrKxAWVvRHx8VZpV9snsoY7Sk7YTJXu3H
Pj5yqY8G6M3evcPuwz9OCjpUmSPTyxCvglG9jZyyUsM7w5Z4qr2CGdWfMXSBV97tZRa/Mdi4NB9h
+P1Vx2WwlAAgY1R9w+qVAzRxahO1br400XD7zfdvMcwZ+KmT1dagsXGniYuP+BMhpA/DFbqkw/T5
E7gESfgmLfUdfM0wbn6C5en9InsnBxYtKi9r1QGAqrykWkPbAgDQ4nMpaZ3TFibP881Xzg9jd+9P
OdNPA2kZvuyf654LtzMkCQAAneTKo8qp/t5+GoBWiHoVNJAkyXRwsmeoc/IvSQeaGVreLwaOrb0N
g2GQsPafCVdKp7V3dHJysmToikvKZTQALSgra9dNuOMMa4T0gbSNiPLgWHmv/iTmykvUxEjHjIMt
Q4hN0tySL+/okFxZVNvV0U36WPAJ0E/oAsgPcVqWKrzimZ3TNLDfsKXnuvcYtPUy1dhpOp4tTQOw
gDkwsESrCI0GAAAoUIuBYXDHojI9ND6rNTa+FIcEkkeLWfT/t3efgVFc99rAz5TtVV1IAiGhglBH
okpU0Ts2YBsTMG7gxLEdX/ImsRPbcXKTm3tjJ05sxwUbGwO2MZjem+gg1HvvXbur7buzszPzfpAA
SUgg8LK7Ev/fJ5idnTmzRzPPnDMzZxBy+aVsAH46B4UuEbFsRSxPe/T1pW+cNSKEEOax5B+H/jR1
5eLgA9s72jsYLCY83A/PaGR5YZGh5M2dh8rZe6By1Ysr33yHDkc1X/6YaUWIiF73m2cmoLP/89yH
p6pGvvzDv1cMvFqmuamV4UeOj5WczDAhhDChTGI3NzU0M3bzR6vWb6tlEcIkYbH+LQUNsUE6Fg+O
DBOidjOmjIjwJ5DeMRsPwAMhR0+Z4le+8//9+6K2K3sw+ZSX/rh0atjR7ytstA0TiUUYQhxCuFAo
uCNwWI1KK470l2HlXd8m/fx9WE2W1ol3MlmJiu1E2utmb5wo+G+C7XG1ij/fOnEFlv9b8dVyDE2x
Lnx3wGVwFMZgHE+GUAtCCJEShCGECCbyr5THadHVtwiTlQ3bag58+FsDgFM4JnQFSSuXhGAd+w9d
MXZP4bTnD1/UTZ+7fPm4Hf8+9eOlFxJn/eJf7wddUo+ZsyyERHT3bEzVoX05z/xmQhSisrcfKLMj
hBDLsgiTBMbPWBP3yznzfHDUMOB6mcoft6U/9qc1733td+RcqdEjbt68EedeeXr3jquPv/ns3/4s
PFBoC0heuDy55f3Vrx7dd6Bq6XPL//gxeaxQNGn5dBnGQegCFxJEpk6UFu/N1t2KSU6fe6Vg1dqU
6APlBfV1Gr/U5bPL9+YavScunOCBVSOEEGe1UAJfDxHBs6LWa+nlacvWL9T8cLnOqoyavzaVyPgi
z+zU24fNh/lFY2lZIb9J02s6IeVwGqcpJIqmQ56z8/GBDzRavLOVHf1zm+qfJBVoj5zHogKEcMST
IsaIODnrt4IKGcfZzjzsTQHAORxxNxEmm7Zynj9qOnko03prIme4fPicGg9evHKioOPoO6/+/Wi1
ZMKKFZMFBdeqerxHjG05vveygeWMl/cea2IRQogp3vbOv861j5i9ZkksXV6iueto7Gzb0d+/8Jsv
rxqDZz+5blkMd/3jP27LtzTt+93P/3pCE7bipV9umOlR9PHLvz/QxlKFn/7qd9szTKPnPb4gVHMj
t32YD/MO3BsmiU1NxPOvFvTqDLYUXc22x6UkyNm649t+LJPN3PS7//fCXGVDaXvXXcFMzcWjBd6r
/vtvv1sTLem8+uW/jqgjVrzyx7/88ZfzvUp3/Ht3scXJj+zYiOq/CPMO4mzvyZYjgpIGe9JO08y3
7KiIsLH9fxshhOxE+VsClZKetN08cR2ry8Q5hBBNlP+dJNdZ5n5vGRuBq6ugYxkMG5hEMoRfvg2A
O/DzC3B1ER5cR0erq4vw0Pn4+COE2tqaXV0QAGDsZQAAAMBZIHQBAAAAJ4HQBeCnGtKvpB32L5rt
2sAhXUdgOIHQBeCnYtm73Cjk7gjinq9ZGNq6NnBI1xEYTiB0AfipKMp675nclUAgcnURHq6uDRzS
dQSGEwhdAH4qirK4uggPTiyWkOSwfa80SZJisQQN8ToCwwmELgA/lc1mM5tNri7Fg5PLPYZl7pIk
KZd7IITMZpPNZnN1cQBACCGCf3NgYwDAA7PZKD6fTxBDMrpwHBeJxBiGcRw7DG44wjCMJEmRSCKX
K3Ect9kona7T1YUCoBsMjgGAw8hkiq7OTOAmzGaTwaBzdSkAuA1augA4jM1G0TTFcRyOExiGDfun
cdwTx3Esy1qtFqNRb7GYXV0cAHqBli4AAADgJHAjFQAAAOAkELoAAACAk0DoAgAAAE4CoQsAAAA4
CYQuAAAA4CQQugAAAICTQOgCAAAATgKhCwAAADgJhC4AAADgJBC6AAAAgJNA6AIAAABOAqELAAAA
OAmELgAAAOAkELoAAACAk0DoAgAAAE5CuroAAIAHh+M4SfJwHMcwzNVlcTtdb7O322mWZV1dFgC6
QegCMFThOM7nCyBuB4JhGEEQOI7bbBTkLnAT0L0MwFBFkjxI3HvCMIwkea4uBQDdIHQBGKpwHPbf
QYEfCrgP+FsEYKiCZu4gwQ8F3AeELgAAAOAkELoAgCFDLJFGxyaKJVJXFwSABwShCwAYGsQSaUho
eGV5SUhoOOQuGKIwiUTi6jIAMOSNCg6ZN29xdEz8QJcPOY4rKsw7efJIfV2No1YqEokdtSj315W4
ZSUFdrudJMnIqNia6gqzyTjIr1ss5odaPAAGCUIXIYQ4SQA9Zi3jk8QqIxFCuLaM6MjiVe3CTM2u
LhoYAkYFh/zq9Tf2/LDz6pULAz0PiuP4lKnTV61++h/v/8VRufvohK6nl/eIgJFdids1pSt3W5ob
NGrVYJYAoQvcBMHn811dBhezxW+xJb6Jd2Tyy74S5PyFX/IpoSlkJQG25Hc5gRfRdsXVBQTubvWa
dRfOn7l8KZ3juIHm4Tiuob7WaDRMnpyanZ3hkPXyeAM/forxxAoPpVIhl4mFJGa32ZgBizYEjBod
VlFWdCtxEUIsy3ZqVEGjQtWqtsEswW6nH1rpALgPDgldfsTyVzfG6nOKO+w9pmKKCet/tdKnJkc1
dt3rCyXFuQ2W/r6MKSas/6+NyUzPz8lxq3/74ixpU2Fl5+0l4v6zNv9ysi2zsK3HWjD5hPWvL5aV
5tSbiZBFr/3yqXkzZ8yYMX3qxMSYMb5Cm6ZVZWbuVnRL2ncYbRBeeplsu4JR6u6FUmpClUVW72EC
Z9FRm3g1ex/kVwGPjJ9teOGLrR/dJXFvaWqsX7f++RPHDzlkvQOHLiHy8JITVl2nzmCyIaFMKcEo
i23ojsmkVrXd2YXAsuwgExdB6AK34ZAbqWxVOUXUmMRx8p5XszCfuMRAVV5u811DD2HecYmBjN0n
Pn5E77IQXsnLFkXL7u/5Orr86CcfffTRJ9u+PXKtXhC7/LmNC8IH7j63xW/BdWWCzLcx2tBPyWiD
IPNtzNRii99yX4UAjxoMwwY5yiDLss54ZpQnlgrsRp2BsjMsYzPpDBQhkQjgWVUAXM8xdy8zjbn5
2pGJsV63d2siKCHeszE3X333s38iKDFeXnnqRKkoNiG450DQnLGhlopYtDzJ636KyFEGtVqt7mht
rMw9v+fLnRls4tKFMdL+jjacJMAevIyf9/eeE23xW/pErCDrbXvwMk4ScB+lAMClCD6fsFPUrR4h
lqJojM+HoRABcD0HPTLEtufltnjHJwQQ3RP4oYnRoqqcIv3dM5cfmhjNK8spLMwt5qISw4U9PrI1
XvjxbNuIOStTAx70YEE1XjyVa49I6t0E70aHrSUrdvZp45K1h8jaXl1/GG0gK3bSYWsfsAwAOB1B
4KhX05tjGA4ncGjqAuByjnpOl9MW5tRKYxJHdwWkODIxEpXmlPd7Ffc2cWRiJF2UV2Oz1+cVmMMS
o3o9esd0ZOw/VilLXZEWKhxoCfdgb6xuoL18+mstM97JZHN6383gyTierM9Esjmd8U5+wBIAAAAA
NzlucAxTaU45HpUYIUIIU0QnhpoLc2psd/0GphiXEGqtqTfJPTwUtoZqQ3BCjGevk3FOX3jkQA4a
v2zRuPu8uNtzNf1PZpURuK6sz0TGJ4nxSeozEdeVscqIB109AM7GMGzvMf4xgsBYhh3K9y8DMEw4
8H26VFVOsfWpxGh5SV1cQqA6/1jTvW6hik0cxfcIWfOLWynHJsT5ZaS39rwlxVJ9et+lgPWLliW1
p99/mcigkJGE5pp66N62CcB9Y2w2RiYQkMbuR2xwgYDH2cxw+y4ArufIl9jbG3ILtBsTE+O9Yr2a
ruWr7nELVWB8vGfdkX/szDJ0zyiJf/IXMxJGXTpe22tGuuXSvtNBz85dmVJPovtKT37A1LR4XuXR
kv6uLOPaclYReWdj906sIhLXlt/PigFwKdpspMRyudSuN9McKZTL+IxJQ0FDFwDXc+jYy2xbXm6r
T8qC8eLqnGJdr12cFMoVt8nFJC8kMVZcnVtsuD2bqTS3gjcuYYzgjuVqsg4eLhVFhHncq48ZE8g8
PDw8PL39R0enrNy4bgq/4PCxQkN/RxtClWkPmDmYzbIHzCRUmYOZEwD3wFi0GgMjkHv5+vooxZy5
U2OkIXMBcAOObOkixHUW5tTMWDqiNKes95hruF/q+ldSb/2XKjhwjByLlR/ofacVVZlXwqxKHCup
uqMjzFh6bP81/3UT71EAXsSin0cgxNkths7W6sJDX14v6RjgwjKvcpcl7Tte5a6eNzDf+cAux5PZ
w9eKzjx1jzWDRxjHcTiOD+ZRXRzHBzOGhgNwtFmnNuucsSoAwOA90mMv2+K3cKRUkPXOXeaxTn4f
tzT3eZwXgJ6ef+HlkpLCy5fS7zlnSurMqKiYrZ9/6JD1PjpjL0dGxVVVFPccBhIhRJLkmPCospKC
wSwBxl4GbuKRHnuZaLtCj9vMesYQqiyM7dsi5ngyauJfOUmg8OrrLikeGCpU6o7nnv+F0Whoaqwf
qCGL4/jUlBmrVj+9c8eXOp3WIeu929jLwwvHMaNDwzs1qlvdCV0vPGhrbRpkmsIwkMBNPNIt3S62
+C324GW8yp1EU3rXfVWsIpIJnEmHrSXrDkEbFwwGvNrvYYNX+4HhAUIXoa5X+4WtZbyTu57HxbXl
hCqTVwmv9gNu7ZEKXdTjJfZhEVH3lbgIQhe4DQhdAIaqRy100c3cvd/ERRC6wG1A6AIwVD2CofvA
IHSBm3Doc7oAAAAAGBiELgBDlZMe+R364IcC7gNCF4ChajDDcQAEPxRwJxC6AAxVdjsNbbh74jgO
HtIF7uORHhwDgCGN4ziWZbGbXF0ct9P1+9C0DVq6wH04duxlAIBTsSxrs1GuLgUAYLCgexkAAABw
EghdAAAAwEkgdAEAAAAngdAFAAAAnARCFwAAAHASCF0AAADASSB0AQAAACeB0AUAAACcBEIXAAAA
cBIIXQAAAMBJIHQBAAAAJ4HQBQAAAJwEQhcAAABwEghdAAAAwEkgdAEAAAAngffpAjCE4ThOkjwc
x+El9gC4BMdxLMva7TTLsoOZH0IXgKEKx3E+XwBxC4ALYRhGEASO4zYbNZjche5lAIYqkuRB4gLg
DjAMI0neYOaE0AVgqMJx2H8BcBeD3B9hpwVgqIJmLgDuY5D7I4QuAAAA4CQQugAAAICTQOgCAAAA
TgKPDAHgAKOCQ+bNWxwdEz/QdR2O44oK806ePFJfV+PksgEA3AcmkUhcXQbgMJwkgB6zlvFJYpWR
CCFcW0Z0ZPGqdmGmZlcXbTgbFRzyq9ff2PPDzqtXLgz0oB6O41OmTl+1+ul/vP8XR+WuSCR2yHIA
AA5hsZjvOQ/B5/OdUBTgBLb4LbbEN/GOTH7ZV4Kcv/BLPiU0hawkwJb8LifwItquuLqAw9bqNesu
nD9z+VI6x3EDzcNxXEN9rdFomDw5NTs7wyHr5fEGei4QF3v6eUlxm4Vi+nyC8eU+Ph5C1myhb5eV
lHr7ekkJ2tx3dowUSuUKhVwhl0klYiEf5xi7ne1nIwdcwi18ua+PmDVZ7Xd+UYZZepYGgKHKbqfv
OY+DQpcIWfTay0v923NKVX32KUnM6ldfTJPUZFbrb+5VuN+MTb96KlyfW9hq6zkrqQybNGfh4oUL
5qWlJsdEjvbGOptbDf1uAxmy6JcvL/VvzSpT97+P40Fzf/GLZHNGUXuvz0UJT/16pU9Vdq3xIe3i
fJ9xKfMWLlo4f+6sqeNjIkcp7KrmdhMrn7Dh9QXi4txGy8NZLUKWtO8w2iC89DLZdgWj1F0TMUpN
qLLI6j1M4Cw6ahOvZu/DWv2j7WcbXvhi60d3Sdxbmhrr161//sTxQw5Z78Chi/FEEiGfx+OsZluv
ljcpUSpEJGIo0+2Yw/hShRhjEJ9kLVb77Y3A+TIvTzmPtRiNBqPJTNEsIZSKcZvF1rcxP9ASeiIE
EhFuuyN0cb5YTNrNELpgOBhM6DrwRipMGp2a7NN7gcSICamR4t4XuciRiXEKmhudGOPR4wN+0LSf
Pf9YvKD+ysEdn3/29d5TN+p5sfOmhQj7W5UwPHGc0MaLTBzrVt1r4jHzNz67KIIpT9/79eeff7P/
bE6bYuL8SQEP/cK5LX4LrisTZL6N0YY7P8VogyDzbczUYovf8rBL8mjCMGyQw66yLOu0h2vtFI1L
ZCKixyRcJJOSjL33iSrGFwkxq1FvZvjiHnNjfKlCglNadafRQtF2u91mNes1HWpjn9QceAkAgDs5
MA/seqN8Qmpk1r6SW805ybjUJKFB3+twJBiTOA4vPHZWsSAp3i8jvZVFCCHeqJnLpwnzd207WWvt
mk3V1lBZMECHqDQqMcyYcaQodElCtKLghs49zpFFY+ctS6Avf739Umv3YUnVWl+eixBCmPwhrpeT
BNiDl4mOLe45sStf+Xl/vzVFkPW2ZeERXiVc331UcDajCSllUoFVR3EIIYTxpVIBY9Jahcoe3Vu4
UCzkrJ2UjcFpqVhEmrpSFeOLRQRt7LQOYizZ/peAEML5UoVcLCAx1k5RLIa691SMJ1bIpQIextlt
FNN9DoKJPHxFtM7Gk0kEmEXTrqcJoVQuFfFwhFjabNAZKRYhQihXyIQ8HHFM9zSMFMkVUiGJc5zd
ZtLrTNBmBm7NkaFbd+2afEZqsm/ZxXYWIYSIERNTRrdeuWhLm3B7LsnYxHBr4a6iAkX49LSEkZeO
19kR4oUkxslqT1++mbh3hXnGJo5U5R0vKTKMnzo+zjvzYkf3XiYZnbp4waQxHrihsaCMunnGTXrH
zVsyM3aE2KaqyGkWde3iRMSK1xfxsosFUXHS4l2fnW2Vhk1fNGf8aCWmb6m4cerEjWYKiUZNXTQ3
KcSLb26vzDpz8nqD5c4pPTYsMnEsXvZjRuudDYFeSK9xM+dMHTvSR4Z0DYWXT57Na7dhHlM2bo5R
XW3ziA73E1paSi4dO5mvsiNEekWnLZwZO1LGdDaWXjlxKr/jzqXTYWvJip192rhkbd8OTIw2kBU7
6bC1PZMYDGuMxWASe8kkZspII0SKZWJk1pjt/J7dR4RQxGcsahuHkNVCyaRivklv4xAieCTG0vRA
V2gHsQREiBUeEsyoaTfRHCGQeggRgxBCuFDhISMsWpWGYjG+ROlxa0kYXyJDZpPObLfTGF/mqeBT
WlUnxeI8qYeHklVrLDyZQsB0fZPk8zgOIUIkl/NsmnY1zeEknxhEFz8ALuXI53TZzpyLhcIJqWNF
CCGEJOOmjcdzL+Tre+wGmDI6MVibn9fMWCtyy4hxiWMECCFM4evL1zW3DuqCJ+4Xn+DTmFvYyeqL
c2sUcQlB3ekqjVu8aoqk4vAX//liXx45JkyBIYQQETh99eIxhiu7Pv1kx9m2wMjAW1uMyUJHo5x9
X313rQP5TV3zWJQlY8/Wz3edbfCYvmZBpAgPSlk6RVC0b+vHWw9ktlIMi+6c0rNYXn4+uKq59R49
+qLwhU8vCtZe37f1w493nmv2m/P00mhp1wL8Q/1Vl/Z89fXhEiJ6ybIJnhjiBac9uWhkx/lvP/v8
hyuakQtWzxrZz0kS451MNqf3mcjxZBxP1mci2ZzOeCff8xcGwwZHmwwWXCITEwgXSiUkZTT2uR5L
isQ82myxI4QQazVbMaGYjyGE0GCuUN99CYRQJGDNBhPNIsQxFNW9ZkwgEmJWo5FiOMSxNqutR65z
NqPWYLZSNjsSiEU4ZTRQLEKIpU1mmicSEgghhJN8PoljnN1mY7qLiPMEfBJHrN02mJMEAFzKsYNj
2GquXO0YkzrBD0dEwMSUUU2XrzX2TCHMJy5xRGdVI6v08JDq6mrZiIRICUIIDf78lByVGCtvrm7l
KT08BB01jeKYhBA+QghJwmNDzVknzpW1azVN+afOl1kRQggPiI6WVZ8/ltmg0XZUXT6V2Xb7mENV
XkkvalJpzWxwcrKi7MzR7HqVuqX03NEMc2T8GCGGYaREKeezhqbC67nNVNd7JHpP6WFQmyAdNyna
mnHoVEGT1qBrKTl36IouYlLXtW22Pfvs1ao2dVvZhfRCs2+gPymMmBiHco+fLmxSqxvzT5zIJ2Li
R915xYxVRuC6sj4TGZ8kxiepz0RcV8YqIwZRTDBscJTRYONJpVKpTMgYDZbekYvxxSIS48u9/fz8
/Pz8fJUiHBeIhThCiGUYDid597pCe5cl4DiOGOaOFCS6Jve7u3DMzVNZDMcxjC/19OriKSFYDmGc
Vd9poHkyL19fH0+5kMQQYsw6rYkRyL18/bw9pAK4ogzcnYPv8eG0eRcKJj+eOq60Ytx4LPvbQkPP
fYsYmRjvy/PwW/9y6s1J9sRoZUGGrr2DUgT4i1Cr6R4rEIQlRisE4rnPvzz35iqtiRGnKwutUrkU
02o6u/dZWtdp5LwRwmVyiUXTab1ZvM7bF4A5m8XCIIQQJvbykkiC1/wm9tZq2HZPaeOFvSeJWdN/
9spiS2PBpRNn8jsa7phy+4yCVbd3sLEj/HlI3+uW7F5wuULOqTs0N498nE6lpmUecgwhhKxW6uYW
WayYksdTKL0EnmOf+d2kW99naj3FqLqfe6UAGAhjMZgk3jIxY9KY+1yc6LoBStumtd7aK0ipt7dY
RFhMDGWxsh4SqdCi7XlZF8Ownm3guy2B47iu9670Dnr25uS74hiGZe16TVdHdQ82s15j1uM8scJD
KaPbOy0sQ5l0lEmP8yVKD6WUbu++gg2Ae3L4jbV0/dWrbZvmrh2F15860swgdPvUkz8mMZpf9MPf
fizpThfMc8rGTQlxPjcu1GTnG9ZNnjqq5FQ9NcCCEUIISaMSw6mMr/9xoq77BJoInLN5XWK0vCjT
ZDAhTx8vAjUyCCGBp7cMQwixRoNZ7O0lQg0mhBDu5e2JofabS+O6buzgKIOB0mft/fBoTfdBCccx
luUQyjm+K+cE3zNq3pPLF6prv7mhb7ljyq3921yaXTJrRcqEa9WX2wa6rMvqdXoszMcTL+m66o3J
vb14hhI9hwL6mdlkMNAdpV99lt7dOsdwnOvnHllcW84qIu9s7PazREUkri2/52xgmLGbdDrEY8x9
8wsXioWI0vbKKLvVapeKRKTJaKcMOjPfQ+nlYTSaKJrlMIInlMhErF51K4bvvgSKsktFYoFZT7EY
KRYLcGRHCLEURcskYqHJZmUwQigRkqifkORsFgvnIZNSWiPFcBjBF/IRZaFxgQC3UzaGZRiW4zCW
QxhPKEA2K82yDMNy7KB7xQFwEcePvczp8s6eLa8pOZNe3LvZKh54R8jmAAAfhElEQVSbGMmW5lbe
TlWuszCvwSMuIYiwN5zff9Ea/+QzK1KiR/t7e/kGjYmbtvK5Z+eH9rznA/OISRxtKMxruN1lxTTn
5WuCEmK9MFNFQY0ocf7scf6eXqOS5s8IFyCEENtUVGQImb5w4mhvT7/IGfOSvfvZYlt1dr4tOm1O
TICH0mfUuJRVLzw9yUs8OmVealSAh1Qk4PMI2mymhXdM6bV/W8tOHczhpaxbv3jS2JG+Xt5+o8IT
Z695Yf30Ho8MGYszikUTl6SN85eLZb6RM5ZOUVRkFGr7P04YS7PKBOPnT4/0U3r4jY6d+dSLj8dL
75yNUGXaA2YOWB892ANmEqrMwcwJhhWOthjNdzxcSwhFfNZq6RPFdquFJkRiPoYQS+nVah2FhDIP
L29vb0+FhKQNGt3thu89lkAbdXqar/T18/XxlGK35mPMOj1FyL39fH085SRl6b9hytmMGq2NlHn5
+vv7+XhK+ThCCMNJoczTx9fX11uGW7UGikM4TooU3r6+vr6eEmTSGQfuZwLALTyMR0jtLZlHDvSd
iCmjE0NMRTvqel7j5QzFudWz5yaGpjdUNF3asbVlQurk1BUpXmLMrFW11eSevNTzfmbcLz7Bvz3v
YFvPowenKshtTpkQH3D1TP6hPYolCxZtnIAbm4rKKrRJCCHENJ7/4ahoyYwnXkyj1ZW5JY0BI+8s
MV135tuDM+bPeuJFJWlur8o9c/CGmpJ1UBNmPpHqxafUNdn7jhdbbIq+U/osxlx18qsvGyanTpy1
eqaHkDVpVM2V105cb7ajW48MWcqP7jw+a07K6k3LpZy+sfjsrtOFBg7zQP0xlx79lj97Xtq6yXJk
aCnPPHo033jnXLzKXZa073iVu3rewHznA7scT2YPXys681S/qwI/BcdxOI4P5lFdHMed0hZjzZrW
gcajsxtVrQghhMyatn7msZvUbbdOl1naou+06AdYEnOvJdBmrer2DKabV3nsFp3aors13do1s6Wz
962UHEMZOqnef8c2k1bd+1yeoYydVD+7BQBuCsZeHg5s8Vs4UirIeucu81gnv49bmuF5oYfh+Rde
LikpvHwp/Z5zpqTOjIqK2fr5hw5ZL4y9DIBbgbGXHxVE2xV63GbWM4ZQZWFs3w42jiejJv6VkwQK
r77ukuINeyp1x3PP/8JoNDQ11g/UkMVxfGrKjFWrn96540udTuuQ9Q48DCQAwAUGMwwktHSHD1v8
FnvwMl7lTqIpveu+KlYRyQTOpMPWknWHoI37ULnk1X7Q0gXArQympQuhO6xwkgA6bC3jndz1PC6u
LSdUmTD043AFoQuAW4HQBWA4g9AFwK0MJnQd/8gQAAAAAPoFoQsAAAA4CYQuAEMVDL8EgPsY5P4I
oQvAUDWY4TgAAM4xyP0RQheAocpup6GxC4A74DhuMA/pIhgcA4Chi+M4lmWxm1xdHAAeRV27IU3b
BtnSfRhjLwMAnIRlWZvtrm/mAgC4E+heBgAAAJwEQhcAAABwEghdAAAAwEkgdAEAAAAngdAFAAAA
nARCFwAAAHASCF0AAADASSB0AQAAACeB0AUAAACcBEIXAAAAcBIIXQAAAMBJIHQBAAAAJ4HQBQAA
AJwEQhcAAABwEghdAAAAwEkgdAEAAAAngdAFAAAAnARCFwAAAHASCF0AAADASSB0AQAAACeB0AUA
AACchODz+a4uAwDggeCBM57ZsGRyQmLi+PFJSQnjRnvzzao2HcU5af1E8OzHo82lDSZnrfDRw4tY
/OIcRVVxs7V7AhG2cNNC77qiRvMD/OiCsYuWjmwva6UcWkZwX0hXFwAA8FNYSo5+dbaeQQjjKUYl
zExb5Xd1z9ESvTNiEBMrlQInrAc4CC73UBDWe88HHiYIXQCGB47W1d04ft5j3fSkoPJzDcgjInVG
8kgJ4hDdUXTxfG67Z+ra2cypb6+2sZhy/KonQiu/35uj5fARqWunU8f2NMc8PZmopvxCvUQ8TpV7
8nhWK+01cfUsQaU6IGksv3jfngrvKanxgVI+STddP3GmhApOmZvgJ8dnrfQ31V09kqn1T5oxNVyO
MRyjK7+cntdmc/UvMryJY5Y/HtReQwYFeysE1tqrJ86VdKIxCzaEa/J5UckB6vM7zltjZ0wM8xTx
ka7k3PFrhtEzZ0V5ejLzHwvRlaefLNApIlJmJIzgcyyytmSnX6kysK7epkcChC4AwwjVUNcmSArw
ICyh81OleXt2lehZQeC0VQumaXedq6rDZ4Z4XW9TyceE8I2C0BB5bo7BJzTYXnNcwwkR4SEz7t+7
XWVXJqxcMzGs+GAJQoRv5Ki6Ez9802G0iEID2y7vPddm95myZvnEkMrjlVcu+wfPQef2XWljkSh8
wZygpgM/HNcxhGfSynlJLbuvtsNB/KHCZb7i5n17LxkI38mPr0iNqDtUjpAgNFx+5tjOM1oz6xNN
FR37tsYgGLtobUps+fcZ568HhkxQn/gxR8ch3GfSgmTs0t7vGykkDJ37eGp487Eyi6s36VEAoQvA
8IPJRgbLm7Mr9CxCiGoprbItHu3LXayqJVODFTfo0GC64Hx9xMQQWX5TyCim+qSGQwGINbU1amwI
IX2HihorFWMIIc5ak5PdoGUQQtbyrE6EEELqlg4uQCLAkP32Cgm/0SN5AmzibH+EEOIxdr0QRwhC
9yfjEELYQB+yqvp6A4sQq6qqNUb5eRLlCLHtRZnl7QYOIdSUn4MQQsjS2qITKyU40t7+KiYfOUpJ
2MZNnxuFEMJFVsQXYsgCF+cfPghdAIYRQdAoX1trvpbz7udDpq2qTjAlJAgF09Unmpv4+MzQIP4o
ruZs58DHWo5luv/F9xoTEx3qKyEwkR+JOvokAcswxurrpzM1cNh2KM5itonlMgJ1dp3iYFKZFLM0
9U1HDMNYluUQQohlu891CGlgVGxkoJKPkUol3t5nwSzLMu2FZ09V2RFwKnhkCIDhAePJRyXPnzGy
/VpmA22or9OPiAyX4Qghvn9kqKCxrp1FTFtVvXjslDC6usbEaqtryaip4XhtlWYQLVIieNqKZEHZ
hRPHjp/Ja+s+UHMcInk8DCcItq22QTI2bqQIQwjxlEFBnryHua2PDqalpNQalpIa4SXAMVIWmDg9
UVFfXNV1vzgmUcgJhJBgxNhQfmOdqmc9Ysq4BfNGdt44fez4yStV+q6POJYjeSRGEARnaKjTBcVE
exAIIVzsN8pfMmCDGjgUtHQBGNJEUYueC2MRQhxj7WwsTd+bVaPnEFJlnbiSOmvZ2vEch9nVRcfP
1dgQQkxrZT0/SlFVY0IIdVZVMxPGNgwqcxGraahlE6fMEmtNZitrZLum1VSYFy9YF9hRdPpw5sVj
ypnTV62bxrCsta3wUnvjw9zqR4e99dqhE/bUKcs3zhXhNn1L5fWDl0tvPqPFD5y4LEQpEWHa4pNn
6myIuP09ztRSq4mMmT47wGg2cFYbQggx7VWV2NwV60Kbs48fL8w5eUE8a9HaGI7hGH1NxvnGrs5s
8JBhEonE1WUAAABwf8QxK9ePKtx6tAL6h4cW6F4GAAAAnARaugAAAICTQEsXAAAAcBIIXQAAAMBJ
IHQBAAAAJ4FHhgAYwng8vkQiFQiEGAaPWbopjuMoymoyGWn6QYajhip2c/dbv3AjFQBDFY/H9/T0
hmPxkMBxnEajut/chSoeKgZfv9C9DMBQJZFI4XA8VGAYJpFI7/dbUMVDxeDrF0IXgKFKIBC6ugjg
PjxAfUEVDyGDrCwIXQCGKmgDDS0PUF9QxUPIICsLQhcAAABwEghdAAC4D0FBI3/1+n8FBY10dUHA
w/JQqxhCFwAABisoaOSaNau3b/9qzZrVkLvD0sOuYnhkCAAHsAcvtsW+ygn6e3f8TRil4hd8QNYd
cdRK/f0DHbUoMBhdh+NPPvnEbDaLxeLNmzfv3v1DY2PD4JfQ2tp0X2uEKnayn1jFg6lfgs/n/7RC
grvhJAF01CZbzC9t49+kx21iAmZyshDcWIvRBlcXDTiMPXgxlfwnRIrvMR8pZgJm4+ZGXFfhkPVK
pXKHLAcMRnxCwtIlS7oOxwghmqbz8vI2bNhgtljaWlsHuRCj8f52fKhiZ/rpVTyY+oURqR4iW/wW
e/AysmKnIPMdXFeGEGIVkfaAmZa078jag/z8v7u6gMAxbLGv3tfMDmzsDgT3SnzypY2LEgMlmKUt
/9RX/9l5rc2OEMIk4Ytf3LRmWoQXoau5fnjrJ7tzNRxCCGHKuNWbXlg2KdSDVZdd3vPZ54dKjfBK
856mTJl663DcxWw2f/LJJ+s3PJOXm+v04uDeSU9s2jAvMcSHb6rPOf71Rzuut9sRQljAqve/2DSu
+8jOWS/+5cl30y1OL96Q5Jwqdlj3Ms9r3Iy502JGeZDmlvIb6Wdv1BlZhyz47nBpcNL0lPERQV5i
nNK11hRev3C1RPUgg605miXtO1xXxs/7+52NWo4ns8VvYRURojNPuaRswLFMj2ff1/ySveMdst4B
+x4x38V/+fgJ3cdv/PNco91j/MY//j7+8uuvfFfLec99+8NN0qN///BIuS1wxgtbnvE+9vrr31bR
xKhVf/vgMePO//38bAMRtvClLSvZr1/+w5EWZ+zDd0OEr/rDi7EVX/9tV6G51ykAJh2//rdrA298
9LcDdT7zXn815NKfP7tmcv+zBEd1LxOjn/jnPxe0b3tv64UmYvTcn//2KWLHpt8eaucQOeG/tv+s
47//ekLFIoRYi1alp9z3d8GUqZvfXM4/8d6/T7f2/mMjAhe8/mqabs87n2dQcT/781L9p389UMO4
qJiDNpj6ddCNVGTw7KeWhOiu7f/m6x/OVQsS50wMcFQbmhizYPNTEzz7ewAKU8Y99txTUzw6sk/+
8NW2XYcuV7GRSzb+bMZIl/eY2+K34LoyQebb/XYjY7RBkPk2ZmqxxW9xftmA82GmZqeujxgZOYbJ
O3Oh0cohuyb31NW24PhoBUaELXkiueX7f+y4VqvWNOfv/+e27MAVqyeIkSDhscdDCr/6YG9uk0Zd
n7Hzg2/rYp5YHuUe/WCYPGFOil/vIxUROC0tWvII3wbqHxPBnvrPPw4WtnR2NubsO5TDjAz2JxBC
mFdQIN5QXt7S1tbW1tbW4c6J2w0jR06fEy3udYjHpPFzUkcQrirSQ+WYP1vcKyRE1ngjPa+2paWu
6OIPn3xxttHukCUjhPgShVTYz6+PyRIWzg9qPLRt16kbxTXNLfXluRf3b9uRgU1eOj3IlYcLThJg
D17Gz+vVe2yL39InYgVZb9uDl3GSAOeWDjgbv+pbafrTTl0lU5mRbUtcMCdESmACv0lLpo3srKs3
Iu/YWP+mrKybTQpOn5NRJoxJCBUEx8XKKm9ka7uPz1x71o16r7i4QLdINbvWoEjtdVDGpAlpU8V6
ravb4S7UdPhPr36UYeQQQqTH2MULotrPXaiwI4SIgGD/9sZmt28S9sAadEx0Wop/j782InBaWgSt
HQJdFw/AMeHEGjSdTNK4GN+iG+30ranEmCWvrlCUlvAi4kaQ2vLzx7JQ/IyJEX5Cc3P+mcNnyrQs
IpQRqXNSYkb7y7nOyksHD1xvtiFRwtrXppiuNXjGRXHZly3T5kSSKPqlP8yii374370lt/6YMMW4
+NGdNz4rNvSsGLrl6sWy5EUJwekdklWvp7R99em5FhYhTDFpw8/HlX7y1bVODpeHTV80Z/xoJaZv
qbhx6sSNZjogbfMGrwvv7S603Sw2dvCfhyoZxPcfP39BatQIIaWuLzx//FyZlkU8/6SF8yeF+4tt
qtq89BMXqwx9/jLosLVkxc4+bVyy9lCfHw2jDWTFTjpsbZ94BsMJ2ZIuLHjfOHOHU9fK6S5/9mHi
39749MfXEEKsOuPzt7cX0kSUjyfSqNS3soozqtU2pbcnz9Pbk9GodLf+kFlNhwZ5enviqM71wUZX
pV9QLkhL9S862dXdTQROnx3WePa0bUnKzXkw0ajp61ImjPMhdDWZx/Yey1PZMfnUl96cqr3Q4D0+
LkBobMw98+PBG80Uxw+c8tjK6dGBEqqt8sax/afK9K7fxAdGJr/6zVuLPSx5O/70fYEFIYR5BAUq
ApLe2rpYTFjbK64d+GbnuTo3v6LLaTLPtCTNnRNzZUe+iUMIYbKEOVN5mSdyxiwdcXMmwiNu2ean
koOlVGvx+QP7LtSaOCLs8Tee9S64bA+fHK5k1RVXDu47VaZjMcW4RY8vTArxwvX1hecPHrrR7GaN
fQedypoLTxwqFs94/pUXV6UlBituRTkmDvC1XPn2i2/OtPrPW//0RCxv/1dfHSjA4pYvipdjSBI+
NVlRd+67zz766pwqYFZanKLrbBb3DgsyXP7+yx8zr3///v5yuuPiZ39+9689EhchhHv7elmbm7V9
f0+6ubFD4OsjG2BALtxv6prHoiwZe7Z+vutsg8f0NQsiRQNtlThq8VMzPWpPbP9s2/5sauyKx6f4
YJjXhEVpXnXHtn382e5L9SamnzNKxjuZbE7vM5HjyTierM9Esjmd8U4eaPVgKOJXfYts+q5/49oy
Ufa7lvFvscpIpxZCMG7jX38dV/LB5tXLFq145o1j5Lx1aaO7Lrr0e/zB+p/uJscqVp1xMlucMidW
gqGuI/IUIuNkZs+GLj4qdlTb0c/f++Cby5aYp55fMLrrEISPiB/HXN3xr39uPases/KFlVEiwid1
1WLfqh8/+J/3vzxdbWBYN9nGB2TP/OCpx1b/8ouOtHfeXR1MIMRpL3/25p//+0+/+9Vrf/jgmD75
tb++miJ3+5EkreVn09vHpqV09ScTgdNmh9afSa+x3a4cXBk1VpC185/v/+dAlee8Z5+coOzaKGFk
fFD9kU/e/3h3viBl4/oZfjg/auGT46mLX7z3Px/uzemwMYzb1bCj+o9YbcmxLz7ceqTAEpD61M83
PxbviSOEEEdVXbtY3tbRmHsxt43pKLia16Rqr7xyvZILCPLFkan06K6DN2rVen1LXn4t4+Xb9S3E
GYovXipvVestd+slwR7goEAEJycrys4cza5XqVtKzx3NMEfGj+l/lGpMET0xUn/tyPmyVnVHXeaR
sxUecTH+OMJwQqxUijhzW1lGVq35zjKwyoiue5V7YnySGJ+kPhNxXRmrjLjvjQBujFd3SJT9LkII
2fSSyy/ZRi6iRy11chnImLkLAot/2HquWmezm1uzd+0uDN+wdrJA06FBXl6374/AJF6efK2qk1ar
NKSH1+2DM+7h7YE0qk53aQNSFWfPt41NSx1BICJoWlpo7ZnztXTPGbjWy4dOl7SoWiov7T1RLh+f
PLrrgpQ+5/DBGzVtrTXXfzyUR8SND+djGE5IPDzEnLG58NKVymFwh7ZdV3Fqx9GGsOmTAnCEaE1F
bm5pXVtHe33BiU+/vsKbPC2a5+oi3hOnzjiZLUqdEyPBMFninClExsksXa+qsRadOHCjrqOjIe/Y
vsvGiOTorr9WpjZ9z+nipvamolN701sDk+J9cRzD+HJPBY/WVF8/n9vmsOucDuPIa5+ctb306pHS
GxlTnn5uTmpo0REOIYa2d/10dprm7HT3jkLb7YjEEMJloZNnTY0e5avgc0ggQIXdl245i9lyr52B
VbWpRTEjlFiNutesvBGBPraOKwauv4cmMbGXl0QSvOY3sbeX0+7Z/5kg7unjyQtIe+nN2bcm0SVK
TH19/wHh7JQ1L89lWkuvnjp5o8l6j5KCR4kp9RPpuaeFWX8k9OW0/3QqziX3ymEIceztyOQQx5dJ
+aqCgtZnk5P8d9U0cwghTJ44IdJaeKSKquMXGhZPGK84fErLIYQwn6TkYHXBp03uErqI09w4kTl9
w5y4/OL4yeja1hx97+MDq1FpugrLWdUdRpGPgkTtCDGato6bx5y2Vg0RJRd0XNj5nWjx7GffWMY0
FaQfOHip/p6HGnc05/fb5hT+/o39XVWES6QSZLVa+2wJxhMKCavW6jbVeBe2yrPpzVvSUkfqyNkh
Naf31tvRiB4fs3q1hur+p7pDjeIUXUdta0dbd2cnq21ts0nlMvrUoW2nFy1Y8cpMoa7i+vF9xws1
bnaB22H3GBME093Vate0dFh5UiGB7nUpQRy98PFE28m92wpbTShs6WvLe354rz2B05Xk182YNn1s
/v6S26erPP9JqWOpom9r7Uw4zQpFwu48FQj4CCHEUQYDpc/a++HRmu4TIBzHWM5nOoOEIiGGbBxC
OF9AYjaEWIPeaK+/9NH2G907OI7jLMsipCo+s7v4DCkPnblm9ZJJ9Z+fb+v9R41ry1lF5J2N3Tux
ikhcW37P2cBQwpebJ/1dcnkzKxphjX3dJUWwl1y4qHlr9bOpZVsvN9o94594eqa4ZHuu1t5y5Pus
BS++trb230cr6YDpL2wc37z/vzLMiM79cW/tP595ZUXb5+mNROj8l9aGFG5/r8SdGgm26vT0pl8v
e3EMXnNgT4O9z6EL9/bzIVADgxAm8vWTWbR6O0II4UpPJYFUdoQQ4eWtYIwGC0dr8w5vyzvCU0Ys
2PDME9Or3jvRPBRCqY+8jLqXNr22vvmDHwsNyoRVv1iqyPrkqorDvCc+sWJUw/kLBS2ULGz2MxsT
mo/8psid6nFAXGfmyRvTn3t2PTJd+yTHwPXuhcXlvj4irN7EIYT7+PlghlIDhwQICTy8ZBjScghh
Mm8vnrHcwHHG6vO7Pz6/Rxwwac0LTy5t+tPXuZSrNqpfDgldTJH05DPJ5pzrhdWtRkHQhLlxeMXB
Ggr53+NrpFBIsAYLTcgDY5JSI8VYfzFlpyi7SC7nESqGtdt7RDGnzz12Ysz65RufDLiaU9mosUv9
R0dNnDIOz/r+fL0dYW1N7cJp06dVGPM6JWEzEv1wPULIVp2db1uTNqf+6PVGWhYQMXFaaOOeHdnN
zdZpk9ISWs7XMX5JU8MEqBghTl2YVTdp2sJJ6jOlWp7X6NjUZP7lr0+a4mZEWkvza3UknyQ4i/nO
i/SEKtMeMJM/iNC1B8wkVJn3nA0MLawy0jhzJ8eTIr6LhhMyZ3/25vvrX1z7f9/+WoZT6srr3761
9WAzh1DH6b/9nr9p8yv/etKb0NVcP/TO27uraIQQU7f3T2/jm1/8zccvKFlV+eUdb3zm+od0e+M6
bxw9EjjNt+5s3p19wpjv1GUL6vZdbxeNXTA3Qp/7SS2DRAhhiqTF88t2X2klQ2YsSUQFuyqwoNTl
0Zb8rMpOks8jObOpb+twiOg49f5bsk2bXvnXGk+kayy7uvX3X5zq4BBmam/lFjz5zrrfefHMraXX
Drz9h33l7jBswWDYas4duiSOtWddaLyzbSqMWrBySufJcsp/8oopkspDRToOeSNEhs5YNqX5aInZ
M2HxrKCWi3s65DHzZ3jW3yhopgR8Hm7tNLlZO9dBocvp8o4cEaROTJo/0Uds72woOvzN+WITutdD
Vpw+/8z50GXLXoznOmvzqpvMXv3NZa++fqn18RWvvarK2LPjXH3PPyC2M2/vl7oJ01OSFybPE+M2
fXs7xSKEEIYQ4jSZh495L0pZ9mwy1VZRVNMa5oUQQnTdmW8Pzpg/64kXlaS5vSr3zMEbao7RnN1/
cfHcGWufR7r6opp6kxIhhDht9r7v8LlzF2+cKbbrGkuuHTpdSdHSDqNy9soXlohpbX3B4cPZd9zJ
hXiVuyxp3/Eqd/W8gbnfITLs4WthfIxhyeVPglENFz7/w4XP75jOmSuP/GPLkX/c+YEuf/ffXt7t
jLI9KHvD5T27+v+IbSpp8l/44hYvXF+X9e0Xx6pphIkQ4tpLauRpL/w6QGBqKjj0xf5is03aqvdc
vO5XT0hodXXW97uvaYZm6CJOX7T3/17Z23eqpTb9i3fTv3BJkX4yTld0bFdRvx+xuopye+La15ZJ
qLaSM9t+vK7lEIEQoqrLOqPXvLZcwaorr23/5nwrQ6AONHXJS4s9cWNLydmdxyrdrp0/3F54wB+R
8tS6KeylHd9dbaXvPfvDYovfwpFSQdY7d5nHOvl93NIMzwsNA+YlJ+/+qoOeMEolPjzPIeuF0fDv
ApNPfenNiWXv/etMu2Oa7Jtf+vn2r7/qOUYgQkgsFv9s/YZPP/nPIBcCLzxwHCLs8TeeFf341g6H
9Z//9Cp24ohUbsPWcvn77Qdy9CKZS0fT4ef9nVWOpZLeufMxIYQQx5NZJ7/HSQIgcYcHfsEHD2lm
4D6uXr2yefNmsfj2HZpdb6G5du2qC0sFHMg5VTzcQhchZG2rKCyq0bi6U0F05knMbrQsPEKP28Qq
uh/TZBWR9LhNloWHcUuL6MyTri0hcBSy7ogg8w8Ypbr7bBilEmT+wQlvOwAPQ15u7u7dP9w6KN96
75sr3nYAHgrnVPFw6152N5wkgA5by3gndz2Pi2vLCVUmr3KXswfjBcMR9D06X9f7Vr/e/vWG9Rvu
92W6CLqXh4KfUsWDqV8IXQCGKjgiu0TXQfkBEhdB6A4RD1zFELoADGdwRB5yIHSHt0fxRioAAADA
bUHoAjBUcdwQfcj0EfUA9QVVPIQMsrIgdAEYqigKxv0eSh6gvqCKh5BBVhaELgBDlclkhJbQUMFx
nMlkvN9vQRUPFYOvX4LP5z/s0gAAHgaWZWw2CsdxgiAxzO3fmvqo4jiOoqx6vZam73sYZKhi93e/
9Qt3LwMAAABOAt3LAAAAgJNA6AIAAABOAqELAAAAOAmELgAAAOAkELoAAACAk0DoAgAAAE4CoQsA
AAA4CYQuAAAA4CQQugAAAICT/H+FslbEWYPb5QAAAABJRU5ErkJggg==
--0000000000003160970617434ff0--

--===============0773102020665117965==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0773102020665117965==--

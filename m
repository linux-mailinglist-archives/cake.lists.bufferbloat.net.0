Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5717A5347
	for <lists+cake@lfdr.de>; Mon, 18 Sep 2023 21:50:27 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E954B3CB47;
	Mon, 18 Sep 2023 15:50:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1695066625;
	bh=1ewlfRZ63vT2sM6uqsxFpFUfMc6UFhWBG3pmCssTmVI=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=mJR8YE65bv46KbDr8nStmX1IKpp+wDO892JGAA7MsASA0h7gttLATMhRA/JTfyfCX
	 bHbBTXGbB/rzzohcjBHwWqM/YIS5UG0Utz79jSO/jHMhacyJ5w/1dxOaKjK9wwEcAL
	 ZAtctlJG4zYt5fffe/HAQcipheGzfi/4v18tPBbSqnkMcwGUzqdiD3+Q822VMSEx5k
	 s/Ns/9wDgo0XcXaECn9hCHw2w3NV7sZvUSaR1TLs/CYSwySLmkTjMJJOU0YBoelo29
	 hKHrYmyCxGNQuyFnqnQRpxdMJrwO4n79IUhSiV7AmnM4PpvfzGTggSsZ/f+17g+b/+
	 X8yk+wM6Afgng==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id F19683B2A4
 for <cake@lists.bufferbloat.net>; Mon, 18 Sep 2023 15:50:24 -0400 (EDT)
Received: by mail-lj1-x22e.google.com with SMTP id
 38308e7fff4ca-2bffdf50212so28469441fa.1
 for <cake@lists.bufferbloat.net>; Mon, 18 Sep 2023 12:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695066622; x=1695671422; darn=lists.bufferbloat.net;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=H8QGt9+qQlAAYWMTRJSlFrxsX2ExER9XQF49EM6hQSA=;
 b=UAW1UDHiBd5DIBeGQ3kwPEsy+nBaDYcFH+L+O1MkL3Tq+TA1FBweZKCPz3VdGkTJ4U
 mgn7/3X1FbNrXwqbz9+x9h8on2WuxM4OJ/Qn09oEO36ydhKJfwI0Yo9LujkxFyD6H1mX
 Z8xK95/yVMIIOq89lkAJMx/xlKzHeAnvTrUwWtyGZHbOcnZg6Qpzodo12ot60l6EXc6U
 xp/VXn3JM/ExJ5dJqjPPNRyr5yqiHgiVE49c5fHeHjiiKS8Rlk/2ey8H9E6YuiD/lm7d
 +j+9DTvDzPXLENfvSkAffROJyfwYuh4p1BDQKU9giCbFHaX1ICGRv6BxV9kNq5FWrU7t
 eVBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695066622; x=1695671422;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=H8QGt9+qQlAAYWMTRJSlFrxsX2ExER9XQF49EM6hQSA=;
 b=NFop1ZQMORRg8Tu9jdmTlRadiXwTy7FeXhztqzn2mscAxxFjvtU9a/PPVKAdnBD4+H
 SV0hgGhzYuJBhzoG0fFVSA4rKZ83Nv5jAly7yjAWJrxD/HL49+wC+ExV6BwmPLA445+E
 m5D/Fx4YiYUsYY2W1oYlN1eMzsoJDiSlJK3MHY4yXzE6icb22fNufcc83Q9J3SWa0lkM
 KR6Ng1bLpq5WSVar7+mqzPXM4d/z9t4/FavPUttPurpyT1SWBqs5VcxrnvNSKAbS3Sc3
 QcsL35RdPeTqjM9jPl4GynKMLx90QD8dgERL+zy/5H+DP9Xrbxsof/bQFcPEMzRge64U
 CdHw==
X-Gm-Message-State: AOJu0YzxMPA+RJmLRb3EQpJRPPwrV+tlXSf/IxS5ihpDCuB4f16CK4YL
 o3uQ1u+le0xGYrdDzKMUMpAOfhrSPD+xdFTmidDgK9CpHCw=
X-Google-Smtp-Source: AGHT+IFMwfThXU4QSl4sDULcTB8sC2QEFtd7sie3iq4I4ZMvSSeIxY01zYkjqnrPhGxHVtOTkBA1WxwTTEihQxhhPV0=
X-Received: by 2002:a2e:8683:0:b0:2bf:fa16:2787 with SMTP id
 l3-20020a2e8683000000b002bffa162787mr4931016lji.39.1695066621990; Mon, 18 Sep
 2023 12:50:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
In-Reply-To: <CAA93jw5nDw_vArfxpevWbuLrj9HiLTczepEBL2vJxj=MGmrf8g@mail.gmail.com>
Date: Mon, 18 Sep 2023 12:50:10 -0700
Message-ID: <CANypexR5p7Lekzk7+ktfEWjFXJP2zRHC_BgGWRRzKc5QdaxubA@mail.gmail.com>
To: Cake List <cake@lists.bufferbloat.net>
Subject: Re: [Cake] some comprehensive arm64 w/cake results
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
Content-Type: multipart/mixed; boundary="===============3207287369888305825=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3207287369888305825==
Content-Type: multipart/alternative; boundary="000000000000dfda530605a77335"

--000000000000dfda530605a77335
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

G'day Mr David Reed,

Thanks for the comments.

Definitely agree with your sentiments and the tests definitely do NOT
simply represent Intel verse ARM.

Perhaps I should have been more clear about the objectives of the testing:

I'm curious to understand the performance of these lower end SoC devices,
because these are the types of devices that act as home gateway routers, as
access points, and such.  There are many many millions of these devices out
there and I don't know how well understood their performance is:
e.g. How bad is my Spectrum Internet cable modem?
e.g. I have a Unifi security gateway and it's "smart queue" performance is
pretty poor ( <200 Mb/s ).  Why is it so poor?

Obviously, with real servers ( and even virtual AWS ones ) which have real
NICs, you get things like multi-queues with RSS, and a lot more tuning
knobs, and so they can go a lot faster.

In the tests so far, the Asus CN60 device with the r8169 performs pretty
well, where the NIC is likely to be contributing positively.  The default
configuration has a bunch of off-loading enabled:

root@asus-cn60-2:/home/das# ethtool --show-features enp1s0 | grep ": on"
rx-checksumming: on
tx-checksumming: on
tx-checksum-ipv4: on
tx-checksum-ipv6: on
generic-receive-offload: on
rx-vlan-offload: on
tx-vlan-offload: on
highdma: on [fixed]

However, based on these initial tests, which are not complete, it's
certainly curious that the Pi4 is doing ~923Mbit/s with pfifo_fast and then
doing significantly less ( ~621 Mbits/sec ) with cake.  I'm interested to
understand this in more detail, where DaveT has recommended adding 20ms or
40ms.  The cake tests so far had rtt 1ms and rtt 3ms, which might be too
low.  ( If it is too low, then maybe it would make sense to remove "rtt lan
=3D rtt 1ms" option, as it's a misleading configuration option? )

Definitely, during the testing these little devices have the NIC IRQs all
going through core 0, so I want to explore tuning options.

root@rpi4b:/home/das# cat /proc/interrupts | grep -E '(CPU0|eth0)'
           CPU0       CPU1       CPU2       CPU3
 30:   38651749          0          0          0     GICv2 189 Level
eth0      <--- IRQs only going to CPU0
 31:   20418643          0          0          0     GICv2 190 Level
eth0

Some ideas include:
- Moving most processes of core0. e.g. Configure all the systemd slices NOT
to use core0, so core0 is essentially freed to only service the IRQs
- RPS (
https://www.kernel.org/doc/html/latest/networking/scaling.html#rps-receive-=
packet-steering
). e.g. Can the other cores get more involved?
- Tuning ideas from here:
https://github.com/leandromoreira/linux-network-performance-parameters.
Specifically, I was wondering about increasing netdev_budget sysctls.

The defaults are shown here

root@rpi4b:/home/das# sysctl -a | grep netdev_budget
net.core.netdev_budget =3D 300
net.core.netdev_budget_usecs =3D 8000

"Armbian's kernel isn't a particularly high performance kernel build."

Happy to discuss any recommended tuning.  Armbrian is very easy to install
on the microSD card.  ( Actually, I have the LicheePi 4A RISC-V, but can't
find a easy image to just load on a microSD card. )


Over the weekend, I reconfigured the testing setup using a lot more VLANs.
Now each device has ALL the different qdiscs configured on different VLANs
and IPs, allowing the iperf/flent tests to be run one after the other with
no need to change the qdiscs between tests.  I'm currently repeating every
combination of test, before adding the netem 20/40ms latency as DaveT
suggested.  ( Test take a while: 8 devices * 6 qdiscs =3D 48 tests, by 10
minute tests =3D 480 minutes =3D 8 hours )

Roughly the plan is:
1. Retest all combinations.  This is to confirm the starting position. <---
running now
2. Add netem latency 20 and 40ms, and retest all combinations.  I'm hoping
Pi4 cake performance will be closer to > 900 Mb/s
3. Apply some tuning options, and retest all combinations

Kind regards,
Dave Seddon

On Sun, Sep 17, 2023 at 6:05=E2=80=AFPM Dave Taht <dave.taht@gmail.com> wro=
te:

>
> A huge thanks to dave seddon for buckling down and doing some
> comprehensive testing of a variety of arm64 gear!
>
>
> https://docs.google.com/document/d/1HxIU_TEBI6xG9jRHlr8rzyyxFEN43zMcJXUFl=
RuhiUI/edit#heading=3Dh.bpvv3vr500nw
>
> --
> Oct 30:
> https://netdevconf.info/0x17/news/the-maestro-and-the-music-bof.html
> Dave T=C3=A4ht CSO, LibreQos
>


--=20
Regards,
Dave Seddon
+1 415 857 5102

--000000000000dfda530605a77335
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>G&#39;day Mr David Reed,</div><div><br></div><div>Tha=
nks for the comments.</div><div><br></div><div>Definitely agree with your s=
entiments and the tests definitely do NOT simply represent Intel verse ARM.=
<br></div><div><br></div><div>Perhaps I should have been more clear about t=
he objectives of the testing:<br></div><div><br></div><div>I&#39;m curious =
to understand the performance of these lower end SoC devices, because these=
 are the types of devices that act as home gateway routers, as access point=
s, and such.=C2=A0 There are many many millions of these devices out there =
and I don&#39;t know how well understood their performance is:</div><div>e.=
g. How bad is my Spectrum Internet cable modem?<br></div><div>e.g. I have a=
 Unifi security gateway and it&#39;s &quot;smart queue&quot; performance is=
 pretty poor ( &lt;200 Mb/s ).=C2=A0 Why is it so poor?<br></div><div><br><=
/div><div>Obviously, with real servers ( and even virtual AWS ones ) which=
=20
have real NICs, you get things like multi-queues with RSS, and a lot more=
=20
tuning knobs, and so they can go a lot faster.</div><div><br></div><div>In =
the tests so far, the Asus CN60 device with the r8169 performs pretty well,=
 where the NIC is likely to be contributing positively.=C2=A0 The default c=
onfiguration has a bunch of off-loading enabled:<br></div><div><br></div><d=
iv>root@asus-cn60-2:/home/das# ethtool --show-features enp1s0 | grep &quot;=
: on&quot;<br>rx-checksumming: on<br>tx-checksumming: on<br>	tx-checksum-ip=
v4: on<br>	tx-checksum-ipv6: on<br>generic-receive-offload: on<br>rx-vlan-o=
ffload: on<br>tx-vlan-offload: on<br>highdma: on [fixed]<br></div><div><br>=
</div><div>However, based on these initial tests, which are not complete, i=
t&#39;s certainly curious that the Pi4 is doing ~923Mbit/s with pfifo_fast =
and then doing significantly less ( ~621 Mbits/sec ) with cake.=C2=A0 I&#39=
;m interested to understand this in more detail, where DaveT has recommende=
d adding 20ms or 40ms.=C2=A0 The cake tests so far had rtt 1ms and rtt 3ms,=
 which might be too low.=C2=A0 ( If it is too low, then maybe it would make=
 sense to remove &quot;rtt lan =3D rtt 1ms&quot; option, as it&#39;s a misl=
eading configuration option? )<br></div><div><br></div><div>Definitely, dur=
ing the testing these little devices have the=20
NIC IRQs all going through core 0, so I want to explore tuning options.=C2=
=A0 <br></div><div><br></div><div>root@rpi4b:/home/das# cat /proc/interrupt=
s | grep -E &#39;(CPU0|eth0)&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0CPU0 =C2=A0 =C2=A0 =C2=A0 CPU1 =C2=A0 =C2=A0 =C2=A0 CPU2 =C2=A0 =C2=A0 =
=C2=A0 CPU3 =C2=A0 =C2=A0 =C2=A0 <br>=C2=A030: =C2=A0 38651749 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GICv2 189 Level =C2=A0 =C2=A0 eth0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 &lt;--- IRQs only going to CPU0<br>=C2=A031: =
=C2=A0 20418643 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A00 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00 =C2=A0 =C2=A0 GICv2 190 =
Level =C2=A0 =C2=A0 eth0<br></div><div><br></div><div>Some ideas include:</=
div><div>- Moving most processes of core0. e.g. Configure all the systemd s=
lices NOT to use core0, so core0 is essentially freed to only service the I=
RQs<br></div><div>- RPS ( <a href=3D"https://www.kernel.org/doc/html/latest=
/networking/scaling.html#rps-receive-packet-steering">https://www.kernel.or=
g/doc/html/latest/networking/scaling.html#rps-receive-packet-steering</a> )=
. e.g. Can the other cores get more involved?<br></div><div>- Tuning ideas =
from here: <a href=3D"https://github.com/leandromoreira/linux-network-perfo=
rmance-parameters" target=3D"_blank">https://github.com/leandromoreira/linu=
x-network-performance-parameters</a>. Specifically, I was wondering about i=
ncreasing netdev_budget sysctls.</div><div><br></div><div>The defaults are =
shown here</div><div><br></div><div>root@rpi4b:/home/das# sysctl -a | grep =
netdev_budget<br>net.core.netdev_budget =3D 300<br>net.core.netdev_budget_u=
secs =3D 8000<br></div><div><br></div><div>&quot;Armbian&#39;s kernel isn&#=
39;t a particularly high performance kernel build.&quot;</div><div><br></di=
v><div>Happy to discuss any recommended tuning.=C2=A0 Armbrian is very easy=
 to install on the microSD card.=C2=A0 ( Actually, I have the LicheePi 4A R=
ISC-V, but can&#39;t find a easy image to just load on a microSD card. )<br=
></div><div><br></div><div><br></div><div>Over the weekend, I reconfigured =
the testing setup using a lot more VLANs.=C2=A0 Now each device has ALL the=
 different qdiscs configured on different VLANs and IPs, allowing the iperf=
/flent tests to be run one after the other with no need to change the qdisc=
s between tests.=C2=A0 I&#39;m currently repeating every combination of tes=
t, before adding the netem 20/40ms latency as DaveT suggested.=C2=A0 ( Test=
 take a while: 8 devices * 6 qdiscs =3D 48 tests, by 10 minute tests =3D 48=
0 minutes =3D 8 hours )<br></div><div><br></div><div>Roughly the plan is:</=
div><div>1. Retest all combinations.=C2=A0 This is to confirm the starting =
position. &lt;--- running now<br></div><div>2. Add netem latency 20 and 40m=
s, and retest all combinations.=C2=A0 I&#39;m hoping Pi4 cake performance w=
ill be closer to &gt; 900 Mb/s<br></div><div>3. Apply some tuning options, =
and retest all combinations</div><div><br></div><div>Kind regards,</div><di=
v>Dave Seddon<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Sun, Sep 17, 2023 at 6:05=E2=80=AFPM Dave Taht &l=
t;<a href=3D"mailto:dave.taht@gmail.com">dave.taht@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div><br></div>A huge thanks to dave seddon for buckling down and doing s=
ome comprehensive testing of a variety of arm64 gear!<div><br clear=3D"all"=
><div><a href=3D"https://docs.google.com/document/d/1HxIU_TEBI6xG9jRHlr8rzy=
yxFEN43zMcJXUFlRuhiUI/edit#heading=3Dh.bpvv3vr500nw" target=3D"_blank">http=
s://docs.google.com/document/d/1HxIU_TEBI6xG9jRHlr8rzyyxFEN43zMcJXUFlRuhiUI=
/edit#heading=3Dh.bpvv3vr500nw</a><br></div><div><br></div><span class=3D"g=
mail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signat=
ure"><div dir=3D"ltr"><div>Oct 30: <a href=3D"https://netdevconf.info/0x17/=
news/the-maestro-and-the-music-bof.html" target=3D"_blank">https://netdevco=
nf.info/0x17/news/the-maestro-and-the-music-bof.html</a></div><div>Dave T=
=C3=A4ht CSO, LibreQos<br></div></div></div></div></div>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Regards,<br></div>Dave=
 Seddon<br>+1 415 857 5102<br></div></div></div></div></div></div>

--000000000000dfda530605a77335--

--===============3207287369888305825==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3207287369888305825==--

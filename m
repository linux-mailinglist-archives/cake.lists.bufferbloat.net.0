Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA601B4BFD
	for <lists+cake@lfdr.de>; Wed, 22 Apr 2020 19:42:57 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 789243CB37;
	Wed, 22 Apr 2020 13:42:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587577376;
	bh=3L2rq0R/t6NgPEoA4Ig9V26dKnD9jiPzhUsau6QMRXI=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nrx3bmbcm+wYgGp1WSc7RCUROyWIaoGOHQIqycX08j13vGnIpoWsLaMeq66/MiZbV
	 lJuu3jEmS0jEvWR0kSXXlqKRn/1TzaoBaHOb6F0A+OH7LtNAHth51L6Bh4EbYIMe08
	 GLMXw7kUEW2gCe/QOsAOOFHvYetEIdhE8SX3RgxizV95Tkx940Vjj3NeTP1MJGYjDb
	 QwzwzcfpjKLDe4KIWi/cjA1sSAkfLyCzR0NY+ZJqH0bc7WQlQcMf+G2dymfMDoWLL+
	 bkT+fsd7+4Hi+hjrSFtJQv97spr9hnH17//J5V7KuLQbU1MsvXlTprDx5WHV57Xkb0
	 xzcIXXtpuUfPw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp109.iad3a.emailsrvr.com (smtp109.iad3a.emailsrvr.com
 [173.203.187.109])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 617833B29E
 for <cake@lists.bufferbloat.net>; Wed, 22 Apr 2020 13:42:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1587577375;
 bh=i2a/o0P1ZXLH7RqoYyMetxsDiEEY4RnBrb9qpdCQ+TM=;
 h=Date:Subject:From:To:From;
 b=ULNXhVulVIGhEmRMGjvhqaxjMDuCO59g4NqqKPrbOBQTcAL7fSg/tfY+lfsa2ENQh
 KyFTKu44tULWdmrS5kidc8Q/undasf8vczowwd5873e0z9Jbq1VaZ3F416C7/iPpAf
 7znkKSaHMyEmBAYyX49fgy/LXkbQM601VP0SIb8k=
Received: from app25.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp30.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id E51085475;
 Wed, 22 Apr 2020 13:42:54 -0400 (EDT)
X-Sender-Id: dpreed@deepplum.com
Received: from app25.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140]) by 0.0.0.0:25 (trex/5.7.12);
 Wed, 22 Apr 2020 13:42:55 -0400
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app25.wa-webapps.iad3a (Postfix) with ESMTP id CDB9E20042;
 Wed, 22 Apr 2020 13:42:54 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Wed, 22 Apr 2020 13:42:54 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Wed, 22 Apr 2020 13:42:54 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Luca Muscariello" <muscariello@ieee.org>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <CAH8sseQjSk4ghHXSvbeMMAvqGYnJ=0O9XLGo15bFVpwh+C8Zrg@mail.gmail.com>
References: <d3f45591-7359-47a6-bd0b-f89f9b49c5a7@www.fastmail.com> 
 <75FEC2D9-BFC8-4FA2-A972-D11A823C5528@gmail.com> 
 <CAA93jw7kfSjuQP2j8uX5-+hs2PBLNZ6c0=tV=PjZE50fQ1oFLw@mail.gmail.com> 
 <AAAE0AE6-BA8C-4236-A68D-C5A4CF7DFEDA@slashdirt.org> 
 <603DFF79-D0C0-41BD-A2FB-E40B95A9CBB0@gmail.com> 
 <CAA93jw5yvybv+aXH4NLd1r_8xSP2CPwzeh0q6wm1c26jLPBxag@mail.gmail.com> 
 <CAH8sseTdDfswOYpYvaDFm_jsaMCpsT9Ebj2ZvkKwaqyyjZiWHA@mail.gmail.com> 
 <CAA93jw54L6-mUU9oTgZVFHh5kY7HHGVQjZJZfUMw7Kuq+S9-8w@mail.gmail.com> 
 <CAH8sseQjSk4ghHXSvbeMMAvqGYnJ=0O9XLGo15bFVpwh+C8Zrg@mail.gmail.com>
Message-ID: <1587577374.840114194@apps.rackspace.com>
X-Mailer: webmail/17.3.7-RC
X-Classification-ID: 26b65163-26ed-45e1-98e3-848d24011b8e-1-1
Subject: Re: [Cake] Advantages to tightly tuning latency
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
Cc: Cake List <cake@lists.bufferbloat.net>, Maxime Bizon <mbizon@freebox.fr>
Content-Type: multipart/mixed; boundary="===============6227288546541642154=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6227288546541642154==
Content-Type: multipart/alternative;boundary="----=_20200422134254000000_52480"

------=_20200422134254000000_52480
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AHaving asymmetric gigabit cable modem service (1 Gb/s down) and very sho=
rt latencies (5 ms.) to many servers of interest that can source 1 Gb/s), I=
 would just comment that I find it very, very useful for "normal" use.=0A =
=0APerhaps my point is this: "normal" isn't a narrow gaussian distribution =
of performance needs. It's what might be called a time-varying long tailed =
distribution.=0A =0AI pay for 1 gb/sec because it is "worth it" to download=
 from, say, github cloning or a docker container image in under 1 second.=
=0A =0ATo think that isn't valuable is to miss the point that the Internet'=
s performance isn't about isochronous flows or slow FTPs - it's not about t=
hroughput. It's about service delay.=0A =0AAnd congestion control is about =
mitigating service delays under load, by eliminating sustained queueing del=
ays that build up due to multiplexed use otherwise.=0A =0ATo talk about one=
 use at a time, and treat an average throughput as the goal metric is to mi=
ss the entire point.=0A =0AA home access connection is frequently multiplex=
ed over unrelated uses. If you are single, live in your own apartment, ... =
you have a very, very warped idea of real usage.=0AOn Wednesday, April 22, =
2020 11:28am, "Luca Muscariello" <muscariello@ieee.org> said:=0A=0A=0A=0A=
=0A=0A=0A=0AOn Wed, Apr 22, 2020 at 4:48 PM Dave Taht <[ dave.taht@gmail.co=
m ]( mailto:dave.taht@gmail.com )> wrote:On Wed, Apr 22, 2020 at 2:04 AM Lu=
ca Muscariello <[ muscariello@ieee.org ]( mailto:muscariello@ieee.org )> wr=
ote:=0A >=0A >=0A >=0A > On Wed, Apr 22, 2020 at 12:44 AM Dave Taht <[ dave=
.taht@gmail.com ]( mailto:dave.taht@gmail.com )> wrote:=0A >>=0A >> On Tue,=
 Apr 21, 2020 at 3:33 PM Jonathan Morton <[ chromatix99@gmail.com ]( mailto=
:chromatix99@gmail.com )> wrote:=0A >> >=0A >> > > On 22 Apr, 2020, at 1:25=
 am, Thibaut <[ hacks@slashdirt.org ]( mailto:hacks@slashdirt.org )> wrote:=
=0A >> > >=0A >> > > My curiosity is piqued. Can you elaborate on this? Wha=
t does [ free.fr ]( http://free.fr ) do?=0A >> >=0A >> > They're a large Fr=
ench ISP.  They made their own CPE devices, and debloated both them and the=
ir network quite a while ago.  In that sense, at least, they're a model for=
 others to follow - but few have.=0A >> >=0A >> >  - Jonathan Morton=0A >>=
=0A >> they are one of the few ISPs that insisted on getting full source co=
de=0A >> to their DSL stack, and retained the chops to be able to modify it=
. I=0A >> really admire their revolution v6 product. First introduced in 20=
10,=0A >> it's been continuously updated, did ipv6 at the outset, got fq_co=
del=0A >> when it first came out, and they update the kernel regularly. All=
=0A >> kinds of great features on it, and ecn is enabled by default for tho=
se=0A >> also (things like samba). over 3 million boxes now I hear....=0A >=
>=0A >> with <1ms of delay in the dsl driver, they don't need to shape, the=
y=0A >> just run at line rate using three tiers of DRR that look a lot like=
=0A >> cake. They shared their config with me, and before I lost heart for=
=0A >> future internet drafts, I'd stuck it here:=0A >>=0A >> [ https://git=
hub.com/dtaht/bufferbloat-rfcs/blob/master/home_gateway_queue_management/mi=
ddle.mkd ]( https://github.com/dtaht/bufferbloat-rfcs/blob/master/home_gate=
way_queue_management/middle.mkd )=0A >>=0A >> Occasionally they share some =
data with me. Sometimes I wish I lived in=0A >> paris just so I could have =
good internet! (their fiber offering is=0A >> reasonably buffered (not fq_c=
odeled) and the wifi... maybe I can get=0A >> them to talk about what they =
did)=0A >>=0A >> When [ free.fr ]( http://free.fr ) shipped fq_codel 2 mont=
hs after we finalized it, I=0A >> figured the rest of the world was only mo=
nths behind. How hard is it=0A >> to add 50 lines of BQL oriented code to a=
 DSL firmware?=0A >>=0A >=0A > Free has been using SFQ since 2005 (if I rem=
ember well).=0A > They announced the wide deployment of SFQ in the [ free.f=
r ]( http://free.fr ) newsgroup.=0A > Wi-Fi in the [ free.fr ]( http://free=
.fr ) router was not as good though.=0A=0A They're working on it. :)=0A=0A =
> In Paris there is a lot of GPON now that is replacing DSL. But there is=
=0A > a nation-wide effort funded by local administrations to get fiber=0A =
> everywhere. There are small towns in the countryside with fiber.=0A > Pub=
lic money has made, and is making that possible.=0A > There is still a litt=
le of Euro-DOCSIS, but frankly compared to fiber=0A > it has no chance to s=
urvive.=0A=0A I am very, very happy for y'all. Fiber has always been the sa=
nest=0A thing. Is there=0A a SPF+ gpon card yet I can plug into a conventio=
n open source router yet?=0A=0A >=0A > I currently have 2Gbps/600Mbps acces=
s with [ orange.fr ]( http://orange.fr ) and [ free.fr ]( http://free.fr ) =
has a subscription=0A > at 10Gbps GPON. I won't tell you the price because =
you may feel depressed=0A > compared to other countries where prices are mu=
ch higher.=0A=0A I'd emigrate!!!=0A=0A > The challenge becomes to keep up w=
ith these link rates in software=0A > as there is a lot of hardware offload=
ing.=0A=0AI just meant that these routers tend to use HW offloading =0Aand =
kernel qdiscs may be bypassed.=0A =0A At this point, I kind of buy the stan=
ford sqrt(bdp) argument. All you=0A really need for gigE+ fiber access to w=
ork well=0A for most modern traffic is a fairly short fifo (say, 20ms). Any=
 form=0A of FQ would help but be hardly noticible. I think=0A there needs t=
o be work on the hop between the internet and the subscriber...=0A=0A Web t=
raffic is dominated by RTT above 40mbit (presently).=0A streaming video tra=
ffic - is no more than 20Mbit, and your occasional=0A big download is a doz=
en big streams that would=0A bounce off a short fifo well.=0A gbit access t=
o the home is (admittedly glorious, wonderful!) overkill=0A for all present=
 forms of traffic.=0A=0A I'm pretty sure if I had gig fiber I could come up=
 with a way to use=0A it up (exiting the cloud entirely comes to mind), but=
=0A lacking new applications that demand that much bandwidth...=0A=0A I of =
course, would like to see lola ( [ https://lola.conts.it/ ]( https://lola.c=
onts.it/ ) ) finally=0A work, and videoconferencing and game stream with hi=
gh rates and faster=0A (even raw) encoding also has potential to reduce e2e=
 latencies=0A enormously at that layer.=0A=0A >=0A > As soon as 802.11ax be=
comes the norm, software scheduling will become=0A > a challenge.=0A=0A Do =
you mean in fiber or wireless? wireless is really problematic at ANY speed.=
=0A=0AI meant that software scheduling becomes a challenge for the same=0Ar=
eason as above. Increase in total throughput of the box=0Awill call for har=
dware offloading and kernel qdisc may be bypassed.=0AIt is not a challenge =
per se, it is a challenge because traffic=0Amay not be managed by the kerne=
l.=0A =0A at gfiber, the buffering moved to the wifi, and there are other=
=0A problems that really impact achievable bandwidth. When I was last in=0A=
 paris, I could "hear" 300+ access points from my apt, and could only=0A ge=
t 100-200kbit per second out of the wireless n ap I had, unless I=0A cheate=
d and stuck my traffic in the VI queue. A friend of mine there,=0A couldn't=
 even get wifi across the room! Beacons ate into a lot of the=0A available=
=0A bandwidth. Since 5ghz (and soon 6ghz - is 6E a thing in france) is=0A s=
horter range I'm hoping that's got better, but with=0A 802.11ac and ax peei=
ng on half the wifi spectrum by default, I imagine=0A achievable rates in h=
igh density locations with many APs will be very=0A low... and very jittery=
... and thus still require good ATF, fq, and=0A aqm technologies.=0A=0A I h=
ave high hopes for OFDMA and DU but thus far haven't found an AP=0A doing i=
t. I'm not sure what to do about the beaconing problem except=0A offer a fr=
ee tradein to all my neighbors still emitting G style=0A frames....=0A=0A A=
nd in looking over some preliminary code for the mt76 ax chip, I=0A worry a=
bout both bad design of the firmware, and=0A insufficient resources on-chip=
 to manage well.=0A=0A How is the 5G rollout going in france?=0A=0AGood que=
stion. I've just seen a speed test at Gbps on a phone=0Awhich can drain you=
r battery in less than 5 minutes. Amazing tech!=0A =0A I recently learned t=
hat much of japan is... wait for it... wimax.=0A=0A >=0A > Luca=0A=0A=0A=0A=
 -- =0A Make Music, Not War=0A=0A Dave T=C3=A4ht=0A CTO, TekLibre, LLC=0A[ =
http://www.teklibre.com ]( http://www.teklibre.com )=0A Tel: 1-831-435-0729
------=_20200422134254000000_52480
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"3"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 12pt; overflow-wrap: break-word;">Having asymmetric giga=
bit cable modem service (1 Gb/s down) and very short latencies (5 ms.) to m=
any servers of interest that can source 1 Gb/s), I would just comment that =
I find it very, very useful for "normal" use.</p>=0A<p style=3D"margin:0;pa=
dding:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">&n=
bsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 12=
pt; overflow-wrap: break-word;">Perhaps my point is this: "normal" isn't a =
narrow gaussian distribution of performance needs. It's what might be calle=
d a time-varying long tailed distribution.</p>=0A<p style=3D"margin:0;paddi=
ng:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp=
;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt;=
 overflow-wrap: break-word;">I pay for 1 gb/sec because it is "worth it" to=
 download from, say, github cloning or a docker container image in under 1 =
second.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size:=
 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;paddin=
g:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">To thi=
nk that isn't valuable is to miss the point that the Internet's performance=
 isn't about isochronous flows or slow FTPs - it's not about throughput. It=
's about service delay.</p>=0A<p style=3D"margin:0;padding:0;font-family: a=
rial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D=
"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: bre=
ak-word;">And congestion control is about mitigating service delays under l=
oad, by eliminating sustained queueing delays that build up due to multiple=
xed use otherwise.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial;=
 font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"marg=
in:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: break-wo=
rd;">To talk about one use at a time, and treat an average throughput as th=
e goal metric is to miss the entire point.</p>=0A<p style=3D"margin:0;paddi=
ng:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp=
;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt;=
 overflow-wrap: break-word;">A home access connection is frequently multipl=
exed over unrelated uses. If you are single, live in your own apartment, ..=
. you have a very, very warped idea of real usage.</p>=0A<p style=3D"margin=
:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word=
;">On Wednesday, April 22, 2020 11:28am, "Luca Muscariello" &lt;muscariello=
@ieee.org&gt; said:<br /><br /></p>=0A<div id=3D"SafeStyles1587576870">=0A<=
div dir=3D"ltr">=0A<div dir=3D"ltr"></div>=0A<br />=0A<div class=3D"gmail_q=
uote">=0A<div class=3D"gmail_attr" dir=3D"ltr">On Wed, Apr 22, 2020 at 4:48=
 PM Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com" target=3D"_blank">=
dave.taht@gmail.com</a>&gt; wrote:</div>=0A<blockquote class=3D"gmail_quote=
" style=3D"margin: 0px 0px 0px 0.8ex; border-left: 1px solid #cccccc; paddi=
ng-left: 1ex;">On Wed, Apr 22, 2020 at 2:04 AM Luca Muscariello &lt;<a href=
=3D"mailto:muscariello@ieee.org" target=3D"_blank">muscariello@ieee.org</a>=
&gt; wrote:<br /> &gt;<br /> &gt;<br /> &gt;<br /> &gt; On Wed, Apr 22, 202=
0 at 12:44 AM Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com" target=
=3D"_blank">dave.taht@gmail.com</a>&gt; wrote:<br /> &gt;&gt;<br /> &gt;&gt=
; On Tue, Apr 21, 2020 at 3:33 PM Jonathan Morton &lt;<a href=3D"mailto:chr=
omatix99@gmail.com" target=3D"_blank">chromatix99@gmail.com</a>&gt; wrote:<=
br /> &gt;&gt; &gt;<br /> &gt;&gt; &gt; &gt; On 22 Apr, 2020, at 1:25 am, T=
hibaut &lt;<a href=3D"mailto:hacks@slashdirt.org" target=3D"_blank">hacks@s=
lashdirt.org</a>&gt; wrote:<br /> &gt;&gt; &gt; &gt;<br /> &gt;&gt; &gt; &g=
t; My curiosity is piqued. Can you elaborate on this? What does <a rel=3D"n=
oreferrer" href=3D"http://free.fr" target=3D"_blank">free.fr</a> do?<br /> =
&gt;&gt; &gt;<br /> &gt;&gt; &gt; They're a large French ISP.&nbsp; They ma=
de their own CPE devices, and debloated both them and their network quite a=
 while ago.&nbsp; In that sense, at least, they're a model for others to fo=
llow - but few have.<br /> &gt;&gt; &gt;<br /> &gt;&gt; &gt;&nbsp; - Jonath=
an Morton<br /> &gt;&gt;<br /> &gt;&gt; they are one of the few ISPs that i=
nsisted on getting full source code<br /> &gt;&gt; to their DSL stack, and =
retained the chops to be able to modify it. I<br /> &gt;&gt; really admire =
their revolution v6 product. First introduced in 2010,<br /> &gt;&gt; it's =
been continuously updated, did ipv6 at the outset, got fq_codel<br /> &gt;&=
gt; when it first came out, and they update the kernel regularly. All<br />=
 &gt;&gt; kinds of great features on it, and ecn is enabled by default for =
those<br /> &gt;&gt; also (things like samba). over 3 million boxes now I h=
ear....<br /> &gt;&gt;<br /> &gt;&gt; with &lt;1ms of delay in the dsl driv=
er, they don't need to shape, they<br /> &gt;&gt; just run at line rate usi=
ng three tiers of DRR that look a lot like<br /> &gt;&gt; cake. They shared=
 their config with me, and before I lost heart for<br /> &gt;&gt; future in=
ternet drafts, I'd stuck it here:<br /> &gt;&gt;<br /> &gt;&gt; <a rel=3D"n=
oreferrer" href=3D"https://github.com/dtaht/bufferbloat-rfcs/blob/master/ho=
me_gateway_queue_management/middle.mkd" target=3D"_blank">https://github.co=
m/dtaht/bufferbloat-rfcs/blob/master/home_gateway_queue_management/middle.m=
kd</a><br /> &gt;&gt;<br /> &gt;&gt; Occasionally they share some data with=
 me. Sometimes I wish I lived in<br /> &gt;&gt; paris just so I could have =
good internet! (their fiber offering is<br /> &gt;&gt; reasonably buffered =
(not fq_codeled) and the wifi... maybe I can get<br /> &gt;&gt; them to tal=
k about what they did)<br /> &gt;&gt;<br /> &gt;&gt; When <a rel=3D"norefer=
rer" href=3D"http://free.fr" target=3D"_blank">free.fr</a> shipped fq_codel=
 2 months after we finalized it, I<br /> &gt;&gt; figured the rest of the w=
orld was only months behind. How hard is it<br /> &gt;&gt; to add 50 lines =
of BQL oriented code to a DSL firmware?<br /> &gt;&gt;<br /> &gt;<br /> &gt=
; Free has been using SFQ since 2005 (if I remember well).<br /> &gt; They =
announced the wide deployment of SFQ in the <a rel=3D"noreferrer" href=3D"h=
ttp://free.fr" target=3D"_blank">free.fr</a> newsgroup.<br /> &gt; Wi-Fi in=
 the <a rel=3D"noreferrer" href=3D"http://free.fr" target=3D"_blank">free.f=
r</a> router was not as good though.<br /><br /> They're working on it. :)<=
br /><br /> &gt; In Paris there is a lot of GPON now that is replacing DSL.=
 But there is<br /> &gt; a nation-wide effort funded by local administratio=
ns to get fiber<br /> &gt; everywhere. There are small towns in the country=
side with fiber.<br /> &gt; Public money has made, and is making that possi=
ble.<br /> &gt; There is still a little of Euro-DOCSIS, but frankly compare=
d to fiber<br /> &gt; it has no chance to survive.<br /><br /> I am very, v=
ery happy for y'all. Fiber has always been the sanest<br /> thing. Is there=
<br /> a SPF+ gpon card yet I can plug into a convention open source router=
 yet?<br /><br /> &gt;<br /> &gt; I currently have 2Gbps/600Mbps access wit=
h <a rel=3D"noreferrer" href=3D"http://orange.fr" target=3D"_blank">orange.=
fr</a> and <a rel=3D"noreferrer" href=3D"http://free.fr" target=3D"_blank">=
free.fr</a> has a subscription<br /> &gt; at 10Gbps GPON. I won't tell you =
the price because you may feel depressed<br /> &gt; compared to other count=
ries where prices are much higher.<br /><br /> I'd emigrate!!!<br /><br /> =
&gt; The challenge becomes to keep up with these link rates in software<br =
/> &gt; as there is a lot of hardware offloading.</blockquote>=0A<div>=0A<d=
iv class=3D"gmail_default" style=3D"font-family: monospace;">I just meant t=
hat these routers tend&nbsp;to use HW offloading&nbsp;</div>=0A<div class=
=3D"gmail_default" style=3D"font-family: monospace;">and kernel qdiscs may =
be bypassed.</div>=0A</div>=0A<div>&nbsp;</div>=0A<blockquote class=3D"gmai=
l_quote" style=3D"margin: 0px 0px 0px 0.8ex; border-left: 1px solid #cccccc=
; padding-left: 1ex;"><br /> At this point, I kind of buy the stanford sqrt=
(bdp) argument. All you<br /> really need for gigE+ fiber access to work we=
ll<br /> for most modern traffic is a fairly short fifo (say, 20ms). Any fo=
rm<br /> of FQ would help but be hardly noticible. I think<br /> there need=
s to be work on the hop between the internet and the subscriber...<br /><br=
 /> Web traffic is dominated by RTT above 40mbit (presently).<br /> streami=
ng video traffic - is no more than 20Mbit, and your occasional<br /> big do=
wnload is a dozen big streams that would<br /> bounce off a short fifo well=
.<br /> gbit access to the home is (admittedly glorious, wonderful!) overki=
ll<br /> for all present forms of traffic.<br /><br /> I'm pretty sure if I=
 had gig fiber I could come up with a way to use<br /> it up (exiting the c=
loud entirely comes to mind), but<br /> lacking new applications that deman=
d that much bandwidth...<br /><br /> I of course, would like to see lola ( =
<a rel=3D"noreferrer" href=3D"https://lola.conts.it/" target=3D"_blank">htt=
ps://lola.conts.it/</a> ) finally<br /> work, and videoconferencing and gam=
e stream with high rates and faster<br /> (even raw) encoding also has pote=
ntial to reduce e2e latencies<br /> enormously at that layer.<br /><br /> &=
gt;<br /> &gt; As soon as 802.11ax becomes the norm, software scheduling wi=
ll become<br /> &gt; a challenge.<br /><br /> Do you mean in fiber or wirel=
ess? wireless is really problematic at ANY speed.</blockquote>=0A<div>=0A<d=
iv class=3D"gmail_default" style=3D"font-family: monospace;">I meant that s=
oftware scheduling becomes a challenge for the same</div>=0A<div class=3D"g=
mail_default" style=3D"font-family: monospace;">reason as above. Increase i=
n total throughput of the box</div>=0A<div class=3D"gmail_default" style=3D=
"font-family: monospace;">will call for hardware offloading and kernel qdis=
c may be bypassed.</div>=0A<div class=3D"gmail_default" style=3D"font-famil=
y: monospace;">It is not a challenge per se, it is a challenge because traf=
fic</div>=0A<div class=3D"gmail_default" style=3D"font-family: monospace;">=
may not be managed by the kernel.</div>=0A</div>=0A<div>&nbsp;</div>=0A<blo=
ckquote class=3D"gmail_quote" style=3D"margin: 0px 0px 0px 0.8ex; border-le=
ft: 1px solid #cccccc; padding-left: 1ex;"><br /> at gfiber, the buffering =
moved to the wifi, and there are other<br /> problems that really impact ac=
hievable bandwidth. When I was last in<br /> paris, I could "hear" 300+ acc=
ess points from my apt, and could only<br /> get 100-200kbit per second out=
 of the wireless n ap I had, unless I<br /> cheated and stuck my traffic in=
 the VI queue. A friend of mine there,<br /> couldn't even get wifi across =
the room! Beacons ate into a lot of the<br /> available<br /> bandwidth. Si=
nce 5ghz (and soon 6ghz - is 6E a thing in france) is<br /> shorter range I=
'm hoping that's got better, but with<br /> 802.11ac and ax peeing on half =
the wifi spectrum by default, I imagine<br /> achievable rates in high dens=
ity locations with many APs will be very<br /> low... and very jittery... a=
nd thus still require good ATF, fq, and<br /> aqm technologies.<br /><br />=
 I have high hopes for OFDMA and DU but thus far haven't found an AP<br /> =
doing it. I'm not sure what to do about the beaconing problem except<br /> =
offer a free tradein to all my neighbors still emitting G style<br /> frame=
s....<br /><br /> And in looking over some preliminary code for the mt76 ax=
 chip, I<br /> worry about both bad design of the firmware, and<br /> insuf=
ficient resources on-chip to manage well.<br /><br /> How is the 5G rollout=
 going in france?</blockquote>=0A<div>=0A<div class=3D"gmail_default" style=
=3D"font-family: monospace;">Good question. I've just seen a speed test at =
Gbps on a phone</div>=0A<div class=3D"gmail_default" style=3D"font-family: =
monospace;">which can drain your battery in less than 5 minutes. Amazing te=
ch!</div>=0A</div>=0A<div>&nbsp;</div>=0A<blockquote class=3D"gmail_quote" =
style=3D"margin: 0px 0px 0px 0.8ex; border-left: 1px solid #cccccc; padding=
-left: 1ex;"><br /> I recently learned that much of japan is... wait for it=
... wimax.<br /><br /> &gt;<br /> &gt; Luca<br /><br /><br /><br /> -- <br =
/> Make Music, Not War<br /><br /> Dave T=C3=A4ht<br /> CTO, TekLibre, LLC<=
br /><a rel=3D"noreferrer" href=3D"http://www.teklibre.com" target=3D"_blan=
k">http://www.teklibre.com</a><br /> Tel: 1-831-435-0729</blockquote>=0A</d=
iv>=0A</div>=0A</div></font>
------=_20200422134254000000_52480--


--===============6227288546541642154==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6227288546541642154==--


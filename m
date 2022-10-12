Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF495FCD72
	for <lists+cake@lfdr.de>; Wed, 12 Oct 2022 23:44:31 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 7BFA93CB4E;
	Wed, 12 Oct 2022 17:44:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665611062;
	bh=ZAKq6k1SqSvCCjV9wWbN2TSpCHai6eTn2eFUbbH/u5Q=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=pe+TVdOlerG4k1qhknrwS49Hp3qRWaRzFBkpNhVS+J0DoYgO06uXTNwrEL1lLhck/
	 +c+Yd7lB7ld+EqivgFAnDuUMKGh4OwPDOJ6rHJiqjQxeSqN6MYegow+svOkai4osLc
	 it5BU8bLM/P2R0SBmrEN3uQvvrOvF7om1LC2DqogLlriv8o6MT/CYMV2vJASp8MJf4
	 ei/0x3ccI6HPwgo09zSnUw9LAehXxyApUunVRapTHNqF0IrYC5/XlwMgGd0weVC3G1
	 Ys+p3LtPSiRTWF0qzBY/LLbbTpYMGsVyi8NX8bRL1DZ6VFi+vZzhdURgla4259GY7/
	 wx2j/KavZwlTQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp126.iad3a.emailsrvr.com (smtp126.iad3a.emailsrvr.com
 [173.203.187.126])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 73D213CB37;
 Wed, 12 Oct 2022 17:44:20 -0400 (EDT)
Received: from app7.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp24.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 7DD2523AFC;
 Wed, 12 Oct 2022 17:44:19 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app7.wa-webapps.iad3a (Postfix) with ESMTP id 67A67600C5;
 Wed, 12 Oct 2022 17:44:19 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Wed, 12 Oct 2022 17:44:19 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Wed, 12 Oct 2022 17:44:19 -0400 (EDT)
To: "Bob McMahon" <bob.mcmahon@broadcom.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;boundary="----=_20221012174419000000_76352"
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <CAHb6Lvq4MGWn-wy6PeaHpeBYRjBqkf78a=tedj3RZdA91L9OdA@mail.gmail.com>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com> 
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no> 
 <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de> 
 <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no> 
 <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de> 
 <CAHb6LvqHNv_R2Asn944Kx91Cud5J3XSM-c+PcK8Bz19uaMDynw@mail.gmail.com> 
 <q06231q2-n7qn-345s-np6r-p5717713q3po@ynat.uz> 
 <CAHb6Lvqbj0MDhWvLaEk8Hbr_vZwDs1NdCj1X9Xvxp+x+Mbs0Vw@mail.gmail.com> 
 <D0D4490C-061A-46DA-9592-51C3D210772F@gmail.com> 
 <CAHb6Lvr-JST083ZAyyxCOS8GrhH5xoa_d+SkkB9aPEr1ijcjUQ@mail.gmail.com> 
 <F5B10A7A-7722-442A-B58E-2D2C004D93FD@gmail.com> 
 <CAA93jw5z2gfvRmsp7t1LFKBO_8Oe_dDYUDE58XRL0ga9parkhQ@mail.gmail.com> 
 <CAHb6Lvq4MGWn-wy6PeaHpeBYRjBqkf78a=tedj3RZdA91L9OdA@mail.gmail.com>
X-Client-IP: 209.6.168.128
Message-ID: <1665611059.421316679@apps.rackspace.com>
X-Mailer: webmail/19.0.21-RC
X-Classification-ID: fdc9c590-30c3-4294-a500-39a263413e75-1-1
Subject: Re: [Cake] [Rpm] [Bloat] [Make-wifi-fast] The most wonderful video
	ever about bufferbloat
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
From: "David P. Reed via Cake" <cake@lists.bufferbloat.net>
Reply-To: "David P. Reed" <dpreed@deepplum.com>
Cc: Rich Brown <richb.hanover@gmail.com>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, Rpm <rpm@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

------=_20221012174419000000_76352
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">Bob -</p>=0A<p style=
=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial=
; font-size: 10pt; overflow-wrap: break-word;">I think it is great that Cis=
co has been looking at controlling buffer size in datacenters. However, I'm=
 actually quite skeptical of the analysis here.</p>=0A<p style=3D"margin:0;=
padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">=
&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: =
10pt; overflow-wrap: break-word;">I think what is going on is that operatin=
g system scheduling delays (typical Linux scheduling of ACK packet generati=
on for the TCP stack is very sloow compared to what the hardware is capable=
 of doing if TCP were better implemented) are slowing the TCP connection.</=
p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; ov=
erflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-=
family: arial; font-size: 10pt; overflow-wrap: break-word;">Why would there=
 need to be more than one packet of buffering if there is one flow over a l=
ink? That's the simple test case.</p>=0A<p style=3D"margin:0;padding:0;font=
-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<=
p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow=
-wrap: break-word;">So I think this is a "hotrodding" focused paper that is=
 trying to get more throughput on a single TCP flow, where the bottleneck i=
sn't in the link, but in the OS's crappy code design.</p>=0A<p style=3D"mar=
gin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-w=
ord;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-=
size: 10pt; overflow-wrap: break-word;">Now Linux's stack does just fine wh=
en the end-to-end rate is 1 Gb/s. Then on a typical server, the stack can p=
ass work between the hardware interrupt handlers, through the thread schedu=
ler, scheduling multiple different threads per packet arrival, which of cou=
rse also adds to latency unnecessarily.</p>=0A<p style=3D"margin:0;padding:=
0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</=
p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; ov=
erflow-wrap: break-word;">But when a 1500 byte packet (12K bits) transits a=
 10 Gb/sec link, the latency between ends is around 1 microsecond.&nbsp; A =
processor on the send and receive side can get down to 1 packet (12k bits) =
of buffering in the network in a well-thought out high-performance TCP, ach=
ieving under 10 microsecond user-space to user-space delivery. (not 100 mic=
rosecond).</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-si=
ze: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;pad=
ding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">So,=
 BAD Linux design for datacenter TCP.</p>=0A<p style=3D"margin:0;padding:0;=
font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; over=
flow-wrap: break-word;">I'm very familiar with datacenter 10 and 40 Gb/s et=
hernet protocols in the kernel my company built. We use UDP now, and actual=
ly only because some datacenters require an IP header. We do RTT's with "on=
e flow" using UDP that involve our appiication logic&nbsp;over a 10 GigE sw=
itch in around 50 microseconds out and back. And we haven't even tried sque=
ezing that down. And we fill the 10 Gb/s link without needing 125 KB of "bu=
ffering".</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-siz=
e: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padd=
ing:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">The =
buffer sizes in the table aren't the lowest latency achievable, nor the low=
est latency achievable for a flow-controlled link with full throughput.</p>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; over=
flow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-fa=
mily: arial; font-size: 10pt; overflow-wrap: break-word;">If you need a Cis=
co 9000 to correct for bad OS software by buffering too MUCH, then OK.</p>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; over=
flow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-fa=
mily: arial; font-size: 10pt; overflow-wrap: break-word;">But TCP implement=
ations should ACK quicker than they do. Because we dont want such big buffe=
rs building up when UDP is flowing over the net, and the protocol on top of=
 UDP can respond the way TCP is NOT responding. That just hurts UDP latency=
 for those sharing these overbuffered links.</p>=0A<p style=3D"margin:0;pad=
ding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nb=
sp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10p=
t; overflow-wrap: break-word;">Basically, the buffering in the link should =
be in the network is one max Ethernet packet per active flow. No more. And =
even packet per source is already inside a typical (not cut-through) ethern=
et switch. Competing flows from the same source will block happily because =
Ethernet hardware doesn't admit another packet until the packet has been fo=
rwarded, so any buffering related to the end-machine applications is in the=
 RAM of the end machine.</p>=0A<p style=3D"margin:0;padding:0;font-family: =
arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=
=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;">On Wednesday, October 12, 2022 1:39pm, "Bob McMahon via Cake" =
&lt;cake@lists.bufferbloat.net&gt; said:<br /><br /></p>=0A<div id=3D"SafeS=
tyles1665609470">=0A<div dir=3D"ltr">With full respect to open source&nbsp;=
projects like OpenWRT, I think from an energy, performance &amp; going forw=
ard perspective the AP forwarding plane will be realized by "transistor eng=
ineers." This makes the awareness around bloat by network engineers needed =
even more because those design cycles take awhile. A <a href=3D"https://any=
silicon.com/tapeout/">tape out</a> is very different from a sw compile. The=
 driving force for ASIC &amp; CMOS radio features typically will come from =
IAPs or enterprise customers, mostly per revenues adds&nbsp;to their busine=
sses. Customer complaints are years down the road from such design decision=
s so bloat mitigation or elimination needs to be designed in from the get-g=
o.<br /><br />Bob<br /><br />PS. As&nbsp;a side note, data center switch ar=
chitecture addressed latency &amp; bloat with&nbsp;<a href=3D"https://www.c=
isco.com/c/en/us/products/collateral/switches/nexus-9000-series-switches/wh=
ite-paper-c11-738488.html">things like AFD &amp; DPP</a>&nbsp;as described =
per a Cisco Nexus 9000. Notice their formula for queue size can be defined&=
nbsp;by a math calculation. A challenge with WiFi is that the phy rates are=
 dynamic and have a large range so such tables aren't so straightforward an=
d C cannot be so simply defined. In many ways the data center architects ha=
d an easier problem than we in the shared RF, battery powered, no waveguide=
s, etc. have.<br /><br />=0A<blockquote style=3D"margin: 0 0 0 40px; border=
: none; padding: 0px;">=0A<div>=0A<p class=3D"gmail-pCMTBody" style=3D"marg=
in:0;padding:0;margin: 1px 0em 0.5em; padding: 0px; border: 0px; font-varia=
nt-numeric: normal; font-variant-east-asian: normal; font-stretch: inherit;=
 font-size: 14px; line-height: 1.25; font-family: CiscoSans,Arial,sans-seri=
f; vertical-align: baseline; color: #525252; text-align: justify; overflow:=
 visible; break-before: page;"><span style=3D"margin: 0px; padding: 0px; bo=
rder: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit=
; font-stretch: inherit; font-size: 9pt; line-height: inherit; font-family:=
 Arial,'sans-serif'; vertical-align: baseline; overflow: visible;">The need=
ed buffer size is the bandwidth delay product value divided by the square r=
oot of the number of flows:</span></p>=0A</div>=0A<div>=0A<p class=3D"gmail=
-pBody" style=3D"margin:0;padding:0;margin: 5pt 0em 0.5em; padding: 0px; bo=
rder: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; f=
ont-stretch: inherit; font-size: 14px; line-height: 1.25; font-family: Cisc=
oSans,Arial,sans-serif; vertical-align: baseline; color: #525252; overflow:=
 visible;"><a class=3D"gmail-show-image-alone" style=3D"margin: 0px; paddin=
g: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stret=
ch: inherit; line-height: inherit; vertical-align: baseline; color: #005073=
; overflow: visible; word-break: break-word;" title=3D"white-paper-c11-7384=
88_16.jpg" href=3D"https://www.cisco.com/c/dam/en/us/products/collateral/sw=
itches/nexus-9000-series-switches/white-paper-c11-738488.docx/_jcr_content/=
renditions/white-paper-c11-738488_16.jpg"><img id=3D"gmail-Picture 46" styl=
e=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-vari=
ant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inh=
erit; vertical-align: baseline; overflow: visible; max-width: 98%;" src=3D"=
https://www.cisco.com/c/dam/en/us/products/collateral/switches/nexus-9000-s=
eries-switches/white-paper-c11-738488.docx/_jcr_content/renditions/white-pa=
per-c11-738488_16.jpg" border=3D"0" alt=3D"white-paper-c11-738488_16.jpg" w=
idth=3D"192" height=3D"40" /></a></p>=0A</div>=0A<div>=0A<p class=3D"gmail-=
pBody" style=3D"margin:0;padding:0;margin: 1px 0em 0.5em; padding: 0px; bor=
der: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; fo=
nt-stretch: inherit; font-size: 14px; line-height: 1.25; font-family: Cisco=
Sans,Arial,sans-serif; vertical-align: baseline; color: #525252; overflow: =
visible;">Here, C is the link bandwidth, RTT is round-trip time, and N is t=
he number of long-lived flows (see reference 6 at the end of this document)=
.</p>=0A</div>=0A<div>=0A<p class=3D"gmail-pBody" style=3D"margin:0;padding=
:0;margin: 1px 0em 0.5em; padding: 0px; border: 0px; font-variant-numeric: =
normal; font-variant-east-asian: normal; font-stretch: inherit; font-size: =
14px; line-height: 1.25; font-family: CiscoSans,Arial,sans-serif; vertical-=
align: baseline; color: #525252; overflow: visible;">Using an average RTT o=
f 100 microseconds in a data center network, Figure 11 shows the buffer siz=
e for different link speeds and various numbers of flows. Note that the buf=
fer size decreases rapidly as the number of flows increases. For instance, =
on a 100-Gbps link with 2500 flows, only a 25-KB buffer is needed.</p>=0A<d=
iv class=3D"gmail-pDefault" style=3D"margin: 12pt 0pt 6pt 0px; padding: 1px=
 0px 0px; border: 0px; font-variant-numeric: normal; font-variant-east-asia=
n: normal; font-stretch: inherit; font-size: 14px; line-height: inherit; fo=
nt-family: CiscoSans,Arial,sans-serif; vertical-align: baseline; overflow: =
visible; color: #525252;"><span style=3D"margin: 0px; padding: 0px; border:=
 0px; font-style: inherit; font-variant: inherit; font-weight: bold; font-s=
tretch: inherit; line-height: inherit; vertical-align: baseline; overflow: =
visible;">Figure 11.&nbsp;&nbsp;<span style=3D"margin: 0px; padding: 0px; b=
order: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; =
font-weight: normal; font-stretch: normal; font-size: 7pt; line-height: nor=
mal; font-family: 'Times New Roman'; vertical-align: baseline; overflow: vi=
sible;">&nbsp;&nbsp;</span></span>Buffer Sizing for Different Link Speeds a=
nd Numbers of Flows</div>=0A<img src=3D"cid:@ii_l95wqjui1" alt=3D"image.png=
">=0A<p class=3D"gmail-pBody" style=3D"margin:0;padding:0;margin: 1px 0em 0=
.5em; padding: 0px; border: 0px; font-variant-numeric: normal; font-variant=
-east-asian: normal; font-stretch: inherit; font-size: 14px; line-height: 1=
.25; font-family: CiscoSans,Arial,sans-serif; vertical-align: baseline; col=
or: #525252; overflow: visible;">&nbsp;</p>=0A</div>=0A</blockquote>=0A</di=
v>=0A<br />=0A<div class=3D"gmail_quote">=0A<div class=3D"gmail_attr" dir=
=3D"ltr">On Tue, Oct 11, 2022 at 3:24 PM Dave Taht &lt;<a href=3D"mailto:da=
ve.taht@gmail.com">dave.taht@gmail.com</a>&gt; wrote:</div>=0A<blockquote c=
lass=3D"gmail_quote" style=3D"margin: 0px 0px 0px 0.8ex; border-left: 1px s=
olid #cccccc; padding-left: 1ex;">Well, we've all been yammering for many y=
ears, and the message is<br /> getting through. Yes, at this point, changin=
g the message to be more<br /> directed at engineers than users would help,=
 and to this day, I don't<br /> know how to get to anyone in the<br /> C su=
ite, except through the complaints of their kids. Jim got on this<br /> pro=
blem because of his kids. The guy that did dslreports, also. "my"<br /> kid=
s are<br /><br /> At the risk of burying the lede, our very own dave reed j=
ust did a<br /> podcast on different stuff:<br /><a rel=3D"noreferrer" href=
=3D"https://twit.tv/shows/floss-weekly/episodes/701?autostart=3Dfalse" targ=
et=3D"_blank">https://twit.tv/shows/floss-weekly/episodes/701?autostart=3Df=
alse</a><br /><br /> Sometimes my own (shared with most of you) motivations=
 tend to leak<br /> through. I really encourage the independent growth of u=
ser created and<br /> owned software, running on their own routers, and I'm=
 very pleased to<br /> see the level of activity on the openwrt forums show=
ing how healthy<br /> that part of our culture is. It would be a very diffe=
rent world if<br /> we'd decided to settle for whatever an ISP was willing =
to give us, and<br /> for things as they were, and I'm probably difficult t=
o employ because<br /> of my<br /> fervent beliefs in anti-patenting, free =
and open source, and the right<br /> to repair...<br /><br /> ... but I wou=
ldn't have my world any other way. I might die broke, but<br /> I'll die fr=
ee.<br /><br /> On Tue, Oct 11, 2022 at 11:44 AM Rich Brown via Rpm<br /> &=
lt;<a href=3D"mailto:rpm@lists.bufferbloat.net" target=3D"_blank">rpm@lists=
.bufferbloat.net</a>&gt; wrote:<br /> &gt;<br /> &gt;<br /> &gt;<br /> &gt;=
<br /> &gt; On Oct 11, 2022, at 1:05 PM, Bob McMahon &lt;<a href=3D"mailto:=
bob.mcmahon@broadcom.com" target=3D"_blank">bob.mcmahon@broadcom.com</a>&gt=
; wrote:<br /> &gt;<br /> &gt; I agree that bufferbloat awareness is a good=
 thing. The issue I have is the approach - ask consumers to "detect it" and=
 replace a device with a new one, that may or may not, meet all the needs o=
f the users.<br /> &gt;<br /> &gt;<br /> &gt; Better is that network engine=
ers "design bloat out" from the beginning starting by properly sizing queue=
s to service jitter, and for WiFi, to also enable aggregation techniques th=
at minimize TXOP consumption.<br /> &gt;<br /> &gt;<br /> &gt; The Yes, but=
... part of my answer emphasizes awareness. How are the network engineers g=
oing to know it's worth the (minor) effort of creating properly-sized queue=
s?<br /> &gt;<br /> &gt; There are two fronts to attack:<br /> &gt;<br /> &=
gt; - Manufacturers - This video is a start on getting their customers to u=
se these responsiveness test tools and call the support lines.<br /> &gt;<b=
r /> &gt; - Hardware (especially router) reviewers - It kills me that there=
 is radio silence whenever I ask a reviewer if they have ever measured late=
ncy/responsiveness.&nbsp; (BTW: Has anyone heard from Ben Moskowitz from Co=
nsumer Reports? We had a very encouraging phone call about a year ago, and =
they were going to get back to us...)<br /> &gt;<br /> &gt; Rich<br /> &gt;=
<br /> &gt;<br /> &gt; Bob<br /> &gt;<br /> &gt; On Tue, Oct 11, 2022 at 6:=
57 AM Rich Brown &lt;<a href=3D"mailto:richb.hanover@gmail.com" target=3D"_=
blank">richb.hanover@gmail.com</a>&gt; wrote:<br /> &gt;&gt;<br /> &gt;&gt;=
<br /> &gt;&gt;<br /> &gt;&gt; On Oct 10, 2022, at 8:05 PM, Bob McMahon via=
 Rpm &lt;<a href=3D"mailto:rpm@lists.bufferbloat.net" target=3D"_blank">rpm=
@lists.bufferbloat.net</a>&gt; wrote:<br /> &gt;&gt;<br /> &gt;&gt; &gt; I =
think conflating bufferbloat with latency misses the subtle point in that<b=
r /> &gt;&gt; &gt; bufferbloat is a measurement in memory units more than a=
 measurement in<br /> &gt;&gt; &gt; time units.<br /> &gt;&gt;<br /> &gt;&g=
t;<br /> &gt;&gt; Yes, but... I am going to praise this video, even as I en=
courage all the techies to be sure that they have the units correct.<br /> =
&gt;&gt;<br /> &gt;&gt; I've been yammering about the evils of latency/exce=
ss queueing for 10 years on my blog, in forums, etc. I have not achieved an=
ywhere near the notoriety of this video (almost a third of a million views)=
.<br /> &gt;&gt;<br /> &gt;&gt; I am delighted that there's an engaging, ma=
ss-market Youtube video that makes the case that bufferbloat even exists.<b=
r /> &gt;&gt;<br /> &gt;&gt; Rich<br /> &gt;<br /> &gt;<br /> &gt; This ele=
ctronic communication and the information and any files transmitted with it=
, or attached to it, are confidential and are intended solely for the use o=
f the individual or entity to whom it is addressed and may contain informat=
ion that is confidential, legally privileged, protected by privacy laws, or=
 otherwise restricted from disclosure to anyone else. If you are not the in=
tended recipient or the person responsible for delivering the e-mail to the=
 intended recipient, you are hereby notified that any use, copying, distrib=
uting, dissemination, forwarding, printing, or copying of this e-mail is st=
rictly prohibited. If you received this e-mail in error, please return the =
e-mail to the sender, delete it from your computer, and destroy any printed=
 copy of it.<br /> &gt;<br /> &gt;<br /> &gt; _____________________________=
__________________<br /> &gt; Rpm mailing list<br /> &gt; <a href=3D"mailto=
:Rpm@lists.bufferbloat.net" target=3D"_blank">Rpm@lists.bufferbloat.net</a>=
<br /> &gt; <a rel=3D"noreferrer" href=3D"https://lists.bufferbloat.net/lis=
tinfo/rpm" target=3D"_blank">https://lists.bufferbloat.net/listinfo/rpm</a>=
<br /><br /><br /><br /> -- <br /> This song goes out to all the folk that =
thought Stadia would work:<br /><a rel=3D"noreferrer" href=3D"https://www.l=
inkedin.com/posts/dtaht_the-mushroom-song-activity-6981366665607352320-FXtz=
" target=3D"_blank">https://www.linkedin.com/posts/dtaht_the-mushroom-song-=
activity-6981366665607352320-FXtz</a><br /> Dave T=C3=A4ht CEO, TekLibre, L=
LC</blockquote>=0A</div>=0A<br /><span style=3D"background-color: #ffffff;"=
><span style=3D"font-size: small;">This electronic communication and the in=
formation and any files transmitted with it, or attached to it, are confide=
ntial and are intended solely for the use of the individual or entity to wh=
om it is addressed and may contain information that is confidential, legall=
y privileged, protected by privacy laws, or otherwise restricted from discl=
osure to anyone else. If you are not the intended recipient or the person r=
esponsible for delivering the e-mail to the intended recipient, you are her=
eby notified that any use, copying, distributing, dissemination, forwarding=
, printing, or copying of this e-mail is strictly prohibited. If you receiv=
ed this e-mail in error, please return the e-mail to the sender, delete it =
from your computer, and destroy any printed copy of it.</span></span></div>=
</font>
------=_20221012174419000000_76352
Content-Type: image/png;name="img-1.png"
Content-Transfer-Encoding: base64
Content-ID: <@ii_l95wqjui1>
Content-Disposition: inline; filename="img-1.png"

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
------=_20221012174419000000_76352
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

------=_20221012174419000000_76352--



Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD3822D8D8
	for <lists+cake@lfdr.de>; Sat, 25 Jul 2020 19:05:27 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A04883CB38;
	Sat, 25 Jul 2020 13:05:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595696725;
	bh=6r4z5pm1XgPrP7Fl43s/PhP7b+R+dJS66h2CSJCWTMo=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XUuHj2DCRPTx6eyrzSd4Ac7RfhaHaFFvcZnjB0IxCY5zFuWH9+uBS58jk6j0/zcr+
	 IQA7PTFOiZDIxK7vaVzInMBR0UNdIezfTm4ScrTQzJdD/M4cwTIE5gXi6li6SP0VJu
	 6gYFoDe98qoWK25+rRyQgm6u8exkft/H1MnrqyLVhhkKoiXDREExyKd9d3t/BJvpBi
	 UIU8CT/2Fvaj+LZ6q/OV2r62lrfwXywGkReg1MvOdg8mRM27QJsK+JCg7fa75y1u6I
	 W7v/DRBUvq/eEZ2a+rMu0AzgeF0Pds8vYTQ1ABYdHmnT29SEPl5OfUtaRFOiE+1qPH
	 2c2JmBIlIVk/g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp94.iad3a.emailsrvr.com (smtp94.iad3a.emailsrvr.com
 [173.203.187.94])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 678DF3B29E
 for <cake@lists.bufferbloat.net>; Sat, 25 Jul 2020 13:05:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1595696724;
 bh=YJ7JxinWHI+hurC0FVDYbxs9OUKzvA8xTFbeWZ+8/4Q=;
 h=Date:Subject:From:To:From;
 b=p4wm5QWcNJU+82lB3LMkWXeYT/pwJXjyKga1gcgNsTyZsHcNC2+pdRJgoRgs0B9nh
 Rr8ttOnMNoDIIBxckZtOWzaqPB0+JJ3cxSpk8b5y/TZ8By6EW3c+HObln1v9h22NIt
 uz/BslQ3lypcqii1YFNpZql/gG7Xcb0Ffosl3MHk=
Received: from app46.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp20.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id ECA1321009;
 Sat, 25 Jul 2020 13:05:23 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app46.wa-webapps.iad3a (Postfix) with ESMTP id D74D4C0051;
 Sat, 25 Jul 2020 13:05:23 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Sat, 25 Jul 2020 13:05:23 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Sat, 25 Jul 2020 13:05:23 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Jonathan Morton" <chromatix99@gmail.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <1904547A-DC0A-497F-AB7C-624733E2F60A@gmail.com>
References: <d5f74f85-7d72-40f9-a965-8335163d8cec@www.fastmail.com> 
 <1904547A-DC0A-497F-AB7C-624733E2F60A@gmail.com>
Message-ID: <1595696723.8777837@apps.rackspace.com>
X-Mailer: webmail/17.3.12-RC
X-Classification-ID: 9b15e07b-259f-418f-94c7-0f5adfa43e8d-1-1
Subject: Re: [Cake] diffserv3 vs diffserv4
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
Cc: cake@lists.bufferbloat.net
Content-Type: multipart/mixed; boundary="===============8570076836654709090=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8570076836654709090==
Content-Type: multipart/alternative;boundary="----=_20200725130523000000_23993"

------=_20200725130523000000_23993
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0A+1000%=0A =0AI believe the problem with diffserv arose at conception, be=
cause it violated the core idea of IETF's operation:=0A =0A"rough consensus=
 and working code"=0A =0AIt was clear very, very early( to everyone but tho=
se working on it!) that no working approximate implementation ever existed,=
 nor could it!=0A =0AHad someone proposed a single better-efforts category,=
 whose implementation would be Autonomous System by Autonomous System defin=
ed by a scheme roughly equivalent to "Paris Metro Pricing", it would have a=
fforded experience at scale. (In Paris Metro Pricing, there are two knds of=
 cars on each train, First Class and Second Class. If you pay for first cla=
ss, you get to go into the first class cars. Cars change from second to fir=
st class iff the seats in first class are tending to be full. Trains run mo=
re often when there are lines waiting for second class cars. The analogy wi=
th router decisions is should be clear, except since trains can't run more =
often, congestion is signaled by drop or marking, which means that second c=
lass packets would be dropped or marked unless there were no first class pa=
ckets.)=0A =0ABut instead the designers ignored implementation entirely, an=
d invented "wish-based" classes.=0A =0AThis also violated an end-to-end arg=
ument - you should only put "in the network" functions that can be complete=
ly *implemented* "within the network".=0AAnd the TOS/QOS idea isn't meaning=
ful to routers.=0A =0AOn Friday, July 24, 2020 11:13pm, "Jonathan Morton" <=
chromatix99@gmail.com> said:=0A=0A=0A=0A> > On 24 Jul, 2020, at 6:56 pm, Ju=
stin Kilpatrick <justin@althea.net>=0A> wrote:=0A> >=0A> > "sqm-scripts use=
d 3 tiers of priority pretty successfully as does free.fr. -=0A> de-priorit=
ization seems a good idea, prioritization not so much."=0A> >=0A> > This is=
 the best comment on why diffserv3 is the default that I could find on=0A> =
bufferbloat.net. I'm interested in hearing about what data (anecdotes welco=
me)=0A> lead to this conclusion.=0A> =0A> In Cake, Diffserv4 maps conceptua=
lly (but not in detail) to the four priority=0A> buckets in Wifi - BK, BE, =
VI, VO. In Diffserv3 the VI bucket is dropped, because=0A> Cake's flow isol=
ation within BE is already good enough to give decent video=0A> streaming p=
erformance. The BK and VO buckets are still useful to deal with=0A> certain=
 specific problems; BK is the place to put "swarm" protocols which intend=
=0A> to be scavengers but which flow-isolation tends to prioritise, and VO =
is for=0A> latency-sensitive protocols which the user wants to specifically=
 protect from=0A> random traffic fluctuations.=0A> =0A> Thinking more broad=
ly, I believe Diffserv would have been far more successful if=0A> it had re=
placed Precedence/TOS with a simple two-bit, four-way set of PHBs:=0A> =0A>=
 00: High Throughput - equivalent to traditional Best Effort service.=0A> =
=0A> 01: High Reliability - "Every Packet's Sacred".=0A> =0A> 10: Low Cost =
- a scavenging service for altruistic applications.=0A> =0A> 11: Low Latenc=
y - for the many protocols that are sensitive to delays more than=0A> throu=
ghput.=0A> =0A> It may also have been reasonable to include a couple of ext=
ra bits for uses=0A> internal to an AS, on the understanding that the basic=
 two bits would be preserved=0A> end-to-end as an indication of application=
 intent.=0A> =0A> Of the above four classes, Diffserv3 provides three - omi=
tting only the High=0A> Reliability class. But that is a class most useful =
within a datacentre, where it=0A> is actually practical to implement a loss=
less backplane with backpressure signals=0A> instead of loss.=0A> =0A> What=
 we *actually* have is a six-bit field with ill-defined semantics, that is=
=0A> neither preserved nor respected end-to-end, is consequently ignored by=
 most=0A> applications, and consumes all the space in the former TOS byte t=
hat is not=0A> specifically set aside for ECN (a field which could profitab=
ly have been larger). =0A> It is a serious problem.=0A> =0A> Implementation=
s of PHBs still tend to think in terms of bandwidth reservation (a=0A> Bell=
-head paradigm) and/or strict priority (like the Precedence system which wa=
s=0A> lifted directly from telegraphy practice). Both approaches are ineffi=
cient, and=0A> go along with the misconception that if we can merely catego=
rise traffic on the=0A> fly into a large enough number of pigeonholes, some=
 magical method of dealing with=0A> the pigeonholes will make itself obviou=
s. However, both the easy, universal=0A> method of categorisation and the m=
agical delivery strategy have failed to=0A> materialise. It rather suggests=
 that they're doing it wrong.=0A> =0A> So that is why Diffserv3 is the defa=
ult in Cake. It offers explicit "low cost"=0A> and "low latency" service fo=
r suitably marked traffic, and for everything else the=0A> Best Effort serv=
ice uses flow and host isolation strategies to maintain good=0A> behaviour.=
 It usually works well.=0A> =0A> - Jonathan Morton=0A> =0A> _______________=
________________________________=0A> Cake mailing list=0A> Cake@lists.buffe=
rbloat.net=0A> https://lists.bufferbloat.net/listinfo/cake=0A> 
------=_20200725130523000000_23993
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">+1000%</p>=0A<p style=
=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial=
; font-size: 10pt; overflow-wrap: break-word;">I believe the problem with d=
iffserv arose at conception, because it violated the core idea of IETF's op=
eration:</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size=
: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;paddi=
ng:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">"roug=
h consensus and working code"</p>=0A<p style=3D"margin:0;padding:0;font-fam=
ily: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p st=
yle=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wra=
p: break-word;">It was clear very, very early( to everyone but those workin=
g on it!) that no working approximate implementation ever existed, nor coul=
d it!</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 1=
0pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:=
0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">Had some=
one proposed a single better-efforts category, whose implementation would b=
e Autonomous System by Autonomous System defined by a scheme roughly equiva=
lent to "Paris Metro Pricing", it would have afforded experience at scale. =
(In Paris Metro Pricing, there are two knds of cars on each train, First Cl=
ass and Second Class. If you pay for first class, you get to go into the fi=
rst class cars. Cars change from second to first class iff the seats in fir=
st class are tending to be full. Trains run more often when there are lines=
 waiting for second class cars. The analogy with router decisions is should=
 be clear, except since trains can't run more often, congestion is signaled=
 by drop or marking, which means that second class packets would be dropped=
 or marked unless there were no first class packets.)</p>=0A<p style=3D"mar=
gin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-w=
ord;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-=
size: 10pt; overflow-wrap: break-word;">But instead the designers ignored i=
mplementation entirely, and invented "wish-based" classes.</p>=0A<p style=
=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial=
; font-size: 10pt; overflow-wrap: break-word;">This also violated an end-to=
-end argument - you should only put "in the network" functions that can be =
completely *implemented* "within the network".</p>=0A<p style=3D"margin:0;p=
adding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">A=
nd the TOS/QOS idea isn't meaningful to routers.</p>=0A<p style=3D"margin:0=
;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;"=
>&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size:=
 10pt; overflow-wrap: break-word;">On Friday, July 24, 2020 11:13pm, "Jonat=
han Morton" &lt;chromatix99@gmail.com&gt; said:<br /><br /></p>=0A<div id=
=3D"SafeStyles1595696061">=0A<p style=3D"margin:0;padding:0;font-family: ar=
ial; font-size: 10pt; overflow-wrap: break-word;">&gt; &gt; On 24 Jul, 2020=
, at 6:56 pm, Justin Kilpatrick &lt;justin@althea.net&gt;<br />&gt; wrote:<=
br />&gt; &gt;<br />&gt; &gt; "sqm-scripts used 3 tiers of priority pretty =
successfully as does free.fr. -<br />&gt; de-prioritization seems a good id=
ea, prioritization not so much."<br />&gt; &gt;<br />&gt; &gt; This is the =
best comment on why diffserv3 is the default that I could find on<br />&gt;=
 bufferbloat.net. I'm interested in hearing about what data (anecdotes welc=
ome)<br />&gt; lead to this conclusion.<br />&gt; <br />&gt; In Cake, Diffs=
erv4 maps conceptually (but not in detail) to the four priority<br />&gt; b=
uckets in Wifi - BK, BE, VI, VO. In Diffserv3 the VI bucket is dropped, bec=
ause<br />&gt; Cake's flow isolation within BE is already good enough to gi=
ve decent video<br />&gt; streaming performance. The BK and VO buckets are =
still useful to deal with<br />&gt; certain specific problems; BK is the pl=
ace to put "swarm" protocols which intend<br />&gt; to be scavengers but wh=
ich flow-isolation tends to prioritise, and VO is for<br />&gt; latency-sen=
sitive protocols which the user wants to specifically protect from<br />&gt=
; random traffic fluctuations.<br />&gt; <br />&gt; Thinking more broadly, =
I believe Diffserv would have been far more successful if<br />&gt; it had =
replaced Precedence/TOS with a simple two-bit, four-way set of PHBs:<br />&=
gt; <br />&gt; 00: High Throughput - equivalent to traditional Best Effort =
service.<br />&gt; <br />&gt; 01: High Reliability - "Every Packet's Sacred=
".<br />&gt; <br />&gt; 10: Low Cost - a scavenging service for altruistic =
applications.<br />&gt; <br />&gt; 11: Low Latency - for the many protocols=
 that are sensitive to delays more than<br />&gt; throughput.<br />&gt; <br=
 />&gt; It may also have been reasonable to include a couple of extra bits =
for uses<br />&gt; internal to an AS, on the understanding that the basic t=
wo bits would be preserved<br />&gt; end-to-end as an indication of applica=
tion intent.<br />&gt; <br />&gt; Of the above four classes, Diffserv3 prov=
ides three - omitting only the High<br />&gt; Reliability class. But that i=
s a class most useful within a datacentre, where it<br />&gt; is actually p=
ractical to implement a lossless backplane with backpressure signals<br />&=
gt; instead of loss.<br />&gt; <br />&gt; What we *actually* have is a six-=
bit field with ill-defined semantics, that is<br />&gt; neither preserved n=
or respected end-to-end, is consequently ignored by most<br />&gt; applicat=
ions, and consumes all the space in the former TOS byte that is not<br />&g=
t; specifically set aside for ECN (a field which could profitably have been=
 larger). <br />&gt; It is a serious problem.<br />&gt; <br />&gt; Implemen=
tations of PHBs still tend to think in terms of bandwidth reservation (a<br=
 />&gt; Bell-head paradigm) and/or strict priority (like the Precedence sys=
tem which was<br />&gt; lifted directly from telegraphy practice). Both app=
roaches are inefficient, and<br />&gt; go along with the misconception that=
 if we can merely categorise traffic on the<br />&gt; fly into a large enou=
gh number of pigeonholes, some magical method of dealing with<br />&gt; the=
 pigeonholes will make itself obvious. However, both the easy, universal<br=
 />&gt; method of categorisation and the magical delivery strategy have fai=
led to<br />&gt; materialise. It rather suggests that they're doing it wron=
g.<br />&gt; <br />&gt; So that is why Diffserv3 is the default in Cake. It=
 offers explicit "low cost"<br />&gt; and "low latency" service for suitabl=
y marked traffic, and for everything else the<br />&gt; Best Effort service=
 uses flow and host isolation strategies to maintain good<br />&gt; behavio=
ur. It usually works well.<br />&gt; <br />&gt; - Jonathan Morton<br />&gt;=
 <br />&gt; _______________________________________________<br />&gt; Cake =
mailing list<br />&gt; Cake@lists.bufferbloat.net<br />&gt; https://lists.b=
ufferbloat.net/listinfo/cake<br />&gt; </p>=0A</div></font>
------=_20200725130523000000_23993--


--===============8570076836654709090==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8570076836654709090==--


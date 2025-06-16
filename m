Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAF5ADB94F
	for <lists+cake@lfdr.de>; Mon, 16 Jun 2025 21:03:44 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 564203CB5A;
	Mon, 16 Jun 2025 15:03:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1750100611;
	bh=zUklci1A7i3azFnEA9YNB42bPcmOshubZvuCZRe+dz4=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=KGPXVN9juhCnCB79tjmdZUI5yKwLqsiOoUqvFU58KJN9XYEHEepvmg9RzCCF6888A
	 NA8swcbSp/vctdgV/adl4jBqt2HUUQs/QiywB6ypV/UK6bvgI6pVi/HWMosBYv8owv
	 8HMk2REgapTrYANlKXEmsEVqTDqJCqVDpadaZ2LkWB/gRJElqgsXfryO6NikK1IY/N
	 eZESn22XjuP0m8oCzfoQBEIU+LFq38AtaK8fedWOYGErienqccxziJ+Azj3pozpA+m
	 On/WLJjPBz7ujqIWWQ6ApDP/AxHheCBBP6lehu9qAavixNwCOKHyVw8QTILsRfIaga
	 sVS9WgzTGeccA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp97.iad3a.emailsrvr.com (smtp97.iad3a.emailsrvr.com
 [173.203.187.97])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E86DA3CB44;
 Mon, 16 Jun 2025 15:03:28 -0400 (EDT)
Received: from app35.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp5.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 5AFC525320;
 Mon, 16 Jun 2025 15:03:28 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app35.wa-webapps.iad3a (Postfix) with ESMTP id 42782A0085;
 Mon, 16 Jun 2025 15:03:39 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Mon, 16 Jun 2025 15:03:39 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Mon, 16 Jun 2025 15:03:39 -0400 (EDT)
To: "Frantisek Borsik" <frantisek.borsik@gmail.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <CAJUtOOjCYQDdULwY8g0qLgHmBq=0rVCZeYEiokd4kOiip0ED5w@mail.gmail.com>
References: <CAJUtOOjCYQDdULwY8g0qLgHmBq=0rVCZeYEiokd4kOiip0ED5w@mail.gmail.com>
X-Client-IP: 209.6.168.128
Message-ID: <1750100619.26922718@apps.rackspace.com>
X-Mailer: webmail/19.0.28-RC
X-Classification-ID: 0e6162e3-8909-4fa0-bf73-43956e47dc48-1-1
Subject: Re: [Cake] Announcing the LibreQoS Bufferbloat Test Platform
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
Cc: Jeremy Austin via Rpm <rpm@lists.bufferbloat.net>,
 Herbert Wolverson <hwolverson@libreqos.io>,
 libreqos <libreqos@lists.bufferbloat.net>,
 Dave Taht via Starlink <starlink@lists.bufferbloat.net>,
 codel@lists.bufferbloat.net, bloat <bloat@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat-ietf@lists.bufferbloat.net,
 =?utf-8?Q?Robert_Chac=C3=B3n?= <robert@libreqos.io>
Content-Type: multipart/mixed; boundary="===============8400305886968165043=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8400305886968165043==
Content-Type: multipart/alternative;boundary="----=_20250616150339000000_79771"

------=_20250616150339000000_79771
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AI plan to test this out as "being my own ISP" using one of my personal c=
loud servers that is in one of Vultur's hosting sites as the server. (and f=
rom various mobile devices as I travel around among WiFi sites, if I can).=
=0A =0AThe thing I immediately want to know, though, is: has anybody done a=
 serious security review of the system? I'm a "trust but verify" kind of pe=
rsonality. I don't have the energy or time to do the detailed review. I tru=
st that the folks who built this are not black hats - you're my "friends" a=
fter all - we care about similar things. But I'd like to verify that trust.=
=0A =0AAlso, any suggestions people might have with regard to making it wor=
k?=0A =0AI'll send feedback as I explore, promise! Great work!=0A =0ADavid=
=0A =0A =0AOn Sunday, June 15, 2025 08:00, "Frantisek Borsik via Cake" <cak=
e@lists.bufferbloat.net> said:=0A=0A=0A=0A=0AHello to all,=0A=0AWe're excit=
ed to announce the release of the LibreQoS Bufferbloat Test =E2=80=93 an op=
en-source bufferbloat testing solution designed specifically for ISPs and n=
etwork operators to deploy for their customers.=0A=0ALink=0A[ https://test.=
libreqos.com ]( https://test.libreqos.com )=0A=0AWhat Makes This Different=
=0A=0AWhile there are several bufferbloat testing tools available, this pla=
tform addresses a critical gap: ISP-deployable infrastructure that provides=
 both traditional testing and realistic household simulation.=0A=0AAs Dave =
T=C3=A4ht highlighted in his influential article [ "What's Wrong with Speed=
 Tests" ]( https://blog.cerowrt.org/post/speedtests/ ), traditional speed t=
ests fail to measure what users actually experience. We tried to address Da=
ve's points to make a better speed test that focuses on the metric that mat=
ters: latency under load in realistic usage scenarios.=0A=0ATwo Complementa=
ry Test Modes=0A=0ASingle User Test Mode=0A=0ATraditional sequential load t=
esting (baseline =E2=86=92 download =E2=86=92 upload =E2=86=92 bidirectiona=
l)=0AMeasures working latency and jitter during each phase=0AFamiliar A+ to=
 F grading based on latency under load increases=0AComparable to existing t=
ools like DSLReports Speed Test and Waveform Bufferbloat Test=0AVirtual Hou=
sehold Mode (The Innovation)=0A=0AProcess-isolated simulation of 4 concurre=
nt users with authentic traffic patterns:=0A=0AAlex (Gaming): 1.5 Mbps cons=
tant, jitter-sensitive for competitive gaming=0ASarah (Video Conference): 2=
.5 Mbps bidirectional, Teams simulation with working latency monitoring=0AJ=
ake (Netflix HD): 25 Mbps bursts (1s on, 4s off), realistic streaming patte=
rns=0AComputer (Background): Up to 200 Mbps continuous download, system upd=
ates=0AReal-world relevance: Tests latency under load when multiple family =
members are online simultaneously=0A=0AAdvanced grading: Network fairness, =
jitter measurement, and per-user working latency analysis=0A=0AWhy (not onl=
y) ISPs Need This=0A=0AThe traditional approach of sending customers to thi=
rd-party speed test sites has limitations:=0A=0ANo control over test method=
ology or server placement=0ALimited correlation with customer support ticke=
ts=0AGeneric results that don't reflect real-world usage patterns=0ANo inte=
gration with ISP operational systemsThis platform enables (not only) ISPs t=
o:=0A=0AHost their own testing infrastructure with full control=0AIntegrate=
 with support systems via telemetry APIs=0AProvide customers with realistic=
 household testing scenarios=0ACorrelate test results with network performa=
nce and customer complaints=0AOpen Source & Community=0A=0AThe entire platf=
orm is open source and available here: [ https://github.com/LibreQoE/buffer=
bloat_test ]( https://github.com/LibreQoE/bufferbloat_test )=0A=0AWe've des=
igned this to be:=0A=0AEasy to deploy for (not only) ISPs of any size=0ASci=
entifically meaningful in its measurement methodology=0ARealistic in its si=
mulation of actual household usage=0AIntegrable with existing ISP operation=
al workflows=0ACommunity Feedback Requested=0A=0AWe'd love feedback from th=
e [ bufferbloat.net ]( http://bufferbloat.net ) community on:=0A=0ATest met=
hodology: Are we measuring the right metrics?=0AGrading thresholds: Do our =
A+ to F grades align with real-world impact?=0AVirtual household scenarios:=
 What other realistic usage patterns should we simulate?=0AISP adoption: Wh=
at barriers exist for ISP deployment?=0ATechnical Discussion=0A=0AWe'd welc=
ome discussion about:=0A=0AMeasurement accuracy for working latency and jit=
ter in virtual household mode=0ATraffic pattern authenticity (gaming, video=
 conferencing, streaming)=0AGrading methodology for latency under load in c=
omplex multi-user scenarios=0AIntegration approaches for ISP operational sy=
stems=0AThe platform represents our attempt to bridge the gap between acade=
mic bufferbloat research and practical ISP operations, building on the foun=
dational work of researchers like Dave T=C3=A4ht and the broader bufferbloa=
t community. We believe that widespread ISP deployment of proper bufferbloa=
t testing infrastructure will ultimately benefit the entire internet ecosys=
tem.=0A=0ALooking forward to the community's thoughts and feedback!=0A=0ABe=
st regards,=0A=0AThe LibreQoS Team=0A=0A=0A=0A=0A=0A=0A=0A=0A=0A=0A=0A =0AI=
n loving memory of Dave T=C3=A4ht: 1965-2025=0A[ https://libreqos.io/2025/0=
4/01/in-loving-memory-of-dave/ ]( https://libreqos.io/2025/04/01/in-loving-=
memory-of-dave/ )=0A =0A[ https://www.linkedin.com/in/frantisekborsik ]( ht=
tps://www.linkedin.com/in/frantisekborsik )=0ASignal, Telegram, WhatsApp: +=
421919416714 =0AiMessage, mobile: +420775230885=0ASkype: casioa5302ca=0A[ f=
rantisek.borsik@gmail.com ]( mailto:frantisek.borsik@gmail.com )
------=_20250616150339000000_79771
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">I plan to test this ou=
t as "being my own ISP" using one of my personal cloud servers that is in o=
ne of Vultur's hosting sites as the server. (and from various mobile device=
s as I travel around among WiFi sites, if I can).</p>=0A<p style=3D"margin:=
0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;=
">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size=
: 10pt; overflow-wrap: break-word;">The thing I immediately want to know, t=
hough, is: has anybody done a serious security review of the system? I'm a =
"trust but verify" kind of personality. I don't have the energy or time to =
do the detailed review. I trust that the folks who built this are not black=
 hats - you're my "friends" after all - we care about similar things. But I=
'd like to verify that trust.</p>=0A<p style=3D"margin:0;padding:0;font-fam=
ily: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p st=
yle=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wra=
p: break-word;">Also, any suggestions people might have with regard to maki=
ng it work?</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-s=
ize: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;pa=
dding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">I'=
ll send feedback as I explore, promise! Great work!</p>=0A<p style=3D"margi=
n:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-wor=
d;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-si=
ze: 10pt; overflow-wrap: break-word;">David</p>=0A<p style=3D"margin:0;padd=
ing:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbs=
p;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt=
; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;f=
ont-family: arial; font-size: 10pt; overflow-wrap: break-word;">On Sunday, =
June 15, 2025 08:00, "Frantisek Borsik via Cake" &lt;cake@lists.bufferbloat=
.net&gt; said:<br /><br /></p>=0A<div id=3D"SafeStyles1750100181">=0A<div d=
ir=3D"ltr">=0A<div>Hello to all,<br /><br />We're excited to announce the r=
elease of the <strong>LibreQoS Bufferbloat Test</strong> =E2=80=93 an open-=
source bufferbloat testing solution designed specifically for ISPs and netw=
ork operators to deploy for their customers.<br /><br /><strong>Link</stron=
g><br /><a href=3D"https://test.libreqos.com">https://test.libreqos.com</a>=
<br /><br /><strong>What Makes This Different</strong><br /><br />While the=
re are several bufferbloat testing tools available, this platform addresses=
 a critical gap: ISP-deployable infrastructure that provides both tradition=
al testing and realistic household simulation.<br /><br />As Dave T=C3=A4ht=
 highlighted in his influential article <a href=3D"https://blog.cerowrt.org=
/post/speedtests/">"What's Wrong with Speed Tests"</a>, traditional speed t=
ests fail to measure what users actually experience. We tried to address Da=
ve's points to make a better speed test that focuses on the metric that mat=
ters: latency under load in realistic usage scenarios.<br /><br /><strong>T=
wo Complementary Test Modes</strong><br /><br /><em>Single User Test Mode</=
em><br />=0A<ul>=0A<li>Traditional sequential load testing (baseline =E2=86=
=92 download =E2=86=92 upload =E2=86=92 bidirectional)</li>=0A<li>Measures =
working latency and jitter during each phase</li>=0A<li>Familiar A+ to F gr=
ading based on latency under load increases</li>=0A<li>Comparable to existi=
ng tools like DSLReports Speed Test and Waveform Bufferbloat Test</li>=0A</=
ul>=0A<br /><em>Virtual Household Mode (The Innovation)</em><br /><br />Pro=
cess-isolated simulation of 4 concurrent users with authentic traffic patte=
rns:<br />=0A<ul>=0A<li>Alex (Gaming): 1.5 Mbps constant, jitter-sensitive =
for competitive gaming</li>=0A<li>Sarah (Video Conference): 2.5 Mbps bidire=
ctional, Teams simulation with working latency monitoring</li>=0A<li>Jake (=
Netflix HD): 25 Mbps bursts (1s on, 4s off), realistic streaming patterns</=
li>=0A<li>Computer (Background): Up to 200 Mbps continuous download, system=
 updates</li>=0A</ul>=0A<br />Real-world relevance: Tests latency under loa=
d when multiple family members are online simultaneously<br /><br />Advance=
d grading: Network fairness, jitter measurement, and per-user working laten=
cy analysis<br /><br /><strong>Why (not only) ISPs Need This</strong><br />=
<br /><em>The traditional approach of sending customers to third-party spee=
d test sites has limitations:</em><br />=0A<ul>=0A<li>No control over test =
methodology or server placement</li>=0A<li>Limited correlation with custome=
r support tickets</li>=0A<li>Generic results that don't reflect real-world =
usage patterns</li>=0A<li>No integration with ISP operational systems</li>=
=0A</ul>=0A<em>This platform enables (not only) ISPs to:</em><br />=0A<ul>=
=0A<li>Host their own testing infrastructure with full control</li>=0A<li>I=
ntegrate with support systems via telemetry APIs</li>=0A<li>Provide custome=
rs with realistic household testing scenarios</li>=0A<li>Correlate test res=
ults with network performance and customer complaints</li>=0A</ul>=0A<br />=
<strong>Open Source &amp; Community</strong><br /><br />The entire platform=
 is open source and available here: <a href=3D"https://github.com/LibreQoE/=
bufferbloat_test">https://github.com/LibreQoE/bufferbloat_test</a><br /><br=
 />We've designed this to be:<br />=0A<ul>=0A<li>Easy to deploy for (not on=
ly) ISPs of any size</li>=0A<li>Scientifically meaningful in its measuremen=
t methodology</li>=0A<li>Realistic in its simulation of actual household us=
age</li>=0A<li>Integrable with existing ISP operational workflows</li>=0A</=
ul>=0A<br /><strong>Community Feedback Requested<br /></strong><br />We'd l=
ove feedback from the <a href=3D"http://bufferbloat.net">bufferbloat.net</a=
> community on:<br />=0A<ul>=0A<li>Test methodology: Are we measuring the r=
ight metrics?</li>=0A<li>Grading thresholds: Do our A+ to F grades align wi=
th real-world impact?</li>=0A<li>Virtual household scenarios: What other re=
alistic usage patterns should we simulate?</li>=0A<li>ISP adoption: What ba=
rriers exist for ISP deployment?</li>=0A</ul>=0A<br /><strong>Technical Dis=
cussion<br /></strong><br />We'd welcome discussion about:<br />=0A<ul>=0A<=
li>Measurement accuracy for working latency and jitter in virtual household=
 mode</li>=0A<li>Traffic pattern authenticity (gaming, video conferencing, =
streaming)</li>=0A<li>Grading methodology for latency under load in complex=
 multi-user scenarios</li>=0A<li>Integration approaches for ISP operational=
 systems</li>=0A</ul>=0A<br />The platform represents our attempt to bridge=
 the gap between academic bufferbloat research and practical ISP operations=
, building on the foundational work of researchers like Dave T=C3=A4ht and =
the broader bufferbloat community. We believe that widespread ISP deploymen=
t of proper bufferbloat testing infrastructure will ultimately benefit the =
entire internet ecosystem.<br /><br /><strong>Looking forward to the commun=
ity's thoughts and feedback!<br /></strong><br />Best regards,<br /><br />T=
he LibreQoS Team</div>=0A<div>=0A<div class=3D"gmail_signature" dir=3D"ltr"=
 data-smartmail=3D"gmail_signature">=0A<div dir=3D"ltr">=0A<div dir=3D"ltr"=
>=0A<div dir=3D"ltr">=0A<div dir=3D"ltr">=0A<div dir=3D"ltr">=0A<div dir=3D=
"ltr">=0A<div dir=3D"ltr">=0A<div dir=3D"ltr">=0A<div>=0A<p class=3D"MsoNor=
mal" style=3D"margin:0;padding:0;color: #222222;">&nbsp;</p>=0A<p class=3D"=
MsoNormal" style=3D"margin:0;padding:0;color: #222222;"><strong>In loving m=
emory of Dave T=C3=A4ht:&nbsp;</strong><span style=3D"color: #202124;">1965=
-2025</span></p>=0A<p class=3D"MsoNormal" style=3D"margin:0;padding:0;color=
: #222222;"><a href=3D"https://libreqos.io/2025/04/01/in-loving-memory-of-d=
ave/" target=3D"_blank">https://libreqos.io/2025/04/01/in-loving-memory-of-=
dave/</a></p>=0A<p class=3D"MsoNormal" style=3D"margin:0;padding:0;color: #=
222222;">&nbsp;</p>=0A<p class=3D"MsoNormal" style=3D"margin:0;padding:0;co=
lor: #222222;"><a style=3D"color: #1155cc;" href=3D"https://www.linkedin.co=
m/in/frantisekborsik" target=3D"_blank">https://www.linkedin.com/in/frantis=
ekborsik</a></p>=0A<p class=3D"MsoNormal" style=3D"margin:0;padding:0;color=
: #222222;">Signal, Telegram, WhatsApp: +421919416714&nbsp;</p>=0A<p class=
=3D"MsoNormal" style=3D"margin:0;padding:0;color: #222222;">iMessage, mobil=
e: +420775230885</p>=0A<p class=3D"MsoNormal" style=3D"margin:0;padding:0;c=
olor: #222222;">Skype: casioa5302ca</p>=0A<p class=3D"MsoNormal" style=3D"m=
argin:0;padding:0;color: #222222;"><a style=3D"color: #1155cc;" href=3D"mai=
lto:frantisek.borsik@gmail.com" target=3D"_blank">frantisek.borsik@gmail.co=
m</a></p>=0A</div>=0A</div>=0A</div>=0A</div>=0A</div>=0A</div>=0A</div>=0A=
</div>=0A</div>=0A</div>=0A</div>=0A</div>=0A</div></font>
------=_20250616150339000000_79771--


--===============8400305886968165043==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8400305886968165043==--


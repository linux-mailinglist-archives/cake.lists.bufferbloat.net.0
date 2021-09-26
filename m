Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FABC418A7F
	for <lists+cake@lfdr.de>; Sun, 26 Sep 2021 20:24:13 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 91A563CB4E;
	Sun, 26 Sep 2021 14:24:04 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1632680644;
	bh=uJ5+EsMu2wmpu85jLmWbBgBgtJkd9BDOJh93JHJb8qU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M+GgQMPWinYxEoUwx+fbVWK150iRw4qsZIzKKZ/ppWw6j8Sf/rEMRQphxKkfEPn7p
	 kEpd44rGzv4LnQsOKBplYhfGRwFIQuPkkQSG+RdlCHWPHd0P1QtMZUy80xlPF+8uc3
	 TswPcBRZF9s/ON4yk3hDxDl3DTfJ4R1gkONAyytgnopUeHsd+GDVSQ/tExTpX/eCRO
	 BnXT/DeQ/q++zLu0S71UV/zLHigH3WlRw6ZzR5uud/pYN/doDnThBn8fcs77dpltUA
	 lH5DPQHoIRNmFDjixcAxi0CsDRg4sxXrgdkOYUv59uypcvS0jpmOXd+s42qE38Fovq
	 dH76fQZzmA7bQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp73.iad3a.emailsrvr.com (smtp73.iad3a.emailsrvr.com
 [173.203.187.73])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7F6B93CB38;
 Sun, 26 Sep 2021 14:24:03 -0400 (EDT)
Received: from app64.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp18.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id E8D5120D35;
 Sun, 26 Sep 2021 14:24:02 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app64.wa-webapps.iad3a (Postfix) with ESMTP id D5558618D5;
 Sun, 26 Sep 2021 14:24:02 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Sun, 26 Sep 2021 14:24:02 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Sun, 26 Sep 2021 14:24:02 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Bob McMahon" <bob.mcmahon@broadcom.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <CAHb6Lvp86iw=DQMN8Z+f7yUJu-5pmVUxsM1_1Jw8RJb2XRcMcg@mail.gmail.com>
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com> 
 <1625188609.32718319@apps.rackspace.com> 
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com> 
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com> 
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com> 
 <1625773080.94974089@apps.rackspace.com> 
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu> 
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com> 
 <1625859083.09751240@apps.rackspace.com> 
 <CAA93jw5QyH4SqKT07hP+skijfimZ0GU=AgLJtkVOQGzKrAkazg@mail.gmail.com> 
 <257851.1632110422@turing-police> 
 <CABf5zv+yq_oJ7O7YqVeSbZ2Qns3C4hESzNA2V0zNb0L1Zg-mgw@mail.gmail.com> 
 <CAHxHggd-4rZ5Nc4raaoRUjjL17MVh8UsNu_5eL8eiLJ=R_68wA@mail.gmail.com> 
 <CAHb6Lvp86iw=DQMN8Z+f7yUJu-5pmVUxsM1_1Jw8RJb2XRcMcg@mail.gmail.com>
X-Client-IP: 209.6.168.128
Message-ID: <1632680642.869711321@apps.rackspace.com>
X-Mailer: webmail/19.0.13-RC
X-Classification-ID: 3b0fcce3-004d-4787-8e2e-1093ec843d11-1-1
Subject: Re: [Cake] [Starlink] [Cerowrt-devel] [Bloat] Little's Law mea
	culpa, but not invalidating my main point
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 =?utf-8?Q?Valdis_Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 starlink@lists.bufferbloat.net, codel <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Steve Crocker <steve@shinkuro.com>,
 Vint Cerf <vint@google.com>
Content-Type: multipart/mixed; boundary="===============2657585976690727745=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2657585976690727745==
Content-Type: multipart/alternative;boundary="----=_20210926142402000000_22541"

------=_20210926142402000000_22541
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0APretty good list, thanks for putting this together.=0A =0AThe only thing=
 I'd add, and I'm not able to formulate it very elegantly, is this personal=
 insight: One that I would research, because it can be a LOT more useful in=
 the end-to-end control loop than stuff like ECN, L4S, RED, ...=0A =0AFact:=
 Detecting congestion by allowing a queue to build up is a very lagging ind=
icator of incipient congestion in the forwarding system. The delay added to=
 all paths by that queue buildup slows down the control loop's ability to r=
espond by slowing the sources. It's the control loop delay that creates bot=
h instability and continued congestion growth.=0AObservation: current forwa=
rders forget what they have forwarded as soon as it is transmitted. This lo=
ses all the information about incipient congestion and "fairness" among mul=
tiple sources. Yet, there is no need to forget recent history at all after =
the packets have been transmitted.=0A =0AAn idea I keep proposing is the id=
ea of remembering the last K seconds of packets, their flow ids (source and=
 destination), the arrival time and departure time, and their channel occup=
ancy on the outbound shared link. Then using this information to reflect in=
cipient congestion information to the flows that need controlling, to be us=
ed in their control loops.=0A =0ASo far, no one has taken me up on doing th=
e research to try this in the field. Note: the signalling can be simple (se=
nding ECN flags on all flows that transit the queue, even though there is n=
o backlog, yet, when the queue is empty but transient overload seems likely=
), but the key thing is that we already assume that  recent history of pack=
ets is predictive of future overflow.=0AThis can be implemented locally on =
any routing path that tends to be a bottleneck link. Such as the uplink of =
a home network. It should work with TCP as is if the signalling causes wind=
ow reduction (at first, just signal by dropping packets prematurely, but if=
 TCP will handle ECN aggressively - a single ECN mark causing window reduct=
ion, then it will help that, too).=0A =0AThe insight is that from an "infor=
mation and control theory" perspective, the packets that have already been =
forwarded are incredibly valuable for congestion prediction.=0A =0APlease, =
if possible, if anyone actually works on this and publishes, give me credit=
 for suggesting this.=0AJust because I've been suggesting it for about 15 y=
ears now, and being ignored. It would be a mitzvah.=0A =0A =0AOn Thursday, =
September 23, 2021 1:46pm, "Bob McMahon" <bob.mcmahon@broadcom.com> said:=
=0A=0A=0A=0AHi All,=0AI do appreciate this thread as well. As a test & meas=
urement guy here are my conclusions around network performance. Thanks in a=
dvance for any comments.=0A=0ACongestion can be mitigated the following way=
s=0Ao) Size queues properly to minimize/negate bloat (easier said than done=
 with tech like WiFi)=0Ao) Use faster links on the service side such that a=
 queues' service rates exceeds the arrival rate, no congestion even in burs=
ts, if possible=0Ao) Drop entries during oversubscribed states (queue proce=
ssing can't "speed up" like water flow through a constricted pipe, must dro=
p)=0Ao) Identify aggressor flows per congestion if possible=0Ao) Forwarding=
 planes can signal back the the sources "earlier" to minimize queue build u=
ps per a "control loop request" asking sources to pace their writes=0Ao) tr=
ansport layers use techniques a la BBR=0Ao) Use "home gateways" that suppor=
t tech like FQ_CODEL=0ALatency can be mitigated the following ways=0Ao) Mit=
igate or eliminate congestion, particularly around queueing delays=0Ao) End=
 host apps can use TCP_NOTSENT_LOWAT along with write()/select() to reduce =
host sends of "better never than late" messages =0Ao) Move servers closer t=
o the clients per fundamental limit of the speed of light (i.e. propagation=
 delay of energy over the wave guides), a la CDNs=0A(Except if you're a HFT=
, separate servers across geography and make sure to have exclusive user ri=
ghts over the lowest latency links)=0A=0ATransport control loop(s)=0Ao) Tra=
nsport layer control loops are non linear systems so network tooling will s=
truggle to emulate "end user experience"=0Ao) 1/2 RTT does not equal OWD us=
ed to compute the bandwidth delay product, imbalance and effects need to be=
 measured=0Ao) forwarding planes signaling congestion to sources wasn't des=
igned in TCP originally but the industry trend seems to be to moving toward=
s this per things like L4S=0APhotons, radio & antenna design=0Ao) Find expe=
rts who have experience & knowledge, e.g. many do here=0Ao) Photons don't r=
eally have mass nor size, at least per my limited understanding of particle=
 physics and QED though, I must admit, came from reading things on the inte=
rnet =0A=0ABob=0A=0A=0AOn Mon, Sep 20, 2021 at 7:40 PM Vint Cerf <[ vint@go=
ogle.com ]( mailto:vint@google.com )> wrote:=0Asee [ https://mediatrust.com=
/ ]( https://mediatrust.com/ )=0Av=0A=0A=0AOn Mon, Sep 20, 2021 at 10:28 AM=
 Steve Crocker <[ steve@shinkuro.com ]( mailto:steve@shinkuro.com )> wrote:=
=0A=0ARelated but slightly different: Attached is a slide some of my collea=
gues put together a decade ago showing the number of DNS lookups involved i=
n displaying CNN's front page.=0ASteve=0A=0A=0AOn Mon, Sep 20, 2021 at 8:18=
 AM Valdis Kl=C4=93tnieks <[ valdis.kletnieks@vt.edu ]( mailto:valdis.kletn=
ieks@vt.edu )> wrote:On Sun, 19 Sep 2021 18:21:56 -0700, Dave Taht said:=0A=
 > what actually happens during a web page load,=0A=0A I'm pretty sure that=
 nobody actually understands that anymore, in any=0A more than handwaving l=
evels.=0A=0A I have a nice Chrome extension called IPvFoo that actually tra=
cks the IP=0A addresses contacted during the load of the displayed page. I'=
ll let you make=0A a guess as to how many unique IP addresses were contacte=
d during a load=0A of [ https://www.cnn.com ]( https://www.cnn.com )=0A=0A =
...=0A=0A=0A ...=0A=0A=0A ...=0A=0A=0A 145, at least half of which appeared=
 to be analytics.  And that's only the=0A hosts that were contacted by my l=
aptop for HTTP, and doesn't count DNS, or=0A load-balancing front ends, or =
all the back-end boxes.  As I commented over on=0A NANOG, we've gotten to a=
 point similar to that of AT&T long distance, where 60%=0A of the effort of=
 connecting a long distance phone call was the cost of=0A accounting and bi=
lling for the call.=0A=0A=0A=0A=0A=0A=0A=0A=0A ____________________________=
___________________=0A Starlink mailing list=0A[ Starlink@lists.bufferbloat=
.net ]( mailto:Starlink@lists.bufferbloat.net )=0A[ https://lists.bufferblo=
at.net/listinfo/starlink ]( https://lists.bufferbloat.net/listinfo/starlink=
 )_______________________________________________=0A Starlink mailing list=
=0A[ Starlink@lists.bufferbloat.net ]( mailto:Starlink@lists.bufferbloat.ne=
t )=0A[ https://lists.bufferbloat.net/listinfo/starlink ]( https://lists.bu=
fferbloat.net/listinfo/starlink )=0A-- =0A=0A=0A=0APlease send any postal/o=
vernight deliveries to:=0AVint Cerf=0A1435 Woodhurst Blvd =0AMcLean, VA 221=
02=0A703-448-0965=0Auntil further notice=0AThis electronic communication an=
d the information and any files transmitted with it, or attached to it, are=
 confidential and are intended solely for the use of the individual or enti=
ty to whom it is addressed and may contain information that is confidential=
, legally privileged, protected by privacy laws, or otherwise restricted fr=
om disclosure to anyone else. If you are not the intended recipient or the =
person responsible for delivering the e-mail to the intended recipient, you=
 are hereby notified that any use, copying, distributing, dissemination, fo=
rwarding, printing, or copying of this e-mail is strictly prohibited. If yo=
u received this e-mail in error, please return the e-mail to the sender, de=
lete it from your computer, and destroy any printed copy of it.
------=_20210926142402000000_22541
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">Pretty good list, than=
ks for putting this together.</p>=0A<p style=3D"margin:0;padding:0;font-fam=
ily: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p st=
yle=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wra=
p: break-word;">The only thing I'd add, and I'm not able to formulate it ve=
ry elegantly, is this personal insight: One that I would research, because =
it can be a LOT more useful in the end-to-end control loop than stuff like =
ECN, L4S, RED, ...</p>=0A<p style=3D"margin:0;padding:0;font-family: arial;=
 font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"marg=
in:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-wo=
rd;">Fact: Detecting congestion by allowing a queue to build up is a very l=
agging indicator of incipient congestion in the forwarding system. The dela=
y added to all paths by that queue buildup slows down the control loop's ab=
ility to respond by slowing the sources. It's the control loop delay that c=
reates both instability and continued congestion growth.</p>=0A<p style=3D"=
margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: brea=
k-word;">Observation: current forwarders forget what they have forwarded as=
 soon as it is transmitted. This loses all the information about incipient =
congestion and "fairness" among multiple sources. Yet, there is no need to =
forget recent history at all after the packets have been transmitted.</p>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; over=
flow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-fa=
mily: arial; font-size: 10pt; overflow-wrap: break-word;">An idea I keep pr=
oposing is the idea of remembering the last K seconds of packets, their flo=
w ids (source and destination), the arrival time and departure time, and th=
eir channel occupancy on the outbound shared link. Then using this informat=
ion to reflect incipient congestion information to the flows that need cont=
rolling, to be used in their control loops.</p>=0A<p style=3D"margin:0;padd=
ing:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbs=
p;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt=
; overflow-wrap: break-word;">So far, no one has taken me up on doing the r=
esearch to try this in the field. Note: the signalling can be simple (sendi=
ng ECN flags on all flows that transit the queue, even though there is no b=
acklog, yet, when the queue is empty but transient overload seems likely), =
but the key thing is that we already assume that&nbsp; recent history of pa=
ckets is predictive of future overflow.</p>=0A<p style=3D"margin:0;padding:=
0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">This can=
 be implemented locally on any routing path that tends to be a bottleneck l=
ink. Such as the uplink of a home network. It should work with TCP as is if=
 the signalling causes window reduction (at first, just signal by dropping =
packets prematurely, but if TCP will handle ECN aggressively - a single ECN=
 mark causing window reduction, then it will help that, too).</p>=0A<p styl=
e=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap:=
 break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: aria=
l; font-size: 10pt; overflow-wrap: break-word;">The insight is that from an=
 "information and control theory" perspective, the packets that have alread=
y been forwarded are incredibly valuable for congestion prediction.</p>=0A<=
p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow=
-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family=
: arial; font-size: 10pt; overflow-wrap: break-word;">Please, if possible, =
if anyone actually works on this and publishes, give me credit for suggesti=
ng this.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size=
: 10pt; overflow-wrap: break-word;">Just because I've been suggesting it fo=
r about 15 years now, and being ignored. It would be a mitzvah.</p>=0A<p st=
yle=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wra=
p: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: ar=
ial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"=
margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: brea=
k-word;">On Thursday, September 23, 2021 1:46pm, "Bob McMahon" &lt;bob.mcma=
hon@broadcom.com&gt; said:<br /><br /></p>=0A<div id=3D"SafeStyles163268062=
2">=0A<div dir=3D"ltr">Hi All,=0A<div>I do appreciate this thread as well. =
As a test &amp; measurement guy here are my conclusions around network perf=
ormance. Thanks in advance for any comments.<br /><br />Congestion can be m=
itigated the following&nbsp;ways</div>=0A<div>o) Size queues properly to mi=
nimize/negate bloat (easier said than done with tech like WiFi)</div>=0A<di=
v>o) Use faster links on the service side such that a queues' service rates=
 exceeds&nbsp;the arrival rate, no congestion&nbsp;even in bursts, if possi=
ble<br />o) Drop entries during oversubscribed states (queue processing can=
't "speed up" like water flow through a constricted pipe, must drop)</div>=
=0A<div>o) Identify aggressor&nbsp;flows per congestion if possible</div>=
=0A<div>o) Forwarding planes can signal back the the sources "earlier" to m=
inimize queue build ups per a "control loop&nbsp;request" asking sources to=
 pace their writes</div>=0A<div>o) transport layers use techniques a la BBR=
</div>=0A<div>o) Use "home gateways" that support tech like FQ_CODEL</div>=
=0A<div>Latency can be mitigated the following&nbsp;ways</div>=0A<div>o) Mi=
tigate or eliminate congestion, particularly around&nbsp;queueing delays</d=
iv>=0A<div>o) End host apps can use TCP_NOTSENT_LOWAT along with write()/se=
lect() to reduce host sends of "better never than late" messages&nbsp;<br /=
>o) Move servers closer to the clients per fundamental limit of the speed o=
f light (i.e. propagation&nbsp;delay of energy over the wave guides), a la =
CDNs</div>=0A<div>(Except if you're a HFT, separate servers across geograph=
y&nbsp;and make sure to have exclusive user rights over the lowest latency =
links)<br /><br />Transport control loop(s)</div>=0A<div>o) Transport layer=
 control loops are non linear systems so network tooling will struggle to e=
mulate "end user experience"</div>=0A<div>o) 1/2 RTT does not equal&nbsp;OW=
D used to compute the bandwidth delay product, imbalance and effects need t=
o be measured</div>=0A<div>o) forwarding planes signaling congestion to sou=
rces wasn't designed in TCP originally but the industry trend seems to be t=
o moving towards this per things like L4S</div>=0A<div>Photons, radio &amp;=
 antenna design<br />o) Find experts who have experience &amp; knowledge, e=
.g. many do here<br />o) Photons don't really have mass nor size, at least&=
nbsp;per my limited understanding of particle physics and QED though, I mus=
t admit, came from reading things on the internet&nbsp;<br /><br />Bob</div=
>=0A</div>=0A<br />=0A<div class=3D"gmail_quote">=0A<div class=3D"gmail_att=
r" dir=3D"ltr">On Mon, Sep 20, 2021 at 7:40 PM Vint Cerf &lt;<a href=3D"mai=
lto:vint@google.com" target=3D"_blank">vint@google.com</a>&gt; wrote:</div>=
=0A<blockquote class=3D"gmail_quote" style=3D"margin: 0px 0px 0px 0.8ex; bo=
rder-left: 1px solid #cccccc; padding-left: 1ex;">=0A<div dir=3D"ltr">see <=
a href=3D"https://mediatrust.com/" target=3D"_blank">https://mediatrust.com=
/</a>=0A<div>v</div>=0A</div>=0A<br />=0A<div class=3D"gmail_quote">=0A<div=
 class=3D"gmail_attr" dir=3D"ltr">On Mon, Sep 20, 2021 at 10:28 AM Steve Cr=
ocker &lt;<a href=3D"mailto:steve@shinkuro.com" target=3D"_blank">steve@shi=
nkuro.com</a>&gt; wrote:</div>=0A<blockquote class=3D"gmail_quote" style=3D=
"margin: 0px 0px 0px 0.8ex; border-left: 1px solid #cccccc; padding-left: 1=
ex;">=0A<div dir=3D"ltr">=0A<div class=3D"gmail_default" style=3D"font-fami=
ly: arial,sans-serif; font-size: small; color: #000000;">Related but slight=
ly different: Attached is a slide some of my colleagues put together a deca=
de ago showing the number of DNS lookups involved in displaying CNN's front=
 page.</div>=0A<div class=3D"gmail_default" style=3D"font-family: arial,san=
s-serif; font-size: small; color: #000000;">Steve</div>=0A</div>=0A<br />=
=0A<div class=3D"gmail_quote">=0A<div class=3D"gmail_attr" dir=3D"ltr">On M=
on, Sep 20, 2021 at 8:18 AM Valdis Kl=C4=93tnieks &lt;<a href=3D"mailto:val=
dis.kletnieks@vt.edu" target=3D"_blank">valdis.kletnieks@vt.edu</a>&gt; wro=
te:</div>=0A<blockquote class=3D"gmail_quote" style=3D"margin: 0px 0px 0px =
0.8ex; border-left: 1px solid #cccccc; padding-left: 1ex;">On Sun, 19 Sep 2=
021 18:21:56 -0700, Dave Taht said:<br /> &gt; what actually happens during=
 a web page load,<br /><br /> I'm pretty sure that nobody actually understa=
nds that anymore, in any<br /> more than handwaving levels.<br /><br /> I h=
ave a nice Chrome extension called IPvFoo that actually tracks the IP<br />=
 addresses contacted during the load of the displayed page. I'll let you ma=
ke<br /> a guess as to how many unique IP addresses were contacted during a=
 load<br /> of <a rel=3D"noreferrer" href=3D"https://www.cnn.com" target=3D=
"_blank">https://www.cnn.com</a><br /><br /> ...<br /><br /><br /> ...<br /=
><br /><br /> ...<br /><br /><br /> 145, at least half of which appeared to=
 be analytics.&nbsp; And that's only the<br /> hosts that were contacted by=
 my laptop for HTTP, and doesn't count DNS, or<br /> load-balancing front e=
nds, or all the back-end boxes.&nbsp; As I commented over on<br /> NANOG, w=
e've gotten to a point similar to that of AT&amp;T long distance, where 60%=
<br /> of the effort of connecting a long distance phone call was the cost =
of<br /> accounting and billing for the call.<br /><br /><br /><br /><br />=
<br /><br /><br /><br /> _______________________________________________<br=
 /> Starlink mailing list<br /><a href=3D"mailto:Starlink@lists.bufferbloat=
.net" target=3D"_blank">Starlink@lists.bufferbloat.net</a><br /><a rel=3D"n=
oreferrer" href=3D"https://lists.bufferbloat.net/listinfo/starlink" target=
=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink</a></blockquote=
>=0A</div>=0A_______________________________________________<br /> Starlink=
 mailing list<br /><a href=3D"mailto:Starlink@lists.bufferbloat.net" target=
=3D"_blank">Starlink@lists.bufferbloat.net</a><br /><a rel=3D"noreferrer" h=
ref=3D"https://lists.bufferbloat.net/listinfo/starlink" target=3D"_blank">h=
ttps://lists.bufferbloat.net/listinfo/starlink</a></blockquote>=0A</div>=0A=
<br />-- <br />=0A<div dir=3D"ltr">=0A<div dir=3D"ltr">=0A<div>Please send =
any postal/overnight deliveries to:</div>=0A<div>Vint Cerf</div>=0A<div>143=
5 Woodhurst Blvd&nbsp;</div>=0A<div>McLean, VA 22102</div>=0A<div>703-448-0=
965</div>=0A<div>until further notice</div>=0A</div>=0A</div>=0A</blockquot=
e>=0A</div>=0A<br /><span style=3D"background-color: #ffffff;"><span style=
=3D"font-size: small;">This electronic communication and the information an=
d any files transmitted with it, or attached to it, are confidential and ar=
e intended solely for the use of the individual or entity to whom it is add=
ressed and may contain information that is confidential, legally privileged=
, protected by privacy laws, or otherwise restricted from disclosure to any=
one else. If you are not the intended recipient or the person responsible f=
or delivering the e-mail to the intended recipient, you are hereby notified=
 that any use, copying, distributing, dissemination, forwarding, printing, =
or copying of this e-mail is strictly prohibited. If you received this e-ma=
il in error, please return the e-mail to the sender, delete it from your co=
mputer, and destroy any printed copy of it.</span></span></div></font>
------=_20210926142402000000_22541--


--===============2657585976690727745==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2657585976690727745==--


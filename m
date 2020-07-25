Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E09B22D997
	for <lists+cake@lfdr.de>; Sat, 25 Jul 2020 21:35:23 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3614F3CB38;
	Sat, 25 Jul 2020 15:35:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595705722;
	bh=w3dQrIP2aZrj/PX/JbDrwY0CKZqQdbSLybWgucic58E=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HaZsATy7KonV5BvpkO5sLFYMQez377TRUxFwNaDMhXt+7bZYDoKucBI2JiVGC1HVf
	 9GWsAw07Jo+5uKlESGg5RPdb09DONtuZoa8pbp1NjVsY6qpjqd4oEWHc5r5oZ/PPL6
	 OjyLNkS+vioNztFZERaHUDb5bV3AuMFTmkRzvkCrs0rBTj0acKrhhviJlFv2Lh6FIp
	 cOvN3IJc/UYF62s/0UNnTCaU9w09FRerJe8IBihyF+OqdTNip7cvM9YJct1X9fJLXV
	 3j+JBM3fV1x9xBi83Pv3ibAP6xmoWDipREJ0DUiZDpdGBRkD9jm5+7R12/HM0nwRRv
	 BwCyyCrIncdjA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp73.iad3a.emailsrvr.com (smtp73.iad3a.emailsrvr.com
 [173.203.187.73])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 94DBF3B29E
 for <cake@lists.bufferbloat.net>; Sat, 25 Jul 2020 15:35:20 -0400 (EDT)
Received: from app50.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp2.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 2F06743AF;
 Sat, 25 Jul 2020 15:35:20 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app50.wa-webapps.iad3a (Postfix) with ESMTP id 17B78618B2;
 Sat, 25 Jul 2020 15:35:20 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Sat, 25 Jul 2020 15:35:20 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Sat, 25 Jul 2020 15:35:20 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Kevin Darbyshire-Bryant" <kevin@darbyshire-bryant.me.uk>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <94003145-2031-454F-8F76-38C153DDFA08@darbyshire-bryant.me.uk>
References: <d5f74f85-7d72-40f9-a965-8335163d8cec@www.fastmail.com> 
 <CFB4036D-8EEA-44B2-A909-6FD8B495267A@darbyshire-bryant.me.uk> 
 <0CCA78BD-201C-4668-A013-24A3F6F4EC87@darbyshire-bryant.me.uk> 
 <1595699283.358416190@apps.rackspace.com> 
 <94003145-2031-454F-8F76-38C153DDFA08@darbyshire-bryant.me.uk>
Message-ID: <1595705720.093911757@apps.rackspace.com>
X-Mailer: webmail/17.3.12-RC
X-Classification-ID: 20ca5964-a504-4af8-abd7-88bb4d3474ea-1-1
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============2909486723216799602=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2909486723216799602==
Content-Type: multipart/alternative;boundary="----=_20200725153520000000_83376"

------=_20200725153520000000_83376
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AI want to apologize for any implication that you, Mr. Darbyshire-Bryant,=
 were a "bellhead". AFAIK, you were quoting a staement from the designers o=
f diffserv4, who apparently still believe in bandwidth division as a metric=
.=0A =0ABut I understand it might be painful to hear my critique of the dif=
fserv design process.=0A =0AJust be aware that it's my problem, not yours. =
I don't mean to offend you. I do, however, feel like the folks who did "des=
ign" diffserv (and continue to promote it) completely miss the whole point =
of why the Internet is architected the way it is. And since they haven't ma=
naged to respond to a clue-by-4 yet, I'm tired of just pointing out that th=
e idea doesn't actually achieve any benefits, because no one (literally no =
one) has evern done a consistent assignment of end-to-end meaning to the va=
rious diffserv labels after decades of failed testing.=0A =0ASince this is =
a group discussion, and not just a response to you, my comment was aimed at=
 the general group (which is not dedicated to bellhead thinking, thank good=
ness).=0A =0AAnd to be clear, AQM (cake, being an example) is not about ban=
dwidth allocation. It does focus on latency/queueing-delay, for the most pa=
rt.=0A =0AHence my concern that diffserv's fundamental misunderstanding of =
the responsibility of router queue management might contaminate a very, ver=
y important project.=0A =0A =0AOn Saturday, July 25, 2020 1:54pm, "Kevin Da=
rbyshire-Bryant" <kevin@darbyshire-bryant.me.uk> said:=0A=0A=0A=0A> I didn=
=E2=80=99t sign up for this abuse. Bellhead eh? Well f**k off!=0A> =0A> I=
=E2=80=99ve had enough - bye.=0A> =0A> > On 25 Jul 2020, at 18:48, David P.=
 Reed <dpreed@deepplum.com> wrote:=0A> >=0A> > This idea (dividing the link=
 rate capacity, since "bandwidth" is an incorrect=0A> term not to be promul=
gated), is absurd, but typical of "bellhead" thinking.=0A> >=0A> > Per pack=
et latency is the key control variable, even for TCP. That's because=0A> ca=
pacity/rate is not controllable by routers, but by routing in a general Int=
ernet=0A> situation.=0A> >=0A> > Latency is controlled by queuing delay in =
a packet network, not bitrate. And=0A> in mixed traffic, which after all is=
 why traffic is classified in the first place,=0A> by its characteristics a=
nd response to increased latency end-to-end, is the core=0A> "control" for =
the internetwork as a whole.=0A> >=0A> > So, by promoting thinking about "b=
andwidth" a whole sequence of=0A> misformulations of network management is =
embedded into the thinking of those=0A> designing queue management algorith=
ms.=0A> >=0A> > And make no mistake, queue management is the ONLY knob othe=
r than sending=0A> different packets on different routes that one has for r=
outers.=0A> >=0A> > I don't know who proposed this fractional division, but=
 it is clearly a=0A> bellhead-influenced thinker who thinks all protocols a=
re CBR flows like in the old=0A> phone system.=0A> >=0A> > But almost no fl=
ows in the internet are CBR flows! File transfers are not,=0A> streaming TV=
 is not, web ttraffic is not, game traffic is not. Only=0A> non-statistical=
ly multiplexed real-time telephony and *some* video conferencing is=0A> CBR=
.=0A> >=0A> > Yet this bizarre idea of dividing "bandwidth" among all categ=
ories of flows=0A> pops up. Probably from employees of phone companies or p=
hone equipment suppliers.=0A> Or folks who went to Uni and were trained in =
"communications" by former phone=0A> engineers.=0A> >=0A> > Latency, latenc=
y, latency. Queue delay, queue delay, queue delay. Not link=0A> speed! Chan=
ge your brains.=0A> >=0A> > It's hard fo fight this bellhead crowd (or the =
bellheadedness in your own=0A> thinking) but think about packets and queues=
 instead.=0A> >=0A> > My good friend Len Kleinrock didn't invent "Bandwidth=
 Theory"! He invented=0A> Queueing Theory. For a reason.=0A> >=0A> > On Sat=
urday, July 25, 2020 6:12am, "Kevin Darbyshire-Bryant"=0A> <kevin@darbyshir=
e-bryant.me.uk> said:=0A> >=0A> > > _______________________________________=
________=0A> > > Cake mailing list=0A> > > Cake@lists.bufferbloat.net=0A> >=
 > https://lists.bufferbloat.net/listinfo/cake=0A> > >=0A> > >=0A> > > > On=
 24 Jul 2020, at 18:42, Kevin Darbyshire-Bryant=0A> > > <kevin@darbyshire-b=
ryant.me.uk> wrote:=0A> > > >=0A> > > >=0A> > > > The move from diffserv4 t=
o diffserv5 WAS about de-prioritization.=0A> > >=0A> > > It was also about =
minimum bandwidth allocations:=0A> > >=0A> > > LE: 1/64th=0A> > > BK: 1/16t=
h=0A> > > BE: 1/1=0A> > > VI: 1/2=0A> > > VO: 1/4=0A> > >=0A> > > So worst =
case, best effort should get 11/64ths in the extreme case of=0A> all other=
=0A> > > tins in use.=0A> > >=0A> > > Cheers,=0A> > >=0A> > > Kevin D-B=0A>=
 > >=0A> > > gpg: 012C ACB2 28C6 C53E 9775 9123 B3A2 389B 9DE2 334A=0A> > >=
=0A> > >=0A> =0A> =0A> Cheers,=0A> =0A> Kevin D-B=0A> =0A> gpg: 012C ACB2 2=
8C6 C53E 9775 9123 B3A2 389B 9DE2 334A=0A> =0A> 
------=_20200725153520000000_83376
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">I want to apologize fo=
r any implication that you, Mr. Darbyshire-Bryant, were a "bellhead". AFAIK=
, you were quoting a staement from the designers of diffserv4, who apparent=
ly still believe in bandwidth division as a metric.</p>=0A<p style=3D"margi=
n:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-wor=
d;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-si=
ze: 10pt; overflow-wrap: break-word;">But I understand it might be painful =
to hear my critique of the diffserv design process.</p>=0A<p style=3D"margi=
n:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-wor=
d;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-si=
ze: 10pt; overflow-wrap: break-word;">Just be aware that it's my problem, n=
ot yours. I don't mean to offend you. I do, however, feel like the folks wh=
o did "design" diffserv (and continue to promote it) completely miss the wh=
ole point of why the Internet is architected the way it is. And since they =
haven't managed to respond to a clue-by-4 yet, I'm tired of just pointing o=
ut that the idea doesn't actually achieve any benefits, because no one (lit=
erally no one) has evern done a consistent assignment of end-to-end meaning=
 to the various diffserv labels after decades of failed testing.</p>=0A<p s=
tyle=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wr=
ap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: a=
rial; font-size: 10pt; overflow-wrap: break-word;">Since this is a group di=
scussion, and not just a response to you, my comment was aimed at the gener=
al group (which is not dedicated to bellhead thinking, thank goodness).</p>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; over=
flow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-fa=
mily: arial; font-size: 10pt; overflow-wrap: break-word;">And to be clear, =
AQM (cake, being an example) is not about bandwidth allocation. It does foc=
us on latency/queueing-delay, for the most part.</p>=0A<p style=3D"margin:0=
;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;"=
>&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size:=
 10pt; overflow-wrap: break-word;">Hence my concern that diffserv's fundame=
ntal misunderstanding of the responsibility of router queue management migh=
t contaminate a very, very important project.</p>=0A<p style=3D"margin:0;pa=
dding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&n=
bsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10=
pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0=
;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">On Saturd=
ay, July 25, 2020 1:54pm, "Kevin Darbyshire-Bryant" &lt;kevin@darbyshire-br=
yant.me.uk&gt; said:<br /><br /></p>=0A<div id=3D"SafeStyles1595704947">=0A=
<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflo=
w-wrap: break-word;">&gt; I didn=E2=80=99t sign up for this abuse. Bellhead=
 eh? Well f**k off!<br />&gt; <br />&gt; I=E2=80=99ve had enough - bye.<br =
/>&gt; <br />&gt; &gt; On 25 Jul 2020, at 18:48, David P. Reed &lt;dpreed@d=
eepplum.com&gt; wrote:<br />&gt; &gt;<br />&gt; &gt; This idea (dividing th=
e link rate capacity, since "bandwidth" is an incorrect<br />&gt; term not =
to be promulgated), is absurd, but typical of "bellhead" thinking.<br />&gt=
; &gt;<br />&gt; &gt; Per packet latency is the key control variable, even =
for TCP. That's because<br />&gt; capacity/rate is not controllable by rout=
ers, but by routing in a general Internet<br />&gt; situation.<br />&gt; &g=
t;<br />&gt; &gt; Latency is controlled by queuing delay in a packet networ=
k, not bitrate. And<br />&gt; in mixed traffic, which after all is why traf=
fic is classified in the first place,<br />&gt; by its characteristics and =
response to increased latency end-to-end, is the core<br />&gt; "control" f=
or the internetwork as a whole.<br />&gt; &gt;<br />&gt; &gt; So, by promot=
ing thinking about "bandwidth" a whole sequence of<br />&gt; misformulation=
s of network management is embedded into the thinking of those<br />&gt; de=
signing queue management algorithms.<br />&gt; &gt;<br />&gt; &gt; And make=
 no mistake, queue management is the ONLY knob other than sending<br />&gt;=
 different packets on different routes that one has for routers.<br />&gt; =
&gt;<br />&gt; &gt; I don't know who proposed this fractional division, but=
 it is clearly a<br />&gt; bellhead-influenced thinker who thinks all proto=
cols are CBR flows like in the old<br />&gt; phone system.<br />&gt; &gt;<b=
r />&gt; &gt; But almost no flows in the internet are CBR flows! File trans=
fers are not,<br />&gt; streaming TV is not, web ttraffic is not, game traf=
fic is not. Only<br />&gt; non-statistically multiplexed real-time telephon=
y and *some* video conferencing is<br />&gt; CBR.<br />&gt; &gt;<br />&gt; =
&gt; Yet this bizarre idea of dividing "bandwidth" among all categories of =
flows<br />&gt; pops up. Probably from employees of phone companies or phon=
e equipment suppliers.<br />&gt; Or folks who went to Uni and were trained =
in "communications" by former phone<br />&gt; engineers.<br />&gt; &gt;<br =
/>&gt; &gt; Latency, latency, latency. Queue delay, queue delay, queue dela=
y. Not link<br />&gt; speed! Change your brains.<br />&gt; &gt;<br />&gt; &=
gt; It's hard fo fight this bellhead crowd (or the bellheadedness in your o=
wn<br />&gt; thinking) but think about packets and queues instead.<br />&gt=
; &gt;<br />&gt; &gt; My good friend Len Kleinrock didn't invent "Bandwidth=
 Theory"! He invented<br />&gt; Queueing Theory. For a reason.<br />&gt; &g=
t;<br />&gt; &gt; On Saturday, July 25, 2020 6:12am, "Kevin Darbyshire-Brya=
nt"<br />&gt; &lt;kevin@darbyshire-bryant.me.uk&gt; said:<br />&gt; &gt;<br=
 />&gt; &gt; &gt; _______________________________________________<br />&gt;=
 &gt; &gt; Cake mailing list<br />&gt; &gt; &gt; Cake@lists.bufferbloat.net=
<br />&gt; &gt; &gt; https://lists.bufferbloat.net/listinfo/cake<br />&gt; =
&gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; On 24 Jul 2020, at 1=
8:42, Kevin Darbyshire-Bryant<br />&gt; &gt; &gt; &lt;kevin@darbyshire-brya=
nt.me.uk&gt; wrote:<br />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt;<br />=
&gt; &gt; &gt; &gt; The move from diffserv4 to diffserv5 WAS about de-prior=
itization.<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; It was also about minimu=
m bandwidth allocations:<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; LE: 1/64th=
<br />&gt; &gt; &gt; BK: 1/16th<br />&gt; &gt; &gt; BE: 1/1<br />&gt; &gt; =
&gt; VI: 1/2<br />&gt; &gt; &gt; VO: 1/4<br />&gt; &gt; &gt;<br />&gt; &gt;=
 &gt; So worst case, best effort should get 11/64ths in the extreme case of=
<br />&gt; all other<br />&gt; &gt; &gt; tins in use.<br />&gt; &gt; &gt;<b=
r />&gt; &gt; &gt; Cheers,<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; Kevin D-=
B<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; gpg: 012C ACB2 28C6 C53E 9775 912=
3 B3A2 389B 9DE2 334A<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; <br=
 />&gt; <br />&gt; Cheers,<br />&gt; <br />&gt; Kevin D-B<br />&gt; <br />&=
gt; gpg: 012C ACB2 28C6 C53E 9775 9123 B3A2 389B 9DE2 334A<br />&gt; <br />=
&gt; </p>=0A</div></font>
------=_20200725153520000000_83376--


--===============2909486723216799602==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2909486723216799602==--


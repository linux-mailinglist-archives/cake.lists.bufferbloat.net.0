Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6091B8749
	for <lists+cake@lfdr.de>; Sat, 25 Apr 2020 17:14:13 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 91D4D3CB42;
	Sat, 25 Apr 2020 11:14:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587827651;
	bh=/4nZS4tuwAPtWbbILt2z/Pqx7sMbFt+6SyxHNbR2vmU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U4Epbw3mgnDkjcPBICexC6HHZM4Jmh39qtfPYGMAbKVFD5DMSZ4TY+MQd+JMPtBUS
	 3Sz4RJ/4iD5XFIdVNWWuY1DAHMNogGTgTezVdmJXM4OHFAIaJHDS7CUEslj0Sol2/f
	 sKGnXgAQP3VTUjU3Omfu/17tUvK5K+ETj9ChkryxBnRX+7aehC0xSg4SIAv0zQZ43s
	 uql3flAZpwdXcfkktH+ujTgJ30tfSj/oAvrh3ctx3Q10j4NxuzdsL2R24UNRkAHBgW
	 l8WbtzSVDiOu+j0TEc3hSs+0NOs7SnMyL7JdD4Ye8yw7xJpP21ssvd11+Z7xYGgBQK
	 zo7qiA37FT3NQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp109.iad3a.emailsrvr.com (smtp109.iad3a.emailsrvr.com
 [173.203.187.109])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 9D85D3B29E
 for <cake@lists.bufferbloat.net>; Sat, 25 Apr 2020 11:14:09 -0400 (EDT)
Received: from app67.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp6.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 4792E3B0D;
 Sat, 25 Apr 2020 11:14:09 -0400 (EDT)
X-Sender-Id: dpreed@deepplum.com
Received: from app67.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140]) by 0.0.0.0:25 (trex/5.7.12);
 Sat, 25 Apr 2020 11:14:09 -0400
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app67.wa-webapps.iad3a (Postfix) with ESMTP id 2FE5E60198;
 Sat, 25 Apr 2020 11:14:06 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Sat, 25 Apr 2020 11:14:06 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Sat, 25 Apr 2020 11:14:06 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Kevin Darbyshire-Bryant" <kevin@darbyshire-bryant.me.uk>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <62228545-5DE2-4600-A9BB-52D891FF5AD4@darbyshire-bryant.me.uk>
References: <62228545-5DE2-4600-A9BB-52D891FF5AD4@darbyshire-bryant.me.uk>
Message-ID: <1587827646.192420002@apps.rackspace.com>
X-Mailer: webmail/17.3.7-RC
X-Classification-ID: 1f650f98-ce36-4009-a5fe-4a1ea3cfac85-1-1
Subject: Re: [Cake] Cake tin behaviour - discuss....
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
Content-Type: multipart/mixed; boundary="===============5544014456656249014=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5544014456656249014==
Content-Type: multipart/alternative;boundary="----=_20200425111406000000_28377"

------=_20200425111406000000_28377
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AI'll bite.=0A =0AAssuming a lot of things (you seem to be a microsoft us=
er, One Drive, so your OS's network stack isn't necessarily very good at al=
l).=0A =0A35/35 split.=0A =0AWhy?=0A =0ATHere are no "bursts" in the fundam=
ental flows (disk transfer rates are far higher than 80 Mb/sec., so the onl=
y burstiness would come from OS schedulers on either end).=0A =0AThere shou=
ld be next to zero queueing in the bottleneck, and without queue depth, bes=
t efforts and bulk are happy to sync to that share, and stable once sawtoot=
hing around an average of 35.=0A =0AWhat's more important is what studying =
this teaches us:=0A =0A1. diffserv only makes a difference when queues are =
allowed to build in switches/routers. But the whole goal of cake is to make=
 the queues zero length.=0A =0A2. TCP's optimal state is to adjust rate to =
insure that there is no queueing delay *inside* the network. (Well, Kleinro=
ck says it should be just under 1 packet's worth of delay at the bottleneck=
 router, and a small fraction of 1 packet on each router that is not bottle=
necked.=0A =0A3. in terms of "end to end" control, diffserv is about the wo=
rst possible mechanism for creating "differentiated service". It is based o=
n a very old (pre-Jacobson AIMD) idea about inter-networking sharing of cap=
acity. Because Van finally demonstrated (unfortunately it didn't penetrate =
the transport layer thick skulls who invented diffserv) that when *sharing*=
 a path's capacity, the work has to be done at the *endpoints* - simply adj=
usting the window size on the receive end can do it - to slow the sending r=
ate to the point where the network buffering drops to a mean of < 1 packet =
at the bottleneck.=0A =0A4. diffserv is an example of attempting to "put a =
function in the network" that cannot be provided fully (or much at all) by =
the network equipment. The function (differentiating service quality) requi=
res attention at the TCP level, not the IP layer, with the receive end and =
the transmit end cooperating. As one of the creators of The End-to-end argu=
ment, this is why I continue to be frustrated at the whole "diffserv" effor=
t, which has wasted decades of sporadic research projects, all failing. My =
co-author, Dave Clark, has an equally strong critique of diffserv - which i=
s that there is no actual quantitative and *universal* definition of all it=
s "code points" across all AS's in the network. And there never will be bec=
ause of commercial considerations - even if there were *only* two code poin=
ts for performance (high and low), there is no way to provide pricing incen=
tives for routers to follow those definitions in ANY algorithm they use.=0A=
 =0A5. There is paradoxically intense interest in *router vendors* and netw=
ork operators to have any "feature" they can seel that claims to improve ga=
me performance or create "very low latency" priceable service. You can see =
this in the current "5G" pitches about being able to robotically do telesur=
gery with sub millisecond latency (faster than the speed of light, note, bu=
t the marketers don't care about truth), merely because they have "5G magic=
". To have a differentiation for your company's Brand, all you have to say =
is "I support diffserv", and the rubes will buy it. It doesn't work, but yo=
u can blame it on the fact that the problem is the other networks on the pa=
th, not your fancy routers.=0A =0A6. If you have a dozen independent flows =
through a particular router, most likely those flows will be between pairs =
that do not, and pragmatically cannot, know anything about the other flows =
sharing the bottleneck. Yet to achieve differentiation among flows, somehow=
 each flow must adjust its *own* rate to share *unequally* with the other f=
lows.=0AThere is 0.000 information bits/second about the differentiated ser=
vice requirements shared between the distinct flows.=0A =0A7. Every time I =
or others have pointed out that diffserv cannot work, we get met with nasty=
, very nasty personal attacks. I even wrote a short paper about it, which w=
as killed by the referees (apparently diffserv fanboys). So we generally ha=
ve just waited for the idea to die.=0ABut it just won't die. It has never w=
orked. But that just makes people want to imagine it will work if they only=
 hold their breath real deep and wish.=0A =0AOn Saturday, April 25, 2020 7:=
07am, "Kevin Darbyshire-Bryant" <kevin@darbyshire-bryant.me.uk> said:=0A=0A=
=0A=0A> _______________________________________________=0A> Cake mailing li=
st=0A> Cake@lists.bufferbloat.net=0A> https://lists.bufferbloat.net/listinf=
o/cake=0A> I=E2=80=99m confused as to what the =E2=80=98correct' behaviour =
should be under the=0A> following (real life) scenario:=0A> =0A> Downstream=
 VDSL wan link 79.5Mbit/s cake shaped to 77Mbit/s - diffserv4, so Bulk=0A> =
4.8Mbit, Best effort 77Mbit, Video 38.5, Voice 19.=0A> =0A> Download from =
=E2=80=98onedrive=E2=80=99 from 1 box, using 5 flows, classified as=0A> Bul=
k. Little other traffic going on, sits there at circa 70Mbit, no problem.=
=0A> =0A> If I started another download on another box, say 5 flows, classi=
fied as Best=0A> Effort, what rates would you expect the Bulk & Best effort=
 tins to flow at?=0A> =0A> Cheers,=0A> =0A> Kevin D-B=0A> =0A> gpg: 012C AC=
B2 28C6 C53E 9775 9123 B3A2 389B 9DE2 334A=0A> =0A> 
------=_20200425111406000000_28377
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"3"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 12pt; overflow-wrap: break-word;">I'll bite.</p>=0A<p st=
yle=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wra=
p: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: ar=
ial; font-size: 12pt; overflow-wrap: break-word;">Assuming a lot of things =
(you seem to be a microsoft user, One Drive, so your OS's network stack isn=
't necessarily very good at all).</p>=0A<p style=3D"margin:0;padding:0;font=
-family: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<=
p style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow=
-wrap: break-word;">35/35 split.</p>=0A<p style=3D"margin:0;padding:0;font-=
family: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p=
 style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-=
wrap: break-word;">Why?</p>=0A<p style=3D"margin:0;padding:0;font-family: a=
rial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D=
"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: bre=
ak-word;">THere are no "bursts" in the fundamental flows (disk transfer rat=
es are far higher than 80 Mb/sec., so the only burstiness would come from O=
S schedulers on either end).</p>=0A<p style=3D"margin:0;padding:0;font-fami=
ly: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p sty=
le=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap=
: break-word;">There should be next to zero queueing in the bottleneck, and=
 without queue depth, best efforts and bulk are happy to sync to that share=
, and stable once sawtoothing around an average of 35.</p>=0A<p style=3D"ma=
rgin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: break-=
word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font=
-size: 12pt; overflow-wrap: break-word;">What's more important is what stud=
ying this teaches us:</p>=0A<p style=3D"margin:0;padding:0;font-family: ari=
al; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"m=
argin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: break=
-word;">1. diffserv only makes a difference when queues are allowed to buil=
d in switches/routers. But the whole goal of cake is to make the queues zer=
o length.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-siz=
e: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padd=
ing:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">2. T=
CP's optimal state is to adjust rate to insure that there is no queueing de=
lay *inside* the network. (Well, Kleinrock says it should be just under 1 p=
acket's worth of delay at the bottleneck router, and a small fraction of 1 =
packet on each router that is not bottlenecked.</p>=0A<p style=3D"margin:0;=
padding:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">=
&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: =
12pt; overflow-wrap: break-word;">3. in terms of "end to end" control, diff=
serv is about the worst possible mechanism for creating "differentiated ser=
vice". It is based on a very old (pre-Jacobson AIMD) idea about inter-netwo=
rking sharing of capacity. Because Van finally demonstrated (unfortunately =
it didn't penetrate the transport layer thick skulls who invented diffserv)=
 that when *sharing* a path's capacity, the work has to be done at the *end=
points* - simply adjusting the window size on the receive end can do it - t=
o slow the sending rate to the point where the network buffering drops to a=
 mean of &lt; 1 packet at the bottleneck.</p>=0A<p style=3D"margin:0;paddin=
g:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;=
</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; =
overflow-wrap: break-word;">4. diffserv is an example of attempting to "put=
 a function in the network" that cannot be provided fully (or much at all) =
by the network equipment. The function (differentiating service quality) re=
quires attention at the TCP level, not the IP layer, with the receive end a=
nd the transmit end cooperating. As one of the creators of The End-to-end a=
rgument, this is why I continue to be frustrated at the whole "diffserv" ef=
fort, which has wasted decades of sporadic research projects, all failing. =
My co-author, Dave Clark, has an equally strong critique of diffserv - whic=
h is that there is no actual quantitative and *universal* definition of all=
 its "code points" across all AS's in the network. And there never will be =
because of commercial considerations - even if there were *only* two code p=
oints for performance (high and low), there is no way to provide pricing in=
centives for routers to follow those definitions in ANY algorithm they use.=
</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; =
overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;fon=
t-family: arial; font-size: 12pt; overflow-wrap: break-word;">5. There is p=
aradoxically intense interest in *router vendors* and network operators to =
have any "feature" they can seel that claims to improve game performance or=
 create "very low latency" priceable service. You can see this in the curre=
nt "5G" pitches about being able to robotically do telesurgery with sub mil=
lisecond latency (faster than the speed of light, note, but the marketers d=
on't care about truth), merely because they have "5G magic". To have a diff=
erentiation for your company's Brand, all you have to say is "I support dif=
fserv", and the rubes will buy it. It doesn't work, but you can blame it on=
 the fact that the problem is the other networks on the path, not your fanc=
y routers.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-si=
ze: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;pad=
ding:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">6. =
If you have a dozen independent flows through a particular router, most lik=
ely those flows will be between pairs that do not, and pragmatically cannot=
, know anything about the other flows sharing the bottleneck. Yet to achiev=
e differentiation among flows, somehow each flow must adjust its *own* rate=
 to share *unequally* with the other flows.</p>=0A<p style=3D"margin:0;padd=
ing:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">Ther=
e is 0.000 information bits/second about the differentiated service require=
ments shared between the distinct flows.</p>=0A<p style=3D"margin:0;padding=
:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;<=
/p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; o=
verflow-wrap: break-word;">7. Every time I or others have pointed out that =
diffserv cannot work, we get met with nasty, very nasty personal attacks. I=
 even wrote a short paper about it, which was killed by the referees (appar=
ently diffserv fanboys). So we generally have just waited for the idea to d=
ie.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 12p=
t; overflow-wrap: break-word;">But it just won't die. It has never worked. =
But that just makes people want to imagine it will work if they only hold t=
heir breath real deep and wish.</p>=0A<p style=3D"margin:0;padding:0;font-f=
amily: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-w=
rap: break-word;">On Saturday, April 25, 2020 7:07am, "Kevin Darbyshire-Bry=
ant" &lt;kevin@darbyshire-bryant.me.uk&gt; said:<br /><br /></p>=0A<div id=
=3D"SafeStyles1587825799">=0A<p style=3D"margin:0;padding:0;font-family: ar=
ial; font-size: 12pt; overflow-wrap: break-word;">&gt; ____________________=
___________________________<br />&gt; Cake mailing list<br />&gt; Cake@list=
s.bufferbloat.net<br />&gt; https://lists.bufferbloat.net/listinfo/cake<br =
/>&gt; I=E2=80=99m confused as to what the =E2=80=98correct' behaviour shou=
ld be under the<br />&gt; following (real life) scenario:<br />&gt; <br />&=
gt; Downstream VDSL wan link 79.5Mbit/s cake shaped to 77Mbit/s - diffserv4=
, so Bulk<br />&gt; 4.8Mbit, Best effort 77Mbit, Video 38.5, Voice 19.<br /=
>&gt; <br />&gt; Download from =E2=80=98onedrive=E2=80=99 from 1 box, using=
 5 flows, classified as<br />&gt; Bulk. Little other traffic going on, sits=
 there at circa 70Mbit, no problem.<br />&gt; <br />&gt; If I started anoth=
er download on another box, say 5 flows, classified as Best<br />&gt; Effor=
t, what rates would you expect the Bulk &amp; Best effort tins to flow at?<=
br />&gt; <br />&gt; Cheers,<br />&gt; <br />&gt; Kevin D-B<br />&gt; <br /=
>&gt; gpg: 012C ACB2 28C6 C53E 9775 9123 B3A2 389B 9DE2 334A<br />&gt; <br =
/>&gt; </p>=0A</div></font>
------=_20200425111406000000_28377--


--===============5544014456656249014==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5544014456656249014==--


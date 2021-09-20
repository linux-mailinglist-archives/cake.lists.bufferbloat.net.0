Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2BC41280A
	for <lists+cake@lfdr.de>; Mon, 20 Sep 2021 23:30:43 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3EB3C3CB49;
	Mon, 20 Sep 2021 17:30:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1632173432;
	bh=uxtyV7nH1KUB+iMljoej3timVMawDF716adu8jXlLrU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IxkoovkqrQdqIokxz6o0nPMzpxuX/+KhxUR2PaJ2rQJKoBjyQTEROM05MIqsWoz0p
	 A/OwmvaGmOFBHot4hFTV46l2OfHnrq9V+724jYdUpIP+DbkMDHFrNCJ2iKdModUtHM
	 Zm644SHF/nbsWrCJHPtegVH9uf4/GJUv6LBByz9uMFW151ZS2DS5ykLkKt+T5isFlf
	 S2ZceY0A9WhMRcW9p53zeYI/fbkSUu+OdggbK3o2889LqPY/0XH/L8kUmTRLjUH8af
	 wqPKSFcXZ26cvNLyF5FgV2g+WIjiM3B04qMqq2chPJHZARUri662H3ruUlRIj/Qkde
	 qXZug/nBypJ5g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp69.iad3a.emailsrvr.com (smtp69.iad3a.emailsrvr.com
 [173.203.187.69])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 3430A3CB40;
 Mon, 20 Sep 2021 17:30:30 -0400 (EDT)
Received: from app56.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp25.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id A57222398A;
 Mon, 20 Sep 2021 17:30:29 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app56.wa-webapps.iad3a (Postfix) with ESMTP id 90CD4E1A81;
 Mon, 20 Sep 2021 17:30:29 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Mon, 20 Sep 2021 17:30:29 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Mon, 20 Sep 2021 17:30:29 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "David Lang" <david@lang.hm>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <2760o61s-408q-4613-r840-3sq96s8q1s1@ynat.uz>
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
 <2760o61s-408q-4613-r840-3sq96s8q1s1@ynat.uz>
X-Client-IP: 209.6.168.128
Message-ID: <1632173429.589822691@apps.rackspace.com>
X-Mailer: webmail/19.0.12-RC
X-Classification-ID: a50b29a7-6ccb-4351-afce-c9ac2ae9acad-1-1
Subject: Re: [Cake] [Bloat] [Cerowrt-devel] Little's Law mea culpa,
	but not invalidating my main point
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
Cc: starlink@lists.bufferbloat.net,
 =?utf-8?Q?Valdis_Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>, Bob McMahon <bob.mcmahon@broadcom.com>,
 Cake List <cake@lists.bufferbloat.net>, codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: multipart/mixed; boundary="===============3688011344381261235=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3688011344381261235==
Content-Type: multipart/alternative;boundary="----=_20210920173029000000_95626"

------=_20210920173029000000_95626
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AI use the example all the time, but not for interviewing. What's sad is =
that the answers seem to be quoting from some set of textbooks or popular e=
xplanations of the Internet that really have got it all wrong, but which ma=
ny professionals seem to believe is true.=0A =0AThe same phenomenon appears=
 in the various subfields of the design of radio communications at the phys=
ical and front end electronics level. The examples of mental models that ar=
e truly broken that are repeated by "experts" are truly incredible, and cov=
er all fields. Two or three:=0A =0A1. why do the AM commercial broadcast ba=
nd (540-1600 kHz) signals you receive in your home travel farther than VHF =
band TV signals and UHF band TV signals?  How does this explanation relate =
to the fact that we can see stars a million light-years away using receiver=
s that respond to 500 Terahertz radio (visible light antennas)?=0A =0A2. Wh=
at is the "aperture" of an antenna system? Does it depend on frequency of t=
he radiation? How does this relate to the idea of the size of an RF photon,=
 and the mass of an RF photon? How big must a cellphone be to contain the a=
ntenna needed to receive and transmit signals in the 3G phone frequencies?=
=0A =0A3. We can digitize the entire FM broadcast frequency band into a seq=
uence of 14-bit digital samples at the Nyquist sampling rate of about 40 Me=
ga-samples per second, which covers the 20 Mhz bandwidth of the FM band. Do=
es this allow a receiver to use a digital receiver to tune into any FM stat=
ion that can be received with an "analog FM radio" using the same antenna? =
Why or why not?=0A =0AI'm sure Dick Roy understands all three of these ques=
tions, and what is going on. But I'm equally sure that the designers of WiF=
i radios or broadcast radios or even the base stations of cellular data sys=
tems include few who understand.=0A =0AAnd literally no one at the FCC or C=
TIA understand how to answer these questions.  But the problem is that they=
 are *confident* that they know the answers, and that they are right.=0A =
=0AThe same is true about the packet layers and routing layers of the Inter=
net. Very few engineers, much less lay people realize that what they have b=
een told by "experts" is like how Einstein explained how radio works to a t=
eenaged kid:=0A =0A  "Imagine a cat whose tail is in New York and his head =
is in Los Angeles. If you pinch his tail in NY, he howls in Los Angeles. Ex=
cept there is no cat."=0A =0AThough others have missed it, Einstein was not=
 making a joke. The non-cat is the laws of quantum electrodynamics (or clas=
sically, the laws of Maxwell's Equations). The "cat" would be all the stori=
es people talk about how radio works - beams of energy (or puffs of energy)=
, modulated by some analog waveform, bouncing off of hard materials, going =
through less dense materials, "hugging the ground", "far field" and "near f=
ield" effects, etc.=0A =0AEinstein's point was that there is no cat - that =
is, all the metaphors and models aren't accurate or equivalent to how radio=
 actually works. But the underlying physical phenomenon supporting radio is=
 real, and scientists do understand it pretty deeply.=0A =0ASame with how p=
acket networks work. There are no "streams" that behave like water in pipes=
, the connection you have to a shared network has no "speed" in megabits pe=
r second built in to it, A "website" isn't coming from one place in the wor=
ld, and bits don't have inherent meaning.=0A =0AThere is NO CAT (not even a=
 metaphorical one that behaves like the Internet actually works).=0A =0ABut=
 in the case of the Internet, unlike radio communications, there is no deep=
 mystery that requires new discoveries to understand it, because it's been =
built by humans. We don't need metaphors like "streams of water" or "sites =
in a place". We do it a disservice by making up these metaphors, which are =
only apt in a narrow context.=0A =0AFor example, congestion in a shared net=
work is just unnecessary queuing delay caused by multiplexing the capacity =
of a particular link among different users. It can be cured by slowing down=
 all the different packet sources in some more or less fair way. The simple=
st approach is just to discard from the queue excess packets that make that=
 queue longer than can fit through the link Then there can't be any congest=
ion. However, telling the sources to slow down somehow would be an improvem=
ent, hopefully before any discards are needed.=0A =0AThere is no "back pres=
sure", because there is no "pressure" at all in a packet network. There are=
 just queues and links that empty queues of packets at a certain rate. Thin=
king about back pressure comes from thinking about sessions and pipes. But =
90% of the Internet has no sessions and no pipes. Just as there is "no cat"=
 in real radio systems.=0A =0AOn Monday, September 20, 2021 12:09am, "David=
 Lang" <david@lang.hm> said:=0A=0A=0A=0A> On Mon, 20 Sep 2021, Valdis Kl=C4=
=93tnieks wrote:=0A> =0A> > On Sun, 19 Sep 2021 18:21:56 -0700, Dave Taht s=
aid:=0A> >> what actually happens during a web page load,=0A> >=0A> > I'm p=
retty sure that nobody actually understands that anymore, in any=0A> > more=
 than handwaving levels.=0A> =0A> This is my favorite interview question, i=
t's amazing and saddning at the answers=0A> that I get, even from supposedl=
y senior security and networking people.=0A> =0A> David Lang_______________=
________________________________=0A> Bloat mailing list=0A> Bloat@lists.buf=
ferbloat.net=0A> https://lists.bufferbloat.net/listinfo/bloat=0A> 
------=_20210920173029000000_95626
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">I use the example all =
the time, but not for interviewing. What's sad is that the answers seem to =
be quoting from some set of textbooks or popular explanations of the Intern=
et that really have got it all wrong, but which many professionals seem to =
believe is true.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; f=
ont-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin=
:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word=
;">The same phenomenon appears in the various subfields of the design of ra=
dio communications at the physical and front end electronics level. The exa=
mples of mental models that are truly broken that are repeated by "experts"=
 are truly incredible, and cover all fields. Two or three:</p>=0A<p style=
=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial=
; font-size: 10pt; overflow-wrap: break-word;">1. why do the AM commercial =
broadcast band (540-1600 kHz) signals you receive in your home travel farth=
er than VHF band TV signals and UHF band TV signals?&nbsp; How does this ex=
planation relate to the fact that we can see stars a million light-years aw=
ay using receivers that respond to 500 Terahertz radio (visible light anten=
nas)?</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 1=
0pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:=
0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">2. What =
is the "aperture" of an antenna system? Does it depend on frequency of the =
radiation? How does this relate to the idea of the size of an RF photon, an=
d the mass of an RF photon? How big must a cellphone be to contain the ante=
nna needed to receive and transmit signals in the 3G phone frequencies?</p>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; over=
flow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-fa=
mily: arial; font-size: 10pt; overflow-wrap: break-word;">3. We can digitiz=
e the entire FM broadcast frequency band into a sequence of 14-bit digital =
samples at the Nyquist sampling rate of about 40 Mega-samples per second, w=
hich covers the 20 Mhz bandwidth of the FM band. Does this allow a receiver=
 to use a digital receiver to tune into any FM station that can be received=
 with an "analog FM radio" using the same antenna? Why or why not?</p>=0A<p=
 style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-=
wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">I'm sure Dick Roy unde=
rstands all three of these questions, and what is going on. But I'm equally=
 sure that the designers of WiFi radios or broadcast radios or even the bas=
e stations of cellular data systems include few who understand.</p>=0A<p st=
yle=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wra=
p: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: ar=
ial; font-size: 10pt; overflow-wrap: break-word;">And literally no one at t=
he FCC or CTIA understand how to answer these questions.&nbsp; But the prob=
lem is that they are *confident* that they know the answers, and that they =
are right.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-si=
ze: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;pad=
ding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">The=
 same is true about the packet layers and routing layers of the Internet. V=
ery few engineers, much less lay people realize that what they have been to=
ld by "experts" is like how Einstein explained how radio works to a teenage=
d kid:</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: =
10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding=
:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp; =
"Imagine a cat whose tail is in New York and his head is in Los Angeles. If=
 you pinch his tail in NY, he howls in Los Angeles. Except there is no cat.=
"</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt;=
 overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;fo=
nt-family: arial; font-size: 10pt; overflow-wrap: break-word;">Though other=
s have missed it, Einstein was not making a joke. The non-cat is the laws o=
f quantum electrodynamics (or classically, the laws of Maxwell's Equations)=
. The "cat" would be all the stories people talk about how radio works - be=
ams of energy (or puffs of energy), modulated by some analog waveform, boun=
cing off of hard materials, going through less dense materials, "hugging th=
e ground", "far field" and "near field" effects, etc.</p>=0A<p style=3D"mar=
gin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-w=
ord;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-=
size: 10pt; overflow-wrap: break-word;">Einstein's point was that there is =
no cat - that is, all the metaphors and models aren't accurate or equivalen=
t to how radio actually works. But the underlying physical phenomenon suppo=
rting radio is real, and scientists do understand it pretty deeply.</p>=0A<=
p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow=
-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family=
: arial; font-size: 10pt; overflow-wrap: break-word;">Same with how packet =
networks work. There are no "streams" that behave like water in pipes, the =
connection you have to a shared network has no "speed" in megabits per seco=
nd built in to it, A "website" isn't coming from one place in the world, an=
d bits don't have inherent meaning.</p>=0A<p style=3D"margin:0;padding:0;fo=
nt-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; over=
flow-wrap: break-word;">There is NO CAT (not even a metaphorical one that b=
ehaves like the Internet actually works).</p>=0A<p style=3D"margin:0;paddin=
g:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;=
</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;">But in the case of the Internet, unlike radio c=
ommunications, there is no deep mystery that requires new discoveries to un=
derstand it, because it's been built by humans. We don't need metaphors lik=
e "streams of water" or "sites in a place". We do it a disservice by making=
 up these metaphors, which are only apt in a narrow context.</p>=0A<p style=
=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial=
; font-size: 10pt; overflow-wrap: break-word;">For example, congestion in a=
 shared network is just unnecessary queuing delay caused by multiplexing th=
e capacity of a particular link among different users. It can be cured by s=
lowing down all the different packet sources in some more or less fair way.=
 The simplest approach is just to discard from the queue excess packets tha=
t make that queue longer than can fit through the link Then there can't be =
any congestion. However, telling the sources to slow down somehow would be =
an improvement, hopefully before any discards are needed.</p>=0A<p style=3D=
"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: bre=
ak-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; f=
ont-size: 10pt; overflow-wrap: break-word;">There is no "back pressure", be=
cause there is no "pressure" at all in a packet network. There are just que=
ues and links that empty queues of packets at a certain rate. Thinking abou=
t back pressure comes from thinking about sessions and pipes. But 90% of th=
e Internet has no sessions and no pipes. Just as there is "no cat" in real =
radio systems.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; fon=
t-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0=
;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;"=
>On Monday, September 20, 2021 12:09am, "David Lang" &lt;david@lang.hm&gt; =
said:<br /><br /></p>=0A<div id=3D"SafeStyles1632170324">=0A<p style=3D"mar=
gin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-w=
ord;">&gt; On Mon, 20 Sep 2021, Valdis Kl=C4=93tnieks wrote:<br />&gt; <br =
/>&gt; &gt; On Sun, 19 Sep 2021 18:21:56 -0700, Dave Taht said:<br />&gt; &=
gt;&gt; what actually happens during a web page load,<br />&gt; &gt;<br />&=
gt; &gt; I'm pretty sure that nobody actually understands that anymore, in =
any<br />&gt; &gt; more than handwaving levels.<br />&gt; <br />&gt; This i=
s my favorite interview question, it's amazing and saddning at the answers<=
br />&gt; that I get, even from supposedly senior security and networking p=
eople.<br />&gt; <br />&gt; David Lang_____________________________________=
__________<br />&gt; Bloat mailing list<br />&gt; Bloat@lists.bufferbloat.n=
et<br />&gt; https://lists.bufferbloat.net/listinfo/bloat<br />&gt; </p>=0A=
</div></font>
------=_20210920173029000000_95626--


--===============3688011344381261235==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3688011344381261235==--


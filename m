Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E0332412859
	for <lists+cake@lfdr.de>; Mon, 20 Sep 2021 23:44:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 862703CB41;
	Mon, 20 Sep 2021 17:44:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1632174249;
	bh=Mm39a6BHVd7441Hp6MpArk6Vgx+lGgldAsKFMjLma3U=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T4oVhZX7YNoVhqMKGY7+xo0j8GSxT75LtFgV9qwUdHG4mADH0JXKBpt5ERNAmpSaZ
	 kKuITvNrTBG37M/QjhLsIYdtQJt8fT9jnRe+TOwSHr2LAcXkAnJRoRENHE+kKkJfJ5
	 9YjtvlDzRfV9vSPJ8F6zWANyoJIMpk2kBeLypvDjhB0k1jZj1Snxp/47aoAgYla7rF
	 jkCPiA0nQeQao095VOoWAWXBkz9baARM1OZTlkqCzg/d2RsOqnJHDgCA3kVP6RL5fy
	 Ewp7t/tKmMaUzFQ/on5eIHHhcvQlPlpaXT1YEGOHnLU/PWTzAtQioYlEU40hzs2Ity
	 oEBG3RHxN3KFw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp75.iad3a.emailsrvr.com (smtp75.iad3a.emailsrvr.com
 [173.203.187.75])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 540233B2A4;
 Mon, 20 Sep 2021 17:44:08 -0400 (EDT)
Received: from app2.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp18.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id C3FE423A2D;
 Mon, 20 Sep 2021 17:44:07 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app2.wa-webapps.iad3a (Postfix) with ESMTP id AFD41A17E6;
 Mon, 20 Sep 2021 17:44:07 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Mon, 20 Sep 2021 17:44:07 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Mon, 20 Sep 2021 17:44:07 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "David P. Reed" <dpreed@deepplum.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <1632173429.589822691@apps.rackspace.com>
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
 <1632173429.589822691@apps.rackspace.com>
X-Client-IP: 209.6.168.128
Message-ID: <1632174247.7178061@apps.rackspace.com>
X-Mailer: webmail/19.0.12-RC
X-Classification-ID: 140fe02b-b848-4f4e-9ea4-3cd9682b92c1-1-1
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 =?utf-8?Q?Valdis_Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Leonard Kleinrock <lk@cs.ucla.edu>, Bob McMahon <bob.mcmahon@broadcom.com>,
 starlink@lists.bufferbloat.net, codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: multipart/mixed; boundary="===============4749668792527835540=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4749668792527835540==
Content-Type: multipart/alternative;boundary="----=_20210920174407000000_14326"

------=_20210920174407000000_14326
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AThe top posting may be confusing, but "the example" here is the example =
of the > 100 TCP destinations and dozens of DNS queries that are needed (un=
less cached) to display the front page of CNN today.=0AThat's "one website"=
 home page. If you look at the JavaScript resource loading code, and now th=
e "service worker" javascript code, the idea that it is like fetching a fil=
e using FTP is just wrong. Do NANOG members understand this? I doubt it.=0A=
 =0AOn Monday, September 20, 2021 5:30pm, "David P. Reed" <dpreed@deepplum.=
com> said:=0A=0A=0A=0AI use the example all the time, but not for interview=
ing. What's sad is that the answers seem to be quoting from some set of tex=
tbooks or popular explanations of the Internet that really have got it all =
wrong, but which many professionals seem to believe is true.=0A =0AThe same=
 phenomenon appears in the various subfields of the design of radio communi=
cations at the physical and front end electronics level. The examples of me=
ntal models that are truly broken that are repeated by "experts" are truly =
incredible, and cover all fields. Two or three:=0A =0A1. why do the AM comm=
ercial broadcast band (540-1600 kHz) signals you receive in your home trave=
l farther than VHF band TV signals and UHF band TV signals?  How does this =
explanation relate to the fact that we can see stars a million light-years =
away using receivers that respond to 500 Terahertz radio (visible light ant=
ennas)?=0A =0A2. What is the "aperture" of an antenna system? Does it depen=
d on frequency of the radiation? How does this relate to the idea of the si=
ze of an RF photon, and the mass of an RF photon? How big must a cellphone =
be to contain the antenna needed to receive and transmit signals in the 3G =
phone frequencies?=0A =0A3. We can digitize the entire FM broadcast frequen=
cy band into a sequence of 14-bit digital samples at the Nyquist sampling r=
ate of about 40 Mega-samples per second, which covers the 20 Mhz bandwidth =
of the FM band. Does this allow a receiver to use a digital receiver to tun=
e into any FM station that can be received with an "analog FM radio" using =
the same antenna? Why or why not?=0A =0AI'm sure Dick Roy understands all t=
hree of these questions, and what is going on. But I'm equally sure that th=
e designers of WiFi radios or broadcast radios or even the base stations of=
 cellular data systems include few who understand.=0A =0AAnd literally no o=
ne at the FCC or CTIA understand how to answer these questions.  But the pr=
oblem is that they are *confident* that they know the answers, and that the=
y are right.=0A =0AThe same is true about the packet layers and routing lay=
ers of the Internet. Very few engineers, much less lay people realize that =
what they have been told by "experts" is like how Einstein explained how ra=
dio works to a teenaged kid:=0A =0A  "Imagine a cat whose tail is in New Yo=
rk and his head is in Los Angeles. If you pinch his tail in NY, he howls in=
 Los Angeles. Except there is no cat."=0A =0AThough others have missed it, =
Einstein was not making a joke. The non-cat is the laws of quantum electrod=
ynamics (or classically, the laws of Maxwell's Equations). The "cat" would =
be all the stories people talk about how radio works - beams of energy (or =
puffs of energy), modulated by some analog waveform, bouncing off of hard m=
aterials, going through less dense materials, "hugging the ground", "far fi=
eld" and "near field" effects, etc.=0A =0AEinstein's point was that there i=
s no cat - that is, all the metaphors and models aren't accurate or equival=
ent to how radio actually works. But the underlying physical phenomenon sup=
porting radio is real, and scientists do understand it pretty deeply.=0A =
=0ASame with how packet networks work. There are no "streams" that behave l=
ike water in pipes, the connection you have to a shared network has no "spe=
ed" in megabits per second built in to it, A "website" isn't coming from on=
e place in the world, and bits don't have inherent meaning.=0A =0AThere is =
NO CAT (not even a metaphorical one that behaves like the Internet actually=
 works).=0A =0ABut in the case of the Internet, unlike radio communications=
, there is no deep mystery that requires new discoveries to understand it, =
because it's been built by humans. We don't need metaphors like "streams of=
 water" or "sites in a place". We do it a disservice by making up these met=
aphors, which are only apt in a narrow context.=0A =0AFor example, congesti=
on in a shared network is just unnecessary queuing delay caused by multiple=
xing the capacity of a particular link among different users. It can be cur=
ed by slowing down all the different packet sources in some more or less fa=
ir way. The simplest approach is just to discard from the queue excess pack=
ets that make that queue longer than can fit through the link Then there ca=
n't be any congestion. However, telling the sources to slow down somehow wo=
uld be an improvement, hopefully before any discards are needed.=0A =0ATher=
e is no "back pressure", because there is no "pressure" at all in a packet =
network. There are just queues and links that empty queues of packets at a =
certain rate. Thinking about back pressure comes from thinking about sessio=
ns and pipes. But 90% of the Internet has no sessions and no pipes. Just as=
 there is "no cat" in real radio systems.=0A =0AOn Monday, September 20, 20=
21 12:09am, "David Lang" <david@lang.hm> said:=0A=0A=0A=0A> On Mon, 20 Sep =
2021, Valdis Kl=C4=93tnieks wrote:=0A> =0A> > On Sun, 19 Sep 2021 18:21:56 =
-0700, Dave Taht said:=0A> >> what actually happens during a web page load,=
=0A> >=0A> > I'm pretty sure that nobody actually understands that anymore,=
 in any=0A> > more than handwaving levels.=0A> =0A> This is my favorite int=
erview question, it's amazing and saddning at the answers=0A> that I get, e=
ven from supposedly senior security and networking people.=0A> =0A> David L=
ang_______________________________________________=0A> Bloat mailing list=
=0A> Bloat@lists.bufferbloat.net=0A> https://lists.bufferbloat.net/listinfo=
/bloat=0A>
------=_20210920174407000000_14326
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">The top posting may be=
 confusing, but "the example" here is the example of the &gt; 100 TCP desti=
nations and dozens of DNS queries that are needed (unless cached) to displa=
y the front page of CNN today.</p>=0A<p style=3D"margin:0;padding:0;font-fa=
mily: arial; font-size: 10pt; overflow-wrap: break-word;">That's "one websi=
te" home page. If you look at the JavaScript resource loading code, and now=
 the "service worker" javascript code, the idea that it is like fetching a =
file using FTP is just wrong. Do NANOG members understand this? I doubt it.=
</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;fon=
t-family: arial; font-size: 10pt; overflow-wrap: break-word;">On Monday, Se=
ptember 20, 2021 5:30pm, "David P. Reed" &lt;dpreed@deepplum.com&gt; said:<=
br /><br /></p>=0A<div id=3D"SafeStyles1632173948">=0A<p style=3D"margin:0;=
padding:0;margin: 0; padding: 0; font-family: arial; font-size: 10pt; overf=
low-wrap: break-word;">I use the example all the time, but not for intervie=
wing. What's sad is that the answers seem to be quoting from some set of te=
xtbooks or popular explanations of the Internet that really have got it all=
 wrong, but which many professionals seem to believe is true.</p>=0A<p styl=
e=3D"margin:0;padding:0;margin: 0; padding: 0; font-family: arial; font-siz=
e: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padd=
ing:0;margin: 0; padding: 0; font-family: arial; font-size: 10pt; overflow-=
wrap: break-word;">The same phenomenon appears in the various subfields of =
the design of radio communications at the physical and front end electronic=
s level. The examples of mental models that are truly broken that are repea=
ted by "experts" are truly incredible, and cover all fields. Two or three:<=
/p>=0A<p style=3D"margin:0;padding:0;margin: 0; padding: 0; font-family: ar=
ial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"=
margin:0;padding:0;margin: 0; padding: 0; font-family: arial; font-size: 10=
pt; overflow-wrap: break-word;">1. why do the AM commercial broadcast band =
(540-1600 kHz) signals you receive in your home travel farther than VHF ban=
d TV signals and UHF band TV signals?&nbsp; How does this explanation relat=
e to the fact that we can see stars a million light-years away using receiv=
ers that respond to 500 Terahertz radio (visible light antennas)?</p>=0A<p =
style=3D"margin:0;padding:0;margin: 0; padding: 0; font-family: arial; font=
-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;=
padding:0;margin: 0; padding: 0; font-family: arial; font-size: 10pt; overf=
low-wrap: break-word;">2. What is the "aperture" of an antenna system? Does=
 it depend on frequency of the radiation? How does this relate to the idea =
of the size of an RF photon, and the mass of an RF photon? How big must a c=
ellphone be to contain the antenna needed to receive and transmit signals i=
n the 3G phone frequencies?</p>=0A<p style=3D"margin:0;padding:0;margin: 0;=
 padding: 0; font-family: arial; font-size: 10pt; overflow-wrap: break-word=
;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0; padding: 0; font-=
family: arial; font-size: 10pt; overflow-wrap: break-word;">3. We can digit=
ize the entire FM broadcast frequency band into a sequence of 14-bit digita=
l samples at the Nyquist sampling rate of about 40 Mega-samples per second,=
 which covers the 20 Mhz bandwidth of the FM band. Does this allow a receiv=
er to use a digital receiver to tune into any FM station that can be receiv=
ed with an "analog FM radio" using the same antenna? Why or why not?</p>=0A=
<p style=3D"margin:0;padding:0;margin: 0; padding: 0; font-family: arial; f=
ont-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin=
:0;padding:0;margin: 0; padding: 0; font-family: arial; font-size: 10pt; ov=
erflow-wrap: break-word;">I'm sure Dick Roy understands all three of these =
questions, and what is going on. But I'm equally sure that the designers of=
 WiFi radios or broadcast radios or even the base stations of cellular data=
 systems include few who understand.</p>=0A<p style=3D"margin:0;padding:0;m=
argin: 0; padding: 0; font-family: arial; font-size: 10pt; overflow-wrap: b=
reak-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0; padding:=
 0; font-family: arial; font-size: 10pt; overflow-wrap: break-word;">And li=
terally no one at the FCC or CTIA understand how to answer these questions.=
&nbsp; But the problem is that they are *confident* that they know the answ=
ers, and that they are right.</p>=0A<p style=3D"margin:0;padding:0;margin: =
0; padding: 0; font-family: arial; font-size: 10pt; overflow-wrap: break-wo=
rd;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0; padding: 0; fon=
t-family: arial; font-size: 10pt; overflow-wrap: break-word;">The same is t=
rue about the packet layers and routing layers of the Internet. Very few en=
gineers, much less lay people realize that what they have been told by "exp=
erts" is like how Einstein explained how radio works to a teenaged kid:</p>=
=0A<p style=3D"margin:0;padding:0;margin: 0; padding: 0; font-family: arial=
; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"mar=
gin:0;padding:0;margin: 0; padding: 0; font-family: arial; font-size: 10pt;=
 overflow-wrap: break-word;">&nbsp; "Imagine a cat whose tail is in New Yor=
k and his head is in Los Angeles. If you pinch his tail in NY, he howls in =
Los Angeles. Except there is no cat."</p>=0A<p style=3D"margin:0;padding:0;=
margin: 0; padding: 0; font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0; padding=
: 0; font-family: arial; font-size: 10pt; overflow-wrap: break-word;">Thoug=
h others have missed it, Einstein was not making a joke. The non-cat is the=
 laws of quantum electrodynamics (or classically, the laws of Maxwell's Equ=
ations). The "cat" would be all the stories people talk about how radio wor=
ks - beams of energy (or puffs of energy), modulated by some analog wavefor=
m, bouncing off of hard materials, going through less dense materials, "hug=
ging the ground", "far field" and "near field" effects, etc.</p>=0A<p style=
=3D"margin:0;padding:0;margin: 0; padding: 0; font-family: arial; font-size=
: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;paddi=
ng:0;margin: 0; padding: 0; font-family: arial; font-size: 10pt; overflow-w=
rap: break-word;">Einstein's point was that there is no cat - that is, all =
the metaphors and models aren't accurate or equivalent to how radio actuall=
y works. But the underlying physical phenomenon supporting radio is real, a=
nd scientists do understand it pretty deeply.</p>=0A<p style=3D"margin:0;pa=
dding:0;margin: 0; padding: 0; font-family: arial; font-size: 10pt; overflo=
w-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0;=
 padding: 0; font-family: arial; font-size: 10pt; overflow-wrap: break-word=
;">Same with how packet networks work. There are no "streams" that behave l=
ike water in pipes, the connection you have to a shared network has no "spe=
ed" in megabits per second built in to it, A "website" isn't coming from on=
e place in the world, and bits don't have inherent meaning.</p>=0A<p style=
=3D"margin:0;padding:0;margin: 0; padding: 0; font-family: arial; font-size=
: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;paddi=
ng:0;margin: 0; padding: 0; font-family: arial; font-size: 10pt; overflow-w=
rap: break-word;">There is NO CAT (not even a metaphorical one that behaves=
 like the Internet actually works).</p>=0A<p style=3D"margin:0;padding:0;ma=
rgin: 0; padding: 0; font-family: arial; font-size: 10pt; overflow-wrap: br=
eak-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0; padding: =
0; font-family: arial; font-size: 10pt; overflow-wrap: break-word;">But in =
the case of the Internet, unlike radio communications, there is no deep mys=
tery that requires new discoveries to understand it, because it's been buil=
t by humans. We don't need metaphors like "streams of water" or "sites in a=
 place". We do it a disservice by making up these metaphors, which are only=
 apt in a narrow context.</p>=0A<p style=3D"margin:0;padding:0;margin: 0; p=
adding: 0; font-family: arial; font-size: 10pt; overflow-wrap: break-word;"=
>&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0; padding: 0; font-fa=
mily: arial; font-size: 10pt; overflow-wrap: break-word;">For example, cong=
estion in a shared network is just unnecessary queuing delay caused by mult=
iplexing the capacity of a particular link among different users. It can be=
 cured by slowing down all the different packet sources in some more or les=
s fair way. The simplest approach is just to discard from the queue excess =
packets that make that queue longer than can fit through the link Then ther=
e can't be any congestion. However, telling the sources to slow down someho=
w would be an improvement, hopefully before any discards are needed.</p>=0A=
<p style=3D"margin:0;padding:0;margin: 0; padding: 0; font-family: arial; f=
ont-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin=
:0;padding:0;margin: 0; padding: 0; font-family: arial; font-size: 10pt; ov=
erflow-wrap: break-word;">There is no "back pressure", because there is no =
"pressure" at all in a packet network. There are just queues and links that=
 empty queues of packets at a certain rate. Thinking about back pressure co=
mes from thinking about sessions and pipes. But 90% of the Internet has no =
sessions and no pipes. Just as there is "no cat" in real radio systems.</p>=
=0A<p style=3D"margin:0;padding:0;margin: 0; padding: 0; font-family: arial=
; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"mar=
gin:0;padding:0;margin: 0; padding: 0; font-family: arial; font-size: 10pt;=
 overflow-wrap: break-word;">On Monday, September 20, 2021 12:09am, "David =
Lang" &lt;david@lang.hm&gt; said:<br /><br /></p>=0A<div id=3D"SafeStyles16=
32170324">=0A<p style=3D"margin:0;padding:0;margin: 0; padding: 0; font-fam=
ily: arial; font-size: 10pt; overflow-wrap: break-word;">&gt; On Mon, 20 Se=
p 2021, Valdis Kl=C4=93tnieks wrote:<br />&gt; <br />&gt; &gt; On Sun, 19 S=
ep 2021 18:21:56 -0700, Dave Taht said:<br />&gt; &gt;&gt; what actually ha=
ppens during a web page load,<br />&gt; &gt;<br />&gt; &gt; I'm pretty sure=
 that nobody actually understands that anymore, in any<br />&gt; &gt; more =
than handwaving levels.<br />&gt; <br />&gt; This is my favorite interview =
question, it's amazing and saddning at the answers<br />&gt; that I get, ev=
en from supposedly senior security and networking people.<br />&gt; <br />&=
gt; David Lang_______________________________________________<br />&gt; Blo=
at mailing list<br />&gt; Bloat@lists.bufferbloat.net<br />&gt; https://lis=
ts.bufferbloat.net/listinfo/bloat<br />&gt;</p>=0A</div>=0A</div></font>
------=_20210920174407000000_14326--


--===============4749668792527835540==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4749668792527835540==--


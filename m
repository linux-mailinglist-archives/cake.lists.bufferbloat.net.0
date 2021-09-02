Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8763FF269
	for <lists+cake@lfdr.de>; Thu,  2 Sep 2021 19:36:45 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CE2AB3CB47;
	Thu,  2 Sep 2021 13:36:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1630604195;
	bh=BDneqFST5BHsqHgB7QsH461xjca36hJZC5HI5e/gkqw=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cnSNLvliYU0nmbTJ4l7G723tY7gq9OHXosHMX+esk8WhhZLf/ktT+zTwsyAxhBF7+
	 mmLOAiqpO3kjr9DZabHQ/DLibn93WijS2PzsU+ZmVFYr0dCk3Q0Swwn1afNJGcw2nz
	 k9zbaxLGQ1XzZCIbLiazXjM76ptIuxPO5AD+iFaRvpUpJOnVOoAM3C3oJIPY5NxJvd
	 /IrkOxHa8qncw48wPbYhgCGZs+q8Xca8tvZBu4fmHoykCwlqDv6EOqVXE94J1+65wA
	 GrGYJngJ1vknFS955ZGsaY8XBXbAbmXdcFfAHfbj7Bj1IKdkM3HgjtYqaVcuCsDHWL
	 x97JMoPEaK6TA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp82.iad3a.emailsrvr.com (smtp82.iad3a.emailsrvr.com
 [173.203.187.82])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 802183CB38
 for <cake@lists.bufferbloat.net>; Thu,  2 Sep 2021 13:36:34 -0400 (EDT)
Received: from app7.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp35.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 89514435D;
 Thu,  2 Sep 2021 13:36:33 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app7.wa-webapps.iad3a (Postfix) with ESMTP id 74ED4600C5;
 Thu,  2 Sep 2021 13:36:33 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Thu, 2 Sep 2021 13:36:33 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Thu, 2 Sep 2021 13:36:33 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: dickroy@alum.mit.edu
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <03CA2CDA3EC5415DA229F835BE039994@SRA6>
References: <CAHb6LvqfRxKU0BW04ypRcPDpCcWymnS6qzb3gneQSbBrAbRhHQ@mail.gmail.com> 
 <202108101410.17AEAR4w075939@gndrsh.dnsmgr.net> 
 <5AF5551E2A7041168E7071FDA0F6B8EC@SRA6> 
 <CAHb6LvpAmUKgsMAoZGrbAvS01DF=yWyJj56ox+FrDM_tEc=0Ng@mail.gmail.com> 
 <03CA2CDA3EC5415DA229F835BE039994@SRA6>
X-Client-IP: 209.6.168.128
Message-ID: <1630604193.476312238@apps.rackspace.com>
X-Mailer: webmail/19.0.11-RC
X-Classification-ID: 7be18fdb-24bb-4bd5-9d11-d79055ea61af-1-1
Subject: Re: [Cake] [Starlink] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2:
	Internet Quality workshop CFP for the internet architecture board
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
Cc: 'Cake List' <cake@lists.bufferbloat.net>,
 'Make-Wifi-fast' <make-wifi-fast@lists.bufferbloat.net>,
 'Bob McMahon' <bob.mcmahon@broadcom.com>, starlink@lists.bufferbloat.net,
 'codel' <codel@lists.bufferbloat.net>,
 'cerowrt-devel' <cerowrt-devel@lists.bufferbloat.net>,
 'bloat' <bloat@lists.bufferbloat.net>,
 "'Rodney W. Grimes'" <starlink@gndrsh.dnsmgr.net>
Content-Type: multipart/mixed; boundary="===============8630350610185932239=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8630350610185932239==
Content-Type: multipart/alternative;boundary="----=_20210902133633000000_50854"

------=_20210902133633000000_50854
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AI just want to thank Dick Roy for backing up the arguments I've been mak=
ing about physical RF communications for many years, and clarifying termino=
logy here. I'm not the expert - Dick is an expert with real practical and t=
heoretical experience - but what I've found over the years is that many who=
 consider themselves "experts" say things that are actually nonsense about =
radio systems.=0A =0AIt seems to me that Starlink is based on a propagation=
 model that is quite simplistic, and probably far enough from correct that =
what seems "obvious" will turn out not to be true. That doesn't stop Musk a=
nd cronies from asserting these things as absolute truths (backed by actual=
 professors, especially professors of Economics like Coase, but also CS pro=
fessors, network protocol experts, etc. who aren't physicists or practicing=
 RF engineers).=0A =0AThe fact is that we don't really know how to build a =
scalable LEO system. Models can be useful, but a model can be a trap that c=
auses even engineers to be cocky. Or as the saying goes, a Clear View doesn=
't mean a Short Distance.=0A =0AIf there are 40 satellites serving 10,000 g=
round terminals simultaneously, exactly what is the propagation environment=
 like? I can tell you one thing: if the phased array is digitized at some s=
ample rate and some equalization and some quantization, the propagation REA=
LLY matters in serving those 10,000 ground terminals scattered randomly on =
terrain that is not optically flat and not fully absorbent.=0A =0ASo how wi=
ll Starlink scale? I think we literally don't know. And the modeling matter=
s.=0A =0ARecently a real propagation expert (Ted Rapaport and his students)=
 did a study of how well 70 GHz RF signals propagate in an urban environmen=
t - Brooklyn.  The standard model would say that coverage would be terrible=
! Why? Because supposedly 70 GHz is like visible light - line of sight is r=
equired or nothing works.=0A =0ABut in fact, Ted, whom I've known from bein=
g on the FCC Technological Advisory Committee (TAC) together when it was ac=
tually populated with engineers and scientists, not lobbyists, discovered t=
hat scattering and diffraction at 70 GHz in an urban environment significan=
tly expands coverage of a single transmitter. Remarkably so. Enough that "c=
ellular architecture" doesn't make sense in that propagation environment.=
=0A =0ASo all the professional experts are starting from the wrong place, a=
nd amateurs perhaps even more so.=0A =0AI hope Starlink views itself as a "=
research project". I'm afraid it doesn't - partly driven by Musk, but equal=
ly driven by the FCC itself, which demands that before a system is deployed=
 that the entire plan be shown to work (which would require a "model" that =
is actually unknowable because something like this has never been tried). T=
his is a problem with today's regulation of spectrum - experiments are barr=
ed, both by law, and by competitors who can claim your system will destroy =
theirs and not work.=0A =0ABut it is also a problem when "fans" start setti=
ng expectations way too high. Like claiming that Starlink will eliminate an=
y need for fiber. We don't know that at all!=0A =0A =0A =0A =0A =0A =0A =0A=
On Tuesday, August 10, 2021 2:11pm, "Dick Roy" <dickroy@alum.mit.edu> said:=
=0A=0A=0A=0A=0ATo add a bit more, as is easily seen below, the amplitudes o=
f each of the transfer functions between the three transmit and three recei=
ve antennas are extremely similar.  This is to be expected, of course, sinc=
e the =E2=80=9Caperture=E2=80=9D of each array is very small compared to th=
e distance between them.  What is much more interesting and revealing is th=
e relative phases.  Obviously this requires coherent receivers, and ultimat=
ely if you want to control the spatial distribution of power (aka SDMA (or =
MIMO in some circles) coherent transmitters. It turns out that just knowing=
 the amplitude of the transfer functions is not really all that useful for =
anything other than detecting a broken solder joint:^)))=0A =0AAlso, do not=
 forget that depending how these experiments were conducted, the estimates =
are either of the RF channel itself (aka path loss),or of the RF channel in=
 combination with the transfer functions of the transmitters and//or receiv=
ers.  What this means is the CALIBRATION is CRUCIAL!  Those who do not cali=
brate, are doomed to fail!!!!   I suspect that it is in calibration where t=
he major difference in performance between vendors=E2=80=99=E2=80=99 produc=
ts can be found :^))))=0A =0AIt=E2=80=99s complicated =E2=80=A6 =0A =0A=0A=
=0AFrom: Bob McMahon [mailto:bob.mcmahon@broadcom.com] =0ASent: Tuesday, Au=
gust 10, 2021 10:07 AM=0ATo: dickroy@alum.mit.edu=0ACc: Rodney W. Grimes; C=
ake List; Make-Wifi-fast; starlink@lists.bufferbloat.net; codel; cerowrt-de=
vel; bloat=0ASubject: Re: [Starlink] [Cake] [Make-wifi-fast] [Cerowrt-devel=
] Due Aug 2: Internet Quality workshop CFP for the internet architecture bo=
ard=0A =0A=0AThe slides show that for WiFi every transmission produces a co=
mplex frequency response, aka the h-matrix. This is valid for that one tran=
smission only.  The slides show an amplitude plot for a 3 radio device henc=
e the 9 elements per the h-matrix. It's assumed that the WiFi STA/AP is sta=
tionary such that doppler effects aren't a consideration. WiFi isn't a car =
trying to connect to a cell tower.  The plot doesn't show the phase effects=
 but they are included as the output of the channel estimate is a complex f=
requency response. Each RX produces the h-matrix ahead of the MAC. These ma=
y not be symmetric in the real world but that's ok as transmission and rece=
ption is one way only, i.e. the treating them as repcripocol and the matrix=
 as hollows symmetric isn't going to be a "test blocker" as the goal is to =
be able to use software and programmable devices to change them in near rea=
l time. The current approach used by many using butler matrices to produce =
off-diagonal effects  is woefully inadequate. And we're paying about $2.5K =
per each butler.=0A=0ABob=0A =0A=0A=0AOn Tue, Aug 10, 2021 at 9:13 AM Dick =
Roy <[ dickroy@alum.mit.edu ]( mailto:dickroy@alum.mit.edu )> wrote:=0AWell=
, I hesitate to drag this out, however Maxwell's equations and the=0A invar=
iance of the laws of physics ensure that all path loss matrices are=0A reci=
procal.  What that means is that at any for any given set of fixed=0A bound=
ary conditions (nothing moving/changing!), the propagation loss between=0A =
any two points in the domain is the same in both directions. The=0A "multip=
athing" in one direction is the same in the other because the=0A two-parame=
ter (angle1,angle2) scattering cross sections of all objects=0A (remember t=
hey are fixed here) are independent of the ordering of the=0A angles.  =0A=
=0A Very importantly, path loss is NOT the same as the link loss (aka link=
=0A budget) which involves tx power and rx noise figure (and in the case of=
=0A smart antennas, there is a link per spatial stream and how those links =
are=0A managed/controlled really matters, but let's just keep it simple for=
 this=0A discussion) and these generally are different on both ends of a li=
nk for a=0A variety of reasons. The other very important issue is that of t=
he=0A ""measurement plane", or "where tx power and rx noise figure are bein=
g=0A measured/referenced to and how well the interface at that plane is=0A =
"matched".  We generally assume that the matching is perfect, however it=0A=
 never is. All of these effects contribute to the link loss which determine=
s=0A the strength of the signal coming out of the receiver (not the receive=
=0A antenna, the receiver) for a given signal strength coming out of the=0A=
 transmitter (not the transmit antenna, the tx output port).   =0A=0A In th=
e real world, things change.  Sources and sinks move as do many of the=0A o=
bjects around them.  This creates a time-varying RF environment, and now=0A=
 the path loss matrix is a function of time and a few others things, so it=
=0A matters WHEN something is transmitted, and WHEN it is received, and the=
 two=0A WHEN's are generally separated by "the speed of light" which is a f=
t/ns=0A roughly. As important is the fact that it's no longer really a path=
 loss=0A matrix containing a single scalar because among other things, the =
time=0A varying environment induces change in the transmitted waveform on i=
ts way to=0A the receiver most commonly referred to as the Doppler effect w=
hich means=0A there is a frequency translation/shift for each (multi-)path =
of which there=0A are in general an uncountably infinite number because thi=
s is a continuous=0A world in which we live (the space quantization experim=
ent being conducted in=0A the central US aside:^)). As a consequence of the=
se physical laws, the=0A entries in the path loss matrix become complex fun=
ctions of a number of=0A variables including time. These functions are quit=
e often characterized in=0A terms of Doppler and delay-spread, terms used t=
o describe in just a few=0A parameters the amount of "distortion" a complex=
 function causes. =0A=0A Hope this helps ... probably a bit more than you r=
eally wanted to know as=0A queuing theorists, but ...=0A=0A -----Original M=
essage-----=0A From: Starlink [mailto:[ starlink-bounces@lists.bufferbloat.=
net ]( mailto:starlink-bounces@lists.bufferbloat.net )] On Behalf Of=0A Rod=
ney W. Grimes=0A Sent: Tuesday, August 10, 2021 7:10 AM=0A To: Bob McMahon=
=0A Cc: Cake List; Make-Wifi-fast; [ starlink@lists.bufferbloat.net ]( mail=
to:starlink@lists.bufferbloat.net );=0A[ codel@lists.bufferbloat.net ]( mai=
lto:codel@lists.bufferbloat.net ); cerowrt-devel; bloat=0A Subject: Re: [St=
arlink] [Cake] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2:=0A Internet Qual=
ity workshop CFP for the internet architecture board=0A=0A > The distance m=
atrix defines signal attenuations/loss between pairs.  It's=0A > straightfo=
rward to create a distance matrix that has hidden nodes because=0A > all "s=
ignal  loss" between pairs is defined.  Let's say a 120dB=0A attenuation=0A=
 > path will cause a node to be hidden as an example.=0A > =0A >      A    =
B     C    D=0A > A   -   35   120   65=0A > B         -      65   65=0A > =
C               -       65=0A > D                         -=0A > =0A > So i=
n the above, AC are hidden from each other but nobody else is. It does=0A >=
 assume symmetry between pairs but that's typically true.=0A=0A That is not=
 correct, symmetry in the RF world, especially wifi, is rare=0A due to topo=
logy issues.  A high transmitter, A,  and a low receiver, B,=0A has a good =
path A - > B, but a very weak path B -> A.   Multipathing=0A is another maj=
or issue that causes assymtry.=0A=0A > =0A > The RF device takes these dist=
ance matrices as settings and calculates the=0A > five branch tree values (=
as demonstrated in the video). There are=0A > limitations to solutions thou=
gh but I've found those not to be an issue to=0A > date. I've been able to =
produce hidden nodes quite readily. Add the phase=0A > shifters and spatial=
 stream powers can also be affected, but this isn't=0A > shown in this simp=
le example.=0A > =0A > Bob=0A > =0A > On Mon, Aug 2, 2021 at 8:12 PM David =
Lang <[ david@lang.hm ]( mailto:david@lang.hm )> wrote:=0A > =0A > > I gues=
s it depends on what you are intending to test. If you are not=0A going=0A =
> > to=0A > > tinker with any of the over-the-air settings (including the n=
umber of=0A > > packets=0A > > transmitted in one aggregate), the details o=
f what happen over the air=0A > > don't=0A > > matter much.=0A > >=0A > > B=
ut if you are going to be doing any tinkering with what is getting=0A sent,=
=0A > > and=0A > > you ignore the hidden transmitter type problems, you wil=
l create a=0A > > solution that=0A > > seems to work really well in the lab=
 and falls on it's face out in the=0A > > wild=0A > > where spectrum overlo=
ad and hidden transmitters are the norm (at least=0A in=0A > > urban=0A > >=
 areas), not rare corner cases.=0A > >=0A > > you don't need to include the=
m in every test, but you need to have a way=0A > > to=0A > > configure your=
 lab to include them before you consider any=0A > > settings/algorithm=0A >=
 > ready to try in the wild.=0A > >=0A > > David Lang=0A > >=0A > > On Mon,=
 2 Aug 2021, Bob McMahon wrote:=0A > >=0A > > > We find four nodes, a prima=
ry BSS and an adjunct one quite good for=0A lots=0A > > of=0A > > > testing=
.  The six nodes allows for a primary BSS and two adjacent=0A ones.=0A > > =
We=0A > > > want to minimize complexity to necessary and sufficient.=0A > >=
 >=0A > > > The challenge we find is having variability (e.g. montecarlos) =
that's=0A > > > reproducible and has relevant information. Basically, the d=
istance=0A > > matrices=0A > > > have h-matrices as their elements. Our chi=
ps can provide these=0A > > h-matrices.=0A > > >=0A > > > The parts for sol=
id state programmable attenuators and phase shifters=0A > > > aren't very e=
xpensive. A device that supports a five branch tree and=0A 2x2=0A > > > MIM=
O seems a very good starting point.=0A > > >=0A > > > Bob=0A > > >=0A > > >=
 On Mon, Aug 2, 2021 at 4:55 PM Ben Greear <[ greearb@candelatech.com ]( ma=
ilto:greearb@candelatech.com )>=0A > > wrote:=0A > > >=0A > > >> On 8/2/21 =
4:16 PM, David Lang wrote:=0A > > >>> If you are going to setup a test envi=
ronment for wifi, you need to=0A > > >> include the ability to make a fe ca=
ses that only happen with RF, not=0A > > with=0A > > >> wired networks and=
=0A > > >>> are commonly overlooked=0A > > >>>=0A > > >>> 1. station A can =
hear station B and C but they cannot hear each=0A other=0A > > >>> 2. stati=
on A can hear station B but station B cannot hear station A=0A 3.=0A > > >>=
 station A can hear that station B is transmitting, but not with a=0A stron=
g=0A > > >> enough signal to=0A > > >>> decode the signal (yes in theory yo=
u can work around interference,=0A but=0A > > >> in practice interference i=
s still a real thing)=0A > > >>>=0A > > >>> David Lang=0A > > >>>=0A > > >>=
=0A > > >> To add to this, I think you need lots of different station devic=
es,=0A > > >> different capabilities (/n, /ac, /ax, etc)=0A > > >> differen=
t numbers of spatial streams, and different distances from=0A the=0A > > >>=
 AP.  From download queueing perspective, changing=0A > > >> the capabiliti=
es may be sufficient while keeping all stations at same=0A > > >> distance.=
  This assumes you are not=0A > > >> actually testing the wifi rate-ctrl al=
g. itself, so different=0A throughput=0A > > >> levels for different statio=
ns would be enough.=0A > > >>=0A > > >> So, a good station emulator setup (=
and/or pile of real stations) and=0A a=0A > > few=0A > > >> RF chambers and=
=0A > > >> programmable attenuators and you can test that setup...=0A > > >=
>=0A > > >>  From upload perspective, I guess same setup would do the job.=
=0A > > >> Queuing/fairness might depend a bit more on the=0A > > >> statio=
n devices, emulated or otherwise, but I guess a clever AP could=0A > > >> e=
nforce fairness in upstream direction=0A > > >> too by implementing per-sta=
 queues.=0A > > >>=0A > > >> Thanks,=0A > > >> Ben=0A > > >>=0A > > >> --=
=0A > > >> Ben Greear <[ greearb@candelatech.com ]( mailto:greearb@candelat=
ech.com )>=0A > > >> Candela Technologies Inc  [ http://www.candelatech.com=
 ]( http://www.candelatech.com )=0A > > >>=0A > > >=0A > > >=0A > >=0A > =
=0A > -- =0A > This electronic communication and the information and any fi=
les=0A transmitted =0A > with it, or attached to it, are confidential and a=
re intended solely for =0A > the use of the individual or entity to whom it=
 is addressed and may=0A contain =0A > information that is confidential, le=
gally privileged, protected by privacy=0A=0A > laws, or otherwise restricte=
d from disclosure to anyone else. If you are =0A > not the intended recipie=
nt or the person responsible for delivering the =0A > e-mail to the intende=
d recipient, you are hereby notified that any use, =0A > copying, distribut=
ing, dissemination, forwarding, printing, or copying of =0A > this e-mail i=
s strictly prohibited. If you received this e-mail in error, =0A > please r=
eturn the e-mail to the sender, delete it from your computer, and =0A > des=
troy any printed copy of it.=0A=0A [ Charset UTF-8 unsupported, converting.=
.. ]=0A > _______________________________________________=0A > Starlink mai=
ling list=0A > [ Starlink@lists.bufferbloat.net ]( mailto:Starlink@lists.bu=
fferbloat.net )=0A > [ https://lists.bufferbloat.net/listinfo/starlink ]( h=
ttps://lists.bufferbloat.net/listinfo/starlink )=0A > =0A _________________=
______________________________=0A Starlink mailing list=0A[ Starlink@lists.=
bufferbloat.net ]( mailto:Starlink@lists.bufferbloat.net )=0A[ https://list=
s.bufferbloat.net/listinfo/starlink ]( https://lists.bufferbloat.net/listin=
fo/starlink )=0A=0AThis electronic communication and the information and an=
y files transmitted with it, or attached to it, are confidential and are in=
tended solely for the use of the individual or entity to whom it is address=
ed and may contain information that is confidential, legally privileged, pr=
otected by privacy laws, or otherwise restricted from disclosure to anyone =
else. If you are not the intended recipient or the person responsible for d=
elivering the e-mail to the intended recipient, you are hereby notified tha=
t any use, copying, distributing, dissemination, forwarding, printing, or c=
opying of this e-mail is strictly prohibited. If you received this e-mail i=
n error, please return the e-mail to the sender, delete it from your comput=
er, and destroy any printed copy of it.
------=_20210902133633000000_50854
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">I just want to thank D=
ick Roy for backing up the arguments I've been making about physical RF com=
munications for many years, and clarifying terminology here. I'm not the ex=
pert - Dick is an expert with real practical and theoretical experience - b=
ut what I've found over the years is that many who consider themselves "exp=
erts" say things that are actually nonsense about radio systems.</p>=0A<p s=
tyle=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wr=
ap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: a=
rial; font-size: 10pt; overflow-wrap: break-word;">It seems to me that Star=
link is based on a propagation model that is quite simplistic, and probably=
 far enough from correct that what seems "obvious" will turn out not to be =
true. That doesn't stop Musk and cronies from asserting these things as abs=
olute truths (backed by actual professors, especially professors of Economi=
cs like Coase, but also CS professors, network protocol experts, etc. who a=
ren't physicists or practicing RF engineers).</p>=0A<p style=3D"margin:0;pa=
dding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&n=
bsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10=
pt; overflow-wrap: break-word;">The fact is that we don't really know how t=
o build a scalable LEO system. Models can be useful, but a model can be a t=
rap that causes even engineers to be cocky. Or as the saying goes, a Clear =
View doesn't mean a Short Distance.</p>=0A<p style=3D"margin:0;padding:0;fo=
nt-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; over=
flow-wrap: break-word;">If there are 40 satellites serving 10,000 ground te=
rminals simultaneously, exactly what is the propagation environment like? I=
 can tell you one thing: if the phased array is digitized at some sample ra=
te and some equalization and some quantization, the propagation REALLY matt=
ers in serving those 10,000 ground terminals scattered randomly on terrain =
that is not optically flat and not fully absorbent.</p>=0A<p style=3D"margi=
n:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-wor=
d;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-si=
ze: 10pt; overflow-wrap: break-word;">So how will Starlink scale? I think w=
e literally don't know. And the modeling matters.</p>=0A<p style=3D"margin:=
0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;=
">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size=
: 10pt; overflow-wrap: break-word;">Recently a real propagation expert (Ted=
 Rapaport and his students) did a study of how well 70 GHz RF signals propa=
gate in an urban environment - Brooklyn.&nbsp; The standard model would say=
 that coverage would be terrible! Why? Because supposedly 70 GHz is like vi=
sible light - line of sight is required or nothing works.</p>=0A<p style=3D=
"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: bre=
ak-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; f=
ont-size: 10pt; overflow-wrap: break-word;">But in fact, Ted, whom I've kno=
wn from being on the FCC Technological Advisory Committee (TAC) together wh=
en it was actually populated with engineers and scientists, not lobbyists, =
discovered that scattering and diffraction at 70 GHz in an urban environmen=
t significantly expands coverage of a single transmitter. Remarkably so. En=
ough that "cellular architecture" doesn't make sense in that propagation en=
vironment.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-si=
ze: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;pad=
ding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">So =
all the professional experts are starting from the wrong place, and amateur=
s perhaps even more so.</p>=0A<p style=3D"margin:0;padding:0;font-family: a=
rial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D=
"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: bre=
ak-word;">I hope Starlink views itself as a "research project". I'm afraid =
it doesn't - partly driven by Musk, but equally driven by the FCC itself, w=
hich demands that before a system is deployed that the entire plan be shown=
 to work (which would require a "model" that is actually unknowable because=
 something like this has never been tried). This is a problem with today's =
regulation of spectrum - experiments are barred, both by law, and by compet=
itors who can claim your system will destroy theirs and not work.</p>=0A<p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-w=
rap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: =
arial; font-size: 10pt; overflow-wrap: break-word;">But it is also a proble=
m when "fans" start setting expectations way too high. Like claiming that S=
tarlink will eliminate any need for fiber. We don't know that at all!</p>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; over=
flow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-fa=
mily: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p s=
tyle=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wr=
ap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: a=
rial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D=
"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: bre=
ak-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; f=
ont-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin=
:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word=
;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-siz=
e: 10pt; overflow-wrap: break-word;">On Tuesday, August 10, 2021 2:11pm, "D=
ick Roy" &lt;dickroy@alum.mit.edu&gt; said:<br /><br /></p>=0A<style><!--=
=0A#SafeStyles1630602673 @font-face=0A=09 {font-family:"MS Mincho";=0A=09pa=
nose-1:2 2 6 9 4 2 5 8 3 4;}=0A  #SafeStyles1630602673 @font-face=0A=09 {fo=
nt-family:Tahoma;=0A=09panose-1:2 11 6 4 3 5 4 4 2 4;}=0A  #SafeStyles16306=
02673 @font-face=0A=09 {font-family:"\@MS Mincho";=0A=09panose-1:0 0 0 0 0 =
0 0 0 0 0;}=0A =0A   #SafeStyles1630602673 p.MsoNormal, #SafeStyles16306026=
73  li.MsoNormal, #SafeStyles1630602673  div.MsoNormal=0A=09 {margin:0in;=
=0A=09margin-bottom:.0001pt;=0A=09font-size:12.0pt;=0A=09font-family:"Times=
 New Roman";}=0A  #SafeStyles1630602673 a:link, #SafeStyles1630602673  span=
.MsoHyperlink=0A=09 {color:blue;=0A=09text-decoration:underline;}=0A  #Safe=
Styles1630602673 a:visited, #SafeStyles1630602673  span.MsoHyperlinkFollowe=
d=0A=09 {color:blue;=0A=09text-decoration:underline;}=0A  #SafeStyles163060=
2673 span.EmailStyle17=0A=09 {mso-style-type:personal-reply;=0A=09font-fami=
ly:Arial;=0A=09color:navy;}=0A  #SafeStyles1630602673 @page Section1=0A=09 =
{size:8.5in 11.0in;=0A=09margin:1.0in 1.25in 1.0in 1.25in;}=0A  #SafeStyles=
1630602673 div.Section1=0A=09 {page:Section1;}=0A--></style>=0A<div id=3D"S=
afeStyles1630602673">=0A<div class=3D"Section1">=0A<p class=3D"MsoNormal" s=
tyle=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wr=
ap: break-word;"><span style=3D"color: navy; font-family: Arial; font-size:=
 small;"><span style=3D"font-size: 10.0pt; font-family: Arial; color: navy;=
">To add a bit more, as is easily seen below, the amplitudes of each of the=
 transfer functions between the three transmit and three receive antennas a=
re extremely similar. &nbsp;This is to be expected, of course, since the =
=E2=80=9Caperture=E2=80=9D of each array is very small compared to the dist=
ance between them. &nbsp;What is much more interesting and revealing is the=
 relative phases. &nbsp;Obviously this requires coherent receivers, and ult=
imately if you want to control the spatial distribution of power (aka SDMA =
(or MIMO in some circles) coherent transmitters. It turns out that just kno=
wing the amplitude of the transfer functions is not really all that useful =
for anything other than detecting a broken solder joint:^)))</span></span><=
/p>=0A<p class=3D"MsoNormal" style=3D"margin:0;padding:0;font-family: arial=
; font-size: 10pt; overflow-wrap: break-word;"><span style=3D"color: navy; =
font-family: Arial; font-size: small;"><span style=3D"font-size: 10.0pt; fo=
nt-family: Arial; color: navy;">&nbsp;</span></span></p>=0A<p class=3D"MsoN=
ormal" style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; ove=
rflow-wrap: break-word;"><span style=3D"color: navy; font-family: Arial; fo=
nt-size: small;"><span style=3D"font-size: 10.0pt; font-family: Arial; colo=
r: navy;">Also, do not forget that depending how these experiments were con=
ducted, the estimates are either of the RF channel itself (aka path loss),o=
r of the RF channel in combination with the transfer functions of the trans=
mitters and//or receivers.&nbsp; What this means is the CALIBRATION is CRUC=
IAL!&nbsp; Those who do not calibrate, are doomed to fail!!!! &nbsp;&nbsp;I=
 suspect that it is in calibration where the major difference in performanc=
e between vendors=E2=80=99=E2=80=99 products can be found :^))))</span></sp=
an></p>=0A<p class=3D"MsoNormal" style=3D"margin:0;padding:0;font-family: a=
rial; font-size: 10pt; overflow-wrap: break-word;"><span style=3D"color: na=
vy; font-family: Arial; font-size: small;"><span style=3D"font-size: 10.0pt=
; font-family: Arial; color: navy;">&nbsp;</span></span></p>=0A<p class=3D"=
MsoNormal" style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt;=
 overflow-wrap: break-word;"><span style=3D"color: navy; font-family: Arial=
; font-size: small;"><span style=3D"font-size: 10.0pt; font-family: Arial; =
color: navy;">It=E2=80=99s complicated =E2=80=A6 </span></span></p>=0A<p cl=
ass=3D"MsoNormal" style=3D"margin:0;padding:0;font-family: arial; font-size=
: 10pt; overflow-wrap: break-word;"><span style=3D"color: navy; font-family=
: Arial; font-size: small;"><span style=3D"font-size: 10.0pt; font-family: =
Arial; color: navy;">&nbsp;</span></span></p>=0A<div>=0A<div class=3D"MsoNo=
rmal" style=3D"text-align: center;" align=3D"center"><hr align=3D"center" s=
ize=3D"3" /></div>=0A<p class=3D"MsoNormal" style=3D"margin:0;padding:0;fon=
t-family: arial; font-size: 10pt; overflow-wrap: break-word;"><strong><span=
 style=3D"font-family: Tahoma; font-size: small;"><span style=3D"font-size:=
 10.0pt; font-family: Tahoma; font-weight: bold;">From:</span></span></stro=
ng><span style=3D"font-family: Tahoma; font-size: small;"><span style=3D"fo=
nt-size: 10.0pt; font-family: Tahoma;"> Bob McMahon [mailto:bob.mcmahon@bro=
adcom.com] <br /><strong><span style=3D"font-weight: bold;">Sent:</span></s=
trong> Tuesday, August 10, 2021 10:07 AM<br /><strong><span style=3D"font-w=
eight: bold;">To:</span></strong> dickroy@alum.mit.edu<br /><strong><span s=
tyle=3D"font-weight: bold;">Cc:</span></strong> Rodney W. Grimes; Cake List=
; Make-Wifi-fast; starlink@lists.bufferbloat.net; codel; cerowrt-devel; blo=
at<br /><strong><span style=3D"font-weight: bold;">Subject:</span></strong>=
 Re: [Starlink] [Cake] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2: Internet=
 Quality workshop CFP for the internet architecture board</span></span></p>=
=0A</div>=0A<p class=3D"MsoNormal" style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;"><span style=3D"font-fa=
mily: 'Times New Roman'; font-size: medium;"><span style=3D"font-size: 12.0=
pt;">&nbsp;</span></span></p>=0A<div>=0A<p class=3D"MsoNormal" style=3D"mar=
gin:0;padding:0;margin-bottom: 12.0pt;"><span style=3D"font-family: 'Times =
New Roman'; font-size: medium;"><span style=3D"font-size: 12.0pt;">The slid=
es show that for WiFi every transmission produces a complex frequency&nbsp;=
response, aka the h-matrix. This is valid for that one transmission only.&n=
bsp; The slides show an amplitude plot for a 3 radio device hence the 9 ele=
ments per the h-matrix. It's assumed that the WiFi STA/AP is stationary suc=
h that doppler effects aren't a consideration. WiFi isn't a car trying to c=
onnect to a cell tower.&nbsp; The plot doesn't show the phase effects but t=
hey are included as the output of the channel estimate is a complex frequen=
cy response. Each RX produces the h-matrix ahead of the MAC. These may not =
be symmetric in the real world but that's ok as transmission&nbsp;and recep=
tion is one way only, i.e. the treating them as repcripocol and the matrix =
as hollows symmetric isn't going to be a "test blocker" as the goal is to b=
e able to use software and programmable devices to change them in near real=
 time. The current approach used by many using butler matrices to produce o=
ff-diagonal&nbsp;effects&nbsp; is woefully inadequate. And we're paying abo=
ut $2.5K per each butler.<br /><span id=3D"gmail-docs-internal-guid-c23f417=
0-7fff-947a-4651-888888f0a88e"><img id=3D"_x0000_i1025" src=3D"https://lh3.=
googleusercontent.com/WqWMFHFPo3ltkxkpoyvgPxgdFxmnZpVvpw0NcCTFhGiOTjolvKbP4=
NugcE-vw1Q3vk9Z7R04YA1k3kQMvyiR5RhcHOjbXbsRMfjLBY-RYML2tFxovzMpTwww5UZiu0Xg=
xzhi8fFru_g" alt=3D"" width=3D"1200" height=3D"900" /><br /></span>Bob</spa=
n></span></p>=0A</div>=0A<p class=3D"MsoNormal" style=3D"margin:0;padding:0=
;font-family: arial; font-size: 10pt; overflow-wrap: break-word;"><span sty=
le=3D"font-family: 'Times New Roman'; font-size: medium;"><span style=3D"fo=
nt-size: 12.0pt;">&nbsp;</span></span></p>=0A<div>=0A<div>=0A<p class=3D"Ms=
oNormal" style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; o=
verflow-wrap: break-word;"><span style=3D"font-family: 'Times New Roman'; f=
ont-size: medium;"><span style=3D"font-size: 12.0pt;">On Tue, Aug 10, 2021 =
at 9:13 AM Dick Roy &lt;<a href=3D"mailto:dickroy@alum.mit.edu">dickroy@alu=
m.mit.edu</a>&gt; wrote:</span></span></p>=0A</div>=0A<blockquote style=3D"=
border: none; border-left: solid #CCCCCC 1.0pt; padding: 0in 0in 0in 6.0pt;=
 margin-left: 4.8pt; margin-right: 0in;">=0A<p class=3D"MsoNormal" style=3D=
"margin:0;padding:0;margin-bottom: 12.0pt;"><span style=3D"font-family: 'Ti=
mes New Roman'; font-size: medium;"><span style=3D"font-size: 12.0pt;">Well=
, I hesitate to drag this out, however Maxwell's equations and the<br /> in=
variance of the laws of physics ensure that all path loss matrices are<br /=
> reciprocal.&nbsp; What that means is that at any for any given set of fix=
ed<br /> boundary conditions (nothing moving/changing!), the propagation lo=
ss between<br /> any two points in the domain is the same in both direction=
s. The<br /> "multipathing" in one direction is the same in the other becau=
se the<br /> two-parameter (angle1,angle2) scattering cross sections of all=
 objects<br /> (remember they are fixed here) are independent of the orderi=
ng of the<br /> angles.&nbsp; <br /><br /> Very importantly, path loss is N=
OT the same as the link loss (aka link<br /> budget) which involves tx powe=
r and rx noise figure (and in the case of<br /> smart antennas, there is a =
link per spatial stream and how those links are<br /> managed/controlled re=
ally matters, but let's just keep it simple for this<br /> discussion) and =
these generally are different on both ends of a link for a<br /> variety of=
 reasons. The other very important issue is that of the<br /> ""measurement=
 plane", or "where tx power and rx noise figure are being<br /> measured/re=
ferenced to and how well the interface at that plane is<br /> "matched".&nb=
sp; We generally assume that the matching is perfect, however it<br /> neve=
r is. All of these effects contribute to the link loss which determines<br =
/> the strength of the signal coming out of the receiver (not the receive<b=
r /> antenna, the receiver) for a given signal strength coming out of the<b=
r /> transmitter (not the transmit antenna, the tx output port).&nbsp; &nbs=
p;<br /><br /> In the real world, things change.&nbsp; Sources and sinks mo=
ve as do many of the<br /> objects around them.&nbsp; This creates a time-v=
arying RF environment, and now<br /> the path loss matrix is a function of =
time and a few others things, so it<br /> matters WHEN something is transmi=
tted, and WHEN it is received, and the two<br /> WHEN's are generally separ=
ated by "the speed of light" which is a ft/ns<br /> roughly. As important i=
s the fact that it's no longer really a path loss<br /> matrix containing a=
 single scalar because among other things, the time<br /> varying environme=
nt induces change in the transmitted waveform on its way to<br /> the recei=
ver most commonly referred to as the Doppler effect which means<br /> there=
 is a frequency translation/shift for each (multi-)path of which there<br /=
> are in general an uncountably infinite number because this is a continuou=
s<br /> world in which we live (the space quantization experiment being con=
ducted in<br /> the central US aside:^)). As a consequence of these physica=
l laws, the<br /> entries in the path loss matrix become complex functions =
of a number of<br /> variables including time. These functions are quite of=
ten characterized in<br /> terms of Doppler and delay-spread, terms used to=
 describe in just a few<br /> parameters the amount of "distortion" a compl=
ex function causes. <br /><br /> Hope this helps ... probably a bit more th=
an you really wanted to know as<br /> queuing theorists, but ...<br /><br /=
> -----Original Message-----<br /> From: Starlink [mailto:<a href=3D"mailto=
:starlink-bounces@lists.bufferbloat.net" target=3D"_blank">starlink-bounces=
@lists.bufferbloat.net</a>] On Behalf Of<br /> Rodney W. Grimes<br /> Sent:=
 Tuesday, August 10, 2021 7:10 AM<br /> To: Bob McMahon<br /> Cc: Cake List=
; Make-Wifi-fast; <a href=3D"mailto:starlink@lists.bufferbloat.net" target=
=3D"_blank">starlink@lists.bufferbloat.net</a>;<br /><a href=3D"mailto:code=
l@lists.bufferbloat.net" target=3D"_blank">codel@lists.bufferbloat.net</a>;=
 cerowrt-devel; bloat<br /> Subject: Re: [Starlink] [Cake] [Make-wifi-fast]=
 [Cerowrt-devel] Due Aug 2:<br /> Internet Quality workshop CFP for the int=
ernet architecture board<br /><br /> &gt; The distance matrix defines signa=
l attenuations/loss between pairs.&nbsp; It's<br /> &gt; straightforward to=
 create a distance matrix that has hidden nodes because<br /> &gt; all "sig=
nal&nbsp; loss" between pairs is defined.&nbsp; Let's say a 120dB<br /> att=
enuation<br /> &gt; path will cause a node to be hidden as an example.<br /=
> &gt; <br /> &gt;&nbsp; &nbsp; &nbsp; A&nbsp; &nbsp; B&nbsp; &nbsp; &nbsp;=
C&nbsp; &nbsp; D<br /> &gt; A&nbsp; &nbsp;-&nbsp; &nbsp;35&nbsp; &nbsp;120&=
nbsp; &nbsp;65<br /> &gt; B&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;=
 &nbsp; 65&nbsp; &nbsp;65<br /> &gt; C&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;-&nbsp; &nbsp; &nbsp; &nbsp;65<br /> &gt; D&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
;-<br /> &gt; <br /> &gt; So in the above, AC are hidden from each other bu=
t nobody else is. It does<br /> &gt; assume symmetry between pairs but that=
's typically true.<br /><br /> That is not correct, symmetry in the RF worl=
d, especially wifi, is rare<br /> due to topology issues.&nbsp; A high tran=
smitter, A,&nbsp; and a low receiver, B,<br /> has a good path A - &gt; B, =
but a very weak path B -&gt; A.&nbsp; &nbsp;Multipathing<br /> is another m=
ajor issue that causes assymtry.<br /><br /> &gt; <br /> &gt; The RF device=
 takes these distance matrices as settings and calculates the<br /> &gt; fi=
ve branch tree values (as demonstrated in the video). There are<br /> &gt; =
limitations to solutions though but I've found those not to be an issue to<=
br /> &gt; date. I've been able to produce hidden nodes quite readily. Add =
the phase<br /> &gt; shifters and spatial stream powers can also be affecte=
d, but this isn't<br /> &gt; shown in this simple example.<br /> &gt; <br /=
> &gt; Bob<br /> &gt; <br /> &gt; On Mon, Aug 2, 2021 at 8:12 PM David Lang=
 &lt;<a href=3D"mailto:david@lang.hm" target=3D"_blank">david@lang.hm</a>&g=
t; wrote:<br /> &gt; <br /> &gt; &gt; I guess it depends on what you are in=
tending to test. If you are not<br /> going<br /> &gt; &gt; to<br /> &gt; &=
gt; tinker with any of the over-the-air settings (including the number of<b=
r /> &gt; &gt; packets<br /> &gt; &gt; transmitted in one aggregate), the d=
etails of what happen over the air<br /> &gt; &gt; don't<br /> &gt; &gt; ma=
tter much.<br /> &gt; &gt;<br /> &gt; &gt; But if you are going to be doing=
 any tinkering with what is getting<br /> sent,<br /> &gt; &gt; and<br /> &=
gt; &gt; you ignore the hidden transmitter type problems, you will create a=
<br /> &gt; &gt; solution that<br /> &gt; &gt; seems to work really well in=
 the lab and falls on it's face out in the<br /> &gt; &gt; wild<br /> &gt; =
&gt; where spectrum overload and hidden transmitters are the norm (at least=
<br /> in<br /> &gt; &gt; urban<br /> &gt; &gt; areas), not rare corner cas=
es.<br /> &gt; &gt;<br /> &gt; &gt; you don't need to include them in every=
 test, but you need to have a way<br /> &gt; &gt; to<br /> &gt; &gt; config=
ure your lab to include them before you consider any<br /> &gt; &gt; settin=
gs/algorithm<br /> &gt; &gt; ready to try in the wild.<br /> &gt; &gt;<br /=
> &gt; &gt; David Lang<br /> &gt; &gt;<br /> &gt; &gt; On Mon, 2 Aug 2021, =
Bob McMahon wrote:<br /> &gt; &gt;<br /> &gt; &gt; &gt; We find four nodes,=
 a primary BSS and an adjunct one quite good for<br /> lots<br /> &gt; &gt;=
 of<br /> &gt; &gt; &gt; testing.&nbsp; The six nodes allows for a primary =
BSS and two adjacent<br /> ones.<br /> &gt; &gt; We<br /> &gt; &gt; &gt; wa=
nt to minimize complexity to necessary and sufficient.<br /> &gt; &gt; &gt;=
<br /> &gt; &gt; &gt; The challenge we find is having variability (e.g. mon=
tecarlos) that's<br /> &gt; &gt; &gt; reproducible and has relevant informa=
tion. Basically, the distance<br /> &gt; &gt; matrices<br /> &gt; &gt; &gt;=
 have h-matrices as their elements. Our chips can provide these<br /> &gt; =
&gt; h-matrices.<br /> &gt; &gt; &gt;<br /> &gt; &gt; &gt; The parts for so=
lid state programmable attenuators and phase shifters<br /> &gt; &gt; &gt; =
aren't very expensive. A device that supports a five branch tree and<br /> =
2x2<br /> &gt; &gt; &gt; MIMO seems a very good starting point.<br /> &gt; =
&gt; &gt;<br /> &gt; &gt; &gt; Bob<br /> &gt; &gt; &gt;<br /> &gt; &gt; &gt=
; On Mon, Aug 2, 2021 at 4:55 PM Ben Greear &lt;<a href=3D"mailto:greearb@c=
andelatech.com" target=3D"_blank">greearb@candelatech.com</a>&gt;<br /> &gt=
; &gt; wrote:<br /> &gt; &gt; &gt;<br /> &gt; &gt; &gt;&gt; On 8/2/21 4:16 =
PM, David Lang wrote:<br /> &gt; &gt; &gt;&gt;&gt; If you are going to setu=
p a test environment for wifi, you need to<br /> &gt; &gt; &gt;&gt; include=
 the ability to make a fe cases that only happen with RF, not<br /> &gt; &g=
t; with<br /> &gt; &gt; &gt;&gt; wired networks and<br /> &gt; &gt; &gt;&gt=
;&gt; are commonly overlooked<br /> &gt; &gt; &gt;&gt;&gt;<br /> &gt; &gt; =
&gt;&gt;&gt; 1. station A can hear station B and C but they cannot hear eac=
h<br /> other<br /> &gt; &gt; &gt;&gt;&gt; 2. station A can hear station B =
but station B cannot hear station A<br /> 3.<br /> &gt; &gt; &gt;&gt; stati=
on A can hear that station B is transmitting, but not with a<br /> strong<b=
r /> &gt; &gt; &gt;&gt; enough signal to<br /> &gt; &gt; &gt;&gt;&gt; decod=
e the signal (yes in theory you can work around interference,<br /> but<br =
/> &gt; &gt; &gt;&gt; in practice interference is still a real thing)<br />=
 &gt; &gt; &gt;&gt;&gt;<br /> &gt; &gt; &gt;&gt;&gt; David Lang<br /> &gt; =
&gt; &gt;&gt;&gt;<br /> &gt; &gt; &gt;&gt;<br /> &gt; &gt; &gt;&gt; To add =
to this, I think you need lots of different station devices,<br /> &gt; &gt=
; &gt;&gt; different capabilities (/n, /ac, /ax, etc)<br /> &gt; &gt; &gt;&=
gt; different numbers of spatial streams, and different distances from<br /=
> the<br /> &gt; &gt; &gt;&gt; AP.&nbsp; From download queueing perspective=
, changing<br /> &gt; &gt; &gt;&gt; the capabilities may be sufficient whil=
e keeping all stations at same<br /> &gt; &gt; &gt;&gt; distance.&nbsp; Thi=
s assumes you are not<br /> &gt; &gt; &gt;&gt; actually testing the wifi ra=
te-ctrl alg. itself, so different<br /> throughput<br /> &gt; &gt; &gt;&gt;=
 levels for different stations would be enough.<br /> &gt; &gt; &gt;&gt;<br=
 /> &gt; &gt; &gt;&gt; So, a good station emulator setup (and/or pile of re=
al stations) and<br /> a<br /> &gt; &gt; few<br /> &gt; &gt; &gt;&gt; RF ch=
ambers and<br /> &gt; &gt; &gt;&gt; programmable attenuators and you can te=
st that setup...<br /> &gt; &gt; &gt;&gt;<br /> &gt; &gt; &gt;&gt;&nbsp; Fr=
om upload perspective, I guess same setup would do the job.<br /> &gt; &gt;=
 &gt;&gt; Queuing/fairness might depend a bit more on the<br /> &gt; &gt; &=
gt;&gt; station devices, emulated or otherwise, but I guess a clever AP cou=
ld<br /> &gt; &gt; &gt;&gt; enforce fairness in upstream direction<br /> &g=
t; &gt; &gt;&gt; too by implementing per-sta queues.<br /> &gt; &gt; &gt;&g=
t;<br /> &gt; &gt; &gt;&gt; Thanks,<br /> &gt; &gt; &gt;&gt; Ben<br /> &gt;=
 &gt; &gt;&gt;<br /> &gt; &gt; &gt;&gt; --<br /> &gt; &gt; &gt;&gt; Ben Gre=
ear &lt;<a href=3D"mailto:greearb@candelatech.com" target=3D"_blank">greear=
b@candelatech.com</a>&gt;<br /> &gt; &gt; &gt;&gt; Candela Technologies Inc=
&nbsp; <a href=3D"http://www.candelatech.com" target=3D"_blank">http://www.=
candelatech.com</a><br /> &gt; &gt; &gt;&gt;<br /> &gt; &gt; &gt;<br /> &gt=
; &gt; &gt;<br /> &gt; &gt;<br /> &gt; <br /> &gt; -- <br /> &gt; This elec=
tronic communication and the information and any files<br /> transmitted <b=
r /> &gt; with it, or attached to it, are confidential and are intended sol=
ely for <br /> &gt; the use of the individual or entity to whom it is addre=
ssed and may<br /> contain <br /> &gt; information that is confidential, le=
gally privileged, protected by privacy<br /><br /> &gt; laws, or otherwise =
restricted from disclosure to anyone else. If you are <br /> &gt; not the i=
ntended recipient or the person responsible for delivering the <br /> &gt; =
e-mail to the intended recipient, you are hereby notified that any use, <br=
 /> &gt; copying, distributing, dissemination, forwarding, printing, or cop=
ying of <br /> &gt; this e-mail is strictly prohibited. If you received thi=
s e-mail in error, <br /> &gt; please return the e-mail to the sender, dele=
te it from your computer, and <br /> &gt; destroy any printed copy of it.<b=
r /><br /> [ Charset UTF-8 unsupported, converting... ]<br /> &gt; ________=
_______________________________________<br /> &gt; Starlink mailing list<br=
 /> &gt; <a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank=
">Starlink@lists.bufferbloat.net</a><br /> &gt; <a href=3D"https://lists.bu=
fferbloat.net/listinfo/starlink" target=3D"_blank">https://lists.bufferbloa=
t.net/listinfo/starlink</a><br /> &gt; <br /> _____________________________=
__________________<br /> Starlink mailing list<br /><a href=3D"mailto:Starl=
ink@lists.bufferbloat.net" target=3D"_blank">Starlink@lists.bufferbloat.net=
</a><br /><a href=3D"https://lists.bufferbloat.net/listinfo/starlink" targe=
t=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink</a></span></sp=
an></p>=0A</blockquote>=0A</div>=0A<p class=3D"MsoNormal" style=3D"margin:0=
;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;"=
><span style=3D"font-family: 'Times New Roman'; font-size: medium;"><span s=
tyle=3D"font-size: 12.0pt;"><br /></span></span><span style=3D"font-size: s=
mall;"><span style=3D"font-size: 10.0pt; background: white;">This electroni=
c communication and the information and any files transmitted with it, or a=
ttached to it, are confidential and are intended solely for the use of the =
individual or entity to whom it is addressed and may contain information th=
at is confidential, legally privileged, protected by privacy laws, or other=
wise restricted from disclosure to anyone else. If you are not the intended=
 recipient or the person responsible for delivering the e-mail to the inten=
ded recipient, you are hereby notified that any use, copying, distributing,=
 dissemination, forwarding, printing, or copying of this e-mail is strictly=
 prohibited. If you received this e-mail in error, please return the e-mail=
 to the sender, delete it from your computer, and destroy any printed copy =
of it.</span></span></p>=0A</div>=0A</div></font>
------=_20210902133633000000_50854--


--===============8630350610185932239==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8630350610185932239==--


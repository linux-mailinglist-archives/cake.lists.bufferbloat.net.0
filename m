Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C584004F3
	for <lists+cake@lfdr.de>; Fri,  3 Sep 2021 20:33:48 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EEE813CB53;
	Fri,  3 Sep 2021 14:33:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1630694017;
	bh=yB/vUmwQAiq+EjfRoJHRoQQLGTNu7Qaz3j4GnbwiPi8=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PJ01ep8iskFfqTIF3Wma49kIVaBYKe0Yh4YyGFCp8cIbZCuM+ofLFEZZn4gpbyWSX
	 Hm3R/jUTQ+VJ47CrMTC0DBpFkmY/oLNefIBU1QCsnlcMPNqxasICnxiR5HK8MbKuDh
	 vycB37P4Mqwjy3BucoSgtixGnPixk5NDK1nLI+F1CYvi1xTEPHycg56A/ICy57Vi1p
	 GM4R29lnfxsVuX0QYYRN6e+9KsUhHfYHRCoxBhs1Cx0sKPcQ5HMqwQzjmCfZqd8ORZ
	 Z4cUePdSjEWCvA4mXaBuIRpsHFwaU1zGMl91gz5lI0ygjjoxjBiOK2TtesTC9O4qqv
	 uonIsV9a2UEkA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp67.iad3a.emailsrvr.com (smtp67.iad3a.emailsrvr.com
 [173.203.187.67])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0D8C53CB45
 for <cake@lists.bufferbloat.net>; Fri,  3 Sep 2021 14:33:35 -0400 (EDT)
Received: from app59.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp1.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 43E0E443B;
 Fri,  3 Sep 2021 14:33:35 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app59.wa-webapps.iad3a (Postfix) with ESMTP id 2EAB960066;
 Fri,  3 Sep 2021 14:33:35 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Fri, 3 Sep 2021 14:33:35 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Fri, 3 Sep 2021 14:33:35 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Matt Mathis" <mattmathis@google.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <CAH56bmCMQnrkhCJ6m7cs=y=tt=OmH1UKKsKm88fgzFc7d5YxMQ@mail.gmail.com>
References: <CAHb6LvqfRxKU0BW04ypRcPDpCcWymnS6qzb3gneQSbBrAbRhHQ@mail.gmail.com> 
 <202108101410.17AEAR4w075939@gndrsh.dnsmgr.net> 
 <5AF5551E2A7041168E7071FDA0F6B8EC@SRA6> 
 <CAHb6LvpAmUKgsMAoZGrbAvS01DF=yWyJj56ox+FrDM_tEc=0Ng@mail.gmail.com> 
 <03CA2CDA3EC5415DA229F835BE039994@SRA6> 
 <1630604193.476312238@apps.rackspace.com> 
 <CAH56bmCMQnrkhCJ6m7cs=y=tt=OmH1UKKsKm88fgzFc7d5YxMQ@mail.gmail.com>
X-Client-IP: 209.6.168.128
Message-ID: <1630694015.155723881@apps.rackspace.com>
X-Mailer: webmail/19.0.11-RC
X-Classification-ID: 014209b0-b0fb-4c2c-ac4c-2041c6fe2a22-1-1
Subject: Re: [Cake] [Bloat] [Starlink] [Make-wifi-fast] [Cerowrt-devel] Due
	Aug 2: Internet Quality workshop CFP for the internet
	architecture board
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
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Bob McMahon <bob.mcmahon@broadcom.com>, Cake List <cake@lists.bufferbloat.net>,
 codel <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, dickroy@alum.mit.edu,
 "Rodney W. Grimes" <starlink@gndrsh.dnsmgr.net>
Content-Type: multipart/mixed; boundary="===============5905933800312294157=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5905933800312294157==
Content-Type: multipart/alternative;boundary="----=_20210903143335000000_27193"

------=_20210903143335000000_27193
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0ARegarding "only needs to be solved ... high density" - Musk has gone on =
record as saying that Starlink probably will never support dense subscriber=
 areas. Which of course contradicts many other statements by Starlink and S=
tarfans that they can scale up to full coverage of the world. My point in t=
his regard is that "armchair theorizing" is not going to discover how scala=
ble Starlink technology (or LEO technology) can be, because there are many,=
 many physical factors besides constellation size that will likely limit sc=
aling.=0A =0AIt really does bug me that Musk and crew have promised very lo=
w latency as a definite feature of Starlink, but then couldn't seem to even=
 bother to get congestion control in their early trial deployments.=0AThat =
one should be solvable.=0A =0ABut they are declaring victory and claiming t=
hey have solved every problem, so they should get FCC permission to roll ou=
t more of their unproven technology, right now. Reminds me of ATT deploying=
 the iPhone. As soon as it stopped working very well after the early raving=
 reviews from early adopters, ATT's top technology guy (a John Donavan) wen=
t on a full on rampage against Apple for having a "defective product" when =
in fact it was ATT's HSPA network that was getting severely congested due t=
o its extreme bufferbloat design. (It wasn't ATT, it was actually Alcatel L=
ucent that did the terrible design, but ATT continued to blame Apple.)=0A =
=0ASince some on this list want to believe that Starlink is the savior, but=
 others are technically wise, I'm not sure where the discussion will go. I =
hope that there will be some feedback to Starlink rather than just a fan cl=
ub or user-support group.=0A =0A =0AOn Friday, September 3, 2021 10:35am, "=
Matt Mathis" <mattmathis@google.com> said:=0A=0A=0A=0AI am very wary of a g=
eneralization of this problem: software engineers who believe that they can=
 code around arbitrary idosynchronies of network hardware.  They often succ=
eed, but generally at a severe performance penalty.=0AHow much do we know a=
bout the actual hardware?   As far as I understand the math, some of the pr=
ime calculations used in Machine Learning are isomorphic to multidimensiona=
l correlators and convolutions, which are the same computations as needed t=
o do phased array beam steering.   One can imagine scenarios where Tesla (p=
lans to) substantially overbuild the computational HW by recycling some ML =
technology, and then beefing up the SW over time as they better understand =
reality.=0AAlso note that the problem really only needs to be solved in are=
as where they will eventually have high density.   Most of the early deploy=
ment will never have this problem.=0A=0A=0A=0A=0A=0A=0A=0A=0A=0AThanks,--MM=
--=0AThe best way to predict the future is to create it.  - Alan Kay=0A=0AW=
e must not tolerate intolerance;=0A       however our response must be care=
fully measured: =0A            too strong would be hypocritical and risks s=
piraling out of control;=0A            too weak risks being mistaken for ta=
cit approval.=0A=0A=0AOn Thu, Sep 2, 2021 at 10:36 AM David P. Reed <[ dpre=
ed@deepplum.com ]( mailto:dpreed@deepplum.com )> wrote:=0AI just want to th=
ank Dick Roy for backing up the arguments I've been making about physical R=
F communications for many years, and clarifying terminology here. I'm not t=
he expert - Dick is an expert with real practical and theoretical experienc=
e - but what I've found over the years is that many who consider themselves=
 "experts" say things that are actually nonsense about radio systems.=0A =
=0AIt seems to me that Starlink is based on a propagation model that is qui=
te simplistic, and probably far enough from correct that what seems "obviou=
s" will turn out not to be true. That doesn't stop Musk and cronies from as=
serting these things as absolute truths (backed by actual professors, espec=
ially professors of Economics like Coase, but also CS professors, network p=
rotocol experts, etc. who aren't physicists or practicing RF engineers).=0A=
 =0AThe fact is that we don't really know how to build a scalable LEO syste=
m. Models can be useful, but a model can be a trap that causes even enginee=
rs to be cocky. Or as the saying goes, a Clear View doesn't mean a Short Di=
stance.=0A =0AIf there are 40 satellites serving 10,000 ground terminals si=
multaneously, exactly what is the propagation environment like? I can tell =
you one thing: if the phased array is digitized at some sample rate and som=
e equalization and some quantization, the propagation REALLY matters in ser=
ving those 10,000 ground terminals scattered randomly on terrain that is no=
t optically flat and not fully absorbent.=0A =0ASo how will Starlink scale?=
 I think we literally don't know. And the modeling matters.=0A =0ARecently =
a real propagation expert (Ted Rapaport and his students) did a study of ho=
w well 70 GHz RF signals propagate in an urban environment - Brooklyn.  The=
 standard model would say that coverage would be terrible! Why? Because sup=
posedly 70 GHz is like visible light - line of sight is required or nothing=
 works.=0A =0ABut in fact, Ted, whom I've known from being on the FCC Techn=
ological Advisory Committee (TAC) together when it was actually populated w=
ith engineers and scientists, not lobbyists, discovered that scattering and=
 diffraction at 70 GHz in an urban environment significantly expands covera=
ge of a single transmitter. Remarkably so. Enough that "cellular architectu=
re" doesn't make sense in that propagation environment.=0A =0ASo all the pr=
ofessional experts are starting from the wrong place, and amateurs perhaps =
even more so.=0A =0AI hope Starlink views itself as a "research project". I=
'm afraid it doesn't - partly driven by Musk, but equally driven by the FCC=
 itself, which demands that before a system is deployed that the entire pla=
n be shown to work (which would require a "model" that is actually unknowab=
le because something like this has never been tried). This is a problem wit=
h today's regulation of spectrum - experiments are barred, both by law, and=
 by competitors who can claim your system will destroy theirs and not work.=
=0A =0ABut it is also a problem when "fans" start setting expectations way =
too high. Like claiming that Starlink will eliminate any need for fiber. We=
 don't know that at all!=0A =0A =0A =0A =0A =0A =0A =0AOn Tuesday, August 1=
0, 2021 2:11pm, "Dick Roy" <[ dickroy@alum.mit.edu ]( mailto:dickroy@alum.m=
it.edu )> said:=0A=0A=0A=0A=0ATo add a bit more, as is easily seen below, t=
he amplitudes of each of the transfer functions between the three transmit =
and three receive antennas are extremely similar.  This is to be expected, =
of course, since the =E2=80=9Caperture=E2=80=9D of each array is very small=
 compared to the distance between them.  What is much more interesting and =
revealing is the relative phases.  Obviously this requires coherent receive=
rs, and ultimately if you want to control the spatial distribution of power=
 (aka SDMA (or MIMO in some circles) coherent transmitters. It turns out th=
at just knowing the amplitude of the transfer functions is not really all t=
hat useful for anything other than detecting a broken solder joint:^)))=0A =
=0AAlso, do not forget that depending how these experiments were conducted,=
 the estimates are either of the RF channel itself (aka path loss),or of th=
e RF channel in combination with the transfer functions of the transmitters=
 and//or receivers.  What this means is the CALIBRATION is CRUCIAL!  Those =
who do not calibrate, are doomed to fail!!!!   I suspect that it is in cali=
bration where the major difference in performance between vendors=E2=80=99=
=E2=80=99 products can be found :^))))=0A =0AIt=E2=80=99s complicated =E2=
=80=A6 =0A =0A=0A=0AFrom: Bob McMahon [mailto:[ bob.mcmahon@broadcom.com ](=
 mailto:bob.mcmahon@broadcom.com )] =0ASent: Tuesday, August 10, 2021 10:07=
 AM=0ATo: [ dickroy@alum.mit.edu ]( mailto:dickroy@alum.mit.edu )=0ACc: Rod=
ney W. Grimes; Cake List; Make-Wifi-fast; [ starlink@lists.bufferbloat.net =
]( mailto:starlink@lists.bufferbloat.net ); codel; cerowrt-devel; bloat=0AS=
ubject: Re: [Starlink] [Cake] [Make-wifi-fast] [Cerowrt-devel] Due Aug 2: I=
nternet Quality workshop CFP for the internet architecture board=0A =0A=0AT=
he slides show that for WiFi every transmission produces a complex frequenc=
y response, aka the h-matrix. This is valid for that one transmission only.=
  The slides show an amplitude plot for a 3 radio device hence the 9 elemen=
ts per the h-matrix. It's assumed that the WiFi STA/AP is stationary such t=
hat doppler effects aren't a consideration. WiFi isn't a car trying to conn=
ect to a cell tower.  The plot doesn't show the phase effects but they are =
included as the output of the channel estimate is a complex frequency respo=
nse. Each RX produces the h-matrix ahead of the MAC. These may not be symme=
tric in the real world but that's ok as transmission and reception is one w=
ay only, i.e. the treating them as repcripocol and the matrix as hollows sy=
mmetric isn't going to be a "test blocker" as the goal is to be able to use=
 software and programmable devices to change them in near real time. The cu=
rrent approach used by many using butler matrices to produce off-diagonal e=
ffects  is woefully inadequate. And we're paying about $2.5K per each butle=
r.=0A=0ABob=0A =0A=0A=0AOn Tue, Aug 10, 2021 at 9:13 AM Dick Roy <[ dickroy=
@alum.mit.edu ]( mailto:dickroy@alum.mit.edu )> wrote:=0AWell, I hesitate t=
o drag this out, however Maxwell's equations and the=0A invariance of the l=
aws of physics ensure that all path loss matrices are=0A reciprocal.  What =
that means is that at any for any given set of fixed=0A boundary conditions=
 (nothing moving/changing!), the propagation loss between=0A any two points=
 in the domain is the same in both directions. The=0A "multipathing" in one=
 direction is the same in the other because the=0A two-parameter (angle1,an=
gle2) scattering cross sections of all objects=0A (remember they are fixed =
here) are independent of the ordering of the=0A angles.  =0A=0A Very import=
antly, path loss is NOT the same as the link loss (aka link=0A budget) whic=
h involves tx power and rx noise figure (and in the case of=0A smart antenn=
as, there is a link per spatial stream and how those links are=0A managed/c=
ontrolled really matters, but let's just keep it simple for this=0A discuss=
ion) and these generally are different on both ends of a link for a=0A vari=
ety of reasons. The other very important issue is that of the=0A ""measurem=
ent plane", or "where tx power and rx noise figure are being=0A measured/re=
ferenced to and how well the interface at that plane is=0A "matched".  We g=
enerally assume that the matching is perfect, however it=0A never is. All o=
f these effects contribute to the link loss which determines=0A the strengt=
h of the signal coming out of the receiver (not the receive=0A antenna, the=
 receiver) for a given signal strength coming out of the=0A transmitter (no=
t the transmit antenna, the tx output port).   =0A=0A In the real world, th=
ings change.  Sources and sinks move as do many of the=0A objects around th=
em.  This creates a time-varying RF environment, and now=0A the path loss m=
atrix is a function of time and a few others things, so it=0A matters WHEN =
something is transmitted, and WHEN it is received, and the two=0A WHEN's ar=
e generally separated by "the speed of light" which is a ft/ns=0A roughly. =
As important is the fact that it's no longer really a path loss=0A matrix c=
ontaining a single scalar because among other things, the time=0A varying e=
nvironment induces change in the transmitted waveform on its way to=0A the =
receiver most commonly referred to as the Doppler effect which means=0A the=
re is a frequency translation/shift for each (multi-)path of which there=0A=
 are in general an uncountably infinite number because this is a continuous=
=0A world in which we live (the space quantization experiment being conduct=
ed in=0A the central US aside:^)). As a consequence of these physical laws,=
 the=0A entries in the path loss matrix become complex functions of a numbe=
r of=0A variables including time. These functions are quite often character=
ized in=0A terms of Doppler and delay-spread, terms used to describe in jus=
t a few=0A parameters the amount of "distortion" a complex function causes.=
 =0A=0A Hope this helps ... probably a bit more than you really wanted to k=
now as=0A queuing theorists, but ...=0A=0A -----Original Message-----=0A Fr=
om: Starlink [mailto:[ starlink-bounces@lists.bufferbloat.net ]( mailto:sta=
rlink-bounces@lists.bufferbloat.net )] On Behalf Of=0A Rodney W. Grimes=0A =
Sent: Tuesday, August 10, 2021 7:10 AM=0A To: Bob McMahon=0A Cc: Cake List;=
 Make-Wifi-fast; [ starlink@lists.bufferbloat.net ]( mailto:starlink@lists.=
bufferbloat.net );=0A[ codel@lists.bufferbloat.net ]( mailto:codel@lists.bu=
fferbloat.net ); cerowrt-devel; bloat=0A Subject: Re: [Starlink] [Cake] [Ma=
ke-wifi-fast] [Cerowrt-devel] Due Aug 2:=0A Internet Quality workshop CFP f=
or the internet architecture board=0A=0A > The distance matrix defines sign=
al attenuations/loss between pairs.  It's=0A > straightforward to create a =
distance matrix that has hidden nodes because=0A > all "signal  loss" betwe=
en pairs is defined.  Let's say a 120dB=0A attenuation=0A > path will cause=
 a node to be hidden as an example.=0A > =0A >      A    B     C    D=0A > =
A   -   35   120   65=0A > B         -      65   65=0A > C               - =
      65=0A > D                         -=0A > =0A > So in the above, AC ar=
e hidden from each other but nobody else is. It does=0A > assume symmetry b=
etween pairs but that's typically true.=0A=0A That is not correct, symmetry=
 in the RF world, especially wifi, is rare=0A due to topology issues.  A hi=
gh transmitter, A,  and a low receiver, B,=0A has a good path A - > B, but =
a very weak path B -> A.   Multipathing=0A is another major issue that caus=
es assymtry.=0A=0A > =0A > The RF device takes these distance matrices as s=
ettings and calculates the=0A > five branch tree values (as demonstrated in=
 the video). There are=0A > limitations to solutions though but I've found =
those not to be an issue to=0A > date. I've been able to produce hidden nod=
es quite readily. Add the phase=0A > shifters and spatial stream powers can=
 also be affected, but this isn't=0A > shown in this simple example.=0A > =
=0A > Bob=0A > =0A > On Mon, Aug 2, 2021 at 8:12 PM David Lang <[ david@lan=
g.hm ]( mailto:david@lang.hm )> wrote:=0A > =0A > > I guess it depends on w=
hat you are intending to test. If you are not=0A going=0A > > to=0A > > tin=
ker with any of the over-the-air settings (including the number of=0A > > p=
ackets=0A > > transmitted in one aggregate), the details of what happen ove=
r the air=0A > > don't=0A > > matter much.=0A > >=0A > > But if you are goi=
ng to be doing any tinkering with what is getting=0A sent,=0A > > and=0A > =
> you ignore the hidden transmitter type problems, you will create a=0A > >=
 solution that=0A > > seems to work really well in the lab and falls on it'=
s face out in the=0A > > wild=0A > > where spectrum overload and hidden tra=
nsmitters are the norm (at least=0A in=0A > > urban=0A > > areas), not rare=
 corner cases.=0A > >=0A > > you don't need to include them in every test, =
but you need to have a way=0A > > to=0A > > configure your lab to include t=
hem before you consider any=0A > > settings/algorithm=0A > > ready to try i=
n the wild.=0A > >=0A > > David Lang=0A > >=0A > > On Mon, 2 Aug 2021, Bob =
McMahon wrote:=0A > >=0A > > > We find four nodes, a primary BSS and an adj=
unct one quite good for=0A lots=0A > > of=0A > > > testing.  The six nodes =
allows for a primary BSS and two adjacent=0A ones.=0A > > We=0A > > > want =
to minimize complexity to necessary and sufficient.=0A > > >=0A > > > The c=
hallenge we find is having variability (e.g. montecarlos) that's=0A > > > r=
eproducible and has relevant information. Basically, the distance=0A > > ma=
trices=0A > > > have h-matrices as their elements. Our chips can provide th=
ese=0A > > h-matrices.=0A > > >=0A > > > The parts for solid state programm=
able attenuators and phase shifters=0A > > > aren't very expensive. A devic=
e that supports a five branch tree and=0A 2x2=0A > > > MIMO seems a very go=
od starting point.=0A > > >=0A > > > Bob=0A > > >=0A > > > On Mon, Aug 2, 2=
021 at 4:55 PM Ben Greear <[ greearb@candelatech.com ]( mailto:greearb@cand=
elatech.com )>=0A > > wrote:=0A > > >=0A > > >> On 8/2/21 4:16 PM, David La=
ng wrote:=0A > > >>> If you are going to setup a test environment for wifi,=
 you need to=0A > > >> include the ability to make a fe cases that only hap=
pen with RF, not=0A > > with=0A > > >> wired networks and=0A > > >>> are co=
mmonly overlooked=0A > > >>>=0A > > >>> 1. station A can hear station B and=
 C but they cannot hear each=0A other=0A > > >>> 2. station A can hear stat=
ion B but station B cannot hear station A=0A 3.=0A > > >> station A can hea=
r that station B is transmitting, but not with a=0A strong=0A > > >> enough=
 signal to=0A > > >>> decode the signal (yes in theory you can work around =
interference,=0A but=0A > > >> in practice interference is still a real thi=
ng)=0A > > >>>=0A > > >>> David Lang=0A > > >>>=0A > > >>=0A > > >> To add =
to this, I think you need lots of different station devices,=0A > > >> diff=
erent capabilities (/n, /ac, /ax, etc)=0A > > >> different numbers of spati=
al streams, and different distances from=0A the=0A > > >> AP.  From downloa=
d queueing perspective, changing=0A > > >> the capabilities may be sufficie=
nt while keeping all stations at same=0A > > >> distance.  This assumes you=
 are not=0A > > >> actually testing the wifi rate-ctrl alg. itself, so diff=
erent=0A throughput=0A > > >> levels for different stations would be enough=
.=0A > > >>=0A > > >> So, a good station emulator setup (and/or pile of rea=
l stations) and=0A a=0A > > few=0A > > >> RF chambers and=0A > > >> program=
mable attenuators and you can test that setup...=0A > > >>=0A > > >>  From =
upload perspective, I guess same setup would do the job.=0A > > >> Queuing/=
fairness might depend a bit more on the=0A > > >> station devices, emulated=
 or otherwise, but I guess a clever AP could=0A > > >> enforce fairness in =
upstream direction=0A > > >> too by implementing per-sta queues.=0A > > >>=
=0A > > >> Thanks,=0A > > >> Ben=0A > > >>=0A > > >> --=0A > > >> Ben Greea=
r <[ greearb@candelatech.com ]( mailto:greearb@candelatech.com )>=0A > > >>=
 Candela Technologies Inc  [ http://www.candelatech.com ]( http://www.cande=
latech.com )=0A > > >>=0A > > >=0A > > >=0A > >=0A > =0A > -- =0A > This el=
ectronic communication and the information and any files=0A transmitted =0A=
 > with it, or attached to it, are confidential and are intended solely for=
 =0A > the use of the individual or entity to whom it is addressed and may=
=0A contain =0A > information that is confidential, legally privileged, pro=
tected by privacy=0A=0A > laws, or otherwise restricted from disclosure to =
anyone else. If you are =0A > not the intended recipient or the person resp=
onsible for delivering the =0A > e-mail to the intended recipient, you are =
hereby notified that any use, =0A > copying, distributing, dissemination, f=
orwarding, printing, or copying of =0A > this e-mail is strictly prohibited=
. If you received this e-mail in error, =0A > please return the e-mail to t=
he sender, delete it from your computer, and =0A > destroy any printed copy=
 of it.=0A=0A [ Charset UTF-8 unsupported, converting... ]=0A > ___________=
____________________________________=0A > Starlink mailing list=0A > [ Star=
link@lists.bufferbloat.net ]( mailto:Starlink@lists.bufferbloat.net )=0A > =
[ https://lists.bufferbloat.net/listinfo/starlink ]( https://lists.bufferbl=
oat.net/listinfo/starlink )=0A > =0A ______________________________________=
_________=0A Starlink mailing list=0A[ Starlink@lists.bufferbloat.net ]( ma=
ilto:Starlink@lists.bufferbloat.net )=0A[ https://lists.bufferbloat.net/lis=
tinfo/starlink ]( https://lists.bufferbloat.net/listinfo/starlink )=0A=0ATh=
is electronic communication and the information and any files transmitted w=
ith it, or attached to it, are confidential and are intended solely for the=
 use of the individual or entity to whom it is addressed and may contain in=
formation that is confidential, legally privileged, protected by privacy la=
ws, or otherwise restricted from disclosure to anyone else. If you are not =
the intended recipient or the person responsible for delivering the e-mail =
to the intended recipient, you are hereby notified that any use, copying, d=
istributing, dissemination, forwarding, printing, or copying of this e-mail=
 is strictly prohibited. If you received this e-mail in error, please retur=
n the e-mail to the sender, delete it from your computer, and destroy any p=
rinted copy of it._______________________________________________=0A Bloat =
mailing list=0A[ Bloat@lists.bufferbloat.net ]( mailto:Bloat@lists.bufferbl=
oat.net )=0A[ https://lists.bufferbloat.net/listinfo/bloat ]( https://lists=
.bufferbloat.net/listinfo/bloat )
------=_20210903143335000000_27193
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">Regarding "only needs =
to be solved ... high density" - Musk has gone on record as saying that Sta=
rlink probably will never support dense subscriber areas. Which of course c=
ontradicts many other statements by Starlink and Starfans that they can sca=
le up to full coverage of the world. My point in this regard is that "armch=
air theorizing" is not going to discover how scalable Starlink technology (=
or LEO technology) can be, because there are many, many physical factors be=
sides constellation size that will likely limit scaling.</p>=0A<p style=3D"=
margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: brea=
k-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; fo=
nt-size: 10pt; overflow-wrap: break-word;">It really does bug me that Musk =
and crew have promised very low latency as a definite feature of Starlink, =
but then couldn't seem to even bother to get congestion control in their ea=
rly trial deployments.</p>=0A<p style=3D"margin:0;padding:0;font-family: ar=
ial; font-size: 10pt; overflow-wrap: break-word;">That one should be solvab=
le.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10p=
t; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;=
font-family: arial; font-size: 10pt; overflow-wrap: break-word;">But they a=
re declaring victory and claiming they have solved every problem, so they s=
hould get FCC permission to roll out more of their unproven technology, rig=
ht now. Reminds me of ATT deploying the iPhone. As soon as it stopped worki=
ng very well after the early raving reviews from early adopters, ATT's top =
technology guy (a John Donavan) went on a full on rampage against Apple for=
 having a "defective product" when in fact it was ATT's HSPA network that w=
as getting severely congested due to its extreme bufferbloat design. (It wa=
sn't ATT, it was actually Alcatel Lucent that did the terrible design, but =
ATT continued to blame Apple.)</p>=0A<p style=3D"margin:0;padding:0;font-fa=
mily: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p s=
tyle=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wr=
ap: break-word;">Since some on this list want to believe that Starlink is t=
he savior, but others are technically wise, I'm not sure where the discussi=
on will go. I hope that there will be some feedback to Starlink rather than=
 just a fan club or user-support group.</p>=0A<p style=3D"margin:0;padding:=
0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</=
p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; ov=
erflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-=
family: arial; font-size: 10pt; overflow-wrap: break-word;">On Friday, Sept=
ember 3, 2021 10:35am, "Matt Mathis" &lt;mattmathis@google.com&gt; said:<br=
 /><br /></p>=0A<div id=3D"SafeStyles1630693217">=0A<div dir=3D"ltr">I am v=
ery wary of a generalization of this problem: software&nbsp;engineers who b=
elieve that they can code around arbitrary idosynchronies of network hardwa=
re.&nbsp; They often succeed, but generally at a severe&nbsp;performance pe=
nalty.=0A<div>How much do we know about the actual hardware?&nbsp; &nbsp;As=
 far as I understand&nbsp;the math, some of the prime calculations&nbsp;use=
d in Machine Learning are isomorphic to multidimensional correlators&nbsp;a=
nd convolutions, which are the&nbsp;same computations as needed to do phase=
d array beam steering.&nbsp; &nbsp;One can imagine scenarios where Tesla (p=
lans to) substantially overbuild the computational HW by recycling&nbsp;som=
e ML technology, and then beefing up the SW over time as they better unders=
tand reality.</div>=0A<div>Also note that the problem really only needs to =
be solved in areas where they will eventually have high density.&nbsp; &nbs=
p;Most of the early deployment&nbsp;will never have this problem.</div>=0A<=
div>=0A<div>=0A<div>=0A<div class=3D"gmail_signature" dir=3D"ltr" data-smar=
tmail=3D"gmail_signature">=0A<div dir=3D"ltr">=0A<div>=0A<div dir=3D"ltr">=
=0A<div>=0A<div dir=3D"ltr">=0A<div>Thanks,</div>=0A--MM--<br />The best wa=
y to predict the future is to create it. &nbsp;- Alan Kay<br /><br />We mus=
t not tolerate intolerance;</div>=0A<div dir=3D"ltr">&nbsp; &nbsp; &nbsp; &=
nbsp;however our response must be carefully measured:&nbsp;</div>=0A<div>&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; too strong would be hypocritical an=
d risks spiraling out of control;</div>=0A<div>&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; too weak risks being mistaken for tacit approval.</div>=0A</d=
iv>=0A</div>=0A</div>=0A</div>=0A</div>=0A</div>=0A</div>=0A</div>=0A</div>=
=0A<br />=0A<div class=3D"gmail_quote">=0A<div class=3D"gmail_attr" dir=3D"=
ltr">On Thu, Sep 2, 2021 at 10:36 AM David P. Reed &lt;<a href=3D"mailto:dp=
reed@deepplum.com">dpreed@deepplum.com</a>&gt; wrote:</div>=0A<blockquote c=
lass=3D"gmail_quote" style=3D"margin: 0px 0px 0px 0.8ex; border-left: 1px s=
olid #cccccc; padding-left: 1ex;">=0A<p style=3D"margin:0;padding:0;margin:=
 0px; padding: 0px; font-family: arial; font-size: 10pt;">I just want to th=
ank Dick Roy for backing up the arguments I've been making about physical R=
F communications for many years, and clarifying terminology here. I'm not t=
he expert - Dick is an expert with real practical and theoretical experienc=
e - but what I've found over the years is that many who consider themselves=
 "experts" say things that are actually nonsense about radio systems.</p>=
=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: a=
rial; font-size: 10pt;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin:=
 0px; padding: 0px; font-family: arial; font-size: 10pt;">It seems to me th=
at Starlink is based on a propagation model that is quite simplistic, and p=
robably far enough from correct that what seems "obvious" will turn out not=
 to be true. That doesn't stop Musk and cronies from asserting these things=
 as absolute truths (backed by actual professors, especially professors of =
Economics like Coase, but also CS professors, network protocol experts, etc=
. who aren't physicists or practicing RF engineers).</p>=0A<p style=3D"marg=
in:0;padding:0;margin: 0px; padding: 0px; font-family: arial; font-size: 10=
pt;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px;=
 font-family: arial; font-size: 10pt;">The fact is that we don't really kno=
w how to build a scalable LEO system. Models can be useful, but a model can=
 be a trap that causes even engineers to be cocky. Or as the saying goes, a=
 Clear View doesn't mean a Short Distance.</p>=0A<p style=3D"margin:0;paddi=
ng:0;margin: 0px; padding: 0px; font-family: arial; font-size: 10pt;">&nbsp=
;</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-fami=
ly: arial; font-size: 10pt;">If there are 40 satellites serving 10,000 grou=
nd terminals simultaneously, exactly what is the propagation environment li=
ke? I can tell you one thing: if the phased array is digitized at some samp=
le rate and some equalization and some quantization, the propagation REALLY=
 matters in serving those 10,000 ground terminals scattered randomly on ter=
rain that is not optically flat and not fully absorbent.</p>=0A<p style=3D"=
margin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; font-size=
: 10pt;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: =
0px; font-family: arial; font-size: 10pt;">So how will Starlink scale? I th=
ink we literally don't know. And the modeling matters.</p>=0A<p style=3D"ma=
rgin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; font-size: =
10pt;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0p=
x; font-family: arial; font-size: 10pt;">Recently a real propagation expert=
 (Ted Rapaport and his students) did a study of how well 70 GHz RF signals =
propagate in an urban environment - Brooklyn.&nbsp; The standard model woul=
d say that coverage would be terrible! Why? Because supposedly 70 GHz is li=
ke visible light - line of sight is required or nothing works.</p>=0A<p sty=
le=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; fon=
t-size: 10pt;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; pad=
ding: 0px; font-family: arial; font-size: 10pt;">But in fact, Ted, whom I'v=
e known from being on the FCC Technological Advisory Committee (TAC) togeth=
er when it was actually populated with engineers and scientists, not lobbyi=
sts, discovered that scattering and diffraction at 70 GHz in an urban envir=
onment significantly expands coverage of a single transmitter. Remarkably s=
o. Enough that "cellular architecture" doesn't make sense in that propagati=
on environment.</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: =
0px; font-family: arial; font-size: 10pt;">&nbsp;</p>=0A<p style=3D"margin:=
0;padding:0;margin: 0px; padding: 0px; font-family: arial; font-size: 10pt;=
">So all the professional experts are starting from the wrong place, and am=
ateurs perhaps even more so.</p>=0A<p style=3D"margin:0;padding:0;margin: 0=
px; padding: 0px; font-family: arial; font-size: 10pt;">&nbsp;</p>=0A<p sty=
le=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; fon=
t-size: 10pt;">I hope Starlink views itself as a "research project". I'm af=
raid it doesn't - partly driven by Musk, but equally driven by the FCC itse=
lf, which demands that before a system is deployed that the entire plan be =
shown to work (which would require a "model" that is actually unknowable be=
cause something like this has never been tried). This is a problem with tod=
ay's regulation of spectrum - experiments are barred, both by law, and by c=
ompetitors who can claim your system will destroy theirs and not work.</p>=
=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: a=
rial; font-size: 10pt;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin:=
 0px; padding: 0px; font-family: arial; font-size: 10pt;">But it is also a =
problem when "fans" start setting expectations way too high. Like claiming =
that Starlink will eliminate any need for fiber. We don't know that at all!=
</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-famil=
y: arial; font-size: 10pt;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;mar=
gin: 0px; padding: 0px; font-family: arial; font-size: 10pt;">&nbsp;</p>=0A=
<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: aria=
l; font-size: 10pt;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0p=
x; padding: 0px; font-family: arial; font-size: 10pt;">&nbsp;</p>=0A<p styl=
e=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; font=
-size: 10pt;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padd=
ing: 0px; font-family: arial; font-size: 10pt;">&nbsp;</p>=0A<p style=3D"ma=
rgin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; font-size: =
10pt;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0p=
x; font-family: arial; font-size: 10pt;">On Tuesday, August 10, 2021 2:11pm=
, "Dick Roy" &lt;<a href=3D"mailto:dickroy@alum.mit.edu" target=3D"_blank">=
dickroy@alum.mit.edu</a>&gt; said:<br /><br /></p>=0A<div id=3D"gmail-m_-47=
20968264339527894SafeStyles1630602673">=0A<div>=0A<p class=3D"MsoNormal" st=
yle=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; fo=
nt-size: 10pt;"><span style=3D"color: navy; font-family: Arial; font-size: =
small;"><span style=3D"font-size: 10pt; font-family: Arial; color: navy;">T=
o add a bit more, as is easily seen below, the amplitudes of each of the tr=
ansfer functions between the three transmit and three receive antennas are =
extremely similar.&nbsp; This is to be expected, of course, since the =E2=
=80=9Caperture=E2=80=9D of each array is very small compared to the distanc=
e between them.&nbsp; What is much more interesting and revealing is the re=
lative phases.&nbsp; Obviously this requires coherent receivers, and ultima=
tely if you want to control the spatial distribution of power (aka SDMA (or=
 MIMO in some circles) coherent transmitters. It turns out that just knowin=
g the amplitude of the transfer functions is not really all that useful for=
 anything other than detecting a broken solder joint:^)))</span></span></p>=
=0A<p class=3D"MsoNormal" style=3D"margin:0;padding:0;margin: 0px; padding:=
 0px; font-family: arial; font-size: 10pt;"><span style=3D"color: navy; fon=
t-family: Arial; font-size: small;"><span style=3D"font-size: 10pt; font-fa=
mily: Arial; color: navy;">&nbsp;</span></span></p>=0A<p class=3D"MsoNormal=
" style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: arial=
; font-size: 10pt;"><span style=3D"color: navy; font-family: Arial; font-si=
ze: small;"><span style=3D"font-size: 10pt; font-family: Arial; color: navy=
;">Also, do not forget that depending how these experiments were conducted,=
 the estimates are either of the RF channel itself (aka path loss),or of th=
e RF channel in combination with the transfer functions of the transmitters=
 and//or receivers.&nbsp; What this means is the CALIBRATION is CRUCIAL!&nb=
sp; Those who do not calibrate, are doomed to fail!!!! &nbsp;&nbsp;I suspec=
t that it is in calibration where the major difference in performance betwe=
en vendors=E2=80=99=E2=80=99 products can be found :^))))</span></span></p>=
=0A<p class=3D"MsoNormal" style=3D"margin:0;padding:0;margin: 0px; padding:=
 0px; font-family: arial; font-size: 10pt;"><span style=3D"color: navy; fon=
t-family: Arial; font-size: small;"><span style=3D"font-size: 10pt; font-fa=
mily: Arial; color: navy;">&nbsp;</span></span></p>=0A<p class=3D"MsoNormal=
" style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: arial=
; font-size: 10pt;"><span style=3D"color: navy; font-family: Arial; font-si=
ze: small;"><span style=3D"font-size: 10pt; font-family: Arial; color: navy=
;">It=E2=80=99s complicated =E2=80=A6 </span></span></p>=0A<p class=3D"MsoN=
ormal" style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: =
arial; font-size: 10pt;"><span style=3D"color: navy; font-family: Arial; fo=
nt-size: small;"><span style=3D"font-size: 10pt; font-family: Arial; color:=
 navy;">&nbsp;</span></span></p>=0A<div>=0A<div class=3D"MsoNormal" style=
=3D"text-align: center;" align=3D"center"><hr align=3D"center" size=3D"3" /=
></div>=0A<p class=3D"MsoNormal" style=3D"margin:0;padding:0;margin: 0px; p=
adding: 0px; font-family: arial; font-size: 10pt;"><strong><span style=3D"f=
ont-family: Tahoma; font-size: small;"><span style=3D"font-size: 10pt; font=
-family: Tahoma; font-weight: bold;">From:</span></span></strong><span styl=
e=3D"font-family: Tahoma; font-size: small;"><span style=3D"font-size: 10pt=
; font-family: Tahoma;"> Bob McMahon [mailto:<a href=3D"mailto:bob.mcmahon@=
broadcom.com" target=3D"_blank">bob.mcmahon@broadcom.com</a>] <br /><strong=
><span style=3D"font-weight: bold;">Sent:</span></strong> Tuesday, August 1=
0, 2021 10:07 AM<br /><strong><span style=3D"font-weight: bold;">To:</span>=
</strong> <a href=3D"mailto:dickroy@alum.mit.edu" target=3D"_blank">dickroy=
@alum.mit.edu</a><br /><strong><span style=3D"font-weight: bold;">Cc:</span=
></strong> Rodney W. Grimes; Cake List; Make-Wifi-fast; <a href=3D"mailto:s=
tarlink@lists.bufferbloat.net" target=3D"_blank">starlink@lists.bufferbloat=
.net</a>; codel; cerowrt-devel; bloat<br /><strong><span style=3D"font-weig=
ht: bold;">Subject:</span></strong> Re: [Starlink] [Cake] [Make-wifi-fast] =
[Cerowrt-devel] Due Aug 2: Internet Quality workshop CFP for the internet a=
rchitecture board</span></span></p>=0A</div>=0A<p class=3D"MsoNormal" style=
=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; font-=
size: 10pt;"><span style=3D"font-family: 'Times New Roman'; font-size: medi=
um;"><span style=3D"font-size: 12pt;">&nbsp;</span></span></p>=0A<div>=0A<p=
 class=3D"MsoNormal" style=3D"margin:0;padding:0;margin: 0px 0px 12pt; padd=
ing: 0px;"><span style=3D"font-family: 'Times New Roman'; font-size: medium=
;"><span style=3D"font-size: 12pt;">The slides show that for WiFi every tra=
nsmission produces a complex frequency&nbsp;response, aka the h-matrix. Thi=
s is valid for that one transmission only.&nbsp; The slides show an amplitu=
de plot for a 3 radio device hence the 9 elements per the h-matrix. It's as=
sumed that the WiFi STA/AP is stationary such that doppler effects aren't a=
 consideration. WiFi isn't a car trying to connect to a cell tower.&nbsp; T=
he plot doesn't show the phase effects but they are included as the output =
of the channel estimate is a complex frequency response. Each RX produces t=
he h-matrix ahead of the MAC. These may not be symmetric in the real world =
but that's ok as transmission&nbsp;and reception is one way only, i.e. the =
treating them as repcripocol and the matrix as hollows symmetric isn't goin=
g to be a "test blocker" as the goal is to be able to use software and prog=
rammable devices to change them in near real time. The current approach use=
d by many using butler matrices to produce off-diagonal&nbsp;effects&nbsp; =
is woefully inadequate. And we're paying about $2.5K per each butler.<br />=
<span id=3D"gmail-m_-4720968264339527894gmail-docs-internal-guid-c23f4170-7=
fff-947a-4651-888888f0a88e"><img id=3D"gmail-m_-4720968264339527894_x0000_i=
1025" src=3D"https://lh3.googleusercontent.com/WqWMFHFPo3ltkxkpoyvgPxgdFxmn=
ZpVvpw0NcCTFhGiOTjolvKbP4NugcE-vw1Q3vk9Z7R04YA1k3kQMvyiR5RhcHOjbXbsRMfjLBY-=
RYML2tFxovzMpTwww5UZiu0Xgxzhi8fFru_g" alt=3D"" width=3D"1200" height=3D"900=
" /><br /></span>Bob</span></span></p>=0A</div>=0A<p class=3D"MsoNormal" st=
yle=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; fo=
nt-size: 10pt;"><span style=3D"font-family: 'Times New Roman'; font-size: m=
edium;"><span style=3D"font-size: 12pt;">&nbsp;</span></span></p>=0A<div>=
=0A<div>=0A<p class=3D"MsoNormal" style=3D"margin:0;padding:0;margin: 0px; =
padding: 0px; font-family: arial; font-size: 10pt;"><span style=3D"font-fam=
ily: 'Times New Roman'; font-size: medium;"><span style=3D"font-size: 12pt;=
">On Tue, Aug 10, 2021 at 9:13 AM Dick Roy &lt;<a href=3D"mailto:dickroy@al=
um.mit.edu" target=3D"_blank">dickroy@alum.mit.edu</a>&gt; wrote:</span></s=
pan></p>=0A</div>=0A<blockquote style=3D"border-top: none; border-right: no=
ne; border-bottom: none; border-left: 1pt solid #cccccc; padding: 0in 0in 0=
in 6pt; margin-left: 4.8pt; margin-right: 0in;">=0A<p class=3D"MsoNormal" s=
tyle=3D"margin:0;padding:0;margin: 0px 0px 12pt; padding: 0px;"><span style=
=3D"font-family: 'Times New Roman'; font-size: medium;"><span style=3D"font=
-size: 12pt;">Well, I hesitate to drag this out, however Maxwell's equation=
s and the<br /> invariance of the laws of physics ensure that all path loss=
 matrices are<br /> reciprocal.&nbsp; What that means is that at any for an=
y given set of fixed<br /> boundary conditions (nothing moving/changing!), =
the propagation loss between<br /> any two points in the domain is the same=
 in both directions. The<br /> "multipathing" in one direction is the same =
in the other because the<br /> two-parameter (angle1,angle2) scattering cro=
ss sections of all objects<br /> (remember they are fixed here) are indepen=
dent of the ordering of the<br /> angles.&nbsp; <br /><br /> Very important=
ly, path loss is NOT the same as the link loss (aka link<br /> budget) whic=
h involves tx power and rx noise figure (and in the case of<br /> smart ant=
ennas, there is a link per spatial stream and how those links are<br /> man=
aged/controlled really matters, but let's just keep it simple for this<br /=
> discussion) and these generally are different on both ends of a link for =
a<br /> variety of reasons. The other very important issue is that of the<b=
r /> ""measurement plane", or "where tx power and rx noise figure are being=
<br /> measured/referenced to and how well the interface at that plane is<b=
r /> "matched".&nbsp; We generally assume that the matching is perfect, how=
ever it<br /> never is. All of these effects contribute to the link loss wh=
ich determines<br /> the strength of the signal coming out of the receiver =
(not the receive<br /> antenna, the receiver) for a given signal strength c=
oming out of the<br /> transmitter (not the transmit antenna, the tx output=
 port).&nbsp; &nbsp;<br /><br /> In the real world, things change.&nbsp; So=
urces and sinks move as do many of the<br /> objects around them.&nbsp; Thi=
s creates a time-varying RF environment, and now<br /> the path loss matrix=
 is a function of time and a few others things, so it<br /> matters WHEN so=
mething is transmitted, and WHEN it is received, and the two<br /> WHEN's a=
re generally separated by "the speed of light" which is a ft/ns<br /> rough=
ly. As important is the fact that it's no longer really a path loss<br /> m=
atrix containing a single scalar because among other things, the time<br />=
 varying environment induces change in the transmitted waveform on its way =
to<br /> the receiver most commonly referred to as the Doppler effect which=
 means<br /> there is a frequency translation/shift for each (multi-)path o=
f which there<br /> are in general an uncountably infinite number because t=
his is a continuous<br /> world in which we live (the space quantization ex=
periment being conducted in<br /> the central US aside:^)). As a consequenc=
e of these physical laws, the<br /> entries in the path loss matrix become =
complex functions of a number of<br /> variables including time. These func=
tions are quite often characterized in<br /> terms of Doppler and delay-spr=
ead, terms used to describe in just a few<br /> parameters the amount of "d=
istortion" a complex function causes. <br /><br /> Hope this helps ... prob=
ably a bit more than you really wanted to know as<br /> queuing theorists, =
but ...<br /><br /> -----Original Message-----<br /> From: Starlink [mailto=
:<a href=3D"mailto:starlink-bounces@lists.bufferbloat.net" target=3D"_blank=
">starlink-bounces@lists.bufferbloat.net</a>] On Behalf Of<br /> Rodney W. =
Grimes<br /> Sent: Tuesday, August 10, 2021 7:10 AM<br /> To: Bob McMahon<b=
r /> Cc: Cake List; Make-Wifi-fast; <a href=3D"mailto:starlink@lists.buffer=
bloat.net" target=3D"_blank">starlink@lists.bufferbloat.net</a>;<br /><a hr=
ef=3D"mailto:codel@lists.bufferbloat.net" target=3D"_blank">codel@lists.buf=
ferbloat.net</a>; cerowrt-devel; bloat<br /> Subject: Re: [Starlink] [Cake]=
 [Make-wifi-fast] [Cerowrt-devel] Due Aug 2:<br /> Internet Quality worksho=
p CFP for the internet architecture board<br /><br /> &gt; The distance mat=
rix defines signal attenuations/loss between pairs.&nbsp; It's<br /> &gt; s=
traightforward to create a distance matrix that has hidden nodes because<br=
 /> &gt; all "signal&nbsp; loss" between pairs is defined.&nbsp; Let's say =
a 120dB<br /> attenuation<br /> &gt; path will cause a node to be hidden as=
 an example.<br /> &gt; <br /> &gt;&nbsp; &nbsp; &nbsp; A&nbsp; &nbsp; B&nb=
sp; &nbsp; &nbsp;C&nbsp; &nbsp; D<br /> &gt; A&nbsp; &nbsp;-&nbsp; &nbsp;35=
&nbsp; &nbsp;120&nbsp; &nbsp;65<br /> &gt; B&nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp;-&nbsp; &nbsp; &nbsp; 65&nbsp; &nbsp;65<br /> &gt; C&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp; &nbsp; &nbsp;65<br /> &gt=
; D&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;-<br /> &gt; <br /> &gt; So in the above, AC are hidden f=
rom each other but nobody else is. It does<br /> &gt; assume symmetry betwe=
en pairs but that's typically true.<br /><br /> That is not correct, symmet=
ry in the RF world, especially wifi, is rare<br /> due to topology issues.&=
nbsp; A high transmitter, A,&nbsp; and a low receiver, B,<br /> has a good =
path A - &gt; B, but a very weak path B -&gt; A.&nbsp; &nbsp;Multipathing<b=
r /> is another major issue that causes assymtry.<br /><br /> &gt; <br /> &=
gt; The RF device takes these distance matrices as settings and calculates =
the<br /> &gt; five branch tree values (as demonstrated in the video). Ther=
e are<br /> &gt; limitations to solutions though but I've found those not t=
o be an issue to<br /> &gt; date. I've been able to produce hidden nodes qu=
ite readily. Add the phase<br /> &gt; shifters and spatial stream powers ca=
n also be affected, but this isn't<br /> &gt; shown in this simple example.=
<br /> &gt; <br /> &gt; Bob<br /> &gt; <br /> &gt; On Mon, Aug 2, 2021 at 8=
:12 PM David Lang &lt;<a href=3D"mailto:david@lang.hm" target=3D"_blank">da=
vid@lang.hm</a>&gt; wrote:<br /> &gt; <br /> &gt; &gt; I guess it depends o=
n what you are intending to test. If you are not<br /> going<br /> &gt; &gt=
; to<br /> &gt; &gt; tinker with any of the over-the-air settings (includin=
g the number of<br /> &gt; &gt; packets<br /> &gt; &gt; transmitted in one =
aggregate), the details of what happen over the air<br /> &gt; &gt; don't<b=
r /> &gt; &gt; matter much.<br /> &gt; &gt;<br /> &gt; &gt; But if you are =
going to be doing any tinkering with what is getting<br /> sent,<br /> &gt;=
 &gt; and<br /> &gt; &gt; you ignore the hidden transmitter type problems, =
you will create a<br /> &gt; &gt; solution that<br /> &gt; &gt; seems to wo=
rk really well in the lab and falls on it's face out in the<br /> &gt; &gt;=
 wild<br /> &gt; &gt; where spectrum overload and hidden transmitters are t=
he norm (at least<br /> in<br /> &gt; &gt; urban<br /> &gt; &gt; areas), no=
t rare corner cases.<br /> &gt; &gt;<br /> &gt; &gt; you don't need to incl=
ude them in every test, but you need to have a way<br /> &gt; &gt; to<br />=
 &gt; &gt; configure your lab to include them before you consider any<br />=
 &gt; &gt; settings/algorithm<br /> &gt; &gt; ready to try in the wild.<br =
/> &gt; &gt;<br /> &gt; &gt; David Lang<br /> &gt; &gt;<br /> &gt; &gt; On =
Mon, 2 Aug 2021, Bob McMahon wrote:<br /> &gt; &gt;<br /> &gt; &gt; &gt; We=
 find four nodes, a primary BSS and an adjunct one quite good for<br /> lot=
s<br /> &gt; &gt; of<br /> &gt; &gt; &gt; testing.&nbsp; The six nodes allo=
ws for a primary BSS and two adjacent<br /> ones.<br /> &gt; &gt; We<br /> =
&gt; &gt; &gt; want to minimize complexity to necessary and sufficient.<br =
/> &gt; &gt; &gt;<br /> &gt; &gt; &gt; The challenge we find is having vari=
ability (e.g. montecarlos) that's<br /> &gt; &gt; &gt; reproducible and has=
 relevant information. Basically, the distance<br /> &gt; &gt; matrices<br =
/> &gt; &gt; &gt; have h-matrices as their elements. Our chips can provide =
these<br /> &gt; &gt; h-matrices.<br /> &gt; &gt; &gt;<br /> &gt; &gt; &gt;=
 The parts for solid state programmable attenuators and phase shifters<br /=
> &gt; &gt; &gt; aren't very expensive. A device that supports a five branc=
h tree and<br /> 2x2<br /> &gt; &gt; &gt; MIMO seems a very good starting p=
oint.<br /> &gt; &gt; &gt;<br /> &gt; &gt; &gt; Bob<br /> &gt; &gt; &gt;<br=
 /> &gt; &gt; &gt; On Mon, Aug 2, 2021 at 4:55 PM Ben Greear &lt;<a href=3D=
"mailto:greearb@candelatech.com" target=3D"_blank">greearb@candelatech.com<=
/a>&gt;<br /> &gt; &gt; wrote:<br /> &gt; &gt; &gt;<br /> &gt; &gt; &gt;&gt=
; On 8/2/21 4:16 PM, David Lang wrote:<br /> &gt; &gt; &gt;&gt;&gt; If you =
are going to setup a test environment for wifi, you need to<br /> &gt; &gt;=
 &gt;&gt; include the ability to make a fe cases that only happen with RF, =
not<br /> &gt; &gt; with<br /> &gt; &gt; &gt;&gt; wired networks and<br /> =
&gt; &gt; &gt;&gt;&gt; are commonly overlooked<br /> &gt; &gt; &gt;&gt;&gt;=
<br /> &gt; &gt; &gt;&gt;&gt; 1. station A can hear station B and C but the=
y cannot hear each<br /> other<br /> &gt; &gt; &gt;&gt;&gt; 2. station A ca=
n hear station B but station B cannot hear station A<br /> 3.<br /> &gt; &g=
t; &gt;&gt; station A can hear that station B is transmitting, but not with=
 a<br /> strong<br /> &gt; &gt; &gt;&gt; enough signal to<br /> &gt; &gt; &=
gt;&gt;&gt; decode the signal (yes in theory you can work around interferen=
ce,<br /> but<br /> &gt; &gt; &gt;&gt; in practice interference is still a =
real thing)<br /> &gt; &gt; &gt;&gt;&gt;<br /> &gt; &gt; &gt;&gt;&gt; David=
 Lang<br /> &gt; &gt; &gt;&gt;&gt;<br /> &gt; &gt; &gt;&gt;<br /> &gt; &gt;=
 &gt;&gt; To add to this, I think you need lots of different station device=
s,<br /> &gt; &gt; &gt;&gt; different capabilities (/n, /ac, /ax, etc)<br /=
> &gt; &gt; &gt;&gt; different numbers of spatial streams, and different di=
stances from<br /> the<br /> &gt; &gt; &gt;&gt; AP.&nbsp; From download que=
ueing perspective, changing<br /> &gt; &gt; &gt;&gt; the capabilities may b=
e sufficient while keeping all stations at same<br /> &gt; &gt; &gt;&gt; di=
stance.&nbsp; This assumes you are not<br /> &gt; &gt; &gt;&gt; actually te=
sting the wifi rate-ctrl alg. itself, so different<br /> throughput<br /> &=
gt; &gt; &gt;&gt; levels for different stations would be enough.<br /> &gt;=
 &gt; &gt;&gt;<br /> &gt; &gt; &gt;&gt; So, a good station emulator setup (=
and/or pile of real stations) and<br /> a<br /> &gt; &gt; few<br /> &gt; &g=
t; &gt;&gt; RF chambers and<br /> &gt; &gt; &gt;&gt; programmable attenuato=
rs and you can test that setup...<br /> &gt; &gt; &gt;&gt;<br /> &gt; &gt; =
&gt;&gt;&nbsp; From upload perspective, I guess same setup would do the job=
.<br /> &gt; &gt; &gt;&gt; Queuing/fairness might depend a bit more on the<=
br /> &gt; &gt; &gt;&gt; station devices, emulated or otherwise, but I gues=
s a clever AP could<br /> &gt; &gt; &gt;&gt; enforce fairness in upstream d=
irection<br /> &gt; &gt; &gt;&gt; too by implementing per-sta queues.<br />=
 &gt; &gt; &gt;&gt;<br /> &gt; &gt; &gt;&gt; Thanks,<br /> &gt; &gt; &gt;&g=
t; Ben<br /> &gt; &gt; &gt;&gt;<br /> &gt; &gt; &gt;&gt; --<br /> &gt; &gt;=
 &gt;&gt; Ben Greear &lt;<a href=3D"mailto:greearb@candelatech.com" target=
=3D"_blank">greearb@candelatech.com</a>&gt;<br /> &gt; &gt; &gt;&gt; Candel=
a Technologies Inc&nbsp; <a href=3D"http://www.candelatech.com" target=3D"_=
blank">http://www.candelatech.com</a><br /> &gt; &gt; &gt;&gt;<br /> &gt; &=
gt; &gt;<br /> &gt; &gt; &gt;<br /> &gt; &gt;<br /> &gt; <br /> &gt; -- <br=
 /> &gt; This electronic communication and the information and any files<br=
 /> transmitted <br /> &gt; with it, or attached to it, are confidential an=
d are intended solely for <br /> &gt; the use of the individual or entity t=
o whom it is addressed and may<br /> contain <br /> &gt; information that i=
s confidential, legally privileged, protected by privacy<br /><br /> &gt; l=
aws, or otherwise restricted from disclosure to anyone else. If you are <br=
 /> &gt; not the intended recipient or the person responsible for deliverin=
g the <br /> &gt; e-mail to the intended recipient, you are hereby notified=
 that any use, <br /> &gt; copying, distributing, dissemination, forwarding=
, printing, or copying of <br /> &gt; this e-mail is strictly prohibited. I=
f you received this e-mail in error, <br /> &gt; please return the e-mail t=
o the sender, delete it from your computer, and <br /> &gt; destroy any pri=
nted copy of it.<br /><br /> [ Charset UTF-8 unsupported, converting... ]<b=
r /> &gt; _______________________________________________<br /> &gt; Starli=
nk mailing list<br /> &gt; <a href=3D"mailto:Starlink@lists.bufferbloat.net=
" target=3D"_blank">Starlink@lists.bufferbloat.net</a><br /> &gt; <a href=
=3D"https://lists.bufferbloat.net/listinfo/starlink" target=3D"_blank">http=
s://lists.bufferbloat.net/listinfo/starlink</a><br /> &gt; <br /> _________=
______________________________________<br /> Starlink mailing list<br /><a =
href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starlink@l=
ists.bufferbloat.net</a><br /><a href=3D"https://lists.bufferbloat.net/list=
info/starlink" target=3D"_blank">https://lists.bufferbloat.net/listinfo/sta=
rlink</a></span></span></p>=0A</blockquote>=0A</div>=0A<p class=3D"MsoNorma=
l" style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: aria=
l; font-size: 10pt;"><span style=3D"font-family: 'Times New Roman'; font-si=
ze: medium;"><span style=3D"font-size: 12pt;"><br /></span></span><span sty=
le=3D"font-size: small;"><span style=3D"font-size: 10pt; background: white;=
">This electronic communication and the information and any files transmitt=
ed with it, or attached to it, are confidential and are intended solely for=
 the use of the individual or entity to whom it is addressed and may contai=
n information that is confidential, legally privileged, protected by privac=
y laws, or otherwise restricted from disclosure to anyone else. If you are =
not the intended recipient or the person responsible for delivering the e-m=
ail to the intended recipient, you are hereby notified that any use, copyin=
g, distributing, dissemination, forwarding, printing, or copying of this e-=
mail is strictly prohibited. If you received this e-mail in error, please r=
eturn the e-mail to the sender, delete it from your computer, and destroy a=
ny printed copy of it.</span></span></p>=0A</div>=0A</div>=0A______________=
_________________________________<br /> Bloat mailing list<br /><a href=3D"=
mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">Bloat@lists.bufferblo=
at.net</a><br /><a rel=3D"noreferrer" href=3D"https://lists.bufferbloat.net=
/listinfo/bloat" target=3D"_blank">https://lists.bufferbloat.net/listinfo/b=
loat</a></blockquote>=0A</div>=0A</div></font>
------=_20210903143335000000_27193--


--===============5905933800312294157==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5905933800312294157==--


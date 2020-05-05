Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D1F1C6290
	for <lists+cake@lfdr.de>; Tue,  5 May 2020 23:02:28 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4BA6B3CB47;
	Tue,  5 May 2020 17:02:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588712540;
	bh=WmMmdkZQW+7xh1H3a8Z1TvG0LPxV9W9G3V0Nj7OYKLM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dD4bWkIqizFRxZoNDokCUOI8mwwsUsriCA6ZPf1wgIHfRnz82Ji7qM2Mqg7yLIH4b
	 Z9zYelsa1+bQnyMGvNAVk2SUPu87XOHiNSg1XKOTmaVQm/p0r4gBDXkGobO/RN2d3N
	 Jq4UzUzxzbO/9DpykuMZVOFi5KAkBK8KJKHmxcPy/2Lb03xWpbEYiEZjI+nzTnOWxY
	 fuFZAFybfFlI4z1/2uOsT9JyfaVFicrEOOI8yvVoXz61RmnNCcZXx4Rm0CW+X2SY/j
	 zMnufzdofyx8flVIv2lE93WMvyxatAbMVgj4izmYyutQ9+VkCaEKMr6v1D+30YPg02
	 MWci1RXAQbOTA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp97.iad3a.emailsrvr.com (smtp97.iad3a.emailsrvr.com
 [173.203.187.97])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4EB983CB38
 for <cake@lists.bufferbloat.net>; Tue,  5 May 2020 17:02:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1588712537;
 bh=8QOJloQS2s19yLIwW/eWXaVASHaMaBBScSYcSZCrNO0=;
 h=Date:Subject:From:To:From;
 b=kj+dbgHAtRuUAI0xKedttryDMuzSKwIoVOPixefTXOJ4VWhAJmZ6VXpR1Xe0eGh/S
 /25sHxg7ilvPqBAVCH66PS5HbL5zOl+fhSPm2bbkhOE/WhZIQTLgeslKEPG4UcxApK
 g0g+6jpR7x9K3Q7caNp8Oy4IJsm7HeS00kR61nb8=
Received: from app27.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp5.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 8AF60257DE;
 Tue,  5 May 2020 17:02:17 -0400 (EDT)
X-Sender-Id: dpreed@deepplum.com
Received: from app27.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140]) by 0.0.0.0:25 (trex/5.7.12);
 Tue, 05 May 2020 17:02:17 -0400
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app27.wa-webapps.iad3a (Postfix) with ESMTP id 74D4321444;
 Tue,  5 May 2020 17:02:17 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Tue, 5 May 2020 17:02:17 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Tue, 5 May 2020 17:02:17 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Sergey Fedorov" <sfedorov@netflix.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <CADN=VJnLagUAWtcRFO7jNL3oGA+vUQ4Z=2tkbYAsm0hyMGqnPQ@mail.gmail.com>
References: <1588518416.66682155@apps.rackspace.com> 
 <CADN=VJnLagUAWtcRFO7jNL3oGA+vUQ4Z=2tkbYAsm0hyMGqnPQ@mail.gmail.com>
Message-ID: <1588712537.474513525@apps.rackspace.com>
X-Mailer: webmail/17.3.10-RC
X-Classification-ID: ff9d4818-3bd4-4964-a0d1-4eb5fb6bed2d-1-1
Subject: Re: [Cake] [Make-wifi-fast] [Bloat] dslreports is no longer free
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
Cc: Michael Richardson <mcr@sandelman.ca>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 Jannie Hanekom <jannie@hanekom.net>
Content-Type: multipart/mixed; boundary="===============1426946242579548870=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1426946242579548870==
Content-Type: multipart/alternative;boundary="----=_20200505170217000000_53062"

------=_20200505170217000000_53062
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AI think the real test should be multiple clients, not multiple sources, =
but coordinating is hard. The middleboxes on the way may treat distinct IP =
host addresses specially, and of course there is an edge case because a sin=
gle NIC by definition never sends two datagrams at once, which distort thin=
gs as you look at edge performance issues.=0A =0AThe classic problem (Jim G=
ettys' "Daddy why is the Internet broken?" when uploading a big file from D=
ad's computer affects the web performance of the kid in the kid's bedroom) =
is an example of a UX issue that *really matters*. At HP Cambridge Research=
 Lab, I used to have the local network management come to my office and yel=
l at me because I was often uploading huge datasets to other HP locations, =
and it absolutely destroyed every other person's web usability when I did. =
(as usual, RTT went to multiple seconds, not affecting my file uploads at a=
ll, but it was the first example of what was later called Bufferbloat that =
got me focused on the issue of overbuffering.) Turned out that that problem=
 was in choosing to use a Frame Relay link with the "don't ever discard pac=
kets" setting.=0AThat was ALSO the first time I encountered "network expert=
s" who absolutely denied that more buffering was bad. They thought that mor=
e buffering was GOOD. This was shocking, after I realized that almost no-on=
e understood congestion was about excess queueing delay.=0A =0AI still see =
badly misconfigured networks that destroy the ability to do Zoom or any oth=
er teleconferencing when someone is uploading files. And for some weird, we=
ird reason, the work done by the Bloat team is constantly disparaged at IET=
F, to the point that their work isn't influencing anyone outside the Linux-=
based-router community. (Including Arista Networks, where they build overbu=
ffered high speed switches and claim that is "a feature", and Andy Bechtols=
heim refuses to listen to me or anyone else about it).=0A =0A =0AOn Monday,=
 May 4, 2020 1:04pm, "Sergey Fedorov" <sfedorov@netflix.com> said:=0A=0A=0A=
=0ASergey - I wasn't assuming anything about [ fast.com ]( http://fast.com/=
 ). The document you shared wasn't clear about the methodology's details he=
re. Others sadly, have actually used ICMP pings in the way I described. I w=
as making a generic comment of concern.=0A =0AThat said, it sounds like wha=
t you are doing is really helpful (esp. given that your measure is aimed at=
 end user experiential qualities).=0ADavid - my apologies, I incorrectly in=
terpreted your statement as being said in context of [ fast.com ]( http://f=
ast.com ) measurements. The blog post linked indeed doesn't provide the lat=
ency measurement details - was written before we added the extra metrics. W=
e'll see if we can publish an update. 1) a clear definition of lag under lo=
ad that is from end-to-end in latency, and involves, ideally, independent t=
raffic from multiple sources through the bottleneck.=0A Curious if by multi=
ple sources you mean multiple clients (devices) or multiple connections sen=
ding data? =0A =0A=0A=0A=0A=0A=0ASERGEY FEDOROV=0ADirector of Engineering=
=0A[ sfedorov@netflix.com ]( mailto:sfedorov@netflix.com )=0A121 Albright W=
ay | Los Gatos, CA 95032=0A=0A=0A=0A=0A =0A=0A=0AOn Sun, May 3, 2020 at 8:0=
7 AM David P. Reed <[ dpreed@deepplum.com ]( mailto:dpreed@deepplum.com )> =
wrote:=0AThanks Sebastian. I do agree that in many cases, reflecting the IC=
MP off the entry device that has the external IP address for the NAT gets m=
ost of the RTT measure, and if there's no queueing built up in the NAT devi=
ce, that's a reasonable measure. But...=0A =0AHowever, if the router has "t=
aken up the queueing delay" by rate limiting its uplink traffic to slightly=
 less than the capacity (as with Cake and other TC shaping that isn't as go=
od as cake), then there is a queue in the TC layer itself. This is what con=
cerns me as a distortion in the measurement that can fool one into thinking=
 the TC shaper is doing a good job, when in fact, lag under load may be qui=
te high from inside the routed domain (the home).=0A =0AAs you point out th=
is unmeasured queueing delay can also be a problem with WiFi inside the hom=
e. But it isn't limited to that.=0A =0AA badly set up shaping/congestion ma=
nagement subsystem inside the NAT can look "very good" in its echo of ICMP =
packets, but be terrible in response time to trivial HTTP requests from ins=
ide, or equally terrible in twitch games and video conferencing.=0A =0ASo, =
for example, for tuning settings with "Cake" it is useless.=0A =0ATo be fai=
r, usually the Access Provider has no control of what is done after the cab=
le is terminated at the home, so as a way to decide if the provider is badl=
y engineering its side, a ping from a server is a reasonable quality measur=
e of the provider. =0A =0ABut not a good measure of the user experience, an=
d if the provider provides the NAT box, even if it has a good shaper in it,=
 like Cake or fq_codel, it will just confuse the user and create the opport=
unity for a "finger pointing" argument where neither side understands what =
is going on.=0A =0AThis is why we need =0A =0A1) a clear definition of lag =
under load that is from end-to-end in latency, and involves, ideally, indep=
endent traffic from multiple sources through the bottleneck.=0A =0A2) ideal=
ly, a better way to localize where the queues are building up and present t=
hat to users and access providers.  The flent graphs are not interpretable =
by most non-experts. What we need is a simple visualization of a sketch-map=
 of the path (like traceroute might provide) with queueing delay measures  =
shown at key points that the user can understand.=0AOn Saturday, May 2, 202=
0 4:19pm, "Sebastian Moeller" <[ moeller0@gmx.de ]( mailto:moeller0@gmx.de =
)> said:=0A=0A=0A=0A> Hi David,=0A> =0A> in principle I agree, a NATed IPv4=
 ICMP probe will be at best reflected at the NAT=0A> router (CPE) (some com=
mercial home gateways do not respond to ICMP echo requests=0A> in the name =
of security theatre). So it is pretty hard to measure the full end to=0A> e=
nd path in that configuration. I believe that IPv6 should make that=0A> eas=
ier/simpler in that NAT hopefully will be out of the path (but let's see wh=
at=0A> ingenuity ISPs will come up with).=0A> Then again, traditionally the=
 relevant bottlenecks often are a) the internet=0A> access link itself and =
there the CPE is in a reasonable position as a reflector on=0A> the other s=
ide of the bottleneck as seen from an internet server, b) the home=0A> netw=
ork between CPE and end-host, often with variable rate wifi, here I agree=
=0A> reflecting echos at the CPE hides part of the issue.=0A> =0A> =0A> =0A=
> > On May 2, 2020, at 19:38, David P. Reed <[ dpreed@deepplum.com ]( mailt=
o:dpreed@deepplum.com )> wrote:=0A> >=0A> > I am still a bit worried about =
properly defining "latency under load" for a=0A> NAT routed situation. If t=
he test is based on ICMP Ping packets *from the server*,=0A> it will NOT be=
 measuring the full path latency, and if the potential congestion=0A> is in=
 the uplink path from the access provider's residential box to the access=
=0A> provider's router/switch, it will NOT measure congestion caused by buf=
ferbloat=0A> reliably on either side, since the bufferbloat will be outside=
 the ICMP Ping=0A> path.=0A> =0A> Puzzled, as i believe it is going to be t=
he residential box that will respond=0A> here, or will it be the AFTRs for =
CG-NAT that reflect the ICMP echo requests?=0A> =0A> >=0A> > I realize that=
 a browser based speed test has to be basically run from the=0A> "server" e=
nd, because browsers are not that good at time measurement on a packet=0A> =
basis. However, there are ways to solve this and avoid the ICMP Ping issue,=
 with a=0A> cooperative server.=0A> >=0A> > I once built a test that fixed =
this issue reasonably well. It carefully=0A> created a TCP based RTT measur=
ement channel (over HTTP) that made the echo have to=0A> traverse the whole=
 end-to-end path, which is the best and only way to accurately=0A> define l=
ag under load from the user's perspective. The client end of an unloaded=0A=
> TCP connection can depend on TCP (properly prepared by getting it past sl=
owstart)=0A> to generate a single packet response.=0A> >=0A> > This "TCP pi=
ng" is thus compatible with getting the end-to-end measurement on=0A> the s=
erver end of a true RTT.=0A> >=0A> > It's like tcp-traceroute tool, in that=
 it tricks anyone in the middle boxes=0A> into thinking this is a real, ser=
ious packet, not an optional low priority=0A> packet.=0A> >=0A> > The same =
issue comes up with non-browser-based techniques for measuring true=0A> lag=
-under-load.=0A> >=0A> > Now as we move HTTP to QUIC, this actually gets ea=
sier to do.=0A> >=0A> > One other opportunity I haven't explored, but which=
 is pregnant with=0A> potential is the use of WebRTC, which runs over UDP i=
nternally. Since JavaScript=0A> has direct access to create WebRTC connecti=
ons (multiple ones), this makes=0A> detailed testing in the browser quite r=
easonable.=0A> >=0A> > And the time measurements can resolve well below 100=
 microseconds, if the JS=0A> is based on modern JIT compilation (Chrome, Fi=
refox, Edge all compile to machine=0A> code speed if the code is restricted=
 and in a loop). Then again, there is Web=0A> Assembly if you want to write=
 C code that runs in the brower fast. WebAssembly is=0A> a low level langua=
ge that compiles to machine code in the browser execution, and=0A> still ha=
s access to all the browser networking facilities.=0A> =0A> Mmmh, according=
 to [ https://github.com/w3c/hr-time/issues/56 ]( https://github.com/w3c/hr=
-time/issues/56 ) due to spectre=0A> side-channel vulnerabilities many brow=
sers seemed to have lowered the timer=0A> resolution, but even the ~1ms res=
olution should be fine for typical RTTs.=0A> =0A> Best Regards=0A> Sebastia=
n=0A> =0A> P.S.: I assume that I simply do not see/understand the full scop=
e of the issue at=0A> hand yet.=0A> =0A> =0A> >=0A> > On Saturday, May 2, 2=
020 12:52pm, "Dave Taht" <[ dave.taht@gmail.com ]( mailto:dave.taht@gmail.c=
om )>=0A> said:=0A> >=0A> > > On Sat, May 2, 2020 at 9:37 AM Benjamin Cronc=
e <[ bcronce@gmail.com ]( mailto:bcronce@gmail.com )>=0A> wrote:=0A> > > >=
=0A> > > > > Fast.com reports my unloaded latency as 4ms, my loaded latency=
=0A> as ~7ms=0A> > >=0A> > > I guess one of my questions is that with a swi=
tch to BBR netflix is=0A> > > going to do pretty well. If [ fast.com ]( htt=
p://fast.com ) is using bbr, well... that=0A> > > excludes much of the curr=
ent side of the internet.=0A> > >=0A> > > > For download, I show 6ms unload=
ed and 6-7 loaded. But for upload=0A> the loaded=0A> > > shows as 7-8 and I=
 see it blip upwards of 12ms. But I am no longer using=0A> any=0A> > > traf=
fic shaping. Any anti-bufferbloat is from my ISP. A graph of the=0A> bloat =
would=0A> > > be nice.=0A> > >=0A> > > The tests do need to last a fairly l=
ong time.=0A> > >=0A> > > > On Sat, May 2, 2020 at 9:51 AM Jannie Hanekom=
=0A> <[ jannie@hanekom.net ]( mailto:jannie@hanekom.net )>=0A> > > wrote:=
=0A> > > >>=0A> > > >> Michael Richardson <[ mcr@sandelman.ca ]( mailto:mcr=
@sandelman.ca )>:=0A> > > >> > Does it find/use my nearest Netflix cache?=
=0A> > > >>=0A> > > >> Thankfully, it appears so. The DSLReports bloat test=
 was=0A> interesting,=0A> > > but=0A> > > >> the jitter on the ~240ms base =
latency from South Africa (and=0A> other parts=0A> > > of=0A> > > >> the wo=
rld) was significant enough that the figures returned=0A> were often=0A> > =
> >> unreliable and largely unusable - at least in my experience.=0A> > > >=
>=0A> > > >> Fast.com reports my unloaded latency as 4ms, my loaded latency=
=0A> as ~7ms=0A> > > and=0A> > > >> mentions servers located in local citie=
s. I finally have a test=0A> I can=0A> > > share=0A> > > >> with local non-=
technical people!=0A> > > >>=0A> > > >> (Agreed, upload test would be nice,=
 but this is a huge step=0A> forward from=0A> > > >> what I had access to b=
efore.)=0A> > > >>=0A> > > >> Jannie Hanekom=0A> > > >>=0A> > > >> ________=
_______________________________________=0A> > > >> Cake mailing list=0A> > =
> >> [ Cake@lists.bufferbloat.net ]( mailto:Cake@lists.bufferbloat.net )=0A=
> > > >> [ https://lists.bufferbloat.net/listinfo/cake ]( https://lists.buf=
ferbloat.net/listinfo/cake )=0A> > > >=0A> > > > __________________________=
_____________________=0A> > > > Cake mailing list=0A> > > > [ Cake@lists.bu=
fferbloat.net ]( mailto:Cake@lists.bufferbloat.net )=0A> > > > [ https://li=
sts.bufferbloat.net/listinfo/cake ]( https://lists.bufferbloat.net/listinfo=
/cake )=0A> > >=0A> > >=0A> > >=0A> > > --=0A> > > Make Music, Not War=0A> =
> >=0A> > > Dave T=C3=A4ht=0A> > > CTO, TekLibre, LLC=0A> > > [ http://www.=
teklibre.com ]( http://www.teklibre.com )=0A> > > Tel: 1-831-435-0729=0A> >=
 > _______________________________________________=0A> > > Cake mailing lis=
t=0A> > > [ Cake@lists.bufferbloat.net ]( mailto:Cake@lists.bufferbloat.net=
 )=0A> > > [ https://lists.bufferbloat.net/listinfo/cake ]( https://lists.b=
ufferbloat.net/listinfo/cake )=0A> > >=0A> > ______________________________=
_________________=0A> > Cake mailing list=0A> > [ Cake@lists.bufferbloat.ne=
t ]( mailto:Cake@lists.bufferbloat.net )=0A> > [ https://lists.bufferbloat.=
net/listinfo/cake ]( https://lists.bufferbloat.net/listinfo/cake )=0A> =0A>=
=0A 
------=_20200505170217000000_53062
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"3"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 12pt; overflow-wrap: break-word;">I think the real test =
should be multiple clients, not multiple sources, but coordinating is hard.=
 The middleboxes on the way may treat distinct IP host addresses specially,=
 and of course there is an edge case because a single NIC by definition nev=
er sends two datagrams at once, which distort things as you look at edge pe=
rformance issues.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; =
font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margi=
n:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: break-wor=
d;">The classic problem (Jim Gettys' "Daddy why is the Internet broken?" wh=
en uploading a big file from Dad's computer affects the web performance of =
the kid in the kid's bedroom) is an example of a UX issue that *really matt=
ers*. At HP Cambridge Research Lab, I used to have the local network manage=
ment come to my office and yell at me because I was often uploading huge da=
tasets to other HP locations, and it absolutely destroyed every other perso=
n's web usability when I did. (as usual, RTT went to multiple seconds, not =
affecting my file uploads at all, but it was the first example of what was =
later called Bufferbloat that got me focused on the issue of overbuffering.=
) Turned out that that problem was in choosing to use a Frame Relay link wi=
th the "don't ever discard packets" setting.</p>=0A<p style=3D"margin:0;pad=
ding:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">Tha=
t was ALSO the first time I encountered "network experts" who absolutely de=
nied that more buffering was bad. They thought that more buffering was GOOD=
. This was shocking, after I realized that almost no-one understood congest=
ion was about excess queueing delay.</p>=0A<p style=3D"margin:0;padding:0;f=
ont-family: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; over=
flow-wrap: break-word;">I still see badly misconfigured networks that destr=
oy the ability to do Zoom or any other teleconferencing when someone is upl=
oading files. And for some weird, weird reason, the work done by the Bloat =
team is constantly disparaged at IETF, to the point that their work isn't i=
nfluencing anyone outside the Linux-based-router community. (Including Aris=
ta Networks, where they build overbuffered high speed switches and claim th=
at is "a feature", and Andy Bechtolsheim refuses to listen to me or anyone =
else about it).</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; fo=
nt-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:=
0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;=
">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size=
: 12pt; overflow-wrap: break-word;">On Monday, May 4, 2020 1:04pm, "Sergey =
Fedorov" &lt;sfedorov@netflix.com&gt; said:<br /><br /></p>=0A<div id=3D"Sa=
feStyles1588711727">=0A<div dir=3D"ltr">=0A<blockquote class=3D"gmail_quote=
" style=3D"margin: 0px 0px 0px 0.8ex; border-left: 1px solid #cccccc; paddi=
ng-left: 1ex;">Sergey - I wasn't assuming anything about&nbsp;<a href=3D"ht=
tp://fast.com/" target=3D"_blank">fast.com</a>. The document you shared was=
n't clear about the methodology's details here. Others sadly, have actually=
 used ICMP pings in the way I described. I was making a generic comment of =
concern.<br />&nbsp;<br />That said, it sounds like what you are doing is r=
eally helpful (esp. given that your measure is aimed at end user experienti=
al qualities).</blockquote>=0A<div>David - my apologies, I incorrectly inte=
rpreted your statement as being said in context of <a href=3D"http://fast.c=
om">fast.com</a> measurements. The blog post linked indeed doesn't provide =
the latency measurement details - was written before we added the extra met=
rics. We'll see if we can publish an update.&nbsp;</div>=0A<blockquote clas=
s=3D"gmail_quote" style=3D"margin: 0px 0px 0px 0.8ex; border-left: 1px soli=
d #cccccc; padding-left: 1ex;"><span style=3D"font-family: arial; font-size=
: 16px;">1) a clear definition of lag under load that is from end-to-end in=
 latency, and involves, ideally, independent traffic from multiple sources =
through the bottleneck.</span></blockquote>=0A<div>&nbsp;Curious if by mult=
iple sources you mean multiple clients (devices) or multiple connections se=
nding data?&nbsp;</div>=0A<div>&nbsp;</div>=0A<div>=0A<div class=3D"gmail_s=
ignature" dir=3D"ltr">=0A<div dir=3D"ltr">=0A<div>=0A<div dir=3D"ltr">=0A<p=
 style=3D"margin:0;padding:0;line-height: 1.38; margin-top: 0pt; margin-bot=
tom: 0pt;" dir=3D"ltr"><span style=3D"font-family: Arial; color: #434343; v=
ertical-align: baseline; white-space: pre-wrap;">SERGEY FEDOROV</span></p>=
=0A<p style=3D"margin:0;padding:0;line-height: 1.38; margin-top: 0pt; margi=
n-bottom: 0pt;" dir=3D"ltr"><span style=3D"font-family: Arial; color: #6666=
66; vertical-align: baseline; white-space: pre-wrap;">Director of Engineeri=
ng</span></p>=0A<p style=3D"margin:0;padding:0;line-height: 1.38; margin-to=
p: 0pt; margin-bottom: 0pt;"><span style=3D"font-family: Arial; color: #666=
666; vertical-align: baseline; white-space: pre-wrap;"><a href=3D"mailto:sf=
edorov@netflix.com" target=3D"_blank">sfedorov@netflix.com</a></span></p>=
=0A<p style=3D"margin:0;padding:0;line-height: 1.38; margin-top: 0pt; margi=
n-bottom: 0pt;"><span style=3D"font-family: Arial; color: #666666; vertical=
-align: baseline; white-space: pre-wrap;">121 Albright Way | Los Gatos, CA =
95032</span></p>=0A<span style=3D"font-size: xx-small;"><span style=3D"font=
-family: Arial; color: #888888; vertical-align: baseline; white-space: pre-=
wrap;"><img style=3D"border: none;" src=3D"https://lh6.googleusercontent.co=
m/sXyXTYq5vF1C3sJhRzJIQ0iYROwE8E1e0R6RY9hhgBZDVe6fLjmy_Y0F6RsQskALepS5t1zXm=
9JcQg-HXYQDbLZ6NS0YBjA3oh7IlhrUnR38ttr667EWpXydNk6U1I7FLO3civYI" alt=3D"" w=
idth=3D"73" height=3D"44" /></span></span></div>=0A</div>=0A</div>=0A</div>=
=0A</div>=0A<div>=0A<div class=3D"gmail_signature" dir=3D"ltr" data-smartma=
il=3D"gmail_signature">=0A<div dir=3D"ltr">=0A<div dir=3D"ltr">=0A<p style=
=3D"margin:0;padding:0;line-height: 1.38; margin-top: 0pt; margin-bottom: 0=
pt;" dir=3D"ltr">&nbsp;</p>=0A</div>=0A</div>=0A</div>=0A</div>=0A</div>=0A=
<br />=0A<div class=3D"gmail_quote">=0A<div class=3D"gmail_attr" dir=3D"ltr=
">On Sun, May 3, 2020 at 8:07 AM David P. Reed &lt;<a href=3D"mailto:dpreed=
@deepplum.com">dpreed@deepplum.com</a>&gt; wrote:</div>=0A<blockquote class=
=3D"gmail_quote" style=3D"margin: 0px 0px 0px 0.8ex; border-left: 1px solid=
 #cccccc; padding-left: 1ex;">=0A<p style=3D"margin:0;padding:0;margin: 0px=
; padding: 0px; font-family: arial; font-size: 12pt;">Thanks Sebastian. I d=
o agree that in many cases, reflecting the ICMP off the entry device that h=
as the external IP address for the NAT gets most of the RTT measure, and if=
 there's no queueing built up in the NAT device, that's a reasonable measur=
e. But...</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; f=
ont-family: arial; font-size: 12pt;">&nbsp;</p>=0A<p style=3D"margin:0;padd=
ing:0;margin: 0px; padding: 0px; font-family: arial; font-size: 12pt;">Howe=
ver, if the router has "taken up the queueing delay" by rate limiting its u=
plink traffic to slightly less than the capacity (as with Cake and other TC=
 shaping that isn't as good as cake), then there is a queue in the TC layer=
 itself. This is what concerns me as a distortion in the measurement that c=
an fool one into thinking the TC shaper is doing a good job, when in fact, =
lag under load may be quite high from inside the routed domain (the home).<=
/p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family=
: arial; font-size: 12pt;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;marg=
in: 0px; padding: 0px; font-family: arial; font-size: 12pt;">As you point o=
ut this unmeasured queueing delay can also be a problem with WiFi inside th=
e home. But it isn't limited to that.</p>=0A<p style=3D"margin:0;padding:0;=
margin: 0px; padding: 0px; font-family: arial; font-size: 12pt;">&nbsp;</p>=
=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: a=
rial; font-size: 12pt;">A badly set up shaping/congestion management subsys=
tem inside the NAT can look "very good" in its echo of ICMP packets, but be=
 terrible in response time to trivial HTTP requests from inside, or equally=
 terrible in twitch games and video conferencing.</p>=0A<p style=3D"margin:=
0;padding:0;margin: 0px; padding: 0px; font-family: arial; font-size: 12pt;=
">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; fo=
nt-family: arial; font-size: 12pt;">So, for example, for tuning settings wi=
th "Cake" it is useless.</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; =
padding: 0px; font-family: arial; font-size: 12pt;">&nbsp;</p>=0A<p style=
=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; font-=
size: 12pt;">To be fair, usually the Access Provider has no control of what=
 is done after the cable is terminated at the home, so as a way to decide i=
f the provider is badly engineering its side, a ping from a server is a rea=
sonable quality measure of the provider.&nbsp;</p>=0A<p style=3D"margin:0;p=
adding:0;margin: 0px; padding: 0px; font-family: arial; font-size: 12pt;">&=
nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-=
family: arial; font-size: 12pt;">But not a good measure of the user experie=
nce, and if the provider provides the NAT box, even if it has a good shaper=
 in it, like Cake or fq_codel, it will just confuse the user and create the=
 opportunity for a "finger pointing" argument where neither side understand=
s what is going on.</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; paddi=
ng: 0px; font-family: arial; font-size: 12pt;">&nbsp;</p>=0A<p style=3D"mar=
gin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; font-size: 1=
2pt;">This is why we need&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin=
: 0px; padding: 0px; font-family: arial; font-size: 12pt;">&nbsp;</p>=0A<p =
style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; =
font-size: 12pt;">1) a clear definition of lag under load that is from end-=
to-end in latency, and involves, ideally, independent traffic from multiple=
 sources through the bottleneck.</p>=0A<p style=3D"margin:0;padding:0;margi=
n: 0px; padding: 0px; font-family: arial; font-size: 12pt;">&nbsp;</p>=0A<p=
 style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: arial;=
 font-size: 12pt;">2) ideally, a better way to localize where the queues ar=
e building up and present that to users and access providers.&nbsp; The fle=
nt graphs are not interpretable by most non-experts. What we need is a simp=
le visualization of a sketch-map of the path (like traceroute might provide=
) with queueing delay measures&nbsp; shown at key points that the user can =
understand.</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px;=
 font-family: arial; font-size: 12pt;">On Saturday, May 2, 2020 4:19pm, "Se=
bastian Moeller" &lt;<a href=3D"mailto:moeller0@gmx.de" target=3D"_blank">m=
oeller0@gmx.de</a>&gt; said:<br /><br /></p>=0A<div id=3D"gmail-m_-64896868=
47968774554SafeStyles1588461883">=0A<p style=3D"margin:0;padding:0;margin: =
0px; padding: 0px; font-family: arial; font-size: 12pt;">&gt; Hi David,<br =
/>&gt; <br />&gt; in principle I agree, a NATed IPv4 ICMP probe will be at =
best reflected at the NAT<br />&gt; router (CPE) (some commercial home gate=
ways do not respond to ICMP echo requests<br />&gt; in the name of security=
 theatre). So it is pretty hard to measure the full end to<br />&gt; end pa=
th in that configuration. I believe that IPv6 should make that<br />&gt; ea=
sier/simpler in that NAT hopefully will be out of the path (but let's see w=
hat<br />&gt; ingenuity ISPs will come up with).<br />&gt; Then again, trad=
itionally the relevant bottlenecks often are a) the internet<br />&gt; acce=
ss link itself and there the CPE is in a reasonable position as a reflector=
 on<br />&gt; the other side of the bottleneck as seen from an internet ser=
ver, b) the home<br />&gt; network between CPE and end-host, often with var=
iable rate wifi, here I agree<br />&gt; reflecting echos at the CPE hides p=
art of the issue.<br />&gt; <br />&gt; <br />&gt; <br />&gt; &gt; On May 2,=
 2020, at 19:38, David P. Reed &lt;<a href=3D"mailto:dpreed@deepplum.com" t=
arget=3D"_blank">dpreed@deepplum.com</a>&gt; wrote:<br />&gt; &gt;<br />&gt=
; &gt; I am still a bit worried about properly defining "latency under load=
" for a<br />&gt; NAT routed situation. If the test is based on ICMP Ping p=
ackets *from the server*,<br />&gt; it will NOT be measuring the full path =
latency, and if the potential congestion<br />&gt; is in the uplink path fr=
om the access provider's residential box to the access<br />&gt; provider's=
 router/switch, it will NOT measure congestion caused by bufferbloat<br />&=
gt; reliably on either side, since the bufferbloat will be outside the ICMP=
 Ping<br />&gt; path.<br />&gt; <br />&gt; Puzzled, as i believe it is goin=
g to be the residential box that will respond<br />&gt; here, or will it be=
 the AFTRs for CG-NAT that reflect the ICMP echo requests?<br />&gt; <br />=
&gt; &gt;<br />&gt; &gt; I realize that a browser based speed test has to b=
e basically run from the<br />&gt; "server" end, because browsers are not t=
hat good at time measurement on a packet<br />&gt; basis. However, there ar=
e ways to solve this and avoid the ICMP Ping issue, with a<br />&gt; cooper=
ative server.<br />&gt; &gt;<br />&gt; &gt; I once built a test that fixed =
this issue reasonably well. It carefully<br />&gt; created a TCP based RTT =
measurement channel (over HTTP) that made the echo have to<br />&gt; traver=
se the whole end-to-end path, which is the best and only way to accurately<=
br />&gt; define lag under load from the user's perspective. The client end=
 of an unloaded<br />&gt; TCP connection can depend on TCP (properly prepar=
ed by getting it past slowstart)<br />&gt; to generate a single packet resp=
onse.<br />&gt; &gt;<br />&gt; &gt; This "TCP ping" is thus compatible with=
 getting the end-to-end measurement on<br />&gt; the server end of a true R=
TT.<br />&gt; &gt;<br />&gt; &gt; It's like tcp-traceroute tool, in that it=
 tricks anyone in the middle boxes<br />&gt; into thinking this is a real, =
serious packet, not an optional low priority<br />&gt; packet.<br />&gt; &g=
t;<br />&gt; &gt; The same issue comes up with non-browser-based techniques=
 for measuring true<br />&gt; lag-under-load.<br />&gt; &gt;<br />&gt; &gt;=
 Now as we move HTTP to QUIC, this actually gets easier to do.<br />&gt; &g=
t;<br />&gt; &gt; One other opportunity I haven't explored, but which is pr=
egnant with<br />&gt; potential is the use of WebRTC, which runs over UDP i=
nternally. Since JavaScript<br />&gt; has direct access to create WebRTC co=
nnections (multiple ones), this makes<br />&gt; detailed testing in the bro=
wser quite reasonable.<br />&gt; &gt;<br />&gt; &gt; And the time measureme=
nts can resolve well below 100 microseconds, if the JS<br />&gt; is based o=
n modern JIT compilation (Chrome, Firefox, Edge all compile to machine<br /=
>&gt; code speed if the code is restricted and in a loop). Then again, ther=
e is Web<br />&gt; Assembly if you want to write C code that runs in the br=
ower fast. WebAssembly is<br />&gt; a low level language that compiles to m=
achine code in the browser execution, and<br />&gt; still has access to all=
 the browser networking facilities.<br />&gt; <br />&gt; Mmmh, according to=
 <a href=3D"https://github.com/w3c/hr-time/issues/56" target=3D"_blank">htt=
ps://github.com/w3c/hr-time/issues/56</a> due to spectre<br />&gt; side-cha=
nnel vulnerabilities many browsers seemed to have lowered the timer<br />&g=
t; resolution, but even the ~1ms resolution should be fine for typical RTTs=
.<br />&gt; <br />&gt; Best Regards<br />&gt; Sebastian<br />&gt; <br />&gt=
; P.S.: I assume that I simply do not see/understand the full scope of the =
issue at<br />&gt; hand yet.<br />&gt; <br />&gt; <br />&gt; &gt;<br />&gt;=
 &gt; On Saturday, May 2, 2020 12:52pm, "Dave Taht" &lt;<a href=3D"mailto:d=
ave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a>&gt;<br />&gt;=
 said:<br />&gt; &gt;<br />&gt; &gt; &gt; On Sat, May 2, 2020 at 9:37 AM Be=
njamin Cronce &lt;<a href=3D"mailto:bcronce@gmail.com" target=3D"_blank">bc=
ronce@gmail.com</a>&gt;<br />&gt; wrote:<br />&gt; &gt; &gt; &gt;<br />&gt;=
 &gt; &gt; &gt; &gt; Fast.com reports my unloaded latency as 4ms, my loaded=
 latency<br />&gt; as ~7ms<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; I guess =
one of my questions is that with a switch to BBR netflix is<br />&gt; &gt; =
&gt; going to do pretty well. If <a href=3D"http://fast.com" target=3D"_bla=
nk">fast.com</a> is using bbr, well... that<br />&gt; &gt; &gt; excludes mu=
ch of the current side of the internet.<br />&gt; &gt; &gt;<br />&gt; &gt; =
&gt; &gt; For download, I show 6ms unloaded and 6-7 loaded. But for upload<=
br />&gt; the loaded<br />&gt; &gt; &gt; shows as 7-8 and I see it blip upw=
ards of 12ms. But I am no longer using<br />&gt; any<br />&gt; &gt; &gt; tr=
affic shaping. Any anti-bufferbloat is from my ISP. A graph of the<br />&gt=
; bloat would<br />&gt; &gt; &gt; be nice.<br />&gt; &gt; &gt;<br />&gt; &g=
t; &gt; The tests do need to last a fairly long time.<br />&gt; &gt; &gt;<b=
r />&gt; &gt; &gt; &gt; On Sat, May 2, 2020 at 9:51 AM Jannie Hanekom<br />=
&gt; &lt;<a href=3D"mailto:jannie@hanekom.net" target=3D"_blank">jannie@han=
ekom.net</a>&gt;<br />&gt; &gt; &gt; wrote:<br />&gt; &gt; &gt; &gt;&gt;<br=
 />&gt; &gt; &gt; &gt;&gt; Michael Richardson &lt;<a href=3D"mailto:mcr@san=
delman.ca" target=3D"_blank">mcr@sandelman.ca</a>&gt;:<br />&gt; &gt; &gt; =
&gt;&gt; &gt; Does it find/use my nearest Netflix cache?<br />&gt; &gt; &gt=
; &gt;&gt;<br />&gt; &gt; &gt; &gt;&gt; Thankfully, it appears so. The DSLR=
eports bloat test was<br />&gt; interesting,<br />&gt; &gt; &gt; but<br />&=
gt; &gt; &gt; &gt;&gt; the jitter on the ~240ms base latency from South Afr=
ica (and<br />&gt; other parts<br />&gt; &gt; &gt; of<br />&gt; &gt; &gt; &=
gt;&gt; the world) was significant enough that the figures returned<br />&g=
t; were often<br />&gt; &gt; &gt; &gt;&gt; unreliable and largely unusable =
- at least in my experience.<br />&gt; &gt; &gt; &gt;&gt;<br />&gt; &gt; &g=
t; &gt;&gt; Fast.com reports my unloaded latency as 4ms, my loaded latency<=
br />&gt; as ~7ms<br />&gt; &gt; &gt; and<br />&gt; &gt; &gt; &gt;&gt; ment=
ions servers located in local cities. I finally have a test<br />&gt; I can=
<br />&gt; &gt; &gt; share<br />&gt; &gt; &gt; &gt;&gt; with local non-tech=
nical people!<br />&gt; &gt; &gt; &gt;&gt;<br />&gt; &gt; &gt; &gt;&gt; (Ag=
reed, upload test would be nice, but this is a huge step<br />&gt; forward =
from<br />&gt; &gt; &gt; &gt;&gt; what I had access to before.)<br />&gt; &=
gt; &gt; &gt;&gt;<br />&gt; &gt; &gt; &gt;&gt; Jannie Hanekom<br />&gt; &gt=
; &gt; &gt;&gt;<br />&gt; &gt; &gt; &gt;&gt; ______________________________=
_________________<br />&gt; &gt; &gt; &gt;&gt; Cake mailing list<br />&gt; =
&gt; &gt; &gt;&gt; <a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"=
_blank">Cake@lists.bufferbloat.net</a><br />&gt; &gt; &gt; &gt;&gt; <a href=
=3D"https://lists.bufferbloat.net/listinfo/cake" target=3D"_blank">https://=
lists.bufferbloat.net/listinfo/cake</a><br />&gt; &gt; &gt; &gt;<br />&gt; =
&gt; &gt; &gt; _______________________________________________<br />&gt; &g=
t; &gt; &gt; Cake mailing list<br />&gt; &gt; &gt; &gt; <a href=3D"mailto:C=
ake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.bufferbloat.net</a>=
<br />&gt; &gt; &gt; &gt; <a href=3D"https://lists.bufferbloat.net/listinfo=
/cake" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br=
 />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &g=
t; --<br />&gt; &gt; &gt; Make Music, Not War<br />&gt; &gt; &gt;<br />&gt;=
 &gt; &gt; Dave T=C3=A4ht<br />&gt; &gt; &gt; CTO, TekLibre, LLC<br />&gt; =
&gt; &gt; <a href=3D"http://www.teklibre.com" target=3D"_blank">http://www.=
teklibre.com</a><br />&gt; &gt; &gt; Tel: 1-831-435-0729<br />&gt; &gt; &gt=
; _______________________________________________<br />&gt; &gt; &gt; Cake =
mailing list<br />&gt; &gt; &gt; <a href=3D"mailto:Cake@lists.bufferbloat.n=
et" target=3D"_blank">Cake@lists.bufferbloat.net</a><br />&gt; &gt; &gt; <a=
 href=3D"https://lists.bufferbloat.net/listinfo/cake" target=3D"_blank">htt=
ps://lists.bufferbloat.net/listinfo/cake</a><br />&gt; &gt; &gt;<br />&gt; =
&gt; _______________________________________________<br />&gt; &gt; Cake ma=
iling list<br />&gt; &gt; <a href=3D"mailto:Cake@lists.bufferbloat.net" tar=
get=3D"_blank">Cake@lists.bufferbloat.net</a><br />&gt; &gt; <a href=3D"htt=
ps://lists.bufferbloat.net/listinfo/cake" target=3D"_blank">https://lists.b=
ufferbloat.net/listinfo/cake</a><br />&gt; <br />&gt;</p>=0A</div>=0A<p sty=
le=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; fon=
t-size: 12pt;">&nbsp;</p>=0A</blockquote>=0A</div>=0A</div></font>
------=_20200505170217000000_53062--


--===============1426946242579548870==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1426946242579548870==--


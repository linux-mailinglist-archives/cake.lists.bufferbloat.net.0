Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1831C2D39
	for <lists+cake@lfdr.de>; Sun,  3 May 2020 17:07:02 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 216593CB39;
	Sun,  3 May 2020 11:07:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588518421;
	bh=uYwLp1rhvbBSTBri6esHxE9pdy+OJ8y/1WAscpaAVC0=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=jFIS+SpsyBRHEg+hfyFrp0HUYsCES3wTI7KJXTnxgsICqtA959KS+W7FeqButCiL5
	 kFWmD37/qy9NizOfGujXFFd9H3eEZUoSepEV50XxY5oXBND3QVkWSJRQ7JL7qvIh3o
	 mVDO6VpWp7QqscQOiPXyLvsI9pLJEoYKK755Ko50lydZ+T+ESNMENhknad5ffOxboT
	 rI9kfA5nOxvalaVQU+FZdGhDbzqoP/qJKOIZu/Hid4i6H1VhJVZYBjjvjUlOpSAVW/
	 fO6J0KM+t2Jit03D1+ajNv5ijl0OpMj6GOUpyzelCpXlkleNDebHpFqQyMOoRWI3ZA
	 D4WpCpq2SZaHg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp115.iad3a.emailsrvr.com (smtp115.iad3a.emailsrvr.com
 [173.203.187.115])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 538AF3B29D
 for <cake@lists.bufferbloat.net>; Sun,  3 May 2020 11:07:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1588518420;
 bh=XqUNM3J5X3kuuAoqivF3ZrXfJ+6B3Mi9lnxTxqD2CiY=;
 h=Date:Subject:From:To:From;
 b=DHSM4L+HPlp4ENDVGq0d8LV+s2cQlbwVMUBzjYwbUSHPOaDRxmVf80Gm/Uo1GnSee
 2ewr0gWP8uF6koGJG6npABabvXqEIC3bUNG6K6CBYurzmjClv7/7qqEWo2QfH0W0kX
 KrbdKWAgeeARptfdi/WMNef7oisGs6OTzxK7Xras=
Received: from app44.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp7.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id E2ADF2BC0;
 Sun,  3 May 2020 11:06:59 -0400 (EDT)
X-Sender-Id: dpreed@deepplum.com
Received: from app44.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140]) by 0.0.0.0:25 (trex/5.7.12);
 Sun, 03 May 2020 11:07:00 -0400
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app44.wa-webapps.iad3a (Postfix) with ESMTP id A3A6960530;
 Sun,  3 May 2020 11:06:56 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Sun, 3 May 2020 11:06:56 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Sun, 3 May 2020 11:06:56 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Sebastian Moeller" <moeller0@gmx.de>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
Message-ID: <1588518416.66682155@apps.rackspace.com>
X-Mailer: webmail/17.3.10-RC
X-Classification-ID: 321812f2-f857-4064-87cf-2192251092dd-1-1
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
 Sergey Fedorov <sfedorov@netflix.com>, Jannie Hanekom <jannie@hanekom.net>
Content-Type: multipart/mixed; boundary="===============2631899788368030027=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2631899788368030027==
Content-Type: multipart/alternative;boundary="----=_20200503110656000000_28394"

------=_20200503110656000000_28394
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AThanks Sebastian. I do agree that in many cases, reflecting the ICMP off=
 the entry device that has the external IP address for the NAT gets most of=
 the RTT measure, and if there's no queueing built up in the NAT device, th=
at's a reasonable measure. But...=0A =0AHowever, if the router has "taken u=
p the queueing delay" by rate limiting its uplink traffic to slightly less =
than the capacity (as with Cake and other TC shaping that isn't as good as =
cake), then there is a queue in the TC layer itself. This is what concerns =
me as a distortion in the measurement that can fool one into thinking the T=
C shaper is doing a good job, when in fact, lag under load may be quite hig=
h from inside the routed domain (the home).=0A =0AAs you point out this unm=
easured queueing delay can also be a problem with WiFi inside the home. But=
 it isn't limited to that.=0A =0AA badly set up shaping/congestion manageme=
nt subsystem inside the NAT can look "very good" in its echo of ICMP packet=
s, but be terrible in response time to trivial HTTP requests from inside, o=
r equally terrible in twitch games and video conferencing.=0A =0ASo, for ex=
ample, for tuning settings with "Cake" it is useless.=0A =0ATo be fair, usu=
ally the Access Provider has no control of what is done after the cable is =
terminated at the home, so as a way to decide if the provider is badly engi=
neering its side, a ping from a server is a reasonable quality measure of t=
he provider. =0A =0ABut not a good measure of the user experience, and if t=
he provider provides the NAT box, even if it has a good shaper in it, like =
Cake or fq_codel, it will just confuse the user and create the opportunity =
for a "finger pointing" argument where neither side understands what is goi=
ng on.=0A =0AThis is why we need =0A =0A1) a clear definition of lag under =
load that is from end-to-end in latency, and involves, ideally, independent=
 traffic from multiple sources through the bottleneck.=0A =0A2) ideally, a =
better way to localize where the queues are building up and present that to=
 users and access providers.  The flent graphs are not interpretable by mos=
t non-experts. What we need is a simple visualization of a sketch-map of th=
e path (like traceroute might provide) with queueing delay measures  shown =
at key points that the user can understand.=0AOn Saturday, May 2, 2020 4:19=
pm, "Sebastian Moeller" <moeller0@gmx.de> said:=0A=0A=0A=0A> Hi David,=0A> =
=0A> in principle I agree, a NATed IPv4 ICMP probe will be at best reflecte=
d at the NAT=0A> router (CPE) (some commercial home gateways do not respond=
 to ICMP echo requests=0A> in the name of security theatre). So it is prett=
y hard to measure the full end to=0A> end path in that configuration. I bel=
ieve that IPv6 should make that=0A> easier/simpler in that NAT hopefully wi=
ll be out of the path (but let's see what=0A> ingenuity ISPs will come up w=
ith).=0A> Then again, traditionally the relevant bottlenecks often are a) t=
he internet=0A> access link itself and there the CPE is in a reasonable pos=
ition as a reflector on=0A> the other side of the bottleneck as seen from a=
n internet server, b) the home=0A> network between CPE and end-host, often =
with variable rate wifi, here I agree=0A> reflecting echos at the CPE hides=
 part of the issue.=0A> =0A> =0A> =0A> > On May 2, 2020, at 19:38, David P.=
 Reed <dpreed@deepplum.com> wrote:=0A> >=0A> > I am still a bit worried abo=
ut properly defining "latency under load" for a=0A> NAT routed situation. I=
f the test is based on ICMP Ping packets *from the server*,=0A> it will NOT=
 be measuring the full path latency, and if the potential congestion=0A> is=
 in the uplink path from the access provider's residential box to the acces=
s=0A> provider's router/switch, it will NOT measure congestion caused by bu=
fferbloat=0A> reliably on either side, since the bufferbloat will be outsid=
e the ICMP Ping=0A> path.=0A> =0A> Puzzled, as i believe it is going to be =
the residential box that will respond=0A> here, or will it be the AFTRs for=
 CG-NAT that reflect the ICMP echo requests?=0A> =0A> >=0A> > I realize tha=
t a browser based speed test has to be basically run from the=0A> "server" =
end, because browsers are not that good at time measurement on a packet=0A>=
 basis. However, there are ways to solve this and avoid the ICMP Ping issue=
, with a=0A> cooperative server.=0A> >=0A> > I once built a test that fixed=
 this issue reasonably well. It carefully=0A> created a TCP based RTT measu=
rement channel (over HTTP) that made the echo have to=0A> traverse the whol=
e end-to-end path, which is the best and only way to accurately=0A> define =
lag under load from the user's perspective. The client end of an unloaded=
=0A> TCP connection can depend on TCP (properly prepared by getting it past=
 slowstart)=0A> to generate a single packet response.=0A> >=0A> > This "TCP=
 ping" is thus compatible with getting the end-to-end measurement on=0A> th=
e server end of a true RTT.=0A> >=0A> > It's like tcp-traceroute tool, in t=
hat it tricks anyone in the middle boxes=0A> into thinking this is a real, =
serious packet, not an optional low priority=0A> packet.=0A> >=0A> > The sa=
me issue comes up with non-browser-based techniques for measuring true=0A> =
lag-under-load.=0A> >=0A> > Now as we move HTTP to QUIC, this actually gets=
 easier to do.=0A> >=0A> > One other opportunity I haven't explored, but wh=
ich is pregnant with=0A> potential is the use of WebRTC, which runs over UD=
P internally. Since JavaScript=0A> has direct access to create WebRTC conne=
ctions (multiple ones), this makes=0A> detailed testing in the browser quit=
e reasonable.=0A> >=0A> > And the time measurements can resolve well below =
100 microseconds, if the JS=0A> is based on modern JIT compilation (Chrome,=
 Firefox, Edge all compile to machine=0A> code speed if the code is restric=
ted and in a loop). Then again, there is Web=0A> Assembly if you want to wr=
ite C code that runs in the brower fast. WebAssembly is=0A> a low level lan=
guage that compiles to machine code in the browser execution, and=0A> still=
 has access to all the browser networking facilities.=0A> =0A> Mmmh, accord=
ing to https://github.com/w3c/hr-time/issues/56 due to spectre=0A> side-cha=
nnel vulnerabilities many browsers seemed to have lowered the timer=0A> res=
olution, but even the ~1ms resolution should be fine for typical RTTs.=0A> =
=0A> Best Regards=0A> Sebastian=0A> =0A> P.S.: I assume that I simply do no=
t see/understand the full scope of the issue at=0A> hand yet.=0A> =0A> =0A>=
 >=0A> > On Saturday, May 2, 2020 12:52pm, "Dave Taht" <dave.taht@gmail.com=
>=0A> said:=0A> >=0A> > > On Sat, May 2, 2020 at 9:37 AM Benjamin Cronce <b=
cronce@gmail.com>=0A> wrote:=0A> > > >=0A> > > > > Fast.com reports my unlo=
aded latency as 4ms, my loaded latency=0A> as ~7ms=0A> > >=0A> > > I guess =
one of my questions is that with a switch to BBR netflix is=0A> > > going t=
o do pretty well. If fast.com is using bbr, well... that=0A> > > excludes m=
uch of the current side of the internet.=0A> > >=0A> > > > For download, I =
show 6ms unloaded and 6-7 loaded. But for upload=0A> the loaded=0A> > > sho=
ws as 7-8 and I see it blip upwards of 12ms. But I am no longer using=0A> a=
ny=0A> > > traffic shaping. Any anti-bufferbloat is from my ISP. A graph of=
 the=0A> bloat would=0A> > > be nice.=0A> > >=0A> > > The tests do need to =
last a fairly long time.=0A> > >=0A> > > > On Sat, May 2, 2020 at 9:51 AM J=
annie Hanekom=0A> <jannie@hanekom.net>=0A> > > wrote:=0A> > > >>=0A> > > >>=
 Michael Richardson <mcr@sandelman.ca>:=0A> > > >> > Does it find/use my ne=
arest Netflix cache?=0A> > > >>=0A> > > >> Thankfully, it appears so. The D=
SLReports bloat test was=0A> interesting,=0A> > > but=0A> > > >> the jitter=
 on the ~240ms base latency from South Africa (and=0A> other parts=0A> > > =
of=0A> > > >> the world) was significant enough that the figures returned=
=0A> were often=0A> > > >> unreliable and largely unusable - at least in my=
 experience.=0A> > > >>=0A> > > >> Fast.com reports my unloaded latency as =
4ms, my loaded latency=0A> as ~7ms=0A> > > and=0A> > > >> mentions servers =
located in local cities. I finally have a test=0A> I can=0A> > > share=0A> =
> > >> with local non-technical people!=0A> > > >>=0A> > > >> (Agreed, uplo=
ad test would be nice, but this is a huge step=0A> forward from=0A> > > >> =
what I had access to before.)=0A> > > >>=0A> > > >> Jannie Hanekom=0A> > > =
>>=0A> > > >> _______________________________________________=0A> > > >> Ca=
ke mailing list=0A> > > >> Cake@lists.bufferbloat.net=0A> > > >> https://li=
sts.bufferbloat.net/listinfo/cake=0A> > > >=0A> > > > _____________________=
__________________________=0A> > > > Cake mailing list=0A> > > > Cake@lists=
.bufferbloat.net=0A> > > > https://lists.bufferbloat.net/listinfo/cake=0A> =
> >=0A> > >=0A> > >=0A> > > --=0A> > > Make Music, Not War=0A> > >=0A> > > =
Dave T=C3=A4ht=0A> > > CTO, TekLibre, LLC=0A> > > http://www.teklibre.com=
=0A> > > Tel: 1-831-435-0729=0A> > > ______________________________________=
_________=0A> > > Cake mailing list=0A> > > Cake@lists.bufferbloat.net=0A> =
> > https://lists.bufferbloat.net/listinfo/cake=0A> > >=0A> > _____________=
__________________________________=0A> > Cake mailing list=0A> > Cake@lists=
.bufferbloat.net=0A> > https://lists.bufferbloat.net/listinfo/cake=0A> =0A>=
=0A 
------=_20200503110656000000_28394
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"3"><p style=3D"margin:0;padding:0;margin: 0; p=
adding: 0; font-family: arial; font-size: 12pt; overflow-wrap: break-word;"=
>Thanks Sebastian. I do agree that in many cases, reflecting the ICMP off t=
he entry device that has the external IP address for the NAT gets most of t=
he RTT measure, and if there's no queueing built up in the NAT device, that=
's a reasonable measure. But...</p>=0A<p style=3D"margin:0;padding:0;margin=
: 0; padding: 0; font-family: arial; font-size: 12pt; overflow-wrap: break-=
word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0; padding: 0; f=
ont-family: arial; font-size: 12pt; overflow-wrap: break-word;">However, if=
 the router has "taken up the queueing delay" by rate limiting its uplink t=
raffic to slightly less than the capacity (as with Cake and other TC shapin=
g that isn't as good as cake), then there is a queue in the TC layer itself=
. This is what concerns me as a distortion in the measurement that can fool=
 one into thinking the TC shaper is doing a good job, when in fact, lag und=
er load may be quite high from inside the routed domain (the home).</p>=0A<=
p style=3D"margin:0;padding:0;margin: 0; padding: 0; font-family: arial; fo=
nt-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:=
0;padding:0;margin: 0; padding: 0; font-family: arial; font-size: 12pt; ove=
rflow-wrap: break-word;">As you point out this unmeasured queueing delay ca=
n also be a problem with WiFi inside the home. But it isn't limited to that=
.</p>=0A<p style=3D"margin:0;padding:0;margin: 0; padding: 0; font-family: =
arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=
=3D"margin:0;padding:0;margin: 0; padding: 0; font-family: arial; font-size=
: 12pt; overflow-wrap: break-word;">A badly set up shaping/congestion manag=
ement subsystem inside the NAT can look "very good" in its echo of ICMP pac=
kets, but be terrible in response time to trivial HTTP requests from inside=
, or equally terrible in twitch games and video conferencing.</p>=0A<p styl=
e=3D"margin:0;padding:0;margin: 0; padding: 0; font-family: arial; font-siz=
e: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padd=
ing:0;margin: 0; padding: 0; font-family: arial; font-size: 12pt; overflow-=
wrap: break-word;">So, for example, for tuning settings with "Cake" it is u=
seless.</p>=0A<p style=3D"margin:0;padding:0;margin: 0; padding: 0; font-fa=
mily: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p s=
tyle=3D"margin:0;padding:0;margin: 0; padding: 0; font-family: arial; font-=
size: 12pt; overflow-wrap: break-word;">To be fair, usually the Access Prov=
ider has no control of what is done after the cable is terminated at the ho=
me, so as a way to decide if the provider is badly engineering its side, a =
ping from a server is a reasonable quality measure of the provider.&nbsp;</=
p>=0A<p style=3D"margin:0;padding:0;margin: 0; padding: 0; font-family: ari=
al; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"m=
argin:0;padding:0;margin: 0; padding: 0; font-family: arial; font-size: 12p=
t; overflow-wrap: break-word;">But not a good measure of the user experienc=
e, and if the provider provides the NAT box, even if it has a good shaper i=
n it, like Cake or fq_codel, it will just confuse the user and create the o=
pportunity for a "finger pointing" argument where neither side understands =
what is going on.</p>=0A<p style=3D"margin:0;padding:0;margin: 0; padding: =
0; font-family: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;<=
/p>=0A<p style=3D"margin:0;padding:0;margin: 0; padding: 0; font-family: ar=
ial; font-size: 12pt; overflow-wrap: break-word;">This is why we need&nbsp;=
</p>=0A<p style=3D"margin:0;padding:0;margin: 0; padding: 0; font-family: a=
rial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D=
"margin:0;padding:0;margin: 0; padding: 0; font-family: arial; font-size: 1=
2pt; overflow-wrap: break-word;">1) a clear definition of lag under load th=
at is from end-to-end in latency, and involves, ideally, independent traffi=
c from multiple sources through the bottleneck.</p>=0A<p style=3D"margin:0;=
padding:0;margin: 0; padding: 0; font-family: arial; font-size: 12pt; overf=
low-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: =
0; padding: 0; font-family: arial; font-size: 12pt; overflow-wrap: break-wo=
rd;">2) ideally, a better way to localize where the queues are building up =
and present that to users and access providers.&nbsp; The flent graphs are =
not interpretable by most non-experts. What we need is a simple visualizati=
on of a sketch-map of the path (like traceroute might provide) with queuein=
g delay measures&nbsp; shown at key points that the user can understand.</p=
>=0A<p style=3D"margin:0;padding:0;margin: 0; padding: 0; font-family: aria=
l; font-size: 12pt; overflow-wrap: break-word;">On Saturday, May 2, 2020 4:=
19pm, "Sebastian Moeller" &lt;moeller0@gmx.de&gt; said:<br /><br /></p>=0A<=
div id=3D"SafeStyles1588461883">=0A<p style=3D"margin:0;padding:0;margin: 0=
; padding: 0; font-family: arial; font-size: 12pt; overflow-wrap: break-wor=
d;">&gt; Hi David,<br />&gt; <br />&gt; in principle I agree, a NATed IPv4 =
ICMP probe will be at best reflected at the NAT<br />&gt; router (CPE) (som=
e commercial home gateways do not respond to ICMP echo requests<br />&gt; i=
n the name of security theatre). So it is pretty hard to measure the full e=
nd to<br />&gt; end path in that configuration. I believe that IPv6 should =
make that<br />&gt; easier/simpler in that NAT hopefully will be out of the=
 path (but let's see what<br />&gt; ingenuity ISPs will come up with).<br /=
>&gt; Then again, traditionally the relevant bottlenecks often are a) the i=
nternet<br />&gt; access link itself and there the CPE is in a reasonable p=
osition as a reflector on<br />&gt; the other side of the bottleneck as see=
n from an internet server, b) the home<br />&gt; network between CPE and en=
d-host, often with variable rate wifi, here I agree<br />&gt; reflecting ec=
hos at the CPE hides part of the issue.<br />&gt; <br />&gt; <br />&gt; <br=
 />&gt; &gt; On May 2, 2020, at 19:38, David P. Reed &lt;dpreed@deepplum.co=
m&gt; wrote:<br />&gt; &gt;<br />&gt; &gt; I am still a bit worried about p=
roperly defining "latency under load" for a<br />&gt; NAT routed situation.=
 If the test is based on ICMP Ping packets *from the server*,<br />&gt; it =
will NOT be measuring the full path latency, and if the potential congestio=
n<br />&gt; is in the uplink path from the access provider's residential bo=
x to the access<br />&gt; provider's router/switch, it will NOT measure con=
gestion caused by bufferbloat<br />&gt; reliably on either side, since the =
bufferbloat will be outside the ICMP Ping<br />&gt; path.<br />&gt; <br />&=
gt; Puzzled, as i believe it is going to be the residential box that will r=
espond<br />&gt; here, or will it be the AFTRs for CG-NAT that reflect the =
ICMP echo requests?<br />&gt; <br />&gt; &gt;<br />&gt; &gt; I realize that=
 a browser based speed test has to be basically run from the<br />&gt; "ser=
ver" end, because browsers are not that good at time measurement on a packe=
t<br />&gt; basis. However, there are ways to solve this and avoid the ICMP=
 Ping issue, with a<br />&gt; cooperative server.<br />&gt; &gt;<br />&gt; =
&gt; I once built a test that fixed this issue reasonably well. It carefull=
y<br />&gt; created a TCP based RTT measurement channel (over HTTP) that ma=
de the echo have to<br />&gt; traverse the whole end-to-end path, which is =
the best and only way to accurately<br />&gt; define lag under load from th=
e user's perspective. The client end of an unloaded<br />&gt; TCP connectio=
n can depend on TCP (properly prepared by getting it past slowstart)<br />&=
gt; to generate a single packet response.<br />&gt; &gt;<br />&gt; &gt; Thi=
s "TCP ping" is thus compatible with getting the end-to-end measurement on<=
br />&gt; the server end of a true RTT.<br />&gt; &gt;<br />&gt; &gt; It's =
like tcp-traceroute tool, in that it tricks anyone in the middle boxes<br /=
>&gt; into thinking this is a real, serious packet, not an optional low pri=
ority<br />&gt; packet.<br />&gt; &gt;<br />&gt; &gt; The same issue comes =
up with non-browser-based techniques for measuring true<br />&gt; lag-under=
-load.<br />&gt; &gt;<br />&gt; &gt; Now as we move HTTP to QUIC, this actu=
ally gets easier to do.<br />&gt; &gt;<br />&gt; &gt; One other opportunity=
 I haven't explored, but which is pregnant with<br />&gt; potential is the =
use of WebRTC, which runs over UDP internally. Since JavaScript<br />&gt; h=
as direct access to create WebRTC connections (multiple ones), this makes<b=
r />&gt; detailed testing in the browser quite reasonable.<br />&gt; &gt;<b=
r />&gt; &gt; And the time measurements can resolve well below 100 microsec=
onds, if the JS<br />&gt; is based on modern JIT compilation (Chrome, Firef=
ox, Edge all compile to machine<br />&gt; code speed if the code is restric=
ted and in a loop). Then again, there is Web<br />&gt; Assembly if you want=
 to write C code that runs in the brower fast. WebAssembly is<br />&gt; a l=
ow level language that compiles to machine code in the browser execution, a=
nd<br />&gt; still has access to all the browser networking facilities.<br =
/>&gt; <br />&gt; Mmmh, according to https://github.com/w3c/hr-time/issues/=
56 due to spectre<br />&gt; side-channel vulnerabilities many browsers seem=
ed to have lowered the timer<br />&gt; resolution, but even the ~1ms resolu=
tion should be fine for typical RTTs.<br />&gt; <br />&gt; Best Regards<br =
/>&gt; Sebastian<br />&gt; <br />&gt; P.S.: I assume that I simply do not s=
ee/understand the full scope of the issue at<br />&gt; hand yet.<br />&gt; =
<br />&gt; <br />&gt; &gt;<br />&gt; &gt; On Saturday, May 2, 2020 12:52pm,=
 "Dave Taht" &lt;dave.taht@gmail.com&gt;<br />&gt; said:<br />&gt; &gt;<br =
/>&gt; &gt; &gt; On Sat, May 2, 2020 at 9:37 AM Benjamin Cronce &lt;bcronce=
@gmail.com&gt;<br />&gt; wrote:<br />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt=
; &gt; &gt; Fast.com reports my unloaded latency as 4ms, my loaded latency<=
br />&gt; as ~7ms<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; I guess one of my=
 questions is that with a switch to BBR netflix is<br />&gt; &gt; &gt; goin=
g to do pretty well. If fast.com is using bbr, well... that<br />&gt; &gt; =
&gt; excludes much of the current side of the internet.<br />&gt; &gt; &gt;=
<br />&gt; &gt; &gt; &gt; For download, I show 6ms unloaded and 6-7 loaded.=
 But for upload<br />&gt; the loaded<br />&gt; &gt; &gt; shows as 7-8 and I=
 see it blip upwards of 12ms. But I am no longer using<br />&gt; any<br />&=
gt; &gt; &gt; traffic shaping. Any anti-bufferbloat is from my ISP. A graph=
 of the<br />&gt; bloat would<br />&gt; &gt; &gt; be nice.<br />&gt; &gt; &=
gt;<br />&gt; &gt; &gt; The tests do need to last a fairly long time.<br />=
&gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; On Sat, May 2, 2020 at 9:51 AM Jann=
ie Hanekom<br />&gt; &lt;jannie@hanekom.net&gt;<br />&gt; &gt; &gt; wrote:<=
br />&gt; &gt; &gt; &gt;&gt;<br />&gt; &gt; &gt; &gt;&gt; Michael Richardso=
n &lt;mcr@sandelman.ca&gt;:<br />&gt; &gt; &gt; &gt;&gt; &gt; Does it find/=
use my nearest Netflix cache?<br />&gt; &gt; &gt; &gt;&gt;<br />&gt; &gt; &=
gt; &gt;&gt; Thankfully, it appears so. The DSLReports bloat test was<br />=
&gt; interesting,<br />&gt; &gt; &gt; but<br />&gt; &gt; &gt; &gt;&gt; the =
jitter on the ~240ms base latency from South Africa (and<br />&gt; other pa=
rts<br />&gt; &gt; &gt; of<br />&gt; &gt; &gt; &gt;&gt; the world) was sign=
ificant enough that the figures returned<br />&gt; were often<br />&gt; &gt=
; &gt; &gt;&gt; unreliable and largely unusable - at least in my experience=
.<br />&gt; &gt; &gt; &gt;&gt;<br />&gt; &gt; &gt; &gt;&gt; Fast.com report=
s my unloaded latency as 4ms, my loaded latency<br />&gt; as ~7ms<br />&gt;=
 &gt; &gt; and<br />&gt; &gt; &gt; &gt;&gt; mentions servers located in loc=
al cities. I finally have a test<br />&gt; I can<br />&gt; &gt; &gt; share<=
br />&gt; &gt; &gt; &gt;&gt; with local non-technical people!<br />&gt; &gt=
; &gt; &gt;&gt;<br />&gt; &gt; &gt; &gt;&gt; (Agreed, upload test would be =
nice, but this is a huge step<br />&gt; forward from<br />&gt; &gt; &gt; &g=
t;&gt; what I had access to before.)<br />&gt; &gt; &gt; &gt;&gt;<br />&gt;=
 &gt; &gt; &gt;&gt; Jannie Hanekom<br />&gt; &gt; &gt; &gt;&gt;<br />&gt; &=
gt; &gt; &gt;&gt; _______________________________________________<br />&gt;=
 &gt; &gt; &gt;&gt; Cake mailing list<br />&gt; &gt; &gt; &gt;&gt; Cake@lis=
ts.bufferbloat.net<br />&gt; &gt; &gt; &gt;&gt; https://lists.bufferbloat.n=
et/listinfo/cake<br />&gt; &gt; &gt; &gt;<br />&gt; &gt; &gt; &gt; ________=
_______________________________________<br />&gt; &gt; &gt; &gt; Cake maili=
ng list<br />&gt; &gt; &gt; &gt; Cake@lists.bufferbloat.net<br />&gt; &gt; =
&gt; &gt; https://lists.bufferbloat.net/listinfo/cake<br />&gt; &gt; &gt;<b=
r />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; --<br />&gt; &gt=
; &gt; Make Music, Not War<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; Dave T=
=C3=A4ht<br />&gt; &gt; &gt; CTO, TekLibre, LLC<br />&gt; &gt; &gt; http://=
www.teklibre.com<br />&gt; &gt; &gt; Tel: 1-831-435-0729<br />&gt; &gt; &gt=
; _______________________________________________<br />&gt; &gt; &gt; Cake =
mailing list<br />&gt; &gt; &gt; Cake@lists.bufferbloat.net<br />&gt; &gt; =
&gt; https://lists.bufferbloat.net/listinfo/cake<br />&gt; &gt; &gt;<br />&=
gt; &gt; _______________________________________________<br />&gt; &gt; Cak=
e mailing list<br />&gt; &gt; Cake@lists.bufferbloat.net<br />&gt; &gt; htt=
ps://lists.bufferbloat.net/listinfo/cake<br />&gt; <br />&gt;</p>=0A</div>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; over=
flow-wrap: break-word;">&nbsp;</p></font>
------=_20200503110656000000_28394--


--===============2631899788368030027==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2631899788368030027==--


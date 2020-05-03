Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEEB1C2D75
	for <lists+cake@lfdr.de>; Sun,  3 May 2020 17:31:59 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 40D353CB39;
	Sun,  3 May 2020 11:31:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588519918;
	bh=UrNt9+34I7lZrvYH4We9tVZ9xZa28aj9Pz7quzBtKaE=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Sq7zd+16YSjyrok8y8K/5BGrYZhLxN64OV9T2Ef++nbjpxkVoIICZXDSVz3fFs+AM
	 Vpm1VEA8Yf8yWk78nJ1+a2AAjZzmWIgjNguIBBDzVB4TyzAWnWgYAq44jUCU8ThgSx
	 aCZ11WKZd53sSouUqAy2A2SOy5hcpvtmxhA6xY5fCrAl9QdYgT9YClj6ocCXiVDrBH
	 KbDHOiXB40pf0aj0opMHUv0KDir5ycKx/XET3ptH3x+nRmVzDSVDKJcP3rdcPk1dxr
	 thyqE84xIscoYEVgtpX9OrOhjBeEXuJwjBCkMzCej4uCJiT0g9B8omsCxxm5BLlbQX
	 EmpHztkMbxcng==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp84.iad3a.emailsrvr.com (smtp84.iad3a.emailsrvr.com
 [173.203.187.84])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8A8013B29D
 for <cake@lists.bufferbloat.net>; Sun,  3 May 2020 11:31:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1588519916;
 bh=kJf2JqdFLE6MQAG1czh2af+tMOvuwM2EPRt4SFFClcU=;
 h=Date:Subject:From:To:From;
 b=DYZcu9FEQNWut18NPwRZO1mTzIjITBAfNJLBXia1xuO0qRjHMqm5FV1L3O6hJlOsU
 jMuV5Ag62aqhIdPAF3GiQuF7a9jlCSHNtx18PejqGoeVaDf6FrgLLOu73BS5I2q+h8
 /DhH+3KJN7NQe+vbFFox4ORJoQ69I8hFz0Cf3aiI=
Received: from app39.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp27.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 22E8E239C8;
 Sun,  3 May 2020 11:31:56 -0400 (EDT)
X-Sender-Id: dpreed@deepplum.com
Received: from app39.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140]) by 0.0.0.0:25 (trex/5.7.12);
 Sun, 03 May 2020 11:31:56 -0400
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app39.wa-webapps.iad3a (Postfix) with ESMTP id 16CE920687;
 Sun,  3 May 2020 11:31:52 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Sun, 3 May 2020 11:31:52 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Sun, 3 May 2020 11:31:52 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Sergey Fedorov" <sfedorov@netflix.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <CADN=VJ=M2Mm5yVBy8m62LPHa+8FpEF5z-8cosADcShiSoTGD+Q@mail.gmail.com>
References: <CAA93jw5HbGBcy6uW0dLbjtLmp_g4SLdK8Ny7G8UvbX_d+H1yXg@mail.gmail.com> 
 <05410663-5E50-4CF5-8ADE-3BBB985E32B1@gmx.de> 
 <mailman.170.1588363787.24343.bloat@lists.bufferbloat.net> 
 <24457.1588370840@localhost> 
 <013601d6201f$04c7db50$0e5791f0$@hanekom.net> 
 <CAJ_ENFFCEdsFzJvkOjxHvuDxh87YtuaHO62XFrf4U_gE2S0Pyw@mail.gmail.com> 
 <CAA93jw72bkssn2CJkrn5XiKhFapSfGDMPN0hF5wOP0z0jX0yzg@mail.gmail.com> 
 <1588441128.39172345@apps.rackspace.com> 
 <CADN=VJ=M2Mm5yVBy8m62LPHa+8FpEF5z-8cosADcShiSoTGD+Q@mail.gmail.com>
Message-ID: <1588519912.070420298@apps.rackspace.com>
X-Mailer: webmail/17.3.10-RC
X-Classification-ID: abcba3cb-02e7-48c7-849d-afcca5f9e3c9-1-1
Subject: [Cake] fast.com quality
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
 Jannie Hanekom <jannie@hanekom.net>, Cake List <cake@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============8714039243639165118=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8714039243639165118==
Content-Type: multipart/alternative;boundary="----=_20200503113152000000_85510"

------=_20200503113152000000_85510
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0ASergey -=0A =0AI am very happy to report that fast.com reports the follo=
wing from my inexpensive Chromebook, over 802.11ac, my Linux-on-Celeron cak=
e entry router setup, through RCN's "Gigabit service". It's a little surpri=
sing, only in how good it is.=0A =0A460 Mbps down/17 Mbps up, 11 ms. unload=
ed, 18 ms. loaded.=0A =0AI'm a little bit curious about the extra 7 ms. due=
 to load. I'm wondering if it is in my WiFi path, or whether Cake is buildi=
ng a queue.=0A =0AThe 11 ms. to South Boston from my Needham home seems a b=
it high. I used to be about 7 msec. away from that switch. But I'm not comp=
laiing.=0AOn Saturday, May 2, 2020 3:00pm, "Sergey Fedorov" <sfedorov@netfl=
ix.com> said:=0A=0A=0A=0A=0A=0ADave, thanks for sharing interesting thought=
s and context. I am still a bit worried about properly defining "latency un=
der load" for a NAT routed situation. If the test is based on ICMP Ping pac=
kets *from the server*,  it will NOT be measuring the full path latency, an=
d if the potential congestion is in the uplink path from the access provide=
r's residential box to the access provider's router/switch, it will NOT mea=
sure congestion caused by bufferbloat reliably on either side, since the bu=
fferbloat will be outside the ICMP Ping path.=0A =0AI realize that a browse=
r based speed test has to be basically run from the "server" end, because b=
rowsers are not that good at time measurement on a packet basis. However, t=
here are ways to solve this and avoid the ICMP Ping issue, with a cooperati=
ve server.=0AThis erroneously assumes that [ fast.com ]( http://fast.com ) =
measures latency from the server side. It does not. The measurements are do=
ne from the client, over http, with a parallel connection(s) to the same or=
 similar set of servers, by sending empty requests over a previously establ=
ished connection (you can see that in the browser web inspector).=0AIt shou=
ld be noted that the value is not precisely the "RTT on a TCP/UDP flow that=
 is loaded with traffic", but "user delay given the presence of heavy paral=
lel flows". With that, some of the challenges you mentioned do not apply.=
=0AIn line with another point I've shared earlier - the goal is to measure =
and explain the user experience, not to be a diagnostic tool showing intern=
al transport metrics.=0A=0A=0A=0A=0A=0A=0ASERGEY FEDOROV=0ADirector of Engi=
neering=0A[ sfedorov@netflix.com ]( mailto:sfedorov@netflix.com )=0A121 Alb=
right Way | Los Gatos, CA 95032=0A=0A=0AOn Sat, May 2, 2020 at 10:38 AM Dav=
id P. Reed <[ dpreed@deepplum.com ]( mailto:dpreed@deepplum.com )> wrote:=
=0AI am still a bit worried about properly defining "latency under load" fo=
r a NAT routed situation. If the test is based on ICMP Ping packets *from t=
he server*,  it will NOT be measuring the full path latency, and if the pot=
ential congestion is in the uplink path from the access provider's resident=
ial box to the access provider's router/switch, it will NOT measure congest=
ion caused by bufferbloat reliably on either side, since the bufferbloat wi=
ll be outside the ICMP Ping path.=0A =0AI realize that a browser based spee=
d test has to be basically run from the "server" end, because browsers are =
not that good at time measurement on a packet basis. However, there are way=
s to solve this and avoid the ICMP Ping issue, with a cooperative server.=
=0A =0AI once built a test that fixed this issue reasonably well. It carefu=
lly created a TCP based RTT measurement channel (over HTTP) that made the e=
cho have to traverse the whole end-to-end path, which is the best and only =
way to accurately define lag under load from the user's perspective. The cl=
ient end of an unloaded TCP connection can depend on TCP (properly prepared=
 by getting it past slowstart) to generate a single packet response.=0A =0A=
This "TCP ping" is thus compatible with getting the end-to-end measurement =
on the server end of a true RTT.=0A =0AIt's like tcp-traceroute tool, in th=
at it tricks anyone in the middle boxes into thinking this is a real, serio=
us packet, not an optional low priority packet.=0A =0AThe same issue comes =
up with non-browser-based techniques for measuring true lag-under-load.=0A =
=0ANow as we move HTTP to QUIC, this actually gets easier to do.=0A =0AOne =
other opportunity I haven't explored, but which is pregnant with potential =
is the use of WebRTC, which runs over UDP internally. Since JavaScript has =
direct access to create WebRTC connections (multiple ones), this makes deta=
iled testing in the browser quite reasonable.=0A =0AAnd the time measuremen=
ts can resolve well below 100 microseconds, if the JS is based on modern JI=
T compilation (Chrome, Firefox, Edge all compile to machine code speed if t=
he code is restricted and in a loop). Then again, there is Web Assembly if =
you want to write C code that runs in the brower fast. WebAssembly is a low=
 level language that compiles to machine code in the browser execution, and=
 still has access to all the browser networking facilities.=0A =0AOn Saturd=
ay, May 2, 2020 12:52pm, "Dave Taht" <[ dave.taht@gmail.com ]( mailto:dave.=
taht@gmail.com )> said:=0A=0A=0A=0A> On Sat, May 2, 2020 at 9:37 AM Benjami=
n Cronce <[ bcronce@gmail.com ]( mailto:bcronce@gmail.com )> wrote:=0A> >=
=0A> > > Fast.com reports my unloaded latency as 4ms, my loaded latency as =
~7ms=0A> =0A> I guess one of my questions is that with a switch to BBR netf=
lix is=0A> going to do pretty well. If [ fast.com ]( http://fast.com ) is u=
sing bbr, well... that=0A> excludes much of the current side of the interne=
t.=0A> =0A> > For download, I show 6ms unloaded and 6-7 loaded. But for upl=
oad the loaded=0A> shows as 7-8 and I see it blip upwards of 12ms. But I am=
 no longer using any=0A> traffic shaping. Any anti-bufferbloat is from my I=
SP. A graph of the bloat would=0A> be nice.=0A> =0A> The tests do need to l=
ast a fairly long time.=0A> =0A> > On Sat, May 2, 2020 at 9:51 AM Jannie Ha=
nekom <[ jannie@hanekom.net ]( mailto:jannie@hanekom.net )>=0A> wrote:=0A> =
>>=0A> >> Michael Richardson <[ mcr@sandelman.ca ]( mailto:mcr@sandelman.ca=
 )>:=0A> >> > Does it find/use my nearest Netflix cache?=0A> >>=0A> >> Than=
kfully, it appears so. The DSLReports bloat test was interesting,=0A> but=
=0A> >> the jitter on the ~240ms base latency from South Africa (and other =
parts=0A> of=0A> >> the world) was significant enough that the figures retu=
rned were often=0A> >> unreliable and largely unusable - at least in my exp=
erience.=0A> >>=0A> >> Fast.com reports my unloaded latency as 4ms, my load=
ed latency as ~7ms=0A> and=0A> >> mentions servers located in local cities.=
 I finally have a test I can=0A> share=0A> >> with local non-technical peop=
le!=0A> >>=0A> >> (Agreed, upload test would be nice, but this is a huge st=
ep forward from=0A> >> what I had access to before.)=0A> >>=0A> >> Jannie H=
anekom=0A> >>=0A> >> _______________________________________________=0A> >>=
 Cake mailing list=0A> >> [ Cake@lists.bufferbloat.net ]( mailto:Cake@lists=
.bufferbloat.net )=0A> >> [ https://lists.bufferbloat.net/listinfo/cake ]( =
https://lists.bufferbloat.net/listinfo/cake )=0A> >=0A> > _________________=
______________________________=0A> > Cake mailing list=0A> > [ Cake@lists.b=
ufferbloat.net ]( mailto:Cake@lists.bufferbloat.net )=0A> > [ https://lists=
.bufferbloat.net/listinfo/cake ]( https://lists.bufferbloat.net/listinfo/ca=
ke )=0A> =0A> =0A> =0A> --=0A> Make Music, Not War=0A> =0A> Dave T=C3=A4ht=
=0A> CTO, TekLibre, LLC=0A> [ http://www.teklibre.com ]( http://www.teklibr=
e.com )=0A> Tel: 1-831-435-0729=0A> _______________________________________=
________=0A> Cake mailing list=0A> [ Cake@lists.bufferbloat.net ]( mailto:C=
ake@lists.bufferbloat.net )=0A> [ https://lists.bufferbloat.net/listinfo/ca=
ke ]( https://lists.bufferbloat.net/listinfo/cake )=0A>
------=_20200503113152000000_85510
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"3"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 12pt; overflow-wrap: break-word;">Sergey -</p>=0A<p styl=
e=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap:=
 break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: aria=
l; font-size: 12pt; overflow-wrap: break-word;">I am very happy to report t=
hat fast.com reports the following from my inexpensive Chromebook, over 802=
.11ac, my Linux-on-Celeron cake entry router setup, through RCN's "Gigabit =
service". It's a little surprising, only in how good it is.</p>=0A<p style=
=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: =
break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial=
; font-size: 12pt; overflow-wrap: break-word;">460 Mbps down/17 Mbps up, 11=
 ms. unloaded, 18 ms. loaded.</p>=0A<p style=3D"margin:0;padding:0;font-fam=
ily: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p st=
yle=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wra=
p: break-word;">I'm a little bit curious about the extra 7 ms. due to load.=
 I'm wondering if it is in my WiFi path, or whether Cake is building a queu=
e.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt=
; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;f=
ont-family: arial; font-size: 12pt; overflow-wrap: break-word;">The 11 ms. =
to South Boston from my Needham home seems a bit high. I used to be about 7=
 msec. away from that switch. But I'm not complaiing.</p>=0A<p style=3D"mar=
gin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: break-w=
ord;">On Saturday, May 2, 2020 3:00pm, "Sergey Fedorov" &lt;sfedorov@netfli=
x.com&gt; said:<br /><br /></p>=0A<div id=3D"SafeStyles1588518935">=0A<div =
dir=3D"ltr">=0A<div>=0A<div>Dave, thanks for sharing interesting thoughts a=
nd context.&nbsp;</div>=0A<blockquote class=3D"gmail_quote" style=3D"margin=
: 0px 0px 0px 0.8ex; border-left: 1px solid #cccccc; padding-left: 1ex;">I =
am still a bit worried about properly defining "latency under load" for a N=
AT routed situation. If the test is based on ICMP Ping packets *from the se=
rver*,&nbsp; it will NOT be measuring the full path latency, and if the pot=
ential congestion is in the uplink path from the access provider's resident=
ial box to the access provider's router/switch, it will NOT measure congest=
ion caused by bufferbloat reliably on either side, since the bufferbloat wi=
ll be outside the ICMP Ping path.<br />&nbsp;<br />I realize that a browser=
 based speed test has to be basically run from the "server" end, because br=
owsers are not that good at time measurement on a packet basis. However, th=
ere are ways to solve this and avoid the ICMP Ping issue, with a cooperativ=
e server.</blockquote>=0A</div>=0A<div>This erroneously assumes that <a hre=
f=3D"http://fast.com">fast.com</a> measures latency from the server side. I=
t does not. The measurements are done from the client, over http, with a pa=
rallel connection(s) to the same or similar set of servers,&nbsp;by sending=
 empty requests over a previously established&nbsp;connection (you can see =
that in the browser web inspector).</div>=0A<div>It should be noted that th=
e value is not precisely the "RTT on a TCP/UDP&nbsp;flow that is loaded wit=
h traffic", but "user delay&nbsp;given the presence of heavy parallel flows=
". With that, some of the challenges&nbsp;you mentioned do not apply.</div>=
=0A<div>In line with another point I've&nbsp;shared earlier - the goal is t=
o measure and explain the user experience, not to be a diagnostic tool show=
ing internal transport metrics.</div>=0A<br />=0A<div>=0A<div class=3D"gmai=
l_signature" dir=3D"ltr" data-smartmail=3D"gmail_signature">=0A<div dir=3D"=
ltr">=0A<div>=0A<div dir=3D"ltr">=0A<p style=3D"margin:0;padding:0;line-hei=
ght: 1.38; margin-top: 0pt; margin-bottom: 0pt;" dir=3D"ltr"><span style=3D=
"font-family: Arial; color: #434343; vertical-align: baseline; white-space:=
 pre-wrap;">SERGEY FEDOROV</span></p>=0A<p style=3D"margin:0;padding:0;line=
-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;" dir=3D"ltr"><span styl=
e=3D"font-family: Arial; color: #666666; vertical-align: baseline; white-sp=
ace: pre-wrap;">Director of Engineering</span></p>=0A<p style=3D"margin:0;p=
adding:0;line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span sty=
le=3D"font-family: Arial; color: #666666; vertical-align: baseline; white-s=
pace: pre-wrap;"><a href=3D"mailto:sfedorov@netflix.com" target=3D"_blank">=
sfedorov@netflix.com</a></span></p>=0A<p style=3D"margin:0;padding:0;line-h=
eight: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-fami=
ly: Arial; color: #666666; vertical-align: baseline; white-space: pre-wrap;=
">121 Albright Way | Los Gatos, CA 95032</span></p>=0A<span><span style=3D"=
font-size: xx-small;"><span style=3D"font-family: Arial; color: #888888; ve=
rtical-align: baseline; white-space: pre-wrap;"><img style=3D"border: none;=
" src=3D"https://lh6.googleusercontent.com/sXyXTYq5vF1C3sJhRzJIQ0iYROwE8E1e=
0R6RY9hhgBZDVe6fLjmy_Y0F6RsQskALepS5t1zXm9JcQg-HXYQDbLZ6NS0YBjA3oh7IlhrUnR3=
8ttr667EWpXydNk6U1I7FLO3civYI" alt=3D"" width=3D"73" height=3D"44" /></span=
></span></span></div>=0A</div>=0A</div>=0A</div>=0A</div>=0A</div>=0A<br />=
=0A<div class=3D"gmail_quote">=0A<div class=3D"gmail_attr" dir=3D"ltr">On S=
at, May 2, 2020 at 10:38 AM David P. Reed &lt;<a href=3D"mailto:dpreed@deep=
plum.com">dpreed@deepplum.com</a>&gt; wrote:</div>=0A<blockquote class=3D"g=
mail_quote" style=3D"margin: 0px 0px 0px 0.8ex; border-left: 1px solid #ccc=
ccc; padding-left: 1ex;">=0A<p style=3D"margin:0;padding:0;margin: 0px; pad=
ding: 0px; font-family: arial; font-size: 12pt;">I am still a bit worried a=
bout properly defining "latency under load" for a NAT routed situation. If =
the test is based on ICMP Ping packets *from the server*,&nbsp; it will NOT=
 be measuring the full path latency, and if the potential congestion is in =
the uplink path from the access provider's residential box to the access pr=
ovider's router/switch, it will NOT measure congestion caused by bufferbloa=
t reliably on either side, since the bufferbloat will be outside the ICMP P=
ing path.</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; f=
ont-family: arial; font-size: 12pt;">&nbsp;</p>=0A<p style=3D"margin:0;padd=
ing:0;margin: 0px; padding: 0px; font-family: arial; font-size: 12pt;">I re=
alize that a browser based speed test has to be basically run from the "ser=
ver" end, because browsers are not that good at time measurement on a packe=
t basis. However, there are ways to solve this and avoid the ICMP Ping issu=
e, with a cooperative server.</p>=0A<p style=3D"margin:0;padding:0;margin: =
0px; padding: 0px; font-family: arial; font-size: 12pt;">&nbsp;</p>=0A<p st=
yle=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; fo=
nt-size: 12pt;">I once built a test that fixed this issue reasonably well. =
It carefully created a TCP based RTT measurement channel (over HTTP) that m=
ade the echo have to traverse the whole end-to-end path, which is the best =
and only way to accurately define lag under load from the user's perspectiv=
e. The client end of an unloaded TCP connection can depend on TCP (properly=
 prepared by getting it past slowstart) to generate a single packet respons=
e.</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-fam=
ily: arial; font-size: 12pt;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;m=
argin: 0px; padding: 0px; font-family: arial; font-size: 12pt;">This "TCP p=
ing" is thus compatible with getting the end-to-end measurement on the serv=
er end of a true RTT.</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; pad=
ding: 0px; font-family: arial; font-size: 12pt;">&nbsp;</p>=0A<p style=3D"m=
argin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; font-size:=
 12pt;">It's like tcp-traceroute tool, in that it tricks anyone in the midd=
le boxes into thinking this is a real, serious packet, not an optional low =
priority packet.</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding:=
 0px; font-family: arial; font-size: 12pt;">&nbsp;</p>=0A<p style=3D"margin=
:0;padding:0;margin: 0px; padding: 0px; font-family: arial; font-size: 12pt=
;">The same issue comes up with non-browser-based techniques for measuring =
true lag-under-load.</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padd=
ing: 0px; font-family: arial; font-size: 12pt;">&nbsp;</p>=0A<p style=3D"ma=
rgin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; font-size: =
12pt;">Now as we move HTTP to QUIC, this actually gets easier to do.</p>=0A=
<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: aria=
l; font-size: 12pt;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0p=
x; padding: 0px; font-family: arial; font-size: 12pt;">One other opportunit=
y I haven't explored, but which is pregnant with potential is the use of We=
bRTC, which runs over UDP internally. Since JavaScript has direct access to=
 create WebRTC connections (multiple ones), this makes detailed testing in =
the browser quite reasonable.</p>=0A<p style=3D"margin:0;padding:0;margin: =
0px; padding: 0px; font-family: arial; font-size: 12pt;">&nbsp;</p>=0A<p st=
yle=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; fo=
nt-size: 12pt;">And the time measurements can resolve well below 100 micros=
econds, if the JS is based on modern JIT compilation (Chrome, Firefox, Edge=
 all compile to machine code speed if the code is restricted and in a loop)=
. Then again, there is Web Assembly if you want to write C code that runs i=
n the brower fast. WebAssembly is a low level language that compiles to mac=
hine code in the browser execution, and still has access to all the browser=
 networking facilities.</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; p=
adding: 0px; font-family: arial; font-size: 12pt;">&nbsp;</p>=0A<p style=3D=
"margin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; font-siz=
e: 12pt;">On Saturday, May 2, 2020 12:52pm, "Dave Taht" &lt;<a href=3D"mail=
to:dave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a>&gt; said:=
<br /><br /></p>=0A<div id=3D"gmail-m_-5707858911278770127SafeStyles1588440=
044">=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-fami=
ly: arial; font-size: 12pt;">&gt; On Sat, May 2, 2020 at 9:37 AM Benjamin C=
ronce &lt;<a href=3D"mailto:bcronce@gmail.com" target=3D"_blank">bcronce@gm=
ail.com</a>&gt; wrote:<br />&gt; &gt;<br />&gt; &gt; &gt; Fast.com reports =
my unloaded latency as 4ms, my loaded latency as ~7ms<br />&gt; <br />&gt; =
I guess one of my questions is that with a switch to BBR netflix is<br />&g=
t; going to do pretty well. If <a href=3D"http://fast.com" target=3D"_blank=
">fast.com</a> is using bbr, well... that<br />&gt; excludes much of the cu=
rrent side of the internet.<br />&gt; <br />&gt; &gt; For download, I show =
6ms unloaded and 6-7 loaded. But for upload the loaded<br />&gt; shows as 7=
-8 and I see it blip upwards of 12ms. But I am no longer using any<br />&gt=
; traffic shaping. Any anti-bufferbloat is from my ISP. A graph of the bloa=
t would<br />&gt; be nice.<br />&gt; <br />&gt; The tests do need to last a=
 fairly long time.<br />&gt; <br />&gt; &gt; On Sat, May 2, 2020 at 9:51 AM=
 Jannie Hanekom &lt;<a href=3D"mailto:jannie@hanekom.net" target=3D"_blank"=
>jannie@hanekom.net</a>&gt;<br />&gt; wrote:<br />&gt; &gt;&gt;<br />&gt; &=
gt;&gt; Michael Richardson &lt;<a href=3D"mailto:mcr@sandelman.ca" target=
=3D"_blank">mcr@sandelman.ca</a>&gt;:<br />&gt; &gt;&gt; &gt; Does it find/=
use my nearest Netflix cache?<br />&gt; &gt;&gt;<br />&gt; &gt;&gt; Thankfu=
lly, it appears so. The DSLReports bloat test was interesting,<br />&gt; bu=
t<br />&gt; &gt;&gt; the jitter on the ~240ms base latency from South Afric=
a (and other parts<br />&gt; of<br />&gt; &gt;&gt; the world) was significa=
nt enough that the figures returned were often<br />&gt; &gt;&gt; unreliabl=
e and largely unusable - at least in my experience.<br />&gt; &gt;&gt;<br /=
>&gt; &gt;&gt; Fast.com reports my unloaded latency as 4ms, my loaded laten=
cy as ~7ms<br />&gt; and<br />&gt; &gt;&gt; mentions servers located in loc=
al cities. I finally have a test I can<br />&gt; share<br />&gt; &gt;&gt; w=
ith local non-technical people!<br />&gt; &gt;&gt;<br />&gt; &gt;&gt; (Agre=
ed, upload test would be nice, but this is a huge step forward from<br />&g=
t; &gt;&gt; what I had access to before.)<br />&gt; &gt;&gt;<br />&gt; &gt;=
&gt; Jannie Hanekom<br />&gt; &gt;&gt;<br />&gt; &gt;&gt; _________________=
______________________________<br />&gt; &gt;&gt; Cake mailing list<br />&g=
t; &gt;&gt; <a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank"=
>Cake@lists.bufferbloat.net</a><br />&gt; &gt;&gt; <a href=3D"https://lists=
.bufferbloat.net/listinfo/cake" target=3D"_blank">https://lists.bufferbloat=
.net/listinfo/cake</a><br />&gt; &gt;<br />&gt; &gt; ______________________=
_________________________<br />&gt; &gt; Cake mailing list<br />&gt; &gt; <=
a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.b=
ufferbloat.net</a><br />&gt; &gt; <a href=3D"https://lists.bufferbloat.net/=
listinfo/cake" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cak=
e</a><br />&gt; <br />&gt; <br />&gt; <br />&gt; --<br />&gt; Make Music, N=
ot War<br />&gt; <br />&gt; Dave T=C3=A4ht<br />&gt; CTO, TekLibre, LLC<br =
/>&gt; <a href=3D"http://www.teklibre.com" target=3D"_blank">http://www.tek=
libre.com</a><br />&gt; Tel: 1-831-435-0729<br />&gt; _____________________=
__________________________<br />&gt; Cake mailing list<br />&gt; <a href=3D=
"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.bufferbloa=
t.net</a><br />&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cake"=
 target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br />&gt=
;</p>=0A</div>=0A</blockquote>=0A</div>=0A</div></font>
------=_20200503113152000000_85510--


--===============8714039243639165118==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8714039243639165118==--


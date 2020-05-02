Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5031C274C
	for <lists+cake@lfdr.de>; Sat,  2 May 2020 19:38:59 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id D18593CB47;
	Sat,  2 May 2020 13:38:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588441132;
	bh=vJaafWBa9JHeCHGTb4C25Gl6jriuLwmMYNzlOfdsdls=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=I7eeJeIiA7EH24AJS0GKscKQFqo1/9N6Qfukd3Ybb4wJrZFXuXFPWRqlmAcpZZuEt
	 pJQFP0xzgxBVkiXjwDu+frwS35sJRbhWQcBpwbgJ6vUDEhW3/XO2XM3frJxIO4w4sz
	 xaTKIOSokQJiEyUf/QoI6A4YKuo57Dkv9FHCKQggi5Cklz13ZTm/H1uQlOC5Z2wbA1
	 llkSQ8UCevIRS6hYo4tnikDMhbJZ5z7ZKOSCasLR/VnZ2f1zzjkAm8CxNwM0jNAmq9
	 c+w7vNwxyzEYnMhnupVTto08DJNJC4nFkk2/6uCkyNpPrD3GKvFX4gt/AAj8Su66Du
	 ZsqGvzWiD+zhQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp120.iad3a.emailsrvr.com (smtp120.iad3a.emailsrvr.com
 [173.203.187.120])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 850873CB38
 for <cake@lists.bufferbloat.net>; Sat,  2 May 2020 13:38:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1588441131;
 bh=v2BH94fM0b6+Q3oThv6ExqKHi7Y8/b0GkgW492TuiFg=;
 h=Date:Subject:From:To:From;
 b=gXyFhZvr1Cd7ywRmXng/rvp56e6eZtfMZKR4yGQUCthFpgGOtQD/t+UoHrIpT06sx
 K5UlQAJdnu0KYoEIdZsyhErpCN2JY4kkOtxu8d53ULC9MklCE12bxAEAqs1Abfpzns
 cCg1liH1ASsXEgVjZ3rZoAuYVyN0gEGaMGd60CEg=
Received: from app46.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp16.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 1AE2A459B;
 Sat,  2 May 2020 13:38:51 -0400 (EDT)
X-Sender-Id: dpreed@deepplum.com
Received: from app46.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140]) by 0.0.0.0:25 (trex/5.7.12);
 Sat, 02 May 2020 13:38:51 -0400
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app46.wa-webapps.iad3a (Postfix) with ESMTP id 604D9C0051;
 Sat,  2 May 2020 13:38:48 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Sat, 2 May 2020 13:38:48 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Sat, 2 May 2020 13:38:48 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Dave Taht" <dave.taht@gmail.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <CAA93jw72bkssn2CJkrn5XiKhFapSfGDMPN0hF5wOP0z0jX0yzg@mail.gmail.com>
References: <CAA93jw5HbGBcy6uW0dLbjtLmp_g4SLdK8Ny7G8UvbX_d+H1yXg@mail.gmail.com> 
 <05410663-5E50-4CF5-8ADE-3BBB985E32B1@gmx.de> 
 <mailman.170.1588363787.24343.bloat@lists.bufferbloat.net> 
 <24457.1588370840@localhost> 
 <013601d6201f$04c7db50$0e5791f0$@hanekom.net> 
 <CAJ_ENFFCEdsFzJvkOjxHvuDxh87YtuaHO62XFrf4U_gE2S0Pyw@mail.gmail.com> 
 <CAA93jw72bkssn2CJkrn5XiKhFapSfGDMPN0hF5wOP0z0jX0yzg@mail.gmail.com>
Message-ID: <1588441128.39172345@apps.rackspace.com>
X-Mailer: webmail/17.3.10-RC
X-Classification-ID: b6309cc5-91d3-4b55-a0dd-8b2a21c027a9-1-1
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
 Jannie Hanekom <jannie@hanekom.net>, Cake List <cake@lists.bufferbloat.net>,
 Sergey Fedorov <sfedorov@netflix.com>, bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============4884770235896945015=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4884770235896945015==
Content-Type: multipart/alternative;boundary="----=_20200502133848000000_64882"

------=_20200502133848000000_64882
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

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
ay, May 2, 2020 12:52pm, "Dave Taht" <dave.taht@gmail.com> said:=0A=0A=0A=
=0A> On Sat, May 2, 2020 at 9:37 AM Benjamin Cronce <bcronce@gmail.com> wro=
te:=0A> >=0A> > > Fast.com reports my unloaded latency as 4ms, my loaded la=
tency as ~7ms=0A> =0A> I guess one of my questions is that with a switch to=
 BBR netflix is=0A> going to do pretty well. If fast.com is using bbr, well=
... that=0A> excludes much of the current side of the internet.=0A> =0A> > =
For download, I show 6ms unloaded and 6-7 loaded. But for upload the loaded=
=0A> shows as 7-8 and I see it blip upwards of 12ms. But I am no longer usi=
ng any=0A> traffic shaping. Any anti-bufferbloat is from my ISP. A graph of=
 the bloat would=0A> be nice.=0A> =0A> The tests do need to last a fairly l=
ong time.=0A> =0A> > On Sat, May 2, 2020 at 9:51 AM Jannie Hanekom <jannie@=
hanekom.net>=0A> wrote:=0A> >>=0A> >> Michael Richardson <mcr@sandelman.ca>=
:=0A> >> > Does it find/use my nearest Netflix cache?=0A> >>=0A> >> Thankfu=
lly, it appears so. The DSLReports bloat test was interesting,=0A> but=0A> =
>> the jitter on the ~240ms base latency from South Africa (and other parts=
=0A> of=0A> >> the world) was significant enough that the figures returned =
were often=0A> >> unreliable and largely unusable - at least in my experien=
ce.=0A> >>=0A> >> Fast.com reports my unloaded latency as 4ms, my loaded la=
tency as ~7ms=0A> and=0A> >> mentions servers located in local cities. I fi=
nally have a test I can=0A> share=0A> >> with local non-technical people!=
=0A> >>=0A> >> (Agreed, upload test would be nice, but this is a huge step =
forward from=0A> >> what I had access to before.)=0A> >>=0A> >> Jannie Hane=
kom=0A> >>=0A> >> _______________________________________________=0A> >> Ca=
ke mailing list=0A> >> Cake@lists.bufferbloat.net=0A> >> https://lists.buff=
erbloat.net/listinfo/cake=0A> >=0A> > _____________________________________=
__________=0A> > Cake mailing list=0A> > Cake@lists.bufferbloat.net=0A> > h=
ttps://lists.bufferbloat.net/listinfo/cake=0A> =0A> =0A> =0A> --=0A> Make M=
usic, Not War=0A> =0A> Dave T=C3=A4ht=0A> CTO, TekLibre, LLC=0A> http://www=
.teklibre.com=0A> Tel: 1-831-435-0729=0A> _________________________________=
______________=0A> Cake mailing list=0A> Cake@lists.bufferbloat.net=0A> htt=
ps://lists.bufferbloat.net/listinfo/cake=0A> 
------=_20200502133848000000_64882
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"3"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 12pt; overflow-wrap: break-word;">I am still a bit worri=
ed about properly defining "latency under load" for a NAT routed situation.=
 If the test is based on ICMP Ping packets *from the server*,&nbsp; it will=
 NOT be measuring the full path latency, and if the potential congestion is=
 in the uplink path from the access provider's residential box to the acces=
s provider's router/switch, it will NOT measure congestion caused by buffer=
bloat reliably on either side, since the bufferbloat will be outside the IC=
MP Ping path.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font=
-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;=
padding:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">=
I realize that a browser based speed test has to be basically run from the =
"server" end, because browsers are not that good at time measurement on a p=
acket basis. However, there are ways to solve this and avoid the ICMP Ping =
issue, with a cooperative server.</p>=0A<p style=3D"margin:0;padding:0;font=
-family: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<=
p style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow=
-wrap: break-word;">I once built a test that fixed this issue reasonably we=
ll. It carefully created a TCP based RTT measurement channel (over HTTP) th=
at made the echo have to traverse the whole end-to-end path, which is the b=
est and only way to accurately define lag under load from the user's perspe=
ctive. The client end of an unloaded TCP connection can depend on TCP (prop=
erly prepared by getting it past slowstart) to generate a single packet res=
ponse.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: =
12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding=
:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">This "T=
CP ping" is thus compatible with getting the end-to-end measurement on the =
server end of a true RTT.</p>=0A<p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=
=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: =
break-word;">It's like tcp-traceroute tool, in that it tricks anyone in the=
 middle boxes into thinking this is a real, serious packet, not an optional=
 low priority packet.</p>=0A<p style=3D"margin:0;padding:0;font-family: ari=
al; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"m=
argin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: break=
-word;">The same issue comes up with non-browser-based techniques for measu=
ring true lag-under-load.</p>=0A<p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=
=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: =
break-word;">Now as we move HTTP to QUIC, this actually gets easier to do.<=
/p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; o=
verflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font=
-family: arial; font-size: 12pt; overflow-wrap: break-word;">One other oppo=
rtunity I haven't explored, but which is pregnant with potential is the use=
 of WebRTC, which runs over UDP internally. Since JavaScript has direct acc=
ess to create WebRTC connections (multiple ones), this makes detailed testi=
ng in the browser quite reasonable.</p>=0A<p style=3D"margin:0;padding:0;fo=
nt-family: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; over=
flow-wrap: break-word;">And the time measurements can resolve well below 10=
0 microseconds, if the JS is based on modern JIT compilation (Chrome, Firef=
ox, Edge all compile to machine code speed if the code is restricted and in=
 a loop). Then again, there is Web Assembly if you want to write C code tha=
t runs in the brower fast. WebAssembly is a low level language that compile=
s to machine code in the browser execution, and still has access to all the=
 browser networking facilities.</p>=0A<p style=3D"margin:0;padding:0;font-f=
amily: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-w=
rap: break-word;">On Saturday, May 2, 2020 12:52pm, "Dave Taht" &lt;dave.ta=
ht@gmail.com&gt; said:<br /><br /></p>=0A<div id=3D"SafeStyles1588440044">=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; over=
flow-wrap: break-word;">&gt; On Sat, May 2, 2020 at 9:37 AM Benjamin Cronce=
 &lt;bcronce@gmail.com&gt; wrote:<br />&gt; &gt;<br />&gt; &gt; &gt; Fast.c=
om reports my unloaded latency as 4ms, my loaded latency as ~7ms<br />&gt; =
<br />&gt; I guess one of my questions is that with a switch to BBR netflix=
 is<br />&gt; going to do pretty well. If fast.com is using bbr, well... th=
at<br />&gt; excludes much of the current side of the internet.<br />&gt; <=
br />&gt; &gt; For download, I show 6ms unloaded and 6-7 loaded. But for up=
load the loaded<br />&gt; shows as 7-8 and I see it blip upwards of 12ms. B=
ut I am no longer using any<br />&gt; traffic shaping. Any anti-bufferbloat=
 is from my ISP. A graph of the bloat would<br />&gt; be nice.<br />&gt; <b=
r />&gt; The tests do need to last a fairly long time.<br />&gt; <br />&gt;=
 &gt; On Sat, May 2, 2020 at 9:51 AM Jannie Hanekom &lt;jannie@hanekom.net&=
gt;<br />&gt; wrote:<br />&gt; &gt;&gt;<br />&gt; &gt;&gt; Michael Richards=
on &lt;mcr@sandelman.ca&gt;:<br />&gt; &gt;&gt; &gt; Does it find/use my ne=
arest Netflix cache?<br />&gt; &gt;&gt;<br />&gt; &gt;&gt; Thankfully, it a=
ppears so. The DSLReports bloat test was interesting,<br />&gt; but<br />&g=
t; &gt;&gt; the jitter on the ~240ms base latency from South Africa (and ot=
her parts<br />&gt; of<br />&gt; &gt;&gt; the world) was significant enough=
 that the figures returned were often<br />&gt; &gt;&gt; unreliable and lar=
gely unusable - at least in my experience.<br />&gt; &gt;&gt;<br />&gt; &gt=
;&gt; Fast.com reports my unloaded latency as 4ms, my loaded latency as ~7m=
s<br />&gt; and<br />&gt; &gt;&gt; mentions servers located in local cities=
. I finally have a test I can<br />&gt; share<br />&gt; &gt;&gt; with local=
 non-technical people!<br />&gt; &gt;&gt;<br />&gt; &gt;&gt; (Agreed, uploa=
d test would be nice, but this is a huge step forward from<br />&gt; &gt;&g=
t; what I had access to before.)<br />&gt; &gt;&gt;<br />&gt; &gt;&gt; Jann=
ie Hanekom<br />&gt; &gt;&gt;<br />&gt; &gt;&gt; __________________________=
_____________________<br />&gt; &gt;&gt; Cake mailing list<br />&gt; &gt;&g=
t; Cake@lists.bufferbloat.net<br />&gt; &gt;&gt; https://lists.bufferbloat.=
net/listinfo/cake<br />&gt; &gt;<br />&gt; &gt; ___________________________=
____________________<br />&gt; &gt; Cake mailing list<br />&gt; &gt; Cake@l=
ists.bufferbloat.net<br />&gt; &gt; https://lists.bufferbloat.net/listinfo/=
cake<br />&gt; <br />&gt; <br />&gt; <br />&gt; --<br />&gt; Make Music, No=
t War<br />&gt; <br />&gt; Dave T=C3=A4ht<br />&gt; CTO, TekLibre, LLC<br /=
>&gt; http://www.teklibre.com<br />&gt; Tel: 1-831-435-0729<br />&gt; _____=
__________________________________________<br />&gt; Cake mailing list<br /=
>&gt; Cake@lists.bufferbloat.net<br />&gt; https://lists.bufferbloat.net/li=
stinfo/cake<br />&gt; </p>=0A</div></font>
------=_20200502133848000000_64882--


--===============4884770235896945015==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4884770235896945015==--


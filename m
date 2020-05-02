Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF4C1C28E1
	for <lists+cake@lfdr.de>; Sun,  3 May 2020 01:23:40 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 0D4B73CB43;
	Sat,  2 May 2020 19:23:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588461818;
	bh=4weYHbOtLxrVdxWawzEgDzBxw1n7scAphf7GF8KI1I0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QDp/qEGrW5YiT7ljOfxrWge7N0J5hgCTVi3SUFpTBkbl4/FuhAxtEwwLmMsOFV/ck
	 r/YLPPIee3lxs2jCBWnODPbUUPp+7pWF2AJmXF+voKzv+MKbqnjozARpWlWwr7OKzZ
	 JpvANufXcIMstgO3W2Kd1g35CP7cf1Y0+GG48EMGE2g2nE6z9zooEygF7HEr1DGAKa
	 u+SzjDKuza9Hod/prVprTJbAGZ/VyB3E5Rt6FwNfM05dKTpIikMPBSxsbqP42DtAoO
	 099IAyMudF08U46kHHNhfdUphZCvk5ethxa7dFmbmON3/sVEZNhGlQcEI0y99DxiO9
	 +tbUE46xlYb+Q==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp98.iad3a.emailsrvr.com (smtp98.iad3a.emailsrvr.com
 [173.203.187.98])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7A2113B2A4
 for <cake@lists.bufferbloat.net>; Sat,  2 May 2020 19:23:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1588461816;
 bh=z0yrFaL7eMbONrnWn77BijNgCpiQ1mbGP4LG2U8uBzE=;
 h=Date:Subject:From:To:From;
 b=nUFtJDXzjjarKXsvz4eqJqD4rFrsYVybT0N/F2W3ucOQ7jg1RidKLKy5JlF4103+W
 +nHKiofxegvELVnlqx74f/J5mN4PX8WEeNqS7qEPQm97fJ0s63CuIzVEnbgRznuxgP
 zYkMvEJqlD+3WM0jX/fgJOGlvvKmVeHREwvf67hk=
Received: from app66.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp37.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id ED28E3D89;
 Sat,  2 May 2020 19:23:35 -0400 (EDT)
X-Sender-Id: dpreed@deepplum.com
Received: from app66.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140]) by 0.0.0.0:25 (trex/5.7.12);
 Sat, 02 May 2020 19:23:36 -0400
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app66.wa-webapps.iad3a (Postfix) with ESMTP id 530B56010B;
 Sat,  2 May 2020 19:23:33 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Sat, 2 May 2020 19:23:33 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Sat, 2 May 2020 19:23:33 -0400 (EDT)
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
Message-ID: <1588461813.33611935@apps.rackspace.com>
X-Mailer: webmail/17.3.10-RC
X-Classification-ID: 2888d7f0-a44a-469e-ae3b-c1140c5b52e3-1-1
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
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============5009565644140900660=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5009565644140900660==
Content-Type: multipart/alternative;boundary="----=_20200502192333000000_52261"

------=_20200502192333000000_52261
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0ASergey - I wasn't assuming anything about fast.com. The document you sha=
red wasn't clear about the methodology's details here. Others sadly, have a=
ctually used ICMP pings in the way I described. I was making a generic comm=
ent of concern.=0A =0AThat said, it sounds like what you are doing is reall=
y helpful (esp. given that your measure is aimed at end user experiential q=
ualities).=0A =0AGood luck!=0A =0A =0AOn Saturday, May 2, 2020 3:00pm, "Ser=
gey Fedorov" <sfedorov@netflix.com> said:=0A=0A=0A=0A=0A=0ADave, thanks for=
 sharing interesting thoughts and context. I am still a bit worried about p=
roperly defining "latency under load" for a NAT routed situation. If the te=
st is based on ICMP Ping packets *from the server*,  it will NOT be measuri=
ng the full path latency, and if the potential congestion is in the uplink =
path from the access provider's residential box to the access provider's ro=
uter/switch, it will NOT measure congestion caused by bufferbloat reliably =
on either side, since the bufferbloat will be outside the ICMP Ping path.=
=0A =0AI realize that a browser based speed test has to be basically run fr=
om the "server" end, because browsers are not that good at time measurement=
 on a packet basis. However, there are ways to solve this and avoid the ICM=
P Ping issue, with a cooperative server.=0AThis erroneously assumes that [ =
fast.com ]( http://fast.com ) measures latency from the server side. It doe=
s not. The measurements are done from the client, over http, with a paralle=
l connection(s) to the same or similar set of servers, by sending empty req=
uests over a previously established connection (you can see that in the bro=
wser web inspector).=0AIt should be noted that the value is not precisely t=
he "RTT on a TCP/UDP flow that is loaded with traffic", but "user delay giv=
en the presence of heavy parallel flows". With that, some of the challenges=
 you mentioned do not apply.=0AIn line with another point I've shared earli=
er - the goal is to measure and explain the user experience, not to be a di=
agnostic tool showing internal transport metrics.=0A=0A=0A=0A=0A=0A=0ASERGE=
Y FEDOROV=0ADirector of Engineering=0A[ sfedorov@netflix.com ]( mailto:sfed=
orov@netflix.com )=0A121 Albright Way | Los Gatos, CA 95032=0A=0A=0AOn Sat,=
 May 2, 2020 at 10:38 AM David P. Reed <[ dpreed@deepplum.com ]( mailto:dpr=
eed@deepplum.com )> wrote:=0AI am still a bit worried about properly defini=
ng "latency under load" for a NAT routed situation. If the test is based on=
 ICMP Ping packets *from the server*,  it will NOT be measuring the full pa=
th latency, and if the potential congestion is in the uplink path from the =
access provider's residential box to the access provider's router/switch, i=
t will NOT measure congestion caused by bufferbloat reliably on either side=
, since the bufferbloat will be outside the ICMP Ping path.=0A =0AI realize=
 that a browser based speed test has to be basically run from the "server" =
end, because browsers are not that good at time measurement on a packet bas=
is. However, there are ways to solve this and avoid the ICMP Ping issue, wi=
th a cooperative server.=0A =0AI once built a test that fixed this issue re=
asonably well. It carefully created a TCP based RTT measurement channel (ov=
er HTTP) that made the echo have to traverse the whole end-to-end path, whi=
ch is the best and only way to accurately define lag under load from the us=
er's perspective. The client end of an unloaded TCP connection can depend o=
n TCP (properly prepared by getting it past slowstart) to generate a single=
 packet response.=0A =0AThis "TCP ping" is thus compatible with getting the=
 end-to-end measurement on the server end of a true RTT.=0A =0AIt's like tc=
p-traceroute tool, in that it tricks anyone in the middle boxes into thinki=
ng this is a real, serious packet, not an optional low priority packet.=0A =
=0AThe same issue comes up with non-browser-based techniques for measuring =
true lag-under-load.=0A =0ANow as we move HTTP to QUIC, this actually gets =
easier to do.=0A =0AOne other opportunity I haven't explored, but which is =
pregnant with potential is the use of WebRTC, which runs over UDP internall=
y. Since JavaScript has direct access to create WebRTC connections (multipl=
e ones), this makes detailed testing in the browser quite reasonable.=0A =
=0AAnd the time measurements can resolve well below 100 microseconds, if th=
e JS is based on modern JIT compilation (Chrome, Firefox, Edge all compile =
to machine code speed if the code is restricted and in a loop). Then again,=
 there is Web Assembly if you want to write C code that runs in the brower =
fast. WebAssembly is a low level language that compiles to machine code in =
the browser execution, and still has access to all the browser networking f=
acilities.=0A =0AOn Saturday, May 2, 2020 12:52pm, "Dave Taht" <[ dave.taht=
@gmail.com ]( mailto:dave.taht@gmail.com )> said:=0A=0A=0A=0A> On Sat, May =
2, 2020 at 9:37 AM Benjamin Cronce <[ bcronce@gmail.com ]( mailto:bcronce@g=
mail.com )> wrote:=0A> >=0A> > > Fast.com reports my unloaded latency as 4m=
s, my loaded latency as ~7ms=0A> =0A> I guess one of my questions is that w=
ith a switch to BBR netflix is=0A> going to do pretty well. If [ fast.com ]=
( http://fast.com ) is using bbr, well... that=0A> excludes much of the cur=
rent side of the internet.=0A> =0A> > For download, I show 6ms unloaded and=
 6-7 loaded. But for upload the loaded=0A> shows as 7-8 and I see it blip u=
pwards of 12ms. But I am no longer using any=0A> traffic shaping. Any anti-=
bufferbloat is from my ISP. A graph of the bloat would=0A> be nice.=0A> =0A=
> The tests do need to last a fairly long time.=0A> =0A> > On Sat, May 2, 2=
020 at 9:51 AM Jannie Hanekom <[ jannie@hanekom.net ]( mailto:jannie@haneko=
m.net )>=0A> wrote:=0A> >>=0A> >> Michael Richardson <[ mcr@sandelman.ca ](=
 mailto:mcr@sandelman.ca )>:=0A> >> > Does it find/use my nearest Netflix c=
ache?=0A> >>=0A> >> Thankfully, it appears so. The DSLReports bloat test wa=
s interesting,=0A> but=0A> >> the jitter on the ~240ms base latency from So=
uth Africa (and other parts=0A> of=0A> >> the world) was significant enough=
 that the figures returned were often=0A> >> unreliable and largely unusabl=
e - at least in my experience.=0A> >>=0A> >> Fast.com reports my unloaded l=
atency as 4ms, my loaded latency as ~7ms=0A> and=0A> >> mentions servers lo=
cated in local cities. I finally have a test I can=0A> share=0A> >> with lo=
cal non-technical people!=0A> >>=0A> >> (Agreed, upload test would be nice,=
 but this is a huge step forward from=0A> >> what I had access to before.)=
=0A> >>=0A> >> Jannie Hanekom=0A> >>=0A> >> _______________________________=
________________=0A> >> Cake mailing list=0A> >> [ Cake@lists.bufferbloat.n=
et ]( mailto:Cake@lists.bufferbloat.net )=0A> >> [ https://lists.bufferbloa=
t.net/listinfo/cake ]( https://lists.bufferbloat.net/listinfo/cake )=0A> >=
=0A> > _______________________________________________=0A> > Cake mailing l=
ist=0A> > [ Cake@lists.bufferbloat.net ]( mailto:Cake@lists.bufferbloat.net=
 )=0A> > [ https://lists.bufferbloat.net/listinfo/cake ]( https://lists.buf=
ferbloat.net/listinfo/cake )=0A> =0A> =0A> =0A> --=0A> Make Music, Not War=
=0A> =0A> Dave T=C3=A4ht=0A> CTO, TekLibre, LLC=0A> [ http://www.teklibre.c=
om ]( http://www.teklibre.com )=0A> Tel: 1-831-435-0729=0A> _______________=
________________________________=0A> Cake mailing list=0A> [ Cake@lists.buf=
ferbloat.net ]( mailto:Cake@lists.bufferbloat.net )=0A> [ https://lists.buf=
ferbloat.net/listinfo/cake ]( https://lists.bufferbloat.net/listinfo/cake )=
=0A>
------=_20200502192333000000_52261
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"3"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 12pt; overflow-wrap: break-word;">Sergey - I wasn't assu=
ming anything about fast.com. The document you shared wasn't clear about th=
e methodology's details here. Others sadly, have actually used ICMP pings i=
n the way I described. I was making a generic comment of concern.</p>=0A<p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; overflow-w=
rap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: =
arial; font-size: 12pt; overflow-wrap: break-word;">That said, it sounds li=
ke what you are doing is really helpful (esp. given that your measure is ai=
med at end user experiential qualities).</p>=0A<p style=3D"margin:0;padding=
:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;<=
/p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; o=
verflow-wrap: break-word;">Good luck!</p>=0A<p style=3D"margin:0;padding:0;=
font-family: arial; font-size: 12pt; overflow-wrap: break-word;">&nbsp;</p>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 12pt; over=
flow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-fa=
mily: arial; font-size: 12pt; overflow-wrap: break-word;">On Saturday, May =
2, 2020 3:00pm, "Sergey Fedorov" &lt;sfedorov@netflix.com&gt; said:<br /><b=
r /></p>=0A<div id=3D"SafeStyles1588461584">=0A<div dir=3D"ltr">=0A<div>=0A=
<div>Dave, thanks for sharing interesting thoughts and context.&nbsp;</div>=
=0A<blockquote class=3D"gmail_quote" style=3D"margin: 0px 0px 0px 0.8ex; bo=
rder-left: 1px solid #cccccc; padding-left: 1ex;">I am still a bit worried =
about properly defining "latency under load" for a NAT routed situation. If=
 the test is based on ICMP Ping packets *from the server*,&nbsp; it will NO=
T be measuring the full path latency, and if the potential congestion is in=
 the uplink path from the access provider's residential box to the access p=
rovider's router/switch, it will NOT measure congestion caused by bufferblo=
at reliably on either side, since the bufferbloat will be outside the ICMP =
Ping path.<br />&nbsp;<br />I realize that a browser based speed test has t=
o be basically run from the "server" end, because browsers are not that goo=
d at time measurement on a packet basis. However, there are ways to solve t=
his and avoid the ICMP Ping issue, with a cooperative server.</blockquote>=
=0A</div>=0A<div>This erroneously assumes that <a href=3D"http://fast.com">=
fast.com</a> measures latency from the server side. It does not. The measur=
ements are done from the client, over http, with a parallel connection(s) t=
o the same or similar set of servers,&nbsp;by sending empty requests over a=
 previously established&nbsp;connection (you can see that in the browser we=
b inspector).</div>=0A<div>It should be noted that the value is not precise=
ly the "RTT on a TCP/UDP&nbsp;flow that is loaded with traffic", but "user =
delay&nbsp;given the presence of heavy parallel flows". With that, some of =
the challenges&nbsp;you mentioned do not apply.</div>=0A<div>In line with a=
nother point I've&nbsp;shared earlier - the goal is to measure and explain =
the user experience, not to be a diagnostic tool showing internal transport=
 metrics.</div>=0A<br />=0A<div>=0A<div class=3D"gmail_signature" dir=3D"lt=
r" data-smartmail=3D"gmail_signature">=0A<div dir=3D"ltr">=0A<div>=0A<div d=
ir=3D"ltr">=0A<p style=3D"margin:0;padding:0;line-height: 1.38; margin-top:=
 0pt; margin-bottom: 0pt;" dir=3D"ltr"><span style=3D"font-family: Arial; c=
olor: #434343; vertical-align: baseline; white-space: pre-wrap;">SERGEY FED=
OROV</span></p>=0A<p style=3D"margin:0;padding:0;line-height: 1.38; margin-=
top: 0pt; margin-bottom: 0pt;" dir=3D"ltr"><span style=3D"font-family: Aria=
l; color: #666666; vertical-align: baseline; white-space: pre-wrap;">Direct=
or of Engineering</span></p>=0A<p style=3D"margin:0;padding:0;line-height: =
1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style=3D"font-family: Ari=
al; color: #666666; vertical-align: baseline; white-space: pre-wrap;"><a hr=
ef=3D"mailto:sfedorov@netflix.com" target=3D"_blank">sfedorov@netflix.com</=
a></span></p>=0A<p style=3D"margin:0;padding:0;line-height: 1.38; margin-to=
p: 0pt; margin-bottom: 0pt;"><span style=3D"font-family: Arial; color: #666=
666; vertical-align: baseline; white-space: pre-wrap;">121 Albright Way | L=
os Gatos, CA 95032</span></p>=0A<span><span style=3D"font-size: xx-small;">=
<span style=3D"font-family: Arial; color: #888888; vertical-align: baseline=
; white-space: pre-wrap;"><img style=3D"border: none;" src=3D"https://lh6.g=
oogleusercontent.com/sXyXTYq5vF1C3sJhRzJIQ0iYROwE8E1e0R6RY9hhgBZDVe6fLjmy_Y=
0F6RsQskALepS5t1zXm9JcQg-HXYQDbLZ6NS0YBjA3oh7IlhrUnR38ttr667EWpXydNk6U1I7FL=
O3civYI" alt=3D"" width=3D"73" height=3D"44" /></span></span></span></div>=
=0A</div>=0A</div>=0A</div>=0A</div>=0A</div>=0A<br />=0A<div class=3D"gmai=
l_quote">=0A<div class=3D"gmail_attr" dir=3D"ltr">On Sat, May 2, 2020 at 10=
:38 AM David P. Reed &lt;<a href=3D"mailto:dpreed@deepplum.com">dpreed@deep=
plum.com</a>&gt; wrote:</div>=0A<blockquote class=3D"gmail_quote" style=3D"=
margin: 0px 0px 0px 0.8ex; border-left: 1px solid #cccccc; padding-left: 1e=
x;">=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-famil=
y: arial; font-size: 12pt;">I am still a bit worried about properly definin=
g "latency under load" for a NAT routed situation. If the test is based on =
ICMP Ping packets *from the server*,&nbsp; it will NOT be measuring the ful=
l path latency, and if the potential congestion is in the uplink path from =
the access provider's residential box to the access provider's router/switc=
h, it will NOT measure congestion caused by bufferbloat reliably on either =
side, since the bufferbloat will be outside the ICMP Ping path.</p>=0A<p st=
yle=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; fo=
nt-size: 12pt;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; pa=
dding: 0px; font-family: arial; font-size: 12pt;">I realize that a browser =
based speed test has to be basically run from the "server" end, because bro=
wsers are not that good at time measurement on a packet basis. However, the=
re are ways to solve this and avoid the ICMP Ping issue, with a cooperative=
 server.</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; fo=
nt-family: arial; font-size: 12pt;">&nbsp;</p>=0A<p style=3D"margin:0;paddi=
ng:0;margin: 0px; padding: 0px; font-family: arial; font-size: 12pt;">I onc=
e built a test that fixed this issue reasonably well. It carefully created =
a TCP based RTT measurement channel (over HTTP) that made the echo have to =
traverse the whole end-to-end path, which is the best and only way to accur=
ately define lag under load from the user's perspective. The client end of =
an unloaded TCP connection can depend on TCP (properly prepared by getting =
it past slowstart) to generate a single packet response.</p>=0A<p style=3D"=
margin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; font-size=
: 12pt;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: =
0px; font-family: arial; font-size: 12pt;">This "TCP ping" is thus compatib=
le with getting the end-to-end measurement on the server end of a true RTT.=
</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-famil=
y: arial; font-size: 12pt;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;mar=
gin: 0px; padding: 0px; font-family: arial; font-size: 12pt;">It's like tcp=
-traceroute tool, in that it tricks anyone in the middle boxes into thinkin=
g this is a real, serious packet, not an optional low priority packet.</p>=
=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-family: a=
rial; font-size: 12pt;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin:=
 0px; padding: 0px; font-family: arial; font-size: 12pt;">The same issue co=
mes up with non-browser-based techniques for measuring true lag-under-load.=
</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-famil=
y: arial; font-size: 12pt;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;mar=
gin: 0px; padding: 0px; font-family: arial; font-size: 12pt;">Now as we mov=
e HTTP to QUIC, this actually gets easier to do.</p>=0A<p style=3D"margin:0=
;padding:0;margin: 0px; padding: 0px; font-family: arial; font-size: 12pt;"=
>&nbsp;</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; fon=
t-family: arial; font-size: 12pt;">One other opportunity I haven't explored=
, but which is pregnant with potential is the use of WebRTC, which runs ove=
r UDP internally. Since JavaScript has direct access to create WebRTC conne=
ctions (multiple ones), this makes detailed testing in the browser quite re=
asonable.</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; f=
ont-family: arial; font-size: 12pt;">&nbsp;</p>=0A<p style=3D"margin:0;padd=
ing:0;margin: 0px; padding: 0px; font-family: arial; font-size: 12pt;">And =
the time measurements can resolve well below 100 microseconds, if the JS is=
 based on modern JIT compilation (Chrome, Firefox, Edge all compile to mach=
ine code speed if the code is restricted and in a loop). Then again, there =
is Web Assembly if you want to write C code that runs in the brower fast. W=
ebAssembly is a low level language that compiles to machine code in the bro=
wser execution, and still has access to all the browser networking faciliti=
es.</p>=0A<p style=3D"margin:0;padding:0;margin: 0px; padding: 0px; font-fa=
mily: arial; font-size: 12pt;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;=
margin: 0px; padding: 0px; font-family: arial; font-size: 12pt;">On Saturda=
y, May 2, 2020 12:52pm, "Dave Taht" &lt;<a href=3D"mailto:dave.taht@gmail.c=
om" target=3D"_blank">dave.taht@gmail.com</a>&gt; said:<br /><br /></p>=0A<=
div id=3D"gmail-m_-5707858911278770127SafeStyles1588440044">=0A<p style=3D"=
margin:0;padding:0;margin: 0px; padding: 0px; font-family: arial; font-size=
: 12pt;">&gt; On Sat, May 2, 2020 at 9:37 AM Benjamin Cronce &lt;<a href=3D=
"mailto:bcronce@gmail.com" target=3D"_blank">bcronce@gmail.com</a>&gt; wrot=
e:<br />&gt; &gt;<br />&gt; &gt; &gt; Fast.com reports my unloaded latency =
as 4ms, my loaded latency as ~7ms<br />&gt; <br />&gt; I guess one of my qu=
estions is that with a switch to BBR netflix is<br />&gt; going to do prett=
y well. If <a href=3D"http://fast.com" target=3D"_blank">fast.com</a> is us=
ing bbr, well... that<br />&gt; excludes much of the current side of the in=
ternet.<br />&gt; <br />&gt; &gt; For download, I show 6ms unloaded and 6-7=
 loaded. But for upload the loaded<br />&gt; shows as 7-8 and I see it blip=
 upwards of 12ms. But I am no longer using any<br />&gt; traffic shaping. A=
ny anti-bufferbloat is from my ISP. A graph of the bloat would<br />&gt; be=
 nice.<br />&gt; <br />&gt; The tests do need to last a fairly long time.<b=
r />&gt; <br />&gt; &gt; On Sat, May 2, 2020 at 9:51 AM Jannie Hanekom &lt;=
<a href=3D"mailto:jannie@hanekom.net" target=3D"_blank">jannie@hanekom.net<=
/a>&gt;<br />&gt; wrote:<br />&gt; &gt;&gt;<br />&gt; &gt;&gt; Michael Rich=
ardson &lt;<a href=3D"mailto:mcr@sandelman.ca" target=3D"_blank">mcr@sandel=
man.ca</a>&gt;:<br />&gt; &gt;&gt; &gt; Does it find/use my nearest Netflix=
 cache?<br />&gt; &gt;&gt;<br />&gt; &gt;&gt; Thankfully, it appears so. Th=
e DSLReports bloat test was interesting,<br />&gt; but<br />&gt; &gt;&gt; t=
he jitter on the ~240ms base latency from South Africa (and other parts<br =
/>&gt; of<br />&gt; &gt;&gt; the world) was significant enough that the fig=
ures returned were often<br />&gt; &gt;&gt; unreliable and largely unusable=
 - at least in my experience.<br />&gt; &gt;&gt;<br />&gt; &gt;&gt; Fast.co=
m reports my unloaded latency as 4ms, my loaded latency as ~7ms<br />&gt; a=
nd<br />&gt; &gt;&gt; mentions servers located in local cities. I finally h=
ave a test I can<br />&gt; share<br />&gt; &gt;&gt; with local non-technica=
l people!<br />&gt; &gt;&gt;<br />&gt; &gt;&gt; (Agreed, upload test would =
be nice, but this is a huge step forward from<br />&gt; &gt;&gt; what I had=
 access to before.)<br />&gt; &gt;&gt;<br />&gt; &gt;&gt; Jannie Hanekom<br=
 />&gt; &gt;&gt;<br />&gt; &gt;&gt; _______________________________________=
________<br />&gt; &gt;&gt; Cake mailing list<br />&gt; &gt;&gt; <a href=3D=
"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.bufferbloa=
t.net</a><br />&gt; &gt;&gt; <a href=3D"https://lists.bufferbloat.net/listi=
nfo/cake" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a>=
<br />&gt; &gt;<br />&gt; &gt; ____________________________________________=
___<br />&gt; &gt; Cake mailing list<br />&gt; &gt; <a href=3D"mailto:Cake@=
lists.bufferbloat.net" target=3D"_blank">Cake@lists.bufferbloat.net</a><br =
/>&gt; &gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cake" target=
=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br />&gt; <br /=
>&gt; <br />&gt; <br />&gt; --<br />&gt; Make Music, Not War<br />&gt; <br =
/>&gt; Dave T=C3=A4ht<br />&gt; CTO, TekLibre, LLC<br />&gt; <a href=3D"htt=
p://www.teklibre.com" target=3D"_blank">http://www.teklibre.com</a><br />&g=
t; Tel: 1-831-435-0729<br />&gt; __________________________________________=
_____<br />&gt; Cake mailing list<br />&gt; <a href=3D"mailto:Cake@lists.bu=
fferbloat.net" target=3D"_blank">Cake@lists.bufferbloat.net</a><br />&gt; <=
a href=3D"https://lists.bufferbloat.net/listinfo/cake" target=3D"_blank">ht=
tps://lists.bufferbloat.net/listinfo/cake</a><br />&gt;</p>=0A</div>=0A</bl=
ockquote>=0A</div>=0A</div></font>
------=_20200502192333000000_52261--


--===============5009565644140900660==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5009565644140900660==--


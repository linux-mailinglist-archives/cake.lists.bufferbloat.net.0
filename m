Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 359B722D911
	for <lists+cake@lfdr.de>; Sat, 25 Jul 2020 19:48:06 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1D5513CB42;
	Sat, 25 Jul 2020 13:48:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595699285;
	bh=qBxLJuuU+UjPox3/DZiuYzBjS70nZRlcUwECDN+WHFQ=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b3dtXJi4Vu1+8NadqVuAuAgQQJ0S+L2vMeQYEHJDe30g3U0NLw/x1VA7WgkZ/bDUy
	 uCWTU4E8h+Hg3AtwtXK1TIDf8KwZ93vepskKB1jPi4NONsIkwgZuKIeZlty8dbNAtT
	 7p3A5QadHJbcIbYp3ENxc7PHYuJ4FcphKMr51Ij0YZuJACgI5cwnALkDK9Wz5p2IiO
	 Vk9QuaQl4LtZ6cFibvZ8Ja+6MHps2m8aTJCQjBhEWNdzveuI4WHqgH058+glToPL0b
	 4UIy2yBd8CWsMuQ/T4wA2GY77JRxXDUcRMBoNWvncuugnixqgFCxWRwdJVRoQzoUyj
	 td+ivQ90UCgyw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp67.iad3a.emailsrvr.com (smtp67.iad3a.emailsrvr.com
 [173.203.187.67])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id E3FF23CB38
 for <cake@lists.bufferbloat.net>; Sat, 25 Jul 2020 13:48:03 -0400 (EDT)
Received: from app47.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp25.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 6A8262520C;
 Sat, 25 Jul 2020 13:48:03 -0400 (EDT)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app47.wa-webapps.iad3a (Postfix) with ESMTP id 582C2E1A62;
 Sat, 25 Jul 2020 13:48:03 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Sat, 25 Jul 2020 13:48:03 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Sat, 25 Jul 2020 13:48:03 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Kevin Darbyshire-Bryant" <kevin@darbyshire-bryant.me.uk>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <0CCA78BD-201C-4668-A013-24A3F6F4EC87@darbyshire-bryant.me.uk>
References: <d5f74f85-7d72-40f9-a965-8335163d8cec@www.fastmail.com> 
 <CFB4036D-8EEA-44B2-A909-6FD8B495267A@darbyshire-bryant.me.uk> 
 <0CCA78BD-201C-4668-A013-24A3F6F4EC87@darbyshire-bryant.me.uk>
Message-ID: <1595699283.358416190@apps.rackspace.com>
X-Mailer: webmail/17.3.12-RC
X-Classification-ID: c3fcdc95-ebbe-4447-a7ae-265944b46685-1-1
Subject: Re: [Cake] diffserv3 vs diffserv4
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
Content-Type: multipart/mixed; boundary="===============4744210987384514437=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4744210987384514437==
Content-Type: multipart/alternative;boundary="----=_20200725134803000000_70776"

------=_20200725134803000000_70776
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AThis idea (dividing the link rate capacity, since "bandwidth" is an inco=
rrect term not to be promulgated), is absurd, but typical of "bellhead" thi=
nking.=0A =0APer packet latency is the key control variable, even for TCP. =
That's because capacity/rate is not controllable by routers, but by routing=
 in a general Internet situation.=0A =0ALatency is controlled by queuing de=
lay in a packet network, not bitrate. And in mixed traffic, which after all=
 is why traffic is classified in the first place, by its characteristics an=
d response to increased latency end-to-end, is the core "control" for the i=
nternetwork as a whole.=0A =0ASo, by promoting thinking about "bandwidth" a=
 whole sequence of misformulations of network management is embedded into t=
he thinking of those designing queue management algorithms.=0A =0AAnd make =
no mistake, queue management is the ONLY knob other than sending different =
packets on different routes that one has for routers.=0A =0AI don't know wh=
o proposed this fractional division, but it is clearly a bellhead-influence=
d thinker who thinks all protocols are CBR flows like in the old phone syst=
em.=0A =0ABut almost no flows in the internet are CBR flows! File transfers=
 are not, streaming TV is not, web ttraffic is not, game traffic is not. On=
ly non-statistically multiplexed real-time telephony and *some* video confe=
rencing is CBR.=0A =0AYet this bizarre idea of dividing "bandwidth" among a=
ll categories of flows pops up. Probably from employees of phone companies =
or phone equipment suppliers. Or folks who went to Uni and were trained in =
"communications" by former phone engineers.=0A =0ALatency, latency, latency=
. Queue delay, queue delay, queue delay. Not link speed! Change your brains=
.=0A =0AIt's hard fo fight this bellhead crowd (or the bellheadedness in yo=
ur own thinking) but think about packets and queues instead.=0A =0AMy good =
friend Len Kleinrock didn't invent "Bandwidth Theory"! He invented Queueing=
 Theory. For a reason.=0A =0AOn Saturday, July 25, 2020 6:12am, "Kevin Darb=
yshire-Bryant" <kevin@darbyshire-bryant.me.uk> said:=0A=0A=0A=0A> _________=
______________________________________=0A> Cake mailing list=0A> Cake@lists=
.bufferbloat.net=0A> https://lists.bufferbloat.net/listinfo/cake=0A> =0A> =
=0A> > On 24 Jul 2020, at 18:42, Kevin Darbyshire-Bryant=0A> <kevin@darbysh=
ire-bryant.me.uk> wrote:=0A> >=0A> >=0A> > The move from diffserv4 to diffs=
erv5 WAS about de-prioritization.=0A> =0A> It was also about minimum bandwi=
dth allocations:=0A> =0A> LE: 1/64th=0A> BK: 1/16th=0A> BE: 1/1=0A> VI: 1/2=
=0A> VO: 1/4=0A> =0A> So worst case, best effort should get 11/64ths in the=
 extreme case of all other=0A> tins in use.=0A> =0A> Cheers,=0A> =0A> Kevin=
 D-B=0A> =0A> gpg: 012C ACB2 28C6 C53E 9775 9123 B3A2 389B 9DE2 334A=0A> =
=0A> 
------=_20200725134803000000_70776
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">This idea (dividing th=
e link rate capacity, since "bandwidth" is an incorrect term not to be prom=
ulgated), is absurd, but typical of "bellhead" thinking.</p>=0A<p style=3D"=
margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: brea=
k-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; fo=
nt-size: 10pt; overflow-wrap: break-word;">Per packet latency is the key co=
ntrol variable, even for TCP. That's because capacity/rate is not controlla=
ble by routers, but by routing in a general Internet situation.</p>=0A<p st=
yle=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wra=
p: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: ar=
ial; font-size: 10pt; overflow-wrap: break-word;">Latency is controlled by =
queuing delay in a packet network, not bitrate. And in mixed traffic, which=
 after all is why traffic is classified in the first place, by its characte=
ristics and response to increased latency end-to-end, is the core "control"=
 for the internetwork as a whole.</p>=0A<p style=3D"margin:0;padding:0;font=
-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<=
p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow=
-wrap: break-word;">So, by promoting thinking about "bandwidth" a whole seq=
uence of misformulations of network management is embedded into the thinkin=
g of those designing queue management algorithms.</p>=0A<p style=3D"margin:=
0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;=
">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size=
: 10pt; overflow-wrap: break-word;">And make no mistake, queue management i=
s the ONLY knob other than sending different packets on different routes th=
at one has for routers.</p>=0A<p style=3D"margin:0;padding:0;font-family: a=
rial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D=
"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: bre=
ak-word;">I don't know who proposed this fractional division, but it is cle=
arly a bellhead-influenced thinker who thinks all protocols are CBR flows l=
ike in the old phone system.</p>=0A<p style=3D"margin:0;padding:0;font-fami=
ly: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p sty=
le=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap=
: break-word;">But almost no flows in the internet are CBR flows! File tran=
sfers are not, streaming TV is not, web ttraffic is not, game traffic is no=
t. Only non-statistically multiplexed real-time telephony and *some* video =
conferencing is CBR.</p>=0A<p style=3D"margin:0;padding:0;font-family: aria=
l; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"ma=
rgin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-=
word;">Yet this bizarre idea of dividing "bandwidth" among all categories o=
f flows pops up. Probably from employees of phone companies or phone equipm=
ent suppliers. Or folks who went to Uni and were trained in "communications=
" by former phone engineers.</p>=0A<p style=3D"margin:0;padding:0;font-fami=
ly: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p sty=
le=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap=
: break-word;">Latency, latency, latency. Queue delay, queue delay, queue d=
elay. Not link speed! Change your brains.</p>=0A<p style=3D"margin:0;paddin=
g:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;=
</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;">It's hard fo fight this bellhead crowd (or the =
bellheadedness in your own thinking) but think about packets and queues ins=
tead.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 1=
0pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:=
0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">My good =
friend Len Kleinrock didn't invent "Bandwidth Theory"! He invented Queueing=
 Theory. For a reason.</p>=0A<p style=3D"margin:0;padding:0;font-family: ar=
ial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"=
margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: brea=
k-word;">On Saturday, July 25, 2020 6:12am, "Kevin Darbyshire-Bryant" &lt;k=
evin@darbyshire-bryant.me.uk&gt; said:<br /><br /></p>=0A<div id=3D"SafeSty=
les1595698422">=0A<p style=3D"margin:0;padding:0;font-family: arial; font-s=
ize: 10pt; overflow-wrap: break-word;">&gt; _______________________________=
________________<br />&gt; Cake mailing list<br />&gt; Cake@lists.bufferblo=
at.net<br />&gt; https://lists.bufferbloat.net/listinfo/cake<br />&gt; <br =
/>&gt; <br />&gt; &gt; On 24 Jul 2020, at 18:42, Kevin Darbyshire-Bryant<br=
 />&gt; &lt;kevin@darbyshire-bryant.me.uk&gt; wrote:<br />&gt; &gt;<br />&g=
t; &gt;<br />&gt; &gt; The move from diffserv4 to diffserv5 WAS about de-pr=
ioritization.<br />&gt; <br />&gt; It was also about minimum bandwidth allo=
cations:<br />&gt; <br />&gt; LE: 1/64th<br />&gt; BK: 1/16th<br />&gt; BE:=
 1/1<br />&gt; VI: 1/2<br />&gt; VO: 1/4<br />&gt; <br />&gt; So worst case=
, best effort should get 11/64ths in the extreme case of all other<br />&gt=
; tins in use.<br />&gt; <br />&gt; Cheers,<br />&gt; <br />&gt; Kevin D-B<=
br />&gt; <br />&gt; gpg: 012C ACB2 28C6 C53E 9775 9123 B3A2 389B 9DE2 334A=
<br />&gt; <br />&gt; </p>=0A</div></font>
------=_20200725134803000000_70776--


--===============4744210987384514437==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4744210987384514437==--


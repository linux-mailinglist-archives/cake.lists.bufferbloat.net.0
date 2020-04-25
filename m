Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BED361B8979
	for <lists+cake@lfdr.de>; Sat, 25 Apr 2020 22:56:29 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E587F3CB38;
	Sat, 25 Apr 2020 16:56:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587848188;
	bh=RnBzY5uYxCnGVY5meF2srR5WBAYopDezPksWcJ/O27Y=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HSvcOrTWEEBPaHb6SPl7wmgEWRAazRAy+hppySWirCBP1sggu9qkjLNXj3RDaBlKg
	 XO7ZBsMVtn9uLhFOh6xZ4u3rHBi1GTG+bADG7ZvbH2cFfar7tAC5sU+WMeMJ4RxUsa
	 +huNujhEtHLaubrVUMA/jr0lUvn6ZkNb4M677OA3oOOiOju17KVGo7uw/IZwJjn1U1
	 cHiO5M/UaUAcd9nsCOgDyHRwuwIY0HpRWQIPCfH4n6ymse8GIfmEpLflv4UYqWuSgF
	 CBV+sQQ+4qUh4F67hpNYq39b1DFzPaf14BLJyPr14hdzkzNulHQ5njLJG2+HF2JBoP
	 Msb6/11pnj6Mg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp105.iad3a.emailsrvr.com (smtp105.iad3a.emailsrvr.com
 [173.203.187.105])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2D9673B29E
 for <cake@lists.bufferbloat.net>; Sat, 25 Apr 2020 16:56:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1587848187;
 bh=xgYP5h12/5n9b3wfax5ufOJzfGEAsQrivMOdxODUW0Y=;
 h=Date:Subject:From:To:From;
 b=uF3pQ1fM2uArlid3qY/MTNh3PwSmXi+IdiCa5WhcwSyeUuhLhezZP+/VwEkrKWcfB
 ohDCWv7BT2FEbK2b04dunRCICcRzsZxeJGi/UhvuRD0kdlLbZvTptkSykoCdwXGwsE
 euqqHjXd0vQw1E7jBrkUa+AsLOexOn9KV44bCwZo=
Received: from app19.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp22.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id BE8C15EF6;
 Sat, 25 Apr 2020 16:56:27 -0400 (EDT)
X-Sender-Id: dpreed@deepplum.com
Received: from app19.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140]) by 0.0.0.0:25 (trex/5.7.12);
 Sat, 25 Apr 2020 16:56:27 -0400
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app19.wa-webapps.iad3a (Postfix) with ESMTP id D483CE0047;
 Sat, 25 Apr 2020 16:56:26 -0400 (EDT)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Sat, 25 Apr 2020 16:56:26 -0400 (EDT)
X-Auth-ID: dpreed@deepplum.com
Date: Sat, 25 Apr 2020 16:56:26 -0400 (EDT)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Kevin Darbyshire-Bryant" <kevin@darbyshire-bryant.me.uk>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <32DE972A-3359-462A-A12C-77714B2563F6@darbyshire-bryant.me.uk>
References: <62228545-5DE2-4600-A9BB-52D891FF5AD4@darbyshire-bryant.me.uk> 
 <4D896254-FFB2-4CEB-B596-A6D2E510243C@gmail.com> 
 <32DE972A-3359-462A-A12C-77714B2563F6@darbyshire-bryant.me.uk>
Message-ID: <1587848186.866926178@apps.rackspace.com>
X-Mailer: webmail/17.3.7-RC
X-Classification-ID: d06e8b88-1de1-4259-b498-e01543f608d3-1-1
Subject: Re: [Cake] Cake tin behaviour - discuss....
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
Content-Type: multipart/mixed; boundary="===============4196778712023097748=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4196778712023097748==
Content-Type: multipart/alternative;boundary="----=_20200425165626000000_56464"

------=_20200425165626000000_56464
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AQuestion: what's the "lag under load" experienced when these two loads a=
re filling the capacity of the bottleneck router (the DSL link)?=0AI'm wond=
ering whether your cake setup is deliberately building up a big queue withi=
n the router for any of the 10 bulk/best efforts flows.=0A =0AOn Saturday, =
April 25, 2020 4:34pm, "Kevin Darbyshire-Bryant" <kevin@darbyshire-bryant.m=
e.uk> said:=0A=0A=0A=0A> _______________________________________________=0A=
> Cake mailing list=0A> Cake@lists.bufferbloat.net=0A> https://lists.buffer=
bloat.net/listinfo/cake=0A> =0A> =0A> > On 25 Apr 2020, at 16:25, Jonathan =
Morton <chromatix99@gmail.com>=0A> wrote:=0A> >=0A> >> On 25 Apr, 2020, at =
2:07 pm, Kevin Darbyshire-Bryant=0A> <kevin@darbyshire-bryant.me.uk> wrote:=
=0A> >>=0A> >> Download from =E2=80=98onedrive=E2=80=99 from 1 box, using 5=
 flows,=0A> classified as Bulk. Little other traffic going on, sits there a=
t circa 70Mbit, no=0A> problem.=0A> >>=0A> >> If I started another download=
 on another box, say 5 flows, classified as=0A> Best Effort, what rates wou=
ld you expect the Bulk & Best effort tins to flow at?=0A> >=0A> > Approxima=
tely speaking, Cake should give the Best Effort traffic priority=0A> over B=
ulk, until the latter is squashed down to its tin's capacity. So you may=0A=
> see 5-10Mbps of Bulk and 65-70Mbps of Best Effort, depending on some shor=
t-term=0A> effects.=0A> >=0A> > This assumes that the Diffserv marking actu=
ally reaches Cake, of course.=0A> =0A> Thanks Jonathan. I can assure you di=
ffserv markings are reaching cake both egress=0A> & ingress due to my pet =
=E2=80=98act_ctinfo/connmark -savedscp=E2=80=99 project. =0A> Amongst other=
 monitoring methods a simple 'watch -t tc -s qdisc show dev $1=E2=80=99=0A>=
 albeit with a slightly modified cake module & tc to report per tin traffic=
 as a=0A> percentage of total & per tin % of threshold is used.=0A> =0A> eg=
:=0A> Bulk Best Effort Video Voice=0A> thresh 4812Kbit 77Mbit 38500Kbit 192=
50Kbit=0A> target 5.0ms 5.0ms 5.0ms 5.0ms=0A> interval 100.0ms 100.0ms 100.=
0ms 100.0ms=0A> pk_delay 961us 167us 311us 164us=0A> av_delay 453us 78us 14=
1us 75us=0A> sp_delay 51us 12us 17us 9us=0A> backlog 9084b 0b 0b 0b=0A> pkt=
s 60618617 2006708 460725 11129=0A> bytes 91414263264 2453185010 636385583 =
5205008=0A> traffic% 89 0 0 0=0A> traftin% 1435 0 0 0=0A> way_inds 2703134 =
8957 169 111=0A> way_miss 922 6192 104 525=0A> way_cols 0 0 0 0=0A> drops 8=
442 230 37 0=0A> marks 5 0 0 0=0A> ack_drop 0 0 0 0=0A> sp_flows 2 3 1 3=0A=
> bk_flows 1 0 0 0=0A> un_flows 0 0 0 0=0A> max_len 66616 12112 9084 3360=
=0A> quantum 300 1514 1174 587=0A> =0A> Your expectation is that Best Effor=
t would exert downward pressure on Bulk traffic=0A> reducing bulk traffic t=
o about bulk threshold level which is my expectation also. =0A> Tin priorit=
y then host (fairness), then flow.=0A> =0A> As you may have guessed, that=
=E2=80=99s not quite what I=E2=80=99m seeing but as=0A> I=E2=80=99ve manage=
d to see the issue when using =E2=80=98flowblind=E2=80=99 am now much=0A> l=
ess inclined to point the finger at host fairness & friends. I remain confu=
sed=0A> why =E2=80=98bulk=E2=80=99 is exceeding its allocation though in wh=
at should be=0A> pressure from best effort but it ends up going all over th=
e place and being a bit=0A> unstable. Odd.=0A> =0A> BTW: The =E2=80=98onedr=
ive=E2=80=99 client box is actually running linux.=0A> =0A> 
------=_20200425165626000000_56464
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"3"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 12pt; overflow-wrap: break-word;">Question: what's the "=
lag under load" experienced when these two loads are filling the capacity o=
f the bottleneck router (the DSL link)?</p>=0A<p style=3D"margin:0;padding:=
0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">I'm wond=
ering whether your cake setup is deliberately building up a big queue withi=
n the router for any of the 10 bulk/best efforts flows.</p>=0A<p style=3D"m=
argin:0;padding:0;font-family: arial; font-size: 12pt; overflow-wrap: break=
-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; fon=
t-size: 12pt; overflow-wrap: break-word;">On Saturday, April 25, 2020 4:34p=
m, "Kevin Darbyshire-Bryant" &lt;kevin@darbyshire-bryant.me.uk&gt; said:<br=
 /><br /></p>=0A<div id=3D"SafeStyles1587847349">=0A<p style=3D"margin:0;pa=
dding:0;font-family: arial; font-size: 12pt; overflow-wrap: break-word;">&g=
t; _______________________________________________<br />&gt; Cake mailing l=
ist<br />&gt; Cake@lists.bufferbloat.net<br />&gt; https://lists.bufferbloa=
t.net/listinfo/cake<br />&gt; <br />&gt; <br />&gt; &gt; On 25 Apr 2020, at=
 16:25, Jonathan Morton &lt;chromatix99@gmail.com&gt;<br />&gt; wrote:<br /=
>&gt; &gt;<br />&gt; &gt;&gt; On 25 Apr, 2020, at 2:07 pm, Kevin Darbyshire=
-Bryant<br />&gt; &lt;kevin@darbyshire-bryant.me.uk&gt; wrote:<br />&gt; &g=
t;&gt;<br />&gt; &gt;&gt; Download from =E2=80=98onedrive=E2=80=99 from 1 b=
ox, using 5 flows,<br />&gt; classified as Bulk. Little other traffic going=
 on, sits there at circa 70Mbit, no<br />&gt; problem.<br />&gt; &gt;&gt;<b=
r />&gt; &gt;&gt; If I started another download on another box, say 5 flows=
, classified as<br />&gt; Best Effort, what rates would you expect the Bulk=
 &amp; Best effort tins to flow at?<br />&gt; &gt;<br />&gt; &gt; Approxima=
tely speaking, Cake should give the Best Effort traffic priority<br />&gt; =
over Bulk, until the latter is squashed down to its tin's capacity. So you =
may<br />&gt; see 5-10Mbps of Bulk and 65-70Mbps of Best Effort, depending =
on some short-term<br />&gt; effects.<br />&gt; &gt;<br />&gt; &gt; This as=
sumes that the Diffserv marking actually reaches Cake, of course.<br />&gt;=
 <br />&gt; Thanks Jonathan. I can assure you diffserv markings are reachin=
g cake both egress<br />&gt; &amp; ingress due to my pet =E2=80=98act_ctinf=
o/connmark -savedscp=E2=80=99 project. <br />&gt; Amongst other monitoring =
methods a simple 'watch -t tc -s qdisc show dev $1=E2=80=99<br />&gt; albei=
t with a slightly modified cake module &amp; tc to report per tin traffic a=
s a<br />&gt; percentage of total &amp; per tin % of threshold is used.<br =
/>&gt; <br />&gt; eg:<br />&gt; Bulk Best Effort Video Voice<br />&gt; thre=
sh 4812Kbit 77Mbit 38500Kbit 19250Kbit<br />&gt; target 5.0ms 5.0ms 5.0ms 5=
.0ms<br />&gt; interval 100.0ms 100.0ms 100.0ms 100.0ms<br />&gt; pk_delay =
961us 167us 311us 164us<br />&gt; av_delay 453us 78us 141us 75us<br />&gt; =
sp_delay 51us 12us 17us 9us<br />&gt; backlog 9084b 0b 0b 0b<br />&gt; pkts=
 60618617 2006708 460725 11129<br />&gt; bytes 91414263264 2453185010 63638=
5583 5205008<br />&gt; traffic% 89 0 0 0<br />&gt; traftin% 1435 0 0 0<br /=
>&gt; way_inds 2703134 8957 169 111<br />&gt; way_miss 922 6192 104 525<br =
/>&gt; way_cols 0 0 0 0<br />&gt; drops 8442 230 37 0<br />&gt; marks 5 0 0=
 0<br />&gt; ack_drop 0 0 0 0<br />&gt; sp_flows 2 3 1 3<br />&gt; bk_flows=
 1 0 0 0<br />&gt; un_flows 0 0 0 0<br />&gt; max_len 66616 12112 9084 3360=
<br />&gt; quantum 300 1514 1174 587<br />&gt; <br />&gt; Your expectation =
is that Best Effort would exert downward pressure on Bulk traffic<br />&gt;=
 reducing bulk traffic to about bulk threshold level which is my expectatio=
n also. <br />&gt; Tin priority then host (fairness), then flow.<br />&gt; =
<br />&gt; As you may have guessed, that=E2=80=99s not quite what I=E2=80=
=99m seeing but as<br />&gt; I=E2=80=99ve managed to see the issue when usi=
ng =E2=80=98flowblind=E2=80=99 am now much<br />&gt; less inclined to point=
 the finger at host fairness &amp; friends. I remain confused<br />&gt; why=
 =E2=80=98bulk=E2=80=99 is exceeding its allocation though in what should b=
e<br />&gt; pressure from best effort but it ends up going all over the pla=
ce and being a bit<br />&gt; unstable. Odd.<br />&gt; <br />&gt; BTW: The =
=E2=80=98onedrive=E2=80=99 client box is actually running linux.<br />&gt; =
<br />&gt; </p>=0A</div></font>
------=_20200425165626000000_56464--


--===============4196778712023097748==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4196778712023097748==--


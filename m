Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6728446C41E
	for <lists+cake@lfdr.de>; Tue,  7 Dec 2021 21:04:31 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A6EF93CB38;
	Tue,  7 Dec 2021 15:04:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1638907469;
	bh=cJctFXaMo7Ptd7VEMhoqqK2/2rtSEgQmMihFhPJ1gZ8=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Fkpg+/DiJ3xN3v7j+Jra60rCrP0lhwmzbCyx3xRCJgstdAv1//43Dh9UtII00PT4K
	 oCSNV3m4biUht65IlPLBX0ZRsbfTjks11wk5I4fCVS3N0CWPCQR434fje/703uniP9
	 U2vwg3t+s998maNiyWi0BkPEbFH0Rg1sTP5YPmdhtDFsprErw10pZxPFDpWVIFA45V
	 V3u+EVadcTeJ01J2k1i1ipi9ybwb9i35+vN48PGh7w7RzQ48xpGJubEIoRTosdRj0/
	 cz1GL8oVyoGT/MLQ2Y0v7MaGs6GLZ5XiYW8CKKbTZjitJdtSaAhUf78XNc4luRLUMW
	 xVI2MXibVW78g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp67.iad3a.emailsrvr.com (smtp67.iad3a.emailsrvr.com
 [173.203.187.67])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 1305C3B29E
 for <cake@lists.bufferbloat.net>; Tue,  7 Dec 2021 15:04:28 -0500 (EST)
Received: from app25.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp33.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 88ADE3A93;
 Tue,  7 Dec 2021 15:04:27 -0500 (EST)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app25.wa-webapps.iad3a (Postfix) with ESMTP id 74B502006A;
 Tue,  7 Dec 2021 15:04:27 -0500 (EST)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Tue, 7 Dec 2021 15:04:27 -0500 (EST)
X-Auth-ID: dpreed@deepplum.com
Date: Tue, 7 Dec 2021 15:04:27 -0500 (EST)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Dave Taht" <dave.taht@gmail.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <CAA93jw6C0CsAtUk9qnyemTkb-hmb15BQH2a2NUydZcFxGhApNg@mail.gmail.com>
References: <CAA93jw5MbJwUQf3=N6xsv7dn7V+1dKeX5QR93+f7erHup+TUQg@mail.gmail.com> 
 <0A6AB0B7-E010-42E3-BAEE-FCBFA5995117@gmail.com> 
 <1638658910.996417608@apps.rackspace.com> 
 <CAA93jw6C0CsAtUk9qnyemTkb-hmb15BQH2a2NUydZcFxGhApNg@mail.gmail.com>
X-Client-IP: 209.6.168.128
Message-ID: <1638907467.475617131@apps.rackspace.com>
X-Mailer: webmail/19.0.13-RC
X-Classification-ID: 0dea1ea4-e7db-4b3f-a804-bacca50edd85-1-1
Subject: Re: [Cake] Understanding the Achieved Rate Multiplication Effect in
	FlowQueue-based AQM Bottleneck
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
Cc: jonathan.kua@deakin.edu.au, Cake List <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============4906730471239141691=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4906730471239141691==
Content-Type: multipart/alternative;boundary="----=_20211207150427000000_10791"

------=_20211207150427000000_10791
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AThere are lots of easy ways to (using Intel standard CPUs) get *submicro=
second* precision on clock times.=0A =0AIn TidalScale where I work, our hyp=
erkernel (hypervisor) synchronizes the TSC (which has about 0.3 nsec resolu=
tion) between 10 GigE switch connected servers to an accuracy of maybe 100 =
nsec. We use a custom algorithm I designed, but the Precision Time Protocol=
 standard easily gets sub-microsecond accurate measurements.=0A =0ANow if y=
ou aren't measuring in a hypervisor, or very low level Linux kernel stack, =
I suggest that using DPDK (another Intel goodie that works on Linux) lets y=
ou do a lot in userspace code - including doing the whole IP stack in users=
pace.=0A =0AI understand that a lot of Cake usage is about non-Intel, low-e=
nd consumer router processors, and in those it is really hard to time anyth=
ing (and the scheduler itself is often struggling to schedule stuff predict=
ably), but not every idea where measurement leads to significant latency im=
provement has to be initially explored on those low end consumer MIPS and A=
RM chips.=0A =0AThere are a number of single board computers that have at l=
east two GigE ports and are Intel-64 Celerons or better that have good nano=
second TSC clocks, PCIe slots that support high-end wifi, etc.=0A =0AI can =
recommend some...=0A =0A =0AOn Saturday, December 4, 2021 8:24pm, "Dave Tah=
t" <dave.taht@gmail.com> said:=0A=0A=0A=0A> I too have been trying to get b=
elow 1ms (heck, 3ms) precision or at=0A> least, resolution. I came up with =
the most promising thing I can think=0A> of for=0A> interactions in a multi=
threaded environment yet, I think. glibc has=0A> long mapped the kernel clo=
ck page into process memory, so i was=0A> thinking=0A> (hoping) that mmapin=
g that on top of itself a zillion times and using=0A> that as my test data =
source for writes out across the network I'd get=0A> some=0A> really fine g=
rained insights.=0A> =0A> Haven't got around to it yet.=0A> =0A> On Sat, De=
c 4, 2021 at 3:01 PM David P. Reed <dpreed@deepplum.com> wrote:=0A> >=0A> >=
 I agree with your broad assessment, Jonathan.=0A> >=0A> >=0A> >=0A> > The =
self-interference problem within a host isn't just a network problem.=0A> I=
t's a user-space scheduler problem as well.=0A> >=0A> >=0A> >=0A> > There a=
re lots of interactions between user-space scheduler (in the case of=0A> Li=
nux, the "Completely Fair Scheduler" and its quantum, which is set by the H=
Z=0A> variable at boot) and the network stack in the kernel. This interacti=
ons have=0A> non-trivial effects when mutliple flows are independently crea=
ted by concurrent=0A> processes).=0A> >=0A> >=0A> >=0A> > Lately, I've been=
 studying, for reasons related to my day job, the complex=0A> interactions =
of timing at sub-millisecond scale among threads and processes on a=0A> sin=
gle system in Linux. I/O driven by threads become highly correlated, and so=
=0A> assuming "independence" among flow timing is just not a good assumptio=
n.=0A> >=0A> >=0A> >=0A> > The paper observes the results of "dependencies"=
 that couple/resonate.=0A> >=0A> >=0A> >=0A> > On Friday, December 3, 2021 =
7:09pm, "Jonathan Morton"=0A> <chromatix99@gmail.com> said:=0A> >=0A> > > >=
 On 4 Dec, 2021, at 12:27 am, Dave Taht <dave.taht@gmail.com>=0A> wrote:=0A=
> > > >=0A> > > >=0A> > >=0A> https://jonathankua.github.io/preprints/jkua-=
ieeelcn2021_understanding_ar_preprint-20jul2021.pdf=0A> > > >=0A> > > > I w=
ould love it if somehow the measured effects of chunklets=0A> against cake'=
s=0A> > > per-host/per flow fq was examined one day.=0A> > >=0A> > > I have=
n't actually measured it, but based on what the above paper says,=0A> I can=
 make=0A> > > some firm predictions:=0A> > >=0A> > > 1: When competing agai=
nst traffic to the same local host, the=0A> performance effects=0A> > > the=
y describe will be present.=0A> > >=0A> > > 2: When competing against traff=
ic to a different local-network host,=0A> the=0A> > > performance effects t=
hey describe will be attenuated or even entirely=0A> absent.=0A> > >=0A> > =
> 3: They noted one or two cases of observable effects of hash collisions=
=0A> in their=0A> > > tests with FQ-Codel. These will be greatly reduced in=
 prevalence with=0A> Cake, due=0A> > > to the set-associative hash function=
 which specifically addresses that=0A> phenomenon.=0A> > >=0A> > > - Jonath=
an Morton=0A> > > _______________________________________________=0A> > > C=
ake mailing list=0A> > > Cake@lists.bufferbloat.net=0A> > > https://lists.b=
ufferbloat.net/listinfo/cake=0A> > >=0A> =0A> =0A> =0A> --=0A> I tried to b=
uild a better future, a few times:=0A> https://wayforward.archive.org/?site=
=3Dhttps%3A%2F%2Fwww.icei.org=0A> =0A> Dave T=C3=A4ht CEO, TekLibre, LLC=0A=
> 
------=_20211207150427000000_10791
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">There are lots of easy=
 ways to (using Intel standard CPUs) get *submicrosecond* precision on cloc=
k times.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size=
: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;paddi=
ng:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">In Ti=
dalScale where I work, our hyperkernel (hypervisor) synchronizes the TSC (w=
hich has about 0.3 nsec resolution) between 10 GigE switch connected server=
s to an accuracy of maybe 100 nsec. We use a custom algorithm I designed, b=
ut the Precision Time Protocol standard easily gets sub-microsecond accurat=
e measurements.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; fo=
nt-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:=
0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;=
">Now if you aren't measuring in a hypervisor, or very low level Linux kern=
el stack, I suggest that using DPDK (another Intel goodie that works on Lin=
ux) lets you do a lot in userspace code - including doing the whole IP stac=
k in userspace.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; fo=
nt-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:=
0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;=
">I understand that a lot of Cake usage is about non-Intel, low-end consume=
r router processors, and in those it is really hard to time anything (and t=
he scheduler itself is often struggling to schedule stuff predictably), but=
 not every idea where measurement leads to significant latency improvement =
has to be initially explored on those low end consumer MIPS and ARM chips.<=
/p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; o=
verflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font=
-family: arial; font-size: 10pt; overflow-wrap: break-word;">There are a nu=
mber of single board computers that have at least two GigE ports and are In=
tel-64 Celerons or better that have good nanosecond TSC clocks, PCIe slots =
that support high-end wifi, etc.</p>=0A<p style=3D"margin:0;padding:0;font-=
family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p=
 style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-=
wrap: break-word;">I can recommend some...</p>=0A<p style=3D"margin:0;paddi=
ng:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp=
;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt;=
 overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;fo=
nt-family: arial; font-size: 10pt; overflow-wrap: break-word;">On Saturday,=
 December 4, 2021 8:24pm, "Dave Taht" &lt;dave.taht@gmail.com&gt; said:<br =
/><br /></p>=0A<div id=3D"SafeStyles1638906593">=0A<p style=3D"margin:0;pad=
ding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&gt=
; I too have been trying to get below 1ms (heck, 3ms) precision or at<br />=
&gt; least, resolution. I came up with the most promising thing I can think=
<br />&gt; of for<br />&gt; interactions in a multithreaded environment yet=
, I think. glibc has<br />&gt; long mapped the kernel clock page into proce=
ss memory, so i was<br />&gt; thinking<br />&gt; (hoping) that mmaping that=
 on top of itself a zillion times and using<br />&gt; that as my test data =
source for writes out across the network I'd get<br />&gt; some<br />&gt; r=
eally fine grained insights.<br />&gt; <br />&gt; Haven't got around to it =
yet.<br />&gt; <br />&gt; On Sat, Dec 4, 2021 at 3:01 PM David P. Reed &lt;=
dpreed@deepplum.com&gt; wrote:<br />&gt; &gt;<br />&gt; &gt; I agree with y=
our broad assessment, Jonathan.<br />&gt; &gt;<br />&gt; &gt;<br />&gt; &gt=
;<br />&gt; &gt; The self-interference problem within a host isn't just a n=
etwork problem.<br />&gt; It's a user-space scheduler problem as well.<br /=
>&gt; &gt;<br />&gt; &gt;<br />&gt; &gt;<br />&gt; &gt; There are lots of i=
nteractions between user-space scheduler (in the case of<br />&gt; Linux, t=
he "Completely Fair Scheduler" and its quantum, which is set by the HZ<br /=
>&gt; variable at boot) and the network stack in the kernel. This interacti=
ons have<br />&gt; non-trivial effects when mutliple flows are independentl=
y created by concurrent<br />&gt; processes).<br />&gt; &gt;<br />&gt; &gt;=
<br />&gt; &gt;<br />&gt; &gt; Lately, I've been studying, for reasons rela=
ted to my day job, the complex<br />&gt; interactions of timing at sub-mill=
isecond scale among threads and processes on a<br />&gt; single system in L=
inux. I/O driven by threads become highly correlated, and so<br />&gt; assu=
ming "independence" among flow timing is just not a good assumption.<br />&=
gt; &gt;<br />&gt; &gt;<br />&gt; &gt;<br />&gt; &gt; The paper observes th=
e results of "dependencies" that couple/resonate.<br />&gt; &gt;<br />&gt; =
&gt;<br />&gt; &gt;<br />&gt; &gt; On Friday, December 3, 2021 7:09pm, "Jon=
athan Morton"<br />&gt; &lt;chromatix99@gmail.com&gt; said:<br />&gt; &gt;<=
br />&gt; &gt; &gt; &gt; On 4 Dec, 2021, at 12:27 am, Dave Taht &lt;dave.ta=
ht@gmail.com&gt;<br />&gt; wrote:<br />&gt; &gt; &gt; &gt;<br />&gt; &gt; &=
gt; &gt;<br />&gt; &gt; &gt;<br />&gt; https://jonathankua.github.io/prepri=
nts/jkua-ieeelcn2021_understanding_ar_preprint-20jul2021.pdf<br />&gt; &gt;=
 &gt; &gt;<br />&gt; &gt; &gt; &gt; I would love it if somehow the measured=
 effects of chunklets<br />&gt; against cake's<br />&gt; &gt; &gt; per-host=
/per flow fq was examined one day.<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; =
I haven't actually measured it, but based on what the above paper says,<br =
/>&gt; I can make<br />&gt; &gt; &gt; some firm predictions:<br />&gt; &gt;=
 &gt;<br />&gt; &gt; &gt; 1: When competing against traffic to the same loc=
al host, the<br />&gt; performance effects<br />&gt; &gt; &gt; they describ=
e will be present.<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; 2: When competin=
g against traffic to a different local-network host,<br />&gt; the<br />&gt=
; &gt; &gt; performance effects they describe will be attenuated or even en=
tirely<br />&gt; absent.<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; 3: They no=
ted one or two cases of observable effects of hash collisions<br />&gt; in =
their<br />&gt; &gt; &gt; tests with FQ-Codel. These will be greatly reduce=
d in prevalence with<br />&gt; Cake, due<br />&gt; &gt; &gt; to the set-ass=
ociative hash function which specifically addresses that<br />&gt; phenomen=
on.<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; - Jonathan Morton<br />&gt; &gt=
; &gt; _______________________________________________<br />&gt; &gt; &gt; =
Cake mailing list<br />&gt; &gt; &gt; Cake@lists.bufferbloat.net<br />&gt; =
&gt; &gt; https://lists.bufferbloat.net/listinfo/cake<br />&gt; &gt; &gt;<b=
r />&gt; <br />&gt; <br />&gt; <br />&gt; --<br />&gt; I tried to build a b=
etter future, a few times:<br />&gt; https://wayforward.archive.org/?site=
=3Dhttps%3A%2F%2Fwww.icei.org<br />&gt; <br />&gt; Dave T=C3=A4ht CEO, TekL=
ibre, LLC<br />&gt; </p>=0A</div></font>
------=_20211207150427000000_10791--


--===============4906730471239141691==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4906730471239141691==--


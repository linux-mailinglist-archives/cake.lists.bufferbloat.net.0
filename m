Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5B4468818
	for <lists+cake@lfdr.de>; Sat,  4 Dec 2021 23:30:03 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id EC36C3CB38;
	Sat,  4 Dec 2021 17:30:01 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1638657001;
	bh=k5q3IOUHH1LJTzNjcPhPmgVc0SY0hewJ91ZUMTRHdJA=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AY6dr4Vy8RkgsdFyToFA9jfumb9xidO1zlWSibKFavoy0DIYIygbdSSmw2bHAusJD
	 WgovAITwclWaDOIFlVdP8qI3bgyo3g89NAF4d+nDJ2Mu5lop6MezFxMxN0pAAi2pMc
	 rV8QxszizhQhHVqE+f1M8J1/icIEpw0MY4dufxHAcKZ9zbKt035hF/D9BZIa0JmtCP
	 0rey3xsfjZu7LpYTRJnMN7vZP2wiNwayKvcd/hHt7T//l1jNpBfzp6cTBaMHojWms/
	 PohAmKHqNSo4wJOWzFSNnUaY4V7JXz6WrDYyrfqfYJrig4ecoqdwyCyrfYomuiQZ/P
	 MC09SmmmBfNYg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp75.iad3a.emailsrvr.com (smtp75.iad3a.emailsrvr.com
 [173.203.187.75])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 337AD3B29E
 for <cake@lists.bufferbloat.net>; Sat,  4 Dec 2021 17:30:00 -0500 (EST)
Received: from app28.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp18.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id C2188230DC;
 Sat,  4 Dec 2021 17:29:59 -0500 (EST)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app28.wa-webapps.iad3a (Postfix) with ESMTP id AEC4461BF6;
 Sat,  4 Dec 2021 17:29:59 -0500 (EST)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Sat, 4 Dec 2021 17:29:59 -0500 (EST)
X-Auth-ID: dpreed@deepplum.com
Date: Sat, 4 Dec 2021 17:29:59 -0500 (EST)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Dave Taht" <dave.taht@gmail.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <CAA93jw6GeQxF59zX=Co1t_28CxLhi6M_Rn=TBYK8sZtRV1enQQ@mail.gmail.com>
References: <CAA93jw5MbJwUQf3=N6xsv7dn7V+1dKeX5QR93+f7erHup+TUQg@mail.gmail.com> 
 <0A6AB0B7-E010-42E3-BAEE-FCBFA5995117@gmail.com> 
 <CAA93jw6GeQxF59zX=Co1t_28CxLhi6M_Rn=TBYK8sZtRV1enQQ@mail.gmail.com>
X-Client-IP: 209.6.168.128
Message-ID: <1638656999.711523536@apps.rackspace.com>
X-Mailer: webmail/19.0.13-RC
X-Classification-ID: 502c4cb9-68ea-4684-a78a-3ac09cfa9713-1-1
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
Content-Type: multipart/mixed; boundary="===============7367630815867798589=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7367630815867798589==
Content-Type: multipart/alternative;boundary="----=_20211204172959000000_95962"

------=_20211204172959000000_95962
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AI just watched it. His assumption that "carrier networks can't solve the=
 problem because they can't control the hosts" is JUST WRONG!=0A =0AThe Int=
ernet solution is to require the flows' source hosts to regulate their tran=
smission based on dynamic feedback.=0A =0AAnd this ignorance on his part is=
 clearly his advisors' fault.=0A =0AThe pattern here is:=0A =0AI make assum=
ption that rules out better solutions.=0A =0AI then invent some complicated=
 kludge "inside the network" and claim it solves the problem.=0A =0AThen I =
demand that networks put this kludge into the network.=0A =0AIn other words=
, he takes an end-to-end problem (regulating source rates to achive low int=
ernal queue delay), and instead of implementing a solution at the ends, he =
adds much more complexity inside the network.=0A =0AViolating the whole end=
-to-end argument.=0A =0AOr, simplifying the point: "we have smarts in the r=
outers, that we aren't using, so let's invent something to use them, even t=
hough there are better solutions."=0A =0AYuck!=0A =0AThis is how we ended u=
p with CISC computers, with operating systems that shove huge amounts of fu=
nction into protected mode with heavy use of shared global variables protec=
ted by complicated locks.=0A =0AOK, this creates the need for complicated P=
hD theses where the coolness is how complicated the code was to get working=
.=0A =0A =0A =0AOn Saturday, December 4, 2021 1:44pm, "Dave Taht" <dave.tah=
t@gmail.com> said:=0A=0A=0A=0A> It was the conquest tool they referenced th=
at really caught my eye=0A> =0A> https://www.youtube.com/watch?v=3DQ3FFzB0S=
Ujc=0A> =0A> "ConQuest: Fine-Grained Queue Measurement in the Data Plane"=
=0A> =0A> On Fri, Dec 3, 2021 at 4:09 PM Jonathan Morton <chromatix99@gmail=
.com>=0A> wrote:=0A> >=0A> > > On 4 Dec, 2021, at 12:27 am, Dave Taht <dave=
.taht@gmail.com>=0A> wrote:=0A> > >=0A> > >=0A> https://jonathankua.github.=
io/preprints/jkua-ieeelcn2021_understanding_ar_preprint-20jul2021.pdf=0A> >=
 >=0A> > > I would love it if somehow the measured effects of chunklets aga=
inst=0A> cake's per-host/per flow fq was examined one day.=0A> >=0A> > I ha=
ven't actually measured it, but based on what the above paper says, I can=
=0A> make some firm predictions:=0A> >=0A> > 1: When competing against traf=
fic to the same local host, the performance=0A> effects they describe will =
be present.=0A> >=0A> > 2: When competing against traffic to a different lo=
cal-network host, the=0A> performance effects they describe will be attenua=
ted or even entirely absent.=0A> >=0A> > 3: They noted one or two cases of =
observable effects of hash collisions in=0A> their tests with FQ-Codel. The=
se will be greatly reduced in prevalence with Cake,=0A> due to the set-asso=
ciative hash function which specifically addresses that=0A> phenomenon.=0A>=
 >=0A> > - Jonathan Morton=0A> =0A> =0A> =0A> --=0A> I tried to build a bet=
ter future, a few times:=0A> https://wayforward.archive.org/?site=3Dhttps%3=
A%2F%2Fwww.icei.org=0A> =0A> Dave T=C3=A4ht CEO, TekLibre, LLC=0A> ________=
_______________________________________=0A> Cake mailing list=0A> Cake@list=
s.bufferbloat.net=0A> https://lists.bufferbloat.net/listinfo/cake=0A> 
------=_20211204172959000000_95962
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">I just watched it. His=
 assumption that "carrier networks can't solve the problem because they can=
't control the hosts" is JUST WRONG!</p>=0A<p style=3D"margin:0;padding:0;f=
ont-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; over=
flow-wrap: break-word;">The Internet solution is to require the flows' sour=
ce hosts to regulate their transmission based on dynamic feedback.</p>=0A<p=
 style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-=
wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">And this ignorance on =
his part is clearly his advisors' fault.</p>=0A<p style=3D"margin:0;padding=
:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;<=
/p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; o=
verflow-wrap: break-word;">The pattern here is:</p>=0A<p style=3D"margin:0;=
padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">=
&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: =
10pt; overflow-wrap: break-word;">I make assumption that rules out better s=
olutions.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-siz=
e: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padd=
ing:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">I th=
en invent some complicated kludge "inside the network" and claim it solves =
the problem.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-=
size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;p=
adding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">T=
hen I demand that networks put this kludge into the network.</p>=0A<p style=
=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial=
; font-size: 10pt; overflow-wrap: break-word;">In other words, he takes an =
end-to-end problem (regulating source rates to achive low internal queue de=
lay), and instead of implementing a solution at the ends, he adds much more=
 complexity inside the network.</p>=0A<p style=3D"margin:0;padding:0;font-f=
amily: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p =
style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-w=
rap: break-word;">Violating the whole end-to-end argument.</p>=0A<p style=
=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: =
break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial=
; font-size: 10pt; overflow-wrap: break-word;">Or, simplifying the point: "=
we have smarts in the routers, that we aren't using, so let's invent someth=
ing to use them, even though there are better solutions."</p>=0A<p style=3D=
"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: bre=
ak-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; f=
ont-size: 10pt; overflow-wrap: break-word;">Yuck!</p>=0A<p style=3D"margin:=
0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;=
">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size=
: 10pt; overflow-wrap: break-word;">This is how we ended up with CISC compu=
ters, with operating systems that shove huge amounts of function into prote=
cted mode with heavy use of shared global variables protected by complicate=
d locks.</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size=
: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;paddi=
ng:0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">OK, t=
his creates the need for complicated PhD theses where the coolness is how c=
omplicated the code was to get working.</p>=0A<p style=3D"margin:0;padding:=
0;font-family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</=
p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; ov=
erflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-=
family: arial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p=
 style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-=
wrap: break-word;">On Saturday, December 4, 2021 1:44pm, "Dave Taht" &lt;da=
ve.taht@gmail.com&gt; said:<br /><br /></p>=0A<div id=3D"SafeStyles16386564=
40">=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; =
overflow-wrap: break-word;">&gt; It was the conquest tool they referenced t=
hat really caught my eye<br />&gt; <br />&gt; https://www.youtube.com/watch=
?v=3DQ3FFzB0SUjc<br />&gt; <br />&gt; "ConQuest: Fine-Grained Queue Measure=
ment in the Data Plane"<br />&gt; <br />&gt; On Fri, Dec 3, 2021 at 4:09 PM=
 Jonathan Morton &lt;chromatix99@gmail.com&gt;<br />&gt; wrote:<br />&gt; &=
gt;<br />&gt; &gt; &gt; On 4 Dec, 2021, at 12:27 am, Dave Taht &lt;dave.tah=
t@gmail.com&gt;<br />&gt; wrote:<br />&gt; &gt; &gt;<br />&gt; &gt; &gt;<br=
 />&gt; https://jonathankua.github.io/preprints/jkua-ieeelcn2021_understand=
ing_ar_preprint-20jul2021.pdf<br />&gt; &gt; &gt;<br />&gt; &gt; &gt; I wou=
ld love it if somehow the measured effects of chunklets against<br />&gt; c=
ake's per-host/per flow fq was examined one day.<br />&gt; &gt;<br />&gt; &=
gt; I haven't actually measured it, but based on what the above paper says,=
 I can<br />&gt; make some firm predictions:<br />&gt; &gt;<br />&gt; &gt; =
1: When competing against traffic to the same local host, the performance<b=
r />&gt; effects they describe will be present.<br />&gt; &gt;<br />&gt; &g=
t; 2: When competing against traffic to a different local-network host, the=
<br />&gt; performance effects they describe will be attenuated or even ent=
irely absent.<br />&gt; &gt;<br />&gt; &gt; 3: They noted one or two cases =
of observable effects of hash collisions in<br />&gt; their tests with FQ-C=
odel. These will be greatly reduced in prevalence with Cake,<br />&gt; due =
to the set-associative hash function which specifically addresses that<br /=
>&gt; phenomenon.<br />&gt; &gt;<br />&gt; &gt; - Jonathan Morton<br />&gt;=
 <br />&gt; <br />&gt; <br />&gt; --<br />&gt; I tried to build a better fu=
ture, a few times:<br />&gt; https://wayforward.archive.org/?site=3Dhttps%3=
A%2F%2Fwww.icei.org<br />&gt; <br />&gt; Dave T=C3=A4ht CEO, TekLibre, LLC<=
br />&gt; _______________________________________________<br />&gt; Cake ma=
iling list<br />&gt; Cake@lists.bufferbloat.net<br />&gt; https://lists.buf=
ferbloat.net/listinfo/cake<br />&gt; </p>=0A</div></font>
------=_20211204172959000000_95962--


--===============7367630815867798589==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7367630815867798589==--


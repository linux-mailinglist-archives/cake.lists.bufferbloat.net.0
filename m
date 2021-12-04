Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F41846882A
	for <lists+cake@lfdr.de>; Sun,  5 Dec 2021 00:01:53 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 60AFD3CB38;
	Sat,  4 Dec 2021 18:01:52 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1638658912;
	bh=ldlRJs/diJ6r84ZscnXgi4pCQavhJ49nR2ZXOQ8krNM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DEnkBhEwZMkSwWc5rl9tdyICWox2ILTUP6tOpirMSqkWKbm3GAhCU7U2fVU1mrfeA
	 AOjZGgZsmThWHV43D+zpgAN/zeOaMWIGn/FZy6jIAKjYLM4X25J+YxRA2byJqGm8Pr
	 0v2/vJfCIKuRAHPPeH1VQetGngnjBuVDQPaICJ3zvPZsaS0IM9AEYo0NFd2gLep7IK
	 qab7/jeP/8RAtgbSMRtMvXhRaAh+Tz3T7qgiWsP1LI1bhsKcKnSns4b+9yvygj8rTo
	 9Oa/tQXkpmmZvgzaNxXNvc4hTjHQwSB/mbUDfqZNbLnrm5P1t30WHLec0DghIi/erj
	 DlGCKbCCQ0p+A==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from smtp121.iad3a.emailsrvr.com (smtp121.iad3a.emailsrvr.com
 [173.203.187.121])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 7D0093B29E
 for <cake@lists.bufferbloat.net>; Sat,  4 Dec 2021 18:01:51 -0500 (EST)
Received: from app36.wa-webapps.iad3a (relay-webapps.rsapps.net
 [172.27.255.140])
 by smtp32.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 152F41963;
 Sat,  4 Dec 2021 18:01:51 -0500 (EST)
Received: from deepplum.com (localhost.localdomain [127.0.0.1])
 by app36.wa-webapps.iad3a (Postfix) with ESMTP id 0075D603D7;
 Sat,  4 Dec 2021 18:01:51 -0500 (EST)
Received: by apps.rackspace.com
 (Authenticated sender: dpreed@deepplum.com, from: dpreed@deepplum.com) 
 with HTTP; Sat, 4 Dec 2021 18:01:50 -0500 (EST)
X-Auth-ID: dpreed@deepplum.com
Date: Sat, 4 Dec 2021 18:01:50 -0500 (EST)
From: "David P. Reed" <dpreed@deepplum.com>
To: "Jonathan Morton" <chromatix99@gmail.com>
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: html
In-Reply-To: <0A6AB0B7-E010-42E3-BAEE-FCBFA5995117@gmail.com>
References: <CAA93jw5MbJwUQf3=N6xsv7dn7V+1dKeX5QR93+f7erHup+TUQg@mail.gmail.com> 
 <0A6AB0B7-E010-42E3-BAEE-FCBFA5995117@gmail.com>
X-Client-IP: 209.6.168.128
Message-ID: <1638658910.996417608@apps.rackspace.com>
X-Mailer: webmail/19.0.13-RC
X-Classification-ID: 02c8a524-ca49-4dda-9405-a04da427001a-1-1
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
Content-Type: multipart/mixed; boundary="===============0909232492440642428=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0909232492440642428==
Content-Type: multipart/alternative;boundary="----=_20211204180151000000_16568"

------=_20211204180151000000_16568
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=0AI agree with your broad assessment, Jonathan.=0A =0AThe self-interferenc=
e problem within a host isn't just a network problem. It's a user-space sch=
eduler problem as well.=0A =0AThere are lots of interactions between user-s=
pace scheduler (in the case of Linux, the "Completely Fair Scheduler" and i=
ts quantum, which is set by the HZ variable at boot) and the network stack =
in the kernel. This interactions have non-trivial effects when mutliple flo=
ws are independently created by concurrent processes).=0A =0ALately, I've b=
een studying, for reasons related to my day job, the complex interactions o=
f timing at sub-millisecond scale among threads and processes on a single s=
ystem in Linux. I/O driven by threads become highly correlated, and so assu=
ming "independence" among flow timing  is just not a good assumption.=0A =
=0AThe paper observes the results of "dependencies" that couple/resonate.=
=0A =0AOn Friday, December 3, 2021 7:09pm, "Jonathan Morton" <chromatix99@g=
mail.com> said:=0A=0A=0A=0A> > On 4 Dec, 2021, at 12:27 am, Dave Taht <dave=
.taht@gmail.com> wrote:=0A> >=0A> >=0A> https://jonathankua.github.io/prepr=
ints/jkua-ieeelcn2021_understanding_ar_preprint-20jul2021.pdf=0A> >=0A> > I=
 would love it if somehow the measured effects of chunklets against cake's=
=0A> per-host/per flow fq was examined one day.=0A> =0A> I haven't actually=
 measured it, but based on what the above paper says, I can make=0A> some f=
irm predictions:=0A> =0A> 1: When competing against traffic to the same loc=
al host, the performance effects=0A> they describe will be present.=0A> =0A=
> 2: When competing against traffic to a different local-network host, the=
=0A> performance effects they describe will be attenuated or even entirely =
absent.=0A> =0A> 3: They noted one or two cases of observable effects of ha=
sh collisions in their=0A> tests with FQ-Codel. These will be greatly reduc=
ed in prevalence with Cake, due=0A> to the set-associative hash function wh=
ich specifically addresses that phenomenon.=0A> =0A> - Jonathan Morton=0A> =
_______________________________________________=0A> Cake mailing list=0A> C=
ake@lists.bufferbloat.net=0A> https://lists.bufferbloat.net/listinfo/cake=
=0A> 
------=_20211204180151000000_16568
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<font face=3D"arial" size=3D"2"><p style=3D"margin:0;padding:0;font-family:=
 arial; font-size: 10pt; overflow-wrap: break-word;">I agree with your broa=
d assessment, Jonathan.</p>=0A<p style=3D"margin:0;padding:0;font-family: a=
rial; font-size: 10pt; overflow-wrap: break-word;">&nbsp;</p>=0A<p style=3D=
"margin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: bre=
ak-word;">The self-interference problem within a host isn't just a network =
problem. It's a user-space scheduler problem as well.</p>=0A<p style=3D"mar=
gin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-w=
ord;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-=
size: 10pt; overflow-wrap: break-word;">There are lots of interactions betw=
een user-space scheduler (in the case of Linux, the "Completely Fair Schedu=
ler" and its quantum, which is set by the HZ variable at boot) and the netw=
ork stack in the kernel. This interactions&nbsp;have non-trivial effects wh=
en mutliple flows are independently created by concurrent processes).</p>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; over=
flow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-fa=
mily: arial; font-size: 10pt; overflow-wrap: break-word;">Lately, I've been=
 studying, for reasons related to my day job, the complex interactions of t=
iming at sub-millisecond scale among threads and processes on a single syst=
em in Linux. I/O driven by threads become highly correlated, and so assumin=
g "independence" among flow timing&nbsp; is just not a good assumption.</p>=
=0A<p style=3D"margin:0;padding:0;font-family: arial; font-size: 10pt; over=
flow-wrap: break-word;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-fa=
mily: arial; font-size: 10pt; overflow-wrap: break-word;">The paper observe=
s the results of "dependencies" that couple/resonate.</p>=0A<p style=3D"mar=
gin:0;padding:0;font-family: arial; font-size: 10pt; overflow-wrap: break-w=
ord;">&nbsp;</p>=0A<p style=3D"margin:0;padding:0;font-family: arial; font-=
size: 10pt; overflow-wrap: break-word;">On Friday, December 3, 2021 7:09pm,=
 "Jonathan Morton" &lt;chromatix99@gmail.com&gt; said:<br /><br /></p>=0A<d=
iv id=3D"SafeStyles1638658447">=0A<p style=3D"margin:0;padding:0;font-famil=
y: arial; font-size: 10pt; overflow-wrap: break-word;">&gt; &gt; On 4 Dec, =
2021, at 12:27 am, Dave Taht &lt;dave.taht@gmail.com&gt; wrote:<br />&gt; &=
gt;<br />&gt; &gt;<br />&gt; https://jonathankua.github.io/preprints/jkua-i=
eeelcn2021_understanding_ar_preprint-20jul2021.pdf<br />&gt; &gt;<br />&gt;=
 &gt; I would love it if somehow the measured effects of chunklets against =
cake's<br />&gt; per-host/per flow fq was examined one day.<br />&gt; <br /=
>&gt; I haven't actually measured it, but based on what the above paper say=
s, I can make<br />&gt; some firm predictions:<br />&gt; <br />&gt; 1: When=
 competing against traffic to the same local host, the performance effects<=
br />&gt; they describe will be present.<br />&gt; <br />&gt; 2: When compe=
ting against traffic to a different local-network host, the<br />&gt; perfo=
rmance effects they describe will be attenuated or even entirely absent.<br=
 />&gt; <br />&gt; 3: They noted one or two cases of observable effects of =
hash collisions in their<br />&gt; tests with FQ-Codel. These will be great=
ly reduced in prevalence with Cake, due<br />&gt; to the set-associative ha=
sh function which specifically addresses that phenomenon.<br />&gt; <br />&=
gt; - Jonathan Morton<br />&gt; ___________________________________________=
____<br />&gt; Cake mailing list<br />&gt; Cake@lists.bufferbloat.net<br />=
&gt; https://lists.bufferbloat.net/listinfo/cake<br />&gt; </p>=0A</div></f=
ont>
------=_20211204180151000000_16568--


--===============0909232492440642428==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0909232492440642428==--


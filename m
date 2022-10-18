Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC7C603357
	for <lists+cake@lfdr.de>; Tue, 18 Oct 2022 21:30:46 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 187C53CB4B;
	Tue, 18 Oct 2022 15:30:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1666121439;
	bh=vDpSmieiInrM9eopMQXcN9ZCVGlwopY2honub7S7Vjs=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=bB2QO4KZc5b4IhVboftfhq5227MCYDjW0ivSrhBzYpqCn6jsOUYZ8ONA9QyAoMyWg
	 ekdtspSGmHW83PumQ52Hr0HI/EjpMoBuYNGLQaGaR56lOEa8YHoWmyYPcbQ8orXv+8
	 07lVqP92iNQwd3+1WExlw49gt8K948OC/oRzLjtjjcHpagQQtHg8mGuEf+YWOIoiTk
	 ip9U1PvJuRzSKNpUcW4/XEZbRU365a+bTm7cBlP5G4RG3cs2Xvdu+H+V0KdS2rWWyQ
	 IuLIjsPow6GEkaH4pmLf1/qBI30RqEhuk0L6mfwgTb2hsqJdwyYBlTrXNrSdiGHsUx
	 /jCF9aqcyFh1g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id EA3BD3CB37
 for <cake@lists.bufferbloat.net>; Tue, 18 Oct 2022 15:30:36 -0400 (EDT)
Received: by mail-lj1-x234.google.com with SMTP id a6so19315208ljq.5
 for <cake@lists.bufferbloat.net>; Tue, 18 Oct 2022 12:30:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=vm32nYVXeaxJmKfrlcAnarAeI2QiIjQnQWoM4n0yZCU=;
 b=aprFyMPM1eoLDuLpacSV3t07e4ZTxK9QZCIc8RmezvBS+nY86Mrtimed7nSXpWItMc
 PEVQ+g1aqeJfbZQ5fOPejoNrHIS4ezbjvQ3xS9o7jZ/0/km86y1ihhaQrl1u+iqta+i9
 eZoivAQ8Be0ejSf7S7vTQ4ANooLOe2rMZH8w0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=vm32nYVXeaxJmKfrlcAnarAeI2QiIjQnQWoM4n0yZCU=;
 b=jcH0zHto2PaSY6G8oYDNkFw8YCeEIDqB7hD9gGx3QWbGp+cINmzTTAQRBIwpTc1Fd9
 dQmojTrijFutQbib52oPqt7M5m7dTHdN2Ho9WwbosBRZX2Z//bTwDW+4kLa0CgheI/pR
 DPr5EzicRSi0YyxfSCgQHLJ60mzNkRdYb7hKnkNI1d+iUNdYgPnS4EFVGTjSxVehc0F3
 ks8y/6xWZtH9E2qUIQY4u6maqo+4snP0N3cgpAiBdCBfrczyXET+j58rajRhB32HH7Ll
 IHPXGX6BZQvXEyUXTJ17r2Y9e7XUULd+T/xfipC81tFpgd+gf0iziFmRAhkailmnyomi
 6aiA==
X-Gm-Message-State: ACrzQf28WP5p1iuK/3pmK78U3V13VfrejeDmnDm+D/vPlcJPmDM2uZC7
 M5mgxnCDFmlECeWpHKEavjHRBsju5hNY/uJhOMozclnbX4a97v5MerT5CysxlTvhyFAv7r/Oleg
 OIlPEPn3CjC7BIZngIl32a7sbU9ApYrzCD1CF
X-Google-Smtp-Source: AMsMyM5oZtvA2X3OKie37r3VeFR5JFf+Q50/3qqJJcSw7Nc79xFCAjG374fTV4PXYi8+3fxzl+zeUoF8pNE6bO7CJOk=
X-Received: by 2002:a2e:8183:0:b0:26e:823d:d51a with SMTP id
 e3-20020a2e8183000000b0026e823dd51amr1581831ljg.472.1666121435365; Tue, 18
 Oct 2022 12:30:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <938D9D45-DADA-4291-BD8A-84E4257CEE49@apple.com>
 <CAA93jw4KOkgdfT2LunCtPYPjXL+=OtTrouJgPjM7U1bHKtErnw@mail.gmail.com>
 <6710sq51-1151-s739-qq87-0r5264qrs9q8@ynat.uz>
 <CAHb6LvoUr9cqzKQo0K-9BUJLepiWSHvWuEna3sOfF1oXk-yquw@mail.gmail.com>
 <BBA547E7-7061-451D-8EA1-22C282E11234@gmx.de>
In-Reply-To: <BBA547E7-7061-451D-8EA1-22C282E11234@gmx.de>
Date: Tue, 18 Oct 2022 12:30:22 -0700
Message-ID: <CAHb6LvpHZkyUR9YjY7vSjGC8jVghXhvi5g-9UcWE_X=_3pw+nQ@mail.gmail.com>
To: Sebastian Moeller <moeller0@gmx.de>
Subject: Re: [Cake] [Rpm] [Make-wifi-fast] [Bloat] The most wonderful video
 ever about bufferbloat
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
From: Bob McMahon via Cake <cake@lists.bufferbloat.net>
Reply-To: Bob McMahon <bob.mcmahon@broadcom.com>
Cc: Bob McMahon via Rpm <rpm@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============4098745317230594522=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4098745317230594522==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="00000000000056af9405eb5420f9"

--00000000000056af9405eb5420f9
Content-Type: multipart/alternative; boundary="0000000000004ee2ec05eb542042"

--0000000000004ee2ec05eb542042
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

*[SM] How does that generalize to internet access links? My gut feeling is
that an FQ scheduler comes close.*

Probably not possible. Current fiber SFP 100Gs optics are the most
economic per the SERDES/Laser interface. Any other SFP is
suboptimal, probably for the next decade. Then there are still DSL internet
lines, satellite links, etc. And then WiFi which isn't really
internet access but first/last hop to the IAP last mile link. It seems way
too complicated to generalize a single solution. It's also a bit of an
engineering race and deployment race so the targets driven mostly by market
conditions and engineering project priorities are not fixed.

I do think we can define generalized tests - though that's a digression
(and I'm biased too being a test & measurement engineer.)

*[SM] I guess often things are obvious only retrospectively, but how could
one design a switch differently?*

A suggestion is to look at merchant silicon used by the major integrators
that sell into data centers. But keep in mind the IAP forwarding plane is a
moving target so having some form of hardware programmability in field is
probably needed too. The COGs and volumes are very different too. I think
the market and time will provide the final answer (if there is one) and
then it will change again ;)

*[SM] Is this driven more by the need to aggregate packets to amortize some
cost over a larger payload or to reduce the scheduling overhead or to
regularize things (as in fixed size DTUs used in DSL with G.INP
retransmissions)?*

TXOPs scarcity is driven by listen before talk (LBT.) This is needed for
collision avoidance. Unfortunately, WiFi networks w/o waveguides that share
the same carrier have to be separated in time in a distributed manner to
optimize the overall system. )Adding a scheduling carrier done by things
like mobile networks doesn't work well with small WiFi cells - though
802.11ax is a similar scheduling support mechanism)

*[SM] I am all for better hardware, but will this ever allow us the regress
back to dumb upper layers? I have some doubts, but hey I would not be
unhappy if my AQM would stay idle most of the time, because lower layers
avoid triggering it.*

Doubtful to me to achieve the ideal. Transports enhancements like BBRv2
seem worthwhile. And, yes, the "AQM hammer" to mitigate standing queue(s')
bloat is likely going to be needed as real engineering can't typically
achieve an ideal as some resources are shared and finite as you stated
elsewhere.

Many of the new responsiveness tests under loads are being designed to
create this potentially "artificial" condition, though many times it's real
too, so these tests are a good thing for awareness for sure. What these
tests don't do is monitor actual traffic conditions over time and space to
see how many times AQM had to be activated as well as measure how well
disaggregating the congested shared queue is working.

My opinion is that devices that support OpenWRT could be instrumented to
support network telemetry to provide actuals, at least for the WiFi hop.
There are multiple ways to do this. Some require new engineering efforts.
Others require distributed clock sync so tend to be in test labs only.

Bob

On Tue, Oct 18, 2022 at 11:20 AM Sebastian Moeller <moeller0@gmx.de> wrote:

> Hi Bob,
>
> On 18 October 2022 19:03:21 CEST, Bob McMahon via Rpm <
> rpm@lists.bufferbloat.net> wrote:
> >I agree with Stuart that there is no reason for shared lines in the firs=
t
> >place. It seems like a design flaw to have a common queue that congests =
in
> >a way that impacts the one transmit unit as the atomic forwarding plane
> >unit.
>
> [SM] How does that generalize to internet access links? My gut feeling is
> that an FQ scheduler comes close.
>
>
>  The goal of virtual output queueing
> ><https://en.wikipedia.org/wiki/Virtual_output_queueing> is to eliminate
> >head of line blocking, every egress transmit unit gets its own cashier
> with
> >no competition.  The VOQ queue depths should support one transmit unit a=
nd
> >any jitter through the switching subsystem - jitter for the case of
> >non-bloat and where a faster VOQ service rate can drain the VOQ.  If the
> >VOQ can't be drained per a faster service rate, then it's just one
> >transmit unit as the queue is now just a standing queue w/delay and no
> >benefit.
>
> [SM] I guess often things are obvious only retrospectively, but how could
> one design a switch differently?
>
>
> >
> >Many network engineers typically, though incorrectly, perceive a transmi=
t
> >unit as one ethernet packet. With WiFi it's one Mu transmission or one S=
u
> >transmission, with aggregation(s), which is a lot more than one ethernet
> >packet but it depends on things like MCS, spatial stream powers, Mu peer=
s,
> >etc. and is variable. Some data center designs have optimized the
> >forwarding plane for flow completion times so their equivalent transmit
> >unit is a mouse flow.
>
> [SM] Is this driven more by the need to aggregate packets to amortize som=
e
> cost over a larger payload or to reduce the scheduling overhead or to
> regularize things (as in fixed size DTUs used in DSL with G.INP
> retransmissions)?
>
> >
> >I perceive applying AQM to shared queue congestion as a mitigation
> >technique to a poorly designed forwarding plane. The hope is that
> >transistor engineers don't do this and "design out the lines" from the
> >beginning. Better switching engineering vs queue management applied
> >afterwards as a mitigation technique.
>
> [SM] I am all for better hardware, but will this ever allow us the regres=
s
> back to dumb upper layers? I have some doubts, but hey I would not be
> unhappy if my AQM would stay idle most of the time, because lower layers
> avoid triggering it.
>
>
> >
> >Bob
> >
> >On Mon, Oct 17, 2022 at 7:58 PM David Lang via Make-wifi-fast <
> >make-wifi-fast@lists.bufferbloat.net> wrote:
> >
> >> On Mon, 17 Oct 2022, Dave Taht via Bloat wrote:
> >>
> >> > On Mon, Oct 17, 2022 at 5:02 PM Stuart Cheshire <cheshire@apple.com>
> >> wrote:
> >> >>
> >> >> On 9 Oct 2022, at 06:14, Dave Taht via Make-wifi-fast <
> >> make-wifi-fast@lists.bufferbloat.net> wrote:
> >> >>
> >> >> > This was so massively well done, I cried. Does anyone know how to
> get
> >> in touch with the ifxit folk?
> >> >> >
> >> >> > https://www.youtube.com/watch?v=3DUICh3ScfNWI
> >> >>
> >> >> I=E2=80=99m surprised that you liked this video. It seems to me tha=
t it
> repeats
> >> all the standard misinformation. The analogy they use is the standard
> >> terrible example of waiting in a long line at a grocery store, and the
> >> =E2=80=9Csolution=E2=80=9D is letting certain traffic =E2=80=9Cjump th=
e line, angering everyone
> >> behind them=E2=80=9D.
> >> >
> >> > Accuracy be damned. The analogy to common experience resonates more.
> >>
> >> actually, fair queueing is more like the '15 items or less' lanes to
> speed
> >> through the people doing simple things rather than having them wait
> behind
> >> the
> >> mother of 7 doing their monthly shopping.
> >>
> >> David Lang_______________________________________________
> >> Make-wifi-fast mailing list
> >> Make-wifi-fast@lists.bufferbloat.net
> >> https://lists.bufferbloat.net/listinfo/make-wifi-fast
> >
>
> --
> Sent from my Android device with K-9 Mail. Please excuse my brevity.
>

--=20
This electronic communication and the information and any files transmitted=
=20
with it, or attached to it, are confidential and are intended solely for=20
the use of the individual or entity to whom it is addressed and may contain=
=20
information that is confidential, legally privileged, protected by privacy=
=20
laws, or otherwise restricted from disclosure to anyone else. If you are=20
not the intended recipient or the person responsible for delivering the=20
e-mail to the intended recipient, you are hereby notified that any use,=20
copying, distributing, dissemination, forwarding, printing, or copying of=
=20
this e-mail is strictly prohibited. If you received this e-mail in error,=
=20
please return the e-mail to the sender, delete it from your computer, and=
=20
destroy any printed copy of it.

--0000000000004ee2ec05eb542042
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><i>[SM] How does that generalize to internet access links?=
 My gut feeling is that an FQ scheduler comes close.</i><br><div><br></div>=
<div>Probably=C2=A0not possible. Current fiber SFP 100Gs optics are the mos=
t economic=C2=A0per the SERDES/Laser interface. Any other SFP is suboptimal=
,=C2=A0probably for the next decade. Then there are still DSL internet line=
s, satellite links, etc. And then WiFi which isn&#39;t really internet=C2=
=A0access but first/last hop to the IAP last mile link. It seems way too co=
mplicated to generalize a single solution. It&#39;s also a bit of an engine=
ering race and deployment race so the targets driven mostly by market condi=
tions and engineering project priorities are not fixed.<br><br>I do think w=
e can define=C2=A0generalized tests - though=C2=A0that&#39;s a digression (=
and I&#39;m biased too being a test &amp; measurement engineer.)<br><br><i>=
[SM] I guess often things are obvious only retrospectively, but how could o=
ne design a switch differently?</i><br><br>A suggestion is to look at merch=
ant=C2=A0silicon used by the major integrators that=C2=A0sell into data cen=
ters. But keep in mind the IAP forwarding plane is a moving target so havin=
g some form of hardware programmability in field is probably needed too. Th=
e COGs and volumes are very different too. I think the market and time will=
 provide the final answer (if there is one) and then it will change again ;=
)<br><br><i>[SM] Is this driven more by the need to aggregate packets to am=
ortize some cost over a larger payload or to reduce the scheduling overhead=
 or to regularize things (as in fixed size DTUs used in DSL with G.INP retr=
ansmissions)?</i><br><br>TXOPs scarcity is driven by listen before talk (LB=
T.) This is needed for collision avoidance. Unfortunately, WiFi networks w/=
o waveguides that share the same carrier have to be separated in time in a =
distributed manner to optimize the overall system. )Adding a scheduling car=
rier done by things like mobile networks doesn&#39;t work well with small W=
iFi cells - though 802.11ax is a similar scheduling support mechanism)<br><=
br><i>[SM] I am all for better hardware, but will this ever allow us the re=
gress back to dumb upper layers? I have some doubts, but hey I would not be=
 unhappy if my AQM would stay idle most of the time, because lower layers a=
void triggering it.</i><br><br>Doubtful to me to achieve the ideal. Transpo=
rts enhancements like BBRv2 seem worthwhile. And, yes, the &quot;AQM hammer=
&quot; to mitigate standing queue(s&#39;) bloat is likely going to be neede=
d as real engineering can&#39;t typically achieve an ideal as some resource=
s are shared and finite as you stated elsewhere.<br><br>Many of the new res=
ponsiveness tests under loads are being designed to create this potentially=
=C2=A0&quot;artificial&quot; condition, though many times it&#39;s real too=
, so these tests are a good thing for awareness for=C2=A0sure. What these t=
ests don&#39;t do is monitor actual traffic conditions over time and space =
to see how many times AQM had to be activated as well as measure how well d=
isaggregating the congested shared queue is working. <br><br>My opinion is =
that devices that support OpenWRT could be instrumented to support network =
telemetry to provide actuals, at least for the WiFi hop. There are multiple=
 ways to do this. Some require new engineering efforts. Others require dist=
ributed clock sync so tend to be in test labs only.<br><br>Bob<br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Tue, Oct 18, 2022 at 11:20 AM Sebastian Moeller &lt;<a href=3D"mailto:moell=
er0@gmx.de">moeller0@gmx.de</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">Hi Bob,<br>
<br>
On 18 October 2022 19:03:21 CEST, Bob McMahon via Rpm &lt;<a href=3D"mailto=
:rpm@lists.bufferbloat.net" target=3D"_blank">rpm@lists.bufferbloat.net</a>=
&gt; wrote:<br>
&gt;I agree with Stuart that there is no reason for shared lines in the fir=
st<br>
&gt;place. It seems like a design flaw to have a common queue that congests=
 in<br>
&gt;a way that impacts the one transmit unit as the atomic forwarding plane=
<br>
&gt;unit. <br>
<br>
[SM] How does that generalize to internet access links? My gut feeling is t=
hat an FQ scheduler comes close.<br>
<br>
<br>
=C2=A0The goal of virtual output queueing<br>
&gt;&lt;<a href=3D"https://en.wikipedia.org/wiki/Virtual_output_queueing" r=
el=3D"noreferrer" target=3D"_blank">https://en.wikipedia.org/wiki/Virtual_o=
utput_queueing</a>&gt; is to eliminate<br>
&gt;head of line blocking, every egress transmit unit gets its own cashier =
with<br>
&gt;no competition.=C2=A0 The VOQ queue depths should support one transmit =
unit and<br>
&gt;any jitter through the switching subsystem - jitter for the case of<br>
&gt;non-bloat and where a faster VOQ service rate can drain the VOQ.=C2=A0 =
If the<br>
&gt;VOQ can&#39;t be drained per a faster service rate, then it&#39;s just =
one<br>
&gt;transmit unit as the queue is now just a standing queue w/delay and no<=
br>
&gt;benefit.<br>
<br>
[SM] I guess often things are obvious only retrospectively, but how could o=
ne design a switch differently?<br>
<br>
<br>
&gt;<br>
&gt;Many network engineers typically, though incorrectly, perceive a transm=
it<br>
&gt;unit as one ethernet packet. With WiFi it&#39;s one Mu transmission or =
one Su<br>
&gt;transmission, with aggregation(s), which is a lot more than one etherne=
t<br>
&gt;packet but it depends on things like MCS, spatial stream powers, Mu pee=
rs,<br>
&gt;etc. and is variable. Some data center designs have optimized the<br>
&gt;forwarding plane for flow completion times so their equivalent transmit=
<br>
&gt;unit is a mouse flow.<br>
<br>
[SM] Is this driven more by the need to aggregate packets to amortize some =
cost over a larger payload or to reduce the scheduling overhead or to regul=
arize things (as in fixed size DTUs used in DSL with G.INP retransmissions)=
?<br>
<br>
&gt;<br>
&gt;I perceive applying AQM to shared queue congestion as a mitigation<br>
&gt;technique to a poorly designed forwarding plane. The hope is that<br>
&gt;transistor engineers don&#39;t do this and &quot;design out the lines&q=
uot; from the<br>
&gt;beginning. Better switching engineering vs queue management applied<br>
&gt;afterwards as a mitigation technique.<br>
<br>
[SM] I am all for better hardware, but will this ever allow us the regress =
back to dumb upper layers? I have some doubts, but hey I would not be unhap=
py if my AQM would stay idle most of the time, because lower layers avoid t=
riggering it.<br>
<br>
<br>
&gt;<br>
&gt;Bob<br>
&gt;<br>
&gt;On Mon, Oct 17, 2022 at 7:58 PM David Lang via Make-wifi-fast &lt;<br>
&gt;<a href=3D"mailto:make-wifi-fast@lists.bufferbloat.net" target=3D"_blan=
k">make-wifi-fast@lists.bufferbloat.net</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; On Mon, 17 Oct 2022, Dave Taht via Bloat wrote:<br>
&gt;&gt;<br>
&gt;&gt; &gt; On Mon, Oct 17, 2022 at 5:02 PM Stuart Cheshire &lt;<a href=
=3D"mailto:cheshire@apple.com" target=3D"_blank">cheshire@apple.com</a>&gt;=
<br>
&gt;&gt; wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On 9 Oct 2022, at 06:14, Dave Taht via Make-wifi-fast &lt=
;<br>
&gt;&gt; <a href=3D"mailto:make-wifi-fast@lists.bufferbloat.net" target=3D"=
_blank">make-wifi-fast@lists.bufferbloat.net</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt; This was so massively well done, I cried. Does anyon=
e know how to get<br>
&gt;&gt; in touch with the ifxit folk?<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"https://www.youtube.com/watch?v=3DUICh3Sc=
fNWI" rel=3D"noreferrer" target=3D"_blank">https://www.youtube.com/watch?v=
=3DUICh3ScfNWI</a><br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; I=E2=80=99m surprised that you liked this video. It seems=
 to me that it repeats<br>
&gt;&gt; all the standard misinformation. The analogy they use is the stand=
ard<br>
&gt;&gt; terrible example of waiting in a long line at a grocery store, and=
 the<br>
&gt;&gt; =E2=80=9Csolution=E2=80=9D is letting certain traffic =E2=80=9Cjum=
p the line, angering everyone<br>
&gt;&gt; behind them=E2=80=9D.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Accuracy be damned. The analogy to common experience resonate=
s more.<br>
&gt;&gt;<br>
&gt;&gt; actually, fair queueing is more like the &#39;15 items or less&#39=
; lanes to speed<br>
&gt;&gt; through the people doing simple things rather than having them wai=
t behind<br>
&gt;&gt; the<br>
&gt;&gt; mother of 7 doing their monthly shopping.<br>
&gt;&gt;<br>
&gt;&gt; David Lang_______________________________________________<br>
&gt;&gt; Make-wifi-fast mailing list<br>
&gt;&gt; <a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"=
_blank">Make-wifi-fast@lists.bufferbloat.net</a><br>
&gt;&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" =
rel=3D"noreferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo=
/make-wifi-fast</a><br>
&gt;<br>
<br>
-- <br>
Sent from my Android device with K-9 Mail. Please excuse my brevity.<br>
</blockquote></div>

<br>
<span style=3D"background-color:rgb(255,255,255)"><font size=3D"2">This ele=
ctronic communication and the information and any files transmitted with it=
, or attached to it, are confidential and are intended solely for the use o=
f the individual or entity to whom it is addressed and may contain informat=
ion that is confidential, legally privileged, protected by privacy laws, or=
 otherwise restricted from disclosure to anyone else. If you are not the in=
tended recipient or the person responsible for delivering the e-mail to the=
 intended recipient, you are hereby notified that any use, copying, distrib=
uting, dissemination, forwarding, printing, or copying of this e-mail is st=
rictly prohibited. If you received this e-mail in error, please return the =
e-mail to the sender, delete it from your computer, and destroy any printed=
 copy of it.</font></span>
--0000000000004ee2ec05eb542042--

--00000000000056af9405eb5420f9
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIQagYJKoZIhvcNAQcCoIIQWzCCEFcCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
gg3BMIIFDTCCA/WgAwIBAgIQeEqpED+lv77edQixNJMdADANBgkqhkiG9w0BAQsFADBMMSAwHgYD
VQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UE
AxMKR2xvYmFsU2lnbjAeFw0yMDA5MTYwMDAwMDBaFw0yODA5MTYwMDAwMDBaMFsxCzAJBgNVBAYT
AkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBS
MyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
vbCmXCcsbZ/a0fRIQMBxp4gJnnyeneFYpEtNydrZZ+GeKSMdHiDgXD1UnRSIudKo+moQ6YlCOu4t
rVWO/EiXfYnK7zeop26ry1RpKtogB7/O115zultAz64ydQYLe+a1e/czkALg3sgTcOOcFZTXk38e
aqsXsipoX1vsNurqPtnC27TWsA7pk4uKXscFjkeUE8JZu9BDKaswZygxBOPBQBwrA5+20Wxlk6k1
e6EKaaNaNZUy30q3ArEf30ZDpXyfCtiXnupjSK8WU2cK4qsEtj09JS4+mhi0CTCrCnXAzum3tgcH
cHRg0prcSzzEUDQWoFxyuqwiwhHu3sPQNmFOMwIDAQABo4IB2jCCAdYwDgYDVR0PAQH/BAQDAgGG
MGAGA1UdJQRZMFcGCCsGAQUFBwMCBggrBgEFBQcDBAYKKwYBBAGCNxQCAgYKKwYBBAGCNwoDBAYJ
KwYBBAGCNxUGBgorBgEEAYI3CgMMBggrBgEFBQcDBwYIKwYBBQUHAxEwEgYDVR0TAQH/BAgwBgEB
/wIBADAdBgNVHQ4EFgQUljPR5lgXWzR1ioFWZNW+SN6hj88wHwYDVR0jBBgwFoAUj/BLf6guRSSu
TVD6Y5qL3uLdG7wwegYIKwYBBQUHAQEEbjBsMC0GCCsGAQUFBzABhiFodHRwOi8vb2NzcC5nbG9i
YWxzaWduLmNvbS9yb290cjMwOwYIKwYBBQUHMAKGL2h0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5j
b20vY2FjZXJ0L3Jvb3QtcjMuY3J0MDYGA1UdHwQvMC0wK6ApoCeGJWh0dHA6Ly9jcmwuZ2xvYmFs
c2lnbi5jb20vcm9vdC1yMy5jcmwwWgYDVR0gBFMwUTALBgkrBgEEAaAyASgwQgYKKwYBBAGgMgEo
CjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzAN
BgkqhkiG9w0BAQsFAAOCAQEAdAXk/XCnDeAOd9nNEUvWPxblOQ/5o/q6OIeTYvoEvUUi2qHUOtbf
jBGdTptFsXXe4RgjVF9b6DuizgYfy+cILmvi5hfk3Iq8MAZsgtW+A/otQsJvK2wRatLE61RbzkX8
9/OXEZ1zT7t/q2RiJqzpvV8NChxIj+P7WTtepPm9AIj0Keue+gS2qvzAZAY34ZZeRHgA7g5O4TPJ
/oTd+4rgiU++wLDlcZYd/slFkaT3xg4qWDepEMjT4T1qFOQIL+ijUArYS4owpPg9NISTKa1qqKWJ
jFoyms0d0GwOniIIbBvhI2MJ7BSY9MYtWVT5jJO3tsVHwj4cp92CSFuGwunFMzCCA18wggJHoAMC
AQICCwQAAAAAASFYUwiiMA0GCSqGSIb3DQEBCwUAMEwxIDAeBgNVBAsTF0dsb2JhbFNpZ24gUm9v
dCBDQSAtIFIzMRMwEQYDVQQKEwpHbG9iYWxTaWduMRMwEQYDVQQDEwpHbG9iYWxTaWduMB4XDTA5
MDMxODEwMDAwMFoXDTI5MDMxODEwMDAwMFowTDEgMB4GA1UECxMXR2xvYmFsU2lnbiBSb290IENB
IC0gUjMxEzARBgNVBAoTCkdsb2JhbFNpZ24xEzARBgNVBAMTCkdsb2JhbFNpZ24wggEiMA0GCSqG
SIb3DQEBAQUAA4IBDwAwggEKAoIBAQDMJXaQeQZ4Ihb1wIO2hMoonv0FdhHFrYhy/EYCQ8eyip0E
XyTLLkvhYIJG4VKrDIFHcGzdZNHr9SyjD4I9DCuul9e2FIYQebs7E4B3jAjhSdJqYi8fXvqWaN+J
J5U4nwbXPsnLJlkNc96wyOkmDoMVxu9bi9IEYMpJpij2aTv2y8gokeWdimFXN6x0FNx04Druci8u
nPvQu7/1PQDhBjPogiuuU6Y6FnOM3UEOIDrAtKeh6bJPkC4yYOlXy7kEkmho5TgmYHWyn3f/kRTv
riBJ/K1AFUjRAjFhGV64l++td7dkmnq/X8ET75ti+w1s4FRpFqkD2m7pg5NxdsZphYIXAgMBAAGj
QjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBSP8Et/qC5FJK5N
UPpjmove4t0bvDANBgkqhkiG9w0BAQsFAAOCAQEAS0DbwFCq/sgM7/eWVEVJu5YACUGssxOGhigH
M8pr5nS5ugAtrqQK0/Xx8Q+Kv3NnSoPHRHt44K9ubG8DKY4zOUXDjuS5V2yq/BKW7FPGLeQkbLmU
Y/vcU2hnVj6DuM81IcPJaP7O2sJTqsyQiunwXUaMld16WCgaLx3ezQA3QY/tRG3XUyiXfvNnBB4V
14qWtNPeTCekTBtzc3b0F5nCH3oO4y0IrQocLP88q1UOD5F+NuvDV0m+4S4tfGCLw0FREyOdzvcy
a5QBqJnnLDMfOjsl0oZAzjsshnjJYS8Uuu7bVW/fhO4FCU29KNhyztNiUGUe65KXgzHZs7XKR1g/
XzCCBUkwggQxoAMCAQICDDGs4Qlq5OZK9mcDzTANBgkqhkiG9w0BAQsFADBbMQswCQYDVQQGEwJC
RTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBHQ0MgUjMg
UGVyc29uYWxTaWduIDIgQ0EgMjAyMDAeFw0yMjA5MTAxMzMzNDFaFw0yNTA5MTAxMzMzNDFaMIGM
MQswCQYDVQQGEwJJTjESMBAGA1UECBMJS2FybmF0YWthMRIwEAYDVQQHEwlCYW5nYWxvcmUxFjAU
BgNVBAoTDUJyb2FkY29tIEluYy4xFDASBgNVBAMTC0JvYiBNY01haG9uMScwJQYJKoZIhvcNAQkB
Fhhib2IubWNtYWhvbkBicm9hZGNvbS5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
AQDBfX3nsBFRdO26im8lhOadVadRmV/YWK+U9OoGlTE+2MDsjJwO5p/Q6iaTUropqMRH1E+EIuhe
/OU6a3/btrqzARE77RaVSdz5swXt7M4ciN+z44nIEx36UQIlFLsBFa3is/J/QLFhTUFFf0wLJsUO
wyja+KvygH/E5TyfeXf5T2Y2wjGZx8jQXZMDmNpfANlEBYDfzCNYcAIQNox8FuPpEpuxWvv7jvxV
X5dfkSef9T/DbsDM0PeTVMVyYIQoRSMBIGxVkaqp0MJglvQ2mU4CXcoOGgm6XC8LoLoEvYojXFKC
fRgCOT5xeMR10UPSBQIljKwt7fPhpYVY+jTtOclpAgMBAAGjggHZMIIB1TAOBgNVHQ8BAf8EBAMC
BaAwgaMGCCsGAQUFBwEBBIGWMIGTME4GCCsGAQUFBzAChkJodHRwOi8vc2VjdXJlLmdsb2JhbHNp
Z24uY29tL2NhY2VydC9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcnQwQQYIKwYBBQUHMAGG
NWh0dHA6Ly9vY3NwLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwME0G
A1UdIARGMEQwQgYKKwYBBAGgMgEoCjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxz
aWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMEkGA1UdHwRCMEAwPqA8oDqGOGh0dHA6Ly9j
cmwuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3JsMCMGA1UdEQQc
MBqBGGJvYi5tY21haG9uQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSME
GDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUpG/4RP1YQA/iXGens9pIRe7CQxMw
DQYJKoZIhvcNAQELBQADggEBACfWLy4qJyCnOa3sl4LEDAMU/gmJ6LbclGE5iR4KanAmlAt92gzN
5lSy/iE+wsRrXiHI7YKFgXX1kVK/RqMiPRrw4hq2j8nxoSi/VFiyS3CsfVMGkbY7HBTlBvla/tH+
+2nJprlXbJyz1GdvoJAeam5RvTWotcCGAjZmMa3U3zMkszgXN849xe3dUK1DauUGiInXEwEdXDcA
/0CVjL3EEMj+kNWcLhrSZKwFtxggUyMW3XWRaAeAL9wOtEaXYqlgbtnV0n9FuoV2TNm3h7Mh7rjV
I2zM+IZ3DE+XFK7dcPwte33u75QyySNJ3UMZqi25CO85yl8Bmo7aWRm99N7HGnkxggJtMIICaQIB
ATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhH
bG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwxrOEJauTmSvZnA80wDQYJ
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIM2ul0U26LPTES3rBpw4DBI46HybdzgxI164
r7Y99CATMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIyMTAxODE5
MzAzNVowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQCI4Et71SW4MlBX2+DvI0WP6/t5ttnFxeOgflTL1sKnP5BcC+RnU1s+
WnC1aL8Yr1Rxdi5Fbk/TBBL1Nf9okQD74NSwCT2IVrKw87DTtTQBPvGH5knh1AlnHez+wo05Pd0l
uoOfbgakhguHD2FAvDZfI/XU8fXhVXtnNVL38aN3yoJbPPyWVOrwMiXMlLz2CsRQXeWJrS0TKm8e
BAgn6A390m6X+JytiuwEdtPDHVLkFlgkCZrGSI9nfzm1uz9+Aq/c+vQCnMOVjWagPpFFNP2vfd+m
Wqy6Y7KBnoOrvb58EnbdkZfKEzXKKXcpZzpkZSilYY2olUOsKouOWwc2Cby1
--00000000000056af9405eb5420f9--

--===============4098745317230594522==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4098745317230594522==--

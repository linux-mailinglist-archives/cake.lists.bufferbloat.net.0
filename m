Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C79EE1C1E50
	for <lists+cake@lfdr.de>; Fri,  1 May 2020 22:19:55 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F20823CB48;
	Fri,  1 May 2020 16:19:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588364395;
	bh=UcFj3OS0vxjF0ny6MmFk+4be784MEjA9xR1Q2C/eG0g=;
	h=References:In-Reply-To:To:List-Id:List-Post:From:Cc:
	 List-Subscribe:List-Unsubscribe:List-Archive:Reply-To:List-Help:
	 Subject:From;
	b=SRgoecv+y3MgEqnRrnxWVRxczylgwyWZyEBnYsxrs8N7sX0yT3IPrRoCMCPQOdMnZ
	 UU0FXQAeYlBBmNyeksHXc2os6RQND4hCbosKXoLXVbYwCp5582gcoy/qEy/hM5Wwjz
	 EYIsjRk3olDAk6DSyrtOMCkEZO4+ptmMNv0oP92+2EftPQjJ7pWb6YO6w33/MCl47l
	 ChgEvNXIoaMXgGhavtTQ+57qcdHThbJjvzdUMJKazMuTDqng19tHfM0xMPYMpGCOQL
	 LuBJTW99KyHc+gfrKRAi/7s9lIvNOOB5mkvJW+kV2wndKvOgjxXNXaJQV+zGQA5NUP
	 YugqPBQClWRGQ==
References: <CAA93jw5HbGBcy6uW0dLbjtLmp_g4SLdK8Ny7G8UvbX_d+H1yXg@mail.gmail.com>
 <05410663-5E50-4CF5-8ADE-3BBB985E32B1@gmx.de>
In-Reply-To: <05410663-5E50-4CF5-8ADE-3BBB985E32B1@gmx.de>
To: Sebastian Moeller <moeller0@gmx.de>
X-Mailman-Approved-At: Fri, 01 May 2020 16:19:53 -0400
MIME-Version: 1.0
Message-ID: <mailman.182.1588364394.24343.cake@lists.bufferbloat.net>
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
From: Sergey Fedorov via Cake <cake@lists.bufferbloat.net>
Precedence: list
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
X-Mailman-Version: 2.1.20
X-BeenThere: cake@lists.bufferbloat.net
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
Reply-To: Sergey Fedorov <sfedorov@netflix.com>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
Subject: Re: [Cake] [Bloat]  dslreports is no longer free
Content-Type: multipart/mixed; boundary="===============2607636919662570765=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2607636919662570765==
Content-Type: message/rfc822
Content-Disposition: inline

Return-Path: <sfedorov@netflix.com>
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com [IPv6:2607:f8b0:4864:20::d33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by lists.bufferbloat.net (Postfix) with ESMTPS id 0E1D13CB35
	for <cake@lists.bufferbloat.net>; Fri,  1 May 2020 16:09:47 -0400 (EDT)
Received: by mail-io1-xd33.google.com with SMTP id k18so6004098ion.0
        for <cake@lists.bufferbloat.net>; Fri, 01 May 2020 13:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=netflix.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uIHkAhROgBMNqLdjd2CO5/Vjgn6aA3oAU1CoJ1QBquE=;
        b=Whtdv0mVycxySBfE9JzMFUvfCGt13rNRB1UcCCElANo9V46lJ7ui5Rs8GRu2GUhIty
         yHccgZEhXhAUBUpYzK9i5fNOyWhf3h0b+jRTaeOB+aR2Y4AtZY5Q2rocFteIkdcVapni
         sis+H85vIGEICal+y0XRVoxQBTjAdNnfJdyoc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uIHkAhROgBMNqLdjd2CO5/Vjgn6aA3oAU1CoJ1QBquE=;
        b=Odclk8Jb6sLJUudVcrLbU6OsPbwc7xdP43LhbV60kVCMSdYhAWGFVRcTgcH/jniCCR
         Vp99/sjq5B6uc+jGPAkb4MSAIV7zgB3n6EQB3rK/QLthGQ/GnVuYOCuTE2pc1ZlsqHfS
         bI3Opif9L5bJviB+zfgqe+vVO9XZi/5cvNRHDWbEqivLJXKnwR4dhIaKDZAcvRvV9d0F
         GrIgk8ZsTXLYR9uf+7Ff0N5rcOPW3GvSkC+pX/uTeYwGPGQ4sDhpTRp4txW26MrJ+PbK
         yDRij5HSxHT3vvKqShInEhbGE28Uwekld9bEgFMyH4uCC4QxFTRv76sXW2FBjsrOFesy
         DIQA==
X-Gm-Message-State: AGi0PuYBwgZQV2U4LrQFDJGloHxVjGYINR3kwn0CqHs6KSt3CeQDpQ3h
	97Syc3qlaN3tnNBhi05eoWEL+Yk7vriv8TwB20rKEw==
X-Google-Smtp-Source: APiQypLhekMEb/DGmSWCcQvTS7mHzTCbMHA/W6S9RjmNKXuLRxa6ZhG27YsVvpFZrN4Y2hwYqTSPduLZNFBOBZBQu3A=
X-Received: by 2002:a5d:9c88:: with SMTP id p8mr5388932iop.200.1588363785645;
 Fri, 01 May 2020 13:09:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw5HbGBcy6uW0dLbjtLmp_g4SLdK8Ny7G8UvbX_d+H1yXg@mail.gmail.com>
 <05410663-5E50-4CF5-8ADE-3BBB985E32B1@gmx.de>
In-Reply-To: <05410663-5E50-4CF5-8ADE-3BBB985E32B1@gmx.de>
From: Sergey Fedorov <sfedorov@netflix.com>
Date: Fri, 1 May 2020 13:09:09 -0700
Message-ID: <CADN=VJnPTGuABtVSyjNqfdvD_W5rC0sRbWeqN=-3pzfxh+_NkQ@mail.gmail.com>
Subject: Re: [Bloat] [Cake] dslreports is no longer free
To: Sebastian Moeller <moeller0@gmx.de>
Cc: =?UTF-8?Q?Dave_T=C3=A4ht?= <dave.taht@gmail.com>, 
	Cake List <cake@lists.bufferbloat.net>, 
	Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
	cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/alternative; boundary="00000000000037f8ba05a49bc366"
X-Mailman-Approved-At: Fri, 01 May 2020 16:19:53 -0400

--00000000000037f8ba05a49bc366
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Great review, Sebastian!


> NETFLIX: fast.com.
>         Pros: allows selection of upload testing, supposedly decent
> back-end, duration configurable
>                 allows unloaded, loaded download and loaded upload RTT
> measurements (but reports sinlge numbers for loaded and unloaded RTT, tha=
t
> are not the max)
>         Cons: RTT report as two numbers one for the loaded and one for
> unloaded RTT, time-course of RTTs missing
>         BUFFERBLOAT verdict: incomplete, but oh, so close...

Just a note that I have a plan to separate the loaded latency into
upload/download. It's not great UX now they way it's implemented.
The timeline view is a bit more nuanced, in the spirit of the simplistic
UX, but I've been thinking on a good way to show that for super users as
well.
Two latency numbers - that's more user friendly, we want the general user
to understand the meaning. And latency under load is much easier than
bufferbloat.

As a side note, if our backend is decent, I'm curious what are the backends
for the speed tests that exist that are great :)


SERGEY FEDOROV

Director of Engineering

sfedorov@netflix.com

121 Albright Way | Los Gatos, CA 95032



On Fri, May 1, 2020 at 12:48 PM Sebastian Moeller <moeller0@gmx.de> wrote:

> Hi Dave,
>
> well, it was a free service and it lasted a long time. I want to raise a
> toast to Justin and convey my sincere thanks for years of investing into
> the "good" of the internet.
>
> Now, the question is which test is going to be the rightful successor?
>
> Short of running netperf/irtt/iper2/iperf3 on a hosted server, I see lots
> of potential but none of the tests are really there yet (grievances in no=
w
> particular order):
>
> OOKLA: speedtest.net.
>         Pros: ubiquitious, allows selection of single flow versus
> multi-flow test, allows server selection
>         Cons: only IPv4, only static unloaded RTT measurement, no control
> over measurement duration
>         BUFFERBLOAT verdict: incomplete, maybe usable as load generator
>
>
> NETFLIX: fast.com.
>         Pros: allows selection of upload testing, supposedly decent
> back-end, duration configurable
>                 allows unloaded, loaded download and loaded upload RTT
> measurements (but reports sinlge numbers for loaded and unloaded RTT, tha=
t
> are not the max)
>         Cons: RTT report as two numbers one for the loaded and one for
> unloaded RTT, time-course of RTTs missing
>         BUFFERBLOAT verdict: incomplete, but oh, so close...
>
>
> NPERF: nperf.com
>         Pros: allows server selection, RTT measurement and report as time
> course, also reports average rates and static RTT/jitter for Up- and
> Download
>         Cons: RTT measurement for unloaded only, reported RTT static only
> , no control over measurement duration
>         BUFFERBLOAT verdict: incomplete,
>
>
> THINKBROADBAND: www.thinkbroadband.com/speedtest
>         Pros: IPv6, reports coarse RTT time courses for all three
> measurement phases
>         Cons: only static unloaded RTT report in final results, time
> courses only visible immediately after testing, no control over measureme=
nt
> duration
>         BUFFERBLOAT verdict: a bit coarse, might work for users within a
> reasonable distance to the UK for acute de-bloating sessions (history
> reporting is bad though)
>
>
> honorable mentioning:
>         BREITBANDMESSUNG: breitbandmessung.de
>         Pros: query of contracted internet access speed before
> measurement, with a scheduler that will only start a test when the backen=
d
> has sufficient capacity to saturate the user-supplied contracted rates,
> IPv6 (happy-eyeballs)
>         Cons: only static unloaded RTT measurement, no control over
> measurement duration
>         BUFFERBLOAT verdict: unsuitable, exceot as load generator, but th=
e
> bandwidth reservation feature is quite nice.
>
> Best Regards
>         Sebastian
>
>
> > On May 1, 2020, at 18:44, Dave Taht <dave.taht@gmail.com> wrote:
> >
> >
> https://www.reddit.com/r/HomeNetworking/comments/gbd6g0/dsl_reports_speed=
_test_no_longer_free/
> >
> > They ran out of bandwidth.
> >
> > Message to users here:
> >
> > http://www.dslreports.com/speedtest
> >
> >
> > --
> > Make Music, Not War
> >
> > Dave T=C3=A4ht
> > CTO, TekLibre, LLC
> > http://www.teklibre.com
> > Tel: 1-831-435-0729
> > _______________________________________________
> > Cake mailing list
> > Cake@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/cake
>
> _______________________________________________
> Bloat mailing list
> Bloat@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/bloat
>

--00000000000037f8ba05a49bc366
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Great review,=C2=A0Sebastian!</div><div>=C2=A0</div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">NETFLIX:=C2=A0<a href=3D"h=
ttp://fast.com/" rel=3D"noreferrer" target=3D"_blank">fast.com</a>.<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 Pros: allows selection of upload testing, supposed=
ly decent back-end, duration configurable<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 allows unloaded, loaded download and loaded upl=
oad RTT measurements (but reports sinlge numbers for loaded and unloaded RT=
T, that are not the max)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Cons: RTT report as=
 two numbers one for the loaded and one for unloaded RTT, time-course of RT=
Ts missing<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 BUFFERBLOAT verdict: incomplete, =
but oh, so close...</blockquote><div>Just a note that I have a plan to sepa=
rate the loaded=C2=A0latency=C2=A0into upload/download. It&#39;s not great =
UX now they way it&#39;s implemented.</div><div>The timeline view is a bit =
more nuanced, in the spirit of the simplistic UX, but I&#39;ve been=C2=A0th=
inking=C2=A0on a good way to show that for super=C2=A0users as well.</div><=
div>Two latency numbers - that&#39;s more user friendly, we want the genera=
l user to understand the meaning. And latency under load is much easier tha=
n bufferbloat.</div><div><br></div><div>As a side note, if our backend is d=
ecent, I&#39;m curious=C2=A0what are the backends for the speed tests that =
exist that are great :)</div><div>=C2=A0</div><div><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr"><span><font size=3D"1"><p dir=3D"ltr" style=3D"line-hei=
ght:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:Arial=
;color:rgb(67,67,67);vertical-align:baseline;white-space:pre-wrap">SERGEY F=
EDOROV</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;ma=
rgin-bottom:0pt"><span style=3D"font-family:Arial;color:rgb(102,102,102);ve=
rtical-align:baseline;white-space:pre-wrap">Director of Engineering</span><=
/p><p style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span sty=
le=3D"font-family:Arial;color:rgb(102,102,102);vertical-align:baseline;whit=
e-space:pre-wrap"><a href=3D"mailto:sfedorov@netflix.com" target=3D"_blank"=
>sfedorov@netflix.com</a></span></p><p style=3D"line-height:1.38;margin-top=
:0pt;margin-bottom:0pt"><span style=3D"font-family:Arial;color:rgb(102,102,=
102);vertical-align:baseline;white-space:pre-wrap">121 Albright Way  |  Los=
 Gatos, CA 95032</span></p><span style=3D"font-family:Arial;color:rgb(136,1=
36,136);vertical-align:baseline;white-space:pre-wrap"><img src=3D"https://l=
h6.googleusercontent.com/sXyXTYq5vF1C3sJhRzJIQ0iYROwE8E1e0R6RY9hhgBZDVe6fLj=
my_Y0F6RsQskALepS5t1zXm9JcQg-HXYQDbLZ6NS0YBjA3oh7IlhrUnR38ttr667EWpXydNk6U1=
I7FLO3civYI" width=3D"73" height=3D"44" style=3D"border:none"></span></font=
></span><br></div></div></div></div></div><br></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 1, 2020 at 12:48 =
PM Sebastian Moeller &lt;<a href=3D"mailto:moeller0@gmx.de">moeller0@gmx.de=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
Hi Dave,<br>
<br>
well, it was a free service and it lasted a long time. I want to raise a to=
ast to Justin and convey my sincere thanks for years of investing into the =
&quot;good&quot; of the internet. <br>
<br>
Now, the question is which test is going to be the rightful successor? <br>
<br>
Short of running netperf/irtt/iper2/iperf3 on a hosted server, I see lots o=
f potential but none of the tests are really there yet (grievances in now p=
articular order):<br>
<br>
OOKLA: <a href=3D"http://speedtest.net" rel=3D"noreferrer" target=3D"_blank=
">speedtest.net</a>.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pros: ubiquitious, allows selection of single f=
low versus multi-flow test, allows server selection<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Cons: only IPv4, only static unloaded RTT measu=
rement, no control over measurement duration<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 BUFFERBLOAT verdict: incomplete, maybe usable a=
s load generator<br>
<br>
<br>
NETFLIX: <a href=3D"http://fast.com" rel=3D"noreferrer" target=3D"_blank">f=
ast.com</a>.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pros: allows selection of upload testing, suppo=
sedly decent back-end, duration configurable<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 allows unloaded, lo=
aded download and loaded upload RTT measurements (but reports sinlge number=
s for loaded and unloaded RTT, that are not the max)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Cons: RTT report as two numbers one for the loa=
ded and one for unloaded RTT, time-course of RTTs missing<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 BUFFERBLOAT verdict: incomplete, but oh, so clo=
se...<br>
<br>
<br>
NPERF: <a href=3D"http://nperf.com" rel=3D"noreferrer" target=3D"_blank">np=
erf.com</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pros: allows server selection, RTT measurement =
and report as time course, also reports average rates and static RTT/jitter=
 for Up- and Download<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Cons: RTT measurement for unloaded only, report=
ed RTT static only , no control over measurement duration<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 BUFFERBLOAT verdict: incomplete,<br>
<br>
<br>
THINKBROADBAND: <a href=3D"http://www.thinkbroadband.com/speedtest" rel=3D"=
noreferrer" target=3D"_blank">www.thinkbroadband.com/speedtest</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pros: IPv6, reports coarse RTT time courses for=
 all three measurement phases<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Cons: only static unloaded RTT report in final =
results, time courses only visible immediately after testing, no control ov=
er measurement duration<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 BUFFERBLOAT verdict: a bit coarse, might work f=
or users within a reasonable distance to the UK for acute de-bloating sessi=
ons (history reporting is bad though)<br>
<br>
<br>
honorable mentioning:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 BREITBANDMESSUNG: <a href=3D"http://breitbandme=
ssung.de" rel=3D"noreferrer" target=3D"_blank">breitbandmessung.de</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Pros: query of contracted internet access speed=
 before measurement, with a scheduler that will only start a test when the =
backend has sufficient capacity to saturate the user-supplied contracted ra=
tes, IPv6 (happy-eyeballs)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Cons: only static unloaded RTT measurement, no =
control over measurement duration<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 BUFFERBLOAT verdict: unsuitable, exceot as load=
 generator, but the bandwidth reservation feature is quite nice.<br>
<br>
Best Regards<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Sebastian<br>
<br>
<br>
&gt; On May 1, 2020, at 18:44, Dave Taht &lt;<a href=3D"mailto:dave.taht@gm=
ail.com" target=3D"_blank">dave.taht@gmail.com</a>&gt; wrote:<br>
&gt; <br>
&gt; <a href=3D"https://www.reddit.com/r/HomeNetworking/comments/gbd6g0/dsl=
_reports_speed_test_no_longer_free/" rel=3D"noreferrer" target=3D"_blank">h=
ttps://www.reddit.com/r/HomeNetworking/comments/gbd6g0/dsl_reports_speed_te=
st_no_longer_free/</a><br>
&gt; <br>
&gt; They ran out of bandwidth.<br>
&gt; <br>
&gt; Message to users here:<br>
&gt; <br>
&gt; <a href=3D"http://www.dslreports.com/speedtest" rel=3D"noreferrer" tar=
get=3D"_blank">http://www.dslreports.com/speedtest</a><br>
&gt; <br>
&gt; <br>
&gt; -- <br>
&gt; Make Music, Not War<br>
&gt; <br>
&gt; Dave T=C3=A4ht<br>
&gt; CTO, TekLibre, LLC<br>
&gt; <a href=3D"http://www.teklibre.com" rel=3D"noreferrer" target=3D"_blan=
k">http://www.teklibre.com</a><br>
&gt; Tel: 1-831-435-0729<br>
&gt; _______________________________________________<br>
&gt; Cake mailing list<br>
&gt; <a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@l=
ists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"norefer=
rer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
<br>
_______________________________________________<br>
Bloat mailing list<br>
<a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">Bloat@list=
s.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a><br>
</blockquote></div>

--00000000000037f8ba05a49bc366--

--===============2607636919662570765==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2607636919662570765==--

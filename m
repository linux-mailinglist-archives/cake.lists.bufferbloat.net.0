Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C97301C1FB9
	for <lists+cake@lfdr.de>; Fri,  1 May 2020 23:37:49 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 6AB763CB48;
	Fri,  1 May 2020 17:37:48 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1588369068;
	bh=aLSVQNv6XVhmzLEOlzrQY8Ml2hBKMtZiFm/e022lARM=;
	h=References:In-Reply-To:To:List-Id:List-Post:From:Cc:
	 List-Subscribe:List-Unsubscribe:List-Archive:Reply-To:List-Help:
	 Subject:From;
	b=nxsHF9+cj2kRjrZ0DMQILvDZwo5o8yjRD8O15yt+aeBHv9VX7bx/uvSEL1DKmp0Ar
	 R1mks6LkLACMzPurncs0In6qzJOmLRfMVzYylZm+aV+CKwcmlZtsFsH/qhozNabgtF
	 4i3+uZqaWAu35Y+cUoVqoOjptVHenCScMA3VUhU1DoZGuRsB4zZ/21ytUWmbJz4EKM
	 QE80FcvT5l7dX4mRDeINKO4hsbAAYkWmuP3xCRSWqxlMyS6k0iwmEYixlF9QF3tpcM
	 4vmtWgclk6oNj2LT8YMLKvlXtx6HlsCqKa28Cwyft/BJLvZfp09pOEXtQQhNUbsyeR
	 I66HxWr611IoA==
References: <CAA93jw5HbGBcy6uW0dLbjtLmp_g4SLdK8Ny7G8UvbX_d+H1yXg@mail.gmail.com>
 <05410663-5E50-4CF5-8ADE-3BBB985E32B1@gmx.de>
 <CADN=VJnPTGuABtVSyjNqfdvD_W5rC0sRbWeqN=-3pzfxh+_NkQ@mail.gmail.com>
 <8F8579BB-3B58-4E20-8827-3F09506E0D74@gmx.de>
In-Reply-To: <8F8579BB-3B58-4E20-8827-3F09506E0D74@gmx.de>
To: Sebastian Moeller <moeller0@gmx.de>
MIME-Version: 1.0
Message-ID: <mailman.185.1588369067.24343.cake@lists.bufferbloat.net>
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
Content-Type: multipart/mixed; boundary="===============3908887258462431781=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3908887258462431781==
Content-Type: message/rfc822
Content-Disposition: inline

Return-Path: <sfedorov@netflix.com>
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-il1-x131.google.com (mail-il1-x131.google.com [IPv6:2607:f8b0:4864:20::131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by lists.bufferbloat.net (Postfix) with ESMTPS id 3A8D13CB35
	for <cake@lists.bufferbloat.net>; Fri,  1 May 2020 17:37:47 -0400 (EDT)
Received: by mail-il1-x131.google.com with SMTP id f82so5654976ilh.8
        for <cake@lists.bufferbloat.net>; Fri, 01 May 2020 14:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=netflix.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AUqe/6cKTVMhFmKvfCYtchvuJ6ej7FdefGRGErYQZYA=;
        b=AoOw7EKE/cXeQEdugzN9JFgI/IDscKIH4nIvlY5wicCDijdNvYgMv3ILj1NM1ANK7Y
         0tyWqkv757rocSspmRJ4zjtwujsMJxiYPceRufsO0MgFThBJG11NCTjO0ADH4ZK5DsCX
         RDU/4+sUWJsZMXStBMvP2prPsUW4K7lYs9jtY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AUqe/6cKTVMhFmKvfCYtchvuJ6ej7FdefGRGErYQZYA=;
        b=iLtUaOoHRbOnUnOjIYG0fF6IayK98opvS0jsgjx3tkz625S0LBdTlfMuCOIpik2eE7
         5n2K3ux/et5mBc0km4Dp8JsRg4imRBaEJy67cj2lPFvobSk8J3bNfyJx/hQnNzN6S4LO
         5+RvdS6lu5T/X8KGxk6dcwva6UMFHPUhnX7CMfOGpNUWhHdOXht7PrJjAwSJznZIkhrx
         vwUfmxD/KSxQHeDMb5Kw+ZerOY7fR9sNUCP4G2lZD1KRRvwUWVn47ebFuEsk+dePNPo1
         E/1hK32TLEbbO4htMadONIdcHWioeTlkoC/42kJIjcC6RwjGLP37EZdXCYLyzB9gJikn
         QFdg==
X-Gm-Message-State: AGi0PuYuK0XykryTnFIfgUh0Jk5kOkHHByMVkfm5UcL63+5ZmJNsp7wB
	nggUkyeDWMGHNbb2vW2fh5qntjmvTJtRGLIwvMo8oQ==
X-Google-Smtp-Source: APiQypISsIbHBnqkS18K9jfKwtHal1F7X2praA60XKWShMkJ1+QZ7Fcd6yKhALflz5pAJaDyL+PC2cTgI8UZzJ4NAk8=
X-Received: by 2002:a05:6e02:60a:: with SMTP id t10mr5681889ils.302.1588369066575;
 Fri, 01 May 2020 14:37:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw5HbGBcy6uW0dLbjtLmp_g4SLdK8Ny7G8UvbX_d+H1yXg@mail.gmail.com>
 <05410663-5E50-4CF5-8ADE-3BBB985E32B1@gmx.de> <CADN=VJnPTGuABtVSyjNqfdvD_W5rC0sRbWeqN=-3pzfxh+_NkQ@mail.gmail.com>
 <8F8579BB-3B58-4E20-8827-3F09506E0D74@gmx.de>
In-Reply-To: <8F8579BB-3B58-4E20-8827-3F09506E0D74@gmx.de>
From: Sergey Fedorov <sfedorov@netflix.com>
Date: Fri, 1 May 2020 14:37:10 -0700
Message-ID: <CADN=VJ=PrM0zqHF=8nDw5_oczMruJjVEqkWKv8BYHGsfx-syng@mail.gmail.com>
Subject: Re: [Bloat] [Cake] dslreports is no longer free
To: Sebastian Moeller <moeller0@gmx.de>
Cc: =?UTF-8?Q?Dave_T=C3=A4ht?= <dave.taht@gmail.com>, 
	Cake List <cake@lists.bufferbloat.net>, 
	Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>, 
	cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/alternative; boundary="000000000000fc8a1305a49cfd52"

--000000000000fc8a1305a49cfd52
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the kind words, Sebastian!

 +1; for normal users that is already bliss. For de-bloating a link however
> a bit more time resolution generally makes things a bit easier to reason
> about ;)

Apologies, I misunderstood your original statement. I interpreted it as a
vote to keep a single bufferbloat metric (vs loaded/unloaded latency).
Agreed on time resolution and its value. No question it's useful for
diagnostics. Open question is to what extent browser-based tools should be
used for detailed troubleshooting (due to sandboxing limitations), and when
is the time for the big guns (like flent) to enter the scene.

 I like to talk about the latency-under-load-increase when helping people
> to debloat their links, but that also is a tad on the long side.

Fully agree on length, don't like the verboseness as well. Still looking
for a term that is shorter and yet generic enough that I can explain to my
mom.

Ah, I might have tried too hard at understatement, this was the only
> back-end worth mentioning in the "pros" section...

Got it. The breitbandmessung case is indeed interesting.

SERGEY FEDOROV

Director of Engineering

sfedorov@netflix.com

121 Albright Way | Los Gatos, CA 95032



On Fri, May 1, 2020 at 2:11 PM Sebastian Moeller <moeller0@gmx.de> wrote:

> Hi Sergey,
>
>
>
> > On May 1, 2020, at 22:09, Sergey Fedorov <sfedorov@netflix.com> wrote:
> >
> > Great review, Sebastian!
> >
> > NETFLIX: fast.com.
> >         Pros: allows selection of upload testing, supposedly decent
> back-end, duration configurable
> >                 allows unloaded, loaded download and loaded upload RTT
> measurements (but reports sinlge numbers for loaded and unloaded RTT, tha=
t
> are not the max)
> >         Cons: RTT report as two numbers one for the loaded and one for
> unloaded RTT, time-course of RTTs missing
> >         BUFFERBLOAT verdict: incomplete, but oh, so close...
> > Just a note that I have a plan to separate the loaded latency into
> upload/download. It's not great UX now they way it's implemented.
>
>         Great! I really appreciate the way fast.com evolves carefully to
> not confuse the intended users and to stay true to its core mission while
> it still gaining additional features that are not directly part of Netfli=
x
> business case to operate that test in the first place. Don't get me wrong=
,
> I absolutely love that I can easily understand why you should be interest=
ed
> in getting reliable robust speedtests from all existing or potential
> customers to your back-end; and unlike an ISP's internal speedtest, you a=
re
> not likely to sugar coat things ;) as your goal and the end-user's goal a=
re
> fully aligned.
>
> > The timeline view is a bit more nuanced, in the spirit of the simplisti=
c
> UX, but I've been thinking on a good way to show that for super users as
> well.
>
>         Great again! I see the beauty of keeping things simple while mayb=
e
> hiding optional information behind an additional "click".
>
> > Two latency numbers - that's more user friendly, we want the general
> user to understand the meaning.
>
>         +1; for normal users that is already bliss. For de-bloating a lin=
k
> however a bit more time resolution generally makes things a bit easier to
> reason about ;)
>
> > And latency under load is much easier than bufferbloat.
>
>         +1; as far as I can tell that term sort of was a decent
> description of the observed phenomenon that then got a life of its own; i=
n
> retrospect it was not the most self explanatory term. I like to talk abou=
t
> the latency-under-load-increase when helping people to debloat their link=
s,
> but that also is a tad on the long side.
>
> >
> > As a side note, if our backend is decent, I'm curious what are the
> backends for the speed tests that exist that are great :)
>
>         Ah, I might have tried too hard at understatement, this was the
> only back-end worth mentioning in the "pros" section...
> (well, I also like how breitbandmessung.de deals with their purposefully
> limited backend (all located in a single" data center in Germany located =
in
> an AS that is not directly owned by any ISP, it's the german regulators
> official speedtest for germany against which we can effectively measure a=
nd
> get an early exit from contracts if the ISPs can not deliver the contract=
ed
> rates (with a bit of slack)))
>
> Best Regards
>         Sebastian
>
> >
> > SERGEY FEDOROV
> > Director of Engineering
> > sfedorov@netflix.com
> > 121 Albright Way  |  Los Gatos, CA 95032
> >
> >
> >
> > On Fri, May 1, 2020 at 12:48 PM Sebastian Moeller <moeller0@gmx.de>
> wrote:
> > Hi Dave,
> >
> > well, it was a free service and it lasted a long time. I want to raise =
a
> toast to Justin and convey my sincere thanks for years of investing into
> the "good" of the internet.
> >
> > Now, the question is which test is going to be the rightful successor?
> >
> > Short of running netperf/irtt/iper2/iperf3 on a hosted server, I see
> lots of potential but none of the tests are really there yet (grievances =
in
> now particular order):
> >
> > OOKLA: speedtest.net.
> >         Pros: ubiquitious, allows selection of single flow versus
> multi-flow test, allows server selection
> >         Cons: only IPv4, only static unloaded RTT measurement, no
> control over measurement duration
> >         BUFFERBLOAT verdict: incomplete, maybe usable as load generator
> >
> >
> > NETFLIX: fast.com.
> >         Pros: allows selection of upload testing, supposedly decent
> back-end, duration configurable
> >                 allows unloaded, loaded download and loaded upload RTT
> measurements (but reports sinlge numbers for loaded and unloaded RTT, tha=
t
> are not the max)
> >         Cons: RTT report as two numbers one for the loaded and one for
> unloaded RTT, time-course of RTTs missing
> >         BUFFERBLOAT verdict: incomplete, but oh, so close...
> >
> >
> > NPERF: nperf.com
> >         Pros: allows server selection, RTT measurement and report as
> time course, also reports average rates and static RTT/jitter for Up- and
> Download
> >         Cons: RTT measurement for unloaded only, reported RTT static
> only , no control over measurement duration
> >         BUFFERBLOAT verdict: incomplete,
> >
> >
> > THINKBROADBAND: www.thinkbroadband.com/speedtest
> >         Pros: IPv6, reports coarse RTT time courses for all three
> measurement phases
> >         Cons: only static unloaded RTT report in final results, time
> courses only visible immediately after testing, no control over measureme=
nt
> duration
> >         BUFFERBLOAT verdict: a bit coarse, might work for users within =
a
> reasonable distance to the UK for acute de-bloating sessions (history
> reporting is bad though)
> >
> >
> > honorable mentioning:
> >         BREITBANDMESSUNG: breitbandmessung.de
> >         Pros: query of contracted internet access speed before
> measurement, with a scheduler that will only start a test when the backen=
d
> has sufficient capacity to saturate the user-supplied contracted rates,
> IPv6 (happy-eyeballs)
> >         Cons: only static unloaded RTT measurement, no control over
> measurement duration
> >         BUFFERBLOAT verdict: unsuitable, exceot as load generator, but
> the bandwidth reservation feature is quite nice.
> >
> > Best Regards
> >         Sebastian
> >
> >
> > > On May 1, 2020, at 18:44, Dave Taht <dave.taht@gmail.com> wrote:
> > >
> > >
> https://www.reddit.com/r/HomeNetworking/comments/gbd6g0/dsl_reports_speed=
_test_no_longer_free/
> > >
> > > They ran out of bandwidth.
> > >
> > > Message to users here:
> > >
> > > http://www.dslreports.com/speedtest
> > >
> > >
> > > --
> > > Make Music, Not War
> > >
> > > Dave T=C3=A4ht
> > > CTO, TekLibre, LLC
> > > http://www.teklibre.com
> > > Tel: 1-831-435-0729
> > > _______________________________________________
> > > Cake mailing list
> > > Cake@lists.bufferbloat.net
> > > https://lists.bufferbloat.net/listinfo/cake
> >
> > _______________________________________________
> > Bloat mailing list
> > Bloat@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/bloat
>
>

--000000000000fc8a1305a49cfd52
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the kind words, Sebastian!<div><br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">=C2=A0+1; for normal users that=
 is already bliss. For de-bloating a link however a bit more time resolutio=
n generally makes things a bit easier to reason about ;)</blockquote><div>A=
pologies, I misunderstood your original statement. I interpreted it as a vo=
te to keep a single bufferbloat metric (vs loaded/unloaded latency).</div><=
div>Agreed on time resolution and its value. No question it&#39;s useful fo=
r diagnostics. Open question is to what extent browser-based tools should b=
e used for detailed troubleshooting (due to sandboxing limitations), and wh=
en is the time for the big guns (like flent) to enter the scene.</div><div>=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=C2=A0I like to=
 talk about the latency-under-load-increase when helping people to debloat =
their links, but that also is a tad on the long side.</blockquote><div>Full=
y agree on length, don&#39;t like the verboseness as well. Still looking fo=
r a term that is shorter and yet generic enough that I can explain to my mo=
m.=C2=A0</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">Ah, I might have tried too hard at understatement, this was the only ba=
ck-end worth mentioning in the &quot;pros&quot; section...</blockquote><div=
>Got it. The=C2=A0breitbandmessung case is indeed interesting.</div><div><b=
r clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartm=
ail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span><font =
size=3D"1"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-b=
ottom:0pt"><span style=3D"font-family:Arial;color:rgb(67,67,67);vertical-al=
ign:baseline;white-space:pre-wrap">SERGEY FEDOROV</span></p><p dir=3D"ltr" =
style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"=
font-family:Arial;color:rgb(102,102,102);vertical-align:baseline;white-spac=
e:pre-wrap">Director of Engineering</span></p><p style=3D"line-height:1.38;=
margin-top:0pt;margin-bottom:0pt"><span style=3D"font-family:Arial;color:rg=
b(102,102,102);vertical-align:baseline;white-space:pre-wrap"><a href=3D"mai=
lto:sfedorov@netflix.com" target=3D"_blank">sfedorov@netflix.com</a></span>=
</p><p style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span st=
yle=3D"font-family:Arial;color:rgb(102,102,102);vertical-align:baseline;whi=
te-space:pre-wrap">121 Albright Way  |  Los Gatos, CA 95032</span></p><span=
 style=3D"font-family:Arial;color:rgb(136,136,136);vertical-align:baseline;=
white-space:pre-wrap"><img src=3D"https://lh6.googleusercontent.com/sXyXTYq=
5vF1C3sJhRzJIQ0iYROwE8E1e0R6RY9hhgBZDVe6fLjmy_Y0F6RsQskALepS5t1zXm9JcQg-HXY=
QDbLZ6NS0YBjA3oh7IlhrUnR38ttr667EWpXydNk6U1I7FLO3civYI" width=3D"73" height=
=3D"44" style=3D"border:none"></span></font></span><br></div></div></div></=
div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Fri, May 1, 2020 at 2:11 PM Sebastian Moeller &lt;<a=
 href=3D"mailto:moeller0@gmx.de">moeller0@gmx.de</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">Hi Sergey,<br>
<br>
<br>
<br>
&gt; On May 1, 2020, at 22:09, Sergey Fedorov &lt;<a href=3D"mailto:sfedoro=
v@netflix.com" target=3D"_blank">sfedorov@netflix.com</a>&gt; wrote:<br>
&gt; <br>
&gt; Great review, Sebastian!<br>
&gt;=C2=A0 <br>
&gt; NETFLIX: <a href=3D"http://fast.com" rel=3D"noreferrer" target=3D"_bla=
nk">fast.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Pros: allows selection of upload test=
ing, supposedly decent back-end, duration configurable<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0allows un=
loaded, loaded download and loaded upload RTT measurements (but reports sin=
lge numbers for loaded and unloaded RTT, that are not the max)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Cons: RTT report as two numbers one f=
or the loaded and one for unloaded RTT, time-course of RTTs missing<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BUFFERBLOAT verdict: incomplete, but =
oh, so close...<br>
&gt; Just a note that I have a plan to separate the loaded latency into upl=
oad/download. It&#39;s not great UX now they way it&#39;s implemented.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Great! I really appreciate the way <a href=3D"h=
ttp://fast.com" rel=3D"noreferrer" target=3D"_blank">fast.com</a> evolves c=
arefully to not confuse the intended users and to stay true to its core mis=
sion while it still gaining additional features that are not directly part =
of Netflix business case to operate that test in the first place. Don&#39;t=
 get me wrong, I absolutely love that I can easily understand why you shoul=
d be interested in getting reliable robust speedtests from all existing or =
potential customers to your back-end; and unlike an ISP&#39;s internal spee=
dtest, you are not likely to sugar coat things ;) as your goal and the end-=
user&#39;s goal are fully aligned.<br>
<br>
&gt; The timeline view is a bit more nuanced, in the spirit of the simplist=
ic UX, but I&#39;ve been thinking on a good way to show that for super user=
s as well.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Great again! I see the beauty of keeping things=
 simple while maybe hiding optional information behind an additional &quot;=
click&quot;.<br>
<br>
&gt; Two latency numbers - that&#39;s more user friendly, we want the gener=
al user to understand the meaning.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +1; for normal users that is already bliss. For=
 de-bloating a link however a bit more time resolution generally makes thin=
gs a bit easier to reason about ;)<br>
<br>
&gt; And latency under load is much easier than bufferbloat.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 +1; as far as I can tell that term sort of was =
a decent description of the observed phenomenon that then got a life of its=
 own; in retrospect it was not the most self explanatory term. I like to ta=
lk about the latency-under-load-increase when helping people to debloat the=
ir links, but that also is a tad on the long side.<br>
<br>
&gt; <br>
&gt; As a side note, if our backend is decent, I&#39;m curious what are the=
 backends for the speed tests that exist that are great :)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ah, I might have tried too hard at understateme=
nt, this was the only back-end worth mentioning in the &quot;pros&quot; sec=
tion...<br>
(well, I also like how <a href=3D"http://breitbandmessung.de" rel=3D"norefe=
rrer" target=3D"_blank">breitbandmessung.de</a> deals with their purposeful=
ly limited backend (all located in a single&quot; data center in Germany lo=
cated in an AS that is not directly owned by any ISP, it&#39;s the german r=
egulators official speedtest for germany against which we can effectively m=
easure and get an early exit from contracts if the ISPs can not deliver the=
 contracted rates (with a bit of slack)))<br>
<br>
Best Regards<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Sebastian<br>
<br>
&gt;=C2=A0 <br>
&gt; SERGEY FEDOROV<br>
&gt; Director of Engineering<br>
&gt; <a href=3D"mailto:sfedorov@netflix.com" target=3D"_blank">sfedorov@net=
flix.com</a><br>
&gt; 121 Albright Way=C2=A0 |=C2=A0 Los Gatos, CA 95032<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; On Fri, May 1, 2020 at 12:48 PM Sebastian Moeller &lt;<a href=3D"mailt=
o:moeller0@gmx.de" target=3D"_blank">moeller0@gmx.de</a>&gt; wrote:<br>
&gt; Hi Dave,<br>
&gt; <br>
&gt; well, it was a free service and it lasted a long time. I want to raise=
 a toast to Justin and convey my sincere thanks for years of investing into=
 the &quot;good&quot; of the internet. <br>
&gt; <br>
&gt; Now, the question is which test is going to be the rightful successor?=
 <br>
&gt; <br>
&gt; Short of running netperf/irtt/iper2/iperf3 on a hosted server, I see l=
ots of potential but none of the tests are really there yet (grievances in =
now particular order):<br>
&gt; <br>
&gt; OOKLA: <a href=3D"http://speedtest.net" rel=3D"noreferrer" target=3D"_=
blank">speedtest.net</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Pros: ubiquitious, allows selection o=
f single flow versus multi-flow test, allows server selection<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Cons: only IPv4, only static unloaded=
 RTT measurement, no control over measurement duration<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BUFFERBLOAT verdict: incomplete, mayb=
e usable as load generator<br>
&gt; <br>
&gt; <br>
&gt; NETFLIX: <a href=3D"http://fast.com" rel=3D"noreferrer" target=3D"_bla=
nk">fast.com</a>.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Pros: allows selection of upload test=
ing, supposedly decent back-end, duration configurable<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0allows un=
loaded, loaded download and loaded upload RTT measurements (but reports sin=
lge numbers for loaded and unloaded RTT, that are not the max)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Cons: RTT report as two numbers one f=
or the loaded and one for unloaded RTT, time-course of RTTs missing<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BUFFERBLOAT verdict: incomplete, but =
oh, so close...<br>
&gt; <br>
&gt; <br>
&gt; NPERF: <a href=3D"http://nperf.com" rel=3D"noreferrer" target=3D"_blan=
k">nperf.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Pros: allows server selection, RTT me=
asurement and report as time course, also reports average rates and static =
RTT/jitter for Up- and Download<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Cons: RTT measurement for unloaded on=
ly, reported RTT static only , no control over measurement duration<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BUFFERBLOAT verdict: incomplete,<br>
&gt; <br>
&gt; <br>
&gt; THINKBROADBAND: <a href=3D"http://www.thinkbroadband.com/speedtest" re=
l=3D"noreferrer" target=3D"_blank">www.thinkbroadband.com/speedtest</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Pros: IPv6, reports coarse RTT time c=
ourses for all three measurement phases<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Cons: only static unloaded RTT report=
 in final results, time courses only visible immediately after testing, no =
control over measurement duration<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BUFFERBLOAT verdict: a bit coarse, mi=
ght work for users within a reasonable distance to the UK for acute de-bloa=
ting sessions (history reporting is bad though)<br>
&gt; <br>
&gt; <br>
&gt; honorable mentioning:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BREITBANDMESSUNG: <a href=3D"http://b=
reitbandmessung.de" rel=3D"noreferrer" target=3D"_blank">breitbandmessung.d=
e</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Pros: query of contracted internet ac=
cess speed before measurement, with a scheduler that will only start a test=
 when the backend has sufficient capacity to saturate the user-supplied con=
tracted rates, IPv6 (happy-eyeballs)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Cons: only static unloaded RTT measur=
ement, no control over measurement duration<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0BUFFERBLOAT verdict: unsuitable, exce=
ot as load generator, but the bandwidth reservation feature is quite nice.<=
br>
&gt; <br>
&gt; Best Regards<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Sebastian<br>
&gt; <br>
&gt; <br>
&gt; &gt; On May 1, 2020, at 18:44, Dave Taht &lt;<a href=3D"mailto:dave.ta=
ht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a>&gt; wrote:<br>
&gt; &gt; <br>
&gt; &gt; <a href=3D"https://www.reddit.com/r/HomeNetworking/comments/gbd6g=
0/dsl_reports_speed_test_no_longer_free/" rel=3D"noreferrer" target=3D"_bla=
nk">https://www.reddit.com/r/HomeNetworking/comments/gbd6g0/dsl_reports_spe=
ed_test_no_longer_free/</a><br>
&gt; &gt; <br>
&gt; &gt; They ran out of bandwidth.<br>
&gt; &gt; <br>
&gt; &gt; Message to users here:<br>
&gt; &gt; <br>
&gt; &gt; <a href=3D"http://www.dslreports.com/speedtest" rel=3D"noreferrer=
" target=3D"_blank">http://www.dslreports.com/speedtest</a><br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; -- <br>
&gt; &gt; Make Music, Not War<br>
&gt; &gt; <br>
&gt; &gt; Dave T=C3=A4ht<br>
&gt; &gt; CTO, TekLibre, LLC<br>
&gt; &gt; <a href=3D"http://www.teklibre.com" rel=3D"noreferrer" target=3D"=
_blank">http://www.teklibre.com</a><br>
&gt; &gt; Tel: 1-831-435-0729<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; Cake mailing list<br>
&gt; &gt; <a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">C=
ake@lists.bufferbloat.net</a><br>
&gt; &gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"no=
referrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a>=
<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; Bloat mailing list<br>
&gt; <a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">Bloat=
@lists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"norefe=
rrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a><br=
>
<br>
</blockquote></div>

--000000000000fc8a1305a49cfd52--

--===============3908887258462431781==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3908887258462431781==--

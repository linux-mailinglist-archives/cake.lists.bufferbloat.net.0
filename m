Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDB2153030
	for <lists+cake@lfdr.de>; Wed,  5 Feb 2020 12:53:30 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 9C1273CB39;
	Wed,  5 Feb 2020 06:53:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1580903608;
	bh=kYMl3Oj62L+/QoamJEqCXi8Bnvno9Y6j7imC07EvojM=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OaSMuMUqTrIdLZbAE6Qjlh5QG3oxGQ/GR+7r/+Ezgvploja5q4WI9pINPqcQzLk/x
	 72pzmuKpCi3E0EPraF2Nv0Lk+hu+4Mdw9HxIhfCKffL5rYV+m2nAXJBGnXdUbG/ZJ2
	 jJOYrFol5jp2j0Vh7z48RcrHc5hm48YVwgpI5iRN61xHSrFZZLNpr1RWBQPVegIaLN
	 ZUf8mYLVwTcc7jCK5RhIjWFqFHxcLe67RuCfPXni9giJ8CbaPU2/SFFXhwPQOOqmoJ
	 yH/7H8ZKbUpRwgigl3OZfhdtCdQC/fpdl9IUWL2J6+JvxdyWqbp/JX1Dcc4NatK0J/
	 p3FS6MqWWVr7w==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 61F5C3CB37
 for <cake@lists.bufferbloat.net>; Wed,  5 Feb 2020 06:53:26 -0500 (EST)
Received: by mail-lj1-x22c.google.com with SMTP id f25so1971647ljg.12
 for <cake@lists.bufferbloat.net>; Wed, 05 Feb 2020 03:53:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=domos-no.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/WTl+i+s1zxJPupBW8jQfcSxM9LJ9YEtI1LdLZgtsM4=;
 b=KyqwI7qXH5SexaytayOvDZniUSKC7Je6xy+46UoWdTOcn4fmKYaiD+zIJM13jfDvIx
 hI88g1rqjklERFUo9Dpqhg6mq40GNYKa0WFQpek5I+LF5ge3vEw8nJg76hbGVZiNflL9
 7XVIKhSp42ee1eDnT7DBKo7gqK99zz+OXJ8YfP5rPi4suT5KJJHX+9HO08rRyADO21mT
 uV75/6RaMMNMpR/Hxvlhp25AHDKtuwoXqGk7p3S3RDHJC3dtV6SbN6rJRCQxZ7W6ty6s
 C7+8LUKNS7GUARELnMV9xvx2Rgvf3bVBEas9eR7fM7Avv1Y1B9LUOqVvwdosX9DgX++o
 /tUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/WTl+i+s1zxJPupBW8jQfcSxM9LJ9YEtI1LdLZgtsM4=;
 b=tptcgg3QtQIZL97LNuJ2vF6CGqGN8Z53Ta3AYYvUKY9gdZTkCPAZ6lbVjbbP4okQ3Z
 cVG4OGfpa0W2sF5+Q9Q4LRwnLuqu3oUkq6ImHxJRHxqJWCuPBsTFO5srBDvqprQVF3Jy
 UYVgerNQ1NBmcZbx1u+DvBKIHv/rfWQsgr9KPIeslMaJTF7NV14NmG/Vzp4bu72L9Y6W
 DBHwKecQeqH3pmEvIdfL3XVCUSNBji7scjn8dgAqjgdICAa4aMk+E1HabfGrS5b+7mPN
 bDy2C3aJ4gtOKEXLUOb8NhWHr4Yuxe2c9Ekb7L+w5i9O/IBcKWIyepDlFygmY54jzM+G
 KDDA==
X-Gm-Message-State: APjAAAUzRpxEjaQTgmgehyoce/WHPgYrZPqYccUHxWJXIyYSKD4X3FHC
 McKWWgqRKhdX1a9gt3XJh+5orfPBmK1axA2qRZKGow==
X-Google-Smtp-Source: APXvYqyz6kkKbuNAMKkJ0l+ppWvi1P1BK2kpZVRr19Pv+Owt4aR50n2njC1uMbk7D2zZNvtttKCPdbOZxmhMJN0IHhk=
X-Received: by 2002:a2e:93c9:: with SMTP id p9mr19743832ljh.136.1580903604988; 
 Wed, 05 Feb 2020 03:53:24 -0800 (PST)
MIME-Version: 1.0
References: <CAKf5G6JeQFqDYV5Ttop3Tqb7WUGW2ZvYj-4S6C=VsF2JeZfs_Q@mail.gmail.com>
 <07250850-5FAF-4AB7-9551-0B26D648AF3D@gmail.com>
 <CAA93jw7AW=8ZL2SU3NCnYaRt1Ax1KfkbTu6MP22KX0hZqqM9XA@mail.gmail.com>
In-Reply-To: <CAA93jw7AW=8ZL2SU3NCnYaRt1Ax1KfkbTu6MP22KX0hZqqM9XA@mail.gmail.com>
From: =?UTF-8?Q?Bj=C3=B8rn_Ivar_Teigen?= <bjorn@domos.no>
Date: Wed, 5 Feb 2020 12:53:14 +0100
Message-ID: <CAKf5G6KH5SXzHL131Xb4+Mz1MHLAGEmtOgzxfUidb5Ncma5d0w@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: Re: [Cake] Cake in mac80211
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============5864562112638327082=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5864562112638327082==
Content-Type: multipart/alternative; boundary="000000000000ccc0ab059dd2cd2f"

--000000000000ccc0ab059dd2cd2f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the feedback!

Some comments and questions added inline.

On Tue, 4 Feb 2020 at 18:07, Dave Taht <dave.taht@gmail.com> wrote:

> On Tue, Feb 4, 2020 at 7:25 AM Jonathan Morton <chromatix99@gmail.com>
> wrote:
> >
> > > On 4 Feb, 2020, at 5:20 pm, Bj=C3=B8rn Ivar Teigen <bjorn@domos.no> w=
rote:
> > >
> > > Are there any plans, work or just comments on the idea of implementin=
g
> cake in mac80211 as was done with fq_codel?
> >
> > To consider doing that, there'd have to be a concrete benefit to doing
> so.
>
> Research is research! :) Everything is worth trying! There's got to be
> some better ideas out there, and we have a long list of things we
> could have done to keep improving wifi had funding not run out.
>
> We barely scratched the surface of this list.
>
>
> https://docs.google.com/document/d/1Se36svYE1Uzpppe1HWnEyat_sAGghB3kE285L=
ElJBW4/edit
>
> > Most of Cake's most useful features, beyond what fq_codel already
> supports, are actually implied or even done better by the WiFi environmen=
t
> and the mac80211 layer adaptation (particularly airtime fairness).
>
> In my opinion(s)
>
> A) I think ack-filtering will help somewhat on 802.11n, but it's not
> worth the added cpu cost on an AP and I'd prefer hosts reduce their
> ack load in the tcp stack (IMHO, others may differ, it's worth trying)
> B) The underlying wifi scheduler essentially does per host fq better
> than cake can (because it's layer 2 vs layer 3), as per jonathan's
> comment above

C) Instead of using a 8 way set associative hash and 1024 queues,
> fq_codel for wifi uses 4096 with a disambiguation pointer for
> collisions. Seems good enough.
>

Didn't catch that before. Are the extra queues there because of the
different access categories on Wi-Fi? Seems like that would mean most of
them are not in use considering how little traffic is marked with DSCP.

D) "cobalt" is proving out better in several respects than pure codel,
> and folding in some of that makes sense, except I don't know which
> things are the most valuable considering wifi's other problems
>

Reading paper now. Thanks for the pointer.


> E) I'd like to dynamically increase the quantum size as a function of
> load or number of flows.
>

>
> I'd really like benchmarks of the proprietary versions coming out.
> Qualcomm has their own fq_codelish thing baked into their firmware
> now... I have no idea what broadcom is doing... fq-pie?
>

I've started looking at benchmarking proprietary drivers with emphasis on
queueing performance. If you have any tips, or if you would like to
co-author a paper (I'm working on a PhD), I am very interested.


>
> The librerouter is now available. I'd like to try that.
>
> Recently I benchmarked red rock cafe in mountain view, which had the
> best bufferbloat and rrul score of any cybercafe I'd ever tried - they
> have a mojo networks AP, which arista bought a while back. It was
> lovely.... I have no idea what they do,
> but whatever it was it was *good*. I'm really happy see bufferbloat
> getting fixes everywhere, but really need to add quic to the benchmark
> suite somehow in order to feel better about people not rewriring tcp
> headers to do what they want.
>
> more importantly:
>
> Would really like to get cracking on a wifi 6 version. So far, all the
> vendors are lying, there is no OFDMA support in anything we've played
> with. There are some new outer limits there (1000+ devices), a need to
> do gang scheduling, and per-station firmware, and I'm
> profoundly unimpressed with proprietary vendor's efforts so far and
> wish they'd open up their firmware more so more of us could take a
> crack at it....
>

I agree, there are some interesting problems arising there. Interested to
follow the work if and when this happens. Any luck finding a company
willing to work on open-source drivers for Wi-Fi 6?


> I'd really like to get the intel  (iwl) version, especially the ax200
> chips, ported over to the AQL + fq_codel interfaces, at least.  The
> first attempt went badly, last quarter. Needs eyeballs and time...
> Would like to find some other wifi chip worth fixing - raspi 4? Some
> android wifi chip? what?
> Don't know how the ath11k effort is going...
>
> In mainline...
>  I'd like to get the wifi codel target on 5ghz down from 20ms (too
> much) to 10ms, (or as I run it here to 8ms) in mainline, or at least
> openwrt, but that would require some benchmarking by multiple folk,
> and I was waiting for the ath10k ATF code to go upstream first. At
> least make it tunable.
>

Have done some testing myself and 10ms looks like the correct limit on 5GHz=
.


>
> Overall, reducing hw retries to sanity would be a nice thing to
> attempt in the ath9k, at least. Although the ongoing SCE work (gradual
> rate reduction) is interesting, I tend to think reducing hardware
> retries (with increased loss) would have a more dramatic effect on
> reducing wifi latencies.
> Presently with the codel target of 20ms in both directions, I get
> 60-80ms tcp latencies (still better than most fiber!) over wifi with a
> 20ms target at 70mbits. What happens at 300+, no idea. cynically I
> think much of the internet is essentially running at a max rwind or
> swind rather than within athe sawtooth.
>

Also interesting


>
> doing something more sane to rate limit multicast would be good also.
> It was quite the long list in that google document, back in the day we
> thought the wifi industry might decide to collaborate in order to meet
> the 5G threat.
>
> > a Cake instance to the wifi interface as well, if you have a need to do
> so.
>
> It certainly is feasible to do that. I do that now on several 802.11ac
> devices that don't have the fq_codel for wifi hooks, preferring to
> rate limit them well below capacity so as to ensure consistent low
> latency. It's really neat to see people able to play world of warcraft
> and other games over
> the wifi here. ( started deploying ubnt's uap mesh products, reflashed
> with openwrt, along portions of my wifi backbone . Looking forward to
> the AQL backport for those, but I hope someone else does it)
>

Have this setup at home and it really does make a difference, even with
just normal browsing. Has bigger impact than I would have guessed!

>
> >
> >  - Jonathan Morton
> > _______________________________________________
> > Cake mailing list
> > Cake@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/cake
>
>
>
> --
> Make Music, Not War
>
> Dave T=C3=A4ht
> CTO, TekLibre, LLC
> http://www.teklibre.com
> Tel: 1-831-435-0729
>


--=20
Bj=C3=B8rn Ivar Teigen
Head of Research
Domos, Machine Learning for the Home
www.domos.no

--000000000000ccc0ab059dd2cd2f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thanks for the feedback!</div><div dir=3D=
"ltr"><br></div><div>Some comments and questions added inline.<br></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 4=
 Feb 2020 at 18:07, Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com">da=
ve.taht@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">On Tue, Feb 4, 2020 at 7:25 AM Jonathan Morton &lt;<a href=
=3D"mailto:chromatix99@gmail.com" target=3D"_blank">chromatix99@gmail.com</=
a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; On 4 Feb, 2020, at 5:20 pm, Bj=C3=B8rn Ivar Teigen &lt;<a href=3D=
"mailto:bjorn@domos.no" target=3D"_blank">bjorn@domos.no</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Are there any plans, work or just comments on the idea of impleme=
nting cake in mac80211 as was done with fq_codel?<br>
&gt;<br>
&gt; To consider doing that, there&#39;d have to be a concrete benefit to d=
oing so.<br>
<br>
Research is research! :) Everything is worth trying! There&#39;s got to be<=
br>
some better ideas out there, and we have a long list of things we<br>
could have done to keep improving wifi had funding not run out.<br>
<br>
We barely scratched the surface of this list.<br>
<br>
<a href=3D"https://docs.google.com/document/d/1Se36svYE1Uzpppe1HWnEyat_sAGg=
hB3kE285LElJBW4/edit" rel=3D"noreferrer" target=3D"_blank">https://docs.goo=
gle.com/document/d/1Se36svYE1Uzpppe1HWnEyat_sAGghB3kE285LElJBW4/edit</a><br=
>
<br>
&gt; Most of Cake&#39;s most useful features, beyond what fq_codel already =
supports, are actually implied or even done better by the WiFi environment =
and the mac80211 layer adaptation (particularly airtime fairness).<br>
<br>
In my opinion(s)<br>
<br>
A) I think ack-filtering will help somewhat on 802.11n, but it&#39;s not<br=
>
worth the added cpu cost on an AP and I&#39;d prefer hosts reduce their<br>
ack load in the tcp stack (IMHO, others may differ, it&#39;s worth trying)<=
br>
B) The underlying wifi scheduler essentially does per host fq better<br>
than cake can (because it&#39;s layer 2 vs layer 3), as per jonathan&#39;s<=
br>
comment above=C2=A0=C2=A0=C2=A0</blockquote><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">
C) Instead of using a 8 way set associative hash and 1024 queues,<br>
fq_codel for wifi uses 4096 with a disambiguation pointer for<br>
collisions. Seems good enough.<br></blockquote><div>=C2=A0</div><div>Didn&#=
39;t catch that before. Are the extra queues there because of the different=
 access categories on Wi-Fi? Seems like that would mean most of them are no=
t in use considering how little traffic is marked with DSCP.<br></div><div>=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
D) &quot;cobalt&quot; is proving out better in several respects than pure c=
odel,<br>
and folding in some of that makes sense, except I don&#39;t know which<br>
things are the most valuable considering wifi&#39;s other problems<br></blo=
ckquote><div><br></div><div>Reading paper now. Thanks for the pointer.<br><=
/div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
E) I&#39;d like to dynamically increase the quantum size as a function of<b=
r>
load or number of flows. <br></blockquote><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">
<br>
<br>
I&#39;d really like benchmarks of the proprietary versions coming out.<br>
Qualcomm has their own fq_codelish thing baked into their firmware<br>
now... I have no idea what broadcom is doing... fq-pie?<br></blockquote><di=
v><br></div><div>I&#39;ve started looking at benchmarking proprietary drive=
rs with emphasis on queueing performance. If you have any tips, or if you w=
ould like to co-author a paper (I&#39;m working on a PhD), I am very intere=
sted.<br></div><div>=C2=A0<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
<br>
The librerouter is now available. I&#39;d like to try that.<br>
<br>
Recently I benchmarked red rock cafe in mountain view, which had the<br>
best bufferbloat and rrul score of any cybercafe I&#39;d ever tried - they<=
br>
have a mojo networks AP, which arista bought a while back. It was<br>
lovely.... I have no idea what they do,<br>
but whatever it was it was *good*. I&#39;m really happy see bufferbloat<br>
getting fixes everywhere, but really need to add quic to the benchmark<br>
suite somehow in order to feel better about people not rewriring tcp<br>
headers to do what they want.<br>
<br>
more importantly:<br>
<br>
Would really like to get cracking on a wifi 6 version. So far, all the<br>
vendors are lying, there is no OFDMA support in anything we&#39;ve played<b=
r>
with. There are some new outer limits there (1000+ devices), a need to<br>
do gang scheduling, and per-station firmware, and I&#39;m<br>
profoundly unimpressed with proprietary vendor&#39;s efforts so far and<br>
wish they&#39;d open up their firmware more so more of us could take a<br>
crack at it....<br></blockquote><div>=C2=A0</div><div>I agree, there are so=
me interesting problems arising there. Interested to follow the work if and=
 when this happens. Any luck finding a company willing to work on open-sour=
ce drivers for Wi-Fi 6?<br></div><div><br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">
<br>
I&#39;d really like to get the intel=C2=A0 (iwl) version, especially the ax=
200<br>
chips, ported over to the AQL + fq_codel interfaces, at least.=C2=A0 The<br=
>
first attempt went badly, last quarter. Needs eyeballs and time...<br>
Would like to find some other wifi chip worth fixing - raspi 4? Some<br>
android wifi chip? what?<br>
Don&#39;t know how the ath11k effort is going...<br>
<br>
In mainline...<br>
=C2=A0I&#39;d like to get the wifi codel target on 5ghz down from 20ms (too=
<br>
much) to 10ms, (or as I run it here to 8ms) in mainline, or at least<br>
openwrt, but that would require some benchmarking by multiple folk,<br>
and I was waiting for the ath10k ATF code to go upstream first. At<br>
least make it tunable.<br></blockquote><div><br></div><div>Have done some t=
esting myself and 10ms looks like the correct limit on 5GHz.<br></div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Overall, reducing hw retries to sanity would be a nice thing to<br>
attempt in the ath9k, at least. Although the ongoing SCE work (gradual<br>
rate reduction) is interesting, I tend to think reducing hardware<br>
retries (with increased loss) would have a more dramatic effect on<br>
reducing wifi latencies.<br>
Presently with the codel target of 20ms in both directions, I get<br>
60-80ms tcp latencies (still better than most fiber!) over wifi with a<br>
20ms target at 70mbits. What happens at 300+, no idea. cynically I<br>
think much of the internet is essentially running at a max rwind or<br>
swind rather than within athe sawtooth.<br></blockquote><div><br></div><div=
>Also interesting<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">
<br>
doing something more sane to rate limit multicast would be good also.<br>
It was quite the long list in that google document, back in the day we<br>
thought the wifi industry might decide to collaborate in order to meet<br>
the 5G threat.<br>
<br>
&gt; a Cake instance to the wifi interface as well, if you have a need to d=
o so.<br>
<br>
It certainly is feasible to do that. I do that now on several 802.11ac<br>
devices that don&#39;t have the fq_codel for wifi hooks, preferring to<br>
rate limit them well below capacity so as to ensure consistent low<br>
latency. It&#39;s really neat to see people able to play world of warcraft<=
br>
and other games over<br>
the wifi here. ( started deploying ubnt&#39;s uap mesh products, reflashed<=
br>
with openwrt, along portions of my wifi backbone . Looking forward to<br>
the AQL backport for those, but I hope someone else does it)<br></blockquot=
e><div><br></div><div>Have this setup at home and it really does make a dif=
ference, even with just normal browsing. Has bigger impact than I would hav=
e guessed!<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
&gt;<br>
&gt;=C2=A0 - Jonathan Morton<br>
&gt; _______________________________________________<br>
&gt; Cake mailing list<br>
&gt; <a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@l=
ists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"norefer=
rer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
<br>
<br>
<br>
-- <br>
Make Music, Not War<br>
<br>
Dave T=C3=A4ht<br>
CTO, TekLibre, LLC<br>
<a href=3D"http://www.teklibre.com" rel=3D"noreferrer" target=3D"_blank">ht=
tp://www.teklibre.com</a><br>
Tel: 1-831-435-0729<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr=
"><div>Bj=C3=B8rn Ivar Teigen</div><div>Head of Research<br></div>Domos, Ma=
chine Learning for the Home<br><a href=3D"http://www.domos.no" target=3D"_b=
lank">www.domos.no</a><br></div></div></div></div></div></div></div>

--000000000000ccc0ab059dd2cd2f--

--===============5864562112638327082==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5864562112638327082==--

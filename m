Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA105FA8E7
	for <lists+cake@lfdr.de>; Tue, 11 Oct 2022 02:06:04 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A5C083CB4B;
	Mon, 10 Oct 2022 20:05:55 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665446755;
	bh=1HoX+IjehlHbO1TRBkjOk9OhDTgKREo2GETqHVgL0Sk=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=IUtV30VZicC0dgjxGDLQrZBlORyeZ0uGozrtLUTGzIlEY6OK73vC4/hmmgjz9Bb5s
	 yIZzXn+dEWmDxZncrd/rgtTxpL3NfUofZUhSpS1X1fqFY/4sD11Nm9HSo2IE2r74+u
	 i77uk2wbeeT12FRd0GvkDdOyg6M0SwgA4TY7qYOp/agea8218SBAzMMrAsfDYpu0mZ
	 7bu8LvO6QclhmXIzHF2lTueHXsyar7kJURdrHJfwrNcg7dmgL93q3shr13mXeI/fAk
	 QBSW1yJKU5Uxd7Bm1aGGo8zUiXoP6ZcxuZu180LCntg5fIlG50MopwBQ9/l+U9R488
	 KXIBKM7gYUXdg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id A97513CB39
 for <cake@lists.bufferbloat.net>; Mon, 10 Oct 2022 20:05:53 -0400 (EDT)
Received: by mail-lf1-x135.google.com with SMTP id d6so18719466lfs.10
 for <cake@lists.bufferbloat.net>; Mon, 10 Oct 2022 17:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=KjPYgUSI7TIYiCNnKA/ZgFs5JgwZr7sUvrxH4GHWRgU=;
 b=XJ4Wh1pRSY9ee5hxHW+NM05tTvJBbSXkYlpNPHvkt98+SOjEE3tNKjFO/ljdlRpnXv
 UsaiutjED/GIpOl10Fu005lQHWbJN/fp67Dk1X4xawVwq9IrNWeqfAjd7PUS9FosCG5i
 75ACANgMvzSlec/NovJv4JfISK23TBE78bUzI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=KjPYgUSI7TIYiCNnKA/ZgFs5JgwZr7sUvrxH4GHWRgU=;
 b=hRRvp6tXFaIHAW/TUiOLx8Eq6bOaZXG2o7oS7Uqyne35PHBpXNnSmX+ObH5Bj6mosC
 9aMjV+ZouwPGXkN4DBSOrXAkYg05K3Fkgd3qYjOiNQrxNlGQFmDhfwnc9v3K09ty9kDO
 CCqQn6OcmRvLeXIA8nWG4kkOQz2ZHxr3KdWJRmrhIlTD6iXAr0ZFpxge10B8FVJE/8DO
 jcAvErER0ag+UPA0cTfit+mLUrCDIMiU6uOU5jVMry5QKvxjd/hxYV4XpptyLqeE9IKc
 fAGKgbk3laSgVTtK4le/xzga+DsvWzjiNbS+Ocj4QnIHTsE991asyEgKqS5nx0grNVpt
 ZxQw==
X-Gm-Message-State: ACrzQf0rwJ+PHMsxOwXZJfxXVwcdsJG9vj8CQj2RlWTF4M2FMZ+/yjqZ
 DlhYD83VYs93F4bA/Y6pKBy6fv5/WWD3PWwJxFNXkyh9+A6I90e2dPGse8reVz0jsODtJ2bWumb
 RX5xQtSdk/gN/7uNwpjSlO1Jb4mxt
X-Google-Smtp-Source: AMsMyM6Yv4H+A/SUTsCRy/S17o5kb1bnt4X8Z1VlKL9322a+doM3VDNwygL9eDSoe8TDx1u5PKqyVwRfcS8M3LaQVos=
X-Received: by 2002:a05:6512:533:b0:4a2:f36:bba5 with SMTP id
 o19-20020a056512053300b004a20f36bba5mr7224612lfc.224.1665446751923; Mon, 10
 Oct 2022 17:05:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
 <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
 <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no>
 <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de>
 <CAHb6LvqHNv_R2Asn944Kx91Cud5J3XSM-c+PcK8Bz19uaMDynw@mail.gmail.com>
 <q06231q2-n7qn-345s-np6r-p5717713q3po@ynat.uz>
In-Reply-To: <q06231q2-n7qn-345s-np6r-p5717713q3po@ynat.uz>
Date: Mon, 10 Oct 2022 17:05:40 -0700
Message-ID: <CAHb6Lvqbj0MDhWvLaEk8Hbr_vZwDs1NdCj1X9Xvxp+x+Mbs0Vw@mail.gmail.com>
To: David Lang <david@lang.hm>
Subject: Re: [Cake] [Bloat] [Make-wifi-fast] The most wonderful video ever
 about bufferbloat
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
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Rpm <rpm@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============2690456782730847585=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2690456782730847585==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="00000000000011379d05eab70a21"

--00000000000011379d05eab70a21
Content-Type: multipart/alternative; boundary="0000000000000aca4a05eab70ad5"

--0000000000000aca4a05eab70ad5
Content-Type: text/plain; charset="UTF-8"

It's too big because it's oversized so it's in the size domain. It's
basically Little's law's value for the number of items in a queue.

*Number of items in the system = (the rate items enter and leave the
system) x (the average amount of time items spend in the system)*


Which gets driven to the standing queue size when the arrival rate
exceeds the service rate - so the driving factor isn't the service and
arrival rates, but *the queue size *when *any service rate is less than an
arrival rate.*

In other words, one can find and measure bloat regardless of the
enter/leave rates (as long as the leave rate is too slow) and the value of
memory units found will always be the same.

Things like prioritizations to jump the line are somewhat of hacks at
reducing the service time for a specialized class of packets but nobody
really knows which packets should jump.  Also, nobody can define what
working conditions are so that's another problem with this class of tests.

Better maybe just to shrink the queue and eliminate all unneeded queueing
delays. Also, measure the performance per "user conditions" which is going
to be different for almost every environment (and is correlated to time and
space.) So any engineering solution is fundamentally suboptimal. Even
pacing the source doesn't necessarily do the right thing because that's
like waiting in the waitlist while at home vs the restaurant lobby. Few
care about where messages wait (unless the pitch is AQM is the only
solution that drives to a self-fulfilling prophecy - that's why the tests
have to come up with artificial conditions that can't be simply defined.)

Bob

On Mon, Oct 10, 2022 at 3:57 PM David Lang <david@lang.hm> wrote:

> On Mon, 10 Oct 2022, Bob McMahon via Bloat wrote:
>
> > I think conflating bufferbloat with latency misses the subtle point in
> that
> > bufferbloat is a measurement in memory units more than a measurement in
> > time units. The first design flaw is a queue that is too big. This
> youtube
> > video analogy doesn't help one understand this important point.
>
> but the queue is only too big because of the time it takes to empty the
> queue,
> which puts us back into the time domain.
>
> David Lang
>
> > Another subtle point is that the video assumes AQM as the only solution
> and
> > ignores others, i.e. pacing at the source(s) and/or faster service
> rates. A
> > restaurant that let's one call ahead to put their name on the waitlist
> > doesn't change the wait time. Just because a transport layer slowed down
> > and hasn't congested a downstream queue doesn't mean the e2e latency
> > performance will meet the gaming needs as an example. The delay is still
> > there it's just not manifesting itself in a shared queue that may or may
> > not negatively impact others using that shared queue.
> >
> > Bob
> >
> >
> >
> > On Mon, Oct 10, 2022 at 2:40 AM Sebastian Moeller via Make-wifi-fast <
> > make-wifi-fast@lists.bufferbloat.net> wrote:
> >
> >> Hi Erik,
> >>
> >>
> >>> On Oct 10, 2022, at 11:32, Taraldsen Erik <erik.taraldsen@telenor.no>
> >> wrote:
> >>>
> >>> On 10/10/2022, 11:09, "Sebastian Moeller" <moeller0@gmx.de> wrote:
> >>>
> >>>    Nice!
> >>>
> >>>> On Oct 10, 2022, at 07:52, Taraldsen Erik via Cake <
> >> cake@lists.bufferbloat.net> wrote:
> >>>>
> >>>> It took about 3 hours from the video was release before we got the
> >> first request to have SQM on the CPE's  we manage as a ISP.  Finally
> >> getting some customer response on the issue.
> >>>
> >>>       [SM] Will you be able to bump these requests to higher-ups and at
> >> least change some perception of customer demand for tighter latency
> >> performance?
> >>>
> >>> That would be the hope.
> >>
> >>         [SM} Excellent, hope this plays out as we wish for.
> >>
> >>
> >>>  We actually have fq_codel implemented on the two latest generations of
> >> DSL routers.  Use sync rate as input to set the rate.  Works quite well.
> >>
> >>         [SM] Cool, if I might ask what fraction of the sync are you
> >> setting the traffic shaper for and are you doing fine grained overhead
> >> accounting (or simply fold that into a grand "de-rating"-factor)?
> >>
> >>
> >>> There is also a bit of traction around speedtest.net's inclusion of
> >> latency under load internally.
> >>
> >>         [SM] Yes, although IIUC they are reporting the interquartile
> mean
> >> for the two loaded latency estimates, which is pretty conservative and
> only
> >> really "triggers" for massive consistently elevated latency; so I expect
> >> this to be great for detecting really bad cases, but I fear it is too
> >> conservative and will make a number of problematic links look OK. But
> hey,
> >> even that is leaps and bounds better than the old only idle latency
> report.
> >>
> >>
> >>> My hope is that some publication in Norway will pick up on that score
> >> and do a test and get some mainstream publicity with the results.
> >>
> >>         [SM] Inside the EU the challenge is to get national regulators
> and
> >> the BEREC to start bothering about latency-under-load at all, "some
> >> mainstream publicity" would probably help here as well.
> >>
> >> Regards
> >>         Sebastian
> >>
> >>
> >>>
> >>> -Erik
> >>>
> >>>
> >>>
> >>
> >> _______________________________________________
> >> Make-wifi-fast mailing list
> >> Make-wifi-fast@lists.bufferbloat.net
> >> https://lists.bufferbloat.net/listinfo/make-wifi-fast
> >
> >_______________________________________________
> Bloat mailing list
> Bloat@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/bloat
>

-- 
This electronic communication and the information and any files transmitted 
with it, or attached to it, are confidential and are intended solely for 
the use of the individual or entity to whom it is addressed and may contain 
information that is confidential, legally privileged, protected by privacy 
laws, or otherwise restricted from disclosure to anyone else. If you are 
not the intended recipient or the person responsible for delivering the 
e-mail to the intended recipient, you are hereby notified that any use, 
copying, distributing, dissemination, forwarding, printing, or copying of 
this e-mail is strictly prohibited. If you received this e-mail in error, 
please return the e-mail to the sender, delete it from your computer, and 
destroy any printed copy of it.

--0000000000000aca4a05eab70ad5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It&#39;s too big because it&#39;s oversized so it&#39;s in=
 the size domain. It&#39;s basically Little&#39;s law&#39;s value for the n=
umber of items in a queue.<br><br><blockquote style=3D"margin:0 0 0 40px;bo=
rder:none;padding:0px"><b><i>Number of items in the system =3D (the rate it=
ems enter and leave the system) x (the average amount of time items spend i=
n the system)</i></b></blockquote><br>Which gets driven to the standing que=
ue size when the arrival rate exceeds=C2=A0the service rate - so the drivin=
g factor isn&#39;t the service and arrival rates, but <b>the queue size </b=
>when <i><b>any service rate is less than an arrival rate.</b></i><div><br>=
In other words, one can find and measure=C2=A0bloat=C2=A0regardless of the =
enter/leave rates (as long as the leave rate is too slow) and the value of =
memory units found will always be the same.<br><br>Things like prioritizati=
ons to jump the line are somewhat of hacks=C2=A0at reducing the service tim=
e for a specialized class of packets but nobody really knows which=C2=A0pac=
kets should jump.=C2=A0 Also, nobody can define what working conditions=C2=
=A0are so that&#39;s another=C2=A0problem with this class of tests.<br><br>=
Better maybe just to shrink the queue and eliminate all unneeded=C2=A0queue=
ing delays. Also, measure the performance per &quot;user conditions&quot; w=
hich is going to be different=C2=A0for almost every environment (and is cor=
related to time and space.) So any engineering solution is fundamentally su=
boptimal. Even pacing the source doesn&#39;t necessarily do the right thing=
 because that&#39;s like=C2=A0waiting in the waitlist while at home vs the =
restaurant=C2=A0lobby. Few care about where messages wait (unless the pitch=
 is AQM is the only solution that drives to a self-fulfilling prophecy - th=
at&#39;s why the tests have to come up with artificial conditions that can&=
#39;t be simply defined.)<br><br>Bob</div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 10, 2022 at 3:57 PM D=
avid Lang &lt;<a href=3D"mailto:david@lang.hm" target=3D"_blank">david@lang=
.hm</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">On Mon, 10 Oct 2022, Bob McMahon via Bloat wrote:<br>
<br>
&gt; I think conflating bufferbloat with latency misses the subtle point in=
 that<br>
&gt; bufferbloat is a measurement in memory units more than a measurement i=
n<br>
&gt; time units. The first design flaw is a queue that is too big. This you=
tube<br>
&gt; video analogy doesn&#39;t help one understand this important point.<br=
>
<br>
but the queue is only too big because of the time it takes to empty the que=
ue, <br>
which puts us back into the time domain.<br>
<br>
David Lang<br>
<br>
&gt; Another subtle point is that the video assumes AQM as the only solutio=
n and<br>
&gt; ignores others, i.e. pacing at the source(s) and/or faster service rat=
es. A<br>
&gt; restaurant that let&#39;s one call ahead to put their name on the wait=
list<br>
&gt; doesn&#39;t change the wait time. Just because a transport layer slowe=
d down<br>
&gt; and hasn&#39;t congested a downstream queue doesn&#39;t mean the e2e l=
atency<br>
&gt; performance will meet the gaming needs as an example. The delay is sti=
ll<br>
&gt; there it&#39;s just not manifesting itself in a shared queue that may =
or may<br>
&gt; not negatively impact others using that shared queue.<br>
&gt;<br>
&gt; Bob<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Mon, Oct 10, 2022 at 2:40 AM Sebastian Moeller via Make-wifi-fast &=
lt;<br>
&gt; <a href=3D"mailto:make-wifi-fast@lists.bufferbloat.net" target=3D"_bla=
nk">make-wifi-fast@lists.bufferbloat.net</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; Hi Erik,<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;&gt; On Oct 10, 2022, at 11:32, Taraldsen Erik &lt;<a href=3D"mailt=
o:erik.taraldsen@telenor.no" target=3D"_blank">erik.taraldsen@telenor.no</a=
>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On 10/10/2022, 11:09, &quot;Sebastian Moeller&quot; &lt;<a hre=
f=3D"mailto:moeller0@gmx.de" target=3D"_blank">moeller0@gmx.de</a>&gt; wrot=
e:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 Nice!<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On Oct 10, 2022, at 07:52, Taraldsen Erik via Cake &lt;<br=
>
&gt;&gt; <a href=3D"mailto:cake@lists.bufferbloat.net" target=3D"_blank">ca=
ke@lists.bufferbloat.net</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; It took about 3 hours from the video was release before we=
 got the<br>
&gt;&gt; first request to have SQM on the CPE&#39;s=C2=A0 we manage as a IS=
P.=C2=A0 Finally<br>
&gt;&gt; getting some customer response on the issue.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0[SM] Will you be able to bump these =
requests to higher-ups and at<br>
&gt;&gt; least change some perception of customer demand for tighter latenc=
y<br>
&gt;&gt; performance?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; That would be the hope.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[SM} Excellent, hope this plays o=
ut as we wish for.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 We actually have fq_codel implemented on the two latest =
generations of<br>
&gt;&gt; DSL routers.=C2=A0 Use sync rate as input to set the rate.=C2=A0 W=
orks quite well.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[SM] Cool, if I might ask what fr=
action of the sync are you<br>
&gt;&gt; setting the traffic shaper for and are you doing fine grained over=
head<br>
&gt;&gt; accounting (or simply fold that into a grand &quot;de-rating&quot;=
-factor)?<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;&gt; There is also a bit of traction around <a href=3D"http://speed=
test.net" rel=3D"noreferrer" target=3D"_blank">speedtest.net</a>&#39;s incl=
usion of<br>
&gt;&gt; latency under load internally.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[SM] Yes, although IIUC they are =
reporting the interquartile mean<br>
&gt;&gt; for the two loaded latency estimates, which is pretty conservative=
 and only<br>
&gt;&gt; really &quot;triggers&quot; for massive consistently elevated late=
ncy; so I expect<br>
&gt;&gt; this to be great for detecting really bad cases, but I fear it is =
too<br>
&gt;&gt; conservative and will make a number of problematic links look OK. =
But hey,<br>
&gt;&gt; even that is leaps and bounds better than the old only idle latenc=
y report.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;&gt; My hope is that some publication in Norway will pick up on tha=
t score<br>
&gt;&gt; and do a test and get some mainstream publicity with the results.<=
br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[SM] Inside the EU the challenge =
is to get national regulators and<br>
&gt;&gt; the BEREC to start bothering about latency-under-load at all, &quo=
t;some<br>
&gt;&gt; mainstream publicity&quot; would probably help here as well.<br>
&gt;&gt;<br>
&gt;&gt; Regards<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Sebastian<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; -Erik<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; Make-wifi-fast mailing list<br>
&gt;&gt; <a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"=
_blank">Make-wifi-fast@lists.bufferbloat.net</a><br>
&gt;&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" =
rel=3D"noreferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo=
/make-wifi-fast</a><br>
&gt;<br>
&gt;_______________________________________________<br>
Bloat mailing list<br>
<a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">Bloat@list=
s.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a><br>
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
--0000000000000aca4a05eab70ad5--

--00000000000011379d05eab70a21
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIG2tNdhyn4WC/een04voNhunb2qf9iYnNblg
ZGl5wNTTMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIyMTAxMTAw
MDU1MlowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQC7gj8DkZwqQ4nUJ8gawS3qLujR3x7eZsC2hDNNV38ZLctag6l5y7AF
CPry7mwEcl3jcGq8zDhqGM3wqjC6mDIC7iV+Eb389mIDuPGUciFqSh4cFpSmQQJnTry0xEYtc9Lz
zSTfjFdDbRHgY0v+9NJhrHTus5ucL6g9WyW/b2ZK9xifELo46ePdvdXbvljcYURX4cB1RUEKRwah
iLNNelntpHFUwF8MDbJiyoP4FNpGYsOijfSxcB1T0Cld+ncbo8mO/ke4x1uNSqDuM4t+2AR16hzk
ZUx8V2hiGSJe1tJCKw1h4cE+OEdpPUakGbtFe9caXHqXL6AE3On5V93UHjoG
--00000000000011379d05eab70a21--

--===============2690456782730847585==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2690456782730847585==--

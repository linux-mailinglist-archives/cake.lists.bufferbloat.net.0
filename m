Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 29445607DE6
	for <lists+cake@lfdr.de>; Fri, 21 Oct 2022 19:48:39 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id F15983CB39;
	Fri, 21 Oct 2022 13:48:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1666374516;
	bh=d22g9AgpChP5A+BULAgLRFxXjQJ+GFo94xtnyspHyDA=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=hO18+sRlo4gE8l3zLv+s53qhlgIayY7r+eYnmKHEzh/mm7qcqB9AtyhETojmbM/Xd
	 cTHlwiAmX3YLHjc+d1awrSP5m6zGvyH+Ne9n46BSAq2jvglMq6J6fDGbhkJNLG0opP
	 iZXn7X3txz5xGjfyQf/KBVBnwpYHFm0BUIr2T44kMTeUj0KBhvgq1y0bavPQetnSZH
	 RZRyRK6T9DEl4oDz8B7vArlbT9hBkPsxR/lNPhMawYPPZq7g5mhiawlcp380Hzu0Ka
	 L7MODq52aj6t1rmnJK73XYbWtLn9rwY3aGA6WdO/lfBxdeHKRXhgRk1hOflISRvxe6
	 NzYwxsuzXtCfA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 88D433CB37
 for <cake@lists.bufferbloat.net>; Fri, 21 Oct 2022 13:48:35 -0400 (EDT)
Received: by mail-lj1-x233.google.com with SMTP id a25so4816242ljk.0
 for <cake@lists.bufferbloat.net>; Fri, 21 Oct 2022 10:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=svlNCqr6DXJ67Q5a93X6TlHQTIriZEfdmvBNfGsChj0=;
 b=U7uaJEAS3mgIVSQBWBxc+kx8BsLLrBBnN8BV17dGjDqkcZJWtx33RkT0MLh4LGQyuq
 mxumjp3fPISu1zNPpjJO6d7in4tgOI45bAUD9q+78A8p5LSItESJCSg/ZKFrALEePbBm
 NeYAh/lKRCSYIhI98rk8BbKDq/ZQZNwD1HhJw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=svlNCqr6DXJ67Q5a93X6TlHQTIriZEfdmvBNfGsChj0=;
 b=UEKwO+gcE1KqQ3IpooT193VdnWTUuyNzBJhFMsKCWY0lE2ROsEFZ+Bv62BtDy2sx+D
 pimG3ylhNknpgmlPQz/j26aLu50uTbvj7KjuGYuJqLXfwOvfoIc+6TGKZldp/Lca3dZP
 esXLIXnZ905Qn5vSVJmud0kD3GmGMbbduAuYwocH8FQ5vjUXaX3iqjvuHHgNw2eNLk2r
 OQPd/xgfPAmx1eSJ5GYAwwj5RS4tGgbCS4cFrI1QBy/vuvgThKpRLFgRMV3g9mSnnTYN
 6WopPgzpJFikQM6N9IfQJxD1NfA5dJYQBTIUS40MSzGtFP1sL/XCP80J2+k5YDYSK/9C
 WPwg==
X-Gm-Message-State: ACrzQf3d2pbNcTTr/pvzse9CBuALG6s25Tst6jNrwy69qmn/GoSzVdq+
 Jkr/PMRtROoSVL8DUxvmf0l4gxZxHj1j80zX7rmXVymNhYtjUquf/O32Mnzfko6+aZCiDmBp/aT
 oLMG4FG2dNkSCl6DIyQ1aezJvdQsu
X-Google-Smtp-Source: AMsMyM7n+yO7oA4hxeUAtlCYTQ6s/QO75N8dYQ5iqJI2ZbTIuiA0WF+d7jPlwn0iH+tTSlXYHnYZOXPNd0RGo0y/Z3Q=
X-Received: by 2002:a2e:8183:0:b0:26e:823d:d51a with SMTP id
 e3-20020a2e8183000000b0026e823dd51amr7138989ljg.472.1666374514003; Fri, 21
 Oct 2022 10:48:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <938D9D45-DADA-4291-BD8A-84E4257CEE49@apple.com>
 <CAA93jw4KOkgdfT2LunCtPYPjXL+=OtTrouJgPjM7U1bHKtErnw@mail.gmail.com>
 <BD3CEB48-E45E-49DB-AAFC-80C539BB4169@apple.com>
 <9989D2F5-3A6A-454E-ABB8-71A29F3AAC0D@gmx.de>
 <4BE88889-45A9-41E4-91F6-4910530A6B4C@apple.com>
 <CAHb6Lvq4NMXDQJPB-Tjo2Bg7BERRGwb4OLbHbbXGa4ZOcJ45dg@mail.gmail.com>
 <CAA93jw5j16_188JC58o44=EV3HmOCDQm-U-dgMLjXESq691TnQ@mail.gmail.com>
 <32CFC6B2-87E5-4463-B197-D297C3628C7D@gmx.de>
In-Reply-To: <32CFC6B2-87E5-4463-B197-D297C3628C7D@gmx.de>
Date: Fri, 21 Oct 2022 10:48:21 -0700
Message-ID: <CAHb6LvoTEyVaMkVKpB81J7rP0bPEKiwN4eOS2YEKQscqHZZdyA@mail.gmail.com>
To: Sebastian Moeller <moeller0@gmx.de>
Subject: Re: [Cake] [Rpm] [Make-wifi-fast] The most wonderful video ever
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
Cc: Rpm <rpm@lists.bufferbloat.net>, Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============4700567004215672095=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4700567004215672095==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000ff717d05eb8f0c9c"

--000000000000ff717d05eb8f0c9c
Content-Type: multipart/alternative; boundary="000000000000f8734005eb8f0cd5"

--000000000000f8734005eb8f0cd5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I just wanted to say thanks for this discussion. I always learn from each
and all of you.

Bob

On Thu, Oct 20, 2022 at 12:40 PM Sebastian Moeller <moeller0@gmx.de> wrote:

> Hi Dave,
>
>
> > On Oct 20, 2022, at 21:12, Dave Taht via Rpm <rpm@lists.bufferbloat.net=
>
> wrote:
> >
> > On Thu, Oct 20, 2022 at 12:04 PM Bob McMahon via Make-wifi-fast
> > <make-wifi-fast@lists.bufferbloat.net> wrote:
> >>
> >> Intel has a good analogous video on this with their CPU video here
> going over branches and failed predictions. And to Stuart's point, the
> longer pipelines make the forks worse in the amount of in-process bytes
> that need to be thrown away. Interactivity, in my opinion, suggests
> shrinking the pipeline because, with networks, there is no quick way to
> throw away stale data rather every forwarding device continues forward wi=
th
> invalid data. That's bad for the network too, spending resources on
> something that's no longer valid. We in the test & measurement community
> never measure this.
> >
> > One of my all time favorite demos was of stuart's remote desktop
> > scenario, where he moved the mouse and the window moved with it.
>
>         [SM] Fair enough. However in 2015 I had been using NX's remote X1=
1
> desktop solution which even from Central Europe to California allowed me =
to
> remote control graphical applications way better than the first demo with
> the multi-second delay between mouse movement and resulting screen update=
s.
> (This was over a 6/1 Mbps ADSL link, admittedly using HTB-fq_codel, but
> since it did not saturate the link I assign the usability to NX's better
> design). I will make an impolite suggestion here, that the demonstrated
> screen sharing program simply had not yet been optimized/designed for
> longer slower paths...
>
> Regards
>         Sebastian
>
>
> >
> >> There have been a few requests that iperf 2 measure the "bytes thrown
> away" per a fork (user moves a video pointer, etc.) I haven't come up wit=
h
> a good test yet. I'm still trying to get basic awareness about existing
> latency, OWD and responsiveness metrics. I do think measuring the amount =
of
> resources spent on stale data is sorta like food waste, few really pay
> attention to it.
> >>
> >> Bob
> >>
> >> FYI, iperf 2 supports TCP_NOTSENT_LOWAT for those interested.
> >>
> >> --tcp-write-prefetch n[kmKM]
> >> Set TCP_NOTSENT_LOWAT on the socket and use event based writes per
> select() on the socket.
> >>
> >>
> >> On Thu, Oct 20, 2022 at 11:32 AM Stuart Cheshire via Make-wifi-fast <
> make-wifi-fast@lists.bufferbloat.net> wrote:
> >>>
> >>> On 20 Oct 2022, at 02:36, Sebastian Moeller <moeller0@gmx.de> wrote:
> >>>
> >>>> Hi Stuart,
> >>>>
> >>>> [SM] That seems to be somewhat optimistic. We have been there before=
,
> short of mandating actually-working oracle schedulers on all end-points,
> intermediate hops will see queues some more and some less transient. So w=
e
> can strive to minimize queue build-up sure, but can not avoid queues and
> long queues completely so we need methods to deal with them gracefully.
> >>>> Also not many applications are actually helped all that much by
> letting information get stale in their own buffers as compared to an
> on-path queue. Think an on-line reaction-time gated game, the need is to
> distribute current world state to all participating clients ASAP.
> >>>
> >>> I=E2=80=99m afraid you are wrong about this. If an on-line game wants=
 low
> delay, the only answer is for it to avoid generating position updates
> faster than the network carry them. One packet giving the current game
> player position is better than a backlog of ten previous stale ones waiti=
ng
> to go out. Sending packets faster than the network can carry them does no=
t
> get them to the destination faster; it gets them there slower. The same
> applies to frames in a screen sharing application. Sending the current
> state of the screen *now* is better than having a backlog of ten previous
> stale frames sitting in buffers somewhere on their way to the destination=
.
> Stale data is not inevitable. Applications don=E2=80=99t need to have sta=
le data if
> they avoid generating stale data in the first place.
> >>>
> >>> Please watch this video, which explains it better than I can in a
> written email:
> >>>
> >>> <https://developer.apple.com/videos/play/wwdc2015/719/?time=3D892>
> >>>
> >>> Stuart Cheshire
> >>>
> >>> _______________________________________________
> >>> Make-wifi-fast mailing list
> >>> Make-wifi-fast@lists.bufferbloat.net
> >>> https://lists.bufferbloat.net/listinfo/make-wifi-fast
> >>
> >>
> >> This electronic communication and the information and any files
> transmitted with it, or attached to it, are confidential and are intended
> solely for the use of the individual or entity to whom it is addressed an=
d
> may contain information that is confidential, legally privileged, protect=
ed
> by privacy laws, or otherwise restricted from disclosure to anyone else. =
If
> you are not the intended recipient or the person responsible for deliveri=
ng
> the e-mail to the intended recipient, you are hereby notified that any us=
e,
> copying, distributing, dissemination, forwarding, printing, or copying of
> this e-mail is strictly prohibited. If you received this e-mail in error,
> please return the e-mail to the sender, delete it from your computer, and
> destroy any printed copy of
> it._______________________________________________
> >> Make-wifi-fast mailing list
> >> Make-wifi-fast@lists.bufferbloat.net
> >> https://lists.bufferbloat.net/listinfo/make-wifi-fast
> >
> >
> >
> > --
> > This song goes out to all the folk that thought Stadia would work:
> >
> https://www.linkedin.com/posts/dtaht_the-mushroom-song-activity-698136666=
5607352320-FXtz
> > Dave T=C3=A4ht CEO, TekLibre, LLC
> > _______________________________________________
> > Rpm mailing list
> > Rpm@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/rpm
>
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

--000000000000f8734005eb8f0cd5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<br><br>I just wanted to say thanks for this discus=
sion. I always learn from each and all of you.<br><br>Bob</div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 20, 20=
22 at 12:40 PM Sebastian Moeller &lt;<a href=3D"mailto:moeller0@gmx.de">moe=
ller0@gmx.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">Hi Dave,<br>
<br>
<br>
&gt; On Oct 20, 2022, at 21:12, Dave Taht via Rpm &lt;<a href=3D"mailto:rpm=
@lists.bufferbloat.net" target=3D"_blank">rpm@lists.bufferbloat.net</a>&gt;=
 wrote:<br>
&gt; <br>
&gt; On Thu, Oct 20, 2022 at 12:04 PM Bob McMahon via Make-wifi-fast<br>
&gt; &lt;<a href=3D"mailto:make-wifi-fast@lists.bufferbloat.net" target=3D"=
_blank">make-wifi-fast@lists.bufferbloat.net</a>&gt; wrote:<br>
&gt;&gt; <br>
&gt;&gt; Intel has a good analogous video on this with their CPU video here=
 going over branches and failed predictions. And to Stuart&#39;s point, the=
 longer pipelines make the forks worse in the amount of in-process bytes th=
at need to be thrown away. Interactivity, in my opinion, suggests shrinking=
 the pipeline because, with networks, there is no quick way to throw away s=
tale data rather every forwarding device continues forward with invalid dat=
a. That&#39;s bad for the network too, spending resources on something that=
&#39;s no longer valid. We in the test &amp; measurement community never me=
asure this.<br>
&gt; <br>
&gt; One of my all time favorite demos was of stuart&#39;s remote desktop<b=
r>
&gt; scenario, where he moved the mouse and the window moved with it.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 [SM] Fair enough. However in 2015 I had been us=
ing NX&#39;s remote X11 desktop solution which even from Central Europe to =
California allowed me to remote control graphical applications way better t=
han the first demo with the multi-second delay between mouse movement and r=
esulting screen updates. (This was over a 6/1 Mbps ADSL link, admittedly us=
ing HTB-fq_codel, but since it did not saturate the link I assign the usabi=
lity to NX&#39;s better design). I will make an impolite suggestion here, t=
hat the demonstrated screen sharing program simply had not yet been optimiz=
ed/designed for longer slower paths... <br>
<br>
Regards<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Sebastian<br>
<br>
<br>
&gt; <br>
&gt;&gt; There have been a few requests that iperf 2 measure the &quot;byte=
s thrown away&quot; per a fork (user moves a video pointer, etc.) I haven&#=
39;t come up with a good test yet. I&#39;m still trying to get basic awaren=
ess about existing latency, OWD and responsiveness metrics. I do think meas=
uring the amount of resources spent on stale data is sorta like food waste,=
 few really pay attention to it.<br>
&gt;&gt; <br>
&gt;&gt; Bob<br>
&gt;&gt; <br>
&gt;&gt; FYI, iperf 2 supports TCP_NOTSENT_LOWAT for those interested.<br>
&gt;&gt; <br>
&gt;&gt; --tcp-write-prefetch n[kmKM]<br>
&gt;&gt; Set TCP_NOTSENT_LOWAT on the socket and use event based writes per=
 select() on the socket.<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; On Thu, Oct 20, 2022 at 11:32 AM Stuart Cheshire via Make-wifi-fas=
t &lt;<a href=3D"mailto:make-wifi-fast@lists.bufferbloat.net" target=3D"_bl=
ank">make-wifi-fast@lists.bufferbloat.net</a>&gt; wrote:<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; On 20 Oct 2022, at 02:36, Sebastian Moeller &lt;<a href=3D"mai=
lto:moeller0@gmx.de" target=3D"_blank">moeller0@gmx.de</a>&gt; wrote:<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; Hi Stuart,<br>
&gt;&gt;&gt;&gt; <br>
&gt;&gt;&gt;&gt; [SM] That seems to be somewhat optimistic. We have been th=
ere before, short of mandating actually-working oracle schedulers on all en=
d-points, intermediate hops will see queues some more and some less transie=
nt. So we can strive to minimize queue build-up sure, but can not avoid que=
ues and long queues completely so we need methods to deal with them gracefu=
lly.<br>
&gt;&gt;&gt;&gt; Also not many applications are actually helped all that mu=
ch by letting information get stale in their own buffers as compared to an =
on-path queue. Think an on-line reaction-time gated game, the need is to di=
stribute current world state to all participating clients ASAP.<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; I=E2=80=99m afraid you are wrong about this. If an on-line gam=
e wants low delay, the only answer is for it to avoid generating position u=
pdates faster than the network carry them. One packet giving the current ga=
me player position is better than a backlog of ten previous stale ones wait=
ing to go out. Sending packets faster than the network can carry them does =
not get them to the destination faster; it gets them there slower. The same=
 applies to frames in a screen sharing application. Sending the current sta=
te of the screen *now* is better than having a backlog of ten previous stal=
e frames sitting in buffers somewhere on their way to the destination. Stal=
e data is not inevitable. Applications don=E2=80=99t need to have stale dat=
a if they avoid generating stale data in the first place.<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Please watch this video, which explains it better than I can i=
n a written email:<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; &lt;<a href=3D"https://developer.apple.com/videos/play/wwdc201=
5/719/?time=3D892" rel=3D"noreferrer" target=3D"_blank">https://developer.a=
pple.com/videos/play/wwdc2015/719/?time=3D892</a>&gt;<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Stuart Cheshire<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; Make-wifi-fast mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=
=3D"_blank">Make-wifi-fast@lists.bufferbloat.net</a><br>
&gt;&gt;&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fa=
st" rel=3D"noreferrer" target=3D"_blank">https://lists.bufferbloat.net/list=
info/make-wifi-fast</a><br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; This electronic communication and the information and any files tr=
ansmitted with it, or attached to it, are confidential and are intended sol=
ely for the use of the individual or entity to whom it is addressed and may=
 contain information that is confidential, legally privileged, protected by=
 privacy laws, or otherwise restricted from disclosure to anyone else. If y=
ou are not the intended recipient or the person responsible for delivering =
the e-mail to the intended recipient, you are hereby notified that any use,=
 copying, distributing, dissemination, forwarding, printing, or copying of =
this e-mail is strictly prohibited. If you received this e-mail in error, p=
lease return the e-mail to the sender, delete it from your computer, and de=
stroy any printed copy of it.______________________________________________=
_<br>
&gt;&gt; Make-wifi-fast mailing list<br>
&gt;&gt; <a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"=
_blank">Make-wifi-fast@lists.bufferbloat.net</a><br>
&gt;&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" =
rel=3D"noreferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo=
/make-wifi-fast</a><br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; -- <br>
&gt; This song goes out to all the folk that thought Stadia would work:<br>
&gt; <a href=3D"https://www.linkedin.com/posts/dtaht_the-mushroom-song-acti=
vity-6981366665607352320-FXtz" rel=3D"noreferrer" target=3D"_blank">https:/=
/www.linkedin.com/posts/dtaht_the-mushroom-song-activity-698136666560735232=
0-FXtz</a><br>
&gt; Dave T=C3=A4ht CEO, TekLibre, LLC<br>
&gt; _______________________________________________<br>
&gt; Rpm mailing list<br>
&gt; <a href=3D"mailto:Rpm@lists.bufferbloat.net" target=3D"_blank">Rpm@lis=
ts.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/rpm" rel=3D"noreferr=
er" target=3D"_blank">https://lists.bufferbloat.net/listinfo/rpm</a><br>
<br>
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
--000000000000f8734005eb8f0cd5--

--000000000000ff717d05eb8f0c9c
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIEmKKAwHUdzOvSjdHDz8HFp4sv22AYU8+coQ
8SaQxI43MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIyMTAyMTE3
NDgzNFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQB09wlWBu+yJJUtcfh/0U03SXRvMurtDw4yKvjIpNCUXUh6GNunaR90
4GeMtMp0uGd+x64z4zd8B2fCOj8KJn/GWbIsTbbFr06vo2lERqj5dA721nD+PH8xu9oRZ1DrsJJV
1nXD3wKgUc7/d7LcgP55T16Gzu7/bbcR3ibcqKSRXcYfKks4PzlRYjIBIfYMwMtMNl4jQOmKvoom
Eq8Kyv6l08trIvltzvIByWAQhg80zQgIKl1MZVDc4TM71UI6eYRCBmuw2jEGwU31VYP+XrYe3BJW
q9IUL+ae+GRscbjqTzmAYsxNOdR74ANYViMs5TxDt7bpmlP1b1NqmnSBhdGN
--000000000000ff717d05eb8f0c9c--

--===============4700567004215672095==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4700567004215672095==--

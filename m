Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA196068E9
	for <lists+cake@lfdr.de>; Thu, 20 Oct 2022 21:32:17 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 4729C3CB51;
	Thu, 20 Oct 2022 15:32:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1666294330;
	bh=A+dBoX4G2BA10nSapDzFkGDx6wG2xJA7ucOIukV0a1k=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=SujV8pmUIDZizgJRXvwPSWBE0cUnBFEQqhn4TOftn+RuoLZqH/E9KY3YdOSvO8Gum
	 YflAu236/WpylPulTWSQzuCF+LSJOC9XWXuryjhiDGSHa8BjEb/mQIHRmfWqhaV3nB
	 U23bmIlzKE0+ljnsUny5nujSk9qQtws93tMbgR9SqVIJhvp05x5XH15sT0oJYEkO9Y
	 1cnWsX4FTylsrpzjS0DOl9QT4P3uBTECLWhlrl8VmwwKn23MYXu2yUUjldCxaTqqqj
	 idy7poTvv+PaDov0iS6eu6FRaIvu++TK0QgIb3chWZ4W5QaS2LebcQJ/85Toj+qCPM
	 esbIoiBIH6+IQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id CDCE23CB40
 for <cake@lists.bufferbloat.net>; Thu, 20 Oct 2022 15:32:07 -0400 (EDT)
Received: by mail-lj1-x233.google.com with SMTP id j23so763135lji.8
 for <cake@lists.bufferbloat.net>; Thu, 20 Oct 2022 12:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=MXxATN9rmIUC3y07JCdzLgAMtsG6MVwMYz5PmtkV8eo=;
 b=YipAXLM8TBCcKb6e2wNLwNAN1LVZ1kuQYEoAn3a5rFJiGEB9aEEPlwiwzhK7RmTDvG
 lUKKcgCVz2b9cKILgS3Cn6L/k8uEbKOg8DXn2p7sWJlTtI/ipq4v8DVFp9h7nHRc5E/G
 OLGp0hDYL2N0kNWD2I/NgQhbILfMLo2yhxhcc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=MXxATN9rmIUC3y07JCdzLgAMtsG6MVwMYz5PmtkV8eo=;
 b=e3iw80wxUGOXmEgzE4gVc7EU0odc+DeQWbs+yi2SrBRmnGO50DexP0HTeI+7aU8+h4
 szwuglx6YNDns4j8CLWEiw6B+ys+w9seGb0Zm8JCoBsEX+2ZfOnfxZyYAdTh9mtlFOw0
 ev7B5gURCtUzRPnejufJuU/6XIln5BM1KwitlEbjvB5G/j+g07BdJzjwJbR5dCW2lHq7
 nwvolpt5ibC5Xe9FPf0vHp6xlfUgTfOXbgeUuX1QFpvbt0lwAih4lKR5VrXRVsbNMA5m
 TwIRbHAXp6/Y/3LCennx3gNOexTlCQK77n8EMm6phqJsFCDLlbdHElxnUaeIIvqJtijm
 8h5w==
X-Gm-Message-State: ACrzQf05xjb5s/BQtoKJEnUEEnO7iLm2ifJHFUXeSoA0Xnln+g6fHTkn
 6/cn3HOCrkXYjMoPP4lom1biB47obEyRj+OsAS+obT9UPnqi/kd1n3HTvPUy2/edNwk5u0OT9gY
 aqtpCJMbk2yI0gS69l+Q9zsmCEIxO
X-Google-Smtp-Source: AMsMyM5FTj7IfLMQEgy7ZfnLNL/bFp2SO0JxzX3kVtqILYXsutrlgkqeQTvtgV5M86lbZ6eWRVKYh1wOV1UeWN8tJ2E=
X-Received: by 2002:a2e:a884:0:b0:25d:d8a2:d18c with SMTP id
 m4-20020a2ea884000000b0025dd8a2d18cmr5062569ljq.305.1666294326191; Thu, 20
 Oct 2022 12:32:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <938D9D45-DADA-4291-BD8A-84E4257CEE49@apple.com>
 <CAA93jw4KOkgdfT2LunCtPYPjXL+=OtTrouJgPjM7U1bHKtErnw@mail.gmail.com>
 <BD3CEB48-E45E-49DB-AAFC-80C539BB4169@apple.com>
 <9989D2F5-3A6A-454E-ABB8-71A29F3AAC0D@gmx.de>
 <4BE88889-45A9-41E4-91F6-4910530A6B4C@apple.com>
 <CAHb6Lvq4NMXDQJPB-Tjo2Bg7BERRGwb4OLbHbbXGa4ZOcJ45dg@mail.gmail.com>
 <CAA93jw5j16_188JC58o44=EV3HmOCDQm-U-dgMLjXESq691TnQ@mail.gmail.com>
In-Reply-To: <CAA93jw5j16_188JC58o44=EV3HmOCDQm-U-dgMLjXESq691TnQ@mail.gmail.com>
Date: Thu, 20 Oct 2022 12:31:54 -0700
Message-ID: <CAHb6LvrdRxu7-Qu82WVG4y8cugPRujFL4WmrgJgZ=2LSMtY9XA@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: Re: [Cake] [Make-wifi-fast] [Rpm] The most wonderful video ever
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
Cc: Stuart Cheshire <cheshire@apple.com>, Rpm <rpm@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============4817580525088406849=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4817580525088406849==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="0000000000006f7f0c05eb7c617e"

--0000000000006f7f0c05eb7c617e
Content-Type: multipart/alternative; boundary="00000000000067e53605eb7c6114"

--00000000000067e53605eb7c6114
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The demo is nice but a way to measure this with full statistics can be
actionable by engineers. I did add support for tcp write time with
histograms, where setting TCP_NOTSENT_LOWAT, can give a sense of the
network responsiveness as the writes will await the select() indicating the
pipeline has drained. Nobody really uses this much.

Also, there is a suggestion for the server to generate branches so-to-speak
by sending an event back to the client, e.g. move the video pointer, but
how does the test tool decide when to create the user events that need to
be sent back? How long does it wait between events, etc?

Bob

On Thu, Oct 20, 2022 at 12:12 PM Dave Taht <dave.taht@gmail.com> wrote:

> On Thu, Oct 20, 2022 at 12:04 PM Bob McMahon via Make-wifi-fast
> <make-wifi-fast@lists.bufferbloat.net> wrote:
> >
> > Intel has a good analogous video on this with their CPU video here goin=
g
> over branches and failed predictions. And to Stuart's point, the longer
> pipelines make the forks worse in the amount of in-process bytes that nee=
d
> to be thrown away. Interactivity, in my opinion, suggests shrinking the
> pipeline because, with networks, there is no quick way to throw away stal=
e
> data rather every forwarding device continues forward with invalid data.
> That's bad for the network too, spending resources on something that's no
> longer valid. We in the test & measurement community never measure this.
>
> One of my all time favorite demos was of stuart's remote desktop
> scenario, where he moved the mouse and the window moved with it.
>
> > There have been a few requests that iperf 2 measure the "bytes thrown
> away" per a fork (user moves a video pointer, etc.) I haven't come up wit=
h
> a good test yet. I'm still trying to get basic awareness about existing
> latency, OWD and responsiveness metrics. I do think measuring the amount =
of
> resources spent on stale data is sorta like food waste, few really pay
> attention to it.
> >
> > Bob
> >
> > FYI, iperf 2 supports TCP_NOTSENT_LOWAT for those interested.
> >
> > --tcp-write-prefetch n[kmKM]
> > Set TCP_NOTSENT_LOWAT on the socket and use event based writes per
> select() on the socket.
> >
> >
> > On Thu, Oct 20, 2022 at 11:32 AM Stuart Cheshire via Make-wifi-fast <
> make-wifi-fast@lists.bufferbloat.net> wrote:
> >>
> >> On 20 Oct 2022, at 02:36, Sebastian Moeller <moeller0@gmx.de> wrote:
> >>
> >> > Hi Stuart,
> >> >
> >> > [SM] That seems to be somewhat optimistic. We have been there before=
,
> short of mandating actually-working oracle schedulers on all end-points,
> intermediate hops will see queues some more and some less transient. So w=
e
> can strive to minimize queue build-up sure, but can not avoid queues and
> long queues completely so we need methods to deal with them gracefully.
> >> > Also not many applications are actually helped all that much by
> letting information get stale in their own buffers as compared to an
> on-path queue. Think an on-line reaction-time gated game, the need is to
> distribute current world state to all participating clients ASAP.
> >>
> >> I=E2=80=99m afraid you are wrong about this. If an on-line game wants =
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
> >>
> >> Please watch this video, which explains it better than I can in a
> written email:
> >>
> >> <https://developer.apple.com/videos/play/wwdc2015/719/?time=3D892>
> >>
> >> Stuart Cheshire
> >>
> >> _______________________________________________
> >> Make-wifi-fast mailing list
> >> Make-wifi-fast@lists.bufferbloat.net
> >> https://lists.bufferbloat.net/listinfo/make-wifi-fast
> >
> >
> > This electronic communication and the information and any files
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
> > Make-wifi-fast mailing list
> > Make-wifi-fast@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/make-wifi-fast
>
>
>
> --
> This song goes out to all the folk that thought Stadia would work:
>
> https://www.linkedin.com/posts/dtaht_the-mushroom-song-activity-698136666=
5607352320-FXtz
> Dave T=C3=A4ht CEO, TekLibre, LLC
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

--00000000000067e53605eb7c6114
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The demo is nice but a way to measure this with full stati=
stics can be actionable by engineers. I did add support for tcp write time =
with histograms, where setting TCP_NOTSENT_LOWAT, can give a sense of the n=
etwork responsiveness as the writes will await the select() indicating=C2=
=A0the pipeline has drained. Nobody really uses this much.<br><br>Also, the=
re is a suggestion for the server to generate branches so-to-speak by sendi=
ng an event back to the client, e.g. move the video pointer, but how does t=
he test tool decide when to create the user events that need=C2=A0to be sen=
t back? How long does it wait between events, etc?<br><br>Bob</div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 20=
, 2022 at 12:12 PM Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com">dav=
e.taht@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">On Thu, Oct 20, 2022 at 12:04 PM Bob McMahon via Make-wifi-=
fast<br>
&lt;<a href=3D"mailto:make-wifi-fast@lists.bufferbloat.net" target=3D"_blan=
k">make-wifi-fast@lists.bufferbloat.net</a>&gt; wrote:<br>
&gt;<br>
&gt; Intel has a good analogous video on this with their CPU video here goi=
ng over branches and failed predictions. And to Stuart&#39;s point, the lon=
ger pipelines make the forks worse in the amount of in-process bytes that n=
eed to be thrown away. Interactivity, in my opinion, suggests shrinking the=
 pipeline because, with networks, there is no quick way to throw away stale=
 data rather every forwarding device continues forward with invalid data. T=
hat&#39;s bad for the network too, spending resources on something that&#39=
;s no longer valid. We in the test &amp; measurement community never measur=
e this.<br>
<br>
One of my all time favorite demos was of stuart&#39;s remote desktop<br>
scenario, where he moved the mouse and the window moved with it.<br>
<br>
&gt; There have been a few requests that iperf 2 measure the &quot;bytes th=
rown away&quot; per a fork (user moves a video pointer, etc.) I haven&#39;t=
 come up with a good test yet. I&#39;m still trying to get basic awareness =
about existing latency, OWD and responsiveness metrics. I do think measurin=
g the amount of resources spent on stale data is sorta like food waste, few=
 really pay attention to it.<br>
&gt;<br>
&gt; Bob<br>
&gt;<br>
&gt; FYI, iperf 2 supports TCP_NOTSENT_LOWAT for those interested.<br>
&gt;<br>
&gt; --tcp-write-prefetch n[kmKM]<br>
&gt; Set TCP_NOTSENT_LOWAT on the socket and use event based writes per sel=
ect() on the socket.<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Oct 20, 2022 at 11:32 AM Stuart Cheshire via Make-wifi-fast &l=
t;<a href=3D"mailto:make-wifi-fast@lists.bufferbloat.net" target=3D"_blank"=
>make-wifi-fast@lists.bufferbloat.net</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On 20 Oct 2022, at 02:36, Sebastian Moeller &lt;<a href=3D"mailto:=
moeller0@gmx.de" target=3D"_blank">moeller0@gmx.de</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; &gt; Hi Stuart,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; [SM] That seems to be somewhat optimistic. We have been there=
 before, short of mandating actually-working oracle schedulers on all end-p=
oints, intermediate hops will see queues some more and some less transient.=
 So we can strive to minimize queue build-up sure, but can not avoid queues=
 and long queues completely so we need methods to deal with them gracefully=
.<br>
&gt;&gt; &gt; Also not many applications are actually helped all that much =
by letting information get stale in their own buffers as compared to an on-=
path queue. Think an on-line reaction-time gated game, the need is to distr=
ibute current world state to all participating clients ASAP.<br>
&gt;&gt;<br>
&gt;&gt; I=E2=80=99m afraid you are wrong about this. If an on-line game wa=
nts low delay, the only answer is for it to avoid generating position updat=
es faster than the network carry them. One packet giving the current game p=
layer position is better than a backlog of ten previous stale ones waiting =
to go out. Sending packets faster than the network can carry them does not =
get them to the destination faster; it gets them there slower. The same app=
lies to frames in a screen sharing application. Sending the current state o=
f the screen *now* is better than having a backlog of ten previous stale fr=
ames sitting in buffers somewhere on their way to the destination. Stale da=
ta is not inevitable. Applications don=E2=80=99t need to have stale data if=
 they avoid generating stale data in the first place.<br>
&gt;&gt;<br>
&gt;&gt; Please watch this video, which explains it better than I can in a =
written email:<br>
&gt;&gt;<br>
&gt;&gt; &lt;<a href=3D"https://developer.apple.com/videos/play/wwdc2015/71=
9/?time=3D892" rel=3D"noreferrer" target=3D"_blank">https://developer.apple=
.com/videos/play/wwdc2015/719/?time=3D892</a>&gt;<br>
&gt;&gt;<br>
&gt;&gt; Stuart Cheshire<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; Make-wifi-fast mailing list<br>
&gt;&gt; <a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"=
_blank">Make-wifi-fast@lists.bufferbloat.net</a><br>
&gt;&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" =
rel=3D"noreferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo=
/make-wifi-fast</a><br>
&gt;<br>
&gt;<br>
&gt; This electronic communication and the information and any files transm=
itted with it, or attached to it, are confidential and are intended solely =
for the use of the individual or entity to whom it is addressed and may con=
tain information that is confidential, legally privileged, protected by pri=
vacy laws, or otherwise restricted from disclosure to anyone else. If you a=
re not the intended recipient or the person responsible for delivering the =
e-mail to the intended recipient, you are hereby notified that any use, cop=
ying, distributing, dissemination, forwarding, printing, or copying of this=
 e-mail is strictly prohibited. If you received this e-mail in error, pleas=
e return the e-mail to the sender, delete it from your computer, and destro=
y any printed copy of it._______________________________________________<br=
>
&gt; Make-wifi-fast mailing list<br>
&gt; <a href=3D"mailto:Make-wifi-fast@lists.bufferbloat.net" target=3D"_bla=
nk">Make-wifi-fast@lists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/make-wifi-fast" rel=
=3D"noreferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/ma=
ke-wifi-fast</a><br>
<br>
<br>
<br>
-- <br>
This song goes out to all the folk that thought Stadia would work:<br>
<a href=3D"https://www.linkedin.com/posts/dtaht_the-mushroom-song-activity-=
6981366665607352320-FXtz" rel=3D"noreferrer" target=3D"_blank">https://www.=
linkedin.com/posts/dtaht_the-mushroom-song-activity-6981366665607352320-FXt=
z</a><br>
Dave T=C3=A4ht CEO, TekLibre, LLC<br>
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
--00000000000067e53605eb7c6114--

--0000000000006f7f0c05eb7c617e
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
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEICUYlOZbxeuvb7K120u2e4Xi4zyS3zaw6QMB
rg+wJMB8MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIyMTAyMDE5
MzIwNlowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQCoY8w4OJpC2aPW1lxOwmsuGqHPKgPu4Ai4ZakK4zuxglGApj95xOyd
mEbWJKlp33PH8N1Scm3uzc+X8QVqLkTUx+GGZynxUkzogEfGZZpQsPQug2oO9lrKuobpaXKUbpxv
bkHyD5avRFn/ofYCm0ZMEmGmUKi4hSgvzQPsIZnv0JwV0WDRxl4DRa3CeWYejSIRfpIbuLrqOPXj
l/yhiTgAVCnoQ51YY2J4pChCEuoLHHEOvCtbEWdVykMDNc+kKBzhQeoXpbQ6kxRPFGz8+KjoaB3q
MFCgMQA9wspOFKoa4vUC0lTvYowmUz13VRKE4CM2C47XOxZ2kad2GWpXkC3Q
--0000000000006f7f0c05eb7c617e--

--===============4817580525088406849==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4817580525088406849==--

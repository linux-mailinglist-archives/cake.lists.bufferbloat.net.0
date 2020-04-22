Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BC41B489A
	for <lists+cake@lfdr.de>; Wed, 22 Apr 2020 17:28:21 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 28F323CB38;
	Wed, 22 Apr 2020 11:28:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587569300;
	bh=TSW8a61YlVxqXEks6T+xMVa+yvASuwsbjCKh8+c1g/E=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xo2QHWmprNRVKxBvraHGs61OxQOKCw/I6fm2kb+6H3HRgdHTU9VdjKppThdvRUCBa
	 a6jarUbGTHN+iFL1flYMpEFQQYv/NrPyMwb7lrDSeWXHgsuFyIpJy1emVNNhJ++1ty
	 0oJVe5m4ANiyJkZFDOZZjpeCEfcgh9srY7bLQLyxtnRJGhExe98LXpQVcYxUTNbHBY
	 V7+XyywzHViXh26rnIGkpQK9YE6JCmX4hT0ix7DqgdjtC2dC9jBmo8kqO0vPMnm9Xs
	 w2BdJ+tQt3gsm157TfdKOKxB3vcRuIMei6kZi17Uj6hF0LHxK3P7wYPcWRGqtrL7MP
	 iQhQi796wWEJA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 958FD3B29E
 for <cake@lists.bufferbloat.net>; Wed, 22 Apr 2020 11:28:18 -0400 (EDT)
Received: by mail-wm1-x32b.google.com with SMTP id x25so2838945wmc.0
 for <cake@lists.bufferbloat.net>; Wed, 22 Apr 2020 08:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ieee.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HEYcSxCtfV8F2mk4jxQNftDGgQrGGLx9v27bxt2HZmc=;
 b=OmDslKFJ7/A4fpZCl91PxDp//YbrkeVU6NmBhL/v//HB+NuC4SoGFxgjcW7+YM1aq1
 PUzzE7MoUMEpeMUyOyXQRL3P/sQzfLiuaFFnPYTMnhltlb7wwKOas5OYScE5Rq0w0QUD
 cPPGIEutPSd5uZW0WnoOu+I33eQY092FplbZU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HEYcSxCtfV8F2mk4jxQNftDGgQrGGLx9v27bxt2HZmc=;
 b=X3ESs+Lf1dIDx31magGxcJyj1f5ITZA4qA33CtsyZwjePnyTdyUmAlWsaDSFnJBnN2
 iqteyS5UzSE3N6M8l+8iGSCWTq4GbOv4CAtp9uw/OnOnnIcWcmGWAqYGscuy+znUVlAX
 UpuiVblpMJpu4YxdUhk6U8tmuAMo5F5dwXeSNWZvQRH5tejhRBfzLVlWhXfjnOM5ViBA
 7v+BcdrmAlUknXeUA5cfFmb5pc43ScLzTurKf7M6nT7aDHtVmJf2aetx1D7IJJ0Ou6hm
 Ip9zevkqD9z/M43A4hHU/7gVzjcecglwGrVtIy3qbWY6hZKco6TYR2bve/muRkL5pCsB
 7Nww==
X-Gm-Message-State: AGi0PubvBxlZsPr6CBr/XwCLqEw5n0GJRQ3+G6pyiAQRlt4lgJZxDGCM
 7r+SJ1Htk75FZt1q6iaFvyYP70+BYxNM4ZG184a1AA==
X-Google-Smtp-Source: APiQypI7DqD6JadGb9ZElt4bIFSgANFDTcPt+NG/tNbSXXfShIqRixdwshX8YEVRgm6THZzfbeLf+TB1FsTf1csAiGI=
X-Received: by 2002:a1c:c2d6:: with SMTP id s205mr11745031wmf.90.1587569297621; 
 Wed, 22 Apr 2020 08:28:17 -0700 (PDT)
MIME-Version: 1.0
References: <d3f45591-7359-47a6-bd0b-f89f9b49c5a7@www.fastmail.com>
 <75FEC2D9-BFC8-4FA2-A972-D11A823C5528@gmail.com>
 <CAA93jw7kfSjuQP2j8uX5-+hs2PBLNZ6c0=tV=PjZE50fQ1oFLw@mail.gmail.com>
 <AAAE0AE6-BA8C-4236-A68D-C5A4CF7DFEDA@slashdirt.org>
 <603DFF79-D0C0-41BD-A2FB-E40B95A9CBB0@gmail.com>
 <CAA93jw5yvybv+aXH4NLd1r_8xSP2CPwzeh0q6wm1c26jLPBxag@mail.gmail.com>
 <CAH8sseTdDfswOYpYvaDFm_jsaMCpsT9Ebj2ZvkKwaqyyjZiWHA@mail.gmail.com>
 <CAA93jw54L6-mUU9oTgZVFHh5kY7HHGVQjZJZfUMw7Kuq+S9-8w@mail.gmail.com>
In-Reply-To: <CAA93jw54L6-mUU9oTgZVFHh5kY7HHGVQjZJZfUMw7Kuq+S9-8w@mail.gmail.com>
From: Luca Muscariello <muscariello@ieee.org>
Date: Wed, 22 Apr 2020 17:28:06 +0200
Message-ID: <CAH8sseQjSk4ghHXSvbeMMAvqGYnJ=0O9XLGo15bFVpwh+C8Zrg@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: Re: [Cake] Advantages to tightly tuning latency
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
Cc: Cake List <cake@lists.bufferbloat.net>, Maxime Bizon <mbizon@freebox.fr>
Content-Type: multipart/mixed; boundary="===============8662824120111991255=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8662824120111991255==
Content-Type: multipart/alternative; boundary="0000000000000ab5b205a3e2c88d"

--0000000000000ab5b205a3e2c88d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 22, 2020 at 4:48 PM Dave Taht <dave.taht@gmail.com> wrote:

> On Wed, Apr 22, 2020 at 2:04 AM Luca Muscariello <muscariello@ieee.org>
> wrote:
> >
> >
> >
> > On Wed, Apr 22, 2020 at 12:44 AM Dave Taht <dave.taht@gmail.com> wrote:
> >>
> >> On Tue, Apr 21, 2020 at 3:33 PM Jonathan Morton <chromatix99@gmail.com=
>
> wrote:
> >> >
> >> > > On 22 Apr, 2020, at 1:25 am, Thibaut <hacks@slashdirt.org> wrote:
> >> > >
> >> > > My curiosity is piqued. Can you elaborate on this? What does
> free.fr do?
> >> >
> >> > They're a large French ISP.  They made their own CPE devices, and
> debloated both them and their network quite a while ago.  In that sense, =
at
> least, they're a model for others to follow - but few have.
> >> >
> >> >  - Jonathan Morton
> >>
> >> they are one of the few ISPs that insisted on getting full source code
> >> to their DSL stack, and retained the chops to be able to modify it. I
> >> really admire their revolution v6 product. First introduced in 2010,
> >> it's been continuously updated, did ipv6 at the outset, got fq_codel
> >> when it first came out, and they update the kernel regularly. All
> >> kinds of great features on it, and ecn is enabled by default for those
> >> also (things like samba). over 3 million boxes now I hear....
> >>
> >> with <1ms of delay in the dsl driver, they don't need to shape, they
> >> just run at line rate using three tiers of DRR that look a lot like
> >> cake. They shared their config with me, and before I lost heart for
> >> future internet drafts, I'd stuck it here:
> >>
> >>
> https://github.com/dtaht/bufferbloat-rfcs/blob/master/home_gateway_queue_=
management/middle.mkd
> >>
> >> Occasionally they share some data with me. Sometimes I wish I lived in
> >> paris just so I could have good internet! (their fiber offering is
> >> reasonably buffered (not fq_codeled) and the wifi... maybe I can get
> >> them to talk about what they did)
> >>
> >> When free.fr shipped fq_codel 2 months after we finalized it, I
> >> figured the rest of the world was only months behind. How hard is it
> >> to add 50 lines of BQL oriented code to a DSL firmware?
> >>
> >
> > Free has been using SFQ since 2005 (if I remember well).
> > They announced the wide deployment of SFQ in the free.fr newsgroup.
> > Wi-Fi in the free.fr router was not as good though.
>
> They're working on it. :)
>
> > In Paris there is a lot of GPON now that is replacing DSL. But there is
> > a nation-wide effort funded by local administrations to get fiber
> > everywhere. There are small towns in the countryside with fiber.
> > Public money has made, and is making that possible.
> > There is still a little of Euro-DOCSIS, but frankly compared to fiber
> > it has no chance to survive.
>
> I am very, very happy for y'all. Fiber has always been the sanest
> thing. Is there
> a SPF+ gpon card yet I can plug into a convention open source router yet?
>
> >
> > I currently have 2Gbps/600Mbps access with orange.fr and free.fr has a
> subscription
> > at 10Gbps GPON. I won't tell you the price because you may feel depress=
ed
> > compared to other countries where prices are much higher.
>
> I'd emigrate!!!
>
> > The challenge becomes to keep up with these link rates in software
> > as there is a lot of hardware offloading.
>


I just meant that these routers tend to use HW offloading
and kernel qdiscs may be bypassed.



>
> At this point, I kind of buy the stanford sqrt(bdp) argument. All you
> really need for gigE+ fiber access to work well
> for most modern traffic is a fairly short fifo (say, 20ms). Any form
> of FQ would help but be hardly noticible. I think
> there needs to be work on the hop between the internet and the
> subscriber...
>
> Web traffic is dominated by RTT above 40mbit (presently).
> streaming video traffic - is no more than 20Mbit, and your occasional
> big download is a dozen big streams that would
> bounce off a short fifo well.
> gbit access to the home is (admittedly glorious, wonderful!) overkill
> for all present forms of traffic.
>
> I'm pretty sure if I had gig fiber I could come up with a way to use
> it up (exiting the cloud entirely comes to mind), but
> lacking new applications that demand that much bandwidth...
>
> I of course, would like to see lola ( https://lola.conts.it/ ) finally
> work, and videoconferencing and game stream with high rates and faster
> (even raw) encoding also has potential to reduce e2e latencies
> enormously at that layer.
>
> >
> > As soon as 802.11ax becomes the norm, software scheduling will become
> > a challenge.
>
> Do you mean in fiber or wireless? wireless is really problematic at ANY
> speed.
>

I meant that software scheduling becomes a challenge for the same
reason as above. Increase in total throughput of the box
will call for hardware offloading and kernel qdisc may be bypassed.

It is not a challenge per se, it is a challenge because traffic
may not be managed by the kernel.




>
> at gfiber, the buffering moved to the wifi, and there are other
> problems that really impact achievable bandwidth. When I was last in
> paris, I could "hear" 300+ access points from my apt, and could only
> get 100-200kbit per second out of the wireless n ap I had, unless I
> cheated and stuck my traffic in the VI queue. A friend of mine there,
> couldn't even get wifi across the room! Beacons ate into a lot of the
> available
> bandwidth. Since 5ghz (and soon 6ghz - is 6E a thing in france) is
> shorter range I'm hoping that's got better, but with
> 802.11ac and ax peeing on half the wifi spectrum by default, I imagine
> achievable rates in high density locations with many APs will be very
> low... and very jittery... and thus still require good ATF, fq, and
> aqm technologies.
>
> I have high hopes for OFDMA and DU but thus far haven't found an AP
> doing it. I'm not sure what to do about the beaconing problem except
> offer a free tradein to all my neighbors still emitting G style
> frames....
>
> And in looking over some preliminary code for the mt76 ax chip, I
> worry about both bad design of the firmware, and
> insufficient resources on-chip to manage well.
>
> How is the 5G rollout going in france?
>

Good question. I've just seen a speed test at Gbps on a phone
which can drain your battery in less than 5 minutes. Amazing tech!



>
> I recently learned that much of japan is... wait for it... wimax.
>
> >
> > Luca
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

--0000000000000ab5b205a3e2c88d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:monospace"><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Apr 22, 2020 at 4:48 PM Dave Taht &lt=
;<a href=3D"mailto:dave.taht@gmail.com" target=3D"_blank">dave.taht@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On Wed, Apr 22, 2020 at 2:04 AM Luca Muscariello &lt;<a href=3D"mailto:mu=
scariello@ieee.org" target=3D"_blank">muscariello@ieee.org</a>&gt; wrote:<b=
r>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Apr 22, 2020 at 12:44 AM Dave Taht &lt;<a href=3D"mailto:dave.=
taht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Apr 21, 2020 at 3:33 PM Jonathan Morton &lt;<a href=3D"mai=
lto:chromatix99@gmail.com" target=3D"_blank">chromatix99@gmail.com</a>&gt; =
wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; &gt; On 22 Apr, 2020, at 1:25 am, Thibaut &lt;<a href=3D"mail=
to:hacks@slashdirt.org" target=3D"_blank">hacks@slashdirt.org</a>&gt; wrote=
:<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; My curiosity is piqued. Can you elaborate on this? What =
does <a href=3D"http://free.fr" rel=3D"noreferrer" target=3D"_blank">free.f=
r</a> do?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; They&#39;re a large French ISP.=C2=A0 They made their own CPE=
 devices, and debloated both them and their network quite a while ago.=C2=
=A0 In that sense, at least, they&#39;re a model for others to follow - but=
 few have.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;=C2=A0 - Jonathan Morton<br>
&gt;&gt;<br>
&gt;&gt; they are one of the few ISPs that insisted on getting full source =
code<br>
&gt;&gt; to their DSL stack, and retained the chops to be able to modify it=
. I<br>
&gt;&gt; really admire their revolution v6 product. First introduced in 201=
0,<br>
&gt;&gt; it&#39;s been continuously updated, did ipv6 at the outset, got fq=
_codel<br>
&gt;&gt; when it first came out, and they update the kernel regularly. All<=
br>
&gt;&gt; kinds of great features on it, and ecn is enabled by default for t=
hose<br>
&gt;&gt; also (things like samba). over 3 million boxes now I hear....<br>
&gt;&gt;<br>
&gt;&gt; with &lt;1ms of delay in the dsl driver, they don&#39;t need to sh=
ape, they<br>
&gt;&gt; just run at line rate using three tiers of DRR that look a lot lik=
e<br>
&gt;&gt; cake. They shared their config with me, and before I lost heart fo=
r<br>
&gt;&gt; future internet drafts, I&#39;d stuck it here:<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://github.com/dtaht/bufferbloat-rfcs/blob/master/h=
ome_gateway_queue_management/middle.mkd" rel=3D"noreferrer" target=3D"_blan=
k">https://github.com/dtaht/bufferbloat-rfcs/blob/master/home_gateway_queue=
_management/middle.mkd</a><br>
&gt;&gt;<br>
&gt;&gt; Occasionally they share some data with me. Sometimes I wish I live=
d in<br>
&gt;&gt; paris just so I could have good internet! (their fiber offering is=
<br>
&gt;&gt; reasonably buffered (not fq_codeled) and the wifi... maybe I can g=
et<br>
&gt;&gt; them to talk about what they did)<br>
&gt;&gt;<br>
&gt;&gt; When <a href=3D"http://free.fr" rel=3D"noreferrer" target=3D"_blan=
k">free.fr</a> shipped fq_codel 2 months after we finalized it, I<br>
&gt;&gt; figured the rest of the world was only months behind. How hard is =
it<br>
&gt;&gt; to add 50 lines of BQL oriented code to a DSL firmware?<br>
&gt;&gt;<br>
&gt;<br>
&gt; Free has been using SFQ since 2005 (if I remember well).<br>
&gt; They announced the wide deployment of SFQ in the <a href=3D"http://fre=
e.fr" rel=3D"noreferrer" target=3D"_blank">free.fr</a> newsgroup.<br>
&gt; Wi-Fi in the <a href=3D"http://free.fr" rel=3D"noreferrer" target=3D"_=
blank">free.fr</a> router was not as good though.<br>
<br>
They&#39;re working on it. :)<br>
<br>
&gt; In Paris there is a lot of GPON now that is replacing DSL. But there i=
s<br>
&gt; a nation-wide effort funded by local administrations to get fiber<br>
&gt; everywhere. There are small towns in the countryside with fiber.<br>
&gt; Public money has made, and is making that possible.<br>
&gt; There is still a little of Euro-DOCSIS, but frankly compared to fiber<=
br>
&gt; it has no chance to survive.<br>
<br>
I am very, very happy for y&#39;all. Fiber has always been the sanest<br>
thing. Is there<br>
a SPF+ gpon card yet I can plug into a convention open source router yet?<b=
r>
<br>
&gt;<br>
&gt; I currently have 2Gbps/600Mbps access with <a href=3D"http://orange.fr=
" rel=3D"noreferrer" target=3D"_blank">orange.fr</a> and <a href=3D"http://=
free.fr" rel=3D"noreferrer" target=3D"_blank">free.fr</a> has a subscriptio=
n<br>
&gt; at 10Gbps GPON. I won&#39;t tell you the price because you may feel de=
pressed<br>
&gt; compared to other countries where prices are much higher.<br>
<br>
I&#39;d emigrate!!!<br>
<br>
&gt; The challenge becomes to keep up with these link rates in software<br>
&gt; as there is a lot of hardware offloading.<br></blockquote><div><br></d=
iv><div><br></div><div><div class=3D"gmail_default" style=3D"font-family:mo=
nospace">I just meant that these routers tend=C2=A0to use HW offloading=C2=
=A0</div><div class=3D"gmail_default" style=3D"font-family:monospace">and k=
ernel qdiscs may be bypassed.</div></div><div><br></div><div>=C2=A0</div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">
<br>
At this point, I kind of buy the stanford sqrt(bdp) argument. All you<br>
really need for gigE+ fiber access to work well<br>
for most modern traffic is a fairly short fifo (say, 20ms). Any form<br>
of FQ would help but be hardly noticible. I think<br>
there needs to be work on the hop between the internet and the subscriber..=
.<br>
<br>
Web traffic is dominated by RTT above 40mbit (presently).<br>
streaming video traffic - is no more than 20Mbit, and your occasional<br>
big download is a dozen big streams that would<br>
bounce off a short fifo well.<br>
gbit access to the home is (admittedly glorious, wonderful!) overkill<br>
for all present forms of traffic.<br>
<br>
I&#39;m pretty sure if I had gig fiber I could come up with a way to use<br=
>
it up (exiting the cloud entirely comes to mind), but<br>
lacking new applications that demand that much bandwidth...<br>
<br>
I of course, would like to see lola ( <a href=3D"https://lola.conts.it/" re=
l=3D"noreferrer" target=3D"_blank">https://lola.conts.it/</a> ) finally<br>
work, and videoconferencing and game stream with high rates and faster<br>
(even raw) encoding also has potential to reduce e2e latencies<br>
enormously at that layer.<br>
<br>
&gt;<br>
&gt; As soon as 802.11ax becomes the norm, software scheduling will become<=
br>
&gt; a challenge.<br>
<br>
Do you mean in fiber or wireless? wireless is really problematic at ANY spe=
ed.<br></blockquote><div><br></div><div><div class=3D"gmail_default" style=
=3D"font-family:monospace">I meant that software scheduling becomes a chall=
enge for the same</div><div class=3D"gmail_default" style=3D"font-family:mo=
nospace">reason as above. Increase in total throughput of the box</div><div=
 class=3D"gmail_default" style=3D"font-family:monospace">will call for hard=
ware offloading and kernel qdisc may be bypassed.</div><div class=3D"gmail_=
default" style=3D"font-family:monospace"><br></div><div class=3D"gmail_defa=
ult" style=3D"font-family:monospace">It is not a challenge per se, it is a =
challenge because traffic</div><div class=3D"gmail_default" style=3D"font-f=
amily:monospace">may not be managed by the kernel.</div><br></div><div><br>=
</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
at gfiber, the buffering moved to the wifi, and there are other<br>
problems that really impact achievable bandwidth. When I was last in<br>
paris, I could &quot;hear&quot; 300+ access points from my apt, and could o=
nly<br>
get 100-200kbit per second out of the wireless n ap I had, unless I<br>
cheated and stuck my traffic in the VI queue. A friend of mine there,<br>
couldn&#39;t even get wifi across the room! Beacons ate into a lot of the<b=
r>
available<br>
bandwidth. Since 5ghz (and soon 6ghz - is 6E a thing in france) is<br>
shorter range I&#39;m hoping that&#39;s got better, but with<br>
802.11ac and ax peeing on half the wifi spectrum by default, I imagine<br>
achievable rates in high density locations with many APs will be very<br>
low... and very jittery... and thus still require good ATF, fq, and<br>
aqm technologies.<br>
<br>
I have high hopes for OFDMA and DU but thus far haven&#39;t found an AP<br>
doing it. I&#39;m not sure what to do about the beaconing problem except<br=
>
offer a free tradein to all my neighbors still emitting G style<br>
frames....<br>
<br>
And in looking over some preliminary code for the mt76 ax chip, I<br>
worry about both bad design of the firmware, and<br>
insufficient resources on-chip to manage well.<br>
<br>
How is the 5G rollout going in france?<br></blockquote><div><br></div><div>=
<div class=3D"gmail_default" style=3D"font-family:monospace">Good question.=
 I&#39;ve just seen a speed test at Gbps on a phone</div><div class=3D"gmai=
l_default" style=3D"font-family:monospace">which can drain your battery in =
less than 5 minutes. Amazing tech!</div><br></div><div>=C2=A0</div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">
<br>
I recently learned that much of japan is... wait for it... wimax.<br>
<br>
&gt;<br>
&gt; Luca<br>
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
</blockquote></div></div>

--0000000000000ab5b205a3e2c88d--

--===============8662824120111991255==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8662824120111991255==--

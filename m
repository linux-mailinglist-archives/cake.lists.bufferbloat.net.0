Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CC71B5B68
	for <lists+cake@lfdr.de>; Thu, 23 Apr 2020 14:29:45 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id CF6FF3CB38;
	Thu, 23 Apr 2020 08:29:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1587644983;
	bh=ZjDjQBn5wV1an3pWAsWCYP0uTDI3cz1IuFN+Kd3NyoY=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TBNBGoy4OiJsPfXERflk3kjJv+LQmQSiamSWcHbnuGsFK8B9QFbynuPaDK1P82GDt
	 RSNjM8bL7f6VnGqgr6azz1/gvdqNE2SRTED3SeK8TEd/81tzslbO1UltlogqGk6ob2
	 DTurfAHy4dDJUpDSp4XKe2kqG+HSjgDKWU38iUlrS6jrKuGHuc7BYsg6ptfk2uBxdg
	 +pzAVmEpzLehBiA+xfh0JlcdJgafSiXkWbHfMPci1jtJYHAk8pd42QBoAsyrf68G8D
	 7mdpLF7u3RoUCAvJSn2bYgMxFAiTZEk3Luu56+UW4G6llOqAR7pyM2Kzq4w7CTcps8
	 iKkn7xn3FtNAA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id DA3E83B2A4
 for <cake@lists.bufferbloat.net>; Thu, 23 Apr 2020 08:29:42 -0400 (EDT)
Received: by mail-wr1-x434.google.com with SMTP id d15so5018785wrx.3
 for <cake@lists.bufferbloat.net>; Thu, 23 Apr 2020 05:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ieee.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SjDJb0fRFaDr2ISbiczQj6zGNESxolz4ZZOv9jlgncE=;
 b=UdOTqUdzz4Ht5FRa3SO83COIJn8sY3sSZw0h3qs1FGOdUmRDgD3nwljWnBO6RnJFlS
 5UOLOi8zZc4dgI2tSCr5YExA4jbJCC2fcjsN9p6E8DJcqeB+wszcIB0FJxgWBd56zsox
 OHbmDz4D007H4NadUASrT5/42YFkKX8I2d5s8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SjDJb0fRFaDr2ISbiczQj6zGNESxolz4ZZOv9jlgncE=;
 b=JFetZW2GGq1WOV1V9sTdkzSHwY2Hqdv5EQukS/DxUZ0hYTfhSh47vkzVWDmXSG6lGg
 hjLkjruXHxa8VHEz6TttWw2+/AdooTT52DsfvLBZlt0Q/221igjH1AQuKx1PD9bseW/x
 WAhT1DArRdvDbOK4ZUvjmBhwL6TNL0XFUH/g9au0QgcspvV6Ckh5Bg8JcJEALSNEAM2n
 6oaInKIke7dlD7KtXAX0xBpddB9yotQQtkKdhH6EXwlU8+Z5WfBvYs5vnzaTbw/buzK/
 OAanVuuFtT6xq52z8lf3NWBlUbw4UAukkCLzQxEG7qsuy3OCqIfVCISemsYSeY1FPLce
 T1pw==
X-Gm-Message-State: AGi0PubR4V+jW0KADMxm/9N3UDLrlSp9lfPzhNWVFYVeG1sJlqrDIIkF
 OHY3kFdCCUmpedrp99qnlxzqh1ZujRR+nZDD7Uotiw==
X-Google-Smtp-Source: APiQypLfVZu3NiL3n3mW529lXREQH57Oly1MZNKKPRvT02yhRyaJE6mQPvJQGkijg7tMzbi0HmRYO+3ph6IGe9lLKoQ=
X-Received: by 2002:adf:db0a:: with SMTP id s10mr4717109wri.361.1587644981925; 
 Thu, 23 Apr 2020 05:29:41 -0700 (PDT)
MIME-Version: 1.0
References: <d3f45591-7359-47a6-bd0b-f89f9b49c5a7@www.fastmail.com>
 <75FEC2D9-BFC8-4FA2-A972-D11A823C5528@gmail.com>
 <CAA93jw7kfSjuQP2j8uX5-+hs2PBLNZ6c0=tV=PjZE50fQ1oFLw@mail.gmail.com>
 <AAAE0AE6-BA8C-4236-A68D-C5A4CF7DFEDA@slashdirt.org>
 <603DFF79-D0C0-41BD-A2FB-E40B95A9CBB0@gmail.com>
 <CAA93jw5yvybv+aXH4NLd1r_8xSP2CPwzeh0q6wm1c26jLPBxag@mail.gmail.com>
 <CAH8sseTdDfswOYpYvaDFm_jsaMCpsT9Ebj2ZvkKwaqyyjZiWHA@mail.gmail.com>
 <CAA93jw54L6-mUU9oTgZVFHh5kY7HHGVQjZJZfUMw7Kuq+S9-8w@mail.gmail.com>
 <20200423092909.GC28541@sakura> <87o8ri76u2.fsf@toke.dk>
In-Reply-To: <87o8ri76u2.fsf@toke.dk>
From: Luca Muscariello <muscariello@ieee.org>
Date: Thu, 23 Apr 2020 14:29:30 +0200
Message-ID: <CAH8sseTQgZ62HEsqxkC1hFOnBXm64sFe=gwTvdOmn-fmqP-Ehg@mail.gmail.com>
To: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>
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
Content-Type: multipart/mixed; boundary="===============6496234458267431137=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============6496234458267431137==
Content-Type: multipart/alternative; boundary="0000000000002d879605a3f467b2"

--0000000000002d879605a3f467b2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 23, 2020 at 1:57 PM Toke H=C3=B8iland-J=C3=B8rgensen <toke@redh=
at.com>
wrote:

> Maxime Bizon <mbizon@freebox.fr> writes:
>
> > On Wednesday 22 Apr 2020 =C3=A0 07:48:43 (-0700), Dave Taht wrote:
> >
> > Hello,
> >
> >> > Free has been using SFQ since 2005 (if I remember well).
> >> > They announced the wide deployment of SFQ in the free.fr newsgroup.
> >> > Wi-Fi in the free.fr router was not as good though.
> >>
> >> They're working on it. :)
> >
> > yes indeed.
> >
> > Switching to softmac approach, so now mac80211 will do rate control
> > and scheduling (using wake_tx_queue model).
> >
> > for 5ghz, we use ath10k
>
> That is awesome! Please make sure you include the AQL patch for ath10k,
> it really works wonders, as Dave demonstrated:
>
>
> https://lists.bufferbloat.net/pipermail/make-wifi-fast/2020-March/002721.=
html
>
> >> I am very, very happy for y'all. Fiber has always been the sanest
> >> thing. Is there a SPF+ gpon card yet I can plug into a convention
> >> open source router yet?
> >
> > FYI Free.fr uses 10G-EPON, not GPON.
> >
> > Also most deployments are using an additionnal terminal equipement at
> > called "ONT" or "ONU" that handle the PON part and exposes an ethernet
> > port where the operator CPE is plugged. So we are back to the early
> > days of DSL, where the hardest part (scheduling) is done inside a
> > black box. That makes it easier to replace the operator CPE with your
> > own standard ethernet router though.
> >
> > At least SOCs with integrated PON (supporting all flavours
> > GPON/EPON/..)  are starting to be deployed. Nothing available in
> > opensource.
> >
> > Also note that it's not just kernel drivers, you also need some higher
> > OAM stack to make that work, and there are a lot of existing
> > standards, DPOE (EPON), OMCI (GPON)... all with interop challenges.
>
> It always bugged me that there was no open source support for these
> esoteric protocols and standards. It would seem like an obvious place to
> pool resources, but I guess proprietary vendors are going to keep doing
> their thing :/
>
> >> > The challenge becomes to keep up with these link rates in software
> >> > as there is a lot of hardware offloading.
> >
> > Yes that's our pain point, because that's what the SOCs vendors
> > deliver and you need to use that because there is no alternative.
> >
> > It's not entierely the SOCs vendors fault though.
> >
> > 15 years ago, your average SOC's CPU would be something like 200Mhz
> > MIPS, Linux standard forwarding path (softirq =3D> routing+netfilter =
=3D>
> > qdisc) was too slow for this, too much cache footprint/overhead. So
> > every vendor started building alternatives forwarding path in their
> > hardware and never looked back.
> >
> > Nowdays, the baseline SOC CPU would be ARM Cortex A53@~1Ghz, which
> > with a non crappy network driver and internal fabric should do be able
> > to route 1Gbit/s with out-of-the-box kernel forwarding.
> >
> > But that's too late. SOC vendors compete against each others, and the
> > big telcos need a way to tell which SOC is better to make a buying
> > decision. So synthetic benchmarks have become the norm, and since
> > everybody was able to do fill their pipe with 1500 bytes packets,
> > benchmarks have moved to unrealistic 64 bytes packets (so called
> > wirespeed)
>

Yes, I'm not working anymore on these kinds of platforms
but I do remember the pain.
Hardware offloading may also have unexpected behaviours
for stateful offloads. A flow starts in a slow path and
then it moves to the fast path in hardware.
Out of order at this stage can be nasty for a TCP connection.
Worse a packet loss.



> >
> > If you don't have hardware acceleration for forwarding, you don't
> > exist in those benchmarks and will not sell your chipset. Also they
> > invested so much in their alternative network stack that it's
> > difficult to stop (huge R&D teams). That being said, they do have a
> > point, when speed go above 1Gbit/s, the kernel becomes the bottleneck.
> >
> > For Free.fr 10Gbit/s offer, we had to develop an alternative
> > (software) forwarding path using polling mode model (DPDK style),
> > otherwise our albeit powerful ARM Cortex A72@2Ghz could not forward
> > more than 2Gbit/s.
>
> We're working on that in kernel land - ever heard of XDP? On big-iron
> servers we have no issues pushing 10s and 100s of Gbps in software
> (well, the latter only given enough cores to throw at the problem :)).
> There's not a lot of embedded platforms support as of yet, but we do
> have some people in the ARM world working on that.
>
> Personally, I do see embedded platforms as an important (future) use
> case for XDP, though, in particular for CPEs. So I would be very
> interested in hearing details about your particular platform, and your
> DPDK solution, so we can think about what it will take to achieve the
> same with XDP. If you're interested in this, please feel free to reach
> out :)
>
> > And going multicore/RSS does not fly when the test case is single
> > stream TCP session, which is what most speedtest application do (ookla
> > only recently added multi-connections test).
>
> Setting aside the fact that those single-stream tests ought to die a
> horrible death, I do wonder if it would be feasible to do a bit of
> 'optimising for the test'? With XDP we do have the ability to steer
> packets between CPUs based on arbitrary criteria, and while it is not as
> efficient as hardware-based RSS it may be enough to achieve line rate
> for a single TCP flow?
>


Toke yes I was implicitly thinking about XDP but I did
not read yet any experience in CPEs using that.

DPDK, netmap and kernel bypass may be an option but
you lose all qdiscs.




>
> -Toke
>
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake
>

--0000000000002d879605a3f467b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:monospace"><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Apr 23, 2020 at 1:57 PM Toke H=C3=B8i=
land-J=C3=B8rgensen &lt;<a href=3D"mailto:toke@redhat.com">toke@redhat.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">M=
axime Bizon &lt;<a href=3D"mailto:mbizon@freebox.fr" target=3D"_blank">mbiz=
on@freebox.fr</a>&gt; writes:<br>
<br>
&gt; On Wednesday 22 Apr 2020 =C3=A0 07:48:43 (-0700), Dave Taht wrote:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt;&gt; &gt; Free has been using SFQ since 2005 (if I remember well).<br>
&gt;&gt; &gt; They announced the wide deployment of SFQ in the <a href=3D"h=
ttp://free.fr" rel=3D"noreferrer" target=3D"_blank">free.fr</a> newsgroup.<=
br>
&gt;&gt; &gt; Wi-Fi in the <a href=3D"http://free.fr" rel=3D"noreferrer" ta=
rget=3D"_blank">free.fr</a> router was not as good though.<br>
&gt;&gt; <br>
&gt;&gt; They&#39;re working on it. :)<br>
&gt;<br>
&gt; yes indeed.<br>
&gt;<br>
&gt; Switching to softmac approach, so now mac80211 will do rate control<br=
>
&gt; and scheduling (using wake_tx_queue model).<br>
&gt;<br>
&gt; for 5ghz, we use ath10k<br>
<br>
That is awesome! Please make sure you include the AQL patch for ath10k,<br>
it really works wonders, as Dave demonstrated:<br>
<br>
<a href=3D"https://lists.bufferbloat.net/pipermail/make-wifi-fast/2020-Marc=
h/002721.html" rel=3D"noreferrer" target=3D"_blank">https://lists.bufferblo=
at.net/pipermail/make-wifi-fast/2020-March/002721.html</a><br>
<br>
&gt;&gt; I am very, very happy for y&#39;all. Fiber has always been the san=
est<br>
&gt;&gt; thing. Is there a SPF+ gpon card yet I can plug into a convention<=
br>
&gt;&gt; open source router yet?<br>
&gt;<br>
&gt; FYI Free.fr uses 10G-EPON, not GPON.<br>
&gt;<br>
&gt; Also most deployments are using an additionnal terminal equipement at<=
br>
&gt; called &quot;ONT&quot; or &quot;ONU&quot; that handle the PON part and=
 exposes an ethernet<br>
&gt; port where the operator CPE is plugged. So we are back to the early<br=
>
&gt; days of DSL, where the hardest part (scheduling) is done inside a<br>
&gt; black box. That makes it easier to replace the operator CPE with your<=
br>
&gt; own standard ethernet router though.<br>
&gt;<br>
&gt; At least SOCs with integrated PON (supporting all flavours<br>
&gt; GPON/EPON/..)=C2=A0 are starting to be deployed. Nothing available in<=
br>
&gt; opensource.<br>
&gt;<br>
&gt; Also note that it&#39;s not just kernel drivers, you also need some hi=
gher<br>
&gt; OAM stack to make that work, and there are a lot of existing<br>
&gt; standards, DPOE (EPON), OMCI (GPON)... all with interop challenges.<br=
>
<br>
It always bugged me that there was no open source support for these<br>
esoteric protocols and standards. It would seem like an obvious place to<br=
>
pool resources, but I guess proprietary vendors are going to keep doing<br>
their thing :/<br>
<br>
&gt;&gt; &gt; The challenge becomes to keep up with these link rates in sof=
tware<br>
&gt;&gt; &gt; as there is a lot of hardware offloading.<br>
&gt;<br>
&gt; Yes that&#39;s our pain point, because that&#39;s what the SOCs vendor=
s<br>
&gt; deliver and you need to use that because there is no alternative.<br>
&gt;<br>
&gt; It&#39;s not entierely the SOCs vendors fault though.<br>
&gt;<br>
&gt; 15 years ago, your average SOC&#39;s CPU would be something like 200Mh=
z<br>
&gt; MIPS, Linux standard forwarding path (softirq =3D&gt; routing+netfilte=
r =3D&gt;<br>
&gt; qdisc) was too slow for this, too much cache footprint/overhead. So<br=
>
&gt; every vendor started building alternatives forwarding path in their<br=
>
&gt; hardware and never looked back.<br>
&gt;<br>
&gt; Nowdays, the baseline SOC CPU would be ARM Cortex A53@~1Ghz, which<br>
&gt; with a non crappy network driver and internal fabric should do be able=
<br>
&gt; to route 1Gbit/s with out-of-the-box kernel forwarding.<br>
&gt;<br>
&gt; But that&#39;s too late. SOC vendors compete against each others, and =
the<br>
&gt; big telcos need a way to tell which SOC is better to make a buying<br>
&gt; decision. So synthetic benchmarks have become the norm, and since<br>
&gt; everybody was able to do fill their pipe with 1500 bytes packets,<br>
&gt; benchmarks have moved to unrealistic 64 bytes packets (so called<br>
&gt; wirespeed)<br></blockquote><div><br></div><div><div class=3D"gmail_def=
ault" style=3D"font-family:monospace">Yes, I&#39;m not working anymore on t=
hese kinds of platforms</div><div class=3D"gmail_default" style=3D"font-fam=
ily:monospace">but I do remember the pain.</div></div><div class=3D"gmail_d=
efault" style=3D"font-family:monospace">Hardware offloading may also have u=
nexpected behaviours</div><div class=3D"gmail_default" style=3D"font-family=
:monospace">for stateful offloads. A flow starts in a slow path and=C2=A0</=
div><div class=3D"gmail_default" style=3D"font-family:monospace">then it mo=
ves to the fast path in hardware.=C2=A0</div><div class=3D"gmail_default" s=
tyle=3D"font-family:monospace">Out of order at this stage can be nasty for =
a TCP connection.</div><div class=3D"gmail_default" style=3D"font-family:mo=
nospace">Worse a packet loss.</div><div class=3D"gmail_default" style=3D"fo=
nt-family:monospace"><br></div><div>=C2=A0</div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">
&gt;<br>
&gt; If you don&#39;t have hardware acceleration for forwarding, you don&#3=
9;t<br>
&gt; exist in those benchmarks and will not sell your chipset. Also they<br=
>
&gt; invested so much in their alternative network stack that it&#39;s<br>
&gt; difficult to stop (huge R&amp;D teams). That being said, they do have =
a<br>
&gt; point, when speed go above 1Gbit/s, the kernel becomes the bottleneck.=
<br>
&gt;<br>
&gt; For Free.fr 10Gbit/s offer, we had to develop an alternative<br>
&gt; (software) forwarding path using polling mode model (DPDK style),<br>
&gt; otherwise our albeit powerful ARM Cortex A72@2Ghz could not forward<br=
>
&gt; more than 2Gbit/s.<br>
<br>
We&#39;re working on that in kernel land - ever heard of XDP? On big-iron<b=
r>
servers we have no issues pushing 10s and 100s of Gbps in software<br>
(well, the latter only given enough cores to throw at the problem :)).<br>
There&#39;s not a lot of embedded platforms support as of yet, but we do<br=
>
have some people in the ARM world working on that.<br>
<br>
Personally, I do see embedded platforms as an important (future) use<br>
case for XDP, though, in particular for CPEs. So I would be very<br>
interested in hearing details about your particular platform, and your<br>
DPDK solution, so we can think about what it will take to achieve the<br>
same with XDP. If you&#39;re interested in this, please feel free to reach<=
br>
out :)<br>
<br>
&gt; And going multicore/RSS does not fly when the test case is single<br>
&gt; stream TCP session, which is what most speedtest application do (ookla=
<br>
&gt; only recently added multi-connections test).<br>
<br>
Setting aside the fact that those single-stream tests ought to die a<br>
horrible death, I do wonder if it would be feasible to do a bit of<br>
&#39;optimising for the test&#39;? With XDP we do have the ability to steer=
<br>
packets between CPUs based on arbitrary criteria, and while it is not as<br=
>
efficient as hardware-based RSS it may be enough to achieve line rate<br>
for a single TCP flow?<br></blockquote><div><br></div><div><div class=3D"gm=
ail_default" style=3D"font-family:monospace"><br></div><div class=3D"gmail_=
default" style=3D"font-family:monospace">Toke yes I was implicitly=C2=A0thi=
nking about XDP but I did=C2=A0</div><div class=3D"gmail_default" style=3D"=
font-family:monospace">not read yet any experience in CPEs using that.</div=
><div class=3D"gmail_default" style=3D"font-family:monospace"><br></div><di=
v class=3D"gmail_default" style=3D"font-family:monospace">DPDK, netmap and =
kernel bypass may be an option but</div></div><div class=3D"gmail_default" =
style=3D"font-family:monospace">you lose all qdiscs.=C2=A0</div><div class=
=3D"gmail_default" style=3D"font-family:monospace"><br></div><div class=3D"=
gmail_default" style=3D"font-family:monospace"><br></div><div>=C2=A0</div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">
<br>
-Toke<br>
<br>
_______________________________________________<br>
Cake mailing list<br>
<a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"_blank">Cake@lists.=
bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"noreferrer" =
target=3D"_blank">https://lists.bufferbloat.net/listinfo/cake</a><br>
</blockquote></div></div>

--0000000000002d879605a3f467b2--

--===============6496234458267431137==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============6496234458267431137==--

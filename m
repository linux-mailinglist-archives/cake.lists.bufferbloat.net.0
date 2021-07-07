Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BDC3BE13F
	for <lists+cake@lfdr.de>; Wed,  7 Jul 2021 04:53:41 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A2FEC3CB69;
	Tue,  6 Jul 2021 22:53:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1625626416;
	bh=OFAOwGvOeaWAXf0NsGAbg+ok4zlekCNGioAEdjaSk1U=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ewT9sYWE6LXdRHbUCHdKkd9AshXl/IV712deOkVhPfLO8+LwaWufWst2jtfZW8a2M
	 AcA8SXlV1+JGU6JGdjaFk6J4GdH/bvSxpf2uUQP1+ZuaVroUD7zOUPlmBXvmo1+F0z
	 GOQae+CSxzmrIB4R/byPNMZ/5NWeEeMsG+cnrTt4VC5tIJXS3lzgVvChHVlUyYDtkV
	 UTaWMwRluyDA19JZDPEVzFW26DX+O6wTHHB5poESSam3okppd/Pu9VOSUWYD3vuC3s
	 ZEszKBX4f4otnOOdw3uWaaRus5U3Bm0NPMibYNmH+gbDBePzaSORBnMckWqE0NAcR4
	 oZkfjl94rpGlw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 163AE3CB46;
 Tue,  6 Jul 2021 22:53:35 -0400 (EDT)
Received: by mail-ej1-x633.google.com with SMTP id c17so821655ejk.13;
 Tue, 06 Jul 2021 19:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I2mzFdAlh0FBIbYxN0n1fRzkkz9Kpz3gd19hjoPuCk0=;
 b=MkiTrLvQa7jjnkOBpDoSwwyXoKrQOGcg5L2PId5zsn3sKIWDcu/NbZoBZE5IdXfVBt
 aarXktgGZyFr81J38EonbcvTe0Hw03NYFaOIaeKt4NqguIE65fbW5yI9yY4+5KZOHmmP
 /thQAJEqCex4cDPeI169v7E3lTilN4E+LY6R9nYuCrrPUkmQ3BSiZC6SuNf+xYV+W4/9
 WIoaKhdsSTGo33AaI/l56YHYveAjJU26mk9bgmOiI8PocZ/4hq4hW7czurpJHVAIAQ4i
 Qi3DgoZniobzl0wo03wEMLbwxb8rxn5br+0003tgSFBh3a4oDDP34SdgaGumvPrb2Qt9
 Dnvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I2mzFdAlh0FBIbYxN0n1fRzkkz9Kpz3gd19hjoPuCk0=;
 b=EZ+Sdie/J6UcUA+X+nsUn7lEYOk/CnrzwH2wy/85h6j2oNUEUXUfyvCqCstVfvCUx2
 nS54AuNZthgVXKqdonaW0oS0Pj4pG/stI01JPqrv+3VvueZVgejZmpkIHkOhaG2lU5S9
 wP5IfQ8NDPDeLYuwmyTfNwUqnR/9sKUTDzDy9PTshNj0ZAtEV2rol4RwXl3PxFU9Ee0z
 U+4iWsNGxlPS91GP/zL+OMonP4EeuqyrVI/Q6iR8JYzxvAYz1ylu6NDhu/5U1evg0Oyg
 wGKHKG+78YBzX1UQ3jfYVFWysJeVCsWJpaF7veqV6a+m8obxZ/IuZLJ2TuIrqLR7u8Ox
 ub7A==
X-Gm-Message-State: AOAM530Ua3j99nXlBzapT6aV8U6kgiN6NXZhfPBw/n3g97rTAW9lx5Dv
 SI8aIx6H8LAF7zorES10+P88dJMed/Lvw+twMEU=
X-Google-Smtp-Source: ABdhPJxKEm+MP8hg4T9o+VEv/lzZZ7FvlA0E8FQaFLqU6N5ICMmwaMuND35aJhHA2MoNmq9C37TO1QT/vkQJM1tPGCw=
X-Received: by 2002:a17:906:1704:: with SMTP id
 c4mr22150996eje.182.1625626413957; 
 Tue, 06 Jul 2021 19:53:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210621210048.628befdb@hermes.local>
 <38CC4C4D-AE42-4629-8472-16BCC0DEAFEA@gmx.de>
 <2dbdf457-5652-6b74-7014-3bf79dde6bc9@gmx.com>
 <CALQXh-OwnqcFBhx+uy9_83eHF3Xh3iAsNkDyFN+TOH_KJBTVvg@mail.gmail.com>
 <CAA93jw4B70qXxKyQ9QorPHsMFzoLtkrxJzyAWHHoicTEepJQOw@mail.gmail.com>
In-Reply-To: <CAA93jw4B70qXxKyQ9QorPHsMFzoLtkrxJzyAWHHoicTEepJQOw@mail.gmail.com>
From: Aaron Wood <woody77@gmail.com>
Date: Tue, 6 Jul 2021 19:53:22 -0700
Message-ID: <CALQXh-PxiLgDRN-8t3EXhz0npXYXmTiU15uNxzT32jgMUHK3Hw@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: Re: [Cake] [Bloat] Really getting 1G out of ISP?
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
 Giuseppe De Luca <dropheaders@gmx.com>, bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============7679210745926935381=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7679210745926935381==
Content-Type: multipart/alternative; boundary="000000000000f1041c05c67fa4d1"

--000000000000f1041c05c67fa4d1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 6, 2021 at 7:26 PM Dave Taht <dave.taht@gmail.com> wrote:

> On Tue, Jul 6, 2021 at 3:32 PM Aaron Wood <woody77@gmail.com> wrote:
> >
> > I'm running an Odyssey from Seeed Studios (celeron J4125 with dual
> i211), and it can handle Cake at 1Gbps on a single core (which it needs t=
o,
> because OpenWRT's i211 support still has multiple receive queues disabled=
).
>
> Not clear if that is shaped or not? Line rate is easy on processors of
> that class or better, but shaped?
>

That's shaped.  I can shape 800+, and the kernel ramps the clock rate up to
2.5GHz as needed, IIRC.  I'm guessing that it might thermally limit at some
point, but I haven't had sustained >500Mbps traffic for long enough to
really exercise that.  Although the covid WFH and has definitely increased
the likelihood that I'm hitting >500Mbps downloads.


> some points:
>
> On inbound shaping especially it it still best to lock network traffic
> to a single core in low end platforms.
>
> Cake itself is not multicore, although the design essentially is. We
> did some work towards trying to make it shape across multiple cores
> and multiple hardware queues. IF the locking contention could be
> minimized (RCU) I felt it possible for a win here, but a bigger win
> would be to eliminate "mirred" from the ingress path entirely.
>

I was going to play around with shaping to lower levels across multiple
cores, as many of the loads I deal with are multi-stream, but I always
worry about the ack path, as the provisioned rates are so asymmetric
(35Mbps up).  I'm using `ack-filter-aggressive` on egress to help.  I've
found that the most aggressive ack filtering seems to hurt throughput.




>
> Even multiple transmit queues remains kind of dicy in linux, and
> actually tend to slow network processing in most cases I've tried at
> gbit line rates. They also add latency, as (1) BQL is MIAD, not AIMD,
> so it stays "stuck" at a "good" level for a long time, AND 2) each hw
> queue gets an additive fifo at this layer, so where, you might need
> only 40k to keep a single hw queue busy, you end up with 160k with 4
> hw queues. This problem is getting worse and worse (64 queues are
> common in newer hardware, 1000s in really new hardware) and a revisit
> to how BQL does things in this case would be useful. Ideally it would
> share state (with a cross core variable and atomic locks) as to how
> much total buffering was actually needed "down there" across all the
> queues, but without trying it, I worry that that would end up costing
> a lot of cpu cycles.
>
> Feel free to experiment with multiple transmit queues locked to other
> cores with the set-affinity bits in /proc/interrupts. I'm sure these
> MUST be useful on some platform, but I think most of the use for
> multiple hw queues is when a locally processing application  is
> getting the data, not when it is being routed.
>
> Ironically, I guess, the shorter your queues the higher likelihood a
> given packet will remain in l2 or even l1 cache.
>

I'm pinning all the queues to cores.  Although I've pinned rx/tx for the
same interface to the same cores, with cores 0-1 doing LAN and 2-3 doing
WAN duties...  I may try matching flow directions per core (rx WAN and tx
LAN on the same core).

One separate reason to set affinity on startup is that the reshuffling that
the kernel tries to do will cause things to stumble as the caches all miss.

The note about BQL is interesting...  Is that actually configurable (I
haven't gone looking, before).

OTOH, I've hit a point where trying to squeeze the most out of it just
doesn't seem necessary.  When I was bench-testing it (with local traffic
generation), I could saturate wire rates in both directions with cake
running, and limiting.  So...  Not much of a worry there.  But it's still
inconsistent on live traffic and with a real internet.  I'm not sure if
that is due to the dynamic frequency scaling, or just congestion at the
head-end, or what.

I was going to start a separate thread, but I've been contemplating what
measurements and stats I can long-term monitor to understand the
intermittent stumbles and hangs that I see.  I'm fairly certain that
they're in the "It can't be DNS....  ::sigh:: It's always DNS...."
category, though.  And if that's the case, I should just log all the
queries and look at the response times.  It seems to be marginally better
with dns-over-https (doing happy-eyeballs-like concurrent requests across
google and cloudflare), but I can't be certain.



> I
> >
> > On Tue, Jun 22, 2021 at 12:44 AM Giuseppe De Luca <dropheaders@gmx.com>
> wrote:
> >>
> >> Also a PC Engines APU4 will do the job
> >> (https://inonius.net/results/?userId=3D17996087f5e8 - this is a
> >> 1gbit/1gbit, with Openwrt/sqm-scripts set to 900/900.  ISP is Sony NUR=
O
> >> in Japan). Will follow this thread to know if some interesting device
> >> popup :)
> >>
> >>
> >> https://inonius.net/results/?userId=3D17996087f5e8
> >>
> >> On 6/22/2021 6:12 AM, Sebastian Moeller wrote:
> >> >
> >> > On 22 June 2021 06:00:48 CEST, Stephen Hemminger <
> stephen@networkplumber.org> wrote:
> >> >> Is there any consumer hardware that can actually keep up and do AQM
> at
> >> >> 1Gbit.
> >> >          Over in the OpenWrt forums the same question pops up
> routinely once per week. The best answer ATM seems to be a combination of=
 a
> raspberry pi4B with a decent USB3 gigabit ethernet dongle, a managed swit=
ch
> and any capable (OpenWrt) AP of the user's liking. With 4 arm A72 cores t=
he
> will traffic shape up to a gigabit as reported by multiple users.
> >> >
> >> >
> >> >> It seems everyone seems obsessed with gamer Wifi 6. But can only do
> >> >> 300Mbit single
> >> >> stream with any kind of QoS.
> >> > IIUC most commercial home routers/APs bet on offload engines to do
> most of the heavy lifting, but as far as I understand only the NSS cores
> have a shaper and fq_codel module....
> >> >
> >> >
> >> >> It doesn't help that all the local ISP's claim 10Mbit upload even
> with
> >> >> 1G download.
> >> >> Is this a head end provisioning problem or related to Docsis 3.0 (o=
r
> >> >> later) modems?
> >> > For DOCSIS the issue seems to be an unfortunate frequency split
> between up and downstream and use of lower efficiency coding schemes .
> >> > Over here the incumbent cable isp provisions  fifty Mbps for upstrea=
m
> and plans to increase that to hundred once the upstream is switched to
> docsis 3.1.
> >> > I believe one issue is that since most of the upstream is required
> for the reverse ACK traffic for the download and hence it can not be
> oversubscribed too much.... but I think we have real docsis experts on th=
e
> list, so I will stop my speculation here...
> >> >
> >> > Regards
> >> >           Sebastian
> >> >
> >> >
> >> >
> >> >
> >> >> _______________________________________________
> >> >> Bloat mailing list
> >> >> Bloat@lists.bufferbloat.net
> >> >> https://lists.bufferbloat.net/listinfo/bloat
> >> _______________________________________________
> >> Bloat mailing list
> >> Bloat@lists.bufferbloat.net
> >> https://lists.bufferbloat.net/listinfo/bloat
> >
> > _______________________________________________
> > Bloat mailing list
> > Bloat@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/bloat
>
>
>
> --
> Latest Podcast:
> https://www.linkedin.com/feed/update/urn:li:activity:6791014284936785920/
>
> Dave T=C3=A4ht CTO, TekLibre, LLC
>

--000000000000f1041c05c67fa4d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 6, 2021 at 7:26 PM Dave T=
aht &lt;<a href=3D"mailto:dave.taht@gmail.com">dave.taht@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rg=
b(204,204,204);padding-left:1ex">On Tue, Jul 6, 2021 at 3:32 PM Aaron Wood =
&lt;<a href=3D"mailto:woody77@gmail.com" target=3D"_blank">woody77@gmail.co=
m</a>&gt; wrote:<br>
&gt;<br>
&gt; I&#39;m running an Odyssey from Seeed Studios (celeron J4125 with dual=
 i211), and it can handle Cake at 1Gbps on a single core (which it needs to=
, because OpenWRT&#39;s i211 support still has multiple receive queues disa=
bled).<br>
<br>
Not clear if that is shaped or not? Line rate is easy on processors of<br>
that class or better, but shaped?<br></blockquote><div><br></div><div>That&=
#39;s shaped.=C2=A0 I can shape 800+, and the kernel ramps the clock rate u=
p to 2.5GHz as needed, IIRC.=C2=A0 I&#39;m guessing that it might thermally=
 limit at some point, but I haven&#39;t had sustained &gt;500Mbps traffic f=
or long enough to really exercise that.=C2=A0 Although the covid WFH and ha=
s definitely increased the likelihood that I&#39;m hitting &gt;500Mbps down=
loads.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-=
left-color:rgb(204,204,204);padding-left:1ex">
some points:<br>
<br>
On inbound shaping especially it it still best to lock network traffic<br>
to a single core in low end platforms.<br>
<br>
Cake itself is not multicore, although the design essentially is. We<br>
did some work towards trying to make it shape across multiple cores<br>
and multiple hardware queues. IF the locking contention could be<br>
minimized (RCU) I felt it possible for a win here, but a bigger win<br>
would be to eliminate &quot;mirred&quot; from the ingress path entirely.<br=
></blockquote><div><br></div><div>I was going to play around with shaping t=
o lower levels across multiple cores, as many of the loads I deal with are =
multi-stream, but I always worry about the ack path, as the provisioned rat=
es are so asymmetric (35Mbps up).=C2=A0 I&#39;m using `ack-filter-aggressiv=
e` on egress to help.=C2=A0 I&#39;ve found that the most aggressive ack fil=
tering seems to hurt throughput.</div><div><br></div><div><br></div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(20=
4,204,204);padding-left:1ex">
<br>
Even multiple transmit queues remains kind of dicy in linux, and<br>
actually tend to slow network processing in most cases I&#39;ve tried at<br=
>
gbit line rates. They also add latency, as (1) BQL is MIAD, not AIMD,<br>
so it stays &quot;stuck&quot; at a &quot;good&quot; level for a long time, =
AND 2) each hw<br>
queue gets an additive fifo at this layer, so where, you might need<br>
only 40k to keep a single hw queue busy, you end up with 160k with 4<br>
hw queues. This problem is getting worse and worse (64 queues are<br>
common in newer hardware, 1000s in really new hardware) and a revisit<br>
to how BQL does things in this case would be useful. Ideally it would<br>
share state (with a cross core variable and atomic locks) as to how<br>
much total buffering was actually needed &quot;down there&quot; across all =
the<br>
queues, but without trying it, I worry that that would end up costing<br>
a lot of cpu cycles.<br>
<br>
Feel free to experiment with multiple transmit queues locked to other<br>
cores with the set-affinity bits in /proc/interrupts. I&#39;m sure these<br=
>
MUST be useful on some platform, but I think most of the use for<br>
multiple hw queues is when a locally processing application=C2=A0 is<br>
getting the data, not when it is being routed.<br>
<br>
Ironically, I guess, the shorter your queues the higher likelihood a<br>
given packet will remain in l2 or even l1 cache.<br></blockquote><div><br><=
/div><div>I&#39;m pinning all the queues to cores.=C2=A0 Although I&#39;ve =
pinned rx/tx for the same interface to the same cores, with cores 0-1 doing=
 LAN and 2-3 doing WAN duties...=C2=A0 I may try matching flow directions p=
er core (rx WAN and tx LAN on the same core). =C2=A0</div><div><br></div><d=
iv>One separate reason to set affinity on startup is that the reshuffling t=
hat the kernel tries to do will cause things to stumble as the caches all m=
iss.</div><div><br></div><div>The note about BQL is interesting...=C2=A0 Is=
 that actually configurable (I haven&#39;t gone looking, before).</div><div=
><br></div><div>OTOH, I&#39;ve hit a point where trying to squeeze the most=
 out of it just doesn&#39;t seem necessary.=C2=A0 When I was bench-testing =
it (with local traffic generation), I could saturate wire rates in both dir=
ections with cake running, and limiting.=C2=A0 So...=C2=A0 Not much of a wo=
rry there.=C2=A0 But it&#39;s still inconsistent on live traffic and with a=
 real internet.=C2=A0 I&#39;m not sure if that is due to the dynamic freque=
ncy scaling, or just congestion at the head-end, or what.</div><div><br></d=
iv><div>I was going to start a separate thread, but I&#39;ve been contempla=
ting what measurements and stats I can long-term monitor to understand the =
intermittent stumbles and hangs that I see.=C2=A0 I&#39;m fairly certain th=
at they&#39;re in the &quot;It can&#39;t be DNS.... =C2=A0::sigh:: It&#39;s=
 always DNS....&quot; category, though.=C2=A0 And if that&#39;s the case, I=
 should just log all the queries and look at the response times.=C2=A0 It s=
eems to be marginally better with dns-over-https (doing happy-eyeballs-like=
 concurrent requests across google and cloudflare), but I can&#39;t be cert=
ain.</div><div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:=
solid;border-left-color:rgb(204,204,204);padding-left:1ex">
I<br>
&gt;<br>
&gt; On Tue, Jun 22, 2021 at 12:44 AM Giuseppe De Luca &lt;<a href=3D"mailt=
o:dropheaders@gmx.com" target=3D"_blank">dropheaders@gmx.com</a>&gt; wrote:=
<br>
&gt;&gt;<br>
&gt;&gt; Also a PC Engines APU4 will do the job<br>
&gt;&gt; (<a href=3D"https://inonius.net/results/?userId=3D17996087f5e8" re=
l=3D"noreferrer" target=3D"_blank">https://inonius.net/results/?userId=3D17=
996087f5e8</a> - this is a<br>
&gt;&gt; 1gbit/1gbit, with Openwrt/sqm-scripts set to 900/900.=C2=A0 ISP is=
 Sony NURO<br>
&gt;&gt; in Japan). Will follow this thread to know if some interesting dev=
ice<br>
&gt;&gt; popup :)<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://inonius.net/results/?userId=3D17996087f5e8" rel=
=3D"noreferrer" target=3D"_blank">https://inonius.net/results/?userId=3D179=
96087f5e8</a><br>
&gt;&gt;<br>
&gt;&gt; On 6/22/2021 6:12 AM, Sebastian Moeller wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On 22 June 2021 06:00:48 CEST, Stephen Hemminger &lt;<a href=
=3D"mailto:stephen@networkplumber.org" target=3D"_blank">stephen@networkplu=
mber.org</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; Is there any consumer hardware that can actually keep up =
and do AQM at<br>
&gt;&gt; &gt;&gt; 1Gbit.<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Over in the OpenWrt forums =
the same question pops up routinely once per week. The best answer ATM seem=
s to be a combination of a raspberry pi4B with a decent USB3 gigabit ethern=
et dongle, a managed switch and any capable (OpenWrt) AP of the user&#39;s =
liking. With 4 arm A72 cores the will traffic shape up to a gigabit as repo=
rted by multiple users.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; It seems everyone seems obsessed with gamer Wifi 6. But c=
an only do<br>
&gt;&gt; &gt;&gt; 300Mbit single<br>
&gt;&gt; &gt;&gt; stream with any kind of QoS.<br>
&gt;&gt; &gt; IIUC most commercial home routers/APs bet on offload engines =
to do most of the heavy lifting, but as far as I understand only the NSS co=
res have a shaper and fq_codel module....<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; It doesn&#39;t help that all the local ISP&#39;s claim 10=
Mbit upload even with<br>
&gt;&gt; &gt;&gt; 1G download.<br>
&gt;&gt; &gt;&gt; Is this a head end provisioning problem or related to Doc=
sis 3.0 (or<br>
&gt;&gt; &gt;&gt; later) modems?<br>
&gt;&gt; &gt; For DOCSIS the issue seems to be an unfortunate frequency spl=
it between up and downstream and use of lower efficiency coding schemes .<b=
r>
&gt;&gt; &gt; Over here the incumbent cable isp provisions=C2=A0 fifty Mbps=
 for upstream and plans to increase that to hundred once the upstream is sw=
itched to docsis 3.1.<br>
&gt;&gt; &gt; I believe one issue is that since most of the upstream is req=
uired for the reverse ACK traffic for the download and hence it can not be =
oversubscribed too much.... but I think we have real docsis experts on the =
list, so I will stop my speculation here...<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Regards<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Sebastian<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; _______________________________________________<br>
&gt;&gt; &gt;&gt; Bloat mailing list<br>
&gt;&gt; &gt;&gt; <a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"=
_blank">Bloat@lists.bufferbloat.net</a><br>
&gt;&gt; &gt;&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/bloat" =
rel=3D"noreferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo=
/bloat</a><br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; Bloat mailing list<br>
&gt;&gt; <a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">B=
loat@lists.bufferbloat.net</a><br>
&gt;&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"no=
referrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a=
><br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; Bloat mailing list<br>
&gt; <a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">Bloat=
@lists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"norefe=
rrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a><br=
>
<br>
<br>
<br>
-- <br>
Latest Podcast:<br>
<a href=3D"https://www.linkedin.com/feed/update/urn:li:activity:67910142849=
36785920/" rel=3D"noreferrer" target=3D"_blank">https://www.linkedin.com/fe=
ed/update/urn:li:activity:6791014284936785920/</a><br>
<br>
Dave T=C3=A4ht CTO, TekLibre, LLC<br>
</blockquote></div></div>

--000000000000f1041c05c67fa4d1--

--===============7679210745926935381==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7679210745926935381==--

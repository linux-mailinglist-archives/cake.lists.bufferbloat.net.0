Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FBC2DEC1C
	for <lists+cake@lfdr.de>; Sat, 19 Dec 2020 00:49:02 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 84B383CB38;
	Fri, 18 Dec 2020 18:49:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1608335340;
	bh=Fi00b11vh11YXOgc0reXN1ios+24z90/39j07hAFkXg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VPXXhtL1UZsZdxZqoWxZMRsC/+FVD7BqHoAYL5i1z9VlxrSGreJ3sP+vWcioRMhsx
	 TyDPWjIZ4rYIKUI3Xw6BT8uK1pqDOsJlJyYH1r7fGTrK2+xjzwp98pjjD+N+9gVRIN
	 99PsQ25OkZX7erkJC3OrEotM5PfrSqP2Jvp8znQCwkeY5Xc1rn3r8PNFlimxVNTXJn
	 m+ESgbeY6q0vgA+1gcchJ3hjfrCdbEbmAVec8VQpZxDD743biR13U15ADONWBdyBRy
	 hS6OMQync3RU6Vu4/QEB/LA298Gay3exAQ7uDw14XNRRCV/heXJ/0TxA3czZhvaJHP
	 OWJuWVABfFeuQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 39C893B29E;
 Fri, 18 Dec 2020 18:48:59 -0500 (EST)
Received: by mail-ej1-x634.google.com with SMTP id ce23so5608135ejb.8;
 Fri, 18 Dec 2020 15:48:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VfdbQRhV+bjtFMOvPnD9oTdudDGoSEU2+d8Fq2jQktE=;
 b=XCf/KIAR1aaaKTPcYOvQbeCDG6TRYbWAoYLVFrlxz65BOvF6Vo/LIk5PiZEkT9B8kP
 YKZWvi/HIgOmaGw3pwv1KX0d7v1VGXSqJw6BHeYxOrFShOJF84hDRGwDFU0ppLPWBFxS
 aMSwFNBweYaKHhdLfagWVfW1a2biU1Fh5W7OYbv5Q9jFv0K8BeWknmNp/+bZrL+JarYT
 MfZ9jKhlW9BXOM2hSsS70/+bG73UHw96ZfhWlhLBkvDC1P4JWUm3qgncQVkacYEWx92a
 zp3Ow/3sbAtLrooilC2z7AhmHC9ED+/zAM/iiYuQ8V+C9DR2QZPDXKQq33vsOrNRJY7y
 mJlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VfdbQRhV+bjtFMOvPnD9oTdudDGoSEU2+d8Fq2jQktE=;
 b=aysXsxNdFfPcv4DbbWRaGQt+u57rmIz/o3KQ2tlPfEjJoxPXwGUFT+VeK+8rHftHy3
 0yhHg2Mbqrm+0pkZLRjwHVQphMxoQ+HvXbi0PqfB+rVNWT2tq35AnuOyLMYm8v2lYpy7
 5HwGfFUYQJRiPYfTKT+far/wnabzBVq54oJPA9WgqtMUxVZTmezKhA7e5qodNpqewxd3
 UXGaQ5oz1gZu/wrTjyUpIAEaYTdL5bkBp76mfbDco0pFi71/aZAvskSAU/oDbo2dr1Tj
 aH0KdCUTPxuNTp3WMBxVRuS2+C42dIMtpvBBB5oL85zPPzn7TygcqrZ5Qy7ixHZ/ZVcF
 wRkg==
X-Gm-Message-State: AOAM533zfN9JHNSG6KoaUFV+tihXQ3xfCMtklj9p9DDWChN71ZbUqOyf
 ynkye4zFUnf2z5U1dneVLwch4Idad1FzlJwy+ro=
X-Google-Smtp-Source: ABdhPJyYZh2cjUOU/DPaQ3hq2+3FH2ebr3NfsZh9TXs375hdTucdJmc/AWM2YCyL3n9pjY1gcMyZPi32X9RT8uUFgQg=
X-Received: by 2002:a17:906:1393:: with SMTP id
 f19mr6214406ejc.431.1608335338034; 
 Fri, 18 Dec 2020 15:48:58 -0800 (PST)
MIME-Version: 1.0
References: <CALQXh-P1JGWHXQYnRd68woqj-C8CLxaxeD5=4xjYLYiLubkSeQ@mail.gmail.com>
 <1586011622.632930657@apps.rackspace.com>
 <CAA93jw7CDCVfY0pspLbSaSqf2_0s_23oXsGfEy1x_MHQKEkUNQ@mail.gmail.com>
 <CALQXh-Ot+ZE8M9num31K173pWF5SqDMFizjgUcP13ZCw06KhXw@mail.gmail.com>
 <CAA93jw4WfYCVrG9uGA7BTQr2kKrKXBYJ9xfWM4VRicUDiuqaCw@mail.gmail.com>
In-Reply-To: <CAA93jw4WfYCVrG9uGA7BTQr2kKrKXBYJ9xfWM4VRicUDiuqaCw@mail.gmail.com>
From: Aaron Wood <woody77@gmail.com>
Date: Fri, 18 Dec 2020 15:48:46 -0800
Message-ID: <CALQXh-MS2hXALFDdFhD=c=7mSp9b4t0GQJANgFgLfkPgBocVmw@mail.gmail.com>
To: Dave Taht <dave.taht@gmail.com>
Subject: Re: [Cake] [Bloat]  New board that looks interesting
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
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============7038445078560991578=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7038445078560991578==
Content-Type: multipart/alternative; boundary="00000000000080dbf505b6c5c05e"

--00000000000080dbf505b6c5c05e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have, finally.  It's been running for a week or so, now.

OpenWRT was an _adventure_.  The board is UEFI, not standard bios.  And
while it will merrily boot OpenWRT's non-uefi images off of USB, it won't
boot the non-UEFI setup from the internal storage (I'm using the eMMC).  So
_that_ was fun (and I made some dumb mistakes that were especially fun to
correct.

But it's running OpenWRT 19.07 (and a UEFI bootloader before grub that's
from ToT OpenWRT).

Anyway, I have cake running, 950Mbps ingress and 35Mbps egress (modem is
provisioned at 1.3G ingress, and a bit over 35Mbps egress).  fq_codel was
defaulted, in multi-queue mode.  While I'm using cake on ingress, my local
link hasn't been hitting the limiter very often:

                Tin 0
  thresh        950Mbit
  target          1.5ms
  interval       30.0ms
  pk_delay         22us
  av_delay          9us
  sp_delay          2us
  backlog            0b
  pkts        243608193
  bytes    250748364896
  way_inds     13167720
  way_miss      1245030
  way_cols            0
  drops            1075
  marks             101
  ack_drop            0
  sp_flows            0
  bk_flows            1
  un_flows            0
  max_len         69876
  quantum          1514

Given that most of the hosts that I interact with are only about 10-15ms
away, I'm probably going to change the interval target to better match that=
.

Interestingly, while it has a pair of multiqueue NICs (i211s), the igbe
driver isn't configuring them for RSS.  Both output queues are being used,
but not the ingress queues:

wan interface:
     tx_queue_0_packets: 56635989
     tx_queue_1_packets: 39777210
     rx_queue_0_packets: 243646072
     rx_queue_1_packets: 0

lan interface:
     tx_queue_0_packets: 85047897
     tx_queue_1_packets: 162004500
     rx_queue_0_packets: 111174855
     rx_queue_1_packets: 0

Since I have housemates that don't appreciate me messing with the network
during their meetings, I haven't gotten around to poking more deeply at
that (or at experimenting with running cake on two ingress queues).

That being said, I bench-tested this before I put it into operation and was
able to see 940Mbps of iperf goodput through cake and NAT...  Took all of a
core, though (and that core was still cold and therefore potentially able
to boost to 2.5GHz).  I haven't determined how long it will take to
thermally throttle, and if bandwidth suffers as a result.

Pretty happy with it so far, though.

On Sun, Apr 26, 2020 at 7:46 PM Dave Taht <dave.taht@gmail.com> wrote:

> anyone got around to hacking on this board yet?
>
> On Sat, Apr 4, 2020 at 9:27 AM Aaron Wood <woody77@gmail.com> wrote:
> >
> > The comparison of chipset performance link (to OpemWRT forums) that wen=
t
> out had this chip, the J4105 as the fastest.  Able to do a gigabit with
> cake (nearly able to do it in both directions).
> >
> > I think this has replaced the apu2 as the board I=E2=80=99m going with =
as my
> edge router.
> >
> > On Sat, Apr 4, 2020 at 9:10 AM Dave Taht <dave.taht@gmail.com> wrote:
> >>
> >> Historically I've found the "Celeron" chips rather weak, but it's just
> >> a brand. I haven't the foggiest idea how well this variant will
> >> perform.
> >>
> >> The intel ethernet chips are best of breed in linux, however. It's
> >> been my hope that the 211 variant with the timed networking support
> >> would show up in the field (sch_etx) so we could fiddle with that,
> >> (the apu2s aren't using that version) but I cannot for the life of me
> >> remember the right keywords to look it up at the moment. this feature
> >> lets you program when a packet emerges from the driver and is sort of
> >> a whole new ballgame when it comes to scheduling - there hasn't been
> >> an aqm designed for it, and you can do fq by playing tricks with the
> >> sent timestamp.
> >>
> >> All the other features look rather nice on this board.
> >>
> >> On Sat, Apr 4, 2020 at 7:47 AM David P. Reed <dpreed@deepplum.com>
> wrote:
> >> >
> >> > Thanks! I ordered one just now. In my experience, this company does
> rather neat stuff. Their XMOS based microphone array (ReSpeaker) is reall=
y
> useful. What's the state of play in Linux/OpenWRT for Intel 9560
> capabilities regarding AQM?
> >> >
> >> > On Saturday, April 4, 2020 12:12am, "Aaron Wood" <woody77@gmail.com>
> said:
> >> >
> >> > > _______________________________________________
> >> > > Cake mailing list
> >> > > Cake@lists.bufferbloat.net
> >> > > https://lists.bufferbloat.net/listinfo/cake
> >> > > https://www.seeedstudio.com/ODYSSEY-X86J4105800-p-4445.html
> >> > >
> >> > > quad-core Celeron J4105 1.5-2.5 GHz x64
> >> > > 8GB Ram
> >> > > 2x i211t intel ethernet controllers
> >> > > intel 9560 802.11ac (wave2) wifi/bluetooth chipset
> >> > > intel built-in graphics
> >> > > onboard ARM Cortex-M0 and RPi & Arduino headers
> >> > > m.2 and PCIe adapters
> >> > > <$200
> >> > >
> >> >
> >> >
> >> > _______________________________________________
> >> > Bloat mailing list
> >> > Bloat@lists.bufferbloat.net
> >> > https://lists.bufferbloat.net/listinfo/bloat
> >>
> >>
> >>
> >> --
> >> Make Music, Not War
> >>
> >> Dave T=C3=A4ht
> >> CTO, TekLibre, LLC
> >> http://www.teklibre.com
> >> Tel: 1-831-435-0729
> >
> > --
> > - Sent from my iPhone.
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

--00000000000080dbf505b6c5c05e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">I have,=
 finally.=C2=A0 It&#39;s been running for a week or so, now.<div><br></div>=
<div>OpenWRT was an _adventure_.=C2=A0 The board is UEFI, not standard bios=
.=C2=A0 And while it will merrily boot OpenWRT&#39;s=C2=A0non-uefi images o=
ff of USB, it won&#39;t boot the non-UEFI setup from the internal storage (=
I&#39;m using the eMMC).=C2=A0 So _that_ was fun (and I made some dumb mist=
akes that were especially fun to correct.</div><div><br></div><div>But it&#=
39;s running OpenWRT 19.07 (and a UEFI bootloader before grub that&#39;s fr=
om ToT OpenWRT).</div><div><br></div><div>Anyway, I have cake running, 950M=
bps ingress and 35Mbps egress (modem is provisioned at 1.3G ingress, and a =
bit over 35Mbps egress). =C2=A0fq_codel was defaulted, in multi-queue mode.=
=C2=A0 While I&#39;m using cake on ingress, my local link hasn&#39;t been h=
itting the limiter very often:</div><div><br></div><div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Tin 0</div><div>=C2=A0 thresh =C2=
=A0 =C2=A0 =C2=A0 =C2=A0950Mbit</div><div>=C2=A0 target =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A01.5ms</div><div>=C2=A0 interval =C2=A0 =C2=A0 =C2=A0 30.0m=
s</div><div>=C2=A0 pk_delay =C2=A0 =C2=A0 =C2=A0 =C2=A0 22us</div><div>=C2=
=A0 av_delay =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A09us</div><div>=C2=A0 sp_dela=
y =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A02us</div><div>=C2=A0 backlog =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00b</div><div>=C2=A0 pkts =C2=A0 =C2=A0 =C2=
=A0 =C2=A0243608193</div><div>=C2=A0 bytes =C2=A0 =C2=A0250748364896</div><=
div>=C2=A0 way_inds =C2=A0 =C2=A0 13167720</div><div>=C2=A0 way_miss =C2=A0=
 =C2=A0 =C2=A01245030</div><div>=C2=A0 way_cols =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A00</div><div>=C2=A0 drops =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A01075</div><div>=C2=A0 marks =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 101</div><div>=C2=A0 ack_drop =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00</=
div><div>=C2=A0 sp_flows =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00</div><d=
iv>=C2=A0 bk_flows =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01</div><div>=C2=
=A0 un_flows =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00</div><div>=C2=A0 ma=
x_len =C2=A0 =C2=A0 =C2=A0 =C2=A0 69876</div><div>=C2=A0 quantum =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A01514</div></div><div><br></div><div>Given that most=
 of the hosts that I interact with are only about 10-15ms away, I&#39;m pro=
bably going to change the interval target to better match that.</div><div><=
br></div><div>Interestingly, while it has a pair of multiqueue NICs (i211s)=
, the igbe driver isn&#39;t configuring them for RSS.=C2=A0 Both output que=
ues are being used, but not the ingress queues:</div><div><br></div><div>wa=
n interface:</div><div><div>=C2=A0 =C2=A0 =C2=A0tx_queue_0_packets: 5663598=
9</div><div>=C2=A0 =C2=A0 =C2=A0tx_queue_1_packets: 39777210</div><div>=C2=
=A0 =C2=A0 =C2=A0rx_queue_0_packets: 243646072</div><div>=C2=A0 =C2=A0 =C2=
=A0rx_queue_1_packets: 0</div></div><div><br></div><div>lan interface:</div=
><div><div>=C2=A0 =C2=A0 =C2=A0tx_queue_0_packets: 85047897</div><div>=C2=
=A0 =C2=A0 =C2=A0tx_queue_1_packets: 162004500</div><div>=C2=A0 =C2=A0 =C2=
=A0rx_queue_0_packets: 111174855</div><div>=C2=A0 =C2=A0 =C2=A0rx_queue_1_p=
ackets: 0</div></div><div><br></div><div>Since I have housemates that don&#=
39;t appreciate me messing with the network during their meetings, I haven&=
#39;t gotten around to poking more deeply at that (or at experimenting with=
 running cake on two ingress queues).</div><div><br></div><div>That being s=
aid, I bench-tested this before I put it into operation and was able to see=
 940Mbps of iperf goodput through cake and NAT...=C2=A0 Took all of a core,=
 though (and that core was still cold and therefore potentially able to boo=
st to 2.5GHz).=C2=A0 I haven&#39;t determined how long it will take to ther=
mally throttle, and if bandwidth suffers as a result.</div><div><br></div><=
div>Pretty happy with it so far, though.</div></div></div></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Apr=
 26, 2020 at 7:46 PM Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com">d=
ave.taht@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style=
:solid;border-left-color:rgb(204,204,204);padding-left:1ex">anyone got arou=
nd to hacking on this board yet?<br>
<br>
On Sat, Apr 4, 2020 at 9:27 AM Aaron Wood &lt;<a href=3D"mailto:woody77@gma=
il.com" target=3D"_blank">woody77@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; The comparison of chipset performance link (to OpemWRT forums) that we=
nt out had this chip, the J4105 as the fastest.=C2=A0 Able to do a gigabit =
with cake (nearly able to do it in both directions).<br>
&gt;<br>
&gt; I think this has replaced the apu2 as the board I=E2=80=99m going with=
 as my edge router.<br>
&gt;<br>
&gt; On Sat, Apr 4, 2020 at 9:10 AM Dave Taht &lt;<a href=3D"mailto:dave.ta=
ht@gmail.com" target=3D"_blank">dave.taht@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Historically I&#39;ve found the &quot;Celeron&quot; chips rather w=
eak, but it&#39;s just<br>
&gt;&gt; a brand. I haven&#39;t the foggiest idea how well this variant wil=
l<br>
&gt;&gt; perform.<br>
&gt;&gt;<br>
&gt;&gt; The intel ethernet chips are best of breed in linux, however. It&#=
39;s<br>
&gt;&gt; been my hope that the 211 variant with the timed networking suppor=
t<br>
&gt;&gt; would show up in the field (sch_etx) so we could fiddle with that,=
<br>
&gt;&gt; (the apu2s aren&#39;t using that version) but I cannot for the lif=
e of me<br>
&gt;&gt; remember the right keywords to look it up at the moment. this feat=
ure<br>
&gt;&gt; lets you program when a packet emerges from the driver and is sort=
 of<br>
&gt;&gt; a whole new ballgame when it comes to scheduling - there hasn&#39;=
t been<br>
&gt;&gt; an aqm designed for it, and you can do fq by playing tricks with t=
he<br>
&gt;&gt; sent timestamp.<br>
&gt;&gt;<br>
&gt;&gt; All the other features look rather nice on this board.<br>
&gt;&gt;<br>
&gt;&gt; On Sat, Apr 4, 2020 at 7:47 AM David P. Reed &lt;<a href=3D"mailto=
:dpreed@deepplum.com" target=3D"_blank">dpreed@deepplum.com</a>&gt; wrote:<=
br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thanks! I ordered one just now. In my experience, this compan=
y does rather neat stuff. Their XMOS based microphone array (ReSpeaker) is =
really useful. What&#39;s the state of play in Linux/OpenWRT for Intel 9560=
 capabilities regarding AQM?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Saturday, April 4, 2020 12:12am, &quot;Aaron Wood&quot; &l=
t;<a href=3D"mailto:woody77@gmail.com" target=3D"_blank">woody77@gmail.com<=
/a>&gt; said:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; &gt; Cake mailing list<br>
&gt;&gt; &gt; &gt; <a href=3D"mailto:Cake@lists.bufferbloat.net" target=3D"=
_blank">Cake@lists.bufferbloat.net</a><br>
&gt;&gt; &gt; &gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cake" =
rel=3D"noreferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo=
/cake</a><br>
&gt;&gt; &gt; &gt; <a href=3D"https://www.seeedstudio.com/ODYSSEY-X86J41058=
00-p-4445.html" rel=3D"noreferrer" target=3D"_blank">https://www.seeedstudi=
o.com/ODYSSEY-X86J4105800-p-4445.html</a><br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; quad-core Celeron J4105 1.5-2.5 GHz x64<br>
&gt;&gt; &gt; &gt; 8GB Ram<br>
&gt;&gt; &gt; &gt; 2x i211t intel ethernet controllers<br>
&gt;&gt; &gt; &gt; intel 9560 802.11ac (wave2) wifi/bluetooth chipset<br>
&gt;&gt; &gt; &gt; intel built-in graphics<br>
&gt;&gt; &gt; &gt; onboard ARM Cortex-M0 and RPi &amp; Arduino headers<br>
&gt;&gt; &gt; &gt; m.2 and PCIe adapters<br>
&gt;&gt; &gt; &gt; &lt;$200<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; Bloat mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_bla=
nk">Bloat@lists.bufferbloat.net</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=
=3D"noreferrer" target=3D"_blank">https://lists.bufferbloat.net/listinfo/bl=
oat</a><br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Make Music, Not War<br>
&gt;&gt;<br>
&gt;&gt; Dave T=C3=A4ht<br>
&gt;&gt; CTO, TekLibre, LLC<br>
&gt;&gt; <a href=3D"http://www.teklibre.com" rel=3D"noreferrer" target=3D"_=
blank">http://www.teklibre.com</a><br>
&gt;&gt; Tel: 1-831-435-0729<br>
&gt;<br>
&gt; --<br>
&gt; - Sent from my iPhone.<br>
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
</blockquote></div>

--00000000000080dbf505b6c5c05e--

--===============7038445078560991578==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7038445078560991578==--

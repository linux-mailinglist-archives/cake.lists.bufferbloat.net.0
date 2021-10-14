Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EDD42E417
	for <lists+cake@lfdr.de>; Fri, 15 Oct 2021 00:18:59 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E6B733CB53;
	Thu, 14 Oct 2021 18:18:58 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634249938;
	bh=6E2yXb4ElzxN27VbQS1JQK2i+c1p7PvXfVpInBKr3gg=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HTo5YrxJSHr8WPFlKP2zUssP9iIEIgpV8G3T7k/zytLBX0rnoP2rgWHihTkBgRy4d
	 zrBRfMDyArYYZOj6t8K6P3LO019hxSAozJokZC7vJrChiKmsOxvosr7mnk4wi79uww
	 +Si0KjO+QYWL07yMVoPfsFHnoLBIo4gOlXqaFPKbasd1ayqMA35Uaoy6glGDGVI4ic
	 w8RH5x7iVt4eD+KlWUjR7cQBVdPR2iCKKNN06RmqqSZfVYGauce1eVWWXXjnUXR3jz
	 Nb2KJHqfw6PFxDe5LHPml2dER24K0z3laLWHTkIHa9b2z0JweSOgW/VdON8JfOkRcN
	 NH0kpcNR2Qx/g==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 68B163B29E
 for <cake@lists.bufferbloat.net>; Thu, 14 Oct 2021 18:18:57 -0400 (EDT)
Received: by mail-lf1-x134.google.com with SMTP id r19so32074271lfe.10
 for <cake@lists.bufferbloat.net>; Thu, 14 Oct 2021 15:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lostcreek-tech.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
 bh=LUS7tipQ1ObqLUiQSjGxC7SW7chkKrSRf8B8+o1M33U=;
 b=R3d5gxCaqOwOHCuntCbenSY8HomhA3SEoqaMuMx/e7z06tDo+BD1FdZoN4DXghGzQ4
 A8wSOfBu2qUGSlCn/vXauGRm3jlIeiDzc6cseVxOQPukXAk4uNMsU+CrWeHWZ4E7T5U9
 iN6K+J0WyHONMrhs40dKvdSd2SJAIjWN6D/3ob1WCszB2+jXOQAWcoJ4Sc3A2ISTLZvR
 l0SdcVppbsi5PEQdevUvyIRMu/7LhqKyn5Dow2srtMv2UHqsYyo1H8V7Ofubl37ODmx0
 yoySnkCAxjBt6wOTOSACFE9dV6glO5VamzoUVc3idzu+mntVy0k5bUkquo6Hw/ScLdC7
 Bn+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:cc;
 bh=LUS7tipQ1ObqLUiQSjGxC7SW7chkKrSRf8B8+o1M33U=;
 b=xBkxYWC3333XJztLOHIQ8h0lijlBWz6LJNGnMTbDR9UTyL3EAVSU1f4y2SLjLzL6lx
 p0Wzyp2MB2hUS8gMoU4IHhg6fwx2umJHR27S1nTwZXtDaKoVZkssKytY4Ho6tStFNP5+
 Y0/gkfteek9nfeFo0T3lpuAF2kA58T3nRM0ZrRvx3LoTpO4ZYxRF2mtYMcn7SVAh73EC
 WLWOLSsPoZB5gxXNDW+Mz8Rv4JGv4JM7zr5h7Eynd08b7vdHoAnrVzzWKQd2aNhvXGz6
 EunEfxGT1x/k3whLXh2s7qc/SfGvM8j+me5O63szGm4aet31qtCz63gA4QQAI9keHXp9
 g5qw==
X-Gm-Message-State: AOAM533Y32TAC7cuErCutSB7WhbgGR//+vwPeRrFnIpEIj0S+u9BqBpo
 v9R+0d5sE42NIXNMS2cNm8FjBB/sJkfDpE9opOqzS105LTY=
X-Google-Smtp-Source: ABdhPJw+4Ev8b+T05+Cx4aJpYUtfN6u1JTT4yaJWr9mPciFIKparykxqbuxbMe/XN19GuTJN3uax4bp0tNjTKHioOp4=
X-Received: by 2002:a2e:a585:: with SMTP id m5mr5641369ljp.51.1634249935773;
 Thu, 14 Oct 2021 15:18:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7YkMv-F6cYj2PZ9pGiS1yapO5wpLJWmuje6p0fc54eEA@mail.gmail.com>
 <003001d7bdf0$97282430$c5786c90$@inacomptc.com>
 <CAA93jw5dJ_=5OzPrcQYmFQtKLXJcfb7TWUW-jKMqfxZCpD3cZQ@mail.gmail.com>
 <006001d7c129$2de82f10$89b88d30$@inacomptc.com>
In-Reply-To: <006001d7c129$2de82f10$89b88d30$@inacomptc.com>
From: Thomas Croghan <tcroghan@lostcreek.tech>
Date: Thu, 14 Oct 2021 15:18:44 -0700
Message-ID: <CADmwGqttPcq+iCgyhJTQTspuZdCPopKsRW=bfiDrEo_FEnBT=Q@mail.gmail.com>
Cc: Cake List <cake@lists.bufferbloat.net>
Subject: Re: [Cake] [Bloat] some mikrotik comments
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
Content-Type: multipart/mixed; boundary="===============1340323015788920174=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============1340323015788920174==
Content-Type: multipart/alternative; boundary="000000000000e577c005ce577689"

--000000000000e577c005ce577689
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ya, I've got access to most of their CCR line, and I have a smattering of
their RB line. TBH, the only places I think you will see interesting data
is with the 1072 (72 tile core 1 GHz) and the 2004 (4 core 1.7 GHz ARM64).

I'm also with The Brother's WISP, so if Dave wants to do a cast I can set
that up with the other guys. I'm pretty sure there was some conversation
about trying to get Dave on a while back.


On Thu, Oct 14, 2021, 11:27 AM Jordan Szuch via Cake <
cake@lists.bufferbloat.net> wrote:

> Awesome, thanks! I went and subscribed to that topic so I'll get
> notifications when people reply. Hope to jump in once I'm less busy with =
my
> day to day work.
>
> Regarding more powerful hardware, I think someone replied to the mailing
> list earlier offering to run some tests. Sounded like he might have some
> bigger hardware to test out. Thomas Croghan back on Monday morning it loo=
ks
> like.
>
> Might also be worth reaching out to these guys to do some testing or
> evangelizing at least: https://thebrotherswisp.com/ They run a podcast
> with a rotating cast of network operators, WISPS, etc. And they seem pret=
ty
> clued into the MIkrotik world specifically. I recall that you've jumped
> onto a podcast or two recently so that's why I bring it up.
>
> Anyway, I listen from time to time and one of the hosts brought up being
> very interested in using fq_codel and CAKE in a Multi Dwelling Unit
> scenario (mentioned here after a 3-4 minutes
> https://www.youtube.com/watch?v=3DyFKG_cXGPrE&t=3D4444s). Actually, I thi=
nk
> they even name check you in an earlier episode (found it:
> https://www.youtube.com/watch?v=3DQ1QitymNZTo&t=3D4285s), although one ho=
st
> was a bit skeptical of everything.
>
> -----Original Message-----
> From: Dave Taht <dave.taht@gmail.com>
> Sent: Thursday, October 14, 2021 1:09 PM
> To: Jordan Szuch <jordan@inacomptc.com>
> Cc: Cake List <cake@lists.bufferbloat.net>; bloat <
> bloat@lists.bufferbloat.net>
> Subject: Re: [Bloat] some mikrotik comments
>
> Thx. I put the discussion and plots over here:
>
> https://forum.mikrotik.com/viewtopic.php?t=3D179307
>
> I might - should I feel like expounding more later this week - go back to
> the flent.gz files to discuss other features. Ironically the chromebook I
> have in front of me doesn't want to let me download a file via email and
> make it visible in the real filesystem. I'm vm'd off from myself for some
> reason.
>
> But my big goal, honestly, was to get some mikrotik users to test their
> bigger iron...
>
> On Sun, Oct 10, 2021 at 9:05 AM Jordan Szuch via Bloat <
> bloat@lists.bufferbloat.net> wrote:
> >
> > Hi Dave,
> >
> > Interesting that you should send this out; I recently picked up a unit
> (this one specifically: https://mikrotik.com/product/hap_ac2) to do some
> testing of the v7 firmware. Nothing super high end but enough to do a
> little testing. I have CAKE set to do some shaping and so far seems
> functional. At least the bufferbloat speed tests from DSLReports and
> WaveForm indicate some shaping is happening. If you'd like any informatio=
n
> about the unit, the v7 firmware, or particular tests run then I'd be happ=
y
> to help out.
> >
> > Jordan
> >
> > -----Original Message-----
> > From: Bloat <bloat-bounces@lists.bufferbloat.net> On Behalf Of Dave
> > Taht
> > Sent: Sunday, October 10, 2021 11:39 AM
> > To: Cake List <cake@lists.bufferbloat.net>; bloat
> > <bloat@lists.bufferbloat.net>
> > Subject: [Bloat] some mikrotik comments
> >
> > the v7 beta gained doc and more os support for fq_codel and cake
> > recently
> >
> > https://forum.mikrotik.com/viewtopic.php?p=3D885000#p885000
> >
> > anyone out there actively testing mikrotik?
> >
> > --
> > Fixing Starlink's Latencies:
> > https://www.youtube.com/watch?v=3Dc9gLo6Xrwgw
> >
> > Dave T=C3=A4ht CEO, TekLibre, LLC
> > _______________________________________________
> > Bloat mailing list
> > Bloat@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/bloat
> >
> > _______________________________________________
> > Bloat mailing list
> > Bloat@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/bloat
>
>
>
> --
> Fixing Starlink's Latencies: https://www.youtube.com/watch?v=3Dc9gLo6Xrwg=
w
>
> Dave T=C3=A4ht CEO, TekLibre, LLC
>
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake
>

--000000000000e577c005ce577689
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ya, I&#39;ve got access to most of their CCR line, and I =
have a smattering of their RB line. TBH, the only places I think you will s=
ee interesting data is with the 1072 (72 tile core 1 GHz) and the 2004 (4 c=
ore 1.7 GHz ARM64).=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto">I&#3=
9;m also with The Brother&#39;s WISP, so if Dave wants to do a cast I can s=
et that up with the other guys. I&#39;m pretty sure there was some conversa=
tion about trying to get Dave on a while back.</div><br><br><div class=3D"g=
mail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct =
14, 2021, 11:27 AM Jordan Szuch via Cake &lt;<a href=3D"mailto:cake@lists.b=
ufferbloat.net" target=3D"_blank" rel=3D"noreferrer">cake@lists.bufferbloat=
.net</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Awesome, thanks=
! I went and subscribed to that topic so I&#39;ll get notifications when pe=
ople reply. Hope to jump in once I&#39;m less busy with my day to day work.=
<br>
<br>
Regarding more powerful hardware, I think someone replied to the mailing li=
st earlier offering to run some tests. Sounded like he might have some bigg=
er hardware to test out. Thomas Croghan back on Monday morning it looks lik=
e.<br>
<br>
Might also be worth reaching out to these guys to do some testing or evange=
lizing at least: <a href=3D"https://thebrotherswisp.com/" rel=3D"noreferrer=
 noreferrer noreferrer" target=3D"_blank">https://thebrotherswisp.com/</a> =
They run a podcast with a rotating cast of network operators, WISPS, etc. A=
nd they seem pretty clued into the MIkrotik world specifically. I recall th=
at you&#39;ve jumped onto a podcast or two recently so that&#39;s why I bri=
ng it up.<br>
<br>
Anyway, I listen from time to time and one of the hosts brought up being ve=
ry interested in using fq_codel and CAKE in a Multi Dwelling Unit scenario =
(mentioned here after a 3-4 minutes <a href=3D"https://www.youtube.com/watc=
h?v=3DyFKG_cXGPrE&amp;t=3D4444s" rel=3D"noreferrer noreferrer noreferrer" t=
arget=3D"_blank">https://www.youtube.com/watch?v=3DyFKG_cXGPrE&amp;t=3D4444=
s</a>). Actually, I think they even name check you in an earlier episode (f=
ound it: <a href=3D"https://www.youtube.com/watch?v=3DQ1QitymNZTo&amp;t=3D4=
285s" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://ww=
w.youtube.com/watch?v=3DQ1QitymNZTo&amp;t=3D4285s</a>), although one host w=
as a bit skeptical of everything.<br>
<br>
-----Original Message-----<br>
From: Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com" rel=3D"noreferre=
r noreferrer" target=3D"_blank">dave.taht@gmail.com</a>&gt; <br>
Sent: Thursday, October 14, 2021 1:09 PM<br>
To: Jordan Szuch &lt;<a href=3D"mailto:jordan@inacomptc.com" rel=3D"norefer=
rer noreferrer" target=3D"_blank">jordan@inacomptc.com</a>&gt;<br>
Cc: Cake List &lt;<a href=3D"mailto:cake@lists.bufferbloat.net" rel=3D"nore=
ferrer noreferrer" target=3D"_blank">cake@lists.bufferbloat.net</a>&gt;; bl=
oat &lt;<a href=3D"mailto:bloat@lists.bufferbloat.net" rel=3D"noreferrer no=
referrer" target=3D"_blank">bloat@lists.bufferbloat.net</a>&gt;<br>
Subject: Re: [Bloat] some mikrotik comments<br>
<br>
Thx. I put the discussion and plots over here:<br>
<br>
<a href=3D"https://forum.mikrotik.com/viewtopic.php?t=3D179307" rel=3D"nore=
ferrer noreferrer noreferrer" target=3D"_blank">https://forum.mikrotik.com/=
viewtopic.php?t=3D179307</a><br>
<br>
I might - should I feel like expounding more later this week - go back to t=
he flent.gz files to discuss other features. Ironically the chromebook I ha=
ve in front of me doesn&#39;t want to let me download a file via email and =
make it visible in the real filesystem. I&#39;m vm&#39;d off from myself fo=
r some reason.<br>
<br>
But my big goal, honestly, was to get some mikrotik users to test their big=
ger iron...<br>
<br>
On Sun, Oct 10, 2021 at 9:05 AM Jordan Szuch via Bloat &lt;<a href=3D"mailt=
o:bloat@lists.bufferbloat.net" rel=3D"noreferrer noreferrer" target=3D"_bla=
nk">bloat@lists.bufferbloat.net</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Dave,<br>
&gt;<br>
&gt; Interesting that you should send this out; I recently picked up a unit=
 (this one specifically: <a href=3D"https://mikrotik.com/product/hap_ac2" r=
el=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://mikrotik.=
com/product/hap_ac2</a>) to do some testing of the v7 firmware. Nothing sup=
er high end but enough to do a little testing. I have CAKE set to do some s=
haping and so far seems functional. At least the bufferbloat speed tests fr=
om DSLReports and WaveForm indicate some shaping is happening. If you&#39;d=
 like any information about the unit, the v7 firmware, or particular tests =
run then I&#39;d be happy to help out.<br>
&gt;<br>
&gt; Jordan<br>
&gt;<br>
&gt; -----Original Message-----<br>
&gt; From: Bloat &lt;<a href=3D"mailto:bloat-bounces@lists.bufferbloat.net"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">bloat-bounces@lists.buffer=
bloat.net</a>&gt; On Behalf Of Dave <br>
&gt; Taht<br>
&gt; Sent: Sunday, October 10, 2021 11:39 AM<br>
&gt; To: Cake List &lt;<a href=3D"mailto:cake@lists.bufferbloat.net" rel=3D=
"noreferrer noreferrer" target=3D"_blank">cake@lists.bufferbloat.net</a>&gt=
;; bloat <br>
&gt; &lt;<a href=3D"mailto:bloat@lists.bufferbloat.net" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">bloat@lists.bufferbloat.net</a>&gt;<br>
&gt; Subject: [Bloat] some mikrotik comments<br>
&gt;<br>
&gt; the v7 beta gained doc and more os support for fq_codel and cake <br>
&gt; recently<br>
&gt;<br>
&gt; <a href=3D"https://forum.mikrotik.com/viewtopic.php?p=3D885000#p885000=
" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://forum.=
mikrotik.com/viewtopic.php?p=3D885000#p885000</a><br>
&gt;<br>
&gt; anyone out there actively testing mikrotik?<br>
&gt;<br>
&gt; --<br>
&gt; Fixing Starlink&#39;s Latencies: <br>
&gt; <a href=3D"https://www.youtube.com/watch?v=3Dc9gLo6Xrwgw" rel=3D"noref=
errer noreferrer noreferrer" target=3D"_blank">https://www.youtube.com/watc=
h?v=3Dc9gLo6Xrwgw</a><br>
&gt;<br>
&gt; Dave T=C3=A4ht CEO, TekLibre, LLC<br>
&gt; _______________________________________________<br>
&gt; Bloat mailing list<br>
&gt; <a href=3D"mailto:Bloat@lists.bufferbloat.net" rel=3D"noreferrer noref=
errer" target=3D"_blank">Bloat@lists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"norefe=
rrer noreferrer noreferrer" target=3D"_blank">https://lists.bufferbloat.net=
/listinfo/bloat</a><br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; Bloat mailing list<br>
&gt; <a href=3D"mailto:Bloat@lists.bufferbloat.net" rel=3D"noreferrer noref=
errer" target=3D"_blank">Bloat@lists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"norefe=
rrer noreferrer noreferrer" target=3D"_blank">https://lists.bufferbloat.net=
/listinfo/bloat</a><br>
<br>
<br>
<br>
--<br>
Fixing Starlink&#39;s Latencies: <a href=3D"https://www.youtube.com/watch?v=
=3Dc9gLo6Xrwgw" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">=
https://www.youtube.com/watch?v=3Dc9gLo6Xrwgw</a><br>
<br>
Dave T=C3=A4ht CEO, TekLibre, LLC<br>
<br>
_______________________________________________<br>
Cake mailing list<br>
<a href=3D"mailto:Cake@lists.bufferbloat.net" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">Cake@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"noreferrer n=
oreferrer noreferrer" target=3D"_blank">https://lists.bufferbloat.net/listi=
nfo/cake</a><br>
</blockquote></div>
</div>

--000000000000e577c005ce577689--

--===============1340323015788920174==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============1340323015788920174==--

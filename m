Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAF542F6DC
	for <lists+cake@lfdr.de>; Fri, 15 Oct 2021 17:17:28 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 861983CB5C;
	Fri, 15 Oct 2021 11:17:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1634311047;
	bh=FsAjWg+xJPrGlrhVbgdaYY4eh/AIixxw7EaX7Sxw1Ao=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ER2jdKk4vn/si2WbTfPfiGej5SNocv8g4B3/GpQyFB/jvZcuFX8ZB8LeiKQgQ+DZK
	 b0VdT+GZWslgv9aWtuM14zTLblC0wvhd4rFbPKAwb+gjrfV85D6mdM3dsOY8+QBME9
	 7/NnSONOTPQ+sF7Yg4gBmmAnIVzcexmrBWpflUUU4FR7+TQEfg+HnbgnBW1HJXfRKt
	 8zzlIjMXeIKGNFsNEFi07EnZggqlp/sqEtuSPUoftmgKNjpTGeQaG0IcVAOKDnyYD8
	 C54k/xA/vd8yj2ilnqHtPs661a8/w5/lcLRW388dfQ1J3B7fYF+5RdCIgNG2gRgy9E
	 5U+JZ38vzPiOw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com
 [IPv6:2a00:1450:4864:20::129])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 591863B2A4
 for <cake@lists.bufferbloat.net>; Fri, 15 Oct 2021 11:17:25 -0400 (EDT)
Received: by mail-lf1-x129.google.com with SMTP id x27so42817220lfa.9
 for <cake@lists.bufferbloat.net>; Fri, 15 Oct 2021 08:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lostcreek-tech.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:cc;
 bh=oFmq/v9AnANEZr4rTPhVQqgz8um0qXWcYHjNPhUQD5o=;
 b=FjRpPsN7Mvqc7YkkLtOAoJs4Vx0/Id6e2FcbKQQ07H4wTQjaQbrxiRAErkoWGKAEnp
 I7pttw2j8vuPpk9H8l4Bpnys5XaZl6BHRTRQ174SGzFGmgNUlvY6/Jx4misrNKA3jd+t
 Sd7wMmN5Ur1Q6V/6j2jxtrv/FyYudjNj92odH2Wy8TDJUehsO7uKf0Bt3c6KAdJV4eLP
 Qigf5mFgZN7d538hi54Z20AiKR9sfuBxLPtHS0EZGwCLS537G4GwR5zkh6Vpkm3OUaBj
 Lee6CEMc7t/2r70tJQipgvCERQFgL8s2nRzbLRN3UQGya0G4hzOkhyCD1oM8bjLWIxOM
 nTfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:cc;
 bh=oFmq/v9AnANEZr4rTPhVQqgz8um0qXWcYHjNPhUQD5o=;
 b=Twa2NNK3OV/btUkSwoz9UI7SQjyKeTBYh20tSbgJNBvqffXk5vLCSRQm0dLJaPlupu
 zDQlXyQ8kzk/W3uVDdsjU7hvQ00/luDPyY2LOgdR2j9UdZv9MbxiUODjUHFGsv4fECpF
 2F6MDntHMz0YwWZIcXOjob20ZROVQCbSkziEOsPKfgVe8KH9oTH24NDqbO7WvcO8ddCr
 2O+ucdQQObYtqZCqjlJT9UaZNbG/GwBfYhsGeds9fp0MCcvjgh/nWyvBRPljtS4FFLjY
 cSSlBMWB9qxjt5dkypBTu1Ya4HnylARIZn1VAMHJlzf/Mx0OXrXDuKjV9o7sdg1ig6dz
 VoVw==
X-Gm-Message-State: AOAM533ov7iVg/oqPXQLo3vT/D9mx1aGClFGulEvLEpPDwhoi+xgXqnG
 6XyVHctRHdUauzRCcGP6pvtQ+oxL9lTNqPdgJKykkSYZ
X-Google-Smtp-Source: ABdhPJzEfvvePESXybNrYhh65pKfrzpaBBnbtm+DwdlmpLsjtiV17PoFHYFFBlu5orP2hSxdk2Mu12jrII0qlneyzGU=
X-Received: by 2002:a05:651c:490:: with SMTP id
 s16mr13273173ljc.423.1634311043496; 
 Fri, 15 Oct 2021 08:17:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7YkMv-F6cYj2PZ9pGiS1yapO5wpLJWmuje6p0fc54eEA@mail.gmail.com>
 <003001d7bdf0$97282430$c5786c90$@inacomptc.com>
 <CAA93jw5dJ_=5OzPrcQYmFQtKLXJcfb7TWUW-jKMqfxZCpD3cZQ@mail.gmail.com>
 <006001d7c129$2de82f10$89b88d30$@inacomptc.com>
 <CADmwGqttPcq+iCgyhJTQTspuZdCPopKsRW=bfiDrEo_FEnBT=Q@mail.gmail.com>
 <CAA93jw7b-Os+w9_GsUg6JPGYDFZ_NeKfpqUwTq_7QO+qsEgQ-A@mail.gmail.com>
In-Reply-To: <CAA93jw7b-Os+w9_GsUg6JPGYDFZ_NeKfpqUwTq_7QO+qsEgQ-A@mail.gmail.com>
From: Thomas Croghan <tcroghan@lostcreek.tech>
Date: Fri, 15 Oct 2021 08:17:11 -0700
Message-ID: <CADmwGqv0_7dz+gHOgqy0xENJpnJ50mbjbrYVm_VSzn4QAVpRLA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============2242224655640358556=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2242224655640358556==
Content-Type: multipart/alternative; boundary="00000000000033555005ce65b1c9"

--00000000000033555005ce65b1c9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I listened to you on Modem, Nick is pretty involved with us on TBW, but
Modem is his own thing. While there's some overlap I'd suspect that we have
a diverse enough listener base that you should get some new ears. But I
totally get not wanting to waste your time talking to the same audience.

I'll see about what I will need to do to setup a proper test suite to get
usable data.

On Thu, Oct 14, 2021, 3:33 PM Dave Taht <dave.taht@gmail.com> wrote:

> On Thu, Oct 14, 2021 at 3:18 PM Thomas Croghan <tcroghan@lostcreek.tech>
> wrote:
> >
> > Ya, I've got access to most of their CCR line, and I have a smattering
> of their RB line. TBH, the only places I think you will see interesting
> data is with the 1072 (72 tile core 1 GHz) and the 2004 (4 core 1.7 GHz
> ARM64).
>
> The former would be exciting. We have wrestled with the htb qdisc lock
> a lot, I'm glad the ebpf version is scaling well in libreqos, but
> I'd still suspect that number of cores to be really hard to utilize.
>
> > I'm also with The Brother's WISP, so if Dave wants to do a cast I can
> set that up with the other guys. I'm pretty sure there was some
> conversation about trying to get Dave on a while back.
>
> I was on already with dan! How quickly we forget!!
>
> https://www.modem.show/post/s01e07/
>
> is that not the brothers wisp? an affiliated show?
>
> I AM trying to do some form of outreach, monthly, but was hoping that
> the apple folk would step up to talk about the rpm idea.
>
> After baring my soul regarding the l4s debate on reality 2.0 I'd kind
> of had it for a while - I'd run out of good jokes - I said to myself
> after that - ... "if (when?) starlink implements cake on the dishy,
> perhaps joe rogan will *finally* call, and I can divert the convo from
> bufferbloat to near earth asteroid exploration over a doobie."
>
> so far, he hasn't called.
>
> BTW!!! it's a good quarter for asteroid exploration - see the psyche
> mission, and this: https://www.nasa.gov/planetarydefense/dart
>
> So, anyway, if anyone *else* here likes the idea of going on a podcast
> on the bloat front please let me know, I did let a couple
> opportunities slip by last month. Or if I must go on, I could use some
> new jokes and analogies....
>
> >
> >
> > On Thu, Oct 14, 2021, 11:27 AM Jordan Szuch via Cake <
> cake@lists.bufferbloat.net> wrote:
> >>
> >> Awesome, thanks! I went and subscribed to that topic so I'll get
> notifications when people reply. Hope to jump in once I'm less busy with =
my
> day to day work.
> >>
> >> Regarding more powerful hardware, I think someone replied to the
> mailing list earlier offering to run some tests. Sounded like he might ha=
ve
> some bigger hardware to test out. Thomas Croghan back on Monday morning i=
t
> looks like.
> >>
> >> Might also be worth reaching out to these guys to do some testing or
> evangelizing at least: https://thebrotherswisp.com/ They run a podcast
> with a rotating cast of network operators, WISPS, etc. And they seem pret=
ty
> clued into the MIkrotik world specifically. I recall that you've jumped
> onto a podcast or two recently so that's why I bring it up.
> >>
> >> Anyway, I listen from time to time and one of the hosts brought up
> being very interested in using fq_codel and CAKE in a Multi Dwelling Unit
> scenario (mentioned here after a 3-4 minutes
> https://www.youtube.com/watch?v=3DyFKG_cXGPrE&t=3D4444s). Actually, I thi=
nk
> they even name check you in an earlier episode (found it:
> https://www.youtube.com/watch?v=3DQ1QitymNZTo&t=3D4285s), although one ho=
st
> was a bit skeptical of everything.
> >>
> >> -----Original Message-----
> >> From: Dave Taht <dave.taht@gmail.com>
> >> Sent: Thursday, October 14, 2021 1:09 PM
> >> To: Jordan Szuch <jordan@inacomptc.com>
> >> Cc: Cake List <cake@lists.bufferbloat.net>; bloat <
> bloat@lists.bufferbloat.net>
> >> Subject: Re: [Bloat] some mikrotik comments
> >>
> >> Thx. I put the discussion and plots over here:
> >>
> >> https://forum.mikrotik.com/viewtopic.php?t=3D179307
> >>
> >> I might - should I feel like expounding more later this week - go back
> to the flent.gz files to discuss other features. Ironically the chromeboo=
k
> I have in front of me doesn't want to let me download a file via email an=
d
> make it visible in the real filesystem. I'm vm'd off from myself for some
> reason.
> >>
> >> But my big goal, honestly, was to get some mikrotik users to test thei=
r
> bigger iron...
> >>
> >> On Sun, Oct 10, 2021 at 9:05 AM Jordan Szuch via Bloat <
> bloat@lists.bufferbloat.net> wrote:
> >> >
> >> > Hi Dave,
> >> >
> >> > Interesting that you should send this out; I recently picked up a
> unit (this one specifically: https://mikrotik.com/product/hap_ac2) to do
> some testing of the v7 firmware. Nothing super high end but enough to do =
a
> little testing. I have CAKE set to do some shaping and so far seems
> functional. At least the bufferbloat speed tests from DSLReports and
> WaveForm indicate some shaping is happening. If you'd like any informatio=
n
> about the unit, the v7 firmware, or particular tests run then I'd be happ=
y
> to help out.
> >> >
> >> > Jordan
> >> >
> >> > -----Original Message-----
> >> > From: Bloat <bloat-bounces@lists.bufferbloat.net> On Behalf Of Dave
> >> > Taht
> >> > Sent: Sunday, October 10, 2021 11:39 AM
> >> > To: Cake List <cake@lists.bufferbloat.net>; bloat
> >> > <bloat@lists.bufferbloat.net>
> >> > Subject: [Bloat] some mikrotik comments
> >> >
> >> > the v7 beta gained doc and more os support for fq_codel and cake
> >> > recently
> >> >
> >> > https://forum.mikrotik.com/viewtopic.php?p=3D885000#p885000
> >> >
> >> > anyone out there actively testing mikrotik?
> >> >
> >> > --
> >> > Fixing Starlink's Latencies:
> >> > https://www.youtube.com/watch?v=3Dc9gLo6Xrwgw
> >> >
> >> > Dave T=C3=A4ht CEO, TekLibre, LLC
> >> > _______________________________________________
> >> > Bloat mailing list
> >> > Bloat@lists.bufferbloat.net
> >> > https://lists.bufferbloat.net/listinfo/bloat
> >> >
> >> > _______________________________________________
> >> > Bloat mailing list
> >> > Bloat@lists.bufferbloat.net
> >> > https://lists.bufferbloat.net/listinfo/bloat
> >>
> >>
> >>
> >> --
> >> Fixing Starlink's Latencies:
> https://www.youtube.com/watch?v=3Dc9gLo6Xrwgw
> >>
> >> Dave T=C3=A4ht CEO, TekLibre, LLC
> >>
> >> _______________________________________________
> >> Cake mailing list
> >> Cake@lists.bufferbloat.net
> >> https://lists.bufferbloat.net/listinfo/cake
> >
> > _______________________________________________
> > Cake mailing list
> > Cake@lists.bufferbloat.net
> > https://lists.bufferbloat.net/listinfo/cake
>
>
>
> --
> Fixing Starlink's Latencies: https://www.youtube.com/watch?v=3Dc9gLo6Xrwg=
w
>
> Dave T=C3=A4ht CEO, TekLibre, LLC
>

--00000000000033555005ce65b1c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I listened to you on Modem, Nick is pretty involved with =
us on TBW, but Modem is his own thing. While there&#39;s some overlap I&#39=
;d suspect that we have a diverse enough listener base that you should get =
some new ears. But I totally get not wanting to waste=C2=A0your time talkin=
g to the same audience.<div dir=3D"auto"><br></div><div dir=3D"auto">I&#39;=
ll see about what I will need to do to setup a proper test suite to get usa=
ble data.=C2=A0</div><div dir=3D"auto"><div dir=3D"auto"><div dir=3D"auto">=
<div dir=3D"auto"><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, Oct 14, 2021, 3:33 PM Dave Taht &lt;<a hre=
f=3D"mailto:dave.taht@gmail.com" target=3D"_blank" rel=3D"noreferrer">dave.=
taht@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Th=
u, Oct 14, 2021 at 3:18 PM Thomas Croghan &lt;tcroghan@lostcreek.tech&gt; w=
rote:<br>
&gt;<br>
&gt; Ya, I&#39;ve got access to most of their CCR line, and I have a smatte=
ring of their RB line. TBH, the only places I think you will see interestin=
g data is with the 1072 (72 tile core 1 GHz) and the 2004 (4 core 1.7 GHz A=
RM64).<br>
<br>
The former would be exciting. We have wrestled with the htb qdisc lock<br>
a lot, I&#39;m glad the ebpf version is scaling well in libreqos, but<br>
I&#39;d still suspect that number of cores to be really hard to utilize.<br=
>
<br>
&gt; I&#39;m also with The Brother&#39;s WISP, so if Dave wants to do a cas=
t I can set that up with the other guys. I&#39;m pretty sure there was some=
 conversation about trying to get Dave on a while back.<br>
<br>
I was on already with dan! How quickly we forget!!<br>
<br>
<a href=3D"https://www.modem.show/post/s01e07/" rel=3D"noreferrer noreferre=
r noreferrer" target=3D"_blank">https://www.modem.show/post/s01e07/</a><br>
<br>
is that not the brothers wisp? an affiliated show?<br>
<br>
I AM trying to do some form of outreach, monthly, but was hoping that<br>
the apple folk would step up to talk about the rpm idea.<br>
<br>
After baring my soul regarding the l4s debate on reality 2.0 I&#39;d kind<b=
r>
of had it for a while - I&#39;d run out of good jokes - I said to myself<br=
>
after that - ... &quot;if (when?) starlink implements cake on the dishy,<br=
>
perhaps joe rogan will *finally* call, and I can divert the convo from<br>
bufferbloat to near earth asteroid exploration over a doobie.&quot;<br>
<br>
so far, he hasn&#39;t called.<br>
<br>
BTW!!! it&#39;s a good quarter for asteroid exploration - see the psyche<br=
>
mission, and this: <a href=3D"https://www.nasa.gov/planetarydefense/dart" r=
el=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://www.nasa.=
gov/planetarydefense/dart</a><br>
<br>
So, anyway, if anyone *else* here likes the idea of going on a podcast<br>
on the bloat front please let me know, I did let a couple<br>
opportunities slip by last month. Or if I must go on, I could use some<br>
new jokes and analogies....<br>
<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Oct 14, 2021, 11:27 AM Jordan Szuch via Cake &lt;<a href=3D"ma=
ilto:cake@lists.bufferbloat.net" rel=3D"noreferrer noreferrer" target=3D"_b=
lank">cake@lists.bufferbloat.net</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Awesome, thanks! I went and subscribed to that topic so I&#39;ll g=
et notifications when people reply. Hope to jump in once I&#39;m less busy =
with my day to day work.<br>
&gt;&gt;<br>
&gt;&gt; Regarding more powerful hardware, I think someone replied to the m=
ailing list earlier offering to run some tests. Sounded like he might have =
some bigger hardware to test out. Thomas Croghan back on Monday morning it =
looks like.<br>
&gt;&gt;<br>
&gt;&gt; Might also be worth reaching out to these guys to do some testing =
or evangelizing at least: <a href=3D"https://thebrotherswisp.com/" rel=3D"n=
oreferrer noreferrer noreferrer" target=3D"_blank">https://thebrotherswisp.=
com/</a> They run a podcast with a rotating cast of network operators, WISP=
S, etc. And they seem pretty clued into the MIkrotik world specifically. I =
recall that you&#39;ve jumped onto a podcast or two recently so that&#39;s =
why I bring it up.<br>
&gt;&gt;<br>
&gt;&gt; Anyway, I listen from time to time and one of the hosts brought up=
 being very interested in using fq_codel and CAKE in a Multi Dwelling Unit =
scenario (mentioned here after a 3-4 minutes <a href=3D"https://www.youtube=
.com/watch?v=3DyFKG_cXGPrE&amp;t=3D4444s" rel=3D"noreferrer noreferrer nore=
ferrer" target=3D"_blank">https://www.youtube.com/watch?v=3DyFKG_cXGPrE&amp=
;t=3D4444s</a>). Actually, I think they even name check you in an earlier e=
pisode (found it: <a href=3D"https://www.youtube.com/watch?v=3DQ1QitymNZTo&=
amp;t=3D4285s" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">h=
ttps://www.youtube.com/watch?v=3DQ1QitymNZTo&amp;t=3D4285s</a>), although o=
ne host was a bit skeptical of everything.<br>
&gt;&gt;<br>
&gt;&gt; -----Original Message-----<br>
&gt;&gt; From: Dave Taht &lt;<a href=3D"mailto:dave.taht@gmail.com" rel=3D"=
noreferrer noreferrer" target=3D"_blank">dave.taht@gmail.com</a>&gt;<br>
&gt;&gt; Sent: Thursday, October 14, 2021 1:09 PM<br>
&gt;&gt; To: Jordan Szuch &lt;<a href=3D"mailto:jordan@inacomptc.com" rel=
=3D"noreferrer noreferrer" target=3D"_blank">jordan@inacomptc.com</a>&gt;<b=
r>
&gt;&gt; Cc: Cake List &lt;<a href=3D"mailto:cake@lists.bufferbloat.net" re=
l=3D"noreferrer noreferrer" target=3D"_blank">cake@lists.bufferbloat.net</a=
>&gt;; bloat &lt;<a href=3D"mailto:bloat@lists.bufferbloat.net" rel=3D"nore=
ferrer noreferrer" target=3D"_blank">bloat@lists.bufferbloat.net</a>&gt;<br=
>
&gt;&gt; Subject: Re: [Bloat] some mikrotik comments<br>
&gt;&gt;<br>
&gt;&gt; Thx. I put the discussion and plots over here:<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://forum.mikrotik.com/viewtopic.php?t=3D179307" re=
l=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://forum.mikr=
otik.com/viewtopic.php?t=3D179307</a><br>
&gt;&gt;<br>
&gt;&gt; I might - should I feel like expounding more later this week - go =
back to the flent.gz files to discuss other features. Ironically the chrome=
book I have in front of me doesn&#39;t want to let me download a file via e=
mail and make it visible in the real filesystem. I&#39;m vm&#39;d off from =
myself for some reason.<br>
&gt;&gt;<br>
&gt;&gt; But my big goal, honestly, was to get some mikrotik users to test =
their bigger iron...<br>
&gt;&gt;<br>
&gt;&gt; On Sun, Oct 10, 2021 at 9:05 AM Jordan Szuch via Bloat &lt;<a href=
=3D"mailto:bloat@lists.bufferbloat.net" rel=3D"noreferrer noreferrer" targe=
t=3D"_blank">bloat@lists.bufferbloat.net</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi Dave,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Interesting that you should send this out; I recently picked =
up a unit (this one specifically: <a href=3D"https://mikrotik.com/product/h=
ap_ac2" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://=
mikrotik.com/product/hap_ac2</a>) to do some testing of the v7 firmware. No=
thing super high end but enough to do a little testing. I have CAKE set to =
do some shaping and so far seems functional. At least the bufferbloat speed=
 tests from DSLReports and WaveForm indicate some shaping is happening. If =
you&#39;d like any information about the unit, the v7 firmware, or particul=
ar tests run then I&#39;d be happy to help out.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Jordan<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; -----Original Message-----<br>
&gt;&gt; &gt; From: Bloat &lt;<a href=3D"mailto:bloat-bounces@lists.bufferb=
loat.net" rel=3D"noreferrer noreferrer" target=3D"_blank">bloat-bounces@lis=
ts.bufferbloat.net</a>&gt; On Behalf Of Dave<br>
&gt;&gt; &gt; Taht<br>
&gt;&gt; &gt; Sent: Sunday, October 10, 2021 11:39 AM<br>
&gt;&gt; &gt; To: Cake List &lt;<a href=3D"mailto:cake@lists.bufferbloat.ne=
t" rel=3D"noreferrer noreferrer" target=3D"_blank">cake@lists.bufferbloat.n=
et</a>&gt;; bloat<br>
&gt;&gt; &gt; &lt;<a href=3D"mailto:bloat@lists.bufferbloat.net" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">bloat@lists.bufferbloat.net</a>&gt;<b=
r>
&gt;&gt; &gt; Subject: [Bloat] some mikrotik comments<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; the v7 beta gained doc and more os support for fq_codel and c=
ake<br>
&gt;&gt; &gt; recently<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; <a href=3D"https://forum.mikrotik.com/viewtopic.php?p=3D88500=
0#p885000" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https=
://forum.mikrotik.com/viewtopic.php?p=3D885000#p885000</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; anyone out there actively testing mikrotik?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; Fixing Starlink&#39;s Latencies:<br>
&gt;&gt; &gt; <a href=3D"https://www.youtube.com/watch?v=3Dc9gLo6Xrwgw" rel=
=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://www.youtube=
.com/watch?v=3Dc9gLo6Xrwgw</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Dave T=C3=A4ht CEO, TekLibre, LLC<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; Bloat mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:Bloat@lists.bufferbloat.net" rel=3D"norefer=
rer noreferrer" target=3D"_blank">Bloat@lists.bufferbloat.net</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=
=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://lists.buffe=
rbloat.net/listinfo/bloat</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; Bloat mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:Bloat@lists.bufferbloat.net" rel=3D"norefer=
rer noreferrer" target=3D"_blank">Bloat@lists.bufferbloat.net</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=
=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://lists.buffe=
rbloat.net/listinfo/bloat</a><br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Fixing Starlink&#39;s Latencies: <a href=3D"https://www.youtube.co=
m/watch?v=3Dc9gLo6Xrwgw" rel=3D"noreferrer noreferrer noreferrer" target=3D=
"_blank">https://www.youtube.com/watch?v=3Dc9gLo6Xrwgw</a><br>
&gt;&gt;<br>
&gt;&gt; Dave T=C3=A4ht CEO, TekLibre, LLC<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; Cake mailing list<br>
&gt;&gt; <a href=3D"mailto:Cake@lists.bufferbloat.net" rel=3D"noreferrer no=
referrer" target=3D"_blank">Cake@lists.bufferbloat.net</a><br>
&gt;&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"nor=
eferrer noreferrer noreferrer" target=3D"_blank">https://lists.bufferbloat.=
net/listinfo/cake</a><br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; Cake mailing list<br>
&gt; <a href=3D"mailto:Cake@lists.bufferbloat.net" rel=3D"noreferrer norefe=
rrer" target=3D"_blank">Cake@lists.bufferbloat.net</a><br>
&gt; <a href=3D"https://lists.bufferbloat.net/listinfo/cake" rel=3D"norefer=
rer noreferrer noreferrer" target=3D"_blank">https://lists.bufferbloat.net/=
listinfo/cake</a><br>
<br>
<br>
<br>
-- <br>
Fixing Starlink&#39;s Latencies: <a href=3D"https://www.youtube.com/watch?v=
=3Dc9gLo6Xrwgw" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">=
https://www.youtube.com/watch?v=3Dc9gLo6Xrwgw</a><br>
<br>
Dave T=C3=A4ht CEO, TekLibre, LLC<br>
</blockquote></div></div></div></div></div></div>

--00000000000033555005ce65b1c9--

--===============2242224655640358556==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2242224655640358556==--

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9C83C7588
	for <lists+cake@lfdr.de>; Tue, 13 Jul 2021 19:08:10 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3CC893CB55;
	Tue, 13 Jul 2021 13:08:03 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1626196083;
	bh=QrvmGKUUQCWeSFq9d3eC/vKsKH8xa1yC46dD1xyuaKA=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=ecVqDWWX1JTM+0xVOCnzHS2L7zT1mjjZMtqoxbMrsUGAUjcDA1Qj2HLrMKwe7tNHN
	 +g7VUIwm++YsZhUNGh+sFTZWEeNTIrpzJXY3TU4gZe540rryHfhAnkGUsXZSHoqn1S
	 fn1rqLinizn7SLcUqIkIVjiCZM1oLVeb54kqICx+YAceB77j8cyu/7M/uhMbWfwt8t
	 xPLb+f1H4EfVfGTsMAGu8wXwSSG9gj/NHxatemsEiTOT3QTm7pCy2/uHHX1fRMx51K
	 2V8T4jHEVrC2w7fJ4DSHF0Mx9KsRDpPjzzylIZDKqt9Od7sfNunee6o/VkDCfbhuO/
	 EyTjcohXgfATw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 75A3E3CB38
 for <cake@lists.bufferbloat.net>; Tue, 13 Jul 2021 13:08:01 -0400 (EDT)
Received: by mail-ej1-x633.google.com with SMTP id hr1so42859076ejc.1
 for <cake@lists.bufferbloat.net>; Tue, 13 Jul 2021 10:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lHIyuXvDbuhDjTnybNMl/k4kKG2Q8MTPu7n1mQxW8jk=;
 b=D7lnE9haz1kxx53OSCwI1QLSlwpvUL9Z+czO6ziDfi3rrXLb5ff8GO3zrUmBa8HxM9
 CxYhIcqR9Uv1xnpNdmOpTjTeEGeu88TBPLnM8gKcAWSsG+DW9Q0cQeYDXtq7+6YCeIll
 YuRX3j5JCpC21gg1WJDbtdnlNzlZRpo2nIffQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lHIyuXvDbuhDjTnybNMl/k4kKG2Q8MTPu7n1mQxW8jk=;
 b=nhZ30d6ssF3j5Y9wcIcJK1TqykaUnkFLfzBWlSP8hsdQFoYmaYUhmMo9sKnhwznvO7
 tn8Fym43AAisDEqT/KVrFMVQC5X+L0jyMlQu4Bf0XQ4XNfuTw2abEDeoXfsCpmDHhlfJ
 BTlKzjgtR9I6K+oDHEzr+47YfOY+GUCuT+fJWtIhecguX0H20ie2V++d7K2trFKg72oF
 s0YqEJj26G6SgUVUEUMLfkNJQg9GGG33t2Gu4CEss325AR4LtJ0nt+1EAUbjFEljRAAT
 6lNfnpAEsaaV38U2rM0AEiTjEpZaoLXfcv+rhafLKa+UA3ojYy9xmuHpEPxnDQAPJu4l
 1MMA==
X-Gm-Message-State: AOAM533T5KMWs3HScmkz+85ttd/ANfhdIpkc/U8kMadf+mvRADy/BeG+
 oIZp22OAeqbOgzkL7Aj4qQEp+9DZBi7ElwwT9aocb0o66ohSkMRnDvS9bVVjCwHU3IxtAilgqOL
 ck4RlOcWZtsSQLYLPwcYeFCvpv9ex
X-Google-Smtp-Source: ABdhPJzqhNrvaI543U+x7BfSr/Hxmho7DLNbu+it4+nTUHgU2vHLvLk/Dk1TEkSnAlA4X+BnTPdiNW6Xx8M6ITVtza0=
X-Received: by 2002:a17:906:2dc9:: with SMTP id
 h9mr6944229eji.345.1626196080012; 
 Tue, 13 Jul 2021 10:08:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAA93jw7ZFWRWsBK-R1See9jRCASHd1U8ZFawyDXOT8fh2pLTag@mail.gmail.com>
 <1625188609.32718319@apps.rackspace.com>
 <CAA93jw5wQ5PYL08hWcdUucUYWt-n=uKDAbF23Pp3t5u9dEDEng@mail.gmail.com>
 <CAHb6LvrjgKnfe_jaGgx7_B1VDTkZfTmP0OyTmxL9ojWoxogrsA@mail.gmail.com>
 <989de0c1-e06c-cda9-ebe6-1f33df8a4c24@candelatech.com>
 <1625773080.94974089@apps.rackspace.com>
 <FDF5C7A7-47A6-4123-A948-352C07C35F02@cs.ucla.edu>
 <CAH8sseShtJHZ1mZWu-hhKYsDLG_LC9GBpX9XRrj68yyzQLPcAg@mail.gmail.com>
 <1625859083.09751240@apps.rackspace.com>
 <EF8D7620-438A-4F65-94D9-B35FDB76FBBD@cable.comcast.com>
 <1626111630.69692379@apps.rackspace.com>
 <CAHb6LvoD+ACc+17WhTVmS8HYnYyboJrCg5zQF8uXtzrmqqKfPA@mail.gmail.com>
 <9c3d61c1-7013-414e-964d-9e83f596e69d@candelatech.com>
 <CAHb6LvpyQtGg3sMF2RV_gMpEcaY32A70VaEwtsnoeq4DHtv7EA@mail.gmail.com>
 <1e8bdf58-2a21-f543-a248-be58bcbddbcf@candelatech.com>
 <02c601d777b6$c4ce5a10$4e6b0e30$@rizk.com.de>
In-Reply-To: <02c601d777b6$c4ce5a10$4e6b0e30$@rizk.com.de>
Date: Tue, 13 Jul 2021 10:07:48 -0700
Message-ID: <CAHb6LvqRyuK1Xzt6mNhAteit3qZ3bD0vKSqHqog6ZqgMaiBu9w@mail.gmail.com>
To: Amr Rizk <amr@rizk.com.de>
Subject: Re: [Cake] [Bloat] Little's Law mea culpa,
	but not invalidating my main point
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
 Leonard Kleinrock <lk@cs.ucla.edu>, starlink@lists.bufferbloat.net,
 codel@lists.bufferbloat.net,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Ben Greear <greearb@candelatech.com>
Content-Type: multipart/mixed; boundary="===============0628771359975453908=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0628771359975453908==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000b5985f05c70447c7"

--000000000000b5985f05c70447c7
Content-Type: multipart/alternative; boundary="000000000000afc35405c7044734"

--000000000000afc35405c7044734
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

"Control at endpoints benefits greatly from even small amounts of
information supplied by the network about the degree of congestion present
on the path."

Agreed. The ECN mechanism seems like a shared thermostat in a building.
It's basically an on/off where everyone is trying to set the temperature.
It does affect, in a non-linear manner, but still an effect. Better than a
thermostat set at infinity or 0 Kelvin for sure.

I find the assumption that congestion occurs "in network" as not always
true. Taking OWD measurements with read side rate limiting suggests that
equally important to mitigating bufferbloat driven latency using congestion
signals is to make sure apps read "fast enough" whatever that means. I
rarely hear about how important it is for apps to prioritize reads over
open sockets. Not sure why that's overlooked and bufferbloat gets all the
attention. I'm probably missing something.

Bob

On Tue, Jul 13, 2021 at 12:15 AM Amr Rizk <amr@rizk.com.de> wrote:

> Ben,
>
> it depends on what one tries to measure. Doing a rate scan using UDP (to
> measure latency distributions under load) is the best thing that we have
> but without actually knowing how resources are shared (fair share as in
> WiFi, FIFO as nearly everywhere else) it becomes very difficult to
> interpret the results or provide a proper argument on latency. You are
> right - TCP stats are a proxy for user experience but I believe they are
> difficult to reproduce (we are always talking about very short TCP flows =
-
> the infinite TCP flow that converges to a steady behavior is purely
> academic).
>
> By the way, Little's law is a strong tool when it comes to averages. To b=
e
> able to say more (e.g. 1% of the delays is larger than x) one requires mo=
re
> information (e.g. the traffic - On-OFF pattern) see [1].  I am not sure
> when does such information readily exist.
>
> Best
> Amr
>
> [1] https://dl.acm.org/doi/10.1145/3341617.3326146 or if behind a paywall
> https://www.dcs.warwick.ac.uk/~florin/lib/sigmet19b.pdf
>
> --------------------------------
> Amr Rizk (amr.rizk@uni-due.de)
> University of Duisburg-Essen
>
> -----Urspr=C3=BCngliche Nachricht-----
> Von: Bloat <bloat-bounces@lists.bufferbloat.net> Im Auftrag von Ben Greea=
r
> Gesendet: Montag, 12. Juli 2021 22:32
> An: Bob McMahon <bob.mcmahon@broadcom.com>
> Cc: starlink@lists.bufferbloat.net; Make-Wifi-fast <
> make-wifi-fast@lists.bufferbloat.net>; Leonard Kleinrock <lk@cs.ucla.edu>=
;
> David P. Reed <dpreed@deepplum.com>; Cake List <cake@lists.bufferbloat.ne=
t>;
> codel@lists.bufferbloat.net; cerowrt-devel <
> cerowrt-devel@lists.bufferbloat.net>; bloat <bloat@lists.bufferbloat.net>
> Betreff: Re: [Bloat] Little's Law mea culpa, but not invalidating my main
> point
>
> UDP is better for getting actual packet latency, for sure.  TCP is
> typical-user-experience-latency though, so it is also useful.
>
> I'm interested in the test and visualization side of this.  If there were
> a way to give engineers a good real-time look at a complex real-world
> network, then they have something to go on while trying to tune various
> knobs in their network to improve it.
>
> I'll let others try to figure out how build and tune the knobs, but the
> data acquisition and visualization is something we might try to
> accomplish.  I have a feeling I'm not the first person to think of this,
> however....probably someone already has done such a thing.
>
> Thanks,
> Ben
>
> On 7/12/21 1:04 PM, Bob McMahon wrote:
> > I believe end host's TCP stats are insufficient as seen per the
> > "failed" congested control mechanisms over the last decades. I think
> > Jaffe pointed this out in
> > 1979 though he was using what's been deemed on this thread as "spherica=
l
> cow queueing theory."
> >
> > "Flow control in store-and-forward computer networks is appropriate
> > for decentralized execution. A formal description of a class of
> > "decentralized flow control algorithms" is given. The feasibility of
> > maximizing power with such algorithms is investigated. On the
> > assumption that communication links behave like M/M/1 servers it is
> shown that no "decentralized flow control algorithm" can maximize network
> power. Power has been suggested in the literature as a network performanc=
e
> objective. It is also shown that no objective based only on the users'
> throughputs and average delay is decentralizable. Finally, a restricted
> class of algorithms cannot even approximate power."
> >
> > https://ieeexplore.ieee.org/document/1095152
> >
> > Did Jaffe make a mistake?
> >
> > Also, it's been observed that latency is non-parametric in it's
> > distributions and computing gaussians per the central limit theorem
> > for OWD feedback loops aren't effective. How does one design a control
> loop around things that are non-parametric? It also begs the question, wh=
at
> are the feed forward knobs that can actually help?
> >
> > Bob
> >
> > On Mon, Jul 12, 2021 at 12:07 PM Ben Greear <greearb@candelatech.com
> <mailto:greearb@candelatech.com>> wrote:
> >
> >     Measuring one or a few links provides a bit of data, but seems like
> if someone is trying to understand
> >     a large and real network, then the OWD between point A and B needs
> to just be input into something much
> >     more grand.  Assuming real-time OWD data exists between 100 to 1000
> endpoint pairs, has anyone found a way
> >     to visualize this in a useful manner?
> >
> >     Also, considering something better than ntp may not really scale to
> 1000+ endpoints, maybe round-trip
> >     time is only viable way to get this type of data.  In that case,
> maybe clever logic could use things
> >     like trace-route to get some idea of how long it takes to get 'onto=
'
> the internet proper, and so estimate
> >     the last-mile latency.  My assumption is that the last-mile latency
> is where most of the pervasive
> >     assymetric network latencies would exist (or just ping 8.8.8.8 whic=
h
> is 20ms from everywhere due to
> >     $magic).
> >
> >     Endpoints could also triangulate a bit if needed, using some anchor
> points in the network
> >     under test.
> >
> >     Thanks,
> >     Ben
> >
> >     On 7/12/21 11:21 AM, Bob McMahon wrote:
> >      > iperf 2 supports OWD and gives full histograms for TCP write to
> read, TCP connect times, latency of packets (with UDP), latency of "frame=
s"
> with
> >      > simulated video traffic (TCP and UDP), xfer times of bursts with
> low duty cycle traffic, and TCP RTT (sampling based.) It also has support
> for sampling (per
> >      > interval reports) down to 100 usecs if configured with
> --enable-fastsampling, otherwise the fastest sampling is 5 ms. We've
> released all this as open source.
> >      >
> >      > OWD only works if the end realtime clocks are synchronized using
> a "machine level" protocol such as IEEE 1588 or PTP. Sadly, *most data
> centers don't
> >     provide
> >      > sufficient level of clock accuracy and the GPS pulse per second =
*
> to colo and vm customers.
> >      >
> >      > https://iperf2.sourceforge.io/iperf-manpage.html
> >      >
> >      > Bob
> >      >
> >      > On Mon, Jul 12, 2021 at 10:40 AM David P. Reed <
> dpreed@deepplum.com <mailto:dpreed@deepplum.com> <mailto:
> dpreed@deepplum.com
> >     <mailto:dpreed@deepplum.com>>> wrote:
> >      >
> >      >
> >      >     On Monday, July 12, 2021 9:46am, "Livingood, Jason" <
> Jason_Livingood@comcast.com <mailto:Jason_Livingood@comcast.com>
> >     <mailto:Jason_Livingood@comcast.com <mailto:
> Jason_Livingood@comcast.com>>> said:
> >      >
> >      >      > I think latency/delay is becoming seen to be as important
> certainly, if not a more direct proxy for end user QoE. This is all still
> evolving and I
> >     have
> >      >     to say is a super interesting & fun thing to work on. :-)
> >      >
> >      >     If I could manage to sell one idea to the management
> hierarchy of communications industry CEOs (operators, vendors, ...) it is
> this one:
> >      >
> >      >     "It's the end-to-end latency, stupid!"
> >      >
> >      >     And I mean, by end-to-end, latency to complete a task at a
> relevant layer of abstraction.
> >      >
> >      >     At the link level, it's packet send to packet receive
> completion.
> >      >
> >      >     But at the transport level including retransmission buffers,
> it's datagram (or message) origination until the acknowledgement arrives
> for that
> >     message being
> >      >     delivered after whatever number of retransmissions, freeing
> the retransmission buffer.
> >      >
> >      >     At the WWW level, it's mouse click to display update
> corresponding to completion of the request.
> >      >
> >      >     What should be noted is that lower level latencies don't
> directly predict the magnitude of higher-level latencies. But longer lowe=
r
> level latencies
> >     almost
> >      >     always amplfify higher level latencies. Often non-linearly.
> >      >
> >      >     Throughput is very, very weakly related to these latencies,
> in contrast.
> >      >
> >      >     The amplification process has to do with the presence of
> queueing. Queueing is ALWAYS bad for latency, and throughput only helps i=
f
> it is in exactly the
> >      >     right place (the so-called input queue of the bottleneck
> process, which is often a link, but not always).
> >      >
> >      >     Can we get that slogan into Harvard Business Review? Can we
> get it taught in Managerial Accounting at HBS? (which does address
> logistics/supply chain
> >     queueing).
> >      >
> >      >
> >      >
> >      >
> >      >
> >      >
> >      >
> >      > This electronic communication and the information and any files
> transmitted with it, or attached to it, are confidential and are intended
> solely for the
> >     use of
> >      > the individual or entity to whom it is addressed and may contain
> information that is confidential, legally privileged, protected by privac=
y
> laws, or
> >     otherwise
> >      > restricted from disclosure to anyone else. If you are not the
> intended recipient or the person responsible for delivering the e-mail to
> the intended
> >     recipient,
> >      > you are hereby notified that any use, copying, distributing,
> dissemination, forwarding, printing, or copying of this e-mail is strictl=
y
> prohibited. If you
> >      > received this e-mail in error, please return the e-mail to the
> sender, delete it from your computer, and destroy any printed copy of it.
> >
> >
> >     --
> >     Ben Greear <greearb@candelatech.com <mailto:greearb@candelatech.com
> >>
> >     Candela Technologies Inc http://www.candelatech.com
> >
> >
> > This electronic communication and the information and any files
> > transmitted with it, or attached to it, are confidential and are
> > intended solely for the use of the individual or entity to whom it is
> > addressed and may contain information that is confidential, legally
> > privileged, protected by privacy laws, or otherwise restricted from
> disclosure to anyone else. If you are not the intended recipient or the
> person responsible for delivering the e-mail to the intended recipient, y=
ou
> are hereby notified that any use, copying, distributing, dissemination,
> forwarding, printing, or copying of this e-mail is strictly prohibited. I=
f
> you received this e-mail in error, please return the e-mail to the sender=
,
> delete it from your computer, and destroy any printed copy of it.
>
>
> --
> Ben Greear <greearb@candelatech.com>
> Candela Technologies Inc  http://www.candelatech.com
>
> _______________________________________________
> Bloat mailing list
> Bloat@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/bloat
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

--000000000000afc35405c7044734
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&quot;Control at endpoints benefits greatly from even smal=
l amounts of information supplied by the network about the degree of conges=
tion present on the path.&quot;<br><br>Agreed. The ECN mechanism seems like=
 a shared thermostat in a building. It&#39;s basically an on/off where ever=
yone is trying to set the temperature. It does affect, in a non-linear=C2=
=A0manner, but still an effect. Better than a thermostat set at infinity or=
 0 Kelvin for sure.<br><br>I find the assumption that congestion occurs &qu=
ot;in network&quot; as not always true. Taking OWD measurements with read s=
ide rate limiting suggests that equally important to mitigating bufferbloat=
 driven latency using congestion signals is to make sure apps read &quot;fa=
st enough&quot; whatever that means. I rarely hear about how important it i=
s for apps to prioritize reads over open sockets. Not sure why that&#39;s o=
verlooked and bufferbloat gets all the attention. I&#39;m probably missing =
something.<br><br>Bob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, Jul 13, 2021 at 12:15 AM Amr Rizk &lt;<a href=
=3D"mailto:amr@rizk.com.de">amr@rizk.com.de</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">Ben, <br>
<br>
it depends on what one tries to measure. Doing a rate scan using UDP (to me=
asure latency distributions under load) is the best thing that we have but =
without actually knowing how resources are shared (fair share as in WiFi, F=
IFO as nearly everywhere else) it becomes very difficult to interpret the r=
esults or provide a proper argument on latency. You are right - TCP stats a=
re a proxy for user experience but I believe they are difficult to reproduc=
e (we are always talking about very short TCP flows - the infinite TCP flow=
 that converges to a steady behavior is purely academic).<br>
<br>
By the way, Little&#39;s law is a strong tool when it comes to averages. To=
 be able to say more (e.g. 1% of the delays is larger than x) one requires =
more information (e.g. the traffic - On-OFF pattern) see [1].=C2=A0 I am no=
t sure when does such information readily exist. <br>
<br>
Best<br>
Amr <br>
<br>
[1] <a href=3D"https://dl.acm.org/doi/10.1145/3341617.3326146" rel=3D"noref=
errer" target=3D"_blank">https://dl.acm.org/doi/10.1145/3341617.3326146</a>=
 or if behind a paywall <a href=3D"https://www.dcs.warwick.ac.uk/~florin/li=
b/sigmet19b.pdf" rel=3D"noreferrer" target=3D"_blank">https://www.dcs.warwi=
ck.ac.uk/~florin/lib/sigmet19b.pdf</a><br>
<br>
--------------------------------<br>
Amr Rizk (<a href=3D"mailto:amr.rizk@uni-due.de" target=3D"_blank">amr.rizk=
@uni-due.de</a>)<br>
University of Duisburg-Essen<br>
<br>
-----Urspr=C3=BCngliche Nachricht-----<br>
Von: Bloat &lt;<a href=3D"mailto:bloat-bounces@lists.bufferbloat.net" targe=
t=3D"_blank">bloat-bounces@lists.bufferbloat.net</a>&gt; Im Auftrag von Ben=
 Greear<br>
Gesendet: Montag, 12. Juli 2021 22:32<br>
An: Bob McMahon &lt;<a href=3D"mailto:bob.mcmahon@broadcom.com" target=3D"_=
blank">bob.mcmahon@broadcom.com</a>&gt;<br>
Cc: <a href=3D"mailto:starlink@lists.bufferbloat.net" target=3D"_blank">sta=
rlink@lists.bufferbloat.net</a>; Make-Wifi-fast &lt;<a href=3D"mailto:make-=
wifi-fast@lists.bufferbloat.net" target=3D"_blank">make-wifi-fast@lists.buf=
ferbloat.net</a>&gt;; Leonard Kleinrock &lt;<a href=3D"mailto:lk@cs.ucla.ed=
u" target=3D"_blank">lk@cs.ucla.edu</a>&gt;; David P. Reed &lt;<a href=3D"m=
ailto:dpreed@deepplum.com" target=3D"_blank">dpreed@deepplum.com</a>&gt;; C=
ake List &lt;<a href=3D"mailto:cake@lists.bufferbloat.net" target=3D"_blank=
">cake@lists.bufferbloat.net</a>&gt;; <a href=3D"mailto:codel@lists.bufferb=
loat.net" target=3D"_blank">codel@lists.bufferbloat.net</a>; cerowrt-devel =
&lt;<a href=3D"mailto:cerowrt-devel@lists.bufferbloat.net" target=3D"_blank=
">cerowrt-devel@lists.bufferbloat.net</a>&gt;; bloat &lt;<a href=3D"mailto:=
bloat@lists.bufferbloat.net" target=3D"_blank">bloat@lists.bufferbloat.net<=
/a>&gt;<br>
Betreff: Re: [Bloat] Little&#39;s Law mea culpa, but not invalidating my ma=
in point<br>
<br>
UDP is better for getting actual packet latency, for sure.=C2=A0 TCP is typ=
ical-user-experience-latency though, so it is also useful.<br>
<br>
I&#39;m interested in the test and visualization side of this.=C2=A0 If the=
re were a way to give engineers a good real-time look at a complex real-wor=
ld network, then they have something to go on while trying to tune various =
knobs in their network to improve it.<br>
<br>
I&#39;ll let others try to figure out how build and tune the knobs, but the=
 data acquisition and visualization is something we might try to accomplish=
.=C2=A0 I have a feeling I&#39;m not the first person to think of this, how=
ever....probably someone already has done such a thing.<br>
<br>
Thanks,<br>
Ben<br>
<br>
On 7/12/21 1:04 PM, Bob McMahon wrote:<br>
&gt; I believe end host&#39;s TCP stats are insufficient as seen per the <b=
r>
&gt; &quot;failed&quot; congested control mechanisms over the last decades.=
 I think <br>
&gt; Jaffe pointed this out in<br>
&gt; 1979 though he was using what&#39;s been deemed on this thread as &quo=
t;spherical cow queueing theory.&quot;<br>
&gt; <br>
&gt; &quot;Flow control in store-and-forward computer networks is appropria=
te <br>
&gt; for decentralized execution. A formal description of a class of <br>
&gt; &quot;decentralized flow control algorithms&quot; is given. The feasib=
ility of <br>
&gt; maximizing power with such algorithms is investigated. On the <br>
&gt; assumption that communication links behave like M/M/1 servers it is sh=
own that no &quot;decentralized flow control algorithm&quot; can maximize n=
etwork power. Power has been suggested in the literature as a network perfo=
rmance objective. It is also shown that no objective based only on the user=
s&#39; throughputs and average delay is decentralizable. Finally, a restric=
ted class of algorithms cannot even approximate power.&quot;<br>
&gt; <br>
&gt; <a href=3D"https://ieeexplore.ieee.org/document/1095152" rel=3D"norefe=
rrer" target=3D"_blank">https://ieeexplore.ieee.org/document/1095152</a><br=
>
&gt; <br>
&gt; Did Jaffe make a mistake?<br>
&gt; <br>
&gt; Also, it&#39;s been observed that latency is non-parametric in it&#39;=
s <br>
&gt; distributions and computing gaussians per the central limit theorem <b=
r>
&gt; for OWD feedback loops aren&#39;t effective. How does one design a con=
trol loop around things that are non-parametric? It also begs the question,=
 what are the feed forward knobs that can actually help?<br>
&gt; <br>
&gt; Bob<br>
&gt; <br>
&gt; On Mon, Jul 12, 2021 at 12:07 PM Ben Greear &lt;<a href=3D"mailto:gree=
arb@candelatech.com" target=3D"_blank">greearb@candelatech.com</a> &lt;mail=
to:<a href=3D"mailto:greearb@candelatech.com" target=3D"_blank">greearb@can=
delatech.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Measuring one or a few links provides a bit of data=
, but seems like if someone is trying to understand<br>
&gt;=C2=A0 =C2=A0 =C2=A0a large and real network, then the OWD between poin=
t A and B needs to just be input into something much<br>
&gt;=C2=A0 =C2=A0 =C2=A0more grand.=C2=A0 Assuming real-time OWD data exist=
s between 100 to 1000 endpoint pairs, has anyone found a way<br>
&gt;=C2=A0 =C2=A0 =C2=A0to visualize this in a useful manner?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Also, considering something better than ntp may not=
 really scale to 1000+ endpoints, maybe round-trip<br>
&gt;=C2=A0 =C2=A0 =C2=A0time is only viable way to get this type of data.=
=C2=A0 In that case, maybe clever logic could use things<br>
&gt;=C2=A0 =C2=A0 =C2=A0like trace-route to get some idea of how long it ta=
kes to get &#39;onto&#39; the internet proper, and so estimate<br>
&gt;=C2=A0 =C2=A0 =C2=A0the last-mile latency.=C2=A0 My assumption is that =
the last-mile latency is where most of the pervasive<br>
&gt;=C2=A0 =C2=A0 =C2=A0assymetric network latencies would exist (or just p=
ing 8.8.8.8 which is 20ms from everywhere due to<br>
&gt;=C2=A0 =C2=A0 =C2=A0$magic).<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Endpoints could also triangulate a bit if needed, u=
sing some anchor points in the network<br>
&gt;=C2=A0 =C2=A0 =C2=A0under test.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Thanks,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Ben<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 7/12/21 11:21 AM, Bob McMahon wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; iperf 2 supports OWD and gives full histogram=
s for TCP write to read, TCP connect times, latency of packets (with UDP), =
latency of &quot;frames&quot; with<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; simulated video traffic (TCP and UDP), xfer t=
imes of bursts with low duty cycle traffic, and TCP RTT (sampling based.) I=
t also has support for sampling (per<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; interval reports) down to 100 usecs if config=
ured with --enable-fastsampling, otherwise the fastest sampling is 5 ms. We=
&#39;ve released all this as open source.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; OWD only works if the end realtime clocks are=
 synchronized using a &quot;machine level&quot; protocol such as IEEE 1588 =
or PTP. Sadly, *most data centers don&#39;t<br>
&gt;=C2=A0 =C2=A0 =C2=A0provide<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; sufficient level of clock accuracy and the GP=
S pulse per second * to colo and vm customers.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"https://iperf2.sourceforge.io/iper=
f-manpage.html" rel=3D"noreferrer" target=3D"_blank">https://iperf2.sourcef=
orge.io/iperf-manpage.html</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Bob<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; On Mon, Jul 12, 2021 at 10:40 AM David P. Ree=
d &lt;<a href=3D"mailto:dpreed@deepplum.com" target=3D"_blank">dpreed@deepp=
lum.com</a> &lt;mailto:<a href=3D"mailto:dpreed@deepplum.com" target=3D"_bl=
ank">dpreed@deepplum.com</a>&gt; &lt;mailto:<a href=3D"mailto:dpreed@deeppl=
um.com" target=3D"_blank">dpreed@deepplum.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:dpreed@deepplum.com" t=
arget=3D"_blank">dpreed@deepplum.com</a>&gt;&gt;&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0On Monday, July 12, 2021 9=
:46am, &quot;Livingood, Jason&quot; &lt;<a href=3D"mailto:Jason_Livingood@c=
omcast.com" target=3D"_blank">Jason_Livingood@comcast.com</a> &lt;mailto:<a=
 href=3D"mailto:Jason_Livingood@comcast.com" target=3D"_blank">Jason_Living=
ood@comcast.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:Jason_Livingood@comcas=
t.com" target=3D"_blank">Jason_Livingood@comcast.com</a> &lt;mailto:<a href=
=3D"mailto:Jason_Livingood@comcast.com" target=3D"_blank">Jason_Livingood@c=
omcast.com</a>&gt;&gt;&gt; said:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I think latency/dela=
y is becoming seen to be as important certainly, if not a more direct proxy=
 for end user QoE. This is all still evolving and I<br>
&gt;=C2=A0 =C2=A0 =C2=A0have<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0to say is a super interest=
ing &amp; fun thing to work on. :-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0If I could manage to sell =
one idea to the management hierarchy of communications industry CEOs (opera=
tors, vendors, ...) it is this one:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0&quot;It&#39;s the end-to-=
end latency, stupid!&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0And I mean, by end-to-end,=
 latency to complete a task at a relevant layer of abstraction.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0At the link level, it&#39;=
s packet send to packet receive completion.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0But at the transport level=
 including retransmission buffers, it&#39;s datagram (or message) originati=
on until the acknowledgement arrives for that<br>
&gt;=C2=A0 =C2=A0 =C2=A0message being<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0delivered after whatever n=
umber of retransmissions, freeing the retransmission buffer.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0At the WWW level, it&#39;s=
 mouse click to display update corresponding to completion of the request.<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0What should be noted is th=
at lower level latencies don&#39;t directly predict the magnitude of higher=
-level latencies. But longer lower level latencies<br>
&gt;=C2=A0 =C2=A0 =C2=A0almost<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0always amplfify higher lev=
el latencies. Often non-linearly.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Throughput is very, very w=
eakly related to these latencies, in contrast.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0The amplification process =
has to do with the presence of queueing. Queueing is ALWAYS bad for latency=
, and throughput only helps if it is in exactly the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0right place (the so-called=
 input queue of the bottleneck process, which is often a link, but not alwa=
ys).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Can we get that slogan int=
o Harvard Business Review? Can we get it taught in Managerial Accounting at=
 HBS? (which does address logistics/supply chain<br>
&gt;=C2=A0 =C2=A0 =C2=A0queueing).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; This electronic communication and the informa=
tion and any files transmitted with it, or attached to it, are confidential=
 and are intended solely for the<br>
&gt;=C2=A0 =C2=A0 =C2=A0use of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; the individual or entity to whom it is addres=
sed and may contain information that is confidential, legally privileged, p=
rotected by privacy laws, or<br>
&gt;=C2=A0 =C2=A0 =C2=A0otherwise<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; restricted from disclosure to anyone else. If=
 you are not the intended recipient or the person responsible for deliverin=
g the e-mail to the intended<br>
&gt;=C2=A0 =C2=A0 =C2=A0recipient,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; you are hereby notified that any use, copying=
, distributing, dissemination, forwarding, printing, or copying of this e-m=
ail is strictly prohibited. If you<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; received this e-mail in error, please return =
the e-mail to the sender, delete it from your computer, and destroy any pri=
nted copy of it.<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-- <br>
&gt;=C2=A0 =C2=A0 =C2=A0Ben Greear &lt;<a href=3D"mailto:greearb@candelatec=
h.com" target=3D"_blank">greearb@candelatech.com</a> &lt;mailto:<a href=3D"=
mailto:greearb@candelatech.com" target=3D"_blank">greearb@candelatech.com</=
a>&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Candela Technologies Inc <a href=3D"http://www.cand=
elatech.com" rel=3D"noreferrer" target=3D"_blank">http://www.candelatech.co=
m</a><br>
&gt; <br>
&gt; <br>
&gt; This electronic communication and the information and any files <br>
&gt; transmitted with it, or attached to it, are confidential and are <br>
&gt; intended solely for the use of the individual or entity to whom it is =
<br>
&gt; addressed and may contain information that is confidential, legally <b=
r>
&gt; privileged, protected by privacy laws, or otherwise restricted from di=
sclosure to anyone else. If you are not the intended recipient or the perso=
n responsible for delivering the e-mail to the intended recipient, you are =
hereby notified that any use, copying, distributing, dissemination, forward=
ing, printing, or copying of this e-mail is strictly prohibited. If you rec=
eived this e-mail in error, please return the e-mail to the sender, delete =
it from your computer, and destroy any printed copy of it.<br>
<br>
<br>
--<br>
Ben Greear &lt;<a href=3D"mailto:greearb@candelatech.com" target=3D"_blank"=
>greearb@candelatech.com</a>&gt;<br>
Candela Technologies Inc=C2=A0 <a href=3D"http://www.candelatech.com" rel=
=3D"noreferrer" target=3D"_blank">http://www.candelatech.com</a><br>
<br>
_______________________________________________<br>
Bloat mailing list<br>
<a href=3D"mailto:Bloat@lists.bufferbloat.net" target=3D"_blank">Bloat@list=
s.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/bloat" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.bufferbloat.net/listinfo/bloat</a><br>
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
--000000000000afc35405c7044734--

--000000000000b5985f05c70447c7
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
DrPV5EPUikwiGMDmkX8o6roGiUwyqAp8dMZKJZ/vS/aWEELV+gm21Btr7eqdAWyqm09McVpkM4th
v/FOYcj8DeJr8MXmHW53gN2fv0BzQjqAdrdCBPNRAgMBAAGjggHZMIIB1TAOBgNVHQ8BAf8EBAMC
BaAwgaMGCCsGAQUFBwEBBIGWMIGTME4GCCsGAQUFBzAChkJodHRwOi8vc2VjdXJlLmdsb2JhbHNp
Z24uY29tL2NhY2VydC9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcnQwQQYIKwYBBQUHMAGG
NWh0dHA6Ly9vY3NwLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwME0G
A1UdIARGMEQwQgYKKwYBBAGgMgEoCjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxz
aWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMEkGA1UdHwRCMEAwPqA8oDqGOGh0dHA6Ly9j
cmwuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3JsMCMGA1UdEQQc
MBqBGGJvYi5tY21haG9uQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNVHSME
GDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUpyXYr5rh8cZzkns+zXmMG1YkBk4w
DQYJKoZIhvcNAQELBQADggEBACfauRPak93nzbpn8UXqRZqg6iUZch/UfGj9flerMl4TlK5jWulz
Y+rRg+iWkjiLk3O+kKu6GI8TLXB2rsoTnrHYij96Uad5/Ut3Q5F4S0ILgOWVU38l0VZIGGG0CzG1
eLUgN2zjLg++xJuzqijuKQCJb/3+il2MTJ8dcDaXuYcjg7Vt6+EtCBS1SGMVhOTH4Fp50yGWj8ZA
bPF1uuJM+dGLJLheUizCr5J/OBEdENg+DSmrqoZ+kZd76iRaF2CkhboR2394Ft8lFlKQiU0q8lnR
9/kdZ0F0iCcUfhaLaGYWujW7N0LZ+rQuTfuPGLx9zZNeNMWSZi/Pc8vdCO7EnlIxggJtMIICaQIB
ATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhH
bG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwYS+5PXokx35blu9EwDQYJ
YIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIFEZkROJ9qGlUSn3yO6Mo9MXHxt4G2DVWddW
RSXVhOFtMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDcxMzE3
MDgwMFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFl
AwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATAN
BgkqhkiG9w0BAQEFAASCAQCMGbMxEDtjwsZy7AMYdXG/3RZwZqF97sd7ZWAv9JbdA9bOMToclBIY
5zpGi2HmyOZfvFSzFkBOyk1ErZ0wfBUA1W/bX0Cei7P0/CnHwLkfdtxsjYGW2YVRfDGgGn1tf02Y
W10g68cQi9zKCwtyH1BxAKTro7L6P4ETj3XC46RGKJffqM6NJTpUXOthztYZHsabxmyr9O5yA7c8
nvpOX1FaOYbu9hCROfUTL98xg9uFPiN/t5J4vjHT9E86V/QWr1A1f8CjXo/9C3T71geIrmLyzWkV
ry9ONrvs6QabbmZ4oA5TC5G+2EiF3FbGkvTQQLLQsWvmCcXJlXTFSnyq9g5w
--000000000000b5985f05c70447c7--

--===============0628771359975453908==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0628771359975453908==--

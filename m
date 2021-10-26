Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8042A43ABB8
	for <lists+cake@lfdr.de>; Tue, 26 Oct 2021 07:32:52 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E8FFB3CB53;
	Tue, 26 Oct 2021 01:32:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1635226367;
	bh=G/upbwdh57drEDxYe/sIK3jOqYHT1+FV+zINm5hM/ps=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=HCuqYN/tSy48OYSbYU2yYtch92ZqMWcgQWAe26PDT48IgfM4TPlQStOAZgJP25c0I
	 l65ZSEAI4BoYD8EKi49BHGoE0N9yk4tsMqx6mtf+neKrnxBbB1C4RsEQnLbYvZKAg8
	 dto5DP2Qt1qIXud6VJpK2b0BoSuprB3ycccDapg63t8x4cdg2Es/gtt0JvbPk4knVy
	 sxQEU8bvd6Ng/PgzRZV+1iCLQ+tGpqmTInWssNKvlJhvpXbpNTUOERqSZ04aaF7WPA
	 UowOf0RYRJadP4ZhEXVH22gvRUxaETfm5lWIZJxm5C/4AVLVdw+rIAfFANcLJUCqsw
	 5kJtNiDbM4Rmg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2EEDD3CB43
 for <cake@lists.bufferbloat.net>; Tue, 26 Oct 2021 01:32:45 -0400 (EDT)
Received: by mail-ed1-x52c.google.com with SMTP id u13so8769547edy.10
 for <cake@lists.bufferbloat.net>; Mon, 25 Oct 2021 22:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zCTwOPC56dpu+BV1YyiAmCoPyY87GZkCo947IKDaePw=;
 b=UbYB0wSNhzGIDEQ3pSJEJsSLKS7oVHnrx3YeipfoQd54iWcteL/goZQXxXvNb12vFu
 MZVqPU9f4vtin2VM0iu8fZjgxWxZl2h589fF0iKM4de40VyjuAwEcHdriJYWTNPlMjOa
 9s31NWwj23KI8lN1EySY0H444UhS/H1TSIs34=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zCTwOPC56dpu+BV1YyiAmCoPyY87GZkCo947IKDaePw=;
 b=S3kQl9QDwSScBwb0wEi9eBnHH1oSsjv6QqeJvvoe0fpNfO2Pcg4hIIJx0yDEJmUiGa
 bl58R2zD2SSGG6oKmtp5YCO9WL9SFNIvmQzoxvhGhXEHwAnoffAKsSZ9v9sSyoBf9mG2
 C9fO8EakmrW3sMJ9rRoTiVeZzed2DldAdn2+wdamG4pdfzXw24CSNLvvD/bteerNeF2R
 sfUQIfk5qN5T8w7f7hI9x/X7gxaFkqQNL+V/ZqNVfEqYbTTvaSDBtcH6pynEStxN7W6R
 u4w4keYQ1Z4XQbhMwObl81qYTyL90xol2kGLchxNh5islcOH5rJU6O7oQQf8RUtIA9AD
 R6lw==
X-Gm-Message-State: AOAM5304D0k2VYfr84hutBVq9me0LPoSIL86SF7LXrpb45FtpFM2J3gS
 1qUdxajamzcwH2EqxszOJaQg1R5MZGEMs3ZpXrPx5Bccug4Q7X1Ky9BUez/zCiZEeDRxmblhwTg
 4dPBr65GUTBgCfV2ilV12DoFzL0lm
X-Google-Smtp-Source: ABdhPJyTPmkDDQuTMXf/GNb/YD1ZiX02IhisrOUfyydL8+Zj3gKbftgtgiIZ2Kp6qLC+wIn8aXXtska+l5dLtVoRfUc=
X-Received: by 2002:aa7:d5c2:: with SMTP id d2mr2095622eds.56.1635226363935;
 Mon, 25 Oct 2021 22:32:43 -0700 (PDT)
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
 <CAA93jw5QyH4SqKT07hP+skijfimZ0GU=AgLJtkVOQGzKrAkazg@mail.gmail.com>
 <257851.1632110422@turing-police>
 <CABf5zv+yq_oJ7O7YqVeSbZ2Qns3C4hESzNA2V0zNb0L1Zg-mgw@mail.gmail.com>
 <CAHxHggd-4rZ5Nc4raaoRUjjL17MVh8UsNu_5eL8eiLJ=R_68wA@mail.gmail.com>
 <CAHb6Lvp86iw=DQMN8Z+f7yUJu-5pmVUxsM1_1Jw8RJb2XRcMcg@mail.gmail.com>
 <1632680642.869711321@apps.rackspace.com>
 <CAHb6Lvp1dxnbuCNiE5FKC-yRyD6HGkb0H1ZQAm_nSxANwJg2pA@mail.gmail.com>
 <E3373586-EF4C-40DF-885B-0D6134E6EAF1@apple.com>
In-Reply-To: <E3373586-EF4C-40DF-885B-0D6134E6EAF1@apple.com>
Date: Mon, 25 Oct 2021 22:32:33 -0700
Message-ID: <CAHb6Lvomc+2y++qOm9v3OzYCdmWDUEROJb+unybj0Mir0faXQQ@mail.gmail.com>
To: Stuart Cheshire <cheshire@apple.com>
Subject: Re: [Cake] [Make-wifi-fast] TCP_NOTSENT_LOWAT applied to e2e TCP
	msg latency
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
Cc: starlink@lists.bufferbloat.net,
 =?UTF-8?Q?Valdis_Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, codel <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Steve Crocker <steve@shinkuro.com>,
 Vint Cerf <vint@google.com>, Neal Cardwell <ncardwell@google.com>
Content-Type: multipart/mixed; boundary="===============8601861774664891575=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============8601861774664891575==
Content-Type: multipart/alternative; boundary="0000000000008d845105cf3ace31"

--0000000000008d845105cf3ace31
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Stuart this is helpful. I'm measuring the time just before the first
write() (of potentially a burst of writes to achieve a burst size) per a
socket fd's select event occurring when TCP_NOT_SENT_LOWAT being set to a
small value, then sampling the RTT and CWND and providing histograms for
all three, all on that event. I'm not sure the correctness of RTT and CWND
at this sample point. This is a controlled test over 802.11ax and OFDMA
where the TCP acks per the WiFi clients are being scheduled by the AP using
802.11ax trigger frames so the AP is affecting the end/end BDP per
scheduling the transmits and the acks. The AP can grow the BDP or shrink it
based on these scheduling decisions.  From there we're trying to maximize
network power (throughput/delay) for elephant flows and just latency for
mouse flows. (We also plan some RF frequency stuff to per OFDMA) Anyway,
the AP based scheduling along with aggregation and OFDMA makes WiFi
scheduling optimums non-obvious - at least to me - and I'm trying to
provide insights into how an AP is affecting end/end performance.

The more direct approach for e2e TCP latency and network power has been to
measure first write() to final read() and compute the e2e delay. This
requires clock sync on the ends. (We're using ptp4l with GPS OCXO
atomic references for that but this is typically only available in some
labs.)

Bob


On Mon, Oct 25, 2021 at 8:11 PM Stuart Cheshire <cheshire@apple.com> wrote:

> On 21 Oct 2021, at 17:51, Bob McMahon via Make-wifi-fast <
> make-wifi-fast@lists.bufferbloat.net> wrote:
>
> > Hi All,
> >
> > Sorry for the spam. I'm trying to support a meaningful TCP message
> latency w/iperf 2 from the sender side w/o requiring e2e clock
> synchronization. I thought I'd try to use the TCP_NOTSENT_LOWAT event to
> help with this. It seems that this event goes off when the bytes are in
> flight vs have reached the destination network stack. If that's the case,
> then iperf 2 client (sender) may be able to produce the message latency b=
y
> adding the drain time (write start to TCP_NOTSENT_LOWAT) and the sampled
> RTT.
> >
> > Does this seem reasonable?
>
> I=E2=80=99m not 100% sure what you=E2=80=99re asking, but I will try to h=
elp.
>
> When you set TCP_NOTSENT_LOWAT, the TCP implementation won=E2=80=99t repo=
rt your
> endpoint as writable (e.g., via kqueue or epoll) until less than that
> threshold of data remains unsent. It won=E2=80=99t stop you writing more =
bytes if
> you want to, up to the socket send buffer size, but it won=E2=80=99t *ask=
* you for
> more data until the TCP_NOTSENT_LOWAT threshold is reached. In other word=
s,
> the TCP implementation attempts to keep BDP bytes in flight +
> TCP_NOTSENT_LOWAT bytes buffered and ready to go. The BDP of bytes in
> flight is necessary to fill the network pipe and get good throughput. The
> TCP_NOTSENT_LOWAT of bytes buffered and ready to go is provided to give t=
he
> source software some advance notice that the TCP implementation will soon
> be looking for more bytes to send, so that the buffer doesn=E2=80=99t run=
 dry,
> thereby lowering throughput. (The old SO_SNDBUF option conflates both
> =E2=80=9Cbytes in flight=E2=80=9D and =E2=80=9Cbytes buffered and ready t=
o go=E2=80=9D into the same
> number.)
>
> If you wait for the TCP_NOTSENT_LOWAT notification, write a chunk of n
> bytes of data, and then wait for the next TCP_NOTSENT_LOWAT notification,
> that will tell you roughly how long it took n bytes to depart the machine=
.
> You won=E2=80=99t know why, though. The bytes could depart the machine in=
 response
> for acks indicating that the same number of bytes have been accepted at t=
he
> receiver. But the bytes can also depart the machine because CWND is
> growing. Of course, both of those things are usually happening at the sam=
e
> time.
>
> How to use TCP_NOTSENT_LOWAT is explained in this video:
>
> <https://developer.apple.com/videos/play/wwdc2015/719/?time=3D2199>
>
> Later in the same video is a two-minute demo (time offset 42:00 to time
> offset 44:00) showing a =E2=80=9Cbefore and after=E2=80=9D demo illustrat=
ing the dramatic
> difference this makes for screen sharing responsiveness.
>
> <https://developer.apple.com/videos/play/wwdc2015/719/?time=3D2520>
>
> Stuart Cheshire

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

--0000000000008d845105cf3ace31
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Stuart this is helpful. I&#39;m measuring=C2=A0the =
time just before the first write() (of potentially a burst of writes to ach=
ieve a burst size) per a socket fd&#39;s select event occurring when TCP_NO=
T_SENT_LOWAT being set to a small value, then sampling the RTT and CWND and=
 providing histograms for all three, all on that event. I&#39;m not sure th=
e correctness of RTT and CWND at this sample point. This is a controlled te=
st over 802.11ax and OFDMA where the TCP acks per the WiFi clients are bein=
g scheduled by the AP using 802.11ax trigger frames so the AP is affecting =
the end/end BDP per scheduling the transmits and the acks. The AP can grow =
the BDP or shrink it based on these scheduling decisions.=C2=A0 From there =
we&#39;re trying to maximize network power (throughput/delay) for elephant =
flows and just latency for mouse flows. (We also plan some RF frequency stu=
ff to per OFDMA) Anyway, the AP based scheduling along with aggregation=C2=
=A0and OFDMA makes WiFi scheduling optimums non-obvious - at least to me - =
and I&#39;m trying to provide insights into how an AP is affecting end/end =
performance.<br><br>The more direct approach for e2e TCP latency and networ=
k power has been to measure first write() to final read() and compute the e=
2e delay. This requires clock sync on the ends. (We&#39;re using ptp4l with=
 GPS OCXO atomic=C2=A0references=C2=A0for that but this is typically only a=
vailable in some labs.)=C2=A0<br><br>Bob<br><div>=C2=A0</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 25=
, 2021 at 8:11 PM Stuart Cheshire &lt;<a href=3D"mailto:cheshire@apple.com"=
>cheshire@apple.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">On 21 Oct 2021, at 17:51, Bob McMahon via Make-wifi-fast=
 &lt;<a href=3D"mailto:make-wifi-fast@lists.bufferbloat.net" target=3D"_bla=
nk">make-wifi-fast@lists.bufferbloat.net</a>&gt; wrote:<br>
<br>
&gt; Hi All,<br>
&gt; <br>
&gt; Sorry for the spam. I&#39;m trying to support a meaningful TCP message=
 latency w/iperf 2 from the sender side w/o requiring e2e clock synchroniza=
tion. I thought I&#39;d try to use the TCP_NOTSENT_LOWAT event to help with=
 this. It seems that this event goes off when the bytes are in flight vs ha=
ve reached the destination network stack. If that&#39;s the case, then iper=
f 2 client (sender) may be able to produce the message latency by adding th=
e drain time (write start to TCP_NOTSENT_LOWAT) and the sampled RTT.<br>
&gt; <br>
&gt; Does this seem reasonable?<br>
<br>
I=E2=80=99m not 100% sure what you=E2=80=99re asking, but I will try to hel=
p.<br>
<br>
When you set TCP_NOTSENT_LOWAT, the TCP implementation won=E2=80=99t report=
 your endpoint as writable (e.g., via kqueue or epoll) until less than that=
 threshold of data remains unsent. It won=E2=80=99t stop you writing more b=
ytes if you want to, up to the socket send buffer size, but it won=E2=80=99=
t *ask* you for more data until the TCP_NOTSENT_LOWAT threshold is reached.=
 In other words, the TCP implementation attempts to keep BDP bytes in fligh=
t + TCP_NOTSENT_LOWAT bytes buffered and ready to go. The BDP of bytes in f=
light is necessary to fill the network pipe and get good throughput. The TC=
P_NOTSENT_LOWAT of bytes buffered and ready to go is provided to give the s=
ource software some advance notice that the TCP implementation will soon be=
 looking for more bytes to send, so that the buffer doesn=E2=80=99t run dry=
, thereby lowering throughput. (The old SO_SNDBUF option conflates both =E2=
=80=9Cbytes in flight=E2=80=9D and =E2=80=9Cbytes buffered and ready to go=
=E2=80=9D into the same number.)<br>
<br>
If you wait for the TCP_NOTSENT_LOWAT notification, write a chunk of n byte=
s of data, and then wait for the next TCP_NOTSENT_LOWAT notification, that =
will tell you roughly how long it took n bytes to depart the machine. You w=
on=E2=80=99t know why, though. The bytes could depart the machine in respon=
se for acks indicating that the same number of bytes have been accepted at =
the receiver. But the bytes can also depart the machine because CWND is gro=
wing. Of course, both of those things are usually happening at the same tim=
e.<br>
<br>
How to use TCP_NOTSENT_LOWAT is explained in this video:<br>
<br>
&lt;<a href=3D"https://developer.apple.com/videos/play/wwdc2015/719/?time=
=3D2199" rel=3D"noreferrer" target=3D"_blank">https://developer.apple.com/v=
ideos/play/wwdc2015/719/?time=3D2199</a>&gt;<br>
<br>
Later in the same video is a two-minute demo (time offset 42:00 to time off=
set 44:00) showing a =E2=80=9Cbefore and after=E2=80=9D demo illustrating t=
he dramatic difference this makes for screen sharing responsiveness.<br>
<br>
&lt;<a href=3D"https://developer.apple.com/videos/play/wwdc2015/719/?time=
=3D2520" rel=3D"noreferrer" target=3D"_blank">https://developer.apple.com/v=
ideos/play/wwdc2015/719/?time=3D2520</a>&gt;<br>
<br>
Stuart Cheshire</blockquote></div>

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
--0000000000008d845105cf3ace31--

--===============8601861774664891575==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============8601861774664891575==--

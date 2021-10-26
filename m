Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA2943B81B
	for <lists+cake@lfdr.de>; Tue, 26 Oct 2021 19:23:51 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 3984E3CB56;
	Tue, 26 Oct 2021 13:23:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1635269022;
	bh=ytoV1vrUYZGSOJe/7kVhdVl7wQDkhYMSCrCF9P9Mbyo=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=QVHGkG2FdTRz1eXswZvnEUsDMSmG9Ty1cBD+78Rju//fnxsMBrxzznYIT1Q4kEgyD
	 yrKuBmgcipv+mc3gLqJh8GNneES3DB69Q9BQZ3Eiy/6xqOog9gWrcGWxxQMwt5ILv3
	 HSIxkAnZLhMiLRdqta8ek0DHiU8ipKQTp3L/VTL2tS3NcSGJMSdBvgPxf/7W5xDwcJ
	 GhD83eiDd5XLT9k48B8tuUZ3TXZc/w+h9tUI7AZ0CKKA/mqPceh2Sh9hdVBoqw8hji
	 WNhuJA0yWC9mE+t01vpSU5XatgW4Gy8XecimkdTeXCfqMs4RUQoRDqvT+QytqReKfP
	 FmrYmnhnwHMUA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4ECFE3CB44
 for <cake@lists.bufferbloat.net>; Tue, 26 Oct 2021 13:23:40 -0400 (EDT)
Received: by mail-ed1-x52d.google.com with SMTP id 5so16353306edw.7
 for <cake@lists.bufferbloat.net>; Tue, 26 Oct 2021 10:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zcM6M9fQyNtyobcPZyonOjNlTt2hcdCIixXBxrdmvOE=;
 b=RJdOAXeQCcKRuy20wrTuMXAEn69VfDL8kOotMIXUNWGfrQwOnaBZ3fDMoSGODatdJr
 TJO1KN4zWameBawD9x4wCWa8knEXsI7DS9qkqnPRKmMbDEiWLYWBMObrqvc4Xakh3mJC
 FRhm/WRth1IZrwUSdZUsxd+zrCPasMLxRGSJQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zcM6M9fQyNtyobcPZyonOjNlTt2hcdCIixXBxrdmvOE=;
 b=lqGhS8LL4cZWw9Yydex7HjxXCSP4I97AA6TcNJ1egrvCvrw40cX9ooKjeWUNVcPzX0
 EC89E+2EwztGBkjXXyNONaWJHo+bUbFGa2Jws8uy+aylgNnTYnzUh6o3piIhis+90RhG
 w3IZAFLiUB+RyCjcHANiUPBK4LbOVFyakFEZaY+YtUWXNmtt1iM/ztdg06c2sLLf2xr2
 FhLcK1esFJE0dDf4gc5ydSMab337WwhMxzxIlKxlJoG/H74wAqgTWWsn0s9PpiKlH/C0
 YZH4nSlDF9/eiN6PLZZIWIpFwzhzMIlOIaF+g8zY4VgHtlOF7KUkAjyCZu4oSYm4Gk6E
 9CCw==
X-Gm-Message-State: AOAM531Mm8mj22JyBSnh9ZrocgVPQ8GU07s9AK+BV+syteecrpMHZxNF
 ljOqTKtJeULdjXmReOBhFPP5iD7ygcZjdxsDKXLy2RCbRxF4Ueb3gmWZyoa3875YyjSTWKHAl6P
 tpIs3AtxlNIjt3nxGgTFbCG5jql/r
X-Google-Smtp-Source: ABdhPJxmJhw6TKH4tK8qX96wXWO2Mj9qPKYyfyrAUzaEYGt60pkez2omZmW4yahoHCdm2Lw36HwnmKfdkRCTfq9yOr8=
X-Received: by 2002:a17:907:9714:: with SMTP id
 jg20mr12967539ejc.318.1635269019040; 
 Tue, 26 Oct 2021 10:23:39 -0700 (PDT)
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
 <CAHb6Lvomc+2y++qOm9v3OzYCdmWDUEROJb+unybj0Mir0faXQQ@mail.gmail.com>
 <CAKf5G6JpeaxRkbwhuNE5zUb7tX3H4eo0HOuX+C0DCSrcg4Byhg@mail.gmail.com>
In-Reply-To: <CAKf5G6JpeaxRkbwhuNE5zUb7tX3H4eo0HOuX+C0DCSrcg4Byhg@mail.gmail.com>
Date: Tue, 26 Oct 2021 10:23:28 -0700
Message-ID: <CAHb6LvpUBKFGUTnuafGxQAJBfNEO=zS20SvxTJ88e6VJAP54=g@mail.gmail.com>
To: =?UTF-8?Q?Bj=C3=B8rn_Ivar_Teigen?= <bjorn@domos.no>
Subject: Re: [Cake] [Starlink] [Make-wifi-fast] TCP_NOTSENT_LOWAT applied to
 e2e TCP msg latency
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
Cc: Stuart Cheshire <cheshire@apple.com>,
 Cake List <cake@lists.bufferbloat.net>,
 =?UTF-8?Q?Valdis_Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 starlink@lists.bufferbloat.net, codel <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Neal Cardwell <ncardwell@google.com>
Content-Type: multipart/mixed; boundary="===============5167128194302773347=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============5167128194302773347==
Content-Type: multipart/alternative; boundary="000000000000fe418b05cf44bc39"

--000000000000fe418b05cf44bc39
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Bj=C3=B8rn,

I find, when possible, it's preferred to take telemetry data of actual
traffic (or reads and writes) vs a proxy. We had a case where TCP BE was
outperforming TCP w/VI because BE had the most engineering resources
assigned to it and engineers did a better job with BE. Using a proxy
protocol wouldn't have exercised the same logic paths (in this case it was
in the L2 driver) as TCP did. Hence, measuring actual TCP traffic (or
socket reads and socket writes) was needed to flush out the problem. Note:
I also find that network engineers tend to focus on the stack but it's the
e2e at the application level that impacts user experience. Send side bloat
can drive the OWD while the TCP stack's RTT may look fine. For WiFi test &
measurements, we've decided most testing should be using TCP_NOSENT_LOWAT
because it helps mitigate send side bloat which WiFi engineering doesn't
focus on per lack of ability to impact.

Also, I think OWD is under tested and two way based testing can give
incomplete and inaccurate information, particularly with respect to things
like an e2e transport's control loop.  A most obvious example is assuming
1/2 RTT is the same as OWD to/fro. For WiFi this assumption is most always
false. It also false for many residential internet connections where OWD
asymmetry is designed in.

Bob


On Tue, Oct 26, 2021 at 3:04 AM Bj=C3=B8rn Ivar Teigen <bjorn@domos.no> wro=
te:

> Hi Bob,
>
> My name is Bj=C3=B8rn Ivar Teigen and I'm working on modeling and measuri=
ng
> WiFi MAC-layer protocol performance for my PhD.
>
> Is it necessary to measure the latency using the TCP stream itself? I had
> a similar problem in the past, and solved it by doing the latency
> measurements using TWAMP running alongside the TCP traffic. The requireme=
nt
> for this to work is that the TWAMP packets are placed in the same queue(s=
)
> as the TCP traffic, and that the impact of measurement traffic is small
> enough so as not to interfere too much with your TCP results.
> Just my two cents, hope it's helpful.
>
> Bj=C3=B8rn
>
> On Tue, 26 Oct 2021 at 06:32, Bob McMahon <bob.mcmahon@broadcom.com>
> wrote:
>
>> Thanks Stuart this is helpful. I'm measuring the time just before the
>> first write() (of potentially a burst of writes to achieve a burst size)
>> per a socket fd's select event occurring when TCP_NOT_SENT_LOWAT being s=
et
>> to a small value, then sampling the RTT and CWND and providing histogram=
s
>> for all three, all on that event. I'm not sure the correctness of RTT an=
d
>> CWND at this sample point. This is a controlled test over 802.11ax and
>> OFDMA where the TCP acks per the WiFi clients are being scheduled by the=
 AP
>> using 802.11ax trigger frames so the AP is affecting the end/end BDP per
>> scheduling the transmits and the acks. The AP can grow the BDP or shrink=
 it
>> based on these scheduling decisions.  From there we're trying to maximiz=
e
>> network power (throughput/delay) for elephant flows and just latency for
>> mouse flows. (We also plan some RF frequency stuff to per OFDMA) Anyway,
>> the AP based scheduling along with aggregation and OFDMA makes WiFi
>> scheduling optimums non-obvious - at least to me - and I'm trying to
>> provide insights into how an AP is affecting end/end performance.
>>
>> The more direct approach for e2e TCP latency and network power has been
>> to measure first write() to final read() and compute the e2e delay. This
>> requires clock sync on the ends. (We're using ptp4l with GPS OCXO
>> atomic references for that but this is typically only available in some
>> labs.)
>>
>> Bob
>>
>>
>> On Mon, Oct 25, 2021 at 8:11 PM Stuart Cheshire <cheshire@apple.com>
>> wrote:
>>
>>> On 21 Oct 2021, at 17:51, Bob McMahon via Make-wifi-fast <
>>> make-wifi-fast@lists.bufferbloat.net> wrote:
>>>
>>> > Hi All,
>>> >
>>> > Sorry for the spam. I'm trying to support a meaningful TCP message
>>> latency w/iperf 2 from the sender side w/o requiring e2e clock
>>> synchronization. I thought I'd try to use the TCP_NOTSENT_LOWAT event t=
o
>>> help with this. It seems that this event goes off when the bytes are in
>>> flight vs have reached the destination network stack. If that's the cas=
e,
>>> then iperf 2 client (sender) may be able to produce the message latency=
 by
>>> adding the drain time (write start to TCP_NOTSENT_LOWAT) and the sample=
d
>>> RTT.
>>> >
>>> > Does this seem reasonable?
>>>
>>> I=E2=80=99m not 100% sure what you=E2=80=99re asking, but I will try to=
 help.
>>>
>>> When you set TCP_NOTSENT_LOWAT, the TCP implementation won=E2=80=99t re=
port your
>>> endpoint as writable (e.g., via kqueue or epoll) until less than that
>>> threshold of data remains unsent. It won=E2=80=99t stop you writing mor=
e bytes if
>>> you want to, up to the socket send buffer size, but it won=E2=80=99t *a=
sk* you for
>>> more data until the TCP_NOTSENT_LOWAT threshold is reached. In other wo=
rds,
>>> the TCP implementation attempts to keep BDP bytes in flight +
>>> TCP_NOTSENT_LOWAT bytes buffered and ready to go. The BDP of bytes in
>>> flight is necessary to fill the network pipe and get good throughput. T=
he
>>> TCP_NOTSENT_LOWAT of bytes buffered and ready to go is provided to give=
 the
>>> source software some advance notice that the TCP implementation will so=
on
>>> be looking for more bytes to send, so that the buffer doesn=E2=80=99t r=
un dry,
>>> thereby lowering throughput. (The old SO_SNDBUF option conflates both
>>> =E2=80=9Cbytes in flight=E2=80=9D and =E2=80=9Cbytes buffered and ready=
 to go=E2=80=9D into the same
>>> number.)
>>>
>>> If you wait for the TCP_NOTSENT_LOWAT notification, write a chunk of n
>>> bytes of data, and then wait for the next TCP_NOTSENT_LOWAT notificatio=
n,
>>> that will tell you roughly how long it took n bytes to depart the machi=
ne.
>>> You won=E2=80=99t know why, though. The bytes could depart the machine =
in response
>>> for acks indicating that the same number of bytes have been accepted at=
 the
>>> receiver. But the bytes can also depart the machine because CWND is
>>> growing. Of course, both of those things are usually happening at the s=
ame
>>> time.
>>>
>>> How to use TCP_NOTSENT_LOWAT is explained in this video:
>>>
>>> <https://developer.apple.com/videos/play/wwdc2015/719/?time=3D2199>
>>>
>>> Later in the same video is a two-minute demo (time offset 42:00 to time
>>> offset 44:00) showing a =E2=80=9Cbefore and after=E2=80=9D demo illustr=
ating the dramatic
>>> difference this makes for screen sharing responsiveness.
>>>
>>> <https://developer.apple.com/videos/play/wwdc2015/719/?time=3D2520>
>>>
>>> Stuart Cheshire
>>
>>
>> This electronic communication and the information and any files
>> transmitted with it, or attached to it, are confidential and are intende=
d
>> solely for the use of the individual or entity to whom it is addressed a=
nd
>> may contain information that is confidential, legally privileged, protec=
ted
>> by privacy laws, or otherwise restricted from disclosure to anyone else.=
 If
>> you are not the intended recipient or the person responsible for deliver=
ing
>> the e-mail to the intended recipient, you are hereby notified that any u=
se,
>> copying, distributing, dissemination, forwarding, printing, or copying o=
f
>> this e-mail is strictly prohibited. If you received this e-mail in error=
,
>> please return the e-mail to the sender, delete it from your computer, an=
d
>> destroy any printed copy of it.
>> _______________________________________________
>> Starlink mailing list
>> Starlink@lists.bufferbloat.net
>> https://lists.bufferbloat.net/listinfo/starlink
>>
>
>
> --
> Bj=C3=B8rn Ivar Teigen
> Head of Research
> +47 47335952 | bjorn@domos.no <name@domos.no> | www.domos.no
> WiFi Slicing by Domos
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

--000000000000fe418b05cf44bc39
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Bj=C3=B8rn,<div><br>I find, when possible, it&#39;s pre=
ferred to take telemetry data of actual traffic (or reads and writes) vs a =
proxy. We had a case where TCP BE was outperforming=C2=A0TCP w/VI because B=
E had the most engineering resources assigned to it and engineers did a bet=
ter job with BE. Using a proxy protocol wouldn&#39;t have exercised the sam=
e logic paths (in this case it was in the L2 driver) as TCP did. Hence, mea=
suring actual TCP traffic (or socket reads and socket writes) was needed to=
 flush out the problem. Note: I also find that network engineers tend to fo=
cus on the stack but it&#39;s the e2e at the application=C2=A0level that im=
pacts user experience. Send side bloat can drive the OWD while the TCP stac=
k&#39;s RTT may look fine. For WiFi test &amp; measurements, we&#39;ve deci=
ded most testing=C2=A0should be using TCP_NOSENT_LOWAT because it helps mit=
igate send side bloat which WiFi engineering doesn&#39;t focus on per lack =
of ability to impact.<br><br>Also, I think OWD is under tested and two way =
based testing can give incomplete and inaccurate information, particularly =
with respect to things like an e2e transport&#39;s control loop.=C2=A0 A mo=
st obvious example is assuming 1/2 RTT is the same as OWD to/fro. For WiFi =
this assumption is most always false. It also false for many residential in=
ternet connections where OWD asymmetry is designed in.<br><br>Bob</div><div=
><br></div></div><div dir=3D"ltr"></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 26, 2021 at 3:04 AM Bj=C3=B8r=
n Ivar Teigen &lt;<a href=3D"mailto:bjorn@domos.no" target=3D"_blank">bjorn=
@domos.no</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>Hi Bob,</div><div><br></div><div>My name i=
s Bj=C3=B8rn Ivar Teigen and I&#39;m working on modeling and measuring WiFi=
 MAC-layer protocol performance for my PhD.</div><div><br></div><div>Is it =
necessary to measure the latency using the TCP stream itself? I had a simil=
ar problem in the past, and solved it by doing the latency measurements usi=
ng TWAMP running alongside the TCP traffic. The requirement for this to wor=
k is that the TWAMP packets are placed in the same queue(s) as the TCP traf=
fic, and that the impact of measurement traffic is small enough so as not t=
o interfere too much with your TCP results.</div><div>Just my two cents, ho=
pe it&#39;s helpful.</div><div><br></div><div>Bj=C3=B8rn<br></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 2=
6 Oct 2021 at 06:32, Bob McMahon &lt;<a href=3D"mailto:bob.mcmahon@broadcom=
.com" target=3D"_blank">bob.mcmahon@broadcom.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Thanks Stu=
art this is helpful. I&#39;m measuring=C2=A0the time just before the first =
write() (of potentially a burst of writes to achieve a burst size) per a so=
cket fd&#39;s select event occurring when TCP_NOT_SENT_LOWAT being set to a=
 small value, then sampling the RTT and CWND and providing histograms for a=
ll three, all on that event. I&#39;m not sure the correctness of RTT and CW=
ND at this sample point. This is a controlled test over 802.11ax and OFDMA =
where the TCP acks per the WiFi clients are being scheduled by the AP using=
 802.11ax trigger frames so the AP is affecting the end/end BDP per schedul=
ing the transmits and the acks. The AP can grow the BDP or shrink it based =
on these scheduling decisions.=C2=A0 From there we&#39;re trying to maximiz=
e network power (throughput/delay) for elephant flows and just latency for =
mouse flows. (We also plan some RF frequency stuff to per OFDMA) Anyway, th=
e AP based scheduling along with aggregation=C2=A0and OFDMA makes WiFi sche=
duling optimums non-obvious - at least to me - and I&#39;m trying to provid=
e insights into how an AP is affecting end/end performance.<br><br>The more=
 direct approach for e2e TCP latency and network power has been to measure =
first write() to final read() and compute the e2e delay. This requires cloc=
k sync on the ends. (We&#39;re using ptp4l with GPS OCXO atomic=C2=A0refere=
nces=C2=A0for that but this is typically only available in some labs.)=C2=
=A0<br><br>Bob<br><div>=C2=A0</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 25, 2021 at 8:11 PM Stuart C=
heshire &lt;<a href=3D"mailto:cheshire@apple.com" target=3D"_blank">cheshir=
e@apple.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On 21 Oct 2021, at 17:51, Bob McMahon via Make-wifi-fast &lt;<a =
href=3D"mailto:make-wifi-fast@lists.bufferbloat.net" target=3D"_blank">make=
-wifi-fast@lists.bufferbloat.net</a>&gt; wrote:<br>
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
 copy of it.</font></span>_______________________________________________<b=
r>
Starlink mailing list<br>
<a href=3D"mailto:Starlink@lists.bufferbloat.net" target=3D"_blank">Starlin=
k@lists.bufferbloat.net</a><br>
<a href=3D"https://lists.bufferbloat.net/listinfo/starlink" rel=3D"noreferr=
er" target=3D"_blank">https://lists.bufferbloat.net/listinfo/starlink</a><b=
r>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><span style=3D"ba=
ckground-color:rgb(255,255,255)"><span style=3D"color:rgb(0,0,0)"><font siz=
e=3D"2">Bj=C3=B8rn Ivar Teigen</font></span></span></div><div><span style=
=3D"background-color:rgb(255,255,255)"><span style=3D"color:rgb(0,0,0)"><fo=
nt size=3D"2">Head of Research<br></font></span></span></div><span style=3D=
"background-color:rgb(255,255,255)"><span style=3D"color:rgb(0,0,0)"><font =
size=3D"2"><span style=3D"font-family:arial,sans-serif"><span style=3D"font=
-style:normal;font-weight:400;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;white-space:normal;word-spacing:0px;display:i=
nline;float:none">+47 47335952 |<span> </span></span><a href=3D"mailto:name=
@domos.no" rel=3D"noopener noreferrer" style=3D"text-decoration:none;font-s=
tyle:normal;font-weight:400;letter-spacing:normal;text-align:start;text-ind=
ent:0px;text-transform:none;white-space:normal;word-spacing:0px" target=3D"=
_blank">bjorn@domos.no<span></span></a><span style=3D"font-style:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;display:inline;float:none"=
><span>=C2=A0</span>|<span>=C2=A0</span></span><a href=3D"http://www.domos.=
no/" rel=3D"noopener noreferrer" style=3D"text-decoration:none;font-style:n=
ormal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px" target=3D"_blank=
">www.domos.no</a></span><br style=3D"font-family:Slack-Lato,appleLogo,sans=
-serif;font-style:normal;font-weight:400;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0p=
x"><span style=3D"font-family:arial,sans-serif"><span style=3D"font-style:n=
ormal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px;display:inline;fl=
oat:none">WiFi Slicing by Domos</span></span></font></span></span></div></d=
iv></div></div></div></div>
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
--000000000000fe418b05cf44bc39--

--===============5167128194302773347==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5167128194302773347==--

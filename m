Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id B139743AFAD
	for <lists+cake@lfdr.de>; Tue, 26 Oct 2021 12:04:46 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2D62A3CB44;
	Tue, 26 Oct 2021 06:04:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1635242685;
	bh=gNx4EQjQrk2Un0u5OxCMEGiiwxweb5ZqSw7CKDL1MuU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ROXoV9GrKimiHD8M4Fre2u70HP33HguwXa37m4isCnG78Q0M1g+nRi9AGEmuthuz2
	 JJ1offP7FuK95HIk8UnWi4DUGInE6wMvuoxQuxO7O0oA9/SIlBJhrpQ0VtKVaF2HOn
	 YJL+RzFcx9lxDT6bshhl7LU/dAUqZAeN+PbZleFSWAlpKCdPq+0PTRI3KYCXFCdwD1
	 0Hc2ssZzh+5qtWf+3EVsqzi+2RiMJIV/YD3yS/TnwHmlsNv+IuR4TfIl65MJAHX8gY
	 fPp9KsEo+tMBG5jHn0KIZWmjXE25TTyzDFrpuCofTD5PZ94pDQvR34qGB0qYLXkdf+
	 bvZgSrhmimAIQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 2E1403CB47
 for <cake@lists.bufferbloat.net>; Tue, 26 Oct 2021 06:04:43 -0400 (EDT)
Received: by mail-lf1-x133.google.com with SMTP id j21so17902617lfe.0
 for <cake@lists.bufferbloat.net>; Tue, 26 Oct 2021 03:04:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=domos-no.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MLqqQ61/mOX2MmeyMngimmwtMFDm6CZokqAifA+BZHw=;
 b=JvBGAj8teisfxkbWXGVsc7RyxQeSnYr1K31mTZPQSnkKBeXNjForLlF5jcF/xX8dvg
 qa9AHGq36CdfRe9N3WyOBLGBW8FsNF802p+qI0nZdIqRHRorXV/pQRw8OBMrM2iP4k5H
 yn93E3tALaUvec2YmQrthpnPJ0cPJ/cW1I+/y0XnQb2wYGkSmKY6wf3034PjF6CsMBOP
 nfB51m6omMTwsXzoft1gLEtbwOc2Pd72oJvkb/leOXYexEAJlsRtU035CzUVbn+D4U9J
 6R+C85jk4CtgS1ccgmH3pkBxTO/jLntfLWi3GRdoFZyeQ//54+D4kbdgr9CYyz90TxWM
 OhjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MLqqQ61/mOX2MmeyMngimmwtMFDm6CZokqAifA+BZHw=;
 b=Nxh/q2mXAFXNGrV6B+9jMkq+H6cLe7/teuKeQFDllVaLC8jUqyONDStZYQNwxIJwKj
 Vs+cM9p3J+PTuABxtplbfQ6Aetj6C5LSsdhR357gH39Tfls28OwSwKgEx/TWdlvKc53e
 KJGxSJcue15RPO0+agmE2Z7EnPv8wGjVMuEZeqIW6FkgrukzynH/C79xTD7oJiUNZjCo
 kreuks+0O9FwLrcPl8J98WKtBq6I4qQygTFx/LbvQE5wUnlr2cyH8eC6yiOSToXD/+CZ
 kmgU7KvGXUfcef79szRemt5m/B22Sd/lIrW6qL3wxiDaAhdfVcOw5ID3V0tCTuOapgfz
 Swlg==
X-Gm-Message-State: AOAM533M3WBGVP5+gBwO96DrnhW+2Qg3s/TVrqH9PO6k1j7VvArEx2cI
 0eA07rVWkwVDfoF70vM47ziFwPdOdTZaS75YJO8rFg==
X-Google-Smtp-Source: ABdhPJwYOIuLtXvXCOWCHnyQdTltDAF28/cutJW2nh1lnoZLy7OCGyvFuKbgKl3iAZ+68kvxkY8LFePXJrkkt4ly68Q=
X-Received: by 2002:a05:6512:32a9:: with SMTP id
 q9mr21288734lfe.58.1635242681741; 
 Tue, 26 Oct 2021 03:04:41 -0700 (PDT)
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
In-Reply-To: <CAHb6Lvomc+2y++qOm9v3OzYCdmWDUEROJb+unybj0Mir0faXQQ@mail.gmail.com>
From: =?UTF-8?Q?Bj=C3=B8rn_Ivar_Teigen?= <bjorn@domos.no>
Date: Tue, 26 Oct 2021 11:04:30 +0100
Message-ID: <CAKf5G6JpeaxRkbwhuNE5zUb7tX3H4eo0HOuX+C0DCSrcg4Byhg@mail.gmail.com>
To: Bob McMahon <bob.mcmahon@broadcom.com>
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
Cc: Stuart Cheshire <cheshire@apple.com>,
 Cake List <cake@lists.bufferbloat.net>,
 =?UTF-8?Q?Valdis_Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 starlink@lists.bufferbloat.net, codel <codel@lists.bufferbloat.net>,
 cerowrt-devel <cerowrt-devel@lists.bufferbloat.net>,
 bloat <bloat@lists.bufferbloat.net>, Neal Cardwell <ncardwell@google.com>
Content-Type: multipart/mixed; boundary="===============0502886409485481022=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============0502886409485481022==
Content-Type: multipart/alternative; boundary="0000000000002acbc505cf3e9b74"

--0000000000002acbc505cf3e9b74
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Bob,

My name is Bj=C3=B8rn Ivar Teigen and I'm working on modeling and measuring=
 WiFi
MAC-layer protocol performance for my PhD.

Is it necessary to measure the latency using the TCP stream itself? I had a
similar problem in the past, and solved it by doing the latency
measurements using TWAMP running alongside the TCP traffic. The requirement
for this to work is that the TWAMP packets are placed in the same queue(s)
as the TCP traffic, and that the impact of measurement traffic is small
enough so as not to interfere too much with your TCP results.
Just my two cents, hope it's helpful.

Bj=C3=B8rn

On Tue, 26 Oct 2021 at 06:32, Bob McMahon <bob.mcmahon@broadcom.com> wrote:

> Thanks Stuart this is helpful. I'm measuring the time just before the
> first write() (of potentially a burst of writes to achieve a burst size)
> per a socket fd's select event occurring when TCP_NOT_SENT_LOWAT being se=
t
> to a small value, then sampling the RTT and CWND and providing histograms
> for all three, all on that event. I'm not sure the correctness of RTT and
> CWND at this sample point. This is a controlled test over 802.11ax and
> OFDMA where the TCP acks per the WiFi clients are being scheduled by the =
AP
> using 802.11ax trigger frames so the AP is affecting the end/end BDP per
> scheduling the transmits and the acks. The AP can grow the BDP or shrink =
it
> based on these scheduling decisions.  From there we're trying to maximize
> network power (throughput/delay) for elephant flows and just latency for
> mouse flows. (We also plan some RF frequency stuff to per OFDMA) Anyway,
> the AP based scheduling along with aggregation and OFDMA makes WiFi
> scheduling optimums non-obvious - at least to me - and I'm trying to
> provide insights into how an AP is affecting end/end performance.
>
> The more direct approach for e2e TCP latency and network power has been t=
o
> measure first write() to final read() and compute the e2e delay. This
> requires clock sync on the ends. (We're using ptp4l with GPS OCXO
> atomic references for that but this is typically only available in some
> labs.)
>
> Bob
>
>
> On Mon, Oct 25, 2021 at 8:11 PM Stuart Cheshire <cheshire@apple.com>
> wrote:
>
>> On 21 Oct 2021, at 17:51, Bob McMahon via Make-wifi-fast <
>> make-wifi-fast@lists.bufferbloat.net> wrote:
>>
>> > Hi All,
>> >
>> > Sorry for the spam. I'm trying to support a meaningful TCP message
>> latency w/iperf 2 from the sender side w/o requiring e2e clock
>> synchronization. I thought I'd try to use the TCP_NOTSENT_LOWAT event to
>> help with this. It seems that this event goes off when the bytes are in
>> flight vs have reached the destination network stack. If that's the case=
,
>> then iperf 2 client (sender) may be able to produce the message latency =
by
>> adding the drain time (write start to TCP_NOTSENT_LOWAT) and the sampled
>> RTT.
>> >
>> > Does this seem reasonable?
>>
>> I=E2=80=99m not 100% sure what you=E2=80=99re asking, but I will try to =
help.
>>
>> When you set TCP_NOTSENT_LOWAT, the TCP implementation won=E2=80=99t rep=
ort your
>> endpoint as writable (e.g., via kqueue or epoll) until less than that
>> threshold of data remains unsent. It won=E2=80=99t stop you writing more=
 bytes if
>> you want to, up to the socket send buffer size, but it won=E2=80=99t *as=
k* you for
>> more data until the TCP_NOTSENT_LOWAT threshold is reached. In other wor=
ds,
>> the TCP implementation attempts to keep BDP bytes in flight +
>> TCP_NOTSENT_LOWAT bytes buffered and ready to go. The BDP of bytes in
>> flight is necessary to fill the network pipe and get good throughput. Th=
e
>> TCP_NOTSENT_LOWAT of bytes buffered and ready to go is provided to give =
the
>> source software some advance notice that the TCP implementation will soo=
n
>> be looking for more bytes to send, so that the buffer doesn=E2=80=99t ru=
n dry,
>> thereby lowering throughput. (The old SO_SNDBUF option conflates both
>> =E2=80=9Cbytes in flight=E2=80=9D and =E2=80=9Cbytes buffered and ready =
to go=E2=80=9D into the same
>> number.)
>>
>> If you wait for the TCP_NOTSENT_LOWAT notification, write a chunk of n
>> bytes of data, and then wait for the next TCP_NOTSENT_LOWAT notification=
,
>> that will tell you roughly how long it took n bytes to depart the machin=
e.
>> You won=E2=80=99t know why, though. The bytes could depart the machine i=
n response
>> for acks indicating that the same number of bytes have been accepted at =
the
>> receiver. But the bytes can also depart the machine because CWND is
>> growing. Of course, both of those things are usually happening at the sa=
me
>> time.
>>
>> How to use TCP_NOTSENT_LOWAT is explained in this video:
>>
>> <https://developer.apple.com/videos/play/wwdc2015/719/?time=3D2199>
>>
>> Later in the same video is a two-minute demo (time offset 42:00 to time
>> offset 44:00) showing a =E2=80=9Cbefore and after=E2=80=9D demo illustra=
ting the dramatic
>> difference this makes for screen sharing responsiveness.
>>
>> <https://developer.apple.com/videos/play/wwdc2015/719/?time=3D2520>
>>
>> Stuart Cheshire
>
>
> This electronic communication and the information and any files
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
> destroy any printed copy of it.
> _______________________________________________
> Starlink mailing list
> Starlink@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/starlink
>


--=20
Bj=C3=B8rn Ivar Teigen
Head of Research
+47 47335952 | bjorn@domos.no <name@domos.no> | www.domos.no
WiFi Slicing by Domos

--0000000000002acbc505cf3e9b74
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Bob,</div><div><br></div><div>My name is Bj=C3=B8r=
n Ivar Teigen and I&#39;m working on modeling and measuring WiFi MAC-layer =
protocol performance for my PhD.</div><div><br></div><div>Is it necessary t=
o measure the latency using the TCP stream itself? I had a similar problem =
in the past, and solved it by doing the latency measurements using TWAMP ru=
nning alongside the TCP traffic. The requirement for this to work is that t=
he TWAMP packets are placed in the same queue(s) as the TCP traffic, and th=
at the impact of measurement traffic is small enough so as not to interfere=
 too much with your TCP results.</div><div>Just my two cents, hope it&#39;s=
 helpful.</div><div><br></div><div>Bj=C3=B8rn<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 26 Oct 2021 =
at 06:32, Bob McMahon &lt;<a href=3D"mailto:bob.mcmahon@broadcom.com">bob.m=
cmahon@broadcom.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr">Thanks Stuart this is helpful. I&#39;m =
measuring=C2=A0the time just before the first write() (of potentially a bur=
st of writes to achieve a burst size) per a socket fd&#39;s select event oc=
curring when TCP_NOT_SENT_LOWAT being set to a small value, then sampling t=
he RTT and CWND and providing histograms for all three, all on that event. =
I&#39;m not sure the correctness of RTT and CWND at this sample point. This=
 is a controlled test over 802.11ax and OFDMA where the TCP acks per the Wi=
Fi clients are being scheduled by the AP using 802.11ax trigger frames so t=
he AP is affecting the end/end BDP per scheduling the transmits and the ack=
s. The AP can grow the BDP or shrink it based on these scheduling decisions=
.=C2=A0 From there we&#39;re trying to maximize network power (throughput/d=
elay) for elephant flows and just latency for mouse flows. (We also plan so=
me RF frequency stuff to per OFDMA) Anyway, the AP based scheduling along w=
ith aggregation=C2=A0and OFDMA makes WiFi scheduling optimums non-obvious -=
 at least to me - and I&#39;m trying to provide insights into how an AP is =
affecting end/end performance.<br><br>The more direct approach for e2e TCP =
latency and network power has been to measure first write() to final read()=
 and compute the e2e delay. This requires clock sync on the ends. (We&#39;r=
e using ptp4l with GPS OCXO atomic=C2=A0references=C2=A0for that but this i=
s typically only available in some labs.)=C2=A0<br><br>Bob<br><div>=C2=A0</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Mon, Oct 25, 2021 at 8:11 PM Stuart Cheshire &lt;<a href=3D"mailto:c=
heshire@apple.com" target=3D"_blank">cheshire@apple.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">On 21 Oct 2021, at 1=
7:51, Bob McMahon via Make-wifi-fast &lt;<a href=3D"mailto:make-wifi-fast@l=
ists.bufferbloat.net" target=3D"_blank">make-wifi-fast@lists.bufferbloat.ne=
t</a>&gt; wrote:<br>
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
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr=
"><div><span style=3D"background-color:rgb(255,255,255)"><span style=3D"col=
or:rgb(0,0,0)"><font size=3D"2">Bj=C3=B8rn Ivar Teigen</font></span></span>=
</div><div><span style=3D"background-color:rgb(255,255,255)"><span style=3D=
"color:rgb(0,0,0)"><font size=3D"2">Head of Research<br></font></span></spa=
n></div><span style=3D"background-color:rgb(255,255,255)"><span style=3D"co=
lor:rgb(0,0,0)"><font size=3D"2"><span style=3D"font-family:arial,sans-seri=
f"><span style=3D"font-style:normal;font-weight:400;letter-spacing:normal;t=
ext-align:start;text-indent:0px;text-transform:none;white-space:normal;word=
-spacing:0px;display:inline;float:none">+47 47335952 |<span> </span></span>=
<a href=3D"mailto:name@domos.no" rel=3D"noopener noreferrer" style=3D"text-=
decoration:none;font-style:normal;font-weight:400;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px" target=3D"_blank">bjorn@domos.no<span></span></a><span style=3D=
"font-style:normal;font-weight:400;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;disp=
lay:inline;float:none"><span>=C2=A0</span>|<span>=C2=A0</span></span><a hre=
f=3D"http://www.domos.no/" rel=3D"noopener noreferrer" style=3D"text-decora=
tion:none;font-style:normal;font-weight:400;letter-spacing:normal;text-alig=
n:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px" target=3D"_blank">www.domos.no</a></span><br style=3D"font-family:Sla=
ck-Lato,appleLogo,sans-serif;font-style:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;white-space:=
normal;word-spacing:0px"><span style=3D"font-family:arial,sans-serif"><span=
 style=3D"font-style:normal;font-weight:400;letter-spacing:normal;text-alig=
n:start;text-indent:0px;text-transform:none;white-space:normal;word-spacing=
:0px;display:inline;float:none">WiFi Slicing by Domos</span></span></font><=
/span></span></div></div></div></div></div></div>

--0000000000002acbc505cf3e9b74--

--===============0502886409485481022==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============0502886409485481022==--

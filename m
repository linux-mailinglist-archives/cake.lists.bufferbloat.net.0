Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFF85FB940
	for <lists+cake@lfdr.de>; Tue, 11 Oct 2022 19:26:44 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 391F33CB47;
	Tue, 11 Oct 2022 13:26:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1665509197;
	bh=y7Ba61HGxQ4AEJh9ftWzZhdkcwwKnUyl+tKhRaqztC8=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=bCuBZa8JNd9/maynI7mtjjHVHj++UggSFW5a8RDT+9SBW5DX5PkKbozJRqN5ACXnw
	 glh2y+Ai47bBp5Amjw3EMgEibpTXDE4bg7S8AAELm9UoWqyP8ferg9e1cEQdWcCqRH
	 X4+dHXfEHQ6cP59P6M7EH8K9KTRU0HWSAXJf5zT+VyMgApyWoEymtrL1TSKG5DGsid
	 D82rDSiWVwKxU7NatZacmS3zRb78/D0kjX04VLOK8HrgPu2UXH3ybMYPFZCglpATxQ
	 EPgWAubMMOE3CAK7LaZ61QzjgPTitMEkwGke0OEbvjXgSg2GDr29cSJYR9vjsTG3Ky
	 MVqTz0K9rBNLA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 77A8D3B2A4;
 Tue, 11 Oct 2022 13:26:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1665509191;
 bh=qO4kSYMnKQyFjQWKYDGcVSsgsnuQrak4MHc5A1x3Qmg=;
 h=X-UI-Sender-Class:Date:From:To:CC:Subject:In-Reply-To:References;
 b=RDAiht9i74H0tynpiq4CPigYaqqVBJCkpfK33PSd3el1fQSqfogJ8FhIrbZxV/xhl
 QGEqcthsMllKIaigJeRKUIkAIJILa8LqjV+UYIXraFoA0y7hheq1hdqoibrOUYNG+p
 2L0h8bB1KHcu02B0lXW/in1yfhrfwCfRk2rZHMdw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [127.0.0.1] ([80.187.111.72]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MHG8g-1ovUJj1D8K-00DDJK; Tue, 11
 Oct 2022 19:26:31 +0200
Date: Tue, 11 Oct 2022 19:26:28 +0200
To: Bob McMahon <bob.mcmahon@broadcom.com>
User-Agent: K-9 Mail for Android
In-Reply-To: <CAHb6Lvpw9SV-Ybqcj+2ucQOiLhC8oR=fqU91MsuPhiwk8XCUpA@mail.gmail.com>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <CE784DAD-5012-4FD3-9E2D-B931CBF1EBF8@telenor.no>
 <E615B656-9AAA-4AD4-8507-C461659846C5@gmx.de>
 <BB4CAEC2-669B-4595-BE6A-26D365B70535@telenor.no>
 <72674884-9E0D-4645-B5F5-C593CC45A8F0@gmx.de>
 <CAHb6LvqHNv_R2Asn944Kx91Cud5J3XSM-c+PcK8Bz19uaMDynw@mail.gmail.com>
 <q06231q2-n7qn-345s-np6r-p5717713q3po@ynat.uz>
 <CAHb6Lvqbj0MDhWvLaEk8Hbr_vZwDs1NdCj1X9Xvxp+x+Mbs0Vw@mail.gmail.com>
 <ACE51BEA-99AF-4CC9-B2A7-695C8F8B5946@gmx.de>
 <CAHb6Lvpw9SV-Ybqcj+2ucQOiLhC8oR=fqU91MsuPhiwk8XCUpA@mail.gmail.com>
Message-ID: <C9F3E5F0-490A-4E7A-AE43-4529DD18C590@gmx.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:wjE7SgvdAGmxgrbPGWE3pCpx5cLkednKqwHHPt5etPuK94LGOQj
 4iUWWK8dT4ll69Nb+lH2YLTTek0/5cAB7u1YjWOPgL8tN+v5IHnvETLnoLycihQmhBYYSwg
 lQ8tLlY4TVjy6VzApuJfsYHbtypoS3h9NUY/V65UXJ9JXhhx5eb9/lnm2rR6xuwKWUQW3p3
 akEKm3myWnH5Te1OsdMKw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:rmpdQfRIwDs=:2L1OiGvL+UJjBmITbT3nvq
 RgqoyUSCJtBfg6SX2KnBbVQWK4wKJA93QAC8RS1Pj74W8YjQDILVJqRT4+FY3SA/Tfyj2sQZa
 KV/wO2+xm/gCl6O5QQU5CyqpgrPbIagSfRrYBy0QeYKKHJwLf46Pv85Xk/aH2PbB31+78OdJa
 Du6j/Xddr9OADhyVZ54B/cjnvTi8YaF61YhWlQSHJh02vWyWTxvMipJlYweKBQaT25PnHGRGY
 dKfEWloxvN8Rs/V5XJ3BRKTXPnlJDZ3HQYsXCZbifNm1vmPKA5JY2gtUdOLuVA3KTJ++WkiHh
 JaxoGH/PjX9n0e8Eenmcy076B3vDglmJg3J0wBLX7NKmpVGzHGrSa1MTilKJDyqHg5mRDddiE
 MqEwRBZfcfpiVBCtecz+25X3R+uMjfJSC9NA2DYo8VSzgzsjMg0bPQI9uEevT+Ybie84/giPL
 IPjaQHMCjkfH2gp6WuV/+/ns6XC3KHTpCM4v+2eozGJNCDbKAY9StwEqfcEC9FPfQSBT+zA/r
 l+kCp1cPHe+XrBdIsV8tXmd6AsLxqD9+Lmapk9Ppuk9g+Fm9vAil5H1qiu34SMtU51AeRiU4n
 0ClRjZLvMks93vpHHDgXGroNC5f2YwOpy/xXV4Y+e+Ec/k5Dc7RtqgqpQ4dL8rc4gtywytONT
 y1cSojl0TNU2hZJ8tjOC+iumccwfnh8h2T3UZeK7hMouIo7Qcs5ZVUIBqaDAmuH+V3eyrbG9o
 OFKtwlgEmuIR46RlcRUa6cj40v7liOCOrrRjwi1C5MFyCu5Pt8O+T2r/uVZpa20wuX6vBsueu
 xgTcF94kZDYRnWsiHLOzdxlsENJ5x0NpqAIrPggx93mDak6HJpkvzauIPAnJJ25P2HfJLsYHe
 8lZXxoxSYH7XtzQ5Z8zD+6uEodChSV6/Vqb5pSt6a8dTfT5NdQBmgvkZdU1EFtZg5fhACqagK
 1lkugdQ0/jORLJsLFIQFm5zgIO+gkBEbkNmwe11BNvNq0580DOPFgUWa8gej70Ls8mcjO7NNY
 U97tVzRX04zkuYVzEgbQE2SNrgfB7X3DsODXYOy7rz5uGO3aFNnSMq8Z15SRHviTAbkYDM8tq
 H9DoXYAYVh2ytvBX0qIcVuLy6EPopuKzppVwC+jiFA2p4HTFe+BOUrlZibX5n49juzD/DzKIr
 c55am3EPHQtC1i075L5927rI0k2FNRxQ3ucGlaFXORT9A1y8+dyNX+MLy+rQ2sAJqDsgBZ8Zg
 M88CB/oGVUdKG+hfn5upwRs10kDtYwWnacaaYhhpSwnIoJ+zqGAM490MZOGkwjb4YmRzE0r5t
 I9thElXnurPC7ibfnUA+6+WM/+GFRBGFmrPPt83ZoKaIs9048jZMhSGTKUS4UgyFjTEPEux5s
 V6A8GXarQD3JF8PdacBZnzbYYLF4zxV1YTxZRgGUjmuBkGznLvxSmzCPYYrVhmcbITt16JrB1
 EHK7UbkH096pw67QCp34ux30BpIvfo50d2xxsN/bDzuw8APCFyQaHHFJoV+O+FU9VsTqa18sv
 KDga77Sl6aICg9f/RJmZM/+FN3JhIci13F4fom35geYLk
Subject: Re: [Cake] [Bloat] [Make-wifi-fast] The most wonderful video ever
	about bufferbloat
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
From: Sebastian Moeller via Cake <cake@lists.bufferbloat.net>
Reply-To: Sebastian Moeller <moeller0@gmx.de>
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Rpm <rpm@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============4448306175283398965=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============4448306175283398965==
Content-Type: multipart/alternative;
 boundary=----L9DKDX08KKWFJ9ZOWDA2BDVIJEM6DS
Content-Transfer-Encoding: 7bit

------L9DKDX08KKWFJ9ZOWDA2BDVIJEM6DS
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Bob,

Sweet, thanks! Will go and set this up in my home network, but that will t=
ake a while=2E Also any proposal how to convert the output into some graphs=
 by any chance?

Regards
        Sebastian

On 11 October 2022 18:58:05 CEST, Bob McMahon <bob=2Emcmahon@broadcom=2Eco=
m> wrote:
>> Saturate a link in both directions simultaneously with multiple greedy
>flows while measuring load-dependent latency changes for small isochronou=
s
>probe flows=2E
>
>This functionality is released in iperf 2=2E1=2E8 per the bounceback feat=
ure
>but, unfortunately, OpenWRT doesn't maintain iperf 2 as a package anymore
>and uses 2=2E0=2E13
>CLIENT SPECIFIC OPTIONS*--bounceback[=3D**n**]*run a TCP bounceback or rp=
s
>test with optional number writes in a burst per value of n=2E The default=
 is
>ten writes every period and the default period is one second (Note: set
>size with -l or --len which defaults to 100 bytes)
>*--bounceback-congest[=3Dup|down|bidir][*,*n**]*request a concurrent work=
ing
>load or TCP stream(s), defaults to full duplex (or bidir) unless the *up*
> or *down* option is provided=2E The number of TCP streams defaults to 1 =
and
>can be changed via the n value, e=2Eg=2E *--bounceback-congest=3Ddown,4* =
will use
>four TCP streams from server to the client as the working load=2E The IP =
ToS
>will be BE (0x0) for working load traffic=2E*--bounceback-hold **n*reques=
t
>the server to insert a delay of n milliseconds between its read and write
>(default is no delay)*--bounceback-period[=3D**n**]*request the client
>schedule its send(s) every n seconds (default is one second, use zero val=
ue
>for immediate or continuous back to back)*--bounceback-no-quickack*reques=
t
>the server not set the TCP_QUICKACK socket option (disabling TCP ACK
>delays) during a bounceback test (see NOTES)*--bounceback-txdelay **n*req=
uest
>the client to delay n seconds between the start of the working load and t=
he
>bounceback traffic (default is no delay)
>
>On Tue, Oct 11, 2022 at 12:15 AM Sebastian Moeller <moeller0@gmx=2Ede> wr=
ote:
>
>> Hi Bob,
>>
>> On 11 October 2022 02:05:40 CEST, Bob McMahon <bob=2Emcmahon@broadcom=
=2Ecom>
>> wrote:
>> >It's too big because it's oversized so it's in the size domain=2E It's
>> >basically Little's law's value for the number of items in a queue=2E
>> >
>> >*Number of items in the system =3D (the rate items enter and leave the
>> >system) x (the average amount of time items spend in the system)*
>> >
>> >
>> >Which gets driven to the standing queue size when the arrival rate
>> >exceeds the service rate - so the driving factor isn't the service and
>> >arrival rates, but *the queue size *when *any service rate is less tha=
n an
>> >arrival rate=2E*
>>
>> [SM] You could also argue it is the ratio of arrival to service rates,
>> with the queue size being a measure correlating with how long the syste=
m
>> will tolerate ratios larger than one=2E=2E=2E
>>
>>
>> >
>> >In other words, one can find and measure bloat regardless of the
>> >enter/leave rates (as long as the leave rate is too slow) and the valu=
e of
>> >memory units found will always be the same=2E
>> >
>> >Things like prioritizations to jump the line are somewhat of hacks at
>> >reducing the service time for a specialized class of packets but nobod=
y
>> >really knows which packets should jump=2E
>>
>> [SM] Au contraire most everybody 'knows' it is their packets that shoul=
d
>> jump ahead of the rest ;) For intermediate hop queues however that endp=
oint
>> perception is not really actionable due to lack of robust and reliable
>> importance identifiers on packets=2E In side a 'domain' dscps might wor=
k if
>> treated to strict admission control, but that typically will not help
>> end2end traffic over the internet=2E This is BTW why I think FQ is a gr=
eat
>> concept, as it mostly results in the desirable outcome of not picking
>> winners and losers (like arbitrarily starving a flow), but I digress=2E
>>
>> >Also, nobody can define what
>> >working conditions are so that's another problem with this class of te=
sts=2E
>>
>> [SM] While real working conditions will be different for each link and
>> probably vary over time, it seems achievable to come up with a set of
>> pessimistic assumptions how to model a challenging work condition again=
st
>> which to test potential remedies, assuming that such remedies will also
>> work well under less challenging conditions, no?
>>
>>
>> >
>> >Better maybe just to shrink the queue and eliminate all unneeded queue=
ing
>> >delays=2E
>>
>> [SM] The 'unneeded' does a lot of work in that sentence ;)=2E I like Va=
n's?
>> Description of queues as shock absorbers so queue size will have a lowe=
r
>> acceptable limit assuming users want to achieve 'acceptable' throughput
>> even with existing bursty senders=2E (Not all applications are suited f=
or
>> pacing so some level of burstiness seems unavoidable)=2E
>>
>>
>> > Also, measure the performance per "user conditions" which is going
>> >to be different for almost every environment (and is correlated to tim=
e
>> and
>> >space=2E) So any engineering solution is fundamentally suboptimal=2E
>>
>> [SM] A matter of definition, if the requirement is to cover many user
>> conditions the optimality measure simply needs to be changed from per
>> individual condition to over many/all conditions, no?
>>
>> >Even
>> >pacing the source doesn't necessarily do the right thing because that'=
s
>> >like waiting in the waitlist while at home vs the restaurant lobby=2E
>>
>> [SM] +1=2E
>>
>> > Few
>> >care about where messages wait (unless the pitch is AQM is the only
>> >solution that drives to a self-fulfilling prophecy - that's why the te=
sts
>> >have to come up with artificial conditions that can't be simply define=
d=2E)
>>
>> Hrm, so the RRUL test, while not the end all of bufferbloat/working
>> conditions tests, is not that complicated:
>> Saturate a link in both directions simultaneously with multiple greedy
>> flows while measuring load-dependent latency changes for small isochron=
ous
>> probe flows=2E
>>
>> Yes, the it would be nice to have additional higher rate probe flows al=
so
>> bursty ones to emulate on-linev games, and 'pumped' greedy flows to emu=
late
>> DASH 'streaming', and a horde of small greedy flows that mostly end ins=
ide
>> the initial window and slow start=2E But at its core existing RRUL alre=
ady
>> gives a useful estimate on how a link behaves under saturating loads al=
l
>> the while being relatively simple=2E
>> The responsiveness under working condition seems similar in that it tri=
es
>> to saturate a link with an increasing number of greedy flows, in a sens=
e to
>> create a reasonable bad case that ideally rarely happens=2E
>>
>> Regards
>>       Sebastian
>>
>>
>> >
>> >Bob
>> >
>> >On Mon, Oct 10, 2022 at 3:57 PM David Lang <david@lang=2Ehm> wrote:
>> >
>> >> On Mon, 10 Oct 2022, Bob McMahon via Bloat wrote:
>> >>
>> >> > I think conflating bufferbloat with latency misses the subtle poin=
t in
>> >> that
>> >> > bufferbloat is a measurement in memory units more than a measureme=
nt
>> in
>> >> > time units=2E The first design flaw is a queue that is too big=2E =
This
>> >> youtube
>> >> > video analogy doesn't help one understand this important point=2E
>> >>
>> >> but the queue is only too big because of the time it takes to empty =
the
>> >> queue,
>> >> which puts us back into the time domain=2E
>> >>
>> >> David Lang
>> >>
>> >> > Another subtle point is that the video assumes AQM as the only
>> solution
>> >> and
>> >> > ignores others, i=2Ee=2E pacing at the source(s) and/or faster ser=
vice
>> >> rates=2E A
>> >> > restaurant that let's one call ahead to put their name on the wait=
list
>> >> > doesn't change the wait time=2E Just because a transport layer slo=
wed
>> down
>> >> > and hasn't congested a downstream queue doesn't mean the e2e laten=
cy
>> >> > performance will meet the gaming needs as an example=2E The delay =
is
>> still
>> >> > there it's just not manifesting itself in a shared queue that may =
or
>> may
>> >> > not negatively impact others using that shared queue=2E
>> >> >
>> >> > Bob
>> >> >
>> >> >
>> >> >
>> >> > On Mon, Oct 10, 2022 at 2:40 AM Sebastian Moeller via Make-wifi-fa=
st <
>> >> > make-wifi-fast@lists=2Ebufferbloat=2Enet> wrote:
>> >> >
>> >> >> Hi Erik,
>> >> >>
>> >> >>
>> >> >>> On Oct 10, 2022, at 11:32, Taraldsen Erik <
>> erik=2Etaraldsen@telenor=2Eno>
>> >> >> wrote:
>> >> >>>
>> >> >>> On 10/10/2022, 11:09, "Sebastian Moeller" <moeller0@gmx=2Ede> wr=
ote:
>> >> >>>
>> >> >>>    Nice!
>> >> >>>
>> >> >>>> On Oct 10, 2022, at 07:52, Taraldsen Erik via Cake <
>> >> >> cake@lists=2Ebufferbloat=2Enet> wrote:
>> >> >>>>
>> >> >>>> It took about 3 hours from the video was release before we got =
the
>> >> >> first request to have SQM on the CPE's  we manage as a ISP=2E  Fi=
nally
>> >> >> getting some customer response on the issue=2E
>> >> >>>
>> >> >>>       [SM] Will you be able to bump these requests to higher-ups
>> and at
>> >> >> least change some perception of customer demand for tighter laten=
cy
>> >> >> performance?
>> >> >>>
>> >> >>> That would be the hope=2E
>> >> >>
>> >> >>         [SM} Excellent, hope this plays out as we wish for=2E
>> >> >>
>> >> >>
>> >> >>>  We actually have fq_codel implemented on the two latest
>> generations of
>> >> >> DSL routers=2E  Use sync rate as input to set the rate=2E  Works =
quite
>> well=2E
>> >> >>
>> >> >>         [SM] Cool, if I might ask what fraction of the sync are y=
ou
>> >> >> setting the traffic shaper for and are you doing fine grained
>> overhead
>> >> >> accounting (or simply fold that into a grand "de-rating"-factor)?
>> >> >>
>> >> >>
>> >> >>> There is also a bit of traction around speedtest=2Enet's inclusi=
on of
>> >> >> latency under load internally=2E
>> >> >>
>> >> >>         [SM] Yes, although IIUC they are reporting the interquart=
ile
>> >> mean
>> >> >> for the two loaded latency estimates, which is pretty conservativ=
e
>> and
>> >> only
>> >> >> really "triggers" for massive consistently elevated latency; so I
>> expect
>> >> >> this to be great for detecting really bad cases, but I fear it is=
 too
>> >> >> conservative and will make a number of problematic links look OK=
=2E But
>> >> hey,
>> >> >> even that is leaps and bounds better than the old only idle laten=
cy
>> >> report=2E
>> >> >>
>> >> >>
>> >> >>> My hope is that some publication in Norway will pick up on that
>> score
>> >> >> and do a test and get some mainstream publicity with the results=
=2E
>> >> >>
>> >> >>         [SM] Inside the EU the challenge is to get national
>> regulators
>> >> and
>> >> >> the BEREC to start bothering about latency-under-load at all, "so=
me
>> >> >> mainstream publicity" would probably help here as well=2E
>> >> >>
>> >> >> Regards
>> >> >>         Sebastian
>> >> >>
>> >> >>
>> >> >>>
>> >> >>> -Erik
>> >> >>>
>> >> >>>
>> >> >>>
>> >> >>
>> >> >> _______________________________________________
>> >> >> Make-wifi-fast mailing list
>> >> >> Make-wifi-fast@lists=2Ebufferbloat=2Enet
>> >> >> https://lists=2Ebufferbloat=2Enet/listinfo/make-wifi-fast
>> >> >
>> >> >_______________________________________________
>> >> Bloat mailing list
>> >> Bloat@lists=2Ebufferbloat=2Enet
>> >> https://lists=2Ebufferbloat=2Enet/listinfo/bloat
>> >>
>> >
>>
>> --
>> Sent from my Android device with K-9 Mail=2E Please excuse my brevity=
=2E
>>
>
>--=20
>This electronic communication and the information and any files transmitt=
ed=20
>with it, or attached to it, are confidential and are intended solely for=
=20
>the use of the individual or entity to whom it is addressed and may conta=
in=20
>information that is confidential, legally privileged, protected by privac=
y=20
>laws, or otherwise restricted from disclosure to anyone else=2E If you ar=
e=20
>not the intended recipient or the person responsible for delivering the=
=20
>e-mail to the intended recipient, you are hereby notified that any use,=
=20
>copying, distributing, dissemination, forwarding, printing, or copying of=
=20
>this e-mail is strictly prohibited=2E If you received this e-mail in erro=
r,=20
>please return the e-mail to the sender, delete it from your computer, and=
=20
>destroy any printed copy of it=2E

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
------L9DKDX08KKWFJ9ZOWDA2BDVIJEM6DS
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>Hi Bob,<br><br>Sweet, thanks! Will go and set this=
 up in my home network, but that will take a while=2E Also any proposal how=
 to convert the output into some graphs by any chance?<br><br>Regards<br>  =
      Sebastian<br><br><div class=3D"gmail_quote">On 11 October 2022 18:58:=
05 CEST, Bob McMahon &lt;bob=2Emcmahon@broadcom=2Ecom&gt; wrote:<blockquote=
 class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1=
px solid rgb(204, 204, 204); padding-left: 1ex;">
<div dir=3D"ltr">&gt; Saturate a link in both directions simultaneously wi=
th multiple greedy flows while measuring load-dependent latency changes for=
 small isochronous probe flows=2E<br><div><br></div><div>This functionality=
 is released in iperf 2=2E1=2E8 per the bounceback feature but, unfortunate=
ly, OpenWRT doesn't maintain iperf 2 as a package anymore and uses 2=2E0=2E=
13&nbsp;<br><h2 style=3D"color:rgb(0,0,0);font-family:&quot;Times New Roman=
&quot;">CLIENT SPECIFIC OPTIONS</h2><dl compact style=3D"color:rgb(0,0,0);f=
ont-family:&quot;Times New Roman&quot;;font-size:medium"><dt><b>--bouncebac=
k[=3D</b><i>n</i><b>]</b></dt><dd>run a TCP bounceback or rps test with opt=
ional number writes in a burst per value of n=2E The default is ten writes =
every period and the default period is one second (Note: set size with -l o=
r --len which defaults to 100 bytes)</dd><dt><b>--bounceback-congest[=3Dup|=
down|bidir][</b>,<i>n</i><b>]</b></dt><dd>request a concurrent working load=
 or TCP stream(s), defaults to full duplex (or bidir) unless the&nbsp;<b>up=
</b>&nbsp;or&nbsp;<b>down</b>&nbsp;option is provided=2E The number of TCP =
streams defaults to 1 and can be changed via the n value, e=2Eg=2E&nbsp;<b>=
--bounceback-congest=3Ddown,4</b>&nbsp;will use four TCP streams from serve=
r to the client as the working load=2E The IP ToS will be BE (0x0) for work=
ing load traffic=2E</dd><dt><b>--bounceback-hold&nbsp;</b><i>n</i></dt><dd>=
request the server to insert a delay of n milliseconds between its read and=
 write (default is no delay)</dd><dt><b>--bounceback-period[=3D</b><i>n</i>=
<b>]</b></dt><dd>request the client schedule its send(s) every n seconds (d=
efault is one second, use zero value for immediate or continuous back to ba=
ck)</dd><dt><b>--bounceback-no-quickack</b></dt><dd>request the server not =
set the TCP_QUICKACK socket option (disabling TCP ACK delays) during a boun=
ceback test (see NOTES)</dd><dt><b>--bounceback-txdelay&nbsp;</b><i>n</i></=
dt><dd>request the client to delay n seconds between the start of the worki=
ng load and the bounceback traffic (default is no delay)</dd></dl></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Tue, Oct 11, 2022 at 12:15 AM Sebastian Moeller &lt;<a href=3D"mailto:moell=
er0@gmx=2Ede">moeller0@gmx=2Ede</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=2E8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">Hi Bob,<br>
<br>
On 11 October 2022 02:05:40 CEST, Bob McMahon &lt;<a href=3D"mailto:bob=2E=
mcmahon@broadcom=2Ecom" target=3D"_blank">bob=2Emcmahon@broadcom=2Ecom</a>&=
gt; wrote:<br>
&gt;It's too big because it's oversized so it's in the size domain=2E It's=
<br>
&gt;basically Little's law's value for the number of items in a queue=2E<b=
r>
&gt;<br>
&gt;*Number of items in the system =3D (the rate items enter and leave the=
<br>
&gt;system) x (the average amount of time items spend in the system)*<br>
&gt;<br>
&gt;<br>
&gt;Which gets driven to the standing queue size when the arrival rate<br>
&gt;exceeds the service rate - so the driving factor isn't the service and=
<br>
&gt;arrival rates, but *the queue size *when *any service rate is less tha=
n an<br>
&gt;arrival rate=2E*<br>
<br>
[SM] You could also argue it is the ratio of arrival to service rates, wit=
h the queue size being a measure correlating with how long the system will =
tolerate ratios larger than one=2E=2E=2E<br>
<br>
<br>
&gt;<br>
&gt;In other words, one can find and measure bloat regardless of the<br>
&gt;enter/leave rates (as long as the leave rate is too slow) and the valu=
e of<br>
&gt;memory units found will always be the same=2E<br>
&gt;<br>
&gt;Things like prioritizations to jump the line are somewhat of hacks at<=
br>
&gt;reducing the service time for a specialized class of packets but nobod=
y<br>
&gt;really knows which packets should jump=2E <br>
<br>
[SM] Au contraire most everybody 'knows' it is their packets that should j=
ump ahead of the rest ;) For intermediate hop queues however that endpoint =
perception is not really actionable due to lack of robust and reliable impo=
rtance identifiers on packets=2E In side a 'domain' dscps might work if tre=
ated to strict admission control, but that typically will not help end2end =
traffic over the internet=2E This is BTW why I think FQ is a great concept,=
 as it mostly results in the desirable outcome of not picking winners and l=
osers (like arbitrarily starving a flow), but I digress=2E<br>
<br>
&gt;Also, nobody can define what<br>
&gt;working conditions are so that's another problem with this class of te=
sts=2E<br>
<br>
[SM] While real working conditions will be different for each link and pro=
bably vary over time, it seems achievable to come up with a set of pessimis=
tic assumptions how to model a challenging work condition against which to =
test potential remedies, assuming that such remedies will also work well un=
der less challenging conditions, no?<br>
<br>
<br>
&gt;<br>
&gt;Better maybe just to shrink the queue and eliminate all unneeded queue=
ing<br>
&gt;delays=2E <br>
<br>
[SM] The 'unneeded' does a lot of work in that sentence ;)=2E I like Van's=
? Description of queues as shock absorbers so queue size will have a lower =
acceptable limit assuming users want to achieve 'acceptable' throughput eve=
n with existing bursty senders=2E (Not all applications are suited for paci=
ng so some level of burstiness seems unavoidable)=2E<br>
<br>
<br>
&gt; Also, measure the performance per "user conditions" which is going<br=
>
&gt;to be different for almost every environment (and is correlated to tim=
e and<br>
&gt;space=2E) So any engineering solution is fundamentally suboptimal=2E <=
br>
<br>
[SM] A matter of definition, if the requirement is to cover many user cond=
itions the optimality measure simply needs to be changed from per individua=
l condition to over many/all conditions, no?<br>
<br>
&gt;Even<br>
&gt;pacing the source doesn't necessarily do the right thing because that'=
s<br>
&gt;like waiting in the waitlist while at home vs the restaurant lobby=2E =
<br>
<br>
[SM] +1=2E<br>
<br>
&gt; Few<br>
&gt;care about where messages wait (unless the pitch is AQM is the only<br=
>
&gt;solution that drives to a self-fulfilling prophecy - that's why the te=
sts<br>
&gt;have to come up with artificial conditions that can't be simply define=
d=2E)<br>
<br>
Hrm, so the RRUL test, while not the end all of bufferbloat/working condit=
ions tests, is not that complicated:<br>
Saturate a link in both directions simultaneously with multiple greedy flo=
ws while measuring load-dependent latency changes for small isochronous pro=
be flows=2E<br>
<br>
Yes, the it would be nice to have additional higher rate probe flows also =
bursty ones to emulate on-linev games, and 'pumped' greedy flows to emulate=
 DASH 'streaming', and a horde of small greedy flows that mostly end inside=
 the initial window and slow start=2E But at its core existing RRUL already=
 gives a useful estimate on how a link behaves under saturating loads all t=
he while being relatively simple=2E<br>
The responsiveness under working condition seems similar in that it tries =
to saturate a link with an increasing number of greedy flows, in a sense to=
 create a reasonable bad case that ideally rarely happens=2E<br>
<br>
Regards<br>
&nbsp; &nbsp; &nbsp; Sebastian<br>
<br>
<br>
&gt;<br>
&gt;Bob<br>
&gt;<br>
&gt;On Mon, Oct 10, 2022 at 3:57 PM David Lang &lt;<a href=3D"mailto:david=
@lang=2Ehm" target=3D"_blank">david@lang=2Ehm</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; On Mon, 10 Oct 2022, Bob McMahon via Bloat wrote:<br>
&gt;&gt;<br>
&gt;&gt; &gt; I think conflating bufferbloat with latency misses the subtl=
e point in<br>
&gt;&gt; that<br>
&gt;&gt; &gt; bufferbloat is a measurement in memory units more than a mea=
surement in<br>
&gt;&gt; &gt; time units=2E The first design flaw is a queue that is too b=
ig=2E This<br>
&gt;&gt; youtube<br>
&gt;&gt; &gt; video analogy doesn't help one understand this important poi=
nt=2E<br>
&gt;&gt;<br>
&gt;&gt; but the queue is only too big because of the time it takes to emp=
ty the<br>
&gt;&gt; queue,<br>
&gt;&gt; which puts us back into the time domain=2E<br>
&gt;&gt;<br>
&gt;&gt; David Lang<br>
&gt;&gt;<br>
&gt;&gt; &gt; Another subtle point is that the video assumes AQM as the on=
ly solution<br>
&gt;&gt; and<br>
&gt;&gt; &gt; ignores others, i=2Ee=2E pacing at the source(s) and/or fast=
er service<br>
&gt;&gt; rates=2E A<br>
&gt;&gt; &gt; restaurant that let's one call ahead to put their name on th=
e waitlist<br>
&gt;&gt; &gt; doesn't change the wait time=2E Just because a transport lay=
er slowed down<br>
&gt;&gt; &gt; and hasn't congested a downstream queue doesn't mean the e2e=
 latency<br>
&gt;&gt; &gt; performance will meet the gaming needs as an example=2E The =
delay is still<br>
&gt;&gt; &gt; there it's just not manifesting itself in a shared queue tha=
t may or may<br>
&gt;&gt; &gt; not negatively impact others using that shared queue=2E<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Bob<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Mon, Oct 10, 2022 at 2:40 AM Sebastian Moeller via Make-w=
ifi-fast &lt;<br>
&gt;&gt; &gt; <a href=3D"mailto:make-wifi-fast@lists=2Ebufferbloat=2Enet" =
target=3D"_blank">make-wifi-fast@lists=2Ebufferbloat=2Enet</a>&gt; wrote:<b=
r>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; Hi Erik,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; On Oct 10, 2022, at 11:32, Taraldsen Erik &lt;<a hre=
f=3D"mailto:erik=2Etaraldsen@telenor=2Eno" target=3D"_blank">erik=2Etaralds=
en@telenor=2Eno</a>&gt;<br>
&gt;&gt; &gt;&gt; wrote:<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; On 10/10/2022, 11:09, "Sebastian Moeller" &lt;<a hre=
f=3D"mailto:moeller0@gmx=2Ede" target=3D"_blank">moeller0@gmx=2Ede</a>&gt; =
wrote:<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&nbsp; &nbsp; Nice!<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; On Oct 10, 2022, at 07:52, Taraldsen Erik via Ca=
ke &lt;<br>
&gt;&gt; &gt;&gt; <a href=3D"mailto:cake@lists=2Ebufferbloat=2Enet" target=
=3D"_blank">cake@lists=2Ebufferbloat=2Enet</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt; It took about 3 hours from the video was release=
 before we got the<br>
&gt;&gt; &gt;&gt; first request to have SQM on the CPE's&nbsp; we manage a=
s a ISP=2E&nbsp; Finally<br>
&gt;&gt; &gt;&gt; getting some customer response on the issue=2E<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp;[SM] Will you be able to b=
ump these requests to higher-ups and at<br>
&gt;&gt; &gt;&gt; least change some perception of customer demand for tigh=
ter latency<br>
&gt;&gt; &gt;&gt; performance?<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; That would be the hope=2E<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[SM} Excellent, hope th=
is plays out as we wish for=2E<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;&nbsp; We actually have fq_codel implemented on the t=
wo latest generations of<br>
&gt;&gt; &gt;&gt; DSL routers=2E&nbsp; Use sync rate as input to set the r=
ate=2E&nbsp; Works quite well=2E<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[SM] Cool, if I might a=
sk what fraction of the sync are you<br>
&gt;&gt; &gt;&gt; setting the traffic shaper for and are you doing fine gr=
ained overhead<br>
&gt;&gt; &gt;&gt; accounting (or simply fold that into a grand "de-rating"=
-factor)?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; There is also a bit of traction around <a href=3D"ht=
tp://speedtest=2Enet" rel=3D"noreferrer" target=3D"_blank">speedtest=2Enet<=
/a>'s inclusion of<br>
&gt;&gt; &gt;&gt; latency under load internally=2E<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[SM] Yes, although IIUC=
 they are reporting the interquartile<br>
&gt;&gt; mean<br>
&gt;&gt; &gt;&gt; for the two loaded latency estimates, which is pretty co=
nservative and<br>
&gt;&gt; only<br>
&gt;&gt; &gt;&gt; really "triggers" for massive consistently elevated late=
ncy; so I expect<br>
&gt;&gt; &gt;&gt; this to be great for detecting really bad cases, but I f=
ear it is too<br>
&gt;&gt; &gt;&gt; conservative and will make a number of problematic links=
 look OK=2E But<br>
&gt;&gt; hey,<br>
&gt;&gt; &gt;&gt; even that is leaps and bounds better than the old only i=
dle latency<br>
&gt;&gt; report=2E<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; My hope is that some publication in Norway will pick=
 up on that score<br>
&gt;&gt; &gt;&gt; and do a test and get some mainstream publicity with the=
 results=2E<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[SM] Inside the EU the =
challenge is to get national regulators<br>
&gt;&gt; and<br>
&gt;&gt; &gt;&gt; the BEREC to start bothering about latency-under-load at=
 all, "some<br>
&gt;&gt; &gt;&gt; mainstream publicity" would probably help here as well=
=2E<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Regards<br>
&gt;&gt; &gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Sebastian<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; -Erik<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; _______________________________________________<br>
&gt;&gt; &gt;&gt; Make-wifi-fast mailing list<br>
&gt;&gt; &gt;&gt; <a href=3D"mailto:Make-wifi-fast@lists=2Ebufferbloat=2En=
et" target=3D"_blank">Make-wifi-fast@lists=2Ebufferbloat=2Enet</a><br>
&gt;&gt; &gt;&gt; <a href=3D"https://lists=2Ebufferbloat=2Enet/listinfo/ma=
ke-wifi-fast" rel=3D"noreferrer" target=3D"_blank">https://lists=2Ebufferbl=
oat=2Enet/listinfo/make-wifi-fast</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;_______________________________________________<br>
&gt;&gt; Bloat mailing list<br>
&gt;&gt; <a href=3D"mailto:Bloat@lists=2Ebufferbloat=2Enet" target=3D"_bla=
nk">Bloat@lists=2Ebufferbloat=2Enet</a><br>
&gt;&gt; <a href=3D"https://lists=2Ebufferbloat=2Enet/listinfo/bloat" rel=
=3D"noreferrer" target=3D"_blank">https://lists=2Ebufferbloat=2Enet/listinf=
o/bloat</a><br>
&gt;&gt;<br>
&gt;<br>
<br>
-- <br>
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E<b=
r>
</blockquote></div>

<br>
<span style=3D"background-color:rgb(255,255,255)"><font size=3D"2">This el=
ectronic communication and the information and any files transmitted with i=
t, or attached to it, are confidential and are intended solely for the use =
of the individual or entity to whom it is addressed and may contain informa=
tion that is confidential, legally privileged, protected by privacy laws, o=
r otherwise restricted from disclosure to anyone else=2E If you are not the=
 intended recipient or the person responsible for delivering the e-mail to =
the intended recipient, you are hereby notified that any use, copying, dist=
ributing, dissemination, forwarding, printing, or copying of this e-mail is=
 strictly prohibited=2E If you received this e-mail in error, please return=
 the e-mail to the sender, delete it from your computer, and destroy any pr=
inted copy of it=2E</font></span></blockquote></div><div style=3D'white-spa=
ce: pre-wrap'><div class=3D'k9mail-signature'>-- <br>Sent from my Android d=
evice with K-9 Mail=2E Please excuse my brevity=2E</div></div></body></html=
>
------L9DKDX08KKWFJ9ZOWDA2BDVIJEM6DS--

--===============4448306175283398965==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============4448306175283398965==--

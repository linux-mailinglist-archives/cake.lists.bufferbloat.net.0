Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE1D8B6573
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:19:03 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 321D73CB61;
	Mon, 29 Apr 2024 18:18:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429133;
	bh=uQ9WxQj7IKdLYPMlrC+gCRat4r/F/24pKZIvOLgjqi8=;
	h=Date:References:In-Reply-To:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=Q/N+cHzDYsjySH22Tb8lhKXZK9Jd1+1pJPg0KcU5Kug0euAzVURZ4FNhYfPbSwsVv
	 5a9MOs6W9OpLS90UekFtAUvK5xHBDXw7ZvofM21eORl8hAhqFIcoDJsm3alzoG2mZE
	 LNcT1DDbKCoPkxY/0s8bdnIFZSNzagATg9GordYvYuK8xAEVzKoJVin3+xiHe2yzkb
	 0l4m1QJ8XDbK3T9F25kywq+tdR7G8W3XiaS7LhAH22NR+MDm2IHxmSgT1ZDdnUOa51
	 s76Q7JDYJ3+NmfWR8cbNCBabNevNtHzbt73W8LbnG4UmnzF+PjqH5NDMkYRX9mmNIb
	 f8btGmu+vZ+SQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-vs1-xe2b.google.com (mail-vs1-xe2b.google.com
 [IPv6:2607:f8b0:4864:20::e2b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 6C23C3B29D
 for <cake@lists.bufferbloat.net>; Thu, 20 Oct 2022 01:15:51 -0400 (EDT)
Received: by mail-vs1-xe2b.google.com with SMTP id a2so19634771vsc.13
 for <cake@lists.bufferbloat.net>; Wed, 19 Oct 2022 22:15:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=waveform.com; s=google;
 h=cc:to:in-reply-to:references:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=pNfraTl1vkDEBgq2BOlGdh4eab1F32Lu1nb0RbA1VSE=;
 b=UzZNotv28H4wQqYLeBmYifzlTB6Vbhk0LFDlK3oFiMxJmpqk5HWbZiVoxQrQ8dBdgj
 z6oXQF6ljsnTeF11dFF2yb9R0eof3ZpcRAjtlhEYAZVljRUwH0DfvrLIVbl46jrAE9Tj
 DSnqhd0F1s9OoFLSGkyPxh2I6xbuDdCUEannkIShSMWmrBEX2xGkPkV1XYzsx8KVygwi
 b0AQBMyPoZfxvpLgqlBBLkwqWbkS4v98talw2dfbIpLNaSlWI8dMPGls4F/H4nArdU6U
 C58ozzqe6D6bxpQDarhRBpWrcdp4d3EUirCVbbP8CDF0QvDfmHBimOX+Ri7JI+MTlo/3
 0ptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:in-reply-to:references:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=pNfraTl1vkDEBgq2BOlGdh4eab1F32Lu1nb0RbA1VSE=;
 b=VmRHZYCJPPxi8s+Ihi0NQ5wqOPUVAkNF/X6CYdibBvobl6+FOoGB743b6bNehBU9K+
 51YHQaknVzefCbdv9NYp4y4xiAiIMtzk6bcj3/oXrae+ZaeIAkoy3V5UKyQ5ve08Aay3
 EPpBtNDFyeXtj3Uwrt13SoBivNkhDWW0er7doabLgFf4ZwrZ+8Mi/uPU/3ANW/jlsyHR
 Nkhf3l2uShi8PbR0/2p97ttBDuJRkIeraNutOLJVIaDuHQ/nxfO6683fNa+0g4+QE8ph
 gcA+IjI7sZ0qWTVUsU29+G153blP7iHtkjRG+6fz9jAtj46SDEkpxAFvVCizPI/0HTcm
 kbxg==
X-Gm-Message-State: ACrzQf1xjT84B8860X36EYKEB3i9RpCjCylun5MdgOn4K29vWFb8vB/8
 BQXd8mYsgXEmn+WkkETRZhtw5ezKmQjFzHL25L/tSS+8Od2/6GwE0MoGa6ZhUPSUD+OOvMKkqNJ
 9oKQ0IKphZswHheta9GV7W3h3GRSird75BW53M2Tzd+Xww3fglY3NR9GP++/+WCwsbvV/BHQhCt
 cmCSoBTw==
X-Google-Smtp-Source: AMsMyM4ErkQIFFL8OYx9rXWeShE2kaKrlCuQPd7wUWHBvSNdmUACo05SdBjB/j6IIeQ2y7HVAYQpsw==
X-Received: by 2002:a67:b805:0:b0:3a7:a708:20a9 with SMTP id
 i5-20020a67b805000000b003a7a70820a9mr5203629vsf.64.1666242950155; 
 Wed, 19 Oct 2022 22:15:50 -0700 (PDT)
Received: from localhost (0.92.231.35.bc.googleusercontent.com. [35.231.92.0])
 by smtp.gmail.com with UTF8SMTPSA id
 n11-20020ab01e4b000000b003b44dcec32asm2695355uak.16.2022.10.19.22.15.50
 for <cake@lists.bufferbloat.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Oct 2022 22:15:50 -0700 (PDT)
Mime-Version: 1.0
Date: Thu, 20 Oct 2022 05:15:47 +0000
Message-ID: <l9glcm39.3472f6d4-8b5b-4fb8-a9f1-0c193f9c2257@we.are.superhuman.com>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <938D9D45-DADA-4291-BD8A-84E4257CEE49@apple.com>
 <CAA93jw4KOkgdfT2LunCtPYPjXL+=OtTrouJgPjM7U1bHKtErnw@mail.gmail.com>
 <CACTgmGpgDjWF4d_+Kga4CL4vxb-YQ91Lu1U6Zt5vca0EGSwQ2w@mail.gmail.com>
 <CAA93jw4f701R+4B538jF1+qAW=cUgP35EmWy8VZG-1h=w8woOA@mail.gmail.com>
 <l9egkfsn.61659de8-7256-4ec0-938c-38be1dcb1e4c@we.are.superhuman.com>
 <31A8072A-2482-4395-A521-64350035D8DD@gmx.de>
X-Superhuman-ID: l9gm0mrd.182095c0-0888-4b47-bc62-e7af69382901
X-Superhuman-Draft-ID: draft0048ea2b9b9793bc
In-Reply-To: <31A8072A-2482-4395-A521-64350035D8DD@gmx.de>
To: "Sebastian Moeller" <moeller0@gmx.de>
X-Mailer: Superhuman Web (2022-10-18T22:12:12Z)
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: Re: [Cake] [Bloat] A quick report from the WISPA conference
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
From: Sina Khanifar via Cake <cake@lists.bufferbloat.net>
Reply-To: Sina Khanifar <sina@waveform.com>
Cc: Cake List <cake@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Rpm <rpm@lists.bufferbloat.net>, Sina Khanifar <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============7602804535446486699=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============7602804535446486699==
Content-Type: multipart/alternative;
 boundary=a00aad616cc2c3b0f180550026cfbbf30ab098aff9069214a780a4a411f0

--a00aad616cc2c3b0f180550026cfbbf30ab098aff9069214a780a4a411f0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Sebastian,

>=20
> [SM] Just an observation, using Safari I see large maximal delays (like a
> small group of samples far out to the right of the bulk) for both down-
> and upload that essentially disappear when I switch to firefox. Now I ten=
d
> to have a ton of tabs open in Safari while I only open firefox for
> dedicated use-cases with a few tabs at most, so I do not intend to throw
> shade on Safari here; my point is more browsers can and do affect the
> reported latency numbers, of you want to be able to test this, maybe ask
> users to use the OS browser (safari, edge, konqueror ;) ) as well as
> firefox and chrome so you can directly compare across browsers?
>=20

I believe this is because we use the WebTiming APIs to get a more accurate =
latency numbers, but the API isn't fully supported on Safari. As such, late=
ncy measurements in Safari are much less accurate than in Firefox and Chrom=
e.

>=20
> traceroute/mtr albeit not sure how well this approach works from inside
> the browser, can you e.g. control TTL and do you receive error messages
> via ICMP?
>=20

Unfortunately traceroutes via the browser don't really work :(. And I don't=
 believe we can control TTL or see ICMP error messages=C2=A0either, though =
I haven't dug into this very deeply.

>=20
>=20
>=20
> Over in the OpenWrt forum we often see that server performance with
> iperf2/3 or netperf on a router is not all that representative for its
> routing performance. What do you expect to deduce from upload/download to
> the router? (I might misunderstand your point by a mile, if so please
> elaborate)
>=20
>=20
>=20

The goal would be to test the "local" latency, throughput, and bufferbloat =
between the user's device and the router, and then compare this with the la=
tency, throughput, and bufferbloat when DL/ULing to a remote server.

This would reveal whether the dominant source of increase in latency under =
load is=C2=A0at the router's WAN interface or somewhere between the router =
and the user (e.g. WiFi, ethernet, powerline, Moca devices, PtP connections=
, etc).

Being able to test the user-to-router leg of the connection would be helpfu=
l more broadly beyond just bufferbloat.=C2=A0I often want to diagnose wheth=
er my connection issues or speed drops are happening due to an issue with m=
y modem (and more generally the WAN connection) or if it's an issue with my=
 wifi connection.

I guess I don't quite understand this part though: "iperf2/3 or netperf on =
a router is not all that representative for its routing performance." What =
exactly do you mean here?

>=20
> =E2=80=8BMost recent discussion moved over to https://forum.openwrt.org/t=
/cake-w-adaptive-bandwidth/135379
>=20
>=20
>=20

Thanks! I have a lot of catching up to do on that thread, and some of it is=
 definitely above my pay grade :).

>=20
> =E2=80=8B I think this ideally would be solved at the 3GPPP level
>=20
>=20

Agreed. I wonder if there's anything we can do to encourage them to pay att=
ention to this.

Best regards,

Sina.

On Tue, Oct 18, 2022 at 12:04 PM, Sebastian Moeller < moeller0@gmx.de > wro=
te:

>=20
>=20
>=20
> Hi Sina,
>=20
>=20
>=20
>=20
> On 18 October 2022 19:17:16 CEST, Sina Khanifar via Bloat < bloat@ lists.=
 bufferbloat.
> net ( bloat@lists.bufferbloat.net ) > wrote:
>=20
>=20
>=20
>>=20
>>>=20
>>>=20
>>> I can't help but wonder tho... are you collecting any statistics, over
>>> time, as to how much better the problem is getting?
>>>=20
>>>=20
>>>=20
>>=20
>>=20
>>=20
>> We are collecting anonymized=C2=A0data, but we haven't analyzed it yet. =
If we
>> get a bit of time we'll look at that hopefully.
>>=20
>>=20
>>=20
>=20
>=20
>=20
> [SM] Just an observation, using Safari I see large maximal delays (like a
> small group of samples far out to the right of the bulk) for both down-
> and upload that essentially disappear when I switch to firefox. Now I ten=
d
> to have a ton of tabs open in Safari while I only open firefox for
> dedicated use-cases with a few tabs at most, so I do not intend to throw
> shade on Safari here; my point is more browsers can and do affect the
> reported latency numbers, of you want to be able to test this, maybe ask
> users to use the OS browser (safari, edge, konqueror ;) ) as well as
> firefox and chrome so you can directly compare across browsers?
>=20
>=20
>=20
>>=20
>>>=20
>>>=20
>>> And any chance they could do something similar explaining wifi?
>>>=20
>>>=20
>>>=20
>>=20
>>=20
>>=20
>> I'm actually not exactly sure what mitigations exist for WiFi at the
>> moment - is there something I can read?
>>=20
>>=20
>>=20
>>=20
>> On this note: when we were building our test one of the things we really
>> wished existed was a standardized way to test latency and throughput to
>> routers.
>>=20
>>=20
>>=20
>=20
>=20
>=20
> [SM] traceroute/mtr albeit not sure how well this approach works from
> inside the browser, can you e.g. control TTL and do you receive error
> messages via ICMP?
>=20
>=20
>=20
>=20
> It would be super helpful if there was a standard in consumer routers=C2=
=A0that
> allowed users to both ping and fetch 0kB fils from their routers, and als=
o
> run download/upload tests.
>=20
>=20
>=20
>=20
> [SM] I think I see where you are coming from here. Over in the OpenWrt
> forum we often see that server performance with iperf2/3 or netperf on a
> router is not all that representative for its routing performance. What d=
o
> you expect to deduce from upload/download to the router? (I might
> misunderstand your point by a mile, if so please elaborate)
>=20
>=20
>=20
>=20
> Regards
> Sebastian
>=20
>=20
>>=20
>>>=20
>>>=20
>>> I think one more wispa conference will be a clean sweep of everyone in =
the
>>> fixed wireless market to not only adopt these algorithms for plan
>>> enforcement, but even more directly on the radios and more CPE.
>>>=20
>>>=20
>>>=20
>>=20
>>=20
>>=20
>> T-Mobile has signed up 1m+ people to their new Home Internet over 5G, an=
d
>> all of them have really meaningful bufferbloat issues. I've been pointin=
g
>> folks who reach out to this thread ( https:/ / forum. openwrt. org/ t/ c=
ake-w-adaptive-bandwidth-historic/
>> 108848 (
>> https://forum.openwrt.org/t/cake-w-adaptive-bandwidth-historic/108848 ) =
)
>> about cake-autorate and sqm-autorate, but ideally it would be fixed at a
>> network level, just not sure how to apply pressure (I'm in contact with
>> the T-Mobile Home Internet team, but I think this is above their heads).
>>=20
>>=20
>>=20
>>=20
>> On Mon, Oct 17, 2022 at 8:15 PM, Dave Taht < dave. taht@ gmail. com (
>> dave.taht@gmail.com ) > wrote:
>>=20
>>=20
>>=20
>>>=20
>>>=20
>>> On Mon, Oct 17 , 2022 at 7:51 PM Sina Khanifar < sina@ waveform. com ( =
sina@
>>> waveform. com ( sina@waveform.com ) ) > wrote:
>>>=20
>>>=20
>>>=20
>>>>=20
>>>>=20
>>>> Positive or negative, I can claim a bit of credit for this video :). W=
e've
>>>> been working with LTT on a few projects and we pitched them on doing
>>>> something around bufferbloat. We've seen more traffic to our Waveforn =
test
>>>> than ever before, which has been fun!
>>>>=20
>>>>=20
>>>>=20
>>>=20
>>>=20
>>>=20
>>> Thank you. Great job with that video! And waveform has become the goto
>>> site for many now.
>>>=20
>>>=20
>>>=20
>>>=20
>>> I can't help but wonder tho... are you collecting any statistics, over
>>> time, as to how much better the problem is getting?
>>>=20
>>>=20
>>>=20
>>>=20
>>> And any chance they could do something similar explaining wifi?
>>>=20
>>>=20
>>>=20
>>>=20
>>> ...
>>>=20
>>>=20
>>>=20
>>>=20
>>> I was just at WISPA conference week before last. Preseem's booth
>>> (fq_codel) was always packed. Vilo living had put cake in their wifi 6
>>> product. A
>>> keynote speaker had deployed it and talked about it with waveform resul=
ts
>>> on the big screen (2k people there). A large wireless vendor demo'd
>>> privately to me their flent results before/after cake on their next-gen
>>> radios... and people dissed tarana without me prompting for their bad
>>> bufferbloat... and the best thing of all that happened to me was...
>>> besides getting a hug from a young lady (megan) who'd salvaged her
>>> schooling in alaska using sqm - I walked up to the paraqum booth
>>> (another large QoE middlebox maker centered more in india) and asked.
>>>=20
>>>=20
>>>=20
>>> "So... do y'all have fq_codel yet?"
>>>=20
>>>=20
>>>=20
>>>=20
>>> And they smiled and said: "No, we have something better... we've got
>>> cake."
>>>=20
>>>=20
>>>=20
>>>=20
>>> "Cake? What's that?" - I said, innocently.
>>>=20
>>>=20
>>>=20
>>>=20
>>> They then stepped me through their 200Gbps (!!) product, which uses a
>>> bunch of offloads, and can track rtt down to a ms with the intel ethern=
et
>>> card they were using. They'd modifed cake to provide 16 (?) levels of
>>> service, and were running under dpdk (I am not sure if cake was). It wa=
s a
>>> great, convincing pitch...
>>>=20
>>>=20
>>>=20
>>>=20
>>> ... then I told 'em who I was. There's a video of the in-both concert
>>> after.
>>>=20
>>>=20
>>>=20
>>>=20
>>> ...
>>>=20
>>>=20
>>>=20
>>>=20
>>> The downside to me (and the subject of my talk) was that in nearly ever=
y
>>> person I talked to, fq_codel was viewed as a means to better subscriber
>>> bandwidth plan enforcement (which is admittedly the market that preseem
>>> pioneered) and it was not understood that I'd got involved in this whol=
e
>>> thing because I'd wanted an algorithm to deal with "rain fade", running
>>> directly on the radios. People wanted to use the statistics on the radi=
os
>>> to drive the plan enforcement better
>>> (which is an ok approach, I guess), and for 10+ I'd been whinging about
>>> the... physics.
>>>=20
>>>=20
>>>=20
>>> So I ranted about rfc7567 a lot and begged people now putting routerOS
>>> 7.2 and later out there (mikrotik is huge in this market), to kill thei=
r
>>> fifos and sfqs at the native rates of the interfaces... and watch their
>>> network improve that way also.
>>>=20
>>>=20
>>>=20
>>> I think one more wispa conference will be a clean sweep of everyone in =
the
>>> fixed wireless market to not only adopt these algorithms for plan
>>> enforcement, but even more directly on the radios and more CPE.
>>>=20
>>>=20
>>>=20
>>>=20
>>> I also picked up enough consulting business to keep me busy the rest of
>>> this year, and possibly more than I can handle (anybody looking?)
>>>=20
>>>=20
>>>=20
>>>=20
>>> I wonder what will happen at a fiber conference?
>>>=20
>>>=20
>>>=20
>>>>=20
>>>>=20
>>>> On Mon, Oct 17 , 2022 at 7:45 PM Dave Taht via Bloat < bloat@ lists.
>>>> bufferbloat. net ( bloat@ lists. bufferbloat. net (
>>>> bloat@lists.bufferbloat.net ) ) > wrote:
>>>>=20
>>>>=20
>>>>=20
>>>>>=20
>>>>>=20
>>>>> On Mon, Oct 17 , 2022 at 5:02 PM Stuart Cheshire < cheshire@ apple. c=
om ( cheshire@
>>>>> apple. com ( cheshire@apple.com ) ) > wrote:
>>>>>=20
>>>>>=20
>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>> On 9 Oct 2022 , at 06:14, Dave Taht via Make-wifi-fast < make-wifi-f=
ast@
>>>>>> lists. bufferbloat. net ( make-wifi-fast@ lists. bufferbloat. net (
>>>>>> make-wifi-fast@lists.bufferbloat.net ) ) > wrote:
>>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>>>=20
>>>>>>>=20
>>>>>>> This was so massively well done, I cried. Does anyone know how to g=
et in
>>>>>>> touch with the ifxit folk?
>>>>>>>=20
>>>>>>>=20
>>>>>>>=20
>>>>>>>=20
>>>>>>> https:/ / www. youtube. com/ watch?v=3DUICh3ScfNWI ( https:/ / www.=
 youtube.
>>>>>>> com/ watch?v=3DUICh3ScfNWI ( https://www.youtube.com/watch?v=3DUICh=
3ScfNWI ) )
>>>>>>>=20
>>>>>>>=20
>>>>>>>=20
>>>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>> I=E2=80=99m surprised that you liked this video. It seems to me that=
 it repeats
>>>>>> all the standard misinformation. The analogy they use is the standar=
d
>>>>>> terrible example of waiting in a long line at a grocery store, and t=
he
>>>>>> =E2=80=9Csolution=E2=80=9D is letting certain traffic =E2=80=9Cjump =
the line, angering everyone
>>>>>> behind them=E2=80=9D.
>>>>>>=20
>>>>>>=20
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> Accuracy be damned. The analogy to common experience resonates more.
>>>>>=20
>>>>>=20
>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>> Some quotes from the video:
>>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>>>=20
>>>>>>>=20
>>>>>>> it would be so much more efficient for them to let you skip the lin=
e and
>>>>>>> just check out, especially since you=E2=80=99re in a hurry, but the=
y=E2=80=99re rudely
>>>>>>> refusing
>>>>>>>=20
>>>>>>>=20
>>>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> I think the person with the cheetos pulling out a gun and shooting
>>>>> everyone in front of him (AQM) would not go down well.
>>>>>=20
>>>>>=20
>>>>>=20
>>>>>>=20
>>>>>>>=20
>>>>>>>=20
>>>>>>> to go back to our grocery store analogy this would be like if a wor=
ker saw
>>>>>>> you standing at the back ... and either let you skip to the front o=
f the
>>>>>>> line or opens up an express lane just for you
>>>>>>>=20
>>>>>>>=20
>>>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> Actually that analogy is fairly close to fair queuing. The multiple
>>>>> checker analogy is one of the most common analogies in queue theory
>>>>> itself.
>>>>>=20
>>>>>=20
>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>> The video describes the problem of bufferbloat, and then describes t=
he
>>>>>> same failed solution that hasn=E2=80=99t worked for the last three d=
ecades.
>>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> Hmm? It establishes the scenario, explains the problem *quickly*, dis=
ses
>>>>> gamer routers for not getting it right.. *points to an accurate test*=
, and
>>>>> then to the ideas and products that *actually work* with "smart queue=
ing",
>>>>> with a screenshot of the most common
>>>>> (eero's optimize for gaming and videoconferencing), and fq_codel and =
cake
>>>>> *by name*, and points folk at the best known solution available, open=
wrt.
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> Bing, baddabang, boom. Also the comments were revealing. A goodly
>>>>> percentage already knew the problem, more than a few were inspired to=
 take
>>>>> the test,
>>>>> there was a whole bunch of "Aha!" success stories and 360k views, whi=
ch is
>>>>> more people than we've ever been able to reach in for example, a nano=
g
>>>>> conference.
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> I loved that folk taking the test actually had quite a few A results,
>>>>> without having had to do anything. At least some ISPs are getting it =
more
>>>>> right now!
>>>>>=20
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> At this point I think gamers in particular know what "brands" we've t=
ried
>>>>> to establish - "Smart queues", "SQM", "OpenWrt", fq_codel and now "ca=
ke"
>>>>> are "good" things to have, and are stimulating demand by asking for t=
hem,
>>>>> It's certainly working out better and better for evenroute, firewalla=
,
>>>>> ubnt and others, and I saw an uptick in questions about this on vario=
us
>>>>> user forums.
>>>>>=20
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> I even like that there's a backlash now of people saying "fixing
>>>>> bufferbloat doesn't solve everything" -
>>>>>=20
>>>>>=20
>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>> Describing the obvious simple-minded (wrong) solution that any norma=
l
>>>>>> person would think of based on their personal human experience waiti=
ng in
>>>>>> grocery stores and airports, is not describing the solution to
>>>>>> bufferbloat. The solution to bufferbloat is not that if you are priv=
ileged
>>>>>> then you get to =E2=80=9Cskip to the front of the line=E2=80=9D. The=
 solution to
>>>>>> bufferbloat is that there is no line!
>>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> I like the idea of a guru floating above a grocery cart with a better
>>>>> string of explanations, explaining
>>>>>=20
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> - "no, grasshopper, the solution to bufferbloat is no line... at all"=
.
>>>>>=20
>>>>>=20
>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>> With grocery stores and airports people=E2=80=99s arrivals are indep=
endent and not
>>>>>> controlled. There is no way for a grocery store or airport to genera=
te
>>>>>> backpressure to tell people to wait at home when a queue begins to f=
orm.
>>>>>> The key to solving bufferbloat is generating timely backpressure to
>>>>>> prevent the queue forming in the first place, not accepting a huge q=
ueue
>>>>>> and then deciding who deserves special treatment to get better servi=
ce
>>>>>> than all the other peons who still have to wait in a long queue, jus=
t like
>>>>>> before.
>>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> I am not huge on the word "backpressure" here. Needs to signal the ot=
her
>>>>> side to slow down, is more accurate. So might say timely signalling r=
ather
>>>>> than timely backpressure?
>>>>>=20
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> Other feedback I got was that the video was too smarmy (I agree),
>>>>> different audiences than gamers need different forms of outreach...
>>>>>=20
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> but to me, winning the gamers has always been one of the most importa=
nt
>>>>> things, as they make a lot of buying decisions, and they benefit the =
most
>>>>> for
>>>>> fq and packet prioritization as we do today in gamer routers and in c=
ake +
>>>>> qosify.
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> maybe that gets in the way of more serious markets. Certainly I would=
 like
>>>>> another video explaining what goes wrong with videoconferencing.
>>>>>=20
>>>>>=20
>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>> Stuart Cheshire
>>>>>>=20
>>>>>>=20
>>>>>>=20
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> --
>>>>> This song goes out to all the folk that thought Stadia would work: ht=
tps:/
>>>>>=20
>>>>> / www. linkedin. com/ posts/
>>>>> dtaht_the-mushroom-song-activity-6981366665607352320-FXtz
>>>>> (
>>>>> https:/ / www. linkedin. com/ posts/ dtaht_the-mushroom-song-activity=
-6981366665607352320-FXtz
>>>>> (
>>>>> https://www.linkedin.com/posts/dtaht_the-mushroom-song-activity-69813=
66665607352320-FXtz
>>>>> )
>>>>> ) Dave T=C3=A4ht CEO, TekLibre, LLC
>>>>> _______________________________________________
>>>>> Bloat mailing list
>>>>> Bloat@ lists. bufferbloat. net ( Bloat@lists.bufferbloat.net ) https:=
//lists.bufferbloat.net/listinfo/bloat
>>>>>=20
>>>>>=20
>>>>>=20
>>>>=20
>>>>=20
>>>=20
>>>=20
>>>=20
>>> --
>>> This song goes out to all the folk that thought Stadia would work: http=
s:/
>>>=20
>>> / www. linkedin. com/ posts/
>>> dtaht_the-mushroom-song-activity-6981366665607352320-FXtz
>>> (
>>> https:/ / www. linkedin. com/ posts/ dtaht_the-mushroom-song-activity-6=
981366665607352320-FXtz
>>> (
>>> https://www.linkedin.com/posts/dtaht_the-mushroom-song-activity-6981366=
665607352320-FXtz
>>> )
>>> ) Dave T=C3=A4ht CEO, TekLibre, LLC
>>>=20
>>>=20
>>=20
>>=20
>=20
>=20
>=20
> --
> Sent from my Android device with K-9 Mail. Please excuse my brevity.
>=20
>=20
>
--a00aad616cc2c3b0f180550026cfbbf30ab098aff9069214a780a4a411f0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div><div><div class=3D""><div class=3D""><div cla=
ss=3D""><div class=3D""><div class=3D"">Hi Sebastian,<br/></div><div class=
=3D""><br/></div><blockquote class=3D"">[SM] Just an observation, using Saf=
ari I see large maximal delays (like a small group of samples far out to th=
e right of the bulk) for both down- and upload that essentially disappear w=
hen I switch to firefox.
Now I tend to have a ton of tabs open in Safari while I only open firefox f=
or dedicated use-cases with a few tabs at most, so I do not intend to throw=
 shade on Safari here; my point is more browsers can and do affect the repo=
rted latency numbers, of you want to be able to test this, maybe ask users =
to use the OS browser (safari, edge, konqueror ;) ) as well as firefox and =
chrome so you can directly compare across browsers?<br/></blockquote><div c=
lass=3D""><br/></div></div><div class=3D"">I believe this is because we use=
 the WebTiming APIs to get a more accurate latency numbers, but the API isn=
&#39;t fully supported on Safari. As such, latency measurements in Safari a=
re much less accurate than in Firefox and Chrome.=C2=A0<br/></div><div clas=
s=3D""><br/></div><div class=3D""><blockquote class=3D"">traceroute/mtr alb=
eit not sure how well this approach works from inside the browser, can you =
e.g. control TTL and do you receive error messages via ICMP?<br/></blockquo=
te></div><div class=3D""><br/></div><div class=3D"">Unfortunately tracerout=
es via the browser don&#39;t really work :(. And I don&#39;t believe we can=
 control TTL or see ICMP error messages=C2=A0either, though I haven&#39;t d=
ug into this very deeply.<br/></div><div class=3D""><br/></div><div class=
=3D""><blockquote class=3D""><p class=3D"">Over in the OpenWrt forum we oft=
en see that server performance with iperf2/3 or netperf on a router is not =
all that representative for its routing performance.
What do you expect to deduce from upload/download to the router? (I might m=
isunderstand your point by a mile, if so please elaborate) <br/></p></block=
quote></div><div class=3D""><br/></div><div class=3D"">The goal would be to=
 test the &#34;local&#34; latency, throughput, and bufferbloat between the =
user&#39;s device and the router, and then compare this with the latency, t=
hroughput, and bufferbloat when DL/ULing to a remote server.<br/></div><div=
 class=3D""><br/></div><div class=3D"">This would reveal whether=C2=A0<span=
 style=3D"color: unset;" class=3D"">the dominant source of increase in late=
ncy under load is=C2=A0at the router&#39;s WAN interface or somewhere betwe=
en the router and the user (e.g. WiFi, ethernet, powerline, Moca devices, P=
tP connections, etc).</span><br/></div><div class=3D""><br/></div><div clas=
s=3D"">Being able to test the user-to-router leg of the connection would be=
 helpful more broadly beyond just bufferbloat.=C2=A0I often want to diagnos=
e whether my connection issues or speed drops are happening due to an issue=
 with my modem (and more generally the WAN connection) or if it&#39;s an is=
sue with my wifi connection.=C2=A0<br/></div><div class=3D""><br/></div><di=
v class=3D"">I guess I don&#39;t quite understand this part though: &#34;ip=
erf2/3 or netperf on a router is not all that representative for its routin=
g performance.&#34; What exactly do you mean here?<br/></div><div class=3D"=
"><br/></div><blockquote class=3D""><div class=3D"">=E2=80=8BMost recent di=
scussion moved over to<span class=3D"">=C2=A0</span><a style=3D"text-decora=
tion-color:initial;text-decoration-style:initial;text-decoration-thickness:=
initial;text-decoration-line:none;color:rgb(84, 172, 220);" class=3D"" href=
=3D"https://forum.openwrt.org/t/cake-w-adaptive-bandwidth/135379" rel=3D"no=
opener noreferrer" target=3D"_blank">https://forum.openwrt.org/t/cake-w-ada=
ptive-bandwidth/135379</a><br/></div></blockquote><div class=3D""><br/></di=
v><div class=3D"">Thanks! I have a lot of catching up to do on that thread,=
 and some of it is definitely above my pay grade :).<br/></div><div class=
=3D""><br/></div><blockquote class=3D""><div class=3D"">=E2=80=8B<span styl=
e=3D"text-decoration-color:initial;text-decoration-style:initial;text-decor=
ation-thickness:initial;font-weight:400;" class=3D"">I think this ideally w=
ould be solved at the 3GPPP level</span><br/></div></blockquote><div class=
=3D""><div class=3D""><br/></div><div class=3D"">Agreed. I wonder if there&=
#39;s anything we can do to encourage them to pay attention to this.<br/></=
div></div><div class=3D""><br/></div><div class=3D"">Best regards,<br/></di=
v><div class=3D""><br/></div><div class=3D"">Sina.<br/></div></div></div><b=
r/><div class=3D"sh-quoted-content"><div class=3D""><div class=3D"gmail_quo=
te">On Tue, Oct 18, 2022 at 12:04 PM, Sebastian Moeller <span dir=3D"ltr" c=
lass=3D"">&lt;<a href=3D"mailto:moeller0@gmx.de" target=3D"_blank" class=3D=
"">moeller0@gmx.de</a>&gt;</span> wrote:<br/><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><div class=3D"gmail_extra"><div class=3D"gmail_quote"><p class=3D"">Hi Sin=
a,
<br/></p><p class=3D"">
On 18 October 2022 19:17:16 CEST, Sina Khanifar via Bloat &lt;<a target=3D"=
_blank" rel=3D"noopener noreferrer" href=3D"mailto:bloat@lists.bufferbloat.=
net" class=3D"">bloat@<wbr/>lists.<wbr/>bufferbloat.<wbr/>net</a>&gt; wrote=
:
<br/></p><blockquote class=3D""><blockquote class=3D""><p class=3D"">
I can&#39;t help but wonder tho... are you collecting any statistics, over
time, as to how much better the problem is getting?
<br/></p></blockquote><p class=3D"">
We are collecting anonymized=C2=A0data, but we haven&#39;t analyzed it yet.=
 If we get a bit of time we&#39;ll look at that hopefully.
<br/></p></blockquote><p class=3D"">
[SM] Just an observation, using Safari I see large maximal delays (like a s=
mall group of samples far out to the right of the bulk) for both down- and =
upload that essentially disappear when I switch to firefox.
Now I tend to have a ton of tabs open in Safari while I only open firefox f=
or dedicated use-cases with a few tabs at most, so I do not intend to throw=
 shade on Safari here; my point is more browsers can and do affect the repo=
rted latency numbers, of you want to be able to test this, maybe ask users =
to use the OS browser (safari, edge, konqueror ;) ) as well as firefox and =
chrome so you can directly compare across browsers?
<br/></p><blockquote class=3D""><blockquote class=3D""><p class=3D"">
And any chance they could do something similar explaining wifi?
<br/></p></blockquote><p class=3D"">
I&#39;m actually not exactly sure what mitigations exist for WiFi at the mo=
ment - is there something I can read?
<br/></p><p class=3D"">
On this note: when we were building our test one of the things we really wi=
shed existed was a standardized way to test latency and throughput to route=
rs.=20
<br/></p></blockquote><p class=3D"">
[SM] traceroute/mtr albeit not sure how well this approach works from insid=
e the browser, can you e.g. control TTL and do you receive error messages v=
ia ICMP?
<br/></p><p class=3D"">
It would be super helpful if there was a standard in consumer routers=C2=A0=
that allowed users to both ping and fetch 0kB fils from their routers, and =
also run download/upload tests.
<br/></p><p class=3D"">
[SM] I think I see where you are coming from here. Over in the OpenWrt foru=
m we often see that server performance with iperf2/3 or netperf on a router=
 is not all that representative for its routing performance.
What do you expect to deduce from upload/download to the router? (I might m=
isunderstand your point by a mile, if so please elaborate)
<br/></p><p class=3D"">
Regards
<br/>
Sebastian
</p><blockquote class=3D""><blockquote class=3D""><p class=3D"">
I think one more wispa conference will be a clean sweep of everyone in the
fixed wireless market to not only adopt these algorithms for plan
enforcement, but even more directly on the radios and more CPE.
<br/></p></blockquote><p class=3D"">
T-Mobile has signed up 1m+ people to their new Home Internet over 5G, and a=
ll of them have really meaningful bufferbloat issues. I&#39;ve been pointin=
g folks who reach out to this thread ( <a target=3D"_blank" rel=3D"noopener=
 noreferrer" href=3D"https://forum.openwrt.org/t/cake-w-adaptive-bandwidth-=
historic/108848" class=3D"">https:/<wbr/>/<wbr/>forum.<wbr/>openwrt.<wbr/>o=
rg/<wbr/>t/<wbr/>cake-w-adaptive-bandwidth-historic/<wbr/>108848</a> ) abou=
t cake-autorate and sqm-autorate, but ideally it would be fixed at a networ=
k level, just not sure how to apply pressure (I&#39;m in contact with the T=
-Mobile Home Internet team, but I think this is above their heads).
<br/></p><p class=3D"">
On Mon, Oct 17, 2022 at 8:15 PM, Dave Taht &lt; <a target=3D"_blank" rel=3D=
"noopener noreferrer" href=3D"mailto:dave.taht@gmail.com" class=3D"">dave.<=
wbr/>taht@<wbr/>gmail.<wbr/>com</a> &gt; wrote:
<br/></p><blockquote class=3D""><p class=3D"">
<span class=3D"sh-date" data-date-isostring=3D"2022-10-17T07:00:00.000Z">On=
 Mon, Oct 17</span>, 2022 at 7:51 PM Sina Khanifar &lt; sina@ waveform. com=
 (
<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"mailto:sina@wavefo=
rm.com" class=3D"">sina@<wbr/>waveform.<wbr/>com</a> ) &gt; wrote:
<br/></p><blockquote class=3D""><p class=3D"">
Positive or negative, I can claim a bit of credit for this video :). We&#39=
;ve
been working with LTT on a few projects and we pitched them on doing
something around bufferbloat. We&#39;ve seen more traffic to our Waveforn t=
est
than ever before, which has been fun!
<br/></p></blockquote><p class=3D"">
Thank you. Great job with that video! And waveform has become the goto
site for many now.
<br/></p><p class=3D"">
I can&#39;t help but wonder tho... are you collecting any statistics, over
time, as to how much better the problem is getting?
<br/></p><p class=3D"">
And any chance they could do something similar explaining wifi?
<br/></p><p class=3D"">
...
<br/></p><p class=3D"">
I was just at WISPA conference week before last. Preseem&#39;s booth
<br/>
(fq_codel) was always packed. Vilo living had put cake in their wifi 6
product. A
<br/>
keynote speaker had deployed it and talked about it with waveform results
on the big screen (2k people there). A large wireless vendor demo&#39;d
privately to me their flent results before/after cake on their next-gen
radios... and people dissed tarana without me prompting for their bad
bufferbloat... and the best thing of all that happened to me was...
besides getting a hug from a young lady (megan) who&#39;d salvaged her
schooling in alaska using sqm - I walked up to the paraqum booth
<br/>
(another large QoE middlebox maker centered more in india) and asked.
</p><p class=3D"">
&#34;So... do y&#39;all have fq_codel yet?&#34;
<br/></p><p class=3D"">
And they smiled and said: &#34;No, we have something better... we&#39;ve go=
t
cake.&#34;
<br/></p><p class=3D"">
&#34;Cake? What&#39;s that?&#34; - I said, innocently.
<br/></p><p class=3D"">
They then stepped me through their 200Gbps (!!) product, which uses a
bunch of offloads, and can track rtt down to a ms with the intel ethernet
card they were using. They&#39;d modifed cake to provide 16 (?) levels of
service, and were running under dpdk (I am not sure if cake was). It was a
great, convincing pitch...
<br/></p><p class=3D"">
... then I told &#39;em who I was. There&#39;s a video of the in-both conce=
rt
after.
<br/></p><p class=3D"">
...
<br/></p><p class=3D"">
The downside to me (and the subject of my talk) was that in nearly every
person I talked to, fq_codel was viewed as a means to better subscriber
bandwidth plan enforcement (which is admittedly the market that preseem
pioneered) and it was not understood that I&#39;d got involved in this whol=
e
thing because I&#39;d wanted an algorithm to deal with &#34;rain fade&#34;,=
 running
directly on the radios. People wanted to use the statistics on the radios
to drive the plan enforcement better
<br/>
(which is an ok approach, I guess), and for 10+ I&#39;d been whinging about
the... physics.
</p><p class=3D"">
So I ranted about rfc7567 a lot and begged people now putting routerOS
<br/>
7.2 and later out there (mikrotik is huge in this market), to kill their
fifos and sfqs at the native rates of the interfaces... and watch their
network improve that way also.
</p><p class=3D"">
I think one more wispa conference will be a clean sweep of everyone in the
fixed wireless market to not only adopt these algorithms for plan
enforcement, but even more directly on the radios and more CPE.
<br/></p><p class=3D"">
I also picked up enough consulting business to keep me busy the rest of
this year, and possibly more than I can handle (anybody looking?)
<br/></p><p class=3D"">
I wonder what will happen at a fiber conference?
<br/></p><blockquote class=3D""><p class=3D"">
<span class=3D"sh-date" data-date-isostring=3D"2022-10-17T07:00:00.000Z">On=
 Mon, Oct 17</span>, 2022 at 7:45 PM Dave Taht via Bloat &lt; bloat@ lists.=
 bufferbloat.
net ( <a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"mailto:bloat=
@lists.bufferbloat.net" class=3D"">bloat@<wbr/>lists.<wbr/>bufferbloat.<wbr=
/>net</a> ) &gt; wrote:
<br/></p><blockquote class=3D""><p class=3D"">
<span class=3D"sh-date" data-date-isostring=3D"2022-10-17T07:00:00.000Z">On=
 Mon, Oct 17</span>, 2022 at 5:02 PM Stuart Cheshire &lt; cheshire@ apple. =
com (
<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"mailto:cheshire@ap=
ple.com" class=3D"">cheshire@<wbr/>apple.<wbr/>com</a> ) &gt; wrote:
<br/></p><blockquote class=3D""><p class=3D"">
On <span class=3D"sh-date" data-date-isostring=3D"2022-10-09T07:00:00.000Z"=
>9 Oct 2022</span>, at 06:14, Dave Taht via Make-wifi-fast &lt; make-wifi-f=
ast@ lists.
bufferbloat. net ( <a target=3D"_blank" rel=3D"noopener noreferrer" href=3D=
"mailto:make-wifi-fast@lists.bufferbloat.net" class=3D"">make-wifi-fast@<wb=
r/>lists.<wbr/>bufferbloat.<wbr/>net</a> ) &gt; wrote:
<br/></p><blockquote class=3D""><p class=3D"">
This was so massively well done, I cried. Does anyone know how to get in
touch with the ifxit folk?
<br/></p><p class=3D"">
https:/ / www. youtube. com/ watch?v=3DUICh3ScfNWI (
<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"https://www.youtub=
e.com/watch?v=3DUICh3ScfNWI" class=3D"">https:/<wbr/>/<wbr/>www.<wbr/>youtu=
be.<wbr/>com/<wbr/>watch?v=3DUICh3ScfNWI</a> )
<br/></p></blockquote><p class=3D"">
I=E2=80=99m surprised that you liked this video. It seems to me that it rep=
eats
all the standard misinformation. The analogy they use is the standard
terrible example of waiting in a long line at a grocery store, and the
<br/>
=E2=80=9Csolution=E2=80=9D is letting certain traffic =E2=80=9Cjump the lin=
e, angering everyone
behind them=E2=80=9D.
</p></blockquote><p class=3D"">
Accuracy be damned. The analogy to common experience resonates more.
<br/></p><blockquote class=3D""><p class=3D"">
Some quotes from the video:
<br/></p><blockquote class=3D""><p class=3D"">
it would be so much more efficient for them to let you skip the line and
just check out, especially since you=E2=80=99re in a hurry, but they=E2=80=
=99re rudely
refusing
<br/></p></blockquote></blockquote><p class=3D"">
I think the person with the cheetos pulling out a gun and shooting
everyone in front of him (AQM) would not go down well.
<br/></p><blockquote class=3D""><blockquote class=3D""><p class=3D"">
to go back to our grocery store analogy this would be like if a worker saw
you standing at the back ... and either let you skip to the front of the
line or opens up an express lane just for you
<br/></p></blockquote></blockquote><p class=3D"">
Actually that analogy is fairly close to fair queuing. The multiple
checker analogy is one of the most common analogies in queue theory
itself.
<br/></p><blockquote class=3D""><p class=3D"">
The video describes the problem of bufferbloat, and then describes the
same failed solution that hasn=E2=80=99t worked for the last three decades.
<br/></p></blockquote><p class=3D"">
Hmm? It establishes the scenario, explains the problem *quickly*, disses
gamer routers for not getting it right.. *points to an accurate test*, and
then to the ideas and products that *actually work* with &#34;smart queuein=
g&#34;,
with a screenshot of the most common
<br/>
(eero&#39;s optimize for gaming and videoconferencing), and fq_codel and ca=
ke
<br/>
*by name*, and points folk at the best known solution available, openwrt.
</p><p class=3D"">
Bing, baddabang, boom. Also the comments were revealing. A goodly
percentage already knew the problem, more than a few were inspired to take
the test,
<br/>
there was a whole bunch of &#34;Aha!&#34; success stories and 360k views, w=
hich is
more people than we&#39;ve ever been able to reach in for example, a nanog
conference.
</p><p class=3D"">
I loved that folk taking the test actually had quite a few A results,
without having had to do anything. At least some ISPs are getting it more
right now!
<br/></p><p class=3D"">
At this point I think gamers in particular know what &#34;brands&#34; we&#3=
9;ve tried
to establish - &#34;Smart queues&#34;, &#34;SQM&#34;, &#34;OpenWrt&#34;, fq=
_codel and now &#34;cake&#34;
are &#34;good&#34; things to have, and are stimulating demand by asking for=
 them,
It&#39;s certainly working out better and better for evenroute, firewalla,
ubnt and others, and I saw an uptick in questions about this on various
user forums.
<br/></p><p class=3D"">
I even like that there&#39;s a backlash now of people saying &#34;fixing
bufferbloat doesn&#39;t solve everything&#34; -
<br/></p><blockquote class=3D""><p class=3D"">
Describing the obvious simple-minded (wrong) solution that any normal
person would think of based on their personal human experience waiting in
grocery stores and airports, is not describing the solution to
bufferbloat. The solution to bufferbloat is not that if you are privileged
then you get to =E2=80=9Cskip to the front of the line=E2=80=9D. The soluti=
on to
bufferbloat is that there is no line!
<br/></p></blockquote><p class=3D"">
I like the idea of a guru floating above a grocery cart with a better
string of explanations, explaining
<br/></p><p class=3D"">
- &#34;no, grasshopper, the solution to bufferbloat is no line... at all&#3=
4;.
<br/></p><blockquote class=3D""><p class=3D"">
With grocery stores and airports people=E2=80=99s arrivals are independent =
and not
controlled. There is no way for a grocery store or airport to generate
backpressure to tell people to wait at home when a queue begins to form.
The key to solving bufferbloat is generating timely backpressure to
prevent the queue forming in the first place, not accepting a huge queue
and then deciding who deserves special treatment to get better service
than all the other peons who still have to wait in a long queue, just like
before.
<br/></p></blockquote><p class=3D"">
I am not huge on the word &#34;backpressure&#34; here. Needs to signal the =
other
side to slow down, is more accurate. So might say timely signalling rather
than timely backpressure?
<br/></p><p class=3D"">
Other feedback I got was that the video was too smarmy (I agree),
different audiences than gamers need different forms of outreach...
<br/></p><p class=3D"">
but to me, winning the gamers has always been one of the most important
things, as they make a lot of buying decisions, and they benefit the most
for
<br/>
fq and packet prioritization as we do <span class=3D"sh-date" data-date-iso=
string=3D"2022-10-18T22:00:00.000Z">today</span> in gamer routers and in ca=
ke +
qosify.
</p><p class=3D"">
maybe that gets in the way of more serious markets. Certainly I would like
another video explaining what goes wrong with videoconferencing.
<br/></p><blockquote class=3D""><p class=3D"">
Stuart Cheshire
<br/></p></blockquote><p class=3D"">
--
<br/>
This song goes out to all the folk that thought Stadia would work: https:/
<br/>
/ www. linkedin. com/ posts/ dtaht_the-mushroom-song-activity-6981366665607=
352320-FXtz
<br/>
(
<br/>
<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"https://www.linked=
in.com/posts/dtaht_the-mushroom-song-activity-6981366665607352320-FXtz" cla=
ss=3D"">https:/<wbr/>/<wbr/>www.<wbr/>linkedin.<wbr/>com/<wbr/>posts/<wbr/>=
dtaht_the-mushroom-song-activity-6981366665607352320-FXtz</a>
<br/>
) Dave T=C3=A4ht CEO, TekLibre, LLC
<br/>
_______________________________________________
<br/>
Bloat mailing list
<br/>
Bloat@ lists. bufferbloat. net ( <a target=3D"_blank" rel=3D"noopener noref=
errer" href=3D"mailto:Bloat@lists.bufferbloat.net">Bloat@lists.bufferbloat.=
net</a> )
<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"https://lists.buff=
erbloat.net/listinfo/bloat">https://lists.bufferbloat.net/listinfo/bloat</a=
>
</p></blockquote></blockquote><p class=3D"">
--
<br/>
This song goes out to all the folk that thought Stadia would work: https:/
<br/>
/ www. linkedin. com/ posts/ dtaht_the-mushroom-song-activity-6981366665607=
352320-FXtz
<br/>
(
<br/>
<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"https://www.linked=
in.com/posts/dtaht_the-mushroom-song-activity-6981366665607352320-FXtz" cla=
ss=3D"">https:/<wbr/>/<wbr/>www.<wbr/>linkedin.<wbr/>com/<wbr/>posts/<wbr/>=
dtaht_the-mushroom-song-activity-6981366665607352320-FXtz</a>
<br/>
) Dave T=C3=A4ht CEO, TekLibre, LLC
</p></blockquote></blockquote><p class=3D"">
--=20
<br/>
Sent from my Android device with K-9 Mail. Please excuse my brevity.</p></d=
iv></div></blockquote></div></div></div></div><div><br/></div></div><div><d=
iv style=3D"display: none; border: 0px; width: 0px; height: 0px; overflow: =
hidden; visibility: hidden;"><img src=3D"https://r.superhuman.com/IQMzazog7=
O5pM5F9wWNdR0jwGHiAB13Zyd5R361jokLG76uuoT8Km8Kx6S1PQKzmqqGGqEnNOcsM4z0du1G6=
Jx8O90KftgH-zFhYi72dm_62U_HZfaAZMcGi4gd-ZFiO5afuqGWgqsCjYfnyUEPsTFbmprtXvIb=
FKKoXJQ6CFb3kwpGVZ35oWXC6HwrwrA.gif" alt=3D" " width=3D"1" height=3D"0" sty=
le=3D"display: none; border: 0px; width: 0px; height: 0px; overflow: hidden=
; visibility: hidden;"/><!--                                               =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
                                                                           =
   --></div></div></div></body></html>
--a00aad616cc2c3b0f180550026cfbbf30ab098aff9069214a780a4a411f0--

--===============7602804535446486699==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============7602804535446486699==--

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFFE8B6570
	for <lists+cake@lfdr.de>; Tue, 30 Apr 2024 00:18:58 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id E886A3CB55;
	Mon, 29 Apr 2024 18:18:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1714429132;
	bh=Y4v4f7WmqDoxrFZapGlbOMOkPshpQv9GFHwM8yoA8PM=;
	h=In-Reply-To:Date:References:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=PGauDCsgR6DlnS4grfnjtSb8u+HnQhLKbPSTxzSdQ6qpFcAaPMu29T3LFk7FGVrA1
	 3J/qpYy1MKSMlQW/TCRTKJY+B9m/7DL3dEe2pwtKyd2V/H97GkBI/uTwqz+bgicR1Y
	 Q0VR0lPW0nbpRpqMgylgYK3/2JPtHRw0eSAyDecJl91mvB7QG1W7+hS5gHM45TcYCz
	 36oS0rD6zrSzIAwxhrP6ZLjqp869tm6zBpW6O/CyPnFKWZJoPM0y5ZPke3lfd/k16h
	 UIADN1z8FC+/qkj55GO5whW3zEzZsmiIsNwdaSIf1keUzfI9440Zn1r5oSqpgr400W
	 sR1nq9tLLMOsQ==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com
 [IPv6:2607:f8b0:4864:20::e31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 8730B3B29E
 for <cake@lists.bufferbloat.net>; Tue, 18 Oct 2022 13:17:20 -0400 (EDT)
Received: by mail-vs1-xe31.google.com with SMTP id x66so6748638vsb.3
 for <cake@lists.bufferbloat.net>; Tue, 18 Oct 2022 10:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=waveform.com; s=google;
 h=cc:to:subject:message-id:from:references:date:in-reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=EUym8hTYz7Z6tR/eBfWsM1qiUTQRMkYEWzN0HJ4GzA8=;
 b=K7XqIjsdQ8iXsMKzjqLYBHxNcURolBQwCRY2dOgdqkUvw2jRR1/Thb7FJs24VxAICg
 U/1iZNrP2guraCIIMDuv5l2NMYpf7UuhQWjGT2a/I0JJTLtRxcvqa0yVGcwZzqqBkdK2
 +FGkg5nUT2YGHpRI+QZmV/Dkb3wujLA9gEfP2kfhz9/Jm2oZbiaVGhjtZ4DakO/jpPF+
 pWwi5PaV1YNyhegbTm8FqghgCXqrHDTx4jCIVHC/A5Ws8IW/Ym41a2UDHW1OvqBx/7OU
 87GOYrEu+0HmvgNwCSZ7c/Vo9Vwf8wRmR3m5ESZVTvqNW1sfNYcWAK/7Wpz/lW5isiG5
 uf6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:from:references:date:in-reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=EUym8hTYz7Z6tR/eBfWsM1qiUTQRMkYEWzN0HJ4GzA8=;
 b=ErdA37+R2bHlE9nbPUluqgdhkqLgb7ILlWtifpdePrXl4EdWSRBOBkXuGFBz4HWeKO
 5CuZvj+uihy5F18vpM2GDyw0BFmWrqgr5CBnJstLv7f67RBqqlQKmvyn5HaS3ZZvfVR2
 LWe6FntbwnGjt19XPzrV1/OvLLwBobIpfUC45Py5GLUxg8RdQZlkjDvqglpJLOGhUPZ7
 HATBZdSWDQx+CCKmbqTfHKKhjrdMh6St43J3d68GoIeNpBlQk6A+4nTZ8nZd8JBCSRoL
 BAOjjGYpo36eVzN0mwxI/EdgJSud7GDhFhCrrumvrRngS4WCPc2uLwPEK/3yupSWzKjB
 Fk6Q==
X-Gm-Message-State: ACrzQf03LVKPEQt2sHClxWEgwlPPO9fhe8AymaBaYGKNQ3UvJ06pBayD
 4YmhDaH1pdMuLmDfZYY7xg/KWEIkObDiEYdatftupD35E2tZZle5llDc5QpFpV48DbLI5Kt0BUl
 +LnKJwfXY/Wfi4glNkdmNd8WsV51ohZHds+K3Dd30YZxor6S9bDi5cnNXl2aS0SjzIidhFn6X9P
 F0fRgR0Q==
X-Google-Smtp-Source: AMsMyM67KNpGDCfXbgZ2tx405ZKqGoFCce5b/XBV/Rq/pTs5+HI0IiHlGOj7IWZlbUF+QxODwvZpKA==
X-Received: by 2002:a05:6102:23e5:b0:3a7:8107:3185 with SMTP id
 p5-20020a05610223e500b003a781073185mr2071520vsc.59.1666113439214; 
 Tue, 18 Oct 2022 10:17:19 -0700 (PDT)
Received: from localhost (0.92.231.35.bc.googleusercontent.com. [35.231.92.0])
 by smtp.gmail.com with UTF8SMTPSA id
 b15-20020ab00b0f000000b003b6e7b4ee9asm1765707uak.4.2022.10.18.10.17.18
 for <cake@lists.bufferbloat.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Oct 2022 10:17:18 -0700 (PDT)
Mime-Version: 1.0
X-Superhuman-ID: l9egwr96.18e1fad8-3694-412a-910b-51bb5f135f1a
X-Superhuman-Draft-ID: draft0035fe5ea33791dc
In-Reply-To: <CAA93jw4f701R+4B538jF1+qAW=cUgP35EmWy8VZG-1h=w8woOA@mail.gmail.com>
Date: Tue, 18 Oct 2022 17:17:16 +0000
X-Mailer: Superhuman Web (2022-10-17T22:06:03Z)
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <938D9D45-DADA-4291-BD8A-84E4257CEE49@apple.com>
 <CAA93jw4KOkgdfT2LunCtPYPjXL+=OtTrouJgPjM7U1bHKtErnw@mail.gmail.com>
 <CACTgmGpgDjWF4d_+Kga4CL4vxb-YQ91Lu1U6Zt5vca0EGSwQ2w@mail.gmail.com>
 <CAA93jw4f701R+4B538jF1+qAW=cUgP35EmWy8VZG-1h=w8woOA@mail.gmail.com>
Message-ID: <l9egkfsn.61659de8-7256-4ec0-938c-38be1dcb1e4c@we.are.superhuman.com>
To: "Dave Taht" <dave.taht@gmail.com>
X-Mailman-Approved-At: Mon, 29 Apr 2024 18:18:51 -0400
Subject: Re: [Cake] A quick report from the WISPA conference
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
 Rpm <rpm@lists.bufferbloat.net>, Stuart Cheshire <cheshire@apple.com>,
 bloat <bloat@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============2538709128128569805=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============2538709128128569805==
Content-Type: multipart/alternative;
 boundary=5048600b945f34662f425ea15b54444e95abf3d2f4d4bb74875d5d7361e4

--5048600b945f34662f425ea15b54444e95abf3d2f4d4bb74875d5d7361e4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

>=20
>=20
>=20
> I can't help but wonder tho... are you collecting any statistics, over
> time, as to how much better the problem is getting?
>=20
>=20
>=20

We are collecting anonymized=C2=A0data, but we haven't analyzed it yet. If =
we get a bit of time we'll look at that hopefully.

>=20
>=20
>=20
> And any chance they could do something similar explaining wifi?
>=20
>=20
>=20

I'm actually not exactly sure what mitigations exist for WiFi at the moment=
 - is there something I can read?

On this note: when we were building our test one of the things we really wi=
shed existed was a standardized way to test latency and throughput to route=
rs. It would be super helpful if there was a standard in consumer routers=
=C2=A0that allowed users to both ping and fetch 0kB fils from their routers=
, and also run download/upload tests.

>=20
>=20
>=20
> I think one more wispa conference will be a clean sweep of everyone in th=
e
> fixed wireless market to not only adopt these algorithms for plan
> enforcement, but even more directly on the radios and more CPE.
>=20
>=20
>=20

T-Mobile has signed up 1m+ people to their new Home Internet over 5G, and a=
ll of them have really meaningful bufferbloat issues. I've been pointing fo=
lks who reach out to this thread ( https://forum.openwrt.org/t/cake-w-adapt=
ive-bandwidth-historic/108848 ) about cake-autorate and sqm-autorate, but i=
deally it would be fixed at a network level, just not sure how to apply pre=
ssure (I'm in contact with the T-Mobile Home Internet team, but I think thi=
s is above their heads).

On Mon, Oct 17, 2022 at 8:15 PM, Dave Taht < dave.taht@gmail.com > wrote:

>=20
>=20
>=20
> On Mon, Oct 17, 2022 at 7:51 PM Sina Khanifar < sina@ waveform. com (
> sina@waveform.com ) > wrote:
>=20
>=20
>=20
>>=20
>>=20
>> Positive or negative, I can claim a bit of credit for this video :). We'=
ve
>> been working with LTT on a few projects and we pitched them on doing
>> something around bufferbloat. We've seen more traffic to our Waveforn te=
st
>> than ever before, which has been fun!
>>=20
>>=20
>>=20
>=20
>=20
>=20
> Thank you. Great job with that video! And waveform has become the goto
> site for many now.
>=20
>=20
>=20
>=20
> I can't help but wonder tho... are you collecting any statistics, over
> time, as to how much better the problem is getting?
>=20
>=20
>=20
>=20
> And any chance they could do something similar explaining wifi?
>=20
>=20
>=20
>=20
> ...
>=20
>=20
>=20
>=20
> I was just at WISPA conference week before last. Preseem's booth
> (fq_codel) was always packed. Vilo living had put cake in their wifi 6
> product. A
> keynote speaker had deployed it and talked about it with waveform results
> on the big screen (2k people there). A large wireless vendor demo'd
> privately to me their flent results before/after cake on their next-gen
> radios... and people dissed tarana without me prompting for their bad
> bufferbloat... and the best thing of all that happened to me was...
> besides getting a hug from a young lady (megan) who'd salvaged her
> schooling in alaska using sqm - I walked up to the paraqum booth
> (another large QoE middlebox maker centered more in india) and asked.
>=20
>=20
>=20
> "So... do y'all have fq_codel yet?"
>=20
>=20
>=20
>=20
> And they smiled and said: "No, we have something better... we've got
> cake."
>=20
>=20
>=20
>=20
> "Cake? What's that?" - I said, innocently.
>=20
>=20
>=20
>=20
> They then stepped me through their 200Gbps (!!) product, which uses a
> bunch of offloads, and can track rtt down to a ms with the intel ethernet
> card they were using. They'd modifed cake to provide 16 (?) levels of
> service, and were running under dpdk (I am not sure if cake was). It was =
a
> great, convincing pitch...
>=20
>=20
>=20
>=20
> ... then I told 'em who I was. There's a video of the in-both concert
> after.
>=20
>=20
>=20
>=20
> ...
>=20
>=20
>=20
>=20
> The downside to me (and the subject of my talk) was that in nearly every
> person I talked to, fq_codel was viewed as a means to better subscriber
> bandwidth plan enforcement (which is admittedly the market that preseem
> pioneered) and it was not understood that I'd got involved in this whole
> thing because I'd wanted an algorithm to deal with "rain fade", running
> directly on the radios. People wanted to use the statistics on the radios
> to drive the plan enforcement better
> (which is an ok approach, I guess), and for 10+ I'd been whinging about
> the... physics.
>=20
>=20
>=20
> So I ranted about rfc7567 a lot and begged people now putting routerOS
> 7.2 and later out there (mikrotik is huge in this market), to kill their
> fifos and sfqs at the native rates of the interfaces... and watch their
> network improve that way also.
>=20
>=20
>=20
> I think one more wispa conference will be a clean sweep of everyone in th=
e
> fixed wireless market to not only adopt these algorithms for plan
> enforcement, but even more directly on the radios and more CPE.
>=20
>=20
>=20
>=20
> I also picked up enough consulting business to keep me busy the rest of
> this year, and possibly more than I can handle (anybody looking?)
>=20
>=20
>=20
>=20
> I wonder what will happen at a fiber conference?
>=20
>=20
>=20
>>=20
>>=20
>> On Mon, Oct 17, 2022 at 7:45 PM Dave Taht via Bloat < bloat@ lists. buff=
erbloat.
>> net ( bloat@lists.bufferbloat.net ) > wrote:
>>=20
>>=20
>>=20
>>>=20
>>>=20
>>> On Mon, Oct 17, 2022 at 5:02 PM Stuart Cheshire < cheshire@ apple. com =
(
>>> cheshire@apple.com ) > wrote:
>>>=20
>>>=20
>>>=20
>>>>=20
>>>>=20
>>>> On 9 Oct 2022, at 06:14, Dave Taht via Make-wifi-fast < make-wifi-fast=
@ lists.
>>>> bufferbloat. net ( make-wifi-fast@lists.bufferbloat.net ) > wrote:
>>>>=20
>>>>=20
>>>>=20
>>>>>=20
>>>>>=20
>>>>> This was so massively well done, I cried. Does anyone know how to get=
 in
>>>>> touch with the ifxit folk?
>>>>>=20
>>>>>=20
>>>>>=20
>>>>>=20
>>>>> https:/ / www. youtube. com/ watch?v=3DUICh3ScfNWI (
>>>>> https://www.youtube.com/watch?v=3DUICh3ScfNWI )
>>>>>=20
>>>>>=20
>>>>>=20
>>>>=20
>>>>=20
>>>>=20
>>>> I=E2=80=99m surprised that you liked this video. It seems to me that i=
t repeats
>>>> all the standard misinformation. The analogy they use is the standard
>>>> terrible example of waiting in a long line at a grocery store, and the
>>>> =E2=80=9Csolution=E2=80=9D is letting certain traffic =E2=80=9Cjump th=
e line, angering everyone
>>>> behind them=E2=80=9D.
>>>>=20
>>>>=20
>>>>=20
>>>=20
>>>=20
>>>=20
>>> Accuracy be damned. The analogy to common experience resonates more.
>>>=20
>>>=20
>>>=20
>>>>=20
>>>>=20
>>>> Some quotes from the video:
>>>>=20
>>>>=20
>>>>=20
>>>>>=20
>>>>>=20
>>>>> it would be so much more efficient for them to let you skip the line =
and
>>>>> just check out, especially since you=E2=80=99re in a hurry, but they=
=E2=80=99re rudely
>>>>> refusing
>>>>>=20
>>>>>=20
>>>>>=20
>>>>=20
>>>>=20
>>>=20
>>>=20
>>>=20
>>> I think the person with the cheetos pulling out a gun and shooting
>>> everyone in front of him (AQM) would not go down well.
>>>=20
>>>=20
>>>=20
>>>>=20
>>>>>=20
>>>>>=20
>>>>> to go back to our grocery store analogy this would be like if a worke=
r saw
>>>>> you standing at the back ... and either let you skip to the front of =
the
>>>>> line or opens up an express lane just for you
>>>>>=20
>>>>>=20
>>>>>=20
>>>>=20
>>>>=20
>>>=20
>>>=20
>>>=20
>>> Actually that analogy is fairly close to fair queuing. The multiple
>>> checker analogy is one of the most common analogies in queue theory
>>> itself.
>>>=20
>>>=20
>>>=20
>>>>=20
>>>>=20
>>>> The video describes the problem of bufferbloat, and then describes the
>>>> same failed solution that hasn=E2=80=99t worked for the last three dec=
ades.
>>>>=20
>>>>=20
>>>>=20
>>>=20
>>>=20
>>>=20
>>> Hmm? It establishes the scenario, explains the problem *quickly*, disse=
s
>>> gamer routers for not getting it right.. *points to an accurate test*, =
and
>>> then to the ideas and products that *actually work* with "smart queuein=
g",
>>> with a screenshot of the most common
>>> (eero's optimize for gaming and videoconferencing), and fq_codel and ca=
ke
>>> *by name*, and points folk at the best known solution available, openwr=
t.
>>>=20
>>>=20
>>>=20
>>> Bing, baddabang, boom. Also the comments were revealing. A goodly
>>> percentage already knew the problem, more than a few were inspired to t=
ake
>>> the test,
>>> there was a whole bunch of "Aha!" success stories and 360k views, which=
 is
>>> more people than we've ever been able to reach in for example, a nanog
>>> conference.
>>>=20
>>>=20
>>>=20
>>> I loved that folk taking the test actually had quite a few A results,
>>> without having had to do anything. At least some ISPs are getting it mo=
re
>>> right now!
>>>=20
>>>=20
>>>=20
>>>=20
>>> At this point I think gamers in particular know what "brands" we've tri=
ed
>>> to establish - "Smart queues", "SQM", "OpenWrt", fq_codel and now "cake=
"
>>> are "good" things to have, and are stimulating demand by asking for the=
m,
>>> It's certainly working out better and better for evenroute, firewalla,
>>> ubnt and others, and I saw an uptick in questions about this on various
>>> user forums.
>>>=20
>>>=20
>>>=20
>>>=20
>>> I even like that there's a backlash now of people saying "fixing
>>> bufferbloat doesn't solve everything" -
>>>=20
>>>=20
>>>=20
>>>>=20
>>>>=20
>>>> Describing the obvious simple-minded (wrong) solution that any normal
>>>> person would think of based on their personal human experience waiting=
 in
>>>> grocery stores and airports, is not describing the solution to
>>>> bufferbloat. The solution to bufferbloat is not that if you are privil=
eged
>>>> then you get to =E2=80=9Cskip to the front of the line=E2=80=9D. The s=
olution to
>>>> bufferbloat is that there is no line!
>>>>=20
>>>>=20
>>>>=20
>>>=20
>>>=20
>>>=20
>>> I like the idea of a guru floating above a grocery cart with a better
>>> string of explanations, explaining
>>>=20
>>>=20
>>>=20
>>>=20
>>> - "no, grasshopper, the solution to bufferbloat is no line... at all".
>>>=20
>>>=20
>>>=20
>>>>=20
>>>>=20
>>>> With grocery stores and airports people=E2=80=99s arrivals are indepen=
dent and not
>>>> controlled. There is no way for a grocery store or airport to generate
>>>> backpressure to tell people to wait at home when a queue begins to for=
m.
>>>> The key to solving bufferbloat is generating timely backpressure to
>>>> prevent the queue forming in the first place, not accepting a huge que=
ue
>>>> and then deciding who deserves special treatment to get better service
>>>> than all the other peons who still have to wait in a long queue, just =
like
>>>> before.
>>>>=20
>>>>=20
>>>>=20
>>>=20
>>>=20
>>>=20
>>> I am not huge on the word "backpressure" here. Needs to signal the othe=
r
>>> side to slow down, is more accurate. So might say timely signalling rat=
her
>>> than timely backpressure?
>>>=20
>>>=20
>>>=20
>>>=20
>>> Other feedback I got was that the video was too smarmy (I agree),
>>> different audiences than gamers need different forms of outreach...
>>>=20
>>>=20
>>>=20
>>>=20
>>> but to me, winning the gamers has always been one of the most important
>>> things, as they make a lot of buying decisions, and they benefit the mo=
st
>>> for
>>> fq and packet prioritization as we do today in gamer routers and in cak=
e +
>>> qosify.
>>>=20
>>>=20
>>>=20
>>> maybe that gets in the way of more serious markets. Certainly I would l=
ike
>>> another video explaining what goes wrong with videoconferencing.
>>>=20
>>>=20
>>>=20
>>>>=20
>>>>=20
>>>> Stuart Cheshire
>>>>=20
>>>>=20
>>>>=20
>>>=20
>>>=20
>>>=20
>>> --
>>> This song goes out to all the folk that thought Stadia would work: http=
s:/
>>> / www. linkedin. com/ posts/ dtaht_the-mushroom-song-activity-698136666=
5607352320-FXtz
>>> (
>>> https://www.linkedin.com/posts/dtaht_the-mushroom-song-activity-6981366=
665607352320-FXtz
>>> ) Dave T=C3=A4ht CEO, TekLibre, LLC
>>> _______________________________________________
>>> Bloat mailing list
>>> Bloat@ lists. bufferbloat. net ( Bloat@lists.bufferbloat.net )
>>> https://lists.bufferbloat.net/listinfo/bloat
>>>=20
>>>=20
>>=20
>>=20
>=20
>=20
>=20
> --
> This song goes out to all the folk that thought Stadia would work: https:=
/
> / www. linkedin. com/ posts/ dtaht_the-mushroom-song-activity-69813666656=
07352320-FXtz
> (
> https://www.linkedin.com/posts/dtaht_the-mushroom-song-activity-698136666=
5607352320-FXtz
> ) Dave T=C3=A4ht CEO, TekLibre, LLC
>=20
>=20
>
--5048600b945f34662f425ea15b54444e95abf3d2f4d4bb74875d5d7361e4
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div><div><div class=3D""><div class=3D""><div cla=
ss=3D""><div class=3D""><blockquote class=3D""><p class=3D"">I can&#39;t he=
lp but wonder tho... are you collecting any statistics, over
time, as to how much better the problem is getting?
<br/></p></blockquote></div><div class=3D""><br/></div><div class=3D"">We a=
re collecting anonymized=C2=A0data, but we haven&#39;t analyzed it yet. If =
we get a bit of time we&#39;ll look at that hopefully.<br/></div><div class=
=3D""><br/></div><div class=3D""><blockquote class=3D""><p class=3D"">And a=
ny chance they could do something similar explaining wifi?
<br/></p></blockquote></div><div class=3D""><br/></div><div class=3D"">I&#3=
9;m actually not exactly sure what mitigations exist for WiFi at the moment=
 - is there something I can read?<br/></div><div class=3D""><br/></div><div=
 class=3D"">On this note: when we were building our test one of the things =
we really wished existed was a standardized way to test latency and through=
put to routers. It would be super helpful if there was a standard in consum=
er routers=C2=A0that allowed users to both ping and fetch 0kB fils from the=
ir routers, and also run download/upload tests.<br/></div><div class=3D""><=
br/></div><div class=3D""><blockquote class=3D""><p class=3D"">I think one =
more wispa conference will be a clean sweep of everyone in
the fixed wireless market to not only adopt these algorithms for plan
enforcement, but even more directly on the radios and more CPE.
<br/></p></blockquote></div><div class=3D""><br/></div><div class=3D"">T-Mo=
bile has signed up 1m+ people to their new Home Internet over 5G, and all o=
f them have really meaningful bufferbloat issues. I&#39;ve been pointing fo=
lks who reach out to <a href=3D"https://forum.openwrt.org/t/cake-w-adaptive=
-bandwidth-historic/108848" target=3D"_blank" class=3D"">this thread</a>=C2=
=A0about cake-autorate and sqm-autorate, but ideally it would be fixed at a=
 network level, just not sure how to apply pressure (I&#39;m in contact wit=
h the T-Mobile Home Internet team, but I think this is above their heads).<=
br/></div></div><div class=3D"sh-signature"><div class=3D"gmail_signature">=
<div class=3D""><div dir=3D"ltr" class=3D""><br/></div></div></div></div></=
div><br/><div class=3D"sh-quoted-content"><div class=3D""><div class=3D"gma=
il_quote">On Mon, Oct 17, 2022 at 8:15 PM, Dave Taht <span dir=3D"ltr" clas=
s=3D"">&lt;<a href=3D"mailto:dave.taht@gmail.com" target=3D"_blank" class=
=3D"">dave.taht@gmail.com</a>&gt;</span> wrote:<br/><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><p class=3D""=
>On Mon, Oct 17, 2022 at 7:51 PM Sina Khanifar &lt;<a target=3D"_blank" rel=
=3D"noopener noreferrer" href=3D"mailto:sina@waveform.com" class=3D"">sina@=
<wbr/>waveform.<wbr/>com</a>&gt; wrote:
<br/></p><blockquote class=3D""><p class=3D"">
Positive or negative, I can claim a bit of credit for this video :). We&#39=
;ve been working with LTT on a few projects and we pitched them on doing so=
mething around bufferbloat. We&#39;ve seen more traffic to our Waveforn tes=
t than ever before, which has been fun!
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
keynote speaker had deployed it and talked about it with waveform
results on the big screen (2k people there). A large wireless vendor
demo&#39;d privately to me their flent results before/after cake on their
next-gen radios... and people dissed tarana without me prompting for
their bad bufferbloat... and the best thing of all that happened to me
was... besides getting a hug from a young lady (megan) who&#39;d salvaged
her schooling in alaska using sqm - I walked up to the paraqum booth
<br/>
(another large QoE middlebox maker centered more in india) and asked.
</p><p class=3D"">
&#34;So... do y&#39;all have fq_codel yet?&#34;
<br/></p><p class=3D"">
And they smiled and said: &#34;No, we have something better... we&#39;ve go=
t cake.&#34;
<br/></p><p class=3D"">
&#34;Cake? What&#39;s that?&#34; - I said, innocently.
<br/></p><p class=3D"">
They then stepped me through their 200Gbps (!!) product, which uses a
bunch of offloads, and can track rtt down to a ms with the intel
ethernet card they were using. They&#39;d modifed cake to provide 16 (?)
levels of service, and were running under dpdk (I am not sure if cake
was). It was a great, convincing pitch...
<br/></p><p class=3D"">
... then I told &#39;em who I was. There&#39;s a video of the in-both conce=
rt after.
<br/></p><p class=3D"">
...
<br/></p><p class=3D"">
The downside to me (and the subject of my talk) was that in nearly
every person I talked to, fq_codel was viewed as a means to better
subscriber bandwidth plan enforcement (which is admittedly the market
that preseem pioneered) and it was not understood that I&#39;d got
involved in this whole thing because I&#39;d wanted an algorithm to deal
with &#34;rain fade&#34;, running directly on the radios. People wanted to =
use
the statistics on the radios to drive the plan enforcement better
<br/>
(which is an ok approach, I guess), and for 10+ I&#39;d been whinging
about the... physics.
</p><p class=3D"">
So I ranted about rfc7567 a lot and begged people now putting routerOS
<br/>
7.2 and later out there (mikrotik is huge in this market), to kill
their fifos and sfqs at the native rates of the interfaces... and
watch their network improve that way also.
</p><p class=3D"">
I think one more wispa conference will be a clean sweep of everyone in
the fixed wireless market to not only adopt these algorithms for plan
enforcement, but even more directly on the radios and more CPE.
<br/></p><p class=3D"">
I also picked up enough consulting business to keep me busy the rest
of this year, and possibly more than I can handle (anybody looking?)
<br/></p><p class=3D"">
I wonder what will happen at a fiber conference?
<br/></p><blockquote class=3D""><p class=3D"">
On Mon, Oct 17, 2022 at 7:45 PM Dave Taht via Bloat &lt;<a target=3D"_blank=
" rel=3D"noopener noreferrer" href=3D"mailto:bloat@lists.bufferbloat.net" c=
lass=3D"">bloat@<wbr/>lists.<wbr/>bufferbloat.<wbr/>net</a>&gt; wrote:
<br/></p><blockquote class=3D""><p class=3D"">
On Mon, Oct 17, 2022 at 5:02 PM Stuart Cheshire &lt;<a target=3D"_blank" re=
l=3D"noopener noreferrer" href=3D"mailto:cheshire@apple.com" class=3D"">che=
shire@<wbr/>apple.<wbr/>com</a>&gt; wrote:
<br/></p><blockquote class=3D""><p class=3D"">
On 9 Oct 2022, at 06:14, Dave Taht via Make-wifi-fast &lt;<a target=3D"_bla=
nk" rel=3D"noopener noreferrer" href=3D"mailto:make-wifi-fast@lists.bufferb=
loat.net" class=3D"">make-wifi-fast@<wbr/>lists.<wbr/>bufferbloat.<wbr/>net=
</a>&gt; wrote:
<br/></p><blockquote class=3D""><p class=3D"">
This was so massively well done, I cried. Does anyone know how to get in to=
uch with the ifxit folk?
<br/></p><p class=3D"">
<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"https://www.youtub=
e.com/watch?v=3DUICh3ScfNWI" class=3D"">https:/<wbr/>/<wbr/>www.<wbr/>youtu=
be.<wbr/>com/<wbr/>watch?v=3DUICh3ScfNWI</a>
<br/></p></blockquote><p class=3D"">
I=E2=80=99m surprised that you liked this video. It seems to me that it rep=
eats all the standard misinformation. The analogy they use is the standard =
terrible example of waiting in a long line at a grocery store, and the =E2=
=80=9Csolution=E2=80=9D is letting certain traffic =E2=80=9Cjump the line, =
angering everyone behind them=E2=80=9D.
<br/></p></blockquote><p class=3D"">
Accuracy be damned. The analogy to common experience resonates more.
<br/></p><blockquote class=3D""><p class=3D"">
Some quotes from the video:
<br/></p><blockquote class=3D""><p class=3D"">
it would be so much more efficient for them to let you skip the line and ju=
st check out, especially since you=E2=80=99re in a hurry, but they=E2=80=99=
re rudely refusing
<br/></p></blockquote></blockquote><p class=3D"">
I think the person with the cheetos pulling out a gun and shooting
everyone in front of him (AQM) would not go down well.
<br/></p><blockquote class=3D""><blockquote class=3D""><p class=3D"">
to go back to our grocery store analogy this would be like if a worker saw =
you standing at the back ... and either let you skip to the front of the li=
ne or opens up an express lane just for you
<br/></p></blockquote></blockquote><p class=3D"">
Actually that analogy is fairly close to fair queuing. The multiple
checker analogy is one of the most common analogies in queue theory
itself.
<br/></p><blockquote class=3D""><p class=3D"">
The video describes the problem of bufferbloat, and then describes the same=
 failed solution that hasn=E2=80=99t worked for the last three decades.
<br/></p></blockquote><p class=3D"">
Hmm? It establishes the scenario, explains the problem *quickly*,
disses gamer routers for not getting it right..  *points to an
accurate test*, and then to the ideas and products that *actually
work* with &#34;smart queueing&#34;, with a screenshot of the most common
<br/>
(eero&#39;s optimize for gaming and videoconferencing), and fq_codel and
cake *by name*, and points folk at the best known solution available,
openwrt.
</p><p class=3D"">
Bing, baddabang, boom. Also the comments were revealing. A goodly
percentage already knew the problem, more than a few were inspired to
take the test,
<br/>
there was a whole bunch of &#34;Aha!&#34; success stories and 360k views,
which is more people than we&#39;ve ever been able to reach in for
example, a nanog conference.
</p><p class=3D"">
I loved that folk taking the test actually had quite a few A results,
without having had to do anything. At least some ISPs are getting it
more right now!
<br/></p><p class=3D"">
At this point I think gamers in particular know what &#34;brands&#34; we&#3=
9;ve
tried to establish - &#34;Smart queues&#34;, &#34;SQM&#34;, &#34;OpenWrt&#3=
4;, fq_codel and
now &#34;cake&#34; are &#34;good&#34; things to have, and are stimulating d=
emand by
asking for them,   It&#39;s certainly working out better and better for
evenroute, firewalla, ubnt and others, and I saw an uptick in
questions about this on various user forums.
<br/></p><p class=3D"">
I even like that there&#39;s a backlash now of people saying &#34;fixing
bufferbloat doesn&#39;t solve everything&#34; -
<br/></p><blockquote class=3D""><p class=3D"">
Describing the obvious simple-minded (wrong) solution that any normal perso=
n would think of based on their personal human experience waiting in grocer=
y stores and airports, is not describing the solution to bufferbloat. The s=
olution to bufferbloat is not that if you are privileged then you get to =
=E2=80=9Cskip to the front of the line=E2=80=9D. The solution to bufferbloa=
t is that there is no line!
<br/></p></blockquote><p class=3D"">
I like the idea of a guru floating above a grocery cart with a better
string of explanations, explaining
<br/></p><p class=3D"">
- &#34;no, grasshopper, the solution to bufferbloat is no line... at all&#3=
4;.
<br/></p><blockquote class=3D""><p class=3D"">
With grocery stores and airports people=E2=80=99s arrivals are independent =
and not controlled. There is no way for a grocery store or airport to gener=
ate backpressure to tell people to wait at home when a queue begins to form=
. The key to solving bufferbloat is generating timely backpressure to preve=
nt the queue forming in the first place, not accepting a huge queue and the=
n deciding who deserves special treatment to get better service than all th=
e other peons who still have to wait in a long queue, just like before.
<br/></p></blockquote><p class=3D"">
I am not huge on the word &#34;backpressure&#34; here. Needs to signal the
other side to slow down, is more accurate. So might say timely
signalling rather than timely backpressure?
<br/></p><p class=3D"">
Other feedback I got  was that the video was too smarmy (I agree),
different audiences than gamers need different forms of outreach...
<br/></p><p class=3D"">
but to me, winning the gamers has always been one of the most
important things, as they make a lot of buying decisions, and they
benefit the most for
<br/>
fq and packet prioritization as we do <span class=3D"sh-date" data-date-iso=
string=3D"2022-10-17T22:00:00.000Z">today</span> in gamer routers and in
cake + qosify.
</p><p class=3D"">
maybe that gets in the way of more serious markets. Certainly I would
like another video explaining what goes wrong with videoconferencing.
<br/></p><blockquote class=3D""><p class=3D"">
Stuart Cheshire
<br/></p></blockquote><p class=3D"">
--
<br/>
This song goes out to all the folk that thought Stadia would work:
<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"https://www.linked=
in.com/posts/dtaht_the-mushroom-song-activity-6981366665607352320-FXtz" cla=
ss=3D"">https:/<wbr/>/<wbr/>www.<wbr/>linkedin.<wbr/>com/<wbr/>posts/<wbr/>=
dtaht_the-mushroom-song-activity-6981366665607352320-FXtz</a>
Dave T=C3=A4ht CEO, TekLibre, LLC
<br/>
_______________________________________________
<br/>
Bloat mailing list
<br/>
<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"mailto:Bloat@lists=
.bufferbloat.net" class=3D"">Bloat@<wbr/>lists.<wbr/>bufferbloat.<wbr/>net<=
/a>
<br/>
<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"https://lists.buff=
erbloat.net/listinfo/bloat">https://lists.bufferbloat.net/listinfo/bloat</a=
>
</p></blockquote></blockquote><p class=3D"">
--=20
<br/>
This song goes out to all the folk that thought Stadia would work:
<a target=3D"_blank" rel=3D"noopener noreferrer" href=3D"https://www.linked=
in.com/posts/dtaht_the-mushroom-song-activity-6981366665607352320-FXtz" cla=
ss=3D"">https:/<wbr/>/<wbr/>www.<wbr/>linkedin.<wbr/>com/<wbr/>posts/<wbr/>=
dtaht_the-mushroom-song-activity-6981366665607352320-FXtz</a>
Dave T=C3=A4ht CEO, TekLibre, LLC</p></div></div></blockquote></div></div><=
/div></div><div><br/></div></div><div><div style=3D"display: none; border: =
0px; width: 0px; height: 0px; overflow: hidden; visibility: hidden;"><img s=
rc=3D"https://r.superhuman.com/s6ThjDGFHP16HniDvByZ0PqECzHzUgL_Th5LbktziZe0=
i76pNDC0PIHFM9ADJdm_DvPaO1RGjHJ-GPV0SWp-ksnD2cPhiG2FZLvqbJVA7AirUpyslS2Kyoq=
Jh0KzoN4Ait58xWW0fZYqREg3CXK0BK8ojQXOJ7T342Mi9OToQ87q-DvMQ9gdyPDRsbYkBg.gif=
" alt=3D" " width=3D"1" height=3D"0" style=3D"display: none; border: 0px; w=
idth: 0px; height: 0px; overflow: hidden; visibility: hidden;"/><!--       =
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
                                           --></div></div></div></body></ht=
ml>
--5048600b945f34662f425ea15b54444e95abf3d2f4d4bb74875d5d7361e4--

--===============2538709128128569805==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2538709128128569805==--

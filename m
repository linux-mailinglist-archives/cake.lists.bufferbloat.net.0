Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 378BD22DA1A
	for <lists+cake@lfdr.de>; Sat, 25 Jul 2020 23:33:53 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 21FBA3CB38;
	Sat, 25 Jul 2020 17:33:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1595712832;
	bh=kZa94CJBi5wF5oUVZ7pqVkA6Akn35wpjoCTnyxMtm18=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Incb6Pzr4dYAeyIwqUShUGzb/z1U7waqwdbHgnMBc8Bxe8/Iao18zWyB5UKZKk8g/
	 +L5pUGMYiM5UYpdji9n30HK6r7Mr8BO8whkstFig2ouh7XQ1r4gXNm8/GVEB4z0Kqw
	 BcUlT03rv0oPy/3sPAErQDr6LfulZ4p00rUGtkaIps1zdKn23bwRV/VAiuZKvU7TNJ
	 bJDNxvs2NjiMSZBYPmj7mI2t8EVqpYpS715sjVzKxUoipcYA9x7LbL7xwO9qS99IKv
	 PqplwoJRhS11uSjkQoxWfH+/N5tovC2SFe0MAJEyyjBIFhrwFVh5TSS7HDaoOm5303
	 MIdKYiQ+eayhA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-eopbgr50062.outbound.protection.outlook.com [40.107.5.62])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 59B853B29E
 for <cake@lists.bufferbloat.net>; Sat, 25 Jul 2020 17:33:50 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M+Qt6k9HareHwAsDpy4NCssr5dOChWqx9xhbgV0TRwnW//qS+wchgLc+8RNXAdjWPucy2EHDWY1kb0jAQVXIVprBQeLOrq8f2mjsmdeSobfe53dYiBiSFCQ4aX91dWQf9gxhDZbcXTPYHPPFxOa4gePYVC6/aufp11lE6wbaaC+lJ9qQwmIaqCTp4iQKq6vU4GoTKR9e8j6Bj/W1UUYXes4Lm0QEmB2e3b5zDxjkB+T+f4+G0ROjFaOy17hYK5S0zUiUfv9Sk3fSuCpDPWilR/AfZffh2rhZ5IqaDh5G45H4J6jLfpD/RD6Yg+eu9s/HKv7SopQPDQKPbucHgpoE9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3JlhuN0w+KgS5MhhXMRl5yC0mZSRSkuKEZFXBvFyvc4=;
 b=kMjkATp+Bc65SoyMVXy/GH8YOm5/BokSI1Nmp+yx553OUR7nzV7FiKGmd7cRaV8KbnvG39gNpIlN9pm5xHNEbx/mXpW4XTpbrdSZAj2Ha8A+lNXY2RzRpkpLzL/DsZK6gIQNnKgRjABTx1T0HOiMt1NQop2FrFbY4pbEsPSnYsud20whwIZ0tKRlHK7hQSUneyXlxNvNZxzWaHzo41cRdHpkHKil4fE97AM8zt8hgE+7yDNQaK6FWd+W7lAvv+ie6IJLC13oABSKYppGNjh3ZeA7LRPbQDE/YWzFtvT2ECSo/ho0ptyZH6Ifq/OD5HH/KhN1h3O6zRH4rrefAJMUEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=darbyshire-bryant.me.uk; dmarc=pass action=none
 header.from=darbyshire-bryant.me.uk; dkim=pass
 header.d=darbyshire-bryant.me.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3JlhuN0w+KgS5MhhXMRl5yC0mZSRSkuKEZFXBvFyvc4=;
 b=PmQVS3NDzHzSJ/a7uHZRo1cgSHAA0NckURQlgWs4ufPrevzlYmHFPPbNePMKniz/R5QiVSz3tnUfU72RDbqnQ1MMWpBW6UOPXxiDlwdunQw7E//7l3oOTzSUj2NmEudef5W8Sa9Hb0sMBxgkMFEpPfjiZagiUGrlDoCoezoErnU=
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com (2603:10a6:803:59::12)
 by VE1PR03MB5710.eurprd03.prod.outlook.com (2603:10a6:803:123::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.21; Sat, 25 Jul
 2020 21:33:47 +0000
Received: from VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::dcff:4b45:98e6:d823]) by VI1PR03MB4575.eurprd03.prod.outlook.com
 ([fe80::dcff:4b45:98e6:d823%3]) with mapi id 15.20.3216.026; Sat, 25 Jul 2020
 21:33:47 +0000
From: Kevin Darbyshire-Bryant <kevin@darbyshire-bryant.me.uk>
To: Sebastian Moeller <moeller0@gmx.de>, "David P. Reed" <dpreed@deepplum.com>
Thread-Topic: [Cake] diffserv3 vs diffserv4
Thread-Index: AQHWYdMP82xlrjF1cECorjGMH4SWNqkW/9mAgAEU0YCAAH8tgIAAAbSAgAAcRQCAAAgyAIAAGOSA
Date: Sat, 25 Jul 2020 21:33:47 +0000
Message-ID: <DF466ABF-C4EE-4EB6-A507-5649DD60CB01@darbyshire-bryant.me.uk>
References: <d5f74f85-7d72-40f9-a965-8335163d8cec@www.fastmail.com>
 <CFB4036D-8EEA-44B2-A909-6FD8B495267A@darbyshire-bryant.me.uk>
 <0CCA78BD-201C-4668-A013-24A3F6F4EC87@darbyshire-bryant.me.uk>
 <1595699283.358416190@apps.rackspace.com>
 <94003145-2031-454F-8F76-38C153DDFA08@darbyshire-bryant.me.uk>
 <1595705720.093911757@apps.rackspace.com>
 <1E226B08-B076-4FD5-8DDB-73903F9B86F8@gmx.de>
In-Reply-To: <1E226B08-B076-4FD5-8DDB-73903F9B86F8@gmx.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.120.23.2.1)
authentication-results: gmx.de; dkim=none (message not signed)
 header.d=none;gmx.de; dmarc=none action=none
 header.from=darbyshire-bryant.me.uk;
x-originating-ip: [2a02:c7f:1227:c00::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e6f0352c-9fad-4ccd-346e-08d830e26a4e
x-ms-traffictypediagnostic: VE1PR03MB5710:
x-microsoft-antispam-prvs: <VE1PR03MB57106F970FD5FA52DB3BEA1BA5740@VE1PR03MB5710.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:238;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cTpmi+bdi5AyHnQ7kst0Ly9GhqJVkY8/ZJsOhS/0W6aoZXbR2NfPVX8kpZucDXkJfwCWvMgIhtMy9qvgBXBaSsK2PRqTQkheBUQb4J2o8hG6WMnbJldTSkvzxE69QEpn/vh1gp05J2kGzHqvBj3AGzl0gqLcMLM+bfEzupT3+gtTJXzRWryKRGCDSTJrTiF14ZkqGpJYEVDVb4gmGgDgMKWMXRobxVnx7NKd4Dt/JyvFDoUvOOeIQ/jj7fPFvjJ1WbndOVb3Ga6MyfDhK04BG1tsdJitjLtwq6Mis/k0R5KHGy8gJ5UuFcg7NXaCp0JLV4/zBz0VGHCzz4CrPhdY1IdYtkHliNI9mjijqRysJmc9cOinxDe/TNId4O33vG8k3jFmddDZGvjMFfp1BYM15tgjoJYzDXVp2KL+5od33pVeWNnD6ajgLrtnRX6MZHwhhk9IR/ZdbaFwcbuaZi31Sw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR03MB4575.eurprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(366004)(396003)(346002)(39830400003)(376002)(4326008)(53546011)(316002)(99936003)(110136005)(5660300002)(36756003)(2616005)(6506007)(8936002)(71200400001)(186003)(66574015)(66446008)(66556008)(66616009)(66476007)(83380400001)(6512007)(76116006)(64756008)(91956017)(8676002)(66946007)(2906002)(6486002)(86362001)(966005)(508600001)(33656002)(55214005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: yf9iCrAvrLF4Tr8Ls7aWW8+LHQZR7z6MYR68yG9T32jR+pSbc7qMu4/XOMKeS9BszqqP2dd4PSUQlEa1XyjBOE3JUtL9wNU6gaMbTNWD8Hr2ykRZkkcqV7LQQ2jlBAlVLh5U5B2dsCbobB4K2Ftlo854rvDdKp2L0c7d/hg9WKrSvwoccXUhot9/V559XoyYaBd415fKeAcOnKUxB5WEfoz4AWdI34mqGulPSlQhOSRDc4u71SWQK2sdsFFOiusJmsrZ3gUwoC1LcMlOw1IP2EoRd3aLr64d7NY/sPLRQYK5OKVG+sjNcGbENLNVwtdMbcpA12Vh9uiCY2wKK8zLlIVNU9NVOytrzve9RzN6YseYBSfLPG2fgjcvAO0uBR2D6f8CgA29u1HnLntngh1mhF8bI1gk3CtTO+drY0aZpEVCBO9KsV68iW/3MVG5PWS6WmRJZObZ++QAg+tNCNJdscUKY2WNyyd7SuOtTtziVA4EDponnnfOwd3/aZIW9YPdvAluPUOZM/kaPXD/ZPiC0w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR03MB4575.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6f0352c-9fad-4ccd-346e-08d830e26a4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2020 21:33:47.5388 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vqhlmS/QqK3wu69poyb7iIXo837oT1qWYnlfRGmSxQyTLcdYqOSUxl7TpwKNrazowxBtOkfoZCdNBXsvR2Hnv4A69VBHkn292zbFIodafvc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR03MB5710
Subject: Re: [Cake] diffserv3 vs diffserv4
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
Cc: Cake List <cake@lists.bufferbloat.net>
Content-Type: multipart/mixed; boundary="===============3584772616861868744=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

--===============3584772616861868744==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_948753DC-A9A7-4D7A-985B-272D47EF5B10";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_948753DC-A9A7-4D7A-985B-272D47EF5B10
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Apologies.  I think this is a cultural divide and misunderstanding, =
certainly on my part.  Bellhead is uncomfortably close to bellend and in =
the context of =E2=80=98absurd=E2=80=99 I=E2=80=99m afraid I rather took =
your bellhead to be rather closer to my interpretation of bellend.  In =
essence I thought you were saying I was a bit of a cock, which I =
probably am but for reasons other than the ones mentioned.

Possibly getting back to subject.  CAKE is probably the fairest thing I =
know and worships the god of (low) latency.  When I first heard of cake =
many years ago, the promise of =E2=80=98full link=E2=80=99 and =E2=80=98lo=
w latency=E2=80=99 I couldn=E2=80=99t believe it.  I=E2=80=99ve =
subsequently learned it=E2=80=99s all about queues, effective queue =
management and picking the right packet at the right time to fill the =
right tx slot.  It=E2=80=99s all about latency.  It=E2=80=99s all about =
shooting/marking the right packets to signal correctly and keep latency =
of each flow under control.  I understand the phrase =E2=80=9CIt=E2=80=99s=
 the latency, stupid=E2=80=9D.

Cake is so fair across flows that cake offers deliberate unfairness =
features, things that bias that fairness, some obvious, some not.  The =
obvious one is using packet categorisation to choose priority levels.  =
Instead of the default =E2=80=98every packet is equal=E2=80=99 of =
besteffort, a choice of categorisation are available from =
=E2=80=98diffserv3=E2=80=99 (a 3 tier system) to =E2=80=98diffserv8=E2=80=99=
 (an 8 tier system) all designed to introduce an unfairness, =E2=80=98leas=
t important=E2=80=99 to =E2=80=98most important=E2=80=99.  The =
categories or tins in cake parlance also have bandwidth thresholds, =
representing minimum capacities for that tin in the presence of traffic =
in competing tins.

A less obvious but deliberate unfairness mechanism in cake is =E2=80=98hos=
t fairness=E2=80=99.  This counts the number of flows to/from each host =
and divides the bandwidth amongst the flows such that each host gets an =
even share. e.g. 1 host with 9 flows vs 1 host with 1 flow will end up =
with the 9 flow host getting 50% of bandwidth across those 9 flows =
whilst the 1 flow host will get 50% of bandwidth across 1 flow.  This =
prevents gaming of bandwidth allocation simply by starting more flows.

Going all the way back to the start of this thread which spoke about =
=E2=80=98more important to de-prioritise=E2=80=99 my domestic use =
case/problem is to support =E2=80=98bittorrent=E2=80=99 but at a lower =
importance than bulk (my backups) at a lower importance than best effort =
(browsing) at a lower importance than latency/jitter sensitive video at =
a lower importance than voip.  That=E2=80=99s 5 categories (LE, BK, BE, =
VI, VO), but it could easily be 4 (LE, BK, BE, VO) with =E2=80=98video=E2=80=
=99 lumped in with Best Effort as is done with diffserv3.

Cake=E2=80=99s tin bandwidth thresholds say =E2=80=98you=E2=80=99re =
allowed to have at least this much=E2=80=99 and in my diffserv5 =
implementation it=E2=80=99s 1/64th of configured bandwidth simply =E2=80=98=
cos it can=E2=80=99t really be zero.  In the absence of other traffic, =
Least Effort under CAKE will happily consume ALL the bandwidth, great, =
nothing more important..bittorrent you go right ahead.  But as soon as =
something more important comes along, well, that takes (within limits) =
priority.  I think this is called =E2=80=99soft admission=E2=80=99 but =
not totally sure.

I apologies if I have incorrectly used bandwidth/capacity/rate/whatever =
but hopefully everyone will understand what I=E2=80=99m trying to say.

Kevin

> On 25 Jul 2020, at 21:04, Sebastian Moeller <moeller0@gmx.de> wrote:
>=20
> Hi David,
>=20
> I believe that folks here, certainly Kevin, have accepted the domain =
specificity of diffserv and we are mainly discussion, how many tiers of =
differential latency tolerance we desire ;). It goes without saying that =
this is all within the "home domain", and the goal is how little/few =
priority games we need to play for decent performance under load. Sure, =
end2end signaling would be desirable, but as you point out does not =
exist in diffserve today and is also not very likely to appear anytime =
soon, but in one's home it is still relatively easy to identify a few =
special cases, like bit-torrent (don't get in the way of "real" traffic) =
or VoIP (quite latency and especially jitter averse, but also typically =
of modest rate) that could/should be taken care of.
> 	As far as I can tell that is all the cake/sqm's diffserve modes =
try to accomplish. DSCPs are simply used, as there exists machinery for =
routers/end-hosts OS to selectively set/re-set them and all IP packets =
will carry them.
> 	Regarding the Bell-haededness, sure I might qualify for that =
moniker/abuse*, but the relevant factor, IMHO, is not so much the exact =
rate cut-offs of the different priority tiers, but the simple =
realization that low latency via prioritization requires relatively low =
rates, otherwise "priority" traffic will self congest, so these =
thresholds serve to establish a "cost" for using each priority tier.
>=20
> Best Regards
> 	Sebastian
>=20
> *) By virtue of intellectual laziness, it is simply often easier for =
me to think in rate shares than the alternatives. But hey, I do this as =
a hobby, so I cut myself a lot of slack here ;) But I take no offense in =
being labeled that.
>=20
>=20
>> On Jul 25, 2020, at 21:35, David P. Reed <dpreed@deepplum.com> wrote:
>>=20
>> I want to apologize for any implication that you, Mr. =
Darbyshire-Bryant, were a "bellhead". AFAIK, you were quoting a staement =
from the designers of diffserv4, who apparently still believe in =
bandwidth division as a metric.
>>=20
>> But I understand it might be painful to hear my critique of the =
diffserv design process.
>>=20
>> Just be aware that it's my problem, not yours. I don't mean to offend =
you. I do, however, feel like the folks who did "design" diffserv (and =
continue to promote it) completely miss the whole point of why the =
Internet is architected the way it is. And since they haven't managed to =
respond to a clue-by-4 yet, I'm tired of just pointing out that the idea =
doesn't actually achieve any benefits, because no one (literally no one) =
has evern done a consistent assignment of end-to-end meaning to the =
various diffserv labels after decades of failed testing.
>>=20
>> Since this is a group discussion, and not just a response to you, my =
comment was aimed at the general group (which is not dedicated to =
bellhead thinking, thank goodness).
>>=20
>> And to be clear, AQM (cake, being an example) is not about bandwidth =
allocation. It does focus on latency/queueing-delay, for the most part.
>>=20
>> Hence my concern that diffserv's fundamental misunderstanding of the =
responsibility of router queue management might contaminate a very, very =
important project.
>>=20
>>=20
>> On Saturday, July 25, 2020 1:54pm, "Kevin Darbyshire-Bryant" =
<kevin@darbyshire-bryant.me.uk> said:
>>=20
>>> I didn=E2=80=99t sign up for this abuse. Bellhead eh? Well f**k off!
>>>=20
>>> I=E2=80=99ve had enough - bye.
>>>=20
>>>> On 25 Jul 2020, at 18:48, David P. Reed <dpreed@deepplum.com> =
wrote:
>>>>=20
>>>> This idea (dividing the link rate capacity, since "bandwidth" is an =
incorrect
>>> term not to be promulgated), is absurd, but typical of "bellhead" =
thinking.
>>>>=20
>>>> Per packet latency is the key control variable, even for TCP. =
That's because
>>> capacity/rate is not controllable by routers, but by routing in a =
general Internet
>>> situation.
>>>>=20
>>>> Latency is controlled by queuing delay in a packet network, not =
bitrate. And
>>> in mixed traffic, which after all is why traffic is classified in =
the first place,
>>> by its characteristics and response to increased latency end-to-end, =
is the core
>>> "control" for the internetwork as a whole.
>>>>=20
>>>> So, by promoting thinking about "bandwidth" a whole sequence of
>>> misformulations of network management is embedded into the thinking =
of those
>>> designing queue management algorithms.
>>>>=20
>>>> And make no mistake, queue management is the ONLY knob other than =
sending
>>> different packets on different routes that one has for routers.
>>>>=20
>>>> I don't know who proposed this fractional division, but it is =
clearly a
>>> bellhead-influenced thinker who thinks all protocols are CBR flows =
like in the old
>>> phone system.
>>>>=20
>>>> But almost no flows in the internet are CBR flows! File transfers =
are not,
>>> streaming TV is not, web ttraffic is not, game traffic is not. Only
>>> non-statistically multiplexed real-time telephony and *some* video =
conferencing is
>>> CBR.
>>>>=20
>>>> Yet this bizarre idea of dividing "bandwidth" among all categories =
of flows
>>> pops up. Probably from employees of phone companies or phone =
equipment suppliers.
>>> Or folks who went to Uni and were trained in "communications" by =
former phone
>>> engineers.
>>>>=20
>>>> Latency, latency, latency. Queue delay, queue delay, queue delay. =
Not link
>>> speed! Change your brains.
>>>>=20
>>>> It's hard fo fight this bellhead crowd (or the bellheadedness in =
your own
>>> thinking) but think about packets and queues instead.
>>>>=20
>>>> My good friend Len Kleinrock didn't invent "Bandwidth Theory"! He =
invented
>>> Queueing Theory. For a reason.
>>>>=20
>>>> On Saturday, July 25, 2020 6:12am, "Kevin Darbyshire-Bryant"
>>> <kevin@darbyshire-bryant.me.uk> said:
>>>>=20
>>>>> _______________________________________________
>>>>> Cake mailing list
>>>>> Cake@lists.bufferbloat.net
>>>>> https://lists.bufferbloat.net/listinfo/cake
>>>>>=20
>>>>>=20
>>>>>> On 24 Jul 2020, at 18:42, Kevin Darbyshire-Bryant
>>>>> <kevin@darbyshire-bryant.me.uk> wrote:
>>>>>>=20
>>>>>>=20
>>>>>> The move from diffserv4 to diffserv5 WAS about de-prioritization.
>>>>>=20
>>>>> It was also about minimum bandwidth allocations:
>>>>>=20
>>>>> LE: 1/64th
>>>>> BK: 1/16th
>>>>> BE: 1/1
>>>>> VI: 1/2
>>>>> VO: 1/4
>>>>>=20
>>>>> So worst case, best effort should get 11/64ths in the extreme case =
of
>>> all other
>>>>> tins in use.
>>>>>=20
>>>>> Cheers,
>>>>>=20
>>>>> Kevin D-B
>>>>>=20
>>>>> gpg: 012C ACB2 28C6 C53E 9775 9123 B3A2 389B 9DE2 334A
>>>>>=20
>>>>>=20
>>>=20
>>>=20
>>> Cheers,
>>>=20
>>> Kevin D-B
>>>=20
>>> gpg: 012C ACB2 28C6 C53E 9775 9123 B3A2 389B 9DE2 334A
>>>=20
>>>=20
>> _______________________________________________
>> Cake mailing list
>> Cake@lists.bufferbloat.net
>> https://lists.bufferbloat.net/listinfo/cake
>=20


Cheers,

Kevin D-B

gpg: 012C ACB2 28C6 C53E 9775  9123 B3A2 389B 9DE2 334A


--Apple-Mail=_948753DC-A9A7-4D7A-985B-272D47EF5B10
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl8cpTkACgkQs6I4m53i
M0rK/RAAiS21tui2dEnhRKgVqb1PH1iyz1HmG+ZQxPmg5hE2Af4gEswgXpx7RK01
pT2QhUEZdTIl7097h8qV/95Ai7pHzyH1Jwu97ytgH/BrG/VrqqyPr3ERRLpkpC0z
9wwUin1l5H3iECVlS8r0SvcQrywF2tVQj7toii82/jjaRIGXzzHjYRnW1KyPPu+S
F2ZeFKqpwm6ERGER8hm+HvI5vnpDRc4f4BDIFDc37hc/Kw10aB+p6a3hEb/Jvy+t
SZ8NHN95qHtm3VMrbM6SatDa2Yq38RQPW2e8JqKTFuJdydYn0FtRMp47MesI8Q44
qtownZz/yzSSnfIPSk1AqciT13vV7tviKmbEDO5zWSBEuT7LnohtUK/6ET53kKcT
pRlkd9egAGFU6Tkq4rssimOVErA2rmdvRVfSLosF+8+H8YcYaXBhuQwNQOPuB+F0
JGW+O+SCHkQJnq8gZmckJIs/RAS/MblPg2PfWXSy/QS8OKPJkM0poNLdD54gTR8k
38g2b9YHv4YA+5jsVh4FNCp61VKE6pKBCIbTzqOYlYgjZLJpJLgsFTDrtk+x3qgi
ICUNXTYNfCra5VOkJfhIyPuPrKMmtRj5GNYrzOcznWpqB+8FxGyF+wZkUnVSTC1i
VEx/EBz2OvgZVbEtZr2zJoK6EVf29eDhQs2yIV9RMVdzqL/XIio=
=6uDZ
-----END PGP SIGNATURE-----

--Apple-Mail=_948753DC-A9A7-4D7A-985B-272D47EF5B10--

--===============3584772616861868744==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============3584772616861868744==--

Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 09792605203
	for <lists+cake@lfdr.de>; Wed, 19 Oct 2022 23:33:36 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 1ADE73CB48;
	Wed, 19 Oct 2022 17:33:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1666215211;
	bh=CAd7jSVRF+uPUQ521GG8vAlwl7g/pHoDWe/Lw0XjD34=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=BV2uCzYNHuQNowsafPZo6gV2yHEcsdsqNyNN2HIywCnTyfxDTzyyA+RVa7MN42zCT
	 2WgEy41iK0vsIOS/0CGAY+Ptg+4BPtQ/EO7bR9JqTzxRds9m2LiuWupXvezgnhCJ2R
	 6DC9M/hIkw0eCba/Jkd+USeusigQ6JFihncoyjt72dYPx7wGsH9Hlv2iF2RWOh5p5q
	 ngC6/qrMtCu8R5wJhc6z7ldLpuVgs58UH+b+K6a2deKo4u0k1l6W4u2q7McKNYxORx
	 PUfrGbsa0uW51tsbr5SwSpYMp6C3lHqz3wj6rlxeuREs2NKPEfEJL8cnjqG8lk+QcS
	 4RTjf1cD1YiLw==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail.lang.hm (unknown [66.167.227.145])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 0C45D3B29D;
 Wed, 19 Oct 2022 17:33:30 -0400 (EDT)
Received: from dlang-mobile (unknown [10.2.2.70])
 by mail.lang.hm (Postfix) with ESMTP id DD7AA1513B8;
 Wed, 19 Oct 2022 14:33:28 -0700 (PDT)
Date: Wed, 19 Oct 2022 14:33:28 -0700 (PDT)
To: Stuart Cheshire <cheshire@apple.com>
In-Reply-To: <BD3CEB48-E45E-49DB-AAFC-80C539BB4169@apple.com>
Message-ID: <45so9803-49n7-q176-4or6-o188873243s0@ynat.uz>
References: <CAA93jw77h=ztEOzyADriH2PnswUDQiyNvBdsuFi+K5EexpoxUQ@mail.gmail.com>
 <938D9D45-DADA-4291-BD8A-84E4257CEE49@apple.com>
 <CAA93jw4KOkgdfT2LunCtPYPjXL+=OtTrouJgPjM7U1bHKtErnw@mail.gmail.com>
 <BD3CEB48-E45E-49DB-AAFC-80C539BB4169@apple.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="228850167-1586617520-1666215208=:15285"
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
From: David Lang via Cake <cake@lists.bufferbloat.net>
Reply-To: David Lang <david@lang.hm>
Cc: Rpm <rpm@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 Cake List <cake@lists.bufferbloat.net>, bloat <bloat@lists.bufferbloat.net>
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--228850167-1586617520-1666215208=:15285
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Wed, 19 Oct 2022, Stuart Cheshire via Bloat wrote:

> On Mon, Oct 17, 2022 at 5:02 PM Stuart Cheshire <cheshire@apple.com> wrote:
>
>> Accuracy be damned. The analogy to common experience resonates more.
>
> I feel it is not an especially profound insight to observe that, “people don’t like waiting in line.” The conclusion, “therefore privileged people should get to go to the front,” describes an airport first class checkin counter, Disney Fastpass, and countless other analogies from everyday life, all of which are the wrong solution for packets in a network.

the 'privileged go first' is traditional QoS, and it can work to some extent, 
but is a nightmare to maintain and gets the wrong result most of the time.

AQM (fw_codel and cake) are more the 'cash only line' and '15 items or less' 
line, they speed up the things that can be fast a LOT, while not significantly 
slowing down the people with a full baskets (but in the process, it shortens the 
lines for those people with full baskets)

>> I think the person with the cheetos pulling out a gun and shooting everyone in front of him (AQM) would not go down well.
>
> Which is why starting with a bad analogy (people waiting in a grocery store) inevitably leads to bad conclusions.
>
> If we want to struggle to make the grocery store analogy work, perhaps we show 
> people checking some grocery store app on their smartphone before they leave 
> home, and if they see that a long line is beginning to form they wait until 
> later, when the line is shorter. The challenge is not how to deal with a long 
> queue when it’s there, it is how to avoid a long queue in the first place.

only somewhat, you aren't going to have people deciding not to click on a link 
because the network is busy, and if you did try to go that direction, I would 
fight you. the prioritization is happening at a much lower level, which is hard 
to put into an analogy

even with the 'slowing' of bulk traffic, no traffic is prevented, it's just that 
they aren't allowed to monopolize the links.

This is where the grocery store analogy is weak, the reality would be more like 
'the cashier will only process 30 items before you have to step aside and let 
someone else in', but since no store operates that way, it would be a bad 
analogy.

>> Actually that analogy is fairly close to fair queuing. The multiple checker analogy is one of the most common analogies in queue theory itself.
>
> I disagree. You are describing the “FQ” part of FQ_CoDel. It’s the “CoDel” 
> part of FQ_CoDel that solves bufferbloat. FQ has been around for a long time, 
> and at best it partially masked the effects of bufferbloat. Having more queues 
> does not solve bufferbloat. Managing the queue(s) better solves bufferbloat.
>
>> I like the idea of a guru floating above a grocery cart with a better string of explanations, explaining
>>
>>   - "no, grasshopper, the solution to bufferbloat is no line... at all".
>
> That is the kind of thing I had in mind. Or a similar quote from The Matrix. 
> While everyone is debating ways to live with long queues, the guru asks, “What 
> if there were no queues?” That is the “mind blown” realization.

In a world where there is no universal scheduler (and no universal knowlege to 
base any scheduling decisions on), and where you are going to have malicious 
actors trying to get more than their fair share, you can't rely on voluntary 
actions to eliminate the lines.

There are data transportation apps that work by starting up a large number of 
connections in parallel for the highest transfer speeds (shortening slow start, 
reducing the impact of lost packets as they only affect one connection, etc). 
This isn't even malicious actors, but places like Hollywood studios sending 
the raw movie footage around over dedicated leased lines and wanting to get 
every bps of bandwidth that they are paying for used.

David Lang
--228850167-1586617520-1666215208=:15285
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--228850167-1586617520-1666215208=:15285--

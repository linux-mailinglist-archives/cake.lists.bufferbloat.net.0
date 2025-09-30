Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAF0BAE435
	for <lists+cake@lfdr.de>; Tue, 30 Sep 2025 20:00:49 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 028A071122F;
	Tue, 30 Sep 2025 20:00:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1759255248;
	bh=JgLKAiFbp7buRJr4qxwXqiJXvmHrDruMxVBrd2iP+EI=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=F7YLStvzyWNctNFop/6hAd8WaHeE4jDp1c7OUSLDdCichNpABwjHxg0ycBm2nnyWU
	 qiscatZsMaISs9fF8GHmImWYnrwNqCzjyWOvLGNNe4S+2pydPtV55nHOoZliarS7LV
	 PKeFkBgf0MO+woh7hqIEPc1mGXl69AlPCvb4KuX5pmcRbB5wBF3a5Na9dLsjPMGRYF
	 Rk947YxiQNMEsVzFqxa+Wra6nKcMc7Q3l82L4XxPDORJXtbPYIli+mUcesNNL4bLUc
	 uPIqiCCsir1WaCUV2YLUp2/Ue/J7X+45Ts6LQsSPtyP68btpt/vBJbeoOP6GIbkwq7
	 4SNgEccjc2J6g==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759255247;
 b=DkfupzKgr92L9o6BSuPM/i7KE67bIlokpu2ACP5RXusT3jQLmU6IJay2ZKwhgCNDjPDNA
 G5Mm2hiXRZFkfO5ftSFr8wTBkXWflbO54j6ooCm//SFdzzJNQ0DzRq+XaGF4jNP04yFFwXe
 bkqZ3P/QaQep7CaJadPrJPhj5pCOFnw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759255247; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=iciDJ4+vRK8fxCh40rsGy9zTmlgXaVjZJLe36Yqnfj8=;
 b=oGikUAn9egeUxhrktVcL05vNnuTAxvl+k0mwPQ/4vav7+UT8xHbu39HKTwXdTHzyLroxZ
 qaBNW0pvhGlxAXHL9buArCaabP81ohgIPdtawqsiM4Ibv+InEOCFG6rF+71tS+lqfDUAhbJ
 +q6DsNyiDCEVVBoGK0fVzlXDbpsmS3s=
ARC-Authentication-Results: i=1; mail.toke.dk;
 dkim=pass header.d=toke.dk;
 arc=none;
 dmarc=pass header.from=toke.dk policy.dmarc=reject
Authentication-Results: mail.toke.dk; dkim=pass header.d=toke.dk;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=toke.dk policy.dmarc=reject
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
	t=1759255246; bh=qX0cC0YQzh2//2d92Ld0BTJgOaVPDSBeYNwadt7ShuE=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=Pdtsyhbw2hhDR0OYiktwY1d9W+Z9JLTAfDMcJX5/oyFWZrf8eWy3bv5rbwSLF6Sj3
	 rrczT0bfUxmSi6tH/Sv5uGcUyoy91QHRaaBf8CdrNs78DznlnGLQ/Y0DNb5sZP+Q7P
	 8oyiJrMUS4CzNX5bJtxGdz9y7tpwYLwddmgwNcZaOBNaBSVf6ZXLM+5ZRojKrnSSd7
	 ClXAUzn+uDupgg/1ixZCC4y3sMXlvfqClSDrAe51RSD52Nhejl3GHjmBlCuQ1dH5Y2
	 vi/es4bCwv1B3zb0kxpRjLXZxsdm/Z7MTy+5T1iAS4dcnhJxwfL4BP3Dmjt/nfGCZp
	 2UcBsmTRsARjQ==
To: David Lang <david@lang.hm>, Sebastian Moeller <moeller0@gmx.de>
Cc: David Lang <david@lang.hm>, Jonathan Morton <chromatix99@gmail.com>,
 cake@lists.bufferbloat.net
In-Reply-To: <47onq471-4q1p-029n-s77p-q420sp0396o5@ynat.uz>
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
 <dpxsc6.t3duwh.1hge2dj-qmf@smtp.gmail.com>
 <n21672r7-056q-ppo6-rpno-139os0o3154r@ynat.uz>
 <FA76869A-F4A3-4C70-8F15-57E4168DAC71@gmx.de>
 <47onq471-4q1p-029n-s77p-q420sp0396o5@ynat.uz>
Date: Tue, 30 Sep 2025 20:00:44 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <87ecrnn7lf.fsf@toke.dk>
MIME-Version: 1.0
Message-ID-Hash: QLLXNANKI4AGNEJJ5FBWFJW576M6RGHI
X-Message-ID-Hash: QLLXNANKI4AGNEJJ5FBWFJW576M6RGHI
X-MailFrom: toke@toke.dk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: help request for cake on a large network
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: <https://lists.bufferbloat.net/cake/87ecrnn7lf.fsf@toke.dk/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Reply-To: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

David Lang <david@lang.hm> writes:

> Sebastian Moeller wrote:
>
>> Hi David,
>>
>>
>>> On 30. Sep 2025, at 14:37, David Lang <david@lang.hm> wrote:
>>>
>>> Jonathan Morton wrote:
>>>
>>>> On Sunday, 28 September 2025, David Lang wrote:
>>>>> I'm starting to prepare for the next Scale conference and we are switching from
>>>>> Juniper routers to Linux routers. This gives me the ability to implement cake.
>>>>>
>>>>> One problem we have is classes that tell everyone 'go download this' that
>>>>> trigger hundreds of people to hammer the network at the same time (this is both
>>>>> a wifi and a network bandwidth issue, wifi is being worked on)
>>>>>
>>>>> The network is pretty flat, a couple of subnets each on ipv4 and ipv6.
>>>>>
>>>>> Any suggestions on how to configure cake for this sort of environment where
>>>>> there are so many devices?
>>>>
>>>> So far as Cake is concerned, the normal setup should work fine even under stress conditions.  If there are too many simultaneous flows to achieve full flow isolation, it degrades gracefully to statistical multiplexing, and you still have the AQM working to keep everything responsive.  Or rather, a thousand AQMs working in parallel...
>>>
>>> what would need to be done to increase resources to allow for full isolation of more flows?
>>
>> I believe editing net/sched/sch_cake.c and increase the number of CAKE_QUEUES:
>> #define CAKE_QUEUES (1024)
>>
>> to something larger...
>>
>> however I do not know what a realistic maximum is... and IIRC cake will search through this repeatedly, 1024 is one full memory page (4k pages) anything larger will require multiple pages (likely as single contiguous allocation). I remember dimmly someone ages ago playing with this and finding that the number can be increased, but not arbitrarily so at least on your typical somewhat memory-poor router. But that should be easy to figure out.
>
> In this case, we are using Ryzon systems with at least 32G of ram (need to look 
> up the detailed specs)

Other than the memory usage, the number of queues are constrained by the
need to avoid overflows. Also, it has to be a power of 2. Anything up to
0x8000 (32k) should be fine, AFAICT from a quick glance through the code...

-Toke
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
